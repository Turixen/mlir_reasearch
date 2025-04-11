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
	.quad	22                              # 0x16
	.quad	22                              # 0x16
	.quad	45                              # 0x2d
	.quad	45                              # 0x2d
	.quad	64                              # 0x40
	.quad	64                              # 0x40
	.quad	84                              # 0x54
	.quad	84                              # 0x54
	.quad	114                             # 0x72
	.quad	114                             # 0x72
	.quad	133                             # 0x85
	.quad	133                             # 0x85
	.quad	156                             # 0x9c
	.quad	156                             # 0x9c
	.quad	182                             # 0xb6
	.quad	182                             # 0xb6
	.quad	206                             # 0xce
	.quad	206                             # 0xce
	.quad	220                             # 0xdc
	.quad	220                             # 0xdc
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	257                             # 0x101
	.quad	257                             # 0x101
	.quad	286                             # 0x11e
	.quad	286                             # 0x11e
	.quad	311                             # 0x137
	.quad	311                             # 0x137
	.quad	324                             # 0x144
	.quad	324                             # 0x144
	.quad	345                             # 0x159
	.quad	345                             # 0x159
	.quad	365                             # 0x16d
	.quad	365                             # 0x16d
	.quad	386                             # 0x182
	.quad	386                             # 0x182
	.quad	401                             # 0x191
	.quad	401                             # 0x191
	.quad	422                             # 0x1a6
	.quad	422                             # 0x1a6
	.quad	440                             # 0x1b8
	.quad	440                             # 0x1b8
	.quad	460                             # 0x1cc
	.quad	460                             # 0x1cc
	.quad	474                             # 0x1da
	.quad	474                             # 0x1da
	.quad	495                             # 0x1ef
	.quad	495                             # 0x1ef
	.quad	518                             # 0x206
	.quad	518                             # 0x206
	.quad	536                             # 0x218
	.quad	536                             # 0x218
	.quad	553                             # 0x229
	.quad	553                             # 0x229
	.quad	571                             # 0x23b
	.quad	571                             # 0x23b
	.quad	594                             # 0x252
	.quad	594                             # 0x252
	.quad	610                             # 0x262
	.quad	610                             # 0x262
	.quad	623                             # 0x26f
	.quad	623                             # 0x26f
	.quad	640                             # 0x280
	.quad	640                             # 0x280
	.quad	661                             # 0x295
	.quad	661                             # 0x295
	.quad	680                             # 0x2a8
	.quad	680                             # 0x2a8
	.quad	703                             # 0x2bf
	.quad	703                             # 0x2bf
	.quad	725                             # 0x2d5
	.quad	725                             # 0x2d5
	.quad	740                             # 0x2e4
	.quad	740                             # 0x2e4
	.quad	766                             # 0x2fe
	.quad	766                             # 0x2fe
	.quad	784                             # 0x310
	.quad	784                             # 0x310
	.quad	810                             # 0x32a
	.quad	810                             # 0x32a
	.quad	827                             # 0x33b
	.quad	827                             # 0x33b
	.quad	849                             # 0x351
	.quad	849                             # 0x351
	.quad	866                             # 0x362
	.quad	866                             # 0x362
	.quad	887                             # 0x377
	.quad	887                             # 0x377
	.quad	906                             # 0x38a
	.quad	906                             # 0x38a
	.quad	929                             # 0x3a1
	.quad	929                             # 0x3a1
	.quad	944                             # 0x3b0
	.quad	944                             # 0x3b0
	.quad	958                             # 0x3be
	.quad	958                             # 0x3be
	.quad	980                             # 0x3d4
	.quad	980                             # 0x3d4
	.quad	999                             # 0x3e7
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
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
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	2                               # 0x2
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	78                              # 0x4e
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	56                              # 0x38
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	98                              # 0x62
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
	.quad	0x3fe2fcdac8277836              # double 0.59336604206669707
	.quad	0x3f23830760e3b000              # double 1.4886345929399081E-4
	.quad	0x3fde92a7239b5cb0              # double 0.47770098187670396
	.quad	0x3feb2ee2b1c5a0aa              # double 0.84947333069887532
	.quad	0x3fc0520b08c0411c              # double 0.12750375678343395
	.quad	0x3fc04207e60df074              # double 0.12701510174872832
	.quad	0x3fe976170574f49d              # double 0.79566527429382783
	.quad	0x3feda94ff908e7cc              # double 0.92691801681143592
	.quad	0x3fc3963ab4652814              # double 0.15302213486057836
	.quad	0x3fe7d96982eac91a              # double 0.74528956956627046
	.quad	0x3fa6d2ccd68d9dc0              # double 0.044577027502608058
	.quad	0x3fb85016d70d45a8              # double 0.094972064497844344
	.quad	0x3f923bca4d4a09e0              # double 0.017806206672057345
	.quad	0x3fe86bc4881d6e6a              # double 0.76315523705438904
	.quad	0x3fefeaf2a7fbb937              # double 0.99743016061055456
	.quad	0x3fddf70ec19922e8              # double 0.46820420175622113
	.quad	0x3fc02909e8c9d668              # double 0.12625240198728993
	.quad	0x3fe1d28d21cce0af              # double 0.55695206262227781
	.quad	0x3fe4ee47020ffcb0              # double 0.6540865936548439
	.quad	0x3fe9471febab20bb              # double 0.78993221310613337
	.quad	0x3fe4e9c9b4679dc8              # double 0.65353856311133374
	.quad	0x3fefe9c15fd9d095              # double 0.99728459092013344
	.quad	0x3fdecfbdedd3caf2              # double 0.48142955994914793
	.quad	0x3fd9dcec2b2d4486              # double 0.4041090413712215
	.quad	0x3fd6ee3728b2f64e              # double 0.358289518113314
	.quad	0x3fcfb31ee24d8548              # double 0.24765382814352166
	.quad	0x3fd3ca7fe48c1402              # double 0.30923459357319427
	.quad	0x3fded094aca25b0e              # double 0.4814807592278364
	.quad	0x3fdb01bb216805cc              # double 0.42198065054261913
	.quad	0x3fe34453fb4ef843              # double 0.60209082683264403
	.quad	0x3feb0969107951e0              # double 0.84489873139915161
	.quad	0x3fd260c9d6cbd6ae              # double 0.28715749717899086
	.quad	0x3fda0689bb90772e              # double 0.40664904896572096
	.quad	0x3fc7a637485ea52c              # double 0.1847600081794466
	.quad	0x3fd24551e50ee966              # double 0.28548095101327531
	.quad	0x3fe71901ca2fad4e              # double 0.72180261125087397
	.quad	0x3feddde4a72084af              # double 0.93333656923291197
	.quad	0x3fef8df6cd7454e3              # double 0.98607959869209726
	.quad	0x3fc3cb29de144e94              # double 0.15463755935399048
	.quad	0x3fe2e092c1117c6f              # double 0.58991372784283935
	.quad	0x3fc1f444e96e2670              # double 0.14026700399363135
	.quad	0x3fe45013a95aa8a0              # double 0.63477500035266488
	.quad	0x3fcd77d78cf5c97c              # double 0.23021978743379268
	.quad	0x3fed2aac4252ea28              # double 0.91145909265407443
	.quad	0x3fe1bbdcc4696e7b              # double 0.55418241845786953
	.quad	0x3fd45aecf7b8cfe0              # double 0.31804966155618608
	.quad	0x3fbdede9d85d7b48              # double 0.11691152126648519
	.quad	0x3fdf94b0a29bc798              # double 0.49345031623590208
	.quad	0x3fd878f94d8511aa              # double 0.38238365717213674
	.quad	0x3fef6c40c86d4099              # double 0.9819644846520702
	.quad	0x3faf03ae1459c5c0              # double 0.060574951156819434
	.quad	0x3fdb4e6c661bde62              # double 0.42666158649033126
	.quad	0x3fe13e7019e6af01              # double 0.53887181338129164
	.quad	0x3fe10ae6bb8bdbf0              # double 0.53258072500363873
	.quad	0x3fc8eecac266232c              # double 0.19478735439431583
	.quad	0x3fddbaed61a81f34              # double 0.46453413521566067
	.quad	0x3fd205cb0aab96c4              # double 0.28160358469027025
	.quad	0x3fdb87714efc23c8              # double 0.43014176095362844
	.quad	0x3fd28d3237e1c2f0              # double 0.28986793000426214
	.quad	0x3fd51ad15f175f66              # double 0.32976183210620602
	.quad	0x3fcc6ccd54f6a368              # double 0.22207037590603851
	.quad	0x3fd4034ea4bc44fa              # double 0.31270185553974239
	.quad	0x3fa04f16f2569480              # double 0.031853406030941223
	.quad	0x3fd340103b3621b6              # double 0.30078511984222744
	.quad	0x3fe1fe02d292ef1f              # double 0.56225720527388379
	.quad	0x3fd7caf34a1af9d2              # double 0.37176210629322981
	.quad	0x3fdf9061b595b41a              # double 0.4931873582161771
	.quad	0x3fea156835894004              # double 0.81511316734577166
	.quad	0x3feca2f10ba2e78f              # double 0.89489033005451002
	.quad	0x3febea9577363871              # double 0.8723857239108509
	.quad	0x3fd6f1a2e1e2f8ea              # double 0.35849830683936423
	.quad	0x3fd018c164fab2d0              # double 0.25151095258005984
	.quad	0x3fdcd203c54eec96              # double 0.45031828182590894
	.quad	0x3fa03b03e84f24c0              # double 0.031700250728655899
	.quad	0x3fd221b45a601ba2              # double 0.28330715966915865
	.quad	0x3fedca25e84c2f1f              # double 0.93092627878784018
	.quad	0x3fa4c0fef7db0fc0              # double 0.040534942394088613
	.quad	0x3fed5d9ffec82259              # double 0.91767883073868994
	.quad	0x3fe00798c0124c40              # double 0.50092732919654992
	.quad	0x3feed47d3e1de030              # double 0.96343862659614921
	.quad	0x3fed3b2eae8d1437              # double 0.91347440807351787
	.quad	0x3fe7f9162f001246              # double 0.74915608577482184
	.quad	0x3fefa7b20858c723              # double 0.98922063474876542
	.quad	0x3f9e9deafec663c0              # double 0.029899284172276941
	.quad	0x3fd0a970b3fee71c              # double 0.26034181192118111
	.quad	0x3fda9b6946069e18              # double 0.41573554838621041
	.quad	0x3fdb31a8fcdc5480              # double 0.42490601247238402
	.quad	0x3fda28f949d56d6e              # double 0.40875084123918881
	.quad	0x3fdbe8c205abf404              # double 0.43608141473652062
	.quad	0x3fd66ac78f9750dc              # double 0.35026730558935326
	.quad	0x3fc9b0cb8f3d2a84              # double 0.20070785993660334
	.quad	0x3fd8120a322ee3f0              # double 0.37610106373500596
	.quad	0x3fd292df5e3405d2              # double 0.29021438788921927
	.quad	0x3fbae2ff7c5ccff8              # double 0.1050262144679549
	.quad	0x3feb0646e91e23a4              # double 0.84451623469168568
	.quad	0x3fd9244ba847e148              # double 0.39284030374212309
	.quad	0x3fdf3671ceca7942              # double 0.48769803232598374
	.quad	0x3fe0346e5e9a0726              # double 0.50640028454674701
	.quad	0x3fa4682c39dcf400              # double 0.039857275069586251
	.quad	0x3fde3d7f9318c14a              # double 0.47250356068527266
	.quad	0x3fefe29e1532e86a              # double 0.99641327038194771
	.quad	0x3fd12ca2a5a69334              # double 0.26834932495903563
	.quad	0x3fcc625833dec8fc              # double 0.22175123722769985
	.quad	0x3fe0b66e381041bb              # double 0.52226935338881419
	.quad	0x3fd5050431071220              # double 0.32843117511609599
	.quad	0x3fd95fbfd206d43e              # double 0.39646907339494308
	.quad	0x3fc7eacf901c6ad0              # double 0.18685335671110304
	.quad	0x3fd82304a9bdfbde              # double 0.37713734222773876
	.quad	0x3fe1fe539830e175              # double 0.56229572033684738
	.quad	0x3fe5b3f5104cc2a0              # double 0.67821744140208651
	.quad	0x3f9723303be1ade0              # double 0.022595170645599683
	.quad	0x3fc9993ff18e0554              # double 0.19998931212107129
	.quad	0x3fe593c79c9c5d63              # double 0.6742895182423293
	.quad	0x3fb86e597b6dae88              # double 0.095433800348184161
	.quad	0x3fcc4e34e769e44c              # double 0.22113667773718004
	.quad	0x3fca94d4c21899f4              # double 0.20766696431492415
	.quad	0x3fea25aa1a3af762              # double 0.817097712737205
	.quad	0x3fe370330eac3ea1              # double 0.60744622102534518
	.quad	0x3fc6cb6944ebcbf8              # double 0.17808261742865716
	.quad	0x3fe3f00b1e00bc06              # double 0.62305217609343866
	.quad	0x3fd1ea9a3b7b44e8              # double 0.27994399842016415
	.quad	0x3febf76d2f46b7d3              # double 0.87395343049660779
	.quad	0x3fe1c2e53764ab75              # double 0.55504093951218059
	.quad	0x3fc4ee72c819f4f0              # double 0.16352686663223137
	.quad	0x3fec0f6c829ec3c1              # double 0.8768827963996203
	.quad	0x3feb7a45f6824c9f              # double 0.85867593904767492
	.quad	0x3fef7dc53a6e4256              # double 0.98410283481832539
	.quad	0x3fe68ebc6571f319              # double 0.70492381871699472
	.quad	0x3fe0d464aa59198c              # double 0.525926907263782
	.quad	0x3fefbeb21b2b22b8              # double 0.99202828699443212
	.quad	0x3fe34617f0da8d0e              # double 0.60230633775464226
	.quad	0x3fdef3149257475e              # double 0.48358644763094627
	.quad	0x3fe4c43a09adfeb8              # double 0.64895345583496233
	.quad	0x3fe067e20d687d80              # double 0.51268103235990736
	.quad	0x3fe8007f873901fa              # double 0.7500608101909727
	.quad	0x3fe5ce9242b3bb83              # double 0.68146622684240332
	.quad	0x3fce34c42058b964              # double 0.23598529414580149
	.quad	0x3fe81649e654710c              # double 0.75272078501032657
	.quad	0x3fd7d9e3946c1974              # double 0.37267388815271052
	.quad	0x3fc01f457c4efaac              # double 0.12595432824851593
	.quad	0x3fe34a0152d2d016              # double 0.6027838342329257
	.quad	0x3fefc3763be8bb9c              # double 0.99261008931158611
	.quad	0x3fe494a039eb43ec              # double 0.6431428080778665
	.quad	0x3fddb929204a6c40              # double 0.46442630914106431
	.quad	0x3fe28f3975133262              # double 0.5799834524746752
	.quad	0x3fc20a6e395d12b4              # double 0.14094331551509287
	.quad	0x3fefe8294d89925c              # double 0.99709000724812879
	.quad	0x3fda2705aa40d1ee              # double 0.40863172174729712
	.quad	0x3f886d4bc3d88880              # double 0.011927215494385246
	.quad	0x3fe6ffb41247ea7d              # double 0.7187137944268468
	.quad	0x3fdf391088600620              # double 0.48785794561271878
	.quad	0x3fede44834727ad7              # double 0.93411646121588887
	.quad	0x3fc8290c8c8a52dc              # double 0.18875271665878912
	.quad	0x3fd48f900fe3d666              # double 0.32126237441784722
	.quad	0x3fd06dcee13ce946              # double 0.25670215602771795
	.quad	0x3fde0b432b5c36e4              # double 0.46943740114589461
	.quad	0x3fc7813767560538              # double 0.18363087220863306
	.quad	0x3feb28ec78bdcef3              # double 0.84874557096779168
	.quad	0x3fe11c601480b07c              # double 0.53471378330642905
	.quad	0x3fef46ef5929eef0              # double 0.9774090520363341
	.quad	0x3fda4fb22307db7c              # double 0.4111142484757051
	.quad	0x3fea036392781c70              # double 0.81291369063627705
	.quad	0x3fece64ccf903399              # double 0.90311279811577372
	.quad	0x3fe9837a9581a695              # double 0.79729966354826109
	.quad	0x3f97a809a2e19900              # double 0.023101950232011781
	.quad	0x3fe9a9ffa8acb406              # double 0.80200179046880815
	.quad	0x3fde3e99458df046              # double 0.47257072250772969
	.quad	0x3fbcf5da11dd8010              # double 0.11312640129244778
	.quad	0x3fa49857bf840fb0              # double 0.040224783066178715
	.quad	0x3fe846293f5b9e7b              # double 0.75856459021174716
	.quad	0x3fec190deb62797c              # double 0.87805839513366334
	.quad	0x3f98ee051f6d26e0              # double 0.024345474284280466
	.quad	0x3fdd0f08d4e23084              # double 0.45404263295564129
	.quad	0x3f8111befc437dc0              # double 0.0083346291289093654
	.quad	0x3fe6d91555a62561              # double 0.71399943092653129
	.quad	0x3fee7ecbdbfd5f95              # double 0.9529780670809368
	.quad	0x3fe4ff55fc275235              # double 0.65616893051862368
	.quad	0x3fc5a5a678e7e4ec              # double 0.16911774543385805
	.quad	0x3fe109f454aa3cde              # double 0.53246513877993684
	.quad	0x3fd5de4f77ecbcca              # double 0.34169375144388126
	.quad	0x3fe263385184ad0b              # double 0.57461181565796104
	.quad	0x3fe9055be914d4d5              # double 0.78190417789178446
	.quad	0x3fe0302405df1be7              # double 0.50587655207425264
	.quad	0x3f75db7e9b200400              # double 0.0053362794442373129
	.quad	0x3fd10249297e7140              # double 0.26576451351299468
	.quad	0x3feb3b0d5ea4bb5e              # double 0.85095852360778301
	.quad	0x3fed4e578e83f05a              # double 0.91581323466335651
	.quad	0x3fe21bc25cdaca78              # double 0.5658885778014584
	.quad	0x3fa063dcb25d9440              # double 0.032011887334001177
	.quad	0x3feaaab0c9574c70              # double 0.83333625149169954
	.quad	0x3fdcd2010535098e              # double 0.45031762608064063
	.quad	0x3faf32bb315285f0              # double 0.060933923502726972
	.quad	0x3fd4f8655007c334              # double 0.32766087356053508
	.quad	0x3feefa2466a641a6              # double 0.96803493546217534
	.quad	0x3fdf6d24be27e8d8              # double 0.49103659219657692
	.quad	0x3fec2d87b6479443              # double 0.88055787660108142
	.quad	0x3fd8cea2110aaec0              # double 0.38761188186866136
	.quad	0x3fc919affb43aaf0              # double 0.19609641808286637
	.quad	0x3fcb0b1120185f18              # double 0.21127523486278998
	.quad	0x3fe248a70bfdc09f              # double 0.57136871664080846
	.quad	0x3fdb17a232bcddbe              # double 0.42331747965678435
	.quad	0x3fd0ce7d44312c34              # double 0.26260310801871189
	.quad	0x3fe8fcf1efc0fa4c              # double 0.78087708308141534
	.quad	0x3fd14e6e34ea4944              # double 0.27041201751230326
	.quad	0x3fe82288e4d0d9b9              # double 0.75421566668119688
	.quad	0x3fc7897826629610              # double 0.18388273119232723
	.quad	0x3fecc6be1a9d7add              # double 0.8992605705096498
	.quad	0x3fe54d56a058184f              # double 0.66569072072230451
	.quad	0x3fe57d2bafd72b80              # double 0.67152962058877108
	.quad	0x3fe0433b5732e8ff              # double 0.508207006750382
	.quad	0x3feefff1561a3a51              # double 0.96874300782094213
	.quad	0x3fe9d1eff7ca741a              # double 0.80687712093970565
	.quad	0x3fe02386a32b947a              # double 0.50433666104494468
	.quad	0x3fd101748ca0e92a              # double 0.2657138226819763
	.quad	0x3fe93076087b0cf2              # double 0.78716565758113988
	.quad	0x3fef2418f1bcf85d              # double 0.97315642561421678
	.quad	0x3fd44f0ac739c98c              # double 0.31732434707296231
	.quad	0x3f6b399635c57d00              # double 0.0033233579435286709
	.quad	0x3fdef6cc196a3b52              # double 0.48381330949716983
	.quad	0x3fe6e8cdc274afee              # double 0.7159184263196019
	.quad	0x3fe7b4b84c343d60              # double 0.74081053622823489
	.quad	0x3fe3cdeb69ea3ed6              # double 0.61888666807677839
	.quad	0x3fe6543d466ad800              # double 0.69778312447920143
	.quad	0x3fe76eaa0705d58e              # double 0.73225880977285995
	.quad	0x3fea4f5f378c95b0              # double 0.82218895768590095
	.quad	0x3fe87805b5ee9be6              # double 0.76465116056067184
	.quad	0x3fefca1bf412a794              # double 0.99342153234941799
	.quad	0x3fcc6dedbca93158              # double 0.22210475646933037
	.quad	0x3fd087fe47e11640              # double 0.25830037135560602
	.quad	0x3feb54222a24f0fb              # double 0.85402019721325872
	.quad	0x3fc2224ee6a4dde0              # double 0.14167200338282182
	.quad	0x3fddce2c8a221590              # double 0.46570886125149347
	.quad	0x3fd8eba0ca050e06              # double 0.3893815968369555
	.quad	0x3fea380640734919              # double 0.81933891857105146
	.quad	0x3feb6c855eff7186              # double 0.85699719003928077
	.quad	0x3fdd6564a8cd1464              # double 0.45931354984742812
	.quad	0x3fd321d1a78d7cd0              # double 0.29893914568488089
	.quad	0x3fe700f08a468f45              # double 0.71886469847638834
	.quad	0x3fb4258e2b9d45f8              # double 0.07869804920962753
	.quad	0x3feb428b58377842              # double 0.85187308530635897
	.quad	0x3fefb9f96f54fc68              # double 0.99145194763685839
	.quad	0x3fe8b5c9686ae14d              # double 0.77219076532404929
	.quad	0x3fdcfb5480005fb0              # double 0.45283997059004388
	.quad	0x3fdfa9f2b254e200              # double 0.49474780478661273
	.quad	0x3fda341cb12dbf30              # double 0.40943066885573653
	.quad	0x3fe2f54d33d60357              # double 0.5924440395757341
	.quad	0x3fafb4f0c72660b0              # double 0.061927341757099241
	.quad	0x3fd154c189f74252              # double 0.27079809640148256
	.quad	0x3feb1f8b5510e0bc              # double 0.84760061850013057
	.quad	0x3fd8e9812bbd5a7e              # double 0.38925198813868878
	.quad	0x3fd95cb0b43926fa              # double 0.39628236389090399
	.quad	0x3fd086864d592e5a              # double 0.25821073106337666
	.quad	0x3fc973b035fb54c0              # double 0.19884302745655269
	.quad	0x3fe70a789a189a16              # double 0.72002821061033973
	.quad	0x3fd31f747780a202              # double 0.29879485769427572
	.quad	0x3fc961243c2e67a8              # double 0.1982770246366361
	.quad	0x3fea9bba812dfb58              # double 0.83150983076471174
	.quad	0x3fede0a3f7e00ce9              # double 0.9336719361603204
	.quad	0x3fdbf39cd34a7114              # double 0.43674393304697046
	.quad	0x3fd9d306334db752              # double 0.40350489626040542
	.quad	0x3fd82fdd729faaa2              # double 0.37792144960136842
	.quad	0x3fe0d38eb7e075b6              # double 0.5258248893111872
	.quad	0x3fd0560bf5b93442              # double 0.25525187488966961
	.quad	0x3fd031fdaa382e26              # double 0.253051201085983
	.quad	0x3fc1af9f26927078              # double 0.13817204841041408
	.quad	0x3feb270990ed6eb7              # double 0.84851530367037398
	.quad	0x3fec50109018b270              # double 0.88477352279512722
	.quad	0x3fd8f12f05a46358              # double 0.38972068358412093
	.quad	0x3fee67647d812fac              # double 0.95012115967391741
	.quad	0x3fd4fba5130aa056              # double 0.32785918101808897
	.quad	0x3fe11ee7db72f25d              # double 0.53502266751418015
	.quad	0x3fc74a099823184c              # double 0.1819469445092089
	.quad	0x3fb3c2e7aeed2e00              # double 0.07719276447931378
	.quad	0x3fbe112eac2bc6f8              # double 0.11744968131440803
	.quad	0x3fe4a000f9b7d810              # double 0.64453171513628327
	.quad	0x3fed1ca6f6d168a9              # double 0.90974758345261819
	.quad	0x3fdabe3fc2750510              # double 0.41786188116027834
	.quad	0x3fc06d6d61e424d4              # double 0.12833945541232217
	.quad	0x3fe4381a2facf348              # double 0.63184842406881447
	.quad	0x3f999d7751cb4f20              # double 0.02501474796993286
	.quad	0x3fc609e0304e9888              # double 0.17217638357869114
	.quad	0x3fdeadda6d32ae5a              # double 0.4793611589800314
	.quad	0x3fbaeba065a621f0              # double 0.10515787583984326
	.quad	0x3fd7345aa4e76728              # double 0.36257043937586042
	.quad	0x3fd6ea0ebbcb395c              # double 0.3580357393192537
	.quad	0x3fc5f5ddbd5f3300              # double 0.17156574007676539
	.quad	0x3febac6271f1c7eb              # double 0.86479303602959356
	.quad	0x3fc8ebce65ed4ec4              # double 0.19469623543647263
	.quad	0x3fd456d9c8a167c0              # double 0.31780094712086893
	.quad	0x3fc657a5e62a671c              # double 0.17454980600887715
	.quad	0x3fe7e1330e22e750              # double 0.7462401653385573
	.quad	0x3fe185ff40a83bf8              # double 0.54760706547119664
	.quad	0x3fdb06bfa2324b36              # double 0.42228689994333324
	.quad	0x3fdef9b6cc762866              # double 0.4839913365073073
	.quad	0x3fbbf556f0833fe8              # double 0.10921233531848851
	.quad	0x3fe6a0aa1e0c8e92              # double 0.70711236828761259
	.quad	0x3fdedf779dc31740              # double 0.48238935858204357
	.quad	0x3fedfe864645e4dc              # double 0.93731988644790531
	.quad	0x3fe2a9293262606c              # double 0.58314952698402811
	.quad	0x3fd0bd12d9448038              # double 0.26154013841187718
	.quad	0x3fdbab15738bd3b8              # double 0.43231712611969497
	.quad	0x3feb79555f90f9fb              # double 0.85856121697707921
	.quad	0x3fe8e4ceed5f4b49              # double 0.77793070184484592
	.quad	0x3fb0b1a46c594da0              # double 0.065210606052735987
	.quad	0x3fce0cdb846f5d84              # double 0.23476737944177384
	.quad	0x3fe86c17b3ed430c              # double 0.76319489614442792
	.quad	0x3fcb232aa86b5584              # double 0.21201070045087189
	.quad	0x3fedbfc484f97f62              # double 0.92965913745500139
	.quad	0x3fc1dfef85a732ac              # double 0.13964647317916012
	.quad	0x3feaae28f300abbc              # double 0.83375976048898037
	.quad	0x3fe702164a78b16a              # double 0.71900476975637884
	.quad	0x3fc16f5aefeaaf40              # double 0.13621079172787098
	.quad	0x3fd54292e4649b7e              # double 0.3321883421326034
	.quad	0x3fe0cc529f1f0b09              # double 0.52494174078341971
	.quad	0x3fbe2e8899afc678              # double 0.11789754631151961
	.quad	0x3fefdd164c478e64              # double 0.99573817156165178
	.quad	0x3feb9a4db0b15bf0              # double 0.86258587370218542
	.quad	0x3fe524c147fe6ce1              # double 0.66073669492052656
	.quad	0x3fd4793aeba68882              # double 0.3198993016504873
	.quad	0x3fea74e0bd1d28fd              # double 0.82676732002553843
	.quad	0x3fd36bbf09a925d0              # double 0.30345130866461734
	.quad	0x3fe25b0572d9f701              # double 0.5736109965507411
	.quad	0x3fee04b3a91d1358              # double 0.93807395009990113
	.quad	0x3fd4f566511753f6              # double 0.32747800749831357
	.quad	0x3fb64b0ff55b29a8              # double 0.087082860375778837
	.quad	0x3fab374bae4f7d80              # double 0.053156247165811799
	.quad	0x3fc92b9630219184              # double 0.19664265966561001
	.quad	0x3fec3e48a3dc078d              # double 0.88260299686247523
	.quad	0x3fe77e3f79ec33bb              # double 0.73416112721462612
	.quad	0x3fe04530d052deca              # double 0.50844612777924536
	.quad	0x3fe5c5b7893e1f24              # double 0.68038536839683106
	.quad	0x3fece0aef4a2f4bd              # double 0.90242717533660477
	.quad	0x3fbafa11462ea728              # double 0.10537822688516185
	.quad	0x3fed47dfeed34331              # double 0.91502377172046157
	.quad	0x3fe8237c6961e78d              # double 0.75433178503520681
	.quad	0x3fe0904aeafa4127              # double 0.5176138486295131
	.quad	0x3fec9c12040666c9              # double 0.89405155931600533
	.quad	0x3fc0119eaa784220              # double 0.12553771327704144
	.quad	0x3fecc887eac6c83a              # double 0.89947887282165273
	.quad	0x3fb3a981dc11fce0              # double 0.076805225589839932
	.quad	0x3fef944c624de771              # double 0.98685282898007475
	.quad	0x3fc7421b0f7c16ac              # double 0.18170488601770296
	.quad	0x3facff1d44ba7c30              # double 0.056633867873863486
	.quad	0x3fbe090ac017f6c0              # double 0.11732546987328885
	.quad	0x3febace140064ba5              # double 0.86485350136569095
	.quad	0x3fcf0f7a3169b91c              # double 0.24265983021491244
	.quad	0x3fe2ae6a7e6fe031              # double 0.58379101462106153
	.quad	0x3fd01a594cb1f21c              # double 0.25160820474391854
	.quad	0x3fbd3d4446c023f8              # double 0.11421610572155305
	.quad	0x3fd254d9b6247bc2              # double 0.28642885959009956
	.quad	0x3fb9ae51cfe96910              # double 0.10031615568133057
	.quad	0x3fde999d844b5b8c              # double 0.47812593383189816
	.quad	0x3fe77e9d5d0e7e3e              # double 0.73420589614028819
	.quad	0x3fd74e1cdc6b0378              # double 0.36414262318799429
	.quad	0x3fe26cf1aa066049              # double 0.57579882820119466
	.quad	0x3fd02762aeef3b76              # double 0.25240389903495186
	.quad	0x3fea9922521506d9              # double 0.83119312316577088
	.quad	0x3fd8a2c2e417b23e              # double 0.3849341609445992
	.quad	0x3fd54706e449a22c              # double 0.33246013921464868
	.quad	0x3fe297474a6263c8              # double 0.58096661117735326
	.quad	0x3fea9a8700cd201e              # double 0.83136320263384156
	.quad	0x3f8ffc42acea4100              # double 0.015617867376278571
	.quad	0x3fc5481e28425dd0              # double 0.16626336065085789
	.quad	0x3fdd53d23d4af860              # double 0.45824104295377843
	.quad	0x3fd4f63509660fce              # double 0.32752729337539399
	.quad	0x3fe19a70b9ea344b              # double 0.5501025801801317
	.quad	0x3fcda30c1decc01c              # double 0.23153830968067346
	.quad	0x3fefe482e7879533              # double 0.99664445133809065
	.quad	0x3fbab8b178f0f678              # double 0.10438069536845684
	.quad	0x3feb91934e40a9b7              # double 0.86152043613156237
	.quad	0x3fe106f27c2bc2d8              # double 0.53209804775368763
	.quad	0x3fde950e2a51cb0a              # double 0.4778476155544672
	.quad	0x3fe72d6e8e59d25f              # double 0.72429588129905287
	.quad	0x3fefc41649287f0a              # double 0.99268640793522533
	.quad	0x3fe9ab507215b051              # double 0.80216238290950959
	.quad	0x3fdf5d0097b58b0e              # double 0.49005141082140902
	.quad	0x3fd70fa012cad6ac              # double 0.36032869181813498
	.quad	0x3fda5216bcd6fbe4              # double 0.41126030389199131
	.quad	0x3fe83d40cf6356d9              # double 0.75747719293095905
	.quad	0x3fed6b3bab109382              # double 0.91933997546276225
	.quad	0x3fc15c7ca6e8a1dc              # double 0.13563497686233361
	.quad	0x3fdff409c2f7c770              # double 0.49926990547020633
	.quad	0x3fec368f56a692c6              # double 0.8816601459880864
	.quad	0x3fd7511a930d4c6e              # double 0.36432518349210496
	.quad	0x3fcfefc3411d681c              # double 0.24950447730481151
	.quad	0x3fcbe844f8f31f10              # double 0.21802580028292384
	.quad	0x3fd69c9833026c7e              # double 0.35330777150529247
	.quad	0x3fe3045436a22248              # double 0.59427843733380659
	.quad	0x3fddba7bff95d91e              # double 0.46450710258013028
	.quad	0x3f8614f5cc1c5500              # double 0.010782165805304889
	.quad	0x3fed2ca8eb19dc77              # double 0.91170164030235312
	.quad	0x3fef1aa76f37c761              # double 0.97200366708987584
	.quad	0x3fdf927e0d2a165c              # double 0.49331618581377312
	.quad	0x3fef93922314d6f7              # double 0.98676401950680669
	.quad	0x3fd3867f1b9322b2              # double 0.30508401577803135
	.quad	0x3fe4e3ee6e8615ee              # double 0.65282365404772036
	.quad	0x3fdbd9e040076f10              # double 0.43517309429965767
	.quad	0x3fea648dc6bc052d              # double 0.82477463546107332
	.quad	0x3fd639655b12e192              # double 0.34725316900178271
	.quad	0x3fdba167d898df84              # double 0.4317264189917227
	.quad	0x3f80275a6957cb00              # double 0.0078875602148165136
	.quad	0x3fec9668216c8826              # double 0.89336020019641604
	.quad	0x3fda162210e59b7c              # double 0.40760089540565736
	.quad	0x3fe3139b88be594f              # double 0.59614350040173203
	.quad	0x3fea955fe8381c1e              # double 0.83073420863445668
	.quad	0x3fee1f33eb5105c2              # double 0.94130893669369464
	.quad	0x3fd700344386183e              # double 0.35938746065255944
	.quad	0x3fdcee1bc8c34a54              # double 0.4520329914641128
	.quad	0x3fef2e0c76c8b7e6              # double 0.97437117767344428
	.quad	0x3fe6fb959646107d              # double 0.71821097708063031
	.quad	0x3fe05176535b8bc2              # double 0.50994411736279965
	.quad	0x3fc38bdd517e473c              # double 0.15270582656062881
	.quad	0x3feeff122649cd78              # double 0.968636584073848
	.quad	0x3fe0006805759f9c              # double 0.50004960123350228
	.quad	0x3fe512a4038d93c5              # double 0.65852547353699065
	.quad	0x3fcced7d6a98fcf4              # double 0.22599761681519903
	.quad	0x3fe71746d5a39ba6              # double 0.72159139372239589
	.quad	0x3fe52e4c368389ad              # double 0.66190157553892492
	.quad	0x3fe92ee094667d7d              # double 0.78697232231563385
	.quad	0x3f84adf24f505900              # double 0.010097401662318095
	.quad	0x3fe4a517db0ae2dd              # double 0.64515297681563377
	.quad	0x3fe43b9203c3ac95              # double 0.63227177367424992
	.quad	0x3fe42252ee37cb40              # double 0.62918993498747255
	.quad	0x3fd806e5d8bdf61c              # double 0.37542101064886579
	.quad	0x3fefcf74d2e2c055              # double 0.99407426060316572
	.quad	0x3f89c270e9340f80              # double 0.012577898136903576
	.quad	0x3fd3d4c3be459a06              # double 0.30986112195242332
	.quad	0x3feecd6900152f37              # double 0.96257448211824836
	.quad	0x3fdd93a3188fcc3a              # double 0.46213605307201855
	.quad	0x3fea542cae696265              # double 0.82277521195198899
	.quad	0x3fdf7f18a52b3536              # double 0.49213234071506251
	.quad	0x3fe04cbfc123fed6              # double 0.50936877939963199
	.quad	0x3fd2cc5a1e3abbd4              # double 0.29372265770046835
	.quad	0x3fb5063bde761178              # double 0.082126371204202075
	.quad	0x3fe46b71592e9b09              # double 0.63811557215089565
	.quad	0x3f91d49afe046020              # double 0.017412587884877095
	.quad	0x3fdcb5f5883dd6a6              # double 0.44860590271796708
	.quad	0x3fdce5d856db02de              # double 0.45152863008483546
	.quad	0x3f94d58cc9cbb4a0              # double 0.020345878426202391
	.quad	0x3f7a839edbc74800              # double 0.0064731793795136383
	.quad	0x3fe3dac715d93bef              # double 0.62045625941561677
	.quad	0x3fea4d75015e7fa2              # double 0.82195520656022247
	.quad	0x3fe122b4b148d9b4              # double 0.53548655153172442
	.quad	0x3fea5e34f49bf788              # double 0.82399986052745167
	.quad	0x3fe08d5d22e8dbd3              # double 0.51725632494241791
	.quad	0x3fe67988c04b7ca4              # double 0.7023357158431236
	.quad	0x3fe6804f62ba140f              # double 0.70316285402862089
	.quad	0x3fc25d90fa01649c              # double 0.143480417321176
	.quad	0x3fe03a75638a4f86              # double 0.50713605348072188
	.quad	0x3fe400ec89416b02              # double 0.62511278922769997
	.quad	0x3fd0ca29275f8290              # double 0.26233891339328697
	.quad	0x3fb7ff67899c3ed8              # double 0.093740912529251985
	.quad	0x3fdda6c2a31afb58              # double 0.46330324104558462
	.quad	0x3fd0654fa23068a2              # double 0.25618353689936602
	.quad	0x3fe263b854bb449e              # double 0.5746728567993562
	.quad	0x3fdb13260ac0c32c              # double 0.4230437378892471
	.quad	0x3fe2581b3826e332              # double 0.57325516669434351
	.quad	0x3fd6170b8eff7ec2              # double 0.34515656437541165
	.quad	0x3feab57b5f87a057              # double 0.83465355547105957
	.quad	0x3fe7dce4b5aaaf51              # double 0.74571452600273791
	.quad	0x3fc63f329a5b0c7c              # double 0.17380363976380753
	.quad	0x3feb755799f27b0c              # double 0.85807399814425044
	.quad	0x3fe0e7a284b411f8              # double 0.52827573698647168
	.quad	0x3febc026cdc95c85              # double 0.86720600311936435
	.quad	0x3fbeec5abde8f0a8              # double 0.12079398285362919
	.quad	0x3fde062c249097c2              # double 0.46912673540861871
	.quad	0x3fe81af1782f305d              # double 0.75328896974088944
	.quad	0x3fec2bc156e0dfd2              # double 0.8803412148326919
	.quad	0x3fb9d8fbc40b1598              # double 0.10096715484822594
	.quad	0x3fe14d26b8691253              # double 0.54066787736571553
	.quad	0x3fe662df3e013216              # double 0.69956934080397803
	.quad	0x3fe58192dc476208              # double 0.67206709883890969
	.quad	0x3fdfc9959ede7362              # double 0.49667873873277391
	.quad	0x3fd4bab135e34486              # double 0.3238947893378924
	.quad	0x3fe8fcdbafc687fb              # double 0.780866473495052
	.quad	0x3fda3f3fad1bfc7e              # double 0.41011039643485236
	.quad	0x3fe51b785c5c5acf              # double 0.65960329093180714
	.quad	0x3fe27a5ecb00fe15              # double 0.57743777894205783
	.quad	0x3fd45c0004f886b4              # double 0.31811523900442329
	.quad	0x3f8d338634a1aec0              # double 0.014258430939853795
	.quad	0x3fe6c1f65c5bd064              # double 0.71117704428480666
	.quad	0x3fdf5f79fa3ccf82              # double 0.49020242154369253
	.quad	0x3fda610c0e18ea4c              # double 0.41217328430835631
	.quad	0x3f972953381bc340              # double 0.022618580150211232
	.quad	0x3fb7a13a3b11ab60              # double 0.092303885861537704
	.quad	0x3fc5daf6bd773488              # double 0.17074474574329579
	.quad	0x3fe104d9a8da51b2              # double 0.53184206942619583
	.quad	0x3fd67837fa62be00              # double 0.35108756496171623
	.quad	0x3fc8721f1af15b90              # double 0.19098271194044658
	.quad	0x3fea83215a9c1e8b              # double 0.82850711533770161
	.quad	0x3fc2c51ca5bfbc74              # double 0.14664037793361084
	.quad	0x3fe59794408a54b0              # double 0.67475330930269273
	.quad	0x3fc5f301f79affe8              # double 0.17147850599394521
	.quad	0x3fdbfe953759cad4              # double 0.43741350560519021
	.quad	0x3fd6b311ee8b35fa              # double 0.35467956824581359
	.quad	0x3fdb3e90a5feedd0              # double 0.42569366655854157
	.quad	0x3fec6fa6da685206              # double 0.88862936647143509
	.quad	0x3fed8e6bbd08ef9c              # double 0.9236353580558787
	.quad	0x3fab9730be02a510              # double 0.053887866205807211
	.quad	0x3fe45d9ff83116d8              # double 0.63642881846382249
	.quad	0x3fd81df3cfa1979a              # double 0.3768281486176136
	.quad	0x3fcc53b31872fcf0              # double 0.22130430883223751
	.quad	0x3fb27f5b93a82570              # double 0.072255824612644792
	.quad	0x3fec28ac3760085b              # double 0.87996493163542355
	.quad	0x3fe49d1cf4c7519e              # double 0.64417884643858137
	.quad	0x3fee00b556cf17a4              # double 0.93758646921991273
	.quad	0x3fd97c64cec6889a              # double 0.39821739380762156
	.quad	0x3fef6e1ea6b40626              # double 0.98219234999868799
	.quad	0x3fe224a8e90e5eeb              # double 0.56697507399345903
	.quad	0x3fe72727b7135b30              # double 0.72352967984156713
	.quad	0x3fec07cf72bb886f              # double 0.87595341118527681
	.quad	0x3fd03cdd0638d45e              # double 0.25371480567566163
	.quad	0x3f94e7ca68e171c0              # double 0.020415461207777374
	.quad	0x3fe0b5d77153eb53              # double 0.52219745764100833
	.quad	0x3fcc7b76582b3184              # double 0.22251776986230365
	.quad	0x3f91acf182a080c0              # double 0.017261289213025277
	.quad	0x3fee2f863e865f3f              # double 0.94330131732838385
	.quad	0x3fedecc1619472cf              # double 0.93515080507821746
	.quad	0x3fc1f0dd24302b88              # double 0.14016308085441787
	.quad	0x3fdbc02f744abe74              # double 0.43360506397855336
	.quad	0x3fbd12d63a630cc8              # double 0.11356867719136965
	.quad	0x3fc3613be4eb5158              # double 0.15140484502502249
	.quad	0x3fefeca2aae25b70              # double 0.99763615966626951
	.quad	0x3fe49335d94a3cb0              # double 0.64297001304102785
	.quad	0x3fb015a23ee584c0              # double 0.062830105167011929
	.quad	0x3fda4b023172bcd6              # double 0.41082815960812746
	.quad	0x3fd8f76c9f2abd08              # double 0.39010158103606374
	.quad	0x3fe7c8dfb08c55a4              # double 0.74327072603289368
	.quad	0x3fb9a2730aecfed8              # double 0.10013503090612674
	.quad	0x3feb3dd39e37e2a7              # double 0.85129719640743395
	.quad	0x3fd4700c8863e0e0              # double 0.31933892554617493
	.quad	0x3feb66eb6a4421c5              # double 0.85631342654328846
	.quad	0x3fe4f2d422866b22              # double 0.65464216941049735
	.quad	0x3fd81ac6e7d12274              # double 0.37663433683750402
	.quad	0x3fdae15ca360a82e              # double 0.42000499682274295
	.quad	0x3fb2ba35951a9740              # double 0.07315382852774821
	.quad	0x3fe993d1d9e2f72d              # double 0.79929440074895342
	.quad	0x3fecc2e598c3f4e5              # double 0.89879112088206325
	.quad	0x3fec7b3e97caf3a4              # double 0.89004449507739424
	.quad	0x3fe367c7260a6eb3              # double 0.60641820363840393
	.quad	0x3fee5a11aead7e41              # double 0.94849475971927444
	.quad	0x3fd4a8bcf969cf2a              # double 0.32279896122712393
	.quad	0x3fe6d24c2e97b69f              # double 0.71317109203456031
	.quad	0x3fe789cb83d7e1f3              # double 0.73557067633288253
	.quad	0x3fc9f4c37f19cd88              # double 0.20278209405988101
	.quad	0x3fed43d9bd351e6d              # double 0.91453253702725379
	.quad	0x3fe2f5eab1a87589              # double 0.59251913737141237
	.quad	0x3fc27be7a5a67a38              # double 0.14440627659219429
	.quad	0x3fc9688b8188dc54              # double 0.19850295853550171
	.quad	0x3fe6f4f2948dd67e              # double 0.7174008275457735
	.quad	0x3fb6e22981daef18              # double 0.089388460352833099
	.quad	0x3fe99f1b4cd5dac5              # double 0.8006721974077996
	.quad	0x3fe48a8efb18efa7              # double 0.64191388170683161
	.quad	0x3faf078400b65440              # double 0.060604214751187602
	.quad	0x3fb739e822110540              # double 0.090727337185872337
	.quad	0x3fe184e07f4725ae              # double 0.54747032984703536
	.quad	0x3fdc12fb9e3f1dc8              # double 0.43865862325443716
	.quad	0x3fb673bef7a633d8              # double 0.087703643285024113
	.quad	0x3fe106edebbec699              # double 0.53209587139118064
	.quad	0x3fe9c19638183984              # double 0.8048812003706165
	.quad	0x3fcf06f656239ff8              # double 0.24239997106565148
	.quad	0x3fc8681ee82fd834              # double 0.1906775125241339
	.quad	0x3fe2f92a6138df18              # double 0.59291571606351834
	.quad	0x3fb5579c493480b0              # double 0.083368080017410362
	.quad	0x3fb5c644e4996f68              # double 0.085056596575154964
	.quad	0x3fe8abd0523bb391              # double 0.77097335873769357
	.quad	0x3fa024e471960240              # double 0.03153146635577686
	.quad	0x3fe4dc208d4449ad              # double 0.65187099066888765
	.quad	0x3fea1c48cc67383d              # double 0.81595268175602309
	.quad	0x3fdbf77fbbd4c6d6              # double 0.43698113768469449
	.quad	0x3fef573f0d6fbd2c              # double 0.97940018295586162
	.quad	0x3fe1c96830115c85              # double 0.55583581341024113
	.quad	0x3fc07a2ca9573f5c              # double 0.12872846859545006
	.quad	0x3fe632804379dbc8              # double 0.69366467646511243
	.quad	0x3fcc908522044544              # double 0.22316040192576214
	.quad	0x3fe5ac2a0986b18b              # double 0.67726613865447527
	.quad	0x3fd7bad82b8590ac              # double 0.37077907800836374
	.quad	0x3fed78a87a874c1a              # double 0.92097877436970355
	.quad	0x3fe4d9a9bfc59436              # double 0.65157020049503589
	.quad	0x3febe838a76355bc              # double 0.87209732716535581
	.quad	0x3fc7673d60d78584              # double 0.18283812740905259
	.quad	0x3fd3ea3b4b445c0c              # double 0.31117136335655071
	.quad	0x3fe1257975d27f48              # double 0.53582451831969369
	.quad	0x3fd8acad1d0e8844              # double 0.38553932035040739
	.quad	0x3fe6c112c6205d88              # double 0.71106852242057617
	.quad	0x3fa7a3be1286e650              # double 0.046171130906668467
	.quad	0x3fb4fe09af673f20              # double 0.082001309702942837
	.quad	0x3feca2613ad570be              # double 0.89482175341574766
	.quad	0x3fc5daea29edb62c              # double 0.17074324652951256
	.quad	0x3feeb4147fa63c68              # double 0.95948243075862382
	.quad	0x3fe32085026dc92d              # double 0.59771967386612845
	.quad	0x3fdcfe83ac008ac8              # double 0.45303432271081734
	.quad	0x3f9eb6163cd33220              # double 0.029991481268370035
	.quad	0x3fd211214a0344e0              # double 0.28229553439912358
	.quad	0x3feba116acbdb811              # double 0.86341413248533361
	.quad	0x3fd3f2efc2423050              # double 0.31170267077027791
	.quad	0x3fd716e247d516b6              # double 0.36077172293549198
	.quad	0x3feb7b34700089b6              # double 0.85878965258989726
	.quad	0x3fc5198cb8848d1c              # double 0.16484221467644822
	.quad	0x3fe6f19005ef0703              # double 0.71698762091566015
	.quad	0x3fe76dd4b2fb16ba              # double 0.73215708691778691
	.quad	0x3fddc01f8ebb2c8a              # double 0.46485127390469272
	.quad	0x3fd2fee2cec31b84              # double 0.29680700484862421
	.quad	0x3fefb2b96ee078b6              # double 0.99056693702347931
	.quad	0x3fd9c77ec0a26b76              # double 0.4028012162395308
	.quad	0x3fe276184d8d4670              # double 0.57691588541838534
	.quad	0x3fec9021d68f7114              # double 0.89259426027595845
	.quad	0x3febf96e8326f17e              # double 0.8741982041897669
	.quad	0x3fe1b6fd73329328              # double 0.55358765124819787
	.quad	0x3fe1c7a86704b1b7              # double 0.55562229271668329
	.quad	0x3fef29fc502ae7a7              # double 0.9738751951001533
	.quad	0x3fab44d7561659b0              # double 0.05325959134931979
	.quad	0x3feced1f70679e6e              # double 0.90394565538458749
	.quad	0x3fe56da329ff6c5b              # double 0.66963346674618707
	.quad	0x3fe2f2033ad37a10              # double 0.59204255570858955
	.quad	0x3feeed2f1fe229b3              # double 0.96645313479648675
	.quad	0x3fef554efcee4910              # double 0.97916364098117192
	.quad	0x3fe2d784f97ed843              # double 0.58880852441394216
	.quad	0x3fdb9bd143c3ae90              # double 0.43138534181228128
	.quad	0x3fae1c92c89d7030              # double 0.058811747540602588
	.quad	0x3fc09155d80a4660              # double 0.12943528221926481
	.quad	0x3fe8268dade767de              # double 0.75470622983561575
	.quad	0x3fdc30fa1aefc030              # double 0.44048931723137041
	.quad	0x3fe360bb47eb4e4b              # double 0.60555805250846484
	.quad	0x3fd8422fdfa3f3fe              # double 0.3790397342671098
	.quad	0x3febce728cbb4768              # double 0.86895110594398961
	.quad	0x3fd2c1c77b58bb18              # double 0.29307734532896879
	.quad	0x3fe36551151d935f              # double 0.6061177647030539
	.quad	0x3fcfbe90b29f7ca0              # double 0.24800308915925928
	.quad	0x3fdd7bcbe166c16c              # double 0.46068093311170943
	.quad	0x3fec578104acc39e              # double 0.88568163788851328
	.quad	0x3feeb32e1ede7666              # double 0.9593725779447595
	.quad	0x3fef7f13b4a7805f              # double 0.98426232608836616
	.quad	0x3fe48f6c6d1cb110              # double 0.64250775633766644
	.quad	0x3fcb3edcb10a004c              # double 0.21285589832769103
	.quad	0x3fec11d8385d151d              # double 0.87717829712406437
	.quad	0x3fd845770dd6a392              # double 0.37923981048020849
	.quad	0x3fb53be9a159c188              # double 0.082945444004286384
	.quad	0x3fe58af121e11da8              # double 0.67321068398535022
	.quad	0x3fedab520a69103d              # double 0.92716314347536122
	.quad	0x3fd1a97d5a4fcf12              # double 0.27596982783801238
	.quad	0x3fed20a7332cdcb4              # double 0.91023597712673742
	.quad	0x3f7e4c6aea5e5200              # double 0.0073970962893281644
	.quad	0x3fcef727ecdcb924              # double 0.24191760125672446
	.quad	0x3fea2b04b202f5c8              # double 0.81775126235850681
	.quad	0x3fede98c413c870a              # double 0.93475926152697864
	.quad	0x3fb44893ae1fc700              # double 0.079232435236715304
	.quad	0x3fd2afee033c9b0c              # double 0.29198789898002597
	.quad	0x3fb93f3d13fc8538              # double 0.098621194247716981
	.quad	0x3fef1d65cecf128b              # double 0.9723385848270295
	.quad	0x3feed99c3833ba67              # double 0.96406374909367975
	.quad	0x3fc9085f04f07dcc              # double 0.19556796780760377
	.quad	0x3fd9468e3fa872a6              # double 0.39493137566186431
	.quad	0x3fd75d957a320956              # double 0.36508690770292185
	.quad	0x3fec01681a2ddf0b              # double 0.87517171013948436
	.quad	0x3feba13ffb59a51d              # double 0.86343382922965228
	.quad	0x3febd9750b060d18              # double 0.8702950682931343
	.quad	0x3fd2b6dd6125c086              # double 0.29241117941911232
	.quad	0x3fd3f004853b384e              # double 0.31152451525565972
	.quad	0x3fd6e06913492474              # double 0.35744692691202506
	.quad	0x3fe8d2658f90c642              # double 0.77568319358960758
	.quad	0x3fd1aadc54dd9ade              # double 0.27605350768719272
	.quad	0x3fe9150451af9598              # double 0.78381553606293419
	.quad	0x3fec55d153deee8a              # double 0.88547579175015412
	.quad	0x3fe87ddf1a1bdc0f              # double 0.76536517238025847
	.quad	0x3feffb96beff8c46              # double 0.99946152977316483
	.quad	0x3fee8e2108104764              # double 0.95484973502082626
	.quad	0x3fbc9dbf02ad8248              # double 0.11178201499343132
	.quad	0x3fe392cbd9909437              # double 0.61166946881406303
	.quad	0x3fd3bc3dce1f9f8e              # double 0.30836434487582032
	.quad	0x3fecc89bf8d6c317              # double 0.89948843575811821
	.quad	0x3fe351c0955d6c48              # double 0.60372952626074383
	.quad	0x3fee7b81a9cfea8e              # double 0.95257647673072809
	.quad	0x3fe48d7090e187a8              # double 0.64226558968606628
	.quad	0x3f922b05432c13c0              # double 0.017742235398163109
	.quad	0x3fefc8996089a4aa              # double 0.99323719840062563
	.quad	0x3fe94bc5ee579d5a              # double 0.79049965430469205
	.quad	0x3f83f2e804947240              # double 0.0097406507871308223
	.quad	0x3fb8b15b0db6d088              # double 0.096456232879804316
	.quad	0x3fd88e90445c0d66              # double 0.38370138812771015
	.quad	0x3fbafc0aad3b22b8              # double 0.10540835122368264
	.quad	0x3fd21ab31511a6fe              # double 0.28287961061015199
	.quad	0x3fdbc926244737ea              # double 0.43415216009895963
	.quad	0x3fd10ff172e0e426              # double 0.26659809321023642
	.quad	0x3fe83d201c20215d              # double 0.75746160023940556
	.quad	0x3feef4be010f20a3              # double 0.96737575728277069
	.quad	0x3fea234d7107ba00              # double 0.81680938793380164
	.quad	0x3fe83cd267f66c97              # double 0.75742454819864491
	.quad	0x3fad5d674c09a3b0              # double 0.057353237182560135
	.quad	0x3fdb86712b26128e              # double 0.43008069242231606
	.quad	0x3fef0d66de99971d              # double 0.97038596607737626
	.quad	0x3fd786ba12ae0a88              # double 0.3675980741901772
	.quad	0x3fe60c7fea7d3092              # double 0.68902583883893187
	.quad	0x3fdc1d634aa1028a              # double 0.43929369247420225
	.quad	0x3fec3e2ae73572de              # double 0.88258881719556448
	.quad	0x3fe2b3b89d5f9646              # double 0.58443861710538481
	.quad	0x3fe33c38d757a42b              # double 0.60110132273724071
	.quad	0x3fea3ac21066e6da              # double 0.81967261508472267
	.quad	0x3fd4087bf65c7888              # double 0.31301783617698975
	.quad	0x3fda6bc553477ed2              # double 0.41282780773870542
	.quad	0x3fb47de401abd118              # double 0.080045938880918377
	.quad	0x3fe6b8bc36277fcb              # double 0.71005068375597469
	.quad	0x3fda89b753a6938a              # double 0.41465552491200042
	.quad	0x3fd6729da9355b68              # double 0.35074559711704589
	.quad	0x3fb85b2af7009660              # double 0.095141110709471288
	.quad	0x3fe9034a8c0a9c3c              # double 0.78165175773472794
	.quad	0x3fe44493f271a0d1              # double 0.63337132789913586
	.quad	0x3fcecd396d9b3994              # double 0.24063794948456219
	.quad	0x3fc3bc6fd97b96cc              # double 0.15418813819194666
	.quad	0x3fda1d52c1b6feb6              # double 0.40803975026572503
	.quad	0x3fe1d5797f287607              # double 0.55730891070896937
	.quad	0x3fc26c3994d36004              # double 0.14392776266936391
	.quad	0x3fd492dfece8b0fa              # double 0.32146452079429333
	.quad	0x3fe0000e29b7f471              # double 0.50000675342711365
	.quad	0x3fe76e67c54a8b1a              # double 0.73222721608576369
	.quad	0x3fb22dad58d84030              # double 0.07100947779713418
	.quad	0x3fb8a0ca265a8a88              # double 0.096203455318155773
	.quad	0x3fbfd03a1c7c69b0              # double 0.12427104182680782
	.quad	0x3fcf22a43b0db560              # double 0.24324467547868789
	.quad	0x3fcf291421c81b60              # double 0.24344112061973089
	.quad	0x3fe1365db01f7e09              # double 0.53788647078539598
	.quad	0x3fc41689c34d5f1c              # double 0.15693780933610746
	.quad	0x3fe8ef18e31e6093              # double 0.77918667182076928
	.quad	0x3fef6a9007f0ed57              # double 0.98175813246727272
	.quad	0x3fbc325155bfa1e0              # double 0.1101427873942451
	.quad	0x3fe621528e36eaf1              # double 0.69156768585466299
	.quad	0x3fd9a0155542425a              # double 0.40039571119362949
	.quad	0x3fdaca955af1b83a              # double 0.41861471062918876
	.quad	0x3fe8b44e9092a304              # double 0.77201011883616432
	.quad	0x3fef7f18997e83f3              # double 0.98426465968452558
	.quad	0x3fd166a4ba3d2faa              # double 0.27188986003306559
	.quad	0x3fc1149fc7038b88              # double 0.13344189851258315
	.quad	0x3fd6fbcd71ba67ba              # double 0.35911880594505485
	.quad	0x3fd7017db53ef242              # double 0.35946600627702108
	.quad	0x3fe43f8cd1670bd4              # double 0.63275757693224444
	.quad	0x3fe2060858e441c8              # double 0.56323640214582671
	.quad	0x3feb26b7fc5edbad              # double 0.84847640315171236
	.quad	0x3fe815c56cc199a0              # double 0.75265761605696823
	.quad	0x3fedcb843d80b246              # double 0.93109333050012633
	.quad	0x3fefb461af7fc426              # double 0.99076923634686831
	.quad	0x3fdbc74dd11c2554              # double 0.43403954907315279
	.quad	0x3fe520fccdcac156              # double 0.66027679628136116
	.quad	0x3fec6020508f1f54              # double 0.88673415884202677
	.quad	0x3fe4ae5731d72130              # double 0.64628181204265012
	.quad	0x3fbd8bef83ad7080              # double 0.1154164978483454
	.quad	0x3feced3241d6913b              # double 0.90395462855352748
	.quad	0x3fee6c171928f69e              # double 0.95069460786881499
	.quad	0x3fd3d3d31b2055e6              # double 0.30980374955228596
	.quad	0x3fc2e01300d65dc4              # double 0.14746320286643144
	.quad	0x3fe25c43b22552fa              # double 0.57376274866200494
	.quad	0x3fed86cb06bf42fb              # double 0.92270423238559773
	.quad	0x3fe642cb9db5f019              # double 0.69565373232717598
	.quad	0x3fd0714a8e1f0286              # double 0.25691474799172231
	.quad	0x3fcc73aac46ac97c              # double 0.22227987852745545
	.quad	0x3fca672afc9826dc              # double 0.20627343496044304
	.quad	0x3fe3930e9dff9120              # double 0.61170130595249717
	.quad	0x3fdcb69e4c55e5d8              # double 0.44864613966600819
	.quad	0x3fea91b770881b1f              # double 0.83028766611900895
	.quad	0x3fed0dc6a8bfafdb              # double 0.90793164213891531
	.quad	0x3fef5ad07fbd2cc1              # double 0.97983574818626817
	.quad	0x3fa93ea7a0cfc740              # double 0.049306143169714378
	.quad	0x3fc17e650c30cb48              # double 0.13666976065868597
	.quad	0x3fe0bdbe59206df8              # double 0.52316205413393302
	.quad	0x3fe3ee7bd7bd2096              # double 0.62286178719024821
	.quad	0x3fca91d7787e4380              # double 0.20757573493440518
	.quad	0x3fea65050d0498ab              # double 0.82483150999612087
	.quad	0x3fded87b1ac163ce              # double 0.48196294415316465
	.quad	0x3fe0278d632c75a0              # double 0.50482816095216165
	.quad	0x3fe72ccc925a9c24              # double 0.72421864113573919
	.quad	0x3fd0d1354918bf8e              # double 0.26276905191752398
	.quad	0x3fe38b81def784f3              # double 0.61077970073907151
	.quad	0x3fc2521f0efeaf00              # double 0.14313114387675085
	.quad	0x3fd08ce4f8494148              # double 0.25859951254553382
	.quad	0x3fef4942a7c8978f              # double 0.9776929165861804
	.quad	0x3f93bf3a96a22340              # double 0.019284167713098599
	.quad	0x3fe7562c86750ab5              # double 0.72926927815600229
	.quad	0x3fd4b16d9df9b8fc              # double 0.32332935740750179
	.quad	0x3fd36d8b99d46d98              # double 0.30356111547890796
	.quad	0x3fe3ddf276d021df              # double 0.62084315496127462
	.quad	0x3fbbb40160b860c0              # double 0.10821541415532732
	.quad	0x3fc6552231c3bb4c              # double 0.17447307042990656
	.quad	0x3f91fd9964334c60              # double 0.017568966618295767
	.quad	0x3fe1eb60af51880d              # double 0.55998262636080798
	.quad	0x3fc752a0ec2f76a0              # double 0.18220912487497731
	.quad	0x3fd23a7ee9e0d3e6              # double 0.28482029761954519
	.quad	0x3fedcca77ec8ea78              # double 0.93123221171056425
	.quad	0x3fe6f6b1d7da78cd              # double 0.71761409911030116
	.quad	0x3fe53490a711c445              # double 0.66266663199179077
	.quad	0x3fd01ed14d332ce6              # double 0.25188095606854544
	.quad	0x3fd9e5ac7219c61e              # double 0.40464316504139386
	.quad	0x3fea5292cf8fda93              # double 0.82257977046431774
	.quad	0x3fb5020305a0bc10              # double 0.082061947702399828
	.quad	0x3fd65b1dde1efce6              # double 0.34931132022388878
	.quad	0x3fe0ea0249a4a0dc              # double 0.52856554397024125
	.quad	0x3fe7023c3b169173              # double 0.71902286091476098
	.quad	0x3fca3ff3d6a0c868              # double 0.2050766752232136
	.quad	0x3fe425ba9910fe1b              # double 0.62960557838227105
	.quad	0x3fe2076aac3a7f05              # double 0.56340535772685085
	.quad	0x3fda47ce8e96696e              # double 0.41063274311604558
	.quad	0x3f9d0ac42998b9e0              # double 0.02836138252149023
	.quad	0x3fdca8e818e6e27c              # double 0.44780924255204702
	.quad	0x3fd2b8eb175b4b56              # double 0.29253651886863474
	.quad	0x3feafb18dd9aec7b              # double 0.84315150530109351
	.quad	0x3fc6766eb9b166e8              # double 0.17548927371063106
	.quad	0x3febade680dee9a0              # double 0.86497807664936843
	.quad	0x3fdd933e31f80c82              # double 0.46211199645785694
	.quad	0x3fe0e2055324c0df              # double 0.5275904296777546
	.quad	0x3fc34b7bcbdcb330              # double 0.15074107603268194
	.quad	0x3fd43d5c9faa62b8              # double 0.31624522774067598
	.quad	0x3fd92bf4daa32406              # double 0.39330788947387452
	.quad	0x3fea32b2e15c2f4f              # double 0.81868881240505142
	.quad	0x3fd8f886dbd3e490              # double 0.39016887157010505
	.quad	0x3fdb8d59857195a2              # double 0.43050230056391048
	.quad	0x3fe517c4350c5faf              # double 0.6591511760807317
	.quad	0x3fdc47fe1e0effc0              # double 0.44189408240708516
	.quad	0x3fd3ae0dea945a2e              # double 0.30749843509821317
	.quad	0x3febc166e9cb16e9              # double 0.86735864317662703
	.quad	0x3fe8699975d63782              # double 0.76289055838582009
	.quad	0x3febff77a0d4da8a              # double 0.87493497288126432
	.quad	0x3fe7dd8311568d5b              # double 0.74579003702494207
	.quad	0x3fd3348122fb35da              # double 0.3000796167005696
	.quad	0x3fd41be2239ed570              # double 0.31420186499175085
	.quad	0x3fb45d6178f0bf70              # double 0.079549877191991802
	.quad	0x3feb753328a4992a              # double 0.85805662096098456
	.quad	0x3fd6dd6ddff689a2              # double 0.35726496573820488
	.quad	0x3fc2207dfe93ef40              # double 0.14161658220825224
	.quad	0x3fe13eb7c0dfea7e              # double 0.53890597983202304
	.quad	0x3fe33ccd068289cf              # double 0.60117198249309378
	.quad	0x3fe246d71077a1c9              # double 0.57114747253677323
	.quad	0x3fe2bb12821c3060              # double 0.58533597385531877
	.quad	0x3fe58c9dd377eea2              # double 0.67341510107458569
	.quad	0x3fe9a38a94d3de2d              # double 0.80121354167835579
	.quad	0x3fbe2b503df4a7e0              # double 0.11784841072645191
	.quad	0x3fe0e31c4fed8d96              # double 0.52772346125532255
	.quad	0x3fe73cc48ee79d61              # double 0.72616794501383819
	.quad	0x3fe82c2e2d1d58e0              # double 0.7553931122918378
	.quad	0x3fe77ef7f19ca57e              # double 0.7342490881903101
	.quad	0x3fdb99cf04d0a2aa              # double 0.43126273603642551
	.quad	0x3fcf3d01fecc9cac              # double 0.24404931012506859
	.quad	0x3fe89077f2882bdd              # double 0.76763532037272919
	.quad	0x3fe2f3a53e217ce2              # double 0.59224187979625875
	.quad	0x3fc227d477c1a790              # double 0.14184051368220851
	.quad	0x3fe2b314dde614d8              # double 0.58436053599930471
	.quad	0x3fe3574b61cc345e              # double 0.60440606213672843
	.quad	0x3fd57c643473500e              # double 0.33571725008118924
	.quad	0x3fc7fcb3701ac5e0              # double 0.18739932035309348
	.quad	0x3fd74e55ca02f2aa              # double 0.36415619590460813
	.quad	0x3fc2c086c4fee8e4              # double 0.14650044077809021
	.quad	0x3fbced5f566e8ca0              # double 0.11299701557304553
	.quad	0x3fb47f92a4754ed8              # double 0.080071606779991256
	.quad	0x3faf6996ec319140              # double 0.061352459270695991
	.quad	0x3fcd4a48f71242ec              # double 0.22882949890165294
	.quad	0x3f7c7a84ce9c1880              # double 0.00695278051148851
	.quad	0x3fe268d99801d72f              # double 0.5752990692987846
	.quad	0x3fa1e73cd85b9e40              # double 0.034967328463434644
	.quad	0x3fdecb05e174df82              # double 0.48114153878440657
	.quad	0x3fd75529470c4474              # double 0.36457282961152448
	.quad	0x3fdf509cc7da5c18              # double 0.4892951919259203
	.quad	0x3fe251ba6108e644              # double 0.57247656776525746
	.quad	0x3fd85abd25af2cca              # double 0.38053826027016824
	.quad	0x3fe81918b4d89bfb              # double 0.75306353875646381
	.quad	0x3fa39831e22c78d0              # double 0.03827052961263322
	.quad	0x3fed5221a45e9465              # double 0.91627580741318282
	.quad	0x3feef1e0f699adc0              # double 0.96702621616480399
	.quad	0x3fdaea2988ea5654              # double 0.42054212923662715
	.quad	0x3fd83fcc1cb4c304              # double 0.37889387896852633
	.quad	0x3fe8d7edfc4f4c89              # double 0.77635859755754766
	.quad	0x3fd44ed9006a74fe              # double 0.31731247940645335
	.quad	0x3fc1fe472dbc1100              # double 0.14057245000015683
	.quad	0x3fe36ebd13df21fe              # double 0.60726789361166289
	.quad	0x3feeff9f540c94ad              # double 0.96870390334938394
	.quad	0x3fe2afc5f0da492f              # double 0.58395669023074059
	.quad	0x3fe471cdf81b1f76              # double 0.63889215906327368
	.quad	0x3fd28b6c3c98b796              # double 0.28975969236022914
	.quad	0x3fdecd9e64d5ab40              # double 0.4812999710763286
	.quad	0x3fd90e0e97ed5d48              # double 0.39148297154084277
	.quad	0x3feb7eda748e08b3              # double 0.85923502697575882
	.quad	0x3fda6c78bd4dd5ce              # double 0.41287058340762151
	.quad	0x3fe22c3a1798fb9c              # double 0.56789879425911094
	.quad	0x3fe5dd566fa858d5              # double 0.68326875503660267
	.quad	0x3fe390ff199cd4d7              # double 0.61144976618256919
	.quad	0x3fdb9a0e90531dd6              # double 0.4312778863354344
	.quad	0x3fd0ebb3925d0a36              # double 0.26438607495598221
	.quad	0x3fdcbb531f335220              # double 0.44893339201851923
	.quad	0x3fbd522cbf4e84d8              # double 0.1145351378495606
	.quad	0x3fe6c21da573984f              # double 0.71119577708010151
	.quad	0x3fd5064255c93066              # double 0.32850702645806107
	.quad	0x3fe1323d1af6533c              # double 0.53738265291267551
	.quad	0x3fc2d710b9ac2698              # double 0.14718827310598637
	.quad	0x3fdc70b839eb6eda              # double 0.44437986046044176
	.quad	0x3fc2d86e7cfd43f0              # double 0.14722996809953726
	.quad	0x3fe6568e844f0c06              # double 0.69806600419576692
	.quad	0x3fea35c1611382a7              # double 0.81906193695256924
	.quad	0x3f9076aa183b1f00              # double 0.016077668885173146
	.quad	0x3fd4a68908c3ffb4              # double 0.32266450744645714
	.quad	0x3fd7eec6194a08e8              # double 0.37394859761856347
	.quad	0x3fdecedc0966881e              # double 0.4813757030298137
	.quad	0x3fd7197d59f790a4              # double 0.36093076501698307
	.quad	0x3fe3ca214b1406b2              # double 0.61842407859531634
	.quad	0x3fd93a67dccf5db2              # double 0.39418980182150698
	.quad	0x3fb03bd0a7550740              # double 0.063412705280851078
	.quad	0x3fc8bd54547ae760              # double 0.19327787518505612
	.quad	0x3fdb780b2e2ff528              # double 0.42920188436967743
	.quad	0x3fd1ec398d050502              # double 0.28004301806875287
	.quad	0x3f6d71befb7bfa00              # double 0.003594277393744294
	.quad	0x3fe3ca715a251ffd              # double 0.61846225363205998
	.quad	0x3fe9a9243894ffd3              # double 0.80189715434243636
	.quad	0x3fece07d170a58c1              # double 0.90240339756089594
	.quad	0x3fe52261e671b22b              # double 0.66044707306497707
	.quad	0x3f9acf1d45680580              # double 0.026180703507639347
	.quad	0x3fd3e55e74330c10              # double 0.31087457034681254
	.quad	0x3fe628019530388b              # double 0.69238356722213845
	.quad	0x3fd014554d21e026              # double 0.25124104053930052
	.quad	0x3fa222ce0ef50ba0              # double 0.035421790433722622
	.quad	0x3fc3a0e31d09784c              # double 0.15334738653013102
	.quad	0x3fd162831f18395a              # double 0.27163770710548862
	.quad	0x3fe355d8ae42bdc1              # double 0.60422929797453417
	.quad	0x3fd6d95754aa37e0              # double 0.35701545017297853
	.quad	0x3fedddb8388404d3              # double 0.93331538236830125
	.quad	0x3fe0e66185ce2ced              # double 0.52812267431127469
	.quad	0x3fe2c1870cbfd521              # double 0.5861239670763646
	.quad	0x3fe03e11fcda1245              # double 0.50757693657994507
	.quad	0x3fe0e679ea96638f              # double 0.52813430612433077
	.quad	0x3fd5f9bf13604f48              # double 0.34336830990035994
	.quad	0x3fee0eed346c97f4              # double 0.93932209242916409
	.quad	0x3fe19a1256a39983              # double 0.55005757257167465
	.quad	0x3fe62f8bc5d13f67              # double 0.69330395351606178
	.quad	0x3fdde8f793a4654a              # double 0.46734418314152448
	.quad	0x3fe50ec0f13aacac              # double 0.65805098643376914
	.quad	0x3fe312870ffe0e54              # double 0.59601166842953512
	.quad	0x3fee61f192f3aca4              # double 0.94945601178678318
	.quad	0x3fc542052fae7b8c              # double 0.16607727840616027
	.quad	0x3fd6bcdbdd63cafe              # double 0.35527702922915683
	.quad	0x3fe4b3c6f8d57f50              # double 0.64694546318421864
	.quad	0x3fe959fc687fad64              # double 0.79223461542043738
	.quad	0x3fc26d423b433a24              # double 0.14395931142503671
	.quad	0x3feb532392b73b66              # double 0.85389879851741735
	.quad	0x3fa00f975969e9a0              # double 0.031368951477776408
	.quad	0x3fe5d79d045791a7              # double 0.68256998870906649
	.quad	0x3fe66cca2e649486              # double 0.70078000126945095
	.quad	0x3fc7f42431c23180              # double 0.18713810376756257
	.quad	0x3fdfac9ce3da04d6              # double 0.49491045237671238
	.quad	0x3fefaa69b335dd15              # double 0.98955235483200232
	.quad	0x3feb7cd82396b760              # double 0.85898978186535757
	.quad	0x3fe21cc01b4bcbbf              # double 0.56600957232728166
	.quad	0x3fef2b98f4fb3d2b              # double 0.97407195899896714
	.quad	0x3fdf2700996ab9e0              # double 0.48675551397437111
	.quad	0x3fec359df8ba582c              # double 0.88154505328816901
	.quad	0x3fe026b20a20eaa7              # double 0.50472356775511151
	.quad	0x3fe1b363b033ba4c              # double 0.55314812101807709
	.quad	0x3fe5a9a15e62bb82              # double 0.67695682940198787
	.quad	0x3fee42a15e9afccb              # double 0.94563358762379701
	.quad	0x3fcde9696f2af978              # double 0.23368566444510086
	.quad	0x3fcfb395b4963490              # double 0.24766799276077167
	.quad	0x3fdd81602294da60              # double 0.46102145554633545
	.quad	0x3fc02569e2dcf018              # double 0.1261417730073624
	.quad	0x3fe5d9547a4c8c83              # double 0.68277953993346363
	.quad	0x3fda6b282b203072              # double 0.41279033862588854
	.quad	0x3fe248f980a7e9ba              # double 0.57140803459269951
	.quad	0x3fecbd5cc93aed2c              # double 0.89811553290147605
	.quad	0x3fe4a433c20d8261              # double 0.64504421139652035
	.quad	0x3fe04cff72aff004              # double 0.50939915084700305
	.quad	0x3fe77187e545cb7f              # double 0.73260874538242138
	.quad	0x3fa2101501762430              # double 0.035278946331409933
	.quad	0x3fe3259cc6e91520              # double 0.59834135865881777
	.quad	0x3fc301f9d36252c4              # double 0.14849779912460381
	.quad	0x3fd535ca32121e6e              # double 0.3314080704662733
	.quad	0x3fd02aaacc72c166              # double 0.25260419812823043
	.quad	0x3fda3d4a3a521188              # double 0.40999084182137624
	.quad	0x3fcd19be91389cb4              # double 0.22734815684200316
	.quad	0x3fe59464b1d91555              # double 0.67436442123350082
	.quad	0x3fe2f219713df86a              # double 0.59205314748375071
	.quad	0x3fd20dcadc04530e              # double 0.28209182249092712
	.quad	0x3fef87b599cef7a1              # double 0.9853160862037279
	.quad	0x3feabced2036f6f3              # double 0.83556228916105935
	.quad	0x3fe4aab5dbd16a4a              # double 0.64583867009361851
	.quad	0x3fe86971079a02dd              # double 0.76287127957047185
	.quad	0x3fe5a3bf1e8a21fa              # double 0.6762385937191191
	.quad	0x3fd34b07930c5e22              # double 0.30145444259821563
	.quad	0x3fdb8d8f5f58992e              # double 0.43051513968602506
	.quad	0x3fe8ad6ebe4b23de              # double 0.77117097059919693
	.quad	0x3fd384c2fca5ff0a              # double 0.30497812912652533
	.quad	0x3fef5ab51194c4dc              # double 0.9798226683980391
	.quad	0x3feeda91a57ab150              # double 0.96418077774209543
	.quad	0x3fd31fcc8b7e2414              # double 0.29881585714662262
	.quad	0x3fecf855ac12c73a              # double 0.90531428917004253
	.quad	0x3fb2bff742182110              # double 0.073241666446964837
	.quad	0x3febeeeaa331e7c9              # double 0.87291461824428851
	.quad	0x3feb2da9004ae131              # double 0.84932375008705752
	.quad	0x3fc89b07062ac3b0              # double 0.19223106194615758
	.quad	0x3fe1851a290a0143              # double 0.54749782576985984
	.quad	0x3fb2cf8551a33ab0              # double 0.073479015761430899
	.quad	0x3fd2ccbcd4116e3e              # double 0.29374619207166919
	.quad	0x3fc97be8a0235cec              # double 0.19909389323468163
	.quad	0x3fe97e24881f8f78              # double 0.79664827906206792
	.quad	0x3fecbccd365a86cb              # double 0.89804707160893693
	.quad	0x3fe697a17488d71a              # double 0.7060096050324518
	.quad	0x3fd9c3a2170ff5ea              # double 0.402565500757048
	.quad	0x3fd15cde7ed6c136              # double 0.27129328142747811
	.quad	0x3fe652b12273ad99              # double 0.69759422997360609
	.quad	0x3fcd78bcdcafb7b4              # double 0.23024712348654719
	.quad	0x3fe2e8de1744c601              # double 0.59092621369035225
	.quad	0x3fe3bdd06ae83775              # double 0.61692067032139042
	.quad	0x3fd7b0171f551c36              # double 0.37012270030794825
	.quad	0x3fe7e56a6a00e0b1              # double 0.74675484374804146
	.quad	0x3fc3c71d9b887074              # double 0.15451402754195309
	.quad	0x3fdbd4f516d866c2              # double 0.43487288695324022
	.quad	0x3fdf5c8ae58f294c              # double 0.49002334993260344
	.quad	0x3fd8dab19c533f92              # double 0.38834800974017825
	.quad	0x3fe9a3c3a3338886              # double 0.801240748169463
	.quad	0x3f73c312edddc900              # double 0.0048247088833355267
	.quad	0x3fe045bc7df00a9e              # double 0.50851273152541743
	.quad	0x3fbdae6f144a2b08              # double 0.11594290013651343
	.quad	0x3fdd50ae6593f1f8              # double 0.45804939193456518
	.quad	0x3fcecaf0af6fd698              # double 0.24056824270490007
	.quad	0x3fe430a1267fa1ac              # double 0.63093621749162798
	.quad	0x3fe0002de132acef              # double 0.50002187713599067
	.quad	0x3fe551d611ff6626              # double 0.66623977198759543
	.quad	0x3fdc9e535d6b86a2              # double 0.44716343043374185
	.quad	0x3fe65c5659577156              # double 0.69877164315725326
	.quad	0x3fbbac3a0956dfc0              # double 0.10809672096263423
	.quad	0x3fdcc0aa0bf74fdc              # double 0.44925929230271122
	.quad	0x3fc3666ce9dc4dd8              # double 0.15156327647183221
	.quad	0x3feec81596d2b53e              # double 0.96192435701019696
	.quad	0x3fe7f668372051bb              # double 0.7488289906200899
	.quad	0x3fe99c9da4bb782b              # double 0.80036813902166182
	.quad	0x3feb1a2eda3b7c4a              # double 0.84694616912373388
	.quad	0x3f99a454dd99d3a0              # double 0.025040937447971978
	.quad	0x3fd5e2e56f7a4b0a              # double 0.34197364698881982
	.quad	0x3fe6aefea1008f74              # double 0.7088616509031298
	.quad	0x3fe77b67d461df7d              # double 0.73381415825768637
	.quad	0x3fee244e31fce43d              # double 0.9419318176579804
	.quad	0x3fd04fa36f28dfe2              # double 0.25486074309765006
	.quad	0x3fe0c6a2917cded1              # double 0.52424744048672711
	.quad	0x3fda0c44ca04d848              # double 0.40699882248316444
	.quad	0x3fae6c2eab4f02b0              # double 0.059419115459154681
	.quad	0x3febff3547ed5d5c              # double 0.87490333603174574
	.quad	0x3fe6f4a036d27e5b              # double 0.7173615523096929
	.quad	0x3fdbd3691edf566c              # double 0.43477848067173031
	.quad	0x3fe41a60d8067be6              # double 0.62822000687071688
	.quad	0x3fe68715921c864f              # double 0.70398977792155815
	.quad	0x3fe42fd03912e734              # double 0.63083659312471818
	.quad	0x3fe40d1c748a3721              # double 0.62660048257541601
	.quad	0x3fe3f25b458d8541              # double 0.62333453735860911
	.quad	0x3f6231f0927aa500              # double 0.0022210787463633475
	.quad	0x3fda89cc4093b21e              # double 0.41466051393834558
	.quad	0x3feb5ff6c7b6fc1f              # double 0.85546435362619266
	.quad	0x3fe042e0e6582d70              # double 0.5081638811983975
	.quad	0x3febffc759a15bac              # double 0.87497298723143535
	.quad	0x3fd601dd8e59f7e6              # double 0.34386385823734
	.quad	0x3fd5934fa41ec422              # double 0.33711615588532784
	.quad	0x3fecda5f8f043106              # double 0.9016568940437828
	.quad	0x3f8a19473242ba40              # double 0.01274352666982026
	.quad	0x3fea0fcec47cdfb2              # double 0.81442964912911564
	.quad	0x3fe66ad0296c63ce              # double 0.70053871241099741
	.quad	0x3fe5fd3e50c952ca              # double 0.68716350344274102
	.quad	0x3f9ad0cb9b6d47e0              # double 0.026187116014007361
	.quad	0x3fd1211a123d0d16              # double 0.26764537602521565
	.quad	0x3fd843e80484165e              # double 0.37914467278492292
	.quad	0x3fe83931d39fc27c              # double 0.75698176701378327
	.quad	0x3fa73d277515ed80              # double 0.045388443987543603
	.quad	0x3fe40fcec3cce401              # double 0.62692964784866956
	.quad	0x3fe2cc0f9100243f              # double 0.58740976639194986
	.quad	0x3fd307f20aed05f6              # double 0.29735995356540401
	.quad	0x3fe6abff51624305              # double 0.70849576850204754
	.quad	0x3fe648f31ef43f3d              # double 0.69640499158592883
	.quad	0x3fe63899179f7245              # double 0.69440893758616851
	.quad	0x3fca9dfeecf0e088              # double 0.20794664925938755
	.quad	0x3fec73e980685ccc              # double 0.88914942817327746
	.quad	0x3f8918c21cfc29c0              # double 0.01225425387339818
	.quad	0x3fc4b45e6daef72c              # double 0.16175442081105851
	.quad	0x3fe1f8c0926ae5fc              # double 0.56161526295835484
	.quad	0x3fd8d419fccafa0c              # double 0.38794564902119144
	.quad	0x3fd726f86342e6ec              # double 0.36175355618944027
	.quad	0x3f95834a3696b2a0              # double 0.021008643705203611
	.quad	0x3fe73a9cd177466e              # double 0.72590485488235656
	.quad	0x3feff4541cd3a89c              # double 0.99857526426537246
	.quad	0x3fcefa535801fc00              # double 0.24201432988408556
	.quad	0x3feec602ac675ea4              # double 0.96167119667639555
	.quad	0x3fd9919629728fb2              # double 0.39951089904411241
	.quad	0x3fb1eb6eeb289660              # double 0.069998676692728079
	.quad	0x3fd7ee9f743fc2f4              # double 0.37393938400695892
	.quad	0x3fc943657f8abee8              # double 0.19736927726398013
	.quad	0x3fe3bcfa8e8d6afd              # double 0.61681869356411279
	.quad	0x3fedc81df5f34165              # double 0.93067834889556578
	.quad	0x3fe6f9a84bf36e83              # double 0.71797575792466295
	.quad	0x3fe5e363b36f2355              # double 0.68400750203827931
	.quad	0x3fc57fd95035b494              # double 0.16796413818830003
	.quad	0x3fe2d5e363b5730a              # double 0.58860940431949982
	.quad	0x3fe2c9460b4335dc              # double 0.5870695323916908
	.quad	0x3faac2dafa4b56b0              # double 0.052267878583433514
	.quad	0x3fd81c9334e1c462              # double 0.37674408115623781
	.quad	0x3fec1b132233130e              # double 0.87830502204505634
	.quad	0x3fcb3655873fc130              # double 0.21259564498860462
	.quad	0x3fd5eb8405cc2afe              # double 0.34249973837056291
	.quad	0x3fd7bf63f937f174              # double 0.37105655038592222
	.quad	0x3fe4e9525489d3c1              # double 0.65348164092448979
	.quad	0x3fd8edff9e601b3c              # double 0.38952627626752068
	.quad	0x3fe1a7b12e509e4d              # double 0.55172022863275461
	.quad	0x3fdd355d92aa1126              # double 0.45638217280090243
	.quad	0x3fe1810e9a6f3323              # double 0.54700403368915251
	.quad	0x3fbad9ea4c25e4e0              # double 0.10488762244303329
	.quad	0x3fd29bb8504dcf38              # double 0.29075439302617978
	.quad	0x3fed9ded992a6ef4              # double 0.92552833476244567
	.quad	0x3fe750378ce46bcf              # double 0.7285421134760045
	.quad	0x3fd8055c060ff594              # double 0.37532711593652235
	.quad	0x3fdc47d75db2b04a              # double 0.44188484335132172
	.quad	0x3faf8ebeebbb8490              # double 0.061635938907565024
	.quad	0x3fbe38474b4c74d8              # double 0.11804624164911404
	.quad	0x3fba336d476f8a98              # double 0.10234721178089001
	.quad	0x3fa52ddb66fd0ba0              # double 0.041365486451943712
	.quad	0x3fc99dbfed476474              # double 0.2001266392315163
	.quad	0x3fde03f4d2a9139a              # double 0.46899147579488842
	.quad	0x3fc48fe1e07f29a8              # double 0.16064094030145992
	.quad	0x3fe57429b4c269c8              # double 0.67043004326415545
	.quad	0x3fe8c6133bdc3a76              # double 0.7741790932794419
	.quad	0x3fcfd537185cb6d4              # double 0.24869431199606729
	.quad	0x3fe886a4d4b0efc9              # double 0.76643601933710059
	.quad	0x3fe2b9acc5a8a9ea              # double 0.58516539197199546
	.quad	0x3fce72deac02d78c              # double 0.23788054846744122
	.quad	0x3fbd7b3575e927d8              # double 0.11516126755409972
	.quad	0x3fe9a09fbaa305f2              # double 0.80085741474630212
	.quad	0x3fcaaf1d5a299938              # double 0.20846907522645508
	.quad	0x3fddb5d20cca2e42              # double 0.46422244309426131
	.quad	0x3fc3d5195e2cd9b0              # double 0.15494076822660707
	.quad	0x3fe42dc110e26671              # double 0.63058522508363357
	.quad	0x3fa00115a9a45a90              # double 0.031258274992230217
	.quad	0x3fec7d7a6b28d526              # double 0.8903171627959281
	.quad	0x3fee812fcd907467              # double 0.95326986455223739
	.quad	0x3f72cc24c47f1600              # double 0.0045892177803970036
	.quad	0x3fd83984ee6d66f0              # double 0.37851069721146668
	.quad	0x3fd2dfe427b56854              # double 0.29491523626132232
	.quad	0x3fd3806e813ea544              # double 0.30471384641221655
	.quad	0x3fe20cde004e1edd              # double 0.56407070216752297
	.quad	0x3fe9339f666d1f73              # double 0.78755159382943274
	.quad	0x3fecd1dc2062b67c              # double 0.90061765981017982
	.quad	0x3fe9d1623dcdb726              # double 0.80680954047213471
	.quad	0x3fd895f433111d02              # double 0.38415245997425995
	.quad	0x3fe1ab21de363729              # double 0.55214017296541329
	.quad	0x3fe2ac2eadb7fb07              # double 0.58351835183552303
	.quad	0x3fdb49df2839fe2c              # double 0.42638377121326942
	.quad	0x3fd3a0fcbfa78df8              # double 0.3067008849741053
	.quad	0x3fb0b13c3e5111d8              # double 0.065204396451981395
	.quad	0x3fef6c7e31afd064              # double 0.9819937677807613
	.quad	0x3fee308fc4a8f27b              # double 0.94342792902132488
	.quad	0x3fe5eb79ed251a2e              # double 0.68499466245049745
	.quad	0x3fdc4a52ea0c2764              # double 0.44203636985968431
	.quad	0x3feb677a9cd3e113              # double 0.85638170843506811
	.quad	0x3fed2a53b94ae3db              # double 0.91141687574338037
	.quad	0x3f8a724223807f80              # double 0.012913243015702625
	.quad	0x3fd12f034dd5e0e8              # double 0.26849444008941115
	.quad	0x3fcb4b2eca790310              # double 0.21323189627039385
	.quad	0x3fec9c96cea2ad66              # double 0.89411487921226462
	.quad	0x3fd7604b6e67a598              # double 0.36525235921598087
	.quad	0x3fcf5e0a3c1ccca8              # double 0.24505737242870862
	.quad	0x3fc7756fe5246814              # double 0.18327139557442307
	.quad	0x3fafd42587fdff60              # double 0.062165425158126508
	.quad	0x3f9cda9c8449e0c0              # double 0.028177686285261627
	.quad	0x3fb7fb07c4315788              # double 0.093674168966883298
	.quad	0x3fd591967920e644              # double 0.33701097325283436
	.quad	0x3fae7e87db6f6680              # double 0.059559102570074351
	.quad	0x3fb85864fcdc30a8              # double 0.095098792775561436
	.quad	0x3fe33475fa5ed22e              # double 0.60015391254871076
	.quad	0x3fe5d11f15c33c6a              # double 0.68177751780048124
	.quad	0x3fe5a8030660358d              # double 0.67675925488735944
	.quad	0x3fcc94e39e6573a0              # double 0.22329373583025092
	.quad	0x3fe4a73a7af1d7b3              # double 0.64541362774502031
	.quad	0x3fc55a345b1021c0              # double 0.16681532331882742
	.quad	0x3fd0c4d0ca849f56              # double 0.2620126702990907
	.quad	0x3fe526e3c875a1de              # double 0.66099728729482954
	.quad	0x3fd8b1c4db257812              # double 0.38585015679370926
	.quad	0x3fdfe829c1f17544              # double 0.4985451120354194
	.quad	0x3fe74dbd890c0298              # double 0.72823979155517105
	.quad	0x3feb7a8584ede2c0              # double 0.85870624506704729
	.quad	0x3fe19ee1db74bf00              # double 0.55064480650432301
	.quad	0x3fc7bc97274a32f4              # double 0.18544282358597963
	.quad	0x3fabe9b51bead150              # double 0.054517421396129806
	.quad	0x3fc17e65d8cc76e0              # double 0.13666985593675118
	.quad	0x3feb912a73201caf              # double 0.86147043691098257
	.quad	0x3fcd33d68e266b38              # double 0.2281444734661251
	.quad	0x3fa41208d31c7900              # double 0.039200092096722372
	.quad	0x3fe8c5bcc4dd21af              # double 0.77413786363563541
	.quad	0x3fb87033d8ae4708              # double 0.095462074661807006
	.quad	0x3fd878bc07bf88a2              # double 0.38236904865892474
	.quad	0x3febaff296b2f703              # double 0.86522797997869849
	.quad	0x3fe858e0f2b84cde              # double 0.76084945112452451
	.quad	0x3fe20c7905d5156b              # double 0.56402255190975603
	.quad	0x3fd97aff57b5a8c4              # double 0.39813216748610736
	.quad	0x3fee8c8a250c3c15              # double 0.95465571628472168
	.quad	0x3fe7789464984953              # double 0.73346919677195854
	.quad	0x3fe7f7b74562345f              # double 0.74898875762449879
	.quad	0x3fe95d741c47e2e9              # double 0.79265790484995791
	.quad	0x3fc30f8800ec9d34              # double 0.1489114765656524
	.quad	0x3fe001bd8f2df3be              # double 0.50021245922800239
	.quad	0x3fd453b8e80b5838              # double 0.31761000309541343
	.quad	0x3fe6bf9bb27726a0              # double 0.71088967186479479
	.quad	0x3fd9174847c1a2a4              # double 0.39204604155978928
	.quad	0x3fce8f2bd3690934              # double 0.23874423811691659
	.quad	0x3f76caa31f12ea00              # double 0.0055643436364172238
	.quad	0x3fc934796721e1e0              # double 0.19691388641127983
	.quad	0x3fee87d783dd0c39              # double 0.95408225779136224
	.quad	0x3feb79b7a77ab348              # double 0.8586080809669534
	.quad	0x3f9a478d595ae000              # double 0.025663574770732112
	.quad	0x3fd93e291a2b00e0              # double 0.39441897922007563
	.quad	0x3fe98a6270688b8c              # double 0.79814264254342637
	.quad	0x3fd8d55d98aba5ee              # double 0.38802280339459017
	.quad	0x3fc35ce4fae0b6ac              # double 0.15127241372959099
	.quad	0x3fbb4dfbd593b4b0              # double 0.10665868725091587
	.quad	0x3fd972be764904b6              # double 0.3976284175042325
	.quad	0x3fdca3e183841c82              # double 0.44750249713292345
	.quad	0x3f90b6fa675d9360              # double 0.016323006209307933
	.quad	0x3fedb0aec51ae562              # double 0.92781771180231609
	.quad	0x3fd4c7af497de072              # double 0.32468778778957763
	.quad	0x3fe575719d852b51              # double 0.67058640256559887
	.quad	0x3fbc00627b4b1e08              # double 0.10938086996167595
	.quad	0x3fce04a441d1b920              # double 0.23451665128545418
	.quad	0x3fee867aa540a307              # double 0.95391590381504521
	.quad	0x3fed5166578f4fdf              # double 0.91618649579549671
	.quad	0x3fe028c9555fb8f7              # double 0.5049788157901095
	.quad	0x3fe78bb7aa1d5eaf              # double 0.73580535150082038
	.quad	0x3febec6290ef1563              # double 0.87260559375196711
	.quad	0x3fe74577df79c868              # double 0.72723001144028121
	.quad	0x3fe9f1b8dbecb221              # double 0.81075709299108578
	.quad	0x3fc6c90c3cab2134              # double 0.17801049196555996
	.quad	0x3fe06af66be8a57c              # double 0.51305695606167445
	.quad	0x3fbfc45d45a6f130              # double 0.12409003210536151
	.quad	0x3fea8c6c654e090c              # double 0.82964153085802783
	.quad	0x3f8e8ad1c52e7700              # double 0.014913214521409923
	.quad	0x3febbbc04b7ee5ec              # double 0.86666884179356662
	.quad	0x3fe592085bd0a135              # double 0.67407625134095517
	.quad	0x3fc9ff814775ae00              # double 0.20310989369623655
	.quad	0x3fe2531e5b8af426              # double 0.57264631156397594
	.quad	0x3fe97e1365447ac2              # double 0.79664010790642004
	.quad	0x3fe88f2170bf8c7e              # double 0.76747200032367835
	.quad	0x3fe0693186839ca8              # double 0.51284099838530484
	.quad	0x3f9af2bedec66de0              # double 0.02631662592612638
	.quad	0x3fe9a000949c9652              # double 0.80078152681080383
	.quad	0x3fda018c422ef6de              # double 0.40634447539546936
	.quad	0x3fdf2b66dc252ac2              # double 0.48702403543999762
	.quad	0x3fe78e2068214cb3              # double 0.73609943712144454
	.quad	0x3fe3265aa99bdf27              # double 0.5984319031403843
	.quad	0x3feb358b11cb8589              # double 0.85028604007327246
	.quad	0x3fc75c504778d364              # double 0.18250468721239621
	.quad	0x3fe0bf08b4f587b3              # double 0.52331958144735891
	.quad	0x3fee67f4db253e4b              # double 0.95018999864437015
	.quad	0x3fe7266a9b47bc30              # double 0.72343950584570926
	.quad	0x3fa229c2315ac0d0              # double 0.035474842571944998
	.quad	0x3fec6ca6a7be1d29              # double 0.88826306116326237
	.quad	0x3fd9f9978a181a04              # double 0.40585888372189083
	.quad	0x3fc21561ac24ec24              # double 0.14127751260261434
	.quad	0x3fec95bb4de76556              # double 0.89327779021838682
	.quad	0x3fd4f51c8f4662be              # double 0.32746042243665474
	.quad	0x3fe4a94465dbd95d              # double 0.64566249746603044
	.quad	0x3fefdd2e48f39440              # double 0.9957496094544993
	.quad	0x3fc7a42c291f4c2c              # double 0.18469764717028292
	.quad	0x3fe6c2e0e569c813              # double 0.71128887946383867
	.quad	0x3fdc91a59440e9ca              # double 0.44638957479369579
	.quad	0x3fe41aa1b3784fea              # double 0.62825093319633862
	.quad	0x3fe968c99ffe43f7              # double 0.79404145477940247
	.quad	0x3fcab7b613d97848              # double 0.20873142213071305
	.quad	0x3fcc0361173c7a88              # double 0.21885312685568103
	.quad	0x3fd8dc8d34bc23d0              # double 0.38846140050787614
	.quad	0x3fec3789151708bb              # double 0.88177923316131712
	.quad	0x3fc1c1bb7e261b68              # double 0.13872474345790953
	.quad	0x3fd43698db3ce794              # double 0.31583234224273693
	.quad	0x3fe2068788f654bd              # double 0.5632970500033917
	.quad	0x3fd0427881abb85c              # double 0.25405705130731859
	.quad	0x3fd4ae42627fad00              # double 0.3231359445478148
	.quad	0x3fe97b09e7248e39              # double 0.79626937050892999
	.quad	0x3feea1c1529370e4              # double 0.95724550369370975
	.quad	0x3fc3320295739940              # double 0.1499636869186336
	.quad	0x3fdbdb1504f44af4              # double 0.43524671062293341
	.quad	0x3fda5d7dffb616ca              # double 0.41195631000333022
	.quad	0x3fc705bf0ef9123c              # double 0.17986286383724515
	.quad	0x3fe1ea8ff617adcb              # double 0.55988309922161628
	.quad	0x3fe842341520138a              # double 0.75808147550616067
	.quad	0x3fb7b739ec6cc360              # double 0.092639560910141139
	.quad	0x3fd8df8bfefa1994              # double 0.38864421749203726
	.quad	0x3fe27bfbd3d33b26              # double 0.57763472911924363
	.quad	0x3febe7adeea3d637              # double 0.8720311795174841
	.quad	0x3fa0ce8209e5da90              # double 0.032825530727611185
	.quad	0x3feb7911ab02d724              # double 0.85852893257717655
	.quad	0x3fe149331f294ef7              # double 0.54018550955012656
	.quad	0x3f8a8905a042c300              # double 0.012956661179801099
	.quad	0x3fe9034a2ee7fc3a              # double 0.78165158425679881
	.quad	0x3fe62df08b78211d              # double 0.69310786476220054
	.quad	0x3fce4283c52a0590              # double 0.23640486838489183
	.quad	0x3fda26edfa82b846              # double 0.40862607444694665
	.quad	0x3fa7fce7c95a5e50              # double 0.046851390198921039
	.quad	0x3fcafd8c08c389c8              # double 0.21086264064713434
	.quad	0x3fe661e9b2fb345e              # double 0.69945225674895162
	.quad	0x3fec6b6ce65c78ec              # double 0.88811345093179516
	.quad	0x3fe460c7aa4ae4db              # double 0.63681395778908312
	.quad	0x3fe14075747e444b              # double 0.53911850693305874
	.quad	0x3fe8663201c95ecd              # double 0.76247501706071719
	.quad	0x3f9bb7de81eb6660              # double 0.027068592719706408
	.quad	0x3fdc4e3e728694bc              # double 0.44227563079978061
	.quad	0x3fed050caad3d0af              # double 0.90686639179923201
	.quad	0x3fd6dd60c22afab0              # double 0.35726183854778082
	.quad	0x3fd76118a41044b0              # double 0.36530128499823444
	.quad	0x3fa77140038fc0c0              # double 0.045785904345281292
	.quad	0x3fd150657b2228c8              # double 0.27053200745343675
	.quad	0x3fd024300ad3d110              # double 0.25220871980060711
	.quad	0x3feb000f89caf6e3              # double 0.84375740921651887
	.quad	0x3fe2648f70431351              # double 0.57477542806791793
	.quad	0x3fddd1a02fe2c386              # double 0.46591953922602902
	.quad	0x3fee55cbf8b45b7f              # double 0.94797323775388509
	.quad	0x3fb1cfbb1a2f0a00              # double 0.069575971500889011
	.quad	0x3fe08add81d6fb82              # double 0.51695132598239035
	.quad	0x3fe4c98e97927136              # double 0.64960412601388984
	.quad	0x3fe9e1ac977547c0              # double 0.80879811841645477
	.quad	0x3fed1d7001dc71b1              # double 0.90984344829080588
	.quad	0x3fc7e6a852bec134              # double 0.18672660866060087
	.quad	0x3fe5ec817a67dca4              # double 0.68512033374181103
	.quad	0x3fe1a3961cc5740a              # double 0.55121904010195633
	.quad	0x3fe58845b95b8db2              # double 0.67288480951940799
	.quad	0x3f7712a33c38c580              # double 0.0056330086113559608
	.quad	0x3fef7fba79349243              # double 0.98434184716149564
	.quad	0x3fcd715c71a5c424              # double 0.23002200650401605
	.quad	0x3fecffcf651f4ecc              # double 0.90622682333420234
	.quad	0x3fae66c7c0778b80              # double 0.059377901310447179
	.quad	0x3fd2d62c4018e502              # double 0.29432207355019113
	.quad	0x3fe3fd3678c0bb68              # double 0.62465976318877114
	.quad	0x3fedb2476d8fcd68              # double 0.92801257513785362
	.quad	0x3fa5f72e54ed4eb0              # double 0.042901466242850517
	.quad	0x3fd13e315097fb98              # double 0.26942093725659211
	.quad	0x3fc6243a69b2140c              # double 0.17298059616965167
	.quad	0x3fe92066aa4201da              # double 0.78520520452007792
	.quad	0x3fc5d9b22acb90c4              # double 0.17070605363472258
	.quad	0x3fe04997f3d99813              # double 0.50898358942936495
	.quad	0x3fb6651a55622e88              # double 0.087480207295977164
	.quad	0x3fc6cb168a12490c              # double 0.1780727552582636
	.quad	0x3fdfde9b0f66b8d2              # double 0.49796177391079965
	.quad	0x3fa3095e5f78e630              # double 0.037180852083519844
	.quad	0x3fe397dca7c4ca37              # double 0.61228783385587959
	.quad	0x3fe1a296f906798a              # double 0.55109738004448272
	.quad	0x3fe221b1b1d44643              # double 0.56661305172219334
	.quad	0x3fe331707a2a4775              # double 0.59978507862454811
	.quad	0x3fd164e162e4675a              # double 0.27178225190583805
	.quad	0x3f48151ca8040800              # double 7.3493861421547457E-4
	.quad	0x3fe913469fb479a4              # double 0.78360301201228255
	.quad	0x3fc5ab19f662461c              # double 0.16928410082304957
	.quad	0x3fe7673af4048339              # double 0.7313513532609256
	.quad	0x3fc32b00becf3028              # double 0.14974984471189257
	.quad	0x3fddcad387c471b6              # double 0.46550453432589778
	.quad	0x3fe6fd51398dd6a3              # double 0.71842252007509833
	.quad	0x3fd5311407546ffc              # double 0.33112049785427167
	.quad	0x3fef32d060fde320              # double 0.97495287841511313
	.quad	0x3fe5d7d8b08ecbd0              # double 0.68259844287819682
	.quad	0x3fc769d1751a5b50              # double 0.18291681497495427
	.quad	0x3feab5ae02ee322d              # double 0.83467770168642164
	.quad	0x3feb4ba08a46e286              # double 0.85298182494359831
	.quad	0x3fc849a8345402d8              # double 0.18974783473097179
	.quad	0x3fce9075641973fc              # double 0.23878352534930503
	.quad	0x3fcf52156096d924              # double 0.24469248977920544
	.quad	0x3fe20cff5a89b361              # double 0.56408660586530968
	.quad	0x3fc013b30cc59a20              # double 0.12560117839457607
	.quad	0x3fc02aa2a665f96c              # double 0.1263011276714211
	.quad	0x3fd94bc0a006e52c              # double 0.39524856212263404
	.quad	0x3fe93845dbb7bd8a              # double 0.78811924852009096
	.quad	0x3fc0356d712bab5c              # double 0.12663047815234563
	.quad	0x3fc13a656f086aac              # double 0.13459461137320738
	.quad	0x3fcb1eeb9ea8be28              # double 0.21188111540821919
	.quad	0x3fcf39b27bece504              # double 0.24394827891391213
	.quad	0x3fc392927bc6f448              # double 0.15291052860075838
	.quad	0x3fd43f3d4aa1584a              # double 0.31635982788191497
	.quad	0x3fe5c1e8cbf780ce              # double 0.6799205764509908
	.quad	0x3fde2955adbc863e              # double 0.47127286879012675
	.quad	0x3fb76497837a13b0              # double 0.0913786598194537
	.quad	0x3fe23054f0f3f272              # double 0.56839987813107329
	.quad	0x3fd8a7c36a23ffb8              # double 0.38523946156783095
	.quad	0x3fb17c5704a58d58              # double 0.068303526529736813
	.quad	0x3fd9c0dc8ac80544              # double 0.40239633133758823
	.quad	0x3fc1dbe4a6aeb4f8              # double 0.13952310694495629
	.quad	0x3fe2a6f34e2955ed              # double 0.58287968889152142
	.quad	0x3fe088c943025f7c              # double 0.51669753158328957
	.quad	0x3fb2b70dada3b040              # double 0.073105673687394734
	.quad	0x3fd774275cf1e0b4              # double 0.36646446301120794
	.quad	0x3fe49ecc4bf3d8ab              # double 0.6443845256278754
	.quad	0x3fef712e41d0ed23              # double 0.98256600241385105
	.quad	0x3f6a3b2b174e0600              # double 0.0032020417806399859
	.quad	0x3fe784edfb4df4cd              # double 0.73497675974763299
	.quad	0x3fedd3230b08e1a4              # double 0.9320235457917545
	.quad	0x3fe19cfe49fa7990              # double 0.55041422318372391
	.quad	0x3fc4b92264dfdab0              # double 0.16189985204228696
	.quad	0x3feb9dc98d421783              # double 0.86301114644514632
	.quad	0x3fbb1675ed1f6270              # double 0.10581147231222032
	.quad	0x3feeb7005bb3c2f4              # double 0.95983903799614589
	.quad	0x3fef7271ac14a991              # double 0.98272021874918114
	.quad	0x3fe5a73a7b1d5f44              # double 0.67666362806173952
	.quad	0x3fbc6387e12b7130              # double 0.11089371917063739
	.quad	0x3fcc1a503c5997f0              # double 0.21955302187706094
	.quad	0x3fd5b78ef8b52dae              # double 0.33932852065910424
	.quad	0x3fc8681ef321bc98              # double 0.19067751762074603
	.quad	0x3fc3cebff8054f7c              # double 0.15474700556171317
	.quad	0x3fd3d38d6fc04e34              # double 0.30978713906481237
	.quad	0x3fe8d70a969633de              # double 0.77625016604872221
	.quad	0x3fe6fc2abd866410              # double 0.7182820989284
	.quad	0x3fc52d9d8457194c              # double 0.16545456849980622
	.quad	0x3fd5771c25732482              # double 0.33539489419178647
	.quad	0x3fc76d4f0084bd08              # double 0.18302333379094926
	.quad	0x3feb2f1c58e76cd5              # double 0.84950082172454222
	.quad	0x3fd9c249573f4e3e              # double 0.40248330612414296
	.quad	0x3fec4ad54b0f6665              # double 0.88413490925013305
	.quad	0x3fd61b23f9a9c122              # double 0.34540652638590263
	.quad	0x3fdf416ae1a18a14              # double 0.48836776766089085
	.quad	0x3fd910bcbbd29a7c              # double 0.39164656011636345
	.quad	0x3feeef4ae588def3              # double 0.96671051817881303
	.quad	0x3fe6277c63fab8ea              # double 0.69232005622123194
	.quad	0x3fb8a194a7330250              # double 0.096215525455599193
	.quad	0x3fbe694716eb9360              # double 0.11879391011787055
	.quad	0x3fe6f48b4f270cb0              # double 0.71735158404807997
	.quad	0x3fde5376a3cb83ac              # double 0.47384420390704451
	.quad	0x3fea88ac9e602a20              # double 0.82918387348883371
	.quad	0x3fe77a709a2e6dc2              # double 0.73369627107188529
	.quad	0x3fef7a5136f07b4a              # double 0.98368130426738642
	.quad	0x3fb3f3d28ec9b8c0              # double 0.07793918596300653
	.quad	0x3fc00a90521fd4b0              # double 0.12532238016107078
	.quad	0x3fa435fa26b77950              # double 0.039474312997969663
	.quad	0x3fe6c17a5f382647              # double 0.71111792180563149
	.quad	0x3fc62ae7b3d7c75c              # double 0.17318435937300591
	.quad	0x3fee4bf19ce2df53              # double 0.94677048341598391
	.quad	0x3fba8516e7594b60              # double 0.10359328411258906
	.quad	0x3fe6b49432ddb863              # double 0.70954332289489874
	.quad	0x3fe5cb1bfc91a30f              # double 0.68104361848699735
	.quad	0x3fe6b9168fc629c6              # double 0.71009376603006369
	.quad	0x3fc5b58658c0766c              # double 0.16960219701370549
	.quad	0x3fe49a0cc9c1c3b8              # double 0.64380492597239591
	.quad	0x3fc893545f87dfe4              # double 0.19199614204967397
	.quad	0x3fe6aa1a91865f8f              # double 0.70826462195235418
	.quad	0x3fd297a49b9d90ac              # double 0.29050555416894031
	.quad	0x3fe33b79005403df              # double 0.60100984634493304
	.quad	0x3fe024ee7a10dc94              # double 0.50450824585904508
	.quad	0x3f6245172abf0100              # double 0.0022302105407733253
	.quad	0x3fe84ccaf41379b6              # double 0.75937411948307587
	.quad	0x3fefc052825ca0a0              # double 0.99222684346479539
	.quad	0x3fb79f9fb73a0170              # double 0.092279417260220375
	.quad	0x3fc84fcff15ade00              # double 0.1899356773844687
	.quad	0x3fc4e66a7765180c              # double 0.16328173475102437
	.quad	0x3fd36bae20b4f39a              # double 0.30344727701213403
	.quad	0x3fa9881967ab5060              # double 0.049866479782992412
	.quad	0x3fd5d7b1ddc33008              # double 0.3412899652146284
	.quad	0x3fe8105d8007027c              # double 0.7519977093252943
	.quad	0x3fc01ef3ecd3798c              # double 0.12594460548184505
	.quad	0x3fd3a0d95b106ba4              # double 0.30669244664175666
	.quad	0x3fea256238607244              # double 0.81706343661387181
	.quad	0x3fb24925e0186320              # double 0.071428649149663404
	.quad	0x3fc7a6ec17d3a5dc              # double 0.18478156245627886
	.quad	0x3fecdd02cc243a4f              # double 0.90197887298001855
	.quad	0x3fe46b177d08065f              # double 0.63807272358117106
	.quad	0x3fe1b706f555f8d4              # double 0.5535921851840393
	.quad	0x3fd50e9ed8a7c3d6              # double 0.32901736409899962
	.quad	0x3fef44b89957366f              # double 0.97713880490637261
	.quad	0x3febe9ca102776f7              # double 0.87228873400792295
	.quad	0x3fea8fe4690a59be              # double 0.83006496921262118
	.quad	0x3fe8c5991762bfeb              # double 0.77412085120704199
	.quad	0x3fd655a0bcb7e818              # double 0.34897631101159865
	.quad	0x3fd6c533db2c35c0              # double 0.35578628924926292
	.quad	0x3feb40ee32e9360e              # double 0.85167608207274426
	.quad	0x3fd05ff41e6de220              # double 0.25585654231648114
	.quad	0x3fe29c1003a71e9e              # double 0.58155060494842181
	.quad	0x3fb9a4a60e8705b8              # double 0.10016858915971383
	.quad	0x3fe768cf779916d5              # double 0.73154424056039125
	.quad	0x3fc04c345d9b0610              # double 0.12732557840904279
	.quad	0x3f46ac526a697000              # double 6.9192909434034888E-4
	.quad	0x3fc3f9f6b91b3014              # double 0.15606578863514697
	.quad	0x3fe96f72d797d63a              # double 0.79485456569700053
	.quad	0x3fe0ac87973611cd              # double 0.5210607484191826
	.quad	0x3fe0c52b36e3dd2b              # double 0.52406845780106914
	.quad	0x3fdf9fef983e01b4              # double 0.4941367136707655
	.quad	0x3fedfec10efcaaa0              # double 0.93734791686195606
	.quad	0x3fe5b84fb4cca2fc              # double 0.67874894440055256
	.quad	0x3fec35be0ab1133b              # double 0.88156034553740115
	.quad	0x3fbf9c9913c42b30              # double 0.12348324520659726
	.quad	0x3fec3223fd1107ed              # double 0.88112067629867641
	.quad	0x3fe96220f8bd2d10              # double 0.79322861272649625
	.quad	0x3fe33281bf9428ed              # double 0.59991538446163661
	.quad	0x3feda2b4b819f415              # double 0.92611156422902019
	.quad	0x3fbc58f87b16dcc0              # double 0.11073258404836661
	.quad	0x3fee759a9667e13a              # double 0.95185593963746062
	.quad	0x3feae47ecc65c081              # double 0.84039249345188705
	.quad	0x3fed299b103e9510              # double 0.91132882282968986
	.quad	0x3fef73758aed2721              # double 0.98284413465555442
	.quad	0x3fee71a90a799c5d              # double 0.9513745503035228
	.quad	0x3fdcfcef7279fd64              # double 0.45293794802997511
	.quad	0x3fdfb58de3c2a27a              # double 0.49545619241920458
	.quad	0x3fdf7b7ca92dee70              # double 0.49191204568317115
	.quad	0x3fc5da95f6ad6900              # double 0.17073320908350098
	.quad	0x3fe03c20ef3a4ea1              # double 0.50733992313549348
	.quad	0x3fbda5f756f8f358              # double 0.11581369279242659
	.quad	0x3fc874b612e3734c              # double 0.19106174394883124
	.quad	0x3fe4a47d3e106007              # double 0.64507925149791923
	.quad	0x3fe18d2a00f62b94              # double 0.54848194301426867
	.quad	0x3fec534f6059691c              # double 0.88516968553747998
	.quad	0x3fc71701b8f650e0              # double 0.18038960963588746
	.quad	0x3fcc3296ca4bfa20              # double 0.2202938545014641
	.quad	0x3fe64c9e1a4c640d              # double 0.69685273300558637
	.quad	0x3fdb9333fca1b300              # double 0.43085956259783131
	.quad	0x3fe7deb4856ce11b              # double 0.74593568858748271
	.quad	0x3fcd28ea610f9bc8              # double 0.22781114329629149
	.quad	0x3fdea5750608c0ce              # double 0.47884870137478408
	.quad	0x3fcfdc97d98050f8              # double 0.24891946907212747
	.quad	0x3fe2483384b4ffec              # double 0.57131362838117417
	.quad	0x3fe500cc1e0876f4              # double 0.65634733072121643
	.quad	0x3fc65856d2451788              # double 0.17457089678844917
	.quad	0x3fdc77a74a65c9f0              # double 0.44480306878463605
	.quad	0x3fc4642493f627ac              # double 0.15930611824688634
	.quad	0x3fe85b2dc732e360              # double 0.7611302271462641
	.quad	0x3fe6c41d77709c06              # double 0.71143983200170235
	.quad	0x3fe0daaa4cb68f59              # double 0.52669253333122434
	.quad	0x3fb0bb9865bd4328              # double 0.065362477148721454
	.quad	0x3fe6b638a4dbb4f6              # double 0.70974380682824179
	.quad	0x3fe51574feb7f8be              # double 0.65886926412328939
	.quad	0x3fb1a9741ac11720              # double 0.068991905719567814
	.quad	0x3fec3a19a165ab23              # double 0.88209229967955982
	.quad	0x3fe48ca8153f566a              # double 0.64216999196896762
	.quad	0x3fe77d626f3f0868              # double 0.73405572631623972
	.quad	0x3f8927c6ee86a640              # double 0.012282900003657393
	.quad	0x3feb5d1d546e7422              # double 0.85511652460593646
	.quad	0x3fe195ef68d3a12c              # double 0.5495526358982139
	.quad	0x3fcf2678c9ee3ac8              # double 0.24336156711475199
	.quad	0x3fe50971a0c7e621              # double 0.65740281488905705
	.quad	0x3fee6f5d4cb6baea              # double 0.95109429343378094
	.quad	0x3fc5c7edbfdbba68              # double 0.17016383998948759
	.quad	0x3fb3a3f182cbeaa0              # double 0.076720327790023024
	.quad	0x3f3781e88397d800              # double 3.5869528400611639E-4
	.quad	0x3feed2fe9356c9da              # double 0.96325615670348985
	.quad	0x3fe0bcbdab788501              # double 0.52303966036211602
	.quad	0x3fe1b249d0c21bb8              # double 0.55301371358006346
	.quad	0x3fc622a89b928258              # double 0.17293269726089266
	.quad	0x3fdfed8b1ae62992              # double 0.49887349726545793
	.quad	0x3fee3e37e6b6e310              # double 0.94509501515776329
	.quad	0x3fdf3e2a86e9a740              # double 0.48816931891507309
	.quad	0x3fe9ba78c6ce997c              # double 0.80401266889093347
	.quad	0x3fe39ce177114f35              # double 0.61290047889131094
	.quad	0x3fc7a14ad7df6a64              # double 0.18460975208911912
	.quad	0x3feac48d07b9d64d              # double 0.83649302967996564
	.quad	0x3fcc3cf31c3ad434              # double 0.22061003569038606
	.quad	0x3fe46a3320b458ad              # double 0.63796383273690582
	.quad	0x3fe170aa87074ec5              # double 0.54500318882716015
	.quad	0x3fea6ee26bacd335              # double 0.82603570013325245
	.quad	0x3fc0df1568e95ecc              # double 0.13180797217022755
	.quad	0x3fe918a53b678920              # double 0.78425847628048828
	.quad	0x3fef39a22d27864e              # double 0.97578533953874014
	.quad	0x3fe1be0cb0de11fc              # double 0.55444941086221844
	.quad	0x3feb652ed7f00d4a              # double 0.85610143828709195
	.quad	0x3fe85b321f32fdb5              # double 0.76113229840841845
	.quad	0x3fc0dfbe16b40ca4              # double 0.13182808025894588
	.quad	0x3fdf9eb27ceae064              # double 0.49406110953305515
	.quad	0x3feb33d4e7609e2b              # double 0.85007710638905587
	.quad	0x3fd3207ece0b5e88              # double 0.2988583576347783
	.quad	0x3fed95b50f678755              # double 0.92452481278108201
	.quad	0x3faf948cc7f75590              # double 0.061680220994882906
	.quad	0x3fe7f23e77db883d              # double 0.74832080278088819
	.quad	0x3fbb55990fa8a740              # double 0.10677487022681209
	.quad	0x3fd6b6e955f718d2              # double 0.35491403002778299
	.quad	0x3fd50c23e87c2c02              # double 0.32886598304384063
	.quad	0x3fee09e2d4f5f572              # double 0.93870679468061113
	.quad	0x3fe34d1f6ed0d488              # double 0.6031644024248104
	.quad	0x3fe805cbc28b52ba              # double 0.75070751187248352
	.quad	0x3fe0cbafb665f153              # double 0.52486405968333327
	.quad	0x3fddd6f8a6d22242              # double 0.46624580660912696
	.quad	0x3fe68bf782907135              # double 0.70458579541040101
	.quad	0x3f9043b581ef84c0              # double 0.015883289390221433
	.quad	0x3fe1ee19624cd6d6              # double 0.56031483840225849
	.quad	0x3fe8c9cea86ab6c4              # double 0.77463467496792093
	.quad	0x3fd0cfb104cfdfc2              # double 0.26267648191378268
	.quad	0x3fcc3a4079c1494c              # double 0.22052770562238277
	.quad	0x3fedb0761313f70f              # double 0.92779067732019083
	.quad	0x3fdf31ab687742a8              # double 0.48740658952469085
	.quad	0x3fe8f9d1fa768718              # double 0.78049563330225435
	.quad	0x3fde963dc57906b4              # double 0.47792000088166309
	.quad	0x3fe553331eb513f5              # double 0.66640621182943838
	.quad	0x3fb597dc73500bf0              # double 0.084348467018614092
	.quad	0x3fd602ca5f796fa2              # double 0.34392031978290494
	.quad	0x3fc7d2040b1a736c              # double 0.18609667341379621
	.quad	0x3fe3e4ca7f696e6f              # double 0.62167858967900524
	.quad	0x3fe65e037ed26276              # double 0.69897627611051294
	.quad	0x3fe18d5e6baae0f7              # double 0.54850693730170874
	.quad	0x3fc66bbdfa42317c              # double 0.17516302795082683
	.quad	0x3fd2a7d6a1b40552              # double 0.29149404326752404
	.quad	0x3fe6a717b5bbea70              # double 0.70789704794817787
	.quad	0x3fed6c58f32cc054              # double 0.91947600836830156
	.quad	0x3faa9a3297771a90              # double 0.0519576845068076
	.quad	0x3fe5298258abd55b              # double 0.66131703680609222
	.quad	0x3fe0fe47cf5b5cec              # double 0.53104010104553145
	.quad	0x3fd9b6f14c09d454              # double 0.40179092813133832
	.quad	0x3fa1e1eb3616d7b0              # double 0.034926748612107317
	.quad	0x3fec182a5205fd9c              # double 0.87794986744113456
	.quad	0x3fe03e0da9a01884              # double 0.50757487420993685
	.quad	0x3fe095ae3de1afd1              # double 0.51827156149146891
	.quad	0x3fdd07acc7f73828              # double 0.45359344032192661
	.quad	0x3fec912387cd1f10              # double 0.89271713756258642
	.quad	0x3fd0a17a660321b8              # double 0.25985584222919611
	.quad	0x3fe81ff1b114cabd              # double 0.75389942728209969
	.quad	0x3fa97b1094e107f0              # double 0.049767034696301837
	.quad	0x3fe35932b8c742b1              # double 0.60463844384692866
	.quad	0x3fe683c70ae7189a              # double 0.70358612183987934
	.quad	0x3fd1427b19da2c24              # double 0.26968266987450051
	.quad	0x3fe39a1da9b1617a              # double 0.61256297248023306
	.quad	0x3fe8f953e9275316              # double 0.78043551957907442
	.quad	0x3fe2db131e48d04e              # double 0.58924251475264966
	.quad	0x3fe6a61ae2b5f361              # double 0.70777649192278258
	.quad	0x3fe4f67501531cea              # double 0.65508508928988118
	.quad	0x3fb3e45f8f2af0f0              # double 0.077703449681340464
	.quad	0x3fe55b191e1cd99d              # double 0.66737037545572131
	.quad	0x3fc21334eabc0b60              # double 0.1412111421742237
	.quad	0x3fda7132da312ef6              # double 0.41315909679245466
	.quad	0x3fcfad7fb7636644              # double 0.24748226599222012
	.quad	0x3fe1efcd54203654              # double 0.56052271300149892
	.quad	0x3fc3da8651d7d400              # double 0.15510634418720315
	.quad	0x3fe90e45915eac9d              # double 0.78299215691130863
	.quad	0x3fe6e1819b7a841c              # double 0.71502762190732794
	.quad	0x3fddf0c143b95a5e              # double 0.46781951535868938
	.quad	0x3fe4b206f63ac85e              # double 0.64673183528635625
	.quad	0x3fd77d0278f2b0ae              # double 0.3670049840100188
	.quad	0x3fb6fb51bdc8ccc8              # double 0.089772328218532427
	.quad	0x3fcce28879dfc194              # double 0.22566324187165476
	.quad	0x3faf19d9cc157f90              # double 0.060744100725741323
	.quad	0x3fc0a6174b3dab84              # double 0.13006869481918326
	.quad	0x3febd696afc28402              # double 0.86994489982691925
	.quad	0x3fe941a2415cf745              # double 0.78926193968047953
	.quad	0x3fec450c1fa10e75              # double 0.88342863252223813
	.quad	0x3fdf072ce8ac0488              # double 0.48481295320386453
	.quad	0x3febe7cc2c1f64a5              # double 0.87204559915257518
	.quad	0x3fde97826b1d530c              # double 0.47799740276723024
	.quad	0x3fd0bf1fd05b820a              # double 0.26166529986770171
	.quad	0x3fe58434702b862f              # double 0.67238828571516318
	.quad	0x3fead6ec052088d0              # double 0.83873558999428077
	.quad	0x3fbf0b8b9645efe8              # double 0.12126991671351528
	.quad	0x3feca9de5dbccfc8              # double 0.8957359152614055
	.quad	0x3fe1f66b79e49a3f              # double 0.56133054549429307
	.quad	0x3fe6677b86cb4292              # double 0.70013214423132042
	.quad	0x3fea559a40682bab              # double 0.82294952945209354
	.quad	0x3fda20c3e72e6b5e              # double 0.40824983192731235
	.quad	0x3fb8ec1fdd4296f8              # double 0.097352973478873284
	.quad	0x3fe63c3af91b4a4d              # double 0.69485233930238055
	.quad	0x3fc9f35b64e727cc              # double 0.20273916651632218
	.quad	0x3f7dfebe82bca500              # double 0.0073230211089960751
	.quad	0x3faac91b74c8e5c0              # double 0.052315576559020638
	.quad	0x3fd7d818e19d6656              # double 0.37256452591609468
	.quad	0x3fe2328367be1a36              # double 0.56866617452835189
	.quad	0x3fbbe29720b19408              # double 0.10892624424157316
	.quad	0x3fd309e4638f7b54              # double 0.29747876856520361
	.quad	0x3febce5fd45c3691              # double 0.8689421794567399
	.quad	0x3fe6122d0277540f              # double 0.68971872789063748
	.quad	0x3feb2c9f037c5234              # double 0.84919691735064484
	.quad	0x3feabb8d566ee578              # double 0.83539454347116671
	.quad	0x3fe1308faa712899              # double 0.53717788018663548
	.quad	0x3fc29f63dac65a48              # double 0.14548919851650255
	.quad	0x3fdae6c11f939746              # double 0.42033413013119902
	.quad	0x3fef5f0e2290d9ef              # double 0.98035341979158185
	.quad	0x3fde72bfb92d4970              # double 0.47575371822053736
	.quad	0x3fc241c27ba84884              # double 0.14263182676274166
	.quad	0x3f20899fccc95000              # double 1.2617183382934716E-4
	.quad	0x3fb142139b9d9a28              # double 0.06741449879846384
	.quad	0x3f8ecdb3b98d7e00              # double 0.015040783023947846
	.quad	0x3fd76926dc24d960              # double 0.3657929563372786
	.quad	0x3fd3cd0dc820ab10              # double 0.30939049285613951
	.quad	0x3fd7ec9b2fb559bc              # double 0.37381629618667112
	.quad	0x3fd99abd6fef99d4              # double 0.40006957942241894
	.quad	0x3fc3ff2aa5137c98              # double 0.15622456608159463
	.quad	0x3fef53c17eda3442              # double 0.97897410178996602
	.quad	0x3fdabeed3f9c4dd8              # double 0.41790324413270019
	.quad	0x3fd96a7daf3f334c              # double 0.39712469209625989
	.quad	0x3fe7e2d9e2347f65              # double 0.74644178562810437
	.quad	0x3fe6938c2dadf4f0              # double 0.70551117822438236
	.quad	0x3fe6fa2b49520064              # double 0.71803821869253825
	.quad	0x3fdbc465b2cb6530              # double 0.4338621374168552
	.quad	0x3fe6247171864a28              # double 0.69194862530486478
	.quad	0x3fc0fd5c11445280              # double 0.13273192256078303
	.quad	0x3fdd8c6cf2968ce0              # double 0.4616958970093048
	.quad	0x3fecc858c364d420              # double 0.89945638811935069
	.quad	0x3fefda22c29a0905              # double 0.99537790306229168
	.quad	0x3fefd2712d3ee006              # double 0.99443873250038517
	.quad	0x3fd395fd9274d3ce              # double 0.30602969457987406
	.quad	0x3fe052968d0d3bb1              # double 0.51008155392798049
	.quad	0x3fd9c6299022ded8              # double 0.40271987033655199
	.quad	0x3fc351c52bc72eb0              # double 0.15093292844391248
	.quad	0x3feba17b225fd223              # double 0.86346203531008248
	.quad	0x3fd56fc8b641cd0a              # double 0.3349477557996613
	.quad	0x3feb370a98f82129              # double 0.85046892048652467
	.quad	0x3fea7d9c2b60c773              # double 0.82783325645708172
	.quad	0x3fdc838ecf495de8              # double 0.44552965395766231
	.quad	0x3fecefd74ecb5260              # double 0.90427747144219594
	.quad	0x3fd094f6c7bbb666              # double 0.25909204011154541
	.quad	0x3fea8223400bb576              # double 0.82838594922001962
	.quad	0x3fef5ce58c3000a0              # double 0.98008992557881313
	.quad	0x3fe102f5ab40bdcd              # double 0.53161128471213603
	.quad	0x3fc41dd80d800ca0              # double 0.15716076525868505
	.quad	0x3fe11b9e24eb7558              # double 0.53462130747690662
	.quad	0x3fe4ef2dee7edadc              # double 0.65419670659215567
	.quad	0x3faf1bc0806ecd40              # double 0.060758605649790187
	.quad	0x3fc7f66bb34787d8              # double 0.18720766309621584
	.quad	0x3fe16606bb7ba8da              # double 0.54370438211233396
	.quad	0x3fe01b00f85f88ba              # double 0.50329636106859899
	.quad	0x3f98ac7fff915c20              # double 0.024095535253163658
	.quad	0x3fe61157e179496e              # double 0.68961710012290012
	.quad	0x3fe0348894e26a49              # double 0.50641278342238494
	.quad	0x3fdd76df0ec28c14              # double 0.46038032952691421
	.quad	0x3f85c16eace9f5c0              # double 0.010622849132455481
	.quad	0x3fed0613469db6f8              # double 0.90699161331369194
	.quad	0x3fd5748fe2cca184              # double 0.33523938320515634
	.quad	0x3fd5f26c280e553c              # double 0.34292129432408891
	.quad	0x3fa3adbb2352f820              # double 0.038434837400459054
	.quad	0x3fd555a05aac83f6              # double 0.3333512197005456
	.quad	0x3fdcfbc1f1b7bed2              # double 0.45286606412171893
	.quad	0x3fd3aa4c5911a194              # double 0.30726917932636266
	.quad	0x3fe35e597e755c40              # double 0.60526728342927782
	.quad	0x3fe2f30c028c518f              # double 0.59216881272964084
	.quad	0x3fddcc47acb0dc5c              # double 0.46559326042501481
	.quad	0x3fe6263a93cfe39c              # double 0.69216660375160499
	.quad	0x3fea0d51e29096a2              # double 0.81412595988213732
	.quad	0x3fc9f830b287d1bc              # double 0.2028866645556614
	.quad	0x3fdd458c6e8f0802              # double 0.45736990734815219
	.quad	0x3fc3aa2f3334de38              # double 0.15363111496275095
	.quad	0x3fd7fce64db7d4be              # double 0.37481076802880497
	.quad	0x3fe53fb9444859cf              # double 0.66402877174805919
	.quad	0x3fb938a3e78a8628              # double 0.09852051165446396
	.quad	0x3feef1168df25c70              # double 0.96692970012635548
	.quad	0x3fe95283baca74d6              # double 0.79132257921778648
	.quad	0x3fe01bfaa57a365b              # double 0.50341541595271211
	.quad	0x3fea88fb42156b9c              # double 0.82922137171714238
	.quad	0x3fddd8867012b690              # double 0.46634064621580595
	.quad	0x3fd53dcdf4e1a76e              # double 0.33189724840359858
	.quad	0x3fe53bf3c0c51bc5              # double 0.66356837892896492
	.quad	0x3f6f319208739e00              # double 0.0038078167159374399
	.quad	0x3fefa431579203d4              # double 0.98879305938327854
	.quad	0x3fde901ce95a72c0              # double 0.47754595554742352
	.quad	0x3fb96a357876d170              # double 0.09927686873453978
	.quad	0x3feb643e7f59baa3              # double 0.85598683236260731
	.quad	0x3fef7ab89ea813bf              # double 0.98373061168296505
	.quad	0x3fe6731c41d844ae              # double 0.70155156002342323
	.quad	0x3fb881bfdc6f3ae0              # double 0.095729819600119281
	.quad	0x3fd8aba59d98741c              # double 0.38547649755656876
	.quad	0x3fee6bd0c3268b71              # double 0.9506610690626599
	.quad	0x3fd9d930ae9e9cae              # double 0.40388123562520206
	.quad	0x3fe8b5df4db6540a              # double 0.77220120599906861
	.quad	0x3fc6376e97fef86c              # double 0.17356665059736842
	.quad	0x3fe56ebfebd5b3a6              # double 0.66976924954871175
	.quad	0x3f97918a22695a40              # double 0.023016126966775241
	.quad	0x3fed845bf31b0bb3              # double 0.92240712625095111
	.quad	0x3feb840c8ba66eb2              # double 0.85986926341452929
	.quad	0x3feef7e2e21db00b              # double 0.96775955355906384
	.quad	0x3fd48ba2dca22b62              # double 0.32102271600949994
	.quad	0x3fec25562efa1606              # double 0.87955769705939768
	.quad	0x3fead0ef74bee0b6              # double 0.83800480653646647
	.quad	0x3fb66e6fbd377ae0              # double 0.087622626967895467
	.quad	0x3fe3e383d70fb510              # double 0.62152282718821716
	.quad	0x3fb6fe2669db6e70              # double 0.089815522045165741
	.quad	0x3fcc0975623ee9a8              # double 0.21903865143924617
	.quad	0x3fcf035975f144ac              # double 0.24228971728238002
	.quad	0x3fd514391fb037bc              # double 0.32935932249608491
	.quad	0x3fe1eb8567b63831              # double 0.56000013595781273
	.quad	0x3fcbd296f62c0a08              # double 0.2173641874324661
	.quad	0x3fe65045441f432a              # double 0.69729865365124977
	.quad	0x3fe5d1a23f827674              # double 0.68184006122801444
	.quad	0x3fe42874a5762308              # double 0.62993843380635983
	.quad	0x3fec95ca917cef18              # double 0.89328506866101787
	.quad	0x3fbf72fa66dfae38              # double 0.12284817706648077
	.quad	0x3fe23a0df4321a26              # double 0.56958673185801412
	.quad	0x3fd5e43feeb3cb8c              # double 0.34205625830434694
	.quad	0x3fbdebda7b7d1ed8              # double 0.11688008799421412
	.quad	0x3fe57407790bbb1b              # double 0.67041371957552387
	.quad	0x3fe352e699d64c56              # double 0.60386972471531908
	.quad	0x3fca081870a65594              # double 0.20337205410457371
	.quad	0x3fd0fae65dedbdb2              # double 0.26531371281358951
	.quad	0x3fba1c738a77b8c8              # double 0.10199663286741434
	.quad	0x3fefa797e39c3379              # double 0.98920816855534987
	.quad	0x3fe6c806dd6d0d0b              # double 0.71191733596097728
	.quad	0x3fb9c0c92fbe4b50              # double 0.10059792914971166
	.quad	0x3fb1156a576f8618              # double 0.066733023020354998
	.quad	0x3fec97e7a145009c              # double 0.89354306695897234
	.quad	0x3fd85439fd447b02              # double 0.38014077885775077
	.quad	0x3fdec40f223a244e              # double 0.48071649878017275
	.quad	0x3fe0977079ea9eaa              # double 0.51848625003636539
	.quad	0x3fc904293df4cbf4              # double 0.1954394867439927
	.quad	0x3fda06edbca76100              # double 0.40667289183831201
	.quad	0x3fe6a9bbecb41134              # double 0.70821949225550052
	.quad	0x3fef703d0a5c1423              # double 0.9824509813630623
	.quad	0x3fe41df0a5a8ef01              # double 0.62865478854607215
	.quad	0x3febdef4a82f6018              # double 0.87096627091068779
	.quad	0x3fe786b00f1eb1e7              # double 0.73519137337785601
	.quad	0x3fe1e057871c2d23              # double 0.55863548649486849
	.quad	0x3fe68c60d968bcfc              # double 0.70463602507325573
	.quad	0x3fcd22f2aa9af034              # double 0.22762902574857125
	.quad	0x3fefecfc833a5cd0              # double 0.99767900114502517
	.quad	0x3fe9d395bdd690af              # double 0.80707823827517255
	.quad	0x3fe71e27395423a9              # double 0.72243081280713739
	.quad	0x3fdf058fce924bb2              # double 0.4847144620227325
	.quad	0x3fd18a9c0da37136              # double 0.27408505756263268
	.quad	0x3febdb1886b7bc12              # double 0.8704950934605924
	.quad	0x3feaaa2663f7a653              # double 0.83327025914077024
	.quad	0x3fcdaface4134124              # double 0.23192368637547489
	.quad	0x3fdc54aa754257f4              # double 0.44266759348954499
	.quad	0x3fcb43f61ad27b60              # double 0.21301151570966237
	.quad	0x3fecda70274eb83b              # double 0.90166480710264041
	.quad	0x3f8c1172d415e500              # double 0.013705155465447039
	.quad	0x3fc15e79c4302fac              # double 0.13569566802504818
	.quad	0x3fcf8e2562ebdd3c              # double 0.24652545290130401
	.quad	0x3fd75cbccd584e60              # double 0.3650352483102548
	.quad	0x3fb69460d3456720              # double 0.088201572017535756
	.quad	0x3fd93bac4e07c494              # double 0.39426715488577568
	.quad	0x3fae53f5f8aa0cb0              # double 0.059234320263408136
	.quad	0x3fee16453dd224dc              # double 0.94021856378926882
	.quad	0x3f8194814428cec0              # double 0.0085840319562530131
	.quad	0x3feb9407bc7fb8aa              # double 0.86182009521669056
	.quad	0x3fe7eb61c28efad7              # double 0.74748313903531993
	.quad	0x3fe5015e811d6645              # double 0.65641713350050479
	.quad	0x3fc634a1602dc6e4              # double 0.17348115154486898
	.quad	0x3f85757823d86640              # double 0.010477961152946524
	.quad	0x3fec756abd18b922              # double 0.88933312352108751
	.quad	0x3fd9c93c569c090c              # double 0.40290745218239077
	.quad	0x3fe2f573a6037b77              # double 0.59246237206012509
	.quad	0x3fb248ce512bcd50              # double 0.071423430268443555
	.quad	0x3fe2efa219661daa              # double 0.59175209961624842
	.quad	0x3fcace79b909eb18              # double 0.20942613158316514
	.quad	0x3fc801d0180754b8              # double 0.18755532429955735
	.quad	0x3fefce75f47a1b22              # double 0.99395272969636417
	.quad	0x3fe9bde986f32968              # double 0.80443264348404586
	.quad	0x3fef1070eee39f04              # double 0.97075697572742614
	.quad	0x3fde7354a124d778              # double 0.47578922020635828
	.quad	0x3fecffbb48689e0a              # double 0.90621723310772606
	.quad	0x3fbffc009316f240              # double 0.12493899909072415
	.quad	0x3feefaca3658de37              # double 0.96811400046039508
	.quad	0x3fee040ea70e9e30              # double 0.93799526813831413
	.quad	0x3febc85a346ac25c              # double 0.86820707547856157
	.quad	0x3fe1af6a510d339e              # double 0.55266300039658112
	.quad	0x3fb3a37567d52038              # double 0.076712930536019353
	.quad	0x3fe7f39fcfcfd376              # double 0.7484892901253335
	.quad	0x3fe19c9bd22f9e8d              # double 0.55036727001147911
	.quad	0x3fd2cbdad39731b4              # double 0.29369230902809851
	.quad	0x3fe7600d06684463              # double 0.7304749608175708
	.quad	0x3fe992a4db799ab8              # double 0.79915087572302124
	.quad	0x3fb3c21d5e380c28              # double 0.077180705549878881
	.quad	0x3fc206e48d3a18c4              # double 0.14083535095068644
	.quad	0x3fec0a7044c99994              # double 0.87627423701342133
	.quad	0x3fdbb344fac8f5c2              # double 0.43281673899386075
	.quad	0x3fc2cfa55a816714              # double 0.14696185034954878
	.quad	0x3fef0564a68f7fbc              # double 0.96940834552150745
	.quad	0x3fefac0f89465bc6              # double 0.98975350200168388
	.quad	0x3fe7f48cc7f0d83a              # double 0.74860228587090849
	.quad	0x3fee6f110f80a52f              # double 0.95105793979488407
	.quad	0x3fbd8243447de1e0              # double 0.11526890203629803
	.quad	0x3fefa2290be36129              # double 0.9885449630919868
	.quad	0x3fda6a12cf9a6b00              # double 0.41272421144246607
	.quad	0x3fc484152ee00254              # double 0.16028084553546995
	.quad	0x3fec44395f486426              # double 0.88332813844602209
	.quad	0x3f9cd98a2ccbd280              # double 0.028173598274366274
	.quad	0x3fd01002e0a6abbc              # double 0.25097724855975989
	.quad	0x3fe9fb3178ea7e7c              # double 0.81191323868183884
	.quad	0x3fd1d3d4737941dc              # double 0.27855407025074697
	.quad	0x3fe35c4e247a20ec              # double 0.60501772999216774
	.quad	0x3fdc72eab45d4c8c              # double 0.44451396573749302
	.quad	0x3fe2274af945034d              # double 0.56729649243798408
	.quad	0x3fe9a5cb590fd173              # double 0.80148856539612578
	.quad	0x3fd239d47e09b53c              # double 0.28477966602698124
	.quad	0x3fea3179a390c918              # double 0.81853944727325523
	.quad	0x3fed1b9d16959429              # double 0.90962080393785982
	.quad	0x3fd6597c2ef48ede              # double 0.34921173654059412
	.quad	0x3fe067a843b71ef5              # double 0.51265347695968322
	.quad	0x3fed9618006ae478              # double 0.92457199174454185
	.quad	0x3fcc3b031f40b764              # double 0.22055090929046195
	.quad	0x3fca62842cb1b904              # double 0.20613147909484308
	.quad	0x3fe4ddd0f6f68527              # double 0.65207718119578295
	.quad	0x3fe38a54ce3ceef2              # double 0.6106361415945385
	.quad	0x3f95fb647e91b320              # double 0.021466798997084813
	.quad	0x3fb04bd5f68d9338              # double 0.063657162374124776
	.quad	0x3feaa8418ff30144              # double 0.83303907504163321
	.quad	0x3fe3d0b996989745              # double 0.61922912038128486
	.quad	0x3fbbd948b4428840              # double 0.10878424073101289
	.quad	0x3fc32e25c9c501c0              # double 0.14984581329373547
	.quad	0x3fdc99c922114238              # double 0.44688633276840362
	.quad	0x3fc831d1a380be98              # double 0.18902035220661584
	.quad	0x3fc90ba8900f7a18              # double 0.19566828760339727
	.quad	0x3fed0214d4cb0912              # double 0.90650407372621289
	.quad	0x3fcf2f299546b12c              # double 0.24362678326486653
	.quad	0x3fcafa22030dc60c              # double 0.21075844906913266
	.quad	0x3fd18680b6c77502              # double 0.27383439874195414
	.quad	0x3fe6a5ced13fc498              # double 0.70774021977389889
	.quad	0x3fd2b113f15f703c              # double 0.29205797740519635
	.quad	0x3fe0bc9eb718f38d              # double 0.52302490006660352
	.quad	0x3feb5c0eb032d371              # double 0.85498747266556852
	.quad	0x3fcc5aa82b262de4              # double 0.22151662928477756
	.quad	0x3fdbcc4734bdd19c              # double 0.43434314871344681
	.quad	0x3fdcbc2ab553464e              # double 0.4489847918276596
	.quad	0x3fd1e72b726d5da2              # double 0.27973447966129517
	.quad	0x3fe4f4f9ec4f5384              # double 0.6549043288638221
	.quad	0x3fd6e2807d66ff30              # double 0.3575745796806471
	.quad	0x3f9084766329e1c0              # double 0.016130304148164631
	.quad	0x3fde66cd114e897e              # double 0.47502447786441582
	.quad	0x3fb446ae40b02fc0              # double 0.079203501503967821
	.quad	0x3fcf635d38493538              # double 0.24521985290849968
	.quad	0x3fe8fda647c3a6ea              # double 0.78096307770212303
	.quad	0x3f824b4b8d5b3c80              # double 0.0089326765550181708
	.quad	0x3fd2595a66dbbb88              # double 0.28670368237265409
	.quad	0x3fd733780962eefa              # double 0.36251641194006334
	.quad	0x3fe5117ab7bd5c3e              # double 0.65838371168764076
	.quad	0x3fe9e50ee218f766              # double 0.80921119842217304
	.quad	0x3fdbec99b4abaa18              # double 0.43631594318017752
	.quad	0x3fe3844069a4dba8              # double 0.60989399560536572
	.quad	0x3fedef2f83cb5e4f              # double 0.9354474615201499
	.quad	0x3fd4c33ff8475aae              # double 0.32441710706681703
	.quad	0x3fc3eeedcdb6e85c              # double 0.15572903198864452
	.quad	0x3fe493274d0ec1de              # double 0.64296307611771986
	.quad	0x3fe0c85317948976              # double 0.52445368390571789
	.quad	0x3fe589807ca7e440              # double 0.67303490015832068
	.quad	0x3fa7c2c032d38980              # double 0.046407705501922969
	.quad	0x3fb319592759c820              # double 0.074605533701998628
	.quad	0x3fef65f7c0ecf480              # double 0.98119723969251993
	.quad	0x3fda7a007804e2b8              # double 0.41369640083898274
	.quad	0x3feaaa14c1374ad9              # double 0.83326184976098283
	.quad	0x3fd819c53c22db5c              # double 0.37657290337249605
	.quad	0x3fdc8959d7503b30              # double 0.44588323618602299
	.quad	0x3fc5ac002b9c8d68              # double 0.16931154374570245
	.quad	0x3fe33c5dce1d0be3              # double 0.60111894852195424
	.quad	0x3fdbc5f65ccb6cf0              # double 0.43395766317344364
	.quad	0x3fd9f0ce0b2aa940              # double 0.40532256212704354
	.quad	0x3fc5b3b966a7676c              # double 0.16954724800489929
	.quad	0x3fb818463b98ada0              # double 0.094120397138502287
	.quad	0x3fdfa660a75d8498              # double 0.49452987999218001
	.quad	0x3fcd8b72311950d4              # double 0.23081805608183592
	.quad	0x3fbf64a5b9ff6e80              # double 0.12262950697862074
	.quad	0x3fdd3979926538c8              # double 0.45663298889565995
	.quad	0x3feabc98edbd9c5f              # double 0.83552214082454757
	.quad	0x3fb2a00fadb37920              # double 0.072754840762602857
	.quad	0x3fc1cf7d883b8668              # double 0.13914460327127931
	.quad	0x3fedb5e1ef95de25              # double 0.92845246118571778
	.quad	0x3fcca6e41f57e76c              # double 0.22384311228216391
	.quad	0x3fe12e6936cefcc2              # double 0.53691540436548046
	.quad	0x3fd2b450fcfafac0              # double 0.292255637217675
	.quad	0x3fc1637eeb4aa1d0              # double 0.13584887017101588
	.quad	0x3f76f8026583c780              # double 0.0056076139082835708
	.quad	0x3fea8894454366f6              # double 0.82917226341234485
	.quad	0x3fce1fa129f9115c              # double 0.23534025716265716
	.quad	0x3fe4ce53b1cc40b3              # double 0.65018639303345649
	.quad	0x3fb0e4113570b758              # double 0.06598002962775007
	.quad	0x3fd6eb7ae2eaaf08              # double 0.35812256011807664
	.quad	0x3fec1d5a822a81ff              # double 0.87858319685989261
	.quad	0x3fef5f82fe57b0b1              # double 0.98040914226796449
	.quad	0x3fe6ec945bda2d3e              # double 0.71637933673756726
	.quad	0x3feed5c7dead4209              # double 0.96359628192482305
	.quad	0x3fe51ef5a7973df2              # double 0.66002924664092988
	.quad	0x3f94b4607613e900              # double 0.020219332892318143
	.quad	0x3fe8fc9ebba1b0f6              # double 0.78083740851209771
	.quad	0x3fd4b3a379df045c              # double 0.32346426869850631
	.quad	0x3fe8aaaec8b6113e              # double 0.77083529664427153
	.quad	0x3fdea6531a5d5276              # double 0.47890164923345624
	.quad	0x3fec377d81894226              # double 0.88177371311218589
	.quad	0x3fedd1a23674acb7              # double 0.9318400443638869
	.quad	0x3fe6bcf53581c129              # double 0.71056614351804115
	.quad	0x3fe821425a2889b8              # double 0.75405995949795734
	.quad	0x3fd68df4de8df228              # double 0.3524143384345586
	.quad	0x3fb4f08d54797470              # double 0.081795533298149925
	.quad	0x3fcd1e7fbf5b4448              # double 0.22749325603084203
	.quad	0x3feacc30e9feea19              # double 0.83742566778466021
	.quad	0x3fe5c58638b07442              # double 0.68036185333370036
	.quad	0x3fd81e280d00d6c8              # double 0.37684060354090976
	.quad	0x3fe068a79a17cbee              # double 0.51277523132591596
	.quad	0x3fd15e4e57205572              # double 0.27138098247936349
	.quad	0x3fe46e576e07f9f7              # double 0.63846942415676622
	.quad	0x3fc192db2200cc18              # double 0.13729418907459556
	.quad	0x3fc785f7f0e42730              # double 0.18377589475886102
	.quad	0x3fe1e6cc1cbae39f              # double 0.55942350016913511
	.quad	0x3fd290906680f99e              # double 0.2900734902395018
	.quad	0x3fd9589c8084b308              # double 0.39603340674038678
	.quad	0x3fdeeae7cabc96c0              # double 0.48308749006751484
	.quad	0x3fd87efb11180bac              # double 0.38275028867081562
	.quad	0x3fe50ab4977d3724              # double 0.65755681598395599
	.quad	0x3fe37d8e310a6eb7              # double 0.60907659128448344
	.quad	0x3fd138e0b9aa9a46              # double 0.26909654742704381
	.quad	0x3fe406e0585d4ea5              # double 0.6258393979901099
	.quad	0x3fd3e8cfc2db2e9c              # double 0.31108469036983322
	.quad	0x3fc187c7aa671f0c              # double 0.13695617504549096
	.quad	0x3fe3336ad5df9747              # double 0.60002652904652443
	.quad	0x3fe4374bdc489df9              # double 0.63175004028465687
	.quad	0x3fa6eaa9aaf5d3a0              # double 0.044759084815189754
	.quad	0x3fb67672dc5d7028              # double 0.087744883346602465
	.quad	0x3fd3c8b6cc12c414              # double 0.30912561348947176
	.quad	0x3fece590aa46057d              # double 0.90302308327242964
	.quad	0x3fdf0bb7d9d8b2c0              # double 0.48509022020406789
	.quad	0x3fe9291b47403991              # double 0.7862678901308745
	.quad	0x3fc83126462aa11c              # double 0.18899992395496035
	.quad	0x3fddf174476725f6              # double 0.46786219571057985
	.quad	0x3fe6e2e2202365a4              # double 0.715195715684946
	.quad	0x3fdddf37c4ff36a2              # double 0.46674913633328619
	.quad	0x3fe20752c68a2016              # double 0.56339396264320629
	.quad	0x3fddd082cb40e8e8              # double 0.46585149620990629
	.quad	0x3fdf63f356e80300              # double 0.49047549712126681
	.quad	0x3fd2e793908c5e2a              # double 0.29538430324598386
	.quad	0x3fa97c844d875dc0              # double 0.049778112853967382
	.quad	0x3f9d21dc34719760              # double 0.028449478817854312
	.quad	0x3fd4e7c7a0be7b10              # double 0.32664671609556795
	.quad	0x3fdf2154396fc522              # double 0.48640924080889836
	.quad	0x3fefc76145191e6b              # double 0.99308837409712447
	.quad	0x3fb9084636c03678              # double 0.097782505385305529
	.quad	0x3feb71f24a4a04a9              # double 0.85765947827907951
	.quad	0x3fec2ebace5ab485              # double 0.88070431045129338
	.quad	0x3fee52d89ce2c7c4              # double 0.94761305467385925
	.quad	0x3fd19ee38569412c              # double 0.2753227999537724
	.quad	0x3feb0dad64e41046              # double 0.84541959481476492
	.quad	0x3fd8ece9bbfc200c              # double 0.38946002347847819
	.quad	0x3fd8a2dc6fc392e2              # double 0.38494025148820132
	.quad	0x3fd5c36cbf6e1ae6              # double 0.34005278295846464
	.quad	0x3fe9d0bab05bab01              # double 0.80672964520394441
	.quad	0x3fd0265cc714899a              # double 0.2523414558546847
	.quad	0x3fe496997c9ec587              # double 0.64338373508341895
	.quad	0x3fc90c9f4720d338              # double 0.19569769833619843
	.quad	0x3fd040812bb60b32              # double 0.25393704670584605
	.quad	0x3fdcf01e40f316b8              # double 0.45215565054636953
	.quad	0x3fe0ecafcb34b7f6              # double 0.52889241875322912
	.quad	0x3fe9445f20a9bc86              # double 0.78959614161966907
	.quad	0x3fe14a4594a8136e              # double 0.54031638178331121
	.quad	0x3fe2eb210dc084d7              # double 0.59120228467886704
	.quad	0x3fe2731a62da9722              # double 0.57655066783329212
	.quad	0x3fea74560abdf3d9              # double 0.82670118425414352
	.quad	0x3fe1a9032a763e5b              # double 0.55188139241540612
	.quad	0x3fb88de1ca4ce668              # double 0.095914947404617146
	.quad	0x3fe480fa253ef36f              # double 0.64074427866544947
	.quad	0x3fcc912fe47831b8              # double 0.22318075805413939
	.quad	0x3fe5402451ad4418              # double 0.66407981827262841
	.quad	0x3fe2e1312ded09ac              # double 0.58998927087696051
	.quad	0x3fe766b35565daad              # double 0.7312866847922429
	.quad	0x3fdea78017fbd9ee              # double 0.47897341100852386
	.quad	0x3fc1c169b8b54338              # double 0.1387149955649194
	.quad	0x3fe9a27263df67a9              # double 0.80107993608838968
	.quad	0x3fdd7ef9409f19c2              # double 0.46087485609714574
	.quad	0x3fdbc4067f85088c              # double 0.43383943989841423
	.quad	0x3fe172ace324e0f8              # double 0.54524845470498828
	.quad	0x3fe0ebccc8943091              # double 0.52878417182502535
	.quad	0x3fd4126bdabcf70e              # double 0.31362434731623601
	.quad	0x3fcfcdf9051bdf38              # double 0.24847328900772836
	.quad	0x3fc472bf8f1dee78              # double 0.1597518395245634
	.quad	0x3fbbebc4c0385b48              # double 0.10906629269480306
	.quad	0x3fc2de7d75232d94              # double 0.14741485805130294
	.quad	0x3fccde5b0b1a3234              # double 0.22553575555902372
	.quad	0x3fe11de792c3fcc2              # double 0.53490046181823225
	.quad	0x3fe8cebe964a7c76              # double 0.77523736337378923
	.quad	0x3fe453de508addd0              # double 0.63523784380861947
	.quad	0x3fabe13cb3c8d2e0              # double 0.054452797838541178
	.quad	0x3fdd4c2ddb304562              # double 0.45777460484631238
	.quad	0x3fba956a4cf4aeb0              # double 0.10384239558032493
	.quad	0x3fe4354e9aff8ae2              # double 0.6315072085675093
	.quad	0x3fc2076f71d1b0d4              # double 0.14085190827916583
	.quad	0x3fd4b4035af4a230              # double 0.32348712808974067
	.quad	0x3fc984cb3946c268              # double 0.19936504646968278
	.quad	0x3fd33e75a2b771d4              # double 0.30068722620287969
	.quad	0x3fe244a5ef6cd6f8              # double 0.57087990534520738
	.quad	0x3fdc93d8dd8254c2              # double 0.44652387267826665
	.quad	0x3fe08ce31a11e9d9              # double 0.51719813434402362
	.quad	0x3fc14e88c41d5974              # double 0.13520917488012751
	.quad	0x3f8902ea28b35ec0              # double 0.012212590567670545
	.quad	0x3fe023a86c14d16e              # double 0.50435277089722574
	.quad	0x3fc25ce159ee6210              # double 0.14345948115511975
	.quad	0x3fe4818f1180011e              # double 0.64081529062244491
	.quad	0x3fe56f21d00bc101              # double 0.66981592782943278
	.quad	0x3fcd18213edc8fe4              # double 0.22729888505375506
	.quad	0x3fd1753d8fe123ea              # double 0.27278079081275897
	.quad	0x3fe7b684f9548ec6              # double 0.74103020379376328
	.quad	0x3f9d67db564004a0              # double 0.028716494693075689
	.quad	0x3fd97409f6a0981c              # double 0.39770745358180348
	.quad	0x3fe3108279f1aea3              # double 0.59576534096909872
	.quad	0x3fdb97fcdf45be3e              # double 0.43115159801434177
	.quad	0x3fe7253345158181              # double 0.72329104893655949
	.quad	0x3fe6c3d8e62b1c76              # double 0.71140713648573128
	.quad	0x3fc751748f027994              # double 0.18217331869977882
	.quad	0x3fcd5c17be193430              # double 0.22937294752264981
	.quad	0x3fee5a4f7c5bbeb0              # double 0.94852422989602836
	.quad	0x3fe2cb27fb0ab3a1              # double 0.58729933768846732
	.quad	0x3fc721d6c4c52a68              # double 0.18072018249434341
	.quad	0x3fed2ab399594a68              # double 0.91146259261070117
	.quad	0x3fe8be92cd20423a              # double 0.77326335967706616
	.quad	0x3fea0cd1c6e65d1c              # double 0.81406487319592057
	.quad	0x3fdc2d7e09a5f608              # double 0.44027663175788279
	.quad	0x3fe2b4b9b647c779              # double 0.58456121064794708
	.quad	0x3fa1ad3b9480a440              # double 0.034524785878894182
	.quad	0x3fc53a65fde83e74              # double 0.16584467790424962
	.quad	0x3fc51df120c3dd48              # double 0.16497625446184316
	.quad	0x3fda1fac4a81a02a              # double 0.40818316722880132
	.quad	0x3f7d37d5efbc3b00              # double 0.0071333271878433191
	.quad	0x3fc947017bd577ac              # double 0.19747942492079795
	.quad	0x3fe1a41a8b361a2d              # double 0.5512821883174347
	.quad	0x3fecfa4c2820a31a              # double 0.90555389249229568
	.quad	0x3fe1ed53872fdf6a              # double 0.56022049335204582
	.quad	0x3fb76dd5b2c959a8              # double 0.091519695424131187
	.quad	0x3fc2aae0988adfbc              # double 0.14583976219523531
	.quad	0x3fea8de88e3d5265              # double 0.82982280522498952
	.quad	0x3fed48b98c36e187              # double 0.91512753854390005
	.quad	0x3fd70326a01344ee              # double 0.35956731445646894
	.quad	0x3fb0c2e53ca68970              # double 0.06547386866308158
	.quad	0x3fe4a10e754d91c0              # double 0.6446602145265885
	.quad	0x3fce5858c1f31ad0              # double 0.23707112760731386
	.quad	0x3fef59e83f0e2de6              # double 0.97972500148301545
	.quad	0x3fbc584b7020c9f8              # double 0.11072226989271161
	.quad	0x3fe959cd85c47f1d              # double 0.79221225859143696
	.quad	0x3fa89914233d6880              # double 0.048042897512190486
	.quad	0x3fe9b806687ad1bd              # double 0.80371399313167269
	.quad	0x3fe50cd5d1c4ce60              # double 0.65781680078948668
	.quad	0x3fe4778f8c7422eb              # double 0.63959481651644745
	.quad	0x3fe76ab8fc80c925              # double 0.73177766148572643
	.quad	0x3fadc18bbfc2f060              # double 0.058117262991317586
	.quad	0x3fec3b6ad03f8167              # double 0.88225308106852374
	.quad	0x3fb453fb4b3e6a40              # double 0.079406457777090544
	.quad	0x3feb8239870b10c9              # double 0.85964657188062532
	.quad	0x3fc055f7dfb6783c              # double 0.1276235430095215
	.quad	0x3fd34f4a863f1826              # double 0.30171454534536435
	.quad	0x3fe5dcbf64346be2              # double 0.68319673129314773
	.quad	0x3fe50bd8d81677b5              # double 0.65769617275849745
	.quad	0x3fe3d9ad85f3f254              # double 0.62032200014761907
	.quad	0x3fe14e6a8dcbdea7              # double 0.54082229323008313
	.quad	0x3fdba8d0427774d0              # double 0.43217855921632253
	.quad	0x3feb1a1df17f3a91              # double 0.84693810622578003
	.quad	0x3fe5c586d512bc40              # double 0.68036214462143363
	.quad	0x3fe271581f39df3c              # double 0.57633596514549579
	.quad	0x3fe515f626642422              # double 0.65893085001255636
	.quad	0x3fcd02e81e77f0f4              # double 0.22665120589943621
	.quad	0x3fe9241d2b07474b              # double 0.78565843967428728
	.quad	0x3fec9a088e01b40d              # double 0.89380290733027012
	.quad	0x3fe28a2a5fff26e6              # double 0.57936590909340846
	.quad	0x3fdbdcb0b52adc22              # double 0.43534486477023127
	.quad	0x3fef71e8d0746f17              # double 0.98265495981056261
	.quad	0x3fe40285b40c2379              # double 0.62530789533148756
	.quad	0x3fdf55d4c5c4fce8              # double 0.48961371720720459
	.quad	0x3fe19ed7c8e2d415              # double 0.55064000354343767
	.quad	0x3fe60cf80a45b40e              # double 0.6890831184988444
	.quad	0x3fd9043925253d1c              # double 0.39088276507841768
	.quad	0x3feec3bb9293fff9              # double 0.96139315250911672
	.quad	0x3fe4d9ee6558c2e6              # double 0.65160293382913603
	.quad	0x3fe12d58be18757d              # double 0.53678547981296243
	.quad	0x3fea8e82a086335e              # double 0.82989627220522855
	.quad	0x3feb5d2fb96aa079              # double 0.85512529577410057
	.quad	0x3fc3613e1073ea58              # double 0.15140510371550664
	.quad	0x3fe74f0b8180f418              # double 0.72839904111572462
	.quad	0x3fc8fe46921bf990              # double 0.19525987753145246
	.quad	0x3fe4bcde76979ff8              # double 0.64805529749446489
	.quad	0x3fcdded294340868              # double 0.23336250530707336
	.quad	0x3fea3bcc85ce012b              # double 0.81979967244845875
	.quad	0x3fe94e7aeee2156b              # double 0.79083010346282145
	.quad	0x3fcb24086c581acc              # double 0.21203713693849691
	.quad	0x3fee22fd144e6810              # double 0.9417710682494107
	.quad	0x3f9ea6182be19d20              # double 0.029930474928190454
	.quad	0x3fe566c041cee5ac              # double 0.66879284718668464
	.quad	0x3fb1d455c924d190              # double 0.069646226508501607
	.quad	0x3f85a980c3f8b180              # double 0.010577207546781819
	.quad	0x3fe3512f1a70efe3              # double 0.60366015590943467
	.quad	0x3fec1065cbe597f9              # double 0.87700166534045743
	.quad	0x3fda8b2bfec4c08c              # double 0.41474437598936542
	.quad	0x3fdd524cae4bf8a2              # double 0.4581481649510214
	.quad	0x3fa47a8fd5764e00              # double 0.039997572715176233
	.quad	0x3fda8667f272b040              # double 0.41445349384844477
	.quad	0x3fd65d97cd33efe2              # double 0.34946246184676799
	.quad	0x3fef3632a11b85ff              # double 0.97536593881903843
	.quad	0x3fdaba1229fa4e3c              # double 0.41760686969175587
	.quad	0x3fa3b05431e77a20              # double 0.038454657642194912
	.quad	0x3fdd48114e142bbe              # double 0.45752365708238674
	.quad	0x3fc134b70657abec              # double 0.13442123231592917
	.quad	0x3f7ce95e2488bf80              # double 0.0070584943246528864
	.quad	0x3fe0408db038603b              # double 0.50788006227504157
	.quad	0x3fe96db5b4bfaa07              # double 0.794642308258802
	.quad	0x3fdb6c45ec2bab82              # double 0.42848346770795598
	.quad	0x3fd6e22d554d6ce0              # double 0.35755475359264999
	.quad	0x3fee57bbb13312f5              # double 0.94820961579588803
	.quad	0x3feb1820cc772d3f              # double 0.84669532713579787
	.quad	0x3fdde99081047d5a              # double 0.46738064383858602
	.quad	0x3fe2f553b1267d30              # double 0.59244713401486671
	.quad	0x3fdde00d4103c090              # double 0.46680003499114608
	.quad	0x3fdcccec32905bf6              # double 0.45000748575097249
	.quad	0x3f9e2771632c2260              # double 0.029447337797167683
	.quad	0x3fe7634d7adc4e21              # double 0.73087190624432108
	.quad	0x3fe6dc18716c584f              # double 0.71436712410901204
	.quad	0x3fdee876ea372e64              # double 0.48293850777256453
	.quad	0x3fce66b9183d178c              # double 0.23750985797431345
	.quad	0x3fe93ff01d2c9fd0              # double 0.78905492494686236
	.quad	0x3fa250e1fa884220              # double 0.035773336250830789
	.quad	0x3fd5763eac23e8f8              # double 0.33534209070752707
	.quad	0x3fccd04e198046dc              # double 0.22510696644945127
	.quad	0x3fe7024caf2ed6ed              # double 0.71903070655272716
	.quad	0x3fb5c83eaf237118              # double 0.085086744078072818
	.quad	0x3fe76ae58493122b              # double 0.73179889577347035
	.quad	0x3fb5cf3efa0a3638              # double 0.085193573040862058
	.quad	0x3fea7c0f3113eb0c              # double 0.82764396272190898
	.quad	0x3fde4f208a8d35c0              # double 0.47357953577451539
	.quad	0x3fe4416306e08637              # double 0.63298179000066213
	.quad	0x3fd06d813db37738              # double 0.25668364549152356
	.quad	0x3fed162573b4bc6d              # double 0.90895340536907343
	.quad	0x3fdfe34c34a82540              # double 0.49824814932124539
	.quad	0x3fd5cd313a8d74b8              # double 0.34064894407294899
	.quad	0x3fe50919e58af889              # double 0.6573609812983402
	.quad	0x3fe5beda50eccba6              # double 0.67954746061001425
	.quad	0x3fec928d438ff294              # double 0.89288962550888806
	.quad	0x3fe50010a48f0521              # double 0.65625793590894343
	.quad	0x3fe9360053631468              # double 0.78784195219544717
	.quad	0x3fefc82f0c71a087              # double 0.993186497024923
	.quad	0x3fecebf2b115f69f              # double 0.90380224787778107
	.quad	0x3fe0edcc44dfda66              # double 0.52902806713138939
	.quad	0x3f95dbe6db235940              # double 0.021346671223761549
	.quad	0x3fc9ff1135ba13b4              # double 0.20309653399831762
	.quad	0x3fd08b436bc4ede0              # double 0.25849996113148954
	.quad	0x3fe3a76b01f46c84              # double 0.61418676740449074
	.quad	0x3fe9b9a30b65ac34              # double 0.80391075349814977
	.quad	0x3fefd02472178233              # double 0.99415800365028983
	.quad	0x3fd67ed740ac8620              # double 0.35149174991429
	.quad	0x3fde2d5d234877da              # double 0.47151878781903422
	.quad	0x3fc5ba27f6471990              # double 0.16974353337554904
	.quad	0x3fe352bf6dc1fd49              # double 0.60385104596199668
	.quad	0x3feb1b7071c05ded              # double 0.84709951607777401
	.quad	0x3feac8cb7b225659              # double 0.8370110897983053
	.quad	0x3fc6eda5c0fc4c20              # double 0.17912742541429427
	.quad	0x3feaba7993de38b8              # double 0.83526305084685415
	.quad	0x3fe578609698a07c              # double 0.67094449437446668
	.quad	0x3fd0f3687f11a75e              # double 0.26485645684316761
	.quad	0x3f70ef24a5c56f00              # double 0.0041343146843606515
	.quad	0x3fe725fff9c2108d              # double 0.72338866024849013
	.quad	0x3feae6a0f77813b2              # double 0.84065292676733905
	.quad	0x3f9a6ca6a149ad80              # double 0.025805095285631463
	.quad	0x3fec05944da85cf5              # double 0.87568106811059343
	.quad	0x3fe166c001615430              # double 0.54379272718018079
	.quad	0x3fdc7b0f6e516140              # double 0.44501100323897802
	.quad	0x3fa8b5b5567a28d0              # double 0.048261324697777774
	.quad	0x3fe2e77ae02d3806              # double 0.59075683388232458
	.quad	0x3fd9b2a23c4828d0              # double 0.40152793776418338
	.quad	0x3fe96f0f03c65739              # double 0.79480696427592712
	.quad	0x3fe1f4d8c97f8967              # double 0.5611385283957987
	.quad	0x3fedddf6b0b6c0ff              # double 0.9333451701586738
	.quad	0x3fc05d6e884a530c              # double 0.12785131125260596
	.quad	0x3fe2543db8e28858              # double 0.57278333769159939
	.quad	0x3fe9c38b6173364c              # double 0.80512017281734804
	.quad	0x3fe5641ecc6ac5c6              # double 0.6684717171212291
	.quad	0x3fefa3e5b4527b2f              # double 0.98875699252298498
	.quad	0x3feb08e20ab61ee1              # double 0.84483434764930732
	.quad	0x3fdd1f3565c623da              # double 0.4550298208128517
	.quad	0x3fed22b680288b5a              # double 0.91048741370137098
	.quad	0x3fdf02ed6c2dc2a4              # double 0.48455367626506018
	.quad	0x3fee80b11b6a3b5a              # double 0.95320945124135936
	.quad	0x3fcc46f77ba148e0              # double 0.22091573273298248
	.quad	0x3fb906802cc87f00              # double 0.097755442555804705
	.quad	0x3fd7e88bb4c9b97e              # double 0.37356846480442829
	.quad	0x3fede9c6b71dc3f2              # double 0.9347871376504584
	.quad	0x3fe97424c5740dd1              # double 0.79542769017319348
	.quad	0x3fe624f5f16d6770              # double 0.69201180604725998
	.quad	0x3fc6f95cc53c0a7c              # double 0.17948493605225113
	.quad	0x3fd14e01a3fe4680              # double 0.27038613333670725
	.quad	0x3fdfd1228527b052              # double 0.49713957789822871
	.quad	0x3fca0e67a47eea2c              # double 0.20356460124988141
	.quad	0x3fec5672cbf661a6              # double 0.88555278622066136
	.quad	0x3fe863213166a2de              # double 0.76210078858010966
	.quad	0x3fb8327ca78e9ea0              # double 0.094520369441506435
	.quad	0x3feae776129d3da1              # double 0.8407545436438576
	.quad	0x3fe199d8be881000              # double 0.55003010953123521
	.quad	0x3fe24990b7b14457              # double 0.57148013951713039
	.quad	0x3fcb887ec410fb10              # double 0.21510300229598345
	.quad	0x3fcedf6159cd93cc              # double 0.24119202504075898
	.quad	0x3feb7a5dc89b3627              # double 0.85868729763905527
	.quad	0x3fe1af8e667697db              # double 0.55268020641664906
	.quad	0x3fd902841435f78c              # double 0.39077856038772363
	.quad	0x3fce00f69cbc1dc8              # double 0.23440439847057193
	.quad	0x3febc41953a2ff8e              # double 0.8676878579644709
	.quad	0x3fc33adbd20e9650              # double 0.15023372418106584
	.quad	0x3fd0b27f5143eaaa              # double 0.2608946126562538
	.quad	0x3fe1467cbce20ee7              # double 0.53985440150469521
	.quad	0x3fec09f85e3576e5              # double 0.87621706390538334
	.quad	0x3feaca37f886513f              # double 0.83718489208198565
	.quad	0x3fd44af63d47f276              # double 0.31707530960537811
	.quad	0x3fa9c82ff77c7020              # double 0.050355433426574558
	.quad	0x3fd07f1668916032              # double 0.25775680743891194
	.quad	0x3fe554fb0cb1b622              # double 0.6666236160214718
	.quad	0x3feb0fc8e674c85b              # double 0.84567685137723048
	.quad	0x3fe6c3041546ae11              # double 0.71130565791594524
	.quad	0x3fe43fb1c834fcc5              # double 0.63277520277906574
	.quad	0x3fe62029ffb7a757              # double 0.69142627663425571
	.quad	0x3fe65d3ecaffebd9              # double 0.69888248108270112
	.quad	0x3fe297865a1229ac              # double 0.58099668113691427
	.quad	0x3feb55da6691f37c              # double 0.85423011811472759
	.quad	0x3fc99c2c4d1f56d4              # double 0.20007852330916498
	.quad	0x3fe1f54f391bfe62              # double 0.5611950030724524
	.quad	0x3feeef258b75912b              # double 0.96669270742544222
	.quad	0x3fd2d8217f160832              # double 0.29444157992122932
	.quad	0x3fd506321b73c632              # double 0.32850315743334868
	.quad	0x3fa3229eb3273200              # double 0.037373504037166327
	.quad	0x3fe8d77c9c7e7247              # double 0.77630453648777908
	.quad	0x3fe2e70ab699ea8b              # double 0.59070335068038682
	.quad	0x3f875ebd0c7d0bc0              # double 0.011411168044679232
	.quad	0x3fd787dd7ba82a94              # double 0.36766755176419363
	.quad	0x3fecbee359c4160b              # double 0.89830176861204458
	.quad	0x3fcdd8ded1dcffcc              # double 0.23318085906248454
	.quad	0x3fd0464319c04724              # double 0.25428845896486707
	.quad	0x3fee7447374c21e3              # double 0.95169411468765153
	.quad	0x3fe36acda2419d16              # double 0.60678750696834771
	.quad	0x3fc4ea234d75fe8c              # double 0.16339532167693382
	.quad	0x3fe627a2f3ae3f67              # double 0.6923384436977188
	.quad	0x3fb2e9f4e8b15408              # double 0.073882395562876124
	.quad	0x3fd3a6561f03dd9e              # double 0.30702736882036585
	.quad	0x3fe166ad54d5456b              # double 0.54378382271731363
	.quad	0x3fe388ad7c9aced0              # double 0.61043428742274308
	.quad	0x3fd70d6e790274d2              # double 0.36019479577391877
	.quad	0x3fdc00ddc541fd8e              # double 0.4375528742166005
	.quad	0x3fdb262e38e65d9a              # double 0.42420535618426813
	.quad	0x3f80c6f6a8096f80              # double 0.0081919927626399325
	.quad	0x3fea872d6c33547b              # double 0.82900115139877018
	.quad	0x3fd013969a16068c              # double 0.2511955742594203
	.quad	0x3fcc7885acb24d08              # double 0.22242804462857912
	.quad	0x3fd7f1a22cd9e5d4              # double 0.37412313823696519
	.quad	0x3fed4a4882335a3f              # double 0.91531777791789881
	.quad	0x3fc77d64cb5d7cf0              # double 0.18351421289387515
	.quad	0x3fd8c15aa328f056              # double 0.38680139478288333
	.quad	0x3fd325752c1bba24              # double 0.29916123683406881
	.quad	0x3f92b6db19c14c80              # double 0.01827566475578779
	.quad	0x3fed1011cb36b97e              # double 0.90821160974682846
	.quad	0x3fbe02d89f76c730              # double 0.11723092930949686
	.quad	0x3fecae861b9272ab              # double 0.89630418191116712
	.quad	0x3fe7f2f325e065f6              # double 0.74840695760502629
	.quad	0x3fd23e1dbf6682ba              # double 0.28504127208183727
	.quad	0x3fc3145c8cb6d170              # double 0.14905888434226311
	.quad	0x3fed9f67f737102e              # double 0.92570875438878431
	.quad	0x3fefcb92c86d7758              # double 0.99360026498809883
	.quad	0x3fec4bdae1023e04              # double 0.88425964304946136
	.quad	0x3fd94e06c18965a6              # double 0.39538735294407912
	.quad	0x3fd520247244b57a              # double 0.33008681448958266
	.quad	0x3fe005e04323787e              # double 0.50071728814124561
	.quad	0x3fbfc967d5c5eae8              # double 0.12416695565290647
	.quad	0x3fefc9106d7757a7              # double 0.9932939661036827
	.quad	0x3fe2ee142b726747              # double 0.59156235204429997
	.quad	0x3fd6c5b79d48e02a              # double 0.35581770286398984
	.quad	0x3feea36448afa507              # double 0.957445280041754
	.quad	0x3f952bd831601a40              # double 0.020675066007266318
	.quad	0x3feb50af9c53fbc8              # double 0.85359936268638936
	.quad	0x3fe254749ca881d9              # double 0.57280951115904621
	.quad	0x3fe7d49bc38eebe3              # double 0.74470318026521587
	.quad	0x3fee921c57d3c7f7              # double 0.95533578065646807
	.quad	0x3febc3c0710e4f89              # double 0.86764547425490079
	.quad	0x3fd4cbafec460b7a              # double 0.32493208001704199
	.quad	0x3feb3ead36700169              # double 0.85140095360115453
	.quad	0x3fc3b1116bc67d30              # double 0.15384118807285452
	.quad	0x3fe0a8ed18edc176              # double 0.52062086933987817
	.quad	0x3fe49adeeb403ae2              # double 0.643905124163066
	.quad	0x3fd9cdefe7e72eba              # double 0.40319440504820714
	.quad	0x3fc08c9f9b10593c              # double 0.12929148742177599
	.quad	0x3fe31b6d8e88efb4              # double 0.59709813917969834
	.quad	0x3fd0ada7ff0b67ec              # double 0.26059913546271107
	.quad	0x3fcfc4f449d6c454              # double 0.24819806676308309
	.quad	0x3fe1992d2a8f9118              # double 0.54994829476030116
	.quad	0x3feb7579657659d4              # double 0.85809011284691871
	.quad	0x3fc0d25c96140b84              # double 0.13141972854654338
	.quad	0x3febb05fcad2331d              # double 0.86528005231375327
	.quad	0x3fe80fd4ac9d352f              # double 0.75193246568384164
	.quad	0x3fc9d9262fe065d0              # double 0.20193936670038548
	.quad	0x3fef751498a6b379              # double 0.98304204764063662
	.quad	0x3feba97893fc4566              # double 0.86443737891583505
	.quad	0x3fc2e2117a3dbd1c              # double 0.14752405613715147
	.quad	0x3fde853cf12e6c28              # double 0.47688220551362059
	.quad	0x3fe748288e957f40              # double 0.72755840156967366
	.quad	0x3fab4177ff80d580              # double 0.053233861865389365
	.quad	0x3feb40cbc51b13b4              # double 0.85165966508122048
	.quad	0x3fdeb256adce04fa              # double 0.4796349236786025
	.quad	0x3fe1096a4b098385              # double 0.53239931731887735
	.quad	0x3fd28421601649e2              # double 0.28931459792616299
	.quad	0x3fc56422efe82188              # double 0.16711842264363619
	.quad	0x3feaa4e240df0cb7              # double 0.83262741727994338
	.quad	0x3fe5a48571d1e764              # double 0.67633316259819454
	.quad	0x3fdbca51d17b233a              # double 0.43422360856179731
	.quad	0x3fa65ecc7c6bdc20              # double 0.043692007244253483
	.quad	0x3fee4e9a5e0c674f              # double 0.94709509247625501
	.quad	0x3fe67a7552d3db0b              # double 0.70244852235086463
	.quad	0x3fdc3f63578a4e00              # double 0.44136889981129457
	.quad	0x3fc9bca238ee56e8              # double 0.2010691431029763
	.quad	0x3fe57bbdfcbea6f9              # double 0.67135524143415559
	.quad	0x3fe6dcfd45d47c6b              # double 0.71447623861957987
	.quad	0x3fcfbf9b0cfbbd5c              # double 0.24803484090760264
	.quad	0x3fe2e67ed60904c5              # double 0.59063665202861471
	.quad	0x3fe5d97f9f573380              # double 0.68280011292664256
	.quad	0x3fdadb7c3877a912              # double 0.41964631571194488
	.quad	0x3fae4f2791b107b0              # double 0.059197651419267472
	.quad	0x3feb123fffd152f7              # double 0.84597778286351299
	.quad	0x3fd808800e35913e              # double 0.37551881206151794
	.quad	0x3fd7b243bfb11402              # double 0.37025541038411813
	.quad	0x3fb4e2e6e87cd030              # double 0.081587249526649641
	.quad	0x3fdbe4572d75159a              # double 0.43581180037684819
	.quad	0x3fdea06492ba1f68              # double 0.47853960350811642
	.quad	0x3fc6f01ca87cd71c              # double 0.17920263506828682
	.quad	0x3fe1d2a6312c43f9              # double 0.55696401218494807
	.quad	0x3fe19c3678ee17d2              # double 0.5503189432063158
	.quad	0x3fec132c7f931275              # double 0.87734055439848524
	.quad	0x3fdf45f4f2b20dae              # double 0.48864482594236847
	.quad	0x3fd73ce7ffe7fa2e              # double 0.36309242239795736
	.quad	0x3fedce9b6e3d44cc              # double 0.93147059947127663
	.quad	0x3fe6173b9a51f813              # double 0.69033603802359023
	.quad	0x3fe45ec465896ead              # double 0.63656825858511967
	.quad	0x3fdc7fadf65bbc2c              # double 0.44529294069701808
	.quad	0x3fe40d6b9368805f              # double 0.62663821020761279
	.quad	0x3fdf19b341f3b3a0              # double 0.485943617254458
	.quad	0x3fe322361402876d              # double 0.5979261771028469
	.quad	0x3fcf448709840584              # double 0.24427879299768673
	.quad	0x3fc3cd1e8c4d42a4              # double 0.15469724512742744
	.quad	0x3faa443903a92890              # double 0.05130174798667142
	.quad	0x3fe3dea6fd754ccb              # double 0.6209292364459541
	.quad	0x3fb0b618eb5914a0              # double 0.065278584917069171
	.quad	0x3fd4df32ebd95626              # double 0.32612298042417576
	.quad	0x3fd6164513a85b5e              # double 0.34510924262706577
	.quad	0x3fed152c0573c4e3              # double 0.90883446755301767
	.quad	0x3fd2088d4a99a63a              # double 0.28177196774649682
	.quad	0x3fc60fa84875c8b4              # double 0.17235282457438006
	.quad	0x3fec38ae1a2bd638              # double 0.88191895591325586
	.quad	0x3fd4508f8399fa86              # double 0.31741702892023971
	.quad	0x3fa387f10c74f980              # double 0.03814652707159194
	.quad	0x3fd841e14bb144ea              # double 0.37902099983064252
	.quad	0x3fe65b809410ba4b              # double 0.69866970938694217
	.quad	0x3fefef1c36a81599              # double 0.99793825793374246
	.quad	0x3fd56f41237e0cca              # double 0.33491543260624879
	.quad	0x3feafe8a6b79bf2d              # double 0.84357186309168741
	.quad	0x3feb094e6d03d1a7              # double 0.84488602916694766
	.quad	0x3fe293eae0250e44              # double 0.58055633333464884
	.quad	0x3fcd0767c5d68134              # double 0.22678849372915411
	.quad	0x3fbc712cb373c6d0              # double 0.11110190755041605
	.quad	0x3fefdc85e127a020              # double 0.99566930747551296
	.quad	0x3fd4e4a65d931e98              # double 0.32645568025734795
	.quad	0x3feec573a1535b66              # double 0.96160298832806457
	.quad	0x3fc800e56d0b5eb4              # double 0.18752734970506924
	.quad	0x3fedbe65cd99da8a              # double 0.92949190288966688
	.quad	0x3fe06b27c7caadb0              # double 0.51308049222773455
	.quad	0x3feb5bd1230cde58              # double 0.85495812268977556
	.quad	0x3fec02a22c1b5f08              # double 0.87532147040016728
	.quad	0x3fe71cc2244cdea8              # double 0.72226054277321783
	.quad	0x3fe0f8bbc1fc2cdf              # double 0.53036296737391442
	.quad	0x3fe344ae04365b59              # double 0.60213375876160591
	.quad	0x3fd00253a9187778              # double 0.25014201653708978
	.quad	0x3fd5cc63c08640e2              # double 0.34059995461667658
	.quad	0x3fd466e59e71a826              # double 0.31878033135456219
	.quad	0x3fdce1e4f16f3d72              # double 0.45128749444571448
	.quad	0x3fbc77fe39bd68f8              # double 0.11120594892182456
	.quad	0x3feef509879ee821              # double 0.96741177071021777
	.quad	0x3fd5ef16aa0e5dc4              # double 0.34271780592959211
	.quad	0x3fe49b006ab4ba26              # double 0.64392109719284885
	.quad	0x3fde134bafcf18a6              # double 0.46992771309704506
	.quad	0x3fe2ad7dcecbff49              # double 0.58367815389645117
	.quad	0x3fd47d63bd776de8              # double 0.320153174425029
	.quad	0x3fc74e0e9bd58f44              # double 0.18206961258976595
	.quad	0x3fe0dafc1ab970bf              # double 0.52673154086689766
	.quad	0x3fd4e9d3ee39c394              # double 0.32677171959135731
	.quad	0x3fe34ad31d6447c2              # double 0.60288387051172543
	.quad	0x3fe12aeb44bb5e46              # double 0.53648913788033137
	.quad	0x3fea186745223f4b              # double 0.81547893049899167
	.quad	0x3feb867dadd2d8fe              # double 0.8601673502915046
	.quad	0x3fef63876fdf5948              # double 0.98089954233254506
	.quad	0x3fcfb3a775177a3c              # double 0.24767010896080588
	.quad	0x3fe7f9989cfdc985              # double 0.74921827947973496
	.quad	0x3fece75b32b80df6              # double 0.90324172884032694
	.quad	0x3fd11d5ddf5416be              # double 0.26741740044995399
	.quad	0x3fde9bb0a225ceb8              # double 0.47825256190047183
	.quad	0x3fd19452ca6a6e72              # double 0.27467794196284168
	.quad	0x3fd974d7ec33b24e              # double 0.39775655809970523
	.quad	0x3fc2498a7554b5c0              # double 0.14286928872154014
	.quad	0x3fe6c2de14e8b87b              # double 0.7112875374202895
	.quad	0x3fb8a5ec50a5e2e8              # double 0.096281785668803743
	.quad	0x3f9a0604e7c2e6a0              # double 0.025413586278523526
	.quad	0x3fbee013309b8938              # double 0.12060661255558081
	.quad	0x3fe8a3ccee2da7d7              # double 0.76999517935950734
	.quad	0x3fd074caeafc25c2              # double 0.25712845752476821
	.quad	0x3fca48ed19608b2c              # double 0.20535053004376758
	.quad	0x3fe9fc7b5d4aedba              # double 0.81207054349163532
	.quad	0x3fd11a3058173b0c              # double 0.26722344019519606
	.quad	0x3fab93c1defb23a0              # double 0.053861673802720889
	.quad	0x3fe7d2008d61aad0              # double 0.74438502896858871
	.quad	0x3fe6c5f6d99ae976              # double 0.71166555882454818
	.quad	0x3fe8f542f720e152              # double 0.7799391581275279
	.quad	0x3feed886bc9a2126              # double 0.96393143497792688
	.quad	0x3fe4355a13e2710b              # double 0.63151267894457541
	.quad	0x3fd635846f9c8770              # double 0.34701643847994657
	.quad	0x3fe3c5ebbf4fca6b              # double 0.61791026464045495
	.quad	0x3febdaeddce5536c              # double 0.87047474998199225
	.quad	0x3fdaa7d4084cb150              # double 0.41649342356210628
	.quad	0x3fce6c341410375c              # double 0.23767710666327957
	.quad	0x3fe20e993d199bf3              # double 0.56428205426789046
	.quad	0x3fbd08f545c0ddc0              # double 0.11341793969119518
	.quad	0x3fc055ef4b712e4c              # double 0.12762252029129895
	.quad	0x3fe20f67bd723d7a              # double 0.56438052178593456
	.quad	0x3fee9e6850f7e7a3              # double 0.95683685125481011
	.quad	0x3fca3c460a1c565c              # double 0.20496440404592675
	.quad	0x3fddcdb945e4e32a              # double 0.4656813795623288
	.quad	0x3fdddbf42e6afba0              # double 0.46654991658209077
	.quad	0x3fea48c64962eace              # double 0.82138361295013751
	.quad	0x3fe59388c5b0e567              # double 0.67425955401919857
	.quad	0x3fd1ad2e4168a4f8              # double 0.27619511020255016
	.quad	0x3fe750edbe80f3c3              # double 0.72862899024732319
	.quad	0x3fd50c9a15f60662              # double 0.3288941587889892
	.quad	0x3fdbbdf61a1e3daa              # double 0.43346931982611159
	.quad	0x3fe843cbcceaa451              # double 0.75827589056746991
	.quad	0x3fdbd801018cf24e              # double 0.43505883361266207
	.quad	0x3fd826d4a1da7a7a              # double 0.37737003141402392
	.quad	0x3feb4c3bd7fdb640              # double 0.8530558794570382
	.quad	0x3fb02daaff307828              # double 0.063196837713321075
	.quad	0x3fe25b91337f018a              # double 0.57367763574443242
	.quad	0x3fb2724f9d686ef8              # double 0.072056747369454999
	.quad	0x3fece2a4b7e4c16c              # double 0.90266643444742333
	.quad	0x3fbef7715f58d9c8              # double 0.12096317842301751
	.quad	0x3fe5c2d42a5ea9d2              # double 0.68003280902240193
	.quad	0x3fb5aa35801dbf80              # double 0.084628433016176174
	.quad	0x3fb5d5cc0e3533e8              # double 0.085293534725863318
	.quad	0x3fd692d5a068e19c              # double 0.35271206536301647
	.quad	0x3fee9db9bcc4fc59              # double 0.95675360554731548
	.quad	0x3fd2163bc02cf972              # double 0.28260701911121722
	.quad	0x3fe1ef5672d7878b              # double 0.56046602659283573
	.quad	0x3fda4111af3c9418              # double 0.41022150147392855
	.quad	0x3fec64ec8ecd442d              # double 0.88731983080845611
	.quad	0x3fe63206b9934a96              # double 0.69360672230898746
	.quad	0x3fd2e83bfd2010d4              # double 0.29542445868743283
	.quad	0x3fc9f344f274b904              # double 0.20273649061841337
	.quad	0x3fef6294dc7439e6              # double 0.98078387315200355
	.quad	0x3fec2cb3d53e9042              # double 0.88045684479994457
	.quad	0x3fca1d97391ffdbc              # double 0.20402803696923211
	.quad	0x3fd49923a49d660e              # double 0.32184687686603375
	.quad	0x3fcfdfc143d73240              # double 0.24901595890550432
	.quad	0x3fda5e6b3361e096              # double 0.41201286332899067
	.quad	0x3fe1383c773517a7              # double 0.53811476977056294
	.quad	0x3fbf4a10fb44de38              # double 0.12222391256806808
	.quad	0x3fc9f0b77ebb5c80              # double 0.20265859306411826
	.quad	0x3fe2c773b932114e              # double 0.58684717341433568
	.quad	0x3fd024bac0419270              # double 0.25224179053319684
	.quad	0x3fe87878043adee3              # double 0.76470566583790534
	.quad	0x3fe2614cd0154d06              # double 0.57437744752169873
	.quad	0x3fe8a148da910949              # double 0.76968805969981091
	.quad	0x3fb1e9e03d8a8bb8              # double 0.0699749136206681
	.quad	0x3fe30fc9d5da80cf              # double 0.59567729728953533
	.quad	0x3fedb9c1e0f2df0f              # double 0.92892545638366808
	.quad	0x3fe557d375af7313              # double 0.66697094903392651
	.quad	0x3fdaa405c75ad472              # double 0.41626114338152498
	.quad	0x3fdfb0fbde8f7d50              # double 0.49517723783897782
	.quad	0x3fec57e3b70a1147              # double 0.88572870015972505
	.quad	0x3fa29dad4f0bdde0              # double 0.036359229945386096
	.quad	0x3fe1a8ebbbaba7fb              # double 0.55187021879578368
	.quad	0x3fc2dbf2946f3f64              # double 0.14733726737767505
	.quad	0x3fceff8b726b7f40              # double 0.24217360579404534
	.quad	0x3fe4d14358d03f68              # double 0.65054480883007404
	.quad	0x3fdd4fbb24eedae6              # double 0.45799139601460437
	.quad	0x3fe3e87184286857              # double 0.62212444126204047
	.quad	0x3fb733145c1f87b0              # double 0.090623161784178618
	.quad	0x3fd993171711670e              # double 0.39960267307979869
	.quad	0x3fe7d645d3a57bc4              # double 0.74490634286109314
	.quad	0x3fd4d63823696284              # double 0.32557490785760757
	.quad	0x3feb2a86fa139be0              # double 0.84894131510815995
	.quad	0x3fd61380578da17a              # double 0.34494026708718872
	.quad	0x3fdd5de21871e17e              # double 0.45885517489616479
	.quad	0x3febb9836fd06a86              # double 0.86639568175026294
	.quad	0x3fcc669274f18954              # double 0.22188025198108596
	.quad	0x3fa3bb4ab2f95d10              # double 0.038538297984525127
	.quad	0x3fe35ca28caf7ab8              # double 0.60505797841673026
	.quad	0x3fbf98d483b3a478              # double 0.12342575278639056
	.quad	0x3fe08d5556b2193e              # double 0.51725260670426798
	.quad	0x3fe053174457cbbe              # double 0.51014293049080783
	.quad	0x3fc68740dc0b1398              # double 0.17600260490703756
	.quad	0x3fcbcff6e45e4bb8              # double 0.21728407049940102
	.quad	0x3fd161c5086199e6              # double 0.27159238642198458
	.quad	0x3fe1202d26dfc01d              # double 0.53517778008063355
	.quad	0x3faf19a2d569cc80              # double 0.060742462684083343
	.quad	0x3fea94cdb300e411              # double 0.83066449128739539
	.quad	0x3fea94cd9496194c              # double 0.83066443463102634
	.quad	0x3fea475bcd6a4fe3              # double 0.8212107669846741
	.quad	0x3fe865ec2605dde6              # double 0.76244170595503813
	.quad	0x3fd3e9ea3c37a176              # double 0.31115203743549757
	.quad	0x3fd53d3ca13a3bdc              # double 0.33186259980078403
	.quad	0x3fe6b149f3b167be              # double 0.70914170833861312
	.quad	0x3fd71c0daa69af90              # double 0.36108724252584867
	.quad	0x3fd28c28ab9116fc              # double 0.28980461840215788
	.quad	0x3fc9d0d076e48bf0              # double 0.20168500714598236
	.quad	0x3fd7afd5d6cf0a74              # double 0.37010713555733976
	.quad	0x3fec1bee3505bca2              # double 0.87840948444308631
	.quad	0x3fea7530300dde6f              # double 0.82680520425397031
	.quad	0x3fed69d31bf1dacc              # double 0.91916804750402425
	.quad	0x3fea9aba94cd43da              # double 0.83138779700140764
	.quad	0x3fe51147e7381aca              # double 0.65835948142997691
	.quad	0x3fee884225a0bdfd              # double 0.95413310383986494
	.quad	0x3fc3d0ac60c7d6a0              # double 0.15480570531479021
	.quad	0x3fd110bf3c84aecc              # double 0.26664715681066009
	.quad	0x3fde2e554c7f46b4              # double 0.47157795401026736
	.quad	0x3fe91278977c67be              # double 0.78350476824856918
	.quad	0x3fe8be0a5f3c474f              # double 0.77319830513645538
	.quad	0x3fde0671b177370a              # double 0.46914331751473581
	.quad	0x3fee188d36be9c40              # double 0.94049702350901753
	.quad	0x3fde87f43e6fc4d6              # double 0.47704797837566326
	.quad	0x3fe2d627a37ed287              # double 0.58864194805808345
	.quad	0x3fea9c101c4977f7              # double 0.83155065083314994
	.quad	0x3f820dfe289688c0              # double 0.0088157516609651542
	.quad	0x3fe0ba71be6bd23d              # double 0.5227593154109581
	.quad	0x3fedfe06766fa4ff              # double 0.93725894100239759
	.quad	0x3fbf5023c8da96b0              # double 0.12231658605250106
	.quad	0x3fe4137c595ed71e              # double 0.62737863021058948
	.quad	0x3fee40b888ca643d              # double 0.94540049282944205
	.quad	0x3fd1166206156ff6              # double 0.26699114412417602
	.quad	0x3fe49af366f9f786              # double 0.64391489136299707
	.quad	0x3fb64f332c1bae28              # double 0.08714599444254445
	.quad	0x3fd2874ecc05f35e              # double 0.28950853275437349
	.quad	0x3fd189af369aec14              # double 0.27402859051261541
	.quad	0x3fe9571868a3bb89              # double 0.79188175618570356
	.quad	0x3fc064ade36db800              # double 0.12807248692428175
	.quad	0x3fead5e1a3451fd3              # double 0.8386085690372006
	.quad	0x3fe0c2689672edcb              # double 0.52373151192244316
	.quad	0x3fdf51e777cda028              # double 0.48937403392347045
	.quad	0x3fe2a088b0218cb2              # double 0.58209642792316729
	.quad	0x3fe538521afb9af9              # double 0.66312508840641649
	.quad	0x3fe8d94d6dc42808              # double 0.77652617872922836
	.quad	0x3fe1665d1f79db8b              # double 0.54374557635934317
	.quad	0x3f5004a05bdd0800              # double 9.7766552012545915E-4
	.quad	0x3fdc1e3b2d65d7f2              # double 0.43934516366368748
	.quad	0x3fe9d1ee3a9e3699              # double 0.80687629174072406
	.quad	0x3fec072af1c23b77              # double 0.87587496965885137
	.quad	0x3fd3b39c461b162e              # double 0.30783755155821069
	.quad	0x3f9603eab2cd8f20              # double 0.021499316371218602
	.quad	0x3fd3597fff2f9372              # double 0.30233764572613275
	.quad	0x3fb40f4c9ada09d8              # double 0.078358447843164369
	.quad	0x3fd2cfa81d901db0              # double 0.29392435919768456
	.quad	0x3fe9c3fa33691672              # double 0.80517301598656688
	.quad	0x3fbfa45fdebf4888              # double 0.12360190570987772
	.quad	0x3fee325e1b4f30fd              # double 0.94364838918548311
	.quad	0x3f86a391a19b3ac0              # double 0.011054170364699245
	.quad	0x3fe04f4f0983a6dd              # double 0.50968124254469738
	.quad	0x3fa716f4c015f860              # double 0.045097015808082785
	.quad	0x3fdf3459220fef2a              # double 0.48757007910147598
	.quad	0x3fe1df37133805e0              # double 0.55849794152907961
	.quad	0x3fd709b51de7d2ac              # double 0.35996749802078898
	.quad	0x3fde2273e2241e98              # double 0.47085282405940054
	.quad	0x3fe0ce767f0ffa9a              # double 0.52520298783186381
	.quad	0x3fd3d50de195e77a              # double 0.30987879781570593
	.quad	0x3fef4c3bac03cc65              # double 0.97805579754493676
	.quad	0x3fefa1393977edfa              # double 0.98843060707389374
	.quad	0x3fe4d37de2de9ff2              # double 0.65081686315988763
	.quad	0x3f81d9ad6076fc40              # double 0.0087159676612583725
	.quad	0x3fe95fa7caa59878              # double 0.7929266889521065
	.quad	0x3fd679c6236ba656              # double 0.35118249377282973
	.quad	0x3fc081df8b2f6ae8              # double 0.12896341606286588
	.quad	0x3fdb1e270d319652              # double 0.42371536529967557
	.quad	0x3fee5655eccb1a5c              # double 0.94803901909547105
	.quad	0x3fde4f7f1a3b1bee              # double 0.47360208093272049
	.quad	0x3fe4711cbab9b0bd              # double 0.63880764455600281
	.quad	0x3fe6347271d8a7e5              # double 0.69390222774131571
	.quad	0x3fe9c2f45ceb829a              # double 0.80504816196851725
	.quad	0x3fc721754c629b64              # double 0.18070856313462536
	.quad	0x3fe759022ac5179f              # double 0.72961529115194768
	.quad	0x3fb59ddf1bf7e240              # double 0.084440178230473784
	.quad	0x3fd3c2f78e8d70e2              # double 0.30877484246390285
	.quad	0x3fcc92dc8f5030d0              # double 0.22323185918538124
	.quad	0x3fdcb0f8d3dda9a4              # double 0.44830151262308449
	.quad	0x3fc25adcc6d8cd00              # double 0.14339790067024438
	.quad	0x3fdaff1ad613733e              # double 0.4218203631005969
	.quad	0x3fe8b3c0d6d5ccea              # double 0.77194253883353992
	.quad	0x3fe0076e365b15a2              # double 0.50090704552046739
	.quad	0x3fe156ba01a164f5              # double 0.54183674162336948
	.quad	0x3fe7662b87508119              # double 0.73122192791564367
	.quad	0x3fbac1e66dae0e70              # double 0.10452118089420437
	.quad	0x3fa53012e83dfea0              # double 0.041382399415849536
	.quad	0x3fced120d1938078              # double 0.24075708611690394
	.quad	0x3fdbd9e529a8f9f8              # double 0.43517426555982253
	.quad	0x3fec54bd93f7b584              # double 0.88534430408405784
	.quad	0x3fda379302bb5d46              # double 0.40964198366915061
	.quad	0x3fefdd87225856e0              # double 0.9957919760515459
	.quad	0x3fe99c40871b32b6              # double 0.80032373798311229
	.quad	0x3fd709acc1cb6ef0              # double 0.35996550488719858
	.quad	0x3f6ea51c98084400              # double 0.0037408407663481746
	.quad	0x3fbcfb05523f35d8              # double 0.11320527322751361
	.quad	0x3fe743ca339529bd              # double 0.7270251281236636
	.quad	0x3fc4bce68be33810              # double 0.16201478796432456
	.quad	0x3fe1d9cab319a07c              # double 0.55783591251839892
	.quad	0x3fede26368d0dd91              # double 0.93388529273845411
	.quad	0x3fd7cfc88eeed720              # double 0.37205709417627197
	.quad	0x3fe675309fb87299              # double 0.70180541224870574
	.quad	0x3fb7077b4b759ff8              # double 0.08995791046402235
	.quad	0x3fdd51d42f834f88              # double 0.45811943664488597
	.quad	0x3fe575581438a161              # double 0.67057422589736515
	.quad	0x3fc9ac677908a730              # double 0.20057385835507935
	.quad	0x3fe7b72d36404bca              # double 0.74111042591027254
	.quad	0x3fd2303bbaf361da              # double 0.28419392830758528
	.quad	0x3fd84b2eb182f5e2              # double 0.37958876929391583
	.quad	0x3fefadd5390f7f44              # double 0.98996983666072724
	.quad	0x3fe92f8163526de0              # double 0.78704900168252933
	.quad	0x3fb73ae9d15945f8              # double 0.090742696390655797
	.quad	0x3fb4ad68a3651ba0              # double 0.080771007434221165
	.quad	0x3fec523e782cc81a              # double 0.88503955337205586
	.quad	0x3fe62e5ebff4aced              # double 0.6931604146133431
	.quad	0x3fdce9aab087d9b0              # double 0.45176188697169106
	.quad	0x3fd3be83185b6640              # double 0.30850293520561323
	.quad	0x3fdce384c891dc42              # double 0.45138663851634331
	.quad	0x3fe70a49d3709c90              # double 0.72000590607503234
	.quad	0x3feaece807a84507              # double 0.84141923423354192
	.quad	0x3fa4322e4b6104d0              # double 0.039445349408660513
	.quad	0x3fe5e8a8612ff80f              # double 0.68465060216817786
	.quad	0x3fcaa79bc5f29228              # double 0.20824000516326291
	.quad	0x3fdfd1c1a262115c              # double 0.4971775136730423
	.quad	0x3f841095a993b940              # double 0.0097972576499755215
	.quad	0x3fcff29423426fec              # double 0.24959041330009712
	.quad	0x3fe75206d328a28a              # double 0.72876301996173365
	.quad	0x3f849ceba4ccfa80              # double 0.010064927069490581
	.quad	0x3fb2d90e687cf0b0              # double 0.073624516019608732
	.quad	0x3fed60101ef07583              # double 0.91797643702345544
	.quad	0x3feb3e07377f576c              # double 0.85132180060712192
	.quad	0x3fb3545786613238              # double 0.075505705173051108
	.quad	0x3fe1d9a803f8350c              # double 0.55781937384895874
	.quad	0x3fe569169a7faebb              # double 0.66907816100634621
	.quad	0x3fa3fff462a2d8c0              # double 0.039062153854886983
	.quad	0x3fd55e6f041a8f0a              # double 0.33388877297169073
	.quad	0x3fe5e3fc76552aa8              # double 0.68408034431316356
	.quad	0x3fe7d0f5217ae809              # double 0.74425751246531135
	.quad	0x3fe30b0fd42a2015              # double 0.59510032118214673
	.quad	0x3feeaec9436c0720              # double 0.95883620422702975
	.quad	0x3feb5e1122f834ea              # double 0.85523278074256592
	.quad	0x3febdd59d195c3e5              # double 0.87077036795210161
	.quad	0x3fee60f524f61156              # double 0.94933564394936343
	.quad	0x3fe6376677394534              # double 0.69426272664910593
	.quad	0x3fd9ccc30b9d7792              # double 0.40312267431533499
	.quad	0x3fe610ebdf0038d9              # double 0.68956559710366172
	.quad	0x3fed7786d2f17634              # double 0.92084065627904587
	.quad	0x3fee11849324f810              # double 0.93963841189520458
	.quad	0x3fd3222691a2df0c              # double 0.29895939085280143
	.quad	0x3fe7d766d3984f60              # double 0.74504414870396473
	.quad	0x3fcab65a9b126bac              # double 0.20869000026581597
	.quad	0x3fdeaad438bb6cb6              # double 0.47917657413718062
	.quad	0x3fd450c4afd1796c              # double 0.31742970628501754
	.quad	0x3fc29796a5d80f3c              # double 0.14525111291742998
	.quad	0x3fdcfa4924af96aa              # double 0.45277622778517446
	.quad	0x3fe70a4107806118              # double 0.72000171151288139
	.quad	0x3fe6b261a1133bc2              # double 0.70927506885515634
	.quad	0x3fe30849a94de8ee              # double 0.59476168696644804
	.quad	0x3fdb78010df5d6ea              # double 0.42919947017013149
	.quad	0x3fec3a0e8d47881e              # double 0.88208701699864256
	.quad	0x3fd0b740b93317d8              # double 0.26118486486336456
	.quad	0x3fe6323fc27cb845              # double 0.69363391862658175
	.quad	0x3fba237e408f0e00              # double 0.10210408283369787
	.quad	0x3fd3cca1f46eee54              # double 0.30936478491250807
	.quad	0x3fdaccc352c6523e              # double 0.41874774058786446
	.quad	0x3fdf2d9182f32372              # double 0.48715627468168698
	.quad	0x3fecbae0b799650a              # double 0.89781223162859303
	.quad	0x3fed14360d05c9c6              # double 0.90871717971304444
	.quad	0x3fe10db97001d834              # double 0.53292533756644511
	.quad	0x3fee741a78633b5f              # double 0.95167277825553842
	.quad	0x3fd369699caab76c              # double 0.30330887126444028
	.quad	0x3fc91027f1f4d3f8              # double 0.19580554308200226
	.quad	0x3fe46e9518efa226              # double 0.63849882955861825
	.quad	0x3fd02bd0e06c25b0              # double 0.25267431179289712
	.quad	0x3fee9921ed7d9d9a              # double 0.95619293579959508
	.quad	0x3fb62fbe4d9bfa88              # double 0.08666600603826613
	.quad	0x3fd6808a9748b676              # double 0.35159554265815218
	.quad	0x3febdd7da8a03964              # double 0.87078745779744481
	.quad	0x3fdefb9a73d93d28              # double 0.48410664857233821
	.quad	0x3fd4c954c9e716ae              # double 0.32478828160342743
	.quad	0x3f5109c9cf66f000              # double 0.0010399313738238547
	.quad	0x3fe7325e872d4960              # double 0.72489859010446978
	.quad	0x3fa62c4b9d296ed0              # double 0.043306696829601088
	.quad	0x3fcabcfeeb640b88              # double 0.20889269345942929
	.quad	0x3feba0c531617987              # double 0.86337527889900023
	.quad	0x3fe4e9c5eadefd0c              # double 0.65353675721408555
	.quad	0x3f5da1643e02cc00              # double 0.0018084982803372451
	.quad	0x3fc84c265d61f238              # double 0.18982390937516569
	.quad	0x3fb3474afe33ca20              # double 0.075306593953236689
	.quad	0x3fd36a486841bb76              # double 0.30336198979687568
	.quad	0x3feacc7a901638c6              # double 0.83746078626588694
	.quad	0x3fec22e03601e02a              # double 0.87925730274492264
	.quad	0x3feb804018b16fc6              # double 0.85940556357262987
	.quad	0x3fe3caef68ad150e              # double 0.61852236218024514
	.quad	0x3eec24c0083b0000              # double 1.3419892872845729E-5
	.quad	0x3fab75b637673db0              # double 0.053632444632622067
	.quad	0x3fd5153ec0ba6c64              # double 0.329421699725293
	.quad	0x3feac61d80f5eb9c              # double 0.83668399036047302
	.quad	0x3fd7e09cc682cc0e              # double 0.37308425317604665
	.quad	0x3fdbf8742d1ca5ae              # double 0.4370394173189095
	.quad	0x3fe39a04b6587240              # double 0.61255107511858142
	.quad	0x3fe3c1fb5a1a0ab2              # double 0.61742942426675129
	.quad	0x3fe4d9214ae374dd              # double 0.65150513292942558
	.quad	0x3fd30f48ffdcf546              # double 0.29780793177254272
	.quad	0x3f40cd3b5a005800              # double 5.1274679208535012E-4
	.quad	0x3fef30ee6c11fb90              # double 0.97472306354016958
	.quad	0x3fc18a89426ee910              # double 0.13704028838930826
	.quad	0x3fe55f99975c2d0a              # double 0.6679199177027908
	.quad	0x3fd09a85c149f244              # double 0.25943130374779266
	.quad	0x3feb7c1ab3b61380              # double 0.8588994512543735
	.quad	0x3fca1d3d6ae5a888              # double 0.20401733131013011
	.quad	0x3fe46e406661df11              # double 0.63845844265503804
	.quad	0x3fdde952a4edb5d0              # double 0.46736589533142325
	.quad	0x3fedef1115e4bcb4              # double 0.93543295169901918
	.quad	0x3fe9ce25d85a16f4              # double 0.8064145303366943
	.quad	0x3fe549b34cf76f12              # double 0.66524663002516804
	.quad	0x3fd613c119e4a108              # double 0.34495570686932853
	.quad	0x3fe74f4d6123e222              # double 0.72843045208634671
	.quad	0x3fe896b92acba04e              # double 0.76839884146193937
	.quad	0x3fc08620cf19a0b4              # double 0.1290932666045187
	.quad	0x3fe2095afaf79203              # double 0.56364201561933702
	.quad	0x3fe59ac18f920904              # double 0.67514112511733559
	.quad	0x3fd2161c79569f20              # double 0.28259956216287385
	.quad	0x3fd071c48d31981e              # double 0.2569438341946596
	.quad	0x3f94fef658528a40              # double 0.020503853932164029
	.quad	0x3fdeab49cf5f2a8e              # double 0.47920460940501008
	.quad	0x3fdf2654aa6e87ea              # double 0.48671452182509134
	.quad	0x3fc7f5f418a67b34              # double 0.18719340518597394
	.quad	0x3fde0a80b8db27de              # double 0.46939104130126263
	.quad	0x3fe31bb8dfa09448              # double 0.59713405301284528
	.quad	0x3feb1e1dfd733d2c              # double 0.84742640974028438
	.quad	0x3fb79dc818cae518              # double 0.09225130658423486
	.quad	0x3fe0988d3539dd99              # double 0.51862202068052732
	.quad	0x3fdcc30eb36065a2              # double 0.44940536038628853
	.quad	0x3fef84dbcc93dfc6              # double 0.98496808964318272
	.quad	0x3fe0b130d15a9c96              # double 0.52162972344821656
	.quad	0x3fd8731a50cadda4              # double 0.38202531709563403
	.quad	0x3fe6a70e4f3b9d73              # double 0.70789256549043811
	.quad	0x3fe8b38d52679ff7              # double 0.77191797346767899
	.quad	0x3fdb6798cb24c752              # double 0.42819804991005583
	.quad	0x3fdce23aa3bcbcf0              # double 0.45130792608229253
	.quad	0x3fd98b66703584f2              # double 0.39913330991664886
	.quad	0x3fc62dc6e1599080              # double 0.17327199939166249
	.quad	0x3fe6d200bd098e72              # double 0.71313511773446536
	.quad	0x3fe91f0d43671045              # double 0.78504050411766768
	.quad	0x3f91139217b94c60              # double 0.016676218698489342
	.quad	0x3fe118cab7cd4bbb              # double 0.53427635096374304
	.quad	0x3fdee638d2d4c4f0              # double 0.48280163372972051
	.quad	0x3fc3575c97b0f7fc              # double 0.15110356718827223
	.quad	0x3fe47b7722911369              # double 0.64007145644482677
	.quad	0x3fcc8d3dfe18ac68              # double 0.22306036860513534
	.quad	0x3feeca10fb64ce24              # double 0.96216630077691833
	.quad	0x3fdba4dc67fc01da              # double 0.4319373145554245
	.quad	0x3fd4d5b9138a3e14              # double 0.32554461391643597
	.quad	0x3fe7a4121b187349              # double 0.73877816478816627
	.quad	0x3fdc879428ea45a2              # double 0.4457750701486366
	.quad	0x3fe6c5015ec2229a              # double 0.71154850490082144
	.quad	0x3fe71f5479b46853              # double 0.72257446070148956
	.quad	0x3fe0becdcbca45db              # double 0.52329149058112578
	.quad	0x3fee6df021a59aae              # double 0.95092016765268794
	.quad	0x3fdc9c1f63f91a48              # double 0.44702896845811724
	.quad	0x3feb314616d9816c              # double 0.84976486647432869
	.quad	0x3f97d5a4038944c0              # double 0.023275912013848155
	.quad	0x3fdbd839bbb4b19c              # double 0.43507235842369041
	.quad	0x3fbc0f522a3387d8              # double 0.10960877924256296
	.quad	0x3fd7d92514c70e4c              # double 0.3726284697442892
	.quad	0x3feb2b212ee6307c              # double 0.84901484642024582
	.quad	0x3fc8ce895780a1e0              # double 0.19380299351293129
	.quad	0x3fe662eea44e3389              # double 0.69957668391144623
	.quad	0x3fcc8cf410665abc              # double 0.22305155564091261
	.quad	0x3fddcc251eb4bcec              # double 0.46558502195962492
	.quad	0x3fcb9e92244eec34              # double 0.21577669880739025
	.quad	0x3fe0b79f0c1699b8              # double 0.5224147068118361
	.quad	0x3fdead49c9d31026              # double 0.47932667455120492
	.quad	0x3fb6ba94194c2fc0              # double 0.088784462143109089
	.quad	0x3fe31b126d243159              # double 0.59705468479800594
	.quad	0x3fe9954c06bcae67              # double 0.79947472873523118
	.quad	0x3fd8805977b2cbee              # double 0.38283383073138466
	.quad	0x3fc8fe1c7d824210              # double 0.19525486114845636
	.quad	0x3fbbb2555cb458f8              # double 0.10818990243237525
	.quad	0x3fe165e5e156e15c              # double 0.54368871699902455
	.quad	0x3fe06424fdeeb6cf              # double 0.51222467037379171
	.quad	0x3fed7813afb6bbf7              # double 0.92090782469847354
	.quad	0x3fd486b278e8267e              # double 0.32072126204784712
	.quad	0x3fe8430b4f2962e3              # double 0.75818410359633182
	.quad	0x3fee1832c0b1ff73              # double 0.94045388828088361
	.quad	0x3fdc25638c2fae5a              # double 0.43978203477920419
	.quad	0x3fb49480ec39d228              # double 0.080390985176400975
	.quad	0x3f6b659277e3e700              # double 0.0033443318089866336
	.quad	0x3fe16258a322e1c0              # double 0.54325515615987996
	.quad	0x3fc9c0de2ee66b78              # double 0.20119836130183066
	.quad	0x3fd520241f960568              # double 0.33008673748562112
	.quad	0x3fda0f8cea532ea2              # double 0.40719912417692161
	.quad	0x3fe12c76d7046172              # double 0.53667776103524845
	.quad	0x3fca5a571b3d15ec              # double 0.20588196592340979
	.quad	0x3fc355fa90065e38              # double 0.15106136352982147
	.quad	0x3feb51bec8b4240f              # double 0.85372866821228566
	.quad	0x3fedd6f313204500              # double 0.93248895392949294
	.quad	0x3fef367b14a85dd7              # double 0.97540048632338993
	.quad	0x3fe4f335eafb2a8e              # double 0.65468879599332452
	.quad	0x3fd91e4975fc95e2              # double 0.39247356912741627
	.quad	0x3feb674664413d9f              # double 0.85635680752777776
	.quad	0x3fc1a63848c337c4              # double 0.1378851275716767
	.quad	0x3fcdf328cc119240              # double 0.23398313488282163
	.quad	0x3fbc5d407d9de9e0              # double 0.11079791132753014
	.quad	0x3fe6f7dde1315a60              # double 0.717757167653712
	.quad	0x3fed2e5ee2a6e9da              # double 0.91191047924013025
	.quad	0x3fb209b4ce75f690              # double 0.070460606008021509
	.quad	0x3fe6763101850cab              # double 0.70192766472645951
	.quad	0x3fc99e5e94e60d50              # double 0.20014555235330045
	.quad	0x3fe6e5ad4b59c251              # double 0.71553673474233837
	.quad	0x3fda3715bfbf904c              # double 0.40961211896342742
	.quad	0x3feb7f94d70e23f3              # double 0.85932390215850629
	.quad	0x3fe35598b802e13e              # double 0.60419879855820802
	.quad	0x3fb359e84cc39e98              # double 0.075590628377194213
	.quad	0x3fd8f5c65e8dfb28              # double 0.39000090822075828
	.quad	0x3fe95094de7e865d              # double 0.79108661132722669
	.quad	0x3fc44215853031ec              # double 0.15826672557194799
	.quad	0x3fd5fe282f94267c              # double 0.34363751074179283
	.quad	0x3fe7ea46ea0edc96              # double 0.74734826769317197
	.quad	0x3fd629e42c69e926              # double 0.34630684220577945
	.quad	0x3fefed76105254a2              # double 0.99773696124852429
	.quad	0x3fdd3d4e009d993a              # double 0.45686674175376008
	.quad	0x3fe1e21e5b729af9              # double 0.55885236607431843
	.quad	0x3fe3d72ba8e28dd4              # double 0.62001593575808522
	.quad	0x3fe32199b10fae6d              # double 0.59785160619999334
	.quad	0x3feb02f8db98ff14              # double 0.84411280527271737
	.quad	0x3fe3087eb5487898              # double 0.59478698164800203
	.quad	0x3fbb33aa7e6545a8              # double 0.10625711046056685
	.quad	0x3fe514caf9bf835b              # double 0.65878819254804044
	.quad	0x3fed89492329d3f2              # double 0.92300850742196716
	.quad	0x3fcfd81eb8e960d4              # double 0.24878295925987592
	.quad	0x3fe353a201cdd6c0              # double 0.60395908691744893
	.quad	0x3fddab87ac0db72a              # double 0.46359435846430819
	.quad	0x3fe85fddbe3368a2              # double 0.76170241497608893
	.quad	0x3fdaab9bcd82a43c              # double 0.41672415799490969
	.quad	0x3fcabe61f6c0f614              # double 0.20893501804850756
	.quad	0x3feb8178d432b51c              # double 0.85955468602120133
	.quad	0x3fc6726c83c77804              # double 0.17536693987398178
	.quad	0x3fccc8406a2a19dc              # double 0.224861194456209
	.quad	0x3fd67a96088e0982              # double 0.35123205981667394
	.quad	0x3fcbda3d63c63364              # double 0.2175976502589051
	.quad	0x3fdd489d5a6ab6be              # double 0.45755704717417334
	.quad	0x3fe2d0f1d2525ee2              # double 0.58800593450993355
	.quad	0x3fe47d97965f3b88              # double 0.64033107156306901
	.quad	0x3fe45e587ae2ca09              # double 0.63651679993773869
	.quad	0x3fb5f311c79fc130              # double 0.085740195499742766
	.quad	0x3feb239fe2903273              # double 0.84809870005262977
	.quad	0x3fe5bb62d4fd7e50              # double 0.67912427520418284
	.quad	0x3fba32f9ce3e6480              # double 0.10234032902953238
	.quad	0x3fd980d2064d7580              # double 0.39848757377134092
	.quad	0x3fe578dc0a649b67              # double 0.67100336103326874
	.quad	0x3fe11186e75133c5              # double 0.53338952235355264
	.quad	0x3fe8c12c13aee87d              # double 0.77358058781034311
	.quad	0x3feb994e897a9a28              # double 0.8624642071852735
	.quad	0x3fe1fc35ced0695c              # double 0.56203737634067918
	.quad	0x3fe8733f77dbcc69              # double 0.76406834993248396
	.quad	0x3fd506b6bd20a5a2              # double 0.32853477925763219
	.quad	0x3fda1c2b03e0bd78              # double 0.40796923998546886
	.quad	0x3feba5571026c9d5              # double 0.86393311647980886
	.quad	0x3fe0eb64fc6e1c2a              # double 0.52873467734105373
	.quad	0x3fe1d7fbe776b320              # double 0.55761523444889249
	.quad	0x3fdd638d122adb4a              # double 0.45920111440812106
	.quad	0x3fec0589ed6d6eaf              # double 0.87567612049629939
	.quad	0x3fbc528a7f67e318              # double 0.1106344758080805
	.quad	0x3fd8a60fce9832f6              # double 0.38513560462233387
	.quad	0x3fe9322b369d0171              # double 0.78737412134800711
	.quad	0x3fddca02dd5e754a              # double 0.46545478456558398
	.quad	0x3f9b6f5d08e00c60              # double 0.026792005221079385
	.quad	0x3fe2cff165b7a333              # double 0.58788366190592567
	.quad	0x3fd222fbd0606d48              # double 0.28338523244174896
	.quad	0x3fe593dfb33b3fd1              # double 0.67430100446835628
	.quad	0x3fa6dd20012cd1d0              # double 0.044655800002519563
	.quad	0x3fe6adae907099f0              # double 0.70870140276821125
	.quad	0x3fba04e469daa6e8              # double 0.10163714966133919
	.quad	0x3fe7ef3d63a78336              # double 0.74795407737483433
	.quad	0x3fd1de6eddbff5d2              # double 0.27920123725183743
	.quad	0x3fa7d5b1057a0bd0              # double 0.046552211683795641
	.quad	0x3fe363cc9175a6f8              # double 0.60593250665735265
	.quad	0x3fea54c0c37e2045              # double 0.82284582311786691
	.quad	0x3fd14b09009bff3c              # double 0.27020478305347573
	.quad	0x3fea643058b0faa6              # double 0.82473008463405928
	.quad	0x3fe1397fe1456957              # double 0.53826898573178539
	.quad	0x3fce16a1ef992264              # double 0.23506569098596508
	.quad	0x3fc523835cfb90f8              # double 0.16514627494974099
	.quad	0x3fe31fed590dc5fd              # double 0.59764735596962704
	.quad	0x3fb7d83b923bc7b0              # double 0.093143199159185341
	.quad	0x3fe483bd3d76f064              # double 0.6410814476471498
	.quad	0x3fed4528ed89a899              # double 0.91469236749732652
	.quad	0x3feee13ebbea78fe              # double 0.96499573423696439
	.quad	0x3fda097e7a94aa6a              # double 0.40682947130941349
	.quad	0x3fdeec119fc372f6              # double 0.48315849878217365
	.quad	0x3fed229170d45f97              # double 0.91046974217441601
	.quad	0x3fc7147beabcfc20              # double 0.18031262361361744
	.quad	0x3fd1d091439748d4              # double 0.27835494614295198
	.quad	0x3fe86a70d3c494fd              # double 0.76299325333516743
	.quad	0x3fd2cb513f8fa6aa              # double 0.29365950781957884
	.quad	0x3fd1810344374e5c              # double 0.27349931394312477
	.quad	0x3fd23bd760f1ca5e              # double 0.2849024244998527
	.quad	0x3feb79d797082b24              # double 0.85862330912036499
	.quad	0x3fb9fe6161471238              # double 0.1015377867216295
	.quad	0x3fe5fd9c2dd4e0da              # double 0.68720826102710508
	.quad	0x3fe66d1239c05744              # double 0.70081435470158526
	.quad	0x3fe16446c45f88fa              # double 0.54349077562463255
	.quad	0x3fe45c83c033f483              # double 0.63629329242361654
	.quad	0x3fe4cacc095ba130              # double 0.64975549533577315
	.quad	0x3fe9bafa1e8917d2              # double 0.80407434429138847
	.quad	0x3fe935d261aaf84d              # double 0.78782004428627206
	.quad	0x3fe8f7098087f25a              # double 0.78015589812964525
	.quad	0x3f9e9c5234d61ea0              # double 0.02989319274413893
	.quad	0x3fef921bb4137cce              # double 0.9865854756461887
	.quad	0x3fd8322992ea361c              # double 0.37806166979939504
	.quad	0x3fd4b761c85f8c20              # double 0.32369274680803706
	.quad	0x3fe63b52519046ec              # double 0.69474140100848336
	.quad	0x3fda9aa67ac13742              # double 0.41568910587090013
	.quad	0x3fd29136b4efc75e              # double 0.29011314076989503
	.quad	0x3fd661fb353b51fe              # double 0.34973030279550688
	.quad	0x3fe069d4e13af38b              # double 0.51291889181412509
	.quad	0x3feb379a380312b3              # double 0.85053740444035097
	.quad	0x3fb8c07b3f8d4ae8              # double 0.096687033668142797
	.quad	0x3fb9e7c26af40758              # double 0.10119261847651495
	.quad	0x3fed9920556f183c              # double 0.92494217573472026
	.quad	0x3fe8606634661053              # double 0.76176748499029612
	.quad	0x3fddb2a20b7cdbd0              # double 0.46402789232109587
	.quad	0x3fdc38a9013fbeca              # double 0.44095826265309468
	.quad	0x3fe0c51eca3c719a              # double 0.52406253337135245
	.quad	0x3fef52ae175c71d0              # double 0.97884277880398862
	.quad	0x3fe2c3bb7c90352c              # double 0.58639311150333162
	.quad	0x3fef3f14d2789297              # double 0.97645035846342664
	.quad	0x3fe087b067df3921              # double 0.51656360900395637
	.quad	0x3fe576b5d82d7042              # double 0.67074100706259565
	.quad	0x3fedb0e015645a44              # double 0.92784122636914689
	.quad	0x3fe37ac137ee3e1f              # double 0.60873471187545991
	.quad	0x3fe23b083c179c3d              # double 0.56970607506526216
	.quad	0x3fe0dd3d82f019e1              # double 0.52700687001998514
	.quad	0x3fe09a1d803ffb7d              # double 0.51881289528670005
	.quad	0x3fe43bd1caf77806              # double 0.6323021854584574
	.quad	0x3fd7bbd3f2371a78              # double 0.37083910611946846
	.quad	0x3fd7a78b672ed34a              # double 0.36960110737281993
	.quad	0x3febc8c98864759c              # double 0.86826016081947754
	.quad	0x3fe8de705f92c279              # double 0.77715319315582498
	.quad	0x3febfe85c591985c              # double 0.87481964671747958
	.quad	0x3fc92e870c909134              # double 0.19673240769874101
	.quad	0x3fe5733697b62d96              # double 0.67031411772898042
	.quad	0x3f924e831f3f3940              # double 0.017877625257648022
	.quad	0x3fe960ec87807c5c              # double 0.79308153596128816
	.quad	0x3fc4275d7d0ff460              # double 0.15745133024748537
	.quad	0x3fdcc5944188c7e6              # double 0.44955927276453023
	.quad	0x3fd187bd06dd3bc6              # double 0.27390981359797839
	.quad	0x3fe30dc4564b84fc              # double 0.59543053488246711
	.quad	0x3fda2971d623c45e              # double 0.40877958213883925
	.quad	0x3fece5d676596456              # double 0.90305636515689502
	.quad	0x3fe8cf0eaa0251ae              # double 0.7752755470742636
	.quad	0x3fd97f8079393104              # double 0.39840709531996787
	.quad	0x3f89090cd4deb8c0              # double 0.012224292989995056
	.quad	0x3fd1cf64c40cab76              # double 0.27828330178697713
	.quad	0x3fe011a8f8dbcbee              # double 0.50215576749030588
	.quad	0x3fde076568f94d66              # double 0.46920142413474364
	.quad	0x3fe27b0248c904d8              # double 0.5775157376848723
	.quad	0x3fe4e4eed77e107a              # double 0.65294591987959838
	.quad	0x3fcca0ff7239620c              # double 0.22366326405860126
	.quad	0x3f55bf3cd44d5e00              # double 0.0013273328815638363
	.quad	0x3fe95162fe009ee2              # double 0.79118489847038753
	.quad	0x3fddbe9c45c4c9ae              # double 0.46475893796300738
	.quad	0x3fe2472cee386e2e              # double 0.57118841674259158
	.quad	0x3fd0df1b58ffc336              # double 0.26361736003223102
	.quad	0x3fb41d993feed420              # double 0.078576639279007043
	.quad	0x3fe89e21c8f934c1              # double 0.76930321934346335
	.quad	0x3fde33999cf4c9f0              # double 0.47189941718821071
	.quad	0x3fb2a3c5361589a8              # double 0.072811437324651451
	.quad	0x3fe21612d983a7c3              # double 0.56519453509576356
	.quad	0x3fe392c746ba2343              # double 0.61166728795897318
	.quad	0x3fcbf37611f9f7c8              # double 0.21836734655147283
	.quad	0x3fe461f698228627              # double 0.63695840562667605
	.quad	0x3fe1e711cf5505d9              # double 0.55945673460535794
	.quad	0x3fea5b52eac6cf2b              # double 0.82364793638996525
	.quad	0x3fd4a6cc5c99f736              # double 0.32268055956943742
	.quad	0x3fe0437e35b44c60              # double 0.50823889245146958
	.quad	0x3fe4c91f706acb53              # double 0.64955112415769134
	.quad	0x3fe0a2c05030c8a5              # double 0.51986709272593556
	.quad	0x3fe23ea26ed26c97              # double 0.57014581341663273
	.quad	0x3fbc219441248960              # double 0.10988737669371096
	.quad	0x3fcebf496f436eb8              # double 0.24021261151107409
	.quad	0x3fd2e0ed35865a0c              # double 0.29497843005211233
	.quad	0x3fe2c0c83c5eef09              # double 0.58603297988108338
	.quad	0x3fda8a76fd3af8be              # double 0.41470122079398297
	.quad	0x3fcaa539bb322284              # double 0.20816728248998484
	.quad	0x3fd1adf6673fdf8e              # double 0.27624282916030374
	.quad	0x3fe960b2b0326cdf              # double 0.7930539552065986
	.quad	0x3faaf7221511fb70              # double 0.052666726181079038
	.quad	0x3f83a61fce0d17c0              # double 0.0095942005879229297
	.quad	0x3fb2025aacec0498              # double 0.070348422257682564
	.quad	0x3fdc8c4669683ca0              # double 0.44606170934361877
	.quad	0x3fd5543bdcaf6d98              # double 0.33326622535033712
	.quad	0x3fb082d95d0bf498              # double 0.064496598450164533
	.quad	0x3fe7fdabc208f0d8              # double 0.74971568963476454
	.quad	0x3fe153842a4ef2fd              # double 0.54144485724790992
	.quad	0x3fd9e9e385bb7f90              # double 0.40490043697172329
	.quad	0x3fa81637fe826890              # double 0.047044515436213463
	.quad	0x3fe28786258d99f2              # double 0.57904345831485515
	.quad	0x3fb8de5ca525d6c0              # double 0.097142973250664788
	.quad	0x3fd7d066d955af14              # double 0.37209483360378326
	.quad	0x3fdd030ab799c888              # double 0.45331066064603265
	.quad	0x3fe9a95afecf0604              # double 0.80192327277490038
	.quad	0x3fb867af5a7d6458              # double 0.095332107155074453
	.quad	0x3fef8b2acebf9948              # double 0.98573818569710969
	.quad	0x3fddbcf86790fca0              # double 0.46465883363630134
	.quad	0x3febd361fd6b5701              # double 0.86955356117206872
	.quad	0x3fd08b20e38e3a96              # double 0.25849172804093123
	.quad	0x3fe2d43775946583              # double 0.5884053513029105
	.quad	0x3fef70af11763eff              # double 0.98250535402800653
	.quad	0x3fe91be14de8d601              # double 0.78465333191587672
	.quad	0x3fe2df915f85a8f7              # double 0.58979099899923326
	.quad	0x3fbe7320faad89e0              # double 0.11894422645631364
	.quad	0x3fb69ebac37269b8              # double 0.08835952064183672
	.quad	0x3fc9ea4a80289b94              # double 0.20246249444718656
	.quad	0x3fef36dbd200bfda              # double 0.97544661537358057
	.quad	0x3fcd3e93941f66b8              # double 0.22847218258430302
	.quad	0x3fec58f55c0f3fbf              # double 0.88585918407806463
	.quad	0x3fdd8e968fa6ea42              # double 0.46182788876072689
	.quad	0x3fe72df9cd19fae4              # double 0.72436227854617785
	.quad	0x3fe4c26606175f1e              # double 0.64873028936105803
	.quad	0x3fca51a9433f0508              # double 0.20561710151199741
	.quad	0x3febfe24a60f6307              # double 0.87477333482374398
	.quad	0x3fc1ff0615dcf79c              # double 0.14059520785843638
	.quad	0x3fcce9711776da0c              # double 0.22587407727924391
	.quad	0x3fece4f7ef9ab59a              # double 0.90295025632592574
	.quad	0x3fe8044567917fec              # double 0.75052137592501599
	.quad	0x3fd2dcf5b736edb8              # double 0.29473631755874008
	.quad	0x3fd1525b5f6d9000              # double 0.27065166777742888
	.quad	0x3fe84b8f3711a048              # double 0.759223563724853
	.quad	0x3fe4674e7388534f              # double 0.63761065068193001
	.quad	0x3fe9174faef8c8c1              # double 0.78409561323339727
	.quad	0x3fd4395b2f894200              # double 0.31600074426845026
	.quad	0x3feb627dcb52eef3              # double 0.85577287399016055
	.quad	0x3fcbe1a2aab8831c              # double 0.21782334648107671
	.quad	0x3fd7fa2d46792554              # double 0.37464458353186569
	.quad	0x3fcb1d4c29446ab4              # double 0.21183158888819309
	.quad	0x3fe1c4b1847f5a83              # double 0.55526042822278077
	.quad	0x3fecfe781b87e2c2              # double 0.90606313111410253
	.quad	0x3fe1ca550ecfd79b              # double 0.55594876187273046
	.quad	0x3fb809fc72028e88              # double 0.093902376017064637
	.quad	0x3fae2db4478cb2b0              # double 0.058942445501405927
	.quad	0x3fc73351dc623650              # double 0.1812536550609587
	.quad	0x3fe4c0a0366d043a              # double 0.64851389532135006
	.quad	0x3fe964d2cf4cf0ca              # double 0.79355755318058496
	.quad	0x3fe19cb3e19853de              # double 0.55037874280480614
	.quad	0x3fece6b4df6d0ebc              # double 0.90316241872684299
	.quad	0x3fe9f70e9d5f21ac              # double 0.81140833603517625
	.quad	0x3fe902e122a4eb66              # double 0.78160149351547825
	.quad	0x3fef67081319b244              # double 0.98132709246198901
	.quad	0x3fef22970ac99dc2              # double 0.97297241312929139
	.quad	0x3fd9e43658e7f2c6              # double 0.40455397302848117
	.quad	0x3feb1b9336870271              # double 0.84711609506491758
	.quad	0x3f9da95162d386e0              # double 0.028966209084393735
	.quad	0x3fed4fe15359f85a              # double 0.91600099830226189
	.quad	0x3fd76fd24aa7dcc8              # double 0.3662000397739118
	.quad	0x3fd2f1d819e8a78e              # double 0.29601099519879248
	.quad	0x3fe75f9c7d66015f              # double 0.73042129985700999
	.quad	0x3fe418d2cc937795              # double 0.62803020435579759
	.quad	0x3fe565ca9fc3a0c0              # double 0.66867572025241628
	.quad	0x3f945bd03a15c500              # double 0.019881490273694347
	.quad	0x3fdb6947e7994b86              # double 0.42830083481856496
	.quad	0x3fece98f32049d87              # double 0.90351066369196154
	.quad	0x3fdb75698c980f96              # double 0.42904127817041038
	.quad	0x3fee2d9feb8acd08              # double 0.94306941990217385
	.quad	0x3f93199edb5ae7e0              # double 0.01865242208325657
	.quad	0x3fed0fbae51ace3d              # double 0.9081701731397015
	.quad	0x3fec21c49b313569              # double 0.87912206946354587
	.quad	0x3fdf4871c3252886              # double 0.48879665429252162
	.quad	0x3fb7b56b8bb47c68              # double 0.092612001044913961
	.quad	0x3fdc7158881f4334              # double 0.44441808026481344
	.quad	0x3fe8ac9699b30699              # double 0.77106790561102223
	.quad	0x3fd7254b0def0392              # double 0.36165119515140376
	.quad	0x3fe224d1266667a6              # double 0.56699426174167367
	.quad	0x3fe522b3be366842              # double 0.66048609877476161
	.quad	0x3fdc65ad05faa334              # double 0.4437058027638614
	.quad	0x3fe9d6d3490e6e02              # double 0.80747379559346677
	.quad	0x3fe672b99de13ca5              # double 0.70150452457337009
	.quad	0x3fd98c1f48d5d5d2              # double 0.39917738068410558
	.quad	0x3fe84dc53aca0835              # double 0.75949346048606137
	.quad	0x3fd46684c7806340              # double 0.31875724299020547
	.quad	0x3fe72d99f6d93c61              # double 0.72431657993901066
	.quad	0x3fd8ec741f220418              # double 0.38943198242492505
	.quad	0x3fe5af6fba7bff1d              # double 0.67766558096625185
	.quad	0x3fea16a5cccfc474              # double 0.81526460649742071
	.quad	0x3fdb6773830eead4              # double 0.42818916128787277
	.quad	0x3fcc9b574e272098              # double 0.22349063221031851
	.quad	0x3fcafdb13d2945d0              # double 0.21086707579028863
	.quad	0x3fef8a1688e34b92              # double 0.98560644851601098
	.quad	0x3fe47ceb194fe555              # double 0.64024882262962513
	.quad	0x3fed18f3648e8f62              # double 0.90929574623121945
	.quad	0x3fed47fb0969343d              # double 0.91503669584347558
	.quad	0x3fe423a9aa29048b              # double 0.62935336336535508
	.quad	0x3fe89a8b582a3e18              # double 0.7688652727101184
	.quad	0x3fdfd8bb9cdae590              # double 0.49760332410695529
	.quad	0x3fe677ea4b5d1aef              # double 0.70213808745833528
	.quad	0x3fe34e1b99539d25              # double 0.60328464457135011
	.quad	0x3fc0dae32e5a11a0              # double 0.13167991412423152
	.quad	0x3fec2be1ef0d0895              # double 0.88035675706511773
	.quad	0x3fd413a3ecd361ec              # double 0.31369875075827625
	.quad	0x3fb5b2e179f988b0              # double 0.084760753897657137
	.quad	0x3fed284807db4537              # double 0.91116715940930859
	.quad	0x3fddac0c265c8c6e              # double 0.46362594362489673
	.quad	0x3fa5e80808fa5500              # double 0.042785883994989504
	.quad	0x3fe0f9c252ee333f              # double 0.53048816869122806
	.quad	0x3fe88cb9e2c837e3              # double 0.76717848103885122
	.quad	0x3fc5cb0273195288              # double 0.1702578603750633
	.quad	0x3fb726cacc0a7eb8              # double 0.090435671629616077
	.quad	0x3fe7a59018cf53b4              # double 0.73896031232526704
	.quad	0x3fe156d1fb88b987              # double 0.54184817435980015
	.quad	0x3fe024e995f87221              # double 0.50450591364966979
	.quad	0x3fd5c36349fc7daa              # double 0.34005052781318545
	.quad	0x3fe3f4b0dec2a2a8              # double 0.62361949451322563
	.quad	0x3fea1f8ac14a8c7a              # double 0.81635034324825928
	.quad	0x3fe0672a5b44bb71              # double 0.51259343934894563
	.quad	0x3fdc02558ce24df0              # double 0.43764246710017485
	.quad	0x3fd62190bdc77a06              # double 0.34579866917729907
	.quad	0x3fe1328447c4f272              # double 0.53741659181066681
	.quad	0x3fd463a135d330e8              # double 0.31858091598839033
	.quad	0x3fe12967c6d01053              # double 0.53630436735739762
	.quad	0x3fdb2a608fd65a7c              # double 0.42446149870503525
	.quad	0x3fce753223bf9a2c              # double 0.23795153375177003
	.quad	0x3fc8dbd107289d20              # double 0.19420826768439614
	.quad	0x3fe5c5189ecbd0e3              # double 0.68030959143518677
	.quad	0x3fba42d6b8e1cd80              # double 0.10258237851831176
	.quad	0x3fd901c6f7955850              # double 0.39073347261490188
	.quad	0x3fe8e4d6c1eae3fd              # double 0.77793443560142317
	.quad	0x3fdde31cd654dfb6              # double 0.46698685580076515
	.quad	0x3fc56b0d49cf4190              # double 0.16732946495040979
	.quad	0x3fdeb7c060ffe692              # double 0.47996530029886586
	.quad	0x3fe53db0738e5a66              # double 0.66378042764229117
	.quad	0x3fa7e5beed187e60              # double 0.046674696390479609
	.quad	0x3fe8f417ee1a0b39              # double 0.77979656700367805
	.quad	0x3fee09c991579c83              # double 0.93869474780230211
	.quad	0x3fe0877ec7157c6e              # double 0.51653994449214991
	.quad	0x3fd40ba62391c070              # double 0.3132109973294126
	.quad	0x3fce164d535a6100              # double 0.23505560464833053
	.quad	0x3fec63d091eef21b              # double 0.88718441488851185
	.quad	0x3fd022af25a12aa6              # double 0.25211695360909869
	.quad	0x3fb113eac6134a08              # double 0.066710160597075796
	.quad	0x3fe6133996da6bd1              # double 0.68984679664151305
	.quad	0x3fe07b38af0ff545              # double 0.51504167739737083
	.quad	0x3fde83c38d458000              # double 0.47679222866099735
	.quad	0x3fe84a45b211af3f              # double 0.75906643656842465
	.quad	0x3fed7ea066ffc2ac              # double 0.92170734517101982
	.quad	0x3fbaf150d1c1c4b0              # double 0.10524468537348031
	.quad	0x3f826b6711f7b340              # double 0.0089939167364377903
	.quad	0x3fe64ee533c14b00              # double 0.69713077648552257
	.quad	0x3fe750f2c737ef45              # double 0.72863139066564797
	.quad	0x3fc47e02a39e9f5c              # double 0.16009552945365157
	.quad	0x3fd77c798d62559c              # double 0.36697233969729282
	.quad	0x3feef59b13fadd04              # double 0.96748117353755036
	.quad	0x3fe6f99395461ddd              # double 0.71796588091904889
	.quad	0x3fcdaabfc8033960              # double 0.2317733503936763
	.quad	0x3fb0060b081396e0              # double 0.062592210265929094
	.quad	0x3fea7b62c880bdf6              # double 0.82756175194475534
	.quad	0x3feb780087b012c7              # double 0.85839869023819737
	.quad	0x3fcd20fc02109490              # double 0.2275691042024488
	.quad	0x3fdc4f87262925be              # double 0.44235399939188003
	.quad	0x3fd51c5982ce3430              # double 0.32985532545064
	.quad	0x3fe9bffb657c22e5              # double 0.80468530484457956
	.quad	0x3fe82f3c61c3a6fc              # double 0.75576609701712937
	.quad	0x3fdd3802290dc640              # double 0.45654348382149479
	.quad	0x3fe31c25bba11544              # double 0.59718596121153
	.quad	0x3fe0f23acf7eed68              # double 0.52956905867123982
	.quad	0x3f81d3a545a1cd40              # double 0.0087044631838809616
	.quad	0x3fe3780e51913ca3              # double 0.60840526515120918
	.quad	0x3fd9bb0dbe9bb778              # double 0.40204185117806146
	.quad	0x3fe5e96765cef8e3              # double 0.68474168667287605
	.quad	0x3fd726eca93855e0              # double 0.36175076032063025
	.quad	0x3fe8a3163c400e4a              # double 0.76990806357975683
	.quad	0x3fd8c685a548f27a              # double 0.38711682454212559
	.quad	0x3fd02b81ac2fc694              # double 0.2526554280767439
	.quad	0x3feca28e1ce35db5              # double 0.89484315530983471
	.quad	0x3fd6f8fabb25279a              # double 0.35894649768726483
	.quad	0x3f8396d8d4a2d6c0              # double 0.0095650615588555032
	.quad	0x3fc831aab91fcad4              # double 0.18901571311251664
	.quad	0x3fd1039a3910f9e8              # double 0.26584487507707744
	.quad	0x3fc723d4ea7ed688              # double 0.180780996799218
	.quad	0x3fcebdf78134ac6c              # double 0.24017232712626269
	.quad	0x3f8014818f634980              # double 0.007851612270688646
	.quad	0x3fe8a735bfb6fe06              # double 0.77041137165355233
	.quad	0x3fcf27c842318efc              # double 0.24340155822857656
	.quad	0x3fdefa2a737c1b4c              # double 0.48401891019641563
	.quad	0x3fe9df7f01d3c016              # double 0.80853224140992341
	.quad	0x3fafb63888f9c540              # double 0.061937109680807456
	.quad	0x3fe87272e2ee657e              # double 0.76397079775340138
	.quad	0x3fe4f7f98a637042              # double 0.65527035740843353
	.quad	0x3fd8e8f2e8e03b52              # double 0.38921807042873013
	.quad	0x3fe4f05c97f9161d              # double 0.65434102709031416
	.quad	0x3fd3bf5832644a4c              # double 0.30855374260969337
	.quad	0x3fdaa4972216255c              # double 0.41629579857597832
	.quad	0x3fe26538a342cdaf              # double 0.57485610854057778
	.quad	0x3fb44d94881cf010              # double 0.079308779936525519
	.quad	0x3fe6fb9494f20591              # double 0.7182104977693361
	.quad	0x3fe5c1e88723cec6              # double 0.67992044825083364
	.quad	0x3f9116c6fbc8b420              # double 0.016688450925517739
	.quad	0x3fcf5f5fe4daef40              # double 0.24509810137339549
	.quad	0x3fc6596c4c064d60              # double 0.17460397445811804
	.quad	0x3fc4e2dd5ae16bb0              # double 0.16317336022879436
	.quad	0x3f98fa24b358efc0              # double 0.024391721197602356
	.quad	0x3fdb9e96be0d7d92              # double 0.4315544944747326
	.quad	0x3fb140ebb3547550              # double 0.067396861345021764
	.quad	0x3fd1ed6064b399d6              # double 0.28011331400048556
	.quad	0x3fd65734874d89be              # double 0.34907258237049266
	.quad	0x3fd369d57f645a02              # double 0.30333459320664258
	.quad	0x3fed4aa0ebd55bc6              # double 0.9153599363443099
	.quad	0x3feb61d0ee394ff5              # double 0.85569044616795387
	.quad	0x3fedd2356b6fc15f              # double 0.93191023811054297
	.quad	0x3fef9bda6ca5f292              # double 0.98777505131109167
	.quad	0x3fe3452df51e0a32              # double 0.6021947658012492
	.quad	0x3fe1b283106cf683              # double 0.5530410118878567
	.quad	0x3fe9d409ec2d79cf              # double 0.80713363769955915
	.quad	0x3fb3449909195cb0              # double 0.075265469285443087
	.quad	0x3fdc3d8b93800aa0              # double 0.44125642208397586
	.quad	0x3fc58e352d8206e8              # double 0.16840233537737181
	.quad	0x3fb5dfd6d5622930              # double 0.08544676503712334
	.quad	0x3fe1e7cc91eccf54              # double 0.55954578877433869
	.quad	0x3fca904c8b919668              # double 0.20752865614774696
	.quad	0x3fdaff6769f25130              # double 0.42183862062781241
	.quad	0x3fb0c08a6b178b10              # double 0.065437937875270302
	.quad	0x3fb007a9b4fc2608              # double 0.062616926847248178
	.quad	0x3fce9aa63fb43cb4              # double 0.23909452543782594
	.quad	0x3fc561d6d9d44088              # double 0.16704831730067249
	.quad	0x3f95f11c6ce2c960              # double 0.021427578111521739
	.quad	0x3fe71fa54adaf3e6              # double 0.72261299724743533
	.quad	0x3fed007af5dae6bb              # double 0.90630863207407886
	.quad	0x3fd4e3cf2c862ca2              # double 0.32640437458094074
	.quad	0x3fe75163f635368b              # double 0.72868536078904478
	.quad	0x3fbf65dc7fdf82b8              # double 0.12264803048993655
	.quad	0x3f9c113e5d808c20              # double 0.027409529168050395
	.quad	0x3fddbff2ea4c62d6              # double 0.46484063034726597
	.quad	0x3fcd353217e812ac              # double 0.22818590323745036
	.quad	0x3feacd1f2d2f7d40              # double 0.83753928017896584
	.quad	0x3fdaede290d1a1e6              # double 0.42076934950321598
	.quad	0x3fef986a5b95d164              # double 0.98735540282954703
	.quad	0x3fd3d5ebde3142c8              # double 0.30993172358016041
	.quad	0x3fe1d0b75f118c8d              # double 0.55672806327892632
	.quad	0x3f9d57c2349fdc00              # double 0.028655085050527163
	.quad	0x3fcaeab338e5c79c              # double 0.21028747823907856
	.quad	0x3fcf5d58959b4424              # double 0.2450361948490648
	.quad	0x3fe5144447ae9f1c              # double 0.65872396469510219
	.quad	0x3feb7363fa07c9f1              # double 0.85783575853412064
	.quad	0x3fd3b15d90cb6fce              # double 0.30770053043465573
	.quad	0x3fd2893353f48344              # double 0.2896240539430901
	.quad	0x3fdb8e534915d540              # double 0.4305618489955414
	.quad	0x3fe5a40ae5ed5042              # double 0.67627472789400422
	.quad	0x3fee4dbf70686640              # double 0.94699069933557922
	.quad	0x3fe653b40dc6ee94              # double 0.69771769228778391
	.quad	0x3fe75af98b68e8ee              # double 0.72985532024838817
	.quad	0x3fdc3c865fa49960              # double 0.44119414653905231
	.quad	0x3fedb915990d7f97              # double 0.92884330647574387
	.quad	0x3fe502541dca1a89              # double 0.656534250433496
	.quad	0x3fdec7a482bf47f8              # double 0.48093521850853405
	.quad	0x3fd26f15507c94f6              # double 0.28802998409294334
	.quad	0x3fe662a6cfb6e9b3              # double 0.69954243249167403
	.quad	0x3fe175e1e2569166              # double 0.54563993651076426
	.quad	0x3fd8e719dc22ddd8              # double 0.38910528657603782
	.quad	0x3fe5ed1b655dbdc0              # double 0.68519372747498863
	.quad	0x3fee63d783dc2629              # double 0.94968772653482347
	.quad	0x3f95ba091d83ce80              # double 0.021217482019848521
	.quad	0x3feddccf54fcb4fc              # double 0.93320433234262578
	.quad	0x3fe3d04e0b53a4a4              # double 0.61917783939602034
	.quad	0x3fbd85b52d1c3c58              # double 0.11532146788907605
	.quad	0x3fc0e4068923d004              # double 0.13195878692897633
	.quad	0x3fcf0db3075dc890              # double 0.2426055704086747
	.quad	0x3fdb3b0391370316              # double 0.42547692471639331
	.quad	0x3fea7cfb9196612e              # double 0.82775667605441128
	.quad	0x3fd9cec0817c0778              # double 0.40324413914651513
	.quad	0x3fca927668812368              # double 0.20759468176609208
	.quad	0x3fd7d7827601371a              # double 0.37252866290951803
	.quad	0x3fcc8c3dee48e5ec              # double 0.22302984366414991
	.quad	0x3fd62477f34b9af2              # double 0.34597586402234903
	.quad	0x3fc9e046f53f2320              # double 0.20215689635212986
	.quad	0x3fe7ee6e348c649a              # double 0.74785528434144344
	.quad	0x3fe0b331775b9e9e              # double 0.52187417327964503
	.quad	0x3fcfe7b33e95e26c              # double 0.24925842815334265
	.quad	0x3fecde7f12a4a3af              # double 0.9021602024196137
	.quad	0x3fe3a6aea00912a6              # double 0.61409693962976486
	.quad	0x3fef1ae0dfc11731              # double 0.97203105642322473
	.quad	0x3fd3d353860b9d5c              # double 0.30977333155029441
	.quad	0x3fe64a03790a4dbe              # double 0.69653485909150681
	.quad	0x3fed82ddcccea2a4              # double 0.92222490312004312
	.quad	0x3fc260c69d6285e4              # double 0.14357836422736547
	.quad	0x3fea995cea996fb2              # double 0.83122106380641569
	.quad	0x3fe3468e49d6474a              # double 0.60236277028364182
	.quad	0x3fe5c77a6ee7f281              # double 0.68060037289940578
	.quad	0x3fb83afceda3c8e8              # double 0.094650085465932343
	.quad	0x3f813653147f96c0              # double 0.0084043970709432036
	.quad	0x3fdf701f203a48c0              # double 0.49121835849031115
	.quad	0x3fc55eab3f2e4be8              # double 0.16695156655313714
	.quad	0x3fe32c4bf6d3c38f              # double 0.59915731628835711
	.quad	0x3fbc7c1b9fd8a408              # double 0.11126873638626489
	.quad	0x3fc744d10ac23600              # double 0.18178761506389662
	.quad	0x3fe2efc83485a139              # double 0.59177026994897297
	.quad	0x3fe83ee486d9ac28              # double 0.75767732942529609
	.quad	0x3fc4b83fe961c540              # double 0.16187285323716516
	.quad	0x3fd70c679bc838e4              # double 0.36013212407205075
	.quad	0x3fe7c604c520d62a              # double 0.74292219640364476
	.quad	0x3fdc01a1f4c4bbcc              # double 0.43759964850590616
	.quad	0x3fefbd6b762f836c              # double 0.99187253077626058
	.quad	0x3fefd2d1f3f093bc              # double 0.9944848789642644
	.quad	0x3fb2b13368c3bc68              # double 0.073016369893353805
	.quad	0x3fe8c786c3b598f0              # double 0.77435625290379839
	.quad	0x3fd742acc4d1c3be              # double 0.36344451161044933
	.quad	0x3fd1f8e17e2b872a              # double 0.28081548043529614
	.quad	0x3fe0d82e3b5ab426              # double 0.52638923256529746
	.quad	0x3fd1eb166dcc71ac              # double 0.27997360918541392
	.quad	0x3fe37c1fd73ccc64              # double 0.60890190161297797
	.quad	0x3fd548a54048d58a              # double 0.33255893018516558
	.quad	0x3fe8946dfe7e8528              # double 0.76811885553266723
	.quad	0x3fbe8f8aa8820190              # double 0.1193777715107045
	.quad	0x3fe162a33370b4e3              # double 0.54329071089673808
	.quad	0x3fd87d58e626c092              # double 0.38265058971138288
	.quad	0x3fc2eadef90a7e54              # double 0.14779269371227832
	.quad	0x3fe8e03c23c7e728              # double 0.77737242687655783
	.quad	0x3fe86d040d33d611              # double 0.76330759600267772
	.quad	0x3fa2d228fc319460              # double 0.036759644303665295
	.quad	0x3fbad2d16e6ad4c8              # double 0.10477932878241625
	.quad	0x3fe8325d937ed455              # double 0.75614813621235533
	.quad	0x3fea87da361d6b7d              # double 0.82908354348488411
	.quad	0x3fe8593cf082eb81              # double 0.76089331602939592
	.quad	0x3fe8464ac81a3fbd              # double 0.75858058054472333
	.quad	0x3fdf5e76dd2c2c74              # double 0.49014064406282576
	.quad	0x3fb7ac4dab75ffc8              # double 0.092472891197757368
	.quad	0x3fc31d3377f00770              # double 0.14932864528969558
	.quad	0x3fe891429d473040              # double 0.76773195951819417
	.quad	0x3fe6905983f89097              # double 0.70512080932214161
	.quad	0x3fd8c04f3626354e              # double 0.38673763549816875
	.quad	0x3fe13e470c3deeeb              # double 0.53885223761559808
	.quad	0x3fd3fc5398c16ce8              # double 0.31227579038177433
	.quad	0x3fea70f544bc662d              # double 0.82628882813441396
	.quad	0x3fe2f70bdfb71629              # double 0.59265702909823859
	.quad	0x3fdba9020e4657ac              # double 0.43219043153782866
	.quad	0x3fe60e0f483d0674              # double 0.68921627148684061
	.quad	0x3fda0cd06919114a              # double 0.40703211081951862
	.quad	0x3fccc93468e904f0              # double 0.22489028093881513
	.quad	0x3fecbbc5bc0ae89a              # double 0.89792143561432458
	.quad	0x3feaf9b4a48d88eb              # double 0.8429816450045825
	.quad	0x3fce2ff49bf7281c              # double 0.2358384858656003
	.quad	0x3fec575cd74aedc1              # double 0.88566438721994001
	.quad	0x3fe66d62ad4745f4              # double 0.7008527168601959
	.quad	0x3fe6b4cb17e0c50d              # double 0.70956949866936869
	.quad	0x3fe323cf4fd0373b              # double 0.59812131489318376
	.quad	0x3fdb5576cecfa968              # double 0.42709131428150338
	.quad	0x3fe4f925b42aecd0              # double 0.65541348637580121
	.quad	0x3fc9ee52bbf818f4              # double 0.20258554628544057
	.quad	0x3fdfad2405b76298              # double 0.49494267042386175
	.quad	0x3fa3f2c750a1b1c0              # double 0.038961628525473468
	.quad	0x3fd41bd3c55edeba              # double 0.31419843935462277
	.quad	0x3fef1a41d576859a              # double 0.97195522014606017
	.quad	0x3febfdd8a58af760              # double 0.87473709423623446
	.quad	0x3fd06adf8cc48ae2              # double 0.25652302500581758
	.quad	0x3f814dc5b526cac0              # double 0.008449120131307608
	.quad	0x3fe7233b8d2df148              # double 0.72305085729707574
	.quad	0x3fe11155db710ed6              # double 0.53336613521283982
	.quad	0x3fe3fc52984352d9              # double 0.62455110300887917
	.quad	0x3fad06af87231fc0              # double 0.05669163250564635
	.quad	0x3fe80684d7ead028              # double 0.75079576655708014
	.quad	0x3fbd6084f3aeca68              # double 0.11475401829992793
	.quad	0x3fd2c60d2ce5ff5e              # double 0.29333810219394774
	.quad	0x3fa96021d38df710              # double 0.049561554979829947
	.quad	0x3fe2721875d735bc              # double 0.57642767921213744
	.quad	0x3fed56e810295787              # double 0.91685870319882745
	.quad	0x3f7c193033a3be00              # double 0.0068599589232998248
	.quad	0x3fd17f28afe3ffe8              # double 0.27338616539782246
	.quad	0x3fbce73cb169c688              # double 0.11290339785935022
	.quad	0x3fe2b71f9321c065              # double 0.58485392319381602
	.quad	0x3fec930068ee7b5d              # double 0.89294453138777963
	.quad	0x3fc003994f5e4af8              # double 0.12510982871443566
	.quad	0x3fce1b34a6fcc768              # double 0.23520525125200753
	.quad	0x3fdaca62bd0ee830              # double 0.41860264265744984
	.quad	0x3fca2809be56bd68              # double 0.20434686464202945
	.quad	0x3fec03bf3efb32e3              # double 0.8754574041464277
	.quad	0x3fe4bdd4505b90ea              # double 0.64817252821788185
	.quad	0x3fc3caed0805c768              # double 0.15463030711867565
	.quad	0x3fb5d571bf392d48              # double 0.085288151917827126
	.quad	0x3feb80bb5df31697              # double 0.85946434354328261
	.quad	0x3fd54f0d9cf97b08              # double 0.33295002297920506
	.quad	0x3fd39aa6d1a6e1a0              # double 0.30631418680015976
	.quad	0x3fea80eaf33ddd51              # double 0.8282370329679144
	.quad	0x3feadf930d952172              # double 0.83979180004921106
	.quad	0x3fed6fba8a200055              # double 0.91988875367679646
	.quad	0x3fdd649dfb0e0078              # double 0.45926618115482354
	.quad	0x3fcde45b9ecfe95c              # double 0.23353142981052144
	.quad	0x3fd0c33b15889bb0              # double 0.26191594221966863
	.quad	0x3fc14afa1f67f244              # double 0.13510061772821491
	.quad	0x3fe4a0cef549c65e              # double 0.64462993533943425
	.quad	0x3fe6d764cfeab247              # double 0.71379318817850723
	.quad	0x3fe47a54221289dc              # double 0.63993269591110957
	.quad	0x3fd3d5e563d87c16              # double 0.30993017912436593
	.quad	0x3fe891361465e43a              # double 0.76772598251330426
	.quad	0x3fe5eb551a5d9447              # double 0.6849771037055995
	.quad	0x3fe113e7a6f64ecb              # double 0.5336797963122647
	.quad	0x3fedc73ebe223dba              # double 0.93057191024302388
	.quad	0x3fecb56e75295dee              # double 0.89714739688036871
	.quad	0x3fd1db527179d1c2              # double 0.27901135522486353
	.quad	0x3fdf2afa0ac4cc26              # double 0.48699809123644611
	.quad	0x3fea268ea14f611a              # double 0.81720668321489431
	.quad	0x3fdded20d169c738              # double 0.46759815645701819
	.quad	0x3fe09085651005ec              # double 0.51764173258578472
	.quad	0x3fd3405d81a39410              # double 0.30080354366356321
	.quad	0x3fd8f423e7bc2274              # double 0.38990113859521291
	.quad	0x3fd012341a0b55fc              # double 0.2511110548342399
	.quad	0x3fea2a7e623cd8ce              # double 0.81768721758887764
	.quad	0x3fd99cc67b3c7f28              # double 0.40019380602642451
	.quad	0x3fe70e6875eae497              # double 0.72050879507800658
	.quad	0x3fda7a3bb2e9a0f4              # double 0.41371052238402162
	.quad	0x3fd17379743a77da              # double 0.27267299986294591
	.quad	0x3fecbe7bff991afb              # double 0.89825248643396038
	.quad	0x3fdb32ff368685e2              # double 0.42498760533098168
	.quad	0x3fcc7858651929e4              # double 0.22242264687004287
	.quad	0x3fb15d63b807b1d8              # double 0.067831261090481987
	.quad	0x3fd9adf1b3670004              # double 0.40124170799026637
	.quad	0x3fde77697fd4850a              # double 0.47603833659566475
	.quad	0x3fdd68dcb0c24520              # double 0.45952527295692569
	.quad	0x3fd75b0a0141c7b4              # double 0.36493158457517016
	.quad	0x3fb19f04a65b8f50              # double 0.068832674612676614
	.quad	0x3fed4a231e01410f              # double 0.91529994831401662
	.quad	0x3fef6136986a1e46              # double 0.98061685341321758
	.quad	0x3fde81c8b2e63404              # double 0.47667138548496291
	.quad	0x3fe9fa318e6a55d0              # double 0.81179120841505359
	.quad	0x3fd2de098d1592c4              # double 0.29480208184967815
	.quad	0x3fcbe6d9c6259d6c              # double 0.21798250365393856
	.quad	0x3fd1364cf631d2a2              # double 0.26893924753611931
	.quad	0x3fea8b0f9fa07935              # double 0.8294752233230499
	.quad	0x3fb5d2a64ec7a3f0              # double 0.085245508416519788
	.quad	0x3fdea7ec35f72a84              # double 0.47899918813769937
	.quad	0x3fba2f6d61715870              # double 0.10228618267987755
	.quad	0x3fd86816e41f442e              # double 0.38135311391403348
	.quad	0x3fef47fa37540ec3              # double 0.97753630453413398
	.quad	0x3fecae18812ee1b7              # double 0.89625191908913038
	.quad	0x3fe307962b03c9d1              # double 0.59467609788253573
	.quad	0x3fe3acfbfa246cb4              # double 0.61486624580302029
	.quad	0x3f8ede659a790a40              # double 0.015072625900875214
	.quad	0x3fbd5a2d79f762a8              # double 0.11465725162214346
	.quad	0x3fc894a6ad69a600              # double 0.19203647105614152
	.quad	0x3fdfbeb6de579b6e              # double 0.49601527894122099
	.quad	0x3fd028b66178847a              # double 0.25248488920812628
	.quad	0x3fcdbf368feffce0              # double 0.23239786174961008
	.quad	0x3fcc9ff2184e0f28              # double 0.22363115488780605
	.quad	0x3fde577cf9419ab0              # double 0.47408985463554654
	.quad	0x3fd579232a28be8e              # double 0.33551863782029379
	.quad	0x3f9d29ce9fbb98c0              # double 0.028479794024769189
	.quad	0x3fefbcd570d5123d              # double 0.99180099523125131
	.quad	0x3fed6ae9b07e58b9              # double 0.9193008849276999
	.quad	0x3fdc91b72a8b4b08              # double 0.44639376787851903
	.quad	0x3feb6ea02c9b82a5              # double 0.85725411140818564
	.quad	0x3fe051e7b16c0c98              # double 0.50999817517039769
	.quad	0x3fd9006855dc561c              # double 0.39064987549622443
	.quad	0x3fe9854d6e647c54              # double 0.79752227364577743
	.quad	0x3fccfde107b1e8b0              # double 0.22649777293901741
	.quad	0x3fedc55c0906dd82              # double 0.93034173739481241
	.quad	0x3fe4ddabd9d37aca              # double 0.65205948394926705
	.quad	0x3fe977a9ff781ed4              # double 0.79585742851574048
	.quad	0x3fef9fa80d95ea90              # double 0.98823931363524942
	.quad	0x3fd414b8892529be              # double 0.31376469986994582
	.quad	0x3fac980fb438aad0              # double 0.05584763598411302
	.quad	0x3fda6ceffbb5405c              # double 0.41289901333676027
	.quad	0x3fcf142798dce870              # double 0.24280257190713739
	.quad	0x3fb5947c3dc84370              # double 0.084296956142009937
	.quad	0x3fe5f0031ee7a8db              # double 0.68554836307637446
	.quad	0x3fc4713005d8562c              # double 0.15970421109584387
	.quad	0x3febe4eb05ba3bcf              # double 0.87169409865043146
	.quad	0x3fe996d7f88430cb              # double 0.79966352976182387
	.quad	0x3fc6240e1ec33338              # double 0.17297531606745919
	.quad	0x3fe5c6967f6bff1b              # double 0.68049168479044242
	.quad	0x3fa9903f6ad08020              # double 0.049928647793649583
	.quad	0x3fd7ebb6b3b94dda              # double 0.37376182128101976
	.quad	0x3fd2c52451fecd46              # double 0.29328258521418993
	.quad	0x3fc123fc74ef39e8              # double 0.13391071042720104
	.quad	0x3fd516381d1be6fa              # double 0.32948115198779215
	.quad	0x3fe1644c2746d4be              # double 0.54349334403254779
	.quad	0x3fbc7fc76d7274f8              # double 0.11132475301788591
	.quad	0x3fed7a2ec44d80ea              # double 0.92116487827663929
	.quad	0x3fed181ebf171a66              # double 0.90919434854806691
	.quad	0x3fdfaee88a75e57c              # double 0.49505055924927155
	.quad	0x3fdf3a8dea214c80              # double 0.48794887413277621
	.quad	0x3fd2d0cb94146e8e              # double 0.29399384938162931
	.quad	0x3fdb17fb6017f47a              # double 0.42333874115121939
	.quad	0x3fd074f91003e252              # double 0.25713945926648762
	.quad	0x3fe587806bbb5ae5              # double 0.67279072800996842
	.quad	0x3fe4c247c27d40aa              # double 0.64871585832772394
	.quad	0x3fec672501dc3e10              # double 0.88759088862747326
	.quad	0x3fe3ce2955fe070c              # double 0.61891619487161753
	.quad	0x3feb077a94aa406f              # double 0.84466294323102697
	.quad	0x3fe08af1e252eb35              # double 0.51696104244124419
	.quad	0x3fe9b9ce85bb2e43              # double 0.8039314853608136
	.quad	0x3fe25e7cd166ddd1              # double 0.57403412722390545
	.quad	0x3fc75bc18aa854e8              # double 0.18248767156970946
	.quad	0x3fd15ee64e38e8ca              # double 0.27141721381088912
	.quad	0x3fee50b950f0fe70              # double 0.94735399063934089
	.quad	0x3fc36789ef8e0548              # double 0.15159725377092514
	.quad	0x3fdb578eac2229cc              # double 0.4272190743437505
	.quad	0x3fe4396f8d49f63c              # double 0.6320111999081699
	.quad	0x3fe7db475d19569c              # double 0.74551742728609183
	.quad	0x3fd2a6741b48f236              # double 0.29140951790376179
	.quad	0x3fec62e1a7aa1433              # double 0.88707049128482252
	.quad	0x3fd10b96d7da3be6              # double 0.26633235053389936
	.quad	0x3fe661090eafc5ab              # double 0.69934513920286656
	.quad	0x3fe99fdd863081ba              # double 0.8007648106468459
	.quad	0x3fe5232dbe212874              # double 0.66054427275345384
	.quad	0x3fe3594196191a1b              # double 0.60464553180719649
	.quad	0x3fd6ab946b1cb1dc              # double 0.35422239742436346
	.quad	0x3fe84ef14d54c324              # double 0.75963654617053011
	.quad	0x3fd015414f808af4              # double 0.25129730953101093
	.quad	0x3fefe5f8c02ae0c9              # double 0.99682271511758202
	.quad	0x3fd03f3418e60644              # double 0.25385763579842924
	.quad	0x3fb23eab00b2ff40              # double 0.071268737478928479
	.quad	0x3fd83caa87bd0202              # double 0.37870276694960137
	.quad	0x3fde69e2e28cfffc              # double 0.47521278499698361
	.quad	0x3fd8a50d9ff39f10              # double 0.38507404918935695
	.quad	0x3fcb585a76a05d8c              # double 0.21363383095079447
	.quad	0x3fe1e1e1c20bd7d2              # double 0.55882347011242417
	.quad	0x3fe1bd55e397de20              # double 0.55436224414637891
	.quad	0x3fce875123ed13f8              # double 0.23850454572871604
	.quad	0x3fe135a9cc63b647              # double 0.53780069274734721
	.quad	0x3fd0791ef228b0e8              # double 0.25739263199171925
	.quad	0x3fdb819d3847f716              # double 0.42978601928904092
	.quad	0x3fcd9c801933a984              # double 0.23133851271206762
	.quad	0x3fcc243651231920              # double 0.21985510789654317
	.quad	0x3fe9b00eb2f76c5c              # double 0.80274138407129269
	.quad	0x3feeff4481580a5f              # double 0.96866059553606109
	.quad	0x3fe4770e863bf33e              # double 0.6395332929383597
	.quad	0x3fe06fa10f74764a              # double 0.513626604257021
	.quad	0x3fd29fe2ddffd36e              # double 0.29100867919560514
	.quad	0x3fea5fbed00f3868              # double 0.82418766628849216
	.quad	0x3fef8abbbb03e82b              # double 0.98568522001665337
	.quad	0x3fec9077ccddaf91              # double 0.89263525021441315
	.quad	0x3fe6121d4d3275df              # double 0.68971123769341236
	.quad	0x3f9d4256ee0a40c0              # double 0.028573377875148465
	.quad	0x3fe06ac1ea027281              # double 0.51303191857330444
	.quad	0x3fdb1a1ec1b2fe66              # double 0.42346924701630539
	.quad	0x3fb69aa39ab01cb0              # double 0.088297105088815497
	.quad	0x3fecacb986723f79              # double 0.89608455904998074
	.quad	0x3fada7c44f817660              # double 0.057920584397589847
	.quad	0x3fcc473c6f5a73d4              # double 0.22092395245718299
	.quad	0x3fda9fed912ce20e              # double 0.41601123025205389
	.quad	0x3fbb0ee228b94128              # double 0.10569585317830799
	.quad	0x3fdd5162d91adbbe              # double 0.45809241487171082
	.quad	0x3fc680a8d85772a0              # double 0.17580137790254913
	.quad	0x3fea3a897cf1b60c              # double 0.8196456375423522
	.quad	0x3feed5b25b93e516              # double 0.96358602415344552
	.quad	0x3febb94d53eec3b3              # double 0.86636988061046905
	.quad	0x3fa21499cae75e00              # double 0.035313421267058942
	.quad	0x3fdcfefda0154512              # double 0.45306339867700374
	.quad	0x3fe1d7e8e153f40a              # double 0.55760616311420219
	.quad	0x3fce7202cd234da4              # double 0.2378543378496093
	.quad	0x3fe9d91ec73ab145              # double 0.80775393402067464
	.quad	0x3fee8bf4efb9b41b              # double 0.95458456822746329
	.quad	0x3fe3c4c947de17e6              # double 0.61777175938254625
	.quad	0x3f78762a86d94e00              # double 0.0059720669938374549
	.quad	0x3fe5ca0fa548fa88              # double 0.68091566354981214
	.quad	0x3fc4d33a884ebc68              # double 0.1626961865963239
	.quad	0x3fe0707ba9ac4ce6              # double 0.5137308420111395
	.quad	0x3fbed6ed8bb712b8              # double 0.12046703969015027
	.quad	0x3f8a1dfeceed13c0              # double 0.012752524080164807
	.quad	0x3fc875317c6f7520              # double 0.19107645584055266
	.quad	0x3fedcd6b7527285f              # double 0.93132565385281996
	.quad	0x3fe073786dd958bd              # double 0.51409551100621054
	.quad	0x3fe1e85fdcad6406              # double 0.55961602307354563
	.quad	0x3fe50dfd81eeb602              # double 0.65795779588160053
	.quad	0x3fd0b1f97f9dcd1e              # double 0.26086270773449083
	.quad	0x3fc9c6bda80fc008              # double 0.20137758928422067
	.quad	0x3fc8c12a69ee69d8              # double 0.19339494869639284
	.quad	0x3fd03e7a71d565f2              # double 0.25381337276993954
	.quad	0x3fec718dca574809              # double 0.88886155624118246
	.quad	0x3fecf75f9fe356a3              # double 0.90519696453221277
	.quad	0x3fb7f3853ca32338              # double 0.093559577278154005
	.quad	0x3fe65e2a18bda522              # double 0.69899468261897746
	.quad	0x3fde2ffbc2962da6              # double 0.47167867663002949
	.quad	0x3fe2adc53166d64c              # double 0.58371219300051669
	.quad	0x3fed2d890eb648aa              # double 0.91180851815649544
	.quad	0x3feff7fdc13fbba0              # double 0.99902236694275714
	.quad	0x3fe5bfee9d8daf8f              # double 0.67967921039734047
	.quad	0x3fd76179bc0af180              # double 0.36532443393277703
	.quad	0x3fe7cf05334929fc              # double 0.7440210344005318
	.quad	0x3fa83b3930e772d0              # double 0.047326838702905882
	.quad	0x3fc4d2d67040dfe0              # double 0.1626842544662841
	.quad	0x3fc5866579f95b64              # double 0.16816395240558812
	.quad	0x3fee352a44e53899              # double 0.94398988205081757
	.quad	0x3fefdc62fd8a1b7e              # double 0.99565267104559019
	.quad	0x3fb7056fd8cd4700              # double 0.089926710539000254
	.quad	0x3fe52cfcee621aee              # double 0.66174170073722194
	.quad	0x3fdf628625fc67f2              # double 0.49038842877928268
	.quad	0x3fe9ee9cd76d331e              # double 0.81037752223491899
	.quad	0x3fdf3a1687bb376a              # double 0.48792041068087733
	.quad	0x3fda67aea1885a08              # double 0.41257825636549272
	.quad	0x3fd85b480c36bc90              # double 0.3805713767314467
	.quad	0x3fa182e6f53db100              # double 0.034201829373019521
	.quad	0x3fdcaf6d461b5ca6              # double 0.44820720526099433
	.quad	0x3fe055929a437b9c              # double 0.51044588212595299
	.quad	0x3fee0635b9ebb5cf              # double 0.93825804054875472
	.quad	0x3fecfef22ad7bc7b              # double 0.90612133376806925
	.quad	0x3feac5f0095b98be              # double 0.83666230991072843
	.quad	0x3fecfcbe7efd5260              # double 0.90585255434650591
	.quad	0x3fe5121400726373              # double 0.65845680320044975
	.quad	0x3fd9320681bb6aac              # double 0.39367830914640467
	.quad	0x3fca0a4bb2962590              # double 0.20343919963879076
	.quad	0x3fc90df3dcc8ac4c              # double 0.19573829918349117
	.quad	0x3fa7af47ceb07d60              # double 0.046259159069672817
	.quad	0x3f1159b98658c000              # double 6.6186855826044777E-5
	.quad	0x3fcbfa03d293b134              # double 0.21856735021663953
	.quad	0x3fda68c17a7b74a4              # double 0.41264378510624966
	.quad	0x3fc7ef06edf96788              # double 0.18698202724300139
	.quad	0x3febb58d30a7e46d              # double 0.86591205123035098
	.quad	0x3fe2b2772640e2ea              # double 0.58428533049945242
	.quad	0x3fd3828011bc8f9c              # double 0.3048401044090896
	.quad	0x3fddc2bdd029faea              # double 0.46501107529176855
	.quad	0x3fbdfdd9c34f0b20              # double 0.11715470331459388
	.quad	0x3fc36e24f638214c              # double 0.1517988397829505
	.quad	0x3fef94c6c1b5ef4d              # double 0.98691118082158768
	.quad	0x3fe64d56f7e487e9              # double 0.69694088379423846
	.quad	0x3fe8fa633bca18a0              # double 0.78056489637016923
	.quad	0x3fb4f855007d1e28              # double 0.081914246196099882
	.quad	0x3fdf6aaa8a41047c              # double 0.49088538647999491
	.quad	0x3fe938a315b38acd              # double 0.78816370237867661
	.quad	0x3fe7f8174ad273da              # double 0.74903454412162351
	.quad	0x3fe9b7f51c093bd1              # double 0.80370574451250765
	.quad	0x3fed55fb8defa67c              # double 0.91674592706586066
	.quad	0x3fefb3557879399b              # double 0.99064134149539329
	.quad	0x3fe67dbe5b091bc5              # double 0.70284955768954005
	.quad	0x3fb1efc1f1e86670              # double 0.070064660605930973
	.quad	0x3fe3c3b9398fd245              # double 0.61764203302897924
	.quad	0x3fef87bbe084631e              # double 0.9853190789318409
	.quad	0x3fc4235ffd084838              # double 0.15732955794425307
	.quad	0x3feb1c48197d54ca              # double 0.84720234850342391
	.quad	0x3fefcd0429bc9add              # double 0.99377639915186544
	.quad	0x3fe75685a54da7ac              # double 0.7293117741185049
	.quad	0x3fef292e280f1a1c              # double 0.97377689193746475
	.quad	0x3fb1023a2d3ce4e0              # double 0.066440235180283747
	.quad	0x3fa4deddf37209e0              # double 0.040762840239967124
	.quad	0x3fd4e222a5cba512              # double 0.32630220595326975
	.quad	0x3fe2319ba06ab10a              # double 0.56855565387152862
	.quad	0x3fd5ee5261a8c42e              # double 0.34267100846324439
	.quad	0x3fd7556a0301108c              # double 0.36458826344847561
	.quad	0x3fdcc6d39e3b513a              # double 0.44963541462245227
	.quad	0x3fa9302fa4b41380              # double 0.049195755820654163
	.quad	0x3fdb28e101641d7a              # double 0.42437005172583719
	.quad	0x3fe99f68a84bfa96              # double 0.8007090842291571
	.quad	0x3fead431ecbc9b90              # double 0.83840271222730856
	.quad	0x3fcd7452fc883ab4              # double 0.23011243181868724
	.quad	0x3fbc0347c7e878d8              # double 0.10942505484169673
	.quad	0x3fac3944fd61bd30              # double 0.055124431543726593
	.quad	0x3fea11c75b04a54d              # double 0.81467025544149296
	.quad	0x3fedf7e89e127abb              # double 0.93651228784059215
	.quad	0x3fe7fe8612e39ee5              # double 0.74981979073797034
	.quad	0x3feff7b774336ce3              # double 0.99898884482845706
	.quad	0x3fc7370ac7c8cd4c              # double 0.18136725192162328
	.quad	0x3facbe67378c2e60              # double 0.056140161066733141
	.quad	0x3fd1137477e58a48              # double 0.2668124361863744
	.quad	0x3feb88ba05fee2d7              # double 0.86044026537919194
	.quad	0x3fd7bb1305dc8cee              # double 0.37079310963072387
	.quad	0x3fb423668acdc438              # double 0.078665169608726937
	.quad	0x3fee1541873f4528              # double 0.94009472289522921
	.quad	0x3fc23b945b3e5ab4              # double 0.14244322257282749
	.quad	0x3feee93389b2d416              # double 0.9659669579911021
	.quad	0x3fe3b0d2fbeeb991              # double 0.61533498006410714
	.quad	0x3fd4f490c1c5be7c              # double 0.3274270908650363
	.quad	0x3fe74d68cbe0ae6b              # double 0.72819938487869018
	.quad	0x3fc6d6e72f009db8              # double 0.17843332095183739
	.quad	0x3f9606a6a2cd8e40              # double 0.021509746252730944
	.quad	0x3fe86916d530b714              # double 0.76282827032784661
	.quad	0x3fc15496e95b33f0              # double 0.13539396662090963
	.quad	0x3fb204b42e05cff0              # double 0.070384274707805394
	.quad	0x3fd32959f2bb5a3a              # double 0.29939888672143733
	.quad	0x3fed3d13803fdfdb              # double 0.91370558785183265
	.quad	0x3fe5ab6497de1bd4              # double 0.67717199002879136
	.quad	0x3fdc82578fc42cb0              # double 0.4454554466216889
	.quad	0x3fdd0c9ddf938c04              # double 0.45389506181362571
	.quad	0x3fdb368b330c057e              # double 0.42520408616118022
	.quad	0x3fde11e7b45d3a4a              # double 0.46984284032524626
	.quad	0x3fee5382ca15b5bd              # double 0.94769420118034697
	.quad	0x3fcd4557035b7f6c              # double 0.2286785856622332
	.quad	0x3fd4afe7a3c9ade0              # double 0.32323637957480678
	.quad	0x3fd89b3da9dafa56              # double 0.38447515094222717
	.quad	0x3fd4098e8c45046e              # double 0.31308330248072636
	.quad	0x3f8748cb69d86e40              # double 0.011369313399931191
	.quad	0x3fd66e63eb293fa2              # double 0.3504876896376975
	.quad	0x3fd4d4074f52c5ca              # double 0.32544119593066212
	.quad	0x3fe2e33f45bd1d9c              # double 0.59024013157697963
	.quad	0x3fee3fa46e70e615              # double 0.94526883669385831
	.quad	0x3fe925f09d0116b1              # double 0.78588133492367807
	.quad	0x3fda3137f21ab03a              # double 0.40925406115525542
	.quad	0x3fd5bb879fb5b3ea              # double 0.33957090946824897
	.quad	0x3fcef5dce2e93940              # double 0.24187813834800842
	.quad	0x3fe42c9145f69e3e              # double 0.63044036545483784
	.quad	0x3fe42d441d27fcdc              # double 0.63052564329691618
	.quad	0x3febf1e8d15f21bc              # double 0.87327996151821407
	.quad	0x3fcc19ef378ef408              # double 0.21954145634472888
	.quad	0x3fd55a7a74f968ca              # double 0.33364736006991491
	.quad	0x3fe4feb15cd767bd              # double 0.65609043248263499
	.quad	0x3fe4b31e357be884              # double 0.64686499067399028
	.quad	0x3fe2021dcd8b39c1              # double 0.56275835175784306
	.quad	0x3fe3804806d93f94              # double 0.60940934503195132
	.quad	0x3feab68f27afad71              # double 0.83478505851000595
	.quad	0x3fd296286a35343a              # double 0.29041490909441203
	.quad	0x3fd62147b71c1f06              # double 0.34578125840970164
	.quad	0x3fdad407916cb1c6              # double 0.41919125749225505
	.quad	0x3fde22ae8ac27d32              # double 0.47086680937532599
	.quad	0x3fdb50fb6c9fe4cc              # double 0.42681775672788258
	.quad	0x3feb20343368fbf4              # double 0.8476811412909897
	.quad	0x3fef5c6c4d6e078c              # double 0.98003211138733226
	.quad	0x3fe2cd8990b0b9dd              # double 0.58759001025992641
	.quad	0x3feaf0a4e288e5ce              # double 0.84187549824781072
	.quad	0x3fe0c1770f642df3              # double 0.52361634260290513
	.quad	0x3fef68ba0c6330fd              # double 0.9815340272848797
	.quad	0x3fd0e4489d8e11a0              # double 0.26393332849718298
	.quad	0x3fd1076382de3c96              # double 0.26607597141350803
	.quad	0x3fa03ad3a1a70bc0              # double 0.031698811991666798
	.quad	0x3fef4f1f02db0ee1              # double 0.97840834195855219
	.quad	0x3fe6b2e6fbdc160d              # double 0.70933865729665657
	.quad	0x3fda2a892d147928              # double 0.40884618189183408
	.quad	0x3fe33b65d31c3a88              # double 0.60100070221399537
	.quad	0x3fabb8c8fb404d10              # double 0.054144173307714039
	.quad	0x3fe99e0d0931cdfa              # double 0.80054332538423911
	.quad	0x3fc11606dbfc57d8              # double 0.13348470441331872
	.quad	0x3fe81c3136df4881              # double 0.75344143597818924
	.quad	0x3fd0762ebc7cdef6              # double 0.25721329123506054
	.quad	0x3fef4b0b4e52fa6a              # double 0.97791066453630759
	.quad	0x3fef38672d9cff77              # double 0.97563513668863677
	.quad	0x3fde42f4be6b6518              # double 0.47283667178779032
	.quad	0x3fe1f6da4ce0319a              # double 0.56138339056774389
	.quad	0x3fdcd38ae6eab5c6              # double 0.45041153479072837
	.quad	0x3fd463ff864c82c8              # double 0.3186034022819908
	.quad	0x3fe7ec95fc7917c2              # double 0.74763011275421598
	.quad	0x3fcc1d7e2ad6e280              # double 0.21965005008475558
	.quad	0x3fd79662f99c7f16              # double 0.36855387092690373
	.quad	0x3fe3f7d111542b16              # double 0.62400105843093701
	.quad	0x3fecf0295041edce              # double 0.90431657481479433
	.quad	0x3feb75fb5be7f6fe              # double 0.85815208387768371
	.quad	0x3fd6ccd293ab5160              # double 0.35625137730428058
	.quad	0x3fee8fc3708911c3              # double 0.95504924754691733
	.quad	0x3fdda68f1506c352              # double 0.46329094937668913
	.quad	0x3fed8113ee079f37              # double 0.92200657358350824
	.quad	0x3fd176f5ac41e5de              # double 0.27288572141659795
	.quad	0x3fe155ea3cde11a8              # double 0.5417376698319929
	.quad	0x3feb5404a02ca37e              # double 0.85400611194664555
	.quad	0x3fd9626aa159e52a              # double 0.39663186795185601
	.quad	0x3fe30452512e4171              # double 0.59427753310778375
	.quad	0x3febf57b6787217e              # double 0.87371607036861554
	.quad	0x3fc51036345c7798              # double 0.16455724293421947
	.quad	0x3fe90d29c8bb1db8              # double 0.78285683827646491
	.quad	0x3fe323bf6e2febce              # double 0.59811374207435519
	.quad	0x3f9d48a99060b6a0              # double 0.028597497403260008
	.quad	0x3fd6c7011518cda0              # double 0.35589625416033677
	.quad	0x3fe1f51b2d06bfc0              # double 0.56117018503390881
	.quad	0x3fc1486f145f75d0              # double 0.13502300734300698
	.quad	0x3f99b84afed06920              # double 0.025117084314936311
	.quad	0x3fdaf33872425dea              # double 0.42109500082139439
	.quad	0x3f8f5aea24c35880              # double 0.015310124632758937
	.quad	0x3fe2c47a78796681              # double 0.5864841797840229
	.quad	0x3fecae8d3fc73016              # double 0.89630758721023329
	.quad	0x3feae582665c460c              # double 0.84051628105425058
	.quad	0x3fe1afa5801c3d6d              # double 0.55269122144265526
	.quad	0x3fdf1e3e78a57618              # double 0.48622094900005797
	.quad	0x3fe92a4d6771dd76              # double 0.78641386226710952
	.quad	0x3fe09f730a422e5a              # double 0.51946403506867544
	.quad	0x3feea2ccb4a1c20d              # double 0.95737300185834473
	.quad	0x3fe5cfa6a282a882              # double 0.68159801235493966
	.quad	0x3f8e38f5888b4e00              # double 0.014757078389641798
	.quad	0x3fe38fdc51a4fb96              # double 0.61131111093696933
	.quad	0x3fb0ca07cb6b1b08              # double 0.065582739985171057
	.quad	0x3fbf7793e4e30488              # double 0.12291836107307763
	.quad	0x3fe3327e394ed314              # double 0.59991370385123099
	.quad	0x3fe5a3126d09e255              # double 0.67615624710658528
	.quad	0x3fefda16a0312a28              # double 0.99537211692342442
	.quad	0x3fc579e42166e634              # double 0.16778232222513767
	.quad	0x3fe6e6414ce81467              # double 0.71560730953991658
	.quad	0x3febde0b63167bd9              # double 0.87085503914920104
	.quad	0x3feab484adf5b1cd              # double 0.83453592278015665
	.quad	0x3fc5dc19d6c1e040              # double 0.1707794474239126
	.quad	0x3fd4d1b96fe367de              # double 0.3253005592974868
	.quad	0x3febb76c45d50f81              # double 0.86614049567332085
	.quad	0x3fac63cc632e1100              # double 0.055448901278426277
	.quad	0x3fd7ef29b7dc0e36              # double 0.37397234873808161
	.quad	0x3fcd0d8ee4794564              # double 0.22697626262610548
	.quad	0x3fdd0529c58f30c0              # double 0.45344013493446411
	.quad	0x3fe33f901137b9b2              # double 0.60150912630870423
	.quad	0x3fe2482e432c59ad              # double 0.57131112212919322
	.quad	0x3fb7eddff8cad958              # double 0.093473432770087128
	.quad	0x3fb0177ab4517568              # double 0.062858265898702137
	.quad	0x3fed6b632af1f91c              # double 0.91935881030784427
	.quad	0x3fe4a02f4116fd6e              # double 0.64455378258564422
	.quad	0x3fe68cac4de6750d              # double 0.70467200484168446
	.quad	0x3feda262729e3116              # double 0.92607233415904733
	.quad	0x3fec23b03a2ce915              # double 0.87935649263752913
	.quad	0x3feab351caa2ebb9              # double 0.83438958718703937
	.quad	0x3fe2221e3846fbed              # double 0.56666480056435165
	.quad	0x3fe05402b006a915              # double 0.51025518779832402
	.quad	0x3fe8eab9f5a01b60              # double 0.7786531255122604
	.quad	0x3fef74742e29fe70              # double 0.98296555534757424
	.quad	0x3fe5a85f5eff7fcd              # double 0.67680328897767483
	.quad	0x3fb6eafe865f1308              # double 0.089523227506173808
	.quad	0x3fd8cbf28ad22cac              # double 0.38744796330201825
	.quad	0x3fba25191501ac40              # double 0.10212857020239685
	.quad	0x3fc8c1b13f0cbf0c              # double 0.19341102198222193
	.quad	0x3fe78a4d96298bed              # double 0.73563269928524522
	.quad	0x3fd5a1fb6f846ec2              # double 0.33801160707819744
	.quad	0x3fd626ba234d83a2              # double 0.34611371467149799
	.quad	0x3fe6e45f108a9ba5              # double 0.71537736159085752
	.quad	0x3fe74dc80c9e7282              # double 0.72824480499873823
	.quad	0x3fedaf1e3c702493              # double 0.9276267223769018
	.quad	0x3fe71340359c2a11              # double 0.7210999533720629
	.quad	0x3fe85db963df9fcc              # double 0.7614409399657176
	.quad	0x3fd2c7e21587abf4              # double 0.29344989874397176
	.quad	0x3fe2d0d3c5399d4c              # double 0.58799160500067549
	.quad	0x3fe977b41d3261c6              # double 0.79586225225926266
	.quad	0x3fcdd49cd11978a8              # double 0.23305092058121102
	.quad	0x3fd88a8306787b28              # double 0.38345409042260536
	.quad	0x3f74be366fef9700              # double 0.0050642134146750006
	.quad	0x3fa5eb4d8496f6c0              # double 0.042810842929140502
	.quad	0x3fa342e4439ed260              # double 0.037619717840617239
	.quad	0x3febc4643b19bc8f              # double 0.86772357504914222
	.quad	0x3fbead619851f8a8              # double 0.11983308762316602
	.quad	0x3fa0e90279b61410              # double 0.033027722699479622
	.quad	0x3fd5ae13c00a947c              # double 0.33874982599292713
	.quad	0x3fe3c2fc7fc95958              # double 0.61755204160980792
	.quad	0x3fa79f43c5678f50              # double 0.046136968466980677
	.quad	0x3fec2f0b8edd1c06              # double 0.88074281600063453
	.quad	0x3fb06a4d2d0bab98              # double 0.064122031686265735
	.quad	0x3fd89f56e22870e2              # double 0.38472530446757791
	.quad	0x3fc606fbfab2863c              # double 0.17208814374048298
	.quad	0x3fe92e52f90c6bea              # double 0.78690479891099341
	.quad	0x3fe486d70b1f9f20              # double 0.6414599625831876
	.quad	0x3fee8268add6c5e5              # double 0.95341905548974337
	.quad	0x3febc86dfeb29856              # double 0.86821651216156215
	.quad	0x3fdf3e3022822f06              # double 0.4881706559178699
	.quad	0x3fee140ea958c4c9              # double 0.9399483974031223
	.quad	0x3fc2112d2d86b884              # double 0.14114918444596836
	.quad	0x3fe27639feef0770              # double 0.57693195144405074
	.quad	0x3fc04cbfa791e5d0              # double 0.12734218294262556
	.quad	0x3fd4f389d35915a8              # double 0.32736440314723803
	.quad	0x3fe463dcde417a1c              # double 0.63719027909593562
	.quad	0x3fe8f2f5b89fe77c              # double 0.77965818461892366
	.quad	0x3fe8ec9a65e6b21f              # double 0.77888221647805611
	.quad	0x3fec58dac1f2eef1              # double 0.88584649925857495
	.quad	0x3fd148a7a8089696              # double 0.27005950364614628
	.quad	0x3fefa376b75829c1              # double 0.98870406922770126
	.quad	0x3feffa58af6c429a              # double 0.99930986654551934
	.quad	0x3fd340294ee32ee6              # double 0.30079109863139164
	.quad	0x3fe5af73ede2b4c8              # double 0.67766758405709826
	.quad	0x3fc304c5b7202c84              # double 0.14858313981708104
	.quad	0x3fe4925f74975bc2              # double 0.64286778232314412
	.quad	0x3fe6de9916627884              # double 0.71467260715486747
	.quad	0x3fd56e970ec35b3a              # double 0.33487488214216266
	.quad	0x3fece4e72dced565              # double 0.90294226595748894
	.quad	0x3fea458d28deda2c              # double 0.82099016172907601
	.quad	0x3fe84ff59137a79e              # double 0.75976065027974804
	.quad	0x3fd986df69f39732              # double 0.39885697695568745
	.quad	0x3fe83d6b70c4ebf2              # double 0.75749752068747811
	.quad	0x3fcbad1147c6f3d0              # double 0.21621910099739106
	.quad	0x3fdae1a67183e198              # double 0.42002259335961289
	.quad	0x3fef204859e132b0              # double 0.97269074968934
	.quad	0x3fc90414b00f9e44              # double 0.19543703648308697
	.quad	0x3fed4c66fa203946              # double 0.91557644703588248
	.quad	0x3fd0ad884ec6c7b0              # double 0.26059158032432617
	.quad	0x3febdd744ac8cd24              # double 0.87078299146961457
	.quad	0x3fb14c7368a80158              # double 0.067572796870085994
	.quad	0x3fe6f160ca840892              # double 0.71696509889467763
	.quad	0x3fecf0bf871874c8              # double 0.90438820253225405
	.quad	0x3fef2908b375663a              # double 0.97375903177743983
	.quad	0x3fe4bb984cb6e951              # double 0.64789977057743375
	.quad	0x3fdc89d8261d335c              # double 0.44591335031582502
	.quad	0x3fea4307513bc54c              # double 0.82068220010675352
	.quad	0x3fd719b6e59580fe              # double 0.360944484904408
	.quad	0x3fe499ba2d43c12b              # double 0.64376553383593682
	.quad	0x3fe26167f526c1d8              # double 0.57439039116985224
	.quad	0x3fca907f04a7523c              # double 0.20753467299677364
	.quad	0x3fe1a70627c3afe4              # double 0.55163867727742089
	.quad	0x3fe3cd45ea4db372              # double 0.61880775225072981
	.quad	0x3fd5e7dec9543c26              # double 0.34227723752059303
	.quad	0x3fd1a7d337d7773a              # double 0.27586822942054179
	.quad	0x3fe53985b7092282              # double 0.66327176808506771
	.quad	0x3fe57d63a3492bc8              # double 0.67155630008471068
	.quad	0x3fbffa384e6dddd8              # double 0.1249118033864457
	.quad	0x3fd2b2606478e0b2              # double 0.29213723956810178
	.quad	0x3fd520614e9d3986              # double 0.3301013248173138
	.quad	0x3fd9706ddea7f2f4              # double 0.39748713248972867
	.quad	0x3faf0308ff7e5140              # double 0.060570031345522413
	.quad	0x3fd7193f8860fc9e              # double 0.36091602628943942
	.quad	0x3fea028ef62c4901              # double 0.81281231003438859
	.quad	0x3fceea00a18a8790              # double 0.24151618850470102
	.quad	0x3f422a915d5f1800              # double 5.543908871394887E-4
	.quad	0x3fe280a232e6ca88              # double 0.5782023424311129
	.quad	0x3fd1bf77c18a1890              # double 0.27731126690231012
	.quad	0x3fe3bcb4469f9cc0              # double 0.61678518098496937
	.quad	0x3fe5af9dc2eb5867              # double 0.67768753118685943
	.quad	0x3feddd38b15c9ff8              # double 0.93325457230548547
	.quad	0x3fe9f0d4f5df0372              # double 0.81064842244823709
	.quad	0x3fe7f79e71da9f2a              # double 0.74897691952808043
	.quad	0x3fd2882a92672630              # double 0.28956093117867265
	.quad	0x3feec834cefefbe5              # double 0.96193924359237981
	.quad	0x3fa752e8b01b5fd0              # double 0.045554419991901463
	.quad	0x3fef20eea4987b66              # double 0.97277004382690957
	.quad	0x3fe3cbd1d3b0d90c              # double 0.61863032670842832
	.quad	0x3fd078161a80e504              # double 0.25732948864204297
	.quad	0x3fcb5b5d4d196c4c              # double 0.21372572197546658
	.quad	0x3fc636777b3d3b90              # double 0.17353719251192645
	.quad	0x3fe858f1d2e59f9d              # double 0.76085749808133907
	.quad	0x3fe4d83eff34d2d0              # double 0.6513972267626631
	.quad	0x3fc616ed9afdbb78              # double 0.17257471149374815
	.quad	0x3fd50e385824fbbc              # double 0.32899292571886085
	.quad	0x3fd5eaab25de5de0              # double 0.34244803140742697
	.quad	0x3fa5c9b41ec46b30              # double 0.042554501300591574
	.quad	0x3f96cad8b848a1c0              # double 0.022258173225198297
	.quad	0x3fcb769ede62e238              # double 0.21455751284317315
	.quad	0x3fe141f200277d37              # double 0.53929996519210632
	.quad	0x3fe7a0d791824e7b              # double 0.73838404102066535
	.quad	0x3f811824e0f626c0              # double 0.0083468323853311821
	.quad	0x3fc89e36edff9ed8              # double 0.19232832547208178
	.quad	0x3fe977f910456ae2              # double 0.79589512994729383
	.quad	0x3fefaa93f1162777              # double 0.98957249724592954
	.quad	0x3faf1d76535408c0              # double 0.06077165381613403
	.quad	0x3fb2a0089fa9b7d8              # double 0.072754420261588293
	.quad	0x3fd1141c8d405676              # double 0.26685251039575719
	.quad	0x3fa49af708e83120              # double 0.040244788968353484
	.quad	0x3f644e39f857ad00              # double 0.0024787075260427338
	.quad	0x3fed1493c3b0c424              # double 0.90876186581420315
	.quad	0x3fefabf4458613ce              # double 0.98974050120215806
	.quad	0x3fd93f0afc80a2a4              # double 0.39447283419080237
	.quad	0x3faaa9fd89328ac0              # double 0.052078173635228264
	.quad	0x3fec999233e6bd0a              # double 0.89374647271134333
	.quad	0x3fcda65846f9cfdc              # double 0.23163894143692587
	.quad	0x3fbb5a2faed2c4b8              # double 0.10684488313815421
	.quad	0x3fe7ff1e5df45e7f              # double 0.74989240980626437
	.quad	0x3fe109b108fe679a              # double 0.53243304974170091
	.quad	0x3fe575ddfbf0a366              # double 0.67063807684926924
	.quad	0x3fc2aa5c5f0c1984              # double 0.14582399979572014
	.quad	0x3fd9c6e23807a7b2              # double 0.40276389571829008
	.quad	0x3fed8fe1d7bb5467              # double 0.92381374487980572
	.quad	0x3fbc7421f3e826e8              # double 0.11114704327351499
	.quad	0x3fdf5d5ac839bb9e              # double 0.49007291367791506
	.quad	0x3fc6769f5d79e0f0              # double 0.17549507202398429
	.quad	0x3fafdc0abec42ec0              # double 0.06222566202822355
	.quad	0x3fd52dc7467b31d4              # double 0.33091909296925093
	.quad	0x3fe5ad3101e72260              # double 0.67739153262762031
	.quad	0x3fd506795d390a7a              # double 0.3285201464060844
	.quad	0x3fd8b5bea1fc34cc              # double 0.38609281367173476
	.quad	0x3fe4ced8ef2fcb6a              # double 0.65024992672111392
	.quad	0x3fee6895286e173d              # double 0.95026643654339404
	.quad	0x3fef275eaef2ed04              # double 0.97355589074814519
	.quad	0x3fd4933e712e77ac              # double 0.32148705532915289
	.quad	0x3fd34f5bdc442a76              # double 0.30171867857340062
	.quad	0x3fe1124dea65e143              # double 0.5334844186864206
	.quad	0x3fc02a36a5d9e468              # double 0.12628825281334177
	.quad	0x3fe416bd57fb7dfe              # double 0.62777583297787465
	.quad	0x3fe2771cd0f28ccc              # double 0.57704010782290416
	.quad	0x3fcc99872a18f2d8              # double 0.22343530231036968
	.quad	0x3fed1fd2d52baab9              # double 0.91013471255185785
	.quad	0x3fe2bb37a68a6886              # double 0.58535368468734883
	.quad	0x3fee731a63f76aa7              # double 0.95155066990567583
	.quad	0x3fc1aba73ec0f350              # double 0.1380509430327046
	.quad	0x3fd5f9cf5983f7fe              # double 0.34337218991993257
	.quad	0x3fd73f685d3db326              # double 0.36324509721343856
	.quad	0x3fec5c038d4bf2a4              # double 0.88623216244703373
	.quad	0x3fed796342b6288e              # double 0.92106783895111888
	.quad	0x3fd9a24bec8224b0              # double 0.40053079697151883
	.quad	0x3fe89beeb86b29a7              # double 0.7690347291875711
	.quad	0x3fd14b9d60d8e7ea              # double 0.27024015863173523
	.quad	0x3feb26d270dd5077              # double 0.84848901790475295
	.quad	0x3fd8d483702cf5c4              # double 0.38797079043055427
	.quad	0x3fe20c736c9c43dc              # double 0.56401988232584754
	.quad	0x3fa5332639ca30a0              # double 0.041405863336963167
	.quad	0x3fde14639aaf9654              # double 0.46999445062679013
	.quad	0x3fcf85fb162d0728              # double 0.24627626974875594
	.quad	0x3fe30580b7ec193e              # double 0.59442172930065573
	.quad	0x3f6dc22864ed9900              # double 0.0036326207113460685
	.quad	0x3feb62f1390f9ae4              # double 0.85582791466444207
	.quad	0x3fe916b60fb1c6b5              # double 0.7840223604709623
	.quad	0x3fe4e34808b69f2c              # double 0.65274430944280004
	.quad	0x3fb9a7a0eedc7830              # double 0.10021406013081058
	.quad	0x3fc6efad35f9e2d8              # double 0.1791893495135557
	.quad	0x3fefaeb8ac7d62e3              # double 0.99007829369938027
	.quad	0x3fc83df21895c938              # double 0.18939043236202635
	.quad	0x3feb0b6662df6e4f              # double 0.84514159499253505
	.quad	0x3f926b6a89a46fe0              # double 0.017987885142346616
	.quad	0x3fd01d0fe870b4b2              # double 0.2517738122867953
	.quad	0x3fc1f1e9823611bc              # double 0.14019507272690912
	.quad	0x3fd07f1e9adfea1c              # double 0.25775876163939571
	.quad	0x3fc264518c11fd34              # double 0.14368647899025577
	.quad	0x3fd4da1787378560              # double 0.32581127362035112
	.quad	0x3fdeccb0443a61b2              # double 0.48124319708724805
	.quad	0x3fe33346d03f735b              # double 0.60000935243042919
	.quad	0x3fda12af5b64e6ca              # double 0.40739044118127465
	.quad	0x3fc30af5d57b0554              # double 0.14877198146681769
	.quad	0x3fe04a870f5b1125              # double 0.50909760474363408
	.quad	0x3fc0d4f340b2f0fc              # double 0.13149872454767564
	.quad	0x3fe4a8b9b521ac12              # double 0.64559636475803672
	.quad	0x3fddd342091e2ebc              # double 0.46601916208667737
	.quad	0x3f465122a8037000              # double 6.8105880930202645E-4
	.quad	0x3fdc877756105066              # double 0.44576819805775469
	.quad	0x3fe18c82f1feda99              # double 0.54840228333235352
	.quad	0x3fd350954cddc76a              # double 0.30179340845562896
	.quad	0x3fd1252db707cca2              # double 0.26789420007771458
	.quad	0x3fee1858980a1ebc              # double 0.94047193236561765
	.quad	0x3feda84fac58169d              # double 0.92679580365139069
	.quad	0x3fe1919107bd365a              # double 0.54901935111565625
	.quad	0x3feb9c0c4f529bcc              # double 0.86279883854592176
	.quad	0x3fe485bb92f8d2f9              # double 0.64132479386770946
	.quad	0x3feb2f81e5445f46              # double 0.84954924372412033
	.quad	0x3fedb3aae38a0334              # double 0.92818207207901659
	.quad	0x3fe0704fa98c20e7              # double 0.51370986094209747
	.quad	0x3fc1060c467379c4              # double 0.1329970687865637
	.quad	0x3fedb404f6712f0c              # double 0.92822502263285988
	.quad	0x3fd57dc43606a6a2              # double 0.3358011748883688
	.quad	0x3fe9d03e2307ee82              # double 0.80667025415409932
	.quad	0x3fe2f6e09d6b6672              # double 0.59263640161516506
	.quad	0x3fe331b4bdb0bc3d              # double 0.59981762932682836
	.quad	0x3fee736e82cdd50e              # double 0.95159078166639843
	.quad	0x3f93d074200dfac0              # double 0.019349874931772204
	.quad	0x3fda4040a26a098e              # double 0.41017166004908112
	.quad	0x3fe12877b0580c92              # double 0.53618988458801398
	.quad	0x3fe6565c19ef3228              # double 0.69804196420006281
	.quad	0x3fdf4af1cf9e3b66              # double 0.48894925379948118
	.quad	0x3fea300b5a8f6936              # double 0.81836478889025588
	.quad	0x3fd8b02a9aaddf66              # double 0.38575234513654377
	.quad	0x3fd57803be9c9f36              # double 0.3354501115268137
	.quad	0x3fe777c43be57850              # double 0.7333699388361854
	.quad	0x3fe61ecd70d7424e              # double 0.69126007117490373
	.quad	0x3fe4dfc41aac9d66              # double 0.65231518945521993
	.quad	0x3fec8c140e44fbc3              # double 0.89209940707211677
	.quad	0x3fe265420e397a1b              # double 0.57486059931017353
	.quad	0x3fe80c5bb66f79f4              # double 0.75150857574391105
	.quad	0x3fe011fdb136f1c6              # double 0.50219616520149013
	.quad	0x3fee13cc1b5aff0e              # double 0.93991666167127774
	.quad	0x3fc56868383e9e88              # double 0.16724875208204915
	.quad	0x3fe583028f60c616              # double 0.67224243167419462
	.quad	0x3fd5997d75b50918              # double 0.33749329085198232
	.quad	0x3fedd9cc9b82a854              # double 0.93283682225343023
	.quad	0x3fb88259020591f0              # double 0.095738947862237244
	.quad	0x3fd276365ceafc84              # double 0.28846510957732385
	.quad	0x3fdc670f13febdce              # double 0.44379021599430934
	.quad	0x3fe320779fd0f319              # double 0.59771329130271333
	.quad	0x3fd1de5d220b1438              # double 0.27919700932062907
	.quad	0x3fe51d40d17fb5da              # double 0.65982094686267634
	.quad	0x3fed04a075c72f3d              # double 0.90681479457405312
	.quad	0x3fe6eb35b5a4e2be              # double 0.71621213414535823
	.quad	0x3fe48f7301c8d798              # double 0.64251089428465757
	.quad	0x3f9ac69fef75a1c0              # double 0.026148318281600913
	.quad	0x3fbfc59f2a369808              # double 0.12410921841237166
	.quad	0x3fd3ed09ea8b03d2              # double 0.31134269623367772
	.quad	0x3fe31cb9442c9462              # double 0.59725631060849715
	.quad	0x3fe1bb36bc99dfe9              # double 0.55410324894091645
	.quad	0x3fd04bfbaa84abf2              # double 0.25463763858959887
	.quad	0x3fcf517da4e182c4              # double 0.24467440176797173
	.quad	0x3fef62ff7f3c3d82              # double 0.98083472109458136
	.quad	0x3fdb24c5081f58fa              # double 0.42411924164970538
	.quad	0x3fef45040836192d              # double 0.97717477420591125
	.quad	0x3fe6520775559b18              # double 0.69751332203745431
	.quad	0x3fdab396c02c6578              # double 0.41721123473106259
	.quad	0x3fef6035f6c43ff0              # double 0.98049448200799638
	.quad	0x3fe0188130dd6f34              # double 0.50299129051152258
	.quad	0x3fe8649130afa305              # double 0.76227626332283249
	.quad	0x3fd2a17c17daec14              # double 0.29110624627691206
	.quad	0x3fd56bd883ca1d54              # double 0.33470738287038171
	.quad	0x3fb6ef323e52e9b0              # double 0.089587345329084966
	.quad	0x3fd087a1c7fe3ef6              # double 0.25827831774311905
	.quad	0x3fea520be3d104db              # double 0.82251543517500225
	.quad	0x3fe636d840406e99              # double 0.69419491337926609
	.quad	0x3fe89d534c2593d6              # double 0.76920475838107438
	.quad	0x3fede531a931c7c2              # double 0.93422778173248155
	.quad	0x3fe7d922f73f4205              # double 0.74525593080949248
	.quad	0x3fc2cd097364a948              # double 0.14688223013338075
	.quad	0x3f9e66e759d01e00              # double 0.02968942151713172
	.quad	0x3feb1a13738ca565              # double 0.84693310325853288
	.quad	0x3fb2e57a50023668              # double 0.073814053090438869
	.quad	0x3fe53296f44f2f0c              # double 0.66242549626028469
	.quad	0x3fd4dcfa1081dd02              # double 0.32598735439337656
	.quad	0x3fe86fab18808330              # double 0.76363138948008746
	.quad	0x3fe03207832079e8              # double 0.5061070977279174
	.quad	0x3fe58d089e63cfe1              # double 0.67346602378392728
	.quad	0x3fe0e19a3ff36162              # double 0.52753937235233317
	.quad	0x3fc8c1801f9eae34              # double 0.19340516609132552
	.quad	0x3fd2299a6de88ec4              # double 0.28378926022763218
	.quad	0x3fb1a63750f79920              # double 0.068942506091478339
	.quad	0x3fd71448117768f6              # double 0.36061288552959014
	.quad	0x3feab0401c01eb73              # double 0.83401494474615701
	.quad	0x3febb762142dd359              # double 0.86613563481533185
	.quad	0x3fef41eaeaec414f              # double 0.97679658778546663
	.quad	0x3fe92193172c8fa2              # double 0.78534845853981872
	.quad	0x3fd343141bb46558              # double 0.30096914964231791
	.quad	0x3fe649d7eb0fd0ad              # double 0.69651409063819403
	.quad	0x3fe7dc9ac3467ea4              # double 0.74567926540108376
	.quad	0x3fd3b72101bb050e              # double 0.30805230301855679
	.quad	0x3fd8bf1d83f08804              # double 0.38666475186084903
	.quad	0x3fb819b65fd8da10              # double 0.094142340088048337
	.quad	0x3fdebdde15e3ef7c              # double 0.48033859384280908
	.quad	0x3fe60480ccb489ca              # double 0.68804969769944901
	.quad	0x3fce78cd60e39b6c              # double 0.23806159239685643
	.quad	0x3fe008132197c926              # double 0.50098568497768237
	.quad	0x3feebe033aa88c61              # double 0.96069489914624395
	.quad	0x3fec3f21fde27c4f              # double 0.88270663821084294
	.quad	0x3fc83c643065faa4              # double 0.18934299815369571
	.quad	0x3fe507218319edcf              # double 0.65712047200889312
	.quad	0x3fdd00fa725ad998              # double 0.45318471114605918
	.quad	0x3fe6206181f6b6bf              # double 0.69145274528064948
	.quad	0x3fa829a897c63e30              # double 0.047192829634806421
	.quad	0x3fe726ed706aa483              # double 0.72350189167367807
	.quad	0x3feb2a013bae2434              # double 0.84887754112526758
	.quad	0x3fd75ca3726d8d7c              # double 0.36502920317271736
	.quad	0x3fde099f49e097ca              # double 0.4693372937639394
	.quad	0x3fe2c2d4d20211a8              # double 0.58628312127307414
	.quad	0x3fb1b7f1a42915e8              # double 0.069213011339421038
	.quad	0x3fecff3dcb427f17              # double 0.906157395354941
	.quad	0x3fed14909526b089              # double 0.90876034861641231
	.quad	0x3fe4dc07ad22b13c              # double 0.6518591291001381
	.quad	0x3fecaf5147137802              # double 0.89640106088677407
	.quad	0x3fcc66d6e180bb78              # double 0.2218884087646662
	.quad	0x3f8f133adae7a840              # double 0.015173396878669476
	.quad	0x3fefefef635e04e4              # double 0.99803895385425933
	.quad	0x3fefe20f1e183aef              # double 0.9963450992380255
	.quad	0x3fe44db8c1be9315              # double 0.63448751297673545
	.quad	0x3fd371289dccb3f4              # double 0.30378165636176324
	.quad	0x3fb5fdfdb125c7a8              # double 0.085906844853325226
	.quad	0x3fd6854d7ccd3e7e              # double 0.3518861502425138
	.quad	0x3f9da37bd4eb1140              # double 0.028943953390595967
	.quad	0x3fc5908149e3d020              # double 0.16847244365601544
	.quad	0x3fe5fa09f13e38a9              # double 0.68677231900962454
	.quad	0x3fe22c4036d54481              # double 0.56790171346268903
	.quad	0x3fd5e8ded07446c4              # double 0.34233827931266725
	.quad	0x3fd31974c5ac09b0              # double 0.298428719557843
	.quad	0x3fe0b6c3dd9f52f9              # double 0.52231019292466307
	.quad	0x3fe66023b241e656              # double 0.69923577133085746
	.quad	0x3fe726f3fec4497e              # double 0.72350501784448773
	.quad	0x3fa8c8c1c68308d0              # double 0.048406653864292104
	.quad	0x3fedcac805e4cc2b              # double 0.93100358153458751
	.quad	0x3fe7d3da7dba48cc              # double 0.74461102062402906
	.quad	0x3fbda1457067d628              # double 0.11574205393102288
	.quad	0x3fe0c06e288867fe              # double 0.52349002758569418
	.quad	0x3fb7efc13ad25818              # double 0.093502117977863342
	.quad	0x3fc0be506a9debc4              # double 0.13080792623426707
	.quad	0x3fc44b23ca08dabc              # double 0.15854308476419543
	.quad	0x3fac8e07135f0a10              # double 0.055771084894804202
	.quad	0x3fa3ea729ad12d10              # double 0.038898068808146502
	.quad	0x3feb136bf8af4499              # double 0.84612082072466699
	.quad	0x3fd61e869f5f4290              # double 0.34561315120394287
	.quad	0x3f964052939ab8a0              # double 0.021729746111923576
	.quad	0x3fe8820c21fff182              # double 0.76587492600042162
	.quad	0x3fdbb448d4922ab8              # double 0.43287869223483311
	.quad	0x3fec23f9e2f95a73              # double 0.87939161616198047
	.quad	0x3feb8c97638f7d37              # double 0.8609120316067792
	.quad	0x3f961ce89b8e2280              # double 0.021594652647339618
	.quad	0x3fd79feee8c68966              # double 0.36913655025468584
	.quad	0x3feaacf335d1f9a1              # double 0.83361206542740629
	.quad	0x3fea60e9ef4eb7c8              # double 0.82433029880280007
	.quad	0x3fe9d4977db6e722              # double 0.8072011428223258
	.quad	0x3fe866c27bb32087              # double 0.76254390869236566
	.quad	0x3fd766832a7937a8              # double 0.3656318583278968
	.quad	0x3fe35684cccac0e1              # double 0.60431137083471864
	.quad	0x3fe13e8e7b5d8b20              # double 0.53888630003743643
	.quad	0x3fe64bc7bced4433              # double 0.69675051593561077
	.quad	0x3fe21bd1563ad5da              # double 0.56589571801913086
	.quad	0x3fda79f620962202              # double 0.41369393522521147
	.quad	0x3febb5ec2b6d95ae              # double 0.86595734102291089
	.quad	0x3fe932f19c58d029              # double 0.78746872459897077
	.quad	0x3fbe64aa63b0d8a0              # double 0.11872353490693621
	.quad	0x3fe3081ea3627ec7              # double 0.59474117194255249
	.quad	0x3fa8770e8ef7a910              # double 0.047783331825330788
	.quad	0x3fa69cd65d1338a0              # double 0.044165324079231683
	.quad	0x3fe77f57dd000e80              # double 0.73429482616525377
	.quad	0x3fede8213f5ab0dd              # double 0.93458616613272805
	.quad	0x3fd4718e7ac59a14              # double 0.31943094243470793
	.quad	0x3fee312bdaf29198              # double 0.94350235713186503
	.quad	0x3fe47e9bb02c9e23              # double 0.6404550972847044
	.quad	0x3fedf26d5f548a9b              # double 0.93584316844165316
	.quad	0x3fd2b2396590a592              # double 0.29212794226131067
	.quad	0x3fcce824aeeb1744              # double 0.22583445111211564
	.quad	0x3fb118f962a97838              # double 0.066787325465583858
	.quad	0x3fee0490d8d831b1              # double 0.93805734970515264
	.quad	0x3fe6e3a22f72aab3              # double 0.71528729693576165
	.quad	0x3fe9c7c289cf34c3              # double 0.80563475528619966
	.quad	0x3fece4df42e992a7              # double 0.90293849057032538
	.quad	0x3fd81df398358b52              # double 0.37682809700179576
	.quad	0x3fb4f5498ecfd838              # double 0.081867787710366069
	.quad	0x3fed7def21a943c3              # double 0.92162281584216321
	.quad	0x3fcc42186a5bca1c              # double 0.22076707070625978
	.quad	0x3fc9489285485418              # double 0.19752723224579039
	.quad	0x3fdeca326e080ce4              # double 0.4810911249662253
	.quad	0x3fc535dc939495d0              # double 0.16570622640681032
	.quad	0x3fd44fdaf0e65bd2              # double 0.31737397694945202
	.quad	0x3fdd24290559399e              # double 0.45533204576795494
	.quad	0x3fe39e7c7eb15707              # double 0.61309647316622395
	.quad	0x3fd115b7d8c8ae62              # double 0.26695057077697559
	.quad	0x3fe6ae353d42e830              # double 0.70876562085255124
	.quad	0x3fdb68e879a808f0              # double 0.42827808266169054
	.quad	0x3fe02e0031a47ec0              # double 0.50561532684147181
	.quad	0x3feecfe83d98c4c9              # double 0.96287929564109575
	.quad	0x3f92eaa5e3209fc0              # double 0.018473236072310106
	.quad	0x3fe55549bbde6f76              # double 0.66666113560812224
	.quad	0x3fdfd95caefe038e              # double 0.49764172638975246
	.quad	0x3fef7aa9d472c875              # double 0.98372355932066446
	.quad	0x3fed0738c72acf1b              # double 0.90713156604622058
	.quad	0x3feea52f2ce5b96e              # double 0.95766409653678664
	.quad	0x3fcf1ec5543c1c4c              # double 0.24312655079868006
	.quad	0x3fe5854a6c63abef              # double 0.6725208394030896
	.quad	0x3fe25b68bfd12b6c              # double 0.57365834678908589
	.quad	0x3fe5475a9be0786d              # double 0.66496019787497362
	.quad	0x3feeff579e9ba297              # double 0.96866970995059176
	.quad	0x3fda0964def6842e              # double 0.40682336591459289
	.quad	0x3fe1e3b631ad5f5e              # double 0.55904683783135645
	.quad	0x3fdb3e73f46ad57a              # double 0.42568682545546432
	.quad	0x3feba962a1d4f045              # double 0.86442691428920482
	.quad	0x3fee7c2e6baf879d              # double 0.95265885383945526
	.quad	0x3fe716a3b91f5ddf              # double 0.72151361614936238
	.quad	0x3fc101e4e9d3f388              # double 0.13287030618075968
	.quad	0x3fd1fba22fd1d0de              # double 0.28098349256403121
	.quad	0x3fe5b9d298236804              # double 0.67893342699540016
	.quad	0x3fa7e7cd21fe31a0              # double 0.046690378570107827
	.quad	0x3fed288de741e06c              # double 0.91120047728965181
	.quad	0x3fe6ca5b7edb44a7              # double 0.71220183159507122
	.quad	0x3febb2709a85964a              # double 0.86553220920604557
	.quad	0x3feae2e0809fc48d              # double 0.84019494172948017
	.quad	0x3fd863bc48f48854              # double 0.38108737110645063
	.quad	0x3f74a03a951f4380              # double 0.0050356186274748138
	.quad	0x3fc433829bffd39c              # double 0.15782196633486201
	.quad	0x3fe19568a23904a3              # double 0.54948836979032867
	.quad	0x3fd0ba62791cdb18              # double 0.2613760168782604
	.quad	0x3fd6364ccc556d88              # double 0.34706420855010167
	.quad	0x3fef5e9c811fac72              # double 0.98029923648335981
	.quad	0x3fe44c147369b3cb              # double 0.6342870954664418
	.quad	0x3f699ae4cf84be00              # double 0.0031256169278532919
	.quad	0x3fdfe217be6aa300              # double 0.49817460627905064
	.quad	0x3fedc8436bf92fbc              # double 0.93069621170570071
	.quad	0x3fa1827975e2fa80              # double 0.034198566093881944
	.quad	0x3fe1e60db8a19b2d              # double 0.55933271466060364
	.quad	0x3fdd859bfc2f6e44              # double 0.46127986552685152
	.quad	0x3fc681184bbc52e8              # double 0.17581466386822986
	.quad	0x3fe7aa53401ddecc              # double 0.73954165003575545
	.quad	0x3fd69cb823c2dcd4              # double 0.35331538669875084
	.quad	0x3feaf1d5955bb9ef              # double 0.84202078982872119
	.quad	0x3fd37c0d8102ada4              # double 0.30444657896688399
	.quad	0x3fdd5dbb1ea2cefa              # double 0.45884588233751311
	.quad	0x3f99bb156ba47920              # double 0.025127730078673527
	.quad	0x3fe92f5244e99dd6              # double 0.7870265336941269
	.quad	0x3fd75c9c83ec836a              # double 0.36502755053702762
	.quad	0x3fe38194bfdc075a              # double 0.60956799957805718
	.quad	0x3fd17f253c87ed20              # double 0.27338534270502812
	.quad	0x3fd67c3b59681218              # double 0.35133250933748306
	.quad	0x3fc524aee1fe9598              # double 0.16518198046575772
	.quad	0x3fb222fbc5b7ce50              # double 0.070846305628770923
	.quad	0x3fedd90a0c1c8ad4              # double 0.93274404874349636
	.quad	0x3fd721b5d3941cb8              # double 0.36143251096695961
	.quad	0x3fdb63104caebc9e              # double 0.42792136658222002
	.quad	0x3fc8ad5cc27b9aa8              # double 0.192790598833388
	.quad	0x3fea3c70f4a351a7              # double 0.81987808018543695
	.quad	0x3feb71ebf4872e86              # double 0.8576564575136707
	.quad	0x3fe2008847a0c285              # double 0.56256498327100302
	.quad	0x3fdc17cf16cb6a78              # double 0.43895318246874337
	.quad	0x3fade6c8775da5f0              # double 0.058401360102674604
	.quad	0x3fdee0cb423be374              # double 0.48247033565672059
	.quad	0x3f5f852b334c9600              # double 0.0019238397482664871
	.quad	0x3fda2fc624e90736              # double 0.40916589359777633
	.quad	0x3fed4a05dca90b6b              # double 0.9152859983226852
	.quad	0x3f850126db77d980              # double 0.010256103108059689
	.quad	0x3fd60f475bc003f8              # double 0.34468254051176883
	.quad	0x3fd6d0ed35488e00              # double 0.35650186732729594
	.quad	0x3fe3ddceadf69a8e              # double 0.62082609154897894
	.quad	0x3fe9db9866f19362              # double 0.80805606943304675
	.quad	0x3fe8ed48adbcff8e              # double 0.77896531995064477
	.quad	0x3f9768107e41a540              # double 0.022857911783295437
	.quad	0x3fe9ae4d47d36c3f              # double 0.80252708462229083
	.quad	0x3fd01ed88623b1d0              # double 0.25188267802766706
	.quad	0x3fe9f90d2dcdf4d8              # double 0.81165179201311854
	.quad	0x3fe366301e411e87              # double 0.60622411641175311
	.quad	0x3fc536f826fd85e8              # double 0.16574003127884329
	.quad	0x3fe5fd27a68190e4              # double 0.68715269585348127
	.quad	0x3fea762df050e42b              # double 0.82692620217051649
	.quad	0x3fd4d69f585086b4              # double 0.32559951424091627
	.quad	0x3fe0e4ebc88fbcef              # double 0.52794446155703934
	.quad	0x3fdd4e2c43c97776              # double 0.45789629573652435
	.quad	0x3fd1f65cd29364b6              # double 0.28066177906073209
	.quad	0x3fe1154a8c38e814              # double 0.53384902369657761
	.quad	0x3feffbe20608a4de              # double 0.99949742487401827
	.quad	0x3fea7918436d0207              # double 0.82728207749465887
	.quad	0x3fea4a66413c60ea              # double 0.82158196202638334
	.quad	0x3fe62276dac920f9              # double 0.69170706492971512
	.quad	0x3fef0b37e7531a77              # double 0.9701194303568873
	.quad	0x3feff6650e5de404              # double 0.99882748418815525
	.quad	0x3fde3971486fc254              # double 0.47225601266749107
	.quad	0x3fe665b6c35bbe98              # double 0.69991624980862621
	.quad	0x3fe0f7930d57f530              # double 0.53022148710411976
	.quad	0x3febe4006c7fc26c              # double 0.87158223334524853
	.quad	0x3fd371a56fe789d2              # double 0.30381141594093919
	.quad	0x3fca595f0407d334              # double 0.20585239121251109
	.quad	0x3fcd40e2d77e9228              # double 0.22854266664684642
	.quad	0x3fbd9ba15f38e1f8              # double 0.11565598082314199
	.quad	0x3fce9ea5088fc97c              # double 0.23921645086336329
	.quad	0x3fbbedfa3b079b78              # double 0.10909999791293312
	.quad	0x3fdb06049cb5155a              # double 0.42224231055691563
	.quad	0x3fef93f4ee8aeb06              # double 0.986811128524409
	.quad	0x3fed9708982691e2              # double 0.92468671528746094
	.quad	0x3fec5fba8d6ea257              # double 0.88668563483686114
	.quad	0x3fed4d09511485d0              # double 0.91565385662050325
	.quad	0x3fd0a7fda4cbdbda              # double 0.26025334447279891
	.quad	0x3fdc59bcaaeb7fca              # double 0.44297711078069979
	.quad	0x3fd108a2f44b20a8              # double 0.26615213257583514
	.quad	0x3fe67e395e13e902              # double 0.70290821432652728
	.quad	0x3feaecbede0fce84              # double 0.84139960643229061
	.quad	0x3fea4119a1f44011              # double 0.82044679290447864
	.quad	0x3fe1dbe4e49b8218              # double 0.55809254312413525
	.quad	0x3fd7b961f5d239b2              # double 0.37068985944724908
	.quad	0x3fe526ead7eac7b1              # double 0.66100065394697627
	.quad	0x3feac93ec6c4adff              # double 0.8370660669510811
	.quad	0x3fb98479a2972d70              # double 0.09967766017432722
	.quad	0x3fcbb48fafd3ac94              # double 0.21644779286666405
	.quad	0x3feaacdec7776c59              # double 0.83360232313442417
	.quad	0x3f9feb994408d4a0              # double 0.031172175195213314
	.quad	0x3fc38072a075b494              # double 0.1523574145789196
	.quad	0x3fe3856a3c429cee              # double 0.6100360085446519
	.quad	0x3fdddb995c9b8b2c              # double 0.46652826350889387
	.quad	0x3fd8b3b7709e49a2              # double 0.38596902845270098
	.quad	0x3fe3c6bcbc2f8013              # double 0.61800991778364034
	.quad	0x3fd0a2645e8f88ae              # double 0.25991162523690547
	.quad	0x3fe653f6bf04f470              # double 0.69774949367969263
	.quad	0x3fa80a12131affe0              # double 0.04695183261128455
	.quad	0x3fac764b8f7bebe0              # double 0.055590020432610521
	.quad	0x3fe6c589eb98885b              # double 0.71161361708460491
	.quad	0x3fb6316ad7faf960              # double 0.08669154904325671
	.quad	0x3fd9dd73ce2f5ec0              # double 0.40414137969262853
	.quad	0x3fdf8b96750b5fd8              # double 0.49289475851173625
	.quad	0x3fca9974b630c0f8              # double 0.2078081025697498
	.quad	0x3fe94dadebfcf099              # double 0.79073234645285873
	.quad	0x3feff414219bda15              # double 0.99854475559442568
	.quad	0x3fdb74cfa91f10a8              # double 0.42900458827740318
	.quad	0x3fd5b6b72a5d103a              # double 0.33927706849158634
	.quad	0x3fd6f4af2e0b4612              # double 0.35868434425819473
	.quad	0x3fdaae543dbbd23e              # double 0.41689020184211134
	.quad	0x3fe60a5e7164fe93              # double 0.68876573703160415
	.quad	0x3fe0709afdc3b857              # double 0.51374578059563702
	.quad	0x3fd6babb3aa7c1b8              # double 0.35514717796379669
	.quad	0x3fca1e1e2ceefbb8              # double 0.20404412454624121
	.quad	0x3fedf5c93b31b034              # double 0.93625318108889254
	.quad	0x3fe9fcaab12f6dff              # double 0.81209311110018223
	.quad	0x3fdb7ffe7b254820              # double 0.42968713785114865
	.quad	0x3fe7eef0119a3c9b              # double 0.74791720808015627
	.quad	0x3fdb3eda34ed388e              # double 0.42571120422952269
	.quad	0x3fddd8b0ba159290              # double 0.46635072872440109
	.quad	0x3fec78dd400e9364              # double 0.88975393782730494
	.quad	0x3fd06f2c0f1653f0              # double 0.25678540681229745
	.quad	0x3fe9b0eebdcfe956              # double 0.80284821579634058
	.quad	0x3feb38160f0f771b              # double 0.85059645596968225
	.quad	0x3fd0ad5ccec72f20              # double 0.26058120911760518
	.quad	0x3fe5fd7f3763190d              # double 0.68719445054810679
	.quad	0x3fd21e9cac8d5f26              # double 0.28311840868762983
	.quad	0x3fe2554c88df18e8              # double 0.57291247112951016
	.quad	0x3fc8c9923203726c              # double 0.19365146104873376
	.quad	0x3feb16668f116996              # double 0.84648445075008527
	.quad	0x3fd91bfb9d0b020a              # double 0.39233293853979545
	.quad	0x3fe0d055a5c3148a              # double 0.52543146491429238
	.quad	0x3fe75b5c260a159c              # double 0.72990233830994411
	.quad	0x3fc9220d226dfdb0              # double 0.19635166340957033
	.quad	0x3fe2348052c86203              # double 0.56890884560112942
	.quad	0x3f8464a32be9f280              # double 0.009957575585979983
	.quad	0x3fe33f834946f993              # double 0.60150303184473086
	.quad	0x3fd646f4ddecb16a              # double 0.34808084175417398
	.quad	0x3fd3b2c75f8a4800              # double 0.30778679208845006
	.quad	0x3fce1311ebc6d344              # double 0.23495697033436092
	.quad	0x3fefb56d13eeea6b              # double 0.99089673894134244
	.quad	0x3fe6092e1eef85e1              # double 0.68862062494389076
	.quad	0x3fe9408c60460f71              # double 0.78912943652583867
	.quad	0x3fed8cd6862c5efd              # double 0.92344213681914733
	.quad	0x3fb9dd14cba2dcb8              # double 0.10102968188845096
	.quad	0x3fd9b3ed4c943272              # double 0.40160686949165048
	.quad	0x3fde35d14c1eb0c4              # double 0.47203476365644925
	.quad	0x3fe7c0af292b93e0              # double 0.7422710231882057
	.quad	0x3fc874871ce95344              # double 0.19105614577952157
	.quad	0x3fb73f3b5b5423b0              # double 0.090808591649092162
	.quad	0x3fbfa51929dfe2d8              # double 0.1236129500611115
	.quad	0x3fb4890c530d3b28              # double 0.080216188694276824
	.quad	0x3fe0f23dc1b473df              # double 0.52957046349512982
	.quad	0x3fe6496a3b8310e2              # double 0.69646178840096362
	.quad	0x3fc8ae041ecbe940              # double 0.19281054977165901
	.quad	0x3fe9f915fd16e634              # double 0.81165599280865885
	.quad	0x3fb7330195080360              # double 0.090622042545886128
	.quad	0x3fc34be3236027ec              # double 0.15075339534115473
	.quad	0x3fd1b1808e6f5bb6              # double 0.27645887288729953
	.quad	0x3fc54a6aa3bbafe4              # double 0.16633351321013301
	.quad	0x3fe03db885edc8bd              # double 0.5075342765615215
	.quad	0x3fd9cf8d91024086              # double 0.40329302941336953
	.quad	0x3fe2e3e14dec47d6              # double 0.59031739444093989
	.quad	0x3fe553f66f851a4c              # double 0.6664993456004793
	.quad	0x3fe00be019889432              # double 0.50144963252080843
	.quad	0x3fbdae3b45707a70              # double 0.11593981213852955
	.quad	0x3fceb5d692c042bc              # double 0.23992426076485696
	.quad	0x3fe6548faafa63d6              # double 0.69782241243512533
	.quad	0x3fe10c8f72722571              # double 0.53278324463569338
	.quad	0x3fdf1ded12558078              # double 0.48620154180935726
	.quad	0x3fe6c5cd09fee6cb              # double 0.71164562179839075
	.quad	0x3fe2d74ffe4b8226              # double 0.58878326098426181
	.quad	0x3fe45fce879fd1f0              # double 0.63669516076202903
	.quad	0x3fe6219a5cd6820a              # double 0.69160192615896787
	.quad	0x3fd473443961fde8              # double 0.31953530887400783
	.quad	0x3fd45c3c8ff2c360              # double 0.31812967355204158
	.quad	0x3fd51ef1e71ecd86              # double 0.33001372881263824
	.quad	0x3fda0380630ccfd4              # double 0.40646371529441905
	.quad	0x3fe4b5a3c77005ff              # double 0.64717282250074948
	.quad	0x3fbb2419f06b35c8              # double 0.10601961249923086
	.quad	0x3fb4ad18facbce38              # double 0.080766259412308083
	.quad	0x3f94442b22cfcf00              # double 0.01979129219030451
	.quad	0x3fd3ee1a8e42ce0c              # double 0.31140769856139694
	.quad	0x3fe57983367880c9              # double 0.67108307493983788
	.quad	0x3fe9ddc7e7666017              # double 0.80832286067289061
	.quad	0x3fd415879f20d2d8              # double 0.31381407298912967
	.quad	0x3feb18bb3cfba0ba              # double 0.84676896963812642
	.quad	0x3fe2f14477ea9113              # double 0.59195159360072791
	.quad	0x3fe93adb305fe27b              # double 0.78843459556726658
	.quad	0x3fcf7d3b51edf600              # double 0.24600926876512119
	.quad	0x3fd10a98464aa738              # double 0.26627165665069041
	.quad	0x3fa703e72d501120              # double 0.044951652795164998
	.quad	0x3f89edcc7433a400              # double 0.012660596176333527
	.quad	0x3f914e9aa16a3740              # double 0.016901413061126691
	.quad	0x3fdccd5fd6a455a0              # double 0.45003505669714094
	.quad	0x3fd3d9e5d73381c4              # double 0.3101744271825988
	.quad	0x3fdd3a27da4926c4              # double 0.45667454068152957
	.quad	0x3fda95716d563e8c              # double 0.41537128140860413
	.quad	0x3fd32827743c3340              # double 0.29932581282701065
	.quad	0x3fbab4449f4971c0              # double 0.1043131722339643
	.quad	0x3fd13a0f146d5724              # double 0.26916863436541605
	.quad	0x3fe94c482b5a5aac              # double 0.79056175677654527
	.quad	0x3fb2d4453f54f0d8              # double 0.073551490747323256
	.quad	0x3fd518ae54229ada              # double 0.32963140693975179
	.quad	0x3fa4de119bdf3cc0              # double 0.040756750371309547
	.quad	0x3feb43ef28e83a16              # double 0.85204275121378958
	.quad	0x3fe3ecfaa91b7872              # double 0.62267811802645512
	.quad	0x3fefe619eaf16fc5              # double 0.99683853041960246
	.quad	0x3fe26d56003f1938              # double 0.57584667251720756
	.quad	0x3fee3db0955862a9              # double 0.94503049057955935
	.quad	0x3fe3672362a13593              # double 0.60634011520021358
	.quad	0x3f967f3f53287a40              # double 0.02196978516632897
	.quad	0x3fd7160ceae360f4              # double 0.36072085321713065
	.quad	0x3fa381d6126145f0              # double 0.038099946731232737
	.quad	0x3fee4fc401098c08              # double 0.9472370167026165
	.quad	0x3faf6dc48f607090              # double 0.061384336950340956
	.quad	0x3fe083e6b23be83e              # double 0.5161012154706055
	.quad	0x3fd1982faa87816a              # double 0.27491370824102168
	.quad	0x3fef50d6f2cce02f              # double 0.97861812040264861
	.quad	0x3fc089135da81974              # double 0.12918321679189726
	.quad	0x3fe1fa57a497f1fe              # double 0.56180936953711558
	.quad	0x3fd9d64c0e00d9d2              # double 0.40370465629112318
	.quad	0x3fa7701bc6b08110              # double 0.045777194980702984
	.quad	0x3fc0649651de7fa0              # double 0.12806967732921937
	.quad	0x3fe831d51f97c9ab              # double 0.75608307047359824
	.quad	0x3feeb78a594f3553              # double 0.95990483706706652
	.quad	0x3fd14f16bce04218              # double 0.27045219845698076
	.quad	0x3fd514b0695eeae2              # double 0.3293877629291001
	.quad	0x3fe631093c053ab9              # double 0.69348584864368157
	.quad	0x3fd4c47bf6f02e74              # double 0.3244924460893579
	.quad	0x3fe77dbcf91e7f90              # double 0.73409889846878862
	.quad	0x3f92c15cadf7a480              # double 0.0183157426053282
	.quad	0x3fe849ecb1ffbec5              # double 0.75902399793081854
	.quad	0x3fa676c1664feae0              # double 0.043874782313613414
	.quad	0x3fd4ed453fc506e2              # double 0.32698184230330984
	.quad	0x3fdfb960de80eb76              # double 0.4956895993124627
	.quad	0x3fb899aeadab28e8              # double 0.096095006370123692
	.quad	0x3fe11beb33452db1              # double 0.53465805066792005
	.quad	0x3fd005e35cba0692              # double 0.25035938315714035
	.quad	0x3fd020dbd7129166              # double 0.25200553897072664
	.quad	0x3fdca9250acde010              # double 0.44782377295587228
	.quad	0x3fe661fe668b91f5              # double 0.69946212795599527
	.quad	0x3fe7d6d24add1b2a              # double 0.74497332212272238
	.quad	0x3fa8deb004ee6dd0              # double 0.048573971368763957
	.quad	0x3fe7c94c2363dceb              # double 0.74332243835570233
	.quad	0x3fe03e6872f9cece              # double 0.50761816459859133
	.quad	0x3fca4552c1a72cc8              # double 0.20524057822908603
	.quad	0x3fdde4744cbb2aa0              # double 0.46706874364159923
	.quad	0x3faa67410ff65810              # double 0.051569016645928056
	.quad	0x3fd6f16753960958              # double 0.35848410761550076
	.quad	0x3fdf53b9fa4ee950              # double 0.48948525852360536
	.quad	0x3fe52a367c05cb62              # double 0.66140293334170175
	.quad	0x3fbfa79f99a74e40              # double 0.12365148068720888
	.quad	0x3fe0925f8f28a3e6              # double 0.51786783180898222
	.quad	0x3fb15378c42fe238              # double 0.067679927727916644
	.quad	0x3fc8aad9a0808008              # double 0.19271393143662885
	.quad	0x3fce113ad6559dec              # double 0.23490081277417063
	.quad	0x3fe4817f9a531313              # double 0.64080791608339138
	.quad	0x3fec769ac0874923              # double 0.88947808840956488
	.quad	0x3fe1f3c830ca6d11              # double 0.56100854424895108
	.quad	0x3fd1b3d7e21f084e              # double 0.27660176355505406
	.quad	0x3fdb46368fde6ed0              # double 0.42616046952910569
	.quad	0x3fdb5fcad3c9fa6c              # double 0.42772169764058421
	.quad	0x3fe3e393ab68427c              # double 0.62153037527066557
	.quad	0x3fe4ffdcbff2f217              # double 0.65623319139519054
	.quad	0x3fe02977b3636b23              # double 0.5050619605711727
	.quad	0x3fd2c6b265929394              # double 0.29337749404140223
	.quad	0x3f87b62b6e51b440              # double 0.011577929786847574
	.quad	0x3fe49781a4e972eb              # double 0.64349443635327697
	.quad	0x3fe904276a601c06              # double 0.78175707603884415
	.quad	0x3fe2a9d01412b0ce              # double 0.58322910233030156
	.quad	0x3fd7dc73e1e746f8              # double 0.3728303629005576
	.quad	0x3fe01e4e584cf5bb              # double 0.50369946714606983
	.quad	0x3fddf53101eade2e              # double 0.46809029757739296
	.quad	0x3fdad1cf527457e2              # double 0.41905577709382957
	.quad	0x3fdb32c5cc1d16cc              # double 0.42497391636821358
	.quad	0x3fde594726085694              # double 0.47419909204595823
	.quad	0x3fe754488591f48e              # double 0.72903848731915999
	.quad	0x3fd23bcbd3a766ea              # double 0.28489967030837582
	.quad	0x3fecb0999372abd0              # double 0.89655760572838439
	.quad	0x3fecd66182213341              # double 0.90116954246477843
	.quad	0x3f99d32bdb0272a0              # double 0.025219617121012505
	.quad	0x3fd54a0404efd738              # double 0.33264255983464208
	.quad	0x3fe30145c5a72ed2              # double 0.59390534023392605
	.quad	0x3fe2e291c052689e              # double 0.59015739024041003
	.quad	0x3fed5d0b6ed42d58              # double 0.91760799070599841
	.quad	0x3fdb75d101125564              # double 0.42906594376230189
	.quad	0x3fb4f3dcba2f89e8              # double 0.081846042113773998
	.quad	0x3fddce6744ad3e3e              # double 0.46572286326133738
	.quad	0x3fcd9e4168159c78              # double 0.23139207441565524
	.quad	0x3fe2829ed8abd16f              # double 0.57844488447748954
	.quad	0x3f934157b4548600              # double 0.018803949719886859
	.quad	0x3fe512b88ae73df0              # double 0.65853526238964655
	.quad	0x3fe0d846f9753b58              # double 0.52640103075269007
	.quad	0x3fe9a95893a4978c              # double 0.80192211948882308
	.quad	0x3fb0d0cdfe103c10              # double 0.065686106230927743
	.quad	0x3fd217cdff3a570c              # double 0.28270292210196213
	.quad	0x3fe4400d689e7717              # double 0.6328188937511382
	.quad	0x3fd30c52d8292a58              # double 0.29762717351392132
	.quad	0x3fd4dea129e2b84e              # double 0.32608822908776325
	.quad	0x3febd6f592418707              # double 0.86999014440172651
	.quad	0x3fee9a5af43a3c88              # double 0.95634219837838063
	.quad	0x3fdd4a2060f49eee              # double 0.45764932125392377
	.quad	0x3fee4c7e9263bc47              # double 0.94683769790379635
	.quad	0x3fe6d5d751950e22              # double 0.71360364851029012
	.quad	0x3fc0dcd29679c980              # double 0.13173897120902822
	.quad	0x3fe2e57f2bffd1b0              # double 0.59051474183666208
	.quad	0x3fe2a1281464b464              # double 0.58217243178445388
	.quad	0x3fb22009bae33168              # double 0.070801361204933522
	.quad	0x3fed92d22eadb048              # double 0.9241724883736504
	.quad	0x3fa90bca9d8297c0              # double 0.048918086745558309
	.quad	0x3febb480b58c7e55              # double 0.86578402956724665
	.quad	0x3fe9a2e0d4295f52              # double 0.80113259733023257
	.quad	0x3febd6759764e3b8              # double 0.86992911881599522
	.quad	0x3fda3d618b69433a              # double 0.40999640097020384
	.quad	0x3f8d841865cfcdc0              # double 0.014412108046576999
	.quad	0x3fe9b064de78e168              # double 0.80278247310256479
	.quad	0x3fb57d4e7f746bf0              # double 0.08394327747048158
	.quad	0x3fe2d6b4d4d92ac2              # double 0.58870927402434625
	.quad	0x3fcc8d3048d36004              # double 0.22305873447362512
	.quad	0x3fab78bdf6d2aa80              # double 0.053655563716650256
	.quad	0x3fe02457eff0fe16              # double 0.50443646300840572
	.quad	0x3fee854d82aefce3              # double 0.95377231144075514
	.quad	0x3fd59bec251416e8              # double 0.33764175053543832
	.quad	0x3f9e8180b6fa2700              # double 0.029790888946570782
	.quad	0x3fe83e784a351c4c              # double 0.75762571805615541
	.quad	0x3fe936a46d5deaaf              # double 0.78792020188060075
	.quad	0x3fd41b47b43192a6              # double 0.3141650447562746
	.quad	0x3fe611f9d3f511b6              # double 0.68969432256613206
	.quad	0x3fd9b6c56aa2e2e8              # double 0.40178046621035302
	.quad	0x3feffbec60f405de              # double 0.99950236259627068
	.quad	0x3fe62e201bf5122f              # double 0.69313054523860795
	.quad	0x3fcdbd9a9db3bc6c              # double 0.23234875393197585
	.quad	0x3febace53636890f              # double 0.86485539043886372
	.quad	0x3fe25123d66e366a              # double 0.57240478402100092
	.quad	0x3fed313160e929e2              # double 0.91225499084367478
	.quad	0x3fe5f3ce392d14ae              # double 0.68601142089086919
	.quad	0x3fd7e70671d7f5ca              # double 0.37347565763033386
	.quad	0x3fe518a131ff5766              # double 0.65925655140993622
	.quad	0x3fd2017afcf1c54a              # double 0.28134035779574573
	.quad	0x3fe50559e6ee08c7              # double 0.65690322020989178
	.quad	0x3fa06b33a6dfb8a0              # double 0.032067884559965565
	.quad	0x3fe11d6c32aa301b              # double 0.53484163184612343
	.quad	0x3fcf33473cf06cb4              # double 0.24375238872094018
	.quad	0x3fe02fd6f0ead62b              # double 0.50583979658285239
	.quad	0x3fe21fbd4c9ee357              # double 0.56637444462749442
	.quad	0x3feddc89968519f7              # double 0.93317107580588654
	.quad	0x3fefe702ccb98fd6              # double 0.99694957719156707
	.quad	0x3fae5f645198e020              # double 0.059321532211868311
	.quad	0x3fda32b3736e0210              # double 0.40934454224046224
	.quad	0x3fc57fcbe1e4964c              # double 0.16796253709724096
	.quad	0x3fe0199d5ce1f338              # double 0.50312679425369478
	.quad	0x3fe6ce7818e25d88              # double 0.7127037511844927
	.quad	0x3fef5c2250d04c3f              # double 0.97999683174055707
	.quad	0x3fd3907e580772de              # double 0.30569418522445158
	.quad	0x3fe436c53d413cd0              # double 0.63168584789118576
	.quad	0x3fd87eeda7c5ea60              # double 0.38274709114162953
	.quad	0x3fe5cda2b304e155              # double 0.68135199513111877
	.quad	0x3f8c3a3b84deaec0              # double 0.013782944671980046
	.quad	0x3fb95c3135096798              # double 0.099062991569921599
	.quad	0x3f634a497a23fc00              # double 0.0023547587489924915
	.quad	0x3fbfc171e4b4c4c0              # double 0.12404548486371691
	.quad	0x3fdbfb469dbda3c8              # double 0.43721166042683679
	.quad	0x3fc2941987b2f758              # double 0.14514464498455015
	.quad	0x3fcd69a3eeb56cb8              # double 0.22978638797471773
	.quad	0x3fdcde6e14497ca4              # double 0.45107604962499637
	.quad	0x3fc2a4dbd6259f64              # double 0.14565608936686225
	.quad	0x3fea3fd98948f76d              # double 0.82029415906411673
	.quad	0x3fcbd5918e64ad1c              # double 0.21745509579464162
	.quad	0x3fd3e5df2067b30a              # double 0.31090524830396815
	.quad	0x3fca2679656d89d0              # double 0.20429913952382472
	.quad	0x3fe8dd4d38a304ad              # double 0.77701436101792398
	.quad	0x3fe56bf824b074d5              # double 0.66942984739184885
	.quad	0x3fa83a6fee735a40              # double 0.047320840699900391
	.quad	0x3fd3d2a9e150f834              # double 0.30973288539451294
	.quad	0x3fccb60dd9f86044              # double 0.22430585043980689
	.quad	0x3fce628177526d50              # double 0.23738115621822908
	.quad	0x3fe3ce2ebd501f22              # double 0.61891877150717201
	.quad	0x3feaa2934cac945b              # double 0.83234562850396843
	.quad	0x3fb16130a127e050              # double 0.067889251084012558
	.quad	0x3fd8536c8b198970              # double 0.38009179672203341
	.quad	0x3fdc6d1819d8ae0a              # double 0.44415857814848947
	.quad	0x3fe130cd8d58d984              # double 0.53720738989686412
	.quad	0x3fe688711961f6ec              # double 0.70415549237779151
	.quad	0x3fd4e57387840abc              # double 0.32650459512676
	.quad	0x3fe0fbe027864a22              # double 0.53074653358118362
	.quad	0x3feca0744c3b870c              # double 0.89458670510450266
	.quad	0x3fb410d4bd4642c0              # double 0.078381820878585806
	.quad	0x3febc4d8fb0b8d4a              # double 0.86777924568415554
	.quad	0x3fd969878fe32584              # double 0.3970660119199112
	.quad	0x3fd2cb99f379dd1c              # double 0.29367684151607576
	.quad	0x3fbca96c771fed50              # double 0.11196020038908228
	.quad	0x3fe449d4327004fc              # double 0.63401231623734544
	.quad	0x3fdfaed21edd3a84              # double 0.49504521383361344
	.quad	0x3fe0360437c5f81f              # double 0.5065938081095317
	.quad	0x3feb8173f9fe5da3              # double 0.85955237223509007
	.quad	0x3feaa6bf22048e92              # double 0.83285481113530779
	.quad	0x3fe2144dfa05dcd5              # double 0.56497858841512516
	.quad	0x3fc635a1fb16de5c              # double 0.17351174125882352
	.quad	0x3fdb6a7b8c887492              # double 0.42837418292931162
	.quad	0x3fe666ef0758101f              # double 0.70006514963506905
	.quad	0x3fe7a15da6affbe7              # double 0.73844797664775974
	.quad	0x3fd0ee57dfb6c098              # double 0.26454731795366504
	.quad	0x3fe69e07b3dd577a              # double 0.706790782259062
	.quad	0x3fe6d9cb84684936              # double 0.7140863023835553
	.quad	0x3fc41c54ec738d38              # double 0.15711461587407327
	.quad	0x3fe25534359c21ac              # double 0.57290087195092587
	.quad	0x3fd8d23779fd920e              # double 0.38783060944686631
	.quad	0x3fdcc9e7f69c4ace              # double 0.44982337077196355
	.quad	0x3fe98c42a5dc153a              # double 0.798371623940205
	.quad	0x3fef2581eefd9d32              # double 0.97332855871073876
	.quad	0x3fee025379c5be1d              # double 0.93778394492796091
	.quad	0x3fe90057d6f605b7              # double 0.78129188522887361
	.quad	0x3fe0daceecfde29d              # double 0.52670999801110308
	.quad	0x3fb5b689c18e0c50              # double 0.084816560511215444
	.quad	0x3fb30d72f5a4a900              # double 0.074423966380582129
	.quad	0x3fd48ea9cc9d2cfc              # double 0.32120747548897532
	.quad	0x3fb9dc9f338fb458              # double 0.10102267273733057
	.quad	0x3febea1f00bdaa18              # double 0.87232923645689464
	.quad	0x3fe654bdeb52b960              # double 0.69784446679640766
	.quad	0x3fc6d3fa3bb16dfc              # double 0.17834403910352126
	.quad	0x3fe6303ee0fe5ca5              # double 0.69338935798704837
	.quad	0x3fe3d037a6abb92d              # double 0.61916716149224771
	.quad	0x3fe8ce548d981a59              # double 0.77518680243594951
	.quad	0x3fe7d4b5bd79e671              # double 0.74471556670250838
	.quad	0x3fe2316c898c5466              # double 0.5685331999290042
	.quad	0x3fe175a3e9f82039              # double 0.54561038682096019
	.quad	0x3fea68c365ed1698              # double 0.82528848559805379
	.quad	0x3fcf97ce4e8e93ec              # double 0.24682024799145041
	.quad	0x3fdc07c89b9c81e0              # double 0.43797507473393971
	.quad	0x3fd300bf0fb5e50c              # double 0.29692055258017613
	.quad	0x3fe4d092ade74f24              # double 0.65046056714570399
	.quad	0x3fe4620e2662a435              # double 0.63696963784344141
	.quad	0x3fd4dc7128ba685a              # double 0.32595471360548844
	.quad	0x3fe9a43ae100c073              # double 0.80129760690580409
	.quad	0x3fedc6f5dff1267a              # double 0.9305371641032274
	.quad	0x3f8f06f576fc9540              # double 0.015149991697010479
	.quad	0x3fc532586fc31428              # double 0.16559892136697951
	.quad	0x3fd86c290bece922              # double 0.3816015831431675
	.quad	0x3fd227ae6cd51c32              # double 0.2836719572846419
	.quad	0x3fed829afddec60c              # double 0.92219304641747745
	.quad	0x3fa4e90859c55f60              # double 0.040840397795078642
	.quad	0x3fe72c1e82c91109              # double 0.72413564247156714
	.quad	0x3feb1bc333b28ec5              # double 0.84713897797743043
	.quad	0x3fbb339533553838              # double 0.10625584128612864
	.quad	0x3fe7946b5a793f8f              # double 0.73686759634618848
	.quad	0x3fe751e818e68aee              # double 0.72874836791410558
	.quad	0x3fc0d33a3c338194              # double 0.13144615115653535
	.quad	0x3fdf29a7fa5bdfe4              # double 0.48691749047384136
	.quad	0x3fec49a965194772              # double 0.88399190660332594
	.quad	0x3fe3842d1b44d074              # double 0.60988478971422788
	.quad	0x3fd6209f3dcd07f2              # double 0.34574109111065277
	.quad	0x3fee4dcb88257920              # double 0.94699646559800854
	.quad	0x3fb7a909f213eb90              # double 0.092423078156498528
	.quad	0x3fe4359ed3ccad76              # double 0.63154546134084799
	.quad	0x3fc515b25bfb73d0              # double 0.16472463122673142
	.quad	0x3fa92ebce0e0ddc0              # double 0.04918470616433579
	.quad	0x3fcd10077670d938              # double 0.227051670868329
	.quad	0x3fd5159b5e0c3a2c              # double 0.32944378074981517
	.quad	0x3feb1293778323bb              # double 0.84601758329619459
	.quad	0x3f928dc84b492320              # double 0.018118981928895939
	.quad	0x3fdb5a0649306fbc              # double 0.42736966273673338
	.quad	0x3fbbc168a9b30788              # double 0.10841993468332423
	.quad	0x3fd1a0f8b603c1b8              # double 0.27544992232199261
	.quad	0x3fb80eca87266550              # double 0.093975694652177255
	.quad	0x3fd30abfdfac077e              # double 0.29753109782188136
	.quad	0x3fe46e6f4520b9c4              # double 0.63848079206018626
	.quad	0x3fec8fe7b331612f              # double 0.89256653784381068
	.quad	0x3fb15cdf54fe0850              # double 0.067823370218350165
	.quad	0x3fce4f23119a2314              # double 0.23679006919362477
	.quad	0x3fdb2a6a9eb128e2              # double 0.42446389672535478
	.quad	0x3fe206a732fb7d79              # double 0.56331214864250889
	.quad	0x3fda96042775fc7c              # double 0.41540626386262836
	.quad	0x3fe641245fce9e45              # double 0.69545191490483005
	.quad	0x3fe59c17dfc167cd              # double 0.67530435278171697
	.quad	0x3fe49de06aacda3e              # double 0.64427204928399084
	.quad	0x3fe03c5e4180b452              # double 0.50736916345125338
	.quad	0x3fedb8e7b8c27eb6              # double 0.9288214310253895
	.quad	0x3fd53dc559e4a170              # double 0.33189519671079548
	.quad	0x3fcdc182f29c72c0              # double 0.23246800276037582
	.quad	0x3fd87572f8db3bda              # double 0.38216852476483398
	.quad	0x3f82dd2d02455d40              # double 0.0092109218900718881
	.quad	0x3fa0475337c35010              # double 0.031794167096137582
	.quad	0x3fe755aa6b383c59              # double 0.72920723859159431
	.quad	0x3fb84adce5949e90              # double 0.094892316865861525
	.quad	0x3fe18067b0e00ede              # double 0.54692444368307824
	.quad	0x3fe6fc79228a355c              # double 0.71831948038167637
	.quad	0x3fe9c0d81328c6ec              # double 0.80479053251312171
	.quad	0x3fe6eae23d097a76              # double 0.71617233201307218
	.quad	0x3fda45f5599cc1dc              # double 0.41051992179111862
	.quad	0x3fdaf3ad9f97c848              # double 0.4211229380154049
	.quad	0x3fdb09fd6329a260              # double 0.4224847286591622
	.quad	0x3fe9104689935f30              # double 0.78323675985573082
	.quad	0x3fef112f1269e4c2              # double 0.97084764095702547
	.quad	0x3fcf2cd61944a30c              # double 0.24355579599184585
	.quad	0x3fe92d14595666b7              # double 0.78675286720973403
	.quad	0x3fef2a3d4f06be34              # double 0.97390618738967882
	.quad	0x3fe96ccb583bb1ff              # double 0.79453055604022882
	.quad	0x3fc633f03c5df070              # double 0.17346003482441885
	.quad	0x3feee02e3dd8caae              # double 0.96486579970799879
	.quad	0x3fd33e08e6c3c370              # double 0.30066130195250818
	.quad	0x3feb3719958a9f53              # double 0.85047606665919273
	.quad	0x3fa2c2f53b351b30              # double 0.036643661000701377
	.quad	0x3feda785184904b3              # double 0.92669920676430306
	.quad	0x3fe88ad823376c49              # double 0.76694876554700742
	.quad	0x3fe5a8b50fcab516              # double 0.67684414944020221
	.quad	0x3fdbcabdfed6e43c              # double 0.43424940001165502
	.quad	0x3fbacb048cdf2d80              # double 0.10466030539753568
	.quad	0x3feb9dcb3bdf7718              # double 0.86301194852760243
	.quad	0x3fcde61e2a83e988              # double 0.23358513904515754
	.quad	0x3fd5724f1a5f4380              # double 0.33510186744120318
	.quad	0x3fe639d9a00f7bdc              # double 0.69456177961171361
	.quad	0x3fec5c4740e4d2db              # double 0.88626444506243318
	.quad	0x3fb25929d1860650              # double 0.071673024800497531
	.quad	0x3fdaf933703c8424              # double 0.4214600177820691
	.quad	0x3fe231d47b9f0c5b              # double 0.56858276505262084
	.quad	0x3fe2662c7bd543fc              # double 0.5749723833670255
	.quad	0x3fddcac8b735ec8e              # double 0.46550195590652599
	.quad	0x3fc89e7c3d8b0edc              # double 0.19233658795393793
	.quad	0x3fe23ce731b83853              # double 0.56993446074353427
	.quad	0x3feba3a7f598db82              # double 0.86372755020316583
	.quad	0x3fd698a0f3823c2a              # double 0.35306571750783411
	.quad	0x3fe3539eb3ce9496              # double 0.60395751112504814
	.quad	0x3fe0ea4a3371d4e7              # double 0.5285998348978439
	.quad	0x3fe11e3fba4332ad              # double 0.53494249705689401
	.quad	0x3fd933104a6aeb0a              # double 0.39374167697285201
	.quad	0x3fbd49e50a0a51f8              # double 0.11440879340290866
	.quad	0x3fe5429e1810740e              # double 0.66438202571919347
	.quad	0x3fead168c5ca5614              # double 0.83806265479023744
	.quad	0x3fe68260c9232e35              # double 0.70341529163983429
	.quad	0x3febfee570638ed0              # double 0.87486526442486401
	.quad	0x3fe026848454de46              # double 0.50470186086654034
	.quad	0x3fe5171411999c49              # double 0.65906718671329501
	.quad	0x3fcf18ebef4ae504              # double 0.24294804748732457
	.quad	0x3fd1900b3b668bb0              # double 0.27441674042546094
	.quad	0x3fdb451af28290b6              # double 0.42609285051936341
	.quad	0x3fd49f7300843670              # double 0.32223200846133349
	.quad	0x3fe66cdae80a58e8              # double 0.70078797645944935
	.quad	0x3fe9a531c5a8ac67              # double 0.8014153347516072
	.quad	0x3fd7c7585a0cdd7e              # double 0.37154206079454599
	.quad	0x3fc3a0a5d3b6a48c              # double 0.15334008061953275
	.quad	0x3fd57bb21e1f1878              # double 0.33567479077863238
	.quad	0x3fe24f2eee8d4ce6              # double 0.57216593353441847
	.quad	0x3fecb3bdd43b808f              # double 0.89694110347410738
	.quad	0x3fe0f10d693d2bde              # double 0.5294253402183775
	.quad	0x3fab34ccf361fbc0              # double 0.053137211522872985
	.quad	0x3fee71ae456e0fa2              # double 0.95137704430134229
	.quad	0x3fdd9b609ecb9912              # double 0.4626084852919955
	.quad	0x3fee78d3d24abd07              # double 0.95224944183965554
	.quad	0x3fe55ebbc6ce6ad7              # double 0.66781414822920737
	.quad	0x3fe7dbe9b1108662              # double 0.74559483130378745
	.quad	0x3fea10aed9c9fcc6              # double 0.81453650032917646
	.quad	0x3fd7018eedccb8b0              # double 0.35947011206270485
	.quad	0x3fe1c764251b576e              # double 0.55558974502012659
	.quad	0x3fe937d46dbf51d7              # double 0.78806516108539426
	.quad	0x3fb1c0f0a6577ea8              # double 0.069350281344208953
	.quad	0x3fdb868798a808b8              # double 0.43008603961801439
	.quad	0x3feb16706b77b363              # double 0.84648915281068715
	.quad	0x3fea8557ed2192d2              # double 0.82877727808644353
	.quad	0x3febaad85e3e6f24              # double 0.86460512549408408
	.quad	0x3fd93faadf685672              # double 0.39451095406670966
	.quad	0x3fd41871d712e9c6              # double 0.31399198535259776
	.quad	0x3fe04217fbb084e2              # double 0.50806807668791643
	.quad	0x3fd7dcebfb1c1a96              # double 0.37285899660529631
	.quad	0x3fe1ae8ee676aa8b              # double 0.55255837452325929
	.quad	0x3fc4eb6b9dfbb1d8              # double 0.16343445982000904
	.quad	0x3fe018ab5ddcb22d              # double 0.50301140148582635
	.quad	0x3fe07e6b39dd7f5b              # double 0.51543198873330753
	.quad	0x3fd20142268fff0a              # double 0.28132680669658383
	.quad	0x3fdf94be27e25140              # double 0.49345353979994755
	.quad	0x3f8652b852f9c9c0              # double 0.010899963409632174
	.quad	0x3fe1edb91f319443              # double 0.56026893703950298
	.quad	0x3fdaefd4c0b90c8e              # double 0.42088812656965835
	.quad	0x3fe105465744282c              # double 0.53189389270960907
	.quad	0x3fd16f60cffda202              # double 0.2724229842338276
	.quad	0x3fe112239fd83b17              # double 0.53346425265940212
	.quad	0x3fd86617a2b17442              # double 0.3812312210846508
	.quad	0x3fe7f968691d9710              # double 0.74919529466999002
	.quad	0x3fe3805a9c356833              # double 0.60941820630546883
	.quad	0x3fbe2daf87c5a9e8              # double 0.11788460793255917
	.quad	0x3fef5679dea8e779              # double 0.97930615890730543
	.quad	0x3fccff5417d27ea0              # double 0.22654200709529437
	.quad	0x3f9d3628ce8e4920              # double 0.028526914221921662
	.quad	0x3fefe637a63ad9dc              # double 0.99685270754599342
	.quad	0x3fef674f6d5f34f3              # double 0.98136111604404019
	.quad	0x3fe67c37222e04ae              # double 0.7026630084584633
	.quad	0x3fd5fc9588b77c66              # double 0.34354151107067421
	.quad	0x3fe01b902f8ab3a2              # double 0.50336465154179089
	.quad	0x3fe5706f273b4be0              # double 0.66997487699915936
	.quad	0x3fea04418d504813              # double 0.81301953888237433
	.quad	0x3fb273506f2327c8              # double 0.072072054989944623
	.quad	0x3fe50e5543650b80              # double 0.65799964106587083
	.quad	0x3fef7bea6546189f              # double 0.98387641696969641
	.quad	0x3fd1d227b2fc331a              # double 0.2784518478300001
	.quad	0x3feb67c2e6d93953              # double 0.85641617858508778
	.quad	0x3fd3ea1c4443eac6              # double 0.31116396585973083
	.quad	0x3fe9fcab0df7c489              # double 0.81209328392118707
	.quad	0x3fbc8a1f18c743b8              # double 0.11148256640377852
	.quad	0x3fec2737b4cf92eb              # double 0.87978730501762692
	.quad	0x3fe734dd68bfd73c              # double 0.72520323237288364
	.quad	0x3fd6531a315b2b50              # double 0.34882216281828438
	.quad	0x3f54fdb97e37fa00              # double 0.0012811957793698037
	.quad	0x3f938ca5c46a83a0              # double 0.01909121524170454
	.quad	0x3fe0301310aaadb1              # double 0.50586846595017765
	.quad	0x3fc049507c9581b8              # double 0.12723737796023982
	.quad	0x3fd84f943b230708              # double 0.37985711836891811
	.quad	0x3fc437a5e8ebf550              # double 0.15794824479227509
	.quad	0x3fe37f00e6093663              # double 0.60925335816291371
	.quad	0x3fe50a28fac56731              # double 0.65749024370891196
	.quad	0x3fc6f9c4db9859a8              # double 0.17949734423082231
	.quad	0x3fecd7bc3402a3a7              # double 0.90133485944999314
	.quad	0x3fe4bf036b710630              # double 0.64831706032436465
	.quad	0x3fe86c0e294ef8a5              # double 0.76319034641325756
	.quad	0x3fd3645c5c85c4f2              # double 0.30300053630260415
	.quad	0x3fa12d14d6ad3f50              # double 0.033547068792016632
	.quad	0x3fcb776b0f5d6468              # double 0.21458185434565569
	.quad	0x3feedd9b766b4e4b              # double 0.96455166939490177
	.quad	0x3febd1606d2924b3              # double 0.86930867500736608
	.quad	0x3fca41c2eb836b20              # double 0.20513187884974915
	.quad	0x3feae497c4ee99e0              # double 0.84040440047538922
	.quad	0x3feda04eb2a9d925              # double 0.92581877608498486
	.quad	0x3fd22aa78ba0f346              # double 0.28385342250458157
	.quad	0x3facd3b0918d8a80              # double 0.056302564399421051
	.quad	0x3fc6b18bd40e6ff8              # double 0.17729328016582691
	.quad	0x3fa0cd4d7f495cf0              # double 0.032816335475837621
	.quad	0x3fe6cdb166ecf45d              # double 0.71260900595337839
	.quad	0x3fc514aeb6ec42ac              # double 0.16469367915899136
	.quad	0x3fc48d6a1444bf80              # double 0.1605656241385951
	.quad	0x3fd9a9b28df31228              # double 0.40098251211409996
	.quad	0x3fedd05e85f91f74              # double 0.93168569723728333
	.quad	0x3fe21a5fbe431fb7              # double 0.5657194820459982
	.quad	0x3fa345ef45316eb0              # double 0.037642934032843356
	.quad	0x3f9545e098c69be0              # double 0.020774373364158438
	.quad	0x3fe910f980bd4a6c              # double 0.78332209724824286
	.quad	0x3fdc5b5a124f4186              # double 0.44307567394300695
	.quad	0x3fab3f533f9e6240              # double 0.053217507854416812
	.quad	0x3fb1d9b3eda9f7d8              # double 0.069728131793424963
	.quad	0x3fc8c42b30b22148              # double 0.19348659398770907
	.quad	0x3fc24beee3b1a334              # double 0.14294229619852106
	.quad	0x3fe88b5ab23a68f3              # double 0.76701102075756322
	.quad	0x3fdc66279791848a              # double 0.44373502542118415
	.quad	0x3fe5ed009fd34ff6              # double 0.68518096176057841
	.quad	0x3fed6744436109eb              # double 0.91885579261753259
	.quad	0x3fd03f8202c119f2              # double 0.25387621182417697
	.quad	0x3fed516ea28c96ee              # double 0.91619045017134026
	.quad	0x3febeb53e541b34f              # double 0.87247652794540353
	.quad	0x3fea62040cb7754e              # double 0.82446482166020885
	.quad	0x3febd11714fa1f1e              # double 0.86927370163991546
	.quad	0x3fe01f6f340a017f              # double 0.5038372055424104
	.quad	0x3fed7ea369579712              # double 0.92170878004682977
	.quad	0x3fe398796f2a92f5              # double 0.61236259185952113
	.quad	0x3fb6d848d3a1ca10              # double 0.089237739246336156
	.quad	0x3fedf755f87e4ce2              # double 0.93644236120090008
	.quad	0x3fe070182452462e              # double 0.5136833867456454
	.quad	0x3fed27eb606b2c5d              # double 0.91112297851340041
	.quad	0x3fe26516fb0b72a2              # double 0.57484005958720652
	.quad	0x3fe99ce09d645f08              # double 0.80040007343902264
	.quad	0x3fe18be9959cc7e4              # double 0.54832915517021918
	.quad	0x3feda9129fd2cb43              # double 0.92688876357565453
	.quad	0x3fc6416a2859eeb0              # double 0.17387129755285491
	.quad	0x3fe9a86d88e20208              # double 0.80181004271440859
	.quad	0x3fce854b75d53230              # double 0.23844283345751327
	.quad	0x3f9c255538604e00              # double 0.027486163679055764
	.quad	0x3fb30f24b7b2e348              # double 0.074449820373854725
	.quad	0x3fe7e57936c2efd1              # double 0.74676190085983241
	.quad	0x3fe613539057dcd5              # double 0.68985918228181708
	.quad	0x3feff2b1f7523e0a              # double 0.99837587647374559
	.quad	0x3feeec49f2f725c5              # double 0.96634385542090994
	.quad	0x3fe112fe0377e566              # double 0.53356838872347789
	.quad	0x3fd5ee1aeb97505e              # double 0.34265778548183856
	.quad	0x3fe795a5698c1739              # double 0.73701735129063828
	.quad	0x3f94c150455b4c20              # double 0.020268682702248353
	.quad	0x3fe5c45a2b95f29c              # double 0.68021877777899276
	.quad	0x3fe8428926c8f1e8              # double 0.75812203955825641
	.quad	0x3fe04542e41a9ffc              # double 0.50845474769175736
	.quad	0x3fd4a1c920694488              # double 0.32237461247593346
	.quad	0x3f97a7ce888adf40              # double 0.023101069530383045
	.quad	0x3fdd66261f3aeafc              # double 0.45935967492884777
	.quad	0x3fcd4cb093310548              # double 0.22890288531383818
	.quad	0x3fe4c4ad87d88464              # double 0.6490085271108339
	.quad	0x3fcf3c86d91b7978              # double 0.24403462983077495
	.quad	0x3fe90d409895d0e7              # double 0.78286771585274273
	.quad	0x3feffb956facf863              # double 0.99946090518620811
	.quad	0x3fec5606ec78f434              # double 0.88550134836226002
	.quad	0x3fe05dab508b2646              # double 0.51143422824061058
	.quad	0x3fd04345170b075a              # double 0.25410582781124946
	.quad	0x3fef275e0611aedb              # double 0.97355557618490295
	.quad	0x3fe425a844cff124              # double 0.62959683837792513
	.quad	0x3febd182ae379225              # double 0.86932500864765372
	.quad	0x3fd00224e711222c              # double 0.25013086857919364
	.quad	0x3fce96666b046e7c              # double 0.23896484590010292
	.quad	0x3fc3cedcd3c8730c              # double 0.15475044575659813
	.quad	0x3fe2242b2fffe636              # double 0.56691512465403693
	.quad	0x3fef4c408744d0df              # double 0.97805811328592173
	.quad	0x3fe9327eb30108c6              # double 0.78741393052794062
	.quad	0x3fc49b3656284470              # double 0.1609867020311273
	.quad	0x3fc95ecae7c23380              # double 0.1982053405412465
	.quad	0x3fed37c4ed432c13              # double 0.91305776920615001
	.quad	0x3fdf1c82fedfac3c              # double 0.48611521615993403
	.quad	0x3fc3111b4685d35c              # double 0.14895955031866037
	.quad	0x3f6b9c1099302b00              # double 0.0033703159510926062
	.quad	0x3fd1468eb85876dc              # double 0.26993148806091738
	.quad	0x3fe04f7e6ab0f358              # double 0.5097038348973042
	.quad	0x3fd882dde243e592              # double 0.38298747154439028
	.quad	0x3faf12ef6e649430              # double 0.060691339708036529
	.quad	0x3fd7f2e681f5261e              # double 0.37420046511815197
	.quad	0x3fe8126bc0e24983              # double 0.75224864647525214
	.quad	0x3fe3da349150104a              # double 0.62038639432331277
	.quad	0x3fe2522e6d5f737f              # double 0.57253190385709718
	.quad	0x3fe8520b82ffb435              # double 0.76001525483810062
	.quad	0x3fedb34aef9b91ec              # double 0.92813631819131847
	.quad	0x3fe02b2a72c46c6a              # double 0.50526926436886055
	.quad	0x3fd6ebea1418c36e              # double 0.35814907038279997
	.quad	0x3fe3bcfdff7fee3c              # double 0.61682033445635609
	.quad	0x3fe365cb81717f14              # double 0.60617614061263447
	.quad	0x3fe6298b25728a4e              # double 0.69257123292875078
	.quad	0x3fdc87dd6314ed06              # double 0.44579252887679421
	.quad	0x3fe3e0e40036a8b6              # double 0.62120246926976708
	.quad	0x3feff5a7d6cbddad              # double 0.99873725845730165
	.quad	0x3fdb4ebb4398c6c0              # double 0.42668038941620168
	.quad	0x3fe43e6f07725f64              # double 0.63262130217024692
	.quad	0x3fe74a93cdee3888              # double 0.72785368176279608
	.quad	0x3fdda9707ccf8ab0              # double 0.46346676052614111
	.quad	0x3fe96bffc0a6b534              # double 0.79443347575366951
	.quad	0x3fd79617da17ae6a              # double 0.36853596017929269
	.quad	0x3fe936db9a979fc8              # double 0.78794651216321032
	.quad	0x3fc47333e65c93cc              # double 0.15976570842863536
	.quad	0x3fad6b4a8711e690              # double 0.057459191310909152
	.quad	0x3fc8a8a3b39ec3dc              # double 0.1926464678813592
	.quad	0x3fedcfe0f5815f22              # double 0.93162582350030143
	.quad	0x3fe47db166593977              # double 0.64034337987850065
	.quad	0x3fd8d4a334d7f9a4              # double 0.38797836456788048
	.quad	0x3fc0c12cf8f44cdc              # double 0.13089525371524402
	.quad	0x3fe888651e364dc5              # double 0.76664977932744505
	.quad	0x3fe954a2b1013aad              # double 0.79158148356676394
	.quad	0x3fcec5242e295c64              # double 0.24039127592070308
	.quad	0x3fe08110e626f19a              # double 0.51575512839876869
	.quad	0x3feb64802a2d0604              # double 0.85601814496493533
	.quad	0x3fe8995b96fca70d              # double 0.76872043122895806
	.quad	0x3f63beb49350df00              # double 0.0024102713455497193
	.quad	0x3fd4f1649b702c94              # double 0.32723345927724634
	.quad	0x3fe2e5269be103df              # double 0.59047251172171034
	.quad	0x3fe7509a4ba25a7d              # double 0.72858919880202644
	.quad	0x3fb0c8a1c277cfa8              # double 0.065561399438421319
	.quad	0x3fd102b10173f95c              # double 0.26578927175423472
	.quad	0x3fbe053be6b69270              # double 0.11726736433645057
	.quad	0x3fdc483b20ab836a              # double 0.44190862837245126
	.quad	0x3fd1fb3075cf5106              # double 0.28095637802950113
	.quad	0x3fe71b0a81c52038              # double 0.72205090852458564
	.quad	0x3fe23897277fe47a              # double 0.5694080134845898
	.quad	0x3fd1576f628ed474              # double 0.27096161484525472
	.quad	0x3feaf75c445f4a6b              # double 0.84269536355925589
	.quad	0x3fd6f7360ff7d202              # double 0.35883857306842526
	.quad	0x3fb3cf4c03730138              # double 0.077381850092028581
	.quad	0x3f9badeb6917da00              # double 0.027030638017061293
	.quad	0x3fee167e1c78aa3f              # double 0.94024568138895137
	.quad	0x3fd988fefdc8968e              # double 0.39898657592343845
	.quad	0x3fd98ac5ab3276ca              # double 0.3990949794623303
	.quad	0x3fdcfedc06ba3c3e              # double 0.45305538804035794
	.quad	0x3fca86a5f73cf5c4              # double 0.20723414013074948
	.quad	0x3fe17ad225b012d7              # double 0.54624278412719718
	.quad	0x3fdee45d12e03b6e              # double 0.48268820613241459
	.quad	0x3fa400726e767fc0              # double 0.039065910324324715
	.quad	0x3fe4b84ca6dc7305              # double 0.64749748792709794
	.quad	0x3fe893115d706be0              # double 0.76795261621316157
	.quad	0x3feb1dda122f8452              # double 0.84739402343633174
	.quad	0x3fb392df16529460              # double 0.076459830236289772
	.quad	0x3fe274675e5bca78              # double 0.5767094462338056
	.quad	0x3fddaeffbbd7b308              # double 0.46380608886720198
	.quad	0x3f8514ea675e0a00              # double 0.010293799666901471
	.quad	0x3fe4d47d5e6539fa              # double 0.65093868671993893
	.quad	0x3fc9cb237e90e914              # double 0.20151179962142207
	.quad	0x3fec79a913ef94a5              # double 0.88985113042567276
	.quad	0x3fe99ec4521ed777              # double 0.80063072241931266
	.quad	0x3fa9ba13db2fc9e0              # double 0.050247784143625074
	.quad	0x3fe12e6e3a2634c6              # double 0.5369177947738073
	.quad	0x3fe807d9f068fa72              # double 0.75095841364948357
	.quad	0x3fde722fd9b9dbde              # double 0.47571941625886704
	.quad	0x3fc5985794114038              # double 0.16871161203244056
	.quad	0x3fd7c8fedd7c1a30              # double 0.37164279584286231
	.quad	0x3fd629cf29294e5e              # double 0.34630183238662038
	.quad	0x3fe31b056398864e              # double 0.59704846813492352
	.quad	0x3f7d182559217700              # double 0.0071031054413575045
	.quad	0x3fec7cc3dd631c4f              # double 0.89023011436155197
	.quad	0x3fc21afc01066ee8              # double 0.14144849824958006
	.quad	0x3fe1f7444d401b42              # double 0.5614339360043703
	.quad	0x3fa1d1a7fecb8ff0              # double 0.034802675106931136
	.quad	0x3fdf636cd451922e              # double 0.49044342741243241
	.quad	0x3fc1e72acd81b58c              # double 0.13986716303353963
	.quad	0x3fd55838afaa33da              # double 0.3335096087910735
	.quad	0x3fc00bf570a8f66c              # double 0.12536495209672027
	.quad	0x3fe48cdc9412c45f              # double 0.64219502373283521
	.quad	0x3fe842b24a62d771              # double 0.75814165619406826
	.quad	0x3fe6bf60fd06de88              # double 0.71086167735389072
	.quad	0x3fe5f87265c44fa5              # double 0.68657798649154655
	.quad	0x3fd3560412854828              # double 0.30212499436049933
	.quad	0x3fedd43f7bcc2e71              # double 0.93215917758193545
	.quad	0x3fe0c58df82f72c8              # double 0.52411554788303594
	.quad	0x3feb748e277acc3c              # double 0.85797794066309718
	.quad	0x3fcbb73f0c0dc9dc              # double 0.21652973259513331
	.quad	0x3fe234f794720c5e              # double 0.56896571152936892
	.quad	0x3fe10624a892a5f5              # double 0.53199990200408698
	.quad	0x3fc233d233bd95a8              # double 0.14220645452875869
	.quad	0x3fc4d504f57edcd4              # double 0.16275083529556034
	.quad	0x3feb61f1fb909f5b              # double 0.85570620664382646
	.quad	0x3fe36c88f9734c9d              # double 0.60699890824107039
	.quad	0x3fecddc1207b1d51              # double 0.90206962913445399
	.quad	0x3fecfd58c722431a              # double 0.90592612164809627
	.quad	0x3fe84cf2ebf75270              # double 0.75939317786339977
	.quad	0x3fc0d03ca403121c              # double 0.13135488518140981
	.quad	0x3faeb107711f28b0              # double 0.059944374617388774
	.quad	0x3fd6ed6a254faffa              # double 0.35824063914947113
	.quad	0x3feefaf590c4ea2a              # double 0.96813467288240429
	.quad	0x3fdf4bc5f174e5bc              # double 0.48899983005284375
	.quad	0x3fed01cd50fd9a75              # double 0.90646997278675079
	.quad	0x3fe534d1e140d9ac              # double 0.66269773478307092
	.quad	0x3fe66184930273cf              # double 0.69940403664406314
	.quad	0x3fe69c542075f773              # double 0.70658308353425381
	.quad	0x3fd411a89bdfe656              # double 0.31357779714708067
	.quad	0x3fee36a4e9ed7d7b              # double 0.94417043389323341
	.quad	0x3fe11d02accf2528              # double 0.53479131461896134
	.quad	0x3fbada51a7f78fa0              # double 0.10489378309972475
	.quad	0x3fe3f142930c7294              # double 0.62320069046434634
	.quad	0x3fd3238f98e2b23a              # double 0.29904546671130883
	.quad	0x3fbfefc028df8ab8              # double 0.12475205419427027
	.quad	0x3fce7246777ff508              # double 0.23786240420296445
	.quad	0x3fe20751668383ae              # double 0.56339330694401268
	.quad	0x3fb6d862647cf200              # double 0.089239263089389453
	.quad	0x3fea6a88d2851a9f              # double 0.82550469510245594
	.quad	0x3fe268160735cf63              # double 0.57520581634751655
	.quad	0x3fe3480ec5fd7f3e              # double 0.60254610700574296
	.quad	0x3fd50e904e7aac52              # double 0.32901389755233368
	.quad	0x3f9f16af5d7df140              # double 0.030359973985001121
	.quad	0x3fdd671202f62b36              # double 0.45941591538637583
	.quad	0x3facb63ac12c9300              # double 0.056077800827813107
	.quad	0x3feb1252392309f3              # double 0.84598647269768745
	.quad	0x3fe517889ef48f3e              # double 0.65912276311835405
	.quad	0x3fd191f0c150f39c              # double 0.27453249815499148
	.quad	0x3fd1c4f50bc0c2ce              # double 0.27764631412268848
	.quad	0x3fc9c42f9d1d4558              # double 0.2012996213111744
	.quad	0x3fe5d3b5dd3ea697              # double 0.68209355556355689
	.quad	0x3fcc237833feb234              # double 0.21983244456113626
	.quad	0x3fdad83764f917a2              # double 0.41944680081030061
	.quad	0x3fe6c9a5c368a420              # double 0.71211517492077192
	.quad	0x3fe1db714c62beef              # double 0.5580374233158788
	.quad	0x3feaa5ccb0d6b079              # double 0.83273920573039029
	.quad	0x3fd40e802601df0a              # double 0.31338504516269039
	.quad	0x3fc707367cb42084              # double 0.1799076184181595
	.quad	0x3fec2d275d67bda1              # double 0.88051193469248201
	.quad	0x3fdf9a764bf1475a              # double 0.49380261818179394
	.quad	0x3fc5733130711744              # double 0.16757788529701589
	.quad	0x3fdb277f84d17abe              # double 0.42428577394995759
	.quad	0x3fd6e7804c66afe8              # double 0.35787970982596429
	.quad	0x3fe4d9fb0982413b              # double 0.65160896165074378
	.quad	0x3feff7f6e133dee6              # double 0.99901908860098554
	.quad	0x3fb1a215c0b50008              # double 0.068879470393767517
	.quad	0x3fe68b86f15d4cd8              # double 0.70453211919302827
	.quad	0x3fd5d653805b6584              # double 0.34120643172135368
	.quad	0x3fda27c11e7bc4cc              # double 0.40867641426946189
	.quad	0x3fee4adf3283f112              # double 0.94663963190353884
	.quad	0x3fb3307369b2c320              # double 0.074958051018950034
	.quad	0x3fef2a7c164bd4dd              # double 0.97393612246255722
	.quad	0x3fec48f061dfdce0              # double 0.88390368572336441
	.quad	0x3fd921859263738c              # double 0.39267100616216832
	.quad	0x3fe151e3000c296c              # double 0.54124593743590088
	.quad	0x3fe6384adf6eafc2              # double 0.69437163962492598
	.quad	0x3fdfb06bbfa52e7c              # double 0.4951428767715027
	.quad	0x3fd852e7ec487018              # double 0.38006017755992749
	.quad	0x3fc63473805c1be0              # double 0.1734756829029882
	.quad	0x3fe9d8500be82956              # double 0.8076553566509499
	.quad	0x3fda3e99984c577c              # double 0.4100707995688635
	.quad	0x3fd733f982a3a888              # double 0.36254728086226651
	.quad	0x3fbc338e2ec3b858              # double 0.1101616729899616
	.quad	0x3fe3363ac0939610              # double 0.60036981213187524
	.quad	0x3fdb5d1f22461560              # double 0.42755869242713196
	.quad	0x3fef20398ce1c759              # double 0.97268369213109473
	.quad	0x3fe0d89f5f775d04              # double 0.52644318242792609
	.quad	0x3fc0ea5a5d584270              # double 0.13215188558435242
	.quad	0x3fc8e0566490ef14              # double 0.19434623632866332
	.quad	0x3fd4bc629ad324a4              # double 0.32399811858756267
	.quad	0x3fcc470773ae4f7c              # double 0.22091763638001882
	.quad	0x3fd683b3d9f7cad0              # double 0.35178848539287078
	.quad	0x3fe737bd4e4793d2              # double 0.72555413521751633
	.quad	0x3fec0338f3ef5885              # double 0.87539336818260038
	.quad	0x3fe23e5752899d98              # double 0.57010999794595119
	.quad	0x3fb9d63f2146d5d8              # double 0.10092539369983144
	.quad	0x3fe2baf2b47222f7              # double 0.58532080882386495
	.quad	0x3fed4a91cac89465              # double 0.91535272222666875
	.quad	0x3fe0771a52dabcc4              # double 0.51453891928203932
	.quad	0x3fc45c3f0e8a2e10              # double 0.15906513414334755
	.quad	0x3fcd9ce9a7be94e8              # double 0.23135109606406634
	.quad	0x3fe3536392f97a5d              # double 0.60392931657754512
	.quad	0x3fd5c63901771382              # double 0.34022355216102806
	.quad	0x3fec341ee3dd0e29              # double 0.88136238579358406
	.quad	0x3fe810fc06160c13              # double 0.75207329930015232
	.quad	0x3fec38762f6fe369              # double 0.88189229264308466
	.quad	0x3fce382386f8d7e0              # double 0.23608821955139003
	.quad	0x3fe193e446d9b631              # double 0.54930318677879175
	.quad	0x3fbc3d850005fa18              # double 0.11031371355600361
	.quad	0x3fc8b6d6f729134c              # double 0.19307982509976751
	.quad	0x3fe57aa0ce5c2aa6              # double 0.67121925644581348
	.quad	0x3fbd973c9663fc68              # double 0.11558893844265727
	.quad	0x3feacaa77da999e0              # double 0.8372380689950738
	.quad	0x3fc6c071dee423fc              # double 0.17774794944151029
	.quad	0x3fbfe5332675b868              # double 0.12459106148682653
	.quad	0x3fd923ce1cd91664              # double 0.3928103715628366
	.quad	0x3fec0814ca487898              # double 0.87598647602478064
	.quad	0x3fe5c619b93e36aa              # double 0.6804321878459707
	.quad	0x3fddb90cc0161112              # double 0.46441954382341166
	.quad	0x3fe1541c3d85e518              # double 0.54151737228599739
	.quad	0x3fd2938f12a42402              # double 0.29025627918650809
	.quad	0x3fdee822157bca94              # double 0.48291828248981372
	.quad	0x3feb05917c8a3ee2              # double 0.84442972492430735
	.quad	0x3fe19edaa20464e4              # double 0.55064136165597377
	.quad	0x3fc4587cfa26dbf8              # double 0.15895044531291069
	.quad	0x3fc9a4eb5da720b0              # double 0.20034544060604764
	.quad	0x3fcc2d89718de084              # double 0.22013967556609171
	.quad	0x3fc5f7d72b09144c              # double 0.17162599183407889
	.quad	0x3fdba213f9b72046              # double 0.43176745783103276
	.quad	0x3fe1f37b6617c7c9              # double 0.56097192707078947
	.quad	0x3fee9088601507fd              # double 0.9551431538204721
	.quad	0x3fceca62b5b95894              # double 0.2405513179134614
	.quad	0x3fd8d150b1504272              # double 0.38777558627865638
	.quad	0x3fd48eec36ce2796              # double 0.32122331001357318
	.quad	0x3feaea1a2b80b0db              # double 0.84107693192120381
	.quad	0x3fc34f5a7c5e921c              # double 0.15085917542195737
	.quad	0x3fefa5579a462c23              # double 0.98893337375318812
	.quad	0x3fd9e332730cdf50              # double 0.40449200854663037
	.quad	0x3fe366b4c35d286e              # double 0.6062873664570938
	.quad	0x3fe42a3b3cc74ff1              # double 0.63015519972623057
	.quad	0x3febc6b34095aae2              # double 0.86800539602458238
	.quad	0x3fe882d9375bb996              # double 0.7659727174012001
	.quad	0x3fc1d6b6d2f99870              # double 0.13936505605233007
	.quad	0x3feba57d8d2421b0              # double 0.86395146910313336
	.quad	0x3fb5aecacf0065f0              # double 0.08469836763142502
	.quad	0x3fc00aa2e6eeea70              # double 0.12532459522283856
	.quad	0x3fde7a005ad70600              # double 0.47619637366378242
	.quad	0x3fd09c5546ea0790              # double 0.25954181599819837
	.quad	0x3fe7c91ff1df2f25              # double 0.74330136528576374
	.quad	0x3fefe5995602e698              # double 0.99677721785629369
	.quad	0x3feb952726154d07              # double 0.86195714414716995
	.quad	0x3faa08b4971b6a50              # double 0.050847667165460408
	.quad	0x3fe237424f320df5              # double 0.56924548595310276
	.quad	0x3fd905dc4c29c32e              # double 0.39098269880109882
	.quad	0x3fd6f9cdf76e95c8              # double 0.35899686015394794
	.quad	0x3fe24c1d2a3fc78e              # double 0.57179125072274117
	.quad	0x3fe57624719e2281              # double 0.67067167464217914
	.quad	0x3fedbd160db3aaee              # double 0.92933180500162194
	.quad	0x3fe428c4c254723d              # double 0.62997663455059405
	.quad	0x3fe7823449cdba04              # double 0.73464407362718065
	.quad	0x3febeab408efaa38              # double 0.87240030045842953
	.quad	0x3fef60f997f6cad8              # double 0.98058776550746085
	.quad	0x3fe68269a478e83f              # double 0.70341951488013155
	.quad	0x3fef4612461fea61              # double 0.97730363556122423
	.quad	0x3fd12f194667fe6e              # double 0.26849967837913524
	.quad	0x3fb3218dbf916670              # double 0.074730738896869431
	.quad	0x3fe32a73bc79bd34              # double 0.59893214046124976
	.quad	0x3fe9ab42753bc125              # double 0.80215571305419486
	.quad	0x3fc4dcf99e6deba8              # double 0.16299362407502582
	.quad	0x3fe7819e3d96f383              # double 0.73457252530316486
	.quad	0x3fdece24745a524a              # double 0.4813319336183538
	.quad	0x3fe356109f41d090              # double 0.60425597290897493
	.quad	0x3fcc90ddc6595514              # double 0.22317096886642018
	.quad	0x3fe28a56fe8c47c8              # double 0.57938718525314759
	.quad	0x3fed00d49f3117da              # double 0.90635138599531762
	.quad	0x3fe73e48aa7f7750              # double 0.72635300922750368
	.quad	0x3fb0c7df4e3fa200              # double 0.065549809077886323
	.quad	0x3fc5a9f29793178c              # double 0.16924888993360943
	.quad	0x3fe04171b2a5cb07              # double 0.50798878566851691
	.quad	0x3fc9b6f02147cf40              # double 0.20089532494568552
	.quad	0x3fd3a10cabfff2ba              # double 0.30670468136649343
	.quad	0x3fb008ea02ec4010              # double 0.062636018479907074
	.quad	0x3fea88ff919a0c23              # double 0.82922342717973085
	.quad	0x3fbbc0c535c86070              # double 0.10841019213728642
	.quad	0x3fd8e19e926cbda0              # double 0.38877071666044039
	.quad	0x3fe43f5cb0b5896f              # double 0.63273462785245538
	.quad	0x3fe1184466663636              # double 0.53421230316025148
	.quad	0x3feb81bdbb2bb8c4              # double 0.85958754116816082
	.quad	0x3fb0c9c86ea713e0              # double 0.065578963293844605
	.quad	0x3fe0aa08a05ec692              # double 0.52075606653507323
	.quad	0x3fa64ea7f7242ea0              # double 0.043568848532314464
	.quad	0x3fe6849145ecdda7              # double 0.70368255288388049
	.quad	0x3fcb29acf340ec0c              # double 0.21220933797471309
	.quad	0x3fea80387c0a9f14              # double 0.82815193392613872
	.quad	0x3fd777570b73425a              # double 0.36665893667399063
	.quad	0x3fe1a341b87834b0              # double 0.55117879895410304
	.quad	0x3fdf33458c35a5aa              # double 0.48750437443103556
	.quad	0x3fe2bb410d09293a              # double 0.58535816713382549
	.quad	0x3fe2aa6fe264989d              # double 0.58330530373929756
	.quad	0x3fe112cf1330833e              # double 0.53354600665998198
	.quad	0x3fbf1d6d42774ac0              # double 0.12154276726441093
	.quad	0x3fd3dedb8bef089c              # double 0.3104771486797604
	.quad	0x3fdd851da7b9ec4e              # double 0.46124974612729808
	.quad	0x3fd07ba88623aaf4              # double 0.25754750346702271
	.quad	0x3fe74707eb51a678              # double 0.72742076836330138
	.quad	0x3febc2e6facf6173              # double 0.86754178034156693
	.quad	0x3fee346c21e8564c              # double 0.94389921782085073
	.quad	0x3fea711ac0d21334              # double 0.82630670223497881
	.quad	0x3feec0878c640acb              # double 0.96100213451458083
	.quad	0x3fe595bb00a2e6ef              # double 0.67452764629635265
	.quad	0x3fefd3e5bd164d56              # double 0.99461638384893081
	.quad	0x3fde8d1f2e37a096              # double 0.47736339105041148
	.quad	0x3fc6686b480d0680              # double 0.17506161707028767
	.quad	0x3fe7d2bdfd329875              # double 0.74447535946525412
	.quad	0x3fe2c533154a2f2a              # double 0.58657220991287784
	.quad	0x3fd8ab781cf02342              # double 0.38546564889889023
	.quad	0x3fe526673821304f              # double 0.66093789065190289
	.quad	0x3fd62807d45b45b8              # double 0.34619327295248636
	.quad	0x3fed520794390447              # double 0.91626337957144066
	.quad	0x3fe0dc511c2bc5e3              # double 0.52689414503236909
	.quad	0x3feee9ff1a327eb3              # double 0.96606402508401456
	.quad	0x3fe31dd7aff26053              # double 0.59739288677793423
	.quad	0x3fea5b6da55254f3              # double 0.82366068162323669
	.quad	0x3fee8f7f834ca204              # double 0.95501685757068388
	.quad	0x3fd12f1ceabacfc2              # double 0.26850054667306378
	.quad	0x3f9c429ce2c0ca80              # double 0.027597857799444458
	.quad	0x3fded15ae8bb6414              # double 0.48152802207693068
	.quad	0x3fea16934090ba8a              # double 0.81525576219958507
	.quad	0x3fd431093ee4bdf8              # double 0.31549292699762033
	.quad	0x3fcde729c7bb38a0              # double 0.23361704113489612
	.quad	0x3fdf339f20009fcc              # double 0.48752573132742039
	.quad	0x3fd8703a59310e0a              # double 0.3818498488437575
	.quad	0x3fc34e979c5a2cfc              # double 0.15083594450366167
	.quad	0x3fda1733d8166164              # double 0.40766616918837983
	.quad	0x3fe339a00f783ec6              # double 0.60078433057238878
	.quad	0x3feff10fd05142d0              # double 0.99817648589131558
	.quad	0x3fe1288af436790c              # double 0.53619907090959051
	.quad	0x3fde71500095fe9c              # double 0.47566604668825518
	.quad	0x3fb2597f406ce180              # double 0.071678117016636733
	.quad	0x3fd3d7022b764692              # double 0.30999807590806328
	.quad	0x3fe0d1e0832a1fe2              # double 0.52561975114894843
	.quad	0x3fe0c0a76a29dc6a              # double 0.52351732955038455
	.quad	0x3fdfe0ce755b521e              # double 0.49809609852425918
	.quad	0x3fed19b8dab0f9ef              # double 0.90938990319392399
	.quad	0x3fc8b9c14b967e6c              # double 0.19316879454435154
	.quad	0x3fe19b37e3406d4a              # double 0.55019754777041752
	.quad	0x3fee6cb8700e903d              # double 0.95077154050932899
	.quad	0x3fd871587daecd3e              # double 0.38191807054245774
	.quad	0x3fef5eb8f3350ec0              # double 0.98031280042092561
	.quad	0x3fe9144993025168              # double 0.78372648918825139
	.quad	0x3fbecaa7e1cf0880              # double 0.12027978194149291
	.quad	0x3fe0e682f9aa7cfc              # double 0.52813862574467363
	.quad	0x3fd73e8615d61a22              # double 0.36319114811377251
	.quad	0x3fe2fff0a05f28d3              # double 0.59374266932106889
	.quad	0x3fb23832ceeaf828              # double 0.071170020596554751
	.quad	0x3fef6786d940f569              # double 0.98138754303333286
	.quad	0x3fe87349b6d5ea67              # double 0.76407323560790708
	.quad	0x3f9b1932f1242e40              # double 0.026463314025973128
	.quad	0x3fc8760350f65e50              # double 0.19110146954766316
	.quad	0x3fdc657e2cf687dc              # double 0.44369463339728354
	.quad	0x3feefeb987a08f04              # double 0.96859432687458069
	.quad	0x3fee1860fda4f770              # double 0.9404759363166999
	.quad	0x3fe30634dfbcdfcc              # double 0.59450763415133556
	.quad	0x3fe7802db0fdbaca              # double 0.73439678734379155
	.quad	0x3fe50ed69799d139              # double 0.65806130990544098
	.quad	0x3fde863d0c3839ea              # double 0.47694326585124591
	.quad	0x3fd1997980bc29dc              # double 0.27499234744814571
	.quad	0x3fe05fa3ca909986              # double 0.51167478145070855
	.quad	0x3fed0f910dd3ca50              # double 0.90815022183080352
	.quad	0x3fd538f7f3d6113e              # double 0.33160208522919621
	.quad	0x3fef9e69489299a2              # double 0.98808731245371839
	.quad	0x3fee830aa01bbb37              # double 0.95349627753407773
	.quad	0x3fe9f7862e1b5d99              # double 0.81146534924748714
	.quad	0x3fe98d34bf55ac95              # double 0.79848706598331154
	.quad	0x3feecd3acc4256ff              # double 0.962552451079972
	.quad	0x3fe2ac19ff53d2c2              # double 0.58350849026336271
	.quad	0x3fe4fc9d05c1924f              # double 0.6558365929054818
	.quad	0x3fcc6f1d76251810              # double 0.22214096325677746
	.quad	0x3fcd7ef74ff68adc              # double 0.23043719677396879
	.quad	0x3fd54b522c66fe38              # double 0.33272222839511612
	.quad	0x3fd47f97e7593a04              # double 0.32028768150931364
	.quad	0x3fec575ce62e0fcf              # double 0.88566441494958237
	.quad	0x3fde4302ada90cda              # double 0.47283999403971466
	.quad	0x3fc84942ef8cc304              # double 0.1897357625653272
	.quad	0x3fef71d9b7030e91              # double 0.98264775986213426
	.quad	0x3fe0770dc546e5e3              # double 0.51453293352750185
	.quad	0x3fe686eff86ca8e9              # double 0.70397184868241169
	.quad	0x3fe96ff6efd21d1a              # double 0.79491755332938685
	.quad	0x3fd8843ff25bd930              # double 0.38307188670968895
	.quad	0x3fe8bd84f092820f              # double 0.77313467966820493
	.quad	0x3fdddc58ed6af036              # double 0.46657393632245048
	.quad	0x3fd81983fa890fca              # double 0.37655734506938343
	.quad	0x3fe87d83cff5a74c              # double 0.76532164208513497
	.quad	0x3fa49996be4aa7e0              # double 0.040234289864500061
	.quad	0x3fbefa504a785360              # double 0.12100698297611023
	.quad	0x3fe1bb7e3d9322d0              # double 0.5541373446113429
	.quad	0x3fe185f1b3554f3d              # double 0.54760060335181715
	.quad	0x3fc69107e92d8a84              # double 0.17630099187507053
	.quad	0x3fef76a03e89bb54              # double 0.98323070730644213
	.quad	0x3fc611729909cdb0              # double 0.17240745995114315
	.quad	0x3feff526341f63c7              # double 0.99867544346045
	.quad	0x3fcf60e721eef8b0              # double 0.24514474064739522
	.quad	0x3fd9ee1fa41dcff8              # double 0.40515891100881118
	.quad	0x3fe5fbef6e66da7e              # double 0.68700381815763456
	.quad	0x3febfa9ecc8235b3              # double 0.87434329932300725
	.quad	0x3f9d89e033fd8280              # double 0.028846266911730201
	.quad	0x3fc3775c7dbf2748              # double 0.15208011760688067
	.quad	0x3fd4bc93e30d4a5e              # double 0.32400986836470291
	.quad	0x3fa9fbc6a0994050              # double 0.050749022583318593
	.quad	0x3fd410ea63cbbca2              # double 0.31353244538963498
	.quad	0x3fb3d0eef1ade110              # double 0.077406820300783829
	.quad	0x3fe8f452a3071618              # double 0.77982456055969163
	.quad	0x3fe916929643d682              # double 0.78400544499045588
	.quad	0x3fd4851def52bc8c              # double 0.32062481280713295
	.quad	0x3fe1d876a1968c12              # double 0.55767375526591167
	.quad	0x3fd6b5f7bf13f4f4              # double 0.35485643062550243
	.quad	0x3fdd4047baaa9636              # double 0.45704835156570611
	.quad	0x3fa4c1580a2585d0              # double 0.040537596930117936
	.quad	0x3fe17cd53df233f4              # double 0.54648840044830971
	.quad	0x3fd2ab3eb45c3fc4              # double 0.29170196164431794
	.quad	0x3feec7bfb8f37a96              # double 0.96188341258296606
	.quad	0x3fc9d2e3ea248d00              # double 0.20174836094620474
	.quad	0x3fefc43f7612f002              # double 0.99270604192088308
	.quad	0x3fdafd000b3e2ba4              # double 0.42169190500197318
	.quad	0x3fe2e65fdc612092              # double 0.59062188189365572
	.quad	0x3fd07788e55f4274              # double 0.25729582213992974
	.quad	0x3fdae08924fb35b6              # double 0.41995457278684556
	.quad	0x3fddc5ac9b553cb2              # double 0.46519007844194527
	.quad	0x3fd88304f52c57f4              # double 0.38299678747841814
	.quad	0x3fe9b37f63414dd7              # double 0.80316132913361116
	.quad	0x3fdfd634db93230a              # double 0.49744912569853794
	.quad	0x3fd9a7ec5da82a90              # double 0.4008742251032027
	.quad	0x3fdf2971057a132a              # double 0.4869043878064071
	.quad	0x3fe8742708d865f5              # double 0.76417876937483575
	.quad	0x3fcaa0941ca4cf88              # double 0.20802546881315842
	.quad	0x3fc074ac5dda3b34              # double 0.12856058676376281
	.quad	0x3fc8185853e8b350              # double 0.18824295136564695
	.quad	0x3fefe7e43e4591d8              # double 0.99705707704975576
	.quad	0x3fd7c0f3f7a82100              # double 0.37115191636304701
	.quad	0x3fd0e9ba0c36f9b4              # double 0.26426554863783314
	.quad	0x3fb77c3461462998              # double 0.091738961933663155
	.quad	0x3fe389812865aeb3              # double 0.61053522005155114
	.quad	0x3fecba3b42549cdf              # double 0.89773333506755282
	.quad	0x3fb9d64aa5c9bba0              # double 0.10092608020361959
	.quad	0x3fc22f8d5a210ba4              # double 0.14207617665132688
	.quad	0x3febe98378b1b52d              # double 0.87225507329063634
	.quad	0x3fb45b14c4778388              # double 0.079514787641086326
	.quad	0x3fea55bc400fb7b0              # double 0.82296574127189182
	.quad	0x3fe877a8f1e93fb4              # double 0.76460692642466776
	.quad	0x3fac42dd46cb22b0              # double 0.055197634593758038
	.quad	0x3fd00c6af5f98032              # double 0.25075792332609403
	.quad	0x3feeca55702c61e3              # double 0.96219894322262822
	.quad	0x3fee653c3fc35001              # double 0.94985783055972217
	.quad	0x3fc214aaed942cbc              # double 0.14125572777297701
	.quad	0x3fdbe2b3dfd88538              # double 0.43571183071078989
	.quad	0x3f9067d705c7a160              # double 0.016021117904445048
	.quad	0x3fd7ff0f605e3820              # double 0.37494263087217128
	.quad	0x3fc2b541da707a04              # double 0.14615653196320022
	.quad	0x3fbca0db272e6b40              # double 0.1118294687898187
	.quad	0x3fef12c0881edad2              # double 0.97103907190361327
	.quad	0x3fed63d65d58f042              # double 0.91843717796246716
	.quad	0x3fb1d433a0724d48              # double 0.069644190474993484
	.quad	0x3fbc38aa6d569ec0              # double 0.11023965043443251
	.quad	0x3fda9344a7f4cbec              # double 0.4152385368535636
	.quad	0x3fd6ace205d35fc6              # double 0.35430193489946438
	.quad	0x3feca7cad616796e              # double 0.89548246206304127
	.quad	0x3f885e4e0d126b00              # double 0.011898622297214612
	.quad	0x3fe5822bd3bf3018              # double 0.67214003903200403
	.quad	0x3fe5fec87994862b              # double 0.68735145326735869
	.quad	0x3fe76e6e003b5498              # double 0.73223018689408814
	.quad	0x3fe5d3bb0358f519              # double 0.6820960107212698
	.quad	0x3fc1e1f9fb720064              # double 0.13970875527957383
	.quad	0x3fec7384a7ea8d81              # double 0.8891013412107186
	.quad	0x3febbabf78717167              # double 0.866546378365041
	.quad	0x3fea961a14a7bd03              # double 0.83082298311447322
	.quad	0x3fda2187b62dd5ca              # double 0.40829651633188446
	.quad	0x3fd1b1811609899e              # double 0.27645899917674821
	.quad	0x3fc0b8069b13ebb4              # double 0.13061602184447241
	.quad	0x3fc694486eac2290              # double 0.17640023616720102
	.quad	0x3fd4705a4223f56a              # double 0.31935745677022587
	.quad	0x3febbab7139fd7d3              # double 0.86654237587822036
	.quad	0x3fea15366623538f              # double 0.81508941601588158
	.quad	0x3feb5cf0cbc34403              # double 0.85509528920567879
	.quad	0x3fbec9ceab7b21e0              # double 0.12026683508441449
	.quad	0x3feff53605400bc9              # double 0.99868298554826495
	.quad	0x3fcf1c6995604a7c              # double 0.24305457872158687
	.quad	0x3fdaae404e43fce2              # double 0.41688544886706158
	.quad	0x3fd852bff7f3c3e8              # double 0.38005065168459717
	.quad	0x3fec3bcf74d35ab5              # double 0.88230107133389046
	.quad	0x3fe16e02dc10b109              # double 0.5446790979526962
	.quad	0x3fd028c751f978d6              # double 0.25248892789194366
	.quad	0x3fe41afcae396fb0              # double 0.62829431560702709
	.quad	0x3fe4d5a8aea8904c              # double 0.65108141053179613
	.quad	0x3fca78a7bff19dc4              # double 0.20680710670715829
	.quad	0x3fea38242e0b43bc              # double 0.81935318940133283
	.quad	0x3fdaf6d155deb3ca              # double 0.42131455789313732
	.quad	0x3fa74fcca49bd670              # double 0.045530696004715376
	.quad	0x3fb20507721b7df8              # double 0.070389237745523192
	.quad	0x3fed7405bd406051              # double 0.92041289294412298
	.quad	0x3fcb1db84e1cb16c              # double 0.21184448064867512
	.quad	0x3fd106044e8e7cf2              # double 0.2659922377733458
	.quad	0x3fab022b69ecf680              # double 0.052750927620292209
	.quad	0x3fcb9b084fce7c90              # double 0.21566871544652999
	.quad	0x3fd3fd14f820e362              # double 0.31232189399047716
	.quad	0x3fe085d59c178de1              # double 0.51633720862122001
	.quad	0x3fe1841126f4668b              # double 0.54737146004045323
	.quad	0x3fe0c4f3e92ea98a              # double 0.52404208701527577
	.quad	0x3fde20f66b7012a8              # double 0.47076187602969322
	.quad	0x3fd2653c33fd0534              # double 0.28742890431392998
	.quad	0x3feee6b4f995348b              # double 0.96566246744772976
	.quad	0x3fbabe52f35c9c00              # double 0.10446661416482073
	.quad	0x3fd4cae77e111c0a              # double 0.32488429366316096
	.quad	0x3fea726a04aff546              # double 0.8264665690946138
	.quad	0x3fa6e160b26fb960              # double 0.044688245565214002
	.quad	0x3fbd956ed17fa108              # double 0.11556141485892024
	.quad	0x3fe9f34104ab31c3              # double 0.81094408904896687
	.quad	0x3fe7db84dc504894              # double 0.74554675130845505
	.quad	0x3fedc39f1ee9c0fc              # double 0.93012958562579184
	.quad	0x3fcb1dc1a63eca00              # double 0.21184559457249463
	.quad	0x3fd945973346a372              # double 0.39487247474112686
	.quad	0x3fdbbed77b0a87fc              # double 0.43352305427299576
	.quad	0x3fec2fa67344f10c              # double 0.88081667436156996
	.quad	0x3fdf352f2687e4c6              # double 0.48762110483910381
	.quad	0x3fd10dc65cf39d1c              # double 0.26646575047785048
	.quad	0x3fbe7fc43ae49a38              # double 0.1191370624334035
	.quad	0x3fc4bc45201770d8              # double 0.16199554507227876
	.quad	0x3fd428bb96369c90              # double 0.31498613042135393
	.quad	0x3fddc87f83166ea8              # double 0.46536243249441123
	.quad	0x3fe018f8ab9ce19c              # double 0.50304826276901649
	.quad	0x3feb48b938f66f8d              # double 0.85262738347545197
	.quad	0x3fd5f3f8ee6472c0              # double 0.34301589279656852
	.quad	0x3fe26f9041ad9e4b              # double 0.57611859157345557
	.quad	0x3fdeb8f8cafdf260              # double 0.48003978560863025
	.quad	0x3fd1ebf4c4add196              # double 0.28002661902362413
	.quad	0x3feb7f57bd17d1e4              # double 0.85929476673350935
	.quad	0x3fe953474a2d972d              # double 0.79141582954318823
	.quad	0x3fe43fd5d5ecbfd2              # double 0.63279239446819191
	.quad	0x3fd9d6cbc827e26c              # double 0.40373510881867136
	.quad	0x3fd23a48ccefcf72              # double 0.28480739606242544
	.quad	0x3fe90905500e6800              # double 0.78235116611472222
	.quad	0x3fe83945e3c44178              # double 0.75699133382481332
	.quad	0x3fcafcfe27f8bf64              # double 0.21084572746030539
	.quad	0x3fe233fe31e7f199              # double 0.56884679553290873
	.quad	0x3fe130f90b3eb15b              # double 0.53722812839763934
	.quad	0x3fe54a2d8939bdf3              # double 0.66530491639963285
	.quad	0x3fe6ad1daf2832eb              # double 0.70863231859547449
	.quad	0x3fe86ce801267b12              # double 0.76329422211333253
	.quad	0x3fc42f9153e192ec              # double 0.15770165057906327
	.quad	0x3fd6dd9bc63ad82e              # double 0.35727590902695538
	.quad	0x3fefb2ea7961a62c              # double 0.99059032161057336
	.quad	0x3fe76cdc78b561c0              # double 0.73203872276194915
	.quad	0x3fe00d9477d6028a              # double 0.50165770917381391
	.quad	0x3fe75d5d55a4badf              # double 0.73014704444161882
	.quad	0x3fb6a7effe377dc8              # double 0.08850002247299138
	.quad	0x3fef048ff10cdeff              # double 0.96930691795475343
	.quad	0x3fe2ccef09d91c02              # double 0.58751632617429572
	.quad	0x3fe299fcd36dc163              # double 0.58129731459306944
	.quad	0x3fb5f5807a4cf380              # double 0.085777311190168958
	.quad	0x3fd61a73abb4f816              # double 0.34536449211361864
	.quad	0x3fe20df1d0de7297              # double 0.56420222086633742
	.quad	0x3fee8ae3fa8234a0              # double 0.95445441176856959
	.quad	0x3fde05b3375f975e              # double 0.46909790427740983
	.quad	0x3fc321b7a8526f58              # double 0.14946647375915734
	.quad	0x3fc09aa33822185c              # double 0.12971916428449759
	.quad	0x3fe0fff363984309              # double 0.53124398662666394
	.quad	0x3fee67d29a6223cd              # double 0.950173665552137
	.quad	0x3fe4e9532a593929              # double 0.65348203917691194
	.quad	0x3fb6d624e5387a60              # double 0.089205079996170777
	.quad	0x3fc8e754abd0c2f8              # double 0.19455965413501253
	.quad	0x3fa94395da87f5d0              # double 0.049343760419997218
	.quad	0x3fd38ddb277497b8              # double 0.30553320744581525
	.quad	0x3fe11f2994a64236              # double 0.53505400689215921
	.quad	0x3fdac78fb77358a2              # double 0.41843026080221979
	.quad	0x3fb6dc8d35f9c348              # double 0.089302850415845403
	.quad	0x3fd5eec9285ae5da              # double 0.34269932690548688
	.quad	0x3fc576ba5e436a6c              # double 0.16768579104139592
	.quad	0x3fecfa586a32be5d              # double 0.90555973760451602
	.quad	0x3fb32fe138ca5940              # double 0.074949337353563017
	.quad	0x3fe3ad9581059d4d              # double 0.61493945312114706
	.quad	0x3fef9baf3a64ea58              # double 0.98775445370786041
	.quad	0x3fa7829ec0b4f5b0              # double 0.045918427490032498
	.quad	0x3fc8089603715478              # double 0.18776202362156247
	.quad	0x3fecde24413f27f2              # double 0.90211689704415066
	.quad	0x3fddfec50fd65590              # double 0.46867491289716501
	.quad	0x3fe9afe69a72c177              # double 0.80272226491619747
	.quad	0x3fed3c79a62d3523              # double 0.91363222557416568
	.quad	0x3fedb81cdebade6e              # double 0.92872470380730276
	.quad	0x3fd79d4f427d3dba              # double 0.36897641652191349
	.quad	0x3fe9e2fc6a23c637              # double 0.80895825128954513
	.quad	0x3fe952bf95a9d2f2              # double 0.7913511202919763
	.quad	0x3fb298cabb2a6600              # double 0.072643919653636146
	.quad	0x3fed14c839809f5a              # double 0.90878688078826575
	.quad	0x3fefc93e901388b8              # double 0.99331596507933905
	.quad	0x3fe19a2334f3ab41              # double 0.5500656160560099
	.quad	0x3fcdbe8d6a64cba4              # double 0.23237769789701901
	.quad	0x3fdfbe2dd2d2db56              # double 0.49598260486839274
	.quad	0x3fe1460dbfdbbf2e              # double 0.53980147812214851
	.quad	0x3feb3905fad37cdc              # double 0.85071085919835409
	.quad	0x3fe5baec3c65f01c              # double 0.67906772419474093
	.quad	0x3fda024e41555714              # double 0.40639072780810293
	.quad	0x3f88003099643780              # double 0.011719112092148043
	.quad	0x3fead9be415352dd              # double 0.83907997855075289
	.quad	0x3feae9c87b0737ab              # double 0.84103797940200786
	.quad	0x3fe794adfcba0596              # double 0.73689936981843362
	.quad	0x3fee84b9783a3cb5              # double 0.95370172006541643
	.quad	0x3fd587a126c6fada              # double 0.33640316759912781
	.quad	0x3fefde7cfeba2d6c              # double 0.99590921164910417
	.quad	0x3fe9ac859772979a              # double 0.80230979518522649
	.quad	0x3febb9554d88db86              # double 0.86637368339039322
	.quad	0x3fe30d0af22e71ed              # double 0.59534213353214016
	.quad	0x3fefe621f657809f              # double 0.99684236634859135
	.quad	0x3f942d9195064460              # double 0.01970508071969268
	.quad	0x3fedb6de777fd973              # double 0.92857287730912075
	.quad	0x3fdab5d7a00aaa80              # double 0.41734877232617151
	.quad	0x3fd77ca79fde724a              # double 0.36698332416725477
	.quad	0x3fcf5b87ea9849b8              # double 0.24498080210521578
	.quad	0x3fea47f472a4fbef              # double 0.82128355399606601
	.quad	0x3fb1b170c0670bc8              # double 0.069113776181480735
	.quad	0x3fe1d6df3893d328              # double 0.55747948694497484
	.quad	0x3fe17527faf608f0              # double 0.54555129066309682
	.quad	0x3fec451d7c5a85dc              # double 0.88343691146672709
	.quad	0x3fe96b7f3cf57dc3              # double 0.79437219530148473
	.quad	0x3fede2d8a248ea0a              # double 0.93394118973020679
	.quad	0x3fdd5993a0105c3e              # double 0.45859232550850837
	.quad	0x3fb9dbe16d52d2c0              # double 0.10101136130362942
	.quad	0x3fb0217326569bf0              # double 0.063010403499546674
	.quad	0x3fda265dc5d16282              # double 0.4085916930976411
	.quad	0x3feacb0922e6a229              # double 0.83728462997993802
	.quad	0x3fd96b93a454a308              # double 0.3971909622946872
	.quad	0x3f8b62620cd90cc0              # double 0.013371244446835795
	.quad	0x3fe185574e98246b              # double 0.54752698278856593
	.quad	0x3fd1a41545438114              # double 0.27563983692199767
	.quad	0x3fd93ff8a4841be4              # double 0.39452949586887898
	.quad	0x3fe49467303bb967              # double 0.64311561031881304
	.quad	0x3fcc1402886675f8              # double 0.21936065349738931
	.quad	0x3fdd0be7728fd432              # double 0.45385156810454241
	.quad	0x3fe719990bace232              # double 0.72187473564469529
	.quad	0x3fe08212c3f56b2c              # double 0.51587808869530738
	.quad	0x3fec1c5cebd758da              # double 0.87846227705702096
	.quad	0x3fdabfc9e1f586e8              # double 0.41795584741895064
	.quad	0x3fe565ed00e35da9              # double 0.6686921136232985
	.quad	0x3fe0930753053625              # double 0.51794782843507348
	.quad	0x3fd2adf5263e0e96              # double 0.29186753019914968
	.quad	0x3fd702b5953915ec              # double 0.35954036305005732
	.quad	0x3fec72a081c2e162              # double 0.88899255126947829
	.quad	0x3fd3a35e60acb5d4              # double 0.306846231850469
	.quad	0x3fe6c3b72d04caae              # double 0.71139105599134722
	.quad	0x3fe30d1f3cb8e30b              # double 0.5953518091183424
	.quad	0x3fd73893bc374b7a              # double 0.36282819157093338
	.quad	0x3fe698ed54808a4f              # double 0.70616785530394022
	.quad	0x3fe17695d5e2e9e3              # double 0.54572574400600293
	.quad	0x3fe6e1943fd81b58              # double 0.71503651113094246
	.quad	0x3fc48c839adbb7f0              # double 0.16053814946593503
	.quad	0x3fecd50b8e2c314e              # double 0.90100648658839488
	.quad	0x3fd2de8262966010              # double 0.29483089091945747
	.quad	0x3febf4424a1fa09e              # double 0.87356676556830215
	.quad	0x3fe9026a57800b96              # double 0.78154484834554938
	.quad	0x3fc7286a1cf1f2e0              # double 0.1809208527883106
	.quad	0x3fcdc38320037c98              # double 0.23252905905880961
	.quad	0x3fb2ef44da6cde20              # double 0.073963454557877117
	.quad	0x3fea39eb7af59f84              # double 0.81957029357452926
	.quad	0x3fe8c300860798f1              # double 0.77380396058722856
	.quad	0x3faf91126d9057a0              # double 0.061653686403743579
	.quad	0x3fd4f2d5bcb0fa18              # double 0.32732146670233098
	.quad	0x3feba98292df06da              # double 0.86444214521199148
	.quad	0x3fef47e52039f4f6              # double 0.97752624792306508
	.quad	0x3fe71bb3a4b48b11              # double 0.72213155907624771
	.quad	0x3fe76d93464fb37a              # double 0.73212589008981799
	.quad	0x3fed1aa25c396331              # double 0.90950124752553141
	.quad	0x3fe94d469e265f83              # double 0.79068308724070879
	.quad	0x3fc986aa02c666d8              # double 0.19942212234018686
	.quad	0x3fec9e6161ac52fe              # double 0.89433354450974867
	.quad	0x3fde986667997d56              # double 0.47805175892968543
	.quad	0x3fe4be1058881bcf              # double 0.64820115367262499
	.quad	0x3fe3939f69678244              # double 0.61177034937652097
	.quad	0x3fe89c5c7434d358              # double 0.76908705421974854
	.quad	0x3f94e64d68999380              # double 0.02040978384902159
	.quad	0x3fe22aa55a6a341c              # double 0.56770579966689949
	.quad	0x3fe5780fc826a773              # double 0.67090596286764848
	.quad	0x3fe6764199ea2ceb              # double 0.70193557797884176
	.quad	0x3fe39a89b862e8bd              # double 0.61261449826203995
	.quad	0x3fd81a2152858c3e              # double 0.37659485872990561
	.quad	0x3fdf5965c14f7eba              # double 0.48983138921719738
	.quad	0x3fd6465509e423a4              # double 0.34804273572859246
	.quad	0x3fedd35ba8747da8              # double 0.932050541890864
	.quad	0x3feade22d494c607              # double 0.83961621780162055
	.quad	0x3fedbe293b19ff14              # double 0.92946301978369882
	.quad	0x3fe4dc27e9e810ea              # double 0.65187450108399259
	.quad	0x3fc377ab4f0376d4              # double 0.15208951337893117
	.quad	0x3fe68b277d291b03              # double 0.70448660321639556
	.quad	0x3fc113ecd939317c              # double 0.13342056852924233
	.quad	0x3fdc16b01a4b0f20              # double 0.43888475959487216
	.quad	0x3fbab03442589720              # double 0.10425116176392324
	.quad	0x3fb7cce005444a10              # double 0.092969895635441668
	.quad	0x3fc4d47f46f41f60              # double 0.16273489918261941
	.quad	0x3fc57f517ebce084              # double 0.1679479473912161
	.quad	0x3fca2a0a43d0511c              # double 0.20440796195237787
	.quad	0x3febc7a48888490a              # double 0.86812044779279174
	.quad	0x3fe9dbcfd2490e30              # double 0.80808249541627752
	.quad	0x3fd66829674fc622              # double 0.35010752762818431
	.quad	0x3fe13f66342ce3a8              # double 0.53898916426179699
	.quad	0x3f979742c53dd0c0              # double 0.02303795174471257
	.quad	0x3fe63f9aa7aa51dd              # double 0.69526417491084269
	.quad	0x3fdff2c887ea6f3a              # double 0.49919331810973555
	.quad	0x3fd686c09172c5a2              # double 0.35197462276399893
	.quad	0x3fe52f5d9c2e7268              # double 0.66203194145380184
	.quad	0x3f9300e0d1bb9540              # double 0.018558037568159991
	.quad	0x3fdca97712c3b00a              # double 0.44784333069287696
	.quad	0x3fdfa560743a73f0              # double 0.49446879721091275
	.quad	0x3fc079ef7217349c              # double 0.12872117110092496
	.quad	0x3fe4d0a39344cdc8              # double 0.65046862376623782
	.quad	0x3fde9c78f4faeef4              # double 0.47830032276009082
	.quad	0x3fedc7525028b2f3              # double 0.93058124214220894
	.quad	0x3fe3f2bf2af03ecf              # double 0.62338217150132802
	.quad	0x3fa872f83a122150              # double 0.047752148712847942
	.quad	0x3feaabe86ed19ea9              # double 0.83348485607435407
	.quad	0x3fb1fb7466ec3a80              # double 0.070243144157055681
	.quad	0x3feab25939aca4d5              # double 0.8342710615590031
	.quad	0x3fe2cf3ce166c799              # double 0.58779758475997135
	.quad	0x3fac751cd10bbc00              # double 0.055580997961321543
	.quad	0x3feea9cb15c021a3              # double 0.95822672126910324
	.quad	0x3fca5c0ada0db318              # double 0.20593391081947554
	.quad	0x3f76a354a167bf00              # double 0.005526857936714924
	.quad	0x3f9a312f02b7b300              # double 0.025578245678775424
	.quad	0x3fd6f2bfa082e0e8              # double 0.35856619524885369
	.quad	0x3fbb03ed1dc8c220              # double 0.10552865960267654
	.quad	0x3fc62b33a328c4c8              # double 0.17319341151008971
	.quad	0x3fdaf7cd30a0d228              # double 0.42137460469101251
	.quad	0x3feb4c16be352a06              # double 0.85303818845687895
	.quad	0x3fc6cf1ef266f9a0              # double 0.17819582782790366
	.quad	0x3fcac3a821a42cb4              # double 0.20909597056047391
	.quad	0x3febeb9627a35457              # double 0.87250812284276946
	.quad	0x3fe1fae82f6b794d              # double 0.56187829267200018
	.quad	0x3fe16f77052924a9              # double 0.54485655792190812
	.quad	0x3fe24a9ef0cf3f79              # double 0.57160899193875914
	.quad	0x3fed95d56040b3f8              # double 0.9245402221619079
	.quad	0x3fd55ae3e47d9f0e              # double 0.33367249787851072
	.quad	0x3fedae086d452c96              # double 0.92749425260389518
	.quad	0x3fdb46d2c75db430              # double 0.42619771451319632
	.quad	0x3fd78e0fdd9c69a0              # double 0.36804577485750123
	.quad	0x3fd19e177353ddf6              # double 0.27527414572202191
	.quad	0x3fb3a3882632d830              # double 0.076714047742684199
	.quad	0x3fe0db808796d252              # double 0.52679468614821645
	.quad	0x3febbae1681c6c73              # double 0.86656256040750035
	.quad	0x3fbad8ea6e877e88              # double 0.10487237165897956
	.quad	0x3fee88b2962c0cdc              # double 0.95418671923144016
	.quad	0x3fe92a1f4f82fe81              # double 0.78639188317897901
	.quad	0x3fe47b56a4178636              # double 0.64005596207807147
	.quad	0x3fe76342b221a814              # double 0.73086676398566164
	.quad	0x3fed71e985eda307              # double 0.92015529783120165
	.quad	0x3fd00a882f0a2e38              # double 0.25064282029845542
	.quad	0x3fee4cda52f3bdc6              # double 0.9468814487608419
	.quad	0x3fdb3262a6508fc0              # double 0.42495027772588045
	.quad	0x3fe809396300a43e              # double 0.7511259969370554
	.quad	0x3fc074f426d42c7c              # double 0.12856914421022114
	.quad	0x3fe0cd6a7ee59034              # double 0.52507519516485113
	.quad	0x3fe11992a345b44a              # double 0.53437168015592218
	.quad	0x3fef6306dcf328ee              # double 0.98083823351160304
	.quad	0x3fe6c96cc49f1e13              # double 0.71208799746176721
	.quad	0x3fe0ef6f248e79e8              # double 0.52922780170393668
	.quad	0x3fcf29ec819b9f6c              # double 0.24346691444884117
	.quad	0x3fe3e36fbed9aca2              # double 0.62151324534842822
	.quad	0x3fe4a0425a8777d6              # double 0.64456288987616506
	.quad	0x3fdf696630025858              # double 0.49080805481333334
	.quad	0x3fea3a4a9347e75e              # double 0.81961563840671281
	.quad	0x3fe48f3e13640156              # double 0.64248565470920016
	.quad	0x3fea7cd43c8ec20c              # double 0.82773792102494914
	.quad	0x3fe3cbfe5d2417d4              # double 0.61865156356429418
	.quad	0x3fd8d7132e148268              # double 0.38812713146220412
	.quad	0x3fbf3a5cd57cde20              # double 0.12198429309943792
	.quad	0x3fc91f23293c9de8              # double 0.19626273644938341
	.quad	0x3fea3cfb443fc99e              # double 0.81994403200069477
	.quad	0x3fd298644a3dd67a              # double 0.29055125475074528
	.quad	0x3febc1bce3049a12              # double 0.86739963855217384
	.quad	0x3fe02ef71e80f662              # double 0.50573306997075584
	.quad	0x3fe26e2c0f3336a8              # double 0.57594874352226544
	.quad	0x3fec9b328c0ec826              # double 0.89394500117328302
	.quad	0x3fb47a6eda5d2c70              # double 0.07999317961837149
	.quad	0x3fc1e349e7d81064              # double 0.13974880047328775
	.quad	0x3fc239c4864f5978              # double 0.14238792951682533
	.quad	0x3fb770bbdf8cc6b8              # double 0.091563932492841782
	.quad	0x3fdfaec483680b90              # double 0.49504196961077529
	.quad	0x3fe846424dc0c29b              # double 0.75857653795363278
	.quad	0x3fe23fcd53ebc066              # double 0.57028833761979736
	.quad	0x3fb8d0fa741100a0              # double 0.096938756310012141
	.quad	0x3fcfa0ce17b64aec              # double 0.24709488065544549
	.quad	0x3fd27937567a9c16              # double 0.28864844746789353
	.quad	0x3fd11922cc8a547e              # double 0.26715917563098646
	.quad	0x3fa4b88085231670              # double 0.040470138790209442
	.quad	0x3fe999820d65c574              # double 0.79998877159793702
	.quad	0x3fde59647b134820              # double 0.47420608538698339
	.quad	0x3fedc30b80b98300              # double 0.93005919591459474
	.quad	0x3fc0d1c468249760              # double 0.13140158734421004
	.quad	0x3fe0f5831e23f560              # double 0.52996974837121158
	.quad	0x3fe3464e28c6f712              # double 0.60233219112680758
	.quad	0x3fd4df94ac196752              # double 0.32614628607335761
	.quad	0x3fed72afab1c28c3              # double 0.9202497808448914
	.quad	0x3fd469c9f1478028              # double 0.3189568382495076
	.quad	0x3fdbe3af6af4c916              # double 0.43577180333081011
	.quad	0x3fe10db56c7cd352              # double 0.53292342366203571
	.quad	0x3fee05eb3df410f9              # double 0.93822252369184789
	.quad	0x3fe0a1ee384f8946              # double 0.5197669124429829
	.quad	0x3fe9a53436c009f1              # double 0.80141649907483103
	.quad	0x3fe7bfabd1c86d2d              # double 0.74214735959268341
	.quad	0x3fcefba611ce4be8              # double 0.24205470914293348
	.quad	0x3fe4e6f2d5fb1cca              # double 0.65319196503778554
	.quad	0x3fb83c643253e458              # double 0.094671499526059022
	.quad	0x3fe0c5a69e759776              # double 0.52412730168428712
	.quad	0x3fe0b485547775de              # double 0.52203623292342249
	.quad	0x3fe497ca63612e46              # double 0.64352912340240986
	.quad	0x3fc3c7fdbffaff7c              # double 0.1545407473949999
	.quad	0x3fec93c2b0af5d2b              # double 0.89303717144767825
	.quad	0x3febf937fefb3bcd              # double 0.87417220879603408
	.quad	0x3fe3562f260df6e3              # double 0.60427052910355561
	.quad	0x3fe0249ccd6240ca              # double 0.50446930040382054
	.quad	0x3f8dc9cdc835f100              # double 0.014545066521116201
	.quad	0x3fe0df53b831bede              # double 0.52726160026028501
	.quad	0x3fd565d9cda2a110              # double 0.33434147912568424
	.quad	0x3fe4bbc8e3c38d66              # double 0.64792294011242002
	.quad	0x3fe0772969ad6969              # double 0.5145461143504636
	.quad	0x3fe802dcf4ce1b41              # double 0.75034950078484297
	.quad	0x3fde0e0b14bcc388              # double 0.46960713410504029
	.quad	0x3fec5eda91507a7e              # double 0.88657883054459297
	.quad	0x3facd0752c1cd380              # double 0.056277906069602146
	.quad	0x3fd5c755a46adaba              # double 0.34029141479860991
	.quad	0x3fe51a020ecc62a6              # double 0.65942480936344761
	.quad	0x3fef6fdc36d891a9              # double 0.9824048110208895
	.quad	0x3fdb0de9948efffe              # double 0.42272414691615257
	.quad	0x3fed3992017c8563              # double 0.91327762880625263
	.quad	0x3faac7d1a48c29d0              # double 0.052305747352949461
	.quad	0x3fd0e5210e3f4d7a              # double 0.26398493186317007
	.quad	0x3fe4903f8ca7017c              # double 0.6426084277264148
	.quad	0x3fe36b3bb4b5b28e              # double 0.606839993427984
	.quad	0x3fe31d940690f1d4              # double 0.59736062319239602
	.quad	0x3fd87ff4ecfbec3c              # double 0.38280985968566816
	.quad	0x3fe053a4dce246d9              # double 0.51021044865975818
	.quad	0x3feb524fc3e72f97              # double 0.85379780065840094
	.quad	0x3fe58772e985f2c3              # double 0.67278428659445699
	.quad	0x3fbce1ab472816b0              # double 0.11281843650075518
	.quad	0x3fb2b57db1fa9898              # double 0.073081832839849148
	.quad	0x3fdcac2ef6ea623e              # double 0.44800924408767517
	.quad	0x3fe20e17e92a86ba              # double 0.56422038593537782
	.quad	0x3fea71d95b7bce4f              # double 0.82639758937734509
	.quad	0x3f95f97b19b6f720              # double 0.021459506458760491
	.quad	0x3fd65ee2bc6ecd60              # double 0.3495413627781172
	.quad	0x3fe21c091e4b311c              # double 0.5659223167108709
	.quad	0x3fe05f933f293992              # double 0.51166689239635077
	.quad	0x3fa24cf76def5e60              # double 0.0357434579561271
	.quad	0x3fec0fba5e73c857              # double 0.87691992232999894
	.quad	0x3fe7b4407f3d2951              # double 0.74075341082906665
	.quad	0x3fd95f1db985ec4c              # double 0.39643042676442941
	.quad	0x3fe12c60c2c0e4b9              # double 0.536667232873831
	.quad	0x3f9dbe7614745b00              # double 0.029046864508099013
	.quad	0x3fe3480b537290e3              # double 0.60254446314186472
	.quad	0x3fd7b4e0d0763ab8              # double 0.37041492803193021
	.quad	0x3fea9beeead959ad              # double 0.83153482312154881
	.quad	0x3febda508e153d44              # double 0.87039973974780382
	.quad	0x3fe564e972a3093e              # double 0.66856834783565211
	.quad	0x3fecfc6bd44c1b17              # double 0.90581313576044209
	.quad	0x3fe6c15ebca7596f              # double 0.71110474440028593
	.quad	0x3fe398e013b8e720              # double 0.6124115357590405
	.quad	0x3fd90d3ab5dec614              # double 0.39143245468867005
	.quad	0x3f717b376e470580              # double 0.0042678990616321633
	.quad	0x3fe826849089f22d              # double 0.75470188360447354
	.quad	0x3fede11e5ebf4c10              # double 0.93373030190775985
	.quad	0x3fed082f86d38b74              # double 0.90724922498007609
	.quad	0x3fde3fa5ffb629e8              # double 0.47263479205926595
	.quad	0x3fa999fd379397a0              # double 0.050002968820805238
	.quad	0x3fe6e567f8efb76b              # double 0.71550367946995885
	.quad	0x3fe46be4f7d699ab              # double 0.63817070394434461
	.quad	0x3fd03d3364135040              # double 0.25373539708130366
	.quad	0x3fc73da76c891d94              # double 0.18156903075781072
	.quad	0x3fc86480ccc63e3c              # double 0.19056711195706721
	.quad	0x3fe969963b1d5240              # double 0.79413901849563473
	.quad	0x3fe29ff446812033              # double 0.5820256592787757
	.quad	0x3fe223f4e86ae036              # double 0.56688924211540015
	.quad	0x3fdd75f3518a3058              # double 0.4603241249358283
	.quad	0x3fd2ed36906710f4              # double 0.29572834111992496
	.quad	0x3fe2ddeb18813513              # double 0.58958964143826831
	.quad	0x3fd844f3e5978c1e              # double 0.37920854016391725
	.quad	0x3fc2894b4700c5c8              # double 0.14481488196319803
	.quad	0x3fede8575a100d78              # double 0.93461196508762523
	.quad	0x3fa92390e04f3330              # double 0.049099471456065635
	.quad	0x3fe8edff00d2ca93              # double 0.7790522590715504
	.quad	0x3fd1548a2ac65de6              # double 0.27078489472611833
	.quad	0x3fc8508e4c57d7bc              # double 0.18995836951915901
	.quad	0x3fb2d537280c8f50              # double 0.073565909650423977
	.quad	0x3feecca9c4a12788              # double 0.96248329548073829
	.quad	0x3feb0916921bd4fa              # double 0.84485939537867627
	.quad	0x3fe22f51985412f0              # double 0.56827621223109581
	.quad	0x3fe8783f19ddd7b3              # double 0.7646785264212127
	.quad	0x3fd7b4012088c3ee              # double 0.37036159684345094
	.quad	0x3fe9914139cdfc23              # double 0.79898129739729418
	.quad	0x3fd95d02e9d72c04              # double 0.39630196414935903
	.quad	0x3f77f50a2cdc5900              # double 0.0058489224882321
	.quad	0x3fe56d9eb104c351              # double 0.66963133405634256
	.quad	0x3fde41a951f961de              # double 0.47275765424049421
	.quad	0x3faf9cd397c9f000              # double 0.061743366507442943
	.quad	0x3fe7477a646c5016              # double 0.72747535337339531
	.quad	0x3fe867eb5841f74c              # double 0.76268546331241671
	.quad	0x3fe2dc5c52363e3c              # double 0.58939949090012744
	.quad	0x3fe0704017aff72b              # double 0.51370243669928095
	.quad	0x3fc3faf771d3561c              # double 0.15609639222991312
	.quad	0x3fda78259cedcfee              # double 0.41358318638890423
	.quad	0x3fc20e5f16613e28              # double 0.14106358139768926
	.quad	0x3fe375db7b521bbb              # double 0.60813688360291651
	.quad	0x3fd12c60bfe4da5c              # double 0.26833361377376774
	.quad	0x3fd7630ff73921ae              # double 0.36542128699195586
	.quad	0x3fe7d598166ef484              # double 0.74482349759604505
	.quad	0x3fe1180c93a71767              # double 0.53418568457048543
	.quad	0x3feed5090f3bab40              # double 0.96350529647074978
	.quad	0x3fece84de4328109              # double 0.90335745401174095
	.quad	0x3fd0a669476c2e6e              # double 0.26015693640576998
	.quad	0x3fc0975d7ebcbb5c              # double 0.1296192997774267
	.quad	0x3fee86e1955893d2              # double 0.95396498841420851
	.quad	0x3fbbe4c066056eb8              # double 0.10895922175171335
	.quad	0x3fe4fedafacc6954              # double 0.65611027702406455
	.quad	0x3fe08d2dae31d677              # double 0.51723369619749249
	.quad	0x3fd1844403653f9e              # double 0.27369785625068654
	.quad	0x3faa06e5ee7f2df0              # double 0.050833878863695392
	.quad	0x3fc176f5c7638510              # double 0.13644287334231153
	.quad	0x3fcc44dc086bf5b4              # double 0.22085142527786916
	.quad	0x3fe5b3d07a6b8e9a              # double 0.6781999960916949
	.quad	0x3fef3547aa8d61e8              # double 0.97525389967910047
	.quad	0x3f709405d1e4d380              # double 0.004047415479637162
	.quad	0x3fec061db81f7a27              # double 0.87574659310832181
	.quad	0x3fcfc2c27b1e41fc              # double 0.24813109408979972
	.quad	0x3fd8bda06c4cd376              # double 0.38657389236623574
	.quad	0x3fe55be5c419622f              # double 0.66746795940986725
	.quad	0x3fdc810978fa375a              # double 0.44537579359245216
	.quad	0x3fe8f7ceb03b6d9c              # double 0.78024992390003289
	.quad	0x3f91456c5759bae0              # double 0.016866391021205795
	.quad	0x3faa925edf994a00              # double 0.051897969050191506
	.quad	0x3fd201eb63b89c08              # double 0.28136715639487919
	.quad	0x3fc8b941387adbe4              # double 0.19315352685745701
	.quad	0x3fe0de426ae0c687              # double 0.52713127970328422
	.quad	0x3fe650789ce19706              # double 0.69732313767301046
	.quad	0x3febaa8f299651c5              # double 0.86457021830079184
	.quad	0x3fe55cb53a852360              # double 0.6675668852777612
	.quad	0x3fd6cb8e453acc2c              # double 0.3561740566321443
	.quad	0x3fc44e6a7c1745e8              # double 0.15864306506277548
	.quad	0x3fe8ab599af7a103              # double 0.77091675059367082
	.quad	0x3fe524b59db14f68              # double 0.66073113250102455
	.quad	0x3fe02cd4673cc448              # double 0.50547237552212554
	.quad	0x3fe9e865166bee0b              # double 0.80961851481646485
	.quad	0x3fe3d5d7df627560              # double 0.61985391263776179
	.quad	0x3fb806e04f276918              # double 0.093854922604269198
	.quad	0x3fbe793af79f35e0              # double 0.11903732819992952
	.quad	0x3fe5d0380e45cb30              # double 0.68166735446570748
	.quad	0x3fe0daba411d41bf              # double 0.52670014112123187
	.quad	0x3fe2a0abca6d36f4              # double 0.58211316620301412
	.quad	0x3f97fcc5bd2679e0              # double 0.023425187749689047
	.quad	0x3fd8f8ca7d0e318c              # double 0.39018499576993615
	.quad	0x3fb655733fbb3060              # double 0.087241366443039592
	.quad	0x3fdb8382b22e2dd4              # double 0.42990176582744977
	.quad	0x3fed23c50cd1ed41              # double 0.91061642173682611
	.quad	0x3fd8e7e5a7fb97ec              # double 0.38915387539452584
	.quad	0x3fe167bdd19aee8e              # double 0.54391375483051418
	.quad	0x3fe40baff78f1d8a              # double 0.6264266810548389
	.quad	0x3fdf6e98235de978              # double 0.49112513974946337
	.quad	0x3fedb9c5d865ad21              # double 0.92892734780381059
	.quad	0x3fe41e3785a7721d              # double 0.62868858436883424
	.quad	0x3fd804833f20d3fe              # double 0.37527543225161242
	.quad	0x3fe440b5c98c95f0              # double 0.63289918294020531
	.quad	0x3fdead0b6f3e4c5c              # double 0.47931180823906572
	.quad	0x3fefac15019b48a1              # double 0.98975611032280508
	.quad	0x3fe01ff6dbcfcbaf              # double 0.50390189105961791
	.quad	0x3f8a69cacbe4ea00              # double 0.01289709505782799
	.quad	0x3fd832af9e797d34              # double 0.37809362865478424
	.quad	0x3fb7a145652c1c88              # double 0.092304551315566141
	.quad	0x3fe41a7a30b657df              # double 0.62823209299198968
	.quad	0x3fe08654fbc6ea82              # double 0.51639794516752624
	.quad	0x3fe0894350a5ae14              # double 0.51675573111919215
	.quad	0x3fd0d86cf77735e4              # double 0.26320957342690421
	.quad	0x3fec335d64c35e2a              # double 0.88127011947921585
	.quad	0x3fe8fc1277dd186a              # double 0.78077052508230094
	.quad	0x3fed85df86230bf3              # double 0.92259193609822743
	.quad	0x3fd1b2bd51a6cc46              # double 0.27653439496788612
	.quad	0x3fe95c83d128931d              # double 0.79254332400578031
	.quad	0x3fcf934d6b475d14              # double 0.24668281305523776
	.quad	0x3fe996e0163b9c45              # double 0.79966739981035373
	.quad	0x3fd8f4db14da62c8              # double 0.38994481121475788
	.quad	0x3fc83963b357443c              # double 0.18925138718489787
	.quad	0x3fc324ac8747e934              # double 0.14955669980538178
	.quad	0x3fe87345d9423523              # double 0.76407139237713684
	.quad	0x3fc71ef01986f8d4              # double 0.18063164946028698
	.quad	0x3fc0b48df3bfdc40              # double 0.13051008607701142
	.quad	0x3fe8e7ab63b73605              # double 0.77827996707645808
	.quad	0x3fd8467b60f4d83c              # double 0.37930187672043636
	.quad	0x3fdba7f26180fef2              # double 0.43212565919746659
	.quad	0x3feebb9f3a6fa3cd              # double 0.96040307439135974
	.quad	0x3fdc09a2a267d236              # double 0.43808809146802064
	.quad	0x3fd3b1cd8c8e78ec              # double 0.30772722936843766
	.quad	0x3feba57e360b0dab              # double 0.86395178370769565
	.quad	0x3fcfe38afe018f48              # double 0.24913155939713705
	.quad	0x3fe9fdbca0fc16b8              # double 0.81222373430565309
	.quad	0x3fde0f0e5f6e2796              # double 0.46966895408024223
	.quad	0x3fe97ef05d5d2137              # double 0.79674547419657571
	.quad	0x3fe35ed4c65ca9de              # double 0.60532606833049463
	.quad	0x3fd33e2dacdf9012              # double 0.30067006952435904
	.quad	0x3fe07477cb91d3f3              # double 0.51421727904982928
	.quad	0x3f7cab9284d98f00              # double 0.0069995616337086286
	.quad	0x3fec179fd679bc24              # double 0.87788383378745438
	.quad	0x3fddb6588ae5eed0              # double 0.46425450863146711
	.quad	0x3fdb66c232dd87d8              # double 0.42814688651389821
	.quad	0x3fedc9965e922611              # double 0.93085783453824622
	.quad	0x3fddb369c33d4a78              # double 0.46407550875043269
	.quad	0x3fccbe26c05b5ed8              # double 0.22455295936992203
	.quad	0x3fbad38df0f3ba50              # double 0.10479056484812443
	.quad	0x3fde9e49da03a184              # double 0.47841116228530489
	.quad	0x3fefd0dbd6406d2a              # double 0.99424545141247234
	.quad	0x3fd61891f757ae7e              # double 0.3452496447996295
	.quad	0x3fd7b2d64e0219b6              # double 0.37029035203922989
	.quad	0x3feb67f7b4a1af90              # double 0.856441357418122
	.quad	0x3fe58525a0912c6f              # double 0.67250329361685413
	.quad	0x3fe20c2702594162              # double 0.56398344477387874
	.quad	0x3fd53562288ab998              # double 0.33138326605958346
	.quad	0x3fce55aab983fcc0              # double 0.23698934610727029
	.quad	0x3fdbde144e897e06              # double 0.43542964620243685
	.quad	0x3f768a5ce782f080              # double 0.0055030469013069849
	.quad	0x3fe7e93b29afdc64              # double 0.74722059385284156
	.quad	0x3f98c705c3550c40              # double 0.024196710631496865
	.quad	0x3fed1790dc463fa7              # double 0.90912669203134022
	.quad	0x3fe02a0cc85b32d4              # double 0.50513304836348505
	.quad	0x3fe9795646442117              # double 0.7960616466889715
	.quad	0x3fe147121100322d              # double 0.53992560692274127
	.quad	0x3fb54500d0608080              # double 0.083084154961854395
	.quad	0x3fee305e07cc3e42              # double 0.94340421221745197
	.quad	0x3fe638cf2ef79af8              # double 0.69443473027499092
	.quad	0x3f980dce43a0f7c0              # double 0.023490164640172173
	.quad	0x3fef0709ee08968e              # double 0.96960922709395603
	.quad	0x3fe5c32b8dce428e              # double 0.68007447906900764
	.quad	0x3fea537fca0581e2              # double 0.82269277055098322
	.quad	0x3fe1874ee67f26fc              # double 0.54776711481937879
	.quad	0x3f9480c68d872e00              # double 0.020022489917932873
	.quad	0x3fc142de545c0d4c              # double 0.13485316390151991
	.quad	0x3fe329a25f4eb6d8              # double 0.59883230795613951
	.quad	0x3fbe9445ddce7580              # double 0.1194499651450851
	.quad	0x3fd718a419b69d9a              # double 0.36087896834438882
	.quad	0x3fe491aeb4a232e7              # double 0.64278350143430607
	.quad	0x3fe12ad1b3bf52f1              # double 0.53647694689661141
	.quad	0x3fefeebb440b4f1d              # double 0.9978920296657382
	.quad	0x3fe9cd2fecbdf2f5              # double 0.80629726637525201
	.quad	0x3fe6d09ed06ae358              # double 0.71296635347890014
	.quad	0x3fed925c2bceb509              # double 0.9241162162412887
	.quad	0x3fad73bbb843c640              # double 0.0575235998566197
	.quad	0x3fe609faed01ec7a              # double 0.68871828356294817
	.quad	0x3fb9e9337a082c60              # double 0.10121461610121818
	.quad	0x3fea1108c3e870f3              # double 0.8145793749168021
	.quad	0x3feec5aa708072a1              # double 0.96162912343023176
	.quad	0x3fecdc4c9a67d6c4              # double 0.90189199597690405
	.quad	0x3fe4251f96f035bb              # double 0.62953166465893362
	.quad	0x3f9b047e05b66d20              # double 0.026384324167890161
	.quad	0x3fe262924fe8159c              # double 0.57453265768770079
	.quad	0x3fe096ac0226f6f7              # double 0.51839256687500679
	.quad	0x3fe397d5fd2a400e              # double 0.61228465505883078
	.quad	0x3fd7d9eaca8a3854              # double 0.37267560748376138
	.quad	0x3faba4110b261f70              # double 0.053986103640510374
	.quad	0x3fc3092ed1f0b708              # double 0.14871773959151136
	.quad	0x3fda6855b8d4bbc8              # double 0.4126180939664974
	.quad	0x3fdfd7328b481c48              # double 0.49750960923887932
	.quad	0x3fc19b577d631cb4              # double 0.13755315420551073
	.quad	0x3fe765b297364d09              # double 0.73116426023116887
	.quad	0x3fe9b21dec08f37b              # double 0.8029927835519709
	.quad	0x3fe0f191de23a2ba              # double 0.52948850046694607
	.quad	0x3fe4054643c6cb00              # double 0.62564385640720843
	.quad	0x3fe0de2a4eb9acb5              # double 0.52711978317292696
	.quad	0x3fe51ea176ba7bf6              # double 0.65998910130644961
	.quad	0x3fed6866494a10bb              # double 0.91899408640212898
	.quad	0x3fc2753554940710              # double 0.14420191411777994
	.quad	0x3fd9bc69794fac3c              # double 0.40212475630568512
	.quad	0x3fdc3022c2b1d3ee              # double 0.44043797505520288
	.quad	0x3fe460f0d77de8e3              # double 0.63683359230278958
	.quad	0x3fe8c39d57fdea8a              # double 0.77387873826894915
	.quad	0x3fe1c224e3a48893              # double 0.55494923078028291
	.quad	0x3fe38eef718353c6              # double 0.61119815989024384
	.quad	0x3fe04d82f5e38317              # double 0.50946186089649614
	.quad	0x3fed3b86d06ce3aa              # double 0.91351643283916428
	.quad	0x3faa9718a76b88d0              # double 0.051934023320215794
	.quad	0x3fe60c16c80259c4              # double 0.68897570671361352
	.quad	0x3fe71214fdf549ac              # double 0.72095727540209031
	.quad	0x3fc1427274fb5504              # double 0.13484030448913853
	.quad	0x3fe787d45bfea667              # double 0.73533075301857032
	.quad	0x3fea5be48971d6cd              # double 0.82371737332024397
	.quad	0x3fd221e917634a82              # double 0.2833197334668186
	.quad	0x3f9ea358219bf5e0              # double 0.029919983912796044
	.quad	0x3fd91e509f21970e              # double 0.39247527637631741
	.quad	0x3fdee9c41f1ccb44              # double 0.4830179504235057
	.quad	0x3feb93390b13a00f              # double 0.86172153628740655
	.quad	0x3fe836851edea46f              # double 0.75665527371633157
	.quad	0x3fc5cbe6f870721c              # double 0.17028510218450854
	.quad	0x3fd03b15d305ccf4              # double 0.25360627753907683
	.quad	0x3fdfac3693840332              # double 0.49488605886294856
	.quad	0x3fc9ff1ab46c5da8              # double 0.20309766587955136
	.quad	0x3fd9ab13e07aa5c6              # double 0.40106675073419884
	.quad	0x3febe406fd0b8d11              # double 0.87158536360621686
	.quad	0x3fa0d667ea9fcff0              # double 0.03288578738275294
	.quad	0x3fea9718f01d58d1              # double 0.83094450852765978
	.quad	0x3fdd8483652773b0              # double 0.46121296766596753
	.quad	0x3fe019ed7ee4aca0              # double 0.50316500457610758
	.quad	0x3fef12bcd3480cfc              # double 0.97103730455310666
	.quad	0x3fd4aa2ba3ff0320              # double 0.32288638129471003
	.quad	0x3fdb31676d8f7442              # double 0.42489038180594119
	.quad	0x3fd40c39ba605f5c              # double 0.31324618531060877
	.quad	0x3fca33d5719afe98              # double 0.20470684096470815
	.quad	0x3fcd08092ee62618              # double 0.22680773534766341
	.quad	0x3fe08bf9020b6c22              # double 0.51708650969829173
	.quad	0x3fceccfe6ea30ce0              # double 0.24063091661637426
	.quad	0x3febf2e8786f5804              # double 0.87340186617325388
	.quad	0x3fec772442cb56f3              # double 0.8895436577392658
	.quad	0x3fd682f92fbd588e              # double 0.35174398099969373
	.quad	0x3fec3ccbbcff4a53              # double 0.8824213687278849
	.quad	0x3fe8f407672e1cff              # double 0.77978868629807596
	.quad	0x3fe7b14a0316c62b              # double 0.74039173701584582
	.quad	0x3fd689c6fa9494c8              # double 0.35215925665609094
	.quad	0x3fedaafc7e4728d8              # double 0.92712235129990983
	.quad	0x3fde548a7e07c742              # double 0.47390997226385789
	.quad	0x3feb4b0420057f69              # double 0.85290724043077859
	.quad	0x3fd8ff27c3e4ed8a              # double 0.39057344560907181
	.quad	0x3fefa4ae673ca3e6              # double 0.98885269320919345
	.quad	0x3fe7245fae358e15              # double 0.72319015526994923
	.quad	0x3fd01312ee2e2a14              # double 0.25116418132589158
	.quad	0x3feaaddecc4f001f              # double 0.83372440246603563
	.quad	0x3fe22b5123e33fb8              # double 0.56778771409334805
	.quad	0x3fe5e4b95f325d60              # double 0.68417042344200851
	.quad	0x3fef4c815b348459              # double 0.97808902562622812
	.quad	0x3fe9f59a4109ce1c              # double 0.81123078062813958
	.quad	0x3fe890d06605d645              # double 0.76767749716118117
	.quad	0x3fb52e156ab60a08              # double 0.082734430840027184
	.quad	0x3f96fb1d40f2cba0              # double 0.02244229992784208
	.quad	0x3fb58aece22b9058              # double 0.084151082246138542
	.quad	0x3fe05e07494ca634              # double 0.51147808376589987
	.quad	0x3fe615aded0fe921              # double 0.69014641095353479
	.quad	0x3fee8e8c430226e6              # double 0.95490086639003091
	.quad	0x3fedb5952c0711b6              # double 0.92841585730689391
	.quad	0x3fea2ad333fdbddc              # double 0.81772766260649687
	.quad	0x3feb14e89d15dd7f              # double 0.84630232506508196
	.quad	0x3fecac334c7e2ed0              # double 0.89602055492420085
	.quad	0x3fe42dc7db7e64ac              # double 0.63058846349590203
	.quad	0x3fe727a2862c3a7d              # double 0.72358823972338338
	.quad	0x3fecc305d5d98e53              # double 0.8988064934496357
	.quad	0x3fef9b8f6c283432              # double 0.98773928760932095
	.quad	0x3feb0a0c1a52f464              # double 0.84497647420324684
	.quad	0x3fe06449ab4fbf86              # double 0.51224215945511342
	.quad	0x3fd42535825c8f96              # double 0.31477105837461161
	.quad	0x3fc8c0d82607c974              # double 0.19338514191583622
	.quad	0x3fbbe6b66f7ee518              # double 0.1089891454893358
	.quad	0x3fdf0e26a34c3912              # double 0.48523870417638293
	.quad	0x3fe597649e3fb630              # double 0.6747305956648173
	.quad	0x3fce184d00213fe0              # double 0.23511660105077592
	.quad	0x3fead0a859401dec              # double 0.83797089988450812
	.quad	0x3fde4d99cc28fd44              # double 0.47348637521277603
	.quad	0x3f5769a358a55600              # double 0.0014289946726270264
	.quad	0x3fcc905bb3c7ff30              # double 0.22315546301251166
	.quad	0x3fb0596d6e376cf0              # double 0.063864554794623052
	.quad	0x3fefdcfa24915e0b              # double 0.99572474615246286
	.quad	0x3fe5671f7fab1f1a              # double 0.66883826194041096
	.quad	0x3fd50d5979082170              # double 0.32893978900440057
	.quad	0x3fc44645e53037f4              # double 0.15839456263387286
	.quad	0x3fe459b7fc44884e              # double 0.63595198889766791
	.quad	0x3fd37ecd40d4502e              # double 0.30461436587325152
	.quad	0x3fa400058920bc20              # double 0.039062664975397121
	.quad	0x3fe5502a7b9d33d4              # double 0.66603588240979628
	.quad	0x3feea820b2f3dab5              # double 0.95802340461417279
	.quad	0x3fede501776250a3              # double 0.93420480076976664
	.quad	0x3fc714989e438d54              # double 0.1803160450718716
	.quad	0x3feb9d6c2bc7c84a              # double 0.86296661902293548
	.quad	0x3fe750eda82905bd              # double 0.72862894862935657
	.quad	0x3fe973e50105fa26              # double 0.7953972835528631
	.quad	0x3fd8d755c45892ce              # double 0.38814300703442661
	.quad	0x3fead7fe49cfeedd              # double 0.83886637131169162
	.quad	0x3fc80e63dc0849a4              # double 0.1879391502739739
	.quad	0x3fe021fdd509b604              # double 0.50414935692759899
	.quad	0x3f9104620b1b2020              # double 0.016618282249311389
	.quad	0x3fc277ec1dc848b0              # double 0.14428473905770067
	.quad	0x3fdb04f60c1a231e              # double 0.42217780286641637
	.quad	0x3fe8c3ef53e6f5b0              # double 0.77391783129831104
	.quad	0x3fda59995493a4d0              # double 0.41171868571707382
	.quad	0x3fdd7e8e4cf0d874              # double 0.46084935678243899
	.quad	0x3fe6c0f5ac9dac18              # double 0.71105464662594198
	.quad	0x3fe6563d86f44c83              # double 0.69802738531360864
	.quad	0x3fdcee2b39d91906              # double 0.45203667306158513
	.quad	0x3feb02c2ac694acb              # double 0.84408696817475837
	.quad	0x3fc3560d9e775bb8              # double 0.15106363523110899
	.quad	0x3fc7c5d5fdcd875c              # double 0.18572497265545962
	.quad	0x3fd5a0550b083f02              # double 0.33791090085377118
	.quad	0x3fe9246250a8fd50              # double 0.7856914115326763
	.quad	0x3fb530f1e95a8448              # double 0.082778090926255321
	.quad	0x3fe96b2ae4148796              # double 0.79433197543061129
	.quad	0x3fd193ef855c47d2              # double 0.27465427421077238
	.quad	0x3fd30fe1d8587220              # double 0.29784437301148792
	.quad	0x3fe154371b846624              # double 0.54153018354844962
	.quad	0x3fe4d301b322ddf0              # double 0.65075764644183032
	.quad	0x3fe0134e7ce0f79e              # double 0.50235676184069056
	.quad	0x3fdcf3cffa2b3de8              # double 0.45238112860258051
	.quad	0x3fc11db523b7dc70              # double 0.13371910327962011
	.quad	0x3fe200e8d19d91e2              # double 0.5626110166600109
	.quad	0x3fb33ff12d320a08              # double 0.075194428953217707
	.quad	0x3fe2ecaff1f1c7a2              # double 0.5913924909093462
	.quad	0x3febc40633381020              # double 0.86767873767576375
	.quad	0x3fd440c0a010fd78              # double 0.31645217544060911
	.quad	0x3fe1c4aa61e13c25              # double 0.55525702588227388
	.quad	0x3fd50dace9327406              # double 0.32895968220856309
	.quad	0x3fedf935b2709307              # double 0.93667111255180735
	.quad	0x3fe52cb0b417a20d              # double 0.6617053525379234
	.quad	0x3fb02bb523c514e0              # double 0.063166924698708993
	.quad	0x3fdeacf11c71d920              # double 0.4793055322437727
	.quad	0x3feecc3314db618f              # double 0.96242670129417884
	.quad	0x3fd942123688a84e              # double 0.39465766263549973
	.quad	0x3fe81d9b69e2e6f2              # double 0.75361414605069243
	.quad	0x3fa16a9ceaf95360              # double 0.034016517337170482
	.quad	0x3fc506dcbe04dd7c              # double 0.16427191999694546
	.quad	0x3fba504650d94dd8              # double 0.10278739427422268
	.quad	0x3fdf0dcc601a3254              # double 0.48521718392365654
	.quad	0x3fe23c922836d42b              # double 0.56989391187983551
	.quad	0x3fa1709145bba560              # double 0.034061946642234942
	.quad	0x3f7c6c884e09d880              # double 0.0069394421012615171
	.quad	0x3fc8a28a02977348              # double 0.1924602997450171
	.quad	0x3fe27ab186d4bff1              # double 0.57747722944441027
	.quad	0x3fbbe37393f4a5a0              # double 0.10893938409994641
	.quad	0x3fe9d4e600555822              # double 0.807238579417348
	.quad	0x3feb0215780fd86d              # double 0.84400437783803073
	.quad	0x3fe02547ed3af078              # double 0.50455089887647286
	.quad	0x3fafb9d50fe066f0              # double 0.061964662731225917
	.quad	0x3fe16f9f1ea3d06e              # double 0.54487567886691379
	.quad	0x3fdf6403b3e489aa              # double 0.49047939841889365
	.quad	0x3fd7eb48992b89a2              # double 0.3737355705071882
	.quad	0x3fef81e92fef82c2              # double 0.98460826265735357
	.quad	0x3fe5179c4d6fee01              # double 0.65913214802225195
	.quad	0x3fede723e3a4fb27              # double 0.93446535550888121
	.quad	0x3fa747dddc897fc0              # double 0.045470173998864549
	.quad	0x3f9d84bfafd18460              # double 0.028826708894829856
	.quad	0x3fef058d634b296b              # double 0.9694277705505504
	.quad	0x3fee2a70ec22e567              # double 0.94268079872487653
	.quad	0x3fd5b8d69af2a000              # double 0.33940663463226883
	.quad	0x3fe1c8080617f919              # double 0.55566788854756333
	.quad	0x3fd875afc98ee37c              # double 0.38218302424825601
	.quad	0x3fdb22e38b58dd54              # double 0.42400444610708132
	.quad	0x3fde86007433df6e              # double 0.4769288191596307
	.quad	0x3fe908c32883e6ee              # double 0.78231962121136944
	.quad	0x3febe6bebf8d446e              # double 0.87191712772813701
	.quad	0x3fed116110a49097              # double 0.90837147951653463
	.quad	0x3fe106bebf0b2578              # double 0.53207337678138256
	.quad	0x3fe187e14a21a144              # double 0.54783691862852679
	.quad	0x3fd0149856d92cba              # double 0.25125702363284186
	.quad	0x3fdd5fdfd1ed9830              # double 0.45897670269767143
	.quad	0x3fe66efa4721eee3              # double 0.70104707615925255
	.quad	0x3fd751756af445a2              # double 0.36434684223885416
	.quad	0x3fe53d9c01e78a42              # double 0.66377067920650057
	.quad	0x3fdada2cf84959ee              # double 0.4195663857148294
	.quad	0x3fd5ffc5cfc04ffa              # double 0.34373612678723442
	.quad	0x3fc065c4bc7ad8d0              # double 0.12810572817915622
	.quad	0x3fc78c9806547180              # double 0.18397808369708102
	.quad	0x3fd4908baed068fc              # double 0.32132236549081461
	.quad	0x3fc2518090493780              # double 0.14311224980559345
	.quad	0x3fe407e2d005da18              # double 0.62596264485802333
	.quad	0x3fcbdd119a6c37cc              # double 0.21768398323223292
	.quad	0x3fd70b6a41ad2ae2              # double 0.36007172025408185
	.quad	0x3fee3fafd9cce649              # double 0.94527428187502338
	.quad	0x3fe5c729b2b6b078              # double 0.68056187539106272
	.quad	0x3fe94fd215ea47ed              # double 0.79099373131088913
	.quad	0x3f94f419adbf60a0              # double 0.020462418775281876
	.quad	0x3fc6029ee641231c              # double 0.17195497744457888
	.quad	0x3fec39823a6792a7              # double 0.88202010543007681
	.quad	0x3fd53074ef6b8ea6              # double 0.331082567032562
	.quad	0x3fea43d1de84748f              # double 0.82077878437452678
	.quad	0x3fed3e205fc285c0              # double 0.91383379653068885
	.quad	0x3fee8bf955a5b637              # double 0.95458666542044213
	.quad	0x3fe0dc61559c5892              # double 0.5269018814167501
	.quad	0x3fd63f190451d9aa              # double 0.34760117933128731
	.quad	0x3fed4e9067340c17              # double 0.91584034115692503
	.quad	0x3fbb78122f337fb8              # double 0.10730088856098419
	.quad	0x3feb0c3ee3682afa              # double 0.84524483123217853
	.quad	0x3fb4ef1d63fa98f0              # double 0.081773602398786726
	.quad	0x3feb779ef3fa0477              # double 0.85835216190038366
	.quad	0x3fedb4723f187393              # double 0.92827713321058736
	.quad	0x3fe8522387340b07              # double 0.76002670676129547
	.quad	0x3fb4e0121cf17fc8              # double 0.081544048372506173
	.quad	0x3fe8980421f8b822              # double 0.76855665812559359
	.quad	0x3feb72b560f8dcee              # double 0.85775250377528578
	.quad	0x3fe001cdbc26b444              # double 0.50022017238882954
	.quad	0x3fd5b2839b3165ba              # double 0.33902063518106795
	.quad	0x3febf6cf0a013f37              # double 0.87387802080227217
	.quad	0x3fb4daf548f7cff0              # double 0.081466036142785247
	.quad	0x3fd8c9b71d5c82a4              # double 0.38731172435113081
	.quad	0x3fdfa359a053b78e              # double 0.49434509903846269
	.quad	0x3fec0337ffd23507              # double 0.87539291348517245
	.quad	0x3fc3e16d3a709d2c              # double 0.15531697610388429
	.quad	0x3fe7b6231a94e152              # double 0.7409835356875567
	.quad	0x3fe1dee5fef49deb              # double 0.55845927997591838
	.quad	0x3fcbdf320905d518              # double 0.21774888458791319
	.quad	0x3fcaff52fec41c64              # double 0.21091687621830879
	.quad	0x3feb7a16d1702804              # double 0.85865345865136122
	.quad	0x3feb1fcbebeaf4da              # double 0.84763141706175849
	.quad	0x3fc8cd966b7b0118              # double 0.19377403495855883
	.quad	0x3febbfe8f8ed042b              # double 0.86717651956872055
	.quad	0x3f673be66bd2b500              # double 0.0028361797727344262
	.quad	0x3fe3bc24318e06b4              # double 0.61671647719068412
	.quad	0x3fe366b202dcd7a4              # double 0.60628605422129001
	.quad	0x3fdd51731aeffcec              # double 0.45809629088030479
	.quad	0x3fec3ffc78d63c61              # double 0.8828108177275561
	.quad	0x3fd299b59f17d094              # double 0.29063168083599433
	.quad	0x3fe0e3c6cbab476c              # double 0.5278047540580082
	.quad	0x3fe193eb3be5aab3              # double 0.5493065042367874
	.quad	0x3feb38288344ba94              # double 0.85060525549291066
	.quad	0x3fd41b7b53758598              # double 0.31417735243129519
	.quad	0x3fcfde85dc6aa458              # double 0.24897835981872407
	.quad	0x3fe2f7681fb6555d              # double 0.59270101732060321
	.quad	0x3fef2b08649ed99f              # double 0.97400302555506701
	.quad	0x3fc5a40b15ced14c              # double 0.16906870426977105
	.quad	0x3fc894aa463982e4              # double 0.19203689984262617
	.quad	0x3fdb741882397566              # double 0.42896092145186626
	.quad	0x3fd27300894b1826              # double 0.2882691708331343
	.quad	0x3fd355c9a8e4543a              # double 0.30211106770849805
	.quad	0x3fe878c09edaf558              # double 0.76474028612544043
	.quad	0x3fbbb462557bb738              # double 0.10822119318956147
	.quad	0x3fe2ab6bef603935              # double 0.58342549088573625
	.quad	0x3fead2b0057125b5              # double 0.8382186991013244
	.quad	0x3fde8109ec79f190              # double 0.47662590115921777
	.quad	0x3fc29fc9172baa34              # double 0.14550126677871023
	.quad	0x3feff0930c5ae642              # double 0.99811699307537816
	.quad	0x3fe3526f236de29b              # double 0.60381276054166066
	.quad	0x3fb4bfaac2cfb6c0              # double 0.081049606858608847
	.quad	0x3fed95c2dcc9bf8b              # double 0.9245313942210357
	.quad	0x3fe88e9da3a984d4              # double 0.76740915265340925
	.quad	0x3fe8209b832d33c4              # double 0.75398040409492539
	.quad	0x3fd834448d220c68              # double 0.37819017202872951
	.quad	0x3fd6bcb792f40140              # double 0.35526837683575607
	.quad	0x3fe9c1a41930ab05              # double 0.80488781852668068
	.quad	0x3fe8a3ef10b517ee              # double 0.77001145613826139
	.quad	0x3fe089c7676ea473              # double 0.51681871606446206
	.quad	0x3feeee8d1b5df509              # double 0.96662001938935404
	.quad	0x3fed4c03cf479ef4              # double 0.91552916035013121
	.quad	0x3fdd9bdba1571b3a              # double 0.46263781314739882
	.quad	0x3fe64a56c576c227              # double 0.69657457892578101
	.quad	0x3fe7815799a149c1              # double 0.73453884130349689
	.quad	0x3fedc929e103b695              # double 0.93080610225816207
	.quad	0x3fdc7d6f4ed10fde              # double 0.44515593239725415
	.quad	0x3fe7e3c29e90e27d              # double 0.74655276269830007
	.quad	0x3fe8dc1e239b2d0f              # double 0.77686984018638039
	.quad	0x3fe0cfc41a717063              # double 0.52536206402465913
	.quad	0x3fe6ee4b929bc207              # double 0.71658877024134504
	.quad	0x3fe008f863832c2f              # double 0.50109500347151037
	.quad	0x3fa696470538b010              # double 0.044115275752432237
	.quad	0x3fe5945f3357a4f1              # double 0.67436180141262814
	.quad	0x3febe0bf8ab241e8              # double 0.87118508423924101
	.quad	0x3fda1a2700bfd4aa              # double 0.40784621308496105
	.quad	0x3fe47a703a4dc775              # double 0.63994609248605505
	.quad	0x3fe228024897529d              # double 0.56738390138578476
	.quad	0x3fea0b5ebcd17e46              # double 0.8138879478319232
	.quad	0x3fedce727bea9c95              # double 0.93145107462341292
	.quad	0x3fcaeba65da702fc              # double 0.21031646321173258
	.quad	0x3fd5223eebd3da50              # double 0.33021519689592527
	.quad	0x3fbd592694866aa0              # double 0.11464158178425032
	.quad	0x3fdebe90e43f50bc              # double 0.48038122453477761
	.quad	0x3fecac8e58934a3e              # double 0.89606396961091384
	.quad	0x3fee2fb8a54933be              # double 0.94332535059367451
	.quad	0x3fec958e610830d7              # double 0.89325636817514009
	.quad	0x3fccfd94af81956c              # double 0.22648867196691513
	.quad	0x3fe9c32023f78400              # double 0.80506903672005592
	.quad	0x3fcf1ccc6be5c7f0              # double 0.24306636112629532
	.quad	0x3fe68526793b157f              # double 0.70375369718446723
	.quad	0x3fe9a401cdc6971b              # double 0.80127039137434808
	.quad	0x3fd0a6caedd092f2              # double 0.26018021797271651
	.quad	0x3fb72f5096c19f48              # double 0.090565716558214437
	.quad	0x3fece1579c8a64ad              # double 0.90250759672485048
	.quad	0x3fd462aef3e20526              # double 0.31852315727890568
	.quad	0x3feb098ad7dd400d              # double 0.84491483841884618
	.quad	0x3fd864bd9f85fd74              # double 0.38114872530419253
	.quad	0x3fd512ec718b1008              # double 0.32928000534252577
	.quad	0x3fc38a27c699e238              # double 0.15265366742439013
	.quad	0x3fb3098791fab0f0              # double 0.074364159717052791
	.quad	0x3fd4b7fd81b231a0              # double 0.32372987428314026
	.quad	0x3fe0df5be7434dc9              # double 0.5272655026296259
	.quad	0x3fb90be289a29570              # double 0.097837599375073969
	.quad	0x3fe719aa791ef451              # double 0.72188304573468021
	.quad	0x3fc234b160e8df3c              # double 0.14223305923382579
	.quad	0x3fe67b7c379244d9              # double 0.70257387975484697
	.quad	0x3fe147717ab16196              # double 0.53997110331970322
	.quad	0x3fd6d8219cffb4fa              # double 0.35694160777968842
	.quad	0x3fd6bd5ef8c45502              # double 0.35530828755993593
	.quad	0x3fb30f2a3bc76450              # double 0.074450149149371869
	.quad	0x3fb8a7a472fd0e10              # double 0.09630801970802616
	.quad	0x3fa2dfd0be411a40              # double 0.036863826012041745
	.quad	0x3fea0e2912c74b25              # double 0.81422856967615032
	.quad	0x3fe8494622313590              # double 0.75894457510155355
	.quad	0x3fefedb380db813f              # double 0.99776625792950557
	.quad	0x3fe2153abe8b7a7a              # double 0.56509148803509324
	.quad	0x3fe0ac39d150be84              # double 0.52102366334834516
	.quad	0x3fd67ae1398cdd12              # double 0.35124998684064324
	.quad	0x3fde3484e1518580              # double 0.47195550922159413
	.quad	0x3fbc18b88b833858              # double 0.10975221067494212
	.quad	0x3fef709a557bd334              # double 0.9824954671481465
	.quad	0x3fcd4a695dc49bc8              # double 0.22883336142078137
	.quad	0x3fd1b4ca77b2c49c              # double 0.27665960015571911
	.quad	0x3fec559187066d21              # double 0.88544536945429198
	.quad	0x3fc6d5795f95ffc0              # double 0.17838971297532957
	.quad	0x3fd6e0f8522636a4              # double 0.35748107931508799
	.quad	0x3fe5109fa643a3f9              # double 0.65827925179939861
	.quad	0x3fe32d12b4fccc2d              # double 0.59925208424681886
	.quad	0x3fe2d9af85be9040              # double 0.58907295343352217
	.quad	0x3fc8e830b660c790              # double 0.19458588509729369
	.quad	0x3fe48e7b8be43a73              # double 0.64239289591371429
	.quad	0x3fec568a768efde8              # double 0.88556407123536207
	.quad	0x3fdf16989c1f368a              # double 0.48575415846139747
	.quad	0x3fb5d3a538cb8c48              # double 0.085260702482217288
	.quad	0x3fec11467233b6cd              # double 0.87710878663139058
	.quad	0x3fdeb89e3caad70c              # double 0.48001819538636492
	.quad	0x3febabdf0df3c87c              # double 0.86473038411192204
	.quad	0x3fc6ecc64b871f88              # double 0.17910078704721522
	.quad	0x3fe56b38c088f3ef              # double 0.66933858494269127
	.quad	0x3fe692a1587bfa10              # double 0.70539920122229383
	.quad	0x3fb701d9ea455638              # double 0.08987199754241082
	.quad	0x3fc6db0e96c03d7c              # double 0.17856008873830465
	.quad	0x3fdc701cc2f56216              # double 0.44434279478949301
	.quad	0x3fee9e46cbfff60c              # double 0.95682086795540177
	.quad	0x3fd1b25c9245029c              # double 0.27651132854593086
	.quad	0x3fdd5397fc66b8a6              # double 0.45822715424118099
	.quad	0x3fe97926f58bf553              # double 0.79603908499090392
	.quad	0x3feda6631ddc8578              # double 0.92656093437487552
	.quad	0x3fd8af44fa3c99a8              # double 0.38569759785823488
	.quad	0x3fda70e28b81532e              # double 0.41313995002319615
	.quad	0x3fb2bcd173f21318              # double 0.073193636710197629
	.quad	0x3fd38b3970447350              # double 0.30537258113490839
	.quad	0x3fd6828ddddac72e              # double 0.3517183939503522
	.quad	0x3fec65f932283732              # double 0.88744792743975709
	.quad	0x3fd31df1bc9f6028              # double 0.2987026540772626
	.quad	0x3fc8b824350d256c              # double 0.19311955061338482
	.quad	0x3fe3f7e59b52b4fd              # double 0.62401085220849917
	.quad	0x3fc5463c08af167c              # double 0.16620588706989625
	.quad	0x3fc29d4af4ac7c9c              # double 0.14542519518815744
	.quad	0x3fd87f8d9aab4042              # double 0.38278522591008735
	.quad	0x3fe22ef8c8279420              # double 0.56823386280723653
	.quad	0x3fc0ba3d27093b24              # double 0.13068355947549393
	.quad	0x3fe541ba59647ef9              # double 0.6642734285305486
	.quad	0x3fe36791f0e86073              # double 0.60639283230103869
	.quad	0x3fe9378a871e30d9              # double 0.78802992239209424
	.quad	0x3fcc7f19fc2b3c50              # double 0.22262883007940326
	.quad	0x3fda322f9ea9638c              # double 0.40931311125091763
	.quad	0x3fdc70da9ca866fe              # double 0.44438805864920983
	.quad	0x3fe0a143dbc579b8              # double 0.5196856777582104
	.quad	0x3fe3b18bf0a92834              # double 0.61542317394310553
	.quad	0x3fcc09a51ce486a4              # double 0.21904434119010319
	.quad	0x3fd043287cce71ca              # double 0.25409900844695399
	.quad	0x3fed9cc6a5b16096              # double 0.92538769113436348
	.quad	0x3fe0ad7e536f697e              # double 0.52117840095461054
	.quad	0x3fe406595e1a1696              # double 0.62577503566054093
	.quad	0x3fe114fe4b9cdbfd              # double 0.53381266372787162
	.quad	0x3fd4ddf4719e391a              # double 0.32604704947961383
	.quad	0x3fd505ffbbd03a06              # double 0.32849114743376651
	.quad	0x3fdc85c6e0b59f88              # double 0.44566509193691006
	.quad	0x3fc13c7bd6a13630              # double 0.13465831737487255
	.quad	0x3fe414e1d9db1b3f              # double 0.62754910039880218
	.quad	0x3fec327d3ed0fcda              # double 0.8811632372743603
	.quad	0x3fe343b5468f2bf9              # double 0.60201514989000693
	.quad	0x3fe49443d617cd7f              # double 0.64309875311884912
	.quad	0x3fe3c65dad9de8fd              # double 0.61796459111727098
	.quad	0x3fbfbfd4ba28ed50              # double 0.12402085823935249
	.quad	0x3fdd61aac56ef0be              # double 0.45908612518884329
	.quad	0x3fe5e8c776f132bd              # double 0.68466542464155788
	.quad	0x3fddd08190ef7d06              # double 0.46585120347840847
	.quad	0x3fd73e8c7fa4a0e4              # double 0.36319267716545611
	.quad	0x3fdd855b30ea1c12              # double 0.46126441742711777
	.quad	0x3fc840eaf5c8fbc8              # double 0.18948113442635717
	.quad	0x3fef98502ee2faaa              # double 0.98734292180582384
	.quad	0x3fd3ec3c4001a790              # double 0.31129366160041005
	.quad	0x3fd6e2dcabe5ee66              # double 0.3575965574925476
	.quad	0x3fe3faf878925614              # double 0.62438605832238858
	.quad	0x3fe05f83ab250b77              # double 0.51165946413708141
	.quad	0x3fa926ee174cbde0              # double 0.049125137657366258
	.quad	0x3fd59bced865df9a              # double 0.33763476498233447
	.quad	0x3fad7712ed065510              # double 0.057549086984332587
	.quad	0x3fd6344a97dc976a              # double 0.34694161253206934
	.quad	0x3fe865634e92f638              # double 0.76237645479677152
	.quad	0x3fc4b1eaeb0614e4              # double 0.16167961574334477
	.quad	0x3fe9c04156fee45f              # double 0.80471865645734997
	.quad	0x3fe09ab99bccfd0a              # double 0.51888733320075286
	.quad	0x3feb852095d37b7c              # double 0.86000088942442642
	.quad	0x3fe1ebfe665af576              # double 0.56005783072730142
	.quad	0x3fd463f5434d9820              # double 0.31860095570152858
	.quad	0x3fc91e5132f536dc              # double 0.19623770702531018
	.quad	0x3fdc2623b10282c4              # double 0.43982784544099851
	.quad	0x3fecd807d24a21e0              # double 0.9013709170549724
	.quad	0x3fd4459c1c9ed262              # double 0.3167486457344123
	.quad	0x3fdaac60a87e4de4              # double 0.41677109198027851
	.quad	0x3fd5ef0ee12a0b14              # double 0.34271594990438925
	.quad	0x3fc77edef0603560              # double 0.18355929123974146
	.quad	0x3fe60f84d3333c4e              # double 0.6893943905832971
	.quad	0x3fdb3486bed33626              # double 0.42508095393427181
	.quad	0x3fe8b00cdede0e45              # double 0.77149051216878972
	.quad	0x3fed23e77fc840a5              # double 0.91063284833400771
	.quad	0x3fd623b3ba81bace              # double 0.34592908109236198
	.quad	0x3fe80d722cbf770b              # double 0.75164135684801303
	.quad	0x3fd2ff47495dcedc              # double 0.29683096089068584
	.quad	0x3fe75aa3c449f099              # double 0.72981441819821946
	.quad	0x3fe61f193dfc1264              # double 0.69129621607187319
	.quad	0x3fe4f40c3ce643c7              # double 0.65479099173000399
	.quad	0x3fd51b65a7224e24              # double 0.32979718515091094
	.quad	0x3fc137b578287568              # double 0.13451259963123197
	.quad	0x3fe5cac8ae509ee2              # double 0.68100389524348892
	.quad	0x3fdcc96e4f341d56              # double 0.44979436621402635
	.quad	0x3fdc80b0ab46b936              # double 0.44535462118337266
	.quad	0x3fe36b142b43254d              # double 0.60682114076295479
	.quad	0x3feb7f9d3b644753              # double 0.85932790374702461
	.quad	0x3fb8e53fe6f419c8              # double 0.097248071560989691
	.quad	0x3fd423eb4a21c7e8              # double 0.31469232787560353
	.quad	0x3fd54afd58b5bc64              # double 0.33270200408055062
	.quad	0x3fd1caf49ddd52b8              # double 0.27801242271861382
	.quad	0x3feb84a48ac1a32e              # double 0.85994174099787357
	.quad	0x3fd637a59cae0488              # double 0.3471464185786961
	.quad	0x3fe074901e2d508f              # double 0.51422887700984343
	.quad	0x3fd6fde9eb03550c              # double 0.35924766493310822
	.quad	0x3fe27ed70840283d              # double 0.57798339473197979
	.quad	0x3fde733a6732b1d8              # double 0.47578296735698933
	.quad	0x3fe88c857e9b0d09              # double 0.76715349891347373
	.quad	0x3fe2f99bdc4b0df9              # double 0.59296982790004826
	.quad	0x3fed51dfba04036b              # double 0.91624437647997803
	.quad	0x3fe1cd1a1832369c              # double 0.55628685689744684
	.quad	0x3fd376765c8cd1fa              # double 0.30410536802381183
	.quad	0x3fbe277e413e3298              # double 0.11779011814923945
	.quad	0x3fe3aa881c1082fb              # double 0.61456685525271781
	.quad	0x3fe600c639f712da              # double 0.68759452172579505
	.quad	0x3fdd71888ba0c776              # double 0.4600545276217568
	.quad	0x3fdf105a8bc8ef32              # double 0.48537315035695194
	.quad	0x3fa9951db5df2970              # double 0.049965790225161011
	.quad	0x3fc402a215f08088              # double 0.15633035727751499
	.quad	0x3fd6132aeca87e1e              # double 0.34491990195417255
	.quad	0x3fcac056a543ef34              # double 0.2089947039565857
	.quad	0x3fec46eac8c17e79              # double 0.88365687570690377
	.quad	0x3fda2b4a1a5305a6              # double 0.40889217921002297
	.quad	0x3fe470f83e69ee89              # double 0.63879024686998875
	.quad	0x3fbd7b81532fddc0              # double 0.11516578942234101
	.quad	0x3fe7267927e9a089              # double 0.72344644351416421
	.quad	0x3feaaf2740fcd25d              # double 0.83388102238547968
	.quad	0x3fdbcf6a5872f5f6              # double 0.43453463208774623
	.quad	0x3feac92fedaefd7c              # double 0.83705898687905699
	.quad	0x3fbe1535f031b2e0              # double 0.1175111495410408
	.quad	0x3fee5abe1ed8ec8d              # double 0.94857698464274309
	.quad	0x3fd57a823bb99df4              # double 0.33560233910108583
	.quad	0x3fe5fa73dc043e17              # double 0.68682282421099472
	.quad	0x3fe889c1c6b53c71              # double 0.76681603250643893
	.quad	0x3fe1bb2a870707a0              # double 0.5540974271063881
	.quad	0x3fe035d350dcdb81              # double 0.50657048982144215
	.quad	0x3fef67ad2ab9c364              # double 0.9814058145985709
	.quad	0x3fd63fc5ff35cc34              # double 0.34764242098680431
	.quad	0x3fde87b595d9fe52              # double 0.47703303941668651
	.quad	0x3fcd3acb9983c0d4              # double 0.2283567905028635
	.quad	0x3fd7b9388d78b786              # double 0.37067998710232819
	.quad	0x3fc9caf4c4a9434c              # double 0.20150622942540009
	.quad	0x3fa4f3a8b95a3410              # double 0.040921471239109164
	.quad	0x3fdc7146597293b6              # double 0.44441374526132493
	.quad	0x3fe792ed7bafb20e              # double 0.7366855064152007
	.quad	0x3fd5b52e00e91f2a              # double 0.3391833313839806
	.quad	0x3fef14b64f460d25              # double 0.97127833827145038
	.quad	0x3fc841882c78e58c              # double 0.1894998757505103
	.quad	0x3fd01e9291c5b83e              # double 0.25186599956112221
	.quad	0x3fec8b212c2ed35c              # double 0.89198359136080851
	.quad	0x3fedb01ab170143a              # double 0.92774710326978682
	.quad	0x3fefe5251edb348c              # double 0.99672180201163618
	.quad	0x3fde5723862ba2f4              # double 0.47406852819999235
	.quad	0x3fd28f4c01d7b9b6              # double 0.28999614887188885
	.quad	0x3fbb54321e4f2928              # double 0.10675347557040438
	.quad	0x3fe6fed6f9fa0d14              # double 0.71860836814485873
	.quad	0x3fca82a0f92adca4              # double 0.20711147467020397
	.quad	0x3fe33085c6bd60c3              # double 0.59967316452368669
	.quad	0x3fe501756dc48269              # double 0.6564280647181252
	.quad	0x3fee39f94daccdc4              # double 0.94457688494588198
	.quad	0x3fb6b79465560a38              # double 0.088738703480012115
	.quad	0x3fd6c9c5afca0818              # double 0.3560651985827703
	.quad	0x3fda0e2346717404              # double 0.40711290244308906
	.quad	0x3fe66e630256d900              # double 0.70097494561085227
	.quad	0x3fbb17ee9e384058              # double 0.10583392489229604
	.quad	0x3fd3135f284ec6cc              # double 0.29805735527325505
	.quad	0x3feccfd6e53aadca              # double 0.90037102481203957
	.quad	0x3fe873c876fec682              # double 0.7641336750150034
	.quad	0x3febeca31e30d646              # double 0.87263637444147757
	.quad	0x3fc4116081a7cba8              # double 0.15678030329544623
	.quad	0x3fe01f12fe10701d              # double 0.50379323598781733
	.quad	0x3fb2e40e7eda97a0              # double 0.073792367906746481
	.quad	0x3fd534d3510985c8              # double 0.33134920991696193
	.quad	0x3fe24ccc2611ac93              # double 0.57187468943938524
	.quad	0x3febe50d0a672428              # double 0.87171031982245939
	.quad	0x3fd3a924a270faae              # double 0.30719867576037074
	.quad	0x3fe61cb0ad74cef7              # double 0.69100221517734794
	.quad	0x3fd6709dbcc03182              # double 0.35062354500475845
	.quad	0x3fca4f90471b4e98              # double 0.20555308792119287
	.quad	0x3f93597ec9f38700              # double 0.018896084858062601
	.quad	0x3fdf72a2da8a8be8              # double 0.49137183515466498
	.quad	0x3fd8ecbec5a35bb6              # double 0.38944978046987033
	.quad	0x3fdab9204c4358d8              # double 0.41754920432630405
	.quad	0x3fda2b08f86d843c              # double 0.40887665043380017
	.quad	0x3fd763afb6db8246              # double 0.36545937401937001
	.quad	0x3fd03a1224806dea              # double 0.25354436459175977
	.quad	0x3fee2f171e1e1cc1              # double 0.94324832804058911
	.quad	0x3fe3bc7d5be847a2              # double 0.61675899458554206
	.quad	0x3fe5f9f0975a3974              # double 0.68676023064635539
	.quad	0x3fea614df7487a03              # double 0.82437799737437023
	.quad	0x3fdd831e5735e9d0              # double 0.46112783924732259
	.quad	0x3fe6bd2219c644fd              # double 0.71058754953460801
	.quad	0x3fee6da75dd61a26              # double 0.95088547065171691
	.quad	0x3fe6d6261a502932              # double 0.71364121569903305
	.quad	0x3fe1a5c3385fbd21              # double 0.55148468981306931
	.quad	0x3feafc7d8aa8cb72              # double 0.84332158166794913
	.quad	0x3fe3a3d809670dae              # double 0.61375047527729065
	.quad	0x3fd73601134502fe              # double 0.36267115480227108
	.quad	0x3fea76a43ee63798              # double 0.82698261532799489
	.quad	0x3fe1ba0636e3bad4              # double 0.55395804138773963
	.quad	0x3fecc888e62faa70              # double 0.89947934110871408
	.quad	0x3fab178242adaa00              # double 0.052913733138513663
	.quad	0x3f74efc283f2c580              # double 0.0051114652880398515
	.quad	0x3fe2d2baa2c58368              # double 0.5882237605220384
	.quad	0x3fdf2eb2eade2924              # double 0.48722527443227848
	.quad	0x3fcdc4ddf13e9344              # double 0.23257040290368469
	.quad	0x3fdff766960256f6              # double 0.4994751419957163
	.quad	0x3fe5f5453e348632              # double 0.68619024419257912
	.quad	0x3fda4f6c98719fa2              # double 0.41109766852468443
	.quad	0x3fea5f69cc4ac5da              # double 0.82414712811276591
	.quad	0x3feea35447ded18c              # double 0.95743764912781292
	.quad	0x3fee1c67306916e0              # double 0.94096717314888778
	.quad	0x3fc65cbc7b4535f0              # double 0.1747050859361674
	.quad	0x3fc190b199be0f6c              # double 0.13722820288614501
	.quad	0x3fde3864cd9aaaba              # double 0.47219200209171286
	.quad	0x3fc3a3867cb6dd78              # double 0.15342789735380413
	.quad	0x3fe37495b80e45a4              # double 0.60798154781712244
	.quad	0x3fe381f5378cae7b              # double 0.60961399888533607
	.quad	0x3fe4b9f80e5829d9              # double 0.64770129014624012
	.quad	0x3fd77e4d320f0148              # double 0.36708383453880744
	.quad	0x3fdf10933210bdde              # double 0.4853866566581625
	.quad	0x3fe0d1bec5f9163e              # double 0.5256036631259986
	.quad	0x3fde7e716bc69548              # double 0.47646747136089518
	.quad	0x3fcf1f565098bb04              # double 0.24314383445149457
	.quad	0x3fe880d6cd396f2a              # double 0.76572742541200012
	.quad	0x3fe84d8a20283d34              # double 0.7594652774877546
	.quad	0x3fe6a7ba658f4344              # double 0.7079746230684596
	.quad	0x3fe3911aa3c28d1e              # double 0.61146289810531917
	.quad	0x3fc2a6215d282614              # double 0.14569489525483503
	.quad	0x3fece0e1133eb410              # double 0.90245107420708059
	.quad	0x3fd93fbd58a357ea              # double 0.39451535850582664
	.quad	0x3feba4aa9691a7b8              # double 0.86385087402344762
	.quad	0x3fe167e9fc592d82              # double 0.54393481528079257
	.quad	0x3fe5347798f7b1e8              # double 0.66265468479610679
	.quad	0x3fd5f60fd7be9abc              # double 0.34314342564395495
	.quad	0x3fd4270d89badb8e              # double 0.31488359880625516
	.quad	0x3fecc63630463b18              # double 0.89919576099950671
	.quad	0x3fc8f2744764eb24              # double 0.194899115429359
	.quad	0x3fdffc4d6124cd52              # double 0.49977430807776557
	.quad	0x3fd1f898bc419e0a              # double 0.28079813370138196
	.quad	0x3fd2f1abb60980cc              # double 0.29600041176855707
	.quad	0x3fec53da6580301c              # double 0.88523597549783827
	.quad	0x3fcc46ea857caa2c              # double 0.22091418760221992
	.quad	0x3fc63f81f05a1814              # double 0.17381309734281614
	.quad	0x3fe0399075b515d8              # double 0.50702689161033287
	.quad	0x3fd61ebdd14b2814              # double 0.34562631071878624
	.quad	0x3fe88bbf14490d79              # double 0.7670588871191476
	.quad	0x3fcfed6cc016b62c              # double 0.24943313006717582
	.quad	0x3fd6b5c86a895e58              # double 0.35484514621700702
	.quad	0x3fc5421788d36000              # double 0.16607946568433363
	.quad	0x3fe12c161f14d69d              # double 0.53663164206109892
	.quad	0x3fed321c35ba4eed              # double 0.91236696714119392
	.quad	0x3feec35217ae2672              # double 0.96134285569242039
	.quad	0x3fea3f29a5ca0801              # double 0.82021028881740687
	.quad	0x3fdd7d81736e6654              # double 0.46078525803168202
	.quad	0x3fdd2fcd8695e634              # double 0.45604265349502104
	.quad	0x3fa3a09feb836370              # double 0.038334844111608812
	.quad	0x3fe7c82495aa312e              # double 0.74318150741013311
	.quad	0x3fe4ae614bded40b              # double 0.64628662889902111
	.quad	0x3fa80f87d1a98250              # double 0.046993488639377134
	.quad	0x3f8bd8fdd1807980              # double 0.013597472148884959
	.quad	0x3f8eb2c7a62f7f80              # double 0.014989433058815171
	.quad	0x3f81fdbf4679df80              # double 0.0087847655661190682
	.quad	0x3fd2d52df57b3d6c              # double 0.2942614457396846
	.quad	0x3fd5bfb2adaeba8a              # double 0.33982531510529468
	.quad	0x3fdf61c54025eedc              # double 0.49034243835897739
	.quad	0x3fb5c3291fce33e8              # double 0.085009165062913561
	.quad	0x3fe0c55a37461be1              # double 0.52409086986233089
	.quad	0x3fedf18c54ecde6b              # double 0.93573586070028847
	.quad	0x3fca8fce3e3607e4              # double 0.20751359975480377
	.quad	0x3fe960dd01d0436c              # double 0.79307413438992346
	.quad	0x3fee0ec5d2833d06              # double 0.93930331340553219
	.quad	0x3fd0eaa073335a6a              # double 0.26432048082407411
	.quad	0x3fcf31a8205c4864              # double 0.24370290355779212
	.quad	0x3fd3e2c78573d76a              # double 0.31071651489707242
	.quad	0x3fe0567081c95fae              # double 0.51055169438312986
	.quad	0x3fe44e51bae048de              # double 0.63456045626869773
	.quad	0x3fc21f18e7b7f7c8              # double 0.14157401384721724
	.quad	0x3fe5f5ae44e279dc              # double 0.68624032453572736
	.quad	0x3fe74932022cbd3f              # double 0.72768497872122129
	.quad	0x3fd6466c5d04a5d6              # double 0.34804829677395099
	.quad	0x3fdae1dd4359b43a              # double 0.42003566338718523
	.quad	0x3fc7d4d90b74eb38              # double 0.18618310031328078
	.quad	0x3fd648e13b5ae64a              # double 0.34819823070902045
	.quad	0x3fe86d29d19c3816              # double 0.76332560481546596
	.quad	0x3f87d1d50ee3f180              # double 0.011630692021292743
	.quad	0x3fd58aa4d700d24c              # double 0.3365871524468147
	.quad	0x3fec9aedd5a6bd03              # double 0.89391223648809193
	.quad	0x3feb424c18eeacd3              # double 0.85184292668909689
	.quad	0x3fe7c26ed2ccc397              # double 0.74248448535773803
	.quad	0x3fcd28313ffa20a0              # double 0.22778907417182825
	.quad	0x3fd29d8564feb53e              # double 0.29086432326115019
	.quad	0x3fe8bda87fd4e303              # double 0.77315163580996715
	.quad	0x3fdc557869510416              # double 0.44271669659434687
	.quad	0x3fefb42a8fe0e24b              # double 0.990742951405147
	.quad	0x3fe814dc6277ca0c              # double 0.75254649383561078
	.quad	0x3fac6f01219056c0              # double 0.055534396502634475
	.quad	0x3fe14ac7eab584e6              # double 0.54037853089917287
	.quad	0x3fb413fb06e97a38              # double 0.078429879367356459
	.quad	0x3fc90165ee0ac168              # double 0.19535516856332014
	.quad	0x3fdff0248291b12e              # double 0.49903214217080716
	.quad	0x3fe6733bd35d7762              # double 0.70156661302801759
	.quad	0x3fe75d7619d0e1b5              # double 0.73015885393311086
	.quad	0x3fe592435d9cbaa3              # double 0.67410438808095241
	.quad	0x3fea01e897d5c867              # double 0.81273297934809541
	.quad	0x3f87953b47d761c0              # double 0.011515105371402323
	.quad	0x3feeef4c300ca659              # double 0.96671113381052997
	.quad	0x3fe930de7beee690              # double 0.78721546369270534
	.quad	0x3fe9b0b85d3446a7              # double 0.80282228664346611
	.quad	0x3fedd9e42d000c4f              # double 0.93284806050395186
	.quad	0x3fef417cc66dad73              # double 0.97674406772186583
	.quad	0x3fae40858ad10720              # double 0.059086011119246828
	.quad	0x3fd4cbdef1fa361c              # double 0.32494329100231467
	.quad	0x3fe200d2ca73e78f              # double 0.56260051290085922
	.quad	0x3fd076997c698010              # double 0.25723874234790944
	.quad	0x3fd407d8828f7e90              # double 0.31297886610080017
	.quad	0x3fd4f42cc471d88a              # double 0.3274032514958739
	.quad	0x3fe7d31ad87d9cf1              # double 0.74451963694892076
	.quad	0x3feb9825c698dfde              # double 0.86232270039090131
	.quad	0x3f93bd2e00549680              # double 0.019276350755851102
	.quad	0x3fe00e9f080da0fc              # double 0.50178481648347839
	.quad	0x3fd250370423f426              # double 0.2861459293779397
	.quad	0x3fd418bc05a42aa8              # double 0.31400967169671867
	.quad	0x3fb51f31f7ad4d00              # double 0.082507250755316619
	.quad	0x3fc10c51e162d05c              # double 0.1331884718434847
	.quad	0x3fe5ac036c1e862f              # double 0.67724772564924318
	.quad	0x3fd58bb4fc2313aa              # double 0.33665203688388579
	.quad	0x3f97445cba0087c0              # double 0.022721718647637834
	.quad	0x3fea02f4de08a672              # double 0.81286090246176301
	.quad	0x3fcb5be4e6044ce0              # double 0.21374188643731085
	.quad	0x3fd7fd6877d3b692              # double 0.37484180166107095
	.quad	0x3fa1d391ee4cb220              # double 0.034817276324563773
	.quad	0x3fe411cde62cdc76              # double 0.62717337566472398
	.quad	0x3fbc2a771c6e8b50              # double 0.11002296871315065
	.quad	0x3fede5c87afd01ba              # double 0.93429969807771518
	.quad	0x3fdda50e04ae0f60              # double 0.46319914299987452
	.quad	0x3fd9597a7c055d32              # double 0.39608633147641392
	.quad	0x3fea2fc3c889dd9c              # double 0.81833066146548416
	.quad	0x3fc8721b6bccf77c              # double 0.19098227275565793
	.quad	0x3fb4f14f64abe4e8              # double 0.081807100370400954
	.quad	0x3fcbe8e80d1c1104              # double 0.21804524078482512
	.quad	0x3feb917e71916fb3              # double 0.86151048833152399
	.quad	0x3fec99856c195d5a              # double 0.89374037850476928
	.quad	0x3fed28c746b062a4              # double 0.91122783476301494
	.quad	0x3fda5812df22f10c              # double 0.41162559309647473
	.quad	0x3fedf8a3901b69a7              # double 0.93660143037714227
	.quad	0x3fecbac7f472f73a              # double 0.8978004240413846
	.quad	0x3fd71c79ffbc8f92              # double 0.36111307119630809
	.quad	0x3fa76e4c723ab880              # double 0.045763386672988737
	.quad	0x3fd3841d44e229ba              # double 0.3049386189165052
	.quad	0x3fd9dfd0c50b4d0c              # double 0.40428561441986299
	.quad	0x3fee252b91886f0f              # double 0.94203737663653608
	.quad	0x3fed8381ecc9e831              # double 0.92230316398423018
	.quad	0x3fe76fe3e7100c11              # double 0.73240847711019985
	.quad	0x3fd9fc6bffe0c090              # double 0.40603160846786412
	.quad	0x3febc0e543021b66              # double 0.86729682052178414
	.quad	0x3fe16c0806af16a2              # double 0.54443742089707237
	.quad	0x3feeecfc34566428              # double 0.96642885419999391
	.quad	0x3fe0351509efa397              # double 0.50647975865023198
	.quad	0x3fb38fb242cd6c40              # double 0.076411382016360996
	.quad	0x3fdcf28265ea250a              # double 0.45230159714317664
	.quad	0x3fcdb5ad157366f4              # double 0.23210681483651963
	.quad	0x3fbcb09f62546cd0              # double 0.1120700469077065
	.quad	0x3fea2ee1a1147ad8              # double 0.81822282277047531
	.quad	0x3fcef60a434da9ac              # double 0.24188354765221953
	.quad	0x3fdd8cbc80def44c              # double 0.46171486458826361
	.quad	0x3fea8ca7ff899171              # double 0.82966995153087286
	.quad	0x3fe91b51b1e9d9a9              # double 0.78458485363699026
	.quad	0x3fd066a15b1dd442              # double 0.25626405618760739
	.quad	0x3fd69ba8e88ede8a              # double 0.35325072012663183
	.quad	0x3fe6ac7fd21c4637              # double 0.70855704343029557
	.quad	0x3fce417381ffe0a0              # double 0.23637241218216776
	.quad	0x3fd832735770d5e2              # double 0.37807925738465376
	.quad	0x3fc309ed61da2aa0              # double 0.14874045637073596
	.quad	0x3fef1982c94620cb              # double 0.97186412154499046
	.quad	0x3fe61172726ee595              # double 0.68962976789696262
	.quad	0x3fea57187d22e710              # double 0.82313179436389028
	.quad	0x3fee2e53e4b675b6              # double 0.94315523786979472
	.quad	0x3fdc0bc3e0df251c              # double 0.43821808776972815
	.quad	0x3feb508c8e6c45ff              # double 0.85358264748555246
	.quad	0x3fe2869913235666              # double 0.57893041360757702
	.quad	0x3fe84b90cde2f64f              # double 0.75922432148190377
	.quad	0x3fe0f79f07a8f5fb              # double 0.53022719856352241
	.quad	0x3fee4e3c7f6ce154              # double 0.94705033195263377
	.quad	0x3fdc256475e99290              # double 0.43978225245363323
	.quad	0x3fd08b06bd0f7f4a              # double 0.25848549330656978
	.quad	0x3fecadcd1a067385              # double 0.89621596415564453
	.quad	0x3fdc58196bdce168              # double 0.44287715466955158
	.quad	0x3fe7ac3a22ce5186              # double 0.73977381513627516
	.quad	0x3fde46e5b7abe23e              # double 0.47307722984945488
	.quad	0x3fecc8c72799c7ac              # double 0.89950902685653977
	.quad	0x3feb19577e21ce39              # double 0.84684347758452028
	.quad	0x3fedf9e0d6964798              # double 0.93675271903542789
	.quad	0x3febcedd6d67a36f              # double 0.86900206916935285
	.quad	0x3fec384b3a54b9d8              # double 0.88187180893674633
	.quad	0x3fe542fc942cb79b              # double 0.66442707958570979
	.quad	0x3fe1e7b37b3fa834              # double 0.55953382560733766
	.quad	0x3fe48854d33ac679              # double 0.64164201026706202
	.quad	0x3fe66c8e83acb932              # double 0.70075154988970767
	.quad	0x3fe8143dfaf07aae              # double 0.75247096072765429
	.quad	0x3fe05a0051910539              # double 0.51098648005441938
	.quad	0x3febad2ec1bfdc77              # double 0.86489045945826504
	.quad	0x3fdc362541772ed2              # double 0.44080478089447894
	.quad	0x3fe28d14c31d0e08              # double 0.57972181423286973
	.quad	0x3fef942b81f8899a              # double 0.98683715233737535
	.quad	0x3fe00767b65f2794              # double 0.50090394610855293
	.quad	0x3fe0bf2b5e9d881b              # double 0.52333610992014046
	.quad	0x3febf8d08bc585d3              # double 0.87412287997374916
	.quad	0x3fe4ed5197bef893              # double 0.65396957052122884
	.quad	0x3fec2e7681d9074d              # double 0.88067174301998252
	.quad	0x3fce3993f7b37ff8              # double 0.23613214106353531
	.quad	0x3f6937f2485dc800              # double 0.0030784351428616574
	.quad	0x3fd30d22fd80e9be              # double 0.29767679935653379
	.quad	0x3fe8332081d27046              # double 0.75624108653892885
	.quad	0x3fe1544ea0e59ea0              # double 0.54154139924226641
	.quad	0x3fbd2d72447ca778              # double 0.11397470638317297
	.quad	0x3fb0489563043028              # double 0.063607536958614319
	.quad	0x3fce9f1b4206f8f4              # double 0.23923054431902069
	.quad	0x3f64800b4485dc00              # double 0.0025024623939162716
	.quad	0x3febf9eb7f529d57              # double 0.87425780170171208
	.quad	0x3feb9ee030f3cc14              # double 0.86314401207926261
	.quad	0x3fdccdb79764a632              # double 0.45005597862709401
	.quad	0x3fd18c9f246aeec0              # double 0.27420786434570843
	.quad	0x3feadb55f2acc33a              # double 0.83927438161308676
	.quad	0x3fe399d77ae2b8c3              # double 0.61252950669383954
	.quad	0x3febc140513473ca              # double 0.86734023914652281
	.quad	0x3fd8fab5212d6028              # double 0.39030197372403785
	.quad	0x3fcd970912c75594              # double 0.23117173592497109
	.quad	0x3fd587c46beda39a              # double 0.33641157665129529
	.quad	0x3fc712540d7dc194              # double 0.18024683626891813
	.quad	0x3fa5488d7f6d7460              # double 0.041569158368226722
	.quad	0x3fbf78cf61a40868              # double 0.12293716558272794
	.quad	0x3fec8bce12c94b95              # double 0.89206603688431818
	.quad	0x3fe88fdcbd3286cd              # double 0.76756131126986704
	.quad	0x3fe9b5f34f80a18e              # double 0.80346074607682438
	.quad	0x3fef8293a0c3b7ed              # double 0.98468953513451895
	.quad	0x3fa00df4213c52e0              # double 0.031356457764706525
	.quad	0x3fe67e50362db2ba              # double 0.70291910726299212
	.quad	0x3fe42d761b1fcf57              # double 0.63054948137003464
	.quad	0x3fca90c265bf7980              # double 0.20754270523225316
	.quad	0x3fd820d2b664bd06              # double 0.37700336276880397
	.quad	0x3fe2fd771c9019b1              # double 0.59344058588685844
	.quad	0x3f8e5038462e6fc0              # double 0.014801444665685781
	.quad	0x3fefc60cb5c38455              # double 0.99292598248224328
	.quad	0x3fe966ab01590233              # double 0.79378271353932062
	.quad	0x3fdab3bd8bcd6330              # double 0.41722048428123326
	.quad	0x3fe4943cdf3cbc98              # double 0.64309543229127808
	.quad	0x3fc7d7c3f0a4b608              # double 0.18627213716665403
	.quad	0x3fe667a72bdd5fb2              # double 0.7001529556973678
	.quad	0x3fd3b9992e876cae              # double 0.30820302528236254
	.quad	0x3feab4a901a01ad0              # double 0.83455324475729675
	.quad	0x3fd24ec622fa861a              # double 0.28605798164253005
	.quad	0x3feb5dcd70073450              # double 0.85520049934860687
	.quad	0x3fe7f35efb418b1e              # double 0.74845837663119474
	.quad	0x3fc8447096ef7c9c              # double 0.18958861703774665
	.quad	0x3fb0e59256477018              # double 0.066002985061857422
	.quad	0x3fd0f292be9f06f4              # double 0.26480549445487545
	.quad	0x3fcebebc69c4080c              # double 0.24019580044119981
	.quad	0x3fcaae6157a178e8              # double 0.20844666270108481
	.quad	0x3feb73c16d35e4a2              # double 0.85788031892947836
	.quad	0x3f9a4f259ca2af60              # double 0.02569254654433395
	.quad	0x3fd7c6bad5f9aa26              # double 0.37150450607319596
	.quad	0x3fe5421dd9b02928              # double 0.66432087437832354
	.quad	0x3fef596a2912b4dc              # double 0.97966487905582821
	.quad	0x3fa24e317ca70f10              # double 0.035752817598703968
	.quad	0x3fe594ee397d37e1              # double 0.67443000057550873
	.quad	0x3fd02b08a44f2530              # double 0.25262657209221384
	.quad	0x3f958d2101ed64c0              # double 0.021046176664957228
	.quad	0x3fc920f5fa019f54              # double 0.19631838519421285
	.quad	0x3febd5edd0c307c9              # double 0.86986437581821818
	.quad	0x3fea869fb9098458              # double 0.82893358364175196
	.quad	0x3fe78d2285dcf823              # double 0.7359783758654469
	.quad	0x3fb1fba301a3dbb8              # double 0.070245921993644767
	.quad	0x3fd6202fab2f9814              # double 0.3457144901025242
	.quad	0x3fe636766f73a0e6              # double 0.69414827125458767
	.quad	0x3fea565b24074573              # double 0.82304150616452743
	.quad	0x3fe384f4f025bf02              # double 0.60998007682607658
	.quad	0x3fdfa8237386f5ee              # double 0.49463735849334867
	.quad	0x3fd43463feef5222              # double 0.31569766899090912
	.quad	0x3fdbcc09dc3ccf80              # double 0.43432852275440581
	.quad	0x3fd13e56757964a0              # double 0.26942979309166937
	.quad	0x3fc6951481f794c0              # double 0.17642456384706939
	.quad	0x3fbd7b617bc6d2f0              # double 0.11516389152422923
	.quad	0x3fed9c30d9b86a31              # double 0.92531626246938548
	.quad	0x3fe1a56effee6db0              # double 0.55144453035921082
	.quad	0x3fe6eedbfe57c12b              # double 0.71665763546301287
	.quad	0x3faefdf469987c90              # double 0.060531270876020504
	.quad	0x3fd8ce00e48ca444              # double 0.3875734550406984
	.quad	0x3feb0823ad072afe              # double 0.84474357409030154
	.quad	0x3fecbf93a92a2bba              # double 0.89838583984361908
	.quad	0x3fe5ff24ef87aed2              # double 0.68739554198460895
	.quad	0x3fec103aca8ae683              # double 0.87698115882012961
	.quad	0x3fd4c595665c4a68              # double 0.32455954548019017
	.quad	0x3fe79270d6ff1cfb              # double 0.73662607184897355
	.quad	0x3fdc0b99e02baef6              # double 0.43820807353652869
	.quad	0x3febb56381b0ac3a              # double 0.86589217500784987
	.quad	0x3feeea3640efc000              # double 0.96609032328524336
	.quad	0x3fe7619e3b39f742              # double 0.73066627090131697
	.quad	0x3fcbe920841c1408              # double 0.21805197191875458
	.quad	0x3fa3b45ae058bdf0              # double 0.038485374342027145
	.quad	0x3fd6ec8e8ccd07fe              # double 0.3581882834442921
	.quad	0x3fc5de471fdd5130              # double 0.17084588104138154
	.quad	0x3fe614752bc90e5a              # double 0.68999727775412656
	.quad	0x3fd69dd10a5f0dc0              # double 0.35338235867331136
	.quad	0x3fdfee59994c6ba2              # double 0.4989227292114099
	.quad	0x3fe2e2e4982cb3d9              # double 0.59019689294438671
	.quad	0x3fe3bb20701d61f0              # double 0.61659261605660554
	.quad	0x3fda73967363f5c0              # double 0.41330491322136353
	.quad	0x3fc97f20383a16f8              # double 0.1991920733018373
	.quad	0x3fed30ea8bf9a6e4              # double 0.91222121561915203
	.quad	0x3fee39054b5561cc              # double 0.94446053231791315
	.quad	0x3fd9db2e6d05f5ba              # double 0.40400276800923118
	.quad	0x3fd425f67528ffb0              # double 0.3148170608656029
	.quad	0x3fd6970798062228              # double 0.35296811910714831
	.quad	0x3fe4cac3c36cea1a              # double 0.6497515503791107
	.quad	0x3fd2aa2a93acd852              # double 0.29163612767604719
	.quad	0x3fea2a680a9330c0              # double 0.81767656388685594
	.quad	0x3f9e3c29ac4c1520              # double 0.029526377812563287
	.quad	0x3fd3f541596d2f32              # double 0.31184419377381112
	.quad	0x3fece1cb6cf96235              # double 0.90256282123579601
	.quad	0x3fdfdb59d2de17ce              # double 0.49776311485800029
	.quad	0x3fd6fac5fb9aa47a              # double 0.35905599184713533
	.quad	0x3fbc0f0ee7b6ed98              # double 0.10960477025121518
	.quad	0x3fe6cc872bc76022              # double 0.71246679831074666
	.quad	0x3fd54466144dad24              # double 0.3322997282291047
	.quad	0x3fd9437dc6093174              # double 0.39474434222645205
	.quad	0x3fda53c128e1014c              # double 0.41136197082598325
	.quad	0x3fc82545719c88c0              # double 0.18863742873606348
	.quad	0x3fd6621e7bcbf384              # double 0.34973871316451999
	.quad	0x3fd807c166be9f24              # double 0.37547335656789671
	.quad	0x3fdff43b660be82a              # double 0.49928173985938662
	.quad	0x3faabe60404b1630              # double 0.05223370346861278
	.quad	0x3fd4b67eea2a913a              # double 0.32363865726280816
	.quad	0x3fe0c64b81744275              # double 0.52420592578898939
	.quad	0x3fe854bf8d0b173c              # double 0.76034524486087873
	.quad	0x3feb27ddf4d15e3c              # double 0.84861657920823274
	.quad	0x3fe6611171dc288e              # double 0.69934913862495462
	.quad	0x3fc909ed8533e4bc              # double 0.19561547283209346
	.quad	0x3fca0e13f77fda8c              # double 0.20355462632115395
	.quad	0x3fbeea3691cf72e8              # double 0.12076130924055983
	.quad	0x3fe353f41ea483ec              # double 0.60399824128046253
	.quad	0x3fe75156c9784214              # double 0.72867907857477343
	.quad	0x3fe1973b647812f6              # double 0.54971093771800272
	.quad	0x3fe309ef8f39cd67              # double 0.59496286367213436
	.quad	0x3febab215c71b420              # double 0.8646399312543771
	.quad	0x3fdde5c5a1c2b570              # double 0.46714916989261379
	.quad	0x3fee7df49076dcde              # double 0.95287540641484347
	.quad	0x3fd626c3560a1444              # double 0.346115907690834
	.quad	0x3fe1b29e09258038              # double 0.55305387293265706
	.quad	0x3fe5609bd587d5b1              # double 0.66804305749126602
	.quad	0x3fe163e63dfa0ba8              # double 0.54344474892456152
	.quad	0x3fe081dea8608b22              # double 0.51585324178845249
	.quad	0x3fc649393d42b5cc              # double 0.17410960665931297
	.quad	0x3faf55c6fd9906e0              # double 0.061201303917653993
	.quad	0x3fe448afb5c2d3b6              # double 0.63387284755901052
	.quad	0x3fe496713f9de469              # double 0.64336454796933851
	.quad	0x3fb3df95a614aad8              # double 0.077630379721692733
	.quad	0x3fe2774804650306              # double 0.57706070764842887
	.quad	0x3fe8b3c313ff2e02              # double 0.77194360643028426
	.quad	0x3fbf7e1361b29878              # double 0.1230175126571299
	.quad	0x3fe34b9401fc2cf7              # double 0.60297584903437851
	.quad	0x3fe2135ee0316a09              # double 0.56486457622242014
	.quad	0x3feab505565d852a              # double 0.83459727161622266
	.quad	0x3fe99c54cbe67623              # double 0.80033340286508226
	.quad	0x3fe3946870e94c73              # double 0.61186620762818078
	.quad	0x3fe0cc267a61d23a              # double 0.52492069151646281
	.quad	0x3fdc6b793f48f0f0              # double 0.44405966930550189
	.quad	0x3fec69b778e745d3              # double 0.88790486921259981
	.quad	0x3f37e5c06115d000              # double 3.6464640387312564E-4
	.quad	0x3fdc18773a912256              # double 0.43899327010561728
	.quad	0x3fe8458527d7bacb              # double 0.7584863451173417
	.quad	0x3fe41d3663d79744              # double 0.62856597423954286
	.quad	0x3fe79f3dbb6f8c8d              # double 0.73818861588041929
	.quad	0x3fe19756eb9ca1da              # double 0.54972406404436502
	.quad	0x3fb907bd48d01bf8              # double 0.097774343754380655
	.quad	0x3fd33e1dfefad148              # double 0.30066633129469666
	.quad	0x3fe877854c2b6b42              # double 0.76458992840648698
	.quad	0x3fefa645b5441200              # double 0.98904691127296473
	.quad	0x3fe9bfba49cc3ccc              # double 0.80465425885804497
	.quad	0x3fc294524f3aaa20              # double 0.14515141361819506
	.quad	0x3fdbd5696bd84e96              # double 0.43490062267049134
	.quad	0x3fe4897d426d3667              # double 0.64178336118648083
	.quad	0x3fe98d911e7aae8b              # double 0.79853111222242157
	.quad	0x3fecfa59f5503363              # double 0.90556047356367875
	.quad	0x3fe2c649bb98b422              # double 0.58670508041325697
	.quad	0x3fe0bc0376d52a01              # double 0.52295087060457501
	.quad	0x3fde4a18ae388a1e              # double 0.473272485864216
	.quad	0x3fabe6f4954eaa20              # double 0.054496424890505546
	.quad	0x3fdc84df9554c0f2              # double 0.4456099470435354
	.quad	0x3fe885232a65723c              # double 0.76625211983225183
	.quad	0x3fedddd427b20dcd              # double 0.93332870247871258
	.quad	0x3feec1374740d4d3              # double 0.96108592907571688
	.quad	0x3fe29500e6f16771              # double 0.58068890672733009
	.quad	0x3f8ea7daa673c100              # double 0.014968593792645368
	.quad	0x3feadd459f5cff4a              # double 0.8395107376636386
	.quad	0x3fd9952aac1890e2              # double 0.3997294121384255
	.quad	0x3fe39c889bdd4a66              # double 0.61285810892361492
	.quad	0x3fc345a3c0338f34              # double 0.15056273350557492
	.quad	0x3feb74bdb020eb3b              # double 0.85800060653796295
	.quad	0x3fd8317e91d5164e              # double 0.37802089921419657
	.quad	0x3fa7d333e3bcbd60              # double 0.046533223676642477
	.quad	0x3fcc17530abd9df8              # double 0.21946180366943202
	.quad	0x3fdd1d0171a0fe52              # double 0.45489536377497075
	.quad	0x3feaba1506bfa52a              # double 0.83521510427559531
	.quad	0x3fc89acb72d31438              # double 0.19222395998636599
	.quad	0x3fe73adafb523680              # double 0.72593449674759825
	.quad	0x3fc1478c910fa7c0              # double 0.13499600489677555
	.quad	0x3fd643650d5ab10a              # double 0.3478634481823667
	.quad	0x3fd9fb209d911ac2              # double 0.40595260035881264
	.quad	0x3fdc39ef16c3a494              # double 0.44103600714749658
	.quad	0x3fe3a4a6e799f892              # double 0.6138491176095775
	.quad	0x3fba9b2ac3f754b0              # double 0.10393016132668964
	.quad	0x3fcaca70dbea4118              # double 0.20930300462760765
	.quad	0x3fe1764aed6d83a0              # double 0.54569002506842779
	.quad	0x3faed61fc24432e0              # double 0.060227386917267145
	.quad	0x3fd68977fd669f5e              # double 0.35214042421511305
	.quad	0x3fe0e85632f3696b              # double 0.52836141539891679
	.quad	0x3febc1bf06375991              # double 0.86740065778831099
	.quad	0x3fcdaedfbaa83f68              # double 0.23189922918436001
	.quad	0x3fd50b7a5a92346a              # double 0.32882555813632186
	.quad	0x3fdfb0a7c5662000              # double 0.49515718724478575
	.quad	0x3fe9ebb72b24e2ed              # double 0.81002386499957668
	.quad	0x3fe7e904237c18e1              # double 0.74719435625663888
	.quad	0x3feefb71029e73a6              # double 0.96819353591455548
	.quad	0x3fe0610222be0f18              # double 0.51184183869961242
	.quad	0x3fd2912aec4c9da6              # double 0.29011033130742658
	.quad	0x3fce8234d2dc7bc8              # double 0.23834858222923416
	.quad	0x3feb630a355097e1              # double 0.85583982861566821
	.quad	0x3fab046e2832a400              # double 0.05276817551322921
	.quad	0x3fead87ed321e628              # double 0.83892766224670812
	.quad	0x3fd84c70a2825d9c              # double 0.37966552610438398
	.quad	0x3fd2874a6beabc2e              # double 0.28950748957408023
	.quad	0x3fdc2d50ac4cc996              # double 0.44026581598441206
	.quad	0x3feb3fd3e872c0a5              # double 0.85154147529648994
	.quad	0x3febf1e937270691              # double 0.87328015109979351
	.quad	0x3fcc559b695f7fdc              # double 0.22136252064865303
	.quad	0x3f95a80dc1257800              # double 0.021148886598318484
	.quad	0x3fee067c9197efab              # double 0.9382918208716452
	.quad	0x3fe8a195bf0cce45              # double 0.76972472490746979
	.quad	0x3fd4205fb4ec2740              # double 0.31447594326219885
	.quad	0x3fc7c017835e0700              # double 0.18554967798632305
	.quad	0x3fb74935ed6950c0              # double 0.090960855924381967
	.quad	0x3fe25a650ae0d30c              # double 0.57353450894024283
	.quad	0x3feeea0ff07c0e48              # double 0.9660720536198335
	.quad	0x3fb8f624d3db4598              # double 0.097505857203279311
	.quad	0x3fee534c291d285a              # double 0.94766815214212419
	.quad	0x3fa8eb21feb6ba60              # double 0.048668920844069374
	.quad	0x3fef71603abd6ccf              # double 0.98258983109135467
	.quad	0x3fddaeba469c0048              # double 0.4637895288033218
	.quad	0x3febd3c9504a4d5d              # double 0.86960282975853043
	.quad	0x3fa230fb13ffe150              # double 0.035529943648671236
	.quad	0x3fc3cc98f91e3bd0              # double 0.15468132175416693
	.quad	0x3fcdc37c54ff13c4              # double 0.23252824926581017
	.quad	0x3fc88ee1fb0a9938              # double 0.19186043508416062
	.quad	0x3fe6c019c2b9f9fa              # double 0.71094978363527095
	.quad	0x3fe12f3e88872904              # double 0.5370171228944689
	.quad	0x3fda232844fdcc92              # double 0.40839583146516489
	.quad	0x3fe9718f93671330              # double 0.79511240758492896
	.quad	0x3fe64f15dc2baf34              # double 0.69715397836760085
	.quad	0x3fc1e811da69d32c              # double 0.13989470638957735
	.quad	0x3fd1b96707a77086              # double 0.276941068148297
	.quad	0x3fe24e0584647a75              # double 0.57202411516102691
	.quad	0x3fe63a743542a505              # double 0.69463549044044781
	.quad	0x3fd526031dc2e1d4              # double 0.33044507891056907
	.quad	0x3fda41f7ea3416a0              # double 0.41027639266426696
	.quad	0x3fc294feb39907cc              # double 0.14517196435377711
	.quad	0x3fd10d438374c726              # double 0.26643455350414269
	.quad	0x3fcef29a83691554              # double 0.24177867332961489
	.quad	0x3fdf59c7a485bbbe              # double 0.48985472742691261
	.quad	0x3fcf3695b9174dcc              # double 0.24385329759262075
	.quad	0x3fec64eb630ee20a              # double 0.88731927249233533
	.quad	0x3feaa27bbb1799bd              # double 0.83233439008181842
	.quad	0x3fe999074b9f952c              # double 0.79993023653211059
	.quad	0x3fea05429a86c09a              # double 0.81314211064274677
	.quad	0x3fe26028c9d9a7ca              # double 0.57423819946165477
	.quad	0x3fd3de654afd9d40              # double 0.31044895480450307
	.quad	0x3fd647ecf2e3ac8c              # double 0.34813998908675425
	.quad	0x3fe9d23265eadb88              # double 0.80690879731888376
	.quad	0x3fb9411e56819b18              # double 0.098649879569716936
	.quad	0x3fc875d57b0c1df0              # double 0.19109600551767825
	.quad	0x3fa284de73d15dc0              # double 0.036169959676665808
	.quad	0x3fdb4485c31b1b0a              # double 0.42605728200253223
	.quad	0x3fd36c92d1bc3ca2              # double 0.30350180131876858
	.quad	0x3fa7f5f6275a6b40              # double 0.04679841261277895
	.quad	0x3f9685b7dae97fe0              # double 0.02199446939118832
	.quad	0x3fd6a0f44562f8aa              # double 0.35357386375461408
	.quad	0x3fb481ffaa5dd8c0              # double 0.080108622640042704
	.quad	0x3fe1f131130c9a97              # double 0.56069234581521499
	.quad	0x3fee5c02bf02f5e6              # double 0.94873177821108068
	.quad	0x3fddcb940f9400f4              # double 0.46555043717673006
	.quad	0x3fa5bc1d96900f50              # double 0.042450832967033336
	.quad	0x3fe5d04fe5548c58              # double 0.68167872229640647
	.quad	0x3fe7cdd29ffa7400              # double 0.74387484784858771
	.quad	0x3fc877120818182c              # double 0.19113374133320471
	.quad	0x3fb5077b71f0f478              # double 0.082145419423754862
	.quad	0x3fb6a1d389260268              # double 0.088406773551477635
	.quad	0x3fa076613d5440d0              # double 0.032153166519607645
	.quad	0x3fe31bb3e6a69bef              # double 0.59713168190944355
	.quad	0x3fdb063ec47933c8              # double 0.42225617586956021
	.quad	0x3fde383d81055cd6              # double 0.47218263244344649
	.quad	0x3febebfde768996d              # double 0.87255759427061508
	.quad	0x3fddbca474242b74              # double 0.46463881818697605
	.quad	0x3fee6ce79de40754              # double 0.95079403722795996
	.quad	0x3fe64136e8ae1d6b              # double 0.69546075291957032
	.quad	0x3f896e9eba272a00              # double 0.012418022209108592
	.quad	0x3fe66b9ef08cae0a              # double 0.70063731176691246
	.quad	0x3fdc251b93df96f8              # double 0.43976487580071888
	.quad	0x3f917baa0fa17360              # double 0.017073304370899378
	.quad	0x3fe95de5f942fe80              # double 0.7927121990578172
	.quad	0x3fda27df74cb4be4              # double 0.40868364720989647
	.quad	0x3fdbf7d92d4cefb8              # double 0.43700246261482389
	.quad	0x3fe936d15c0b679a              # double 0.78794162728739825
	.quad	0x3fc7cef4f5ab7d08              # double 0.18600332255935137
	.quad	0x3fe48077b2f8b124              # double 0.64068207698213486
	.quad	0x3fecf0af41ee918c              # double 0.90438044431043485
	.quad	0x3fea25d38d22f80d              # double 0.81711747709027949
	.quad	0x3fc8444dc98f1a98              # double 0.1895844682860186
	.quad	0x3fef891176dcc2ed              # double 0.98548196044256786
	.quad	0x3f900c5d7f52fbe0              # double 0.015672169586419815
	.quad	0x3fe7486362f52392              # double 0.72758645370150732
	.quad	0x3fde8d3e1256c592              # double 0.47737075606263446
	.quad	0x3fdc2bc4463faeb2              # double 0.44017130718450936
	.quad	0x3fe7a09fe76e0404              # double 0.73835749817965324
	.quad	0x3fedc198b167aa1f              # double 0.92988238000299706
	.quad	0x3fefb804f41a4169              # double 0.99121329952508319
	.quad	0x3fe1688adab6fd52              # double 0.54401152341589865
	.quad	0x3fdca8b339c9a40a              # double 0.44779663699461081
	.quad	0x3fe6d8c5c3e8e81f              # double 0.71396148933058956
	.quad	0x3fd5ebeeab926de4              # double 0.34252516512944298
	.quad	0x3f759765e5bc8080              # double 0.0052713375442011712
	.quad	0x3fc58dc397c7c628              # double 0.16838879500532866
	.quad	0x3fe39646a59863bd              # double 0.61209423392130413
	.quad	0x3fd77caf9f613d3a              # double 0.36698523106038616
	.quad	0x3fd4c8e3b708cf74              # double 0.32476132273153913
	.quad	0x3fdc67dbd05ac9e6              # double 0.443839028807956
	.quad	0x3fee63c47c189aa1              # double 0.94967865216752412
	.quad	0x3fd67988eb9297be              # double 0.35116789822711414
	.quad	0x3feb7185451606a8              # double 0.85760749333731656
	.quad	0x3fa11a420df99de0              # double 0.033403457838001804
	.quad	0x3feadda7dd5e0be0              # double 0.83955758319677542
	.quad	0x3fe982f356c12d6d              # double 0.79723517364747709
	.quad	0x3fdcf87be31077d2              # double 0.45266625570536434
	.quad	0x3fd9b72690616d64              # double 0.40180362796464508
	.quad	0x3fb8f49b2cd43458              # double 0.097482393688737345
	.quad	0x3fca7c4f00e689a4              # double 0.20691859764072007
	.quad	0x3fd7cad05032b8f6              # double 0.37175376731728649
	.quad	0x3fbfe25f357a9a58              # double 0.12454791122090947
	.quad	0x3fb86d52a79c9bb0              # double 0.095418134613835858
	.quad	0x3fe2d160d6a1cb91              # double 0.58805887146296432
	.quad	0x3fa2d50be4d47bb0              # double 0.036781665500022043
	.quad	0x3fb6d1ffe46f50a0              # double 0.089141839285107327
	.quad	0x3fdfd173b6119744              # double 0.49715893535755051
	.quad	0x3fd7ed08dd56b676              # double 0.37384244551763091
	.quad	0x3fcf8f5197a5eb08              # double 0.24656124024098625
	.quad	0x3fcd7940c391a3a8              # double 0.23026284741652359
	.quad	0x3fdb5e16e9837c0c              # double 0.42761776737273816
	.quad	0x3fd4be046b013ee2              # double 0.32409773301786349
	.quad	0x3fd2475cd4e11330              # double 0.28560562886223106
	.quad	0x3fe83c1d978ada0a              # double 0.75733832929728462
	.quad	0x3fee4d0bf28e19d0              # double 0.94690511106528596
	.quad	0x3fea6b7164c9e1a1              # double 0.82561559376977212
	.quad	0x3fece630a6b0a867              # double 0.90309937054304334
	.quad	0x3fd56daab527c706              # double 0.33481853190379274
	.quad	0x3fede6c5ec12c077              # double 0.93442054851585865
	.quad	0x3feae8a2b149d263              # double 0.84089789034494478
	.quad	0x3fe02bf4b99dbc31              # double 0.50536571744112824
	.quad	0x3fc891794a05714c              # double 0.19193950762099588
	.quad	0x3fedc96df9bef093              # double 0.93083857325065578
	.quad	0x3fe8d72192589367              # double 0.77626112540438619
	.quad	0x3fe64616d7c3d930              # double 0.69605581418617213
	.quad	0x3fd6b767aadd8936              # double 0.35494414983817835
	.quad	0x3feb224124e7c967              # double 0.84793145378197898
	.quad	0x3fe0850ce8f9623e              # double 0.51624150755657872
	.quad	0x3fe751c3253247a0              # double 0.72873074784205372
	.quad	0x3fc93da4f98eac48              # double 0.19719373879829249
	.quad	0x3fd333f98889c662              # double 0.30004728635603872
	.quad	0x3fd35028c9a733a0              # double 0.30176753704727766
	.quad	0x3fb52b57cdd667f8              # double 0.082692611459066145
	.quad	0x3fd6426a042871ae              # double 0.3478035965543097
	.quad	0x3fc684dcff978af0              # double 0.17592966537548405
	.quad	0x3fe8df4b9189f38a              # double 0.77725771356163986
	.quad	0x3fc6c55e81c3b560              # double 0.17789822899014052
	.quad	0x3fe94ea754745fca              # double 0.79085127348934603
	.quad	0x3fe92dd0ab61bbe8              # double 0.78684266541483527
	.quad	0x3fd16d3b5f0a4d24              # double 0.2722919872405376
	.quad	0x3fe39e1520209146              # double 0.6130471827969266
	.quad	0x3fdd5d67075bb7ce              # double 0.45882583349782358
	.quad	0x3fee0c72be236e04              # double 0.93901955734639885
	.quad	0x3fea521fc90a38c9              # double 0.8225249220429528
	.quad	0x3fdfe1de5ed9a07a              # double 0.49816092741685447
	.quad	0x3fbf0dd5a42f53e0              # double 0.12130484827441945
	.quad	0x3fed1d9043983a72              # double 0.90985882951811292
	.quad	0x3fed28431d79e515              # double 0.91116481549321071
	.quad	0x3fe0c8c5c52ddf93              # double 0.52450836669503287
	.quad	0x3fdb7fc3afc32586              # double 0.42967312015806447
	.quad	0x3fdbf9dc3dbac112              # double 0.43712526348373715
	.quad	0x3fe7c6be529899d2              # double 0.74301067478227822
	.quad	0x3fea44868bd615d1              # double 0.82086493789454995
	.quad	0x3fe33f29091502ba              # double 0.60145999692766527
	.quad	0x3fe188915733b806              # double 0.54792086631437154
	.quad	0x3fea909da4813f64              # double 0.83015329484804256
	.quad	0x3f70f3fb40e50780              # double 0.0041389288510930156
	.quad	0x3f94059d0802c380              # double 0.019552663434925233
	.quad	0x3fea8da24f900ac1              # double 0.82978930987913924
	.quad	0x3fbaaaee9673c720              # double 0.10417071507597742
	.quad	0x3f9e587b346ffc40              # double 0.029634404254462732
	.quad	0x3fdcbddf042b3880              # double 0.44908881575691595
	.quad	0x3fe7dfd6e5e1ac0c              # double 0.74607415102707497
	.quad	0x3fd7c62353da2e3c              # double 0.37146838368127866
	.quad	0x3fe864d50325a0fb              # double 0.76230860342641849
	.quad	0x3fdd5490a51f9636              # double 0.45828643918352741
	.quad	0x3fd7f4b00f7de848              # double 0.37430955422280876
	.quad	0x3fba3ba5319e2d90              # double 0.10247261487363901
	.quad	0x3fee50ba9941969f              # double 0.94735460217335177
	.quad	0x3fdeeb29c1ad3fa6              # double 0.4831032172560249
	.quad	0x3fe3960a01876710              # double 0.61206531809441067
	.quad	0x3fe9c9f3f683220f              # double 0.80590246340676852
	.quad	0x3fe3595fa3c9dec7              # double 0.60465986242248781
	.quad	0x3fa9e8c913675d70              # double 0.050604137056945997
	.quad	0x3fea2cceeb2a4e19              # double 0.8179697602340098
	.quad	0x3fdebabe0972bbfe              # double 0.48014784739183358
	.quad	0x3fe4a565d27343a2              # double 0.64519015410961722
	.quad	0x3fc98d5144f501dc              # double 0.19962516657871177
	.quad	0x3fc0e2b66d4d5250              # double 0.13191871964467561
	.quad	0x3fe7ee53be54e5c3              # double 0.74784266637941987
	.quad	0x3fe47f7192400ae7              # double 0.64055708469853989
	.quad	0x3fe631f4e85427c4              # double 0.69359822632508683
	.quad	0x3fd94b2e760d674e              # double 0.39521371391821425
	.quad	0x3fe449fd986e52fa              # double 0.63403205653830175
	.quad	0x3fd9b84be0a291ce              # double 0.40187355935111391
	.quad	0x3fe601078a15eea3              # double 0.68762566537721559
	.quad	0x3fe441b9cb872e5a              # double 0.63302316428730454
	.quad	0x3fdffdb801115ec6              # double 0.49986076454431971
	.quad	0x3fc3f975e7746f24              # double 0.15605043221955228
	.quad	0x3fcd5b2d7a6a01bc              # double 0.22934502103090704
	.quad	0x3fdf4975a3a5d37c              # double 0.48885861378885642
	.quad	0x3fe022d822c88f93              # double 0.5042534522403791
	.quad	0x3fc0c1d70028c8ec              # double 0.13091552264956563
	.quad	0x3fd46ddd78dfc044              # double 0.31920563510994193
	.quad	0x3fe07ffec32e2907              # double 0.51562440987734781
	.quad	0x3fe57e4e6932d02f              # double 0.67166824862079533
	.quad	0x3fe7eef04c47b06d              # double 0.7479173173756074
	.quad	0x3fc55528f74278b4              # double 0.16666137765145594
	.quad	0x3fd33b65a2a67efa              # double 0.30050030597520527
	.quad	0x3fef39d1323e3a68              # double 0.97580776036359129
	.quad	0x3fe9bd742bd68d0c              # double 0.8043766838276567
	.quad	0x3f9b730d15d8b880              # double 0.026806072672279857
	.quad	0x3fed51e002c6f2a7              # double 0.916244512008764
	.quad	0x3fdc12c01bb20aec              # double 0.43864443497311245
	.quad	0x3fbf3ae0e56a1c48              # double 0.121992164620779
	.quad	0x3fe693afb34aaea0              # double 0.70552811639705126
	.quad	0x3fdeebefb86b3fb2              # double 0.4831504155126779
	.quad	0x3fe45133f8a2e610              # double 0.63491247712880927
	.quad	0x3fe2898eadba8a7f              # double 0.57929166728384007
	.quad	0x3fe95f1831c1556d              # double 0.79285821645559695
	.quad	0x3fe7a4d3317756dc              # double 0.73887023602830082
	.quad	0x3fcaae3470be1668              # double 0.20844130997663801
	.quad	0x3fd8dcf491431dcc              # double 0.38848604379424212
	.quad	0x3fedba3a4194fd2e              # double 0.92898285683614801
	.quad	0x3fbafba0dd2a2850              # double 0.10540204429176581
	.quad	0x3fed55a4a68173be              # double 0.91670448799742821
	.quad	0x3fcf48dd376c1fa8              # double 0.24441113668603731
	.quad	0x3fe7fddbd44767f7              # double 0.74973861180046597
	.quad	0x3fd851580e66a388              # double 0.37996484190312474
	.quad	0x3fb30ebc66e01598              # double 0.074443602672621956
	.quad	0x3fecab9bd145605a              # double 0.89594832299463723
	.quad	0x3fe06ac094e6198c              # double 0.51303128320505342
	.quad	0x3fc24ba9b8ce0114              # double 0.14293405078570542
	.quad	0x3fb1a4597bfaf4b0              # double 0.068914025086047159
	.quad	0x3fdec21d4e1c0ae8              # double 0.48059780719647316
	.quad	0x3fe25cd269116d4f              # double 0.57383080025776134
	.quad	0x3feb7702ec3f7ef5              # double 0.85827776090806529
	.quad	0x3fe5673e3e237184              # double 0.66885292183319267
	.quad	0x3fbb536a5f8fc1d0              # double 0.10674156983419114
	.quad	0x3fba9a8d70a74bf8              # double 0.10392078399972593
	.quad	0x3feec4e5ba5c6897              # double 0.96153532408358699
	.quad	0x3fd950183e66cb5a              # double 0.3955135926618617
	.quad	0x3fce275da2194f14              # double 0.23557634749396839
	.quad	0x3fd62f59321c49a0              # double 0.34663991826632845
	.quad	0x3fc2dad0f15f9598              # double 0.14730273996171372
	.quad	0x3fc1f22f2b1b150c              # double 0.1402033768155565
	.quad	0x3febdd224b4271b3              # double 0.87074389170770983
	.quad	0x3fa831e2a5888fa0              # double 0.04725559492751974
	.quad	0x3fc9da3566667bc4              # double 0.20197169780746382
	.quad	0x3fb0b9df4235cd10              # double 0.065336183228101641
	.quad	0x3fe174fb62815358              # double 0.54553002585690091
	.quad	0x3fe8267cc62a4c5b              # double 0.75469816879411711
	.quad	0x3fe59a59700a59a6              # double 0.67509147532364433
	.quad	0x3fecfd2cd4b3cfa8              # double 0.90590516608653093
	.quad	0x3fee5b55c51f58e7              # double 0.94864929676512311
	.quad	0x3fd0041dd59f4ae0              # double 0.25025125371500501
	.quad	0x3fa9e2ba7fa011f0              # double 0.050557926253563923
	.quad	0x3fdbf87220fc498c              # double 0.43703892918815579
	.quad	0x3fe62eda55f93618              # double 0.69321934501357685
	.quad	0x3f86632d61481440              # double 0.010931353122041298
	.quad	0x3fecd6314e5ba8b7              # double 0.9011465578489809
	.quad	0x3fe889a31ccced0f              # double 0.76680141091438425
	.quad	0x3fd1e98fb20468fa              # double 0.27988045105452353
	.quad	0x3fe42a5f93df491b              # double 0.63017252808848256
	.quad	0x3fe2054a093610ce              # double 0.5631456546693927
	.quad	0x3fd5a54866a329c4              # double 0.33821306250743199
	.quad	0x3fca8b51b5ba2648              # double 0.20737668393512565
	.quad	0x3fed41b097de3b57              # double 0.91426877652871041
	.quad	0x3fea788dbc835cfd              # double 0.82721602267238803
	.quad	0x3fd9ad3de2a8e4c6              # double 0.40119883665790856
	.quad	0x3fea25f2ae05eeab              # double 0.81713232029820426
	.quad	0x3fcdee875b6d3e6c              # double 0.23384181942172988
	.quad	0x3fdbb0c9b09d4ae6              # double 0.43266527411939959
	.quad	0x3fc47b8f552af05c              # double 0.16002074869709559
	.quad	0x3febfba018ae350a              # double 0.87446598835382017
	.quad	0x3fd55db8e32b7e8e              # double 0.33384535011826066
	.quad	0x3fe204abe342b09a              # double 0.56307024370973413
	.quad	0x3fdf4686b6e5277a              # double 0.48867957936146633
	.quad	0x3fe78452e8927730              # double 0.7349028150963246
	.quad	0x3fe07f296e431415              # double 0.51552268539001267
	.quad	0x3fead16b70dd3de8              # double 0.83806392711443056
	.quad	0x3fe66f9947dd64ae              # double 0.7011228946313588
	.quad	0x3fc7b204084caf48              # double 0.18512010960818714
	.quad	0x3fe60f801863d8d2              # double 0.68939213527371579
	.quad	0x3fc2ae2f3214264c              # double 0.14594068475007516
	.quad	0x3fd9101d9eabe220              # double 0.39160862441306854
	.quad	0x3fecf8f45580238a              # double 0.9053899450237719
	.quad	0x3f4fb53f732fac00              # double 9.6765134946730224E-4
	.quad	0x3fe86a2f394847f0              # double 0.76296197116812259
	.quad	0x3feed6dc1fdffe50              # double 0.96372801042157086
	.quad	0x3fb512558eb9f828              # double 0.082311007829020455
	.quad	0x3fb8fca04c5e2d10              # double 0.097604769367695576
	.quad	0x3fe44856f66cd859              # double 0.63383052949826457
	.quad	0x3fd7caa90553b116              # double 0.37174439926344982
	.quad	0x3fd03ca1c603d6ee              # double 0.2537006791820734
	.quad	0x3feced4bb868d3af              # double 0.90396677033878869
	.quad	0x3fe12209e1271fb4              # double 0.53540510153924581
	.quad	0x3fb97bc14e385348              # double 0.099544602963146933
	.quad	0x3fe987b46043a806              # double 0.79781550218217556
	.quad	0x3fe9bd1b9cf45aab              # double 0.80433445601632536
	.quad	0x3fdaa91749cbc8e8              # double 0.41657049376148203
	.quad	0x3fe72b74c4f711f9              # double 0.72405470342397316
	.quad	0x3fe7a2c18e8a06c0              # double 0.73861768569641839
	.quad	0x3fe409db4af89f83              # double 0.62620319979485861
	.quad	0x3fe126660eca1a94              # double 0.53593733681266764
	.quad	0x3fe390d1fab7900c              # double 0.61142825096294606
	.quad	0x3fef1647737f64ab              # double 0.97146961744433235
	.quad	0x3fd828f8e567af46              # double 0.37750074770768938
	.quad	0x3fedc7785d24d227              # double 0.93059938614039062
	.quad	0x3fd4f4843580ee9e              # double 0.3274240992065901
	.quad	0x3fb34b7def0e13e0              # double 0.075370665419611793
	.quad	0x3fe21663f5a94165              # double 0.56523321133321913
	.quad	0x3fdbcb865b5cf316              # double 0.43429716989685241
	.quad	0x3fe99977b50bdc52              # double 0.7999838386593956
	.quad	0x3fe731f9b1312192              # double 0.72485050781056004
	.quad	0x3fd53e6d11b91eb2              # double 0.33193518381856812
	.quad	0x3fa35ed4c4c6daf0              # double 0.037832879086115656
	.quad	0x3fbed196fdb99518              # double 0.12038558668571786
	.quad	0x3fee3c029b43e808              # double 0.94482546162839842
	.quad	0x3feaa158efd051c1              # double 0.83219572867033531
	.quad	0x3feb4ce9609991fa              # double 0.85313862673916607
	.quad	0x3fef01e00b961078              # double 0.96897890341689585
	.quad	0x3feea60e89b99fb2              # double 0.95777060412819126
	.quad	0x3fed710f2e84cee2              # double 0.92005118451785628
	.quad	0x3fe1e1c437c96633              # double 0.55880938430636318
	.quad	0x3fdcd0c0742e6dc0              # double 0.45024119706951282
	.quad	0x3fd5d0193d7b1c62              # double 0.34082633022302933
	.quad	0x3fe5350fa3ecaa44              # double 0.66272718445299761
	.quad	0x3fd8f3265dd738a0              # double 0.38984069027072543
	.quad	0x3fd87dab9df54f82              # double 0.38267031121835526
	.quad	0x3fb3a2b7258a6fa8              # double 0.076701590218759663
	.quad	0x3fd7c1f488aec4f2              # double 0.371213086585228
	.quad	0x3fd427395b721946              # double 0.31489404611820182
	.quad	0x3fe76040410fbef1              # double 0.73049938876462595
	.quad	0x3fee499e08d56442              # double 0.94648648953728576
	.quad	0x3fe8d900db0356ee              # double 0.77648966575608624
	.quad	0x3feac6ef7faf9566              # double 0.83678412378928324
	.quad	0x3fe73ce6e4a58944              # double 0.72618431718391507
	.quad	0x3f94b1532c61cd00              # double 0.020207690795769118
	.quad	0x3fd234b7e2300960              # double 0.28446766937863366
	.quad	0x3fea0a21a99ae15f              # double 0.81373675466515383
	.quad	0x3fe2201ee9b2a243              # double 0.56642099041079808
	.quad	0x3fecb456c8410d5b              # double 0.89701403724795215
	.quad	0x3fe1dc2f09abb5e7              # double 0.55812789810960062
	.quad	0x3fde3e5c40b28ea8              # double 0.47255617445100961
	.quad	0x3fe36c37c7f67329              # double 0.60696019225324449
	.quad	0x3fd871e8cdd2033c              # double 0.38195247745175087
	.quad	0x3fd12b4f97040bbc              # double 0.26826848743092646
	.quad	0x3fc1d0a5cc980d90              # double 0.13917992105426125
	.quad	0x3fbc0a3db398dee0              # double 0.10953126558967652
	.quad	0x3feffe6951a215d0              # double 0.9998060793301935
	.quad	0x3fd736f8ae79c28c              # double 0.36273018873820528
	.quad	0x3fe3be489127542e              # double 0.61697796202009214
	.quad	0x3fe5eab77139af5f              # double 0.68490192522356697
	.quad	0x3fd7d36f6e3309a8              # double 0.37227998506218762
	.quad	0x3feeb849539f89bd              # double 0.95999590237288823
	.quad	0x3fe562f773002765              # double 0.66833088360838799
	.quad	0x3fcd23de5a26547c              # double 0.22765712167589303
	.quad	0x3fc3ba2ad17b2520              # double 0.15411887386861967
	.quad	0x3fec8dc2ae511353              # double 0.89230474516134917
	.quad	0x3fe848d738e5967d              # double 0.75889168846761346
	.quad	0x3fec791371e09348              # double 0.88977977983140821
	.quad	0x3fd612333743c668              # double 0.34486084362933989
	.quad	0x3fea735d1fb951aa              # double 0.82658249088358571
	.quad	0x3fd9d8f8538e1bf4              # double 0.40386779937438111
	.quad	0x3fe6e4a4bfe78a14              # double 0.71541058999383944
	.quad	0x3fe18b15e6e425a8              # double 0.54822821708619518
	.quad	0x3fe4deb1256ba57a              # double 0.65218407925310307
	.quad	0x3fcca4056140f97c              # double 0.22375552414628064
	.quad	0x3fe1ab6a1e380196              # double 0.55217462446312271
	.quad	0x3fbcc75b57b42d58              # double 0.1124169434662482
	.quad	0x3fec84a65dac7c18              # double 0.89119261069925226
	.quad	0x3fe7fb9eff6cc729              # double 0.74946546447447304
	.quad	0x3fe70d88235ef468              # double 0.72040182979948231
	.quad	0x3feb245cf0acf15a              # double 0.84818884856171484
	.quad	0x3f9222addbd4bda0              # double 0.017710415403767166
	.quad	0x3fe9031c9bbaa7bf              # double 0.78162985244602357
	.quad	0x3fe78d437a21cbe5              # double 0.73599408964070945
	.quad	0x3fb36712f027a9a0              # double 0.075791534072470856
	.quad	0x3fe279f69044245a              # double 0.57738807847011775
	.quad	0x3fbeb9d54b1de0a0              # double 0.12002308925537131
	.quad	0x3fe0b757cd625a18              # double 0.52238073457812373
	.quad	0x3fde6d363a7776e4              # double 0.47541576108583983
	.quad	0x3fe2ac16a2aa7eec              # double 0.58350688715651478
	.quad	0x3fd9cce081312ed2              # double 0.40312969795625719
	.quad	0x3fe57558f3e4e7b6              # double 0.6705746425206971
	.quad	0x3fe75d87461920a8              # double 0.73016704264684495
	.quad	0x3fef88f697717e37              # double 0.98546914652610595
	.quad	0x3fc0c2cfe18c1004              # double 0.13094519150774897
	.quad	0x3fecc85cd6b889ba              # double 0.89945833146730725
	.quad	0x3fcd82ed3db263e4              # double 0.23055806648770194
	.quad	0x3fe00b1653711bca              # double 0.50135341927750088
	.quad	0x3fc583c96503f8c0              # double 0.16808431084058917
	.quad	0x3fdebcef3d07d18e              # double 0.48028164825452613
	.quad	0x3fce4f9dbc173b98              # double 0.23680469211691668
	.quad	0x3fb769cf54ef6498              # double 0.091458280788531687
	.quad	0x3fd7edc39e73d3c2              # double 0.37388697122451842
	.quad	0x3fe00090df0449e2              # double 0.50006907995185323
	.quad	0x3fdfed3b23379036              # double 0.4988544315258453
	.quad	0x3fa5b36bc23ab1c0              # double 0.042384498080852762
	.quad	0x3fea7d625025fe10              # double 0.82780566839204717
	.quad	0x3fbe189dd15eeeb8              # double 0.11756311761467486
	.quad	0x3fd6e8b14d548bda              # double 0.35795242835791685
	.quad	0x3fe9835711ab149e              # double 0.79728272868000594
	.quad	0x3fd5f3944b58f772              # double 0.34299189909130867
	.quad	0x3fde191bd57f7974              # double 0.4702825150433434
	.quad	0x3fe9449a372edf3f              # double 0.78962431695888557
	.quad	0x3fc41b383c963acc              # double 0.15708067854253327
	.quad	0x3fd2aa5a7d89c2ee              # double 0.29164755115111418
	.quad	0x3fd607ff48f583b4              # double 0.34423811077982269
	.quad	0x3fd2e63bc90d5e5e              # double 0.29530233987813925
	.quad	0x3fea9dfba5b79860              # double 0.8317850338614896
	.quad	0x3fe33c1fc7f5953a              # double 0.60108937315513988
	.quad	0x3fd9f3645af08376              # double 0.40548046952067496
	.quad	0x3fe0c10cc0484141              # double 0.52356565051199067
	.quad	0x3fbc27ab021c0050              # double 0.10998028565882234
	.quad	0x3fd5901cfde6b304              # double 0.33692097468410531
	.quad	0x3fd120c7249f3590              # double 0.2676256044040537
	.quad	0x3fef92e57107f215              # double 0.98668167187094246
	.quad	0x3fe29db6f40e882d              # double 0.58175227801644314
	.quad	0x3fdd9e57745f17ec              # double 0.46278940548324843
	.quad	0x3fe0b1df7519491d              # double 0.5217129981122387
	.quad	0x3fd215a9eff0d7b4              # double 0.28257225448339374
	.quad	0x3fc5c4c2d3196068              # double 0.17006717021536422
	.quad	0x3fe661fc303ee471              # double 0.69946107314093642
	.quad	0x3fa6b38c6df03d40              # double 0.044338596744746273
	.quad	0x3fbd8f637f235598              # double 0.11546918729739841
	.quad	0x3fe040d8d56f2e25              # double 0.50791589437853146
	.quad	0x3fcd5d9afe04a82c              # double 0.22941911128265369
	.quad	0x3fc156ce641bf130              # double 0.13546161544935265
	.quad	0x3fee3ac09ad52acc              # double 0.94467191925772331
	.quad	0x3fec95b5877cd01e              # double 0.8932750364533637
	.quad	0x3fe2d1acb7c28161              # double 0.58809505358298619
	.quad	0x3fc29e23901b88cc              # double 0.14545101677419436
	.quad	0x3fc017771c4e0744              # double 0.12571610338278039
	.quad	0x3fd9e8af9d2a49a0              # double 0.40482702587282837
	.quad	0x3fca25f4fa6aae88              # double 0.20428335406665021
	.quad	0x3fc41748c540f000              # double 0.15696057921911688
	.quad	0x3fe924ef536a17a5              # double 0.78575865070228146
	.quad	0x3fda3aad9ba9d37e              # double 0.40983143044950754
	.quad	0x3fe6289607be44f7              # double 0.69245435249663856
	.quad	0x3fdcae451ff3a74e              # double 0.44813659782686421
	.quad	0x3fe26de030e7a7cc              # double 0.57591256667841995
	.quad	0x3fc490ad516c8d98              # double 0.1606651923731135
	.quad	0x3fe14b9b5654304f              # double 0.54047934399705777
	.quad	0x3fd378318bb9cbe6              # double 0.3042110313901375
	.quad	0x3fc019e91c74bdc0              # double 0.1257907284684574
	.quad	0x3fe427621fe06e46              # double 0.6298075316039522
	.quad	0x3fbe48511ca87900              # double 0.11829096746120982
	.quad	0x3fe9709b912d4bdc              # double 0.79499605517264226
	.quad	0x3fe9c9a7b6397f94              # double 0.80586610403769265
	.quad	0x3f758fffe6500400              # double 0.0052642818527610657
	.quad	0x3fe8879e1e0e05f2              # double 0.76655488843988295
	.quad	0x3fe90451767df6da              # double 0.78177712576845271
	.quad	0x3fe53de34705f7f6              # double 0.66380466338864497
	.quad	0x3fe8e909b65f823d              # double 0.77844701404325856
	.quad	0x3fda106301e426d2              # double 0.40725016770066447
	.quad	0x3feda47bb5be60cf              # double 0.92632852074441441
	.quad	0x3fea6bde995e7fd6              # double 0.82566766695890226
	.quad	0x3fd4a1908c107aac              # double 0.322361122876752
	.quad	0x3fb4882787028fd0              # double 0.080202551328113047
	.quad	0x3fbf2b9250ef3bb0              # double 0.12175859905185749
	.quad	0x3fc6d5c05d8cdb9c              # double 0.1783981758869374
	.quad	0x3fd2a631b73a2e28              # double 0.29139368909156582
	.quad	0x3fdaa4cd37de8cb4              # double 0.41630869346608823
	.quad	0x3f714929d989dc80              # double 0.004220164752602007
	.quad	0x3fb8746a07fc6dd0              # double 0.095526339482993494
	.quad	0x3fd76a07139aef30              # double 0.36584641375133042
	.quad	0x3fec403a64d456dd              # double 0.88284034436466252
	.quad	0x3fc41c1cab01107c              # double 0.15710790967762367
	.quad	0x3fdbc589731022a2              # double 0.43393169628738282
	.quad	0x3fe5735de5e966cf              # double 0.67033286003717218
	.quad	0x3fe527a664396e90              # double 0.6610900838381486
	.quad	0x3fe1034c11d8f211              # double 0.53165248380497776
	.quad	0x3fe67d0e977fb768              # double 0.70276574697139171
	.quad	0x3f9824dc7932ffe0              # double 0.023578114411748063
	.quad	0x3fe83edef1abee2f              # double 0.7576746673725604
	.quad	0x3fe39b5efd5c4838              # double 0.61271619305103453
	.quad	0x3fe7be570049ed2c              # double 0.74198484474564941
	.quad	0x3fed41de99a3e227              # double 0.91429071433873765
	.quad	0x3fd68c2587b85608              # double 0.35230386976158501
	.quad	0x3fe8499a566d6514              # double 0.7589847267182983
	.quad	0x3fe8ac515e4018ef              # double 0.77103489311482842
	.quad	0x3fe89c8d49e7d3ea              # double 0.7691103404491717
	.quad	0x3fd2e65b32c5fba4              # double 0.29530982931458483
	.quad	0x3fe8202d810f42c6              # double 0.75392794806438057
	.quad	0x3fefbd590dfde829              # double 0.99186375363138268
	.quad	0x3fe607302ade1049              # double 0.68837746021791546
	.quad	0x3fdcd04c27b0c05a              # double 0.45021346927660988
	.quad	0x3fce10a752474178              # double 0.23488322751519397
	.quad	0x3fe4f8ea1ccfb871              # double 0.65538507106044908
	.quad	0x3fd1796a92f50438              # double 0.27303566314009542
	.quad	0x3fe06c0953a81dc5              # double 0.51318804110717819
	.quad	0x3fd62a7d70fc0020              # double 0.34634338410978849
	.quad	0x3fec1e0837148c10              # double 0.8786660266672488
	.quad	0x3fa1c7a00c61a280              # double 0.034726144324683794
	.quad	0x3fe05c3a20c7672f              # double 0.51125818636066878
	.quad	0x3f96cbbad8c0c880              # double 0.022261542777592513
	.quad	0x3fe43b2401cf6649              # double 0.63221931794687081
	.quad	0x3fe17b7ed6269576              # double 0.54632512880622985
	.quad	0x3fef0e52aff40b04              # double 0.97049841276052051
	.quad	0x3fd3cd6fc8c81c50              # double 0.3094138584860433
	.quad	0x3fc5891979a36554              # double 0.16824644507759479
	.quad	0x3fe1e3aebe437a94              # double 0.55904328499657874
	.quad	0x3fd66ec6e4e69316              # double 0.35051128724653446
	.quad	0x3fd43fad57f7070e              # double 0.31638654318167958
	.quad	0x3fc11f33591786b0              # double 0.13376466608229043
	.quad	0x3fef814bfdaa2737              # double 0.98453330558661533
	.quad	0x3fe13253107527af              # double 0.53739312376386816
	.quad	0x3fb01904b745b3f8              # double 0.062881750816543902
	.quad	0x3fe1c94adff00159              # double 0.55582183587834344
	.quad	0x3fb7064085440d20              # double 0.0899391484600085
	.quad	0x3fc648683bce6bcc              # double 0.17408469124060699
	.quad	0x3fdd35fc10147f46              # double 0.45641995973891303
	.quad	0x3fd112fa2b1fc418              # double 0.2667832776197101
	.quad	0x3fc0e35ac83d1244              # double 0.13193831231378017
	.quad	0x3fe1295fc4ac7381              # double 0.53630054867572607
	.quad	0x3fd4aa4676fba8ec              # double 0.32289277667463412
	.quad	0x3fed2d0f2a5bd832              # double 0.9117503955192261
	.quad	0x3fbf11d41e51b018              # double 0.12136579265796887
	.quad	0x3fdbc987d7886302              # double 0.43417545364495436
	.quad	0x3fe89e0efeff92d7              # double 0.76929426006662538
	.quad	0x3fd86906c3d792ee              # double 0.3814103043098801
	.quad	0x3fd43155732b6a8e              # double 0.31551109549551704
	.quad	0x3fee1f6126363aa7              # double 0.94133050406693008
	.quad	0x3fe5690abb48389b              # double 0.66907250002420271
	.quad	0x3fd3977b9e21a764              # double 0.30612078135037835
	.quad	0x3fe43b776b23f556              # double 0.63225909162398852
	.quad	0x3fe0d803c35b23ac              # double 0.52636898189040471
	.quad	0x3fefe1044250ad5a              # double 0.99621785118271622
	.quad	0x3f72f15eeeb9e100              # double 0.0046247204114637785
	.quad	0x3fd0e315578c631e              # double 0.2638600687947007
	.quad	0x3fcc1739bc9a40f8              # double 0.21945878705128741
	.quad	0x3f985a1348afc200              # double 0.023781110106883219
	.quad	0x3fe971943bbf4ae6              # double 0.79511462849981451
	.quad	0x3fcf1a74ea859844              # double 0.24299489451658662
	.quad	0x3fb8c9628d54af50              # double 0.096822890762891633
	.quad	0x3feafe078b6d1dc4              # double 0.84350945693670853
	.quad	0x3fecaf48812310ba              # double 0.89639687749924879
	.quad	0x3fd05edc6d51977c              # double 0.25578985858589198
	.quad	0x3fba3598fa2a74d0              # double 0.10238033397259305
	.quad	0x3fed857695f14088              # double 0.92254189763663508
	.quad	0x3fe76b8aa9c65e8d              # double 0.73187764319568915
	.quad	0x3fed576f57f45a6e              # double 0.91692320994009235
	.quad	0x3fe42453ed61c727              # double 0.62943455089245937
	.quad	0x3fe23c2328359c28              # double 0.56984098294640706
	.quad	0x3fe620d04b225d7c              # double 0.69150557207733199
	.quad	0x3fd16dbf60788a26              # double 0.27232345982534623
	.quad	0x3fe199179b005049              # double 0.54993801377941864
	.quad	0x3fef3532dc9c557a              # double 0.97524397933982176
	.quad	0x3fd229d6f1139ab6              # double 0.28380368750223839
	.quad	0x3fec9ef8dce3d77d              # double 0.89440577642993413
	.quad	0x3fea789cf685f7d6              # double 0.82722328328213268
	.quad	0x3fd862889c22a918              # double 0.3810140156516737
	.quad	0x3fce5d723d89e9e4              # double 0.23722675328083576
	.quad	0x3fcb8bd65a2210d8              # double 0.21520499611882005
	.quad	0x3fc79122c9538874              # double 0.18411669569383415
	.quad	0x3fd04fd7c9ec9f64              # double 0.25487322539492241
	.quad	0x3fd27bf168c485f6              # double 0.28881488066880878
	.quad	0x3fe3f6e4c57cec19              # double 0.62388838359709375
	.quad	0x3fea742e4a442636              # double 0.82668222909086952
	.quad	0x3fee6cd2a1f15727              # double 0.95078403119507449
	.quad	0x3fdfc4e4427937fc              # double 0.4963923119693161
	.quad	0x3fe66b3770fd9aa4              # double 0.70058795994267031
	.quad	0x3fee7b544380c734              # double 0.95255482849299832
	.quad	0x3feeafcdc9f202d8              # double 0.9589604324574692
	.quad	0x3fe8a5d0b39bd458              # double 0.77024111823869656
	.quad	0x3fb0a1150a686fe0              # double 0.064957919159894129
	.quad	0x3fea9601357263ea              # double 0.83081112326465001
	.quad	0x3fbb252e4c841d10              # double 0.10603608482425764
	.quad	0x3fe3a4d154e3293c              # double 0.61386934833107132
	.quad	0x3fe6379e4dbb328a              # double 0.69428935224421306
	.quad	0x3fced307daf0544c              # double 0.24081514540071891
	.quad	0x3fed6b3032802e17              # double 0.91933450568598374
	.quad	0x3fe1b14b974c3ff8              # double 0.55289248991357365
	.quad	0x3fb4438d719dae68              # double 0.079155769575373847
	.quad	0x3fb0ec725d326fb0              # double 0.066107890847375783
	.quad	0x3fc7289aefea36f8              # double 0.18092667307467258
	.quad	0x3fe8da170ef9852e              # double 0.7766223232721694
	.quad	0x3fe934366b5f30d7              # double 0.78762360545217802
	.quad	0x3feb6a36ba2d5e0e              # double 0.85671554911363201
	.quad	0x3fe5b03ffb9cfd2f              # double 0.67776488440714455
	.quad	0x3fc991b971001728              # double 0.1997596551665819
	.quad	0x3fcca4b492bf0f74              # double 0.22377640881870386
	.quad	0x3fe04a8383074ebf              # double 0.50909591285240896
	.quad	0x3f9522005ec1e2a0              # double 0.020637517722635779
	.quad	0x3fe7823c1bcdb4c6              # double 0.73464780264262042
	.quad	0x3fea43a8afe5e92f              # double 0.82075914721580101
	.quad	0x3fe32a27472c951f              # double 0.59889568234635593
	.quad	0x3fef3beb3a8a69da              # double 0.97606431421018702
	.quad	0x3fee487e7b854462              # double 0.94634937405693287
	.quad	0x3fe2d465e6dffb51              # double 0.58842749684104423
	.quad	0x3fe01fca8f71d91a              # double 0.50388076798006698
	.quad	0x3fae004fd8affb30              # double 0.058596129609205128
	.quad	0x3fe0fcfbfc976875              # double 0.53088187536492504
	.quad	0x3fec03327020182b              # double 0.87539026164518441
	.quad	0x3fe41b7fabbd67e8              # double 0.6283567766470215
	.quad	0x3fe6c8f1910a63ce              # double 0.71202925041426979
	.quad	0x3feb2ede874e6783              # double 0.84947134425168291
	.quad	0x3fd2fc2643f8a046              # double 0.29663998258411473
	.quad	0x3feb6f9f65de32ab              # double 0.85737581153951703
	.quad	0x3fe287ed5122dfcf              # double 0.57909265372199481
	.quad	0x3fdc708e6f21389a              # double 0.44436989643589586
	.quad	0x3fecb149701931fc              # double 0.89664146322462512
	.quad	0x3fec32862894f93d              # double 0.88116748739393069
	.quad	0x3fc669bb92c26b78              # double 0.1751017061804665
	.quad	0x3fdefa5e8d0ca6ce              # double 0.48403133177144475
	.quad	0x3fbf32f2d2e6e3e0              # double 0.12187116288158917
	.quad	0x3fcf7ab4264ba4c4              # double 0.24593212003609299
	.quad	0x3fbcdfe23412e220              # double 0.11279119273502447
	.quad	0x3fecb2eca5784729              # double 0.89684135740592297
	.quad	0x3fb68fa74e7ece50              # double 0.088129479087734496
	.quad	0x3fe2460bced04f43              # double 0.57105055230429291
	.quad	0x3fcd07100ce7cc44              # double 0.22677803640508121
	.quad	0x3fded6033d13c1ec              # double 0.48181229557579175
	.quad	0x3feffe4499a43a99              # double 0.99978857048138813
	.quad	0x3fe63c6fe85300ed              # double 0.69487758041216596
	.quad	0x3fda285a894c65cc              # double 0.40871299179124487
	.quad	0x3fefb6c9803090da              # double 0.99106287991574082
	.quad	0x3fb59f47dc711a60              # double 0.084461680716324761
	.quad	0x3f8fcb1a077b4b40              # double 0.015524104455300169
	.quad	0x3fe2b82f2ebbb595              # double 0.58498343589387736
	.quad	0x3fea001f3e9ecb50              # double 0.81251489859128334
	.quad	0x3fe99544d1a4d19e              # double 0.79947129198130873
	.quad	0x3fd5921962731b0e              # double 0.33704218496534188
	.quad	0x3fe3b0fc455f2988              # double 0.61535466717877885
	.quad	0x3fe4757c2b486200              # double 0.63934143499051288
	.quad	0x3fcfea3571a576ac              # double 0.24933498429429812
	.quad	0x3fb2f641b2bbc418              # double 0.074070078025912145
	.quad	0x3fe5353f63157816              # double 0.66274995186154473
	.quad	0x3fd6ae71feca95f4              # double 0.35439729577987511
	.quad	0x3fd93de562013ac8              # double 0.39440283365994988
	.quad	0x3fe5b88a31752a7d              # double 0.67877683314993897
	.quad	0x3fe4e95a6260fe5d              # double 0.65348548140168428
	.quad	0x3fe5badda55d30c8              # double 0.67906076715146302
	.quad	0x3fe96ed13e509329              # double 0.79477750941132286
	.quad	0x3feded0d9c9995df              # double 0.93518715463568103
	.quad	0x3fe4a5408f2a429b              # double 0.6451723858063646
	.quad	0x3fe6f5c2b3e51f0d              # double 0.71750006805174993
	.quad	0x3fec715e8b6a9fbe              # double 0.88883902768883849
	.quad	0x3fc4915fa0a99ebc              # double 0.16068644852497538
	.quad	0x3fe75c7ac9e340a6              # double 0.73003901892845557
	.quad	0x3f9cb16662ea31c0              # double 0.028020477092057794
	.quad	0x3fb02e838c52fa20              # double 0.063209745177097876
	.quad	0x3fe16c5b6a3bdd03              # double 0.54447718380734533
	.quad	0x3feb77965d97739a              # double 0.85834806708918454
	.quad	0x3fe784f92f41bf5e              # double 0.73498210172509082
	.quad	0x3fdaed318ff2a192              # double 0.42072714860344107
	.quad	0x3fe0b4737e833f8b              # double 0.52202772817143861
	.quad	0x3fe5d7a0ba02876a              # double 0.68257175760321087
	.quad	0x3fe28df141ee3333              # double 0.57982695462269473
	.quad	0x3fe7f66d4b1a49c3              # double 0.74883141201490167
	.quad	0x3fe452614a001277              # double 0.63505615666561155
	.quad	0x3fbeb30af6dbada0              # double 0.11991947676476977
	.quad	0x3fde953a44b942f2              # double 0.47785813056275039
	.quad	0x3fe5a5dbf25ee543              # double 0.67649648035072862
	.quad	0x3feac736d8b9067c              # double 0.83681814507163165
	.quad	0x3fe8a56ad3998808              # double 0.77019254043648377
	.quad	0x3feb792eb74b939f              # double 0.85854278373573212
	.quad	0x3fd9e18b971a2cf2              # double 0.40439119106368004
	.quad	0x3fd82fa054902fc8              # double 0.37790687807205048
	.quad	0x3fef83191c4ec567              # double 0.98475318459365446
	.quad	0x3fc52e5bc2a05394              # double 0.16547724726902102
	.quad	0x3fc52b40a4a79e78              # double 0.16538246192725459
	.quad	0x3fb43177c21cfe70              # double 0.078879818812305435
	.quad	0x3fc5d3fe355cafb0              # double 0.17053201299256449
	.quad	0x3fd09c18828a2ccc              # double 0.25952732799551081
	.quad	0x3fe3397a5507559c              # double 0.60076634032400333
	.quad	0x3fdddcf037b46b64              # double 0.46661000671308828
	.quad	0x3fe551e282c32d57              # double 0.66624570407422368
	.quad	0x3fe66a1f887132cb              # double 0.70045448922027143
	.quad	0x3fe74fc60645bf98              # double 0.72848798012818161
	.quad	0x3fc8af0c7e2e0e18              # double 0.19284206544044546
	.quad	0x3fe951b3288a78c8              # double 0.79122312467713929
	.quad	0x3fdcb5d58fb45158              # double 0.44859828027371895
	.quad	0x3fea5e2bd1abea63              # double 0.82399550391648935
	.quad	0x3fe4a5681daf4487              # double 0.6451912479189027
	.quad	0x3fe1d76f9e9f67f0              # double 0.55754834156982547
	.quad	0x3fd719ea2970e546              # double 0.36095670744869712
	.quad	0x3fe2fdc51a77ded1              # double 0.59347777528361167
	.quad	0x3fd3fc07535f0efc              # double 0.31225760595064833
	.quad	0x3fce4cdbb2cce748              # double 0.23672052603233795
	.quad	0x3fd72cf868a80ea0              # double 0.36211977215155322
	.quad	0x3fe6f2f3440aeb07              # double 0.71715701379375296
	.quad	0x3fc0ef31883d988c              # double 0.13229960586904033
	.quad	0x3fe1fc71971587f6              # double 0.56206588276495384
	.quad	0x3fc26c38f97a50bc              # double 0.14392769032986574
	.quad	0x3fefbde6329b6ca3              # double 0.99193105587200525
	.quad	0x3fdeca89e64e5caa              # double 0.48111197939710826
	.quad	0x3fd9099f145c1f9a              # double 0.39121224392192178
	.quad	0x3fba4b8b07a1d828              # double 0.10271519600232237
	.quad	0x3fc72361881d15d0              # double 0.18076724191830218
	.quad	0x3fd79219b0aa4af4              # double 0.36829225780927222
	.quad	0x3fdecbd7b6e2a114              # double 0.48119156703843768
	.quad	0x3fe133f432020df3              # double 0.5375920273513074
	.quad	0x3fcd1b84d3e60ccc              # double 0.22740230890858582
	.quad	0x3fb38032ec7f3098              # double 0.076174910295949139
	.quad	0x3fd02ea82ad0d80a              # double 0.25284771138410689
	.quad	0x3fd92473eacd00d8              # double 0.39284990243687679
	.quad	0x3fe2ace1786f5d3a              # double 0.58360360643829456
	.quad	0x3feca31049f512e6              # double 0.89490522808827389
	.quad	0x3fc398f72878fdb0              # double 0.15310563541605182
	.quad	0x3fe198d15fee9cd2              # double 0.54990452515348864
	.quad	0x3fd06eaf6edfa70e              # double 0.25675569369796925
	.quad	0x3feecf6081e09fc1              # double 0.96281457297026673
	.quad	0x3fa2435e96cc3a60              # double 0.035670238407068622
	.quad	0x3fc5658dded680ec              # double 0.16716168766743722
	.quad	0x3fdfd0f72ee4110e              # double 0.49712924555957805
	.quad	0x3f9f7e61076c89c0              # double 0.030755535200236883
	.quad	0x3fe3bc78eeb1d369              # double 0.61675688381238303
	.quad	0x3fd6c81e2fe6ae0a              # double 0.35596422841874242
	.quad	0x3feb59444c7e566b              # double 0.85464682521951596
	.quad	0x3fee8b9d5a333b56              # double 0.95454280488216159
	.quad	0x3fe585a2ef97dcf6              # double 0.67256304545926926
	.quad	0x3fa3f281ef89ec30              # double 0.03895956086213237
	.quad	0x3fe832415307141d              # double 0.75613466469133395
	.quad	0x3fe4def18dfae492              # double 0.65221479158857876
	.quad	0x3fea7da88119f346              # double 0.82783913817511556
	.quad	0x3fcfa56d09284a94              # double 0.24723589846742711
	.quad	0x3fe1038b12b3ce1a              # double 0.53168252613835709
	.quad	0x3fb5798de15bcd78              # double 0.083886020201864642
	.quad	0x3fc019a77c3b8a8c              # double 0.12578290525478442
	.quad	0x3fe5272544e46c79              # double 0.66102851348422498
	.quad	0x3feaeff182997427              # double 0.84178996570301912
	.quad	0x3fed801ae767b692              # double 0.92188782879175535
	.quad	0x3fd44ff3d64656fe              # double 0.3173799126173974
	.quad	0x3feec4fec818a4b5              # double 0.96154727059651767
	.quad	0x3fdffd8ef281e04e              # double 0.49985097582203231
	.quad	0x3fe6c5f5615e0844              # double 0.71166485802701418
	.quad	0x3fed45bfab7d0399              # double 0.91476424688163427
	.quad	0x3fe7f019ed7815f9              # double 0.74805923824959486
	.quad	0x3feca4025d3f3bd1              # double 0.8950206586104007
	.quad	0x3fec4567c18867db              # double 0.88347232627279071
	.quad	0x3fd7007bec525b96              # double 0.35940454557697288
	.quad	0x3fdc56a98d5bbe0c              # double 0.44278944782760798
	.quad	0x3fedfb29bedcb1df              # double 0.93690955426933076
	.quad	0x3fe20386d7413bed              # double 0.56293050806004674
	.quad	0x3fda22c59e30f794              # double 0.40837231109969108
	.quad	0x3feccd41dbeeddc6              # double 0.90005581813505198
	.quad	0x3fd7ba3890d1291a              # double 0.37074102537430209
	.quad	0x3fd8fefb72c9428a              # double 0.39056287965380732
	.quad	0x3fc545a735d38b34              # double 0.16618814590682407
	.quad	0x3fd5671291e69a86              # double 0.33441604850887818
	.quad	0x3fb006c8472c1140              # double 0.062603490234384829
	.quad	0x3fa338a95b59a360              # double 0.037541668320790533
	.quad	0x3fed2cfc217fb38c              # double 0.91174131911030675
	.quad	0x3fc55a96b9394388              # double 0.166827049676183
	.quad	0x3fd294e37f03f980              # double 0.29033744243488258
	.quad	0x3fa247fa0aeee720              # double 0.035705388865109322
	.quad	0x3fd62b8dba3a8e94              # double 0.34640830217743113
	.quad	0x3fec049b1212e53a              # double 0.87556222467461642
	.quad	0x3fcfdad5589e1b98              # double 0.24886576487571399
	.quad	0x3fe1996b301ba1f5              # double 0.54997786899644885
	.quad	0x3fe536358559110f              # double 0.66286731762423468
	.quad	0x3fd2b62a1cc66cd6              # double 0.29236843881672081
	.quad	0x3fd2902de18fde8c              # double 0.29005000140703241
	.quad	0x3fb37e412b7671c0              # double 0.076145241843227573
	.quad	0x3fe40ae2b33f6038              # double 0.62632880219735565
	.quad	0x3fc2231c7ae54ee4              # double 0.1416965103222686
	.quad	0x3feb3110fe94bf01              # double 0.84973954890116954
	.quad	0x3fe71db68d7c4203              # double 0.72237708696235392
	.quad	0x3fc4be86bf0cb0d0              # double 0.16206440285293988
	.quad	0x3fd369b992aa1860              # double 0.30332793543528247
	.quad	0x3fe5a8ffc3609694              # double 0.67687976989391752
	.quad	0x3fb8c4ba6bd652d8              # double 0.09675183422798328
	.quad	0x3fdc863842d1f364              # double 0.44569212460901597
	.quad	0x3fe33c24971b3bad              # double 0.60109166634525979
	.quad	0x3fe91d1b42821b11              # double 0.7848030375469951
	.quad	0x3feeebee3e798cf3              # double 0.96630012704954848
	.quad	0x3fedeccf7013f4ce              # double 0.93515750780320572
	.quad	0x3fda6f25bb76c2ba              # double 0.41303389842054694
	.quad	0x3fe3df9cf6cd8e08              # double 0.62104652599049448
	.quad	0x3fe70b072b6a5e3e              # double 0.72009619216527887
	.quad	0x3fd8a2966847817c              # double 0.38492355521704957
	.quad	0x3fe2658d6afbb969              # double 0.57489653487372749
	.quad	0x3fe6a8937f721c95              # double 0.70807814494846133
	.quad	0x3fdf41044baca678              # double 0.48834330930785752
	.quad	0x3fe5dfa718516101              # double 0.68355135678851309
	.quad	0x3fd4c437e2df7bcc              # double 0.32447621493878098
	.quad	0x3fe01e1bec75efa4              # double 0.50367542442062474
	.quad	0x3fe0960b81515165              # double 0.51831603295663042
	.quad	0x3fe2c40853c6b0aa              # double 0.58642975199247371
	.quad	0x3fc8955f013de0cc              # double 0.19205844460134924
	.quad	0x3fe86066612a64cd              # double 0.76176756837517134
	.quad	0x3faaedf0bee38130              # double 0.052596591283647576
	.quad	0x3fdbfb465f25808c              # double 0.43721160213136367
	.quad	0x3fe8f1564e468452              # double 0.77946009910750491
	.quad	0x3fdc726ca0b11506              # double 0.44448390667487592
	.quad	0x3fe0d0afe80940d9              # double 0.52547450370368687
	.quad	0x3f80381d016f5f00              # double 0.0079195276320400687
	.quad	0x3fd4c5f07502f90c              # double 0.32458125521579073
	.quad	0x3fd05e8276efe9c6              # double 0.25576840987164606
	.quad	0x3fd4c7bf3e213c86              # double 0.32469159190527142
	.quad	0x3fe396900912082e              # double 0.61212922832078731
	.quad	0x3fec3aeffe2cc87a              # double 0.88219451564351847
	.quad	0x3fdf3cf7df09c2e0              # double 0.48809620648448337
	.quad	0x3faadb347cf4b830              # double 0.052453651669893353
	.quad	0x3fe5dc86c72d02cf              # double 0.68316973592308183
	.quad	0x3fe3fbbd86de0087              # double 0.62448002187012797
	.quad	0x3fe47b326a38df63              # double 0.64003868814959863
	.quad	0x3f993b4440c3e340              # double 0.02464014668746306
	.quad	0x3fdc20c6b1e4a9f2              # double 0.43950049755463205
	.quad	0x3fed01492bf3cf2b              # double 0.90640696129273601
	.quad	0x3fd2875deafd45f6              # double 0.28951213787249175
	.quad	0x3fd93ac39f181ac6              # double 0.39421167885340613
	.quad	0x3fdd4e4e629830e8              # double 0.45790443065995001
	.quad	0x3fe2cab639fbde7f              # double 0.58724509549115556
	.quad	0x3fd34d953bb51850              # double 0.3016102870063877
	.quad	0x3fe25c81548fabf0              # double 0.57379213825094944
	.quad	0x3fe8fa4a9b82a59e              # double 0.78055315373528678
	.quad	0x3fd615d36265b3c2              # double 0.34508213624104311
	.quad	0x3fe00c2104a92f40              # double 0.50148058805778106
	.quad	0x3fa68370d75b09a0              # double 0.043971563614394471
	.quad	0x3febdcb112160578              # double 0.87068990261484114
	.quad	0x3fe21ddc4ddbbd66              # double 0.56614508825979892
	.quad	0x3fe8fa625976a105              # double 0.78056447480506164
	.quad	0x3fe90d4cd28bed66              # double 0.78287354586011015
	.quad	0x3fe2c78fb6e2ac35              # double 0.58686052055180105
	.quad	0x3fe3f9b655c66671              # double 0.62423245194368182
	.quad	0x3fea08af38055e06              # double 0.813560113349866
	.quad	0x3fce696042523468              # double 0.23759082067809634
	.quad	0x3fd92d21d2c5a9c6              # double 0.39337964614119547
	.quad	0x3fdf446ec17584cc              # double 0.48855179684148875
	.quad	0x3fed12e96d371253              # double 0.90855857211188107
	.quad	0x3fd2dfb771fe8220              # double 0.29490457660907232
	.quad	0x3fe617709ab6a926              # double 0.69036131112560351
	.quad	0x3fe5f7e6b99a0f5b              # double 0.68651138544417323
	.quad	0x3fc13753c80ab110              # double 0.13450095431961318
	.quad	0x3fe4fddccef8687c              # double 0.65598907874961254
	.quad	0x3fd1bfd4ef923ee4              # double 0.2773334827006535
	.quad	0x3fe1412891d1c741              # double 0.53920391540871304
	.quad	0x3fdf520e671fb8d8              # double 0.48938331671423674
	.quad	0x3fef20b71c320a79              # double 0.97274356371811088
	.quad	0x3fbaed129eed03a8              # double 0.10517994289422339
	.quad	0x3fd9bb746645b2cc              # double 0.40206632602238979
	.quad	0x3fd88f49616eaf86              # double 0.38374552264098616
	.quad	0x3fc681b9cd00f06c              # double 0.17583391675896409
	.quad	0x3fe01ac3ae1bea7e              # double 0.5032671356742211
	.quad	0x3fc23bb29caa0b8c              # double 0.1424468293153861
	.quad	0x3fda06b40afb0474              # double 0.40665913650815999
	.quad	0x3fdf14d437ea4b24              # double 0.48564629993886599
	.quad	0x3fe1a2e663e64a29              # double 0.5511352492488345
	.quad	0x3fd3478e415c9530              # double 0.3012424124047639
	.quad	0x3fe78d689eb65df4              # double 0.7360118007517813
	.quad	0x3fe6447be4333cfa              # double 0.69585985727635991
	.quad	0x3fd5b705d11c485a              # double 0.33929582043595519
	.quad	0x3fdd719f93574b8c              # double 0.46006001843232336
	.quad	0x3fd2c06040fe8e92              # double 0.29299169871431119
	.quad	0x3f9df56892279b80              # double 0.029256471558166464
	.quad	0x3fe3f40a62e3d69a              # double 0.62354010881854838
	.quad	0x3f962090ff4d7f80              # double 0.021608605940286463
	.quad	0x3fc1fdf2f5885238              # double 0.14056241024867844
	.quad	0x3fbb86b8dbc54d00              # double 0.10752444615836865
	.quad	0x3feba1e882ebb558              # double 0.86351419039207666
	.quad	0x3fa633f573c0f4a0              # double 0.043365164165586778
	.quad	0x3fe13e863aab818e              # double 0.53888236483548879
	.quad	0x3fd49c81733fc830              # double 0.32205234770583768
	.quad	0x3fd0d5134f21374c              # double 0.26300509192957544
	.quad	0x3fe94510f034de5d              # double 0.78968092837653681
	.quad	0x3fe23e79c10e4884              # double 0.5701264162655808
	.quad	0x3fdc64c1037ccba6              # double 0.44364953365873772
	.quad	0x3fe6c5e4d302585c              # double 0.71165696346976004
	.quad	0x3fab3fae68311590              # double 0.053220224589078602
	.quad	0x3fe6c94ff7838f11              # double 0.71207426397856655
	.quad	0x3fe2f340390a8e24              # double 0.59219370976319796
	.quad	0x3fc0aa63e1dfe888              # double 0.13019989518199204
	.quad	0x3fdbd702bcbcb178              # double 0.43499821120601423
	.quad	0x3fdad5278a3475cc              # double 0.41925991531919915
	.quad	0x3fbc7ce7d22a0b70              # double 0.11128090744936769
	.quad	0x3fdd19653a704e6c              # double 0.45467501360801665
	.quad	0x3fd0297a09455890              # double 0.25253153710708265
	.quad	0x3fe2353bb6278ef4              # double 0.56899819924407646
	.quad	0x3fb28760087e9408              # double 0.072378160547103332
	.quad	0x3fcec5e09e67da58              # double 0.2404137395348751
	.quad	0x3fb7ee2126056808              # double 0.093477317602634113
	.quad	0x3fe59d2e0a0c0dc9              # double 0.67543699228593213
	.quad	0x3fd788ad7b81a420              # double 0.36771714268849287
	.quad	0x3fe61aae7a54709a              # double 0.69075702564761632
	.quad	0x3fe85dec6b931fc4              # double 0.7614652730053355
	.quad	0x3fe755c800bb3cce              # double 0.72922134535647287
	.quad	0x3fef28e0fe6d35fe              # double 0.97374009792991933
	.quad	0x3fdfb3f0bfbce57c              # double 0.49535769199754731
	.quad	0x3fd6912d6ceaaeee              # double 0.35261092792892057
	.quad	0x3fe977a21da20a0c              # double 0.79585367000282891
	.quad	0x3fcde936fe2b1848              # double 0.23367965136111679
	.quad	0x3fea1e060361eda8              # double 0.81616497669840715
	.quad	0x3fd196611074137c              # double 0.27480341536311648
	.quad	0x3fe7c02cec646928              # double 0.74220892114980064
	.quad	0x3fd6d41b4a4d6ed2              # double 0.35669595962620548
	.quad	0x3fd3e35402454fea              # double 0.31075000974419587
	.quad	0x3fe344f2f5b53204              # double 0.60216663350871658
	.quad	0x3fc473b75c8c45c0              # double 0.15978137988035535
	.quad	0x3fc5fc64ad0252c4              # double 0.17176493118008385
	.quad	0x3fee472cc90ebffa              # double 0.94618834752145564
	.quad	0x3fe24d1bfc493963              # double 0.57191275858512503
	.quad	0x3fe4b99f270f85b4              # double 0.64765889767675455
	.quad	0x3fda1fdb47fcf866              # double 0.40819437055677665
	.quad	0x3fe6078485e4e5dc              # double 0.68841768408963899
	.quad	0x3fce3ff7027d6eec              # double 0.23632705327587844
	.quad	0x3fd7d8a402a32020              # double 0.37259769685306487
	.quad	0x3feebca0732c06cb              # double 0.96052572721983986
	.quad	0x3fd4b92fe2b0b7e6              # double 0.32380292070126726
	.quad	0x3fae84cac88a9690              # double 0.059606873493334267
	.quad	0x3fec006a58a1b885              # double 0.8750507098282162
	.quad	0x3fae9d5542ed8170              # double 0.059794105930225494
	.quad	0x3fef0bfac17d7807              # double 0.97021234313047066
	.quad	0x3fd0d4e69cbf11be              # double 0.26299443537962108
	.quad	0x3fecd73dec717f5f              # double 0.90127464466420892
	.quad	0x3fd0b5af2ae3631c              # double 0.26108912647537053
	.quad	0x3fe7a02fe143c484              # double 0.73830408093466859
	.quad	0x3fe144431677575b              # double 0.53958277118611464
	.quad	0x3fc50498df6fb38c              # double 0.16420279417016237
	.quad	0x3fd84ac09c7b62fc              # double 0.37956252366488719
	.quad	0x3fe606f1c99f756c              # double 0.68834771518201654
	.quad	0x3fd3f3283bfb8e68              # double 0.31171613557510236
	.quad	0x3fc0e2815c114db4              # double 0.13191239352691542
	.quad	0x3fe7d71fbd478b2d              # double 0.74501025169988611
	.quad	0x3fe57d4182c6e131              # double 0.67154002706869254
	.quad	0x3fd6f611d00ac8fc              # double 0.35876889530767619
	.quad	0x3fd3d8eefa2445dc              # double 0.31011557033442982
	.quad	0x3fee4779ef59d857              # double 0.94622513530954222
	.quad	0x3fa06fc9c10a9110              # double 0.032102875532730946
	.quad	0x3fecd42a4278463e              # double 0.9008990572203357
	.quad	0x3fbec87722cc0bc8              # double 0.12024635886704893
	.quad	0x3fa7fe3fe0e54f80              # double 0.046861644938558378
	.quad	0x3fdf1c7096c9bae8              # double 0.48611082768813541
	.quad	0x3fcf822839096de8              # double 0.24615958008767724
	.quad	0x3fe88e5992a258b2              # double 0.76737669600949787
	.quad	0x3fdb7015728883f2              # double 0.42871605095757481
	.quad	0x3fd0e92dfbe77ef4              # double 0.26423215484645302
	.quad	0x3fe4215f4f742b1f              # double 0.62907376783673274
	.quad	0x3fe2bc5ed8807502              # double 0.58549444470887146
	.quad	0x3fecf2e2ba98c0fd              # double 0.90464912838618228
	.quad	0x3fdcb674b9ccaed4              # double 0.44863622803198422
	.quad	0x3fe2a78d1ad503c2              # double 0.5829530262054663
	.quad	0x3fee11f4808ef917              # double 0.9396917830379462
	.quad	0x3fd38042351930dc              # double 0.30470328507796096
	.quad	0x3fb6c4c448b4f4d0              # double 0.088939922095011114
	.quad	0x3fe62279050053be              # double 0.69170809723674842
	.quad	0x3fec425eacfa3a8f              # double 0.8831017855134905
	.quad	0x3fc88d2aab101c2c              # double 0.19180806496317027
	.quad	0x3fec97854f3906d4              # double 0.89349618409343145
	.quad	0x3fe43656ba2b357c              # double 0.63163315163698952
	.quad	0x3fc0c9141711aaec              # double 0.13113642813126292
	.quad	0x3fddaf5b5bf3baa2              # double 0.46382793407148359
	.quad	0x3fdc3190d4fc2014              # double 0.44052525328925296
	.quad	0x3fe88bb9c302e4d0              # double 0.76705635154862684
	.quad	0x3fdce5b3c59a8530              # double 0.45151991173959782
	.quad	0x3fe3dbdd7082c2ef              # double 0.62058898901713444
	.quad	0x3fef46cdc233363a              # double 0.97739303521820564
	.quad	0x3fe7ba8b74387e12              # double 0.74152157496786431
	.quad	0x3fe439bcc58b1278              # double 0.63204802115121961
	.quad	0x3f8a67b35f77cdc0              # double 0.012893105841590535
	.quad	0x3fe9cf9ab3702640              # double 0.80659232183933938
	.quad	0x3fd06197f2581f80              # double 0.25595663706234717
	.quad	0x3fc78b1f4b5383e8              # double 0.18393317392386099
	.quad	0x3fe654d6805260a7              # double 0.69785618841981012
	.quad	0x3fb2a18df881dbb0              # double 0.07277762715408076
	.quad	0x3fb971a315a1aed8              # double 0.099390213757654222
	.quad	0x3fc8c4aca94074b4              # double 0.19350202812430484
	.quad	0x3febd2ca308e2f03              # double 0.86948117717244633
	.quad	0x3fc686ffdf1edf50              # double 0.17599485773620893
	.quad	0x3fd3be13490c2c94              # double 0.30847627767134012
	.quad	0x3febd44671fead0c              # double 0.8696624971829876
	.quad	0x3fe1b1f806fbfb03              # double 0.55297471393700481
	.quad	0x3fe5612cf491b971              # double 0.66811225669316177
	.quad	0x3fe0e37ad7ca2b57              # double 0.5277685370104831
	.quad	0x3fc9d33de8b254b0              # double 0.20175908910883811
	.quad	0x3fe4dfbbc6d06cb6              # double 0.65231121855631247
	.quad	0x3fd2fc3dd2a6bea0              # double 0.29664559909267929
	.quad	0x3fe43c65db24dcf0              # double 0.63237278749048009
	.quad	0x3fe4a35ed1bd2db8              # double 0.64494267429966268
	.quad	0x3fece745c53aaf7b              # double 0.90323151131950341
	.quad	0x3fe7e0baae765882              # double 0.74618276667276029
	.quad	0x3fd2fdac7a56386c              # double 0.29673301646187755
	.quad	0x3fe9b851c3fdc2dc              # double 0.80374992637197406
	.quad	0x3fc6fa0baa94082c              # double 0.1795057852651224
	.quad	0x3fe1ff9605bb3889              # double 0.56244946593666711
	.quad	0x3fe7303b28ecd43c              # double 0.72463758462129801
	.quad	0x3febea0fee3265a0              # double 0.8723220493586048
	.quad	0x3febf13b8275af91              # double 0.87319732170498032
	.quad	0x3fe27bf38e5e5237              # double 0.57763078504883125
	.quad	0x3fe815321454ddf8              # double 0.75258735629080231
	.quad	0x3fe63a1bf289e40d              # double 0.69459340449168538
	.quad	0x3fd118b72c27e3a0              # double 0.26713351547328479
	.quad	0x3fef138d83136416              # double 0.971136814124409
	.quad	0x3fd57497d0fd03a8              # double 0.33524127396600045
	.quad	0x3fd3ff7eca90f0c8              # double 0.31246919423916752
	.quad	0x3fef5035fe4dde87              # double 0.97854137104782601
	.quad	0x3fe5fdfd70944732              # double 0.68725463855864732
	.quad	0x3fe71a08e022b05d              # double 0.72192806030717416
	.quad	0x3fc4abd03ddf39f0              # double 0.1614933302029864
	.quad	0x3fe05ab059646d94              # double 0.51107041797097219
	.quad	0x3fd0d697f4de5706              # double 0.26309775269452051
	.quad	0x3fc67e71fae068d4              # double 0.17573380231698954
	.quad	0x3fd20d2f58bdd1d2              # double 0.28205474535141406
	.quad	0x3fef229cb9ff8af9              # double 0.97297512367035132
	.quad	0x3fd48b5da5e66b0c              # double 0.32100621415308761
	.quad	0x3fe37f7ab07089a4              # double 0.60931143246516628
	.quad	0x3fdc62ef690ec02a              # double 0.44353852519543813
	.quad	0x3fe2d25ffb0023a9              # double 0.58818053267997528
	.quad	0x3f602389decb9400              # double 0.0019700711039711827
	.quad	0x3fe0f834e6c2dfeb              # double 0.53029866285851079
	.quad	0x3fb1d8fc8559a0f8              # double 0.069717199855975909
	.quad	0x3fd6269e5fd1185c              # double 0.34610709530932637
	.quad	0x3fef03b96857e96b              # double 0.96920462016650554
	.quad	0x3fe3b154b9238a0f              # double 0.61539684448172405
	.quad	0x3fe9a6a79856a790              # double 0.80159358743297737
	.quad	0x3fe67a37e2836947              # double 0.70241922608264751
	.quad	0x3fe579ebb375beaf              # double 0.67113289881486604
	.quad	0x3fe052d29cd4a25d              # double 0.51011019354798359
	.quad	0x3fe7803e79692ce9              # double 0.73440479004912362
	.quad	0x3fd82ad87d2f18e0              # double 0.37761509156224626
	.quad	0x3fed5cc36e44246c              # double 0.91757365738261631
	.quad	0x3f9b1f27c0d15640              # double 0.026486035483989534
	.quad	0x3fb98ce47c2ace68              # double 0.099806099237690682
	.quad	0x3feee28aa92e972b              # double 0.96515400927885275
	.quad	0x3fd284b2a69b8426              # double 0.28934923429739212
	.quad	0x3fe227cab1527655              # double 0.56735739358164017
	.quad	0x3fb539fc4b7f9d08              # double 0.082916038925407887
	.quad	0x3fcd0e267a5a92e4              # double 0.22699433302218275
	.quad	0x3fb3c328ef0997a8              # double 0.077196653708226592
	.quad	0x3feb7fcab9807a0a              # double 0.85934959631760077
	.quad	0x3fefc994393d00da              # double 0.99335681132654519
	.quad	0x3f77faf2fa110e00              # double 0.0058545581133020441
	.quad	0x3fe97f902ccbfe5f              # double 0.79682167767891687
	.quad	0x3fe7799d8ef73d65              # double 0.73359563754085555
	.quad	0x3fe87dae29e9882b              # double 0.76534183679564671
	.quad	0x3fd5bc33cd04eab4              # double 0.33961195966154922
	.quad	0x3fe3512e9e7653bb              # double 0.60365992498065368
	.quad	0x3fc3f97459948e9c              # double 0.15605024694479119
	.quad	0x3fee78a6c9bea1cb              # double 0.95222796824696709
	.quad	0x3fe365f5954e380d              # double 0.60619620476950475
	.quad	0x3feb5c008baf9d46              # double 0.85498072893543831
	.quad	0x3fe9c6534cef2250              # double 0.80545964266009129
	.quad	0x3fde24c18a46391a              # double 0.47099340918875188
	.quad	0x3fe7776e60edd80a              # double 0.73332899981937882
	.quad	0x3fef4b974a9ea552              # double 0.9779774148384297
	.quad	0x3fe587acf29360fa              # double 0.67281196001115906
	.quad	0x3fddf77f3a78c3f2              # double 0.46823101720934723
	.quad	0x3fe47f59af6cd1e1              # double 0.64054569494924973
	.quad	0x3fdd4e87c3e8a926              # double 0.45791811114999559
	.quad	0x3fe4de4eff393fa3              # double 0.65213727806439115
	.quad	0x3fec991d781fdd41              # double 0.8936908098393489
	.quad	0x3fe7ed83103d8fd4              # double 0.74774315998046825
	.quad	0x3feaafe30637652f              # double 0.83397055830133648
	.quad	0x3fea0731ed20d51c              # double 0.81337829889403989
	.quad	0x3fe9d06344317d28              # double 0.80668795889861133
	.quad	0x3fee9a3a6cd25f5b              # double 0.95632668737651316
	.quad	0x3fe60888a32e8119              # double 0.68854171630303818
	.quad	0x3fd72c41cf81f850              # double 0.36207623733924255
	.quad	0x3fe86a5604b009e4              # double 0.76298046985203571
	.quad	0x3fb891930f7d6ca0              # double 0.095971289903376888
	.quad	0x3fd83d44f0b2cf72              # double 0.37873958116255502
	.quad	0x3fea9ac5073f4e09              # double 0.83139277854428528
	.quad	0x3fcb8184c2d0cad4              # double 0.21489009392242642
	.quad	0x3fcb77852f99fa78              # double 0.21458496879855082
	.quad	0x3fdcca8623400aee              # double 0.44986108248137568
	.quad	0x3fd0ca6450b451c6              # double 0.26235301858221438
	.quad	0x3fcdbcd38f56a498              # double 0.2323250245947619
	.quad	0x3fd8838fc39f71d0              # double 0.38302988151351958
	.quad	0x3fe79a26a76149f8              # double 0.73756725970662185
	.quad	0x3fe6a8972bf92866              # double 0.70807989681749173
	.quad	0x3fd62c34c8e609b2              # double 0.34644813174250111
	.quad	0x3fd6566fdbe3a816              # double 0.34902569268763395
	.quad	0x3fe785a96b9caa09              # double 0.73506613748514937
	.quad	0x3fd457817b4f59dc              # double 0.31784092943180808
	.quad	0x3fd12b7e4d8c89c8              # double 0.26827962468283006
	.quad	0x3fd1e2bdf29edfdc              # double 0.27946423238199514
	.quad	0x3feef6cc03fec8ca              # double 0.96762657909700889
	.quad	0x3feff7601fe6a968              # double 0.99894720297497219
	.quad	0x3fe5c74b599eae56              # double 0.68057792190433974
	.quad	0x3fd6c9ae76b95c78              # double 0.35605966180941762
	.quad	0x3fdbdd1e5e25eb28              # double 0.43537100977089205
	.quad	0x3fe12d59cabe26c3              # double 0.53678598020743384
	.quad	0x3fd0d42b4b51fff8              # double 0.26294977527140828
	.quad	0x3fc2ba458f022d2c              # double 0.14630956156575203
	.quad	0x3fee76b188da22a8              # double 0.95198895195888599
	.quad	0x3fefd92aaff207eb              # double 0.99525961269705243
	.quad	0x3fe47147dd1392e3              # double 0.63882821253772837
	.quad	0x3fcddb63909dd658              # double 0.23325771867137024
	.quad	0x3fe0ad7e3818f651              # double 0.52117835003418567
	.quad	0x3fc0c767a3e655bc              # double 0.1310853529254653
	.quad	0x3fd2b8446be2ac92              # double 0.29249678168952997
	.quad	0x3fe938d11b962e0a              # double 0.78818564785018563
	.quad	0x3fde75b221a22d64              # double 0.47593358311197265
	.quad	0x3fc0bac776bbb970              # double 0.13070004746937114
	.quad	0x3fe7aa1792fcbacc              # double 0.73951319416468086
	.quad	0x3fed0e8ab38a85c4              # double 0.90802512232419774
	.quad	0x3fd7d7337216cf62              # double 0.37250982419504031
	.quad	0x3fd90a548689ebc8              # double 0.39125550402212328
	.quad	0x3fe4f81ec51a4ec3              # double 0.65528810974725393
	.quad	0x3fe471fce5524f7e              # double 0.63891453542099419
	.quad	0x3fc4b3ad27c7a494              # double 0.16173328821540578
	.quad	0x3fefd98101dcf615              # double 0.99530077327625809
	.quad	0x3fe03fa8b9af920d              # double 0.50777088419687433
	.quad	0x3feced6edfe25676              # double 0.90398353316659441
	.quad	0x3fe61a3866ab804c              # double 0.69070072224349977
	.quad	0x3fe4d04117f2e54e              # double 0.65042166402342061
	.quad	0x3fd46ab6bccdbff0              # double 0.31901329458105376
	.quad	0x3fd8ddad7ab7c606              # double 0.38853013023535288
	.quad	0x3fe8f7065b60c7f3              # double 0.78015439841533263
	.quad	0x3feb0fb15251fd73              # double 0.84566560819796022
	.quad	0x3fda20057657c81e              # double 0.4082044273083073
	.quad	0x3fe4762825fa892c              # double 0.63942344110208671
	.quad	0x3fb38a79df2a1568              # double 0.076331727012151185
	.quad	0x3fe4fbd108cf3a58              # double 0.6557393238125071
	.quad	0x3fef09fb63b78ed8              # double 0.96996850467663886
	.quad	0x3fb551c1a78c9dd8              # double 0.083278754621111672
	.quad	0x3fe864c4722a9524              # double 0.76230070398438387
	.quad	0x3fe40eb44c5d101d              # double 0.62679495730162993
	.quad	0x3fe69e424d3946b6              # double 0.70681872446785721
	.quad	0x3fd75d65996f262c              # double 0.36507549270445128
	.quad	0x3feb9b7e645c1ed8              # double 0.86273116685421325
	.quad	0x3fe6c6f137665b46              # double 0.71178494282035198
	.quad	0x3fabae6cbd3bac20              # double 0.054065130328887046
	.quad	0x3fd6f9de61cb6bac              # double 0.35900077390914009
	.quad	0x3fef77a8db260699              # double 0.98335688402603971
	.quad	0x3fd73a74d5d195a2              # double 0.36294289475184816
	.quad	0x3fec18aa15c0c5e0              # double 0.87801079033505047
	.quad	0x3fcb0c119c155640              # double 0.2113058101773948
	.quad	0x3fd0768cf3400326              # double 0.25723575358283524
	.quad	0x3fee61c1bd34f826              # double 0.94943320230936901
	.quad	0x3fec4b5620d2ea61              # double 0.88419634257236279
	.quad	0x3fccd77a52b50408              # double 0.22532586134369148
	.quad	0x3fc764748a57106c              # double 0.1827531505097143
	.quad	0x3fe412edc7295468              # double 0.62731064699859207
	.quad	0x3fd4c0ff078abfda              # double 0.32427955376169637
	.quad	0x3fcc8d2befb162c8              # double 0.22305821613078636
	.quad	0x3fd91159c61e3734              # double 0.39168400142158366
	.quad	0x3fe190d8d78a2398              # double 0.54893152329997275
	.quad	0x3fdf02c5d01a555c              # double 0.48454423258347901
	.quad	0x3feaed33fb575d3c              # double 0.841455450917159
	.quad	0x3fc1eaa8506f9844              # double 0.13997367789778725
	.quad	0x3fdde456dca0870c              # double 0.46706172509776489
	.quad	0x3fcf7fc7499ba634              # double 0.24608698934689388
	.quad	0x3fe8109af5392644              # double 0.752027014686242
	.quad	0x3feb65a65759f8e4              # double 0.85615841923552382
	.quad	0x3fdcf88494f733b4              # double 0.45266832873749796
	.quad	0x3fc274d9a246f188              # double 0.1441909830445065
	.quad	0x3fdecadc5b20fee6              # double 0.48113163852029428
	.quad	0x3fdd8aca4ba37424              # double 0.46159608255931261
	.quad	0x3faa227eb664ac90              # double 0.05104442574005319
	.quad	0x3fe6423e0adbfbcf              # double 0.69558622475585163
	.quad	0x3fddfcb94a9b624c              # double 0.46855003629528791
	.quad	0x3fe32d0f7446a64a              # double 0.59925053320075361
	.quad	0x3fe41733dde4ac9f              # double 0.62783234919097086
	.quad	0x3fcf481232293dd0              # double 0.24438693475029405
	.quad	0x3fcff27684b72444              # double 0.24958688240283966
	.quad	0x3fe592d62a7e40d0              # double 0.67417438792656448
	.quad	0x3fe51a54f267dbab              # double 0.65946433396208215
	.quad	0x3fa763265a68e910              # double 0.045678328071931174
	.quad	0x3fe378879bff791b              # double 0.60846310108516677
	.quad	0x3fe076dc591fbf44              # double 0.51450936705621375
	.quad	0x3fe38c415a8cdcdc              # double 0.6108710068282579
	.quad	0x3fee60f6b951dbff              # double 0.94933639712587581
	.quad	0x3fecb947851e7be9              # double 0.89761711120433774
	.quad	0x3feb9b2af34e32ad              # double 0.86269137878988078
	.quad	0x3fda31ba307dbdbc              # double 0.40928511367289011
	.quad	0x3fca3a7166cb555c              # double 0.20490853804828191
	.quad	0x3fe892bfc501886a              # double 0.76791370847446427
	.quad	0x3fb72b8cc51beac8              # double 0.090508268472983322
	.quad	0x3fee712fd4d31498              # double 0.95131675307551955
	.quad	0x3fe379703a842afe              # double 0.60857402256928572
	.quad	0x3fef59a95c6805ad              # double 0.97969501541245096
	.quad	0x3fd5f148b271f21e              # double 0.34285180498389589
	.quad	0x3fdae7b141f7cc88              # double 0.42039138261970566
	.quad	0x3feb1f283eeff6ec              # double 0.84755337040379918
	.quad	0x3fed31f48d50764f              # double 0.91234805679750675
	.quad	0x3fece8206a155324              # double 0.90333576888460642
	.quad	0x3fef5c8cbbfcb748              # double 0.98004757610554182
	.quad	0x3fe7eca5b026d708              # double 0.74763759998924773
	.quad	0x3fbd0ce55f4ef070              # double 0.1134780271231095
	.quad	0x3fdeea0c25e9879a              # double 0.48303512289396056
	.quad	0x3fb811f2fbb6db90              # double 0.09402388234489778
	.quad	0x3fc6ec527350d874              # double 0.17908697729734835
	.quad	0x3fdb322411c04f6c              # double 0.42493535741345201
	.quad	0x3f4b6b7a42510400              # double 8.3678693466293641E-4
	.quad	0x3fdad20fb406d9d4              # double 0.41907112675417335
	.quad	0x3fddc40be39f75c8              # double 0.46509072521970696
	.quad	0x3fedb671b1b17e7c              # double 0.92852101045350776
	.quad	0x3fcc9810a4234de4              # double 0.22339065565630201
	.quad	0x3fdf77e978e96e9e              # double 0.49169384773061064
	.quad	0x3fe035b7c1f4226b              # double 0.50655734902927685
	.quad	0x3fc5e7757169e520              # double 0.17112606084609983
	.quad	0x3fe0d7cd5bbfad1a              # double 0.52634303970026797
	.quad	0x3fea7e039e555edf              # double 0.82788258480556098
	.quad	0x3fdf81c4ef3efcc6              # double 0.49229548801299605
	.quad	0x3fe2b43a476b2a31              # double 0.58450044583270799
	.quad	0x3fd6266a8ddf13e6              # double 0.34609474043491983
	.quad	0x3fe8bfc7d26f0de0              # double 0.7734107122454894
	.quad	0x3fce969a3560a5b4              # double 0.23897101980518942
	.quad	0x3fc25de63f116954              # double 0.143490582270554
	.quad	0x3fe99086febb837c              # double 0.7988924956554082
	.quad	0x3fb8259c4d372bf8              # double 0.094323891498035439
	.quad	0x3fe210523557be0e              # double 0.56449232500557556
	.quad	0x3fef798da9d620d4              # double 0.98358805819682482
	.quad	0x3fedee3c32edc37a              # double 0.93533143946670738
	.quad	0x3fef80336344fa39              # double 0.984399503598815
	.quad	0x3fbb8c4da02d8248              # double 0.1076096073206908
	.quad	0x3fec199010208271              # double 0.87812045240214165
	.quad	0x3feda3243acc049d              # double 0.92616473659304044
	.quad	0x3fe96ca5dc4b1d31              # double 0.79451268220956284
	.quad	0x3fb0263ad89aae78              # double 0.063083341485873023
	.quad	0x3fe66fbbaab8d662              # double 0.70113929123062868
	.quad	0x3fdc2adde9903896              # double 0.44011638459131441
	.quad	0x3fdb6844bc5356da              # double 0.42823904410520941
	.quad	0x3fc1f85046576f00              # double 0.14039042887349495
	.quad	0x3fc01b22dddb17e0              # double 0.12582813103489254
	.quad	0x3fec0eed0cb8f893              # double 0.87682201847907704
	.quad	0x3f925ae7459987c0              # double 0.017924893973379374
	.quad	0x3fee71cc208e5169              # double 0.95139128073291801
	.quad	0x3fc2ebacbba700d8              # double 0.14781722223961569
	.quad	0x3feff2826bfdde26              # double 0.99835320560572849
	.quad	0x3fe12398f6377142              # double 0.53559539879965024
	.quad	0x3fdef22740b59a20              # double 0.48352986640239415
	.quad	0x3fd369b644d0eeea              # double 0.30332714767767632
	.quad	0x3fe6b16758ed757e              # double 0.70915572518030934
	.quad	0x3fe3e894e05c01dd              # double 0.62214130230136855
	.quad	0x3fc5fda5d60d91b0              # double 0.1718032164745984
	.quad	0x3fefa349ec0862a0              # double 0.98868270969531479
	.quad	0x3fe020945e8d74b1              # double 0.50397699801728468
	.quad	0x3fdd83272df1ae60              # double 0.46112994658208173
	.quad	0x3fddf19e296fe682              # double 0.46787218138306497
	.quad	0x3fd4f80c13722f0e              # double 0.32763959788347641
	.quad	0x3fe4fa6146179e74              # double 0.65556396188635668
	.quad	0x3fc8ebf57415240c              # double 0.19470089119047918
	.quad	0x3fdcd9529180de8c              # double 0.45076431474033352
	.quad	0x3fd5353514f4f1ee              # double 0.33137251898349873
	.quad	0x3fe11c0ce208bc2c              # double 0.53467411181725799
	.quad	0x3fdb891299f32ad0              # double 0.430241251317665
	.quad	0x3fc8697028521410              # double 0.19071771591930586
	.quad	0x3fcf0d26120438e8              # double 0.2425887668582114
	.quad	0x3fd27e0219795fc8              # double 0.28894093024927914
	.quad	0x3f958e956bcb0700              # double 0.021051726059119424
	.quad	0x3feb01c728f6f411              # double 0.84396703720961075
	.quad	0x3fb3c2ad76ea2378              # double 0.077189294368634864
	.quad	0x3fb660aca79108c0              # double 0.087412634763526675
	.quad	0x3fda670019ab7eaa              # double 0.41253664500070875
	.quad	0x3fc06d92803016d4              # double 0.12834388026401788
	.quad	0x3fdea68bbf1b9194              # double 0.47891515410290109
	.quad	0x3fcd7020fc4e1fd0              # double 0.22998440093601724
	.quad	0x3fe388c81b69d127              # double 0.61044698099297967
	.quad	0x3fda996f69b6da92              # double 0.41561494182261882
	.quad	0x3fed169f743147e1              # double 0.90901158040855645
	.quad	0x3feada8c09f247dd              # double 0.839178103853779
	.quad	0x3fe1d4d3dd7c96bb              # double 0.5572299314414616
	.quad	0x3fe4fc1dcf0135ff              # double 0.6557759326039444
	.quad	0x3fec887793c85d55              # double 0.89165858138850729
	.quad	0x3fa5c9926c5cf550              # double 0.04255349705497713
	.quad	0x3f911245dcb2e2a0              # double 0.016671268077262824
	.quad	0x3fe9f0ca857e9150              # double 0.81064344475866257
	.quad	0x3fe16d353005c45c              # double 0.54458102588081259
	.quad	0x3fe022db637495ee              # double 0.5042550032127886
	.quad	0x3fe38943ad7e874b              # double 0.61050590406032634
	.quad	0x3feaec7faad5cef5              # double 0.84136947027442821
	.quad	0x3fd7449bf1174d16              # double 0.36356257003827019
	.quad	0x3feb8f956cf39d25              # double 0.8612773063622724
	.quad	0x3fe9d74298c6c244              # double 0.80752687300816505
	.quad	0x3fd082b6914106b2              # double 0.25797809777223357
	.quad	0x3feb2fc06804ec0e              # double 0.84957905117278343
	.quad	0x3fe66e3279cd9fd7              # double 0.70095180310908745
	.quad	0x3fb31e20697011e0              # double 0.074678445569652308
	.quad	0x3fdbebd9b25ff9e8              # double 0.43627016467499269
	.quad	0x3feeb7e38f689014              # double 0.95994737634146298
	.quad	0x3fd491302ee72b12              # double 0.32136158542987048
	.quad	0x3fd6f1a3ffb5a5a0              # double 0.35849857303272792
	.quad	0x3fc209c86d7af784              # double 0.14092355104179088
	.quad	0x3fe7418352b38b8f              # double 0.72674719002348975
	.quad	0x3fcc59d911a4ea50              # double 0.22149194108517856
	.quad	0x3fe68e4119d1066e              # double 0.70486502687726982
	.quad	0x3fe18826ef7477fa              # double 0.54787012833162341
	.quad	0x3fe1bbabcf93a8d3              # double 0.55415907423346267
	.quad	0x3fe857c6e8da4bb0              # double 0.76071496466680877
	.quad	0x3fa57df2dfaee740              # double 0.041976537518577661
	.quad	0x3fd98bc9a61ffe90              # double 0.39915696356909169
	.quad	0x3fdd23fb25804a8a              # double 0.4553211084577603
	.quad	0x3fc01f1e1b23b0ac              # double 0.12594963383833624
	.quad	0x3fd4389c40502db8              # double 0.31595522194467263
	.quad	0x3fb50164e83d0a88              # double 0.082052523325765958
	.quad	0x3fe6ea866e053527              # double 0.7161285542330561
	.quad	0x3fc83d0adc34cf58              # double 0.18936286690006443
	.quad	0x3fd0a5b649066ee2              # double 0.26011426097259804
	.quad	0x3fe8e383d8394fed              # double 0.77777282935357805
	.quad	0x3fec73684ebea3e5              # double 0.88908782367536487
	.quad	0x3f9d61b85fe40480              # double 0.028693085529998275
	.quad	0x3fb35c8ec2ecbb20              # double 0.075631067837758525
	.quad	0x3fdd911a413b5050              # double 0.46198135729105605
	.quad	0x3fe002127bffd164              # double 0.50025295466052144
	.quad	0x3fc16661034bbc4c              # double 0.13593685780458242
	.quad	0x3fd7ee8b77ed262c              # double 0.37393461906012493
	.quad	0x3fc7f00721b095a0              # double 0.18701256890305462
	.quad	0x3fb44862668e3ce8              # double 0.079229497945778271
	.quad	0x3fe17200eeacb6f2              # double 0.54516646019120985
	.quad	0x3fe5b113c55a50ff              # double 0.67786587281673849
	.quad	0x3fabc3f34a4f27b0              # double 0.054229357548663315
	.quad	0x3fe07ba8555dc16e              # double 0.51509491608707747
	.quad	0x3fb41533470646c0              # double 0.078448490943880067
	.quad	0x3febcfc923d84e4d              # double 0.86911446572271134
	.quad	0x3fd3f63f103ea5ae              # double 0.31190468393705373
	.quad	0x3fdb960bf2fef1bc              # double 0.43103312234941504
	.quad	0x3feb40c5906051e1              # double 0.85165670584188657
	.quad	0x3fcaea72ce916af4              # double 0.21027979933099739
	.quad	0x3f96f66df4319480              # double 0.022424428967856347
	.quad	0x3fefcbaf3b0f4273              # double 0.99361382994727731
	.quad	0x3fd60085833c9de0              # double 0.34378183189480005
	.quad	0x3fee139be4cd9b5d              # double 0.93989367187610251
	.quad	0x3fe3b8d5b40b965e              # double 0.61631283917513335
	.quad	0x3fcfee3b51802f68              # double 0.24945775489356525
	.quad	0x3fc03e623d199e60              # double 0.12690380080606456
	.quad	0x3fd7a4762b23e21a              # double 0.36941293919474705
	.quad	0x3fd736ab5e83218a              # double 0.36271175603590022
	.quad	0x3fb49b13554b84f0              # double 0.080491264652227334
	.quad	0x3fe85f92e953eead              # double 0.76166673251960548
	.quad	0x3feb1c4b4f2c96f3              # double 0.84720387901026439
	.quad	0x3fc37510c93ee7b8              # double 0.15201005770160037
	.quad	0x3fe822d4538e5962              # double 0.75425163573781284
	.quad	0x3fcceb935d6ff788              # double 0.22593919813510532
	.quad	0x3fc2ce411e10fb00              # double 0.14691938369829671
	.quad	0x3fcb92a7c5818afc              # double 0.21541306632851576
	.quad	0x3fb77f601d4a34b0              # double 0.091787345076414394
	.quad	0x3feef81d728644ad              # double 0.9677874790960651
	.quad	0x3fd1478f1fb985b2              # double 0.26999261949648734
	.quad	0x3fe0d7b19ca2aa3e              # double 0.52632980912068894
	.quad	0x3fdb55f676c41ffc              # double 0.42712174986127116
	.quad	0x3fee918e8eb50e2b              # double 0.95526817200192704
	.quad	0x3fe37f306057a6a7              # double 0.60927599732277293
	.quad	0x3fe2d92168e7e3ed              # double 0.58900518884104047
	.quad	0x3fde9b2865bf60ba              # double 0.47822008072172262
	.quad	0x3fd81d8b1904455e              # double 0.37680318301234716
	.quad	0x3fdfdd8e45f5baa6              # double 0.49789769012469731
	.quad	0x3fca1dedaa399608              # double 0.20403834163441581
	.quad	0x3fd716d4c01ad930              # double 0.36076849708787773
	.quad	0x3fe5f14097f1b45b              # double 0.68569974590867433
	.quad	0x3fd6808b9eee70f2              # double 0.35159578819890591
	.quad	0x3feebcab6511546c              # double 0.9605309461573035
	.quad	0x3fe1b9778302ba62              # double 0.55388999546068995
	.quad	0x3fd38a5740c27b12              # double 0.30531865429104343
	.quad	0x3fcd1133db60cc78              # double 0.22708748065778983
	.quad	0x3fd6711a185dc462              # double 0.35065319423217123
	.quad	0x3fe3275cb463d870              # double 0.59855494720865288
	.quad	0x3fd776f18b2c0ee6              # double 0.36663473692918414
	.quad	0x3fc0321caccaf0e0              # double 0.12652929722924622
	.quad	0x3fddcde78d7a0436              # double 0.46569241348339874
	.quad	0x3fd7337f2522c0a4              # double 0.36251810671366003
	.quad	0x3fe201142e594aed              # double 0.56263169338703067
	.quad	0x3fc9f4697f26b8a4              # double 0.20277136524731987
	.quad	0x3fef928537d8713d              # double 0.98663578898734949
	.quad	0x3fc490e9cd4bebc0              # double 0.16067240261312854
	.quad	0x3fd74af687d9e70c              # double 0.36395037905423133
	.quad	0x3fe8e90d35fcb75c              # double 0.77844868225450225
	.quad	0x3fe6c5e7690ea066              # double 0.7116581966302078
	.quad	0x3fe39a5eabb413df              # double 0.61259397064042875
	.quad	0x3fce19b3a9ff3d88              # double 0.23515935707699165
	.quad	0x3fe594f38ba10f46              # double 0.67443253775898238
	.quad	0x3fe6fe44362c8b79              # double 0.71853838520870206
	.quad	0x3fdc61d43466dddc              # double 0.44347100369802006
	.quad	0x3fb4cb1a64d26d98              # double 0.081224107374899268
	.quad	0x3fd65780ac711c34              # double 0.34909073677085023
	.quad	0x3fc151f8bf6b1624              # double 0.13531407686802865
	.quad	0x3fd599f01a86ad10              # double 0.33752062406956984
	.quad	0x3fe26d75b7246cff              # double 0.5758617951391044
	.quad	0x3fe8d1186d617d57              # double 0.7755243431419484
	.quad	0x3fe7b4fc58a19465              # double 0.74084298430228712
	.quad	0x3feecdc7f45b4eeb              # double 0.96261975980675396
	.quad	0x3fbf591002d13828              # double 0.12245273655682409
	.quad	0x3fee31eddd587df3              # double 0.94359486800743608
	.quad	0x3fef281a06450841              # double 0.97364522194425984
	.quad	0x3fc29bc4998b50d0              # double 0.14537866112971765
	.quad	0x3fdb01dd07a2418c              # double 0.42198873277177351
	.quad	0x3fe637831c823851              # double 0.69427638595676389
	.quad	0x3fe21f6c21155594              # double 0.56633573972310325
	.quad	0x3feecfae75c29abd              # double 0.9628517436984435
	.quad	0x3fef6227d1b0bad3              # double 0.98073187785288451
	.quad	0x3fbc41ca12b2c9b8              # double 0.11037886578086542
	.quad	0x3fdca77b51d29230              # double 0.44772227278216103
	.quad	0x3fc22dd9f62e0c60              # double 0.14202427406789564
	.quad	0x3fef0f7ba6109e57              # double 0.97064001497796936
	.quad	0x3fee9c43ebb5d4fa              # double 0.95657535588421116
	.quad	0x3fc4b0c08dd7125c              # double 0.16164404798304843
	.quad	0x3fd19b72ef915798              # double 0.27511285205161462
	.quad	0x3f6c876b43203b00              # double 0.0034825415577935948
	.quad	0x3fd1a9be98e996be              # double 0.27598538334710188
	.quad	0x3fbce2ab7ec2c540              # double 0.11283370823618544
	.quad	0x3fe121e8028b7882              # double 0.53538895127327657
	.quad	0x3fb5d19e8782be30              # double 0.085229785998983897
	.quad	0x3fc64d2f8ffd6ce0              # double 0.17423052340277589
	.quad	0x3fe2bb715cfec9c5              # double 0.58538120425355855
	.quad	0x3fdeab89d7e3d920              # double 0.47921987612734718
	.quad	0x3fbe3c0bebf388d8              # double 0.11810373793153717
	.quad	0x3fd81677f9b1b1b8              # double 0.37637137779418195
	.quad	0x3fee6962c382c923              # double 0.95036447702139915
	.quad	0x3fe7d8ebbfe6c98e              # double 0.74522960167660002
	.quad	0x3fe08e2152a6b7ad              # double 0.51734987395115228
	.quad	0x3fe5f7a413987b17              # double 0.68647960498114713
	.quad	0x3f8842bd50707d80              # double 0.011846045510593539
	.quad	0x3fd825d92f01da06              # double 0.37731008139181232
	.quad	0x3fe78c8d433af95d              # double 0.73590720301562451
	.quad	0x3fc3d3b2871a44ec              # double 0.15489799114997227
	.quad	0x3fe049d024974c07              # double 0.50901038309746205
	.quad	0x3fcdea73b5c910f0              # double 0.23371740699997856
	.quad	0x3fdbe5818e101214              # double 0.43588293908422426
	.quad	0x3fea746fad21eb8e              # double 0.82671340765897283
	.quad	0x3fcaa926027baa18              # double 0.20828700181239479
	.quad	0x3fed7c1f091141b7              # double 0.92140151759126965
	.quad	0x3fed9eafa7115c90              # double 0.92562086706574753
	.quad	0x3fecaff8e8d00bdb              # double 0.89648099395014513
	.quad	0x3fdfe66061c55a86              # double 0.49843606517735173
	.quad	0x3fea537059fed95e              # double 0.82268540932890821
	.quad	0x3fb127c5d81bde48              # double 0.06701313520522334
	.quad	0x3fe3b0016be13d28              # double 0.6152350527790178
	.quad	0x3fda41beeb7d4c7a              # double 0.41026280400291848
	.quad	0x3fd37115966864aa              # double 0.30377711952457764
	.quad	0x3febe1b4e2d3a8cd              # double 0.87130207349880495
	.quad	0x3fd9d4b70abbc3a0              # double 0.40360809372128337
	.quad	0x3fa06b325e2970c0              # double 0.032067846292848312
	.quad	0x3fdb1f5501b5de06              # double 0.42378735701592551
	.quad	0x3feb4e9e48eb9616              # double 0.85334696047056258
	.quad	0x3feda7e648220653              # double 0.92674554909189977
	.quad	0x3fedf0202672ffbd              # double 0.93556220540630586
	.quad	0x3fb918d192b23e50              # double 0.098034952463643465
	.quad	0x3fb212bb49614840              # double 0.070598321356812654
	.quad	0x3fe2329e35d435ba              # double 0.56867895616021902
	.quad	0x3fea2ab8b0e27677              # double 0.81771502063538903
	.quad	0x3fd505f051b0db8c              # double 0.32848747232076714
	.quad	0x3fb2e07d78ec9f20              # double 0.073737947485480237
	.quad	0x3fbbc0d5e8481600              # double 0.10841118737160826
	.quad	0x3fe161f263433ac9              # double 0.54320639979581486
	.quad	0x3fe3c47680ffc518              # double 0.617732288314218
	.quad	0x3fd2a11ffece6c5e              # double 0.29108428843909973
	.quad	0x3fd627be8c8475ce              # double 0.34617580149082705
	.quad	0x3fdc6ffaf8cb2236              # double 0.44433473869551976
	.quad	0x3fdd58fefa1fded2              # double 0.45855688501567926
	.quad	0x3fd5fd57ba03812a              # double 0.34358781018638018
	.quad	0x3fb138aaa4a5db40              # double 0.067270913312182934
	.quad	0x3fc6f5f3e64c0884              # double 0.17938088173838562
	.quad	0x3fe57172ab2e730d              # double 0.67009862359881966
	.quad	0x3feae78d78ba21b8              # double 0.84076570109851101
	.quad	0x3fcb43aa11fc28f4              # double 0.21300245168851684
	.quad	0x3fa987a098f7bc70              # double 0.049862879441087027
	.quad	0x3fe4f573bd40ddc5              # double 0.65496241534759092
	.quad	0x3fc6b82e4d2fabc8              # double 0.17749575394495154
	.quad	0x3fcdb2c35ee2f4f0              # double 0.2320179189027054
	.quad	0x3fd460ed82774f0a              # double 0.31841600170922446
	.quad	0x3fdac20c04b84df8              # double 0.41809368573123562
	.quad	0x3fe13e3b9c78a442              # double 0.53884678421776067
	.quad	0x3fe121ed41f739a7              # double 0.53539145358972895
	.quad	0x3fd15854e97edf8c              # double 0.27101633837036654
	.quad	0x3fe86f2031bbf04b              # double 0.76356515611360842
	.quad	0x3fe5d005e4de4276              # double 0.68164343548603656
	.quad	0x3fea5b641d35ee73              # double 0.82365613656243253
	.quad	0x3fdbf065915ae5ec              # double 0.43654765314894806
	.quad	0x3fd4d72c7e2d996e              # double 0.32563316652376428
	.quad	0x3fc6e73c713e47dc              # double 0.17893176583726145
	.quad	0x3fe67bcfaa2e60b1              # double 0.7026136707163656
	.quad	0x3fe6e192fcde0692              # double 0.71503590953962459
	.quad	0x3fe121edba03e757              # double 0.53539167719939484
	.quad	0x3fdfe6197538bfea              # double 0.49841915557317285
	.quad	0x3fbbb53f28770018              # double 0.1082343553343893
	.quad	0x3fbd01c31f8bd598              # double 0.11330813903972226
	.quad	0x3fceda2739fe6b50              # double 0.24103250819902167
	.quad	0x3f9ac099af416020              # double 0.026125336953867984
	.quad	0x3fd2e4be12e3a5be              # double 0.29521133274701217
	.quad	0x3f9568b133115a60              # double 0.020907181493692639
	.quad	0x3fedabb0449535de              # double 0.92720807452286258
	.quad	0x3fef12ddd13a29db              # double 0.97105303635299422
	.quad	0x3f9494e8ef668740              # double 0.020099296199652672
	.quad	0x3fc28949c2493cd0              # double 0.14481470095277027
	.quad	0x3fe3b8853312da94              # double 0.61627445197412323
	.quad	0x3fda4e4f2b453f32              # double 0.41102961755403833
	.quad	0x3fe955aca0f3b8cb              # double 0.79170829235024465
	.quad	0x3fc2b4052f6f45e0              # double 0.14611878219743257
	.quad	0x3fd4df921c7c6bfe              # double 0.32614567548597495
	.quad	0x3fc5a0f300e3c924              # double 0.16897428077170062
	.quad	0x3fe69e09677ad7d0              # double 0.70679159365567479
	.quad	0x3fd6357c65c51290              # double 0.34701452196558424
	.quad	0x3fe6ce15b1ac7094              # double 0.71265682889817805
	.quad	0x3fe29de16fbd98ae              # double 0.58177253555620267
	.quad	0x3fd3bb5ad6382f6e              # double 0.30831023139830094
	.quad	0x3fd7ea6553f1aabe              # double 0.37368138501794224
	.quad	0x3feccbb1ea1f1d5e              # double 0.89986510969985622
	.quad	0x3fea334d9ad05f61              # double 0.81876259076214464
	.quad	0x3fd09a2d35552fa6              # double 0.25941019256856135
	.quad	0x3fe59cdb616e1699              # double 0.67539757756522356
	.quad	0x3fec2a77c043fa7f              # double 0.88018405486930351
	.quad	0x3fc8b465bc4e2680              # double 0.19300529188722138
	.quad	0x3fe86eaecde0c7f5              # double 0.76351108751828056
	.quad	0x3fe16bb3baa6003f              # double 0.54439722494863207
	.quad	0x3fe4f85e0fe16ee5              # double 0.65531828977279061
	.quad	0x3fa0a55c83ebe2f0              # double 0.032511607268991827
	.quad	0x3fd99a91e3fbe80e              # double 0.40005919708312454
	.quad	0x3febe1340d4bebd1              # double 0.87124064061151263
	.quad	0x3fa7c7d8b6abf3a0              # double 0.046446583079137627
	.quad	0x3fa5c57cbd810fa0              # double 0.042522333271818313
	.quad	0x3fe734a15bca0802              # double 0.72517459800315032
	.quad	0x3fbc4c3f53759318              # double 0.11053844249324773
	.quad	0x3fe1a9ec0e76e08f              # double 0.55199244332381336
	.quad	0x3fecaf99ae0cca8c              # double 0.89643558496602926
	.quad	0x3fe205461d572f47              # double 0.56314378481463556
	.quad	0x3feea1efd051cfee              # double 0.95726767241876387
	.quad	0x3fdb2f94b66b7498              # double 0.42477910818508624
	.quad	0x3fec90c868c2edab              # double 0.89267368756502685
	.quad	0x3fc5125152eb0f20              # double 0.16462151097049915
	.quad	0x3fe817b04b2fc508              # double 0.75289168057329992
	.quad	0x3fec606757cbbbc7              # double 0.88676802775977925
	.quad	0x3fd45273f1df1426              # double 0.31753252620939276
	.quad	0x3fedcbf0bdd2f4a4              # double 0.93114506793030615
	.quad	0x3fddd176a1099a12              # double 0.46590963102644978
	.quad	0x3fba89df2028abf0              # double 0.10366625342491864
	.quad	0x3fd2ea4ca16b8282              # double 0.29555049670856459
	.quad	0x3fe7d33be1c5bbe0              # double 0.74453538986369593
	.quad	0x3fd9e4e95ccc50f8              # double 0.40459665357890584
	.quad	0x3fde61ceab1de88c              # double 0.47471968374851126
	.quad	0x3fac49d6a38b5360              # double 0.05525084253682766
	.quad	0x3fe10131f522f742              # double 0.53139589193572356
	.quad	0x3fe058c6fb2f7848              # double 0.51083706912664528
	.quad	0x3fe15056466dbd0b              # double 0.54105676417921822
	.quad	0x3feec46457a83863              # double 0.96147362823991178
	.quad	0x3fe14f9179bdbc45              # double 0.54096292283600944
	.quad	0x3fe22ae39a4b1a51              # double 0.56773548255370987
	.quad	0x3fc2cc176c2223e8              # double 0.14685337810467947
	.quad	0x3fc972e60c50be2c              # double 0.19881892777765253
	.quad	0x3fec87edf5043e0a              # double 0.89159295897292279
	.quad	0x3fd5493d86757492              # double 0.33259523516410028
	.quad	0x3feb04c6483feb61              # double 0.84433282958285016
	.quad	0x3fe07cca72a06914              # double 0.51523325336464376
	.quad	0x3fdeb2fc1e5584d0              # double 0.47967436754522641
	.quad	0x3fd86207e92f6322              # double 0.38098333141310736
	.quad	0x3fefcf1bf36b5e6c              # double 0.99403188269475384
	.quad	0x3fe90066fe4507bc              # double 0.78129911100426552
	.quad	0x3fee617913622f48              # double 0.94939855371328807
	.quad	0x3fdfe65f4a533178              # double 0.4984358049230404
	.quad	0x3fc60e08478426c4              # double 0.17230323307039985
	.quad	0x3fe9a52a2ee2e015              # double 0.80141171605555661
	.quad	0x3fd607611ba5d08c              # double 0.3442003984448625
	.quad	0x3fef9969e9cd57c9              # double 0.98747726120449741
	.quad	0x3fdee59e452a41ee              # double 0.48276478533173772
	.quad	0x3fd410ad794fb7ea              # double 0.31351792189423
	.quad	0x3fd015da71c197e0              # double 0.25133381947523326
	.quad	0x3fe06532ce98044d              # double 0.51235332823137869
	.quad	0x3fe7aac863b8cb14              # double 0.73959750630305843
	.quad	0x3fc49538338831d0              # double 0.16080381885730199
	.quad	0x3fe275d548ae47f4              # double 0.57688392825570967
	.quad	0x3fdca3bc2ec56234              # double 0.4474935967205369
	.quad	0x3fcf7a4457883140              # double 0.24591879152320395
	.quad	0x3fee1c4d9146b3d0              # double 0.94095495580915589
	.quad	0x3fc2002b312243cc              # double 0.14063014887918113
	.quad	0x3f5c8b025ceae000              # double 0.0017421267581720912
	.quad	0x3fe453e93085e825              # double 0.6352430293766288
	.quad	0x3fe6e821bb9a756f              # double 0.71583639756469875
	.quad	0x3fea1a8486e27ea8              # double 0.81573702187229902
	.quad	0x3fe734ad062c0dcb              # double 0.72518016057477419
	.quad	0x3fd38cdfa4313382              # double 0.30547324213403482
	.quad	0x3fd0b646812d187c              # double 0.26112520804270622
	.quad	0x3fe3aa450290ff02              # double 0.61453485966919197
	.quad	0x3fdc195acf5b349c              # double 0.43904752969394578
	.quad	0x3fa2e9a5fed28fd0              # double 0.03693884597421937
	.quad	0x3fd862cbb06d2016              # double 0.38103000859382641
	.quad	0x3fe27400785a0827              # double 0.5766603804224858
	.quad	0x3fdfbf81a4dff666              # double 0.49606362439212714
	.quad	0x3fe3550c2b2a3e87              # double 0.60413177900950721
	.quad	0x3fd7e45624c11b3c              # double 0.37331155385293235
	.quad	0x3fecfeee80abfda6              # double 0.90611958628862932
	.quad	0x3fe9b785c7bc22fe              # double 0.80365265856480028
	.quad	0x3fa4210e87e96080              # double 0.039314703074240676
	.quad	0x3fdddbf17077d514              # double 0.46654926284038933
	.quad	0x3fe322f398b48da1              # double 0.59801654649020375
	.quad	0x3fe374376057e532              # double 0.60793656174715793
	.quad	0x3fe9397e9ee35cde              # double 0.78826838524664899
	.quad	0x3febf6bf0cc053f2              # double 0.87387039652332832
	.quad	0x3fe97b0109af6704              # double 0.796265143314685
	.quad	0x3fdb8a655c6cbb2a              # double 0.43032201791622759
	.quad	0x3fe7583d72015239              # double 0.72952148691781027
	.quad	0x3fea1abc68b76947              # double 0.81576366856033011
	.quad	0x3fd19e6e01ab104a              # double 0.2752947822848496
	.quad	0x3fe462b807762427              # double 0.63705064256021593
	.quad	0x3fd391fafb6283a2              # double 0.30578493642138416
	.quad	0x3fd6f5e71f8ac468              # double 0.35875871734885445
	.quad	0x3fe569ae0aab0acd              # double 0.66915037234897456
	.quad	0x3fe0f7f05fa783aa              # double 0.53026598627558497
	.quad	0x3fe2edec2f20fa8c              # double 0.59154328541610957
	.quad	0x3fef7d66d6940507              # double 0.98405782613568326
	.quad	0x3fe880b7eb2f0d5b              # double 0.76571269926391083
	.quad	0x3fb0e59014a31038              # double 0.066002850569078286
	.quad	0x3fc19cb5cbd9f77c              # double 0.1375949139946292
	.quad	0x3f8142b5f1e66880              # double 0.0084280218550711883
	.quad	0x3feb734b6dc33438              # double 0.85782405317298238
	.quad	0x3f9636b53037e700              # double 0.021693068569198282
	.quad	0x3fe656441fe214f8              # double 0.69803053118871983
	.quad	0x3fd6fc455c583860              # double 0.35914739625957814
	.quad	0x3fed7bacc0cd4b7c              # double 0.92134702355029629
	.quad	0x3fdcd63d96892250              # double 0.45057620716810209
	.quad	0x3fe752a04363f002              # double 0.72883618509467873
	.quad	0x3fddedd0d714e454              # double 0.46764012340606098
	.quad	0x3fd802d302d859e4              # double 0.37517237928241642
	.quad	0x3fd9aa41700c0e6a              # double 0.40101657812213054
	.quad	0x3fd028d5f0c3cc84              # double 0.25249241363707875
	.quad	0x3f9966499f6be660              # double 0.024804258685412583
	.quad	0x3fe88aeabf4c9fb0              # double 0.7669576393427544
	.quad	0x3fe86dbc05d5f14d              # double 0.76339532031810509
	.quad	0x3fe29d5983db8878              # double 0.58170772317340802
	.quad	0x3fb853bb40b01d10              # double 0.09502764062209601
	.quad	0x3fcca61cf7b96dc4              # double 0.22381937118448836
	.quad	0x3fa48a30adb03310              # double 0.040116807176764024
	.quad	0x3fd7fc4635370f64              # double 0.37477259823594111
	.quad	0x3fdcb0b6d02e20a6              # double 0.44828577356430299
	.quad	0x3fa07247f74358e0              # double 0.032121895726662464
	.quad	0x3faa397ce1a01d70              # double 0.051219847242516603
	.quad	0x3fc457fe05303a20              # double 0.15893531087245183
	.quad	0x3fcb70bdbc241bd8              # double 0.21437808691572857
	.quad	0x3fd27b414dce370a              # double 0.28877289388843563
	.quad	0x3fec44c7b0cd5ccf              # double 0.88339600116423778
	.quad	0x3fe53fb9e594660b              # double 0.66402907218724871
	.quad	0x3fe67f25a19d08e0              # double 0.70302087369080013
	.quad	0x3fec196cde8c8afd              # double 0.87810367075539342
	.quad	0x3fcaafc3e6680d2c              # double 0.20848892927470197
	.quad	0x3fedd6ad31a9c2b1              # double 0.93245563220815175
	.quad	0x3fd33d3b76fd9f84              # double 0.30061232204615629
	.quad	0x3fece8a426bf8957              # double 0.90339858596807232
	.quad	0x3fdd08b33f6940c4              # double 0.45365601723188953
	.quad	0x3fe97dd1ce4f0db6              # double 0.79660883230865553
	.quad	0x3fe271524ded96d2              # double 0.57633319111183767
	.quad	0x3fef240aa5cc8dd0              # double 0.97314960844635756
	.quad	0x3f9b47452269c3c0              # double 0.026639061189090318
	.quad	0x3fda3210373fe57c              # double 0.40930562396496106
	.quad	0x3fd766852f6d3e40              # double 0.36563233977810583
	.quad	0x3fefd34591f0646d              # double 0.99454000953404675
	.quad	0x3fea11fa01233048              # double 0.81469440672072668
	.quad	0x3fe51478a48105bf              # double 0.65874893312155069
	.quad	0x3fdf7d4b6a75ea3a              # double 0.49202237507384761
	.quad	0x3fd8c7a30a4b1a66              # double 0.38718486790859286
	.quad	0x3fafbfe1dd09dc80              # double 0.062010820610276518
	.quad	0x3feded177c9e598c              # double 0.93519186343728355
	.quad	0x3fe310146fa62198              # double 0.59571286970553938
	.quad	0x3fa3d0527ad2ab40              # double 0.038698747151406199
	.quad	0x3fb81122982a3440              # double 0.094011461400627105
	.quad	0x3fe9d90433ae9de3              # double 0.80774126142653946
	.quad	0x3fdc66c056722348              # double 0.44377144281365988
	.quad	0x3fd3c244dfb331aa              # double 0.30873224111271702
	.quad	0x3fd94224000a8828              # double 0.39466190341966234
	.quad	0x3febc5b17715a855              # double 0.86788247355185411
	.quad	0x3fefa5f4dc04ef0e              # double 0.98900835964693257
	.quad	0x3feea9cab2338b65              # double 0.95822653584432926
	.quad	0x3fe3504e9790a2ec              # double 0.60355310061012579
	.quad	0x3feb136e8dcc37a1              # double 0.84612205214374481
	.quad	0x3fdaed07d2ad3954              # double 0.4207171971692294
	.quad	0x3fd4ea31c84aa8b8              # double 0.32679409560899897
	.quad	0x3fa12b52c6b53dd0              # double 0.033533655887932334
	.quad	0x3fe6ffb4a167f381              # double 0.71871406101819002
	.quad	0x3fdfec9ee6c06060              # double 0.49881718191455171
	.quad	0x3fd7faa88587b5b2              # double 0.37467396774340067
	.quad	0x3fd1bc9c5efce418              # double 0.27713689113767392
	.quad	0x3fecb079dd00b0fb              # double 0.89654248394575065
	.quad	0x3fe9ab4b446cd40f              # double 0.80215991367606587
	.quad	0x3fb838fbda9744f0              # double 0.094619503847997554
	.quad	0x3fdb31fa87e087e4              # double 0.42492545384641134
	.quad	0x3fea52733a57bb5d              # double 0.82256471056994551
	.quad	0x3fecb09cfb94df51              # double 0.89655923020380091
	.quad	0x3fd0dafd08c402ec              # double 0.26336599212667866
	.quad	0x3fb159348b1ada20              # double 0.067767414055972086
	.quad	0x3fd812bf6eb80454              # double 0.37614427387604121
	.quad	0x3fc853d498b60764              # double 0.19005830246538402
	.quad	0x3fb0ebdc79afaf28              # double 0.066098956783829821
	.quad	0x3fdad5c213449d7a              # double 0.41929675943034506
	.quad	0x3fe1025ca92fd081              # double 0.53153832477848095
	.quad	0x3febf8e6affa3752              # double 0.87413343782984954
	.quad	0x3fa523d5ce9b79e0              # double 0.041289025755520958
	.quad	0x3fe28e50a58cca63              # double 0.57987243970849212
	.quad	0x3fbc16d60f808870              # double 0.10972345236271663
	.quad	0x3fee6691c2bd8b20              # double 0.95002067599520856
	.quad	0x3fe5ee08395962bf              # double 0.68530665589340589
	.quad	0x3fd774b14800ddae              # double 0.36649734527187661
	.quad	0x3fd8a77a8a7f0cb2              # double 0.38522208714511941
	.quad	0x3fd22207dfcda888              # double 0.28332707267566848
	.quad	0x3fe4f8725c6d08dd              # double 0.65532796909272018
	.quad	0x3fd26294cdae95ce              # double 0.28726692281847199
	.quad	0x3fe57f475ca987b6              # double 0.67178695772258012
	.quad	0x3fd5f5e4a9b97104              # double 0.34313313078543239
	.quad	0x3fe8cdafa7d1fde8              # double 0.77510817315481706
	.quad	0x3feca90a6015b18d              # double 0.89563483015585776
	.quad	0x3fdd6b5dcd5774a0              # double 0.45967812588589574
	.quad	0x3fd50d2ad8738edc              # double 0.3289286721976461
	.quad	0x3fd6b37130765fbe              # double 0.35470227940231414
	.quad	0x3fdb5e670643b2bc              # double 0.42763686763536746
	.quad	0x3faf4a4927fa4e60              # double 0.061113630418870413
	.quad	0x3fe69b178bac52b3              # double 0.70643212585362958
	.quad	0x3fd09d6a859a0554              # double 0.25960791632686164
	.quad	0x3fec298979a0460c              # double 0.88007043604938095
	.quad	0x3fd5d01f91ae63c6              # double 0.34082783915215165
	.quad	0x3fe10b5ac360804c              # double 0.53263605269968073
	.quad	0x3fcacdcca49c3f94              # double 0.20940549886335857
	.quad	0x3fb8d91f1e98cef0              # double 0.097063012094448231
	.quad	0x3fe6a217d8ce1baf              # double 0.70728676171062499
	.quad	0x3fce3691aee388ec              # double 0.23604031600468234
	.quad	0x3fef3f075c77eee2              # double 0.97644393978358957
	.quad	0x3fed54e3964d6c28              # double 0.91661242824500722
	.quad	0x3fd2c9def65c6612              # double 0.29357122477230846
	.quad	0x3fe62b2b458a9165              # double 0.69276965696603254
	.quad	0x3fe126d0519c1f63              # double 0.53598800601410479
	.quad	0x3fd6c7e95157c7b6              # double 0.35595162337915143
	.quad	0x3fdf0df141d21b62              # double 0.48522597720914551
	.quad	0x3fcd5c5890714664              # double 0.2293806748662518
	.quad	0x3fcf929dd63ba9ac              # double 0.24666188202475092
	.quad	0x3fe0453a7f3bf05a              # double 0.50845074510972244
	.quad	0x3fec8c97347c18f1              # double 0.89216194392136405
	.quad	0x3fee78ddc0104743              # double 0.95225417625827224
	.quad	0x3fe013542d289cee              # double 0.50235947437331929
	.quad	0x3fee335fdc66bb22              # double 0.94377129599692844
	.quad	0x3fc65ed21dcd3690              # double 0.17476870017201351
	.quad	0x3fe33c872ab8505a              # double 0.60113867133851362
	.quad	0x3fd7855504936bf4              # double 0.36751294562208092
	.quad	0x3fed128fae92b9e1              # double 0.90851577850645182
	.quad	0x3fe70e2bd6314622              # double 0.72047988733737989
	.quad	0x3fee2c57c87a70bd              # double 0.94291295200266456
	.quad	0x3feaf29fe443d472              # double 0.84211725790977554
	.quad	0x3fed0488c463e5f5              # double 0.90680349690882045
	.quad	0x3fe9d01a61f8ea0c              # double 0.80665320525378225
	.quad	0x3fd8cf879d358ee0              # double 0.38766661026441618
	.quad	0x3fbc6ecbdf367f78              # double 0.11106561851056351
	.quad	0x3fdaff5920daf8a8              # double 0.42183521469622542
	.quad	0x3fef220f4d996806              # double 0.97290768772222758
	.quad	0x3fea9898225acc65              # double 0.83112723073862738
	.quad	0x3fe365ff6f83c999              # double 0.60620090275033356
	.quad	0x3fd694a90db64c24              # double 0.3528235086352558
	.quad	0x3fdb2b9ee77b789a              # double 0.42453739743894803
	.quad	0x3feeb52389717862              # double 0.95961167187102725
	.quad	0x3fe7113f2a5e6605              # double 0.72085531497140265
	.quad	0x3fea960d46c2ba53              # double 0.83081687756004852
	.quad	0x3fdf97fbb6296740              # double 0.49365132130843747
	.quad	0x3fadb298c18e91d0              # double 0.058003209712555681
	.quad	0x3fe13e57e5a03d22              # double 0.53886027191939356
	.quad	0x3fca4273542d933c              # double 0.20515290842299716
	.quad	0x3fe9ceff71d0f858              # double 0.8065182898497012
	.quad	0x3fe8eba45653dd4a              # double 0.77876488552912204
	.quad	0x3fe697efad24a4b4              # double 0.70604690377253698
	.quad	0x3fbc6f307e0a2bb8              # double 0.11107161595479809
	.quad	0x3fe1acc4abee5e1a              # double 0.55233987407968077
	.quad	0x3fe01f275018254e              # double 0.50380292552396511
	.quad	0x3faf91d3aba62970              # double 0.061659445479636754
	.quad	0x3fec5fc8941d0a6b              # double 0.88669232300192158
	.quad	0x3fd764bb87c22b66              # double 0.36552322633422418
	.quad	0x3fd31b6004c054de              # double 0.29854584182733201
	.quad	0x3fd52713068b8a64              # double 0.33050990714233408
	.quad	0x3fd589d049d52d88              # double 0.3365364762327876
	.quad	0x3f932938bcfa7ca0              # double 0.01871193555291184
	.quad	0x3feb1838ef2584a0              # double 0.8467068358260299
	.quad	0x3fa7e0b06b1a6910              # double 0.046636117052189729
	.quad	0x3fbd5b92dcd7f4a0              # double 0.11467855350197675
	.quad	0x3fc14a53fdb46ec8              # double 0.13508081329279364
	.quad	0x3fe83de401d0b31b              # double 0.75755501131570513
	.quad	0x3fc16283cd85ebec              # double 0.13581893477734697
	.quad	0x3fda27a24099cede              # double 0.40866905506775975
	.quad	0x3fda793e4056aeac              # double 0.41365009577814749
	.quad	0x3fdfb1979b2bbc4e              # double 0.49521436837580246
	.quad	0x3fdef16036923b28              # double 0.48348241166324835
	.quad	0x3fcba30326e72a60              # double 0.21591224097786021
	.quad	0x3fbe780ca8ec9718              # double 0.11901930927396298
	.quad	0x3fdd3ee84c14bfbc              # double 0.45696456365385152
	.quad	0x3fed50a41aaa9d1d              # double 0.91609387596409741
	.quad	0x3fe7cfe00bfe3bd3              # double 0.74412538854982768
	.quad	0x3fdfaaa9d05fed5c              # double 0.49479146336644475
	.quad	0x3fe696cf98eb0b32              # double 0.70590953699897896
	.quad	0x3fd892644b52c782              # double 0.38393504482075269
	.quad	0x3f9d67a61bff3960              # double 0.028715701540755645
	.quad	0x3fd165091683bfec              # double 0.27179171751686115
	.quad	0x3fe01762bbc919ef              # double 0.50285469700685137
	.quad	0x3fd576853cff59f6              # double 0.335358914916838
	.quad	0x3fb9485a8f2a2418              # double 0.098760280563638836
	.quad	0x3fe3e829552d33cc              # double 0.62209002147721426
	.quad	0x3fda81cdce9da406              # double 0.41417260339090978
	.quad	0x3fe6e6fa5f3bdfba              # double 0.71569555855148015
	.quad	0x3fe1c0e14ea6a2bc              # double 0.5547949348593515
	.quad	0x3fe3bdc1179d812c              # double 0.61691336262086827
	.quad	0x3feb88f964df2d16              # double 0.86047048284072747
	.quad	0x3fde5bf332766724              # double 0.47436218193034763
	.quad	0x3fe399cb09549d24              # double 0.61252357313506822
	.quad	0x3fca978e6a942ac4              # double 0.20775013164560197
	.quad	0x3fe7a9df1140770e              # double 0.73948624963279186
	.quad	0x3feb5a9b814b51ad              # double 0.85481047871376392
	.quad	0x3fe03edb2b245706              # double 0.50767286707079573
	.quad	0x3fc3aa2d23682220              # double 0.15363086918684221
	.quad	0x3fcca4d8164fedf8              # double 0.22378064240898232
	.quad	0x3fe8930552a86826              # double 0.76794687408551421
	.quad	0x3fdb9e284081ea44              # double 0.43152815150793722
	.quad	0x3fdf96b7c31536c2              # double 0.49357408572255335
	.quad	0x3fdf812cfe637916              # double 0.49225926249154506
	.quad	0x3fe895e3277e8a87              # double 0.76829679216128077
	.quad	0x3fe0741dadbf3f12              # double 0.51417430815669918
	.quad	0x3feb16ec3d58ef5d              # double 0.84654819471277742
	.quad	0x3fb8b0ab64ee89a8              # double 0.096445762769269749
	.quad	0x3fc183ee9d2c58e4              # double 0.13683874773477733
	.quad	0x3feaafd19fd46e68              # double 0.83396226135978413
	.quad	0x3feeab3f92c6a2dd              # double 0.95840433756992704
	.quad	0x3fea2381a802b430              # double 0.81683428587496643
	.quad	0x3fe38b17492a9bf4              # double 0.61072887697525724
	.quad	0x3fe8af3839ce50f5              # double 0.77138911524028109
	.quad	0x3fb5b9198ad41390              # double 0.084855648416193085
	.quad	0x3fe1128542e1fa0e              # double 0.53351080954581831
	.quad	0x3fe2d83348d67fc8              # double 0.58889164186620579
	.quad	0x3fe787e245993a3c              # double 0.73533738702264584
	.quad	0x3fcaee1cece41f20              # double 0.21039163176487197
	.quad	0x3fc71e3f326e2480              # double 0.18061056101240425
	.quad	0x3fb974f8fdeb1708              # double 0.09944111060312022
	.quad	0x3feb63f4644dce7b              # double 0.85595149603473375
	.quad	0x3fd0ae34f0d93ae6              # double 0.26063273926130959
	.quad	0x3fe2e87a782da3ed              # double 0.59087871048279583
	.quad	0x3f9d4376b2069ee0              # double 0.028577665916286743
	.quad	0x3fb01b3b8b3b7be0              # double 0.062915536396288996
	.quad	0x3fcee42785771610              # double 0.24133771912436019
	.quad	0x3fea319ff79c76df              # double 0.81855772363243406
	.quad	0x3fe96dff819d8a68              # double 0.79467749896532514
	.quad	0x3fe1900d1d423fb2              # double 0.5488343783817895
	.quad	0x3fb641a550420c58              # double 0.086939174741972436
	.quad	0x3fe112d18f676592              # double 0.53354719170163123
	.quad	0x3fd01419e7104d9c              # double 0.25122687878430283
	.quad	0x3fe65018fc0c82a6              # double 0.69727753856939922
	.quad	0x3fd3ed17bef6bb4e              # double 0.31134599350746306
	.quad	0x3fe0d569b50fb54d              # double 0.52605138171717558
	.quad	0x3fb4db55aca9ab28              # double 0.08147178140067679
	.quad	0x3fcf64d15115ef9c              # double 0.24526421031248169
	.quad	0x3fd24f0d7ab052dc              # double 0.2860749910480942
	.quad	0x3fe5493188f3a144              # double 0.66518475292563339
	.quad	0x3fe4b887a434d448              # double 0.64752561637454509
	.quad	0x3fde326df655a814              # double 0.47182797485459216
	.quad	0x3feecd4d5baf14e1              # double 0.96256130129827621
	.quad	0x3fe80f00d71c8be8              # double 0.75183145536391027
	.quad	0x3fe5626d88cd5c26              # double 0.66826512068917476
	.quad	0x3fe759c4670556ca              # double 0.72970790978680466
	.quad	0x3fe5808aae35a134              # double 0.67194112801829542
	.quad	0x3fe5666ba1f673ed              # double 0.66875249512997714
	.quad	0x3fe6d4192684fecb              # double 0.71339089892713881
	.quad	0x3fe5a156c2ce2aee              # double 0.67594469116133182
	.quad	0x3fe417677c613106              # double 0.62785696308995464
	.quad	0x3fec708ec7dcc4bb              # double 0.88873995814915163
	.quad	0x3fc1691a54a67c60              # double 0.13601998456303743
	.quad	0x3fd11b49141bf0fe              # double 0.26729037250312604
	.quad	0x3fb6907b4f8dbd18              # double 0.088142115518838771
	.quad	0x3fbb0bfd804a10c0              # double 0.10565170652450018
	.quad	0x3fe594d1daf12162              # double 0.67441647302716157
	.quad	0x3febe7975fd8493e              # double 0.87202042312336636
	.quad	0x3fed377e3ade6d61              # double 0.91302405832122357
	.quad	0x3fc45dfd2106f1a4              # double 0.15911831009533473
	.quad	0x3fa6ada953ab8310              # double 0.044293681586856093
	.quad	0x3fe914654a500084              # double 0.78373970522081082
	.quad	0x3fd43ad2905a0286              # double 0.31609024140201603
	.quad	0x3f9556ddf5aa93e0              # double 0.020839183921129378
	.quad	0x3fe42bdf03e6f6a1              # double 0.63035536539219461
	.quad	0x3fe1782ac8aa10c7              # double 0.54591883842706401
	.quad	0x3fd9ccbc7cbef1d2              # double 0.40312111074652279
	.quad	0x3feef116ff6bfb74              # double 0.96692991149016771
	.quad	0x3fcd1d65e22a6308              # double 0.22745965522042177
	.quad	0x3fd0cdb8a0b7ae6c              # double 0.26255622572964543
	.quad	0x3fd492f14d7d6238              # double 0.32146866385804485
	.quad	0x3fdf61903236d414              # double 0.49032978919723402
	.quad	0x3fe66b6527a733ee              # double 0.70060975785020019
	.quad	0x3fe0d54a1e0976ad              # double 0.5260363184604181
	.quad	0x3fe22421190df6d4              # double 0.56691031354395216
	.quad	0x3fdee24e794668be              # double 0.48256265490784844
	.quad	0x3fe186c21c19ff8f              # double 0.54769998062691794
	.quad	0x3fd690998d01547a              # double 0.35257567186392402
	.quad	0x3fe1e938298d8330              # double 0.55971916309144909
	.quad	0x3fe8b400a994b1bb              # double 0.77197297211892335
	.quad	0x3fdfd9bc85e733ee              # double 0.49766457630613459
	.quad	0x3fd73de715c8f7b8              # double 0.36315323951191258
	.quad	0x3fa8fc04dc85fdc0              # double 0.048797752303467501
	.quad	0x3fd70315e1280a48              # double 0.35956332195215568
	.quad	0x3fd331e97775a548              # double 0.29992138544055935
	.quad	0x3fd818a00941de86              # double 0.37650299934419029
	.quad	0x3fee9b1f8c8a9590              # double 0.95643594216805816
	.quad	0x3fec68678fffb5ab              # double 0.88774469494608377
	.quad	0x3fce9e309c0c5390              # double 0.23920257205523088
	.quad	0x3fd174ec94754a16              # double 0.27276148317210536
	.quad	0x3fec40980e4ddc91              # double 0.88288500589159657
	.quad	0x3fe285c0f72da612              # double 0.57882736470236495
	.quad	0x3fc9053e0fa3b100              # double 0.19547248614924939
	.quad	0x3fe71da8e28f090b              # double 0.72237056970360081
	.quad	0x3fec49b6aa1e4f40              # double 0.88399823404549949
	.quad	0x3fc87adba680a274              # double 0.19124932889942026
	.quad	0x3f87e645b33dab40              # double 0.011669678242204662
	.quad	0x3fe87091e097cf3c              # double 0.76374143472501243
	.quad	0x3fc0916ef9791ffc              # double 0.12943827801996111
	.quad	0x3fead991c4c23dd1              # double 0.83905876569218141
	.quad	0x3fd06fd24fec10e4              # double 0.25682504467864775
	.quad	0x3fef6d3bbb39cd09              # double 0.98208414619003392
	.quad	0x3fc31eb19718352c              # double 0.14937419774688843
	.quad	0x3fe5b650d14e52ac              # double 0.67850533371036681
	.quad	0x3fea30728ad913b3              # double 0.81841399306050844
	.quad	0x3fe00f3b7677ec53              # double 0.50185940874451729
	.quad	0x3fbcb79611652d90              # double 0.11217630314529559
	.quad	0x3fe37e4b7ed3ce44              # double 0.60916685839624352
	.quad	0x3fda599d597db5c4              # double 0.41171964396820848
	.quad	0x3fce72c47fa44ab4              # double 0.2378774283648305
	.quad	0x3feacd685c641a79              # double 0.83757417721865501
	.quad	0x3fe29e68c3dea9b6              # double 0.58183706527534329
	.quad	0x3feb7d71666f3639              # double 0.85906286246035457
	.quad	0x3fe2b5ed456f7871              # double 0.58470786630256388
	.quad	0x3feeefd372f5d6df              # double 0.96677563145814449
	.quad	0x3fe64def6ff4d6a4              # double 0.69701358667835622
	.quad	0x3fca2b485f7b46b4              # double 0.20444588339028302
	.quad	0x3fe73e1e9e5c84f8              # double 0.72633295946084697
	.quad	0x3fd9e9409c43285a              # double 0.40486159572595215
	.quad	0x3fcd5bbb8cfa9228              # double 0.22936195739488707
	.quad	0x3feea27ce8f42f48              # double 0.95733495234296928
	.quad	0x3fd7b9555b09bb9a              # double 0.37068685427123571
	.quad	0x3feef1d62c53073d              # double 0.96702107102485224
	.quad	0x3fe1879b995335ff              # double 0.54780368753716846
	.quad	0x3fb9f6319debd610              # double 0.10141286950587181
	.quad	0x3fe991a929b4fa22              # double 0.79903085847746902
	.quad	0x3fe7219bd7ac01f8              # double 0.72285263179224923
	.quad	0x3fd107e87d2b9df2              # double 0.26610767577810102
	.quad	0x3fe6b78ea13fa0ec              # double 0.70990687841279287
	.quad	0x3fe0bb7559d90a69              # double 0.52288310573960672
	.quad	0x3feb9329821fd24b              # double 0.8617141286363873
	.quad	0x3fe781e98cff26e6              # double 0.73460843599715697
	.quad	0x3fdc47ee7ccfb1f0              # double 0.44189035595516568
	.quad	0x3fe6289234f5333b              # double 0.69245252936671109
	.quad	0x3fec10d8ae77fea1              # double 0.87705644679950379
	.quad	0x3fee14b91a3d3f66              # double 0.94002966999867676
	.quad	0x3fcd6e758c538040              # double 0.22993344642509506
	.quad	0x3fd44f34fc4db060              # double 0.31733441008578289
	.quad	0x3fe34018a9650e8a              # double 0.60157425961411204
	.quad	0x3fa9ba81c6e85210              # double 0.050251060038281392
	.quad	0x3fc5362aa431b9d8              # double 0.16571553246781323
	.quad	0x3fef5f735109fea0              # double 0.98040166690767094
	.quad	0x3fe4df20541a2918              # double 0.65223709512909789
	.quad	0x3fe8fbf5050043ef              # double 0.7807564828564163
	.quad	0x3fd892567ebfb2d8              # double 0.38393175485434261
	.quad	0x3fe2f64c78857f6d              # double 0.59256576098776537
	.quad	0x3feaec3ba1068272              # double 0.84133702707556624
	.quad	0x3fb40412697767d8              # double 0.078187132595672337
	.quad	0x3fefe6747649bdf6              # double 0.99688170531402309
	.quad	0x3fd057459bff58a6              # double 0.25532665475965144
	.quad	0x3fe0ae730fa62321              # double 0.52129509979667799
	.quad	0x3fef5140500f99a8              # double 0.97866836201574347
	.quad	0x3fb7bb3fa17cf018              # double 0.092700936246672305
	.quad	0x3febc290f9d96735              # double 0.86750077055623953
	.quad	0x3fecb64b5c50bc31              # double 0.89725273161264429
	.quad	0x3fe9d274f455a398              # double 0.80694053384387399
	.quad	0x3feb38947ecf2f93              # double 0.85065674560017823
	.quad	0x3fd277c231c97954              # double 0.28855948316585978
	.quad	0x3fd595b48422440a              # double 0.3372622766847263
	.quad	0x3fed07615f0d2874              # double 0.90715092243887207
	.quad	0x3fe8bda083eec891              # double 0.7731478287517054
	.quad	0x3fde0149757f5a94              # double 0.46882854914057615
	.quad	0x3fe9138aafcf9518              # double 0.78363546693859387
	.quad	0x3fd780248f767cee              # double 0.36719621667903268
	.quad	0x3fce59417cc6b1a4              # double 0.23709887116036754
	.quad	0x3fd2fa3c49494f10              # double 0.29652316243049004
	.quad	0x3fe504aad070fb42              # double 0.656819731819134
	.quad	0x3fe15c39b791d33d              # double 0.54250799039309749
	.quad	0x3fe95eba090ef77d              # double 0.79281331795912957
	.quad	0x3fe8a5d637c9326e              # double 0.77024374862373945
	.quad	0x3fced15b9d7381d0              # double 0.24076409519240238
	.quad	0x3feb63df88039bbc              # double 0.8559415489697737
	.quad	0x3fa5b5d452ea0ec0              # double 0.042402873154995913
	.quad	0x3feb93133a1916c9              # double 0.86170350405947105
	.quad	0x3fe0376791207115              # double 0.50676325173438619
	.quad	0x3fcbd50fc2cec9d4              # double 0.21743962299440389
	.quad	0x3fdc3ced72e53fa6              # double 0.44121872158302222
	.quad	0x3fdabc7efa63675e              # double 0.41775488330823929
	.quad	0x3fd60bf5f6f01cc0              # double 0.34448002924950671
	.quad	0x3fe1d2a510bc7b02              # double 0.55696347492980203
	.quad	0x3fe5b0129a1876bd              # double 0.67774324509419837
	.quad	0x3fe48e90838d891c              # double 0.64240289396210271
	.quad	0x3feda91a90e62986              # double 0.92689255047416519
	.quad	0x3fd06b789dc08fae              # double 0.25655951886642014
	.quad	0x3fedf3d5766e3c64              # double 0.93601487284639661
	.quad	0x3fec81aec409b97c              # double 0.89083040512723199
	.quad	0x3fb75d61d1f5bc08              # double 0.09126864791845446
	.quad	0x3feeb5da1b637c85              # double 0.95969872807826617
	.quad	0x3fd4e541324e9b4c              # double 0.32649259484098958
	.quad	0x3fe3b1b90bf97788              # double 0.61544468249097495
	.quad	0x3fe1501c50aae7a2              # double 0.54102912669553782
	.quad	0x3fd21f52a1a20738              # double 0.28316179069962599
	.quad	0x3fe708f4dacfeec4              # double 0.71984331833615345
	.quad	0x3fd390c4afeac0a0              # double 0.30571095637697887
	.quad	0x3fc4534cdf6ed160              # double 0.15879212293442446
	.quad	0x3f9bc2d453cd0c60              # double 0.027110402693562796
	.quad	0x3fe00a6ff42630ee              # double 0.50127408681285401
	.quad	0x3fc4dd7d1cab2584              # double 0.16300929927664864
	.quad	0x3fead3b50c3be74e              # double 0.83834316625073213
	.quad	0x3fe1617f18adebfa              # double 0.5431514246005229
	.quad	0x3feb3462fbe33659              # double 0.85014485546862339
	.quad	0x3fcad393b4227824              # double 0.20958181663166997
	.quad	0x3fe71c6e2c2b135b              # double 0.7222205031072052
	.quad	0x3fed3cc93a381d19              # double 0.91367017146049812
	.quad	0x3fe1bd14e325f995              # double 0.55433124890241692
	.quad	0x3fedfbc36ed489c0              # double 0.93698283812073412
	.quad	0x3fef75aff55cd0fc              # double 0.9831161300885749
	.quad	0x3fd720c7d4b26812              # double 0.36137576838666619
	.quad	0x3fc2d7e13fb84550              # double 0.14721313105887157
	.quad	0x3fd68db0ad7b4b38              # double 0.3523980802685176
	.quad	0x3fd5108d635d4632              # double 0.32913527205991777
	.quad	0x3fd70eb33433612a              # double 0.36027221772885076
	.quad	0x3fd4d6002f1e5e0c              # double 0.32556156732013686
	.quad	0x3fdb140f49334cfa              # double 0.42309934757686529
	.quad	0x3fed8f107f69f797              # double 0.92371392140897768
	.quad	0x3fd0d6b4cf8e7bda              # double 0.26310463208386425
	.quad	0x3fe99a1fea7ac89e              # double 0.80006404682923793
	.quad	0x3fe07de74f155385              # double 0.51536908575018059
	.quad	0x3fd4e2a1de5584be              # double 0.32633253776846149
	.quad	0x3fd9c96319eac562              # double 0.40291669398273744
	.quad	0x3fe7f6a530684d28              # double 0.74885806517196318
	.quad	0x3fe47c280e1b8d08              # double 0.64015581851381942
	.quad	0x3fe1f035f6c364b7              # double 0.5605726070017657
	.quad	0x3fe586169aaa89ea              # double 0.672618200380666
	.quad	0x3fe60e0656acb77f              # double 0.68921200684211203
	.quad	0x3feff49c3412ddb6              # double 0.99860963984149609
	.quad	0x3fe60bdf27c61015              # double 0.6889491822080368
	.quad	0x3fcebdc071dab158              # double 0.24016576346674401
	.quad	0x3fe0f81cbd84974e              # double 0.53028714194508964
	.quad	0x3fd5fe0526e53b3a              # double 0.34362915800459215
	.quad	0x3f96e88e91b88c00              # double 0.02237150921258646
	.quad	0x3f3c957706d6d000              # double 4.3615489888826353E-4
	.quad	0x3fe092562f234faa              # double 0.51786336142185019
	.quad	0x3fdbd3225fcfdbe4              # double 0.43476161343227049
	.quad	0x3fac7d4e30837480              # double 0.055643504545266786
	.quad	0x3fe14d5e91758e2d              # double 0.54069450769424565
	.quad	0x3febc0a194229da1              # double 0.86726454670581543
	.quad	0x3fed83fe749e5e33              # double 0.92236254479479951
	.quad	0x3fd1a80e326fbef4              # double 0.27588229108276541
	.quad	0x3fc6760b48bf5c20              # double 0.17547741939662931
	.quad	0x3fd6f880e59458da              # double 0.35891745014067811
	.quad	0x3fd36f3d33950e8c              # double 0.30366449391679207
	.quad	0x3fb8404b45bb5c30              # double 0.094731049084075591
	.quad	0x3fede65288065f6a              # double 0.93436552588808053
	.quad	0x3fe9dc80874c6913              # double 0.80816675591930431
	.quad	0x3fd53bd19ac23654              # double 0.33177604783199866
	.quad	0x3fc83abf02cf14dc              # double 0.1892927898135558
	.quad	0x3fe7f1f5b83eb1f6              # double 0.74828611359913455
	.quad	0x3fe0f7410c001159              # double 0.53018238395501804
	.quad	0x3fb497f312601df8              # double 0.080443565355487467
	.quad	0x3fba18c2c62f7390              # double 0.10194032038221068
	.quad	0x3fd4466635908264              # double 0.31679682951838672
	.quad	0x3fe454b5cead8475              # double 0.63534059874304083
	.quad	0x3fe7b47e3dac3220              # double 0.74078285260617704
	.quad	0x3f961380cb54d680              # double 0.021558773432124756
	.quad	0x3fe9dff8320612e7              # double 0.80859002847918482
	.quad	0x3fc6463305e85c18              # double 0.17401731289348343
	.quad	0x3fe6626bf80d20f5              # double 0.69951437423244889
	.quad	0x3feed816f2be926b              # double 0.96387813006419997
	.quad	0x3fc4fff3a2c33fc4              # double 0.1640610260715204
	.quad	0x3fe623e13599306c              # double 0.69187984913288636
	.quad	0x3fe4e922017bdda9              # double 0.6534585980397668
	.quad	0x3fdcca342d1b2958              # double 0.4498415413369421
	.quad	0x3fca7d12b80b1240              # double 0.20694192873465234
	.quad	0x3fe508674e11a7e9              # double 0.65727582214208014
	.quad	0x3fee0d2c661f54f5              # double 0.93910808511523547
	.quad	0x3fc8ef3159d02128              # double 0.19479958424950294
	.quad	0x3fd8521b2eb53ed4              # double 0.38001136361434118
	.quad	0x3fdde6e6d24f8262              # double 0.46721811807768721
	.quad	0x3fd8daff80377c82              # double 0.38836658021131865
	.quad	0x3fe50971687a66d1              # double 0.65740271001706152
	.quad	0x3fef4ef824c651ec              # double 0.97838980848842771
	.quad	0x3fe8c019aa0e46cc              # double 0.77344973768250602
	.quad	0x3feca1d4eb9169ad              # double 0.89475484856966647
	.quad	0x3fe214fb1cd836f8              # double 0.56506114610394231
	.quad	0x3fe53267d3b36651              # double 0.66240302417572583
	.quad	0x3fe3b6d9f4d9c499              # double 0.61607072660821693
	.quad	0x3fe650b2332a3e74              # double 0.69735059731642801
	.quad	0x3fed474dced23dfa              # double 0.91495409388329496
	.quad	0x3fe78f9a67340613              # double 0.73627967984083609
	.quad	0x3fcf4d468248c178              # double 0.24454575883420282
	.quad	0x3fe40895b5798be4              # double 0.62604794925971108
	.quad	0x3fbd31bfaf854750              # double 0.11404035601779339
	.quad	0x3fe88d4f6d44a9ae              # double 0.76724978772590702
	.quad	0x3fe9fffaea857e9f              # double 0.81249757580731685
	.quad	0x3fe43b64bf3d898b              # double 0.63225018836628644
	.quad	0x3fe5be5cd31a16c7              # double 0.67948762160150344
	.quad	0x3fd34e35c623434c              # double 0.30164856290234776
	.quad	0x3fefb4b5cfd3e471              # double 0.9908093508849004
	.quad	0x3fec9194f678c7bc              # double 0.89277122630141247
	.quad	0x3fc63f34b649179c              # double 0.17380389118823991
	.quad	0x3fc591a3b328eb4c              # double 0.16850706337012367
	.quad	0x3fe7479da6c210d8              # double 0.72749216623244717
	.quad	0x3fecff2ea76234ba              # double 0.90615017597305969
	.quad	0x3fd98fb0febe4ad6              # double 0.39939522626188528
	.quad	0x3fe9c05dc77b6934              # double 0.80473221742003042
	.quad	0x3fcd99a89eef5030              # double 0.23125179062356116
	.quad	0x3fe9bace47e38ad1              # double 0.80405344048298322
	.quad	0x3fee35dfcdabf2af              # double 0.94407644434212112
	.quad	0x3fe49aa5a53bac55              # double 0.64387781402673261
	.quad	0x3fdc6aa17fd68e5a              # double 0.44400823101225273
	.quad	0x3fb8a1fbe7700b38              # double 0.096221679690683071
	.quad	0x3fed4868031e7b63              # double 0.91508865937417416
	.quad	0x3fd428612915f80e              # double 0.31496457111632103
	.quad	0x3fe49eda38700b20              # double 0.64439116499884008
	.quad	0x3fe753546c44d102              # double 0.72892209192517066
	.quad	0x3fe14d05855b8bed              # double 0.54065204664618494
	.quad	0x3fe179ab63897098              # double 0.54610223236842881
	.quad	0x3fea2e719949e994              # double 0.81816940249636838
	.quad	0x3fe4009794876478              # double 0.62507227906748053
	.quad	0x3fc6bd20225793b8              # double 0.17764665295467608
	.quad	0x3fdb500dfff909ba              # double 0.42676115033477979
	.quad	0x3fdc4f2753b9ccf6              # double 0.4423311536440474
	.quad	0x3fd7316509823b62              # double 0.36238981178842355
	.quad	0x3fe711014bc86237              # double 0.72082581330602735
	.quad	0x3fad4ad95598be80              # double 0.057211677264032978
	.quad	0x3fd97c20e85b8b90              # double 0.39820120516940793
	.quad	0x3fe2027ffbdf06ca              # double 0.56280516809075576
	.quad	0x3fed9ef223e0cf35              # double 0.92565257079556906
	.quad	0x3fd2cdec31f3a066              # double 0.29381852033703237
	.quad	0x3fe853447a91d315              # double 0.76016448916797918
	.quad	0x3fd35b6c88de2d4c              # double 0.30245507589343812
	.quad	0x3fe7f4132e9c85c0              # double 0.74854430297653352
	.quad	0x3fed6d9b3f98101c              # double 0.91962969227506929
	.quad	0x3fc0186561f04f44              # double 0.12574450761951017
	.quad	0x3fde422f8005dd38              # double 0.47278964521634093
	.quad	0x3fe53d1ec95e0bbe              # double 0.66371096925319484
	.quad	0x3fe272b5a2ee6386              # double 0.57650262663365548
	.quad	0x3fe6eb0f3acb7862              # double 0.71619378550873258
	.quad	0x3fcdd96901b02fcc              # double 0.23319733221467087
	.quad	0x3fe1da7558280a2c              # double 0.5579172822766103
	.quad	0x3fbf0e663f9585f0              # double 0.12131346752496319
	.quad	0x3fbe0c832ea56368              # double 0.11737842453784497
	.quad	0x3fe40849e58b649d              # double 0.62601179917250571
	.quad	0x3fe0c8fcba9a866f              # double 0.52453457304018325
	.quad	0x3fe830535b087f3b              # double 0.75589912204666321
	.quad	0x3fb6f78e6339ccf8              # double 0.08971490786079872
	.quad	0x3fda3d7fab2cc8d4              # double 0.41000358310988116
	.quad	0x3fe52674210a9cba              # double 0.6609440465298555
	.quad	0x3fd333591bafae5a              # double 0.30000903800712353
	.quad	0x3fdae904cb4eb9a4              # double 0.42047233442544951
	.quad	0x3fd0eb49f665c8b6              # double 0.2643608957506659
	.quad	0x3f6740feae0af700              # double 0.0028386091438211691
	.quad	0x3fb1e03c731ecb70              # double 0.06982782183221814
	.quad	0x3fc8055a4a876ba8              # double 0.18766335143194834
	.quad	0x3fec02eeab492b88              # double 0.875357946913355
	.quad	0x3fb4ec9e01029e78              # double 0.081735491987837139
	.quad	0x3fb1e373e50e1af8              # double 0.069876902982382805
	.quad	0x3fe63de94057aec1              # double 0.695057511967626
	.quad	0x3fe5a2f10ff9e2ba              # double 0.67614033813796159
	.quad	0x3fc8b6b66fa6315c              # double 0.19307594730015409
	.quad	0x3f98d978f8ea6da0              # double 0.0242670919347866
	.quad	0x3feca50430d60a71              # double 0.89514359987545167
	.quad	0x3fe43c4ba22c4da3              # double 0.63236028360772811
	.quad	0x3fe02b17f88be777              # double 0.50526045364607242
	.quad	0x3fd01d0d17b7b93e              # double 0.25177314106158011
	.quad	0x3fe995a4f7a4f08b              # double 0.79951713912989086
	.quad	0x3fe2dd5f7133b08f              # double 0.5895230494475231
	.quad	0x3fe5477011930e93              # double 0.66497043068416628
	.quad	0x3fe066cf4e8cf0a7              # double 0.5125500234785435
	.quad	0x3fda7e6f301dedc8              # double 0.41396693896214432
	.quad	0x3fcce237553c514c              # double 0.22565356885810173
	.quad	0x3fef0844624fc0c2              # double 0.9697591705462616
	.quad	0x3fdc87b88ab7b656              # double 0.44578374430316126
	.quad	0x3fcd05d2d78b88d4              # double 0.22674022221241918
	.quad	0x3fd31a4a016c345a              # double 0.29847955836232176
	.quad	0x3fbfd14f90d00ed8              # double 0.12428757939784008
	.quad	0x3fdb9f3aa30abf9c              # double 0.43159356996602027
	.quad	0x3fe9ec42a4e2408d              # double 0.81009037212244694
	.quad	0x3fd72692a5e49e7a              # double 0.3617292995499849
	.quad	0x3fe2e65e38deea69              # double 0.59062110049792438
	.quad	0x3fd46d6f95d617b6              # double 0.31917943603945831
	.quad	0x3fe6411d7e0ce1f6              # double 0.69544863337711038
	.quad	0x3fecee79865ae2df              # double 0.90411068192687682
	.quad	0x3fc1f483043152ec              # double 0.14027440743179598
	.quad	0x3fe3c3d3ada99a3c              # double 0.61765464704951212
	.quad	0x3feb3adf66a8fe56              # double 0.85093660403067406
	.quad	0x3fe63d0993fefa1d              # double 0.69495085626096265
	.quad	0x3fedccb5dbdd63c8              # double 0.93123906080574503
	.quad	0x3feaa6820ab2f60f              # double 0.83282568063413176
	.quad	0x3f847025562308c0              # double 0.0099795262252694305
	.quad	0x3fc292f9651f4e28              # double 0.14511029660808217
	.quad	0x3fe3e92f44e93aac              # double 0.62221492251577137
	.quad	0x3fd50fa84934c534              # double 0.32908064984356433
	.quad	0x3fd50deda591a27c              # double 0.32897511643253785
	.quad	0x3fb9b1ed9dcc3010              # double 0.10037121870499299
	.quad	0x3fe00763a2de2983              # double 0.50090200243111871
	.quad	0x3fc3ca3e9db9f7a8              # double 0.154609515204297
	.quad	0x3fe6726be79b7326              # double 0.70146746860300335
	.quad	0x3fd7486f8200d14c              # double 0.36379611678718926
	.quad	0x3fd840e654d88462              # double 0.37896116529197432
	.quad	0x3fe2449eb56f5640              # double 0.57087645946985077
	.quad	0x3fe1fb7384be85b9              # double 0.56194473196608563
	.quad	0x3fe52c3197eeccc2              # double 0.66164474176766697
	.quad	0x3fab16e8639da080              # double 0.052909147415278746
	.quad	0x3fed0e32b40432bd              # double 0.90798316153958292
	.quad	0x3fe437568e97c098              # double 0.6317551407828601
	.quad	0x3fdc9f91e8cdf7b8              # double 0.44723937735386299
	.quad	0x3fde8880968e3cb4              # double 0.47708143904396683
	.quad	0x3fe5ebc9117ab096              # double 0.68503240026395207
	.quad	0x3fc6955d11420790              # double 0.17643321364090214
	.quad	0x3faf449fbd5b8660              # double 0.061070434441501176
	.quad	0x3fef9fd645d9ee6a              # double 0.9882613529475297
	.quad	0x3fc5fe14482448fc              # double 0.17181638262315591
	.quad	0x3fcdfe946a7cc69c              # double 0.23433165740566586
	.quad	0x3fea8e49a9904534              # double 0.82986910932428381
	.quad	0x3fb0d4b796ed6280              # double 0.065745806071740631
	.quad	0x3fee1b96de76e1a6              # double 0.94086783838342991
	.quad	0x3fe032a78a6e6b70              # double 0.50618340527885941
	.quad	0x3fcf2629f8b7b5e0              # double 0.24335217136778819
	.quad	0x3fe1920478d5d294              # double 0.54907439804681468
	.quad	0x3fdc58c5b165d8aa              # double 0.44291822742469356
	.quad	0x3fc3e87e53641984              # double 0.15553263732745048
	.quad	0x3fba76c4b2231a90              # double 0.10337476109553223
	.quad	0x3fe7c615a1ea9b24              # double 0.74293023704817474
	.quad	0x3fd9461848635508              # double 0.39490325039999208
	.quad	0x3fe1e265e24003d0              # double 0.55888647260155189
	.quad	0x3f92dff027a6b580              # double 0.018432381076924909
	.quad	0x3fceaf57ca27e2ec              # double 0.23972604151619892
	.quad	0x3fb2a39aeac98c30              # double 0.072808916398160006
	.quad	0x3fec521bd9f6bf55              # double 0.88502304621759242
	.quad	0x3fe19d1f6b8826d9              # double 0.55043002130806962
	.quad	0x3fc0c4720b976920              # double 0.13099504056919731
	.quad	0x3f6a84df761c0b00              # double 0.0032371868591111186
	.quad	0x3fd684835934d836              # double 0.35183795653881889
	.quad	0x3fd49a47050d89d0              # double 0.32191634648748124
	.quad	0x3fdaf0555c3c840c              # double 0.42091878898105572
	.quad	0x3fe036b3760da40a              # double 0.50667737061769569
	.quad	0x3fa7ff2b1f337b40              # double 0.046868655737617448
	.quad	0x3fc3e68b41b9784c              # double 0.15547314366534903
	.quad	0x3fe78993cb799332              # double 0.73554410687629557
	.quad	0x3fef638c040e418c              # double 0.98090172569395539
	.quad	0x3fe49b560716bfca              # double 0.64396191963714355
	.quad	0x3fe6a5be6fa32928              # double 0.70773240856332098
	.quad	0x3fd90bc25295925c              # double 0.39134271683568556
	.quad	0x3fd8e644af4b28d8              # double 0.3890544616557583
	.quad	0x3fe5858dea7ca106              # double 0.67255302236756687
	.quad	0x3fe52ac018eabab1              # double 0.66146855227073875
	.quad	0x3feb4e6156363d0c              # double 0.8533178981614653
	.quad	0x3fd93e855b718eb6              # double 0.39444097452199445
	.quad	0x3fd326c639afd048              # double 0.29924159654115501
	.quad	0x3fe294c493895ae7              # double 0.58066014114123454
	.quad	0x3fc8c97acd269054              # double 0.1936486722671612
	.quad	0x3fea5be59cc56faa              # double 0.82371788615590913
	.quad	0x3febeff4cb9fb978              # double 0.87304153223321546
	.quad	0x3fd513c230f50c4a              # double 0.32933096676805873
	.quad	0x3fee37a98d8e39a7              # double 0.94429471633502693
	.quad	0x3fec793de080b34e              # double 0.88980001304808254
	.quad	0x3fb9f70e0e594d20              # double 0.1014260087043124
	.quad	0x3feff3034de7aac4              # double 0.99841466155825076
	.quad	0x3fe6b7d5e24ed852              # double 0.70994085503367388
	.quad	0x3fdadbe691c5a05e              # double 0.41967167125267746
	.quad	0x3fe91b174e5f1971              # double 0.78455701167039937
	.quad	0x3fd863bbba3cde60              # double 0.38108723819047974
	.quad	0x3fe984ce4bd10d9e              # double 0.7974616509240382
	.quad	0x3fc81a688e514164              # double 0.18830592106906885
	.quad	0x3fe2f1d208d58bbf              # double 0.59201909757063464
	.quad	0x3fedbe19c7c5ba51              # double 0.92945565240899886
	.quad	0x3fe2b639d2f36b11              # double 0.58474436951959963
	.quad	0x3f843cc31a049a40              # double 0.0098815195384079901
	.quad	0x3fe3ef5864845354              # double 0.62296695358473153
	.quad	0x3fd9d0c1427fe708              # double 0.40336638921836299
	.quad	0x3fe87b012c8039a7              # double 0.76501520816400592
	.quad	0x3fc53c5f886a91d4              # double 0.16590494309379145
	.quad	0x3fd528c98a8cdfb6              # double 0.33061445741941087
	.quad	0x3fea5ea0dbe9015b              # double 0.82405131293493683
	.quad	0x3fdbe222c5fc232c              # double 0.43567723593200713
	.quad	0x3fecf8ee522b8e59              # double 0.90538707779746652
	.quad	0x3fd09b3658c7b296              # double 0.25947340650490369
	.quad	0x3fd0d1df6b5c27ec              # double 0.26280961498616651
	.quad	0x3fccb6bd9f61a660              # double 0.22432680399224392
	.quad	0x3fe6443548004ef1              # double 0.69582618773207916
	.quad	0x3fc93136575855b0              # double 0.19681433930297265
	.quad	0x3fe59b26d0ffbb2d              # double 0.67518940754039181
	.quad	0x3fea5efb0b83154d              # double 0.82409431694456148
	.quad	0x3feeeada417b20f7              # double 0.96616852559330268
	.quad	0x3fcce495463afe20              # double 0.22572580270024023
	.quad	0x3fea0925c57ef35e              # double 0.81361664365213548
	.quad	0x3fc75ea1a9ee45e8              # double 0.18257542416954142
	.quad	0x3febbb1e1459b1c4              # double 0.8665914914577617
	.quad	0x3fef5ac2c2bbb5da              # double 0.97982919725262296
	.quad	0x3fec609dae4131ac              # double 0.88679393800844286
	.quad	0x3fe867c6382d77aa              # double 0.76266776058377173
	.quad	0x3fe57381313f22db              # double 0.6703496896598965
	.quad	0x3fe42b1ae2baafb9              # double 0.63026184351973946
	.quad	0x3fe527f7cd56b257              # double 0.66112890343863284
	.quad	0x3fbc6e2966ad7d80              # double 0.11105593449382489
	.quad	0x3fd9ce011bd2bcca              # double 0.40319850651844702
	.quad	0x3fe9bbd59bd727c9              # double 0.80417900502765705
	.quad	0x3fe329fa5f78412f              # double 0.5988742699283075
	.quad	0x3fd0c8bb04bfed6a              # double 0.2622516199478101
	.quad	0x3feab3f3860fca1f              # double 0.83446670707627735
	.quad	0x3fd4a2f469f921e2              # double 0.32244596814100934
	.quad	0x3fdaafb77c09e03e              # double 0.41697489846365332
	.quad	0x3fd5a1ade53226f0              # double 0.33799312002575643
	.quad	0x3fd92e9dab3b58cc              # double 0.39347020837648183
	.quad	0x3fd00c94dcb192f2              # double 0.25076791336168391
	.quad	0x3fea223e1db06f6b              # double 0.81668000982925315
	.quad	0x3fb0fec2be8467b0              # double 0.066387340081205393
	.quad	0x3fef1acec85cfd31              # double 0.97202242978520392
	.quad	0x3feb8acd5549d7ea              # double 0.86069361360455088
	.quad	0x3fc4b60a9a2a636c              # double 0.16180546310058774
	.quad	0x3fea2ff91f479b02              # double 0.81835609540289078
	.quad	0x3fb44041016cb448              # double 0.079105437133606959
	.quad	0x3fe5c54241e56b48              # double 0.68032944555611952
	.quad	0x3fc7da9a0d4cb72c              # double 0.18635869645498226
	.quad	0x3feff6306d980330              # double 0.99880238919295117
	.quad	0x3fdfcc6f2614faaa              # double 0.49685267180385984
	.quad	0x3fe8a98113a967e2              # double 0.7706914314287554
	.quad	0x3fe3af0e04c78cae              # double 0.61511898931020936
	.quad	0x3fd618896902acd2              # double 0.34524760489393913
	.quad	0x3fe954f1b1536081              # double 0.79161915429996565
	.quad	0x3fe7b1e9b013749e              # double 0.74046787633746525
	.quad	0x3fd80effcb227d1e              # double 0.37591547810912285
	.quad	0x3fc2f26d8c3f12d0              # double 0.14802331302612126
	.quad	0x3fed83c09a9def7c              # double 0.92233305166835988
	.quad	0x3fe668bc20b887a6              # double 0.70028501883301852
	.quad	0x3fe4e3fb1af4efe7              # double 0.65282969727513496
	.quad	0x3febc52aea38b84a              # double 0.86781831499480089
	.quad	0x3fee908f7924ab54              # double 0.95514653836049001
	.quad	0x3fd5d066558fe1ac              # double 0.34084471088092516
	.quad	0x3fdaef46c8cc16f0              # double 0.42085427865127567
	.quad	0x3fe5001341e64979              # double 0.65625918265349903
	.quad	0x3fcfdf58780a2e68              # double 0.24900346623722958
	.quad	0x3fe39d9bca9e57b2              # double 0.61298932622843538
	.quad	0x3fa2aa3f9528a830              # double 0.036455141980994532
	.quad	0x3fe9bab8e9e374c7              # double 0.80404325181339054
	.quad	0x3fd34f8a735740b0              # double 0.30172978652718552
	.quad	0x3fe1ff81aa9d2366              # double 0.562439759473915
	.quad	0x3fc5707476eddefc              # double 0.16749435240830468
	.quad	0x3fc6fb9267fa7904              # double 0.17955236508436923
	.quad	0x3fe5fb8df8a730c4              # double 0.68695734562927457
	.quad	0x3fdb7467dd355f9a              # double 0.42897984125510791
	.quad	0x3fc468d1a2f671ec              # double 0.15944881875192551
	.quad	0x3fa1e6618878bbf0              # double 0.034960792454846401
	.quad	0x3fec5912c90c543a              # double 0.88587321536272801
	.quad	0x3fd46747c6ed7dfe              # double 0.31880373407872742
	.quad	0x3fe5568f3a9370c6              # double 0.66681634369481269
	.quad	0x3fee08c853a94ee2              # double 0.93857208576306683
	.quad	0x3fe901e81a560b66              # double 0.78148274558803332
	.quad	0x3febe181c950774a              # double 0.87127770728305021
	.quad	0x3fc8f54f527096e8              # double 0.19498626256352414
	.quad	0x3fd95015899367a2              # double 0.39551294741760945
	.quad	0x3fed5a858e3da8fc              # double 0.91730001241128844
	.quad	0x3fea029a41d0b35a              # double 0.81281769613779464
	.quad	0x3febe866291a2cb8              # double 0.87211902644903372
	.quad	0x3fd5ddf6ea71f396              # double 0.34167263884574461
	.quad	0x3fb0dcb7146ff9b8              # double 0.065867846002197861
	.quad	0x3fe88dfdef4053c8              # double 0.76733299950375855
	.quad	0x3fc3e02b4d5a5ec4              # double 0.1552785995197522
	.quad	0x3fe77060d27c3d3b              # double 0.73246804342662786
	.quad	0x3fd5f6e29bb4851a              # double 0.34319367604810369
	.quad	0x3fe4847068b5e4e4              # double 0.64116688205026806
	.quad	0x3fd800d6c29134e6              # double 0.37505120278076587
	.quad	0x3fe670a8b68cbbbe              # double 0.7012523236679653
	.quad	0x3feaf3139b016d0c              # double 0.84217243456387924
	.quad	0x3fd91f46736d5156              # double 0.39253388664407873
	.quad	0x3fee2429a6c33f53              # double 0.94191439219319262
	.quad	0x3fedb6785ac7bc34              # double 0.92852418642531242
	.quad	0x3fc95fbac7419e84              # double 0.19823393563568825
	.quad	0x3fd157eabfb9f0e8              # double 0.27099102710032108
	.quad	0x3febf1dc352a0da1              # double 0.87327394851347517
	.quad	0x3fe47d7524e310f5              # double 0.64031464771735946
	.quad	0x3fd1cf5ece233482              # double 0.27828188067071136
	.quad	0x3fda5df41c5dfce0              # double 0.41198447008350847
	.quad	0x3fea274d11e49ece              # double 0.81729749197708101
	.quad	0x3fc80534e35dbda8              # double 0.18765889264930746
	.quad	0x3fcaa3f82e223268              # double 0.20812895062080661
	.quad	0x3fe9c7b0c0b78f6d              # double 0.80562627449078905
	.quad	0x3fe95ac8f1fb139c              # double 0.79233214628094428
	.quad	0x3fe15b9b85b1fa85              # double 0.54243255722379102
	.quad	0x3fd5b187c820ae8a              # double 0.33896059554783931
	.quad	0x3fee20617ecd35f0              # double 0.94145273939073881
	.quad	0x3fe0d92bf8e726c7              # double 0.52651022542814807
	.quad	0x3fd7e6cf957da198              # double 0.37346257780748138
	.quad	0x3fe97d8853cb8911              # double 0.79657379499647807
	.quad	0x3feef96206d479ff              # double 0.96794225057584515
	.quad	0x3f72cb73b9e64c00              # double 0.0045885582498099708
	.quad	0x3fe2872f86c4c077              # double 0.57900215455994342
	.quad	0x3fc55ef89f80f954              # double 0.1669607905223055
	.quad	0x3fd7099cbfc1ca3c              # double 0.35996168829220543
	.quad	0x3fe3d9da6271eef8              # double 0.62034339168118802
	.quad	0x3fec3e5db1f584c2              # double 0.88261303670528712
	.quad	0x3fe802d78f87b3c9              # double 0.75034692795963409
	.quad	0x3fd3f6b673fe981e              # double 0.3119331486472009
	.quad	0x3fceffd1f05795f8              # double 0.24218200908141774
	.quad	0x3fdb420f673fa596              # double 0.42590699274895749
	.quad	0x3fe04dd3e695b5c1              # double 0.50950045620054862
	.quad	0x3fc1a8ad1bfec864              # double 0.13796008936839421
	.quad	0x3fcecd37e7de3fc8              # double 0.2406377679985765
	.quad	0x3fec92dadc0c25a1              # double 0.89292662599580208
	.quad	0x3fcddfd205cbae64              # double 0.23339295657148107
	.quad	0x3feb53acbdbb8bda              # double 0.85396420533322304
	.quad	0x3fe388ba927e487e              # double 0.61044052707644858
	.quad	0x3fb4d7ff9e2404b8              # double 0.081420875652855496
	.quad	0x3feb2666c60f183a              # double 0.84843767817870419
	.quad	0x3fe03777c1816033              # double 0.50677097124117265
	.quad	0x3fe626c682c3e475              # double 0.69223332920149849
	.quad	0x3fe8d805ab4e7b5f              # double 0.77636989076914265
	.quad	0x3fe38cafc3fd6db2              # double 0.61092365531242465
	.quad	0x3fd06378741302b2              # double 0.25607119880082074
	.quad	0x3fe9f8708e78a2c3              # double 0.81157710863507082
	.quad	0x3fd1ed1cf749c82c              # double 0.28009723805655784
	.quad	0x3fe745f9c1f1873f              # double 0.72729194526275609
	.quad	0x3fe62def261a7f29              # double 0.69310719911661522
	.quad	0x3fdf33c77e2dcaa0              # double 0.48753535577922413
	.quad	0x3f7503c5ad760000              # double 0.0051305505543268737
	.quad	0x3fdc3980e6e19db6              # double 0.4410097365093536
	.quad	0x3fb85c651d9ba008              # double 0.095159835556501204
	.quad	0x3fe0b70f835f5f9e              # double 0.52234626444532117
	.quad	0x3fc47b509aaa0bdc              # double 0.16001327087368977
	.quad	0x3fefcb172781cc8b              # double 0.99354131427971148
	.quad	0x3f8e43dd1080c680              # double 0.014777876917011712
	.quad	0x3fef35c3bc29184c              # double 0.97531306028464248
	.quad	0x3fc96b0575470c6c              # double 0.19857853151742988
	.quad	0x3fd9e802b2bcf46a              # double 0.40478579954998983
	.quad	0x3fed08b822c76d68              # double 0.90731436531806953
	.quad	0x3fe1f0f63c5edf09              # double 0.56066428938990598
	.quad	0x3fd1ae2efb0d5194              # double 0.27625631825255792
	.quad	0x3fc2e3205588a768              # double 0.1475563447614221
	.quad	0x3fee721793f1ff6b              # double 0.95142725844924081
	.quad	0x3fcb769780ee5abc              # double 0.21455663485968113
	.quad	0x3fd154a1cb2d9284              # double 0.27079052774050916
	.quad	0x3fba0884a7a35918              # double 0.101692477156892
	.quad	0x3f58b8bd4bbe2400              # double 0.0015088890640717612
	.quad	0x3fe9a7f15f7832ab              # double 0.80175083776847111
	.quad	0x3fe426ff5e60b84d              # double 0.6297604411427159
	.quad	0x3fe92c4963717ee7              # double 0.78665608809020859
	.quad	0x3fe515c845d87d3e              # double 0.65890897409182236
	.quad	0x3fd78da0f110f742              # double 0.36801932851436814
	.quad	0x3fc242a7d8c60078              # double 0.14265916905060627
	.quad	0x3fd874d1e2970906              # double 0.38213011863639712
	.quad	0x3fbd625ccc89fe50              # double 0.11478214257839991
	.quad	0x3fdc2994188ceebe              # double 0.44003775022040859
	.quad	0x3fe1087d47ddac95              # double 0.5322863010054727
	.quad	0x3fdcacbce5a80762              # double 0.44804308345202604
	.quad	0x3fe3200bfa085f6a              # double 0.59766196093094703
	.quad	0x3fda0492a07154e6              # double 0.40652909916145885
	.quad	0x3fe3fe547afa363b              # double 0.62479614275952799
	.quad	0x3fd230910ebbce5c              # double 0.28421427191572035
	.quad	0x3fefadc4ca9baec5              # double 0.98996200153256863
	.quad	0x3fe7d94ee9dddab9              # double 0.74527688672136272
	.quad	0x3fdb950c89facb88              # double 0.430972227807779
	.quad	0x3fe09c5b9ecfe121              # double 0.51908665674185184
	.quad	0x3fe8de679344d4ac              # double 0.77714899791194147
	.quad	0x3fe82826a0945d6a              # double 0.75490123141473231
	.quad	0x3fa6a3c24471f570              # double 0.044218130927201282
	.quad	0x3fe3995ea85a214b              # double 0.61247189408553859
	.quad	0x3fda1a963475daf0              # double 0.40787272570689392
	.quad	0x3fddcec8a55dd482              # double 0.46574607991289707
	.quad	0x3fa3d99b1b76a0f0              # double 0.038769576170411102
	.quad	0x3fc1c0178856dda8              # double 0.13867468030160279
	.quad	0x3feb0bc6f60e6604              # double 0.84518764551029379
	.quad	0x3f67465b93c54c00              # double 0.0028411663644560825
	.quad	0x3fec271e1d7759b4              # double 0.87977510218734389
	.quad	0x3fe2d8a72d6c6341              # double 0.58894690391307603
	.quad	0x3fbf48625bf3e0e8              # double 0.1221982454770828
	.quad	0x3fd2426c5b600fc8              # double 0.28530415461886749
	.quad	0x3fe577269f5b5071              # double 0.67079478382448887
	.quad	0x3fc4f0056cf41774              # double 0.16357486553186684
	.quad	0x3fe8ff83eb40d7b8              # double 0.78119083354862706
	.quad	0x3fe506dd480ae13c              # double 0.65708793707657476
	.quad	0x3fe4653beefeff0f              # double 0.63735768011972194
	.quad	0x3f998f3d95d575e0              # double 0.024960481901293963
	.quad	0x3fd77820befb08d8              # double 0.36670702600907878
	.quad	0x3fd827c9ea3c4d80              # double 0.37742851137701194
	.quad	0x3fed944dd258b503              # double 0.92435351451209191
	.quad	0x3fe6f2c725e1c435              # double 0.71713597678001995
	.quad	0x3fe74006b7976009              # double 0.72656570298841061
	.quad	0x3fd6a6ac3de6befc              # double 0.3539229015832317
	.quad	0x3fe0714ccc266e1d              # double 0.51383056519574988
	.quad	0x3fe0839399505c5d              # double 0.51606159156916542
	.quad	0x3fdfab5983eb8b10              # double 0.49483335383244853
	.quad	0x3fc9b0506cfb5c74              # double 0.20069318124180635
	.quad	0x3fe45b46c5a93e7c              # double 0.63614214521108137
	.quad	0x3fe9494efebb5b9e              # double 0.79019880058591574
	.quad	0x3fe53fa1a2712a47              # double 0.66401750304186968
	.quad	0x3fedd944ed5c2a5b              # double 0.9327721248567501
	.quad	0x3fe98ca1cfd28e30              # double 0.7984170016320089
	.quad	0x3fd064794b6c0526              # double 0.25613243451523926
	.quad	0x3fdc03940e393bf8              # double 0.43771840466519008
	.quad	0x3fda25ba20baa6d6              # double 0.40855267711832022
	.quad	0x3fe72e81a95fe5a0              # double 0.72442706185318073
	.quad	0x3fc7adc5e506f240              # double 0.18499063189473652
	.quad	0x3fea153a20a9e1df              # double 0.81509119395837704
	.quad	0x3fde7b98854eec16              # double 0.47629368799579319
	.quad	0x3fbcd4e983c3a3a0              # double 0.11262378184222976
	.quad	0x3fc697cdca209c60              # double 0.17650768632413172
	.quad	0x3fdbb4d30409e2e2              # double 0.43291163820644674
	.quad	0x3fd4f986761a1abe              # double 0.32772981198688089
	.quad	0x3fe10dd775f5e43c              # double 0.53293965377009256
	.quad	0x3fecefa682a0e612              # double 0.90425420297032333
	.quad	0x3fca7de16abeebd0              # double 0.20696656906315392
	.quad	0x3f7f5e875b637200              # double 0.0076585090048095772
	.quad	0x3fe9f8ef2502d90c              # double 0.81163747051940182
	.quad	0x3fbdca542115f658              # double 0.11636853988417195
	.quad	0x3fe4f5b061b7247f              # double 0.65499133191146075
	.quad	0x3fd45d2cf52ac0c4              # double 0.31818698827829572
	.quad	0x3fd5b553bea43214              # double 0.33919232957194478
	.quad	0x3fe97e40d8baccd1              # double 0.79666178064362658
	.quad	0x3fd7eeb32bb25f9e              # double 0.37394408480894892
	.quad	0x3fe8a23ca0d8e779              # double 0.76980430045590176
	.quad	0x3feafe2286e9da68              # double 0.84352232313433451
	.quad	0x3fbd511778f70a00              # double 0.11451861098525029
	.quad	0x3f98bdbca96c5040              # double 0.024161289063229896
	.quad	0x3fc478269d70e798              # double 0.15991671264219742
	.quad	0x3fe0e81ea205e925              # double 0.52833491940626642
	.quad	0x3fcb150307b7e7e8              # double 0.21157873036264552
	.quad	0x3fe4e2b34e034905              # double 0.65267338978654321
	.quad	0x3fe82cd8648052b0              # double 0.75547427777435949
	.quad	0x3fd31ab9c3c495b4              # double 0.29850620382270709
	.quad	0x3fb2af2cc67ea210              # double 0.072985456905947155
	.quad	0x3fd0b13b5869b2a0              # double 0.26081737169332975
	.quad	0x3fe792d4d7216710              # double 0.73667375581428196
	.quad	0x3fe1dc9ef0d3ad9d              # double 0.55818125759599335
	.quad	0x3fed8d146c057b74              # double 0.92347165201122871
	.quad	0x3fe7f3c338bd38df              # double 0.74850617486825033
	.quad	0x3fc0fd41dd619550              # double 0.1327287989580932
	.quad	0x3fe8e05dd3d8a26d              # double 0.77738849045006264
	.quad	0x3fd083da801e2cf8              # double 0.2580477000380621
	.quad	0x3fd73c5ab2ea8676              # double 0.36305873367573527
	.quad	0x3fc97b6debef3a10              # double 0.19907926578748958
	.quad	0x3febd0f70fea9b8f              # double 0.86925843342474873
	.quad	0x3fc94dcc55a72b3c              # double 0.19768671209598121
	.quad	0x3fbddd2f7ed8fec8              # double 0.11665627333513406
	.quad	0x3fb660827e835ef8              # double 0.087410121809963104
	.quad	0x3fd210bc84eb4000              # double 0.28227150898328546
	.quad	0x3fea586a8a588d84              # double 0.82329298992810651
	.quad	0x3fe141331c61460f              # double 0.53920894186939161
	.quad	0x3fd6a076c06dc344              # double 0.35354393760558289
	.quad	0x3fde4c17f79d1d20              # double 0.47339438611057183
	.quad	0x3fe12ac0406818cd              # double 0.53646862582606902
	.quad	0x3fe603a663af340a              # double 0.68794555158240311
	.quad	0x3fe9a2ebb72bf436              # double 0.80113778854104711
	.quad	0x3fc813d73cb3dc30              # double 0.18810549224846929
	.quad	0x3fc3a043c13e5e34              # double 0.15332838950847505
	.quad	0x3fec7d6e5e3a6346              # double 0.89031141666337343
	.quad	0x3fecb96ddfe4cf28              # double 0.89763540009741849
	.quad	0x3fda37ef1dedd9fc              # double 0.40966394350780866
	.quad	0x3fdc9ab608e3a312              # double 0.44694281452261564
	.quad	0x3fb2e31994595058              # double 0.073777769773472612
	.quad	0x3feaaf8f401ac501              # double 0.83393061180518668
	.quad	0x3fee6aea7c4161de              # double 0.95055126446373683
	.quad	0x3fefac88c70019fa              # double 0.98981131427063862
	.quad	0x3fe7558853a4be89              # double 0.72919098221423539
	.quad	0x3fb4cfd08c7f9b48              # double 0.08129599981439839
	.quad	0x3fe73b11d5cacc50              # double 0.72596065288815659
	.quad	0x3fda3e75742226d0              # double 0.41006218281891638
	.quad	0x3fb22cceb53ffa98              # double 0.070996207476108686
	.quad	0x3fcd6941dd4302b8              # double 0.2297746973399819
	.quad	0x3fb4405707a5f728              # double 0.079106749884854666
	.quad	0x3fce697b13f8f8e0              # double 0.23759401774618194
	.quad	0x3fe80d4b60d8d058              # double 0.75162285724082789
	.quad	0x3fd99a498631014a              # double 0.40004194359427869
	.quad	0x3fe5bc4bcfdfb426              # double 0.6792353687320698
	.quad	0x3fd0a66630f7eb96              # double 0.26015620023798058
	.quad	0x3fe0509db5fbb337              # double 0.50984082740396885
	.quad	0x3fd82ce2bb13e560              # double 0.37773960370357962
	.quad	0x3feb4dcaae3686c7              # double 0.85324605966544531
	.quad	0x3fdaa16c210f1c30              # double 0.41610244015140818
	.quad	0x3fd4c0e5a8f31c16              # double 0.32427350520123477
	.quad	0x3feb334d63f44482              # double 0.85001248857783218
	.quad	0x3f854be58259fa00              # double 0.010398667374144743
	.quad	0x3feea8658d2c81e4              # double 0.9580562360097784
	.quad	0x3fd6f3fd9d38e424              # double 0.3586420092938758
	.quad	0x3faa4cc4bf04aee0              # double 0.051366947477019087
	.quad	0x3fdad285a68267e4              # double 0.41909924755748151
	.quad	0x3fe8b45aa249ebee              # double 0.77201587388060289
	.quad	0x3fc312698c15023c              # double 0.14899939861244771
	.quad	0x3fe8b16bfa3d64e8              # double 0.77165793299641638
	.quad	0x3fd80001668eeb70              # double 0.37500033393342047
	.quad	0x3fe72a96f5ca2133              # double 0.72394893651747905
	.quad	0x3fe83ffec9b891c2              # double 0.75781192206027748
	.quad	0x3fe8cf98bec6f6ad              # double 0.77534138928577578
	.quad	0x3fd860aabe98f652              # double 0.38090008366620964
	.quad	0x3fe52226c383d44c              # double 0.66041887461200011
	.quad	0x3fe465b80ffd2543              # double 0.63741686938116293
	.quad	0x3fe58bc3562e884d              # double 0.67331091720940039
	.quad	0x3febbc806cef8b23              # double 0.86676045681483449
	.quad	0x3fe8448ff72536ab              # double 0.7583694293077391
	.quad	0x3fdede65325b08e0              # double 0.48232393186130018
	.quad	0x3fe0091c2cedc08e              # double 0.50111206793919094
	.quad	0x3fe7866bad6b298d              # double 0.73515876646824696
	.quad	0x3fe785872db6e2d2              # double 0.73504980972856004
	.quad	0x3fe529a308cd79ce              # double 0.66133262366548151
	.quad	0x3fe47dd39ae61925              # double 0.64035969022441874
	.quad	0x3fc4a0c91fc59b48              # double 0.16115678836214387
	.quad	0x3fe1ca85e2e50e7c              # double 0.55597204509145071
	.quad	0x3fe4533228d0b733              # double 0.63515575381982214
	.quad	0x3fec966f833c09e7              # double 0.89336372024291399
	.quad	0x3fef8d7e9fe18cd2              # double 0.98602229334610514
	.quad	0x3fce4f333456bc58              # double 0.23679199271780038
	.quad	0x3fefa1b308493f5f              # double 0.98848868959792557
	.quad	0x3fe89e1db3c050d6              # double 0.76930127246535096
	.quad	0x3fef2e8d256d56a3              # double 0.9744325381277189
	.quad	0x3fee20e49332acf8              # double 0.94151524304962119
	.quad	0x3fe5ae1c12f885a0              # double 0.67750362115127771
	.quad	0x3fc55ebf40851ed8              # double 0.16695395136252134
	.quad	0x3fed55e6f61a3f3a              # double 0.91673610751056533
	.quad	0x3fcf1108358b1ff0              # double 0.24270727743555609
	.quad	0x3fe7a0acd8ec2131              # double 0.73836367004063252
	.quad	0x3fd8600063aa1fac              # double 0.38085946781984137
	.quad	0x3fe9f0304d915115              # double 0.81056990766458858
	.quad	0x3fefe96d5647786b              # double 0.99724451877024244
	.quad	0x3fe3916dc841632b              # double 0.61150254356752975
	.quad	0x3fd533f8216c936c              # double 0.33129695190500885
	.quad	0x3fe8b1173f9e15cc              # double 0.77161753106400388
	.quad	0x3fe74a5f0549288f              # double 0.72782851250055269
	.quad	0x3fe2f9d85536557e              # double 0.5929986633588411
	.quad	0x3fb43304507287b8              # double 0.07890345539138266
	.quad	0x3fcf7fbb1a785b24              # double 0.24608553688514079
	.quad	0x3fcb55068708ed14              # double 0.21353227227687255
	.quad	0x3fdd71e711385376              # double 0.46007706338541909
	.quad	0x3fca398642a9b23c              # double 0.20488050704024541
	.quad	0x3fd20e2d8b87b9f4              # double 0.28211535097116713
	.quad	0x3fce691283a1b560              # double 0.23758155276611159
	.quad	0x3fe6f562fee6f372              # double 0.71745443139626119
	.quad	0x3fed966fb77cb95a              # double 0.92461381757110961
	.quad	0x3f8624910ccf3080              # double 0.010811932757768483
	.quad	0x3fc699aa87b0b730              # double 0.17656451821806618
	.quad	0x3fa768b45b066d90              # double 0.045720707045997178
	.quad	0x3fd00fe6e6c8d808              # double 0.25097057855180127
	.quad	0x3fc805b6c08cf460              # double 0.18767437364468531
	.quad	0x3fe76c1c07a74e4f              # double 0.73194695944625632
	.quad	0x3fcb4489e1d0e908              # double 0.21302913213896368
	.quad	0x3fe0231e358a4100              # double 0.50428686577836856
	.quad	0x3fe0dc34a903b00f              # double 0.52688057909608854
	.quad	0x3fe615fd1ca875a6              # double 0.69018416974329422
	.quad	0x3f8223377998cb00              # double 0.008856233023015303
	.quad	0x3fd657c90b69a3ca              # double 0.34910799135701309
	.quad	0x3fd0a65f23485adc              # double 0.26015451856203042
	.quad	0x3fe657d0f5418ff3              # double 0.69821975614149634
	.quad	0x3fd0bf7afe55ece0              # double 0.26168703877892874
	.quad	0x3fed65802ffd6bac              # double 0.9186402261069495
	.quad	0x3fc9a6786bd59374              # double 0.2003927732977463
	.quad	0x3fce9bf3f0d045d8              # double 0.23913430460429086
	.quad	0x3fe5725634ab5296              # double 0.67020712172468921
	.quad	0x3fe7cc8fbad87f5f              # double 0.74372087949084775
	.quad	0x3fb745fd1211edc0              # double 0.090911690627698327
	.quad	0x3fe8899eb8fc5003              # double 0.76679931764601894
	.quad	0x3fe19da8a6065813              # double 0.55049545695033186
	.quad	0x3fe3d46bbdd455f4              # double 0.61968028141080689
	.quad	0x3fb2552b3e7401d0              # double 0.071612074611045573
	.quad	0x3fe563a0a172b6c5              # double 0.66841155560333532
	.quad	0x3fedaf8fda5f59e6              # double 0.92768089915153662
	.quad	0x3fef45bc34c672ca              # double 0.97726259524969206
	.quad	0x3f93e4bc3e381fe0              # double 0.019427243516503157
	.quad	0x3fd89b247fbff33a              # double 0.38446915126387504
	.quad	0x3fe6eea6ab2c0b34              # double 0.71663220817604278
	.quad	0x3fe0fd187ef2c2aa              # double 0.53089546961390011
	.quad	0x3fb6c2e75f9ee610              # double 0.088911496014496771
	.quad	0x3fe1bf4d2ff09f84              # double 0.55460223544376719
	.quad	0x3fdcf969c8ce0270              # double 0.45272297487102886
	.quad	0x3fcf7646ac91d544              # double 0.24579699922802878
	.quad	0x3fc5536636c2b6a0              # double 0.16660764383180027
	.quad	0x3fe9d4cc8df28fde              # double 0.80722644542811017
	.quad	0x3fd3931b795df902              # double 0.30585371830228791
	.quad	0x3fbcf5b2637db2a8              # double 0.11312403611163779
	.quad	0x3fefd419e4605c59              # double 0.99464125256316571
	.quad	0x3fbee652cdb2d7a0              # double 0.12070195695818464
	.quad	0x3fd3f01e74a874c0              # double 0.31153069870363126
	.quad	0x3fd9cde5c063fb2a              # double 0.40319198406352774
	.quad	0x3feb9e43a838ebd0              # double 0.8630693708031405
	.quad	0x3fdf48dbce355c32              # double 0.48882193696539666
	.quad	0x3f9037a94142e640              # double 0.01583733044456026
	.quad	0x3fec14a6925c95fc              # double 0.87752083383810441
	.quad	0x3feba3e26d9a487f              # double 0.86375543028613311
	.quad	0x3fd3a277a685278e              # double 0.30679122220737376
	.quad	0x3fd0c4a101aefc88              # double 0.26200127758415492
	.quad	0x3fe518c8fc8c6696              # double 0.65927552533976796
	.quad	0x3fe540bd82fab660              # double 0.6641528661909426
	.quad	0x3fe5a006b8af2432              # double 0.67578445502397799
	.quad	0x3fe323091885c4a1              # double 0.5980267981486983
	.quad	0x3fd05105fb735168              # double 0.25494527393063615
	.quad	0x3fe64398a0e58b6b              # double 0.69575148987892754
	.quad	0x3fe59be23528bdda              # double 0.67527876265188103
	.quad	0x3fe5dafdf84dc43a              # double 0.68298243042784823
	.quad	0x3fdf7acab0f7a38c              # double 0.49186961442915655
	.quad	0x3fcd7b6697837c18              # double 0.23032839201093291
	.quad	0x3fe6e35ee0d4726c              # double 0.7152552024086396
	.quad	0x3fdee6fa8658640e              # double 0.48284781570106439
	.quad	0x3fdd02ad8a1cd22e              # double 0.45328844535405011
	.quad	0x3feb815383b03950              # double 0.85953689308534287
	.quad	0x3fea657ab0778ce7              # double 0.82488760439119069
	.quad	0x3fedfa001af1a845              # double 0.93676762831206217
	.quad	0x3fcc509a2d1cc0a0              # double 0.22120978548764914
	.quad	0x3fc246abedd4932c              # double 0.14278172600565975
	.quad	0x3fbb7ba0dfb8a968              # double 0.10735516988703397
	.quad	0x3fd20871607578e2              # double 0.28176531238376701
	.quad	0x3fd1b78ab2d3d1da              # double 0.27682750190368
	.quad	0x3fec0f7ff3af158c              # double 0.87689206690326804
	.quad	0x3fc56ab33ed85954              # double 0.16731873100861583
	.quad	0x3fdb34017296584e              # double 0.42504917326130431
	.quad	0x3fe9cb3ad0d41246              # double 0.8060583189658892
	.quad	0x3fc71c1da163a4b0              # double 0.18054552440961436
	.quad	0x3fdddca844d921c8              # double 0.4665928528161456
	.quad	0x3fe18de58e576c54              # double 0.54857137490342689
	.quad	0x3fe97e9a503384c8              # double 0.79670444168382293
	.quad	0x3fc8c3bbd8e16858              # double 0.19347332086437308
	.quad	0x3fe9add78b750f39              # double 0.80247094381090911
	.quad	0x3fe9fd152a92abb2              # double 0.81214388194108822
	.quad	0x3fe13fbced2a5d64              # double 0.5390305168283871
	.quad	0x3fd0122f0d7f943c              # double 0.25110985105704109
	.quad	0x3fc410ca1a834194              # double 0.1567623738724363
	.quad	0x3fecdd20832bc71e              # double 0.90199304217660248
	.quad	0x3fe61664b448da98              # double 0.69023356639702893
	.quad	0x3fe39493267c8a4b              # double 0.6118865729989208
	.quad	0x3fbaf3fc3eeb73a8              # double 0.10528542076231295
	.quad	0x3feb19694966031b              # double 0.84685196242944316
	.quad	0x3feb48a56b08cbb5              # double 0.85261793999813185
	.quad	0x3fdbd4da37f0b2b0              # double 0.43486648047363996
	.quad	0x3fc25f63e237cb04              # double 0.14353607698247839
	.quad	0x3fe5aa26732f459b              # double 0.67702028748515219
	.quad	0x3fdf707a5bc26cf4              # double 0.49124011002432089
	.quad	0x3fd019513a56685e              # double 0.25154524514221588
	.quad	0x3fe22642acf6fdb4              # double 0.56717046529950332
	.quad	0x3fe8721c092663c9              # double 0.76392938410855848
	.quad	0x3fdf350fe8012a9a              # double 0.48761365563101722
	.quad	0x3fef247bc7305e00              # double 0.97320355323876128
	.quad	0x3fe838a6558bbf01              # double 0.75691525180988617
	.quad	0x3feb2ce9a7ed3d3c              # double 0.84923250959574358
	.quad	0x3fc9a6f727e17ed4              # double 0.20040788123423303
	.quad	0x3fdd2950b1727b08              # double 0.4556466801531518
	.quad	0x3fde43e7930c37ca              # double 0.47289456710938949
	.quad	0x3fea0a67572d6e5f              # double 0.81376997973297793
	.quad	0x3fda35d1c845fa0a              # double 0.40953487928337096
	.quad	0x3fd33c2556d14c34              # double 0.30054601171758866
	.quad	0x3fe549335044b067              # double 0.66518560101895907
	.quad	0x3fdbb4aeb633b138              # double 0.4329029826465276
	.quad	0x3fe2a31bd847057c              # double 0.58241073838887258
	.quad	0x3fd6f4f0543f1896              # double 0.35869987704462269
	.quad	0x3fcd4bada0fe33cc              # double 0.2288720165346646
	.quad	0x3fd1dd292627d910              # double 0.27912358022821682
	.quad	0x3fb3d4582ebda6c8              # double 0.077458869372686867
	.quad	0x3fe9bc065fcb542a              # double 0.80420225820364988
	.quad	0x3fecc9c4be6dc3fa              # double 0.89962994759673554
	.quad	0x3fee8d2c6095a5dd              # double 0.95473307480022707
	.quad	0x3fb72c631b2187a0              # double 0.090521043895505304
	.quad	0x3fd396cd9619d464              # double 0.30607928903856974
	.quad	0x3fe06e95db20f68e              # double 0.5134991912706981
	.quad	0x3fed0f513e5946fb              # double 0.90811979463089132
	.quad	0x3fe820384e5deb90              # double 0.75393309885054016
	.quad	0x3fddf47ed0a22602              # double 0.46804781317095501
	.quad	0x3fed12e178e75c29              # double 0.90855477918637917
	.quad	0x3fc0fbfecede9720              # double 0.13269028760003554
	.quad	0x3fd15fe823c52fc6              # double 0.2714786862677524
	.quad	0x3fa4cbab45947570              # double 0.040616371387140471
	.quad	0x3fedcd06ff5a8e43              # double 0.93127775071884178
	.quad	0x3fd65cca8fba606e              # double 0.34941352878514109
	.quad	0x3fc177321f496c98              # double 0.13645006683041028
	.quad	0x3fea5fc2f26615fd              # double 0.82418963759909014
	.quad	0x3fe402f82c96cd32              # double 0.62536247929384658
	.quad	0x3fdcffddfc16bea6              # double 0.45311689012576506
	.quad	0x3fd47c758f43778c              # double 0.3200963877733265
	.quad	0x3fc967bd4eb406e0              # double 0.19847837775164745
	.quad	0x3fa69f19decb43b0              # double 0.044182594725163837
	.quad	0x3fdc1937406b5956              # double 0.43903905192327863
	.quad	0x3feb639226806c47              # double 0.85590465087751333
	.quad	0x3fe5d79ec1f39255              # double 0.6825708187212266
	.quad	0x3fcca31f82c2131c              # double 0.22372812161133815
	.quad	0x3fc5a004a792a794              # double 0.16894586736935635
	.quad	0x3fd0ccb1807e8922              # double 0.26249349163312463
	.quad	0x3fe05d4ccb6e39ad              # double 0.51138915760548331
	.quad	0x3feebbddb89e59c9              # double 0.96043287332832349
	.quad	0x3fe1e655bb96221d              # double 0.55936705244045337
	.quad	0x3f800330463be680              # double 0.0078185817178451078
	.quad	0x3fe966f4741d9bb6              # double 0.79381773642386722
	.quad	0x3feba879597daa0d              # double 0.8643156764858887
	.quad	0x3fe4b0e73be73012              # double 0.64659463596172118
	.quad	0x3fe292c731763b09              # double 0.58041724834933561
	.quad	0x3fe4de6876cbd900              # double 0.65214942171476764
	.quad	0x3fd539fd3a8bafd6              # double 0.33166437833164986
	.quad	0x3fe3bc80794c30c0              # double 0.61676047984067139
	.quad	0x3fe1fcb9e8c53357              # double 0.56210036719276502
	.quad	0x3fe51797950c7e40              # double 0.65912989722341564
	.quad	0x3fec426de8454811              # double 0.88310904851300809
	.quad	0x3feb4477c7c67ec9              # double 0.85210789698245393
	.quad	0x3fb72732121c3518              # double 0.090441827222282334
	.quad	0x3fd1d138bb34105c              # double 0.27839487344340852
	.quad	0x3fe2a8b0db8901f3              # double 0.58309214475599302
	.quad	0x3fe5cfaf29919658              # double 0.68160207861792355
	.quad	0x3fd511c22bd742e2              # double 0.32920889169058232
	.quad	0x3fd4bf81b90ae5fa              # double 0.32418864317477836
	.quad	0x3fe81bc01906dfda              # double 0.75338749778802172
	.quad	0x3fd852d17e82c460              # double 0.38005483011790453
	.quad	0x3fd191f85992ccc8              # double 0.27453430888563135
	.quad	0x3feef8d7e6c0ae07              # double 0.96787638729932801
	.quad	0x3fe8eeb2bba4d736              # double 0.77913796090317677
	.quad	0x3fe90a8e9d5d40c7              # double 0.78253870711525841
	.quad	0x3fd1019c21cf3864              # double 0.26572325994209778
	.quad	0x3fcd81b686e5a850              # double 0.23052102648518025
	.quad	0x3fe515937aabc059              # double 0.65888380011711967
	.quad	0x3fe57192403b26a1              # double 0.67011368317726661
	.quad	0x3fbcc4be74fe4ba8              # double 0.11237707477839243
	.quad	0x3fea504c353e46b2              # double 0.822301963797335
	.quad	0x3fe6aeb91025984f              # double 0.70882847932512927
	.quad	0x3fd6d847b29c4930              # double 0.35695068781309924
	.quad	0x3fce6088979ec5ec              # double 0.23732097056703993
	.quad	0x3fd7b51d2dbdb67c              # double 0.37042932001973106
	.quad	0x3fd363fff3322c2c              # double 0.30297850370033319
	.quad	0x3fe7635810010fa4              # double 0.73087695241746475
	.quad	0x3fe1856f2ca74773              # double 0.54753836366056274
	.quad	0x3fd46153fd0e2984              # double 0.31844043457444848
	.quad	0x3fe5164182026170              # double 0.65896678345147386
	.quad	0x3fda5923351aa58c              # double 0.41169052301355502
	.quad	0x3fee8ea942471228              # double 0.95491469330642519
	.quad	0x3fd0035a7d69acb4              # double 0.250204679940633
	.quad	0x3fbb18ab9d5e1c60              # double 0.10584518997176096
	.quad	0x3fec7dda85cb664a              # double 0.89036298877471975
	.quad	0x3fdbec597848ff84              # double 0.43630062815281456
	.quad	0x3fe2a58c57304850              # double 0.58270852116607763
	.quad	0x3fd4714dc8f3948c              # double 0.31941551803749557
	.quad	0x3fdc71567f9cda62              # double 0.44441759550264781
	.quad	0x3feab1918a15a56a              # double 0.83417584390296651
	.quad	0x3fe6281341a62a2a              # double 0.6923919946869479
	.quad	0x3fe6ffbf58c9db3b              # double 0.71871917096618831
	.quad	0x3fe424014965432a              # double 0.62939514479703473
	.quad	0x3fec9fdc32e51536              # double 0.89451417866135929
	.quad	0x3fec3af71c7865bb              # double 0.88219790993314662
	.quad	0x3fb6835f595dbd90              # double 0.087942084615624915
	.quad	0x3fe8e087367fa372              # double 0.77740822452788749
	.quad	0x3fb4b7032972b8a8              # double 0.080917546862766643
	.quad	0x3fd135123558535a              # double 0.26886420449709691
	.quad	0x3fe789139afcb9dd              # double 0.73548298140468271
	.quad	0x3fef327b0c3dbba3              # double 0.97491218939636714
	.quad	0x3fe16789b3bc0d85              # double 0.54388890365991982
	.quad	0x3fe57f24cdb86534              # double 0.67177047900910347
	.quad	0x3fc66f248942a62c              # double 0.17526680662312921
	.quad	0x3fd13b46d35069f4              # double 0.26924296032089434
	.quad	0x3fb88ed943bff990              # double 0.095929698029044496
	.quad	0x3fd9602d94b1e4ee              # double 0.39649524231897615
	.quad	0x3fdbe375e8cd7fa0              # double 0.43575809225694151
	.quad	0x3fe5ade88c365389              # double 0.67747905144879994
	.quad	0x3fde5443018381a0              # double 0.47389292857953969
	.quad	0x3fe866b4dfaf804b              # double 0.76253741921028373
	.quad	0x3fd965f016fe3048              # double 0.39684679265406375
	.quad	0x3fe2efa06d609eb7              # double 0.59175130236413664
	.quad	0x3fdbf3968a2885f8              # double 0.43674243442555349
	.quad	0x3fddfef5c97ea170              # double 0.46868652989589688
	.quad	0x3fceea8bdb744bec              # double 0.24153278556386171
	.quad	0x3fe873d9e28c3c48              # double 0.76414198157898117
	.quad	0x3fdd65926c4da8b0              # double 0.45932446075915845
	.quad	0x3fb9fa1120ccfbd8              # double 0.10147196818159843
	.quad	0x3fdb08c0d6e04fde              # double 0.4224092577362607
	.quad	0x3fd890eac4ffffe6              # double 0.38384503591805552
	.quad	0x3fd536fc41304402              # double 0.33148104063099038
	.quad	0x3fcdd9a0ee595c30              # double 0.23320399892938459
	.quad	0x3fef9b8ec9e32afc              # double 0.9877389853585039
	.quad	0x3fedf50fbc662083              # double 0.93616473004023282
	.quad	0x3fe683a27a56ca70              # double 0.70356868643132309
	.quad	0x3fe4831960ee608d              # double 0.64100331241481145
	.quad	0x3fe177b34ec3b32f              # double 0.54586186774904444
	.quad	0x3fe76ee5f41a43e2              # double 0.73228738476074917
	.quad	0x3fd9455c302e2dc8              # double 0.39485840516200854
	.quad	0x3fe48bbc758199ec              # double 0.6420576376956979
	.quad	0x3fca4f67070c1e04              # double 0.20554817051036889
	.quad	0x3fd7aab1cca984b6              # double 0.36979336725751055
	.quad	0x3fd86aa901f21cd4              # double 0.38151002111449128
	.quad	0x3f982f96d9cbeb40              # double 0.02361903862309167
	.quad	0x3fdb4fcc014cb32c              # double 0.42674541594424187
	.quad	0x3fbc34207f8c9808              # double 0.11017039407724394
	.quad	0x3feaa8c958bb572a              # double 0.83310382204465339
	.quad	0x3fc03f771aeb78b8              # double 0.12693680586284528
	.quad	0x3fda16a3cf3eb4d2              # double 0.4076318286777908
	.quad	0x3fa0cf8c8123b0b0              # double 0.03283347202690956
	.quad	0x3fd807a72f8a0fc0              # double 0.37546710627088586
	.quad	0x3fe547ae13fe2c17              # double 0.66499999909263152
	.quad	0x3fe84b87af1a9901              # double 0.75921997261028207
	.quad	0x3fe4333b1e8359fe              # double 0.63125377616489664
	.quad	0x3fe0c9c8cd40c5b1              # double 0.52463188255767623
	.quad	0x3fe44f06348c815b              # double 0.63464651359030755
	.quad	0x3fb58b1a397b2658              # double 0.084153784783802421
	.quad	0x3fee95ffa04b0e4e              # double 0.95581036860716906
	.quad	0x3fdab4b58674eafa              # double 0.41727960711038714
	.quad	0x3fb7937af670bdd8              # double 0.092094121137726304
	.quad	0x3fd2da9c66785a8a              # double 0.29459295279358655
	.quad	0x3fb3bd82b99312d0              # double 0.077110452944064933
	.quad	0x3fe94b41d5947605              # double 0.79043666567639603
	.quad	0x3fc139979772911c              # double 0.13457007307909741
	.quad	0x3fc7dcef3a0a8010              # double 0.18642988523515713
	.quad	0x3fe7cfaa62228ad3              # double 0.74409979979494734
	.quad	0x3fe964d04f65caf6              # double 0.79355636126851326
	.quad	0x3fd9eddac11b982a              # double 0.40514248712713885
	.quad	0x3fd0154005f973f4              # double 0.25129700263442989
	.quad	0x3fe7d5626dd3e6fa              # double 0.74479791117411698
	.quad	0x3fdb629fdc435550              # double 0.42789455900250051
	.quad	0x3fc9a43b6eff89c0              # double 0.20032446784814617
	.quad	0x3fd17cb8738342b2              # double 0.27323733597317379
	.quad	0x3fc493c491fcc204              # double 0.16075951698577751
	.quad	0x3fe545cfe7aa0227              # double 0.66477198836225149
	.quad	0x3fd4c1084fff8592              # double 0.32428176700894895
	.quad	0x3fdd1117356c90ee              # double 0.45416813103862708
	.quad	0x3fe92337cef42652              # double 0.7855490724625247
	.quad	0x3fee8f997a69ec81              # double 0.95502923878611068
	.quad	0x3f909ce7fc69e040              # double 0.016223549634077239
	.quad	0x3fe87594b88e094d              # double 0.76435314222207185
	.quad	0x3fe41c60173651d3              # double 0.62846378835325323
	.quad	0x3fbc666252004b80              # double 0.110937256831944
	.quad	0x3fa066640fe24360              # double 0.03203118032354868
	.quad	0x3feb0080fdac7b23              # double 0.84381150766043722
	.quad	0x3fe0e5a69517c569              # double 0.52803353423784671
	.quad	0x3fd65ef859b18832              # double 0.34954651602868403
	.quad	0x3fb64c59ad70c740              # double 0.087102513164407647
	.quad	0x3fd0f7b112a31086              # double 0.26511790103928268
	.quad	0x3fa12203a8d14380              # double 0.03346263347396583
	.quad	0x3fecf18dadecdbd7              # double 0.90448650331279168
	.quad	0x3fd020e51c29de86              # double 0.25200774908396573
	.quad	0x3fe4e636f71f9a97              # double 0.65310238138484322
	.quad	0x3fe67e8eb207d60c              # double 0.70294890185931669
	.quad	0x3feec213e3cc8898              # double 0.96119112483963231
	.quad	0x3fc594d1324ad954              # double 0.1686040397232299
	.quad	0x3fc76b6ba18be514              # double 0.18296571147929142
	.quad	0x3fe5c1fdbbfae949              # double 0.67993056025378806
	.quad	0x3fe98fc962837d6f              # double 0.79880208245223894
	.quad	0x3fe7277f3f641eff              # double 0.72357141858171292
	.quad	0x3fb316355c6857f0              # double 0.074557623920867178
	.quad	0x3fac6b21ff8663f0              # double 0.055504858438503279
	.quad	0x3fede5f30b77ef10              # double 0.93431999435367352
	.quad	0x3fec4f7825e650aa              # double 0.88470084574011776
	.quad	0x3fd2cc77f8be2c56              # double 0.29372977534575762
	.quad	0x3fcdabeaabe8d564              # double 0.23180898088473179
	.quad	0x3fe6fc4c4118b813              # double 0.71829807962581282
	.quad	0x3fd5c30ec2de54a6              # double 0.34003037481427112
	.quad	0x3fee66252f96f09f              # double 0.94996890349240803
	.quad	0x3feb11927253284a              # double 0.84589502648419423
	.quad	0x3fea4556697af036              # double 0.82096405603034017
	.quad	0x3fd057356f7f0356              # double 0.25532279861731888
	.quad	0x3fc3a085a9e8ddc8              # double 0.1533362464558492
	.quad	0x3fa39c170fb4e380              # double 0.038300247828778389
	.quad	0x3fd57ed3e92af230              # double 0.33586595316208712
	.quad	0x3fee11e22049aad9              # double 0.93968302065089937
	.quad	0x3fd999ac29737cbe              # double 0.40000442550622128
	.quad	0x3fa04d897001b3c0              # double 0.031841559336363456
	.quad	0x3fcf97f3f097b0a0              # double 0.24682473418886719
	.quad	0x3fd9a1266092ebe8              # double 0.40046081000372036
	.quad	0x3fc53cda56b4c00c              # double 0.16591958268827545
	.quad	0x3fc2c5573af56588              # double 0.14664736155354441
	.quad	0x3fd3c313ea4987fc              # double 0.3087816036187403
	.quad	0x3fe005377962ea2b              # double 0.50063680370596353
	.quad	0x3fe0ab917a546748              # double 0.52094339268226353
	.quad	0x3fb72a9442dd1cf8              # double 0.090493456195975486
	.quad	0x3fe08dd46de6ae29              # double 0.51731320824678051
	.quad	0x3fe15e41d156b42d              # double 0.54275599371397265
	.quad	0x3fd8864cb8e87fa2              # double 0.3831970029586903
	.quad	0x3fe277526d989294              # double 0.57706567197290548
	.quad	0x3fd0d3515c2bce02              # double 0.26289781571469473
	.quad	0x3fe8cfea25472cad              # double 0.77538020401825281
	.quad	0x3f88def185847a00              # double 0.012143980872278526
	.quad	0x3fe0dc03d4ca8327              # double 0.52685729561571726
	.quad	0x3fea6df868dd3cdd              # double 0.82592411500254637
	.quad	0x3fcf16e652f23e9c              # double 0.24288634348021254
	.quad	0x3fe7713ccbeb159e              # double 0.73257293536942192
	.quad	0x3fee3741d272350e              # double 0.94424525358923161
	.quad	0x3fc208e3ddc54e7c              # double 0.1408963044037711
	.quad	0x3feb5bc18bb695f5              # double 0.85495068824519527
	.quad	0x3fbe4504c4f57538              # double 0.1182406407219404
	.quad	0x3feff30456995ade              # double 0.99841515458941976
	.quad	0x3fe5e3ce3b12ffb6              # double 0.68405829942638863
	.quad	0x3fecde78d9771bbb              # double 0.90215723489460886
	.quad	0x3fe9c8124f6a8416              # double 0.80567279349282006
	.quad	0x3fe36b25da3a3f3a              # double 0.6068295728927986
	.quad	0x3fdac45215b24916              # double 0.41823246115485924
	.quad	0x3fe79a46e123e3e7              # double 0.73758262608236869
	.quad	0x3fe89036e111ba2a              # double 0.76760429343068393
	.quad	0x3fcd310b9dfd6f30              # double 0.22805924620012652
	.quad	0x3fe617b1af6cded6              # double 0.69039234411953987
	.quad	0x3fd285068d5d91e2              # double 0.28936923794961278
	.quad	0x3fe97b144b1d9761              # double 0.79627432509435547
	.quad	0x3fb6852ffe22d4a0              # double 0.087969779534278647
	.quad	0x3fe30dee6744b1a1              # double 0.59545059365841635
	.quad	0x3fc698ec60414ea0              # double 0.17654185008961054
	.quad	0x3fa0d9b1644dc270              # double 0.032910865301236991
	.quad	0x3fc2b4962c33eecc              # double 0.14613606603949447
	.quad	0x3fe29d47046d0366              # double 0.58169890274448899
	.quad	0x3fed05c16efd3bc5              # double 0.90695258786751565
	.quad	0x3fef410f814c59ce              # double 0.97669196370662248
	.quad	0x3fdc649be9a5ae1a              # double 0.44364068810566126
	.quad	0x3fc0b31f494a78ec              # double 0.13046637610108947
	.quad	0x3fe7807f68d1d00d              # double 0.73443575356077562
	.quad	0x3fcb21f9fabfbdf4              # double 0.21197437995532165
	.quad	0x3fe8400403960558              # double 0.75781441402811378
	.quad	0x3fc92eef030c21e0              # double 0.19674480103300507
	.quad	0x3fd173763fd1bc3c              # double 0.27267223579741873
	.quad	0x3fe4e843fa6d6776              # double 0.65335272704690683
	.quad	0x3fd59082deaaaa2a              # double 0.33694526428976934
	.quad	0x3fddc408820d3e04              # double 0.46508991909374253
	.quad	0x3fe4e7a024c07972              # double 0.65327460458847342
	.quad	0x3fe153a12ec779f4              # double 0.54145869385302925
	.quad	0x3fd99dd38eeb551a              # double 0.40025795895538041
	.quad	0x3fcbdb44c01c073c              # double 0.21762904529901472
	.quad	0x3fea08a35e7c6508              # double 0.81355446295052136
	.quad	0x3fa068681649f4b0              # double 0.032046559067546609
	.quad	0x3f9433b781c48ec0              # double 0.019728534026525635
	.quad	0x3fe9e650bee71d88              # double 0.80936467443182014
	.quad	0x3fefb5204db323ea              # double 0.99086013007865614
	.quad	0x3fbb241735ea2110              # double 0.10601944986604317
	.quad	0x3fdb630656c0f412              # double 0.42791899177592641
	.quad	0x3fcd2656763cfb34              # double 0.22773247502660754
	.quad	0x3fe89df00b09155d              # double 0.76927950053565619
	.quad	0x3fe888fbdf2a385e              # double 0.76672166430376953
	.quad	0x3fd546505b64aaf0              # double 0.33241661954040946
	.quad	0x3fe77f65c0bf482f              # double 0.73430144926010665
	.quad	0x3fc6e996eaf3ed8c              # double 0.17900358650500114
	.quad	0x3fd55d175ca467ba              # double 0.33380683943834877
	.quad	0x3fc529aa943ce37c              # double 0.16533405531097489
	.quad	0x3fda119794694512              # double 0.4073237370804047
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
