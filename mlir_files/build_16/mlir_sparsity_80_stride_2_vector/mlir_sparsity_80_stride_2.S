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
	.quad	41                              # 0x29
	.quad	41                              # 0x29
	.quad	87                              # 0x57
	.quad	87                              # 0x57
	.quad	129                             # 0x81
	.quad	129                             # 0x81
	.quad	170                             # 0xaa
	.quad	170                             # 0xaa
	.quad	206                             # 0xce
	.quad	206                             # 0xce
	.quad	246                             # 0xf6
	.quad	246                             # 0xf6
	.quad	287                             # 0x11f
	.quad	287                             # 0x11f
	.quad	324                             # 0x144
	.quad	324                             # 0x144
	.quad	369                             # 0x171
	.quad	369                             # 0x171
	.quad	408                             # 0x198
	.quad	408                             # 0x198
	.quad	444                             # 0x1bc
	.quad	444                             # 0x1bc
	.quad	492                             # 0x1ec
	.quad	492                             # 0x1ec
	.quad	534                             # 0x216
	.quad	534                             # 0x216
	.quad	575                             # 0x23f
	.quad	575                             # 0x23f
	.quad	614                             # 0x266
	.quad	614                             # 0x266
	.quad	651                             # 0x28b
	.quad	651                             # 0x28b
	.quad	693                             # 0x2b5
	.quad	693                             # 0x2b5
	.quad	733                             # 0x2dd
	.quad	733                             # 0x2dd
	.quad	775                             # 0x307
	.quad	775                             # 0x307
	.quad	816                             # 0x330
	.quad	816                             # 0x330
	.quad	857                             # 0x359
	.quad	857                             # 0x359
	.quad	897                             # 0x381
	.quad	897                             # 0x381
	.quad	936                             # 0x3a8
	.quad	936                             # 0x3a8
	.quad	977                             # 0x3d1
	.quad	977                             # 0x3d1
	.quad	1018                            # 0x3fa
	.quad	1018                            # 0x3fa
	.quad	1059                            # 0x423
	.quad	1059                            # 0x423
	.quad	1101                            # 0x44d
	.quad	1101                            # 0x44d
	.quad	1144                            # 0x478
	.quad	1144                            # 0x478
	.quad	1184                            # 0x4a0
	.quad	1184                            # 0x4a0
	.quad	1222                            # 0x4c6
	.quad	1222                            # 0x4c6
	.quad	1261                            # 0x4ed
	.quad	1261                            # 0x4ed
	.quad	1302                            # 0x516
	.quad	1302                            # 0x516
	.quad	1344                            # 0x540
	.quad	1344                            # 0x540
	.quad	1384                            # 0x568
	.quad	1384                            # 0x568
	.quad	1423                            # 0x58f
	.quad	1423                            # 0x58f
	.quad	1464                            # 0x5b8
	.quad	1464                            # 0x5b8
	.quad	1502                            # 0x5de
	.quad	1502                            # 0x5de
	.quad	1546                            # 0x60a
	.quad	1546                            # 0x60a
	.quad	1586                            # 0x632
	.quad	1586                            # 0x632
	.quad	1627                            # 0x65b
	.quad	1627                            # 0x65b
	.quad	1667                            # 0x683
	.quad	1667                            # 0x683
	.quad	1706                            # 0x6aa
	.quad	1706                            # 0x6aa
	.quad	1745                            # 0x6d1
	.quad	1745                            # 0x6d1
	.quad	1785                            # 0x6f9
	.quad	1785                            # 0x6f9
	.quad	1821                            # 0x71d
	.quad	1821                            # 0x71d
	.quad	1850                            # 0x73a
	.quad	1850                            # 0x73a
	.quad	1889                            # 0x761
	.quad	1889                            # 0x761
	.quad	1923                            # 0x783
	.quad	1923                            # 0x783
	.quad	1962                            # 0x7aa
	.quad	1962                            # 0x7aa
	.quad	1999                            # 0x7cf
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
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
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	96                              # 0x60
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	56                              # 0x38
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
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
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
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
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
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
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
	.quad	56                              # 0x38
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
	.quad	84                              # 0x54
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	2                               # 0x2
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
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
	.quad	18                              # 0x12
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
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	20                              # 0x14
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
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
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
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
	.quad	46                              # 0x2e
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
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
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
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
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
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
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
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
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
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
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
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
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
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
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
	.quad	58                              # 0x3a
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
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
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
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
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
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
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
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
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
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
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
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
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
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
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
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
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
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
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
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
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
	.quad	2                               # 0x2
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
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
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
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
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
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
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
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
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
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
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
	.quad	82                              # 0x52
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
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
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
	.quad	0x3fe787a60d5d5adc              # double 0.7353086720493951
	.quad	0x3fbef4b638176420              # double 0.12092150563638926
	.quad	0x3fcda58414d582e8              # double 0.23161364571844634
	.quad	0x3feae68f2251e100              # double 0.84064442351430557
	.quad	0x3feec7c30ade70bb              # double 0.96188499567826768
	.quad	0x3feb1f5ca891198c              # double 0.84757836268617969
	.quad	0x3fe97bcfa86f8ba9              # double 0.79636366746523379
	.quad	0x3fe1d12809000d3c              # double 0.55678178556301061
	.quad	0x3fb5442f64d1a328              # double 0.083071672548282849
	.quad	0x3fdbf1e103120eec              # double 0.43663811969621125
	.quad	0x3fee59cf2e933651              # double 0.94846304985703445
	.quad	0x3fc4ecd1e639fe74              # double 0.16347717038660259
	.quad	0x3fb042fd19bb2520              # double 0.063522166044226669
	.quad	0x3fe425a781eb569f              # double 0.62959647536145613
	.quad	0x3fe9fbf06815102c              # double 0.81200428322381901
	.quad	0x3fa44a4b954cc1b0              # double 0.039629327750279386
	.quad	0x3fe4161aeddf1972              # double 0.6276983877112754
	.quad	0x3fcda56cb87787d0              # double 0.23161086089299809
	.quad	0x3fe0089c107bb27d              # double 0.5010509797990178
	.quad	0x3fe88db74adde579              # double 0.76729931471270085
	.quad	0x3fe538dd307aaf33              # double 0.66319140881157634
	.quad	0x3fe6bb7ec78f2b51              # double 0.71038760162751136
	.quad	0x3fd4052509058526              # double 0.31281400567066198
	.quad	0x3fdef89fc5420db4              # double 0.48392481101492568
	.quad	0x3fe98e0d81d1f017              # double 0.7985904250667798
	.quad	0x3fd289bb2610b26e              # double 0.28965643613154313
	.quad	0x3fbf194de5848b38              # double 0.12147986272297551
	.quad	0x3fd7459d1f16ef12              # double 0.36362388645260169
	.quad	0x3fda261d0b81065a              # double 0.40857626079023179
	.quad	0x3fe896aedde566fb              # double 0.7683939298542265
	.quad	0x3fe41a747cd57368              # double 0.62822937375640908
	.quad	0x3fedc9518d2e198d              # double 0.93082501959070074
	.quad	0x3fd27d315d31ca70              # double 0.28889116383576319
	.quad	0x3fdd20526391cdfc              # double 0.45509776805485536
	.quad	0x3fb5c295287efaa0              # double 0.085000345598909011
	.quad	0x3fef5bcb105327e0              # double 0.97995522678797541
	.quad	0x3fe8dff6d2bacf45              # double 0.77733937414311838
	.quad	0x3fc34d91d77402dc              # double 0.15080473919080972
	.quad	0x3fb01766775eb968              # double 0.062857059615202382
	.quad	0x3fee7239d332cfac              # double 0.95144358873084433
	.quad	0x3fe52249d680abda              # double 0.66043559927981765
	.quad	0x3fe8e89b3b36e386              # double 0.77839433255495361
	.quad	0x3fd091bdcdb1b2fe              # double 0.25889535033529387
	.quad	0x3fb4bd7faba72f10              # double 0.081016520888791854
	.quad	0x3fee404b238e8e2f              # double 0.94534832901667254
	.quad	0x3fdb92cf75853216              # double 0.4308355949076782
	.quad	0x3fe2d79de8ef16ce              # double 0.58882041449461453
	.quad	0x3fea7c98d9c302ec              # double 0.82770960361093903
	.quad	0x3fd74f9684f2e414              # double 0.36423266394882714
	.quad	0x3fe07f3c15377a37              # double 0.51553157943619154
	.quad	0x3fde41e02cf75782              # double 0.47277073279598636
	.quad	0x3fdacb9d5fa906f6              # double 0.41867765752623087
	.quad	0x3fc24fe6f58623b4              # double 0.14306342113948534
	.quad	0x3fbc60e5ad32b680              # double 0.11085353353947802
	.quad	0x3fdc41fdb6936afe              # double 0.44152777509377461
	.quad	0x3feabe8f71e818f5              # double 0.8357617592562564
	.quad	0x3fec4e8b540f9fd4              # double 0.88458792131586472
	.quad	0x3fe30ec961d05bf6              # double 0.59555501083639117
	.quad	0x3febc2a6b02fc02e              # double 0.86751112376624007
	.quad	0x3fe0436d386c751e              # double 0.50823079128500459
	.quad	0x3fe5d1a1b2c7feea              # double 0.68183979910096792
	.quad	0x3fed8eeb09621634              # double 0.92369605858465897
	.quad	0x3fc6718447357b94              # double 0.17533925511358162
	.quad	0x3fdfc440a9480800              # double 0.49635330706962577
	.quad	0x3fe866f26a2cab85              # double 0.76256676423268799
	.quad	0x3fd74ec681d31b1e              # double 0.36418306997477312
	.quad	0x3fe1fedc132f58b0              # double 0.56236079928455318
	.quad	0x3fe8388b87109d7d              # double 0.75690246944297679
	.quad	0x3fd9f41d87fa7a34              # double 0.40552461890357283
	.quad	0x3fe0d947eddb6b02              # double 0.52652355629410885
	.quad	0x3fc560e64cd678a0              # double 0.16701964141697534
	.quad	0x3fe263bf8aef28ef              # double 0.57467629561986466
	.quad	0x3fcb744906b7b02c              # double 0.21448624446873177
	.quad	0x3fe552b45add8f13              # double 0.66634576556359304
	.quad	0x3fde15098ece10b2              # double 0.4700340170459284
	.quad	0x3fcef27eb099f2ac              # double 0.24177535651314963
	.quad	0x3fed2a3fdf28bb17              # double 0.91140740953219079
	.quad	0x3fee87e0d7389c25              # double 0.95408670459153611
	.quad	0x3feaf6421b1b5c2a              # double 0.84256081861793075
	.quad	0x3fc7fd87ffddb234              # double 0.18742465966660549
	.quad	0x3feec30146a0bfca              # double 0.96130431932942284
	.quad	0x3fee6bf773c23f72              # double 0.95067951783310733
	.quad	0x3feca159e47316af              # double 0.89469618434005393
	.quad	0x3fe07ada0e34b59f              # double 0.51499655508603215
	.quad	0x3fd275edd746f538              # double 0.2884478189769939
	.quad	0x3fe626e9ac74869e              # double 0.69225009615566413
	.quad	0x3fd4be0366f1d514              # double 0.32409749081792083
	.quad	0x3fe370e1fe0a8bf8              # double 0.60752963654920134
	.quad	0x3fd58e46434023c4              # double 0.33680874411998851
	.quad	0x3fdf93db6b254c40              # double 0.49339948142477752
	.quad	0x3fd42d9d66310c12              # double 0.31528410892150405
	.quad	0x3fe82d40efa1a2d9              # double 0.75552412798887325
	.quad	0x3fe1390d7ed45b5a              # double 0.53821444293394483
	.quad	0x3fe44c0e4f362770              # double 0.63428416701320423
	.quad	0x3fe13833a53a4136              # double 0.53811056395537693
	.quad	0x3fda5185c1f1b1ba              # double 0.41122573795180595
	.quad	0x3fcb5229c1a0efa8              # double 0.2134449191524912
	.quad	0x3fd1df6719031f60              # double 0.27926042025182163
	.quad	0x3fd75f70a646c122              # double 0.36520019758155986
	.quad	0x3fc712c5724e95d8              # double 0.18026035386462413
	.quad	0x3fd4b305f8162964              # double 0.32342671611026774
	.quad	0x3fec76b077117498              # double 0.88948844199662158
	.quad	0x3fead404f6878cac              # double 0.83838127279559193
	.quad	0x3fd27023b3052446              # double 0.28809444887571478
	.quad	0x3fe958d7018aaeba              # double 0.792094710360707
	.quad	0x3fcf09c2bec57cd4              # double 0.24248537364017031
	.quad	0x3fd64c4dfc48cd0e              # double 0.3484072650637281
	.quad	0x3febf15f95f587d0              # double 0.87321452416312617
	.quad	0x3f9614ec13185480              # double 0.021564186730831825
	.quad	0x3fe5c223b59b3491              # double 0.67994866819357658
	.quad	0x3fd5559f930711ee              # double 0.33335103376546626
	.quad	0x3fed8578ce7ef3db              # double 0.92254295665008657
	.quad	0x3fe5f7dc199f1dad              # double 0.68650631908615412
	.quad	0x3fea21890084c70f              # double 0.81659364796925782
	.quad	0x3fe8571f423a5fbc              # double 0.76063502249871062
	.quad	0x3fe1141091e5ecf7              # double 0.53369930740100713
	.quad	0x3feddcbd0134d7c7              # double 0.9331955932200281
	.quad	0x3feb7442d8354630              # double 0.85794203022141424
	.quad	0x3fde8ce470f5380a              # double 0.47734938651126468
	.quad	0x3fcb99515e909a80              # double 0.21561638944077188
	.quad	0x3fea06e2aafabd61              # double 0.81334050554680115
	.quad	0x3fd6213d66a4e296              # double 0.34577879928432631
	.quad	0x3fc30832fb4f5aa4              # double 0.14868771811480486
	.quad	0x3fc039d0c00c8810              # double 0.12676438691511338
	.quad	0x3feba4000b96a314              # double 0.86376955283512524
	.quad	0x3fe35f8697050ac1              # double 0.60541085716280219
	.quad	0x3fdb88cd0e08fd9a              # double 0.43022467012993959
	.quad	0x3fe883a700583fce              # double 0.76607084338501763
	.quad	0x3fe0578da670ca6e              # double 0.51068766124656206
	.quad	0x3fe422b5f471326a              # double 0.62923715345966724
	.quad	0x3fe22b6cc0122786              # double 0.56780087961054515
	.quad	0x3fd39988ced8d1c4              # double 0.30624599647424255
	.quad	0x3fc1bdd9ac067364              # double 0.13860627078693277
	.quad	0x3fd516c65398b728              # double 0.32951505817151139
	.quad	0x3fee52b5556d3067              # double 0.94759623226992751
	.quad	0x3fe8fc38cadf5514              # double 0.78078879951013613
	.quad	0x3feee74bf71ff066              # double 0.96573446528010431
	.quad	0x3fdd2df6dc42081a              # double 0.45593043813289713
	.quad	0x3fd2bd67bc4e0a60              # double 0.29281037701745127
	.quad	0x3fc0d2ebf35f9c88              # double 0.13143681891890346
	.quad	0x3fcdaf70532d8934              # double 0.23191646634502094
	.quad	0x3fd749f520b710c8              # double 0.36388900942644087
	.quad	0x3feea9d37acf2b55              # double 0.95823072420294386
	.quad	0x3fe5d1907b7144c6              # double 0.68183158979277247
	.quad	0x3fc3d37a703825d4              # double 0.15489130477389657
	.quad	0x3fe23d81d0ea48a0              # double 0.57000819019073745
	.quad	0x3fec44871021b2d5              # double 0.88336518431386912
	.quad	0x3fd3da2ba5a3c270              # double 0.31019107032537985
	.quad	0x3fe43106cd242afc              # double 0.63098468844086097
	.quad	0x3fddd453b899493a              # double 0.46608441378807053
	.quad	0x3fe127607fc2db41              # double 0.5360567565283888
	.quad	0x3fbbaadf1268f358              # double 0.10807604026281348
	.quad	0x3fd0be200c335dd4              # double 0.26160432044477244
	.quad	0x3febf7f21429b9ac              # double 0.87401679933627951
	.quad	0x3fd5f1c5c4763b06              # double 0.34288162408567791
	.quad	0x3feb9a962af24bb5              # double 0.8626204336927602
	.quad	0x3fdc6504bf593572              # double 0.44366568266271778
	.quad	0x3fd07d4f103a484e              # double 0.2576482447121905
	.quad	0x3fd6d1f0d7b3d6da              # double 0.35656376900383935
	.quad	0x3faed5dd2811cbc0              # double 0.060225402013109441
	.quad	0x3feb1322d269c5a8              # double 0.84608594032595352
	.quad	0x3fe73e47eae9bbdf              # double 0.72635265237283508
	.quad	0x3fd2662669288c48              # double 0.28748474377988886
	.quad	0x3fa099b502a4a130              # double 0.032422691891328959
	.quad	0x3fecf4ad7e52d1a9              # double 0.90486788437424537
	.quad	0x3feeaa1cbadfb7c8              # double 0.95826565264518936
	.quad	0x3fe5c1d05735f512              # double 0.6799089148841253
	.quad	0x3fc237ec4235a974              # double 0.14233163102046442
	.quad	0x3fedaf74fbe10692              # double 0.92766808695906122
	.quad	0x3fad7b525b5ece00              # double 0.057581494954686008
	.quad	0x3fd01c419d8d076e              # double 0.25172462831334641
	.quad	0x3fee5b7b2ec73f6b              # double 0.94866713653935386
	.quad	0x3fe964a519a43583              # double 0.79353575714201019
	.quad	0x3febf04f15605d21              # double 0.87308458495218499
	.quad	0x3fe7bd49c2cf3cbb              # double 0.74185646103605707
	.quad	0x3fefca661d8a2b16              # double 0.99345689553715277
	.quad	0x3fc26fbb9a5f1084              # double 0.14403481519378059
	.quad	0x3fd41154075d5072              # double 0.31355763167562778
	.quad	0x3fd3ebc1b9814d3c              # double 0.31126444926958974
	.quad	0x3fecc5c1e87990b5              # double 0.89914031415221152
	.quad	0x3fc2a4ecb6bbeea4              # double 0.14565810129703494
	.quad	0x3f93ffbec6c9a200              # double 0.019530278094324061
	.quad	0x3fead9f12dec5b00              # double 0.83910426110637104
	.quad	0x3feffa35ed02e504              # double 0.99929329196234606
	.quad	0x3fe1e915e8a6f63f              # double 0.55970282974130459
	.quad	0x3f91c52b52c4dea0              # double 0.017353703429050626
	.quad	0x3fdbdea3471772f8              # double 0.43546373312510367
	.quad	0x3fe8864b7bc72b02              # double 0.76639341521635651
	.quad	0x3fe4abdf285d6656              # double 0.64598043330915789
	.quad	0x3fd5e11881718b7e              # double 0.34186375275583447
	.quad	0x3fed91f581edba5e              # double 0.92406726242718285
	.quad	0x3fe7ddcbfea93859              # double 0.74582481134872147
	.quad	0x3fc0f0987a86f484              # double 0.13234239561817074
	.quad	0x3faf0082ac6f7e70              # double 0.060550769376047309
	.quad	0x3fd96df0c3a24b86              # double 0.39733523468856224
	.quad	0x3fe2823ffb5afd13              # double 0.57839964955192824
	.quad	0x3f90701a751b09c0              # double 0.016052640340385116
	.quad	0x3fda91b9c1ce4514              # double 0.41514438558904598
	.quad	0x3fd032874b3240b6              # double 0.25308401435269035
	.quad	0x3fec974f2e9afac4              # double 0.89347037413229957
	.quad	0x3fe3995af558e64b              # double 0.61247013015162943
	.quad	0x3fee20562ec1fb69              # double 0.94144734508868766
	.quad	0x3fd008d4d2c3f8ae              # double 0.25053902227945002
	.quad	0x3fae8128fd072ef0              # double 0.059579163443769789
	.quad	0x3fe95f37778ec250              # double 0.7928731284246826
	.quad	0x3f7cb0d790cde400              # double 0.0070045872242809892
	.quad	0x3fac6fa0dc412ba0              # double 0.055539156805557655
	.quad	0x3fea3ab4015cb834              # double 0.81966591135074517
	.quad	0x3feb2238069a37cd              # double 0.8479271058038137
	.quad	0x3fc775c6710f2910              # double 0.18328171272725813
	.quad	0x3fe5b3739fde6d87              # double 0.67815571998964763
	.quad	0x3fefeea670069c19              # double 0.99788209800761074
	.quad	0x3fedaa217f5c8aa0              # double 0.92701792598048271
	.quad	0x3fe828d744a44ff7              # double 0.75498546034441361
	.quad	0x3fe987fe700d6f7b              # double 0.79785081753969622
	.quad	0x3fcf31245ec87ff0              # double 0.24368719699941677
	.quad	0x3feb0ab9f7da08ef              # double 0.84505937965903211
	.quad	0x3fe7683cb193a85a              # double 0.73147425349203421
	.quad	0x3fe0792f092854b7              # double 0.51479293621618794
	.quad	0x3fea24a2f3a238e3              # double 0.81697223267272212
	.quad	0x3fe7954cfe4db873              # double 0.73697518986388244
	.quad	0x3fd5849d455d6736              # double 0.33621913694297534
	.quad	0x3fd2ae5f22a26cd4              # double 0.29189279920838129
	.quad	0x3fe31f6cabaab933              # double 0.59758599785508293
	.quad	0x3feb72f1a05b5cdf              # double 0.85778123206810253
	.quad	0x3fe81b33b46e238d              # double 0.75332055321006097
	.quad	0x3fe9a4f056ba5013              # double 0.80138413371105555
	.quad	0x3fd1415d3f51345a              # double 0.26961451705284889
	.quad	0x3fe22fc3a38c4a42              # double 0.56833059256525353
	.quad	0x3fd1307b87f82f1a              # double 0.26858413961666516
	.quad	0x3fdda719b868dac0              # double 0.46332400330303969
	.quad	0x3f9f58fa9348ac80              # double 0.030612864722723732
	.quad	0x3fef81e057f2c5b2              # double 0.98460404565246606
	.quad	0x3fa2aceefb856180              # double 0.036475628093003643
	.quad	0x3fbd69ced4338648              # double 0.11489575081534398
	.quad	0x3fef471176e28a8b              # double 0.97742531985962111
	.quad	0x3f87b07bb9855440              # double 0.01156708393015482
	.quad	0x3fa5aac76469e690              # double 0.042318564422157867
	.quad	0x3f9306d213493780              # double 0.018580706050037588
	.quad	0x3fde0f4d15c273fc              # double 0.46968390583953101
	.quad	0x3fcc5ff73b5dd440              # double 0.22167864226108414
	.quad	0x3fdd48d1c4a69b26              # double 0.45756954387836613
	.quad	0x3fe8f55fb9a9560c              # double 0.77995287191396434
	.quad	0x3fd4e81f469c9d70              # double 0.32666761298829439
	.quad	0x3fa5cccacaf4bab0              # double 0.042578065180682301
	.quad	0x3fe960b0b1b0d452              # double 0.79305300431463821
	.quad	0x3fe600e8abd70c28              # double 0.68761094629770003
	.quad	0x3fb7a196f4dfe500              # double 0.09230941275008675
	.quad	0x3fe386139144f370              # double 0.61011675236623653
	.quad	0x3feaadb65dac3ba9              # double 0.8337051229044522
	.quad	0x3fe435cd24c17e88              # double 0.63156754664301307
	.quad	0x3fcb6154c94c81ac              # double 0.21390781239553058
	.quad	0x3fb92a4be523c430              # double 0.098301642839729863
	.quad	0x3fc4385f254bbb9c              # double 0.1579703266247322
	.quad	0x3fe698eed22b3dbe              # double 0.70616856621375468
	.quad	0x3fe84f0f5f91c049              # double 0.75965088525664115
	.quad	0x3fe209d6b71877fe              # double 0.56370101700645114
	.quad	0x3fdd195dd4a5983c              # double 0.45467324987692215
	.quad	0x3fe782423796cad7              # double 0.73465071542008331
	.quad	0x3fe631c803c75908              # double 0.69357681978252206
	.quad	0x3fed73d3a1609e5c              # double 0.92038899916674266
	.quad	0x3fab718b4d243500              # double 0.053600648085287972
	.quad	0x3fd28ed2417e1556              # double 0.28996712108376721
	.quad	0x3fe710b5e497afa4              # double 0.7207898583123904
	.quad	0x3fe4d4ff331cf26e              # double 0.65100059493086149
	.quad	0x3fe66d7bcda13886              # double 0.70086469804825025
	.quad	0x3fd4930c29978974              # double 0.3214750677272129
	.quad	0x3fe47f15b3cee658              # double 0.64051327818669801
	.quad	0x3fca578544116d3c              # double 0.20579591582905177
	.quad	0x3f9b823fd0f29ac0              # double 0.026864049080041807
	.quad	0x3fd81987e7f76e40              # double 0.37655828145009096
	.quad	0x3febb363a9690d64              # double 0.86564810836754846
	.quad	0x3fc67cf71f3b0f34              # double 0.17568863892494735
	.quad	0x3fd24e1752f0954e              # double 0.28601630305850712
	.quad	0x3fee4f234cec4613              # double 0.94716038726818608
	.quad	0x3fe176277c4aed2a              # double 0.5456731250373299
	.quad	0x3fda0225ea7dbab0              # double 0.40638111018680956
	.quad	0x3fc4695f639ab2d4              # double 0.15946571696749479
	.quad	0x3fd23c0f0a113248              # double 0.28491569502947245
	.quad	0x3fd7769361cfcf10              # double 0.36661228706292182
	.quad	0x3fc5cabb54881728              # double 0.17024938228149122
	.quad	0x3febb4a68d66e72d              # double 0.86580207459994585
	.quad	0x3feffc1b71602cb2              # double 0.9995248045319356
	.quad	0x3fe88498022bfa74              # double 0.76618576454332165
	.quad	0x3fe6668209657280              # double 0.70001317820749875
	.quad	0x3fcd5eec5b477d70              # double 0.22945932824130066
	.quad	0x3fe41024687f1cf7              # double 0.62697048577766068
	.quad	0x3fea1d3fbe37427c              # double 0.81607043410811241
	.quad	0x3fe4b51dd104157a              # double 0.64710894416263831
	.quad	0x3fef21b232a4b39d              # double 0.97286329165727958
	.quad	0x3fe42323a93cd4a3              # double 0.62928946546766829
	.quad	0x3fd916fb1d714cb4              # double 0.39202764392139078
	.quad	0x3fbb2eeee0f56788              # double 0.10618489257958974
	.quad	0x3fedafbc22012134              # double 0.9277020134113969
	.quad	0x3fdd77c223a82e4c              # double 0.46043447000622417
	.quad	0x3fd889d516bb6142              # double 0.38341262073437943
	.quad	0x3fe4ec2e3c1ec0f6              # double 0.65383064024174931
	.quad	0x3fe4f9b06f4511cd              # double 0.65547963840850232
	.quad	0x3fd0f814f3a09c4a              # double 0.26514171401726527
	.quad	0x3fe488395f5b19cc              # double 0.64162891983215209
	.quad	0x3fe462afa2f79e39              # double 0.63704664067785821
	.quad	0x3fd63744b548725e              # double 0.34712331489007464
	.quad	0x3fed7cf0bb0128d0              # double 0.92150150799104757
	.quad	0x3fe7ee0ed1b8097a              # double 0.74780980072709657
	.quad	0x3fd6c24ad02c0c5a              # double 0.35560865716269563
	.quad	0x3fbcaf0a6c936720              # double 0.11204590941215686
	.quad	0x3fd03b992b95fd86              # double 0.25363759285388487
	.quad	0x3fef3a53d3f8e567              # double 0.97587005043821484
	.quad	0x3fd9b247b2cf92a6              # double 0.40150635206218011
	.quad	0x3fa7e83a90d22770              # double 0.046693639925321828
	.quad	0x3fe4c2d91e49e49c              # double 0.64878517070532693
	.quad	0x3fe9e4b662d23b5d              # double 0.8091689996816559
	.quad	0x3fdcfc62b21ce366              # double 0.45290439027626517
	.quad	0x3fec64cca8d056d9              # double 0.88730462047052605
	.quad	0x3fdb1f08df63e2a6              # double 0.42376920524069772
	.quad	0x3fd4c3ad385e8834              # double 0.32444315438090432
	.quad	0x3fe47eadc5225255              # double 0.64046371939418612
	.quad	0x3fed759102628716              # double 0.92060137239261297
	.quad	0x3fe96282b06cf04d              # double 0.79327520807374585
	.quad	0x3fd6ea05272ac010              # double 0.3580334551325004
	.quad	0x3fceb19658fbd210              # double 0.23979453415780982
	.quad	0x3fd1cba2fb2a824e              # double 0.27805399444517753
	.quad	0x3fe0f08e01ae3fc4              # double 0.52936458900693895
	.quad	0x3fdd0e3ab8406468              # double 0.45399349206269912
	.quad	0x3fe616623478a585              # double 0.69023237465187093
	.quad	0x3fe9bdf639159f40              # double 0.80443869733151274
	.quad	0x3fdd125912cefd74              # double 0.4542448695828718
	.quad	0x3fee2d405ba103c1              # double 0.94302385231286945
	.quad	0x3feacf365ca712fe              # double 0.83779447647302141
	.quad	0x3fcb847b788379b4              # double 0.21498053917362159
	.quad	0x3fc8dd2d49e9789c              # double 0.19424978360161027
	.quad	0x3fe0c7deecafb93c              # double 0.52439829089943357
	.quad	0x3fd1d911ded58aca              # double 0.27887388955256809
	.quad	0x3fe09f8a1db01fbb              # double 0.51947503851351173
	.quad	0x3fe2ccaf498e3710              # double 0.58748592726053239
	.quad	0x3fcce3067499e16c              # double 0.22567825978672873
	.quad	0x3fc18ccdea30b354              # double 0.13710950789518483
	.quad	0x3fe8149f35f26f66              # double 0.75251732384229508
	.quad	0x3fdd9df9b2ac160e              # double 0.46276705215891034
	.quad	0x3fe69687a56aad02              # double 0.70587522800397573
	.quad	0x3fd5ddbe68615484              # double 0.34165916627291204
	.quad	0x3fe3dacc55a656da              # double 0.62045876244038856
	.quad	0x3fe5e36dad51f723              # double 0.68401225902173157
	.quad	0x3feeaf52a8361609              # double 0.95890171865238571
	.quad	0x3fdcccec05cd3598              # double 0.45000744406282811
	.quad	0x3fe61dbdb45352c3              # double 0.69113049716778396
	.quad	0x3fd932b617dfaaa0              # double 0.3937201722280097
	.quad	0x3fc842f9c4eaf70c              # double 0.18954393496635935
	.quad	0x3fe9f1a38264874a              # double 0.81074691264459742
	.quad	0x3fec92ae16759606              # double 0.89290527712427159
	.quad	0x3fe23ffb918cb267              # double 0.57031038692146019
	.quad	0x3feb93771f43f6ba              # double 0.86175113779582735
	.quad	0x3fd2b1f2f2bd6254              # double 0.29211114602143096
	.quad	0x3fea1042926348a4              # double 0.81448486892101756
	.quad	0x3f9a76e104689880              # double 0.025844112295225319
	.quad	0x3fbd618d7dfb0e98              # double 0.1147697861261413
	.quad	0x3fe9f4f95a364c77              # double 0.81115405673553098
	.quad	0x3fcbd2b6fb178e64              # double 0.21736800442077986
	.quad	0x3fe08369d2a64b27              # double 0.51604167120453759
	.quad	0x3feda4217780481e              # double 0.92628548946436573
	.quad	0x3fd0250506d18b8a              # double 0.2522594992244015
	.quad	0x3fd126d7ac2f5ce8              # double 0.26799575629179495
	.quad	0x3fe4f13f5a2167ed              # double 0.65444915393459058
	.quad	0x3f9110c27c98c6c0              # double 0.016665495734008884
	.quad	0x3fd5898162c1e0fe              # double 0.33651766437789365
	.quad	0x3fe39ee040a89a5d              # double 0.6131440413344752
	.quad	0x3febb700247bf625              # double 0.86608893514466401
	.quad	0x3fc16f08bb03a9b4              # double 0.13620099193151491
	.quad	0x3fe08f636f607ff9              # double 0.51750346902190281
	.quad	0x3fe2bd4ee4060b91              # double 0.58560890708791835
	.quad	0x3fdfbbe145896b3a              # double 0.49584228316023238
	.quad	0x3fd7fbcd5918ad66              # double 0.37474378300495059
	.quad	0x3fe92bf6b667e9f9              # double 0.78661666513590867
	.quad	0x3fcff5e8f23d5b6c              # double 0.24969207599744025
	.quad	0x3fee72dee178889e              # double 0.95152229344627748
	.quad	0x3fdb939cd94f31a6              # double 0.43088456365219441
	.quad	0x3fe11955f109364b              # double 0.53434273793545495
	.quad	0x3fec9059ed3ff76c              # double 0.89262100541939792
	.quad	0x3fc69edf5ef501ec              # double 0.17672340523314689
	.quad	0x3fbdd7b3aab34b58              # double 0.11657259862412894
	.quad	0x3fdab33701719cae              # double 0.41718840733524132
	.quad	0x3fd53a1b5b357eae              # double 0.33167156130910314
	.quad	0x3fedf83009cebebd              # double 0.93654634395166847
	.quad	0x3fd324190b2cd74a              # double 0.29907823649715637
	.quad	0x3fecc21651f0b4f7              # double 0.89869228366811071
	.quad	0x3fede1392ccc7c25              # double 0.9337430834747279
	.quad	0x3f7c9f7833d42000              # double 0.0069880195053499961
	.quad	0x3f99980a0a4cf480              # double 0.024994046095561107
	.quad	0x3fb03950ae7ac010              # double 0.063374559972317224
	.quad	0x3fc32f7326d18cdc              # double 0.14988555331647191
	.quad	0x3fb41299edb7c198              # double 0.078408833061763494
	.quad	0x3fc4a72fbf55fb1c              # double 0.1613521274811881
	.quad	0x3fb2f69cc3981d60              # double 0.074075505974283029
	.quad	0x3fe67419943fa070              # double 0.7016723533133824
	.quad	0x3f85655cc38e6b00              # double 0.010447239606766967
	.quad	0x3febeb698861c2a4              # double 0.87248684537015153
	.quad	0x3fd8c03618ef0fd2              # double 0.38673164782471503
	.quad	0x3fed5c1621a81998              # double 0.91749102185785869
	.quad	0x3feabcb1b57780c6              # double 0.83553395693527288
	.quad	0x3fe9ad6e77809594              # double 0.80242083874024894
	.quad	0x3febaed8ac7616b9              # double 0.86509355243534636
	.quad	0x3fd858f640c42a6e              # double 0.38042980503875057
	.quad	0x3fedbbe1939c8397              # double 0.92918471174572204
	.quad	0x3fde6f1c589432a4              # double 0.47553166055949192
	.quad	0x3fe6c702ec5368d1              # double 0.71179338605295517
	.quad	0x3feff9c084b695b5              # double 0.99923730774451391
	.quad	0x3fa45781c7a6dfb0              # double 0.039730125066341215
	.quad	0x3fee8df00fe628a7              # double 0.95482638459477165
	.quad	0x3fec3c97ca704051              # double 0.88239659823194405
	.quad	0x3fe19e3d19c37f7b              # double 0.55056624443021407
	.quad	0x3fd0c2fa9533a754              # double 0.2619005639122538
	.quad	0x3fc46f19ed49e07c              # double 0.15964054190022015
	.quad	0x3fe2ff1bd2d29198              # double 0.59364119697834195
	.quad	0x3fe74feedf2001ad              # double 0.72850745753389889
	.quad	0x3fed4033eb06d60a              # double 0.91408725646641753
	.quad	0x3fef3a5e7bc230f8              # double 0.975875131336152
	.quad	0x3fd19c4e83f755d4              # double 0.27516520392722765
	.quad	0x3fe3b9959727e35b              # double 0.61640433809871398
	.quad	0x3fe68985e72324ae              # double 0.7042874826812715
	.quad	0x3fdec466ddc58856              # double 0.48073741586097662
	.quad	0x3fccd7798991ce10              # double 0.22532576768172463
	.quad	0x3fd4ff9142c3dcae              # double 0.32809859771755157
	.quad	0x3fe146417ac21103              # double 0.53982614494501069
	.quad	0x3fcf71d7dc123dc4              # double 0.24566171880404231
	.quad	0x3fdf9ee139950c10              # double 0.49407225249541487
	.quad	0x3fd0d559bebf7f70              # double 0.26302188518274416
	.quad	0x3fde36965dc1f948              # double 0.47208174854303708
	.quad	0x3fd6f6eb72a40acc              # double 0.35882078357114433
	.quad	0x3fce1cb22ced07e8              # double 0.23525073236129335
	.quad	0x3fcb894bcf45bc90              # double 0.21512744541857787
	.quad	0x3fe38de76fac315b              # double 0.61107227145252396
	.quad	0x3fd7e2b617c84164              # double 0.37321235964284072
	.quad	0x3fe453fa4495c30a              # double 0.63525117297658196
	.quad	0x3fe255312ce1848e              # double 0.57289942518049641
	.quad	0x3fb6754cb79324b0              # double 0.087727351015149279
	.quad	0x3fd4511b2022807e              # double 0.31745031488572539
	.quad	0x3fe1af30de47702b              # double 0.55263560689809788
	.quad	0x3fe032e7e7e467f4              # double 0.50621409694144726
	.quad	0x3feb615ab6c0c6eb              # double 0.85563407606079289
	.quad	0x3feabb816249f06a              # double 0.83538884350811071
	.quad	0x3fd2163624cf6c32              # double 0.28260568232298333
	.quad	0x3fdf7988e2a0a01c              # double 0.49179288989626158
	.quad	0x3fe45a2c98672f36              # double 0.63600759283278907
	.quad	0x3fdb5827724e6ecc              # double 0.42725549853069533
	.quad	0x3fbbf7ea610ad6e8              # double 0.10925164097974582
	.quad	0x3fe92510dcec0a5d              # double 0.78577464245638462
	.quad	0x3f9940b1ce8460a0              # double 0.024660852651408605
	.quad	0x3fc3eb2c83f6d7c0              # double 0.15561443751874826
	.quad	0x3fedb7e2e796a8f7              # double 0.92869706375247929
	.quad	0x3fe06da7a16d254f              # double 0.5133855965479287
	.quad	0x3fd6ccd737a3cbf2              # double 0.35625248368813722
	.quad	0x3fbe2e5a55c457e8              # double 0.11789478868408276
	.quad	0x3febcde0b72cf189              # double 0.86888156677700679
	.quad	0x3fc47bd38dd865dc              # double 0.16002888132133719
	.quad	0x3fc52cd0c4fae3e8              # double 0.1654301606957056
	.quad	0x3fe811a6f2f3b609              # double 0.75215480281411928
	.quad	0x3fadb2da61881c20              # double 0.058005165487024835
	.quad	0x3feed5cae41ca2b0              # double 0.96359772255990173
	.quad	0x3feeccefd46ac0e0              # double 0.96251670348831552
	.quad	0x3fd92b3c6c44f1e0              # double 0.39326391766715396
	.quad	0x3f9926d20ad16700              # double 0.024562150869633648
	.quad	0x3fdf57a801bdc7d4              # double 0.48972511453677936
	.quad	0x3fe63a13dd073d20              # double 0.69458954972825282
	.quad	0x3fe1e42af7354149              # double 0.55910251887147766
	.quad	0x3fe29645114ea070              # double 0.58084348087596815
	.quad	0x3fd5fdc1b892b4a0              # double 0.34361308121408207
	.quad	0x3f612e436c5e6200              # double 0.0020972554074882854
	.quad	0x3fe3c54b154289fc              # double 0.61783365394904832
	.quad	0x3fea881680755b9b              # double 0.8291122921899502
	.quad	0x3fd1fd0ab6b44a1a              # double 0.28106944887363883
	.quad	0x3fe464eb85b8a6b0              # double 0.63731933705749633
	.quad	0x3feab1e20233d492              # double 0.83421421461265965
	.quad	0x3fe67a8dbefb1e2a              # double 0.70246016789400767
	.quad	0x3fdb473a56d21832              # double 0.42622240522939869
	.quad	0x3fe85235eeb4b3e7              # double 0.76003548261871579
	.quad	0x3fa205da2e732850              # double 0.035200899286409126
	.quad	0x3fd1b3d8ecb98c6e              # double 0.27660201184898525
	.quad	0x3fd995b93488c7cc              # double 0.39976339464476207
	.quad	0x3feea481690f0934              # double 0.9575812389305498
	.quad	0x3feb8135ae5104a7              # double 0.85952266737162553
	.quad	0x3fd7446a0c3881ea              # double 0.36355067437582866
	.quad	0x3fe99292961e5175              # double 0.79914216346746392
	.quad	0x3fd9a4bd371e60ce              # double 0.40067987806970684
	.quad	0x3fdfd9f628f111ae              # double 0.4976783180066161
	.quad	0x3fe1983eba329159              # double 0.54983459822373526
	.quad	0x3fc58d62c8be91c4              # double 0.16837725450490215
	.quad	0x3fda8287b61c160e              # double 0.41421692642356411
	.quad	0x3fd89fe97ea50d8a              # double 0.38476025931978397
	.quad	0x3fcae760cc72cdbc              # double 0.21018609984240111
	.quad	0x3fcc0c6dc7413ae0              # double 0.21912929753530985
	.quad	0x3fd7a27627d5f196              # double 0.36929086580473702
	.quad	0x3fde088b99f7abf4              # double 0.4692715648258734
	.quad	0x3fe57bb0ee08fd99              # double 0.67134901515230461
	.quad	0x3fc341d283fe6f2c              # double 0.15044623799337253
	.quad	0x3feb8fdf55b06628              # double 0.86131254898208898
	.quad	0x3fe92d1df4a18bca              # double 0.78675744800090652
	.quad	0x3fea0720b3217514              # double 0.81337008463347837
	.quad	0x3fd23d744ce1a6b2              # double 0.28500087268785557
	.quad	0x3fe1861552ddd4be              # double 0.54761758980625763
	.quad	0x3fc1f549a95ca9ec              # double 0.14029808778407415
	.quad	0x3fe10fd8842a6198              # double 0.53318429769119557
	.quad	0x3fd57557ffc2a8c0              # double 0.33528709389305433
	.quad	0x3fdde1c4620b583a              # double 0.46690473150863776
	.quad	0x3fd1168d027c409c              # double 0.267001392771826
	.quad	0x3fe788362b4dc2f1              # double 0.73537739236607369
	.quad	0x3fe95b82261d0661              # double 0.79242045825976615
	.quad	0x3fb1d70fd1ad9d58              # double 0.069687832537615235
	.quad	0x3fc47686f3187e1c              # double 0.15986716146379443
	.quad	0x3fc1666b1a8299e8              # double 0.1359380607074876
	.quad	0x3fce0e8f8b5eeaa4              # double 0.23481935792172692
	.quad	0x3fb0cfae902d13c8              # double 0.065668974112738643
	.quad	0x3fea281ab0eb087a              # double 0.8173955398017505
	.quad	0x3fe4ca6d3f50517e              # double 0.6497102963062813
	.quad	0x3fd05d7ee23f98b2              # double 0.25570652098248126
	.quad	0x3fd9a26c17d0c16c              # double 0.40053846669891047
	.quad	0x3fe7d167ecee06f6              # double 0.74431225085592589
	.quad	0x3fe78d8c2edc61d7              # double 0.73602875854981675
	.quad	0x3fee8ba4ba81c54f              # double 0.95454632212764945
	.quad	0x3fe87a77322d57ab              # double 0.7649494152089934
	.quad	0x3fe3d9ae0ade4c32              # double 0.62032224772190703
	.quad	0x3fe85a72148183d8              # double 0.7610407257562839
	.quad	0x3fe849e03f3e84b9              # double 0.75901806213746348
	.quad	0x3fd3f654be8e3cec              # double 0.31190985306689245
	.quad	0x3fd251a8c430e4f2              # double 0.28623408469464018
	.quad	0x3fa17a0eda4622c0              # double 0.034134353775760129
	.quad	0x3fc6e143dcef4d9c              # double 0.17874954498129803
	.quad	0x3fd2cf50b5ca0e46              # double 0.29390352013453869
	.quad	0x3fc6fb5a9c3bbd18              # double 0.17954571369725936
	.quad	0x3fd27e91ec424ad8              # double 0.28897522041476753
	.quad	0x3fd7352be7790a02              # double 0.36262033085600376
	.quad	0x3fcc5d223c7727f8              # double 0.2215922160378907
	.quad	0x3fe3da847264c304              # double 0.62042448370456826
	.quad	0x3feb1f07f3948df7              # double 0.8475379712512553
	.quad	0x3fef69ab8ef1eef0              # double 0.98164918822246072
	.quad	0x3fea462fae3e056f              # double 0.82106765777295532
	.quad	0x3fe847cc09449a75              # double 0.75876428423073483
	.quad	0x3fed2f7e7ec6346b              # double 0.91204762230485181
	.quad	0x3fec96fde1b89417              # double 0.89343160711416914
	.quad	0x3fcd9b8984dea9ac              # double 0.23130911815435462
	.quad	0x3fda2fce3a0770d6              # double 0.4091678206148236
	.quad	0x3feeb9d5d25e14b5              # double 0.96018496596720714
	.quad	0x3fe56095a4ddf0a9              # double 0.66804010582520335
	.quad	0x3fc94dcc77dbc3f0              # double 0.19768672802413745
	.quad	0x3fec0d4cb76b7b60              # double 0.87662349533261973
	.quad	0x3fdc9b6607872526              # double 0.44698477492473143
	.quad	0x3fdcd66e5f07fc94              # double 0.45058783798590096
	.quad	0x3fe165662cf17907              # double 0.54362782266596887
	.quad	0x3fe0ad3167108b6e              # double 0.52114172105608048
	.quad	0x3fe89aea580a8576              # double 0.76891057200934543
	.quad	0x3fef3fc7488d047c              # double 0.97653545541847064
	.quad	0x3fe6f459a9e27a84              # double 0.71732791119195882
	.quad	0x3fda1718429f089c              # double 0.40765959268549934
	.quad	0x3fe6e07562c31a38              # double 0.71489972390629131
	.quad	0x3fe4ff18520bb553              # double 0.65613952660138819
	.quad	0x3fcba1eeb8d9aa74              # double 0.21587928796664679
	.quad	0x3fe421d947a23702              # double 0.62913192740390422
	.quad	0x3fe0d876705923e2              # double 0.52642366354950476
	.quad	0x3fe9b5a2fa3bf3ef              # double 0.80342244027963072
	.quad	0x3fcc74d605d1adac              # double 0.2223155525601731
	.quad	0x3fe62854062f670f              # double 0.69242287834205907
	.quad	0x3fd5dfd58a95f8d0              # double 0.34178675206920861
	.quad	0x3fefd638b8e4fa98              # double 0.99490009414860747
	.quad	0x3fc1b56b7fe7fa98              # double 0.13834899659555755
	.quad	0x3fd2b23b684c5794              # double 0.2921284216439457
	.quad	0x3fdbe0b073276ef8              # double 0.43558894391547609
	.quad	0x3fc711424b7f3ffc              # double 0.18021420179729819
	.quad	0x3fe2094c66ed7d2b              # double 0.5636350641542881
	.quad	0x3fe37f812ff88103              # double 0.60931453103333444
	.quad	0x3fe060277c0db94f              # double 0.51173757771702266
	.quad	0x3fb292c4d90c6d58              # double 0.072552016249053053
	.quad	0x3fd7683465cd3a70              # double 0.36573514882630942
	.quad	0x3f6b6e59269abb00              # double 0.0033485165812047191
	.quad	0x3fe2c1f2f5b8b616              # double 0.58617542259679811
	.quad	0x3fe386d8ac06c9f0              # double 0.6102107391255327
	.quad	0x3fefd7d9330ce428              # double 0.99509868593952877
	.quad	0x3fd798b7666fecaa              # double 0.36869606975205704
	.quad	0x3fece4e00a2d620d              # double 0.90293886173009386
	.quad	0x3feda25f4f641bc6              # double 0.92607083803238122
	.quad	0x3fc5a1a137a3b374              # double 0.16899504868288384
	.quad	0x3f914e1588dc24a0              # double 0.016899429777400443
	.quad	0x3fe4106a5effdbcf              # double 0.62700384668903009
	.quad	0x3fe5ef53c9fc3022              # double 0.68546475839821519
	.quad	0x3feb4529be8bbea9              # double 0.85219275680534168
	.quad	0x3fe63b28938ec0bd              # double 0.69472149677132899
	.quad	0x3fc859da6fadaad8              # double 0.19024210408254905
	.quad	0x3fd663238466a66a              # double 0.34980094842703713
	.quad	0x3feb9f50493b7c31              # double 0.86319746306606338
	.quad	0x3fe0f3b3ef172a17              # double 0.52974888512955232
	.quad	0x3fc223909a430558              # double 0.14171035320581882
	.quad	0x3fe1120eb30cde97              # double 0.53345427485233443
	.quad	0x3fedc044eaaa2c4b              # double 0.92972036202389441
	.quad	0x3fe643bcdec38241              # double 0.69576877125297909
	.quad	0x3fe597f87ba05655              # double 0.67480110307469465
	.quad	0x3fe117d4248a17e4              # double 0.5341587747250256
	.quad	0x3fe1cc0ffa57faeb              # double 0.55615996260880018
	.quad	0x3fedc50b226bd400              # double 0.93030316088572818
	.quad	0x3fd7c69741886920              # double 0.37149602317517072
	.quad	0x3fe60d237cdf689d              # double 0.68910383595654745
	.quad	0x3febd1baebf4d514              # double 0.86935182652692555
	.quad	0x3fd619d88ab4597e              # double 0.34532750649795918
	.quad	0x3fea55347db38802              # double 0.8229010062316322
	.quad	0x3fe9f3498acb333b              # double 0.81094815357355488
	.quad	0x3fadc8299486edf0              # double 0.058167743092294333
	.quad	0x3fe6bedb22c9dd39              # double 0.71079785151133656
	.quad	0x3fe09a9bd017ab22              # double 0.51887312548692344
	.quad	0x3fb48a031f19ccb8              # double 0.080230898945773954
	.quad	0x3fe6dd139b82d3db              # double 0.71448688863039977
	.quad	0x3fee4e70c33b556c              # double 0.94707525378423218
	.quad	0x3fdb65ea2168379c              # double 0.42809537184154478
	.quad	0x3fecd8115a533161              # double 0.9013754619750608
	.quad	0x3fe06eceba4c6a6e              # double 0.51352630983758529
	.quad	0x3fe3ee051cc31dea              # double 0.62280517213451714
	.quad	0x3fd51eaac1cbded0              # double 0.32999676633288022
	.quad	0x3fb17b3b6885ec10              # double 0.068286622064917646
	.quad	0x3fef2d8f277be7d6              # double 0.97431142532081583
	.quad	0x3fe8a8f19d98c7ac              # double 0.77062302380203595
	.quad	0x3fef8a469d925f2b              # double 0.98562937522635729
	.quad	0x3fd2729dc404b520              # double 0.28824562208576943
	.quad	0x3fe2cbd659da8549              # double 0.5873824839547207
	.quad	0x3fea197b517f8f9c              # double 0.81561056058534431
	.quad	0x3fe6ee9d9425d50a              # double 0.71662787375558534
	.quad	0x3fc3a4f13c43ac28              # double 0.15347114031405451
	.quad	0x3f9195737d228700              # double 0.017171673309923641
	.quad	0x3fe740dd3bf909cf              # double 0.72666799272001892
	.quad	0x3fe7dc116e1ce23d              # double 0.74561378008281276
	.quad	0x3fd17ca927e74c7a              # double 0.27323368927790848
	.quad	0x3fb71c0cc3d28818              # double 0.090271756942940207
	.quad	0x3febe9d1f7b55813              # double 0.87229250317136786
	.quad	0x3fd37f39f4e8a3b8              # double 0.30464028279180466
	.quad	0x3fc105fd7c46cccc              # double 0.1329953057116654
	.quad	0x3fee4c1a515e3440              # double 0.94678989307579541
	.quad	0x3fe413e2d9fe49ff              # double 0.62742750717944762
	.quad	0x3fd52bd20a191e9e              # double 0.33079958902497164
	.quad	0x3fc4ee6b7ae64fe8              # double 0.16352599621734432
	.quad	0x3fd22ae773262ffe              # double 0.28386865849529375
	.quad	0x3fdb27485753bc06              # double 0.42427261856113352
	.quad	0x3fbea204c29cd510              # double 0.11965970755848709
	.quad	0x3feed99d63bd008e              # double 0.96406430702337942
	.quad	0x3fcd5d532211f6b0              # double 0.22941054500181712
	.quad	0x3fcb51cfba1f2320              # double 0.2134341868206997
	.quad	0x3fe6870308c64d59              # double 0.70398093904297376
	.quad	0x3fc20b245671d8f0              # double 0.14096502514775677
	.quad	0x3fe7cfe98d456b7b              # double 0.74412992088342322
	.quad	0x3fe7bebee22095b8              # double 0.74203437962994823
	.quad	0x3fc841be5ee86734              # double 0.1895063365380395
	.quad	0x3fee65b0a7aaf320              # double 0.94991333720790649
	.quad	0x3febd5f4bf987ded              # double 0.86986768170384965
	.quad	0x3fdc75dd3134ae4e              # double 0.44469384961368952
	.quad	0x3fd55d1ec4035380              # double 0.33380860463994821
	.quad	0x3fdafede33bdbbe2              # double 0.42180590679975982
	.quad	0x3fd957ed37dd0f22              # double 0.39599161582394704
	.quad	0x3fe58d4cca50c94b              # double 0.67349853052864128
	.quad	0x3fe076aa0a006112              # double 0.51448537782110493
	.quad	0x3fe447d98082fcd1              # double 0.63377070522246914
	.quad	0x3fdf99d744589780              # double 0.49376470255298699
	.quad	0x3fc5082cde252ba0              # double 0.1643119892781586
	.quad	0x3fd324424e72a772              # double 0.29908807431149065
	.quad	0x3fe1ede2c1b6a618              # double 0.56028879007971266
	.quad	0x3fd83ab65e08e830              # double 0.37858351882062191
	.quad	0x3fe6678c7e7a6f7d              # double 0.70014023497377276
	.quad	0x3fddb4ed129243dc              # double 0.46416785062416266
	.quad	0x3fe9d1a6e890d1eb              # double 0.80684228346814046
	.quad	0x3feaaa6c8ba9b637              # double 0.83330371168057737
	.quad	0x3fe656c0e8fcc969              # double 0.69809003358231536
	.quad	0x3fe501f9e87bd194              # double 0.65649123579946655
	.quad	0x3fc72525eff94ec4              # double 0.18082117288087407
	.quad	0x3fdd5e6cc3f159c2              # double 0.45888823637997345
	.quad	0x3fe2cbe75abcfdaa              # double 0.58739059183419795
	.quad	0x3fe23523f68605fe              # double 0.56898687504889245
	.quad	0x3fd2701d1e8f142c              # double 0.28809288009898881
	.quad	0x3fe29be3a1a162ec              # double 0.58152944153252184
	.quad	0x3f52aaab09222a00              # double 0.0011393232603348347
	.quad	0x3fd8bc37885315e4              # double 0.38648784935898406
	.quad	0x3fec081d723924c5              # double 0.87599060353490954
	.quad	0x3fe0254d69429a4e              # double 0.50455351408602112
	.quad	0x3fe94c3dd83fc757              # double 0.79055683361205353
	.quad	0x3fe56b78070b8313              # double 0.66936875701876131
	.quad	0x3fbecc34104a5eb0              # double 0.12030339620320762
	.quad	0x3fd8a640689f3eba              # double 0.38514719216344029
	.quad	0x3fe671013ee9e866              # double 0.70129453933556074
	.quad	0x3fe9767163902bfb              # double 0.79570836492473462
	.quad	0x3fbedef7e06fe5f8              # double 0.12058972577496962
	.quad	0x3fe5b7f604ca55f4              # double 0.67870617805118494
	.quad	0x3fdac09a64b4d2ec              # double 0.41800556025127267
	.quad	0x3fd202abbad6ac56              # double 0.28141301389650175
	.quad	0x3fced64a3fa8865c              # double 0.24091461284938276
	.quad	0x3fee6e68eff7bfd6              # double 0.95097777241425763
	.quad	0x3fc3b0cd45a50ef0              # double 0.15383306408522612
	.quad	0x3fe0f4826bff6a7d              # double 0.52984734624199314
	.quad	0x3fc90aad57f7b544              # double 0.19563833995145263
	.quad	0x3fce9196d2224264              # double 0.23881802807274533
	.quad	0x3fea8c36a738b0c5              # double 0.82961590443076061
	.quad	0x3fc3c8ef3aa3483c              # double 0.15456953395056583
	.quad	0x3fe700373a16b8ee              # double 0.71877633424244691
	.quad	0x3fdea8168c6568c0              # double 0.47900928221282513
	.quad	0x3fb77c6f8efab6f8              # double 0.091742489249295178
	.quad	0x3fe15b242f3532ae              # double 0.54237565250658348
	.quad	0x3fc90896dc0130f8              # double 0.19557462446608276
	.quad	0x3feaceada8428426              # double 0.8377292906117233
	.quad	0x3fbbb236dafbe470              # double 0.10818808409011793
	.quad	0x3fe28f9a8e7a8d3e              # double 0.58002975299715565
	.quad	0x3fee2bfd59cf710a              # double 0.94286983052327966
	.quad	0x3fecc96057f3ecbb              # double 0.89958207300460147
	.quad	0x3fe83292ecfa491b              # double 0.75617357525542006
	.quad	0x3fc7caa08befc84c              # double 0.18587118943065872
	.quad	0x3fc15c8b37f153e4              # double 0.13563671332909089
	.quad	0x3fd90e7a8301749c              # double 0.39150870126270276
	.quad	0x3fc7a8082fcf90a4              # double 0.18481542906295545
	.quad	0x3fdccc0e703ea4d6              # double 0.44995461427113292
	.quad	0x3fec6220b6de8eaa              # double 0.88697849003479701
	.quad	0x3fe3982506defdcf              # double 0.61232234327320068
	.quad	0x3fe1288742fb6e6e              # double 0.53619731028034123
	.quad	0x3feb903fa1e6f42c              # double 0.86135846730724585
	.quad	0x3fa6da22ae8d2aa0              # double 0.044632991607234773
	.quad	0x3fca6d547890f0b8              # double 0.20646148573894663
	.quad	0x3fdb55b42fd847e2              # double 0.42710594818447423
	.quad	0x3fc771e2957385d0              # double 0.18316299722122986
	.quad	0x3f4f90fdb3d34c00              # double 9.6332919897645918E-4
	.quad	0x3fd07bfb7724a244              # double 0.25756727824276404
	.quad	0x3fe9a5bbe6bfb411              # double 0.80148119991429401
	.quad	0x3fe1771432384492              # double 0.54578599747232404
	.quad	0x3fed267053ed7e97              # double 0.91094223396426599
	.quad	0x3fe3039ae751130d              # double 0.59419007472078678
	.quad	0x3fc413bd3eab94b0              # double 0.15685239372320359
	.quad	0x3fcea1fa708d4b80              # double 0.23931818481159084
	.quad	0x3fd491f3b345c6b0              # double 0.32140820033155659
	.quad	0x3feea45b2479205a              # double 0.95756299136793221
	.quad	0x3fe8145720cdfa78              # double 0.75248295218609851
	.quad	0x3fd69e3abae30274              # double 0.35340755701694282
	.quad	0x3fd843924bbb69f2              # double 0.37912423511229953
	.quad	0x3fd8e643c012177a              # double 0.38905423886205137
	.quad	0x3fd2388602050384              # double 0.28469991872048461
	.quad	0x3fd197991204cd5a              # double 0.27487780341762902
	.quad	0x3febc1cfc4adf179              # double 0.86740864194830103
	.quad	0x3fda35ab450c0994              # double 0.40952569716332587
	.quad	0x3fded00cafdbe81c              # double 0.48144833730441561
	.quad	0x3fee497cfea58a2b              # double 0.94647073493644507
	.quad	0x3fea9c270d5f285d              # double 0.83156159030592003
	.quad	0x3f949275361de7a0              # double 0.02008994238665418
	.quad	0x3fead0c1d7f01fdb              # double 0.8379830567873755
	.quad	0x3feb14634cd3e8f4              # double 0.84623875623154143
	.quad	0x3fc2880a825c39bc              # double 0.14477664342162011
	.quad	0x3fe96a508c523c24              # double 0.79422786146631496
	.quad	0x3fd6d2c2c88b5614              # double 0.35661382278826292
	.quad	0x3fefcdc0c98079d6              # double 0.99386634212333536
	.quad	0x3feec94f72f33e78              # double 0.96207401705937822
	.quad	0x3fd2c65e0d7c3956              # double 0.29335738484305318
	.quad	0x3fe3d5a38476231d              # double 0.61982894774800779
	.quad	0x3fe4083a28f428f9              # double 0.62600429533747992
	.quad	0x3fe5996419f14705              # double 0.67497448984997332
	.quad	0x3fb4f77a898c98c0              # double 0.081901224690770213
	.quad	0x3fce3886bb147100              # double 0.23610004553564323
	.quad	0x3fe9cacbb127ca1a              # double 0.80600533104581307
	.quad	0x3fbf941205407008              # double 0.12335312488761485
	.quad	0x3fe09598c05efc98              # double 0.51826131412953469
	.quad	0x3fef3c8206434511              # double 0.97613621924588944
	.quad	0x3fc364f4ec668bac              # double 0.15151845496174354
	.quad	0x3fd8ccdd41421e24              # double 0.38750392315748372
	.quad	0x3fcd1d1aa3c27a70              # double 0.22745068546369707
	.quad	0x3fe794bd2a55b395              # double 0.73690660732755708
	.quad	0x3fe02d4d169a11a8              # double 0.50552992262287422
	.quad	0x3fd42dfaa37b1fa6              # double 0.3153063389295262
	.quad	0x3fc4cebd08e0a1bc              # double 0.16255915578336821
	.quad	0x3fe72dc3ae47e4e6              # double 0.72433647193170425
	.quad	0x3fbf43f9e816d8d8              # double 0.12213098446122517
	.quad	0x3feeebca4ebbdb2c              # double 0.96628299119661198
	.quad	0x3fd18746d85ed6ee              # double 0.27388163690498757
	.quad	0x3fe934f0856bec4e              # double 0.78771234568501725
	.quad	0x3fe01a2c788c9ef8              # double 0.50319503350053107
	.quad	0x3fe5cbcff8499b4f              # double 0.6811294412008041
	.quad	0x3feb6fdb9fc9ed76              # double 0.85740452965494174
	.quad	0x3fe2976d5372ed24              # double 0.58098474787349064
	.quad	0x3fdc598df01ff5ae              # double 0.44296596955958989
	.quad	0x3feee6fcc462849a              # double 0.96569670063412905
	.quad	0x3fe7463e308f096e              # double 0.7273245762265057
	.quad	0x3fe2c37f71bed484              # double 0.58636448112396566
	.quad	0x3fd9d0589f56efc4              # double 0.40334144173152375
	.quad	0x3fe6d182ac23528d              # double 0.71307500477503682
	.quad	0x3fdc20271322d7dc              # double 0.4394624411464727
	.quad	0x3fc701c0b6865908              # double 0.17974099075645023
	.quad	0x3fa89a736c4925e0              # double 0.048053366631005678
	.quad	0x3fe881faf9e001df              # double 0.76586674503056063
	.quad	0x3fe5da3d6a0f1a37              # double 0.68289061274192064
	.quad	0x3fee1cad72a5f14c              # double 0.94100067512730722
	.quad	0x3fcb2271e127e270              # double 0.2119886731523084
	.quad	0x3fca39866b8eb56c              # double 0.20488052608326812
	.quad	0x3fd8c88ede891f04              # double 0.38724109394068784
	.quad	0x3fec380413ba37a5              # double 0.88183788159380028
	.quad	0x3fe551d52a80fcbd              # double 0.66623934079679936
	.quad	0x3fb6f43c7c01c788              # double 0.089664249682554709
	.quad	0x3fb9bf808f36db80              # double 0.10057834145014333
	.quad	0x3fef33719abd9e46              # double 0.97502975676338433
	.quad	0x3fd1c57b2ab026bc              # double 0.27767829102286234
	.quad	0x3fe1e31f51d37978              # double 0.55897489530234079
	.quad	0x3fb17e4b7e41f4f0              # double 0.068333357166881603
	.quad	0x3fca1269c359b41c              # double 0.20368692434877367
	.quad	0x3fd16580f9ed34d6              # double 0.2718203011216479
	.quad	0x3fec984546db3e0f              # double 0.89358772124427499
	.quad	0x3fe0343133e8e48c              # double 0.50637111796017242
	.quad	0x3fec2fe985c92c72              # double 0.88084865694089687
	.quad	0x3fefd20b3565e2aa              # double 0.99439011029524704
	.quad	0x3fd22e1ee5386300              # double 0.28406498322287632
	.quad	0x3fe1ead790d42eb9              # double 0.55991724287874611
	.quad	0x3fe9a93517fd11ea              # double 0.80190519986404962
	.quad	0x3fd4401e2b11a496              # double 0.3164134426684283
	.quad	0x3fe76c827616dca5              # double 0.73199580253903618
	.quad	0x3fef2a03e075854a              # double 0.97387880172406338
	.quad	0x3fcb45cbb511a7c4              # double 0.21306749669321168
	.quad	0x3fe0705925489bfc              # double 0.51371438295325289
	.quad	0x3fd27fe6380086b4              # double 0.28905635327292178
	.quad	0x3fd2fb8ed8097122              # double 0.29660388085700806
	.quad	0x3fd62fb32f296672              # double 0.34666137319218315
	.quad	0x3fd857f7fef76abc              # double 0.38036918543881959
	.quad	0x3fe12dcfcf77ba27              # double 0.53684225579292366
	.quad	0x3fee8888ccbb9eab              # double 0.95416679369823976
	.quad	0x3fc14bdde6249fc8              # double 0.13512777078108074
	.quad	0x3fe2480f0dc010f9              # double 0.57129624066922624
	.quad	0x3fdaaecf93cabb40              # double 0.41691960747532519
	.quad	0x3fdca7dbbacdb7d6              # double 0.44774525873697024
	.quad	0x3fe98ab1ac6a2db8              # double 0.79818042444951853
	.quad	0x3fd4ad6c0f90dd54              # double 0.3230848457346458
	.quad	0x3fea5fc557297cea              # double 0.82419077895965853
	.quad	0x3fd9214a2e3bdfe6              # double 0.39265684618976449
	.quad	0x3fef0a52260db2ce              # double 0.97000987465215771
	.quad	0x3feafaeec6919993              # double 0.84313143523177059
	.quad	0x3f956298accdba00              # double 0.020883927867027197
	.quad	0x3fe43f2e852e1275              # double 0.63271261226380082
	.quad	0x3fde85bae2d9ebec              # double 0.47691223290865881
	.quad	0x3f8e092e1c1e5440              # double 0.014665947182758043
	.quad	0x3fb90b287ed4ad50              # double 0.097826510395568222
	.quad	0x3fe5edcf73c0e33e              # double 0.68527958496188268
	.quad	0x3fc21ae5185fddd0              # double 0.14144576730880809
	.quad	0x3fd1d53bf318cf2a              # double 0.27863978137905809
	.quad	0x3fe7a9fcd6385586              # double 0.73950044479231347
	.quad	0x3fef96e924139996              # double 0.98717171713069507
	.quad	0x3fa61d6732a07820              # double 0.043193077974351235
	.quad	0x3fdd4ac0885c36a0              # double 0.45768750492502797
	.quad	0x3fdd1ffd64642b80              # double 0.45507750324093621
	.quad	0x3fe67ed7b6416ed3              # double 0.70298371884151789
	.quad	0x3fe88b551246d5a9              # double 0.76700833863894957
	.quad	0x3fd37c02b6e020f4              # double 0.30444400652824233
	.quad	0x3fc640a0ce065218              # double 0.17384729442405056
	.quad	0x3fc90737d3a30710              # double 0.19553277810887737
	.quad	0x3faf8805fa609920              # double 0.061584650815620146
	.quad	0x3fa9db658439d990              # double 0.050501987830034456
	.quad	0x3fc61265bc7689cc              # double 0.1724364443044365
	.quad	0x3fbc12219eb4a918              # double 0.10965166210795407
	.quad	0x3fe483aa38b6c045              # double 0.6410723788922118
	.quad	0x3fe42dd5177bbbf5              # double 0.63059477411832054
	.quad	0x3fe757eb855998d0              # double 0.729482422303386
	.quad	0x3fe253cf3723652f              # double 0.57273064393226558
	.quad	0x3fd0243eaf4ccb38              # double 0.25221221083772916
	.quad	0x3faa9114f133b840              # double 0.051888136333090973
	.quad	0x3fe6496dc6c214af              # double 0.69646347827860733
	.quad	0x3fe1e5a35e92695b              # double 0.55928200217321533
	.quad	0x3fd44ffe35b3c3ea              # double 0.31738238567692056
	.quad	0x3fe3ef1158c4e57f              # double 0.62293307626457295
	.quad	0x3fc54f0c3b695214              # double 0.16647484684894265
	.quad	0x3fec59ccf18e4659              # double 0.88596198252543978
	.quad	0x3fc6ed0d962594a8              # double 0.17910928565394113
	.quad	0x3fd7a4377658069c              # double 0.36939798886315045
	.quad	0x3fd9c50b84661296              # double 0.40265167169153793
	.quad	0x3fea2f18f2d2dd6f              # double 0.81824920107366761
	.quad	0x3fdb7c4d94b5b44c              # double 0.4294618561023682
	.quad	0x3fdc4f1241bba69c              # double 0.44232613009681088
	.quad	0x3fd2ed947fe5ab0e              # double 0.29575073709445199
	.quad	0x3fd2f4f022dd5358              # double 0.29619983105412961
	.quad	0x3fdb606e117ff7e4              # double 0.42776061734173099
	.quad	0x3fe98cda7df2717d              # double 0.79844402884513921
	.quad	0x3fd986fe732e0826              # double 0.3988643765261507
	.quad	0x3fc9503e418b2c5c              # double 0.19776132774709054
	.quad	0x3fd0f090c3612fc8              # double 0.26468295173685563
	.quad	0x3fd0e3c48eb6b1bc              # double 0.2639018434226974
	.quad	0x3fee71cca44484bc              # double 0.95139152606511556
	.quad	0x3fee180caf73a3dc              # double 0.94043573635019184
	.quad	0x3fe21e0af0c5c335              # double 0.56616732622032961
	.quad	0x3fe0b3e47e2600cc              # double 0.52195953977936815
	.quad	0x3fdcd8cc74792b3c              # double 0.45073233961436521
	.quad	0x3fea7b2e1f5e1827              # double 0.82753664137340344
	.quad	0x3fb8635c5b2825b8              # double 0.0952661249686092
	.quad	0x3fe2edc84183648d              # double 0.5915261535220836
	.quad	0x3fbbff4acccba4b8              # double 0.10936419963731481
	.quad	0x3fed258481fb5f38              # double 0.9108297861775787
	.quad	0x3feda5d2697650a7              # double 0.9264919338043186
	.quad	0x3fe8eaf6f2306412              # double 0.77868220617813422
	.quad	0x3fc995c69d7cd69c              # double 0.19988329591585774
	.quad	0x3fe99bdbeb91d9dd              # double 0.80027576455796245
	.quad	0x3fc2136dbce9ae04              # double 0.14121791576631904
	.quad	0x3fd24cdf12a9373e              # double 0.28594185659754945
	.quad	0x3fc4f705cdc99110              # double 0.16378853367053425
	.quad	0x3fbaf1d97273e2c8              # double 0.10525282902006972
	.quad	0x3feec9dad184b843              # double 0.9621404735714879
	.quad	0x3fe85ba917b791ef              # double 0.76118902809372269
	.quad	0x3fe04c0014bf6016              # double 0.50927738239534182
	.quad	0x3fe5196d10266124              # double 0.65935376314431382
	.quad	0x3f5eb69b1a91e600              # double 0.0018745913205563403
	.quad	0x3feefba8b0aa6b61              # double 0.96822008614558907
	.quad	0x3fb5eee3ad793ad8              # double 0.08567641244119828
	.quad	0x3feb5ff9c75cb0e9              # double 0.85546578348069346
	.quad	0x3fede2992eb73e41              # double 0.93391093372515155
	.quad	0x3fc9699f4be3fa1c              # double 0.19853583531944785
	.quad	0x3fc6db2997cf3560              # double 0.17856330788201102
	.quad	0x3fe96d4c3b575357              # double 0.79459201421796422
	.quad	0x3fea52706fce821b              # double 0.8225633796428754
	.quad	0x3fc441b14dc61810              # double 0.15825477883862549
	.quad	0x3fe5de5b9821cf17              # double 0.68339328492445162
	.quad	0x3fe7871c603bd86d              # double 0.7352430228772967
	.quad	0x3fdda7397c46944a              # double 0.46333157669352387
	.quad	0x3fe26a3c63c29bd5              # double 0.57546824917232675
	.quad	0x3fc0ea28ee984c44              # double 0.1321459927572467
	.quad	0x3fea2f642111e245              # double 0.81828505000073248
	.quad	0x3fe3028525f15b71              # double 0.59405763064101624
	.quad	0x3feaa4b21fbc5475              # double 0.83260446737644023
	.quad	0x3fd5a3ab7615f10e              # double 0.33811461002166332
	.quad	0x3fea328012bc83c6              # double 0.81866458568048794
	.quad	0x3fe5fa7dfedcae00              # double 0.68682765748729935
	.quad	0x3fe65d49e00e3644              # double 0.69888776551096798
	.quad	0x3fcec89fd3805438              # double 0.24049756838999925
	.quad	0x3feb659d6ac474f2              # double 0.85615416386613519
	.quad	0x3fe8c50e02f17a29              # double 0.77405453276498293
	.quad	0x3fcaf3f4f4d50594              # double 0.21056997255986387
	.quad	0x3fefa547ae75e9d7              # double 0.98892578195892155
	.quad	0x3fcf8a63549cf274              # double 0.24641076690194874
	.quad	0x3fd0f5d449fbabea              # double 0.2650042269221432
	.quad	0x3feaeed9c34c2b23              # double 0.84165657180833298
	.quad	0x3fea881863da9695              # double 0.82911319258410521
	.quad	0x3fee3f1293191fec              # double 0.9451992867479908
	.quad	0x3fd6892a62f80e2c              # double 0.35212192215860472
	.quad	0x3fdc8e425eebe9de              # double 0.44618281621629119
	.quad	0x3fecd573d79b496e              # double 0.90105621443426087
	.quad	0x3fd72f0682c0464a              # double 0.36224520462665011
	.quad	0x3fdeaa152e200afc              # double 0.47913102631007098
	.quad	0x3fdf39a4df3f11d8              # double 0.48789331246760304
	.quad	0x3fb40b5905160aa0              # double 0.078298152677272359
	.quad	0x3fe08180493b1f38              # double 0.51580824187201468
	.quad	0x3fe0857c55fa9533              # double 0.51629463951818477
	.quad	0x3fe3bf33270ac535              # double 0.61708982110409372
	.quad	0x3fd5bbe6c80c6e9e              # double 0.33959359680168599
	.quad	0x3fe2ce8369f557f0              # double 0.58770914740557423
	.quad	0x3fde4634e5344694              # double 0.47303507216666074
	.quad	0x3fe32bf30a00a314              # double 0.59911491349802981
	.quad	0x3fdd24aa78724d0c              # double 0.45536290895798071
	.quad	0x3fad6115973ea690              # double 0.057381319725505198
	.quad	0x3fe56f573ec7cec9              # double 0.66984140645805568
	.quad	0x3fc0aa2be9b077f4              # double 0.13019322310077508
	.quad	0x3fe67cfa49765d4a              # double 0.70275606487386111
	.quad	0x3fcdde62cb7d5b5c              # double 0.23334917961139012
	.quad	0x3fc442c2165edc7c              # double 0.15828729717552281
	.quad	0x3fd6f765113147d8              # double 0.35884977988200495
	.quad	0x3fe3bc021804ba0f              # double 0.61670021716219192
	.quad	0x3fed52a13b3597cd              # double 0.9163366466934747
	.quad	0x3fe8576e6733afa7              # double 0.76067276150341889
	.quad	0x3fc0ef70ab7ecd9c              # double 0.13230713247103842
	.quad	0x3fe077a93b6b905f              # double 0.51460706334593087
	.quad	0x3fe3f613491e0d7f              # double 0.62378849297276406
	.quad	0x3fd3bede1d25ff94              # double 0.30852463575865241
	.quad	0x3fdf46e103fc7a7c              # double 0.48870110883027684
	.quad	0x3feda1fda44a4271              # double 0.92602426612763911
	.quad	0x3fc40a6ae48706b4              # double 0.15656791838232709
	.quad	0x3fe102ee4338e308              # double 0.53160775307978358
	.quad	0x3fc98e3a8de2cd28              # double 0.19965297630333478
	.quad	0x3fe08b87d70b174b              # double 0.51703254700326207
	.quad	0x3fd7fdba31ecbff2              # double 0.37486128688305975
	.quad	0x3fe04912f78afc90              # double 0.50892017696595993
	.quad	0x3f856a5e639c7140              # double 0.010456788458718891
	.quad	0x3fe8b247dd6847b9              # double 0.77176278346654847
	.quad	0x3fc8aa2e29056020              # double 0.19269349101046007
	.quad	0x3fdfade0057bfdfc              # double 0.49498749290066235
	.quad	0x3fd1ca6a6c45b682              # double 0.27797947476833695
	.quad	0x3fd41601a1eb3a10              # double 0.31384316265476375
	.quad	0x3fe5cea1711c0933              # double 0.68147346584036084
	.quad	0x3fe8130000ec9371              # double 0.75231933765881653
	.quad	0x3feb6586dc43c22b              # double 0.8561434080166398
	.quad	0x3fe5169c80b1dbf0              # double 0.65901017318435429
	.quad	0x3fa896984d5de9d0              # double 0.048023948139377048
	.quad	0x3fc8758bbc901978              # double 0.19108721453831001
	.quad	0x3feb4dd4073a4fed              # double 0.85325051700283228
	.quad	0x3fe96437586ebe46              # double 0.79348342201223754
	.quad	0x3f9d1b8480c836e0              # double 0.028425283775553534
	.quad	0x3fda0f525a57beec              # double 0.40718516180548536
	.quad	0x3fd9c6e5881165aa              # double 0.40276468551527478
	.quad	0x3fbe542194c09508              # double 0.1184712398686153
	.quad	0x3fcae23cbe9f0838              # double 0.21002921397854535
	.quad	0x3fbb9ea815cb7d38              # double 0.10788965732671307
	.quad	0x3fe7b56971f992c6              # double 0.74089500675889819
	.quad	0x3feceeadc0c3652a              # double 0.90413558625292478
	.quad	0x3fe189a5406b0693              # double 0.54805243093160738
	.quad	0x3fedc7444628e589              # double 0.93057454779698034
	.quad	0x3f9cedea7b719d20              # double 0.028251327309047558
	.quad	0x3fdb5f8969583880              # double 0.4277061012989023
	.quad	0x3fe1a7286c129dfa              # double 0.55165501697496144
	.quad	0x3fe578229a027b13              # double 0.67091493682878178
	.quad	0x3fe6923b5446a049              # double 0.70535055599339913
	.quad	0x3fe3b7e259b12f06              # double 0.61619679944985317
	.quad	0x3fc5161a3daeb160              # double 0.16473701488338133
	.quad	0x3fdd668f5efdda7e              # double 0.45938476826214714
	.quad	0x3fe6639b49a805bb              # double 0.69965900789264113
	.quad	0x3fc32acfe845856c              # double 0.14974402276406396
	.quad	0x3fe5ce3f87729c2c              # double 0.68142677740695978
	.quad	0x3fde5e60b35d70bc              # double 0.47451035991776869
	.quad	0x3fea01e0c55bea41              # double 0.81272924944580194
	.quad	0x3fe83ba1d5f32426              # double 0.75727931773247259
	.quad	0x3fe598a1e8429bb4              # double 0.67488189090078388
	.quad	0x3fbd21cc55ac8b50              # double 0.11379696933412942
	.quad	0x3febee9a02ba26ba              # double 0.87287617237708237
	.quad	0x3fe7c0635ffaf596              # double 0.74223488565592066
	.quad	0x3fde98d49d907ec0              # double 0.47807803523208392
	.quad	0x3fd217713634b41e              # double 0.28268080037634202
	.quad	0x3fc19c09c0fb1f08              # double 0.13757440493485995
	.quad	0x3fe0254141f56cbc              # double 0.50454771883541794
	.quad	0x3fed865ef1b9c467              # double 0.92265269481698631
	.quad	0x3fd62edb1ba76702              # double 0.34660985661103905
	.quad	0x3fdfdf1f45efaf10              # double 0.49799329595292452
	.quad	0x3fe38e747206ecc9              # double 0.61113950987728416
	.quad	0x3fb2708a0bd37538              # double 0.072029712569435911
	.quad	0x3fec177b98a820d3              # double 0.87786655250331547
	.quad	0x3f528566e589d800              # double 0.0011304383134791429
	.quad	0x3fe6c169c097af73              # double 0.71110999694563615
	.quad	0x3fc3b7351a2b363c              # double 0.15402854707501656
	.quad	0x3fe7b33ec849bdbe              # double 0.74063052290687614
	.quad	0x3f92c78593a30be0              # double 0.018339240203896767
	.quad	0x3fcf739de2e770f4              # double 0.24571584300327454
	.quad	0x3fde7fd713c1c2f8              # double 0.47655274323828634
	.quad	0x3fd5f5fb628e91ee              # double 0.34313854813288358
	.quad	0x3fc514d2bfdd3d80              # double 0.16469797485704518
	.quad	0x3fb8aa7be2ebeef0              # double 0.09635137834623797
	.quad	0x3fc1f519118fa864              # double 0.14029229505041763
	.quad	0x3fefa569c5a7c4f6              # double 0.98894203762588861
	.quad	0x3fdcd7089ee349f4              # double 0.45062461391822173
	.quad	0x3fe316817f513442              # double 0.59649729601517998
	.quad	0x3fe31f594acbbc8a              # double 0.59757675751269912
	.quad	0x3fe89294d6da67a0              # double 0.76789323771957995
	.quad	0x3fea8bbddd948ed2              # double 0.82955830838587929
	.quad	0x3fe1523e59e94cea              # double 0.54128949700171103
	.quad	0x3fec83471aefb225              # double 0.89102511654852334
	.quad	0x3fde261208fb53f4              # double 0.47107363583683015
	.quad	0x3fdb5061f2e422da              # double 0.42678116531219035
	.quad	0x3fecf83eb6ec7efe              # double 0.90530334212596109
	.quad	0x3fea162bbca5b490              # double 0.81520640225575569
	.quad	0x3fd71243cce5976a              # double 0.3604897976823539
	.quad	0x3fd7932c2c9bff7e              # double 0.36835769993194123
	.quad	0x3fa71458d094c8b0              # double 0.045077109777041158
	.quad	0x3fe2c8bef74d566f              # double 0.58700512219611578
	.quad	0x3feec7927238ed91              # double 0.96186182316835033
	.quad	0x3fd75d99739848f0              # double 0.3650878552299579
	.quad	0x3fe8d26a28cde6df              # double 0.77568538636770856
	.quad	0x3fd575d5ddf703e0              # double 0.33531710315952346
	.quad	0x3fd983200768eacc              # double 0.39862824176422573
	.quad	0x3fdb4a50cb56dffc              # double 0.42641086442335996
	.quad	0x3fe2b72bda7d73cb              # double 0.584859778154731
	.quad	0x3fe56b94b4aed026              # double 0.66938243188497348
	.quad	0x3fd443568fe59d1c              # double 0.31660999348101071
	.quad	0x3fcddcea79e04200              # double 0.23330431891419323
	.quad	0x3fdd2f42f98b7608              # double 0.45600962037664816
	.quad	0x3fe9ffaf10de51ba              # double 0.81246140761009333
	.quad	0x3fd83f865f6d707c              # double 0.37887725180713239
	.quad	0x3fd014f3e6b4b522              # double 0.25127885370132408
	.quad	0x3fc5776e73a3d29c              # double 0.16770725866776537
	.quad	0x3fc502cd17c01ec4              # double 0.16414798412028209
	.quad	0x3fccf2ebc4be2718              # double 0.22616335970479251
	.quad	0x3f6b1816a3323600              # double 0.0033073846948983299
	.quad	0x3fe5e63fd85a4a12              # double 0.68435661560426042
	.quad	0x3fe42fda937f32f4              # double 0.63084152992232001
	.quad	0x3fcae6fc2faa3cfc              # double 0.21017410590545882
	.quad	0x3fc2a6dd4b215390              # double 0.14571729820695767
	.quad	0x3fe7f65f1f99e86e              # double 0.74882465526685649
	.quad	0x3fe1fae35ab00102              # double 0.56187598907857272
	.quad	0x3fb289a89e8ff738              # double 0.072413004600062503
	.quad	0x3fd886af8ccc247e              # double 0.38322056531666948
	.quad	0x3fe4a1033db5f875              # double 0.64465486576933861
	.quad	0x3fe2948e224eabf0              # double 0.58063418102881137
	.quad	0x3fe499a104d54bbc              # double 0.64375353759748277
	.quad	0x3fdf43c0aa900b32              # double 0.48851029068480323
	.quad	0x3fc6d8dea4c483ac              # double 0.1784933380631889
	.quad	0x3fd81e083d03f21a              # double 0.37683301886116427
	.quad	0x3fbad1cae33481f8              # double 0.1047636799526187
	.quad	0x3fd44426b3e4b938              # double 0.316659618069838
	.quad	0x3feaf9d024ff53f1              # double 0.84299475885438657
	.quad	0x3fde012b60f95196              # double 0.46882137746913466
	.quad	0x3fd1be43a078e450              # double 0.27723780318371372
	.quad	0x3fda63c3face9b10              # double 0.41233920567394566
	.quad	0x3fee2de8587288d9              # double 0.94310395502932487
	.quad	0x3fd92133a3cf5e3c              # double 0.39265147206376461
	.quad	0x3fd26d3111d123dc              # double 0.28791453113495691
	.quad	0x3fe749a9285f0286              # double 0.72774179348932999
	.quad	0x3fb69abbb603d478              # double 0.088298541962858468
	.quad	0x3fdaf47359a2b846              # double 0.42117007974127707
	.quad	0x3fd2a4d37e3ecc5a              # double 0.29131018952029353
	.quad	0x3f81a337c551f2c0              # double 0.0086120946018523047
	.quad	0x3fe0932a94bd2f03              # double 0.51796464014611876
	.quad	0x3febffabfc0fcdd0              # double 0.87495993834311925
	.quad	0x3fe26390f7241d08              # double 0.5746540858243927
	.quad	0x3fda8616b5814b6a              # double 0.4144341251859972
	.quad	0x3fd47765e149f2c2              # double 0.3197874736868408
	.quad	0x3fef8cb28e440b16              # double 0.98592498575485155
	.quad	0x3fd5387c7c80de14              # double 0.33157264860662505
	.quad	0x3faee58dab07dd40              # double 0.060345103385709198
	.quad	0x3fe38bf619d37c97              # double 0.61083512348331481
	.quad	0x3fd87aec18ddb220              # double 0.38250257900543438
	.quad	0x3fdc121588d86f1a              # double 0.43860376704991355
	.quad	0x3fc0893a8452e40c              # double 0.12918788395998637
	.quad	0x3fc97babf69e24e0              # double 0.1990866617382272
	.quad	0x3fda11a613a5a03e              # double 0.40732719343805346
	.quad	0x3fd4750ec51299f6              # double 0.31964463467957616
	.quad	0x3feffaa43caba771              # double 0.99934589242660198
	.quad	0x3feb26125c9ded91              # double 0.84839742745627877
	.quad	0x3fa6ab637f882c10              # double 0.044276341741429914
	.quad	0x3fdc58130ec81828              # double 0.44287563746945802
	.quad	0x3fc9de95f4bacae8              # double 0.20210527848902093
	.quad	0x3fc4f820b7b11b10              # double 0.16382225961043462
	.quad	0x3fd959e2d6bb7926              # double 0.39611121149018158
	.quad	0x3fea2562eade9cf5              # double 0.8170637690826924
	.quad	0x3fc92abd14ccd23c              # double 0.19661677852276849
	.quad	0x3fb44b550a5819b0              # double 0.079274477982926638
	.quad	0x3fec336511d6e11e              # double 0.8812737797188992
	.quad	0x3fed64ce6314887b              # double 0.91855544425585778
	.quad	0x3fd5c15c27aec58a              # double 0.33992675662292327
	.quad	0x3fd47acd58840c34              # double 0.31999524730798901
	.quad	0x3fbb1555008be700              # double 0.10579425109235885
	.quad	0x3fdcdf2980d94276              # double 0.45112073500516858
	.quad	0x3fa4ba249439fc90              # double 0.040482657522255328
	.quad	0x3fe7e02071a9a545              # double 0.74610922050229844
	.quad	0x3fe0dcf92849c65e              # double 0.52697427624498139
	.quad	0x3fc85c0132c144d4              # double 0.19030776003140792
	.quad	0x3fcbe03135f964b8              # double 0.21777930388888023
	.quad	0x3fe27210f094303a              # double 0.57642409313257947
	.quad	0x3feb67cb68456fc3              # double 0.85642023435092829
	.quad	0x3fcfff6708623988              # double 0.24998176488265877
	.quad	0x3fb8174d60694d40              # double 0.094105564153598387
	.quad	0x3fc4d2a1b53535cc              # double 0.16267796848334937
	.quad	0x3f831d1fbdc07a40              # double 0.0093328933508561862
	.quad	0x3fe4202d95bed968              # double 0.62892798659485738
	.quad	0x3fe4d3ab1bf7bc61              # double 0.65083842718548734
	.quad	0x3fe459f855274caa              # double 0.63598267203851333
	.quad	0x3fd73196a1d1410e              # double 0.3624016361473118
	.quad	0x3fc79b65b6bb4890              # double 0.18442984983864052
	.quad	0x3fe2f783eb7a1442              # double 0.59271427146507727
	.quad	0x3fe2282b0cdb3875              # double 0.56740334044458385
	.quad	0x3fedc87e759a4abf              # double 0.93072436303403794
	.quad	0x3fa18d7109360e60              # double 0.034282238363655848
	.quad	0x3fed0538eef1d386              # double 0.90688749951242253
	.quad	0x3fe49edd19a18cf3              # double 0.64439253812852682
	.quad	0x3fee557f03096101              # double 0.94793654053776788
	.quad	0x3fd4b374ec6d4204              # double 0.32345316971353122
	.quad	0x3feab5ea20659f67              # double 0.83470636680156651
	.quad	0x3fd70363ed86f262              # double 0.35958193012246487
	.quad	0x3fdf6c2a17459736              # double 0.49097683212891086
	.quad	0x3fdd6a085b8ae75e              # double 0.4595967191668161
	.quad	0x3fa86a5f66de6010              # double 0.047686559016426711
	.quad	0x3fdadd21af9c4b4c              # double 0.41974680089440564
	.quad	0x3fd74d2b933156ee              # double 0.36408509611406614
	.quad	0x3fe3a8188f588c61              # double 0.61426952359432729
	.quad	0x3fefcb0d02289acb              # double 0.99353647634128472
	.quad	0x3fee641942e25bd4              # double 0.94971907676051126
	.quad	0x3fe31069cb06ea3a              # double 0.59575357106888949
	.quad	0x3fe0fe7ea8379210              # double 0.53106625418564768
	.quad	0x3feb14e229e54f37              # double 0.84629924948465074
	.quad	0x3fd4e8122f88c542              # double 0.32666449205415315
	.quad	0x3febec27f3b8e48c              # double 0.87257764436721307
	.quad	0x3fe34789badddb8e              # double 0.60248266694439834
	.quad	0x3fac0050334b3990              # double 0.054689890157180732
	.quad	0x3fb519e26da5ff88              # double 0.082426215905796352
	.quad	0x3fcdc485a4530ce0              # double 0.23255987666752898
	.quad	0x3fb4d20644a32f60              # double 0.081329719311893367
	.quad	0x3fe616b3777b37d4              # double 0.69027112327762064
	.quad	0x3feb9b8ea541c0fd              # double 0.86273891712883677
	.quad	0x3fc75323396a9e40              # double 0.18222465804613996
	.quad	0x3fca39e897d66478              # double 0.20489222921313277
	.quad	0x3fa6f9094a974590              # double 0.044868746142706972
	.quad	0x3fc5cfc4e6a65530              # double 0.17040311109728057
	.quad	0x3fddd059991cf71e              # double 0.46584167435126911
	.quad	0x3fdcb690c4f33f52              # double 0.44864291413704394
	.quad	0x3feaefe251f92e27              # double 0.84178272257253617
	.quad	0x3fde888d0d27788a              # double 0.47708441052044093
	.quad	0x3fcb17040a78223c              # double 0.21163988600916805
	.quad	0x3fea0f786c9af22d              # double 0.81438847743954101
	.quad	0x3fee1847bb9b2ea2              # double 0.94046389238197414
	.quad	0x3fdcc660964a6a8a              # double 0.44960798909020439
	.quad	0x3f6d95ed6f66a500              # double 0.0036115300565212616
	.quad	0x3fdb38f39a2d14a4              # double 0.42535104805240054
	.quad	0x3fe6fb1048d9d104              # double 0.71814741352730538
	.quad	0x3fe4d68d5f6f4141              # double 0.65119045867508174
	.quad	0x3fdf9163e5e80a74              # double 0.49324891521261027
	.quad	0x3fcd490282e82cf0              # double 0.22879058257999629
	.quad	0x3fed4ab8e3d7a100              # double 0.91537136555146503
	.quad	0x3fd8c4b9f09ffcac              # double 0.38700722216158101
	.quad	0x3fdf1749650951f0              # double 0.48579630724751066
	.quad	0x3faa2dadd2f617a0              # double 0.05112975311480672
	.quad	0x3fd2becb3cdd51e4              # double 0.29289513534356915
	.quad	0x3fe0ed72f91cfbb6              # double 0.52898548750805818
	.quad	0x3fc182fb9d660394              # double 0.1368097799823117
	.quad	0x3fe13a3c2f056f02              # double 0.53835877593834902
	.quad	0x3fd60339806c8dba              # double 0.34394681493196411
	.quad	0x3fe2b67a76512c3d              # double 0.58477519139103828
	.quad	0x3fe53ee56cc603d8              # double 0.66392775769065349
	.quad	0x3fc48f84f231cdd0              # double 0.1606298620787201
	.quad	0x3fe7e83a30aeb501              # double 0.74709805973330401
	.quad	0x3fb294db2b1b23c8              # double 0.072583864234856965
	.quad	0x3fdada606915b194              # double 0.41957865011388518
	.quad	0x3fe800ae59bd22ac              # double 0.75008313681708704
	.quad	0x3fd4055a58629e8c              # double 0.31282671576853072
	.quad	0x3fd607f1e87e8170              # double 0.34423492149837553
	.quad	0x3fc7dad422ac3bf0              # double 0.18636562054641059
	.quad	0x3fe63d8664282c9a              # double 0.6950103717985201
	.quad	0x3fec4408a538c232              # double 0.88330490369668824
	.quad	0x3fe03428f4b7431d              # double 0.50636718555515225
	.quad	0x3fe995e5e29a60bf              # double 0.7995480943527794
	.quad	0x3fd0539c663ee1d8              # double 0.25510320649075657
	.quad	0x3fe19bf77b3e6e45              # double 0.55028890677517295
	.quad	0x3fd9a00521cc999a              # double 0.40039184857087096
	.quad	0x3fa4799cb87036e0              # double 0.039990327372022128
	.quad	0x3fbdd3ab8b3b1ff0              # double 0.11651107930367721
	.quad	0x3fca4c20d86df834              # double 0.20544825141763712
	.quad	0x3fe015c43280b876              # double 0.50265703071433054
	.quad	0x3fe96079d057d490              # double 0.79302683536538332
	.quad	0x3fe4d95e013cbbf3              # double 0.65153408280991554
	.quad	0x3fdf1cc0cd020800              # double 0.48612995167070494
	.quad	0x3fd8ca5b399f5aa4              # double 0.38735085131831171
	.quad	0x3fbcfe395e833a08              # double 0.11325415189205768
	.quad	0x3fd5fc5f101bbe82              # double 0.34352852414210855
	.quad	0x3fe8034a52b5cfb8              # double 0.75040165094696132
	.quad	0x3fe9c594457158f9              # double 0.80536855280914132
	.quad	0x3fd3c88bfa0f698c              # double 0.30911540431920836
	.quad	0x3fd5d5579251977c              # double 0.34114636696755674
	.quad	0x3fdfa32501d4da62              # double 0.49433255366185425
	.quad	0x3fcf3aa54b031ac8              # double 0.24397722399426969
	.quad	0x3f90d9b4a227c360              # double 0.016455480954337687
	.quad	0x3fe0c9b5cde31698              # double 0.52462282383267489
	.quad	0x3fc87899b228fc8c              # double 0.19118043135856444
	.quad	0x3f8c60ed221b9300              # double 0.013856747249016532
	.quad	0x3fe13f194eb43669              # double 0.53895249721399552
	.quad	0x3fd066130f374a68              # double 0.25623013006148776
	.quad	0x3fd87b431d953b5e              # double 0.38252332581480697
	.quad	0x3fe807ae28afd01f              # double 0.75093753763804105
	.quad	0x3fa72834e953b470              # double 0.045228627664848697
	.quad	0x3fe2ee20e86b3f0b              # double 0.59156842607805638
	.quad	0x3fe37a8377a9fa6c              # double 0.60870526668425162
	.quad	0x3fee3acec934e8d3              # double 0.9446786813562319
	.quad	0x3fd4eb556a9fac6e              # double 0.32686362659905555
	.quad	0x3feaf619e56d3eb1              # double 0.84254164514455543
	.quad	0x3fe06034dc661284              # double 0.51174395605683332
	.quad	0x3fce61d321516254              # double 0.2373603737530795
	.quad	0x3fe57c54781ac931              # double 0.67142699678360007
	.quad	0x3fe85762eb71e4cf              # double 0.76066728577930032
	.quad	0x3fe7e0f6f315003d              # double 0.74621150471649111
	.quad	0x3feee4d96de5536c              # double 0.96543570961021663
	.quad	0x3fea7ba898fb12e0              # double 0.82759504202894262
	.quad	0x3fd2e436a1ccfbce              # double 0.29517904091693203
	.quad	0x3fe0fba6aee01774              # double 0.53071912913649877
	.quad	0x3fdd6934ef3937e2              # double 0.45954631196661755
	.quad	0x3fce622c2c2c65b4              # double 0.23737098843484505
	.quad	0x3fbaad0eb05998f0              # double 0.10420314603252101
	.quad	0x3fd6afe6dec461bc              # double 0.35448619608498766
	.quad	0x3fe7391c75040f45              # double 0.72572157721194996
	.quad	0x3fea8d23b007db95              # double 0.82972893124575597
	.quad	0x3fd88e3c5499b456              # double 0.38368137609251585
	.quad	0x3fb1f6456dad7bd8              # double 0.070164050366187225
	.quad	0x3fe1b27754c06dd4              # double 0.55303541710912407
	.quad	0x3fd4aa808441eaea              # double 0.3229066173150118
	.quad	0x3fd4dda5ca823a5a              # double 0.3260282971977283
	.quad	0x3fee77f306a79a46              # double 0.95214225101228389
	.quad	0x3fd013b8caf397fc              # double 0.25120372600065344
	.quad	0x3fefb4eaa7a2611b              # double 0.99083454838822448
	.quad	0x3fcb562eb232488c              # double 0.21356757832524342
	.quad	0x3fc8fe49367d8228              # double 0.19526019249589521
	.quad	0x3fdce0e855a885e0              # double 0.45122726788585332
	.quad	0x3fe8755a4896887e              # double 0.76432527711246201
	.quad	0x3fca40d1a8ebdf70              # double 0.20510311840166251
	.quad	0x3fec15a6c9481f0a              # double 0.87764300644718785
	.quad	0x3feb76d9bb96a813              # double 0.85825811994914358
	.quad	0x3fefaf112b11ef17              # double 0.99012049114341749
	.quad	0x3fcc0e554a0c8698              # double 0.2191874133650813
	.quad	0x3fefa3622bfcc448              # double 0.98869427291186529
	.quad	0x3fedff792cca1b94              # double 0.93743571041055639
	.quad	0x3fe21316864e3804              # double 0.56483007651854722
	.quad	0x3fe1314d71f958db              # double 0.53726837406682237
	.quad	0x3fd7646657d15558              # double 0.36550291610668273
	.quad	0x3fe6132d44a56ac0              # double 0.68984092147305631
	.quad	0x3fc9788025615f04              # double 0.19898988557064723
	.quad	0x3febc67d453d06ef              # double 0.86797965548632117
	.quad	0x3fe711af617caf98              # double 0.72090882339897444
	.quad	0x3fe961522315781d              # double 0.79312998630826181
	.quad	0x3fe743cf86136acc              # double 0.72702766596497659
	.quad	0x3fdc7b8f7f028dfc              # double 0.44504153636282218
	.quad	0x3fba6347998c1a68              # double 0.1030773877974781
	.quad	0x3fec1f9cc6c70392              # double 0.87885893653593627
	.quad	0x3fdec6d506d6ae0c              # double 0.4808857504637849
	.quad	0x3fe6255360762182              # double 0.69205635872008053
	.quad	0x3fd242336a40df8c              # double 0.28529057861623452
	.quad	0x3fd0f1812d1f2b2a              # double 0.2647402706758607
	.quad	0x3fe61c424be15942              # double 0.69094958134045492
	.quad	0x3fcb851eb48be070              # double 0.21499999824277749
	.quad	0x3fd401566e309130              # double 0.31258164177622216
	.quad	0x3fea2d4b3776f5de              # double 0.81802903016039941
	.quad	0x3fd9f297521b1e66              # double 0.40543158548505287
	.quad	0x3fdf37947aef16ee              # double 0.48776733403461392
	.quad	0x3fe4d2fc6fd517a2              # double 0.65075513689292941
	.quad	0x3fc267a7f5f702fc              # double 0.14378833303455696
	.quad	0x3fedf635de8bf2cb              # double 0.93630498376986659
	.quad	0x3fba922e5698a5e8              # double 0.10379304517905263
	.quad	0x3fdd7afc39ca5ee2              # double 0.46063142436604043
	.quad	0x3fd078785c83f51a              # double 0.25735291514122738
	.quad	0x3feec37f11dc2b37              # double 0.96136430252349824
	.quad	0x3fe785c99d4d5146              # double 0.73508148882914592
	.quad	0x3fd6ec074409660e              # double 0.35815602916918088
	.quad	0x3fecb4a5a28bac39              # double 0.89705163714587066
	.quad	0x3fe5a2255571f007              # double 0.6760431927536964
	.quad	0x3fc3acd9305a28ac              # double 0.15371241436907235
	.quad	0x3fb4dc51c4e93eb0              # double 0.081486807416917939
	.quad	0x3fb5119a63260f48              # double 0.08229985161420672
	.quad	0x3fd25a38a55911da              # double 0.2867566694951883
	.quad	0x3fe873084c2fac36              # double 0.7640420425426615
	.quad	0x3fb998f72cf1ba10              # double 0.099990318749157092
	.quad	0x3fe2c386c0509b4e              # double 0.5863679653310585
	.quad	0x3fe06403d7758a5a              # double 0.51220886308540092
	.quad	0x3fb48c949ee15310              # double 0.08027008894834986
	.quad	0x3fe4ec1c6931a72b              # double 0.65382214112944348
	.quad	0x3fe4ea7092e8b060              # double 0.65361813252594558
	.quad	0x3fbcaa6710218db8              # double 0.11197513717484397
	.quad	0x3fa4ff064c9b5a70              # double 0.041008183337614024
	.quad	0x3fc5df2ccc30174c              # double 0.17087326021299487
	.quad	0x3fc772d6887860fc              # double 0.18319207824311678
	.quad	0x3fbf75e0849a0f88              # double 0.12289241063450451
	.quad	0x3fe363393f869bc7              # double 0.60586225898156776
	.quad	0x3fed3872d1a2d280              # double 0.91314068741355925
	.quad	0x3fe379a9d5f38850              # double 0.60860149180758505
	.quad	0x3fd4f9ab77913e9c              # double 0.32773863483905941
	.quad	0x3fe15f581840659e              # double 0.54288868652945488
	.quad	0x3fe77e74a8a3c35c              # double 0.73418648660127017
	.quad	0x3fe50bc85893aaa3              # double 0.65768830585632931
	.quad	0x3fe99bd849d91475              # double 0.80027403281623199
	.quad	0x3fc760293b45106c              # double 0.18262210268051449
	.quad	0x3fc9bc730db56f98              # double 0.20106352013942508
	.quad	0x3fd6fc5c440571d2              # double 0.3591528572340198
	.quad	0x3feb56ac7a67de8f              # double 0.85433029086466827
	.quad	0x3fc06b422d2af564              # double 0.12827326970538444
	.quad	0x3fec2cec7ce2b83d              # double 0.88048385993693723
	.quad	0x3fd157596f6eb5c6              # double 0.27095638162685665
	.quad	0x3fea7a1e4dc4d6f1              # double 0.82740702809561928
	.quad	0x3fd60fe27dbddabe              # double 0.34471952704863529
	.quad	0x3fe9eb0d321bb8e4              # double 0.80994281565451986
	.quad	0x3f9452d89cbb2fc0              # double 0.019847282949555511
	.quad	0x3fb2f9bacde0bf90              # double 0.074123072875180052
	.quad	0x3fc3c4e631ac95e0              # double 0.15444638658043086
	.quad	0x3fdad0c02cd52472              # double 0.41899113062078819
	.quad	0x3feff36117a501fb              # double 0.99845938318327343
	.quad	0x3fe048aa03428abf              # double 0.50887013088898658
	.quad	0x3fd125df0feb976a              # double 0.26793648295130501
	.quad	0x3fed39a5a459b092              # double 0.91328699206998665
	.quad	0x3fe57caf63b080da              # double 0.67147035093878604
	.quad	0x3fed79e32bd9d81e              # double 0.92112883152617875
	.quad	0x3fe488f5fae1e294              # double 0.64171885490857727
	.quad	0x3fef562171361f79              # double 0.97926399337391878
	.quad	0x3fe2cf38683d1d00              # double 0.58779545172811254
	.quad	0x3fee19ffa9d4b4cf              # double 0.94067366762251392
	.quad	0x3fcdff6c7dbf8a78              # double 0.23435741558121825
	.quad	0x3fd9d4f029207c1a              # double 0.40362171188638885
	.quad	0x3fccd3cbd1260198              # double 0.22521350586249578
	.quad	0x3fb79a8a062f5ad0              # double 0.092201830396656747
	.quad	0x3fdcda202c3449aa              # double 0.45081333462544626
	.quad	0x3fe4a921915ab3e2              # double 0.6456458891822161
	.quad	0x3fd4965a516aa02a              # double 0.32167680693464951
	.quad	0x3fdf945245c5547c              # double 0.4934278184276264
	.quad	0x3fe15c20ad36e5e1              # double 0.54249605017610858
	.quad	0x3fcdd2979c451520              # double 0.23298926477779336
	.quad	0x3fa48c4c24d5d420              # double 0.040132884499066046
	.quad	0x3fee02eab63b91bc              # double 0.93785605995486021
	.quad	0x3feb376119067e4b              # double 0.85051016700521964
	.quad	0x3fdbfdc7ba2902b2              # double 0.43736451320368552
	.quad	0x3fb5a795f5a6cb58              # double 0.084588406060715271
	.quad	0x3feb3a94e847c360              # double 0.85090108268023456
	.quad	0x3fd2a937b2161212              # double 0.2915782202838112
	.quad	0x3fe6c9cd8439536b              # double 0.7121341307161918
	.quad	0x3fe0acb0e7205033              # double 0.52108044759598326
	.quad	0x3fe1e0f904c725b0              # double 0.55871249135195988
	.quad	0x3fe54312673c67c1              # double 0.66443748629830435
	.quad	0x3fe7260c077f3532              # double 0.723394407884973
	.quad	0x3fdc81d47244cae4              # double 0.44542418631605885
	.quad	0x3febdfeb8035ced2              # double 0.87108397522976078
	.quad	0x3fd16f9cd7431430              # double 0.27243729612047485
	.quad	0x3fd40d8eadeb2484              # double 0.31332747444373177
	.quad	0x3fda36f918034ec2              # double 0.40960528702747123
	.quad	0x3fc6cb3acca42c94              # double 0.17807707779170256
	.quad	0x3fe79c4b4ae415b8              # double 0.7378288710321419
	.quad	0x3fe2d111398ab5ba              # double 0.58802090872421009
	.quad	0x3fc3c782b7386c7c              # double 0.15452608057316641
	.quad	0x3fe66bf3a5bea079              # double 0.70067770359038584
	.quad	0x3faed5053a10f330              # double 0.0602189668065648
	.quad	0x3fd7a65ca0d3fea8              # double 0.36952892022962169
	.quad	0x3fc2b9e62a2504e8              # double 0.14629818971483322
	.quad	0x3fd9ad4ba2e16338              # double 0.40120211511889492
	.quad	0x3fed8009242950d1              # double 0.9218793588902604
	.quad	0x3fd1fca29237ac14              # double 0.28104461936044456
	.quad	0x3fc1caf2b5119964              # double 0.13900598374602702
	.quad	0x3fe3c08d48f6b32c              # double 0.61725486994473533
	.quad	0x3fec6a8e8eab593d              # double 0.88800742974380109
	.quad	0x3fbc47f2de2bacc0              # double 0.11047285007559804
	.quad	0x3fcfa1a14e30c070              # double 0.24712005918400193
	.quad	0x3fe0873963e9f8fb              # double 0.51650685800976193
	.quad	0x3fc2567272f1d6e0              # double 0.14326315510304877
	.quad	0x3fe946a99b714dff              # double 0.78987579688913445
	.quad	0x3fea2a80f2a29105              # double 0.81768844022420295
	.quad	0x3fe4f897864b8b25              # double 0.65534569005499022
	.quad	0x3fe587266598d39d              # double 0.67274780123863176
	.quad	0x3fc04eb1d0f767a8              # double 0.12740156844557515
	.quad	0x3fcb1f625595dd6c              # double 0.21189526728606312
	.quad	0x3fea399ed846717f              # double 0.81953375092739111
	.quad	0x3fd9ebd5c60e9bb0              # double 0.40501922933111256
	.quad	0x3f9fa95a4fb469e0              # double 0.030919467081824581
	.quad	0x3fd84995f07460ce              # double 0.37949131471533526
	.quad	0x3fd22a42f6e782ee              # double 0.28382944213630779
	.quad	0x3fcef544fb43806c              # double 0.24186002987608235
	.quad	0x3fec335964adff6e              # double 0.88126821197509542
	.quad	0x3fd3fc419f35f28e              # double 0.31227150485919075
	.quad	0x3feb0dda9d6132b4              # double 0.84544115770548566
	.quad	0x3fd9c1755d21acbc              # double 0.40243276686551233
	.quad	0x3fef2766152ad8ad              # double 0.97355941900493336
	.quad	0x3fe78bf31db8aec2              # double 0.7358337002273958
	.quad	0x3fdf6b4c056ebefe              # double 0.49092388659026642
	.quad	0x3fdb2bbe38de76ac              # double 0.4245448642121612
	.quad	0x3fef72a86842df78              # double 0.98274631846923821
	.quad	0x3fe9ce22cdc65a81              # double 0.80641308012384638
	.quad	0x3fcf33098564d5a8              # double 0.24374503148434923
	.quad	0x3fea69593b39bd54              # double 0.82535993163575449
	.quad	0x3fdc2fd5159f911c              # double 0.44041945563937346
	.quad	0x3fe07fa0f238fec9              # double 0.51557967480763367
	.quad	0x3fdb6d4cfd9f3cd8              # double 0.42854618804717637
	.quad	0x3fe12010c398f045              # double 0.53516424372310978
	.quad	0x3fd38b83181f4304              # double 0.30539014201808379
	.quad	0x3fe541c84b0a7c18              # double 0.66428007751881335
	.quad	0x3fd293f9b8ed1f1c              # double 0.29028170642094309
	.quad	0x3fd68f341141f91a              # double 0.35249044118235562
	.quad	0x3fe55a740e4aa01b              # double 0.66729166785535499
	.quad	0x3fefe5f5740b553f              # double 0.99682114281555544
	.quad	0x3fd0a1c2500b4300              # double 0.25987298790737157
	.quad	0x3fe6c378b2159100              # double 0.7113612631042372
	.quad	0x3fed02742629f8c4              # double 0.90654952482125183
	.quad	0x3fa61121a58f4b80              # double 0.043099452457361132
	.quad	0x3fe06a57261cd295              # double 0.51298100894799126
	.quad	0x3fe5d94caf85bd72              # double 0.68277582437251128
	.quad	0x3fe42f1c5cbcacb1              # double 0.63075082886407163
	.quad	0x3fd13b0a89bdaed0              # double 0.26922858668579597
	.quad	0x3fe5f248813890c7              # double 0.68582558859318332
	.quad	0x3fd193cf1f566976              # double 0.2746465497999887
	.quad	0x3fddcbb8be769356              # double 0.46555918311996913
	.quad	0x3fd5d6acaf7705f2              # double 0.34122769484755999
	.quad	0x3fe393ce62d1f75f              # double 0.61179274845902032
	.quad	0x3fee76f9d2d77ae1              # double 0.95202342205069723
	.quad	0x3fd81eaee53b40bc              # double 0.37687275300869394
	.quad	0x3fef365289aced63              # double 0.97538115396256974
	.quad	0x3fc8e25b9cfb0160              # double 0.19440789380133605
	.quad	0x3fe1898d89539955              # double 0.54804112264245453
	.quad	0x3fdf15346d96457c              # double 0.48566923810820817
	.quad	0x3fccde911f7d48c0              # double 0.22554220235412537
	.quad	0x3fd21b3dbd948f4c              # double 0.28291266931249903
	.quad	0x3fec22bea145d3c2              # double 0.87924129007898721
	.quad	0x3fc4d15f56617c84              # double 0.16263953893482974
	.quad	0x3fdeab6fd833a7ee              # double 0.47921367753462973
	.quad	0x3fe4c77b7128647c              # double 0.64935085393075509
	.quad	0x3fc4552ce26a737c              # double 0.15884934478244961
	.quad	0x3fb04b690af83b48              # double 0.063650670221460648
	.quad	0x3fe7bd416b5b8fa8              # double 0.74185248344700927
	.quad	0x3fe7702fad358179              # double 0.73244460897335195
	.quad	0x3fc843f1ba08b40c              # double 0.1895734938019874
	.quad	0x3f8834da9b87cb80              # double 0.011819560882008195
	.quad	0x3fd42466bce7cb7a              # double 0.31472176025197707
	.quad	0x3fcc645624304304              # double 0.22181202666299538
	.quad	0x3fe638ab9d164fba              # double 0.6944177692516782
	.quad	0x3fe8d14d5924b368              # double 0.77554957781613343
	.quad	0x3fe46abe574f95f6              # double 0.63803021481424937
	.quad	0x3f42118c0ffe8800              # double 5.5140818584598073E-4
	.quad	0x3f81031917670a40              # double 0.0083066902415157573
	.quad	0x3fd9a77a15eab7c4              # double 0.40084697857207297
	.quad	0x3fe9fc53073fa760              # double 0.81205130973578931
	.quad	0x3fe96a59906d8fcd              # double 0.79423216065014801
	.quad	0x3fdb322d0ad276f0              # double 0.42493749672745107
	.quad	0x3fce0549bdc41e50              # double 0.23453637853548281
	.quad	0x3fed499c33115118              # double 0.9152356145300784
	.quad	0x3fb0d7371da0c108              # double 0.065783924802193749
	.quad	0x3fe992b05dbf5032              # double 0.79915636358282982
	.quad	0x3fe2d59f7659499a              # double 0.58857701411243402
	.quad	0x3fe89beaf45ba800              # double 0.76903293348482293
	.quad	0x3fd4b2ee90fb8f8e              # double 0.32342113645994963
	.quad	0x3fd8164ae825db9a              # double 0.37636063261691677
	.quad	0x3fe9fdfc9da43fad              # double 0.81225424565672244
	.quad	0x3fdfad0e1d09f6f6              # double 0.49493744693596342
	.quad	0x3fe4d9040136f4cd              # double 0.65149116742363733
	.quad	0x3fe04868ca7e6ec5              # double 0.50883903073869219
	.quad	0x3fe97360ebed3262              # double 0.79533430175213149
	.quad	0x3f7fa1f8674d6b00              # double 0.0077228263151833954
	.quad	0x3fe3a4f8f04c508f              # double 0.61388823445533258
	.quad	0x3fdb43acf97aa3d2              # double 0.42600559580983799
	.quad	0x3f99ee41f6581600              # double 0.025322943363809358
	.quad	0x3fd6e8ec261f1014              # double 0.35796645853793163
	.quad	0x3fcd0bd027ea27c0              # double 0.22692300747831773
	.quad	0x3fe58eccbd8b9b61              # double 0.67368161221098088
	.quad	0x3fc79333475c573c              # double 0.18417969688806035
	.quad	0x3faa87f587d2f0c0              # double 0.051818535642696784
	.quad	0x3fef5eabc10e60eb              # double 0.98030650812418451
	.quad	0x3fd75d3d903541fa              # double 0.3650659473687764
	.quad	0x3fc7f3999d02f4e8              # double 0.18712158361987652
	.quad	0x3fec1f2eb2a15335              # double 0.87880644692140797
	.quad	0x3fe7851ce4e5c6e8              # double 0.73499912935787126
	.quad	0x3fda2dd33c945354              # double 0.40904694477039993
	.quad	0x3fc6a1ae25e8e7b0              # double 0.17680909014762625
	.quad	0x3fdb0c1456d09dee              # double 0.42261227109926736
	.quad	0x3feeb282470fe851              # double 0.95929063681911419
	.quad	0x3fdb73e8dc3cb418              # double 0.42894956119090599
	.quad	0x3fda865685bcd4d4              # double 0.41444933948816964
	.quad	0x3fd66f7aa548bdf4              # double 0.35055414334325907
	.quad	0x3fe2ea57ca48e365              # double 0.59110631474241571
	.quad	0x3fea9e2c6286cbd6              # double 0.83180827372995725
	.quad	0x3fdae4f7d553db3a              # double 0.42022510369081412
	.quad	0x3fe153408c92afa9              # double 0.54141261535322827
	.quad	0x3fe36424b9deb1d6              # double 0.60597454359736491
	.quad	0x3febb4c7631cf009              # double 0.86581773145690122
	.quad	0x3fb0c9cf1642c450              # double 0.065579359946029259
	.quad	0x3fa6c2de1e2488d0              # double 0.044455472163706156
	.quad	0x3fdb7d216323848a              # double 0.42951235467450799
	.quad	0x3fe652bfa29b9b2a              # double 0.69760114440291443
	.quad	0x3fe5f2151dc2e4e2              # double 0.68580108464007261
	.quad	0x3fcb40da08ffb27c              # double 0.21291661681552287
	.quad	0x3feb9898ce521954              # double 0.862377551050296
	.quad	0x3fc57a6022c44e58              # double 0.16779710481260923
	.quad	0x3fb84e8c2612c660              # double 0.094948539061783687
	.quad	0x3feca9b71543f4b6              # double 0.89571718362244357
	.quad	0x3fe543dc45a008bc              # double 0.66453374479922145
	.quad	0x3fef38c888de71a2              # double 0.97568155986987315
	.quad	0x3fc7d06824ec5698              # double 0.18604757120981641
	.quad	0x3faf3be9a9f08900              # double 0.061003973002032197
	.quad	0x3fdf15d5608abdfc              # double 0.48570761135030671
	.quad	0x3fdf541f24b8c1dc              # double 0.48950937830070784
	.quad	0x3fed6114071dd898              # double 0.91810037031133884
	.quad	0x3fe0c4f7d9b57280              # double 0.52404396554227617
	.quad	0x3fb6313fdde4c1c0              # double 0.086688987420308727
	.quad	0x3fc43456b3677394              # double 0.15784724960294894
	.quad	0x3fe0b6ba4ea8f047              # double 0.52230563510193739
	.quad	0x3fe847f2d2529608              # double 0.75878277853615916
	.quad	0x3fe8796e0bab5619              # double 0.76482298163563478
	.quad	0x3feab73082120f0a              # double 0.83486199764635782
	.quad	0x3fefa28e908e475f              # double 0.9885933707575808
	.quad	0x3f9f8a15a0543da0              # double 0.03080018797942119
	.quad	0x3fe0f12592b51ea3              # double 0.52943686155136438
	.quad	0x3fdae1ace77d0b2e              # double 0.42002413374227643
	.quad	0x3fe0fdd85514e89c              # double 0.53098694436563987
	.quad	0x3fee2115c202a1de              # double 0.94153869526513367
	.quad	0x3feb3b0cb6ee883b              # double 0.85095821122036541
	.quad	0x3fdf365ce41d0410              # double 0.48769304539388347
	.quad	0x3fbccb53a10458f0              # double 0.11247751885489143
	.quad	0x3fec12fecf144abd              # double 0.87731876797837283
	.quad	0x3fea5df446655034              # double 0.82396901845141323
	.quad	0x3fe1d3c121f1e6f3              # double 0.55709892873639288
	.quad	0x3fc6ef423c14cf78              # double 0.17917659696251653
	.quad	0x3fe4e52a11149b49              # double 0.65297416053804469
	.quad	0x3fe0130a3d4c7385              # double 0.50232421848669218
	.quad	0x3fe2de2813eb8eb6              # double 0.58961871996549209
	.quad	0x3feed04199233ef7              # double 0.96292190465643912
	.quad	0x3f842fb411c96a00              # double 0.0098566120079128793
	.quad	0x3fef948b36bed353              # double 0.98688278858626643
	.quad	0x3fe4aa3471821c4f              # double 0.64577696008280749
	.quad	0x3fe2a0edd60d8a03              # double 0.58214465911106605
	.quad	0x3fbd13446a4b3ca8              # double 0.11357524485650805
	.quad	0x3fd39eae7787d9ba              # double 0.30656015084187127
	.quad	0x3fe73e5050633bf8              # double 0.72635665608129241
	.quad	0x3fc42ecf3e9ff460              # double 0.15767851407864253
	.quad	0x3fd0b6bd50e252ec              # double 0.26115353487811777
	.quad	0x3fd8d71d26892f46              # double 0.38812950862187667
	.quad	0x3fca7ee1d999d724              # double 0.20699713826223232
	.quad	0x3fe6dc8d58833226              # double 0.71442286765665552
	.quad	0x3fe1c6bde2a645a4              # double 0.55551046626549239
	.quad	0x3fe5b139a80801b2              # double 0.67788393801315849
	.quad	0x3fcfa3fa0b1efed4              # double 0.2471916727354172
	.quad	0x3f8f3fae5aa6a580              # double 0.015258180753181305
	.quad	0x3fdfe8a86fd2d6b2              # double 0.4985753147151214
	.quad	0x3febc5214b402f74              # double 0.86781372735411688
	.quad	0x3fcd49b0db71430c              # double 0.22881136622393006
	.quad	0x3fe191c575da6506              # double 0.54904435175117849
	.quad	0x3fed15374fb03b70              # double 0.90883985103742582
	.quad	0x3fc53880ecba757c              # double 0.16578685339929311
	.quad	0x3fe46faf400a0462              # double 0.63863337047235924
	.quad	0x3fe7b7fc9f97f172              # double 0.7412093274174778
	.quad	0x3fc89d3ce67423d4              # double 0.19229851963635147
	.quad	0x3fdee64738c68bf2              # double 0.48280506653298894
	.quad	0x3fe69ca50722c15d              # double 0.70662166017249783
	.quad	0x3fe69a7cefbc4212              # double 0.70635840247456572
	.quad	0x3fd6db3f4f6da438              # double 0.35713179356259017
	.quad	0x3fef76cad5793c40              # double 0.98325101560647709
	.quad	0x3fe8a013d46c8b9f              # double 0.76954070557654919
	.quad	0x3fb7bbf753ebdb68              # double 0.092711885441401187
	.quad	0x3fd75325fc9cdeb8              # double 0.36444997472015528
	.quad	0x3fc5c845e6393418              # double 0.17017434827212763
	.quad	0x3f3c5bb7f93fd800              # double 4.3271295112334851E-4
	.quad	0x3feb392aab6e621a              # double 0.8507283542886086
	.quad	0x3feab5c29cc7400b              # double 0.83468752499357046
	.quad	0x3fd072cda348b7c0              # double 0.2570070356913412
	.quad	0x3fef030c1ae1dd14              # double 0.96912198305554619
	.quad	0x3fef2490b74945b2              # double 0.97321353719796933
	.quad	0x3fe040846c083edd              # double 0.50787564373055327
	.quad	0x3fd432e2b61e00e8              # double 0.31560581002123778
	.quad	0x3fc82034897c1ce8              # double 0.18848282540441308
	.quad	0x3f9cb6751dba2b60              # double 0.028039770068555625
	.quad	0x3f96521380b69be0              # double 0.021797470789944984
	.quad	0x3fe4cb689fe15303              # double 0.64983016230198165
	.quad	0x3fe62f1ad0b70747              # double 0.6932500912155114
	.quad	0x3fefeff47c360cd5              # double 0.99804138431536648
	.quad	0x3fe68e22a390da8a              # double 0.70485050150348738
	.quad	0x3fee67871af5eeec              # double 0.95013766542203148
	.quad	0x3fe8e053f76d46e1              # double 0.7773837883525766
	.quad	0x3fe7099a7c82e352              # double 0.71992229765519711
	.quad	0x3fe51a405a0044c9              # double 0.65945451334314342
	.quad	0x3fceec1ebd1fde40              # double 0.24158081278413768
	.quad	0x3fd79c5aa02ae916              # double 0.36891809121483854
	.quad	0x3fc2090fa6f26920              # double 0.14090152408318435
	.quad	0x3fe11c9bd0894e4f              # double 0.53474226693874438
	.quad	0x3fef2bc50a8f77f7              # double 0.97409298002798905
	.quad	0x3fe2ee8d0f4415d0              # double 0.59161999684936895
	.quad	0x3fb2ff80726dbc00              # double 0.074211147247964959
	.quad	0x3f52f851d96bae00              # double 0.0011578368482173529
	.quad	0x3fe0e0d047b84041              # double 0.52744306571731425
	.quad	0x3fed6ab22e7567ad              # double 0.9192744166750707
	.quad	0x3fe2249dce19f4f9              # double 0.56696977857760011
	.quad	0x3feae9319f7f90fa              # double 0.84096604492199778
	.quad	0x3fb1aafa91f9e240              # double 0.06901517928953016
	.quad	0x3fe5bc7224a38ef2              # double 0.67925364643130437
	.quad	0x3fe443778248732a              # double 0.63323569723033768
	.quad	0x3fc6bc5e1aa10c94              # double 0.17762352276085791
	.quad	0x3feb13b4d1d764f8              # double 0.84615555748601334
	.quad	0x3f1443ac41b80000              # double 7.7302349772878642E-5
	.quad	0x3fe221a1b210a97b              # double 0.56660542276703951
	.quad	0x3fe7199e46e728a7              # double 0.72187723015055816
	.quad	0x3fdb1f2bd5567f74              # double 0.42377754052903716
	.quad	0x3fe8bc3968ece446              # double 0.77297659390672702
	.quad	0x3fed05fdbb5df7bc              # double 0.90698134036187338
	.quad	0x3fe20601ab1428c6              # double 0.56323321737115672
	.quad	0x3fef83743a15880a              # double 0.98479663223793179
	.quad	0x3fd6eb8688a3067e              # double 0.35812533706130256
	.quad	0x3fea2c9826622ae3              # double 0.81794364449282531
	.quad	0x3fe41670e0305e76              # double 0.62773937022116288
	.quad	0x3fee05f29a687868              # double 0.93822603376225988
	.quad	0x3fd280ca88ab620a              # double 0.28911078783633626
	.quad	0x3fd7d14051d2da84              # double 0.37214668264952189
	.quad	0x3fef5e71675eb478              # double 0.98027868451539657
	.quad	0x3f9140d90ca03c60              # double 0.016848937411904408
	.quad	0x3fc2a5981b1bd074              # double 0.14567853282608534
	.quad	0x3fedd0086d9a02c6              # double 0.93164464384616319
	.quad	0x3feb3a020eed091a              # double 0.85083105960100913
	.quad	0x3fea72ee3d369f4e              # double 0.82652961688743587
	.quad	0x3f9fcc6c95fd9240              # double 0.031053253798193348
	.quad	0x3fbfb16a335440e0              # double 0.12380088570739956
	.quad	0x3fe461073aec4668              # double 0.63684426792515314
	.quad	0x3fbd8fe525a63d70              # double 0.11547691506551927
	.quad	0x3fdb8d771aa5fcc0              # double 0.43050935366040832
	.quad	0x3fed6091c02b4503              # double 0.91803824933063571
	.quad	0x3fe3eaec2367313a              # double 0.6224270526377389
	.quad	0x3feb1d17652ad312              # double 0.84730119475588794
	.quad	0x3fe44e82fda69e1c              # double 0.63458394566709186
	.quad	0x3fe1718785ca39ef              # double 0.54510856753205228
	.quad	0x3fe674d1b099aa1a              # double 0.70176014415966681
	.quad	0x3fe2df25c6582e46              # double 0.5897396921076925
	.quad	0x3f49f76d56f9cc00              # double 7.9243506293236177E-4
	.quad	0x3fe6a0f094542ae0              # double 0.70714596720184986
	.quad	0x3f9e2b37c16cc420              # double 0.029461737805096644
	.quad	0x3feac30282168ba1              # double 0.83630490691972537
	.quad	0x3feaf9cbdef8f66e              # double 0.8429927210742798
	.quad	0x3feeb76c9aa4b0de              # double 0.95989065364622284
	.quad	0x3f95e9ed01cb7100              # double 0.021400168642558448
	.quad	0x3fec3da8b8f5e8e5              # double 0.88252674222101446
	.quad	0x3fdb8846712061ca              # double 0.43019257590779303
	.quad	0x3fca377c24b7e3f8              # double 0.20481826584708052
	.quad	0x3fcf8b13e3f1bf5c              # double 0.24643181448072482
	.quad	0x3fd379732efce316              # double 0.30428771580368286
	.quad	0x3fe11d1a7ec2ed65              # double 0.53480267294018502
	.quad	0x3fef901bcfe43d6a              # double 0.9863413868314812
	.quad	0x3febb5b8710e0095              # double 0.86593267518039119
	.quad	0x3fc1ffd87fb1e9b8              # double 0.14062029109102325
	.quad	0x3fee481ca58a05cd              # double 0.94630272228112633
	.quad	0x3f3823315dc92000              # double 3.6830859406622452E-4
	.quad	0x3fe2742b4410cef0              # double 0.57668078702996972
	.quad	0x3fcf792c236b15b0              # double 0.24588538865479626
	.quad	0x3fd5729ed2ede346              # double 0.33512087439116944
	.quad	0x3fefc54fb45097ca              # double 0.99283585756051562
	.quad	0x3fbe70dfb58f4900              # double 0.1189098184834485
	.quad	0x3fc283ffe4ac2754              # double 0.14465330758712958
	.quad	0x3fb01957b8e8d3f0              # double 0.062886698383252115
	.quad	0x3fc6a8a922bcc1b4              # double 0.1770221156707642
	.quad	0x3fce8e8cca6a750c              # double 0.23872527965151169
	.quad	0x3f9c28e8695c5d00              # double 0.027499801092827347
	.quad	0x3fef30efd385c3ad              # double 0.97472373307220083
	.quad	0x3fd6bfc48404e36e              # double 0.35545456783761764
	.quad	0x3fe267f761961067              # double 0.57519120273401547
	.quad	0x3fdbcd840f596b90              # double 0.43441869257883869
	.quad	0x3f9252c490296600              # double 0.017893859194691331
	.quad	0x3fd2e46119692a1c              # double 0.2951891658928234
	.quad	0x3fa98fdf1aa5f5f0              # double 0.049925777438129759
	.quad	0x3fad916dac923ab0              # double 0.057750155750104226
	.quad	0x3fc0cc4a34f698b8              # double 0.13123443208787022
	.quad	0x3fa4a26af285d930              # double 0.040301649193610678
	.quad	0x3f6b0c36c9bad800              # double 0.0033017225340143952
	.quad	0x3fea8dc61d98a708              # double 0.82980638294722642
	.quad	0x3fdda7a6e95d3cec              # double 0.46335766591523853
	.quad	0x3fc27e41a8dd7fac              # double 0.14447804208157089
	.quad	0x3fdf620548670910              # double 0.49035770483546148
	.quad	0x3fea73c09ed85676              # double 0.82662993454387279
	.quad	0x3fd52130257f7552              # double 0.33015063917067267
	.quad	0x3fd20686c01291ce              # double 0.28164833790858956
	.quad	0x3fe20c27071c8fd2              # double 0.5639834536455004
	.quad	0x3febaf7e01d5ec5d              # double 0.86517238958857556
	.quad	0x3fea63ef96e9b61e              # double 0.82469920611555714
	.quad	0x3feb156d093daeec              # double 0.84636546902535547
	.quad	0x3fdff1878d20d23c              # double 0.49911679060031466
	.quad	0x3fe69e492ccd6027              # double 0.70682200193823952
	.quad	0x3fdcbf515d26f1ec              # double 0.44917711350333778
	.quad	0x3fe9da8beff37cdb              # double 0.80792805543378721
	.quad	0x3fd2c7905dd4b44a              # double 0.29343041575595363
	.quad	0x3fe7433583b147ad              # double 0.72695422860328096
	.quad	0x3fcb98b8d1c3ebe8              # double 0.21559820406386554
	.quad	0x3fec766bc77b1706              # double 0.88945569001290958
	.quad	0x3fb4231b589abc18              # double 0.078660687572423504
	.quad	0x3fb9ad8d3e196dd8              # double 0.10030443922135335
	.quad	0x3feebb3935690505              # double 0.9603544276398287
	.quad	0x3fdfa8b70cb39e64              # double 0.49467254867929555
	.quad	0x3fdbe2d70cef66d6              # double 0.43572021735381605
	.quad	0x3fec47261724d627              # double 0.8836851551083712
	.quad	0x3fe5e6ea8f188f78              # double 0.68443801830697648
	.quad	0x3fe28513a272d2d7              # double 0.57874471405247163
	.quad	0x3fe320ff9385be5f              # double 0.59777811825729177
	.quad	0x3fe0dca90ee9a061              # double 0.52693608200662478
	.quad	0x3fede36bea87edc4              # double 0.93401141936140463
	.quad	0x3fe6c6938ea33f01              # double 0.71174028262063882
	.quad	0x3fad5fe64c2e2580              # double 0.05737228088316737
	.quad	0x3fe3084786561396              # double 0.59476066815897144
	.quad	0x3fd9fb21cd49055e              # double 0.40595288321863687
	.quad	0x3fd35bc272a4950e              # double 0.30247555919261593
	.quad	0x3fd53ad7b383b944              # double 0.3317164662429557
	.quad	0x3fd34038a366c344              # double 0.30079475361985808
	.quad	0x3fc0bfcb3707e7f8              # double 0.13085308253340577
	.quad	0x3fedf6ab95823ae2              # double 0.93636111451072801
	.quad	0x3fe57e7f3c3bf899              # double 0.67169152988914782
	.quad	0x3fc639a169756248              # double 0.17363374375669793
	.quad	0x3fd2dd357839a714              # double 0.29475151768439045
	.quad	0x3feecd22475ea481              # double 0.96254075946229999
	.quad	0x3fe31444f4da2b98              # double 0.59622428724957199
	.quad	0x3fe65ca9a87b0ea6              # double 0.69881136804948052
	.quad	0x3fca408d7f1d65c8              # double 0.20509499270228404
	.quad	0x3fbf55366e734608              # double 0.12239399143734186
	.quad	0x3feac11b9fc7587d              # double 0.83607274252678077
	.quad	0x3fd5b1328ea4fe40              # double 0.33894027643325231
	.quad	0x3fe4570d14be90d3              # double 0.63562635471000772
	.quad	0x3fc0d621e5a03524              # double 0.13153480255315586
	.quad	0x3fe54181a50b2011              # double 0.66424638972330474
	.quad	0x3fe65ac19db5920d              # double 0.69857865145292097
	.quad	0x3fc4020968a07134              # double 0.1563121567604725
	.quad	0x3fe1fc862f45f941              # double 0.56207570298264653
	.quad	0x3fd8eab8daaf4dcc              # double 0.38932629924712781
	.quad	0x3fd8e2af97e9fa2e              # double 0.38883581004475587
	.quad	0x3fdef6a3961348a0              # double 0.48380365043443341
	.quad	0x3fea9746c3e568a3              # double 0.83096636067354657
	.quad	0x3fdaf5008856e54a              # double 0.42120374025724472
	.quad	0x3fe5342c4d34e095              # double 0.66261878089337023
	.quad	0x3feaa32f7bc6e6e6              # double 0.83242010283649104
	.quad	0x3fe96b9e10c265aa              # double 0.79438689492524373
	.quad	0x3fad7d08f2afa9d0              # double 0.057594565987375668
	.quad	0x3fdd6560f4438a08              # double 0.45931266645325808
	.quad	0x3fe424ae2fdfced0              # double 0.62947759008826587
	.quad	0x3fd199346fadcae2              # double 0.27497588068142254
	.quad	0x3fe9a9b2d775df31              # double 0.80196516115299776
	.quad	0x3febac45c2b8d028              # double 0.86477935821176732
	.quad	0x3fd62d370901b1d0              # double 0.3465097034411686
	.quad	0x3fb26f6aad0454b8              # double 0.072012583961924004
	.quad	0x3fc5d7f8c4624f34              # double 0.17065343464911964
	.quad	0x3fbd7a765e980398              # double 0.11514987763804496
	.quad	0x3fdd398e34744150              # double 0.45663790819618999
	.quad	0x3fee0efa701d5b55              # double 0.93932840249440608
	.quad	0x3fe6e07bdd23cd59              # double 0.71490281287553181
	.quad	0x3fb6edd3f2bd9370              # double 0.089566466105294173
	.quad	0x3fdbff33f4d47ef6              # double 0.43745135220704812
	.quad	0x3f9116cb0ca93740              # double 0.016688511512533255
	.quad	0x3fe7cb65f60d8790              # double 0.74357889229962559
	.quad	0x3fe250658ce4d860              # double 0.57231404798836749
	.quad	0x3fe7cad673e1885b              # double 0.74351046212201355
	.quad	0x3fd1f29fe7adae70              # double 0.28043363213394112
	.quad	0x3fbe63364bae9670              # double 0.11870135638909018
	.quad	0x3fe0eba383b6f26b              # double 0.52876449323191588
	.quad	0x3fd590c8650bcd3c              # double 0.33696184032233467
	.quad	0x3feffe6fb3d574f6              # double 0.99980912326614546
	.quad	0x3fd6f4cc88eefc6c              # double 0.35869134304443295
	.quad	0x3fdd3d06e55b61e4              # double 0.45684978864804138
	.quad	0x3fd1beed21aa2638              # double 0.27727821624339155
	.quad	0x3fc5cecbf231cfc4              # double 0.17037343336016708
	.quad	0x3fda6a88d66b088c              # double 0.41275235118167397
	.quad	0x3fed4cdf350eab9c              # double 0.91563377726321304
	.quad	0x3fcaa59dc9e49ca8              # double 0.20817921026284592
	.quad	0x3fe36b27074b28f1              # double 0.60683013367204641
	.quad	0x3fe17ff977a83918              # double 0.54687188501864892
	.quad	0x3fedce5c5a059422              # double 0.93144052107220809
	.quad	0x3fe73e5c3f9c6110              # double 0.72636234687800716
	.quad	0x3fd1bc30f4e17194              # double 0.27711128152966436
	.quad	0x3fe471e022836724              # double 0.63890082112195445
	.quad	0x3fe80af687484954              # double 0.75133825704896617
	.quad	0x3fe7dcf31e9294c3              # double 0.74572139712531571
	.quad	0x3fe87d84b0bd4fb6              # double 0.76532206077035059
	.quad	0x3fd8a4859b5b985a              # double 0.38504161998424069
	.quad	0x3fe4ebc7e4ec9ba5              # double 0.65378184043662613
	.quad	0x3fe650919de45545              # double 0.69733506048456972
	.quad	0x3fe7860538b2a1d6              # double 0.73510991166863948
	.quad	0x3fd49dfd5c10428a              # double 0.3221429251725928
	.quad	0x3fe060fd05eb20e4              # double 0.51183940082503598
	.quad	0x3fcdd137baa95dd8              # double 0.23294731726012574
	.quad	0x3fc50941f272cdc4              # double 0.16434501970580417
	.quad	0x3feba98ea8ac1a81              # double 0.86444790786556791
	.quad	0x3fe45889d7051d10              # double 0.63580791469658671
	.quad	0x3fd622d4bdcdeabc              # double 0.34587591682035757
	.quad	0x3fe0da8cff2d6aa9              # double 0.52667856063211105
	.quad	0x3feb55b440aa0b30              # double 0.85421192769749688
	.quad	0x3fdf747629cd6a5c              # double 0.49148325044885666
	.quad	0x3fedfc1c216df072              # double 0.93702513245763286
	.quad	0x3fe2773062004457              # double 0.57704943791226071
	.quad	0x3fea32ff16463938              # double 0.81872515058947837
	.quad	0x3fed4266b70ebc07              # double 0.91435561898640649
	.quad	0x3fe28595bea40922              # double 0.57880675539516724
	.quad	0x3fe94347e4e22e02              # double 0.78946299270450049
	.quad	0x3fa9431b0310e850              # double 0.049340099453232811
	.quad	0x3fe35e4fb55fce4b              # double 0.60526261734634923
	.quad	0x3fbb447b8305a798              # double 0.10651370953351458
	.quad	0x3fd7b4b844c4d466              # double 0.37040526118955197
	.quad	0x3fe88650a7770dbc              # double 0.76639588077562548
	.quad	0x3fc7c0ff36e57764              # double 0.18557729893194186
	.quad	0x3fb9aa080a0047d0              # double 0.10025072330634477
	.quad	0x3fe901669017de7c              # double 0.78142097609720861
	.quad	0x3fdfcbce02c2593e              # double 0.49681425351572617
	.quad	0x3fdc65aff28d92d8              # double 0.44370649992769762
	.quad	0x3fe039029aa93681              # double 0.50695924956535532
	.quad	0x3fc63a99b92c2650              # double 0.17366334478019718
	.quad	0x3fa4cbed738ac250              # double 0.040618343691111947
	.quad	0x3fd1b93307055812              # double 0.27692866979248365
	.quad	0x3fe5626bbb0cde13              # double 0.66826426060919386
	.quad	0x3fe00d420ec307af              # double 0.50161841281100361
	.quad	0x3fcf7860cba632e4              # double 0.24586114829835204
	.quad	0x3fe847bf1a4ec4fa              # double 0.75875811708661378
	.quad	0x3fd3ee35fe55855c              # double 0.31141424023924968
	.quad	0x3fe5f2eba05eb34d              # double 0.68590337106943766
	.quad	0x3fe37725049cafa4              # double 0.60829401875297551
	.quad	0x3fcf104a74723a48              # double 0.24268465696191499
	.quad	0x3fe995adedcf51ce              # double 0.79952141234621776
	.quad	0x3fc026a1cc841170              # double 0.12617895589950079
	.quad	0x3fea05c80301961f              # double 0.81320572459361873
	.quad	0x3fea7c3840cba9a6              # double 0.82766354232199002
	.quad	0x3fd5dcdf859f7b0c              # double 0.3416060261642293
	.quad	0x3fd8d4fce1ba5d8e              # double 0.38799974483250643
	.quad	0x3fb601f88ca6e078              # double 0.085967573489030502
	.quad	0x3fed2d343995093d              # double 0.91176806684988032
	.quad	0x3fd94aa003ded816              # double 0.39517975213982603
	.quad	0x3fd31ed807b49b66              # double 0.29875756027688849
	.quad	0x3fea8cf3d46feb48              # double 0.82970611087453339
	.quad	0x3fd647178076917e              # double 0.34808909936170795
	.quad	0x3fb15068a2fe6c88              # double 0.067633189958018147
	.quad	0x3f56164433035600              # double 0.0013480821617596339
	.quad	0x3fe5cebaac3255bd              # double 0.68148549682762616
	.quad	0x3fe4f9c30d2e62c4              # double 0.65548851561023769
	.quad	0x3fe370363ec22a23              # double 0.6074477411032756
	.quad	0x3fa12a5942452420              # double 0.033526219691857984
	.quad	0x3fe9b34cc5c70136              # double 0.80313719395056782
	.quad	0x3fbf65fa39af7b30              # double 0.12264980228745226
	.quad	0x3fecadeeae435c1d              # double 0.89623197589651549
	.quad	0x3fe650d5783b4f58              # double 0.69736741526365176
	.quad	0x3fe3ac2750bf45c1              # double 0.61476484080247229
	.quad	0x3fe565519df9433b              # double 0.66861801962122713
	.quad	0x3fe41cfb101a344c              # double 0.62853768486969264
	.quad	0x3fe0a3049b659e81              # double 0.51989965773550761
	.quad	0x3fee8b0865755b4d              # double 0.95447177711580766
	.quad	0x3fe295458c3ae0eb              # double 0.580721639525135
	.quad	0x3fde2bae44444db6              # double 0.47141606012993564
	.quad	0x3fd4df558cae5b9e              # double 0.32613123644244435
	.quad	0x3fe5db85e1e61a72              # double 0.68304723854892146
	.quad	0x3fe9540fa15a2763              # double 0.7915113593491977
	.quad	0x3feed4853bfb2d4f              # double 0.96344243731565792
	.quad	0x3fe8d2c095d3013b              # double 0.77572659742876426
	.quad	0x3fe5843049316814              # double 0.67238630576616965
	.quad	0x3fbd21a017955398              # double 0.11379433227314306
	.quad	0x3fdecaedf8ae9db2              # double 0.48113583836899487
	.quad	0x3fd9b0787331372e              # double 0.40139590501063338
	.quad	0x3fe1f57cbc6a5a5a              # double 0.5612167053212247
	.quad	0x3fe9fc6c7f076d8c              # double 0.8120634537730651
	.quad	0x3fefafea2827a840              # double 0.9902239593768698
	.quad	0x3fe977bed5d03a9a              # double 0.79586736450604012
	.quad	0x3fe33f36ea4e6f54              # double 0.60146661532369672
	.quad	0x3fedcef1faa43fec              # double 0.93151186898648807
	.quad	0x3fe9341d2a096348              # double 0.78761156282698952
	.quad	0x3fef1dc1434e34d7              # double 0.97238219400028469
	.quad	0x3fd45f7680afe490              # double 0.31832659308526789
	.quad	0x3fd15521adbc25a8              # double 0.2708210178976409
	.quad	0x3fde3e61889ae3ce              # double 0.47255743351302903
	.quad	0x3fe77c8fc824fb85              # double 0.73395527926173598
	.quad	0x3fe0a7464812147d              # double 0.52041925503057451
	.quad	0x3f129b64c188a000              # double 7.0980095536854471E-5
	.quad	0x3fee7741d0bc20dc              # double 0.95205775040178819
	.quad	0x3fcca1c6dcfef2a4              # double 0.22368703642668664
	.quad	0x3fb09de9badd4e60              # double 0.064909561272821659
	.quad	0x3fef18fa00d71bcd              # double 0.97179889835467181
	.quad	0x3fb7704bb147c400              # double 0.091557245999652537
	.quad	0x3fe7a308d7b133dd              # double 0.73865167739279125
	.quad	0x3feba20ab069c258              # double 0.86353048759162743
	.quad	0x3fed4242e8cd1202              # double 0.91433854550319915
	.quad	0x3fe69491c0bf0c42              # double 0.7056359066558644
	.quad	0x3feaf10ed791d17f              # double 0.84192602256239002
	.quad	0x3fcd208a1b8489f0              # double 0.22755552619589947
	.quad	0x3fdcbc5d58189832              # double 0.44899686434871733
	.quad	0x3feb75565d69e46c              # double 0.85807340855457203
	.quad	0x3fd4f65b020ee412              # double 0.32753634644501617
	.quad	0x3fe21adb789d6c20              # double 0.56577848012546283
	.quad	0x3fc137d1512a77f8              # double 0.13451591933420537
	.quad	0x3fc964dc452d27fc              # double 0.19839051606896863
	.quad	0x3fa5748e13ca6880              # double 0.041904868999339762
	.quad	0x3fa857c222f70b00              # double 0.047544543045225041
	.quad	0x3fe84d763c57ca48              # double 0.75945579324463441
	.quad	0x3feae9471a3d0bc8              # double 0.84097628712367456
	.quad	0x3fd26a669e6187da              # double 0.28774419276134966
	.quad	0x3fd087e2d1e30ff2              # double 0.25829382416509283
	.quad	0x3fb22f7059314908              # double 0.071036359572904328
	.quad	0x3fe5b552b2adfb04              # double 0.67838416002618418
	.quad	0x3fed7aca774bbeb4              # double 0.92123912143684671
	.quad	0x3fd717a22b555570              # double 0.3608174727608775
	.quad	0x3fd1af8431276a24              # double 0.27633766937438708
	.quad	0x3fe053aedae5255d              # double 0.5102152133269261
	.quad	0x3fd202d5c83771b2              # double 0.2814230399360681
	.quad	0x3fd45cfd6d555a38              # double 0.31817565610018361
	.quad	0x3fcdca8ed9fef2d4              # double 0.23274408001261426
	.quad	0x3fd8f6a7b9d9b9d2              # double 0.39005463742696833
	.quad	0x3fe54ad613c6ba5f              # double 0.6653852831130499
	.quad	0x3fd0dbce93359db6              # double 0.26341595054551747
	.quad	0x3fe7dd11c1cef6f6              # double 0.74573600629056958
	.quad	0x3fe3eb3447cebdea              # double 0.62246145272177711
	.quad	0x3fed367a9e1abce3              # double 0.91290026550077774
	.quad	0x3fcdfb1a447005e8              # double 0.23422554341963964
	.quad	0x3fc12d4977439af0              # double 0.13419454883042858
	.quad	0x3fdb482e9ecbd512              # double 0.42628064639514307
	.quad	0x3fe8935d9ff63195              # double 0.7679889797450864
	.quad	0x3fd43fbfb50ca8fe              # double 0.31639092140780167
	.quad	0x3fed5410a674600d              # double 0.91651184569036703
	.quad	0x3fe2728776bacb3f              # double 0.57648060979258975
	.quad	0x3fe13c202a0ec910              # double 0.53858955587773671
	.quad	0x3fc62fa52918abd8              # double 0.17332901484164043
	.quad	0x3fd4cc52776b30c4              # double 0.32497083341582944
	.quad	0x3feaa1c15a576b33              # double 0.83224551815815173
	.quad	0x3fc08bd99ea8e6e4              # double 0.12926788565692171
	.quad	0x3fe55de9aa27bf81              # double 0.66771395905924191
	.quad	0x3fe1c81f5f17280e              # double 0.55567902157167892
	.quad	0x3fec38f16539df37              # double 0.88195104380336076
	.quad	0x3fc8baa42af3e178              # double 0.19319583985612687
	.quad	0x3fe54411bdbfbf3f              # double 0.6645592409167661
	.quad	0x3fe39fe5f5182dad              # double 0.61326883192071124
	.quad	0x3fc96c811edeb5cc              # double 0.19862379081079806
	.quad	0x3fdd70172b14b49e              # double 0.45996646124951635
	.quad	0x3fc7cf43ca224c48              # double 0.18601271982024259
	.quad	0x3fd05dfe11f4b62e              # double 0.25573684457308132
	.quad	0x3fb7e718c1697298              # double 0.093370005817130397
	.quad	0x3f9378f440cb5f60              # double 0.019016090826738163
	.quad	0x3fc675a22bf1a82c              # double 0.17546488900853896
	.quad	0x3fd7f10f9f0ff90a              # double 0.37408819707333463
	.quad	0x3fcdc86717e562a0              # double 0.23267830530928268
	.quad	0x3fe7939df461c341              # double 0.73676965456807164
	.quad	0x3fef4c77bfe180c3              # double 0.97808444477779976
	.quad	0x3fbd45a74e11b5d0              # double 0.11434407859788753
	.quad	0x3fed9b70cdd1b0e6              # double 0.92522468756717724
	.quad	0x3fea5480fe26bf71              # double 0.82281541480004539
	.quad	0x3fd0d0cb12936304              # double 0.26274372877155394
	.quad	0x3fd02e0af3a8f786              # double 0.25281022829937461
	.quad	0x3fe03249690f918f              # double 0.50613852042856589
	.quad	0x3fd11317d3697bd8              # double 0.26679034848888028
	.quad	0x3fee6d8b59a01e1e              # double 0.95087211136791772
	.quad	0x3fd0f06162830ec4              # double 0.26467165584857022
	.quad	0x3fa3dbee5d145d10              # double 0.038787316190957211
	.quad	0x3feb058941c9b0f7              # double 0.84442580079260565
	.quad	0x3fe92474e466c1e5              # double 0.78570026979110408
	.quad	0x3fe81cabc0c49374              # double 0.75349986696219994
	.quad	0x3fe477f450086ce2              # double 0.6396428645270158
	.quad	0x3fe4535725571a41              # double 0.63517339032188869
	.quad	0x3fb7c54e10f8b4a0              # double 0.092854384559091674
	.quad	0x3fe9b7fb8398e2d3              # double 0.80370879843311582
	.quad	0x3fef33480cb5d958              # double 0.97500994188775802
	.quad	0x3fe5c5371f30e00d              # double 0.68032413570381467
	.quad	0x3f9e9b28933f23c0              # double 0.029888757693502077
	.quad	0x3fd03d3a440122b6              # double 0.25373703614290422
	.quad	0x3fa23ba1a73782b0              # double 0.035611201917850166
	.quad	0x3fe6f8d7e6aeba6d              # double 0.71787638716871316
	.quad	0x3fe22d3c456da222              # double 0.56802190361219496
	.quad	0x3fe99c2c436c979d              # double 0.80031407517229847
	.quad	0x3fdb7a545efb768a              # double 0.42934140468228377
	.quad	0x3fb3864487627208              # double 0.076267512371892221
	.quad	0x3feac49d7380197d              # double 0.83650085982007705
	.quad	0x3fb62a0556528948              # double 0.086578687262350518
	.quad	0x3fd368d7e87973ec              # double 0.30327413275318693
	.quad	0x3feb55a77b378c3b              # double 0.85420583787743654
	.quad	0x3fda8bfc79f4d062              # double 0.41479408178134325
	.quad	0x3feebdf1599278fe              # double 0.96068637365877385
	.quad	0x3fe22321e8075927              # double 0.56678862875086089
	.quad	0x3fe1105c95ea47ac              # double 0.53324727325729304
	.quad	0x3fc419ea5ba86830              # double 0.15704087710838754
	.quad	0x3fe1e83fc2a63c19              # double 0.55960071580364279
	.quad	0x3fd092b84835c0fc              # double 0.25895506908183541
	.quad	0x3fdeb9594a297c2c              # double 0.48006279222858228
	.quad	0x3fd61c4541ae722c              # double 0.34547549642755615
	.quad	0x3fe58717ed607e01              # double 0.67274090159111222
	.quad	0x3fefd743e3de5580              # double 0.99502748971524113
	.quad	0x3fb1f3f544280dd8              # double 0.07012875474907021
	.quad	0x3fc3b90fd0eb170c              # double 0.15408513737764229
	.quad	0x3fe4feac804a21f5              # double 0.65608811432417602
	.quad	0x3fe72b7c92725e4c              # double 0.72405842402344822
	.quad	0x3fe9536b70d4f679              # double 0.79143306767919264
	.quad	0x3fd35fe68dd66eb4              # double 0.30272830821352703
	.quad	0x3fd67c60817bfd02              # double 0.35134136815027273
	.quad	0x3fed739c58c25ae8              # double 0.92036263786107231
	.quad	0x3fe8ffed7b7d96f5              # double 0.78124117011313265
	.quad	0x3fe1fa85319f4274              # double 0.5618310898954193
	.quad	0x3fe074b9a1401943              # double 0.51424867147651587
	.quad	0x3fe52ad271a3154e              # double 0.66147730059371113
	.quad	0x3fd138f77e80ef00              # double 0.26910197595474017
	.quad	0x3fa6cabc25e77d50              # double 0.044515494944557532
	.quad	0x3fe9c9daa9ce39aa              # double 0.80589039960050468
	.quad	0x3fb95827cf5d0290              # double 0.099001396299181587
	.quad	0x3feb9de1843ef3ca              # double 0.86302257375029368
	.quad	0x3fef2bbbb628b574              # double 0.97408853128369665
	.quad	0x3fe58dbbdcb563e2              # double 0.67355149371280398
	.quad	0x3fd343b232b1dcec              # double 0.30100684118902055
	.quad	0x3f908e9c27981960              # double 0.016169013897547102
	.quad	0x3fefab2be00fee07              # double 0.98964494478372067
	.quad	0x3fc990b2bc6b054c              # double 0.19972833824253156
	.quad	0x3fe0b3ddddcd28f8              # double 0.52195638008677658
	.quad	0x3fd25cabbc842c96              # double 0.2869061795215172
	.quad	0x3fed955147ad1018              # double 0.92447723387931813
	.quad	0x3feaced3b4a2e968              # double 0.83774743347684666
	.quad	0x3fe2345eea229ddb              # double 0.56889291505370509
	.quad	0x3fb2ce37a9c33548              # double 0.073459128328257184
	.quad	0x3feb927c6c8478e7              # double 0.86163159556215596
	.quad	0x3fc8506ae5da0aa8              # double 0.18995414946774258
	.quad	0x3fd94d0dcc1ceac6              # double 0.39532799656778328
	.quad	0x3fe6ff479bec6d03              # double 0.71866207555595485
	.quad	0x3fd6acc1600462a0              # double 0.35429415108368723
	.quad	0x3fec4cbb26b809f3              # double 0.88436658441815863
	.quad	0x3fea5935114e2808              # double 0.82338956241551475
	.quad	0x3fe98f7ba1a86582              # double 0.79876500676907392
	.quad	0x3fe4cb8fad3cddf1              # double 0.64984878383159927
	.quad	0x3fa17e401eb7dbe0              # double 0.034166339635639309
	.quad	0x3fd199ecb11b9e82              # double 0.27501981063549163
	.quad	0x3fdc7c80c58aad2c              # double 0.44509906092817419
	.quad	0x3fcff385214e0328              # double 0.24961914182861134
	.quad	0x3fc9945af3be7f78              # double 0.19983994390076609
	.quad	0x3fe892e5f4795a2b              # double 0.76793191670259853
	.quad	0x3fec4704c383db97              # double 0.88366926371132848
	.quad	0x3fd11dc5dd72c01a              # double 0.26744219423108151
	.quad	0x3fdc8d31d0a94706              # double 0.44611783387254922
	.quad	0x3fdaaf7f2bdf9bda              # double 0.41696147236365066
	.quad	0x3fe8549bd7b08185              # double 0.76032821776247828
	.quad	0x3fe4bfe41969e437              # double 0.64842419589616085
	.quad	0x3fb17dbbbe7f2a50              # double 0.068324789054863944
	.quad	0x3f901d906536b5e0              # double 0.015737777879328507
	.quad	0x3fa6322e930b0910              # double 0.043351607751462962
	.quad	0x3fe52cc9f0f0be6d              # double 0.6617173868052767
	.quad	0x3fef45fe01a68d76              # double 0.97729397127515827
	.quad	0x3fe1742d67f3e2bc              # double 0.54543180754907139
	.quad	0x3fe4ced58e3e973e              # double 0.65024831564071639
	.quad	0x3fd949fe5a026426              # double 0.39514120855307266
	.quad	0x3fe95dc84c7a7da6              # double 0.79269804894640994
	.quad	0x3fe36027ff8acbb1              # double 0.60548782263355438
	.quad	0x3fd66ca0b6906eb6              # double 0.35038011387380708
	.quad	0x3fe71b4e437b04a7              # double 0.72208321742813986
	.quad	0x3fea14e5c4a18458              # double 0.81505096821286838
	.quad	0x3fa252ba1c0b5220              # double 0.035787406848303727
	.quad	0x3fe831da89b1986e              # double 0.75608565228755054
	.quad	0x3fe56477ade7195a              # double 0.66851409879090373
	.quad	0x3fead8a9b5053365              # double 0.83894811015634885
	.quad	0x3fcf611a03647704              # double 0.24515080609938178
	.quad	0x3fd211532dc6484a              # double 0.28230742902917838
	.quad	0x3fd710b06aa241b6              # double 0.36039362348040116
	.quad	0x3fd263ba58ff920a              # double 0.28733690921060939
	.quad	0x3fe56b76030e64b0              # double 0.66936779591482853
	.quad	0x3fe1d9d292438b1a              # double 0.55783966605335711
	.quad	0x3fe1d4e84316496e              # double 0.55723965743008619
	.quad	0x3fc2cad7e3d3f728              # double 0.14681528686917855
	.quad	0x3fee2735baff6d7e              # double 0.94228636286736367
	.quad	0x3feedb9fca938f0f              # double 0.96430959287360618
	.quad	0x3fb925e5cb1edeb0              # double 0.098234521951662712
	.quad	0x3fa3e3eda4587700              # double 0.038848329841341567
	.quad	0x3fc3df029462833c              # double 0.15524322743751806
	.quad	0x3fe7380b16a265ad              # double 0.72559122486852845
	.quad	0x3fe3543a977cca40              # double 0.60403184497256035
	.quad	0x3fdf255f1003b130              # double 0.48665596546085776
	.quad	0x3fef734f02786453              # double 0.98282576067425464
	.quad	0x3fda0cb89ab62e10              # double 0.40702643497999791
	.quad	0x3fd8984097a328e6              # double 0.38429274376234301
	.quad	0x3f84ecf15b0d1280              # double 0.010217557517202325
	.quad	0x3fef2b77714c2890              # double 0.97405597809235367
	.quad	0x3fc74b9172cd86c4              # double 0.18199365716559701
	.quad	0x3fe0b30359ccaad0              # double 0.52185218371354303
	.quad	0x3fe0dc40a8276219              # double 0.52688629953906052
	.quad	0x3fe4414131c735f2              # double 0.6329656574468443
	.quad	0x3fc979e1ce104480              # double 0.19903204499908966
	.quad	0x3fe3b6da54c81914              # double 0.6160709052935851
	.quad	0x3fe488156c2f91fb              # double 0.6416117775921174
	.quad	0x3fe936ba95e86391              # double 0.78793076781140503
	.quad	0x3fe0def0d32183e1              # double 0.52721444355495006
	.quad	0x3fdfb9d45a1a8aee              # double 0.49571713256061301
	.quad	0x3fefeb50dd3cf18e              # double 0.99747508249815708
	.quad	0x3fe8ca1d1f47b688              # double 0.77467208966636836
	.quad	0x3fd5059a9c9169ea              # double 0.32846703805776534
	.quad	0x3fe921b4c9fab77d              # double 0.78536452721685601
	.quad	0x3fe1ee724bf72c1a              # double 0.56035723530783632
	.quad	0x3fc6be23627751f8              # double 0.1776775580207326
	.quad	0x3fc0f3c874daf250              # double 0.13243966775725591
	.quad	0x3fefbbfc75077b24              # double 0.99169752938528121
	.quad	0x3fe8d5e93106c592              # double 0.77611217093924467
	.quad	0x3fe2f5ce85b19116              # double 0.59250570404086278
	.quad	0x3fe0212745bfe372              # double 0.50404704688035751
	.quad	0x3fedc6c70a87d992              # double 0.93051483208437191
	.quad	0x3fdc496e85fcecc6              # double 0.44198191723598901
	.quad	0x3fefc15681bd2270              # double 0.99235081996546448
	.quad	0x3fe7946bd7630dbb              # double 0.73686782901534487
	.quad	0x3fe2b4032490f343              # double 0.58447415487135179
	.quad	0x3fdd06031174ccea              # double 0.45349194245063862
	.quad	0x3fc0e1e05de4a428              # double 0.13189320168138008
	.quad	0x3fb9c4a5bd27e028              # double 0.10065685146389625
	.quad	0x3fed2900f742d52b              # double 0.91125534337212366
	.quad	0x3fd54482056638ae              # double 0.33230639006877538
	.quad	0x3fef9effe94e6e4f              # double 0.98815913741732142
	.quad	0x3fe1423893a10340              # double 0.53933361848621786
	.quad	0x3fece9fc98107f23              # double 0.90356282901845864
	.quad	0x3fb20184b37e3580              # double 0.070335668393644468
	.quad	0x3fdab8df981f94bc              # double 0.41753377776906198
	.quad	0x3feb7d89002869a0              # double 0.85907411604721417
	.quad	0x3fe949d05eabebe6              # double 0.79026049128094367
	.quad	0x3fd751c5bedb609a              # double 0.36436599386571233
	.quad	0x3fde1a86c4f78574              # double 0.47036904559180148
	.quad	0x3fe053c884246f36              # double 0.5102274495033956
	.quad	0x3fe237e676330a04              # double 0.56932375989737283
	.quad	0x3fd47f11f3491314              # double 0.32025574453682393
	.quad	0x3fe2493edf893dbe              # double 0.57144111308473788
	.quad	0x3fd3011f2af3eb74              # double 0.29694346613512512
	.quad	0x3feea881ac05c7b3              # double 0.95806964491042945
	.quad	0x3fc8b51d283988bc              # double 0.19302715744112742
	.quad	0x3fe668131706376f              # double 0.70020441529207555
	.quad	0x3fd7fa2b286d487a              # double 0.374644078711874
	.quad	0x3fe823a05c20f288              # double 0.75434892648589003
	.quad	0x3f79fe0f3f6aaa00              # double 0.0063458057035554738
	.quad	0x3fe68c38b9ba2708              # double 0.70461689257464943
	.quad	0x3fe53e197294eb60              # double 0.66383049372903358
	.quad	0x3f9f3c173eb27d20              # double 0.030502665712103583
	.quad	0x3fdee4c1f05846e8              # double 0.48271225424933428
	.quad	0x3fc8f70f3dd833ac              # double 0.19503965873482565
	.quad	0x3feff082ad1fc292              # double 0.99810918629926193
	.quad	0x3fc6e99b58e83e34              # double 0.17900411454364618
	.quad	0x3fdff77623429b78              # double 0.49947884982469004
	.quad	0x3fe89449ae325642              # double 0.76810153982905427
	.quad	0x3fbe4bcee06d45c0              # double 0.11834423998995813
	.quad	0x3fe72884211b4ce9              # double 0.72369581667080951
	.quad	0x3fea3447988a18d8              # double 0.81888179581508336
	.quad	0x3fed8118d44884cc              # double 0.92200890981271177
	.quad	0x3fecf576d3cf8692              # double 0.9049638878752424
	.quad	0x3fe4eb2a52d20400              # double 0.65370670486311155
	.quad	0x3fef04e20164981b              # double 0.96934604904231791
	.quad	0x3fc2c066b2577114              # double 0.14649661739429887
	.quad	0x3f9d8f7ec6bba9c0              # double 0.028867703323081306
	.quad	0x3f8de68b33c79e40              # double 0.014599883573239159
	.quad	0x3fe2b27fea6d6071              # double 0.58428951059887713
	.quad	0x3fe7ff0e92183f5e              # double 0.74988487753033062
	.quad	0x3fd53f410b722b0c              # double 0.33198572271128124
	.quad	0x3fe550c2aa26a8a0              # double 0.66610844833964578
	.quad	0x3fe0e99015edb4e5              # double 0.52851108820837267
	.quad	0x3fda8b35445c6020              # double 0.41474658656943753
	.quad	0x3fc2aaf740667830              # double 0.14584246296448233
	.quad	0x3fd71b722fb05aaa              # double 0.36105017335050127
	.quad	0x3febb50126f120d7              # double 0.86584527593461302
	.quad	0x3fe185a018906dd1              # double 0.54756169126215515
	.quad	0x3feeac054356f01a              # double 0.95849860336557247
	.quad	0x3fd13ec81cc4b02e              # double 0.26945689019589991
	.quad	0x3fe0c1babcb612c5              # double 0.52364861352597158
	.quad	0x3fdefe9b9e067556              # double 0.48429003173972285
	.quad	0x3fe527d8c00454cf              # double 0.66111409667305476
	.quad	0x3fee55fd0c0b2b2a              # double 0.94799663879652951
	.quad	0x3fefb94609c1a643              # double 0.99136640458636582
	.quad	0x3fd26be14cf66454              # double 0.28783447757593206
	.quad	0x3fea0c794efc6d0e              # double 0.81402268816910506
	.quad	0x3fe4fc3854670d9a              # double 0.65578857884286212
	.quad	0x3faa42cc7ff52cf0              # double 0.051290884609068388
	.quad	0x3fd7415e2510d642              # double 0.36336473102287326
	.quad	0x3fe3218c24a7506c              # double 0.59784514578724446
	.quad	0x3fe5b9dfe520cc1d              # double 0.67893976928315036
	.quad	0x3fed1470f4ad433b              # double 0.90874526775778663
	.quad	0x3fb630757f99edd0              # double 0.086676925327928033
	.quad	0x3fc31c73620f2c70              # double 0.14930574691820508
	.quad	0x3feea4815a63f78e              # double 0.95758121160882737
	.quad	0x3f8d88bf24072140              # double 0.014420979773504983
	.quad	0x3faa8a58c57090b0              # double 0.051836752034689737
	.quad	0x3fec089f648551eb              # double 0.87605256684269983
	.quad	0x3fe1d75c79bdba87              # double 0.55753921296657516
	.quad	0x3fb14cc7ed0909c0              # double 0.06757783448214294
	.quad	0x3fde040d79a2d878              # double 0.46899735334898862
	.quad	0x3fea57be126dfe3f              # double 0.82321075057547677
	.quad	0x3fe58e95199625d5              # double 0.67365508077016989
	.quad	0x3fe89c78a93d6b94              # double 0.76910050444290556
	.quad	0x3fd1d5bbfd17cc44              # double 0.27867030826672967
	.quad	0x3fe99f9a229e45b4              # double 0.80073267709138074
	.quad	0x3fe2031a258b074a              # double 0.56287867863304908
	.quad	0x3fed326cb6caf02d              # double 0.91240535451607274
	.quad	0x3feda372943c1a72              # double 0.92620209648232632
	.quad	0x3fd6ab7594d03f5a              # double 0.3542150452858458
	.quad	0x3fe4330bea114eff              # double 0.63123126713114164
	.quad	0x3fecd3b168091b2c              # double 0.90084142989585336
	.quad	0x3fa8a4f25d24e020              # double 0.048133443708536783
	.quad	0x3fe6a9d389101a99              # double 0.70823075075243758
	.quad	0x3fe10b08201898d6              # double 0.53259664791837724
	.quad	0x3fe173faa26d63a2              # double 0.54540759777147607
	.quad	0x3feb26d0797b9f60              # double 0.8484880802834418
	.quad	0x3fe10f5a007e38c4              # double 0.53312397095012232
	.quad	0x3fe97eca9b0107d3              # double 0.7967274691984535
	.quad	0x3fa3db2633341870              # double 0.038781350851466168
	.quad	0x3fed2674795100a4              # double 0.91094421095478539
	.quad	0x3fe2b494cc835281              # double 0.58454360908451986
	.quad	0x3fd24c935ef08546              # double 0.28592380782545879
	.quad	0x3fe0e036c76aec44              # double 0.52736987065089425
	.quad	0x3fe1069b2b21bb58              # double 0.53205641197369413
	.quad	0x3fcbcb52292884b8              # double 0.21714236268693354
	.quad	0x3fc0570d010b8b10              # double 0.12765657950429743
	.quad	0x3fe766791ce21896              # double 0.73125892297027195
	.quad	0x3fe96490e57b23d4              # double 0.7935261232424815
	.quad	0x3fb264f971c95058              # double 0.071853246955755679
	.quad	0x3fd9f8143f28335e              # double 0.40576654594115336
	.quad	0x3fc39b84b0997b30              # double 0.15318354247116295
	.quad	0x3fbb965b72714ce8              # double 0.10776301902778906
	.quad	0x3fcf300ca62de2f4              # double 0.24365385164471542
	.quad	0x3fb7180a6931c738              # double 0.090210581476438345
	.quad	0x3fc04226d696cb04              # double 0.12701879003505934
	.quad	0x3fdea4c4b6ef559c              # double 0.478806666037906
	.quad	0x3fe484a75f5ba43f              # double 0.6411930906734894
	.quad	0x3fe1a39ea8b75412              # double 0.55122311546677083
	.quad	0x3fac6fb523a71750              # double 0.055539761163841406
	.quad	0x3febd929a81f0fca              # double 0.87025912128637484
	.quad	0x3fdd21af073e7b82              # double 0.45518089015416063
	.quad	0x3fc6b2adc035dcb4              # double 0.17732784161828408
	.quad	0x3feb9a7491016abb              # double 0.86260441132920762
	.quad	0x3fdefaec2d527890              # double 0.48406509805671138
	.quad	0x3fd77d2a3bc3a0fe              # double 0.36701446377129787
	.quad	0x3fed5bffd3af15e5              # double 0.91748038620488315
	.quad	0x3fc7958a25179efc              # double 0.18425108729501705
	.quad	0x3faf7ad798c43280              # double 0.061484086416474959
	.quad	0x3fe1ace0d1dd5c65              # double 0.55235329617688633
	.quad	0x3fd1cdf2ae58e83a              # double 0.27819506670096283
	.quad	0x3fde8bc213846712              # double 0.47728015809990254
	.quad	0x3fdd71b50ee3f3fe              # double 0.46006514028687195
	.quad	0x3fefa4b66841a93f              # double 0.98885650980563599
	.quad	0x3fd2a96585fc6c70              # double 0.29158914646695333
	.quad	0x3fe426f6fa5761b8              # double 0.62975644011299092
	.quad	0x3fcc8dbcfb601134              # double 0.22307550691778888
	.quad	0x3fe09f1426cdb2e5              # double 0.51941878870783553
	.quad	0x3feefb7c75faf27a              # double 0.96819899600048065
	.quad	0x3fd629dfbb5f5d30              # double 0.34630578325364336
	.quad	0x3fe7e8f7eece89b6              # double 0.74718853609038294
	.quad	0x3febf031d34ecc4b              # double 0.87307063361220949
	.quad	0x3fed1bc45d0f8b16              # double 0.90963953185959912
	.quad	0x3fe8a45d9a1a4221              # double 0.77006416414412027
	.quad	0x3fea1da5c180b219              # double 0.81611907762050173
	.quad	0x3feba9b8cf0f5ca1              # double 0.8644680065289273
	.quad	0x3fe28a62fbd45259              # double 0.57939290223527984
	.quad	0x3fe42b43abc7420c              # double 0.63028129148921286
	.quad	0x3fe03346ff037958              # double 0.50625943953836394
	.quad	0x3fe9243071776c45              # double 0.78566763078141177
	.quad	0x3f9ea384c44675e0              # double 0.029920649032296853
	.quad	0x3fde5366583bae44              # double 0.47384031883732214
	.quad	0x3fc5869dfc84f2c8              # double 0.16817068891568554
	.quad	0x3fdd35d33f414e64              # double 0.45641022851234525
	.quad	0x3fd7e779e1031e9e              # double 0.37350317930074961
	.quad	0x3fe1ea7152cf0098              # double 0.55986848996691929
	.quad	0x3fe46aef5191e158              # double 0.63805356914148614
	.quad	0x3fd71ed658fc5c50              # double 0.3612571591378968
	.quad	0x3fea2526febcfbc1              # double 0.81703519586141493
	.quad	0x3fdb8c2ed3ef8d82              # double 0.4304310865101898
	.quad	0x3fe0b13124773643              # double 0.52162987825585849
	.quad	0x3fcd750b7e9300e8              # double 0.23013442688353014
	.quad	0x3fec4f3a8aed42ae              # double 0.88467147001400348
	.quad	0x3fe788a8dabc2af1              # double 0.73543207856832116
	.quad	0x3fef3a7298a8c271              # double 0.97588472191098507
	.quad	0x3fc170bf0e511148              # double 0.13625324439102315
	.quad	0x3fdda49827ec635a              # double 0.46317104243057872
	.quad	0x3fe8b1742b00e655              # double 0.77166183852313941
	.quad	0x3fb5be741aee7c08              # double 0.084937340331166067
	.quad	0x3fe19d3581055682              # double 0.5504405517519475
	.quad	0x3fc5a16ca980d8b4              # double 0.16898878361252445
	.quad	0x3fdd97c5d708e82a              # double 0.46238847732058963
	.quad	0x3fe221b6f88a27d7              # double 0.56661556761650445
	.quad	0x3fe16308f5d29594              # double 0.54333923351502955
	.quad	0x3fd25d5cd3da53e2              # double 0.28694840134386201
	.quad	0x3fe3cf456d43976a              # double 0.61905165997152989
	.quad	0x3fde2beb8bd9c3a6              # double 0.47143067033089847
	.quad	0x3fea0f973871e1c6              # double 0.81440316223511711
	.quad	0x3fdcbbdaacc35f62              # double 0.44896571036723831
	.quad	0x3fe83650c395ccfc              # double 0.75663030815340404
	.quad	0x3faf09bb3785cb80              # double 0.060621119048753336
	.quad	0x3fdbd21fb908d26e              # double 0.43469994611522267
	.quad	0x3fdb92d67135fbfc              # double 0.43083725982427246
	.quad	0x3fe3928cc964a598              # double 0.61163939795112565
	.quad	0x3fdf91540a21fb08              # double 0.49324513425374095
	.quad	0x3fe3f8bf144a0b2c              # double 0.62411455118885817
	.quad	0x3fe74282862128a3              # double 0.72686887929127797
	.quad	0x3f99186450ccbe80              # double 0.024507110053660686
	.quad	0x3fdc49888de1919a              # double 0.44198812347010519
	.quad	0x3fe273e5712ad2d3              # double 0.57664749243721258
	.quad	0x3fdc08c189ab53e0              # double 0.43803442425024564
	.quad	0x3fdc5e63569f57ae              # double 0.44326098880025711
	.quad	0x3fbc72dc2abbb6a8              # double 0.11112762492458705
	.quad	0x3fde163e035c7f92              # double 0.47010755851987895
	.quad	0x3fd571cb088c445e              # double 0.3350703795886768
	.quad	0x3fe00d47fad256ea              # double 0.50162123669244107
	.quad	0x3fd74268281d5848              # double 0.36342815320438548
	.quad	0x3fe9d05d5892e389              # double 0.80668513583724277
	.quad	0x3fe32c68f94b3282              # double 0.59917114916022762
	.quad	0x3fdf2e5d746959d6              # double 0.48720489853203952
	.quad	0x3fdd0a407e567fc4              # double 0.45375072801288874
	.quad	0x3fe7e7a3488dca53              # double 0.74702610178639828
	.quad	0x3fcca1bedf068074              # double 0.22368608369743337
	.quad	0x3fd229d9e1373c58              # double 0.2838043879864407
	.quad	0x3fde9ce8fbc2bba8              # double 0.47832703195575244
	.quad	0x3fe0ee7359af3035              # double 0.52910773769827435
	.quad	0x3fecf86b8ee11673              # double 0.90532472520926743
	.quad	0x3fd0af7198a196b2              # double 0.26070823579207592
	.quad	0x3fd4235ee3759a46              # double 0.31465885365324586
	.quad	0x3fa845f1de451190              # double 0.047408636457961895
	.quad	0x3fbd99468285b198              # double 0.11562004744127419
	.quad	0x3fdfcf46c60aa55e              # double 0.49702615108488668
	.quad	0x3fe8c2a2bb260680              # double 0.77375923683594294
	.quad	0x3fe9852ecadecc29              # double 0.79750766394716266
	.quad	0x3fb8dfdbbb3800f0              # double 0.097165806968408707
	.quad	0x3fd3b1a55b47518a              # double 0.30771764673161128
	.quad	0x3fd37a1d4d7bdca4              # double 0.30432827536373908
	.quad	0x3fdb54461bc8ccee              # double 0.42701866830175461
	.quad	0x3fc3ab9b9d4ec1ac              # double 0.15367455655133477
	.quad	0x3fe9bcd4a79aac99              # double 0.80430062041468198
	.quad	0x3fcfadad0708b280              # double 0.24748766749816653
	.quad	0x3fd2b6650fac2066              # double 0.29238249331002064
	.quad	0x3fedb90e927843c8              # double 0.928839956353948
	.quad	0x3fd701f67dd3748e              # double 0.35949480331130068
	.quad	0x3fe4733561d32afc              # double 0.63906354051991299
	.quad	0x3fedca77bff38628              # double 0.93096530428392033
	.quad	0x3fd8c0d71d99d4bc              # double 0.38677003756249539
	.quad	0x3fe3f2b8815eeb29              # double 0.6233789946339573
	.quad	0x3f721955a4fc1b80              # double 0.0044186921584302707
	.quad	0x3f8dcfbd4d2ee180              # double 0.014556387823049688
	.quad	0x3fc8c2e84e9bdcdc              # double 0.19344810331651885
	.quad	0x3fae4e36c1968310              # double 0.059190474635448465
	.quad	0x3fcb8c4bbdbd17e0              # double 0.21521898998815825
	.quad	0x3feac304a0a75d12              # double 0.83630591752708683
	.quad	0x3fd574326fed8014              # double 0.33521710329478194
	.quad	0x3fc96c6145067864              # double 0.19861999388098461
	.quad	0x3fcb3ee844ed3820              # double 0.2128572784953926
	.quad	0x3fc48a94235e1b54              # double 0.16047908522542775
	.quad	0x3feb9ea52a49bc1a              # double 0.86311586627369086
	.quad	0x3fed12ddc5f865ff              # double 0.90855301538539368
	.quad	0x3fe53c5139a9414a              # double 0.66361294996208042
	.quad	0x3fecbb0ae9d3ee6b              # double 0.8978323523474051
	.quad	0x3fd1976d6e101680              # double 0.27486739872288268
	.quad	0x3fd3d7acd0506430              # double 0.31003876059691304
	.quad	0x3fcf6814198441a0              # double 0.24536372419289609
	.quad	0x3fe89dc1183495c7              # double 0.76925711372012351
	.quad	0x3fa8f887d5bddd30              # double 0.048771138040076045
	.quad	0x3fe6354b3796093d              # double 0.69400559288650465
	.quad	0x3fe7daabb38e0412              # double 0.74544320172583611
	.quad	0x3fe08910e7c201ce              # double 0.51673169388964779
	.quad	0x3fe46fd946b504a7              # double 0.63865341005307108
	.quad	0x3fd271cb527029d6              # double 0.28819544840430689
	.quad	0x3feeb2889956051c              # double 0.95929365108910102
	.quad	0x3fea2767f397687c              # double 0.8173103101392054
	.quad	0x3fec0235eb775ee3              # double 0.87526985158453063
	.quad	0x3fee0b02330197f6              # double 0.93884382211831396
	.quad	0x3fdb28aa8dd46666              # double 0.42435706949763696
	.quad	0x3fdbbbe043e637e8              # double 0.43334204321661085
	.quad	0x3fddf4401b66df1e              # double 0.46803286243401654
	.quad	0x3fea43774de22722              # double 0.8207355996284813
	.quad	0x3fdcc7cf5ac21304              # double 0.44969543326469386
	.quad	0x3fe9b46d1268945e              # double 0.80327466578877327
	.quad	0x3fe61e9ab261bf3e              # double 0.69123587455940316
	.quad	0x3fe31434d0f1ccd6              # double 0.59621659097174518
	.quad	0x3fe10c360c10cbf0              # double 0.53274061543049633
	.quad	0x3faee23fbcf59fb0              # double 0.060319892708150191
	.quad	0x3fe2bb3e4c4a8bb1              # double 0.58535685444473107
	.quad	0x3feae66378577142              # double 0.84062360290730731
	.quad	0x3fad767eef908830              # double 0.057544676536295802
	.quad	0x3feca765a962dc1a              # double 0.89543421824680824
	.quad	0x3fd53bb2f620f314              # double 0.3317687419510531
	.quad	0x3fe8f256fad3300c              # double 0.7795824908184854
	.quad	0x3fea398ab7b58571              # double 0.8195241535251353
	.quad	0x3fede019b54386d7              # double 0.93360600855904863
	.quad	0x3feffc54303b8cc5              # double 0.99955186291153863
	.quad	0x3fea883973a78568              # double 0.82912895764108629
	.quad	0x3fe4e7a5990b8640              # double 0.6532772053871625
	.quad	0x3feaa556c9934bcc              # double 0.83268298502150051
	.quad	0x3f9431cf7caacf00              # double 0.019721261962970082
	.quad	0x3fc46d61285719e0              # double 0.15958799810159885
	.quad	0x3fbb905bfeb88a60              # double 0.10767149895449668
	.quad	0x3fe21470a9f85599              # double 0.56499512860561929
	.quad	0x3fe1c47f860bdd0a              # double 0.55523658924985964
	.quad	0x3fd76ca6171da902              # double 0.36600639588745321
	.quad	0x3fcaa6b69ee66850              # double 0.20821268805304038
	.quad	0x3fe7cff22fb148c0              # double 0.74413403811401935
	.quad	0x3fd0517c530c5b3e              # double 0.25497348890478466
	.quad	0x3fdbbb434ada0628              # double 0.43330461797458719
	.quad	0x3fe8854bc1448035              # double 0.76627147433828802
	.quad	0x3fd8612601c4d9da              # double 0.38092947170971814
	.quad	0x3feaafc75442f68e              # double 0.83395735223139567
	.quad	0x3fe1f586e3c2a7ac              # double 0.56122154697844939
	.quad	0x3faecd70902fff50              # double 0.060161130524646667
	.quad	0x3fd1f90ca4e80130              # double 0.28082576851012941
	.quad	0x3feb8713cb9c4490              # double 0.8602389313474692
	.quad	0x3fb27c832ec149b8              # double 0.072212408938219563
	.quad	0x3fbebc31ec02fc40              # double 0.12005912792209106
	.quad	0x3fee4cc78c941c03              # double 0.94687249619244118
	.quad	0x3fd17262d332491a              # double 0.27260656952525297
	.quad	0x3fec081a62273777              # double 0.87598914309067666
	.quad	0x3fe7913a776f09b2              # double 0.73647807433035539
	.quad	0x3fda5ed3d158385c              # double 0.41203780597505157
	.quad	0x3fa069ddaebda660              # double 0.032057693081537719
	.quad	0x3fdb8e223d416d34              # double 0.430550155467887
	.quad	0x3fe0a9634a6e0a2f              # double 0.52067722832754793
	.quad	0x3fe61e2d540a1756              # double 0.6911837235827345
	.quad	0x3fd912dd03ca3ce4              # double 0.3917763268481862
	.quad	0x3fae44898d791200              # double 0.059116648215908896
	.quad	0x3fe1404f42d4c9cd              # double 0.53910029461831643
	.quad	0x3fda9326f8979712              # double 0.415231459394236
	.quad	0x3fe95de00cccc05a              # double 0.7927093744274416
	.quad	0x3fedda36cbacca28              # double 0.9328874567057186
	.quad	0x3fcbf93d04e1d844              # double 0.21854365099324202
	.quad	0x3f99e9504214f180              # double 0.025304082902253722
	.quad	0x3fe9c2a23db4c1dd              # double 0.80500900318116531
	.quad	0x3fea3631c826edd2              # double 0.81911553470802745
	.quad	0x3fc9e6b6b9bda878              # double 0.20235332555177243
	.quad	0x3fdeb8d83f4fee0c              # double 0.48003202612719131
	.quad	0x3fb722ec802cb810              # double 0.090376645367286068
	.quad	0x3f8e3b46abdb6680              # double 0.014761497611675667
	.quad	0x3fca321c7e442e94              # double 0.20465427556370186
	.quad	0x3fe2dc6f4e037396              # double 0.58940854298599521
	.quad	0x3fe0cfdcd2f613a2              # double 0.5253738518082296
	.quad	0x3fccd3c173941ccc              # double 0.22521227019772139
	.quad	0x3fe2ddccf716c04c              # double 0.58957527408166177
	.quad	0x3fd3afa43d8e1346              # double 0.30759531031826659
	.quad	0x3fef621438f6c14b              # double 0.9807225334716717
	.quad	0x3fd2ffaf809b95dc              # double 0.29685580787039867
	.quad	0x3feb23bec7e7cde8              # double 0.84811343235054171
	.quad	0x3fe8dc9185fb4e9b              # double 0.77692485969824376
	.quad	0x3fdc38b4a58e5358              # double 0.44096103828024047
	.quad	0x3fee740864997b8c              # double 0.95166415832851347
	.quad	0x3fde2141ac043f40              # double 0.47077981756682519
	.quad	0x3fe47959c06a959e              # double 0.63981330472295261
	.quad	0x3fc6306458fbd9f8              # double 0.17335180611526346
	.quad	0x3fc35a78be214118              # double 0.15119847568212985
	.quad	0x3fe50a52ce16579a              # double 0.65751018763943425
	.quad	0x3fdebb02cacbb028              # double 0.4801642399240813
	.quad	0x3fe7df3a1385353e              # double 0.74599937260214921
	.quad	0x3fc881883ad608a4              # double 0.1914530074391837
	.quad	0x3feb577e95f193d4              # double 0.85443047796126814
	.quad	0x3fe673fa7c4c7ce8              # double 0.70165752675157211
	.quad	0x3fe8b4a36e81b73a              # double 0.77205058654155967
	.quad	0x3feb046546febb7b              # double 0.84428657404156071
	.quad	0x3fee78c5b5455322              # double 0.95224271206334188
	.quad	0x3feaf2e3fd194d16              # double 0.84214972909322472
	.quad	0x3feae89134e555d0              # double 0.84088955241412044
	.quad	0x3fe606f636993bfa              # double 0.68834982551368218
	.quad	0x3fe83e528245395f              # double 0.75760770266951372
	.quad	0x3fb475956d024ca0              # double 0.079919184793015408
	.quad	0x3fe6fa700d45ec7c              # double 0.71807100860986806
	.quad	0x3fd0f6d985eb86b6              # double 0.26506650999190684
	.quad	0x3fe42b7bbb35fab6              # double 0.63030802311535328
	.quad	0x3fe4882cac876ac9              # double 0.6416228646952159
	.quad	0x3febe0d1a7ab7c5f              # double 0.87119372127552797
	.quad	0x3feec1485c0b830c              # double 0.96109407403500446
	.quad	0x3fef5e1474e25aa0              # double 0.98023436383194351
	.quad	0x3fc14e7abe2dcc70              # double 0.13520750318602692
	.quad	0x3fe757a17f7a3328              # double 0.72944712541502543
	.quad	0x3fe19d69821c7382              # double 0.55046534931499047
	.quad	0x3fa68b3b6aa12dc0              # double 0.044031006590184329
	.quad	0x3fc29c193db25220              # double 0.14538875114944094
	.quad	0x3fdaf186f19eb410              # double 0.42099164577194959
	.quad	0x3fe4285217d0ab62              # double 0.62992195750608126
	.quad	0x3feff5664e47adb2              # double 0.99870600976048807
	.quad	0x3fee0d2131aef303              # double 0.93910274223125645
	.quad	0x3fea9ca2511cff17              # double 0.8316203674548629
	.quad	0x3fdda549d145656e              # double 0.46321340023640445
	.quad	0x3f9a6ec5bad825c0              # double 0.025813188103745111
	.quad	0x3fb9da8bf7e8eec0              # double 0.10099100878226874
	.quad	0x3f833d1a825aa900              # double 0.0093938895255019084
	.quad	0x3fd91ea2ba8c00ac              # double 0.39249485223263991
	.quad	0x3fe7ff8e52a2b04a              # double 0.74994579448458265
	.quad	0x3fdf2b790fe8f082              # double 0.48702837518408881
	.quad	0x3feb530504160442              # double 0.85388422773406369
	.quad	0x3fe52bd81de729f7              # double 0.66160207596232012
	.quad	0x3feda47888dcbdbd              # double 0.92632700663482803
	.quad	0x3fe6a79221ebaca7              # double 0.70795542359464469
	.quad	0x3fe4d7b40e18cc9e              # double 0.6513309741334472
	.quad	0x3fe3eac56e8eeb26              # double 0.62240859597600173
	.quad	0x3fe8ced61d71aed8              # double 0.77524858237071737
	.quad	0x3fcc17158d6f1560              # double 0.21945447355225678
	.quad	0x3fe1ca21cfa7d252              # double 0.55592432553982918
	.quad	0x3facf6abb9930dd0              # double 0.05656944885552273
	.quad	0x3fe9f215219a9665              # double 0.81080109179738413
	.quad	0x3fef59b9f7b3d7c1              # double 0.97970293406864794
	.quad	0x3fc6cc8d5b512e00              # double 0.1781174369701688
	.quad	0x3fe08f0597f7162e              # double 0.51745872193050046
	.quad	0x3fdd289b0bd640c6              # double 0.45560337215375701
	.quad	0x3fe37d35fdfe559d              # double 0.60903453453163403
	.quad	0x3fd4cd8c7b7c0ca0              # double 0.32504570063628968
	.quad	0x3fb2f3e1c9cfc188              # double 0.074033843775174302
	.quad	0x3feef4a72aa8cff7              # double 0.96736486751478778
	.quad	0x3fe175df379ffd42              # double 0.54563866485833779
	.quad	0x3fd790b9c07f8c8e              # double 0.36820834921508883
	.quad	0x3fddedf69b0b9582              # double 0.46764912739885045
	.quad	0x3fe1de570f38bc51              # double 0.55839112256024681
	.quad	0x3fcd24508023853c              # double 0.22767072922492015
	.quad	0x3fec3e72c86f6e49              # double 0.88262309215083079
	.quad	0x3fdffbe9bbe6a52e              # double 0.49975055074408459
	.quad	0x3fe6271383c5b499              # double 0.69227004753851695
	.quad	0x3fe800f03051e3b6              # double 0.75011453092076041
	.quad	0x3fd9d049da1e7aa4              # double 0.40333792019547787
	.quad	0x3fdcb93e38ce09c4              # double 0.44880633876178089
	.quad	0x3fe49cba2abed80b              # double 0.64413174008109431
	.quad	0x3fee48dc977604b2              # double 0.94639424879291867
	.quad	0x3fe65cc46b69d50b              # double 0.69882412890606938
	.quad	0x3fd95565abbd42f8              # double 0.39583722850242919
	.quad	0x3fdebd283911513e              # double 0.48029523442280098
	.quad	0x3fe5ac2f822437ff              # double 0.67726874750383093
	.quad	0x3fc1dc6adf22e788              # double 0.13953910727815022
	.quad	0x3fc344f6ec7ca070              # double 0.15054213092048796
	.quad	0x3fc5d06fdb730374              # double 0.17042349067017037
	.quad	0x3fe1f1b208ba5ed7              # double 0.56075383858384498
	.quad	0x3fe4ee578b53fbda              # double 0.65409447872650195
	.quad	0x3fe73f5f930f1c81              # double 0.72648600313631573
	.quad	0x3fed7464e1d2bd18              # double 0.92045826059430436
	.quad	0x3fc3d617811d83ac              # double 0.15497106365640201
	.quad	0x3fe7f7f33d21796e              # double 0.7490173524818553
	.quad	0x3fc19ad4c31d963c              # double 0.13753757025840396
	.quad	0x3fc8521150e88920              # double 0.19000450564005522
	.quad	0x3fce7dcd5216ac44              # double 0.23821417339545026
	.quad	0x3f9815caa858f4e0              # double 0.023520628476252692
	.quad	0x3fdd641c8326332c              # double 0.45923531348744251
	.quad	0x3fe3818ba911594a              # double 0.60956366559074948
	.quad	0x3fccf6eea8f413ec              # double 0.22628577470473432
	.quad	0x3fe28c99643e0f17              # double 0.57966298655125825
	.quad	0x3fd4dc9f96124acc              # double 0.32596578269400989
	.quad	0x3fc8e9f713dc6614              # double 0.19464004964611148
	.quad	0x3fe1a8659689fc98              # double 0.55180625345373624
	.quad	0x3fc02b393b4d52a8              # double 0.12631907840354484
	.quad	0x3fda353ac285dd6e              # double 0.40949887272241525
	.quad	0x3fd7aaaaad7d355a              # double 0.3697916692952582
	.quad	0x3fe2200f14fbea98              # double 0.56641344164320895
	.quad	0x3fdbde248134a01c              # double 0.43543350808840997
	.quad	0x3fecc6f6f3bdb0f9              # double 0.89928767781887509
	.quad	0x3fe4e12f460e451d              # double 0.65248836214792372
	.quad	0x3fe2f08c427ba979              # double 0.59186375603648778
	.quad	0x3fd05fbffd56ea14              # double 0.2558441137331624
	.quad	0x3fb9af0edc30a750              # double 0.10032742381795612
	.quad	0x3fe8e4832d5deebf              # double 0.77789458142020595
	.quad	0x3fe5ada74ae78a3d              # double 0.67744793538833614
	.quad	0x3fbd926433ba9e98              # double 0.11551500571169482
	.quad	0x3fed8e273264f4a1              # double 0.92360267489097592
	.quad	0x3fe8e848f32026aa              # double 0.77835509763209143
	.quad	0x3fb0909a96c281d0              # double 0.064706479841795117
	.quad	0x3feab1d00a0b1db6              # double 0.83420564614873771
	.quad	0x3fef82c5c68e5ba5              # double 0.98471344738469623
	.quad	0x3fe81964f03dc9ad              # double 0.75309988901272151
	.quad	0x3fd73fc45f36745a              # double 0.36326703355900281
	.quad	0x3feb7dde94ba79ad              # double 0.85911492393988953
	.quad	0x3fc5246f262c702c              # double 0.16517438281960162
	.quad	0x3feff8d807fbc61d              # double 0.99912644919658399
	.quad	0x3feed65ed69cdfd9              # double 0.96366826931534455
	.quad	0x3fe956e648352c1c              # double 0.79185785391871688
	.quad	0x3fe3507903145dab              # double 0.60357332803225938
	.quad	0x3fec90cbaa809d53              # double 0.8926752405285846
	.quad	0x3fd7fb98f02e8a6a              # double 0.37473128752950535
	.quad	0x3fefe4e4ecebad7f              # double 0.99669119142110662
	.quad	0x3fe91b2d236facc6              # double 0.78456742211474118
	.quad	0x3fc59c49f9969c7c              # double 0.16883206068925805
	.quad	0x3fd65e9ae803f626              # double 0.34952423722993087
	.quad	0x3fdf50dc6ec55868              # double 0.4893103677508237
	.quad	0x3fd077f798508bd8              # double 0.25732221483684503
	.quad	0x3fe98f2949ff4d01              # double 0.79872574284164
	.quad	0x3fe807a6677e809d              # double 0.75093383992863816
	.quad	0x3fe3eb5f33b7101e              # double 0.62248191929439023
	.quad	0x3fa3bea1af39ff00              # double 0.038563778533896809
	.quad	0x3fdfae55714931d8              # double 0.49501548827245534
	.quad	0x3fd38c26f4cc1432              # double 0.30542920976614873
	.quad	0x3fcaa4af1c0c48d4              # double 0.20815075749903278
	.quad	0x3feb70b4fd171095              # double 0.85750817710551763
	.quad	0x3fa7e9413d37afa0              # double 0.046701468203394159
	.quad	0x3fe454bd5aa9995b              # double 0.63534419734495928
	.quad	0x3fe9ea120735b7a5              # double 0.80982304962320895
	.quad	0x3fd1e8bda9293122              # double 0.27983037490482066
	.quad	0x3f9d008088ecef20              # double 0.02832222781874727
	.quad	0x3fd257b960275552              # double 0.2866042555809446
	.quad	0x3fe8bfd547ae2ce9              # double 0.77341712951729591
	.quad	0x3fc7e2ab72dea4cc              # double 0.18660491093513654
	.quad	0x3fb84b5d68115498              # double 0.094899976641800499
	.quad	0x3fcb685f59d796fc              # double 0.21412269484351742
	.quad	0x3fd66278da96cfc0              # double 0.34976025911896258
	.quad	0x3fe30b0f06e79004              # double 0.59509993885558332
	.quad	0x3feb9fd918b88019              # double 0.86326269939673062
	.quad	0x3fddf6221dba3502              # double 0.46814778235496146
	.quad	0x3fa3c0447f5db7b0              # double 0.038576260135286033
	.quad	0x3fef5f20755bb48c              # double 0.98036215707328855
	.quad	0x3fb998f7d56c7af8              # double 0.09999035797634892
	.quad	0x3fe2cb142a7a6519              # double 0.58728988930230053
	.quad	0x3fe184c9154033ab              # double 0.54745916510147674
	.quad	0x3fc5863d3c5d71fc              # double 0.16815915534506576
	.quad	0x3fe331d910ecf6b4              # double 0.59983495050229019
	.quad	0x3fc6a43a939961bc              # double 0.176886865682503
	.quad	0x3fda19fe698df50a              # double 0.40783653553064936
	.quad	0x3fd5ef8bfdec78cc              # double 0.34274577901113612
	.quad	0x3fd41ec2b34d7fbc              # double 0.31437747488052614
	.quad	0x3fe6a99bbac98dca              # double 0.70820414049051661
	.quad	0x3fed6554e4f507dd              # double 0.91861958234971619
	.quad	0x3fe02d838647444d              # double 0.50555587984320882
	.quad	0x3fc1687912321fe8              # double 0.13600076092211499
	.quad	0x3fe3567aacd288a1              # double 0.60430654291510078
	.quad	0x3fe077acdb408445              # double 0.51460879156741923
	.quad	0x3fac8507feee4e90              # double 0.055702447766774132
	.quad	0x3fe3eb4aa869c116              # double 0.62247212308105548
	.quad	0x3fdd1df68f562f9c              # double 0.4549538039943799
	.quad	0x3fe29d9a907fe9ca              # double 0.58173874113645607
	.quad	0x3fd3bd7c763e7216              # double 0.30844031855829834
	.quad	0x3fc849336285cd94              # double 0.18973390875508456
	.quad	0x3fccc12fd842c9f8              # double 0.22464559611906032
	.quad	0x3f7b6a858c662c80              # double 0.0066933838592247996
	.quad	0x3fc88d5f73d1fe78              # double 0.19181435733115726
	.quad	0x3f9612039069cdc0              # double 0.021553092660224982
	.quad	0x3fef9979f96dd58f              # double 0.98748491970643381
	.quad	0x3fef4aeda0339504              # double 0.97789651193002713
	.quad	0x3fe052450eba4a4c              # double 0.51004269482138787
	.quad	0x3fedd70edddcd652              # double 0.93250220615909485
	.quad	0x3fdda66f26b93f72              # double 0.4632833364639658
	.quad	0x3faa067c16034c00              # double 0.0508307244177999
	.quad	0x3fd4abb0b18636c4              # double 0.32297913872103501
	.quad	0x3fed87c9dce935d6              # double 0.92282574793505989
	.quad	0x3fc0f35d3e7cf8a8              # double 0.13242688704662453
	.quad	0x3fc5f436f4ed2d3c              # double 0.17151534041691174
	.quad	0x3fd33a31adf9ec2c              # double 0.30042688360089431
	.quad	0x3fd8925c28327736              # double 0.38393310475827336
	.quad	0x3fd74f438d4ed524              # double 0.36421288299182408
	.quad	0x3fe8ec57766ac44f              # double 0.77885029915172221
	.quad	0x3fe5ad9b940b3a5b              # double 0.67744234957519767
	.quad	0x3fe6fd8d9ded1c83              # double 0.71845131726230738
	.quad	0x3fe1c077440481aa              # double 0.55474437031448542
	.quad	0x3fe8063b8095a683              # double 0.75076079477476332
	.quad	0x3fe34e7d6e8df6c6              # double 0.60333129494366555
	.quad	0x3fe0ab81e918355c              # double 0.52093596960336752
	.quad	0x3fc8199d942b9b00              # double 0.18828172430877288
	.quad	0x3fbe5e402b264b80              # double 0.11862565091568733
	.quad	0x3fc8ba1f7d70b2fc              # double 0.19318002343188556
	.quad	0x3fe97dc8c97d3219              # double 0.79660453179673418
	.quad	0x3fd863f7c949cef0              # double 0.3811015573221388
	.quad	0x3fcdbeb2556726a8              # double 0.23238209886613004
	.quad	0x3fe8e2e5443d7a5d              # double 0.77769721344140985
	.quad	0x3fd45ea69ecac816              # double 0.31827703005831276
	.quad	0x3fe409e527944c35              # double 0.626207902243897
	.quad	0x3fd94273773f4312              # double 0.39468084950662885
	.quad	0x3fdccdae1eba36f6              # double 0.45005372048113601
	.quad	0x3f885dbb15b5f9c0              # double 0.011897527313291856
	.quad	0x3fecc439dba863e4              # double 0.8989533701125052
	.quad	0x3fe3d9669fc673fc              # double 0.62028819280715153
	.quad	0x3fd35e10ab4db66c              # double 0.30261627892364262
	.quad	0x3fd91b6cf1c580a0              # double 0.39229892359254315
	.quad	0x3fc67fed89078e1c              # double 0.17577904883283757
	.quad	0x3fd59cf1b047a6f6              # double 0.33770410742600576
	.quad	0x3fe14ea14ef87fe7              # double 0.54084840225186503
	.quad	0x3fb8a742b42aa378              # double 0.096302193628288069
	.quad	0x3fa7d6959f5ef300              # double 0.046559024528937343
	.quad	0x3fdf79b45fdea55c              # double 0.49180325853611406
	.quad	0x3fb26b1a9a21ba28              # double 0.071946776037045468
	.quad	0x3fe6a762aeaba5a4              # double 0.70793279757815641
	.quad	0x3fdbc515771ed516              # double 0.43390404351096501
	.quad	0x3fd16ed024a1f104              # double 0.27238849236870544
	.quad	0x3fe499f926e1affd              # double 0.6437955626875006
	.quad	0x3fe91ae43f941d58              # double 0.78453266542139044
	.quad	0x3fef9eb60be5fa42              # double 0.98812391590019666
	.quad	0x3fbbaac7afe30740              # double 0.108074646416779
	.quad	0x3fe38ab004382e40              # double 0.61067963432419248
	.quad	0x3fbc0ada48bc9828              # double 0.10954059863851795
	.quad	0x3f97f8f3ad944300              # double 0.023410613507681255
	.quad	0x3fcbcc9dd1b726fc              # double 0.21718189945232058
	.quad	0x3fa5330f05938770              # double 0.04140517180509462
	.quad	0x3fe736f66156c72d              # double 0.72545928012389072
	.quad	0x3fc948057408f4b4              # double 0.19751041570444772
	.quad	0x3fd125215e85fa5e              # double 0.26789125662609148
	.quad	0x3fe8a0ecce0e2843              # double 0.76964416737724439
	.quad	0x3faecc9bbe495160              # double 0.060154787996597348
	.quad	0x3f89b95dc8559a80              # double 0.012560589481563911
	.quad	0x3fdae313d9f74256              # double 0.42010971341827508
	.quad	0x3fdb1aaff4dc2266              # double 0.42350386535739515
	.quad	0x3fe48b800eb2ba6a              # double 0.64202883597120075
	.quad	0x3fd3fd25c8d1b820              # double 0.31232590304614583
	.quad	0x3fd3e0be06d5ab9e              # double 0.31059218089529306
	.quad	0x3fd42828b983bc64              # double 0.31495111576709278
	.quad	0x3feed494eb082466              # double 0.9634499159302663
	.quad	0x3fd08712e25ae17c              # double 0.25824424843769811
	.quad	0x3fe552afcca57330              # double 0.66634359331110282
	.quad	0x3fd739a80aba6fb6              # double 0.36289406821901637
	.quad	0x3fc17f4b046ba168              # double 0.13669717517701518
	.quad	0x3fca9334caaa3dbc              # double 0.20761737724067852
	.quad	0x3fd2f6336768c798              # double 0.29627690409244556
	.quad	0x3fe3935be21402d2              # double 0.61173814922229952
	.quad	0x3fd522f4de649e8e              # double 0.33025857656546342
	.quad	0x3fd95dae1bb3878a              # double 0.39634278016284752
	.quad	0x3fd02175ba9424d2              # double 0.25204222889494787
	.quad	0x3fe1b65ee0f9f76e              # double 0.55351203861913034
	.quad	0x3fd55eccb8318e88              # double 0.3339111136212769
	.quad	0x3fee5057eb117866              # double 0.94730754768148695
	.quad	0x3fd38d4cae3b82e4              # double 0.30549923910989052
	.quad	0x3fe793185dfeb64a              # double 0.73670595510856995
	.quad	0x3fe56492bdf9adca              # double 0.66852700333168369
	.quad	0x3fdec2de2557958c              # double 0.48064378401462515
	.quad	0x3fe97003aff177c1              # double 0.79492363323128512
	.quad	0x3feb2c2be245f94b              # double 0.84914201921473287
	.quad	0x3fae7efe40d59810              # double 0.059562631048535875
	.quad	0x3feabde7987f16a5              # double 0.83568172249279782
	.quad	0x3fd70c5d647d75a8              # double 0.36012968839153325
	.quad	0x3fe5e6c2019459b9              # double 0.68441868122572835
	.quad	0x3fef0f57e10d97e2              # double 0.97062295871432647
	.quad	0x3fec0a68405fb729              # double 0.87627041409516437
	.quad	0x3fe14191d2f3962e              # double 0.53925410462824686
	.quad	0x3fd791cdaecdb15e              # double 0.3682741362634
	.quad	0x3fecfa36a18ce47a              # double 0.90554362824253976
	.quad	0x3fc0bc177583f3dc              # double 0.13074010122355062
	.quad	0x3fbfa8663d03dff0              # double 0.12366332044246042
	.quad	0x3fe95ada50069acd              # double 0.79234042768515567
	.quad	0x3fe4dfa220bf7821              # double 0.65229898830489585
	.quad	0x3fe55258b59a0693              # double 0.66630206555437821
	.quad	0x3fcfb09dac686d2c              # double 0.2475773898921515
	.quad	0x3fa2ca719f76a110              # double 0.036700773921724772
	.quad	0x3fe93b3a1ff65321              # double 0.78847986452692365
	.quad	0x3fdc0010ebfb7356              # double 0.43750403447284236
	.quad	0x3feda0f1b0eff56d              # double 0.92589649732660251
	.quad	0x3fe367d685be305e              # double 0.60642553445496694
	.quad	0x3fedccd7950fab2d              # double 0.93125514138714538
	.quad	0x3fe3e7c2d250739c              # double 0.62204114033703517
	.quad	0x3feffbda3f9f97ce              # double 0.99949371744582449
	.quad	0x3fec47b9c445806a              # double 0.88375557264590765
	.quad	0x3fd71e29b5d26932              # double 0.36121599918409963
	.quad	0x3fe2961bbf75333d              # double 0.58082377809623831
	.quad	0x3fee90680c70800e              # double 0.9551277392347417
	.quad	0x3febaabd997a5643              # double 0.86459236122272676
	.quad	0x3fd34da16fe1c4ca              # double 0.30161319662063291
	.quad	0x3fb7b5e15ad0ef00              # double 0.092619023010168888
	.quad	0x3fea8092a5189be0              # double 0.82819492574060049
	.quad	0x3fdd75a33b904210              # double 0.46030503098248321
	.quad	0x3fe4f00a7285a416              # double 0.65430185668549501
	.quad	0x3fef0d421cc48e29              # double 0.97036843889913371
	.quad	0x3fdc142a4ab94dac              # double 0.43873078629732265
	.quad	0x3fc5373cdd890a54              # double 0.16574822251466748
	.quad	0x3fc5a1618041fc50              # double 0.1689874531038833
	.quad	0x3fc9bcd4f0375b30              # double 0.20107518891628606
	.quad	0x3fe7f790cf072a5c              # double 0.74897041735796276
	.quad	0x3feaf816b0d765e8              # double 0.84278425731025397
	.quad	0x3fdaf06f34e6f1f6              # double 0.42092495123122775
	.quad	0x3fd2134014d85866              # double 0.28242494617132363
	.quad	0x3fe61cb78c57e348              # double 0.6910054913597401
	.quad	0x3fdc96fdf35a42dc              # double 0.44671581997776655
	.quad	0x3fee588abe9e5579              # double 0.94830834608244097
	.quad	0x3fd45ede4b0329f6              # double 0.31829030347276388
	.quad	0x3fe07d91a362a6f7              # double 0.51532823477938805
	.quad	0x3fe37d3e408d7fe5              # double 0.60903847320514315
	.quad	0x3fdcaa793f699b10              # double 0.44790488426808484
	.quad	0x3f9881a9fdf47ea0              # double 0.023932129025637239
	.quad	0x3fd6f1d063ece3f2              # double 0.35850915678344031
	.quad	0x3fcdb98d67812654              # double 0.23222510866098622
	.quad	0x3febffb91c7be1ce              # double 0.8749661976171923
	.quad	0x3fd4c88ba3e5f102              # double 0.32474032407459685
	.quad	0x3fe20458ccc90d7b              # double 0.56303062436238294
	.quad	0x3fefde59e189cad3              # double 0.99589246797980945
	.quad	0x3fedda7ce4a3b7af              # double 0.9329208818069129
	.quad	0x3fe67cc993fa1b2c              # double 0.70273283864739744
	.quad	0x3faa8ab4ac09a260              # double 0.051839490891158801
	.quad	0x3fe482038db20d8c              # double 0.64087083506494613
	.quad	0x3fe7c288066cce1b              # double 0.74249650244604781
	.quad	0x3feccf1782ae339a              # double 0.9002797653534913
	.quad	0x3fe5f8fc9b6fe994              # double 0.6866438899881353
	.quad	0x3fca6bfcb0090bd0              # double 0.2064205035731832
	.quad	0x3fbf4f78020172c8              # double 0.12230634736028911
	.quad	0x3fe9b2e9b19bd8e3              # double 0.80308994950499046
	.quad	0x3fbc720a80a42160              # double 0.11111512795117084
	.quad	0x3fd2c2b25c51b898              # double 0.29313334479855646
	.quad	0x3fd42f0adac50f96              # double 0.3153712402747656
	.quad	0x3fe3ae3fbb2db721              # double 0.61502062376323263
	.quad	0x3fd44aad09cbca7e              # double 0.31705785709997503
	.quad	0x3fbd28a958d68058              # double 0.11390169543165152
	.quad	0x3faf5bb248609b00              # double 0.061246463141563012
	.quad	0x3fcb895b8706b928              # double 0.21512931912497746
	.quad	0x3fdc59890146f60a              # double 0.44296479344106443
	.quad	0x3fea4e2a1a42041c              # double 0.8220415604447484
	.quad	0x3fd4a61c3262ca76              # double 0.32263855858324264
	.quad	0x3feaef22e07c3493              # double 0.84169143528710533
	.quad	0x3fe9a13e3fa62a9a              # double 0.80093300277197277
	.quad	0x3f672dde95775800              # double 0.0028294894543519078
	.quad	0x3fed3a4c1a8aeeba              # double 0.91336636718866449
	.quad	0x3fd2f6428b2cfea6              # double 0.29628051368124841
	.quad	0x3fc8a9693af7d1cc              # double 0.19267001513766358
	.quad	0x3fc6d6f810ef6154              # double 0.17843533350856922
	.quad	0x3fb9da44f007fdc8              # double 0.10098677501809228
	.quad	0x3fedcab19ddd41f0              # double 0.93099289734715107
	.quad	0x3fefc1ec8eda022f              # double 0.99242236996366794
	.quad	0x3fe12abbd48bff09              # double 0.53646651757296226
	.quad	0x3fd4104519be7e32              # double 0.31349303735803169
	.quad	0x3fb62984feb36a38              # double 0.086571037466833256
	.quad	0x3fb2b9ca30bf35f0              # double 0.073147427464583137
	.quad	0x3fef2be22eb73837              # double 0.97410687565002873
	.quad	0x3feeffe6b86ff448              # double 0.96873794577516836
	.quad	0x3fbdacaf05a53540              # double 0.11591619384599472
	.quad	0x3fee978ad7cc9c22              # double 0.95599882267277203
	.quad	0x3fa725b01482cc60              # double 0.045209410194183119
	.quad	0x3fdff37e05ab5790              # double 0.49923658898966838
	.quad	0x3fe9c90c153d5945              # double 0.80579189442031718
	.quad	0x3fec7a041448e4bf              # double 0.8898945232569061
	.quad	0x3fe57ad999d7593c              # double 0.67124633833990499
	.quad	0x3fa8c3fa38025040              # double 0.048370189034500743
	.quad	0x3fdd790635529236              # double 0.46051173407821311
	.quad	0x3fd182114c47186a              # double 0.27356369446750384
	.quad	0x3fde78280f4bf3bc              # double 0.47608376973931477
	.quad	0x3fe8147f2fdb2fc0              # double 0.75250205370820566
	.quad	0x3fda4608bcc2cd46              # double 0.41052454408346184
	.quad	0x3fe25f23a9b604ee              # double 0.57411368509943173
	.quad	0x3feda8095d61037a              # double 0.92676227796628941
	.quad	0x3fed610d37d5c0ce              # double 0.91809712319629866
	.quad	0x3fcdb703cfdbdafc              # double 0.23214767121654478
	.quad	0x3fc98bc54bf13d08              # double 0.19957796295282315
	.quad	0x3fb2d7df2ae7ae68              # double 0.073606441473822337
	.quad	0x3fe58df2a90aab87              # double 0.67357762351945005
	.quad	0x3fe7935ba528ec35              # double 0.73673803575309782
	.quad	0x3fe2d6e46da6f142              # double 0.5887319699900575
	.quad	0x3fb14228718e9410              # double 0.06741574070345302
	.quad	0x3fdca9bdc0a752fa              # double 0.44786018194035615
	.quad	0x3facc4fabc5b05d0              # double 0.056190333836194761
	.quad	0x3fb29192106f8608              # double 0.072533730518920092
	.quad	0x3fe3796518677c51              # double 0.60856871382191902
	.quad	0x3fd3d9b726c9c9c0              # double 0.3101632956305842
	.quad	0x3f93e18be533d000              # double 0.019415078987506718
	.quad	0x3feecf1daf660c3f              # double 0.96278270967048473
	.quad	0x3fd13a7a227675e6              # double 0.26919415822507486
	.quad	0x3fe347676bc17520              # double 0.6024663071254146
	.quad	0x3fe28aef295b501f              # double 0.57945974423865099
	.quad	0x3fee6ca647a6ba16              # double 0.95076288217916516
	.quad	0x3fd1a68307ba17f8              # double 0.275788075967625
	.quad	0x3fee531d733f680f              # double 0.9476458788806229
	.quad	0x3fcf2cc71a26de08              # double 0.2435540082640133
	.quad	0x3feaf94af90edf2b              # double 0.84293125766905541
	.quad	0x3fd7ec671cb5028c              # double 0.37380388072418991
	.quad	0x3fc83b565619a21c              # double 0.18931082920177367
	.quad	0x3fe7f1c81155d18f              # double 0.74826434503352057
	.quad	0x3fee4f522da4ca41              # double 0.94718274035250982
	.quad	0x3fef90b875687401              # double 0.98641608172658845
	.quad	0x3fdddaa49cf73aa6              # double 0.46646991089520851
	.quad	0x3febe023c39ed80e              # double 0.87111080367208316
	.quad	0x3fe5ef38b582eb53              # double 0.68545184565969419
	.quad	0x3fe2476537b30e18              # double 0.5712152564887587
	.quad	0x3fd207494c6ee6ba              # double 0.28169472183399658
	.quad	0x3fdc22fb5920225e              # double 0.43963512138046734
	.quad	0x3fef95b1e123ef89              # double 0.98702329609612704
	.quad	0x3fdcb3807f7942a4              # double 0.44845592926598443
	.quad	0x3fef7ecdcad4f2a8              # double 0.9842289887961515
	.quad	0x3fe7ae120e17e6e8              # double 0.73999884369478952
	.quad	0x3fe19edbc6cc2053              # double 0.55064190700160009
	.quad	0x3febecc557d0ba24              # double 0.87265269423898361
	.quad	0x3feff30db6c06f46              # double 0.99841962522212024
	.quad	0x3fd7f506467d61a0              # double 0.37433010944143952
	.quad	0x3fd83927476881b0              # double 0.37848836873493052
	.quad	0x3fc6ed9698519b18              # double 0.17912561833801344
	.quad	0x3fa62d1233792af0              # double 0.043312615187991343
	.quad	0x3fdad7ea3768d066              # double 0.41942840014531269
	.quad	0x3fd7bfff83fa2d66              # double 0.37109363449481803
	.quad	0x3fda5159e55a1a26              # double 0.41121528051044931
	.quad	0x3fd86b88f8ac73e2              # double 0.38156341824088547
	.quad	0x3fba4f1359acb780              # double 0.10276909770320053
	.quad	0x3fcef3333b37af10              # double 0.24179687873344635
	.quad	0x3fed77b8b608d5aa              # double 0.92086444429030689
	.quad	0x3fcd94a00158997c              # double 0.23109817567565105
	.quad	0x3fc495315d1f79c4              # double 0.16080300375956658
	.quad	0x3fcde6bf58d49174              # double 0.23360435330790674
	.quad	0x3feaa1acf9b5c658              # double 0.83223580142493869
	.quad	0x3f9b8ea67ae09680              # double 0.026911355256876934
	.quad	0x3fe128fb4e7b22d0              # double 0.53625264480896284
	.quad	0x3fe768c333578741              # double 0.73153839137760468
	.quad	0x3fd19605aba5c6a6              # double 0.27478162538964523
	.quad	0x3fd7cc0cd2ee4f88              # double 0.37182922934265905
	.quad	0x3fe4f905621bd975              # double 0.655398074740147
	.quad	0x3fd7d70a97ac85c4              # double 0.37250008403688306
	.quad	0x3fb729fa27fd4e60              # double 0.090484270823532054
	.quad	0x3fceaae7c7d52490              # double 0.23959061868143694
	.quad	0x3fe666a0f0af30ef              # double 0.70002791412983167
	.quad	0x3fe4a7f1a00ca19d              # double 0.64550095805775565
	.quad	0x3fef653b6b548f99              # double 0.98110743487312668
	.quad	0x3fc4b3a14328d35c              # double 0.1617318704535603
	.quad	0x3fde1969810edfcc              # double 0.47030103305177984
	.quad	0x3fc16748ea71327c              # double 0.1359645027863684
	.quad	0x3fec156c911b9dc3              # double 0.87761524526006729
	.quad	0x3fcb39a772725a30              # double 0.21269696319787235
	.quad	0x3fca484c12050e60              # double 0.20533133392210612
	.quad	0x3fe1bd3824425d48              # double 0.55434805948144916
	.quad	0x3fcacbe2d7827228              # double 0.20934711001327
	.quad	0x3feba894f14d2d0b              # double 0.86432883385842396
	.quad	0x3fc569f1acf5dc04              # double 0.16729565568286386
	.quad	0x3fefd1a8ff6ff56e              # double 0.99434327974419801
	.quad	0x3fe945f8e842dd54              # double 0.78979153979791272
	.quad	0x3fba82d8e8a26f68              # double 0.10355907134583975
	.quad	0x3fd6b431005403f6              # double 0.35474801094102248
	.quad	0x3fed073c5e753c7e              # double 0.90713327835864255
	.quad	0x3f7969435b763280              # double 0.0062039023536156757
	.quad	0x3fd781b236e35c80              # double 0.3672910247818848
	.quad	0x3fde74910615492c              # double 0.47586465448434256
	.quad	0x3fe549f454f19307              # double 0.66527763929897865
	.quad	0x3fc8563bc69b7e3c              # double 0.19013163755060869
	.quad	0x3fd0d6950798c766              # double 0.26309705488085056
	.quad	0x3fe6dbe6bb29fd57              # double 0.71434341960404424
	.quad	0x3fe029beed5b8237              # double 0.50509592398527203
	.quad	0x3fdbe40d58d4b342              # double 0.4357941977967138
	.quad	0x3fe9f8c5d0dbb9d8              # double 0.81161776344907377
	.quad	0x3fee01bc4f04ca75              # double 0.93771186288206698
	.quad	0x3fe3d1f5fd267a88              # double 0.61937999194545146
	.quad	0x3fd8c547b12393e6              # double 0.38704101847389294
	.quad	0x3fe52cc587b7a0c9              # double 0.66171528346333119
	.quad	0x3fe8f5abbcec226e              # double 0.77998911761194534
	.quad	0x3fedf3221fe392b8              # double 0.9359293577986909
	.quad	0x3fe391be9945ab85              # double 0.61154107986418238
	.quad	0x3fc13dd98097c804              # double 0.13470000056219089
	.quad	0x3fe1dd1423c60bb7              # double 0.55823714243921685
	.quad	0x3fc17a977e27b988              # double 0.13655370387955323
	.quad	0x3fd1085550a90480              # double 0.26613362194991197
	.quad	0x3fc6099db411e5ec              # double 0.1721684579131727
	.quad	0x3fe12846e162bd0c              # double 0.53616661091464968
	.quad	0x3feaba4feda4f59c              # double 0.8352431909076361
	.quad	0x3fe05dd8cc580531              # double 0.51145591650871414
	.quad	0x3feb4214326ff399              # double 0.85181627131497628
	.quad	0x3fe0fc27a43848be              # double 0.53078062128249548
	.quad	0x3fe3b775a3350b0a              # double 0.61614496113210859
	.quad	0x3fb03fda26331918              # double 0.063474306417536375
	.quad	0x3fe238421d69c47c              # double 0.56936746353871071
	.quad	0x3fd1d169c2d57e68              # double 0.27840656306032097
	.quad	0x3fe309424eed9dca              # double 0.59488025108014964
	.quad	0x3fe3c7f0c9025659              # double 0.61815680751414981
	.quad	0x3fee0d33730fc36e              # double 0.93911144707645433
	.quad	0x3fe21052ab758ad3              # double 0.56449254501452584
	.quad	0x3fe8fba89d99936b              # double 0.78072005063277794
	.quad	0x3fefec75ad888ae4              # double 0.99761470692859832
	.quad	0x3fefcb982700aa02              # double 0.99360282533353961
	.quad	0x3fef7df913b9db3d              # double 0.98412755825743369
	.quad	0x3fc870e03fdcd320              # double 0.19094470136919828
	.quad	0x3f951266a21d7080              # double 0.020578006405557847
	.quad	0x3fe17867d9b81a63              # double 0.54594795726081846
	.quad	0x3feb9030bfd34e80              # double 0.86135137048627541
	.quad	0x3fd39dec2ea402c0              # double 0.30651382975342401
	.quad	0x3fede09636281d3f              # double 0.93366537644843806
	.quad	0x3fde03091bf55f32              # double 0.46893527727432904
	.quad	0x3fdb89c5f70323e2              # double 0.4302840149144328
	.quad	0x3fd8b395ee6314ec              # double 0.38596103935226611
	.quad	0x3fa204c49d4569d0              # double 0.035192627142084043
	.quad	0x3fe95043e8330d2b              # double 0.79104800559472233
	.quad	0x3fe1ce4282cc8772              # double 0.55642819925945575
	.quad	0x3fd278d0f1b9ee3a              # double 0.28862403493960509
	.quad	0x3fdd4eec5e717a38              # double 0.45794209692931842
	.quad	0x3fe4b18aac42baa0              # double 0.6466725697008151
	.quad	0x3fed16327437d3b4              # double 0.9089596052059421
	.quad	0x3fe218a08c4e1eaf              # double 0.56550624278403017
	.quad	0x3fe8d503782096f6              # double 0.77600263082851373
	.quad	0x3fd6c1d14c4ba4ca              # double 0.3555796856949881
	.quad	0x3fea1fbb8cb32cb2              # double 0.81637361031007161
	.quad	0x3fe341a57cfafc9a              # double 0.60176348123777079
	.quad	0x3fc140a856bad4a0              # double 0.13478569254735806
	.quad	0x3fced4c27c80b22c              # double 0.24086791114076911
	.quad	0x3fe5c81e96182c32              # double 0.68067864718739757
	.quad	0x3fd216a0cf42f32e              # double 0.28263111343749159
	.quad	0x3fec2b88d30f844b              # double 0.88031426642204147
	.quad	0x3fe92ce21d399155              # double 0.7867289133833234
	.quad	0x3fef2f2fa7202e6d              # double 0.97451002732982561
	.quad	0x3fe6f9d2e792b359              # double 0.71799607495413931
	.quad	0x3fe4078f9e1003a6              # double 0.62592297431557564
	.quad	0x3fe2b91803c0f850              # double 0.58509445889627365
	.quad	0x3fd0c6ad880431f4              # double 0.26212633402681651
	.quad	0x3fdb1ee428de4c08              # double 0.42376045218514991
	.quad	0x3fe9ea58d65233cc              # double 0.80985681399908449
	.quad	0x3fb58bf8c59f9038              # double 0.084167049644350622
	.quad	0x3fe288a4b432747d              # double 0.57918009943718085
	.quad	0x3fd35ced24511778              # double 0.30254677340086955
	.quad	0x3fe8e5e8bb36d1a8              # double 0.77806507649670653
	.quad	0x3fd9b6a4b8542bc4              # double 0.40177267075403855
	.quad	0x3fee98dcd1ab3b52              # double 0.95615998221351561
	.quad	0x3fc61898442c1d48              # double 0.17262557343222285
	.quad	0x3fe8c77bf73ffd4e              # double 0.77435110369689553
	.quad	0x3fe6e667e9aa95eb              # double 0.71562572133978841
	.quad	0x3fdf5044f5be1d34              # double 0.48927425382904066
	.quad	0x3fe34d1e6482cca8              # double 0.60316390639345219
	.quad	0x3fec86c384df925d              # double 0.89145065261670775
	.quad	0x3fc46f3df7955174              # double 0.15964483822848374
	.quad	0x3fd8188c1f170770              # double 0.37649825130585324
	.quad	0x3fedcc956b4e96c9              # double 0.9312235923614135
	.quad	0x3fa45909329bece0              # double 0.039741790225855445
	.quad	0x3fea721cf4515056              # double 0.82642982214248195
	.quad	0x3fe236799bd0791c              # double 0.56914978439798203
	.quad	0x3fdbecb19a72e03e              # double 0.43632164080509372
	.quad	0x3fcb3e4a6e1b7d24              # double 0.21283846260392025
	.quad	0x3fd5eaeb384d1702              # double 0.34246330736310437
	.quad	0x3fb286a0fa4d8d68              # double 0.072366772755733444
	.quad	0x3fa45c1c5f84e9e0              # double 0.039765249881799525
	.quad	0x3f7c3d1b73aa6400              # double 0.0068942138992946767
	.quad	0x3fd45d2692b4343e              # double 0.31818546606593034
	.quad	0x3fee8353e15eaa93              # double 0.95353120820557746
	.quad	0x3fe3a082a509f388              # double 0.61334354623942122
	.quad	0x3fe0d75910f41449              # double 0.52628758727281266
	.quad	0x3fed88198f38835f              # double 0.92286375019839884
	.quad	0x3fe2e14170470c36              # double 0.58999702386097996
	.quad	0x3fde7ab993289db8              # double 0.47624053355181273
	.quad	0x3fd837d9b0daa518              # double 0.37840883513361367
	.quad	0x3fda737cbe8bd958              # double 0.41329878433261547
	.quad	0x3fe3b176dabd41f0              # double 0.61541311953084055
	.quad	0x3fe73c84a5edd68b              # double 0.72613747032183207
	.quad	0x3fe96a44da28c2a5              # double 0.79422228440497078
	.quad	0x3fde492485cf58b6              # double 0.47321427409532235
	.quad	0x3fe733820cce4480              # double 0.72503759862060235
	.quad	0x3fe6e94730fdfd6f              # double 0.71597632950571988
	.quad	0x3fd4a4a9ac9df7be              # double 0.3225502191270343
	.quad	0x3fb843dac7d3ae58              # double 0.094785379205569398
	.quad	0x3fe0eee1c949744b              # double 0.52916039766172085
	.quad	0x3fd6f03597eaf49a              # double 0.35841121516916419
	.quad	0x3fed10ec2d5bbaad              # double 0.90831574305578544
	.quad	0x3fdb6088a8ff86f6              # double 0.42776695731855285
	.quad	0x3fe184bbd37a8416              # double 0.54745284370813141
	.quad	0x3fc12637d3d78f68              # double 0.1339788231263086
	.quad	0x3fc375c24443040c              # double 0.15203121502966643
	.quad	0x3fabd706a8317280              # double 0.054374893218413156
	.quad	0x3fc1dc22cd3286c0              # double 0.13953051585581555
	.quad	0x3fdb2f0da48124bc              # double 0.42474690499200185
	.quad	0x3fe6746048450ab1              # double 0.70170606722998319
	.quad	0x3fc78dad459e7acc              # double 0.18401113414161896
	.quad	0x3fec4a23ec63760c              # double 0.88405033273346722
	.quad	0x3fe0a12461ae55fc              # double 0.51967066839523524
	.quad	0x3fd668c75081b7a4              # double 0.35014517652495614
	.quad	0x3fef5fd8340c37b1              # double 0.98044977346011397
	.quad	0x3fe13866d6d1640a              # double 0.53813497501971708
	.quad	0x3fbfa3a7d4857e78              # double 0.12359093607437355
	.quad	0x3feb9f1ec400991d              # double 0.86317384988504708
	.quad	0x3feaa59f90bf3d75              # double 0.8327176882830104
	.quad	0x3fe823e0cff24ad0              # double 0.75437965979139143
	.quad	0x3fed04d595e4758e              # double 0.90684012676108394
	.quad	0x3fed6dd3c8b1ee57              # double 0.91965665052652923
	.quad	0x3fc763223600a4d8              # double 0.18271281849710053
	.quad	0x3f9ccc5ffeafb3e0              # double 0.028123378677196942
	.quad	0x3fd2ab797cb7d362              # double 0.29171597651957459
	.quad	0x3fe690e7d98af934              # double 0.70518867958870723
	.quad	0x3fd7d83386273a90              # double 0.37257087803747257
	.quad	0x3fed5c7356757255              # double 0.91753546606521275
	.quad	0x3fd6cc84de166402              # double 0.3562328499625097
	.quad	0x3fe3ee3cf9a6a7cd              # double 0.6228318096157125
	.quad	0x3fda09f7b8b36748              # double 0.40685837781130774
	.quad	0x3fe391448ce38d9b              # double 0.61148288266524575
	.quad	0x3fd6b03df5a7860a              # double 0.35450695981680325
	.quad	0x3fe4b1d9ab14339f              # double 0.64671023763513691
	.quad	0x3fe4934a3de291ce              # double 0.64297973715707157
	.quad	0x3fed90ea1a64ca11              # double 0.92393975405713225
	.quad	0x3fa1f55fb9f779b0              # double 0.035075179530156375
	.quad	0x3fe22a1af82aa0ea              # double 0.56763981313727396
	.quad	0x3fca4e993bddab98              # double 0.20552363799228313
	.quad	0x3fe3a8c33b3f4870              # double 0.61435090610235754
	.quad	0x3fe70f933a8ddb2d              # double 0.72065125881531389
	.quad	0x3fee7f771b9126ae              # double 0.9530597246568584
	.quad	0x3fe8a67649dc0f71              # double 0.77032007623391341
	.quad	0x3fe2a54399991f88              # double 0.58267383575092513
	.quad	0x3fdbbcb16501cd44              # double 0.43339190353363599
	.quad	0x3fc08739e8a1393c              # double 0.12912677630306202
	.quad	0x3fdbfaf9586df150              # double 0.4371932376450518
	.quad	0x3fe1d13bb8c93cb0              # double 0.55679117289573377
	.quad	0x3fe5836fa2a49d23              # double 0.67229444280829787
	.quad	0x3fd411d10570ef54              # double 0.31358743220674978
	.quad	0x3fd322c9addacb4e              # double 0.29899827936167334
	.quad	0x3fce10ee6073d76c              # double 0.23489169797511111
	.quad	0x3fef05fa4df02185              # double 0.96947970602290978
	.quad	0x3fba1584b00607a0              # double 0.10189084336710019
	.quad	0x3fe3fa0b159f69fb              # double 0.62427286360917777
	.quad	0x3fcea92415a25970              # double 0.23953677231174764
	.quad	0x3fc8109b5a3579bc              # double 0.18800680069666764
	.quad	0x3fd9c35f8b3032f6              # double 0.4025496348629497
	.quad	0x3fe8219fd6272d5a              # double 0.75410453631176755
	.quad	0x3feea4a1fb8d036b              # double 0.95759677058241033
	.quad	0x3fd6e9e49c678d66              # double 0.35802569650532801
	.quad	0x3fc34a375956baac              # double 0.15070239889378934
	.quad	0x3feef4c3d816a20b              # double 0.96737854199187844
	.quad	0x3fe687ee045860f8              # double 0.70409298752477323
	.quad	0x3fb531a5b1660450              # double 0.082788806734258146
	.quad	0x3fc0c218f7a6d0a8              # double 0.13092338650097202
	.quad	0x3feb02ff2a236a92              # double 0.84411581258912549
	.quad	0x3fe13c1714646ef2              # double 0.53858522398829067
	.quad	0x3fb9e086ac427090              # double 0.10108224587969716
	.quad	0x3fb03bf1fd5595c0              # double 0.063414692258070282
	.quad	0x3fe36d8f05a1e9a6              # double 0.60712386226741866
	.quad	0x3fb16ebb88fa4b48              # double 0.068095894758056663
	.quad	0x3fd85c88f95e0ff4              # double 0.38064789154327561
	.quad	0x3fe9fda0d7ffe40d              # double 0.81221048533837037
	.quad	0x3fe31c3e11660229              # double 0.5971975650609852
	.quad	0x3fdd952f5e5d3f88              # double 0.46223053183802465
	.quad	0x3fec4290e936a93c              # double 0.88312573956981266
	.quad	0x3fc54ec615d62048              # double 0.16646648470146119
	.quad	0x3fdfd682584b2c24              # double 0.49746760008264546
	.quad	0x3fca04d5f67c4f3c              # double 0.20327257666996867
	.quad	0x3fb73d5595bf4a90              # double 0.090779637393362699
	.quad	0x3fd5e29386f7b1c4              # double 0.34195411854195989
	.quad	0x3fd14b8d3245d4b2              # double 0.27023630055857517
	.quad	0x3fe5f5120b390ea9              # double 0.68616583053559055
	.quad	0x3fedb0b623906248              # double 0.92782122560590441
	.quad	0x3fdb7ea79395eaca              # double 0.42960538304002382
	.quad	0x3fd084176b077838              # double 0.25806222393100908
	.quad	0x3feb6c4635c82167              # double 0.856967072527408
	.quad	0x3fe7b679b5232209              # double 0.74102483156554044
	.quad	0x3fd054eb4279c1d4              # double 0.25518304340132869
	.quad	0x3fc6b39a2b16717c              # double 0.1773560247792253
	.quad	0x3fed2e52a5f3021d              # double 0.91190464412654004
	.quad	0x3fe5e0aeeefad277              # double 0.68367716480004403
	.quad	0x3fe39931ab0f65c6              # double 0.61245044145760441
	.quad	0x3fea44649564c2aa              # double 0.82084874323307599
	.quad	0x3fa1e713097b2d20              # double 0.034966082484596095
	.quad	0x3fc2dbdcd347e710              # double 0.14733467403839784
	.quad	0x3fc9bfbf5ccbf79c              # double 0.20116416960803185
	.quad	0x3fcc1a596b6985c4              # double 0.21955411667572211
	.quad	0x3fe99615f0f8c6a0              # double 0.79957100930024083
	.quad	0x3fe11e963e6d2577              # double 0.53498375122687392
	.quad	0x3fed5103ac232a15              # double 0.91613944645479484
	.quad	0x3fc64d3765a34dc0              # double 0.17423145735538803
	.quad	0x3fe5a3d1cb058f01              # double 0.67624749806097395
	.quad	0x3fe8dfc7460a07af              # double 0.77731670074012083
	.quad	0x3febeece9838800d              # double 0.87290124636274558
	.quad	0x3fa7fb3c246757e0              # double 0.046838645404633672
	.quad	0x3fbc87aef45aee68              # double 0.11144536462500698
	.quad	0x3fc8e98166e8c9a0              # double 0.19462602162236653
	.quad	0x3fdfe6106967ec78              # double 0.4984169988017082
	.quad	0x3fc9e0fff83ab538              # double 0.20217895145962372
	.quad	0x3fdac6b9b380c00a              # double 0.41837923554976497
	.quad	0x3fb839f7de8eb648              # double 0.094634525142020753
	.quad	0x3fe5cdc9185966c6              # double 0.68137030368526363
	.quad	0x3fd2322b445fd16c              # double 0.28431207348992049
	.quad	0x3fcc3e3a37ca8f4c              # double 0.22064902996236879
	.quad	0x3fe65a6f48c74565              # double 0.69853939260989917
	.quad	0x3fe8f8298e6149fc              # double 0.78029325302696816
	.quad	0x3fd405cd5acea89e              # double 0.31285413616081736
	.quad	0x3fe4e2affd6d6411              # double 0.65267180917283174
	.quad	0x3fc2fb05cc910900              # double 0.14828560341454278
	.quad	0x3fdd43da5dd920f8              # double 0.4572664181219035
	.quad	0x3fe5610abd7f8b9b              # double 0.66809594165202968
	.quad	0x3fe527a5cb2a6145              # double 0.6610897987439236
	.quad	0x3fc1d531dbb37870              # double 0.13931868770208977
	.quad	0x3fe8744291d23b73              # double 0.76419189911562879
	.quad	0x3feeba23eb55d23a              # double 0.96022220577157857
	.quad	0x3fc8ec888a50d738              # double 0.19471842530918493
	.quad	0x3fed5e1bd8429295              # double 0.91773788679400303
	.quad	0x3fd746b0d55a63a4              # double 0.36368962130796434
	.quad	0x3fed58d0707101e4              # double 0.9170915790673999
	.quad	0x3fe93b560892c56b              # double 0.78849317240216743
	.quad	0x3fda329af6ad0b20              # double 0.40933870400856343
	.quad	0x3fe407214972555e              # double 0.62587036461870205
	.quad	0x3fd1991606a8d9c4              # double 0.27496863031720076
	.quad	0x3fef876829cc96f9              # double 0.98527916110899049
	.quad	0x3fd5dee34111b276              # double 0.34172898630530513
	.quad	0x3feabbb4e89615dd              # double 0.83541341235166622
	.quad	0x3fd7b04b80fe52de              # double 0.3701351890279464
	.quad	0x3feac50eed1f7b1e              # double 0.8365549689586691
	.quad	0x3fe61824ed99865d              # double 0.69044729620163603
	.quad	0x3fc69b97f02080f8              # double 0.17662333702993016
	.quad	0x3fea17b6a3fc33ba              # double 0.81539470699646377
	.quad	0x3fe35dbcf9f6b4c2              # double 0.60519265004190737
	.quad	0x3fe59e520c331c78              # double 0.67557623274559742
	.quad	0x3fa95c12a47185a0              # double 0.049530584882414574
	.quad	0x3fce9b58b6d7357c              # double 0.23911580016867251
	.quad	0x3feb6eda39b0bd09              # double 0.85728179233220303
	.quad	0x3fbe78ab4afd9a90              # double 0.1190287645418755
	.quad	0x3fecedc49365a9a9              # double 0.9040243986940385
	.quad	0x3fedb401cc213048              # double 0.92822351330824748
	.quad	0x3fdc9caf44e8a938              # double 0.44706327180269367
	.quad	0x3fed48b3232cf96d              # double 0.91512448187112982
	.quad	0x3f65d0886aa22100              # double 0.0026629127870060332
	.quad	0x3fe216abbc4dca79              # double 0.56526743677234415
	.quad	0x3fce5b678c57c9d8              # double 0.23716444351846522
	.quad	0x3fd50597d55e8a20              # double 0.32846637570233561
	.quad	0x3fef50c316ad80c0              # double 0.97860865048644285
	.quad	0x3fe8f83ea8de5dec              # double 0.78030331594612567
	.quad	0x3fe73e8687f53df3              # double 0.72638250879566468
	.quad	0x3fdd29df278ed6e8              # double 0.45568064559061705
	.quad	0x3fb2fb6e3c4f62c8              # double 0.074149026607652435
	.quad	0x3fd86934a79ee490              # double 0.38142124528128196
	.quad	0x3fa28f48cef8d3b0              # double 0.036249423279890336
	.quad	0x3fd71d99adc6a398              # double 0.36118165941530256
	.quad	0x3fe20cbbddaf4181              # double 0.56405442521831628
	.quad	0x3fc0405de4a2b9dc              # double 0.12696431793069862
	.quad	0x3fe6849d3418dbda              # double 0.70368824172225719
	.quad	0x3fe7adde425f972a              # double 0.73997414554171326
	.quad	0x3fc7b874b1530134              # double 0.18531664522562041
	.quad	0x3fe03c65f1b95627              # double 0.50737282954896024
	.quad	0x3fee7e154abdda3d              # double 0.952891012172422
	.quad	0x3fe18bd815857112              # double 0.54832081035013602
	.quad	0x3fe152848cb15e74              # double 0.54132297019073272
	.quad	0x3fe40e0d210f3eee              # double 0.6267152448362745
	.quad	0x3fe7ccaf723e92a9              # double 0.74373600304951026
	.quad	0x3fef3d4aef8dbc5a              # double 0.97623202121566099
	.quad	0x3fe36a66e94f6d93              # double 0.60673852508937143
	.quad	0x3fce0e089da00eec              # double 0.23480327316803284
	.quad	0x3fea536b0ccabfd3              # double 0.82268288134036494
	.quad	0x3fe42e5b2c9f9f42              # double 0.63065870967418669
	.quad	0x3fdf3e7f74b528ae              # double 0.48818956753951681
	.quad	0x3feb41e8dec0b803              # double 0.85179561144264004
	.quad	0x3fdc42fe2d8f0b34              # double 0.44158892106149783
	.quad	0x3f7a22d24db26100              # double 0.006380864618357629
	.quad	0x3fce77bc7a80839c              # double 0.23802906018775338
	.quad	0x3fd522bd698c49bc              # double 0.33024535472318539
	.quad	0x3fbc29b434d67948              # double 0.11001135148987828
	.quad	0x3fe7db1d367b4e9e              # double 0.74549732819510317
	.quad	0x3fc5a1b9781eae34              # double 0.16899793973185384
	.quad	0x3feb0023a7ce878d              # double 0.84376700186497688
	.quad	0x3f8e4c3e29dd6100              # double 0.014793859150515676
	.quad	0x3fe70156ef243338              # double 0.71891352374368633
	.quad	0x3fbc0208b89ac7c0              # double 0.10940603739689347
	.quad	0x3fd4af7ca0a96f52              # double 0.32321086587557091
	.quad	0x3fee87d98ff5d72c              # double 0.95408323399781158
	.quad	0x3fe70e3a5e6504df              # double 0.72048681675382997
	.quad	0x3fe5babb451799d1              # double 0.67904437536781803
	.quad	0x3fdcf4006b1a32ea              # double 0.45239267787182647
	.quad	0x3fe1ac4aa3ec793b              # double 0.55228168503143793
	.quad	0x3feb883561b17d20              # double 0.860377016837365
	.quad	0x3fd5b58e49c1c054              # double 0.33920628741089343
	.quad	0x3febd6476ee4f7d8              # double 0.86990710887016132
	.quad	0x3fe60127542692ec              # double 0.68764082370452462
	.quad	0x3fcc59cadfb0256c              # double 0.22149024889248936
	.quad	0x3fca124f8f06d370              # double 0.20368380054210489
	.quad	0x3fba74cc680c7320              # double 0.10334470310449406
	.quad	0x3fe62f1479b4642a              # double 0.69324706812324632
	.quad	0x3fe8faa7a6fcd08b              # double 0.78059752096898316
	.quad	0x3fe00f1b47485d38              # double 0.50184406206509546
	.quad	0x3fc9c61834daff34              # double 0.20135786610443918
	.quad	0x3fe78bee789a9d14              # double 0.73583148532353215
	.quad	0x3fe48a99934193a4              # double 0.64191893349617546
	.quad	0x3fe7cc33ecd9381b              # double 0.74367710360980099
	.quad	0x3fad9c21aaea5870              # double 0.057831813920686481
	.quad	0x3fe56a2eb3a6c7f5              # double 0.66921172226125114
	.quad	0x3fdcfd48a756eee0              # double 0.45295921651607607
	.quad	0x3febaa0598a6f5c5              # double 0.86450462164764785
	.quad	0x3fbf2b3efb39bff0              # double 0.12175363191067823
	.quad	0x3fc596880e58e808              # double 0.16865635586310668
	.quad	0x3fd502680f87f114              # double 0.32827188030911825
	.quad	0x3fe8f696e914d783              # double 0.7801012565966946
	.quad	0x3fe6a75d86d13fa1              # double 0.70793033916014647
	.quad	0x3fc197dd973ab178              # double 0.13744706997148248
	.quad	0x3fede1362c39a731              # double 0.93374165189491098
	.quad	0x3fe28055de6d87b1              # double 0.57816594546260636
	.quad	0x3fe83c9155c44d87              # double 0.75739351989106829
	.quad	0x3fbccc367d1f4a48              # double 0.11249104075185656
	.quad	0x3fd7e7e889c14822              # double 0.37352956249844926
	.quad	0x3fedc99eea97db35              # double 0.93086191004736085
	.quad	0x3fd3772791692392              # double 0.30414761734260154
	.quad	0x3fe227cb2376f325              # double 0.56735760618866904
	.quad	0x3fe87965167cc252              # double 0.76481871025141346
	.quad	0x3fe21125f7ec16fa              # double 0.56459330007848441
	.quad	0x3fdde37be0708daa              # double 0.467009514979703
	.quad	0x3fbfd77ce0f90f18              # double 0.12438183300497163
	.quad	0x3fd9f270f31ea24a              # double 0.40542243711619064
	.quad	0x3fee2f84c1d613d6              # double 0.94330060824051531
	.quad	0x3fe3aa4c71e69fda              # double 0.61453840490593881
	.quad	0x3fe7a08c34b44e44              # double 0.73834810537159301
	.quad	0x3fd04cbe51b574c0              # double 0.25468404750229112
	.quad	0x3fed40ebf243b394              # double 0.91417500798489692
	.quad	0x3fdcee7070caa48c              # double 0.4520531751136978
	.quad	0x3fb33244774edeb0              # double 0.074985770347548053
	.quad	0x3fddffce30947d90              # double 0.46873812431473372
	.quad	0x3fc7e1aeef835250              # double 0.18657480902642698
	.quad	0x3fd53e123e57ab74              # double 0.33191352928286411
	.quad	0x3fe28eb0a144e260              # double 0.57991820810191186
	.quad	0x3fa5979d4d26de00              # double 0.042172351520488149
	.quad	0x3feb7944de63fe80              # double 0.85855334697403407
	.quad	0x3fd71675ccc4f806              # double 0.36074585911762858
	.quad	0x3febd17a410fce26              # double 0.86932099063273394
	.quad	0x3fe0072679379233              # double 0.50087283778390768
	.quad	0x3fe06a962f35c0e6              # double 0.51301106663416074
	.quad	0x3fe33f970700fbd4              # double 0.6015124451440621
	.quad	0x3fd106c659bf23bc              # double 0.26603850139923302
	.quad	0x3fca8168b5ca75a0              # double 0.20707424999720292
	.quad	0x3fe719a8b9f7dfc1              # double 0.72188221284795173
	.quad	0x3fe6e4540ff7e45c              # double 0.7153721153146182
	.quad	0x3fcf8ce1b97214b0              # double 0.24648686938249886
	.quad	0x3fe304bc97198422              # double 0.5943282080808141
	.quad	0x3fc4240f8f27f2d0              # double 0.15735048761407322
	.quad	0x3fc7df68af2daf80              # double 0.18650539926181509
	.quad	0x3fb999fa26d18e80              # double 0.10000575492591146
	.quad	0x3fc85df56eb10adc              # double 0.19036739258634483
	.quad	0x3fd7479695da7390              # double 0.36374439844240047
	.quad	0x3fef3ecdc1cf9b58              # double 0.9764164719934838
	.quad	0x3fef1ace52e714be              # double 0.97202221099782782
	.quad	0x3fe900bd4e1df44e              # double 0.78134026772716836
	.quad	0x3fd6c3b74598e7ae              # double 0.35569555088624838
	.quad	0x3fe6342277ce72ca              # double 0.69386409187026143
	.quad	0x3fecef331e06811e              # double 0.90419917930924831
	.quad	0x3fe2688a8af8e1f9              # double 0.57526137488372264
	.quad	0x3fe3ebb804e581e9              # double 0.62252427059507653
	.quad	0x3fc6eb39f1e4f4d0              # double 0.17905353842971872
	.quad	0x3fd4bb957c4678a4              # double 0.32394921432740831
	.quad	0x3fd5745f17b58222              # double 0.33522774997075733
	.quad	0x3fe4ca628fb310ca              # double 0.64970520082763383
	.quad	0x3fb99af76a2c3390              # double 0.1000208505831337
	.quad	0x3fe62a87dd62c28c              # double 0.6926917385045086
	.quad	0x3fe5ae19a341f56a              # double 0.67750245939502673
	.quad	0x3fe4e00ded6fb61f              # double 0.6523503911427645
	.quad	0x3fecb17cc32e3f63              # double 0.8966659366724169
	.quad	0x3fe1d171eafb1174              # double 0.55681701559710328
	.quad	0x3fb28359de31dd28              # double 0.072316757914326346
	.quad	0x3fd0ccbb42f73668              # double 0.26249581851593584
	.quad	0x3fc7053dcb200038              # double 0.17984745424473814
	.quad	0x3fdcc75a87b973b8              # double 0.44966758016908726
	.quad	0x3fe84f4b1268d1ae              # double 0.75967935176463697
	.quad	0x3feb0253edf6233e              # double 0.84403416134691844
	.quad	0x3fde029156bd8b3a              # double 0.46890672178976767
	.quad	0x3fcc08fa99637e1c              # double 0.21902401437454067
	.quad	0x3fea073d044dd013              # double 0.81338358727089355
	.quad	0x3fa5193af6fbe170              # double 0.041208117150690948
	.quad	0x3fcee33bc0b51b40              # double 0.24130961331885636
	.quad	0x3fe27b0082b11eab              # double 0.57751489187008553
	.quad	0x3fdcb6a46657ae5c              # double 0.44864759439835722
	.quad	0x3fa47b4405e8ca90              # double 0.040002942773203931
	.quad	0x3fc61fd6531f95dc              # double 0.1728465944171792
	.quad	0x3fdc704ac30e444e              # double 0.44435376213465794
	.quad	0x3f92db667c7c9780              # double 0.018415070865692496
	.quad	0x3fdca28b235d5eee              # double 0.44742086843096629
	.quad	0x3fc911d751003f98              # double 0.19585696654439455
	.quad	0x3fed4c554afad556              # double 0.91556801456924108
	.quad	0x3fc5dd79235f1a10              # double 0.17082132556079488
	.quad	0x3fdb852f2855374c              # double 0.43000391901738477
	.quad	0x3fc16ace73611c8c              # double 0.13607197412259031
	.quad	0x3fe9ed9241462724              # double 0.81025040386996183
	.quad	0x3fd245dc8a8695ca              # double 0.28551400688078543
	.quad	0x3fde254fb4b046be              # double 0.47102730412835203
	.quad	0x3fcaa66ddbd4bfc8              # double 0.2082040141481214
	.quad	0x3feedb3d59d6cee5              # double 0.96426265284250389
	.quad	0x3fdf337e2e3f54de              # double 0.48751787678095393
	.quad	0x3fe2d442678fd4f6              # double 0.58841057040140643
	.quad	0x3fe7e2748cf20ee3              # double 0.7463934662668773
	.quad	0x3fd8e9dc32eaddae              # double 0.38927369091421837
	.quad	0x3fea9bf8afb54559              # double 0.8315394813345548
	.quad	0x3fde908afd4f92ec              # double 0.4775722001780156
	.quad	0x3fec49103c80c0d1              # double 0.88391887490254295
	.quad	0x3fea724542bb59ac              # double 0.82644904168664856
	.quad	0x3fe93ecafe337399              # double 0.78891515396718426
	.quad	0x3fe85a903c502c03              # double 0.7610551050178177
	.quad	0x3fbe41d3ba2c8430              # double 0.11819194121609722
	.quad	0x3fda13739a2c7246              # double 0.40743722969071816
	.quad	0x3fe45a5be62a7d8a              # double 0.63603014902393906
	.quad	0x3fd62af7ec6a9046              # double 0.3463725861313417
	.quad	0x3feb3c06a627eb61              # double 0.85107738926249621
	.quad	0x3fe0419e183edf22              # double 0.50800995574443086
	.quad	0x3fe6cff64e720e32              # double 0.71288600274460223
	.quad	0x3fea4ed09426bf71              # double 0.82212094245731582
	.quad	0x3fb01899fe62f698              # double 0.062875389677140681
	.quad	0x3fee684dc7e6d505              # double 0.95023240130709097
	.quad	0x3fe04c8451402df6              # double 0.50934043759610748
	.quad	0x3fcd3834ef89cf80              # double 0.22827779480178023
	.quad	0x3fece0e92d129452              # double 0.9024549370120758
	.quad	0x3feafcd29b765ab4              # double 0.84336214412436172
	.quad	0x3fe8d1110ce53e74              # double 0.77552082556390056
	.quad	0x3fbf8b9b98cd0ec0              # double 0.12322399597638434
	.quad	0x3fef6a9a88f309d6              # double 0.98176314113544083
	.quad	0x3fddde16c0feafbc              # double 0.46668022963671851
	.quad	0x3fd4ca0126b8e622              # double 0.32482937604399542
	.quad	0x3fe31045d581515d              # double 0.59573642444824382
	.quad	0x3fea70d6372632a8              # double 0.8262740208752648
	.quad	0x3fdbdf54d206cc82              # double 0.4355060626068693
	.quad	0x3fee4445e29b2f7b              # double 0.94583410510084265
	.quad	0x3fdf48a09f571ed8              # double 0.48880782661988809
	.quad	0x3fe12039cc1cb30c              # double 0.53518380990644365
	.quad	0x3fe0bee130aae01b              # double 0.52330073838584512
	.quad	0x3fd6b341fd799264              # double 0.35469102624327875
	.quad	0x3feec1109b62540f              # double 0.96106748913246231
	.quad	0x3fe1255f33ddc4f2              # double 0.53581199770101606
	.quad	0x3fe1e92e166feef3              # double 0.55971435911439327
	.quad	0x3fd4753b7a804d80              # double 0.31965529406553372
	.quad	0x3fc050c78798483c              # double 0.12746519203989404
	.quad	0x3fe5be427c9abb91              # double 0.67947506272126834
	.quad	0x3fe41a7516e6e193              # double 0.6282296607305845
	.quad	0x3fd872ade3689018              # double 0.3819994660173065
	.quad	0x3feb3becbe98581e              # double 0.85106503701786429
	.quad	0x3fdcf3f0e9e74cd6              # double 0.45238898126735927
	.quad	0x3fe2e50fd345831e              # double 0.59046164764376718
	.quad	0x3fe58ba7e31167b1              # double 0.67329782819000716
	.quad	0x3fe9b99de65d8cdb              # double 0.80390830033538963
	.quad	0x3fe12e5221ba2ece              # double 0.53690439784392097
	.quad	0x3fc13a3c0cd6fcc0              # double 0.13458967806761812
	.quad	0x3feedb8337a89b8c              # double 0.9642959677774896
	.quad	0x3fbc360d026991b0              # double 0.1101997500314329
	.quad	0x3fe2b03d2627cc70              # double 0.58401353313673887
	.quad	0x3fb42a8ffc2a9c68              # double 0.078774451316904526
	.quad	0x3fdb581883793840              # double 0.42725193824015051
	.quad	0x3fd1ad3874ee7524              # double 0.27619754237260197
	.quad	0x3fe9d57fac6ccbc6              # double 0.80731185604815248
	.quad	0x3fdf2e17384baa4e              # double 0.4871881532441521
	.quad	0x3fd570e88d444324              # double 0.33501638217517127
	.quad	0x3fd1354071b78b1c              # double 0.26887522797749042
	.quad	0x3fee16a190e84ca7              # double 0.94026258756857295
	.quad	0x3fe8898a0a32a712              # double 0.76678945533532983
	.quad	0x3fdf01b3c1b94c6e              # double 0.48447889250127829
	.quad	0x3fd8980eff12fa60              # double 0.38428091916640561
	.quad	0x3fea6ce714b1abbc              # double 0.82579378167917338
	.quad	0x3fb9d34fe76b6568              # double 0.10088061714067964
	.quad	0x3f9d40812ba97d60              # double 0.028566377916260932
	.quad	0x3fe4e3b2c3763770              # double 0.65279520202760288
	.quad	0x3fe62cf65833d4cf              # double 0.69298855998081332
	.quad	0x3fd7f3149b7db3ac              # double 0.37421145615263174
	.quad	0x3fd814544f9e9b9c              # double 0.37624080443713992
	.quad	0x3fd3bc45dfbfbbfc              # double 0.30836626863941752
	.quad	0x3feaf8e1ed6a95a6              # double 0.84288116808300084
	.quad	0x3fe685dcb749164b              # double 0.70384059713314551
	.quad	0x3fe422ae36bcbd72              # double 0.62923346224662979
	.quad	0x3fdd422ba0aa3df0              # double 0.45716372194234989
	.quad	0x3fefe37689a57fb2              # double 0.99651648410871574
	.quad	0x3fd4d6193d9ef4aa              # double 0.32556754129093213
	.quad	0x3fca177124fbca18              # double 0.20384039216840288
	.quad	0x3f80079dcfc17300              # double 0.007827027228068939
	.quad	0x3fd0d0f7765e3a04              # double 0.26275431212789635
	.quad	0x3fed98387492c36a              # double 0.9248316075155405
	.quad	0x3fe54e60bacd017b              # double 0.66581760868579865
	.quad	0x3fe5bd557af81b24              # double 0.67936204926886434
	.quad	0x3fe64e67c4495a1c              # double 0.69707096421445014
	.quad	0x3fec872c15c12a30              # double 0.89150051354346793
	.quad	0x3fee9353d8625039              # double 0.955484316468307
	.quad	0x3fae55bbf5235d80              # double 0.059247850107278843
	.quad	0x3fea354b3b961dae              # double 0.81900560033766623
	.quad	0x3fd8431a0f7d1f3e              # double 0.37909556877683659
	.quad	0x3fca84f72dd98f4c              # double 0.20718278635751586
	.quad	0x3fbfdf17604df520              # double 0.12449785329041108
	.quad	0x3fb67592cabe9ec0              # double 0.087731527803607712
	.quad	0x3fd436564bfe8554              # double 0.31581647321043715
	.quad	0x3fd98c997a4d3592              # double 0.39920651381984229
	.quad	0x3fde0f3da9feff4c              # double 0.46968022919826491
	.quad	0x3fe6f9973f13d41f              # double 0.71796762771430511
	.quad	0x3fee7f5128fe5d84              # double 0.95304162985387153
	.quad	0x3fedd8adf125ae48              # double 0.93270012950001391
	.quad	0x3fec9a4ddb3e21c1              # double 0.89383595295753804
	.quad	0x3fed8cd24837a495              # double 0.92344011406852877
	.quad	0x3fe87744f530e000              # double 0.7645592488179318
	.quad	0x3fb5ae90a4e39ba8              # double 0.084694900756956515
	.quad	0x3fe301d7a46a2372              # double 0.59397489654757707
	.quad	0x3fecbbd52db03ba5              # double 0.89792879985349272
	.quad	0x3fd81fc3ac18ce74              # double 0.37693874174440301
	.quad	0x3fd2b40a90bb2a76              # double 0.2922388471021472
	.quad	0x3feda83f0b1874e2              # double 0.92678787390800843
	.quad	0x3fd7c669c56bc52a              # double 0.37148517875091847
	.quad	0x3fcfc83fa6182968              # double 0.24829860315396535
	.quad	0x3f848da2c72ea7c0              # double 0.010035773948249616
	.quad	0x3fd9b9d1dee8699a              # double 0.40196654098840556
	.quad	0x3fef7b995f3f0893              # double 0.98383778193262327
	.quad	0x3fe844b982157732              # double 0.75838923842431982
	.quad	0x3fe7fc345ff1c2b2              # double 0.7495366929925551
	.quad	0x3faa4e7186560ea0              # double 0.051379726074654686
	.quad	0x3fd741592c2a9a30              # double 0.36336354554296957
	.quad	0x3fd0c8b2b2246b28              # double 0.26224963566498838
	.quad	0x3fef0bf7dbd22657              # double 0.97021096166390463
	.quad	0x3fcd777f55dffd00              # double 0.23020927136528968
	.quad	0x3fe991bdd5a62366              # double 0.79904071548763222
	.quad	0x3fe267e800e45a7e              # double 0.5751838700696934
	.quad	0x3fde89298b8499ba              # double 0.47712172150422882
	.quad	0x3fed32f5fef7b254              # double 0.91247081564285759
	.quad	0x3fe8256f3e070f2d              # double 0.75456964602242282
	.quad	0x3fda8e547f7fc392              # double 0.41493713809091404
	.quad	0x3fe3e0c52fe0e611              # double 0.62118777610084142
	.quad	0x3fed11876fe7eac6              # double 0.90838977676988786
	.quad	0x3fe3df17579c8b86              # double 0.62098281013128154
	.quad	0x3fe69840f34b57a6              # double 0.7060856582490842
	.quad	0x3fb8548fac83f968              # double 0.095040301912353464
	.quad	0x3fe298fe40bf8a65              # double 0.58117592474111446
	.quad	0x3fe71fe81aa880dc              # double 0.72264485556300029
	.quad	0x3fec513b5719f266              # double 0.88491599094375029
	.quad	0x3fa65e7a842dec50              # double 0.043689564356974686
	.quad	0x3fdae63adbca0418              # double 0.42030211890966163
	.quad	0x3fe6c7121b059596              # double 0.71180062558839796
	.quad	0x3feab41a9364c835              # double 0.83448532855823621
	.quad	0x3fe0f631bdf03f1d              # double 0.53005301568370877
	.quad	0x3fefb1d4ad9361d7              # double 0.99045785809999642
	.quad	0x3fed8ca1f4086991              # double 0.92341706907909515
	.quad	0x3fe2ae4fa82a5deb              # double 0.58377821774314265
	.quad	0x3fcc122cbd93ab38              # double 0.21930464989358156
	.quad	0x3fee688d2d7b121b              # double 0.95026263125379573
	.quad	0x3f9f3556c15fad20              # double 0.030476909210773617
	.quad	0x3fecc6602ae6d5d1              # double 0.89921577815283105
	.quad	0x3fe8bfdceec116bd              # double 0.77342077857675628
	.quad	0x3fd077cea828827c              # double 0.2573124544306109
	.quad	0x3fdec154353d4d02              # double 0.48054986190000204
	.quad	0x3fd695acb95eb4a2              # double 0.35288541891606873
	.quad	0x3fdf8150e015f846              # double 0.49226781733876057
	.quad	0x3fee87658b118fc7              # double 0.95402791177593194
	.quad	0x3fc358084d68c2e0              # double 0.1511240365957951
	.quad	0x3fd79f726905ee8a              # double 0.36910686737221765
	.quad	0x3fd6aea83176b364              # double 0.35441021757542601
	.quad	0x3fd6fa2c7881130c              # double 0.35901939170825936
	.quad	0x3fdd892ad0db724e              # double 0.46149702450000951
	.quad	0x3fe25b47587ebf44              # double 0.57364241871071231
	.quad	0x3fc2f4ccebb69348              # double 0.14809571752007344
	.quad	0x3fd6cf64aea60bc6              # double 0.35640828185585993
	.quad	0x3fe0e768f6534c18              # double 0.52824829206872703
	.quad	0x3fe9a3d4829098fc              # double 0.80124879361099443
	.quad	0x3fda5d087dd2add0              # double 0.41192829406165021
	.quad	0x3fec9e1fdfa97bbe              # double 0.89430230792992638
	.quad	0x3fe4d8884e18e116              # double 0.65143218282085757
	.quad	0x3fe24d2d4c700c03              # double 0.57192101411089913
	.quad	0x3fe40e772d8d74fb              # double 0.6267658128450927
	.quad	0x3fe2016131fbc527              # double 0.56266841661832678
	.quad	0x3fe08fb865f95232              # double 0.51754398266581902
	.quad	0x3fe7ad457b2a2c42              # double 0.73990129523861747
	.quad	0x3fa8527e89369670              # double 0.047504381417906028
	.quad	0x3fe68caf9f65e0c3              # double 0.70467358715452411
	.quad	0x3fe731bdbf949149              # double 0.72482192438159487
	.quad	0x3f83c21f259e49c0              # double 0.0096476014476011284
	.quad	0x3fe345505fb166da              # double 0.60221117677721314
	.quad	0x3fdb33597cc4c10a              # double 0.42500912842207639
	.quad	0x3fdf310fb2765598              # double 0.48736946514085266
	.quad	0x3fd418555f639914              # double 0.31398519816720349
	.quad	0x3fe5f490cf28b10d              # double 0.68610420666439753
	.quad	0x3fa184ac1ef0e6d0              # double 0.034215334679584708
	.quad	0x3fd94e4b2b3e1dec              # double 0.39540366385378323
	.quad	0x3fe459305948a7a7              # double 0.63588731230014595
	.quad	0x3febeb2566c54a8e              # double 0.87245435783764136
	.quad	0x3fd0a489d2144964              # double 0.2600426246218801
	.quad	0x3fd8f992f34c0c5c              # double 0.39023278960684649
	.quad	0x3fde6d4325900d2a              # double 0.47541884105904109
	.quad	0x3fe86e3551b9418a              # double 0.76345315896655674
	.quad	0x3fe1726f8a7725df              # double 0.54521920246150646
	.quad	0x3fdd7c3a3e368964              # double 0.46070724559299081
	.quad	0x3fbe31a959543118              # double 0.1179452746475288
	.quad	0x3fec46ae94bf8c50              # double 0.88362816860570526
	.quad	0x3fd7ff04103a208c              # double 0.37493993363069289
	.quad	0x3fcd02930f4291a8              # double 0.22664106602782152
	.quad	0x3fdd85e6ee6368e0              # double 0.46129773407086638
	.quad	0x3fd7e61e35146d66              # double 0.37342028792928372
	.quad	0x3fd5905930a8d42c              # double 0.3369353270712192
	.quad	0x3fdd53ca6aa0837a              # double 0.45823917782586643
	.quad	0x3fd9268fa7adf0a2              # double 0.39297858595797142
	.quad	0x3fccbb5c9fb3b80c              # double 0.22446782873106519
	.quad	0x3fe8f60be81de651              # double 0.78003497443496361
	.quad	0x3fe414e0260139f6              # double 0.62754828856287648
	.quad	0x3fd3f9a34035598a              # double 0.31211167593337363
	.quad	0x3fe729528a02d7a1              # double 0.72379424052518371
	.quad	0x3fd8f6813d096d92              # double 0.39004546127918005
	.quad	0x3fd2c1d476d53ea8              # double 0.29308044056686322
	.quad	0x3fd320d8a81bdfa8              # double 0.29887977997668225
	.quad	0x3fed6636586f5cfb              # double 0.91872708580459006
	.quad	0x3fe3e700c9740287              # double 0.62194861742325791
	.quad	0x3fd241aff419143a              # double 0.28525923574153789
	.quad	0x3fea1d949577ba46              # double 0.81611088936717446
	.quad	0x3faf6a367ab5da90              # double 0.061357214431088214
	.quad	0x3fc1d861c1773218              # double 0.13941595026553055
	.quad	0x3fdb6e16fadb4dfc              # double 0.42859434602470947
	.quad	0x3fcb710edc1961e0              # double 0.2143877577498321
	.quad	0x3fe4785a00d2fe8b              # double 0.63969135437942393
	.quad	0x3fe36de226c7a133              # double 0.6071635014932667
	.quad	0x3fa4d53554b98d90              # double 0.040689150421509557
	.quad	0x3febd2b93864e3d1              # double 0.86947308554146663
	.quad	0x3fe56b05d1b5bed9              # double 0.66931429823849975
	.quad	0x3fe6eab0f359cf07              # double 0.71614882974105931
	.quad	0x3fbf64221143cc10              # double 0.12262165948395443
	.quad	0x3fdb7746a9cc3296              # double 0.42915503103066877
	.quad	0x3fdaf475985a1270              # double 0.42117061498746633
	.quad	0x3fd068e2aecd11f0              # double 0.2564017016450455
	.quad	0x3fe51873cc854f3b              # double 0.65923490472275803
	.quad	0x3fe53de1e9936d9c              # double 0.66380401249209653
	.quad	0x3fc0a7ad814de7a0              # double 0.13011711896598133
	.quad	0x3fd751e85569654e              # double 0.36437424031244781
	.quad	0x3fd5ba74f25da49c              # double 0.33950542133841011
	.quad	0x3fc574b245de8088              # double 0.16762379085139778
	.quad	0x3fb46d97d87b7f40              # double 0.079797258712912544
	.quad	0x3fa558bf2a18ae90              # double 0.041692708862993588
	.quad	0x3fd8721e8b18ef2a              # double 0.38196528991442114
	.quad	0x3fe9b9ef870343e6              # double 0.80394722337416336
	.quad	0x3fc4a5c423382740              # double 0.1613087818116643
	.quad	0x3f964b4155904280              # double 0.021771450850851526
	.quad	0x3fe11059b10ae5b9              # double 0.53324589327456018
	.quad	0x3fec3b4e4a6875fb              # double 0.88223948033163369
	.quad	0x3fed833bf687ba54              # double 0.92226980352809073
	.quad	0x3fe0fd4d8252c2b7              # double 0.53092074826971369
	.quad	0x3feb9157f3689fbf              # double 0.86149213352927478
	.quad	0x3fef3f2c80917679              # double 0.97646164999942108
	.quad	0x3fe96c59948bae87              # double 0.79447630894488064
	.quad	0x3fdd55b72186a874              # double 0.45835665010475357
	.quad	0x3fefbe16c6fd3fe2              # double 0.99195422043885295
	.quad	0x3fc8c78c83864824              # double 0.19358974859329792
	.quad	0x3fe607e77677e3a4              # double 0.68846486223548142
	.quad	0x3fe48e325a91ab7d              # double 0.64235799493086143
	.quad	0x3fe6fafcd5473ab9              # double 0.71813813835054596
	.quad	0x3fba91f759290a40              # double 0.103789767520575
	.quad	0x3f63ab4e33644e00              # double 0.0024010207517990434
	.quad	0x3fdc7a4eff5f31c6              # double 0.44496512354524176
	.quad	0x3fe594ba9f44505c              # double 0.67440539461905358
	.quad	0x3fcf3aa5f20037f4              # double 0.24397730175445498
	.quad	0x3fd90351ea1d4a82              # double 0.39082763540969989
	.quad	0x3fd80509d94f2412              # double 0.37530752393337352
	.quad	0x3faa17fe1ae3e120              # double 0.050964298994531143
	.quad	0x3fe55eb8b12b0eaf              # double 0.6678126774135843
	.quad	0x3fece14c56f70223              # double 0.90250222192122853
	.quad	0x3fec86517a528ed9              # double 0.89139627352821116
	.quad	0x3fc09518a5d78f24              # double 0.12955005738978642
	.quad	0x3fe1b7d93c713958              # double 0.55369245343335205
	.quad	0x3fd3e29a3ffe8162              # double 0.3107057213728891
	.quad	0x3fe5f1f0f821cd2d              # double 0.68578384841240381
	.quad	0x3fe4136a1a99a39b              # double 0.62736993022291487
	.quad	0x3faae585a7257bd0              # double 0.052532364514938146
	.quad	0x3fe8e5f0c39efc1e              # double 0.77806890685303975
	.quad	0x3fd2c5309b808a20              # double 0.2932855146956701
	.quad	0x3feb6ce4645da47c              # double 0.85704249956792422
	.quad	0x3fe69845649fae8b              # double 0.70608777669026901
	.quad	0x3fb285c6aa7e6e88              # double 0.072353760361176467
	.quad	0x3fee92a03555ed21              # double 0.95539865891570142
	.quad	0x3fd96e68eaec161a              # double 0.3973638815080861
	.quad	0x3fc3ca8323d0e600              # double 0.15461768387631025
	.quad	0x3fe154088aee71f8              # double 0.54150797972721332
	.quad	0x3fe9541396962f69              # double 0.79151324664551936
	.quad	0x3fec4430930e908b              # double 0.88332394334840225
	.quad	0x3fdadbb77e56df78              # double 0.41966044748141185
	.quad	0x3fe6eebee8167184              # double 0.71664376573203059
	.quad	0x3fe7896f854a4f9c              # double 0.73552681000954889
	.quad	0x3fc2fd054b91b180              # double 0.14834657850168398
	.quad	0x3fe7b6ec89cbe8b3              # double 0.74107958711035449
	.quad	0x3fe1558cc21fcb6a              # double 0.54169309534914345
	.quad	0x3fe19c9306f4cf78              # double 0.55036307676935703
	.quad	0x3feaf8a2fbdd74cc              # double 0.84285115425486756
	.quad	0x3fdbc0036d7f4166              # double 0.43359456723285061
	.quad	0x3fb83126eee190f8              # double 0.094500001259408495
	.quad	0x3fed583e648cbc05              # double 0.91702193869230142
	.quad	0x3fe74f5e72269b23              # double 0.72843859000281375
	.quad	0x3fee7e868313db4a              # double 0.95294499970518953
	.quad	0x3feaed9720b1d5d4              # double 0.8415027273719553
	.quad	0x3fde1c6cf93dcc26              # double 0.47048496570568188
	.quad	0x3feeebcbf9eb465d              # double 0.96628378689110727
	.quad	0x3f90c4d74aba7700              # double 0.016375888763483282
	.quad	0x3fc5450da3ddf750              # double 0.16616983891793291
	.quad	0x3fe3109a03d33ae9              # double 0.59577656504720011
	.quad	0x3fe350cd31d694f3              # double 0.60361346944833227
	.quad	0x3fda6cfe80efa70c              # double 0.41290247527523216
	.quad	0x3fe3ec557adfcf78              # double 0.62259935377959064
	.quad	0x3fe99dfd0dbd1eb6              # double 0.80053570445394118
	.quad	0x3fd3b4ff15a9905c              # double 0.30792214503731485
	.quad	0x3feb1b1f4a4481c2              # double 0.8470608187235984
	.quad	0x3feef803ebf671fc              # double 0.96777530752620988
	.quad	0x3fca2ed3d6c66ac4              # double 0.20455406176627922
	.quad	0x3fd3b4edb8d89900              # double 0.30791800547957848
	.quad	0x3fdbda593daea2ea              # double 0.43520194076204055
	.quad	0x3fb125d8e4d77e60              # double 0.066983753079961073
	.quad	0x3fc7cddeb183b3f4              # double 0.18597015063951938
	.quad	0x3fef45fac2fb38f2              # double 0.97729242403309358
	.quad	0x3fe44c4f6f27ad97              # double 0.63431522092780568
	.quad	0x3fea789c543eb32b              # double 0.82722298101507385
	.quad	0x3fef429db9aa8fd2              # double 0.97688184988919091
	.quad	0x3fe21fc2b6489c8b              # double 0.56637702562592673
	.quad	0x3fd9505e2053071e              # double 0.39553025395081132
	.quad	0x3fe3f6302aea7488              # double 0.62380226499557612
	.quad	0x3febe7b72afc1643              # double 0.87203558345272147
	.quad	0x3fb5f7ebe524da80              # double 0.08581423134169519
	.quad	0x3fd7c85c0d76fe5a              # double 0.37160397829936687
	.quad	0x3fe945464e7f45fa              # double 0.78970637637593133
	.quad	0x3fd2c6324713abb2              # double 0.29334694806191941
	.quad	0x3febeb2e2673d495              # double 0.87245852957007008
	.quad	0x3fb864f564d5d7c8              # double 0.095290505521773317
	.quad	0x3fe54f7b2079ec4d              # double 0.6659522661497107
	.quad	0x3faad44a38a7a800              # double 0.052400893607980947
	.quad	0x3fc0ee109bf8e9c8              # double 0.13226516357265283
	.quad	0x3fe5a9f2ee9b0c28              # double 0.6769957218424496
	.quad	0x3fb67dec8f5d71d8              # double 0.087858948708748996
	.quad	0x3fc7160f96c56250              # double 0.18036074506632582
	.quad	0x3fe1f06dadf9bce0              # double 0.56059917430493655
	.quad	0x3fcb1a5f6668b514              # double 0.21174232960167017
	.quad	0x3fb644f69474b2a8              # double 0.086989794963936107
	.quad	0x3fee2155394dba96              # double 0.9415689582072726
	.quad	0x3fe07a767b7e7155              # double 0.51494907493501307
	.quad	0x3feec876a528dc7a              # double 0.96197063691842222
	.quad	0x3fb6c30ee2252058              # double 0.088913850985706033
	.quad	0x3fdb268119ad720a              # double 0.42422511584825939
	.quad	0x3fc98b40019b57fc              # double 0.19956207350213606
	.quad	0x3fc5531f0cc5e9e4              # double 0.16659916042028933
	.quad	0x3fc2c47968cd7d3c              # double 0.1466209184390922
	.quad	0x3fefb5e74c7aaecd              # double 0.99095501839971122
	.quad	0x3f659fec04038f00              # double 0.0026397332841144872
	.quad	0x3fd50d589906d3be              # double 0.32893958038340176
	.quad	0x3fcf1a0047482554              # double 0.24298099022443387
	.quad	0x3fdae4db7d982c86              # double 0.42021834626275056
	.quad	0x3fcaeba748af5f38              # double 0.21031657265734238
	.quad	0x3fe6c59172cfcacb              # double 0.71161720680387341
	.quad	0x3f9d6669f5395400              # double 0.028710990516930934
	.quad	0x3febb6e62aeb6915              # double 0.86607654936531964
	.quad	0x3fe97489dfb4d8ee              # double 0.79547589962637999
	.quad	0x3fa3e933768cb940              # double 0.038888557645224697
	.quad	0x3fd8662e60af7602              # double 0.38123664323742912
	.quad	0x3fe2f90ac83e303f              # double 0.59290064916559249
	.quad	0x3fdb2c542eb894ca              # double 0.42458061754798548
	.quad	0x3fdd315a60754408              # double 0.45613727016194661
	.quad	0x3fb9f61bc3a78c98              # double 0.10141156698914455
	.quad	0x3fe7d8107765c9c8              # double 0.7451250392899107
	.quad	0x3fb2c212a890b110              # double 0.07327381720887538
	.quad	0x3fe54d841d09130e              # double 0.66571241065011733
	.quad	0x3fe9bb5576717d21              # double 0.80411790021381446
	.quad	0x3fe8480a05fed346              # double 0.75879384203890576
	.quad	0x3feb78be8fb98a64              # double 0.85848930426830039
	.quad	0x3fe4246ea543b3a2              # double 0.6294472911664466
	.quad	0x3fe7db0c8c404746              # double 0.74548938172140633
	.quad	0x3fe7502afd49fa66              # double 0.72853612394812894
	.quad	0x3febf4510e8c99ca              # double 0.87357380715985156
	.quad	0x3fde4fcc1a0e2394              # double 0.47362043899971096
	.quad	0x3fc3740378957068              # double 0.15197795284155124
	.quad	0x3f4ea38b45854c00              # double 9.3502331132311323E-4
	.quad	0x3fd153e1f5898b18              # double 0.27074479082345837
	.quad	0x3fd7481d9b4485e8              # double 0.36377658999307849
	.quad	0x3fe794b750fc8296              # double 0.7369038182988159
	.quad	0x3fd6ea442c0be778              # double 0.35804848004737932
	.quad	0x3fd1935c6acef8ae              # double 0.27461920195117784
	.quad	0x3fe7fc41462e55df              # double 0.7495428438875783
	.quad	0x3fd1634d766cdda8              # double 0.27168594899145626
	.quad	0x3fe141e3aee7ef2f              # double 0.53929313813521229
	.quad	0x3fec602eb5a56a9b              # double 0.88674102285161227
	.quad	0x3fdf48e85bbc4f2e              # double 0.48882492979577108
	.quad	0x3fc019f8229ea600              # double 0.12579251947799719
	.quad	0x3fd15c177d2ca50c              # double 0.27124583458005769
	.quad	0x3feb6f6b9f5f4e9a              # double 0.85735112311745643
	.quad	0x3fc7c5d28b7d3208              # double 0.18572456179607877
	.quad	0x3fd145fe4ac47d3a              # double 0.26989705373303574
	.quad	0x3fc52b6238843880              # double 0.16538646468729112
	.quad	0x3fe8fdd164b921ef              # double 0.78098363564009599
	.quad	0x3fc696dcc239f92c              # double 0.17647895320619378
	.quad	0x3fcd66184a8502d8              # double 0.22967818869258028
	.quad	0x3f50bbd017b61000              # double 0.0010213405756482885
	.quad	0x3fc11c310ee41804              # double 0.13367284037684624
	.quad	0x3fb0abe6166accf0              # double 0.065122967217394523
	.quad	0x3fe4c2eee7b760e7              # double 0.64879555947393619
	.quad	0x3fd2b76afc654d54              # double 0.29244494102495833
	.quad	0x3fe43fd90f40c66c              # double 0.63279393176180809
	.quad	0x3fbf592dc8c89a18              # double 0.12245451118415251
	.quad	0x3fb439d22a4a18f8              # double 0.07900727779824368
	.quad	0x3fb9aeb8bd54e5e8              # double 0.10032229063371967
	.quad	0x3fed803d27636927              # double 0.92190416043311962
	.quad	0x3fb7ee9473e9a138              # double 0.093484190272310808
	.quad	0x3fdc130bc9c1d2d0              # double 0.43866247847408335
	.quad	0x3fe16786886119e0              # double 0.54388739239294281
	.quad	0x3fe9af628c245ba9              # double 0.80265929576386441
	.quad	0x3fe7b243866f1929              # double 0.740510714117396
	.quad	0x3fd08df7823b2226              # double 0.25866496770734881
	.quad	0x3fda529918e74e28              # double 0.4112913840483281
	.quad	0x3fc271b924b84a88              # double 0.14409555714572186
	.quad	0x3fb3e3532ad82eb8              # double 0.077687452278207725
	.quad	0x3fe214df3d36be2f              # double 0.56504785495594045
	.quad	0x3facfe1e294554d0              # double 0.05662626508516555
	.quad	0x3fbbd0d2613db850              # double 0.10865511774110925
	.quad	0x3fe22c1a39bea74c              # double 0.5678835990740736
	.quad	0x3fe625c13676d585              # double 0.69210873258150285
	.quad	0x3fd712647b038b04              # double 0.3604975892359763
	.quad	0x3fea3391bbf8f529              # double 0.81879507745148772
	.quad	0x3fb19d0720a1c080              # double 0.068802304713019069
	.quad	0x3fd8f9556c4511f0              # double 0.39021812031958714
	.quad	0x3fd38083a0b6da5e              # double 0.30471888251068957
	.quad	0x3fec359c82e96759              # double 0.88154435700128453
	.quad	0x3f8a1407a99d8f00              # double 0.012733516563180114
	.quad	0x3fddfcb5cdef0684              # double 0.46854920492851471
	.quad	0x3fe619b6b954bbd3              # double 0.6906388873811643
	.quad	0x3fe405b3b21f954d              # double 0.62569603719445299
	.quad	0x3fe665acecbcb883              # double 0.69991155851109033
	.quad	0x3fd94cec7c755672              # double 0.3953200545705392
	.quad	0x3fe48d9fb46315fe              # double 0.64228806716772602
	.quad	0x3fbb90a99ae00798              # double 0.10767612486963996
	.quad	0x3fd8b72869cb0de6              # double 0.3861790688644916
	.quad	0x3fe121e0be69b2fa              # double 0.53538548650757822
	.quad	0x3fe0fd5856542d89              # double 0.53092591153237934
	.quad	0x3fe3df9c0b5f000a              # double 0.62104608746449341
	.quad	0x3fe7ba1b697e2fe2              # double 0.74146814922414372
	.quad	0x3feffe7f9ecdd789              # double 0.99981671348972256
	.quad	0x3fd403e48c591d4a              # double 0.31273759561414194
	.quad	0x3fe889ab2815d9e4              # double 0.76680524663134663
	.quad	0x3fe0e76e47167bd9              # double 0.52825082668629897
	.quad	0x3fe88cfae28fb282              # double 0.76720947504288994
	.quad	0x3fc7bf7a9d5c3ff0              # double 0.18553097423182363
	.quad	0x3fa356b47e7d8d70              # double 0.037770882073142498
	.quad	0x3fe4223bbe15bf5d              # double 0.62917887807814632
	.quad	0x3fdf0bed0ba227a0              # double 0.48510290275646106
	.quad	0x3fc8789adee2ed90              # double 0.19118057139517619
	.quad	0x3fe5c2e3460db765              # double 0.68004001314487239
	.quad	0x3fd7601cf8f92586              # double 0.36524128259460331
	.quad	0x3fdbc7cc38e7f9bc              # double 0.43406968648187294
	.quad	0x3fe14c3e479c2a53              # double 0.5405570410378665
	.quad	0x3fef80220b8af6b6              # double 0.98439123396356965
	.quad	0x3fe52fd960e7c99a              # double 0.66209095885124047
	.quad	0x3fe93c24caba7a6a              # double 0.78859176249882279
	.quad	0x3fcb3d7549126f04              # double 0.21281305377930704
	.quad	0x3fade5bcf9d7c2c0              # double 0.058393388269796898
	.quad	0x3fe14d7dfaf2f550              # double 0.54070948613631664
	.quad	0x3fe0b3ce155b5925              # double 0.52194885417228376
	.quad	0x3fe5e9b4a1953694              # double 0.68477851447251448
	.quad	0x3fa8d5b3ace24030              # double 0.048505415777185923
	.quad	0x3fd38a88e2db0b7c              # double 0.30533048776504024
	.quad	0x3fd4077b4b318ec0              # double 0.31295664160846215
	.quad	0x3fe141d232df5ef6              # double 0.53928480087321762
	.quad	0x3fee6ede1b35f7b6              # double 0.95103364290820624
	.quad	0x3fdef40aa9585792              # double 0.48364512002569271
	.quad	0x3fd518203f671748              # double 0.32959753219289611
	.quad	0x3fd0749a4ebad6c0              # double 0.2571168679090583
	.quad	0x3fd26c0806df3d58              # double 0.28784371062370928
	.quad	0x3fed1f43e89787fa              # double 0.91006656101330852
	.quad	0x3fe4b7f32968a151              # double 0.64745481574667896
	.quad	0x3fd6517a4284fea4              # double 0.34872299667402218
	.quad	0x3fd266ece2307ba4              # double 0.28753206337744985
	.quad	0x3fe34fe96be20b08              # double 0.60350485869307224
	.quad	0x3fd58dc799222a56              # double 0.33677854494513804
	.quad	0x3fe5281a78db817c              # double 0.66114543538064607
	.quad	0x3fdcd5055aad6af2              # double 0.45050176482406734
	.quad	0x3fbe75b87774a530              # double 0.11898377338788602
	.quad	0x3f98f8000549e9a0              # double 0.024383545229719084
	.quad	0x3fd585ce4ad4f92e              # double 0.33629185970120801
	.quad	0x3fea842bd0c7b219              # double 0.82863417413097118
	.quad	0x3fedc4dffb08569c              # double 0.930282583520881
	.quad	0x3fc80aa4a17d9bb4              # double 0.1878248013046836
	.quad	0x3f8b17fca64ff240              # double 0.013229345155189809
	.quad	0x3fee13c552be1fb6              # double 0.93991342697790148
	.quad	0x3fe38b1091c4bc5c              # double 0.61072567434701908
	.quad	0x3fdcd4c31a4e2670              # double 0.45048596924662032
	.quad	0x3fddad3b0f55df48              # double 0.46369816300965683
	.quad	0x3fdfa3fa8b17f44a              # double 0.49438346465450833
	.quad	0x3feb52bbcff21fcd              # double 0.85384932150281545
	.quad	0x3fd08eaec9c3b5da              # double 0.2587086649280913
	.quad	0x3fe77bcb430ccc11              # double 0.73386157127095164
	.quad	0x3fe6773b4dd7411d              # double 0.70205464556969199
	.quad	0x3fed50059923f4f4              # double 0.91601829443211935
	.quad	0x3fe6266b3c7bca27              # double 0.69218980611032499
	.quad	0x3fea43d8f57a4d7d              # double 0.82078216500160261
	.quad	0x3fd888face539e88              # double 0.38336057805143087
	.quad	0x3fd4bab1667c6a66              # double 0.32389483459852497
	.quad	0x3fed8f1c630c15e4              # double 0.92371959061773312
	.quad	0x3fe2eed064641336              # double 0.59165210349656294
	.quad	0x3fcb9e3c64577914              # double 0.21576647662636417
	.quad	0x3fe0cd1be6faf74c              # double 0.52503771890017381
	.quad	0x3fe49614af0a80b5              # double 0.64332040965748283
	.quad	0x3fbdc4bdd53dee58              # double 0.11628328758336559
	.quad	0x3fd491cf52772266              # double 0.32139952710398345
	.quad	0x3fea73dbf117fa1a              # double 0.82664296234708279
	.quad	0x3fabe3ed5b41cbd0              # double 0.054473321332714542
	.quad	0x3fe0521969f0c4fb              # double 0.5100218838835241
	.quad	0x3fe01603279f2f03              # double 0.50268705118784884
	.quad	0x3fe3e3de0309b747              # double 0.62156582444524922
	.quad	0x3fd4569e2b055b2a              # double 0.31778673363935417
	.quad	0x3fe2a474788cbf88              # double 0.58257506890184718
	.quad	0x3fe224e09dc0edaf              # double 0.56700163661246517
	.quad	0x3fe5cbd181c8e689              # double 0.68113017414653243
	.quad	0x3fd30599e4a9ae18              # double 0.29721686678269199
	.quad	0x3fe2e8b717a88d2b              # double 0.59090761776716272
	.quad	0x3fdb17b042803fae              # double 0.42332083219752803
	.quad	0x3fefdcea730d3b16              # double 0.99571726294547847
	.quad	0x3fe2af4b180a59f9              # double 0.58389811225316557
	.quad	0x3f413aaf4470a400              # double 5.2579458213586339E-4
	.quad	0x3fee251f7f671a1b              # double 0.94203162082050385
	.quad	0x3feece86c2dace88              # double 0.9627107434993869
	.quad	0x3fea64e02089ef07              # double 0.82481390338168203
	.quad	0x3fee3c08b6bbbfd4              # double 0.94482837381473894
	.quad	0x3f857f20df3d4540              # double 0.010496384442066131
	.quad	0x3fe5738d57ab1d46              # double 0.67035548327195538
	.quad	0x3feccd5d5f8c7cfc              # double 0.9000689378916884
	.quad	0x3fecc1a1cc22dba0              # double 0.89863672132820582
	.quad	0x3fd34f5a56f49512              # double 0.3017183159993958
	.quad	0x3fcfdaf997ff3868              # double 0.24887008592344562
	.quad	0x3fd89b902008e0e0              # double 0.38449481132876251
	.quad	0x3fa61f3aaf8337b0              # double 0.04320701019751938
	.quad	0x3fccd29c6eb2f614              # double 0.22517733960369013
	.quad	0x3fe0e42ee2529fe0              # double 0.52785438731825352
	.quad	0x3feadf1cf6e75b29              # double 0.83973549102197353
	.quad	0x3fcc8a77e3376018              # double 0.22297571749254597
	.quad	0x3fe3f5fdc62a9435              # double 0.62377823547706746
	.quad	0x3fe71e1d8a5e68ef              # double 0.72242619538454089
	.quad	0x3fe97154032209de              # double 0.79508400546938751
	.quad	0x3fe758768797ed81              # double 0.72954870684718298
	.quad	0x3fedef7d26a06d0c              # double 0.93548448128004357
	.quad	0x3fd202fe5626bb14              # double 0.28143270886623495
	.quad	0x3fb8b24606148948              # double 0.096470238193920754
	.quad	0x3fe945a5ab9f8de8              # double 0.78975184936683451
	.quad	0x3fe669bfd9db3319              # double 0.70040886449860118
	.quad	0x3fbaf43ca3ee9018              # double 0.1052892589783031
	.quad	0x3fdd3e19aebe33b4              # double 0.45691530289405624
	.quad	0x3f9de41909cc04c0              # double 0.029190436575849743
	.quad	0x3fed0ba9647b1569              # double 0.90767354607730255
	.quad	0x3fe52258ef7b7834              # double 0.66044279836547171
	.quad	0x3fe51efd18d42d2a              # double 0.66003279542329563
	.quad	0x3feac95540c370ff              # double 0.83707678460226009
	.quad	0x3fb632a463064ee0              # double 0.086710237670839074
	.quad	0x3fd7c42e580ae46a              # double 0.37134893987565099
	.quad	0x3fd8e4e43f903a52              # double 0.38897043425905509
	.quad	0x3feb734445bbb78f              # double 0.85782064075259423
	.quad	0x3fe7c29a91690313              # double 0.74250534439497284
	.quad	0x3fd0e1d393a795d6              # double 0.26378335399053066
	.quad	0x3fd88a39250c8ab6              # double 0.383436475926071
	.quad	0x3fea24b7c416f70e              # double 0.81698215769549321
	.quad	0x3fd8fd5b4030bc68              # double 0.39046365040389341
	.quad	0x3fdfffac85bebc56              # double 0.49998009739915028
	.quad	0x3fb935865bd56878              # double 0.098472974224394494
	.quad	0x3fe86ee4f0b634d1              # double 0.76353690160763155
	.quad	0x3fb7375338959860              # double 0.090687943758525957
	.quad	0x3fe333248c5bdfa3              # double 0.59999301351398449
	.quad	0x3feb5604a3861a90              # double 0.85425025881052541
	.quad	0x3fe545c110e2f6aa              # double 0.66476491258773263
	.quad	0x3fb9dfee5c949150              # double 0.10107316742193473
	.quad	0x3fcbe3ea1ec718e0              # double 0.21789289954012414
	.quad	0x3fd42318e501673c              # double 0.31464216579262305
	.quad	0x3fe42311d0c21b4a              # double 0.62928095601169187
	.quad	0x3fecd27b2d0bd3d4              # double 0.90069350050054675
	.quad	0x3fe8fb2d641236b4              # double 0.78066129250665605
	.quad	0x3fea4c96326ce9c4              # double 0.82184896324843537
	.quad	0x3fd85ef76c29b898              # double 0.38079629481115651
	.quad	0x3fec91dfef27133b              # double 0.89280697545527887
	.quad	0x3fe37259c6e1f6cf              # double 0.60770882457992481
	.quad	0x3fdf327da4ca2af8              # double 0.48745671360727227
	.quad	0x3fa5f4c56a88f1c0              # double 0.042883080725434564
	.quad	0x3fed867eccc90354              # double 0.9226678847991061
	.quad	0x3fefd792635bf96c              # double 0.99506492048366856
	.quad	0x3fce7e81dcf44194              # double 0.23823569573188463
	.quad	0x3fc866f92f05d0d4              # double 0.19064249797850741
	.quad	0x3fbba483ba1747e0              # double 0.10797904294238903
	.quad	0x3fe8dec48c950f5a              # double 0.77719333131288271
	.quad	0x3feec1de6a108b65              # double 0.96116562572238406
	.quad	0x3fc607c73a8b2270              # double 0.17211237295693449
	.quad	0x3fc16d6bb22f0d3c              # double 0.13615175438290261
	.quad	0x3feb1e5e95a58fdd              # double 0.84745721080662018
	.quad	0x3fd93f3091f8207a              # double 0.39448179488000046
	.quad	0x3fd2c24086c1d95a              # double 0.29310620460400616
	.quad	0x3fa0489abd38bed0              # double 0.031803927992198333
	.quad	0x3faaa11e8ae2aef0              # double 0.052010492757600946
	.quad	0x3fe46a524eee19b5              # double 0.63797870079070285
	.quad	0x3fdbda0f778d8392              # double 0.43518435168339764
	.quad	0x3fe959ae35abf87c              # double 0.79219732744947135
	.quad	0x3fca7838606f00e8              # double 0.20679383000061269
	.quad	0x3fef42ba888ec5b8              # double 0.97689558669497156
	.quad	0x3fd35e156a78dbfc              # double 0.30261741063753766
	.quad	0x3fe2700f447fb0ea              # double 0.57617915514631801
	.quad	0x3fe7b30401ea8706              # double 0.74060249685518964
	.quad	0x3fe09f929b602cdf              # double 0.51947908732236303
	.quad	0x3fc7b04dcf2c82e4              # double 0.18506786933814745
	.quad	0x3fe9dee29b194949              # double 0.80845766346673387
	.quad	0x3fec5bedf8bb11c2              # double 0.88622187214109993
	.quad	0x3fd28b491f67bc66              # double 0.28975132052341335
	.quad	0x3fb2123fc19f8b10              # double 0.070590958377163782
	.quad	0x3fe2757ffb8e2f49              # double 0.57684325344005416
	.quad	0x3f98a5445e283f80              # double 0.024067943808460779
	.quad	0x3fe203cfa1324534              # double 0.56296521648088182
	.quad	0x3fe7247fe7747ffa              # double 0.72320552068776967
	.quad	0x3fdaab4dd9c406b2              # double 0.4167055727594785
	.quad	0x3fe8c8664a846bf1              # double 0.77446283868937205
	.quad	0x3feb29427e4c6ea1              # double 0.84878658931434725
	.quad	0x3fef45dfaf64f3c1              # double 0.97727951294620407
	.quad	0x3fdfa749d8215534              # double 0.49458547693696464
	.quad	0x3fdd0543b64ae2ec              # double 0.45344631959919357
	.quad	0x3fecdb1c526049c5              # double 0.90174690331542051
	.quad	0x3fba6a8f0b806988              # double 0.10318845778275521
	.quad	0x3fe33e3c98930a63              # double 0.60134725379641585
	.quad	0x3fcfc80a90fe6f78              # double 0.24829227523593622
	.quad	0x3fd18736638f8f38              # double 0.2738777134202226
	.quad	0x3fd03af7e60e3fd6              # double 0.25359914270756911
	.quad	0x3fe8e087702711cb              # double 0.77740833191688219
	.quad	0x3fe901c72573dfc5              # double 0.78146703066794798
	.quad	0x3fc7f250b2717714              # double 0.18708237374351511
	.quad	0x3fb9f351c008aa88              # double 0.10136900842977969
	.quad	0x3fce41c48c7160dc              # double 0.23638207299769121
	.quad	0x3fe7e75319d449a0              # double 0.74698786778235515
	.quad	0x3fecb7fa1cf3556a              # double 0.89745813040160027
	.quad	0x3fe5168026c2d0a1              # double 0.65899665422923104
	.quad	0x3fef5865fbec85e9              # double 0.97954081729784292
	.quad	0x3fe5739c9e8af0c2              # double 0.67036276784303817
	.quad	0x3fe2ff46703ec7ba              # double 0.59366151736161688
	.quad	0x3fdf603587cc6060              # double 0.4902471376567572
	.quad	0x3fb2c06a98f9caf0              # double 0.073248541209789186
	.quad	0x3fed88842fe86f0c              # double 0.92291459424038313
	.quad	0x3fdf71e65b00f20c              # double 0.49132689368323734
	.quad	0x3f695b27b9a21e00              # double 0.0030952239877171106
	.quad	0x3fee2630cc2c78d7              # double 0.9421619403617808
	.quad	0x3fc71075d1c4a144              # double 0.18018982641775427
	.quad	0x3feb4343844558bd              # double 0.85196090540082248
	.quad	0x3fc0f202efe4dd68              # double 0.13238560403417954
	.quad	0x3fefee4561ff029b              # double 0.99783581867093873
	.quad	0x3f7d00ddc65e9d80              # double 0.0070809043008134287
	.quad	0x3fe195d08e1c5dd4              # double 0.54953792339341101
	.quad	0x3fe7605d18574d42              # double 0.73051314119440058
	.quad	0x3fc6ac8e53ce5168              # double 0.1771409901817933
	.quad	0x3fa73b2f8eeb77b0              # double 0.045373426624549906
	.quad	0x3fe405b7362dec78              # double 0.62569771367942817
	.quad	0x3feeab7fe7f35c20              # double 0.95843501379829731
	.quad	0x3fc7383d88660770              # double 0.18140381965718744
	.quad	0x3fe8a6f8756f5450              # double 0.77038214622974444
	.quad	0x3fdce8febf70faf4              # double 0.45172089286272343
	.quad	0x3fd262d1aacf510c              # double 0.28728143387458327
	.quad	0x3fb65893187ae780              # double 0.087289041019998236
	.quad	0x3fa7437402a2b110              # double 0.045436501809804963
	.quad	0x3fec8de44007bff1              # double 0.89232075220024687
	.quad	0x3fd0391420066bae              # double 0.25348380210351251
	.quad	0x3fefebc9a09af060              # double 0.99753266685685204
	.quad	0x3fe6684865ab5bf5              # double 0.70022983414935303
	.quad	0x3fef084f656f07c1              # double 0.96976442157050979
	.quad	0x3fc9509ef0ab01d8              # double 0.19777285338751827
	.quad	0x3fc7691ac39b3374              # double 0.1828950362309133
	.quad	0x3fd011255c78f7bc              # double 0.2510465052654316
	.quad	0x3fd5d77c42466e1c              # double 0.34127718422107178
	.quad	0x3fea2804af9e1168              # double 0.81738504696162995
	.quad	0x3fe4de775f27832c              # double 0.65215653023560582
	.quad	0x3fe445be1af27360              # double 0.63351350081539337
	.quad	0x3fe6ca5e17331721              # double 0.71220306903044073
	.quad	0x3feea47638d858c3              # double 0.95757590391692593
	.quad	0x3fb18a04a1fcbd78              # double 0.068512239024803523
	.quad	0x3fe2bc34d03780d2              # double 0.58547440211625656
	.quad	0x3fe41f1b90ebc3c7              # double 0.62879732422708734
	.quad	0x3fe56c8df5f40d06              # double 0.66950128591307201
	.quad	0x3feee7a33f3c28e0              # double 0.9657760844286507
	.quad	0x3fedd1e1adf44450              # double 0.93187030768798174
	.quad	0x3fd526bc62da9fe0              # double 0.33048925069533475
	.quad	0x3fe9d10f93675446              # double 0.80677012243052881
	.quad	0x3fd74abfd9cfd078              # double 0.36393734236413122
	.quad	0x3fe172bf9ef606cb              # double 0.54525738761022902
	.quad	0x3fdddebe1d101e4c              # double 0.46672013128452217
	.quad	0x3fe6bcb2f8ed02ce              # double 0.71053455942463883
	.quad	0x3feaf66360407072              # double 0.84257668303645361
	.quad	0x3fd08131f5811b7e              # double 0.25788544631034671
	.quad	0x3fdf1a6b3460e35e              # double 0.48598747363171479
	.quad	0x3feae2008c236275              # double 0.84008815165277773
	.quad	0x3f76e74d69752380              # double 0.0055916808990524869
	.quad	0x3fecf39c373e75da              # double 0.90473757543412181
	.quad	0x3fda3a1df2062cd6              # double 0.40979717860382203
	.quad	0x3fc73faee6a2c9ac              # double 0.18163095723646216
	.quad	0x3fed122b72c7ecb8              # double 0.90846798341899326
	.quad	0x3fec8679d7bd7a76              # double 0.8914155210184862
	.quad	0x3fc257fdc768fa2c              # double 0.14331028210468
	.quad	0x3fee30f98036e496              # double 0.94347834627037019
	.quad	0x3fdcdb995fc14e14              # double 0.45090326644023659
	.quad	0x3fe25fd887965601              # double 0.57419992906460504
	.quad	0x3fefe25d8cccf0de              # double 0.99638249874217499
	.quad	0x3fe2a28f7c58a1dd              # double 0.58234380995150625
	.quad	0x3fc4fa5b6ab5840c              # double 0.16389029226687091
	.quad	0x3fd3e77132bdd03e              # double 0.3110011096498545
	.quad	0x3fb798ab15d90ce0              # double 0.0921732834186062
	.quad	0x3fd24af6fe16453a              # double 0.28582548916991224
	.quad	0x3fdacb45c5908002              # double 0.41865677159694326
	.quad	0x3fcae48020f405b8              # double 0.21009828194659774
	.quad	0x3fef262d4f4931a8              # double 0.97341027722864215
	.quad	0x3fe83e4720f4b280              # double 0.75760227619828413
	.quad	0x3fc7d662e07462f4              # double 0.18623004874896021
	.quad	0x3f9f20cf2cb66900              # double 0.030398594955479474
	.quad	0x3fc37268f9e3222c              # double 0.15192901803517722
	.quad	0x3fdcfdade4de6b4a              # double 0.45298335409613755
	.quad	0x3fc1ef6a362113ec              # double 0.1401188625624451
	.quad	0x3fdf34a480b93044              # double 0.48758804865497418
	.quad	0x3fc393ea7e2915c0              # double 0.15295153770618519
	.quad	0x3fe15b1be0781e8b              # double 0.54237169114726791
	.quad	0x3fe0f30963190a32              # double 0.52966756205598231
	.quad	0x3fec05172cc81abe              # double 0.87562140222947682
	.quad	0x3fa32c846229e2b0              # double 0.037449013693679034
	.quad	0x3fea3751b8550323              # double 0.81925283434256746
	.quad	0x3fd204034c968d32              # double 0.2814949272089563
	.quad	0x3fe44d763433d3af              # double 0.63445577808180598
	.quad	0x3fd99f2d15f09a68              # double 0.4003403391128928
	.quad	0x3fdc936116d1b3dc              # double 0.44649531582291302
	.quad	0x3fea55ff6a29cca4              # double 0.82299776778235811
	.quad	0x3feec74f3528e094              # double 0.96182976134061215
	.quad	0x3fcba76463d187e0              # double 0.21604590295743176
	.quad	0x3fc64fa7afd2ca48              # double 0.17430587849738033
	.quad	0x3fd37810af82e8a4              # double 0.30420319690495945
	.quad	0x3fc17509657aa678              # double 0.13638417677912051
	.quad	0x3fd8dafb53473038              # double 0.38836558468460991
	.quad	0x3fc28fe988bc2398              # double 0.14501685310849832
	.quad	0x3fe08f928dffa10d              # double 0.51752593740551023
	.quad	0x3fe688a4a9ea7b7e              # double 0.70418008028705947
	.quad	0x3feb70ce8d063245              # double 0.85752036613264038
	.quad	0x3fa82092fa7a2900              # double 0.047123520923451068
	.quad	0x3fcfc7088ee316dc              # double 0.24826151825816722
	.quad	0x3fd3b9e9c7191a18              # double 0.3082222408596933
	.quad	0x3fe31410a107b5eb              # double 0.5961993355865024
	.quad	0x3fd66c7047dbc7f6              # double 0.35036856667932115
	.quad	0x3fcf4677f2742968              # double 0.24433802927553505
	.quad	0x3f8616c92a0f85c0              # double 0.010785647960747435
	.quad	0x3feb485facf403f8              # double 0.85258468418044142
	.quad	0x3fe7b9aa73c32c39              # double 0.74141428575365531
	.quad	0x3fab918e569fb540              # double 0.053844879221154773
	.quad	0x3fd676c7be0d47f0              # double 0.35099977073434641
	.quad	0x3fd7affbc3a83138              # double 0.37011617762688642
	.quad	0x3fe48de4c5611fa8              # double 0.64232100058233232
	.quad	0x3fda73da334a6c22              # double 0.41332106598719254
	.quad	0x3fe3650d5d2647f6              # double 0.60608547395008716
	.quad	0x3fd259e68dc1487e              # double 0.28673709719908647
	.quad	0x3fe18a0e788df77b              # double 0.54810260339557659
	.quad	0x3fd7fd26f8892ee2              # double 0.37482618590432371
	.quad	0x3f96519ff19050c0              # double 0.021795748824005257
	.quad	0x3fe7099627b916f0              # double 0.71992023237609537
	.quad	0x3fcd2874b864c964              # double 0.22779711726759466
	.quad	0x3faa04c1d8bcd4a0              # double 0.05081754465792554
	.quad	0x3fe1bb1c22b37a0c              # double 0.55409056451372996
	.quad	0x3fed5ab644cf0b75              # double 0.91732324065411197
	.quad	0x3fbbe9005c68a9f0              # double 0.1090240693671729
	.quad	0x3fe88f04197efb9d              # double 0.76745800952618348
	.quad	0x3fe13453b6272cf5              # double 0.53763757302058812
	.quad	0x3fe01d8eab98be73              # double 0.50360806956264381
	.quad	0x3fe3a30733f4c930              # double 0.61365089557356178
	.quad	0x3fd783283fec5842              # double 0.36738020174505348
	.quad	0x3fe692266795787c              # double 0.70534057837700415
	.quad	0x3fe8893070cbbba4              # double 0.76674673109470292
	.quad	0x3fd02e9d1b9459ac              # double 0.25284507458982364
	.quad	0x3fd78074b6de7120              # double 0.36721532686512326
	.quad	0x3fcddb727fe63d50              # double 0.23325949902617049
	.quad	0x3fe608e2eea60ac2              # double 0.68858477221541414
	.quad	0x3feda047f4080a58              # double 0.92581555998215048
	.quad	0x3fdaaee83b598a16              # double 0.4169254855716259
	.quad	0x3feeb4ab95bddfe3              # double 0.9595544743196992
	.quad	0x3fa47e9556681960              # double 0.040028254316029743
	.quad	0x3fd511fc87f6674c              # double 0.32922280576314189
	.quad	0x3fe3f5f8de8f5b1b              # double 0.62377589672800882
	.quad	0x3fc6bed849470d9c              # double 0.17769912317281189
	.quad	0x3fca52c070132ec8              # double 0.20565038177880113
	.quad	0x3fd48b7a9662111a              # double 0.32101311384055153
	.quad	0x3fa36290c4e81e80              # double 0.03786137012144497
	.quad	0x3fcef909a014ab78              # double 0.24197502438013507
	.quad	0x3fc540673d036b2c              # double 0.16602793196838073
	.quad	0x3fdbb17c2138bae2              # double 0.43270781750008613
	.quad	0x3fc76c7d2b521b24              # double 0.18299831977147918
	.quad	0x3fc4bdcaa816adcc              # double 0.16204198081446319
	.quad	0x3fd838cb7e1c8bf8              # double 0.3784664851720545
	.quad	0x3fe7af5c2f1fede3              # double 0.74015626148269253
	.quad	0x3fe425a37f0943d9              # double 0.62959456264263303
	.quad	0x3fdc06d8781c5b2a              # double 0.43791782121245382
	.quad	0x3fc3ef5fd26fc718              # double 0.15574262404657513
	.quad	0x3fee137e6842b0c5              # double 0.93987961161976641
	.quad	0x3fe25851dc958cd3              # double 0.57328122217986743
	.quad	0x3feecbac3f0bdb7a              # double 0.96236240686162877
	.quad	0x3fdfc53068908008              # double 0.49641046725628302
	.quad	0x3fd54f4f18ceaf02              # double 0.33296563551515146
	.quad	0x3fc4ba0a2ac53504              # double 0.16192748154063719
	.quad	0x3fe5292dd8a2be06              # double 0.6612767440000773
	.quad	0x3fe7988831ae3412              # double 0.73736962989062449
	.quad	0x3fb86d1d753e44f0              # double 0.09541496384032988
	.quad	0x3fdb5e269fc2ae76              # double 0.42762151338204235
	.quad	0x3fc53ea795be55b8              # double 0.16597456752485384
	.quad	0x3fb97c95c22b25c8              # double 0.0995572661442089
	.quad	0x3fd2188c7027733a              # double 0.28274832680272122
	.quad	0x3fe7cfd03f54e9d4              # double 0.74411785478087689
	.quad	0x3fdd5652eaf7ac08              # double 0.45839379259149426
	.quad	0x3fbee6ae69e8e488              # double 0.12070741735159818
	.quad	0x3fc91d65c04e4b28              # double 0.19620963945325198
	.quad	0x3fe5a6601afc4b7f              # double 0.67655949850664843
	.quad	0x3fb03df5b7ddf9e0              # double 0.063445432080676323
	.quad	0x3fdd734e6adeace8              # double 0.46016273914820127
	.quad	0x3fcc492ff5ed1bb0              # double 0.2209835005580465
	.quad	0x3fcc5e1214b7f3ec              # double 0.22162080775879589
	.quad	0x3fef3eec7ed24b8f              # double 0.97643112916772334
	.quad	0x3fee4fc59c21f600              # double 0.94723778242740763
	.quad	0x3fed86afb46865b3              # double 0.92269120441340247
	.quad	0x3feb85de03480fd5              # double 0.86009121552387546
	.quad	0x3fa55d4f27b76820              # double 0.041727517698476158
	.quad	0x3fcbe8254518e118              # double 0.21802202104459734
	.quad	0x3fef16eb69bfc308              # double 0.97154780058016942
	.quad	0x3fd384be2ac95e80              # double 0.3049769800031541
	.quad	0x3fce1b92c2e391b8              # double 0.23521646991788514
	.quad	0x3f9647a4118f86a0              # double 0.021757663318459408
	.quad	0x3fa8e2145d659720              # double 0.048599850083333118
	.quad	0x3fefcba43f2436b9              # double 0.99360859234157949
	.quad	0x3fc8c754835e31fc              # double 0.19358307280016607
	.quad	0x3fcdfd611cf1b29c              # double 0.23429502404487301
	.quad	0x3fe16c0e454ffe85              # double 0.54444039857476467
	.quad	0x3fed697feef9e1b6              # double 0.91912838625926585
	.quad	0x3fd971d0dc7a8e18              # double 0.39757176905752223
	.quad	0x3fe7448d3f57b768              # double 0.72711813327417207
	.quad	0x3fe8c6508a4d792e              # double 0.77420832645637971
	.quad	0x3fe2a3e18e239f6e              # double 0.58250501405289667
	.quad	0x3fd0d121c8a136ac              # double 0.2627644023203668
	.quad	0x3fe5e24320bab3ec              # double 0.68386989967768619
	.quad	0x3fa6a0097b7fda00              # double 0.044189735723126233
	.quad	0x3feb1f1c04fb5a8b              # double 0.84754754040734903
	.quad	0x3fe8f870a93def31              # double 0.78032715849938061
	.quad	0x3fd115324c4ed28a              # double 0.26691873027747504
	.quad	0x3fc5254cb3458a54              # double 0.16520079377649444
	.quad	0x3fe512282a373161              # double 0.65846641774400549
	.quad	0x3fd13e3ade0e35e4              # double 0.26942321477039699
	.quad	0x3fe828db73a5e5ef              # double 0.75498745524890676
	.quad	0x3fe88b52e96d6a07              # double 0.76700730887688529
	.quad	0x3fdea4f1b15d9b7c              # double 0.47881738968720078
	.quad	0x3fa5f0cd1ada3990              # double 0.042852792289625019
	.quad	0x3fda78c705dacf10              # double 0.413621669499876
	.quad	0x3fc3123793b9ad90              # double 0.1489934417071308
	.quad	0x3feebd2ad26904d2              # double 0.96059170814273842
	.quad	0x3fd71c54aa1e3ad8              # double 0.3611041699704578
	.quad	0x3fed308142553575              # double 0.91217101054796379
	.quad	0x3fdc0021fb94c35e              # double 0.43750810211627378
	.quad	0x3fea3d8fc5d746e9              # double 0.82001484528356372
	.quad	0x3fed36c6d46a08ed              # double 0.91293660628460105
	.quad	0x3fd8536c611326f6              # double 0.38009175758325797
	.quad	0x3fe35231b70a14ce              # double 0.60378347158316514
	.quad	0x3fe05f420aa7e138              # double 0.51162817078787892
	.quad	0x3fc8e3746724c55c              # double 0.19444136654196142
	.quad	0x3febaa9497f17b55              # double 0.86457280804084269
	.quad	0x3fd8cde8740c8048              # double 0.38756762822049895
	.quad	0x3fe8eb7e022810cf              # double 0.77874660893623993
	.quad	0x3fe739f95d76cd26              # double 0.72582691435528512
	.quad	0x3fec1ff516473999              # double 0.87890104628768306
	.quad	0x3fa082f03d7def20              # double 0.032248981005038369
	.quad	0x3fe1bdaff31933a8              # double 0.55440518837132391
	.quad	0x3fc73b1719108b90              # double 0.18149079059466233
	.quad	0x3fe512ca2524ca7d              # double 0.65854365591651709
	.quad	0x3fe5757546929d69              # double 0.67058814796193389
	.quad	0x3fe6d9c1499bea22              # double 0.71408142449155698
	.quad	0x3fe3dd36e36eeff8              # double 0.6207537118966675
	.quad	0x3fe762bff457ff3d              # double 0.73080442164789583
	.quad	0x3fe3fa50c8a42914              # double 0.62430609882111066
	.quad	0x3feb733f31067465              # double 0.85781821799504299
	.quad	0x3fe8cb7e11d814e7              # double 0.77484038815660206
	.quad	0x3fd7ae2d24ac2322              # double 0.37000588017740388
	.quad	0x3feec2db8d120fcf              # double 0.96128633072702907
	.quad	0x3feba03d76a56906              # double 0.86331055806229595
	.quad	0x3fd4aef071c7986e              # double 0.32317744361205925
	.quad	0x3fe7cf935eb50883              # double 0.74408882615559013
	.quad	0x3fb886067ffa7098              # double 0.095795065159509085
	.quad	0x3f81900560cbc0c0              # double 0.0085754795231597347
	.quad	0x3f501a9ef39c2a00              # double 9.8290941827150479E-4
	.quad	0x3fe573e749f9fecc              # double 0.67039837311309602
	.quad	0x3fd97bec440697fe              # double 0.39818865435734085
	.quad	0x3fe14e4a52b44d9c              # double 0.54080692437348743
	.quad	0x3fe6b7172035fdbd              # double 0.70984989443962088
	.quad	0x3fe61adee60858be              # double 0.69078011444323528
	.quad	0x3fea74d5ca8a2448              # double 0.82676209982413074
	.quad	0x3fd8d4450b0c7258              # double 0.387955914296787
	.quad	0x3fe15face67e55fb              # double 0.54292912500630963
	.quad	0x3fe14dc5018632df              # double 0.54074335382173533
	.quad	0x3fc6f7b6b3f1a18c              # double 0.17943462168046798
	.quad	0x3fb28b35ee8433a0              # double 0.072436686259790495
	.quad	0x3fe7d1c03956b363              # double 0.74435435484847934
	.quad	0x3fcd14b6264a3e70              # double 0.22719456548337602
	.quad	0x3fe16f2f1f21ff85              # double 0.54482227402330408
	.quad	0x3feb179a118d1e22              # double 0.84663108280159727
	.quad	0x3fa459d166146120              # double 0.03974775668229058
	.quad	0x3fe38220aab56f6f              # double 0.60963471738385333
	.quad	0x3fc95649e70d7e7c              # double 0.19794582158919016
	.quad	0x3fe00a146b1e3aee              # double 0.50123043939114864
	.quad	0x3fd94ec7dc377e9c              # double 0.39543339257759569
	.quad	0x3fe916ff2dc9e033              # double 0.78405722563821312
	.quad	0x3fd1032092ec1f9a              # double 0.26581587169538923
	.quad	0x3fb62526e4c23018              # double 0.086504393433813553
	.quad	0x3fdbb24f905d47e0              # double 0.4327582273300532
	.quad	0x3fc34b50d607e820              # double 0.15073595476843682
	.quad	0x3fe21c671df0ec04              # double 0.56596713874694204
	.quad	0x3fe07a68731ff639              # double 0.51494238362619804
	.quad	0x3fb7215865df64b8              # double 0.090352558966872887
	.quad	0x3fd0cd0f66848372              # double 0.26251587878692029
	.quad	0x3fececd8111bb647              # double 0.9039116224427709
	.quad	0x3fe22f0eb54de207              # double 0.56824431811315967
	.quad	0x3fd713d8266ab480              # double 0.36058620216028459
	.quad	0x3fb73ad5249f0638              # double 0.090741464081497081
	.quad	0x3fed9628e32a6d3b              # double 0.92458004349047174
	.quad	0x3fdf57a0276219fc              # double 0.48972324224487784
	.quad	0x3f711e6a1a825e00              # double 0.004179396121024137
	.quad	0x3fd1673ddf202fbc              # double 0.271926372429103
	.quad	0x3fe2ce44e4874493              # double 0.58767933496905511
	.quad	0x3fdd423fee46a56c              # double 0.45716856259476546
	.quad	0x3fec00ee4f5bed5d              # double 0.87511363506147755
	.quad	0x3fddf6a4a5b28340              # double 0.46817890340212287
	.quad	0x3fefdd695fd2b3e8              # double 0.99577778544846484
	.quad	0x3fc33c9544f8143c              # double 0.15028634898786375
	.quad	0x3fb9acc850c4d088              # double 0.10029270145315838
	.quad	0x3fe53cc3834bfa92              # double 0.66366744655518262
	.quad	0x3face95db6d1e3d0              # double 0.056467941824798751
	.quad	0x3fd21a9cec96ca78              # double 0.28287432770154153
	.quad	0x3fd22107b251a7a4              # double 0.28326599515878059
	.quad	0x3fec52d0d99066e2              # double 0.88510935299856563
	.quad	0x3fdd252fdc875adc              # double 0.45539471183785252
	.quad	0x3fed8ee0c6f531d9              # double 0.92369116648620342
	.quad	0x3fe5fc771e17c1ea              # double 0.68706851842403904
	.quad	0x3fe8948be9be7269              # double 0.76813312199699368
	.quad	0x3fe3a99ac84318b2              # double 0.61445368875208417
	.quad	0x3f917fb3ba37c460              # double 0.017088707199892972
	.quad	0x3fe410ca6365ba32              # double 0.62704963124799051
	.quad	0x3fe2ec0425d1562e              # double 0.59131057153962785
	.quad	0x3fd0019b5efcc608              # double 0.25009807849991761
	.quad	0x3feb513c7ff841c5              # double 0.85366654390423291
	.quad	0x3fec8ca3e2d14de7              # double 0.89216799068748009
	.quad	0x3fe2cf759c80375f              # double 0.58782463614054936
	.quad	0x3feb6058a3f66631              # double 0.85551101707387123
	.quad	0x3fda4016a1c2a86c              # double 0.41016164585983605
	.quad	0x3fe77ab20cf2c397              # double 0.73372747925724269
	.quad	0x3fe852f7fff99514              # double 0.76012802119353972
	.quad	0x3fb1222d6a5cfd88              # double 0.066927755801762356
	.quad	0x3fc906017a4393bc              # double 0.19549578161163861
	.quad	0x3f87b1c933e23800              # double 0.011569568534721242
	.quad	0x3fed67fafe8566d7              # double 0.91894292555954393
	.quad	0x3fd99a670063a6f2              # double 0.4000489715386798
	.quad	0x3fec5a02a57e8436              # double 0.88598759005629435
	.quad	0x3fef64e3fe8ea22b              # double 0.98106574743457508
	.quad	0x3fe844dcf0d596f0              # double 0.75840613401370938
	.quad	0x3fedcb3f59c41f35              # double 0.93106048138085973
	.quad	0x3fd55e6e3f0caeac              # double 0.33388858945066135
	.quad	0x3fe93afcce968c1c              # double 0.78845062588914371
	.quad	0x3fe4d01edc06100b              # double 0.65040533994079064
	.quad	0x3febed0201aac06a              # double 0.87268162084184309
	.quad	0x3fdfe3b8aff22974              # double 0.4982740133497352
	.quad	0x3fdc8d48beaf9ed0              # double 0.44612330075913764
	.quad	0x3fe4f2290b53e977              # double 0.65456058704812292
	.quad	0x3f4a5c09857ff800              # double 8.0442871967512097E-4
	.quad	0x3fefb2f7914829bd              # double 0.99059656501167803
	.quad	0x3fed500180ca06c7              # double 0.91601634172567337
	.quad	0x3fcf03a9c7c08584              # double 0.24229929212109991
	.quad	0x3fd5b3d0e571c744              # double 0.33910009771999605
	.quad	0x3fe94dae4ada624d              # double 0.79073252315272102
	.quad	0x3fe96ba8fbe310c9              # double 0.79439210125613002
	.quad	0x3fe3aee9b7e95c8f              # double 0.61510167999485243
	.quad	0x3fef3008ba227530              # double 0.97461353639997661
	.quad	0x3fd96890ec510780              # double 0.3970072086123011
	.quad	0x3f8b9912237d76c0              # double 0.013475553234168713
	.quad	0x3fde3b7545dae79a              # double 0.47237903425013317
	.quad	0x3fe7be836c4649df              # double 0.7420060267198173
	.quad	0x3fc3e6dbc5556508              # double 0.15548274169376719
	.quad	0x3fc7467e6354a92c              # double 0.18183879709369799
	.quad	0x3fd499d2918e1268              # double 0.32188858236648921
	.quad	0x3fdf1d05fa2ab694              # double 0.48614644461017886
	.quad	0x3fee2e6c986c56a9              # double 0.94316701669841507
	.quad	0x3fe7e3d355ca6fa5              # double 0.74656073337563511
	.quad	0x3fd9288b6d8712d6              # double 0.39309964843805056
	.quad	0x3fec6573fb5fdc06              # double 0.88738440605709523
	.quad	0x3fe49fbdf6f5f8ce              # double 0.64449976191078817
	.quad	0x3fee299c9853b660              # double 0.94257955314033026
	.quad	0x3fccef906c16b5b8              # double 0.2260609176422983
	.quad	0x3fcef020613a0c9c              # double 0.24170307872200147
	.quad	0x3fe1fe63f447e5ba              # double 0.56230352126220073
	.quad	0x3fdbe6ff37fce4cc              # double 0.43597393481793456
	.quad	0x3fe264b5d716d2a9              # double 0.57479373941040024
	.quad	0x3fe9b4e5eede30c5              # double 0.80333229688542274
	.quad	0x3fee7d174139bb72              # double 0.95276987780913047
	.quad	0x3fed39db470d2cba              # double 0.91331256749381073
	.quad	0x3fe1e66846a0fd81              # double 0.5593758944959718
	.quad	0x3fdd3f2b1143d20e              # double 0.45698048292186477
	.quad	0x3fe3388a7210491d              # double 0.60065195348787237
	.quad	0x3fc83f973d61ae8c              # double 0.1894406366076179
	.quad	0x3fe4aeee3f8d67f6              # double 0.64635383999416152
	.quad	0x3fafed0bbbb17fb0              # double 0.062355391179834796
	.quad	0x3fe192a9dff40fe0              # double 0.54915326825038946
	.quad	0x3fe8fba138776242              # double 0.78071652439673067
	.quad	0x3fdd9918f37c618c              # double 0.46246932771602967
	.quad	0x3feb0c98574c6b0b              # double 0.84528748560418998
	.quad	0x3fd71abc3e5528b4              # double 0.36100679480717734
	.quad	0x3fd8e2a46e506792              # double 0.38883314869746599
	.quad	0x3fda744c257bb0a4              # double 0.41334823284592859
	.quad	0x3fe00a8c55e9a031              # double 0.50128762035183716
	.quad	0x3fe2f7a1b4771c32              # double 0.59272847411273788
	.quad	0x3fea996ac00f9319              # double 0.83122766029245831
	.quad	0x3fb986fe58b09b80              # double 0.099716087963868105
	.quad	0x3fe5974aa1178594              # double 0.6747182031942196
	.quad	0x3fa4ce6e59d68940              # double 0.040637443987423527
	.quad	0x3fd9c105ccf4365c              # double 0.40240616812739005
	.quad	0x3fe83a1282779974              # double 0.75708890420791741
	.quad	0x3fe1db7d59ea4348              # double 0.55804317056218
	.quad	0x3fe0d0bd43b3998b              # double 0.52548087332688576
	.quad	0x3fe5fee0ee00ad55              # double 0.68736311421290941
	.quad	0x3fb905a821073148              # double 0.097742565215587551
	.quad	0x3fe1d840c06b9057              # double 0.5576480634886235
	.quad	0x3fd5bd1a6670d0d8              # double 0.33966693881963073
	.quad	0x3fbce04ee35a6328              # double 0.11279767084705539
	.quad	0x3fe394e77261c5dc              # double 0.61192676868648332
	.quad	0x3fe5d502e914115e              # double 0.68225236437914893
	.quad	0x3fec3b9db7af9736              # double 0.88227735401299046
	.quad	0x3fd7d8c51c7e102e              # double 0.37260558874573035
	.quad	0x3fed29a31894f531              # double 0.91133265305658118
	.quad	0x3fd8ac4d7768f0b2              # double 0.38551651631474748
	.quad	0x3fe7c6e1aa3c0ecd              # double 0.74302752732224919
	.quad	0x3fe0d7d60a9d260a              # double 0.52634718010921344
	.quad	0x3fe7f178c7af5063              # double 0.74822653771344638
	.quad	0x3fd25e3867f04252              # double 0.28700075292821225
	.quad	0x3feb1e5e98dfa23b              # double 0.84745721681708319
	.quad	0x3fc8d8a66e371d90              # double 0.1941116369400615
	.quad	0x3fc2f5697152b930              # double 0.14811437638622627
	.quad	0x3fa0545d2c93cf20              # double 0.031893645946097005
	.quad	0x3fc7243d428aca5c              # double 0.18079343556526595
	.quad	0x3fc44acdc9e3e06c              # double 0.15853283269803187
	.quad	0x3fbcd7cf3a8fc880              # double 0.1126679914448534
	.quad	0x3fd0fae05267ec60              # double 0.26531227157074078
	.quad	0x3fe32f9bcf0f1a34              # double 0.59956160012445148
	.quad	0x3fc121c8dfdd5340              # double 0.13384352618109041
	.quad	0x3fb06d2c8fcd47f0              # double 0.064165864093666647
	.quad	0x3feeebd1ec5e4265              # double 0.96628662267364673
	.quad	0x3fee6b09ce3cff92              # double 0.95056619912064577
	.quad	0x3fe30b0fb61820e6              # double 0.59510026517184822
	.quad	0x3fe80593b0d3b219              # double 0.75068077599059102
	.quad	0x3fc4350127f5fb2c              # double 0.15786756945814184
	.quad	0x3fde94b62c4b06a4              # double 0.47782663655753255
	.quad	0x3fe7e646e79d9b30              # double 0.74685998189383973
	.quad	0x3fe975426223946e              # double 0.79556388061304317
	.quad	0x3fe49efad09a7275              # double 0.64440670721849236
	.quad	0x3fd9245b6da7c3ce              # double 0.39284406384018389
	.quad	0x3fd66aead251fffa              # double 0.35027571238606436
	.quad	0x3feafc0a6640e954              # double 0.84326667758368012
	.quad	0x3fbea6f223defb80              # double 0.1197348916602845
	.quad	0x3fe0cf21c33b0ac5              # double 0.52528465395911239
	.quad	0x3feff504c32f428d              # double 0.9986594974707984
	.quad	0x3fe7d8df2b758119              # double 0.74522360313497693
	.quad	0x3fd69a40b6a0ded4              # double 0.35316484293751427
	.quad	0x3fb9e9bbf93ea290              # double 0.10122275195193198
	.quad	0x3fc75144c0e10d4c              # double 0.18216761987614871
	.quad	0x3fc8c31389dfb038              # double 0.19345325691335957
	.quad	0x3fbafa052ab4d7f8              # double 0.10537750523221223
	.quad	0x3fe0ccf18ea24e72              # double 0.52501752718167283
	.quad	0x3fe272593cc86b48              # double 0.57645856734902967
	.quad	0x3fe9bb5168a63346              # double 0.80411596717167622
	.quad	0x3fcd2cb966e17b50              # double 0.227927375063667
	.quad	0x3f8e70e158567f80              # double 0.014863739498480077
	.quad	0x3fcf63c7ce71d544              # double 0.24523255901628194
	.quad	0x3fe9de1b540959e9              # double 0.80836264050850304
	.quad	0x3fe1f866d8443d4b              # double 0.56157247771799612
	.quad	0x3fec90c8c0a1880e              # double 0.89267385123480536
	.quad	0x3febf35ebebcf9c3              # double 0.87345826390792813
	.quad	0x3fc75b4a5dc01c60              # double 0.18247346475274906
	.quad	0x3fe4a62bc0baf9a2              # double 0.64528453486109449
	.quad	0x3fe0f7f254788c55              # double 0.53026691911908108
	.quad	0x3fce34fa6ad25a5c              # double 0.23599176612761397
	.quad	0x3fddbd1f6ac8201a              # double 0.46466813495544701
	.quad	0x3fbed4b635c75800              # double 0.12043322384792532
	.quad	0x3fd756d955498ee0              # double 0.36467583969918671
	.quad	0x3fe17b638c970220              # double 0.546312117185213
	.quad	0x3fe7d0dd3689f11e              # double 0.7442461075984601
	.quad	0x3fe5e00c25544d8f              # double 0.68359954157715375
	.quad	0x3fe440c806988ac8              # double 0.63290787971740148
	.quad	0x3fb48bffee26f958              # double 0.08026122631324506
	.quad	0x3fdf82d745c19b76              # double 0.49236089527260363
	.quad	0x3feb47415b3f1d37              # double 0.85244815656270745
	.quad	0x3fd8906fae784456              # double 0.38381568944993683
	.quad	0x3fe62f582ee53f59              # double 0.69327935370709348
	.quad	0x3fc6c7fc387d1184              # double 0.17797806509237202
	.quad	0x3fcb3829b7b3f354              # double 0.21265145749921521
	.quad	0x3fe8bff15c3707e4              # double 0.77343051920638261
	.quad	0x3fd72843e89526d8              # double 0.36183259690424796
	.quad	0x3fe5f17b2f852cd6              # double 0.68572768479625767
	.quad	0x3fe81c8579f4376a              # double 0.75348161524901269
	.quad	0x3fe9693c5d11c4f0              # double 0.79409616639727965
	.quad	0x3fad2a88e37ebee0              # double 0.05696513917007251
	.quad	0x3fc8c8e52508c560              # double 0.19363083179772911
	.quad	0x3fe5e0356cbaac10              # double 0.68361922489327931
	.quad	0x3fcc211bcd8c84a4              # double 0.21976039444510775
	.quad	0x3fdfe70a739115fc              # double 0.49847661290945644
	.quad	0x3fee6af351bcf18e              # double 0.95055547680344588
	.quad	0x3fc5860d44ce3d94              # double 0.16815343722963105
	.quad	0x3fd1d8287fe69cac              # double 0.27881824961009261
	.quad	0x3fbb456d6d51e7d0              # double 0.10652812880462581
	.quad	0x3fa710e7db13c0a0              # double 0.045050855152909408
	.quad	0x3fe8981eb02b3da3              # double 0.76856932075491036
	.quad	0x3fc0a129877712fc              # double 0.129918280739865
	.quad	0x3fe68fa7706a6121              # double 0.70503589588318871
	.quad	0x3fde21f1a622361e              # double 0.47082177375782119
	.quad	0x3fc60642a27ba780              # double 0.17206604894391475
	.quad	0x3feedeb894b6b10c              # double 0.96468762441284772
	.quad	0x3fede5a10576e289              # double 0.93428088252319796
	.quad	0x3fc5d02ad399aa30              # double 0.17041526157420739
	.quad	0x3fc2d0b0e4236d44              # double 0.14699374332017545
	.quad	0x3fbf8c10a86dd060              # double 0.12323097335848976
	.quad	0x3fe7260770355452              # double 0.72339221873938642
	.quad	0x3fe0befee7de858c              # double 0.52331490790327129
	.quad	0x3feb9d86c7ecc045              # double 0.86297930763067454
	.quad	0x3fc62322a1cdd000              # double 0.17294724369605774
	.quad	0x3fdeb4f42ebf4276              # double 0.47979454579493763
	.quad	0x3fc37237359fcf94              # double 0.15192308538791777
	.quad	0x3fe3013974d820c1              # double 0.59389946766989266
	.quad	0x3fe88f567e9eeee7              # double 0.76749729853278559
	.quad	0x3fe594bfa2510f47              # double 0.67440778448551775
	.quad	0x3fd3f78d96a354a2              # double 0.31198444090598276
	.quad	0x3fef41f45974da44              # double 0.9768010852047344
	.quad	0x3fe45e22ce9487fe              # double 0.63649120662398651
	.quad	0x3fe0796852ccb6f0              # double 0.51482025310335011
	.quad	0x3f746fea3bfe6180              # double 0.0049895429400738101
	.quad	0x3fe688d3391faa9b              # double 0.70420228154155795
	.quad	0x3fe05bf54931ae0f              # double 0.51122535987582463
	.quad	0x3fee864ad9e26169              # double 0.9538931136658394
	.quad	0x3fed8f1b904871d5              # double 0.92371919803877722
	.quad	0x3fe17589301401ef              # double 0.5455976428057151
	.quad	0x3fe7f99335b40362              # double 0.74921570290471728
	.quad	0x3fe3e839899ecee8              # double 0.62209774855588496
	.quad	0x3fe15ecf941fc84c              # double 0.5428235905694776
	.quad	0x3feeaccb07adb65e              # double 0.95859290599555513
	.quad	0x3fe038f315421647              # double 0.50695184852583786
	.quad	0x3fe027a68687de06              # double 0.50484014773877628
	.quad	0x3f8e39beeaac50c0              # double 0.014758578812270051
	.quad	0x3fee5760bc8053b4              # double 0.94816624466567711
	.quad	0x3fc5fbb6645cad14              # double 0.17174415493477879
	.quad	0x3fa09bd6a9d74580              # double 0.032438953621418243
	.quad	0x3fb16d0efa99d768              # double 0.068070350820418235
	.quad	0x3fe8d83f833bea9f              # double 0.77639747268343118
	.quad	0x3fe73456c17e60e2              # double 0.7251390246556435
	.quad	0x3fd999288052a09c              # double 0.39997303515930027
	.quad	0x3fe0993ae650b601              # double 0.51870484336330958
	.quad	0x3fd5ce5c6a32ff26              # double 0.34072027560249507
	.quad	0x3fe0c01ba26198ac              # double 0.52345067706189274
	.quad	0x3fd7558bb85a0eda              # double 0.36459630015472799
	.quad	0x3feffb175bad74c6              # double 0.99940078645490682
	.quad	0x3fc06414434cef14              # double 0.12805417333753921
	.quad	0x3fbe6ec8a035abb0              # double 0.11887792502754624
	.quad	0x3fe8f625cd68f369              # double 0.78004732245572683
	.quad	0x3fdd50b76211fbac              # double 0.45805153443501001
	.quad	0x3fd265f25c65333c              # double 0.28747233412723339
	.quad	0x3fdae74e539bbeda              # double 0.42036779560929249
	.quad	0x3fc2852af4ad8d40              # double 0.14468895861782904
	.quad	0x3fd377542de36034              # double 0.30415825349109871
	.quad	0x3fe586d62aa438f8              # double 0.67270954445282793
	.quad	0x3fe1a71581c55490              # double 0.55164599748481358
	.quad	0x3fe45d24d136cc5d              # double 0.63637009489174157
	.quad	0x3fb429f3006bdfa0              # double 0.078765094378353329
	.quad	0x3fd28c0cd96535e4              # double 0.2897979853631496
	.quad	0x3fe0f06be7633263              # double 0.52934832756870909
	.quad	0x3fcba62bf07c61a8              # double 0.21600865595315821
	.quad	0x3fdd87febf2c4ce2              # double 0.46142548245661719
	.quad	0x3fea7887a2829daa              # double 0.82721311321522717
	.quad	0x3fa3c1a7b8a042e0              # double 0.038586846625667581
	.quad	0x3fca94be1d08c91c              # double 0.20766426484767286
	.quad	0x3fcf0e6a127d4324              # double 0.24262739088819629
	.quad	0x3feba76a0dac1e08              # double 0.86418631239297472
	.quad	0x3fe150c54873fa2d              # double 0.54110969687446231
	.quad	0x3fca28cc69525244              # double 0.20437007086424519
	.quad	0x3fdaae60f8f411f8              # double 0.41689323722701443
	.quad	0x3fdbc7b45c5e7004              # double 0.43406399746322699
	.quad	0x3fed29180bcdf681              # double 0.91126634889197089
	.quad	0x3fae90e2798f2550              # double 0.059699132288708712
	.quad	0x3fc5ea39e9ef79ec              # double 0.17121051714543911
	.quad	0x3fd396c8172685da              # double 0.30607797871388487
	.quad	0x3fef40aab3250a8e              # double 0.97664389599988666
	.quad	0x3fd4e3cc18c1a4a0              # double 0.32640364091509788
	.quad	0x3fe2172881ee0815              # double 0.56532693268695999
	.quad	0x3fe9f4518cd7fed6              # double 0.81107404240170911
	.quad	0x3fd1f51d71a48662              # double 0.2805856332580331
	.quad	0x3fc27e31669f48e4              # double 0.14447610388612653
	.quad	0x3fd578ece9cf5f20              # double 0.33550570328724127
	.quad	0x3fb0ede61995d550              # double 0.06613004803314948
	.quad	0x3faa782fe67beef0              # double 0.051698204884784604
	.quad	0x3fe873664475c3c7              # double 0.76408685084435823
	.quad	0x3febf9a3c2ae2f75              # double 0.8742235948898115
	.quad	0x3fe387d39ac0dfc9              # double 0.61033039307857806
	.quad	0x3fedaef84319ff61              # double 0.92760861497661662
	.quad	0x3fe34e7c70735d08              # double 0.60333082163825313
	.quad	0x3fcc18852d5095b4              # double 0.21949829781185104
	.quad	0x3fcc04322fc02128              # double 0.2188780530125396
	.quad	0x3fd2f9b4e6a571d8              # double 0.29649088405656476
	.quad	0x3fdc93ebbaf8d202              # double 0.44652837046604088
	.quad	0x3fcf0d3af56ca9e4              # double 0.24259125693909234
	.quad	0x3fdfe1143a383176              # double 0.49811273274897105
	.quad	0x3f94a8254b31d040              # double 0.020172674860490014
	.quad	0x3fe1e53fc0635c62              # double 0.55923450065428093
	.quad	0x3fd8cd8e79342228              # double 0.38754617534917424
	.quad	0x3fc37e593f20e448              # double 0.15229335386701082
	.quad	0x3fe1829a406e7113              # double 0.54719269356022193
	.quad	0x3f6ef88015214500              # double 0.0037806035625541634
	.quad	0x3fdce4c50dd7a2dc              # double 0.45146299697675629
	.quad	0x3fe80949982e37c4              # double 0.75113372538339051
	.quad	0x3fdfbe48351496b8              # double 0.49598889526019319
	.quad	0x3fc0be6f563f6b10              # double 0.1308116122371179
	.quad	0x3fe71cad6135c331              # double 0.72225064264612204
	.quad	0x3fdf276ca3241c12              # double 0.48678127223723877
	.quad	0x3fd593f42c0cd95a              # double 0.33715538312698856
	.quad	0x3fee7e498b7243c9              # double 0.95291592822661031
	.quad	0x3fc0c009a6218190              # double 0.1308605252443269
	.quad	0x3fe26034d25c99a2              # double 0.57424393736146251
	.quad	0x3fe38e8a90b5fc30              # double 0.61115005744784945
	.quad	0x3fdd3ec278d8667e              # double 0.45695554543781458
	.quad	0x3fd01fccf2e7fee0              # double 0.25194095345794487
	.quad	0x3fe43b525fd65100              # double 0.63224142759511892
	.quad	0x3fe469809a0d2213              # double 0.63787870491165888
	.quad	0x3fa0c5473cee2d50              # double 0.032755113780775447
	.quad	0x3fd1dc2965e7a3dc              # double 0.27906260444302489
	.quad	0x3fc73f1cf3bc14a8              # double 0.18161355877979202
	.quad	0x3fdc207acb09a4f6              # double 0.43948240116021908
	.quad	0x3fed82d13876d65a              # double 0.92221890476384805
	.quad	0x3fd2f86cdfb7e82c              # double 0.29641267631052659
	.quad	0x3fe25b743f0295ef              # double 0.57366382891330925
	.quad	0x3fca40ae7b560b40              # double 0.2050989248492332
	.quad	0x3fe89d337d431ac1              # double 0.76918959107646157
	.quad	0x3fe16ad2c466b7ce              # double 0.54428995475404363
	.quad	0x3fec08b324c90dae              # double 0.87606198486940001
	.quad	0x3fea3451ef0fe25c              # double 0.818886725347578
	.quad	0x3fd1348bfbf4f258              # double 0.26883220296057209
	.quad	0x3fec3fc7016ed31d              # double 0.88278532295098311
	.quad	0x3fe284c93aaa069d              # double 0.57870923478931824
	.quad	0x3fe4a72f1500feca              # double 0.64540819265672522
	.quad	0x3fbdd6028d10d6f0              # double 0.11654678291310083
	.quad	0x3fe2d4f3790d9b18              # double 0.58849500315850189
	.quad	0x3f9a9d8dc7df0500              # double 0.02599164516846475
	.quad	0x3fd6b06f648839ca              # double 0.35451874559012408
	.quad	0x3fcd926428f0c574              # double 0.23103000639961702
	.quad	0x3fe9f534f257c14b              # double 0.81118247349335471
	.quad	0x3fe0daf0bf891e06              # double 0.52672612580585176
	.quad	0x3fe09fdcf19d949d              # double 0.51951453390633484
	.quad	0x3fed26203ee9328a              # double 0.91090404784479628
	.quad	0x3fb4372086c96a38              # double 0.078966172129562362
	.quad	0x3fee9c809e623b1a              # double 0.95660429891890719
	.quad	0x3fd345ba9924115c              # double 0.30113091426053074
	.quad	0x3fd54bf6fa46fe1a              # double 0.33276152077812216
	.quad	0x3fb00aef012d2740              # double 0.062666833674623668
	.quad	0x3fcba91e1f83a3c8              # double 0.21609856165676278
	.quad	0x3fedc78801987be9              # double 0.93060684501312807
	.quad	0x3fef41f3ed900f37              # double 0.97680088423701405
	.quad	0x3fbc418b321808b0              # double 0.1103751179980772
	.quad	0x3fe3771e23fedbfe              # double 0.6082907393491721
	.quad	0x3fd63fc113608c58              # double 0.34764124767588589
	.quad	0x3fd5adebe7b6d1f4              # double 0.33874032619794936
	.quad	0x3fe2378fb52b0bef              # double 0.56928239235310041
	.quad	0x3feb525cb1670add              # double 0.85380396508147849
	.quad	0x3fa2d3ccc158af40              # double 0.036772154428347026
	.quad	0x3fc096289aa24088              # double 0.12958247709730508
	.quad	0x3fe9cd4c4d046ee2              # double 0.80631079714245524
	.quad	0x3f5fdf05f1198c00              # double 0.001945262720618457
	.quad	0x3fdef764f7fa4124              # double 0.48384975639875649
	.quad	0x3fd8b350cc7e3814              # double 0.38594455690406559
	.quad	0x3fb60f51e61e50b8              # double 0.086171263390783959
	.quad	0x3fd57acb2fdb7f82              # double 0.33561973260474798
	.quad	0x3fee7869b1ca6d93              # double 0.95219883656266047
	.quad	0x3fe7e4660a4487ef              # double 0.74663068776521679
	.quad	0x3fa5e3c11a888e90              # double 0.042753252495711824
	.quad	0x3fd26ba17992891a              # double 0.28781926033311012
	.quad	0x3fdd309e11ecabbc              # double 0.45609237432898531
	.quad	0x3fc45da28fb76ca4              # double 0.15910751359374331
	.quad	0x3fe1d0721b383eff              # double 0.55669503513669827
	.quad	0x3fe26a3ebf5bf68d              # double 0.57546937346315163
	.quad	0x3fd2412333d8a0ae              # double 0.28522567809205668
	.quad	0x3fe11951f6623fc3              # double 0.53434084054787723
	.quad	0x3fe34c0b7c83a80d              # double 0.60303282088466548
	.quad	0x3fd910592fbf31be              # double 0.39162282622126188
	.quad	0x3fec509f316602ad              # double 0.88484153411999034
	.quad	0x3fd1f1067f5b5d9a              # double 0.28033602177807782
	.quad	0x3fd30d01e47a6ce6              # double 0.29766890823675707
	.quad	0x3fe9a74353155f63              # double 0.80166784503215316
	.quad	0x3fddf5df2c043ca0              # double 0.46813182161799638
	.quad	0x3fea44b4da02319b              # double 0.82088701801108088
	.quad	0x3fda66b2f5fe3298              # double 0.41251825354337646
	.quad	0x3fae843f0e0e7290              # double 0.059602709260819897
	.quad	0x3fd3c5b449779190              # double 0.30894190954702427
	.quad	0x3fb11384a8569eb0              # double 0.066704073999626301
	.quad	0x3fdff96062a9a7ac              # double 0.49959573397665724
	.quad	0x3fbe1f01826429f0              # double 0.11766061242466441
	.quad	0x3fd3a9ec58fb2d40              # double 0.30724629106108026
	.quad	0x3fd6b005b096580c              # double 0.35449354405261668
	.quad	0x3fd8e2e40be8028e              # double 0.38884831583713086
	.quad	0x3fe348a96de52001              # double 0.60261985267516149
	.quad	0x3fb8ce48b05b4430              # double 0.096897643142498379
	.quad	0x3fd3d67822198c60              # double 0.30996516542490404
	.quad	0x3feece3b06fde87f              # double 0.96267463079063009
	.quad	0x3fbfce410428faa8              # double 0.12424093581737827
	.quad	0x3fef04de6c969eb8              # double 0.96934434136070191
	.quad	0x3fcb6081c2b11f2c              # double 0.2138826561588244
	.quad	0x3feacfe609dc5b39              # double 0.83787824560099644
	.quad	0x3fe92e28ac893d8c              # double 0.78688462923484925
	.quad	0x3fe7c2dfe25240da              # double 0.74253839686755474
	.quad	0x3feb43e16757e674              # double 0.85203619179010425
	.quad	0x3fec86b7d7cbcd8d              # double 0.89144508502651976
	.quad	0x3fdf44cf2326f174              # double 0.48857477600883858
	.quad	0x3fb13ddce7cc6098              # double 0.067350203124421859
	.quad	0x3fe37fe634ca3b89              # double 0.60936270056287001
	.quad	0x3fc03f17bbeb73f0              # double 0.12692543674248169
	.quad	0x3fedad626c9f8df3              # double 0.92741509643059172
	.quad	0x3fe79ba66964c674              # double 0.73775024971673853
	.quad	0x3fc62ca2c71e49d4              # double 0.17323717806409766
	.quad	0x3fad207308fb0a70              # double 0.056888193937557285
	.quad	0x3fc66916faffaae8              # double 0.1750820851878736
	.quad	0x3fdf839fcf12aaf0              # double 0.49240870687451288
	.quad	0x3fba7bc0cc9ee988              # double 0.10345082278846551
	.quad	0x3fd3cd57a25b2628              # double 0.30940810065348723
	.quad	0x3fd74ecf08f08fe4              # double 0.36418510315911434
	.quad	0x3fd2fed87b5fbae2              # double 0.29680454300152637
	.quad	0x3febcd93432cb58f              # double 0.8688446342472832
	.quad	0x3feaa703cb2a8967              # double 0.83288755112543533
	.quad	0x3fd6be3d61093984              # double 0.35536131359267409
	.quad	0x3fe83e32689b14cc              # double 0.75759239607637018
	.quad	0x3fea8069387ec8a0              # double 0.82817517313221244
	.quad	0x3fe62e64f08a87cb              # double 0.69316336613359775
	.quad	0x3feae62f190ea0f5              # double 0.84059862989400236
	.quad	0x3fd77ac98adc20ac              # double 0.36686934052023434
	.quad	0x3fdd2963dc3eafa4              # double 0.45565124996459816
	.quad	0x3fdf2049059ec0de              # double 0.48634553479042875
	.quad	0x3fe617dac723442e              # double 0.69041193861096928
	.quad	0x3fdc6aea2d76bbe6              # double 0.44402555885147732
	.quad	0x3fb567b34ce3ae20              # double 0.083613592407055126
	.quad	0x3fb908b4536d2d00              # double 0.097789068572797788
	.quad	0x3fed3438232f180a              # double 0.91262442466609284
	.quad	0x3fc45a4b82e63d9c              # double 0.15900558368273898
	.quad	0x3fbe0acbd6e03570              # double 0.11735223766318881
	.quad	0x3fc884a30bdaa944              # double 0.19154775694671333
	.quad	0x3fef40469cf857c9              # double 0.97659617098064999
	.quad	0x3fc15bf6b887b0fc              # double 0.13561901102310248
	.quad	0x3fef73401ca4860e              # double 0.98281865686675629
	.quad	0x3fe95af01f872143              # double 0.79235082776816801
	.quad	0x3fec1758b233c4f8              # double 0.87784991078493047
	.quad	0x3fcfd06e3000e208              # double 0.24854829162519843
	.quad	0x3fec6afdcf82f24a              # double 0.88806047944633204
	.quad	0x3fe880d9f506ce29              # double 0.76572893006090681
	.quad	0x3fda70f01ac5acbe              # double 0.41314318289250795
	.quad	0x3feb323cbad6b714              # double 0.84988247386874826
	.quad	0x3fdb591386ef5830              # double 0.42731178452720808
	.quad	0x3fe3eba8164dba95              # double 0.62251667362382312
	.quad	0x3fee6b3f472eb1a3              # double 0.95059169676601518
	.quad	0x3fdf001cfa239f36              # double 0.48438190868045028
	.quad	0x3fc8337a9428888c              # double 0.18907100900930052
	.quad	0x3fd3a638a7a49f7c              # double 0.30702034350769458
	.quad	0x3fee99c554c1a34e              # double 0.95627085260375977
	.quad	0x3fef10feeb1fe297              # double 0.97082467959178841
	.quad	0x3feb576f1ca001d4              # double 0.8544230994303299
	.quad	0x3fe636c7ea1252a6              # double 0.69418712346176359
	.quad	0x3fca25ed4d7c95e4              # double 0.20428243907478738
	.quad	0x3fe68b6cf1cb0a48              # double 0.70451972222537851
	.quad	0x3fd656de23943732              # double 0.34905198549755589
	.quad	0x3fe5d8b122c69363              # double 0.68270165245176562
	.quad	0x3fe1563568e860d8              # double 0.54177351465025492
	.quad	0x3fec1aae92d3c1b2              # double 0.87825707127745134
	.quad	0x3fe028bfe3b67848              # double 0.50497431254530856
	.quad	0x3fecfdf06d298822              # double 0.90599843331097341
	.quad	0x3feb60701a0cc719              # double 0.85552220428346282
	.quad	0x3fd3b00a7252446a              # double 0.30761967815585101
	.quad	0x3fe0115bf9608672              # double 0.50211905199485174
	.quad	0x3fe3937d1c0ed0be              # double 0.61175399284413579
	.quad	0x3f62ef48d1176b00              # double 0.0023113653376020116
	.quad	0x3fd0c3c9a499d084              # double 0.26194993089962559
	.quad	0x3fefb9e4262f8199              # double 0.99144179781073937
	.quad	0x3fd05b105234a096              # double 0.2555580904759237
	.quad	0x3fe7a7c16210a9af              # double 0.73922795441949585
	.quad	0x3fb4c7d4f6ade910              # double 0.081174192642638809
	.quad	0x3fb84c3776db7210              # double 0.094912973897813168
	.quad	0x3fe53a238642f275              # double 0.66334701750709135
	.quad	0x3fd1ef65891a47fa              # double 0.28023661030704228
	.quad	0x3fde7b8b817ed2bc              # double 0.47629058500323729
	.quad	0x3fd71fe65c237bd0              # double 0.36132201192770896
	.quad	0x3fec9cdf89859463              # double 0.89414955959058451
	.quad	0x3fe04c0f575906ae              # double 0.50928465900525111
	.quad	0x3f9575302e876ca0              # double 0.020954850044159756
	.quad	0x3fd25789fdf3d550              # double 0.28659295845075849
	.quad	0x3fe153bc1dc52a6a              # double 0.54147153677452065
	.quad	0x3fd0783e0b473184              # double 0.25733901120545277
	.quad	0x3fe174c9978b561c              # double 0.54550628279202185
	.quad	0x3fe76db00bf8f4ca              # double 0.7321396097028352
	.quad	0x3fd1cc195f5d3bfc              # double 0.27808222115430659
	.quad	0x3fe8a795951321c4              # double 0.77045706859740237
	.quad	0x3fe7955f03b62a3e              # double 0.73698378300588963
	.quad	0x3fe91cba647cc19b              # double 0.78475684763366205
	.quad	0x3fee1d7835b538e0              # double 0.94109735956024209
	.quad	0x3fe8a361dd6e9824              # double 0.76994412659110311
	.quad	0x3fe8de5768f4d064              # double 0.77714128970411566
	.quad	0x3fedf1bb7c778778              # double 0.93575834569877169
	.quad	0x3fd473e3397502de              # double 0.31957321749727707
	.quad	0x3fdf9897410f520a              # double 0.49368840554714721
	.quad	0x3fef4a147ad4b661              # double 0.9777929686585588
	.quad	0x3fedbc413cae1716              # double 0.92923032619066492
	.quad	0x3feeff9b7a9f3026              # double 0.96870206784797541
	.quad	0x3fb42b5bb49d70e0              # double 0.078786594005069599
	.quad	0x3fee101fca37989f              # double 0.93946828361073986
	.quad	0x3fa01671bff66080              # double 0.031421236689483045
	.quad	0x3fe48654d86c073c              # double 0.64139787931365033
	.quad	0x3fee8c9aebbe386e              # double 0.95466371577800913
	.quad	0x3fd40fdd4e826df2              # double 0.31346829096739193
	.quad	0x3fc45e84908165e4              # double 0.15913445526056968
	.quad	0x3fd9538508a6975a              # double 0.39572263569640642
	.quad	0x3fd51e637847ccbe              # double 0.32997977014674607
	.quad	0x3fa3abd7ba47a060              # double 0.038420430649978909
	.quad	0x3fe3388db90bda85              # double 0.60065351621490548
	.quad	0x3fe6cd48d9e8aaaf              # double 0.71255915222476129
	.quad	0x3fe59c2f604e2a20              # double 0.67531555947909183
	.quad	0x3feda6953644ebf6              # double 0.92658482169588186
	.quad	0x3fe42c8b24fc77ae              # double 0.63043744300715843
	.quad	0x3fbdf1ad38ed4f50              # double 0.11696894302195671
	.quad	0x3fec5b1e993fef73              # double 0.88612298900214481
	.quad	0x3fe72cedae08acdb              # double 0.72423442831987062
	.quad	0x3fe44540b610814f              # double 0.63345370826213265
	.quad	0x3f7542d6758ce800              # double 0.0051906945525903581
	.quad	0x3fec38eb83e1fedd              # double 0.8819482398830264
	.quad	0x3fe65300bc3a6dc6              # double 0.69763218653991355
	.quad	0x3fe98eb73ed61ba9              # double 0.7986713626167915
	.quad	0x3fe209182322d3b5              # double 0.56361014235027673
	.quad	0x3fd2a307335d7f1e              # double 0.29120044723639349
	.quad	0x3fec8a006ba20c2f              # double 0.89184590360708238
	.quad	0x3fe542bb696070d7              # double 0.66439600545302369
	.quad	0x3fd644edd1c3829c              # double 0.3479570911859271
	.quad	0x3fad0a692756b8f0              # double 0.056720052768797546
	.quad	0x3fe30a868c8f68c6              # double 0.59503486111795989
	.quad	0x3fdfccb7aa3708ee              # double 0.496869961000029
	.quad	0x3fca3db12945e83c              # double 0.20500769152914866
	.quad	0x3fc6ad8277fe14ac              # double 0.17717009409912998
	.quad	0x3fe59d2859844e18              # double 0.67543427928689237
	.quad	0x3fe3e6e6634203c2              # double 0.6219360293035765
	.quad	0x3fefc120fed8db3c              # double 0.99232530379126826
	.quad	0x3fe70638d21d400e              # double 0.71950951612416403
	.quad	0x3feed0d8f62e3cbc              # double 0.96299408037329881
	.quad	0x3fe3afd919ad4335              # double 0.61521582617760961
	.quad	0x3fe167172214e7f9              # double 0.54383427292418596
	.quad	0x3fcbda1a38bd4838              # double 0.21759345789411255
	.quad	0x3fe271dadc0c313d              # double 0.57639830568363204
	.quad	0x3fdc91d64792553a              # double 0.44640118588843658
	.quad	0x3fd8f5ddd3bed0a8              # double 0.39000650099047585
	.quad	0x3fd700c25ecb2a62              # double 0.35942134148777971
	.quad	0x3fc956967a63e41c              # double 0.19795495010456043
	.quad	0x3fcefbd9951867b0              # double 0.24206084995313182
	.quad	0x3fe9ee7c0ce83f7a              # double 0.81036188622418526
	.quad	0x3fe327d2f54fc4d3              # double 0.59861133491917895
	.quad	0x3feccd877c7d6eb2              # double 0.90008901895949678
	.quad	0x3fe97b80a556b626              # double 0.79632599156110895
	.quad	0x3fd05d66cf570550              # double 0.25570078132667096
	.quad	0x3fb3a5f6dc866140              # double 0.076751164282886641
	.quad	0x3fc78d80dc441208              # double 0.18400583987399011
	.quad	0x3fe02894162cab7a              # double 0.50495342570262314
	.quad	0x3fb5f356ec2212a8              # double 0.085744316720659186
	.quad	0x3fe466c0b420168f              # double 0.63754306011897366
	.quad	0x3fdfc1b1d0a02bf0              # double 0.4961971795425475
	.quad	0x3fe5c8e0ccb7281c              # double 0.68077125533568816
	.quad	0x3f78fc99647a8900              # double 0.0061002723593068797
	.quad	0x3fef3f9335354aae              # double 0.97651062385769705
	.quad	0x3fe7d3efbe74d7e9              # double 0.74462115477103652
	.quad	0x3fea2e59107d80eb              # double 0.81815770359756124
	.quad	0x3fe4ce5a1b6e36c8              # double 0.65018945081256962
	.quad	0x3f988ecdbffae320              # double 0.02398225292447187
	.quad	0x3feffdad6378bf4b              # double 0.9997164671712907
	.quad	0x3fe8293525730bfa              # double 0.75503022493683081
	.quad	0x3fe67c9d881d48c9              # double 0.70271183571664964
	.quad	0x3fe11096c0974b74              # double 0.53327500930241323
	.quad	0x3fe2ffda3ed4d1d3              # double 0.59373199722045411
	.quad	0x3fd357c1d111fdcc              # double 0.30223126809138701
	.quad	0x3fe7e72e6e359c04              # double 0.74697038197780374
	.quad	0x3fd6c67ec35d31b8              # double 0.35586518362540742
	.quad	0x3febb9b03eb629ca              # double 0.866417047961755
	.quad	0x3fefd6d4e05aa048              # double 0.99497455424444414
	.quad	0x3fed2b3c9a072298              # double 0.91152792056626009
	.quad	0x3fde0d65baa0d552              # double 0.46956771111884621
	.quad	0x3fe2ac5ccbcf1dab              # double 0.58354034239248642
	.quad	0x3fe307d871df348d              # double 0.59470770111660587
	.quad	0x3fdc2075d3706776              # double 0.43948121689174202
	.quad	0x3fe15e74bb0d8b0d              # double 0.54278027089853398
	.quad	0x3fe2858b382190cc              # double 0.57880173647984057
	.quad	0x3fe3b3c730788232              # double 0.61569556681576487
	.quad	0x3fde52bbdfaa64d2              # double 0.47379967539161527
	.quad	0x3fbad266f84ebd30              # double 0.10477298319050443
	.quad	0x3f9a88f3ab1e6240              # double 0.025913054770713595
	.quad	0x3fec45c38447d142              # double 0.88351608120004976
	.quad	0x3feea605056b4738              # double 0.95776606615456838
	.quad	0x3fc0061ca9656330              # double 0.12518652221003768
	.quad	0x3fc101ba9c850d7c              # double 0.13286526339116367
	.quad	0x3fc61f5c9efefb60              # double 0.1728320862148065
	.quad	0x3fe30ddd400dc6d3              # double 0.59544241438399081
	.quad	0x3fe38a7732d21808              # double 0.61065254140771774
	.quad	0x3fe84a01a276bb83              # double 0.75903398257456478
	.quad	0x3fe1c005dabdd611              # double 0.55469029162367367
	.quad	0x3fe770ff2cce1850              # double 0.73254355193126663
	.quad	0x3fdb3decb0f15e3e              # double 0.42565457610678326
	.quad	0x3fd79dc5da205ce2              # double 0.36900469113738954
	.quad	0x3fefe249551c9ade              # double 0.99637285827051492
	.quad	0x3fe4e1fa1eedbd62              # double 0.6525850872111898
	.quad	0x3fef791d0248c7f2              # double 0.98353434034492992
	.quad	0x3fe8f80414bba440              # double 0.78027538346680814
	.quad	0x3fb2a55a55976de0              # double 0.07283558454167105
	.quad	0x3fec507dc6e4b4fa              # double 0.88482560011257694
	.quad	0x3fe310c798eee7aa              # double 0.59579830045480731
	.quad	0x3fe078c428aa1755              # double 0.51474197332638971
	.quad	0x3fe5eb34e338d6f2              # double 0.68496174220373818
	.quad	0x3fd0577be91a4550              # double 0.25533960117271182
	.quad	0x3fea571357b529de              # double 0.82312934046177211
	.quad	0x3fed9d6723a5fc5c              # double 0.92546421969008063
	.quad	0x3fe5c5dc158c3b62              # double 0.68040279587317465
	.quad	0x3fe3396c266e7c63              # double 0.60075957780999223
	.quad	0x3fdcf08fd45e77e2              # double 0.45218272914087099
	.quad	0x3fe0d33b3d4ac203              # double 0.5257850834951231
	.quad	0x3feb51ac09a5c275              # double 0.85371972927357709
	.quad	0x3fe0eb50671c4f40              # double 0.52872486246858585
	.quad	0x3fe360c677b901df              # double 0.60556338675820232
	.quad	0x3fe419de42ee6e59              # double 0.62815774033101512
	.quad	0x3fe796e06957292e              # double 0.73716755461035688
	.quad	0x3fe5680f47bf8618              # double 0.66895259869869772
	.quad	0x3fed8d64d34c0d0f              # double 0.92350999134979073
	.quad	0x3fd382b94a451354              # double 0.30485374691879952
	.quad	0x3fd8d39087e03592              # double 0.38791287678835673
	.quad	0x3fea17a749619232              # double 0.81538738567593883
	.quad	0x3fe12c272be6dbe1              # double 0.53663977217263092
	.quad	0x3fea088f6078b7b3              # double 0.81354492990589333
	.quad	0x3fed65d75c50f608              # double 0.91868179350393664
	.quad	0x3fe44795ae0323f7              # double 0.63373836504717829
	.quad	0x3fd246935c8a84e8              # double 0.28555759465423458
	.quad	0x3fbdb73ffe564630              # double 0.11607742270850774
	.quad	0x3f730e6b66d3e300              # double 0.0046524234178313417
	.quad	0x3fdd3cfe46d23e52              # double 0.45684773365153319
	.quad	0x3fe271199914860b              # double 0.57630615137549179
	.quad	0x3febca81c10d20e6              # double 0.86847007470444448
	.quad	0x3fd33900d627faec              # double 0.30035420335472796
	.quad	0x3fedf57a2ce290c8              # double 0.93621548430066869
	.quad	0x3fe8479b5e76eb2b              # double 0.75874107790091239
	.quad	0x3fdadbf42f6dffac              # double 0.41967491752438479
	.quad	0x3feace347c6286ba              # double 0.83767151159209807
	.quad	0x3fdef1df66c46c78              # double 0.48351273570887754
	.quad	0x3fdb7f3ab925fb02              # double 0.42964046555418645
	.quad	0x3fccee3c4694a264              # double 0.22602036901777744
	.quad	0x3feb0d45a7c4c85d              # double 0.8453701283199383
	.quad	0x3fe54b87fcce1f3f              # double 0.66547011734017036
	.quad	0x3fc6d9dce4c9f8c4              # double 0.17852364703498413
	.quad	0x3fc566b8acf05438              # double 0.16719730800892463
	.quad	0x3fd3bda337384db2              # double 0.30844955818721609
	.quad	0x3fe3441c746a46db              # double 0.60206434953053234
	.quad	0x3fec9d32abbc1a6e              # double 0.89418920080136188
	.quad	0x3fbd260a23af0fa8              # double 0.11386168833911248
	.quad	0x3fe15547c99be702              # double 0.54166020752674648
	.quad	0x3f8ead36326ff1c0              # double 0.014978812612746917
	.quad	0x3fc04aa7d23002dc              # double 0.12727830660880712
	.quad	0x3fe71cac53136423              # double 0.72225013948184758
	.quad	0x3fe0fb19d776ff9f              # double 0.53065197070099035
	.quad	0x3fb4bef9856be068              # double 0.081039042543012862
	.quad	0x3fd304c13623a5d2              # double 0.29716520583187134
	.quad	0x3fe8beba80324098              # double 0.77328228987063863
	.quad	0x3fc6960ac410324c              # double 0.17645392011071903
	.quad	0x3fd213c0f81736e0              # double 0.28245567538838934
	.quad	0x3f96d268492157e0              # double 0.022287015403286037
	.quad	0x3fdb653bbeb7e842              # double 0.42805379509775687
	.quad	0x3fe25561e31b9433              # double 0.57292265278795751
	.quad	0x3fe232855ead50a8              # double 0.5686671113167181
	.quad	0x3fc8e1724f09e020              # double 0.19438008174233889
	.quad	0x3fe460d199c0306f              # double 0.63681869534913271
	.quad	0x3fe5314e812ebd13              # double 0.66226887923213196
	.quad	0x3fe7a31d4a7bc609              # double 0.73866142795140022
	.quad	0x3fd6def695370aa2              # double 0.35735859462526254
	.quad	0x3fc9a1e3bf324b14              # double 0.20025297961964184
	.quad	0x3fedf22fe16d45b8              # double 0.93581384686165502
	.quad	0x3feb938b886d8590              # double 0.86176087041910598
	.quad	0x3feea1b25f3529d4              # double 0.95723837466476391
	.quad	0x3feeb2c0bb11ae2b              # double 0.95932041680265933
	.quad	0x3fcc16a901186100              # double 0.21944153359869034
	.quad	0x3fedf8ff6d9bbf65              # double 0.93664523513687625
	.quad	0x3fee61bdcaf15c48              # double 0.94943132054584911
	.quad	0x3fe9f898ed5a0ee6              # double 0.81159635885020687
	.quad	0x3fe59c302bdee2d5              # double 0.67531593864904471
	.quad	0x3fe79ad859af65f6              # double 0.73765199200278064
	.quad	0x3fd9b20fe55a2d00              # double 0.40149304769211369
	.quad	0x3fec4f2ed9ad7910              # double 0.8846658946529562
	.quad	0x3fe0b5b57d3e624d              # double 0.52218126737268167
	.quad	0x3fc1a1afd21d69d8              # double 0.13774678954616948
	.quad	0x3fd09654be576026              # double 0.25917547786730422
	.quad	0x3fc59edaf31bef78              # double 0.16891037817537913
	.quad	0x3fd42ece925101b8              # double 0.31535686768259152
	.quad	0x3fd1dc4465876a1c              # double 0.27906904139459399
	.quad	0x3fe77a872eac8b77              # double 0.73370703807846283
	.quad	0x3fef172ff1d04991              # double 0.97158047894690657
	.quad	0x3fcd55e4b1cda3e0              # double 0.22918375665474766
	.quad	0x3fe6b9a31acb7961              # double 0.71016078217853018
	.quad	0x3fdbbe65234f30ae              # double 0.43349579284837148
	.quad	0x3fbf29dc32095168              # double 0.12173248502341993
	.quad	0x3fe102bc72f3fa19              # double 0.5315840001274551
	.quad	0x3fef9f7b93f1fb39              # double 0.98821810622744188
	.quad	0x3feba889d8414630              # double 0.86432354199695816
	.quad	0x3fe1537ba6366e6e              # double 0.54144079650309407
	.quad	0x3fecba24cd7af025              # double 0.89772262699944305
	.quad	0x3fe02e2d9a4499db              # double 0.50563697939361008
	.quad	0x3febf589cbf4b47e              # double 0.87372293315060268
	.quad	0x3fe6850e7641e0a4              # double 0.70374224755416437
	.quad	0x3fdbe9faed8cfaa0              # double 0.4361560172873542
	.quad	0x3fe9a7a4895d9927              # double 0.80171419934484767
	.quad	0x3fe7d94b89e4f001              # double 0.74527527744749034
	.quad	0x3fd2808c9b18eff8              # double 0.28909602304679494
	.quad	0x3fc8e59450269a6c              # double 0.19450620568860033
	.quad	0x3fc004076d80e218              # double 0.12512295576904431
	.quad	0x3fc1d7f8286f01c4              # double 0.13940336202905546
	.quad	0x3fe017975e617bc5              # double 0.50287979539631833
	.quad	0x3fd5a1032d33915c              # double 0.33795241750910576
	.quad	0x3fe4536eabd69e7b              # double 0.63518460809878208
	.quad	0x3fe26f9056104910              # double 0.57611862954425597
	.quad	0x3fd1d088eb41e9d4              # double 0.27835295652735437
	.quad	0x3fd5d93e3de2ea06              # double 0.34138446849434023
	.quad	0x3fe50d59d37312a3              # double 0.65787974642497138
	.quad	0x3fe95c5e2fa55ca0              # double 0.79252538019035867
	.quad	0x3fc32a9ead02a248              # double 0.14973815391319278
	.quad	0x3fd85d6e97194a90              # double 0.38070263629666901
	.quad	0x3fd9cc90a7e56ef2              # double 0.40311066051593436
	.quad	0x3fd2a3adffd7fd1e              # double 0.29124021515595355
	.quad	0x3fe4f5e669b4a399              # double 0.65501709600094948
	.quad	0x3fd703e186d9d784              # double 0.35961187523877691
	.quad	0x3fe0f30fa914f022              # double 0.5296705534342474
	.quad	0x3fcbc40766c79614              # double 0.21691982763802342
	.quad	0x3fdc662d01a0f7e2              # double 0.44373631629048138
	.quad	0x3fea2e26909b1b4a              # double 0.81813362353646224
	.quad	0x3fd211a444be3cda              # double 0.28232676232523846
	.quad	0x3fd704c3139724b0              # double 0.35966565049290988
	.quad	0x3fc30633d1c3f01c              # double 0.14862678282213515
	.quad	0x3fe778f1637b39b1              # double 0.7335135405535792
	.quad	0x3fd5f2c668214e20              # double 0.34294281166987339
	.quad	0x3fda4a045278787e              # double 0.41076763204353728
	.quad	0x3fd2d9f3a21c6c34              # double 0.29455271559862983
	.quad	0x3fe2ddf80e177fdb              # double 0.58959582092574736
	.quad	0x3feee2ce93f2768a              # double 0.96518639465257761
	.quad	0x3fecdc99c32f6755              # double 0.90192878839591606
	.quad	0x3fd7ebf57214e13c              # double 0.37377678051736374
	.quad	0x3fda6dedc638b458              # double 0.4129595218426565
	.quad	0x3fcf4ac9d2adbd7c              # double 0.24446985995335158
	.quad	0x3fecfe13eedb8e49              # double 0.90601536418803008
	.quad	0x3fe07c9a6e78721b              # double 0.51521035743968768
	.quad	0x3fc37c184e79cad4              # double 0.15222457725356853
	.quad	0x3feb174e05f52231              # double 0.84659482158264698
	.quad	0x3fe73b84f8e560f4              # double 0.72601555454732969
	.quad	0x3fef2a1dfdeab543              # double 0.97389125435953649
	.quad	0x3fb38548737bd1c0              # double 0.076252487367873378
	.quad	0x3fc8910ae45b9c8c              # double 0.19192634725843438
	.quad	0x3fe867a5466985be              # double 0.76265205147154069
	.quad	0x3fec1686f12aa4dc              # double 0.87774989226195598
	.quad	0x3fc91ea8659b4354              # double 0.1962481018186063
	.quad	0x3fe7fd64a7d49137              # double 0.7496817853866905
	.quad	0x3fc4cf30e04424e4              # double 0.1625729651498552
	.quad	0x3fef5cad47265c00              # double 0.98006309410527592
	.quad	0x3fe9f745cea74bfb              # double 0.81143465387356117
	.quad	0x3fe9e53c52a8c376              # double 0.80923286575681064
	.quad	0x3fec2d91ff7109dd              # double 0.88056278124741605
	.quad	0x3fd07d78c666195e              # double 0.25765818953404629
	.quad	0x3fe2be4b5d09be92              # double 0.58572929545876407
	.quad	0x3fe3b4917f577611              # double 0.61579203483023737
	.quad	0x3fc4afb845ac02d4              # double 0.16161254312466744
	.quad	0x3feeb4fe7e50a6f1              # double 0.95959400816829376
	.quad	0x3fe8efbc18f7670e              # double 0.77926449657681629
	.quad	0x3fbe626d0d36d398              # double 0.11868936131106833
	.quad	0x3fdd96058c1180f2              # double 0.46228159597923402
	.quad	0x3fe7ad88bca634bc              # double 0.73993336530261145
	.quad	0x3fee3916c41fe821              # double 0.9444688635405819
	.quad	0x3fd4f11138b594a4              # double 0.32721357858674538
	.quad	0x3fd2cb4cd2c94276              # double 0.29365845284068059
	.quad	0x3fe5c7d2a7c00627              # double 0.6806424404496213
	.quad	0x3fe847e0d36e08bf              # double 0.7587741975296679
	.quad	0x3fec7a9379b7a531              # double 0.88996289990351418
	.quad	0x3fe7d77a6c52613f              # double 0.74505349308586932
	.quad	0x3fd54f1e48851eae              # double 0.33295399744063559
	.quad	0x3f917f981791e9e0              # double 0.017088295401188947
	.quad	0x3fd9d0cb064a099a              # double 0.40336871732883994
	.quad	0x3fc8d71dc5f3cecc              # double 0.19406482854502938
	.quad	0x3fe48f47c95427f9              # double 0.64249028512972395
	.quad	0x3fe9129d2ef80fb3              # double 0.78352221654539844
	.quad	0x3fb2c46caf0078b0              # double 0.07330970070367715
	.quad	0x3fb44631743292e8              # double 0.079196062916320309
	.quad	0x3fe27430d4e55975              # double 0.5766834409831022
	.quad	0x3fee6fa9fb25e910              # double 0.95113085796700325
	.quad	0x3fe8d52300de3d28              # double 0.77601766748003786
	.quad	0x3fc536cb06b33edc              # double 0.16573465182454228
	.quad	0x3fa3e0acc39cb350              # double 0.03882350814669755
	.quad	0x3fe2e140062bb501              # double 0.58999634938450651
	.quad	0x3fe25928e078d4f2              # double 0.57338374941050874
	.quad	0x3fce370613c221fc              # double 0.23605419125330218
	.quad	0x3fd056c7c3c8df16              # double 0.25529665107340926
	.quad	0x3fbefedb0aebdf40              # double 0.12107628838191165
	.quad	0x3fe3195a78a60e16              # double 0.5968448978823655
	.quad	0x3fee67116eabb713              # double 0.9500815545595479
	.quad	0x3fea3fa3abab49ad              # double 0.82026847390289037
	.quad	0x3fe54ceff0ec2ed6              # double 0.66564175658410352
	.quad	0x3fbd6f26dc8cfaf0              # double 0.11497729191340134
	.quad	0x3fd3b39ec24cedba              # double 0.30783814406069221
	.quad	0x3fde6f870ebf052c              # double 0.4755571025853722
	.quad	0x3fc735951ff52474              # double 0.18132270870617939
	.quad	0x3fe8e7f805d2f3d2              # double 0.77831650865084101
	.quad	0x3fec682004b240b3              # double 0.88771058003660241
	.quad	0x3fd4ba4c2c7022a6              # double 0.32387070026065101
	.quad	0x3febdd77371650fb              # double 0.87078438529218205
	.quad	0x3fee64a5889760f7              # double 0.94978596380226932
	.quad	0x3fe62eb3c679e92e              # double 0.69320095791707614
	.quad	0x3fbac6997751b430              # double 0.10459288752618146
	.quad	0x3fe16d328d272fc2              # double 0.5445797688384959
	.quad	0x3fd780a23ac8191c              # double 0.36722617855447637
	.quad	0x3fa1b38ee18ccb00              # double 0.034573044808345443
	.quad	0x3fdcd0a1c4e674b2              # double 0.45023388126885344
	.quad	0x3fef7e0512e41628              # double 0.98413327874795175
	.quad	0x3fe6b5c88d47b5f4              # double 0.70969035714887108
	.quad	0x3fea4cde0c723b1e              # double 0.82188322478200226
	.quad	0x3fb1647daeb2a7b0              # double 0.067939620161864722
	.quad	0x3fe498f06a90b6d1              # double 0.64366932691128842
	.quad	0x3fdceea36aad7c00              # double 0.45206532876721894
	.quad	0x3f9f55f20c5d74c0              # double 0.030601293568328414
	.quad	0x3feb5d28d2327245              # double 0.85512200407135508
	.quad	0x3fe3475b7e109979              # double 0.60246061918296256
	.quad	0x3fc4e1435af3a2e8              # double 0.1631244844532127
	.quad	0x3fe560274e6fe676              # double 0.66798749274967295
	.quad	0x3fec5a1f6f82d172              # double 0.88600131778234315
	.quad	0x3fe84a65a01b502d              # double 0.75908166189993198
	.quad	0x3fd0e8f16e2dad4c              # double 0.26421771773921843
	.quad	0x3fafcf1e13520780              # double 0.062127055986834101
	.quad	0x3fd57d29ab261fd4              # double 0.33576432908784892
	.quad	0x3fe1fd140d904879              # double 0.5621433510698487
	.quad	0x3fba94a7a5475330              # double 0.10383079323885336
	.quad	0x3fe8bba094be6f58              # double 0.77290371943989111
	.quad	0x3fe28b859eddb247              # double 0.57953148869052817
	.quad	0x3feaf73f436ec560              # double 0.84268153353165686
	.quad	0x3fdb4f30d75eef18              # double 0.42670842201526815
	.quad	0x3febef6786788072              # double 0.87297416938601047
	.quad	0x3fd94d5122f3a4fa              # double 0.39534405148749807
	.quad	0x3fe5484c1ae1835f              # double 0.66507535219362157
	.quad	0x3fe6eb19e4266572              # double 0.71619886932891874
	.quad	0x3fb4025a3bce12d0              # double 0.078160895920585504
	.quad	0x3fcf2b17ffe1c600              # double 0.24350261682734242
	.quad	0x3fd2b576526b96d0              # double 0.29232557343344201
	.quad	0x3feb83159aedeff4              # double 0.85975151309639707
	.quad	0x3fcdf3cdc1c74b54              # double 0.23400279962387549
	.quad	0x3fe63c1ad970e8d3              # double 0.69483702153163518
	.quad	0x3fddc43d56f555f8              # double 0.46510251514459311
	.quad	0x3fb4846cb1d089a8              # double 0.08014563885857362
	.quad	0x3f4bcc18e0a36400              # double 8.4830488892884137E-4
	.quad	0x3fef6360b0126184              # double 0.98088106526397256
	.quad	0x3fd956989d81ea84              # double 0.39591040975179959
	.quad	0x3fd400bfdbd9b6f6              # double 0.31254574270029367
	.quad	0x3fed3c86b047c855              # double 0.91363844327703225
	.quad	0x3fef6df5174217c2              # double 0.98217253248798664
	.quad	0x3fd21e3fd6c779ea              # double 0.28309627508670465
	.quad	0x3fd2e854c2509634              # double 0.29543036438039683
	.quad	0x3fa294d8e5984c60              # double 0.036291864420626707
	.quad	0x3fdcbc5c8763b2d2              # double 0.44899666997552601
	.quad	0x3fe3d9ceb936d47d              # double 0.62033783125538344
	.quad	0x3fd5e5174a193cd0              # double 0.34210760341825353
	.quad	0x3fce5dedd7f26294              # double 0.23724148792532118
	.quad	0x3f9c4d88e6a38220              # double 0.027639521672314982
	.quad	0x3fe4c20a8357be44              # double 0.64868665364151257
	.quad	0x3fe6eaf0c2416262              # double 0.71617925587186115
	.quad	0x3fe2973911820f37              # double 0.58095982951679204
	.quad	0x3fe8e7331d13b994              # double 0.77822261504279532
	.quad	0x3fdab86a59f96ce6              # double 0.41750582491449817
	.quad	0x3fef302e61685129              # double 0.97463149094486312
	.quad	0x3fd10839a6c9b38a              # double 0.26612702644234132
	.quad	0x3fa77ec736fbf520              # double 0.045889115774097045
	.quad	0x3fb37800c07f93a0              # double 0.076049849507013878
	.quad	0x3fc277f698030a24              # double 0.14428598806814918
	.quad	0x3fe3530f45229de8              # double 0.60388911726925887
	.quad	0x3fc35de92e96eb24              # double 0.15130343222502873
	.quad	0x3fdbbbad1ab3fc7c              # double 0.43332984550210774
	.quad	0x3fe68b0a93cf7e44              # double 0.70447281712763088
	.quad	0x3febf146698ac3f2              # double 0.87320252050096614
	.quad	0x3fea955eeebeff3a              # double 0.83073374395460253
	.quad	0x3fc6bf3508368c64              # double 0.17771017933873445
	.quad	0x3fec1cef6cb98fba              # double 0.87853213534662378
	.quad	0x3fe936f5c118f865              # double 0.78795898165095635
	.quad	0x3fe953fc574c4579              # double 0.79150216150644248
	.quad	0x3fc620f8a33de2e8              # double 0.17288120241916904
	.quad	0x3fde56af9c4b08dc              # double 0.47404089224813872
	.quad	0x3fc198d586c10e04              # double 0.13747662620345136
	.quad	0x3fb388292faa5280              # double 0.07629640020088324
	.quad	0x3fec33df28cb24d7              # double 0.88133199660765171
	.quad	0x3fc2910ae4cb8a2c              # double 0.14505134746203063
	.quad	0x3fb8e77df02c6f30              # double 0.097282286773801684
	.quad	0x3fe2f14444b7e58b              # double 0.59195149823715221
	.quad	0x3feae4f8a42935d1              # double 0.84045059263888267
	.quad	0x3fee16acc1887c0d              # double 0.94026792334978071
	.quad	0x3fe3c364ad297c8e              # double 0.61760171719278545
	.quad	0x3fe17caaa1409455              # double 0.54646808142264069
	.quad	0x3fe55e28f1915658              # double 0.66774413281627698
	.quad	0x3fedd700e1234e1a              # double 0.93249553653953687
	.quad	0x3fe3bf802972c5c3              # double 0.61712654204728101
	.quad	0x3fd19a6c9021d810              # double 0.27505029750261745
	.quad	0x3fdd5d1fcc2f2c92              # double 0.45880885066862576
	.quad	0x3fdff15e83eccb48              # double 0.49910700686739462
	.quad	0x3fee9ea2586792d4              # double 0.95686452166099877
	.quad	0x3fea6d74611b4e58              # double 0.82586115804810856
	.quad	0x3fe715387b6490d1              # double 0.72134040928042442
	.quad	0x3fee8803eb842144              # double 0.95410343169445654
	.quad	0x3fef5fb0c54f8146              # double 0.98043097054691297
	.quad	0x3fca4960f1e16a00              # double 0.20536433992931791
	.quad	0x3fd887a5d388c40c              # double 0.38327928216591611
	.quad	0x3fb959f822e3a2d8              # double 0.099029072301742516
	.quad	0x3fbe0567bd89cc88              # double 0.11726997735404343
	.quad	0x3fe07931318eb4b2              # double 0.51479396514118592
	.quad	0x3fda64a789471460              # double 0.41239345937748872
	.quad	0x3fd55b215420886c              # double 0.33368714538131061
	.quad	0x3fed74ee150d89f4              # double 0.92052368270770879
	.quad	0x3fedd30d6eed6743              # double 0.93201324143885989
	.quad	0x3fe224874fa04176              # double 0.56695905258133794
	.quad	0x3fdc177fc3886cf4              # double 0.43893426985751138
	.quad	0x3fd7a995f0c61c58              # double 0.36972569001267663
	.quad	0x3fde5a70d5338c34              # double 0.47427006550259709
	.quad	0x3fdbc466a4f7f0e0              # double 0.4338623629589744
	.quad	0x3fee8f055f347e34              # double 0.95495861620651689
	.quad	0x3fe18e18d340f933              # double 0.54859582195766732
	.quad	0x3fe353319abf7d2e              # double 0.60390548919887066
	.quad	0x3fd9a549ffb5e78a              # double 0.40071344348654547
	.quad	0x3fea9e455cb11b2d              # double 0.83182018379088662
	.quad	0x3fe412bfaf1ca7cd              # double 0.62728866769361391
	.quad	0x3feb26f9844f98f1              # double 0.84850765077569978
	.quad	0x3fe5a08adfb3b20a              # double 0.6758474702051569
	.quad	0x3fe312c4a4589a7c              # double 0.59604103182648727
	.quad	0x3fed663f029e2634              # double 0.91873121749194419
	.quad	0x3fe6b282e2276a94              # double 0.70929092570016161
	.quad	0x3fec7105f3505080              # double 0.88879678270542684
	.quad	0x3fac04ffee41c9c0              # double 0.054725644907097415
	.quad	0x3fe492af499caba0              # double 0.6429058492407087
	.quad	0x3fed67754f7c5797              # double 0.91887918018868475
	.quad	0x3fc570eb01565610              # double 0.16750848355575032
	.quad	0x3fe4bc9cb53fa096              # double 0.64802394294840115
	.quad	0x3fea6f57b0115bff              # double 0.8260916174721159
	.quad	0x3fcfa5f77fc92e68              # double 0.24725240459007414
	.quad	0x3fa80b066ed7e8f0              # double 0.046959115057647938
	.quad	0x3fdcd1f138635110              # double 0.45031385904918952
	.quad	0x3fea87153ecc65b8              # double 0.82898962273900789
	.quad	0x3fef31044a005c45              # double 0.97473349049949631
	.quad	0x3fd95de5a211226a              # double 0.39635601832245604
	.quad	0x3fd66c3193216166              # double 0.35035361641123186
	.quad	0x3feccb787f2af4bd              # double 0.89983773076496443
	.quad	0x3faefc16105652a0              # double 0.060517014974867722
	.quad	0x3fe4d2d77a9717e9              # double 0.65073751395607105
	.quad	0x3fe9720cab146a9d              # double 0.79517205633176824
	.quad	0x3fc8d1091d2f2448              # double 0.19387926030165858
	.quad	0x3fef66d4c27a5fa0              # double 0.98130262359608266
	.quad	0x3febc5e94592a184              # double 0.86790908420975698
	.quad	0x3fcaffa521c72040              # double 0.2109266676836814
	.quad	0x3fecd6a5d33064a1              # double 0.90120211837633601
	.quad	0x3fa08cf73882e570              # double 0.032325482986787502
	.quad	0x3fee7792b595f7c1              # double 0.95209632364252894
	.quad	0x3fe7249930e384b6              # double 0.72321757839758649
	.quad	0x3fe5dc64555b7a34              # double 0.68315331145624336
	.quad	0x3fe2e29d10895775              # double 0.59016278486045215
	.quad	0x3fe1c67c146a7e3d              # double 0.55547908771035959
	.quad	0x3fca24c7bbe45120              # double 0.20424744295508734
	.quad	0x3fb5523f31aacb68              # double 0.083286237359784132
	.quad	0x3fd06408ab396b3e              # double 0.25610558243868187
	.quad	0x3fe99b10b0ead3a9              # double 0.80017885736616734
	.quad	0x3feea64db9f60d7d              # double 0.95780073471580318
	.quad	0x3f37359ee9d5b800              # double 3.5414819452384005E-4
	.quad	0x3fd01487627c0ed2              # double 0.251252981354111
	.quad	0x3fe09792946dea79              # double 0.51850251188382324
	.quad	0x3fb38a96ef40e2a8              # double 0.076333459292878048
	.quad	0x3fd7692fce274ef6              # double 0.36579508907492142
	.quad	0x3fdca6bc2b5cc2ba              # double 0.44767669901470308
	.quad	0x3fd17b077e573fde              # double 0.27313411081285988
	.quad	0x3febcff3ca0c9ea6              # double 0.86913480246308406
	.quad	0x3fe25d0610bb14e2              # double 0.57385543124896921
	.quad	0x3fe5cdff78d14b8d              # double 0.68139623257808213
	.quad	0x3fe8405327331282              # double 0.75785215049889154
	.quad	0x3feb1cecd7c9da03              # double 0.84728090425670677
	.quad	0x3feb344f67493951              # double 0.85013551877072235
	.quad	0x3fe3c88aa1917c21              # double 0.61823016697224287
	.quad	0x3fa4f3c387b06270              # double 0.040922270120238191
	.quad	0x3fd93ee810c2c942              # double 0.39446450840764069
	.quad	0x3fdcde9027157916              # double 0.45108417336258932
	.quad	0x3fc2fefdc8f66c20              # double 0.14840671837450348
	.quad	0x3fb1b318cca8cbe0              # double 0.069139051404632834
	.quad	0x3feed8eeb1b94bf2              # double 0.96398100578005441
	.quad	0x3fecb769e03a512a              # double 0.89738935274593712
	.quad	0x3fdd9dd32ce731ac              # double 0.4627578676707127
	.quad	0x3fcb3c621ffbaac4              # double 0.21278025209115559
	.quad	0x3fa6f9e76a0c8ea0              # double 0.044875365920487242
	.quad	0x3fef6af7575191f5              # double 0.98180739454670507
	.quad	0x3fc992140e851454              # double 0.19977045735336907
	.quad	0x3fe4fe5bddc7306d              # double 0.65604966465026637
	.quad	0x3fe0c88311438675              # double 0.52447656032400281
	.quad	0x3feb40fe477d24a9              # double 0.85168374979652584
	.quad	0x3fe953053bd0be73              # double 0.7913843315381669
	.quad	0x3fb73794e3fda108              # double 0.090691857969094625
	.quad	0x3f8da5007cbb2a00              # double 0.01447487240456713
	.quad	0x3fed87591be2ef72              # double 0.92277198263717097
	.quad	0x3fd89f059a73bd28              # double 0.38470592578137763
	.quad	0x3fbbd5b4bdfd38a8              # double 0.10872964514166716
	.quad	0x3fcfd1a723030a44              # double 0.24858559808315495
	.quad	0x3fd16bc2dee61cce              # double 0.27220222251385173
	.quad	0x3facc49532f9c4f0              # double 0.05618730780850878
	.quad	0x3fc1487d216ac460              # double 0.13502468234722453
	.quad	0x3fee6f6bcbbbc692              # double 0.95110120574664081
	.quad	0x3fec6d0e34b242e0              # double 0.88831243793728376
	.quad	0x3feaca53c1ba4ab9              # double 0.83719814145509652
	.quad	0x3fcd7ab3503b975c              # double 0.23030702035537842
	.quad	0x3fe4ed1b594d800f              # double 0.65394370500507815
	.quad	0x3fdd92346d874b86              # double 0.46204863258497431
	.quad	0x3fd2349d4be77cc4              # double 0.28446133053325817
	.quad	0x3fe9b4d416e07b90              # double 0.80332378833905871
	.quad	0x3fe4a55ad49e804e              # double 0.64518491294075786
	.quad	0x3fc21247c2b8901c              # double 0.14118287093981585
	.quad	0x3fe5b9d72d3b441d              # double 0.67893561205176278
	.quad	0x3fdab326863d400c              # double 0.41718447789480773
	.quad	0x3fca3baf43b51b3c              # double 0.20494643026378323
	.quad	0x3fd34458154bb872              # double 0.30104639129320454
	.quad	0x3fe307e0199c76e1              # double 0.59471135141549436
	.quad	0x3feb953f44322fc5              # double 0.86196864432849252
	.quad	0x3fe68e74072a4bf4              # double 0.70488931083161654
	.quad	0x3fc929a5ca8f5d94              # double 0.19658348456026131
	.quad	0x3fd1e0ea5832e63e              # double 0.27935274708906721
	.quad	0x3f9e2531bb35a9e0              # double 0.029438759852760898
	.quad	0x3fdf919b33a45a4c              # double 0.49326210063137377
	.quad	0x3fe9573e653483f8              # double 0.79189986960056924
	.quad	0x3fd7c57662e18e28              # double 0.37142715126376169
	.quad	0x3fde8169a8b9dc3a              # double 0.47664872624540389
	.quad	0x3fe729e98a2ab94f              # double 0.72386624322624893
	.quad	0x3fed287afa0cb78c              # double 0.91119145238711629
	.quad	0x3fd9af7dd927441a              # double 0.40133615690598534
	.quad	0x3faeb138f397d370              # double 0.059945850120050603
	.quad	0x3fc128dc50c66678              # double 0.13405946678249214
	.quad	0x3fdda266f7397406              # double 0.46303724425325787
	.quad	0x3fd20a151ef9e6bc              # double 0.28186538720147403
	.quad	0x3fd6d286fe8c363e              # double 0.35659956796812142
	.quad	0x3fd60f88fb0bd92c              # double 0.34469818607557801
	.quad	0x3fca36ada559eaec              # double 0.20479364942351397
	.quad	0x3febafc3bfa1fd89              # double 0.86520564487720819
	.quad	0x3fe9f9ef7d6643af              # double 0.81175970546802556
	.quad	0x3fd2d394ae9e080e              # double 0.29416386654350013
	.quad	0x3fd6f2c0db196b90              # double 0.35856648823180937
	.quad	0x3fe73b339f2fe503              # double 0.725976763641626
	.quad	0x3fc5cbbf0a60a370              # double 0.17028034216607635
	.quad	0x3fe1974f4c8d6f8b              # double 0.54972042991310965
	.quad	0x3fd4ebaf18301334              # double 0.32688500749673044
	.quad	0x3fe517978b9894c6              # double 0.65912987961623837
	.quad	0x3fdc7ce702c8c0a2              # double 0.44512343665975085
	.quad	0x3fe2be558de1be9d              # double 0.58573415480892133
	.quad	0x3fee2f1fc82a94c3              # double 0.94325245947825243
	.quad	0x3fecc07b3b493b3a              # double 0.89849626139935101
	.quad	0x3fd33de4a9c055da              # double 0.30065266206051222
	.quad	0x3fe1003419e2c5e5              # double 0.53127484374834621
	.quad	0x3fc3df090c821020              # double 0.1552439986299996
	.quad	0x3fd00a19a63ac81e              # double 0.25061646684037153
	.quad	0x3fe791de9061cc15              # double 0.73655632209409083
	.quad	0x3fd143988330e8a8              # double 0.26975071727395994
	.quad	0x3fcfeb6e55ec92f4              # double 0.24937228389276067
	.quad	0x3fe1a1c347cb998f              # double 0.550996437287539
	.quad	0x3fed266da325e3a0              # double 0.91094095101208338
	.quad	0x3fdc42e6fed09746              # double 0.44158339390047663
	.quad	0x3fa0796a804f5480              # double 0.032176330721690682
	.quad	0x3fbac5f6ffa974c8              # double 0.10458320371386087
	.quad	0x3fec0b3e15445781              # double 0.87637237695410886
	.quad	0x3febc1ae0a962b82              # double 0.86739255969710904
	.quad	0x3fcb80b42cb5dea8              # double 0.21486522849203493
	.quad	0x3f992b72b0f24a40              # double 0.024579803514436671
	.quad	0x3fe971ef969768d1              # double 0.79515818989173159
	.quad	0x3fed0c6afa325348              # double 0.90776585451622172
	.quad	0x3fd233a1256dc592              # double 0.28440121321826795
	.quad	0x3fbaebadb7712980              # double 0.10515866974416177
	.quad	0x3fe5c7800e37e55c              # double 0.68060305382747854
	.quad	0x3fa263c15bd6c7e0              # double 0.035917322598279844
	.quad	0x3fce19cdd30db0f0              # double 0.23516247563691861
	.quad	0x3fb0c2a10c232bb0              # double 0.065469804251889085
	.quad	0x3fa8a6e2c5475110              # double 0.048148237783296577
	.quad	0x3fe16782332330a2              # double 0.54388532626900976
	.quad	0x3fdcacec14417d8a              # double 0.4480543325243721
	.quad	0x3fe42dc5a6fd2d88              # double 0.63058741202387214
	.quad	0x3fe96ef52d5a64b6              # double 0.79479464395549004
	.quad	0x3feddbf78662df6c              # double 0.93310142752942004
	.quad	0x3fe1c2b23b503e6c              # double 0.55501662811907471
	.quad	0x3fddd28b6817006e              # double 0.4659756199362225
	.quad	0x3fbe3555fbce9af8              # double 0.11800134084351643
	.quad	0x3fe0ad8c28707f7a              # double 0.52118499658898476
	.quad	0x3fd7748ad485bff8              # double 0.36648817781588106
	.quad	0x3fe964c7070fd13b              # double 0.79355193499808452
	.quad	0x3febab32a58be7d6              # double 0.86464817364980706
	.quad	0x3fc0f79221a9965c              # double 0.13255526202844947
	.quad	0x3fdd9a58bec7a4ee              # double 0.46254557257505169
	.quad	0x3fd56fc46e6738e8              # double 0.33494673520625762
	.quad	0x3fed5fecc4c76d80              # double 0.91795957978631293
	.quad	0x3fd21a47ed203c46              # double 0.28285406262233825
	.quad	0x3fdcad9da6629fa4              # double 0.44809666870650688
	.quad	0x3fcb98a17919194c              # double 0.21559542096128792
	.quad	0x3f914e9d33606d60              # double 0.016901451359541908
	.quad	0x3fb2e16c994821b8              # double 0.073752200529390133
	.quad	0x3fd6fcd8b615e244              # double 0.3591825273684075
	.quad	0x3fe55f6f8d3a0d20              # double 0.66789987166740516
	.quad	0x3fb367ba32dbef98              # double 0.075801503578928453
	.quad	0x3feaebc4287e3bc3              # double 0.84128005894478297
	.quad	0x3fe6dac004c51c1b              # double 0.71420288974411805
	.quad	0x3fdc255fe1d7e1a2              # double 0.43978116087921582
	.quad	0x3fef5e20c1ebac4a              # double 0.98024022936932309
	.quad	0x3fe63bca7a2d62e4              # double 0.69479869711639397
	.quad	0x3fcb1a0d95a66fd0              # double 0.21173257643829269
	.quad	0x3fec9d6c6706be5d              # double 0.8942167293771025
	.quad	0x3fe82fa06e23ff2e              # double 0.75581380378569007
	.quad	0x3feb66850facb135              # double 0.85626462041321949
	.quad	0x3fee844491bb2a5f              # double 0.95364597762211278
	.quad	0x3fddcd9f2f0a37a6              # double 0.46567515939465876
	.quad	0x3fd0b15591d7800c              # double 0.26082362406123205
	.quad	0x3fec3b6e9e762d60              # double 0.88225489568268855
	.quad	0x3fec09cab4ddeea1              # double 0.87619529080935277
	.quad	0x3fe74640c7fc8f70              # double 0.72732581195712775
	.quad	0x3fe7f216b430a7b8              # double 0.74830184167262015
	.quad	0x3fc3b866da99ca88              # double 0.15406499551643926
	.quad	0x3fd251f8d220f606              # double 0.28625317116151938
	.quad	0x3fc394066e178438              # double 0.15295486808375514
	.quad	0x3fe8ddc329048b0d              # double 0.77707059870985662
	.quad	0x3fee01d6612fd5ae              # double 0.93772429448897809
	.quad	0x3fe862ce7ff52889              # double 0.76206135741928549
	.quad	0x3fea336f33fb8417              # double 0.81877861168698274
	.quad	0x3f97325164b2b340              # double 0.022652885218735763
	.quad	0x3fd7502b96c12e14              # double 0.36426820490007228
	.quad	0x3fdc9ff031ba4770              # double 0.44726185661521978
	.quad	0x3fbe323097696dc0              # double 0.11795333572938826
	.quad	0x3fc915624f61c0e4              # double 0.19596508861605522
	.quad	0x3fd0dc7902cbb66c              # double 0.26345658562681851
	.quad	0x3fee1792bcc4d72f              # double 0.94037758702208929
	.quad	0x3feaffc1ad2f76a7              # double 0.84372028184198633
	.quad	0x3fb61b9feeb83a40              # double 0.086359020024453947
	.quad	0x3feb7c3e9c0e4b6b              # double 0.85891657333045879
	.quad	0x3feadbe4274918a1              # double 0.83934219048457603
	.quad	0x3fe1d795b43aa51f              # double 0.55756650162689769
	.quad	0x3fd7096a8eef6ee6              # double 0.35994972189449326
	.quad	0x3fde1220fdcf78ba              # double 0.46985649858641987
	.quad	0x3fe13f3ca027a655              # double 0.53896933822870585
	.quad	0x3fe6a5f6e9d2c388              # double 0.70775933903324617
	.quad	0x3fcdf385d3af38f4              # double 0.2339942248931447
	.quad	0x3fe30f5f2c3fde53              # double 0.59562643663862003
	.quad	0x3fca8d162f4e5764              # double 0.20743062314857774
	.quad	0x3fe75107743b8f2d              # double 0.72864124967279553
	.quad	0x3fd66961cfe8c9ac              # double 0.35018201163907281
	.quad	0x3fe513cb093a2d8f              # double 0.65866615106772197
	.quad	0x3fe97be4fb0d4365              # double 0.79637383493000569
	.quad	0x3fee673eff33536e              # double 0.9501032814392667
	.quad	0x3fee225ed5587bbe              # double 0.94169561070508911
	.quad	0x3fed8173cf7c638b              # double 0.92205229305828718
	.quad	0x3fa60ce93173b6b0              # double 0.043067252432462566
	.quad	0x3fe73137e7ba4d75              # double 0.72475810298276022
	.quad	0x3fe0c769765b4d1d              # double 0.52434228054554277
	.quad	0x3fe4521cd0333ff7              # double 0.63502350486851256
	.quad	0x3fe602c2af07e175              # double 0.6878369730539321
	.quad	0x3fc91541f80f3888              # double 0.19596123325613157
	.quad	0x3fe25d904dbe1a54              # double 0.57392134842013798
	.quad	0x3fb2071ec1b33818              # double 0.070421144762093824
	.quad	0x3fe7200a32c76bc0              # double 0.7226611129548175
	.quad	0x3fcf51d4c5caf1ac              # double 0.24468478830193641
	.quad	0x3f9c1fc8daa90de0              # double 0.027464998575181698
	.quad	0x3fe440a5ecc04da6              # double 0.6328916191145495
	.quad	0x3fe4beaf2b3fa54c              # double 0.64827688643451031
	.quad	0x3fe4e755374a21da              # double 0.65323887633081346
	.quad	0x3fec2a6d9f0c9ca1              # double 0.88017922462758602
	.quad	0x3f8d335a2fec2440              # double 0.014258102977253384
	.quad	0x3fd0d8b316be2dae              # double 0.26322629185662094
	.quad	0x3fe504aa7d8ff480              # double 0.65681957744494923
	.quad	0x3fd6a73cec5e4566              # double 0.35395739634357992
	.quad	0x3fdcaa130b87c7c8              # double 0.44788051725401745
	.quad	0x3fd0d5ef7eee5870              # double 0.2630575885353954
	.quad	0x3fee5d4e8903dc9a              # double 0.94888998757132303
	.quad	0x3fce84487eaef168              # double 0.23841196237288931
	.quad	0x3fe154f1073cd1f8              # double 0.54161883748616813
	.quad	0x3fe5a9dce3aef687              # double 0.67698521108077692
	.quad	0x3fe06420ae3e64fd              # double 0.5122226145932981
	.quad	0x3fcd9d5b2e0a54c4              # double 0.23136462925018553
	.quad	0x3f9ebcf9bee0dec0              # double 0.030017759585659887
	.quad	0x3fe9f82e094bbfac              # double 0.81154538932422815
	.quad	0x3fc8d9153a665e1c              # double 0.19412484504276584
	.quad	0x3fe9ec92e5e12fb1              # double 0.81012864015928276
	.quad	0x3fde029e0bc04cfe              # double 0.46890975139213242
	.quad	0x3fe7fa2b2b9f8920              # double 0.74928816337731873
	.quad	0x3fb904c3ad158b48              # double 0.097728948361276768
	.quad	0x3fdfa2db63e59492              # double 0.49431500201746659
	.quad	0x3fe146fdaf894874              # double 0.53991588863779194
	.quad	0x3fe62c39bf24b6d3              # double 0.69289862950037173
	.quad	0x3fe1614cc7b71aa1              # double 0.54312743193516522
	.quad	0x3fcbc219b4f163ac              # double 0.21686097464660514
	.quad	0x3fccbae208df8af8              # double 0.22445321496260084
	.quad	0x3fcc1c98cb99c698              # double 0.21962270680846951
	.quad	0x3fea858e07130366              # double 0.82880307561582067
	.quad	0x3fdb5608b61a908e              # double 0.42712610038348309
	.quad	0x3fe8537cc5846dc2              # double 0.7601913316497575
	.quad	0x3fc598055d9645d4              # double 0.16870181150129204
	.quad	0x3fd1e4e36b1425b6              # double 0.27959523636726702
	.quad	0x3fe4bf4bc1485974              # double 0.64835155249129039
	.quad	0x3fc2bd644bde1f80              # double 0.14640477852321609
	.quad	0x3fec7b84a919671b              # double 0.89007790591424241
	.quad	0x3feb0a1fd591bbf0              # double 0.84498588288067644
	.quad	0x3fd155febd947fc0              # double 0.2708737231605447
	.quad	0x3fe29d8be7657e30              # double 0.58173175043697789
	.quad	0x3fe46f182f5b193a              # double 0.63856133698644801
	.quad	0x3fddc7e2a0d934e8              # double 0.46532502849443214
	.quad	0x3fe17f414cfaae2a              # double 0.54678406748775399
	.quad	0x3fe7328020f97f3c              # double 0.72491461220122444
	.quad	0x3fc4124f1bfbee48              # double 0.1568087469712387
	.quad	0x3feb33776427525b              # double 0.85003251610994413
	.quad	0x3fa23695b9a72c50              # double 0.035572699463579327
	.quad	0x3fe9d5d2bab4ed09              # double 0.80735146013412973
	.quad	0x3fc45693fef4f020              # double 0.15889215420782055
	.quad	0x3fb2160adc490898              # double 0.070648840694988002
	.quad	0x3f67268f81d68200              # double 0.0028260043024632697
	.quad	0x3fe443fa102df9c8              # double 0.63329795036389047
	.quad	0x3fd5a4a4088bbd78              # double 0.33817387423092482
	.quad	0x3fb87e53e6e84bc0              # double 0.095677608369711287
	.quad	0x3fe4a25bef889a2d              # double 0.64481922897249933
	.quad	0x3fe8deb753cd18a7              # double 0.77718702666677053
	.quad	0x3f8eed14599aca80              # double 0.015100630745427113
	.quad	0x3fdff4e7edf56856              # double 0.49932287443301016
	.quad	0x3fd66f71a951adb8              # double 0.35055200133384856
	.quad	0x3fed6d8b3c58ae28              # double 0.91962205683143328
	.quad	0x3fd5c1e39d77ddc4              # double 0.33995905282742123
	.quad	0x3fd95d4471be659a              # double 0.39631758792673966
	.quad	0x3fe2110642ddff45              # double 0.5645781808852709
	.quad	0x3fe097f44cae7365              # double 0.51854910828442924
	.quad	0x3fb6349194a51518              # double 0.086739634313819258
	.quad	0x3fdcf49a4f765ba2              # double 0.45242936859124872
	.quad	0x3fd5b20caf41a41a              # double 0.33899228205570042
	.quad	0x3fbfe0309e3aad40              # double 0.12451461661355712
	.quad	0x3fe1853725fafdd3              # double 0.54751164835027522
	.quad	0x3fef409b7bb996a8              # double 0.9766366402152089
	.quad	0x3fc145c238ca2a1c              # double 0.13494136593756501
	.quad	0x3fd190220022e658              # double 0.27442216885865411
	.quad	0x3fb6502f785ef4f8              # double 0.087161032569344488
	.quad	0x3fc10800c8dc03b0              # double 0.13305673415746133
	.quad	0x3fe142cc3baf3b72              # double 0.53940402657631936
	.quad	0x3fd80b9fa2a9ce7e              # double 0.37570944676483709
	.quad	0x3fe55512da72eeaf              # double 0.66663496652423315
	.quad	0x3feb0f1b54d051d8              # double 0.84559408726868934
	.quad	0x3fc5be7e80c7e808              # double 0.16987592018250575
	.quad	0x3fbd41d3f9bcc1d8              # double 0.11428570601561405
	.quad	0x3fe6931a8998bcf0              # double 0.70545698999731421
	.quad	0x3fe35d07e24be8bb              # double 0.60510629843272257
	.quad	0x3fe8d72910efcf10              # double 0.77626469905814766
	.quad	0x3fd052eaa3f26b82              # double 0.25506082544750808
	.quad	0x3feba064a2e7f0b1              # double 0.86332923715192156
	.quad	0x3f7afc642d79ec00              # double 0.0065883553685308627
	.quad	0x3fe3f6379f157721              # double 0.62380581923546086
	.quad	0x3f863cbd89378ec0              # double 0.010858040571242511
	.quad	0x3fd20565c240089c              # double 0.28157943696727172
	.quad	0x3fbaa2c77e4ab8f8              # double 0.10404631455705615
	.quad	0x3fe305d9e621f972              # double 0.59446425388141066
	.quad	0x3fe143352ad19ea8              # double 0.53945406306316546
	.quad	0x3fb788c0b4bc3ab8              # double 0.091930431485006348
	.quad	0x3fc7beaebea6a8d8              # double 0.18550667103892837
	.quad	0x3fcd680b13fe38bc              # double 0.22973764873717595
	.quad	0x3fcb893d12d327f0              # double 0.21512568873578131
	.quad	0x3fc29e7e79b45b40              # double 0.14546185438731563
	.quad	0x3fa53667951d5420              # double 0.041430699303113494
	.quad	0x3fd2c563e47a1bda              # double 0.29329774200635728
	.quad	0x3fed37322e7a4c8a              # double 0.91298779561692922
	.quad	0x3fa84a23dda04d60              # double 0.047440644077279215
	.quad	0x3fee3a0df433da98              # double 0.94458673187075969
	.quad	0x3fe2a3c4d1fcf6d3              # double 0.58249131215390049
	.quad	0x3fe53fba1ab28dc8              # double 0.66402917112684978
	.quad	0x3fd6b22320ca0da2              # double 0.3546226330001564
	.quad	0x3fec97d2b2b2fccc              # double 0.89353308584386459
	.quad	0x3febae9ddbc19991              # double 0.86506550713675001
	.quad	0x3fe106b0eedd6d2c              # double 0.53206679013547875
	.quad	0x3feff5009075b7ed              # double 0.99865749563991601
	.quad	0x3fd68f6cfa6d0620              # double 0.35250400977756335
	.quad	0x3fdf322087ffd328              # double 0.48743451386626413
	.quad	0x3fed34dd049a8c29              # double 0.91270304583702455
	.quad	0x3fef25c72c53b02b              # double 0.97336157472228046
	.quad	0x3fe3985b08370482              # double 0.61234809498286347
	.quad	0x3fc6167e662d1404              # double 0.17256145466868145
	.quad	0x3fe7f3990c7fe623              # double 0.74848606530503436
	.quad	0x3fc73ebf70521284              # double 0.18160241112140707
	.quad	0x3fd4a852b7f9c7ee              # double 0.32277362791421538
	.quad	0x3fd9cd4a1ee617be              # double 0.40315487878285328
	.quad	0x3fc020609cab3464              # double 0.12598807954637714
	.quad	0x3fe3556046bf2764              # double 0.6041718847056754
	.quad	0x3feccaf37f973e5b              # double 0.89977431221081916
	.quad	0x3fea81d69dec5b4c              # double 0.8283494076193647
	.quad	0x3fc44b447daa77ac              # double 0.15854698310880389
	.quad	0x3fe8521d0fb7eae4              # double 0.76002362318044136
	.quad	0x3fe565bf0428780e              # double 0.66867018520474786
	.quad	0x3fb34c470f57d6f8              # double 0.075382653470878469
	.quad	0x3fd91111c9432f02              # double 0.39166683821234483
	.quad	0x3fecbd973ca9bb77              # double 0.89814340446706253
	.quad	0x3fcb39ad4921a134              # double 0.21269765921466333
	.quad	0x3fde99f3aa657200              # double 0.47814647331486526
	.quad	0x3fef694f10ec0e52              # double 0.98160508446785344
	.quad	0x3fdfc12a3821b2b6              # double 0.49616485101322938
	.quad	0x3fe96ef7cf9fcba6              # double 0.79479589988328736
	.quad	0x3fec09f4d274fafc              # double 0.87621537308572738
	.quad	0x3fd368ad70fe36b6              # double 0.30326400789713703
	.quad	0x3fa1ff9d64210ac0              # double 0.035153311226641559
	.quad	0x3fb453f16cd8a490              # double 0.079405869554323382
	.quad	0x3fef3ec8afb655f9              # double 0.97641405409620951
	.quad	0x3fe2ff89ff527fc7              # double 0.59369373195294706
	.quad	0x3fb2b0edb96801f0              # double 0.073012216344075176
	.quad	0x3fbd8a6ca77cfbf0              # double 0.11539343918865064
	.quad	0x3fe9fd3cd8421bb6              # double 0.81216280210434522
	.quad	0x3fed0216c41b2b4c              # double 0.90650499631861114
	.quad	0x3fab2bdaf3a22550              # double 0.053068964233782823
	.quad	0x3fdb337cb6205586              # double 0.42501752649089786
	.quad	0x3fc9f8d4f288a2fc              # double 0.20290624468295693
	.quad	0x3fee82090fd5c99a              # double 0.9533734616546099
	.quad	0x3fe492722079ab75              # double 0.6428766855509439
	.quad	0x3fe2e9e1990f2042              # double 0.59104995626785972
	.quad	0x3fd55e706b31e1e4              # double 0.33388910740134592
	.quad	0x3fe0796a969059af              # double 0.51482133299832877
	.quad	0x3fe4d559d7c02c98              # double 0.65104381693653846
	.quad	0x3fcd7fded48ae6e8              # double 0.23046479585700941
	.quad	0x3fe025787aa62775              # double 0.50457405047312298
	.quad	0x3fd86dbd28bae28e              # double 0.38169793107548677
	.quad	0x3f7c394ff0660180              # double 0.0068905947322267513
	.quad	0x3f9c74eb1ca697a0              # double 0.02778975832338626
	.quad	0x3fcfdee1d9acc438              # double 0.24898932579665867
	.quad	0x3fc47b06a8dc2f04              # double 0.16000445599672031
	.quad	0x3fc3cd1fd3cc80f8              # double 0.15469739763012291
	.quad	0x3fdda777bdbdd0e8              # double 0.46334641961517642
	.quad	0x3fbf248fd4008490              # double 0.12165163923102029
	.quad	0x3fd0c32b79e3646e              # double 0.26191222098493128
	.quad	0x3fd4b9d950cc533c              # double 0.32384331598705152
	.quad	0x3febf4200979bc2d              # double 0.87355043268860799
	.quad	0x3fe96c2c213199f8              # double 0.79445463641314884
	.quad	0x3fda018af9e65808              # double 0.40634416965747322
	.quad	0x3fd470b81b240f04              # double 0.31937983179544482
	.quad	0x3fe771b4d9959321              # double 0.73263018128327329
	.quad	0x3faecc6e64d24ac0              # double 0.060153436476999556
	.quad	0x3fd0e833baceffa6              # double 0.26417248957658968
	.quad	0x3fec3c9fa55dfa2c              # double 0.88240034387837829
	.quad	0x3fecddc29fd29197              # double 0.90207034316385915
	.quad	0x3fec137d33015601              # double 0.87737903558689834
	.quad	0x3fe637593aa40da5              # double 0.69425641492164358
	.quad	0x3feba146113742cb              # double 0.86343673098061779
	.quad	0x3fed8f7e80720e49              # double 0.92376637541787787
	.quad	0x3fcc1821d9d7733c              # double 0.21948645722195603
	.quad	0x3fc2c1ed9603d7d0              # double 0.14654321503593204
	.quad	0x3fe7af3bc3aaf72e              # double 0.74014080253957615
	.quad	0x3fd0d03a84822a48              # double 0.26270926418570584
	.quad	0x3fc1e29c94a96f78              # double 0.13972813853149169
	.quad	0x3fdd2ee4d68d3310              # double 0.45598717644024678
	.quad	0x3fc48420bbd00894              # double 0.1602822224668371
	.quad	0x3fe0a70f7ac7c6f0              # double 0.52039312344115096
	.quad	0x3fdf8a915ffd538a              # double 0.49283251165371011
	.quad	0x3fc08c11966a6358              # double 0.12927455753813422
	.quad	0x3fe7dade34fae214              # double 0.74546728465708378
	.quad	0x3fc4eab6a331ee50              # double 0.16341288536556187
	.quad	0x3fd8bfdda792de62              # double 0.38671056141490656
	.quad	0x3fec3db614729bbc              # double 0.88253311151208135
	.quad	0x3fe770c4903ae4a9              # double 0.73251560373241376
	.quad	0x3feb5a2d7b9ab99d              # double 0.85475801602824542
	.quad	0x3fd8b646f6c5a412              # double 0.38612531756240387
	.quad	0x3fe97d393234fb7a              # double 0.79653606229827223
	.quad	0x3fe82cd0a764c76e              # double 0.75547058767391007
	.quad	0x3fdcb2888a3c405a              # double 0.44839681148096633
	.quad	0x3fe2ee04d909fc8c              # double 0.59155504599029163
	.quad	0x3fd9aba6e50b2f94              # double 0.40110180251644434
	.quad	0x3fe880c90084f9ff              # double 0.76572084523633055
	.quad	0x3fedb5dcdcd5c776              # double 0.92845004207468551
	.quad	0x3fdcf804dc1d5988              # double 0.45263787742205652
	.quad	0x3fd077fc0846037e              # double 0.25732327278097233
	.quad	0x3fc131f186335a80              # double 0.13433665325893074
	.quad	0x3fa3be7015308820              # double 0.03856230028783636
	.quad	0x3fdbe0bb8dd170a8              # double 0.43559159135271353
	.quad	0x3fd397c0ffba8668              # double 0.30613732312676811
	.quad	0x3fedc4f977ab3764              # double 0.93029473660292838
	.quad	0x3fe7dbe50f53cb3a              # double 0.74559262269608628
	.quad	0x3fdca0bcb1e2820a              # double 0.44731061336099798
	.quad	0x3fc1c98fc92e142c              # double 0.13896367381326635
	.quad	0x3fd4233f0915db5a              # double 0.3146512593006513
	.quad	0x3fb7988872f385c0              # double 0.092171218933365218
	.quad	0x3fef9723a7d79a74              # double 0.98719961911849773
	.quad	0x3fdc6e2b272d1660              # double 0.44422415567200879
	.quad	0x3fe2352f68d68087              # double 0.56899233318473896
	.quad	0x3fda74795ec87e58              # double 0.41335901504678452
	.quad	0x3fd0fa0432cdf56a              # double 0.26525979005221834
	.quad	0x3fea39a29ee23e43              # double 0.81953555137619849
	.quad	0x3fe7a0d5fafaa87f              # double 0.73838328379976292
	.quad	0x3fd50948bf3a1cd6              # double 0.32869166063796962
	.quad	0x3feb72a99480ded1              # double 0.85774687771387381
	.quad	0x3feb4bf564d55559              # double 0.85302228635797939
	.quad	0x3fedd90ea583e016              # double 0.93274624182868382
	.quad	0x3fcd0f7b7798b9c0              # double 0.22703498210598916
	.quad	0x3fe58678ba125d99              # double 0.67266498891960957
	.quad	0x3fe2615fe4f0a38c              # double 0.57438654627650143
	.quad	0x3fdce94b0b4ba394              # double 0.45173908331940393
	.quad	0x3fe7d4cad5ac33aa              # double 0.74472562535230691
	.quad	0x3fd6bd1cb1f4a81c              # double 0.35529248598561636
	.quad	0x3fe1b02fe66264aa              # double 0.55275721547072476
	.quad	0x3fe7a7e30c35f7a8              # double 0.73924400696681847
	.quad	0x3fa48dbbb32a29e0              # double 0.04014383852070913
	.quad	0x3fcdaaa431866510              # double 0.23177006166660208
	.quad	0x3fe189e0ad7789d6              # double 0.54808076744330481
	.quad	0x3fdf1b2b8771a3a8              # double 0.48603332735961624
	.quad	0x3fe170b522e4107f              # double 0.54500824751495702
	.quad	0x3fe92f5e478861d3              # double 0.78703226062048726
	.quad	0x3fe660d91cd3b175              # double 0.69932227735766495
	.quad	0x3fcac354969f926c              # double 0.20908601145415007
	.quad	0x3fe54bf4cdfe9f15              # double 0.66552200539897177
	.quad	0x3fdc45584e655af0              # double 0.44173247962809992
	.quad	0x3fa6269b577db6a0              # double 0.043263296537458418
	.quad	0x3fecf08303a0591c              # double 0.90435934742234591
	.quad	0x3fdae2d40b66aa7e              # double 0.42009450066931453
	.quad	0x3fe43f92ca3d605b              # double 0.6327604246134898
	.quad	0x3fd214ff363399c6              # double 0.2825315503418121
	.quad	0x3fd66a18b7c5af9a              # double 0.35022561975960687
	.quad	0x3fd9fafe6e2c31d2              # double 0.40594444998785406
	.quad	0x3fa9641240a3cbc0              # double 0.049591608419994326
	.quad	0x3fb1f70f59cfc3f0              # double 0.070176085878997929
	.quad	0x3fee72bebde415f3              # double 0.95150696838453397
	.quad	0x3fe62002808f8dd3              # double 0.69140744313738833
	.quad	0x3fe3a78da4e66c5a              # double 0.6142032833771609
	.quad	0x3fed5160d9024b1e              # double 0.91618387589037176
	.quad	0x3f76bd0fca61db80              # double 0.0055513970202046847
	.quad	0x3fe93e0fdd40dc3f              # double 0.78882592404887208
	.quad	0x3fd3bafd76b907f6              # double 0.30828796953221571
	.quad	0x3feb151809ec4f5a              # double 0.84632493913748452
	.quad	0x3fe7387436076734              # double 0.72564135124705453
	.quad	0x3fe2c8e38a737401              # double 0.58702256241997486
	.quad	0x3fe6c2b7bc2f5de1              # double 0.71126925234687743
	.quad	0x3fcd65e2c98e58d4              # double 0.22967181054690988
	.quad	0x3feaa3b4d50cb575              # double 0.83248368846186216
	.quad	0x3fcf2b76a351c938              # double 0.24351389860709971
	.quad	0x3fd29d65b4d521f2              # double 0.29085676822117457
	.quad	0x3f9090a0c496ae00              # double 0.016176712035003149
	.quad	0x3fc2ad613ece164c              # double 0.14591613356258148
	.quad	0x3fe5ebbde9814a10              # double 0.68502708059742368
	.quad	0x3fb7d0e2037483c0              # double 0.093031049579180625
	.quad	0x3fe88de08249a5d3              # double 0.76731896826566481
	.quad	0x3fb1ae227243c100              # double 0.069063332459112559
	.quad	0x3fba3aa0bdd1dbf0              # double 0.10245709070464648
	.quad	0x3fd197e194c4c066              # double 0.27489509132556689
	.quad	0x3fe2bebc40baa1f2              # double 0.58578312532796262
	.quad	0x3fca35786d85b240              # double 0.20475678775564354
	.quad	0x3fe8b45b49797098              # double 0.77201618528808336
	.quad	0x3fea9c0338a063db              # double 0.83154450473659425
	.quad	0x3fa81e47efb8eb00              # double 0.047106025708179899
	.quad	0x3fc956e5cb1dcf48              # double 0.19796440522952197
	.quad	0x3fc0814b7953c258              # double 0.12894576477221409
	.quad	0x3fd226296764943e              # double 0.28357920739137288
	.quad	0x3fe11888f96cf9f5              # double 0.53424500194506541
	.quad	0x3fdc610045d87b30              # double 0.44342047520506167
	.quad	0x3fef0292758621bd              # double 0.96906397775551733
	.quad	0x3fe7c3bf3c3d1b30              # double 0.74264489903803188
	.quad	0x3fd53464539c4d10              # double 0.33132274785130367
	.quad	0x3fe1c25827516321              # double 0.55497367553025267
	.quad	0x3fda1c51bff9267a              # double 0.40797847506892249
	.quad	0x3fe83fdb972af32a              # double 0.75779513859706538
	.quad	0x3fe5f8822e2cc4ef              # double 0.6865855123379826
	.quad	0x3fe692a683892155              # double 0.70540166559752981
	.quad	0x3fefd3f5e2f61d0a              # double 0.9946240837897744
	.quad	0x3fe1c86ceef55410              # double 0.55571600600763027
	.quad	0x3fd825760987def4              # double 0.37728644304978265
	.quad	0x3fda3acf8e0e7e1a              # double 0.40983952400890333
	.quad	0x3fc4cd96c9f43310              # double 0.1625240789511726
	.quad	0x3fe1743ab2a14c3a              # double 0.54543814552960801
	.quad	0x3fc4005abd1fbb50              # double 0.15626081690376248
	.quad	0x3fe36a959f5be60d              # double 0.60676079869080157
	.quad	0x3fb31e8244000958              # double 0.074684278108212765
	.quad	0x3fc098819d33ced8              # double 0.12965412307641233
	.quad	0x3fe3e59a9382a319              # double 0.62177780924421022
	.quad	0x3fe84e486b410e08              # double 0.75955601642675763
	.quad	0x3fdbf5b7bfaf02a2              # double 0.43687242240052104
	.quad	0x3feb455211862c27              # double 0.8522119848506734
	.quad	0x3fe73f84a57cd97b              # double 0.72650368043723235
	.quad	0x3fc91219b20dedcc              # double 0.19586487955153442
	.quad	0x3feb73e72f7adf4f              # double 0.85789832375938058
	.quad	0x3fee7c425b6f975b              # double 0.95266836031508306
	.quad	0x3fc89cf63428f96c              # double 0.19229009196164826
	.quad	0x3fd20a16320ac9d6              # double 0.28186564337661701
	.quad	0x3fecfe46768d2f5c              # double 0.90603945879545788
	.quad	0x3fe53b8101074a54              # double 0.66351366234659759
	.quad	0x3fe114150ff106ba              # double 0.53370144952369647
	.quad	0x3fce3ef958b68f34              # double 0.23629681426711502
	.quad	0x3fe03bc620225cac              # double 0.50729662204948545
	.quad	0x3fe9ce07a828d397              # double 0.80640013545654454
	.quad	0x3fe72b9e31df39cc              # double 0.72407445660228964
	.quad	0x3fe350c481aa60db              # double 0.60360932660389766
	.quad	0x3fba9244089eb848              # double 0.10379433832596974
	.quad	0x3fe0c6aa226e7091              # double 0.52425104832538427
	.quad	0x3fd83150176c9530              # double 0.37800981795801913
	.quad	0x3fed5f1bb37dbbfe              # double 0.91785988861909096
	.quad	0x3fe86a7f8fb1017b              # double 0.76300027909023471
	.quad	0x3fd0be341965a3c6              # double 0.26160910110644087
	.quad	0x3fe58419a04efc6e              # double 0.67237550077687813
	.quad	0x3fe331191083a6af              # double 0.59974339700166535
	.quad	0x3fe0053b0d3e134e              # double 0.50063850962087897
	.quad	0x3fe9acbac22c278d              # double 0.80233514713585097
	.quad	0x3feb89ebcee78d32              # double 0.8605860749343377
	.quad	0x3febf4d9b03767b5              # double 0.87363895814200154
	.quad	0x3fb68486c33a46d8              # double 0.087959692633627795
	.quad	0x3fc42006c407b4d8              # double 0.15722736903936751
	.quad	0x3fe0e2a1b2ed8723              # double 0.52766499468655004
	.quad	0x3fed24f622509e1c              # double 0.91076189710742339
	.quad	0x3fe6604b47b8c129              # double 0.69925464637893697
	.quad	0x3fe2c5d62a597765              # double 0.58664997359640536
	.quad	0x3fe6e7be24c77fb7              # double 0.71578890975432941
	.quad	0x3fe11d5dfac63db0              # double 0.53483485202189307
	.quad	0x3fce4e31c686b76c              # double 0.23676130479492075
	.quad	0x3fd2a2ff8517c25c              # double 0.29119861600250885
	.quad	0x3fd868275c0b62e0              # double 0.38135704029768469
	.quad	0x3fefae086c69f142              # double 0.98999425100877425
	.quad	0x3fd51ba0fda6454e              # double 0.32981133242090699
	.quad	0x3fe893322573f0b6              # double 0.76796824755685722
	.quad	0x3fe7ae2423b360ea              # double 0.74000746701042641
	.quad	0x3fdabb0a9fab8b98              # double 0.4176661071089085
	.quad	0x3f5e5f0b00e0a800              # double 0.0018537147002555265
	.quad	0x3fe1a40fcf328615              # double 0.55127706974252766
	.quad	0x3fe7f1c4cd65786a              # double 0.7482627879760575
	.quad	0x3fd749b4cecf15c2              # double 0.36387367435630946
	.quad	0x3f9785a3fe4e4560              # double 0.022970735928145358
	.quad	0x3fdaf2d458ac3f32              # double 0.42107113513428651
	.quad	0x3fdcd102a4c56f4a              # double 0.45025697794857378
	.quad	0x3fd457676e492e52              # double 0.31783471841911137
	.quad	0x3fec98ccc286aa33              # double 0.89365232461324806
	.quad	0x3fd001857f87f66e              # double 0.2500928635998666
	.quad	0x3fdf505b96368b46              # double 0.48927964848751448
	.quad	0x3fd7963ac47437f4              # double 0.3685442846771132
	.quad	0x3fe1397e227ec377              # double 0.53826815354669477
	.quad	0x3fe6697a205a1324              # double 0.70037561720582575
	.quad	0x3fea72a677aee70b              # double 0.82649539352061774
	.quad	0x3fe0aa8e7b959596              # double 0.52081989419518737
	.quad	0x3fe2bfb510009d2c              # double 0.58590176701992425
	.quad	0x3fdf249c02ec9290              # double 0.48660946164663077
	.quad	0x3fc7688a34ca2b08              # double 0.18287780358908656
	.quad	0x3febf22e9ad87054              # double 0.87331323855642972
	.quad	0x3fe8417a02649bff              # double 0.75799274890312052
	.quad	0x3faceac8f413c810              # double 0.056478767199124147
	.quad	0x3fc7d8df7ec39890              # double 0.18630593957567898
	.quad	0x3fd39aa11abd9cb4              # double 0.30631282435792717
	.quad	0x3fdbafe11d84552e              # double 0.43260982401382619
	.quad	0x3f8580fb803f7d40              # double 0.010499920703238019
	.quad	0x3fea90195cec9b56              # double 0.83009021901384972
	.quad	0x3feda049182105c9              # double 0.92581610405630343
	.quad	0x3fea8fec8809b396              # double 0.83006884164716399
	.quad	0x3fe578d642fcc56f              # double 0.67100060542558804
	.quad	0x3fcf38fb88a12420              # double 0.2439264695297263
	.quad	0x3feacfbc933c4cf5              # double 0.83785847432082383
	.quad	0x3feb885d80b320cf              # double 0.86039614807762088
	.quad	0x3fd3efb842bda96a              # double 0.31150633351958013
	.quad	0x3fc2257e1d996d80              # double 0.14176918454436915
	.quad	0x3fdf38104447b416              # double 0.48779684703805637
	.quad	0x3fa7049f3a5f1b10              # double 0.044957137942722381
	.quad	0x3fd7a7e334d8d236              # double 0.36962204132877063
	.quad	0x3fdf36f1fc8bc6a2              # double 0.48772859251685408
	.quad	0x3fe6d2a1308a7ed5              # double 0.7132116268221248
	.quad	0x3fcb116bb9595d2c              # double 0.21146914053199717
	.quad	0x3fcc5e1ea9b4b0e0              # double 0.22162230764786894
	.quad	0x3fed30d58b0923b0              # double 0.91221120028887093
	.quad	0x3fecbc6376884531              # double 0.89799664641228649
	.quad	0x3fed23141b41f74f              # double 0.91053204845204927
	.quad	0x3fe69f618d1c811d              # double 0.70695569573220818
	.quad	0x3fe3ed9883416fa8              # double 0.62275338779317213
	.quad	0x3fe3f7c9588581dc              # double 0.62399737634046515
	.quad	0x3fefe68d2c979523              # double 0.99689348897360152
	.quad	0x3fdd27b91bb02f5a              # double 0.45554950431755048
	.quad	0x3fd100d81207cd82              # double 0.26567651520527857
	.quad	0x3fd69a85798285c2              # double 0.35318123689839009
	.quad	0x3fe2c279df01a0ef              # double 0.58623975330286082
	.quad	0x3fe9f23ea0a7a059              # double 0.81082087877167475
	.quad	0x3fe5a430853b34e1              # double 0.67629266759618301
	.quad	0x3fd1d486fea4a3c2              # double 0.27859663836948922
	.quad	0x3fe07f21f0aa7c7c              # double 0.51551911358900737
	.quad	0x3fd462dafe077e14              # double 0.31853365714593562
	.quad	0x3fe7d0cc0ecb116f              # double 0.74423792733482041
	.quad	0x3f8b6916b99fdb40              # double 0.013384034671600653
	.quad	0x3fed9da5ef905a99              # double 0.92549416341610702
	.quad	0x3feada8c5222e916              # double 0.83917823831805793
	.quad	0x3fdd60b2489eb338              # double 0.45902688113965295
	.quad	0x3fecb9cb81a333e2              # double 0.89768004722429517
	.quad	0x3fea96ce56b4dbd5              # double 0.83090893683299305
	.quad	0x3fe79b5b247ad9c2              # double 0.73771435856797773
	.quad	0x3fd075a4d8d3b24e              # double 0.25718041586404616
	.quad	0x3f7a12d561d34200              # double 0.0063656172980732784
	.quad	0x3fc9b6af69b92790              # double 0.2008876100756507
	.quad	0x3fe384ab11cc8e9b              # double 0.60994485355736872
	.quad	0x3fd0d8c3aa3d6694              # double 0.26323024392113692
	.quad	0x3fece17b482405c8              # double 0.90252460565550852
	.quad	0x3fe0fbca69169776              # double 0.53073616528557355
	.quad	0x3fef6244c1dbe1bc              # double 0.98074567664212208
	.quad	0x3fca839c96ffc7f4              # double 0.20714146969800107
	.quad	0x3fe79f93a66e8f83              # double 0.73822958475328482
	.quad	0x3fe44ac8c60e92c6              # double 0.63412893946641513
	.quad	0x3fe561f60faebbcc              # double 0.66820815146444934
	.quad	0x3fd6a418fd2b41ce              # double 0.35376572345287804
	.quad	0x3fea1b779405c7b1              # double 0.81585291777286362
	.quad	0x3fd5f8785db63804              # double 0.3432904162553998
	.quad	0x3fe7f814f5d62494              # double 0.74903343214932016
	.quad	0x3fc73dc2d1dc59b0              # double 0.18157229659182184
	.quad	0x3fee43dcc07b28d0              # double 0.94578397363627609
	.quad	0x3fedfdd9e43d1475              # double 0.93723768785333894
	.quad	0x3feffa20ba5d64d9              # double 0.99928318404559057
	.quad	0x3fd33aeaef41b0ba              # double 0.30047105183508516
	.quad	0x3fc9cab9cc389690              # double 0.20149919959765272
	.quad	0x3fe143bfea6cee56              # double 0.53952022348625905
	.quad	0x3fefc825723eb0f7              # double 0.99318191827253954
	.quad	0x3f9e0de239af5e60              # double 0.029349837084593822
	.quad	0x3fdbb9218578b798              # double 0.43317449602442926
	.quad	0x3fdbd4d3a8f6e6e4              # double 0.4348649168056069
	.quad	0x3fe6455d5cdd3399              # double 0.69596737039101975
	.quad	0x3fece61e3f772f16              # double 0.90309059520356771
	.quad	0x3fd709560a2fc210              # double 0.35994482989102128
	.quad	0x3fe7ae9d28a438e8              # double 0.74006517350951828
	.quad	0x3fc83bb3ae890e7c              # double 0.18932195684657305
	.quad	0x3fe9025f69fbb7fa              # double 0.78153963756426426
	.quad	0x3fedade1b13a67e2              # double 0.92747578253624519
	.quad	0x3fe9d0fee602048d              # double 0.80676217006124917
	.quad	0x3fc63ddfc35ea4a8              # double 0.17376324691330081
	.quad	0x3fe60caafe8956a6              # double 0.68904638017803133
	.quad	0x3fe83771d2645eeb              # double 0.75676814167215178
	.quad	0x3fcd2743b4a3b588              # double 0.22776075668609175
	.quad	0x3fe2806f862ab881              # double 0.57817817882984468
	.quad	0x3fd1c33112831176              # double 0.27753855521975568
	.quad	0x3fe23e819b685fba              # double 0.57013016083782664
	.quad	0x3fc195ce5d9b8f88              # double 0.13738421984373539
	.quad	0x3fe8635ba996e462              # double 0.76212866900381138
	.quad	0x3fa202177749d9a0              # double 0.035172208129483851
	.quad	0x3fd3d7d615b4901e              # double 0.31004860038433601
	.quad	0x3fe244a28a705304              # double 0.5708782867319262
	.quad	0x3fe2153889e27c65              # double 0.56509043627364675
	.quad	0x3fef1de1538b014c              # double 0.97239748303403805
	.quad	0x3fcabb0b7594ca30              # double 0.20883315316457773
	.quad	0x3fa4cbc972fa6de0              # double 0.04061727074187238
	.quad	0x3fe66a6399c7e0cc              # double 0.70048694644267462
	.quad	0x3fdc5cea92a3c222              # double 0.443171160891355
	.quad	0x3f9aaac76d4a6cc0              # double 0.026042095227791107
	.quad	0x3fcdab1e72b27a14              # double 0.23178463554809581
	.quad	0x3fc50150eb5a3fd8              # double 0.16410266391585426
	.quad	0x3fccb4a996e80e4c              # double 0.22426338070373431
	.quad	0x3fc457eb407f034c              # double 0.1589330735132769
	.quad	0x3fd2f9528295ec4e              # double 0.29646742584708796
	.quad	0x3fdd8c06bbf5e05c              # double 0.46167152743828921
	.quad	0x3fd376e764bad742              # double 0.30413231694125298
	.quad	0x3fe08f6fa505b316              # double 0.51750929098997989
	.quad	0x3fe98daa978d3d0a              # double 0.79854325866645692
	.quad	0x3fb447d64aa2db10              # double 0.079221146795003472
	.quad	0x3fe191bc55737c99              # double 0.54903999986335628
	.quad	0x3fefa262eb3fbcc3              # double 0.98857255885186423
	.quad	0x3feb6e32836a5d4b              # double 0.85720182101332776
	.quad	0x3fdb44415bbfa5b8              # double 0.42604097328020485
	.quad	0x3fe5a884d1578997              # double 0.67682114493463785
	.quad	0x3fd3af29115a2fc2              # double 0.3075659436660737
	.quad	0x3fbc44a44c671b50              # double 0.11042239060689707
	.quad	0x3fec348bcf90f5a7              # double 0.88141432323725588
	.quad	0x3fe292c80e4f71a4              # double 0.58041765971170323
	.quad	0x3fcb244e9420a4dc              # double 0.21204550011433454
	.quad	0x3fece99120becb1a              # double 0.90351158519328867
	.quad	0x3fe0c9ffd16d0ae8              # double 0.52465811637406734
	.quad	0x3fc850f50ef9cdf4              # double 0.18997061949958971
	.quad	0x3fdcc5f43fa20ac4              # double 0.44958215917737854
	.quad	0x3fd46a1e9ce1677e              # double 0.31897702522621063
	.quad	0x3fe505fc73aeb47a              # double 0.65698073000170543
	.quad	0x3fc306fb3ae39958              # double 0.14865055442278208
	.quad	0x3fde36a20f0dce2c              # double 0.47208453626737668
	.quad	0x3fec5b1a50da66c9              # double 0.88612094680430531
	.quad	0x3fddf26cbe1cbf0a              # double 0.46792143407491038
	.quad	0x3fd46f5f03e608f2              # double 0.31929755573959462
	.quad	0x3fe57afbd0eaebf2              # double 0.67126265339118008
	.quad	0x3fe27765942dc267              # double 0.57707480374490394
	.quad	0x3fee9fb7a5d8639f              # double 0.95699674979833904
	.quad	0x3fe065b054a6a403              # double 0.51241318257700674
	.quad	0x3fdb1977e767a2dc              # double 0.42342946622970401
	.quad	0x3f94fccaeb8c0de0              # double 0.02049557745614361
	.quad	0x3fe1a44182b76c45              # double 0.55130076914373005
	.quad	0x3fca10f6c21b10a4              # double 0.20364269712275018
	.quad	0x3fdd8f4c389b0844              # double 0.46187119987383007
	.quad	0x3fd68ac670e6e7da              # double 0.3522201635893204
	.quad	0x3fda6ae4146459e0              # double 0.41277410499006173
	.quad	0x3fdb5068f09e82a6              # double 0.42678283212630175
	.quad	0x3fe96cf646a36682              # double 0.79455102726497295
	.quad	0x3fe8000931f8eaad              # double 0.75000438461514352
	.quad	0x3fe1c488ccd4509b              # double 0.55524101262792003
	.quad	0x3fe6eee8a39ce92a              # double 0.71666366534853876
	.quad	0x3fa4f7af6fd14120              # double 0.040952188872895201
	.quad	0x3fe12b2edf492c52              # double 0.53652137384905019
	.quad	0x3fdc5e0b57c21528              # double 0.44324000902300265
	.quad	0x3feffe33d6179d6d              # double 0.99978057684795162
	.quad	0x3fe66057d03156ec              # double 0.6992606226219471
	.quad	0x3fc397a199144b98              # double 0.15306491827558655
	.quad	0x3fe2a4c3c8bd88e2              # double 0.58261288840392589
	.quad	0x3fdb18c280cbdfa4              # double 0.42338621690532308
	.quad	0x3fdf47a4324aa706              # double 0.48874764357843536
	.quad	0x3fd818c1ef70e1de              # double 0.37651108153252533
	.quad	0x3fce863a5c0acc30              # double 0.23847131246802311
	.quad	0x3fd5650413f476f2              # double 0.33429052304005247
	.quad	0x3fc26ddabdc400f0              # double 0.14397749200725896
	.quad	0x3fe0e35c3bd414e2              # double 0.52775394139521503
	.quad	0x3fdd632b6f79a164              # double 0.45917783628694608
	.quad	0x3fdbe116b7454f84              # double 0.43561332604917191
	.quad	0x3fc7db58be797108              # double 0.18638142872340091
	.quad	0x3fe95f08b39d3288              # double 0.79285082894200887
	.quad	0x3fe4a4e84ad2e0a2              # double 0.64513029684077972
	.quad	0x3f86becaa7cee600              # double 0.011106093641376269
	.quad	0x3fc3539a4f8af4b0              # double 0.15098885425496666
	.quad	0x3fbf94b7758c6b48              # double 0.1233629858001396
	.quad	0x3fd94c4b5ddebd0c              # double 0.39528164069174987
	.quad	0x3fcf8e1a707f9174              # double 0.24652414792138766
	.quad	0x3fc9508e23845238              # double 0.19777085050795207
	.quad	0x3fde5426bbe524c6              # double 0.47388618802194704
	.quad	0x3fecb55143209d73              # double 0.89713347540684507
	.quad	0x3fe51f1419c042c9              # double 0.6600437643956748
	.quad	0x3fea09952907ae83              # double 0.81366975797341501
	.quad	0x3fedf2bc35f2753f              # double 0.93588076149504917
	.quad	0x3fe97f5672fd55d1              # double 0.79679415186790881
	.quad	0x3fe64a877ce27835              # double 0.69659780875713884
	.quad	0x3fd919003781b9ea              # double 0.39215093060093287
	.quad	0x3fcaafc099c84040              # double 0.20848853596590011
	.quad	0x3fe5d8ed92ca85f9              # double 0.6827304713262371
	.quad	0x3fe948b2346fb695              # double 0.7901240371845285
	.quad	0x3fdc9ea72ecb14ac              # double 0.44718341416985186
	.quad	0x3fc8c4ca91bafac0              # double 0.19350559344998963
	.quad	0x3fe1e17babb34906              # double 0.55877479109975137
	.quad	0x3fd27e7cdd8e6d3c              # double 0.28897019993174289
	.quad	0x3fef5911dc877290              # double 0.97962277481163262
	.quad	0x3fd300e2e951d718              # double 0.29692909989476979
	.quad	0x3fe7e1217e261c0f              # double 0.74623179090929337
	.quad	0x3fc97af47ab51830              # double 0.19906478873798639
	.quad	0x3fe55cac941e23f5              # double 0.66756276063199371
	.quad	0x3fd09ddb777f694e              # double 0.2596348444909794
	.quad	0x3fe15dd8c8cee805              # double 0.54270590992314338
	.quad	0x3fce1a0d266d62c4              # double 0.23517002464611469
	.quad	0x3fe82a38f749d64c              # double 0.75515411661644682
	.quad	0x3fe89fbff6418e0c              # double 0.76950071427239796
	.quad	0x3fd9a9b37188d696              # double 0.40098272406917468
	.quad	0x3feea5b42cf3c18b              # double 0.95772751598092165
	.quad	0x3fce1337f8908254              # double 0.23496150624216006
	.quad	0x3fe768233a2698d2              # double 0.73146211011478557
	.quad	0x3f9a97512c037060              # double 0.025967853843085087
	.quad	0x3fe0cbb9f0d8e1d8              # double 0.5248689369246291
	.quad	0x3fef7dad32650c4a              # double 0.9840913757583476
	.quad	0x3feca3115d9ec9df              # double 0.89490574155052716
	.quad	0x3fed10753dabce1b              # double 0.90825902981891049
	.quad	0x3fd9935cc20b7300              # double 0.39961928319625883
	.quad	0x3fe03c828dcd15a0              # double 0.50738647170571838
	.quad	0x3febfafb44d6f850              # double 0.87438739247569153
	.quad	0x3fc951bc49ca2484              # double 0.19780686953552984
	.quad	0x3fec5ed877f61f4d              # double 0.88657782964671983
	.quad	0x3f83e92e77996d00              # double 0.0097221021889510872
	.quad	0x3fe6b747771635fd              # double 0.70987294444211069
	.quad	0x3fe697e1fa93c383              # double 0.70604037228450556
	.quad	0x3fb690c7556b12f0              # double 0.088146646837298225
	.quad	0x3feb72a42d186f89              # double 0.85774430091577003
	.quad	0x3fcefc3b9e7585e0              # double 0.24207253682383989
	.quad	0x3feb38e4f45ed0df              # double 0.85069511154736321
	.quad	0x3f99cc7d2ceb9f80              # double 0.025194126002048289
	.quad	0x3fcec5258ab6e4d4              # double 0.24039143822827802
	.quad	0x3fc54723a6a254c8              # double 0.16623349796706166
	.quad	0x3fed758ab885104f              # double 0.92059837378520537
	.quad	0x3fe4cd8156e5815c              # double 0.65008608791326195
	.quad	0x3fed24aec4267e96              # double 0.91072786627406077
	.quad	0x3fe6b4de3798580e              # double 0.70957861765305252
	.quad	0x3fdadc5e8ea7c164              # double 0.41970027857953185
	.quad	0x3fec651e29e701de              # double 0.88734348472649649
	.quad	0x3febaa5f1d474b4d              # double 0.86454730719047179
	.quad	0x3fd61dc725920cce              # double 0.34556749981875334
	.quad	0x3fd50e7764a4f460              # double 0.32900795773077185
	.quad	0x3fe134615e5ecf3b              # double 0.53764408523281959
	.quad	0x3fed0d49bc04788c              # double 0.90787207338486686
	.quad	0x3fd6f637c619061a              # double 0.35877794595225654
	.quad	0x3fef8ec6c2f6261e              # double 0.9861787612764521
	.quad	0x3fe92683faf57c50              # double 0.78595160499015471
	.quad	0x3fd7c436472f6f72              # double 0.37135083152474302
	.quad	0x3fea57a3cb51425f              # double 0.82319822035249135
	.quad	0x3fe39431f7206536              # double 0.61184023157981104
	.quad	0x3fe21304831a092b              # double 0.56482148748208283
	.quad	0x3fe4d4f330f29b3f              # double 0.65099486885160462
	.quad	0x3fc49605835f0c84              # double 0.16082829393971931
	.quad	0x3fef450f265eafa6              # double 0.97718007558932096
	.quad	0x3fec9a86c05e3849              # double 0.89386308261760761
	.quad	0x3fdbaf893193ceb2              # double 0.43258886186161327
	.quad	0x3feb265ef1a37b8a              # double 0.84843394465484434
	.quad	0x3fed01db9d4f4f06              # double 0.90647679066248155
	.quad	0x3fd5f34c0ccd50d8              # double 0.34297467470356713
	.quad	0x3fefc058f1b6b12d              # double 0.99222991189666276
	.quad	0x3fe05115e5237602              # double 0.50989813569657394
	.quad	0x3feae3cd19821deb              # double 0.84030776006778518
	.quad	0x3fe189292e950985              # double 0.54799326990205144
	.quad	0x3fd9df5c04a4d6b6              # double 0.40425777867799739
	.quad	0x3fc3ec8c7688dd9c              # double 0.1556563929350262
	.quad	0x3fa46847088343f0              # double 0.039858073987154685
	.quad	0x3fc999114385b65c              # double 0.19998374745357494
	.quad	0x3fbe867c8f770868              # double 0.11923960211336893
	.quad	0x3fcad17baced99a8              # double 0.20951791709667344
	.quad	0x3fdcf16847870606              # double 0.4522343348035921
	.quad	0x3fe3583961a03335              # double 0.60451954906020566
	.quad	0x3fe83d83f62834fe              # double 0.75750921323347575
	.quad	0x3feea589ef678815              # double 0.95770737417865581
	.quad	0x3fee5c390b59aaae              # double 0.94875766960952546
	.quad	0x3fd0a739e482a74c              # double 0.26020667376962048
	.quad	0x3fe16393f5c81647              # double 0.5434055138036421
	.quad	0x3feeefe4d6e59406              # double 0.96678392383603362
	.quad	0x3fea1ff132795b61              # double 0.81639919145787243
	.quad	0x3fdd6d13dd8787e6              # double 0.45978256829960029
	.quad	0x3fd3d8d621169834              # double 0.31010964614177117
	.quad	0x3fe307f251fba4c5              # double 0.59472003948499064
	.quad	0x3fde1fa16abc0446              # double 0.47068057463917901
	.quad	0x3fe1239b0a31239e              # double 0.5355963896810072
	.quad	0x3fe6900eeff1b42f              # double 0.70508524765103242
	.quad	0x3fe7df4d48633b36              # double 0.74600853098113507
	.quad	0x3fdeb521886f397a              # double 0.47980535815886294
	.quad	0x3f9a59f69b9f8460              # double 0.02573380780075174
	.quad	0x3fec55faad2b9d2c              # double 0.88549550840699486
	.quad	0x3fed36b9a57abf3f              # double 0.91293031997881957
	.quad	0x3fd2b6c93c610796              # double 0.29240637680424564
	.quad	0x3fee9b0e31f13b05              # double 0.95642766718251038
	.quad	0x3fd2214ca6cd1640              # double 0.28328243531391095
	.quad	0x3fe94cac9fc8f17e              # double 0.79060965736384481
	.quad	0x3fc2cb4baf48faec              # double 0.14682909067956673
	.quad	0x3fa881cc46e68230              # double 0.047865279822194018
	.quad	0x3fdf610b0569c074              # double 0.49029803780195569
	.quad	0x3fe39eacd368bbe2              # double 0.61311951914637697
	.quad	0x3fef57765ea682b1              # double 0.97942656027233543
	.quad	0x3fe851cdadab29bd              # double 0.75998577041291748
	.quad	0x3fef7a7479c67051              # double 0.98369811805924645
	.quad	0x3fd898706e05146a              # double 0.38430414909482258
	.quad	0x3fe496d1b54396a7              # double 0.64341054347160742
	.quad	0x3fd582f74023d2e4              # double 0.33611851943650906
	.quad	0x3fee0e05b1ecfaec              # double 0.93921169997324005
	.quad	0x3fe2c01605b5e6c5              # double 0.58594800105421341
	.quad	0x3fdbf34a6f0f090a              # double 0.43672428937510743
	.quad	0x3f9d1b25b091e860              # double 0.028423870946859942
	.quad	0x3fdc5d7f25847bdc              # double 0.44320658363170451
	.quad	0x3fed65acfac49123              # double 0.91866158464521097
	.quad	0x3fb5dfe3a5f72b38              # double 0.085447528857156452
	.quad	0x3fe55b63f0238996              # double 0.66740605260956687
	.quad	0x3fea25d2c3823d2e              # double 0.81711710152914008
	.quad	0x3fefda9d5d6fb024              # double 0.99543636559747428
	.quad	0x3fdb9aada9214dca              # double 0.43131581799135843
	.quad	0x3fc0228c04b3a4dc              # double 0.12605428914620276
	.quad	0x3f92834b0e5cb9c0              # double 0.018078968764877024
	.quad	0x3fe7bcdbcd0e6bc3              # double 0.74180402803482826
	.quad	0x3fa99173807e6a80              # double 0.049937829432754377
	.quad	0x3fe0435df982ac00              # double 0.50822352154261807
	.quad	0x3fec368ffb7612e0              # double 0.88166045297165496
	.quad	0x3fc4c007f849a890              # double 0.16211032508301004
	.quad	0x3fe8ad9c9cf2f87c              # double 0.77119284299966706
	.quad	0x3fc8be272fa76034              # double 0.19330301119657778
	.quad	0x3fc835f5a647f808              # double 0.18914671534724925
	.quad	0x3fea542aa02de2b5              # double 0.8227742317677299
	.quad	0x3f7344c2fafc8e80              # double 0.0047042480871685166
	.quad	0x3fdca5f79c70062c              # double 0.44762983586415106
	.quad	0x3fec571448d14ab1              # double 0.88562978956391281
	.quad	0x3fda1b29120c31ce              # double 0.40790774118866302
	.quad	0x3fd966ffb748dc3c              # double 0.39691155337226625
	.quad	0x3fe0514b4e24e4e4              # double 0.50992360365412681
	.quad	0x3feaca9a958afebd              # double 0.83723191459281276
	.quad	0x3fed0f2a336b0548              # double 0.90810117762172471
	.quad	0x3fa09e69b85eb720              # double 0.03245859504327897
	.quad	0x3fdf01cd93fd8730              # double 0.48448504879171406
	.quad	0x3fe5f21c58468c99              # double 0.68580453149151588
	.quad	0x3fe248669794dde0              # double 0.57133798223270205
	.quad	0x3fe08fbd33d3d726              # double 0.51754627344664494
	.quad	0x3f90bfe7c7ce13c0              # double 0.016357060976151194
	.quad	0x3fe4a350385061a2              # double 0.64493571280313611
	.quad	0x3fe35473a6709207              # double 0.60405905254134573
	.quad	0x3fb64ecee360d070              # double 0.08714001704430685
	.quad	0x3fc1649d1ca89bd4              # double 0.13588298701617296
	.quad	0x3fadccc4a5eb5af0              # double 0.058202882055118255
	.quad	0x3fe01069dcfd5be8              # double 0.50200360452697357
	.quad	0x3fd91b3de2f528ce              # double 0.39228770412286174
	.quad	0x3feb4a41e07ea734              # double 0.85281461569431948
	.quad	0x3fe68e3334f0d6d3              # double 0.70485840167995162
	.quad	0x3fd7370564142c4c              # double 0.36273321889229204
	.quad	0x3feaff0995db78d0              # double 0.84363250035291948
	.quad	0x3fee80e38386bbd9              # double 0.95323348702174393
	.quad	0x3fe3f2b58e9000ce              # double 0.62337758869400672
	.quad	0x3fe30370c24ffb98              # double 0.59416997863432908
	.quad	0x3fe57021e8cd846f              # double 0.66993804425523062
	.quad	0x3fd140125a26e506              # double 0.26953562549495336
	.quad	0x3fbc8ac06e213700              # double 0.1114921826240014
	.quad	0x3fe4c4ede717eaf4              # double 0.64903922210154841
	.quad	0x3fdf58f0cf69f2ce              # double 0.48980350737819556
	.quad	0x3fe0cc2355d37ba0              # double 0.52491919291411548
	.quad	0x3fdbe07953e41fe4              # double 0.43557580177775734
	.quad	0x3fec8fe6a871ec48              # double 0.89256604098717052
	.quad	0x3fd9f738c5108a80              # double 0.40571421856490275
	.quad	0x3fed47dbf5081c25              # double 0.91502187593221562
	.quad	0x3fb0a13cb0072df8              # double 0.064960282302472083
	.quad	0x3fe4f7b22aa23765              # double 0.65523632361303596
	.quad	0x3fdae1554c7a82ec              # double 0.42000324696168323
	.quad	0x3fd32ce5febe4e64              # double 0.29961538197787818
	.quad	0x3fe8e06b0853c270              # double 0.77739478708651966
	.quad	0x3fc698d3c3b3f6e4              # double 0.17653891616639961
	.quad	0x3fe70f8f7fdbb8a2              # double 0.7206494805557393
	.quad	0x3fa66d08d0620330              # double 0.043800616681443194
	.quad	0x3fd111acdf95cb04              # double 0.26670381388173348
	.quad	0x3fcfc0b6f1d36248              # double 0.24806868369957358
	.quad	0x3fe4490f0fe6d88f              # double 0.6339183149891755
	.quad	0x3fdb6d1153b44000              # double 0.4285319631026141
	.quad	0x3fdd55f7cb764ca8              # double 0.45837206715914158
	.quad	0x3fd2f5a00dd44c74              # double 0.29624177313343769
	.quad	0x3fa600299fa7a200              # double 0.042969990481484643
	.quad	0x3fde354ce449dbdc              # double 0.47200319570350557
	.quad	0x3fe7e5996215a702              # double 0.74677724034447146
	.quad	0x3fb0a07e43b27320              # double 0.064948932197193887
	.quad	0x3fe4540c8f55d543              # double 0.63525989527867244
	.quad	0x3febcb365b9fb2d2              # double 0.86855619330671119
	.quad	0x3fe81cb8f85beb0f              # double 0.75350616939189929
	.quad	0x3fdddab84fe50d8e              # double 0.46647460748882785
	.quad	0x3fa0289dad2da540              # double 0.031559874906472718
	.quad	0x3fee142400c68d01              # double 0.93995857383234249
	.quad	0x3fcaf9739de2d7e4              # double 0.21073765954287105
	.quad	0x3fea730e5cb3d88d              # double 0.82654493432961973
	.quad	0x3fec22759a893c69              # double 0.8792064684183859
	.quad	0x3fea6dd0bc0be23d              # double 0.82590519645515992
	.quad	0x3fb5f422db77bfe0              # double 0.08575647218799487
	.quad	0x3fd801ac3ccce196              # double 0.37510209977656339
	.quad	0x3feb131d4f56eac6              # double 0.8460833119964597
	.quad	0x3fe40fb0f5a93a1c              # double 0.62691543560669372
	.quad	0x3fd33175bf75b712              # double 0.29989379594086174
	.quad	0x3fe3526657d9a065              # double 0.60380856664870619
	.quad	0x3fd76445ab0e772e              # double 0.36549512581574362
	.quad	0x3fe494e5fc612e91              # double 0.64317607205289751
	.quad	0x3f80fbca9d041800              # double 0.0082927540938833033
	.quad	0x3fd98d4665264ea6              # double 0.399247740534728
	.quad	0x3fed6cf0a5dd6beb              # double 0.91954834361547222
	.quad	0x3fa7e096d0849e40              # double 0.046635353998052853
	.quad	0x3fea096fa2b731c1              # double 0.81365186481848906
	.quad	0x3fc7607871660dfc              # double 0.18263154542010784
	.quad	0x3fe046aeb498b2ef              # double 0.50862822792768536
	.quad	0x3fb062c34afb2d90              # double 0.064007001691768872
	.quad	0x3fdaf5d9b0237844              # double 0.42125551415472651
	.quad	0x3fed609710091bda              # double 0.91804078227948627
	.quad	0x3fe921bfc260bd26              # double 0.7853697582667436
	.quad	0x3fe9a741a9e58a3c              # double 0.80166705305993657
	.quad	0x3fed10710985e59c              # double 0.90825702533691154
	.quad	0x3fc9efebfce134dc              # double 0.20263433311121204
	.quad	0x3fef043ce76e585a              # double 0.9692673225533881
	.quad	0x3fcd23dffb7a768c              # double 0.22765731600968697
	.quad	0x3fd24ce37471ab38              # double 0.28594290133939948
	.quad	0x3fb30527d23bc5a8              # double 0.074297417475256311
	.quad	0x3fb43b83c3e81aa0              # double 0.07903312237622595
	.quad	0x3fd63b0d0d62b566              # double 0.34735418612657154
	.quad	0x3fde9cca539ed7d8              # double 0.47831972280562018
	.quad	0x3fde39db144c5c7a              # double 0.47228123647932529
	.quad	0x3fce3c8b88a68804              # double 0.23622268841160132
	.quad	0x3fe64b020a489e1d              # double 0.6966562462666307
	.quad	0x3fe7ba8df058afc1              # double 0.74152275984442195
	.quad	0x3fc1f3ef49c1f508              # double 0.14025679685065762
	.quad	0x3fe100ab0439d891              # double 0.5313315470255181
	.quad	0x3fc080762bbb2408              # double 0.12892033706000938
	.quad	0x3fc1219d15dccb2c              # double 0.1338383061170928
	.quad	0x3fe6f2a7b4a0c9c9              # double 0.71712098387643508
	.quad	0x3fd71b646b781626              # double 0.36104689116504785
	.quad	0x3fef553e83de8352              # double 0.97915578609181808
	.quad	0x3fd751a9b6c22918              # double 0.36435931060317861
	.quad	0x3fe2daf32418ef6f              # double 0.58922726679109683
	.quad	0x3fbecc9fb1da7070              # double 0.12030981151696252
	.quad	0x3fb8654ec93630e0              # double 0.095295833705850707
	.quad	0x3fe5d29bfa9559e8              # double 0.68195914213248177
	.quad	0x3fe81d154f16f5d7              # double 0.75355019995884731
	.quad	0x3fec0122114e9f5f              # double 0.87513831501290074
	.quad	0x3f8d52316fa4a080              # double 0.014316927165580973
	.quad	0x3fe94a49f8cd2c6d              # double 0.7903184756663798
	.quad	0x3fd6c99e7b9fc228              # double 0.35605585167562248
	.quad	0x3fe966a543a5c04c              # double 0.79377997600932692
	.quad	0x3fdd0692abef34c8              # double 0.45352618017643609
	.quad	0x3fe9e364bfc0d4be              # double 0.80900800182157417
	.quad	0x3fecc066b7d201c8              # double 0.89848647978220075
	.quad	0x3fdc17c5168cb28e              # double 0.4389507980547841
	.quad	0x3feca2657e6f90b9              # double 0.89482378668301188
	.quad	0x3feb76bfaedc4f8d              # double 0.85824569847544441
	.quad	0x3fe75531c574356a              # double 0.72914970936987555
	.quad	0x3fd66dd3b0c44322              # double 0.35045330297821142
	.quad	0x3fce285c5d32e630              # double 0.23560671377872344
	.quad	0x3fbba984985ee828              # double 0.10805538864124797
	.quad	0x3fc367d395957d84              # double 0.15160603336242329
	.quad	0x3fe2c05c2288fc7f              # double 0.58598143334519637
	.quad	0x3fe432d0df1d34e1              # double 0.63120311333628021
	.quad	0x3fbde7ff0c18d3c8              # double 0.11682123227440322
	.quad	0x3fdec4e527150dc0              # double 0.48076752487778762
	.quad	0x3f9407c81f79ae60              # double 0.019560934945202724
	.quad	0x3fe7972fd6195835              # double 0.73720542732440342
	.quad	0x3fe6d746c157ac65              # double 0.71377885591699608
	.quad	0x3fef8ed963aec064              # double 0.98618764371168454
	.quad	0x3fd2747361a0d058              # double 0.28835758718492377
	.quad	0x3fd5570d14758584              # double 0.3334381770892707
	.quad	0x3fb9ea4de1494498              # double 0.10123144865180433
	.quad	0x3fedd6f2c75ce68a              # double 0.93248881280961027
	.quad	0x3fe89af98e78febe              # double 0.76891782595335889
	.quad	0x3fd655b710153ec2              # double 0.34898163385967618
	.quad	0x3feb510232259c8c              # double 0.85363874239273362
	.quad	0x3fb6c6037f1d3248              # double 0.088958948644355051
	.quad	0x3feaf61ca8b98fb2              # double 0.84254296258995098
	.quad	0x3fde8c01b8cd9aea              # double 0.47729533240491995
	.quad	0x3fe7232f8d4e86a4              # double 0.723045135488253
	.quad	0x3fe77c135746891c              # double 0.73389594121934776
	.quad	0x3fe62898de5cf1e1              # double 0.69245570593153272
	.quad	0x3fe2a251a8c6d6bc              # double 0.58231432880594225
	.quad	0x3fde952de24c44d8              # double 0.47785517787367615
	.quad	0x3fec9c665b258a1e              # double 0.89409177591398126
	.quad	0x3fbf93d8db7af2e0              # double 0.12334971769719116
	.quad	0x3fa0ed891784a3e0              # double 0.033062252159943517
	.quad	0x3fcb7f97c5a64514              # double 0.21483132506231384
	.quad	0x3fea40040cf3a89b              # double 0.82031443147322436
	.quad	0x3fd364aff107d77a              # double 0.30302046335361121
	.quad	0x3fd41bac07c7fd0a              # double 0.31418896446116718
	.quad	0x3fcc25f90a48c3a8              # double 0.21990883829269348
	.quad	0x3fe7dc83a7b73752              # double 0.74566824681253707
	.quad	0x3fb6e8f39fe266b8              # double 0.089492060217163494
	.quad	0x3fd4ba808e965f4c              # double 0.32388318943548167
	.quad	0x3fd5080674c03ef2              # double 0.3286148204942797
	.quad	0x3fda0a45ccd8318e              # double 0.40687699322077087
	.quad	0x3fe05e3c0022a741              # double 0.51150321985662839
	.quad	0x3fe50e6913d32777              # double 0.65800908920321788
	.quad	0x3fcf2cb15295e7e4              # double 0.24355141193865315
	.quad	0x3fdfb2a183f9d4e8              # double 0.49527776611587493
	.quad	0x3febd4f69b99e0ca              # double 0.8697464980205265
	.quad	0x3fd6d5c8f93486ae              # double 0.3567984040874802
	.quad	0x3fecae916a7cb8f5              # double 0.89630957411080081
	.quad	0x3fd78d1c569cae3c              # double 0.36798771341520697
	.quad	0x3fe9911174536941              # double 0.79895851821792274
	.quad	0x3f9e5fb1d1cf4740              # double 0.02966192095829645
	.quad	0x3febf3ce40752718              # double 0.87351143445377755
	.quad	0x3fd034780f47b748              # double 0.25320245258523189
	.quad	0x3fcb78d2b8d6ce20              # double 0.21462472939821087
	.quad	0x3fc37b46f7c4ad68              # double 0.15219962213573557
	.quad	0x3fe653386c5589ad              # double 0.69765874060640487
	.quad	0x3fe47ffe64915b93              # double 0.64062423364781507
	.quad	0x3fe99a885efd50f9              # double 0.80011385491027831
	.quad	0x3fcc9951c4a92538              # double 0.22342893698286459
	.quad	0x3fec2b0d995b180d              # double 0.88025550796806018
	.quad	0x3fa18314d131c3a0              # double 0.034203196083473886
	.quad	0x3fe8649ab6b3357f              # double 0.7622808044776973
	.quad	0x3fcf01a5e71cc74c              # double 0.24223779473100604
	.quad	0x3fe3918d16afdce7              # double 0.61151747160957093
	.quad	0x3fc36859995dac70              # double 0.15162200916833823
	.quad	0x3fbce114ef8c7b28              # double 0.11280947540624864
	.quad	0x3fe2cccb3b0e1760              # double 0.5874992516917068
	.quad	0x3fe06bec07d74da9              # double 0.5131740716118901
	.quad	0x3fbf7b32281e8278              # double 0.12297357062790037
	.quad	0x3fdfda74a908aae0              # double 0.497708478042723
	.quad	0x3fef26af5aac5834              # double 0.97347228726972057
	.quad	0x3fd8818645125062              # double 0.38290554757373318
	.quad	0x3fecaabed804f43d              # double 0.89584295455245633
	.quad	0x3fecddf14d5291d4              # double 0.90209260084207665
	.quad	0x3fda0061e3534052              # double 0.40627333831526358
	.quad	0x3fd0ca7339765e7e              # double 0.26235657321510775
	.quad	0x3febd3499be11f2b              # double 0.86954193539802327
	.quad	0x3fe60cb9a81d2777              # double 0.68905337176077708
	.quad	0x3fdfcb4d188ac7dc              # double 0.49678351780596386
	.quad	0x3fe2f97568cf2eb0              # double 0.59295149298255545
	.quad	0x3fd6bd1339f3cfc4              # double 0.35529022845662106
	.quad	0x3fe3c52912025d08              # double 0.61781743543079504
	.quad	0x3faecfed13252a80              # double 0.060180100047166896
	.quad	0x3fd2c32fb226c480              # double 0.29316322705842168
	.quad	0x3fc1ec81afab2bb4              # double 0.14003010823793505
	.quad	0x3fcbc1aafe327760              # double 0.21684777652711329
	.quad	0x3fe2c515cbc360cf              # double 0.58655824468135076
	.quad	0x3fe92af925369b16              # double 0.78649575489257262
	.quad	0x3fb96dd6e6a5f810              # double 0.099332267103790394
	.quad	0x3fe879411792ee49              # double 0.76480154613768392
	.quad	0x3fdeb71888a55588              # double 0.47992528290100056
	.quad	0x3feeac89c2058475              # double 0.95856178183397722
	.quad	0x3f9ed775ae6d9660              # double 0.030118788501019345
	.quad	0x3febeb51fff83ec7              # double 0.87247562402804923
	.quad	0x3fddd5a90af1c558              # double 0.46616579121390123
	.quad	0x3fd0d5256bc413f6              # double 0.26300941013351975
	.quad	0x3fed0d111fa97485              # double 0.9078450792691376
	.quad	0x3fc4602bd057b340              # double 0.15918491051652417
	.quad	0x3fef3a1123325b17              # double 0.97583824991565648
	.quad	0x3fdf774f55a5be54              # double 0.49165709842688909
	.quad	0x3fc992507080c7e0              # double 0.19977765553772908
	.quad	0x3fc4848e528f0608              # double 0.16029528647600011
	.quad	0x3fe10ce046f0e8a0              # double 0.53282178741143937
	.quad	0x3feb357e664fc45e              # double 0.85027999861462056
	.quad	0x3fdf1dbf8b280d2e              # double 0.48619068707940272
	.quad	0x3fb3b32a88a119f0              # double 0.076952608448756398
	.quad	0x3fe7c982c62eb1f7              # double 0.74334849078655807
	.quad	0x3face6ce9659e310              # double 0.056448417523773498
	.quad	0x3fd23a56341d3bba              # double 0.28481059159542677
	.quad	0x3fef95790d19866f              # double 0.98699619825874929
	.quad	0x3fe4eccb5bbc7a55              # double 0.65390556256518073
	.quad	0x3fdf72824eebf44c              # double 0.49136407572934071
	.quad	0x3fca4eb2acab309c              # double 0.20552667075242403
	.quad	0x3fef0e055b2c9dab              # double 0.97046153838612292
	.quad	0x3fd273849e122dc8              # double 0.2883006614362924
	.quad	0x3fe128e684e42077              # double 0.53624273257538746
	.quad	0x3fb234a90051bd28              # double 0.07111603029055813
	.quad	0x3fda9293630d17e2              # double 0.41519627259219594
	.quad	0x3fc31cc687c49484              # double 0.14931565884868203
	.quad	0x3fe48a1d5a617126              # double 0.64185969974963508
	.quad	0x3feacf76305fd98a              # double 0.83782491157653394
	.quad	0x3fe410e797cb3154              # double 0.62706355712138384
	.quad	0x3fab4fc96968e1d0              # double 0.053343099706072317
	.quad	0x3fc2ddc700ae675c              # double 0.14739310773148417
	.quad	0x3fc1b4e666ff34a0              # double 0.13833313016076421
	.quad	0x3feca21289e80518              # double 0.89478423056440004
	.quad	0x3fe0899b6ada4f89              # double 0.51679774160082659
	.quad	0x3fc0a469677a1d50              # double 0.13001744797314041
	.quad	0x3fe275c1dedff0cb              # double 0.57687467127063863
	.quad	0x3fa58406f2cdd240              # double 0.042022912158163894
	.quad	0x3fe085b45f2261ba              # double 0.51632135945242585
	.quad	0x3fe7e1e2b092898d              # double 0.74632391440199941
	.quad	0x3fec2cf0011886c6              # double 0.88048553670906737
	.quad	0x3fd9c25ea6f99bd4              # double 0.40248838716655411
	.quad	0x3fac3ad9949821e0              # double 0.055136489285420032
	.quad	0x3fe1aec47381e793              # double 0.55258390960738024
	.quad	0x3fcb08ef7522c814              # double 0.21121018619084053
	.quad	0x3fea3f86c3655104              # double 0.82025468981967764
	.quad	0x3fb418a0fd4740c8              # double 0.07850080665162118
	.quad	0x3fde72c028bb13ee              # double 0.47575382211317574
	.quad	0x3fe9a5aaf6ff9057              # double 0.80147312394957282
	.quad	0x3fdd1e2e9a5b21ac              # double 0.45496716569734974
	.quad	0x3fee1284b352e47a              # double 0.93976054214648674
	.quad	0x3fe4bf7f43889b46              # double 0.64837611379776017
	.quad	0x3fb9cee14dc8e720              # double 0.10081298970262909
	.quad	0x3fe27b680cd0aec6              # double 0.57756426337206146
	.quad	0x3fe268176d33428b              # double 0.57520648315592504
	.quad	0x3fd63e57866ba9c8              # double 0.3475550472927833
	.quad	0x3fe049f2f9188a82              # double 0.50902699138198693
	.quad	0x3fe7de34c26e9bec              # double 0.74587476706517242
	.quad	0x3fe5aabf6210d547              # double 0.67709321168391845
	.quad	0x3fe28a0673491234              # double 0.57934877888380365
	.quad	0x3fe4c745996c6913              # double 0.64932517972491366
	.quad	0x3fdc13b7522b91ba              # double 0.43870337509568069
	.quad	0x3fc7ed353c011988              # double 0.18692651204964883
	.quad	0x3fe61bf686050746              # double 0.69091345000945448
	.quad	0x3fe9a80ae34bbf2d              # double 0.80176300424316127
	.quad	0x3fea0b6423a01137              # double 0.81389052351054303
	.quad	0x3fd33991efc77866              # double 0.30038879791198381
	.quad	0x3fefe0717b7628fe              # double 0.99614786256395838
	.quad	0x3fd9bb9ec56ae4d4              # double 0.40207642821367284
	.quad	0x3fe6433113a84fc8              # double 0.69570211257313819
	.quad	0x3fe2a232adf93756              # double 0.58229955653380716
	.quad	0x3fb6cc84254bd640              # double 0.089058169465567438
	.quad	0x3fe3f66b7dbf0be4              # double 0.62383055267161724
	.quad	0x3feaaf2e464a6795              # double 0.83388437012330263
	.quad	0x3febce3145b2e76e              # double 0.86891997921996533
	.quad	0x3fe8c7dffa99c569              # double 0.77439879365389885
	.quad	0x3feaf2259945bd4b              # double 0.84205894409198245
	.quad	0x3fb090aea1a02820              # double 0.064707674464586251
	.quad	0x3fe530fe6881bee2              # double 0.66223068629730286
	.quad	0x3f7e2f3d735e9880              # double 0.0073692703644266944
	.quad	0x3fe4ded4c616f51a              # double 0.65220106782331588
	.quad	0x3fd401e9b733e21c              # double 0.31261675730596195
	.quad	0x3fe8ba3015a56efa              # double 0.77272800662782903
	.quad	0x3fdd0ca4154a638e              # double 0.45389654235037191
	.quad	0x3fa5259b74579830              # double 0.041302545501637034
	.quad	0x3fef38fd2b608755              # double 0.9757066580971051
	.quad	0x3fce25af44f63c10              # double 0.23552504412916209
	.quad	0x3fe709eb5c6bde4a              # double 0.71996086169287676
	.quad	0x3fefbe957211f481              # double 0.99201462058375977
	.quad	0x3fec4034d2786bc4              # double 0.88283768756388569
	.quad	0x3fe99fac0344258a              # double 0.80074120176247843
	.quad	0x3feb84f581677441              # double 0.85998034738771179
	.quad	0x3fd87a50fc69f6a0              # double 0.38246559762760945
	.quad	0x3fe0e2de82e69f90              # double 0.52769399229599578
	.quad	0x3fd90be86b35eee0              # double 0.39135179967682454
	.quad	0x3fe8c2ba235b8e82              # double 0.77377039819516846
	.quad	0x3f8c9018243a3a40              # double 0.013946713071416927
	.quad	0x3fc5948b8d1874a8              # double 0.16859573735647371
	.quad	0x3fecaf7752649add              # double 0.89641920177822565
	.quad	0x3fed13994b82fea2              # double 0.90864243267420286
	.quad	0x3fe10c353322781c              # double 0.53274021136508365
	.quad	0x3fee72a66f9f627d              # double 0.95149537850654975
	.quad	0x3fe21e457e97b2ac              # double 0.56619524693595258
	.quad	0x3f9c0383fed16700              # double 0.027357160976271722
	.quad	0x3feff3a3a72278c1              # double 0.99849112170684162
	.quad	0x3fec951ffe1228fb              # double 0.89320373175840417
	.quad	0x3fe4853535aaaaff              # double 0.64126072389385047
	.quad	0x3fe4c6fefc3250b6              # double 0.64929150826585302
	.quad	0x3fe753db8c82c39b              # double 0.72898652499690131
	.quad	0x3fc4ce83a98f832c              # double 0.16255231646848622
	.quad	0x3fcf50ec64c915b8              # double 0.24465708657423391
	.quad	0x3fefe246e9de64a2              # double 0.99637170484051674
	.quad	0x3fe64ec4e3b9ce15              # double 0.69711536863036605
	.quad	0x3fbc84d43c05f528              # double 0.11140181031619945
	.quad	0x3fcc21bb5144e004              # double 0.21977941005911827
	.quad	0x3fb910f6e98e7b20              # double 0.097915107746740392
	.quad	0x3fe9db2ea95bec5b              # double 0.80800564840263733
	.quad	0x3fe40120c65d84ee              # double 0.62513769858574419
	.quad	0x3fe22983ef0499ac              # double 0.56756779368588672
	.quad	0x3fc4bbcf7ae0c458              # double 0.1619815206518378
	.quad	0x3fc37527c08fcb90              # double 0.15201279547144653
	.quad	0x3fc01bdb562ea618              # double 0.12585012157551101
	.quad	0x3fe5668383a94de6              # double 0.66876388278109
	.quad	0x3fdbe3962db04960              # double 0.43576578580645808
	.quad	0x3fed61ad87331763              # double 0.91817356496970282
	.quad	0x3fef23bd4bd1ccb5              # double 0.97311272438527984
	.quad	0x3feb570be97b33e9              # double 0.85437579728897817
	.quad	0x3fde2942f96f1cee              # double 0.47126840933601855
	.quad	0x3fd21f3b822fd39c              # double 0.28315627778584385
	.quad	0x3fd8126c87acbd34              # double 0.37612450837601163
	.quad	0x3fd51a565bed7656              # double 0.32973250367453966
	.quad	0x3fc41fe67f5152cc              # double 0.15722352234538162
	.quad	0x3fe27eec8093f62f              # double 0.57799363243947777
	.quad	0x3fef337d2ce9dd67              # double 0.97503527424025271
	.quad	0x3feae9dedeb94a0e              # double 0.84104865551700114
	.quad	0x3fe39b4b290d1f84              # double 0.61270673768829953
	.quad	0x3feb973de6ad847f              # double 0.86221213392504115
	.quad	0x3fd10f346c897552              # double 0.26655302619277166
	.quad	0x3fe9e3ee419db678              # double 0.80907357040059846
	.quad	0x3fd73f3ceb2f93d0              # double 0.36323473899238667
	.quad	0x3fdb1bbd19e60350              # double 0.42356803445004676
	.quad	0x3fb0ff05c82d1be8              # double 0.066391335841316512
	.quad	0x3fe31152e45071e3              # double 0.59586472122788015
	.quad	0x3fd95542ca51f22e              # double 0.39582891233274864
	.quad	0x3fbf98e842e78c78              # double 0.12342692979250269
	.quad	0x3fd072c15e37efb2              # double 0.25700411034608373
	.quad	0x3fd9f048934c8cf0              # double 0.40529074082060301
	.quad	0x3fca52b50e973bdc              # double 0.20564902508200944
	.quad	0x3fc15b8ff248cdc0              # double 0.13560675936024147
	.quad	0x3fe0fc8357f1b4ea              # double 0.53082434822650026
	.quad	0x3fec41015db30a33              # double 0.88293522167834337
	.quad	0x3fdfb0b94b1dc35e              # double 0.49516136489460461
	.quad	0x3fe6cc2ecd8dd0d7              # double 0.71242466113337855
	.quad	0x3fe116cdd4c1c81e              # double 0.53403369478315077
	.quad	0x3fee6f4eecc9cbb4              # double 0.95108743903835213
	.quad	0x3fc1b07579cf4dac              # double 0.1381975979589759
	.quad	0x3fdd4bdd0fe6eec4              # double 0.45775534203469825
	.quad	0x3fee12b2302059ca              # double 0.93978223228150992
	.quad	0x3fc25af11cbbe548              # double 0.14340032485032794
	.quad	0x3fd97a92b0ba7398              # double 0.3981062627661287
	.quad	0x3fdba0caf2f6561a              # double 0.43168901182920794
	.quad	0x3fe8f61da59f86f1              # double 0.78004343364975004
	.quad	0x3feabb430a53cbe4              # double 0.8353591157632505
	.quad	0x3fe1b6939fa62aea              # double 0.55353718930686324
	.quad	0x3fee7b1d0db55d9b              # double 0.95252850224908359
	.quad	0x3fe51f2d219bfd90              # double 0.66005569996188918
	.quad	0x3f9db743c57a68a0              # double 0.029019411972151077
	.quad	0x3fea6e2db16a141c              # double 0.8259495225071336
	.quad	0x3fe69236622472ff              # double 0.70534819763597045
	.quad	0x3fdea0f4d2778992              # double 0.47857399514591592
	.quad	0x3fe406b10d69754b              # double 0.62581684703369811
	.quad	0x3fe177ac3b8a3265              # double 0.54585849408028919
	.quad	0x3feb7882b0eebdad              # double 0.85846075589318149
	.quad	0x3fe8e092c646d500              # double 0.77741373754420806
	.quad	0x3fea97075b19ef91              # double 0.83093612473702383
	.quad	0x3fe181b2357a256a              # double 0.54708204693558327
	.quad	0x3fcdc891b3b1281c              # double 0.23268338464760141
	.quad	0x3fb433b94aebd2e8              # double 0.078914242545419122
	.quad	0x3fe3ca862a56a5dd              # double 0.61847217816574196
	.quad	0x3fd3a76937a861c2              # double 0.30709295687986693
	.quad	0x3fd2e8a1fde125e2              # double 0.29544877808493031
	.quad	0x3fef27fd2d26a53c              # double 0.97363146608873973
	.quad	0x3fd4f5db782fe302              # double 0.32750593888299318
	.quad	0x3fd08cf2e3580816              # double 0.25860283090162406
	.quad	0x3fe938cfe177e858              # double 0.78818506275934919
	.quad	0x3f80adc14da73a80              # double 0.0081439115355383951
	.quad	0x3fe0b02423e7f08b              # double 0.52150160801785839
	.quad	0x3fe2ff69d4e2dd9a              # double 0.59367839412054768
	.quad	0x3fb6d98ca2b4c3a0              # double 0.089257039759799373
	.quad	0x3fe92a5c3c6cc36c              # double 0.78642093469362128
	.quad	0x3fe5332b572865cf              # double 0.6624962522793626
	.quad	0x3fce73dbc94357cc              # double 0.23791072203920149
	.quad	0x3fe632fbe2dc5e8f              # double 0.6937236243129109
	.quad	0x3fdea2c775ddc57e              # double 0.47868525038128229
	.quad	0x3fcdb3f081781abc              # double 0.23205381700264194
	.quad	0x3fa16bbc06709910              # double 0.034025073801148165
	.quad	0x3fe1bcaea5b4e80d              # double 0.55428249706824462
	.quad	0x3fe6681d33ffa1c9              # double 0.7002092376324579
	.quad	0x3fe4b150f36a6291              # double 0.64664504568198045
	.quad	0x3fe40a0092b6078b              # double 0.62622097639563046
	.quad	0x3fe13e1f9c55967b              # double 0.53883343252228089
	.quad	0x3fe3b3968706ada3              # double 0.61567236301691641
	.quad	0x3fa38e1eb85de6c0              # double 0.038193664556229745
	.quad	0x3f9890e7050845c0              # double 0.023990258867405023
	.quad	0x3fe6678aeafb8026              # double 0.70013948340420451
	.quad	0x3f8a27b0f2e4d600              # double 0.012771017468007351
	.quad	0x3fe74037de08a24f              # double 0.72658913961374505
	.quad	0x3fcd8732be4b22d0              # double 0.23068842212366869
	.quad	0x3fe003e865b9b92b              # double 0.50047702663667815
	.quad	0x3fcb25e44713cdd0              # double 0.21209386320661716
	.quad	0x3fa63bd3cae5df20              # double 0.043425196187796056
	.quad	0x3fedd274f4d88b44              # double 0.93194053479633298
	.quad	0x3feb14bac440e130              # double 0.84628046351193653
	.quad	0x3febb163eb4e4361              # double 0.8654040904822119
	.quad	0x3fe283f379b1798c              # double 0.57860730903830548
	.quad	0x3fe5bdc90b668999              # double 0.67941715456645391
	.quad	0x3fed35fedd719a4e              # double 0.91284125567183039
	.quad	0x3fdf24275f13db76              # double 0.48658165249746987
	.quad	0x3fe0a1e4d7a0c5e2              # double 0.51976244082305478
	.quad	0x3fe3319f7e7bda18              # double 0.59980749801508448
	.quad	0x3fe5694abf352db1              # double 0.66910302491435492
	.quad	0x3fed08f816dca467              # double 0.90734486069881093
	.quad	0x3fd8a4a23e8f1882              # double 0.38504844769739333
	.quad	0x3fca70144ddc2c30              # double 0.20654538919220178
	.quad	0x3feb896d222912f6              # double 0.86052567169153238
	.quad	0x3f980fc9fe95a3c0              # double 0.023497730411154327
	.quad	0x3feaaf1745a02b62              # double 0.8338734016300402
	.quad	0x3fee27445c28d22f              # double 0.94229333877462362
	.quad	0x3fdd85f476a95cea              # double 0.46130096042675339
	.quad	0x3fef10e418dae29b              # double 0.97081189016815316
	.quad	0x3fed1f19eed1b25b              # double 0.9100465454517449
	.quad	0x3fe2da082b755698              # double 0.58911522376975523
	.quad	0x3fe03be773d21478              # double 0.50731251355376994
	.quad	0x3fe1a876dfc8542f              # double 0.55181449611212041
	.quad	0x3fe538128d9feccf              # double 0.66309478436542146
	.quad	0x3fe9fab23493d624              # double 0.81185255307235992
	.quad	0x3fb3602955e3d8f0              # double 0.075686057538266515
	.quad	0x3fe0c4c68ce34b25              # double 0.52402045743142323
	.quad	0x3fe08a0247e856d6              # double 0.51684679073761219
	.quad	0x3fe163397a6cb9e7              # double 0.54336236868931287
	.quad	0x3fddb4cff7455dda              # double 0.4641609110599042
	.quad	0x3fed5619ebedcbca              # double 0.91676040725575914
	.quad	0x3fd0d990995ea80e              # double 0.26327910401835275
	.quad	0x3fea727fad949f2d              # double 0.82647689726306839
	.quad	0x3fe4b5f3b8ae3ec4              # double 0.64721094198645135
	.quad	0x3fb8e850dad12090              # double 0.097294858381362425
	.quad	0x3fc0e6fdd7f9fd84              # double 0.13204930349091282
	.quad	0x3fe6b809ec2f7473              # double 0.70996566896395874
	.quad	0x3fc4bd44d98762a0              # double 0.16202602979207814
	.quad	0x3fe1cf2fe7df1148              # double 0.55654139792799473
	.quad	0x3fcc2ed12c69249c              # double 0.22017874401561677
	.quad	0x3fef7f42f613e619              # double 0.98428485929543108
	.quad	0x3fd73cf773257c1e              # double 0.36309610600250319
	.quad	0x3fc7d6cdb642f708              # double 0.18624278449527076
	.quad	0x3fde077926116e56              # double 0.46920613019549273
	.quad	0x3febd02985dc3984              # double 0.86916042465763654
	.quad	0x3fda8bcd54de3492              # double 0.41478284156694045
	.quad	0x3fee4d1962dc77a6              # double 0.94691151913479099
	.quad	0x3fe4852323c2b46f              # double 0.64125210747228134
	.quad	0x3fba1c05b1a92040              # double 0.10199008548181698
	.quad	0x3fe703033f706db3              # double 0.7191177596136441
	.quad	0x3fa33103e53a15e0              # double 0.037483331424521316
	.quad	0x3fa1502fbcf7bf40              # double 0.033814899270395049
	.quad	0x3fc2078dac021f24              # double 0.14085551165430232
	.quad	0x3fe9535e3d13fe1a              # double 0.79142677239719039
	.quad	0x3feb089f036f45bb              # double 0.8448023860057029
	.quad	0x3fc5893ac20753c4              # double 0.1682504126935368
	.quad	0x3fea5a9c68964e41              # double 0.82356090953039296
	.quad	0x3fe5f98cee7ceef2              # double 0.68671270923320393
	.quad	0x3fe8736cfc75aff7              # double 0.76409005459345181
	.quad	0x3feddef2573ca455              # double 0.93346516645864119
	.quad	0x3fe5faf9c5d8ff79              # double 0.68688667909735479
	.quad	0x3feb240a89145dcf              # double 0.84814955495215283
	.quad	0x3fefb32a1f760a17              # double 0.99062067169899392
	.quad	0x3fe55764cd19e6fe              # double 0.66691818293404004
	.quad	0x3fc2654dc0330654              # double 0.143716544005701
	.quad	0x3fddd3ba94fdd6a0              # double 0.46604790258366258
	.quad	0x3fe202b82199406b              # double 0.56283194124445168
	.quad	0x3fe048390329c1fb              # double 0.50881624810978054
	.quad	0x3fe00c0c4b69b8c8              # double 0.50147070626351198
	.quad	0x3fe6f6fc331e7d1a              # double 0.71764955505560413
	.quad	0x3fd8421c805e56f2              # double 0.37903511558520997
	.quad	0x3fedd093d7a89500              # double 0.93171112175755866
	.quad	0x3fedba7e591f4462              # double 0.92901532560985012
	.quad	0x3fd555457aa192d2              # double 0.33332955337236314
	.quad	0x3fe28a2b645c9420              # double 0.57936639406091572
	.quad	0x3fc3742aba5cde24              # double 0.151982632634586
	.quad	0x3fdc97d28419d1c6              # double 0.44676649952387171
	.quad	0x3fa8715c48d23d50              # double 0.047739871873199946
	.quad	0x3fb71afbcf5f0c10              # double 0.09025548756385171
	.quad	0x3fe45e6292a54c9c              # double 0.63652161256540607
	.quad	0x3fdfd312812b3240              # double 0.49725782980093314
	.quad	0x3fcbb2dc4df772c4              # double 0.21639589125597614
	.quad	0x3f900cc6e75a0620              # double 0.015673740263542624
	.quad	0x3fd0da2cd05e0090              # double 0.26331634853705399
	.quad	0x3fc771b8dc9150b8              # double 0.18315802354721256
	.quad	0x3fe2130f5c16beba              # double 0.56482666002371862
	.quad	0x3fe2038465dfa175              # double 0.56292934319667032
	.quad	0x3fe3f85fa235c953              # double 0.6240690391698912
	.quad	0x3feadafe2683b041              # double 0.83923251650185915
	.quad	0x3fdddbd9ef3d6c2e              # double 0.46654365885996441
	.quad	0x3fd63bcfa7ac71d0              # double 0.34740058302284371
	.quad	0x3fe423bfaf868a64              # double 0.62936386377652953
	.quad	0x3fe9adb8ef8351d1              # double 0.80245634822727585
	.quad	0x3fdc90afd273569e              # double 0.44633098174868191
	.quad	0x3fb58237d0bb1cc8              # double 0.084018219432539287
	.quad	0x3fe35240d6fa4a25              # double 0.60379068363028365
	.quad	0x3fe566a5898744df              # double 0.66878010617270067
	.quad	0x3fecdaa01cf64b7f              # double 0.90168767601640798
	.quad	0x3fe1ed3c1349fea1              # double 0.56020931022063192
	.quad	0x3fc4c3a071779784              # double 0.16222005405796491
	.quad	0x3fd005a3e6d6a510              # double 0.25034425299470886
	.quad	0x3fd547d2a682ba64              # double 0.33250871907049473
	.quad	0x3fd87cb68ab48670              # double 0.38261188073565844
	.quad	0x3fd9daff0bd46a30              # double 0.40399147181747974
	.quad	0x3fe812372411b665              # double 0.75222355885280179
	.quad	0x3f9ed62e51993d40              # double 0.030113910417921774
	.quad	0x3f9fce5adcd4b9c0              # double 0.031060619095279796
	.quad	0x3fe30f6c777cd635              # double 0.59563277566366557
	.quad	0x3fe754b1f1a783d7              # double 0.72908875654331495
	.quad	0x3fd97a90327368f4              # double 0.39810566832387839
	.quad	0x3fd55cf150c786ce              # double 0.33379776848424292
	.quad	0x3fb3b316a4e44f48              # double 0.076951422936244573
	.quad	0x3fddd7f11b0008f6              # double 0.46630504261715033
	.quad	0x3feff9e8e8744b12              # double 0.99925656701302246
	.quad	0x3fd6a967115f6dd6              # double 0.35408951469955008
	.quad	0x3fe3ad7bb0de615e              # double 0.61492714447653518
	.quad	0x3fed980364bc7036              # double 0.92480630564705879
	.quad	0x3fd34d22732076a4              # double 0.30158292048313684
	.quad	0x3fd8af246684a50a              # double 0.38568983089005882
	.quad	0x3fe1d7251f9999c6              # double 0.55751281902194516
	.quad	0x3fee399aa1d7318f              # double 0.94453174218647173
	.quad	0x3fdbaced50ba7094              # double 0.43242962726231693
	.quad	0x3fe2453fbe97da1e              # double 0.57095324731091401
	.quad	0x3feeb5836ad1f193              # double 0.95965739119815152
	.quad	0x3febf8a95eb555e1              # double 0.87410419938776951
	.quad	0x3fd2ca538d1a0a14              # double 0.29359902171577912
	.quad	0x3feeddf7e87d4a7b              # double 0.96459575088586235
	.quad	0x3febadafd44fb449              # double 0.86495200602588185
	.quad	0x3fdc2f7ad8b3dce4              # double 0.44039794123041376
	.quad	0x3fe7ff6bd52849de              # double 0.74992934829998226
	.quad	0x3fd25978a344b42a              # double 0.28671089119126469
	.quad	0x3fe9808d191aee55              # double 0.79694228080138407
	.quad	0x3fd481bc63c14964              # double 0.32041845075322883
	.quad	0x3fcc1c3000d2251c              # double 0.21961021461564989
	.quad	0x3febd71ae2fd06a4              # double 0.87000793775242302
	.quad	0x3fe7b02dc1c0d854              # double 0.74025619356576522
	.quad	0x3fefe8053aab3685              # double 0.99707280596494796
	.quad	0x3fd2c2dcdede70a6              # double 0.29314347996274603
	.quad	0x3fbb42b732df2c90              # double 0.10648674957262672
	.quad	0x3fe6fe67d99ff153              # double 0.71855537896002841
	.quad	0x3fe0f9626d6b2c66              # double 0.53044244166211452
	.quad	0x3fc5d1d2fb34ed5c              # double 0.17046582475618777
	.quad	0x3fa2fb167f950ac0              # double 0.037071898530958602
	.quad	0x3fe12c8fea86cbb3              # double 0.53668971830335577
	.quad	0x3fe20aa3e9947fef              # double 0.5637988626585847
	.quad	0x3fdf63c29333e742              # double 0.49046387076633746
	.quad	0x3fe2c8e99e7e8a63              # double 0.58702546077649875
	.quad	0x3fcb71b4d926818c              # double 0.21440754511878557
	.quad	0x3fea344629009931              # double 0.8188811112238793
	.quad	0x3fe09421e5150ab2              # double 0.51808256857505897
	.quad	0x3fecfe17237f3495              # double 0.90601689274775998
	.quad	0x3faa33f743b98f90              # double 0.051177718178933351
	.quad	0x3fefe7a88a695e52              # double 0.99702860864176501
	.quad	0x3fe8716038aeeed7              # double 0.76383982726062072
	.quad	0x3fe75711633f582e              # double 0.72937840828195077
	.quad	0x3fc2ebdda418f284              # double 0.14782305252619576
	.quad	0x3febd258c73f3998              # double 0.86942709842132881
	.quad	0x3fe9931aba7dc087              # double 0.7992070810705777
	.quad	0x3fd4479df9874ff8              # double 0.31687116020225359
	.quad	0x3feca45a2ae1d7df              # double 0.89506252646856044
	.quad	0x3feecf9d9f85dead              # double 0.9628437152559478
	.quad	0x3fe99f8628dc73ac              # double 0.80072315197650345
	.quad	0x3fe134591840518a              # double 0.53764013992854243
	.quad	0x3fec80b356fa4e52              # double 0.89071051586001659
	.quad	0x3fb88b05cde821b8              # double 0.09587131764431589
	.quad	0x3fe2f796d3f6cf1b              # double 0.59272328757512882
	.quad	0x3fc448adfbc0de28              # double 0.15846800606389988
	.quad	0x3fefe780a34eab55              # double 0.99700958152730356
	.quad	0x3fb62095cfe871b8              # double 0.086434710749421551
	.quad	0x3fc782f5fbf76de0              # double 0.18368410876324415
	.quad	0x3fe222ae825ba934              # double 0.56673360310131793
	.quad	0x3fb8e18cd5150b08              # double 0.097191621801396733
	.quad	0x3fe7e92f8e0cbf9a              # double 0.74721505874730387
	.quad	0x3fe25057784a9738              # double 0.57230733389290034
	.quad	0x3fe514353b717b1c              # double 0.65871678934113076
	.quad	0x3fcaa9c7ef8a7f7c              # double 0.20830630489671964
	.quad	0x3fe04ab5ce81a304              # double 0.50911989529876722
	.quad	0x3fd0383053bce7f0              # double 0.25342949082880661
	.quad	0x3fe375bee84189cb              # double 0.60812325823308677
	.quad	0x3fe06204ce4eac96              # double 0.51196518225096344
	.quad	0x3fe33aac92caf71a              # double 0.60091236753916921
	.quad	0x3fc7e9545046d7e4              # double 0.1868081466652135
	.quad	0x3fe3b13defcd3d61              # double 0.61538597904465686
	.quad	0x3fe12c08fbc39994              # double 0.53662537739437477
	.quad	0x3fc7295b4e1e06f8              # double 0.18094960512467373
	.quad	0x3feac448adcb754d              # double 0.83646043724335473
	.quad	0x3fbef1af7ffb1ef0              # double 0.12087532877478302
	.quad	0x3fd5a25ee4fcf6d8              # double 0.33803531992076108
	.quad	0x3feecd05c2a203d2              # double 0.96252716078026368
	.quad	0x3fec243e66fba98d              # double 0.8794242869746981
	.quad	0x3fe93dc81ed636c0              # double 0.78879171393210612
	.quad	0x3fef4f50858dc2ea              # double 0.97843195042341091
	.quad	0x3fdf734ceae79198              # double 0.49141238155268629
	.quad	0x3fc27ded62edc95c              # double 0.14446799593458592
	.quad	0x3fe462771e76918b              # double 0.63701969098888023
	.quad	0x3feeb76f8e577c45              # double 0.959892061244212
	.quad	0x3fea67940bf50313              # double 0.82514383635870769
	.quad	0x3fe7622e631d32d0              # double 0.73073500974859407
	.quad	0x3fbebf40beee44e8              # double 0.12010578786272996
	.quad	0x3fedfb1201dd8def              # double 0.93689823498101343
	.quad	0x3fdbbf18a5df838c              # double 0.43353859137101192
	.quad	0x3fe766ff7c9f936c              # double 0.73132299747940754
	.quad	0x3fe3228c29b1eb09              # double 0.59796722549012415
	.quad	0x3fdb4bb4eb22b040              # double 0.42649577104998926
	.quad	0x3f90977926fda3a0              # double 0.016202824597175813
	.quad	0x3fe61cccad2bbd84              # double 0.69101556608613679
	.quad	0x3fbc6e313623e8c0              # double 0.11105640002998296
	.quad	0x3fe37a7c1583d021              # double 0.60870174600723115
	.quad	0x3fbca4f368698b18              # double 0.11189194964530846
	.quad	0x3fe53838596ba7fb              # double 0.66311280693957941
	.quad	0x3fd9a60253c3b32a              # double 0.40075739078638384
	.quad	0x3fe406f12b8c5b6d              # double 0.62584742074510091
	.quad	0x3fc91a57f6d9ce44              # double 0.1961164431883039
	.quad	0x3fec915067f19620              # double 0.89273853589537921
	.quad	0x3fdf2979ecac2674              # double 0.4869065104727277
	.quad	0x3fe38c5bac728117              # double 0.61088355713949027
	.quad	0x3fe9d3bf2061bde0              # double 0.80709797215052603
	.quad	0x3fed4db3d9892769              # double 0.91573517310574204
	.quad	0x3fd4e7c6c1aa8e90              # double 0.32664650833815134
	.quad	0x3fef044616425552              # double 0.96927170131190565
	.quad	0x3fe90570973f3df2              # double 0.78191403904378221
	.quad	0x3fc3b457e0ceba0c              # double 0.15394113995485303
	.quad	0x3fe640d6d595513f              # double 0.69541494098169909
	.quad	0x3fd63334bd057bc4              # double 0.34687536677477859
	.quad	0x3fe61307fbb1326f              # double 0.68982314261081779
	.quad	0x3fc88d6d6a06fef8              # double 0.19181602170100809
	.quad	0x3f96b6cb84bfe140              # double 0.022181682565105776
	.quad	0x3f8b570c641cb8c0              # double 0.013349625401670173
	.quad	0x3fd192ad9457029a              # double 0.27457751737896674
	.quad	0x3f618a500b1fd200              # double 0.0021411479328838912
	.quad	0x3fe500b3224773d1              # double 0.65633541770113812
	.quad	0x3fe0b9c66cfcedf7              # double 0.52267762457580502
	.quad	0x3febefcc506a9e40              # double 0.87302222925513462
	.quad	0x3fefa011c0fed120              # double 0.98828971571359502
	.quad	0x3fe047712d7dc911              # double 0.50872095952061802
	.quad	0x3fd7e05400d4ffca              # double 0.37306690293553102
	.quad	0x3fe12b7e08377fb0              # double 0.53655912022440155
	.quad	0x3fbf9db5702838a8              # double 0.12350019443713001
	.quad	0x3fd84c4965eccbb0              # double 0.37965617135631202
	.quad	0x3fe0cca1010f6703              # double 0.52497911650718299
	.quad	0x3feefc23b2d1bafd              # double 0.96827874112736334
	.quad	0x3fbb0ebb9dbf1898              # double 0.10569355584365991
	.quad	0x3fea7e31c9836215              # double 0.82790459974336505
	.quad	0x3fc33b95e65db5cc              # double 0.15025590656607191
	.quad	0x3fe93364d7480200              # double 0.78752367064595319
	.quad	0x3feddecfbfe6f310              # double 0.93344867211235005
	.quad	0x3fd805ee7907fdb4              # double 0.37536203212217889
	.quad	0x3fdc71e47c13ce54              # double 0.4444514476483381
	.quad	0x3fed4c8272005efd              # double 0.91558954492481315
	.quad	0x3fc741ecc49f44d4              # double 0.18169936752977967
	.quad	0x3fe6b1c83eec2d29              # double 0.7092019299465494
	.quad	0x3fd1cc81442bb0c0              # double 0.27810699136058403
	.quad	0x3fbc393ba5c6e330              # double 0.11024830624854753
	.quad	0x3fdb110221d5ce5a              # double 0.42291310600487508
	.quad	0x3fd8c757f0d171a0              # double 0.38716696278950202
	.quad	0x3fc5bc0f1ab670ac              # double 0.16980160526589338
	.quad	0x3fef5e7f23ebe979              # double 0.98028523460315775
	.quad	0x3feb8a73a9af1dbf              # double 0.8606508554593616
	.quad	0x3fe5d51fa75ffad0              # double 0.68226607027448871
	.quad	0x3fdabd0f7f54cf18              # double 0.4177893393964367
	.quad	0x3fe8fc918111abd6              # double 0.78083110054773885
	.quad	0x3fe49989d016eeae              # double 0.64374247210021962
	.quad	0x3fd9c002fabc7b26              # double 0.40234446035349192
	.quad	0x3fe6c140ef60d630              # double 0.71109053376739517
	.quad	0x3fa8956217ded450              # double 0.048014703191633701
	.quad	0x3fefce81b8cb093f              # double 0.99395834057239784
	.quad	0x3fb39a406bb26a50              # double 0.07657244328803725
	.quad	0x3fc18123dfb57624              # double 0.13675354407580287
	.quad	0x3feda766d4f3817f              # double 0.92668477623014656
	.quad	0x3fdcc783c5b6f5be              # double 0.44967741306376385
	.quad	0x3fe191736599a71b              # double 0.54900522083082437
	.quad	0x3fe09388bb687920              # double 0.5180095348658007
	.quad	0x3fdd7abadfecedd8              # double 0.46061584346508999
	.quad	0x3fcbee6d19f740d0              # double 0.21821368949759412
	.quad	0x3fe776035f7a6d2c              # double 0.73315590522853347
	.quad	0x3feacdf7a7539038              # double 0.83764250451031952
	.quad	0x3feebaac02fcc638              # double 0.96028709968067627
	.quad	0x3fd03b221b675030              # double 0.25360920597200032
	.quad	0x3fe0a6ebf1b5851b              # double 0.52037617882539011
	.quad	0x3fc03d2ecaaf2fdc              # double 0.12686715027518758
	.quad	0x3fbe4970172183f0              # double 0.11830807270736421
	.quad	0x3fc06cfcc6585da8              # double 0.12832603154013822
	.quad	0x3febc370eea1f4de              # double 0.86760756118715299
	.quad	0x3fe2f1911a0bbbf6              # double 0.59198813521459104
	.quad	0x3feb96e1cfa96cfd              # double 0.86216822203587606
	.quad	0x3f801fb52359af00              # double 0.0078729773915351409
	.quad	0x3fedb83c9b9a2339              # double 0.92873983756098888
	.quad	0x3fe50f3cd4ec2674              # double 0.65811006151598272
	.quad	0x3fd238deb9a6b7d4              # double 0.28472107057575369
	.quad	0x3fd0c90772a184f4              # double 0.26226984209468118
	.quad	0x3fdedf450d569d32              # double 0.48237730314800153
	.quad	0x3fdb21415c4aa936              # double 0.42390474331718353
	.quad	0x3fe62b70ed5ba50a              # double 0.69280287131292195
	.quad	0x3fe9fa7b8ed3491b              # double 0.81182649512837501
	.quad	0x3fa08bc90f1f3fb0              # double 0.032316477867083804
	.quad	0x3fe85256b0c8dfd9              # double 0.76005110290770539
	.quad	0x3fddca990004d7f6              # double 0.46549057962272344
	.quad	0x3fd1ea59070aab14              # double 0.27992845237410902
	.quad	0x3fe2dd1c0da7dbd3              # double 0.58949091593864933
	.quad	0x3fd12603ba0ff55c              # double 0.26794522447729263
	.quad	0x3fac368c719bcd20              # double 0.055103672855603358
	.quad	0x3fd33b66fb602f00              # double 0.30050062702569846
	.quad	0x3fdc0c6c99643fda              # double 0.43825831393860215
	.quad	0x3fcf54f100cae5d4              # double 0.24477970637035062
	.quad	0x3fdb9f56ab80007e              # double 0.43160025356338128
	.quad	0x3fec4ab5814e960f              # double 0.88411975150364863
	.quad	0x3fe8a3938f216707              # double 0.76996782260104701
	.quad	0x3fe6ecc8c159df67              # double 0.71640432132606413
	.quad	0x3fc598206b1a765c              # double 0.16870503644615809
	.quad	0x3fe1ec09e3abe0b5              # double 0.56006330935544801
	.quad	0x3fd04a4bb7fbb072              # double 0.25453465430360389
	.quad	0x3fe8ebc2d2ad120e              # double 0.77877942226092656
	.quad	0x3fc652adaa43486c              # double 0.17439814389814801
	.quad	0x3feafe5456328f99              # double 0.84354607425165107
	.quad	0x3fbd3f0b6b4dbb28              # double 0.1142432343456049
	.quad	0x3fd8b780d8ef6f6c              # double 0.38620015320861145
	.quad	0x3fe20ffa3a83d34e              # double 0.56445037296962552
	.quad	0x3fd3bf5837aa05b0              # double 0.30855374751998976
	.quad	0x3fc9a5e3573027f8              # double 0.20037500149948051
	.quad	0x3fdff1f35fb5300a              # double 0.49914249750577311
	.quad	0x3fe2178ec568894f              # double 0.56537569576566138
	.quad	0x3fecd9d96fd864e3              # double 0.90159293980391586
	.quad	0x3fb6dcd38aec3498              # double 0.089307042519254032
	.quad	0x3fd4d2af909e8b7e              # double 0.32535924075107647
	.quad	0x3fedd79e75d53f9a              # double 0.93257067693956519
	.quad	0x3feaea5bab5fa0ca              # double 0.84110816451450288
	.quad	0x3fe214ea69dd72e3              # double 0.56505318333401211
	.quad	0x3fdc1c8c837841a0              # double 0.43924248541682154
	.quad	0x3fe04461560033e6              # double 0.50834719464330358
	.quad	0x3fdeb0ab68b53c4e              # double 0.47953305459390527
	.quad	0x3fd761ac661fd37e              # double 0.36533651326254091
	.quad	0x3fe3ae1ca4336c0a              # double 0.61500389166337865
	.quad	0x3fe45848c44c9f7d              # double 0.63577688541134558
	.quad	0x3f9e5a85d42f1d60              # double 0.029642191959081798
	.quad	0x3fe2f8b52644a0b5              # double 0.59285981630548312
	.quad	0x3fd8b709b61cca70              # double 0.38617174896641071
	.quad	0x3fd906aaf6368ab6              # double 0.39103197139972268
	.quad	0x3fe3c93918cea6f6              # double 0.61831335873759374
	.quad	0x3fe351b3b5d3913b              # double 0.60372338784194512
	.quad	0x3fd13760d4266f96              # double 0.26900501935755849
	.quad	0x3fd2fb5a388aedc6              # double 0.29659133455035336
	.quad	0x3fcd741f6d60bb1c              # double 0.23010628548350887
	.quad	0x3fd11a7bb9969ade              # double 0.26724141239030341
	.quad	0x3fe4856392990869              # double 0.64128283150081444
	.quad	0x3fee9ec0a23a779e              # double 0.95687896428329444
	.quad	0x3fc2761760f2e41c              # double 0.1442288611777095
	.quad	0x3fec4d31d772b83c              # double 0.88442318038665446
	.quad	0x3fd69800fb4ac29e              # double 0.35302757778394234
	.quad	0x3fe6eba01c8685cd              # double 0.71626287051565785
	.quad	0x3fe0cd7ab9827a76              # double 0.52508293373450843
	.quad	0x3fe088558b534504              # double 0.51664235317198903
	.quad	0x3fddb0ff52a644c2              # double 0.46392806121100361
	.quad	0x3fe642c5f53100cc              # double 0.69565103424977215
	.quad	0x3fc5ac910b73ac08              # double 0.16932881411716516
	.quad	0x3fea0391e1b439fd              # double 0.81293577273191853
	.quad	0x3fec61fe72a072e1              # double 0.88696215045964888
	.quad	0x3fd85e9f9b04dee0              # double 0.38077535761429537
	.quad	0x3fe364dca53ba864              # double 0.60606224319532176
	.quad	0x3feadf4ff229b023              # double 0.83975980088644453
	.quad	0x3fdd208b13a6d026              # double 0.45511128348448648
	.quad	0x3fedb093127eafa5              # double 0.92780450451163132
	.quad	0x3fcc8c62898a00e8              # double 0.22303420749449931
	.quad	0x3fb4468605a78f48              # double 0.079201103573322773
	.quad	0x3fd3f4d72e8c71a6              # double 0.31181888147127734
	.quad	0x3fe0ad778f9433b6              # double 0.52117517512089395
	.quad	0x3fe073b7c9c5a119              # double 0.51412572296706849
	.quad	0x3fdec39653be2584              # double 0.48068769624713803
	.quad	0x3fe80a35e5d4cd34              # double 0.75124640358845917
	.quad	0x3fe2dae97d508b4f              # double 0.58922266459954098
	.quad	0x3fdde2de688906e2              # double 0.46697197159310921
	.quad	0x3fd4c7dc6e863072              # double 0.32469855111481316
	.quad	0x3fd4ccfc967c3310              # double 0.3250113935071548
	.quad	0x3fd0ce0846ebc920              # double 0.26257521558649621
	.quad	0x3fef8534d7ba0682              # double 0.98501054891694673
	.quad	0x3fe175ad68a09f7f              # double 0.54561491427465103
	.quad	0x3fe71d0bcf34ced2              # double 0.72229567022301411
	.quad	0x3fcfb78660febc64              # double 0.24778823600852029
	.quad	0x3fee6e946bf5e0ff              # double 0.95099850736644942
	.quad	0x3fe5b8bc076f3406              # double 0.67880059673336812
	.quad	0x3fbea47e5404b118              # double 0.11969747115353291
	.quad	0x3fe13b562b6be55e              # double 0.53849323731189336
	.quad	0x3fb5ce4ec6065e30              # double 0.085179255815426513
	.quad	0x3fc74d182d2f3c0c              # double 0.18204023557925131
	.quad	0x3fee2438dc2ef04b              # double 0.94192164425431579
	.quad	0x3fce4704e518d29c              # double 0.23654233156562021
	.quad	0x3fe938a374ca6530              # double 0.78816387949624378
	.quad	0x3fe18f2aa2ef5f0a              # double 0.54872638533831375
	.quad	0x3fc7f0c29ecb8714              # double 0.18703491929687088
	.quad	0x3fb89953efe9b5b0              # double 0.096089597771160439
	.quad	0x3fdf87c7ecf1cea0              # double 0.49266241206280803
	.quad	0x3fe61328cbc27709              # double 0.68983878895571238
	.quad	0x3f842e7c787ecf80              # double 0.0098542904159797384
	.quad	0x3fed1a986a2fd762              # double 0.90949650516152425
	.quad	0x3fd68a3f7fe31144              # double 0.35218799103701692
	.quad	0x3fdb0b512cbdb8a8              # double 0.42256574029205263
	.quad	0x3fc40e7c1fd76c68              # double 0.1566920428730072
	.quad	0x3fdee2388f530bce              # double 0.48255743023417785
	.quad	0x3fee9469f82dde12              # double 0.95561693642133805
	.quad	0x3fe030c59c45c21d              # double 0.5059536030003674
	.quad	0x3fe3c8bad6aba71b              # double 0.61825315406642589
	.quad	0x3febefc7854965e0              # double 0.87301994354782763
	.quad	0x3fefe454f9a9efaf              # double 0.99662255060638027
	.quad	0x3fec3a92398f5ecb              # double 0.88214980356402728
	.quad	0x3fe7f16b8e56bfe5              # double 0.74822023201522525
	.quad	0x3fc530a0789ffec4              # double 0.16554647340671214
	.quad	0x3fc1c0aada57796c              # double 0.1386922422524991
	.quad	0x3fe15cf0decf608f              # double 0.54259532468405947
	.quad	0x3fefeb42d4d8c672              # double 0.99746839114796004
	.quad	0x3feba69c2406d935              # double 0.8640881255767342
	.quad	0x3fe5e5d7338cd083              # double 0.68430671757097661
	.quad	0x3fe40ce10b561305              # double 0.62657215322596527
	.quad	0x3fb1daa917166690              # double 0.069742744576070104
	.quad	0x3f864447c7b4f0c0              # double 0.010872422010486438
	.quad	0x3fddd986c27c4fb4              # double 0.46640175812467111
	.quad	0x3fa2ca0472250d20              # double 0.036697520192797706
	.quad	0x3fd49a1ab9805830              # double 0.32190578570714745
	.quad	0x3fee92c28dcd0034              # double 0.95541503615823453
	.quad	0x3f9b9d99b5db8880              # double 0.02696838543386848
	.quad	0x3f7f3c073d00f280              # double 0.0076256067987371389
	.quad	0x3fec6daa472e97db              # double 0.88838685896621017
	.quad	0x3fcc3e9b67769120              # double 0.22066061546241489
	.quad	0x3f903c3d82b24340              # double 0.015854798414298488
	.quad	0x3fdf92e56a418736              # double 0.49334082962569725
	.quad	0x3fe292287cdf698d              # double 0.58034157170486511
	.quad	0x3fb116ae6b108e08              # double 0.066752339495501301
	.quad	0x3fe10316ed6bb2ea              # double 0.53162714358549334
	.quad	0x3fd55e2cba56cb66              # double 0.33387296864673599
	.quad	0x3fc8d59077103248              # double 0.1940174657214746
	.quad	0x3f9bbf4517ce46e0              # double 0.027096824243534878
	.quad	0x3fd34a3ff1d6a918              # double 0.30140684716265431
	.quad	0x3fb810131bee2838              # double 0.093995279616280736
	.quad	0x3fe72d6f25a36fe1              # double 0.72429616309409195
	.quad	0x3fea13cd1a69306f              # double 0.81491713674905764
	.quad	0x3fefca5021603093              # double 0.99344641226481866
	.quad	0x3fa6361055463f20              # double 0.043381224069092506
	.quad	0x3fb21c747575fe68              # double 0.070746687581043965
	.quad	0x3fbc0d8b506e7d20              # double 0.10958166803037672
	.quad	0x3fd058b5d52ecf40              # double 0.255414446054818
	.quad	0x3fee5967dfed437b              # double 0.94841378913598307
	.quad	0x3fd9a9512b38398c              # double 0.40095929356257254
	.quad	0x3fe6099f14350f84              # double 0.68867448755962402
	.quad	0x3fe10370ebdb776d              # double 0.53167005601765782
	.quad	0x3fec6f6456d29f19              # double 0.88859765012327607
	.quad	0x3fd57d6f81bf9360              # double 0.33578097983109068
	.quad	0x3fd970f692d13618              # double 0.39751972520466117
	.quad	0x3fe99fc2f50a0808              # double 0.80075214251724081
	.quad	0x3f79f288c41c8000              # double 0.0063348143028463255
	.quad	0x3fe14295e5fdf2e5              # double 0.53937811775503219
	.quad	0x3fb3ce684a84e4e8              # double 0.07736827678026581
	.quad	0x3fee1c4ff5318e06              # double 0.94095609559411808
	.quad	0x3fc554d097265178              # double 0.16665084247928141
	.quad	0x3fe4081f58ac7ff4              # double 0.62599150961977879
	.quad	0x3fe231a884fbecbe              # double 0.5685618016572318
	.quad	0x3fee521b6e23f8c6              # double 0.94752284538096698
	.quad	0x3fead10ad9752522              # double 0.83801786873042183
	.quad	0x3f885f39408fd6c0              # double 0.011900374682208947
	.quad	0x3fd3f36d220f78b2              # double 0.31173256231512447
	.quad	0x3fd98f0a88c8769a              # double 0.39935553891869235
	.quad	0x3fc55b78ff5118cc              # double 0.16685402361526369
	.quad	0x3fe282ad805edc31              # double 0.57845187256214647
	.quad	0x3fe4676050b7a563              # double 0.63761916890250026
	.quad	0x3fc51da280af5574              # double 0.16496688159410733
	.quad	0x3fd31fb2102f41a2              # double 0.29880954342390897
	.quad	0x3fdeb00820add28a              # double 0.47949412528331747
	.quad	0x3f913e25bf4115e0              # double 0.016838636205894875
	.quad	0x3fe515e313b7135b              # double 0.6589217553197203
	.quad	0x3fe0fd5e8d7304fc              # double 0.53092887522521393
	.quad	0x3fe49d11a24b068c              # double 0.64417344758858652
	.quad	0x3fe1197c98e6457a              # double 0.53436117041762476
	.quad	0x3fe1c7cc566a2f36              # double 0.55563942792784959
	.quad	0x3fb68750c6aab348              # double 0.088002251150738009
	.quad	0x3fb54043605c8b48              # double 0.083011828447110081
	.quad	0x3fe16dd508d89bd4              # double 0.54465724685439421
	.quad	0x3feab0f7c5976f8f              # double 0.83410252182101086
	.quad	0x3fd987c60b9af254              # double 0.39891196378065286
	.quad	0x3fc6894fcde2d990              # double 0.17606542161020089
	.quad	0x3fe9713db65bbe2f              # double 0.79507337204808504
	.quad	0x3fdfc4ddc9e8f37e              # double 0.49639076917429026
	.quad	0x3fe3e8ae0db8f6b1              # double 0.62215330772570188
	.quad	0x3fd23ae307d1f108              # double 0.28484416736297691
	.quad	0x3fba9542119c48a0              # double 0.10383999757712781
	.quad	0x3fec50732404135e              # double 0.88482052835807301
	.quad	0x3fd1ea79e64bd3d0              # double 0.2799362896906219
	.quad	0x3fb42cf488eb0898              # double 0.078810962130804518
	.quad	0x3fddc8c90f86674a              # double 0.46537996784319502
	.quad	0x3fd137a3616b0518              # double 0.26902088654976941
	.quad	0x3fcf7b2252514758              # double 0.24594525355729036
	.quad	0x3fcd2e06afe0b5d0              # double 0.22796710574895807
	.quad	0x3fb761e41e160b90              # double 0.09133744940304056
	.quad	0x3fead5934e56a61b              # double 0.83857121754153086
	.quad	0x3fd4dfb7832cec62              # double 0.32615459261041313
	.quad	0x3fb920d367e9cb88              # double 0.098157132024239258
	.quad	0x3fc0398d43cbd578              # double 0.12675634203302955
	.quad	0x3fdeb3eb5883aa96              # double 0.47973140377022483
	.quad	0x3fe7df7b3e5f4322              # double 0.74603044683508224
	.quad	0x3fb71c694f32d9c0              # double 0.090277273021320603
	.quad	0x3fe38551356b0736              # double 0.61002407487123977
	.quad	0x3feeade4fc29dcc5              # double 0.95872735262573682
	.quad	0x3fd6f6299e380bba              # double 0.35877457095210341
	.quad	0x3fe0a2dbe5bbdfd1              # double 0.51988024587535098
	.quad	0x3fdba76c24f6a60c              # double 0.43209365472520811
	.quad	0x3fe2df159a9e0987              # double 0.58973198126504733
	.quad	0x3fe1f624efccbe73              # double 0.56129690967459422
	.quad	0x3fe0ce485b24737e              # double 0.52518098641631616
	.quad	0x3fe06f1c194aeeef              # double 0.51356320323927018
	.quad	0x3fe68f7540e3d0d9              # double 0.7050119655018775
	.quad	0x3fba916a453d5e90              # double 0.10378135862753823
	.quad	0x3fd535905e85d104              # double 0.33139428358778411
	.quad	0x3fc5457d66578c10              # double 0.16618316170851744
	.quad	0x3fa80e6b2002cef0              # double 0.046985004098500371
	.quad	0x3fb77f4694290a40              # double 0.091785823032332736
	.quad	0x3fdf90c3e6c71a78              # double 0.49321076905145089
	.quad	0x3fba140631353088              # double 0.10186804486619583
	.quad	0x3febfb0e6c718a6d              # double 0.87439652614950847
	.quad	0x3fd3e4d191fdc9fc              # double 0.31084098107308455
	.quad	0x3fe5b8175e85bfbc              # double 0.67872208081643448
	.quad	0x3fde1a33b4511920              # double 0.47034924134313094
	.quad	0x3fee3f59331936e6              # double 0.94523296337294194
	.quad	0x3fcebe580980e5c8              # double 0.24018383468664539
	.quad	0x3fa6a909143077b0              # double 0.044258388247029656
	.quad	0x3fedfcfd3dcab733              # double 0.93713247364732977
	.quad	0x3febc668c7264c16              # double 0.8679698838844867
	.quad	0x3fbd5e2e7c0b5be8              # double 0.11471834686686544
	.quad	0x3fcc91117da1c1ec              # double 0.22317713388794347
	.quad	0x3febadbb345a9892              # double 0.86495743012780424
	.quad	0x3fcfded55b09d7d0              # double 0.24898783631550581
	.quad	0x3fed4e1f4af2b531              # double 0.91578640592857685
	.quad	0x3fdc99cf3ca578e0              # double 0.44688778803346274
	.quad	0x3fddfd9474656a74              # double 0.46860228888332434
	.quad	0x3fe474a0766d9015              # double 0.63923667078461455
	.quad	0x3f9b7e8b5622b140              # double 0.026849915630621668
	.quad	0x3fc4c2dc9fe272d0              # double 0.16219671065200325
	.quad	0x3fed2ecd4545bbe3              # double 0.91196311502232807
	.quad	0x3fea50f59e613e2a              # double 0.82238274510922804
	.quad	0x3fdb0b3a81b10280              # double 0.42256033578090779
	.quad	0x3fdb903370f95ec2              # double 0.43067632706286585
	.quad	0x3fe078a9bccd2fd2              # double 0.51472937464995483
	.quad	0x3fdb3ac29d6e28ee              # double 0.42546143888524923
	.quad	0x3fe01ef253b526a9              # double 0.50377765988487966
	.quad	0x3fe48dae175216c7              # double 0.64229492716614167
	.quad	0x3fdfa10b098e882e              # double 0.49420429166105151
	.quad	0x3fde737e721a5d6c              # double 0.47579918997640536
	.quad	0x3fc029672df1ff28              # double 0.1262635206548961
	.quad	0x3fef53b5f69e9658              # double 0.9789686028277158
	.quad	0x3fe0f472bf793671              # double 0.52983987233319685
	.quad	0x3fec174a189973f0              # double 0.87784294895720727
	.quad	0x3f8a83cbb8ee6f80              # double 0.0129466930209714
	.quad	0x3fa2149d9c644ab0              # double 0.03531353506163748
	.quad	0x3feec18f4ff8518b              # double 0.96112790698184491
	.quad	0x3fcef0d84a725bb4              # double 0.24172500262349461
	.quad	0x3fd6cebdb7719144              # double 0.3563684741441373
	.quad	0x3fcdcfffe5c67b98              # double 0.23291014403818333
	.quad	0x3fcdc9c9970179ac              # double 0.23272056458786261
	.quad	0x3fe24c796952f852              # double 0.57183523722756946
	.quad	0x3fefb0e677c1db32              # double 0.9903442706116492
	.quad	0x3fc86890d9e56a74              # double 0.19069109572849963
	.quad	0x3fef252f64460525              # double 0.97328919968291371
	.quad	0x3febc9e3536b2a34              # double 0.86839453022668644
	.quad	0x3fd075c7b6aefcbe              # double 0.25718872871579979
	.quad	0x3fd2e37f187513d6              # double 0.2951352824059631
	.quad	0x3fe197d8ac3ea1ab              # double 0.54978593484434179
	.quad	0x3feff29fddfd8656              # double 0.99836724622236761
	.quad	0x3fdff65b824cda5a              # double 0.49941146587972229
	.quad	0x3fefc35d230c1774              # double 0.99259812207377118
	.quad	0x3feb8e2801c56e99              # double 0.8611030611604803
	.quad	0x3fc14adca5156920              # double 0.13509710369800931
	.quad	0x3fea987f22577801              # double 0.8311153097854459
	.quad	0x3fe763eeb696e8c1              # double 0.73094878828057841
	.quad	0x3fe123f099eb14e7              # double 0.5356371885506207
	.quad	0x3feb9c05e66e33be              # double 0.86279578214600128
	.quad	0x3fef687e3776664a              # double 0.98150549728888703
	.quad	0x3feef053965714a6              # double 0.96683673251449842
	.quad	0x3fd2eb7e0634c696              # double 0.29562330823964922
	.quad	0x3fccbb8bcea7ce44              # double 0.22447345343208458
	.quad	0x3fe0a72fed9b01ff              # double 0.52040859610866608
	.quad	0x3fd456d0316922e6              # double 0.31779866051924299
	.quad	0x3f89b279d7e22280              # double 0.012547447109924947
	.quad	0x3fe402458d3ccee2              # double 0.62527730546431948
	.quad	0x3fdfaef47a2543c2              # double 0.495053405077723
	.quad	0x3fd1e554b66c28c4              # double 0.27962224783608414
	.quad	0x3fe422dca578207e              # double 0.62925560301029271
	.quad	0x3feae19cee0df46f              # double 0.84004065032025987
	.quad	0x3fd8f5fdcf841d34              # double 0.39001412644616384
	.quad	0x3fde8ab9b8faa7ee              # double 0.47721713127486864
	.quad	0x3fe816ef25cf9906              # double 0.75279958138415348
	.quad	0x3fee36d2618de5f7              # double 0.94419211438724815
	.quad	0x3feab92a741ac6df              # double 0.835103251234809
	.quad	0x3fe9058d0525b051              # double 0.78192759518925403
	.quad	0x3fd730f334887f68              # double 0.36236267214007123
	.quad	0x3fe33358d93bc508              # double 0.60001795223630072
	.quad	0x3feaa40e078427bd              # double 0.83252622097028672
	.quad	0x3fd06398a7424db2              # double 0.25607887586485412
	.quad	0x3fe8bbd9707817e5              # double 0.77293083159088083
	.quad	0x3fe4f4106f7a4d08              # double 0.654792993287999
	.quad	0x3fd00e11082bf4f8              # double 0.25085855291383963
	.quad	0x3fba0e0a71e40738              # double 0.10177674561057592
	.quad	0x3fd5f9ebdc4ca906              # double 0.34337898744219364
	.quad	0x3fa244103387d650              # double 0.035675531664236204
	.quad	0x3fe4db1afde5ce77              # double 0.65174626912489841
	.quad	0x3fd27948a9b5f09c              # double 0.28865257809935385
	.quad	0x3fe07f4858044a47              # double 0.51553742590687868
	.quad	0x3fe3d0731d96e180              # double 0.61919551638770542
	.quad	0x3fc4a9de6e8f92f8              # double 0.16143398664930664
	.quad	0x3fed5e185dc0d13b              # double 0.9177362280957263
	.quad	0x3fd5d8eec4309a1c              # double 0.34136552008786381
	.quad	0x3fe5a2fdabf067f9              # double 0.67614635068753082
	.quad	0x3fb5cb5d90958d08              # double 0.085134361075280052
	.quad	0x3feecceae197168b              # double 0.96251434383948841
	.quad	0x3fe5d22eb7a4fd07              # double 0.68190704219878817
	.quad	0x3fed713556a05a5b              # double 0.92006937903608887
	.quad	0x3fd39a93c76aa2dc              # double 0.3063096473147604
	.quad	0x3fdcf274c7e16b2c              # double 0.45229835052093637
	.quad	0x3fed05aceaa48802              # double 0.90694280460979848
	.quad	0x3fe3aa958ba1d63b              # double 0.61457326194676598
	.quad	0x3fe3c5449378a350              # double 0.61783055117585128
	.quad	0x3fe7a26e977f2bf8              # double 0.73857812489711616
	.quad	0x3fe13924ec232de8              # double 0.53822561379041378
	.quad	0x3fef4d149bcc2cde              # double 0.97815924100123275
	.quad	0x3fe0d3c0c065ff87              # double 0.5258487470418779
	.quad	0x3fec17e1dd7d29ff              # double 0.87791531810336199
	.quad	0x3fb29e3b9f72f7a0              # double 0.072726942470551226
	.quad	0x3fd26fdf28b16a5c              # double 0.28807810758522634
	.quad	0x3fe1160e6496eeb4              # double 0.53394240995790776
	.quad	0x3fe459c64878e7c3              # double 0.63595880655997694
	.quad	0x3fe8e1ac3d5a073d              # double 0.77754795058010695
	.quad	0x3fe4c1ddc6514229              # double 0.64866532071943539
	.quad	0x3fd6b101afd6beb8              # double 0.3545536248375174
	.quad	0x3fefa9b6f03fb8b0              # double 0.98946711467376325
	.quad	0x3fed8bd97fa6fdac              # double 0.92332148487178278
	.quad	0x3fd8e831e173d912              # double 0.38917204872940758
	.quad	0x3f99fdac308d6ae0              # double 0.025381746734050803
	.quad	0x3fdae82c2ec58a8a              # double 0.42042069022696948
	.quad	0x3fa5061d654e06d0              # double 0.041062277427966642
	.quad	0x3fd161426f2d2d60              # double 0.27156124932363035
	.quad	0x3fbbee9fd013de90              # double 0.10910986738223927
	.quad	0x3fe5cc1c18e99d99              # double 0.68116574159369059
	.quad	0x3fc593a04f29a950              # double 0.16856769433372643
	.quad	0x3fa9eabb764b32c0              # double 0.050618990125803176
	.quad	0x3fd40c03fad23522              # double 0.31323337072611157
	.quad	0x3fe9ddbe3b8bdd04              # double 0.80831824903626214
	.quad	0x3fbde8694ebfc088              # double 0.11682756588538912
	.quad	0x3fea287fc1d9dfa8              # double 0.81744373189484509
	.quad	0x3fe191e59789f528              # double 0.54905967328492
	.quad	0x3fe8c6407fc30973              # double 0.77420067742813925
	.quad	0x3fcd6b9dfcc41254              # double 0.22984671442113103
	.quad	0x3fec7ea3f3aa5af3              # double 0.8904590376940561
	.quad	0x3fe77534e2da9ed9              # double 0.73305744464320377
	.quad	0x3fe88d7c4e2f8669              # double 0.767271187502229
	.quad	0x3feea03456087d43              # double 0.95705620578147721
	.quad	0x3fd8e7939137cece              # double 0.38913430386967895
	.quad	0x3fee829337bdc8b9              # double 0.95343933951359994
	.quad	0x3fc7342aa55d1ea4              # double 0.18127949785615727
	.quad	0x3fe5dc8db6533aa5              # double 0.68317304239629506
	.quad	0x3fe624aef4bb8e78              # double 0.69197795676559704
	.quad	0x3fdeafcc7283a168              # double 0.47947989638352917
	.quad	0x3fd2570cb3c321ce              # double 0.28656308703332634
	.quad	0x3fdde8b2c992a812              # double 0.4673277824864509
	.quad	0x3fcad1cd41064b2c              # double 0.20952764201191465
	.quad	0x3fd0419ef19cf89e              # double 0.25400518031154629
	.quad	0x3fd961a139378554              # double 0.39658384883485565
	.quad	0x3fe2669715d441ba              # double 0.57502321494580788
	.quad	0x3fd2b535a5b80c44              # double 0.2923101538037296
	.quad	0x3fd70f362d645d6c              # double 0.36030344422166283
	.quad	0x3fc993c22e6b4950              # double 0.19982173220211985
	.quad	0x3fd441ce817ae3da              # double 0.31651651997122843
	.quad	0x3fe60a9109ffbefd              # double 0.6887898631375432
	.quad	0x3fd74228e91e4c3e              # double 0.36341307416404678
	.quad	0x3fe1d22e47e4e367              # double 0.55690683404746444
	.quad	0x3fda833d4caef9a2              # double 0.41426022041914667
	.quad	0x3f2ce1aa912cb000              # double 2.2034842603468885E-4
	.quad	0x3fde5ea8fe1e1ac6              # double 0.47452759567424285
	.quad	0x3fc8c18bac01c360              # double 0.19340654276632119
	.quad	0x3fb8c46f6a1c23f8              # double 0.096747363477461934
	.quad	0x3febb8afeac993aa              # double 0.86629482132831481
	.quad	0x3fd81b824c5b070a              # double 0.37667901474570498
	.quad	0x3fcde6be8b0012ec              # double 0.23360425746081803
	.quad	0x3fdc110da3541976              # double 0.43854084920931002
	.quad	0x3fe75dfc5f010c86              # double 0.73022287898528826
	.quad	0x3fe0c38c06de7c6e              # double 0.52387048093431843
	.quad	0x3fe1923c3997f21b              # double 0.54910098313081634
	.quad	0x3fe19bb1a65c2f74              # double 0.55025560848433352
	.quad	0x3fd060ef07567c18              # double 0.25591636387429295
	.quad	0x3fdf7bf1200b18da              # double 0.49193981293900679
	.quad	0x3fc69e218d674434              # double 0.17670077709638721
	.quad	0x3fe6b670abe320fc              # double 0.70977052280161912
	.quad	0x3fd06eef50acf6b6              # double 0.25677092436294957
	.quad	0x3fefeaec556727dd              # double 0.99742714576973023
	.quad	0x3fe6ad2d875e61f8              # double 0.70863987387843874
	.quad	0x3fd4ae3f41b30d34              # double 0.32313519874533658
	.quad	0x3fb0e8737f3df8a0              # double 0.066046923222503384
	.quad	0x3fe69344b320bddc              # double 0.7054770945159663
	.quad	0x3fe674d757379b73              # double 0.70176283869373746
	.quad	0x3fdf46d4d7fe60aa              # double 0.48869820683604337
	.quad	0x3fd0347421d9729e              # double 0.25320151620489095
	.quad	0x3fca4c676a1922b8              # double 0.20545666390014161
	.quad	0x3fe09cc2f276cc8a              # double 0.51913592678319387
	.quad	0x3feb3715f4e7b8da              # double 0.85047433693923868
	.quad	0x3f8b2afb098fd400              # double 0.013265572766593792
	.quad	0x3fb33842a5a82ec0              # double 0.075077214664072578
	.quad	0x3fca74c4e8f724a0              # double 0.20668851256622123
	.quad	0x3fd46a2d97b75f78              # double 0.31898059669537515
	.quad	0x3fc5b6dc216c9578              # double 0.16964294082678655
	.quad	0x3fe7ecc599aecdd0              # double 0.74765281692674002
	.quad	0x3fe0a1ce1409f591              # double 0.51975158609245586
	.quad	0x3fd6c1f414c782cc              # double 0.35558797864181879
	.quad	0x3fd202c10ebf786e              # double 0.28141809883334801
	.quad	0x3fe0466b7bb25b82              # double 0.50859617385400235
	.quad	0x3fe25fee0215f728              # double 0.57421017081626236
	.quad	0x3fec5810639a8e43              # double 0.88575000242094182
	.quad	0x3fd40bfe5a06d442              # double 0.31323202888171775
	.quad	0x3fe1b3fe06b492d7              # double 0.5532217150654003
	.quad	0x3fe3c2347b792d81              # double 0.61745666614426409
	.quad	0x3fc855e6871ce40c              # double 0.19012147519404754
	.quad	0x3fc3b1cfc1953794              # double 0.15386387779511479
	.quad	0x3fea3b103fb2d9f5              # double 0.81970989647999082
	.quad	0x3fe0604d4c32dbf4              # double 0.51175560839226231
	.quad	0x3fea86c7f7eaf3b0              # double 0.82895277425233438
	.quad	0x3fe9619ed3f9aa0e              # double 0.79316655541816927
	.quad	0x3fea6f7caf6bc932              # double 0.82610925924226408
	.quad	0x3f72949831cdb180              # double 0.0045362420176896512
	.quad	0x3fe10efbb0ad54f1              # double 0.5330789995884101
	.quad	0x3fe2a0b74656d4b8              # double 0.5821186422168898
	.quad	0x3fec8158a7522abd              # double 0.89078934364200502
	.quad	0x3fd9bf42095f5fbe              # double 0.40229845919884244
	.quad	0x3fdeae94be363648              # double 0.47940558028571845
	.quad	0x3fe2e2e52dca3be2              # double 0.59019717162470564
	.quad	0x3fc3c56c57633b00              # double 0.15446237818692765
	.quad	0x3fc95708d3839994              # double 0.19796858146510188
	.quad	0x3fdd5c9da66c6d76              # double 0.45877782108592358
	.quad	0x3fb4ee3c8e034528              # double 0.081760201140487099
	.quad	0x3fa952c8b818fe90              # double 0.049459717247825385
	.quad	0x3fe0f4b8859d250f              # double 0.52987314316229284
	.quad	0x3feeeddf184ba5f2              # double 0.96653704400267615
	.quad	0x3fca74abf42d7160              # double 0.20668553755502739
	.quad	0x3fe4c2872a160fa0              # double 0.64874609203296885
	.quad	0x3fc55cc10b146f58              # double 0.16689312973982839
	.quad	0x3fc3333deb665d0c              # double 0.15000127786763817
	.quad	0x3fed249357e48a92              # double 0.91071479002524058
	.quad	0x3fcb79ba366246dc              # double 0.21465232520545541
	.quad	0x3fef054691ffe4bc              # double 0.96939400210899107
	.quad	0x3fe506b096a46015              # double 0.657066625807604
	.quad	0x3fcd577bf7c9051c              # double 0.22923230742348089
	.quad	0x3fe908ff14527426              # double 0.78234819382817444
	.quad	0x3fbdb7eefbaa3740              # double 0.11608785289919599
	.quad	0x3feb46f790963024              # double 0.85241296996673954
	.quad	0x3fd716213b69d2f0              # double 0.36072569658362763
	.quad	0x3fc11ce3a713cd18              # double 0.13369413049768109
	.quad	0x3fe29e861499465f              # double 0.58185104392232379
	.quad	0x3fcfda33797bb1dc              # double 0.24884646827503232
	.quad	0x3fe7c48551d85048              # double 0.74273935304018668
	.quad	0x3f954bc0da172620              # double 0.020796788512404629
	.quad	0x3fdb1e11eae09a5c              # double 0.42371032654992802
	.quad	0x3fe361ebbca9353d              # double 0.60570322845311575
	.quad	0x3fa3297b22d70a30              # double 0.037425849917344656
	.quad	0x3fc14434b0e96414              # double 0.13489397657647884
	.quad	0x3feb8d71bd9531bc              # double 0.86101614978684137
	.quad	0x3feaa7321d45eb85              # double 0.83290963857085443
	.quad	0x3fcf704be93204dc              # double 0.24561451803678025
	.quad	0x3fe0ccd87142b070              # double 0.5250055515403016
	.quad	0x3fe49fc51655ed9e              # double 0.64450315821106918
	.quad	0x3feb27a5b2ddd52b              # double 0.84858975348348531
	.quad	0x3fe5c1aeff9a3388              # double 0.67989301607450248
	.quad	0x3fe6d58d2bb6dcd6              # double 0.71356829202604888
	.quad	0x3fe2f4cbd1580782              # double 0.59238234412644908
	.quad	0x3fed33f2f137da6a              # double 0.91259142983365149
	.quad	0x3fe6ebd6762cdfe1              # double 0.71628878670798823
	.quad	0x3fcd6f40a567ce14              # double 0.22995765758933884
	.quad	0x3fe8a6aadb4ab916              # double 0.77034514265486354
	.quad	0x3fe313892ae3a2bc              # double 0.59613474251553766
	.quad	0x3fd1d5c62564800c              # double 0.27867272998446491
	.quad	0x3fee9a944ac1b22a              # double 0.95636953926947865
	.quad	0x3fb2cbaa3d7140a0              # double 0.073420181274971075
	.quad	0x3fdaf04d0cbb8bf8              # double 0.42091680758875283
	.quad	0x3fecc5b6a885ed64              # double 0.89913494982412744
	.quad	0x3fdd4ffb7eb9e8be              # double 0.45800673843008244
	.quad	0x3fdb136551c9b746              # double 0.42305882441620601
	.quad	0x3fda311aa028df4a              # double 0.40924707069961086
	.quad	0x3fed40b52367f39b              # double 0.91414887347456231
	.quad	0x3fc3780cd439a3ec              # double 0.15210113871151465
	.quad	0x3fda567b63e93c02              # double 0.4115284419721662
	.quad	0x3fe97f5f8d0f6771              # double 0.79679849196257468
	.quad	0x3fee43364b6b4cbe              # double 0.94570460062313777
	.quad	0x3fe079cc6133bda4              # double 0.51486796364581666
	.quad	0x3fee81b329f52f8f              # double 0.95333250231623079
	.quad	0x3feaea403535d522              # double 0.84109506981500126
	.quad	0x3fda99fb62f35db2              # double 0.41564831412457715
	.quad	0x3fecb0c52e5e00cd              # double 0.89657839828580566
	.quad	0x3fd0db4b22383358              # double 0.26338461248160661
	.quad	0x3fda1ff9842f1ede              # double 0.40820157917594979
	.quad	0x3fc21b1df8fcfcb8              # double 0.14145254762295223
	.quad	0x3fb0574b714785b8              # double 0.063832011371707575
	.quad	0x3fdcd926a1b74898              # double 0.45075383942197211
	.quad	0x3f8d2ee2789bbdc0              # double 0.01424958162848966
	.quad	0x3feedd0cb116cab5              # double 0.96448359096242219
	.quad	0x3fe07ce2b28622e6              # double 0.51524481647456066
	.quad	0x3fc4177a74e46dc8              # double 0.15696650226241915
	.quad	0x3fdb6ab9e5b8b6b0              # double 0.42838904794448762
	.quad	0x3fe2fdc3e1296f78              # double 0.59347719170499058
	.quad	0x3fe524a51430a8ab              # double 0.6607232469880463
	.quad	0x3feb1514b01aaf62              # double 0.8463233413253699
	.quad	0x3fb16f29e52d8da8              # double 0.068102472736021213
	.quad	0x3fe378c191647deb              # double 0.60849073788625441
	.quad	0x3fbb48d2c5092bd8              # double 0.10657994566388085
	.quad	0x3fc491a0aa35a888              # double 0.16069420157447589
	.quad	0x3fdbe608cd68e882              # double 0.43591518458891454
	.quad	0x3fd76d1ac2ea4b28              # double 0.36603421244324119
	.quad	0x3fea0b4690f2dca5              # double 0.81387642202652855
	.quad	0x3fbf1c2b639329f0              # double 0.12152358227755378
	.quad	0x3fe200effdf2eeb0              # double 0.56261443709759895
	.quad	0x3fd1acc329f84756              # double 0.27616957758538285
	.quad	0x3fec322ac64924e5              # double 0.88112391212157759
	.quad	0x3feef497932d2335              # double 0.96735743279814434
	.quad	0x3fd5a371edcbca14              # double 0.33810089323302006
	.quad	0x3fe10f29e6ef4fff              # double 0.53310103516059815
	.quad	0x3fe7e2dabd2f6396              # double 0.7464421935102219
	.quad	0x3fd4d2114bcf92e8              # double 0.3253215065326871
	.quad	0x3fc108e206b8eedc              # double 0.13308358505479745
	.quad	0x3fd3d15cec8b236c              # double 0.30965350246383738
	.quad	0x3fecab3aafa684de              # double 0.89590200716716217
	.quad	0x3fe23b1dd9121c2f              # double 0.56971638104085354
	.quad	0x3fd5966cee50e7ec              # double 0.33730624459314984
	.quad	0x3fe7d9e780ecd254              # double 0.74534964733772791
	.quad	0x3fe1136a48ff6939              # double 0.53362001664508008
	.quad	0x3fe04728894bf73d              # double 0.50868632140893733
	.quad	0x3fbe56b60c7393e8              # double 0.1185106068038092
	.quad	0x3feee2d911cf4cf9              # double 0.96519139746160853
	.quad	0x3fe56bde5fbd41d3              # double 0.6694175596149371
	.quad	0x3fbc821f7184c7c8              # double 0.11136051675273884
	.quad	0x3f60272ccfc2c600              # double 0.0019718051172155082
	.quad	0x3fcc7b9ccb9e72ec              # double 0.22252235357600314
	.quad	0x3fe7ab1d24a14522              # double 0.73963791994370731
	.quad	0x3fe16b8ce97a8ff9              # double 0.54437871552772699
	.quad	0x3f9869fe23c05440              # double 0.023841830188832569
	.quad	0x3fe111464902711e              # double 0.53335870990443701
	.quad	0x3f9d6b323454a700              # double 0.028729233211527649
	.quad	0x3fcd769695bae05c              # double 0.23018152533564062
	.quad	0x3fa134629780e120              # double 0.033602791780540153
	.quad	0x3fe78659f5561c31              # double 0.73515031735667524
	.quad	0x3fd581fc6a119a0a              # double 0.33605871542241117
	.quad	0x3fed503b5a629f77              # double 0.91604392674797352
	.quad	0x3fbf067d2f5da2e8              # double 0.12119276434317394
	.quad	0x3fecaea46e0a938e              # double 0.89631864063686506
	.quad	0x3fd546a654de7b3a              # double 0.33243711746210958
	.quad	0x3fd6786aad9cf2fe              # double 0.35109965280916799
	.quad	0x3fb44fb87bf35b58              # double 0.079341440450077072
	.quad	0x3fe414b4b7e5030f              # double 0.6275275794688201
	.quad	0x3fd49474998b1fee              # double 0.3215610026786625
	.quad	0x3fd440db2e5726a6              # double 0.31645850682671506
	.quad	0x3fec8add9b957124              # double 0.89195137393429435
	.quad	0x3fedd2aa04aa1222              # double 0.93196583662990329
	.quad	0x3fd3ddacd64343b6              # double 0.31040497707459325
	.quad	0x3feedc708f3d6f8c              # double 0.96440914131697885
	.quad	0x3fec252fa6e716f8              # double 0.87953932378942934
	.quad	0x3fc5f9dcd4e3b1b4              # double 0.17168770213119233
	.quad	0x3fef4d54d49e05e6              # double 0.97818986441432965
	.quad	0x3fd7d43fb7edeef6              # double 0.37232964479311137
	.quad	0x3fe4eeea8cbd37ac              # double 0.6541645764170787
	.quad	0x3fe66ff76c6d9c23              # double 0.70116778542876934
	.quad	0x3feeba30bc78de4a              # double 0.96022831736531455
	.quad	0x3feeeb83f533155f              # double 0.96624944582496741
	.quad	0x3fe9be6bbf4b355c              # double 0.80449473726336462
	.quad	0x3fe4f1ee4422446c              # double 0.65453255946534972
	.quad	0x3feffc17de8245b4              # double 0.99952310045971737
	.quad	0x3fb1e1d044c808f0              # double 0.069851891319590242
	.quad	0x3fd4682ac772e9a4              # double 0.31885785558156443
	.quad	0x3fef0c5bc5e1df49              # double 0.97025860451592749
	.quad	0x3fd32ec0c9ecfb3c              # double 0.29972858161265825
	.quad	0x3fa7d4fb1732de70              # double 0.046546789724229209
	.quad	0x3fcaa8c63b445b04              # double 0.20827558416268499
	.quad	0x3fe49d486f26fbb1              # double 0.64419957837514208
	.quad	0x3fdd01061e816bd0              # double 0.45318749407823322
	.quad	0x3fc1df105ee434a0              # double 0.13961987145777233
	.quad	0x3fda5dd2ea967628              # double 0.41197655590971971
	.quad	0x3fca54c93d0f8ee0              # double 0.20571246606333826
	.quad	0x3feb7fac1353640f              # double 0.85933498167571709
	.quad	0x3fe4418ebb387d76              # double 0.63300262991462719
	.quad	0x3fe99e3c2ccf93dc              # double 0.80056580307120439
	.quad	0x3feb7328331131cb              # double 0.85780725454383722
	.quad	0x3fd082c4ed4e8c8e              # double 0.25798152136321384
	.quad	0x3fcc3a5a326dd514              # double 0.22053077185015779
	.quad	0x3fe471b9da1f06f9              # double 0.63888256646916297
	.quad	0x3fb8c49fc1317ad0              # double 0.09675024477608507
	.quad	0x3feb15f89071f839              # double 0.84643200122787399
	.quad	0x3fc4085f02dc2a9c              # double 0.15650546683931033
	.quad	0x3fe4cab561685644              # double 0.64974469208636565
	.quad	0x3fdf4a6aa63eab42              # double 0.48891702875942056
	.quad	0x3fec2badad65b455              # double 0.88033183924347702
	.quad	0x3fe2f3a375691ee1              # double 0.59224102908862275
	.quad	0x3fe82a2d913409ce              # double 0.75514868125929424
	.quad	0x3fce2ea27f1b96b8              # double 0.23579817968782435
	.quad	0x3fed504c78ea5dd0              # double 0.91605208984668174
	.quad	0x3fe9c1015fc44b0c              # double 0.80481022552916803
	.quad	0x3fea61d9d00a0a4f              # double 0.82444468147907368
	.quad	0x3f92793aa663bf40              # double 0.018040577321641438
	.quad	0x3fea381ca5919488              # double 0.81934959733611468
	.quad	0x3fd920616f6c824a              # double 0.39260135537373186
	.quad	0x3fbfcf02c565b018              # double 0.12425248450534843
	.quad	0x3fec9f424bba7e36              # double 0.89444079199524285
	.quad	0x3fe691c9988bf43b              # double 0.70529632372166107
	.quad	0x3feaa9e8f9d1c6f2              # double 0.83324097435817479
	.quad	0x3feb65c9b504f544              # double 0.85617528300614553
	.quad	0x3fdbe45519ffd462              # double 0.43581130541799074
	.quad	0x3fdfb56dadd41e6e              # double 0.49544851279686142
	.quad	0x3fec7801f19c9cda              # double 0.88964936437414655
	.quad	0x3fdebec8c3d55f44              # double 0.48039454578746565
	.quad	0x3fdc477f5da54e9c              # double 0.44186386246767895
	.quad	0x3fd9e3b94d12a27e              # double 0.40452415968551481
	.quad	0x3fccddb7021dbe58              # double 0.22551620105103853
	.quad	0x3fcab18e5e52df2c              # double 0.20854358297014508
	.quad	0x3fb325b2280f4ef8              # double 0.07479394414923124
	.quad	0x3feabe92ddd1b638              # double 0.83576339077052975
	.quad	0x3fe273d9e1634ff2              # double 0.57664197941858064
	.quad	0x3fe7cc61cac06847              # double 0.74369897460861345
	.quad	0x3fe8ce95ad3c7b16              # double 0.77521785578923885
	.quad	0x3fdfca66c74c6be8              # double 0.49672860586878054
	.quad	0x3fed6e8dde2ff717              # double 0.91974538227052249
	.quad	0x3fe9eae563b07658              # double 0.80992383452003036
	.quad	0x3fb8a1e368200d20              # double 0.096220219536963913
	.quad	0x3fd4501ea5dba730              # double 0.31739011952469109
	.quad	0x3fcc378eb9018abc              # double 0.22044548066613412
	.quad	0x3fd611440ed19194              # double 0.34480382392055131
	.quad	0x3fbb082004710fa0              # double 0.1055927286952838
	.quad	0x3fe347129b15225b              # double 0.60242586412011734
	.quad	0x3fe75e766fbb023a              # double 0.73028108427394689
	.quad	0x3fea8ce115dbadb3              # double 0.82969717282451538
	.quad	0x3f8d670d395c9940              # double 0.014356711686173029
	.quad	0x3f9bde939c8b5900              # double 0.027216249875743337
	.quad	0x3fedfc9bde37acea              # double 0.9370860424218368
	.quad	0x3fe0a46dc42667ec              # double 0.52007187185813342
	.quad	0x3fc6f4dce5bfb84c              # double 0.17934762209137245
	.quad	0x3fd8dce1289980fc              # double 0.38848141636664457
	.quad	0x3fa329042f42d060              # double 0.0374223048869744
	.quad	0x3fe5f457e32cbe3c              # double 0.68607706422876147
	.quad	0x3fe403891595675d              # double 0.62543157783077741
	.quad	0x3fd64804b532315c              # double 0.34814565367630279
	.quad	0x3f9960e5ff247520              # double 0.024783700654656404
	.quad	0x3fd7f561ac416ce2              # double 0.37435190030892163
	.quad	0x3fe51e7f4b6fa96e              # double 0.65997280820492477
	.quad	0x3fbae3c9b0ff4000              # double 0.10503826686112916
	.quad	0x3fe2d9c804d0fd87              # double 0.58908463421532609
	.quad	0x3fe3d20da04dd03d              # double 0.61939126309744774
	.quad	0x3fdebe33b8da0470              # double 0.48035901119153035
	.quad	0x3fd8bdeacfb69cde              # double 0.38659162792687407
	.quad	0x3fd71b412c3a65a2              # double 0.36103848761703194
	.quad	0x3fe513ebead78340              # double 0.65868183009670389
	.quad	0x3fe06b2a700f2639              # double 0.51308175932462696
	.quad	0x3fef720207213f89              # double 0.98266698257974482
	.quad	0x3fdc26c4e0623af8              # double 0.43986627495262054
	.quad	0x3fed0eea7cb6820b              # double 0.90807079656593837
	.quad	0x3fef5a1a7a8dde6f              # double 0.97974895416605345
	.quad	0x3fe946e7b94cb0b6              # double 0.78990541640589274
	.quad	0x3fc2e40c650a0ce8              # double 0.14758448537404623
	.quad	0x3fdd707f4c44b992              # double 0.45999128769008124
	.quad	0x3fd7071dc2bb8bc6              # double 0.35980934159141176
	.quad	0x3fe5eea8ef1eb0a9              # double 0.6853832884130685
	.quad	0x3fb2ab3b6f7d0f20              # double 0.072925295561671266
	.quad	0x3fd78d477f1c04f6              # double 0.36799800313026709
	.quad	0x3feeffdd9ad324b0              # double 0.96873359908308565
	.quad	0x3f62152fa4e49c00              # double 0.0022073679493987974
	.quad	0x3fee9662b44e39c1              # double 0.95585761276179693
	.quad	0x3fd7cfadb4d7f46a              # double 0.37205069218163678
	.quad	0x3fb4b03b10eb3560              # double 0.080814067488252928
	.quad	0x3fe1dbd807687658              # double 0.55808640906225104
	.quad	0x3fdb05cbc10672da              # double 0.42222875452152453
	.quad	0x3fec8dfb6b1c6d75              # double 0.89233179969907772
	.quad	0x3fe867b6f8fe8287              # double 0.76266049033809302
	.quad	0x3fed1fbfdff6b937              # double 0.91012567274973477
	.quad	0x3fe206a965cb843c              # double 0.56331319696267412
	.quad	0x3fdca37df62e15d2              # double 0.44747876206414816
	.quad	0x3fe1830b9a4b77f7              # double 0.54724674354269964
	.quad	0x3fed1ad8302a952b              # double 0.90952691466796887
	.quad	0x3fe91c3e2dddd358              # double 0.78469761808683369
	.quad	0x3fe818d8a4555db3              # double 0.75303299042109584
	.quad	0x3fadce6bef892fd0              # double 0.058215497007580219
	.quad	0x3fea68129dbb3e96              # double 0.82520418936651896
	.quad	0x3fe412885e5fe40e              # double 0.62726229126485733
	.quad	0x3fe5a24e6272ee47              # double 0.67606276729879589
	.quad	0x3fda78542b594f14              # double 0.41359428628241912
	.quad	0x3feea3a93b836704              # double 0.95747815726937846
	.quad	0x3fdb6db8495b8f8c              # double 0.42857176936944863
	.quad	0x3fe85c9790254140              # double 0.76130273965285511
	.quad	0x3fd5f38a892b14d6              # double 0.34298957248058792
	.quad	0x3fd79dcddb29db36              # double 0.36900659945188197
	.quad	0x3fe516be4387dea2              # double 0.65902627172086548
	.quad	0x3fed962b85cb11a3              # double 0.92458130008212824
	.quad	0x3fa7a58224d4b970              # double 0.046184603687254078
	.quad	0x3fd88ef152e91262              # double 0.38372452828142489
	.quad	0x3fed6b513bb3e5f1              # double 0.91935025845231
	.quad	0x3fd94728646a13c8              # double 0.39496812635507839
	.quad	0x3fd3f2a4656c14a0              # double 0.3116847029162475
	.quad	0x3fb7288c3501ea18              # double 0.090462458554533831
	.quad	0x3fe52ef2759200e2              # double 0.66198084795908252
	.quad	0x3fd68564390c4d42              # double 0.35189157076930055
	.quad	0x3fefa63e44698a94              # double 0.98904336320659291
	.quad	0x3fe6b66fdcb749db              # double 0.70977013691509272
	.quad	0x3fe98343b43a2027              # double 0.79727349472614584
	.quad	0x3fb5466864c660f8              # double 0.083105587580920459
	.quad	0x3fe83bb67d26ba5b              # double 0.75728916591271955
	.quad	0x3fe40ad84ddc7e03              # double 0.62632384497914051
	.quad	0x3fcefcfdc1f85ba0              # double 0.2420956799621452
	.quad	0x3fe0dea8e418ae12              # double 0.52718014288024251
	.quad	0x3f982c0fa6753380              # double 0.023605579886225581
	.quad	0x3fbc89814d8d61c8              # double 0.11147316115728423
	.quad	0x3fd517e013e211ac              # double 0.32958223287303201
	.quad	0x3fca4c4d9fa64cb8              # double 0.20545358939543745
	.quad	0x3fecd90fb38c7bfe              # double 0.9014967448055129
	.quad	0x3fed147e0bca7ac7              # double 0.90875150969426322
	.quad	0x3f83c2187ec10780              # double 0.009647551887727479
	.quad	0x3fe03e5cfeb60a85              # double 0.50761270282994586
	.quad	0x3fdc79a51d9c471a              # double 0.44492462054869153
	.quad	0x3fe48337302d508d              # double 0.64101752671787582
	.quad	0x3fe40340d455ecf2              # double 0.62539712402158742
	.quad	0x3fdce28afa450cca              # double 0.45132708015826195
	.quad	0x3fe0127f99331be0              # double 0.50225810930066572
	.quad	0x3fe661dc4cedb701              # double 0.69944586777793927
	.quad	0x3fc6d6051d68e7f0              # double 0.178406371460198
	.quad	0x3fa9033ec0112d50              # double 0.048852883287134774
	.quad	0x3fda25157d87196a              # double 0.40851342447822125
	.quad	0x3fdbd8f841741b4a              # double 0.43511778251597788
	.quad	0x3fe5f4709efeb318              # double 0.68608885816283571
	.quad	0x3fdcaeb680e460cc              # double 0.44816362940902077
	.quad	0x3feb4a10783d56a8              # double 0.85279105648324549
	.quad	0x3fe304ce7a592113              # double 0.5943367375957983
	.quad	0x3feaf670a9026fac              # double 0.84258301744147479
	.quad	0x3fd8bf944f0086ec              # double 0.38669307436985778
	.quad	0x3fe8e4fb2eeb78d0              # double 0.77795180477166959
	.quad	0x3febf22733f3557a              # double 0.87330970903955962
	.quad	0x3fda0b5aefda533e              # double 0.4069430677712268
	.quad	0x3fead1424db12730              # double 0.83804431127757617
	.quad	0x3fc5915db15239cc              # double 0.16849871786366888
	.quad	0x3fe197d7772363d8              # double 0.54978535908878268
	.quad	0x3fd56945eaa97984              # double 0.33455036083423573
	.quad	0x3fd758667ccc9c32              # double 0.36477052867343496
	.quad	0x3fa6af0bddab9250              # double 0.044304247674322839
	.quad	0x3f0c2f4847dd0000              # double 5.3758042652507498E-5
	.quad	0x3fe4e823d711b190              # double 0.6533374023979821
	.quad	0x3fe757be22653783              # double 0.72946078031394312
	.quad	0x3fe63602cae968ac              # double 0.69409312850190963
	.quad	0x3fcab2e3f06aa7f8              # double 0.20858430136769335
	.quad	0x3fe1ad847fc4d830              # double 0.55243134455554888
	.quad	0x3fb649e61e97cf30              # double 0.087065107792849927
	.quad	0x3feaa5ccd0c18eb3              # double 0.83273926518128005
	.quad	0x3fe1d85e63c29364              # double 0.55766219601046574
	.quad	0x3fb4cecb3875cbd8              # double 0.081280423435415527
	.quad	0x3fd517eed256917e              # double 0.32958574810825059
	.quad	0x3fd7673590fa13dc              # double 0.36567439229867005
	.quad	0x3fd3f1b0b10a9424              # double 0.31162659920875257
	.quad	0x3feff447bf3748fc              # double 0.99856936785570793
	.quad	0x3fe360d15c9709e6              # double 0.60556858142836911
	.quad	0x3fc2c2aeb08d08b4              # double 0.14656623478555775
	.quad	0x3fe27ca900f2683a              # double 0.57771730599348037
	.quad	0x3fc09560b51e2250              # double 0.12955864757192836
	.quad	0x3fe705af36fded18              # double 0.71944390049557949
	.quad	0x3fe7db75024a99d8              # double 0.74553919265309343
	.quad	0x3fe691ce99989aa0              # double 0.70529870986213794
	.quad	0x3fee009bdfce766e              # double 0.93757432663160301
	.quad	0x3fe21a6cda9a7bf9              # double 0.56572573371874946
	.quad	0x3fe61866665b271e              # double 0.69047851554316586
	.quad	0x3feb566415a45c1f              # double 0.85429577090224373
	.quad	0x3faf96a48870a090              # double 0.06169618764425977
	.quad	0x3fac02dd1d80e820              # double 0.054709348536974511
	.quad	0x3fef169f8a31cd3c              # double 0.97151162139053992
	.quad	0x3fe8647bbf774fe4              # double 0.76226603885379207
	.quad	0x3feeabdf0206c02b              # double 0.95848036189818708
	.quad	0x3fe8f4a5eb45400a              # double 0.77986427260657476
	.quad	0x3fe759c032f8dd7d              # double 0.72970590548986503
	.quad	0x3fcd51e9232eeac0              # double 0.2290622159760769
	.quad	0x3fd7842113ff6f6e              # double 0.36743952706250738
	.quad	0x3fe0be2515b8fa17              # double 0.52321104281128583
	.quad	0x3fc8d8e3651a64f4              # double 0.19411890446352909
	.quad	0x3fe1719502efc9ba              # double 0.54511499951904985
	.quad	0x3fbf166f35577160              # double 0.12143607189449801
	.quad	0x3fe3b17c3905d17c              # double 0.61541567933322439
	.quad	0x3fe091ca9ec64d1b              # double 0.51779681215922169
	.quad	0x3fc9ed0af50679bc              # double 0.20254647220731481
	.quad	0x3fdab8b6ff806c2a              # double 0.4175240988858514
	.quad	0x3fdb6894fa868c34              # double 0.42825817551983225
	.quad	0x3fbf11655540a448              # double 0.12135918933258083
	.quad	0x3f7eed7213beec80              # double 0.0075506645334214583
	.quad	0x3fea3502ef52c2fc              # double 0.81897112601117738
	.quad	0x3fed0c938b344233              # double 0.90778519810016289
	.quad	0x3fe71ac0ad38286b              # double 0.72201570350558819
	.quad	0x3feaf4380226ea3c              # double 0.8423118631392934
	.quad	0x3fb3a6be63c32fc0              # double 0.076763057094637155
	.quad	0x3fc3d606dda2bf70              # double 0.15496908018166833
	.quad	0x3fd2010125bc216a              # double 0.28131130871817922
	.quad	0x3fee30b9087c805c              # double 0.9434476056812957
	.quad	0x3feabc2445f01ea9              # double 0.83546651515731185
	.quad	0x3fa6573228e7f2a0              # double 0.043634002202428634
	.quad	0x3fc7a732310b8848              # double 0.18478991884973284
	.quad	0x3faccce415f28870              # double 0.056250693968892373
	.quad	0x3feee92d7a01dcda              # double 0.96596406774088028
	.quad	0x3fe59c3812c4bf51              # double 0.67531970658999729
	.quad	0x3fd3143513d55652              # double 0.29810835778093747
	.quad	0x3fc17a733aca4d24              # double 0.13654938097588698
	.quad	0x3fe8cb0a246e27c7              # double 0.77478510966579328
	.quad	0x3fefd7d712368656              # double 0.99509767110084613
	.quad	0x3fb7d5c0d4c7b660              # double 0.093105365703843201
	.quad	0x3fd4eba6ebd1729e              # double 0.32688305882565227
	.quad	0x3fd2ac0bdefdf8a8              # double 0.29175087715692394
	.quad	0x3fe7d8efb245a99d              # double 0.74523148363850888
	.quad	0x3fea4d4c6907854e              # double 0.82193584931898456
	.quad	0x3fd8d3cd115207dc              # double 0.38792730990837554
	.quad	0x3fe1635dc3a1de02              # double 0.54337967118675601
	.quad	0x3fe360a406a6491a              # double 0.60554696367970284
	.quad	0x3fee651354acddbf              # double 0.94983831918846551
	.quad	0x3fe6904d03b3a2d6              # double 0.70511484835614158
	.quad	0x3fd88d1a43c17fd2              # double 0.38361221901686549
	.quad	0x3fe21b4aaa113c2a              # double 0.56583150116228365
	.quad	0x3fefa67be491e824              # double 0.98907274859016469
	.quad	0x3fd5745e912273f4              # double 0.33522762463854794
	.quad	0x3fd0a4fa13cc46d8              # double 0.26006938870805874
	.quad	0x3fe1ddbd3a827753              # double 0.55831777026808493
	.quad	0x3fe7bd20a825d0ae              # double 0.74183686105108904
	.quad	0x3fd2cb8324dc908a              # double 0.29367140388263435
	.quad	0x3fe1fe4750e1ea84              # double 0.56228986546860016
	.quad	0x3fe276583ca60a71              # double 0.57694637151173656
	.quad	0x3fe295f1ef932def              # double 0.5808038405606889
	.quad	0x3fd97e98bc4ff540              # double 0.398351844691053
	.quad	0x3fc4b8a0377ccf6c              # double 0.16188433369972743
	.quad	0x3fd8cac12437dc62              # double 0.38737515007909995
	.quad	0x3feb4783b673ce59              # double 0.85247979769924165
	.quad	0x3fe6c951b68172e0              # double 0.71207509656559509
	.quad	0x3fc4bbf9e5d2b6a4              # double 0.16198657724219345
	.quad	0x3fe81b56f3cecc67              # double 0.75333736056053346
	.quad	0x3fdb4ca89b875bf6              # double 0.42655387104372211
	.quad	0x3fc8d5b825757994              # double 0.1940221960930556
	.quad	0x3fec2eae42720b6f              # double 0.88069832780489132
	.quad	0x3fe6e3da9c3d0e3d              # double 0.71531420245486965
	.quad	0x3fe4c043742e7246              # double 0.64846966449437882
	.quad	0x3feecd1153ddbc68              # double 0.96253267650707829
	.quad	0x3fc86a2641937074              # double 0.19073942377042707
	.quad	0x3fcf77b10adba910              # double 0.2458401968972983
	.quad	0x3fc371148e32b5ac              # double 0.15188843673005914
	.quad	0x3fa68749296db3a0              # double 0.044000898654167786
	.quad	0x3fe32ea6d4f3518e              # double 0.59944478599440898
	.quad	0x3fb28b6363d013b0              # double 0.072439395778998827
	.quad	0x3fa01969b3083bc0              # double 0.031443884949218681
	.quad	0x3fe6d555f40fd350              # double 0.7135419623215089
	.quad	0x3fc56849e3fcee84              # double 0.16724513656832951
	.quad	0x3fd5c19ef71b0a7c              # double 0.3399426854267984
	.quad	0x3fd8417945ec6d16              # double 0.37899619892569214
	.quad	0x3fb2c3aaf48ce578              # double 0.073298153595620863
	.quad	0x3fe447f90c54f61a              # double 0.63378574760980944
	.quad	0x3fe96cfbf08b8fad              # double 0.79455372792698642
	.quad	0x3fe53a7287dcea05              # double 0.66338469062549221
	.quad	0x3fdfe7c75a2c94b4              # double 0.49852165037220719
	.quad	0x3f94ffa292c5e440              # double 0.020506420334161612
	.quad	0x3fe8ddefc5313aa1              # double 0.7770918704425932
	.quad	0x3fe6ffcdb23c1c1d              # double 0.71872601329312469
	.quad	0x3fedecdebfac0c65              # double 0.93516480861616158
	.quad	0x3fe5080a7f1e1c3e              # double 0.6572315676465974
	.quad	0x3fb1b3a34dd3b3f0              # double 0.069147306919788099
	.quad	0x3f8ae0c9c3f54400              # double 0.013124061863580394
	.quad	0x3fe17f34d6fa76cf              # double 0.54677812564815464
	.quad	0x3fd50f3313ba3256              # double 0.32905270506379247
	.quad	0x3fd60346539e1b8c              # double 0.34394987264425292
	.quad	0x3fef9bf3c162e65e              # double 0.98778713007704844
	.quad	0x3fedd572d5dbe975              # double 0.93230573434202191
	.quad	0x3fe8fb7fe914a778              # double 0.78070064090319047
	.quad	0x3fda5e9ab7265f7e              # double 0.41202419172031302
	.quad	0x3fe42772862b8c29              # double 0.62981535153483492
	.quad	0x3fd6f6de501dc166              # double 0.35881765197611626
	.quad	0x3fddbf53291d1b70              # double 0.46480254187593228
	.quad	0x3fef09b85ae2b2ed              # double 0.9699365401371246
	.quad	0x3fd5f0d936bd9132              # double 0.34282522531272541
	.quad	0x3fef555fcc070d0d              # double 0.97917165612344236
	.quad	0x3fe8ad1b6e6f3a20              # double 0.7711312443660212
	.quad	0x3fe32955e4d396e2              # double 0.59879584019355669
	.quad	0x3fe554a17d72c9e3              # double 0.66658091069831149
	.quad	0x3fe18c8ef892ef2f              # double 0.54840801763154967
	.quad	0x3fda61d9831dede2              # double 0.41222226910005422
	.quad	0x3fce2c652092c7e0              # double 0.23572982874389847
	.quad	0x3fcd8d4c081816d0              # double 0.230874542190739
	.quad	0x3fed92b2002a8bd8              # double 0.92415714294872497
	.quad	0x3feb80af13d01809              # double 0.85945848340702569
	.quad	0x3fbbba0a972008d8              # double 0.1083075159986352
	.quad	0x3feeefbcbe98d6ea              # double 0.96676480508787432
	.quad	0x3fc8dda166423a18              # double 0.19426362507916006
	.quad	0x3fe74dc0aaa6f2ad              # double 0.72824128466125659
	.quad	0x3feaf540eec5e5ba              # double 0.84243818889006339
	.quad	0x3fd33429b773a4ee              # double 0.30005877413948567
	.quad	0x3fb22b14a47e9cc0              # double 0.070969858321961787
	.quad	0x3fd97a5981f8ad2e              # double 0.39809262936133194
	.quad	0x3fd6a7abc2bdf9ba              # double 0.35398382203848267
	.quad	0x3fde4d8adbc3c276              # double 0.47348281346697918
	.quad	0x3fe2b5472f4523bf              # double 0.58462867004811148
	.quad	0x3fd214b8dee43f92              # double 0.28251477972752881
	.quad	0x3fe040ae5ddce8ec              # double 0.50789564449885694
	.quad	0x3fe2f026ac46b5d5              # double 0.5918153157014624
	.quad	0x3fd52f7b81765ee4              # double 0.33102309840022159
	.quad	0x3fb9df4eb96ba360              # double 0.10106365229479541
	.quad	0x3fd5eec69e6257a4              # double 0.34269872157289627
	.quad	0x3feb7c285f2aa993              # double 0.85890596949802711
	.quad	0x3fe865c45c64c20e              # double 0.76242273374197267
	.quad	0x3fdb3c248dc8c65e              # double 0.42554582449074541
	.quad	0x3fb1f52723e7e658              # double 0.07014698626144289
	.quad	0x3fdc419f31a05e54              # double 0.4415052399285504
	.quad	0x3fdfc0b2add8db34              # double 0.49613635041480397
	.quad	0x3fc2559d4779da7c              # double 0.14323774328268601
	.quad	0x3fcd881b8f1b1d20              # double 0.23071617591470162
	.quad	0x3fe5d5ec3ff8ac04              # double 0.68236362928780681
	.quad	0x3fddded9f2bcdf78              # double 0.46672676758634379
	.quad	0x3fe4ea8b66c41854              # double 0.6536309249065746
	.quad	0x3fe7edc0fba89b6d              # double 0.7477726855475858
	.quad	0x3fec85842052b80d              # double 0.89129835427388715
	.quad	0x3f8ca6e2568dc980              # double 0.013990181223310527
	.quad	0x3fdafd02cacc109a              # double 0.42169256023795187
	.quad	0x3fefa0254cf1b74a              # double 0.98829903629460003
	.quad	0x3fd859cd53e61804              # double 0.38048108285181592
	.quad	0x3fe030642f864992              # double 0.50590714723721164
	.quad	0x3fd3b7b01c45974c              # double 0.30808642159387456
	.quad	0x3fd9ab28131ce0b2              # double 0.4010715662620995
	.quad	0x3fec53c6e7151019              # double 0.88522668011910632
	.quad	0x3fcee97639496150              # double 0.24149968907546304
	.quad	0x3fe5adcf6bde530f              # double 0.67746707027490227
	.quad	0x3fe62d7a592e959e              # double 0.69305150431016549
	.quad	0x3f968e725680b120              # double 0.022027765779214836
	.quad	0x3fd67c4e3c3d76f0              # double 0.35133701212713131
	.quad	0x3fee18e0521e2a54              # double 0.9405366519798215
	.quad	0x3fe7e70400e28ae2              # double 0.74695015118444652
	.quad	0x3fe537f11d54d543              # double 0.66307883957657798
	.quad	0x3fc8473df2ff1134              # double 0.18967413296753366
	.quad	0x3fd5633b5ab4d356              # double 0.33418163164178816
	.quad	0x3fee4fda1e5891f9              # double 0.94724756171177582
	.quad	0x3fdf1d16357b899c              # double 0.48615031454951363
	.quad	0x3fed20c617256c68              # double 0.91025070687045417
	.quad	0x3fb868449c8457c8              # double 0.095341003620290299
	.quad	0x3fde991bde70cbca              # double 0.47809502337184695
	.quad	0x3fe24ee74fa4b7f5              # double 0.57213178210599713
	.quad	0x3fb3e11f6e008870              # double 0.077653850894906062
	.quad	0x3fda44e6fd087060              # double 0.41045546255350551
	.quad	0x3fb8a57ed1aa53e8              # double 0.096275259197070917
	.quad	0x3fd15e261978f2fc              # double 0.2713713883165807
	.quad	0x3fc8e6b53d608758              # double 0.19454064843108188
	.quad	0x3fd429a4a052e408              # double 0.31504169136638938
	.quad	0x3fe86cf290907894              # double 0.76329925761435157
	.quad	0x3fe6df2fff3b6b9d              # double 0.71474456644078865
	.quad	0x3fb001be518defb8              # double 0.062526602659942365
	.quad	0x3fe3379202ddddee              # double 0.60053349075218221
	.quad	0x3fe32fda74ef72c1              # double 0.59959147299704096
	.quad	0x3fec71653b6d1061              # double 0.88884221655508722
	.quad	0x3fd4528502b33c54              # double 0.31753659499822118
	.quad	0x3fe2b7470803ec56              # double 0.58487273755543856
	.quad	0x3fe485f4b64086b4              # double 0.6413520393000085
	.quad	0x3fc5f072bffdda04              # double 0.17140039801206808
	.quad	0x3fd5b09fccf1379c              # double 0.33890528692142552
	.quad	0x3fd72224b702fe90              # double 0.36145894882427232
	.quad	0x3fe4ba640f07b7c5              # double 0.6477527898366523
	.quad	0x3fe6f664f8ec073c              # double 0.71757744424414893
	.quad	0x3fe84946ede60bef              # double 0.75894495453428401
	.quad	0x3fc70d527c3434e8              # double 0.18009406151433116
	.quad	0x3fc530cb6d9c0f3c              # double 0.16555159427672972
	.quad	0x3fe8fdce4a3b83c5              # double 0.7809821557858575
	.quad	0x3fa3e12debd38cb0              # double 0.038827357327840928
	.quad	0x3febe6f395d47146              # double 0.87194232238429303
	.quad	0x3fd7784dea16d9c8              # double 0.36671779499320367
	.quad	0x3fe5a293416548a7              # double 0.67609560749612718
	.quad	0x3fe1ac03996baeca              # double 0.55224781002967771
	.quad	0x3fee58e455165439              # double 0.94835106485937282
	.quad	0x3fd6e6915727105a              # double 0.35782273779864726
	.quad	0x3fdd51a4747b7cd4              # double 0.45810805678588662
	.quad	0x3fe0d8de46ee83f9              # double 0.52647317746971034
	.quad	0x3fd6e7a1a68d31d0              # double 0.35788766159819563
	.quad	0x3fd612976b0cad00              # double 0.34488473371557404
	.quad	0x3fe0043c9a8ef313              # double 0.50051717936693974
	.quad	0x3fd02e8215c7bee4              # double 0.25283863188722777
	.quad	0x3fe18ca31444ff27              # double 0.54841760596170708
	.quad	0x3fd1ce34ca635e54              # double 0.27821082844227374
	.quad	0x3feb86f0b916f729              # double 0.86022220754941714
	.quad	0x3fb7ca6b5b66a450              # double 0.092932424368556754
	.quad	0x3fe4098c76b2424a              # double 0.62616561110378055
	.quad	0x3fd6c1d6ebc298ba              # double 0.35558102630092103
	.quad	0x3fdcc03ce940fcda              # double 0.44923327234932986
	.quad	0x3fe230856473e483              # double 0.56842298144978576
	.quad	0x3fdd831b26947356              # double 0.46112707870070346
	.quad	0x3fd55515aa66498c              # double 0.33331815376836782
	.quad	0x3fe1d0d8f7a2d386              # double 0.55674408308424073
	.quad	0x3fdd435167069cb6              # double 0.45723376332393728
	.quad	0x3fe9b679102912fe              # double 0.80352452427231902
	.quad	0x3fe560d20c9d1ab0              # double 0.6680689092980483
	.quad	0x3fdf34817c9df4e8              # double 0.48757970018034635
	.quad	0x3fb57ad91be7eef8              # double 0.083905762970910902
	.quad	0x3fe47a91c516a969              # double 0.63996208661891985
	.quad	0x3fb6a73ec7e53ba8              # double 0.08848945980319789
	.quad	0x3fec7cf89b3b223a              # double 0.89025526350548678
	.quad	0x3fd9692feebdcabe              # double 0.39704511942469967
	.quad	0x3febc4ba25925ab9              # double 0.86776454294416461
	.quad	0x3fe286c3622134a2              # double 0.57895058790167675
	.quad	0x3feda7672fb01235              # double 0.92668494524020295
	.quad	0x3fc30bea09401b54              # double 0.14880109264069097
	.quad	0x3fea16c175eda7b9              # double 0.81527779610518458
	.quad	0x3fda73efc26f0c3c              # double 0.41332620608972426
	.quad	0x3fe3b3105102b9ff              # double 0.61560836622612658
	.quad	0x3fdb00e0ea45031c              # double 0.42192862394226593
	.quad	0x3fe222cf6986a029              # double 0.56674929247401906
	.quad	0x3fc22e0e91fc061c              # double 0.14203054550311911
	.quad	0x3fe5fb6f950900d9              # double 0.68694285496169549
	.quad	0x3fa542c1c3ab7ed0              # double 0.041524939666258143
	.quad	0x3fec0016e63ad28f              # double 0.87501091925385477
	.quad	0x3fc1588b54acd6a0              # double 0.13551465639618687
	.quad	0x3fb73b1ac960b108              # double 0.090745615162351467
	.quad	0x3fc36f51d20bc980              # double 0.15183470493463957
	.quad	0x3fe379014dce7cf3              # double 0.60852112957573323
	.quad	0x3fee05c74782bc7a              # double 0.93820537535601933
	.quad	0x3fb073e915735988              # double 0.064268653618773652
	.quad	0x3fe4cab2858d4d5a              # double 0.64974332889907349
	.quad	0x3fe70ef684904982              # double 0.72057653323490478
	.quad	0x3fdfde373f787890              # double 0.49793797682094354
	.quad	0x3fe980f384189539              # double 0.7969911174774672
	.quad	0x3fe798890aefda20              # double 0.73737003456227867
	.quad	0x3fe913cad87e7ad5              # double 0.78366606029507102
	.quad	0x3feb547e2abd9e03              # double 0.85406406734267681
	.quad	0x3feb2c32e20be8d9              # double 0.84914535665236734
	.quad	0x3f9a7f90c27d1080              # double 0.025877248640668871
	.quad	0x3fdcd8b3fd60b8d0              # double 0.45072650665214287
	.quad	0x3fef08c470bfde1b              # double 0.96982023259528504
	.quad	0x3fef8f078a577346              # double 0.9862096502289226
	.quad	0x3fce69ec0d6716dc              # double 0.23760748533657405
	.quad	0x3fef7897943cbcb0              # double 0.98347071602429104
	.quad	0x3fde1d5591e3157a              # double 0.47054042097837334
	.quad	0x3fe359faae032c26              # double 0.60473379122538939
	.quad	0x3fc7bc29c551af78              # double 0.1854297841522301
	.quad	0x3fda86cd0a867274              # double 0.4144775965485572
	.quad	0x3fdb6c7cfe20c18c              # double 0.42849659745390833
	.quad	0x3fefdd879010b80a              # double 0.99579218042140494
	.quad	0x3fc6ba772638bb64              # double 0.17756547323503036
	.quad	0x3fe5dca3aac780c6              # double 0.68318351130803801
	.quad	0x3fec19a56fdd2cfe              # double 0.87813064430648047
	.quad	0x3fedffd8824520df              # double 0.9374811691605166
	.quad	0x3fbd10dfa8c17940              # double 0.11353872175229629
	.quad	0x3fc68fdb1253d4dc              # double 0.17626512904067837
	.quad	0x3febba7cdfab7cbb              # double 0.86651462255021927
	.quad	0x3fc2b11cd1fd6770              # double 0.14603004697238076
	.quad	0x3fc6268661eef740              # double 0.17305068761737097
	.quad	0x3fe9925d7a371314              # double 0.79911683912414099
	.quad	0x3fa2cdba81c4f460              # double 0.036725834218011455
	.quad	0x3fdcf767ab691dea              # double 0.4526004003459706
	.quad	0x3fc552bc1a65b9fc              # double 0.16658736504491845
	.quad	0x3fd2e365e9875a2a              # double 0.29512927823580759
	.quad	0x3fc0ecafef0306f8              # double 0.13222312136172554
	.quad	0x3fd7584f1e9b7eee              # double 0.36476495732311676
	.quad	0x3fe50b05f39636da              # double 0.6575956113390149
	.quad	0x3fdd97c767f0df5c              # double 0.46238885069350544
	.quad	0x3fdd1924e9161e9a              # double 0.45465967905372795
	.quad	0x3fb3a51604659d50              # double 0.076737762521237984
	.quad	0x3fd220820ef21d62              # double 0.28323413333460767
	.quad	0x3fc5948eb36131c4              # double 0.16859611281178222
	.quad	0x3fee8da9faffada4              # double 0.95479296706382799
	.quad	0x3fe168e6f4c912d3              # double 0.54405544099480563
	.quad	0x3fef7921b12ae274              # double 0.98353657343893852
	.quad	0x3fdd717366e57f64              # double 0.46004948662265677
	.quad	0x3fdde1590500a096              # double 0.46687913406868498
	.quad	0x3fed327139266a8b              # double 0.91240750467416498
	.quad	0x3f9dd5f1148dbce0              # double 0.029136435393806503
	.quad	0x3fd627f4ff6c37ec              # double 0.34618878310800372
	.quad	0x3fcd85953b6cee80              # double 0.23063912774692952
	.quad	0x3fa79a78f8992d30              # double 0.04610040697715545
	.quad	0x3fee9883d756c36b              # double 0.95611755426771816
	.quad	0x3fefef89db4adc93              # double 0.99799053984215146
	.quad	0x3febc5dd4c92475d              # double 0.86790337519981231
	.quad	0x3feb62b80bf05e70              # double 0.85580065090011992
	.quad	0x3fc5004182e06fd4              # double 0.16407030954803636
	.quad	0x3fb8e35e18546428              # double 0.097219353618485216
	.quad	0x3fea5887805a8812              # double 0.82330679959364006
	.quad	0x3fdc49ed86ce47d2              # double 0.44201219715716633
	.quad	0x3fc448135c732efc              # double 0.15844957365185752
	.quad	0x3fb70351bc37f830              # double 0.089894398166479261
	.quad	0x3fc7afeefce1aa3c              # double 0.18505656573991469
	.quad	0x3fee8a1415cde6da              # double 0.9543552804818447
	.quad	0x3fcf161e2d819470              # double 0.2428624841878988
	.quad	0x3fbc187cbea4da10              # double 0.10974864630120629
	.quad	0x3fcb6ff5354e4738              # double 0.21435418227025038
	.quad	0x3fd2ddaede1f6fc8              # double 0.29478046123199109
	.quad	0x3fdf5c88e9326c9e              # double 0.49002287648336018
	.quad	0x3fd4302767991260              # double 0.31543908230768203
	.quad	0x3fe2263bd21fc478              # double 0.56716719665395399
	.quad	0x3fdc7291e5b8fa20              # double 0.4444927924522819
	.quad	0x3fe60e7da7b6885c              # double 0.68926890140961516
	.quad	0x3fedfc3ef2529c71              # double 0.93704173401500956
	.quad	0x3fe772abd35fdf0e              # double 0.73274794849473479
	.quad	0x3fc954b8ae422720              # double 0.19789799221717264
	.quad	0x3febe27ee4ab4506              # double 0.87139839803617813
	.quad	0x3fe5e5adbe905176              # double 0.68428694934350065
	.quad	0x3fe2f309650ac8c2              # double 0.59216756567754936
	.quad	0x3fcdf9951b2292cc              # double 0.23417915177301152
	.quad	0x3fde78a029768fa0              # double 0.47611240433820434
	.quad	0x3fd23974c4f3e6ec              # double 0.28475684388796085
	.quad	0x3fdcb177a5bf874a              # double 0.44833174883216442
	.quad	0x3fe44e27e5e93d08              # double 0.63454050926694183
	.quad	0x3fe7a5acd3306a18              # double 0.73897401092409876
	.quad	0x3fe052525b441c3f              # double 0.51004903626824916
	.quad	0x3fe0f9c8bb7745e0              # double 0.53049122442660845
	.quad	0x3fce2e9961c05ee8              # double 0.23579709313411645
	.quad	0x3fe88d1677b37964              # double 0.76722262744059976
	.quad	0x3fa0b52f5cda8980              # double 0.032632331928897251
	.quad	0x3fdb8c408aafb5c4              # double 0.43043530982580713
	.quad	0x3fee11d074d95317              # double 0.93967459508948792
	.quad	0x3fe55abd91d83c69              # double 0.66732672200477083
	.quad	0x3fda683514f771c8              # double 0.41261031196134157
	.quad	0x3fe5a88b082ef9bf              # double 0.67682410810794369
	.quad	0x3fdfe2ba0945636e              # double 0.49821329980254958
	.quad	0x3fe767a267474ee6              # double 0.7314006821784147
	.quad	0x3fea883b95d3ce24              # double 0.82912997496754714
	.quad	0x3fc55b5f5e079e1c              # double 0.16685096827789969
	.quad	0x3fa7cb13c54b4dc0              # double 0.046471231302031679
	.quad	0x3fed9b95d68f7653              # double 0.92524234682395912
	.quad	0x3fe9bb22c2d7e2e9              # double 0.80409372382481792
	.quad	0x3fe4bfcdfee353ef              # double 0.64841365607082746
	.quad	0x3febccc70c90f0bf              # double 0.86874725775080452
	.quad	0x3fe3a3a2e7f3c418              # double 0.6137251406017894
	.quad	0x3fe8970c79b60023              # double 0.76843856593768967
	.quad	0x3fec929180315c9d              # double 0.89289164579067271
	.quad	0x3fd4195326fd85de              # double 0.31404570396088427
	.quad	0x3fd303a0b4f1c356              # double 0.29709642095899846
	.quad	0x3fe1e6d38b32dfce              # double 0.55942704379321539
	.quad	0x3fcb6bc9f9cfab48              # double 0.21422695825398308
	.quad	0x3fec4bc3537fed7d              # double 0.88424841221369344
	.quad	0x3fd5265d007ac4ba              # double 0.33046650931198551
	.quad	0x3fdebfb8e05da7dc              # double 0.48045179281927886
	.quad	0x3fdd165cf6aafa32              # double 0.45448993767414259
	.quad	0x3fd83d9412180eea              # double 0.37875844733228681
	.quad	0x3fe0718adf492aaf              # double 0.51386016474255836
	.quad	0x3fe8b2a8153139f7              # double 0.77180866374129564
	.quad	0x3fdabc9caf9751aa              # double 0.41776196620528572
	.quad	0x3fefc0f9123db4ab              # double 0.99230626642897357
	.quad	0x3febc0f9c36b40cf              # double 0.86730659644856611
	.quad	0x3febf4784234c003              # double 0.87359250002737132
	.quad	0x3fe2126ce1ee38a6              # double 0.56474918486653247
	.quad	0x3f635419d435e500              # double 0.0023594383689525822
	.quad	0x3fac42452a37a010              # double 0.0551931013140462
	.quad	0x3fe79163eae55adc              # double 0.7364978397189037
	.quad	0x3fe6f8fe53fe2707              # double 0.71789471058693344
	.quad	0x3fc9d1c330722c14              # double 0.20171394219900718
	.quad	0x3f85b1818f219900              # double 0.010592472248572182
	.quad	0x3fe2f29a42500a8e              # double 0.59211457206431972
	.quad	0x3fd0828a5667d6ce              # double 0.25796755254792181
	.quad	0x3f9a40ad7671a060              # double 0.02563735042022619
	.quad	0x3fe5c61d87f229f6              # double 0.68043400337165738
	.quad	0x3fe9f48ef520478d              # double 0.81110332370939064
	.quad	0x3fbc2f92be058368              # double 0.11010090960691132
	.quad	0x3fd69085971e0882              # double 0.35257091290998954
	.quad	0x3fe5c8b96387d33d              # double 0.68075246276439538
	.quad	0x3fefcadd36144fce              # double 0.99351368486758829
	.quad	0x3fdaf8d64a62a330              # double 0.42143780960263921
	.quad	0x3fd20f38e654782e              # double 0.28217909329566992
	.quad	0x3fe35a833b92a6e0              # double 0.6047989047558211
	.quad	0x3fec0191ddeccc2e              # double 0.87519162506794657
	.quad	0x3fea53a54e7a46c5              # double 0.82271066024460338
	.quad	0x3fd11d1240a4dcd8              # double 0.26739937127008551
	.quad	0x3fe44dcaf790456f              # double 0.63449619629152021
	.quad	0x3faa0b6e06aa5990              # double 0.050868452371264472
	.quad	0x3fe16d34ed298072              # double 0.54458090134359183
	.quad	0x3fbc32e590ba0828              # double 0.11015162261358624
	.quad	0x3fea4e857dd090ba              # double 0.82208513806519723
	.quad	0x3fe4d72a34a876b4              # double 0.65126524243142692
	.quad	0x3f5c40c9b8863600              # double 0.0017244310311953504
	.quad	0x3fbd5cad9b41c780              # double 0.11469540634587183
	.quad	0x3fdf73b6ee61d2e8              # double 0.49143765716080035
	.quad	0x3fe4f77171931056              # double 0.65520546133530888
	.quad	0x3fca8033d7e52144              # double 0.2070374302077288
	.quad	0x3fe54e143b0984a1              # double 0.66578113108348103
	.quad	0x3fe9490abca971e9              # double 0.79016625259424444
	.quad	0x3fe59379027ff22e              # double 0.67425203788986265
	.quad	0x3fe77a6dcc8319e5              # double 0.733694934308741
	.quad	0x3fda5c13a9722c20              # double 0.41186992213687468
	.quad	0x3fe6a41c2e0d95fc              # double 0.70753296847095681
	.quad	0x3fdb9f855c2b4d58              # double 0.43161138535397958
	.quad	0x3fa1d6cc6871a850              # double 0.034841907262333494
	.quad	0x3fd3146b1ad33bae              # double 0.29812123889581243
	.quad	0x3fd496b03401800c              # double 0.32169728354165339
	.quad	0x3fd1153fa532b73a              # double 0.26692191250446096
	.quad	0x3fcd0e1df9599428              # double 0.22699331927575028
	.quad	0x3fd598633bbf9e7c              # double 0.33742600283446911
	.quad	0x3fda94ffa9df2e24              # double 0.41534415806811098
	.quad	0x3fc69f05e4275768              # double 0.17672799721065791
	.quad	0x3fd71f7f92ce34d0              # double 0.36129750572656594
	.quad	0x3fec03131c9001c2              # double 0.87537532404535789
	.quad	0x3fe6f9fc21629715              # double 0.71801573296099497
	.quad	0x3fb5ad866312c6e0              # double 0.084679030597523575
	.quad	0x3fe64ba8a9905221              # double 0.69673569791718049
	.quad	0x3fe58893a33b3c3f              # double 0.67292196160440898
	.quad	0x3fe27a49164c54ec              # double 0.57742742877112851
	.quad	0x3feb35c9e730b058              # double 0.85031600145658626
	.quad	0x3fe99089aa75741d              # double 0.79889376919493638
	.quad	0x3fe604fcd745a26f              # double 0.68810884518923199
	.quad	0x3fecb4fbb9fe6610              # double 0.89709268881705562
	.quad	0x3fe346900302ff0a              # double 0.60236359203551726
	.quad	0x3fe10d0b27423aa4              # double 0.53284223239628092
	.quad	0x3fde3687fdac2542              # double 0.47207832119655191
	.quad	0x3fe5e77d3e2568e4              # double 0.68450796258846625
	.quad	0x3fe09ca88e042bf1              # double 0.51912334191854204
	.quad	0x3fd53f5468b8f8fa              # double 0.33199033953486856
	.quad	0x3fee5d2d43d81327              # double 0.94887412310399533
	.quad	0x3fe59b29dc852a5c              # double 0.67519085951182545
	.quad	0x3fe9632fb2331b5c              # double 0.79335770420662354
	.quad	0x3fe35cffa207e301              # double 0.60510236403123951
	.quad	0x3fd0125f52c4b2b8              # double 0.25112135966154936
	.quad	0x3feb88a662f1f83c              # double 0.86043090176804737
	.quad	0x3fe47b524582e4d9              # double 0.64005387855936668
	.quad	0x3fe0dd1a215c2167              # double 0.52698999896624066
	.quad	0x3fdafec67f2da35c              # double 0.42180025501015961
	.quad	0x3fe0478cda329dc6              # double 0.50873415581457304
	.quad	0x3f82636ddc896880              # double 0.0089787085463977068
	.quad	0x3fe447acc99cbcd1              # double 0.63374938371080181
	.quad	0x3fb100f4547ba938              # double 0.066420813203568296
	.quad	0x3fed418c5d062774              # double 0.91425150078542438
	.quad	0x3fed5bbda700228d              # double 0.9174488317231223
	.quad	0x3fe1d992c4fcb2bf              # double 0.55780924295466849
	.quad	0x3fe9be55e0420f78              # double 0.80448430824661354
	.quad	0x3fb4f934938e4900              # double 0.081927572273603033
	.quad	0x3fe81d00b2eb81c5              # double 0.75354037232687487
	.quad	0x3fc0bb18fd9b69c8              # double 0.13070976622732489
	.quad	0x3fdfc06da91501b8              # double 0.49611989509505916
	.quad	0x3fecfe9395172c59              # double 0.90607623213999056
	.quad	0x3fd47f05b5ca6018              # double 0.32025282624226881
	.quad	0x3fef1b4c6f7f3c08              # double 0.9720823457408878
	.quad	0x3faf54e1857c00c0              # double 0.061194465202790038
	.quad	0x3fba5c10b2647a60              # double 0.10296730380330521
	.quad	0x3fd70919d24ed58a              # double 0.35993047273526513
	.quad	0x3fe68e59d4e48c30              # double 0.70487681942575442
	.quad	0x3fc6b92933f317dc              # double 0.17752566372490619
	.quad	0x3fd02db4a5d23e60              # double 0.25278965180857504
	.quad	0x3fe7853e118a7fe2              # double 0.73501494813899293
	.quad	0x3fbf0c18bf58df50              # double 0.12127833053170645
	.quad	0x3fe97e1444b85d7f              # double 0.79664052411946773
	.quad	0x3fdd54f72610d306              # double 0.45831087796550241
	.quad	0x3fe7ea1f92c68ace              # double 0.74732950846768076
	.quad	0x3fa3674872aef3d0              # double 0.037897361754836489
	.quad	0x3fc498059d64d3c4              # double 0.16088934121367349
	.quad	0x3f892b64a8516b80              # double 0.01228979719797052
	.quad	0x3fddde32f783b15a              # double 0.46668695613222655
	.quad	0x3fe1319c1dca90d6              # double 0.53730588739974894
	.quad	0x3fe88b44c8dca3f2              # double 0.76700057249865794
	.quad	0x3fd1e27abe88f92a              # double 0.27944820982874552
	.quad	0x3feb50560d1a0fe6              # double 0.85355665739961917
	.quad	0x3fca3b65dc3ce134              # double 0.20493767980384237
	.quad	0x3fefe64734f912bf              # double 0.99686012598302642
	.quad	0x3fde10dbf2ee8084              # double 0.46977900241655157
	.quad	0x3fea1b0453b349df              # double 0.81579796169017615
	.quad	0x3fc8d94c7a3f1bb8              # double 0.1941314312846012
	.quad	0x3fe6622a381b0dfc              # double 0.6994830222906212
	.quad	0x3fbe25860fa29840              # double 0.1177600658580511
	.quad	0x3fd7732175fc93d8              # double 0.36640202066547323
	.quad	0x3fe1aae4e0ac50dc              # double 0.55211109048334661
	.quad	0x3fc906d1b9da29a4              # double 0.19552060675443983
	.quad	0x3fdf14cd606b8616              # double 0.48564466873185219
	.quad	0x3feb1b457e20cc13              # double 0.8470790351333356
	.quad	0x3fd57f641df93da6              # double 0.33590033461674762
	.quad	0x3fe20c01bc25c359              # double 0.5639656710392088
	.quad	0x3fe2c76f99dfa604              # double 0.58684520772402538
	.quad	0x3fdf763ff15c01d4              # double 0.49159239359144391
	.quad	0x3fea9d9b169c9d66              # double 0.83173899093973769
	.quad	0x3fea234463ac4a7c              # double 0.81680507151970926
	.quad	0x3fd55fd348445c80              # double 0.33397371346786286
	.quad	0x3fefb8c0b7483b3b              # double 0.99130283162398968
	.quad	0x3feee392d65bd312              # double 0.96527997843677071
	.quad	0x3febbfec408eda28              # double 0.86717808350551184
	.quad	0x3fedc63a067dc333              # double 0.93044759052108927
	.quad	0x3fe9732131e2ff97              # double 0.79530391448496374
	.quad	0x3fc2bd06c45ccfbc              # double 0.14639362895979768
	.quad	0x3fd339acdcc02a30              # double 0.30039521749191334
	.quad	0x3fddc2d2038e7374              # double 0.46501589152631273
	.quad	0x3fe9c55e5452dd56              # double 0.8053428313204829
	.quad	0x3fe71e09e0975003              # double 0.72241681924288093
	.quad	0x3fcf8963ff50a238              # double 0.24638032881309058
	.quad	0x3fc6a2a4f6e9da0c              # double 0.17683851295778685
	.quad	0x3fd36ea665f7c4a0              # double 0.30362853963658587
	.quad	0x3fced3f676cdc9e0              # double 0.24084358979196363
	.quad	0x3fea7aa6aa518626              # double 0.82747205033610238
	.quad	0x3fcfad61d8e77f6c              # double 0.24747870532064142
	.quad	0x3fc32c087f5b69d0              # double 0.14978128641707977
	.quad	0x3fe2cb92fe8060f1              # double 0.58735036570854338
	.quad	0x3fd4a56607f9654a              # double 0.32259512690287251
	.quad	0x3fd717625786a8be              # double 0.36080225512945308
	.quad	0x3febf45d0a4668ac              # double 0.87357952124445636
	.quad	0x3fe3d5b64370435c              # double 0.61983788653933969
	.quad	0x3fb741f67533f5f0              # double 0.090850261320120528
	.quad	0x3feb166d471d86c6              # double 0.846487654587883
	.quad	0x3fcecf7d5e72f7dc              # double 0.24070708381435579
	.quad	0x3fc706062ad6b188              # double 0.17987134067278654
	.quad	0x3fe23aa56a90ea18              # double 0.56965895475088058
	.quad	0x3fd04742bb580e64              # double 0.25434940619763879
	.quad	0x3fdc4e51fdc48ea0              # double 0.44228029043208927
	.quad	0x3fe8da59a22bff0f              # double 0.77665406870070963
	.quad	0x3fe3770e236721c3              # double 0.60828310885067827
	.quad	0x3fd097db2367a05e              # double 0.25926855523585413
	.quad	0x3fe77e826e0579a2              # double 0.73419305313636962
	.quad	0x3fc6bbc268c03a50              # double 0.17760496248998203
	.quad	0x3fb76566b5128b50              # double 0.091391009528291933
	.quad	0x3fedcc8f2a7b23ce              # double 0.93122061059067973
	.quad	0x3fd6911f41d4fdb4              # double 0.35260754994302634
	.quad	0x3fc44dff419ed694              # double 0.15863028244136912
	.quad	0x3fe4b2c724d16c6f              # double 0.6468234747984648
	.quad	0x3fd645cac5dfd7f8              # double 0.34800977061911409
	.quad	0x3fe31aab45f16a5c              # double 0.59700549755809673
	.quad	0x3fe68b454b939add              # double 0.70450081597376946
	.quad	0x3fed1d9eb24267b3              # double 0.90986571136749317
	.quad	0x3fe28bc933519410              # double 0.5795637132947622
	.quad	0x3f7caa5c46d7ad00              # double 0.0069984058913903358
	.quad	0x3fd046fcaf4b40a2              # double 0.25433270567465105
	.quad	0x3fee931130fab7fb              # double 0.95545253340037506
	.quad	0x3fdb0b6bc0bdcc5e              # double 0.42257207701113042
	.quad	0x3fd5ce1027516296              # double 0.34070209350242331
	.quad	0x3fd79e038c2f75d8              # double 0.36901940050105742
	.quad	0x3f6fd25fc58a6200              # double 0.0038844938793085593
	.quad	0x3fe32f492a3bb0fb              # double 0.59952219246545668
	.quad	0x3fd1b778749b44b2              # double 0.27682315242152378
	.quad	0x3fc35142d4bf2724              # double 0.15091739070913335
	.quad	0x3fd5c44dc3916cb0              # double 0.34010643099254434
	.quad	0x3fe095a08ebac666              # double 0.51826503636239063
	.quad	0x3fe21d87a1342af4              # double 0.56610471234429705
	.quad	0x3fe08d7796d94a36              # double 0.51726893866209056
	.quad	0x3fdbe88a72634598              # double 0.43606816454583841
	.quad	0x3fef7f38f852ff80              # double 0.98428009510824666
	.quad	0x3fc43a1ef8565988              # double 0.15802371145100502
	.quad	0x3fbf9f3bf3a90138              # double 0.12352347086653459
	.quad	0x3fe7c3fe50827885              # double 0.74267497753659539
	.quad	0x3fd824ddeae6811c              # double 0.37725017489903379
	.quad	0x3feb66e157db75a6              # double 0.85630862388250217
	.quad	0x3fcd3969d18ab9bc              # double 0.22831461650407714
	.quad	0x3fd4bfeb626340ce              # double 0.32421383484053201
	.quad	0x3fe351232d5f2958              # double 0.60365446912445986
	.quad	0x3f9a2238c8ba5560              # double 0.02552117085595762
	.quad	0x3fdc4bb8d4cb4598              # double 0.44212170391718919
	.quad	0x3fee4c0ab53eb277              # double 0.94678244971653569
	.quad	0x3fdcb65b8efc9b72              # double 0.44863022769498351
	.quad	0x3fecdd25c41bc87d              # double 0.90199554731795184
	.quad	0x3feb6a897ea14ea1              # double 0.85675501568262658
	.quad	0x3fd7c92331fc8102              # double 0.37165145760992868
	.quad	0x3fe0c5cb3ab5d0b4              # double 0.52414475886191392
	.quad	0x3feb036564bcd2a5              # double 0.84416455912886035
	.quad	0x3fc2103745b051bc              # double 0.14111987021227701
	.quad	0x3fec8aa8c04958ac              # double 0.89192616992911188
	.quad	0x3fb1376607a1c310              # double 0.067251564849140744
	.quad	0x3fd1f953fc255e12              # double 0.28084277747754627
	.quad	0x3fe16cf9882a3511              # double 0.54455257982923133
	.quad	0x3fdb38d0cd3c9102              # double 0.42534275095592033
	.quad	0x3fe5e25c3795e3e9              # double 0.68388186317963318
	.quad	0x3fe3302405029f60              # double 0.59962655047000268
	.quad	0x3fd7e802f42dd104              # double 0.37353586049654575
	.quad	0x3fe3275b8adbe8b8              # double 0.59855439301397606
	.quad	0x3fc87dc0c1b41a5c              # double 0.19133767564945259
	.quad	0x3fe89cd3ff8e38b3              # double 0.76914405739969138
	.quad	0x3fef4d261d6af855              # double 0.97816758866953057
	.quad	0x3fb5b2e751033c48              # double 0.084761101988292897
	.quad	0x3fdeef46a36eaae6              # double 0.48335424385247305
	.quad	0x3fc8f1dfb6684c90              # double 0.19488140493976802
	.quad	0x3fe90cdb72177e9f              # double 0.78281948360013931
	.quad	0x3fdf6c89148c957e              # double 0.49099947935822985
	.quad	0x3fe73a02f728694b              # double 0.72583149216669918
	.quad	0x3fddcb2f00f675a0              # double 0.46552634328858211
	.quad	0x3fce3b4aa3ce1350              # double 0.23618443487444063
	.quad	0x3fe2cb243f1ebb1e              # double 0.58729755714543663
	.quad	0x3fc6349592569218              # double 0.17347974439066216
	.quad	0x3fe2ff08aa95678d              # double 0.59363206212150177
	.quad	0x3fc436c96f5fcce4              # double 0.15792196214861243
	.quad	0x3fd1bcb43c927fe0              # double 0.27714258113155488
	.quad	0x3fed3753e5a8de0b              # double 0.91300387244604175
	.quad	0x3fefa96b4bb609b4              # double 0.98943104541131399
	.quad	0x3fe1842fbc79bc72              # double 0.54738604365947041
	.quad	0x3fe77616a679050f              # double 0.73316509737210989
	.quad	0x3fc59659c0b010a4              # double 0.16865083607274756
	.quad	0x3fd0eb120782c284              # double 0.26434756024813333
	.quad	0x3fdd366b227ab4ba              # double 0.4564464413368331
	.quad	0x3fd4a01c58a73f38              # double 0.32227238328504226
	.quad	0x3fc3ce3e1d38d918              # double 0.15473152567728543
	.quad	0x3fc6c31006d99288              # double 0.1778278382727374
	.quad	0x3fe375c9d7cc3a74              # double 0.6081284727859626
	.quad	0x3fe8ba8cb3911b8e              # double 0.77277216979642716
	.quad	0x3fdae806066021d8              # double 0.42041159269913697
	.quad	0x3fef9dda9abe975e              # double 0.98801927779707532
	.quad	0x3fe2236323a00fe9              # double 0.56681973417334774
	.quad	0x3fe5630995ffbf2b              # double 0.66833953186685358
	.quad	0x3feac2f7921d0484              # double 0.83629969156039907
	.quad	0x3fcfbda521d425f8              # double 0.2479750075511189
	.quad	0x3fd615cb384c2e90              # double 0.34508018968401988
	.quad	0x3fdf0808038c5258              # double 0.48486519190308774
	.quad	0x3fe2d56cfe5606bd              # double 0.58855294871337771
	.quad	0x3fc10fc90028d74c              # double 0.13329422481336406
	.quad	0x3fe86f3b405b6621              # double 0.76357805795413836
	.quad	0x3fc47642495958b4              # double 0.15985897618765466
	.quad	0x3fdfe119b7a7fb6a              # double 0.49811404166387396
	.quad	0x3fe6de4efcbcdad5              # double 0.71463727343401706
	.quad	0x3fdecb74334b08fc              # double 0.48116784104435317
	.quad	0x3fd5b53f528e6288              # double 0.33918746053817772
	.quad	0x3fed623fd06fee0b              # double 0.91824331961055472
	.quad	0x3fe86931594b1d1e              # double 0.76284091415519462
	.quad	0x3fda2000d9339abc              # double 0.40820332728473452
	.quad	0x3fed37fe3d99e001              # double 0.91308509856662579
	.quad	0x3fe5ebfc36a33888              # double 0.68505678817179305
	.quad	0x3fceea4b36ce3170              # double 0.24152507949873891
	.quad	0x3fd56c299dd95f62              # double 0.33472671904518425
	.quad	0x3feb4f7859ce5c4c              # double 0.85345094242337316
	.quad	0x3fb81ddc4a8bd680              # double 0.094205635261312536
	.quad	0x3fde4321d477b1da              # double 0.47284742115769307
	.quad	0x3fcfa91cda870d3c              # double 0.24734841032305066
	.quad	0x3fea81d4c029b952              # double 0.8283485177214891
	.quad	0x3fc3462b2e160174              # double 0.15057887792864799
	.quad	0x3fd7720a3e349b86              # double 0.36633544993167566
	.quad	0x3fc0002f5cab4ec4              # double 0.12500564598905417
	.quad	0x3feae884c36609b2              # double 0.84088361896311015
	.quad	0x3f9fbe7395276c20              # double 0.030999952295911126
	.quad	0x3fdeb867d2de2dd6              # double 0.48000522224967079
	.quad	0x3fd68d8c4d12644c              # double 0.35238940741107139
	.quad	0x3fe35b41f9d9d5c3              # double 0.60488985823638364
	.quad	0x3fd891d8dc0938b6              # double 0.38390180099385007
	.quad	0x3fc84575b60b2348              # double 0.1896197451481163
	.quad	0x3fe1892098922eef              # double 0.54798917578724893
	.quad	0x3fd472445f1ac7a2              # double 0.3194743088489479
	.quad	0x3fe358d1ca246e9e              # double 0.604592222985463
	.quad	0x3feba8bf314def52              # double 0.86434898023387974
	.quad	0x3fea97757a6f7ea1              # double 0.83098863518894828
	.quad	0x3fd4822b154fd15e              # double 0.32044484215955105
	.quad	0x3fe5c873757587bb              # double 0.68071911755782055
	.quad	0x3fea4da5d6ca7b08              # double 0.82197849227290565
	.quad	0x3fe3524322649808              # double 0.60379177777645143
	.quad	0x3fc0d9f40cd0e000              # double 0.13165140748765225
	.quad	0x3fee7410114c2db7              # double 0.95166781786377086
	.quad	0x3fc1143dc99654a8              # double 0.13343021720053128
	.quad	0x3fd5c03995dc738c              # double 0.33985747942806976
	.quad	0x3fdb6617977929b6              # double 0.42810621063531629
	.quad	0x3feee0ef9e12eb1d              # double 0.96495800851639368
	.quad	0x3fdde3779cc650a6              # double 0.46700849828745061
	.quad	0x3f9207810913a000              # double 0.017606750658984538
	.quad	0x3fe43cbcad6ab24c              # double 0.63241418714967201
	.quad	0x3fe7d844ab4b8ce7              # double 0.74514993148877984
	.quad	0x3fea4cb1051ecb1f              # double 0.82186175346427948
	.quad	0x3fe852801e0e089f              # double 0.76007085676271291
	.quad	0x3fee8cc788dc34f7              # double 0.95468498926643874
	.quad	0x3fec86512ca24b84              # double 0.89139612882205243
	.quad	0x3fe5bc1f5bcc2c01              # double 0.6792141716881589
	.quad	0x3fc13a0a65e50e3c              # double 0.13458375907258524
	.quad	0x3fe623fec7658c97              # double 0.69189394898093581
	.quad	0x3fcad7bf02bc7abc              # double 0.20970904954534386
	.quad	0x3fe08edfba8c888e              # double 0.51744066653579224
	.quad	0x3fe003074ffac7ee              # double 0.50036969777124596
	.quad	0x3feb0071b3c2b97b              # double 0.84380421742916611
	.quad	0x3fa2abd0d068caf0              # double 0.036467099609941545
	.quad	0x3fe6ca3ef4242661              # double 0.71218822177725027
	.quad	0x3f6302d52f9af700              # double 0.0023206867016075661
	.quad	0x3feced92a0cc0297              # double 0.90400058179519049
	.quad	0x3fed53ff981ba06e              # double 0.91650371273591502
	.quad	0x3fec8b7f57c9ebd9              # double 0.89202849527589045
	.quad	0x3fe62a80394d77a6              # double 0.69268809501567286
	.quad	0x3fe2b7c2df1472ed              # double 0.58493178911484522
	.quad	0x3fcaa00c43048a50              # double 0.20800927421903959
	.quad	0x3fe6ea168b1f14eb              # double 0.71607520267630542
	.quad	0x3fadd0f0d4e599a0              # double 0.05823471640433131
	.quad	0x3fd0d90681e9167e              # double 0.26324618040630543
	.quad	0x3fe1fe5686b69ad1              # double 0.5622971182936799
	.quad	0x3fee955387a00e1b              # double 0.95572830666828013
	.quad	0x3fce174383f553c4              # double 0.23508495276715113
	.quad	0x3fe89df3a0570f22              # double 0.76928120914860565
	.quad	0x3febeca41f69e9f9              # double 0.87263685355657039
	.quad	0x3fe7bd5b9df3a90f              # double 0.74186497545204755
	.quad	0x3fdbb907da7f6c04              # double 0.43316837632818328
	.quad	0x3fec489d47ff2e1a              # double 0.88386406003832296
	.quad	0x3fd371a5064b933e              # double 0.30381131758467805
	.quad	0x3fbb04100621e878              # double 0.10553074025838949
	.quad	0x3fd147df74a415dc              # double 0.27001177206724747
	.quad	0x3fe21f1d5d3015e6              # double 0.56629818154095513
	.quad	0x3fdc6b8c9a3ef8aa              # double 0.44406428397258912
	.quad	0x3fe4863ee19ecdfd              # double 0.64138740602942301
	.quad	0x3fe705082adb87e7              # double 0.71936424608815919
	.quad	0x3fdba8131b7a1690              # double 0.43213346179286649
	.quad	0x3fe79349a09e0597              # double 0.73672944422303288
	.quad	0x3fdbaa5ddf067026              # double 0.43227335719871218
	.quad	0x3fdd8133432ede4e              # double 0.46101075707290284
	.quad	0x3fd919c3d5bc2892              # double 0.39219756958539975
	.quad	0x3fe98c7ae8a827db              # double 0.79839845124046904
	.quad	0x3fe4c85e513f7d39              # double 0.64945903652907255
	.quad	0x3fe007e399485582              # double 0.50096301973341917
	.quad	0x3fe013bdef2d048d              # double 0.50240990366013849
	.quad	0x3fbc2411d2400068              # double 0.10992537863785545
	.quad	0x3fe85b23cd9d9483              # double 0.761125470726839
	.quad	0x3fd0d9696d53a304              # double 0.26326976467548513
	.quad	0x3fe82e9befe9bf15              # double 0.75568959100744115
	.quad	0x3fe94a3793ad6512              # double 0.79030970423915137
	.quad	0x3fd21d4a4b4b0fee              # double 0.2830377326283714
	.quad	0x3fdd702e261a3364              # double 0.45997194024021426
	.quad	0x3fec0df8f30ea3cf              # double 0.87670562240702476
	.quad	0x3fee1e073e99beef              # double 0.94116556383775485
	.quad	0x3fc77fd3115ee458              # double 0.18358839367081958
	.quad	0x3fc1f875bd033bec              # double 0.14039489487774348
	.quad	0x3fe3d601c3b25f64              # double 0.61987388822579392
	.quad	0x3fdf60caab415bc2              # double 0.49028269504691135
	.quad	0x3fede35003925782              # double 0.93399811456286863
	.quad	0x3fd2b1ee733def26              # double 0.29211007360548746
	.quad	0x3feb75f8ef9ba037              # double 0.85815092848225205
	.quad	0x3fe39c49795a4abe              # double 0.61282800389957237
	.quad	0x3fb60407efb7f730              # double 0.085999008202602977
	.quad	0x3fe1ddf6b14b1813              # double 0.55834517123799043
	.quad	0x3fadde19c203b2b0              # double 0.058335118230251282
	.quad	0x3feb955694dbd329              # double 0.86197976182902381
	.quad	0x3fece0078dd11e49              # double 0.90234735201460936
	.quad	0x3fe4e8b9bd5385c8              # double 0.65340888002190756
	.quad	0x3fda606c9821118c              # double 0.41213526588787697
	.quad	0x3fd48c14603675d2              # double 0.32104977985167438
	.quad	0x3fce2159679b45e8              # double 0.23539273795044768
	.quad	0x3fe228f0e5b86895              # double 0.56749768130545653
	.quad	0x3fdb9a13e88b1804              # double 0.43127916058836058
	.quad	0x3fe34384b7d91b17              # double 0.60199199588609786
	.quad	0x3fdd84d1ab647d38              # double 0.46123162972976983
	.quad	0x3fe12fae61a43bd0              # double 0.53707045622456384
	.quad	0x3fceafcaa36b979c              # double 0.2397397325468632
	.quad	0x3fc6d591bc0bd130              # double 0.17839261705342713
	.quad	0x3f86954826b072c0              # double 0.011026920014097441
	.quad	0x3fe4c9a4aef1f950              # double 0.64961465996729295
	.quad	0x3fc573c133fa76e4              # double 0.16759505308157607
	.quad	0x3fd49749440b0ff2              # double 0.32173377652020385
	.quad	0x3fde097898339ff8              # double 0.46932806838458374
	.quad	0x3fece59d04678772              # double 0.90302897320019171
	.quad	0x3f665039fd19eb00              # double 0.0027238018599836655
	.quad	0x3fae2ee9203dae50              # double 0.058951649842893361
	.quad	0x3fd5a920032acf18              # double 0.33844757375048706
	.quad	0x3fd9998c2752e632              # double 0.39999679413049016
	.quad	0x3feb7c3655cddcaa              # double 0.85891262777922361
	.quad	0x3fe08d3cea85c9f9              # double 0.51724096112439988
	.quad	0x3fdf155bf19dfdce              # double 0.48567865939545818
	.quad	0x3fed4a54b33b620f              # double 0.91532359129183927
	.quad	0x3fe8da640fb517b3              # double 0.77665904109811945
	.quad	0x3fe7bde3f46621d2              # double 0.74192998632593743
	.quad	0x3fcdeea4224d3f14              # double 0.23384524989023048
	.quad	0x3fe93b247fe5f2b5              # double 0.78846955280422171
	.quad	0x3fef221018aae91c              # double 0.97290806596655299
	.quad	0x3fe9ddca4dfe1a3b              # double 0.80832400544097227
	.quad	0x3fefb2b038fed701              # double 0.99056254512717611
	.quad	0x3fe5379824b9a586              # double 0.66303641484152886
	.quad	0x3fc1b96897867f34              # double 0.13847072027874108
	.quad	0x3fe60cd54f88f817              # double 0.68906655821024543
	.quad	0x3fea03c6654076d6              # double 0.8129608132910231
	.quad	0x3fe7d38774ab33a2              # double 0.74457142626635098
	.quad	0x3fe4cd412ada1ece              # double 0.65005548829591375
	.quad	0x3fde0a25468457d6              # double 0.46936923872396841
	.quad	0x3fd1a5fa449ed894              # double 0.27575546933383888
	.quad	0x3fe766106f979dca              # double 0.73120900912629705
	.quad	0x3fe22294261aa140              # double 0.56672103349868763
	.quad	0x3fb77889cacd38a8              # double 0.091683017742271944
	.quad	0x3fce53dae04743d4              # double 0.23693405104725562
	.quad	0x3fb7388a459e9dc0              # double 0.090706483838054019
	.quad	0x3fdecd7b5f4c13c2              # double 0.48129162126889125
	.quad	0x3feb61002437fd31              # double 0.85559088777509917
	.quad	0x3fac5178d8387310              # double 0.055309082407097532
	.quad	0x3fe8aa8a51c142cd              # double 0.77081790893324753
	.quad	0x3fc0b0f060011708              # double 0.13039974868495841
	.quad	0x3fc5c865d849fa9c              # double 0.1701781564806496
	.quad	0x3fd602ca3a04f6c0              # double 0.34392028490024629
	.quad	0x3fe3e261c2c88bbb              # double 0.62138450664166756
	.quad	0x3fdb5d1f3a768e0c              # double 0.42755871495521158
	.quad	0x3fe09d4cf83645bc              # double 0.51920174101740413
	.quad	0x3fec9ef2baef1dfd              # double 0.8944028521590891
	.quad	0x3fd53b189170e7d6              # double 0.33173193171716997
	.quad	0x3fb29b282ff97108              # double 0.072680007660384516
	.quad	0x3fe9a0d1403f6f3f              # double 0.80088102863690114
	.quad	0x3fe376e92cc7b5e7              # double 0.60826548334233344
	.quad	0x3fec02a82a241d3a              # double 0.87532432776143954
	.quad	0x3feac3b9b5f5654f              # double 0.83639226473602857
	.quad	0x3fd83b796575bd90              # double 0.37863001735873869
	.quad	0x3fea74a6b8403508              # double 0.8267396544121377
	.quad	0x3fc957fe6184bd20              # double 0.19799785386701618
	.quad	0x3fe8a30fb407d55d              # double 0.76990494882799576
	.quad	0x3fe4cdb019642ad3              # double 0.65010838469728538
	.quad	0x3fc555e1c18d2a3c              # double 0.16668340636017998
	.quad	0x3fea2dfe793ca071              # double 0.81811450652186413
	.quad	0x3fe2f1add6600c68              # double 0.59200183744577561
	.quad	0x3fd14dc7ba330220              # double 0.27037232574005721
	.quad	0x3fb5e475e8b32560              # double 0.085517281829330383
	.quad	0x3fceb62debb990b8              # double 0.23993467340472363
	.quad	0x3fdc2e4477bdb522              # double 0.44032394116841733
	.quad	0x3fd47a13eb2cd170              # double 0.31995103803935532
	.quad	0x3febbabf484e1ed5              # double 0.86654628870106853
	.quad	0x3fee994226ae0d63              # double 0.95620830111185418
	.quad	0x3feb53c605be85f3              # double 0.85397626039428898
	.quad	0x3fde726161d4b0ca              # double 0.47573122552672642
	.quad	0x3f64f8661f5d5800              # double 0.0025598520832472715
	.quad	0x3fe1b3924c5b5589              # double 0.5531703463881722
	.quad	0x3fd0f11067ed16ca              # double 0.26471338414226564
	.quad	0x3fd644e4f895115c              # double 0.34795498157133919
	.quad	0x3feb461cded4582d              # double 0.85230868836766194
	.quad	0x3fd696295eef8a1a              # double 0.35291513701500465
	.quad	0x3fe437b9636b75b2              # double 0.63180226724550992
	.quad	0x3fcbc3d908d01610              # double 0.21691430025400438
	.quad	0x3fdc4d24d57f92de              # double 0.44220848893591647
	.quad	0x3fe629b85261684f              # double 0.69259277429524413
	.quad	0x3fc3848bfb732cf0              # double 0.15248250749423375
	.quad	0x3fe67a4c0d360b7d              # double 0.70242884235663861
	.quad	0x3fb1999f03df8cf8              # double 0.068750322766891858
	.quad	0x3fe3bf50052bdd66              # double 0.6171035862925407
	.quad	0x3fe124f09fe3dc12              # double 0.53575926998644463
	.quad	0x3fe5cfed1cfd8b2f              # double 0.68163161909283143
	.quad	0x3feb6d2dc566c0f9              # double 0.85707748942334583
	.quad	0x3fd7942100689016              # double 0.36841607131850773
	.quad	0x3fe521a172f6ef69              # double 0.66035530523320773
	.quad	0x3fed56d2aa1c6fac              # double 0.91684849953479874
	.quad	0x3fefa19bb5341d92              # double 0.98847756758998373
	.quad	0x3fcebbf02b2d4070              # double 0.24011041744461492
	.quad	0x3fdb98d66268425a              # double 0.43120345697483276
	.quad	0x3fe5e6323cbdb5e7              # double 0.68435012687194507
	.quad	0x3fd3410c5fa1ebd2              # double 0.3008452352439096
	.quad	0x3fd5d0110e2f6a36              # double 0.34082437882685512
	.quad	0x3fe04427b79f461f              # double 0.50831971992210245
	.quad	0x3fdb2c6b33b3eb48              # double 0.42458610581495693
	.quad	0x3fc80a668fbf5508              # double 0.18781740206637942
	.quad	0x3fe1f692dfc32749              # double 0.56134933188989422
	.quad	0x3fd5f93d3df9c51c              # double 0.34333735515891006
	.quad	0x3faaf3e6d335a8f0              # double 0.052642071993277528
	.quad	0x3fbc467677ea7b60              # double 0.11045017650256517
	.quad	0x3fc355b6a9ba7fd4              # double 0.1510532692673211
	.quad	0x3fe6208e4fcb63ba              # double 0.69147410950528543
	.quad	0x3fde515f6005a492              # double 0.47371658684876039
	.quad	0x3feb243ebd2b993c              # double 0.84817444751096315
	.quad	0x3fc59ad1d9f0acc0              # double 0.16878722325905038
	.quad	0x3fd5f5fc2771c21a              # double 0.34313873149861396
	.quad	0x3feba7636cf29084              # double 0.86418315199672735
	.quad	0x3fe1d6ba71ae22b5              # double 0.5574619503323307
	.quad	0x3fe56250d301eb99              # double 0.66825143062975478
	.quad	0x3fdb4b0d46bc871c              # double 0.42645580203871858
	.quad	0x3fdabd1592dae248              # double 0.41779078809080206
	.quad	0x3fe93a797ae90183              # double 0.78838800435919187
	.quad	0x3fcd769a6c2fcec0              # double 0.2301819828277214
	.quad	0x3fd2ae626808fe50              # double 0.29189357909851754
	.quad	0x3fec21f36dad5488              # double 0.87914439603140782
	.quad	0x3fd907baf18535fc              # double 0.39109681688282172
	.quad	0x3fe78eceae11c725              # double 0.73618253705919712
	.quad	0x3fd12d59d4516d92              # double 0.26839299902140923
	.quad	0x3fe56068f225e8c3              # double 0.66801879210040516
	.quad	0x3feceea42e2c1bbd              # double 0.90413102167155268
	.quad	0x3fcc7b3e3c7cfde0              # double 0.22251108125236296
	.quad	0x3fc601b0483062f0              # double 0.17192653202871311
	.quad	0x3fee9861c0cb80ba              # double 0.95610129981289238
	.quad	0x3fee13cfa4ebbba9              # double 0.93991834841823618
	.quad	0x3fed0ee44baa077f              # double 0.90806784418258235
	.quad	0x3fd6bb6e8d65157e              # double 0.35518993194667547
	.quad	0x3feb323a7f302fc4              # double 0.84988140908671327
	.quad	0x3fd8ec633812aed4              # double 0.38942795253636331
	.quad	0x3fb587bc5a0ebfc0              # double 0.084102413164827361
	.quad	0x3f91ce4ad66a5120              # double 0.017388505303260193
	.quad	0x3fe1b23013a851bd              # double 0.55300144042353561
	.quad	0x3fd84913df8ec6f8              # double 0.37946030456360758
	.quad	0x3fdcd79f4a7d9ba4              # double 0.45066053652265681
	.quad	0x3fe4398c26e09734              # double 0.63202483742927607
	.quad	0x3febe0b341b29492              # double 0.87117922622259614
	.quad	0x3fca585a6b4c92dc              # double 0.20582132567610401
	.quad	0x3fda3bf20e6b3e52              # double 0.40990878494355798
	.quad	0x3fee5b19c071451a              # double 0.94862067781847093
	.quad	0x3fd22be9c3ca6b20              # double 0.28393024559197677
	.quad	0x3fdf6a3610dc347e              # double 0.49085761686803397
	.quad	0x3fc219c0ab234788              # double 0.14141090732897177
	.quad	0x3fe92cd3893b604b              # double 0.78672196200478461
	.quad	0x3fdc8e97c978d748              # double 0.44620318102839862
	.quad	0x3fca08d82427c4e4              # double 0.20339490666768889
	.quad	0x3fe2f24b35554c0d              # double 0.59207687775267603
	.quad	0x3fe86e529b412300              # double 0.76346712420590279
	.quad	0x3fd69a51d128726a              # double 0.3531689207609704
	.quad	0x3feb308ffb1af1a5              # double 0.84967803043359835
	.quad	0x3fbc0011ac7845e0              # double 0.1093760534352195
	.quad	0x3fef7b02f7c30b15              # double 0.98376606360429497
	.quad	0x3fc8cdb4fc22861c              # double 0.19377767859718709
	.quad	0x3fe9393b5c37d80c              # double 0.7882363129745058
	.quad	0x3fe8f50a5fcb0a1e              # double 0.77991217336267815
	.quad	0x3fef903bcb616e8d              # double 0.9863566372182092
	.quad	0x3fe8777ad4708646              # double 0.76458493702029595
	.quad	0x3fea14a5de1cf8fe              # double 0.81502049809913024
	.quad	0x3fa34fff6ce2ceb0              # double 0.037719709436172422
	.quad	0x3fa7d879e7f07a70              # double 0.04657345730105511
	.quad	0x3fe008b4180518d6              # double 0.50106243792904581
	.quad	0x3fda065b076d8570              # double 0.40663791394589222
	.quad	0x3fd863cf6b570c86              # double 0.38109193308282163
	.quad	0x3fe5823661d1958f              # double 0.6721450720330483
	.quad	0x3fdde8e015fd97a8              # double 0.46733858249205662
	.quad	0x3fe2e12b6fa76d52              # double 0.58998653228210629
	.quad	0x3fedd112f1c59c82              # double 0.93177172871664049
	.quad	0x3fbd2dcb20e05b88              # double 0.1139800029053345
	.quad	0x3fd2bd19f29335e0              # double 0.29279183091133909
	.quad	0x3fe43d68293e6bed              # double 0.63249595694958105
	.quad	0x3fe8d6e1ad937eda              # double 0.77623065854637763
	.quad	0x3fe4d975b6707df8              # double 0.65154538757991443
	.quad	0x3fe058f495695b00              # double 0.51085881406729072
	.quad	0x3fe48ca49360bce1              # double 0.64216831955664244
	.quad	0x3fe6f411a9adbde6              # double 0.71729357853285758
	.quad	0x3fe44d0ee8b85edc              # double 0.63440652325786173
	.quad	0x3fece9780e134bd5              # double 0.90349962948891493
	.quad	0x3fd2f16d07d5d470              # double 0.2959854675785385
	.quad	0x3fe694a2c89e3869              # double 0.70564402754986333
	.quad	0x3fe1d2838e12f575              # double 0.55694749592627935
	.quad	0x3fd916f6f3b41ece              # double 0.39202665137461856
	.quad	0x3fe8ae93db4520aa              # double 0.77131073785951298
	.quad	0x3fe4ec3864a0b91f              # double 0.65383548406478897
	.quad	0x3fe7619bd6974f65              # double 0.73066512977900955
	.quad	0x3fe3e45408ee4d09              # double 0.62162210220631764
	.quad	0x3fc47ca582df86e4              # double 0.16005391016283632
	.quad	0x3fe638b39ece3d08              # double 0.69442158714983382
	.quad	0x3fe94523cd6247c0              # double 0.78968992342037581
	.quad	0x3fe501f9ecc55f4c              # double 0.65649124378521995
	.quad	0x3feaf3a22283e284              # double 0.84224039784665238
	.quad	0x3fb0cdb836d94750              # double 0.065639031782919632
	.quad	0x3fdbc40f44f789fa              # double 0.43384153113416313
	.quad	0x3fefba822c7b1b14              # double 0.99151714980766536
	.quad	0x3fd115b1cf546076              # double 0.26694913146048493
	.quad	0x3fd9e9a3f81668f8              # double 0.40488528468416929
	.quad	0x3f97bcc27e14c8e0              # double 0.023180998750100268
	.quad	0x3fe9cacf009aaa98              # double 0.80600690954209409
	.quad	0x3fbf09b662a81540              # double 0.1212419501171853
	.quad	0x3feca4423921e9d2              # double 0.89505110891996709
	.quad	0x3fd8d28f83879536              # double 0.38785159916581635
	.quad	0x3fd7320af27bb75a              # double 0.36242936782843105
	.quad	0x3fdc58fd152c7526              # double 0.44293143337002261
	.quad	0x3fc13e75b8f60390              # double 0.13471862345980101
	.quad	0x3fa76af6d044ea20              # double 0.045737946437345522
	.quad	0x3f9392140bb576e0              # double 0.019111932005549614
	.quad	0x3fda15d1aa263be4              # double 0.4075817262282142
	.quad	0x3fe08781a9cc46c8              # double 0.5165413204542455
	.quad	0x3fedd233828c67ce              # double 0.93190932748552213
	.quad	0x3feef99ce5a62d3c              # double 0.96797032216401346
	.quad	0x3fb6506c07e87c40              # double 0.087164642267894443
	.quad	0x3fec75308632eabc              # double 0.88930536471101317
	.quad	0x3fd8f7264db57c68              # double 0.39008481587183619
	.quad	0x3fc4fbbd10493338              # double 0.16393245024883085
	.quad	0x3fc50c20855e6f78              # double 0.16443258773949387
	.quad	0x3fd2949ab9db8b66              # double 0.29032009267955627
	.quad	0x3fecc46bfc4b1361              # double 0.89897727275875294
	.quad	0x3fd6096881ebd296              # double 0.34432423293700631
	.quad	0x3fc7a17e4b401488              # double 0.18461588548976615
	.quad	0x3fd3a611db1bdd9c              # double 0.30701109311436325
	.quad	0x3fe065bd3783b582              # double 0.51241932718919281
	.quad	0x3fe9b40d84aa99bd              # double 0.80322910224349864
	.quad	0x3f89dedf6bc44500              # double 0.01263212726238061
	.quad	0x3feeb6c20b2b44be              # double 0.959809324087608
	.quad	0x3fdb62ba1e85a7d4              # double 0.42790081959412629
	.quad	0x3fe227244a1181d9              # double 0.56727804628831813
	.quad	0x3fe6db758b52aad3              # double 0.71428944789416915
	.quad	0x3fcf0c074f4885b0              # double 0.2425545823216857
	.quad	0x3fe51091c739d441              # double 0.65827263747508635
	.quad	0x3fea42b0e745ac2b              # double 0.82064099474280761
	.quad	0x3fd222fc237fc72a              # double 0.28338530985557731
	.quad	0x3fd92de29a8cba0c              # double 0.39342560856576436
	.quad	0x3fd5ce95135fc2c0              # double 0.3407337845992906
	.quad	0x3fc780668de0a62c              # double 0.18360597541441004
	.quad	0x3fe748ba8e24011a              # double 0.72762801896900275
	.quad	0x3fc61fab0e1df510              # double 0.17284143628413817
	.quad	0x3fec60f3082838c5              # double 0.88683463662325634
	.quad	0x3fc6307adf034a2c              # double 0.17335449113177626
	.quad	0x3fd99f6923dd9192              # double 0.40035465719690777
	.quad	0x3fc111482f1bead0              # double 0.13333990383383432
	.quad	0x3fdc7a87183be7e4              # double 0.44497849814035662
	.quad	0x3fef2393eafa1c32              # double 0.97309299367851154
	.quad	0x3fda8987a56a0878              # double 0.41464415696839962
	.quad	0x3fd8c88e50670eda              # double 0.38724096156896126
	.quad	0x3fd09d478b26cd4c              # double 0.25959957684536472
	.quad	0x3fe1cae2bc7191d2              # double 0.55601631932636963
	.quad	0x3fb1e991744f4ea8              # double 0.06997021760553912
	.quad	0x3fe6e80c535f5485              # double 0.71582618983906399
	.quad	0x3fef1ca296949d1e              # double 0.97224549684770856
	.quad	0x3fe31028196e8c9b              # double 0.59572224585680844
	.quad	0x3fd670e278a05852              # double 0.35063993244091762
	.quad	0x3fbcb76a27e183c0              # double 0.11217368577628317
	.quad	0x3fed7e756a9ae5d7              # double 0.9216868478899255
	.quad	0x3fdb893eebb58098              # double 0.43025181787926092
	.quad	0x3fa3611eaff87dd0              # double 0.037850340824885031
	.quad	0x3fef33b28059f748              # double 0.97506070202482764
	.quad	0x3fd1b0bf4dbee352              # double 0.27641279785489303
	.quad	0x3fd005189f1aa39e              # double 0.25031104600435039
	.quad	0x3feab984eb5d578a              # double 0.83514638871814495
	.quad	0x3feb1004a42b3187              # double 0.84570533813671112
	.quad	0x3fee40dbbcc7cd89              # double 0.94541727896869177
	.quad	0x3fb912d0cb712be0              # double 0.097943353336787719
	.quad	0x3fc9c363ee0225a8              # double 0.20127534028533245
	.quad	0x3fe84847adfa884d              # double 0.75882324199870654
	.quad	0x3fee67a387056870              # double 0.95015121814073034
	.quad	0x3fa63b16e5fd38e0              # double 0.043419566702697088
	.quad	0x3fd2b98b473bc9fc              # double 0.29257471043015904
	.quad	0x3fbeb2382b3471b8              # double 0.11990691237264783
	.quad	0x3fec9a7526df85f6              # double 0.89385469047937138
	.quad	0x3fd42642540bc7fe              # double 0.3148351498376768
	.quad	0x3fe316beaa4889c0              # double 0.596526463112518
	.quad	0x3fe9678f75c01a33              # double 0.793891649228334
	.quad	0x3fe6397f42cbe061              # double 0.69451869054956827
	.quad	0x3fe099ebaeee6e5e              # double 0.51878914037974844
	.quad	0x3fea30c18c125465              # double 0.81845166547521997
	.quad	0x3feb14a7f417cb32              # double 0.84627149271395852
	.quad	0x3fe6f957e8fa7060              # double 0.71793742660112159
	.quad	0x3fe5714c6c760ecf              # double 0.67008038696118344
	.quad	0x3fd7addeb7005876              # double 0.36998718138909881
	.quad	0x3fc995ca9d2a2284              # double 0.19988377260257917
	.quad	0x3fe2398aed0dc15d              # double 0.56952425288731556
	.quad	0x3fe9e049251b86ab              # double 0.8086286282306977
	.quad	0x3fc81efc01d7ad4c              # double 0.18844556894269215
	.quad	0x3fe8e9d78b57925b              # double 0.7785451623463574
	.quad	0x3fe886cfa5dad39d              # double 0.76645643609537084
	.quad	0x3fb6690d3fd76dd0              # double 0.087540462576206623
	.quad	0x3fea34dff278fa21              # double 0.81895444257662942
	.quad	0x3fee85faa2a60263              # double 0.95385486380844176
	.quad	0x3fd2e1cc6f1f0f5c              # double 0.29503165103618811
	.quad	0x3fc3544d9dad4fe4              # double 0.15101022910187034
	.quad	0x3f973d62a77dfda0              # double 0.022695104096326468
	.quad	0x3fee4a83151480f9              # double 0.94659570805745752
	.quad	0x3fc567df8c342350              # double 0.16723245950586341
	.quad	0x3fcee6202324ceb0              # double 0.2413978740311129
	.quad	0x3fe50f64d3c37ddb              # double 0.65812913284383556
	.quad	0x3fe8d69255fff3f5              # double 0.77619282528723821
	.quad	0x3fdc184b4e3b002c              # double 0.43898279800123663
	.quad	0x3fe95b00e7e10f4b              # double 0.79235883034605459
	.quad	0x3fd2624b1b933c42              # double 0.28724935238728133
	.quad	0x3fd28918b34c7bee              # double 0.28961770543713683
	.quad	0x3fb8bececd821540              # double 0.096661496327290486
	.quad	0x3fc6bb43a0ccc60c              # double 0.17758984901006192
	.quad	0x3fd64518f18c6192              # double 0.34796737278659251
	.quad	0x3fdd58851087410c              # double 0.45852781881423321
	.quad	0x3fce84cf7370327c              # double 0.23842805039057058
	.quad	0x3fe5b439bfbde388              # double 0.6782501931148639
	.quad	0x3fdbc48c80363c32              # double 0.43387138863267005
	.quad	0x3f93f847f895f4c0              # double 0.019501804873915729
	.quad	0x3fb54a76c1f53ba8              # double 0.083167478898060865
	.quad	0x3f869479f5e33c40              # double 0.011025383774180608
	.quad	0x3fe76a504f83b2bd              # double 0.73172774820485353
	.quad	0x3fd021fe3b565c9c              # double 0.25207477373755593
	.quad	0x3feb00a74b029975              # double 0.84382977152271954
	.quad	0x3fcfd1227b766e20              # double 0.2485697844357313
	.quad	0x3fe2749aff0a364f              # double 0.57673406422117945
	.quad	0x3fd0051a234ed136              # double 0.25031140754733217
	.quad	0x3fea1da82689a8ce              # double 0.81612021948719771
	.quad	0x3fddc8042d166cbe              # double 0.46533302691541312
	.quad	0x3fd62f5730e95d92              # double 0.34663944031259419
	.quad	0x3fe0b826bb4209d0              # double 0.52247940610714672
	.quad	0x3fe2f483402a84c5              # double 0.59234774143637792
	.quad	0x3fe1d092a83c114d              # double 0.5567105565865319
	.quad	0x3fe569bc8016f9fa              # double 0.66915726678399712
	.quad	0x3fe1b642a07c49b0              # double 0.55349856705497835
	.quad	0x3fe5bd53be59faee              # double 0.67936122110390129
	.quad	0x3fc1863958edf2b0              # double 0.13690869180927256
	.quad	0x3fe7227dbc47ee3a              # double 0.72296034597042724
	.quad	0x3fee90edee97327c              # double 0.9551915798161441
	.quad	0x3fb44d6d155b61c0              # double 0.07930642863664783
	.quad	0x3fe1a053a8bab39c              # double 0.55082114176694885
	.quad	0x3fd0c68b4d1bf408              # double 0.26211817293352668
	.quad	0x3fee1728be3262ae              # double 0.940327044943009
	.quad	0x3fe7cfbfbc702c5e              # double 0.7441099815781731
	.quad	0x3fe03beec461df20              # double 0.50731600147171108
	.quad	0x3fe4b760404a7ebe              # double 0.64738476330600014
	.quad	0x3fd281cfd9728724              # double 0.28917309031577276
	.quad	0x3fc8a6fe870704fc              # double 0.19259626000533803
	.quad	0x3feb8b283f7319f8              # double 0.86073696510794573
	.quad	0x3fd07ed1f07bb076              # double 0.25774048313792919
	.quad	0x3fd9fb3bdadcaa36              # double 0.40595909474601244
	.quad	0x3fe162c93d81f8f1              # double 0.5433088494608268
	.quad	0x3fdbf235e82a03a0              # double 0.43665836021687632
	.quad	0x3fc6c73bf8a595b4              # double 0.1779551471801547
	.quad	0x3fc2701d413a20dc              # double 0.14404645619311551
	.quad	0x3fe81396c51e9cc2              # double 0.75239122867505892
	.quad	0x3fc27146864384c4              # double 0.1440818934998217
	.quad	0x3fe8e151b6b404fd              # double 0.77750478443354576
	.quad	0x3fe3937221bf3d42              # double 0.61174875823227404
	.quad	0x3fb4d7bccebae0e8              # double 0.081416893454732908
	.quad	0x3fe76e8a9249268d              # double 0.7322438103812644
	.quad	0x3fd27641bbf71506              # double 0.28846782070134258
	.quad	0x3fd0ae1f72aacd42              # double 0.26062761495559894
	.quad	0x3feeb9750c3e6ea8              # double 0.96013882056600596
	.quad	0x3fe544c943c769b8              # double 0.6646467517669441
	.quad	0x3fee7231baebb66f              # double 0.95143972881278482
	.quad	0x3fe05511d478dea5              # double 0.51038447855440394
	.quad	0x3fe9a81bfd1ce77e              # double 0.80177115856280046
	.quad	0x3fd78a922f8c4fce              # double 0.36783270495766096
	.quad	0x3fddd5264e3b022e              # double 0.4661346210450884
	.quad	0x3fcdafac6fdd8e88              # double 0.23192363226109003
	.quad	0x3fd0b24487bb82fa              # double 0.26088059668658981
	.quad	0x3fb682f73b7b39c0              # double 0.087935878774465515
	.quad	0x3fe81610b46a02b6              # double 0.75269351231698667
	.quad	0x3febf97003aaadd7              # double 0.87419892040400782
	.quad	0x3fef3ab2f75f4fb9              # double 0.97591541590599384
	.quad	0x3fbfc1b6dc458c90              # double 0.12404959562040774
	.quad	0x3fef3cd8119f1c77              # double 0.97617724839882569
	.quad	0x3fd1aeca54dee228              # double 0.27629335678241995
	.quad	0x3fd8757deb0a5e30              # double 0.382171134502161
	.quad	0x3fe35fca857efe1e              # double 0.60544324944925498
	.quad	0x3feb45aa7886b437              # double 0.85225413837691277
	.quad	0x3fdd2ece1cfc38a8              # double 0.4559817584094028
	.quad	0x3fed2115fdc8b855              # double 0.91028880660247558
	.quad	0x3fba9c2fbcd29800              # double 0.10394571647574935
	.quad	0x3fe2cd9cedbd3cda              # double 0.58759924348296555
	.quad	0x3fe3f9cab3319bcb              # double 0.62424216269288857
	.quad	0x3fb1e0bb0270aeb0              # double 0.069835365386718307
	.quad	0x3fe53dcd85189dbd              # double 0.66379428859084266
	.quad	0x3fe992ee7ca6da45              # double 0.79918598505066341
	.quad	0x3fc2914593204350              # double 0.14505834277999918
	.quad	0x3fc7787bf319656c              # double 0.18336438531950294
	.quad	0x3fde9077e5479f50              # double 0.47756764784434313
	.quad	0x3fef2caa0f1fd314              # double 0.97420218423812565
	.quad	0x3fef4f444a5d4a8d              # double 0.97842611812878177
	.quad	0x3fe6c9e1c7bacc31              # double 0.71214379319861199
	.quad	0x3fd4b13ea20d1db4              # double 0.32331815553012722
	.quad	0x3fe36f3f20ddc681              # double 0.60732990664674003
	.quad	0x3fd649cc7c55323c              # double 0.34825431959032804
	.quad	0x3fc5705b74d72490              # double 0.16749137120340096
	.quad	0x3fe3e4ead1a0baaf              # double 0.62169400160731481
	.quad	0x3fc0f287cdaf96d8              # double 0.13240144294029821
	.quad	0x3fe992a38834b735              # double 0.79915024378508426
	.quad	0x3fd1306fd627b3d6              # double 0.26858135140974804
	.quad	0x3fd8e311fe75c02a              # double 0.38885927056890301
	.quad	0x3fd283d51da25b80              # double 0.28929641622510616
	.quad	0x3fef38f2a6b1ac06              # double 0.97570164258411363
	.quad	0x3fb068b3077f8bf0              # double 0.064097585039732285
	.quad	0x3fdd0cc21bb78728              # double 0.45390370089272603
	.quad	0x3fed5e21257960df              # double 0.91774041480223534
	.quad	0x3fe93be5cc263ff0              # double 0.78856172440464256
	.quad	0x3fceaf0b9ca2d04c              # double 0.2397169604133772
	.quad	0x3fd703207a5cbd64              # double 0.35956584882202081
	.quad	0x3fd6d677c9431efc              # double 0.35684008268843548
	.quad	0x3fc5ec4d90cb82f0              # double 0.171273894978206
	.quad	0x3fef0f9b76b7ffec              # double 0.97065518557792307
	.quad	0x3feb9bd1391c36f7              # double 0.86277066377962697
	.quad	0x3fef1867aa430b3f              # double 0.97172911886477908
	.quad	0x3fed92c16b3cf774              # double 0.92416449494315466
	.quad	0x3fe34b36fc1e8097              # double 0.60293149225255405
	.quad	0x3fb9e27ebc7a9b88              # double 0.10111229039703862
	.quad	0x3fe7b0168063b772              # double 0.7402451045615932
	.quad	0x3fef72d8803c68b2              # double 0.98276925130928405
	.quad	0x3fe34146b40ec283              # double 0.60171828429709284
	.quad	0x3fe946073ddd7251              # double 0.78979837496769723
	.quad	0x3fc19c3d54350c74              # double 0.13758055316620565
	.quad	0x3fba5b1425abf100              # double 0.10295225066869662
	.quad	0x3fe97909b2e7a79e              # double 0.79602513258327057
	.quad	0x3fd9c425578e200e              # double 0.40259679365453926
	.quad	0x3fd823d44eda43e8              # double 0.37718684864472474
	.quad	0x3f89b6ea641cbf80              # double 0.012555915050682875
	.quad	0x3fe65735f69be218              # double 0.69814584890179088
	.quad	0x3feb348429d29dae              # double 0.85016067665576656
	.quad	0x3f98872048d6e480              # double 0.023952965207830079
	.quad	0x3fb8375dc1d3d118              # double 0.094594821759362069
	.quad	0x3fe59ac6fe58300b              # double 0.67514371563584186
	.quad	0x3fe0ba85ddeae14b              # double 0.52276891082059629
	.quad	0x3fb6d15a4982a590              # double 0.089131968447551779
	.quad	0x3f9c2e8468c3b780              # double 0.02752119912559392
	.quad	0x3feb1c28308af072              # double 0.84718713265421131
	.quad	0x3fd717e8a6cdaefe              # double 0.36083427705192139
	.quad	0x3fe0d784c08e10d6              # double 0.52630841835391595
	.quad	0x3fe3e8b09240e4e5              # double 0.6221545082582024
	.quad	0x3fe02e283d872b28              # double 0.50563442246616308
	.quad	0x3fe54916ca6fcda2              # double 0.66517200029777634
	.quad	0x3fedd401d345da2b              # double 0.93212977661352647
	.quad	0x3fd9bf84e8b510d0              # double 0.4023144028217418
	.quad	0x3fef78664b351bc7              # double 0.98344721497493814
	.quad	0x3fe45e91c366c855              # double 0.63654411472658501
	.quad	0x3fbcc9dbf19eb8b8              # double 0.11245512627530985
	.quad	0x3fe1bd71bc9283a4              # double 0.55437552290469627
	.quad	0x3fe45ca1b8d07fb5              # double 0.636307583776207
	.quad	0x3fdb2eef32c19a00              # double 0.42473964649835239
	.quad	0x3fc6c5e136f73110              # double 0.17791381057612243
	.quad	0x3fef84f9f468d1be              # double 0.98498246895046981
	.quad	0x3fe98ed1defffcae              # double 0.79868405871083836
	.quad	0x3fea5c58c3e2ea29              # double 0.82377279528674763
	.quad	0x3fd1f3c02e4e8166              # double 0.28050236246237714
	.quad	0x3fe96e42786d1960              # double 0.79470942993865989
	.quad	0x3fc9f88d6aa58540              # double 0.20289771754600316
	.quad	0x3fe46e8693872061              # double 0.6384919053462107
	.quad	0x3fe42d38ce5925be              # double 0.63052025129689304
	.quad	0x3fea9959b68f5cba              # double 0.83121953636409462
	.quad	0x3fdc8db674b6e5a0              # double 0.44614945791144045
	.quad	0x3febdc4762edf66d              # double 0.87063950845886284
	.quad	0x3fe6791b3ed58c55              # double 0.70228349945353818
	.quad	0x3fee3833474b486a              # double 0.94436038899062891
	.quad	0x3fd45a4671c26aa0              # double 0.31800995930977116
	.quad	0x3f7fb6cd0a5bf100              # double 0.0077426919358425383
	.quad	0x3fce778aeffa5b18              # double 0.23802315442727529
	.quad	0x3fd753797ff25780              # double 0.36446988577642259
	.quad	0x3fee90d04e3e0920              # double 0.95517745286659661
	.quad	0x3fe223f7166dfb49              # double 0.56689028149399079
	.quad	0x3fbaa201e4e30e80              # double 0.10403453672466334
	.quad	0x3fcf6d0d9417245c              # double 0.24551553469635479
	.quad	0x3febd76b8bde029e              # double 0.87004639928644045
	.quad	0x3fe90abef4d2ca64              # double 0.78256175820417839
	.quad	0x3fe5e6c8d820939e              # double 0.68442194187501904
	.quad	0x3fdd9517f9e7209c              # double 0.46222495464872693
	.quad	0x3fea3f587c3d2eeb              # double 0.82023262277058728
	.quad	0x3fd14a9c63d34a76              # double 0.27017888783044641
	.quad	0x3fc9d98473e7fda4              # double 0.20195060405238252
	.quad	0x3fedb8ae9fbb8687              # double 0.92879420469053364
	.quad	0x3fcb9cb3e7069be4              # double 0.21571968823010856
	.quad	0x3fe4c92c95ba728e              # double 0.64955739253817213
	.quad	0x3fe5b92b5e429056              # double 0.67885368738326224
	.quad	0x3fd21071daac5a6c              # double 0.28225370745477707
	.quad	0x3fcae4806528c018              # double 0.210098313707477
	.quad	0x3fcd7a88c05f0cec              # double 0.23030194657449188
	.quad	0x3fe6d10aa383dbdb              # double 0.71301776825464047
	.quad	0x3fecb6e36d4e6313              # double 0.89732524250857393
	.quad	0x3fe01105ccf41e07              # double 0.50207796125408855
	.quad	0x3fe03d7c767ff8c0              # double 0.50750563759336131
	.quad	0x3fd313266496a04e              # double 0.29804382155498821
	.quad	0x3fe77b3b0480d9ee              # double 0.73379279021793109
	.quad	0x3fc1779e219eb304              # double 0.13646294252011881
	.quad	0x3fbaee87bb03ac00              # double 0.10520218196658959
	.quad	0x3fe5ec8c1f962af3              # double 0.6851254097867624
	.quad	0x3fdd6b8a08350a6a              # double 0.45968867112620748
	.quad	0x3fe4b3de5f4ac7cb              # double 0.64695662128200959
	.quad	0x3fe7aca88ed45df1              # double 0.73982646843336231
	.quad	0x3fd2e7b1ccaf1412              # double 0.29539151180898771
	.quad	0x3fc2001f74368cac              # double 0.14062874960391036
	.quad	0x3fe06d18b2323dc0              # double 0.51331744007068636
	.quad	0x3fda5f8832fe7848              # double 0.41208081226239246
	.quad	0x3fe55bd374ea888c              # double 0.66745922885117315
	.quad	0x3fd442e1cb86f8b0              # double 0.31658215404230372
	.quad	0x3fd85ff31fff26ac              # double 0.38085630535770565
	.quad	0x3fe69e5a8ff7f482              # double 0.70683029288160548
	.quad	0x3fea40ca07e7d766              # double 0.82040883583134128
	.quad	0x3fd6e0ceb0a6840c              # double 0.35747115374584904
	.quad	0x3fcde356ec217488              # double 0.23350035219019483
	.quad	0x3fe8c723e2453c4e              # double 0.77430910294959587
	.quad	0x3fb6aaa756948ef8              # double 0.088541468274850987
	.quad	0x3fded70e7e3a21a0              # double 0.48187601401198243
	.quad	0x3fe44d824247eba4              # double 0.63446152635093656
	.quad	0x3fead176ea8c2f11              # double 0.83806939897610466
	.quad	0x3fc958a2350ba058              # double 0.19801738348110365
	.quad	0x3fd54fc56abc5a12              # double 0.33299384520924591
	.quad	0x3fec304ff14664bc              # double 0.88089749454515908
	.quad	0x3fd12a0018fb1eaa              # double 0.26818849982781023
	.quad	0x3fdefd6c49349ecc              # double 0.48421771191577245
	.quad	0x3faadbd1091bba70              # double 0.052458317148070033
	.quad	0x3fd9f89f4af0bfcc              # double 0.40579969709778818
	.quad	0x3fe1c42a9b2c6768              # double 0.55519609744372378
	.quad	0x3fd57ffc35d3f5a8              # double 0.33593659645688456
	.quad	0x3fdfa0907f972968              # double 0.49417507610328082
	.quad	0x3fc3dfe6c801c2f8              # double 0.15527043119393347
	.quad	0x3fe9becd5e988e7a              # double 0.80454128719107065
	.quad	0x3fe6ed40f5674a3b              # double 0.71646163874021995
	.quad	0x3fe20b1359da3a01              # double 0.56385200070673147
	.quad	0x3fdfdb187a4972dc              # double 0.49774753515320724
	.quad	0x3fce77f726e47fa4              # double 0.23803605460215949
	.quad	0x3fe203ab53eda6b7              # double 0.5629479064202404
	.quad	0x3fbcf87c548770e0              # double 0.11316659034440901
	.quad	0x3fe4d73b45be85b7              # double 0.65127338048858163
	.quad	0x3fdbdf142373024e              # double 0.43549064123002246
	.quad	0x3fef397be158032f              # double 0.97576707851849231
	.quad	0x3fec95852e0fe7e4              # double 0.89325198170194797
	.quad	0x3fea8533b2fc978f              # double 0.8287600036462538
	.quad	0x3fe77b6646113a82              # double 0.73381341633815134
	.quad	0x3fe1da82bbc29dec              # double 0.5579236666862335
	.quad	0x3fca4f58520b82cc              # double 0.20554641729451928
	.quad	0x3fe011c7f8889ded              # double 0.50217054883699819
	.quad	0x3fed8f2060ec07f4              # double 0.92372149400784886
	.quad	0x3fc492ebb7362800              # double 0.16073366590381966
	.quad	0x3fe340cde3df68e7              # double 0.60166067606340057
	.quad	0x3fe77791aa539fe5              # double 0.73334582583356378
	.quad	0x3fd65a4cd91702e8              # double 0.34926148605522522
	.quad	0x3fce2de067e94540              # double 0.23577504228391355
	.quad	0x3fc013c767074e44              # double 0.12560360460939723
	.quad	0x3fe98afcb85410c4              # double 0.79821620942723159
	.quad	0x3fe6fa9da63aed60              # double 0.71809275118668481
	.quad	0x3fe69a36e607b033              # double 0.70632500579586688
	.quad	0x3fd7b1c16c66aa04              # double 0.37022433839834457
	.quad	0x3fdce7f153f091d2              # double 0.45165665814627431
	.quad	0x3f8f435cca4cb300              # double 0.015265202449506798
	.quad	0x3fbdb50a99f22ca8              # double 0.1160437227101051
	.quad	0x3fe991f31f0a8f56              # double 0.79906612456077641
	.quad	0x3fe362652eb35158              # double 0.60576113816436372
	.quad	0x3fee3c4b83384554              # double 0.94486022595280383
	.quad	0x3feded1957a0df81              # double 0.93519274821208864
	.quad	0x3fdd81f7ae7931fa              # double 0.46105758703632171
	.quad	0x3fb5b2348b2915a8              # double 0.084750446295479009
	.quad	0x3fb0233d3d973d38              # double 0.063037707840739254
	.quad	0x3fc9d521e1c08004              # double 0.20181678317112539
	.quad	0x3fc77faac315dbec              # double 0.18358358884481107
	.quad	0x3fc566805565eb6c              # double 0.16719059152441262
	.quad	0x3fe2bdbd81c7e82f              # double 0.58566165302113926
	.quad	0x3fb17076833b6e48              # double 0.0681222982779498
	.quad	0x3fc671f200b1d768              # double 0.17535233529968797
	.quad	0x3fd8889c36221dd4              # double 0.38333802496387404
	.quad	0x3fefcb5f9be26e9a              # double 0.99357586332503733
	.quad	0x3fee28282546b37f              # double 0.94240195541861727
	.quad	0x3f47380488badc00              # double 7.0858212844526758E-4
	.quad	0x3fc248103072e75c              # double 0.1428241955343833
	.quad	0x3fe9d7a351b17c06              # double 0.80757299380991365
	.quad	0x3fe3ceeb71674408              # double 0.6190087523374368
	.quad	0x3fe80061de20ca80              # double 0.75004666695015487
	.quad	0x3fe3fcaa92124e9b              # double 0.62459305314628766
	.quad	0x3fe0a4edea5d43f2              # double 0.52013297819405424
	.quad	0x3fe7f0dcf4c1f776              # double 0.74815223507151418
	.quad	0x3fe3b8894c334b15              # double 0.61627640612491297
	.quad	0x3fb549c90aab1118              # double 0.083157124619053113
	.quad	0x3fef35a48598916a              # double 0.97529817669832863
	.quad	0x3fa3c34059048bd0              # double 0.038599024645257551
	.quad	0x3fde76740a4e9b44              # double 0.47597981459187033
	.quad	0x3fe557148bcf11d2              # double 0.66687991434496952
	.quad	0x3fe054a56f40bc37              # double 0.51033279160572576
	.quad	0x3fd71a4ee21382f2              # double 0.36098072126155423
	.quad	0x3fc6781dff1684c0              # double 0.17554068522898625
	.quad	0x3fbd9d7b19b90ee8              # double 0.11568421724319544
	.quad	0x3feed91ed5606e84              # double 0.96400396037229585
	.quad	0x3fe7ad880f81d3d2              # double 0.73993304280031169
	.quad	0x3fd80b7b7ec9a884              # double 0.37570083028425239
	.quad	0x3fbdf50c4afe60b8              # double 0.1170203860368727
	.quad	0x3fe5421c00ae9ea4              # double 0.66431999333595515
	.quad	0x3fe09e59d6f59608              # double 0.51932994827501577
	.quad	0x3feaf7d65c20df8f              # double 0.84275358194189376
	.quad	0x3fd0d165f9f134f0              # double 0.26278066070956552
	.quad	0x3fd060a48aa6993e              # double 0.25589860477557014
	.quad	0x3fd2badf0b33e232              # double 0.29265571683893932
	.quad	0x3fe9d3264abbb3eb              # double 0.80702509495097041
	.quad	0x3fe15c0b71fd5f24              # double 0.54248592628116343
	.quad	0x3fdfd06cddcb295c              # double 0.49709626826792941
	.quad	0x3fe82fd670ed00fe              # double 0.75583955818004234
	.quad	0x3fd836f0ee0af22c              # double 0.37835334059107839
	.quad	0x3fea41f4b32d22f4              # double 0.82055125232099479
	.quad	0x3fd58c5f810db902              # double 0.33669269183054962
	.quad	0x3fec65c4351e42d4              # double 0.88742266058587881
	.quad	0x3fdad5b93a9f237e              # double 0.41929465031403612
	.quad	0x3fd1353e524becd8              # double 0.26887472187781958
	.quad	0x3fdd750822dc198a              # double 0.46026805309556862
	.quad	0x3fbb99d92c7b9710              # double 0.10781628929143161
	.quad	0x3fef3382342fba43              # double 0.97503767197287805
	.quad	0x3fe3fedee58cdec4              # double 0.62486214479482571
	.quad	0x3fe399227846f99a              # double 0.61244319430970795
	.quad	0x3fedc3fa07762ba1              # double 0.93017293412536983
	.quad	0x3fe7e62c09bfdd6c              # double 0.74684717086976837
	.quad	0x3fa21c033796b6c0              # double 0.035369968925221595
	.quad	0x3fe3a4b95ddcba0e              # double 0.61385792095626512
	.quad	0x3fc8c2f66c0bde4c              # double 0.19344978595448692
	.quad	0x3fd8f0fd4770c796              # double 0.38970882393470541
	.quad	0x3feb22e73581620a              # double 0.8480106396701228
	.quad	0x3fec3a7e14f4d75d              # double 0.88214019864129123
	.quad	0x3fea50cfce312d22              # double 0.82236471435445346
	.quad	0x3feea84e3f128799              # double 0.95804512327980539
	.quad	0x3fecd7fac69b43e4              # double 0.90136469641049332
	.quad	0x3fd3ba88b522fbba              # double 0.30826013268591235
	.quad	0x3fe09054d59e295f              # double 0.51761857721548299
	.quad	0x3fe1b091af06f085              # double 0.55280384240133229
	.quad	0x3fea6cbd61c37469              # double 0.82577389807160018
	.quad	0x3fc012a160e23ea4              # double 0.12556855421688795
	.quad	0x3fe4823aa789b7a6              # double 0.6408971092439415
	.quad	0x3feb55ad376ab4be              # double 0.85420857261274086
	.quad	0x3fcaa74fc2572a3c              # double 0.20823094357759142
	.quad	0x3fd1d3b1e3567d92              # double 0.27854582978212605
	.quad	0x3fc05d4b1670477c              # double 0.12784708591112437
	.quad	0x3fc98dfbd57842f8              # double 0.19964549945191101
	.quad	0x3febd1bda54f2b13              # double 0.86935312544787491
	.quad	0x3fed6deb08f9269a              # double 0.9196677375086495
	.quad	0x3fd6b89c8da5091e              # double 0.35501779396521893
	.quad	0x3febb6f4b93b3d6e              # double 0.86608349016198161
	.quad	0x3fd59b6e4fc6e1ba              # double 0.33761174956046214
	.quad	0x3fe687921fce76c1              # double 0.70404916965681974
	.quad	0x3fd4e4789233a01a              # double 0.32644476201540018
	.quad	0x3f9082a658db6e80              # double 0.016123389409456568
	.quad	0x3fc2586cc5a35690              # double 0.14332351351065542
	.quad	0x3febcf9cb0889a9a              # double 0.86909327010365023
	.quad	0x3fd40751afb129fe              # double 0.31294672162462678
	.quad	0x3fd58f7567c5bb5e              # double 0.33688101896307454
	.quad	0x3fe603f61059427c              # double 0.68798354333019018
	.quad	0x3fd9499bf1dea180              # double 0.39511774654467757
	.quad	0x3fd2d777f0e35114              # double 0.29440115474905437
	.quad	0x3fdae7c28b3a0076              # double 0.4203955039629429
	.quad	0x3fc5a364b0133d60              # double 0.16904886815471354
	.quad	0x3fb5f73a1eb19958              # double 0.085803635114279131
	.quad	0x3fcd88183464a374              # double 0.2307157760453965
	.quad	0x3fce4c9dbd4a261c              # double 0.23671313994081877
	.quad	0x3fe99720f56e20b0              # double 0.79969833312590843
	.quad	0x3f643217458e9000              # double 0.0024652914548415339
	.quad	0x3fd974a1efb4f216              # double 0.39774368676060712
	.quad	0x3fd97c455400bdbc              # double 0.39820988849075056
	.quad	0x3fe36fc95466e7d8              # double 0.60739580616722844
	.quad	0x3fe25b1245a6d49f              # double 0.57361711124271497
	.quad	0x3fd896f27d90934c              # double 0.38421308767492657
	.quad	0x3fe49f864856ef61              # double 0.64447321060968588
	.quad	0x3fe78626e09b1205              # double 0.73512596004781072
	.quad	0x3fdec5fed4b504d2              # double 0.48083468219927028
	.quad	0x3fb5555f302913b0              # double 0.083333920724796284
	.quad	0x3fc5db41e7459914              # double 0.17075370590755112
	.quad	0x3fd96c329e9b759c              # double 0.39722886551847991
	.quad	0x3fc2c92958008704              # double 0.14676396176314921
	.quad	0x3fd6e064112da936              # double 0.3574457328565076
	.quad	0x3feb92d9c19ce11d              # double 0.86167609992029137
	.quad	0x3fc273c54d32736c              # double 0.14415804166210522
	.quad	0x3fde52c0e9d4ead2              # double 0.47380087695243589
	.quad	0x3fe159b95a7501b0              # double 0.54220264117616601
	.quad	0x3feeaea1a9df4f75              # double 0.95881732156929777
	.quad	0x3fbc702b96e50690              # double 0.11108658250761949
	.quad	0x3fb302e5d41e15a8              # double 0.074262966429236799
	.quad	0x3fe7fcf2fe230d84              # double 0.74962758670919571
	.quad	0x3fd2647ace5f10ee              # double 0.28738279488994933
	.quad	0x3f7889cbde7f5180              # double 0.0059907878530406355
	.quad	0x3fc85348e01f9838              # double 0.19004164641882126
	.quad	0x3fe4a612c52e9609              # double 0.64527262222390036
	.quad	0x3fd3f1ab2b4d4714              # double 0.31162528256128152
	.quad	0x3fafb6c3cc6cf240              # double 0.06194126005582179
	.quad	0x3fe55ad25032e537              # double 0.66733661331014715
	.quad	0x3fec623d400a45f1              # double 0.88699209697568737
	.quad	0x3fd4f61382cc5e4e              # double 0.32751930020592546
	.quad	0x3fec38fa41a94f20              # double 0.88195526909337118
	.quad	0x3fe5a12ebc06aa40              # double 0.67592560504755994
	.quad	0x3fc236a232375714              # double 0.14229228450738474
	.quad	0x3fd2de90c9f83608              # double 0.2948343250617147
	.quad	0x3fe633b196fa64dd              # double 0.69381026733313045
	.quad	0x3fea725ccf18de90              # double 0.82646027039204917
	.quad	0x3fed9ef207cb188e              # double 0.92565251848351848
	.quad	0x3f9c429ce678b320              # double 0.027597858015883436
	.quad	0x3fd7e27222d161dc              # double 0.37319615745721335
	.quad	0x3fda59f8b1d42e26              # double 0.41174142232987021
	.quad	0x3fe744d6417a5115              # double 0.72715294636376149
	.quad	0x3fd2656bd441530c              # double 0.28744025924724848
	.quad	0x3fecd2704028fd1c              # double 0.9006882908942404
	.quad	0x3fbf3f43d29f6258              # double 0.12205909626153166
	.quad	0x3fe8ff18e0156f41              # double 0.78113979116776744
	.quad	0x3fe51d81582fca54              # double 0.65985171531640185
	.quad	0x3fd9a345aa03ccf6              # double 0.4005903396893723
	.quad	0x3fda4b7f82aeca8e              # double 0.41085803758611739
	.quad	0x3fe339cbb9f0883c              # double 0.60080515209506968
	.quad	0x3feacc1d181a8684              # double 0.83741621692406953
	.quad	0x3fe51928eda2c1c2              # double 0.65932127392994055
	.quad	0x3fe64447beee2d58              # double 0.69583499232377743
	.quad	0x3fc8a0bcbff14a6c              # double 0.19240531322664667
	.quad	0x3fef3426eeff863b              # double 0.97511622123074148
	.quad	0x3f77ad7be73f0480              # double 0.0057806816075195444
	.quad	0x3fd7b6711918be52              # double 0.37051036311001895
	.quad	0x3fce9563d4a83ca8              # double 0.23893401988650464
	.quad	0x3fd6df1c825de2f2              # double 0.35736763697745666
	.quad	0x3feeaf958f271739              # double 0.95893362006675098
	.quad	0x3fd80f04746a7254              # double 0.37591658943873552
	.quad	0x3fa564a319953f00              # double 0.041783425209926506
	.quad	0x3fdd76be87287188              # double 0.4603725738432094
	.quad	0x3fec18e3c96556f9              # double 0.87803830466393074
	.quad	0x3fe9236b47418983              # double 0.78557361523807889
	.quad	0x3fc7460454929164              # double 0.18182424668806185
	.quad	0x3feaf8a4806ebb0b              # double 0.84285187801819583
	.quad	0x3fe809b691b3ea0b              # double 0.75118568856788792
	.quad	0x3feb9b354f6c286b              # double 0.86269631874280372
	.quad	0x3fd912d8109c4600              # double 0.39177514669526659
	.quad	0x3fc93356d64c9b2c              # double 0.19687924827413761
	.quad	0x3fe26adcba6bd6c0              # double 0.57554470453643347
	.quad	0x3fe8a3855bfbd422              # double 0.76996105161254413
	.quad	0x3fef7699e99096c1              # double 0.98322768800854742
	.quad	0x3fe24f3bb08b2964              # double 0.57217201691791475
	.quad	0x3fd34165ceb87a8a              # double 0.30086655795631911
	.quad	0x3fe926615180570b              # double 0.78593507688739928
	.quad	0x3fe9c7ebeebd1909              # double 0.80565449360509078
	.quad	0x3fb36f688dd7f868              # double 0.075918707494538773
	.quad	0x3fd48a8daf6ab72c              # double 0.32095663195183266
	.quad	0x3fd4cb646ecdcf64              # double 0.32491408177087622
	.quad	0x3fd27012df659820              # double 0.28809043708895565
	.quad	0x3fe103845debd862              # double 0.5316793283843817
	.quad	0x3fb9f05bf0ea7928              # double 0.10132383949028123
	.quad	0x3fc92951c4df5b84              # double 0.19657346833147582
	.quad	0x3fddab980fe892e2              # double 0.46359826615871047
	.quad	0x3fc06d681465f068              # double 0.12833882328039015
	.quad	0x3fd21aa265fb4192              # double 0.28287563284995898
	.quad	0x3fdebf853fdefd50              # double 0.48043948399932379
	.quad	0x3f785a8a24162480              # double 0.0059457203036653583
	.quad	0x3f982606d97332a0              # double 0.023582560560316268
	.quad	0x3fe9bab44c309aca              # double 0.80404105072815324
	.quad	0x3fc6ef2ee9179454              # double 0.17917429334116497
	.quad	0x3fd6a7171b6bf940              # double 0.35394838025958464
	.quad	0x3fe361ee3484ead2              # double 0.6057044053808005
	.quad	0x3fd3791137cad812              # double 0.30426435898277859
	.quad	0x3fe13d9aba25f377              # double 0.53877006871299116
	.quad	0x3fe40c714f4b3621              # double 0.626518874045079
	.quad	0x3fe9a67ab0406634              # double 0.80157217430241312
	.quad	0x3fe19b319687343a              # double 0.55019454383876298
	.quad	0x3fcad3d69f58a174              # double 0.20958979397370181
	.quad	0x3fe980f1ed543855              # double 0.79699035981480881
	.quad	0x3fe568ffb826c53a              # double 0.66906724898414116
	.quad	0x3fefb2fb04b48ac1              # double 0.99059821051590557
	.quad	0x3fef170698a2eb8b              # double 0.97156076251791156
	.quad	0x3fe2b11b69b489a3              # double 0.5841195168070964
	.quad	0x3fc905cd9b42f170              # double 0.19548959809425126
	.quad	0x3fe4f1e8c4799918              # double 0.65452993749639443
	.quad	0x3fecef532fc9d009              # double 0.90421447118433307
	.quad	0x3febc7e24dd05288              # double 0.86814990232467526
	.quad	0x3fec131eb3dee686              # double 0.87733397608754227
	.quad	0x3fd21603f9b9093c              # double 0.28259372126571569
	.quad	0x3fef6b4aca54fbbf              # double 0.98184718625986266
	.quad	0x3fc49eb65731ff1c              # double 0.16109351403792338
	.quad	0x3fe433fecf7fddbe              # double 0.63134708907357839
	.quad	0x3febdcaca129bc54              # double 0.87068778493074683
	.quad	0x3fcb7c14b2dff784              # double 0.2147241471683935
	.quad	0x3fbfc3621811f218              # double 0.12407506072663244
	.quad	0x3fd645cf56981ebc              # double 0.34801085907427498
	.quad	0x3fd46b415c21cba2              # double 0.31904634473101556
	.quad	0x3fe034931159a9b2              # double 0.50641778362960665
	.quad	0x3fe59cf4a033d4cd              # double 0.67540961541694744
	.quad	0x3fe47a09a4d98a32              # double 0.63989717671603885
	.quad	0x3fc0177a8422d9bc              # double 0.12571650936088286
	.quad	0x3fe4e5deea11a686              # double 0.65306039539901017
	.quad	0x3fe38143c2f81d7a              # double 0.60952938156053382
	.quad	0x3fea0324d448c92d              # double 0.81288377248555366
	.quad	0x3fda222d5675ea0a              # double 0.4083360046712704
	.quad	0x3fe71987f02adf59              # double 0.72186657817563138
	.quad	0x3f9b9f067a55e480              # double 0.026973820893065881
	.quad	0x3fc0e02bca53e2ec              # double 0.13184115771561922
	.quad	0x3fc181695a8dbcb0              # double 0.1367618267208619
	.quad	0x3f7e25da7dcca900              # double 0.0073603186436150825
	.quad	0x3fed6b099ab46375              # double 0.91931610313177592
	.quad	0x3fa5c4a4d1fef320              # double 0.042515898355736548
	.quad	0x3fd831acdbdf784c              # double 0.3780319354244781
	.quad	0x3fa2315a0b9113e0              # double 0.035532773887588354
	.quad	0x3fd9a18ae5cd310a              # double 0.40048477593951815
	.quad	0x3fe43b466b8cf6e2              # double 0.63223572736725608
	.quad	0x3fe74c81368bdd47              # double 0.72808895734389345
	.quad	0x3fecd802dc98da3b              # double 0.90136855206839728
	.quad	0x3fe43bace04214b4              # double 0.63228458214202599
	.quad	0x3fa38dab15614010              # double 0.038190218314980595
	.quad	0x3fdcc19cd0b951de              # double 0.44931717284387485
	.quad	0x3fcfe2d5584e38e4              # double 0.24910990535540301
	.quad	0x3fdbef5cf8e97318              # double 0.43648456867031049
	.quad	0x3fd163836c5141ec              # double 0.27169881418106345
	.quad	0x3fd2678921bdcbc6              # double 0.28756931586320567
	.quad	0x3fefba54441dc720              # double 0.99149525932282145
	.quad	0x3fde64406a7c0472              # double 0.47486887358542795
	.quad	0x3fe9a0a6006aca81              # double 0.80086040574526873
	.quad	0x3f92bf9086bb5640              # double 0.018308885787368334
	.quad	0x3fba6c4f6d6ba1c0              # double 0.103215183462118
	.quad	0x3fed6d85a4210af0              # double 0.91961938911876295
	.quad	0x3fecd9ac4f7bdab5              # double 0.90157142185383654
	.quad	0x3fc6a5589cd0a634              # double 0.17692096383079703
	.quad	0x3fdb9bf1c2684cac              # double 0.43139308915233232
	.quad	0x3fb557cf0c5aa710              # double 0.083371105686321778
	.quad	0x3fe0dbac59d3b8a2              # double 0.52681558174460386
	.quad	0x3fe793f3e6a3935f              # double 0.73681063696549731
	.quad	0x3fc376dc33ff1cf4              # double 0.15206482447522485
	.quad	0x3fe111e465cbf6de              # double 0.53343410379576617
	.quad	0x3fd88bb0d210f51e              # double 0.38352604402810353
	.quad	0x3fcf94b9c568d8e0              # double 0.24672624720705638
	.quad	0x3feaafb0f03b7f59              # double 0.8339466754950805
	.quad	0x3fdeb11b59b4eb30              # double 0.47955974350377328
	.quad	0x3fdc9704cca6fde8              # double 0.44671745286538433
	.quad	0x3fd96712de434730              # double 0.39691611962654161
	.quad	0x3fe3edb5375831c8              # double 0.62276707467531711
	.quad	0x3fc4337c16eab55c              # double 0.15782118910775977
	.quad	0x3fed64c2ea9c4a6c              # double 0.91854997465482091
	.quad	0x3fe8ab00375c9432              # double 0.77087412655658327
	.quad	0x3fc5a7bfce8cc2c0              # double 0.16918180070344668
	.quad	0x3fd3cf43be8cccc8              # double 0.30952542885206613
	.quad	0x3fee07dd0655a610              # double 0.93845988499850996
	.quad	0x3fea96216d074872              # double 0.83082648558253269
	.quad	0x3fe701636425dd2d              # double 0.71891946373117366
	.quad	0x3fd79991837ee346              # double 0.36874807206509208
	.quad	0x3faa416eb9abf100              # double 0.051280460515018333
	.quad	0x3fe8faf455e10a5f              # double 0.78063408635382447
	.quad	0x3fd89692a79d822e              # double 0.38419023865393143
	.quad	0x3fefc2634da1f4e1              # double 0.99247899210572765
	.quad	0x3fec231ae25f89ba              # double 0.87928528035654741
	.quad	0x3fd7ae20a057e176              # double 0.37000289591335134
	.quad	0x3fecc4e3e5a6f2c2              # double 0.89903445104535984
	.quad	0x3fd40c48fb73fb04              # double 0.31324982219659625
	.quad	0x3fd62548f40f8b4a              # double 0.34602569421820262
	.quad	0x3fee445b69266669              # double 0.94584436928853421
	.quad	0x3fec87112bbe1b0f              # double 0.89148767989613187
	.quad	0x3fc0b01b10aeed34              # double 0.13037432016958805
	.quad	0x3fc23c4f304be6c8              # double 0.14246549471118031
	.quad	0x3fec5fd3edfbac71              # double 0.88669773560594767
	.quad	0x3fe9c91964e24bff              # double 0.80579824165249636
	.quad	0x3fe3827ccedfd64d              # double 0.60967865376614727
	.quad	0x3feb109ceb2bdbb7              # double 0.84577794963740061
	.quad	0x3fc3ef917272b940              # double 0.15574853981292769
	.quad	0x3fd0d8ee9fc0072e              # double 0.2632404861507095
	.quad	0x3fe6ed324c8dc44c              # double 0.71645464851293061
	.quad	0x3fd652dba4a1e22c              # double 0.34880724980715416
	.quad	0x3fde76a09bb3d9d2              # double 0.47599044041944893
	.quad	0x3fe4214f13ae604d              # double 0.62906602710700954
	.quad	0x3fe440aebacdb3d2              # double 0.63289581761420721
	.quad	0x3fd024b959d313cc              # double 0.25224145671773779
	.quad	0x3fd882bd55db2854              # double 0.38297971138365949
	.quad	0x3fd8679c5c04bbe0              # double 0.38132390009098849
	.quad	0x3fe78f0e165d837e              # double 0.73621277206630942
	.quad	0x3fb0b04de89a3be0              # double 0.065190190589631936
	.quad	0x3febaa97d0f294c5              # double 0.86457434473108974
	.quad	0x3fe4201608161d64              # double 0.62891675547954806
	.quad	0x3fe3fcf68f60e195              # double 0.62462928775407767
	.quad	0x3fe25b8c036075f8              # double 0.57367516192942869
	.quad	0x3fedf79f11d41bdd              # double 0.93647721750391677
	.quad	0x3fe8b55e488e0d4c              # double 0.77213968439938573
	.quad	0x3fee9f6671fc6048              # double 0.95695802939281637
	.quad	0x3fe094c50e3ed4ba              # double 0.51816036970435353
	.quad	0x3fe7a8786b270452              # double 0.73931523254590048
	.quad	0x3fd2ccd6ed507bbc              # double 0.29375241446717459
	.quad	0x3fc9528e96815b74              # double 0.19783193920985875
	.quad	0x3fcc860fe93ed5ec              # double 0.22284125222147055
	.quad	0x3fe98fd21d4a0cec              # double 0.7988062450462201
	.quad	0x3fe27511b0e059a6              # double 0.57679066225209819
	.quad	0x3fe3c15faa6be4e4              # double 0.61735518727723759
	.quad	0x3fd979e222031e20              # double 0.39806416818143653
	.quad	0x3feeb7e1fa235c3b              # double 0.95994662146666287
	.quad	0x3fd8f825349576da              # double 0.39014558920994846
	.quad	0x3fde6f4c571ea34a              # double 0.47554310329228555
	.quad	0x3fe74c767f97a339              # double 0.72808384819391059
	.quad	0x3fb49323224a3ac8              # double 0.080370136138507964
	.quad	0x3fe2bf20208e3853              # double 0.58583074911599409
	.quad	0x3fe79af24ef61165              # double 0.73766436979398675
	.quad	0x3fd43375c1b3e560              # double 0.3156408683422196
	.quad	0x3fef49403a281e3f              # double 0.9776917587159416
	.quad	0x3fdc3771d94855dc              # double 0.44088407725334178
	.quad	0x3feda97d4d814349              # double 0.92693963182146277
	.quad	0x3febfdc30546ce73              # double 0.87472678213676003
	.quad	0x3fce4c643e892168              # double 0.23670628598689381
	.quad	0x3feee49b393ca3ec              # double 0.96540604762151138
	.quad	0x3fdc3a263541df90              # double 0.44104914856824795
	.quad	0x3fd22e31eab00ab2              # double 0.2840695182677947
	.quad	0x3fe6ef933ea8f321              # double 0.71674501646302613
	.quad	0x3fe6432e7626786c              # double 0.69570086551881394
	.quad	0x3fe94f317ab73048              # double 0.79091714828383264
	.quad	0x3fd2314e88e13222              # double 0.28425944678454773
	.quad	0x3fdbf2466fe6f22e              # double 0.4366623013300196
	.quad	0x3fd927a203510a52              # double 0.39304399799235512
	.quad	0x3fe6268ade5bb36b              # double 0.69220488957726667
	.quad	0x3fe0431e85a0bd52              # double 0.50819326495358497
	.quad	0x3fed57738d8daff1              # double 0.91692521712456998
	.quad	0x3fd68aae9cf965d0              # double 0.35221448258888888
	.quad	0x3fed962acbe2b589              # double 0.92458095380213579
	.quad	0x3fe1997872c556d0              # double 0.5499841920488624
	.quad	0x3fe2c7a542d1e25a              # double 0.5868707947802918
	.quad	0x3fd2ab0ec82f5c8e              # double 0.29169053601567263
	.quad	0x3fdbbd8611ff47e4              # double 0.4334426093820396
	.quad	0x3fec744bf9d9c74b              # double 0.88919638442005444
	.quad	0x3fee35584617bf66              # double 0.94401181879036922
	.quad	0x3fc1a17547c20404              # double 0.13773981097986632
	.quad	0x3fe06b90560ee360              # double 0.51313034828408988
	.quad	0x3fb6e1e524625d08              # double 0.08938438547408023
	.quad	0x3fe5a9f5a51bf764              # double 0.67699701545619151
	.quad	0x3fb229af4293e860              # double 0.070948556665741958
	.quad	0x3fe84e80510e3ff8              # double 0.7595826705091886
	.quad	0x3fe87ab0076f3100              # double 0.76497651531238375
	.quad	0x3fe53afa5ea52a6a              # double 0.6634494637049333
	.quad	0x3fe1ba6bc599b59d              # double 0.55400646776040541
	.quad	0x3fe22d4269b54f13              # double 0.56802483221187783
	.quad	0x3fcf0d39041d0aa4              # double 0.24259102536060084
	.quad	0x3fee189b7da7779d              # double 0.94050383130864967
	.quad	0x3fc409a0e0f05d4c              # double 0.15654383643480185
	.quad	0x3fb1285e356b5890              # double 0.067022216836763571
	.quad	0x3feb1bbab7a1d297              # double 0.84713493219040259
	.quad	0x3fe28d4f65812706              # double 0.57974977326486576
	.quad	0x3fdf932a129c756a              # double 0.49335719888207186
	.quad	0x3fe7653a058e4c0a              # double 0.73110676846624867
	.quad	0x3fd2850ddccf96e0              # double 0.28937098086895041
	.quad	0x3fdf064063bcb61c              # double 0.48475656261402533
	.quad	0x3fe1fd6a28941a53              # double 0.56218440938466541
	.quad	0x3fea73155d1ba5e1              # double 0.82654827294498656
	.quad	0x3fdb9e221728eeca              # double 0.43152668248852122
	.quad	0x3fe69fa0db71dab7              # double 0.70698588238049964
	.quad	0x3fa4ce511ba5eea0              # double 0.040636572480221789
	.quad	0x3fdbd8f30d7a913a              # double 0.43511654201781236
	.quad	0x3fb4d70f37106cc0              # double 0.081406546538732805
	.quad	0x3fe99b38472761f8              # double 0.80019773385271176
	.quad	0x3fe030a34a3ccf13              # double 0.50593723773497101
	.quad	0x3fce58a34371bb74              # double 0.23708000939538076
	.quad	0x3fbd4e0113814868              # double 0.11447149969288406
	.quad	0x3fdc09041af18cc6              # double 0.43805029517370675
	.quad	0x3fe4b10903186990              # double 0.64661074261248253
	.quad	0x3fb094eb3d1d4fc8              # double 0.064772322102100266
	.quad	0x3fd9eb9d2c454276              # double 0.40500573466582723
	.quad	0x3fe89a007c85eca6              # double 0.76879906006742682
	.quad	0x3fcc17c990ecc720              # double 0.21947593284999645
	.quad	0x3fd0faf7fed02d0c              # double 0.26531791576481178
	.quad	0x3fd591326d1d0938              # double 0.3369871202049981
	.quad	0x3fed0a08aad35c54              # double 0.90747483600979217
	.quad	0x3fd07f53381514b0              # double 0.25777130581657115
	.quad	0x3febae1ace1b8e1f              # double 0.8650030160465042
	.quad	0x3fdf561a0ff594ce              # double 0.48963023718381471
	.quad	0x3feaf10c91c61997              # double 0.84192493888331199
	.quad	0x3fc24d63ed854704              # double 0.14298676583944581
	.quad	0x3fd1403c551e8c68              # double 0.26954563438829959
	.quad	0x3fefc5a6b755f851              # double 0.992877348020338
	.quad	0x3fd1726224ea9450              # double 0.27260640721425933
	.quad	0x3fe3466931908c67              # double 0.60234508209795201
	.quad	0x3fbe227a3c4ceb10              # double 0.11771358463458292
	.quad	0x3fdf4aa155c9e716              # double 0.48893006685067186
	.quad	0x3fc4cca131e7ee04              # double 0.16249480187239851
	.quad	0x3fe474e721818401              # double 0.63927036804318516
	.quad	0x3fdf1d5604db5816              # double 0.48616552805231217
	.quad	0x3fe3bd38d12474df              # double 0.61684838150145171
	.quad	0x3fe339e30a207a5f              # double 0.60081626871017224
	.quad	0x3fe3d74848fcdce3              # double 0.62002958541316067
	.quad	0x3fefbe4b780bf369              # double 0.9919793457662368
	.quad	0x3fd9e513b2b714b2              # double 0.40460674717571543
	.quad	0x3fed3100471eaee9              # double 0.91223157778355557
	.quad	0x3fe9280964090624              # double 0.78613729036459689
	.quad	0x3fd52c15dd9b2f2a              # double 0.33081576005200708
	.quad	0x3f59c9f531f6f600              # double 0.0015740293964506824
	.quad	0x3fe10131a807abea              # double 0.53139574831345482
	.quad	0x3fef72db4367a03a              # double 0.98277056851384903
	.quad	0x3febe061e64da640              # double 0.87114043217770387
	.quad	0x3fe369eb86793e74              # double 0.60667969002129363
	.quad	0x3fe92ecb6fb2e89d              # double 0.78696224037345852
	.quad	0x3fe828a99b50f0f7              # double 0.7549636872786597
	.quad	0x3fc0b0f056b893d8              # double 0.13039974436210744
	.quad	0x3feac78d06f66de4              # double 0.83685923919568638
	.quad	0x3fc4c0bf5a927018              # double 0.16213218615018898
	.quad	0x3fc38221943d9e44              # double 0.1524087880927586
	.quad	0x3fd52c2ff77cc65e              # double 0.33082198303882204
	.quad	0x3fd108e075afb952              # double 0.26616679661573983
	.quad	0x3fd6f7b2bd95d7c4              # double 0.35886829866592174
	.quad	0x3fe7f40d46288d65              # double 0.74854148581327407
	.quad	0x3fe91d048fe223ac              # double 0.78479221441476942
	.quad	0x3fec442187fd5da9              # double 0.88331677017679511
	.quad	0x3fe178d79bf795a7              # double 0.54600124800042671
	.quad	0x3fb04195784b8488              # double 0.06350073038949422
	.quad	0x3fefa19a52dfa6bb              # double 0.98847690759904283
	.quad	0x3fec8e91d63c5da0              # double 0.89240352480821982
	.quad	0x3fefefe58ecf8b94              # double 0.99803426640242998
	.quad	0x3fea62b5b44e20ab              # double 0.8245495339952148
	.quad	0x3fea064d3695a8f6              # double 0.81326924000793954
	.quad	0x3fea204bc4d022a5              # double 0.81644237937969832
	.quad	0x3feb2cb0350db946              # double 0.8492051159098899
	.quad	0x3fdf4338f9f701d2              # double 0.4884779397071074
	.quad	0x3fbd09aa9a4969c0              # double 0.11342874781386225
	.quad	0x3fce27760a1813d4              # double 0.2355792569434515
	.quad	0x3fec2c4959c7f96c              # double 0.88040607009297167
	.quad	0x3fccf7f8f4bc2b10              # double 0.22631751966431368
	.quad	0x3fd8dfddfd274414              # double 0.38866376611719144
	.quad	0x3fef9b5ea7980cbe              # double 0.98771603329841873
	.quad	0x3fd56d10a2e2f658              # double 0.33478179842845668
	.quad	0x3fc575369bcf4f44              # double 0.1676395664968543
	.quad	0x3fc9c415c022319c              # double 0.20129653817674587
	.quad	0x3fda5ed28dc14694              # double 0.41203750460872723
	.quad	0x3fdd694c8d7a22ae              # double 0.45955194297907098
	.quad	0x3fe1e48edf65e1cb              # double 0.55915015823762226
	.quad	0x3fd98545cb9ce508              # double 0.39875931629247008
	.quad	0x3fdfa2e34eed12d4              # double 0.49431688983558542
	.quad	0x3fe71ae16c8ae8e8              # double 0.72203131866197356
	.quad	0x3fe2347d0776bf96              # double 0.56890727479729963
	.quad	0x3fec868421788217              # double 0.89142042672398503
	.quad	0x3fe0c7acba760aa4              # double 0.52437435548957412
	.quad	0x3fdfd72bf3c0dd7c              # double 0.49750803760567641
	.quad	0x3fd57c7c3f2ec70c              # double 0.33572298212230645
	.quad	0x3fdaf2216b5f613c              # double 0.42102847562411561
	.quad	0x3fbde8de9dc99bd0              # double 0.11683455803141318
	.quad	0x3fd90fbb0c7a0940              # double 0.39158512323787775
	.quad	0x3feb753d2397c27b              # double 0.85806137992592768
	.quad	0x3fc8849efa157394              # double 0.19154727183459086
	.quad	0x3fe3d2afe3dd613d              # double 0.61946863655888473
	.quad	0x3feabcf9d56f061a              # double 0.83556834875361408
	.quad	0x3fdb701ab6dc56a8              # double 0.42871730668535202
	.quad	0x3fe932dd3530b2ce              # double 0.7874589957114837
	.quad	0x3fedb949307d01ac              # double 0.92886790724155821
	.quad	0x3fe660c2e3cb4c04              # double 0.69931168070832017
	.quad	0x3fc4ae33edbdc8a4              # double 0.16156624897445682
	.quad	0x3fe972e031c63d97              # double 0.79527291986043991
	.quad	0x3fdf10c09d9aefc4              # double 0.48539748564848773
	.quad	0x3fe9ec418fa94376              # double 0.81008985575509374
	.quad	0x3fecd8773d9dcc4a              # double 0.90142404589131186
	.quad	0x3fdbc0653644aa20              # double 0.43361788081770847
	.quad	0x3fd7dad151eb5aaa              # double 0.3727305698388742
	.quad	0x3fe46604b9de8988              # double 0.63745342543215688
	.quad	0x3fed4acac4e9ba52              # double 0.91537989100999995
	.quad	0x3fdc8858550e66b8              # double 0.4458218412997712
	.quad	0x3fca25fa2ea00ef4              # double 0.20428397442457646
	.quad	0x3f9f96a002fe3ca0              # double 0.030848026449856847
	.quad	0x3fbd7dd5537c96d0              # double 0.11520131386040622
	.quad	0x3fd89051ba165600              # double 0.38380854771216377
	.quad	0x3fd80668526c530a              # double 0.37539108323225945
	.quad	0x3fdb6401456c193c              # double 0.42797881869809706
	.quad	0x3fd0b18a345e2ca8              # double 0.26083617319154451
	.quad	0x3f87e36152092600              # double 0.011664161983520493
	.quad	0x3fdeeddb4eb72c42              # double 0.48326761900961313
	.quad	0x3fe91c6751d84416              # double 0.78471723542509397
	.quad	0x3fc0af6865b2cb90              # double 0.13035302129500481
	.quad	0x3fa9826da4d7ddf0              # double 0.049823213932480459
	.quad	0x3fc1a5785c2c8800              # double 0.1378622484272114
	.quad	0x3fe93998ffeec8b2              # double 0.78828096377244194
	.quad	0x3fc43ccc1a7f1c4c              # double 0.15810538572097455
	.quad	0x3fcb89f2520a8a54              # double 0.21514729505459462
	.quad	0x3fe472612b103ddd              # double 0.6389623490412607
	.quad	0x3fea6e0c2396914b              # double 0.82593352270900178
	.quad	0x3fb1d34df4d6a1e0              # double 0.069630501055719218
	.quad	0x3fec4b1f9528e5f4              # double 0.88417033322110549
	.quad	0x3faf16392a3cd590              # double 0.06071642532917132
	.quad	0x3f9ba7e48a989dc0              # double 0.027007647475469687
	.quad	0x3febe90146af42f7              # double 0.87219299131001449
	.quad	0x3fb9fefdf36fed08              # double 0.1015471190766456
	.quad	0x3fea0b7f7e335690              # double 0.81390356682341469
	.quad	0x3fb37105546573f0              # double 0.075943310837331301
	.quad	0x3fa1432b32fddc50              # double 0.033715581869664946
	.quad	0x3fe4097425b07aac              # double 0.62615401612477717
	.quad	0x3fc496153b7b09fc              # double 0.16083016781165316
	.quad	0x3febfef45f790c03              # double 0.874872385473623
	.quad	0x3fcf35cd2d72bff4              # double 0.24382939070846954
	.quad	0x3fe79f015ac7ff05              # double 0.73815982561788529
	.quad	0x3fd35b55d48e4b50              # double 0.3024496627560227
	.quad	0x3fc21fec2ff8c2c8              # double 0.14159920065278286
	.quad	0x3fd01a7586450224              # double 0.25161493408453084
	.quad	0x3fe1c05ee1dea409              # double 0.55473274340795442
	.quad	0x3fea38db7bd0fca0              # double 0.81944059546357905
	.quad	0x3fe7e54ae5f7cf3e              # double 0.74673981586099791
	.quad	0x3fcee1cf04e25820              # double 0.24126613367542493
	.quad	0x3fdcbc73cecedcc6              # double 0.44900222011660806
	.quad	0x3fd8a61bcdd119d2              # double 0.38513846492096804
	.quad	0x3fef36bf7e0c4e90              # double 0.97543310755504997
	.quad	0x3fd4c5adfb6018c8              # double 0.32456540630699893
	.quad	0x3fe6242d4dd36d86              # double 0.69191613388413553
	.quad	0x3fe32e20e99ea19e              # double 0.59938092831457701
	.quad	0x3fe1a583bab49267              # double 0.55145441499605574
	.quad	0x3fe4d33549c95e27              # double 0.65078224574512411
	.quad	0x3fc425541da56908              # double 0.15738917777600414
	.quad	0x3fe1f57969dbfce8              # double 0.56121512103700599
	.quad	0x3fc043fcc4f1622c              # double 0.12707481018402811
	.quad	0x3feb256c81bfa438              # double 0.84831834165118547
	.quad	0x3feeb46535129864              # double 0.95952091565846986
	.quad	0x3fe6f84eeddc4b7f              # double 0.71781107384809661
	.quad	0x3fdc581bc56950b4              # double 0.44287771490531758
	.quad	0x3fd26491ad78bc96              # double 0.28738824787701256
	.quad	0x3fe131dee2d54390              # double 0.53733772567112403
	.quad	0x3febcd2fb68c7089              # double 0.86879716543218521
	.quad	0x3fe51b56fb1facba              # double 0.6595873741875018
	.quad	0x3fee7b145e80dfab              # double 0.95252436120698769
	.quad	0x3fe8d82d6591e116              # double 0.77638883436069039
	.quad	0x3fe734e3562180c1              # double 0.72520605871616095
	.quad	0x3fef95c20a1258cd              # double 0.987031001731134
	.quad	0x3fc5b82c1f201b78              # double 0.16968299407764298
	.quad	0x3fd17b486f933746              # double 0.27314959426881946
	.quad	0x3fe8c5219d9eb5fb              # double 0.77406388077878263
	.quad	0x3fcec1c8e5fd5164              # double 0.24028884153325258
	.quad	0x3fd319aef61616e8              # double 0.29844259292472808
	.quad	0x3fedee9f4fb5ead7              # double 0.93537869995574396
	.quad	0x3fbe0feebfdb9808              # double 0.11743061241176644
	.quad	0x3fbeafdcb79b9c70              # double 0.11987094385732333
	.quad	0x3fe7ea9e20dad4a8              # double 0.74738985459284368
	.quad	0x3fd7195c15dfd0e8              # double 0.36092283378753942
	.quad	0x3fd88b2c8f593cac              # double 0.38349451064000095
	.quad	0x3fd2c31af9e86f96              # double 0.29315828709672453
	.quad	0x3fd96b5330f093d6              # double 0.3971755960395148
	.quad	0x3fd9c91e12455e44              # double 0.40290023597978952
	.quad	0x3fe223f8167b67ee              # double 0.5668907584288243
	.quad	0x3fe8bb32ac2e4ac3              # double 0.77285131100719473
	.quad	0x3fbc90ae516f60e8              # double 0.11158265579377125
	.quad	0x3fe85b17d57de5e1              # double 0.76111976335158371
	.quad	0x3febc1b739de39fa              # double 0.86739693930013506
	.quad	0x3fe9d69f582a5ef5              # double 0.80744902820421649
	.quad	0x3fefedfd3c3ddca0              # double 0.99780141607233829
	.quad	0x3fd1ceb4e1005422              # double 0.27824136708051317
	.quad	0x3fa37c6a0c2cf6c0              # double 0.038058580385479157
	.quad	0x3fe526c937cc8fc8              # double 0.6609846200776639
	.quad	0x3fb21aa9b4b3e730              # double 0.070719343773728793
	.quad	0x3febcd0c92d3d030              # double 0.86878040959573433
	.quad	0x3fe3889e1f449158              # double 0.61042696101189176
	.quad	0x3fe82f81fa5545e3              # double 0.75579928296263821
	.quad	0x3fc0928a3089d0ac              # double 0.12947203989063405
	.quad	0x3fd31e9e938bba32              # double 0.29874386223574156
	.quad	0x3fe74206e8c67128              # double 0.72680993522547954
	.quad	0x3fee4ed6f2c6ef7c              # double 0.94712397973442774
	.quad	0x3fd8dce7d1f50576              # double 0.38848300460457297
	.quad	0x3fd7571cd9521298              # double 0.36469193670954203
	.quad	0x3fd87e3df942ff5a              # double 0.38270520536388164
	.quad	0x3fc6cdfd1d53d520              # double 0.17816127712254914
	.quad	0x3fe2256f1558b834              # double 0.56706957024812832
	.quad	0x3fe5ffbcbd04ac1d              # double 0.68746792714717098
	.quad	0x3fe4894dd18a41a2              # double 0.64176073957246538
	.quad	0x3fe4a4d3c9602acf              # double 0.64512051898176448
	.quad	0x3fef44b74e516e8a              # double 0.97713818832876709
	.quad	0x3fed278be79f8029              # double 0.9110774539840395
	.quad	0x3fcee7e8ded4a45c              # double 0.24145232086565016
	.quad	0x3fecec8b8a3bacca              # double 0.90387513159421329
	.quad	0x3fe1c88a500f2fd7              # double 0.55573001514994302
	.quad	0x3fd20cd6750b6576              # double 0.28203355245712858
	.quad	0x3fd1951af0e59bf0              # double 0.2747256615170377
	.quad	0x3fe3552ac13c4caf              # double 0.60414636365239527
	.quad	0x3fec851e6be437d7              # double 0.89124985764078246
	.quad	0x3fe2100b6fd9f648              # double 0.56445857854823434
	.quad	0x3fd6631831770aa2              # double 0.34979824858252517
	.quad	0x3fe757993700ca13              # double 0.72944317572393158
	.quad	0x3fe84437310d7afc              # double 0.75832709866139635
	.quad	0x3fdf53dcc87fb0b8              # double 0.4894935567852019
	.quad	0x3fe1dbe331cb8d92              # double 0.55809173322306749
	.quad	0x3fe261411483b0d3              # double 0.57437185293886228
	.quad	0x3fe603ee477cb654              # double 0.68797983133635876
	.quad	0x3fe8de234bb5cf18              # double 0.77711643969675759
	.quad	0x3fe7996b5f4d49f1              # double 0.73747795690206719
	.quad	0x3fd160580d683ba4              # double 0.27150536832135175
	.quad	0x3fd16bac3c1cda5a              # double 0.27219682569867631
	.quad	0x3fd2a1b4812e5466              # double 0.29111969580964681
	.quad	0x3fb90e9d8c98cc48              # double 0.097879263711363795
	.quad	0x3fe953707f1bf407              # double 0.79143547845853923
	.quad	0x3fc8581a263cd328              # double 0.19018866412229696
	.quad	0x3fe5aee990051931              # double 0.67760160569085859
	.quad	0x3fe208b3fa7c48f1              # double 0.56356238291689753
	.quad	0x3fede8e629407247              # double 0.93468006188374708
	.quad	0x3fd4e3f75815a612              # double 0.32641395189293221
	.quad	0x3fd4e93a966b56fc              # double 0.32673515977272394
	.quad	0x3fd1baf504f1f01c              # double 0.27703595621983523
	.quad	0x3fea2fbe178ffaf9              # double 0.81832794763599204
	.quad	0x3face82e7a33dbb0              # double 0.056458904664331455
	.quad	0x3fde7dea683879ba              # double 0.47643528154176418
	.quad	0x3fe562d824be4ce3              # double 0.66831595589101445
	.quad	0x3fdf95831fffa940              # double 0.4935005009162019
	.quad	0x3fee36cdd7af8ec7              # double 0.94418995023848928
	.quad	0x3fecb23f9b91b379              # double 0.8967588461360797
	.quad	0x3fd73d14f27cdcea              # double 0.36310313873714384
	.quad	0x3faf162a6d9fb430              # double 0.060715986139122768
	.quad	0x3fea4e893f382a6c              # double 0.82208692882097755
	.quad	0x3fe96fd5ce4623f2              # double 0.79490175521743667
	.quad	0x3fda43655fc291b8              # double 0.41036352492872252
	.quad	0x3fec4824fa6836e9              # double 0.88380669505724285
	.quad	0x3fecc6419b68cd2e              # double 0.89920120576281248
	.quad	0x3fc52a95a22898f4              # double 0.16536207597636798
	.quad	0x3fe296edb8acd53f              # double 0.58092390126572713
	.quad	0x3fa1ccdf7c462670              # double 0.034766181869667956
	.quad	0x3fe33567a5a68a67              # double 0.60026914933798714
	.quad	0x3fd1fc9e16cac18c              # double 0.28104355073721687
	.quad	0x3feda6683327ee0d              # double 0.92656335822488389
	.quad	0x3fd3eed92e15d0ce              # double 0.31145314693936832
	.quad	0x3fc7191ed14354f8              # double 0.1804541131774966
	.quad	0x3fef40cf9b715463              # double 0.9766614948263278
	.quad	0x3fe325a2950d23b7              # double 0.59834412681185867
	.quad	0x3fda2a4c7b9513a8              # double 0.40883171146952657
	.quad	0x3fe894a9fb618227              # double 0.76814745996313583
	.quad	0x3fe55682a6ba37b9              # double 0.66681034625957303
	.quad	0x3fcaedc4fcc76a20              # double 0.21038114874575431
	.quad	0x3fe9cc6be85729b9              # double 0.8062037980937965
	.quad	0x3fc7774aba921510              # double 0.18332800016302331
	.quad	0x3fc8b50459e625a4              # double 0.19302420034027279
	.quad	0x3fb212195115f690              # double 0.070588667198501875
	.quad	0x3fb2a16c83b8b360              # double 0.072775633009496854
	.quad	0x3fd590ad9d319696              # double 0.3369554553122297
	.quad	0x3fee211733cbdfe5              # double 0.94153938404542414
	.quad	0x3fd8c6891d1bba4e              # double 0.38711765139206455
	.quad	0x3fb88dea51996d80              # double 0.095915455743513788
	.quad	0x3feb073134f9be08              # double 0.84462795588291417
	.quad	0x3fed54e04c303c3a              # double 0.91661085968542655
	.quad	0x3fe2f84c1d9c6211              # double 0.59280973227856937
	.quad	0x3fdd7299a6312b70              # double 0.46011964063352817
	.quad	0x3fcdf691b7af0fb0              # double 0.23408719510018505
	.quad	0x3fd860a53040b3cc              # double 0.38089875900442105
	.quad	0x3fe1a8f11b10285e              # double 0.55187278066410861
	.quad	0x3fefd2c05a6c01ab              # double 0.99447648678328925
	.quad	0x3fe3684a31760802              # double 0.60648069057810994
	.quad	0x3fd731b8b1e5414a              # double 0.36240975735292535
	.quad	0x3fe2998e60ef21c6              # double 0.58124464924281294
	.quad	0x3fcc0bb25080aae4              # double 0.21910695009986292
	.quad	0x3fce6753936ba4ec              # double 0.23752827356592066
	.quad	0x3fefe9f7555f8bbf              # double 0.99731032061060165
	.quad	0x3fc6d02c6eef9568              # double 0.1782279531172819
	.quad	0x3fdc970ef707463e              # double 0.44671987651699741
	.quad	0x3fe1465bcfc9a9e1              # double 0.5398387010912381
	.quad	0x3fe4f95c64e3611b              # double 0.65543956474997189
	.quad	0x3fbf128d4afa4fa8              # double 0.12137682991516263
	.quad	0x3fd674ea485f5fec              # double 0.35088593547470626
	.quad	0x3fe00375f2cae3df              # double 0.5004224531213558
	.quad	0x3fe91c8543a0cf26              # double 0.78473151405930675
	.quad	0x3fdc7e195f89ea24              # double 0.44519647912935256
	.quad	0x3fef8ce2d79bbd8e              # double 0.98594801054962189
	.quad	0x3f83862660e93580              # double 0.0095332144093400739
	.quad	0x3fe3b81fe7532e09              # double 0.61622615032814665
	.quad	0x3fe28163bac048f1              # double 0.57829462504221685
	.quad	0x3fc2bc128ab03c74              # double 0.14636451503654124
	.quad	0x3fec557adb35b98d              # double 0.88543455900598789
	.quad	0x3fe92e89b9ebd836              # double 0.78693090737102156
	.quad	0x3fedfb29622274bf              # double 0.93690938155091164
	.quad	0x3fe23b0af6ee7e71              # double 0.56970737675506034
	.quad	0x3feeeeaf3fb729ac              # double 0.96663629955701457
	.quad	0x3fdfb4548dca2878              # double 0.49538148733757437
	.quad	0x3febb507d236a5ca              # double 0.86584845597570248
	.quad	0x3fdad27a391f042c              # double 0.41909652307737377
	.quad	0x3fe257807f1f0370              # double 0.57318138912533634
	.quad	0x3fc2fc7a5075df6c              # double 0.14833001068813745
	.quad	0x3fd3e831d546b91a              # double 0.31104703738937334
	.quad	0x3fef46d523bc9590              # double 0.97739655475440834
	.quad	0x3fe20fcfda47a063              # double 0.56443016655704203
	.quad	0x3fb2239f880aafc0              # double 0.07085606643039366
	.quad	0x3fc93ce35dbf8c38              # double 0.19717065885115104
	.quad	0x3fe7d94fdfe97384              # double 0.7452773450164476
	.quad	0x3feb9dfba3413e57              # double 0.86303502927507736
	.quad	0x3fbc7144889fc4e0              # double 0.11110332809018386
	.quad	0x3fd4896558514a58              # double 0.3208859789348586
	.quad	0x3fe50cc10de7b249              # double 0.65780689922173352
	.quad	0x3fe268a0627bb040              # double 0.57527178988448924
	.quad	0x3fcd23309e6582a8              # double 0.22763641103940313
	.quad	0x3fdbdb456ad0419e              # double 0.43525824957853299
	.quad	0x3feb61daae2d6818              # double 0.85569509524362086
	.quad	0x3fe9edc1b878c1bb              # double 0.81027303723936173
	.quad	0x3fe4eb01550829b4              # double 0.65368715865888882
	.quad	0x3fde9c9a87d69e22              # double 0.47830832734550388
	.quad	0x3fe392652d180ce3              # double 0.61162051017199948
	.quad	0x3fdd822827e432c0              # double 0.46106914420742484
	.quad	0x3fe6d1c7e6139bd3              # double 0.71310801445803873
	.quad	0x3fb170d249246350              # double 0.068127768380134457
	.quad	0x3fddad41de163962              # double 0.46369978607335416
	.quad	0x3fe34ad95538de74              # double 0.60288683552694389
	.quad	0x3fd786efe263e126              # double 0.36761090382016659
	.quad	0x3fe0d6198501faf8              # double 0.52613521555016884
	.quad	0x3fb788ffc5efeb60              # double 0.091934190582759978
	.quad	0x3fe8f4c23a66fe43              # double 0.77987777144148429
	.quad	0x3fde4bbdf1d8d138              # double 0.47337292306771728
	.quad	0x3fd97ed736e7130c              # double 0.39836674081406964
	.quad	0x3fda21d968432032              # double 0.4083159940896649
	.quad	0x3fed8b6cff4c01bd              # double 0.92326974737812117
	.quad	0x3fc08bd89376a560              # double 0.12926776123394301
	.quad	0x3fe37df89f858e0d              # double 0.60912734181005279
	.quad	0x3fe2a119b1b4f0d6              # double 0.58216557224616383
	.quad	0x3fdf9f2300da11c6              # double 0.49408793528735051
	.quad	0x3fcffe938364c274              # double 0.24995654979422322
	.quad	0x3fbbd0160e5ae808              # double 0.10864389276949293
	.quad	0x3fc0c3bcd807a7f0              # double 0.1309734396775748
	.quad	0x3fe9855c74432646              # double 0.79752943713646895
	.quad	0x3fc48bb18aee66f0              # double 0.16051310809853403
	.quad	0x3fed25d6e3df7bda              # double 0.91086906916086297
	.quad	0x3fe061fbb1531901              # double 0.51196083673201553
	.quad	0x3fd66fc64c1b9950              # double 0.35057218010333191
	.quad	0x3fd56d8f09de38fa              # double 0.33481193507840568
	.quad	0x3fc57f998332963c              # double 0.16795653253682186
	.quad	0x3f886857841c7800              # double 0.011917766303266575
	.quad	0x3fd2fc6e87bc023e              # double 0.29665721183122062
	.quad	0x3fec01a80b5d9986              # double 0.87520220012520222
	.quad	0x3fe40d2c6889afea              # double 0.62660808961436243
	.quad	0x3fe3e512127bb36c              # double 0.62171271905900261
	.quad	0x3febdcbfeb6cb04f              # double 0.87069698315964128
	.quad	0x3fea661065d3353f              # double 0.82495899093343172
	.quad	0x3fb23cbf67832d98              # double 0.071239435931764183
	.quad	0x3fdd353924fb095a              # double 0.45637348758113705
	.quad	0x3f949de8e9932d80              # double 0.020133628135949433
	.quad	0x3fe3da24d90f04e3              # double 0.62037889856597095
	.quad	0x3fdf526c673bb204              # double 0.48940572816243866
	.quad	0x3fe7a7e205a72f53              # double 0.73924351791490961
	.quad	0x3fdd3b98ba18010a              # double 0.45676248715609857
	.quad	0x3fe4a7b94851c0ff              # double 0.64547409176705617
	.quad	0x3fe6d37ba7c7a761              # double 0.71331579942237167
	.quad	0x3fb12372ddbd0bc8              # double 0.066947154174200496
	.quad	0x3fefe1b4a4bee1cf              # double 0.99630195786363084
	.quad	0x3fdf6dccf65f2d42              # double 0.49107669887299121
	.quad	0x3fea0df6991e84cc              # double 0.81420450121017884
	.quad	0x3fd19f5ca8b7d1d0              # double 0.27535168148395162
	.quad	0x3fe6f92d31ae31e4              # double 0.71791705802166605
	.quad	0x3fe22f74ec45d3e8              # double 0.56829305789017059
	.quad	0x3fc117066f3c84b0              # double 0.13351517135109736
	.quad	0x3fe98fba1b14163f              # double 0.79879479683649623
	.quad	0x3fde68ae34b537bc              # double 0.47513919017080375
	.quad	0x3feee16a1e5fc789              # double 0.96501642162751111
	.quad	0x3fe9146c43bb2562              # double 0.78374303082197749
	.quad	0x3fb7840ebd2272a8              # double 0.091858788657598667
	.quad	0x3fbbab6d302ed258              # double 0.10808451105442296
	.quad	0x3fef7b3576cfd169              # double 0.98379014211108739
	.quad	0x3fdd5436a5f4f028              # double 0.45826498228757595
	.quad	0x3fdf0c3ec03f8498              # double 0.48512238287191556
	.quad	0x3fe75237d7120d9c              # double 0.7287863922687623
	.quad	0x3fec0207706ca5a7              # double 0.87524768789187568
	.quad	0x3fe8a90a44fb7c2b              # double 0.77063477967374661
	.quad	0x3fee6aa56d81c757              # double 0.95051833522868889
	.quad	0x3fea0e5354c454ac              # double 0.8142487197498176
	.quad	0x3fe4cedb62bab1a1              # double 0.65025109561024774
	.quad	0x3fde90bbc54d50e4              # double 0.47758383052611308
	.quad	0x3fed958798507f07              # double 0.92450313328660705
	.quad	0x3fe3b4d2fd7beeb4              # double 0.61582326420417255
	.quad	0x3fb0b2b9ae5de628              # double 0.06522713191034113
	.quad	0x3fe53e119a9d9c02              # double 0.66382675360080179
	.quad	0x3fe4ce446f7b8f17              # double 0.65017911695437902
	.quad	0x3feb2450d9127b6a              # double 0.84818308255112851
	.quad	0x3fe4270f61b0cf88              # double 0.62976807670791946
	.quad	0x3fedd70a3ec4c5ef              # double 0.93250000247479459
	.quad	0x3fe5ebf621d23f80              # double 0.68505388837546377
	.quad	0x3fdcdd8ab32094be              # double 0.45102183812043595
	.quad	0x3feb79433ff0fa48              # double 0.85855257500208726
	.quad	0x3fc29d86b43ff5f4              # double 0.14543231774580045
	.quad	0x3fe157275a9ba945              # double 0.54188888260731771
	.quad	0x3f9e2546d6ccd0c0              # double 0.029439074383120767
	.quad	0x3febf61a7be8a1d8              # double 0.87379192543908868
	.quad	0x3f15e42844ad8000              # double 8.350845125226769E-5
	.quad	0x3fe68f6482115749              # double 0.70500398067336179
	.quad	0x3fd1912d53c877c2              # double 0.27448590452138089
	.quad	0x3feb925e1271f591              # double 0.86161712267464641
	.quad	0x3fed569413413cda              # double 0.91681865463933865
	.quad	0x3fee0a6250890ad0              # double 0.93876758317522935
	.quad	0x3fecf3163a518047              # double 0.90467368498139755
	.quad	0x3fe63e84517b2039              # double 0.69513145364999851
	.quad	0x3fe29b493f193d3f              # double 0.58145582508033289
	.quad	0x3fe1570931560ba4              # double 0.54187450061759934
	.quad	0x3fe5037b13d903f0              # double 0.65667489887721153
	.quad	0x3fe250078d2e4b66              # double 0.57226922582991047
	.quad	0x3fc99bc94b8adabc              # double 0.20006672085374599
	.quad	0x3f9322bdf90fba00              # double 0.018687218023780261
	.quad	0x3fee4262538f86e2              # double 0.94560352631034683
	.quad	0x3fe849d54308a43b              # double 0.75901282398729764
	.quad	0x3fcd6e217b00b594              # double 0.2299234247779337
	.quad	0x3fe970771bd4f05e              # double 0.79497867046257986
	.quad	0x3fbcf9b552553f30              # double 0.11318524608691116
	.quad	0x3fe1ce7a69c32cac              # double 0.55645485550612284
	.quad	0x3fed92052a2690fa              # double 0.92407472832249415
	.quad	0x3fec58b55e47c2d4              # double 0.88582867063640913
	.quad	0x3fe7fa018f75a97d              # double 0.74926832217651873
	.quad	0x3feeb3ec66ed4ffd              # double 0.95946331122331651
	.quad	0x3fdd231d61210cdc              # double 0.45526823506606973
	.quad	0x3fe84eae3c8bad01              # double 0.75960456681551147
	.quad	0x3fe0437af742b07e              # double 0.50823734562938205
	.quad	0x3fe2a355607f621d              # double 0.58243817183671676
	.quad	0x3fc5b1e4b365a3e0              # double 0.16949137458439534
	.quad	0x3fee66f958c6b439              # double 0.95007006968592755
	.quad	0x3fd590f7ce3e9a34              # double 0.3369731439692345
	.quad	0x3fd018e73690ab04              # double 0.25151996925949072
	.quad	0x3feafebe5d510d65              # double 0.84359663225079073
	.quad	0x3fd9a674c6c89d70              # double 0.40078467762437864
	.quad	0x3fd9cd3717b1fdc8              # double 0.4031503421210485
	.quad	0x3fd391531fdf4a8c              # double 0.30574491608164389
	.quad	0x3fd3600ad86bff12              # double 0.30273696074435563
	.quad	0x3fd6fede4f0768ba              # double 0.35930593221349805
	.quad	0x3fd4275e049acda2              # double 0.3149027867286468
	.quad	0x3fbe5b40258b9cb0              # double 0.11857987324366337
	.quad	0x3fd1085904d4f1f2              # double 0.26613450500352009
	.quad	0x3fe30c7bf2f190bb              # double 0.59527394723820437
	.quad	0x3fe17ebf3a87ef68              # double 0.54672204429469407
	.quad	0x3fb6852acecd47e8              # double 0.087969470490207535
	.quad	0x3fed2fc0cd047be8              # double 0.91207923929675605
	.quad	0x3fea3ca937723330              # double 0.81990490750613354
	.quad	0x3fea9d60c2992e6f              # double 0.83171117789738769
	.quad	0x3fdc185d3a5ee38c              # double 0.43898707103976942
	.quad	0x3f907b01332e0580              # double 0.016094225643887849
	.quad	0x3fe7f26a33c752d6              # double 0.74834165680894205
	.quad	0x3fe1f1462a536374              # double 0.5607024027514016
	.quad	0x3fa847bfa15c4a60              # double 0.047422398040130487
	.quad	0x3fd1d3df856a3014              # double 0.27855670956410106
	.quad	0x3fe34c78d365880e              # double 0.60308495796584949
	.quad	0x3fc509991227f6ec              # double 0.16435540567902451
	.quad	0x3fc8253c5d4a516c              # double 0.18863634638968152
	.quad	0x3fdbc1dd659c6dea              # double 0.43370757029489815
	.quad	0x3fd94ba6abe86766              # double 0.39524237430452158
	.quad	0x3feef263e70ad7f6              # double 0.96708865285358914
	.quad	0x3fe16097ed9f6864              # double 0.54304119501763326
	.quad	0x3fe19ef1bb9d829c              # double 0.55065237659080735
	.quad	0x3fe6d24beac9a771              # double 0.71317096573805661
	.quad	0x3fef5c07b44ee3b8              # double 0.97998414246023113
	.quad	0x3fe7f57e9eb47266              # double 0.74871760365529094
	.quad	0x3fef995bfc33d368              # double 0.98747061975755645
	.quad	0x3fdf01d57cc70440              # double 0.48448693452161606
	.quad	0x3fb8a43d2a4a48b8              # double 0.096256087136029289
	.quad	0x3fc45b282bfae474              # double 0.15903188846076299
	.quad	0x3fd809dc7c9c7636              # double 0.37560188454685617
	.quad	0x3fa0a596a63d3230              # double 0.032513339798786567
	.quad	0x3fd052eacc32571c              # double 0.25506086293295183
	.quad	0x3feb5737510d2fcf              # double 0.85439649420140451
	.quad	0x3fc87d770998c4c0              # double 0.19132888763991751
	.quad	0x3feb098d4a22b566              # double 0.8449160049400859
	.quad	0x3fed8a3e847962cd              # double 0.92312551378116725
	.quad	0x3fedcd787a55331d              # double 0.93133186238410171
	.quad	0x3fe00a60e99ce982              # double 0.50126691463019335
	.quad	0x3fcd94811fa0ea9c              # double 0.23109449428905726
	.quad	0x3fef4dcbc58553eb              # double 0.97824657991679708
	.quad	0x3fd26b866dfcb408              # double 0.2878128122418393
	.quad	0x3fe4bbf535419657              # double 0.64794407273866284
	.quad	0x3fd9f4d08c70a854              # double 0.40556729998445928
	.quad	0x3fd6f065f80fa288              # double 0.35842274880136715
	.quad	0x3fb4c641bceb33b0              # double 0.081150158522361293
	.quad	0x3fe4aeeddc43d607              # double 0.64635365505699915
	.quad	0x3fb9e69296763750              # double 0.10117450879462564
	.quad	0x3fa5a35a645baae0              # double 0.042261910200826369
	.quad	0x3fe90543eaebe40f              # double 0.78189273722739638
	.quad	0x3fdbe683f6679e76              # double 0.43594454825367934
	.quad	0x3fdf8a50b6bd5e42              # double 0.49281709523845418
	.quad	0x3fe6f6935ed42212              # double 0.71759956856937124
	.quad	0x3fe472787bd1c13d              # double 0.63897346671550503
	.quad	0x3fefe02819443ae1              # double 0.99611287054889541
	.quad	0x3fd9ada5408c460e              # double 0.4012234812117591
	.quad	0x3fbb614f4e1fcd60              # double 0.10695357949571394
	.quad	0x3febaa8a71c0132b              # double 0.86456796852926254
	.quad	0x3fa681cf6aa9f740              # double 0.043959123392581123
	.quad	0x3fdfd0c165535bc6              # double 0.49711642165260306
	.quad	0x3fdad73423be0786              # double 0.41938498964747628
	.quad	0x3fd21390b0b00410              # double 0.28244416479725576
	.quad	0x3fc7b89a4cc49d20              # double 0.18532112835348702
	.quad	0x3fd56b8ba08a060c              # double 0.33468905141498406
	.quad	0x3fbfc707f16687e0              # double 0.12413072246138723
	.quad	0x3fd63dc9b23100be              # double 0.3475212326193392
	.quad	0x3fe5d85a838a3611              # double 0.68266034785637164
	.quad	0x3fe636fbdbd581f6              # double 0.69421189247446935
	.quad	0x3fd841c74aba98ac              # double 0.37901480005019539
	.quad	0x3feaf928a6cc3b83              # double 0.84291489198390968
	.quad	0x3fddf3d7277cb594              # double 0.468007839738527
	.quad	0x3fe9b36fc32045bb              # double 0.80315387831267715
	.quad	0x3fdb6ff2c5ee68ba              # double 0.42870778397776699
	.quad	0x3fdc5202fb1d8324              # double 0.44250559351898944
	.quad	0x3fd6129008f6c2bc              # double 0.34488297343618135
	.quad	0x3fed3fa74547e722              # double 0.9140201905385974
	.quad	0x3fd301747787b47a              # double 0.29696380303250403
	.quad	0x3fd5991d1727d572              # double 0.33747031461037758
	.quad	0x3fe2a8263b11c8c4              # double 0.58302604233747291
	.quad	0x3fda3b469366d10a              # double 0.40986790079775004
	.quad	0x3fc6f67d3f7ac4dc              # double 0.17939725493992043
	.quad	0x3fc6804247c78070              # double 0.17578915123795325
	.quad	0x3fc267422fba61bc              # double 0.14377620058509233
	.quad	0x3fc809f77d813d90              # double 0.18780416134039202
	.quad	0x3fcd48d8b32285a8              # double 0.22878559824770872
	.quad	0x3fefc8d31f026833              # double 0.99326473289989392
	.quad	0x3fa02dc451c47800              # double 0.03159917352807895
	.quad	0x3fee5f4536aca292              # double 0.94912968329033931
	.quad	0x3fea70cd0e637057              # double 0.82626965341797642
	.quad	0x3fdf78630632391e              # double 0.49172282795997713
	.quad	0x3fee023b1b12bc9c              # double 0.93777232444508085
	.quad	0x3fee09d5618249d0              # double 0.93870038075174911
	.quad	0x3fe5cd04ddab755b              # double 0.68127673430323499
	.quad	0x3fa715f61cb648d0              # double 0.045089426998985993
	.quad	0x3fed7351400ff600              # double 0.9203268290727351
	.quad	0x3fe4592027614d52              # double 0.63587958995268878
	.quad	0x3fdfda218638efa6              # double 0.49768865687996777
	.quad	0x3fd6140715510436              # double 0.3449723919075639
	.quad	0x3fec4656e41db605              # double 0.88358635476987557
	.quad	0x3fe69e6c4a291667              # double 0.70683874592277796
	.quad	0x3fe914e76d8b441e              # double 0.7838017596751603
	.quad	0x3fefb01c06c06b5b              # double 0.99024773901633567
	.quad	0x3fd58b878bc230a0              # double 0.33664120338722547
	.quad	0x3fe61235ce683360              # double 0.68972292245744526
	.quad	0x3fddd06adcc3447c              # double 0.46584579047073027
	.quad	0x3fba3cf2637b44f0              # double 0.10249247483013213
	.quad	0x3fe9696beb96236a              # double 0.79411884320243797
	.quad	0x3fe51a2a2262460c              # double 0.6594439193306143
	.quad	0x3fea6a7f38f4bdcb              # double 0.82550011753294805
	.quad	0x3fb8d4c331e95720              # double 0.096996497807904535
	.quad	0x3fe0c2e216159a80              # double 0.52378944695813345
	.quad	0x3fe57736ee936eac              # double 0.67080256077629974
	.quad	0x3fd84bf7889953d2              # double 0.37963665332546015
	.quad	0x3fcab12416daf1a8              # double 0.20853091350535391
	.quad	0x3fe613eb536867da              # double 0.68993154802887635
	.quad	0x3fb25705a424f020              # double 0.071640350889481841
	.quad	0x3fec089b0cfebdff              # double 0.87605049646475652
	.quad	0x3fe737ab3a1c3618              # double 0.72554551458023564
	.quad	0x3fd04f2ab3d2797a              # double 0.25483195839651496
	.quad	0x3feed48e5538b730              # double 0.96344677586396266
	.quad	0x3fc8524d8337b450              # double 0.19001168162449966
	.quad	0x3fed80ffd4d36928              # double 0.92199698989432921
	.quad	0x3fd5979a13881caa              # double 0.33737804324523302
	.quad	0x3feba4c13b9db9ff              # double 0.86386167186520868
	.quad	0x3fe585c6d053e816              # double 0.67258015336051602
	.quad	0x3fe6409c7c4efbd6              # double 0.69538711813936049
	.quad	0x3fe0c3de9914be7a              # double 0.52390985392226175
	.quad	0x3fd8429a48d7f99e              # double 0.37906510461461973
	.quad	0x3fdc44c37b9729be              # double 0.44169699735052947
	.quad	0x3fe34dd1186ab517              # double 0.60324911850844642
	.quad	0x3fe14d6fcd9057d3              # double 0.54070272587955015
	.quad	0x3fde7bc4e135b270              # double 0.47630426400318182
	.quad	0x3fb63b94cc747110              # double 0.086846637645468627
	.quad	0x3feff66b41959bf5              # double 0.99883044061141268
	.quad	0x3fdee1c0889b42b8              # double 0.48252881374814249
	.quad	0x3fe7fc46a291fb14              # double 0.74954540016173831
	.quad	0x3fc189f616efc300              # double 0.13702274436902684
	.quad	0x3fef43db01a83ebd              # double 0.97703314136193564
	.quad	0x3fe28c7d9134c965              # double 0.5796497188623958
	.quad	0x3fedec89cad243bd              # double 0.93512429822487031
	.quad	0x3fe621e2d2934fe2              # double 0.69163647773757142
	.quad	0x3fd2e3c76e7a3b6e              # double 0.29515252865615238
	.quad	0x3fe2261271c58897              # double 0.56714746685999529
	.quad	0x3fec0c8bc8ca377e              # double 0.8765314981153407
	.quad	0x3fdf4814d6afa7da              # double 0.4887744995636446
	.quad	0x3fe09539bed79d97              # double 0.51821601175190579
	.quad	0x3fe0ae4f0adb7f25              # double 0.52127792473399792
	.quad	0x3fe03fb482c8ee7a              # double 0.5077765039818154
	.quad	0x3fef6125b587542b              # double 0.980608801410772
	.quad	0x3fed14c78389cd9a              # double 0.90878654185364671
	.quad	0x3f839273645c8380              # double 0.0095566763880599037
	.quad	0x3fdb6a09be162aa4              # double 0.42834704936164258
	.quad	0x3fe0d4e856dd5d54              # double 0.52598969426882514
	.quad	0x3fcea8d69defbc64              # double 0.23952753745786304
	.quad	0x3fd440f1bc9d2508              # double 0.31646388453789642
	.quad	0x3fe37304c24c200d              # double 0.60779035519317548
	.quad	0x3fee4bf4835e89ac              # double 0.94677186639846899
	.quad	0x3fea5bb5b1cfb447              # double 0.8236950371625732
	.quad	0x3fdec232dc2afdca              # double 0.48060294628882316
	.quad	0x3fe5a75bc0539387              # double 0.6766794926048626
	.quad	0x3fc990574597cfe0              # double 0.19971743486496418
	.quad	0x3fda084a849b5118              # double 0.40675604772447249
	.quad	0x3fd16ae089a0f6b2              # double 0.27214826050099383
	.quad	0x3fcf3c221cc29ecc              # double 0.24402262119587304
	.quad	0x3fed1039418bb0ff              # double 0.90823042680634092
	.quad	0x3feb08144ab7ffa4              # double 0.84473623841767109
	.quad	0x3fddfdacb2e8d580              # double 0.46860806914931885
	.quad	0x3fd32e11560dfe08              # double 0.29968675044798987
	.quad	0x3fc4335db2fa0654              # double 0.15781756629080468
	.quad	0x3fd1ff300c7e5098              # double 0.28120042057094841
	.quad	0x3feba2763c8352e6              # double 0.86358177012388349
	.quad	0x3fec8aa10c725147              # double 0.8919224970909817
	.quad	0x3fef023c768c8fa0              # double 0.96902297166933593
	.quad	0x3fcd311908d958a0              # double 0.22806084568100449
	.quad	0x3fe34ca2721b55eb              # double 0.60310480391006871
	.quad	0x3fee4772beefd0b2              # double 0.94622170727099886
	.quad	0x3fa7b7f2afc32e30              # double 0.046325286822675671
	.quad	0x3fef0609891213e6              # double 0.96948696872334206
	.quad	0x3fd06843beaced42              # double 0.25636380787519297
	.quad	0x3fd3960db65a11ae              # double 0.30603354270740624
	.quad	0x3fe2feb9883fb8c4              # double 0.59359432803264456
	.quad	0x3fe1116bb0d44256              # double 0.53337654625836239
	.quad	0x3fe6e53dbfab9658              # double 0.71548354564283567
	.quad	0x3feb1277b19f7d2d              # double 0.84600434009545256
	.quad	0x3fdc85c6e48e2f18              # double 0.44566509551872135
	.quad	0x3fe9a4006f0809fb              # double 0.80126973806210289
	.quad	0x3fe9c9f6a4d57c8d              # double 0.80590374178054136
	.quad	0x3fec3dacdd7bf2be              # double 0.88252871760013085
	.quad	0x3fe4d146bd2515ff              # double 0.65054642622334302
	.quad	0x3fec9b08e0497cb6              # double 0.89392513090196846
	.quad	0x3fd690115179c94a              # double 0.3525431914960292
	.quad	0x3fbfaa85d0af61e0              # double 0.1236957201466633
	.quad	0x3fd0fa18b4cc2ed0              # double 0.26526467948927479
	.quad	0x3fdafbf3b8fdfa60              # double 0.42162793222079209
	.quad	0x3faf0f8f7c7abfb0              # double 0.060665592141389779
	.quad	0x3fd5ed27b90097f6              # double 0.34259980265267076
	.quad	0x3fd2cbf6208d6096              # double 0.29369881800585895
	.quad	0x3feb4a17fdb10508              # double 0.85279464291684892
	.quad	0x3fee47d89255bc8b              # double 0.94627026158367877
	.quad	0x3fa3895ef7718f90              # double 0.038157432275311653
	.quad	0x3fe5903e8882bc25              # double 0.67385794317477077
	.quad	0x3fe00b78c4576a48              # double 0.50140035961096263
	.quad	0x3fe48023b27b2e6a              # double 0.64064202174763563
	.quad	0x3fe3c401417f0d02              # double 0.61767638008350922
	.quad	0x3fe9e98d35eee766              # double 0.8097597173102542
	.quad	0x3fe8b2853daccb0f              # double 0.7717920498456311
	.quad	0x3fe4395eb6e32d98              # double 0.63200317115972648
	.quad	0x3fc67f75409366b4              # double 0.17576470997919602
	.quad	0x3fda065e16169304              # double 0.40663864285515694
	.quad	0x3fcc6ccadf8bc938              # double 0.2220700828107256
	.quad	0x3fd86318f15b574c              # double 0.38104842729568555
	.quad	0x3fa79d81716eb6f0              # double 0.0461235476462728
	.quad	0x3feabafd70b9d1d0              # double 0.83532592789429749
	.quad	0x3fe13bf3584b2cea              # double 0.53856818432668985
	.quad	0x3fe1c9ff162b81da              # double 0.55590776758259186
	.quad	0x3fdcbc2d60891fc4              # double 0.44898542811688125
	.quad	0x3fe912cb9411584e              # double 0.78354433936579837
	.quad	0x3fc08b0fc8b9945c              # double 0.12924382496854292
	.quad	0x3fe77eca1466956b              # double 0.73422721848025441
	.quad	0x3fd5c42332819a2c              # double 0.34009628231288747
	.quad	0x3f706f271d23a080              # double 0.0040122535594734332
	.quad	0x3fe75cf28f5fcfe5              # double 0.73009613039766619
	.quad	0x3fd92fac744578c8              # double 0.39353476862551107
	.quad	0x3fe415879ddddf43              # double 0.62762814362847796
	.quad	0x3fe0971f4cd4b259              # double 0.5184475422480076
	.quad	0x3fcc2d706db63d5c              # double 0.22013669354462706
	.quad	0x3fe5c3f6b3c15d21              # double 0.68017134769880638
	.quad	0x3fece697e2e915b1              # double 0.90314859693960703
	.quad	0x3fc6553a758e01a4              # double 0.17447596302009771
	.quad	0x3feb7125e18cb32c              # double 0.85756200840623852
	.quad	0x3fea20ba3fedd968              # double 0.81649506078865119
	.quad	0x3fe3b69367c5f871              # double 0.61603708523013101
	.quad	0x3fd8b89d3cfa16ce              # double 0.3862679572560922
	.quad	0x3fe7b6011d62fe36              # double 0.74096732844913649
	.quad	0x3fd1b9a0e1533bac              # double 0.27695486072928577
	.quad	0x3fed2d446330113c              # double 0.91177577374086338
	.quad	0x3fe75a36fc0611c4              # double 0.72976254676228125
	.quad	0x3fe7822b26d518d4              # double 0.73463971695380303
	.quad	0x3fd62158a9c1d0c4              # double 0.3457852990898227
	.quad	0x3fe605304d4ffd7b              # double 0.68813338375177524
	.quad	0x3fc7090a2e381144              # double 0.17996337181842581
	.quad	0x3fb7725a8aa07c78              # double 0.091588648647744964
	.quad	0x3fe7e409c8d25f5c              # double 0.74658669684411505
	.quad	0x3fc03858c6c3b1dc              # double 0.12671956734938206
	.quad	0x3fe0cf2a0e04981f              # double 0.52528860795860399
	.quad	0x3fd8230b3527f0e2              # double 0.3771389025785209
	.quad	0x3fef11eee792a362              # double 0.97093911389411525
	.quad	0x3fd024efdc97afc4              # double 0.25225445310820427
	.quad	0x3fc3606d1fe369f8              # double 0.15138019616172449
	.quad	0x3fbf2b0db3af2418              # double 0.1217506946260446
	.quad	0x3fd5b1fdfd05ea6c              # double 0.3389887782028953
	.quad	0x3fba2037b9a0c6f8              # double 0.10205410272535775
	.quad	0x3fe00d8786570b95              # double 0.50165153730664491
	.quad	0x3feff81adec6bd6d              # double 0.99903625021935982
	.quad	0x3fe0e5a172b668cb              # double 0.5280310860137204
	.quad	0x3fefdcc4c1ca2bd5              # double 0.99569928979451083
	.quad	0x3fe1f59baaa75c55              # double 0.56123145418940601
	.quad	0x3fc9b229bfb886b0              # double 0.20074960576407852
	.quad	0x3fe5a8e25b3a7a15              # double 0.67686574762393781
	.quad	0x3fe95fcf84a28fec              # double 0.79294563203120338
	.quad	0x3fc771e5ef13a82c              # double 0.18316339658423553
	.quad	0x3fe534ebec8fb593              # double 0.66271015361205554
	.quad	0x3fce9516eb679320              # double 0.23892485136379893
	.quad	0x3fe9bc5596c58cea              # double 0.80424003074258832
	.quad	0x3fc1484f6816d65c              # double 0.13501923162918927
	.quad	0x3fe14ffb6d93f5ed              # double 0.54101344491908565
	.quad	0x3fd2efe24cdfbd44              # double 0.29589135653710152
	.quad	0x3feb0bcb363e88e8              # double 0.84518967241845377
	.quad	0x3fd0ef06dba1edd6              # double 0.26458903740396289
	.quad	0x3fd0ea032cee462e              # double 0.26428298366326686
	.quad	0x3fefcd8ffb904395              # double 0.99384307034971419
	.quad	0x3fee0de214645e69              # double 0.93919471724343595
	.quad	0x3fd2a21db510e29a              # double 0.29114477808210781
	.quad	0x3fe2630698deba1d              # double 0.57458810670306415
	.quad	0x3fef3e9caee150a8              # double 0.9763930717113185
	.quad	0x3fe1bdcb2f8f6321              # double 0.5544181755932166
	.quad	0x3fea6592373daa89              # double 0.82489882268176118
	.quad	0x3fe213bb437b929f              # double 0.56490863018241899
	.quad	0x3fe637aadc4833c9              # double 0.69429533981166813
	.quad	0x3fca8e4cd8400e24              # double 0.20746765669910971
	.quad	0x3fc4cebd21f294f0              # double 0.16255916745755128
	.quad	0x3fe76f4e4735c956              # double 0.7323371306249935
	.quad	0x3fd39536e1ed7c32              # double 0.30598232329606667
	.quad	0x3faadd10bf016c60              # double 0.052467845264538182
	.quad	0x3fe55712ecdc9c03              # double 0.66687914144574767
	.quad	0x3fe747928453fb4d              # double 0.72748685689280423
	.quad	0x3fe0c60eca428aae              # double 0.5241769743336897
	.quad	0x3feeae031aa6ceb6              # double 0.95874171452893253
	.quad	0x3fd427d1c568c1d8              # double 0.31493038442843391
	.quad	0x3fc2b8aea58efdb0              # double 0.1462610538855933
	.quad	0x3fc62f418d807ad8              # double 0.17331714066764081
	.quad	0x3feab4e0b172b7a1              # double 0.83457979829630713
	.quad	0x3fe53de6b66ba32a              # double 0.66380630139346875
	.quad	0x3fe136fad1b7f389              # double 0.5379613967958089
	.quad	0x3fe5111b5483762b              # double 0.658338227334473
	.quad	0x3fce0d2bd3a374bc              # double 0.23477695306693203
	.quad	0x3fd3f1a1d3f6b852              # double 0.31162305545411073
	.quad	0x3fe157fe2e14e8ee              # double 0.54199131965949987
	.quad	0x3fdb16ba1fe4e916              # double 0.42326214899698422
	.quad	0x3fdd11859e6bcfba              # double 0.454194454868453
	.quad	0x3fd6af6c5116b922              # double 0.35445697707008794
	.quad	0x3fedd9c3e8e4e1ab              # double 0.93283267485735644
	.quad	0x3fdfe501c3cbeb7a              # double 0.49835247154958717
	.quad	0x3fe939137e92da49              # double 0.78821730348028851
	.quad	0x3fe27b47b4335e8e              # double 0.57754883952562053
	.quad	0x3fcfb0454cb77c68              # double 0.24756685491499586
	.quad	0x3fd03e6bfb1137a6              # double 0.25380992430006655
	.quad	0x3fe0e1cdce8238ff              # double 0.5275639565823268
	.quad	0x3feb6787fe2ea56d              # double 0.85638808865512106
	.quad	0x3fe77f26549ed7fd              # double 0.73427120711744431
	.quad	0x3fe77774110c6de8              # double 0.73333171205325431
	.quad	0x3fc63c481fcf5ac4              # double 0.1737146525690233
	.quad	0x3fd84742cfaa2afc              # double 0.37934942512281089
	.quad	0x3fdb1f264b9429ea              # double 0.42377622013796545
	.quad	0x3fad218c130faf40              # double 0.056896569563689159
	.quad	0x3fc2ca752868cb50              # double 0.14680351708519845
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
