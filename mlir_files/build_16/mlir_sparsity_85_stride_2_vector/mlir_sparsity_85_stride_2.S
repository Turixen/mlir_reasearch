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
	.quad	32                              # 0x20
	.quad	32                              # 0x20
	.quad	57                              # 0x39
	.quad	57                              # 0x39
	.quad	88                              # 0x58
	.quad	88                              # 0x58
	.quad	123                             # 0x7b
	.quad	123                             # 0x7b
	.quad	148                             # 0x94
	.quad	148                             # 0x94
	.quad	178                             # 0xb2
	.quad	178                             # 0xb2
	.quad	210                             # 0xd2
	.quad	210                             # 0xd2
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	272                             # 0x110
	.quad	272                             # 0x110
	.quad	302                             # 0x12e
	.quad	302                             # 0x12e
	.quad	333                             # 0x14d
	.quad	333                             # 0x14d
	.quad	362                             # 0x16a
	.quad	362                             # 0x16a
	.quad	390                             # 0x186
	.quad	390                             # 0x186
	.quad	421                             # 0x1a5
	.quad	421                             # 0x1a5
	.quad	448                             # 0x1c0
	.quad	448                             # 0x1c0
	.quad	479                             # 0x1df
	.quad	479                             # 0x1df
	.quad	509                             # 0x1fd
	.quad	509                             # 0x1fd
	.quad	544                             # 0x220
	.quad	544                             # 0x220
	.quad	573                             # 0x23d
	.quad	573                             # 0x23d
	.quad	605                             # 0x25d
	.quad	605                             # 0x25d
	.quad	631                             # 0x277
	.quad	631                             # 0x277
	.quad	658                             # 0x292
	.quad	658                             # 0x292
	.quad	686                             # 0x2ae
	.quad	686                             # 0x2ae
	.quad	716                             # 0x2cc
	.quad	716                             # 0x2cc
	.quad	743                             # 0x2e7
	.quad	743                             # 0x2e7
	.quad	777                             # 0x309
	.quad	777                             # 0x309
	.quad	806                             # 0x326
	.quad	806                             # 0x326
	.quad	836                             # 0x344
	.quad	836                             # 0x344
	.quad	865                             # 0x361
	.quad	865                             # 0x361
	.quad	894                             # 0x37e
	.quad	894                             # 0x37e
	.quad	921                             # 0x399
	.quad	921                             # 0x399
	.quad	944                             # 0x3b0
	.quad	944                             # 0x3b0
	.quad	976                             # 0x3d0
	.quad	976                             # 0x3d0
	.quad	1007                            # 0x3ef
	.quad	1007                            # 0x3ef
	.quad	1039                            # 0x40f
	.quad	1039                            # 0x40f
	.quad	1073                            # 0x431
	.quad	1073                            # 0x431
	.quad	1108                            # 0x454
	.quad	1108                            # 0x454
	.quad	1137                            # 0x471
	.quad	1137                            # 0x471
	.quad	1168                            # 0x490
	.quad	1168                            # 0x490
	.quad	1202                            # 0x4b2
	.quad	1202                            # 0x4b2
	.quad	1228                            # 0x4cc
	.quad	1228                            # 0x4cc
	.quad	1255                            # 0x4e7
	.quad	1255                            # 0x4e7
	.quad	1291                            # 0x50b
	.quad	1291                            # 0x50b
	.quad	1317                            # 0x525
	.quad	1317                            # 0x525
	.quad	1348                            # 0x544
	.quad	1348                            # 0x544
	.quad	1383                            # 0x567
	.quad	1383                            # 0x567
	.quad	1410                            # 0x582
	.quad	1410                            # 0x582
	.quad	1443                            # 0x5a3
	.quad	1443                            # 0x5a3
	.quad	1473                            # 0x5c1
	.quad	1473                            # 0x5c1
	.quad	1500                            # 0x5dc
	.quad	1500                            # 0x5dc
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1500xindex,@object # @__constant_1500xindex
	.p2align	6, 0x0
.L__constant_1500xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
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
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
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
	.quad	0x3fef5a2bcd404abc              # double 0.97975721443284369
	.quad	0x3fe8c170b0b19389              # double 0.77361330519180271
	.quad	0x3fef06a8343c5701              # double 0.96956262781415614
	.quad	0x3fe2a32a59b7fe90              # double 0.58241765521229816
	.quad	0x3fdba17ee41bbc6a              # double 0.43173191333966676
	.quad	0x3fe32180a7d521cb              # double 0.59783966808122935
	.quad	0x3fd577f5c0561a16              # double 0.33544677527280109
	.quad	0x3fb0e928b33e6810              # double 0.066057723770797105
	.quad	0x3fee096e1250bbaa              # double 0.93865111901492537
	.quad	0x3fc3934478f7ca4c              # double 0.15293174654614672
	.quad	0x3fe621fa55b9259a              # double 0.69164768927400933
	.quad	0x3fefbfd4b5ad2f92              # double 0.99216685756390377
	.quad	0x3fedcd2c8e2b72ed              # double 0.93129565970920469
	.quad	0x3fe58186c00e184b              # double 0.67206132422212173
	.quad	0x3fedf857c52afbcd              # double 0.9365652895866049
	.quad	0x3fdf7b5c6719e9f6              # double 0.49190435474852678
	.quad	0x3fddc354bc08555e              # double 0.46504705774835553
	.quad	0x3fb9eca100cfae50              # double 0.10126692075544352
	.quad	0x3fbb40a9e2abe130              # double 0.10645543846101613
	.quad	0x3fd2f5b706c2b7f2              # double 0.29624725017754294
	.quad	0x3fdcab425e1d1e98              # double 0.44795283499522887
	.quad	0x3fe66e44505b0c11              # double 0.70096030897582484
	.quad	0x3fe1122e64be5780              # double 0.53346938778371111
	.quad	0x3f60195e9ed68d00              # double 0.0019652221732983088
	.quad	0x3fc15101fee11d5c              # double 0.13528466172486275
	.quad	0x3fed85bc06b5382c              # double 0.92257500944265791
	.quad	0x3fbd3535b53e6678              # double 0.11409316706558481
	.quad	0x3fcab950742d75c0              # double 0.20878034279568958
	.quad	0x3fd960ae19a628b4              # double 0.39652588372031095
	.quad	0x3fef1f95323cd773              # double 0.97260532199901061
	.quad	0x3fc1a4ad4d0de310              # double 0.13783804190077165
	.quad	0x3fd3e1e1db423b52              # double 0.31066175853714129
	.quad	0x3fc3c7159cc7346c              # double 0.15451307444746776
	.quad	0x3fe8c2ba42fb129e              # double 0.77377045709780012
	.quad	0x3fe4e5ea5e916ec2              # double 0.65306585760432534
	.quad	0x3fd2b116d093f882              # double 0.29205866211840015
	.quad	0x3fdae6cc1e1b16dc              # double 0.42033675136586424
	.quad	0x3fe9ab404c0e57c9              # double 0.80215468268101475
	.quad	0x3fe80331db6f39c7              # double 0.75038998468681306
	.quad	0x3fcc60201043c438              # double 0.22168350977111273
	.quad	0x3fedeab4036774d7              # double 0.93490029015415643
	.quad	0x3fd7a2d70553af52              # double 0.3693139602680634
	.quad	0x3fdea2ac83e4df0e              # double 0.47867882614399171
	.quad	0x3fec14c8d7d8a628              # double 0.877537175726677
	.quad	0x3fc8e2cb6421c9ac              # double 0.19442121876961715
	.quad	0x3fed19904ca9dc7b              # double 0.90937056516021586
	.quad	0x3fe0dc00b288a667              # double 0.52685580129509624
	.quad	0x3fea6ab705f4360a              # double 0.82552672541504646
	.quad	0x3fda5aab12d897b2              # double 0.41178395119129185
	.quad	0x3fc0fe2b84a552f0              # double 0.13275665261121317
	.quad	0x3fd6ff378006f5ac              # double 0.35932719710020922
	.quad	0x3fd890ae43c1fa3e              # double 0.38383061043706224
	.quad	0x3fd99524aa13e024              # double 0.39972797974724217
	.quad	0x3feeac355bd82b2e              # double 0.95852153719292743
	.quad	0x3fe2defc8bfb2aea              # double 0.58972003307402798
	.quad	0x3fd36320aec40ef8              # double 0.3029252726266658
	.quad	0x3fe292a3d9e346ac              # double 0.58040039592943549
	.quad	0x3fc850020565b274              # double 0.18994164718187145
	.quad	0x3fd85ecaa387ccc0              # double 0.38078561754009499
	.quad	0x3fcf6f35947c18c8              # double 0.24558133840782248
	.quad	0x3fe49626096b374c              # double 0.64332868423091716
	.quad	0x3fbf0d39e74aba50              # double 0.1212955655744079
	.quad	0x3fe398ac40a5266d              # double 0.61238682390212562
	.quad	0x3fe4ba386c60beb1              # double 0.6477319828754472
	.quad	0x3fd49b904f2a1d04              # double 0.32199485522183147
	.quad	0x3fe969d84134283c              # double 0.7941705010900999
	.quad	0x3fb23aa874176000              # double 0.071207550375561368
	.quad	0x3fa22caf23b4d240              # double 0.035497162922557113
	.quad	0x3fe739eeca514745              # double 0.72582187190185066
	.quad	0x3fe0b216799b9637              # double 0.52173923255458632
	.quad	0x3fe3ac686de8e4ac              # double 0.6147958895372958
	.quad	0x3fe64a9d9644a549              # double 0.69660834645507308
	.quad	0x3fca229c7c8c1864              # double 0.20418125230225137
	.quad	0x3fe9c037f63f7268              # double 0.80471418471604483
	.quad	0x3fd39ace6272d082              # double 0.30632361997709989
	.quad	0x3fe8409b301b136a              # double 0.75788649936349128
	.quad	0x3feaf7c5c9291a6b              # double 0.84274567879840612
	.quad	0x3fe31cbb7a30038d              # double 0.59725736489063908
	.quad	0x3fd3fb321023c196              # double 0.31220676017894655
	.quad	0x3fa1b646762befa0              # double 0.03459377472424241
	.quad	0x3fe0cce988cebc00              # double 0.52501370163179217
	.quad	0x3fcfc34f6c565eb4              # double 0.24814789571677454
	.quad	0x3fe93cc6182f722f              # double 0.7886686775560231
	.quad	0x3f99548e163c7d60              # double 0.024736614329524342
	.quad	0x3fec0233617e138e              # double 0.87526864091397427
	.quad	0x3fe22d2c71eeb9a8              # double 0.56801435711331738
	.quad	0x3feccbdff996c1c0              # double 0.8998870730193218
	.quad	0x3fbb44596cc5e618              # double 0.10651167779533244
	.quad	0x3fef5ff25ed175d4              # double 0.9804622508924532
	.quad	0x3fe2ae6104121132              # double 0.58378649516138226
	.quad	0x3fddc32d0c4c3cb2              # double 0.46503759575802939
	.quad	0x3fe85ca85220d9f0              # double 0.76131073036850516
	.quad	0x3fe0760c0106eee8              # double 0.51441002083398946
	.quad	0x3fde05a234fe7270              # double 0.4690938489455112
	.quad	0x3fe8184326311823              # double 0.75296170672732321
	.quad	0x3fd4a0b2c67412bc              # double 0.32230824833122163
	.quad	0x3fef5c6f3d1418c5              # double 0.98003351144213779
	.quad	0x3fad51e5a572f600              # double 0.057265449949664315
	.quad	0x3fdeab77c883a6e8              # double 0.47921557027312511
	.quad	0x3fde81d8cc7d711e              # double 0.476675224015496
	.quad	0x3fc31a2ac9327350              # double 0.1492360575110987
	.quad	0x3fead7041ac1bc14              # double 0.83874707437451201
	.quad	0x3fdb270a9c1577be              # double 0.42425790064396185
	.quad	0x3fd051b408f71a8a              # double 0.25498677135002679
	.quad	0x3fe1a4989f776bab              # double 0.55134230752752467
	.quad	0x3fe28db9bc87c07a              # double 0.57980048010178042
	.quad	0x3fd358ad62c6fb16              # double 0.30228743215768483
	.quad	0x3fd9c54153008bd6              # double 0.40266450029065248
	.quad	0x3fcceca9550867b8              # double 0.22597233440393238
	.quad	0x3fecce262046ae77              # double 0.90016466430593212
	.quad	0x3fd0af0d09dbe6b6              # double 0.26068426096717745
	.quad	0x3fbf88ee937b75d0              # double 0.12318316555634756
	.quad	0x3fc71ae1951a4dd4              # double 0.18050784855277746
	.quad	0x3fee70374856ae7c              # double 0.95119823578484341
	.quad	0x3feebd8eb47b1d5f              # double 0.96063933611086926
	.quad	0x3fcf3f46000f4e64              # double 0.24411845209998539
	.quad	0x3fcb923cf8fd53fc              # double 0.21540033490842336
	.quad	0x3fe67a8a8de2c6c5              # double 0.70245864593581386
	.quad	0x3fdfdb4b44745fb8              # double 0.49775964436548348
	.quad	0x3fee0716d5ab384a              # double 0.93836538059418584
	.quad	0x3fb9feccb2e32180              # double 0.10154418341983806
	.quad	0x3fda1f0a7aa83bf4              # double 0.40814458826292754
	.quad	0x3fa62f8f89380020              # double 0.043331609249435354
	.quad	0x3fe396d2e03f5d43              # double 0.61216110037177207
	.quad	0x3fe9d07c9f33536e              # double 0.80670004934164097
	.quad	0x3fd103670de95a8a              # double 0.26583267553852663
	.quad	0x3fe95b088b2ce95c              # double 0.79236247236921597
	.quad	0x3febb928df991cd3              # double 0.86635249778273715
	.quad	0x3fd365a8c0293428              # double 0.3030797840663717
	.quad	0x3fdc9e06e9e77d40              # double 0.44714520303928751
	.quad	0x3fdf20dc82460174              # double 0.48638069841401621
	.quad	0x3fee802456c9264f              # double 0.95314232778873442
	.quad	0x3fcec45492577cbc              # double 0.24036652703850858
	.quad	0x3fd03f6d31806482              # double 0.25387124857076782
	.quad	0x3fdc24c59613a114              # double 0.43974437385487986
	.quad	0x3fe541f546572574              # double 0.66430152643549301
	.quad	0x3fdf2b96eada8b46              # double 0.48703549323015627
	.quad	0x3fed26d1fc1f6aee              # double 0.91098880045623587
	.quad	0x3feba911e7fe3076              # double 0.8643884211646895
	.quad	0x3fb0e1cd523c50b0              # double 0.065945465638210576
	.quad	0x3fd22086d84517b0              # double 0.28323527450663288
	.quad	0x3fe93c210f8a7672              # double 0.78858998332334651
	.quad	0x3fda89391b7480aa              # double 0.41462543183480227
	.quad	0x3fd54a2f88bab2b4              # double 0.3326529345747915
	.quad	0x3fb590c73c8f6e40              # double 0.084240391049598351
	.quad	0x3fd43f2bedd870a8              # double 0.31635568835350591
	.quad	0x3fe13ef16b2a590c              # double 0.53893347674127901
	.quad	0x3fa8428add1930d0              # double 0.047382678498793518
	.quad	0x3fe25bea3740709a              # double 0.57372008124686436
	.quad	0x3fcb2fb82d2f5c40              # double 0.21239378172205825
	.quad	0x3fedcfcfa177123d              # double 0.93161756073147439
	.quad	0x3fe12dc55696b3e5              # double 0.5368372622666554
	.quad	0x3fc6773245ec12b8              # double 0.17551258482139587
	.quad	0x3fd84621c09308e4              # double 0.37928050809945391
	.quad	0x3fd26f1f5769e142              # double 0.28803237472995502
	.quad	0x3fc1aebd324b9a68              # double 0.13814511257006079
	.quad	0x3fe6262236c5c7f1              # double 0.69215498636026329
	.quad	0x3fbefc92234760f0              # double 0.12104142533587825
	.quad	0x3fe929533ce45889              # double 0.78629457371677447
	.quad	0x3fe6f6b3fad40e00              # double 0.71761511793050659
	.quad	0x3fe1801df96de5c3              # double 0.54688929287583965
	.quad	0x3fdbef14219c5766              # double 0.43646720201774369
	.quad	0x3fe7177f1c781dcf              # double 0.7216182285346181
	.quad	0x3fc3fadd06e8b2bc              # double 0.15609324300148397
	.quad	0x3febad2d217b56a7              # double 0.86488968409931466
	.quad	0x3fd9191ce889e8aa              # double 0.39215777119501161
	.quad	0x3fd19839e9457416              # double 0.27491615085983889
	.quad	0x3fc6e4a992f50d18              # double 0.17885322261472747
	.quad	0x3fe3dccaf12ea9dc              # double 0.62070223909295974
	.quad	0x3fe1ef2ee74a45e5              # double 0.5604471700082142
	.quad	0x3fdf2ebb413250dc              # double 0.48722726218080736
	.quad	0x3fe174991f263dc8              # double 0.54548317035544702
	.quad	0x3fca4fc6f310a778              # double 0.20555960529719264
	.quad	0x3fc42fef11649768              # double 0.15771282529129427
	.quad	0x3fe34e30c4a8d343              # double 0.6032947388654083
	.quad	0x3fe6be1bca565ac1              # double 0.71070661086090337
	.quad	0x3fd543727a28f656              # double 0.33224164895714148
	.quad	0x3fe3049fb7f82153              # double 0.59431444102760123
	.quad	0x3fbdf833953aa080              # double 0.11706850426947035
	.quad	0x3fddb5797397a10e              # double 0.46420131958304089
	.quad	0x3fe444ace54e8675              # double 0.6333832243582963
	.quad	0x3fe771bbac23d461              # double 0.73263343449674434
	.quad	0x3fb302245c81c0d0              # double 0.074251434883765954
	.quad	0x3feb5ce7dd655bee              # double 0.85509103051560742
	.quad	0x3fb67cad0772edb0              # double 0.087839903181637479
	.quad	0x3fe88ac120b77c47              # double 0.7669377936362104
	.quad	0x3fe0d66f27dd6247              # double 0.52617605005350121
	.quad	0x3faad7847af06f10              # double 0.05242551804277984
	.quad	0x3fc4949dc6772bd8              # double 0.16078540983866563
	.quad	0x3fe60ae6baa38fa7              # double 0.68883072331344841
	.quad	0x3fe7e9fe8415ef8f              # double 0.74731374547944707
	.quad	0x3fc2f827e8472ad0              # double 0.14819811670016358
	.quad	0x3fb80542e8d84248              # double 0.093830282065263337
	.quad	0x3fea0ddc5e2279e9              # double 0.81419199357679617
	.quad	0x3fdee7c6276d7d9e              # double 0.48289636469231734
	.quad	0x3febfdc5e2d47231              # double 0.87472814848621827
	.quad	0x3fe11acae7f9452b              # double 0.53452058131566582
	.quad	0x3fd14ed1fc3b8942              # double 0.27043580658041233
	.quad	0x3fe783a0341d50ec              # double 0.73481760195366297
	.quad	0x3fdd7180bfb33156              # double 0.46005266876888606
	.quad	0x3f82af6cfbfdd2c0              # double 0.0091236605073644616
	.quad	0x3fc83c1dcd2039e4              # double 0.18933460727607987
	.quad	0x3fe5f7a12935bbca              # double 0.68647821472938486
	.quad	0x3feac47367e7963d              # double 0.83648081106065997
	.quad	0x3fe219cc0cf40999              # double 0.56564905672012167
	.quad	0x3fea77aea8f96286              # double 0.82710965159192606
	.quad	0x3fe5b8e80580d037              # double 0.67882157397116927
	.quad	0x3fe7720729448819              # double 0.73266943035219179
	.quad	0x3fa2ef42c4dc5090              # double 0.036981665163836941
	.quad	0x3fcf7eb0d4c3fef0              # double 0.24605379475541822
	.quad	0x3fdb3521863c728c              # double 0.42511785611149189
	.quad	0x3fe351a730e1ea17              # double 0.60371741816863078
	.quad	0x3fe80afa9bd0ca16              # double 0.75134020264369172
	.quad	0x3fb73f766b0b3660              # double 0.090812111982097488
	.quad	0x3f76391ba49aae80              # double 0.0054255561641799455
	.quad	0x3fe877caa6c0f113              # double 0.76462299889638741
	.quad	0x3fe8fc798673da81              # double 0.78081966648353796
	.quad	0x3fba5198e4fce230              # double 0.10280757513545136
	.quad	0x3fd8cf3398e0df04              # double 0.38764657907039202
	.quad	0x3fde0645570acfc6              # double 0.46913274288385443
	.quad	0x3fdb38881af1ecc2              # double 0.42532541877126218
	.quad	0x3feefda6d8fea5fe              # double 0.96846334821492497
	.quad	0x3fcf772b506c72b0              # double 0.24582425524649443
	.quad	0x3fef515e0c66f0fb              # double 0.97868254110610963
	.quad	0x3fd1fc0102207108              # double 0.28100609977424584
	.quad	0x3fe8e77ef56f8733              # double 0.77825878082896904
	.quad	0x3fedd39719e3ba92              # double 0.93207888657146243
	.quad	0x3fc28e11d9071d14              # double 0.14496062371311125
	.quad	0x3fda7f574706b262              # double 0.41402227340839748
	.quad	0x3feeae802d2dfc20              # double 0.95880135368486563
	.quad	0x3fe18694ab90e388              # double 0.5476783133409393
	.quad	0x3fc6f7698b930388              # double 0.1794254237666133
	.quad	0x3fb39cb34c524890              # double 0.076609808095130071
	.quad	0x3fea10d5ab9b2090              # double 0.8145550109557167
	.quad	0x3f7fb9dbffb3b580              # double 0.0077456086830641757
	.quad	0x3fd493dd2c24360c              # double 0.32152489958466002
	.quad	0x3fba1d6ed67eadc0              # double 0.10201161133470915
	.quad	0x3fef7a31c0f35c1c              # double 0.98366630254429621
	.quad	0x3fdce49ae3a18b84              # double 0.4514529440841033
	.quad	0x3feb07083960cb46              # double 0.84460841375980844
	.quad	0x3fed0f36b8d2230d              # double 0.90810714814969773
	.quad	0x3fe05ddd81d83215              # double 0.5114581619287174
	.quad	0x3fe0fdf6f6149959              # double 0.53100154936400223
	.quad	0x3fc9d559da66bb8c              # double 0.20182345546842517
	.quad	0x3f9652fca4184d20              # double 0.021800944819983958
	.quad	0x3fd484da563e3486              # double 0.32060869619528665
	.quad	0x3fe81cf666aea05f              # double 0.75353546195129784
	.quad	0x3fe2f9fe94c4247b              # double 0.59301690154929021
	.quad	0x3fdc778bdb1ff8f6              # double 0.44479652785220425
	.quad	0x3fd41e3846aceaa6              # double 0.31434447194957682
	.quad	0x3fe04f404de7a368              # double 0.50967421737469198
	.quad	0x3fb09bdf01119000              # double 0.064878404389276056
	.quad	0x3fb627f589f821c0              # double 0.086547228034880241
	.quad	0x3fe10ff71effca6d              # double 0.53319889120605313
	.quad	0x3fece49c8a51c21e              # double 0.90290667548657999
	.quad	0x3fefd7ae78189ccd              # double 0.99507831054952478
	.quad	0x3f9a5919c64355a0              # double 0.025730517126097419
	.quad	0x3fe26d9738518aec              # double 0.57587777137481799
	.quad	0x3fdb99f439220c64              # double 0.4312716062488049
	.quad	0x3fee6acd479b4c95              # double 0.95053733812018726
	.quad	0x3fd78abf2fa76682              # double 0.36784343389226859
	.quad	0x3fd7dcb212a8c7ba              # double 0.37284519025990515
	.quad	0x3fb9e3e4026dfd08              # double 0.10113358554189145
	.quad	0x3fbb89bcd3efc7c8              # double 0.10757045912012508
	.quad	0x3fda3d0e719434f8              # double 0.40997658816998195
	.quad	0x3fd3ace33f32c192              # double 0.307427226750428
	.quad	0x3fe1f88e322a686f              # double 0.56159124181728071
	.quad	0x3fecafcc0692a971              # double 0.89645959171074996
	.quad	0x3febd1a145950ad9              # double 0.86933959570191199
	.quad	0x3fdb9fae24bab0de              # double 0.43162110888330385
	.quad	0x3fd2569c8ea46a50              # double 0.28653634958178476
	.quad	0x3fd22afab24e8f94              # double 0.28387324726849639
	.quad	0x3fe4c654d0a37281              # double 0.64921036481571559
	.quad	0x3fc9fe17e924058c              # double 0.20306681522201264
	.quad	0x3fde2697dbe89bec              # double 0.47110554194881504
	.quad	0x3fed0e8a46ea5124              # double 0.90802491999287271
	.quad	0x3fecacbcc0f1706e              # double 0.89608609852031207
	.quad	0x3fec66fc886c915d              # double 0.88757158894854238
	.quad	0x3fe03fabc8f3c116              # double 0.50777234314412811
	.quad	0x3fe68f41a0a48b05              # double 0.7049873483232153
	.quad	0x3fdbce31e71f2004              # double 0.43446013994662303
	.quad	0x3fdaa58bed175f38              # double 0.41635416177222195
	.quad	0x3fefa2bf70b16fbe              # double 0.98861667642949391
	.quad	0x3fec5c9414d543fc              # double 0.88630107945402825
	.quad	0x3fdb5852fd479c56              # double 0.42726587995861587
	.quad	0x3fe52a74f2d499c1              # double 0.66143271854235064
	.quad	0x3fc51660da20e820              # double 0.16474543238456452
	.quad	0x3fd83bc277c87e34              # double 0.3786474389798713
	.quad	0x3fc016357cf05168              # double 0.1256777629902317
	.quad	0x3fef0877838d7409              # double 0.96978355115754866
	.quad	0x3fe154b8575b29f5              # double 0.54159180700054199
	.quad	0x3fc954e4e03235a8              # double 0.19790326067997666
	.quad	0x3fee08b1ed187c5f              # double 0.93856140430206014
	.quad	0x3fcfeda41092b1e0              # double 0.24943972405652826
	.quad	0x3fe8a24a4874e5ce              # double 0.7698108115357003
	.quad	0x3fad46c816be4800              # double 0.057180645729332014
	.quad	0x3fe97ecbe760b5ad              # double 0.79672808829280017
	.quad	0x3feeb438a97ceefd              # double 0.95949967482690079
	.quad	0x3fdf6b5243834d96              # double 0.49092537491852661
	.quad	0x3fe91ec4327812dd              # double 0.78500566346391631
	.quad	0x3fe14280d12b6e8d              # double 0.53936806539009441
	.quad	0x3fcdbff170e35844              # double 0.23242013942825868
	.quad	0x3fe13651f0c55a1e              # double 0.5378808691555752
	.quad	0x3fc02079ef6e2de0              # double 0.12599109831749811
	.quad	0x3fef796984fe733d              # double 0.98357082343463952
	.quad	0x3fd4ff4cff2226b2              # double 0.32808232226725942
	.quad	0x3fddf0c72023aaaa              # double 0.46782091272931814
	.quad	0x3fe9307188ed689d              # double 0.78716351264599249
	.quad	0x3fb6d8fdb08ef3b8              # double 0.089248519520835567
	.quad	0x3fe5b86dda324118              # double 0.67876331917253463
	.quad	0x3fe5547c0addd230              # double 0.6665630542980292
	.quad	0x3fda9ec280a2ad5e              # double 0.41593992769295152
	.quad	0x3fded83b3b252148              # double 0.48194771552927707
	.quad	0x3fe044c37f5cb43e              # double 0.50839400172629445
	.quad	0x3fe41c92904b3726              # double 0.62848785574326338
	.quad	0x3fd404cf3c0c57fa              # double 0.31279354919513447
	.quad	0x3fd7e7264c09599a              # double 0.37348325181428665
	.quad	0x3fdd1ef2e1944c8c              # double 0.45501396207073053
	.quad	0x3faed2050a8b4a60              # double 0.060196073090669655
	.quad	0x3fe3d8dee9e25c9b              # double 0.62022348099243929
	.quad	0x3fe11d87b3d5b75b              # double 0.53485474704732938
	.quad	0x3fe4f4a220afe27a              # double 0.65486246475400312
	.quad	0x3fc8c6a267747db4              # double 0.19356184054866576
	.quad	0x3fe8b5dbcd9349ce              # double 0.7721995368140655
	.quad	0x3fe57deb635d5ac6              # double 0.6716210308757915
	.quad	0x3fdfdf646f1d28fe              # double 0.49800978518454986
	.quad	0x3fd24d9cfdffbfba              # double 0.28598713688461042
	.quad	0x3fdaa2cc0e753360              # double 0.41618634616752637
	.quad	0x3fbb94b4478f88a0              # double 0.1077377962788284
	.quad	0x3feb40f152cc9728              # double 0.85167757198062066
	.quad	0x3fc31a76b6725fd8              # double 0.14924510868581709
	.quad	0x3fe0ef483767173d              # double 0.52920924015845794
	.quad	0x3fe363ecafe1888b              # double 0.6059478221107083
	.quad	0x3f68273894f0ba00              # double 0.0029483895409818661
	.quad	0x3fe2a67a7dfeb902              # double 0.58282208069229591
	.quad	0x3fef64346fe6ab9e              # double 0.98098203521418603
	.quad	0x3fec7c1a0314e239              # double 0.89014912225599752
	.quad	0x3fd9833d1d060a6e              # double 0.39863517603240595
	.quad	0x3feeab38ba2f082a              # double 0.95840107311255918
	.quad	0x3fe2b7d5ad29cdd5              # double 0.58494075604397244
	.quad	0x3fe7e4b43ef1d888              # double 0.74666797918213579
	.quad	0x3fb64296291247b0              # double 0.086953530337523288
	.quad	0x3fe8f57ae8e3f422              # double 0.77996583448805645
	.quad	0x3fe7121606244e96              # double 0.72095776748251938
	.quad	0x3fee75a52374caa8              # double 0.95186097073595465
	.quad	0x3fcbbe298470b838              # double 0.21674078909694727
	.quad	0x3fb578d876c2a738              # double 0.083875206941823488
	.quad	0x3fc201d531542d94              # double 0.14068093212732136
	.quad	0x3fe73bdd5d28ec0f              # double 0.72605770297320926
	.quad	0x3fd21603e6842a38              # double 0.28259370337824263
	.quad	0x3fcf6b05161ef8b0              # double 0.24545348720670779
	.quad	0x3fef3602df5fc0be              # double 0.97534316661587872
	.quad	0x3fdf78e5c358a28a              # double 0.49175399853496826
	.quad	0x3fea00047cd98022              # double 0.81250213989915587
	.quad	0x3fe6d81a360a641d              # double 0.71387968592455631
	.quad	0x3fca8e01167ccbb0              # double 0.20745862577458984
	.quad	0x3fede2e69042abcf              # double 0.9339478318773845
	.quad	0x3fd510b38d2bfae2              # double 0.32914437090214055
	.quad	0x3fef00065ad3ea3d              # double 0.96875303020289715
	.quad	0x3fef5a3b0fa28b0b              # double 0.97976449063966819
	.quad	0x3fe66f722857854c              # double 0.70110423926613796
	.quad	0x3fe7601c7f10e9f8              # double 0.73048233811942875
	.quad	0x3fa4107c9cc3cb60              # double 0.039188284050303279
	.quad	0x3fef14efc808e8bd              # double 0.97130574292466287
	.quad	0x3fe158793230cd4f              # double 0.54204997828348123
	.quad	0x3feab6e70d9241d5              # double 0.83482697153709273
	.quad	0x3fe0a303485ae21b              # double 0.51989902622068784
	.quad	0x3fe24a5e897964ab              # double 0.57157828188350857
	.quad	0x3fea4425b996d9e3              # double 0.82081876991179248
	.quad	0x3fc77b4a44f180c4              # double 0.18345001570106068
	.quad	0x3fe340b622a4b140              # double 0.60164934889102284
	.quad	0x3feec5fd0259807e              # double 0.96166849574002788
	.quad	0x3fccb186cf38addc              # double 0.22416768186791003
	.quad	0x3fef59f90fc51066              # double 0.97973301963839954
	.quad	0x3fed1e51f506a0eb              # double 0.90995118958110532
	.quad	0x3fbdb40900ceb400              # double 0.11602836866104838
	.quad	0x3fe6d854345cb01e              # double 0.71390733935323047
	.quad	0x3fe93c7cb12ed2ab              # double 0.7886336765864902
	.quad	0x3fc72614ae6c5d9c              # double 0.180849633376721
	.quad	0x3f82225f2d7b0d80              # double 0.0088546214823341796
	.quad	0x3fde56057651e6d6              # double 0.47400032572441597
	.quad	0x3fd32a6768dfed04              # double 0.29946313134833269
	.quad	0x3fd99d9909abef38              # double 0.40024400658124959
	.quad	0x3fe81af603d112ee              # double 0.75329113717506657
	.quad	0x3fd926623944c8e4              # double 0.39296775429387609
	.quad	0x3fed2ebbd5662025              # double 0.91195480041006205
	.quad	0x3fd7b3ce08a09e3a              # double 0.37034941523095066
	.quad	0x3fa3bd4e669c3dc0              # double 0.038553667092965593
	.quad	0x3fe81a60ec4c6339              # double 0.75322004463223557
	.quad	0x3fd79afd6e7071e2              # double 0.3688348368175679
	.quad	0x3fe3cb2b7f8c1784              # double 0.61855101501053911
	.quad	0x3fbb6a4a06669298              # double 0.10709059387461151
	.quad	0x3fe8cbe7bdc77b25              # double 0.77489077631239367
	.quad	0x3fd3298e42499736              # double 0.29941135857949364
	.quad	0x3fe2a4a291359d9a              # double 0.5825970493432806
	.quad	0x3fe07bfdf76fce5c              # double 0.51513574912537363
	.quad	0x3fe23c1569a7ea86              # double 0.56983442912981341
	.quad	0x3fd29eb3d3514f66              # double 0.29093642841802703
	.quad	0x3fe23de6985f3baa              # double 0.57005624542386113
	.quad	0x3feb2d2fe002c032              # double 0.84926599266146341
	.quad	0x3fdfcfc7153a981c              # double 0.49705674241192965
	.quad	0x3fc272a79963a9b8              # double 0.14412398328506781
	.quad	0x3fef3c86215df408              # double 0.97613817708008898
	.quad	0x3fe6508238e63c9b              # double 0.69732771981388753
	.quad	0x3fe144cec249befd              # double 0.53964937159432191
	.quad	0x3fefaee111a6bbf6              # double 0.99009755561371438
	.quad	0x3fba59b0feea0fa8              # double 0.10293108199590384
	.quad	0x3fe96f9c12adb1bc              # double 0.79487422607558455
	.quad	0x3fd2ac61d6280c16              # double 0.29177137292589472
	.quad	0x3fe1e5a859a1c89f              # double 0.55928437715762758
	.quad	0x3fa5c51de89140f0              # double 0.042519507064413875
	.quad	0x3fec5d6da714fa61              # double 0.88640482552711941
	.quad	0x3fdee4260b936d40              # double 0.4826750863118896
	.quad	0x3fcf7ea7bdb5e5e4              # double 0.24605271113595883
	.quad	0x3fdd0f679f7d93d8              # double 0.45406523299453516
	.quad	0x3feccd5b2288f6ef              # double 0.90006787057038007
	.quad	0x3fea7ccd8503abcf              # double 0.82773471812594746
	.quad	0x3feab423957a9c0e              # double 0.83448962397676651
	.quad	0x3fd086d6b1880c0c              # double 0.25822989785245976
	.quad	0x3fe2ee0df0d852cf              # double 0.59155938186685286
	.quad	0x3fd1e5069e2af7f6              # double 0.27960362859801025
	.quad	0x3fcce93f5106c1e8              # double 0.22586814361922269
	.quad	0x3fc19a9656aefa34              # double 0.13753012878983528
	.quad	0x3fd764a8fe33c634              # double 0.36551880669057657
	.quad	0x3fb04354a767a428              # double 0.063527384634327277
	.quad	0x3fdabf6d26f76f80              # double 0.41793373875929518
	.quad	0x3fbd855f8ff10088              # double 0.11531636490053832
	.quad	0x3fb33b717ca55668              # double 0.075125782900920535
	.quad	0x3f95851b7700efe0              # double 0.021015576494605059
	.quad	0x3fbda473348341d0              # double 0.11579055816697026
	.quad	0x3fe0367b9e96d98c              # double 0.50665074324096926
	.quad	0x3fe20d36046015cd              # double 0.56411267141873511
	.quad	0x3fc5281e631434c4              # double 0.16528682554090868
	.quad	0x3fdd2ffa45ccf496              # double 0.45605332199540649
	.quad	0x3fe7be2e998079c1              # double 0.7419655798037682
	.quad	0x3fd2e5d0db538f64              # double 0.29527684610933691
	.quad	0x3fee3e0e6b1b4dc7              # double 0.94507523459690723
	.quad	0x3feba8c7716ab984              # double 0.86435291434990846
	.quad	0x3fb337e68247f4c0              # double 0.075071722800163165
	.quad	0x3fd521852c9cffae              # double 0.33017091137662191
	.quad	0x3fe1404b9682a9b1              # double 0.53909854313433503
	.quad	0x3fd5788004daf25c              # double 0.33547974084993881
	.quad	0x3fc7dcd16117d5f0              # double 0.18642632714151786
	.quad	0x3fe3cde84dea66e3              # double 0.61888518541237791
	.quad	0x3fbbd5da737aeba8              # double 0.10873189277019313
	.quad	0x3fe1de15baab2745              # double 0.55835997065262488
	.quad	0x3fd3930a8a2a7704              # double 0.30584968083154274
	.quad	0x3fe5597409447cc5              # double 0.66716958818496919
	.quad	0x3fd6c63ca267ab4c              # double 0.35584941730364927
	.quad	0x3feaaceb3360aa79              # double 0.8336082461804174
	.quad	0x3fefbe7188111941              # double 0.99199749541802628
	.quad	0x3fd3ba1785e61d16              # double 0.30823314739287022
	.quad	0x3fedd5323a4b3b06              # double 0.93227492700120318
	.quad	0x3fddd66b2f97f82a              # double 0.4662120785504863
	.quad	0x3fedf9de2790bddb              # double 0.93675143935791583
	.quad	0x3fdbad5a736ec3ee              # double 0.43245564720842722
	.quad	0x3fb1951ad8acc858              # double 0.068681409739640542
	.quad	0x3febf4053f2ae6f9              # double 0.87353765809459027
	.quad	0x3fed80e54d53cc17              # double 0.92198433974261007
	.quad	0x3faf803e73457120              # double 0.061525298663328565
	.quad	0x3fdd3e3e799aad84              # double 0.45692407489215037
	.quad	0x3fbaf3f373881c38              # double 0.10528489657018347
	.quad	0x3feeff4c32fa2f6a              # double 0.96866426426411789
	.quad	0x3fc4f074293165bc              # double 0.16358806620955402
	.quad	0x3fe5405a5d7233c1              # double 0.66410558940116726
	.quad	0x3fc826332e577ee4              # double 0.18866576922209
	.quad	0x3fdef1861ec45dac              # double 0.48349144939990185
	.quad	0x3fc050a7fa2e9c34              # double 0.12746143070146021
	.quad	0x3fd93081c6c9b8b2              # double 0.39358562863243229
	.quad	0x3fe63b57e47acb95              # double 0.69474405884681067
	.quad	0x3fe7ee837e07d0bb              # double 0.74786543479287759
	.quad	0x3feb801c0fdd0d9b              # double 0.85938838098848025
	.quad	0x3fd452c818561a68              # double 0.31755258919330354
	.quad	0x3fd5941814f9e48a              # double 0.33716394470645439
	.quad	0x3fee3787943689bc              # double 0.94427851627215586
	.quad	0x3fee5f7ef448a5c9              # double 0.94915721618343085
	.quad	0x3fe148dbbe5bad71              # double 0.54014384440726648
	.quad	0x3feaed65e570417b              # double 0.84147925197798601
	.quad	0x3fd13d876a5a0516              # double 0.26938043008711199
	.quad	0x3fe8911a0f06bc7e              # double 0.76771262106730354
	.quad	0x3fb59ce50ec9b5c0              # double 0.084425274000486716
	.quad	0x3fc3fa8f7c80bafc              # double 0.15608399943581464
	.quad	0x3fbdcdbb11508318              # double 0.11642045185773175
	.quad	0x3fd323134ace72ae              # double 0.29901583009067678
	.quad	0x3fed719f0879bf97              # double 0.92011977820765167
	.quad	0x3fee403b5af43f41              # double 0.94534080280752886
	.quad	0x3fef9e705ec774ef              # double 0.98809069167660179
	.quad	0x3fd6ca8f2c11dab6              # double 0.35611323646245852
	.quad	0x3f85415736e00280              # double 0.010378533708718551
	.quad	0x3fee7625060f15fc              # double 0.9519219511354886
	.quad	0x3fed614865d6dcaa              # double 0.91812534227837728
	.quad	0x3fde40851b05b02c              # double 0.47268798483742347
	.quad	0x3fce81a7f73d3ef8              # double 0.23833179065922372
	.quad	0x3fcba5cb412bfeb8              # double 0.21599713022441391
	.quad	0x3fefa1ea9d1f7bfd              # double 0.9885151928718866
	.quad	0x3fe03034a17a273e              # double 0.50588447130687775
	.quad	0x3fe49dba6bf4fe8b              # double 0.64425393185952495
	.quad	0x3fe3585b9484a855              # double 0.60453585631808926
	.quad	0x3fd3d4d5ffcd7dbe              # double 0.30986547451717772
	.quad	0x3fda1c39920fe81a              # double 0.40797271026497273
	.quad	0x3fe1920f66ec5d5e              # double 0.54907960989195792
	.quad	0x3fe9e950477d8104              # double 0.80973066294612339
	.quad	0x3fe654f8ee77ff2a              # double 0.69787260604787105
	.quad	0x3fc00b5865823d0c              # double 0.12534623104554787
	.quad	0x3fc4ead1a915ecac              # double 0.1634161067594041
	.quad	0x3fed7e37d0d94269              # double 0.9216574744296625
	.quad	0x3fb7923dba2e1f68              # double 0.092075212434904352
	.quad	0x3fe712b9661c12e9              # double 0.72103567069333707
	.quad	0x3feac0d0668be913              # double 0.83603687313669395
	.quad	0x3fe814549dac7b68              # double 0.75248175426154962
	.quad	0x3fb2b94be5f72d30              # double 0.073139899867943781
	.quad	0x3fda63e4b7efbcca              # double 0.4123470112089761
	.quad	0x3fe420e782429b9c              # double 0.62901664201205021
	.quad	0x3fe70558de202d20              # double 0.71940272697375818
	.quad	0x3fe154ff32ae819c              # double 0.5416255941272996
	.quad	0x3fed2f5991fc280f              # double 0.91203001511280657
	.quad	0x3fe66fccfbfcafae              # double 0.70114754883024033
	.quad	0x3fe7990a22175185              # double 0.73743158968368105
	.quad	0x3fc0699aa94df51c              # double 0.12822278277227717
	.quad	0x3f7f6e7039b3f300              # double 0.0076736816220062121
	.quad	0x3feae1c1518b6e31              # double 0.84005800177278023
	.quad	0x3fd57520f055e4a2              # double 0.33527396650567642
	.quad	0x3fe9f20a9873c9c3              # double 0.81079606796111425
	.quad	0x3fe398a0ebe011d6              # double 0.612381420797244
	.quad	0x3fefe8b33c0f1697              # double 0.99715577821980871
	.quad	0x3fd40b82fa9fc11a              # double 0.31320261454585963
	.quad	0x3fe5456aec08775f              # double 0.66472383594712514
	.quad	0x3fe065c9107b677d              # double 0.51242497653150532
	.quad	0x3fc05945488a6e10              # double 0.12772432367351927
	.quad	0x3fe56984b288905f              # double 0.66913065786185288
	.quad	0x3fd6be6cb41fffe2              # double 0.35537259664852006
	.quad	0x3fd0624d02076896              # double 0.25599980543268808
	.quad	0x3fe4e902cf803d3b              # double 0.65344372298742515
	.quad	0x3f8adf7d07f792c0              # double 0.013121582799564435
	.quad	0x3fdd562c9996b6d4              # double 0.45838465689562935
	.quad	0x3fe761ffa3afc1a5              # double 0.73071271867779741
	.quad	0x3fd0c96d22d3a544              # double 0.2622940864663017
	.quad	0x3fda7e8035ad5c82              # double 0.4139709972564064
	.quad	0x3fd2205a4eae1238              # double 0.28322465594854718
	.quad	0x3fd2dde9ec23dd10              # double 0.29479454098277902
	.quad	0x3faace3d0cb19aa0              # double 0.052354724692851962
	.quad	0x3fe65eb864ca43a6              # double 0.69906253514829042
	.quad	0x3fedcf7ad403a005              # double 0.93157712372794832
	.quad	0x3fd839880ba387b8              # double 0.37851143967247536
	.quad	0x3fe8ce0f12464616              # double 0.77515367097129473
	.quad	0x3fd280ca7bdd2a30              # double 0.28911077591024803
	.quad	0x3fbf052d02020d08              # double 0.12117272662185397
	.quad	0x3fc9a2e03e3b4e68              # double 0.20028307951598667
	.quad	0x3fc3e4faf8bad638              # double 0.15542542595874109
	.quad	0x3fd656e577fd20b2              # double 0.3490537330403739
	.quad	0x3fe25c1764a3a275              # double 0.57374162345975199
	.quad	0x3fedf593dd35219c              # double 0.93622773365591482
	.quad	0x3fb75cfd18246be8              # double 0.091262644189938791
	.quad	0x3fe638d192553284              # double 0.69443586903214838
	.quad	0x3fecc57fcabe2455              # double 0.89910878751937651
	.quad	0x3fd3d70cd0ae31b0              # double 0.31000061396550915
	.quad	0x3fe8f29ceaa13dc0              # double 0.77961583925382882
	.quad	0x3fb8046c069a30b8              # double 0.093817473995104872
	.quad	0x3fe4e32591a3f834              # double 0.6527278751889356
	.quad	0x3febbcf7b4d2d2e1              # double 0.86681733433814767
	.quad	0x3fbdaea0dac38a80              # double 0.1159458669749629
	.quad	0x3fed2c43df816802              # double 0.9116534581510225
	.quad	0x3fd028b07f740e9c              # double 0.252483486620102
	.quad	0x3feb409be9b97556              # double 0.8516368451052283
	.quad	0x3fee6168c5e359de              # double 0.94939077997224408
	.quad	0x3fea052656e8c628              # double 0.81312863325564866
	.quad	0x3fe2755685b33f12              # double 0.5768234835940993
	.quad	0x3fbd8342002fb730              # double 0.11528408531713974
	.quad	0x3fb214cfa2652f00              # double 0.07063005175330872
	.quad	0x3f69b8b424528500              # double 0.0031398313900160568
	.quad	0x3fddc5b306110666              # double 0.46519160835678119
	.quad	0x3fd3ac3c7811dfe8              # double 0.30738746381348259
	.quad	0x3fe6673dd046b8ca              # double 0.70010271719891048
	.quad	0x3fde3a26502976ce              # double 0.47229917362515728
	.quad	0x3fec660f4269248a              # double 0.88745844813196695
	.quad	0x3fdd0424b335e948              # double 0.45337789059671652
	.quad	0x3fda72c5f4c64c5a              # double 0.41325520423669604
	.quad	0x3fee73fd6892a382              # double 0.95165892052055789
	.quad	0x3fd0f658db494028              # double 0.26503583349858895
	.quad	0x3fe877d02eaadf5f              # double 0.7646256362413445
	.quad	0x3fede1ca7eadad65              # double 0.93381237737541467
	.quad	0x3fdc3038321f501c              # double 0.44044308562047418
	.quad	0x3fcbda874530543c              # double 0.21760645750387819
	.quad	0x3fb0dcd289db6088              # double 0.0658694826664733
	.quad	0x3fcf1bdc8c06d6f8              # double 0.24303776585809778
	.quad	0x3fdf1e1ac16acdd2              # double 0.48621243370436418
	.quad	0x3fe9ee04aaa9f599              # double 0.81030495960992532
	.quad	0x3fc681e5f15fe4a8              # double 0.17583917890423106
	.quad	0x3fd4ff54d9f327f6              # double 0.32808419498598995
	.quad	0x3fdee18166055bca              # double 0.48251376116735101
	.quad	0x3feb142d5bb10792              # double 0.84621303471088738
	.quad	0x3fef6d6f4eb905e1              # double 0.98210873961960143
	.quad	0x3fed1f10d57c0eb2              # double 0.91004220672808445
	.quad	0x3fd881271720517a              # double 0.38288285501882735
	.quad	0x3fef3dab52f9ae00              # double 0.97627798277011379
	.quad	0x3fe5a0a07ef0605a              # double 0.67585778038756961
	.quad	0x3fd97acdd9873e20              # double 0.3981203674602245
	.quad	0x3feeb347b32ee7f2              # double 0.95938477513050047
	.quad	0x3fdacd1e516e30ee              # double 0.41876943542662459
	.quad	0x3fe7f8bd20415987              # double 0.74911361980302693
	.quad	0x3fcb8d6abcd350c4              # double 0.21525320262902004
	.quad	0x3fe7bfd9b59924cb              # double 0.74216924160386932
	.quad	0x3fe08fc272b06dc7              # double 0.51754877472142702
	.quad	0x3fd636f66ce4f058              # double 0.3471046508236717
	.quad	0x3fe34690cf651fbe              # double 0.60236397272910103
	.quad	0x3fc5fed6c98d4e38              # double 0.1718395694866659
	.quad	0x3fde4c92a4fd1238              # double 0.47342363464511861
	.quad	0x3fe90e13e85f23f3              # double 0.78296847710691819
	.quad	0x3fdb4377a331d248              # double 0.42599287926649199
	.quad	0x3fc6e111c83266c8              # double 0.1787435748599846
	.quad	0x3fef905394741662              # double 0.98636797900026019
	.quad	0x3fa7df64bfa4a600              # double 0.046626232522907429
	.quad	0x3f9247475f1c94a0              # double 0.017850032024530393
	.quad	0x3fdfbae4ca20e492              # double 0.49578208674535873
	.quad	0x3fc8784a36e35824              # double 0.19117095642167314
	.quad	0x3febbaab998ca62f              # double 0.86653690328711785
	.quad	0x3fe84d169fc2d5ca              # double 0.75941020205817122
	.quad	0x3fd25cbeaaa975a4              # double 0.28691069284635717
	.quad	0x3fd78a19f1fa4c6a              # double 0.36780403738629863
	.quad	0x3fcf689c7d0cc704              # double 0.2453799830050728
	.quad	0x3fed08f8e68d6bcc              # double 0.90734524755259249
	.quad	0x3fef6bbbda365520              # double 0.98190109843804762
	.quad	0x3fd965aa57813804              # double 0.39683016343485655
	.quad	0x3fe46f457091b04a              # double 0.63858291612769702
	.quad	0x3fea9cc94dde2012              # double 0.8316389580586494
	.quad	0x3fe22ec541f9ed67              # double 0.56820929418556154
	.quad	0x3fd19c6143d2dd54              # double 0.27516967414290616
	.quad	0x3fdfdb5cc40debc4              # double 0.49776381631789612
	.quad	0x3fe1b714440708e3              # double 0.55359853064171849
	.quad	0x3f99c2fd398c2bc0              # double 0.025157887113021138
	.quad	0x3fccd9fbc6c6e30c              # double 0.2254023285475103
	.quad	0x3fea75c5341329f9              # double 0.8268762604796499
	.quad	0x3fe2affd01106d5c              # double 0.58398294647069404
	.quad	0x3fb45d81568d8d40              # double 0.079551776534164453
	.quad	0x3fe667507bd99925              # double 0.70011161984874504
	.quad	0x3feb742c3051114f              # double 0.85793122708177261
	.quad	0x3feaad791df57394              # double 0.83367591716124644
	.quad	0x3febe28aeed19fca              # double 0.87140413898759417
	.quad	0x3fe1952de5fb46d4              # double 0.54946036260863673
	.quad	0x3fed10774b15bba2              # double 0.90826000847834032
	.quad	0x3fbf3df9bb620ab8              # double 0.1220394213178605
	.quad	0x3f75f3fb92e65680              # double 0.0053596331694244492
	.quad	0x3fe270debc47ebc9              # double 0.57627808354970356
	.quad	0x3fe4d715dfde3dc6              # double 0.65125554775470884
	.quad	0x3fd36acb1ad82814              # double 0.30339315053481752
	.quad	0x3fec63efa27f3c7d              # double 0.88719922769259052
	.quad	0x3feca3e2bf2f61e9              # double 0.89500558224523019
	.quad	0x3fe215147bb4d031              # double 0.56507324372660694
	.quad	0x3fe07fc7a2b00fd8              # double 0.51559812331151544
	.quad	0x3fdc0d9e58cacd74              # double 0.438331209860926
	.quad	0x3fcb4ca5d6196678              # double 0.21327660516799418
	.quad	0x3feccf69dfb3897b              # double 0.90031903926528345
	.quad	0x3f8fe6499b414740              # double 0.015575957346445457
	.quad	0x3fd9c3c600df088c              # double 0.40257406315880284
	.quad	0x3fe5909c4aa31aad              # double 0.67390265061915999
	.quad	0x3fdc14e481564184              # double 0.43877518301544449
	.quad	0x3fdf4177173119f8              # double 0.4883706785662123
	.quad	0x3fd7074b2f5dfaa6              # double 0.35982017160123758
	.quad	0x3fce0c62fbbe29c8              # double 0.23475301067476395
	.quad	0x3fe63e63e3599d60              # double 0.69511598972614408
	.quad	0x3fd6726b8db25d7c              # double 0.35073365056583561
	.quad	0x3fe65cc06c96459a              # double 0.69882222374342295
	.quad	0x3fef8427c1fef6b0              # double 0.98488223924478824
	.quad	0x3fd204888dbdd37a              # double 0.28152669755882409
	.quad	0x3fe7881fb6183c98              # double 0.73536668362966662
	.quad	0x3fec0ca575181a5d              # double 0.87654373998595825
	.quad	0x3fa780a68e670970              # double 0.045903401263347798
	.quad	0x3fb830132f2e45d8              # double 0.094483565348375875
	.quad	0x3fe798d841ec03b9              # double 0.73740780711533838
	.quad	0x3fed1f9ad69bbf23              # double 0.91010801234913108
	.quad	0x3fd613347c6d7bdc              # double 0.34492218161716237
	.quad	0x3fcce29fad367ae8              # double 0.22566600759179001
	.quad	0x3fda00e6d85433b8              # double 0.40630503774519466
	.quad	0x3feb5407a136626a              # double 0.85400754439167526
	.quad	0x3fe123f1e8c0bd92              # double 0.53563781222867335
	.quad	0x3fea560ccfa4f14e              # double 0.82300415568855967
	.quad	0x3fed052e664134ac              # double 0.90688247653601683
	.quad	0x3fd3c594a7109e5c              # double 0.30893436732228508
	.quad	0x3fd6fbdad1f21d06              # double 0.35912199499621555
	.quad	0x3fd8149fe5615db0              # double 0.37625882530616206
	.quad	0x3fdd696edc04e4b2              # double 0.45956012235871946
	.quad	0x3fea305d795f6287              # double 0.81840394692979224
	.quad	0x3fb2bd753c389468              # double 0.073203398897548788
	.quad	0x3fec3c8edef347ee              # double 0.88239234490379004
	.quad	0x3f82a62ba11b05c0              # double 0.0091060074368013443
	.quad	0x3fe394360ca247cc              # double 0.61184217898903048
	.quad	0x3fe2517ad606a9a1              # double 0.57244626810033961
	.quad	0x3fc720b736bf71a0              # double 0.18068590329393164
	.quad	0x3fb8db17056da258              # double 0.097093046975382236
	.quad	0x3fddb6a919dcc13c              # double 0.46427371526353389
	.quad	0x3fdba1dea2cd3de2              # double 0.4317547407017327
	.quad	0x3fe8c5d24e8e43ad              # double 0.77414813368715374
	.quad	0x3febe20c1a38ce13              # double 0.87134366151298293
	.quad	0x3fee0724569a08c8              # double 0.93837181963342519
	.quad	0x3fa0c0c36f7573d0              # double 0.032720668178377488
	.quad	0x3fe04ad492e2c2d1              # double 0.50913456619863429
	.quad	0x3fdb3a8f87ab112c              # double 0.4254492592701975
	.quad	0x3f7487df82694b80              # double 0.0050123911701857038
	.quad	0x3fb3d8a66ebd37e0              # double 0.077524568591996523
	.quad	0x3fd54b2a40d667f2              # double 0.33271271068372166
	.quad	0x3fd97ec43e6ed978              # double 0.39836221787427162
	.quad	0x3fa21477a7b0b1c0              # double 0.035312403888699162
	.quad	0x3febed55ce583ff3              # double 0.87272157956794982
	.quad	0x3fbb0323e3984628              # double 0.10551666552080319
	.quad	0x3fe1b080c2439d61              # double 0.55279577200137109
	.quad	0x3fcc45eb2ecc0bf0              # double 0.22088374886524731
	.quad	0x3fe16b2a5fda7fe9              # double 0.54433172913922789
	.quad	0x3fd52a1485ffa5a8              # double 0.33069336973002317
	.quad	0x3fe2736f79c7a82b              # double 0.57659124169481879
	.quad	0x3fe3ef1e3b41893b              # double 0.62293922017514747
	.quad	0x3fe42606f92adc5f              # double 0.62964199700844492
	.quad	0x3fbf9bef44c17570              # double 0.12347312382322229
	.quad	0x3fe2cdc8e140d686              # double 0.58762020106105761
	.quad	0x3fd5ee03b26b0b2a              # double 0.34265224860807797
	.quad	0x3fc91c1ca3c657a8              # double 0.19617040631117999
	.quad	0x3fb8f364b742d8f0              # double 0.097463888875470194
	.quad	0x3fc9149f6fe17ee4              # double 0.19594185793811569
	.quad	0x3fe6ebfbccf68ef7              # double 0.71630659133776831
	.quad	0x3fe1e9816be394d0              # double 0.55975409576481105
	.quad	0x3fe600567972a087              # double 0.68754123420969016
	.quad	0x3fe8add990c7d946              # double 0.77122190740082242
	.quad	0x3fe7f38dbaca6aef              # double 0.74848066790158707
	.quad	0x3fd187e264968990              # double 0.27391872237253612
	.quad	0x3fa61eecb9620e50              # double 0.043204686765446199
	.quad	0x3fe50449d0d1fb61              # double 0.65677347932055963
	.quad	0x3fe1b8778ba48218              # double 0.55376794122645645
	.quad	0x3feffadfa34c7fa6              # double 0.99937421697903939
	.quad	0x3f9a8789dfb93d00              # double 0.025907663612369625
	.quad	0x3fcde4cfebff5500              # double 0.23354529403028579
	.quad	0x3fadee2f20ca7150              # double 0.058457825424940268
	.quad	0x3fb263f879f21dd0              # double 0.071837930461803312
	.quad	0x3fdd7508d5b8f666              # double 0.46026821967448084
	.quad	0x3fe237ef1ac6404d              # double 0.56932788113955157
	.quad	0x3fc18bda07e94690              # double 0.13708043466845199
	.quad	0x3fe63d6ff3397224              # double 0.69499967102780547
	.quad	0x3fef2976c80f6314              # double 0.97381152223815314
	.quad	0x3fdbd20847af40ac              # double 0.43469435692260094
	.quad	0x3fcd8f494d04adb8              # double 0.23093525181444163
	.quad	0x3fefc7c8723370ab              # double 0.99313757233496369
	.quad	0x3feefb5c5fdb95bb              # double 0.96818369600503417
	.quad	0x3fe45d10f396adee              # double 0.63636062217613953
	.quad	0x3fedeb0701fc82c5              # double 0.93493986499751058
	.quad	0x3fee22bcb460d56c              # double 0.94174037199142679
	.quad	0x3fe920d3f3ea2bb4              # double 0.78525731696696832
	.quad	0x3fca07538488e08c              # double 0.2033485791341757
	.quad	0x3f6261a0f3c08900              # double 0.0022438186260994586
	.quad	0x3fc24ba12546a7d4              # double 0.14293302841298205
	.quad	0x3fa67b3e05878c60              # double 0.043909013915048645
	.quad	0x3fbe8ae62ffcab60              # double 0.1193069331317651
	.quad	0x3fe21d613dc72fc7              # double 0.56608640733747329
	.quad	0x3fc7439637d7dcf4              # double 0.18175008513183111
	.quad	0x3fc86dc5497677b0              # double 0.19084993445443166
	.quad	0x3fee6b343b0190da              # double 0.95058642887718325
	.quad	0x3fe562d303976def              # double 0.66831350995511041
	.quad	0x3fd08ddfc9fe4fde              # double 0.25865931249540874
	.quad	0x3fd2e50e766bf062              # double 0.295230498930101
	.quad	0x3fb92df9e75d7af8              # double 0.098357790933260136
	.quad	0x3feabf9a34e19250              # double 0.83588896110865996
	.quad	0x3fe9adc46ee7f2ca              # double 0.80246183072412092
	.quad	0x3febd81ab38d861b              # double 0.87012991970931652
	.quad	0x3fe90247f6b3b439              # double 0.78152845558145778
	.quad	0x3fe8b2cce1e1d50a              # double 0.77182621114357741
	.quad	0x3fde489ae0dfd7e8              # double 0.47318145714177584
	.quad	0x3fe5f6e310f0f157              # double 0.68638757046532362
	.quad	0x3fefb3f4d9ba9f32              # double 0.99071733975595166
	.quad	0x3fd3ae13f7764436              # double 0.30749987760742969
	.quad	0x3fefcecf38fb0969              # double 0.99399529580140921
	.quad	0x3fd2b9b9cba3a398              # double 0.29258580099718179
	.quad	0x3fdd35716adced9c              # double 0.45638690410461336
	.quad	0x3fb78ec19471c768              # double 0.092022036305733246
	.quad	0x3fd1a9a8fd5887d6              # double 0.27598023167422292
	.quad	0x3fed059ed6afa959              # double 0.90693609171766376
	.quad	0x3fe6a54a35351ab9              # double 0.7076769866187852
	.quad	0x3fd080cabb7d1c84              # double 0.25786083516545255
	.quad	0x3fe5cfbd57b8c924              # double 0.68160884030502134
	.quad	0x3fb3d93567f9e9e0              # double 0.077533090481586964
	.quad	0x3fd6401feb4507d8              # double 0.34766386008788919
	.quad	0x3fd8a93733f4a8d2              # double 0.3853281028156178
	.quad	0x3fe401aa779618a1              # double 0.62520335537626093
	.quad	0x3fc0b69312d235dc              # double 0.13057173174858761
	.quad	0x3fe4202df8079b76              # double 0.62892816966346632
	.quad	0x3fe14610410b9cfb              # double 0.53980267242596314
	.quad	0x3fe02345ebf70795              # double 0.50430580222040311
	.quad	0x3fe84a580947de57              # double 0.75907518208164049
	.quad	0x3fefcfb13e9e215e              # double 0.99410307149905086
	.quad	0x3fef2fe0633ad28d              # double 0.97459430104079702
	.quad	0x3fd6255950233570              # double 0.34602959466868466
	.quad	0x3fe876a361af0a53              # double 0.7644822032819526
	.quad	0x3fdd5a985e4b0808              # double 0.45865449150380799
	.quad	0x3fed2ac1fd23d560              # double 0.91146945420647895
	.quad	0x3fe5328a977cad5e              # double 0.6624196013193957
	.quad	0x3fe9bf9af4e26fae              # double 0.80463931874282024
	.quad	0x3fdbcd0135f9fab4              # double 0.43438749571934498
	.quad	0x3fe63781f45a9a40              # double 0.69427583432554485
	.quad	0x3fefe86b38640088              # double 0.99712143911166695
	.quad	0x3fd3b7bbf6e76edc              # double 0.30808924781534386
	.quad	0x3fd5742f865ec4da              # double 0.33521640894021021
	.quad	0x3fd98fe8dcd77362              # double 0.39940854612887311
	.quad	0x3febb99e023981b4              # double 0.86640835222720236
	.quad	0x3fe033d04b57338c              # double 0.50632490839926581
	.quad	0x3fd5d5f9d781d196              # double 0.34118505521407749
	.quad	0x3fc45084a4bb4478              # double 0.15870721858530934
	.quad	0x3fd7260c2fa81aca              # double 0.36169724134417136
	.quad	0x3fcebca4671bbd04              # double 0.24013190302455467
	.quad	0x3fe035e14388940b              # double 0.50657714071405857
	.quad	0x3fe55d517f25d2e4              # double 0.66764139970345271
	.quad	0x3fe919a36d7f664f              # double 0.78437968622456278
	.quad	0x3fbce0dcccf44d68              # double 0.1128061294914936
	.quad	0x3fa6bf627e82cce0              # double 0.044428899710874381
	.quad	0x3fdd9c07207e354c              # double 0.46264818356651882
	.quad	0x3fcd13d94ce80d08              # double 0.22716823821256349
	.quad	0x3feafb48370f6e7e              # double 0.84317408327065357
	.quad	0x3fe31428245d5677              # double 0.59621054747067503
	.quad	0x3fecabb8799fb184              # double 0.89596198801659499
	.quad	0x3faae2881c152f10              # double 0.052509549549169532
	.quad	0x3fe728e7383d97cd              # double 0.72374306663982113
	.quad	0x3fe027d041d30f09              # double 0.50486004692399533
	.quad	0x3fed56e653fc6709              # double 0.91685787585740386
	.quad	0x3feb848daf7ff564              # double 0.85993084218322879
	.quad	0x3fd6872effd6f8c4              # double 0.35200095161770784
	.quad	0x3fe33766c7a4d08b              # double 0.60051287644320561
	.quad	0x3fe85c7a4c7519fa              # double 0.76128878529635746
	.quad	0x3fca17dddfc28004              # double 0.20385335374612634
	.quad	0x3fe6ad358907f181              # double 0.70864369167206587
	.quad	0x3fe1fadee61c1214              # double 0.56187386458674604
	.quad	0x3fdfb24b5d049e5a              # double 0.49525722583573428
	.quad	0x3fdb61fe2fb42366              # double 0.42785601290284203
	.quad	0x3fc899a8c3693a9c              # double 0.19218930760913089
	.quad	0x3fec78c96d26311b              # double 0.88974448507500215
	.quad	0x3fdf6e7eeb5840f4              # double 0.49111912711033701
	.quad	0x3fecd28cd55907a1              # double 0.90070192021834228
	.quad	0x3fda3717ae2083be              # double 0.40961257938948481
	.quad	0x3fe803382d63d3ba              # double 0.75039299836372853
	.quad	0x3fe8feeaa494d5f8              # double 0.78111774582674709
	.quad	0x3fe69599427cb0f4              # double 0.70576155648953298
	.quad	0x3fe28701f796017c              # double 0.57898043018944589
	.quad	0x3fe580f16d9083a9              # double 0.67199012183492812
	.quad	0x3feb9956198c5d2a              # double 0.86246781339551615
	.quad	0x3fd2801d3b38ab98              # double 0.28906946929299115
	.quad	0x3fe01b32a91e25b8              # double 0.50332005530179114
	.quad	0x3fe4fe3b074639c4              # double 0.65603400631680886
	.quad	0x3fd34eca343622da              # double 0.30168395136619852
	.quad	0x3fe2ab69a05fe1a9              # double 0.58342439005996483
	.quad	0x3fedcdeceeb3a215              # double 0.93138739224838452
	.quad	0x3fe78d6bbfa8357e              # double 0.73601329262753246
	.quad	0x3fdf36a8bc8ba316              # double 0.48771112835542973
	.quad	0x3fb2dd8cd2692400              # double 0.073693086023141063
	.quad	0x3fefc8009a5d76c0              # double 0.99316435002739211
	.quad	0x3f9a1c7684a845e0              # double 0.025499202582130454
	.quad	0x3fd34d6618742084              # double 0.30159904850052777
	.quad	0x3fec895d25a97096              # double 0.89176804881892013
	.quad	0x3febc0118fbbb5a6              # double 0.86719587395571263
	.quad	0x3fe3af460ab9c2ce              # double 0.61514570326661455
	.quad	0x3fea722b27e9a8a8              # double 0.82643659396605518
	.quad	0x3fe4403cc0138479              # double 0.63284146799936913
	.quad	0x3fddab0c8ba39d26              # double 0.46356500279076085
	.quad	0x3fc178e88ca997e8              # double 0.13650233143124457
	.quad	0x3fe9676e96a6c884              # double 0.79387597488518268
	.quad	0x3fe2380688dea47b              # double 0.56933905346262692
	.quad	0x3fe571753b1619c6              # double 0.67009984531687716
	.quad	0x3fea454a0cef1f1d              # double 0.82095816160378698
	.quad	0x3fdb1d6ab1adc71e              # double 0.42367045737693043
	.quad	0x3fc69546b4c542dc              # double 0.17643054796874125
	.quad	0x3fed35a4a2c4ed9e              # double 0.91279823103780067
	.quad	0x3fec2de7d4ba8791              # double 0.8806037096839977
	.quad	0x3f97d4a715ee1220              # double 0.023272143090723785
	.quad	0x3fa727746ed0d770              # double 0.045222891356771266
	.quad	0x3fec64fcd2879097              # double 0.88732758635571229
	.quad	0x3fe23e512c7f70e4              # double 0.57010706606845618
	.quad	0x3febc29b9696a015              # double 0.86750583087723732
	.quad	0x3fe769b3be352b9c              # double 0.73165309095326192
	.quad	0x3fe75a88d2f1d480              # double 0.72980157089354236
	.quad	0x3fdf73bfc6f238de              # double 0.49143976620042717
	.quad	0x3feb15f3b61f6857              # double 0.84642968722188072
	.quad	0x3fd0a1f86a7c922a              # double 0.25988588713724659
	.quad	0x3fd351793ff431f0              # double 0.30184775586601997
	.quad	0x3fd688a63d50431e              # double 0.35209041583680001
	.quad	0x3fd0fb98256c5752              # double 0.26535609869585131
	.quad	0x3fdad59997d704ca              # double 0.41928710773579481
	.quad	0x3fee565e3e184dbe              # double 0.94804298522870289
	.quad	0x3fe1ff60aef62160              # double 0.56242403194577761
	.quad	0x3fe37a6b88871ba1              # double 0.60869385400370757
	.quad	0x3fb0211334b4d190              # double 0.063004684798960264
	.quad	0x3fee92492bf20231              # double 0.95535715659213427
	.quad	0x3fee4dfcf75abcdd              # double 0.94702003775992305
	.quad	0x3fda7cc9ac7e3b5c              # double 0.41386644215611113
	.quad	0x3fb2321b57937a50              # double 0.071077069168930196
	.quad	0x3fef427b2e0be37e              # double 0.9768653773636371
	.quad	0x3fda6d87b7aa62fe              # double 0.41293518959132303
	.quad	0x3fe07b0ea9173681              # double 0.51502163911364118
	.quad	0x3fafcac93efcb8c0              # double 0.062094010294786894
	.quad	0x3fb8258c91818818              # double 0.094322953723832703
	.quad	0x3fe60a228a345dac              # double 0.68873717301442161
	.quad	0x3fd221337948cb26              # double 0.2832764324586371
	.quad	0x3feb8ea10bb254a5              # double 0.86116077694409354
	.quad	0x3fd30df2e2060e24              # double 0.29772636482832326
	.quad	0x3fedd980e1d09bdc              # double 0.93280071358173755
	.quad	0x3fd17b7704c58dfc              # double 0.27316070047365293
	.quad	0x3feac0413fb09fbf              # double 0.8359686130470364
	.quad	0x3fde7e3c041a548a              # double 0.47645473862332521
	.quad	0x3fe72791235ab1ac              # double 0.7235799494279056
	.quad	0x3fa3254b74c536a0              # double 0.037393911365694921
	.quad	0x3fac372fee621800              # double 0.055108545159825439
	.quad	0x3febe6eb91a8933b              # double 0.87193849991726979
	.quad	0x3fe26a1d386de514              # double 0.57545338651030642
	.quad	0x3fdfe704541715ae              # double 0.49847515308314427
	.quad	0x3fee29e4e2131938              # double 0.94261402278133399
	.quad	0x3fe6b2b923b7c8fb              # double 0.70931679702906025
	.quad	0x3fdf4388ab5db7dc              # double 0.4884969399926129
	.quad	0x3fd6343511a58932              # double 0.34693648074439232
	.quad	0x3febb077b18645f5              # double 0.8652914492869842
	.quad	0x3fe4442587f40533              # double 0.63331867745743009
	.quad	0x3fe0bc332332a347              # double 0.52297360300608708
	.quad	0x3fea9c64fe7a53a3              # double 0.83159112646773214
	.quad	0x3fdb77601474abb6              # double 0.42916109082824094
	.quad	0x3fa2daca8f416570              # double 0.036825494754064603
	.quad	0x3fe37f21f962dfe9              # double 0.60926912983177062
	.quad	0x3fdd848abc582614              # double 0.4612147177982433
	.quad	0x3feaf85b710de91c              # double 0.84281704026151116
	.quad	0x3fe204acdab74106              # double 0.56307070463120179
	.quad	0x3fdb4e2ef581485e              # double 0.42664693808649712
	.quad	0x3fcc7f37a751d4e0              # double 0.22263236684708598
	.quad	0x3fcb88a793857ffc              # double 0.21510786727139919
	.quad	0x3fe98070df2fe22f              # double 0.79692882147998556
	.quad	0x3fca3dc45e9288d0              # double 0.20500998132508252
	.quad	0x3fdc0d96d903a630              # double 0.43832942192838953
	.quad	0x3fc16b6ebf2813f8              # double 0.13609108289543292
	.quad	0x3fe9f3c7c2c9c052              # double 0.81100833935307493
	.quad	0x3fe1848084d68a09              # double 0.54742456383638782
	.quad	0x3fe55f0555e0fa41              # double 0.66784922383505585
	.quad	0x3fea7ebe5c072b9a              # double 0.82797162985058326
	.quad	0x3fec570458e0f84f              # double 0.88562219008577781
	.quad	0x3fcb41afb131d8cc              # double 0.21294208671651516
	.quad	0x3fcbc80d95c56a34              # double 0.2170426350883915
	.quad	0x3fcb2f2d6534172c              # double 0.2123772377164469
	.quad	0x3fe5c263caf61fdf              # double 0.67997922554877366
	.quad	0x3fdaad9664d6b224              # double 0.41684493873143169
	.quad	0x3fdc833e97479004              # double 0.44551052831070614
	.quad	0x3fd7d4ee7692250a              # double 0.37237130717456124
	.quad	0x3fd52b26e02b9f90              # double 0.33075878039971318
	.quad	0x3f9c06e038208720              # double 0.027369979310726156
	.quad	0x3feeeab89e674352              # double 0.96615248621137995
	.quad	0x3fd697008e21b2dc              # double 0.35296644096415064
	.quad	0x3fe97fca051b63e6              # double 0.79684926030597292
	.quad	0x3fbd52ad8869aa60              # double 0.11454281406774092
	.quad	0x3fe895b8a23ff453              # double 0.76827651681345299
	.quad	0x3fdc18b8fd478a4e              # double 0.43900894865342799
	.quad	0x3fdc4f9c5cd26c1c              # double 0.44235905708927858
	.quad	0x3fd86e5ba3861070              # double 0.38173571557150066
	.quad	0x3facd1878f874b40              # double 0.056286083479469173
	.quad	0x3fb34f2fbc0ccc48              # double 0.075427039538042639
	.quad	0x3f96f64a953f2d80              # double 0.022423901900578525
	.quad	0x3fe1c8f90a714a87              # double 0.55578281440314548
	.quad	0x3fead7d0599124c7              # double 0.83884446614788366
	.quad	0x3fedaabb2fc03856              # double 0.92709121061649102
	.quad	0x3feb21447e83692c              # double 0.84781098088868622
	.quad	0x3fd3ff04938ac590              # double 0.31244005592733348
	.quad	0x3fe2cd7d6e554bb7              # double 0.58758422421885015
	.quad	0x3febbbcf6dc4152c              # double 0.86667605818425874
	.quad	0x3fdc983d69ee0e80              # double 0.44679198593824054
	.quad	0x3fdcabe6c4680c10              # double 0.4479920309096892
	.quad	0x3fe406312c2f4ef7              # double 0.62575586919635284
	.quad	0x3fec9740c967057c              # double 0.8934635099068795
	.quad	0x3fd394519adf7796              # double 0.30592765926655241
	.quad	0x3feb721ab35d9d78              # double 0.85767874748573458
	.quad	0x3fc3e52adf55a360              # double 0.15543113617902815
	.quad	0x3fd16bef65f2942e              # double 0.27221283870523194
	.quad	0x3fd372bb937db38e              # double 0.30387772944850944
	.quad	0x3fd916631304a632              # double 0.39199139458887367
	.quad	0x3fe3c5c127dfcaf0              # double 0.6178899554055004
	.quad	0x3fe7cbdfd9996af8              # double 0.74363701343403843
	.quad	0x3fe8ff07b2a51bdb              # double 0.78113160029976869
	.quad	0x3f66c14ab3546a00              # double 0.0027777155870698511
	.quad	0x3fddc9269585c3c2              # double 0.46540226556595254
	.quad	0x3fc82c26d46f1b54              # double 0.18884740231279784
	.quad	0x3fc4e8e4fa107ea0              # double 0.16335737428834296
	.quad	0x3fef97f9dcfeabd1              # double 0.98730176127480195
	.quad	0x3fe1f627444aad1a              # double 0.56129802072738078
	.quad	0x3fe94215a1baa1d0              # double 0.7893169554491184
	.quad	0x3febdaa52b1a2519              # double 0.87044008654007421
	.quad	0x3fe1b3453ede31c0              # double 0.55313360480209184
	.quad	0x3fed5ea86df45964              # double 0.91780492282377368
	.quad	0x3fc4b72aabeee344              # double 0.16183980364965056
	.quad	0x3fe52fe5fc619b76              # double 0.66209697049349248
	.quad	0x3fbb7b48a43ec1a0              # double 0.10734991083041345
	.quad	0x3fd658370687f33c              # double 0.34913421285436974
	.quad	0x3fe9f7f1c91915cc              # double 0.81151665951682039
	.quad	0x3feae448340754e4              # double 0.84036646043628282
	.quad	0x3fe65757345c5a09              # double 0.69816169954975849
	.quad	0x3fe62e731fdea6c6              # double 0.69317013001019556
	.quad	0x3fe8f0df44c3876e              # double 0.77940333776881032
	.quad	0x3fecfc75558d8d0b              # double 0.90581766805226616
	.quad	0x3fe7d879db0dcc29              # double 0.74517529281582029
	.quad	0x3fee386086aa53d6              # double 0.94438196470093305
	.quad	0x3fe811d7cd1f46f3              # double 0.75217809737134045
	.quad	0x3fe22c1e55a51c4c              # double 0.56788555839092103
	.quad	0x3fe64bf060adb044              # double 0.69676989443315351
	.quad	0x3fda8a7128c8ee8a              # double 0.41469983084582707
	.quad	0x3fe8ffa64ddcf47d              # double 0.78120722968709766
	.quad	0x3fe1e9c56fa63f17              # double 0.55978652769587967
	.quad	0x3fe035159f92f34b              # double 0.50648003737260561
	.quad	0x3fef4474096a8c78              # double 0.97710611189940177
	.quad	0x3fe57d4914580970              # double 0.67154363606850431
	.quad	0x3fad34cc35cd0e20              # double 0.057043439452652445
	.quad	0x3fd9f36ce9921106              # double 0.40548250970483968
	.quad	0x3fd40c39ee486aba              # double 0.3132462336522327
	.quad	0x3fe3d236646c6af9              # double 0.61941070188490166
	.quad	0x3fe0df186f4651d7              # double 0.5272333310445515
	.quad	0x3fbdc60986bc94d8              # double 0.11630305804699803
	.quad	0x3fea6b7d5a46ee62              # double 0.8256212962364311
	.quad	0x3fbfe20495c03100              # double 0.12454250961326707
	.quad	0x3fe839191ee7688e              # double 0.75696998630452739
	.quad	0x3fea688e47161e8d              # double 0.82526315578520981
	.quad	0x3fe23cf9212e1110              # double 0.5699430130048615
	.quad	0x3fe3d0e23bbe4d1a              # double 0.61924850147844102
	.quad	0x3fee2561bfaf6790              # double 0.94206321180830521
	.quad	0x3fdd583d04d4ece0              # double 0.4585106417832332
	.quad	0x3fe14e939189eac7              # double 0.54084185052428146
	.quad	0x3fe6cd0429716e0c              # double 0.71252639860489486
	.quad	0x3fc4c81d1084cda0              # double 0.16235698038654522
	.quad	0x3fdef397c9c86522              # double 0.48361773209906478
	.quad	0x3fea8f83176ab192              # double 0.8300185639723614
	.quad	0x3fd91a0bf912ef30              # double 0.39221476863507387
	.quad	0x3fedcb388eca690c              # double 0.93105724228669961
	.quad	0x3fe671fbefb7a97c              # double 0.70141407794771693
	.quad	0x3fc5bb8b55352130              # double 0.16978589687847423
	.quad	0x3fe5bee3de08de98              # double 0.67955201498166939
	.quad	0x3fd1fd8efe787eaa              # double 0.28110098696377384
	.quad	0x3fec98858da00bb1              # double 0.89361837063949257
	.quad	0x3fe7ca0d0640e072              # double 0.74341441365596794
	.quad	0x3fee11ca99472471              # double 0.93967180192079358
	.quad	0x3fa36c2b113bb430              # double 0.037934633115448313
	.quad	0x3fd8cdcd6323ec36              # double 0.38756117517158672
	.quad	0x3fd9efe42c54637a              # double 0.40526680306498231
	.quad	0x3fcd9e47e7580c78              # double 0.23139284893122514
	.quad	0x3fd06753e147e3f2              # double 0.25630661964493051
	.quad	0x3fdd0380add240e6              # double 0.45333878493057822
	.quad	0x3fcd2f6eeea97134              # double 0.22801005032932553
	.quad	0x3fd033f2414d88c8              # double 0.25317055108292807
	.quad	0x3fde389df84a1bb6              # double 0.47220563170452168
	.quad	0x3fd7013f8adbcdea              # double 0.35945118484889227
	.quad	0x3febd61732463b91              # double 0.86988410777290615
	.quad	0x3fed013549295004              # double 0.9063974789555691
	.quad	0x3fd7d16b6d1874e4              # double 0.37215696004734711
	.quad	0x3feec39513938332              # double 0.96137479613762467
	.quad	0x3feed07dda425a9e              # double 0.96295063618420662
	.quad	0x3fdf4e32d8de968c              # double 0.48914786509190189
	.quad	0x3fd60c122c1ca3f0              # double 0.34448675449181021
	.quad	0x3fb355964fecca98              # double 0.075524706376010164
	.quad	0x3fc53ef40b5e9808              # double 0.1659836822047398
	.quad	0x3fe1c21ca1b56b4c              # double 0.5549452932712966
	.quad	0x3fe0a066672309d8              # double 0.51958007949752538
	.quad	0x3fc4149368970dd8              # double 0.15687792403160361
	.quad	0x3fec7f17b9a01f0c              # double 0.8905142426965269
	.quad	0x3fddf48c16dc30cc              # double 0.46805097801621964
	.quad	0x3fef30e2a2cdaef4              # double 0.97471744344281185
	.quad	0x3fe7304f06429d60              # double 0.72464705679605501
	.quad	0x3fea850d70db59fc              # double 0.82874176065780558
	.quad	0x3fb16d96801d5768              # double 0.068078428533537072
	.quad	0x3fa2e45efa1f0130              # double 0.036898582489359177
	.quad	0x3fae45e6b7fa2750              # double 0.059127054174565985
	.quad	0x3fd61cc10c02f48a              # double 0.34550501034738856
	.quad	0x3fcbed15c695bc5c              # double 0.21817276188400825
	.quad	0x3fe23349bd7636d8              # double 0.56876074795010378
	.quad	0x3fdfb8a4ae07df7a              # double 0.49564473147574228
	.quad	0x3fa2f5b611ee8850              # double 0.037030877770363291
	.quad	0x3feeeb923a7dafa1              # double 0.96625625061050268
	.quad	0x3fd1efa58d807562              # double 0.28025187319311418
	.quad	0x3fd03322093d82d4              # double 0.25312090780611851
	.quad	0x3fc6479050750d10              # double 0.17405895165038787
	.quad	0x3fe4b51aa13ba5d2              # double 0.6471074246484767
	.quad	0x3fce468e88b2d008              # double 0.23652822184305955
	.quad	0x3fe2cdf282cbf00c              # double 0.58764005228249649
	.quad	0x3fea78a935401024              # double 0.82722912216604926
	.quad	0x3fa3c2e764d89100              # double 0.03859637361554924
	.quad	0x3fd67aee04a16278              # double 0.35125303699673038
	.quad	0x3fe34dd81ad429af              # double 0.60325246086113349
	.quad	0x3fbba0e45564dbf8              # double 0.10792376599134446
	.quad	0x3feedc6020e5c125              # double 0.96440130639351606
	.quad	0x3fe7363d73af69fc              # double 0.72537109942214739
	.quad	0x3fdd7f4d0313b370              # double 0.4608948259399801
	.quad	0x3fe6eade6b0abfa7              # double 0.71617051035535872
	.quad	0x3fc214dd293f9b58              # double 0.14126171602330362
	.quad	0x3fcc7cdab1ce6250              # double 0.22256025011008029
	.quad	0x3fe74a52d3849e57              # double 0.72782269775502584
	.quad	0x3fd26ba080617ba4              # double 0.28781902825533678
	.quad	0x3fda3ff8ed4bb508              # double 0.41015456365023839
	.quad	0x3fe677fc0e18c775              # double 0.70214655640869117
	.quad	0x3fddd6de45ebe31a              # double 0.46623951748147052
	.quad	0x3fd88a0173cae67e              # double 0.38342319782132239
	.quad	0x3fb36a46fed9cb58              # double 0.075840413302825538
	.quad	0x3fdf8302abfd431e              # double 0.49237124248343089
	.quad	0x3fd5e3501a366afa              # double 0.34199907836743615
	.quad	0x3fdc0c391b6c0398              # double 0.43824603727267109
	.quad	0x3faeb77c3975be30              # double 0.059993631376411449
	.quad	0x3fee4fba461d9662              # double 0.94723237699936313
	.quad	0x3fe85cda158d1f5b              # double 0.76133445939283761
	.quad	0x3fb9ff745f5c4c18              # double 0.10155417755258644
	.quad	0x3fbc6f1dfe81ddd0              # double 0.11107051337773233
	.quad	0x3fc95e880411f6ec              # double 0.19819736670245136
	.quad	0x3fed05499ac3df78              # double 0.90689544894756491
	.quad	0x3fe3c7c85b7e5560              # double 0.61813753003904637
	.quad	0x3fead29de1f03c67              # double 0.83821004990194303
	.quad	0x3fd0de4accba340a              # double 0.26356763832956231
	.quad	0x3fe42e78c2cf4c2a              # double 0.63067281769543126
	.quad	0x3fd7fd52be4d5a0e              # double 0.37483662208742963
	.quad	0x3fca1ce69545e4bc              # double 0.20400697983476401
	.quad	0x3fd88eb040e06c2a              # double 0.38370901427851101
	.quad	0x3fddbf1764511f2c              # double 0.46478829189844606
	.quad	0x3fefb0e0c0d646e4              # double 0.99034154571037591
	.quad	0x3fef2561e17b1586              # double 0.9733132747575588
	.quad	0x3fce4d45732d7d74              # double 0.23673313259039797
	.quad	0x3fb5d2302683fba0              # double 0.085238465693676435
	.quad	0x3fc804465ee03110              # double 0.1876304591427318
	.quad	0x3fcf1753a6a3db78              # double 0.2428993762657361
	.quad	0x3fc8e8674a9aae04              # double 0.19459239142211981
	.quad	0x3fd9d3fa2942ba7a              # double 0.40356306104050754
	.quad	0x3fe6c5d8a8ca9599              # double 0.7116511627870522
	.quad	0x3fe64ba261907b6e              # double 0.69673270278495436
	.quad	0x3fca36a80fde60a8              # double 0.20479298376881627
	.quad	0x3fe729f011d169bc              # double 0.72386935691911658
	.quad	0x3fdf86b9a851779c              # double 0.49259797513320236
	.quad	0x3fe2c3c9f2f8cffb              # double 0.58640000777677359
	.quad	0x3fe83721d7b39b3d              # double 0.75673000458923634
	.quad	0x3fe67989ddacf47b              # double 0.70233624740616507
	.quad	0x3fc3ec6a5c673518              # double 0.15565232765076398
	.quad	0x3fea8a6778a2e424              # double 0.8293950420549021
	.quad	0x3fe24754c07ed1d2              # double 0.57120740505939183
	.quad	0x3fe7299d170f8ab4              # double 0.72382978920025787
	.quad	0x3fef83eff00ce3f1              # double 0.98485562214693633
	.quad	0x3fd9850265e6325e              # double 0.39874324751943913
	.quad	0x3fcda376a7375888              # double 0.23155100979665044
	.quad	0x3fef97d0587187d8              # double 0.9872819640552235
	.quad	0x3fd26595d21e9b90              # double 0.28745027083862684
	.quad	0x3fe4c85d9b09f927              # double 0.64945869713827598
	.quad	0x3fe15b929a1706f5              # double 0.54242830367749539
	.quad	0x3fc84bd01ed869cc              # double 0.18981362825509362
	.quad	0x3fe5dd0294757a95              # double 0.68322876926306952
	.quad	0x3fea0f7b298f08b9              # double 0.81438978306711995
	.quad	0x3fee4fa1be60eaf9              # double 0.94722068007771931
	.quad	0x3fbd0f5f57465cd0              # double 0.11351581459745153
	.quad	0x3fe16125cf9b219e              # double 0.54310884998362829
	.quad	0x3fcb1a28ba2d198c              # double 0.21173581209786752
	.quad	0x3fd122b8af159786              # double 0.26774422739105608
	.quad	0x3fbe638317bd37d8              # double 0.11870593385285078
	.quad	0x3fe44c00dc197049              # double 0.63427775371702311
	.quad	0x3fd3c6903d8ec4ce              # double 0.30899435054295743
	.quad	0x3fe2b2f740b7691f              # double 0.58434641494685369
	.quad	0x3fdd29389fe77d70              # double 0.45564094176912473
	.quad	0x3fe0bcdca5fb736e              # double 0.52305443209080038
	.quad	0x3fe91d3086d602b3              # double 0.78481317839767539
	.quad	0x3feda7ba3f80fda7              # double 0.92672455218410199
	.quad	0x3fe044379d9a1230              # double 0.50832730085000399
	.quad	0x3fe4933010bbf2cc              # double 0.64296725529092091
	.quad	0x3fedf6dcd9d9d494              # double 0.9363846068287267
	.quad	0x3fc7093a1e0d5288              # double 0.17996908633599085
	.quad	0x3fe8a97a2a1bbe43              # double 0.77068813537875547
	.quad	0x3fcdec5abe619710              # double 0.23377546592671949
	.quad	0x3febde518bff8282              # double 0.87088849395156864
	.quad	0x3fe66d02a3ef9502              # double 0.70080692309116466
	.quad	0x3fcd186eea55b2b8              # double 0.22730814401747579
	.quad	0x3fd9748280f0d926              # double 0.39773619262577353
	.quad	0x3feec8e48726b416              # double 0.9620230331107702
	.quad	0x3fdf4570fd8bec0c              # double 0.48861336479575423
	.quad	0x3fda0067f64f4f36              # double 0.4062747865075268
	.quad	0x3fe97994b417a469              # double 0.79609141516006077
	.quad	0x3fa599acb6568c00              # double 0.042188069589677468
	.quad	0x3fd24ceeb3599b16              # double 0.28594558252955105
	.quad	0x3fedd01345fd31ec              # double 0.93164981527075729
	.quad	0x3fdc2a800b39bb52              # double 0.44009400459520009
	.quad	0x3fd5ef57393246dc              # double 0.3427331980284245
	.quad	0x3fe3bd2d2c102d21              # double 0.61684282880870367
	.quad	0x3fdaf5c06b36f342              # double 0.42124948949986074
	.quad	0x3f58264924ea1400              # double 0.0014739717768474936
	.quad	0x3f90b94082dd70c0              # double 0.016331680285802674
	.quad	0x3fe91c55f02a767c              # double 0.78470894725224082
	.quad	0x3fe4d150188b3420              # double 0.65055088800147942
	.quad	0x3fce41a0e9776b10              # double 0.23637782478075353
	.quad	0x3fdc27c7c73019f8              # double 0.43992800189917558
	.quad	0x3fe9fd973ffe15d5              # double 0.81220591066874681
	.quad	0x3fedc4a060576e6b              # double 0.93025225464539341
	.quad	0x3fed1831a1805cd1              # double 0.90920335334058155
	.quad	0x3fe22edb9ffffca1              # double 0.56821995973577455
	.quad	0x3fd47bff82df7d16              # double 0.32006824284140245
	.quad	0x3fe938c5ee4739de              # double 0.78818031824794921
	.quad	0x3fc5eb7373017f40              # double 0.17124789348144454
	.quad	0x3fe2f8841fcf809d              # double 0.59283643925666107
	.quad	0x3fbcef52ba3199c8              # double 0.11302678151842038
	.quad	0x3fef8d20c6054def              # double 0.98597754169389684
	.quad	0x3fe6438c7536d4ee              # double 0.69574568646808443
	.quad	0x3fe2f496808a4035              # double 0.59235692124821659
	.quad	0x3fe0cd54cb01a529              # double 0.52506484651272445
	.quad	0x3fd4f94e7777727a              # double 0.32771646181735259
	.quad	0x3fc94e8a8656e028              # double 0.19770938453234632
	.quad	0x3fce77c5ce10d34c              # double 0.23803017198374687
	.quad	0x3fd8030c57e50966              # double 0.37518604834999392
	.quad	0x3fe4e8c5212f889c              # double 0.65341431123330862
	.quad	0x3fe27ad66cd9fcf9              # double 0.5774948240286043
	.quad	0x3fd43b489f5faf8c              # double 0.31611838878483733
	.quad	0x3fec058fb7c93cfa              # double 0.87567888160438589
	.quad	0x3feea74afbfff516              # double 0.95792149752347444
	.quad	0x3fb8ea4f3a5d1340              # double 0.097325278996390985
	.quad	0x3fe7a2ca98f4b3cd              # double 0.73862199663346362
	.quad	0x3feb85f157860c1f              # double 0.86010043234307776
	.quad	0x3fe5b1db3cd01419              # double 0.67796098592282583
	.quad	0x3fd7f1414d819a10              # double 0.37410004204721847
	.quad	0x3fd1814d909521ac              # double 0.27351702803982891
	.quad	0x3feb9c92262741f0              # double 0.86286265804124973
	.quad	0x3fdefb5e843bb422              # double 0.48409235871696599
	.quad	0x3fefa564dfa5d3f4              # double 0.98893970185474566
	.quad	0x3fd7a108c309c022              # double 0.36920374914825704
	.quad	0x3fedaab4bb717f69              # double 0.92708813295392389
	.quad	0x3fd65df3ee0f8952              # double 0.34948442695726556
	.quad	0x3fef57404f751188              # double 0.97940078276637709
	.quad	0x3fcbbef20806f800              # double 0.21676469222978767
	.quad	0x3fd2ce3c87f0761c              # double 0.29383767390558702
	.quad	0x3fad2db31ab042a0              # double 0.056989285476565898
	.quad	0x3fc4e1cc4645e2ac              # double 0.16314080649660434
	.quad	0x3feb45cc6ea625a5              # double 0.85227033244261874
	.quad	0x3fc236f6b02c252c              # double 0.14230235674066571
	.quad	0x3fe2670bf1eaf1ab              # double 0.5750789380031639
	.quad	0x3fe3d117b41bbaf5              # double 0.61927399804503003
	.quad	0x3fd06dc85a2182ba              # double 0.25670059968801306
	.quad	0x3fd95b560aa3f0aa              # double 0.39619971312618907
	.quad	0x3fe8685ac88b7304              # double 0.76273860138789517
	.quad	0x3fe036ddaba375ed              # double 0.50669749758861615
	.quad	0x3fa69a40e8dd22c0              # double 0.044145611215360869
	.quad	0x3feb0a2128d94e23              # double 0.84498651483813025
	.quad	0x3fd5311d9286b302              # double 0.33112277325817285
	.quad	0x3fe76bb028204665              # double 0.7318955215179811
	.quad	0x3feec145752e3ee8              # double 0.96109269034238042
	.quad	0x3fdc1cd7f2d403c4              # double 0.43926047052087491
	.quad	0x3fee34992bc97377              # double 0.94392069389469568
	.quad	0x3fd0edc8497798c2              # double 0.26451308416870856
	.quad	0x3fe48fe4fdbf5d93              # double 0.64256524620116051
	.quad	0x3feaf69a9854c0d2              # double 0.84260301353608669
	.quad	0x3fd5d34fe213daa2              # double 0.34102246358762944
	.quad	0x3fd0891edb2f2c88              # double 0.25836917309488472
	.quad	0x3fd2ed89bff50cc0              # double 0.29574817415068466
	.quad	0x3f15c25e843dc000              # double 8.3004969438027487E-5
	.quad	0x3fe54bbe6d584acf              # double 0.66549607616829032
	.quad	0x3fe2d25b134358c4              # double 0.58817819368666635
	.quad	0x3fc5a010ef89ebe4              # double 0.16894733139255813
	.quad	0x3fc3ecc398a667a8              # double 0.15566296533216684
	.quad	0x3fcab942fbce3d20              # double 0.2087787370223646
	.quad	0x3fa9c5f27db68a80              # double 0.050338342519599344
	.quad	0x3fdfb05d7359d482              # double 0.49513946785675256
	.quad	0x3fd89451e5264c2a              # double 0.38405272844210236
	.quad	0x3fe8baaa39d22f27              # double 0.77278624814195929
	.quad	0x3fe70af552f06a80              # double 0.72008768271491874
	.quad	0x3fea2fca37a09e6d              # double 0.81833372940759619
	.quad	0x3fe8d9bc4e61aa5a              # double 0.7765790491951734
	.quad	0x3fef0ea99c8e8626              # double 0.97053986146437832
	.quad	0x3fe853dda2327ab1              # double 0.76023751906526205
	.quad	0x3feda983741a47e7              # double 0.92694256473828041
	.quad	0x3fd2e68d3e26aec2              # double 0.2953217608398796
	.quad	0x3fde87dde00b7f86              # double 0.47704264525781814
	.quad	0x3fec1b5ef4b53971              # double 0.87834117693436842
	.quad	0x3fe3df2fea6ede9b              # double 0.62099452769958263
	.quad	0x3fe9b1adfeffcb6f              # double 0.80293941311388817
	.quad	0x3febcd94d89c14cb              # double 0.86884538942890666
	.quad	0x3fe5361f6a370040              # double 0.66285677666747489
	.quad	0x3f902aa69c1aab60              # double 0.015787699964373458
	.quad	0x3fe4398a36025b1c              # double 0.63202391194031149
	.quad	0x3fe13ee4859e1bd1              # double 0.53892732712926705
	.quad	0x3fe557e1681882d6              # double 0.66697759944153279
	.quad	0x3fe336e765ead7d2              # double 0.60045213609441306
	.quad	0x3fe20239aaa0c679              # double 0.5627716381624871
	.quad	0x3fe4c7b456f6f6bf              # double 0.64937798486035792
	.quad	0x3fe084b586adcba1              # double 0.51619983963461291
	.quad	0x3f89ea1515597340              # double 0.01265350791362041
	.quad	0x3fdb924723773eda              # double 0.43080309356171897
	.quad	0x3fbc4d15f88b1008              # double 0.11055123632382913
	.quad	0x3fef04a5dd4cd543              # double 0.96931737158471553
	.quad	0x3fe364e491f77b6b              # double 0.60606602200628623
	.quad	0x3fefe1094848c702              # double 0.99622024648689966
	.quad	0x3fdadbce41233f74              # double 0.41966587411024325
	.quad	0x3fdc47ba2cf06a6c              # double 0.44187788380228343
	.quad	0x3fcef2b5eff516e8              # double 0.24178194252652152
	.quad	0x3fed96a60f1b716e              # double 0.92463972998261368
	.quad	0x3fe6afee396a7e01              # double 0.7089758988767586
	.quad	0x3fdf4495c7344ba6              # double 0.48856110051672841
	.quad	0x3fd7ccac526280a8              # double 0.37186725659740683
	.quad	0x3fe339b94f97daf4              # double 0.60079637094062699
	.quad	0x3fd9e630cd5dccbe              # double 0.40467472129166626
	.quad	0x3fcf6242f85de77c              # double 0.24518620612417041
	.quad	0x3fce3a3619e47cac              # double 0.23615146889003336
	.quad	0x3fea2c0e4d66b3a9              # double 0.81787791364114526
	.quad	0x3fe9e5466a272eca              # double 0.80923767788905221
	.quad	0x3fb41c351edb97f0              # double 0.078555412324561535
	.quad	0x3fd11c6fb5282028              # double 0.2673606175526424
	.quad	0x3fb3477e1cdc8378              # double 0.075309640928493127
	.quad	0x3fc51053af76baec              # double 0.1645607573277269
	.quad	0x3fc2a8c6b1f0951c              # double 0.14577563942399585
	.quad	0x3fc0a36172301a08              # double 0.12998598170834463
	.quad	0x3fc018fe6535d574              # double 0.12576274816425903
	.quad	0x3fd5a65f767712ce              # double 0.33827959603176516
	.quad	0x3fe75ec5fc470ebc              # double 0.73031901619875539
	.quad	0x3fdb21344752c804              # double 0.42390162434742273
	.quad	0x3fd0fdc9168ff672              # double 0.26548983767847922
	.quad	0x3fe64c98303f0a80              # double 0.6968499128636978
	.quad	0x3feb5d185c2faf7e              # double 0.8551141548646084
	.quad	0x3fb6ad29e89b4258              # double 0.088579768456164998
	.quad	0x3fde36a7d8b7376c              # double 0.47208591617242379
	.quad	0x3fa307354ad34160              # double 0.037164368995606933
	.quad	0x3fd8821b0e34bcf6              # double 0.38294102084451198
	.quad	0x3fa7ce321778aa00              # double 0.04649502312198095
	.quad	0x3fdb11b555ae2652              # double 0.4229558312150391
	.quad	0x3fecaa533a11df2a              # double 0.8957916387725835
	.quad	0x3fcfcaa7d980f320              # double 0.24837206001566248
	.quad	0x3fc32cd83ee55540              # double 0.14980605193219709
	.quad	0x3fdb0faccfe56cd8              # double 0.42283172895777232
	.quad	0x3fe8cc61f716aa3a              # double 0.77494905719260676
	.quad	0x3fd22b6f59001332              # double 0.2839010590690122
	.quad	0x3fe2a342ea2e5785              # double 0.58242936838608783
	.quad	0x3fc47397b5992a84              # double 0.15977760665039764
	.quad	0x3fe1c925a565ba6f              # double 0.55580408386397362
	.quad	0x3fe7cb9c622033a8              # double 0.74360484280770311
	.quad	0x3fd9469b966fab22              # double 0.39493455592189453
	.quad	0x3fe779a488ef1b18              # double 0.73359896416590953
	.quad	0x3fe4a2a18ddffd43              # double 0.64485242567017342
	.quad	0x3fdb5615bd801e20              # double 0.42712920671371712
	.quad	0x3fd4ec3519d094f4              # double 0.32691695710157309
	.quad	0x3fe4d7a88e4737e8              # double 0.65132549084387126
	.quad	0x3fccee133c614018              # double 0.22601547668682609
	.quad	0x3fe144e09ca9de87              # double 0.53965788458204222
	.quad	0x3f92cb575de56380              # double 0.01835381041141515
	.quad	0x3feebe52f759e037              # double 0.96073292074925731
	.quad	0x3fb13f553d946eb8              # double 0.067372634443411239
	.quad	0x3f954821502388c0              # double 0.020782967106136807
	.quad	0x3fea43b8edf80e15              # double 0.82076689222634747
	.quad	0x3fd7322e37055e6c              # double 0.36243777630941199
	.quad	0x3fefafa03698c64f              # double 0.99018870032723238
	.quad	0x3fe0c854c995c117              # double 0.52445449230256969
	.quad	0x3fa614f346adce80              # double 0.043128588083075847
	.quad	0x3fd22181085933f6              # double 0.28329492392805322
	.quad	0x3fa71f7cd577ccc0              # double 0.045162106569387017
	.quad	0x3fb06e768810df28              # double 0.064185531825270759
	.quad	0x3fee60e6df110474              # double 0.94932883804007284
	.quad	0x3fe0d8f2ddefd2dc              # double 0.52648299548180999
	.quad	0x3fcf811940c9a860              # double 0.2461272779794994
	.quad	0x3fc31cde0ac61448              # double 0.14931846166669716
	.quad	0x3fc5987d4fda0374              # double 0.16871611021999977
	.quad	0x3fe2d5555267308c              # double 0.58854166120865292
	.quad	0x3fea9f605d5b6058              # double 0.83195512994553678
	.quad	0x3fa6c59c4cf60270              # double 0.044476398844385368
	.quad	0x3fcd0ca7c8b17c04              # double 0.22694871234395475
	.quad	0x3fe000f830481660              # double 0.50011834554670642
	.quad	0x3fd86891e2df80fc              # double 0.38138243823597384
	.quad	0x3fd532700560d2ae              # double 0.33120346570221215
	.quad	0x3fef3d5454d083df              # double 0.97623650136312878
	.quad	0x3feffca5988c5340              # double 0.99959068102416637
	.quad	0x3fe0321debaca882              # double 0.50611778288045195
	.quad	0x3fd91eca774dfe78              # double 0.39250432635160548
	.quad	0x3fe2091d61564375              # double 0.56361264239431696
	.quad	0x3fd1bd56ac656f98              # double 0.27718130908555727
	.quad	0x3fd29a1f0b1b6118              # double 0.29065681538260568
	.quad	0x3fc852aeca71037c              # double 0.19002327809178243
	.quad	0x3fec4425e9864792              # double 0.88331885919818576
	.quad	0x3fe0de1a3b2ef515              # double 0.52711211737883679
	.quad	0x3fee23dbcab19e95              # double 0.9418772658218183
	.quad	0x3fe4371ff1e50ba3              # double 0.63172909970341029
	.quad	0x3fcb89ac1701a0d0              # double 0.21513892291409897
	.quad	0x3febfef7d5a258b4              # double 0.87487403607771918
	.quad	0x3fe4e1cac7fb0cd8              # double 0.65256251391147213
	.quad	0x3fd9c3764d69b830              # double 0.40255506095752747
	.quad	0x3fb6731213584278              # double 0.087693338129847365
	.quad	0x3fdfbc886150e082              # double 0.4958821249342763
	.quad	0x3fed3975af75bbba              # double 0.91326412457953343
	.quad	0x3fde2644ca23fbae              # double 0.47108573665894482
	.quad	0x3fe90747e46fa25b              # double 0.78213877312107216
	.quad	0x3fc2ead63e87eeec              # double 0.14779165318747489
	.quad	0x3fe0594093c0b703              # double 0.5108950506016473
	.quad	0x3fe12d1f75ae5d53              # double 0.53675816521255582
	.quad	0x3fe3df2854376e0a              # double 0.62099091003932583
	.quad	0x3fef3d0e26cd4dcb              # double 0.97620303705701283
	.quad	0x3fdd2fbdbc5c7310              # double 0.45603888888017341
	.quad	0x3fde69b934b7ac0e              # double 0.47520284794035283
	.quad	0x3fc1135fc8d27e48              # double 0.13340375238202484
	.quad	0x3fd4e1be7ca98c24              # double 0.32627832578708849
	.quad	0x3fe2ceb6c1e69009              # double 0.58773362990587075
	.quad	0x3fe14b46e3861bc2              # double 0.54043907583479034
	.quad	0x3fcac229de1e1c44              # double 0.20905040116869789
	.quad	0x3fd4caa8f9069790              # double 0.32486938780709185
	.quad	0x3fece183287cfc69              # double 0.90252836139542325
	.quad	0x3fd8beace2a099d8              # double 0.38663789874627019
	.quad	0x3fba4cb28fffa6a0              # double 0.10273281112281518
	.quad	0x3fcff3d10ab3f9ec              # double 0.24962819120987889
	.quad	0x3fd6cb4131cc4012              # double 0.35615568030425593
	.quad	0x3fe85b875666f24e              # double 0.76117293239037465
	.quad	0x3fd6e6adc9e08da6              # double 0.35782952036444227
	.quad	0x3fea4920abdd6251              # double 0.82142671172466397
	.quad	0x3fedc1b080780a5f              # double 0.92989373294433253
	.quad	0x3feb4db99dfb20ee              # double 0.85323792319925729
	.quad	0x3fd57630917411d6              # double 0.3353387279933292
	.quad	0x3fc8373e1a432228              # double 0.1891858700021356
	.quad	0x3fef7bcf6331f5ea              # double 0.98386353849462904
	.quad	0x3faab0eb55ffa0a0              # double 0.052131036994809365
	.quad	0x3fef446ce5864155              # double 0.97710270718566027
	.quad	0x3fe0389710b3e86d              # double 0.50690797102221341
	.quad	0x3fe7a403b4d39713              # double 0.73877129857712232
	.quad	0x3fe5f9a557e3470d              # double 0.68672434964739326
	.quad	0x3fe2ccbfe7ca76ec              # double 0.58749385139136967
	.quad	0x3fe59808fbcd1220              # double 0.67480897121328454
	.quad	0x3fe413c9fa16eba9              # double 0.62741564603435507
	.quad	0x3fe7bd9f3d3808d7              # double 0.74189722019971327
	.quad	0x3fe131e9900cc5fd              # double 0.53734281668420147
	.quad	0x3fc76e6e4099d988              # double 0.183057576697774
	.quad	0x3fc6cbd8899c8b7c              # double 0.17809588164626777
	.quad	0x3fe4b7cabb583323              # double 0.6474355372498376
	.quad	0x3fedd6d03f354193              # double 0.93247234673804014
	.quad	0x3f9cb335727514c0              # double 0.028027377234384643
	.quad	0x3fef99fa3b0bca5a              # double 0.9875460770839013
	.quad	0x3fe4db1d1a969dc0              # double 0.65174727623973894
	.quad	0x3fdb4a4bc925a642              # double 0.426409670288738
	.quad	0x3fa72b50f1ebfee0              # double 0.045252351314045702
	.quad	0x3feeadac2f2ed6a0              # double 0.95870026793882701
	.quad	0x3feb58e575f9967f              # double 0.85460160295470178
	.quad	0x3fbf903f21aa31f0              # double 0.1232947785558236
	.quad	0x3fef8f773dd3603c              # double 0.98626291346864247
	.quad	0x3fb0c8e9e91b19a0              # double 0.065565699968920033
	.quad	0x3feda5236a0f02f7              # double 0.92640848841264656
	.quad	0x3fb8da8b6cb3d7e0              # double 0.097084726370524787
	.quad	0x3fdeadeda71d58d6              # double 0.47936574287213085
	.quad	0x3fc3d7457e777dc4              # double 0.15500706362852956
	.quad	0x3fc44cf7348ab4dc              # double 0.1585988050987116
	.quad	0x3fb9cb0af9291828              # double 0.10075443823834063
	.quad	0x3fd81d0e8c108cb2              # double 0.37677348783672493
	.quad	0x3fd3ad7cf255a438              # double 0.30746387162668354
	.quad	0x3fd1aac8ddf06ff0              # double 0.27604886697531494
	.quad	0x3fd40e824e23c890              # double 0.31338555937612345
	.quad	0x3fda621144278324              # double 0.41223556190202459
	.quad	0x3fe78aac8fe9a883              # double 0.73567798717455479
	.quad	0x3fcc51836cb16f68              # double 0.2212375908592279
	.quad	0x3fb21afdbb16da98              # double 0.070724352050869022
	.quad	0x3f9b46ab03a9ea80              # double 0.02663676462041531
	.quad	0x3fe64179766cbdc4              # double 0.69549248819196707
	.quad	0x3fe856d1c5604eb6              # double 0.76059807348288788
	.quad	0x3fd223c78351ac46              # double 0.28343379806637292
	.quad	0x3fc73f1c7fb92454              # double 0.18161350475773708
	.quad	0x3fc978f9a3283f2c              # double 0.19900436846409642
	.quad	0x3febdc4bb27bce29              # double 0.87064156398850401
	.quad	0x3fc214a611ab7eac              # double 0.14125514853275456
	.quad	0x3fd0213690dece96              # double 0.25202716968053929
	.quad	0x3fe4739affdc6026              # double 0.63911199543781971
	.quad	0x3fe23d4a12e0efde              # double 0.56998161017645166
	.quad	0x3fe4129edda65c3f              # double 0.62727301875100483
	.quad	0x3fcb5bcd0ddf6bf4              # double 0.21373904397373134
	.quad	0x3fc5bd68f22f0410              # double 0.16984283280729118
	.quad	0x3fe38724480d3079              # double 0.61024679253161118
	.quad	0x3fc465895a4864fc              # double 0.15934864910449409
	.quad	0x3fef5debe1b40a74              # double 0.98021501619980577
	.quad	0x3fe15e485b48e4b4              # double 0.54275911168146829
	.quad	0x3fdd501ac49fafd2              # double 0.45801419450321845
	.quad	0x3fd3e1dcc74f65b2              # double 0.3106605478656902
	.quad	0x3fde16751b06c05c              # double 0.47012069358152586
	.quad	0x3fd1d36c08b6ec00              # double 0.27852917529133947
	.quad	0x3fdc359923d10dea              # double 0.44077137468067795
	.quad	0x3fd7e9f7e3489b0a              # double 0.37365529246965024
	.quad	0x3fe1611f9cc1911f              # double 0.54310589424543199
	.quad	0x3fe8b22f51c26d69              # double 0.77175107926033804
	.quad	0x3fed89dc1f73ba4e              # double 0.92307859557133454
	.quad	0x3fe6e625a04f7ff2              # double 0.71559411345151447
	.quad	0x3fcb58c7e890ab84              # double 0.21364687782019243
	.quad	0x3feeac7982b9d5c3              # double 0.95855403454213961
	.quad	0x3f97add2fc930100              # double 0.023124024072559202
	.quad	0x3fe4bfab566a4104              # double 0.64839712980213493
	.quad	0x3fbbe856e8d87f58              # double 0.10901396927556328
	.quad	0x3fbe9597cee34948              # double 0.11947010804150182
	.quad	0x3fe7704e77f56297              # double 0.73245929173852431
	.quad	0x3fd78d30f79daeae              # double 0.36799263173336783
	.quad	0x3fd94dd575e41782              # double 0.3953755999831331
	.quad	0x3fefb90fcb3b12de              # double 0.99134053891665608
	.quad	0x3fd7fcd41ca28fb8              # double 0.37480643078219655
	.quad	0x3f9d4ef2f1fdec60              # double 0.028621479053509424
	.quad	0x3f87bb8d85d51280              # double 0.011588197371233067
	.quad	0x3fe0545fe9f29962              # double 0.51029964154149021
	.quad	0x3fe4bce4dfe8905e              # double 0.64805835468406392
	.quad	0x3fc93ee7be6ccfd8              # double 0.19723221586320849
	.quad	0x3fe714cce064e801              # double 0.72128909899697657
	.quad	0x3fd360f47401c1aa              # double 0.30279265717310955
	.quad	0x3fee8e5b7a2b6213              # double 0.9548776041147583
	.quad	0x3fd298a087939c94              # double 0.29056561698821182
	.quad	0x3fce5ad954456c48              # double 0.23714748968891031
	.quad	0x3fc170926948e850              # double 0.1362479223333275
	.quad	0x3fc0ecf46b5086c4              # double 0.13223128547638485
	.quad	0x3fdc8b213bb8e1bc              # double 0.44599181015248823
	.quad	0x3fd8924219725a3e              # double 0.38392689213779707
	.quad	0x3feca07d9f562455              # double 0.89459115143211909
	.quad	0x3fe9be7dc647efd8              # double 0.8045033333469247
	.quad	0x3fed2c5e8425eef3              # double 0.91166616258803257
	.quad	0x3fda554ef1966fb2              # double 0.41145680992644451
	.quad	0x3fd811555128cd10              # double 0.37605793882103544
	.quad	0x3feb44d8a6ff5ce5              # double 0.85215408913327606
	.quad	0x3fec95f94c897fc2              # double 0.89330735157636121
	.quad	0x3fb181367cfd8510              # double 0.068377881541455077
	.quad	0x3fd578af0e7bdf96              # double 0.33549095549050756
	.quad	0x3fec6663c698c27d              # double 0.8874987486688749
	.quad	0x3fcc3757923ab9d0              # double 0.22043890609843553
	.quad	0x3fe4b64af56cc9db              # double 0.64725253996430909
	.quad	0x3fe17d5c374fab5f              # double 0.54655276110620921
	.quad	0x3fe332e6d449e3cc              # double 0.59996358358977764
	.quad	0x3fe2b52f4b52fbe5              # double 0.58461727821110954
	.quad	0x3fe8a39ab62dbd62              # double 0.76997123319408112
	.quad	0x3fd7a2eae7d9c776              # double 0.36931870118780041
	.quad	0x3fed21187f399249              # double 0.91029000137911809
	.quad	0x3fe86f9fcb24c6b1              # double 0.76362600018020121
	.quad	0x3fe75f3a56dd00ee              # double 0.73037449803817167
	.quad	0x3fdbe2927eeacb40              # double 0.43570387262586863
	.quad	0x3febdf3b291be3fe              # double 0.87099988965121589
	.quad	0x3fda4fc59505a626              # double 0.41111888459144763
	.quad	0x3fd1f1f4fbb6b50e              # double 0.28039288121620209
	.quad	0x3fc3df8c2ad66d28              # double 0.15525962917022551
	.quad	0x3fdcd2a9c59475b4              # double 0.45035785956300889
	.quad	0x3fe9db6a87e53237              # double 0.80803419630098616
	.quad	0x3fee7d47decad5e8              # double 0.95279305948377857
	.quad	0x3fdf92a61a62d630              # double 0.49332573487058351
	.quad	0x3fddb48ccdb5e44e              # double 0.46414489830892058
	.quad	0x3fc0f049ef765698              # double 0.13233303253644091
	.quad	0x3fcd3bf16a419cd0              # double 0.22839181602760172
	.quad	0x3feafa91839aec2b              # double 0.84308696464666377
	.quad	0x3fb042809c0f4ca8              # double 0.063514745808151418
	.quad	0x3fea11af4c5d6acb              # double 0.81465878405591619
	.quad	0x3fbbd85c98c299c8              # double 0.10877016763206548
	.quad	0x3f9c84a969209320              # double 0.027849814454515287
	.quad	0x3febb0f011be9694              # double 0.86534884896964792
	.quad	0x3fe45fd0fcea496d              # double 0.63669633290764482
	.quad	0x3f98382a7d64a740              # double 0.023651756194488671
	.quad	0x3f61ac10b08e9500              # double 0.0021572423906542904
	.quad	0x3fd48e2fc4406fc8              # double 0.32117838063436155
	.quad	0x3fc6163ee34132ac              # double 0.17255388351840872
	.quad	0x3fee31b489883db2              # double 0.94356753217464573
	.quad	0x3fd7e75249b22f34              # double 0.3734937400520153
	.quad	0x3fad5d5d47258dd0              # double 0.057352938589953717
	.quad	0x3faa362d9ce7b940              # double 0.051194596675360859
	.quad	0x3fe13d8ec586cb1f              # double 0.53876436786081061
	.quad	0x3f7a38b1138f0b00              # double 0.0064017216727190185
	.quad	0x3fe8e966e4ade4c4              # double 0.77849144615097332
	.quad	0x3fc62b9ba0f70d98              # double 0.17320580825444831
	.quad	0x3fda9cfd8e8f4384              # double 0.41583193704450871
	.quad	0x3fd8aab83b68f2d2              # double 0.38541990091088707
	.quad	0x3fc6b500ec9be250              # double 0.17739879182024021
	.quad	0x3fe7550ade05fb1f              # double 0.72913115848482224
	.quad	0x3fcae01f4e852e58              # double 0.20996466955181137
	.quad	0x3fecb79c63f2dab5              # double 0.89741343995304723
	.quad	0x3fef2eb1d1680ccd              # double 0.97445002460190155
	.quad	0x3fe422d997a0242b              # double 0.62925414671292879
	.quad	0x3fee9556bcb6edc9              # double 0.95572983606637607
	.quad	0x3feb3d17ebf0aca4              # double 0.85120769578988531
	.quad	0x3fb349fca45bc030              # double 0.075347700239718262
	.quad	0x3fd92c08326628a0              # double 0.3933125011614127
	.quad	0x3fc8103c4da797e8              # double 0.18799546996814276
	.quad	0x3fefe24352996fe2              # double 0.99636999256790326
	.quad	0x3fd7b9bcfb04e23e              # double 0.37071156037885433
	.quad	0x3f90868be3864660              # double 0.0161382539386693
	.quad	0x3feb4357ff036326              # double 0.85197067076942257
	.quad	0x3fe5aeae12da05b9              # double 0.67757323915446144
	.quad	0x3fd1436be6e75b00              # double 0.26974008130257232
	.quad	0x3fed1bb3711f662e              # double 0.90963146299617903
	.quad	0x3fe837dbca83527a              # double 0.7568186717349612
	.quad	0x3fb806ed02d9d018              # double 0.093855679698947703
	.quad	0x3fe3b16f02d0a2e5              # double 0.61540937948037977
	.quad	0x3faf8077a004ae40              # double 0.061527002604944148
	.quad	0x3fdf08a01dd0b216              # double 0.48490145599024126
	.quad	0x3fd9ad05da0f043c              # double 0.40118547720709663
	.quad	0x3fde1d57e6073440              # double 0.47054097617803237
	.quad	0x3fccca97821ca988              # double 0.22493261197207581
	.quad	0x3fedc476b0db1134              # double 0.93023237745413789
	.quad	0x3fdcf5d329d5371a              # double 0.45250395856133852
	.quad	0x3fe2de4e1e541cd2              # double 0.58963685916469388
	.quad	0x3fd72996a8b19f92              # double 0.36191336130149765
	.quad	0x3fed2798ebcdbce3              # double 0.91108366065409674
	.quad	0x3fede9a9315d8c69              # double 0.9347730602425034
	.quad	0x3fdf16b066d27804              # double 0.48575983086800556
	.quad	0x3fc255ed975195b0              # double 0.14324731720550465
	.quad	0x3fe3bb6999ac6ea3              # double 0.61662750257842835
	.quad	0x3fa93fd91ba32870              # double 0.049315247176836219
	.quad	0x3fde3d48e37f4f2e              # double 0.47249052254231827
	.quad	0x3fe961163f1508c5              # double 0.79310142822966923
	.quad	0x3fd427069b42f980              # double 0.31488194620387588
	.quad	0x3fe5718fbc013c2f              # double 0.67011248321239758
	.quad	0x3fcc3a280f9d5e38              # double 0.22052479517400214
	.quad	0x3fe90781dbffda07              # double 0.78216641396176179
	.quad	0x3fe2956cfb8796a3              # double 0.58074044348605403
	.quad	0x3fbe2a3f677864d8              # double 0.11783214832429978
	.quad	0x3fde71e7a622c888              # double 0.47570220207411085
	.quad	0x3fce363e23085c18              # double 0.23603035650805348
	.quad	0x3fdc3eb748b882ee              # double 0.44132787801394968
	.quad	0x3feeb857d3058f49              # double 0.96000281539134235
	.quad	0x3fea9b93d6faee6e              # double 0.83149139393158378
	.quad	0x3fea998b5ffb9f15              # double 0.83124321695956616
	.quad	0x3fb51c1dcf668ef0              # double 0.082460272917667998
	.quad	0x3fe240475072a579              # double 0.57034650528400654
	.quad	0x3fc65913a3fdb9fc              # double 0.17459340579394211
	.quad	0x3fe600226539b3cf              # double 0.68751640101037903
	.quad	0x3fe433fe0ad39381              # double 0.63134672274155446
	.quad	0x3fddd7bf23f5e7b4              # double 0.46629313003324602
	.quad	0x3fea6a1d714b4d84              # double 0.8254534924293897
	.quad	0x3fe70bc4262d8724              # double 0.7201863046322825
	.quad	0x3fe8df2579094621              # double 0.77723954810989337
	.quad	0x3fde9a336122380e              # double 0.47816166387281178
	.quad	0x3fef3bfd7b91d1ba              # double 0.97607301840485339
	.quad	0x3fe0e204d2aca2a8              # double 0.52759019038520183
	.quad	0x3fdca778e18d58aa              # double 0.44772169138503648
	.quad	0x3fe7de38ba403c7d              # double 0.7458766591752376
	.quad	0x3fd534ed38e7de92              # double 0.33135538632584727
	.quad	0x3fd29a290c4139d4              # double 0.29065920063740447
	.quad	0x3fd85473c5237518              # double 0.38015455486113714
	.quad	0x3fe76e60c9c99969              # double 0.73222388660069015
	.quad	0x3fec448bafd30f62              # double 0.88336738911355561
	.quad	0x3febb2d258d2f9b4              # double 0.86557881687604387
	.quad	0x3f98d72b3af23d60              # double 0.024258304093163985
	.quad	0x3fefab2f48dda731              # double 0.98964657050712478
	.quad	0x3feee6bc7fe1a2be              # double 0.96566605545839201
	.quad	0x3fd6cde104f05830              # double 0.35631585581120628
	.quad	0x3fed074917d4f5ae              # double 0.90713934569037291
	.quad	0x3fefab4582fda3e6              # double 0.98965716919076097
	.quad	0x3fd2a6b2c648ed72              # double 0.29142445911175863
	.quad	0x3fec6d7cedbc4991              # double 0.88836523468698847
	.quad	0x3f95a13f404337a0              # double 0.021122921273494577
	.quad	0x3fe1637f0be8b9de              # double 0.54339554143899327
	.quad	0x3fcee54b162273f0              # double 0.24137247639455905
	.quad	0x3fea49338f667d55              # double 0.82143571861153453
	.quad	0x3fdca1c8697a7b0a              # double 0.44737444210652255
	.quad	0x3fe61ffd67e586ac              # double 0.69140501301099766
	.quad	0x3fd377d41f1fb1a6              # double 0.30418875731882122
	.quad	0x3fe996ad4943b526              # double 0.79964317616910274
	.quad	0x3fed8f644dd45811              # double 0.92375388337200282
	.quad	0x3fc89c586bed64b8              # double 0.19227128286255435
	.quad	0x3fbb56e1b602da38              # double 0.10679445928222087
	.quad	0x3fa5d22bdb04ef60              # double 0.042619104848624856
	.quad	0x3fe121e1579ab230              # double 0.53538577184878555
	.quad	0x3fe589b388efb224              # double 0.67305924172757559
	.quad	0x3fd8ff8b09f8e6b0              # double 0.3905971143136453
	.quad	0x3fe7ea4b8680ddad              # double 0.74735046644393821
	.quad	0x3fec7573f7b69e56              # double 0.88933752423776968
	.quad	0x3fe8f3cc4a8b3437              # double 0.77976049956635662
	.quad	0x3fd9e318ac576bf0              # double 0.40448586302016931
	.quad	0x3f9bc709915e7d60              # double 0.027126454827905433
	.quad	0x3fe58aacad47e52e              # double 0.67317804187692842
	.quad	0x3fdea9ca244d3cee              # double 0.47911313576783143
	.quad	0x3fe8a9339ecc6477              # double 0.77065449729265267
	.quad	0x3fcbbb552dd1e93c              # double 0.21665444123557076
	.quad	0x3fdbd1e3d0afcfa8              # double 0.43468566302839884
	.quad	0x3fc3bc65627fe528              # double 0.15418689069319069
	.quad	0x3fe720f18c4d53ad              # double 0.72277142908807479
	.quad	0x3fbb27aabafd4cd8              # double 0.1060740190999242
	.quad	0x3fef68bc0baf2094              # double 0.98153497964905733
	.quad	0x3feeed52ca7cf9bd              # double 0.96647014187310953
	.quad	0x3fca096bf857df2c              # double 0.203412529240944
	.quad	0x3fe69582a825596f              # double 0.70575077858920376
	.quad	0x3fa09d91d49250c0              # double 0.032452161024737247
	.quad	0x3fb153283f359738              # double 0.067675128395049522
	.quad	0x3f9ca108cdc62140              # double 0.027958047446675183
	.quad	0x3fd5f61f23c21676              # double 0.34314707271582934
	.quad	0x3fe7e929692e89d3              # double 0.74721212905233825
	.quad	0x3fe184f50ebe8d9a              # double 0.54748013381724836
	.quad	0x3fd1bae853a3369a              # double 0.27703293006639174
	.quad	0x3fe90c75ba43bc95              # double 0.78277098064235651
	.quad	0x3f82de1c02a24600              # double 0.0092127025893971037
	.quad	0x3fce59b5f7bea10c              # double 0.23711275669962395
	.quad	0x3fe09b745b505448              # double 0.51897638163303217
	.quad	0x3fbdfaad8375c348              # double 0.11710628947709012
	.quad	0x3fdfc6d3c280f93c              # double 0.49651044840347303
	.quad	0x3fe1883d0f0e97b0              # double 0.54788067761250225
	.quad	0x3fe3a3583f4034df              # double 0.61368954042123025
	.quad	0x3fd6ef21a4e47136              # double 0.35834542372483058
	.quad	0x3fd34d140fd1153a              # double 0.30157949013330987
	.quad	0x3fc40d0159eb2bec              # double 0.15664688959654371
	.quad	0x3fe518801b8936e3              # double 0.6592407739460352
	.quad	0x3fe0c8d521fe7843              # double 0.52451569213349847
	.quad	0x3fc7632f4b56d08c              # double 0.18271437815349534
	.quad	0x3fe1a82de302d460              # double 0.55177969301315599
	.quad	0x3fe85f3a2d4ff3f3              # double 0.7616244206434416
	.quad	0x3fd302b5de44b7ea              # double 0.29704043107892508
	.quad	0x3fc67360ffce144c              # double 0.17539608469465617
	.quad	0x3fc22f50d42b576c              # double 0.14206896171406969
	.quad	0x3fa2250b921c3ca0              # double 0.035438882432680119
	.quad	0x3fdec438b30a4dda              # double 0.48072640880965667
	.quad	0x3fe6822b3cf20214              # double 0.70338975814235249
	.quad	0x3fdcb9ac726ffc5c              # double 0.44883261848003086
	.quad	0x3fd014f6b388e132              # double 0.25127952130016518
	.quad	0x3fe405d5250e980d              # double 0.62571198690125274
	.quad	0x3fdf7f56500ad3b4              # double 0.49214704338674697
	.quad	0x3fe50c62e1565f67              # double 0.65776199351510634
	.quad	0x3fea647752d7fde5              # double 0.82476392918027541
	.quad	0x3fe0928ccfb2c258              # double 0.51788940969533837
	.quad	0x3fe71e694207f01e              # double 0.72246230026894742
	.quad	0x3fe7646aa6b20c53              # double 0.73100788648333503
	.quad	0x3fd2f5eda87d7836              # double 0.29626027540314526
	.quad	0x3fef0898cebe4012              # double 0.96979942683720055
	.quad	0x3fedbe569e7e87f0              # double 0.92948466258917328
	.quad	0x3fe791e0882a1a4c              # double 0.73655726046201542
	.quad	0x3fe5bb94b313ae31              # double 0.67914805389358979
	.quad	0x3f91383542c3cc20              # double 0.01681597919464306
	.quad	0x3fd951ac44ea8fd0              # double 0.39560991983512128
	.quad	0x3f869ac3dc3468c0              # double 0.01103737846147046
	.quad	0x3fde7e7321b7b5fc              # double 0.47646787922607792
	.quad	0x3f56aa2435915e00              # double 0.0013833383184386205
	.quad	0x3feb8d7801b9f453              # double 0.86101913773712579
	.quad	0x3fede27a11ed74ad              # double 0.9338960981509864
	.quad	0x3fd5006c88b223ba              # double 0.32815087651448105
	.quad	0x3fc4bc224a70f9f0              # double 0.16199139246778271
	.quad	0x3fea334c3a7673cf              # double 0.81876193445679657
	.quad	0x3fcfa7d6081d6294              # double 0.2473094501135803
	.quad	0x3fc0c155e224ce54              # double 0.13090013067413742
	.quad	0x3fe27479901f3b31              # double 0.57671812199428107
	.quad	0x3feba61845c539e6              # double 0.86402524592432139
	.quad	0x3feba427403f74b0              # double 0.86378824757016126
	.quad	0x3fd9bafbe8b13e84              # double 0.40203759883750245
	.quad	0x3fe01e0f7a95f95a              # double 0.50366949026628594
	.quad	0x3fecf610052cb7b5              # double 0.9050369359081204
	.quad	0x3fea71f3f4b00f96              # double 0.82641027250837129
	.quad	0x3fc2c4671a2041a0              # double 0.14661873603519116
	.quad	0x3fc606c23410f1bc              # double 0.17208125631613125
	.quad	0x3fc106e2731a2650              # double 0.13302260036680247
	.quad	0x3fec520800128113              # double 0.88501358045690137
	.quad	0x3fc4d4f4a831eb5c              # double 0.16274889195104947
	.quad	0x3f99c8622f29a080              # double 0.025178465012146933
	.quad	0x3fd08bcc2ad2e206              # double 0.25853256399162239
	.quad	0x3fd9e58b09e92672              # double 0.40463520019384369
	.quad	0x3f8e0ba949df5200              # double 0.014670679633050021
	.quad	0x3fbd21ffebaef828              # double 0.11380004409781519
	.quad	0x3fde7009cc476ce4              # double 0.47558827351686106
	.quad	0x3fc97c75604fa238              # double 0.19911067202271382
	.quad	0x3fe4666cf33f03c7              # double 0.63750312336934989
	.quad	0x3fd753fab68b5750              # double 0.36450069262115381
	.quad	0x3fe7b272f6837c61              # double 0.74053333422842738
	.quad	0x3fe4305ea5df6e87              # double 0.63090450665500064
	.quad	0x3fea8652d6658fa3              # double 0.82889692186698871
	.quad	0x3fe6d8649c1bc75f              # double 0.71391516199058092
	.quad	0x3fc1b65845915ef4              # double 0.13837722203128744
	.quad	0x3fb7c3a8f7df3e80              # double 0.092829285159718111
	.quad	0x3fe6c00c1ae77389              # double 0.71094327215870223
	.quad	0x3fa4080a135bdcb0              # double 0.03912383543313902
	.quad	0x3fd93e17e739b484              # double 0.39441487866026415
	.quad	0x3fc5950398e7d088              # double 0.16861004797067758
	.quad	0x3fec37b101f7f56f              # double 0.88179827103128428
	.quad	0x3fa0c4e7770eae30              # double 0.032752259524695737
	.quad	0x3fe1a7031af75a7c              # double 0.55163722292748174
	.quad	0x3fe8f74d79632e0f              # double 0.78018830975037357
	.quad	0x3fa49b7d3ebfb950              # double 0.04024878874757809
	.quad	0x3fec5755bca16d2c              # double 0.88566099969776734
	.quad	0x3f706b7f88ac5d80              # double 0.0040087682525816737
	.quad	0x3fdc48d6387724b8              # double 0.4419456054134332
	.quad	0x3fd667f67afd1dae              # double 0.3500953866063935
	.quad	0x3fb42ae6fda64ec0              # double 0.078779637266332081
	.quad	0x3fd63cb80f09002c              # double 0.34745599239613756
	.quad	0x3fd1862854f93fd2              # double 0.27381332681852399
	.quad	0x3fe78ea6b0801bc1              # double 0.73616346810091937
	.quad	0x3fbefff3c7b4bc38              # double 0.12109302163729374
	.quad	0x3fd733c5f546b25e              # double 0.36253498986005706
	.quad	0x3fe52ae2eed1d2bb              # double 0.66148516315896388
	.quad	0x3fe8d9828e6ebff9              # double 0.77655151194448913
	.quad	0x3fb31a79b0dd6438              # double 0.074622731857190483
	.quad	0x3f7120e9ccb2e080              # double 0.0041817791745232258
	.quad	0x3fe4dad175d04a2f              # double 0.65171120653605452
	.quad	0x3fea55179103cdf7              # double 0.82288721392836706
	.quad	0x3fe3ab4961b85b2a              # double 0.61465901456799554
	.quad	0x3fc5065412e6486c              # double 0.16425562784985759
	.quad	0x3fc9d41db9b102b4              # double 0.20178577010121546
	.quad	0x3fd5b0fe19074958              # double 0.33892776912866429
	.quad	0x3fee887556390b52              # double 0.95415751305004393
	.quad	0x3fef8396e22e7f89              # double 0.98481315780735301
	.quad	0x3fedb74fd429a4d8              # double 0.92862693250676909
	.quad	0x3fad4366032a9dd0              # double 0.05715483463910298
	.quad	0x3feb26be4ed5ce58              # double 0.84847941777702385
	.quad	0x3fd3e647f3652958              # double 0.31093024033602523
	.quad	0x3fed16f7256e6119              # double 0.90905339537406171
	.quad	0x3fd13ffccdfa93e6              # double 0.26953048815840785
	.quad	0x3fc3764edae82298              # double 0.15204797447974694
	.quad	0x3fe2edf2e1ec3aa7              # double 0.59154647946873673
	.quad	0x3faf7a990d1a43a0              # double 0.061482222413480558
	.quad	0x3fbf8bcfa87102a0              # double 0.12322709905948637
	.quad	0x3fee3edaf8a9b693              # double 0.9451727730463112
	.quad	0x3fda792b283f3136              # double 0.41364554338794635
	.quad	0x3feb69056bd6355b              # double 0.85656996785989337
	.quad	0x3fc42b0fa2c920c8              # double 0.1575641198016966
	.quad	0x3fe43b3061bca006              # double 0.6322252186701014
	.quad	0x3feda20d358476a6              # double 0.92603168919204815
	.quad	0x3fce3ec8eed7b22c              # double 0.23629104292139524
	.quad	0x3fe0b19eb293eea8              # double 0.52168211821068144
	.quad	0x3fd65387fccfcc76              # double 0.34884833992618469
	.quad	0x3fef640ba862af1d              # double 0.98096259010114617
	.quad	0x3fa398de0cf6a7e0              # double 0.038275660593469985
	.quad	0x3fe7c438fef43f80              # double 0.74270295901986572
	.quad	0x3fd008c4768607ec              # double 0.25053512167516945
	.quad	0x3fdd488624f8f806              # double 0.45755151377295566
	.quad	0x3fd58e2d34c5d172              # double 0.33680277017199167
	.quad	0x3fed1d0684f38f3d              # double 0.90979314772673769
	.quad	0x3fee9642157010a7              # double 0.95584205805837008
	.quad	0x3fe8ad1afa6d04cf              # double 0.77113102828311664
	.quad	0x3fe63a653a62b056              # double 0.69462834742945279
	.quad	0x3fdbe73c895609dc              # double 0.4359885541126951
	.quad	0x3fe5cd0c0b6346ca              # double 0.68128015731982683
	.quad	0x3fbc35c7d35adb30              # double 0.11019562635452185
	.quad	0x3fe75073b5d9561d              # double 0.72857079999329566
	.quad	0x3fe510663d602d6f              # double 0.65825187671127405
	.quad	0x3fb48411f5ee4208              # double 0.080140230695413206
	.quad	0x3fb7c21fddc8e5d8              # double 0.092805854460400794
	.quad	0x3fe6365dbbdef38d              # double 0.69413649266754052
	.quad	0x3fcf3382c8120248              # double 0.24375948685703208
	.quad	0x3fb8731b6d997770              # double 0.09550639558571361
	.quad	0x3f975bb1b1380920              # double 0.022810722772200198
	.quad	0x3fe3e4d5a8a8d2c4              # double 0.62168391171743353
	.quad	0x3fe87f6829f59266              # double 0.76555259890717475
	.quad	0x3fd585dd0362884a              # double 0.33629536943965788
	.quad	0x3fd3d375b0dae07c              # double 0.30978147765154751
	.quad	0x3fe05a423c0cd888              # double 0.51101791122961604
	.quad	0x3fec996be99d55e3              # double 0.8937282145295139
	.quad	0x3fcb34e065448380              # double 0.21255116409977504
	.quad	0x3fce98bcf6843a7c              # double 0.23903619801463438
	.quad	0x3f9e984fe482ac20              # double 0.029877899477167458
	.quad	0x3fe3c887c1a12f0a              # double 0.61822879617963733
	.quad	0x3fe1dca9b8c24b10              # double 0.55818639837011297
	.quad	0x3fe2cc1f6d3f2abb              # double 0.58741732918982537
	.quad	0x3fe6650064db5ef5              # double 0.69982928942314848
	.quad	0x3fd90c065fa14042              # double 0.39135894144874694
	.quad	0x3febb66490313aba              # double 0.86601474916991283
	.quad	0x3fecbe3d5ac3fbb5              # double 0.8982226155056795
	.quad	0x3fef765e8f94489e              # double 0.98319938700503307
	.quad	0x3fecd1fbce4289ec              # double 0.9006327656282429
	.quad	0x3feca1f51fecbff2              # double 0.8947702048808408
	.quad	0x3fd01b5c8ad843c4              # double 0.25167001303730907
	.quad	0x3fd195d2b21ae2a8              # double 0.27476947205608804
	.quad	0x3fe252b77dd21244              # double 0.57259726118406507
	.quad	0x3fe0c7407ad998ea              # double 0.52432273859156209
	.quad	0x3fe055883508ed54              # double 0.51044092520116147
	.quad	0x3fe890e6ae473bfc              # double 0.76768812216494053
	.quad	0x3fd505b3b15d0c32              # double 0.32847301788951022
	.quad	0x3feeeafcf9c89472              # double 0.96618508134691994
	.quad	0x3fac44c922248fe0              # double 0.055212293069672347
	.quad	0x3feee8ab6ecd567c              # double 0.96590205803904849
	.quad	0x3f67640ba041a000              # double 0.002855322558435347
	.quad	0x3fe1a73a32f7f67c              # double 0.55166349367910028
	.quad	0x3fe1f3ccbc8b0811              # double 0.56101071190664886
	.quad	0x3fcc33342a0ce974              # double 0.22031261494869236
	.quad	0x3fdb5912cf657956              # double 0.42731161359360692
	.quad	0x3fe9f8336fecb391              # double 0.81154796467090951
	.quad	0x3f835533d53871c0              # double 0.0094398545689323709
	.quad	0x3f8621a5ad90a340              # double 0.010806364402087376
	.quad	0x3fe547ac70c683f8              # double 0.66499921823935804
	.quad	0x3fc1d847f2983480              # double 0.13941287370144906
	.quad	0x3faeed1ec5d8a590              # double 0.060402833605915807
	.quad	0x3fdde81de9901398              # double 0.46729228791110122
	.quad	0x3fedc307c78bad68              # double 0.93005742048027873
	.quad	0x3fe41f9efafefde5              # double 0.62885998747509275
	.quad	0x3fb54033340df248              # double 0.083010864456761202
	.quad	0x3fd4648a846d0ed0              # double 0.31863654072024605
	.quad	0x3fd4391d194e3c68              # double 0.31598594161272908
	.quad	0x3fdf9e6d626292ce              # double 0.49404463394084253
	.quad	0x3fe9252d974d4bf2              # double 0.78578834105644391
	.quad	0x3fba2de1d325c338              # double 0.10226260571449763
	.quad	0x3fe9c8641fd08e7b              # double 0.80571180547526866
	.quad	0x3fc1d841336d1d4c              # double 0.13941206942602447
	.quad	0x3f8e706d080bc780              # double 0.014862872894329859
	.quad	0x3fec045a0619be3f              # double 0.87553120795741524
	.quad	0x3fd7fcf3ab13c1b4              # double 0.37481395441775622
	.quad	0x3fc5620d07c51a5c              # double 0.16705477599517138
	.quad	0x3fdd3f58bbbb9034              # double 0.45699137051838368
	.quad	0x3fc5b61e96aeff98              # double 0.16962034566494988
	.quad	0x3fe818a82be3c46c              # double 0.75300987789354456
	.quad	0x3fd2d44a2558a05e              # double 0.29420713088120987
	.quad	0x3fdd69ed03d18aee              # double 0.45959020016577667
	.quad	0x3fdc78a0a38a8ada              # double 0.44486251803225019
	.quad	0x3fd2de35152c2b6a              # double 0.29481246059065447
	.quad	0x3fef3090fb14dcb3              # double 0.9746785072265055
	.quad	0x3fef63e4cdfa4a7d              # double 0.98094406347293239
	.quad	0x3fe1620544da1fb4              # double 0.54321540305772098
	.quad	0x3feaa44968f69442              # double 0.83255453587174366
	.quad	0x3fe9338e24ba7375              # double 0.78754336522579982
	.quad	0x3fba80111d364848              # double 0.10351664508041936
	.quad	0x3fd95080e72465ce              # double 0.3955385453460537
	.quad	0x3f86b917e94219c0              # double 0.011095225149131305
	.quad	0x3feff542f1e788d1              # double 0.99868914839705713
	.quad	0x3fda8a4d9ceb7c18              # double 0.41469135593610096
	.quad	0x3fe74d237b3a023d              # double 0.72816633289045962
	.quad	0x3fe9f82b4dafed9a              # double 0.81154408620152485
	.quad	0x3fb7154838d89258              # double 0.090168489340223146
	.quad	0x3fd0ab5a48b4ed42              # double 0.26045853710430233
	.quad	0x3fd37ba892bf5d90              # double 0.30442251520931851
	.quad	0x3fe3b8d9e87324df              # double 0.61631484413478776
	.quad	0x3fee8b39d7d624c4              # double 0.95449535518232453
	.quad	0x3fb239f14ae9e1b0              # double 0.071196633138135068
	.quad	0x3fc26ee003e9dd7c              # double 0.14400863829699151
	.quad	0x3fc8bd7cd34d35a4              # double 0.19328270261250424
	.quad	0x3fedcf6fe1bf64ac              # double 0.93157190409978829
	.quad	0x3fd019cd1af1d316              # double 0.25157477980910536
	.quad	0x3fbe14c1b88ed438              # double 0.11750422244843228
	.quad	0x3f8d5107266eed80              # double 0.014314704761878572
	.quad	0x3fcebf5e1f688ef8              # double 0.24021507772078343
	.quad	0x3fe79e2925f310b9              # double 0.73805673038488984
	.quad	0x3fe8fd3f54cce1c4              # double 0.78091398775637133
	.quad	0x3fd8bb05b39eb2ca              # double 0.38641493359572776
	.quad	0x3fe145ec2205b122              # double 0.53978544850318522
	.quad	0x3fdbb7a35c2f406c              # double 0.43308338167572091
	.quad	0x3fd6f4c8f07afce0              # double 0.3586904858056652
	.quad	0x3feb4a1642dfcc21              # double 0.85279381810540056
	.quad	0x3fd267c0b2c9f072              # double 0.28758256397100646
	.quad	0x3fe4d81de2b7638d              # double 0.65138143806972126
	.quad	0x3fef5205fe2e071c              # double 0.97876262325755503
	.quad	0x3fe6e4252a25a382              # double 0.71534975272980739
	.quad	0x3fafa03f1c954ff0              # double 0.061769458998838789
	.quad	0x3fe95e29c3f880f1              # double 0.79274452472239265
	.quad	0x3fd56500f17321b6              # double 0.33428977564883711
	.quad	0x3fed1a477f1a3319              # double 0.90945792030979355
	.quad	0x3fe80e364eaad40e              # double 0.75173488011080436
	.quad	0x3fbf800979fcb118              # double 0.12304743984413269
	.quad	0x3fec65ca3273ab77              # double 0.88742551664232294
	.quad	0x3fe6321e96589b64              # double 0.69361810078121922
	.quad	0x3fcf9866852f19e4              # double 0.24683839324116186
	.quad	0x3fe1bd6947dd5b51              # double 0.55437149082249892
	.quad	0x3fe1c60eb289a917              # double 0.55542693014766342
	.quad	0x3fb6d7ab343689c8              # double 0.089228344199489773
	.quad	0x3f9b89de60e42e00              # double 0.026893114722993161
	.quad	0x3fe07d07bdf3c87b              # double 0.51526248073629632
	.quad	0x3fe8434f2f318de9              # double 0.75821646897787531
	.quad	0x3f96b64564c41dc0              # double 0.022179683947823881
	.quad	0x3fe022f8f19fd41e              # double 0.50426909630062133
	.quad	0x3f5f8fb1f4305000              # double 0.0019263494330106212
	.quad	0x3fe191c5d68aa1ca              # double 0.54904453184740842
	.quad	0x3feca6ca7f47546c              # double 0.89536023005588338
	.quad	0x3fcc3972fddf6c1c              # double 0.22050321003084228
	.quad	0x3fc16719fd14bcfc              # double 0.13595890862914206
	.quad	0x3fe71711eca11d3d              # double 0.72156616417570485
	.quad	0x3fe9dc8bf2c7f39b              # double 0.8081722013299556
	.quad	0x3f99ad0ab3f29aa0              # double 0.025074164612898131
	.quad	0x3fc0354f57316ffc              # double 0.12662688977695769
	.quad	0x3fe3d02939429b3c              # double 0.61916028197888506
	.quad	0x3fc51bac2f60ab0c              # double 0.16490700066909658
	.quad	0x3fe5971810dfccbc              # double 0.67469409270997671
	.quad	0x3fee8475e589ccce              # double 0.95366949874587603
	.quad	0x3fe8f3daa3edf401              # double 0.77976734178048457
	.quad	0x3fef88041e43449c              # double 0.98535352621742644
	.quad	0x3fad1620ec07cd20              # double 0.056809452831567464
	.quad	0x3fec07a443677080              # double 0.87593281903129139
	.quad	0x3fe80c16a4fb3567              # double 0.75147564146906809
	.quad	0x3f9bfa536ea75ca0              # double 0.027322105053681711
	.quad	0x3febcb920c68a935              # double 0.86859991477584819
	.quad	0x3fe55a39dc03c162              # double 0.66726391765227455
	.quad	0x3fe301da4b4592bc              # double 0.59397616101758599
	.quad	0x3fccfb24c46241b8              # double 0.22641429509213906
	.quad	0x3fdf4284affd2de2              # double 0.48843495546745264
	.quad	0x3fe30f09a4a30e2f              # double 0.59558565288211252
	.quad	0x3fe831404013aae5              # double 0.75601208224301486
	.quad	0x3fd1a63b3ee02086              # double 0.27577096119103606
	.quad	0x3fc2aa59817cfa70              # double 0.14582365820566023
	.quad	0x3fe10ab26b3c2a90              # double 0.53255577987995828
	.quad	0x3fc00257c77dce20              # double 0.12507149925987537
	.quad	0x3fe921ad35185f9c              # double 0.78536091203840241
	.quad	0x3fecdcbd4ec9431f              # double 0.90194573772359721
	.quad	0x3fefcd1b1ce058c6              # double 0.99378734245217326
	.quad	0x3fe795f75cdd2f02              # double 0.73705642831325258
	.quad	0x3fd9fe20586927a8              # double 0.40613564142096914
	.quad	0x3fd6a7b16d2e0bfc              # double 0.35398517286392894
	.quad	0x3fd0acb58eb1259a              # double 0.26054133353007958
	.quad	0x3fed6cbe80605148              # double 0.91952443192943978
	.quad	0x3fd6d713bbd624f8              # double 0.35687726348312721
	.quad	0x3fcd399e605a1eac              # double 0.22832088188828459
	.quad	0x3fd0bbb7038c16bc              # double 0.26145720812233342
	.quad	0x3fee704dc10f29cb              # double 0.95120895106202263
	.quad	0x3fed2a7e3dd053de              # double 0.91143714974407053
	.quad	0x3fe8c76aab2854ad              # double 0.77434285573203498
	.quad	0x3fdd71d77af4e638              # double 0.46007334716304937
	.quad	0x3fe8590ea9612f17              # double 0.76087124902685133
	.quad	0x3fdc40c2c8b6f45a              # double 0.44145269013444521
	.quad	0x3fe8e094e4dd31f7              # double 0.77741474819191481
	.quad	0x3fe1647770d25b3d              # double 0.54351398501862713
	.quad	0x3feb18472477b47b              # double 0.84671361086442631
	.quad	0x3f7084acdfa0db80              # double 0.0040327790139177422
	.quad	0x3fcbc62ba06f0ad0              # double 0.2169851811759913
	.quad	0x3fec1ba636229986              # double 0.87837515424034573
	.quad	0x3feaa5519696186d              # double 0.8326805058611747
	.quad	0x3fdc0e755d32babe              # double 0.43838247395880703
	.quad	0x3fd291489d95872a              # double 0.29011741055556917
	.quad	0x3fb5980544a9f150              # double 0.084350899947769564
	.quad	0x3fde40c7299dd6f4              # double 0.47270373405568411
	.quad	0x3fc60fccf1511ce8              # double 0.17235719473885713
	.quad	0x3fe8fe4458a9e116              # double 0.78103844945056511
	.quad	0x3fd901da39c1dcde              # double 0.39073806419714951
	.quad	0x3fc36e90f2b521a4              # double 0.15181171275095295
	.quad	0x3feaf189abc5ee00              # double 0.84198459195562236
	.quad	0x3fb0597a6bc97b68              # double 0.063865329089350831
	.quad	0x3fe6f5271c0c9bd6              # double 0.71742587545747472
	.quad	0x3f7906649ff30300              # double 0.0061096125274964219
	.quad	0x3fdd2f3a6d21c5e2              # double 0.45600758225836391
	.quad	0x3fe704b73535dd16              # double 0.71932564156205347
	.quad	0x3fb98b394b7032d0              # double 0.0997806367087819
	.quad	0x3fe1bd357c7090b1              # double 0.5543467932189029
	.quad	0x3fe39ba4656b19e2              # double 0.61274928863786848
	.quad	0x3fe042053347c3fb              # double 0.50805912032785672
	.quad	0x3fd2c0fcfcec2324              # double 0.29302906703428477
	.quad	0x3fed9608ad0765a5              # double 0.92456468386369706
	.quad	0x3fecc91513126de0              # double 0.89954618191717017
	.quad	0x3f9f73acafd94240              # double 0.030714700921011806
	.quad	0x3fee80fee76a886c              # double 0.95324654768434191
	.quad	0x3feb381e8cd84c38              # double 0.8506005049588401
	.quad	0x3face92a46e3af50              # double 0.056466408875933127
	.quad	0x3fec977b648b2d9e              # double 0.89349145543512853
	.quad	0x3fd5960b20a82c0c              # double 0.33728292645599889
	.quad	0x3fee7ca3cb26d811              # double 0.95271482160637977
	.quad	0x3fd1f896c4dc7bae              # double 0.28079766487820279
	.quad	0x3fe98dc795b16f32              # double 0.79855708348211452
	.quad	0x3f9ae5d53f145800              # double 0.026267368292870685
	.quad	0x3fe8e8fded987482              # double 0.77844139485718267
	.quad	0x3fedead132862806              # double 0.93491420619943777
	.quad	0x3fc3411c8c3e17e8              # double 0.15042454574375985
	.quad	0x3fed3946aea9e884              # double 0.91324171175007551
	.quad	0x3fe86aa1df21add0              # double 0.76301663952238563
	.quad	0x3fef3cb2ec55f595              # double 0.97615953597385163
	.quad	0x3fefe36c08951b9c              # double 0.99651147533664952
	.quad	0x3fdfb1bb264d8d10              # double 0.49522284260292881
	.quad	0x3fe15cb8b978aae8              # double 0.54256855225443434
	.quad	0x3fa8b0649d478ec0              # double 0.048220771979484933
	.quad	0x3fe6883fce065adb              # double 0.70413198699210555
	.quad	0x3fef46acedc6ae95              # double 0.97737738075871283
	.quad	0x3fe86e0b736dfe99              # double 0.76343319458824788
	.quad	0x3fec3bddb0dcb49e              # double 0.88230785888085328
	.quad	0x3fc0ed7508cb5f5c              # double 0.13224661759772516
	.quad	0x3fc9a226287f2544              # double 0.20026089646698086
	.quad	0x3fe96f3b8c855372              # double 0.7948281998202289
	.quad	0x3fcb030e559290f0              # double 0.21103076151224043
	.quad	0x3fe0ed2913c04f26              # double 0.52895025117547756
	.quad	0x3fbdb7612e08af60              # double 0.11607940076708934
	.quad	0x3fd39f9288c6ed62              # double 0.30661452633986219
	.quad	0x3fcd187d488c73a4              # double 0.22730985681928673
	.quad	0x3feeca560673f94b              # double 0.96219922314029682
	.quad	0x3fee459cfcef05b4              # double 0.94599770928487325
	.quad	0x3fb562e33a51cc00              # double 0.08354015516106017
	.quad	0x3fd73707584b7794              # double 0.36273368475473799
	.quad	0x3fdc7ab79685ce68              # double 0.44499005984764617
	.quad	0x3fe26c185ff6dd8e              # double 0.57569521658926859
	.quad	0x3fe94a4129cadba2              # double 0.7903142753847201
	.quad	0x3fea14b5a831477d              # double 0.81502802705857358
	.quad	0x3fdcdf1c0cb8f79a              # double 0.45111752741274247
	.quad	0x3fd88bc732c52234              # double 0.38353137929928782
	.quad	0x3fd4ccf6c25ea7fa              # double 0.32501000386639556
	.quad	0x3fa892829bb10170              # double 0.047992784028340618
	.quad	0x3fee10ff7c0bde01              # double 0.93957494952968557
	.quad	0x3fe1381625bc3108              # double 0.53809649820462457
	.quad	0x3fcf108208e35580              # double 0.24269128259645001
	.quad	0x3fd5fcfb5fd97404              # double 0.34356579170508916
	.quad	0x3fc21e7ce9321ca0              # double 0.1415554178858871
	.quad	0x3fe475c7a884d607              # double 0.63937743104787692
	.quad	0x3febd237984da306              # double 0.869411275355646
	.quad	0x3fe02c323d30ed05              # double 0.50539504958524673
	.quad	0x3fec457ae971401c              # double 0.88348146051612586
	.quad	0x3fe8d6835d96a5c5              # double 0.77618568686482858
	.quad	0x3fe1e45cfa461feb              # double 0.55912636644006619
	.quad	0x3fdc93a30821d922              # double 0.4465110377708631
	.quad	0x3fc6873720092180              # double 0.17600144447557042
	.quad	0x3fd5c47de1501548              # double 0.34011790278630771
	.quad	0x3fd806476196a1be              # double 0.37538322954290126
	.quad	0x3f3565372f063000              # double 3.2646748788844882E-4
	.quad	0x3feb01d30616f1d2              # double 0.84397269429569577
	.quad	0x3fd3b852ade763ea              # double 0.30812518103408471
	.quad	0x3fe8c8a50c54c3b2              # double 0.77449276359958774
	.quad	0x3feeaeb3045627aa              # double 0.95882559630375863
	.quad	0x3fe606476281223c              # double 0.68826646079202858
	.quad	0x3fe35d6c415d479a              # double 0.60515415922621973
	.quad	0x3fd0447276802846              # double 0.25417768070531499
	.quad	0x3fdc0b4ee8aa848c              # double 0.43819020005509723
	.quad	0x3feb78dcdb58649e              # double 0.85850375023723635
	.quad	0x3fe3a3cd332220cf              # double 0.61374530779814929
	.quad	0x3fe0c75e741bf5d6              # double 0.52433703115064634
	.quad	0x3fe6685ac2e98c30              # double 0.70023859089667972
	.quad	0x3fb26c891f90d2a8              # double 0.07196862240454982
	.quad	0x3fe8cfc6fcb73d64              # double 0.77536343916464689
	.quad	0x3f901405ea2d35e0              # double 0.015701382081990789
	.quad	0x3f97b9a06e6e15e0              # double 0.023169047107804874
	.quad	0x3fbca3778dd23d60              # double 0.11186930859024846
	.quad	0x3fb69c9a23116d78              # double 0.088327058373968259
	.quad	0x3fe76a5547757577              # double 0.73173011738587845
	.quad	0x3fd84835b8afc02e              # double 0.37940733943742344
	.quad	0x3fda919b917f0288              # double 0.41513718803984334
	.quad	0x3fab9bfbd9e57f80              # double 0.053924436901751527
	.quad	0x3fe88bb2c6544507              # double 0.76705301986854202
	.quad	0x3fd3d77b53db35a8              # double 0.31002696217623305
	.quad	0x3fa9b758aa4499b0              # double 0.050226946625389401
	.quad	0x3fdbe30342a79832              # double 0.43573075780148252
	.quad	0x3fe3d70ff29ff583              # double 0.62000272166885428
	.quad	0x3feea788fc950e66              # double 0.95795106251212014
	.quad	0x3fdc3bbf058743d2              # double 0.4411466173160622
	.quad	0x3fcd5937533d67d8              # double 0.22928515972563335
	.quad	0x3f77eb51e975c180              # double 0.005839652985159538
	.quad	0x3feae8c51e482a85              # double 0.84091430582459792
	.quad	0x3fd694448206f5b8              # double 0.35279953668563335
	.quad	0x3fd7ce07942632d2              # double 0.37195004909226015
	.quad	0x3fd7e4fd9dc3328a              # double 0.37335148245328098
	.quad	0x3fdedb0b89101b9a              # double 0.48211944947291274
	.quad	0x3fd29f7d069774b6              # double 0.29098439830506651
	.quad	0x3fc70cde7d3cbfdc              # double 0.18008023371794379
	.quad	0x3fcf31449d657c24              # double 0.24369104085323656
	.quad	0x3fd89e7669568b7a              # double 0.38467178618355258
	.quad	0x3fc4d0617fee7c70              # double 0.16260927912387357
	.quad	0x3fe8d3e78fce84a0              # double 0.77586725318191795
	.quad	0x3fe7eb7aee0c4022              # double 0.74749514096948055
	.quad	0x3fd9d3ddf0c30588              # double 0.40355633270163382
	.quad	0x3fdb905773ae4dfe              # double 0.43068491265259456
	.quad	0x3fce5edceb61cbf8              # double 0.23726998799574495
	.quad	0x3fa572c25f6e08b0              # double 0.041891168736598927
	.quad	0x3fd3d551b5944116              # double 0.30989496929488902
	.quad	0x3fe3725adf72aa47              # double 0.6077093471734053
	.quad	0x3fec2ff7b3f42770              # double 0.88085541865551242
	.quad	0x3fd861e2973a6960              # double 0.38097443359733596
	.quad	0x3fee9fb1e506d86e              # double 0.95699400646004817
	.quad	0x3fe5b436037f128b              # double 0.67824841196905206
	.quad	0x3fec6969ee32da85              # double 0.88786789439366542
	.quad	0x3fe5134d8e7bf445              # double 0.65860631779617818
	.quad	0x3fe4f8e5443ebb7f              # double 0.65538276032553699
	.quad	0x3fee387378507e5a              # double 0.944390997876279
	.quad	0x3fedfef1436bcff4              # double 0.93737090271178979
	.quad	0x3fec7b1da16fb6bb              # double 0.89002877741378172
	.quad	0x3fcb3d376fa943a0              # double 0.2128056807728429
	.quad	0x3fa3126954dd6700              # double 0.037249843224982371
	.quad	0x3fd8645694a91a58              # double 0.38112415807373656
	.quad	0x3fcc4a08f9ba9874              # double 0.22100937074464222
	.quad	0x3fe1f0df6007f4bd              # double 0.56065338855810121
	.quad	0x3fc9f1b81ed9c0f4              # double 0.20268918520333268
	.quad	0x3fe204ea0850cd77              # double 0.563099876634097
	.quad	0x3fd524d4f7274a4e              # double 0.33037304054338257
	.quad	0x3fd3068e3f8abd86              # double 0.29727512555378899
	.quad	0x3fe32886fc432fa8              # double 0.59869717855462046
	.quad	0x3fe74a27a01e0e9b              # double 0.72780209801608764
	.quad	0x3fece0b768a83512              # double 0.90243120613891592
	.quad	0x3fb3c08c2ea15400              # double 0.077156793007205238
	.quad	0x3fe2d8398974d956              # double 0.58889462325059116
	.quad	0x3fed02a0cf9ca5c7              # double 0.90657082127761945
	.quad	0x3fd6cb186fdf7c7c              # double 0.35614596295449252
	.quad	0x3fe53e7ba8a70d00              # double 0.66387732448529846
	.quad	0x3fdc34e4c1015ac8              # double 0.44072836731122011
	.quad	0x3fe7c61db7760245              # double 0.7429340918752777
	.quad	0x3fec585ab66154c6              # double 0.88578544255383274
	.quad	0x3f8f3679b6b5b200              # double 0.015240622413977611
	.quad	0x3fd0decd4cc3ed5e              # double 0.26359875198951055
	.quad	0x3feb6d1aab27728a              # double 0.85706838062795154
	.quad	0x3fc4ea525ff8ee7c              # double 0.16340093313361936
	.quad	0x3fe96ea664cda691              # double 0.79475707710408205
	.quad	0x3fe9b78049efc5bd              # double 0.80365004006141982
	.quad	0x3fe1657b377b54b2              # double 0.54363785587579216
	.quad	0x3fe0641233d2a3fa              # double 0.51221571084636186
	.quad	0x3fe748d4d747e338              # double 0.72764055296929708
	.quad	0x3fb256209c6aa820              # double 0.071626699626591961
	.quad	0x3fd057ddba9b624c              # double 0.25536292289101392
	.quad	0x3fd5606f6f7bf522              # double 0.334010943290041
	.quad	0x3fd6e89b81b2c952              # double 0.35794723192079403
	.quad	0x3fe8577aae17ee68              # double 0.76067861559517969
	.quad	0x3fea32de435932ac              # double 0.8187094989203465
	.quad	0x3fc8e96e2d8dc238              # double 0.19462372993759103
	.quad	0x3fe203f5140c7bba              # double 0.56298307338499076
	.quad	0x3fe6e011b52394e8              # double 0.71485219362935215
	.quad	0x3fe00c830ba3e70e              # double 0.50152733109936931
	.quad	0x3fed71456e497e08              # double 0.92007705250210936
	.quad	0x3fba6ece7682da10              # double 0.10325327294672371
	.quad	0x3fe73ce3bd471e9f              # double 0.72618281334230861
	.quad	0x3fda231d2a7f3f3a              # double 0.40839318418601389
	.quad	0x3fec71f19b8b198c              # double 0.88890915278970927
	.quad	0x3fee0cfa3c2dcd28              # double 0.93908416513150871
	.quad	0x3fee1135cc7e6656              # double 0.93960084858117443
	.quad	0x3fab5722631f3be0              # double 0.05339915714250032
	.quad	0x3fda3aa19e98677a              # double 0.40982857215714541
	.quad	0x3fe95ffd8d5bdbd0              # double 0.79296758278985102
	.quad	0x3fed2bbb0b76c0c0              # double 0.91158821333922191
	.quad	0x3febbd72f64d878f              # double 0.86687610727334341
	.quad	0x3fe1a696b4378041              # double 0.55158553312868019
	.quad	0x3fec33634d9e79f2              # double 0.8812729373929058
	.quad	0x3fef80881ee1d066              # double 0.9844399073758836
	.quad	0x3fc31524bf2bccfc              # double 0.14908274969602775
	.quad	0x3fdaf9df2dbb49ce              # double 0.42150096384025637
	.quad	0x3fc58cdf16891d78              # double 0.16836155510302908
	.quad	0x3fd4f4322bd9caa0              # double 0.32740453989314666
	.quad	0x3fdb9c145c0fc280              # double 0.43140133848559259
	.quad	0x3fe082bdfa913d67              # double 0.51595972956594671
	.quad	0x3fc65d79cc975924              # double 0.17472765435986404
	.quad	0x3fed11caefb112c1              # double 0.90842196287902521
	.quad	0x3fb25d64d5d6b590              # double 0.071737577635494043
	.quad	0x3fcb9d9605425ed8              # double 0.21574664360809126
	.quad	0x3faea5400f0b4710              # double 0.059854509197647343
	.quad	0x3feab3b4c67ccdf7              # double 0.83443678633778873
	.quad	0x3fec2d174bc861e7              # double 0.88050427247349894
	.quad	0x3fb0d6a751bd79c8              # double 0.065775353866661779
	.quad	0x3faacd5ec7a4ddb0              # double 0.052348100538832099
	.quad	0x3fa49255ce318910              # double 0.040178948803047843
	.quad	0x3fd25079992d0b2e              # double 0.28616180380429312
	.quad	0x3fcc88ad242272ec              # double 0.22292103065856084
	.quad	0x3fcf8ef36799647c              # double 0.2465500121932428
	.quad	0x3fce913e6bd8dbe8              # double 0.23880749002429913
	.quad	0x3fee2785e20d8eff              # double 0.94232458258599638
	.quad	0x3fc03a64053161fc              # double 0.12678194287833822
	.quad	0x3fed4691f89be1d5              # double 0.91486452633312842
	.quad	0x3fcfc6db038e6d9c              # double 0.2482560889592208
	.quad	0x3fe887e723bc6941              # double 0.76658970813449667
	.quad	0x3fd7ae431a8a945c              # double 0.37001111595083613
	.quad	0x3fe4e58c7a6263af              # double 0.65302108672323367
	.quad	0x3fb76bfa2b66b878              # double 0.091491351696022849
	.quad	0x3fea0ce63e1fcdb3              # double 0.81407463201178698
	.quad	0x3fe1a16b8b571958              # double 0.5509546014298321
	.quad	0x3f90fe8e91571d00              # double 0.016596057530276376
	.quad	0x3fdea926ef252c76              # double 0.47907422403358824
	.quad	0x3fee408559ef8605              # double 0.94537608686022223
	.quad	0x3fed06bcbd549431              # double 0.90707241991606768
	.quad	0x3fd8a7f1478cc7c0              # double 0.38525039660737193
	.quad	0x3feae2e5d25259da              # double 0.84019747808889211
	.quad	0x3fc49c88f06f2530              # double 0.16102706661175992
	.quad	0x3fead2c4b01c96a4              # double 0.83822855374156235
	.quad	0x3fba8c817bd10aa0              # double 0.10370644829621734
	.quad	0x3fef0323ac7e0ee2              # double 0.96913322153019643
	.quad	0x3fda529f0a38b6f0              # double 0.41129280088612941
	.quad	0x3fc40648c2fae654              # double 0.15644177933227132
	.quad	0x3fe0f5b84e2ce57d              # double 0.5299951102125956
	.quad	0x3fd475fa35095040              # double 0.31970076732000408
	.quad	0x3fd32cb30c3c7e58              # double 0.29960323519660426
	.quad	0x3fb65d0106e1a720              # double 0.087356628589671192
	.quad	0x3fed959e8b597914              # double 0.92451407639217331
	.quad	0x3fe98003ea3760d7              # double 0.79687686677336955
	.quad	0x3fe67eaed390e72e              # double 0.70296422311296225
	.quad	0x3fd1174138236024              # double 0.26704435808415128
	.quad	0x3fe7eb7d667a3937              # double 0.74749631896137358
	.quad	0x3fec9145a45b3185              # double 0.89273340321374006
	.quad	0x3fbf27983d971c10              # double 0.12169791701954602
	.quad	0x3fe06c5a2a242fe6              # double 0.51322658758863038
	.quad	0x3fe6f4009ee07c71              # double 0.71728545218128492
	.quad	0x3fd10142bfc13962              # double 0.26570194936802782
	.quad	0x3fa5a7dd0962a110              # double 0.042296321292555672
	.quad	0x3fecf7981ca869a1              # double 0.90522389981497409
	.quad	0x3fb271fc8545b900              # double 0.072051794564433891
	.quad	0x3fef027405f10b19              # double 0.9690494648023985
	.quad	0x3fd5a4e554135a78              # double 0.33818944178111776
	.quad	0x3feb72c8446395d0              # double 0.8577615104410885
	.quad	0x3fe68a7871882543              # double 0.70440313505347552
	.quad	0x3fe1fa7dac286b51              # double 0.56182750343882948
	.quad	0x3fe2ba1789ff73d5              # double 0.58521630242068545
	.quad	0x3fe551634c4a4266              # double 0.66618504429250147
	.quad	0x3fe153f72a1beae9              # double 0.54149969314979984
	.quad	0x3fb19b2eca6e30d0              # double 0.06877415125035502
	.quad	0x3fece4a1a97aefde              # double 0.90290911771398519
	.quad	0x3fd5eab4617dd6ba              # double 0.34245023270282682
	.quad	0x3fe6fd82dcf9dec5              # double 0.71844618949304417
	.quad	0x3fdbc4cdddfd518e              # double 0.43388697317757241
	.quad	0x3fa5fef5ec826e80              # double 0.04296082031325188
	.quad	0x3fe818eee0d6ee34              # double 0.75304359353999084
	.quad	0x3fdce69b80dda4c6              # double 0.45157516083288518
	.quad	0x3fd92ac1008a71b2              # double 0.39323449185192338
	.quad	0x3fd80f22df727170              # double 0.37592384167671522
	.quad	0x3fe50782a55af1d0              # double 0.65716678901622494
	.quad	0x3fec178e688e8325              # double 0.8778755228159737
	.quad	0x3fededeea6db8d38              # double 0.93529446210269551
	.quad	0x3fde22509d47cea8              # double 0.4708444152777056
	.quad	0x3fe94be51183af37              # double 0.79051450176982641
	.quad	0x3fe983e30e6ca549              # double 0.79734947983994531
	.quad	0x3fc17d3e760f22e0              # double 0.13663464321714169
	.quad	0x3febb4085ea72607              # double 0.86572664725207538
	.quad	0x3fd5bae06579e47e              # double 0.33953103933124129
	.quad	0x3fd0c7f584129f5c              # double 0.26220453164795798
	.quad	0x3fce9d22e65a7194              # double 0.23917042014808187
	.quad	0x3fc426a60b61f0c8              # double 0.15742946201124242
	.quad	0x3fe1a0bd77a6da9c              # double 0.55087159509169537
	.quad	0x3fe988c5b95107c1              # double 0.79794584459909157
	.quad	0x3fd6e0a642a9d1aa              # double 0.35746151456921871
	.quad	0x3fedca007ba7d326              # double 0.93090843345143948
	.quad	0x3fe109f7ca68c8d4              # double 0.53246678860730379
	.quad	0x3fd10763043334e6              # double 0.26607585344466
	.quad	0x3fe381bcd0382a17              # double 0.60958710353708312
	.quad	0x3fecdd55b7ad67d0              # double 0.90201841234670077
	.quad	0x3fe84e0ac13c625e              # double 0.75952661267644905
	.quad	0x3f97658f589c8860              # double 0.022848357947744424
	.quad	0x3febb241f3ffbe52              # double 0.86550996452383289
	.quad	0x3fe0e891feb7347f              # double 0.52838992833279963
	.quad	0x3fa33924c19e52a0              # double 0.037545345912041173
	.quad	0x3fd4f633408d6f40              # double 0.32752686790421492
	.quad	0x3fc9cf9dc0582828              # double 0.20164844409765803
	.quad	0x3fc1fbd427e7749c              # double 0.14049770306056508
	.quad	0x3fe6de35753f44b6              # double 0.71462510013420544
	.quad	0x3fe8374ba3da27dd              # double 0.7567499351728163
	.quad	0x3fdc7eb1ecf1dc60              # double 0.4452328504480132
	.quad	0x3fe75415e7c95603              # double 0.72901435156626382
	.quad	0x3fd284620e6d1204              # double 0.28933001908106371
	.quad	0x3fdb419cd071a9ba              # double 0.42587967258318893
	.quad	0x3fc344ffa367362c              # double 0.1505431697718661
	.quad	0x3fbca2eecc7c44b0              # double 0.11186115734405422
	.quad	0x3fe54dc5a0603ace              # double 0.66574364970605315
	.quad	0x3fee134413231696              # double 0.9398517965098161
	.quad	0x3f9642c900cfc040              # double 0.021739140200168316
	.quad	0x3feeff8cbb224f38              # double 0.96869503545392543
	.quad	0x3fc39babc12c4228              # double 0.15318819935102224
	.quad	0x3fe5d1c02d841ddb              # double 0.68185433282718166
	.quad	0x3fe57a576988dba2              # double 0.67118425953127692
	.quad	0x3fe1f13977dcb0e2              # double 0.56069634829102832
	.quad	0x3fb3a20f8cea2b30              # double 0.076691600707061935
	.quad	0x3fdc3f3fd332f2ec              # double 0.44136043190864771
	.quad	0x3fd891e2c7215c56              # double 0.38390416570968477
	.quad	0x3fb8fc83627ea2f0              # double 0.097603045984793856
	.quad	0x3fe984482913121f              # double 0.79739769003259997
	.quad	0x3fd8e21bad2b76c8              # double 0.38880054389106222
	.quad	0x3fcf880828e39b40              # double 0.24633886333978161
	.quad	0x3fdafe52269ea918              # double 0.42177251597844778
	.quad	0x3fe8405c731a153e              # double 0.75785658341252549
	.quad	0x3fc20f431144ad30              # double 0.14109075873543864
	.quad	0x3fe7a6b0698f13c8              # double 0.73909779183360858
	.quad	0x3fc0dcbe27f98acc              # double 0.13173653556721943
	.quad	0x3fead039b3bd1e3f              # double 0.83791813950751493
	.quad	0x3fb95c5ae884f688              # double 0.099065477149418268
	.quad	0x3fedd72b06d80491              # double 0.93251563393291026
	.quad	0x3fd002875d22cb5c              # double 0.25015434356025934
	.quad	0x3fe99bfcbf15b850              # double 0.80029141732462428
	.quad	0x3fd105d1bda41d3a              # double 0.26598018188129269
	.quad	0x3fe28cd5d9222645              # double 0.57969181450716489
	.quad	0x3fdcbe57e3c77d20              # double 0.44911763423984219
	.quad	0x3fee3a24aeb72ee7              # double 0.94459756969578457
	.quad	0x3fc9d7be81c64790              # double 0.2018964894928641
	.quad	0x3fe29f49095173ba              # double 0.58194400615649688
	.quad	0x3fe6449885caa755              # double 0.69587350970435102
	.quad	0x3fd3ffef8fa64f12              # double 0.31249608066831158
	.quad	0x3f85f3b557237480              # double 0.010718743058925506
	.quad	0x3fe581e99879c620              # double 0.67210845737844593
	.quad	0x3fdd25fbe6cd69d8              # double 0.45544335879608644
	.quad	0x3fdc8313ff854dfe              # double 0.44550037339396897
	.quad	0x3fc1461bfdd3737c              # double 0.13495206731650089
	.quad	0x3fe5d0c6b884a4e2              # double 0.68173538244914433
	.quad	0x3feaf3bd5806c2d4              # double 0.84225337212236661
	.quad	0x3fe7cee34058700d              # double 0.7440048462626706
	.quad	0x3fdecbaf56676c9e              # double 0.48118194044008955
	.quad	0x3fe8e719aea390a1              # double 0.77821048840680274
	.quad	0x3feba16c48d205f9              # double 0.86345495436415753
	.quad	0x3feedd8457f72e34              # double 0.96454064541598549
	.quad	0x3fe040c6ab8472b2              # double 0.50790723323333098
	.quad	0x3fc301397c117dac              # double 0.14847487028144479
	.quad	0x3fe0869d0ed8b645              # double 0.51643231296265724
	.quad	0x3fc2597d38410998              # double 0.14335599180965342
	.quad	0x3fe7f60fa35d51b7              # double 0.74878675372251891
	.quad	0x3fa6dfebb3948180              # double 0.044677129432105112
	.quad	0x3fbc11c30c5560d0              # double 0.10964602519141242
	.quad	0x3fec3c9edb69ac71              # double 0.8823999677091604
	.quad	0x3fe21f1ff8872065              # double 0.56629942455857629
	.quad	0x3fd816603299635a              # double 0.37636570874524511
	.quad	0x3fed071ad7a02ed1              # double 0.90711729158780419
	.quad	0x3fe3d4a18f3ada80              # double 0.61970594381894273
	.quad	0x3fcd1309087d427c              # double 0.22714341082111733
	.quad	0x3fda00f3a16470ba              # double 0.40630808602305601
	.quad	0x3fd06906a866093e              # double 0.25641027875112232
	.quad	0x3fdb0f8650e3cb36              # double 0.42282255076786457
	.quad	0x3fb3102f93819de0              # double 0.074465726387294762
	.quad	0x3feea385d4ca2ae3              # double 0.957461276631275
	.quad	0x3fe2af3f493c7655              # double 0.58389248184148335
	.quad	0x3fd55d9124b7e066              # double 0.33383587442177143
	.quad	0x3fe6f9c72905082c              # double 0.71799047481204559
	.quad	0x3fe319fa14260bee              # double 0.59692100463177922
	.quad	0x3fed92111d5e36b6              # double 0.92408042655889377
	.quad	0x3fa1835cda802f90              # double 0.034205342934085725
	.quad	0x3fc84ffbcbdb6ad0              # double 0.1899409051319112
	.quad	0x3fec2b8236c6db7a              # double 0.88031111429778197
	.quad	0x3fe4937970e7e8da              # double 0.64300224353726354
	.quad	0x3fe5a22230e26239              # double 0.67604169414250415
	.quad	0x3fd20a3bfab441d8              # double 0.28187465174508253
	.quad	0x3fe70c8c944b80c7              # double 0.72028187717298742
	.quad	0x3fe0777ce175691a              # double 0.51458591494454997
	.quad	0x3fee92e30e325406              # double 0.95543053410313017
	.quad	0x3fede10ddf0da1e6              # double 0.9337224346646138
	.quad	0x3fed512fcd74eb35              # double 0.91616048935188721
	.quad	0x3fdc6f2c462c6f60              # double 0.44428545811546449
	.quad	0x3fce57d773afcc20              # double 0.23705571316495
	.quad	0x3fd2c949b5006220              # double 0.29353563953330486
	.quad	0x3fd98d7b4e6b0064              # double 0.3992603555489096
	.quad	0x3fee950a039b6a2d              # double 0.95569325165280861
	.quad	0x3faf36f2a86de890              # double 0.060966094074459964
	.quad	0x3fd9e5455382d79a              # double 0.40461857943898283
	.quad	0x3fe87a7ceaf2cfc7              # double 0.76495214355826924
	.quad	0x3fed1d629f36f165              # double 0.90983706566434519
	.quad	0x3fdceef908e820d0              # double 0.45208574170875426
	.quad	0x3fec02cd6a385943              # double 0.87534209009280806
	.quad	0x3fe7adae8a5b5ad2              # double 0.73995139143775135
	.quad	0x3fec88f531860bad              # double 0.89171847984868224
	.quad	0x3fe2500b5856a048              # double 0.57227103475180119
	.quad	0x3fc786457e208e08              # double 0.18378513964226806
	.quad	0x3fc91d4908031ab4              # double 0.19620621577469921
	.quad	0x3fe41906a827868d              # double 0.6280549320474208
	.quad	0x3fe8afa58a5d7ca3              # double 0.77144124054384056
	.quad	0x3fdef55b19580b7a              # double 0.48372533297531783
	.quad	0x3fc8d670642fdb84              # double 0.19404415981236067
	.quad	0x3fe58b717cb95d7b              # double 0.67327188835308449
	.quad	0x3fdc7cde4cc510ac              # double 0.44512135979699496
	.quad	0x3fe1f8809ecefff1              # double 0.56158476846030514
	.quad	0x3fd03a96aeb219b0              # double 0.25357596454741849
	.quad	0x3fe788e0178399d6              # double 0.73545841782179866
	.quad	0x3fd3e4344177508a              # double 0.31080347436114464
	.quad	0x3fddedd9f15da390              # double 0.46764229365231191
	.quad	0x3fe7fbba0287053c              # double 0.74947834485661912
	.quad	0x3fbd9c93a2057230              # double 0.1156704207000494
	.quad	0x3fd9107c0220ab74              # double 0.39163112838530556
	.quad	0x3fb2a340e00b9ca0              # double 0.072803549479078189
	.quad	0x3feb38a9e9e18a54              # double 0.85066695861707808
	.quad	0x3fd917cb4808803a              # double 0.39207727465145903
	.quad	0x3f6251d8b17bdc00              # double 0.0022362930575314799
	.quad	0x3fef1affe49cee98              # double 0.97204584742526645
	.quad	0x3fe18fd03837437b              # double 0.54880534152663019
	.quad	0x3fd2cb4f2d86f5a2              # double 0.29365901418699469
	.quad	0x3feac0b4c2bf40c1              # double 0.83602369343318383
	.quad	0x3fef23fb3a358b6b              # double 0.97314225548721589
	.quad	0x3feeba1b25379aa7              # double 0.96021802205071515
	.quad	0x3fe876c76cab38b8              # double 0.76449938988095933
	.quad	0x3fe4e2086a22106c              # double 0.65259190301050074
	.quad	0x3fe8b8ff2eb757cb              # double 0.77258261799101413
	.quad	0x3fbdde26e8fa8ea0              # double 0.11667102039296617
	.quad	0x3fea3944adf3af8b              # double 0.81949075674991556
	.quad	0x3fe0e0fd98d0afc4              # double 0.52746467444148282
	.quad	0x3fcbfaee71efd348              # double 0.21859531939812826
	.quad	0x3febbc540602ed50              # double 0.8667392842684567
	.quad	0x3fe8324bc312a0be              # double 0.75613964176320514
	.quad	0x3feec58e6ba838bd              # double 0.96161576296596928
	.quad	0x3fe45a0032f189bf              # double 0.63598642301467823
	.quad	0x3fd27c9902a41d44              # double 0.2888548398772921
	.quad	0x3fdc78dd9944fd18              # double 0.4448770519993146
	.quad	0x3fd7395fa908ddb4              # double 0.36287681109703418
	.quad	0x3fe209aa2d0ed655              # double 0.56367977905638134
	.quad	0x3fd427f981cfe8a0              # double 0.31493985821692583
	.quad	0x3fd3b5c4f73acb52              # double 0.30796932357332196
	.quad	0x3fe22aa4fc9003e6              # double 0.56770562485337162
	.quad	0x3fde8c087f93aaf8              # double 0.47729694803881229
	.quad	0x3fe4c6dbc1345e49              # double 0.64927470908418983
	.quad	0x3fd12f8fb8d7d5fe              # double 0.26852791834912171
	.quad	0x3fdec3719bb362de              # double 0.48067894177579074
	.quad	0x3fdbf5f880c37a8a              # double 0.43688786100930399
	.quad	0x3fe2e9267f9217a6              # double 0.59096074024340761
	.quad	0x3fe039df4c8f761b              # double 0.50706448510362934
	.quad	0x3fc36695c4b90ba8              # double 0.15156814675910124
	.quad	0x3fbcc7c8f43bbf40              # double 0.11242347681740927
	.quad	0x3fda2ffb792336b0              # double 0.40917860822524244
	.quad	0x3fd20f3e0187cf00              # double 0.28218031072104566
	.quad	0x3fdbfb035ffebcc0              # double 0.43719562887686081
	.quad	0x3fc10aef604840dc              # double 0.13314621163636431
	.quad	0x3feefc8aa7e90ab9              # double 0.96832783503517483
	.quad	0x3fe318b76e25ee0c              # double 0.59676715386689372
	.quad	0x3fefdf4f430d9e1e              # double 0.99600947471930446
	.quad	0x3fd187e5bd431c5a              # double 0.27391952021247834
	.quad	0x3fb787f0979792a8              # double 0.091918026933465513
	.quad	0x3fd752b4231db10a              # double 0.36442283086104565
	.quad	0x3fb463790b5ca270              # double 0.079642834924593008
	.quad	0x3fe2a631bfd545ed              # double 0.58278739421274184
	.quad	0x3fe4c5eaeb2665d3              # double 0.64915986945851001
	.quad	0x3f9e18553c420360              # double 0.029389697840545792
	.quad	0x3fa22283713be6e0              # double 0.035419566700466865
	.quad	0x3fe233ba85b9c59d              # double 0.56881452673239929
	.quad	0x3feb2b5379315b71              # double 0.84903882666081476
	.quad	0x3fe947f8135bf3d2              # double 0.79003528386203414
	.quad	0x3fd6e28c0509c6da              # double 0.35757732860575475
	.quad	0x3fd3f9eb88e35e9a              # double 0.31212890975937457
	.quad	0x3fd0b7553e084ffe              # double 0.26118975694521385
	.quad	0x3fe1a768e0d6e34e              # double 0.55168575204798187
	.quad	0x3fd071f7e12df0c8              # double 0.25695607175999813
	.quad	0x3fdf7e50634fa4a0              # double 0.4920845956645028
	.quad	0x3feeb4b0f32c72ba              # double 0.95955703253601787
	.quad	0x3fc3bf196c8ffea8              # double 0.15426938820745772
	.quad	0x3fe9093fdede9a68              # double 0.78237908868034101
	.quad	0x3fd7f169a0223604              # double 0.37410965574312649
	.quad	0x3fbbe08a9d43d170              # double 0.10889498080707027
	.quad	0x3feb3d918ac810ae              # double 0.85126568895113564
	.quad	0x3fd9bca9fbfa3e08              # double 0.40214013678721061
	.quad	0x3fee698a8146fb88              # double 0.95038342713802226
	.quad	0x3fbe295b60d70d60              # double 0.11781855692156773
	.quad	0x3fd5a92c52145512              # double 0.33845050826615009
	.quad	0x3fe0f2974dd01106              # double 0.52961316297344818
	.quad	0x3fe725442c448386              # double 0.72329910894414762
	.quad	0x3fe5b77c41838fac              # double 0.67864811702428574
	.quad	0x3fd287f67339e3ec              # double 0.28954850437690882
	.quad	0x3fa717e69c8ce1c0              # double 0.045104223833223767
	.quad	0x3fdc2c72a4fa9f2e              # double 0.4402128802416766
	.quad	0x3fe005bda2dd131d              # double 0.50070077714244443
	.quad	0x3fb3740d1081d790              # double 0.075989548235013026
	.quad	0x3fc6dfd7c369d91c              # double 0.17870614091561599
	.quad	0x3fe8a31aa607ef70              # double 0.76991016796044498
	.quad	0x3fdcfcc5dadf9b76              # double 0.45292803167688278
	.quad	0x3fe2a1a0730548ba              # double 0.58222982850045146
	.quad	0x3fb6b7db7e9b73e8              # double 0.088742941293687871
	.quad	0x3fedde80c10da583              # double 0.93341100412105538
	.quad	0x3fce32c8da608fd4              # double 0.23592482245396573
	.quad	0x3fe9931a1c10915e              # double 0.79920678597822437
	.quad	0x3fe86853c8d18c14              # double 0.7627352640378171
	.quad	0x3fec381db2a5c79e              # double 0.88185009853463092
	.quad	0x3fd42e787c17ff0c              # double 0.31533634298828939
	.quad	0x3fe81f414dcf8122              # double 0.7538153190362531
	.quad	0x3fee8be820428075              # double 0.95457845974671207
	.quad	0x3fd88d033d4552ea              # double 0.38360672934986317
	.quad	0x3fe53fd4de3c4522              # double 0.66404193311078452
	.quad	0x3fdd9966e47f72f4              # double 0.46248791040652226
	.quad	0x3fb5591c380260b8              # double 0.083390964197294859
	.quad	0x3feb89a73c4c00e7              # double 0.8605533769296273
	.quad	0x3feb3da6216ab78b              # double 0.85127550627451976
	.quad	0x3fc57ad219c427c8              # double 0.16781069048039243
	.quad	0x3fe3f5f09816f0e1              # double 0.62377195076944869
	.quad	0x3feff7495b077ec1              # double 0.99893634585529167
	.quad	0x3fe9a916e5826fed              # double 0.80189080072477525
	.quad	0x3fd466ffd7a58866              # double 0.31878658351172928
	.quad	0x3fe22f3870c83fdf              # double 0.56826421764162294
	.quad	0x3fe278f3107c686c              # double 0.57726433963695234
	.quad	0x3fd5d0cadf020e42              # double 0.34086868074539123
	.quad	0x3fe5480d2b21fb5a              # double 0.6650453417240485
	.quad	0x3fe920ac607bbee3              # double 0.78523844570551338
	.quad	0x3fe0499a0808c92b              # double 0.50898458069994967
	.quad	0x3feeb5e9c684903b              # double 0.95970619938862655
	.quad	0x3fe404246d45017b              # double 0.62550565091809973
	.quad	0x3fd485f8ee6d1d40              # double 0.3206770256405953
	.quad	0x3fdaf9d45264e2fe              # double 0.42149837538049428
	.quad	0x3fd75821ca654830              # double 0.36475415005873213
	.quad	0x3feb4751f9269e4a              # double 0.85245608007694185
	.quad	0x3fefa914599f38b6              # double 0.98938958648957143
	.quad	0x3fe4c2469aeec40e              # double 0.64871530781067732
	.quad	0x3feeffad4bf85013              # double 0.96871056402096866
	.quad	0x3fde67eaa857d474              # double 0.4750925678229756
	.quad	0x3fe7cfa9eabcd0a2              # double 0.74409957740001098
	.quad	0x3fe875e8b631eed8              # double 0.76439319214793056
	.quad	0x3fedf1755f24672b              # double 0.93572491247616563
	.quad	0x3fead30874540a19              # double 0.83826086731307037
	.quad	0x3fef5433ac55ee20              # double 0.97902854594525834
	.quad	0x3fdc7d6ddf022d5e              # double 0.44515558984922687
	.quad	0x3fbeb5af8bd45978              # double 0.11995980418973839
	.quad	0x3fe09141ba2a7bc8              # double 0.51773153648888925
	.quad	0x3fdab6dbc33e68d6              # double 0.41741079394126979
	.quad	0x3fd676b5cb062748              # double 0.35099549128118612
	.quad	0x3fec9a53591f632e              # double 0.89383857161292268
	.quad	0x3feabe8230fbeec0              # double 0.83575543944558461
	.quad	0x3fd8d023ea8cb1d8              # double 0.38770387559159536
	.quad	0x3fda14f5f3d4b2be              # double 0.4075293427620571
	.quad	0x3fe8f29a27cc8c68              # double 0.77961452267881004
	.quad	0x3fefe4f6490fa303              # double 0.99669946927778629
	.quad	0x3fe43cdccbe64d3e              # double 0.63242950271743559
	.quad	0x3fe362b35305c62e              # double 0.60579839911787814
	.quad	0x3fd7931ccfeb7074              # double 0.36835403732926086
	.quad	0x3fe7360a799c3bb0              # double 0.7253467917633909
	.quad	0x3fc29a4628cbaf98              # double 0.14533307067847256
	.quad	0x3fdeb552712ee82a              # double 0.47981701901483353
	.quad	0x3fe0b0a447c7ed11              # double 0.52156270999640431
	.quad	0x3fd7f9230336001a              # double 0.37458110154693858
	.quad	0x3fbcd3ea791653b0              # double 0.11260858017187902
	.quad	0x3fe08ea32a80d011              # double 0.51741178800011955
	.quad	0x3fd1afb1d33208de              # double 0.27634854912333917
	.quad	0x3fb09e89ab16a398              # double 0.064919094342839379
	.quad	0x3fe1ffc5d80a3098              # double 0.56247226901315894
	.quad	0x3fe6d269449af0f1              # double 0.71318496131382692
	.quad	0x3fecb9ab21a92827              # double 0.89766460966462069
	.quad	0x3fd7958f9e0c0748              # double 0.36850347933078753
	.quad	0x3fc1a8210f64cd10              # double 0.13794339419983048
	.quad	0x3fc3984600710054              # double 0.15308451673081669
	.quad	0x3fe910a3687f6f44              # double 0.7832810440990916
	.quad	0x3fd77ce7ee66793a              # double 0.36699865609434179
	.quad	0x3fd50c6a8ee6f758              # double 0.32888282733244045
	.quad	0x3fd9b36936a251c2              # double 0.40157537780148911
	.quad	0x3fe65d4cf0abb45d              # double 0.69888922697067424
	.quad	0x3fe311ceee838a9d              # double 0.59592386803372543
	.quad	0x3fe5dd5bd4e3ee47              # double 0.68327132778308275
	.quad	0x3fe761fb0af853a5              # double 0.73071052687247529
	.quad	0x3fe0154149567441              # double 0.50259460757991559
	.quad	0x3fefea36df7439cb              # double 0.9973406185470649
	.quad	0x3febb5b40cf7eceb              # double 0.8659305814066135
	.quad	0x3fd32ba70cfe9c3e              # double 0.29953933972359781
	.quad	0x3fda179d787f171c              # double 0.40769135253172961
	.quad	0x3fef74458c6240a3              # double 0.98294331949911784
	.quad	0x3fdd6ed4e5e76ba6              # double 0.459889626041042
	.quad	0x3fc0be70a0d4c6b0              # double 0.13081176617702317
	.quad	0x3fef8cfd3e41bfcc              # double 0.98596059951341308
	.quad	0x3fec6cab7023d8fd              # double 0.88826534178113514
	.quad	0x3fca19d2eb169504              # double 0.20391308287540977
	.quad	0x3feea22a94a6e4fb              # double 0.9572956946714436
	.quad	0x3fe6fa9efe036fd3              # double 0.71809339153287011
	.quad	0x3feacb65f8db9a84              # double 0.83732889752430184
	.quad	0x3fe2745d5121a36c              # double 0.57670465322472131
	.quad	0x3fb4ab85857e06e8              # double 0.080742211428539101
	.quad	0x3fe70f5c98ccb32d              # double 0.72062520831750521
	.quad	0x3fdde24118832280              # double 0.46693446534894889
	.quad	0x3fc8bf4150da657c              # double 0.19333664367585957
	.quad	0x3fe859e998cfb223              # double 0.76097564550361019
	.quad	0x3fc1e89b85122740              # double 0.13991111753085228
	.quad	0x3fe2003bc30eb6cc              # double 0.56252849671519689
	.quad	0x3fe871dcdeb85b56              # double 0.76389926433589994
	.quad	0x3fe15b2dc945376b              # double 0.54238023100491028
	.quad	0x3fef7ca6b862ad9f              # double 0.98396621716294763
	.quad	0x3fdfa7835cad5ffa              # double 0.49459919024002341
	.quad	0x3fc8e6aeaee549c8              # double 0.19453986682726865
	.quad	0x3fd825f1c24999b0              # double 0.37731594060314944
	.quad	0x3fefcc6595a9d65e              # double 0.99370078307283527
	.quad	0x3fef2957731b1ec2              # double 0.97379658204678088
	.quad	0x3fdaaa3941ca4e14              # double 0.41663962769345741
	.quad	0x3fb8fe59f56e57b0              # double 0.09763109437912365
	.quad	0x3fcbafbc926b8e40              # double 0.21630055570050111
	.quad	0x3fe6a9a8eaeffb0e              # double 0.70821042906013232
	.quad	0x3fc4aefcfc15a584              # double 0.16159021672073604
	.quad	0x3fee0b3f41b84c25              # double 0.93887293659134186
	.quad	0x3fccebf47c2a50c8              # double 0.22595077574499656
	.quad	0x3fc696dcfcd3f480              # double 0.17647898049463961
	.quad	0x3fc392dc0195f054              # double 0.15291929318834951
	.quad	0x3fe2a3ff1da76689              # double 0.58251910964755027
	.quad	0x3fc9278f08c52fb8              # double 0.19651973655925103
	.quad	0x3fd5201b953bf5fa              # double 0.33008470128683565
	.quad	0x3fdd5e73f0841768              # double 0.45888994682206041
	.quad	0x3fd3464774ffba56              # double 0.30116449762036746
	.quad	0x3fcb301ce1cdd324              # double 0.21240578675829014
	.quad	0x3fdbe393d50f31d4              # double 0.43576522642686411
	.quad	0x3fc05652c3298afc              # double 0.1276343777600103
	.quad	0x3fe9e824bf84a403              # double 0.80958783536800671
	.quad	0x3fed370ff5238f60              # double 0.91297147635166808
	.quad	0x3fd0379dc3ff7b26              # double 0.25339454784800564
	.quad	0x3fe4802826de8a2e              # double 0.64064414588603369
	.quad	0x3fe5958e693c6470              # double 0.67450638345611758
	.quad	0x3fe775ec4a22d591              # double 0.73314489822102946
	.quad	0x3fabff0460529f00              # double 0.05468000102820092
	.quad	0x3fee44ea07d92be2              # double 0.9459123757636656
	.quad	0x3fe4146a92fa1e8c              # double 0.62749222475481892
	.quad	0x3fe82ac9a5b8dcca              # double 0.75522310607529985
	.quad	0x3fe310b99607ecd9              # double 0.59579161932870328
	.quad	0x3fec5975e673f52c              # double 0.88592047701209741
	.quad	0x3fe85773ff9cb9bf              # double 0.76067542957553502
	.quad	0x3fe03a21d5cd3aaa              # double 0.50709621198787613
	.quad	0x3fe52a9134f10d70              # double 0.66144619312437491
	.quad	0x3feebe8204fbd489              # double 0.96075535748845297
	.quad	0x3fe52682fa21fc82              # double 0.66095112661413702
	.quad	0x3fdaa65d4cffdf1c              # double 0.41640408057672729
	.quad	0x3fcb2f1a5df0c8dc              # double 0.21237496935788769
	.quad	0x3fd6339855685c8c              # double 0.34689911213485725
	.quad	0x3fecb3d68998cd84              # double 0.89695288538352757
	.quad	0x3feac5aca9edbb29              # double 0.83663018407046252
	.quad	0x3feb6d39711371ee              # double 0.85708305440090071
	.quad	0x3fb6eb2f90fe2e90              # double 0.089526150606781706
	.quad	0x3fee620fea4f78b8              # double 0.94947047961956965
	.quad	0x3fcda09cd53bb39c              # double 0.23146400844362069
	.quad	0x3fbf2d063df6e5b8              # double 0.12178076756290224
	.quad	0x3fecf0106dc76695              # double 0.90430470887368364
	.quad	0x3fa096d213d7d480              # double 0.032400669977428187
	.quad	0x3fe70084290cbd2f              # double 0.71881301896602234
	.quad	0x3fd611e1e31161a0              # double 0.34484145331000526
	.quad	0x3fc21e5a3b39a6b4              # double 0.14155128375869241
	.quad	0x3fe90553f23f3256              # double 0.78190038026657294
	.quad	0x3fe46f145afae670              # double 0.63855951089426632
	.quad	0x3fcedf86fae96870              # double 0.24119651080656324
	.quad	0x3fda8e0bd2857126              # double 0.4149198108550699
	.quad	0x3febbb0da23b5f8e              # double 0.86658364950106814
	.quad	0x3fb8fc18360961c8              # double 0.097596657936612208
	.quad	0x3fea71f2b03e96a4              # double 0.82640966818572225
	.quad	0x3fc0581d946c0c20              # double 0.1276890730588045
	.quad	0x3fda0be666090df8              # double 0.40697631801978629
	.quad	0x3fb59aa1c37dcaf8              # double 0.084390745379817278
	.quad	0x3fe67f70acfbb10c              # double 0.70305665765548175
	.quad	0x3fe48f8c93bc45db              # double 0.64252308706835082
	.quad	0x3fd26ef3ab85079e              # double 0.28802196264234137
	.quad	0x3fdf3950f8db5234              # double 0.48787330915846217
	.quad	0x3fb053a6fb5dd578              # double 0.063776432389053173
	.quad	0x3feb859857be1e42              # double 0.86005799424396678
	.quad	0x3f5d1ea50da0c400              # double 0.0017773258064261999
	.quad	0x3fe9c9d96afc9931              # double 0.80588980575411118
	.quad	0x3feb50fc30ef4ce3              # double 0.85363587911197347
	.quad	0x3fdca586d11fe2d4              # double 0.44760294363326847
	.quad	0x3fa0965f50390180              # double 0.032397249739463341
	.quad	0x3fd9e6fe646bbbac              # double 0.40472373778077997
	.quad	0x3fd869639ee8da3c              # double 0.38143244284166022
	.quad	0x3fd516b0a2625d50              # double 0.32950988633952694
	.quad	0x3fd77962f6e98ecc              # double 0.36678384888203364
	.quad	0x3fd50bd1ea5d99ec              # double 0.32884643447178408
	.quad	0x3fca6f611645c980              # double 0.20652402484445176
	.quad	0x3fe3a428250e86fd              # double 0.61378867375989865
	.quad	0x3fc6375d685d7440              # double 0.17356460185956912
	.quad	0x3fcf4eefb63cdac8              # double 0.24459644697500083
	.quad	0x3fcfdb777e7a1b5c              # double 0.24888509441026485
	.quad	0x3fe1bd8eb5531496              # double 0.55438933768222642
	.quad	0x3fe6521e7a16a1b1              # double 0.69752429814712091
	.quad	0x3fd9ef7882d2e768              # double 0.40524113441244092
	.quad	0x3fe3b102810c564b              # double 0.61535763935780474
	.quad	0x3fe0760e890335bf              # double 0.51441122780095572
	.quad	0x3fd47ce5ec850cd0              # double 0.32012317750577512
	.quad	0x3fe0dbce6996a8b1              # double 0.52683182356601865
	.quad	0x3fa1bdf5d356d2a0              # double 0.034652406738506558
	.quad	0x3fc58141d7f7f6e4              # double 0.16800711675016722
	.quad	0x3feaefcde7d020d1              # double 0.841772988090293
	.quad	0x3fdf053f49fcee68              # double 0.48469526505843996
	.quad	0x3fe58d44a65bd5d9              # double 0.67349464885654264
	.quad	0x3fe4702d3ac5f494              # double 0.63869344214585277
	.quad	0x3fce3ee888c3c7cc              # double 0.23629481008498343
	.quad	0x3fe9e79ebadd186f              # double 0.80952393051917493
	.quad	0x3fbc405ef73fecb0              # double 0.11035722290391692
	.quad	0x3fe547bdc42ca11f              # double 0.66500747981357111
	.quad	0x3fe58f95a20219a0              # double 0.67377740518786666
	.quad	0x3fec6e9b6391e4ee              # double 0.88850182959791169
	.quad	0x3fe59cff481d800b              # double 0.67541469655043451
	.quad	0x3fda1dd6b1c2db7c              # double 0.40807120666016039
	.quad	0x3fd7cd74b9aaa4d0              # double 0.37191503650190061
	.quad	0x3fee8f880823c988              # double 0.95502091970256319
	.quad	0x3fd18795481ace46              # double 0.27390033761478028
	.quad	0x3fe6dfc2cd718444              # double 0.71481456876438942
	.quad	0x3fbf093859c11178              # double 0.12123443785919175
	.quad	0x3fef7e513560f7f1              # double 0.98416958261054621
	.quad	0x3fc740b8fab5cea4              # double 0.18166267625530452
	.quad	0x3fd822ec9504b298              # double 0.37713160088132147
	.quad	0x3fed0a624491401f              # double 0.90751756088321034
	.quad	0x3fdc68a3d18b39f4              # double 0.44388671363131427
	.quad	0x3fe6bb1a6a847bf6              # double 0.71033974460794869
	.quad	0x3fb9c5d347e76118              # double 0.10067482476677403
	.quad	0x3fc2a3caed82fec0              # double 0.14562355611086808
	.quad	0x3fdde70f13599cf0              # double 0.46722771539357577
	.quad	0x3fea27a633632cfd              # double 0.81733999287226278
	.quad	0x3fe81507a74c732e              # double 0.75256712604059373
	.quad	0x3fea50a593ec9a7f              # double 0.82234457866145749
	.quad	0x3fe926ac9275613b              # double 0.78597096066645322
	.quad	0x3fe58928de6c1a15              # double 0.67299312059259597
	.quad	0x3fe6294745e2947c              # double 0.69253886842183432
	.quad	0x3fe4a788be8e51b0              # double 0.64545094697910166
	.quad	0x3fdbd3f9140915fc              # double 0.43481280285445201
	.quad	0x3faa29eac494a770              # double 0.051101051804223085
	.quad	0x3fe581aea23d1f71              # double 0.67208034217126855
	.quad	0x3fefde5ffa357182              # double 0.99589537495516844
	.quad	0x3fd63dcb28a8faa4              # double 0.34752158137045286
	.quad	0x3fec17bf83a0ba0d              # double 0.87789893826067245
	.quad	0x3fb0d081508346e0              # double 0.065681535870023122
	.quad	0x3fe4415e6c868c48              # double 0.63297959515001256
	.quad	0x3fec04e65d609583              # double 0.87559812772512691
	.quad	0x3fd0ce39a86ce53e              # double 0.26258698890486076
	.quad	0x3fbc79494ba90c38              # double 0.11122568223167739
	.quad	0x3fd8e44cd81290e2              # double 0.38893433667023036
	.quad	0x3fef1c4d44c244f0              # double 0.97220481328454689
	.quad	0x3fe7672f41263b60              # double 0.73134577488404417
	.quad	0x3fe929d5dbdd84c3              # double 0.78635685865824489
	.quad	0x3fee0c3380908d6f              # double 0.93898940191540514
	.quad	0x3fdbf09a5caf2294              # double 0.43656024027999618
	.quad	0x3fddcbd2a1891b3e              # double 0.46556535506208607
	.quad	0x3fe45b8af0c3aef8              # double 0.63617465042395249
	.quad	0x3fe75cbabf1fca96              # double 0.73006951645796181
	.quad	0x3fee3483d7ca449d              # double 0.94391052385812524
	.quad	0x3fe402076aa96c01              # double 0.62524767715819973
	.quad	0x3fd3e5ed97f78d7c              # double 0.31090869751479722
	.quad	0x3fedda1c77143ba0              # double 0.93287490136741624
	.quad	0x3fef6111e0bc21ee              # double 0.98059934514554725
	.quad	0x3fd2bcf67402553e              # double 0.29278336838736496
	.quad	0x3fd0f9a86f408b0a              # double 0.26523791183915135
	.quad	0x3fe303e89a773e6e              # double 0.59422712487316942
	.quad	0x3fedac2117ddff4c              # double 0.92726187383230174
	.quad	0x3fc0b34225667758              # double 0.13047053171333789
	.quad	0x3fa4318bd75453c0              # double 0.03944050792248488
	.quad	0x3fe4055319287e6d              # double 0.62564997590739113
	.quad	0x3fa4c09cdc104da0              # double 0.04053201853107713
	.quad	0x3fea8b5f0d3ac1a2              # double 0.82951309760942515
	.quad	0x3fad0576b5d6dda0              # double 0.056682309815580867
	.quad	0x3fdc1e3693a25048              # double 0.43934406678568338
	.quad	0x3fcc693458bbced0              # double 0.22196058590599543
	.quad	0x3fd7c42a485e593e              # double 0.37134797160378585
	.quad	0x3fe492c42bbefa83              # double 0.64291580719130115
	.quad	0x3f9b6fb904dccf40              # double 0.026793375894342164
	.quad	0x3fd04b88ac2d2f3e              # double 0.25461022199737104
	.quad	0x3fe08158c4ae8738              # double 0.5157893983307309
	.quad	0x3fedfee4c1c55603              # double 0.93736493917339236
	.quad	0x3fcbcef8dea85594              # double 0.21725378868056267
	.quad	0x3fcba05020ef04f0              # double 0.21582986457909881
	.quad	0x3f9efed04da941e0              # double 0.030268912067471621
	.quad	0x3fd5ea8b1de61c34              # double 0.3424403945904857
	.quad	0x3fab95aedd502920              # double 0.053876366153490673
	.quad	0x3fe31f5540fc363f              # double 0.5975748318903199
	.quad	0x3fd7679473db521a              # double 0.3656970149434372
	.quad	0x3fe623740e5e3e51              # double 0.69182780081059481
	.quad	0x3fe444a7766b4636              # double 0.63338063362807051
	.quad	0x3fe3e054ae3a4fcd              # double 0.62113412884581864
	.quad	0x3fdefefd3a346a1a              # double 0.48431330379540471
	.quad	0x3fc8633ee13672d0              # double 0.19052873608315801
	.quad	0x3fe3a76c1d3f2614              # double 0.61418729507676284
	.quad	0x3fed088361a7cccb              # double 0.90728921006520957
	.quad	0x3fe1dcb62458c91f              # double 0.55819232081401882
	.quad	0x3fd84c58da3e5c0e              # double 0.37965985596514507
	.quad	0x3fed90b5c29354ea              # double 0.92391479495077289
	.quad	0x3fe1a920cc6ed219              # double 0.55189552238749962
	.quad	0x3fc8067d919e01d8              # double 0.18769807443824393
	.quad	0x3fec85acaa1bf79d              # double 0.89131768440687476
	.quad	0x3fe57e2b6d031274              # double 0.67165156642347634
	.quad	0x3fb6a0a0bd8f9ee0              # double 0.088388487128777893
	.quad	0x3fec86728fd2f080              # double 0.89141204920407802
	.quad	0x3fc665e96a3c033c              # double 0.17498510062434913
	.quad	0x3fecf7055a794f4c              # double 0.90515391989399907
	.quad	0x3fad3d71e5de76e0              # double 0.057109412489109834
	.quad	0x3fe1331fc6db3c82              # double 0.5374907382882983
	.quad	0x3fc3372147c7f654              # double 0.15011993412911073
	.quad	0x3fe1ec901d925f5c              # double 0.56012731338249067
	.quad	0x3fee334c264eee69              # double 0.94376189691633983
	.quad	0x3fe4e4c9d8d0aadb              # double 0.65292827936840625
	.quad	0x3fb69b576ba846e0              # double 0.088307822974708738
	.quad	0x3fe61bf3df282c57              # double 0.69091218552911016
	.quad	0x3fe86f26c32f9446              # double 0.76356828806150001
	.quad	0x3fd6bcdefdd07a12              # double 0.35527777468260624
	.quad	0x3fe9e3a120169598              # double 0.80903679148893826
	.quad	0x3fee9b6eebd051d1              # double 0.95647378976223696
	.quad	0x3fc1c918b0dd4de8              # double 0.138949476585011
	.quad	0x3fc3627123ec837c              # double 0.15144171003433005
	.quad	0x3fe5f05f1fd0f986              # double 0.68559223379251999
	.quad	0x3fd0a2caeddfa56a              # double 0.25993607740254865
	.quad	0x3fb0ea8e40b561d8              # double 0.066079035566310451
	.quad	0x3fe67335a77a715e              # double 0.70156367025951361
	.quad	0x3fefd79082b58a43              # double 0.99506402520302861
	.quad	0x3fed5a465b77fab1              # double 0.91726987709974683
	.quad	0x3fc47be7fd9c2bcc              # double 0.16003131755164046
	.quad	0x3fc899adc13845c8              # double 0.19218990263520497
	.quad	0x3fe82768c647f79c              # double 0.75481070257932314
	.quad	0x3fc170b653c4e0d4              # double 0.13625220384870451
	.quad	0x3fdc5490427fce08              # double 0.44266134733263174
	.quad	0x3fd40c3937d2e31a              # double 0.31324606372395325
	.quad	0x3fecfa0c4c6b74a2              # double 0.90552344251377215
	.quad	0x3fd8b1ea991a8642              # double 0.38585915519260905
	.quad	0x3fc2a3f2f817ccdc              # double 0.14562832940973791
	.quad	0x3fcaede81260ad24              # double 0.21038533112855717
	.quad	0x3fd28cdd217c2814              # double 0.28984764356630532
	.quad	0x3fd741ceed14a844              # double 0.36339162018214588
	.quad	0x3febdc038002d917              # double 0.87060713770077569
	.quad	0x3fd428889a58b818              # double 0.31497397492319257
	.quad	0x3fe3587211a24488              # double 0.6045465797816556
	.quad	0x3fe9f4c4abf229e6              # double 0.8111289366073009
	.quad	0x3fcb7e9b2cc4ffe4              # double 0.21480121313106715
	.quad	0x3fb95f7ba588da50              # double 0.099113204873767957
	.quad	0x3fe5449b2f0449f3              # double 0.66462477858504909
	.quad	0x3fe7d35962d480f1              # double 0.74454945852997245
	.quad	0x3fe3ddf94f490497              # double 0.62084641919513472
	.quad	0x3fd02f674ae43792              # double 0.25289327920551685
	.quad	0x3fed378264bc262a              # double 0.91302604365154605
	.quad	0x3fadd8948f536710              # double 0.058293001647781506
	.quad	0x3fe0a7e3cb495601              # double 0.52049436287296669
	.quad	0x3fd9425e4f8d4e6e              # double 0.39467580574748851
	.quad	0x3fd765d69ba674a2              # double 0.36559071731773873
	.quad	0x3fc66a38158587ac              # double 0.17511654902324147
	.quad	0x3fdbb65d7e9da9f4              # double 0.4330056892855787
	.quad	0x3fd621c5f6956c56              # double 0.34581135826528475
	.quad	0x3fd5d2ba07859898              # double 0.34098673567349058
	.quad	0x3febbce40e1ed0b4              # double 0.86680796392331282
	.quad	0x3fe5931da9447fd4              # double 0.67420847950051632
	.quad	0x3fe9d0c48e4ae169              # double 0.80673435012344641
	.quad	0x3fda4ebe85f15dee              # double 0.41105616646151943
	.quad	0x3fe2b4e6209e593b              # double 0.58458238955316888
	.quad	0x3fe55fe0dd26b39c              # double 0.66795390313710667
	.quad	0x3fe8f18883c48afe              # double 0.77948404060256826
	.quad	0x3fd2380fb3dbc2f6              # double 0.2846717125349153
	.quad	0x3fea593d607eeeda              # double 0.82339352461664395
	.quad	0x3fec2e16bc91a5cf              # double 0.88062607602949494
	.quad	0x3fe23a1da6815db1              # double 0.56959421654294407
	.quad	0x3feb3e25581c5840              # double 0.85133616646886168
	.quad	0x3faa41995e713c70              # double 0.051281731394390628
	.quad	0x3fd8d4743e637cfc              # double 0.38796716778411144
	.quad	0x3fd91bb36aeb557c              # double 0.39231572572074191
	.quad	0x3fd48a87dea971e2              # double 0.32095524544072707
	.quad	0x3fda792c01c68d8a              # double 0.41364574597738424
	.quad	0x3fd97db8630d2314              # double 0.39829835579853179
	.quad	0x3fe2e21ae42adad7              # double 0.59010071338601733
	.quad	0x3fe203bd346f647b              # double 0.56295643082843527
	.quad	0x3fce1479690afb5c              # double 0.23499982480094672
	.quad	0x3fd8fe02e92b4c50              # double 0.39050362368033564
	.quad	0x3fe321ced10fce10              # double 0.59787693817492205
	.quad	0x3fe53f1eff2b671e              # double 0.66395521009255609
	.quad	0x3fe82d6e466d558a              # double 0.75554574733057334
	.quad	0x3fa1d424673eed40              # double 0.034821641543624882
	.quad	0x3fe0771c3ef054b5              # double 0.51453983586056629
	.quad	0x3fe5a442fa87984c              # double 0.67630146915031153
	.quad	0x3fd5c137320f3686              # double 0.33991794479957382
	.quad	0x3fd6f8c851d7ec02              # double 0.35893447868846817
	.quad	0x3fea0478bb2b1a54              # double 0.81304585033724174
	.quad	0x3fe2694db2300df9              # double 0.5753544311741613
	.quad	0x3feb8d4221820fe4              # double 0.86099344772855745
	.quad	0x3fe04392a86cbf20              # double 0.50824864287821825
	.quad	0x3fe6e860cfff1929              # double 0.71586647629081768
	.quad	0x3fe23f4e9be332be              # double 0.57022791334892253
	.quad	0x3fe701f6afae6aea              # double 0.71898969948537439
	.quad	0x3fe1088db2053a82              # double 0.53229412812818588
	.quad	0x3fe7f29567c55dee              # double 0.74836225765005593
	.quad	0x3fe7a85f3ca4bec6              # double 0.73930322498741741
	.quad	0x3fd312710b7f37f0              # double 0.29800058481930503
	.quad	0x3fc882b3b4401480              # double 0.19148870755467229
	.quad	0x3f9bc4bb16c17c60              # double 0.027117656005767876
	.quad	0x3fee9176ce6df90a              # double 0.95525684660222621
	.quad	0x3fed27d3523130c0              # double 0.91111150792269058
	.quad	0x3fc68c8380a191d0              # double 0.17616313725296928
	.quad	0x3fd1f8e745738992              # double 0.28081685812335266
	.quad	0x3fb61cd1708edfd0              # double 0.086377229671483535
	.quad	0x3fe737d5b7a6e9b5              # double 0.72556577558071089
	.quad	0x3fef7fb23fd1292b              # double 0.98433792557014976
	.quad	0x3f97e8a61143e6a0              # double 0.023348421863352287
	.quad	0x3fe81b6b52ba1615              # double 0.7533470741042857
	.quad	0x3fc3229070326e34              # double 0.149492316039742
	.quad	0x3fd6d8940afb58f2              # double 0.35696888992732945
	.quad	0x3fe1dd737768ed37              # double 0.55828259775390776
	.quad	0x3fe4472eb5af4093              # double 0.63368926511067725
	.quad	0x3fb9b8bb23e01bd0              # double 0.10047502160897115
	.quad	0x3fd1be0374e6225e              # double 0.27722250381387947
	.quad	0x3fe6070bfce85c12              # double 0.6883602084734568
	.quad	0x3fe21aa65103287d              # double 0.56575313399049743
	.quad	0x3fcfbbbec26cfe34              # double 0.24791702741093646
	.quad	0x3fd910f6804a89ec              # double 0.39166033295091895
	.quad	0x3fde41e2dc017826              # double 0.47277137265143876
	.quad	0x3fc2292812c0598c              # double 0.14188099780649244
	.quad	0x3fd29dff255c9542              # double 0.29089335106467129
	.quad	0x3fb1db971df8f0a8              # double 0.069756932084546919
	.quad	0x3fcdf28040b359ec              # double 0.23396304282387292
	.quad	0x3fd7ab27fae04012              # double 0.36982154368979636
	.quad	0x3fb07b3d4c578bf0              # double 0.064380484712770913
	.quad	0x3fe43bae718e8e65              # double 0.63228532961916228
	.quad	0x3feccbc946979723              # double 0.89987624919442444
	.quad	0x3fdcf64c695bb0c4              # double 0.45253286637195012
	.quad	0x3fe2496ec4e35108              # double 0.57146395163229702
	.quad	0x3fd08e6668ef6048              # double 0.25869140861096129
	.quad	0x3fd3575e2469ec50              # double 0.30220750385314421
	.quad	0x3febeca4417b34e8              # double 0.87263691701232649
	.quad	0x3fe59d4e6948ab95              # double 0.67545242846732612
	.quad	0x3fbe3be8e96abf08              # double 0.11810165117890048
	.quad	0x3feaa4d0d0c5c43e              # double 0.83261910224803848
	.quad	0x3fd097c3dadee882              # double 0.2592630040559315
	.quad	0x3fdd56ea14ff0e2c              # double 0.45842983293934725
	.quad	0x3fd0d5ccd19eaa26              # double 0.26304932089502342
	.quad	0x3fca2f84aff88c2c              # double 0.20457514374092634
	.quad	0x3fc5b6c8186c9d58              # double 0.1696405524500999
	.quad	0x3fd38a92358ccc02              # double 0.30533271054736144
	.quad	0x3fd410714b628d44              # double 0.313503574007161
	.quad	0x3feb30fea87c6d85              # double 0.84973080546790014
	.quad	0x3fe65bbeef8315b8              # double 0.69869944362351699
	.quad	0x3fc41889146bacc8              # double 0.15699876305675375
	.quad	0x3fd0764bba853048              # double 0.25722020354146879
	.quad	0x3fc9189ad1087844              # double 0.19606337744420632
	.quad	0x3fc1e1ad683081cc              # double 0.13969962680222492
	.quad	0x3fe84e7c26b300dd              # double 0.75958068426555381
	.quad	0x3fe9082f8e9402d7              # double 0.78224923941896918
	.quad	0x3fe265195d526d41              # double 0.57484119631718766
	.quad	0x3fec3f31f93876dc              # double 0.88271425891772592
	.quad	0x3fcda086259bfc34              # double 0.2314613040580028
	.quad	0x3fe95261ec22af11              # double 0.79130645866595917
	.quad	0x3fc4f1754e40cad0              # double 0.16361872025443924
	.quad	0x3fa45efbc95fc9b0              # double 0.039787166911895766
	.quad	0x3fdc2186cf675a56              # double 0.43954630140561812
	.quad	0x3fea99dc6ed68840              # double 0.83128186843919849
	.quad	0x3fca0192f6ed1444              # double 0.20317303711832058
	.quad	0x3fdb1730588cd014              # double 0.42329033515420744
	.quad	0x3fb9004b4edb7c40              # double 0.097660738708769124
	.quad	0x3fd4b7edaaac7fe4              # double 0.32372609774938454
	.quad	0x3fbaf0e9ee22f2a0              # double 0.10523855270271065
	.quad	0x3fdbb22e8457fce8              # double 0.43275034832181669
	.quad	0x3fe61397bfe3f73e              # double 0.6898916957722816
	.quad	0x3fe426637b7f745d              # double 0.62968610878636933
	.quad	0x3fc2042e600ec03c              # double 0.14075259867013468
	.quad	0x3fe7403e57e3d6bb              # double 0.72659222761168196
	.quad	0x3fead412cf19e77a              # double 0.83838787507487145
	.quad	0x3fe1e6e173b053c4              # double 0.55943367572273717
	.quad	0x3fe9650917012e28              # double 0.79358343594635006
	.quad	0x3fedebd6676ad887              # double 0.93503875921921142
	.quad	0x3fddcc13b8e35c88              # double 0.4655808740184928
	.quad	0x3fc71faa99a559b8              # double 0.18065388204804633
	.quad	0x3fe6a635a0777c27              # double 0.70778924313697622
	.quad	0x3fe143689e783d82              # double 0.53947859717474977
	.quad	0x3fe307474738d96b              # double 0.59463848028717103
	.quad	0x3fc1d5922a53982c              # double 0.13933016840673085
	.quad	0x3fe2adddcd8d276b              # double 0.58372392794374883
	.quad	0x3fc38ac10f26ac44              # double 0.15267194022939823
	.quad	0x3fe41b9493e53b71              # double 0.62836674581363472
	.quad	0x3fee2d2f8be31221              # double 0.94301583596876892
	.quad	0x3fd5a1fb94e245b8              # double 0.33801164187851951
	.quad	0x3feb2153c16dcacb              # double 0.84781825808598776
	.quad	0x3fc6a1fab3ca5ae4              # double 0.1768182161219648
	.quad	0x3fe87b712281738d              # double 0.76506859530819471
	.quad	0x3fca4aca23f75648              # double 0.20540739780578776
	.quad	0x3fe37dad6d162321              # double 0.6090914850802599
	.quad	0x3fe56ccd4dc555bf              # double 0.66953149022690883
	.quad	0x3fc2157efb2d9388              # double 0.14128100647499431
	.quad	0x3fe8af77e179d71d              # double 0.77141946829098951
	.quad	0x3fe9fa7c9f0c3974              # double 0.81182700218214032
	.quad	0x3fe0e016857c129f              # double 0.5273544890520333
	.quad	0x3fd10e590b18b068              # double 0.26650072177540673
	.quad	0x3fd83985e9ac759e              # double 0.37851093120283419
	.quad	0x3fef10c88ba9dc96              # double 0.97079875257522263
	.quad	0x3fe10ec044c660b5              # double 0.53305066521263333
	.quad	0x3fd1cf9210cbafaa              # double 0.27829410209846606
	.quad	0x3fed33eac8e71308              # double 0.91258754004283649
	.quad	0x3fe46fc7d4e65cf4              # double 0.6386450918388662
	.quad	0x3fc02832678e1f24              # double 0.12622671181110789
	.quad	0x3fdd6095d515d968              # double 0.45902009781948161
	.quad	0x3fd8e6774efce940              # double 0.38906653131165925
	.quad	0x3f642fb506b04e00              # double 0.002464154783874184
	.quad	0x3fe4e4ecd01682b7              # double 0.65294495241331318
	.quad	0x3fc0ccc141a65ac4              # double 0.13124862390096415
	.quad	0x3fd7cd5d1b48a5d4              # double 0.37190940536910699
	.quad	0x3fbadbcb9bbe5408              # double 0.1049163108094292
	.quad	0x3fe700da405c428a              # double 0.71885407038105709
	.quad	0x3fcfaf461190760c              # double 0.24753642900115869
	.quad	0x3fe1200045c29556              # double 0.53515637993829546
	.quad	0x3fb350b77f03ca90              # double 0.075450390347933771
	.quad	0x3fe5bd8472a112c0              # double 0.67938444508089191
	.quad	0x3fd1d889a9f67e3a              # double 0.2788414153855886
	.quad	0x3fdaf6415481388c              # double 0.42128022434634071
	.quad	0x3faa1d886cabe530              # double 0.05100656820827465
	.quad	0x3f8724e4f02394c0              # double 0.011300839022121756
	.quad	0x3fc5356e5c7cb4d8              # double 0.16569308773015368
	.quad	0x3fe31c353a7da197              # double 0.59719335006689078
	.quad	0x3fdbdf5268c59e22              # double 0.43550548774371312
	.quad	0x3fe956f5943febfd              # double 0.79186514811533437
	.quad	0x3fdb6da1b746a4b6              # double 0.42856638811151571
	.quad	0x3fbda0e0e9841768              # double 0.11573606206010612
	.quad	0x3fb52d9ece6de6f0              # double 0.082727361104754981
	.quad	0x3fdc0e26e4f84450              # double 0.43836376533824239
	.quad	0x3fe4a3687573b33e              # double 0.64494727077326508
	.quad	0x3fedbd91e8bdaa1b              # double 0.92939086396410475
	.quad	0x3fcda6df6eb96e78              # double 0.2316550532003594
	.quad	0x3fbac03ae93eadc8              # double 0.10449569887594301
	.quad	0x3fa8ec231891ed70              # double 0.048676583050986433
	.quad	0x3fc32a0121c928d8              # double 0.14971937322326911
	.quad	0x3fd37f9eb393dc36              # double 0.30466430222390117
	.quad	0x3fc10ca0194d5a34              # double 0.13319779620606342
	.quad	0x3fe2660e6934e1d4              # double 0.57495804355772373
	.quad	0x3fdb1c3557114214              # double 0.42359670164754104
	.quad	0x3f9c0b9a0b25c960              # double 0.027388007097621681
	.quad	0x3fdbed1a702c8468              # double 0.43634663538438767
	.quad	0x3feff12e78edaad4              # double 0.99819110506845243
	.quad	0x3feca4963ddf64c1              # double 0.89509117207048672
	.quad	0x3fe42f13dc27e12b              # double 0.6307467746656007
	.quad	0x3fecf37d97c4dd26              # double 0.90472297327406603
	.quad	0x3fefd4a1ecf5ddfd              # double 0.99470611840564482
	.quad	0x3fdb5da19209f7f0              # double 0.42758979093184646
	.quad	0x3fe0a9243a80379e              # double 0.52064715791651728
	.quad	0x3fd8635428626aee              # double 0.381062545240339
	.quad	0x3fe5cbcff7ddfde8              # double 0.68112944041780299
	.quad	0x3fec0d9bb9790b3c              # double 0.87666116929208426
	.quad	0x3fb20f2e915271c0              # double 0.070544157485023185
	.quad	0x3fb449c469a47650              # double 0.079250598708733521
	.quad	0x3febcabefe5c8c4d              # double 0.86849927597030219
	.quad	0x3fb5ed06b7932e68              # double 0.08564798337754953
	.quad	0x3fd2ea7a3fd00cbc              # double 0.29556137305935315
	.quad	0x3fd1c0ec0d9bd6fc              # double 0.27740002945880327
	.quad	0x3fec7ee7a8b836ed              # double 0.89049132302326728
	.quad	0x3fece63787677ca4              # double 0.90310265012876245
	.quad	0x3feac36e137a2845              # double 0.83635619930397154
	.quad	0x3fcced9245d7c71c              # double 0.22600010309502572
	.quad	0x3fe1fc5a7a946a9d              # double 0.56205486241681835
	.quad	0x3fd6cf661bc3a334              # double 0.356408621896253
	.quad	0x3fec0546c80430e4              # double 0.87564410272309745
	.quad	0x3fc0e7b7da6bd84c              # double 0.13207147755719217
	.quad	0x3fc6e3a9252967e8              # double 0.17882265390909358
	.quad	0x3fb1ad455afd5830              # double 0.069050154413475395
	.quad	0x3fed7f4c0d2baff5              # double 0.92178919384377755
	.quad	0x3fee17060cdcfd58              # double 0.94031050217010214
	.quad	0x3fe6f0f8410e2471              # double 0.71691525179006821
	.quad	0x3fd541f9205b05ec              # double 0.3321516815159089
	.quad	0x3fe6d41cc34a89e7              # double 0.71339262144857407
	.quad	0x3fe3c998189665ce              # double 0.61835865785831756
	.quad	0x3febb16220c10298              # double 0.86540323636298222
	.quad	0x3fefa419e5c82e91              # double 0.98878188018120927
	.quad	0x3fc13214cbb979e8              # double 0.13434085795866157
	.quad	0x3fee7f0f7e9b73fd              # double 0.95301031806923187
	.quad	0x3fda2373709e5fa2              # double 0.40841375348963471
	.quad	0x3fec35a0b3ed6d06              # double 0.8815463556487948
	.quad	0x3fd9c1f776b81bf8              # double 0.40246378511113745
	.quad	0x3fe78e6c29e4217a              # double 0.73613556081640685
	.quad	0x3fe36a31ebdf07ba              # double 0.60671325749012017
	.quad	0x3fbe4f677b696748              # double 0.11839911234838241
	.quad	0x3fdfc8a3b4c2be5a              # double 0.49662106182492993
	.quad	0x3fbd39b8f448f9c0              # double 0.11416202510824913
	.quad	0x3fdd4f3a4e83fd4e              # double 0.45796067874467361
	.quad	0x3feba551947aa538              # double 0.86393050193615917
	.quad	0x3fea3f7be5fce0cb              # double 0.82024950904362848
	.quad	0x3feae60b25bb5a06              # double 0.84058148736477345
	.quad	0x3fe9dc98e0d1a327              # double 0.80817836675587251
	.quad	0x3fe442c98fdeb97e              # double 0.63315275287258976
	.quad	0x3fdd7fdc05da6f80              # double 0.46092892238242911
	.quad	0x3fe0cbbabb1aae8f              # double 0.52486931365770484
	.quad	0x3fd993d16f3e38f6              # double 0.39964710105495216
	.quad	0x3fe5c68808e2cfd6              # double 0.68048478827995029
	.quad	0x3fbedd6e8b38e2d0              # double 0.12056628130893476
	.quad	0x3fdd5e8ddcbfd5e8              # double 0.45889612729601348
	.quad	0x3fe3b541305a3c3e              # double 0.61587581104129874
	.quad	0x3faeb7ae567277c0              # double 0.059995124867085803
	.quad	0x3faace520572ad30              # double 0.052355349698098741
	.quad	0x3f8f1cab459cf680              # double 0.01519140058700974
	.quad	0x3fe72257deeafc2a              # double 0.72294229067472782
	.quad	0x3fdc38f49503145c              # double 0.44097628166156766
	.quad	0x3fb5125fafe01640              # double 0.082311611593547163
	.quad	0x3fee3f26c20bb090              # double 0.94520891093772441
	.quad	0x3fdda5f201071260              # double 0.46325349903444213
	.quad	0x3fbb6ec1f974b048              # double 0.10715877857427458
	.quad	0x3fe3581ec7bd5978              # double 0.60450686465882963
	.quad	0x3fa217b3f1b86590              # double 0.035337088829872632
	.quad	0x3f84982fc16749c0              # double 0.010055897798257329
	.quad	0x3fc903baccfe6968              # double 0.19542632111990632
	.quad	0x3fdb204582703b7c              # double 0.42384469736219166
	.quad	0x3fe7abf124e3d1e8              # double 0.7397390099054606
	.quad	0x3fdd295288bc1736              # double 0.45564711907387634
	.quad	0x3fdbb025cb717eca              # double 0.43262619845880279
	.quad	0x3fe048412e112a43              # double 0.5088201427218525
	.quad	0x3fc546e4a398dfb8              # double 0.16622598636763342
	.quad	0x3fa734bd421c4c00              # double 0.045324243850835444
	.quad	0x3fba26750bae9d18              # double 0.10214931044776099
	.quad	0x3fe75353e6d916a7              # double 0.7289218434095418
	.quad	0x3fe6d7e3239145b1              # double 0.71385342547198694
	.quad	0x3fc8d40c47d850ac              # double 0.19397119052940093
	.quad	0x3fdb801d034db028              # double 0.42969441721538937
	.quad	0x3fc1c68559839884              # double 0.13887087698748612
	.quad	0x3fe1df09219049fb              # double 0.5584760337390543
	.quad	0x3fa5f2dc950067a0              # double 0.04286851233355482
	.quad	0x3fe86aa85d11a76d              # double 0.76301973512202681
	.quad	0x3feb5e11985aef20              # double 0.85523299939038466
	.quad	0x3fca30c74465ae54              # double 0.20461359824854475
	.quad	0x3fe2276a567e20f2              # double 0.56731144803145939
	.quad	0x3fa457dcac25ada0              # double 0.039732833875713469
	.quad	0x3fe6b07f4464be97              # double 0.7090450607119746
	.quad	0x3fc4764979db2694              # double 0.15985983324053576
	.quad	0x3fa63f09674498b0              # double 0.043449682098342435
	.quad	0x3fdf026fd448b6c6              # double 0.48452373247969793
	.quad	0x3fd06e67f95f8c6a              # double 0.25673865654807193
	.quad	0x3fbf0c981f754630              # double 0.12128592269916605
	.quad	0x3fe24aff04b9dc04              # double 0.57165480540322777
	.quad	0x3fdfa974877db4b8              # double 0.49471772414728887
	.quad	0x3fc710a728e80298              # double 0.18019570824983044
	.quad	0x3fd50c2d5e08ee44              # double 0.32886823828787137
	.quad	0x3fd7905d1608a24a              # double 0.36818625594836318
	.quad	0x3fe6016d85bf748e              # double 0.68767429468756958
	.quad	0x3f8d85cd8e5af140              # double 0.014415365130269309
	.quad	0x3fc7ea5b417f03f4              # double 0.18683949182562254
	.quad	0x3fd40b87278e0b48              # double 0.31320361006526243
	.quad	0x3fe1d40511d19e4e              # double 0.55713132362593298
	.quad	0x3fdccbc8a29d1f92              # double 0.44993797188043871
	.quad	0x3feb475e8f173a9f              # double 0.85246208140764057
	.quad	0x3fe95b73495d2b9f              # double 0.7924133713616931
	.quad	0x3fb6996f822ee288              # double 0.0882787411527578
	.quad	0x3fe924ca8b400156              # double 0.78574111172933203
	.quad	0x3fcd157207bdb550              # double 0.2272169626043401
	.quad	0x3fcef4711fca6b78              # double 0.24183477451591862
	.quad	0x3fc31cd6baa19944              # double 0.14931758988240962
	.quad	0x3f99f00a082dc5c0              # double 0.025329739331430678
	.quad	0x3fd2d80438c123a8              # double 0.2944346002810172
	.quad	0x3fd19979e1026e52              # double 0.27499243711074428
	.quad	0x3fed6032d1c0a7e5              # double 0.91799298255250206
	.quad	0x3feb82299a10b4c8              # double 0.85963897791739274
	.quad	0x3fd01a129a1b5212              # double 0.25159134911999204
	.quad	0x3fee8e01ff8e8759              # double 0.95483493722370405
	.quad	0x3fd4ed9a2810ae2a              # double 0.32700208580601731
	.quad	0x3fa937b9a92bd150              # double 0.049253274822975812
	.quad	0x3fe94376c90f10c6              # double 0.78948535222345906
	.quad	0x3fec1c2fc9c345c5              # double 0.87844075590890525
	.quad	0x3fece41aa70170d8              # double 0.90284474008833637
	.quad	0x3fd5388cc344eb22              # double 0.33157652920970027
	.quad	0x3fe859c96bff798f              # double 0.76096030324315389
	.quad	0x3fe408d829a18e49              # double 0.62607963687009616
	.quad	0x3fd755c0b7f6288c              # double 0.36460893597598765
	.quad	0x3fe7d9ed341f467b              # double 0.74535236530409976
	.quad	0x3f94d885b0d2eb60              # double 0.020357216756319629
	.quad	0x3fe89e175b6eface              # double 0.76929824693783089
	.quad	0x3fea206b90551595              # double 0.81645754041589902
	.quad	0x3fe9453336939712              # double 0.78969727191426586
	.quad	0x3febe4e59c7145ed              # double 0.87169151835604242
	.quad	0x3fedec1a0172ef89              # double 0.9350709942150256
	.quad	0x3fe3cced59cc7aeb              # double 0.61876552141970131
	.quad	0x3fdadade424cbf82              # double 0.41960865473355835
	.quad	0x3fde249bfc0c1c2e              # double 0.47098445524210575
	.quad	0x3fdd1ae8f4b370ca              # double 0.4547674550683608
	.quad	0x3fdbb637a8e8cb50              # double 0.43299666876844345
	.quad	0x3fd0c92e360ab976              # double 0.26227908399132305
	.quad	0x3fd3f666abe7c640              # double 0.31191412723191903
	.quad	0x3fde85a131c7f570              # double 0.47690610753473717
	.quad	0x3fdd58778d8f343a              # double 0.45852459739836926
	.quad	0x3fe0b9627085fd00              # double 0.52262994744515368
	.quad	0x3fd9f2b5e7f45c74              # double 0.40543887759981279
	.quad	0x3fd2daaab1f9616a              # double 0.29459636097228403
	.quad	0x3fe7148049e10ada              # double 0.72125257901674478
	.quad	0x3fe6f5f4286aecd6              # double 0.71752365011289032
	.quad	0x3fa389da4b2bacd0              # double 0.038161107708072017
	.quad	0x3f98001e01654160              # double 0.023437947116066282
	.quad	0x3fedbceebae6cab1              # double 0.92931305412488119
	.quad	0x3fdfb016ed9bd6aa              # double 0.49512265399912769
	.quad	0x3fd6ba225b543512              # double 0.35511073035088814
	.quad	0x3fcfa87db6d9081c              # double 0.24732943943132646
	.quad	0x3fe930772bec4bc7              # double 0.78716620043484731
	.quad	0x3fe15021fd071aaf              # double 0.54103183192713356
	.quad	0x3fe20b9b3d56e837              # double 0.56391679745070789
	.quad	0x3fe569bb3d7bf75d              # double 0.66915666588441136
	.quad	0x3febd46c485c71c1              # double 0.86968053944615786
	.quad	0x3fdc087dac9f9b9e              # double 0.43801824434052061
	.quad	0x3fde56f225f1b5ee              # double 0.47405675607191611
	.quad	0x3fe8ba793e3743fa              # double 0.77276289130725151
	.quad	0x3fe8f4be9e1f5224              # double 0.77987604983588143
	.quad	0x3fe0e67bc49c3c8f              # double 0.5281351890606788
	.quad	0x3fe8fa72e9512bba              # double 0.78057237214795028
	.quad	0x3fc61dc11b3b155c              # double 0.1727830298388352
	.quad	0x3fda9ca82d5a4dbe              # double 0.4158115809343278
	.quad	0x3fe671d0e1204902              # double 0.70139354677147048
	.quad	0x3fbbf7c0c575ffb8              # double 0.10924916096519055
	.quad	0x3fdf40a4af96c338              # double 0.48832051417689426
	.quad	0x3fcde66cd68a53fc              # double 0.23359451747515425
	.quad	0x3fe9687da253c2bd              # double 0.79400521950272884
	.quad	0x3fc7cf980ca88da0              # double 0.18602276437841869
	.quad	0x3fe12eed3c9d10a4              # double 0.53697835768300139
	.quad	0x3fdf7cb0d0521aac              # double 0.49198551505871069
	.quad	0x3feae8cb6d07c8dd              # double 0.84091731352807708
	.quad	0x3fe9d51d06977a7b              # double 0.80726481711810949
	.quad	0x3febeabdbc204740              # double 0.87240492576004414
	.quad	0x3f9ad3a31e20d920              # double 0.026197956766020103
	.quad	0x3fe80ff4c8448ad3              # double 0.75194777598184215
	.quad	0x3fecd4343b917b6f              # double 0.90090381273681241
	.quad	0x3fdff495fce83548              # double 0.49930333803134319
	.quad	0x3fe31c0ddfb8e16d              # double 0.59717458434810811
	.quad	0x3fe83ce6290d9ecc              # double 0.75743396776393856
	.quad	0x3fe429e1db1fdbfa              # double 0.63011257932419018
	.quad	0x3fe4d229eeb999f1              # double 0.65065476060845928
	.quad	0x3fe33b716a1a0378              # double 0.60100622866603626
	.quad	0x3fd5e79c19eed808              # double 0.34226133854406315
	.quad	0x3feb5885305a7707              # double 0.85455569690722732
	.quad	0x3fc4a0ded6dd9a8c              # double 0.16115937701689054
	.quad	0x3fcad5efd0652704              # double 0.20965383220237055
	.quad	0x3fe279d42d133230              # double 0.57737168124874039
	.quad	0x3fed1eccaa43625e              # double 0.91000970129523373
	.quad	0x3fecaa2926cf38b7              # double 0.89577157573673716
	.quad	0x3fc07f429d717dd4              # double 0.12888367355024732
	.quad	0x3fb304d4ff34f0a8              # double 0.074292480760905222
	.quad	0x3fef340c57c981df              # double 0.97510354181218505
	.quad	0x3fea7dee9d1980df              # double 0.82787256892700245
	.quad	0x3fd458a03512bb46              # double 0.31790929015089764
	.quad	0x3fe5a5bead5ea9f1              # double 0.67648252354893945
	.quad	0x3fe5bc735ccfa5cf              # double 0.67925422789738288
	.quad	0x3fc82a22d85b3ad8              # double 0.18878589214587893
	.quad	0x3fcf8df00cd984ac              # double 0.24651909472871603
	.quad	0x3fe43308fe7c811c              # double 0.63122987465252178
	.quad	0x3fe70221831a3307              # double 0.71901012044836043
	.quad	0x3fea21a84d144a08              # double 0.81660857252637786
	.quad	0x3fd39afb2ad6b0cc              # double 0.30633429702244253
	.quad	0x3f7e9a900af50d00              # double 0.0074716211959782175
	.quad	0x3fd7f9209ee5ebb0              # double 0.37458053128619451
	.quad	0x3fd5de2ef8b4589c              # double 0.34168600356623258
	.quad	0x3fd02fbce1c1b24a              # double 0.25291368528886393
	.quad	0x3fe6db4fd85d5fa6              # double 0.71427147158373283
	.quad	0x3fe81521c4c5db05              # double 0.75257957870675851
	.quad	0x3fd549def99f50ec              # double 0.33263372780972023
	.quad	0x3fd522264788944e              # double 0.33020932183928131
	.quad	0x3fe7cc000677ba32              # double 0.74365235579700184
	.quad	0x3fc3cac256362488              # double 0.15462521752877856
	.quad	0x3fe3a575d752dfd8              # double 0.6139477925817074
	.quad	0x3fcf77d8d5efb3f8              # double 0.24584494062528939
	.quad	0x3fbcdcc3771de628              # double 0.11274358423352082
	.quad	0x3febc227b46268ac              # double 0.86745057326631558
	.quad	0x3fe5eaba34aa72fd              # double 0.6849032429341545
	.quad	0x3feda8f175660ef7              # double 0.92687294892718242
	.quad	0x3fefccd2300c8bd1              # double 0.99375256905147513
	.quad	0x3fe68e47ac5b0bb7              # double 0.70486816085064319
	.quad	0x3fe95f6876ca5e4b              # double 0.79289649201650414
	.quad	0x3fe2d19c153ddf5c              # double 0.58808712147490949
	.quad	0x3fec127b8bcf0b4c              # double 0.87725617700957903
	.quad	0x3fe677803d0c5707              # double 0.70208751605488906
	.quad	0x3fdecad9ac669ea8              # double 0.48113099895497635
	.quad	0x3fdcef937c636326              # double 0.45212256572044607
	.quad	0x3fe94047745bff3a              # double 0.78909657217443585
	.quad	0x3fef459609e810c2              # double 0.97724439558853526
	.quad	0x3fc453771a7598a8              # double 0.15879715721093146
	.quad	0x3fc49f333471f9f4              # double 0.16110839901735086
	.quad	0x3fd6c97b400b1f88              # double 0.35604745153659012
	.quad	0x3f998e5bc38c9760              # double 0.024957116899848031
	.quad	0x3fee99a1e7fadced              # double 0.95625396069126867
	.quad	0x3fb2d52cfd4c0230              # double 0.073565303649964831
	.quad	0x3fe3e88b4dff13e9              # double 0.6221367381446018
	.quad	0x3fc8e14e7f8cedc4              # double 0.19437581279804139
	.quad	0x3fe4761f623c8bda              # double 0.6394192618066612
	.quad	0x3fecf41a4af667f0              # double 0.90479769364469398
	.quad	0x3fec5c426b9c0306              # double 0.88626214044060769
	.quad	0x3fe6a16bf2954fc2              # double 0.70720479373493839
	.quad	0x3fe2752b6fc8640e              # double 0.57680293877194955
	.quad	0x3fd506389a39fd0c              # double 0.32850470601256698
	.quad	0x3fd90a40bd435588              # double 0.39125078661648915
	.quad	0x3fc2c1f3ca24cf58              # double 0.14654395456602276
	.quad	0x3fd85750cebcbb4c              # double 0.38032932461913016
	.quad	0x3fad0b2ef89c70e0              # double 0.05672594818881449
	.quad	0x3fe7182edc01edfa              # double 0.72170203180524983
	.quad	0x3fed6b414d1d5b34              # double 0.91934266149005461
	.quad	0x3fe23954860144b4              # double 0.56949831173746768
	.quad	0x3fe38cec2c4993fc              # double 0.61095245981107338
	.quad	0x3fa9e5b8c46f3120              # double 0.050580762842942883
	.quad	0x3fee425d6513868b              # double 0.9456011747499401
	.quad	0x3fc172c4ad7bf4a4              # double 0.13631494971187863
	.quad	0x3fde2b6daa4165e4              # double 0.47140065790662633
	.quad	0x3fe5d1e00af3ec3e              # double 0.6818695272371611
	.quad	0x3f8854092263e780              # double 0.011879035341269661
	.quad	0x3fd5f0e02c5aa77c              # double 0.34282688456971022
	.quad	0x3fbcdd66b799ead8              # double 0.1127533148045744
	.quad	0x3f6cd8b7448db300              # double 0.0035213069390266361
	.quad	0x3fbc54d19341cc10              # double 0.11066922993795481
	.quad	0x3fe8724d4b3dc3a8              # double 0.76395287223396213
	.quad	0x3fc64fe0150d4e04              # double 0.17431260135582261
	.quad	0x3fea3cf2b850b2c9              # double 0.8199399566561506
	.quad	0x3fe97bd4aad4faf3              # double 0.79636605611434985
	.quad	0x3fbf9ed51052f6e0              # double 0.1235173382619581
	.quad	0x3fde2b63472b1fc0              # double 0.47139818143886814
	.quad	0x3fd87fc420c5eb8e              # double 0.38279822540760555
	.quad	0x3fb29d668c1c21d8              # double 0.07271424217845579
	.quad	0x3fc8274c99b0cb38              # double 0.18869931702064391
	.quad	0x3fda31dea74520ca              # double 0.40929380736316701
	.quad	0x3fe2e4d534a6f062              # double 0.59043369563688608
	.quad	0x3fc36811ccde135c              # double 0.15161345008177818
	.quad	0x3fea7e24ef00f1aa              # double 0.82789847069175448
	.quad	0x3fdca02bebe97e4a              # double 0.44727609670915014
	.quad	0x3fc77aaa3d754248              # double 0.18343093872910488
	.quad	0x3fe03d37dff5cd77              # double 0.50747293226451873
	.quad	0x3fee55c50182d49a              # double 0.94796991629722815
	.quad	0x3fcbcd9959ebe9f8              # double 0.2172118844099058
	.quad	0x3fcd7dda22018c34              # double 0.23040320072604603
	.quad	0x3fe28cd689658aa9              # double 0.57969214282305359
	.quad	0x3fb5007627eabef0              # double 0.082038292641978705
	.quad	0x3fde9e8945b042e8              # double 0.47842628293532963
	.quad	0x3fe7149cf3bebe93              # double 0.72126624685729934
	.quad	0x3fe499124a164834              # double 0.6436854788792119
	.quad	0x3fd8a32420b2a5ac              # double 0.38495734398983461
	.quad	0x3fea7caee665b260              # double 0.8277201175638531
	.quad	0x3fe33f812b7b6f16              # double 0.60150202267274966
	.quad	0x3fbcad3d688f7480              # double 0.11201843073600237
	.quad	0x3feca859f81c96ba              # double 0.89555071315108781
	.quad	0x3fccdbb8a025ae14              # double 0.22545535869299782
	.quad	0x3fb67a4fd58772b8              # double 0.087803830748678702
	.quad	0x3fedc491b6a51d4c              # double 0.93024526284072228
	.quad	0x3fd1b049b2664a3a              # double 0.27638475820382136
	.quad	0x3fba6b3f4bb12fb8              # double 0.10319896314575672
	.quad	0x3fbec5b61fe76d98              # double 0.12020433691889421
	.quad	0x3fe5242d49af7a9e              # double 0.66066612617199261
	.quad	0x3f622f2f8b25dc00              # double 0.0022197655281916973
	.quad	0x3fe1c8d150d8371f              # double 0.55576387205084987
	.quad	0x3fd2509c36ca7cc2              # double 0.28617005682640351
	.quad	0x3fc743be1f966d04              # double 0.18175484220851257
	.quad	0x3fe60893c543c0e1              # double 0.68854702499632137
	.quad	0x3fdfb2ad514f756c              # double 0.49528057995288211
	.quad	0x3fe8abd0d43dd6f9              # double 0.77097360089712119
	.quad	0x3fbdad9917916e18              # double 0.1159301455058358
	.quad	0x3fe76bcd9f74801f              # double 0.73190957206316287
	.quad	0x3fc0d7ce5f088fec              # double 0.1315858806639193
	.quad	0x3fed0538aa9367ce              # double 0.90688737216555082
	.quad	0x3fcc3ad2f7f91bd4              # double 0.22054516895351972
	.quad	0x3fe81bb8ae54e1ab              # double 0.75338396119245965
	.quad	0x3fe76bfdf52c383e              # double 0.73193261990832759
	.quad	0x3fdcbfc5c43fd2fa              # double 0.44920486607524845
	.quad	0x3feaf93fda26f2fa              # double 0.84292595489350153
	.quad	0x3febaf50391bb707              # double 0.86515055803258256
	.quad	0x3fde8fa0fcaee714              # double 0.47751640964598718
	.quad	0x3fc3034c997e8b70              # double 0.14853818411674125
	.quad	0x3fcb863dfa6af5c0              # double 0.21503424384529346
	.quad	0x3fc7e671004ac914              # double 0.1867200137545032
	.quad	0x3fe3f75f21b32db7              # double 0.62394672948851493
	.quad	0x3fe7c7ee2956ddf9              # double 0.74315555643164466
	.quad	0x3fe7f5130f936204              # double 0.74866631548053463
	.quad	0x3fb450207e1e6d00              # double 0.079347639837966
	.quad	0x3fd885c38a479cfc              # double 0.38316429618721748
	.quad	0x3fe161e610d413f7              # double 0.54320052420427956
	.quad	0x3fcd272870abe884              # double 0.22775750638522052
	.quad	0x3fcb8f1a7dd5c50c              # double 0.21530467170990908
	.quad	0x3fd0199c11274d90              # double 0.25156308818005702
	.quad	0x3fe1b5ae168d9e82              # double 0.55342773823663571
	.quad	0x3feaeb08d3a2847b              # double 0.84119073233536257
	.quad	0x3fe6d51a718f5bed              # double 0.71351358585058977
	.quad	0x3fa401308c754ba0              # double 0.039071576257490692
	.quad	0x3fde9c817ef04580              # double 0.47830235859245107
	.quad	0x3fe536eaa0e7876c              # double 0.66295367647783854
	.quad	0x3fe14af12ff9b209              # double 0.54039821024122248
	.quad	0x3fd6e5816dad62a4              # double 0.35775790892288684
	.quad	0x3fec68ba2ff73bf4              # double 0.88778409355461329
	.quad	0x3fece3d0a8dd764e              # double 0.90280945760214037
	.quad	0x3fe69113ee9f4a41              # double 0.70520969968703906
	.quad	0x3fe200bd8aaa2f48              # double 0.56259038050618759
	.quad	0x3fb4f1329af8ba40              # double 0.081805384478436771
	.quad	0x3fd1c0c31e908c5c              # double 0.27739027008846562
	.quad	0x3f7d21baf900ef00              # double 0.0071122459049168807
	.quad	0x3fe37fa37ed85f6e              # double 0.60933089041189503
	.quad	0x3fccfae2bbe94f58              # double 0.22640642333373751
	.quad	0x3fe9e58f0a1426e8              # double 0.80927230804919947
	.quad	0x3fc610495d9e5284              # double 0.17237202712262356
	.quad	0x3fc5ab45beab8048              # double 0.16928932008795727
	.quad	0x3fed148c0a765531              # double 0.90875818293958421
	.quad	0x3fc1e5f85b0a7360              # double 0.13983063168862042
	.quad	0x3fe7070b92ae266c              # double 0.71961001060954066
	.quad	0x3fe21fa1e059c61f              # double 0.5663613683556753
	.quad	0x3fecc4cd40d75474              # double 0.89902365364345238
	.quad	0x3fb85d95439a2fe0              # double 0.095177964214769428
	.quad	0x3fbcfa5983ef55f0              # double 0.11319503279749887
	.quad	0x3fd3d67ba4646594              # double 0.30996600202487312
	.quad	0x3fe185e366be579f              # double 0.54759378497213962
	.quad	0x3fc6453176f5b538              # double 0.17398660954078493
	.quad	0x3fd8465e257b8b82              # double 0.37929490719232473
	.quad	0x3fed03917ae39df5              # double 0.90668558122427945
	.quad	0x3fd30082eebba244              # double 0.29690621675266393
	.quad	0x3fe3998e149f9dff              # double 0.61249450710323561
	.quad	0x3fee8da2e82af443              # double 0.95478959412833608
	.quad	0x3fe0b92913f8e32d              # double 0.52260259533713838
	.quad	0x3fc2361a37b4ef2c              # double 0.14227607460076663
	.quad	0x3fc41e93806be9b4              # double 0.15718311091025117
	.quad	0x3fd08b93f82c8142              # double 0.25851916537978437
	.quad	0x3fde926562e02b90              # double 0.47768530517412788
	.quad	0x3fe3c4aedc8e5727              # double 0.61775916173312317
	.quad	0x3fe1cc75cbdd66c6              # double 0.55620851342538269
	.quad	0x3fe2581fdb526d2c              # double 0.57325737797092335
	.quad	0x3fe40f7df2d08400              # double 0.62689111160955235
	.quad	0x3fee9b8877057080              # double 0.95648596998536561
	.quad	0x3fcd576ac6f62094              # double 0.22923025813020514
	.quad	0x3fd2c9aeb3f6e8ae              # double 0.29355971884400389
	.quad	0x3fdd70e167525bfe              # double 0.46001467790614459
	.quad	0x3fe166529b973472              # double 0.54374056233213097
	.quad	0x3fd16bfd992b3d9e              # double 0.27221622426892533
	.quad	0x3fe3f24b92e7d3fd              # double 0.6233270520448283
	.quad	0x3fe91eabc1f07605              # double 0.78499400976915068
	.quad	0x3fe46c73c10ff8fd              # double 0.6382387896299232
	.quad	0x3fe48657fe14eb1f              # double 0.64139937997183327
	.quad	0x3fdfd6cb7467ee48              # double 0.49748503082057427
	.quad	0x3fe1f1ffc14f1e77              # double 0.56079089885402211
	.quad	0x3fc34ccdd2f35fc4              # double 0.15078137207342313
	.quad	0x3fe969e65fa06557              # double 0.79417723347720937
	.quad	0x3feb9b026bf7cd0e              # double 0.86267205321783691
	.quad	0x3fd5bb58579dc25a              # double 0.3395596366526995
	.quad	0x3fe6f3ada4ab0e06              # double 0.71724588548426094
	.quad	0x3fd4c71456118182              # double 0.3246508446227595
	.quad	0x3fe909d0d45207e9              # double 0.78244821041903123
	.quad	0x3fe51ee9b222e5d8              # double 0.660023544237613
	.quad	0x3fd28bebd399ebb2              # double 0.2897901121538623
	.quad	0x3fe21b04fcdf6840              # double 0.56579827679821193
	.quad	0x3fcc24a6c6e7bbc8              # double 0.21986851417702113
	.quad	0x3fe2577ebac0e395              # double 0.57318054652488348
	.quad	0x3fd300dedd2a5a5a              # double 0.29692813490092862
	.quad	0x3fb49c8f6e51e140              # double 0.080513920243793002
	.quad	0x3fd075fb11135c36              # double 0.25720097224752025
	.quad	0x3fc98ac0f774f370              # double 0.19954692919591421
	.quad	0x3fd86d00e2e5d4d4              # double 0.38165304334627348
	.quad	0x3fdde849140a6742              # double 0.46730257947057308
	.quad	0x3fdd7365d41d848e              # double 0.46016832079301018
	.quad	0x3fbef5294be56248              # double 0.12092836478167002
	.quad	0x3f81f419ac0ced00              # double 0.0087663655882495028
	.quad	0x3fecfb632ac3e15e              # double 0.90568693497247543
	.quad	0x3fe1e7a7b868efa2              # double 0.55952821748313775
	.quad	0x3fe66405159c981d              # double 0.69970945569071186
	.quad	0x3fe5dd7b7211a3bf              # double 0.68328640250285122
	.quad	0x3fe3e26b1b6a995f              # double 0.62138896326795734
	.quad	0x3fc6cbc70ca661a4              # double 0.17809379689857707
	.quad	0x3fd48ada95f687e8              # double 0.32097496647668189
	.quad	0x3f9e12c5e9248a40              # double 0.029368488650229674
	.quad	0x3fdaac10c4a133d4              # double 0.41675204469794136
	.quad	0x3fce87fec07461e0              # double 0.23852524182508628
	.quad	0x3fe4418de8280a18              # double 0.63300223677680645
	.quad	0x3fb78851a5cb3e00              # double 0.091923811890630702
	.quad	0x3fb63ba7f7b337e0              # double 0.086847780202532032
	.quad	0x3fe41e9e2c94fea4              # double 0.62873753268646171
	.quad	0x3fdf6628bc518806              # double 0.49061029806591738
	.quad	0x3fe9a1af8baa15dc              # double 0.80098702696039536
	.quad	0x3fde115435ed8fda              # double 0.46980767504123622
	.quad	0x3fe7f26514c926d4              # double 0.74833921489445254
	.quad	0x3fe9c7f97623dc6a              # double 0.80566094469294325
	.quad	0x3fc993c5e1538f08              # double 0.19982217314019857
	.quad	0x3fe0d29911c9e709              # double 0.52570775484420651
	.quad	0x3fe8744d22bb77ad              # double 0.76419693740512218
	.quad	0x3fe454405a39efd9              # double 0.6352845918877349
	.quad	0x3fef5ff2a712cdf9              # double 0.9804623854783464
	.quad	0x3fe86572588ee7da              # double 0.76238362595108389
	.quad	0x3fa93ce691768b60              # double 0.049292760140153602
	.quad	0x3fedca529986acfb              # double 0.93094758973657521
	.quad	0x3fe49c06c5cba14b              # double 0.64404619819564723
	.quad	0x3fed87937fc486cc              # double 0.92279982523560866
	.quad	0x3fe74412b631d62b              # double 0.72705970368287376
	.quad	0x3fe0d701d237fe17              # double 0.52624598558753888
	.quad	0x3fdffc8f71722824              # double 0.49979005888656247
	.quad	0x3fef84ef3eeadf47              # double 0.9849773625237298
	.quad	0x3fadf0213bf9c470              # double 0.058472670146223815
	.quad	0x3fa8b8327e4f2fa0              # double 0.048280313414209575
	.quad	0x3feecebda331aace              # double 0.9627369105704362
	.quad	0x3fed1ae461210d83              # double 0.90953272791414042
	.quad	0x3fccc390d70b9994              # double 0.22471819401034721
	.quad	0x3fd80226f443ff6a              # double 0.3751313577085883
	.quad	0x3fe4a4f87ca1c825              # double 0.64513801901035051
	.quad	0x3fdd57976de07056              # double 0.45847116212985861
	.quad	0x3fb69d84075ecec0              # double 0.088340999411964383
	.quad	0x3fdeeb3d3ec980e2              # double 0.4831078637271401
	.quad	0x3feb64a19119665d              # double 0.85603407230082562
	.quad	0x3fb63e8b0a36b020              # double 0.086891832345543651
	.quad	0x3fe7c01394ce3ca2              # double 0.7421968370780585
	.quad	0x3fda30d9186abf02              # double 0.40923144707174697
	.quad	0x3fefd746f4a57ae4              # double 0.99502895147801639
	.quad	0x3fe835159ab79d07              # double 0.75648002832613848
	.quad	0x3fe2efdbc06108d3              # double 0.59177959035903382
	.quad	0x3fec1f7b54c04032              # double 0.87884298851895992
	.quad	0x3fbd1db6ef0d2000              # double 0.11373465858662257
	.quad	0x3fd6ce1d0dcf871a              # double 0.35633016918846894
	.quad	0x3fe440316cb8b3ba              # double 0.63283606753031241
	.quad	0x3fb830dcc24013f8              # double 0.094495580124274059
	.quad	0x3f5274e7594d2e00              # double 0.0011265048280674206
	.quad	0x3fe61c71c84f3ff5              # double 0.69097222445452522
	.quad	0x3fef68e61061ce88              # double 0.98155501556034696
	.quad	0x3fe060f88292a137              # double 0.51183724882597559
	.quad	0x3fec35b330a7140f              # double 0.88155517103644054
	.quad	0x3fb5955a7c6de1e0              # double 0.08431020295927949
	.quad	0x3fd03ab462d7ebb6              # double 0.25358304646186569
	.quad	0x3fe8b518cb41bd0b              # double 0.77210654924957234
	.quad	0x3fee89ea47a0c466              # double 0.95433534612506032
	.quad	0x3fd71fb783b2c6ec              # double 0.36131084309736994
	.quad	0x3fe2c4dad51f88aa              # double 0.58653012872334398
	.quad	0x3fdb6d868a121fb0              # double 0.42855990870929883
	.quad	0x3fadd620ffe8a030              # double 0.058274298895696908
	.quad	0x3fb29e96cfbd15d0              # double 0.072732377736506537
	.quad	0x3fee35f39f325704              # double 0.9440858945187931
	.quad	0x3fe06d9aad75e445              # double 0.51337942008024895
	.quad	0x3fb18bc23933f2b8              # double 0.068538798299367154
	.quad	0x3fd5c7d68d0bb156              # double 0.34032214902869862
	.quad	0x3fcb8ac0ba530ee0              # double 0.215171900728925
	.quad	0x3fe7e0d0e59f4832              # double 0.7461933598335746
	.quad	0x3fd4e09a14f9aa40              # double 0.32620861099590925
	.quad	0x3fd3a234d97b459c              # double 0.30677529562407257
	.quad	0x3fe110a66ed0a31b              # double 0.53328248637726305
	.quad	0x3fe2372c4b69688b              # double 0.56923498848779397
	.quad	0x3fcbbafa99ee61c4              # double 0.2166436435334288
	.quad	0x3feef39b75642225              # double 0.96723721435507015
	.quad	0x3fb029f8c9b37820              # double 0.063140439265652493
	.quad	0x3fe86d159a209a11              # double 0.76331596472738472
	.quad	0x3fed100c9e26952b              # double 0.90820914162455801
	.quad	0x3fe955a6e4c9126e              # double 0.79170555767684703
	.quad	0x3feb0fd391a98cf6              # double 0.84568193864507069
	.quad	0x3fedf0aabed4c93d              # double 0.93562829276769544
	.quad	0x3feffbe8e7b1b041              # double 0.99950070622208653
	.quad	0x3fe1d3cf58d56864              # double 0.55710570669476711
	.quad	0x3fe23d748149e067              # double 0.57000184299159862
	.quad	0x3fe27ec53703aa10              # double 0.57797489876731056
	.quad	0x3fa92ee66a1a5110              # double 0.049185944034578211
	.quad	0x3fd02f5bcb5716d6              # double 0.25289053780975956
	.quad	0x3fe6710d606c3bef              # double 0.7013003237969978
	.quad	0x3fc20be99ca6cc58              # double 0.14098854207040534
	.quad	0x3feaaf1654ce1bfe              # double 0.83387295306681586
	.quad	0x3fe5a8d3a5ffe8ab              # double 0.6768587343388125
	.quad	0x3fe8bfbb66212a40              # double 0.77340478846719662
	.quad	0x3fb9fa235a97bc00              # double 0.10147305452095168
	.quad	0x3fe89c8ef56025af              # double 0.76911113667408937
	.quad	0x3fd8d57378fef672              # double 0.38802801910410445
	.quad	0x3fde77e9c23bd44a              # double 0.4760689160169177
	.quad	0x3fb2b3799f7737d0              # double 0.073051072532705819
	.quad	0x3fb58a029592e8e0              # double 0.08413711692529402
	.quad	0x3fef039f0a7f634a              # double 0.96919204759897437
	.quad	0x3f970db2f44d9bc0              # double 0.022513195191461
	.quad	0x3fdf8b54501dd2d0              # double 0.49287898849369771
	.quad	0x3fed91f33b9d5091              # double 0.92406617778262234
	.quad	0x3fccff589a9ac768              # double 0.22654254483273495
	.quad	0x3fed632ad91f95b9              # double 0.91835539252195197
	.quad	0x3fe485caf5ea77b0              # double 0.6413321307224944
	.quad	0x3fedf336a35468d1              # double 0.93593913936936179
	.quad	0x3fe0c598a42db8ab              # double 0.52412063661701802
	.quad	0x3fd7d0eab342c03c              # double 0.37212626939708904
	.quad	0x3fdb3d3b89dc8a04              # double 0.42561233962092637
	.quad	0x3fc4d0f9be7ad734              # double 0.16262742806218855
	.quad	0x3fd87a7538549b62              # double 0.3824742364981174
	.quad	0x3fe3b16dae2fab1a              # double 0.61540874500983311
	.quad	0x3fe40c35ec7f2766              # double 0.62649055662880637
	.quad	0x3fba95d7dd3a5e68              # double 0.10384892607759755
	.quad	0x3fe704628acb3c91              # double 0.7192852698152753
	.quad	0x3fdd4b183cb71ab8              # double 0.45770841531013273
	.quad	0x3fe3a3e20ff4267d              # double 0.61375525585135871
	.quad	0x3fec77deb23d7f23              # double 0.88963255703490451
	.quad	0x3fe57a9a30eb7d29              # double 0.67121610216773775
	.quad	0x3fee9307267b3a44              # double 0.95544774547472188
	.quad	0x3fd51030223b6cfc              # double 0.32911303847295392
	.quad	0x3fda4df2421dd360              # double 0.41100746590318771
	.quad	0x3f9bad3b805ccb20              # double 0.027028016767142948
	.quad	0x3fc81a573c23659c              # double 0.18830385624350476
	.quad	0x3fcd867a521a9148              # double 0.23066643723462676
	.quad	0x3f67ad6001e1ff00              # double 0.0028902888435026197
	.quad	0x3fd75363decbc9a4              # double 0.3644647289030678
	.quad	0x3fe4875ec2367e99              # double 0.64152467663002988
	.quad	0x3fe6fcaa1a19f440              # double 0.71834282968450935
	.quad	0x3fe77a5765e596cb              # double 0.73368425275540383
	.quad	0x3fe874a5d83b7cae              # double 0.76423923714528086
	.quad	0x3fec44dbe42cfefe              # double 0.88340563359812996
	.quad	0x3fdb4bfed63a7666              # double 0.42651339455355808
	.quad	0x3fe3c92c764348e6              # double 0.61830733392914961
	.quad	0x3fef3e4050f95561              # double 0.97634902777887699
	.quad	0x3feaaa7d37cc4476              # double 0.83331166170149973
	.quad	0x3fe033017223e3bc              # double 0.50622627537733633
	.quad	0x3fdd9416c6fc63a8              # double 0.46216363365379687
	.quad	0x3fee2f3a40e6d7a3              # double 0.94326508213156435
	.quad	0x3fe55ddde478eea0              # double 0.66770834563745396
	.quad	0x3fe4f0b37482a69a              # double 0.65438244586876526
	.quad	0x3fe63957e344b60f              # double 0.69449991596565208
	.quad	0x3fd4c3c820863076              # double 0.32444956947507053
	.quad	0x3fc05fc3734e3378              # double 0.12792246942663232
	.quad	0x3fb7fa433e3d1cf8              # double 0.093662455267906952
	.quad	0x3fedb4887323023e              # double 0.92828772056243003
	.quad	0x3fe78479caee6cc7              # double 0.73492135653523227
	.quad	0x3fecf7aa1fbc4690              # double 0.9052324886162797
	.quad	0x3fbd8e672a5965a0              # double 0.11545414718547997
	.quad	0x3fec4e1fc4f9fc85              # double 0.88453663322424403
	.quad	0x3fe3f1d0df24c5e7              # double 0.62326854307883373
	.quad	0x3fe917315a5320d5              # double 0.78408115045115301
	.quad	0x3fd68690d15003bc              # double 0.35196323815040009
	.quad	0x3fc886aa449d9be8              # double 0.19160965299963029
	.quad	0x3fa2ee903e95ded0              # double 0.036976344718764431
	.quad	0x3fe54d68d7938157              # double 0.66569940666890204
	.quad	0x3fc412f1b73ce0f4              # double 0.15682813117178507
	.quad	0x3fa91519563dfb40              # double 0.048989097383119518
	.quad	0x3fadad624d61fde0              # double 0.05796343989004149
	.quad	0x3fdbccf2f0bfa23e              # double 0.43438409338572004
	.quad	0x3fd4584c5d43e3f8              # double 0.31788930042199537
	.quad	0x3fe8eb6b83e7617d              # double 0.77873779070345928
	.quad	0x3fdd47150b095674              # double 0.45746351316242984
	.quad	0x3fe1288e8caa2364              # double 0.53620078538470439
	.quad	0x3fe8606ee3f1b620              # double 0.7617716266665333
	.quad	0x3fee81b34511c358              # double 0.95333255281557693
	.quad	0x3fe1b649439ffbb4              # double 0.55350173194880492
	.quad	0x3fd9f05999ab693e              # double 0.40529479986948391
	.quad	0x3fe01eaec0f6d94f              # double 0.50374543846445785
	.quad	0x3fe6fb74d442f92a              # double 0.71819535691591807
	.quad	0x3fe5645d499c6e96              # double 0.66850151421700121
	.quad	0x3fdcd73715a58bc2              # double 0.45063569177562723
	.quad	0x3fe3f82afc5d3e20              # double 0.62404393472565189
	.quad	0x3fa620596745b2e0              # double 0.043215555054165966
	.quad	0x3fe4d8ed1909bbbc              # double 0.65148024454344222
	.quad	0x3fba9bb9e786aea8              # double 0.10393869307034242
	.quad	0x3fe5c0119e7e8df1              # double 0.67969590145042791
	.quad	0x3fe4fd8b52f86790              # double 0.65595022397177338
	.quad	0x3fccb6ce13b75cb8              # double 0.22432876551349579
	.quad	0x3fe3261966bc323d              # double 0.59840078416306819
	.quad	0x3feb23361150a2b0              # double 0.84804824239571097
	.quad	0x3feefb027dd12de6              # double 0.96814083646443971
	.quad	0x3fe2b18c74ac584f              # double 0.58417341983546034
	.quad	0x3fe87517c59265c1              # double 0.7642935618234149
	.quad	0x3f8c9ba88a1fcf80              # double 0.013968769755571264
	.quad	0x3fb98fbae9269408              # double 0.099849397584492405
	.quad	0x3fd7920b07ce7af2              # double 0.36828876268729893
	.quad	0x3fcbb959260022b0              # double 0.21659387927527041
	.quad	0x3fcf2d951e09d9bc              # double 0.24357856718752469
	.quad	0x3fe2babaee38805b              # double 0.58529421355707301
	.quad	0x3fea3ce588f1abec              # double 0.8199336695373609
	.quad	0x3fe231e2634cd858              # double 0.56858939547124532
	.quad	0x3fd0f960c7289ab2              # double 0.2652208275707536
	.quad	0x3fed9cbe4fa8e7ce              # double 0.92538371618797455
	.quad	0x3fdf73595ca32a74              # double 0.49141534849756074
	.quad	0x3fcdc127f1f82630              # double 0.23245715441616843
	.quad	0x3fd52f25067a9796              # double 0.33100247986509979
	.quad	0x3fc25f8ead33e990              # double 0.14354117829482194
	.quad	0x3f6cf740095d3100              # double 0.0035358668054980003
	.quad	0x3fedeef656f8d514              # double 0.93542019831389433
	.quad	0x3fdb71c1de466308              # double 0.428818194451694
	.quad	0x3fe2f99f4f898bb4              # double 0.59297147307039788
	.quad	0x3fe0d5ea225cbb5f              # double 0.52611262046216811
	.quad	0x3fdd9dc6788527d2              # double 0.46275483865303813
	.quad	0x3fdcc6ff81e249bc              # double 0.44964587863901406
	.quad	0x3fe3c69ff387506a              # double 0.61799619259046534
	.quad	0x3fd676796efc7be4              # double 0.35098110044958575
	.quad	0x3fe266d680b43801              # double 0.57505345475669867
	.quad	0x3fe2802d96e2a460              # double 0.57814673871792976
	.quad	0x3fd0101a468841ae              # double 0.25098282707133535
	.quad	0x3fba7553dd494870              # double 0.10335277702805157
	.quad	0x3fe86483c7cb765a              # double 0.76226986906449246
	.quad	0x3fc427bcc61d4488              # double 0.15746268914748307
	.quad	0x3fe1637dbd39f017              # double 0.54339491804376194
	.quad	0x3fe3cec06322bbbe              # double 0.61898822176396329
	.quad	0x3fee31a097a94ecc              # double 0.94355802174910641
	.quad	0x3fd79094257cf01e              # double 0.36819938336316393
	.quad	0x3f748071b47d1e00              # double 0.005005306396760556
	.quad	0x3fcef8fb38b68858              # double 0.24197330731573419
	.quad	0x3fe414d134e3d527              # double 0.62754116373131275
	.quad	0x3fc5d1d0d49bf318              # double 0.17046556836421511
	.quad	0x3fefc83eeeca8ccc              # double 0.99319407118709923
	.quad	0x3fea3b45604f724a              # double 0.81973522959339928
	.quad	0x3fe41b429a0029bc              # double 0.62832765653848055
	.quad	0x3fe12d38664633dd              # double 0.53677005744395567
	.quad	0x3fc3f9b25f1d1890              # double 0.15605764049741255
	.quad	0x3fe8e8b26a503dd6              # double 0.77840538753838007
	.quad	0x3fdec6202d3aff32              # double 0.48084263245617642
	.quad	0x3fd8069f1f384a62              # double 0.37540414856736082
	.quad	0x3fe46f8e4b43d93d              # double 0.63861765575601448
	.quad	0x3fbb35205c9094f0              # double 0.1062793947208609
	.quad	0x3fef97c7bf313510              # double 0.98727786390523598
	.quad	0x3feb5945d6c9bde6              # double 0.85464755965034267
	.quad	0x3f9b0ed6ba2887e0              # double 0.026423792946054792
	.quad	0x3faceddd7dc56480              # double 0.056502267458832911
	.quad	0x3fc0a245405e8170              # double 0.1299521030714561
	.quad	0x3fe079c169fa3401              # double 0.51486273478224132
	.quad	0x3fdc9d4a2ca88d0a              # double 0.44710020409748152
	.quad	0x3fe4cd9d7b994baa              # double 0.65009950771706326
	.quad	0x3fe89a95fb35b1f8              # double 0.76887034477618865
	.quad	0x3fe876dccbe7d79e              # double 0.7645095808536444
	.quad	0x3fe5f7fbb7745574              # double 0.6865213950247111
	.quad	0x3fefd828b9b97c9d              # double 0.99513660692527461
	.quad	0x3fd213e8958aef46              # double 0.28246512035160654
	.quad	0x3fe12c1ea873ad00              # double 0.53663571263078325
	.quad	0x3f80f788aa9f8b40              # double 0.0082846333570550934
	.quad	0x3fed3e0f53130687              # double 0.91382566667034915
	.quad	0x3feafd2ad8dc2ba1              # double 0.84340422015644745
	.quad	0x3fe08bc9811220a6              # double 0.51706385811941824
	.quad	0x3fefcbe7e3a53436              # double 0.99364084684351073
	.quad	0x3fe5d757586bfa24              # double 0.68253676671867369
	.quad	0x3fdf003772180130              # double 0.48438821927995246
	.quad	0x3fed5fa5b90e1935              # double 0.91792570251053596
	.quad	0x3fe39086ac42782a              # double 0.61139234203779336
	.quad	0x3fd6457e169e5ba0              # double 0.34799148758741616
	.quad	0x3fdc2d44a0aeccf8              # double 0.44026294414216194
	.quad	0x3fc2e401d2c3b308              # double 0.14758322516663491
	.quad	0x3fee6158208c502f              # double 0.94938284260797967
	.quad	0x3fa324c0e7c43fc0              # double 0.037389782230206503
	.quad	0x3fe560efedf1b3dd              # double 0.66808315728632872
	.quad	0x3fe6f56253553de6              # double 0.71745411182376695
	.quad	0x3fe3afe4567c2bf3              # double 0.615221184650521
	.quad	0x3fcbbfa9471c3aac              # double 0.21678653690510907
	.quad	0x3fe9d46e88b4651d              # double 0.80718161296968882
	.quad	0x3fee8fa282b71352              # double 0.95503354578304767
	.quad	0x3fecd20a49845ee9              # double 0.90063967093280184
	.quad	0x3fc8e6860d416ce0              # double 0.19453502318615445
	.quad	0x3fc125e80817deb8              # double 0.13396931071451035
	.quad	0x3fd473d4c6f12574              # double 0.31956977298667444
	.quad	0x3fd194b55a3cbb78              # double 0.27470144092779192
	.quad	0x3fb148c9c9133d20              # double 0.067516910162556787
	.quad	0x3fe2bf7713a9983b              # double 0.58587220993354749
	.quad	0x3fe030250cc6904b              # double 0.50587704177133597
	.quad	0x3fd52126fdc4885e              # double 0.33014845640184898
	.quad	0x3fd7cd1888adaf4a              # double 0.37189305636887993
	.quad	0x3fec0ee7b7f2e55b              # double 0.87681947638990765
	.quad	0x3fe7f064fb18d0f4              # double 0.74809502642031456
	.quad	0x3fe8939f1c7487da              # double 0.76802020604759069
	.quad	0x3fe31b7624ca347f              # double 0.59710223374862881
	.quad	0x3fdf2ab63b369676              # double 0.48698192389051742
	.quad	0x3fe2b961fa31891f              # double 0.58512972703855215
	.quad	0x3fe70e8af339b0da              # double 0.7205252409453593
	.quad	0x3fa4ebb304faccf0              # double 0.040860742910263315
	.quad	0x3fbbbab5c0856a78              # double 0.10831771803115398
	.quad	0x3fe8323e2189d452              # double 0.75613314199893922
	.quad	0x3fee9fa5edaeff0c              # double 0.95698830053876937
	.quad	0x3fef1470912eaf8d              # double 0.97124508243494889
	.quad	0x3fe60b2c5e947c79              # double 0.68886393044148442
	.quad	0x3feaf9f78d299073              # double 0.84301354952596197
	.quad	0x3fe44f244c68e4d9              # double 0.63466086314943049
	.quad	0x3fe3eb923b2c7cdd              # double 0.62250625188235242
	.quad	0x3fcededfd6e7ca28              # double 0.24117658608845827
	.quad	0x3fc63e30e09b541c              # double 0.17377291648031779
	.quad	0x3fd6ed08cde24ee0              # double 0.3582174311243147
	.quad	0x3fb8a0141c624470              # double 0.096192604951527149
	.quad	0x3fdef1f02f296e5c              # double 0.48351673703812081
	.quad	0x3fe9cca77ed5b8a9              # double 0.80623221180373605
	.quad	0x3fef7e99ccec97fb              # double 0.98420419716126106
	.quad	0x3fec772bec2572e3              # double 0.88954731104203366
	.quad	0x3fe0bde81875c988              # double 0.52318196084370161
	.quad	0x3fe70886e3e27fc5              # double 0.71979088314764594
	.quad	0x3fcc448babdb9fe0              # double 0.22084184543132235
	.quad	0x3fd88134922cb6da              # double 0.38288606905812872
	.quad	0x3fd8660d40e7f48c              # double 0.38122874582752142
	.quad	0x3febfabf2e91405d              # double 0.87435874076073683
	.quad	0x3fe538f3c6e7e411              # double 0.66320217942041115
	.quad	0x3fdef7bd55496a46              # double 0.48387082413470173
	.quad	0x3fd1d33dc350ebd0              # double 0.27851814340436665
	.quad	0x3fc924263225f99c              # double 0.19641568611764348
	.quad	0x3fe7e458078aed89              # double 0.74662400696927123
	.quad	0x3fdb0490e6ecadc0              # double 0.42215368796561492
	.quad	0x3fe1e5af474a5bd5              # double 0.55928768085402203
	.quad	0x3fdd6f38738f8e4c              # double 0.4599133614085289
	.quad	0x3fa88baa805faa40              # double 0.047940567179314275
	.quad	0x3fbdb2e60eeabbe8              # double 0.11601102699454169
	.quad	0x3fa0cf182006f4c0              # double 0.032830003652159601
	.quad	0x3fce12a39e5a2060              # double 0.23494382125886926
	.quad	0x3fdfa7d45bef71a0              # double 0.49461850145396546
	.quad	0x3fd49bc122fd9836              # double 0.32200649659205582
	.quad	0x3fe1ec8687970403              # double 0.56012274248507798
	.quad	0x3fe3f35c1303fd8a              # double 0.62345699037534641
	.quad	0x3fce93610089b0c8              # double 0.23887264753591908
	.quad	0x3fe6091e22c9061a              # double 0.68861300271982206
	.quad	0x3fd8d8a052c8731e              # double 0.38822181782033904
	.quad	0x3feb0285c1f56eda              # double 0.84405792124331502
	.quad	0x3fd79564c28133d2              # double 0.36849326128577531
	.quad	0x3fe0be71f0e3bd83              # double 0.52324769066574139
	.quad	0x3fe8eb5eefd8ef01              # double 0.7787317928809615
	.quad	0x3fca2da161ff35b8              # double 0.20451752934461154
	.quad	0x3fcac0a91743f8b8              # double 0.20900453220378323
	.quad	0x3fc530f6710de22c              # double 0.16555672188020887
	.quad	0x3fe01e6cf5f9ef80              # double 0.50371406595466794
	.quad	0x3fe3bb7df4f45847              # double 0.61663720934553445
	.quad	0x3fe9b3c8d22bc311              # double 0.80319634484303226
	.quad	0x3fe3cbb7613cafb9              # double 0.61861771575558244
	.quad	0x3fc428305021f910              # double 0.15747646248559777
	.quad	0x3fd7bddf81e1c7dc              # double 0.37096393283638718
	.quad	0x3fc117c683bcf518              # double 0.1335380690815462
	.quad	0x3fe816d2ac566833              # double 0.7527860036818822
	.quad	0x3fec4d5d08b29964              # double 0.88444377611885416
	.quad	0x3faa35f5baaa2720              # double 0.051192931209767645
	.quad	0x3fe81ff35a69f5c9              # double 0.75390021952596797
	.quad	0x3fdad087adb67b02              # double 0.41897766079084431
	.quad	0x3fe858fa9ba2ebf0              # double 0.76086168668495979
	.quad	0x3fe6f17e9d879f1d              # double 0.71697932021649857
	.quad	0x3febedf906090b57              # double 0.87279940775656939
	.quad	0x3fece15bdaee2459              # double 0.90250962028324999
	.quad	0x3fca4815e964c694              # double 0.20532487770247043
	.quad	0x3fda051e6c5c206e              # double 0.40656242925661601
	.quad	0x3fedfbbafc9216c5              # double 0.93697881059844035
	.quad	0x3fef07f778f27b6c              # double 0.96972249624728368
	.quad	0x3fd384864486ba4e              # double 0.30496365253467139
	.quad	0x3fc8cbd91391ab5c              # double 0.19372094588774302
	.quad	0x3fc6bfb1f333cb88              # double 0.17772507071603294
	.quad	0x3fe61fa92c464f7a              # double 0.69136484763519879
	.quad	0x3fdb42ab1567fb8c              # double 0.42594410982558695
	.quad	0x3fec274025f604fc              # double 0.87979133047352275
	.quad	0x3fc170dd81f020d4              # double 0.1362568745100875
	.quad	0x3feccdab9477763b              # double 0.90010622975723409
	.quad	0x3fe70ee938af8c59              # double 0.72057019301827119
	.quad	0x3fe32f0e499223d9              # double 0.5994941174441194
	.quad	0x3fc2d0238b61458c              # double 0.14697689347898935
	.quad	0x3fe90f496161ea16              # double 0.78311604518904931
	.quad	0x3fdf7376fd7502ce              # double 0.49142241241137874
	.quad	0x3fe68b0f0701562d              # double 0.70447493904311431
	.quad	0x3fe189e48ba3e85c              # double 0.5480826117848312
	.quad	0x3fd5f028807be8ea              # double 0.34278309390323491
	.quad	0x3fd18bd8b3d1f1b4              # double 0.27416055260234917
	.quad	0x3fb49f3724819f80              # double 0.080554434216194792
	.quad	0x3febdd0eaab53414              # double 0.87073453275081869
	.quad	0x3feac7e8c9178372              # double 0.83690299297096105
	.quad	0x3fe91411274f0419              # double 0.78369958569976739
	.quad	0x3fec5f87d5120ef3              # double 0.88666144957866633
	.quad	0x3fdb92b26b8a2b98              # double 0.43082867147375614
	.quad	0x3feea5342feca7a8              # double 0.95766648636093965
	.quad	0x3feb3edc0c2f152d              # double 0.85142328624411834
	.quad	0x3fdca93c3ecef414              # double 0.44782930501588791
	.quad	0x3feecb7de6dc676a              # double 0.96234030809430959
	.quad	0x3feff95c8dac2679              # double 0.99918964071657889
	.quad	0x3fdc8e1c0bc4a394              # double 0.4461736788676316
	.quad	0x3fecdc09ac09a73f              # double 0.90186008072962653
	.quad	0x3fe590a5f1ea58b3              # double 0.67390725373367955
	.quad	0x3fec2fa21c5e5bb6              # double 0.88081460514773968
	.quad	0x3fe8e0577edd2aff              # double 0.77738547113526113
	.quad	0x3fe7ad1c5374592c              # double 0.73988167094902257
	.quad	0x3fefe6b6c542f23a              # double 0.99691332366598506
	.quad	0x3fef2b41f19856b0              # double 0.97403046785867353
	.quad	0x3fe0f5bf94afa8c6              # double 0.5299985794092883
	.quad	0x3fed982d30697473              # double 0.92482623534637154
	.quad	0x3fc9827a6903f1e0              # double 0.19929437759118596
	.quad	0x3fd4e871a6ed72f4              # double 0.32668725301282042
	.quad	0x3fb0850b319bbaf8              # double 0.064530086146742494
	.quad	0x3fddb34d9aa79bd6              # double 0.46406879523277433
	.quad	0x3fbe2069dd09c898              # double 0.11768209120217177
	.quad	0x3fdd272e8c8d92a4              # double 0.45551646924858802
	.quad	0x3fe473107a060967              # double 0.63904594261866243
	.quad	0x3fc4b121c40641e0              # double 0.16165563651567449
	.quad	0x3fdaa0849edc016e              # double 0.41604724420178385
	.quad	0x3fd8daae0a1863e0              # double 0.38834715829722022
	.quad	0x3fd6f6f41c0e6d50              # double 0.358822848700318
	.quad	0x3fef6f45233dfadf              # double 0.98233277209495983
	.quad	0x3fe9840527a94891              # double 0.79736573931065113
	.quad	0x3fa008f740bf3bb0              # double 0.031318403867423128
	.quad	0x3fd0ab560287f16a              # double 0.26045751807375572
	.quad	0x3fed3ecd082e9ac3              # double 0.91391612623268548
	.quad	0x3fbe9181f80fa520              # double 0.11940777116946721
	.quad	0x3fe61029555af285              # double 0.68947283431005302
	.quad	0x3fb97bbc7a5ea088              # double 0.099544315219306623
	.quad	0x3fd5eab687932a66              # double 0.34245074500782946
	.quad	0x3fedfd0a69576678              # double 0.93713875364774334
	.quad	0x3feb3c46642fa845              # double 0.85110778396234166
	.quad	0x3fef13e4ae5b3757              # double 0.97117837957351127
	.quad	0x3f72fabb4ec30180              # double 0.0046336476045215624
	.quad	0x3fe917e28d4c701d              # double 0.78416564557437918
	.quad	0x3fe39581775c3aef              # double 0.61200021088174406
	.quad	0x3fbbfad108c66780              # double 0.10929590667947586
	.quad	0x3fd300f4604016a4              # double 0.29693326377342033
	.quad	0x3fda5f0c50bcb5a6              # double 0.41205127605902658
	.quad	0x3fe8bcfc60f33097              # double 0.77306956229724022
	.quad	0x3fed164a609a37e7              # double 0.90897101276072767
	.quad	0x3fea2d27b6bfed51              # double 0.81801210110953992
	.quad	0x3fd76a3ec34b2a68              # double 0.36585969039575739
	.quad	0x3fecde046290a118              # double 0.90210170031517389
	.quad	0x3fba60ea10cb5848              # double 0.1030412951471088
	.quad	0x3fe4913438064476              # double 0.64272509519845644
	.quad	0x3fcfa58b42c7a5f4              # double 0.24723950157867558
	.quad	0x3fe37e735763e6da              # double 0.60918585842520234
	.quad	0x3fe2b4430d10ff4f              # double 0.58450462867765818
	.quad	0x3fefceda07156a84              # double 0.99400044806982679
	.quad	0x3fd4f269fa4de3f2              # double 0.32729577487731298
	.quad	0x3fe44c1114077926              # double 0.63428548728896739
	.quad	0x3fde4512da621066              # double 0.47296592070075005
	.quad	0x3fe33c02bdf63506              # double 0.6010755262556422
	.quad	0x3fe01e634ac8d077              # double 0.5037094555505196
	.quad	0x3fe1f1d5e86769da              # double 0.560770944513304
	.quad	0x3fd83028b7c50d1e              # double 0.37793939539206345
	.quad	0x3fcd758b3e2f58d4              # double 0.23014965568899604
	.quad	0x3fed4805058a5706              # double 0.91504145700557227
	.quad	0x3fe4eb198bffbec6              # double 0.65369870513492212
	.quad	0x3fc9a4f40725a454              # double 0.20034647320724963
	.quad	0x3fd4b923e9891f80              # double 0.32380006605352918
	.quad	0x3fce02e87e91023c              # double 0.23446375064851732
	.quad	0x3fe8a37f83a53968              # double 0.76995826446527094
	.quad	0x3fc64ce12844a334              # double 0.17422117677895133
	.quad	0x3fe421b897224fed              # double 0.6291163398586811
	.quad	0x3fe5ce6c67652820              # double 0.68144817537654845
	.quad	0x3fe4bbe3b2e686a6              # double 0.64793572370054586
	.quad	0x3fea0ea2eabf8f68              # double 0.81428666924737758
	.quad	0x3fc4946e7061068c              # double 0.16077976691490325
	.quad	0x3fd9a92d2efffa6a              # double 0.4009507140143912
	.quad	0x3fc6f986e791b688              # double 0.1794899588307326
	.quad	0x3fe6f1c73e5d4532              # double 0.71701395206961238
	.quad	0x3fbf95f8af3fa1f8              # double 0.12338213232545303
	.quad	0x3fe87fc1bc8471eb              # double 0.76559531039998541
	.quad	0x3fb2a34729a7e978              # double 0.072803924245738005
	.quad	0x3fe9347fd3fc5ca3              # double 0.7876586094233925
	.quad	0x3f9aba73665e9180              # double 0.026101878283627311
	.quad	0x3fe49b3f1178b9a8              # double 0.64395097172182592
	.quad	0x3fc03de4a54ff3a8              # double 0.12688882896318643
	.quad	0x3fdd05e884269098              # double 0.45348561196647941
	.quad	0x3fdf52ff91637490              # double 0.48944081495376057
	.quad	0x3fdcd4c9c18fcc7a              # double 0.45048755552779307
	.quad	0x3fe927da167f7cac              # double 0.78611473459377156
	.quad	0x3fe92f4968ff1bd0              # double 0.78702230937130402
	.quad	0x3fea3a376081c1a9              # double 0.81960648392673818
	.quad	0x3fc83ed1a8770de0              # double 0.18941708303292071
	.quad	0x3fcece359f2dcee0              # double 0.24066801330956533
	.quad	0x3fe5d7882f5b3770              # double 0.68256005524902541
	.quad	0x3fd3602b3328fbc8              # double 0.30274467464544985
	.quad	0x3fd5ac03a35e22fe              # double 0.33862391427878424
	.quad	0x3fe361c7edf41ac1              # double 0.60568615412997684
	.quad	0x3fe25f04e8ca065f              # double 0.57409902063973195
	.quad	0x3fc6f362813ae710              # double 0.17930251417220022
	.quad	0x3f860dc358f91bc0              # double 0.010768438484900389
	.quad	0x3fe4e849039c19c3              # double 0.65335512833626586
	.quad	0x3fd181107e2815d2              # double 0.27350246734598926
	.quad	0x3fe34781cfa39d84              # double 0.60247889093891205
	.quad	0x3fdbaf1b89e40f36              # double 0.43256271806625379
	.quad	0x3fdb88bea3c0b0be              # double 0.43022123328661255
	.quad	0x3fdfdae8bcb7908c              # double 0.49773615292929985
	.quad	0x3fea48a4ba629cd5              # double 0.82136761096344435
	.quad	0x3fe6b0c1f7125d88              # double 0.70907686477851062
	.quad	0x3fc55a767c9c5c1c              # double 0.16682320675383344
	.quad	0x3fe1c01e4d4b5ffc              # double 0.55470194908684745
	.quad	0x3fd8a2119263fc16              # double 0.38489188476518288
	.quad	0x3fe3d08afd654b34              # double 0.61920690051406391
	.quad	0x3feb85d4aa1ed570              # double 0.86008675791405942
	.quad	0x3fe03b47eafe3d31              # double 0.50723644158452974
	.quad	0x3fea2b44acb83261              # double 0.81778177007943154
	.quad	0x3fd35209846d0e7a              # double 0.30188215191103718
	.quad	0x3fb48fd2995c9d78              # double 0.080319559518661765
	.quad	0x3fdeb5ae926070d8              # double 0.47983898443795914
	.quad	0x3fe29c8d98b87202              # double 0.58161048725338582
	.quad	0x3fb919f89caa6f60              # double 0.098052538155056989
	.quad	0x3fd32e900a8a7314              # double 0.29971695927979281
	.quad	0x3fd18485ec226f54              # double 0.27371357021342146
	.quad	0x3fda9d98634484de              # double 0.41586885160547904
	.quad	0x3fc01999445e0750              # double 0.12578121031043077
	.quad	0x3fc63cf784a4e844              # double 0.17373556114927358
	.quad	0x3face19a4d024ca0              # double 0.056408712292204344
	.quad	0x3fe31a1c66048c83              # double 0.59693736958833232
	.quad	0x3fe1366b4657e7c9              # double 0.53789294947568422
	.quad	0x3fe660f32b8f33d9              # double 0.69933470256512031
	.quad	0x3fb383caf36968a8              # double 0.076229748179147294
	.quad	0x3fe56c6d0ac8199a              # double 0.6694855890826148
	.quad	0x3fd239d98c0985bc              # double 0.28478087115771777
	.quad	0x3fc2d9cdc7779130              # double 0.14727184524157044
	.quad	0x3fbdf9af07b5d488              # double 0.1170911210845863
	.quad	0x3fdacd25fa3e66ce              # double 0.41877126157633604
	.quad	0x3fe350cf1ddffa12              # double 0.60361438593810335
	.quad	0x3fe3b7327e9a4af3              # double 0.61611294486132662
	.quad	0x3fe6066a6f04186e              # double 0.68828317339717926
	.quad	0x3fe7b53e7b81bb42              # double 0.74087452051558267
	.quad	0x3fef5f6861346906              # double 0.98039645180986734
	.quad	0x3fbb50f2cdf8f7e0              # double 0.10670392540575291
	.quad	0x3fe13c304f2f696f              # double 0.53859725442752715
	.quad	0x3fea36e9776b74cb              # double 0.81920312236948101
	.quad	0x3fc1140a5f616e24              # double 0.13342408807044237
	.quad	0x3fbca76446880478              # double 0.11192919465976725
	.quad	0x3fa3d51d7778e760              # double 0.038735314210909477
	.quad	0x3fefe45c16592388              # double 0.99662594189531805
	.quad	0x3fe1cbaaff256f5b              # double 0.55611181100128293
	.quad	0x3fd5157b390c5df0              # double 0.32943611689685692
	.quad	0x3fe16a7000cd8751              # double 0.54424286038213598
	.quad	0x3fe3f4fb26dddd33              # double 0.62365491477149815
	.quad	0x3fed74fead16a637              # double 0.92053159529058959
	.quad	0x3fe36e4fb1942a4b              # double 0.60721573527673323
	.quad	0x3fdf8c5d288a4b7c              # double 0.4929421325588732
	.quad	0x3fd217ab59301d40              # double 0.28269466123352416
	.quad	0x3fe29ee7bc100e3e              # double 0.58189760905265309
	.quad	0x3f940000e1f187e0              # double 0.019531263151641443
	.quad	0x3fddf15f838c6b56              # double 0.46785724493536429
	.quad	0x3fc67d74e3442688              # double 0.17570363137229017
	.quad	0x3fe10cc7b71509ae              # double 0.53281007536161495
	.quad	0x3fe8757900358fb4              # double 0.76433992424835262
	.quad	0x3feb5464f1f38de1              # double 0.85405204063539142
	.quad	0x3fe46292dc4e33ef              # double 0.63703291920103122
	.quad	0x3faf1c9dc2ceded0              # double 0.060765199690136051
	.quad	0x3fcaf6a09b67ab68              # double 0.21065147007115148
	.quad	0x3fd200bb16050296              # double 0.28129460478161528
	.quad	0x3fefb8762e51bcd2              # double 0.991267290561064
	.quad	0x3fd366ee6a825cec              # double 0.30315742875377683
	.quad	0x3fe409fb573af186              # double 0.62621848141820702
	.quad	0x3fe05b52ff6a3e6a              # double 0.51114797483201113
	.quad	0x3fdfda2572e0724e              # double 0.49768959253723188
	.quad	0x3fd03512a04d5ffe              # double 0.25323930410877427
	.quad	0x3fc8aefef9a45698              # double 0.19284045400188599
	.quad	0x3fc7c804aa1c7fd4              # double 0.18579157167641702
	.quad	0x3fe4a5abebf8b70a              # double 0.64522358024780258
	.quad	0x3fe139508397c5d3              # double 0.5382463998959629
	.quad	0x3fee8610b00d9107              # double 0.95386537919378689
	.quad	0x3fda1f2c0a28fc9e              # double 0.40815258972356527
	.quad	0x3fd0a235d5ab7110              # double 0.25990053049260187
	.quad	0x3fcb0c14c9154eac              # double 0.21130618875996754
	.quad	0x3fcf30c034f97214              # double 0.24367525660171963
	.quad	0x3fec767dc66c0045              # double 0.88946427110932602
	.quad	0x3fe817f3f51d2b92              # double 0.75292394517724603
	.quad	0x3fd7839d1188d06a              # double 0.36740805351587957
	.quad	0x3fc1f5186544d74c              # double 0.14029221482058529
	.quad	0x3fd46479065333a6              # double 0.31863237016369295
	.quad	0x3f9f5aed8814bb40              # double 0.030620299750064861
	.quad	0x3fe81e5be5a47cb3              # double 0.75370592929893687
	.quad	0x3fed9caab8b9c88c              # double 0.92537437514535403
	.quad	0x3fdac69bbae898b0              # double 0.41837208988944052
	.quad	0x3fe0761d0fdf10c3              # double 0.51441815471528007
	.quad	0x3fabc281b4effb30              # double 0.054218343102539257
	.quad	0x3fa97115f41555f0              # double 0.049690900845842267
	.quad	0x3fa4a8a223cb1d30              # double 0.04034907042437863
	.quad	0x3fd9f46f496b71ce              # double 0.40554411096470921
	.quad	0x3fe99a8d8498f151              # double 0.80011630914627052
	.quad	0x3fdd2d6857712fe8              # double 0.45589645900031295
	.quad	0x3fbde8e67cff5d78              # double 0.11683502723405137
	.quad	0x3fd7991e8144f5de              # double 0.36872065185511171
	.quad	0x3fdead0831af4f36              # double 0.47931103565246092
	.quad	0x3fd795dd59e7fe56              # double 0.36852201251892802
	.quad	0x3fd26e3aa3a44ed2              # double 0.28797784786841618
	.quad	0x3fe744c1989f5b26              # double 0.72714309510306374
	.quad	0x3fef4cfc8d5d889d              # double 0.97814777002738007
	.quad	0x3fe1eb748e342646              # double 0.55999210142290035
	.quad	0x3fde25557dd5f4a4              # double 0.4710286835541615
	.quad	0x3fcfde78829dbce4              # double 0.24897676828138693
	.quad	0x3fd358a042478bf4              # double 0.30228430245023152
	.quad	0x3f7ff01fe3956980              # double 0.0077973600067146042
	.quad	0x3fee15b47e6e726e              # double 0.94014954274787299
	.quad	0x3fe92408d679be9a              # double 0.78564874543913565
	.quad	0x3fe3bd2ed5620939              # double 0.6168436210285001
	.quad	0x3fcfccaced40b668              # double 0.24843370041473922
	.quad	0x3fdfd048961e986e              # double 0.49708761844738703
	.quad	0x3fe22d48f5d71ab7              # double 0.56802795425104236
	.quad	0x3fd58370c0d113a0              # double 0.33614748792416016
	.quad	0x3fb8a1849fce0f10              # double 0.096214570059654613
	.quad	0x3fb8c7090a7453a8              # double 0.096787037899345507
	.quad	0x3fea0898c497a4e3              # double 0.81354940792985209
	.quad	0x3fe0930e69c51682              # double 0.51795120866945887
	.quad	0x3fed987a50a4d332              # double 0.9248630118441723
	.quad	0x3fc85c0f0f649664              # double 0.1903094124947301
	.quad	0x3fe5d62b535e82a7              # double 0.6823937061600035
	.quad	0x3fa18ce3aff05d10              # double 0.034278025843543003
	.quad	0x3fe88f633e85544a              # double 0.76750337802025936
	.quad	0x3fd89546196c0760              # double 0.38411095125785799
	.quad	0x3fd1d2a1a8e62428              # double 0.27848092550317682
	.quad	0x3fd78d400dd275a6              # double 0.3679962286931534
	.quad	0x3fe095b189174ba2              # double 0.51827313209138404
	.quad	0x3f93d7e449476980              # double 0.019378249142258053
	.quad	0x3fe50042d891939f              # double 0.65628187464300314
	.quad	0x3fef0974ce6fe1aa              # double 0.96990433044179736
	.quad	0x3feee059c2a410bc              # double 0.96488655105397169
	.quad	0x3fdbc69346680062              # double 0.43399507403956339
	.quad	0x3fcd108981f27ac0              # double 0.22706717343404215
	.quad	0x3fcc34e4c89195bc              # double 0.22036418717759243
	.quad	0x3fe336e17370a347              # double 0.60044930025933574
	.quad	0x3fedb383090476f1              # double 0.9281630684015153
	.quad	0x3fe914c7c4f198d7              # double 0.78378666368078143
	.quad	0x3fed04c895864222              # double 0.90683392719262579
	.quad	0x3fe1b1b26764b085              # double 0.55294151491172328
	.quad	0x3fec738e922fcdd1              # double 0.88910606910797629
	.quad	0x3fec7c7e8da97b2b              # double 0.89019706409803712
	.quad	0x3feccfe6f3a54907              # double 0.90037868105926655
	.quad	0x3fd518c7e8143e1a              # double 0.32963750518772061
	.quad	0x3fe7c160ab69e522              # double 0.74235566596249591
	.quad	0x3fe4edaddd618502              # double 0.65401356924499532
	.quad	0x3fd0054abd18eacc              # double 0.25032299486671827
	.quad	0x3fdfbce5744feaea              # double 0.49590431555377157
	.quad	0x3fd2a9d2d3496fc0              # double 0.29161520608408509
	.quad	0x3fd73b392a15ba04              # double 0.36298970327234792
	.quad	0x3fe6624053162713              # double 0.69949356296385401
	.quad	0x3fd3710cacaf235e              # double 0.30377499450383094
	.quad	0x3fd2da0306882a4c              # double 0.29455638540153894
	.quad	0x3fdf623413c0214a              # double 0.4903688614727072
	.quad	0x3fdeda73b978eeca              # double 0.48208325493372384
	.quad	0x3fe5694355d0a20b              # double 0.66909949074494202
	.quad	0x3fea63d8e3515267              # double 0.82468838117581533
	.quad	0x3fdf05126966fca8              # double 0.48468456547920846
	.quad	0x3fdc24f92bfdf0f0              # double 0.43975667282189956
	.quad	0x3fe559b8a0979602              # double 0.66720229497576633
	.quad	0x3fc9f1b3f83c6044              # double 0.20268869038477721
	.quad	0x3fd19bf6befd3c1e              # double 0.27514427806176112
	.quad	0x3fdc0d8ddcdca0bc              # double 0.43832727974450925
	.quad	0x3fcffbe62dbc7b78              # double 0.24987485154357691
	.quad	0x3fe45e18cc089977              # double 0.63648643350897671
	.quad	0x3fbea6c7b487ad28              # double 0.11973236234159812
	.quad	0x3f9851470c813b60              # double 0.023747549188836259
	.quad	0x3fe5dbb4097e84e7              # double 0.68306924681033088
	.quad	0x3fe87501bfb6f4fa              # double 0.76428306049606864
	.quad	0x3fdc967f7643ae36              # double 0.44668566273932997
	.quad	0x3fe437020178532f              # double 0.63171482359994069
	.quad	0x3fd0a68599ef9ec6              # double 0.26016368897260767
	.quad	0x3fdca331da8b78a8              # double 0.44746061651484093
	.quad	0x3fe45c281dfce221              # double 0.63624959809300574
	.quad	0x3fadb73da7085bc0              # double 0.058038641586044104
	.quad	0x3fe2c629de7fc30c              # double 0.58668988663529964
	.quad	0x3fa1eaaf08496b50              # double 0.034993619691440103
	.quad	0x3fee990133abec37              # double 0.9561773308954632
	.quad	0x3fb4b3f0ad460bc8              # double 0.08087066870034143
	.quad	0x3fc9dd71e6f597a4              # double 0.20207046296417019
	.quad	0x3fac402a724b1200              # double 0.055177046253024997
	.quad	0x3fd89e840939af4c              # double 0.38467503453170049
	.quad	0x3fef0172bb224dfc              # double 0.96892677831277707
	.quad	0x3fd76e7d1655c338              # double 0.36611869031098676
	.quad	0x3fd72ef423495cb6              # double 0.36224082418398085
	.quad	0x3fdda40a197e307a              # double 0.4631371735529296
	.quad	0x3fee3e61376ce089              # double 0.94511471581701401
	.quad	0x3fdd65e1f1d9c462              # double 0.4593434202025205
	.quad	0x3fe4554f76b905f1              # double 0.63541386783634668
	.quad	0x3febbe367566dbd7              # double 0.86696932725942133
	.quad	0x3fe3d41cc0facc3c              # double 0.61964261714309243
	.quad	0x3fe6049ee046ff2f              # double 0.68806403927007931
	.quad	0x3feada8b71b1bfc4              # double 0.8391778202621869
	.quad	0x3fe6aad3dc84766f              # double 0.70835297651110618
	.quad	0x3fd19e82b7305de6              # double 0.27529971971077172
	.quad	0x3fda3b98d186cd44              # double 0.40988750897959769
	.quad	0x3fd9d225f56290ea              # double 0.40345143283253881
	.quad	0x3feaa5ebeb8a148c              # double 0.83275409702095393
	.quad	0x3fd6fcf1c997d1dc              # double 0.35918850600071806
	.quad	0x3fec69d3625f6ff4              # double 0.88791817868650335
	.quad	0x3fe2bbb9584e34b1              # double 0.58541552779356298
	.quad	0x3fe8d62da6b99977              # double 0.7761448150966278
	.quad	0x3fea3dad553d37f6              # double 0.82002894066113075
	.quad	0x3fe11a4a0378be70              # double 0.53445912054116995
	.quad	0x3fbfb51eb1af66f0              # double 0.12385742033020697
	.quad	0x3fe8f492a5170ea8              # double 0.77985508197931086
	.quad	0x3fc8a714694bd99c              # double 0.1925988687650716
	.quad	0x3fe9015844f5e660              # double 0.78141416043144928
	.quad	0x3fe765c65da475c7              # double 0.73117368974242758
	.quad	0x3f9dc6522a73a2a0              # double 0.029076846924825817
	.quad	0x3fef09e1d0861e18              # double 0.96995630957912037
	.quad	0x3fd79495377305dc              # double 0.36844377913447857
	.quad	0x3fe847a7743f975f              # double 0.75874684052244479
	.quad	0x3fe5a96ea9886494              # double 0.6769326506793214
	.quad	0x3fb87d6256822448              # double 0.095663210029799051
	.quad	0x3fe80be7ee2d6799              # double 0.75145336646095295
	.quad	0x3fd992cf309403c2              # double 0.39958553070033187
	.quad	0x3fd72039d601e80a              # double 0.36134191416897521
	.quad	0x3fe73fedae119519              # double 0.726553764322179
	.quad	0x3fd24d19869cf1f2              # double 0.28595579286391548
	.quad	0x3fe7ccfb6c8950ea              # double 0.74377223204149101
	.quad	0x3fdc831bf8457e88              # double 0.4455022739912029
	.quad	0x3feb42c34545f423              # double 0.85189975290234476
	.quad	0x3fed747bbe676c77              # double 0.92046916187554373
	.quad	0x3f94efa0ad4ae2a0              # double 0.020445356919227664
	.quad	0x3fe75d02b01d9a54              # double 0.73010382077775171
	.quad	0x3fe7bbaac4612191              # double 0.74165857653956568
	.quad	0x3fefb679601a5b05              # double 0.99102467317683873
	.quad	0x3fd2926bd43d0b12              # double 0.29018684126292371
	.quad	0x3fe4d77026e87b5d              # double 0.65129859542126278
	.quad	0x3fcabdd7bffe52bc              # double 0.20891854166679547
	.quad	0x3fed31057ff19d46              # double 0.91223406781220073
	.quad	0x3fc3f08a37f4676c              # double 0.15577819568789708
	.quad	0x3fc0c19a5a3ccfb8              # double 0.13090829282884697
	.quad	0x3fe73ac2ba6a70ff              # double 0.72592293176015221
	.quad	0x3fdc4262cc710b18              # double 0.44155187573430643
	.quad	0x3fd62299694de54e              # double 0.34586177142735586
	.quad	0x3fea62ed3f117856              # double 0.82457601850524997
	.quad	0x3fea8178ad4f809d              # double 0.82830461358755125
	.quad	0x3fd7b03c83f8442c              # double 0.37013161552119089
	.quad	0x3fc359efb72dab48              # double 0.15118214077241476
	.quad	0x3fe91592fb1f506d              # double 0.78388356253937064
	.quad	0x3f8599d5c5b94f00              # double 0.010547323319009205
	.quad	0x3fc2d82ac90d39c4              # double 0.14722189728713719
	.quad	0x3fe127a769dd67d7              # double 0.53609057118159853
	.quad	0x3fdafe1adbe8fc20              # double 0.42175933337779448
	.quad	0x3fbe8ba8aa505168              # double 0.11931852491426798
	.quad	0x3fe78c7c8655fbbe              # double 0.73589922177767852
	.quad	0x3f8adde96dba9b40              # double 0.013118575726662862
	.quad	0x3fd24d25007a1516              # double 0.28595852896280982
	.quad	0x3fec6624a99d135e              # double 0.88746865394260133
	.quad	0x3fb65a5113e24960              # double 0.087315623621440519
	.quad	0x3fd1ec21b0aed504              # double 0.28003732923691893
	.quad	0x3fc1bf42bed28228              # double 0.13864931409354253
	.quad	0x3fe57a0c8e37c4fc              # double 0.67114856507228593
	.quad	0x3fe193a06d48aac9              # double 0.54927083343985672
	.quad	0x3fe215e9d147d709              # double 0.56517496943590217
	.quad	0x3fd4d1f769f1dcfc              # double 0.32531533571405169
	.quad	0x3fe071519040dd18              # double 0.51383283781516109
	.quad	0x3fa779f4748c9f50              # double 0.045852317073068805
	.quad	0x3fd46c5b7db542f4              # double 0.31911361004044569
	.quad	0x3fe9718845491995              # double 0.79510892422040291
	.quad	0x3fdca63921d9a612              # double 0.44764545732195515
	.quad	0x3fe57ad3f4be6aab              # double 0.6712436466362609
	.quad	0x3fed816655398023              # double 0.92204586644584585
	.quad	0x3fd51ef6f4ffe402              # double 0.33001493383159197
	.quad	0x3fd557e2b3960d52              # double 0.33348910844525392
	.quad	0x3fe732f32725f5d3              # double 0.72496945997380136
	.quad	0x3fe4ba7438c916c2              # double 0.64776049700659422
	.quad	0x3fcf07ff5bd62ac8              # double 0.24243156418045531
	.quad	0x3fdac3bf8ebc5fec              # double 0.41819752635046714
	.quad	0x3fe98a8b3a06c271              # double 0.79816209157259099
	.quad	0x3fe7d793061e4289              # double 0.74506522364579653
	.quad	0x3fe6d0c1f4ede2d6              # double 0.71298311078779864
	.quad	0x3fe74c2e6f501064              # double 0.72804948559543137
	.quad	0x3fd15d219de6be1c              # double 0.27130928440144131
	.quad	0x3fc0445e79f291dc              # double 0.12708645777196537
	.quad	0x3fda4de93c878ae0              # double 0.41100531493263581
	.quad	0x3fe7ea7d7f0e019c              # double 0.74737429442761849
	.quad	0x3feaabee1dacdb4b              # double 0.83348756595555906
	.quad	0x3fd0be9537d083d4              # double 0.26163225603710072
	.quad	0x3fefd90ea8088a42              # double 0.9952462465192371
	.quad	0x3feaf246e36a3612              # double 0.84207481781931137
	.quad	0x3fd55be0aa20c9cc              # double 0.33373276342458946
	.quad	0x3f855d45ed9cae80              # double 0.010431810678333209
	.quad	0x3fd27c220aab3042              # double 0.28882647554269536
	.quad	0x3fbee04b4efc3be8              # double 0.12060995748855385
	.quad	0x3fe8010131425609              # double 0.75012263890192898
	.quad	0x3fe1638e6d5d4801              # double 0.54340287552099664
	.quad	0x3fef7719d95b346c              # double 0.98328869297405452
	.quad	0x3fcfc9cdf1c28d30              # double 0.24834608368574029
	.quad	0x3fdc4115ffc56882              # double 0.44147253015183463
	.quad	0x3fee8ff6de9f5400              # double 0.95507377129490578
	.quad	0x3fe1c959f74a1d4d              # double 0.55582903193218558
	.quad	0x3fca09e8d1cee9e4              # double 0.20342741245788354
	.quad	0x3fe4d5a278aafc6e              # double 0.65107844894363409
	.quad	0x3fc4d2415f732ba0              # double 0.16266648445738685
	.quad	0x3fb5eba0ff4f78a0              # double 0.085626661616944322
	.quad	0x3fde1972deb4bb4a              # double 0.47030326603537687
	.quad	0x3fb20c6b1f92aef8              # double 0.07050199051689876
	.quad	0x3fdc910a22fef71e              # double 0.44635251443456692
	.quad	0x3fd4a39adda1e844              # double 0.32248565334123591
	.quad	0x3fe3b56af5aba523              # double 0.61589572889821331
	.quad	0x3fdc656ec6448f9a              # double 0.44369096147624421
	.quad	0x3fc4475bd167c194              # double 0.15842769360416453
	.quad	0x3fd35ae35b10873a              # double 0.30242236989043969
	.quad	0x3fefd993dc3c8b54              # double 0.99530976309720609
	.quad	0x3fe624b02381c978              # double 0.69197852072674859
	.quad	0x3fe2ee028d209791              # double 0.59155395091942087
	.quad	0x3fecc781f39189ee              # double 0.89935395786261352
	.quad	0x3fe528b8622e93e0              # double 0.66122073341523091
	.quad	0x3fbe4fa144fc9da0              # double 0.11840255674598277
	.quad	0x3fae05d11f49a510              # double 0.058638129300400021
	.quad	0x3fef1e3f5c36da4d              # double 0.97244232187842671
	.quad	0x3fe539d0e4c74e47              # double 0.66330761607464062
	.quad	0x3fe2c39ad546cb72              # double 0.58637754111837936
	.quad	0x3fb9addb43959128              # double 0.10030908966070184
	.quad	0x3fe776aaa95a6c21              # double 0.73323567463683414
	.quad	0x3fe3dcbbee020b8d              # double 0.62069508062300971
	.quad	0x3febcd83176d788b              # double 0.86883692336756846
	.quad	0x3fef90d8da26a8c6              # double 0.98643152816409763
	.quad	0x3fa2aba9c80e0e20              # double 0.03646593634678319
	.quad	0x3fd5216e8cd240f6              # double 0.33016551735001032
	.quad	0x3fc98dcb3f1a6bf4              # double 0.19963970738612569
	.quad	0x3fed4ff60a0cac1f              # double 0.91601087534707293
	.quad	0x3fdfbb1f8d7075fa              # double 0.49579609692031534
	.quad	0x3fb2560f485b3d10              # double 0.071625666775833929
	.quad	0x3fdb0606e6e8466a              # double 0.4222428564981785
	.quad	0x3fda10b363b0d35a              # double 0.40726933226988182
	.quad	0x3fe8754583aa3740              # double 0.76431537357141366
	.quad	0x3fd4da803fac5a80              # double 0.32583624094096564
	.quad	0x3fe766c21e96f643              # double 0.7312937352614387
	.quad	0x3fe17ae280b16fd9              # double 0.54625058303235641
	.quad	0x3fecc21be4db0100              # double 0.89869494150482865
	.quad	0x3fe72cddd15f4d15              # double 0.72422686474820586
	.quad	0x3feca293a2dafa78              # double 0.89484578902904754
	.quad	0x3fe628f9610a8fd7              # double 0.6925017257058198
	.quad	0x3fab45708bfae7f0              # double 0.053264157378592247
	.quad	0x3fc9a02ef98a2860              # double 0.20020091232828729
	.quad	0x3fec93f8ff8ace0e              # double 0.89306306753718601
	.quad	0x3fd562d499df3bf2              # double 0.3341571333557446
	.quad	0x3fee3b800c64c347              # double 0.94476320667863767
	.quad	0x3fef668c7c45a237              # double 0.98126816055179844
	.quad	0x3fdd90e0beb93556              # double 0.46196764588679196
	.quad	0x3fe6487f9f0eabfe              # double 0.69634991708642224
	.quad	0x3fd6efc6178901f4              # double 0.35838463114126218
	.quad	0x3fd076655256a02a              # double 0.25722630539758262
	.quad	0x3fc0f39c8e987368              # double 0.13243443453475412
	.quad	0x3fd23b59856ebbd2              # double 0.28487241774103922
	.quad	0x3fb94ec264d9cfb0              # double 0.098858022329123995
	.quad	0x3fe789e82552584d              # double 0.73558432855021183
	.quad	0x3fca14e7e4dca124              # double 0.20376299548048238
	.quad	0x3fc08adfbec3ae04              # double 0.1292380982844038
	.quad	0x3fd2cf8c9259d8b2              # double 0.29391779224477965
	.quad	0x3feb7b2e253796bc              # double 0.85878665226910966
	.quad	0x3fc22c6c50d846fc              # double 0.14198068568708055
	.quad	0x3fc7c55801e48bd0              # double 0.18570995418948977
	.quad	0x3fd40c148e40dd4a              # double 0.31323732273036298
	.quad	0x3fa6f0796d227e60              # double 0.044803423473464887
	.quad	0x3fe5276f746ae923              # double 0.66106388795677551
	.quad	0x3fc0f5c508ab5d3c              # double 0.13250029490766646
	.quad	0x3fd760be32a87952              # double 0.36527972170906253
	.quad	0x3fe32788105f543a              # double 0.59857562253694785
	.quad	0x3fcbc93a5666bd94              # double 0.21707848757567361
	.quad	0x3fd89731dbf08dc0              # double 0.38422819593889912
	.quad	0x3fe6327a07e6bf07              # double 0.6936617044757164
	.quad	0x3fd090548593e844              # double 0.25880921406463053
	.quad	0x3fa9ba62b9c6efe0              # double 0.050250134637707111
	.quad	0x3fefa1d325da8a10              # double 0.98850400346083411
	.quad	0x3fe6fddb8edcc813              # double 0.7184884825021548
	.quad	0x3feaac85ce374f7f              # double 0.83355989719937884
	.quad	0x3fdedd1b5252d3fa              # double 0.48224528350266349
	.quad	0x3fe6c8abaaa22d42              # double 0.71199591948371954
	.quad	0x3fd7156e08d39e66              # double 0.36068297254539627
	.quad	0x3feb7272a493b8ef              # double 0.85772068160966153
	.quad	0x3fcecebfd79f1598              # double 0.24068449047460372
	.quad	0x3feba3ba6bf17ef7              # double 0.86373635370907109
	.quad	0x3fcecb5bd5e10ffc              # double 0.24058101599996451
	.quad	0x3fef49ab28846f89              # double 0.97774274743595512
	.quad	0x3fc759469648bac4              # double 0.18241197908488094
	.quad	0x3fb37d4df2419a78              # double 0.076130744595141908
	.quad	0x3feacbd20aac15cd              # double 0.83738042911925847
	.quad	0x3fc14c6d2dde0570              # double 0.13514485110867325
	.quad	0x3fed5b9559b6afcc              # double 0.91742961427871128
	.quad	0x3fecf00e78167b50              # double 0.90430377440120857
	.quad	0x3fd1f04fa4911846              # double 0.28029242583250313
	.quad	0x3fefdb3474a40e84              # double 0.99550841123023348
	.quad	0x3fe42884f9a7ebbe              # double 0.62994622002531009
	.quad	0x3fd8d1fc5d957ba8              # double 0.38781651629499914
	.quad	0x3fe4e40d4dd312ed              # double 0.65283837509249809
	.quad	0x3f9b754051e57e20              # double 0.026814465521395658
	.quad	0x3fe2eb860e0c5c6b              # double 0.59125044578366948
	.quad	0x3fe155db59c1746f              # double 0.54173057108313383
	.quad	0x3fe2fe23f5ce1f26              # double 0.59352300652333123
	.quad	0x3fe06b043ad3fdcd              # double 0.51306354036199198
	.quad	0x3fe49cf009a49ff4              # double 0.64415742762957828
	.quad	0x3fe6c6703a96144a              # double 0.7117234367621077
	.quad	0x3fe797c9f62ca6f3              # double 0.73727891999189266
	.quad	0x3fdfdf39256d80f0              # double 0.49799946456006605
	.quad	0x3fdd0ffb2243b4ee              # double 0.45410040231838777
	.quad	0x3fe9ad5a2ef4468c              # double 0.80241116686575386
	.quad	0x3fd75d73efec051c              # double 0.36507891111257762
	.quad	0x3fda18f1d5fbe0d8              # double 0.40777250191559977
	.quad	0x3fd3a3f71e5eef5c              # double 0.30688264814283683
	.quad	0x3fed3cf18807c2b6              # double 0.91368938988133297
	.quad	0x3fec94e5602a244b              # double 0.89317578107978457
	.quad	0x3fd67b1b15b13916              # double 0.3512637817228933
	.quad	0x3fe4f9b4b1423f63              # double 0.65548166867118274
	.quad	0x3fdbbff1ce497c74              # double 0.43359036584110489
	.quad	0x3fcb5ff4cd5ed9bc              # double 0.21386585262162139
	.quad	0x3fe2ba83e2a0841d              # double 0.58526796591843644
	.quad	0x3fd980e37afddc36              # double 0.39849173556234818
	.quad	0x3fea3c5a472b7976              # double 0.81986726665836218
	.quad	0x3fe32a98dcbc9ce9              # double 0.59894984352731939
	.quad	0x3fe753dc4d21e0de              # double 0.72898688378247889
	.quad	0x3fc05a70d08c2a60              # double 0.12776003058418706
	.quad	0x3fd021b1c08458a4              # double 0.25205653954015816
	.quad	0x3fe44a5af0523b03              # double 0.63407656610237983
	.quad	0x3fdbceef01712ba2              # double 0.43450522557093951
	.quad	0x3fe496ac4b101f6a              # double 0.64339270268190529
	.quad	0x3fd867ba3ca6255e              # double 0.38133102343325287
	.quad	0x3fc01b1fb5c270f4              # double 0.1258277547357306
	.quad	0x3fe7d4d8a1a3b628              # double 0.74473220415319918
	.quad	0x3fd5d753b9e671ce              # double 0.34126752046884412
	.quad	0x3fdb807adce4a1e4              # double 0.42971679278937658
	.quad	0x3fc7aa337e2593d4              # double 0.18488162669669228
	.quad	0x3fe8a88f5e879484              # double 0.77057617628874242
	.quad	0x3fe2587f59beb220              # double 0.57330291298200464
	.quad	0x3fe24bed0acd5a38              # double 0.57176830396458111
	.quad	0x3fea7f3f3e07e335              # double 0.82803308596985536
	.quad	0x3fe4090d9e230440              # double 0.62610512624826953
	.quad	0x3fe1cb29bbf8fcc9              # double 0.55605017388725131
	.quad	0x3fe7c37d8823b8b4              # double 0.74261356916192378
	.quad	0x3fe6fe8ae2c63997              # double 0.71857208530291217
	.quad	0x3fbaf200fae113f8              # double 0.10525518536549316
	.quad	0x3fe14fec554853cb              # double 0.54100624710792411
	.quad	0x3f81b77a95807800              # double 0.0086507393717134562
	.quad	0x3fed1f1b8fd825c1              # double 0.9100473222217077
	.quad	0x3f8d5bbe1dc9c980              # double 0.014335141452850975
	.quad	0x3fef0f91ee696f73              # double 0.97065064015212809
	.quad	0x3fd840f7b35f19a4              # double 0.3789653064417513
	.quad	0x3fc053309f747ce4              # double 0.12753875528230829
	.quad	0x3fddfd154501ef4a              # double 0.46857196558970726
	.quad	0x3fdbf257deb4cf70              # double 0.43666645764027745
	.quad	0x3f8c9f522f9b2e00              # double 0.013975755765748055
	.quad	0x3fec0edb9d6c955d              # double 0.8768137049379835
	.quad	0x3fe0b6802d8edb94              # double 0.52227791688970848
	.quad	0x3fbec528334549f8              # double 0.12019587756848427
	.quad	0x3fcd9556d7b1a694              # double 0.23111997157984787
	.quad	0x3fc513da08cf6d30              # double 0.164668325712094
	.quad	0x3fea358e93d62eef              # double 0.81903771280619064
	.quad	0x3fe3f6609f852e0a              # double 0.6238253703717771
	.quad	0x3fe6869e7d06d020              # double 0.70393299502621076
	.quad	0x3fe49fc65b32f00c              # double 0.64450376331615322
	.quad	0x3fee178631823566              # double 0.9403716055837037
	.quad	0x3fa44338521307f0              # double 0.03957534791835815
	.quad	0x3feea1e14c0ac542              # double 0.95726075031249303
	.quad	0x3fe587e7cbe2d6fe              # double 0.67284002133848708
	.quad	0x3fe31fff0bf1a7a6              # double 0.59765579541020908
	.quad	0x3fece8e7b42cb15c              # double 0.90343079748485477
	.quad	0x3feadea6cbca4054              # double 0.83967914393179876
	.quad	0x3fd9f3d30973cd6e              # double 0.4055068580921305
	.quad	0x3fd811fdcafea59c              # double 0.37609810661032284
	.quad	0x3fdf50d07750bdf8              # double 0.48930751468557743
	.quad	0x3fd65cf6d6322864              # double 0.34942408483096288
	.quad	0x3fede9d1a97f2184              # double 0.93479235749059386
	.quad	0x3fde780a28583830              # double 0.47607664050963461
	.quad	0x3fee3efef1560dfa              # double 0.94518992553679415
	.quad	0x3fd600867efb162a              # double 0.34378206634969166
	.quad	0x3fdda1d0a6e04a80              # double 0.46300140663621647
	.quad	0x3fe367583e163ca5              # double 0.60636531950321582
	.quad	0x3fe16dba211a44a9              # double 0.54464441743234204
	.quad	0x3fdee4bc21079f0e              # double 0.48271086907924221
	.quad	0x3fefd0356b1f80b9              # double 0.99416609690162893
	.quad	0x3fec2e519639dac3              # double 0.880654138002534
	.quad	0x3f71c8f1c3a99300              # double 0.0043420261305058272
	.quad	0x3fdb0250c2bdbfc0              # double 0.42201632516571053
	.quad	0x3fd57ae461d03f46              # double 0.33562573959442366
	.quad	0x3fe8bd4bca36c91c              # double 0.77310742850230296
	.quad	0x3fe345add9dc3746              # double 0.60225575018714816
	.quad	0x3fe719dba0b15932              # double 0.72190648446374994
	.quad	0x3fea658fb9480d9c              # double 0.8248976343897314
	.quad	0x3fd1e3b68bb6685c              # double 0.27952350276757953
	.quad	0x3fe3287196ffbf72              # double 0.59868697635645973
	.quad	0x3fe3bfa44342405e              # double 0.61714375626071294
	.quad	0x3fef0934acdd006c              # double 0.96987375032769085
	.quad	0x3fd3158612cc6428              # double 0.29818870387822694
	.quad	0x3fe8705639a235fe              # double 0.76371299034661866
	.quad	0x3fd9f6d3204e020e              # double 0.40568998484380436
	.quad	0x3fe83b4c19fb6510              # double 0.7572384364567899
	.quad	0x3f9ddae0ec70c880              # double 0.029155268126665579
	.quad	0x3fea138095a4f1fc              # double 0.81488064982801189
	.quad	0x3fe258d948789634              # double 0.57334579615116477
	.quad	0x3fe39d715d95a412              # double 0.61296909597615667
	.quad	0x3fe760bdfa07c8f2              # double 0.73055933794083061
	.quad	0x3fe2fc7cdba15109              # double 0.5933212556506372
	.quad	0x3fd14b1bbd2787ba              # double 0.27020925018416231
	.quad	0x3fefdf9f32fe162e              # double 0.99604759177663538
	.quad	0x3fe705ff89a66745              # double 0.7194822014309713
	.quad	0x3feb374ac39748e1              # double 0.85049951745375207
	.quad	0x3fe7119473edbcca              # double 0.72089598314587389
	.quad	0x3fc65a6124a06d28              # double 0.17463316238795668
	.quad	0x3fde07f182608ae2              # double 0.46923482639446779
	.quad	0x3fc08feeee3ac574              # double 0.12939249641707884
	.quad	0x3fe329405a959830              # double 0.59878556911713154
	.quad	0x3fe45b3374a36979              # double 0.63613293438838447
	.quad	0x3fe5de975eeb6e17              # double 0.68342178858751168
	.quad	0x3fbb30d84c1b6b60              # double 0.10621406419833823
	.quad	0x3fe1b0155d42c8a2              # double 0.55274456229223667
	.quad	0x3fdbd7841722106c              # double 0.43502905139053527
	.quad	0x3fd0db1539564252              # double 0.26337175940810653
	.quad	0x3fecd215e122255f              # double 0.90064519854892555
	.quad	0x3fe769345f54112c              # double 0.73159235590768423
	.quad	0x3fe3f934ede7990f              # double 0.62417074647672333
	.quad	0x3fe40177ef4773f5              # double 0.62517925962640553
	.quad	0x3fe291ff82c1a7f4              # double 0.58032203234074453
	.quad	0x3fe9be69bb127935              # double 0.80449377572566638
	.quad	0x3fbcd65b4fde3358              # double 0.11264582347776064
	.quad	0x3fbeb1490c5b1140              # double 0.11989265967992413
	.quad	0x3fc486506bd2f878              # double 0.16034894242142506
	.quad	0x3fb74826cc915b40              # double 0.090944695418653687
	.quad	0x3fd37fedbf3f1568              # double 0.30468314815910569
	.quad	0x3fb4174f1e4a7198              # double 0.078480667968000239
	.quad	0x3fe94d402c43634e              # double 0.79068001408732314
	.quad	0x3fea6ea4fe3acfb7              # double 0.82600640920872237
	.quad	0x3fd4a25ddaee83ba              # double 0.32241007213638861
	.quad	0x3fefb1b4c506c0bb              # double 0.99044264299120443
	.quad	0x3fcf65fa63f2b21c              # double 0.24529962425494112
	.quad	0x3fd0558fc8ce445e              # double 0.25522226915297164
	.quad	0x3fd2a41eadc5a9e2              # double 0.29126708002027446
	.quad	0x3fd28d8f3d50b850              # double 0.28989010799239612
	.quad	0x3fb271143cf08b08              # double 0.072037949445569294
	.quad	0x3fe33b3388b39c95              # double 0.6009767217591554
	.quad	0x3fee35ae7aaa9451              # double 0.94405292471186375
	.quad	0x3fd0e7b92142b47e              # double 0.2641432595072003
	.quad	0x3fce92e38cb94518              # double 0.23885769244456223
	.quad	0x3fe516e173dc9cdd              # double 0.65904305104495686
	.quad	0x3fe69dac324ec0f4              # double 0.70674714875897715
	.quad	0x3fb0bd1bf71eca10              # double 0.065385577995393129
	.quad	0x3fdaf1daa7ef4052              # double 0.42101160430775508
	.quad	0x3fe7d8c6dc832f5e              # double 0.74521201199375375
	.quad	0x3fed544a92aa75aa              # double 0.91653946538615583
	.quad	0x3feb9f86e2444697              # double 0.86322349732127435
	.quad	0x3fe337709c476e3e              # double 0.60051756404158829
	.quad	0x3fc21bdd1cb6ef64              # double 0.14147533323363881
	.quad	0x3fef2fdbef347e82              # double 0.97459217757928251
	.quad	0x3fed9e4d0d63683d              # double 0.92557385077385101
	.quad	0x3fa048273681d250              # double 0.031800485042286497
	.quad	0x3fe02a8d7849fa09              # double 0.50519441121997588
	.quad	0x3f9d34a5a1047720              # double 0.028521144821858191
	.quad	0x3fc6c56bb3b95f74              # double 0.17789980197516864
	.quad	0x3fef861e569f8157              # double 0.98512188833778224
	.quad	0x3fe838aa60a58ac4              # double 0.75691717983530582
	.quad	0x3feef2daf6a21551              # double 0.96714542551550597
	.quad	0x3fec5f6da40a7e39              # double 0.88664896048789565
	.quad	0x3fdae10b5a8be5a2              # double 0.41998561708859417
	.quad	0x3fe2b5c3a76e5f6a              # double 0.5846880216731567
	.quad	0x3fde1ba239090a84              # double 0.47043662614684245
	.quad	0x3fd163fdbb1bdd2c              # double 0.27172797462795262
	.quad	0x3fe12003d8794546              # double 0.53515808372518658
	.quad	0x3fc504236b23f508              # double 0.1641887925287977
	.quad	0x3fe4eeee9be605cb              # double 0.65416651200228537
	.quad	0x3fcd827d38960660              # double 0.23054471266736964
	.quad	0x3fef63c725b66eb6              # double 0.98092992177722382
	.quad	0x3fc1bcacdafc707c              # double 0.13857041065864795
	.quad	0x3fe5b4bcb92c847a              # double 0.67831264654900214
	.quad	0x3fd750e70cc3926a              # double 0.36431289907912989
	.quad	0x3fe99dd6b2c832e7              # double 0.80051741522183029
	.quad	0x3fe6332a46d7effb              # double 0.69374574505445652
	.quad	0x3fc6b99b4b77d718              # double 0.17753926453558999
	.quad	0x3fe47f84aaabb9da              # double 0.64056619009152915
	.quad	0x3fe0b00103922f3e              # double 0.52148485848872617
	.quad	0x3fbb6da947667a50              # double 0.10714204781695824
	.quad	0x3fd4f8c3558c93d6              # double 0.32768329004676156
	.quad	0x3fd5e3e1c0368bd8              # double 0.34203380366142033
	.quad	0x3fe2e2b24075dfc6              # double 0.59017288770609677
	.quad	0x3fe03c5bb2cdadc1              # double 0.50736794397874274
	.quad	0x3fdc0d97f68adb9e              # double 0.43832968784720971
	.quad	0x3fe09f6178bbab0c              # double 0.51945565777472913
	.quad	0x3fed0b58775004ff              # double 0.90763495734441324
	.quad	0x3fdda14fd744158e              # double 0.46297069570604144
	.quad	0x3fe41d4f55b551fc              # double 0.6285778688421142
	.quad	0x3fede922331a693a              # double 0.93470869046294713
	.quad	0x3fb7e71098dc4720              # double 0.093369519538353263
	.quad	0x3fee09461673bb15              # double 0.93863205323381982
	.quad	0x3fe5e1e3b3955f50              # double 0.68382439684772045
	.quad	0x3fdf480e554054e0              # double 0.48877294850656305
	.quad	0x3fe84abbb090dbdf              # double 0.75912270055311726
	.quad	0x3fca1b6fd57db994              # double 0.20396230625506162
	.quad	0x3fd93dd753b22c52              # double 0.39439948247372059
	.quad	0x3fe3c9d71e3eb5b1              # double 0.6183887091371415
	.quad	0x3feb4f7320a05dfd              # double 0.85344845173216266
	.quad	0x3fd968d7863fe58c              # double 0.39702404127418656
	.quad	0x3fdc7d262e477ec4              # double 0.44513849753819223
	.quad	0x3fe677494e553f6c              # double 0.70206132220662942
	.quad	0x3fea7fc057308034              # double 0.8280946448248927
	.quad	0x3fe7e1e4ea937769              # double 0.74632497611649484
	.quad	0x3fe4dbd28c23d8e3              # double 0.65183379527186636
	.quad	0x3fde093e1929f77a              # double 0.46931412179389265
	.quad	0x3fe57403e4b2b595              # double 0.67041201274484996
	.quad	0x3fda578494ed293e              # double 0.41159166854471951
	.quad	0x3fe01899f608e13f              # double 0.50300310186052133
	.quad	0x3fe23480af79e8ab              # double 0.56890901825615481
	.quad	0x3fdf16879f726f5e              # double 0.48575010844228028
	.quad	0x3fb2eb9794989240              # double 0.073907350328746624
	.quad	0x3fc0c54180e482e0              # double 0.13101977151475008
	.quad	0x3fb637663ec41800              # double 0.086782827686050723
	.quad	0x3fe52fa1d2cb3667              # double 0.66206446810401764
	.quad	0x3fd038c5d79e326c              # double 0.25346513801995374
	.quad	0x3fdb3cb7f57d8194              # double 0.42558096860559513
	.quad	0x3fce6fd9c275f6d0              # double 0.23778841014057273
	.quad	0x3fdc59b758fae772              # double 0.44297584237539589
	.quad	0x3fe13a56e1445ced              # double 0.53837150571317027
	.quad	0x3fde0a8c42531e38              # double 0.46939379193324582
	.quad	0x3fd1c5e23390bafe              # double 0.27770285640410453
	.quad	0x3fb73e75ca79dec0              # double 0.090796815807943965
	.quad	0x3feed8d3aebe3f31              # double 0.96396812562486478
	.quad	0x3fe14d974a555482              # double 0.54072155492998797
	.quad	0x3fc495ac4187517c              # double 0.16081765365255396
	.quad	0x3fc6d2d878c3dc30              # double 0.17830949684841491
	.quad	0x3fa5fa8dc849b370              # double 0.042927199076848832
	.quad	0x3fcee0da1c092ed0              # double 0.24123693818034164
	.quad	0x3fd658dfa5276e2e              # double 0.34917441490481138
	.quad	0x3fe45f8a5cd11d33              # double 0.63666265610019079
	.quad	0x3fee35aab91e8156              # double 0.94405113369070182
	.quad	0x3fe6279ba37902e6              # double 0.69233495643865406
	.quad	0x3fe2b4242759f1d6              # double 0.58448989568528975
	.quad	0x3feb5f277962ec0c              # double 0.85536550243648568
	.quad	0x3fe5ceec0a94f890              # double 0.68150903765469373
	.quad	0x3fd60530716acb4a              # double 0.34406672550101247
	.quad	0x3fd0e9696f934e72              # double 0.26424632926975911
	.quad	0x3fce22ac9c3347e0              # double 0.23543317439049272
	.quad	0x3febf5bf9ffea948              # double 0.87374860047320002
	.quad	0x3fee2a7184abddaf              # double 0.94268108284352603
	.quad	0x3f94accda2762ae0              # double 0.020190442124241481
	.quad	0x3fef7b154745957b              # double 0.98377479477191742
	.quad	0x3fbd06641edff5e0              # double 0.11337877038746269
	.quad	0x3fd876183bad8af2              # double 0.38220792606277521
	.quad	0x3fc2509feb5e04b0              # double 0.1430854701284594
	.quad	0x3fd5ac3514153210              # double 0.33863570176325286
	.quad	0x3fe8f0fa891f8765              # double 0.77941633970133906
	.quad	0x3fd199b8fc2deec6              # double 0.27500748278519571
	.quad	0x3fda916a531ad5b0              # double 0.41512544742303259
	.quad	0x3fe5b6ee2bd28d12              # double 0.67858036574435432
	.quad	0x3fc183b9e2f2160c              # double 0.13683246213274491
	.quad	0x3fe64b9a7577abf4              # double 0.6967289251600719
	.quad	0x3fe2bc71dd0d3c77              # double 0.5855035130897609
	.quad	0x3fee169cff016ac8              # double 0.9402604084565036
	.quad	0x3fd08c30b75461bc              # double 0.25855653670580714
	.quad	0x3fee8b48a34d6940              # double 0.95450240988729007
	.quad	0x3fe123b02f15b2d8              # double 0.53560647197954392
	.quad	0x3fcae82c33122008              # double 0.21021034711543529
	.quad	0x3fcf50723b0edb6c              # double 0.24464252361004968
	.quad	0x3fe224a7e83b56b4              # double 0.56697459562084029
	.quad	0x3fdc7fcfd6a551ec              # double 0.44530101739408567
	.quad	0x3fec3f2a4530d30b              # double 0.882710585725904
	.quad	0x3fdc6a1fa51c9904              # double 0.44397727131071485
	.quad	0x3fdd8ae3f18f50a4              # double 0.46160219755007348
	.quad	0x3fefbfce15875fa4              # double 0.99216369824261052
	.quad	0x3fd7ba71c7f23878              # double 0.37075466657632417
	.quad	0x3fedd73c47f78254              # double 0.93252386146566346
	.quad	0x3fe70c7752569755              # double 0.72027174073876188
	.quad	0x3fe90e4b4b4803b2              # double 0.7829948873842254
	.quad	0x3fb2389722e4a9e8              # double 0.071176000613071388
	.quad	0x3fcb17f67c003e98              # double 0.21166878752454887
	.quad	0x3fd5257aee802c04              # double 0.33041260996895994
	.quad	0x3febf7c8d15bcffa              # double 0.87399712458000001
	.quad	0x3fece40b88e1ae2f              # double 0.90283753142052159
	.quad	0x3fd07e3082bc4862              # double 0.25770199553620021
	.quad	0x3fbeca1368a3a560              # double 0.12027093224209784
	.quad	0x3fe7819a98113989              # double 0.73457078648225249
	.quad	0x3feef64fdc360c70              # double 0.96756737718568608
	.quad	0x3fea022439cf132a              # double 0.81276141444013672
	.quad	0x3fec58ed0b69a2b5              # double 0.88585521916419074
	.quad	0x3fd0b7ec4a73a81e              # double 0.26122576971704514
	.quad	0x3fc45fb3f4afe250              # double 0.15917062232598989
	.quad	0x3fd35a736399c686              # double 0.30239567495946351
	.quad	0x3fe0e83fbda3d8fc              # double 0.52835070647304816
	.quad	0x3fb0226bcf1b4e18              # double 0.063025224745893005
	.quad	0x3feee11dd0848332              # double 0.96498003698443413
	.quad	0x3fed26f03a405d39              # double 0.91100322129469824
	.quad	0x3fdf7000d08d7654              # double 0.49121113172973208
	.quad	0x3fe59800c4b3b1a8              # double 0.67480505388589496
	.quad	0x3fec746173befefe              # double 0.88920662504821713
	.quad	0x3fd261c9c09465b2              # double 0.28721851164444978
	.quad	0x3fc0008543beed04              # double 0.12501588638210859
	.quad	0x3fd4cfc61c4ae492              # double 0.32518151057190281
	.quad	0x3fd3a1189d23aa6a              # double 0.30670752854954364
	.quad	0x3fe9dd890e872c1b              # double 0.80829289281371375
	.quad	0x3feb1b6e17d48bdf              # double 0.84709839491221917
	.quad	0x3fe099eb39c68864              # double 0.5187889221599673
	.quad	0x3fe72e837ea94ba7              # double 0.72442793596780042
	.quad	0x3fc4a90ea5f2b380              # double 0.16140921690876198
	.quad	0x3fbe6f3d022254c0              # double 0.118884861966154
	.quad	0x3fefff890d2ad0c1              # double 0.99994328090408413
	.quad	0x3fc9542ac7145cfc              # double 0.19788107605629779
	.quad	0x3fdeba17843227d6              # double 0.48010814580686423
	.quad	0x3fdd6ad2c8d06e28              # double 0.45964498148689126
	.quad	0x3fc6cea621bc7778              # double 0.1781814255454568
	.quad	0x3feb5c0531c17608              # double 0.8549829456130178
	.quad	0x3fb7f27a1ede9700              # double 0.09354365590715119
	.quad	0x3fee1d4ab0e6cfb6              # double 0.94107565451712705
	.quad	0x3fedee81b125a4d3              # double 0.93536457633049463
	.quad	0x3fcdac102b275030              # double 0.23181345088107852
	.quad	0x3fbefbb37fa1dd18              # double 0.12102815500280817
	.quad	0x3fe29443cb597c4a              # double 0.58059873310765764
	.quad	0x3fdba4b778b34042              # double 0.4319285086357959
	.quad	0x3fe1f80ddba562ec              # double 0.56153004550568886
	.quad	0x3fe14fb933fb4b21              # double 0.54098186638507084
	.quad	0x3fee610330742749              # double 0.94934234107606941
	.quad	0x3fd4916978649fb6              # double 0.32137524373183213
	.quad	0x3fe7709f4344f63d              # double 0.73249781740714293
	.quad	0x3fa097cf860271b0              # double 0.032408223255717572
	.quad	0x3fd38f828b848d70              # double 0.30563415169509422
	.quad	0x3f90b8bb0702bfe0              # double 0.016329691222097042
	.quad	0x3fe11d3e9debab27              # double 0.5348198971163115
	.quad	0x3f70eef81d010580              # double 0.0041341487813623123
	.quad	0x3fbfc7b30600f540              # double 0.12414091965270746
	.quad	0x3fd510577b50327a              # double 0.32912241976081413
	.quad	0x3fd5c3c58660c270              # double 0.34007394907806709
	.quad	0x3fcff170d14542f4              # double 0.24955568521774973
	.quad	0x3fda7ce023344f5e              # double 0.41387179792331164
	.quad	0x3fe0d83767517c9f              # double 0.52639360598904605
	.quad	0x3fd8f22308bc17f0              # double 0.38977886059762934
	.quad	0x3fe55c462a8a16c1              # double 0.66751392658689934
	.quad	0x3fe64d4210716f02              # double 0.69693091594260204
	.quad	0x3fd61793940bd8d4              # double 0.34518899400371805
	.quad	0x3fed8f2caa4e967f              # double 0.92372735274393836
	.quad	0x3fe2ee03d044baeb              # double 0.5915545528167433
	.quad	0x3fe93b43722573d0              # double 0.78848430914114864
	.quad	0x3fc1b86e9e138794              # double 0.13844092100685812
	.quad	0x3fe313b7f2beebd6              # double 0.59615704928671209
	.quad	0x3fe45a725f65df3f              # double 0.63604086525354109
	.quad	0x3fc6fa2bc66a6f08              # double 0.17950961292523737
	.quad	0x3fccd16997338478              # double 0.22514076121209192
	.quad	0x3fc14707b51b4690              # double 0.13498016684620895
	.quad	0x3feb5bb7e064241c              # double 0.85494607759858665
	.quad	0x3fed62510c81d036              # double 0.91825153773107249
	.quad	0x3fd4e49d279711fe              # double 0.32645348421308984
	.quad	0x3fb5de92579e6d18              # double 0.085427423850365947
	.quad	0x3fe1a8e145afe112              # double 0.55186523066280047
	.quad	0x3fd27cb136c5e490              # double 0.2888606104748499
	.quad	0x3fcd05db91a2e724              # double 0.22674126254224192
	.quad	0x3fea4f4a8d33db8d              # double 0.82217910364748692
	.quad	0x3feeaa4c97c6052d              # double 0.95828847544922768
	.quad	0x3fcc088247786150              # double 0.21900967111356318
	.quad	0x3fd936bd4db50088              # double 0.39396603191927015
	.quad	0x3fe520da3783c835              # double 0.66026030390481216
	.quad	0x3fdc59c1fb9a51fe              # double 0.44297837801539675
	.quad	0x3fcc4421f65468c8              # double 0.22082924392527148
	.quad	0x3fbf879e62e395a0              # double 0.12316312708170196
	.quad	0x3fe7a5f00da4c8fe              # double 0.73900606789382528
	.quad	0x3fe29bd93afda6eb              # double 0.5815244819798101
	.quad	0x3f7c4f2b33801580              # double 0.0069114387079073358
	.quad	0x3fb04d8c3c1ce9b0              # double 0.06368328540421575
	.quad	0x3fe17f4af36a06b4              # double 0.54678866903142032
	.quad	0x3fe0ee6826de1b36              # double 0.52910239783600477
	.quad	0x3fefe015f9b275c2              # double 0.99610422867743176
	.quad	0x3fe8b75487a35b88              # double 0.77237917415446677
	.quad	0x3fc21cd19d15c664              # double 0.14150448007744665
	.quad	0x3fc65ac41fb741bc              # double 0.17464496182084399
	.quad	0x3fcaa193ca5d3c60              # double 0.20805594807686401
	.quad	0x3fcf851825642bd8              # double 0.24624921632525232
	.quad	0x3fc39ed0422c70c4              # double 0.15328410369045831
	.quad	0x3fc474da473c2e9c              # double 0.15981605985904401
	.quad	0x3feb2f24f339391a              # double 0.84950492386431908
	.quad	0x3fd82799d1fd0034              # double 0.37741704470318216
	.quad	0x3fef0b66c470e81c              # double 0.97014177672759016
	.quad	0x3f93aaa69172a4a0              # double 0.019205668094092077
	.quad	0x3fe86d6c91d4a630              # double 0.76335743410635892
	.quad	0x3fd26bf4591e9e8a              # double 0.28783901885115226
	.quad	0x3fbb40608f5e1580              # double 0.10645106792624937
	.quad	0x3fc05440591a62e0              # double 0.12757114744888209
	.quad	0x3fefa1fd04c085ac              # double 0.98852396896488903
	.quad	0x3fd05df77a81c970              # double 0.25573527301380405
	.quad	0x3fed95b71505c37e              # double 0.92452577691993532
	.quad	0x3fe1058412b41f0e              # double 0.5319233289055505
	.quad	0x3fea25d1062f8fb3              # double 0.81711627205048953
	.quad	0x3fe3642c884bf51a              # double 0.60597826595736426
	.quad	0x3fec15b6192c0065              # double 0.87765030781157505
	.quad	0x3fe4d1f2ce5999cb              # double 0.65062847426161718
	.quad	0x3fe546ea8d21582b              # double 0.66490676464559806
	.quad	0x3fed6a4f62b4e2cb              # double 0.91922730711584089
	.quad	0x3fdbeb0d7ca954a2              # double 0.4362214772602987
	.quad	0x3fe3cc629cb0e5ae              # double 0.61869936565124362
	.quad	0x3fdc74ef2333ab5c              # double 0.44463709294966747
	.quad	0x3fcae68d64a7f718              # double 0.21016089835023233
	.quad	0x3fe48088c19e74c2              # double 0.64069021049694919
	.quad	0x3fe7f549ad265a05              # double 0.74869235819170454
	.quad	0x3fe79961f2f705ee              # double 0.73747346357430188
	.quad	0x3fd9dc7ffb769d3e              # double 0.40408324772802817
	.quad	0x3fcbca05165e0624              # double 0.21710265724327471
	.quad	0x3fd7944ea0a2b310              # double 0.36842694937767906
	.quad	0x3febabdff363e1a1              # double 0.86473081147328312
	.quad	0x3fde4a35b8594112              # double 0.47327940943525093
	.quad	0x3fe55f0d9374af96              # double 0.66785315322839511
	.quad	0x3fcc64191a7e98b8              # double 0.22180475038221004
	.quad	0x3fe7c47394a2a67f              # double 0.74273089437811268
	.quad	0x3fe24c71db84b4df              # double 0.57183163523373171
	.quad	0x3fd9344d23b4c992              # double 0.3938172196095816
	.quad	0x3fe003c439112a46              # double 0.50045977731617408
	.quad	0x3fd5ea5b0144e3a6              # double 0.34242892383513845
	.quad	0x3fe671d69040daae              # double 0.7013962571571335
	.quad	0x3fe69530026ddcc2              # double 0.70571136927073774
	.quad	0x3fea8d8430420ad8              # double 0.82977494645487138
	.quad	0x3fdcb0015dd1336c              # double 0.44824251329264686
	.quad	0x3fe5b77d6332e5d5              # double 0.67864865660447526
	.quad	0x3fd848a789a2614a              # double 0.37943447533463781
	.quad	0x3fd5bdd259bb875c              # double 0.33971079600279608
	.quad	0x3fb461e02760d6d8              # double 0.07961846314796206
	.quad	0x3fefc4132137bdb0              # double 0.9926849030288647
	.quad	0x3fecf64dc20a1537              # double 0.90506637476270313
	.quad	0x3fd00f42bbb488fa              # double 0.2509314377840749
	.quad	0x3fef8d2782f44e61              # double 0.98598075463310064
	.quad	0x3fc75f28a85bde2c              # double 0.18259151669165996
	.quad	0x3fe3790dfb478f01              # double 0.6085271747401465
	.quad	0x3fb180b8a550ed98              # double 0.068370380745298553
	.quad	0x3fe2aadc8735dd2f              # double 0.583357109148812
	.quad	0x3feda8722a9beab4              # double 0.92681225130157551
	.quad	0x3fe8377af08e387b              # double 0.75677248939042785
	.quad	0x3fba41cdbcc1f830              # double 0.10256658418981668
	.quad	0x3fc483267a887cfc              # double 0.16025238974632561
	.quad	0x3fe9e3a5acaa1e65              # double 0.80903896068134584
	.quad	0x3feac6a253773934              # double 0.83674732496164105
	.quad	0x3fe662fa4ec0f474              # double 0.69958224660480406
	.quad	0x3fc17f9608b6da58              # double 0.13670611787320541
	.quad	0x3fe27b19b1df4a06              # double 0.57752690067928891
	.quad	0x3fdd83f7ddc1059a              # double 0.46117970138228659
	.quad	0x3fe8e8775bd658a6              # double 0.77837722718210922
	.quad	0x3fe73ce8c928c1da              # double 0.72618521965892602
	.quad	0x3fcd5cf58efdc0f4              # double 0.22939939004891807
	.quad	0x3fdf51d42127e188              # double 0.48936942327375066
	.quad	0x3fe5f76be665b649              # double 0.68645281791186463
	.quad	0x3fa1f7eae6bb6e60              # double 0.035094586053415311
	.quad	0x3fe0a942cd42c06e              # double 0.52066173639287938
	.quad	0x3fe4cc65829ea28c              # double 0.64995074760106908
	.quad	0x3fe1553d4048ee13              # double 0.54165518336907537
	.quad	0x3fe6acf97be07a64              # double 0.70861505694103899
	.quad	0x3fc2f2af60fbc9b4              # double 0.1480311606934045
	.quad	0x3fc94bc2fb6b4cbc              # double 0.19762456203770806
	.quad	0x3fe283dc0a4df9ad              # double 0.57859613430610113
	.quad	0x3fdf0e302b87c840              # double 0.48524097682014045
	.quad	0x3feb1102b5e5419f              # double 0.84582648779364777
	.quad	0x3fed04acbc20f3cb              # double 0.90682064765825865
	.quad	0x3fecf83ffde3aee1              # double 0.90530395114680229
	.quad	0x3fea2b16ac569374              # double 0.81775983485986936
	.quad	0x3fecf89f574f3d35              # double 0.90534941723482254
	.quad	0x3fe1964be2b65f68              # double 0.54959673194660486
	.quad	0x3fe3cb1a03be3a5a              # double 0.61854267817563913
	.quad	0x3fe33a1a7dbee5b6              # double 0.60084271011071766
	.quad	0x3feca0fe5369e411              # double 0.89465252200818857
	.quad	0x3fe323d5a52ac77b              # double 0.59812433489990668
	.quad	0x3fe5b3eff11329b3              # double 0.67821499905521987
	.quad	0x3fcef0f60352c094              # double 0.24172854578273884
	.quad	0x3fb738dbbbbc6688              # double 0.090711339315385442
	.quad	0x3f8aae6a797bc7c0              # double 0.013027984459288322
	.quad	0x3fb79aca5f9d5640              # double 0.092205665915877866
	.quad	0x3fea1fab3f59b300              # double 0.81636583684084485
	.quad	0x3fe404e044309d14              # double 0.62559521978701804
	.quad	0x3fcfb166a15428cc              # double 0.24760134580021143
	.quad	0x3fab936048a09bd0              # double 0.053858765473982495
	.quad	0x3fcf1bc61300c5dc              # double 0.24303508689767639
	.quad	0x3f8c3dd0e1d27bc0              # double 0.013789779559656767
	.quad	0x3fe88ced68839ea1              # double 0.76720304882924861
	.quad	0x3fe1792e67b60096              # double 0.54604263549846865
	.quad	0x3feda7d2aa4c381f              # double 0.92673619519496586
	.quad	0x3fbf369d9e5dac88              # double 0.1219271194110424
	.quad	0x3fd5b26d1eda0490              # double 0.33901527417044353
	.quad	0x3fd6a2a859e0a044              # double 0.35367783333868297
	.quad	0x3fe84f67ff39b381              # double 0.75969314430913937
	.quad	0x3fee3a0b6064c160              # double 0.94458550288076637
	.quad	0x3fbb371e119e1490              # double 0.10630977563967492
	.quad	0x3fc407a07935c64c              # double 0.15648275297603431
	.quad	0x3fd5df0e4de976fa              # double 0.34173925026503549
	.quad	0x3faa95804369e0e0              # double 0.051921852330396367
	.quad	0x3fe892c3af0bcb6d              # double 0.76791557491956797
	.quad	0x3fd92a358b8503fc              # double 0.39320124268493806
	.quad	0x3fac137b41db75f0              # double 0.054836131848542524
	.quad	0x3fd7982187e4920c              # double 0.36866033812319254
	.quad	0x3fce90b4b2f15fe4              # double 0.23879107224888607
	.quad	0x3fda579af2480eaa              # double 0.41159700069713756
	.quad	0x3fc808230cdf524c              # double 0.18774831894428912
	.quad	0x3fe91954a975fb69              # double 0.78434212777925183
	.quad	0x3fe1df289db84d3c              # double 0.55849104695008789
	.quad	0x3fe4dd854faa41a5              # double 0.65204110679228633
	.quad	0x3fd643dcfca773ec              # double 0.34789204285863096
	.quad	0x3fe1f6b3a70e05a0              # double 0.56136496189008156
	.quad	0x3fb29850d66a3848              # double 0.072636654231446163
	.quad	0x3fd83e5c6c0c291a              # double 0.37880621482385524
	.quad	0x3fe3478560d4d5d9              # double 0.60248059189205627
	.quad	0x3fb16775a39ab168              # double 0.067984917108963594
	.quad	0x3f88f4714a892980              # double 0.012184987151290683
	.quad	0x3fc2f6c39a531a94              # double 0.14815564189321562
	.quad	0x3fef3d46e1f39f45              # double 0.9762300885313172
	.quad	0x3fe66cda3b865d17              # double 0.70078765512417618
	.quad	0x3fd451fc0f489c08              # double 0.31750394337217402
	.quad	0x3fecf55c97158593              # double 0.90495137699706374
	.quad	0x3fe7beb98dbedcfc              # double 0.74203183827094632
	.quad	0x3fe6d2a3e3150358              # double 0.71321291305512613
	.quad	0x3fdd28093e8c45b2              # double 0.455568610269519
	.quad	0x3fec6a13ab90f4f3              # double 0.88794883259802615
	.quad	0x3feed5d5c0db9620              # double 0.96360290210276744
	.quad	0x3fd47b2f261dbbb2              # double 0.32001856539039431
	.quad	0x3fc3c8a30af7937c              # double 0.15456045184614797
	.quad	0x3fe2e23cbdf2c67c              # double 0.5901168546608484
	.quad	0x3fc0c139b4a79090              # double 0.13089677163145952
	.quad	0x3fecf1898b7bd886              # double 0.90448453181194632
	.quad	0x3fe126365d3b4e2f              # double 0.53591459473904546
	.quad	0x3fcd1551b5c155f8              # double 0.22721310972944742
	.quad	0x3fe4a7a060429d5a              # double 0.64546221543143223
	.quad	0x3fd4514f02ccd772              # double 0.31746268533185351
	.quad	0x3fd50fbd89aa7518              # double 0.32908571666651332
	.quad	0x3fd08418a4dd29c6              # double 0.25806251621238763
	.quad	0x3fd022dd01266aca              # double 0.25212788688956478
	.quad	0x3fed4e6317be6b3b              # double 0.91581873547998016
	.quad	0x3fc50cae8ca070f8              # double 0.16444951883830305
	.quad	0x3fdf1dab4444fd9a              # double 0.48618585268919789
	.quad	0x3fe64fac08c63b83              # double 0.69722558702220316
	.quad	0x3f794a0a318a9900              # double 0.0061741254982392579
	.quad	0x3fe22618a4225730              # double 0.56715042169046193
	.quad	0x3fe23a4458266f7b              # double 0.5696126672441858
	.quad	0x3fd231d2c5f6caa6              # double 0.28429097492623112
	.quad	0x3fe1fe377fc2f095              # double 0.56228232339300865
	.quad	0x3fe9d657e7fbcd6f              # double 0.80741496381089728
	.quad	0x3fabfd17a22dfc80              # double 0.054665316150015464
	.quad	0x3fed97e5b209064c              # double 0.92479214451322766
	.quad	0x3fc8237df2e6f318              # double 0.18858312950569522
	.quad	0x3fe7d6c52dbe2f57              # double 0.74496706899797516
	.quad	0x3fd00a242cadc9ae              # double 0.25061897624177731
	.quad	0x3fe6c784df3794d8              # double 0.71185535046665915
	.quad	0x3fd3206065dcd2b2              # double 0.29885110805052328
	.quad	0x3fc4ed39ea431154              # double 0.16348957003186604
	.quad	0x3fd56f2db77baaac              # double 0.33491080206173751
	.quad	0x3fe19d58dd992dde              # double 0.55045741349152499
	.quad	0x3febb41a1eec9907              # double 0.86573511161694305
	.quad	0x3fc9e764a5ee8d4c              # double 0.20237405874386594
	.quad	0x3fdbe053a01887f2              # double 0.43556681284292076
	.quad	0x3fbf4fcba1a0b3e8              # double 0.12231133171071884
	.quad	0x3fbc4b36f9414730              # double 0.11052268586470571
	.quad	0x3fe8360eb0034bb7              # double 0.75659880044474093
	.quad	0x3fca0e8f87154e48              # double 0.20356935592518455
	.quad	0x3fec71061d13e044              # double 0.88879686049677575
	.quad	0x3fd66bb1fae01846              # double 0.35032319545314683
	.quad	0x3fd651a468d474ba              # double 0.34873304593368071
	.quad	0x3fac43038586ebe0              # double 0.055198774385153859
	.quad	0x3fb407fdc36d8270              # double 0.078246937000139515
	.quad	0x3fd90cefd9f21c30              # double 0.3914146068931954
	.quad	0x3fe2dd7e76135a0a              # double 0.58953784047736346
	.quad	0x3fb2991ee6065810              # double 0.072648936422723631
	.quad	0x3feabd55c4d56edb              # double 0.83561218685232619
	.quad	0x3fd362a47dab3796              # double 0.30289566299767878
	.quad	0x3fe9476a0055f467              # double 0.78996753755167226
	.quad	0x3fefe348ffaa2c1e              # double 0.99649476942557036
	.quad	0x3fe4bcd5f90991f2              # double 0.64805124893297106
	.quad	0x3fe4030424fd8150              # double 0.62536818718585074
	.quad	0x3fd6324bd478196c              # double 0.34681983708323716
	.quad	0x3fe5488f5e93fed7              # double 0.66510742637907583
	.quad	0x3fb9f062a8ffc8d8              # double 0.10132423997837081
	.quad	0x3fed394bd3f7195c              # double 0.913244165415374
	.quad	0x3fb9be4a4ccc4af8              # double 0.10055984854652056
	.quad	0x3fcf2a72aff447e4              # double 0.2434829100753283
	.quad	0x3fc40c00971b377c              # double 0.15661628130186134
	.quad	0x3fd3b09f62fdf2e4              # double 0.30765518824754978
	.quad	0x3fed7a6f68616730              # double 0.92119570147335672
	.quad	0x3fd2113d1bbebbd6              # double 0.28230216702916999
	.quad	0x3fe7e3d823b2c65e              # double 0.74656302425701049
	.quad	0x3fd139ae459424de              # double 0.2691455535392161
	.quad	0x3fe8fc3f1cab53f7              # double 0.78079181289160615
	.quad	0x3fefc6cf9b318f5a              # double 0.9930189162373424
	.quad	0x3fc716e38549ba98              # double 0.18038600929454129
	.quad	0x3fd49af8755c6412              # double 0.32195865117097455
	.quad	0x3fc0d9201743dbf4              # double 0.13162613998403538
	.quad	0x3feb0e5805602739              # double 0.84550095605775433
	.quad	0x3fd0a91948850b16              # double 0.26032096940996163
	.quad	0x3fecccdcd5ea91a6              # double 0.90000764637493513
	.quad	0x3fe80e4207ad94b4              # double 0.75174046992892451
	.quad	0x3fd94477a31b5cca              # double 0.39480391434103679
	.quad	0x3fe54cf41ea503be              # double 0.66564374909659541
	.quad	0x3fd5b213fe4880d6              # double 0.33899402458520222
	.quad	0x3fc1554838821188              # double 0.13541510352309793
	.quad	0x3fc40ddf0d750aac              # double 0.15667331845368915
	.quad	0x3fefba0759680162              # double 0.9914585825172646
	.quad	0x3fe40733cdc7e60c              # double 0.62587919417927784
	.quad	0x3fd66f30dee9fbf8              # double 0.35053655404038819
	.quad	0x3feaaeb8ac25c9fb              # double 0.8338282930620261
	.quad	0x3fe11976a574f867              # double 0.53435833278468869
	.quad	0x3fe5ef7bd29b1318              # double 0.68548384794175643
	.quad	0x3faa56f0138bf790              # double 0.051444532762601303
	.quad	0x3fec029f761833af              # double 0.87532017770137382
	.quad	0x3fdd349f63848b26              # double 0.45633682936220266
	.quad	0x3fd83c6a25b39af4              # double 0.37868741685672025
	.quad	0x3fec4ded95a6ab1e              # double 0.88451270321579378
	.quad	0x3fd957fb8c847a04              # double 0.39599503252421209
	.quad	0x3fed01332f00e04c              # double 0.90639647655826527
	.quad	0x3fc8bbcdce60cb78              # double 0.19323132111602681
	.quad	0x3fe9a120fc2e1148              # double 0.80091904882332532
	.quad	0x3fe7fe4a6d2653c6              # double 0.74979134863189567
	.quad	0x3fc09f9d22447508              # double 0.12987102673734108
	.quad	0x3fdc12cc833dd70a              # double 0.43864739243086659
	.quad	0x3fcd29142a2760ec              # double 0.22781612451831934
	.quad	0x3fd9d14bc150cec8              # double 0.40339940908891636
	.quad	0x3fdc3211ffa32780              # double 0.44055604900915313
	.quad	0x3fc40fd50acb3514              # double 0.15673316027679418
	.quad	0x3fe667f7e3c85c9c              # double 0.70019144524384869
	.quad	0x3fe72e16ba0a38d9              # double 0.72437607131885351
	.quad	0x3fd0fa5add11d7e0              # double 0.26528045262182154
	.quad	0x3fdaa058cd53fcb4              # double 0.4160367970616321
	.quad	0x3fd2b1e944f1de9e              # double 0.29210883839503221
	.quad	0x3fddc06a7bb05216              # double 0.46486913756351222
	.quad	0x3fdea2fe1e19c81c              # double 0.47869828166506223
	.quad	0x3feaf90b0564110f              # double 0.84290076306254658
	.quad	0x3fde5f000bb885e2              # double 0.47454835075958901
	.quad	0x3fe41d8321d98977              # double 0.62860256778030432
	.quad	0x3fe2405fd11bce79              # double 0.57035818902518465
	.quad	0x3fa3f378b7ab91c0              # double 0.038966915531804869
	.quad	0x3f9bd54e2e862860              # double 0.02718088301620758
	.quad	0x3fb8e566994bc390              # double 0.097250378061074949
	.quad	0x3fe731f907e7a631              # double 0.72485019248887828
	.quad	0x3fd9c94dd223c024              # double 0.40291162034464123
	.quad	0x3fcdb7eed31023c4              # double 0.23217568689167767
	.quad	0x3fd597c23579f84e              # double 0.33738761160191622
	.quad	0x3fee4de0cc73fffe              # double 0.9470066064095588
	.quad	0x3fef30bbba24b62a              # double 0.97469889026769363
	.quad	0x3fed99853b6dadb5              # double 0.92499028784862125
	.quad	0x3fbf8203cfe3ad80              # double 0.12307761979507426
	.quad	0x3fe7f534b7ded0a4              # double 0.74868236457998138
	.quad	0x3fad413df84f5de0              # double 0.057138382493288509
	.quad	0x3fe93a512834dc9c              # double 0.78836877682524031
	.quad	0x3fd12fbe07295460              # double 0.26853895854339349
	.quad	0x3fc1b58db32eaf68              # double 0.13835307358874194
	.quad	0x3fdafb8064cca27c              # double 0.42160043567358918
	.quad	0x3fed3110056f5b40              # double 0.91223908483048177
	.quad	0x3fdf08e9077a3054              # double 0.48491883974270888
	.quad	0x3fd498b0aabfe6d6              # double 0.32181946444289389
	.quad	0x3fc4a0b51ceb4e5c              # double 0.16115440284794402
	.quad	0x3fd477d9d65d007a              # double 0.31981512006678481
	.quad	0x3fd11983039e7bf6              # double 0.26718211511064227
	.quad	0x3fe77a8728a00afc              # double 0.7337070268116288
	.quad	0x3fe62d701ab059de              # double 0.69304661953611535
	.quad	0x3feb44d9bfd1d9dd              # double 0.85215461220542077
	.quad	0x3fd0392859d5ca22              # double 0.25348862431488517
	.quad	0x3febd96bc9a76222              # double 0.87029065499797675
	.quad	0x3fc5fd43b32e7560              # double 0.17179151772590284
	.quad	0x3fe8d26d55282936              # double 0.77568689949229142
	.quad	0x3fedfe5eca6a6264              # double 0.93730105909623917
	.quad	0x3fea01dd05c32e95              # double 0.81272746205782431
	.quad	0x3fed744118622d11              # double 0.9204411960830915
	.quad	0x3fe713e0594611ff              # double 0.72117631374618429
	.quad	0x3fc192a1362457c0              # double 0.13728728431368431
	.quad	0x3fd40a530952f41e              # double 0.31313014898825198
	.quad	0x3fe83716d57a4820              # double 0.75672475523811399
	.quad	0x3fb416b27a140738              # double 0.078471331409699085
	.quad	0x3fe9acdfed393b80              # double 0.80235287029960034
	.quad	0x3fec1491ffb035a3              # double 0.87751102389454549
	.quad	0x3fdeaeb176e2c99e              # double 0.47941242799711314
	.quad	0x3fe335b24681cde6              # double 0.60030473490627112
	.quad	0x3fb996e78a0686c0              # double 0.099958869168882636
	.quad	0x3fe71e50d62cd49c              # double 0.72245065527990304
	.quad	0x3fd40c623cc46158              # double 0.31325584348953361
	.quad	0x3fc2a7c33fc6a5c4              # double 0.14574471105633624
	.quad	0x3fe87ea631961666              # double 0.76546010670490428
	.quad	0x3fec85ea1ea31666              # double 0.8913469885234917
	.quad	0x3fc671d722582284              # double 0.1753491323181785
	.quad	0x3fca177c5affc364              # double 0.20384172862352579
	.quad	0x3feb354971856b0a              # double 0.85025474712469529
	.quad	0x3fb5fe0e5c235108              # double 0.085907838339441267
	.quad	0x3fe393c78a1f4b90              # double 0.61178948380471532
	.quad	0x3fd97f4a459a2d48              # double 0.39839417264075339
	.quad	0x3fc92b99edaefb3c              # double 0.19664310556069065
	.quad	0x3fedfca20f85e5c8              # double 0.93708899528353928
	.quad	0x3fe5f524c0fd7199              # double 0.68617475217210988
	.quad	0x3fd4f7adaceda630              # double 0.32761709105998005
	.quad	0x3fe07d59cde1e88a              # double 0.51530161105553529
	.quad	0x3fdbbcc2b8c15494              # double 0.43339603464603127
	.quad	0x3fcba076b6137468              # double 0.2158344639819092
	.quad	0x3fe52c1e765ae262              # double 0.66163561931814407
	.quad	0x3fe66fb0abbd7e0a              # double 0.7011340479184025
	.quad	0x3fea77d4913e06c9              # double 0.82712772719988792
	.quad	0x3fe79af98eb0faf3              # double 0.73766782636070471
	.quad	0x3fd7a990c262c774              # double 0.36972445471757642
	.quad	0x3fd6b69f44a2dc1a              # double 0.35489637091399262
	.quad	0x3fde991d5d62c646              # double 0.47809538001738294
	.quad	0x3fdb0456cd34673a              # double 0.42213983573457237
	.quad	0x3fc0d9621512d854              # double 0.13163400677666692
	.quad	0x3feae9cb24711c31              # double 0.84103924863382507
	.quad	0x3fe286ae9dd252c0              # double 0.57894068550611877
	.quad	0x3fe010968617df41              # double 0.50202490034187275
	.quad	0x3fe161eef03a5ca0              # double 0.54320475501562626
	.quad	0x3fc7d258dac1b69c              # double 0.18610678369025357
	.quad	0x3fdb18bbd4a99d9c              # double 0.42338462608173599
	.quad	0x3fb49af8f8e468f8              # double 0.080489693417266639
	.quad	0x3fe80e2c24c573e1              # double 0.75173003370184344
	.quad	0x3fe5f5cbb22a4734              # double 0.68625435636406573
	.quad	0x3fd87a0d9cc6899a              # double 0.3824495345126252
	.quad	0x3fe9638f3610504f              # double 0.79340324935265893
	.quad	0x3fef2e2c8d8d6efb              # double 0.97438647887199125
	.quad	0x3fc7ca9601b0eca0              # double 0.18586993296216736
	.quad	0x3fd90071068346b2              # double 0.39065194736495379
	.quad	0x3fe059919b741008              # double 0.5109336887549043
	.quad	0x3feec4846a1f5054              # double 0.96148892142310637
	.quad	0x3fe32d07b863ef00              # double 0.59924684537642747
	.quad	0x3fa75ca9872147b0              # double 0.045628831620560972
	.quad	0x3fe3a11ad6aaefa2              # double 0.61341611792839879
	.quad	0x3fb3b5f50efa6f78              # double 0.076995197445681174
	.quad	0x3fd5344d3f568f5c              # double 0.33131724534381646
	.quad	0x3fe1b919b3772235              # double 0.55384526302174797
	.quad	0x3fdc7d67103792e4              # double 0.44515396674823493
	.quad	0x3feb7e422bc856c5              # double 0.85916241217884048
	.quad	0x3fc3c03314137404              # double 0.15430296402237798
	.quad	0x3fec1b9eca859657              # double 0.87837161593479152
	.quad	0x3fae720db1bcca40              # double 0.059463909098117274
	.quad	0x3fb5bb4b0e4df260              # double 0.084889117233566846
	.quad	0x3fcfe23354d6304c              # double 0.24909059183517213
	.quad	0x3fd33430ac47dc88              # double 0.30006043266571014
	.quad	0x3fc32d0eb44e3f18              # double 0.14981254390703991
	.quad	0x3fe3d9941cfe69d2              # double 0.62030988371707907
	.quad	0x3feda3e3b077fce0              # double 0.92625603167098446
	.quad	0x3fd804e5ce54b500              # double 0.37529893064022701
	.quad	0x3fdef2aecdd4a85c              # double 0.48356218434003551
	.quad	0x3feaf0e6419b2cbc              # double 0.84190666974736627
	.quad	0x3fc9f37d5ec9b12c              # double 0.20274321678460561
	.quad	0x3fd250e6f74e9166              # double 0.28618787909569787
	.quad	0x3fca91d891b25660              # double 0.20757586587994847
	.quad	0x3fe6863a04b2b748              # double 0.703885087181086
	.quad	0x3fefc49f77324cf4              # double 0.99275182037891207
	.quad	0x3fcfffe4bba550e4              # double 0.24999674951926132
	.quad	0x3fda0980f0219218              # double 0.40683005762392233
	.quad	0x3fbb6ca7eaa5d800              # double 0.10712670782763212
	.quad	0x3fd93ccfa91dfa1c              # double 0.39433661952344479
	.quad	0x3fd6f3853bbf7d4a              # double 0.35861330828443683
	.quad	0x3fe42e13b3e709ce              # double 0.63062462937551245
	.quad	0x3fe5bcf27e31de82              # double 0.67931484839841993
	.quad	0x3fea4340184b4823              # double 0.82070927376685565
	.quad	0x3fcd2fb40da207d0              # double 0.22801829019232267
	.quad	0x3fd07f6ab677d976              # double 0.25777690714985313
	.quad	0x3fc9c7ea29243e5c              # double 0.20141341217866937
	.quad	0x3fe87737103b357e              # double 0.7645526234643254
	.quad	0x3fe3ad6662324bfc              # double 0.61491698435781883
	.quad	0x3fd86773098fac74              # double 0.38131404813493153
	.quad	0x3f8691711ca31fc0              # double 0.011019595800817572
	.quad	0x3fde346db121efd0              # double 0.47194998071767902
	.quad	0x3fe11f98bed3edfe              # double 0.53510701438011643
	.quad	0x3fc19dbd31cf0130              # double 0.13762631351529242
	.quad	0x3fdef5bc15fe7cd0              # double 0.48374845645771547
	.quad	0x3fe6d2a962da4fa2              # double 0.71321553523238301
	.quad	0x3feba9b175ff608e              # double 0.86446450277709785
	.quad	0x3fd338ac4d2d58e8              # double 0.30033404862241619
	.quad	0x3fecbe8ef5b47ad9              # double 0.89826152791269032
	.quad	0x3fe9e027b64b9617              # double 0.80861268620054971
	.quad	0x3fd7808f29078e9a              # double 0.36722163206852942
	.quad	0x3fb98cf521659410              # double 0.099807091382516199
	.quad	0x3fece4bc4ce86d94              # double 0.90292181988791009
	.quad	0x3fdb75753809e7c6              # double 0.42904406044510457
	.quad	0x3febc27bd15733c4              # double 0.86749068152277475
	.quad	0x3fd1aa77f7f18380              # double 0.27602957928871064
	.quad	0x3fc6697ee587a584              # double 0.17509447295678282
	.quad	0x3fe45c2d1d870278              # double 0.63625198142115291
	.quad	0x3fc01c79f737cc40              # double 0.12586903163136931
	.quad	0x3fa180887d56c0c0              # double 0.03418375520721062
	.quad	0x3fe54fd9fc7a0cad              # double 0.66599749862543478
	.quad	0x3fe9de4a6524cc83              # double 0.80838508371961415
	.quad	0x3fd2618990155956              # double 0.28720320768970475
	.quad	0x3fe9e83fc3325a9b              # double 0.80960071682314394
	.quad	0x3fe24daf478537f2              # double 0.57198299378228357
	.quad	0x3fee9956274037ec              # double 0.95621783891851697
	.quad	0x3fee1639df916949              # double 0.94021314302089209
	.quad	0x3fc45472ad750200              # double 0.15882714719374746
	.quad	0x3fc0977d897b1f5c              # double 0.12962311947762373
	.quad	0x3fed09189fe19a67              # double 0.90736037470635444
	.quad	0x3fe6e0acc4106962              # double 0.71492613118907067
	.quad	0x3fe85fd6013c202e              # double 0.76169872513947268
	.quad	0x3fec4a67887d9f0b              # double 0.88408257158605019
	.quad	0x3fe56f89a9dc6bbf              # double 0.66986544776897705
	.quad	0x3fe9438438478797              # double 0.78949175827095786
	.quad	0x3fd751c9df8a68c8              # double 0.36436697797911366
	.quad	0x3fed48ec1e4c8d75              # double 0.91515165250568364
	.quad	0x3fcaf9f10b0c05f4              # double 0.21075261153605107
	.quad	0x3fe116ec52840763              # double 0.53404823414187452
	.quad	0x3f984d890d67d460              # double 0.023733273928844389
	.quad	0x3fe68501e9146c04              # double 0.70373626254456711
	.quad	0x3fd55e98c1e05f0a              # double 0.33389872487303818
	.quad	0x3fe277082aa6fd7b              # double 0.5770302613308752
	.quad	0x3feed74a44e23661              # double 0.96378053144298914
	.quad	0x3fcdefcdfb101b9c              # double 0.23388075598651603
	.quad	0x3fcaffb4dc1896d8              # double 0.2109285425842049
	.quad	0x3febfa55e2a2bb73              # double 0.87430853142528375
	.quad	0x3fd67880d04b51ae              # double 0.35110493031722967
	.quad	0x3fe1b193fb22c085              # double 0.55292700815154261
	.quad	0x3fee03c25b896848              # double 0.93795888784667003
	.quad	0x3fc750c46fd18bb8              # double 0.18215232334031639
	.quad	0x3fe337108f50ec6d              # double 0.60047176352908382
	.quad	0x3fe9ba9bbd206964              # double 0.80402934016028071
	.quad	0x3fcc671d7ea6f9ac              # double 0.22189682659332044
	.quad	0x3fe68a197deb06c9              # double 0.70435785859464162
	.quad	0x3fb95b8ba49bcab0              # double 0.099053123176228607
	.quad	0x3fc137daa6fd8df0              # double 0.13451703218298361
	.quad	0x3fe88eeee99e04ac              # double 0.7674479067647062
	.quad	0x3fdd48d673e24b48              # double 0.45757066075127684
	.quad	0x3fe16ce8abee8eb6              # double 0.54454454021875764
	.quad	0x3feee46c5dd51623              # double 0.96538370443949295
	.quad	0x3fc0181ac726e2a8              # double 0.12573561405385658
	.quad	0x3fe211856ba8d6c0              # double 0.56463881518603642
	.quad	0x3fde46e089b9941a              # double 0.4730759949655422
	.quad	0x3fe41557d76d0860              # double 0.62760536265728817
	.quad	0x3fe50aac13080ce0              # double 0.65755275456504236
	.quad	0x3fe813874794b202              # double 0.75238384228356403
	.quad	0x3fdadff7ac6f3610              # double 0.41991988982485484
	.quad	0x3fe9fc714ee7822b              # double 0.8120657483196444
	.quad	0x3fed8867d4d8a0dd              # double 0.92290107318424541
	.quad	0x3f5b4a6f7fdc4800              # double 0.0016656960355629913
	.quad	0x3fe4e983c9bdbeb8              # double 0.65350522425247615
	.quad	0x3fe0614ff669f2e0              # double 0.51187894942958323
	.quad	0x3fdaec014223a7da              # double 0.4206545968905836
	.quad	0x3fcf5fc85c816958              # double 0.24511055485602173
	.quad	0x3f9c6e771b024260              # double 0.027765141509521363
	.quad	0x3fe3aed6a4f1cb99              # double 0.61509258475995232
	.quad	0x3feab9e76e0cc1e1              # double 0.8351933621798332
	.quad	0x3fcbc253e0e2354c              # double 0.21686790924688137
	.quad	0x3fc6dc04924dbd6c              # double 0.17858941215261426
	.quad	0x3fd9d09d9715a316              # double 0.40335788492534286
	.quad	0x3fed3b7c41d6c5a8              # double 0.91351139887972455
	.quad	0x3fe7d6e05f659760              # double 0.74498003608890073
	.quad	0x3fd3e7fa8457c122              # double 0.31103384899235398
	.quad	0x3fc5b6faa372c34c              # double 0.16964657765267999
	.quad	0x3fdc2d15b89f4024              # double 0.44025176076411499
	.quad	0x3fb0c3e3757c41f8              # double 0.065489021475748532
	.quad	0x3fe883430414bb2f              # double 0.76602316662851944
	.quad	0x3f4122b419c78400              # double 5.2293580989382082E-4
	.quad	0x3fed018847891bf7              # double 0.90643705341142222
	.quad	0x3fedb2c2fd086a0f              # double 0.92807149334413619
	.quad	0x3f7a3961b17d2900              # double 0.0064023796219976337
	.quad	0x3febdfec6ada5a98              # double 0.87108441228595535
	.quad	0x3fe88285dfaed4a0              # double 0.76593297660896908
	.quad	0x3fe3b6bf8c81c4df              # double 0.61605813448673163
	.quad	0x3fdef590bc2a31d0              # double 0.48373812079878764
	.quad	0x3fd448e22074a812              # double 0.31694844407559331
	.quad	0x3fc820bcfeb08b04              # double 0.18849909244553242
	.quad	0x3fdfc4a08cb63f16              # double 0.49637616864582534
	.quad	0x3fe08456c7e413af              # double 0.51615466157146794
	.quad	0x3fd8ac03cf2fccc8              # double 0.38549895508840537
	.quad	0x3fe4a822c9b99709              # double 0.64552440070539874
	.quad	0x3fd2f04e10adbf3e              # double 0.29591704968241916
	.quad	0x3fd387ae03b6a374              # double 0.30515623438491635
	.quad	0x3fbb62e10964a9f0              # double 0.10697752456022847
	.quad	0x3feebd847693618f              # double 0.96063445243184897
	.quad	0x3fe638233ca443f4              # double 0.69435273975443446
	.quad	0x3fe6d96ec049c5a5              # double 0.7140420680645333
	.quad	0x3fe38fae8dc78e83              # double 0.61128928843795938
	.quad	0x3f83c25dc910e4c0              # double 0.0096480681405516355
	.quad	0x3fd5bccea5614a34              # double 0.33964887762445817
	.quad	0x3fc84862a6b09840              # double 0.18970902575637361
	.quad	0x3fe0d5e5f10076e5              # double 0.52611062117258867
	.quad	0x3fd6507f239a089c              # double 0.34866312481620709
	.quad	0x3fed51c177205109              # double 0.91622994677393976
	.quad	0x3fd3d139e392218c              # double 0.30964514945710486
	.quad	0x3fe8e78e78b02aa6              # double 0.77826617786316343
	.quad	0x3fba07ef5ec2e3f8              # double 0.1016835790968712
	.quad	0x3fe1cc3d96089234              # double 0.55618171027578578
	.quad	0x3fe14f0d77a86ef0              # double 0.54089997645084331
	.quad	0x3fe55dba742ec462              # double 0.66769144718103868
	.quad	0x3fe0ffd4ebcaa9bb              # double 0.5312294583612166
	.quad	0x3feb0ea047ec15c0              # double 0.84553541228586226
	.quad	0x3fe7d015b921b5e2              # double 0.7441509834149509
	.quad	0x3fea7573a61c30cf              # double 0.82683737223990217
	.quad	0x3fed2f33d833051b              # double 0.91201202608513954
	.quad	0x3fb573506b987688              # double 0.083790804165312704
	.quad	0x3fe3af0bd8efeb59              # double 0.61511795397323532
	.quad	0x3fc32e55d9ecbf90              # double 0.14985154286250379
	.quad	0x3fd9f12055b076e8              # double 0.40534218185517412
	.quad	0x3fec39792e1781bf              # double 0.88201579096135407
	.quad	0x3fe3f730b3ec833b              # double 0.62392459050543125
	.quad	0x3fe11a783817d49d              # double 0.53448115306550259
	.quad	0x3f9c5e0fd1752800              # double 0.027702567252426036
	.quad	0x3fe687c4177f0a67              # double 0.70407299603568851
	.quad	0x3fd6989d727e3f78              # double 0.35306488209697973
	.quad	0x3fc89d9f82e0f898              # double 0.19231027498785092
	.quad	0x3feb560fa4c2bb85              # double 0.85425550632304292
	.quad	0x3fcbe4e1e8d1af24              # double 0.21792243831748082
	.quad	0x3fb6a430899eb628              # double 0.088442834471344711
	.quad	0x3fc4cbcfe15ed6f0              # double 0.16246984962861388
	.quad	0x3fe134b53f2bf7c8              # double 0.53768408144218771
	.quad	0x3feb149d199375b4              # double 0.84626631732287771
	.quad	0x3fdd7fb295d2bb80              # double 0.46091904288453378
	.quad	0x3fe725377a88bfef              # double 0.72329305584389469
	.quad	0x3fef847fc5bdd180              # double 0.98492420789129653
	.quad	0x3fed91b4a01cced5              # double 0.92403632423380577
	.quad	0x3fe1d36a72d2f01c              # double 0.55705759455259196
	.quad	0x3fdc797c85ea8ac6              # double 0.44491494252922015
	.quad	0x3fc016c40a0d6af4              # double 0.12569475642052164
	.quad	0x3fcc61b6e1480d24              # double 0.22173200607367349
	.quad	0x3fee9f114115e4b2              # double 0.95691740715041917
	.quad	0x3fefa46f5198d141              # double 0.98882261216071054
	.quad	0x3fcec7ab1577ea94              # double 0.24046839283240173
	.quad	0x3fe813db44fa352d              # double 0.75242389175551738
	.quad	0x3fcf4e3be0a1e4d0              # double 0.24457500904444496
	.quad	0x3fb9aae6b2ac1340              # double 0.10026399480927939
	.quad	0x3fec5173ba303c63              # double 0.88494287838865338
	.quad	0x3fe90d11880eafbd              # double 0.78284527372078794
	.quad	0x3fc47a32a174ba4c              # double 0.15997918017952129
	.quad	0x3fd6bf608b9bd682              # double 0.35543073304811668
	.quad	0x3feae04a734a0997              # double 0.83987925069259262
	.quad	0x3fa62ac0b31fbb60              # double 0.043294927468983557
	.quad	0x3fd46bb8a0e2f83c              # double 0.31907478057462746
	.quad	0x3fec6174cd22d8cb              # double 0.88689651551865134
	.quad	0x3fd57360071bf55e              # double 0.33516693777331408
	.quad	0x3fcd627258ba4ac4              # double 0.22956685383231534
	.quad	0x3fbd5ac96ea6d320              # double 0.11466654731232184
	.quad	0x3fe13628d38b79ff              # double 0.53786126439428006
	.quad	0x3fc0863ab82b2f4c              # double 0.12909635536777342
	.quad	0x3fe6717e867c4818              # double 0.70135427729315136
	.quad	0x3fe42ab6fa4cf2dc              # double 0.63021420370895553
	.quad	0x3fd14b6e6dd5ef16              # double 0.27022896505489891
	.quad	0x3fcabee78cfbfe1c              # double 0.20895094284058835
	.quad	0x3fb1ce4e773378f8              # double 0.069554237462828072
	.quad	0x3fd20e971b84945e              # double 0.28214051902097548
	.quad	0x3fe4b908531e8284              # double 0.64758697733130122
	.quad	0x3fea8aeb13e59551              # double 0.82945779691787369
	.quad	0x3fc982dc5cbbc558              # double 0.19930605438234283
	.quad	0x3fd225b32dbd030c              # double 0.28355102030404633
	.quad	0x3fe0a9d0e3725883              # double 0.52072948859382995
	.quad	0x3fd21b6a264facca              # double 0.28292325726824841
	.quad	0x3fd1eca21584aa78              # double 0.28006794072522423
	.quad	0x3fe7b24fe2784fa6              # double 0.74051660759368043
	.quad	0x3fe5265135c6a6a8              # double 0.66092739585038363
	.quad	0x3fd9c41234f5298c              # double 0.40259223148009293
	.quad	0x3fdb527bb25f4978              # double 0.42690937441979981
	.quad	0x3fc0e9e950742ea8              # double 0.1321384089318276
	.quad	0x3fe72c637eba3b69              # double 0.72416853667696757
	.quad	0x3fe97cb507a61efc              # double 0.7964730405228404
	.quad	0x3fd6ae80a60d0bec              # double 0.35440078941263553
	.quad	0x3f83c1b3b910e480              # double 0.0096468010761887601
	.quad	0x3fbc6745c8f3c780              # double 0.11095081478177171
	.quad	0x3f943afcb00a8100              # double 0.019756267780963732
	.quad	0x3feec293cbfd257a              # double 0.96125211564610358
	.quad	0x3fc198cbfbb23c24              # double 0.13747548856596936
	.quad	0x3fd14bc7ce24d632              # double 0.27025027400245272
	.quad	0x3fe510271cfa2811              # double 0.65822177562336226
	.quad	0x3fe503be168056b6              # double 0.65670685190953892
	.quad	0x3fcbc997f0e8df44              # double 0.21708964598814806
	.quad	0x3feae7eccd7f9c88              # double 0.84081115852758703
	.quad	0x3fe5fa82cb3fb19b              # double 0.68682994553596488
	.quad	0x3fd594c22b11c1a4              # double 0.33720449644081385
	.quad	0x3fe91cd764828ee1              # double 0.78477067595346395
	.quad	0x3fe60e3c825d302b              # double 0.68923783742639466
	.quad	0x3fd8d089ce4f0e86              # double 0.387728167985394
	.quad	0x3fe83a0c8cb0cda6              # double 0.75708606222763275
	.quad	0x3fd4249e1cd4996e              # double 0.31473496261096201
	.quad	0x3f9c76f314118e00              # double 0.027797506427658547
	.quad	0x3fe66434dba2e312              # double 0.6997322358866731
	.quad	0x3fd36fbe031bf5d8              # double 0.3036952047694661
	.quad	0x3f599c58c96b5200              # double 0.0015631548937352635
	.quad	0x3febfc261344923c              # double 0.8745298744511909
	.quad	0x3fe5eeecc00e843d              # double 0.68541562567782643
	.quad	0x3fc361128efbdf34              # double 0.15139991742739201
	.quad	0x3fd708a7f0c2772e              # double 0.3599033213775894
	.quad	0x3fdf2cd0dd9fbace              # double 0.4871103443428354
	.quad	0x3fd0a0971af84a16              # double 0.25980165132310284
	.quad	0x3fe89cdc9927f070              # double 0.76914815820010851
	.quad	0x3fe6401b49ecc600              # double 0.69532551229912087
	.quad	0x3feac7ec5195cf3e              # double 0.83690467772110089
	.quad	0x3fd13c45af233f50              # double 0.26930372336663755
	.quad	0x3fe30c7166fba0cc              # double 0.59526891816951766
	.quad	0x3fe255528d164b35              # double 0.57291534000464728
	.quad	0x3fef00449fa879a3              # double 0.96878272231315454
	.quad	0x3fe9052907e0db28              # double 0.78187991656054567
	.quad	0x3fd8aa6e110b801e              # double 0.38540221848052336
	.quad	0x3fd447283f03ee30              # double 0.31684309152453505
	.quad	0x3fe59993406650ae              # double 0.67499697282848614
	.quad	0x3fd496892c8451bc              # double 0.32168797824240492
	.quad	0x3fda8fa7af4a090a              # double 0.4150180064972494
	.quad	0x3fbd474fca757438              # double 0.11436937992898855
	.quad	0x3fbe95e7dd0a2f48              # double 0.11947487970809079
	.quad	0x3fcfa950286dfe14              # double 0.24735452627281573
	.quad	0x3fe9010c057ef32a              # double 0.78137780259530598
	.quad	0x3fc894ff1d634c78              # double 0.19204701361613608
	.quad	0x3fe6427a8dc6db65              # double 0.695615078838142
	.quad	0x3fd905c0c4b2c9a6              # double 0.39097613533808795
	.quad	0x3fde8b5627b318ca              # double 0.47725442768968362
	.quad	0x3fdc7953b852d81a              # double 0.44490521431305441
	.quad	0x3fdbdd439e48f38e              # double 0.43537989099041219
	.quad	0x3fea1e745feb0136              # double 0.8162176011465252
	.quad	0x3fd84b1c9a79338c              # double 0.3795844563035693
	.quad	0x3feafa760f76428c              # double 0.84307387370979958
	.quad	0x3fdf91df0204f62e              # double 0.49327826688008514
	.quad	0x3fd33cbe25f7a600              # double 0.30058244426490432
	.quad	0x3fc0d54a603fedb0              # double 0.13150911044782054
	.quad	0x3fe42b27f17374be              # double 0.63026806982420402
	.quad	0x3fcff6cb5d710368              # double 0.24971906721659853
	.quad	0x3fa384e444d319e0              # double 0.038123258019868933
	.quad	0x3fc8c30fa637fd68              # double 0.19345279327533693
	.quad	0x3fd8fcc7a7054120              # double 0.39042846022222655
	.quad	0x3fb56ce240e66938              # double 0.083692684979188026
	.quad	0x3fda7ba9d0e0c050              # double 0.41379781149135386
	.quad	0x3fe148d787b6d463              # double 0.5401418352763695
	.quad	0x3fed67ea27bd651d              # double 0.91893489610371015
	.quad	0x3fe2dc858732bf3a              # double 0.58941913991836903
	.quad	0x3fdc8f1bcd344de4              # double 0.44623465575679533
	.quad	0x3fdc44fd5bca6c8a              # double 0.44171079601228114
	.quad	0x3fd108bdc694faa8              # double 0.26615852730530287
	.quad	0x3fe800b19b69c8ab              # double 0.75008468965667896
	.quad	0x3fd560df97d7db7c              # double 0.33403768375813292
	.quad	0x3fe5a110eed0b559              # double 0.67591139453513016
	.quad	0x3fe3da43dfe6ca73              # double 0.62039369326369209
	.quad	0x3fd112e46063eb3c              # double 0.2667780820190051
	.quad	0x3fe25f0ee5ad7ee0              # double 0.57410378321580069
	.quad	0x3fea081166842cb3              # double 0.81348485968319151
	.quad	0x3fe02bb39e16da79              # double 0.50533467175303237
	.quad	0x3fe21a126374ee04              # double 0.56568259644649332
	.quad	0x3fe12be6e16e35f7              # double 0.53660911588093441
	.quad	0x3fe7671b8c383065              # double 0.73133637796992146
	.quad	0x3fe721d5c7ad32ff              # double 0.72288025855377203
	.quad	0x3fef9fc1fe118c0b              # double 0.98825168249857264
	.quad	0x3fe42bb77226ea57              # double 0.63033649726214491
	.quad	0x3fd0128a31eeda60              # double 0.25113158108016442
	.quad	0x3fea04f09f9b5fee              # double 0.81310301945904739
	.quad	0x3fd0e4684d3bee76              # double 0.26394088308709429
	.quad	0x3feeba283128ec5e              # double 0.9602242431786967
	.quad	0x3fe0367483ed1909              # double 0.50664735571697961
	.quad	0x3f9a47c001253260              # double 0.025664329595473823
	.quad	0x3fd3fd4a8f7d8d98              # double 0.3123346711419912
	.quad	0x3fcf7d6f273e1030              # double 0.2460154477704477
	.quad	0x3fd8280f55d2bb24              # double 0.37744506245774034
	.quad	0x3fe39df16f9b41e8              # double 0.61303016470088512
	.quad	0x3fe74d8e2a88b88a              # double 0.72821720416483626
	.quad	0x3fda6da6d2920d84              # double 0.4129426056244585
	.quad	0x3fe7b77468af97ff              # double 0.74114437529055965
	.quad	0x3fe97838b7646efa              # double 0.79592548197567159
	.quad	0x3fe23a1083a553da              # double 0.56958795272896201
	.quad	0x3fe195ce5ac4dfb3              # double 0.54953687408759888
	.quad	0x3fd2ba0c90613242              # double 0.29260553454949811
	.quad	0x3fe12c72c9908dcd              # double 0.53667582862947827
	.quad	0x3fe6ac9f88ac19ba              # double 0.70857216543009049
	.quad	0x3fcb09d4dffeae80              # double 0.21123753487824004
	.quad	0x3fe510e3c1a702ca              # double 0.6583117277405901
	.quad	0x3fefb3193f652b26              # double 0.99061262494919755
	.quad	0x3fed0565aa46e078              # double 0.9069088292808507
	.quad	0x3fe7308974771e5f              # double 0.72467491862421329
	.quad	0x3fe267b8dd50cb27              # double 0.5751613924570379
	.quad	0x3fe6dc7de09d20c6              # double 0.71441549177054564
	.quad	0x3fd9823a91d8913e              # double 0.39857353441972865
	.quad	0x3fc5a99877ddbfe0              # double 0.16923814633218992
	.quad	0x3fec8cd9f0f436ff              # double 0.89219376622506263
	.quad	0x3fda747923d00138              # double 0.41335896012607831
	.quad	0x3fc2a770e2fb4368              # double 0.14573489268380091
	.quad	0x3fe20780af8da865              # double 0.5634158543373472
	.quad	0x3fe6045606b3dd15              # double 0.68802930173015631
	.quad	0x3fe8ad01b94b7a18              # double 0.77111898603817775
	.quad	0x3feb5199742e5980              # double 0.85371086780178018
	.quad	0x3fe0ba33f9a21168              # double 0.52272986179791037
	.quad	0x3feddeeed01ccfb6              # double 0.9334634842584737
	.quad	0x3fb4e207a4535830              # double 0.081573941820665352
	.quad	0x3fddec882da9d196              # double 0.46756176432907048
	.quad	0x3feb2c90b06e1e88              # double 0.8491900869275506
	.quad	0x3fe5df0df2def697              # double 0.68347833095295385
	.quad	0x3fc58742d322f6b8              # double 0.16819033917811566
	.quad	0x3fd8a01af4cee0a6              # double 0.38477205187838093
	.quad	0x3fa4ae3ac9d6fcf0              # double 0.040391766680380914
	.quad	0x3fe8e59c988c32cd              # double 0.77802877230132028
	.quad	0x3fd8cee35742eae4              # double 0.38762744447346464
	.quad	0x3fe958b3ed0f38dd              # double 0.79207798290897424
	.quad	0x3fe49b11731f1fc2              # double 0.64392921909983891
	.quad	0x3fdb7bd1326ed5ae              # double 0.4294322006711252
	.quad	0x3fc5875ab9a6e488              # double 0.16819318833384878
	.quad	0x3fed0ad6261a7bdd              # double 0.90757281725006644
	.quad	0x3fea368126383ad2              # double 0.81915338005804927
	.quad	0x3fd048067e8a0d32              # double 0.2543960796103476
	.quad	0x3fe35acd6a73a2e5              # double 0.60483427802418233
	.quad	0x3fca4881cfcd8d78              # double 0.20533774038913655
	.quad	0x3fdc37e348572adc              # double 0.44091112198354465
	.quad	0x3fea8ac726e49255              # double 0.82944066616307544
	.quad	0x3fd3eb0c706dd966              # double 0.31122122744945668
	.quad	0x3fd441ad5e56ee80              # double 0.31650861943101205
	.quad	0x3fe000857e17ea41              # double 0.50006365420933474
	.quad	0x3fec56a946611a48              # double 0.88557876344641162
	.quad	0x3f99acf622910f60              # double 0.025073858127384496
	.quad	0x3fea69fe651eb85a              # double 0.82543868780136198
	.quad	0x3fbff75db081dac8              # double 0.12486825522669698
	.quad	0x3fe7bc83a6477282              # double 0.74176199413666688
	.quad	0x3fd0595bca1c3cc4              # double 0.25545401322683525
	.quad	0x3f9d4c6fa5d49820              # double 0.028611893173682401
	.quad	0x3f8ae920e3a3a180              # double 0.013139969775196603
	.quad	0x3fce3d33d0f7fab0              # double 0.23624274924801147
	.quad	0x3fef0a228fb187e7              # double 0.96998718323834232
	.quad	0x3fe0aaf7b7207b73              # double 0.52087007300347776
	.quad	0x3fe943a0f54a6ab1              # double 0.78950546177232728
	.quad	0x3fe4e5e1aa39b4e1              # double 0.65306170699264154
	.quad	0x3fe12d0028d6c3ad              # double 0.53674324013092234
	.quad	0x3fdea2c6ca797254              # double 0.47868509076014232
	.quad	0x3fe2324c64c2e171              # double 0.56863994293148157
	.quad	0x3fdacb89f60d5e76              # double 0.41867302921807636
	.quad	0x3fd3773166dfd402              # double 0.30414996191331067
	.quad	0x3fecf42e1467516e              # double 0.90480712876391833
	.quad	0x3f97c30f788f5320              # double 0.023205034001722358
	.quad	0x3fb534f160089830              # double 0.082839094110199296
	.quad	0x3fdbaaafef878866              # double 0.43229292289300358
	.quad	0x3fd79a42b53876f0              # double 0.36879031846352373
	.quad	0x3fdb3c2b6ad10128              # double 0.42554746085444828
	.quad	0x3fdab6d71e86d5e6              # double 0.41740968686221291
	.quad	0x3fc59f31802f91f4              # double 0.16892069586823732
	.quad	0x3fdc4a1886454030              # double 0.44202244865755613
	.quad	0x3fc10f14c07dc008              # double 0.13327273749337132
	.quad	0x3fcb4a2e68f37038              # double 0.213201333280155
	.quad	0x3f9404f7251fbb80              # double 0.019550191536775952
	.quad	0x3fdcaf64a2373668              # double 0.44820514527677924
	.quad	0x3fde6b06cd36538e              # double 0.47528238334899064
	.quad	0x3fccaec22b402ff0              # double 0.22408320533611414
	.quad	0x3fc285ef60135e4c              # double 0.14471237364954204
	.quad	0x3fef7af761f80c48              # double 0.98376053938444218
	.quad	0x3feee7472ebf0611              # double 0.9657321846972896
	.quad	0x3fdf73df4bb56266              # double 0.49144728082095523
	.quad	0x3fcad88033d05248              # double 0.20973207979172259
	.quad	0x3fd75f30eca6724a              # double 0.36518500433320311
	.quad	0x3fe62eae63726816              # double 0.69319838927481459
	.quad	0x3fe747fb408ed256              # double 0.72753679856266262
	.quad	0x3fe9467fa9aa43e0              # double 0.78985579621996393
	.quad	0x3fe34dea699035c3              # double 0.6032611905845261
	.quad	0x3fcac17d4231fad0              # double 0.20902982456387642
	.quad	0x3fa56a8c85895f30              # double 0.041828528691154054
	.quad	0x3fe9c9932769dc46              # double 0.80585630128815278
	.quad	0x3fca71bdead4e8d0              # double 0.20659612623587131
	.quad	0x3fe173b7b2013aee              # double 0.54537567869723858
	.quad	0x3fea5312e2df250d              # double 0.82264084158774298
	.quad	0x3fe66502a5fac53b              # double 0.69983036439786106
	.quad	0x3fe8cead39c697a9              # double 0.7752290848190927
	.quad	0x3fddb2c22e22f55c              # double 0.46403555398486218
	.quad	0x3fd98af41d395aae              # double 0.39910605291280887
	.quad	0x3fe7b0f5204d0131              # double 0.74035126026868714
	.quad	0x3fe7dad68ca81ce3              # double 0.74546363327035825
	.quad	0x3fb8a334c2c51910              # double 0.096240327407120185
	.quad	0x3fecaf7a1d461a22              # double 0.89642053334756988
	.quad	0x3fc0c45f2b52f2b8              # double 0.13099279036932443
	.quad	0x3fb612604f5063d0              # double 0.086217898715758467
	.quad	0x3fdd1359df99873e              # double 0.45430609546575684
	.quad	0x3fcd7fcee4471b08              # double 0.23046289583563628
	.quad	0x3f41e85368263400              # double 5.4649422263397529E-4
	.quad	0x3fe11b42b9547175              # double 0.5345777148936991
	.quad	0x3fe99e77afa8bc5a              # double 0.80059418018744144
	.quad	0x3fdc306437292e04              # double 0.44045358073046281
	.quad	0x3feaa31a16e3d0b0              # double 0.8324099013393802
	.quad	0x3fe2ac99358733e9              # double 0.58356914953912764
	.quad	0x3fe81ab4f7f796b7              # double 0.75326012068827353
	.quad	0x3feb27e3f40e6a1e              # double 0.84861943881270796
	.quad	0x3fd1b82007cb9c42              # double 0.27686310540451953
	.quad	0x3fec76cafa415b8b              # double 0.88950108411778339
	.quad	0x3fd3663a6380bd8e              # double 0.3031145068843778
	.quad	0x3fd7866e524b5cca              # double 0.36758001362381931
	.quad	0x3f8c1c5059c1d980              # double 0.013725879420445564
	.quad	0x3fda4866c5629f76              # double 0.41066903377440356
	.quad	0x3fe7bab79847fb45              # double 0.74154262297074836
	.quad	0x3fe62fd01a9bfefd              # double 0.69333653638020076
	.quad	0x3f82c5bdaa8b7780              # double 0.0091662233039035979
	.quad	0x3fe6bee21f6800a8              # double 0.71080118307147178
	.quad	0x3fd5ead8267e32c8              # double 0.34245876082495075
	.quad	0x3fe8ba632c2103e7              # double 0.77275236720026619
	.quad	0x3fe5d7b2e2794b5f              # double 0.68258041604199693
	.quad	0x3fec9a0a5d9f1826              # double 0.89380377088014451
	.quad	0x3fd27739b884d89a              # double 0.28852694529940381
	.quad	0x3fe1208695e68b6c              # double 0.53522042539075931
	.quad	0x3fe414c3735941f3              # double 0.62753460434947639
	.quad	0x3fe3f992e16a22cc              # double 0.62421554590499673
	.quad	0x3fe130856fdad3ba              # double 0.53717300268782897
	.quad	0x3fd3c8d5b13f9550              # double 0.30913297948275886
	.quad	0x3fcdec248d7f5220              # double 0.23376900586176053
	.quad	0x3fd082d7057aae4a              # double 0.25798583540992992
	.quad	0x3fec27a47a57ead6              # double 0.87983917136383627
	.quad	0x3fef355e3fef8b0d              # double 0.97526466834492142
	.quad	0x3fd6f8fa0f2dcd4e              # double 0.35894633753124061
	.quad	0x3fdf0f3089e04f84              # double 0.48530209984277684
	.quad	0x3faf41c3df110dd0              # double 0.061048623065768859
	.quad	0x3fd647f8e48fbd18              # double 0.34814283676583235
	.quad	0x3fd0f7c8302d34e2              # double 0.26512341217751445
	.quad	0x3fea0119ca7a68b7              # double 0.81263436838641823
	.quad	0x3feec25340e28c54              # double 0.96122133896677519
	.quad	0x3fd2f8178fb5ee18              # double 0.29639233621830519
	.quad	0x3fef786857298ce1              # double 0.98344819091689938
	.quad	0x3fe63b4ef8b186dd              # double 0.6947398049635144
	.quad	0x3febfdae54efb2d8              # double 0.87471691693425679
	.quad	0x3fba43759b3e9060              # double 0.10259184875627758
	.quad	0x3fcf57048c87a464              # double 0.24484307157334506
	.quad	0x3fe6efb42f5ae725              # double 0.71676072358170428
	.quad	0x3fe9277a11ae4624              # double 0.78606894925377845
	.quad	0x3fc48d66f85ed8dc              # double 0.16056525351968431
	.quad	0x3fe2f9ff9a74e15e              # double 0.59301738898561118
	.quad	0x3fba40f2ce292078              # double 0.10255353482455287
	.quad	0x3fd19f0283f75e86              # double 0.2753301895840895
	.quad	0x3fef33f15f2ec5f3              # double 0.97509068098423623
	.quad	0x3fdc23d3c6c72c44              # double 0.43968672191539704
	.quad	0x3fafd0ff9da4a550              # double 0.062141407006786609
	.quad	0x3fda34c5de76e8fe              # double 0.40947100377128709
	.quad	0x3fe963bd210d8fb2              # double 0.79342514472636183
	.quad	0x3fd2b1fd66df1c14              # double 0.29211363836333359
	.quad	0x3fbe7d23e69cbae0              # double 0.11909698848897277
	.quad	0x3fc8782291e88bbc              # double 0.1911662304347298
	.quad	0x3fe9a9af739e27bf              # double 0.80196354467010866
	.quad	0x3fda0c8b156b61ca              # double 0.40701558200592258
	.quad	0x3fec92243c25e9c2              # double 0.89283954379725849
	.quad	0x3fe2eccff63fb2b7              # double 0.59140775771591947
	.quad	0x3feae04083b53929              # double 0.83987451290321247
	.quad	0x3fcd0a39c9daeed4              # double 0.22687456470690981
	.quad	0x3fda6a77bad8ffa2              # double 0.41274827238884815
	.quad	0x3fec9c03baaf304a              # double 0.89404474698813741
	.quad	0x3fdf56de28a6b38c              # double 0.48967699022141953
	.quad	0x3fdd89e097f857aa              # double 0.46154036370114204
	.quad	0x3fe31ad13e4c4f7b              # double 0.59702360313029545
	.quad	0x3f8208e1658ef5c0              # double 0.0088060006254363498
	.quad	0x3fe9747a87d9e83f              # double 0.79546858342587956
	.quad	0x3fed67834470d25a              # double 0.91888583533598056
	.quad	0x3f9474fbbf871860              # double 0.019977506222652486
	.quad	0x3f90236249dec300              # double 0.015759979017903269
	.quad	0x3fa83adf68558170              # double 0.047324162946781878
	.quad	0x3fd5bfd99007cd40              # double 0.33983458581424841
	.quad	0x3fe88fc4dc51b939              # double 0.76754992514705755
	.quad	0x3fc5d54ad7a97d4c              # double 0.17057166605352803
	.quad	0x3f972abf58694f80              # double 0.022624006053163281
	.quad	0x3fee382ca8522ac8              # double 0.94435723185719044
	.quad	0x3fd001b23d5aca84              # double 0.25010353080430314
	.quad	0x3fdc2caa16fb79e6              # double 0.44022609943740887
	.quad	0x3feae47061dfeddc              # double 0.84038561931759714
	.quad	0x3fc51d7ca877ff14              # double 0.16496237016689774
	.quad	0x3fd55bdb2fa20a46              # double 0.33373145724923281
	.quad	0x3fe35b9703417a64              # double 0.60493040691273992
	.quad	0x3feffcb0e90a7a7e              # double 0.99959607616240453
	.quad	0x3fd96755f38c6b36              # double 0.39693211349519986
	.quad	0x3fa6a4fbb62b06d0              # double 0.044227472293199122
	.quad	0x3feef521d2582751              # double 0.96742335398560375
	.quad	0x3fd753c6d1810dec              # double 0.36448831996332731
	.quad	0x3fc1686851da09fc              # double 0.13599876400628819
	.quad	0x3fb92dcab4459cb8              # double 0.098354977618884898
	.quad	0x3fec7773c8e10933              # double 0.88958157762707513
	.quad	0x3fa81bfbda7155b0              # double 0.047088499465341882
	.quad	0x3fec7911c899a37a              # double 0.8897789876910871
	.quad	0x3fe838e3749ce5ff              # double 0.75694439674333569
	.quad	0x3fe78caca78ba5ac              # double 0.73592217181901765
	.quad	0x3fee92d35a2f0622              # double 0.9554230462455886
	.quad	0x3fc215d0bca066d8              # double 0.14129075250894263
	.quad	0x3fc9dbacacb7b920              # double 0.2020164340351096
	.quad	0x3fdd38f3dd92b0d8              # double 0.45660111082066868
	.quad	0x3fc81f9c1c43a290              # double 0.18846465473258833
	.quad	0x3fe4c0b2c545b8af              # double 0.64852274446254465
	.quad	0x3fb6b9548ddeb618              # double 0.088765415798399139
	.quad	0x3fa6d7b09aa35dd0              # double 0.044614333035209008
	.quad	0x3fec9f3b357b9c1a              # double 0.89443741269940635
	.quad	0x3fe8bdf590d291c5              # double 0.77318838391925537
	.quad	0x3f93dbd871dc7640              # double 0.019393331479582665
	.quad	0x3fcefa2ea61d38d8              # double 0.24200995551149762
	.quad	0x3fe48cfc2d0e8f27              # double 0.64221009063883094
	.quad	0x3fe35c9ac8b1c35c              # double 0.60505427549479007
	.quad	0x3fe2d934433519ff              # double 0.58901417852831617
	.quad	0x3fb53516c46ba168              # double 0.082841322855193078
	.quad	0x3feea35f7e7fc8e0              # double 0.95744299609057392
	.quad	0x3fdced9bbe310d4a              # double 0.45200246404074973
	.quad	0x3fb4e0ea2203e858              # double 0.081556924156673261
	.quad	0x3fcfa7a54f100e38              # double 0.24730364189609744
	.quad	0x3fe4e1218345369b              # double 0.65248180044882831
	.quad	0x3fdbd41377cff818              # double 0.43481909466197655
	.quad	0x3fe11ea16c5f8b4b              # double 0.53498908201832174
	.quad	0x3fdf5321663a9a8c              # double 0.48944888098996198
	.quad	0x3fe15fca8a3b50a8              # double 0.54294325827006151
	.quad	0x3fd46113365356b8              # double 0.31842499070385655
	.quad	0x3fec8eb98587ba09              # double 0.89242244796861414
	.quad	0x3fba10630f2232e8              # double 0.10181254500839609
	.quad	0x3fd06fc37d3f487c              # double 0.25682151061221936
	.quad	0x3fdffa6b60e8ed08              # double 0.49965939010481053
	.quad	0x3fea12aff1a06168              # double 0.81478116219208818
	.quad	0x3fe3edb225a4f0e7              # double 0.62276561119463458
	.quad	0x3fb4122973d5da50              # double 0.078402128963582784
	.quad	0x3fee0c8b479c122e              # double 0.93903125749836192
	.quad	0x3f9bc3447feab200              # double 0.027112074191494528
	.quad	0x3f7871b18dc37000              # double 0.0059678016370661169
	.quad	0x3fecf79951b409c1              # double 0.90522447545691176
	.quad	0x3fe68b19975a0b27              # double 0.70447997628102577
	.quad	0x3fc52cf605f6c378              # double 0.16543460169989621
	.quad	0x3fe8305f2d4f433e              # double 0.7559047589257728
	.quad	0x3fdf8410248acb2a              # double 0.49243548935480652
	.quad	0x3fe8fbf595b755ba              # double 0.78075675240932374
	.quad	0x3fe1e51696e82426              # double 0.55921487306580242
	.quad	0x3fc80bb039e9d538              # double 0.18785670116236886
	.quad	0x3fbd86a9d27e4d98              # double 0.11533604992864921
	.quad	0x3fb4389655e64400              # double 0.078988452884246385
	.quad	0x3fe82274404a40fa              # double 0.75420582348490872
	.quad	0x3fe4fa60ba3b1ec0              # double 0.65556370137434072
	.quad	0x3fe7d5c217acfe23              # double 0.74484352707071755
	.quad	0x3fd0bc96f1fd573c              # double 0.26151059753225403
	.quad	0x3fc76d0cdcc76e48              # double 0.1830154493353453
	.quad	0x3feb218ed59d570c              # double 0.84784642907718099
	.quad	0x3fe615990105d69d              # double 0.69013643455282969
	.quad	0x3fe600f640baa5ce              # double 0.68761742250824809
	.quad	0x3fe0830130ca40b4              # double 0.51599177865320778
	.quad	0x3fd0e4459332b880              # double 0.26393260359589732
	.quad	0x3fe5e5d92ac8cf92              # double 0.68430765491801737
	.quad	0x3fb0394c86286db0              # double 0.063374312165641156
	.quad	0x3fec40823b6d2b38              # double 0.88287459952093794
	.quad	0x3fd9743316ef6d14              # double 0.39771725883265785
	.quad	0x3fecd7dc0d153955              # double 0.90135004573111621
	.quad	0x3fe63663a4b35467              # double 0.69413931053226186
	.quad	0x3fca7ab3533ee18c              # double 0.20686952175834639
	.quad	0x3fde865616ea3526              # double 0.4769492362764417
	.quad	0x3fee54fcf5fe87f8              # double 0.94787452741388644
	.quad	0x3febf44c319e0705              # double 0.87357148829343656
	.quad	0x3feebf5a68d38d4d              # double 0.96085854028607686
	.quad	0x3fd2a3445c4b2f5a              # double 0.29121502888732709
	.quad	0x3fdd8726dc27f49c              # double 0.46137401103607956
	.quad	0x3fef1346a2580072              # double 0.97110301692738532
	.quad	0x3fedf6774df9706a              # double 0.93633618573541111
	.quad	0x3fe9864282664106              # double 0.79763913601530656
	.quad	0x3fe85b9950741dcc              # double 0.76118150437917497
	.quad	0x3fe11aba3c906405              # double 0.53451263264571536
	.quad	0x3fb7d3b8378a0d88              # double 0.093074334678069914
	.quad	0x3fecf9cbb987da63              # double 0.90549265133342904
	.quad	0x3fef2e8666b23c0b              # double 0.97442932184083141
	.quad	0x3fcb4a4301a9c2d0              # double 0.21320378857810462
	.quad	0x3fec27545bb56e7e              # double 0.87980096732958635
	.quad	0x3fe8a36666d56e4c              # double 0.76994628987035573
	.quad	0x3fe9b99c306d19ac              # double 0.80390748460995586
	.quad	0x3fe60ad79d88a5aa              # double 0.68882351654354079
	.quad	0x3fc8058da76f03a8              # double 0.18766947436782044
	.quad	0x3fe16f21b222566f              # double 0.54481587211439642
	.quad	0x3fdb6e6799a171b0              # double 0.42861356738083156
	.quad	0x3fe1bdde2715f045              # double 0.55442721971440589
	.quad	0x3fd8710401744104              # double 0.38189792768481845
	.quad	0x3fe9be8e64a57ac5              # double 0.80451125772000209
	.quad	0x3fe44fc7c8a7b1e9              # double 0.6347388190311537
	.quad	0x3fd41ba66c78c4bc              # double 0.31418762772507214
	.quad	0x3fefca01daa03396              # double 0.99340908718442011
	.quad	0x3f83523ca1f83280              # double 0.0094341980866599062
	.quad	0x3fd843a3f35595a6              # double 0.37912844431988402
	.quad	0x3fd2d50476a070b8              # double 0.29425155243530865
	.quad	0x3fe96802c6715b76              # double 0.79394663580283864
	.quad	0x3fd516994e71f186              # double 0.32950432453778722
	.quad	0x3fd24116a9032fce              # double 0.28522268777009863
	.quad	0x3fbdc20e2a97ed78              # double 0.11624229946021625
	.quad	0x3fe3873736d400ef              # double 0.61025582035656878
	.quad	0x3fedcc78011df88c              # double 0.93120956628969642
	.quad	0x3fdbee70abce359a              # double 0.43642823007470499
	.quad	0x3fda75038b115170              # double 0.41339195805382811
	.quad	0x3fe5d20f1b208202              # double 0.68189196871031776
	.quad	0x3fd1f564675592f6              # double 0.28060255137670198
	.quad	0x3feb770fb826a92d              # double 0.85828386275287516
	.quad	0x3fe3123bd71b5951              # double 0.59597579968503045
	.quad	0x3feb52bea62dde2b              # double 0.85385067421788585
	.quad	0x3fcfb4477bb25cec              # double 0.24768918552283681
	.quad	0x3feca74b9d0cd6e4              # double 0.89542179750307271
	.quad	0x3fe4c363d0da6ffe              # double 0.64885130683569492
	.quad	0x3fb55996d66c0828              # double 0.083398272847290955
	.quad	0x3fb9d63b03413748              # double 0.10092514829122223
	.quad	0x3fda1474045f8092              # double 0.40749836375290116
	.quad	0x3f9556116966de20              # double 0.020836135919777843
	.quad	0x3fe7d12a907a7323              # double 0.74428299158498523
	.quad	0x3fe7f64ca4915280              # double 0.74881584303018656
	.quad	0x3fc5d6fcf3812150              # double 0.17062341585029595
	.quad	0x3fcbfa192e12721c              # double 0.21856989621746059
	.quad	0x3fe9b575f34783a9              # double 0.80340096965311603
	.quad	0x3fcbf4259fb4b350              # double 0.21838827417505025
	.quad	0x3fe52eca83484fe4              # double 0.66196180001361116
	.quad	0x3fe227392abb06e8              # double 0.56728800149741421
	.quad	0x3fc513baba9b9ff8              # double 0.16466459380831089
	.quad	0x3fb723f943423268              # double 0.090392664833595426
	.quad	0x3fd327a770931a4c              # double 0.2992952918397449
	.quad	0x3fddfa85706e4122              # double 0.46841560344275213
	.quad	0x3fef0ae661a61336              # double 0.97008055755632117
	.quad	0x3fe61d2436faaede              # double 0.6910573076069928
	.quad	0x3fc0ffbd4e67efb4              # double 0.13280454948823961
	.quad	0x3fe7663a175749b0              # double 0.73122887190611685
	.quad	0x3fca483853e5850c              # double 0.20532898041259562
	.quad	0x3fc0f253500d0e1c              # double 0.13239518555393281
	.quad	0x3fa17d5a3efe2d10              # double 0.03415948885875697
	.quad	0x3fda03739928ea4c              # double 0.40646066624654931
	.quad	0x3fda561005eabad6              # double 0.41150284364532064
	.quad	0x3fe4bd1c22655c86              # double 0.64808470457036615
	.quad	0x3fce3bf660192e18              # double 0.23620490734389032
	.quad	0x3fdb4479386c9fb0              # double 0.42605429182230647
	.quad	0x3fe8b8c8d6c9cff1              # double 0.77255670500608009
	.quad	0x3fe065aa356bdfc6              # double 0.51241026338447493
	.quad	0x3fe9535a5b3e2e56              # double 0.79142492123487318
	.quad	0x3fde3f6a621bb80a              # double 0.47262057858358786
	.quad	0x3fea1732893b98ea              # double 0.81533171466142318
	.quad	0x3fe8270cb704ec4c              # double 0.75476680513328053
	.quad	0x3fc4a52dceef1f64              # double 0.16129086116984148
	.quad	0x3fd1b86702e10cac              # double 0.27688002854501792
	.quad	0x3f88fbe2fbfef580              # double 0.012199185672097768
	.quad	0x3fe86dace4e57753              # double 0.76338810640639065
	.quad	0x3fd2ce1c52bed734              # double 0.29382999497044016
	.quad	0x3fd1006698c2e8ea              # double 0.2656494609651775
	.quad	0x3fea6491c73492ae              # double 0.82477654368684283
	.quad	0x3fedd05f535cddb9              # double 0.93168607980526652
	.quad	0x3fe1964e9283ca2a              # double 0.54959801307842793
	.quad	0x3fd02fe80361d6d6              # double 0.25292396860400623
	.quad	0x3fec503be71bf845              # double 0.88479418886687056
	.quad	0x3fc15453301c7bb4              # double 0.13538589333708517
	.quad	0x3fe8a692b1d3fa5d              # double 0.77033362133063188
	.quad	0x3fe14dca5ad9bbde              # double 0.54074590439074277
	.quad	0x3fe2b8a1be57ac47              # double 0.58503806282295379
	.quad	0x3fe9326eba13662b              # double 0.78740631430554708
	.quad	0x3fe525c5adccd921              # double 0.66086086221074336
	.quad	0x3fc3fd271884d3b8              # double 0.15616310784539933
	.quad	0x3fe1975ac936f228              # double 0.54972590732319748
	.quad	0x3fefbe49cd78b998              # double 0.99197855120819422
	.quad	0x3fd7793a5cd9173e              # double 0.36677416865528645
	.quad	0x3fd8ae2d1e3c1736              # double 0.38563087418184538
	.quad	0x3fc2570b33995124              # double 0.14328136462666763
	.quad	0x3fc4d2a179c5c70c              # double 0.16267794080663867
	.quad	0x3fe3785aa602c605              # double 0.60844166206351302
	.quad	0x3fef16169892f0ff              # double 0.97144632148368248
	.quad	0x3fe7ed0c0d062444              # double 0.74768641036747185
	.quad	0x3fdc7e7b7841254a              # double 0.44521986716843698
	.quad	0x3fe27c459e65b687              # double 0.57766991555190905
	.quad	0x3fd8fa0a3bbc28fc              # double 0.39026122888084536
	.quad	0x3fdd871fee46d3c8              # double 0.46137235898214302
	.quad	0x3fd1c8a9cf1d9180              # double 0.27787251688121017
	.quad	0x3fb3084dde9cf9d0              # double 0.074345461701319282
	.quad	0x3fe60b8d9569e709              # double 0.68891028578147584
	.quad	0x3fc79906d212c0f8              # double 0.18435750253184557
	.quad	0x3fc1782ef6e62758              # double 0.13648020797364313
	.quad	0x3fd38c8f5ea9dc66              # double 0.30545410389408401
	.quad	0x3fe7c8bd27dece97              # double 0.74325425898719544
	.quad	0x3fc909ea12c48568              # double 0.19561506191625289
	.quad	0x3fe6a63a9f89ede2              # double 0.70779162559432174
	.quad	0x3fe9c4f5e716a527              # double 0.80529303678955422
	.quad	0x3fb71e942d05b558              # double 0.090310345641872458
	.quad	0x3fb0f1931c34b880              # double 0.066186136614051705
	.quad	0x3febbfd5b754ebf7              # double 0.86716733748414654
	.quad	0x3fdf968a3b3c5378              # double 0.49356323036891281
	.quad	0x3fe6d936b82b3966              # double 0.71401535006024797
	.quad	0x3fd91cc5f7d7d5f0              # double 0.39238118365696462
	.quad	0x3fdb5d093a41fc14              # double 0.42755346955522211
	.quad	0x3fd5aca3a7a21ac8              # double 0.33866206522399667
	.quad	0x3fdca24afe4ec6da              # double 0.44740557512987567
	.quad	0x3fe1a4f1fe250e56              # double 0.55138492238661274
	.quad	0x3fd159f8140573c6              # double 0.27111627536015381
	.quad	0x3fe9151a299075af              # double 0.78382595174814707
	.quad	0x3febcfee839da4fa              # double 0.86913228708468115
	.quad	0x3fcb98aec615f784              # double 0.2155970065322742
	.quad	0x3fc0ce94bb0c83d4              # double 0.13130435117002881
	.quad	0x3fe25aa9358c68f3              # double 0.57356701334654614
	.quad	0x3fe21292f4c3614b              # double 0.56476733975709104
	.quad	0x3fe140d5348d4278              # double 0.5391641642000442
	.quad	0x3fea87c7aa7515eb              # double 0.82907470028356778
	.quad	0x3fe422cf90482662              # double 0.62924936466260939
	.quad	0x3fef24e1a0a885d0              # double 0.97325211885998364
	.quad	0x3fe87e5dc747a6cb              # double 0.76542557641843112
	.quad	0x3fd5bdf13be76bba              # double 0.33971815919874937
	.quad	0x3fdb10a69fa38754              # double 0.4228912886593339
	.quad	0x3fd31022bf27c8be              # double 0.2978598467590351
	.quad	0x3fd859a64edb8b7c              # double 0.38047177983224123
	.quad	0x3fd6d01a1c11a7fa              # double 0.35645153752432146
	.quad	0x3fe0544edab3bcd6              # double 0.51029150691274583
	.quad	0x3fd806b42a4b2546              # double 0.37540916567066451
	.quad	0x3fdf2112bf4e4064              # double 0.48639362985796297
	.quad	0x3fe3b575767efebc              # double 0.61590073722614802
	.quad	0x3fd9dcf787bc3b1c              # double 0.40411175017736567
	.quad	0x3feb435062145405              # double 0.85196704059728801
	.quad	0x3fe13d79e766b982              # double 0.53875441737709218
	.quad	0x3fccbec5b3d76d48              # double 0.22457190781902114
	.quad	0x3fece2f0eaed322e              # double 0.90270276912776182
	.quad	0x3fd7594363595900              # double 0.36482319547702957
	.quad	0x3feafb785de16a65              # double 0.84319704376259763
	.quad	0x3fef20edf34a02d7              # double 0.97276971356776698
	.quad	0x3fece7db0c072713              # double 0.90330269192893053
	.quad	0x3fd32f8772737de8              # double 0.29977594544285902
	.quad	0x3fd7a69319d73956              # double 0.36954190753467253
	.quad	0x3fefd2d6374debb5              # double 0.9944869117892866
	.quad	0x3fcdfa67e87aa5cc              # double 0.23420428134458715
	.quad	0x3fefc3340e99ffd4              # double 0.99257853366725123
	.quad	0x3fdff9b58b4de612              # double 0.49961603740629912
	.quad	0x3fd4ddca5c781ed4              # double 0.32603701620290093
	.quad	0x3fe3cb8503e7862d              # double 0.61859370005203618
	.quad	0x3fd2d16b169f76fc              # double 0.29403187951344001
	.quad	0x3fe8dc468fae4a20              # double 0.77688911497745394
	.quad	0x3fcbe3db2f285504              # double 0.21789111902823077
	.quad	0x3fe2cb475fe6725f              # double 0.58731430750374247
	.quad	0x3fd718bdf62906fa              # double 0.36088513411605982
	.quad	0x3f99ad6aa99d3c00              # double 0.025075594522885325
	.quad	0x3fe0bc45e943403e              # double 0.52298255499955082
	.quad	0x3fe4054572ba8e27              # double 0.62564346702533136
	.quad	0x3fd0bba39e02e604              # double 0.26145258360665502
	.quad	0x3fd585bfa1c6c0c0              # double 0.33628836439585186
	.quad	0x3fed479d564522ac              # double 0.91499201631184723
	.quad	0x3fd1fe2264cc1b1c              # double 0.28113612979397984
	.quad	0x3fecc923ba0b1a37              # double 0.89955316864581547
	.quad	0x3fdd0f3e3a7b723c              # double 0.45405536376145839
	.quad	0x3faa6a9f29c2b720              # double 0.05159470925114662
	.quad	0x3fe98a1f3b8d56c1              # double 0.79811059600134382
	.quad	0x3fe83f9d3ef249c0              # double 0.75776541036821499
	.quad	0x3fdef2cf937c8fb6              # double 0.48356999781594412
	.quad	0x3fa3bfdfee411be0              # double 0.038573263009815895
	.quad	0x3fef7d38ba0b442b              # double 0.98403583847733011
	.quad	0x3fd32aa56d2c2568              # double 0.29947791730281503
	.quad	0x3fe642d73e0322d3              # double 0.69565927612083056
	.quad	0x3fe359eef0265e3b              # double 0.60472819237015274
	.quad	0x3fedf459822b39f5              # double 0.93607783721546289
	.quad	0x3fc1479454f3c7c8              # double 0.13499693058071061
	.quad	0x3fe07ce57b759aaf              # double 0.51524614442026528
	.quad	0x3fe23c26ee3f0615              # double 0.56984278233011543
	.quad	0x3fee01650f5fc8d8              # double 0.93767025950208005
	.quad	0x3feeff19cdeedb0c              # double 0.96864023419661426
	.quad	0x3fe92380c400430f              # double 0.78558386117410517
	.quad	0x3fe9da52fe2396db              # double 0.80790090214278665
	.quad	0x3f735ee4bd278700              # double 0.0047291693794890843
	.quad	0x3fe9f089dceb6e68              # double 0.81061261318559463
	.quad	0x3fe86d3cd7384542              # double 0.76333467517012132
	.quad	0x3fe49a327cbd35c4              # double 0.64382290232759276
	.quad	0x3fc1fce1154a0d18              # double 0.14052976169123421
	.quad	0x3fd1006d5f148630              # double 0.26565107617543315
	.quad	0x3fea8f35fac100f1              # double 0.82998179412245865
	.quad	0x3fe87bce04b97248              # double 0.76511288569197067
	.quad	0x3fa3b0509e53d5d0              # double 0.038454551055035702
	.quad	0x3fccfe3affe92704              # double 0.22650849815027396
	.quad	0x3fc3172cb585194c              # double 0.14914473403241357
	.quad	0x3fd7b410237ae29c              # double 0.37036517586560946
	.quad	0x3fe2d2fd027ae823              # double 0.58825541004558024
	.quad	0x3fe88b61baa880da              # double 0.76701437431986652
	.quad	0x3fefee216eadc971              # double 0.99781867615665309
	.quad	0x3fcff0147afaafe4              # double 0.2495141602024652
	.quad	0x3fb398f60d24bd80              # double 0.076552751740328162
	.quad	0x3feb9abb35c1bbb7              # double 0.86263809680337189
	.quad	0x3fe582946301c331              # double 0.67218989693910747
	.quad	0x3fec6ed5ae87b9c5              # double 0.8885296257774874
	.quad	0x3fead5fd90492be0              # double 0.83862188511681878
	.quad	0x3fe1beae244b502d              # double 0.55452639664372827
	.quad	0x3faaf9fe5f4b34c0              # double 0.052688550121823052
	.quad	0x3fe2d223cff1e30f              # double 0.58815184225304218
	.quad	0x3fd2863da6ffe20e              # double 0.28944341000126961
	.quad	0x3fcdf0eb89d82188              # double 0.23391479712178076
	.quad	0x3fd451a797bda5bc              # double 0.31748380487860195
	.quad	0x3fef7327ce8471c2              # double 0.98280706725523026
	.quad	0x3fe07e22591b2143              # double 0.5153972378111934
	.quad	0x3fc880c2ed83db88              # double 0.19142948720374542
	.quad	0x3fdf10fdc9fbbbd6              # double 0.48541207051215218
	.quad	0x3fb005a0b1694638              # double 0.0625858719952469
	.quad	0x3fe0a1db1f1fe395              # double 0.51975780562416907
	.quad	0x3fe6e895b3a296dc              # double 0.71589169583304679
	.quad	0x3fd2fb6900fbb6a8              # double 0.29659485908528405
	.quad	0x3fe0ed6ec27f2e51              # double 0.5289834784284243
	.quad	0x3fd9c733b2a6a7a0              # double 0.40278332182298904
	.quad	0x3fc0c9a802ae6b74              # double 0.13115406161235976
	.quad	0x3fc56789d949289c              # double 0.16722224340111758
	.quad	0x3fe3eb058f747ef8              # double 0.62243917482916711
	.quad	0x3fbca712af046910              # double 0.11192433140641733
	.quad	0x3fda0cc694a31326              # double 0.40702976718266581
	.quad	0x3fc3fe450ddd8df0              # double 0.15619719674133092
	.quad	0x3faca3e7f2899710              # double 0.055938003880141918
	.quad	0x3fea631b801075dd              # double 0.82459807407911578
	.quad	0x3fe9a7928c3fb484              # double 0.80170562164643444
	.quad	0x3fedb21f77eb7480              # double 0.92799352094483822
	.quad	0x3fd73fc84601ecf2              # double 0.36326796375915571
	.quad	0x3fe1626e7ac4fb94              # double 0.54326557138834852
	.quad	0x3febd05310b3ea00              # double 0.86918023359550034
	.quad	0x3fe84fdfaa91310b              # double 0.75975020707986241
	.quad	0x3f825125a41bc000              # double 0.0089438381869229033
	.quad	0x3fd136a9a0352a78              # double 0.2689613403823965
	.quad	0x3fc2effb21e1eb74              # double 0.14794863848132034
	.quad	0x3fdba5bdea8e19dc              # double 0.43199108033914313
	.quad	0x3fe098cd0e5d136f              # double 0.51865246587168012
	.quad	0x3fe67996c17e2940              # double 0.70234239379468733
	.quad	0x3fdcee1ffbe0bbcc              # double 0.45203399274299438
	.quad	0x3fec03ccb253fee0              # double 0.87546381787975846
	.quad	0x3fe0094996e6bd4e              # double 0.50113372300067183
	.quad	0x3fe6d10000e7d714              # double 0.7130126969993591
	.quad	0x3fc4dc27d299ff64              # double 0.16296861441878285
	.quad	0x3fe3b6436c80abe4              # double 0.61599894706648373
	.quad	0x3fe82f1266f96b83              # double 0.75574607956092199
	.quad	0x3fe64a960b09a9d5              # double 0.69660474925813765
	.quad	0x3fba738ea0061e28              # double 0.10332576186021269
	.quad	0x3fe9ff44c0a8d5b7              # double 0.81241071347056149
	.quad	0x3fc58ce4913c8de0              # double 0.16836220828655168
	.quad	0x3fa1269962e62a40              # double 0.033497613260881298
	.quad	0x3fe9919b6c59b9fa              # double 0.7990243068905436
	.quad	0x3fc4c9a86ec8c794              # double 0.1624041119517271
	.quad	0x3fd280a806304e06              # double 0.28910256008495627
	.quad	0x3fc2ce9fc6864be8              # double 0.14693066781600739
	.quad	0x3fdcfedef3e32366              # double 0.45305608574977041
	.quad	0x3fe41a15a5553266              # double 0.6281841496616607
	.quad	0x3fc40bfc735394cc              # double 0.15661578780342322
	.quad	0x3fef88d7b6ab66d3              # double 0.98545442273754202
	.quad	0x3fe4a3f94b296f2f              # double 0.64501633338975306
	.quad	0x3fd8bcd00f9dfa02              # double 0.38652421498400724
	.quad	0x3fd5939b63b3efd0              # double 0.33713421570405178
	.quad	0x3fec72255c9820ab              # double 0.88893383107008128
	.quad	0x3f7634891a5adb00              # double 0.0054211955627383457
	.quad	0x3fdedd54bd32a312              # double 0.48225897289607744
	.quad	0x3fed03751cff1b6c              # double 0.90667205489522251
	.quad	0x3fe3424711438edd              # double 0.60184052821974954
	.quad	0x3fe1a5e10d8ac484              # double 0.5514989151471501
	.quad	0x3fcf583f24f04f2c              # double 0.24488057426116805
	.quad	0x3fcc9812b486502c              # double 0.22339090170555786
	.quad	0x3fef73f3797bbe1e              # double 0.98290418364735266
	.quad	0x3fe22adf363a48de              # double 0.56773338881819391
	.quad	0x3fece4b607caa366              # double 0.90291883012569651
	.quad	0x3fb5434660c9f2b8              # double 0.083057783727734313
	.quad	0x3fe1e69c9fcb3806              # double 0.55940085611087009
	.quad	0x3fe8d52773b345e9              # double 0.77601978872024546
	.quad	0x3fd6a45ba74b7c2c              # double 0.3537816175211812
	.quad	0x3fe4afa4af1be6ae              # double 0.64644083214735359
	.quad	0x3fdc07657e0ed820              # double 0.43795144377088668
	.quad	0x3fdb4d28f0454724              # double 0.42658446754386348
	.quad	0x3fd31b5a590a5f46              # double 0.29854448981631199
	.quad	0x3fe20470e3ebb592              # double 0.5630421115471782
	.quad	0x3fee22ecd454880c              # double 0.94176331969015469
	.quad	0x3fee63fd9c6540f0              # double 0.94970589204788602
	.quad	0x3fec5e087c0333e6              # double 0.88647865506356704
	.quad	0x3fad957dab5772e0              # double 0.057781150022241823
	.quad	0x3fc8dc56b93b5f50              # double 0.19422420544173713
	.quad	0x3feb2a91500ce18f              # double 0.84894624361827364
	.quad	0x3fe65723fdcc28ee              # double 0.69813727922271851
	.quad	0x3fad37bf261e8c50              # double 0.057065938380468695
	.quad	0x3f684dfe5dcc3f00              # double 0.0029668777555186265
	.quad	0x3fe5aa3985413bc3              # double 0.6770293810494582
	.quad	0x3fbc9d269f415150              # double 0.11177293193879234
	.quad	0x3fe968e6ccec991b              # double 0.79405536674747468
	.quad	0x3fc20dc9ef89aa84              # double 0.14104580112628551
	.quad	0x3fcd37af5b03fb88              # double 0.22826187080496774
	.quad	0x3fcaff493ee65620              # double 0.21091571398999154
	.quad	0x3fc2cce0e6622914              # double 0.14687739609900829
	.quad	0x3fe7273933e90fb0              # double 0.72353801859616418
	.quad	0x3fe163e48f7cbe22              # double 0.5434439470754493
	.quad	0x3fe4232e613e6390              # double 0.62929457657729593
	.quad	0x3fe18d36e0078c6c              # double 0.54848808055647913
	.quad	0x3fe54b731dc7d753              # double 0.66546016518143813
	.quad	0x3feea8e2b06dd15f              # double 0.95811590632233023
	.quad	0x3fe1c4c75ef176e9              # double 0.55527084869001186
	.quad	0x3fe91683066d4370              # double 0.78399802451359157
	.quad	0x3fef150a85353e70              # double 0.97131849305328721
	.quad	0x3fecb4df1f286d8d              # double 0.89707904897243085
	.quad	0x3fb74c39754af1c8              # double 0.091006842742849092
	.quad	0x3fd8c8b3b9eac4f8              # double 0.38724988132442162
	.quad	0x3fe5d419455f62ce              # double 0.68214095639549455
	.quad	0x3fd0299d24c697d6              # double 0.25253990737325915
	.quad	0x3fc5a2c7b6b6232c              # double 0.16903015538653088
	.quad	0x3fd0cd93700b17d6              # double 0.26254735891086278
	.quad	0x3fd28edbe94b4e30              # double 0.28996942312844265
	.quad	0x3fe341896a133450              # double 0.60175009458328965
	.quad	0x3fea72c9b17f3291              # double 0.82651219050747404
	.quad	0x3fd097bff6bfbfb6              # double 0.25926207634529008
	.quad	0x3fe4737eae78b04b              # double 0.63909849239781502
	.quad	0x3fe7fa932519a673              # double 0.74933774229175609
	.quad	0x3fe2c7f43b82794a              # double 0.5869084512994871
	.quad	0x3fe7b2dfa4ba1dfa              # double 0.74058515713926387
	.quad	0x3fd194fc2b693bf0              # double 0.27471832503664384
	.quad	0x3fdf9568becf1ef0              # double 0.493494211518267
	.quad	0x3fed1efe4dbdadde              # double 0.91003337081695768
	.quad	0x3fb2efde0a15fc98              # double 0.073972585165380855
	.quad	0x3fe3c09a7f7fb0df              # double 0.61726117040737083
	.quad	0x3fe4dff7ab8e1f4c              # double 0.65233977801197218
	.quad	0x3fa231aab14a7e00              # double 0.035535177366224246
	.quad	0x3fdd98521e08d8d2              # double 0.4624219220453486
	.quad	0x3fd8ed4b234c8bbe              # double 0.38948324629944497
	.quad	0x3fa568b503416910              # double 0.041814476630593345
	.quad	0x3fe5d933d664061b              # double 0.68276397584139958
	.quad	0x3fe184771ad175f5              # double 0.54742007482462773
	.quad	0x3fec589a358e54e8              # double 0.88581572017815535
	.quad	0x3fe68be3f54ee295              # double 0.70457647239443821
	.quad	0x3fd62f1a24079860              # double 0.34662488478205056
	.quad	0x3fdac197e5c6c6b2              # double 0.41806600035770736
	.quad	0x3fa2b885dc274d90              # double 0.036564047931871291
	.quad	0x3fe9baf514188ed6              # double 0.80407194066034537
	.quad	0x3fd936c55b8aa7e6              # double 0.39396795215236435
	.quad	0x3feda6804e9123f1              # double 0.92657485337360701
	.quad	0x3fcaa8938d5ab550              # double 0.20826954271380282
	.quad	0x3fe31ad52c5a7dc7              # double 0.59702547705449482
	.quad	0x3fef12020722e623              # double 0.97094823259175588
	.quad	0x3fe0be76fe4c4e86              # double 0.52325009982674042
	.quad	0x3fd776c55650eda0              # double 0.36662419728573958
	.quad	0x3fbeb0f24f7a2b70              # double 0.11988748970376917
	.quad	0x3feab43d0c983f87              # double 0.83450176677614329
	.quad	0x3fd2055ede01e010              # double 0.28157779388811921
	.quad	0x3fd971d35a6df1c2              # double 0.39757236319544742
	.quad	0x3fbbbea02046aba0              # double 0.10837746417989402
	.quad	0x3fe359857cc39ad3              # double 0.60467790954575162
	.quad	0x3fa627e5981333f0              # double 0.043273138822406909
	.quad	0x3f8eb41a93bfb440              # double 0.01499195826905908
	.quad	0x3fe7339bbc0aa86a              # double 0.72504984595185573
	.quad	0x3fb8ac0fda5dd6f8              # double 0.096375456630848677
	.quad	0x3fddcd0048ff6dd4              # double 0.46563727501572072
	.quad	0x3fee2bcdb2dd32f7              # double 0.94284710821520334
	.quad	0x3fe07c4c52eef477              # double 0.5151731128495517
	.quad	0x3fdc144adba06138              # double 0.43873855064295553
	.quad	0x3fe9ba667b9c7c4f              # double 0.80400394575907252
	.quad	0x3fedc13c2f1d8c12              # double 0.92983826830129801
	.quad	0x3fe1ce688826be07              # double 0.55644632904108071
	.quad	0x3fe5926e40bb25bb              # double 0.67412483828336833
	.quad	0x3fdddf65400b6ef4              # double 0.46675997976647854
	.quad	0x3fd3e65d68942926              # double 0.31093535626190982
	.quad	0x3fc81ea924d1c9ec              # double 0.18843569085909395
	.quad	0x3fed1a89f9fae9b6              # double 0.90948962043994785
	.quad	0x3fefbe7a794093e0              # double 0.99200175935822798
	.quad	0x3fe175f32603fe54              # double 0.54564816880151534
	.quad	0x3fe607f00a41c9b8              # double 0.68846895221059068
	.quad	0x3fcb92e11d434518              # double 0.21541990212293949
	.quad	0x3feed0bf9e2ff88a              # double 0.96298199554418429
	.quad	0x3fe7f23c285cd3cd              # double 0.748319701035706
	.quad	0x3fc957e94117a7c8              # double 0.19799533537235292
	.quad	0x3fe60906fb95e95d              # double 0.68860196245013194
	.quad	0x3fcf0d2aa4c5adf8              # double 0.24258931203381429
	.quad	0x3fd4b6abcb2941ba              # double 0.32364935722310018
	.quad	0x3fdc9b3a74d8cd64              # double 0.44697438631847874
	.quad	0x3fd4384eca66f88c              # double 0.3159367539009359
	.quad	0x3fb14604b3830698              # double 0.067474645448806547
	.quad	0x3fc7373561786ff4              # double 0.18137233027744026
	.quad	0x3fe2750184750393              # double 0.57678295012020653
	.quad	0x3fe85cefaa54526f              # double 0.76134475009400926
	.quad	0x3fe6d3d4325acbad              # double 0.71335801920792152
	.quad	0x3fed5fcf7443f13d              # double 0.91794560154043092
	.quad	0x3fe339fa4533f504              # double 0.60082734600260368
	.quad	0x3fe6f074541f5795              # double 0.71685234480058801
	.quad	0x3fe17f7c50b328f0              # double 0.54681220781028905
	.quad	0x3fe5b069663085f7              # double 0.67778463324447003
	.quad	0x3fe4f72e7b1ed67c              # double 0.65517353102650544
	.quad	0x3fe126e45b0a2c91              # double 0.53599756032180512
	.quad	0x3fe1a0570baf84ec              # double 0.55082275659893076
	.quad	0x3fe3657ded32888f              # double 0.60613914802185487
	.quad	0x3fdb7718964cb09e              # double 0.4291440456170309
	.quad	0x3fd2ededdf1d3b60              # double 0.29577204502577636
	.quad	0x3fc58bb56e11bbac              # double 0.1683260714957816
	.quad	0x3fe45f2a804408d1              # double 0.63661694576173933
	.quad	0x3fb1e117334ffd30              # double 0.069840860393004744
	.quad	0x3fe477fba56384ce              # double 0.63964636137475295
	.quad	0x3fd99417fb76196e              # double 0.39966392094392844
	.quad	0x3fe33d15cc91cba1              # double 0.60120668368323404
	.quad	0x3fedb73683644a50              # double 0.92861486113026537
	.quad	0x3fdb03a92cd04c1a              # double 0.42209843994459251
	.quad	0x3fef8c1c409579a6              # double 0.98585331548729438
	.quad	0x3fced8950c2013cc              # double 0.24098456470542684
	.quad	0x3fdc741dadca5578              # double 0.44458715411868566
	.quad	0x3fdaba88fe1291fe              # double 0.41763520061275006
	.quad	0x3fd2a72c4ffc9bd8              # double 0.2914534360046992
	.quad	0x3fde5abecb4f98c8              # double 0.47428865294058342
	.quad	0x3feb210b6b69d386              # double 0.84778376559425861
	.quad	0x3fbb19be5021e840              # double 0.10586156326635976
	.quad	0x3fc6499a957d0a84              # double 0.17412121104469602
	.quad	0x3fbea898972cd558              # double 0.11976007166670877
	.quad	0x3fb87f257a4b4490              # double 0.0956901000565884
	.quad	0x3fd54005a283f32a              # double 0.33203259344718339
	.quad	0x3fe97dbb75fd6657              # double 0.79659817738429239
	.quad	0x3fd248290db1e930              # double 0.28565431916617268
	.quad	0x3fe8cdeac8ffc00d              # double 0.77513636834737698
	.quad	0x3fe925a50df5ca37              # double 0.78584530569634736
	.quad	0x3fd1939e3af55856              # double 0.27463489301351751
	.quad	0x3fc138e5904a8e80              # double 0.13454885049315024
	.quad	0x3fddf1ae68595760              # double 0.46787605467158322
	.quad	0x3fe63c041c27f3fe              # double 0.69482617854339401
	.quad	0x3fed5c8072f09218              # double 0.91754171799817907
	.quad	0x3feb6a365a998913              # double 0.8567153710867238
	.quad	0x3fe971e64127db4b              # double 0.79515373922081645
	.quad	0x3fed9893e7822a17              # double 0.92487521378035609
	.quad	0x3feb87f0df2db134              # double 0.86034434880779153
	.quad	0x3fd641929c7ed904              # double 0.34775224001658978
	.quad	0x3fea7d98a805afc6              # double 0.82783158127630752
	.quad	0x3fdf44eb1cda852a              # double 0.48858144586309271
	.quad	0x3f77a9aa921b5a00              # double 0.0057770407599577744
	.quad	0x3fd519db1ac01fce              # double 0.32970311748840408
	.quad	0x3fee769bf4f4e641              # double 0.95197866290181576
	.quad	0x3fe89977e6ef1c2b              # double 0.76873393158246495
	.quad	0x3fd9b19717093e4a              # double 0.40146424531574054
	.quad	0x3fec4aea60673721              # double 0.88414496258494435
	.quad	0x3fe4d6ab58be04cd              # double 0.65120475132439426
	.quad	0x3feb49f86441a28b              # double 0.85277957516980629
	.quad	0x3fdc550670a6c700              # double 0.44268952370758541
	.quad	0x3fed4ed1981a9c66              # double 0.91587142665674715
	.quad	0x3fed74e83fde1dce              # double 0.92052090143345722
	.quad	0x3fe4b972776aea65              # double 0.64763758968122132
	.quad	0x3fd932ae9efbff20              # double 0.39371839071098869
	.quad	0x3fdfd309092323c6              # double 0.49725557224570271
	.quad	0x3fd01609560c1bfe              # double 0.25134499934250687
	.quad	0x3fe706b84a885915              # double 0.71957029873991252
	.quad	0x3feeb337283da9de              # double 0.95937688693566847
	.quad	0x3fe2d57af8d06085              # double 0.58855961414794022
	.quad	0x3feb3e6ded296321              # double 0.85137077637327618
	.quad	0x3fdc910263197458              # double 0.4463506667869459
	.quad	0x3fe779aec8116b07              # double 0.73360385013379037
	.quad	0x3feb475c885b600b              # double 0.85246111519063683
	.quad	0x3fdd9ff9f5bfbade              # double 0.46288918494148656
	.quad	0x3feb60be287e947f              # double 0.85555942448685574
	.quad	0x3fee0773b8043888              # double 0.93840967121811136
	.quad	0x3fd2cb0195c17ffe              # double 0.29364051460834151
	.quad	0x3fc69e480dff300c              # double 0.17670536693037808
	.quad	0x3feac561ff77b442              # double 0.83659458061232095
	.quad	0x3fca9c1e3c52f5bc              # double 0.20788934655676694
	.quad	0x3fc2c72d3583b544              # double 0.14670338738452859
	.quad	0x3fe6b7784ea93833              # double 0.70989623416404013
	.quad	0x3fdaffde337e9964              # double 0.42186694172632699
	.quad	0x3fefa21c2646922c              # double 0.98853881335941684
	.quad	0x3fe19fab56cf9a60              # double 0.5507408805395464
	.quad	0x3fec6f890d85f5e9              # double 0.88861515656725232
	.quad	0x3f80537216200c80              # double 0.0079716599466392868
	.quad	0x3fdd08ae8a1c954c              # double 0.45365489470926401
	.quad	0x3fd01497fb287578              # double 0.25125693823959905
	.quad	0x3fe41958838ffdf3              # double 0.62809396453661603
	.quad	0x3fcc3c5eee7811e0              # double 0.22059237140650989
	.quad	0x3fae6e46e323d010              # double 0.059435096003568444
	.quad	0x3fe5be43d948a10f              # double 0.6794757121870435
	.quad	0x3fd4f48d184c2810              # double 0.32742621777345082
	.quad	0x3fc40c14d3a450b0              # double 0.15661869367671022
	.quad	0x3fedfad3cf529474              # double 0.93686857693377456
	.quad	0x3feb8533df75799a              # double 0.8600100864821798
	.quad	0x3fea6dab89f30314              # double 0.82588746016708336
	.quad	0x3fec758efd2413f8              # double 0.88935040895068962
	.quad	0x3fe7bd7bfbe96ffd              # double 0.74188040925537246
	.quad	0x3fdaa47b065914ca              # double 0.41628909702224048
	.quad	0x3fe6818d73f4064c              # double 0.70331452033151143
	.quad	0x3fc9829bc5ad97b0              # double 0.19929835464716694
	.quad	0x3fccf22fd6729f00              # double 0.22614095660286893
	.quad	0x3fd58afd86b62486              # double 0.33660829692286887
	.quad	0x3fe47513fc32a406              # double 0.63929175622354317
	.quad	0x3fd130d749940e7e              # double 0.26860601601968159
	.quad	0x3fd8d018f43c6d44              # double 0.38770126200843813
	.quad	0x3feb9e3a0ffaa9e0              # double 0.86306479569367056
	.quad	0x3fec18225f3a69fa              # double 0.87794607733968566
	.quad	0x3fa4e02b7e0fd640              # double 0.040772780550395016
	.quad	0x3fb53779c14a9ff8              # double 0.082877740564640479
	.quad	0x3fe68c59262b0de4              # double 0.70463235335085672
	.quad	0x3fe0941aa1f1e174              # double 0.51807910566189586
	.quad	0x3fdd8478efd0015e              # double 0.46121047419730654
	.quad	0x3feb3a8e1f350228              # double 0.85089784712915151
	.quad	0x3fe83a633cbdd2f5              # double 0.75712739814352281
	.quad	0x3fe55616763322fc              # double 0.66675875745667623
	.quad	0x3fc421469a4ccc98              # double 0.15726549657992872
	.quad	0x3fe7332f08a9b267              # double 0.72499801341980408
	.quad	0x3fbfad024a3f0b80              # double 0.1237336570039087
	.quad	0x3fe785a97a22ba09              # double 0.73506616453761453
	.quad	0x3fe2da6e525d7f20              # double 0.58916393362958175
	.quad	0x3fef09942e75d560              # double 0.96991929125094245
	.quad	0x3fe560ab0dbe103f              # double 0.66805031475133336
	.quad	0x3fe0043fe659b6ab              # double 0.50051875105210308
	.quad	0x3fd0ef8d9449896c              # double 0.2646211574666697
	.quad	0x3fe79b45a71d9fc5              # double 0.73770411147869963
	.quad	0x3fe04192c97d8a17              # double 0.5080045638426921
	.quad	0x3fda7a272b9e6008              # double 0.41370562801012101
	.quad	0x3fe958d201f4077d              # double 0.79209232694141429
	.quad	0x3fe29bae671212d2              # double 0.58150406008697986
	.quad	0x3fcb6ad796ee2c40              # double 0.21419806356093041
	.quad	0x3fd271ddc6e92ec6              # double 0.28819984841241497
	.quad	0x3fe0f1524d5a3dce              # double 0.52945819003974193
	.quad	0x3fd27f89a14da19e              # double 0.28903427841444251
	.quad	0x3fdebca94f080d06              # double 0.48026497571864046
	.quad	0x3fec1459441bd591              # double 0.877483971619471
	.quad	0x3fee15089474e7a2              # double 0.94006756778184219
	.quad	0x3febed8a5a2f2169              # double 0.87274663557131504
	.quad	0x3fac7cb856b13850              # double 0.055639038641502325
	.quad	0x3fe8d252e03ef07c              # double 0.77567428396243043
	.quad	0x3fe4a1400dcf016d              # double 0.64468386361117569
	.quad	0x3fe291edee3e79fe              # double 0.58031364948311626
	.quad	0x3fe61ee002b01585              # double 0.69126892590490796
	.quad	0x3fe03e87f7f41d0a              # double 0.50763319424086828
	.quad	0x3feafbe207959b17              # double 0.84324742776229555
	.quad	0x3fe175ae615af8f7              # double 0.54561537756651901
	.quad	0x3feae6aaacf9b208              # double 0.8406575563836336
	.quad	0x3fd3796692a07cfa              # double 0.30428470915826689
	.quad	0x3fdbaadcfab37e5e              # double 0.43230366213353999
	.quad	0x3fdf70288860a910              # double 0.4912206012546827
	.quad	0x3fe0dac2a6eb5f5f              # double 0.52670414544534683
	.quad	0x3fed874ed188605f              # double 0.9227670757709453
	.quad	0x3fd42d1a646865be              # double 0.31525287442635974
	.quad	0x3fea0aa5258fb280              # double 0.81379945121950925
	.quad	0x3fb9ef55a44ac5c0              # double 0.10130820523297412
	.quad	0x3fcd7701624c8fc8              # double 0.23019425678023553
	.quad	0x3fd92a439beb2d4e              # double 0.39320459581786771
	.quad	0x3fea429dff885e12              # double 0.82063198002555482
	.quad	0x3fdf1f53ad325a94              # double 0.48628703988780697
	.quad	0x3fe5d64a19ec8215              # double 0.68240838111165891
	.quad	0x3fd5d0238e6aa7ec              # double 0.34082878978608622
	.quad	0x3fb74799d905a868              # double 0.09093629406348358
	.quad	0x3feb4486ce0ea3e2              # double 0.8521150612406212
	.quad	0x3fc50406e8440fa8              # double 0.16418539372545848
	.quad	0x3fe2a821838b2969              # double 0.58302379314527031
	.quad	0x3fd0d9c1154f0026              # double 0.2632906635371931
	.quad	0x3fdefd91750850e0              # double 0.48422657422021409
	.quad	0x3fda07e84e79c730              # double 0.40673263229028844
	.quad	0x3fe44bacb2e8a98f              # double 0.63423762267238881
	.quad	0x3fc5bb06541f26a8              # double 0.16977004153732378
	.quad	0x3fd7cbbc21b99c5e              # double 0.37180999082051425
	.quad	0x3fe31e021ba4e6d9              # double 0.59741311454055357
	.quad	0x3fb78dd8483c96e0              # double 0.092008130679996025
	.quad	0x3fefdb76fbdf8f64              # double 0.99554013437271438
	.quad	0x3fef5406d3065aaa              # double 0.97900716033730828
	.quad	0x3fb3980a3138f3f8              # double 0.076538693444447747
	.quad	0x3fe82575f6043970              # double 0.75457284975145278
	.quad	0x3fea4f81e10c6639              # double 0.82220548586628361
	.quad	0x3fc023560bc771f4              # double 0.1260783727183391
	.quad	0x3fd412787fe27de8              # double 0.31362736214393161
	.quad	0x3fec313b1467f7cd              # double 0.88100961671420353
	.quad	0x3fd8b9e4fa734ba0              # double 0.38634609659237107
	.quad	0x3fd972c3575f8dc0              # double 0.39762958080811117
	.quad	0x3fcbe53e680ed250              # double 0.21793346482231124
	.quad	0x3fe17651e1708fe7              # double 0.54569334059897023
	.quad	0x3fdd351fa32dd59c              # double 0.45636740622952643
	.quad	0x3fed6d801f741498              # double 0.91961675780534602
	.quad	0x3fceafbe92be3b64              # double 0.23973829426946758
	.quad	0x3fe6d3b2f3d829af              # double 0.71334216714722298
	.quad	0x3fe480eeab9f9a3e              # double 0.64073880691723395
	.quad	0x3fc5f0b25d6b5448              # double 0.17140798150527048
	.quad	0x3fe19a5be869bbec              # double 0.55009265320938772
	.quad	0x3feec4e0ca83c78e              # double 0.96153296998657978
	.quad	0x3fe5c40b51639ea9              # double 0.68018117805782652
	.quad	0x3fdd04e0a898a93a              # double 0.45342270340428892
	.quad	0x3fd9c22dba78bfd6              # double 0.40247672281384206
	.quad	0x3fdb9626ff71c612              # double 0.43103957124466874
	.quad	0x3fd2def1276d59dc              # double 0.29485730028446056
	.quad	0x3fea45040b016a80              # double 0.82092477941053232
	.quad	0x3fd114aaddb2e154              # double 0.26688644075649859
	.quad	0x3fd98ba47055391e              # double 0.3991480919838909
	.quad	0x3fcd365a78893bbc              # double 0.22822123418379003
	.quad	0x3fec2c288742ed25              # double 0.88039041918037653
	.quad	0x3fe50d2db662e61b              # double 0.65785871145562014
	.quad	0x3fe0a21f97aba180              # double 0.51979045508510069
	.quad	0x3fef7afff6a926c1              # double 0.98376463104178679
	.quad	0x3fe96fb211f344cf              # double 0.79488471513664105
	.quad	0x3fe3948f36fd049e              # double 0.61188469638740961
	.quad	0x3fe26ed50ad36744              # double 0.5760293208543108
	.quad	0x3fcc91c22d3ccef0              # double 0.22319819649566552
	.quad	0x3fd3567a289ea8aa              # double 0.30215314833425089
	.quad	0x3fd60d89d033a37c              # double 0.34457631427954261
	.quad	0x3fe1120830f836ec              # double 0.53345117153523125
	.quad	0x3fd1cb2135f3b78a              # double 0.2780230547785939
	.quad	0x3fe0b3a10a5910e9              # double 0.52192737599446304
	.quad	0x3febf535774af7b8              # double 0.87368272113211898
	.quad	0x3fd2a17c359232e6              # double 0.29110627395202326
	.quad	0x3fef89a8fbc14458              # double 0.98555421038521284
	.quad	0x3fe45f6eea4b0351              # double 0.63664956817965834
	.quad	0x3fe7c55d93bf5c12              # double 0.74284247261937453
	.quad	0x3fa61626bfd45390              # double 0.043137751499819577
	.quad	0x3fe8996e1af0b4d7              # double 0.76872926008004583
	.quad	0x3fe9f340ec2b23fb              # double 0.81094404341376902
	.quad	0x3fce06e6666b4030              # double 0.23458557129788593
	.quad	0x3fee010e5749b833              # double 0.93762890861922299
	.quad	0x3fe5869d1b3e65a9              # double 0.67268233605425565
	.quad	0x3fda898cef93a020              # double 0.41464541813047795
	.quad	0x3fe7955981ad63ae              # double 0.73698115661237806
	.quad	0x3fda7b22f401bd12              # double 0.41376565769947249
	.quad	0x3fe16f125a5d52ca              # double 0.54480855607342815
	.quad	0x3fd34a46b834c69c              # double 0.30140846241838815
	.quad	0x3fef6a0228d8a1e3              # double 0.98169048288133031
	.quad	0x3fe9ed86294ca103              # double 0.81024463716769934
	.quad	0x3fe51b625dc3317f              # double 0.65959280312522128
	.quad	0x3faebee90a83ed50              # double 0.060050280126200506
	.quad	0x3fede84886af053b              # double 0.93460489564328186
	.quad	0x3fe09fa5fe9c1643              # double 0.51948833206615352
	.quad	0x3fe2f7bacf11f35c              # double 0.59274044459707964
	.quad	0x3fd258a0f089a1ca              # double 0.28665946474077642
	.quad	0x3fd5a46b8da5b188              # double 0.33816040833223626
	.quad	0x3fe1334bbe0cec61              # double 0.53751170272097337
	.quad	0x3fd549210e9aa22c              # double 0.33258844782042973
	.quad	0x3fd8308ae7d58976              # double 0.37796280517627368
	.quad	0x3fefbfe8a7b76762              # double 0.99217636830438161
	.quad	0x3fe2ba47f63c6986              # double 0.58523939221349575
	.quad	0x3fed17141bcb3003              # double 0.90906720570046706
	.quad	0x3fcce891292417e8              # double 0.22584738262975113
	.quad	0x3fdcfaaed83e74ca              # double 0.45280047528815415
	.quad	0x3fbea086cb63ed28              # double 0.11963694062790309
	.quad	0x3fc415c83fb65da0              # double 0.15691474066691757
	.quad	0x3fc3587a6e9ae294              # double 0.1511376419128011
	.quad	0x3fe30089f7dafe5a              # double 0.59381578835741355
	.quad	0x3fe284b00c6cc903              # double 0.57869722773310206
	.quad	0x3fd88ebb742df4f2              # double 0.38371168466240058
	.quad	0x3fd20adc37ad1ba6              # double 0.28191285550240719
	.quad	0x3fe33afefafb1374              # double 0.60095166225128915
	.quad	0x3fee5ffcd5e89c88              # double 0.94921724108725502
	.quad	0x3fc6ef1bb2540ab0              # double 0.17917200286327306
	.quad	0x3fef90230f62c198              # double 0.98634484295876045
	.quad	0x3fe0dbcc5cfc9340              # double 0.52683084641885358
	.quad	0x3fe5d5aef1329759              # double 0.68233439549360775
	.quad	0x3fdf3bfe6da7bbae              # double 0.48803673466221198
	.quad	0x3fee31ad63b17cdc              # double 0.94356412383413212
	.quad	0x3fbec43b041d4568              # double 0.12018174028823625
	.quad	0x3feb55d53f95801f              # double 0.85422766131160077
	.quad	0x3fd06122e5dfad74              # double 0.25592873047454323
	.quad	0x3fe6ca820a7de68b              # double 0.71222021149806503
	.quad	0x3fe52a29942a38cd              # double 0.66139677942717301
	.quad	0x3fd0ad19b4cf2d7e              # double 0.26056521088749907
	.quad	0x3fbfcde9baf00ad0              # double 0.12423573316486203
	.quad	0x3fe7fd583d6068bd              # double 0.74967586505524475
	.quad	0x3fe069f87ec696ea              # double 0.51293587456595202
	.quad	0x3fdb629e0d64fdfc              # double 0.42789412792259873
	.quad	0x3fe4f17a185acb08              # double 0.65447716480989104
	.quad	0x3fd1f57843da5d26              # double 0.28060728670375779
	.quad	0x3fd8c093b7c0ca2c              # double 0.38675396866452405
	.quad	0x3fe0e1a7b81a38f8              # double 0.52754579503542143
	.quad	0x3fea13014376a191              # double 0.81481993843503819
	.quad	0x3fdab1c34315bdd0              # double 0.41709977675688226
	.quad	0x3fdd86c31c5cf952              # double 0.461350228975694
	.quad	0x3fe7564aecc8993e              # double 0.72928377386850918
	.quad	0x3fe08afcd5fea638              # double 0.51696626468510143
	.quad	0x3feb36e9736ea420              # double 0.85045311494207354
	.quad	0x3fe75ed013a11e92              # double 0.73032382806646212
	.quad	0x3fe32eec11e8447e              # double 0.59947780129927231
	.quad	0x3fed4d7886b43168              # double 0.91570688542701095
	.quad	0x3fe90edf27cbbaa4              # double 0.78306539318676415
	.quad	0x3f81a9ef34d4e240              # double 0.0086249053953092458
	.quad	0x3fa28aa08ce02af0              # double 0.036213891216979266
	.quad	0x3fc8cf849b82c658              # double 0.19383294671347318
	.quad	0x3fd459e092e938fc              # double 0.3179856714895235
	.quad	0x3fa183c050621d60              # double 0.034208307087335355
	.quad	0x3fe942790587d0e2              # double 0.78936434822255941
	.quad	0x3fbe258e02a388e0              # double 0.11776053966926581
	.quad	0x3fd4fc9912f1c790              # double 0.32791735506099773
	.quad	0x3fd67c1484c85c04              # double 0.35132325141006526
	.quad	0x3fc87ba32a92e504              # double 0.19127311304854555
	.quad	0x3fd387ee1203c728              # double 0.30517150649312663
	.quad	0x3fecbd2c0942dd95              # double 0.89809228714777822
	.quad	0x3fb79e7f24276b00              # double 0.092262216879515079
	.quad	0x3fcd9190cc3ef028              # double 0.23100481007520668
	.quad	0x3feeb03793b85d39              # double 0.95901087619396385
	.quad	0x3fdca04c3d77dd8c              # double 0.44728380205875662
	.quad	0x3fe064496188b76f              # double 0.51224202203387204
	.quad	0x3fea8211608ed861              # double 0.82837742670995962
	.quad	0x3fc6cccc337c12a8              # double 0.17812492860698126
	.quad	0x3fe41e84baddf95a              # double 0.6287253999469542
	.quad	0x3fe32b2ce8808106              # double 0.5990204373411252
	.quad	0x3fd3025a1efceaa4              # double 0.29701855684440148
	.quad	0x3fe7ef52da77ab8b              # double 0.74796431226182969
	.quad	0x3fb1fa59ddc267b0              # double 0.070226303711392601
	.quad	0x3fe32967fbd0889b              # double 0.59880446608100912
	.quad	0x3fdac10042f73610              # double 0.41802984752288896
	.quad	0x3fac934edca57420              # double 0.055811371263850384
	.quad	0x3fd5026c53bb1b6a              # double 0.32827289749950828
	.quad	0x3fb76ae85d13a090              # double 0.091475031589313582
	.quad	0x3fe90a32a590f61f              # double 0.78249485337409286
	.quad	0x3fa19e400ef0e0c0              # double 0.034410478423923418
	.quad	0x3fbc143677400d70              # double 0.10968342219716987
	.quad	0x3fd881a40cd87828              # double 0.3829126477666045
	.quad	0x3fd05f69c9d49bce              # double 0.25582356176385879
	.quad	0x3fb8430620b4de90              # double 0.094772704110136496
	.quad	0x3fdea884a13edf9a              # double 0.47903552767410817
	.quad	0x3fe17cd502500931              # double 0.54648828937232541
	.quad	0x3fc7dbd4bd12cb40              # double 0.18639621002292905
	.quad	0x3fb8b654a0dafaa0              # double 0.096532143851599361
	.quad	0x3fdf806d8f842a8a              # double 0.49221362128506796
	.quad	0x3fead6c92d2c7197              # double 0.8387189752862011
	.quad	0x3fe2e8b92d861269              # double 0.59090861216880086
	.quad	0x3fe6882b38be7564              # double 0.70412217219169948
	.quad	0x3fd1a5da630d7eda              # double 0.27574786828152542
	.quad	0x3fe41e764743a2a0              # double 0.6287185088995848
	.quad	0x3fd501e5b6d71954              # double 0.32824080329409822
	.quad	0x3fe53a23892550f1              # double 0.66334702287943348
	.quad	0x3fdbb1085350a3da              # double 0.43268020759802328
	.quad	0x3fc3fb6fa49606f4              # double 0.15611072098186407
	.quad	0x3fb262ae7bb1a230              # double 0.071818261336041855
	.quad	0x3fe2d1b0b4575ac2              # double 0.58809695456405842
	.quad	0x3fbb03c348660eb8              # double 0.1055261661295458
	.quad	0x3f7c253bf571d780              # double 0.0068714468135250284
	.quad	0x3fd6aa5de0dfb57c              # double 0.35414835892046148
	.quad	0x3fea87a5fc0e3aca              # double 0.82905863980871541
	.quad	0x3fd7c77fb452a452              # double 0.37155144319200872
	.quad	0x3fed9431976711af              # double 0.92434005328009572
	.quad	0x3fe6742943115d2e              # double 0.70167983149705093
	.quad	0x3fd918573576ab58              # double 0.39211063595819473
	.quad	0x3fe0d94d9de11394              # double 0.52652626834661698
	.quad	0x3fed2aeec5bb7f36              # double 0.91149080867396637
	.quad	0x3fe2055ed6aeecf4              # double 0.56315557413418427
	.quad	0x3fe52877a28602ab              # double 0.6611898588453945
	.quad	0x3fe4772eb0009185              # double 0.63954862952645952
	.quad	0x3fef9c8d6dadfde3              # double 0.98786040708358446
	.quad	0x3febe25b9e85bccd              # double 0.87138157807739847
	.quad	0x3fefeb9cf1dc1e14              # double 0.99751136053322619
	.quad	0x3fc96a2b0a84a224              # double 0.19855249417857224
	.quad	0x3fe48d43b42e4508              # double 0.64224419776488251
	.quad	0x3fe0141d447e9826              # double 0.50245536210855302
	.quad	0x3f9b79d3f5cf9160              # double 0.02683192432222492
	.quad	0x3fa1508831b352a0              # double 0.033817535464242043
	.quad	0x3fef674f7d4ced63              # double 0.98136114571336141
	.quad	0x3fe75f8b0dfa43a2              # double 0.73041298608778882
	.quad	0x3fe847c16a510501              # double 0.75875921978891381
	.quad	0x3fe232baa6920649              # double 0.568692517597989
	.quad	0x3fe858cfd6a7c394              # double 0.76084129261845356
	.quad	0x3fea0acc8e5a084d              # double 0.81381824305595674
	.quad	0x3fd0c7bed4d7c396              # double 0.26219149384911
	.quad	0x3fe5640fee04c0d0              # double 0.66846462715150246
	.quad	0x3fe1402488950c33              # double 0.53907992054190002
	.quad	0x3fe8e11cc315120c              # double 0.77747953512204182
	.quad	0x3fbac4ea453fc960              # double 0.10456718626645545
	.quad	0x3fd1da1f4ad2683e              # double 0.27893812472177959
	.quad	0x3fe809a033aa9f45              # double 0.75117502299415462
	.quad	0x3fd01ed8f1dc0ce2              # double 0.25188277834986483
	.quad	0x3fe52acc38d98452              # double 0.66147433379604537
	.quad	0x3fb53578f51274d8              # double 0.082847175437979259
	.quad	0x3fee9315c5e6d63d              # double 0.95545471813847593
	.quad	0x3feb9e6e1b6e98d1              # double 0.86308961255852001
	.quad	0x3fd78430cfec6dac              # double 0.36744327836069135
	.quad	0x3fcf3f0fa71289e8              # double 0.24411197336037493
	.quad	0x3fef6887d01ba68e              # double 0.98151007314773309
	.quad	0x3fe2cc56a48b172b              # double 0.58744365823142652
	.quad	0x3fd55b9c5731c1be              # double 0.33371647372316804
	.quad	0x3feaebe7618c107c              # double 0.84129685451672697
	.quad	0x3fe7a605df3bea38              # double 0.73901647186659769
	.quad	0x3fc7aab5eb051be8              # double 0.18489717460235444
	.quad	0x3fe1a5a83275d53e              # double 0.55147180419468333
	.quad	0x3fc0cf6c364e42c4              # double 0.13133003856321157
	.quad	0x3fd0a48b56acecaa              # double 0.26004298653033209
	.quad	0x3fe618afad46685b              # double 0.69051345675257936
	.quad	0x3fc5d5080a51b5d4              # double 0.17056370262018439
	.quad	0x3fab98e0ddb8ac50              # double 0.053900744500730569
	.quad	0x3febc2495e5be6ab              # double 0.86746662549486098
	.quad	0x3fe36893f1a0cab6              # double 0.60651585762965143
	.quad	0x3fe37e1e9012de17              # double 0.60914543284792699
	.quad	0x3fb0cad06288e4d8              # double 0.065594696098645655
	.quad	0x3fd006c72704bdbc              # double 0.25041369257356982
	.quad	0x3feef4cc59b52aaf              # double 0.96738259812385318
	.quad	0x3fe56712900e94e0              # double 0.66883209358334383
	.quad	0x3fa2fc91f2dd90b0              # double 0.037083207031885279
	.quad	0x3fba7bf58eaa7fd0              # double 0.10345396740967705
	.quad	0x3fd2606e512402c2              # double 0.28713567661183614
	.quad	0x3fcfe67a44ec6c3c              # double 0.24922111859709328
	.quad	0x3fe478bebbb827ec              # double 0.63973938621461235
	.quad	0x3fe18481050624bd              # double 0.54742480260133386
	.quad	0x3fe48619c7acc068              # double 0.641369714727273
	.quad	0x3fc0626ed161056c              # double 0.12800393317779013
	.quad	0x3fe9aeb7ec558b25              # double 0.80257793578161751
	.quad	0x3fedc0622eaba7a1              # double 0.92973431697213382
	.quad	0x3fc6eed69674a784              # double 0.1791637644431
	.quad	0x3fd679ca75a92328              # double 0.35118352403928776
	.quad	0x3fe664ad64a6b9de              # double 0.69978971155597569
	.quad	0x3fe7d1c60a8ec9b6              # double 0.74435712873519466
	.quad	0x3fcf35bc24ccec10              # double 0.24382736012361805
	.quad	0x3fddea3315ff3d84              # double 0.46741940639636703
	.quad	0x3fe486f934d2d99b              # double 0.64147625271907616
	.quad	0x3fef4df8cfbad511              # double 0.97826805660466409
	.quad	0x3fc9a2edfda9d25c              # double 0.20028471837908313
	.quad	0x3fe9b3298f7c242e              # double 0.8031204035224897
	.quad	0x3fe85236677b5892              # double 0.76003570758145345
	.quad	0x3fe4e948984375ac              # double 0.6534769987007869
	.quad	0x3fdcfc2740fb2eec              # double 0.45289021821802922
	.quad	0x3fe06728d99d5b31              # double 0.51259272101274267
	.quad	0x3fe2310ac5885b5e              # double 0.56848658161730348
	.quad	0x3fb8113f59ca6908              # double 0.094013175412701711
	.quad	0x3fe01ab0069b10db              # double 0.50325776376896714
	.quad	0x3fe304582a720473              # double 0.59428032198060377
	.quad	0x3fef79ec23138526              # double 0.98363310671644366
	.quad	0x3fe3e22ba83c49f1              # double 0.6213587079858468
	.quad	0x3fe7a880c084d6df              # double 0.73931920625065206
	.quad	0x3fe7aa1b37dfbd43              # double 0.73951493180167238
	.quad	0x3fcfaaac928627b0              # double 0.24739606050962726
	.quad	0x3fe74f9d7dd3c3aa              # double 0.72846865249276971
	.quad	0x3fefbfc4ab810a9e              # double 0.99215920922172862
	.quad	0x3fdd3af5733a0754              # double 0.45672355892758287
	.quad	0x3fdd64e62f5bedc8              # double 0.45928339600478951
	.quad	0x3fe9e63517f46f73              # double 0.80935148886372443
	.quad	0x3fd6cf058e00b4f4              # double 0.3563856016870226
	.quad	0x3fe3176ee3f7f34d              # double 0.59661049389942777
	.quad	0x3feadc65077e639a              # double 0.83940364326109607
	.quad	0x3fd414e5a48d9fa8              # double 0.31377545423174036
	.quad	0x3fecffe880944839              # double 0.90623879540567664
	.quad	0x3fe4bb959cf3f789              # double 0.64789848952180862
	.quad	0x3fd73b12e45d4366              # double 0.36298057843401066
	.quad	0x3fda42349a10e42c              # double 0.41029086156373995
	.quad	0x3fd59f582fcbd394              # double 0.33785061519238835
	.quad	0x3fcea0f31be7740c              # double 0.23928679335122671
	.quad	0x3fcf187b27fbaa0c              # double 0.24293460323617955
	.quad	0x3fe788f94881f368              # double 0.73547043000835988
	.quad	0x3fdfd2421f026dca              # double 0.49720814731855667
	.quad	0x3fed6f11efdf5f43              # double 0.91980835771662617
	.quad	0x3fe8dde393bd1707              # double 0.77708605628205951
	.quad	0x3fdcaf1ac51a84a8              # double 0.44818753479382645
	.quad	0x3fad704bf401fca0              # double 0.057497380767921102
	.quad	0x3fd8ee75d9249034              # double 0.38955446439127006
	.quad	0x3fe50f3d60fb952b              # double 0.65811032239858969
	.quad	0x3fe3fccb5eae2346              # double 0.62460869304877842
	.quad	0x3fbffe2017589310              # double 0.12497139520617062
	.quad	0x3fe648aa3db734c4              # double 0.69637023977124857
	.quad	0x3fefec697ecef382              # double 0.99760889785066831
	.quad	0x3fdceb9568ec91da              # double 0.45187888380521957
	.quad	0x3fd882bb42f09d0a              # double 0.38297921692942849
	.quad	0x3fefcad80366e37c              # double 0.99351120628772049
	.quad	0x3fe2e5d34600f804              # double 0.59055484459509033
	.quad	0x3fdfb5fad1266834              # double 0.4954821627121675
	.quad	0x3fdb89737ef85a84              # double 0.43026435279299613
	.quad	0x3feb316209b524b6              # double 0.84977819343580197
	.quad	0x3fe84ffc3bf3b3f3              # double 0.75976382932060316
	.quad	0x3feb05f712412956              # double 0.84447816434230094
	.quad	0x3fece4666a2b37db              # double 0.90288086639497622
	.quad	0x3fee8d1067c0d31b              # double 0.95471973671246546
	.quad	0x3fbbd30d9319dce0              # double 0.10868916360219627
	.quad	0x3fe4eb0333251995              # double 0.65368804921381474
	.quad	0x3fefe6874a8dea89              # double 0.99689068375967437
	.quad	0x3fdebed1a9822496              # double 0.4803966670375045
	.quad	0x3fe3750e24e8dd8f              # double 0.60803897103225946
	.quad	0x3feb1fb05cbdd8fe              # double 0.84761827577202076
	.quad	0x3fefd14f2364388e              # double 0.99430043136978141
	.quad	0x3fdc4bb20f9d8fe8              # double 0.4421200897688764
	.quad	0x3f86518ee72d9380              # double 0.010897747449868822
	.quad	0x3fb2796f53e21218              # double 0.072165449122686076
	.quad	0x3fd61b6b0639384a              # double 0.34542346580281402
	.quad	0x3fb34521fb4cd868              # double 0.075273631908972072
	.quad	0x3fd8fce566bc67d2              # double 0.39043555290993226
	.quad	0x3fe45a4ff35cbcbb              # double 0.63602445155802145
	.quad	0x3fe6c93c766920ee              # double 0.71206496359903126
	.quad	0x3fef033d41e4f113              # double 0.96914542074185516
	.quad	0x3fe03b19f4f395d9              # double 0.50721452562418812
	.quad	0x3fe341b4802dcb20              # double 0.60177063975274692
	.quad	0x3fef9356352928a2              # double 0.98673544295276749
	.quad	0x3fe6d594dc4484c1              # double 0.7135719587423851
	.quad	0x3fedb94c84f2fea1              # double 0.92886949507370187
	.quad	0x3fe5fa37392ebb98              # double 0.68679391067950046
	.quad	0x3fe54718c6287d1d              # double 0.66492880537763066
	.quad	0x3feb7f0944d068eb              # double 0.85925734939817511
	.quad	0x3fd7c80a750810ec              # double 0.37158452442987655
	.quad	0x3fc5ec09327182dc              # double 0.17126574481064594
	.quad	0x3fe9dadf5716c266              # double 0.80796782502700348
	.quad	0x3fdaed7081cb5452              # double 0.42074215579242946
	.quad	0x3fe6d2ec60491b8e              # double 0.71324747854019832
	.quad	0x3fe849f0f83d974e              # double 0.75902603611459951
	.quad	0x3fdeacb85248bdae              # double 0.47929199252663579
	.quad	0x3fe90b208d99aba9              # double 0.78260829597762893
	.quad	0x3fdf06c52149cbb0              # double 0.484788210399695
	.quad	0x3fe27e6d7cf2bd85              # double 0.57793306735941086
	.quad	0x3fd46205424ea718              # double 0.31848269915882232
	.quad	0x3fedcc0e4b425ca8              # double 0.93115915965144769
	.quad	0x3fc08bc9a3c85130              # double 0.12926598069373929
	.quad	0x3fc08a7023edfa28              # double 0.1292247939527027
	.quad	0x3fe7b37f1ca03f73              # double 0.74066119757661253
	.quad	0x3fe9d4e530067d01              # double 0.80723819141340425
	.quad	0x3fd627b3d53ba138              # double 0.34617324660804938
	.quad	0x3feae313fcde5cde              # double 0.8402194918479855
	.quad	0x3fda3b28cd5f4b46              # double 0.40986080222971955
	.quad	0x3feee9524cf5a80f              # double 0.96598162680789012
	.quad	0x3fe07388de7b605c              # double 0.51410335019592024
	.quad	0x3fd4e68320627e46              # double 0.32656934893200107
	.quad	0x3fc9e288b182ebc4              # double 0.2022257677798206
	.quad	0x3fd629bd4297b092              # double 0.34629756453683413
	.quad	0x3fed9f2d9babe393              # double 0.92568092732027407
	.quad	0x3fc51e9c78201ef0              # double 0.16499667993070188
	.quad	0x3fd04e49d7930f94              # double 0.25477834751313222
	.quad	0x3fdfc67b22250f12              # double 0.49648931822251641
	.quad	0x3fddc4db6e81c23c              # double 0.46514020721136595
	.quad	0x3f8c3c74a693e340              # double 0.013787185033366733
	.quad	0x3fea8c6d69e5c42a              # double 0.82964201624975442
	.quad	0x3fe48bc2dd57de7b              # double 0.64206069213010097
	.quad	0x3fc6e1457e8c5e4c              # double 0.17874973944775474
	.quad	0x3fede7929bbb1b0c              # double 0.93451815048396857
	.quad	0x3fe5428900b2e2b9              # double 0.66437196861723813
	.quad	0x3fa12dc3e9403e70              # double 0.033552286360756578
	.quad	0x3f9bd54a2e7fdc00              # double 0.027180823410130728
	.quad	0x3feba4b82321ca36              # double 0.86385733472554338
	.quad	0x3fbf5ecc37b8d360              # double 0.12254024849319256
	.quad	0x3fe5a6c1923e46f0              # double 0.67660597384585053
	.quad	0x3fe4368d2027a081              # double 0.63165909080727556
	.quad	0x3fe7ff0570bba9c8              # double 0.74988052385497728
	.quad	0x3feb145f82775368              # double 0.8462369487921082
	.quad	0x3fe1571211864cc4              # double 0.54187873289847532
	.quad	0x3fd52505b8122972              # double 0.33038466430357183
	.quad	0x3fee915e60b081d4              # double 0.95524519810356389
	.quad	0x3fdd64111e0681ba              # double 0.45923259670419336
	.quad	0x3fef502f7bb39bea              # double 0.97853826675861666
	.quad	0x3fe9d962a4af5eba              # double 0.80778629460379325
	.quad	0x3fc0107f09f9b50c              # double 0.12550342547493931
	.quad	0x3fc49650e947499c              # double 0.16083728209066528
	.quad	0x3fc979533a0560cc              # double 0.19901504834229511
	.quad	0x3fe073c321cfe6ca              # double 0.51413113216332218
	.quad	0x3fef54aa52e31cf3              # double 0.97908512295626193
	.quad	0x3fd56148b08baeb4              # double 0.33406274071488018
	.quad	0x3fe26193a59f4b11              # double 0.57441122387021626
	.quad	0x3fec5afd28c48c40              # double 0.8861070438619052
	.quad	0x3fc2ba65539c1498              # double 0.14631334860329015
	.quad	0x3fcf1a49d28276c8              # double 0.24298975733557016
	.quad	0x3fec324b1ff4acd9              # double 0.88113933793411114
	.quad	0x3fdb205f66cfe0da              # double 0.42385087051617421
	.quad	0x3fef420b638d8637              # double 0.97681207126533464
	.quad	0x3fc71f42c4102a98              # double 0.18064150403400414
	.quad	0x3fdb9e202160a088              # double 0.43152621516720346
	.quad	0x3fcb2076397e60fc              # double 0.21192815596874215
	.quad	0x3fce8f908278b190              # double 0.23875624056507805
	.quad	0x3fe8aab52575bbcd              # double 0.77083833042512995
	.quad	0x3fe9d064ce96e324              # double 0.80668869351857042
	.quad	0x3fe19ba2cada58c1              # double 0.55024852390013035
	.quad	0x3fe4c64e2cae56b7              # double 0.64920719839820762
	.quad	0x3feee13d29cd6101              # double 0.96499498524192983
	.quad	0x3fddec9abcbc9ab4              # double 0.46756618911096415
	.quad	0x3fdd3fb9d520a496              # double 0.45701452077134641
	.quad	0x3fd96f508779971e              # double 0.39741910200096864
	.quad	0x3fd9f1c6fc841a38              # double 0.40538191470878671
	.quad	0x3fea93ca6607db12              # double 0.83054084709042031
	.quad	0x3fcea5b675ea33a0              # double 0.2394321513897042
	.quad	0x3fe43b5c1d03c05f              # double 0.6322460715000594
	.quad	0x3fedfb680049667a              # double 0.93693924003601059
	.quad	0x3fecfaa9bf784b14              # double 0.90559852024520859
	.quad	0x3f81a6027b53f2c0              # double 0.0086174196135230252
	.quad	0x3fe7021463571ac1              # double 0.71900386240380254
	.quad	0x3fe8e5fed97e149b              # double 0.77807562331203728
	.quad	0x3fd620053b7d7b98              # double 0.34570437249743113
	.quad	0x3feb8020d1861504              # double 0.8593906490574743
	.quad	0x3fbde27586261f60              # double 0.11673674130554224
	.quad	0x3fe24a8d6d4bf9e0              # double 0.5716006407454266
	.quad	0x3fe1fae7ca37aeaf              # double 0.56187810416800754
	.quad	0x3fefbaae5a8ea7ee              # double 0.9915382164665496
	.quad	0x3fd30b329ac61bca              # double 0.29755845179209628
	.quad	0x3febc9a60634ee0f              # double 0.86836529934174844
	.quad	0x3fbe418f99727e50              # double 0.11818788048048501
	.quad	0x3fde6fac15316570              # double 0.47556593007683201
	.quad	0x3fd91b958b3fd8ae              # double 0.39230860327314587
	.quad	0x3fe721980f1d810f              # double 0.72285082771489495
	.quad	0x3fe947b34fac4278              # double 0.79000249444113901
	.quad	0x3fe963e1d0de1c34              # double 0.79344263834435091
	.quad	0x3fd6c2e1be05d5e4              # double 0.35564464146531649
	.quad	0x3fe935de378a6f64              # double 0.78782568786435236
	.quad	0x3fe318a1155451a6              # double 0.59675649801151986
	.quad	0x3fd0029f935adcaa              # double 0.25016011610154953
	.quad	0x3fb24cc776fd2658              # double 0.071484056997314638
	.quad	0x3fddd1b89669a496              # double 0.46592535675751756
	.quad	0x3fc97a3d57480fe0              # double 0.19904295694152463
	.quad	0x3fd1f9c9a0e2c1a2              # double 0.28087082587719625
	.quad	0x3fd0db5b39eface6              # double 0.26338844926676896
	.quad	0x3fc945c92a8027a8              # double 0.19744219374871119
	.quad	0x3feec876f2ec6eec              # double 0.96197078176507266
	.quad	0x3fdfd8a628333d54              # double 0.49759820867344229
	.quad	0x3fb0d857a04091e0              # double 0.065801121353224357
	.quad	0x3fe637cb584b54d9              # double 0.6943108295914967
	.quad	0x3fe3eebdf283bc83              # double 0.62289330831653478
	.quad	0x3fd2c7922e261d30              # double 0.29343084818579523
	.quad	0x3fea9a068d3f1257              # double 0.83130195223982184
	.quad	0x3feaf39c8ff0221f              # double 0.84223774063963563
	.quad	0x3fe581023c60d4ba              # double 0.67199813645006334
	.quad	0x3fd9be6a7adaf1ba              # double 0.40224706647475339
	.quad	0x3fe1fc3d78c14947              # double 0.56204103074041079
	.quad	0x3fc016a1240823ac              # double 0.1256905961929794
	.quad	0x3feb5b400907b137              # double 0.8548889328353998
	.quad	0x3fc807490296378c              # double 0.18772232652957788
	.quad	0x3fda125557157dc2              # double 0.40736897949497231
	.quad	0x3fb48485e40ad9e0              # double 0.080147140669260875
	.quad	0x3fd456e776aaf4f4              # double 0.31780420864727366
	.quad	0x3fdd2c625fe07234              # double 0.45583400118792672
	.quad	0x3fe3a57033264a76              # double 0.61394510259772406
	.quad	0x3fe35ba5e4f7343d              # double 0.60493750305034377
	.quad	0x3fef0cac8ef449ab              # double 0.97029712601424955
	.quad	0x3fe3b9cf4165b8d1              # double 0.61643183491630726
	.quad	0x3fccdde746da14ac              # double 0.22552195510448791
	.quad	0x3fe7d044d24da180              # double 0.74417344164707799
	.quad	0x3fec4786a11725ad              # double 0.88373118842098608
	.quad	0x3fd2bc7271ed5b16              # double 0.2927518951959639
	.quad	0x3fdbf6576f3a588c              # double 0.43691049444294872
	.quad	0x3fe6f23cf4df9977              # double 0.71707008196680888
	.quad	0x3fe70d8e7d7a2d38              # double 0.72040485865856052
	.quad	0x3fe9b6a354fcde02              # double 0.80354467963383081
	.quad	0x3fb65736e7a67ff8              # double 0.087268287234564812
	.quad	0x3fe84c801fcb2288              # double 0.75933843812625046
	.quad	0x3fc301f683eb3174              # double 0.14849740449279702
	.quad	0x3fcf2d9c948aa4cc              # double 0.24357945683485693
	.quad	0x3fd0785799c8057c              # double 0.25734510438640945
	.quad	0x3fdd60cef64324aa              # double 0.45903371857691389
	.quad	0x3feeeea60d59f7cc              # double 0.96663191421225169
	.quad	0x3fee463cd03aacd8              # double 0.94607391996160128
	.quad	0x3fe6fcc51c12e238              # double 0.71835570796162695
	.quad	0x3fd6dba020cf96bc              # double 0.35715487674893232
	.quad	0x3fdd5f141f4ab9e4              # double 0.45892813735818394
	.quad	0x3fe592e4eec30fdb              # double 0.6741814292258782
	.quad	0x3fc0cc353aaf01c0              # double 0.13123193135653644
	.quad	0x3febd9dcc7a94a2a              # double 0.87034453388543409
	.quad	0x3fa430a51ac6f440              # double 0.039433631437966188
	.quad	0x3feace62895f3e05              # double 0.83769347029186803
	.quad	0x3fefde04ebad1cd8              # double 0.99585195570480333
	.quad	0x3fe1d10ed4e36b7b              # double 0.55676976756818364
	.quad	0x3fe07a0e4224c2ef              # double 0.51489937704726951
	.quad	0x3fcd69ba20833194              # double 0.22978903377078252
	.quad	0x3fd9adc0b5e29122              # double 0.40123002779206918
	.quad	0x3fe7c3211ee8a287              # double 0.74256950413571665
	.quad	0x3fe529420890f717              # double 0.66128637002086321
	.quad	0x3fde4fa86a5ad9e0              # double 0.47361193071574625
	.quad	0x3fdc5cadf7576a1c              # double 0.44315671114387256
	.quad	0x3fb74311aafe7810              # double 0.090867141958796304
	.quad	0x3fe3ba9ba2f9741a              # double 0.61652929144804891
	.quad	0x3fe8a59711dd37f4              # double 0.77021363724793312
	.quad	0x3fdb84c10396ed86              # double 0.42997765875380656
	.quad	0x3fd983e75d7bd044              # double 0.39867576722395293
	.quad	0x3fd0332c97f296fe              # double 0.25312342489847584
	.quad	0x3fc21ddbe58f8418              # double 0.14153622349752548
	.quad	0x3fe3958d48c3c714              # double 0.61200584613672726
	.quad	0x3fb51fd5ad8dea38              # double 0.082517008659046875
	.quad	0x3fd7f72a145f335e              # double 0.37446071614686172
	.quad	0x3fd680e54006e51a              # double 0.35161715748434264
	.quad	0x3fd3865485f7b04a              # double 0.30507386286513294
	.quad	0x3fece75bd27be837              # double 0.90324202642592055
	.quad	0x3fb17118807f2a98              # double 0.068131953593516648
	.quad	0x3fc9dcda9227cf80              # double 0.20205242287158498
	.quad	0x3feaa07427e14f44              # double 0.83208663739285571
	.quad	0x3fd427c3214d924e              # double 0.31492689373252325
	.quad	0x3fdddb0e922946a4              # double 0.46649517320211431
	.quad	0x3fed03ae5bb1dc33              # double 0.90669935139783886
	.quad	0x3fecff22e05ac350              # double 0.90614456004377963
	.quad	0x3fb7f5e3356f6c68              # double 0.093595696016039676
	.quad	0x3fedb411f2f88da6              # double 0.92823121505027895
	.quad	0x3fd1c2ebbd5e9e7a              # double 0.27752202504277756
	.quad	0x3fec71d5a9179092              # double 0.88889582658568345
	.quad	0x3fe2f0dfeafa106d              # double 0.59190364736470047
	.quad	0x3fed9049caaa1bcc              # double 0.9238633116045718
	.quad	0x3fef6e4a168c1908              # double 0.98221306232224581
	.quad	0x3fed9534c14c652c              # double 0.92446363214108862
	.quad	0x3fc4d209bbd0873c              # double 0.16265985174782738
	.quad	0x3fea8001ddc28506              # double 0.82812588989705271
	.quad	0x3fece0b516ead55c              # double 0.90243010021246616
	.quad	0x3fef44d607a48b53              # double 0.97715283863758839
	.quad	0x3fe7d4e7f64d232d              # double 0.74473951440550012
	.quad	0x3fe9bb97f246836c              # double 0.80414960212156705
	.quad	0x3fce8eb1bff36094              # double 0.23872968552200702
	.quad	0x3fc8f748794ac70c              # double 0.19504648134675795
	.quad	0x3fe8e9a83c057e43              # double 0.77852260325375544
	.quad	0x3fe61ea3b7c96395              # double 0.69124017616114719
	.quad	0x3fd7960926ed0cb6              # double 0.36853245545735136
	.quad	0x3fceed36f667fc44              # double 0.24161421805908578
	.quad	0x3f82f6794fce6f00              # double 0.0092591741065954913
	.quad	0x3fe0a8dde57cc9e1              # double 0.52061362096565855
	.quad	0x3fe14b9dbcd0d45b              # double 0.54048048856806064
	.quad	0x3fdbcf028fa0ddf2              # double 0.43450988794526701
	.quad	0x3fe3c094904b2e39              # double 0.6172583406673261
	.quad	0x3fd59815e68d7438              # double 0.33740756525895987
	.quad	0x3f986736eb79ef00              # double 0.023831232187588647
	.quad	0x3fe4989c4c30770f              # double 0.64362921601034084
	.quad	0x3f9a43bbb30814a0              # double 0.025649006654948736
	.quad	0x3fc1d553ece67ae0              # double 0.13932274882696216
	.quad	0x3fcbc57ac92f05c4              # double 0.21696410010740241
	.quad	0x3fc5a592f89570fc              # double 0.16911542070273089
	.quad	0x3fe57d84a0f5915f              # double 0.671572031377348
	.quad	0x3fe3f84da26a2412              # double 0.6240604564819725
	.quad	0x3fd980ab5d7d51ac              # double 0.39847835664593378
	.quad	0x3fdfa81f1a72ccec              # double 0.49463632185798079
	.quad	0x3fee01af58eec159              # double 0.93770568246513186
	.quad	0x3fc47e18a4213284              # double 0.16009815229553592
	.quad	0x3fecfb2f988e203a              # double 0.90566234394010015
	.quad	0x3fa8073b3441a300              # double 0.046930170182184483
	.quad	0x3fc2cd53e0b31aa8              # double 0.14689110252057458
	.quad	0x3fe6e29b7e18ae70              # double 0.71516203525739108
	.quad	0x3fbbd25610e89698              # double 0.10867822563940377
	.quad	0x3fd4c54c53b81aaa              # double 0.32454212356280243
	.quad	0x3fe1f0dd904a135d              # double 0.56065252477183558
	.quad	0x3fe16ab7306ec767              # double 0.54427680453794103
	.quad	0x3fe637e55f27d1f9              # double 0.69432324013774782
	.quad	0x3fe6ce0e753ca5b7              # double 0.71265337846596466
	.quad	0x3fe02af6835db373              # double 0.50524449975419683
	.quad	0x3fc7c61e4c564738              # double 0.18573359229463349
	.quad	0x3fe09f36c7c5dfba              # double 0.51943530100015001
	.quad	0x3fc60b34bce892b4              # double 0.17221698020980158
	.quad	0x3fed2cb23dde3a31              # double 0.91170608600243075
	.quad	0x3fe96e229ff90b2b              # double 0.79469424481098849
	.quad	0x3fd10ad0f7636620              # double 0.26628517302524024
	.quad	0x3fddd993430ae58e              # double 0.46640473887563239
	.quad	0x3fe75175e2f18739              # double 0.72869390797516254
	.quad	0x3fe1ff11eaef2ffb              # double 0.56238647351847193
	.quad	0x3fe7e4059050cad8              # double 0.74658468424453428
	.quad	0x3fed98b3f2f459c9              # double 0.92489049388932998
	.quad	0x3fd3e2269e02de96              # double 0.31067815237791174
	.quad	0x3fed628e64fb4fd4              # double 0.91828078959451397
	.quad	0x3fd56a452934f4ca              # double 0.33461121582133713
	.quad	0x3fb021d07b924b28              # double 0.063015966576398186
	.quad	0x3fe57d21026eff5d              # double 0.6715245292216242
	.quad	0x3fd23b0d1e7cacf6              # double 0.28485420205352285
	.quad	0x3fa4b41edc2e6aa0              # double 0.040436710717775215
	.quad	0x3fbdf24c1369ffe0              # double 0.11697841142631615
	.quad	0x3fc54c472b4b8e24              # double 0.16639031995792763
	.quad	0x3fd55f046bdd1248              # double 0.333924393973835
	.quad	0x3fe2353ed445aa92              # double 0.56899968585396921
	.quad	0x3fed5553fcc58b5f              # double 0.91666602487053328
	.quad	0x3fca9f94705ab5ac              # double 0.2079949902157926
	.quad	0x3fe9d99d8b0248a2              # double 0.8078143801706299
	.quad	0x3fc1ab35ca04b31c              # double 0.13803741802384983
	.quad	0x3fe39a50b3d8d402              # double 0.61258731008877043
	.quad	0x3fdff99b5e32c8be              # double 0.49960979651508441
	.quad	0x3fe79f01529d8a64              # double 0.73815981040781908
	.quad	0x3fdd698cf28690aa              # double 0.45956729587693224
	.quad	0x3fe506a55a589c3c              # double 0.65706126828889166
	.quad	0x3fb389e58b60db88              # double 0.076322886016766955
	.quad	0x3fc76f97426d4d4c              # double 0.1830929827070612
	.quad	0x3fdfdf662658a0a8              # double 0.49801019425150139
	.quad	0x3fcf20c0ccee7f18              # double 0.24318704611231889
	.quad	0x3fd7654fe0c6bee8              # double 0.36555859518828848
	.quad	0x3fe85aae6d55f67b              # double 0.7610695014443104
	.quad	0x3fe00941bc5acc87              # double 0.50112997806572046
	.quad	0x3fcf4dccd7f87660              # double 0.24456177277982061
	.quad	0x3fc0f67e5cfa65ac              # double 0.1325223878855416
	.quad	0x3fe4cdf732303612              # double 0.65014228632361637
	.quad	0x3fd316d3eb8f0d42              # double 0.29826829913891484
	.quad	0x3f9a4b2414db15e0              # double 0.025677264950692336
	.quad	0x3fe1400fc528196c              # double 0.53907001979022828
	.quad	0x3fa409e7181ce7c0              # double 0.039138051694365128
	.quad	0x3fe281d4e0953949              # double 0.57834857810829832
	.quad	0x3fd0e27ea11bba78              # double 0.26382413609727662
	.quad	0x3fee815c4bbea86f              # double 0.95329108041666
	.quad	0x3fc711d58a2887b8              # double 0.18023175474178088
	.quad	0x3fe8bd88765ab6d6              # double 0.77313635936817593
	.quad	0x3fd3868e11aebda0              # double 0.30508758284391924
	.quad	0x3fe8dc30310488de              # double 0.77687844823619989
	.quad	0x3fdefba368fc225e              # double 0.48410878422195036
	.quad	0x3fc42aaed5bd7ba0              # double 0.15755258022815344
	.quad	0x3fef25c5461e9fc8              # double 0.97336066909064644
	.quad	0x3fdc97244ebe2e9e              # double 0.44672496499763692
	.quad	0x3fe835cb6e58546f              # double 0.75656673003926567
	.quad	0x3fe66681eeb91fbc              # double 0.70001312852490782
	.quad	0x3fcd2e72a00810b4              # double 0.22797997297323536
	.quad	0x3fdcc2e872a97ee4              # double 0.44939624021024671
	.quad	0x3fed8e504632c2c6              # double 0.92362226210215037
	.quad	0x3fef9ca8de9e2050              # double 0.98787349205032093
	.quad	0x3fef19a5a042b18d              # double 0.97188073445208689
	.quad	0x3fd134e357f2c4ba              # double 0.26885303105070657
	.quad	0x3f9dd5b7d0a4d7e0              # double 0.029135582074751087
	.quad	0x3fd6f5ee88bd32a4              # double 0.35876048425124396
	.quad	0x3fe351eee4364655              # double 0.60375160763414704
	.quad	0x3fdb1c6ef883eb56              # double 0.42361044186661923
	.quad	0x3fd9e436d6d4c3b8              # double 0.40455409030533529
	.quad	0x3fd3e2f458cb5986              # double 0.31072720214196925
	.quad	0x3fc06718e27618d8              # double 0.12814627702409243
	.quad	0x3fecbc5cb7f45ae5              # double 0.89799343041053403
	.quad	0x3fb62fa70492b840              # double 0.086664618126378379
	.quad	0x3fefdd4ef2240f76              # double 0.99576518338333986
	.quad	0x3fe2e8bf19dd646b              # double 0.59091143657418621
	.quad	0x3fd117dc078c6b94              # double 0.26708126771125618
	.quad	0x3fc65d3bc25d967c              # double 0.1747202586222335
	.quad	0x3fe59f68712121ec              # double 0.67570898147192571
	.quad	0x3fd2185ed4c6472e              # double 0.28273745325815269
	.quad	0x3fe44840a335a601              # double 0.63381988407962819
	.quad	0x3f86371a98099dc0              # double 0.010847289814775674
	.quad	0x3fe396211598fc80              # double 0.61207632272989088
	.quad	0x3feaaac0d1670405              # double 0.83334389590174907
	.quad	0x3fed4cfe69012e9d              # double 0.91564865597452505
	.quad	0x3fd57e16b0ffb234              # double 0.33582083973923038
	.quad	0x3fd4a2a18d40d5f0              # double 0.32242621225608925
	.quad	0x3fb4adb7f5408260              # double 0.080775735259984938
	.quad	0x3fed87f64f7d3207              # double 0.92284694218830132
	.quad	0x3fd28a594d5b85ec              # double 0.2896941428608375
	.quad	0x3fdb64ba95d21c5c              # double 0.42802300101215507
	.quad	0x3feb0ee1c31f5291              # double 0.84556663617930117
	.quad	0x3fd50d3edaaa02f4              # double 0.32893344262997393
	.quad	0x3fbc4a9cb654ad40              # double 0.11051349116740017
	.quad	0x3fe850ca54bc0bc2              # double 0.75986210393636378
	.quad	0x3fb264f32132ea20              # double 0.071852870564648175
	.quad	0x3fe14475bddd318c              # double 0.53960692484683781
	.quad	0x3fd8f0997e0e56d6              # double 0.38968503294141266
	.quad	0x3fe38ff23612df9c              # double 0.61132154999994581
	.quad	0x3fe0b29551ac7ac8              # double 0.52179971649078372
	.quad	0x3fdfd7a230b24462              # double 0.49753622775558004
	.quad	0x3fc4e03b22ed27f4              # double 0.16309298711195164
	.quad	0x3fe7bd0876d5b35f              # double 0.74182532510677024
	.quad	0x3fd1db5b42e0c4ec              # double 0.27901345759444385
	.quad	0x3fed052aa67fa203              # double 0.90688068885089057
	.quad	0x3fe1a1cb39be0d8c              # double 0.55100022580920571
	.quad	0x3fca3def39a85a48              # double 0.20501509013475272
	.quad	0x3fe39d7cb9400e6b              # double 0.61297451192554087
	.quad	0x3fefe1482e94ad55              # double 0.9962502393513356
	.quad	0x3fc035f09185c98c              # double 0.12664610963436151
	.quad	0x3fc79128cfeabae8              # double 0.18411741401856507
	.quad	0x3fe806e6f9af4d5b              # double 0.75084255949552003
	.quad	0x3fe8f7674212e4f0              # double 0.7802006044868488
	.quad	0x3fe823196ec5ae75              # double 0.75428458819574351
	.quad	0x3fe0db78442e8bc9              # double 0.52679074589502151
	.quad	0x3fdb35091ed474a8              # double 0.42511203776104844
	.quad	0x3feff18352261584              # double 0.99823156399422474
	.quad	0x3fe49af5accf7658              # double 0.64391597511321219
	.quad	0x3fb9d5f4765a5c10              # double 0.10092094315983524
	.quad	0x3fd3cd83226cc440              # double 0.30941847192577043
	.quad	0x3fec0f743db65fe2              # double 0.8768864827461551
	.quad	0x3fd722835f6e5992              # double 0.36148151702345743
	.quad	0x3fec38bc1dc65dee              # double 0.88192563834576077
	.quad	0x3fed784c5a1749b9              # double 0.92093484493152922
	.quad	0x3fe8c50a977ce8cd              # double 0.77405290210233491
	.quad	0x3fb2c34974eda098              # double 0.073292342230731555
	.quad	0x3fd0959c1fe1ce48              # double 0.25913146127206632
	.quad	0x3fe610382f868213              # double 0.68947991640385664
	.quad	0x3fef75dba8abef51              # double 0.98313696807552208
	.quad	0x3fec15d46700e692              # double 0.87766475789904264
	.quad	0x3fe39ca7bef81a09              # double 0.61287295626317573
	.quad	0x3fe7d82e0174737f              # double 0.74513912471921617
	.quad	0x3fe828670c1c142e              # double 0.75493194928333707
	.quad	0x3fafabf2976b7df0              # double 0.061858731254456845
	.quad	0x3fecf498232a9d64              # double 0.90485770100069062
	.quad	0x3fc7bc7637f89ee0              # double 0.18543889744727604
	.quad	0x3fe7ab75f9afc1bf              # double 0.7396802784624511
	.quad	0x3fab2c16e007d930              # double 0.053070750091068652
	.quad	0x3fe29c392872c4d2              # double 0.58157022380887669
	.quad	0x3fd6340b5e35ce08              # double 0.34692653846943289
	.quad	0x3fde696e42c30ba0              # double 0.47518497962681217
	.quad	0x3fe567ffc4f144cc              # double 0.66894520249675216
	.quad	0x3fc691c3c170fa74              # double 0.17632338471772224
	.quad	0x3fe5bd442c883911              # double 0.67935379693679654
	.quad	0x3f698517a598ca00              # double 0.0031152212002549806
	.quad	0x3fe046656819a866              # double 0.50859327632975915
	.quad	0x3fe9265c0ec23eaf              # double 0.78593256838390413
	.quad	0x3feae65130e1feb5              # double 0.84061488673611129
	.quad	0x3fed69e87c68ae8c              # double 0.91917824076286214
	.quad	0x3fdde213b145560c              # double 0.46692364036184197
	.quad	0x3fe03d0f259296fc              # double 0.50745351160432461
	.quad	0x3fea229ba8f64f34              # double 0.81672461510104321
	.quad	0x3fd0fbfa81fedf1a              # double 0.2653795499313546
	.quad	0x3fdfc41cc8c904b4              # double 0.49634475334103034
	.quad	0x3fd5cf680091c582              # double 0.34078407340629024
	.quad	0x3fb7f11b82554128              # double 0.093522757834993642
	.quad	0x3fcc79dd13049f38              # double 0.22246898106208746
	.quad	0x3fde215f56843202              # double 0.47078689049592992
	.quad	0x3fe3dd339a31ced8              # double 0.62075214496732212
	.quad	0x3feaf6272744454d              # double 0.84254796666406551
	.quad	0x3fe7011710f88dfc              # double 0.71888306917793399
	.quad	0x3fe78cbd1af00605              # double 0.73593001614807518
	.quad	0x3fd63f712d4ebac4              # double 0.34762219833912078
	.quad	0x3fe7f2eb54b104a9              # double 0.74840323010734722
	.quad	0x3fd489d7240faf7c              # double 0.32091310998543299
	.quad	0x3fe0b463ae423520              # double 0.52202018771064118
	.quad	0x3feeaca66b96fead              # double 0.95857544911992464
	.quad	0x3fe19c57016814f8              # double 0.55033445620270438
	.quad	0x3fed6b55176d9b94              # double 0.91935209823428687
	.quad	0x3fef0bfb98ef15b1              # double 0.97021274442584204
	.quad	0x3fe8f4d26a80429f              # double 0.77988549042682453
	.quad	0x3fec6c8223f8bbcf              # double 0.88824564958292196
	.quad	0x3fd3753cf1189914              # double 0.30403064293422344
	.quad	0x3f73607a00558d80              # double 0.0047306790996545223
	.quad	0x3fe6c79c5d0d70dd              # double 0.71186655210797378
	.quad	0x3fedd14554072f5b              # double 0.93179575359088618
	.quad	0x3fe1e620cfdc38dc              # double 0.55934181783393511
	.quad	0x3fd228b2d0d04e08              # double 0.28373403922998408
	.quad	0x3fe766e247474da5              # double 0.73130906983935928
	.quad	0x3fd4f1fd249ce5ec              # double 0.32726982665516746
	.quad	0x3fc8588eba70c1ec              # double 0.19020256141222036
	.quad	0x3fbfb266b3fff028              # double 0.12381593603635166
	.quad	0x3fe0c3d88f57ebaa              # double 0.5239069747616345
	.quad	0x3feeec56f932dfac              # double 0.96635006591440264
	.quad	0x3fde0cf02851b680              # double 0.46953967988415712
	.quad	0x3fd767d7a67a57ea              # double 0.36571303613288697
	.quad	0x3fe75c87bc012790              # double 0.73004519195204587
	.quad	0x3fd8ac63b1f38da2              # double 0.38552181604446834
	.quad	0x3fe40720dde73c1d              # double 0.62587016430359521
	.quad	0x3fc5cfb373fd1a00              # double 0.17040103114614169
	.quad	0x3fca6991fd0bf00c              # double 0.20634674888413007
	.quad	0x3feda050740d5eab              # double 0.92581961313677164
	.quad	0x3fde7649ebb91388              # double 0.47596977252788308
	.quad	0x3fdfa4ed1b1e06a8              # double 0.49444129608319054
	.quad	0x3febbe8463adc571              # double 0.86700648754610488
	.quad	0x3fe28b20b5448c5f              # double 0.57948336986408922
	.quad	0x3fd21b52db6f1fe6              # double 0.28291770390614912
	.quad	0x3fe1dc90bc3dbc9b              # double 0.55817448392726321
	.quad	0x3fefba61bba7e1a5              # double 0.99150168086548673
	.quad	0x3fd0faf6cf32ce5e              # double 0.26531763300156352
	.quad	0x3fbfe1be88beeeb8              # double 0.12453833426018945
	.quad	0x3fefb9adafd32b6e              # double 0.99141582814023166
	.quad	0x3fda77f1496ea3d6              # double 0.41357071086036734
	.quad	0x3fe784b30c157951              # double 0.73494865760930328
	.quad	0x3fd2f26d4a8ae566              # double 0.29604656486079362
	.quad	0x3fe1b696d98514b4              # double 0.55353872761101863
	.quad	0x3fd1a901c438d3e6              # double 0.2759403625707918
	.quad	0x3fc2ffb08eccb9c8              # double 0.14842802975313263
	.quad	0x3fc3de2921c82b10              # double 0.15521730565554792
	.quad	0x3fe695633abc7b4a              # double 0.70573579284596488
	.quad	0x3fef9db19125018b              # double 0.98799970959230287
	.quad	0x3fea4cc6437d8864              # double 0.82187188321792037
	.quad	0x3fe53ca154e9ec48              # double 0.66365114769667688
	.quad	0x3fe87d2581234f14              # double 0.76527667257548381
	.quad	0x3fd80fd3c37d1004              # double 0.37596601572681743
	.quad	0x3fe93e18f2f51e4d              # double 0.7888302560103938
	.quad	0x3fda16b95531693a              # double 0.40763696021680895
	.quad	0x3feaff4fd3f736c2              # double 0.84366599463984238
	.quad	0x3feac95b8c28d9a3              # double 0.83707978606144129
	.quad	0x3fdfb2e7b810a7b0              # double 0.49529450392821683
	.quad	0x3fd6180885df8f78              # double 0.34521687577784332
	.quad	0x3fed6dffab5c5024              # double 0.91967757672182814
	.quad	0x3fe62356720a35aa              # double 0.69181368134893728
	.quad	0x3fe1c2e88dde24b0              # double 0.55504253109497448
	.quad	0x3feae5cf419c8096              # double 0.84055292906488677
	.quad	0x3fe465c8c6bf13a3              # double 0.63742483918814619
	.quad	0x3fef813fa352f165              # double 0.98452741526811549
	.quad	0x3fc545b4335d0918              # double 0.16618969448070042
	.quad	0x3fde67beed89e3c8              # double 0.47508214184886954
	.quad	0x3fd8e70246eebaa2              # double 0.38909966399197959
	.quad	0x3fc8fc230e90f8b0              # double 0.1951946087955938
	.quad	0x3fea23cc9df7f044              # double 0.81687002995705215
	.quad	0x3feb49f0db60b815              # double 0.85277598235348029
	.quad	0x3fb0d30e2537eed8              # double 0.065720447622818923
	.quad	0x3fef0cd874557ff8              # double 0.97031805726510267
	.quad	0x3fc7263059691978              # double 0.18085293164967786
	.quad	0x3fe97e1ea82232fd              # double 0.7966454776629629
	.quad	0x3fc8a8b34b7311d4              # double 0.1926483267217366
	.quad	0x3fcb7ef838b079fc              # double 0.21481230514559957
	.quad	0x3fdf4125d61ceb70              # double 0.4883513060519169
	.quad	0x3fa63d84004b0000              # double 0.043438077007067477
	.quad	0x3fdeae1c12694130              # double 0.47937681005443533
	.quad	0x3fdccdef287adbce              # double 0.45006922677151529
	.quad	0x3fba1566393233e8              # double 0.10188902756108542
	.quad	0x3fdfc4c91b9ae11e              # double 0.49638583846855677
	.quad	0x3fe78787e4980303              # double 0.7352942909929826
	.quad	0x3fdb38b6278506ee              # double 0.42533639773692655
	.quad	0x3fe67d80e9c3a739              # double 0.70282025963863426
	.quad	0x3fea4819c886a1ca              # double 0.82130135693756157
	.quad	0x3fe7f1ed6beb5145              # double 0.74828215673418497
	.quad	0x3fc95299a3f83588              # double 0.19783325678183084
	.quad	0x3f976870cafb9c00              # double 0.022859346760835564
	.quad	0x3fa5f6e3078e0bd0              # double 0.042899222061371867
	.quad	0x3fbd536a531cfe28              # double 0.11455406693584591
	.quad	0x3feabe1066a9287d              # double 0.83570117999012405
	.quad	0x3fc2498faae0280c              # double 0.14286990970168778
	.quad	0x3fa1e15b542d9d20              # double 0.034922460580498305
	.quad	0x3feb2fa0bfa02af9              # double 0.84956395556341058
	.quad	0x3fd8141224f4e052              # double 0.37622502907789113
	.quad	0x3fb4f5aeb658cb78              # double 0.081873816984438963
	.quad	0x3fd028bebc05875c              # double 0.25248688088878679
	.quad	0x3fd21c1cb16740ba              # double 0.28296582531494219
	.quad	0x3fe93caf34fb609e              # double 0.78865776393924469
	.quad	0x3fe8dddad56c6e37              # double 0.77708188709534098
	.quad	0x3fef2d30ac240977              # double 0.97426637288326289
	.quad	0x3fc909b67b016958              # double 0.19560891157272908
	.quad	0x3fdb9d6613c8b38c              # double 0.43148185665159455
	.quad	0x3fece586ea9becb0              # double 0.90301843473516463
	.quad	0x3fba1ab8ca6c8d90              # double 0.10197024290078205
	.quad	0x3fc13580dfa1a550              # double 0.13444529456618648
	.quad	0x3fe33565a6ab9fac              # double 0.60026819756330019
	.quad	0x3fda68d038bd713a              # double 0.41264730015770434
	.quad	0x3fe50b488ac506d7              # double 0.65762736419147927
	.quad	0x3fcaf4ae49e61d00              # double 0.21059206589072943
	.quad	0x3feef2aca342a664              # double 0.96712333571231257
	.quad	0x3fdea647a3d74584              # double 0.47889891624534919
	.quad	0x3fb92c46828f65c8              # double 0.098331839442287294
	.quad	0x3fb2be270dac0790              # double 0.073213997686279564
	.quad	0x3fd6520fa938cc72              # double 0.34875861669133379
	.quad	0x3fe65547747e1e74              # double 0.69791004898520592
	.quad	0x3fb84e80e00cf2c8              # double 0.094947867107246897
	.quad	0x3fd6ce80fbd1178c              # double 0.35635399428826342
	.quad	0x3fd37cd763ca976a              # double 0.30449471230746517
	.quad	0x3fe6641f0bd84ac6              # double 0.69972183526473297
	.quad	0x3feaa912315afacb              # double 0.83313855781292412
	.quad	0x3fde44627d244fbc              # double 0.47292387219317411
	.quad	0x3fdeff4d71b87d7c              # double 0.48433242898496309
	.quad	0x3fda132f3cf29f66              # double 0.40742093040397831
	.quad	0x3fd03ef88835f0ae              # double 0.25384343435122048
	.quad	0x3fcb1f95d20d4124              # double 0.21190140491899812
	.quad	0x3fbc664951e627d0              # double 0.11093576669205096
	.quad	0x3fd507caad8cff3e              # double 0.32860056827847817
	.quad	0x3fdc7cd25c837078              # double 0.44511851343646169
	.quad	0x3fea4505cee35de8              # double 0.82092562110750311
	.quad	0x3fef486417d3661d              # double 0.97758679059478803
	.quad	0x3fdd3cda080a6a78              # double 0.45683909211371754
	.quad	0x3fbe77f15397ec80              # double 0.11901768008094571
	.quad	0x3fca9e48e603d718              # double 0.20795546752167904
	.quad	0x3fe51e66fc1af8a1              # double 0.65996121634795568
	.quad	0x3fd0a0f921aa82e8              # double 0.25982502258015794
	.quad	0x3fd94f0107fa10c8              # double 0.3954470231913203
	.quad	0x3fdd013d8a5ab03e              # double 0.45320070754201314
	.quad	0x3fc2038397800994              # double 0.14073223969905924
	.quad	0x3fea1d9f75ea113c              # double 0.81611607580320066
	.quad	0x3fea8b9c8159ccbf              # double 0.8295424009687834
	.quad	0x3fcd6889a9453fd0              # double 0.2297527386203897
	.quad	0x3fe7e6f29ea5f15a              # double 0.74694186197261137
	.quad	0x3febbd4ffa694b62              # double 0.86685942562540341
	.quad	0x3fe635104aae4259              # double 0.69397749506067463
	.quad	0x3fe2e3ca80ea6093              # double 0.59030652216735502
	.quad	0x3fcb661cc92caa1c              # double 0.2140537245080204
	.quad	0x3fe1cf4c1d923751              # double 0.55655484939209476
	.quad	0x3fc53e32909ab7e0              # double 0.16596061764488379
	.quad	0x3fe3f9f81ebfa4f7              # double 0.62426382070148534
	.quad	0x3fba4f4a57e36a28              # double 0.10277237554274932
	.quad	0x3fe666f0e12fb680              # double 0.7000660322352843
	.quad	0x3fd867d95e3429ec              # double 0.3813384456595077
	.quad	0x3fe312ef2b72bb65              # double 0.5960613106343372
	.quad	0x3fe6fb4b5db39a5d              # double 0.71817558575714779
	.quad	0x3fd14af206af72f2              # double 0.27019930508485779
	.quad	0x3fcd83eb1ed4c088              # double 0.23058833127425182
	.quad	0x3fee58cb7c41b43e              # double 0.94833921688917378
	.quad	0x3fe7a67019374777              # double 0.7390671246050563
	.quad	0x3f905afe49fa2300              # double 0.015972111954883239
	.quad	0x3fe0ac6c91d432de              # double 0.52104786379058132
	.quad	0x3fc3a915d41da118              # double 0.15359757287229381
	.quad	0x3fcb7c26d56c9fb4              # double 0.21472630902394274
	.quad	0x3fcb286eaf4bbc3c              # double 0.21217139777533756
	.quad	0x3fdd4bd1822a819a              # double 0.45775258742835379
	.quad	0x3fe1663a871b6651              # double 0.54372908008662979
	.quad	0x3f898ead73d92a80              # double 0.012479167077932063
	.quad	0x3fe99e00088a1529              # double 0.80053712528084475
	.quad	0x3fea18d7b596194f              # double 0.81553254571989864
	.quad	0x3fc45b3b4272230c              # double 0.15903416389871727
	.quad	0x3feefbb2af106414              # double 0.96822485153382098
	.quad	0x3f858f2ed06175c0              # double 0.010527005895876296
	.quad	0x3feb6ea887b6b67e              # double 0.8572580958040843
	.quad	0x3fe08fc6107b1be0              # double 0.51755049914288165
	.quad	0x3fd76bbfa6c286a4              # double 0.36595145497458703
	.quad	0x3fd092f41ef0f742              # double 0.25896933576210668
	.quad	0x3fec911ec57f082b              # double 0.89271486829261926
	.quad	0x3fc0f8fe76779374              # double 0.13259869370008526
	.quad	0x3feb815de5a6aa7e              # double 0.85954184392660671
	.quad	0x3feeb603f7c318b9              # double 0.95971868887934086
	.quad	0x3f981ff22191a500              # double 0.023559363650211829
	.quad	0x3fdf18b4dd2a7ef6              # double 0.4858829650711266
	.quad	0x3fe9b009f3907806              # double 0.80273912020834426
	.quad	0x3fe6356c860a49d5              # double 0.69402147464489394
	.quad	0x3fe00091ddd00e8b              # double 0.50006955454632995
	.quad	0x3fc353679a873a70              # double 0.15098280949901577
	.quad	0x3fcc4f646ebf49b8              # double 0.22117286117152246
	.quad	0x3fc68af95b24b9b8              # double 0.17611615133632852
	.quad	0x3fea2b5a35fe0dfe              # double 0.81779203935042211
	.quad	0x3fde34f6fdde024c              # double 0.4719827155277343
	.quad	0x3fe4b51afe16f3d9              # double 0.64710759760748282
	.quad	0x3fe4aa6993c8526e              # double 0.64580229629298258
	.quad	0x3fdc4e3685315bac              # double 0.44227374083623761
	.quad	0x3fae3208438fe200              # double 0.058975466010398492
	.quad	0x3fe065aed8274b7c              # double 0.51241247384528732
	.quad	0x3fee13ba51572cf4              # double 0.93990817915746882
	.quad	0x3fe647653c0fc839              # double 0.6962152646140175
	.quad	0x3fc71d22ae692ce0              # double 0.18057664409784646
	.quad	0x3feac38efbb4d078              # double 0.83637189065349471
	.quad	0x3fe2fa1964cda8d9              # double 0.59302968681484025
	.quad	0x3fc7fb09d3b13de4              # double 0.18734858356991346
	.quad	0x3fa66c31a48ed930              # double 0.043794204080244703
	.quad	0x3fd2668143680306              # double 0.28750640471120936
	.quad	0x3fcbf4b35375b400              # double 0.21840516638931717
	.quad	0x3fd3a37c07d633e8              # double 0.30685330167108171
	.quad	0x3fd804c542bc4892              # double 0.37529117123734423
	.quad	0x3fe5536e89cc0429              # double 0.66643454469170138
	.quad	0x3fd0465813bb17b4              # double 0.25429346014822873
	.quad	0x3fc307a649e26980              # double 0.14867094619405563
	.quad	0x3fd64677486f5028              # double 0.34805090020859319
	.quad	0x3febb08d50e321ee              # double 0.8653017597035253
	.quad	0x3fb7a77b095dafd8              # double 0.092399301325428396
	.quad	0x3f676d31d626c700              # double 0.0028596852655135008
	.quad	0x3fd4db356b4e54be              # double 0.32587943533992447
	.quad	0x3fe7a1013b8d9d04              # double 0.73840390807609468
	.quad	0x3fd21c2728c0cb48              # double 0.28296832065386868
	.quad	0x3fbd9936ba972ae0              # double 0.11561910682136611
	.quad	0x3fb04d918fe1e800              # double 0.063683602931547512
	.quad	0x3fb129cfc2dc69b0              # double 0.067044243882640187
	.quad	0x3fc949ce3f0c8494              # double 0.19756486967620346
	.quad	0x3fd43266e007b3d8              # double 0.31557628515184666
	.quad	0x3fe1a82f2457c10a              # double 0.55178029154015573
	.quad	0x3fdb327d1f07d1b2              # double 0.42495658903433331
	.quad	0x3fed22fad516f1b5              # double 0.91051999682490836
	.quad	0x3fec0100fd6383d1              # double 0.87512254228578901
	.quad	0x3fca9f8eaaf29278              # double 0.20799430224464621
	.quad	0x3fbf41542a7b9a68              # double 0.12209058797052708
	.quad	0x3fe388a315652264              # double 0.6104293268081844
	.quad	0x3fdfe54a6fe45e8a              # double 0.49836979796371195
	.quad	0x3fd744f618a71c0c              # double 0.36358406455514181
	.quad	0x3fee21b46d5591b0              # double 0.94161435465189491
	.quad	0x3fb811f378a37950              # double 0.094023911431098783
	.quad	0x3fc461af613684bc              # double 0.15923111197210982
	.quad	0x3fed5563dea6171e              # double 0.91667359815685123
	.quad	0x3fcdec8981e8da98              # double 0.23378104060403326
	.quad	0x3fc9bdaf0a558be8              # double 0.20110118870351745
	.quad	0x3fd0a57368e53536              # double 0.26009831660924776
	.quad	0x3fe1222448d134e8              # double 0.53541769239532488
	.quad	0x3fbaac513f600e18              # double 0.10419185445066892
	.quad	0x3fe4a4e31e6a634c              # double 0.64512782993834028
	.quad	0x3fec45350d1ddf79              # double 0.88344814836362595
	.quad	0x3fe287f7a2c78ee7              # double 0.57909757416606744
	.quad	0x3fe1317f047777ef              # double 0.53729201195142007
	.quad	0x3fe031b09ea9bdf9              # double 0.50606566418531351
	.quad	0x3fe47968315d0fbf              # double 0.63982019082367703
	.quad	0x3fd1ac76bed6c990              # double 0.276151358000015
	.quad	0x3fe1cb11f432b28b              # double 0.55603883452347824
	.quad	0x3fdfabbb94c35f28              # double 0.49485673453954115
	.quad	0x3fd9774864dbcf26              # double 0.39790544366336389
	.quad	0x3fddb7108b77f92e              # double 0.46429837818131403
	.quad	0x3fcdf1a8107c8444              # double 0.23393727116584462
	.quad	0x3fdd81185ea498a6              # double 0.46100434534526824
	.quad	0x3fe6e86d8b9d2868              # double 0.71587254780139364
	.quad	0x3feec4823d860560              # double 0.96148788467705159
	.quad	0x3fd7963b5b7b4ed6              # double 0.368544425332613
	.quad	0x3fc26695bf29b61c              # double 0.14375564417007147
	.quad	0x3fb9e01de44c3f10              # double 0.10107600043943088
	.quad	0x3fecd6ad21efdaa0              # double 0.90120560291582663
	.quad	0x3fe1f4fded26a2d4              # double 0.56115623777904
	.quad	0x3fe15cf45b518035              # double 0.54259698711030657
	.quad	0x3fca4633596d0770              # double 0.20526735178469435
	.quad	0x3fe720557a4a636f              # double 0.72269700894240241
	.quad	0x3fe745baef8d9187              # double 0.72726198947616261
	.quad	0x3f9297de23c689c0              # double 0.018157454427304875
	.quad	0x3fe7606a2aeaa1ce              # double 0.73051937467703865
	.quad	0x3fe4d9f75b7e5988              # double 0.65160720701060004
	.quad	0x3fecb234d8435890              # double 0.89675371397858505
	.quad	0x3fb551dfdafc4468              # double 0.083280554736363421
	.quad	0x3f98eb458e9d8b60              # double 0.024334990338853557
	.quad	0x3fed894ca68de3a4              # double 0.92301018266799816
	.quad	0x3fade04cce0eae10              # double 0.058351898339733421
	.quad	0x3fdd469d552b9fc6              # double 0.45743497197554139
	.quad	0x3fe69d1db3280e38              # double 0.70667920104501203
	.quad	0x3fcc00d9f482faa0              # double 0.21877598227543604
	.quad	0x3fe5f4d0c129c6de              # double 0.68613469817338646
	.quad	0x3fc42ab811a758f8              # double 0.15755368101117262
	.quad	0x3fd75ac0c937a7a8              # double 0.36491412782799637
	.quad	0x3fef841edf2fc006              # double 0.98487800208204201
	.quad	0x3fc5e4078d8a9d7c              # double 0.1710214081879079
	.quad	0x3fe212e7a23e723a              # double 0.56480771721141498
	.quad	0x3f9a39dc69a4f980              # double 0.025611347148918551
	.quad	0x3fd192e8d332f6a6              # double 0.27459164261731883
	.quad	0x3fc71fce3860b47c              # double 0.18065812828845995
	.quad	0x3fd04d5c16bb1c60              # double 0.25472166271032926
	.quad	0x3feb142a091fb757              # double 0.84621145040521639
	.quad	0x3fd7e5f960a3dcea              # double 0.37341150701054338
	.quad	0x3fd907a5731ebdaa              # double 0.39109169237323249
	.quad	0x3fd3d37878208b36              # double 0.30978214007534477
	.quad	0x3fe7650ab5961f68              # double 0.7310842081651403
	.quad	0x3fe34facd8a738da              # double 0.60347597422676391
	.quad	0x3fdc51ca132c3f4e              # double 0.44249202606532811
	.quad	0x3fe8225e86b3204c              # double 0.75419546421563543
	.quad	0x3fedae2b47d7446b              # double 0.92751087218688377
	.quad	0x3feb17fb9d2fb5fd              # double 0.84667759609663984
	.quad	0x3fe4fd3cb7b22da6              # double 0.65591274145247236
	.quad	0x3fd2e1120ab5e4e6              # double 0.29498721166562658
	.quad	0x3fc5a2ae202b9ddc              # double 0.16902710505313123
	.quad	0x3fe1f150cf4cb048              # double 0.56070747841068513
	.quad	0x3fd25e1de3805652              # double 0.28699443070340636
	.quad	0x3fdad39a9e47f0a6              # double 0.41916528184061475
	.quad	0x3fe20090c956df8b              # double 0.56256903957454207
	.quad	0x3fbf5811c648f258              # double 0.12243758288327322
	.quad	0x3fe3829e8d47bec8              # double 0.60969474405097746
	.quad	0x3fe1c4c765949060              # double 0.55527086105258761
	.quad	0x3fe4586932ac069a              # double 0.63579234978552113
	.quad	0x3fe6c8ab12c6b27c              # double 0.71199563662737786
	.quad	0x3fe5c405adeefeaf              # double 0.68017848941231829
	.quad	0x3fb8ae7719ad8578              # double 0.096412128228186122
	.quad	0x3fd97f600e8d1260              # double 0.39839936657907593
	.quad	0x3fee46e1e73c17fd              # double 0.94615264094386442
	.quad	0x3fe81f36ee198617              # double 0.75381037238929849
	.quad	0x3f8f7891d6470300              # double 0.015366687156416869
	.quad	0x3fea1b35799c42e1              # double 0.81582139732389802
	.quad	0x3fecc4d3af180aa9              # double 0.89902672002820794
	.quad	0x3fd31a41ea0177f0              # double 0.29847762920496645
	.quad	0x3fc321fe9a2c64f0              # double 0.14947493103026188
	.quad	0x3fe7864888682ea4              # double 0.73514200822815612
	.quad	0x3fe98b62e23545b3              # double 0.79826492482441436
	.quad	0x3fea7229a739363a              # double 0.82643587742649705
	.quad	0x3fe95f53fb48e4ca              # double 0.79288672522593484
	.quad	0x3fbd94409725e018              # double 0.11554340067039026
	.quad	0x3fe06c09b401cd69              # double 0.51318822057366476
	.quad	0x3fed6f41c3d04d2d              # double 0.91983116383417995
	.quad	0x3feb585fc39cc2ea              # double 0.85453785138642258
	.quad	0x3feb770e73344177              # double 0.85828325749211742
	.quad	0x3fecd79e79c14489              # double 0.90132068424476686
	.quad	0x3fe7d7ec0416b7e1              # double 0.74510765837271375
	.quad	0x3fc97aa224f51ecc              # double 0.1990549736458348
	.quad	0x3fd6bb0c7789e6ba              # double 0.35516654657076752
	.quad	0x3fe3cf57fff81893              # double 0.61906051629991266
	.quad	0x3fe78310c5f04b2c              # double 0.73474920902149199
	.quad	0x3fe05fd465baf84d              # double 0.51169795865258438
	.quad	0x3fc57569d36b3440              # double 0.16764567206556258
	.quad	0x3fd03ec39043600e              # double 0.25383080566598515
	.quad	0x3fc8baa803178848              # double 0.19319629813168349
	.quad	0x3fc4c1e0c6de65a4              # double 0.16216668806445711
	.quad	0x3fea8a80ce6a46b6              # double 0.82940712275941197
	.quad	0x3fef6a790b1825e7              # double 0.98174717108593945
	.quad	0x3fd63460bb655cd2              # double 0.34694689083467012
	.quad	0x3fc8b4ee47c01744              # double 0.19302156928477576
	.quad	0x3fe575fc72b85107              # double 0.67065260320899334
	.quad	0x3fd4aca95bafa742              # double 0.32303842500424562
	.quad	0x3fdb3625e4f2728a              # double 0.42517993314849234
	.quad	0x3fee4291a5f191c4              # double 0.94562609110703776
	.quad	0x3fec5b45f5df45ef              # double 0.88614175817400376
	.quad	0x3f97ebd3ac4bfb40              # double 0.023360545531427634
	.quad	0x3fdf15b8559e45c8              # double 0.48570068703801583
	.quad	0x3fd6224ea7f62a92              # double 0.34584394838808763
	.quad	0x3fd60435b27cce62              # double 0.34400694303915291
	.quad	0x3fe0f7bdad6611c1              # double 0.53024181239066348
	.quad	0x3fe604ba962a8140              # double 0.68807725266746189
	.quad	0x3fc47241f1e14f74              # double 0.15973686514427821
	.quad	0x3fbfad14d25682c0              # double 0.12373476157382424
	.quad	0x3fec75ba57485e8f              # double 0.88937108085061023
	.quad	0x3fc838c63c35b05c              # double 0.18923261585166784
	.quad	0x3fe2b29e661ee12f              # double 0.58430404611048015
	.quad	0x3fecb6edf8daff7a              # double 0.89733027081091099
	.quad	0x3fd2d1d3fc7b385e              # double 0.29405688911800165
	.quad	0x3fe2a087535ee0b7              # double 0.5820957783062316
	.quad	0x3fe1c03b377778fe              # double 0.55471573670709495
	.quad	0x3fdb7f3240b9a334              # double 0.42963844605269519
	.quad	0x3fec2511137e7444              # double 0.87952474410452241
	.quad	0x3fd09cebb7294300              # double 0.25957768332322928
	.quad	0x3fe57778e1acf1ac              # double 0.67083400799997639
	.quad	0x3fe97539b3d588f4              # double 0.7955597412476707
	.quad	0x3fe71f8d2eafe10f              # double 0.72260150068817264
	.quad	0x3fe1eabf2e3dcd3d              # double 0.5599056151535603
	.quad	0x3feae21ff4a8d73e              # double 0.84010312829079914
	.quad	0x3fe6ab708469c558              # double 0.70842767583796284
	.quad	0x3fa854f23e2f86f0              # double 0.047523088542005598
	.quad	0x3fe9d5f7dbe305c2              # double 0.80736916491166988
	.quad	0x3fca09b93ced3a94              # double 0.20342174029288584
	.quad	0x3fd0eb1b78eef462              # double 0.26434981164840654
	.quad	0x3fe3a53cfa73c6b0              # double 0.61392067829566166
	.quad	0x3fe5502e6db2e8e8              # double 0.66603776383933866
	.quad	0x3fefffac7789db9f              # double 0.99996016833653189
	.quad	0x3fe8f4627cde2169              # double 0.77983211887571457
	.quad	0x3fe8755cfba385f2              # double 0.76432656429477519
	.quad	0x3fb64d2089361430              # double 0.087114366053427927
	.quad	0x3fceb324d194f700              # double 0.23984203561297335
	.quad	0x3fd9e1a1746dd3e6              # double 0.40439640398045495
	.quad	0x3fcaa8381c6d2d64              # double 0.20825864208232325
	.quad	0x3fe9bd8efc51c88a              # double 0.80438946992059468
	.quad	0x3fc10c083a18bf74              # double 0.13317969166518717
	.quad	0x3fc2c6b02424e290              # double 0.14668847813461072
	.quad	0x3fbb45bb44c0f2d0              # double 0.10653276852185489
	.quad	0x3fbeb8fdd706c050              # double 0.12001024722735676
	.quad	0x3fe3211e1287e7d4              # double 0.59779265994370201
	.quad	0x3fe83cd0885dbdd0              # double 0.7574236548807054
	.quad	0x3fe4c4e3d7625c7f              # double 0.64903442446929194
	.quad	0x3fd5d16817c0fa56              # double 0.3409061653109452
	.quad	0x3f9d3a23aabc8aa0              # double 0.028542096420219765
	.quad	0x3fd8e094e7b27e80              # double 0.38870737673457967
	.quad	0x3fc2df587fef5b0c              # double 0.14744096991372435
	.quad	0x3fe1803988d76b9e              # double 0.54690243460514743
	.quad	0x3fdbe03ffd541922              # double 0.43556213130104215
	.quad	0x3fc79f48a1d0fc8c              # double 0.18454845334233416
	.quad	0x3fe347fe9f391d18              # double 0.6025384054018188
	.quad	0x3fd97f4bdd3dec04              # double 0.3983945522847423
	.quad	0x3fc005277f720914              # double 0.12515729639933026
	.quad	0x3fe806e9aa52f740              # double 0.75084384218619249
	.quad	0x3fd64004ba1d4002              # double 0.34765737700672628
	.quad	0x3fdbe452d23d8e3c              # double 0.43581076175016498
	.quad	0x3fd92dfe2935d6f8              # double 0.39343217873043512
	.quad	0x3fef1540441b74d6              # double 0.97134412100026668
	.quad	0x3fd51b1d8449aa7e              # double 0.32977998656011909
	.quad	0x3fd3e916eddc7a88              # double 0.31110165814053703
	.quad	0x3fdd81ccbc11dd44              # double 0.46104734770002076
	.quad	0x3fe153ae2df34104              # double 0.54146489119196461
	.quad	0x3fc3a6b5cf28c9e8              # double 0.15352509131623937
	.quad	0x3fe83a7fa6185259              # double 0.75714094582015001
	.quad	0x3fbd1a85499d5ce8              # double 0.11368592307313785
	.quad	0x3fe55cc9d58f4f11              # double 0.66757671080492476
	.quad	0x3fe255186530a812              # double 0.57288760913547976
	.quad	0x3fe6ebac87e2c42b              # double 0.71626879253574793
	.quad	0x3fcc82c3e56afad8              # double 0.22274063779874242
	.quad	0x3fde00a4774caf52              # double 0.46878921175333688
	.quad	0x3fa60b54b1716900              # double 0.043055197392009248
	.quad	0x3fd2fdc4d2119766              # double 0.29673882021449172
	.quad	0x3fd786131820a68e              # double 0.36755826336102693
	.quad	0x3fce49e5580b9704              # double 0.23663012312970733
	.quad	0x3fe81249fc495020              # double 0.75223254465754862
	.quad	0x3fb38ccafe760ed8              # double 0.076367079853351227
	.quad	0x3fe50b7636197e5b              # double 0.65764914099049621
	.quad	0x3fe7fb6864dc611a              # double 0.74943942736993852
	.quad	0x3fd063d1643c8a34              # double 0.2560924033042824
	.quad	0x3fefc2fd926aeb21              # double 0.99255255315015145
	.quad	0x3fdb65221644bae2              # double 0.42804767775207442
	.quad	0x3feb5c05c8a15ef4              # double 0.85498322663894876
	.quad	0x3fbfbb8b20e79a00              # double 0.12395543626153227
	.quad	0x3fe9c9d02db05282              # double 0.80588540004335152
	.quad	0x3fe9853c6ff08086              # double 0.79751417029548644
	.quad	0x3f9fdacffddcf0c0              # double 0.031108140821047625
	.quad	0x3fe79f82e86cb664              # double 0.7382216014427283
	.quad	0x3fd9427df392f0d4              # double 0.39468334948084061
	.quad	0x3fc270777fa64228              # double 0.14405721409686234
	.quad	0x3fd140a2639c9dde              # double 0.26956996658051746
	.quad	0x3fe29bc8ec876a2e              # double 0.58151670643866793
	.quad	0x3fc16fcea49c6da4              # double 0.13622458493851497
	.quad	0x3fcbcfa3b580562c              # double 0.21727415430420771
	.quad	0x3fee0a1303076d37              # double 0.93872976867297708
	.quad	0x3fda9e25dd805c46              # double 0.41590258246418832
	.quad	0x3fd87d72d79a4c76              # double 0.38265677504495643
	.quad	0x3fd5adbf59055b52              # double 0.33872970288705517
	.quad	0x3fe70b7cf2dbd4d5              # double 0.72015235360472707
	.quad	0x3fae0857b5dd0df0              # double 0.058657399129994903
	.quad	0x3fdef530ee34614e              # double 0.48371527921837731
	.quad	0x3fd7b101037f81c2              # double 0.3701784643326641
	.quad	0x3fdca891a57577c4              # double 0.44778863103954003
	.quad	0x3fdef40e061c0d42              # double 0.48364592167509468
	.quad	0x3fd37d63d921fec0              # double 0.30452820019125326
	.quad	0x3fe4f79f974b7aa6              # double 0.65522746610425453
	.quad	0x3fdba6bbfdc546ca              # double 0.43205165655409117
	.quad	0x3fdd65e5cefe127e              # double 0.45934434141262404
	.quad	0x3fe26b7227b2f699              # double 0.57561595681882516
	.quad	0x3fe66cf4dd13d44d              # double 0.70080035380545669
	.quad	0x3fe5e35aef87a447              # double 0.68400332244085227
	.quad	0x3fec67cff49b94b5              # double 0.8876724030966644
	.quad	0x3fef5053c9b00ecf              # double 0.97855557815679528
	.quad	0x3fd5ef998954a3fe              # double 0.34274900828546595
	.quad	0x3fba58e09fb8d000              # double 0.10291866206608802
	.quad	0x3fe03ce34ec10eb9              # double 0.50743260747591201
	.quad	0x3fd6fdd7ec81d5ca              # double 0.35924337479022184
	.quad	0x3fd1b95afe157712              # double 0.27693819821239274
	.quad	0x3fdafe71c4c963ca              # double 0.42178005425881493
	.quad	0x3fbd6348dac0d138              # double 0.11479621258405792
	.quad	0x3fef8cab72116698              # double 0.98592159537220691
	.quad	0x3fb132ee23f6d4e8              # double 0.067183383732146162
	.quad	0x3fe5c0f1fbdfc175              # double 0.67980288690709634
	.quad	0x3fd588d3c7f1b176              # double 0.33647627378265754
	.quad	0x3fcf47610e919ed8              # double 0.24436581813210156
	.quad	0x3fed2fdd52a8779e              # double 0.91209283966212573
	.quad	0x3fe05d5428dfccbc              # double 0.51139266951795248
	.quad	0x3fb7cf715e981df0              # double 0.093009076685227176
	.quad	0x3fed4077ef662cbf              # double 0.91411968953743628
	.quad	0x3fc283f6a4363764              # double 0.14465220468667461
	.quad	0x3fec6b540eb8cc95              # double 0.88810160518041192
	.quad	0x3fc7066a04bc2ae8              # double 0.17988324385836241
	.quad	0x3fe3735138485f4c              # double 0.60782681458202026
	.quad	0x3fa2085c90ff3390              # double 0.035220043849768179
	.quad	0x3fe76269c1379329              # double 0.73076331842148534
	.quad	0x3fed37af5316f934              # double 0.91304746845688677
	.quad	0x3fee8e3f70163095              # double 0.95486423389367536
	.quad	0x3fea2c86382afffa              # double 0.81793509455019309
	.quad	0x3fe4138ab2a87b34              # double 0.62738547224203112
	.quad	0x3fe8fcad232ed51e              # double 0.78084427711170057
	.quad	0x3fd51c0cd2d01fda              # double 0.32983704173284212
	.quad	0x3fd92e9e514f1a82              # double 0.39347036304790362
	.quad	0x3faebd32ec412ad0              # double 0.060037223186176214
	.quad	0x3fc213da6c6cfa64              # double 0.14123087209914609
	.quad	0x3fd045e9797abec6              # double 0.25426709044675666
	.quad	0x3fe63bb4c4bb96c5              # double 0.69478834556931501
	.quad	0x3fe3a11e1826b4e8              # double 0.61341767041235773
	.quad	0x3fcab0746f9ae548              # double 0.20850997399774429
	.quad	0x3fd8c1dec7ba3ea2              # double 0.38683290009155702
	.quad	0x3fed4cd4487ff0b0              # double 0.91562856826887717
	.quad	0x3fd6e9668fa69a36              # double 0.35799564388654248
	.quad	0x3fcfcfd1b0b94e44              # double 0.24852963570684683
	.quad	0x3fe058872e5c0ba4              # double 0.51080664686775323
	.quad	0x3fd1a5ce1a14ef00              # double 0.27574493929908783
	.quad	0x3fe2edf52a66a58b              # double 0.59154756814420872
	.quad	0x3fec126ad096f858              # double 0.87724819889241257
	.quad	0x3fc1602db3ae10ec              # double 0.13574763558802461
	.quad	0x3fe6e7fdf1308890              # double 0.71581933123913366
	.quad	0x3fe7f1bb09e7a933              # double 0.74825813231044547
	.quad	0x3fec1f3218c813b3              # double 0.87880806770464515
	.quad	0x3fc26b95dd4b2534              # double 0.14390824609135111
	.quad	0x3fe81ae7dc1d6b02              # double 0.75328438750452187
	.quad	0x3fd29281b25da084              # double 0.29019205492523548
	.quad	0x3fe9dbbf7e8e89cd              # double 0.80807471006510811
	.quad	0x3fe6ebea0eec0dbc              # double 0.71629813112706797
	.quad	0x3fe49b5734413b7a              # double 0.6439624806024391
	.quad	0x3fcc54a1359c5894              # double 0.22133269422255764
	.quad	0x3fc1560e8b7b8f38              # double 0.13543874560047597
	.quad	0x3fa4bd47c71b45c0              # double 0.040506594710346899
	.quad	0x3fe34fa6069e2f11              # double 0.60347272198257162
	.quad	0x3fe9cef5272aaf03              # double 0.80651338243248494
	.quad	0x3f8ee72f5bcf4d80              # double 0.015089387883483907
	.quad	0x3fc69eda7123e2b0              # double 0.17672281765387288
	.quad	0x3fd50cd606bfcb7c              # double 0.32890844973660882
	.quad	0x3fe9296efb7499c3              # double 0.78630780327221605
	.quad	0x3fc36ca7fc97c364              # double 0.15175342401155512
	.quad	0x3fb89d03ca5f6080              # double 0.096145855815281677
	.quad	0x3fedcc58f3439f50              # double 0.93119475853471023
	.quad	0x3fbf00b6cbf03100              # double 0.12110464552842259
	.quad	0x3fc1a385491cda64              # double 0.13780275411564269
	.quad	0x3fecbbe08a3045ea              # double 0.89793421735720114
	.quad	0x3fef049eccddf9e4              # double 0.96931400311569548
	.quad	0x3feeee6982bbd7f1              # double 0.96660304578722222
	.quad	0x3fe071c861b54b97              # double 0.51388949473981682
	.quad	0x3fd76c65b2544334              # double 0.36599104323345277
	.quad	0x3feb7d1c19e55997              # double 0.85902218873779901
	.quad	0x3fdbe7a7ed7b2984              # double 0.43601415816797151
	.quad	0x3fc942c70d54fa74              # double 0.19735038901304203
	.quad	0x3fede04e06384588              # double 0.93363095488364056
	.quad	0x3fedf0042342ea77              # double 0.93554884802809013
	.quad	0x3fe4cddbd9d02028              # double 0.65012924710845699
	.quad	0x3fbd9403f9ab51e8              # double 0.11553978772582918
	.quad	0x3fc6fb21f20828f4              # double 0.17953895872080461
	.quad	0x3fdb3665d616ab44              # double 0.42519517809948959
	.quad	0x3fe99afc5420f7bb              # double 0.80016914779093129
	.quad	0x3fe807d692086668              # double 0.75095680734666548
	.quad	0x3fe3c701308b089d              # double 0.61804255944322828
	.quad	0x3fe846ed12e527e9              # double 0.75865796747643544
	.quad	0x3fde8c0ca3d7a266              # double 0.47729793548800215
	.quad	0x3fd2fb23aa45d434              # double 0.29657832744789236
	.quad	0x3f9d3b6380112840              # double 0.028546862308111765
	.quad	0x3fc06856dcdeea60              # double 0.12818418297486556
	.quad	0x3fee49f8559081f9              # double 0.946529547804004
	.quad	0x3fe472a7564aac89              # double 0.63899580816122736
	.quad	0x3fecf2cc90fab6f7              # double 0.9046385604503645
	.quad	0x3f9e1ac2f926c6a0              # double 0.029398962456702038
	.quad	0x3feb546ab1f9def3              # double 0.85405478249501099
	.quad	0x3fc01069451b59d0              # double 0.12550083040578253
	.quad	0x3fda69587c59c448              # double 0.41267978805177963
	.quad	0x3fe0ea7d594f18bf              # double 0.52862422412069765
	.quad	0x3fe202cdf63b216a              # double 0.56284235088336954
	.quad	0x3fe9375efc7b7984              # double 0.78800916016534516
	.quad	0x3fe72539c6ac234f              # double 0.72329415133672537
	.quad	0x3f908dc9db6dc2a0              # double 0.016165880220287421
	.quad	0x3fe103bec7a97ecc              # double 0.53170718189718391
	.quad	0x3fe6b96faedf9733              # double 0.7101362624641524
	.quad	0x3fbc6f93f83e2238              # double 0.11107754526722935
	.quad	0x3fc277569da379bc              # double 0.14426691720195872
	.quad	0x3fe60573bc95cc1f              # double 0.68816553910290057
	.quad	0x3fef6043fea9b92d              # double 0.98050117243636736
	.quad	0x3fed2ea98e3c9bf5              # double 0.91194608479133754
	.quad	0x3fd9b2d0f9ce07bc              # double 0.40153908152580775
	.quad	0x3fdcf8555ffc1706              # double 0.45265707372196606
	.quad	0x3f80ecc4d180ff00              # double 0.0082641006885064705
	.quad	0x3fd8c44fbdefac82              # double 0.38698190258464404
	.quad	0x3fc38ae8dcee6c68              # double 0.15267668521559874
	.quad	0x3fe991adc318f2c7              # double 0.79903305153819637
	.quad	0x3fe5efb58f88017b              # double 0.68551137956096342
	.quad	0x3fe2fc21613bb768              # double 0.5932776354872944
	.quad	0x3fd632427f6ee56e              # double 0.34681761212012574
	.quad	0x3fe03c41f8a1db14              # double 0.50735567627893596
	.quad	0x3fe7834e585eb22b              # double 0.73477856883761683
	.quad	0x3fee6a14d5fc5d27              # double 0.95044938844776972
	.quad	0x3fe09089f1cbb434              # double 0.51764390207029587
	.quad	0x3f7a6b744b9b8900              # double 0.0064501326357648825
	.quad	0x3fdcd2e94da428d8              # double 0.45037300665047786
	.quad	0x3fd4b3b3884d1dcc              # double 0.32346809683482713
	.quad	0x3fbf0f9e66965108              # double 0.12133207325524975
	.quad	0x3fe5c0bfe5019198              # double 0.67977900245436995
	.quad	0x3fdf0cb59f2d749a              # double 0.4851507238834728
	.quad	0x3fdb3fe3cfb3a068              # double 0.42577452929845672
	.quad	0x3fee2a736c92872e              # double 0.94268199163000133
	.quad	0x3fda48231a5698f6              # double 0.41065290042969538
	.quad	0x3fe5c03b9b720b45              # double 0.67971592293211158
	.quad	0x3fc21d5577c52d14              # double 0.14152019832759122
	.quad	0x3fd5ac1cc28b4c62              # double 0.33862990377855884
	.quad	0x3fe72e92f1bac77b              # double 0.72443530285657631
	.quad	0x3fba2ce31a313840              # double 0.10224742307147583
	.quad	0x3fe3472a805ccbc0              # double 0.60243725844190266
	.quad	0x3fe6406508d2de52              # double 0.69536067698840953
	.quad	0x3fd896bdb960d754              # double 0.38420050719593246
	.quad	0x3fb8212729e183a0              # double 0.094255874371369063
	.quad	0x3feecf4837529124              # double 0.9628029900091275
	.quad	0x3fdb2363783b2c9a              # double 0.42403494588206458
	.quad	0x3fe5be50e4642c0d              # double 0.67948193175959803
	.quad	0x3fe8cdb38656bbd0              # double 0.77511001813933866
	.quad	0x3feed316e7744fd6              # double 0.9632677574722901
	.quad	0x3fcb153fa292d870              # double 0.21158595503010558
	.quad	0x3fe069bf10680126              # double 0.51290848926877142
	.quad	0x3fdc8b5535c067f8              # double 0.4460042023580395
	.quad	0x3f6bec8f8828c100              # double 0.0034086993557808087
	.quad	0x3fe7f86f199b07d6              # double 0.74907641411868542
	.quad	0x3fe9a7a806459aae              # double 0.80171586251238636
	.quad	0x3febd1bd5e34c7b5              # double 0.86935299300807023
	.quad	0x3fdbfa7b8c9cece8              # double 0.43716324550378127
	.quad	0x3fdb95f69a557a5e              # double 0.43102803298635262
	.quad	0x3fe201aafe9ab378              # double 0.56270360686686072
	.quad	0x3feff35c89635968              # double 0.99845721086130101
	.quad	0x3fe3ad8f12dde99e              # double 0.61493638691836217
	.quad	0x3fe7cdac3b7cb2e7              # double 0.7438565408570782
	.quad	0x3fec42d864e34b8c              # double 0.88315982536947634
	.quad	0x3fe10a7c322dfcfb              # double 0.53252992439948288
	.quad	0x3fedb3be6e5dfff0              # double 0.92819139057246325
	.quad	0x3fb4d0e9dd4050b0              # double 0.081312767521299234
	.quad	0x3fea2dd56eeb8817              # double 0.81809493698188163
	.quad	0x3fe45264c25d2a1b              # double 0.63505781137184003
	.quad	0x3fd62c3e8fe2a5d4              # double 0.34645046283057224
	.quad	0x3fef7e45f1d0e7dc              # double 0.984164211556386
	.quad	0x3fdc70d36dd67008              # double 0.44438634611447059
	.quad	0x3faf23c078d8c890              # double 0.060819639922912505
	.quad	0x3fbbb23e0af144e0              # double 0.10818851248884043
	.quad	0x3fe3ce556571180a              # double 0.61893720448347378
	.quad	0x3fe5d6d01d653d1e              # double 0.68247228375722435
	.quad	0x3fda75fb31f2dd6a              # double 0.413451002862948
	.quad	0x3fb7ee60aa495fd0              # double 0.093481103490716366
	.quad	0x3fddf4f361ba41e6              # double 0.46807560485561195
	.quad	0x3fe5730965386f00              # double 0.67029256600969234
	.quad	0x3fd684be59ea7304              # double 0.35185202389565995
	.quad	0x3feed7fb22658c36              # double 0.96386486738300081
	.quad	0x3fb6c01c26d2f0c8              # double 0.088868865469467484
	.quad	0x3fcd0a067bddd7f8              # double 0.22686844871685685
	.quad	0x3fd042e2f91fe3f8              # double 0.25408243492671501
	.quad	0x3fbbbbf15bd82fa8              # double 0.10833652965828711
	.quad	0x3febc2e052ffd5f6              # double 0.86753860674679006
	.quad	0x3fc93358a52347dc              # double 0.1968794638001431
	.quad	0x3fd60b79ee006bec              # double 0.34445045702312771
	.quad	0x3fd1c16b611b227e              # double 0.2774303863812192
	.quad	0x3fcebe9a96f7ab2c              # double 0.24019176837404055
	.quad	0x3fdcdee90eceac3e              # double 0.45110537000681805
	.quad	0x3fd48607902fee54              # double 0.32068051415237631
	.quad	0x3fe80b31eecd231e              # double 0.75136658326036687
	.quad	0x3fe08fbf4d23ef26              # double 0.51754727426984881
	.quad	0x3feccdda1fc1a830              # double 0.9001284237140279
	.quad	0x3fb67acc804a4120              # double 0.087811261483015546
	.quad	0x3fb4327f0b841978              # double 0.078895511924292339
	.quad	0x3f9865e70147e860              # double 0.023826226666621486
	.quad	0x3febc908a0d53234              # double 0.86829024708419533
	.quad	0x3fe2614d6608e938              # double 0.574377726828323
	.quad	0x3fda9f4027dddafe              # double 0.41596988576149829
	.quad	0x3fdd4c643ec443b2              # double 0.45778757218891564
	.quad	0x3fd50aaa6de85368              # double 0.32877598508030426
	.quad	0x3feb92e3c7f1ba26              # double 0.86168088008509325
	.quad	0x3fe9212a7fee4873              # double 0.78529858576281553
	.quad	0x3fe7a5b51966612f              # double 0.7389779563991733
	.quad	0x3fdf898c17124af6              # double 0.49277021649429231
	.quad	0x3f92e96d8fee6e40              # double 0.018468582067369121
	.quad	0x3fede18d206bb005              # double 0.93378311473998166
	.quad	0x3feb1f0a293c023e              # double 0.84753902486415433
	.quad	0x3fb35456835fb0f0              # double 0.075505644868545607
	.quad	0x3fd39b307ad53446              # double 0.30634700770753331
	.quad	0x3fe4084f3125450b              # double 0.62601432417628311
	.quad	0x3fddb91d26c61f5c              # double 0.46442345415606723
	.quad	0x3fec1b66cbe3979a              # double 0.87834491560055317
	.quad	0x3fe95fd2958398b3              # double 0.79294709398234031
	.quad	0x3fb8c4a3c52bddc0              # double 0.096750484120881275
	.quad	0x3fd0c624d9dbc256              # double 0.26209374690282539
	.quad	0x3fda911da30db918              # double 0.41510716365054767
	.quad	0x3fe69effcce72847              # double 0.7069090845118432
	.quad	0x3feb6163600e4368              # double 0.85563820610887564
	.quad	0x3fd63059e2768800              # double 0.34670111766365608
	.quad	0x3fe34378dd4a4789              # double 0.60198634358151637
	.quad	0x3feb23c241875d20              # double 0.84811508940302715
	.quad	0x3fef4e10c52291a9              # double 0.97827948096214811
	.quad	0x3fee39c0e3ebc4d4              # double 0.9445499850827681
	.quad	0x3fe57e3131037e98              # double 0.67165431569079015
	.quad	0x3fd2ee556c14511e              # double 0.29579673342347401
	.quad	0x3fed6b767cbf6942              # double 0.91936802258286598
	.quad	0x3f87077f7d816300              # double 0.011244770066853871
	.quad	0x3fe7876c93555be2              # double 0.73528126503049074
	.quad	0x3faef70dc39b5c90              # double 0.06047862065104781
	.quad	0x3fec054229904b46              # double 0.87564190023326982
	.quad	0x3fe7f88e75f7e684              # double 0.74909136810966048
	.quad	0x3fee6a936bc9bbc1              # double 0.95050974895809059
	.quad	0x3fd32202ba70d9da              # double 0.29895084578620656
	.quad	0x3fe04d2372e105a0              # double 0.50941631734183446
	.quad	0x3fec299932ea989e              # double 0.88007793373687426
	.quad	0x3fd64a03c61fee4a              # double 0.34826750133627071
	.quad	0x3fc12289a3179b80              # double 0.13386650527464994
	.quad	0x3fe861306cf0d20c              # double 0.76186391141396958
	.quad	0x3fedc58edeec3cb6              # double 0.93036597766503948
	.quad	0x3fe73d2696e398a2              # double 0.72621468992726457
	.quad	0x3f74a2b69762e700              # double 0.0050379879450532794
	.quad	0x3fe7a8524610918d              # double 0.73929704365268523
	.quad	0x3fd838bf22bfc7b8              # double 0.37846353906126806
	.quad	0x3fd218bad7905dcc              # double 0.28275939036526831
	.quad	0x3fded54f6a888644              # double 0.48176942256586508
	.quad	0x3feecd32d99a0c5d              # double 0.96254866123525639
	.quad	0x3fe44dccc15eec6d              # double 0.63449704902394688
	.quad	0x3fe8c5b639e3f115              # double 0.77413474375456082
	.quad	0x3fd41c44c44098cc              # double 0.31422537961260555
	.quad	0x3fec11539e255d13              # double 0.8771150673664202
	.quad	0x3febc7ee6375d0a0              # double 0.86815566469023863
	.quad	0x3fd17c65f1154fc2              # double 0.27321766417776072
	.quad	0x3fe56f0da6c1da26              # double 0.66980631418011138
	.quad	0x3feb764ee4ec4b83              # double 0.85819191657570604
	.quad	0x3fe590ea579abe3f              # double 0.67393986807105211
	.quad	0x3fd922b5c68b0d60              # double 0.39274353398305628
	.quad	0x3feeb2b47b921701              # double 0.95931457648177353
	.quad	0x3fec94d9519883c2              # double 0.89317003189727751
	.quad	0x3fd00bebb9f6a252              # double 0.25072758827676467
	.quad	0x3f42389325c2f000              # double 5.5606064736180016E-4
	.quad	0x3fef42f3a0e25708              # double 0.97692281172450723
	.quad	0x3feb9c687cbbd6b6              # double 0.86284279214915816
	.quad	0x3fdfe989e365043e              # double 0.4986290665293075
	.quad	0x3fd79f0f1aaf19b8              # double 0.36908319097383524
	.quad	0x3fd568a95dcf20dc              # double 0.33451303635639618
	.quad	0x3fb9ef730ab591a0              # double 0.10130995761352901
	.quad	0x3fb66f70c622fdd8              # double 0.087637947438444441
	.quad	0x3fe9cc322bda50eb              # double 0.80617626729011016
	.quad	0x3fc06a73237d1820              # double 0.12824858887523849
	.quad	0x3fa928fc0580def0              # double 0.049140811607171986
	.quad	0x3fdf0deadf01ad04              # double 0.48522445466979058
	.quad	0x3fb1cdab834fe990              # double 0.069544524725563273
	.quad	0x3fcf1a65fdfdbd08              # double 0.24299311544334778
	.quad	0x3fee94ed59d7fdec              # double 0.9556795840034602
	.quad	0x3fe024281e400128              # double 0.50441366108137675
	.quad	0x3fd25f9d855583c4              # double 0.28708589573767207
	.quad	0x3fc3a7deb0a8bdbc              # double 0.1535604822724802
	.quad	0x3fc6596e9affb554              # double 0.17460424965194454
	.quad	0x3fec92078f46bdfb              # double 0.89282587035808036
	.quad	0x3feb52fc6e313cc1              # double 0.85388013383808226
	.quad	0x3fef4558d4f0e3df              # double 0.97721520986589982
	.quad	0x3fd337e1d8f1ff0a              # double 0.30028577982010118
	.quad	0x3fda885d9df7401a              # double 0.41457310129499236
	.quad	0x3fef0a975531c5b5              # double 0.97004286422286745
	.quad	0x3fe6110130cf28dd              # double 0.68957576306391
	.quad	0x3fe22ac92c4adc1a              # double 0.56772287989486192
	.quad	0x3fdabf9a884708d4              # double 0.41794455822322374
	.quad	0x3fe52ff4c0008481              # double 0.6621040105857362
	.quad	0x3fcc073c3abdd6dc              # double 0.21897080295791838
	.quad	0x3fc252fc6ba2ec60              # double 0.14315753226933037
	.quad	0x3feaeeeaa72f96ae              # double 0.84166462567801203
	.quad	0x3feed12f9c79987b              # double 0.96303539811630345
	.quad	0x3fee658e4ce1a13e              # double 0.94989695564166943
	.quad	0x3fe358a37970b825              # double 0.60457013815699112
	.quad	0x3fe66800a6f79eb8              # double 0.70019562350076736
	.quad	0x3fcfaea513baad44              # double 0.24751723731365349
	.quad	0x3fa16edfa83c4460              # double 0.034049023901510322
	.quad	0x3fc8f0cafb4b19d4              # double 0.1948484160440801
	.quad	0x3fef01e4e7aaf899              # double 0.96898122069957814
	.quad	0x3fc89ce920e66fc8              # double 0.19228853327228834
	.quad	0x3fe212941b6d9114              # double 0.56476788861303584
	.quad	0x3fe940c84e683924              # double 0.78915801347628589
	.quad	0x3fc25b25094006f0              # double 0.14340651466050458
	.quad	0x3fc736186822f208              # double 0.18133835873403847
	.quad	0x3fe0fcfd5446c89c              # double 0.53088251552823662
	.quad	0x3fdac3dcbbcee76a              # double 0.41820448246618602
	.quad	0x3fbd92055e386508              # double 0.11550935316372002
	.quad	0x3fe979c7b4dd9617              # double 0.79611573529536173
	.quad	0x3fecbfbb80c8e761              # double 0.89840483811643079
	.quad	0x3fe23dddcb92452f              # double 0.57005204925568431
	.quad	0x3fe09bc058ddcd02              # double 0.51901261669846144
	.quad	0x3febf46eddfccfb3              # double 0.87358802182142481
	.quad	0x3fd3f2fc3409210a              # double 0.3117056377564188
	.quad	0x3fe40a4ef4bceeeb              # double 0.62625835228342674
	.quad	0x3fecf7c2bfde1ffc              # double 0.90524423097758655
	.quad	0x3fdd348e612280bc              # double 0.45633277402704286
	.quad	0x3fc2432c6bb4ef48              # double 0.14267497309799126
	.quad	0x3fd0fad15506d6fa              # double 0.26530869773283394
	.quad	0x3fcbabd18e1eadc0              # double 0.21618098678059816
	.quad	0x3fe4e68dac7dc1d8              # double 0.65314372720427638
	.quad	0x3fbf3e08dee95f38              # double 0.12204032365968664
	.quad	0x3fb66eda6dfb0e38              # double 0.087628986216309879
	.quad	0x3fe1b69d972ca943              # double 0.55354194189320827
	.quad	0x3fe571acc1834421              # double 0.67012632174931153
	.quad	0x3fd30566ecf0b930              # double 0.29720471514419255
	.quad	0x3fc1bcb1fe5c4c20              # double 0.13857102317760539
	.quad	0x3fdec11413814c08              # double 0.48053457169334068
	.quad	0x3fee8a4fb4a743ba              # double 0.95438370975363473
	.quad	0x3fe5d2fb7d692854              # double 0.68200468534747438
	.quad	0x3fdef0701a025e22              # double 0.48342516460385998
	.quad	0x3f935a03ead75640              # double 0.018898068626944431
	.quad	0x3fe9a76bd8450e38              # double 0.80168716659722516
	.quad	0x3fe00a11a41ab8ba              # double 0.50122911502491907
	.quad	0x3fe0f01092bc2733              # double 0.52930477770971718
	.quad	0x3fedde1faa9014d4              # double 0.93336470902490953
	.quad	0x3fe61570acde9dee              # double 0.69011720431893564
	.quad	0x3fa1d214ae40aff0              # double 0.03480591418369261
	.quad	0x3fe1ea31ea1dcc13              # double 0.55983825422151978
	.quad	0x3feb265dddb2d4d3              # double 0.84843343067646015
	.quad	0x3fed79f5401ebebe              # double 0.92113745234924926
	.quad	0x3fdb40e141e6ac9a              # double 0.42583495555545314
	.quad	0x3fec43d14358e1b2              # double 0.88327849534748837
	.quad	0x3fe410809f6336ab              # double 0.62701445703870229
	.quad	0x3fc2bd99e1c08f00              # double 0.14641116641097796
	.quad	0x3fdd12c74342d150              # double 0.45427114075143482
	.quad	0x3f5a10024246d600              # double 0.0015907308635240147
	.quad	0x3fec1da53dbae43e              # double 0.87861883217477277
	.quad	0x3fcfe470184b9c78              # double 0.24915887056633657
	.quad	0x3fe052c52ecb7087              # double 0.5101037897070605
	.quad	0x3fef01d07167f146              # double 0.96897146367658915
	.quad	0x3fec64e6222c2e5e              # double 0.88731676744778176
	.quad	0x3fe98435c656f9af              # double 0.7973889230559531
	.quad	0x3fee72a9845f850c              # double 0.95149684766889341
	.quad	0x3f94bea4579c0a80              # double 0.02025849137045066
	.quad	0x3feb842b59d5dd98              # double 0.85988395257929806
	.quad	0x3fe9d8bbde653160              # double 0.80770677029208215
	.quad	0x3fd48fdc6cff03be              # double 0.32128058094172818
	.quad	0x3fc8939ec84bd06c              # double 0.19200501232228662
	.quad	0x3fec6048d61bdce7              # double 0.88675348108418184
	.quad	0x3fe6ea9b4b5072ce              # double 0.71613850316824723
	.quad	0x3feb58aa906ac8cc              # double 0.85457351881475451
	.quad	0x3fefd7d6dfe6e6bd              # double 0.99509757738925197
	.quad	0x3fd987cef4c3b5c8              # double 0.39891408827574226
	.quad	0x3fc0c4b9ecda4764              # double 0.13100360932417765
	.quad	0x3fb780aa741c8b00              # double 0.091807034823926159
	.quad	0x3fe54b7b6b180bac              # double 0.66546412388594467
	.quad	0x3fd5d2495aef2606              # double 0.34095987205782341
	.quad	0x3fc3cdb0ff33bf74              # double 0.15471470318834302
	.quad	0x3fc32c74dd718d60              # double 0.14979420483278272
	.quad	0x3fee70bf8f0967f7              # double 0.95126321732391161
	.quad	0x3fece935e9e26376              # double 0.90346809082539781
	.quad	0x3feda959ca4989e6              # double 0.92692269810896444
	.quad	0x3fd099d5196f4e60              # double 0.25938918575159242
	.quad	0x3fdfdfafa51e4248              # double 0.49802771687339886
	.quad	0x3fc25e46d8aa6940              # double 0.14350209788683266
	.quad	0x3fd64708d8c262c8              # double 0.34808560531523058
	.quad	0x3fe368529d5b6455              # double 0.60648470624722484
	.quad	0x3fef2577294b98bc              # double 0.97332342210281508
	.quad	0x3feb27da5ae82d1f              # double 0.8486148620153563
	.quad	0x3fd1cf8fbf3cb862              # double 0.27829354930407224
	.quad	0x3fe2e85ae01125c3              # double 0.59086364520151624
	.quad	0x3fe5c78206f89db0              # double 0.68060399400285654
	.quad	0x3f9825c6e0464260              # double 0.023581607283235662
	.quad	0x3fe7c6197169333d              # double 0.74293205404828877
	.quad	0x3fd380fc498efedc              # double 0.3047476499886963
	.quad	0x3fec64c8bb47a6c9              # double 0.88730274751761684
	.quad	0x3fd671a0279a3e60              # double 0.3506851565116218
	.quad	0x3fec582eefdba194              # double 0.88576456877949505
	.quad	0x3fe2938b6dba6f5a              # double 0.58051082068730442
	.quad	0x3fee08ee61ddc9a6              # double 0.93859023203394965
	.quad	0x3fe579c5ef7db7aa              # double 0.67111489081957143
	.quad	0x3fa0639760fc75a0              # double 0.032009821499950464
	.quad	0x3fea245b1f6a4f0b              # double 0.81693798194689415
	.quad	0x3feef4c6a3afafa7              # double 0.96737987489676846
	.quad	0x3fe3810f6a7ce0fd              # double 0.60950442121887216
	.quad	0x3fd82b3160e5b14e              # double 0.37763628447170994
	.quad	0x3fd9acb129f8bdcc              # double 0.40116528605264246
	.quad	0x3fcd5d9f2825189c              # double 0.22941960773659253
	.quad	0x3fc5a3fd1211d528              # double 0.16906703359897191
	.quad	0x3fe3a0f994a6b343              # double 0.61340025933677855
	.quad	0x3fd16eafffad0328              # double 0.27238082855551449
	.quad	0x3fe870071719c9c4              # double 0.76367525588857931
	.quad	0x3fe90b17ecbfeff2              # double 0.78260418167292145
	.quad	0x3fe81da95336f32e              # double 0.75362077954159701
	.quad	0x3fe47bfae2093f08              # double 0.64013427875212958
	.quad	0x3fe0ea9ea0ba12f0              # double 0.52864009277308632
	.quad	0x3fd947fc6fae7048              # double 0.3950186815870933
	.quad	0x3feaf4916f7b529c              # double 0.8423545052888417
	.quad	0x3f9e3335cd9525e0              # double 0.029492226288572954
	.quad	0x3fcbf7859aee5e24              # double 0.21849126877781189
	.quad	0x3fc9ecb4b9a00f24              # double 0.20253619254810318
	.quad	0x3feb505efc17373f              # double 0.85356091724836591
	.quad	0x3fcd38808f8d4098              # double 0.22828681001056306
	.quad	0x3fd693c218dcfc9c              # double 0.35276844432878263
	.quad	0x3f9b1aef4f3ad860              # double 0.026469935618216645
	.quad	0x3fee4d25e1ee6b50              # double 0.94691747786724001
	.quad	0x3feb6b23a54d24b7              # double 0.85682852063577897
	.quad	0x3fdd4a0601955a24              # double 0.457643033548637
	.quad	0x3fd8641b3e3cb6ea              # double 0.38111001088951346
	.quad	0x3fb00588a9f36928              # double 0.062584439746761533
	.quad	0x3fe2a28f212ed9f9              # double 0.58234364014680218
	.quad	0x3fa9fe7aa6519ea0              # double 0.050769646456328532
	.quad	0x3feb99d84f798472              # double 0.86252990267179386
	.quad	0x3fd45d255c075f74              # double 0.31818517672717594
	.quad	0x3feb63d26d99bb18              # double 0.85593530088758296
	.quad	0x3fbfea6a77f4bd80              # double 0.12467065266240773
	.quad	0x3fe6261943d47e94              # double 0.69215071914728066
	.quad	0x3fe7d9e7c654428a              # double 0.74534977661285606
	.quad	0x3fc70c0ba3a0ca10              # double 0.18005509843494893
	.quad	0x3fee8790e29f328e              # double 0.95404857885439909
	.quad	0x3fe19632624ddf6d              # double 0.54958457183873366
	.quad	0x3fdbb40c97e9d9f6              # double 0.43286433062840446
	.quad	0x3fe6f082cb17cc95              # double 0.7168592421206933
	.quad	0x3fdd09b09a82980a              # double 0.45371642197494622
	.quad	0x3feda8a3c2e5439e              # double 0.92683589997806215
	.quad	0x3f9c8741b70c50e0              # double 0.027859713361139238
	.quad	0x3fc2f50421575218              # double 0.14810229900344107
	.quad	0x3fd5a6ea4bba21a8              # double 0.3383126964113452
	.quad	0x3fe26c99f82785ed              # double 0.57575701205877083
	.quad	0x3fdc9c002bc5d24a              # double 0.44702152514154092
	.quad	0x3fca438a7ea5760c              # double 0.20518618759062723
	.quad	0x3fd677f1f0984dd2              # double 0.35107086654281006
	.quad	0x3fd381bd4e538d78              # double 0.30479366921482365
	.quad	0x3fd198ea98f946c8              # double 0.27495827616540369
	.quad	0x3fda95b85b4753d4              # double 0.41538819230964674
	.quad	0x3fe43aba067af916              # double 0.63216878190704295
	.quad	0x3fef8e3ab61ed9f0              # double 0.98611198015606583
	.quad	0x3fe4cc2e8637db5c              # double 0.64992452826013958
	.quad	0x3fe48fc46635130a              # double 0.64254970514647991
	.quad	0x3fe4cc113dd32dd9              # double 0.64991056513957368
	.quad	0x3fb2c331d7b17d28              # double 0.073290934714795086
	.quad	0x3f95b3b321d0f0e0              # double 0.021193312586761048
	.quad	0x3fed395a6d78a2c7              # double 0.91325112706280087
	.quad	0x3fe98eaf67e22e3f              # double 0.79866762437581673
	.quad	0x3fd1ad2745324ec8              # double 0.2761934448001111
	.quad	0x3fef07b4b2aac263              # double 0.96969065566925072
	.quad	0x3fdab9ac91a7751a              # double 0.41758264755283536
	.quad	0x3f9a7bea95571180              # double 0.025863328328129764
	.quad	0x3fed86092fccc9d1              # double 0.92261180244377716
	.quad	0x3fad90e93e5d93b0              # double 0.057746209013920136
	.quad	0x3fdf4176f40765e0              # double 0.48837064581820577
	.quad	0x3fea3083d31dc03b              # double 0.81842223390231739
	.quad	0x3fee49066cbb1548              # double 0.94641419636233425
	.quad	0x3fe84052a92301d0              # double 0.75785191568871291
	.quad	0x3febbf891cc44bb8              # double 0.86713080996047776
	.quad	0x3fe2bc26c403c476              # double 0.5854677036678726
	.quad	0x3fcbdd35f52dbadc              # double 0.21768831702816882
	.quad	0x3fedbf99c7eba28a              # double 0.92963875815355945
	.quad	0x3fbc8a5658d0cad8              # double 0.11148585956906787
	.quad	0x3fe634b374fb44b4              # double 0.69393322799637369
	.quad	0x3fc9a29d529ae2e4              # double 0.20027510198067155
	.quad	0x3fe17418e64a8b68              # double 0.54542202929256423
	.quad	0x3fdbd21f60a5a99e              # double 0.43469986379809622
	.quad	0x3fd7bdb40a2798cc              # double 0.37095356933276658
	.quad	0x3fdee0bb6d3d3d18              # double 0.48246656101123753
	.quad	0x3fd5c1f1313d4c0a              # double 0.33996228989161692
	.quad	0x3fb5a4560d6f9840              # double 0.084538820533993864
	.quad	0x3fe5e236255ba72b              # double 0.68386370941627683
	.quad	0x3fe0fbd010576373              # double 0.53073886100456347
	.quad	0x3fe1e88affca76a6              # double 0.55963659247546071
	.quad	0x3fed374caaefc58e              # double 0.91300042520576752
	.quad	0x3fa43f936ba8e140              # double 0.039547545330096856
	.quad	0x3febb0f74c00b793              # double 0.86535229534432501
	.quad	0x3fb7121cd61d93a8              # double 0.09012012698583638
	.quad	0x3fd95b4ec7eff3c8              # double 0.39619798207405355
	.quad	0x3fe9867cf5d9aa36              # double 0.79766700761439924
	.quad	0x3fe9823107d02033              # double 0.79714252019858234
	.quad	0x3fd734889f439dae              # double 0.36258140137803252
	.quad	0x3febcfa3455450bf              # double 0.86909640828027779
	.quad	0x3fe6e2767dd9238e              # double 0.71514439182020495
	.quad	0x3fe6a0332e4fa92d              # double 0.70705565495635414
	.quad	0x3fe5dd6e38c3bee7              # double 0.68328009688226821
	.quad	0x3fd6360c68ffa372              # double 0.34704885724800427
	.quad	0x3feda948d9a13f19              # double 0.92691462045511053
	.quad	0x3fd57ebf16944024              # double 0.3358609886645374
	.quad	0x3fc33b873420bd40              # double 0.15025415463740366
	.quad	0x3fcf9546e9b802c8              # double 0.24674307262468731
	.quad	0x3fdbeea35ffbe54e              # double 0.43644031880792944
	.quad	0x3fef11be188e5913              # double 0.97091584011175979
	.quad	0x3fc56c62ea9fc8dc              # double 0.16737019020326371
	.quad	0x3fe9956fcbc63bd6              # double 0.79949178504636609
	.quad	0x3fe6d734a51d5cbe              # double 0.71377022026981485
	.quad	0x3fdf0e5e8f2e72f6              # double 0.48525203688204444
	.quad	0x3fea33ee1ffa0fb8              # double 0.81883913274258813
	.quad	0x3f894b255be7c780              # double 0.012350360743741851
	.quad	0x3fec5cd3b0ebba7b              # double 0.88633141093107726
	.quad	0x3feff559e207acc1              # double 0.99870008608322546
	.quad	0x3fd57e90c3f118c0              # double 0.33584994444789729
	.quad	0x3fdac27843c09dfc              # double 0.41811949364134171
	.quad	0x3febbfdd81a5f5b0              # double 0.86717105218820301
	.quad	0x3fd2d1e4258d9cfe              # double 0.29406074206640642
	.quad	0x3fe8e0b500ab6c2c              # double 0.77743005877289794
	.quad	0x3fdbdd31bd51ee6e              # double 0.43537562835965715
	.quad	0x3fec0dc0574a8bb6              # double 0.87667862938939467
	.quad	0x3fd0313dad9f75b6              # double 0.25300542788849201
	.quad	0x3fcb0de5ed68ea48              # double 0.21136163799549679
	.quad	0x3fd399b4360ce432              # double 0.30625634458880591
	.quad	0x3fe5b75519b29eac              # double 0.67862944621170618
	.quad	0x3fe5fe376712fff4              # double 0.68728227740939341
	.quad	0x3fda827d105025f0              # double 0.41421438782762632
	.quad	0x3feae4cffb32b8d1              # double 0.84043120443473118
	.quad	0x3fc52a8dbaf666bc              # double 0.16536113385227746
	.quad	0x3fe0f3bcd99719d0              # double 0.52975313661664281
	.quad	0x3f8e0104b594cb80              # double 0.014650379935664537
	.quad	0x3fd48107ed9fee12              # double 0.32037542539157571
	.quad	0x3fe5402af8afd037              # double 0.66408299037585194
	.quad	0x3fe4a5830698d803              # double 0.64520407951818048
	.quad	0x3fe1da4be1c850f8              # double 0.5578975114645166
	.quad	0x3fec2edc87b55f3c              # double 0.88072039132655488
	.quad	0x3fe9724bbec37c8e              # double 0.79520213373679538
	.quad	0x3fb218d562ea6380              # double 0.070691429757415492
	.quad	0x3fc398a938a9e550              # double 0.15309634463100474
	.quad	0x3fe82e573473d0b8              # double 0.7556568169079787
	.quad	0x3fd1506de13fdf00              # double 0.27053400990506304
	.quad	0x3fd4a96f0b419444              # double 0.3228414163516542
	.quad	0x3fc36e55d874a278              # double 0.15180466717835706
	.quad	0x3fcbd6bf3eefcc30              # double 0.21749106000024332
	.quad	0x3fcd48d8586d6538              # double 0.2287855560087253
	.quad	0x3fe1dc0fd8734969              # double 0.55811302447754685
	.quad	0x3feaab4796e7ca5d              # double 0.83340815995900253
	.quad	0x3fe8c90c12a0257b              # double 0.7745418895512296
	.quad	0x3fe3038211fa80f7              # double 0.59417823325568875
	.quad	0x3fd467de5706358a              # double 0.31883963106596325
	.quad	0x3fe885199f532ff7              # double 0.76624756925730153
	.quad	0x3fd96252c94b4858              # double 0.3966261831057003
	.quad	0x3fbcd5795685c348              # double 0.11263235437742225
	.quad	0x3fdeded9e197255c              # double 0.48235175161661004
	.quad	0x3fe6472e285107e7              # double 0.69618900179216048
	.quad	0x3fe16aff0a8d8e71              # double 0.54431106625675174
	.quad	0x3fc8b8e8f6cba404              # double 0.19314300585327271
	.quad	0x3febb6a6f6ef1bf9              # double 0.86604641179371733
	.quad	0x3fe2819af7a41a25              # double 0.57832096450221526
	.quad	0x3feb8c35c283c30e              # double 0.86086547843123795
	.quad	0x3fe43fa9769bf66c              # double 0.6327712360941411
	.quad	0x3fdb597d30c0cff4              # double 0.4273369766335684
	.quad	0x3fd36a48983f8858              # double 0.30336203449235688
	.quad	0x3fe286836ed7cf9c              # double 0.57892009400392253
	.quad	0x3fee52ea34bb7b49              # double 0.94762144374167534
	.quad	0x3fed61612432acaf              # double 0.91813714094077692
	.quad	0x3fab262ae8c50900              # double 0.053025570787683662
	.quad	0x3fd070d33a2d687e              # double 0.25688629800209373
	.quad	0x3fe23ea869cc7d01              # double 0.57014866508316697
	.quad	0x3fec26eef61e05af              # double 0.87975261754779932
	.quad	0x3fd6521a280e8cd6              # double 0.34876111900139273
	.quad	0x3fe1059b5e0c02e3              # double 0.53193443649805905
	.quad	0x3fe7088f9da6877e              # double 0.71979504386057136
	.quad	0x3fd48423175491ee              # double 0.32056500700335178
	.quad	0x3fdcb4a03cad75f0              # double 0.44852453160805705
	.quad	0x3fe4452a9982eada              # double 0.63344316466040174
	.quad	0x3fb84c5c141512c0              # double 0.094915156271848211
	.quad	0x3fea3c39a81d59eb              # double 0.81985171160596104
	.quad	0x3fd77c53a555be6a              # double 0.36696330209722439
	.quad	0x3fe72375262f68b8              # double 0.72307832201047173
	.quad	0x3fdcdc64a8182704              # double 0.45095173278296863
	.quad	0x3fc4d57215e9870c              # double 0.16276384420330492
	.quad	0x3fde14603d7d9468              # double 0.46999364857612713
	.quad	0x3fdb23365d61aa64              # double 0.42402419204032626
	.quad	0x3fd4ebbfae5403b2              # double 0.32688896202312911
	.quad	0x3fec202563c3332c              # double 0.87892407879698941
	.quad	0x3fe21e4c759e9c55              # double 0.56619856808255042
	.quad	0x3fe40e00eb46c64b              # double 0.62670942261156293
	.quad	0x3fd908c0bd29e5f8              # double 0.39115923378957929
	.quad	0x3fecd0d752930b81              # double 0.90049329879580864
	.quad	0x3fc93c4780ca9bbc              # double 0.1971520785202453
	.quad	0x3fc25351a594a010              # double 0.14316769204128876
	.quad	0x3fe5532b7f61ac65              # double 0.66640257720190432
	.quad	0x3fce9a6fe79c1db8              # double 0.23908804711412102
	.quad	0x3fd13d8d48cbd796              # double 0.26938182934770205
	.quad	0x3fd922fda14b0222              # double 0.39276066542882593
	.quad	0x3feaa41fcbc9bb35              # double 0.83253469278665782
	.quad	0x3fef11f3f24c17c4              # double 0.97094151805571771
	.quad	0x3fede243388db3e3              # double 0.93386994405375068
	.quad	0x3fd360a0887ae3c0              # double 0.30277264907959633
	.quad	0x3fe8b2b64b67138e              # double 0.77181544043615857
	.quad	0x3fbb2cbc8ec51738              # double 0.10615137563317212
	.quad	0x3fd2b044ebe71e44              # double 0.29200861966498715
	.quad	0x3fdd09aa3b993bfa              # double 0.45371490307019224
	.quad	0x3fe76e6341c1c35a              # double 0.73222506373540885
	.quad	0x3fccf4e0c7eedec8              # double 0.22622308504445798
	.quad	0x3fe6ce6794e4258d              # double 0.7126958759337626
	.quad	0x3fdf99472e8abaa0              # double 0.49373034997089782
	.quad	0x3fd1894eed13746a              # double 0.27400563384964605
	.quad	0x3fdc12d3c1907b14              # double 0.43864911940356532
	.quad	0x3fe89f135637f662              # double 0.76941840018816898
	.quad	0x3fef36c2314a2a25              # double 0.9754343950929224
	.quad	0x3fc7563eca11e47c              # double 0.18231949679082848
	.quad	0x3fefd6fdde3f1212              # double 0.99499410064214744
	.quad	0x3fdd4520147e07ac              # double 0.4573440742607271
	.quad	0x3fd5c74335003292              # double 0.34028701949936491
	.quad	0x3fe386c5c08ec9ac              # double 0.61020171746195251
	.quad	0x3fe93d5e6c900557              # double 0.78874131396893687
	.quad	0x3fd5ec6c3b5c7c74              # double 0.34255510136603751
	.quad	0x3fde0146b7ad213c              # double 0.46882789551866089
	.quad	0x3feebbc704b9b0ad              # double 0.9604220478336366
	.quad	0x3fdaa076c14a79fe              # double 0.41604393840853493
	.quad	0x3fe0d8b35bb7dc7b              # double 0.52645271218979361
	.quad	0x3fe1924106f26bdf              # double 0.54910327298000172
	.quad	0x3fd523893c734276              # double 0.33029395011275342
	.quad	0x3fee9a69731d30db              # double 0.95634911044319482
	.quad	0x3feeaf4ca0bdc1d7              # double 0.95889884371541256
	.quad	0x3fe294787677dc72              # double 0.58062384737321637
	.quad	0x3fa8374a23e6ad50              # double 0.047296826250511459
	.quad	0x3fe63ed1fe07ec7c              # double 0.69516849151058535
	.quad	0x3fe52abc90f32390              # double 0.66146686850071212
	.quad	0x3fc4d50429f5c290              # double 0.16275074051693084
	.quad	0x3fe544a945a6d810              # double 0.66463149646620145
	.quad	0x3fe3e5c723b9c73f              # double 0.62179905870127772
	.quad	0x3fe704e1a102c1cc              # double 0.71934586951652468
	.quad	0x3fbb741cd3f91ae8              # double 0.10724048781512929
	.quad	0x3feca87575580851              # double 0.89556382101751286
	.quad	0x3fd20087fbd2ad94              # double 0.28128242103658718
	.quad	0x3fe2867a3ce1c834              # double 0.57891570940979031
	.quad	0x3fde7ca424d727fa              # double 0.47635749433231889
	.quad	0x3fc97dc2138be534              # double 0.19915033296983042
	.quad	0x3fe9043f88c2d61e              # double 0.78176857672832845
	.quad	0x3fef7a87c3ce345e              # double 0.98370731585749716
	.quad	0x3fd79a6d9a0509c2              # double 0.36880054512962712
	.quad	0x3fd90077fc993ecc              # double 0.39065360706170504
	.quad	0x3fe20a922efc0eaf              # double 0.56379040886573317
	.quad	0x3fc508a17609ec0c              # double 0.1643258882866977
	.quad	0x3fd4d8297b0b0c52              # double 0.32569348350461269
	.quad	0x3fec82c69ec408d7              # double 0.89096385010659673
	.quad	0x3fd1b60a6ff37bb6              # double 0.27673588688588369
	.quad	0x3fe4fbbf4da54f52              # double 0.65573086896118071
	.quad	0x3fcfc9b66b8568a0              # double 0.24834327936224998
	.quad	0x3fe39582e2bc1bf5              # double 0.61200088771954475
	.quad	0x3fd2ea64042906ba              # double 0.29555607229495318
	.quad	0x3fedd60f2e27584f              # double 0.93238028540032214
	.quad	0x3fd0cda1f0b5c428              # double 0.26255081660116497
	.quad	0x3fef04596695e3a8              # double 0.96928091083747336
	.quad	0x3fe53a2715f88295              # double 0.66334871569786691
	.quad	0x3fdfcf5daa40e22c              # double 0.49703160883248887
	.quad	0x3fc2aabbd411eb10              # double 0.14583537917118194
	.quad	0x3fecbc3936f6feb4              # double 0.8979765008479803
	.quad	0x3fa6c35810c2eed0              # double 0.044459106489254219
	.quad	0x3fe603593ee8bb9f              # double 0.68790876662193401
	.quad	0x3fe6bf0dac1c77f5              # double 0.71082194915265851
	.quad	0x3fd55d942e1a437a              # double 0.33383659841734181
	.quad	0x3fd68f677ba11a26              # double 0.35250269959616032
	.quad	0x3fefe5ffc31a2cf4              # double 0.99682605844409843
	.quad	0x3fc7a101733ed6e4              # double 0.18460100295276682
	.quad	0x3fce8a2cab8b8f4c              # double 0.23859175087192808
	.quad	0x3f8a31f6f0574340              # double 0.012790612420674585
	.quad	0x3fe3e0904b7621a8              # double 0.62116255510868701
	.quad	0x3fead391cf518089              # double 0.8383263634859911
	.quad	0x3fb66b687a4b4d48              # double 0.087576417786569327
	.quad	0x3fd0d4fbb93d266c              # double 0.26299946870549351
	.quad	0x3fdb40639fff7176              # double 0.42580500244891739
	.quad	0x3fed6c6641827f92              # double 0.91948235316157167
	.quad	0x3fee197e3a27d3ab              # double 0.94061194761763056
	.quad	0x3fdbc3d22d7dbd68              # double 0.43382696573731616
	.quad	0x3fe23a16d3c7a99f              # double 0.56959096301334344
	.quad	0x3fdfc4db0ce9b820              # double 0.49639011631995977
	.quad	0x3fd11adb1c66387c              # double 0.26726415418023186
	.quad	0x3fce3a0b4ac1f9dc              # double 0.23614636564521063
	.quad	0x3fc14e1f896a55d0              # double 0.13519663057074505
	.quad	0x3fecef3276f2b362              # double 0.90419886810341787
	.quad	0x3fc12d6ba5376a8c              # double 0.13419862334452082
	.quad	0x3fe42f2855cc1b7d              # double 0.63075653798374243
	.quad	0x3fe92e30fa2c6399              # double 0.78688858854285393
	.quad	0x3fec2863602415ec              # double 0.87993019845515396
	.quad	0x3fc31beca579087c              # double 0.14928968505597939
	.quad	0x3fd08a18c4380304              # double 0.25842875635139273
	.quad	0x3fac9fbf0bdc9a20              # double 0.055906267354931538
	.quad	0x3f9c3450c8dbae60              # double 0.027543318042189902
	.quad	0x3fd39dec25e8675c              # double 0.30651382162033314
	.quad	0x3fe518518f21f47b              # double 0.65921857791512595
	.quad	0x3fe56714a5f6ee01              # double 0.66883308806376374
	.quad	0x3fe868c2fd6b9bef              # double 0.76278829094087353
	.quad	0x3fc5337a78cc696c              # double 0.16563349626887758
	.quad	0x3fcf3aa8a19a292c              # double 0.2439776219437787
	.quad	0x3fdf4a5e69c94aaa              # double 0.48891411143010066
	.quad	0x3fe721dca31d47da              # double 0.72288352831150893
	.quad	0x3fd8f28056155ad2              # double 0.38980110556205461
	.quad	0x3fc15df042303610              # double 0.13567927581645778
	.quad	0x3faf1cba2d3468e0              # double 0.060766046541361751
	.quad	0x3fe85dad550eb8e0              # double 0.76143519032282469
	.quad	0x3fc9b42d23e1b220              # double 0.20081104518921311
	.quad	0x3fc9b0e9e1a40714              # double 0.20071147458661953
	.quad	0x3fe62484c08de758              # double 0.69195783241523667
	.quad	0x3fde1ad42ac07ea8              # double 0.47038749861710949
	.quad	0x3fe461fa54a54dc8              # double 0.636960187266987
	.quad	0x3fc472794f53e7e8              # double 0.15974346517015126
	.quad	0x3fe1879d36734371              # double 0.54780445704282787
	.quad	0x3fea6e7fc7c2f75b              # double 0.82598866477904254
	.quad	0x3fa37f1f16f16610              # double 0.03807923464837526
	.quad	0x3fe2364e6ebd097c              # double 0.56912919643973181
	.quad	0x3fd1da3bbed6bc10              # double 0.27894490849115616
	.quad	0x3fb4c093ff96e9e0              # double 0.08106350889185121
	.quad	0x3fafd0b3a223a9a0              # double 0.062139142553707005
	.quad	0x3fe229046651de64              # double 0.56750698074661132
	.quad	0x3fec95367d02baa2              # double 0.89321445861954296
	.quad	0x3fe3e7d93690bbe5              # double 0.62205181748674632
	.quad	0x3fee62f593849c85              # double 0.94957999050247166
	.quad	0x3fe3192684fc9651              # double 0.59682012533148499
	.quad	0x3fe81e5b2058ffc0              # double 0.75370556180859438
	.quad	0x3fb76a420cdba3a8              # double 0.091465118540908663
	.quad	0x3febce2c6dc4d42f              # double 0.86891766967040052
	.quad	0x3f81ba7d1b6c0f80              # double 0.0086564802163662247
	.quad	0x3fd258066debbde2              # double 0.28662262663325866
	.quad	0x3fdfb6f98702d8b2              # double 0.49554289040259925
	.quad	0x3fe34477af297831              # double 0.60210785113645759
	.quad	0x3fc30b846f249f10              # double 0.14878898074061242
	.quad	0x3fd2315bff87c1d4              # double 0.28426265672808637
	.quad	0x3fe6a2605ac1f07a              # double 0.70732133604134551
	.quad	0x3fd27b4664987ca4              # double 0.2887741072062886
	.quad	0x3f96aeb5288c0420              # double 0.022150831794537251
	.quad	0x3fd8f8657af42754              # double 0.39016091353606908
	.quad	0x3fdefa3fb2a2afc6              # double 0.48402397580025214
	.quad	0x3fbdaf53a62dc328              # double 0.1159565239629613
	.quad	0x3fe54b0aa32e7bb5              # double 0.66541034575845137
	.quad	0x3fc6817335b9d8a8              # double 0.17582550166452404
	.quad	0x3fd5affd38d84164              # double 0.33886652518505955
	.quad	0x3fe0bc520969b7ef              # double 0.52298833692998226
	.quad	0x3fdd90c3fb709b2a              # double 0.46196078829454967
	.quad	0x3fe47ef42a74c9bf              # double 0.64049728672244288
	.quad	0x3fd195805b36a2aa              # double 0.27474984080849174
	.quad	0x3fdc616cf2dc2c16              # double 0.44344638554383786
	.quad	0x3fea1dc772a5c148              # double 0.81613514320455582
	.quad	0x3fc15afa3d75c11c              # double 0.13558891297317011
	.quad	0x3fe695e3c3c63658              # double 0.70579708325540036
	.quad	0x3fe12e828bab2c14              # double 0.53692748335868368
	.quad	0x3fdb79561e6450e2              # double 0.42928078620867727
	.quad	0x3fe3ef7d4641f2a0              # double 0.6229845401972689
	.quad	0x3fdc2cbb92863f94              # double 0.44023026761078055
	.quad	0x3fea6007951b0e32              # double 0.82422236559108897
	.quad	0x3f7d51435963e700              # double 0.0071575766398781493
	.quad	0x3fd3f14b9c8c1bba              # double 0.31160249984571531
	.quad	0x3fdede8eaa787f4a              # double 0.48233381888893645
	.quad	0x3fd2424c41d544da              # double 0.28529650143634699
	.quad	0x3fc527e9332b5384              # double 0.16528048513887594
	.quad	0x3fc512b8e70a5558              # double 0.16463385850208101
	.quad	0x3fe7ee1dccd4df11              # double 0.74781694418104128
	.quad	0x3fe9197c86f2df86              # double 0.78436113698170185
	.quad	0x3fc20f8895a266fc              # double 0.14109904581419375
	.quad	0x3fa6b773511b4220              # double 0.044368365908330043
	.quad	0x3fd4fe915da26890              # double 0.32803758758530766
	.quad	0x3fe8c2e6ef85d94f              # double 0.77379175931745603
	.quad	0x3fd41bfb99cd5eee              # double 0.3142079355215931
	.quad	0x3fe2bbe831355674              # double 0.58543786631589834
	.quad	0x3fcbc1fd1d77beec              # double 0.216857566250375
	.quad	0x3fed9543c7ef1d2c              # double 0.92447079705826729
	.quad	0x3fc0a7c9e3c0c3c8              # double 0.130120502669824
	.quad	0x3feffba937c70c7e              # double 0.99947033781099015
	.quad	0x3fd4d438653ef0e8              # double 0.32545289885798789
	.quad	0x3fde178f0d4eb65a              # double 0.47018791484410871
	.quad	0x3fa6feece459e250              # double 0.044913676142588899
	.quad	0x3fd4d14be010b0b2              # double 0.32527443772665798
	.quad	0x3fc8ac0a7b67d258              # double 0.19275027299558434
	.quad	0x3fd533a964ade206              # double 0.33127817947345795
	.quad	0x3fd1f80563c29044              # double 0.28076300375164842
	.quad	0x3fc12da3be3e3550              # double 0.13420531071862252
	.quad	0x3fb8f8ecf01af990              # double 0.097548302287554955
	.quad	0x3fecf6735af125f2              # double 0.90508430254084105
	.quad	0x3fe25734d5be6129              # double 0.57314531084833675
	.quad	0x3fc40f1f917c741c              # double 0.15671152690711743
	.quad	0x3fe03db9e7489a61              # double 0.50753493473605371
	.quad	0x3f7186b2a5233980              # double 0.0042788484881398636
	.quad	0x3fe6c4a9cce0da60              # double 0.71150674834536787
	.quad	0x3fe059d8182425e7              # double 0.51096729960516718
	.quad	0x3fddddacc3d2c788              # double 0.46665495990156858
	.quad	0x3fe5de71cc6c6973              # double 0.68340387274228787
	.quad	0x3fe8a9e55f581f7b              # double 0.77073925611419669
	.quad	0x3fe1c5572b77b98b              # double 0.55533941736011749
	.quad	0x3fc84482a76a17c8              # double 0.18959077047855843
	.quad	0x3fea661d4cc8b949              # double 0.82496514317407688
	.quad	0x3fdaad4f4af0e636              # double 0.41682798689325595
	.quad	0x3fe1881d4d37e9ff              # double 0.54786553460809262
	.quad	0x3fe096dcdc5714d8              # double 0.51841586146533825
	.quad	0x3fea34fffeb6b167              # double 0.81896972416647607
	.quad	0x3fdef74e3b7fe692              # double 0.48384433565625173
	.quad	0x3fdc35b780d76ed0              # double 0.44077861387425532
	.quad	0x3fdf8ab58202beca              # double 0.49284112640723932
	.quad	0x3f9f6ce8d63b5500              # double 0.03068889434401445
	.quad	0x3fe63929f3cabdc6              # double 0.69447801223389471
	.quad	0x3f7184e3478ff700              # double 0.004277122317032811
	.quad	0x3fc89b2bfd341ffc              # double 0.19223546851594608
	.quad	0x3fe87f47dd24dec9              # double 0.76553719703857681
	.quad	0x3fe4e2bcbd5a3b71              # double 0.652677888707201
	.quad	0x3feb4eb3a9456666              # double 0.85335715351829999
	.quad	0x3fe0a8799cd00d96              # double 0.52056580188257118
	.quad	0x3fe1959945a4b07f              # double 0.54951156236849374
	.quad	0x3fdaa82256407462              # double 0.41651209280991541
	.quad	0x3fe1f4f91be4844d              # double 0.56115394065649016
	.quad	0x3fb4e11c36cfe688              # double 0.081559909231055383
	.quad	0x3fe76f6fc8fd27e0              # double 0.73235310798304098
	.quad	0x3fb9db2dacb1c1d0              # double 0.10100064722224222
	.quad	0x3fecaf7783e60e49              # double 0.89641929398971698
	.quad	0x3fd6d7add756b95a              # double 0.35691400555778829
	.quad	0x3fc3ce0ec0a2377c              # double 0.1547258797258414
	.quad	0x3fe8f4627ddad212              # double 0.77983212071427688
	.quad	0x3fefe77aa050d3d3              # double 0.99700671493212167
	.quad	0x3fdd32a0ea3f605e              # double 0.45621512294520083
	.quad	0x3fdb74ecede31cf8              # double 0.42901156645935101
	.quad	0x3fb00c9846f6f400              # double 0.062692181897503474
	.quad	0x3feeb87d81f9b124              # double 0.96002078424274772
	.quad	0x3fe6643f6cf0c42f              # double 0.69973727490844861
	.quad	0x3fe433ab6da1eed5              # double 0.63130732929809119
	.quad	0x3feb0bf134a72a53              # double 0.84520778926646256
	.quad	0x3fd50e556df59802              # double 0.32899986017434923
	.quad	0x3fd4504208210674              # double 0.31739855569694631
	.quad	0x3fe2745d50be7da3              # double 0.57670465250332759
	.quad	0x3fbceee68d37e120              # double 0.11302033374511611
	.quad	0x3fcd0b33ab94efb8              # double 0.22690435293213596
	.quad	0x3fad3dc3670e6f70              # double 0.057111841516614414
	.quad	0x3fd6c7688d30aca8              # double 0.35592092311953616
	.quad	0x3fc7394fef6e35f4              # double 0.18143653098051937
	.quad	0x3fdb7343fe9291ba              # double 0.42891025410269956
	.quad	0x3fed40215583aff0              # double 0.91407839490920928
	.quad	0x3fb747d96609a8c0              # double 0.090940081988864385
	.quad	0x3fc5771a42f329dc              # double 0.16769722241436014
	.quad	0x3feafcd5b7129629              # double 0.84336362606399462
	.quad	0x3fda0f6d35a996b6              # double 0.40719156494592867
	.quad	0x3fdbc36244616380              # double 0.43380028417373495
	.quad	0x3fcb33a46ca96848              # double 0.21251349740743053
	.quad	0x3fe5687057a41d5b              # double 0.66899888150593811
	.quad	0x3fdd7a0a94ba233e              # double 0.46057381176119694
	.quad	0x3feaeaca81fd2a15              # double 0.8411610163541946
	.quad	0x3fefee72b1aad759              # double 0.99785742474225991
	.quad	0x3fe6251106ea9fc6              # double 0.69202472067717546
	.quad	0x3fc08fe917aabc54              # double 0.12939180045711629
	.quad	0x3fbd8fc17c464390              # double 0.11547478946728362
	.quad	0x3fa3219f3b566bb0              # double 0.037365890496594445
	.quad	0x3feb1baa847fb643              # double 0.84712720755278104
	.quad	0x3fef1d5726c9e349              # double 0.97233159614470665
	.quad	0x3fe7dfe34a86ece7              # double 0.74608006053986464
	.quad	0x3fdfb51e527786ba              # double 0.49542959264190822
	.quad	0x3fef5bc3950f83fa              # double 0.97995165933036721
	.quad	0x3fe86fe7432d0ec2              # double 0.76366007919610746
	.quad	0x3fd4f7100f798ac4              # double 0.32757951270302166
	.quad	0x3fcef4e4c0e41010              # double 0.24184855860232846
	.quad	0x3fe8ab893b4a2dc9              # double 0.77093946056395979
	.quad	0x3fe0d1e14ed65f3a              # double 0.52562013051917877
	.quad	0x3fb2c6d933cd87c8              # double 0.073346686503582892
	.quad	0x3f861252b2ade9c0              # double 0.010777135923253023
	.quad	0x3febeebfbc09e7e8              # double 0.87289416052157964
	.quad	0x3fd98af2cb5c6c20              # double 0.39910573825335582
	.quad	0x3fe22da2fb517b69              # double 0.56807087979892146
	.quad	0x3fe9a9c2f27ef005              # double 0.80197284090490994
	.quad	0x3fc23d41916ecfcc              # double 0.14249438859189778
	.quad	0x3fcac813d5fec7dc              # double 0.20923088025079906
	.quad	0x3fbc180d6e284b10              # double 0.10974201144589935
	.quad	0x3fe7fcec83de626a              # double 0.74962449794391017
	.quad	0x3fd6401acc56f43e              # double 0.34766263918919893
	.quad	0x3fecea993527cea3              # double 0.9036375082200333
	.quad	0x3fd4921555beaaf6              # double 0.32141621945872545
	.quad	0x3faf6fc53f667170              # double 0.061399616231230136
	.quad	0x3fd338ef2972b1aa              # double 0.30034998939188517
	.quad	0x3fe614ea1ad572d1              # double 0.69005303612683566
	.quad	0x3fedfaa26e435ad4              # double 0.93684503112566597
	.quad	0x3fbc6c60c863f390              # double 0.11102871792168245
	.quad	0x3fea0912b86eda8a              # double 0.81360755941462171
	.quad	0x3fc94240ecba67cc              # double 0.1973343997859146
	.quad	0x3fe6ee04beb2cc08              # double 0.71655499692713054
	.quad	0x3fde4def0891e034              # double 0.47350669705292892
	.quad	0x3fd0399650cee96c              # double 0.25351484195166196
	.quad	0x3fd15f6dcfe6dae0              # double 0.27144952109249054
	.quad	0x3fe541d7de981a90              # double 0.66428750491543731
	.quad	0x3fd0b462dad4a35c              # double 0.2610098969476462
	.quad	0x3fe1175efdda8c5f              # double 0.5341029127197422
	.quad	0x3feff51cb486dfaa              # double 0.99867091426039178
	.quad	0x3fec7e5428d74a87              # double 0.89042098976854411
	.quad	0x3fd68158a822020c              # double 0.35164467257712384
	.quad	0x3fe3578326d722de              # double 0.60443265520106215
	.quad	0x3fdd970725e85270              # double 0.46234301282792156
	.quad	0x3fe6220500622ebe              # double 0.69165277552516335
	.quad	0x3febd0f796bc4abb              # double 0.86925868454485256
	.quad	0x3fe8137b30f72be5              # double 0.75237807811333524
	.quad	0x3fdb4d511a9b1b24              # double 0.42659404371481657
	.quad	0x3fdfbcd947377ffa              # double 0.49590141253247533
	.quad	0x3fde7a9450127ee0              # double 0.47623164958529962
	.quad	0x3fd3def136aa90a4              # double 0.31048231447699437
	.quad	0x3fdc8a6b0669613a              # double 0.44594836832176876
	.quad	0x3fdadf32fd2cc458              # double 0.41987299656017774
	.quad	0x3fe7a0a10d5a6e54              # double 0.73835804565482954
	.quad	0x3fe12bb2a2b196b1              # double 0.53658420349230174
	.quad	0x3fd15ce21cafcd10              # double 0.27129414369046945
	.quad	0x3fe062364f572296              # double 0.51198878761450106
	.quad	0x3fe1386535585033              # double 0.53813419741573509
	.quad	0x3fd8d4c7325de2f0              # double 0.38798694532992695
	.quad	0x3fcb1e857ea70060              # double 0.21186894115635635
	.quad	0x3fcee7cd9fbbe940              # double 0.24144907283318595
	.quad	0x3fca89c01566d3e8              # double 0.20732880635264839
	.quad	0x3fd33d315c61974c              # double 0.30060991307833684
	.quad	0x3fba6da7ae2e8ae8              # double 0.10323570253835224
	.quad	0x3fdcb20bdc424392              # double 0.44836708554890337
	.quad	0x3fe7c555ac5a8b7e              # double 0.74283870375471373
	.quad	0x3fe3e83b30f84dbd              # double 0.62209853710594809
	.quad	0x3fd740d7b106f0cc              # double 0.36333267486385235
	.quad	0x3fe1dcb2b9b95c2a              # double 0.55819069170218438
	.quad	0x3fe7d2110cbc5b82              # double 0.74439289557891208
	.quad	0x3fd48ea4df59f0f0              # double 0.32120630084661084
	.quad	0x3fefd42f472efb57              # double 0.9946514501860787
	.quad	0x3fec3e52688d8362              # double 0.88260765476671232
	.quad	0x3fa80213cf044080              # double 0.046890849133093049
	.quad	0x3feee3e90b932310              # double 0.96532108555502028
	.quad	0x3fd804da0fd158b0              # double 0.37529613060668066
	.quad	0x3fe7b1d5b4402a96              # double 0.74045834737019578
	.quad	0x3fd03a09ed04329e              # double 0.25354240556843333
	.quad	0x3fe9604dec481b08              # double 0.79300590657007408
	.quad	0x3feb793a18c9e074              # double 0.85854821054000618
	.quad	0x3fee6580b9702add              # double 0.94989048212422811
	.quad	0x3fe947c9916aa993              # double 0.79001310731591656
	.quad	0x3fc926d16a1849d4              # double 0.19649713211454289
	.quad	0x3fe59b6f4d060df7              # double 0.67522397082978969
	.quad	0x3fe8665d2a825868              # double 0.7624955969101963
	.quad	0x3f98f477732cf220              # double 0.024370066075095065
	.quad	0x3fbea3b4582b25b8              # double 0.11968543198158599
	.quad	0x3fe4679bb9a5821c              # double 0.63764749774060503
	.quad	0x3fe32963ed43a547              # double 0.5988025316302491
	.quad	0x3fb7499672566d50              # double 0.090966608919577085
	.quad	0x3fe163c8e26649bb              # double 0.54343075007118757
	.quad	0x3fcd88527dcd5a50              # double 0.23072272436793861
	.quad	0x3fd5dd224d3b7006              # double 0.3416219476910104
	.quad	0x3fe17b9b798e6346              # double 0.54633878461309204
	.quad	0x3fe4a8d15d22cbee              # double 0.64560764494524192
	.quad	0x3fede6c7547fec8e              # double 0.93442121986244486
	.quad	0x3fdee2025adff670              # double 0.48254450678346128
	.quad	0x3fc7342956ec77f4              # double 0.18127934212037611
	.quad	0x3f9658d704a0b500              # double 0.021823272378402869
	.quad	0x3fb885cc9a7f9a20              # double 0.095791614264819191
	.quad	0x3fef87b2182df6e6              # double 0.98531441423957911
	.quad	0x3fe8dc4153631c26              # double 0.77688661848595042
	.quad	0x3fd8d8f18ccea236              # double 0.38824118376445271
	.quad	0x3fe363509f2855ab              # double 0.60587340436420811
	.quad	0x3fd95f7c736e249a              # double 0.39645301125035248
	.quad	0x3fbe3f5c5c2aac58              # double 0.11815430879748712
	.quad	0x3fdb5c9565e05e10              # double 0.42752585362311013
	.quad	0x3fedb384325159cd              # double 0.92816362216654513
	.quad	0x3fe5d6269ad4e320              # double 0.682391455083323
	.quad	0x3fc9f5bc6d955cac              # double 0.20281176901582876
	.quad	0x3fd1a1b598b3cb78              # double 0.2754949561341884
	.quad	0x3fe1ae016cea7344              # double 0.55249091408368445
	.quad	0x3fe5a2ed329aec7d              # double 0.67613849529097048
	.quad	0x3fb4c0decf0d8a98              # double 0.081067967939399188
	.quad	0x3fd2c333397669de              # double 0.2931640683324569
	.quad	0x3fed315ba56e1987              # double 0.91227514563142698
	.quad	0x3fdd9f442c1bdbda              # double 0.4628458433866719
	.quad	0x3fc56e41b469b114              # double 0.16742726620885462
	.quad	0x3fabc0c4509a2230              # double 0.054205069388505556
	.quad	0x3fe234149206e711              # double 0.5688574649895789
	.quad	0x3fcdbe78a5ee2a18              # double 0.23237522222582707
	.quad	0x3fe4c899738e1951              # double 0.64948723382330276
	.quad	0x3fead1998ee0f52d              # double 0.83808591753009909
	.quad	0x3fe9a547bf6599d8              # double 0.80142581350520015
	.quad	0x3f96f278fd7f9160              # double 0.022409334633168299
	.quad	0x3fb30ba3cabba2c8              # double 0.074396359439229731
	.quad	0x3f915bc472dcc360              # double 0.01695162726463495
	.quad	0x3fe0b4f8c820ae5d              # double 0.52209128463205057
	.quad	0x3fea14d510842988              # double 0.81504300332862645
	.quad	0x3fe09712e1fa95a4              # double 0.51844162117474868
	.quad	0x3feb4450d2a19509              # double 0.8520893205538026
	.quad	0x3fd6cba960937a84              # double 0.35618051940210926
	.quad	0x3fef4eace4bae0fd              # double 0.97835392640902762
	.quad	0x3f8aec6baedb32c0              # double 0.013146249078454075
	.quad	0x3feb88dab583edfa              # double 0.86045585109917444
	.quad	0x3fd9be31610c14f4              # double 0.40223345258011922
	.quad	0x3fef619521c627be              # double 0.98066193195813134
	.quad	0x3fe02b1c2813870d              # double 0.50526244952581723
	.quad	0x3fdf2ec17053743a              # double 0.48722873658499888
	.quad	0x3fe7b35ee730748c              # double 0.74064583925395899
	.quad	0x3fcc7d28304337d4              # double 0.22256948811121779
	.quad	0x3fdf83d5668f1cc8              # double 0.49242148414164122
	.quad	0x3fd9c6c75bc6db62              # double 0.40275749170853292
	.quad	0x3fb58bb5ba7d6ef0              # double 0.084163053540972532
	.quad	0x3fd55ccac98ad1c8              # double 0.33378858262883826
	.quad	0x3fc8573a19e5a788              # double 0.19016195549494008
	.quad	0x3fea088f8d8d8a18              # double 0.81354501387642397
	.quad	0x3fd6ad76a494bd36              # double 0.35433736870159593
	.quad	0x3fe221d52706e8ea              # double 0.56662995932063365
	.quad	0x3feb60519c60b362              # double 0.85550766508604803
	.quad	0x3fd7d7437feb758a              # double 0.37251365177311213
	.quad	0x3fea7b6e10b2cb5f              # double 0.82756713162812534
	.quad	0x3fd6519406523b06              # double 0.34872913949304551
	.quad	0x3febc5f4bd7fa651              # double 0.86791455279780838
	.quad	0x3fe7e40663939a68              # double 0.74658507774877325
	.quad	0x3fe027bf12e3f543              # double 0.50485185327094262
	.quad	0x3fc20d76b76cd7f4              # double 0.14103588062579286
	.quad	0x3fecd22478677cf1              # double 0.9006521560330879
	.quad	0x3fe85da6f81fc3d6              # double 0.76143215619787941
	.quad	0x3feba20dac5d7a3f              # double 0.86353191056316081
	.quad	0x3fecbe428752f890              # double 0.89822508268822965
	.quad	0x3fe96fe1a1015b02              # double 0.79490739294382728
	.quad	0x3fe146a4a59812cb              # double 0.53987343161187462
	.quad	0x3fc8a6d981e70908              # double 0.19259184687513931
	.quad	0x3fe6ddb130fe798e              # double 0.71456203049801714
	.quad	0x3fcda36bd601cdb4              # double 0.23154972028315302
	.quad	0x3fe067b700799626              # double 0.51266050427210952
	.quad	0x3fc1dd544828d980              # double 0.13956693194786496
	.quad	0x3fe99b687410ff0c              # double 0.80022070569245462
	.quad	0x3fe51f3dd6a86df5              # double 0.66006366658569837
	.quad	0x3fd8fb638af41a36              # double 0.39034355706863566
	.quad	0x3fcbb2205e037f8c              # double 0.21637348738203988
	.quad	0x3fe3f8f9f1ed75b6              # double 0.62414262057762104
	.quad	0x3fe0bb132cf65f4b              # double 0.52283629209248639
	.quad	0x3fe524cab5ebca79              # double 0.6607411912103337
	.quad	0x3fea36c4e228fafc              # double 0.81918567821398324
	.quad	0x3fd605798f110fb8              # double 0.34408415767051848
	.quad	0x3fd3afaad9c25072              # double 0.30759688630610704
	.quad	0x3fdafcec17c8be12              # double 0.42168714831038401
	.quad	0x3fee6daa5a98b00f              # double 0.95088689512840741
	.quad	0x3fd447b182a1a6b2              # double 0.31687581784226915
	.quad	0x3fd3f14918f345a8              # double 0.31160190044928493
	.quad	0x3fe213482e79a8ea              # double 0.56485375477975919
	.quad	0x3fc17e4f21f97ac0              # double 0.13666714819824755
	.quad	0x3f92f4e471eaea00              # double 0.018512315228443654
	.quad	0x3fbbf0b0b2564840              # double 0.10914139131480827
	.quad	0x3fcd924ed3e51530              # double 0.2310274634020657
	.quad	0x3fe7508d09141bde              # double 0.72858287594942417
	.quad	0x3fed07e1224e0a6c              # double 0.90721184444585167
	.quad	0x3fdc95660198ae94              # double 0.44661855846309462
	.quad	0x3fd0a1bb7222bc94              # double 0.25987135072768663
	.quad	0x3fcc7105a44060c4              # double 0.22219915886012676
	.quad	0x3fe908a1e685087b              # double 0.78230376265879842
	.quad	0x3fdf02a92111c6dc              # double 0.48453739385068473
	.quad	0x3fd772585d622d12              # double 0.36635407561762279
	.quad	0x3fe1fd2ca9055e5c              # double 0.5621550847235528
	.quad	0x3fe284b48283c20e              # double 0.57869935504101178
	.quad	0x3fea72706012b56e              # double 0.82646960033677686
	.quad	0x3face3b48d791310              # double 0.056424753446242204
	.quad	0x3fe7e58a22853f42              # double 0.74676996938976736
	.quad	0x3fd4fc65a8433c68              # double 0.3279050963582848
	.quad	0x3fea7d6a5c22af51              # double 0.82780950541698861
	.quad	0x3fe97a4f9cd08328              # double 0.7961805403502682
	.quad	0x3feb250a022a4208              # double 0.84827137396683927
	.quad	0x3fed2a859b7780b6              # double 0.91144066204653629
	.quad	0x3fea1fbb0d911427              # double 0.81637337350605754
	.quad	0x3fc68e93519c43e0              # double 0.17622605786212286
	.quad	0x3fee2166578e7c96              # double 0.94157712078949163
	.quad	0x3fd777b032eb2564              # double 0.36668019268525698
	.quad	0x3fc8effc01256294              # double 0.19482374244650613
	.quad	0x3fed40bbb580e196              # double 0.91415200662509011
	.quad	0x3fb53b84d3af0580              # double 0.082939435654244775
	.quad	0x3fb48fb3e1eee110              # double 0.080317728671506438
	.quad	0x3fb02e83018ac2d8              # double 0.063209712864373713
	.quad	0x3fb464f54219b550              # double 0.07966549743442397
	.quad	0x3fdbd87ca5f3f9c8              # double 0.43508831220961186
	.quad	0x3fe12ad9bbe4af5e              # double 0.53648077676687556
	.quad	0x3fec902b3649eb9c              # double 0.89259873011848211
	.quad	0x3fb6d46586626f88              # double 0.089178414639205283
	.quad	0x3fe6bb4a51abfa57              # double 0.71036258651276796
	.quad	0x3fd797ba432b6790              # double 0.36863571700598019
	.quad	0x3fec5d4308c08cba              # double 0.88638450345424435
	.quad	0x3fc5029746790948              # double 0.16414156857542594
	.quad	0x3fd26ba4a2ce6f76              # double 0.28782001399098733
	.quad	0x3feea5edb294b952              # double 0.95775494460193955
	.quad	0x3fe480976c825ce9              # double 0.64069720452507994
	.quad	0x3fecdcf9692b4614              # double 0.90197439709499116
	.quad	0x3fd972dd4869459a              # double 0.39763576575668369
	.quad	0x3feb6851e70938cd              # double 0.85648436664794192
	.quad	0x3fd7810d2297a33a              # double 0.36725166681440025
	.quad	0x3fe7ff554ead3fe0              # double 0.749918607392825
	.quad	0x3fe6a26fa2aacbb1              # double 0.70732862254077677
	.quad	0x3fee5532c57d0fb8              # double 0.94790018627144601
	.quad	0x3fe3632ce8f1422d              # double 0.60585637566152217
	.quad	0x3fcd1c54269cdf38              # double 0.22742702374829959
	.quad	0x3fee928ecdd8ef74              # double 0.95539035992213294
	.quad	0x3fe047eb91a2edcb              # double 0.50877932018868799
	.quad	0x3fc7b96c1e49a9fc              # double 0.18534614066022914
	.quad	0x3fec6ba6d2c519fb              # double 0.88814107099534512
	.quad	0x3fc09739723ec8d0              # double 0.12961500242597035
	.quad	0x3fd016f449d816b0              # double 0.25140101634347456
	.quad	0x3fd29f1407d3a2c0              # double 0.2909593655045164
	.quad	0x3fe3d96a6a89502e              # double 0.62029000099074039
	.quad	0x3fd7659bd028b16a              # double 0.36557669952414662
	.quad	0x3fd1092d44a8d2bc              # double 0.2661851091864198
	.quad	0x3fd1f68931cbcfa2              # double 0.28067235815910341
	.quad	0x3fc0c95fb9b1ff8c              # double 0.13114544455674737
	.quad	0x3fe57bb51c5d1d7e              # double 0.67135100879470122
	.quad	0x3f6812698d677100              # double 0.0029384671754383307
	.quad	0x3fde0d71f3c67624              # double 0.46957062536407279
	.quad	0x3feb6d43ad1bad9e              # double 0.85708793459109578
	.quad	0x3fe05ada8c2c6eed              # double 0.51109053971910401
	.quad	0x3fdbe9dbf832cf46              # double 0.43614863622791622
	.quad	0x3fe2f6960567ef05              # double 0.59260083251817319
	.quad	0x3fe30422a3c759fe              # double 0.59425479877501153
	.quad	0x3fd52ad0304e2a28              # double 0.33073811261479813
	.quad	0x3feafd159c73c591              # double 0.84339409405781585
	.quad	0x3fe7cad5a9e8b463              # double 0.74351008591987655
	.quad	0x3fe90b079c8abece              # double 0.78259640287975585
	.quad	0x3fd9b86bbcd08770              # double 0.40188115538523217
	.quad	0x3fe0c06e69f81d91              # double 0.52349014947042083
	.quad	0x3fe5570fbda32768              # double 0.66687762297190734
	.quad	0x3fb99bef3873b1c0              # double 0.10003562095852825
	.quad	0x3fb0b46f30ba20e8              # double 0.065253209491973885
	.quad	0x3fd6b96e11c0d434              # double 0.35506774648394246
	.quad	0x3fe4ac66edf40edf              # double 0.64604517436279341
	.quad	0x3fe6011d756b70c6              # double 0.68763611730130303
	.quad	0x3fe2afe0ee2d48f0              # double 0.58396955984997412
	.quad	0x3fe622545a1354dc              # double 0.69169061272500754
	.quad	0x3fde5d5e7f6912d4              # double 0.47444879953790786
	.quad	0x3fa9500dc779e980              # double 0.049438887214779292
	.quad	0x3fe147100fe774a5              # double 0.53992465120576993
	.quad	0x3fe8e8d1e055013b              # double 0.77842038931706925
	.quad	0x3fdca8fe5100424c              # double 0.44781454000716248
	.quad	0x3fccdf0cd324cfe4              # double 0.225556948754842
	.quad	0x3fd2c37899df5b84              # double 0.29318060900316589
	.quad	0x3fe11d20608f260e              # double 0.53480547770704034
	.quad	0x3fb15fc8771d8798              # double 0.067867783623596245
	.quad	0x3fd339604a25d840              # double 0.30037696114539258
	.quad	0x3feff941287aca33              # double 0.99917657762700284
	.quad	0x3fb12b9d46e4b900              # double 0.067071752365084336
	.quad	0x3fe33d9765d616a4              # double 0.60126848115824716
	.quad	0x3fd4adc18954ab80              # double 0.32310522471623671
	.quad	0x3fd8496c82843a3e              # double 0.37948143716576854
	.quad	0x3fd970527c549708              # double 0.39748060361522208
	.quad	0x3fe65636e6221d6e              # double 0.69802422473814629
	.quad	0x3fdb7064d7dae10a              # double 0.42873498038854108
	.quad	0x3f9882ccc3fe51c0              # double 0.023936461889734195
	.quad	0x3fd0f8f8e37c8370              # double 0.26519605842081884
	.quad	0x3fe32abe1dd0f504              # double 0.59896760772213087
	.quad	0x3fe6693fb2ec7000              # double 0.70034775682461259
	.quad	0x3fba19008048e018              # double 0.10194399959516465
	.quad	0x3fdbe0fbfa24d33e              # double 0.43560695102796732
	.quad	0x3fd1fc448699c2ba              # double 0.28102219719498189
	.quad	0x3fd3774d994de5c6              # double 0.30415668460008438
	.quad	0x3feefc30e0a876b3              # double 0.96828502539184169
	.quad	0x3fdabd4132afd066              # double 0.41780118894462814
	.quad	0x3fe661e1fcc4ba6e              # double 0.69944857949105965
	.quad	0x3fd6f2ddb6ebf728              # double 0.35857336867762735
	.quad	0x3fd578172712ca4a              # double 0.33545473876725806
	.quad	0x3fe4041b822bda19              # double 0.62550139831620577
	.quad	0x3fc57829664ad878              # double 0.16772954458946621
	.quad	0x3fedec9ab8497189              # double 0.93513236993344251
	.quad	0x3fd040f5bf6a00fc              # double 0.25396484082013138
	.quad	0x3fe9bb440cd358be              # double 0.80410959725374886
	.quad	0x3fda281678703f98              # double 0.40869676362580654
	.quad	0x3fe36cf0401d84f2              # double 0.6070481540920396
	.quad	0x3fea6b03c71f2c18              # double 0.82556332484216721
	.quad	0x3fed1400de79f140              # double 0.90869182064447074
	.quad	0x3fe878930cd97cc8              # double 0.76471855649642695
	.quad	0x3fe1e000d294d6eb              # double 0.5585941422384314
	.quad	0x3fd5ddb5ac8a18d8              # double 0.34165708398394434
	.quad	0x3fe676716ea986fe              # double 0.70195838559831691
	.quad	0x3fe90e92a3ca68aa              # double 0.78302890768397515
	.quad	0x3fac4fb6b6d89de0              # double 0.055295667476737753
	.quad	0x3fce07a32f41894c              # double 0.23460807616636215
	.quad	0x3fe5da7a06ccb915              # double 0.68291951492372738
	.quad	0x3fe1a5c5a5c4933a              # double 0.55148584724938776
	.quad	0x3fe7e44b46ffa15a              # double 0.74661792628198076
	.quad	0x3fd7953f82ee9906              # double 0.36848438059168165
	.quad	0x3fec3042a1c7ef37              # double 0.88089114759302489
	.quad	0x3fecd150137214a4              # double 0.90055087850545989
	.quad	0x3fce6c073f9a9dec              # double 0.23767176252043443
	.quad	0x3fda0125d687afe4              # double 0.40632005644033442
	.quad	0x3fccf3eb7352e454              # double 0.22619383936924697
	.quad	0x3fd0f4552bc27222              # double 0.26491288445848415
	.quad	0x3fedfae63283893e              # double 0.93687734476069529
	.quad	0x3fd922bcea49475a              # double 0.39274523620143997
	.quad	0x3fc14b3a84c32dc8              # double 0.1351082943204871
	.quad	0x3fdbf007ff90537c              # double 0.43652534444236557
	.quad	0x3fd448f56cb5cc86              # double 0.31695304504609856
	.quad	0x3fa6a809b460da20              # double 0.044250777500952632
	.quad	0x3fedbab586ac7572              # double 0.92904163649988747
	.quad	0x3faf30fe6e149890              # double 0.060920668542437828
	.quad	0x3fc43c1d1d021550              # double 0.15808452526486372
	.quad	0x3fec9a47d6130e95              # double 0.893833082307952
	.quad	0x3feaefcdaf011ba5              # double 0.84177288227589442
	.quad	0x3fe2989ead006c8b              # double 0.58113035001169189
	.quad	0x3fdd29dbf819970a              # double 0.45567988613616761
	.quad	0x3fc96ee76a4a4bec              # double 0.19869702043487736
	.quad	0x3fd3215455309f94              # double 0.2989092666562041
	.quad	0x3fd81515fd6de216              # double 0.37628698109577507
	.quad	0x3fc9d9d8956b2fcc              # double 0.20196063323817126
	.quad	0x3fd61ba6c18a240e              # double 0.3454377069506912
	.quad	0x3fe5007e2421b27f              # double 0.65631014878233873
	.quad	0x3fd6cb8a40065130              # double 0.35617309811029241
	.quad	0x3fe690438e5451fa              # double 0.70511033819872115
	.quad	0x3fea0e73a675748c              # double 0.81426413070188763
	.quad	0x3fe12a9cad11c0cf              # double 0.53645166208846173
	.quad	0x3fc219cbeadf669c              # double 0.14141224831000876
	.quad	0x3fbf30dac6a0ee58              # double 0.1218392119343944
	.quad	0x3fee930f6f33a335              # double 0.95545169562419707
	.quad	0x3fc0b602a943dec8              # double 0.1305545164575419
	.quad	0x3fe9c568703ec524              # double 0.80534765169992228
	.quad	0x3fed9db7fae333e1              # double 0.92550276757685535
	.quad	0x3fed15d930c61678              # double 0.90891704107407545
	.quad	0x3fb5879ebdd482f8              # double 0.084100648255581834
	.quad	0x3fd23c3249b92604              # double 0.28492409896406934
	.quad	0x3fcde86d338810d4              # double 0.23365559593378882
	.quad	0x3fb044724f737d88              # double 0.06354441108441311
	.quad	0x3fdd6a0625a7b620              # double 0.45959619214304048
	.quad	0x3f7b3bdbf63fad80              # double 0.0066488830816341382
	.quad	0x3fd562d0212557ce              # double 0.33415606724645108
	.quad	0x3fbe19d6be86fcf8              # double 0.11758176948113774
	.quad	0x3fe268c24bd0445f              # double 0.57528796012242001
	.quad	0x3fcbcf3a765b6338              # double 0.21726160792493387
	.quad	0x3fb090af10dc46a8              # double 0.064707700363465848
	.quad	0x3feab735b42b97d0              # double 0.83486447515019258
	.quad	0x3feaa440d8eeb62c              # double 0.83255045289633278
	.quad	0x3fdcc7b7b662f7ea              # double 0.44968979655447916
	.quad	0x3fe1f9d4e82d357a              # double 0.56174702975265167
	.quad	0x3fe086468bce34e1              # double 0.51639106088410014
	.quad	0x3fe1347fb4a453dd              # double 0.53765855104085924
	.quad	0x3fe9a4256c4a4ff6              # double 0.80128737593122312
	.quad	0x3fdf264b2511e9b0              # double 0.48671225185503442
	.quad	0x3fc934d09780c6f0              # double 0.19692428014382513
	.quad	0x3fee4eecd055b4cf              # double 0.94713440599812226
	.quad	0x3fc2d4c996db1ae0              # double 0.14711875787744244
	.quad	0x3fe4dd4012b537d2              # double 0.65200809148677252
	.quad	0x3fe9521eca811823              # double 0.79127444793335078
	.quad	0x3fc0d0998793a3ac              # double 0.13136595840412946
	.quad	0x3feda6641e79011c              # double 0.92656141235059719
	.quad	0x3fc1770849dda57c              # double 0.13644507986763788
	.quad	0x3fe1f8d01606fcf2              # double 0.56162266065794442
	.quad	0x3fefbea7ceab0316              # double 0.99202337612959712
	.quad	0x3fe83158805dd516              # double 0.7560236460837213
	.quad	0x3fddf566592ded4c              # double 0.46810301503110874
	.quad	0x3fe81cd98ce2c125              # double 0.75352170483350689
	.quad	0x3fe781e63afb0d53              # double 0.73460685271894943
	.quad	0x3fa40e683cc16ba0              # double 0.039172418037842549
	.quad	0x3fed8adaedce5c3e              # double 0.9232000965738576
	.quad	0x3fe0f5abcc70a3a1              # double 0.52998914651572104
	.quad	0x3fd5656f5ffee738              # double 0.33431610464650729
	.quad	0x3fecafd24382a24c              # double 0.89646256623843489
	.quad	0x3fdd120fd8c43dbc              # double 0.45422741097078378
	.quad	0x3fcf5332c11ac1a0              # double 0.2447265093701505
	.quad	0x3fdd57dff55941fe              # double 0.45848845443563835
	.quad	0x3fe35e98cf65578b              # double 0.60529747492795261
	.quad	0x3fe9232748797a9c              # double 0.7855411925809963
	.quad	0x3fd1c55db9210d00              # double 0.27767127112402079
	.quad	0x3fd43389735ea840              # double 0.31564556376054398
	.quad	0x3fe49c9ab38372a7              # double 0.64411673604225406
	.quad	0x3fc1fb3a2f560638              # double 0.14047934829072672
	.quad	0x3feef58e20acd9e0              # double 0.9674749983012667
	.quad	0x3fe5f5f5b3201fc0              # double 0.68627438531347451
	.quad	0x3fe93524d847f730              # double 0.78773729555516603
	.quad	0x3fe1a1a9bb88a649              # double 0.55098425510113558
	.quad	0x3fe90a1ed8e7ce41              # double 0.78248541225770663
	.quad	0x3fc28b9db8582fa8              # double 0.14488574505992102
	.quad	0x3fa52e5e6da4c930              # double 0.041369391330947969
	.quad	0x3fe559ec401b206b              # double 0.66722691078849772
	.quad	0x3fe53236debc1472              # double 0.66237967970722722
	.quad	0x3fd51a2ebe42f15e              # double 0.32972305851196448
	.quad	0x3fc04cd3a0b4f054              # double 0.12734456393252691
	.quad	0x3fe38e12e6b660be              # double 0.61109299717920584
	.quad	0x3fd6780449f05f20              # double 0.35107524128533107
	.quad	0x3fe613207b79d775              # double 0.68983482471843038
	.quad	0x3fc829be6181ed78              # double 0.18877391587362147
	.quad	0x3fe22e93a0fa6a36              # double 0.56818562928248784
	.quad	0x3feec4e4ee80b5ec              # double 0.96153494436810893
	.quad	0x3fdb200052310d68              # double 0.42382820154690259
	.quad	0x3faf626527bc3670              # double 0.061297570324410411
	.quad	0x3fcbd81ff1a77b30              # double 0.21753310489199285
	.quad	0x3fe6d21d99aad5eb              # double 0.71314888013028843
	.quad	0x3fb80ae62b19c208              # double 0.093916306994067722
	.quad	0x3fd3b33a321097aa              # double 0.30781416787282956
	.quad	0x3fc48d9d80f08864              # double 0.16057175441625582
	.quad	0x3fd7c3e3b5dca66c              # double 0.37133114585831239
	.quad	0x3fb2ea55779cb0d8              # double 0.073888150884786952
	.quad	0x3fcabf62c70a0564              # double 0.20896563261707535
	.quad	0x3fe69e7c247add41              # double 0.7068463051317978
	.quad	0x3fdb234f9b200d32              # double 0.42403021000810093
	.quad	0x3fddfbf8d030dde6              # double 0.46850414591923906
	.quad	0x3fc2fb929eb8f1ac              # double 0.14830239057654404
	.quad	0x3fecae7fcfa8ad63              # double 0.89630117948892651
	.quad	0x3fe806386aabdb92              # double 0.75075932344667451
	.quad	0x3fe4f2f5d928a035              # double 0.65465824521834881
	.quad	0x3fc9e46e0752d9c0              # double 0.20228362424468393
	.quad	0x3f9cbc2e9cdb7ac0              # double 0.028061607669651378
	.quad	0x3fc43c9d7efd4a74              # double 0.15809982968001501
	.quad	0x3fecbc0bd058e526              # double 0.89795485203572833
	.quad	0x3fcc03204836200c              # double 0.21884540105770645
	.quad	0x3feb0b6b829ed897              # double 0.84514403831305429
	.quad	0x3fd15dcc25376fc2              # double 0.27134994158199899
	.quad	0x3fd4b22bbd75cd14              # double 0.32337468625992583
	.quad	0x3fdf59658d27a8b0              # double 0.48983134064350065
	.quad	0x3fef48c5f0e74842              # double 0.97763344813780173
	.quad	0x3fe9da3a8eb3fc06              # double 0.80788925048534632
	.quad	0x3fabf18d90c5c580              # double 0.054577278063230317
	.quad	0x3faf24afc396c7b0              # double 0.060826771379097422
	.quad	0x3fb3231fe294f1a0              # double 0.074754708116364643
	.quad	0x3fec6211e0910113              # double 0.88697141514424727
	.quad	0x3fe5ec56b56c4145              # double 0.68509993967203597
	.quad	0x3fe7f6e6c6b3939f              # double 0.74888933953171832
	.quad	0x3fec2eb2601f69de              # double 0.88070029043165809
	.quad	0x3fc6c05d4340ac7c              # double 0.17774549278087537
	.quad	0x3fe84109c373ee9b              # double 0.75793922590624463
	.quad	0x3fe44ea6d3cec4af              # double 0.63460103386582556
	.quad	0x3fd224095b129768              # double 0.28344949621020143
	.quad	0x3fdf78c63e8fb9da              # double 0.49174648389353381
	.quad	0x3fb1bd9e691867e8              # double 0.069299603136101617
	.quad	0x3fe2898c65d3c17c              # double 0.57929057968253472
	.quad	0x3feab555a1145c51              # double 0.83463555775495923
	.quad	0x3feea525b1e84f43              # double 0.95765957591581985
	.quad	0x3fec65e5e7bf8560              # double 0.88743872893625663
	.quad	0x3fe731719e780785              # double 0.72478562308263916
	.quad	0x3fe3b67b53e1c59b              # double 0.61602560408771312
	.quad	0x3fd0ed3d2b4aef8c              # double 0.2644799158840605
	.quad	0x3fc6065012f3ebd8              # double 0.17206765103750743
	.quad	0x3fd93b46db895c66              # double 0.39424296797864711
	.quad	0x3fdb8d5f0789ff3c              # double 0.43050361381755287
	.quad	0x3fc4b2c34fcaaac0              # double 0.16170541187360321
	.quad	0x3fd3a76a7164d21a              # double 0.3070932490693693
	.quad	0x3fa87371a135fab0              # double 0.047755766800937294
	.quad	0x3fd6c30aab41f14a              # double 0.35565439915059882
	.quad	0x3fe86bfe74bc1d53              # double 0.76318285751123438
	.quad	0x3fda3bbb60945088              # double 0.40989574843957444
	.quad	0x3fe7e13890223b31              # double 0.74624279166332574
	.quad	0x3fdbd13ee3351940              # double 0.43464634121155044
	.quad	0x3fd09b4ccf4ac868              # double 0.25947876208659304
	.quad	0x3fb249fd5a380d78              # double 0.071441492582428157
	.quad	0x3fe95b59f0451cf6              # double 0.79240128448228009
	.quad	0x3fd46ea76027d5c8              # double 0.31925377264209631
	.quad	0x3fdc644ba036b344              # double 0.44362154622904293
	.quad	0x3fdb9b1cc2e78ada              # double 0.43134230645789062
	.quad	0x3fe6894a6aee7acb              # double 0.70425911793776075
	.quad	0x3fbaf18ffe7eb008              # double 0.10524845088247059
	.quad	0x3feb7a03b136af43              # double 0.85864433872254897
	.quad	0x3fe6ed77011ea350              # double 0.71648740976989167
	.quad	0x3fe7ff2dc73532d3              # double 0.7498997584130741
	.quad	0x3fa58c3484c34a60              # double 0.042085305410769491
	.quad	0x3f77e61ed0a77c00              # double 0.0058346942628011433
	.quad	0x3fd0fa00ede62720              # double 0.26525901062324131
	.quad	0x3fd6fa2fdce1cbda              # double 0.35902020044812633
	.quad	0x3fdec0a277baaaa8              # double 0.48050748531629006
	.quad	0x3febd2e0dd598125              # double 0.86949198944424622
	.quad	0x3fe07d885c553f33              # double 0.51532381089962198
	.quad	0x3fd1878db4623194              # double 0.27389853110869322
	.quad	0x3fd69669a095ce52              # double 0.35293045694490843
	.quad	0x3feec4e2ecb13d4c              # double 0.96153398732159578
	.quad	0x3fc036bf0bed0358              # double 0.12667072374645261
	.quad	0x3fcf8e4de68a6028              # double 0.24653028256284526
	.quad	0x3fe70e3eb74da636              # double 0.72048888970784364
	.quad	0x3fe86bc59932d365              # double 0.76315574571217992
	.quad	0x3fea00bda5eff2a0              # double 0.8125904313051997
	.quad	0x3fef689e122fcf86              # double 0.98152068664647696
	.quad	0x3fed0ad0ca2da3c9              # double 0.90757026184029954
	.quad	0x3fdf3d829ee1fc82              # double 0.48812928691763358
	.quad	0x3fd9fe6e73173780              # double 0.40615426291775947
	.quad	0x3fc48b36ec875ec0              # double 0.16049849080331136
	.quad	0x3fd5a5d174122658              # double 0.3382457383637294
	.quad	0x3fc2556098552290              # double 0.14323050916779723
	.quad	0x3feaa91cea7e989c              # double 0.83314367103300268
	.quad	0x3fe0c1f14329cf43              # double 0.52367461316905695
	.quad	0x3fdf9cb6fef30f48              # double 0.49394011399657645
	.quad	0x3feff33f664491cc              # double 0.99844331716718093
	.quad	0x3fb6ff43fc256c60              # double 0.089832543429495981
	.quad	0x3fe5bde30c204daa              # double 0.67942955368419189
	.quad	0x3fd5ebb69698c358              # double 0.34251179415428146
	.quad	0x3fe6a5dcfeb7a2d8              # double 0.70774698018530113
	.quad	0x3fb6565f6d9b1d00              # double 0.087255443820243528
	.quad	0x3fd41ff06cbd32ea              # double 0.31444941157387396
	.quad	0x3fe42f6a1c21156a              # double 0.63078790182104894
	.quad	0x3fe8e52c20d5263d              # double 0.77797514355297148
	.quad	0x3fe00ec2781cbe7f              # double 0.50180171451025035
	.quad	0x3fd075d512e19780              # double 0.25719191402310315
	.quad	0x3fdc2f09b1ba903c              # double 0.44037096363377137
	.quad	0x3fb5c1a89ce9b748              # double 0.084986246403528587
	.quad	0x3fdc30e62904e5da              # double 0.44048456197523722
	.quad	0x3f8fd77172b72f80              # double 0.015547643960324598
	.quad	0x3fe1e98f23711487              # double 0.5597606365414699
	.quad	0x3fd460b6fb144ef2              # double 0.31840300101724417
	.quad	0x3fc689546c3aa02c              # double 0.17606597218150577
	.quad	0x3fbf523179002968              # double 0.12234791950337398
	.quad	0x3fe3da549f31a2b9              # double 0.62040167896801457
	.quad	0x3fc4a486d80dfaa8              # double 0.16127095746556575
	.quad	0x3fe589fbaf41e153              # double 0.67309364538145144
	.quad	0x3f87a8874037c5c0              # double 0.011551911017678829
	.quad	0x3fe40faf8100d6e5              # double 0.62691474147751747
	.quad	0x3fe9b5f1f57fdb5a              # double 0.80346010159596948
	.quad	0x3fef4a8669971881              # double 0.97784729598130593
	.quad	0x3fb80c5c35196bb0              # double 0.093938601459213399
	.quad	0x3fc9c5baf8ee9a74              # double 0.20134675173649763
	.quad	0x3fc5321b653b52d8              # double 0.1655916446967669
	.quad	0x3fe010ba4a1ce790              # double 0.50204195475747504
	.quad	0x3feb5be0e6f6ca4d              # double 0.85496564016495713
	.quad	0x3fe81d44998edd85              # double 0.75357275001344759
	.quad	0x3fdbf04a9e296ccc              # double 0.43654122777452353
	.quad	0x3fd7643f7f7a06ce              # double 0.36549365471738049
	.quad	0x3fd2cfa4b5bdae4e              # double 0.29392354725016367
	.quad	0x3fe0c4e660b2d33c              # double 0.52403563391144514
	.quad	0x3fe9b9d0bb079ad9              # double 0.80393253831138189
	.quad	0x3fd55ed19d2d4f62              # double 0.33391228055301359
	.quad	0x3fd3b3e753e36fd0              # double 0.30785544578770629
	.quad	0x3fe011bd3d2d1924              # double 0.50216543148488713
	.quad	0x3fd21c815a673ef8              # double 0.28298982456634247
	.quad	0x3fda72cffae85a2a              # double 0.41325759413431007
	.quad	0x3fe9b43ce1bf96fa              # double 0.80325168696864968
	.quad	0x3fd206a811e5b310              # double 0.28165628192691461
	.quad	0x3fe4199542e743e8              # double 0.62812293116632834
	.quad	0x3fc0781055f84694              # double 0.12866405675645309
	.quad	0x3f95392978922ae0              # double 0.02072586820990352
	.quad	0x3fea2d8abb9aff4d              # double 0.81805931703272849
	.quad	0x3fe6883130179d55              # double 0.70412501709953779
	.quad	0x3fe9cffd72ad01de              # double 0.80663940808886614
	.quad	0x3fe5cb9c87c7c22e              # double 0.68110491294470932
	.quad	0x3febe3e5a01e446c              # double 0.87156945489017578
	.quad	0x3fe7b939bf0da19a              # double 0.74136054339492152
	.quad	0x3fb060432f0ffb40              # double 0.063968848218775243
	.quad	0x3fe063af00b129b8              # double 0.51216840872921576
	.quad	0x3fc18b96e1cfa474              # double 0.13707242990429658
	.quad	0x3f95e6aa0030c760              # double 0.021387726079587721
	.quad	0x3fcf7b9dee964b7c              # double 0.24595998906860561
	.quad	0x3fe4fffd414967ed              # double 0.65624869109455874
	.quad	0x3fde46f416cef6a8              # double 0.47308065631282625
	.quad	0x3fd421c415fc93c0              # double 0.31456091067439829
	.quad	0x3fc981ce5f01eafc              # double 0.19927386893308341
	.quad	0x3fe4705d5a82f385              # double 0.63871638944657205
	.quad	0x3fdf2480835d2008              # double 0.4866029055451695
	.quad	0x3fd500b3377b32ae              # double 0.32816772859659238
	.quad	0x3fb1c10740646748              # double 0.06935162851405352
	.quad	0x3fe05ecb7a41e376              # double 0.51157163504022551
	.quad	0x3fd59d028b8f82b0              # double 0.33770812634433423
	.quad	0x3fefb3291331607c              # double 0.99062017201050833
	.quad	0x3fe95db18dc784fe              # double 0.79268720332416343
	.quad	0x3fa937eb35984950              # double 0.049254751484243742
	.quad	0x3fb937f65b6cb1b0              # double 0.098510167427497519
	.quad	0x3fd8dea1232b66ce              # double 0.38858822283291949
	.quad	0x3fe03e11d7380879              # double 0.50757686648309097
	.quad	0x3fef208bb37aa4b1              # double 0.97272286467081958
	.quad	0x3fe2013a3a2467ff              # double 0.56264983516598466
	.quad	0x3fed0c9912f6b65d              # double 0.90778783515788641
	.quad	0x3fda6bd95a7396f8              # double 0.41283258278995971
	.quad	0x3fdbde47856fdad0              # double 0.4354418566794438
	.quad	0x3fee4461eb1ec364              # double 0.94584747239978783
	.quad	0x3fea5f1f0e22c748              # double 0.82411148796948286
	.quad	0x3fd7685fb720ea94              # double 0.36574547656679468
	.quad	0x3fedc6714ad185f0              # double 0.93047394383409987
	.quad	0x3fe77e5b065f47ee              # double 0.73417426342552772
	.quad	0x3fbcda126b9d8360              # double 0.11270251395536723
	.quad	0x3fb98e2947b78278              # double 0.099825458535187539
	.quad	0x3fbc34b3f074c588              # double 0.11017918224822243
	.quad	0x3fd2853e098fa67c              # double 0.28938246663765432
	.quad	0x3fd5ee89e115b75a              # double 0.34268424015941934
	.quad	0x3fe98f788cd4f590              # double 0.79876353746628759
	.quad	0x3fd4dc0f16c29698              # double 0.32593133185069112
	.quad	0x3fe95b8a826242ea              # double 0.79242444482414709
	.quad	0x3faa3d2a745fcc50              # double 0.051247908311687795
	.quad	0x3fcc81150add4c70              # double 0.22268927603235822
	.quad	0x3fe6cf4cfb93371f              # double 0.7128052629065883
	.quad	0x3fa5b6c6cb87a830              # double 0.042410099358520248
	.quad	0x3fc9e416d6fb6244              # double 0.20227323052565016
	.quad	0x3feac2d2b4560fbc              # double 0.83628211233052907
	.quad	0x3fe1c0f3186eb41d              # double 0.55480341693840141
	.quad	0x3fec3245b2692170              # double 0.88113674970467848
	.quad	0x3fbf7f3c9da13180              # double 0.12303522919063958
	.quad	0x3fef46a87570edfe              # double 0.97737524926873198
	.quad	0x3fdea87635252f1a              # double 0.47903208913770501
	.quad	0x3fa204fd4ad00e60              # double 0.035194316275035886
	.quad	0x3fe99d62c0c3e9aa              # double 0.80046212815732543
	.quad	0x3fe7ef54135179d3              # double 0.74796489499186192
	.quad	0x3fd5cf244de591e0              # double 0.34076793295960606
	.quad	0x3fdebda3eb626b2e              # double 0.48032472597849363
	.quad	0x3fee63c5bbd30beb              # double 0.94967924770787471
	.quad	0x3fe4e98c16efb346              # double 0.65350918273689085
	.quad	0x3fcd6984ade953d4              # double 0.22978266231316857
	.quad	0x3fbad65733c13538              # double 0.10483307851355483
	.quad	0x3fce77185a84ea64              # double 0.23800949497111212
	.quad	0x3fe2dbcafdc35798              # double 0.58933019221398109
	.quad	0x3fecddc2ecb65cb8              # double 0.90207048638230614
	.quad	0x3fe4a0dce6fe58a7              # double 0.6446365844338019
	.quad	0x3fa295222e9e9eb0              # double 0.036294048491354203
	.quad	0x3fc1f797fd31f3e0              # double 0.14036846030276617
	.quad	0x3f96f0fdba131980              # double 0.022403683168499722
	.quad	0x3fe36aa48f382f51              # double 0.60676792118600009
	.quad	0x3fdbe0e2b162f4d8              # double 0.43560092280297402
	.quad	0x3fcfedd51514623c              # double 0.24944556741026414
	.quad	0x3fe07f137bbd4e46              # double 0.51551222007623987
	.quad	0x3fe246a31af540fa              # double 0.57112269654501735
	.quad	0x3fd1213ab840a37c              # double 0.26765316003234552
	.quad	0x3fd301f883938c9c              # double 0.29699528550390553
	.quad	0x3fd457c2db8c792e              # double 0.31785651626877864
	.quad	0x3fca11663afcb174              # double 0.20365598564366005
	.quad	0x3fb1d4a92872de38              # double 0.069651195883914663
	.quad	0x3fe35af3eca788fe              # double 0.60485264035767705
	.quad	0x3feec7f80c62c187              # double 0.96191027087302038
	.quad	0x3fc5949caf400994              # double 0.16859777981887858
	.quad	0x3fd4a7648906d552              # double 0.32271684056771222
	.quad	0x3fe74f4fcea939c2              # double 0.7284316097591772
	.quad	0x3fdd4c87936975a0              # double 0.45779599567125651
	.quad	0x3fef272dd35beff0              # double 0.97353259354667721
	.quad	0x3fb1a2378bacdf78              # double 0.068881484604274124
	.quad	0x3fecdbe29613eb9f              # double 0.90184144317696624
	.quad	0x3fece175af507a5c              # double 0.90252193680846515
	.quad	0x3fef06815ff55a59              # double 0.96954411260487483
	.quad	0x3fe5d595e441b7f5              # double 0.68232245046033191
	.quad	0x3fb85f645ec12dd0              # double 0.095205567487190778
	.quad	0x3fa008093163de80              # double 0.031311309126917486
	.quad	0x3fc1ca4ee8e498b8              # double 0.13898645755506833
	.quad	0x3fda4006091b00be              # double 0.41015768899161376
	.quad	0x3f9bdd478fc01cc0              # double 0.02721130194552468
	.quad	0x3fe84772969d9f20              # double 0.75872163216715549
	.quad	0x3fd86bb40741346c              # double 0.38157368381945989
	.quad	0x3fed8708356d56d9              # double 0.92273340640050627
	.quad	0x3fd06b1725aa793e              # double 0.25653628042518395
	.quad	0x3fd286037484dbca              # double 0.28942953470999255
	.quad	0x3facd2d3bbe39c20              # double 0.056295983014756468
	.quad	0x3fe5d1c2d3df4533              # double 0.6818555963638232
	.quad	0x3fe7e0eb6cc6fb0a              # double 0.74620600934562842
	.quad	0x3fedaa5c9585bdcc              # double 0.92704610065077863
	.quad	0x3fe2d80be3173baf              # double 0.58887285569823244
	.quad	0x3feca6f20137affa              # double 0.89537906873510953
	.quad	0x3fa4fcb47a9179b0              # double 0.040990486108728574
	.quad	0x3fe46f7a9e8233cc              # double 0.63860827406608101
	.quad	0x3fe940a410edff81              # double 0.78914073282793151
	.quad	0x3fe07e93b7a2e255              # double 0.51545129648645605
	.quad	0x3fe1702d2f442320              # double 0.54494342071220458
	.quad	0x3fc043b83ed45de0              # double 0.12706664150094493
	.quad	0x3fbd4794c353e608              # double 0.11437349098914507
	.quad	0x3fe5d148e2c3866b              # double 0.68179744996832647
	.quad	0x3fd890e530ad9c1a              # double 0.38384370568968651
	.quad	0x3fed1723f95568f6              # double 0.90907477090811883
	.quad	0x3fe6f84bd9a70476              # double 0.71780960569607433
	.quad	0x3fef65e51e203665              # double 0.98118835338545962
	.quad	0x3fd3346d250fb116              # double 0.30007485026614356
	.quad	0x3fee3164e9015405              # double 0.94352956303430402
	.quad	0x3fed2103064e05e4              # double 0.91027976256753762
	.quad	0x3fb74b9eb0ff6868              # double 0.090997617924047369
	.quad	0x3fc34f5680f69fac              # double 0.15085870072402707
	.quad	0x3fd5790f06f5cff6              # double 0.33551383666713208
	.quad	0x3fc2b46edb150644              # double 0.1461313791024158
	.quad	0x3fc991f0e0f14ff8              # double 0.1997662638046902
	.quad	0x3fe1ba05654c80a7              # double 0.55395765099458039
	.quad	0x3f85643297752340              # double 0.010445018050306509
	.quad	0x3fe2ad4171dea109              # double 0.58364937057652455
	.quad	0x3fe1e32c078554da              # double 0.55898095578109097
	.quad	0x3feeac362527840a              # double 0.95852191216192861
	.quad	0x3fa94d77f2b666a0              # double 0.049419163110724584
	.quad	0x3fe19f07aea86ece              # double 0.55066284287337353
	.quad	0x3fe93d551395360e              # double 0.78873685669685911
	.quad	0x3fd7076e3ddee96c              # double 0.35982852975907664
	.quad	0x3fe5c919c1c58376              # double 0.68079841466906887
	.quad	0x3fd6033bf573d33c              # double 0.34394740076031716
	.quad	0x3febca9b433cef0b              # double 0.86848223812509795
	.quad	0x3fdbea6db085d81c              # double 0.43618337858731748
	.quad	0x3fd820a71c0cf398              # double 0.37699296702685947
	.quad	0x3fe8c673b1459be1              # double 0.77422508834285619
	.quad	0x3fda1dd52f7f3b46              # double 0.40807084692362527
	.quad	0x3feee412712e0a79              # double 0.96534082513274122
	.quad	0x3fe6a243c51ff4b2              # double 0.70730770588820335
	.quad	0x3fd86ac0a5a56b1a              # double 0.38151565719970082
	.quad	0x3fe161f973cd82bd              # double 0.54320976846437186
	.quad	0x3fe2b897f8b4d674              # double 0.58503340316265318
	.quad	0x3fdf1636d7700eb0              # double 0.48573084868278738
	.quad	0x3fe45e9e74ab0280              # double 0.63655016695709321
	.quad	0x3fe2b9218ea6a7ad              # double 0.58509900914690649
	.quad	0x3fe8e062f28c0a70              # double 0.77739093182056074
	.quad	0x3feb163a0ff942aa              # double 0.84646323318346117
	.quad	0x3fe516aa43a84103              # double 0.65901673521332815
	.quad	0x3fe5717e1d4f4f9d              # double 0.67010408138820632
	.quad	0x3fd3475ba6696d1a              # double 0.30123034716753383
	.quad	0x3fbb630a98ca0998              # double 0.1069800017376451
	.quad	0x3fc5be23df0e1998              # double 0.16986511603699905
	.quad	0x3fdb3137d41d4a50              # double 0.42487903322504383
	.quad	0x3fec1378fd03ce6c              # double 0.87737702767340186
	.quad	0x3fd37930a81adea8              # double 0.304271854557991
	.quad	0x3fecfca73176af6d              # double 0.90584144268858113
	.quad	0x3fedec75c023b3e0              # double 0.93511474158514928
	.quad	0x3fe444b654a0f522              # double 0.63338772324610582
	.quad	0x3fe8927478f59a3d              # double 0.7678778040397628
	.quad	0x3fce8c6d3a78fafc              # double 0.23866048197847778
	.quad	0x3fe7a4be12c55583              # double 0.73886016527346532
	.quad	0x3fea897e26accb39              # double 0.82928378633218991
	.quad	0x3fef7f27dfb3bea3              # double 0.98427194301435283
	.quad	0x3fe16ec518232d2d              # double 0.54477171625459209
	.quad	0x3fbdf4b845e05c68              # double 0.11701537805525819
	.quad	0x3fd62f97e8642618              # double 0.34665486998037087
	.quad	0x3fdc46fe63561b5a              # double 0.44183311177078155
	.quad	0x3fa4dbe482191640              # double 0.04074014747724819
	.quad	0x3fe1351f95a11c5f              # double 0.53773478722076706
	.quad	0x3fc29a0700548bbc              # double 0.14532554165006484
	.quad	0x3fe16a9669ca49f7              # double 0.54426117574831678
	.quad	0x3fc4defd7f6a9d0c              # double 0.1630551216269186
	.quad	0x3fe02c6aca05a860              # double 0.50542201478425497
	.quad	0x3fd8e9d1039f8fc8              # double 0.38927102426373184
	.quad	0x3fe7df63ef28d5bf              # double 0.74601933203546611
	.quad	0x3fa632a035a768c0              # double 0.043354994344285469
	.quad	0x3fbf24b75a5fa980              # double 0.12165399509800601
	.quad	0x3fed54ea525a8441              # double 0.91661563954051684
	.quad	0x3fef5ca7653963fc              # double 0.9800602891001513
	.quad	0x3fc48d1a82937e08              # double 0.16055613876140762
	.quad	0x3fd98d003f7335e8              # double 0.39923101612370582
	.quad	0x3fd6635c14d106f8              # double 0.34981443436491544
	.quad	0x3fea668c04bee53b              # double 0.8250179379166761
	.quad	0x3fd66fd0855cb12c              # double 0.35057461761131736
	.quad	0x3feceeec90c3bdc5              # double 0.90416553758944274
	.quad	0x3fbfed9f2a600430              # double 0.12471957001254519
	.quad	0x3fe59d42315c8705              # double 0.6754466022577793
	.quad	0x3fef3482348869cc              # double 0.97515974293065132
	.quad	0x3fe7f56536886f95              # double 0.74870548869101816
	.quad	0x3fdd7876abfa7a12              # double 0.46047751230972367
	.quad	0x3fe4b7742050f2d6              # double 0.64739424049147476
	.quad	0x3fc0f1dd570be108              # double 0.13238112211525555
	.quad	0x3fde2dcfb04f2788              # double 0.47154609887785925
	.quad	0x3fd9e313944040e4              # double 0.40448464849124677
	.quad	0x3fea495453800e50              # double 0.82145134266506581
	.quad	0x3f6a79261e1ec500              # double 0.0032315964208115
	.quad	0x3fdfd6c40090f950              # double 0.4974832540064158
	.quad	0x3fdebec3fea0f674              # double 0.48039340845193768
	.quad	0x3fd2ed4808e8d15c              # double 0.29573250646651217
	.quad	0x3fdef914e35e387c              # double 0.48395273403082917
	.quad	0x3fd7afe4bc959d6a              # double 0.37011068741272501
	.quad	0x3fec449544999c04              # double 0.88337195776409815
	.quad	0x3fd747014cdad792              # double 0.36370880608898759
	.quad	0x3feb7158616d037d              # double 0.85758608845217987
	.quad	0x3fe0702379555bec              # double 0.51368879030166914
	.quad	0x3fed3fe8a656c9ed              # double 0.91405136573876933
	.quad	0x3fd681536c91a0f8              # double 0.35164342501094792
	.quad	0x3fc4432298331ac0              # double 0.15829880172369393
	.quad	0x3fe2ad7b27cc61bb              # double 0.58367688916319282
	.quad	0x3fdffd46cbf91b10              # double 0.49983377379651106
	.quad	0x3fd9809708f713a8              # double 0.39847350955488503
	.quad	0x3fd8b9938e630e5e              # double 0.3863266840455476
	.quad	0x3fefd2ca2ed2c6df              # double 0.99448117394623725
	.quad	0x3faa8b8275de4c70              # double 0.051845623863436496
	.quad	0x3fd3f56d8af924ec              # double 0.31185473033526878
	.quad	0x3fe08a29bfa9f17d              # double 0.51686561045021018
	.quad	0x3fe0390723f1e33b              # double 0.50696141262515171
	.quad	0x3fe87b528d467361              # double 0.765054012230035
	.quad	0x3fd2a485c1c2182a              # double 0.29129165574738869
	.quad	0x3fc23f6869607500              # double 0.14256005425787777
	.quad	0x3fedd607929cf449              # double 0.9323766578232916
	.quad	0x3fe730f0f57e4ee5              # double 0.72472427318504329
	.quad	0x3fbda8759979ce58              # double 0.11585173603980914
	.quad	0x3fe675414e004611              # double 0.70181336626609625
	.quad	0x3fd1496e48ce522a              # double 0.2701068602557678
	.quad	0x3fe134f2f7616bfe              # double 0.53771351162447423
	.quad	0x3fdbac8d85fc38c6              # double 0.4324067886781332
	.quad	0x3fdb204eaa9d1d96              # double 0.42384688054559072
	.quad	0x3fef5b4ed89bbd86              # double 0.97989599520035209
	.quad	0x3feb60ab23287624              # double 0.85555035464102902
	.quad	0x3fef70d1c6476187              # double 0.98252190328916888
	.quad	0x3fe49e86f949f240              # double 0.64435146989087144
	.quad	0x3fe6058266f3320a              # double 0.68817253215235152
	.quad	0x3fee39552fde6703              # double 0.94449862813345964
	.quad	0x3fecb1156b56f0cc              # double 0.89661665882842944
	.quad	0x3fe8864b05258d60              # double 0.76639319424831953
	.quad	0x3fe39ebcf4997b1a              # double 0.61312721036287887
	.quad	0x3fdc1587a5a08ec2              # double 0.43881407904175884
	.quad	0x3fe8d9ebd2f2daaa              # double 0.77660170746715562
	.quad	0x3fe62e03cd843c37              # double 0.69311704769086802
	.quad	0x3fd9f8ba7cbc1d2a              # double 0.4058061807740666
	.quad	0x3fece61589a60cfc              # double 0.90308644184588571
	.quad	0x3fe07c377ad9c889              # double 0.51516317362099173
	.quad	0x3fec8857fd828c1c              # double 0.89164351953184306
	.quad	0x3fcaed30b0668780              # double 0.21036347020440971
	.quad	0x3fdbd7f348805b58              # double 0.43505556183065641
	.quad	0x3fd95bdf2e712eac              # double 0.39623240981448293
	.quad	0x3fcfc05a89ce2288              # double 0.24805766800661311
	.quad	0x3fe1acbfe145f6c0              # double 0.55233758925142951
	.quad	0x3fe8a18b085510e1              # double 0.76971961619758755
	.quad	0x3fcb92a4a7d38f08              # double 0.21541269487999437
	.quad	0x3fe1c68cd6288a80              # double 0.55548707797818508
	.quad	0x3fd9c57240597a8a              # double 0.40267616542943385
	.quad	0x3fe3a290343156a8              # double 0.61359415239231385
	.quad	0x3fed0f72187e4cce              # double 0.90813545974597232
	.quad	0x3fe55b14cf3e2402              # double 0.66736832120034273
	.quad	0x3fe429887a941990              # double 0.63006996098629209
	.quad	0x3fb8588477ddffd8              # double 0.095100669159364215
	.quad	0x3fe379b0c4d75353              # double 0.6086047977974921
	.quad	0x3fc156f15c3ad9ac              # double 0.13546578410541821
	.quad	0x3fe278755df4a55d              # double 0.57720440245354221
	.quad	0x3fe953d5323fea3e              # double 0.79148349584949762
	.quad	0x3fed45a50f155bf0              # double 0.91475155778868888
	.quad	0x3fb9783fe12188f0              # double 0.099491112197515496
	.quad	0x3fe9d095e72eec4b              # double 0.80671210434901164
	.quad	0x3fe10973b9d5a69f              # double 0.5324038152295606
	.quad	0x3fb3455831f7ff38              # double 0.075276863288306184
	.quad	0x3f6b934672322100              # double 0.0033661247158002228
	.quad	0x3fdb49a5bf34f15c              # double 0.42637008354701833
	.quad	0x3fd501c807e22e62              # double 0.32823372621417068
	.quad	0x3fe4b69e7fe3e262              # double 0.64729237536000661
	.quad	0x3fd28bb8926c8c3e              # double 0.28977789210529525
	.quad	0x3fe77e358a594786              # double 0.73415638943900841
	.quad	0x3fe91bd52717eca1              # double 0.78464753756943051
	.quad	0x3febbba9e36960cf              # double 0.86665815750441222
	.quad	0x3fd2798637cf1184              # double 0.28866725397190174
	.quad	0x3fed48ec3a7ac7b9              # double 0.91515170499609788
	.quad	0x3fd3876a8a34f8be              # double 0.3051401471783598
	.quad	0x3fbc03a529103a18              # double 0.10943062069439013
	.quad	0x3fee6475a0e743c7              # double 0.9497631209034062
	.quad	0x3fe55b28417d96c6              # double 0.66737759390954277
	.quad	0x3fd0c2049ab52e78              # double 0.26184191806962742
	.quad	0x3fdf100e6fd7e080              # double 0.48535500452226898
	.quad	0x3fdcbbab3d9f523a              # double 0.44895440118606056
	.quad	0x3fde14e4a9ec38f2              # double 0.47002522081392251
	.quad	0x3fe495705d1ec668              # double 0.6432420557741354
	.quad	0x3fdbf1aa14713a44              # double 0.43662502285306837
	.quad	0x3fb64ac433bc8358              # double 0.087078344946815434
	.quad	0x3fcffe5da2cdb0c8              # double 0.2499501271189557
	.quad	0x3fed821e3d0a5450              # double 0.92213355943625608
	.quad	0x3fd584a68dc8865a              # double 0.33622135015511889
	.quad	0x3fb5cf5eaabaecc0              # double 0.085195461923762927
	.quad	0x3fe743d58f6394e0              # double 0.72703054433500469
	.quad	0x3feecb31bbcc5c38              # double 0.96230398825981122
	.quad	0x3fe83efa22290885              # double 0.75768763229304226
	.quad	0x3fdfff9b947ea822              # double 0.49997605802002643
	.quad	0x3fe6d7ef67f5b5b3              # double 0.71385927490853474
	.quad	0x3fedc18d1985551e              # double 0.92987685188805691
	.quad	0x3faf5e589e927390              # double 0.061266679150526859
	.quad	0x3fd296e24e81b4be              # double 0.29045922915140554
	.quad	0x3fe07c34c260f3b5              # double 0.51516187634080401
	.quad	0x3fe72f36739d56ae              # double 0.72451326924302406
	.quad	0x3fe12c287b73c154              # double 0.53664039718391132
	.quad	0x3fdc541f0a482ce2              # double 0.44263435367675019
	.quad	0x3fdaa17635f72c02              # double 0.41610484380788659
	.quad	0x3fac80fa16f2c640              # double 0.055671515752135026
	.quad	0x3fb505d4cdae6020              # double 0.082120228018880415
	.quad	0x3fe587aaacb1a6e7              # double 0.67281087617194835
	.quad	0x3fc8be25469ee9d8              # double 0.19330278347281538
	.quad	0x3fe03a504429d180              # double 0.50711835206179501
	.quad	0x3fda6c9b860fe7bc              # double 0.41287887660984857
	.quad	0x3fb4e7e2d2d80c68              # double 0.081663300014086837
	.quad	0x3fe2a49a532b24a4              # double 0.58259311908581823
	.quad	0x3fe7cf6609300bfc              # double 0.74406720919102964
	.quad	0x3fe9b822342c1948              # double 0.80372724714178734
	.quad	0x3fed650770e76e08              # double 0.91858264972273762
	.quad	0x3fc731d207524cd8              # double 0.18120789868826281
	.quad	0x3fd9830e0a278a10              # double 0.39862395278592633
	.quad	0x3fe7ccfb142fbfab              # double 0.74377206747702951
	.quad	0x3feb22e2019506ac              # double 0.84800815876970636
	.quad	0x3fb69ff13d5eada8              # double 0.088378026469107085
	.quad	0x3fecf39f89de1e04              # double 0.90473915984415542
	.quad	0x3fd05eded45314a6              # double 0.25579043135469204
	.quad	0x3fa98287af2ca360              # double 0.049823989995565254
	.quad	0x3feb6055de137ef4              # double 0.85550969480752181
	.quad	0x3fed8dfbd53a21ff              # double 0.92358199735559754
	.quad	0x3fb2bd220b246530              # double 0.073198440284973243
	.quad	0x3fe1fd95ec973fde              # double 0.5622052784838123
	.quad	0x3fe7fbfd0e12882f              # double 0.74951031445039529
	.quad	0x3fefb9462887c606              # double 0.99136646190726263
	.quad	0x3fe21bba305c13ed              # double 0.56588468022584737
	.quad	0x3fa3236308e91400              # double 0.037379355275824366
	.quad	0x3fedd5d9b3bdb8e1              # double 0.93235478501972235
	.quad	0x3fec94a5753afc5d              # double 0.89314530273976411
	.quad	0x3fc4e1049307b69c              # double 0.16311700038152288
	.quad	0x3fd1b3839eb86e04              # double 0.27658167362253061
	.quad	0x3fc5b2a5b7759e68              # double 0.16951438386898876
	.quad	0x3fecb7769e02d407              # double 0.89739542829067964
	.quad	0x3fecbe7672f97480              # double 0.89824984031623956
	.quad	0x3fbcc9300329ea20              # double 0.11244487836112471
	.quad	0x3fcdbae1e8ad179c              # double 0.2322656999696705
	.quad	0x3fc0603eb2580038              # double 0.12793716152373391
	.quad	0x3fe6f04df7371bc1              # double 0.71683405193549998
	.quad	0x3fd4cb13ce86fc0e              # double 0.32489485901527437
	.quad	0x3fe33bb7d97bb9fe              # double 0.60103981473167756
	.quad	0x3fd098a83579cfae              # double 0.25931744787453226
	.quad	0x3f8c1251340f7240              # double 0.013706812287574199
	.quad	0x3fedd8543fa7bfef              # double 0.93265736038847347
	.quad	0x3fc90e0a8da3f598              # double 0.19574100414312734
	.quad	0x3fe4a7be27306b18              # double 0.64547641424300917
	.quad	0x3f5ac86fd2806a00              # double 0.0016347019209265179
	.quad	0x3f6d3ba2adf88200              # double 0.0035684754691518439
	.quad	0x3fe6525a6a5a5d2c              # double 0.69755287906710839
	.quad	0x3fe875c2170179a3              # double 0.76437477582276292
	.quad	0x3fd56de97d48ef4e              # double 0.33483350024083769
	.quad	0x3fe803fb0d117eda              # double 0.75048592140589254
	.quad	0x3fe34bab78856d65              # double 0.60298703707978218
	.quad	0x3fcccdbc12f306cc              # double 0.22502852368602644
	.quad	0x3fee1b6c28a0e378              # double 0.94084747252701017
	.quad	0x3fd30c3b320a23de              # double 0.29762153517418521
	.quad	0x3fe916997d906105              # double 0.78400873684134409
	.quad	0x3fdd39ec9fdfddc4              # double 0.45666041958562809
	.quad	0x3fc5d4f114882564              # double 0.17056096556215572
	.quad	0x3fe1ba492fa59ccf              # double 0.55398997598686062
	.quad	0x3f906c165bc688a0              # double 0.016037320472272243
	.quad	0x3fa052b535a20680              # double 0.031881010815607347
	.quad	0x3fe76af8026954e2              # double 0.73180771323191274
	.quad	0x3fe69591da6abb4f              # double 0.70575802478365712
	.quad	0x3fe26be9e59cca65              # double 0.57567305418190229
	.quad	0x3fe7733d03a97a8e              # double 0.73281717982520589
	.quad	0x3fb10c821d3f42c8              # double 0.066597110882194888
	.quad	0x3fc0526d3a699b10              # double 0.12751546241926137
	.quad	0x3feb5ce028260c68              # double 0.85508735505608247
	.quad	0x3fdc3743b3164aea              # double 0.44087307442639079
	.quad	0x3fe194ab2ee23fb5              # double 0.54939803273190668
	.quad	0x3fc854fbafa08a84              # double 0.19009347987692504
	.quad	0x3fdf00d0a7022d1e              # double 0.4844247466032402
	.quad	0x3fca6ee5c8b9d5e4              # double 0.20650932599134741
	.quad	0x3fb57f1dff99bb50              # double 0.083970904257268275
	.quad	0x3fefa7c010550543              # double 0.98922732534280333
	.quad	0x3fb81d72f305e080              # double 0.09419935639550836
	.quad	0x3fe5439f4fc139ce              # double 0.66450467660052381
	.quad	0x3fd828ff92710f58              # double 0.37750233937207645
	.quad	0x3fbdcc9e941ee0a0              # double 0.11640349498964264
	.quad	0x3fd7511f32da4cf4              # double 0.36432628599250383
	.quad	0x3f99580f513696e0              # double 0.024749984104025624
	.quad	0x3fd1acd1891b7272              # double 0.27617300404907674
	.quad	0x3fe7934fb08f6ac8              # double 0.73673233494204116
	.quad	0x3fec40553734d8b0              # double 0.8828531339884389
	.quad	0x3fe5a2e104c8684b              # double 0.67613268789433201
	.quad	0x3fca0d8b0027bf18              # double 0.20353829867917095
	.quad	0x3fd97c90eeffe102              # double 0.39822791423604553
	.quad	0x3f7624c10e0b2e00              # double 0.005406145210780533
	.quad	0x3fd91a6e547eec42              # double 0.39223821879904019
	.quad	0x3fd18146daafef02              # double 0.27351542812515117
	.quad	0x3fda08ca45fada76              # double 0.40678650697683538
	.quad	0x3fda8eda4c3e3f26              # double 0.41496903844471189
	.quad	0x3fdefda5328f9356              # double 0.48423128068525523
	.quad	0x3febc180f84812a1              # double 0.86737106792914542
	.quad	0x3fe35fef3f4c2e6f              # double 0.60546076166924745
	.quad	0x3fdaf50dff23f4aa              # double 0.42120695034084099
	.quad	0x3fb3371f3d18f410              # double 0.075059845367789757
	.quad	0x3fe624ebd719a288              # double 0.69200698863740318
	.quad	0x3feeb13beeb486d2              # double 0.9591350233278837
	.quad	0x3fd8583f6be192dc              # double 0.38038621459263111
	.quad	0x3fdc8644d7b00604              # double 0.44569512427560221
	.quad	0x3fdb48f2ada1d1ee              # double 0.42632739025364585
	.quad	0x3fcdabb2746ec728              # double 0.23180227933112829
	.quad	0x3fe37dfe0f553c1b              # double 0.60912993426052553
	.quad	0x3feb5109cbe6317d              # double 0.85364236663876591
	.quad	0x3fe54933b117521c              # double 0.66518578136544049
	.quad	0x3fdaaaf656fc55c4              # double 0.41668470854468986
	.quad	0x3fea3db77580715c              # double 0.82003376912647807
	.quad	0x3fe58c4e4b6aad0f              # double 0.67337717752289616
	.quad	0x3fe01bc35661d8df              # double 0.50338904258276418
	.quad	0x3fe4af29a1eec1c3              # double 0.64638215663404031
	.quad	0x3fe152eccaa5c1fd              # double 0.54137267665470257
	.quad	0x3fc8d566913c3bfc              # double 0.19401247111861142
	.quad	0x3fe27c1f9881db69              # double 0.57765178476880152
	.quad	0x3fd08965547f5760              # double 0.25838597537710051
	.quad	0x3fd3f404d3dbc210              # double 0.3117687291078548
	.quad	0x3fc18c3c87645944              # double 0.13709217654168004
	.quad	0x3fdf09985e69a9a6              # double 0.48496064395899408
	.quad	0x3fe27c17255ab38f              # double 0.57764775558244874
	.quad	0x3fe49189f2627de8              # double 0.64276597347992226
	.quad	0x3fdf45ea2c79d182              # double 0.48864225715012577
	.quad	0x3fed6e243437c842              # double 0.91969499777611241
	.quad	0x3fe514222d1c054c              # double 0.65870770273628798
	.quad	0x3fd507f409355ab2              # double 0.32861042880305569
	.quad	0x3fe20b2218de4fbb              # double 0.56385903222189115
	.quad	0x3fe3731348bac5e5              # double 0.60779728131290922
	.quad	0x3fe43115db70654d              # double 0.63099186762989634
	.quad	0x3fba07a07f6fff90              # double 0.10167887793795516
	.quad	0x3fc2e7e0fcf809dc              # double 0.1477013812255582
	.quad	0x3feb9627e4b61b33              # double 0.86207956953226128
	.quad	0x3fc59eeeaa883bc0              # double 0.16891272856488904
	.quad	0x3fe14dbfdfb56e96              # double 0.54074090664967644
	.quad	0x3fda7f7d66745632              # double 0.41403136258427076
	.quad	0x3f809dc54ed31980              # double 0.0081134237938271792
	.quad	0x3fde0cf6a4326530              # double 0.46954122576569812
	.quad	0x3fb14d0e1dcefdb8              # double 0.06758201816318532
	.quad	0x3fe7577a34b1d0ad              # double 0.72942838947212396
	.quad	0x3fe77b1d8a2c2352              # double 0.73377873408126448
	.quad	0x3fa92abac16a31f0              # double 0.04915412531872565
	.quad	0x3fd28954294f8f9a              # double 0.28963188204056112
	.quad	0x3fec734b40400a96              # double 0.88907396839961694
	.quad	0x3fc55fc64b2c539c              # double 0.16698530836643222
	.quad	0x3fd41c24904a7d50              # double 0.31421770182528963
	.quad	0x3fe448b027f98508              # double 0.63387306029849899
	.quad	0x3fec6274c8bfaffb              # double 0.88701857765909098
	.quad	0x3fc1f69acf51bf00              # double 0.14033827898992257
	.quad	0x3fe87c906bad5313              # double 0.765205583864914
	.quad	0x3fecd682c9bfae65              # double 0.9011854114919059
	.quad	0x3fd1bc263479cde0              # double 0.27710871815290083
	.quad	0x3fe522a368a90e8f              # double 0.66047831002693325
	.quad	0x3fcdd7aa53de36c8              # double 0.23314408393019037
	.quad	0x3fe2159674cd8346              # double 0.56513521969837011
	.quad	0x3fd437b8fd0fa292              # double 0.31590103829379601
	.quad	0x3fd43f97ba6bf19e              # double 0.31638138966789053
	.quad	0x3fe1465f181b9618              # double 0.53984026630922965
	.quad	0x3feb7c25aebcadeb              # double 0.85890468719793256
	.quad	0x3fd35404f7091d9e              # double 0.30200313686915503
	.quad	0x3fd962bb752adbf8              # double 0.39665113870745428
	.quad	0x3fd9bf2a943f7d74              # double 0.40229286649078877
	.quad	0x3fdeb9a829570566              # double 0.48008159672834549
	.quad	0x3fe735951747989d              # double 0.72529081866084122
	.quad	0x3fb73c0d95c9b650              # double 0.090760087079354123
	.quad	0x3fd0a89dc5a0a6ba              # double 0.26029152202191208
	.quad	0x3fbb964dcaef6388              # double 0.10776220516653556
	.quad	0x3feaee87c8877292              # double 0.84161748090589783
	.quad	0x3fe5cb035da3b2fd              # double 0.68103187836604173
	.quad	0x3fcdaf55ffbcc094              # double 0.23191332804845344
	.quad	0x3fe3e4d43975cf59              # double 0.62168322775549278
	.quad	0x3fe418f8329d65c5              # double 0.62804803739270965
	.quad	0x3fe777f9f98b6adb              # double 0.73339556445292986
	.quad	0x3fb70873130f3b28              # double 0.089972679284283985
	.quad	0x3fd5e2417821195e              # double 0.34193455439926435
	.quad	0x3fcc8a37667c44f4              # double 0.22296803001567123
	.quad	0x3fa90e0d89271a30              # double 0.048935339920309295
	.quad	0x3fe9c45136da0274              # double 0.80521450722888099
	.quad	0x3fce2b9f476bc1dc              # double 0.23570624339437429
	.quad	0x3fe530cfc4249ec7              # double 0.66220844563664449
	.quad	0x3fc673f79261e36c              # double 0.17541403434349989
	.quad	0x3fe354d8af9edb57              # double 0.60410723019490831
	.quad	0x3fe77180e8986ae0              # double 0.73260541371140774
	.quad	0x3feaddfa7d01ae38              # double 0.83959698119492199
	.quad	0x3fd577f5d5c94c28              # double 0.33544679524965426
	.quad	0x3fe4200b7374d850              # double 0.62891171026309145
	.quad	0x3fe97848927de507              # double 0.79593304263758646
	.quad	0x3fdf7ded891a2d9c              # double 0.49206102742092539
	.quad	0x3feb2efaf20b3e33              # double 0.84948489450648024
	.quad	0x3fe449ec1dded200              # double 0.63402372201977641
	.quad	0x3fc8f6394f62f4cc              # double 0.19501415611549644
	.quad	0x3fee0bee2bf7d9e0              # double 0.93895634257824767
	.quad	0x3fe71d7dd56149d7              # double 0.72235004115855872
	.quad	0x3fe6129cad1027e3              # double 0.68977197457683948
	.quad	0x3fcb660dd5f71538              # double 0.21405194232480951
	.quad	0x3fedafea980349fc              # double 0.92772416772851284
	.quad	0x3fc9c4b7070718c0              # double 0.20131576388502559
	.quad	0x3fc082d2a94aae50              # double 0.128992397939657
	.quad	0x3fec45e38ded8b7e              # double 0.88353135795874471
	.quad	0x3feac032ad1a8e21              # double 0.83596166428873542
	.quad	0x3fb8214848778548              # double 0.094257848445996051
	.quad	0x3fd76cc8fccf258a              # double 0.36601471603770419
	.quad	0x3fd60bc4ba7c16f4              # double 0.34446829043768834
	.quad	0x3fe0786127e2dc66              # double 0.51469476499813704
	.quad	0x3fd11f6a05cb86d0              # double 0.26754236761017314
	.quad	0x3fec439567501bb1              # double 0.88324995210938628
	.quad	0x3fe0880d684d20ec              # double 0.51660795565933659
	.quad	0x3fdfb699d6f46e4c              # double 0.49552007667236775
	.quad	0x3feb371bb64a6494              # double 0.85047708133346811
	.quad	0x3fd67325ef3b8350              # double 0.3507780872587789
	.quad	0x3fd8a0c307e74122              # double 0.38481212398348152
	.quad	0x3fd1a6ccec40f8dc              # double 0.27580569335613148
	.quad	0x3fceabf2ada2e0b4              # double 0.23962243536312189
	.quad	0x3fcabad9be5764f4              # double 0.2088272265816965
	.quad	0x3fe27fe48a9e8083              # double 0.57811190675785473
	.quad	0x3fa7e2d6b0abb900              # double 0.046652516428240531
	.quad	0x3fa82e7efb45e1b0              # double 0.047229736493082597
	.quad	0x3feac1985c84b0fe              # double 0.83613222188935743
	.quad	0x3fecc53eae3e63fa              # double 0.89907774002051544
	.quad	0x3fd7a7aef85ab5f6              # double 0.36960958722451609
	.quad	0x3fe03340d00a561e              # double 0.50625649102102321
	.quad	0x3fe6440ab15eb286              # double 0.6958058799987874
	.quad	0x3fd1379ea7390112              # double 0.26901975946749801
	.quad	0x3feb949c46597c20              # double 0.8618909238829282
	.quad	0x3fe7a65c22e0c763              # double 0.73905760585897118
	.quad	0x3fe3bfa20e0beaf8              # double 0.61714270347087474
	.quad	0x3fc4c2f364f0c05c              # double 0.16219942501766382
	.quad	0x3fefb25d726decb6              # double 0.99052307462206701
	.quad	0x3fd327e7cd1c6928              # double 0.29931063681000802
	.quad	0x3feea68f0af9e932              # double 0.95783188003341579
	.quad	0x3fee2a1d7a46ebc7              # double 0.94264100916131432
	.quad	0x3fe79f8345e7eb2d              # double 0.73822177556517021
	.quad	0x3fe3824ed362be91              # double 0.6096567276599264
	.quad	0x3fddc915e6cc7d2a              # double 0.46539828814452966
	.quad	0x3feb7af1b761e747              # double 0.85875783745653045
	.quad	0x3feedaa3785f87a6              # double 0.96418927679427635
	.quad	0x3fedbab7bacdf92a              # double 0.92904268727560191
	.quad	0x3fb7c9356379e400              # double 0.092913948808828195
	.quad	0x3fe2eb50f57f187b              # double 0.59122512768296021
	.quad	0x3fe3c3bb150a79b4              # double 0.61764291867785071
	.quad	0x3fe384e753cf0bba              # double 0.60997358673954882
	.quad	0x3fece7c8355178bb              # double 0.90329370893211747
	.quad	0x3fd7b51cbd6eac38              # double 0.37042921542405649
	.quad	0x3fe4e6a47ebb8b35              # double 0.65315460922679469
	.quad	0x3fd73b70b804bb2e              # double 0.363002948480175
	.quad	0x3feb8c9b32073fb0              # double 0.86091384669452076
	.quad	0x3fd8760278b77f96              # double 0.38220273770093038
	.quad	0x3fe07ec33c0f709e              # double 0.5154739544918987
	.quad	0x3fcd03b7e6955c4c              # double 0.2266759754081441
	.quad	0x3fe60cfd7b1a2481              # double 0.68908571284659115
	.quad	0x3fdb4608522b497e              # double 0.42614944481206141
	.quad	0x3fb00c4833c22b88              # double 0.062687409054133281
	.quad	0x3fd88998741a1520              # double 0.38339816415857975
	.quad	0x3fe75fdc174484d3              # double 0.73045162720168333
	.quad	0x3fa988f2f65e12f0              # double 0.049872963499216882
	.quad	0x3fc9b1889ca77bfc              # double 0.20073039673931692
	.quad	0x3fd4a4c786845e10              # double 0.32255733620101612
	.quad	0x3fcfcef2ba53b554              # double 0.24850305650708526
	.quad	0x3faa97e8ed8ec2a0              # double 0.051940230368363816
	.quad	0x3fd1db0781c73024              # double 0.27899348901405774
	.quad	0x3fd6dc642744b9d0              # double 0.35720161280451368
	.quad	0x3fccb9592e6b50c4              # double 0.22440638319551998
	.quad	0x3fea4e831d7cbbbf              # double 0.82208400496698875
	.quad	0x3fd4d65ed4b07652              # double 0.32558413286628707
	.quad	0x3fec55460794745c              # double 0.88540936928223912
	.quad	0x3feeaf52c0073105              # double 0.95890176301466623
	.quad	0x3fe088fa7749e398              # double 0.51672099398193705
	.quad	0x3fee9e66738356eb              # double 0.95683596192494969
	.quad	0x3fd6a639dad719ac              # double 0.35389562960736032
	.quad	0x3fee52685e33d6b9              # double 0.94755953215527378
	.quad	0x3fd9382f785457c4              # double 0.39405428648876417
	.quad	0x3fedce0157217126              # double 0.93139712350560866
	.quad	0x3fbbf594f551efe0              # double 0.10921603192576823
	.quad	0x3fca8b86255d28f8              # double 0.20738293480309955
	.quad	0x3fe1885c3bf353d9              # double 0.54789554318505929
	.quad	0x3fe1fa7134b9d80e              # double 0.56182155893361752
	.quad	0x3fe04ad641b7a746              # double 0.50913536868504461
	.quad	0x3f8a86652bbfdc40              # double 0.012951650998713871
	.quad	0x3feb7855c91196a2              # double 0.85843934317809478
	.quad	0x3fb7d58ff9a06610              # double 0.093102453655227401
	.quad	0x3fd9c4998d9dda7e              # double 0.40262450055835319
	.quad	0x3fda26e07079f17e              # double 0.40862284645097435
	.quad	0x3fb826998d535660              # double 0.094338986399941315
	.quad	0x3fd40e47c2508e08              # double 0.31337160087625238
	.quad	0x3feeb90f72f954ea              # double 0.96009037452554691
	.quad	0x3fe53113b97617eb              # double 0.66224085066710126
	.quad	0x3fdf41f63e4a87a6              # double 0.48840099413984672
	.quad	0x3fe6bfe811b3bc9e              # double 0.7109260888809279
	.quad	0x3fd56c4f81f06fbc              # double 0.3347357529580639
	.quad	0x3fd00edd0bf2f29a              # double 0.25090719382186821
	.quad	0x3fd686a601e655c4              # double 0.35196829019090736
	.quad	0x3fd7651b84501966              # double 0.36554611130886483
	.quad	0x3fef2c7b03f62fcf              # double 0.9741797520996388
	.quad	0x3fea1d6160be1b45              # double 0.81608647246398702
	.quad	0x3fe3e33b97029a0e              # double 0.62148837560818193
	.quad	0x3fcd1829fe1b7208              # double 0.22729992778376151
	.quad	0x3fd940634e840150              # double 0.39455492656272373
	.quad	0x3fe3cfa27204c244              # double 0.61909601468330111
	.quad	0x3fcb9dd865a4f3d8              # double 0.21575455630400486
	.quad	0x3fb39b502d13f6e0              # double 0.076588641171805971
	.quad	0x3fe0c8d105c886e5              # double 0.52451373223831566
	.quad	0x3fed4cc91566e6bc              # double 0.9156232278830525
	.quad	0x3fe0ae1ff1db7526              # double 0.52125546682114954
	.quad	0x3fe462192728f4d2              # double 0.63697488449511241
	.quad	0x3fbff706de4184a0              # double 0.12486308027429738
	.quad	0x3fb469b40b905110              # double 0.079737904380014379
	.quad	0x3fc7a12ee0200404              # double 0.18460641807180889
	.quad	0x3fe93a2593cd9c86              # double 0.78834799640471043
	.quad	0x3f8e930e699df5c0              # double 0.014928925131011961
	.quad	0x3fd9f2a7962d12ca              # double 0.40543546357757221
	.quad	0x3fd19365116b864a              # double 0.27462126446889512
	.quad	0x3fe8bf7f359cf073              # double 0.77337608786866807
	.quad	0x3fb91ad642054bb0              # double 0.098065749281245784
	.quad	0x3fd8069be074822a              # double 0.37540337485737274
	.quad	0x3fd001976a2f08d2              # double 0.25009713525299759
	.quad	0x3fec6590a921dd3b              # double 0.88739808114670582
	.quad	0x3fecde2d28fd5545              # double 0.90212114339616589
	.quad	0x3fd4570bce2d3cfc              # double 0.31781287321514617
	.quad	0x3fd76609765c318c              # double 0.36560284193617387
	.quad	0x3fd20635833023a6              # double 0.28162896930057923
	.quad	0x3fe936c3cd0c878f              # double 0.7879351620542695
	.quad	0x3fdcc1820867819e              # double 0.44931078739866759
	.quad	0x3feab35f9eb84dd5              # double 0.8343961811064512
	.quad	0x3feb726778ee753e              # double 0.85771535510472297
	.quad	0x3fcbcf118e58dbbc              # double 0.21725673151533254
	.quad	0x3fe1c2199207a167              # double 0.5549438335556659
	.quad	0x3fea0c50aee96f20              # double 0.8140033165213687
	.quad	0x3fd7725544ed3a2c              # double 0.36635333758468636
	.quad	0x3fda2b39a0d180e4              # double 0.40888825135153994
	.quad	0x3febbe1fc73e03d4              # double 0.86695851244450716
	.quad	0x3fd6a1a057f8a0b4              # double 0.35361488905847271
	.quad	0x3f98c336d4a38940              # double 0.024182183006709268
	.quad	0x3feba3100e126c42              # double 0.86365511654310745
	.quad	0x3fdd430050bb7596              # double 0.457214430656529
	.quad	0x3fb75844e7da5d38              # double 0.091190630535824435
	.quad	0x3fe3acac09ad987b              # double 0.6148281277680917
	.quad	0x3fef687844924dae              # double 0.98150266068335212
	.quad	0x3fc6529a5a896960              # double 0.17439584179630696
	.quad	0x3fe28ba071d27c80              # double 0.57954427939320396
	.quad	0x3fd0b2fac9190438              # double 0.26092404974412231
	.quad	0x3fd27114ec48d3bc              # double 0.28815196108490304
	.quad	0x3fcf80f06e27cc38              # double 0.24612241152462544
	.quad	0x3fac833c6492bb20              # double 0.055688750531194708
	.quad	0x3fef49c7c0878d7a              # double 0.97775638202112636
	.quad	0x3fde4980038bab92              # double 0.47323608728645994
	.quad	0x3fe460aadc1439b0              # double 0.63680022224598609
	.quad	0x3fd08e4bdc7701f0              # double 0.25868507890484604
	.quad	0x3fc6da2ca986bb5c              # double 0.17853315618182364
	.quad	0x3fd94e0d2c1d07a2              # double 0.39538888271283146
	.quad	0x3fcbe71d3e897ea8              # double 0.21799054673737328
	.quad	0x3fd9339c9ad934cc              # double 0.39377513048095802
	.quad	0x3fda3dfe42a2543e              # double 0.41003376490818144
	.quad	0x3fbac00bcbb437b0              # double 0.10449289057962008
	.quad	0x3fe1851fbcbd008d              # double 0.547500485066864
	.quad	0x3fda3a027343a7dc              # double 0.40979062324788429
	.quad	0x3fd4ab3b2569c572              # double 0.32295111325864589
	.quad	0x3feffa558c2bdd52              # double 0.99930837037292464
	.quad	0x3fe2a2d64c285938              # double 0.58237757563146086
	.quad	0x3fc560a496b57d50              # double 0.16701180800280691
	.quad	0x3fc0f883d8e51cec              # double 0.13258407679152329
	.quad	0x3fe1f7f6ba78fd34              # double 0.56151901646072711
	.quad	0x3fe6ad5dc3e40ab1              # double 0.70866287479323919
	.quad	0x3fc5dca70d13cf78              # double 0.17079628122848667
	.quad	0x3fe813fc9f8224aa              # double 0.75243979600886246
	.quad	0x3fe637d75e93a6a7              # double 0.69431656333946001
	.quad	0x3fb2afcdaebb8fc0              # double 0.072995047721234663
	.quad	0x3fe91d90e0d3b9b6              # double 0.78485912238629996
	.quad	0x3fe7fdaa0b61fafd              # double 0.74971487258139258
	.quad	0x3feb23a40dcce03d              # double 0.84810068793650084
	.quad	0x3fe5cc25eba00337              # double 0.68117042561070817
	.quad	0x3fe8e8e566cd2513              # double 0.77842969969165876
	.quad	0x3fe7ff2bb1816b7b              # double 0.74989876431514746
	.quad	0x3feead9b8f217c21              # double 0.95869234042391238
	.quad	0x3fe2e723ed36404e              # double 0.59071537332966684
	.quad	0x3feaf52f640b0b13              # double 0.84242982425380075
	.quad	0x3fe140b3836023e3              # double 0.5391480985573448
	.quad	0x3fe0e0ebf81e264f              # double 0.52745626888754227
	.quad	0x3fb76330bbbf7ad8              # double 0.091357274853616999
	.quad	0x3fef98d53c74b698              # double 0.98740636642260692
	.quad	0x3fdee2eafa1d4d8e              # double 0.48259996819725692
	.quad	0x3fe0592213eb6526              # double 0.51088050737886159
	.quad	0x3fec994bc3586c9c              # double 0.89371288445854046
	.quad	0x3fdb8fdc79f011a8              # double 0.4306555929945497
	.quad	0x3fd1ac13c58fc822              # double 0.27612776082162516
	.quad	0x3fdb8d166a105d0a              # double 0.43048630101971297
	.quad	0x3fc5ac91afedd924              # double 0.16932889070785351
	.quad	0x3fe1cd23e5fcc350              # double 0.55629153174786872
	.quad	0x3febc766c6ee4276              # double 0.86809100011494311
	.quad	0x3f77ca7483efa980              # double 0.0058083106405127927
	.quad	0x3fe25fdccb21840e              # double 0.5742019622231298
	.quad	0x3fd53c6ef8ca7dd8              # double 0.33181356712335974
	.quad	0x3feb9caf7403a208              # double 0.86287663134595594
	.quad	0x3fb0b89c41d76da0              # double 0.065316930842007626
	.quad	0x3fd6ce4e8e502e6e              # double 0.35634197137617363
	.quad	0x3fd08f6be7a36c90              # double 0.25875375386176191
	.quad	0x3fe4ebbe507b09da              # double 0.65377727240439332
	.quad	0x3fda232c71905e98              # double 0.40839682665089461
	.quad	0x3fec3eabfd6b9a97              # double 0.88265037056119666
	.quad	0x3fcbaab30e508b64              # double 0.21614683340984719
	.quad	0x3fdd644fa3e0be02              # double 0.45924750331593611
	.quad	0x3fb94ea903770a40              # double 0.098856509538600257
	.quad	0x3fe4858f69764828              # double 0.64130373571447752
	.quad	0x3fed51c1167ec15a              # double 0.91622976678449253
	.quad	0x3fc6b895d58add0c              # double 0.17750809599758843
	.quad	0x3fded54c89e652d2              # double 0.48176873652236651
	.quad	0x3fcd11ee81e45e14              # double 0.2271097311247422
	.quad	0x3feb59aeb8faedf2              # double 0.85469757203048702
	.quad	0x3fe31019c6c84b6b              # double 0.59571541619002966
	.quad	0x3feb775ce6985def              # double 0.85832066572305432
	.quad	0x3fd8232cc6b13016              # double 0.37714690593270583
	.quad	0x3fe99af370a5473a              # double 0.80016490937325746
	.quad	0x3fe6528ba8bd6459              # double 0.69757636029238335
	.quad	0x3fd718853e556336              # double 0.3608716114736582
	.quad	0x3fef72fa86fce5e4              # double 0.98278547634907598
	.quad	0x3fdc5199ce84920a              # double 0.44248051803359145
	.quad	0x3fe3bb502969e5e3              # double 0.61661537254911669
	.quad	0x3fc910a493364558              # double 0.19582040012441371
	.quad	0x3fdfe36d2df010ae              # double 0.49825601087673987
	.quad	0x3fe9bb85d7fd1e28              # double 0.80414097008992247
	.quad	0x3fe3eb38b8087bb7              # double 0.62246356910679068
	.quad	0x3f715ce5dfa4d000              # double 0.0042389850080333247
	.quad	0x3fee4b22f618ab4c              # double 0.94667194429107714
	.quad	0x3fed3333479faccb              # double 0.91250003804216229
	.quad	0x3feb4cd7a4dd0d92              # double 0.85313017082119047
	.quad	0x3fd23fab79662d8c              # double 0.28513609748252899
	.quad	0x3fe85465e85ea1b9              # double 0.76030249962518959
	.quad	0x3fd7147f71e5c5ec              # double 0.36062608835990662
	.quad	0x3fef72dc03c41b95              # double 0.98277092681461175
	.quad	0x3fbf7b54b03e1f78              # double 0.12297562887954239
	.quad	0x3fe1fbd7841da5e7              # double 0.56199241451139137
	.quad	0x3fe4c3171096856c              # double 0.64881470908964678
	.quad	0x3fe230c2e5d414b2              # double 0.56845230949752179
	.quad	0x3fe306bcfaafafc5              # double 0.59457253420031775
	.quad	0x3fba2a085299a6e0              # double 0.10220386520964153
	.quad	0x3fe4adf5a0161d98              # double 0.64623528735039582
	.quad	0x3fdff159a4c149d8              # double 0.49910584534987157
	.quad	0x3fce686815552048              # double 0.23756123582484379
	.quad	0x3fb060f9fdcd9748              # double 0.06397974439968579
	.quad	0x3fd79e92b4322b2a              # double 0.3690535316206246
	.quad	0x3feb43e05006c709              # double 0.8520356715218621
	.quad	0x3fc43ba0823c2f40              # double 0.15806967124114557
	.quad	0x3febc701c8c998ea              # double 0.86804284302050161
	.quad	0x3fe25482d89d2f40              # double 0.57281629855558691
	.quad	0x3fe35f0de0d730fb              # double 0.60535329736879306
	.quad	0x3fc96479ab5f34f4              # double 0.19837876193779602
	.quad	0x3fe00d856d506544              # double 0.50165053701781703
	.quad	0x3fe82f4548dbb6ec              # double 0.75577034216050043
	.quad	0x3fb4ba99a3d47648              # double 0.080972292420903647
	.quad	0x3fd3cd5d22d31a34              # double 0.30940941239205988
	.quad	0x3fe6fa7f62bbad19              # double 0.71807832034884023
	.quad	0x3fbe49b7e1027478              # double 0.11831235164068399
	.quad	0x3fb77f682c0e70e8              # double 0.091787825351676511
	.quad	0x3fec4ccd679d26b6              # double 0.88437528836330759
	.quad	0x3fbd6f12b770d8d0              # double 0.11497609118018493
	.quad	0x3fee7b9b363df793              # double 0.95258865923072944
	.quad	0x3fb1b1eb73d7ce20              # double 0.069121089727382401
	.quad	0x3fe6c6836ecf36b8              # double 0.71173259394136945
	.quad	0x3fc953cff0347838              # double 0.19787024716146262
	.quad	0x3fdd1ce069e4e372              # double 0.45488748875828044
	.quad	0x3fe0da24c5753c78              # double 0.52662886205679538
	.quad	0x3fa19d0087f66440              # double 0.034400955769520625
	.quad	0x3fe3aea7f5816168              # double 0.61507032346984847
	.quad	0x3faa0d9e5554f2f0              # double 0.050885150829776182
	.quad	0x3fb6546754b96df0              # double 0.087225397286083028
	.quad	0x3feff586a4408229              # double 0.99872142868486435
	.quad	0x3f7dca6cbc2bc080              # double 0.0072731254065133699
	.quad	0x3fb0e564d2d17e80              # double 0.066000272244759017
	.quad	0x3fe98d7ae0618095              # double 0.79852050613773662
	.quad	0x3fef56a37e207a19              # double 0.97932600626137678
	.quad	0x3fe69a9ffbc0058c              # double 0.70637511415422827
	.quad	0x3fea27aeeb3521c2              # double 0.81734414996122262
	.quad	0x3fe67a6726434440              # double 0.70244176362223953
	.quad	0x3fa1614c6cb6c180              # double 0.033945453901995215
	.quad	0x3fcba23bd90ad1c8              # double 0.21588848207251332
	.quad	0x3fba360ef67fb7a0              # double 0.10238736646689839
	.quad	0x3fb8ef09cdcf8d50              # double 0.097397434946789873
	.quad	0x3fe6ae2d763dde36              # double 0.70876191228939578
	.quad	0x3fc6562ce4ebec94              # double 0.17450486352740724
	.quad	0x3fb33db9143faa88              # double 0.075160567706612835
	.quad	0x3fb9f3daba8b6238              # double 0.10137717298801696
	.quad	0x3fa2df6b389e6330              # double 0.03686080042024853
	.quad	0x3fca35871eca19b0              # double 0.20475853923217135
	.quad	0x3fd16a9ccc268cc6              # double 0.27213210999088877
	.quad	0x3fc6492a79be2740              # double 0.17410784668418877
	.quad	0x3fd5a08fae765cf6              # double 0.33792488133754206
	.quad	0x3fe692d69b84be91              # double 0.70542459845269623
	.quad	0x3fe356b701ec0395              # double 0.60433531165482413
	.quad	0x3fd5f4399b607c56              # double 0.34303131269002074
	.quad	0x3fa664b466090770              # double 0.043737065749623549
	.quad	0x3feb88b5982c79d0              # double 0.8604381534713017
	.quad	0x3fa830e9261c4a30              # double 0.047248159315263272
	.quad	0x3fc3723ecdad7828              # double 0.15192399065830497
	.quad	0x3fedfe9f3ca719ab              # double 0.9373317894576777
	.quad	0x3fed92199d90e547              # double 0.92408448004349786
	.quad	0x3fe573d7bc3c468e              # double 0.67039095654236447
	.quad	0x3feb2143fc15e68d              # double 0.84781073794802497
	.quad	0x3fef4c6a89c810be              # double 0.97807814512682234
	.quad	0x3fe0acb7badb5e73              # double 0.52108370299806805
	.quad	0x3fe81fc364800690              # double 0.75387735012937362
	.quad	0x3fd835f21280f566              # double 0.37829257781034753
	.quad	0x3fe51ea4fb062a27              # double 0.65999077823773156
	.quad	0x3fdf4565db999b6e              # double 0.48861071057620264
	.quad	0x3fe10fa161050894              # double 0.53315800618317377
	.quad	0x3fc16ccdbe482a38              # double 0.13613292494876972
	.quad	0x3fde4344dbee6234              # double 0.47285577275900725
	.quad	0x3fe85466787a1ad0              # double 0.76030276804598351
	.quad	0x3fc727f9e1374df0              # double 0.18090747353436099
	.quad	0x3fd60f59d8f60084              # double 0.34468694865791627
	.quad	0x3fbb204c0b942fc0              # double 0.10596156389891487
	.quad	0x3fe04467b1dff326              # double 0.50835022679493558
	.quad	0x3fb9dc3d9486cee0              # double 0.10101685405862382
	.quad	0x3fdefbf87908178a              # double 0.48412906474583706
	.quad	0x3feca4ef52038663              # double 0.89513364809336016
	.quad	0x3fce2f015a8b81ec              # double 0.23580948754444309
	.quad	0x3fcf8a5c338a4694              # double 0.24640991703613635
	.quad	0x3fb961c899830db0              # double 0.09914830921029849
	.quad	0x3fefdcfe20b5c8bc              # double 0.99572664631548191
	.quad	0x3fe1809f2022b7ad              # double 0.54695087696540201
	.quad	0x3fe51979bc53e3da              # double 0.65935980589631105
	.quad	0x3fc5169b8941b638              # double 0.16475242807375579
	.quad	0x3f9f4add2c3de5e0              # double 0.030559020829491135
	.quad	0x3fe8802cf5ed4d34              # double 0.76564643890961869
	.quad	0x3feb7df9a2da3b88              # double 0.85912782485125749
	.quad	0x3fdbe5f711280502              # double 0.43591095614836217
	.quad	0x3fe16f4f9b271d94              # double 0.54483776381759919
	.quad	0x3fc6d47a8aae2748              # double 0.17835933467386611
	.quad	0x3fe055bd37ff4b72              # double 0.51046620308839707
	.quad	0x3fbbfa3639aa0368              # double 0.10928667934241576
	.quad	0x3fd8500890374c08              # double 0.37988485416025286
	.quad	0x3fcc61177097f990              # double 0.22171299932228949
	.quad	0x3fdd402ab0bb8e4e              # double 0.45704142817541971
	.quad	0x3febd094d97bd013              # double 0.86921160199426806
	.quad	0x3feba4a126f81a53              # double 0.86384637461817204
	.quad	0x3feaa5edf76e2217              # double 0.83275507284367023
	.quad	0x3fed8ea003b0f8fe              # double 0.92366028519589327
	.quad	0x3fbc2ddb022ca0d8              # double 0.1100746994312688
	.quad	0x3fe8848595a621a8              # double 0.76617697933493378
	.quad	0x3fe9c75d3a44c907              # double 0.8055864465771102
	.quad	0x3fa28f6fdc3edc30              # double 0.036250587115710053
	.quad	0x3fba1540873d8048              # double 0.10188678075564994
	.quad	0x3fd551164266f2fe              # double 0.33307415470680712
	.quad	0x3f9eea000b4b2c40              # double 0.030189514817532848
	.quad	0x3fd50c864b55e7dc              # double 0.32888944012631582
	.quad	0x3fe457f569c0bc46              # double 0.63573713927133535
	.quad	0x3feffa08122767c7              # double 0.99927142663659018
	.quad	0x3fe8d48fad11c561              # double 0.77594741633053499
	.quad	0x3fa8334f827794f0              # double 0.047266468692933716
	.quad	0x3feb28f95f4b6178              # double 0.8487517224521488
	.quad	0x3fe48e56b5f1637e              # double 0.642375331265711
	.quad	0x3fdaed150cd0730a              # double 0.42072035075561642
	.quad	0x3fd38dd2b7180aba              # double 0.30553119545235641
	.quad	0x3fecb19c6b6551c3              # double 0.89668103194940618
	.quad	0x3fa79fcde0e23820              # double 0.046141084386462916
	.quad	0x3fdcbcdba9288824              # double 0.44902698058479218
	.quad	0x3fece9417323d68c              # double 0.90347359169273167
	.quad	0x3fe162b5f6f165da              # double 0.54329965811774206
	.quad	0x3fde9eb558829654              # double 0.47843679088177749
	.quad	0x3fe882c0328856fa              # double 0.76596078748363472
	.quad	0x3fc15708bbd117c8              # double 0.13546857043018989
	.quad	0x3fe43dc0d2408cb8              # double 0.63253823342201709
	.quad	0x3fb35c5471395b90              # double 0.075627591745940359
	.quad	0x3fd1a39d59bf7a9a              # double 0.27561124576997431
	.quad	0x3fd28c8a037cfe1e              # double 0.28982782688760433
	.quad	0x3fce07add9fd5de4              # double 0.23460934776333808
	.quad	0x3fe02ddfeec0e35b              # double 0.50559994346177051
	.quad	0x3fecc91bfa94694f              # double 0.89954947415689357
	.quad	0x3fe9e80485a1f761              # double 0.80957246875889777
	.quad	0x3fbb9d881e14b080              # double 0.10787249311823821
	.quad	0x3f801e6dc03d0ac0              # double 0.0078705381671445584
	.quad	0x3fed45e0ce60d61c              # double 0.91478004749541552
	.quad	0x3fd017115de3f772              # double 0.25140794915193176
	.quad	0x3fd625e65df9e5ac              # double 0.34606322457656336
	.quad	0x3fe122f8771729a3              # double 0.53551886806353755
	.quad	0x3fbf79c0a61e5088              # double 0.12295154624581717
	.quad	0x3fb4663fa1555d88              # double 0.079685189140368817
	.quad	0x3fd2251596911168              # double 0.28351344779755161
	.quad	0x3febe1375092326f              # double 0.87124219643153633
	.quad	0x3fdf78bb3f1a1736              # double 0.49174386179253149
	.quad	0x3fed429eb3e13858              # double 0.91438231594816965
	.quad	0x3fe3bd9b1f63e5fb              # double 0.61689525729087735
	.quad	0x3fd019cd56db5d60              # double 0.25157483560675153
	.quad	0x3fd81d6a1bb8dd72              # double 0.37679531771887931
	.quad	0x3fc69d01ebeb58c0              # double 0.17666648883341018
	.quad	0x3fb796de6157f508              # double 0.092145823255084136
	.quad	0x3f7355929da98580              # double 0.0047202803785649783
	.quad	0x3fdd7f9e3576d972              # double 0.46091418477171608
	.quad	0x3feb083b10761520              # double 0.84475472655381977
	.quad	0x3fedfa5f7b851aa3              # double 0.93681310772884208
	.quad	0x3fbb126312860a28              # double 0.10574931337581772
	.quad	0x3fe8572b577958c7              # double 0.76064078411834479
	.quad	0x3fdfb2341e6f5284              # double 0.49525168392327878
	.quad	0x3fed2339a60c4b7b              # double 0.91054994994406913
	.quad	0x3fef8e4942b7aadb              # double 0.98611891775848492
	.quad	0x3fd7c783758f1d8a              # double 0.37155233841300428
	.quad	0x3fc6f1c3283e6370              # double 0.17925300087952278
	.quad	0x3fe55685c36b92fe              # double 0.66681183021555035
	.quad	0x3fda29912de484be              # double 0.40878705484108113
	.quad	0x3fd7dbb5dc5cc51a              # double 0.37278505821002883
	.quad	0x3fe8fc05dd8d627a              # double 0.78076451560907789
	.quad	0x3fb9ff014d1e1388              # double 0.10154731877089607
	.quad	0x3f9ebf7c0a49dc00              # double 0.030027330520592699
	.quad	0x3fee8b8cc8ca80d8              # double 0.95453490464208368
	.quad	0x3fb356f9d740e030              # double 0.075545897533516592
	.quad	0x3fe7a0635f3f19ca              # double 0.73832863428906959
	.quad	0x3fc19be4ab11a8ec              # double 0.13756998398759579
	.quad	0x3fa53ff5fa656200              # double 0.041503607574387757
	.quad	0x3fd3e4a5f79a634a              # double 0.31083058528888741
	.quad	0x3fc9ef82b2db4be4              # double 0.20262178166612366
	.quad	0x3fd940a5f2736c0e              # double 0.39457081486551793
	.quad	0x3fbd0b5556d06180              # double 0.11345418328745005
	.quad	0x3fd8ba7da820c13c              # double 0.38638249796624158
	.quad	0x3fd53b7bc88ca612              # double 0.33175558648017145
	.quad	0x3fda844f030f314a              # double 0.41432547854198687
	.quad	0x3fbaf81a89db32a8              # double 0.10534826150542165
	.quad	0x3fcc509c34cc8b60              # double 0.22121002748562102
	.quad	0x3fe57d45a8dd6f26              # double 0.67154200536194675
	.quad	0x3fd29cd3869680d4              # double 0.29082191603994301
	.quad	0x3fdf062af29d5f3c              # double 0.48475145047040136
	.quad	0x3fe9af54d1b8863d              # double 0.80265274964421673
	.quad	0x3fc01a4a07be04ac              # double 0.12580228212394695
	.quad	0x3fe1d68d723821e6              # double 0.55744049366427073
	.quad	0x3fecd3e7d9ab7048              # double 0.90086739076242228
	.quad	0x3fe96e82e11f3823              # double 0.79474014252787517
	.quad	0x3fd6ab1f380d4290              # double 0.35419445489700596
	.quad	0x3fe668d976896eb4              # double 0.70029900695541025
	.quad	0x3feda67f186837ea              # double 0.92657427565586414
	.quad	0x3fb61a79f96abe90              # double 0.086341498749556544
	.quad	0x3fea0636d8ba2f67              # double 0.81325857476757057
	.quad	0x3fddcd3769ca1b88              # double 0.46565041857723388
	.quad	0x3fdfd72aca525664              # double 0.49750776060077428
	.quad	0x3fe33754571eede3              # double 0.60050408378395692
	.quad	0x3fe1159092f81028              # double 0.53388241486436971
	.quad	0x3fcaefd92cb061d4              # double 0.21044459039764141
	.quad	0x3fe2e36876274652              # double 0.5902597720798417
	.quad	0x3fcdaddaa75d4510              # double 0.23186810657583878
	.quad	0x3fe4696fe45f7b57              # double 0.63787073711487607
	.quad	0x3fdab1fa46b5c706              # double 0.41711289315490807
	.quad	0x3feb91fc614eedaa              # double 0.86157053952722618
	.quad	0x3fdceb1913ac1476              # double 0.45184924050437958
	.quad	0x3fd9717abc03d272              # double 0.39755123482544896
	.quad	0x3fe162e32887cbf2              # double 0.54332120815376883
	.quad	0x3fc044ad076ce318              # double 0.12709582197728575
	.quad	0x3fc2db08454328b0              # double 0.14730933553648162
	.quad	0x3fe38fc70fcfa271              # double 0.61130097473239975
	.quad	0x3fea6bdb1e7e7db7              # double 0.82566600757484465
	.quad	0x3fc7591540e0b850              # double 0.1824060980592912
	.quad	0x3febe8075f116976              # double 0.87207382743808526
	.quad	0x3fefd4d47d051b35              # double 0.99473022859533577
	.quad	0x3fe9e88eef3b0f91              # double 0.80963846897837943
	.quad	0x3fc8294233ffc558              # double 0.18875911273020551
	.quad	0x3fcc0cc216d4a898              # double 0.21913934817104486
	.quad	0x3fdfac51317858d4              # double 0.49489240485253316
	.quad	0x3fc0227738770058              # double 0.12605180985520081
	.quad	0x3fb823c6093c0590              # double 0.094295861486918264
	.quad	0x3fcfc1ebc06ab540              # double 0.24810549636223733
	.quad	0x3fe3385da77fc3d4              # double 0.6006305953470652
	.quad	0x3febe30dbaa1ece8              # double 0.87146650745071685
	.quad	0x3fd0d997ce93c2c0              # double 0.26328082250169516
	.quad	0x3fed9974d2059936              # double 0.92498246211906721
	.quad	0x3fc16ef894db2dc4              # double 0.13619906681411298
	.quad	0x3fee3bbfcba966f1              # double 0.9447936036842447
	.quad	0x3fd7e05b59bc5f86              # double 0.37306865466370487
	.quad	0x3fdf8e38519b16f6              # double 0.49305541962927124
	.quad	0x3fe8a71fda065b58              # double 0.77040093024229872
	.quad	0x3fec41a8da497571              # double 0.88301508554620345
	.quad	0x3fcd2e56016c794c              # double 0.22797656125562538
	.quad	0x3fd32ff1a41e1810              # double 0.29980126406769703
	.quad	0x3fb1a00608179fd0              # double 0.068848015761999948
	.quad	0x3fa20438198ee490              # double 0.035188439483541889
	.quad	0x3f77aaf93afc5380              # double 0.005778287464427545
	.quad	0x3feb4d68f3111c9c              # double 0.85319945787422879
	.quad	0x3fe061628a755c26              # double 0.51188780825294056
	.quad	0x3f9c8cc9f73e78c0              # double 0.027880817142084124
	.quad	0x3fead0b17123d3f0              # double 0.83797523591658596
	.quad	0x3fae038214a4deb0              # double 0.058620514888784725
	.quad	0x3fd421f1ec0342a4              # double 0.31457183883780204
	.quad	0x3fdc6dcc2a3fd60c              # double 0.44420150876916931
	.quad	0x3f9dfad0ef34ede0              # double 0.029277100181600235
	.quad	0x3fe69459400a3441              # double 0.70560896404061435
	.quad	0x3fa68320e7c051a0              # double 0.043969181337305985
	.quad	0x3fbe0679d81a81a0              # double 0.11728631521191923
	.quad	0x3fe4b717f8b9195c              # double 0.6473502977249086
	.quad	0x3fd560e4ebaebd26              # double 0.33403895393253646
	.quad	0x3fe9624612521db4              # double 0.79324630335115964
	.quad	0x3fe173cd64dbfb08              # double 0.54538602542001602
	.quad	0x3fe093957ab7a577              # double 0.51801561325298351
	.quad	0x3fd250c64fff3796              # double 0.28618009388162002
	.quad	0x3fe566c0adcea132              # double 0.66879304835041453
	.quad	0x3fe1a94117daf66c              # double 0.55191092166178413
	.quad	0x3fd107e43b47ff48              # double 0.26610666073974132
	.quad	0x3fe90fe5b9be09df              # double 0.78319059636879362
	.quad	0x3fd45d2a905d7448              # double 0.3181864175620075
	.quad	0x3fb3ed0287b8cbd0              # double 0.077835233817310056
	.quad	0x3fbc9f3f7b6f2df8              # double 0.11180493129284474
	.quad	0x3fb991a840817640              # double 0.099878803013290884
	.quad	0x3fdcfb4cd5b5f7c0              # double 0.45283814306446502
	.quad	0x3feda782885b5ffc              # double 0.92669798500264688
	.quad	0x3fe5039e7cc384cf              # double 0.65669178359908098
	.quad	0x3fecd10131b51ec9              # double 0.90051326473709381
	.quad	0x3fe5df9a4e8b1bd3              # double 0.68354525890833384
	.quad	0x3fd48d18442f5a64              # double 0.32111174257935304
	.quad	0x3fea58141b3b9995              # double 0.82325177496822965
	.quad	0x3fc61a787c37e09c              # double 0.17268281998963608
	.quad	0x3fd354dd7c292b5e              # double 0.30205475926475411
	.quad	0x3f751f86a5749100              # double 0.0051570186254006334
	.quad	0x3fb5377996a2dce0              # double 0.082877730633174718
	.quad	0x3fedbee60a960a3b              # double 0.92955305163952262
	.quad	0x3fdb704bcf5594fa              # double 0.42872901198855085
	.quad	0x3fdf9a61e93376f6              # double 0.49379775785006019
	.quad	0x3fe7142e5f04ca3d              # double 0.72121351774541831
	.quad	0x3fdbd8a0128e50ce              # double 0.43509675800420389
	.quad	0x3fee57fbd9eba00c              # double 0.94824020922260521
	.quad	0x3fba364aed667a88              # double 0.1023909406271547
	.quad	0x3fd48b460bc126ea              # double 0.32100058696651834
	.quad	0x3feda37dcc8e47f9              # double 0.9262074465971174
	.quad	0x3fe2fddc8e5c468d              # double 0.59348895840430915
	.quad	0x3fdcda6403fa0b92              # double 0.45082950962403701
	.quad	0x3fc413bcc1a9aef4              # double 0.15685233551209132
	.quad	0x3fe2536e6366e27f              # double 0.5726844731753572
	.quad	0x3fec64bc12c14196              # double 0.88729671156947876
	.quad	0x3fefdbfa66be887a              # double 0.99560279910316685
	.quad	0x3febd5a624338942              # double 0.86983019896096203
	.quad	0x3fef89f0e07bfb00              # double 0.98558849186505881
	.quad	0x3f90238c11b4cf00              # double 0.015760601597505364
	.quad	0x3f868741d127fa00              # double 0.011000169940413862
	.quad	0x3fde7fa5f6771400              # double 0.47654103344785881
	.quad	0x3fef8f4c22cd8af8              # double 0.98624235913697955
	.quad	0x3fc2fd924380726c              # double 0.14836338325484932
	.quad	0x3fef8c1dd6c46e2c              # double 0.98585407206286879
	.quad	0x3fea8964a7ece723              # double 0.82927162931375553
	.quad	0x3fd338e7f608b52e              # double 0.30034827257880437
	.quad	0x3fe421dbb89d72bd              # double 0.62913309152244035
	.quad	0x3fbbe23bc46be998              # double 0.10892079873511873
	.quad	0x3fe1745f4ee54299              # double 0.54545560273443805
	.quad	0x3feebe2adba198c1              # double 0.96071379563070291
	.quad	0x3fe5a486d83610b0              # double 0.67633383015392745
	.quad	0x3fd6fab794225dc4              # double 0.3590525576232404
	.quad	0x3febfb990a28e091              # double 0.87446262344657744
	.quad	0x3fc1076e85c7a83c              # double 0.13303929836485107
	.quad	0x3fb76dfc911c0f40              # double 0.091522012164259259
	.quad	0x3fef7efbb2f876cd              # double 0.98425087886035955
	.quad	0x3fe48d297aea7849              # double 0.64223169333468733
	.quad	0x3fdd72f6ec8afecc              # double 0.46014187908074855
	.quad	0x3fe095a646ebf079              # double 0.51826776363260685
	.quad	0x3fc34cf059906b28              # double 0.15078548787354262
	.quad	0x3feb97096e016e71              # double 0.86218711362330513
	.quad	0x3fcf8863209ab800              # double 0.24634970752725849
	.quad	0x3fb959a278e834a8              # double 0.099023966329883195
	.quad	0x3fd390b4833f5cc4              # double 0.3057071000780065
	.quad	0x3fc9bf8892961864              # double 0.20115763814482357
	.quad	0x3fabee93ffc15d30              # double 0.05455458161366733
	.quad	0x3fde345e541a6dea              # double 0.47194631779868124
	.quad	0x3fe98766c4feaa44              # double 0.79777849650901844
	.quad	0x3fef82d3f3ee3bd7              # double 0.98472020762153078
	.quad	0x3fe9380fe580335c              # double 0.78809351753589451
	.quad	0x3fdfb4acb2544162              # double 0.49540250220254312
	.quad	0x3fe868e672762254              # double 0.76280519824747239
	.quad	0x3fd2bd040d0b2662              # double 0.2927866103533231
	.quad	0x3fa3697d03fcee20              # double 0.037914187180345005
	.quad	0x3feeba472c230fb6              # double 0.96023901577472404
	.quad	0x3fc751776fec2758              # double 0.18217366185154549
	.quad	0x3fc2c419f1310a08              # double 0.14660953785831077
	.quad	0x3f92128b7a4cd7a0              # double 0.017648867930993739
	.quad	0x3fe19d82ffea1fc1              # double 0.55047750457105604
	.quad	0x3fdfc622fb11a208              # double 0.49646830099530392
	.quad	0x3fd7f82cb6282906              # double 0.37452237881429118
	.quad	0x3fe38c8f13406e4d              # double 0.61090806732267711
	.quad	0x3fe7b1b856dff3cc              # double 0.74044434516655988
	.quad	0x3fe2eab1204bea9f              # double 0.59114891345901188
	.quad	0x3fd9b89ae4f12a7c              # double 0.40189239843008528
	.quad	0x3fd00a1b6319d586              # double 0.25061688115905445
	.quad	0x3fe82211bfc84775              # double 0.75415885407913541
	.quad	0x3fdf465c3d28622a              # double 0.48866945240436854
	.quad	0x3f7183a324649880              # double 0.00427592971235502
	.quad	0x3fe5341763f936c3              # double 0.66260880971977831
	.quad	0x3fe0e8b7d781481e              # double 0.52840797510930648
	.quad	0x3fd2e2d183a262ce              # double 0.29509389738954617
	.quad	0x3feec8d3180b400e              # double 0.96201471992572052
	.quad	0x3fe848c28abd2aa8              # double 0.75888182733009035
	.quad	0x3fda3afbaabd0832              # double 0.40985004113838663
	.quad	0x3fde39e3f7584cc2              # double 0.47228335528161491
	.quad	0x3fa7fe446b02c870              # double 0.046861780226564842
	.quad	0x3fefff5d0e27b60f              # double 0.99992230190918174
	.quad	0x3fa40d6ccb757730              # double 0.039164924465451612
	.quad	0x3fd420678529c64e              # double 0.31447780613152509
	.quad	0x3fe616a854fd93d2              # double 0.69026581382478924
	.quad	0x3fd9d525ea6cfc3a              # double 0.40363452809464528
	.quad	0x3fdb92571654cb58              # double 0.43080689602645839
	.quad	0x3f920ea5a6d4f8a0              # double 0.017633999164211489
	.quad	0x3fdbbd0cf643958c              # double 0.43341373490542234
	.quad	0x3fc0ecc9c955c6f0              # double 0.13222620325864609
	.quad	0x3fe6160cd44f2136              # double 0.69019166437741464
	.quad	0x3feb80469596958e              # double 0.8594086572308457
	.quad	0x3fd8cc28088c6574              # double 0.38746071657950343
	.quad	0x3fd8eceb15268882              # double 0.38946034493904602
	.quad	0x3fe0931338b75831              # double 0.51795350148564101
	.quad	0x3fec4b80675003c8              # double 0.88421650102838445
	.quad	0x3fbe6158656baaa8              # double 0.11867287136161997
	.quad	0x3fd98d709293841c              # double 0.39925779642186554
	.quad	0x3fd9cabeda1be05e              # double 0.40299960422226444
	.quad	0x3fe851529fa87a22              # double 0.75992709334588349
	.quad	0x3fc9cb3b55efcb7c              # double 0.20151464172485223
	.quad	0x3fe90d1ec78eb96b              # double 0.78285159088208667
	.quad	0x3fd9b9f851f72a8c              # double 0.40197570805018112
	.quad	0x3feb01765be3996c              # double 0.84392850825387943
	.quad	0x3fcbea0f6e18e318              # double 0.21808045268860421
	.quad	0x3fdfcbe3e9891dce              # double 0.49681947523319259
	.quad	0x3fcd9d2d9ced5cd0              # double 0.23135919725857557
	.quad	0x3fe221b95ddd53f5              # double 0.56661671002313929
	.quad	0x3fc3d3428b38057c              # double 0.15488464162630666
	.quad	0x3fe6cd7bab4378f2              # double 0.71258338403620614
	.quad	0x3fca5bd79dc91d80              # double 0.20592780308127701
	.quad	0x3fd2a7dc974616dc              # double 0.29149546406584448
	.quad	0x3fc06510fd183644              # double 0.12808430059560483
	.quad	0x3fe2fa445b50efb6              # double 0.593050173141356
	.quad	0x3fb0f3cb11c5d850              # double 0.066219989623136799
	.quad	0x3f9b8d3601415fc0              # double 0.026905864550229586
	.quad	0x3fe6bd4e48bc1bbd              # double 0.71060861783995899
	.quad	0x3fc20bb2df3b2518              # double 0.14098201656296605
	.quad	0x3fd21aefa4a43656              # double 0.28289404943720819
	.quad	0x3fdcb65bb3ac6992              # double 0.4486302618621717
	.quad	0x3fd9bac4c773109c              # double 0.40202445485579985
	.quad	0x3feb2f82eca693a6              # double 0.84954973431432701
	.quad	0x3fb5d35e0e418e60              # double 0.085256460648048371
	.quad	0x3fe257bd022cda28              # double 0.5732102434620332
	.quad	0x3fceea88b413ebf8              # double 0.24153240959989808
	.quad	0x3fef366d79f00046              # double 0.9753939992515448
	.quad	0x3fd9a04923f9a68a              # double 0.40040806306078791
	.quad	0x3fbd362f98f8d7a0              # double 0.11410806164425802
	.quad	0x3fbae2f1f5e17a38              # double 0.10502540829609408
	.quad	0x3fd3df5bcbee0b14              # double 0.31050772585892727
	.quad	0x3fc5f6d845eee374              # double 0.17159560599045742
	.quad	0x3fe9a3650c0865ff              # double 0.80119564390332687
	.quad	0x3fcaae4c1e5f270c              # double 0.20844413264267592
	.quad	0x3fe5fc1c8d2bfafe              # double 0.68702533314339553
	.quad	0x3fca883143f2c9c4              # double 0.2072812635211233
	.quad	0x3fc50ff7685b6848              # double 0.16454975696143692
	.quad	0x3fc8c7dc477a9748              # double 0.1935992573755192
	.quad	0x3fdd7a49ff97b4c6              # double 0.46058893165793469
	.quad	0x3fc800d51909c638              # double 0.18752540323798583
	.quad	0x3fee006974ed9c1b              # double 0.93755028569728738
	.quad	0x3fcccca507da8d5c              # double 0.224995259127449
	.quad	0x3f54ae31555fd000              # double 0.0012622339031596042
	.quad	0x3fdbc7e620f706e8              # double 0.43407586306794466
	.quad	0x3fef7c7041f6c63e              # double 0.9839402473791734
	.quad	0x3febc64f12b864ea              # double 0.86795762687975508
	.quad	0x3fe70d72235a4c99              # double 0.7203913393481286
	.quad	0x3fddb4cf7cdad6d4              # double 0.46416079705100555
	.quad	0x3fdd5f70a548acf4              # double 0.45895019665722647
	.quad	0x3fc456abe0b1b880              # double 0.15889500113866362
	.quad	0x3fb14bce5070cf98              # double 0.067562956465563651
	.quad	0x3fe0d1249ff0f0b2              # double 0.52553015936384484
	.quad	0x3fe38d0f09bcf3f8              # double 0.61096908475849343
	.quad	0x3fe6e50642aaf85c              # double 0.71545708676400066
	.quad	0x3fd2ad5290579fe2              # double 0.2918287667839633
	.quad	0x3fc8bd6bf54b7404              # double 0.19328069188387087
	.quad	0x3fd9fe991cbabe84              # double 0.40616443448650608
	.quad	0x3fe14a83dbda545a              # double 0.54034607830056847
	.quad	0x3fe210c0b6b70686              # double 0.56454501806747781
	.quad	0x3fc9a6c28d72c4f4              # double 0.20040161043792859
	.quad	0x3feb8001009786ea              # double 0.85937547793966229
	.quad	0x3fba3419223be3a0              # double 0.10235745511808014
	.quad	0x3fd0e3eebab6da6c              # double 0.26391189798179115
	.quad	0x3fc536386f876524              # double 0.16571717687364995
	.quad	0x3fb93fc1c9641d98              # double 0.098629104297393133
	.quad	0x3fe5f6c924b91c99              # double 0.68637520954588915
	.quad	0x3fc7f61ce91a23e0              # double 0.187198270625486
	.quad	0x3fe50a5fa42ca9de              # double 0.65751630845380382
	.quad	0x3fccddd523bb24a0              # double 0.22551979298285563
	.quad	0x3feca5a630b7bdc5              # double 0.8952208472746227
	.quad	0x3fda5f570b1b5f2e              # double 0.41206909260425817
	.quad	0x3feae591a64cca61              # double 0.84052355270825896
	.quad	0x3feb91bd4db79f37              # double 0.86154046229510228
	.quad	0x3fe870ce0fbb1858              # double 0.76377013275556305
	.quad	0x3fbeae88df2ed4e8              # double 0.11985068749239114
	.quad	0x3fe4dc062c7d0dcc              # double 0.65185841263922262
	.quad	0x3fea8122c41dbe0d              # double 0.82826364807073249
	.quad	0x3fd8a933c46219aa              # double 0.38532728364989544
	.quad	0x3fd618a79fbfbcb0              # double 0.34525480843053469
	.quad	0x3fdd0a3d516e5ef0              # double 0.45374997093448055
	.quad	0x3febbfb9ba9fae4f              # double 0.86715399217559674
	.quad	0x3fed6111028bd08e              # double 0.91809893128676534
	.quad	0x3feb3defbd857f64              # double 0.85131060615456677
	.quad	0x3fc903f6f2436d90              # double 0.1954334910322868
	.quad	0x3fd37b89b32609d6              # double 0.30441515440921074
	.quad	0x3fe128ac55092e6e              # double 0.53621498688285185
	.quad	0x3fc2699534485e4c              # double 0.14384713223329226
	.quad	0x3fe1fa25ee4253ce              # double 0.56178566489199411
	.quad	0x3feee87c60ead9e0              # double 0.96587962083031797
	.quad	0x3fd4015009ab6d56              # double 0.31258011764812943
	.quad	0x3fb4a05c70bc7740              # double 0.08057191612576009
	.quad	0x3fac20810a588e50              # double 0.054935486329011796
	.quad	0x3fe61ff11bd08b61              # double 0.69139914925140655
	.quad	0x3fc7133ccc14a75c              # double 0.18027458157421961
	.quad	0x3fc86ae1924fa208              # double 0.19076175350279834
	.quad	0x3fcfe3f0a046f074              # double 0.24914367509871094
	.quad	0x3fe8bcd1352d77e3              # double 0.77304897676708284
	.quad	0x3fe531de6097e9d7              # double 0.66233748308087115
	.quad	0x3fe5467d891ec4ca              # double 0.66485478192603265
	.quad	0x3fe1e3f70a3db73c              # double 0.55907775879106891
	.quad	0x3fc68a223d65be38              # double 0.17609050748750277
	.quad	0x3fe785e9181be669              # double 0.73509649952684442
	.quad	0x3fe35f91ad430dbb              # double 0.60541614380092967
	.quad	0x3fc6cd9787364d9c              # double 0.17814916708139783
	.quad	0x3fe444ec0b7fb542              # double 0.63341333623763085
	.quad	0x3fe773dd861e7d61              # double 0.7328937167657551
	.quad	0x3fd36bc6fee64ba6              # double 0.30345320599115622
	.quad	0x3fd3746c06805c72              # double 0.30398083338645343
	.quad	0x3fe249b0a6fabf7c              # double 0.57149536717587024
	.quad	0x3fec5a19f72d92d9              # double 0.88599870945889869
	.quad	0x3fe08a4c3b7a15ca              # double 0.51688205353337335
	.quad	0x3fef327cd15e8fa3              # double 0.97491303341347579
	.quad	0x3fd25373ca5c83ce              # double 0.28634352456907386
	.quad	0x3f56caf0daab4400              # double 0.0013911583034096342
	.quad	0x3fe4099288a9c55b              # double 0.62616850559258397
	.quad	0x3fed438660178253              # double 0.91449278610168461
	.quad	0x3feb849f252e2359              # double 0.85993916761172351
	.quad	0x3feed98a61e08b41              # double 0.96405524365068384
	.quad	0x3feecc034f336394              # double 0.96240392178434541
	.quad	0x3fe41678db8eeceb              # double 0.62774317629319165
	.quad	0x3feebcf1228c8f40              # double 0.9605642008577675
	.quad	0x3fd5fcf39ea62ec4              # double 0.34356394284325753
	.quad	0x3fc6bcf8f45aa600              # double 0.17764198237755124
	.quad	0x3fe586e6d18b0229              # double 0.67271748472564241
	.quad	0x3fe40ed439501d16              # double 0.62681018060621585
	.quad	0x3fee9ca428463bb8              # double 0.95662124506076562
	.quad	0x3fe6fb7f654e294f              # double 0.71820039545245062
	.quad	0x3fcd203c36019b18              # double 0.22754624020600356
	.quad	0x3fba9e3ca82e0c08              # double 0.10397700410798916
	.quad	0x3fc7625f10ec2714              # double 0.18268955541889709
	.quad	0x3fe533e9497d235a              # double 0.66258682587895668
	.quad	0x3fea9ffb5ecd0d20              # double 0.83202904239479735
	.quad	0x3fd70ca2c9797c6e              # double 0.36014623332261564
	.quad	0x3fe458f9ccc45c61              # double 0.63586130136071628
	.quad	0x3fe3cdf72291d759              # double 0.61889225723164565
	.quad	0x3fac43df66fd3f40              # double 0.055205327341012467
	.quad	0x3fd68615a636965a              # double 0.351933872525796
	.quad	0x3fe33cec4131fb75              # double 0.6011868737549394
	.quad	0x3fd64de5367447c8              # double 0.3485043556003089
	.quad	0x3fe1d94e8c8b7f46              # double 0.55777671289613617
	.quad	0x3fef3f04d883c68f              # double 0.97644274032627886
	.quad	0x3fe4852e173d8920              # double 0.64125732936034652
	.quad	0x3feda2f0eaf9f9cd              # double 0.92614026922074688
	.quad	0x3fcb7328490f73ac              # double 0.21445182387733774
	.quad	0x3fb83ff181e6fce0              # double 0.094725698675563574
	.quad	0x3fe45383661ae94c              # double 0.63519449179083542
	.quad	0x3fdcaa1712c8e2aa              # double 0.44788147768444253
	.quad	0x3fe2cefa9c84194c              # double 0.58776598519833945
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
