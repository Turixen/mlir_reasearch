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
	.quad	0x3fed019963ebc883              # double 0.90644521251512378
	.quad	0x3fea6fd61209f52a              # double 0.82615188143941976
	.quad	0x3fddc83209e9e4f8              # double 0.46534396141176115
	.quad	0x3fe16a2da5e9c1c7              # double 0.54421121983437437
	.quad	0x3feb433bfef64a19              # double 0.85195731923369344
	.quad	0x3feba0347e7ddbe3              # double 0.86330628114125962
	.quad	0x3feafd372d1fada1              # double 0.8434100991557224
	.quad	0x3f9cefdeb5901ba0              # double 0.02825878127262238
	.quad	0x3febccc0a6e7af8a              # double 0.8687442073692051
	.quad	0x3fd11bfb0b561c44              # double 0.26733280283992067
	.quad	0x3fec9aad9b2593f9              # double 0.89388160993678334
	.quad	0x3fb2525749590640              # double 0.071568923384824679
	.quad	0x3fe83c066e0ef78d              # double 0.75732728477281486
	.quad	0x3fe88bdc9c1d043f              # double 0.76707296839607142
	.quad	0x3fe222510f514997              # double 0.56668904296593581
	.quad	0x3fc72532cc12ee8c              # double 0.18082270588444194
	.quad	0x3fee5b5ff319f7be              # double 0.94865415077924076
	.quad	0x3fc07ce39fbeb31c              # double 0.12881131458325334
	.quad	0x3fc46655a4040df0              # double 0.15937300213418792
	.quad	0x3fc4d5bb6345d240              # double 0.16277258250524262
	.quad	0x3fc63d8d058c44c8              # double 0.17375338335890533
	.quad	0x3faaee47036b5c60              # double 0.052599162261395049
	.quad	0x3fd06827468fa340              # double 0.25635702028971608
	.quad	0x3fb3aefadb9895f0              # double 0.076888731586755687
	.quad	0x3fe55a35ca28ae71              # double 0.66726197704470114
	.quad	0x3fe58747c9333533              # double 0.67276372238999327
	.quad	0x3feca0960da33971              # double 0.89460280097573108
	.quad	0x3fd4e627572011a0              # double 0.32654746540381474
	.quad	0x3fdfb8a340c9a3be              # double 0.49564439131659899
	.quad	0x3fec97ac8a055d47              # double 0.89351489026277242
	.quad	0x3fd41198c10b4b7a              # double 0.31357401706662069
	.quad	0x3fe8929dcec0075c              # double 0.76789751416093166
	.quad	0x3fd78abcd08f97b4              # double 0.36784286849285341
	.quad	0x3fd9fc81de2ec0b4              # double 0.40603682229540117
	.quad	0x3fd89f1d94dbbab0              # double 0.38471164261765534
	.quad	0x3fec10740eff20c2              # double 0.87700846604368388
	.quad	0x3f9a04435bec38e0              # double 0.025406887517470333
	.quad	0x3fe797aac12f10c6              # double 0.73726403933735507
	.quad	0x3fe99a24c29b715a              # double 0.80006635674684934
	.quad	0x3fdf3853261fa9f6              # double 0.4878127929975159
	.quad	0x3fd534e587987300              # double 0.33135355226276886
	.quad	0x3fdb4fb21046ae70              # double 0.42673923100912869
	.quad	0x3fe6865797963f6b              # double 0.70389918906037729
	.quad	0x3fe69f6ea4ab4bc3              # double 0.70696193849504885
	.quad	0x3fd0547e7f06a54c              # double 0.25515711216811066
	.quad	0x3fe5c6f83f965a74              # double 0.68053829593084325
	.quad	0x3fe9d72e1a907dcc              # double 0.80751710117686448
	.quad	0x3fe35b66140845d6              # double 0.60490707314073222
	.quad	0x3fe980ff1819d856              # double 0.79699663836687296
	.quad	0x3f9c4dd1ef75ff40              # double 0.027640609970603025
	.quad	0x3fe179dc2300dc31              # double 0.54612547718614313
	.quad	0x3feb587ded8392a8              # double 0.85455223454899443
	.quad	0x3febd746fedde998              # double 0.87002897051506789
	.quad	0x3fd34c30a167294a              # double 0.30152526628502996
	.quad	0x3fdbf5351f4279be              # double 0.43684127857877886
	.quad	0x3fedbf9191e3ef48              # double 0.92963484281742925
	.quad	0x3fd910403fd227da              # double 0.39161688072692658
	.quad	0x3fec4156d5c8352e              # double 0.88297597650822524
	.quad	0x3fc1df184a7aa004              # double 0.13962081562681317
	.quad	0x3fe3d18d7c4992d7              # double 0.61933016085512349
	.quad	0x3fa513332ef9bd90              # double 0.041162108883209148
	.quad	0x3fce4448199b999c              # double 0.23645879030591466
	.quad	0x3fae2250f9b3e010              # double 0.058855562669066441
	.quad	0x3fc78ee9ed549e70              # double 0.1840488823738613
	.quad	0x3fdd1baf8c1aaf56              # double 0.45481480295233234
	.quad	0x3fe83810cac3bd3f              # double 0.75684394457304183
	.quad	0x3fb9b7300af10768              # double 0.10045147196890769
	.quad	0x3fdd2cd85a3737be              # double 0.45586212930799863
	.quad	0x3fed72b5409374f3              # double 0.92025244343281398
	.quad	0x3fb4f972b25551e8              # double 0.081931274927519504
	.quad	0x3fe68193faa61ad7              # double 0.70331763224461497
	.quad	0x3fc16a6e16eaab50              # double 0.13606048697450968
	.quad	0x3fd622bae35194ec              # double 0.34586975287522992
	.quad	0x3fe26f585aac907b              # double 0.5760919352510564
	.quad	0x3fe152c238194fc3              # double 0.54135237652598567
	.quad	0x3fe64321b51290b9              # double 0.69569478383757322
	.quad	0x3fc353deab665d58              # double 0.15099700326093557
	.quad	0x3fcc55145b7dbba0              # double 0.22134642093029999
	.quad	0x3fe77932313a20e9              # double 0.73354444136296337
	.quad	0x3fe70dea54516aac              # double 0.72044865101209643
	.quad	0x3fef8b546aaf1367              # double 0.98575802647301891
	.quad	0x3fe64ab67bd3e90e              # double 0.69662021813499719
	.quad	0x3fe57adf48155e0d              # double 0.67124904707719824
	.quad	0x3fc0ae881fd240b0              # double 0.13032628587507622
	.quad	0x3fe5465ae8c7f188              # double 0.6648382708076932
	.quad	0x3fe018547e7977a1              # double 0.50296997739836879
	.quad	0x3fc6ff2c5649fd04              # double 0.17966226781206995
	.quad	0x3fd3cd1f6ba3242a              # double 0.3093946982522221
	.quad	0x3fb0ec10e2071e38              # double 0.066102080519265694
	.quad	0x3fed541b08abf51c              # double 0.91651679700558785
	.quad	0x3fe63ce505eb6464              # double 0.69493342548515757
	.quad	0x3fe32bb4889d00ef              # double 0.59908510858806874
	.quad	0x3fe1527d473959da              # double 0.54131950293486431
	.quad	0x3fe85fea0266bc2f              # double 0.76170826405530601
	.quad	0x3fa7ac4f706d0880              # double 0.046236498330942233
	.quad	0x3fab370311e1afd0              # double 0.053154083187876844
	.quad	0x3febdffa0bf58a13              # double 0.87109091125268134
	.quad	0x3fe1f879498f418e              # double 0.56158127181156359
	.quad	0x3fe9326fc1b2fa9a              # double 0.78740680534231733
	.quad	0x3fab8d26d12739e0              # double 0.053811276465797198
	.quad	0x3fd345f3f57022e2              # double 0.3011445900779518
	.quad	0x3fdfb3cfecf9628c              # double 0.49534986631400879
	.quad	0x3fea02e45c1dacb8              # double 0.81285303107633577
	.quad	0x3fd892067dcdba2e              # double 0.38391268048772786
	.quad	0x3fd389f08ced919c              # double 0.30529416811466503
	.quad	0x3fc8cbb84be1ae50              # double 0.19371703820376007
	.quad	0x3fe063bb4b6e8d98              # double 0.51217426998884985
	.quad	0x3fd82a11f8d22ecc              # double 0.3775677614109838
	.quad	0x3fec63b99fca363c              # double 0.88717347344363117
	.quad	0x3fee6fafb118d02f              # double 0.95113358105891688
	.quad	0x3fb4d70dbfe33a20              # double 0.081406459186134317
	.quad	0x3fef6dfd4ae6bb43              # double 0.98217644337805898
	.quad	0x3fc665146540433c              # double 0.17495970672509908
	.quad	0x3fd2edb7740d79f6              # double 0.29575907071367113
	.quad	0x3feda1edd4284eb5              # double 0.92601672589304107
	.quad	0x3fa92b0c58fafac0              # double 0.049156556951392982
	.quad	0x3fe966e44dc980c2              # double 0.7938100356368738
	.quad	0x3fea6daf872fac15              # double 0.82588936236914157
	.quad	0x3fd552924151180c              # double 0.33316475275603419
	.quad	0x3fe7c8d717611a50              # double 0.74326662603636784
	.quad	0x3fc80ee87d6986a8              # double 0.18795496104853737
	.quad	0x3fec90bb7b78e591              # double 0.89266752353357692
	.quad	0x3fe9d5b1fb78dc14              # double 0.80733584514280432
	.quad	0x3f98205af46725c0              # double 0.023560925643129726
	.quad	0x3fdddc720afdfd6e              # double 0.46657992433025341
	.quad	0x3fe8c1ba239e916c              # double 0.77364832837024044
	.quad	0x3fbd87fc3a133f20              # double 0.11535622041560289
	.quad	0x3faef0ed5d0a43b0              # double 0.060431878669198524
	.quad	0x3fc6e8437e3ebc44              # double 0.17896312393483715
	.quad	0x3fe2c563b42a46fb              # double 0.58659539402489658
	.quad	0x3fdee171fbbb670c              # double 0.48251008589942113
	.quad	0x3fef438eb0056dd4              # double 0.97699674967901239
	.quad	0x3fefcca45578e92f              # double 0.99373070424852538
	.quad	0x3fe988f16e4a3c8d              # double 0.79796668568623519
	.quad	0x3fde209192921800              # double 0.47073783219855159
	.quad	0x3fe805cdba768683              # double 0.75070845049431545
	.quad	0x3fe0d99761334a5e              # double 0.52656144127315563
	.quad	0x3fefc32211bb4dfb              # double 0.99256995642866685
	.quad	0x3fb1695da899b9c8              # double 0.068014005338887462
	.quad	0x3fe48c41a0307fd5              # double 0.64212113654138625
	.quad	0x3fc31ea0ae837f20              # double 0.14937218209433301
	.quad	0x3fd02fc3c574b856              # double 0.25291532786184712
	.quad	0x3fefaadf12233999              # double 0.98960832159518752
	.quad	0x3fd2d8af99dd1b20              # double 0.29447546029807548
	.quad	0x3fef9c2f4c6e0012              # double 0.98781552245782422
	.quad	0x3fd22a6bdc4e0e68              # double 0.28383919252539735
	.quad	0x3fe207d3032f09aa              # double 0.56345511075806098
	.quad	0x3fed1a3be324e3b7              # double 0.90945238460618938
	.quad	0x3fe5bb3b66dbc4ea              # double 0.67910547341867056
	.quad	0x3fe5c12008175b1d              # double 0.67982484417266031
	.quad	0x3fe68ce75cc4fc84              # double 0.70470016593016327
	.quad	0x3fdb9da3e387ce98              # double 0.43149659366393101
	.quad	0x3fcc7d18e3c04d04              # double 0.22256766434347963
	.quad	0x3fcb02d134190578              # double 0.21102347415766665
	.quad	0x3fd11522e9128f06              # double 0.26691506157861544
	.quad	0x3fee4f2049048243              # double 0.94715894948246449
	.quad	0x3fe5b0f424f96ffc              # double 0.67785079213672317
	.quad	0x3fc8d8a34e4d9e30              # double 0.19411126445196336
	.quad	0x3fcb28950f7d95e8              # double 0.2121759725225012
	.quad	0x3faae48923c49040              # double 0.052524839035215098
	.quad	0x3fd46b81cbf080f6              # double 0.31906170764888431
	.quad	0x3fde1d57be67b564              # double 0.47054093927621055
	.quad	0x3feeb8f7e188b2e5              # double 0.96007913636784947
	.quad	0x3fe0ebfa54816558              # double 0.52880589013072221
	.quad	0x3fd9af32c9d8c2b0              # double 0.40131826125711267
	.quad	0x3fdfb7c9a0835376              # double 0.49559250521752263
	.quad	0x3f599af873dd5a00              # double 0.001562826756943303
	.quad	0x3fe1926d16117429              # double 0.54912428198043017
	.quad	0x3fca4e12b6f45dd4              # double 0.20550760205581631
	.quad	0x3f88d8d2a3afdac0              # double 0.01213230669052956
	.quad	0x3fe90feea5cdad9c              # double 0.78319485076410755
	.quad	0x3fe6b98ecf305226              # double 0.7101511046080915
	.quad	0x3feb50aab0ee3ec9              # double 0.85359701687590317
	.quad	0x3feec4a9fb40fd8b              # double 0.96150683472653619
	.quad	0x3fd082de91c39dc2              # double 0.25798763499048161
	.quad	0x3fe076900fff10a4              # double 0.51447299122130064
	.quad	0x3fd7932ec561f80a              # double 0.36835831905034466
	.quad	0x3fd2c253cf87f802              # double 0.29311080233298992
	.quad	0x3febb2f1b315b8c6              # double 0.86559376695165535
	.quad	0x3fe5af94254326d8              # double 0.67768294599337775
	.quad	0x3fedf92ccd169e08              # double 0.93666687065427911
	.quad	0x3fed37bb39e878f5              # double 0.91305314359831746
	.quad	0x3fd04f89da6c2374              # double 0.25485464411081371
	.quad	0x3fed09488ab41bd6              # double 0.90738322344338473
	.quad	0x3fd561ee1487cf4e              # double 0.33410217289860078
	.quad	0x3fee891ffcb391ce              # double 0.95423888545752233
	.quad	0x3febd4ceb3c08313              # double 0.86972746951878077
	.quad	0x3fd261015d76d148              # double 0.28717073562008411
	.quad	0x3fd79381f76b91b0              # double 0.36837815439346411
	.quad	0x3fee37f72c3a3eb3              # double 0.9443317283457503
	.quad	0x3fd7f45de503cb92              # double 0.37428996433953288
	.quad	0x3fed96f39a944857              # double 0.92467670623069409
	.quad	0x3fe74d2d716d7743              # double 0.72817108300999001
	.quad	0x3fefcbbf166019a1              # double 0.99362139101213042
	.quad	0x3fd5d0cf2d51556c              # double 0.34086970735128008
	.quad	0x3feec1342153a055              # double 0.96108442792047787
	.quad	0x3fd705c205cc7666              # double 0.3597264343860388
	.quad	0x3fe1b66981204b97              # double 0.55351710529281462
	.quad	0x3fef811def644f03              # double 0.98451134449211996
	.quad	0x3fe69b868dc5ad87              # double 0.70648505868796085
	.quad	0x3fdcaf82ffbbf80a              # double 0.44821238493011661
	.quad	0x3f9df492058fc8e0              # double 0.029253274526077955
	.quad	0x3feb93d936c85948              # double 0.86179791164139719
	.quad	0x3fd1fff4ed4b7e2a              # double 0.28124735997514227
	.quad	0x3fe6ddbb72bfda8e              # double 0.7145669213485506
	.quad	0x3fba9393dd00a250              # double 0.10381435533111838
	.quad	0x3fe7e1d4ebea0d29              # double 0.74631734921459725
	.quad	0x3fe08723491c36af              # double 0.51649631766641402
	.quad	0x3fe3b547156476ff              # double 0.61587862184725839
	.quad	0x3fe31c663ff3ba03              # double 0.59721672526012559
	.quad	0x3fc5e84bd48c84b8              # double 0.17115161779751076
	.quad	0x3fbdfc3c53a1a160              # double 0.11713006059438191
	.quad	0x3fe83670fc76852f              # double 0.75664567288564466
	.quad	0x3fe9b9ed4c5a11b3              # double 0.80394616043536471
	.quad	0x3fe5c9afeaab5ff7              # double 0.6808700164210667
	.quad	0x3fe32026d9f9b022              # double 0.59767477582272854
	.quad	0x3f837ba9ff4d7440              # double 0.0095132142102390959
	.quad	0x3fd4c4120a4172e4              # double 0.32446719171075089
	.quad	0x3fe710abcea97028              # double 0.72078504909177799
	.quad	0x3fd9ea787f3bb628              # double 0.40493595528718851
	.quad	0x3fe1f283d5b45831              # double 0.56085387934832032
	.quad	0x3fdf09fde52b788c              # double 0.48498484973777845
	.quad	0x3fe63552054be5c7              # double 0.69400883707492589
	.quad	0x3fa9eb9996f720c0              # double 0.050625610044848113
	.quad	0x3fec7a1c82c2b2be              # double 0.88990617312591502
	.quad	0x3fc45ef5b02af5c0              # double 0.15914794065422022
	.quad	0x3fe0498c727d306a              # double 0.50897810326706616
	.quad	0x3fa5d7396b5c4340              # double 0.0426576560549905
	.quad	0x3fd16eaa1dbbf18c              # double 0.27237942603803655
	.quad	0x3fd286da28d30aea              # double 0.28948072420841575
	.quad	0x3fce8e2661bfc930              # double 0.2387130715647543
	.quad	0x3fe271257cf337a3              # double 0.57631182102499101
	.quad	0x3f9ffc8002e78ba0              # double 0.031236648728632965
	.quad	0x3fed01a2f2783c14              # double 0.90644976956707745
	.quad	0x3fee9d4cada326e3              # double 0.95670160211122057
	.quad	0x3fe3318b39eca004              # double 0.59979783356993766
	.quad	0x3fb9a508a4287f20              # double 0.10017446525352769
	.quad	0x3fb95aab158d1010              # double 0.099039738427620926
	.quad	0x3fe3a3227a428808              # double 0.61366390112766656
	.quad	0x3fadb5e97c9345a0              # double 0.058028503853744029
	.quad	0x3fda41d2ccafa7ee              # double 0.41026754368669927
	.quad	0x3f840b8d53faa940              # double 0.0097876588109399031
	.quad	0x3fe9526fc3fa8e69              # double 0.79131305958840159
	.quad	0x3fe0b1256cb92f59              # double 0.52162429080042749
	.quad	0x3feae816c8db9df5              # double 0.84083117704443444
	.quad	0x3fd49e7d296cf1a8              # double 0.32217339559044911
	.quad	0x3fe3d159b1071bf4              # double 0.61930546355949767
	.quad	0x3fceca91c9b42c8c              # double 0.24055693005388823
	.quad	0x3fbae3e724233d58              # double 0.10504002220408404
	.quad	0x3fd3566ff794a41e              # double 0.30215071847720931
	.quad	0x3faa11fc7efdbfd0              # double 0.050918474675995307
	.quad	0x3fe7bd3c028c2330              # double 0.74184990403691664
	.quad	0x3fe950409e9be9e2              # double 0.79104643801047936
	.quad	0x3fe6fc71b11b068b              # double 0.71831593123370518
	.quad	0x3fd4c20dd58c87f4              # double 0.32434411863698576
	.quad	0x3fca84482b6a070c              # double 0.20716192359764596
	.quad	0x3fd76da7cd880472              # double 0.36606783934991605
	.quad	0x3fd192942314cac2              # double 0.27457145143413808
	.quad	0x3fe0e8749d41b6c6              # double 0.52837591852377197
	.quad	0x3fe0dd64c6029c8b              # double 0.52702559160106099
	.quad	0x3fe96e93d9ee729b              # double 0.79474823536618844
	.quad	0x3feb0014ea9775c0              # double 0.84375997370414524
	.quad	0x3fea0a4a38fed89e              # double 0.81375609523708525
	.quad	0x3fe83161affa1477              # double 0.75602802629931787
	.quad	0x3fbbad825473bbd0              # double 0.1081162887746665
	.quad	0x3fe86a6c797cd8f8              # double 0.76299117782653436
	.quad	0x3fd28a685cabe788              # double 0.28969773340178806
	.quad	0x3fd97e12d473f9ce              # double 0.39831991908422715
	.quad	0x3fda6d9cd6fda5dc              # double 0.41294022555538645
	.quad	0x3fd44d349e31d38c              # double 0.31721225212759729
	.quad	0x3fe9255b0f597db2              # double 0.78581002233470643
	.quad	0x3fee58513521fda2              # double 0.94828091027732264
	.quad	0x3fe4164bc8ae1c01              # double 0.62772168345770762
	.quad	0x3fe0b01a3a1d8fbe              # double 0.52149688101462011
	.quad	0x3fbfcf880f8dc000              # double 0.12426042918900748
	.quad	0x3fb51edeb638b388              # double 0.082502288329761808
	.quad	0x3fdfc3aee33bf8b8              # double 0.49631855192991337
	.quad	0x3feaf4c235c0584d              # double 0.84237776277837784
	.quad	0x3fdc3debdd0f5a1a              # double 0.44127937877547796
	.quad	0x3fee1c664a1dddb1              # double 0.94096674419318138
	.quad	0x3fe8767d90875c2f              # double 0.76446417072555117
	.quad	0x3fc2a91bfbfcbe60              # double 0.14578580669466401
	.quad	0x3febc4d78672ac7c              # double 0.86777855166782513
	.quad	0x3fe3b93be064cb2f              # double 0.616361559170718
	.quad	0x3fd6b7e40d36eec0              # double 0.35497380533682232
	.quad	0x3fc8c2e65a41cad8              # double 0.19344787032203814
	.quad	0x3fe5bc7183066cd9              # double 0.67925334540214088
	.quad	0x3fee10a80a739bf3              # double 0.93953325311019709
	.quad	0x3fb3cf65d1ea0148              # double 0.07738338827949065
	.quad	0x3fc98aa5e0a9f438              # double 0.19954369993129872
	.quad	0x3fcee03b6b5afff4              # double 0.24121802083936894
	.quad	0x3facd03149c6d040              # double 0.056275882965025392
	.quad	0x3fed1dc6531068a5              # double 0.9098846075387611
	.quad	0x3fb5f0c4fd621b20              # double 0.085705100880755669
	.quad	0x3fe94c6e9c8faaf9              # double 0.7905800874553669
	.quad	0x3fce695cad2e1400              # double 0.237590393600982
	.quad	0x3fe4e6512f866a67              # double 0.65311488420713892
	.quad	0x3fc65f9030d8acc0              # double 0.17479135880544128
	.quad	0x3fe86b788c07063e              # double 0.76311900471791438
	.quad	0x3fe7490982ca0acd              # double 0.72766566796084364
	.quad	0x3fc9c78b41589f64              # double 0.20140209856730984
	.quad	0x3fbeb08085375c40              # double 0.1198807072863568
	.quad	0x3f9264c321fe14c0              # double 0.017962502431619454
	.quad	0x3febcd3193ead408              # double 0.86879805460068926
	.quad	0x3fe6db484846676c              # double 0.71426786533559783
	.quad	0x3fdfa50bbc6ca610              # double 0.49444859886952575
	.quad	0x3fb507417daca088              # double 0.082141965086181767
	.quad	0x3fd02c4a24d2257c              # double 0.25270322414197444
	.quad	0x3fc0e9f7ceba38ac              # double 0.13214013666260394
	.quad	0x3fda46c88116c180              # double 0.41057026487671777
	.quad	0x3fd49120db42bf78              # double 0.32135793125325263
	.quad	0x3feb660d2823f46d              # double 0.85620744552546812
	.quad	0x3fd198820bc8ac0e              # double 0.27493334913987233
	.quad	0x3fcea76779eb1f74              # double 0.23948377087640049
	.quad	0x3fd700a0821309f2              # double 0.35941326811385388
	.quad	0x3fe5bfc4cb12e509              # double 0.67965926802494991
	.quad	0x3fcf55d8a44f4e04              # double 0.24480731985987358
	.quad	0x3fd05bb436d29830              # double 0.25559716562054557
	.quad	0x3fc8583cf4aff654              # double 0.19019281337380056
	.quad	0x3fc2512d2e147710              # double 0.14310230970379978
	.quad	0x3fe82549c23ae2a9              # double 0.75455177245665539
	.quad	0x3febc2f3afa1bc08              # double 0.86754783919411782
	.quad	0x3fe0a2e3dda4bd47              # double 0.51988404550312672
	.quad	0x3fedefa93b0fecf7              # double 0.93550550017917444
	.quad	0x3fe2780408fe574a              # double 0.57715036160036814
	.quad	0x3fa3c55930a23e50              # double 0.038615023791063963
	.quad	0x3fdaca51cb7fb40e              # double 0.41859860299047191
	.quad	0x3fa6a5ac9d635150              # double 0.044232744419476888
	.quad	0x3fc82862b2f07bc4              # double 0.18873246896052198
	.quad	0x3fd3750f90edbd70              # double 0.30401982453528031
	.quad	0x3fd0a4600bb5491c              # double 0.26003266471265518
	.quad	0x3fead82ac39e8d41              # double 0.83888757903006461
	.quad	0x3fb6090d34f4ceb0              # double 0.086075616291789058
	.quad	0x3fec5b8d3909c85c              # double 0.88617573871875832
	.quad	0x3fa7764cd52757d0              # double 0.045824433345543647
	.quad	0x3fcbc44602bd34dc              # double 0.21692729123825572
	.quad	0x3fe7b68bbe2e8d18              # double 0.74103343148127276
	.quad	0x3fefe0d432c4b363              # double 0.99619493404098269
	.quad	0x3fddf31c065f285a              # double 0.46796322462308171
	.quad	0x3fed3f7fb4ff80a0              # double 0.91400132514174359
	.quad	0x3f9ca6c63f9e5300              # double 0.027979943879091529
	.quad	0x3fe5be259ae358e5              # double 0.67946129085137541
	.quad	0x3fc88019b567a714              # double 0.19140931470547484
	.quad	0x3fcf85e0baa5fff8              # double 0.24627312768643583
	.quad	0x3f8446c826da0980              # double 0.0099006306511497665
	.quad	0x3fe0926aa561e783              # double 0.517873118412567
	.quad	0x3fd7672060bdb6a4              # double 0.36566934058542189
	.quad	0x3fef9da9c48191d1              # double 0.98799599056342846
	.quad	0x3fe13e8ae4197d7f              # double 0.53888458777139181
	.quad	0x3fe28395f5c85804              # double 0.5785627174798269
	.quad	0x3fe34f54bdbe221d              # double 0.60343396243212377
	.quad	0x3fec225c9bfc1d5c              # double 0.87919455018792858
	.quad	0x3fbc49c3c1169ba0              # double 0.1105005594641697
	.quad	0x3fd3b4c8cdea8450              # double 0.30790920361511542
	.quad	0x3fdc49625adb5e76              # double 0.4419790160440934
	.quad	0x3fe82c1c2ea68ca9              # double 0.75538453208391332
	.quad	0x3fc66a4584275d24              # double 0.17511815026112132
	.quad	0x3fe4bde966c33e9e              # double 0.64818258353075797
	.quad	0x3fe68cdb91c50e8a              # double 0.70469454260497
	.quad	0x3fc70419bae8ca14              # double 0.1798126375811796
	.quad	0x3fe575e2a94e972e              # double 0.67064030711910561
	.quad	0x3feab1aefe683cbf              # double 0.83418988884832135
	.quad	0x3fe81baf2f819776              # double 0.75337943342741087
	.quad	0x3fd9574b90ba98e4              # double 0.39595307477647013
	.quad	0x3fecef6fbe22ac95              # double 0.90422808776692654
	.quad	0x3fe31593e1ded7e6              # double 0.59638399234131323
	.quad	0x3fefc677907f3dd3              # double 0.99297693464353142
	.quad	0x3fe760ee51302b90              # double 0.73058238846839352
	.quad	0x3fe12783ce1ecf5e              # double 0.53607359178429781
	.quad	0x3fd10e54b2579df4              # double 0.26649968544231162
	.quad	0x3fec1d225f493d89              # double 0.87855642901006192
	.quad	0x3fd7369fad2ba040              # double 0.36270896826909294
	.quad	0x3fbd48ca6f5b2648              # double 0.11439194887784609
	.quad	0x3fe62c938bd32da7              # double 0.69294144925645618
	.quad	0x3fc61c9f959a04f4              # double 0.17274851612822995
	.quad	0x3fcc6f3d8a85a830              # double 0.22214478744291588
	.quad	0x3fdfc8f7e60c847c              # double 0.49664113488876871
	.quad	0x3fd515bea573eee8              # double 0.32945219190126673
	.quad	0x3fedf5a0cfb63388              # double 0.93623390740104728
	.quad	0x3fe044f65596b9fc              # double 0.50841824261243529
	.quad	0x3fec2561f9a0ad9b              # double 0.87956331973457524
	.quad	0x3fe96edf3c65db4b              # double 0.79478418156109265
	.quad	0x3fd11a93e57eeab4              # double 0.26724717532821818
	.quad	0x3fed7f0013ccbcc2              # double 0.92175296656741801
	.quad	0x3fe8fded4ec65b2e              # double 0.78099694619854687
	.quad	0x3fb2ed640f175b08              # double 0.07393479698599148
	.quad	0x3fa09d1182d2b790              # double 0.032448336810701695
	.quad	0x3fcff0af7db107f0              # double 0.24953263890534982
	.quad	0x3fea35057b4e8bf6              # double 0.81897234042514699
	.quad	0x3fef67f902b52fe6              # double 0.98144197968349256
	.quad	0x3fa58d2a3a3a5630              # double 0.042092628105063645
	.quad	0x3fbf1ba7928fb9a8              # double 0.12151572540435629
	.quad	0x3feba50991a981e9              # double 0.86389616441379957
	.quad	0x3fd86e5afa04ec4c              # double 0.38173555770817269
	.quad	0x3fe168c60551e12e              # double 0.54403973616630252
	.quad	0x3fe7bb42b259c955              # double 0.7416089518940604
	.quad	0x3fef311a9ed8f784              # double 0.97474413895518852
	.quad	0x3fdb919a4a4a19e4              # double 0.43076188330488052
	.quad	0x3fea97f4aa1073be              # double 0.83104928222348184
	.quad	0x3fd042717b4d6c3a              # double 0.25405537644627751
	.quad	0x3fedda4250170440              # double 0.93289294855652116
	.quad	0x3f9d970449d6fb40              # double 0.028896395689794518
	.quad	0x3fb64dc67a800c48              # double 0.087124256999275507
	.quad	0x3fdf7824a40e0360              # double 0.49170795460672956
	.quad	0x3fdc03213c51a286              # double 0.43769102945820071
	.quad	0x3fda2c1624fec240              # double 0.40894082653816
	.quad	0x3feac958992ad02c              # double 0.83707837977863652
	.quad	0x3fe2e0969e5377a4              # double 0.58991557047896892
	.quad	0x3fa0b4a06e0ab570              # double 0.032628072197762203
	.quad	0x3fd184c022dba168              # double 0.27372744945616612
	.quad	0x3fe54b7739e2b572              # double 0.66546212487962308
	.quad	0x3fec731001896c8d              # double 0.88904571819456779
	.quad	0x3fe9c705c967eb04              # double 0.80554475152106919
	.quad	0x3fe2104d99118273              # double 0.56449012657328834
	.quad	0x3fe1eb1c7ca52c00              # double 0.55995010704771175
	.quad	0x3feb58e1e1ea61ff              # double 0.85459989666111358
	.quad	0x3fed60dd151514a6              # double 0.918074170280893
	.quad	0x3fe39f14cfed5e35              # double 0.61316910372528943
	.quad	0x3fd20fa07ef1454c              # double 0.28220379254078831
	.quad	0x3fd87357c5ffc4c2              # double 0.38203996978615973
	.quad	0x3fc6b3d0ba981360              # double 0.17736252890622506
	.quad	0x3fd2f296a75ad2cc              # double 0.29605642646064889
	.quad	0x3fdae9a723cf78ee              # double 0.4205110406600302
	.quad	0x3fe6798951604864              # double 0.70233598607798031
	.quad	0x3fd5ce3b9d9e344c              # double 0.34071245567685504
	.quad	0x3fbfd8b94452e260              # double 0.12440069120465003
	.quad	0x3fe978c045938ebe              # double 0.79599011983051304
	.quad	0x3fec49d233b4e0bd              # double 0.88401136492668508
	.quad	0x3fc30998f26fc4c8              # double 0.14873039090847429
	.quad	0x3fa3710c88969f30              # double 0.037971870110878547
	.quad	0x3fadfbde5a6e3f20              # double 0.058562229670427124
	.quad	0x3fb50abc23e6eaa8              # double 0.082195051922932749
	.quad	0x3fb7bd39f54eecb8              # double 0.092731115712853973
	.quad	0x3fbce543cbf82f58              # double 0.112873303696856
	.quad	0x3fefa964e0037073              # double 0.98942798378585761
	.quad	0x3fe454282a1b9e31              # double 0.63527305816837132
	.quad	0x3fee992e5a09aa8e              # double 0.95619886003017185
	.quad	0x3fcb0894d2ba1838              # double 0.21119938172722796
	.quad	0x3fe34e30a3bc6f49              # double 0.60329467754079602
	.quad	0x3fe017860894228e              # double 0.50287152934568424
	.quad	0x3fe812aa06d95af1              # double 0.75227834069923294
	.quad	0x3fdcefea81e5aa7c              # double 0.45214331326739177
	.quad	0x3fea305d9b077172              # double 0.81840400961986703
	.quad	0x3fe0a3367f2a9186              # double 0.51992344700970317
	.quad	0x3fef5f1d4d6b3914              # double 0.9803606521689141
	.quad	0x3fdb33944386382e              # double 0.42502314180535705
	.quad	0x3fc9fe812d4afce0              # double 0.20307936393326198
	.quad	0x3fdea8e4e264d3b8              # double 0.4790584765317436
	.quad	0x3fe6e5a088716216              # double 0.71553064965252378
	.quad	0x3fdf5fe5c7a5a278              # double 0.49022812363413193
	.quad	0x3fe0be5ee32da5a9              # double 0.52323860522044641
	.quad	0x3fc1690b52cb5f70              # double 0.13601819555946859
	.quad	0x3fd5a6853e95a724              # double 0.33828860389495419
	.quad	0x3fd21bfe7e001c94              # double 0.28295862488489232
	.quad	0x3fd2175165fa0c3a              # double 0.28267321547190571
	.quad	0x3fecfd35e867dc7a              # double 0.90590949432124934
	.quad	0x3fc69ec5dfd695b0              # double 0.1767203658065859
	.quad	0x3fee495671ea9d25              # double 0.94645235299404773
	.quad	0x3fc811e01251d130              # double 0.18804551023971205
	.quad	0x3feca5a61bca4e4e              # double 0.89522080829414974
	.quad	0x3fcccf1e221596c8              # double 0.22507073082231543
	.quad	0x3fe485c3e7f5cef7              # double 0.64132876686787099
	.quad	0x3f9e6107e48e11c0              # double 0.029667018246543497
	.quad	0x3fdbd66a34eb7898              # double 0.43496184509229741
	.quad	0x3fe13d94b0d2063d              # double 0.53876719031558873
	.quad	0x3fa463cac0fadc40              # double 0.039823852593535936
	.quad	0x3fd7b9c9418c4dba              # double 0.37071448708703836
	.quad	0x3fca238ab95dab10              # double 0.20420965243405265
	.quad	0x3fe390655eb1524f              # double 0.61137646193180639
	.quad	0x3fd62e3fa2f42326              # double 0.3465727893204068
	.quad	0x3fd885b9a4f5f0b4              # double 0.38316193685001143
	.quad	0x3fe1878e2227c9ef              # double 0.54779726668340156
	.quad	0x3fe4a879e0c24172              # double 0.64556592844205185
	.quad	0x3fe547346bc9fc2d              # double 0.66494198849239228
	.quad	0x3fed4723abc72bfe              # double 0.91493400144952353
	.quad	0x3fdc6cd085aef044              # double 0.44414151244177824
	.quad	0x3fa49a1eb6cfc810              # double 0.040238342109560787
	.quad	0x3fa52276a47cc330              # double 0.041278560236952422
	.quad	0x3fe1c29d1c1f3634              # double 0.5550065564399973
	.quad	0x3fe7c2de6f678594              # double 0.74253770598095281
	.quad	0x3fcd14dd2d5fe30c              # double 0.22719921794466591
	.quad	0x3fd15947dc747e82              # double 0.27107426194013595
	.quad	0x3fd2bd4231ec492c              # double 0.29280142665187969
	.quad	0x3fe9e50266c6dbe8              # double 0.80920524667351135
	.quad	0x3fe22270bec663b1              # double 0.56670415173277011
	.quad	0x3fe092f6fc0186f1              # double 0.5179400369636068
	.quad	0x3fd2f78856b38900              # double 0.29635818926739432
	.quad	0x3fd1d61dfc72c220              # double 0.27869367268707101
	.quad	0x3fd2d939ce579b02              # double 0.29450841093641611
	.quad	0x3fe8d4625100ecd2              # double 0.77592578717249183
	.quad	0x3fed12d6908c212b              # double 0.90854957801733371
	.quad	0x3fe4757ae45ff08f              # double 0.63934082607694787
	.quad	0x3fbb39b29c84fcc0              # double 0.10634914704586418
	.quad	0x3fe5c9803ca0c5ac              # double 0.68084728089723034
	.quad	0x3fe268bc581c0851              # double 0.5752851220024785
	.quad	0x3fd05fe6ec1ab628              # double 0.25585339600624701
	.quad	0x3feb3f5f87c86aac              # double 0.85148598213284776
	.quad	0x3fd17a3504157510              # double 0.27308392905054379
	.quad	0x3fdcc1d19e8b38fe              # double 0.44932976229473798
	.quad	0x3fdb9bfd203b9a1a              # double 0.43139579913841575
	.quad	0x3fe04e1470705092              # double 0.50953123055161798
	.quad	0x3fefb49b1b132d5f              # double 0.99079661644047323
	.quad	0x3fe1700b55e7a598              # double 0.54492728021903059
	.quad	0x3fd80c7d4f9dfb60              # double 0.37576229834660602
	.quad	0x3fe7d5afd711506c              # double 0.74483482365986964
	.quad	0x3fde8cc505c44b4a              # double 0.47734189570580965
	.quad	0x3fd7651d685f7cfc              # double 0.36554656212497583
	.quad	0x3fe127cec2ec748d              # double 0.53610933371568736
	.quad	0x3fe7353ebe3b3748              # double 0.72524964479973963
	.quad	0x3fe5ccb09d98edd8              # double 0.68123656063783766
	.quad	0x3fdbfaf678615168              # double 0.43719255214570873
	.quad	0x3fe651e0a9e28895              # double 0.69749482327121604
	.quad	0x3fe6290eac30b711              # double 0.69251187926212954
	.quad	0x3fd2b380ae62fa2e              # double 0.29220597295708017
	.quad	0x3fc651fe52b321b4              # double 0.17437724149773504
	.quad	0x3fb52b918f5b3fd0              # double 0.082696053980952699
	.quad	0x3fd6860518c000c2              # double 0.35192992608064
	.quad	0x3fc4feffa4797194              # double 0.16403193980194131
	.quad	0x3fee599dbfc5e59a              # double 0.94843947845145071
	.quad	0x3fe6a536487fa9f3              # double 0.70766748580837058
	.quad	0x3fec94ed2bce054a              # double 0.89317949824923315
	.quad	0x3fee9cc1437d6e2b              # double 0.95663512403138407
	.quad	0x3fedce949ddf9d65              # double 0.93146735033671446
	.quad	0x3fb2ad9491b91b60              # double 0.072961125924036363
	.quad	0x3fe6ebfd228391f5              # double 0.71630722752575926
	.quad	0x3fd87625b8319c18              # double 0.38221114146875967
	.quad	0x3fd80c176c61373e              # double 0.37573800643882638
	.quad	0x3fae85d38db2c6d0              # double 0.059614764258538622
	.quad	0x3fe3ca2788e99081              # double 0.61842705479331539
	.quad	0x3febcc8b07815109              # double 0.86871863809440797
	.quad	0x3feb2b66df36266d              # double 0.84904807659149883
	.quad	0x3fe41f201549a076              # double 0.62879947812781611
	.quad	0x3fe1a47fdf4d729f              # double 0.55133050550246654
	.quad	0x3fdab94a498a0644              # double 0.41755921536978158
	.quad	0x3fe49ebff2388091              # double 0.64437863644345061
	.quad	0x3fd509ed63def0f4              # double 0.3287309146214874
	.quad	0x3fb6f1073a74dec0              # double 0.089615299007046012
	.quad	0x3fc1143e2f75a830              # double 0.13343026463854946
	.quad	0x3fdcbb4095be6d66              # double 0.44892897246764674
	.quad	0x3fbef446c83c2398              # double 0.12091486347720914
	.quad	0x3fecf253bd7300a9              # double 0.90458094598581795
	.quad	0x3fd96c0235011426              # double 0.39721732307617896
	.quad	0x3fef5b361a89bd29              # double 0.97988419707499929
	.quad	0x3feed646c144c380              # double 0.96365678546690958
	.quad	0x3fe7d0cc779fd21b              # double 0.74423812259789501
	.quad	0x3fee8260f77f530f              # double 0.95341537799194664
	.quad	0x3fbd4aa8e019dcd0              # double 0.1144204661485333
	.quad	0x3fd9f97eccbb63fa              # double 0.40585298531874481
	.quad	0x3fc9cc4abe768a20              # double 0.20154699611619353
	.quad	0x3fde7728cf3b2768              # double 0.47602291333588775
	.quad	0x3fef062ac26b4075              # double 0.96950281116916292
	.quad	0x3fd2b202dd476c60              # double 0.29211494073178379
	.quad	0x3fc879405426e084              # double 0.19120029553392126
	.quad	0x3fe4ef733681ef0d              # double 0.65422974248892418
	.quad	0x3fefd9c4ab3eab47              # double 0.99533303686380569
	.quad	0x3fd442f8d0d197fe              # double 0.31658764259771022
	.quad	0x3fd280bcc52a2310              # double 0.28910750631671167
	.quad	0x3fc01f44fd19d4dc              # double 0.12595426901285733
	.quad	0x3fc38cc0798fc32c              # double 0.15273290572761178
	.quad	0x3fcaeeb15fe8f50c              # double 0.21040932829956949
	.quad	0x3fdc6c3bdab22278              # double 0.44410606724753832
	.quad	0x3fda8a287e1450f6              # double 0.41468250572621856
	.quad	0x3fe26cd465c1fb79              # double 0.57578487276610624
	.quad	0x3fe3dc58e462d4bd              # double 0.62064785582210613
	.quad	0x3feffa84e7a75b26              # double 0.9993309521185878
	.quad	0x3fe84d722fe6d27a              # double 0.75945386272230953
	.quad	0x3fe00591372d4c1f              # double 0.50067959572550425
	.quad	0x3fe3f2e5e5a4e4f2              # double 0.62340063907973176
	.quad	0x3fda7939b3306e72              # double 0.41364901064819215
	.quad	0x3fe3292ec49faf59              # double 0.59877718356208753
	.quad	0x3fd1f04ed88c5b64              # double 0.28029223582546181
	.quad	0x3feb73c01733caa2              # double 0.85787968188954644
	.quad	0x3fe54cf7106e1b9b              # double 0.66564515313153849
	.quad	0x3fe65431737772d8              # double 0.69777748634404713
	.quad	0x3fd1f4a87e95b846              # double 0.28055775033761099
	.quad	0x3fcffbf872784734              # double 0.249877029317355
	.quad	0x3fe9f4d9b4adf1d0              # double 0.81113896645507033
	.quad	0x3fe7d991e19dcbbe              # double 0.74530881944371408
	.quad	0x3fdc57b373de2fc2              # double 0.44285284342981523
	.quad	0x3feb2bfb77a8c283              # double 0.84911893244687098
	.quad	0x3fd44b7767811dde              # double 0.31710610492561198
	.quad	0x3fd804a87727eb40              # double 0.37528430591889972
	.quad	0x3fd64bade4e36f8a              # double 0.34836909630188784
	.quad	0x3fc3a2651639fc54              # double 0.15339339814451824
	.quad	0x3fd9511d0fd17760              # double 0.39557577652691656
	.quad	0x3fe03f10ff05ad30              # double 0.50769853409784638
	.quad	0x3fef640598d6e995              # double 0.98095970012154742
	.quad	0x3fd31a8844aa9a28              # double 0.29849440293983998
	.quad	0x3fe97a4c64779578              # double 0.79617900488362547
	.quad	0x3fe4e06fecec057f              # double 0.65239712022609797
	.quad	0x3fd8d53ff28f0214              # double 0.38801573455205696
	.quad	0x3fe43ffc6d33a7e8              # double 0.63281079605553447
	.quad	0x3fe9a294cf8157cd              # double 0.80109634903305393
	.quad	0x3fef3bdb276d8d79              # double 0.97605664921540757
	.quad	0x3fea2f108233eb22              # double 0.81824517660365736
	.quad	0x3feb4bc6646f3429              # double 0.85299987426845292
	.quad	0x3fb4aab2a4ee2500              # double 0.080729642168211768
	.quad	0x3fe63f3735cd7c4e              # double 0.69521675594649834
	.quad	0x3fe5eaf31daa6c3a              # double 0.68493037981114147
	.quad	0x3fd302d8f8bbd8f0              # double 0.29704880037696935
	.quad	0x3fdfecd59a9a030a              # double 0.49883022401631705
	.quad	0x3f8a23f36ff29e00              # double 0.012763883451341052
	.quad	0x3fcfaf26470997e8              # double 0.24753263920427959
	.quad	0x3feb4bb1fb783ac2              # double 0.85299014201321932
	.quad	0x3fcaac47461d8164              # double 0.20838251994701829
	.quad	0x3fe88d87d6d7000b              # double 0.76727668724925147
	.quad	0x3fe030af30784aee              # double 0.50594291178489725
	.quad	0x3fd74a7920e88ce6              # double 0.36392048085890705
	.quad	0x3fe16964782df665              # double 0.54411529038015927
	.quad	0x3fdfcf383936f88c              # double 0.49702268206954936
	.quad	0x3feceef89de1acfc              # double 0.90417128406752977
	.quad	0x3feb1ecf48664064              # double 0.84751094952117655
	.quad	0x3fe362289f114b40              # double 0.60573226039773687
	.quad	0x3fefd9d83d264e93              # double 0.99534236853874558
	.quad	0x3fc891c9711348a4              # double 0.19194906255012711
	.quad	0x3fd74b0eb53291da              # double 0.36395614333221504
	.quad	0x3fe1e17808f1caae              # double 0.55877305743191186
	.quad	0x3feff9f6f49fdfcd              # double 0.99926326540207244
	.quad	0x3fdd188522308d7e              # double 0.45462158526262175
	.quad	0x3fcf83dc1c636290              # double 0.2462115419973725
	.quad	0x3fee3bef14f9b7cc              # double 0.94481615158815079
	.quad	0x3fd8d5c15e18e964              # double 0.38804659070196679
	.quad	0x3fe55816bc71705a              # double 0.66700302892014496
	.quad	0x3fc3e4a37e879bd8              # double 0.15541499784668988
	.quad	0x3fd17ce64ced083a              # double 0.27324826729102691
	.quad	0x3f429f7c32f97c00              # double 5.6832851801036366E-4
	.quad	0x3fda9dd49b6fda2a              # double 0.41588320903193454
	.quad	0x3feb43f4bb779b5e              # double 0.85204540838899923
	.quad	0x3fd4babf7cd4f010              # double 0.32389819326977065
	.quad	0x3fc1c15401fff9a8              # double 0.13871240708972477
	.quad	0x3fca0e149467d948              # double 0.20355469938631132
	.quad	0x3fe46c8488065b6f              # double 0.63824678962087755
	.quad	0x3face6d27cdfae80              # double 0.056448533767107456
	.quad	0x3fe6c278c76b5a46              # double 0.71123923253146226
	.quad	0x3fe347ee81ce6908              # double 0.60253072121420903
	.quad	0x3fe69df4e665b98f              # double 0.7067818164776315
	.quad	0x3fc76690a295c254              # double 0.18281753481598406
	.quad	0x3fe0d9f993beb4b5              # double 0.52660826546129746
	.quad	0x3fef6f7a45c2f375              # double 0.98235810876177132
	.quad	0x3fd4cc7ba89113ec              # double 0.32498065435021206
	.quad	0x3fb8a7a955a58d78              # double 0.096308310899578475
	.quad	0x3feb9c50b5534cd9              # double 0.86283145346751688
	.quad	0x3fcbf0327cd61808              # double 0.21826773734591165
	.quad	0x3fe8142d5518b6f7              # double 0.75246302242677998
	.quad	0x3fde159519dcfbb4              # double 0.47006728673653275
	.quad	0x3fb7e462222249e8              # double 0.09332860310886526
	.quad	0x3fe3d25a3dce9b0b              # double 0.61942779609384624
	.quad	0x3f72c0a4eeb5ef80              # double 0.0045782511400566106
	.quad	0x3fe6d94f287754a4              # double 0.7140270033220486
	.quad	0x3fda565a452775a4              # double 0.41152054551442974
	.quad	0x3feb06e53a5278ce              # double 0.84459172621770917
	.quad	0x3fe1b35fcf2b7c41              # double 0.55314627135147287
	.quad	0x3fdf826eb687d350              # double 0.49233596635103982
	.quad	0x3fc32d3f3ea83184              # double 0.14981833037780856
	.quad	0x3fe3727dab14e46e              # double 0.60772593893410742
	.quad	0x3fed8d5c1584758b              # double 0.92350582316037
	.quad	0x3fec524f41acaaab              # double 0.88504755808874813
	.quad	0x3fc524980338ae34              # double 0.16517925412459677
	.quad	0x3fb3da8ee33c4220              # double 0.07755368278254382
	.quad	0x3fe6e7e1c91dec14              # double 0.71580590515748321
	.quad	0x3fd38d91e421d2f8              # double 0.30551574018981809
	.quad	0x3fd805f73be49a5a              # double 0.37536412094997262
	.quad	0x3fd0eef81e449624              # double 0.26458552318431061
	.quad	0x3fec18f3164f49ac              # double 0.87804560048453117
	.quad	0x3fb562c1f4421100              # double 0.083538171895330748
	.quad	0x3fd18c667778218a              # double 0.27419435183448881
	.quad	0x3fd4aac432f942b6              # double 0.32292275407693738
	.quad	0x3fa1c92bee661630              # double 0.034737942553914158
	.quad	0x3fe9e2ffb009c5cf              # double 0.80895981199699374
	.quad	0x3fba54836df61c70              # double 0.10285207209209246
	.quad	0x3fb82e8bc3316a58              # double 0.094460234789417341
	.quad	0x3fc221faff5beb30              # double 0.1416620013113401
	.quad	0x3fe920962d86a49a              # double 0.78522786037241876
	.quad	0x3fc0ceb77070ef6c              # double 0.13130848875322998
	.quad	0x3fc1d89e822db4d8              # double 0.13942319256185587
	.quad	0x3fe6fd3bf69d7885              # double 0.71841238181129141
	.quad	0x3fc016f6e860001c              # double 0.12570082041202191
	.quad	0x3fa3b27a39096830              # double 0.038471049749844943
	.quad	0x3fe1f72139f28340              # double 0.5614172107490063
	.quad	0x3fc0844d0b323420              # double 0.12903750464138941
	.quad	0x3fe3667f394fcbb0              # double 0.6062618369454551
	.quad	0x3fe58d84fd6fe9bf              # double 0.67352532863088033
	.quad	0x3fea904e363e6c08              # double 0.83011541933535771
	.quad	0x3f74db30d8ac3c00              # double 0.005091849142231375
	.quad	0x3fed991a1a8e6a4b              # double 0.92493920504359417
	.quad	0x3fed8667d923f798              # double 0.92265694055798786
	.quad	0x3f8ac5413e810fc0              # double 0.013071546287512947
	.quad	0x3fe663571183cd60              # double 0.69962647839421876
	.quad	0x3fe0c506f0b80b1e              # double 0.5240511609593772
	.quad	0x3fb7745090a84438              # double 0.091618571583482189
	.quad	0x3fec33aae902c210              # double 0.88130708227078181
	.quad	0x3fe79e41f9ed9c43              # double 0.73806856931776854
	.quad	0x3fe90f6a7a787b9d              # double 0.78313182754560595
	.quad	0x3fee897db4619051              # double 0.95428357344327186
	.quad	0x3fd1279c7e3f6468              # double 0.26804268196935377
	.quad	0x3fd5bd3fb0731a7e              # double 0.33967582923325057
	.quad	0x3fbcf50371db1110              # double 0.11311360864334952
	.quad	0x3fd18daee0ab3640              # double 0.2742726511031357
	.quad	0x3fe2f3cc8c1b1a69              # double 0.59226062168529581
	.quad	0x3fdec1f0b5047ae2              # double 0.48058717420091857
	.quad	0x3fd703e5d1914680              # double 0.35961289849829114
	.quad	0x3fc15826995a6a24              # double 0.13550264823864311
	.quad	0x3fdffc71d55135e0              # double 0.49978299934158876
	.quad	0x3fe6889230b6aa84              # double 0.70417127146113545
	.quad	0x3fe65e8fc3f95c26              # double 0.69904316211875961
	.quad	0x3fe4eed2b2092e01              # double 0.65415320179585035
	.quad	0x3fc3ec8ec185314c              # double 0.15565666627152053
	.quad	0x3fdece63e8e3c8bc              # double 0.48134706252234216
	.quad	0x3fe21dc13dd67020              # double 0.56613218381562902
	.quad	0x3fcec74638d97b44              # double 0.2404563691697722
	.quad	0x3fe407a8c1d5a4b8              # double 0.62593496187505249
	.quad	0x3fe4b7f19e93c308              # double 0.64745408031566942
	.quad	0x3fb32be892f730a8              # double 0.074888740425367417
	.quad	0x3fe8b33af62a47db              # double 0.77187870101101497
	.quad	0x3fd1574696879284              # double 0.27095188808588255
	.quad	0x3fd672d70f3c6fda              # double 0.35075928199671369
	.quad	0x3fbe1cb10237cca0              # double 0.11762529663228571
	.quad	0x3fd7d6c197fea5ae              # double 0.37248267977937644
	.quad	0x3fe9ced5baae3c91              # double 0.80649839840943305
	.quad	0x3fcd48618ffeb96c              # double 0.22877139597899132
	.quad	0x3fd74197ead7614a              # double 0.3633785050747248
	.quad	0x3fe2503e518f7e84              # double 0.57229534082212341
	.quad	0x3fe68342d2778af0              # double 0.70352307421521054
	.quad	0x3fad3c551ed72600              # double 0.057100925459575791
	.quad	0x3f8f86755e554700              # double 0.01539317793018169
	.quad	0x3fb6eb0ddb7b0320              # double 0.089524141391859491
	.quad	0x3fe96688ec0b136f              # double 0.79376646139335871
	.quad	0x3fde430c70daa76e              # double 0.47284232159528627
	.quad	0x3fe14ffb21bcb008              # double 0.54101330365438205
	.quad	0x3fe9f56c085b43cc              # double 0.81120874054078617
	.quad	0x3fed52619f679a41              # double 0.91630631574373222
	.quad	0x3fc74c9973b76df4              # double 0.18202512884350563
	.quad	0x3fd772859481ed52              # double 0.36636485579193334
	.quad	0x3fdbb62ed9a35732              # double 0.43299456838336703
	.quad	0x3fbde9eb806f7cd0              # double 0.11685058484680444
	.quad	0x3fe6c194c44a51fa              # double 0.71113050783111409
	.quad	0x3fe1f13c976ab37e              # double 0.5606978375777627
	.quad	0x3fdc92e1d2d31230              # double 0.44646497333841051
	.quad	0x3fd89272bb813612              # double 0.38393848715790668
	.quad	0x3fe9a70def088ca6              # double 0.80164238630495244
	.quad	0x3fd7e043cd0b6020              # double 0.37306304000731139
	.quad	0x3fac0fdb32f1cb00              # double 0.054808473557292459
	.quad	0x3fd5e529b275e4b4              # double 0.34211199214730503
	.quad	0x3fe2da239ed276cb              # double 0.58912831325479809
	.quad	0x3f88fc1ff133af80              # double 0.012199639843366361
	.quad	0x3fd00b0d6c94d134              # double 0.2506745872845102
	.quad	0x3fcdbf4d4c560170              # double 0.23240057208387155
	.quad	0x3fdedacef7177304              # double 0.48210500841177883
	.quad	0x3fefb3962b688748              # double 0.9906721923655164
	.quad	0x3fec783987c58d4d              # double 0.88967587011249238
	.quad	0x3fe1538d9c2343fa              # double 0.54144936080604045
	.quad	0x3fdb9f9971cf3538              # double 0.43161617387962137
	.quad	0x3fe7d80470e0bcdb              # double 0.74511930510007163
	.quad	0x3fdc618e7d9d461a              # double 0.44345438258196312
	.quad	0x3fd73c1e63b54cdc              # double 0.36304435479287434
	.quad	0x3fe8522f4e426449              # double 0.76003232274082066
	.quad	0x3fe5450494d871ea              # double 0.66467503615745938
	.quad	0x3fed8cd77a65244a              # double 0.92344259171762499
	.quad	0x3fe5a559cedf2441              # double 0.67643442539804977
	.quad	0x3fdb71d89617ee1c              # double 0.42882361085477938
	.quad	0x3fe79a733b85e79b              # double 0.73760377526854215
	.quad	0x3fe2233fcc0973ca              # double 0.56680288172685178
	.quad	0x3fb0d877455e6ee8              # double 0.065803007541429204
	.quad	0x3fc54d26a6479a74              # double 0.16641696089864733
	.quad	0x3fed5fa8a37cc909              # double 0.91792709284916996
	.quad	0x3fe623fac04a326c              # double 0.69189202839477337
	.quad	0x3fdf249b66b7bd04              # double 0.48660931616809955
	.quad	0x3fdbf7a8477e5ee6              # double 0.43699080449867578
	.quad	0x3fde216dad0d078e              # double 0.47079030894757856
	.quad	0x3fe98789514b99b7              # double 0.79779497030249658
	.quad	0x3fe927b9c2b783c0              # double 0.78609931975017133
	.quad	0x3fbfbaae0f4a4e00              # double 0.12394225953385529
	.quad	0x3fec740a2e40bb82              # double 0.88916501077424948
	.quad	0x3fcf89f9edae2428              # double 0.2463982019947093
	.quad	0x3fe44aded5ae299b              # double 0.634139458984737
	.quad	0x3fd6dd86169eb87c              # double 0.35727073868736858
	.quad	0x3fecc79c571a3ce8              # double 0.89936654102521363
	.quad	0x3fd862a698417c1e              # double 0.38102116459589463
	.quad	0x3fea3cc425074436              # double 0.81991774780374871
	.quad	0x3fe7cbab6f81472e              # double 0.74361202028578588
	.quad	0x3fe610fa87a2cfc2              # double 0.68957258693125589
	.quad	0x3fecb9e56c74f199              # double 0.89769240553828233
	.quad	0x3fd92a8fb4489c78              # double 0.39322273832153298
	.quad	0x3fec8eaa3931ad64              # double 0.89241515322411801
	.quad	0x3fce1ac380b4c4bc              # double 0.23519176277617315
	.quad	0x3fed8f0be2dbea76              # double 0.92371172245414246
	.quad	0x3fe3c85e940a2bd7              # double 0.61820916093835876
	.quad	0x3fccaacfcf3322a8              # double 0.22396276108908819
	.quad	0x3fd808c8efc8e6ee              # double 0.37553618828279312
	.quad	0x3fe4e9969d6c03af              # double 0.65351420160742701
	.quad	0x3fa34bfb37171680              # double 0.037689066386104919
	.quad	0x3fc0ee20af92b2a4              # double 0.13226708004858267
	.quad	0x3feefd52a746c0a4              # double 0.96842320128600478
	.quad	0x3fda5cc804ec64c6              # double 0.41191292267610569
	.quad	0x3fbb445bcb5b0248              # double 0.10651181902631734
	.quad	0x3fc00dfd19a480b0              # double 0.12542690040664217
	.quad	0x3fe00c6dbe9806d3              # double 0.50151717400896201
	.quad	0x3fd120cbe526ddbc              # double 0.26762673738582143
	.quad	0x3fe5d34f6d1f783b              # double 0.68204470933029115
	.quad	0x3fcb58d1716aaaf0              # double 0.21364801443026904
	.quad	0x3fef126ad5ea294b              # double 0.97099820881093401
	.quad	0x3febc07d058ff192              # double 0.86724711500532892
	.quad	0x3fea0304a294bfdf              # double 0.81286842111694202
	.quad	0x3fea3580f547a903              # double 0.81903121858820815
	.quad	0x3fe02186d7f36c5f              # double 0.5040926187315441
	.quad	0x3fe514042716c64d              # double 0.65869338640750075
	.quad	0x3fd57c5ae41dccc2              # double 0.33571502949707732
	.quad	0x3fd4733d72c2f7b6              # double 0.31953369338213677
	.quad	0x3fc951a5a20ab088              # double 0.19780416881747365
	.quad	0x3fc23f7a6181e778              # double 0.14256219636063938
	.quad	0x3fdc42e698d7d0d4              # double 0.44158329893185777
	.quad	0x3fcd58df19f5db60              # double 0.22927464263531316
	.quad	0x3fe63cbce4491848              # double 0.69491428935067123
	.quad	0x3fed900791c83984              # double 0.92383173440048027
	.quad	0x3fe6c8340248102f              # double 0.71193886228184577
	.quad	0x3fbc0ec5b236e288              # double 0.10960040665566784
	.quad	0x3fed19892472987d              # double 0.90936715239219235
	.quad	0x3fe60f91ba7d0943              # double 0.68940054343719515
	.quad	0x3f913ab4c05ba960              # double 0.016825508347133478
	.quad	0x3fed9f6e259f35c3              # double 0.92571170185117813
	.quad	0x3feb3f6919609433              # double 0.85149054485794406
	.quad	0x3f960f2ecf9a9fa0              # double 0.021542292996542423
	.quad	0x3fd1f571d76d8528              # double 0.28060575521347397
	.quad	0x3fea0b39789803c8              # double 0.81387017777898851
	.quad	0x3fac050dea3095f0              # double 0.054726061666126813
	.quad	0x3fc45a49f68ae494              # double 0.15900539911470857
	.quad	0x3faa1e2ca4600720              # double 0.05101146227390374
	.quad	0x3fe8825916d8d4ec              # double 0.7659116216879318
	.quad	0x3fb7e05e1cc2bc20              # double 0.093267328282977235
	.quad	0x3fe2ff8961205ee7              # double 0.59369343729028123
	.quad	0x3fe19661c882d2df              # double 0.54960717356024336
	.quad	0x3feca6a65e8bc00d              # double 0.89534300294872227
	.quad	0x3fd1c326640dc37c              # double 0.27753600855708505
	.quad	0x3fed752119a262c5              # double 0.92054800993636177
	.quad	0x3fdd3da84efd9122              # double 0.45688827241817098
	.quad	0x3fe378c0d43aec79              # double 0.60849038554387314
	.quad	0x3fba5e3bb8f7d568              # double 0.10300038591215854
	.quad	0x3fb70fba8d0b69f8              # double 0.090083751139367396
	.quad	0x3fe5223eaf84eed2              # double 0.6604302814589238
	.quad	0x3fe61948a7a8de4e              # double 0.6905864023783097
	.quad	0x3fec8a620f4e2e47              # double 0.89189246167502112
	.quad	0x3fc59064363224b8              # double 0.16846897741587497
	.quad	0x3fdfc400bf61b860              # double 0.49633806886311582
	.quad	0x3fd3f8e9367e643e              # double 0.31206732103015955
	.quad	0x3fe796eba929709c              # double 0.73717291869572277
	.quad	0x3fd097589d11d0d6              # double 0.25923743571116853
	.quad	0x3fe5c1becc6029dd              # double 0.67990055005185079
	.quad	0x3fc7cb90790ed6d0              # double 0.18589979086907826
	.quad	0x3febdf6a296a8d18              # double 0.87102230156998228
	.quad	0x3feaef3f0ce3717d              # double 0.8417048694350765
	.quad	0x3fe13732465de799              # double 0.53798784011381706
	.quad	0x3fd19ccdad2d52c8              # double 0.27519552146740667
	.quad	0x3fe290c8add41fd1              # double 0.58017381621265873
	.quad	0x3fef4dd7ae0d3058              # double 0.97825225824773109
	.quad	0x3feb46ace71f96cc              # double 0.852377368367081
	.quad	0x3fdc5ad928caa590              # double 0.44304493888429253
	.quad	0x3fdee89e3b831480              # double 0.4829478818103965
	.quad	0x3fdab70982e593dc              # double 0.41742170126809497
	.quad	0x3fda3574e0ea88b4              # double 0.4095127293059122
	.quad	0x3fe96ae2884a86f4              # double 0.79429747218475066
	.quad	0x3fc0886390e24d90              # double 0.12916225981153362
	.quad	0x3faa3a1137718b60              # double 0.051224267976769822
	.quad	0x3fdc88ef48b06aee              # double 0.44585783098743448
	.quad	0x3fe0b5c88151a861              # double 0.52219033486950306
	.quad	0x3fc126f0116b96b0              # double 0.13400078631018664
	.quad	0x3fdcbab85f9c3eae              # double 0.4488964971251147
	.quad	0x3fef90b16c8efe4b              # double 0.98641272738309149
	.quad	0x3fdcf4018ca903d6              # double 0.45239294754361248
	.quad	0x3fcb4d830968586c              # double 0.21330297431331091
	.quad	0x3fdbae812722eb52              # double 0.43252590963281989
	.quad	0x3fe6abcc86e1c6e3              # double 0.7084715494549666
	.quad	0x3fb4c8faa530fa68              # double 0.081191697435295418
	.quad	0x3fd23642ae293cc8              # double 0.28456179626386957
	.quad	0x3fd8cab12d03fa80              # double 0.38737134357499059
	.quad	0x3fe524ab821e82ac              # double 0.66072631276991478
	.quad	0x3fdac5030b208bba              # double 0.41827465139993658
	.quad	0x3fe2e2553ea1eb02              # double 0.59012853844555502
	.quad	0x3fe68d045aa1de75              # double 0.70471399022694803
	.quad	0x3fdfb25a12e74d60              # double 0.49526073308989815
	.quad	0x3fdc1f434d4fc6f6              # double 0.43940813589061578
	.quad	0x3fafd048fa0cc440              # double 0.062135963939347949
	.quad	0x3feeedf19bba37da              # double 0.9665458718825406
	.quad	0x3fed114c4f9dd939              # double 0.90836158323398941
	.quad	0x3fb41478f19f4650              # double 0.078437384595667625
	.quad	0x3fe8c22c58af18f2              # double 0.77370278664673564
	.quad	0x3fc5e22a0daf1274              # double 0.17096448581846213
	.quad	0x3fde29df104aba26              # double 0.4713056239224066
	.quad	0x3f9119b348b15840              # double 0.016699601470769432
	.quad	0x3fc5832ceb58aab8              # double 0.16806565753480185
	.quad	0x3fe321347ab45bf6              # double 0.59780334439972083
	.quad	0x3fe3b5e0e311f3b0              # double 0.61595196103700367
	.quad	0x3fe919e6c549ce50              # double 0.78441179783698978
	.quad	0x3fe7f96b14e6195b              # double 0.74919656831552162
	.quad	0x3fee8c605b447ce7              # double 0.95463579011621114
	.quad	0x3fea655b07ca8b0b              # double 0.82487250825610781
	.quad	0x3fc8ff0f54e95afc              # double 0.19528381010123741
	.quad	0x3fe1a3c2e73351b6              # double 0.55124039799061708
	.quad	0x3fe5c9b8d30686d5              # double 0.68087426391522377
	.quad	0x3fe94aec6ab85a1d              # double 0.79039593547605913
	.quad	0x3fde77c883de2304              # double 0.47606099012095648
	.quad	0x3febfc39e7a1a033              # double 0.87453932991502936
	.quad	0x3fe405a5780dbf70              # double 0.62568925331104985
	.quad	0x3fab01fe6be3b990              # double 0.052749586744414434
	.quad	0x3fea60ef9e202f6d              # double 0.82433300861292269
	.quad	0x3fef9843711456be              # double 0.98733684621648599
	.quad	0x3fe6144f862c9b8b              # double 0.68997932630451098
	.quad	0x3fda86cdb10d6aca              # double 0.41447775163912282
	.quad	0x3fb409353d330fb8              # double 0.078265502396844933
	.quad	0x3fda167fcc959b46              # double 0.40762324313111653
	.quad	0x3fbc6dfd3da79878              # double 0.11105330233803723
	.quad	0x3fed88faad6fe5f7              # double 0.92297109484132889
	.quad	0x3fcf21d8c8c63470              # double 0.24322042277745792
	.quad	0x3fea4aef094b8df1              # double 0.82164718451934793
	.quad	0x3fe660298636f068              # double 0.69923855031767079
	.quad	0x3fc99e048c30662c              # double 0.20013481946152589
	.quad	0x3fea72b6f4709f5b              # double 0.82650325529264579
	.quad	0x3fef4842c556f1b4              # double 0.97757090132613777
	.quad	0x3fe37cdb2e4da84b              # double 0.60899123233435526
	.quad	0x3fef0d2d307f9d53              # double 0.97035846207010434
	.quad	0x3fdf898552c853e6              # double 0.49276860317450966
	.quad	0x3feb185ed640e74f              # double 0.8467249092711685
	.quad	0x3fe44716ae59b081              # double 0.63367780735781321
	.quad	0x3fe4e15ab1f974b3              # double 0.65250906715995993
	.quad	0x3fef59861b6c47e7              # double 0.97967820507096525
	.quad	0x3feacee7abe7b847              # double 0.83775695395684913
	.quad	0x3fd8d556e6130744              # double 0.38802120655246974
	.quad	0x3feb744977eda528              # double 0.85794518874641756
	.quad	0x3fed92cedd6d74af              # double 0.92417090652056355
	.quad	0x3f9791778060f340              # double 0.023015849314322212
	.quad	0x3fe3d35dc0336702              # double 0.61955153979508304
	.quad	0x3fdfb43b0115eed2              # double 0.49537539583228096
	.quad	0x3fe2c5b0496a0f63              # double 0.58663191164712847
	.quad	0x3fef4aa9df0df525              # double 0.97786420407615948
	.quad	0x3fc96f93ff7b95cc              # double 0.1987175939058673
	.quad	0x3fe1b7150e3febee              # double 0.55359890730994521
	.quad	0x3fa6bb7a00437cf0              # double 0.044399082691365055
	.quad	0x3fb2eff7d7ffd048              # double 0.07397412322444652
	.quad	0x3fb2f49534b94230              # double 0.074044537899006668
	.quad	0x3fd9088fb496e68a              # double 0.39114754329384793
	.quad	0x3fd4350387e07fd8              # double 0.3157357050822589
	.quad	0x3fe7f59e90fb613c              # double 0.74873283688342651
	.quad	0x3fe845b7a1f986ad              # double 0.75851041446386136
	.quad	0x3fe95b370de6ae0c              # double 0.79238465037400507
	.quad	0x3fdbd6ec3ab9ac04              # double 0.43499284491434786
	.quad	0x3fda460bfc9595b6              # double 0.41052531877934528
	.quad	0x3fe62c47bfdd83b4              # double 0.69290530656518579
	.quad	0x3fe6ba4e1c84e3ef              # double 0.71024232454430869
	.quad	0x3fc6a68d2dd34f24              # double 0.17695774781770368
	.quad	0x3fd3a428e588959c              # double 0.30689451613792484
	.quad	0x3fb7c76b19bfe288              # double 0.092886632715712847
	.quad	0x3fef6acc195cfa7b              # double 0.98178677514790935
	.quad	0x3fd853b9563f8208              # double 0.38011010573066573
	.quad	0x3fd38492988358a6              # double 0.30496659177641516
	.quad	0x3fdc6195048fa3e0              # double 0.4434559387723862
	.quad	0x3fdb783b858ecc94              # double 0.42921340983156964
	.quad	0x3fe868710edc9fe7              # double 0.76274922278116442
	.quad	0x3fb9b540b6af1b00              # double 0.10042194805201277
	.quad	0x3fe6f15a357b03eb              # double 0.71696196027198533
	.quad	0x3fbea68470130ec0              # double 0.11972835289185024
	.quad	0x3fd4d8178d760f28              # double 0.32568920912329924
	.quad	0x3fef64868603f0dd              # double 0.98102117705232283
	.quad	0x3fe35bd3b0c76591              # double 0.60495934035422938
	.quad	0x3fe7d8f1a5775496              # double 0.74523241345981961
	.quad	0x3fbb43f645eb5990              # double 0.1065057678891661
	.quad	0x3f905452ad1ec1e0              # double 0.015946666542449139
	.quad	0x3fe759a57f191cb0              # double 0.72969317268225176
	.quad	0x3fefe45153e63276              # double 0.99662081133426628
	.quad	0x3fdf6a6f57442210              # double 0.49087127229771088
	.quad	0x3fd1c5cda1514756              # double 0.27769795182859036
	.quad	0x3fe29a2fc38ba07a              # double 0.58132160370315877
	.quad	0x3fd102fbbda361a8              # double 0.26580708999019942
	.quad	0x3feeb77df5867429              # double 0.95989892915861674
	.quad	0x3fe839677cc31746              # double 0.75700735442726663
	.quad	0x3fd32eba039edefc              # double 0.29972696641515006
	.quad	0x3feb07ccc73da0f1              # double 0.84470213808256578
	.quad	0x3fedfa8be542502f              # double 0.93683428551822157
	.quad	0x3fc16778a2f849ac              # double 0.13597019155038248
	.quad	0x3fcbe9927385f890              # double 0.21806555405413919
	.quad	0x3fa8f8094991ce80              # double 0.048767366629275166
	.quad	0x3fd6bf4e2fdb3d62              # double 0.35542635606267059
	.quad	0x3fdfd12d6d796ff2              # double 0.49714217844825648
	.quad	0x3fe63a67d6017c73              # double 0.69462959096916987
	.quad	0x3fd6fc47a6bc31ce              # double 0.35914794237831138
	.quad	0x3fe517de47dbf1f5              # double 0.65916360888473824
	.quad	0x3fd8457471a78da0              # double 0.37923918818543179
	.quad	0x3fd4ed7ed1716eac              # double 0.32699556783129924
	.quad	0x3fc8e5377c378d1c              # double 0.19449513974459698
	.quad	0x3fdc0fdb62e13e3e              # double 0.4384678331016153
	.quad	0x3fe7056ab972ef1f              # double 0.71941124172687754
	.quad	0x3fe5231f3e7f444e              # double 0.6605373592993915
	.quad	0x3fe351675fa711b2              # double 0.60368698770667195
	.quad	0x3fdc100801e38830              # double 0.43847847160771192
	.quad	0x3feb48a380479bf9              # double 0.85261702589639221
	.quad	0x3fb4147c34428500              # double 0.07843757892489478
	.quad	0x3febebda8fe4df48              # double 0.87254074196150899
	.quad	0x3fe2f60fc459de05              # double 0.5925368151646927
	.quad	0x3fefa8a6276ab263              # double 0.9893370408877441
	.quad	0x3fe364630002cc6d              # double 0.60600423814902415
	.quad	0x3fcf47d073ae80b4              # double 0.24437909744756825
	.quad	0x3fc604494ffba578              # double 0.17200580983562097
	.quad	0x3fe9be06f661ff80              # double 0.80444667932168556
	.quad	0x3fe5f60dde863a80              # double 0.68628591024192076
	.quad	0x3fda9f0a922c05e0              # double 0.41595711016279147
	.quad	0x3fe8e54ca5c2d022              # double 0.77799064994042433
	.quad	0x3fe8f4728f72840b              # double 0.77983978287750355
	.quad	0x3fdfe7d4acf3eb8a              # double 0.49852482690737843
	.quad	0x3fd92c3dc21f6fb0              # double 0.39332527119926919
	.quad	0x3fbfbcbc6f58d680              # double 0.12397363394196681
	.quad	0x3fc8b70fd24d99a8              # double 0.19308660286624257
	.quad	0x3fc4ce404a0697cc              # double 0.16254428495920903
	.quad	0x3feb16f0a1ee8b24              # double 0.8465502894144703
	.quad	0x3fdeac710083b38e              # double 0.47927498865356533
	.quad	0x3fa31633f33f9b10              # double 0.037278769915977006
	.quad	0x3fb7fb7cb9111bf8              # double 0.093681140119869499
	.quad	0x3fda3dd8f8467d7a              # double 0.41002487416877609
	.quad	0x3fe2a9128b1a5b20              # double 0.58313872498078823
	.quad	0x3fc859c76115206c              # double 0.19023983230931962
	.quad	0x3fee071a232fc142              # double 0.93836695549365623
	.quad	0x3fd0b046a300d6e4              # double 0.26075902860917055
	.quad	0x3fcf72c9282834fc              # double 0.24569048367303725
	.quad	0x3fa1c1e13aca83f0              # double 0.03468231051125048
	.quad	0x3fe647230295057c              # double 0.69618368629760097
	.quad	0x3fd9f612767dad72              # double 0.40564405032519979
	.quad	0x3fd50df4687f96de              # double 0.3289767284862658
	.quad	0x3feebd6e5c844281              # double 0.96062391347557263
	.quad	0x3fc54e34c03ba880              # double 0.16644915949229144
	.quad	0x3fb8fc883dd72378              # double 0.097603335473776087
	.quad	0x3fde5bb28d2bdbb0              # double 0.47434676920186813
	.quad	0x3fe0985c52630134              # double 0.51859870997581092
	.quad	0x3fe1a4a9e6f052b4              # double 0.55135054688670104
	.quad	0x3fd42030ad0f66cc              # double 0.3144647302666328
	.quad	0x3fe537ee1e6935a1              # double 0.6630774110760066
	.quad	0x3fd43fc30f2adeac              # double 0.31639172059247289
	.quad	0x3feebc04ccedd6ce              # double 0.96045150780875033
	.quad	0x3fb9a81cb935ba78              # double 0.10022143861508848
	.quad	0x3fe3ca94a24c097c              # double 0.61847907732617058
	.quad	0x3fe842f167a5cea2              # double 0.75817175143898319
	.quad	0x3fc48c3fa661e924              # double 0.16053004860061393
	.quad	0x3fe50639a1748b49              # double 0.65700990232685641
	.quad	0x3fec1fba159d1b62              # double 0.87887291165757753
	.quad	0x3fd281f882a1c246              # double 0.28918278462427727
	.quad	0x3fe1660931d1a33c              # double 0.54370555620435068
	.quad	0x3fdde0a00c921fa6              # double 0.4668350336801218
	.quad	0x3fd92bb5bf350d36              # double 0.39329284355717975
	.quad	0x3fecb3239e6e4843              # double 0.89686757033837983
	.quad	0x3fbbcb108b4eaf88              # double 0.10856727028902757
	.quad	0x3fe7146cab9c172f              # double 0.72124322431111476
	.quad	0x3feb075778cc24c7              # double 0.84464620202302221
	.quad	0x3fc0061a42738db0              # double 0.12518623585411381
	.quad	0x3fd15784835531e8              # double 0.27096665215938609
	.quad	0x3fe4b124e46e8582              # double 0.64662403693743919
	.quad	0x3fd903322372bba8              # double 0.39082005941139153
	.quad	0x3fe2e5ba712dd37a              # double 0.59054300408625626
	.quad	0x3fed183287e92fc5              # double 0.90920378251166112
	.quad	0x3fdffb9759d27a7c              # double 0.49973090907761963
	.quad	0x3fbb7c0445176198              # double 0.10736109434890861
	.quad	0x3fe0a71bb3cd9735              # double 0.52039895170012207
	.quad	0x3fe486699d5e62bc              # double 0.64140778289864597
	.quad	0x3fd7f714984448ae              # double 0.37445559377477877
	.quad	0x3fe76965d134a896              # double 0.731615933041456
	.quad	0x3fdeedbad44d47e0              # double 0.48325987560849448
	.quad	0x3feebb3e694772cc              # double 0.96035690843890497
	.quad	0x3fc692770daac83c              # double 0.17634475867595423
	.quad	0x3fc1d711a8db2874              # double 0.13937588448453975
	.quad	0x3fec2bbd71739d20              # double 0.88033935698050314
	.quad	0x3fe60548e31f6a9c              # double 0.68814510688692421
	.quad	0x3fda96f373111980              # double 0.41546331631652578
	.quad	0x3fe337bf0411b0ac              # double 0.60055495066400999
	.quad	0x3fea59fe3aff9788              # double 0.82348548434377822
	.quad	0x3fd14c65ce4abddc              # double 0.27028794427584812
	.quad	0x3fefc79c8840c7f1              # double 0.99311663257526394
	.quad	0x3fe273ca0dee462b              # double 0.57663443299151618
	.quad	0x3fd67c14f5ba0aba              # double 0.3513233565974293
	.quad	0x3fd6915c51747da8              # double 0.35262210802644711
	.quad	0x3fe4e7da207394cc              # double 0.65330225313359724
	.quad	0x3fb7caafc90816d0              # double 0.092936503009777071
	.quad	0x3fd81ceb58a359ee              # double 0.37676509529174396
	.quad	0x3fe2e9f99eda9026              # double 0.59106141115308186
	.quad	0x3fef6e1fa9c09ea5              # double 0.98219283251542732
	.quad	0x3fd692a6151784cc              # double 0.3527007299399656
	.quad	0x3fe9eb521dd6479e              # double 0.8099756796602724
	.quad	0x3febb4fb6d21b03a              # double 0.86584254565014551
	.quad	0x3fe56d20c24d528e              # double 0.66957128476731653
	.quad	0x3fde3f7ecb29d21e              # double 0.47262544479534252
	.quad	0x3fe795ea30d74005              # double 0.73705014743063713
	.quad	0x3f948432f5cad1e0              # double 0.020035549404115005
	.quad	0x3fd6b2f7313d7786              # double 0.35467319305995948
	.quad	0x3feaee38539a3665              # double 0.84157959297745022
	.quad	0x3fe373381698fbe5              # double 0.60781483090965749
	.quad	0x3fb0c872f94c4880              # double 0.065558610786213833
	.quad	0x3febd19010eb7697              # double 0.8693313913788242
	.quad	0x3fabf3d372b77a70              # double 0.0545946195159005
	.quad	0x3fedc3c7ae05015e              # double 0.93014892566865703
	.quad	0x3fe64c67d61df8d6              # double 0.69682685680143197
	.quad	0x3fc94cc17aa196cc              # double 0.19765490043498912
	.quad	0x3fd60d9cd00c8f66              # double 0.34458084409037892
	.quad	0x3fe68f6880430b3b              # double 0.70500588465834058
	.quad	0x3fd3fdb7b58ad88c              # double 0.31236069420572998
	.quad	0x3fcfe7b2e63034b8              # double 0.2492583869901972
	.quad	0x3fbb39c6c85cce58              # double 0.10635034934676335
	.quad	0x3fb4e3d8aad7ecd0              # double 0.081601659498051093
	.quad	0x3fd2717530c59fd4              # double 0.28817491305244158
	.quad	0x3fbfc2a4335513a0              # double 0.12406374219160776
	.quad	0x3fe491127968fefd              # double 0.64270900452535751
	.quad	0x3fea70bdbda3d178              # double 0.82626235045476815
	.quad	0x3fab587922cce490              # double 0.053409371851054321
	.quad	0x3fe636fc226796ab              # double 0.69421202392250814
	.quad	0x3fd044d1d11ec086              # double 0.25420041486632561
	.quad	0x3f8a62dea94bc6c0              # double 0.012883891622070265
	.quad	0x3f9e4108707e0560              # double 0.029544956079467055
	.quad	0x3fe9709ad59d3217              # double 0.79499570580952905
	.quad	0x3fea0fab662db067              # double 0.8144127841637897
	.quad	0x3fd698802f2e791c              # double 0.3530579052693541
	.quad	0x3fe9224e1002d537              # double 0.78543761374627408
	.quad	0x3fe96cc6f7d028d4              # double 0.79452846909523566
	.quad	0x3fe4a32b7ade782a              # double 0.6449181937966888
	.quad	0x3fe039bf243baf0e              # double 0.50704915119919902
	.quad	0x3fbb44c3478d21b0              # double 0.10651798722131534
	.quad	0x3fcfd499790be840              # double 0.24867552195047615
	.quad	0x3fd9a681ed5ede7a              # double 0.40078781300278588
	.quad	0x3fef3a55020f7901              # double 0.97587061312131606
	.quad	0x3fd8ec8edfb42086              # double 0.38943836065346493
	.quad	0x3fd0ba5e2a907dbe              # double 0.26137499005013953
	.quad	0x3fdf5641d179d046              # double 0.48963971573471488
	.quad	0x3fe9be67eefb66fa              # double 0.80449291874103257
	.quad	0x3fef0bbd24249dad              # double 0.97018296298204165
	.quad	0x3fd71b77a73516ea              # double 0.36105147675367155
	.quad	0x3fd2b5dadbbee9ca              # double 0.2923495431856763
	.quad	0x3fac172f4b5ae7e0              # double 0.054864385555859263
	.quad	0x3fd87eefaea588e6              # double 0.3827475743802452
	.quad	0x3fdb0e926fcaa43a              # double 0.42276440541406013
	.quad	0x3fb40c9bd921afc8              # double 0.078317394743577684
	.quad	0x3fd48c9b539d5a8a              # double 0.32108195462698375
	.quad	0x3fe304dc040f2306              # double 0.59434319298552007
	.quad	0x3fc7035eae80aa40              # double 0.17979033966669711
	.quad	0x3fe38949b4d3daca              # double 0.61050877874262111
	.quad	0x3fc417fc43c33f3c              # double 0.15698197659230029
	.quad	0x3fdfad93c3513b70              # double 0.49496931146580092
	.quad	0x3fde38a49eecad84              # double 0.47220721740696825
	.quad	0x3fe179a594a9dfc2              # double 0.54609946285108202
	.quad	0x3fe4ef468b9aaf0f              # double 0.6542084433217229
	.quad	0x3feedd79c0762b6c              # double 0.96453559484630835
	.quad	0x3fe080f21c22320a              # double 0.51574044699515409
	.quad	0x3fcb621903d3dac8              # double 0.21393120467083393
	.quad	0x3fa4bd506449ba90              # double 0.040506851427257407
	.quad	0x3fd21c9e23b112fc              # double 0.28299668775098019
	.quad	0x3fe76d50625c77aa              # double 0.73209399424717003
	.quad	0x3fce2ed89d58b8d0              # double 0.23580463107049932
	.quad	0x3f8b3b89772d3400              # double 0.013297151517372541
	.quad	0x3febf9f2cf79fbe9              # double 0.87426128885988164
	.quad	0x3f7356d7bb566480              # double 0.004721491529744104
	.quad	0x3fd1cf77b764988c              # double 0.27828781995265994
	.quad	0x3fbb0650d62f1518              # double 0.10556512097453596
	.quad	0x3fc781dbd129996c              # double 0.18365047181141436
	.quad	0x3fd229e61d65d010              # double 0.28380730505819063
	.quad	0x3fe9fff342070fb2              # double 0.812493924102901
	.quad	0x3fc2ed2b7ea62848              # double 0.14786285099063634
	.quad	0x3fe62e96528c6dbe              # double 0.69318691370738583
	.quad	0x3fec204c78785040              # double 0.8789427140168371
	.quad	0x3fa1aee1e04cf970              # double 0.034537371283010709
	.quad	0x3fc915d18f812e94              # double 0.19597835070668579
	.quad	0x3fdefa61c927c7ec              # double 0.48403210300523258
	.quad	0x3fd892ed8cfd9ede              # double 0.38396776932357379
	.quad	0x3fc4f30463e5221c              # double 0.16366629483879158
	.quad	0x3fc223830ca2c2fc              # double 0.14170873753530333
	.quad	0x3fc566a1be588da8              # double 0.16719457430108986
	.quad	0x3fd75576f7fa2e26              # double 0.36459135262041042
	.quad	0x3febc34d72628d4e              # double 0.86759064045728862
	.quad	0x3feaba26ea9dd4e3              # double 0.83522363494435259
	.quad	0x3fc9e3703b9868a8              # double 0.20225336942605066
	.quad	0x3fb3f40ca1041a90              # double 0.07794264727645328
	.quad	0x3fd866c7fc57c466              # double 0.38127326624732516
	.quad	0x3fcaaf55384f3d08              # double 0.20847573518265272
	.quad	0x3fea7d3ce3fca95f              # double 0.8277878239507962
	.quad	0x3fbfe849703a5008              # double 0.12463816633163571
	.quad	0x3fdee946e30ac804              # double 0.48298809215623373
	.quad	0x3fd81670c57a4976              # double 0.37636966023378393
	.quad	0x3fee033f8a97f304              # double 0.9378965098290739
	.quad	0x3fdd1017f5cb7d6a              # double 0.45410727504164206
	.quad	0x3fb4aa249fe57e08              # double 0.080721177136631295
	.quad	0x3fd2412dbb87c2ac              # double 0.28522818864352462
	.quad	0x3fd8b305db07d50e              # double 0.38592668904978289
	.quad	0x3fe51802322725be              # double 0.65918073459140891
	.quad	0x3fea57399683f22f              # double 0.82314757726232368
	.quad	0x3fdd84402ff560c2              # double 0.46119694407890333
	.quad	0x3fd95e4d3ce1f668              # double 0.39638071961949217
	.quad	0x3fd50179b4736532              # double 0.32821505186219035
	.quad	0x3fe6c07c0c4b3d8a              # double 0.71099665070680484
	.quad	0x3fe2a9cc087d5c2d              # double 0.58322717340604913
	.quad	0x3fc4e18682b7b78c              # double 0.16313248999307139
	.quad	0x3fe867131479b02d              # double 0.76258234023180693
	.quad	0x3fe74babbe47c242              # double 0.72798716701624522
	.quad	0x3fc574a7c5f09254              # double 0.16762253918672576
	.quad	0x3fd8364a99268d96              # double 0.37831368404496268
	.quad	0x3fdf33ece648436c              # double 0.48754427422050273
	.quad	0x3fe28df4bed8e3e5              # double 0.57982861780976391
	.quad	0x3fb767a176259fe8              # double 0.091425029129481694
	.quad	0x3fbbb9553ac4bc70              # double 0.10829670605447617
	.quad	0x3fbb557d916f7700              # double 0.10677323151272944
	.quad	0x3fe5369923087d9b              # double 0.66291481821456288
	.quad	0x3fb92d58ddf70970              # double 0.098348192396803701
	.quad	0x3f8a8934d58f5a80              # double 0.012957012908299648
	.quad	0x3fbbb800b39600d0              # double 0.10827640900061231
	.quad	0x3fd932a1bf2d4220              # double 0.39371532125099584
	.quad	0x3fd6ced13d572fd6              # double 0.35637312879839322
	.quad	0x3fe2f4021b0801e4              # double 0.59228616027399683
	.quad	0x3feace9e1588b0cf              # double 0.83772186475609967
	.quad	0x3fe4295ade35656a              # double 0.63004821205246953
	.quad	0x3feb888b6e728417              # double 0.86041804858917004
	.quad	0x3fcd574a8d33a758              # double 0.22922641653650078
	.quad	0x3fda6510d536b338              # double 0.41241856404922173
	.quad	0x3fe1dc663aff9d65              # double 0.55815421603339799
	.quad	0x3feae1e9bfc438b3              # double 0.84007728056328401
	.quad	0x3fbc8292df916b98              # double 0.11136739690975472
	.quad	0x3fbd718b81285790              # double 0.11501380828153018
	.quad	0x3fd5b7e7188ceb4e              # double 0.33934953114992517
	.quad	0x3fd4acac1abe1bb8              # double 0.32303907977660229
	.quad	0x3fee9be1a98c798e              # double 0.95652850260721478
	.quad	0x3fa4ed554d189490              # double 0.040873208676466821
	.quad	0x3fe3b9deae41e208              # double 0.6164391902412385
	.quad	0x3fa6f4392ea41e60              # double 0.044832026427738425
	.quad	0x3fbb4c4a8e323598              # double 0.10663286182007992
	.quad	0x3fedb504ef105ea7              # double 0.92834707920242898
	.quad	0x3fb2c655201274c8              # double 0.0733388140965473
	.quad	0x3fbfc73f6e60e568              # double 0.12413402981555566
	.quad	0x3fea24d3f4e3712a              # double 0.81699560003065597
	.quad	0x3fe21a027c27e344              # double 0.56567501305753654
	.quad	0x3fd99ff95df70996              # double 0.40038904358166272
	.quad	0x3fe972c6c55de163              # double 0.79526079700648855
	.quad	0x3feb269bef3a7092              # double 0.84846302723191713
	.quad	0x3fbc12f6ef15bdc8              # double 0.10966437661203721
	.quad	0x3fec501a7be61ade              # double 0.8847782535457005
	.quad	0x3fe8473845cd6b02              # double 0.75869382508548733
	.quad	0x3fe112b7bb10e872              # double 0.53353487526261589
	.quad	0x3fee6c6993126c20              # double 0.95073393559448859
	.quad	0x3fe2358ed980c392              # double 0.56903784256984324
	.quad	0x3f917be7ec1887a0              # double 0.017074226174493057
	.quad	0x3fee77d4fea19e75              # double 0.95212793095283976
	.quad	0x3fb00c16c36eeed0              # double 0.062684462273803421
	.quad	0x3feb1950042f8383              # double 0.84683991258144464
	.quad	0x3fe809be52726e8c              # double 0.75118938544206192
	.quad	0x3fe097902d299a49              # double 0.51850136586001228
	.quad	0x3fe11d766d6394cd              # double 0.53484650960003821
	.quad	0x3fba9c0cbdfac3b0              # double 0.10394363058254785
	.quad	0x3fe3eaf2eb08aa69              # double 0.62243028550194623
	.quad	0x3fd2b36a81aec2aa              # double 0.29220068611452155
	.quad	0x3fd11bb42bfc3a9a              # double 0.26731590552746243
	.quad	0x3fe273b5b00e74cd              # double 0.57662472139386411
	.quad	0x3fecbf099bd495e8              # double 0.89832001147868557
	.quad	0x3fbb7a44f22b2c18              # double 0.10733443176575042
	.quad	0x3f9467efbc085f80              # double 0.019927736140828767
	.quad	0x3fdf149c411ccb22              # double 0.48563295706405729
	.quad	0x3fb4d1829b79b348              # double 0.081321871717318861
	.quad	0x3fea4345293c637d              # double 0.82071168950925222
	.quad	0x3fee998e33ea8150              # double 0.95624456539011682
	.quad	0x3febcf2f1cd8a47b              # double 0.86904101976428139
	.quad	0x3fa6f3ae8d00a9f0              # double 0.044827894890051456
	.quad	0x3fe44164e2720858              # double 0.63298267581582035
	.quad	0x3fdb79f85f660de2              # double 0.4293194705607829
	.quad	0x3fd511e204a01ece              # double 0.32921648456293162
	.quad	0x3fee495912623b1c              # double 0.94645360556191659
	.quad	0x3fca17db87c1f404              # double 0.2038530743483592
	.quad	0x3fe8d8f803e15154              # double 0.77648545034257177
	.quad	0x3fc57367d7558d00              # double 0.16758440031399147
	.quad	0x3fec1dae9b8de3be              # double 0.87862329847040832
	.quad	0x3fb6bceebe839328              # double 0.088820382606695447
	.quad	0x3fe243b2c71c8562              # double 0.57076395882556263
	.quad	0x3fe3fe4be5df0b46              # double 0.62479205033046337
	.quad	0x3fd4088cfde8d9ce              # double 0.31302189632279187
	.quad	0x3fe93abb95aa0e92              # double 0.78841952544503813
	.quad	0x3fe7c776f713ce5f              # double 0.74309871918962844
	.quad	0x3fe4c5b1ac0f899a              # double 0.64913257222751786
	.quad	0x3fbaf597e8d210d8              # double 0.10530995782943664
	.quad	0x3fc70345c1c1aa94              # double 0.17978736840025944
	.quad	0x3fea78085a4d1e41              # double 0.82715242039643766
	.quad	0x3fe48f6649b6aa1b              # double 0.64250482937979159
	.quad	0x3fec08754727771e              # double 0.87603248498246322
	.quad	0x3fe7b2f96202d354              # double 0.74059743063717542
	.quad	0x3fcd14f5ee6f65cc              # double 0.22720216886845745
	.quad	0x3fa79be0f92630a0              # double 0.046111135877340503
	.quad	0x3fd0eadcdba34d2c              # double 0.26433488320363341
	.quad	0x3fe940b099515e47              # double 0.78914670891658367
	.quad	0x3fc4820d6408a048              # double 0.16021888145883367
	.quad	0x3fe94002f9bdd08e              # double 0.78906391885404203
	.quad	0x3fd624e5e627769a              # double 0.34600207782737302
	.quad	0x3fe35fa235c059ba              # double 0.60542402742685586
	.quad	0x3f8105998fe506c0              # double 0.0083114621198804305
	.quad	0x3fe5e366b2ed4105              # double 0.6840089316047232
	.quad	0x3fc93e50422482d4              # double 0.19721415738697223
	.quad	0x3fa1157b41c7ac20              # double 0.033367015628606334
	.quad	0x3fe5ca8569e3aaf1              # double 0.68097181970128251
	.quad	0x3fc20a78d9880294              # double 0.14094458219189632
	.quad	0x3fc8b16e7fe79574              # double 0.19291478391020755
	.quad	0x3fd118694fe7901c              # double 0.26711495211771008
	.quad	0x3fd6ea1e0b03e2f0              # double 0.35803938937856028
	.quad	0x3fe09410931629fa              # double 0.5180743096146323
	.quad	0x3fe5137f6b5cb55a              # double 0.65863009423416519
	.quad	0x3fd650e0f066bff2              # double 0.3486864421529382
	.quad	0x3fe9be7ebad77be1              # double 0.80450378887678309
	.quad	0x3fe04fd964b2ccd0              # double 0.50974721591628658
	.quad	0x3fc674bb37f50060              # double 0.17543735725667187
	.quad	0x3fdcec4b2168d800              # double 0.45192220938349692
	.quad	0x3fcac80bc776af58              # double 0.20922991980966787
	.quad	0x3fe7514c3476fb38              # double 0.72867403265977426
	.quad	0x3fe325aaf7294444              # double 0.59834812425300088
	.quad	0x3fdb5617e21805c4              # double 0.42712971763111462
	.quad	0x3feee7b88418b9ac              # double 0.96578622627366916
	.quad	0x3fd90cd64d056f58              # double 0.39140851518253816
	.quad	0x3fe44582132c1473              # double 0.63348487610404758
	.quad	0x3fc318ec0ec963c4              # double 0.14919806215291775
	.quad	0x3fe715cf6e1d82ad              # double 0.72141238695993126
	.quad	0x3fe07e81d33c4e3b              # double 0.51544276482531559
	.quad	0x3fe0950e8639f289              # double 0.51819540229878769
	.quad	0x3fe4343f7c52820b              # double 0.63137792855928987
	.quad	0x3fb484af1a3e5a80              # double 0.08014959707939262
	.quad	0x3fdfbd5e91fb3370              # double 0.49593319183332252
	.quad	0x3fe7a966af7d0629              # double 0.73942884707520762
	.quad	0x3fcadbf12f105358              # double 0.20983710096393327
	.quad	0x3fe3abe71994b044              # double 0.61473422046902515
	.quad	0x3fdca8006ac7ca96              # double 0.44775400569702961
	.quad	0x3fedd2e99741711d              # double 0.93199615041843098
	.quad	0x3fdf62c01adfdf7c              # double 0.49040224670851962
	.quad	0x3fab583d1e0eed50              # double 0.053407583159663319
	.quad	0x3fed14a7b57a9a9b              # double 0.90877137608625291
	.quad	0x3fe2f63d9a6d08b2              # double 0.59255867158232989
	.quad	0x3fe84cd6aea9052c              # double 0.75937971223189526
	.quad	0x3fef81abb25f55e5              # double 0.98457894171104654
	.quad	0x3fa79b11a99aa330              # double 0.046104957536334701
	.quad	0x3fdef51d109f24f6              # double 0.48371054290016902
	.quad	0x3fcb94325a590000              # double 0.21546010409838345
	.quad	0x3fd9d5844a07159a              # double 0.40365702847733476
	.quad	0x3fda0597c74e09b4              # double 0.40659136260378692
	.quad	0x3fda4c848ad5bad8              # double 0.4109202724275014
	.quad	0x3fde84b2d3ced82e              # double 0.47684927639363905
	.quad	0x3fedaa1950c22ebb              # double 0.92701402447843095
	.quad	0x3faaa05fc64b0310              # double 0.052004807429972044
	.quad	0x3fbda8e6d8a2dda8              # double 0.11585848607034299
	.quad	0x3fec8363d1e85250              # double 0.89103880879935993
	.quad	0x3fd145a8defd99f2              # double 0.26987668777874696
	.quad	0x3f8d9dda99b2e940              # double 0.014461238685147593
	.quad	0x3fe2c1aeccd789eb              # double 0.58614292152588854
	.quad	0x3feb2833477116a7              # double 0.84865726426570098
	.quad	0x3fc8c526cf482a8c              # double 0.19351658936678395
	.quad	0x3fe4a0ceae7596aa              # double 0.64462980341041498
	.quad	0x3fe40239ebb4fa64              # double 0.62527175938141655
	.quad	0x3fe51a1b3a464fbc              # double 0.65943681127327336
	.quad	0x3fd1d5a16fc141ac              # double 0.2786639777523543
	.quad	0x3fed222a4549c480              # double 0.9104205468448896
	.quad	0x3fe80fa0bbe4c45d              # double 0.75190769861195472
	.quad	0x3fe28dc3bbbdc9d2              # double 0.57980524700388458
	.quad	0x3f95547cee492c40              # double 0.020830108684361415
	.quad	0x3fcbb6d5a43150a0              # double 0.21651716725557879
	.quad	0x3fe4f1fe7b476cda              # double 0.65454029157572369
	.quad	0x3faefca12f274890              # double 0.060521161085163588
	.quad	0x3fc348d26a0eb6f8              # double 0.15065984896266804
	.quad	0x3fc745645bbc0988              # double 0.18180517653679495
	.quad	0x3fd88af6fd811b2e              # double 0.38348173862725587
	.quad	0x3fe54bab1e0c0ee2              # double 0.6654868685586417
	.quad	0x3fea82f27d7d1a76              # double 0.82848476895817558
	.quad	0x3fcd462870f17f98              # double 0.22870355143367926
	.quad	0x3fc027181312c00c              # double 0.12619305545149506
	.quad	0x3feebd152a179448              # double 0.96058138104547996
	.quad	0x3fc4f67798f614c4              # double 0.16377158135234116
	.quad	0x3fcc447a86335f94              # double 0.22083980133788528
	.quad	0x3fda458c54baa4c2              # double 0.41049488329242589
	.quad	0x3febdd82840821c9              # double 0.870789773821394
	.quad	0x3fd7ba60bd189f0a              # double 0.37075060335563192
	.quad	0x3fef455290c05829              # double 0.97721222182986366
	.quad	0x3fe7cb7a8f547990              # double 0.74358871454369257
	.quad	0x3feeaeb66b43ea9b              # double 0.95882721853498098
	.quad	0x3fe9ecc95399ea0b              # double 0.81015459373821963
	.quad	0x3fd48d37e2217944              # double 0.32111928065377904
	.quad	0x3fdc5ef23cb8dd3e              # double 0.4432950585355292
	.quad	0x3fc8a993b6c2a3d0              # double 0.19267507957309116
	.quad	0x3fb6b5eb83a15800              # double 0.088713378559390321
	.quad	0x3fd2f93be4734a5e              # double 0.29646203336338839
	.quad	0x3fe96e685bd6ed74              # double 0.79472749650396545
	.quad	0x3fd78a2b282d5136              # double 0.36780814097916747
	.quad	0x3fee4b35f6153044              # double 0.94668100417175837
	.quad	0x3fb1af480dca1878              # double 0.069080832830964556
	.quad	0x3fe4b13ec73b2585              # double 0.64663638031304116
	.quad	0x3f83054a41732fc0              # double 0.0092874337409724061
	.quad	0x3feb9ce328d580a4              # double 0.86290128684415323
	.quad	0x3fb32b7874b45f40              # double 0.074882057659462653
	.quad	0x3fef9ddb3be48d75              # double 0.98801957795914907
	.quad	0x3fd39ea3cc450ff4              # double 0.30655760715694602
	.quad	0x3fe2f6410c0f1ca7              # double 0.59256031375197871
	.quad	0x3fd3b94e8ca22fae              # double 0.3081852315306105
	.quad	0x3feb5220f1e2a531              # double 0.85377547496060491
	.quad	0x3fe067ea5cbffe70              # double 0.51268499484281271
	.quad	0x3fea25c8758fe96c              # double 0.81711218797071927
	.quad	0x3fe2cee32c7fe8bf              # double 0.58775480929696033
	.quad	0x3fc379ae0bdf50a0              # double 0.15215087489798851
	.quad	0x3f8627ec68f70f00              # double 0.010818335488586239
	.quad	0x3fe7a70ab76d785d              # double 0.73914085221964465
	.quad	0x3fecac171b00c919              # double 0.89600711130177324
	.quad	0x3fd298404a6161e4              # double 0.29054267181120808
	.quad	0x3fe008c8830b2ee4              # double 0.50107217401952342
	.quad	0x3fea8a266040a2f5              # double 0.82936400222123885
	.quad	0x3fe5734c1f986e72              # double 0.67032438441260767
	.quad	0x3fdaab6c8188d8ee              # double 0.41671288156375297
	.quad	0x3fe701556ddc6a89              # double 0.71891280610300712
	.quad	0x3fcb47aa720eea28              # double 0.21312456673861502
	.quad	0x3fe6509b9bfcd346              # double 0.69733982530906569
	.quad	0x3fdd69405681f4e6              # double 0.4595490307618334
	.quad	0x3fef4c9f409850b9              # double 0.97810328117568368
	.quad	0x3fd3eb8c64ff7fa2              # double 0.31125173438158005
	.quad	0x3fe9d6640ca93a45              # double 0.80742075417385506
	.quad	0x3fe128bc3d0b967e              # double 0.53622257159140907
	.quad	0x3fe799b5dfe78958              # double 0.7375134823926528
	.quad	0x3fbb7199b8346828              # double 0.10720215556321533
	.quad	0x3fea7567bd2e5e3f              # double 0.82683169316710081
	.quad	0x3fe3737f48396b5f              # double 0.6078487787848238
	.quad	0x3fb4ea1c58d32d80              # double 0.081697246251840383
	.quad	0x3fe6ba9e3b35824d              # double 0.71028052868138902
	.quad	0x3fee5273c6b5d2e5              # double 0.94756497202487522
	.quad	0x3fef124580d38347              # double 0.9709804073464533
	.quad	0x3fdf1a7ebe0c915e              # double 0.48599213180047751
	.quad	0x3fcd978bb3d05a48              # double 0.23118730812048427
	.quad	0x3fcdb2add96c8b04              # double 0.23201535335928025
	.quad	0x3fee73caaac40795              # double 0.95163472511943559
	.quad	0x3fd4abbed69ef376              # double 0.3229825111300707
	.quad	0x3fdba01cab08819a              # double 0.43164746000732068
	.quad	0x3fe5343034fa2636              # double 0.66262064311121693
	.quad	0x3fd17bfd917e68a4              # double 0.27319277962090838
	.quad	0x3fc191b1cdbc2188              # double 0.13725874467514765
	.quad	0x3fc875d0c06969a0              # double 0.19109544177156312
	.quad	0x3fe55cfcde1b7f08              # double 0.66760104542115162
	.quad	0x3fd4c98f7bc6cc68              # double 0.32480227553896279
	.quad	0x3fd999b5459a79c4              # double 0.40000659749230416
	.quad	0x3fe3fe79fb0593d0              # double 0.62481402423565591
	.quad	0x3fbf609ce810b1b8              # double 0.12256794610647759
	.quad	0x3fdf48c3fdf4c314              # double 0.48881625938797524
	.quad	0x3fd06a4e95d9f0c2              # double 0.25648846277159632
	.quad	0x3fe4a724644c965f              # double 0.64540309514695682
	.quad	0x3fb3644c30ca8968              # double 0.07574917021932992
	.quad	0x3fe264657ecbaaa5              # double 0.57475542797813672
	.quad	0x3fc0dd346321e900              # double 0.1317506298108313
	.quad	0x3fed51caf95bc9e5              # double 0.91623448088494952
	.quad	0x3fd8060fb239322a              # double 0.37536995319968247
	.quad	0x3fa3fb535e2a1dd0              # double 0.039026837582294527
	.quad	0x3fe038d3adcfca99              # double 0.50693687388987307
	.quad	0x3fe26d34ea7bcb14              # double 0.5758308963544061
	.quad	0x3fd4962dc69b142e              # double 0.32166618723960283
	.quad	0x3fe443f7a3c6c05d              # double 0.6332967947728424
	.quad	0x3fe8e0041a58de4b              # double 0.77734570642400891
	.quad	0x3fc502122550e0c8              # double 0.16412569830004586
	.quad	0x3fddfb3b5b84f8a2              # double 0.46845897614901777
	.quad	0x3fc52a3154b39ee4              # double 0.16535011897871421
	.quad	0x3fba444708dfaa40              # double 0.10260433165209637
	.quad	0x3fdb45ab1fe79c5c              # double 0.42612722507187129
	.quad	0x3fc26cb91cec33f8              # double 0.1439429656242337
	.quad	0x3fe8d0403a112c39              # double 0.77542125073649182
	.quad	0x3fcaad3499a0900c              # double 0.20841081143692042
	.quad	0x3fd87b09dc86795a              # double 0.382509675366142
	.quad	0x3fd3863d5be1381e              # double 0.30506834004052219
	.quad	0x3fe2c7a0657335fa              # double 0.5868684750982418
	.quad	0x3fe9cdcdef6c9f58              # double 0.80637261164245455
	.quad	0x3fe332c3fe545fc0              # double 0.59994697259661933
	.quad	0x3feffca33a362a09              # double 0.99958955163430218
	.quad	0x3fdca33efa9749c8              # double 0.44746374580168125
	.quad	0x3fd17546901378dc              # double 0.27278293676307697
	.quad	0x3fadd63a0f165040              # double 0.058275045720762808
	.quad	0x3fe8f818489b1737              # double 0.78028501683068086
	.quad	0x3fefd6b86c7f66c8              # double 0.99496098700475332
	.quad	0x3fd09e349849514c              # double 0.25965609428137237
	.quad	0x3feaf276d9393f23              # double 0.84209768702018939
	.quad	0x3fe32404330f0fdc              # double 0.59814653370312554
	.quad	0x3fddadbe61f1bcb4              # double 0.46372947277900356
	.quad	0x3fc52fdbb0fcf78c              # double 0.16552301542281744
	.quad	0x3fa0181ade35b960              # double 0.031433906197764427
	.quad	0x3fe4a8c2e7345f5d              # double 0.64560074956078106
	.quad	0x3fecc70fbea9cba1              # double 0.89929949988287572
	.quad	0x3f90bab28cd47060              # double 0.016337194295474311
	.quad	0x3feceb7de1879e86              # double 0.90374654816419375
	.quad	0x3fd2828a9a6a09ac              # double 0.28921761588585571
	.quad	0x3fe7dd785f4240fc              # double 0.74578493695483372
	.quad	0x3fd219c9889d3e46              # double 0.28282392827256719
	.quad	0x3fefc078427e93fe              # double 0.99224484431454107
	.quad	0x3fecbc16037b4be8              # double 0.89795971565251609
	.quad	0x3fcfbdef07957c64              # double 0.24798381681736992
	.quad	0x3fe8fa5013aeab50              # double 0.7805557617587997
	.quad	0x3fc56c663ced28e8              # double 0.16737058615610256
	.quad	0x3fefc542cea9d5b0              # double 0.99282970775555235
	.quad	0x3fc020e997b07b18              # double 0.12600440890033648
	.quad	0x3fb8f6d762ce6050              # double 0.097516500113102866
	.quad	0x3fe619a56c9b27e2              # double 0.6906306382381866
	.quad	0x3fed446eb0f596e1              # double 0.91460356294984646
	.quad	0x3fe8cf3c30506be3              # double 0.77529725490910228
	.quad	0x3fd66b04c2b7a40e              # double 0.35028189673772736
	.quad	0x3fd7fe36be90d91c              # double 0.37489098176901492
	.quad	0x3fc1392eaf714014              # double 0.13455756727717072
	.quad	0x3fe6389180c8879f              # double 0.69440531876556466
	.quad	0x3fe02420146b3a25              # double 0.50440982807214552
	.quad	0x3fafaabe5d87da40              # double 0.061849545399969674
	.quad	0x3fe973dbb3f1ec0e              # double 0.79539284844884306
	.quad	0x3fe813355b36f645              # double 0.75234477820749446
	.quad	0x3fe62ad57ccae519              # double 0.69272875188395056
	.quad	0x3fdb20adf03bd794              # double 0.42386959514930678
	.quad	0x3feef9b063ff5540              # double 0.96797961741200566
	.quad	0x3fdcd251b316c672              # double 0.45033686150700369
	.quad	0x3fcbfbd8bf93a660              # double 0.21862325052579745
	.quad	0x3fced8a387e15a84              # double 0.24098629126338633
	.quad	0x3fe313a575914e94              # double 0.59614823305533315
	.quad	0x3fe2635f50d11a74              # double 0.57463041100056822
	.quad	0x3fe5fb31f9a27186              # double 0.68691347843882578
	.quad	0x3fee23c96cfbb3ff              # double 0.9418685082033561
	.quad	0x3fe75ec9960b7156              # double 0.73032073312382795
	.quad	0x3fe9c6d8e1f82a4e              # double 0.80552333960197031
	.quad	0x3fcc88c905f1e1c4              # double 0.22292435446048675
	.quad	0x3fe8a35858878501              # double 0.76993958750622948
	.quad	0x3fe87a7fea6b82ab              # double 0.76495357308529799
	.quad	0x3fc8f0cc1c0e42dc              # double 0.19484855050952532
	.quad	0x3fc5b9b2914fb4e8              # double 0.16972953887253728
	.quad	0x3fe804ce949f9248              # double 0.75058678653710675
	.quad	0x3fe6319bb32e3f3e              # double 0.6935556888219947
	.quad	0x3fcd5cb8bd310928              # double 0.22939213979595618
	.quad	0x3fde06ac2dff91e4              # double 0.46915726177237915
	.quad	0x3fcf581957216aa8              # double 0.24487606768055525
	.quad	0x3fb586c20b42bd78              # double 0.084087493657298285
	.quad	0x3fe0726ecb67d3c1              # double 0.51396884658480968
	.quad	0x3fdfd0ff2d823ade              # double 0.49713115162096055
	.quad	0x3fd05f6e78cf5e1a              # double 0.255824678400559
	.quad	0x3fcdfafca53beef4              # double 0.23422201221534744
	.quad	0x3fd5c3a533117834              # double 0.34006624209530689
	.quad	0x3fb423700c54fcc0              # double 0.078665736208665571
	.quad	0x3fe67e49d4403e27              # double 0.70291606383574823
	.quad	0x3fd72ddb31a47b1c              # double 0.36217384193325741
	.quad	0x3fcab012d25eaff8              # double 0.20849833747831759
	.quad	0x3fe58fbf197a02a2              # double 0.67379717803858719
	.quad	0x3fe7710e862681eb              # double 0.73255087090734372
	.quad	0x3fedabb543665b13              # double 0.92721045650509593
	.quad	0x3fda64cbac12b5b6              # double 0.41240207485210634
	.quad	0x3fc8a6a61ff978d8              # double 0.19258572160010234
	.quad	0x3fd2350af28d3a1e              # double 0.28448747336088498
	.quad	0x3fdbfc1fdf7e067e              # double 0.43726345849436388
	.quad	0x3feb1ea645cb8268              # double 0.84749139434650278
	.quad	0x3fca67463a8f3a24              # double 0.20627668246602682
	.quad	0x3f94443fa045cc20              # double 0.019791597516313542
	.quad	0x3f77b091e60cee80              # double 0.0057836245694563582
	.quad	0x3fe1a7bb68f57b7b              # double 0.55172510623729865
	.quad	0x3fd0742e7e03ee48              # double 0.25709116274058319
	.quad	0x3fe276cade6b084d              # double 0.57700103226694355
	.quad	0x3fee026333c6d893              # double 0.93779144394535974
	.quad	0x3fa96a8bf7acbad0              # double 0.049641012176257271
	.quad	0x3febe5fb3d015a31              # double 0.87182390132040244
	.quad	0x3faf9a944ca37dc0              # double 0.061726221423437533
	.quad	0x3fe06ca833d7154a              # double 0.51326379895241669
	.quad	0x3fc0f4c5836cb980              # double 0.13246983449193905
	.quad	0x3fc26d629b88bcc0              # double 0.14396317095222422
	.quad	0x3fef322668b2b781              # double 0.97487183045244318
	.quad	0x3fccc5e305ea5be8              # double 0.22478902615395602
	.quad	0x3fe36bd1307aa257              # double 0.60691127270281242
	.quad	0x3fe289df0d2bffd0              # double 0.57932999203330304
	.quad	0x3fe3098a363e6eea              # double 0.59491453737743183
	.quad	0x3fe5c9e8d9bb4645              # double 0.68089716458980176
	.quad	0x3fd46c9b87db826e              # double 0.31912887828187919
	.quad	0x3fddc6dd73bf6420              # double 0.46526275924185434
	.quad	0x3fe933935497c282              # double 0.78754583856614624
	.quad	0x3fc56ab43e2d8448              # double 0.16731884990716339
	.quad	0x3fb7c1e20883e388              # double 0.092802168921379047
	.quad	0x3fea7aa84c64513e              # double 0.82747282905851427
	.quad	0x3feb8a1a57b3d932              # double 0.86060826424981074
	.quad	0x3feb23ddd108ac27              # double 0.8481282313053996
	.quad	0x3fe472b74b3ba309              # double 0.6390034169572526
	.quad	0x3fc50026b911dcb8              # double 0.1640671161328322
	.quad	0x3fa36f8893af9e30              # double 0.037960308101727569
	.quad	0x3fe25bc45ba24df9              # double 0.57370202920213764
	.quad	0x3fe34328205093d4              # double 0.60194784461475104
	.quad	0x3fd6f9d6e2bdb1f6              # double 0.35899898665118657
	.quad	0x3fd5e533ab4b41e8              # double 0.34211436965872943
	.quad	0x3fededdcbb52629f              # double 0.9352859171513791
	.quad	0x3fe4fc39a3a10781              # double 0.65578920325081935
	.quad	0x3fcbc44706e63680              # double 0.21692741238478064
	.quad	0x3fe0d30f013e07bc              # double 0.52576399080884739
	.quad	0x3fd5ae0e633d35c2              # double 0.33874854747122296
	.quad	0x3fe3a851f539f815              # double 0.61429689307965651
	.quad	0x3fecc4a86b48f3b1              # double 0.89900608972640417
	.quad	0x3fdde02558f1df4a              # double 0.46680577932373934
	.quad	0x3fef46adfcdeb4c1              # double 0.97737788571034667
	.quad	0x3fef1533fab24729              # double 0.97133826221599861
	.quad	0x3fe0ff7c1ba450fc              # double 0.53118710898209498
	.quad	0x3fe4a235d2470a8a              # double 0.64480105466675863
	.quad	0x3fee8e97b817250f              # double 0.95490632968099642
	.quad	0x3fd20d008a5974e8              # double 0.28204358587920675
	.quad	0x3fe0bd145712718a              # double 0.52308098798998626
	.quad	0x3fe529027d547a41              # double 0.66125606993211516
	.quad	0x3fd8494a2e047810              # double 0.37947325223820005
	.quad	0x3fa105806eec8360              # double 0.03324509958316102
	.quad	0x3fdc998356be5bf0              # double 0.44686969252637621
	.quad	0x3f98ad238b6676a0              # double 0.024097972281757252
	.quad	0x3fee24c200cd8c17              # double 0.94198703915424431
	.quad	0x3feaa21821e016a7              # double 0.83228689781454512
	.quad	0x3fef2c2036e763da              # double 0.97413645480548472
	.quad	0x3fe9befd9ce94431              # double 0.80456429144590491
	.quad	0x3fae35c27374e360              # double 0.059003903001616065
	.quad	0x3fe5409afdcb1cfe              # double 0.66413640564942944
	.quad	0x3fd6b3984f06d814              # double 0.35471160619215536
	.quad	0x3f6cabb00391ac00              # double 0.0034998357555671156
	.quad	0x3fc976b808d5f860              # double 0.1989355128425272
	.quad	0x3fc6a9b256d739e8              # double 0.17705373039502992
	.quad	0x3fe329f39987a420              # double 0.59887104021357018
	.quad	0x3fd1851f2a254220              # double 0.27375010600829519
	.quad	0x3fe18587125a06a1              # double 0.5475497587614947
	.quad	0x3fe742939060ce80              # double 0.72687700461251836
	.quad	0x3fe761bf9d78eec6              # double 0.73068218952490649
	.quad	0x3fd184bf2207ded2              # double 0.27372721026720825
	.quad	0x3fed2d437d9db7c0              # double 0.9117753461302911
	.quad	0x3fc4ce4d2c4af748              # double 0.16254582083450431
	.quad	0x3fe40588c3c781b7              # double 0.62567556608342201
	.quad	0x3fcafdd648abf9c0              # double 0.21087149189402332
	.quad	0x3fa4fd7736bb1d30              # double 0.040996289664287366
	.quad	0x3fd47e6ca7a6d7b2              # double 0.32021633503188263
	.quad	0x3fef69ab3fcbf959              # double 0.98164904079730341
	.quad	0x3fe3d2531c96cc0c              # double 0.61942439636038804
	.quad	0x3fee71913b506a63              # double 0.95136319718160356
	.quad	0x3fd3e2aa3f9ae134              # double 0.31070953570771853
	.quad	0x3fe8b4bcb7c0264e              # double 0.77206264389787704
	.quad	0x3f99e5f3442a9580              # double 0.025291253123801649
	.quad	0x3fe9f67d0bad5dd0              # double 0.81133892327027901
	.quad	0x3fc45d5cd0abec88              # double 0.15909919919053928
	.quad	0x3fc1e86dfd4774f0              # double 0.13990568987984586
	.quad	0x3fd0cfcb3c911232              # double 0.26268273272242759
	.quad	0x3fc75121ff55ba14              # double 0.1821634766342447
	.quad	0x3fa314ee4d069a80              # double 0.037269064810335983
	.quad	0x3fdb2d223072b8f0              # double 0.42462973338378074
	.quad	0x3fda6e52fd216448              # double 0.41298365325707609
	.quad	0x3fcc7200a0e4dc68              # double 0.22222907882835163
	.quad	0x3fe400e49b5be57e              # double 0.62510900825070315
	.quad	0x3fddac3a47599bfc              # double 0.46363694160248747
	.quad	0x3fc5eccabe515fc8              # double 0.17128881733765255
	.quad	0x3fa35d06cc19b3e0              # double 0.037819111265754435
	.quad	0x3fcf1c7834b913ac              # double 0.24305632185328585
	.quad	0x3fb45a5cef0e6748              # double 0.079503830302568024
	.quad	0x3fe8ab4b750eeb04              # double 0.77091000426239064
	.quad	0x3fe046d4f9143314              # double 0.5086464752981521
	.quad	0x3fe9993c47c86bd5              # double 0.79995550174805408
	.quad	0x3fd09d729ed7dfb8              # double 0.25960984718357905
	.quad	0x3fdface8c00d75ce              # double 0.49492853884825372
	.quad	0x3fccf495c13265f8              # double 0.22621414121094552
	.quad	0x3fdd460a005d1626              # double 0.45739984546193779
	.quad	0x3fd0d546ab8d1ec0              # double 0.26301733735133936
	.quad	0x3fee4dfde35d81c2              # double 0.94702047736432626
	.quad	0x3fc2a194aff04ac4              # double 0.14555605498079249
	.quad	0x3fcfcbb28c4436fc              # double 0.24840385292957723
	.quad	0x3fe7a25c3853e726              # double 0.73856936456215716
	.quad	0x3feea31366051638              # double 0.95740671087032236
	.quad	0x3fe15ba823527f05              # double 0.54243857287289698
	.quad	0x3febe13b658876bc              # double 0.87124414282489892
	.quad	0x3fd1f4202e4a8c92              # double 0.28052525063157774
	.quad	0x3fb109962ee17ba8              # double 0.06655253071356404
	.quad	0x3fd53266caf500ec              # double 0.33120126552604634
	.quad	0x3febe2a23ee3d7b5              # double 0.8714152553864013
	.quad	0x3fd589a04c0e1a8e              # double 0.33652503421073099
	.quad	0x3fcd4fe6cc5d49b8              # double 0.22900090197306411
	.quad	0x3fc3e0b52cd0117c              # double 0.15529503524897936
	.quad	0x3fb6338dc246c4a8              # double 0.086724147730608991
	.quad	0x3fcd09bbab1aa1cc              # double 0.22685953001679449
	.quad	0x3fd46668181154be              # double 0.31875040388451825
	.quad	0x3fd8c58f906e752a              # double 0.38705815415035494
	.quad	0x3fd6617847b1fd2a              # double 0.34969908715716491
	.quad	0x3fe245382c173b80              # double 0.57094963656878406
	.quad	0x3fe1bd621326dff2              # double 0.55436805477711304
	.quad	0x3fefbe92b1e3f75d              # double 0.99201330894696193
	.quad	0x3fc89dd7e2d3a6ec              # double 0.19231699538732216
	.quad	0x3fc5fa2c1ae6c2a8              # double 0.17169715226693438
	.quad	0x3fe76f8ecfd6cf06              # double 0.73236790269444962
	.quad	0x3fcdf0bbd2d62344              # double 0.23390910906553064
	.quad	0x3fe8bd70aae4830f              # double 0.77312501313653736
	.quad	0x3fd61b272cb7f30a              # double 0.34540728919073216
	.quad	0x3fcadd6d6b5125f8              # double 0.2098824285515517
	.quad	0x3fe4780e29f6fd5e              # double 0.63965519138575266
	.quad	0x3fc688c0b7bd2efc              # double 0.17604836436873217
	.quad	0x3fed378b7076704d              # double 0.91303035703050173
	.quad	0x3fe0e344c235e6c2              # double 0.52774274760960105
	.quad	0x3fe76304761932d3              # double 0.73083708826160387
	.quad	0x3fd257de90c0c57c              # double 0.28661312233005964
	.quad	0x3fd1c48b2786c8a2              # double 0.27762106761941585
	.quad	0x3fef7d697b9593e9              # double 0.98405908715778622
	.quad	0x3fe78a8469730a10              # double 0.7356588420446446
	.quad	0x3fd8c9bf8dda1f54              # double 0.387313736464866
	.quad	0x3fe1ee637e69e0b4              # double 0.56035017671731291
	.quad	0x3feaf7d8ad0f7965              # double 0.8427546863638723
	.quad	0x3fe18b7e8eeeb0cb              # double 0.54827812115174746
	.quad	0x3fc384f59ca48340              # double 0.15249509953084761
	.quad	0x3fc62043a32d0368              # double 0.17285962550706846
	.quad	0x3fbb79ea0910c878              # double 0.10732901307417986
	.quad	0x3fc6206cd5226204              # double 0.17286453635166776
	.quad	0x3fe4f08eb6a8530d              # double 0.65436492610260333
	.quad	0x3febd35887487cf0              # double 0.86954904959193691
	.quad	0x3fe4c07dd12aec1e              # double 0.64849749424991265
	.quad	0x3feaddac1868ac51              # double 0.83955960051879164
	.quad	0x3fc0b9397dd42670              # double 0.13065260547618918
	.quad	0x3fccfb76783540a0              # double 0.2264240347817621
	.quad	0x3fe4e71d7aec2e30              # double 0.65321229942623482
	.quad	0x3f81e9a688a2ea00              # double 0.0087464342544665285
	.quad	0x3fe278cad75f3bd8              # double 0.57724515976758095
	.quad	0x3fe7eaabf0f569b2              # double 0.74739644109950221
	.quad	0x3fe668ced53be111              # double 0.7002939381336849
	.quad	0x3fe56f0ab1572833              # double 0.66980490338142429
	.quad	0x3fa9b19e017b1d00              # double 0.050183236771369266
	.quad	0x3fd00a9859c95ade              # double 0.25064667480675762
	.quad	0x3fa8d9017feceb20              # double 0.04853062330808755
	.quad	0x3fe0de8fda60e174              # double 0.52716820385016527
	.quad	0x3fcf91806df3a298              # double 0.24662785881743754
	.quad	0x3fdc333cde5d563e              # double 0.44062730517666526
	.quad	0x3fe812a046b734c1              # double 0.75227369128847255
	.quad	0x3fdcb48795a3e712              # double 0.44851865399651658
	.quad	0x3fc09e3a6f9763b4              # double 0.12982874344632267
	.quad	0x3faeea7015dc13d0              # double 0.060382368725221292
	.quad	0x3fe3d584be7f1142              # double 0.61981427389449828
	.quad	0x3fdedeacbe993b08              # double 0.48234099019184429
	.quad	0x3fe2696feffb2ea2              # double 0.57537075873684196
	.quad	0x3feef86acfd875fe              # double 0.96782436938127581
	.quad	0x3fe16801d341f3bc              # double 0.54394618283514928
	.quad	0x3fd314530428b0d4              # double 0.29811549574038776
	.quad	0x3fe8f57f959c4d14              # double 0.77996806355295911
	.quad	0x3fe96ca1079325c8              # double 0.79451037864162632
	.quad	0x3fb9c2ddbcf68658              # double 0.10062967170099435
	.quad	0x3fecdaf07021ca59              # double 0.90172597790508313
	.quad	0x3fd4e8d444f2c592              # double 0.32671076520190312
	.quad	0x3fd751f4c50e6ef2              # double 0.36437720531260631
	.quad	0x3fc03020951e46b8              # double 0.1264687278858696
	.quad	0x3fe6131b49ebf5e2              # double 0.68983234823070583
	.quad	0x3fe8c77b88fb238e              # double 0.77435089830497517
	.quad	0x3fbbcb83e3a89840              # double 0.1085741453940452
	.quad	0x3feef20ecc891d3c              # double 0.96704807232246237
	.quad	0x3fa17ff007355350              # double 0.034179211501998652
	.quad	0x3fe4722a80faf0d1              # double 0.63893628303005745
	.quad	0x3fde29caaf1f1314              # double 0.47130076505372753
	.quad	0x3fec20cee9235396              # double 0.87900491270794379
	.quad	0x3fea26b533544447              # double 0.81722507500865837
	.quad	0x3fe3c62bdef7a438              # double 0.61794084118185477
	.quad	0x3fccf4ca0df7a208              # double 0.22622037584302768
	.quad	0x3fea2531d00949db              # double 0.81704035408102571
	.quad	0x3fa6af7afce9dba0              # double 0.044307559369307414
	.quad	0x3f94353605d8c7a0              # double 0.019734233958110914
	.quad	0x3fe63ee95a0ac8fb              # double 0.69517963014939654
	.quad	0x3f930d2f25fd4100              # double 0.018604981130295961
	.quad	0x3fd21d9ab57f8838              # double 0.28305690502577674
	.quad	0x3fc61a87aa0cbb54              # double 0.17268462947091712
	.quad	0x3fcafcc59e044c8c              # double 0.21083898749984475
	.quad	0x3fdedbcaa5bd6146              # double 0.48216501412891366
	.quad	0x3fadd2002fcbb130              # double 0.058242803415711086
	.quad	0x3fc8683f0d8e3fb4              # double 0.19068134462258757
	.quad	0x3fabb455f9bedfa0              # double 0.054110228287242323
	.quad	0x3fe35dae700e6d92              # double 0.60518571744926164
	.quad	0x3fedcce6dd5f6d83              # double 0.93126242863529318
	.quad	0x3fe17226ad647eb6              # double 0.54518445840581964
	.quad	0x3fe6c26df4df299a              # double 0.71123407198438149
	.quad	0x3fe1da99286668b8              # double 0.55793435946113501
	.quad	0x3fcfe87231c4f3e0              # double 0.24928119115966663
	.quad	0x3fe687e4bc1aa0eb              # double 0.70408856143060683
	.quad	0x3fe31a5bac94cda3              # double 0.59696754176404843
	.quad	0x3fe3c2d6a90d90b9              # double 0.6175339986625864
	.quad	0x3fec1df827adae4b              # double 0.87865836858458957
	.quad	0x3f7ef356b2011e80              # double 0.0075562845741569129
	.quad	0x3fdb5e7df43364ec              # double 0.42764233443956701
	.quad	0x3feddfbd14678252              # double 0.93356183991643094
	.quad	0x3feb7cd7d54aa9fb              # double 0.85898963602568246
	.quad	0x3fea82b735ce5cfc              # double 0.82845650204663412
	.quad	0x3fef60dfdd19bfad              # double 0.98057549651820397
	.quad	0x3fdb8eaab221646e              # double 0.43058268924284604
	.quad	0x3f8be6d2ca035140              # double 0.013623854436823124
	.quad	0x3fde1bb86f811a6e              # double 0.47044192208378532
	.quad	0x3fdb4b989e852240              # double 0.42648902397607813
	.quad	0x3fe12b07c3d8df1c              # double 0.53650272609135952
	.quad	0x3fec6c5fe2599a20              # double 0.88822931488977374
	.quad	0x3fe5e051b18e1ef3              # double 0.68363270453207148
	.quad	0x3fc1a1e2e1c81020              # double 0.13775287651526558
	.quad	0x3fc0a2cdca47e1e8              # double 0.12996837975494135
	.quad	0x3fece91d9c6f9e45              # double 0.90345650247486076
	.quad	0x3fe06fad00c7cb8d              # double 0.51363229896956997
	.quad	0x3fd1ed63b4f2f29e              # double 0.28011410399248315
	.quad	0x3fb4c7ce59599870              # double 0.08117379838367511
	.quad	0x3fc385637f2ffc58              # double 0.15250819883655953
	.quad	0x3fe4006896e91ca0              # double 0.62504987215733721
	.quad	0x3fa5b75e7f85c400              # double 0.042414620463098629
	.quad	0x3fb92d2663e0a0e0              # double 0.098345183738846042
	.quad	0x3fe17049a7674845              # double 0.54495699592576641
	.quad	0x3fdc776c72724f4a              # double 0.44478903938692282
	.quad	0x3fefb2809da7df46              # double 0.99053984443796916
	.quad	0x3fe083c094972dc3              # double 0.51608304044332731
	.quad	0x3fea016fc889f056              # double 0.81267537276972734
	.quad	0x3fe86d3d7a641506              # double 0.76333497910005188
	.quad	0x3fd16e34ca2bca2c              # double 0.27235145324007948
	.quad	0x3fc7f53fe2288bc0              # double 0.18717192213907019
	.quad	0x3fe72013a71c5984              # double 0.72266562117401678
	.quad	0x3fe84df8430fce3d              # double 0.75951779458996038
	.quad	0x3febaf0c3f8158fb              # double 0.86511814502117035
	.quad	0x3feee4c797c82fb3              # double 0.96542720456044717
	.quad	0x3fdb098474ccf658              # double 0.42245589643775849
	.quad	0x3fd64e4f7c967fc4              # double 0.34852969328676076
	.quad	0x3fdb643282ac0282              # double 0.42799055825165777
	.quad	0x3fc2626baff129f8              # double 0.14362855997963186
	.quad	0x3fe384d56d8fb531              # double 0.60996505163863024
	.quad	0x3fd6b8bd7cb818da              # double 0.35502564601519071
	.quad	0x3fef78c71408c850              # double 0.98349336541128629
	.quad	0x3fca86498af9f64c              # double 0.20722312246282326
	.quad	0x3fd416e73c077fa4              # double 0.31389790403590667
	.quad	0x3febb0d3abb75acf              # double 0.86533530748678256
	.quad	0x3fe48dadd24a02bb              # double 0.64229479858484895
	.quad	0x3fec1a027b2f11b8              # double 0.87817501124714337
	.quad	0x3fe90dbf8e556de8              # double 0.78292825507690811
	.quad	0x3fba0a674f3bc640              # double 0.10172124561702223
	.quad	0x3fdf33c6da136104              # double 0.48753520294623365
	.quad	0x3fed9e1a8e5d54f0              # double 0.9255497723158026
	.quad	0x3fe650721e698857              # double 0.69732004108324019
	.quad	0x3fed87f60e1a272c              # double 0.92284682039573828
	.quad	0x3fc1ab52c0d9aea4              # double 0.13804087082404692
	.quad	0x3fd2d70b7bcbb2e4              # double 0.29437529649184868
	.quad	0x3fdc63a70d8bf970              # double 0.44358230898787721
	.quad	0x3fc16804441c7458              # double 0.13598683667888412
	.quad	0x3fee9ba71e340dc8              # double 0.95650058650101588
	.quad	0x3fad45f3ef14af20              # double 0.057174323019664408
	.quad	0x3fea1cb642870412              # double 0.81600487702974278
	.quad	0x3fe974671820a698              # double 0.79545931541834403
	.quad	0x3f8ae97939747240              # double 0.013140627923854287
	.quad	0x3fe8a5acde84db5d              # double 0.77022403202759515
	.quad	0x3fe3694ea5bd495d              # double 0.60660488482453057
	.quad	0x3fb03675ecc5bc10              # double 0.063331003480684211
	.quad	0x3fb4c25ea214d680              # double 0.081090845652250109
	.quad	0x3fd485d329062b6e              # double 0.32066802030811103
	.quad	0x3feff4384e79a76a              # double 0.99856200530233008
	.quad	0x3feab322338ade3e              # double 0.83436689440618017
	.quad	0x3fe285ec1fca9126              # double 0.57884794434770437
	.quad	0x3fd15fe7dd84bcb8              # double 0.27147862084070651
	.quad	0x3fe317e3e9c0efea              # double 0.59666629462253451
	.quad	0x3fe8e2ca28592347              # double 0.77768428688532587
	.quad	0x3fd99f94a24132a0              # double 0.40036502690490217
	.quad	0x3fc5bbfc47c531bc              # double 0.16979936127098749
	.quad	0x3fd0598820c593fe              # double 0.25546458435411512
	.quad	0x3fe67cb2b5f26ca5              # double 0.70272193466680177
	.quad	0x3febced2a47d5f78              # double 0.86899692656423522
	.quad	0x3fab85d3c1dee8b0              # double 0.053755395332204414
	.quad	0x3feb03c438a80d1e              # double 0.84420977655136986
	.quad	0x3fc2126a0c25538c              # double 0.14118695824677407
	.quad	0x3feff44e529b00d4              # double 0.99857250341303904
	.quad	0x3fa22ab0140ed570              # double 0.035481932114104775
	.quad	0x3fe9f58c9bbc09f1              # double 0.81122427384280915
	.quad	0x3fe337baf49f05aa              # double 0.60055301454138044
	.quad	0x3fe44594822ad2ca              # double 0.63349366591736467
	.quad	0x3fe0f0bdfed1f293              # double 0.52938747186233781
	.quad	0x3fe85782df118fc0              # double 0.76068252151571158
	.quad	0x3fe20175891e5845              # double 0.56267811566318271
	.quad	0x3fed8edb5760f43d              # double 0.92368857446820807
	.quad	0x3fdd70f78d47f2bc              # double 0.46001995846726706
	.quad	0x3febee1149ac3c1b              # double 0.87281097783295836
	.quad	0x3fd07c3f76b01256              # double 0.25758349028209204
	.quad	0x3fd02e98b953c0e4              # double 0.25284402941089312
	.quad	0x3fe4014baac80dbc              # double 0.62515815120462248
	.quad	0x3fe482b0d182e5e8              # double 0.64095345421008876
	.quad	0x3fe383e9f3fc4e9a              # double 0.6098527684539079
	.quad	0x3fd79f9db227c6c2              # double 0.36911718748079292
	.quad	0x3fe96af919364adc              # double 0.79430823253855065
	.quad	0x3fc877941314c8a8              # double 0.19114924365709851
	.quad	0x3fd50ed2b3fc8e34              # double 0.32902972771464367
	.quad	0x3fef4c2fe73112d4              # double 0.97805018572452206
	.quad	0x3fc7f7a9f6c21f3c              # double 0.18724560307259164
	.quad	0x3fd5eb5055a16e2e              # double 0.3424874149547773
	.quad	0x3fe81d005715daba              # double 0.75354020127163968
	.quad	0x3fed1d89d3be30dc              # double 0.90985576015512092
	.quad	0x3fef0cc1a53af9f5              # double 0.97030718108709257
	.quad	0x3faa5a43dde77d00              # double 0.051469918096467282
	.quad	0x3fbaeb7acc59e6b0              # double 0.105155634775566
	.quad	0x3febe6c431faeed2              # double 0.87191972505339721
	.quad	0x3fd5c459b54931b0              # double 0.3401092787142046
	.quad	0x3fe41aed12720914              # double 0.62828687288882401
	.quad	0x3fb0dd624f247050              # double 0.06587805206476216
	.quad	0x3fcc4fdd47137490              # double 0.22118726702220615
	.quad	0x3fed9675e343c6a5              # double 0.92461676013609362
	.quad	0x3f6baef559713300              # double 0.0033793251018664483
	.quad	0x3fe5d75742a490e5              # double 0.68253672615221872
	.quad	0x3faf8983d0ce60a0              # double 0.061596030463250573
	.quad	0x3fe769aafc8e2592              # double 0.73164891555022593
	.quad	0x3fa3d018f41fac10              # double 0.038697032737978643
	.quad	0x3fb21d9d28b9c808              # double 0.070764372294235156
	.quad	0x3fd71243eb706878              # double 0.36048982612704306
	.quad	0x3fe3af9c6ae745b0              # double 0.61518689040729235
	.quad	0x3fdecc3553634f8e              # double 0.48121388572075652
	.quad	0x3fd984258732702a              # double 0.39869058802446722
	.quad	0x3fedb423e308a5ea              # double 0.92823976843390921
	.quad	0x3fd959b4c9764ae4              # double 0.39610023187667154
	.quad	0x3fea41d32792f186              # double 0.820535256665196
	.quad	0x3fd74b751de87896              # double 0.36398055954658426
	.quad	0x3fd45c978f12d1a8              # double 0.31815136882803552
	.quad	0x3fe5d77e7a79d1cf              # double 0.68255542679849579
	.quad	0x3fb14c6134a4cbd0              # double 0.067571711876367901
	.quad	0x3feca1dfd255d98e              # double 0.89476004677890031
	.quad	0x3fed848d7d225479              # double 0.92243074836973371
	.quad	0x3fe90ae0ddc96ac2              # double 0.7825779277585172
	.quad	0x3fecc6a38a49d224              # double 0.89924790391393516
	.quad	0x3fcdbed34eedbd88              # double 0.23238602975787281
	.quad	0x3fd0d61b571cffb2              # double 0.26306804186969679
	.quad	0x3fa461160d5c6cc0              # double 0.039803208476052898
	.quad	0x3fef874e937a2b98              # double 0.98526696018358261
	.quad	0x3fe0e81277f69d11              # double 0.52832911901797008
	.quad	0x3fe399b5c7ef8ed5              # double 0.61251343774753286
	.quad	0x3fdbfb62c2d46506              # double 0.43721837068876857
	.quad	0x3fb6393d47ea4368              # double 0.086810903603930734
	.quad	0x3fe48ac5254130a8              # double 0.64193970943735668
	.quad	0x3fea40b3a810cf7b              # double 0.8203981668980157
	.quad	0x3fe44101c380e521              # double 0.63293541130329711
	.quad	0x3fe615e3dec446c8              # double 0.69017213353273466
	.quad	0x3fe7498e1bcec3d6              # double 0.72772889548479713
	.quad	0x3fecfdcb9131425c              # double 0.90598085744756984
	.quad	0x3fde8560d69833ec              # double 0.47689076382158535
	.quad	0x3fdc78e591e3313c              # double 0.44487895247290843
	.quad	0x3fe8e5f39a3283d4              # double 0.778070260206841
	.quad	0x3feb64de6aa2b8af              # double 0.85606308772346107
	.quad	0x3fef45ef20093515              # double 0.97728687531494762
	.quad	0x3fd2a9d5376ea5d8              # double 0.29161577618887469
	.quad	0x3feeff589140fd01              # double 0.9686701619138206
	.quad	0x3fed89eb6f021b13              # double 0.92308589631361071
	.quad	0x3fefdbfa0750146f              # double 0.99560262134822419
	.quad	0x3fec32408bcfed3c              # double 0.88113429362366657
	.quad	0x3fe9ae3716ed43c2              # double 0.8025165031232222
	.quad	0x3fdda8a555cb1d4e              # double 0.46341832521689674
	.quad	0x3fed7ae3e26502ab              # double 0.92125124185266338
	.quad	0x3f866cc843dd4e00              # double 0.010949673243579205
	.quad	0x3fdbdd474c08a3d2              # double 0.43538076806231374
	.quad	0x3fb2bb76159bbfb0              # double 0.073172931933867202
	.quad	0x3fbb401f1c898fb8              # double 0.10644716688835743
	.quad	0x3fdabb78ff27e74e              # double 0.41769242208066693
	.quad	0x3fe55dab2c7e9aa1              # double 0.66768416109410478
	.quad	0x3fc0bceb4ce231c4              # double 0.13076535467224748
	.quad	0x3fd6f37df2d5c786              # double 0.35861157144892564
	.quad	0x3fedabd78ef86876              # double 0.92722680972953131
	.quad	0x3fc11a3f43c6f738              # double 0.13361349877771445
	.quad	0x3fd7945c26b2192c              # double 0.36843017367245312
	.quad	0x3fe0d85710fb0144              # double 0.52640870396138739
	.quad	0x3fd49b35ab47c2a0              # double 0.32197324492066492
	.quad	0x3fd25317429865d6              # double 0.28632146361777921
	.quad	0x3fd2fdbb9e3fc836              # double 0.29673662618654661
	.quad	0x3fed18bd71925e8b              # double 0.90927002126677914
	.quad	0x3fdefa581b38515e              # double 0.48402979524805356
	.quad	0x3fe02ba762d7ef05              # double 0.50532883935326878
	.quad	0x3fcf541e48075ec4              # double 0.24475458638220549
	.quad	0x3fefb0bb8ddc7c1c              # double 0.9903238077857881
	.quad	0x3fe56d8436373c68              # double 0.66961870755211539
	.quad	0x3fd4fe44b36dd2ac              # double 0.32801930925715328
	.quad	0x3f96e791e63f1400              # double 0.022367744138836798
	.quad	0x3fc88ecb9ff8f804              # double 0.19185777007254512
	.quad	0x3fe4b3add5b69c69              # double 0.64693347683795566
	.quad	0x3fe298b32431cad9              # double 0.58114010876883093
	.quad	0x3fc98fe9b7f3c7f0              # double 0.19970437509579098
	.quad	0x3fe943b8bdc606a7              # double 0.78951680245537126
	.quad	0x3fec14b2edd0022d              # double 0.87752672622452155
	.quad	0x3fd4ae29f509fe5c              # double 0.32313012055963042
	.quad	0x3fcbdd62483af0b0              # double 0.21769360091082524
	.quad	0x3fe093fc11ff9121              # double 0.51806453242582873
	.quad	0x3fc5ab5f4d3d1248              # double 0.1692923667088897
	.quad	0x3fde367377b04f94              # double 0.4720734280428982
	.quad	0x3fee542f35540db1              # double 0.94777641692819803
	.quad	0x3fd85e4a7c96d76e              # double 0.38075506369511103
	.quad	0x3fcd7c35da76e9a8              # double 0.2303530995103078
	.quad	0x3feee5be7194f225              # double 0.96554491218518434
	.quad	0x3fe3090196b3abb7              # double 0.59484939035370743
	.quad	0x3fe20bdd6259d461              # double 0.56394833764228391
	.quad	0x3fe4105e7b6c10e9              # double 0.62699817758450849
	.quad	0x3fe346c687edad28              # double 0.60238958881874272
	.quad	0x3fe52b06711540a7              # double 0.66150209509398372
	.quad	0x3fedcaf48bf7d22a              # double 0.93102481210241206
	.quad	0x3fef3f1fb6e508c2              # double 0.97645555230726466
	.quad	0x3fe0033f5d6e1bed              # double 0.50039642570561471
	.quad	0x3fe4064d4d289c98              # double 0.6257692820553471
	.quad	0x3fd80c0d7c49c376              # double 0.37573563706887769
	.quad	0x3fe87ad2f5d9ef9b              # double 0.76499317186197702
	.quad	0x3fee441a2cdf1854              # double 0.94581326259572984
	.quad	0x3feeaeb5e7c35ee7              # double 0.95882697359317325
	.quad	0x3fd4db75e34c65e2              # double 0.32589480588066355
	.quad	0x3fd5c6ba6074f048              # double 0.3402543966256002
	.quad	0x3fe6ed789a08a8be              # double 0.71648817143184096
	.quad	0x3fed5ca4f1788cc3              # double 0.91755911981854188
	.quad	0x3fd4f82a78b289cc              # double 0.32764684473854966
	.quad	0x3fe71993497deed5              # double 0.72187198976413447
	.quad	0x3fee92c48d06c8b8              # double 0.95541598839033436
	.quad	0x3fb1f284edf416c0              # double 0.070106800169095429
	.quad	0x3fd9058090f8d04c              # double 0.39096082837500457
	.quad	0x3fe2d13a035a7d15              # double 0.58804035811400246
	.quad	0x3fecc7f9442a982a              # double 0.89941085160967771
	.quad	0x3fac32ee8a2613f0              # double 0.055076078761920999
	.quad	0x3fc28bd8d5f08c24              # double 0.14489279218932538
	.quad	0x3fcd469d18687acc              # double 0.22871745769312779
	.quad	0x3fe8de1693baf346              # double 0.77711037496155977
	.quad	0x3fc12ed73d5d2f2c              # double 0.13424196716584313
	.quad	0x3f9736b800ee2440              # double 0.022669673020150549
	.quad	0x3fe87d8c3e40c7a2              # double 0.76532566221998288
	.quad	0x3fb69b593177e8d0              # double 0.088307928635831034
	.quad	0x3fcf8887578aba4c              # double 0.24635402464396561
	.quad	0x3fe53af07383bf0a              # double 0.66344473420574102
	.quad	0x3fe162dde7b1ea44              # double 0.54331870320249509
	.quad	0x3fedf334499c3d09              # double 0.93593801857960657
	.quad	0x3fcc7a2c3be982d8              # double 0.22247841763876042
	.quad	0x3fd2e62ce42964b6              # double 0.2952987888471158
	.quad	0x3fc0354cb4b31c00              # double 0.12662657569146063
	.quad	0x3fe602d53a8a2c98              # double 0.6878458159784655
	.quad	0x3fbc1cba3f819de0              # double 0.10981334734389447
	.quad	0x3fe906705444582f              # double 0.78203598459618273
	.quad	0x3fbea10883de0610              # double 0.11964467257896438
	.quad	0x3fea97f386a47a0e              # double 0.83104873940811941
	.quad	0x3fec42a2e01ffd94              # double 0.88313430570990414
	.quad	0x3fd5fae44d489546              # double 0.34343822047442918
	.quad	0x3fbc2c9e40c20098              # double 0.11005581933022979
	.quad	0x3fedf62fe59839b6              # double 0.93630213587476052
	.quad	0x3fd4fd2f13f4c6ba              # double 0.32795311879008759
	.quad	0x3fe45bc050eb1024              # double 0.63620010189379572
	.quad	0x3feea4b7c2ee516e              # double 0.95760715553710241
	.quad	0x3fd767123ce2d8aa              # double 0.3656659693327905
	.quad	0x3fe9490be8a6f9e2              # double 0.79016681136982592
	.quad	0x3fb934d31d0d7b90              # double 0.098462290375648686
	.quad	0x3fe6fcbc6cb6cbd2              # double 0.71835156663143551
	.quad	0x3fe8d706b5e1fedf              # double 0.77624831699355556
	.quad	0x3fe04f5a7609e025              # double 0.50968668989572008
	.quad	0x3fd05c6ed9f146a2              # double 0.25564166339345651
	.quad	0x3fa346f8b9f10340              # double 0.037650845239574071
	.quad	0x3fcf7e580efba2f0              # double 0.24604321223821257
	.quad	0x3fd5ff924a9a5eb0              # double 0.34372384343576368
	.quad	0x3fdbb5f9917d8516              # double 0.43298186500585822
	.quad	0x3fefeb110b9ea6e9              # double 0.99744465131263126
	.quad	0x3fec14fd75bef2a7              # double 0.87756226536983639
	.quad	0x3fe89c0716fbe98a              # double 0.76904634942120365
	.quad	0x3fe4a856930ee969              # double 0.64554909441293973
	.quad	0x3fe269444414e689              # double 0.57534993455119932
	.quad	0x3fe9fb9b2e2fe650              # double 0.81196364422721423
	.quad	0x3fef803dfe99635b              # double 0.98440456129456366
	.quad	0x3fd70dd8bebd927c              # double 0.36022013308528478
	.quad	0x3facfac418a81870              # double 0.056600692758409177
	.quad	0x3fe5e573cdea114e              # double 0.68425932138101486
	.quad	0x3fe3a8e937e51e36              # double 0.61436901967039748
	.quad	0x3fd54697bb0f4dac              # double 0.33243363635593925
	.quad	0x3fb86d0efd7f7c00              # double 0.095414101494938564
	.quad	0x3fce3cde39e0199c              # double 0.23623254610010924
	.quad	0x3febcb76529b42db              # double 0.86858669408874378
	.quad	0x3fe3ba22f97a280e              # double 0.61647175527582632
	.quad	0x3fec0d30a87e7a65              # double 0.87661011609072814
	.quad	0x3fdc17c8d143dd00              # double 0.43895168720287359
	.quad	0x3f95fb2dfb050740              # double 0.021465986677191795
	.quad	0x3fde491ec42256f0              # double 0.47321290162777441
	.quad	0x3fe163f794218d87              # double 0.54345301563118731
	.quad	0x3fe9ca49862284ec              # double 0.80594326208315925
	.quad	0x3fefbe780b84c032              # double 0.99200060128896994
	.quad	0x3fe398f71c3b737d              # double 0.61242251886470422
	.quad	0x3fe4dcd5d7ef7598              # double 0.65195743727570044
	.quad	0x3fedddee8eb4e735              # double 0.9333412921180072
	.quad	0x3fe8027e29d22afe              # double 0.75030430000455772
	.quad	0x3fd4e92e2b0e93b2              # double 0.32673219876078996
	.quad	0x3fec5f57c47e9ed2              # double 0.88663853051999753
	.quad	0x3fd4954069dfb77c              # double 0.32160959567305958
	.quad	0x3fd440ba2f086b78              # double 0.31645063965850495
	.quad	0x3feb93d46e3084f0              # double 0.86179563065902975
	.quad	0x3fededb0236542cb              # double 0.93526465333169406
	.quad	0x3fc12b3876cece78              # double 0.13413148690380061
	.quad	0x3fda3a1b823aea64              # double 0.4097965976504041
	.quad	0x3fb66401ec5682b8              # double 0.087463493537607628
	.quad	0x3feab0396784d2cf              # double 0.83401174753688589
	.quad	0x3fcc248118cd3314              # double 0.21986402235997871
	.quad	0x3f9744ca3cdf32c0              # double 0.022723350491832717
	.quad	0x3fd8783eae010628              # double 0.38233916275575774
	.quad	0x3fccae5cbc57ffd8              # double 0.22407111355278064
	.quad	0x3fe26a59045ecfda              # double 0.57548189977250819
	.quad	0x3fe907598cfd2c82              # double 0.78214719330698323
	.quad	0x3fc734660e982360              # double 0.18128658020602995
	.quad	0x3fc8257deb9bda68              # double 0.18864416126571659
	.quad	0x3fe335c202f43d1a              # double 0.60031223847355197
	.quad	0x3fe516396a526579              # double 0.65896292463291595
	.quad	0x3fd8968c45434eb4              # double 0.38418871654469489
	.quad	0x3fe8b36d2d9b4099              # double 0.77190264613638526
	.quad	0x3fec75c53eb34130              # double 0.88937628027091442
	.quad	0x3fe0bf07828cd9ab              # double 0.52331901071629738
	.quad	0x3fe3cbe7fd524a6a              # double 0.61864089466901118
	.quad	0x3fd40d37a572187e              # double 0.31330672413640304
	.quad	0x3fe3cb5ae82bc2c3              # double 0.61857362123381454
	.quad	0x3fc6d673f0e861c8              # double 0.17841958296845761
	.quad	0x3fe79d9a9715ded2              # double 0.73798875340340886
	.quad	0x3fefcdc277bffa5e              # double 0.99386714352278793
	.quad	0x3feb1ad24acb82fa              # double 0.84702410324470567
	.quad	0x3fe6333abf7bcbdb              # double 0.69375359915863599
	.quad	0x3fb6d5c5e2f8b418              # double 0.089199417031253225
	.quad	0x3fe51a4094227a67              # double 0.65945462162546853
	.quad	0x3fe13b09bc283fcf              # double 0.53845679044206374
	.quad	0x3fe3a663d53a7d0a              # double 0.61406127592263826
	.quad	0x3fe188082474c999              # double 0.54785544510223183
	.quad	0x3fb8b4202e2d5340              # double 0.096498500131315446
	.quad	0x3fe3d0567056e979              # double 0.61918184224423023
	.quad	0x3fd1ce060341a5d4              # double 0.27819967573176752
	.quad	0x3fdde8bdaa547026              # double 0.46733037599347182
	.quad	0x3fe95df508281c95              # double 0.79271937935927161
	.quad	0x3fa707385afa7220              # double 0.04497696028304099
	.quad	0x3febd0cccad522b2              # double 0.86923827758535865
	.quad	0x3fb71da6aedb9be8              # double 0.090296189966110441
	.quad	0x3fcd6eee4b0f2a9c              # double 0.22994784035684723
	.quad	0x3fda0a7d117fd394              # double 0.40689017018240148
	.quad	0x3fe42723157a56ee              # double 0.62977747149372276
	.quad	0x3fd79f858e10c128              # double 0.36911143182352868
	.quad	0x3fe62dfad46d5b98              # double 0.69311276902850505
	.quad	0x3fe9ef9f2aeeaa6b              # double 0.81050070176327205
	.quad	0x3fe05b984688393b              # double 0.51118100906186414
	.quad	0x3fd83f6b452193de              # double 0.37887079001512614
	.quad	0x3fced27ea04b8878              # double 0.24079878641993324
	.quad	0x3fe1f57f131bce4b              # double 0.56121782047416369
	.quad	0x3fb62d0f48398218              # double 0.086625056393593858
	.quad	0x3fd4b35d5a858908              # double 0.32344755020143667
	.quad	0x3fe030733c03ea94              # double 0.5059143230603973
	.quad	0x3fe27f393f0fab26              # double 0.57803022686616568
	.quad	0x3fe96d217cc62789              # double 0.79457163209848247
	.quad	0x3fb96e1d6feb2678              # double 0.099336471389642855
	.quad	0x3fe4d88a3ff639a9              # double 0.65143311016600081
	.quad	0x3fd447c725ccdbe2              # double 0.31688097659519887
	.quad	0x3fe3519f4d97bb9d              # double 0.60371365694833268
	.quad	0x3fcca0198f9b35f4              # double 0.22363585960412957
	.quad	0x3fd58d3e91681630              # double 0.33674587440359272
	.quad	0x3fe466ec7d0cd0b4              # double 0.63756393836822278
	.quad	0x3fe4681347f1ecbe              # double 0.63770450641404586
	.quad	0x3fc520b02f2da1d8              # double 0.16506006530404593
	.quad	0x3febe86ab4e45baa              # double 0.87212119417641998
	.quad	0x3fd10ca40dd4f000              # double 0.26639653540382824
	.quad	0x3fef0640e5ebdde7              # double 0.96951336771502105
	.quad	0x3fefa08dfdc612ae              # double 0.98834895672969991
	.quad	0x3fdfbed183d9bc6c              # double 0.49602163196590854
	.quad	0x3feed05de844b206              # double 0.96293540348921236
	.quad	0x3fe0d7c9b004d031              # double 0.52634128931686608
	.quad	0x3fe7c020a00b8727              # double 0.74220305689616317
	.quad	0x3fd4958aad147128              # double 0.32162730123833905
	.quad	0x3fdd984810ebae7c              # double 0.4624195256462611
	.quad	0x3fb2e6067281ed18              # double 0.073822405773104172
	.quad	0x3fcd86bbb47f6fd0              # double 0.23067423165673384
	.quad	0x3fea5e735e85dcae              # double 0.82402962171081184
	.quad	0x3fee6387a74391d0              # double 0.94964964550723074
	.quad	0x3fd22bba1beaba32              # double 0.28391888357410544
	.quad	0x3fdf81386f0591a4              # double 0.49226198999374504
	.quad	0x3fe643999af7c918              # double 0.69575195567293502
	.quad	0x3fe3495cfb061bbd              # double 0.60270546939943126
	.quad	0x3fd7b70e08c93a84              # double 0.37054777963650332
	.quad	0x3fd26ed9c4b1b5b6              # double 0.28801578720489418
	.quad	0x3fd98fc4eaef5020              # double 0.39939997618535195
	.quad	0x3fc3478614a2a1b4              # double 0.1506202317007258
	.quad	0x3fe8efdcaaea143e              # double 0.77928002721512946
	.quad	0x3f931bda684482c0              # double 0.018660938848486408
	.quad	0x3fe5837b7a332e4d              # double 0.67230008952305698
	.quad	0x3fed269d48855be1              # double 0.91096367038960235
	.quad	0x3fda296d162dd5ec              # double 0.40877844968721777
	.quad	0x3fc8ef81cfc097c0              # double 0.19480917591243774
	.quad	0x3fdb4e841a3a493e              # double 0.42666723786637195
	.quad	0x3fd79b0c7002240c              # double 0.36883841455761579
	.quad	0x3fece09465623495              # double 0.90241451074111245
	.quad	0x3fd7e3fa5993f918              # double 0.37328966853955725
	.quad	0x3feffb936918bf6d              # double 0.99945993925756015
	.quad	0x3fe38c0bf69cdf3d              # double 0.61084554831084115
	.quad	0x3faba9379b24ef60              # double 0.054025399864683576
	.quad	0x3fea6a124ea9fdda              # double 0.82544818271702103
	.quad	0x3febb6935c4fbb34              # double 0.86603706388073087
	.quad	0x3fe65d6279cf5045              # double 0.69889949599247159
	.quad	0x3fd2550f00d5fdda              # double 0.28644156533843346
	.quad	0x3fe0eafa9a9dbc95              # double 0.52868395040958893
	.quad	0x3fd9e9687b3dd416              # double 0.40487110171608387
	.quad	0x3fe8ae020743497b              # double 0.77124120157741005
	.quad	0x3fe9aaee6ff2bf80              # double 0.80211564888848841
	.quad	0x3fe81e1494ec9890              # double 0.75367192351110823
	.quad	0x3f6bc1a93c0e1200              # double 0.0033882432330207823
	.quad	0x3fe0937e0af261d6              # double 0.51800443780944749
	.quad	0x3fe319d7763d2eb5              # double 0.59690449803880219
	.quad	0x3fe7f09bd71a422a              # double 0.74812118541928396
	.quad	0x3fe1e1b92471cc1e              # double 0.55880410306997752
	.quad	0x3fd8e5538724b63c              # double 0.38899696538541995
	.quad	0x3fe282d2a3380acd              # double 0.57846958044714258
	.quad	0x3fe6e1cc4d47249a              # double 0.7150632390340832
	.quad	0x3fedc53da5bd54d1              # double 0.93032724734316663
	.quad	0x3fc3a9cab599d24c              # double 0.15361913554410689
	.quad	0x3fe51c26e846a941              # double 0.65968652120981386
	.quad	0x3fef303c1aadcafa              # double 0.97463803492277568
	.quad	0x3fbf244c61d41b80              # double 0.12164761913673594
	.quad	0x3fd2d43c797e0af8              # double 0.29420387138831883
	.quad	0x3fe5b07a3c57d671              # double 0.67779266153111284
	.quad	0x3fe1d084e34b114d              # double 0.55670399087152023
	.quad	0x3fd7c11358ca24b2              # double 0.37115939780103269
	.quad	0x3feb5d022bb36c9f              # double 0.85510357413604143
	.quad	0x3fea521e24d7f0c8              # double 0.82252413936614577
	.quad	0x3feb199325adc9cf              # double 0.84687192305710279
	.quad	0x3fe8212e714afd1d              # double 0.75405046584629398
	.quad	0x3fe92cc6970952ea              # double 0.78671578883458193
	.quad	0x3fe4535c8fb75461              # double 0.63517597264820946
	.quad	0x3fde32bbc021a1bc              # double 0.471846521023078
	.quad	0x3fd8808b89cc789c              # double 0.38284576851754948
	.quad	0x3febd0601646eaac              # double 0.86918644286136759
	.quad	0x3fd13df912ab6708              # double 0.26940752814481117
	.quad	0x3fe986e0c007547b              # double 0.79771459107963893
	.quad	0x3fe72808561ee5fc              # double 0.72363678760956374
	.quad	0x3fe8ab3eb8aaad4c              # double 0.77090393130985424
	.quad	0x3fd2b44f7ab067b8              # double 0.29225527745586133
	.quad	0x3fd8c046a8860846              # double 0.38673559625033638
	.quad	0x3fe0ebdeb6ad20e1              # double 0.5287927215477134
	.quad	0x3fe3f94e98602a8a              # double 0.62418298493260349
	.quad	0x3fe7b1073dd2643c              # double 0.74035989832476146
	.quad	0x3fd06a769a6d30a2              # double 0.25649800377574128
	.quad	0x3fef744d46ac9047              # double 0.9829470043519074
	.quad	0x3f682d69ea581200              # double 0.0029513424549370004
	.quad	0x3fd9ab3634b1eb2a              # double 0.4010749353980595
	.quad	0x3fc7a55911159b2c              # double 0.18473351797293824
	.quad	0x3fe34b5d00a2e75b              # double 0.60294962047849354
	.quad	0x3febdb06e53d2930              # double 0.87048668645119243
	.quad	0x3fe46376bd437b70              # double 0.63714158025309864
	.quad	0x3fe6150a9b94f968              # double 0.69006853472801044
	.quad	0x3fe5be4986881eef              # double 0.67947841907240825
	.quad	0x3fb5dfa2dce85288              # double 0.085443667347428698
	.quad	0x3fe72e132b86840b              # double 0.72437437535347848
	.quad	0x3feb1c4f0ef61d6d              # double 0.84720566675325204
	.quad	0x3fe530ea692e8dde              # double 0.66222115081148636
	.quad	0x3f952704f976db20              # double 0.020656659818736434
	.quad	0x3fe00d081cdf68de              # double 0.50159078253934886
	.quad	0x3fe2b99a4c66e920              # double 0.58515658304466811
	.quad	0x3fe01b92b06715a8              # double 0.50336584523818306
	.quad	0x3fdaf628ef2fe378              # double 0.42127440794097692
	.quad	0x3fb4e5e0ef600470              # double 0.081632669869593277
	.quad	0x3fc0fd0309a9aa5c              # double 0.13272130939306492
	.quad	0x3fe2065beb0bc1bd              # double 0.56327625186354846
	.quad	0x3fed593c6aadfca2              # double 0.91714306674829893
	.quad	0x3fdcb9f5b7635cc6              # double 0.44885008725163933
	.quad	0x3fd4baae02ef809e              # double 0.32389402662921352
	.quad	0x3fd84779d16602be              # double 0.37936253975935219
	.quad	0x3fedcfae04bf3d44              # double 0.93160153319505711
	.quad	0x3fed5659d022d7b1              # double 0.916790873065784
	.quad	0x3f9e520071052d60              # double 0.029609686754424103
	.quad	0x3fe92fb6b07a27a9              # double 0.78707441776463327
	.quad	0x3fe1cf9e05754205              # double 0.55659390512488527
	.quad	0x3fd3e56e08fa405a              # double 0.31087828518594096
	.quad	0x3fef411403755edd              # double 0.97669411349758272
	.quad	0x3fee4dddab61d0d1              # double 0.94700511429848622
	.quad	0x3fd88053c7ec612a              # double 0.38283247493520156
	.quad	0x3fdfae6b24b30a72              # double 0.4950206621544232
	.quad	0x3fe91775f2785e6e              # double 0.78411385877093465
	.quad	0x3fef348267123b6b              # double 0.97515983706567277
	.quad	0x3fe4a032d91a6034              # double 0.64455549624381669
	.quad	0x3fe7022ed3b60d10              # double 0.71901646947699938
	.quad	0x3f9ab58cf7b88520              # double 0.026083185786892504
	.quad	0x3fb0c4a4449323d8              # double 0.065500513784299996
	.quad	0x3fcbd6fb2e73a084              # double 0.21749820488117078
	.quad	0x3fee4d1a6fce9e67              # double 0.94691202008557418
	.quad	0x3fe42a90c3b1eb8c              # double 0.63019598218612449
	.quad	0x3fde906ef8540da0              # double 0.47756551981748352
	.quad	0x3f73b523dab36d80              # double 0.0048114204939467831
	.quad	0x3fe378512a0b4c87              # double 0.60843713962312129
	.quad	0x3fe4a6174996e6ad              # double 0.64527477620068441
	.quad	0x3fca59450ce364e0              # double 0.20584929589566681
	.quad	0x3fe000ca7c35f674              # double 0.50009655246658591
	.quad	0x3fe31b89858e8ea1              # double 0.59711147389721841
	.quad	0x3fe0a24bc51251d6              # double 0.51981152048625279
	.quad	0x3fc311232751fb58              # double 0.14896048946317353
	.quad	0x3fd15e1f408972d2              # double 0.27136975576813172
	.quad	0x3fed6504e17ecd5d              # double 0.91858142892889882
	.quad	0x3fb5d54145f15048              # double 0.085285262657010752
	.quad	0x3fa7c9d6a0386350              # double 0.046461779649865975
	.quad	0x3fc77f9222e31bd4              # double 0.18358065322374151
	.quad	0x3fc0fc00ce10ea98              # double 0.1326905256444959
	.quad	0x3fd9d295e0a292ce              # double 0.40347811638848163
	.quad	0x3fea340e35977b24              # double 0.81885443179257721
	.quad	0x3fa582c59b2c18b0              # double 0.042013335411000496
	.quad	0x3fdf6b803478fd1c              # double 0.49093632816580324
	.quad	0x3fcf87f2fb52915c              # double 0.24633633872611937
	.quad	0x3fe2cd772ab5e491              # double 0.58758123723886702
	.quad	0x3fce5bbe59dab9f0              # double 0.23717479121610507
	.quad	0x3fe9913db50dd4c1              # double 0.79897961961855668
	.quad	0x3fc75653a30480bc              # double 0.18232198200076322
	.quad	0x3fd8683fc9559e46              # double 0.3813628641277983
	.quad	0x3fec8abcdd52d56e              # double 0.89193576075801473
	.quad	0x3fe03426395e80bf              # double 0.50636588292038442
	.quad	0x3fe5f99cec12ba26              # double 0.6867203341296928
	.quad	0x3fe0afe91a75b7c4              # double 0.52147345703064518
	.quad	0x3fd4a71568eb2ab6              # double 0.32269797559699087
	.quad	0x3fd5b0487c917e96              # double 0.33888446965100039
	.quad	0x3fd0c0534c40fc36              # double 0.26173860975899588
	.quad	0x3f956bd6cd07dbc0              # double 0.020919185890274639
	.quad	0x3fb13aadffa22de0              # double 0.067301630888486397
	.quad	0x3fe459144d69d973              # double 0.63587393874949638
	.quad	0x3fc0bd3c066b964c              # double 0.13077497781266556
	.quad	0x3fd642619e5a2712              # double 0.34780159439161296
	.quad	0x3fe78bcefc16334a              # double 0.73581647144019624
	.quad	0x3fd6c0df730df10a              # double 0.35552202449595482
	.quad	0x3fc3907898308b68              # double 0.1528464072335638
	.quad	0x3fc7236fa92da914              # double 0.18076892624532859
	.quad	0x3fd1a20ddf936f7e              # double 0.27551600297532974
	.quad	0x3f9081a18e077de0              # double 0.016119503301409099
	.quad	0x3fc11b324aa4d888              # double 0.13364246983264061
	.quad	0x3fe08b4baf3b0974              # double 0.51700386261681652
	.quad	0x3fddccc6bafaa4d6              # double 0.46562355289149815
	.quad	0x3fcefb776634411c              # double 0.24204914560733293
	.quad	0x3fdefaf500f2bb7a              # double 0.48406720249743496
	.quad	0x3faeb52777561280              # double 0.059975846593293802
	.quad	0x3fd3c02b949128f6              # double 0.30860414036273143
	.quad	0x3fec682e71faced4              # double 0.88771745931304701
	.quad	0x3fe531218d293e52              # double 0.66224744387177226
	.quad	0x3fd690e052285072              # double 0.35259254477683222
	.quad	0x3fc5fba584274f8c              # double 0.1717421431809466
	.quad	0x3fb544d90147fc10              # double 0.083081782162466533
	.quad	0x3fee414c9070ee91              # double 0.94547107897911264
	.quad	0x3fe7fc68f2a32fc1              # double 0.74956176176191758
	.quad	0x3fd431e2b599ef80              # double 0.31554477438452722
	.quad	0x3fec146471a82e9a              # double 0.87748930166840755
	.quad	0x3fc9f0a547d8a53c              # double 0.20265642173880305
	.quad	0x3fe3064311f55940              # double 0.5945144034147134
	.quad	0x3fe2b35238c91933              # double 0.5843897923557847
	.quad	0x3fc7195a58ef39a0              # double 0.18046120970252577
	.quad	0x3fe8085214685f0a              # double 0.75101570115927641
	.quad	0x3fe8e2af4e924e2c              # double 0.77767148347851877
	.quad	0x3fdf488ab6a16fd8              # double 0.48880260310192858
	.quad	0x3fe9107a9586a2df              # double 0.78326157764703541
	.quad	0x3fd6c7d6394c1ec0              # double 0.35594707103198786
	.quad	0x3fecda6446738438              # double 0.90165914306647377
	.quad	0x3feebbed2198522e              # double 0.96044022141956531
	.quad	0x3fe8eaccccf066d7              # double 0.77866210963403659
	.quad	0x3fcc16c5f7724c3c              # double 0.21944498617503594
	.quad	0x3fe3327d3c5583f7              # double 0.59991323265069141
	.quad	0x3fe17049854dacb2              # double 0.54495693240951071
	.quad	0x3fdebad14e2391b2              # double 0.48015244131809276
	.quad	0x3fa28c33115fac40              # double 0.036225887175384219
	.quad	0x3fcd4d4c5ca48f84              # double 0.22892145656180329
	.quad	0x3fee445298ce231e              # double 0.9458401665188807
	.quad	0x3fe2401c4569faa2              # double 0.57032598073404395
	.quad	0x3fe38a1c3ca31ca6              # double 0.61060916751093397
	.quad	0x3fdc7e2d56821980              # double 0.44520123909060061
	.quad	0x3fd6ad0df812d774              # double 0.35431241250932222
	.quad	0x3fe3f08d6221b4b3              # double 0.62311429182377365
	.quad	0x3fec33d3a9c01dbb              # double 0.88132651476273993
	.quad	0x3fe0d18324db57f4              # double 0.52557522963138448
	.quad	0x3fce661e32f48ae8              # double 0.23749139297532129
	.quad	0x3fe86abc82d83c33              # double 0.7630293422279294
	.quad	0x3fc4b45cf35348fc              # double 0.16175424462432619
	.quad	0x3fe17b669ca5138c              # double 0.54631357760136856
	.quad	0x3fd3185d92cf8938              # double 0.29836215340596395
	.quad	0x3fe1e26b39b4c190              # double 0.55888901968687499
	.quad	0x3fe293825273609e              # double 0.58050647834444979
	.quad	0x3fdaeccf27cf1e5e              # double 0.42070368659594759
	.quad	0x3fd6f36eb71a7412              # double 0.35860793954071923
	.quad	0x3fedd4bf3bba5278              # double 0.93222009339895262
	.quad	0x3f9af128f5777a20              # double 0.026310577375506239
	.quad	0x3febf8d7b5fda7a8              # double 0.87412629647336804
	.quad	0x3fe45d55b6e8b567              # double 0.63639341091554236
	.quad	0x3fea630070e0733a              # double 0.82458517118684616
	.quad	0x3fe3d808ad203270              # double 0.62012132466914061
	.quad	0x3fe4d2123cbf5fdd              # double 0.65064346184498911
	.quad	0x3fdaa60a56bfadd8              # double 0.41638430091435685
	.quad	0x3fde625058bd0f54              # double 0.47475060144301051
	.quad	0x3fdb0ea3ce211758              # double 0.42276854638872896
	.quad	0x3fcea1ce15e78de4              # double 0.23931289739185424
	.quad	0x3feaccacc990e65a              # double 0.83748473518717081
	.quad	0x3fd493c67cd09ece              # double 0.3215194910903677
	.quad	0x3fe2b3f869ec2f33              # double 0.58446903884894252
	.quad	0x3fe1a2b9583532ab              # double 0.55111376979910653
	.quad	0x3fb86c129d4960f8              # double 0.095399058723504626
	.quad	0x3fd224aa11d334b0              # double 0.2834878133842933
	.quad	0x3fe935a78de8440a              # double 0.78779962269084192
	.quad	0x3fe8266a34f72f4a              # double 0.75468931526982286
	.quad	0x3fcad9e05aa073d4              # double 0.20977405953536155
	.quad	0x3fe50e32c38f5fc0              # double 0.65798319049189757
	.quad	0x3fe93ce729ed1658              # double 0.78868444622703304
	.quad	0x3fd77057a89bdca2              # double 0.36623183694559647
	.quad	0x3fda8617a6ae0f92              # double 0.4144343497975963
	.quad	0x3fb275d40dd46170              # double 0.072110417724962295
	.quad	0x3fd27312ee8ff644              # double 0.2882735566816772
	.quad	0x3fc90d629e3e651c              # double 0.19572098471398014
	.quad	0x3fdef0dfa059485a              # double 0.48345175417955988
	.quad	0x3fe840737e8a587f              # double 0.75786757197307952
	.quad	0x3fe99cce487a434d              # double 0.80039133220462022
	.quad	0x3fa599bbe0595050              # double 0.042188521515215016
	.quad	0x3f96bfdd04a98400              # double 0.02221627560573225
	.quad	0x3fcb4f57fc75ed54              # double 0.2133588774412184
	.quad	0x3fd3fcc8f0ca9e0a              # double 0.31230376734535581
	.quad	0x3febe98f6cb9b72b              # double 0.87226077304305727
	.quad	0x3fd378bdd045ba9c              # double 0.30424447383021813
	.quad	0x3fe755f6e457ff43              # double 0.72924370382677528
	.quad	0x3fe6bb8d5264d038              # double 0.71039453594722257
	.quad	0x3fdd8fd9b0effb96              # double 0.46190492896124036
	.quad	0x3faa1327e7158320              # double 0.050927397688388831
	.quad	0x3fe88bff11630d9b              # double 0.76708939929851583
	.quad	0x3fecd717e09d8764              # double 0.90125650282082547
	.quad	0x3fe74fc1fb9eda4e              # double 0.72848605293877156
	.quad	0x3feeb46058fd0ac0              # double 0.95951859837108344
	.quad	0x3fb0f50b875b7098              # double 0.066239090486705954
	.quad	0x3fec42af8328957b              # double 0.88314033142948689
	.quad	0x3fd17a9b3800e388              # double 0.27310829609955833
	.quad	0x3feff0dc850c3f6f              # double 0.99815202699572391
	.quad	0x3fe4740562ffc82d              # double 0.63916272483607417
	.quad	0x3fe7ae35900c6e05              # double 0.74001577505572469
	.quad	0x3feab2ec0e8d8f23              # double 0.83434107630134624
	.quad	0x3fec72011b621a52              # double 0.88891654346736915
	.quad	0x3fef9b789dc97a22              # double 0.98772841279771151
	.quad	0x3fe6cf59f610f2d1              # double 0.71281145152860337
	.quad	0x3fe8bdb9327290e0              # double 0.7731595979026018
	.quad	0x3fc65c0f4ef82328              # double 0.17468444209978284
	.quad	0x3fc90d1ce7b5c96c              # double 0.19571267427415806
	.quad	0x3fe99334f71a0530              # double 0.79921959173240076
	.quad	0x3fc1f27c89cfea84              # double 0.1402126000319478
	.quad	0x3fd38f37156d7f5e              # double 0.30561616032172434
	.quad	0x3fdfa2adfa770164              # double 0.49430417499026746
	.quad	0x3fd04a2fc7ef85a8              # double 0.25452799344028643
	.quad	0x3fe769d59f4177a8              # double 0.73166924576411407
	.quad	0x3feaa37b7062f038              # double 0.83245632124408697
	.quad	0x3fc2e89f6c0cbc3c              # double 0.14772408271662296
	.quad	0x3fd3461f16905008              # double 0.30115487292755505
	.quad	0x3fe5c4a2337ddbdb              # double 0.68025312478027489
	.quad	0x3fd65017918958e4              # double 0.34863843166875896
	.quad	0x3fc676a3ce2e2080              # double 0.1754956013430764
	.quad	0x3fad8b296f90a800              # double 0.057702345722944415
	.quad	0x3fe1c3774c2aff8f              # double 0.55511059643321115
	.quad	0x3f8d1092d8be2040              # double 0.014191767920934351
	.quad	0x3fc13b76ee735154              # double 0.13462721484269002
	.quad	0x3fe5daee8993bb55              # double 0.68297507162592785
	.quad	0x3fd5152ffde94f3a              # double 0.32941818042785409
	.quad	0x3fd2c3f8812e2986              # double 0.29321110358491642
	.quad	0x3fc58c7f8a54ff1c              # double 0.16835016493313837
	.quad	0x3fd5c5800cce3dc6              # double 0.34017945528554738
	.quad	0x3fe89ba6c2c87438              # double 0.76900041621741533
	.quad	0x3fede95af1d35199              # double 0.93473574859176545
	.quad	0x3fba8465a19a0e68              # double 0.10358271785121931
	.quad	0x3fd3b45f3f475e4e              # double 0.30788403682297349
	.quad	0x3fee6ed7e4700f90              # double 0.95103067986245726
	.quad	0x3fe4d366168cb10b              # double 0.65080551532949593
	.quad	0x3fc31ebe38757514              # double 0.14937570339945039
	.quad	0x3fae0145976cf750              # double 0.058603453383041626
	.quad	0x3fea0f0083ac9b12              # double 0.81433129994988662
	.quad	0x3fd6c666092ed248              # double 0.35585928818480683
	.quad	0x3febadd33f6cd0b6              # double 0.8649688948412606
	.quad	0x3fc3ae3520a0b574              # double 0.15375389187958499
	.quad	0x3fed3f2dfc8edac3              # double 0.91396235778560031
	.quad	0x3fbf464f81047598              # double 0.12216660404052104
	.quad	0x3fea8cf3bcd948db              # double 0.82970606693768489
	.quad	0x3fda872a829e1630              # double 0.41449988132112292
	.quad	0x3fec14f43f3aec91              # double 0.87755787229197513
	.quad	0x3fe0b177cc4f485e              # double 0.52166356949079407
	.quad	0x3fb4b3040e4bec28              # double 0.080856564989446711
	.quad	0x3fcfa7e516244cb8              # double 0.24731124478475919
	.quad	0x3fdde2f3b8a2323a              # double 0.46697705298064174
	.quad	0x3fc0e960355e2578              # double 0.13212206464622134
	.quad	0x3fe5609fa08535b7              # double 0.6680448661006072
	.quad	0x3fc50aae9d6e69fc              # double 0.16438849150729584
	.quad	0x3fd4d4a310301cf8              # double 0.3254783304295894
	.quad	0x3fbe697dc7f09ef0              # double 0.1187971699843009
	.quad	0x3fc6d96ac4a29f48              # double 0.17851004220323774
	.quad	0x3fd65b36240a4e30              # double 0.34931710738712507
	.quad	0x3fcb41108adc6c04              # double 0.21292311458896063
	.quad	0x3fd8b01b9e0f0cf4              # double 0.38574877200535629
	.quad	0x3fdcdf040b5a0946              # double 0.4511118040901646
	.quad	0x3fd0b63fc223285c              # double 0.26112359961246567
	.quad	0x3fe222e765cd60e8              # double 0.56676072963003055
	.quad	0x3fd33f067699a5a4              # double 0.30072175581025307
	.quad	0x3fe008d3533a15e0              # double 0.50107733016255551
	.quad	0x3fe7ae6f0c64a5a1              # double 0.74004318638360556
	.quad	0x3fefd61d4a7a4578              # double 0.99488701387797018
	.quad	0x3fc9025999572144              # double 0.19538421618768542
	.quad	0x3fe9a5e244652244              # double 0.80149949415596966
	.quad	0x3fd4b292901e0ed8              # double 0.32339920114484988
	.quad	0x3fd500b11c2746de              # double 0.32816722630842132
	.quad	0x3fda700e6ab5e230              # double 0.41308937474198881
	.quad	0x3fda86981b20d80e              # double 0.4144649758267186
	.quad	0x3fe46576e444270e              # double 0.63738579352613711
	.quad	0x3fd5a4ed69769242              # double 0.33819136904847735
	.quad	0x3fbfd304ad0b8120              # double 0.12431363320093114
	.quad	0x3fc5787b27560914              # double 0.16773929043490254
	.quad	0x3fede553fb96c13d              # double 0.93424414766744912
	.quad	0x3fd241705e34af1c              # double 0.28524407577309474
	.quad	0x3fe398df522ad63e              # double 0.61241117523486088
	.quad	0x3fc3e4bfe7e9c70c              # double 0.15541838477980041
	.quad	0x3fe0cc29fc715e3a              # double 0.52492236428492522
	.quad	0x3fe6998f917270a8              # double 0.70624521644233074
	.quad	0x3fe4728ffe2142d5              # double 0.63898467669249703
	.quad	0x3fe7f8948b8dda6d              # double 0.74909426933920786
	.quad	0x3fd1b41c30b6aa0a              # double 0.27661804921322697
	.quad	0x3fdd7f7d791c04f4              # double 0.46090637995810302
	.quad	0x3fe7aa0ec0e78f3b              # double 0.73950898815790056
	.quad	0x3fd9123ebc438062              # double 0.39173859009861733
	.quad	0x3fe355980a417d7e              # double 0.60419847491350231
	.quad	0x3fecf1564932e82d              # double 0.90446008965159808
	.quad	0x3fe1bb1b4d99d4ba              # double 0.55409016758371554
	.quad	0x3fd9e06dd755dc12              # double 0.4043230631718312
	.quad	0x3fd1468b2e0472b8              # double 0.26993064397701572
	.quad	0x3fd4a65de79ac650              # double 0.32265422456393811
	.quad	0x3feceb97edd2a1bf              # double 0.90375896882783724
	.quad	0x3fe71482f2eb2a5f              # double 0.72125384755174682
	.quad	0x3fd820edc834d206              # double 0.3770098166599215
	.quad	0x3feb534024987c28              # double 0.85391242168032466
	.quad	0x3fc778a890bfc684              # double 0.18336970393970742
	.quad	0x3fafdc285dd94ec0              # double 0.062226544815215501
	.quad	0x3fce9eeecabd40f0              # double 0.23922524356249353
	.quad	0x3fe96c43a3fd7583              # double 0.79446584729491609
	.quad	0x3fedae4ea85bdd4a              # double 0.92752774126612647
	.quad	0x3fe44cdb009b959c              # double 0.63438177221967207
	.quad	0x3fdf66e28c83c0ee              # double 0.49065459940085432
	.quad	0x3fce49f79ecb0d2c              # double 0.23663230184147588
	.quad	0x3febb56e94c08c2b              # double 0.86589745572235211
	.quad	0x3fd251beecf367f4              # double 0.28623936786391302
	.quad	0x3fd7fbc8233c18ba              # double 0.37474254074949054
	.quad	0x3fe816f75c245df2              # double 0.75280349728103446
	.quad	0x3fcfb29315968380              # double 0.24763716272448377
	.quad	0x3feec4a9984224fe              # double 0.96150665033306359
	.quad	0x3fe47f608a2110dd              # double 0.64054896334030398
	.quad	0x3fd8800ff5cfcbbc              # double 0.38281630520867416
	.quad	0x3fe317ec3a4103df              # double 0.59667025926330186
	.quad	0x3fee2ecce7b80f44              # double 0.94321294076551298
	.quad	0x3febc8e3643a2c9b              # double 0.86827249122270034
	.quad	0x3fdffb0409d2a6f6              # double 0.49969578704131778
	.quad	0x3feeb1ed0db43354              # double 0.95921948124451228
	.quad	0x3fe86634fdb2fd8a              # double 0.76247643995877579
	.quad	0x3fe2686953f95560              # double 0.57524553681529866
	.quad	0x3fc540d5362f1c8c              # double 0.16604104181007917
	.quad	0x3fb0412605e0be80              # double 0.063494087634120788
	.quad	0x3fd9afc4b3f4708c              # double 0.40135304998126098
	.quad	0x3fb23b7a3e242bd0              # double 0.071220054789747467
	.quad	0x3fee2c8e53915dfb              # double 0.94293896028369717
	.quad	0x3fe00c31f4d8b2cc              # double 0.50148866483285692
	.quad	0x3fdaff60313b8f30              # double 0.42183689887882547
	.quad	0x3fb945f8881436a0              # double 0.098723920080568294
	.quad	0x3fd6644df1384a18              # double 0.34987209850911105
	.quad	0x3fc8cfdb2585a8a4              # double 0.19384326297887811
	.quad	0x3fac52bd31cfdf20              # double 0.055318748789373595
	.quad	0x3fd33be4f0dee048              # double 0.30053065798302159
	.quad	0x3fd930904893e6e6              # double 0.39358908736868015
	.quad	0x3fd85b63509aaa92              # double 0.38057787772655971
	.quad	0x3feca38c9f8c2073              # double 0.89496451531978349
	.quad	0x3fd958920e59f81a              # double 0.39603091622837072
	.quad	0x3fd37e8a5cceca8e              # double 0.30459841788539499
	.quad	0x3fe56a99e0ff3965              # double 0.66926282829971895
	.quad	0x3fd2714b9680597c              # double 0.28816499421500175
	.quad	0x3fe69b614c14bf1f              # double 0.70646729335382819
	.quad	0x3fb77d83d2128738              # double 0.091758955752564542
	.quad	0x3fe397cafdfb9e6b              # double 0.61227941137344766
	.quad	0x3fdb229690c7d006              # double 0.42398609293672995
	.quad	0x3fb67d63dc466a48              # double 0.087850800779429083
	.quad	0x3fc6ac7e13c2c25c              # double 0.17713905300981281
	.quad	0x3febe85129f0f243              # double 0.87210901443138089
	.quad	0x3fe15ccd1c11a108              # double 0.54257827264976388
	.quad	0x3fc9975e1ea91d08              # double 0.19993187424754688
	.quad	0x3fd213550d9454a0              # double 0.28242994619479056
	.quad	0x3fda0a266618b43e              # double 0.40686950655328136
	.quad	0x3fd1a736053e9dfc              # double 0.27583075058143414
	.quad	0x3fcde4c9d13c0198              # double 0.23354456631205944
	.quad	0x3fd27c5db55705c6              # double 0.28884070118882865
	.quad	0x3fe1cabc30179c16              # double 0.5559979380894926
	.quad	0x3fc7be5cb8b9bf44              # double 0.1854968931179376
	.quad	0x3fdd8d578c8ec4a2              # double 0.46175183035217959
	.quad	0x3f94e00f5eb2bae0              # double 0.020385971217076526
	.quad	0x3fc7097818b5cdf8              # double 0.17997647482444257
	.quad	0x3fe9efc687b32bdb              # double 0.81051947120556223
	.quad	0x3fd418bc03bfe478              # double 0.31400966993493951
	.quad	0x3fdc75d87570fd08              # double 0.44469272107012658
	.quad	0x3fda7f06e74f0324              # double 0.4140031107781843
	.quad	0x3fe2889527aae11e              # double 0.5791726851230441
	.quad	0x3fdceb54d782b41c              # double 0.45186348958924483
	.quad	0x3fe9e4b03d723343              # double 0.80916606904211397
	.quad	0x3feb7bf8018bf97e              # double 0.85888290693382863
	.quad	0x3fb57d0c442dd800              # double 0.083939329762728221
	.quad	0x3fd252a1e92f73ce              # double 0.28629348537452592
	.quad	0x3fd5da48300163d2              # double 0.3414478749087354
	.quad	0x3fed4c15ef43841c              # double 0.91553780299375686
	.quad	0x3fd44e80ad5d9d20              # double 0.31729142122499532
	.quad	0x3fdf461b69b87fd4              # double 0.48865399669921072
	.quad	0x3fe47708978caed9              # double 0.63953046416778669
	.quad	0x3feb773e7f49ac7b              # double 0.85830616818328964
	.quad	0x3fd930c5d8038dc8              # double 0.39360185713868789
	.quad	0x3fcf255cfbefcc3c              # double 0.24332773496243643
	.quad	0x3fec33b251805e66              # double 0.88131061475992278
	.quad	0x3fdebfa1d454e3cc              # double 0.48044629798419858
	.quad	0x3fe90e43721d9390              # double 0.78299114502134337
	.quad	0x3fddc900427a6ff0              # double 0.46539312831896407
	.quad	0x3fed8ac4cf7f6548              # double 0.92318954970247891
	.quad	0x3fd175416f56cd92              # double 0.27278171418148489
	.quad	0x3fdd4a40ed7b8e58              # double 0.4576570815245069
	.quad	0x3fe8a44b3850f7e3              # double 0.77005539893411556
	.quad	0x3fd75757bad66fa8              # double 0.36470597501624491
	.quad	0x3fefdf09b088d0ff              # double 0.99597630004294035
	.quad	0x3fe32fc99490d09e              # double 0.59958342568144807
	.quad	0x3fdaacad59627146              # double 0.41678937653502535
	.quad	0x3fedca91029d2a15              # double 0.93097734938175114
	.quad	0x3fb75d6f92d93938              # double 0.091269467689220174
	.quad	0x3fea9a95d980357b              # double 0.83137028198841223
	.quad	0x3fe71c1e29679ad9              # double 0.72218235098702188
	.quad	0x3fd3eddf42628e56              # double 0.31139356120022421
	.quad	0x3fe95db99811d646              # double 0.79269103718861156
	.quad	0x3fef02465c84b4f3              # double 0.96902769155499723
	.quad	0x3fd6a478681c4bfa              # double 0.35378847281498305
	.quad	0x3fc1f03c0a404d8c              # double 0.14014387608095225
	.quad	0x3fd5705b5d9814d8              # double 0.33498272075696667
	.quad	0x3fce973d932b7868              # double 0.23899049459481891
	.quad	0x3fd5fbb9d0473a9c              # double 0.34348912563010869
	.quad	0x3fd65510677d5706              # double 0.34894189936072484
	.quad	0x3fe698fdd4e69341              # double 0.70617572385945249
	.quad	0x3fede3c2729888b5              # double 0.93405268079756942
	.quad	0x3fe404db9a24b137              # double 0.62559299570197069
	.quad	0x3fec1ac6a4e903cb              # double 0.87826854905153462
	.quad	0x3fe25a51410a6a99              # double 0.57352507308253842
	.quad	0x3fedc29612db2fa9              # double 0.93000320132113246
	.quad	0x3fef61a3c7333285              # double 0.98066891580818149
	.quad	0x3fea075453b9a18a              # double 0.81339470245897982
	.quad	0x3fb0c1d9024071d8              # double 0.065457881021252162
	.quad	0x3fe53a6cc573bebb              # double 0.66338194432133635
	.quad	0x3fef850a89cb4f75              # double 0.98499037659574517
	.quad	0x3fe1bf47c29da0d0              # double 0.55459964762578728
	.quad	0x3fe9935d9e5f4b8d              # double 0.79923897678450972
	.quad	0x3f98ef9a840e5800              # double 0.024351515111980859
	.quad	0x3fee952672e1feab              # double 0.95570681036038729
	.quad	0x3fe52265599426cb              # double 0.66044871803134109
	.quad	0x3fd9bf9c43034060              # double 0.4023199705525311
	.quad	0x3fe92ee5591cbf06              # double 0.78697459606880282
	.quad	0x3fce9d8feb67d8f8              # double 0.23918341631333084
	.quad	0x3fec57af58cae39c              # double 0.88570372907917116
	.quad	0x3fefa035bdeea478              # double 0.98830687614567036
	.quad	0x3fe5e76aa4ad837d              # double 0.68449909366255179
	.quad	0x3fdca42db9503eb2              # double 0.44752066704766513
	.quad	0x3fdc3449e60ab67a              # double 0.44069144692443951
	.quad	0x3fd9d7c9f33d16d6              # double 0.40379570726177627
	.quad	0x3fe020714a383ffe              # double 0.50396027084389039
	.quad	0x3fda48b0bac29438              # double 0.41068666685379496
	.quad	0x3fe87e8b2d201da6              # double 0.76544722379269525
	.quad	0x3fe3c52273143c27              # double 0.61781427837729985
	.quad	0x3fd52bd470ebd174              # double 0.33080016162354942
	.quad	0x3fe9873c6af15a01              # double 0.79775830161344186
	.quad	0x3fcb29d402fb1ce8              # double 0.21221399446060407
	.quad	0x3f834d0387197380              # double 0.0094242358783789281
	.quad	0x3fe5aef98a4619e6              # double 0.67760922438247628
	.quad	0x3fc31a8368ebf14c              # double 0.14924662230613206
	.quad	0x3fee46e3f2634cff              # double 0.94615361539254639
	.quad	0x3fe7709e0291a884              # double 0.73249722005608975
	.quad	0x3fe270ee5f77d3cd              # double 0.57628554006680022
	.quad	0x3fc32d026c2ff2cc              # double 0.14981107981284081
	.quad	0x3fe673d650649ffb              # double 0.70164027883311009
	.quad	0x3fde678ddd44a8bc              # double 0.47507044418547273
	.quad	0x3fe0ec7c2e9d50fb              # double 0.528867808383921
	.quad	0x3fb7da0cd2788658              # double 0.093170930275414121
	.quad	0x3fe0d1dd9c32385c              # double 0.52561836726250588
	.quad	0x3fe09719634c67d9              # double 0.51844472307424916
	.quad	0x3fc3d24193044c34              # double 0.15485400847009745
	.quad	0x3fc643d2a9c08968              # double 0.17394479073216051
	.quad	0x3fbbb881adcfa1f8              # double 0.10828409665521821
	.quad	0x3fdf8bab40489130              # double 0.49289971616441886
	.quad	0x3feab11a0ac4ff5c              # double 0.83411886313841021
	.quad	0x3fdf3c87636bf774              # double 0.48806938847689385
	.quad	0x3fc4f19cd9de96d4              # double 0.16362343443068161
	.quad	0x3fbf391bbd9accc8              # double 0.1219651544477528
	.quad	0x3fb2942cc3db36e0              # double 0.072573468986969925
	.quad	0x3fdd9e7771dd970a              # double 0.46279703254400373
	.quad	0x3fd5b833fa82258c              # double 0.33936786140164865
	.quad	0x3fd1841a806eccca              # double 0.27368795912043409
	.quad	0x3fd1ce6074af19ee              # double 0.27822123904152718
	.quad	0x3fee8cb3f1e3df7f              # double 0.95467564815679384
	.quad	0x3fe71a41cce8a243              # double 0.72195520421252757
	.quad	0x3fb3fdb25c457070              # double 0.078089854743156328
	.quad	0x3f807af88814e4c0              # double 0.0080470482376874263
	.quad	0x3fd50e496b9ccc26              # double 0.32899699696571572
	.quad	0x3fe29438a3780230              # double 0.58059341361519579
	.quad	0x3f91303fe1b80d60              # double 0.016785619880477554
	.quad	0x3fe69fdbec4d670c              # double 0.70701404717257921
	.quad	0x3fd647201c2c005c              # double 0.34809115172538951
	.quad	0x3fd0b88e0e6ede0a              # double 0.2612643376300815
	.quad	0x3fdcdb5d9c4ff778              # double 0.45088901772384515
	.quad	0x3fefcaa24c6e9efd              # double 0.9934855931105343
	.quad	0x3fe0ed8c1bb5ba31              # double 0.52899747287830767
	.quad	0x3fe77c3a5111e4b7              # double 0.73391452630962462
	.quad	0x3fe6fe431f7ef181              # double 0.71853786613023385
	.quad	0x3fb4b4006821a3d0              # double 0.080871606276232244
	.quad	0x3f9a72ffa383fc40              # double 0.025829309802244405
	.quad	0x3fef13d5f7fead68              # double 0.97117136417857086
	.quad	0x3fca5ab855314330              # double 0.20589355621134464
	.quad	0x3fe08615feec59e9              # double 0.51636791028687157
	.quad	0x3fd7393f977cf156              # double 0.36286916536098113
	.quad	0x3f9075cf01edf9a0              # double 0.016074404232762185
	.quad	0x3fd2512c1ee39ee0              # double 0.28620436684148665
	.quad	0x3fb1df7a3fcb8c48              # double 0.069816246581056451
	.quad	0x3feb98c5a602971f              # double 0.86239893363810782
	.quad	0x3fc149b195940420              # double 0.13506145290014704
	.quad	0x3feff169fa0425d5              # double 0.99821947890557771
	.quad	0x3fd5fec49fe71b94              # double 0.34367480865005828
	.quad	0x3fb081b563490000              # double 0.064479195346393681
	.quad	0x3feb2abecb18982a              # double 0.84896793048097163
	.quad	0x3fe90ae6f5999c7c              # double 0.78258083313711734
	.quad	0x3fed8bc1262a1c4e              # double 0.92330987409594356
	.quad	0x3fd2b04fa52931fa              # double 0.29201117638584118
	.quad	0x3fd4067d28a468f2              # double 0.31289605111091057
	.quad	0x3fd559d921b7a2a2              # double 0.33360889713962127
	.quad	0x3feb67be1a0dddd7              # double 0.85641388977722499
	.quad	0x3fcf8dfaa3637cd4              # double 0.24652035692176943
	.quad	0x3fe2a54a1846e31c              # double 0.58267693273146248
	.quad	0x3fe18399da3c7cce              # double 0.54731457351945223
	.quad	0x3fd83c9c7cf1d85a              # double 0.37869941903716653
	.quad	0x3fc4fa08e52aab20              # double 0.16388045491961467
	.quad	0x3fea645822fcfd04              # double 0.8247490580905894
	.quad	0x3fc80641e7cad0c8              # double 0.18769096200924751
	.quad	0x3fd900737f8800e0              # double 0.39065253690934121
	.quad	0x3fbe353f0fa7dc38              # double 0.11799997455806099
	.quad	0x3fed74fd1be21c4a              # double 0.92053084798761486
	.quad	0x3fd7d3905f3d1ce0              # double 0.37228783894211226
	.quad	0x3feeca399c0d72b6              # double 0.96218567351350859
	.quad	0x3fee6484729c556c              # double 0.94977018723390704
	.quad	0x3fba7f4e06eb42e0              # double 0.10350501698418269
	.quad	0x3fdacb862e6280d6              # double 0.41867212800754083
	.quad	0x3faf9678b73b82f0              # double 0.061694881789440603
	.quad	0x3fe7f93d8380f29d              # double 0.749174839823883
	.quad	0x3fea6cb3e5b89fe0              # double 0.82576937549037765
	.quad	0x3fef250659539bab              # double 0.97326962896919633
	.quad	0x3feff64e738d4a88              # double 0.99881670540556033
	.quad	0x3fd525f52731802a              # double 0.33044174983479258
	.quad	0x3fee1c35c3f265e3              # double 0.9409436060988664
	.quad	0x3fe286e6d8604d04              # double 0.5789674974534198
	.quad	0x3fe5c04cea6076ce              # double 0.67972417618485692
	.quad	0x3fa560d432bbee10              # double 0.041754370873572921
	.quad	0x3f9c4f72864f6080              # double 0.027646817634235266
	.quad	0x3fd6e0db2b760762              # double 0.35747412914508037
	.quad	0x3fa733ea8a280150              # double 0.045317963948039108
	.quad	0x3fe942428b9f2063              # double 0.7893383719429149
	.quad	0x3fe926328058aab2              # double 0.78591275279662498
	.quad	0x3f905452e6d69460              # double 0.015946669902082156
	.quad	0x3fd291dd8b6ef31e              # double 0.29015291801970189
	.quad	0x3fd0dde336f9db6c              # double 0.26354294174909998
	.quad	0x3fe849d07f795c66              # double 0.7590105523803572
	.quad	0x3fe8f1bb1547653b              # double 0.77950815349610225
	.quad	0x3fc0a531cd0e9f2c              # double 0.13004133713297372
	.quad	0x3fe3b9e61830ad7b              # double 0.61644272541654688
	.quad	0x3fdce019255879f6              # double 0.4511778702452881
	.quad	0x3fb5e3b5c5dd9770              # double 0.085505829627064988
	.quad	0x3fe4baf126b15eec              # double 0.64782006795118496
	.quad	0x3fd0d81a81ece64c              # double 0.26318991363550448
	.quad	0x3fe43b67925e399a              # double 0.63225153529656386
	.quad	0x3fea10c7b9f73ff9              # double 0.81454836198281477
	.quad	0x3f918c6807d9cd60              # double 0.017137170294927784
	.quad	0x3fe598c544a3eeff              # double 0.67489875227280993
	.quad	0x3fc8f5d8fdb718cc              # double 0.19500267399252491
	.quad	0x3fdf3b07c85b6752              # double 0.48797792974584298
	.quad	0x3fd3d8d9051ea87a              # double 0.31011033534981147
	.quad	0x3fe8fe7132020560              # double 0.78105983512083909
	.quad	0x3fd4001d73df791a              # double 0.31250702205388026
	.quad	0x3fe9002e3401c50c              # double 0.78127203137970147
	.quad	0x3fe9afb378bf12fa              # double 0.80269788344648352
	.quad	0x3f96b1abee09f460              # double 0.022162138370266482
	.quad	0x3fa6fbc1e4b8b540              # double 0.044889506502253429
	.quad	0x3fb3d62feaa06d08              # double 0.077486986905956567
	.quad	0x3feb424a65a73187              # double 0.85184211591835968
	.quad	0x3fe1735ab9be45de              # double 0.54533134725550858
	.quad	0x3fe81ab01c89bcd7              # double 0.75325780462108127
	.quad	0x3fb331f2549511c8              # double 0.074980874681450094
	.quad	0x3fdcf3285eb6e200              # double 0.45234116792155987
	.quad	0x3fe317894e22ad7d              # double 0.59662308941680886
	.quad	0x3fde7a7490417aa6              # double 0.47622407996633809
	.quad	0x3fd60da2396ad854              # double 0.34458213431515117
	.quad	0x3fcd6e00c60d36c4              # double 0.22991952581872088
	.quad	0x3f9d6f0815ee96c0              # double 0.028743864382383633
	.quad	0x3fd3d90f362ab058              # double 0.31012325563165666
	.quad	0x3fe2f3cf1590aa97              # double 0.59226183139738253
	.quad	0x3fe857fe562165da              # double 0.76074139425616782
	.quad	0x3fddf3dc29ed351a              # double 0.4680090341033335
	.quad	0x3fd649bc958cc43a              # double 0.34825052837829029
	.quad	0x3fd9f5ea7e4bbd1a              # double 0.40563452085093987
	.quad	0x3fc162584edd5508              # double 0.13581374979791172
	.quad	0x3fd4b51daa89103e              # double 0.32355443624351554
	.quad	0x3fd791d9c29beeda              # double 0.36827701573177551
	.quad	0x3fbf0d22d4e6bd80              # double 0.12129419038568834
	.quad	0x3fcefc8b4a0e9990              # double 0.2420820342642398
	.quad	0x3fc6e2882a2214e4              # double 0.17878820473939705
	.quad	0x3fd47c36a2ebe56a              # double 0.32008138571071376
	.quad	0x3fd6c123a47fc57c              # double 0.35553828300825052
	.quad	0x3fd0b3ef829254ae              # double 0.26098239661343825
	.quad	0x3fe92f5c714d0df7              # double 0.78703138474560219
	.quad	0x3fc4bf0820ca3f44              # double 0.16207982636523799
	.quad	0x3fe8be9aa5a1e318              # double 0.77326710081169647
	.quad	0x3fea0b683f2c47ec              # double 0.8138924821707838
	.quad	0x3fef31f49b6f1014              # double 0.97484808309718795
	.quad	0x3fe84653e82233d5              # double 0.75858493174166119
	.quad	0x3fe15d6d9dc014c5              # double 0.54265480814560674
	.quad	0x3fe465ace6938011              # double 0.6374115470353009
	.quad	0x3fb7e88b1ca7c690              # double 0.093392080779972852
	.quad	0x3fdc09bd307c9230              # double 0.4380944226743706
	.quad	0x3fe2ba4176ef0ed0              # double 0.58523629407178568
	.quad	0x3fe22db557c812a8              # double 0.56807963509398451
	.quad	0x3fe99ff4d41c0a84              # double 0.80077592303889888
	.quad	0x3fe1dfa78b07b966              # double 0.55855157045679671
	.quad	0x3fd46a6fd303d8de              # double 0.31899638754783932
	.quad	0x3fdc7a8ed87ac92e              # double 0.44498034611310089
	.quad	0x3fe866ed705fc4fb              # double 0.76256439159456535
	.quad	0x3fdf828f5bcb94c0              # double 0.49234374966028938
	.quad	0x3fed29bc20f6f1c6              # double 0.91134458959964415
	.quad	0x3fd8dc8aa4436642              # double 0.388460789121016
	.quad	0x3fee37f623d1cadb              # double 0.94433123584743883
	.quad	0x3fc27e873293d6d4              # double 0.14448633164982161
	.quad	0x3fee4a7dc197fdee              # double 0.94659316836617591
	.quad	0x3fe167cea0281ba0              # double 0.54392176895713717
	.quad	0x3fdda72f4ea528f2              # double 0.46332915001097696
	.quad	0x3fb62878407aafa0              # double 0.08655501913261654
	.quad	0x3fb226f55929bfb0              # double 0.070906957882242549
	.quad	0x3fe4b5bf538e9abc              # double 0.64718595809684798
	.quad	0x3fe8077683e93fc2              # double 0.75091100467579275
	.quad	0x3fbda48818571048              # double 0.11579180330505878
	.quad	0x3fe4989c4622e91f              # double 0.64362920473584839
	.quad	0x3fef80e4aec07c6c              # double 0.98448404437284642
	.quad	0x3fd3da4e8f98da86              # double 0.31019939444687628
	.quad	0x3febe2cbfbe455b5              # double 0.87143515775340197
	.quad	0x3fd5cd056e07165a              # double 0.3406385015954122
	.quad	0x3fd5af2262d6981e              # double 0.33881435062574095
	.quad	0x3fd193a480d176ea              # double 0.27463638858703965
	.quad	0x3fe8d8ff4e63487e              # double 0.77648892698404359
	.quad	0x3f925a67b0892260              # double 0.017922992849238262
	.quad	0x3fad6847c669f9e0              # double 0.057436221094565587
	.quad	0x3fc53ed095d37c60              # double 0.16597945514419887
	.quad	0x3fec0bc317837814              # double 0.87643580048075131
	.quad	0x3fcdc1b3ac2513b8              # double 0.23247381120213872
	.quad	0x3fc600f998661944              # double 0.17190475407933026
	.quad	0x3fdf56bb7a46a094              # double 0.48966872159008656
	.quad	0x3fd08f4e838391da              # double 0.2587467464748251
	.quad	0x3fd6e8dacaa1c584              # double 0.35796232021592567
	.quad	0x3fef9d65b126f9ee              # double 0.98796352958725975
	.quad	0x3fe19d3121771dbd              # double 0.55043846641722605
	.quad	0x3fe05dc28e97a396              # double 0.51144531107012159
	.quad	0x3fb7598ecf71c600              # double 0.09121029438554018
	.quad	0x3fead5a1496b9602              # double 0.83857788410085754
	.quad	0x3fab49865bdbc040              # double 0.053295325005706662
	.quad	0x3fe932e1ab811f98              # double 0.7874611234374127
	.quad	0x3fe9bb2bae2f7f1d              # double 0.80409797688114149
	.quad	0x3fbdaa68f328b260              # double 0.11588149963854155
	.quad	0x3fe43b48a14311b3              # double 0.63223678108675185
	.quad	0x3fbc83be6b319970              # double 0.11138525120768406
	.quad	0x3fcc130142618dd8              # double 0.21932998410475935
	.quad	0x3fe958a47c82dc50              # double 0.79207062071407996
	.quad	0x3fea45adfbac67e9              # double 0.82100581316921961
	.quad	0x3fc193ec3dee77b4              # double 0.13732674621581753
	.quad	0x3febe953b0b385b1              # double 0.87223228942837328
	.quad	0x3fe6d825577f9737              # double 0.7138849934533259
	.quad	0x3fcc2dbd99cee9a8              # double 0.2201458931938991
	.quad	0x3fa1f63daab12dd0              # double 0.03508179386752952
	.quad	0x3fe516054c236e3a              # double 0.6589380728796137
	.quad	0x3fcf6605b69220bc              # double 0.24530097403135709
	.quad	0x3fdd8544289de230              # double 0.46125892607190888
	.quad	0x3fe5cc4c8b610229              # double 0.68118884298752846
	.quad	0x3fda0acd28cd5e6e              # double 0.40690926537124639
	.quad	0x3fe270e4dc327f9b              # double 0.57628100402142779
	.quad	0x3fe90295e26e866a              # double 0.78156561112355161
	.quad	0x3fc02cd9a228a700              # double 0.12636871736440725
	.quad	0x3fe9c321d370ead3              # double 0.80506984040342855
	.quad	0x3fdc7fd1942789d8              # double 0.44530143230636332
	.quad	0x3fde20072add0f50              # double 0.47070483384981276
	.quad	0x3fe0c0a6596eaf3f              # double 0.52351682154901613
	.quad	0x3fe54605b4ecff2b              # double 0.66479764306129618
	.quad	0x3feb5f96eb246502              # double 0.85541864324764583
	.quad	0x3fe003968deab9ac              # double 0.5004380008520477
	.quad	0x3fdbbd051b04e7de              # double 0.43341186178770197
	.quad	0x3fde82e95ac54a12              # double 0.47674020637819681
	.quad	0x3fe3bacbc4e667e3              # double 0.61655224282298737
	.quad	0x3fed83f42e5243dd              # double 0.92235764548433574
	.quad	0x3fd5354a21c9b482              # double 0.33137753772354739
	.quad	0x3fd51d357479ae48              # double 0.32990776419203316
	.quad	0x3fc3bcf9cf35988c              # double 0.15420458428997497
	.quad	0x3feb0cdc178e1f0a              # double 0.84531979179971128
	.quad	0x3fd781f916648822              # double 0.36730792223727537
	.quad	0x3feb6b223c7cff0b              # double 0.85682784856905536
	.quad	0x3fbeb920ce929ee0              # double 0.12001233142165857
	.quad	0x3fe9fe431c94f2c5              # double 0.81228786070240544
	.quad	0x3fd9f7cc1933b38c              # double 0.40574934445503952
	.quad	0x3fe237b0f33481c0              # double 0.56929824353215253
	.quad	0x3fe8932a1f19a022              # double 0.76796442102659435
	.quad	0x3fe466f40eea1358              # double 0.63756754792175752
	.quad	0x3fc0a54aa631753c              # double 0.13004429926778893
	.quad	0x3f9d6870d7d35d20              # double 0.028718722508384364
	.quad	0x3fe9c18a67c29168              # double 0.80487556710845087
	.quad	0x3fdde1eca3626844              # double 0.46691432910450126
	.quad	0x3fee1014c33eb267              # double 0.93946302541514803
	.quad	0x3fb396169b8b3cc0              # double 0.076508915876945416
	.quad	0x3fd555ccb9475446              # double 0.33336179822555712
	.quad	0x3fe88cb7bd37aa86              # double 0.76717745739490861
	.quad	0x3fe84875c4d1caa7              # double 0.75884521905239388
	.quad	0x3fdea302175bfae2              # double 0.47869922906094875
	.quad	0x3fbd733a14368528              # double 0.11503947251778313
	.quad	0x3fe121e8221e933d              # double 0.53538901008560169
	.quad	0x3fe74cb13ad09246              # double 0.72811185347797713
	.quad	0x3fc08c8b4c1dc9c0              # double 0.12928906647318961
	.quad	0x3fd99b8fcf62f9a4              # double 0.400119736219404
	.quad	0x3feaff1a606376c5              # double 0.84364050699124304
	.quad	0x3fe580fbcf883437              # double 0.67199507268526915
	.quad	0x3fbaccd3c43488e8              # double 0.10468791523138388
	.quad	0x3fee2a1a096b4ce6              # double 0.94263936843563267
	.quad	0x3fe049f4649cc76c              # double 0.50902766848433378
	.quad	0x3fb6940f1dbadd50              # double 0.088196701772962571
	.quad	0x3fe43c79c4716bac              # double 0.63238228194983526
	.quad	0x3fc9d9e36191aacc              # double 0.20196192039596494
	.quad	0x3fe3eb309b10cd89              # double 0.62245970045334886
	.quad	0x3fe659f2359a761c              # double 0.69847975224883241
	.quad	0x3fedbc5135b9bb6f              # double 0.9292379426313867
	.quad	0x3fe8dec8f2a26b48              # double 0.77719542874852099
	.quad	0x3fee1b66422c4a41              # double 0.94084465908446913
	.quad	0x3fd4b8492c3070a4              # double 0.3237479144606914
	.quad	0x3fe6b3f240367020              # double 0.7094661001351632
	.quad	0x3fef5b3cab7db57d              # double 0.97988732809396561
	.quad	0x3fb53177d5ab2e70              # double 0.082786073365406442
	.quad	0x3fe2a5d74888fac5              # double 0.58274425665862195
	.quad	0x3fd5a5f290dfe8f6              # double 0.33825363300242317
	.quad	0x3fcb608a6f9715a0              # double 0.21388369034518195
	.quad	0x3fea627388709700              # double 0.82451798103713259
	.quad	0x3f7f13f8a0084980              # double 0.0075874053877832414
	.quad	0x3fec7688a2abfc2b              # double 0.8894694497283856
	.quad	0x3fcae8418026582c              # double 0.21021288640321367
	.quad	0x3fdbebd0332bf72e              # double 0.43626790044060015
	.quad	0x3fe63fc6c58be333              # double 0.69528521140373412
	.quad	0x3febeb8a5985e515              # double 0.87250249371496358
	.quad	0x3fe92d0a3402b66f              # double 0.78674802931136678
	.quad	0x3fbf7763d4a09790              # double 0.12291549626442433
	.quad	0x3f5fc219d8d12a00              # double 0.0019383671199358909
	.quad	0x3fca203844addb98              # double 0.20410827020142785
	.quad	0x3fbedfd6aeb415d8              # double 0.12060300603123808
	.quad	0x3fe6b506acf446bc              # double 0.70959790973775894
	.quad	0x3fb9b3a5eb368d80              # double 0.10039746277339212
	.quad	0x3fdc386333e751a0              # double 0.44094162052831543
	.quad	0x3fd3888f2b256544              # double 0.30520991528972652
	.quad	0x3fe808eae3b71bd3              # double 0.75108856654775946
	.quad	0x3fe390d3aecd3914              # double 0.61142906323383039
	.quad	0x3fd0c0a37bdb3354              # double 0.26175772757851701
	.quad	0x3fea768b98b2f4e4              # double 0.82697086166413358
	.quad	0x3fd3ced04e46ccb6              # double 0.30949790615268158
	.quad	0x3fc7ffd5a03b4934              # double 0.1874949486141958
	.quad	0x3fd0270583fe6a1a              # double 0.25238168611545719
	.quad	0x3fe40ee32220f0ce              # double 0.62681728997952191
	.quad	0x3f9d7fee3e4657c0              # double 0.028808329153967582
	.quad	0x3fa9faa77a477f10              # double 0.050740464855833278
	.quad	0x3fc716cb12dcd530              # double 0.18038309498812444
	.quad	0x3fdad332db1c800e              # double 0.41914054296103209
	.quad	0x3feee6f74251ac4a              # double 0.96569407418190534
	.quad	0x3fef4c932e6d3f8b              # double 0.9780975252888181
	.quad	0x3fe4ad30aa37639f              # double 0.64614136929877819
	.quad	0x3fdd4046d3325ebe              # double 0.45704813599284566
	.quad	0x3feb5bb906c2aa4b              # double 0.85494662590401427
	.quad	0x3fda70eb2f83bc9e              # double 0.41314201011750551
	.quad	0x3fb25fa702d76e20              # double 0.071772039598208881
	.quad	0x3fe63a68fecfd6eb              # double 0.69463014381355259
	.quad	0x3febdb85b65a4423              # double 0.87054715743773092
	.quad	0x3fcbf605dd93542c              # double 0.21844552344433177
	.quad	0x3fc84b9c3e2d1138              # double 0.1898074439615216
	.quad	0x3fe0044ad0108bf9              # double 0.50052395475029166
	.quad	0x3fd0a181a6ead79c              # double 0.25985757160685252
	.quad	0x3fe73f435902a066              # double 0.7264725435716286
	.quad	0x3fb36430d7068aa0              # double 0.075747539993737067
	.quad	0x3fcb3883c8f2e2e8              # double 0.21266219436599632
	.quad	0x3fdbf7c6c4c1bd3a              # double 0.43699807371645571
	.quad	0x3fec8e7c4bac18ec              # double 0.89239325313317641
	.quad	0x3fe14b338e893424              # double 0.54042985762646767
	.quad	0x3feebf07edad729c              # double 0.96081921025650585
	.quad	0x3fed544d8b0c848b              # double 0.91654088170993597
	.quad	0x3fdafb4052bd2d88              # double 0.42158516006448865
	.quad	0x3fe8f4ccc58fb89b              # double 0.77988279901707658
	.quad	0x3fe2d36afff26ffd              # double 0.58830785741474723
	.quad	0x3fc7f5ea2f33729c              # double 0.18719222359404319
	.quad	0x3fe3475104be2b3b              # double 0.60245562483155568
	.quad	0x3febd590b8c6a222              # double 0.86981998528523641
	.quad	0x3fee4ea72bca64a5              # double 0.94710119774676527
	.quad	0x3fe320b4ea1ada49              # double 0.59774251674282042
	.quad	0x3fe6d3ad54123117              # double 0.71333948536042413
	.quad	0x3fdf369951bc9e32              # double 0.48770745260341919
	.quad	0x3fd6358d96d16f06              # double 0.34701862076120482
	.quad	0x3feed5425a0cd4b4              # double 0.96353261554636171
	.quad	0x3fa25e9cfcfc4030              # double 0.035878091699601433
	.quad	0x3fedcd3147d7082a              # double 0.93129791289562047
	.quad	0x3fda639d01875db0              # double 0.41232991360945004
	.quad	0x3fec5300974499b1              # double 0.88513211769605082
	.quad	0x3fe2cf8abfa2f55e              # double 0.58783471516623442
	.quad	0x3fddfc21fe5db1a0              # double 0.46851396408490054
	.quad	0x3fe6859807632e5f              # double 0.70380784457070067
	.quad	0x3fc8e3876f6183ec              # double 0.19444363535424658
	.quad	0x3fe4c0543dbea08b              # double 0.64847766932963802
	.quad	0x3fd74e7f0fead3ae              # double 0.36416603617117971
	.quad	0x3fcc9e51e8c74b60              # double 0.22358154169213673
	.quad	0x3fee89c58e2f8782              # double 0.95431783457409858
	.quad	0x3feb32a035a0ea22              # double 0.84992990946131308
	.quad	0x3fc9ddb964715064              # double 0.20207898525643764
	.quad	0x3fb57bcd11300608              # double 0.08392030400866457
	.quad	0x3fd1089b2116a3d2              # double 0.26615026694576926
	.quad	0x3fe3bf2dad014b99              # double 0.61708720960665453
	.quad	0x3feee5d54f1073ea              # double 0.96555581514587385
	.quad	0x3fe37d7a44fe8225              # double 0.60906709170746309
	.quad	0x3fef9864dbe0328e              # double 0.98735278076635935
	.quad	0x3fc5c4c3683ff514              # double 0.170067239669074
	.quad	0x3fd21b6c8d6e5e7c              # double 0.28292383014329636
	.quad	0x3fed4a88657e58a6              # double 0.9153482420249659
	.quad	0x3fcbccb4bd524be4              # double 0.21718463176929881
	.quad	0x3fe219c7d305e4c7              # double 0.56564704146799094
	.quad	0x3fd21b041dbfa766              # double 0.2828989305986539
	.quad	0x3fab48434fa9b970              # double 0.053285697435842105
	.quad	0x3fc97f9c9e491d08              # double 0.19920690277852082
	.quad	0x3fef13fb8f574058              # double 0.97118928905730239
	.quad	0x3fe97678fd3faa9f              # double 0.7957119890464418
	.quad	0x3fe7d46f202dc652              # double 0.74468189511226002
	.quad	0x3fdc82d882450782              # double 0.44548619004864787
	.quad	0x3fd615655ea319c8              # double 0.34505590669541819
	.quad	0x3fe50b47430af7c6              # double 0.65762675375275914
	.quad	0x3fdd82417d2d7b18              # double 0.46107518410092174
	.quad	0x3fd35e6af57c565a              # double 0.30263780568325205
	.quad	0x3fcde1ec5da157c4              # double 0.23345713207043961
	.quad	0x3fdebe9077639e98              # double 0.48038112315269066
	.quad	0x3fe9dd853534af77              # double 0.80829105750807073
	.quad	0x3fc8adf42ae596e8              # double 0.19280864805767028
	.quad	0x3fb5306aff8a13f8              # double 0.082770049464741535
	.quad	0x3fdc2fcb99ba26a6              # double 0.44041719448487482
	.quad	0x3f9fe722b2f88fc0              # double 0.031155149625319956
	.quad	0x3fe4a729443bed6c              # double 0.64540541960688591
	.quad	0x3fd3986615522712              # double 0.30617668230171191
	.quad	0x3f9c85fdf77afec0              # double 0.027854889135368266
	.quad	0x3fef71c17f87f8eb              # double 0.9826362124292961
	.quad	0x3fcfe0adba034e6c              # double 0.24904414732610591
	.quad	0x3fd147cda359db70              # double 0.27000752403494399
	.quad	0x3fb2ce22714de798              # double 0.073457863485513974
	.quad	0x3fe56f2d80145e85              # double 0.6698215009264038
	.quad	0x3fe16073ec431925              # double 0.54302402634565239
	.quad	0x3fe5cf4bdd5e1d55              # double 0.6815547298037169
	.quad	0x3fe4f48b6ebbcb1d              # double 0.65485164287233355
	.quad	0x3fde664a0c2ace22              # double 0.47499324024394884
	.quad	0x3feef2c5fef590a2              # double 0.96713542744375425
	.quad	0x3fc3366123e8e87c              # double 0.15009702924163892
	.quad	0x3f88e95e53a114c0              # double 0.012163865019952147
	.quad	0x3fbfdf8a92d9dd30              # double 0.12450471959333664
	.quad	0x3fdf75640af53b00              # double 0.49153996534452915
	.quad	0x3fe2faa935591d64              # double 0.5930982629733248
	.quad	0x3fe42b7457995b5e              # double 0.63030449971379787
	.quad	0x3f8a8d6283f0b180              # double 0.012964982654090518
	.quad	0x3fec25a96a82d1bd              # double 0.87959738543445776
	.quad	0x3feb93a2a23eaed8              # double 0.86177188576172181
	.quad	0x3fcc1ad48cfe4d2c              # double 0.21956879505578664
	.quad	0x3fc07f825c20ca7c              # double 0.12889127253000143
	.quad	0x3fe6434e6ea65b09              # double 0.6957161103372026
	.quad	0x3fe7398ad5d1a6f2              # double 0.72577420960916883
	.quad	0x3fe0549fde902030              # double 0.51033013791403015
	.quad	0x3fd644d0edb2bbd0              # double 0.34795020306313251
	.quad	0x3fe6ff47ba14ada2              # double 0.71866213172818427
	.quad	0x3fd975d17cd6ff84              # double 0.39781605903044004
	.quad	0x3fad01fecc58ce10              # double 0.056655847973527185
	.quad	0x3fe6908c2fb70b7e              # double 0.70514497107829732
	.quad	0x3fb77a8f8e07fb28              # double 0.091713878799038029
	.quad	0x3fe45f88d319e8fc              # double 0.63666192274766287
	.quad	0x3fe699dc3d2b9e8f              # double 0.70628177592603147
	.quad	0x3fdbf08c42e53534              # double 0.43655687840221735
	.quad	0x3f6b1b5f2b5a9300              # double 0.0033089503075011129
	.quad	0x3fe56817eb9e2f1d              # double 0.66895671862718908
	.quad	0x3fe0c5307dd0460f              # double 0.52407097409212777
	.quad	0x3fef858bff027fe7              # double 0.9850521069201904
	.quad	0x3fcc3e30fc373ad4              # double 0.22064792933675526
	.quad	0x3fed6afbb324f462              # double 0.91930947293407095
	.quad	0x3fe210237a0972a6              # double 0.56447004161198744
	.quad	0x3fd3e911bd2a6a7a              # double 0.31110042069636956
	.quad	0x3feecfc40b0d973f              # double 0.96286203535849057
	.quad	0x3fd719aacccf26ae              # double 0.36094160080811377
	.quad	0x3fc8d474f61963e8              # double 0.19398366943894918
	.quad	0x3fefbc6da093a662              # double 0.99175149309776267
	.quad	0x3fec42519f26d672              # double 0.88309556087797447
	.quad	0x3fc84df1874ab5a0              # double 0.18987864595457626
	.quad	0x3fe6f3f86ce82d00              # double 0.71728154440771164
	.quad	0x3fc97f4046a14180              # double 0.19919589470601906
	.quad	0x3fd95e4442a21fbe              # double 0.39637857920797248
	.quad	0x3fb1593f127b0540              # double 0.067768041622021435
	.quad	0x3fb6cd73690384d8              # double 0.089072430742379693
	.quad	0x3fcea4aab68cf520              # double 0.23940023339847816
	.quad	0x3fd5b4fedf9dc92e              # double 0.33917209470304754
	.quad	0x3feb2619258a8320              # double 0.84840066272963454
	.quad	0x3fd0af809e14032c              # double 0.26071181714364644
	.quad	0x3fe44120720c245b              # double 0.63295004153145429
	.quad	0x3fce691138b67038              # double 0.23758139866993289
	.quad	0x3fe9d67ef967be5a              # double 0.8074335929104095
	.quad	0x3fd57f58ec8afcde              # double 0.33589766597647308
	.quad	0x3fcce1a25c3d8650              # double 0.22563580993578336
	.quad	0x3fd642c717dee5c8              # double 0.34782578784105711
	.quad	0x3fe005e010dc6dc4              # double 0.50071719449209029
	.quad	0x3fc79bf460617e20              # double 0.18444685655684712
	.quad	0x3fe00b308b99da98              # double 0.50136592164820382
	.quad	0x3fe595d4a3b57209              # double 0.67453987097138779
	.quad	0x3fe7a1f452408377              # double 0.73851982178540154
	.quad	0x3f91c10fe01d2c80              # double 0.017338035634832938
	.quad	0x3fd9df9b28746394              # double 0.40427283239983436
	.quad	0x3fe4d456b996aff6              # double 0.65092025993135283
	.quad	0x3f5ffbcdf53cd600              # double 0.0019521247204016268
	.quad	0x3fe13e058fe75252              # double 0.53882101160213325
	.quad	0x3fdf0a52d76c0de8              # double 0.4850051025134392
	.quad	0x3fe688e4fd3a5c1e              # double 0.70421075304591674
	.quad	0x3fea9c9879be5aa8              # double 0.83161567476311848
	.quad	0x3fd0549e63c632a8              # double 0.25516471618247261
	.quad	0x3fd62b53b7b16198              # double 0.34639447153815572
	.quad	0x3fe960fd91b3da43              # double 0.79308966119317181
	.quad	0x3fe761f2a9059d0a              # double 0.73070652973265848
	.quad	0x3fb4f929ace49e98              # double 0.08192692252179723
	.quad	0x3fae93add371f090              # double 0.059720451413313502
	.quad	0x3fdc2ca15aa94b46              # double 0.44022401670115519
	.quad	0x3fec7f8aafdeaadb              # double 0.89056906079835174
	.quad	0x3fe1878fb870164a              # double 0.54779802344337125
	.quad	0x3fda1528d98c0184              # double 0.40754147763075133
	.quad	0x3fc4493a570b23a4              # double 0.15848473787471307
	.quad	0x3fe55c3991f882fa              # double 0.66750792035972428
	.quad	0x3fe4308826a39753              # double 0.63092429682431328
	.quad	0x3fe4b122624cd562              # double 0.64662284087414101
	.quad	0x3fc37de4344b0600              # double 0.15227940133449636
	.quad	0x3fe71acd52522824              # double 0.72202173307710327
	.quad	0x3fe9db36d9db98bd              # double 0.80800955343581615
	.quad	0x3fe7fff76d6d36bb              # double 0.74999591228853235
	.quad	0x3febb8825a8b1bf6              # double 0.86627309498078264
	.quad	0x3fea258435925055              # double 0.81707964385214871
	.quad	0x3fe749b7ef4af6a1              # double 0.72774883973007232
	.quad	0x3fd8f5a6ff7fe4fe              # double 0.38999342871791487
	.quad	0x3fd168902552de32              # double 0.27200702328579773
	.quad	0x3fce74bbba34f8b4              # double 0.23793741790900003
	.quad	0x3fea638c228e787c              # double 0.82465178250619386
	.quad	0x3fecff7bfed9943e              # double 0.90618705535292299
	.quad	0x3fcdb4103292ed84              # double 0.23205759496145728
	.quad	0x3fda9c7871d90c9e              # double 0.41580020063356382
	.quad	0x3feef4a8e9cf762b              # double 0.96736570039837965
	.quad	0x3fea0b8a3bf9a2a1              # double 0.81390868867773147
	.quad	0x3fee1676f9eea054              # double 0.94024227919454483
	.quad	0x3f8f893b17c4fcc0              # double 0.015398465788733495
	.quad	0x3fd55520562efe4c              # double 0.33332069794048347
	.quad	0x3fc776ae9f6052b0              # double 0.18330939085048703
	.quad	0x3fe5e3c2509f1a06              # double 0.68405261751542024
	.quad	0x3fdf6e6f0df729ac              # double 0.4911153446561467
	.quad	0x3fcf6a2ebb1f9570              # double 0.24542793404468055
	.quad	0x3fe0c8488ff04760              # double 0.52444866288190539
	.quad	0x3fd01725a230c8e6              # double 0.25141278113291177
	.quad	0x3fe2b2b0a833aa2f              # double 0.58431275226513957
	.quad	0x3fe9b3b920d3ec28              # double 0.80318886195835137
	.quad	0x3fee9282c331b6c2              # double 0.95538461803308672
	.quad	0x3fc53e1a9901cd60              # double 0.16595776053473354
	.quad	0x3fd33eb711ddf448              # double 0.30070282692742412
	.quad	0x3f63ea4bb8d07a00              # double 0.0024310568756071849
	.quad	0x3fc43af9a827c7b0              # double 0.15804978094780386
	.quad	0x3fcb24d6f83d8c8c              # double 0.21206175919642012
	.quad	0x3fe68e89f42c4255              # double 0.70489976587311765
	.quad	0x3fe5bbdfcafd2409              # double 0.6791838612199409
	.quad	0x3fe7a9f7ad8de6df              # double 0.73949798486065876
	.quad	0x3fe55f36445e39fd              # double 0.66787255623950126
	.quad	0x3fe4e2e04a458c72              # double 0.65269484049021131
	.quad	0x3fd680c29e7347c4              # double 0.35160890077269991
	.quad	0x3fc6cc7056ce70ec              # double 0.17811397780031457
	.quad	0x3fd8f148d76571fa              # double 0.38972683939735442
	.quad	0x3fef3fe90ab731fa              # double 0.97655155270473348
	.quad	0x3fba03daffed8280              # double 0.10162132976757654
	.quad	0x3fe4b51c4aa08543              # double 0.64710821700661147
	.quad	0x3fe0bf7a2ecfc715              # double 0.52337369101425912
	.quad	0x3fe6b181b0216075              # double 0.70916828537430254
	.quad	0x3fecac3cf756c2a9              # double 0.89602516468410898
	.quad	0x3fd4a9134a465778              # double 0.32281954053302497
	.quad	0x3f678644b128f300              # double 0.002871641315577711
	.quad	0x3fe6573236b2b8bc              # double 0.69814406092861914
	.quad	0x3fdf92db57a44296              # double 0.493338428103962
	.quad	0x3fc336378ec1fdc0              # double 0.15009207220644605
	.quad	0x3fe1e9facf712825              # double 0.55981197849292086
	.quad	0x3fea9132ce1c7b95              # double 0.83022442108255012
	.quad	0x3fe4ddd2a345c4bf              # double 0.65207797898451492
	.quad	0x3fc3d252671f2fa4              # double 0.15485601458783294
	.quad	0x3fd1435395ba7bdc              # double 0.26973428365630325
	.quad	0x3fd1906d13926644              # double 0.27444006835284918
	.quad	0x3fe3e8d5a4bb8f3e              # double 0.622172185653177
	.quad	0x3fe1cf74075f2d9a              # double 0.55657388152887965
	.quad	0x3fba8b56ad5d0ae8              # double 0.10368863804346129
	.quad	0x3fecc5508238b419              # double 0.89908624109159796
	.quad	0x3fc8494796c35c08              # double 0.18973631726723306
	.quad	0x3fb1067ab39549f8              # double 0.066505116313500312
	.quad	0x3fed0f0607b0ff20              # double 0.90808393003678489
	.quad	0x3fee0b6e60089934              # double 0.93889540440139862
	.quad	0x3fe1f4d37cd47b73              # double 0.56113600140439102
	.quad	0x3fc8d97a74f18060              # double 0.19413691244244813
	.quad	0x3fe6756ed3f3baf9              # double 0.70183507344140061
	.quad	0x3fd1c087e17f78d2              # double 0.27737614651949827
	.quad	0x3fee94d5f39c54ef              # double 0.95566842632493187
	.quad	0x3fd40ee959875aa2              # double 0.31341012709655491
	.quad	0x3fd9ba189fe300fc              # double 0.40198341001452298
	.quad	0x3fe5c31dc7df232d              # double 0.68006791150501089
	.quad	0x3fe214d299e527a8              # double 0.56504182870525188
	.quad	0x3fc9dea9209fe218              # double 0.20210756390567108
	.quad	0x3fd52d166920643c              # double 0.33087692514670031
	.quad	0x3fd2f824ba845c3a              # double 0.29639547552637036
	.quad	0x3fd47ea352d20862              # double 0.32022936904843935
	.quad	0x3fd0c75976379654              # double 0.26216732544557897
	.quad	0x3fe2b0a433e703bd              # double 0.58406267296970038
	.quad	0x3fdff3c46496cada              # double 0.49925336669109088
	.quad	0x3fd56ef26ed851fc              # double 0.33489666771609428
	.quad	0x3fe884ee58c92c80              # double 0.76622693387015772
	.quad	0x3fd0d011ea0fc9fa              # double 0.26269958360276713
	.quad	0x3fb5b6ddfb8025b0              # double 0.084821580792911133
	.quad	0x3fe6fa84dce2fc91              # double 0.71808093206336043
	.quad	0x3fd44e791a22514c              # double 0.31728961517480481
	.quad	0x3fd85de7ecd1ed82              # double 0.38073156477886283
	.quad	0x3f8ae0204a818e00              # double 0.013122799180741218
	.quad	0x3f883931fbf28900              # double 0.011827841283154061
	.quad	0x3fe4d7530bd58e68              # double 0.6512847167145539
	.quad	0x3fddc87482498602              # double 0.4653598091445873
	.quad	0x3fd3f2444762c8ec              # double 0.3116617867591589
	.quad	0x3fd4c9adefd7c756              # double 0.32480953619152808
	.quad	0x3fb0e98f5970d0f0              # double 0.066063842140298368
	.quad	0x3fe031640e8554ac              # double 0.50602915607546128
	.quad	0x3f700b1822983380              # double 0.0039168303278643846
	.quad	0x3fd5222cd33b94e8              # double 0.33021088245580055
	.quad	0x3fd17fa388d91992              # double 0.27341545452181848
	.quad	0x3fbd8d44d092aa80              # double 0.11543684093582307
	.quad	0x3fd0227cbb0c8f86              # double 0.25210493341932538
	.quad	0x3fc6b2fd534757ac              # double 0.17733732763616439
	.quad	0x3fedbfdd1e6b8d3f              # double 0.92967086736135929
	.quad	0x3f83174c90429b00              # double 0.0093217832112038046
	.quad	0x3fe59a439fe064fa              # double 0.67508107400786277
	.quad	0x3fea073c9bc632ce              # double 0.81338339256907388
	.quad	0x3fe7c11ead6160db              # double 0.7423241983733776
	.quad	0x3fef7061ea75c08b              # double 0.98246856492007006
	.quad	0x3fc3c0494ad6c030              # double 0.15430561212770177
	.quad	0x3fb826550dfa6998              # double 0.094334903633728096
	.quad	0x3fcab5f6fd8ee16c              # double 0.2086781251980584
	.quad	0x3fecc6eefb26808f              # double 0.89928387692272505
	.quad	0x3fcbdaa8261734fc              # double 0.21761037692923668
	.quad	0x3fbf01ff4c874fa0              # double 0.12112422579167381
	.quad	0x3fb6bc5ff8e01608              # double 0.088811872730808372
	.quad	0x3fd37063cb0d1dfa              # double 0.30373473004553342
	.quad	0x3fe37c8dfb20d145              # double 0.60895442055201754
	.quad	0x3fd8d819068f7bfc              # double 0.38818956032440588
	.quad	0x3fe062053f1a6a56              # double 0.51196539234963256
	.quad	0x3fe71a9809969a09              # double 0.7219963252326248
	.quad	0x3fdb4bc40e2a699e              # double 0.42649937995306597
	.quad	0x3fe796849c56ff11              # double 0.73712378058550787
	.quad	0x3fd61080754f60e2              # double 0.34475718933164334
	.quad	0x3fc84f6caf803418              # double 0.18992384499907256
	.quad	0x3fc74ad4fa6f0898              # double 0.18197118976792548
	.quad	0x3fd2f96a1837d3b4              # double 0.29647304883047387
	.quad	0x3fd14cdb517932c4              # double 0.27031596142186864
	.quad	0x3fb5fbaf73b0c440              # double 0.085871663803815501
	.quad	0x3fe7a6c93ef16692              # double 0.73910963338421909
	.quad	0x3fdfc69305a7e40a              # double 0.49649501373602389
	.quad	0x3febfbfa7a94d27c              # double 0.87450908605258304
	.quad	0x3fceb492da558160              # double 0.23988567028846841
	.quad	0x3fec52565356ab7f              # double 0.88505092885075942
	.quad	0x3fec26e95a3d8673              # double 0.87974994301857945
	.quad	0x3fbf74715a761ad0              # double 0.12287052591828318
	.quad	0x3fe2b9173d8299d2              # double 0.5850940896387391
	.quad	0x3fab87cbb846ad70              # double 0.05377041458572307
	.quad	0x3fedf1922517e2f4              # double 0.93573863262926559
	.quad	0x3fe7dabcdfdc0b6a              # double 0.74545139048164555
	.quad	0x3fc7bbd221d0d518              # double 0.18541933680686706
	.quad	0x3fb0519c812f93e0              # double 0.063745290317072101
	.quad	0x3fe1f48c2b2953f4              # double 0.56110199384659021
	.quad	0x3fe2bd464ef4086a              # double 0.58560481472546866
	.quad	0x3fee0ee3cc376497              # double 0.93931760679255916
	.quad	0x3fdd3f5e3a10a4ba              # double 0.45699268026744344
	.quad	0x3fc4792a6773e0cc              # double 0.15994768191717978
	.quad	0x3feeb96b287e9ca3              # double 0.96013410481545624
	.quad	0x3fe6b9cce7d6c2c0              # double 0.71018071442639297
	.quad	0x3fef7922edd73714              # double 0.98353716328867557
	.quad	0x3fe24cfc050c3339              # double 0.57189751611586026
	.quad	0x3fd9998de30b3044              # double 0.39999720737683142
	.quad	0x3fe3171f7a57d433              # double 0.59657262702115188
	.quad	0x3fa609592f92e6e0              # double 0.04304007249579711
	.quad	0x3fec503d99c04d52              # double 0.88479499845053966
	.quad	0x3fec3733dbee2384              # double 0.88173859553454336
	.quad	0x3fd2511bbe5379de              # double 0.286200462212859
	.quad	0x3fcd850ebae9b114              # double 0.2306230938587609
	.quad	0x3fdb9895b3f7b5d6              # double 0.4311880357261918
	.quad	0x3febf3f4da64c913              # double 0.87352984099405473
	.quad	0x3fee60474dd6a031              # double 0.94925275042351676
	.quad	0x3fcf15ad5c1dfc0c              # double 0.24284903524309731
	.quad	0x3fc6eb9ab9e1dbb4              # double 0.17906507564813767
	.quad	0x3fdf00c52e1d1388              # double 0.48442201140670038
	.quad	0x3fea033b7d24ed01              # double 0.81289457742914817
	.quad	0x3fc4076b504288b0              # double 0.15647641581478444
	.quad	0x3fee0e421c244436              # double 0.93924050804537873
	.quad	0x3fc1719e07a0bf58              # double 0.13627982494790092
	.quad	0x3fd248b2f9b916f4              # double 0.28568720232975342
	.quad	0x3fe5a9a3eb47c769              # double 0.67695804551315775
	.quad	0x3fee3a4730582d48              # double 0.94461402361177082
	.quad	0x3fe6ed245f25ab30              # double 0.71644800742556036
	.quad	0x3fbb78cbf4cca920              # double 0.10731196142720423
	.quad	0x3fe33f89d67ffa8b              # double 0.60150615591540324
	.quad	0x3fc5909d665537c8              # double 0.16847579476092123
	.quad	0x3fefe07c23b1674f              # double 0.99615294429097811
	.quad	0x3fc60beb23c910f8              # double 0.17223872420630193
	.quad	0x3fefca98abc5561e              # double 0.99348100232117864
	.quad	0x3fd33b5eb954cdfe              # double 0.3004986581683794
	.quad	0x3fefeeea6cd6d63a              # double 0.99791451699883926
	.quad	0x3feed9239d1c2c70              # double 0.96400623975331534
	.quad	0x3fd59b77eae1e826              # double 0.33761403978098981
	.quad	0x3fe81315ef63d358              # double 0.75232979541633949
	.quad	0x3fecebd18649fbb9              # double 0.90378643253631374
	.quad	0x3fee2a8d4dc52887              # double 0.94269433202249864
	.quad	0x3fda0a0ee20ee0b2              # double 0.4068638999556341
	.quad	0x3fc7dafb7489ce14              # double 0.1863703078303024
	.quad	0x3fdfd30fe36ed95e              # double 0.4972572060609276
	.quad	0x3fdc770d3aaea38a              # double 0.44476633768731999
	.quad	0x3fe5e4e8b2429fed              # double 0.68419298950629825
	.quad	0x3fee1c6e9027a9cd              # double 0.94097068934689221
	.quad	0x3fc7e6b6ca1ca1e8              # double 0.18672833317511039
	.quad	0x3fba0a1c21de7a70              # double 0.10171676470643276
	.quad	0x3fe3572dc97b7851              # double 0.60439195014965652
	.quad	0x3fe08041286de4cd              # double 0.51565606972067146
	.quad	0x3fec987eab15f0f4              # double 0.89361508765389752
	.quad	0x3fe2a2e17fb97d88              # double 0.58238291689114963
	.quad	0x3fa0a9fdeec3e010              # double 0.03254693545926568
	.quad	0x3f9a43a33394a060              # double 0.025648641608455924
	.quad	0x3fe6c3a3ba76b9a9              # double 0.71138178271012464
	.quad	0x3fa5abfb685e8a50              # double 0.042327743997948475
	.quad	0x3fe018fe28924d1c              # double 0.50305087970847095
	.quad	0x3fd69a5d228f7088              # double 0.35317161917715412
	.quad	0x3fe8e63c36d733d5              # double 0.77810488425313429
	.quad	0x3fd7cdf079843d62              # double 0.37194454066135141
	.quad	0x3fc5ed66eaa045b4              # double 0.17130743461943398
	.quad	0x3fee8f322a51a211              # double 0.9549799753704652
	.quad	0x3fe90262ec8f20d5              # double 0.78154131129215421
	.quad	0x3fe6e2cc9316f819              # double 0.7151854393812328
	.quad	0x3fe1b77d8204fc24              # double 0.55364871401241489
	.quad	0x3fd22e5275a0b144              # double 0.28407727706032326
	.quad	0x3fe3c334ec1af22f              # double 0.61757894625003995
	.quad	0x3fe8bd0602bcf67f              # double 0.77307415518562539
	.quad	0x3fe7c171ccdea721              # double 0.74236383451100008
	.quad	0x3fe0d32bb131c827              # double 0.52577766998570474
	.quad	0x3f9718b87f908ee0              # double 0.022555239473276312
	.quad	0x3fd1d66b319413a2              # double 0.27871208039896989
	.quad	0x3fec526722e3c52a              # double 0.88505894483947611
	.quad	0x3fed73741911724b              # double 0.92034344574091997
	.quad	0x3fdf05d6124bd6f4              # double 0.48473121439688716
	.quad	0x3febd93c8cdcd91a              # double 0.87026813041919415
	.quad	0x3fc671d768ef771c              # double 0.17534916518973709
	.quad	0x3fed0c5e8e25045e              # double 0.90775993120781684
	.quad	0x3fd87a7a708d76ec              # double 0.38247548095192374
	.quad	0x3fee3966819820f8              # double 0.94450688659074355
	.quad	0x3fd4d35a8c937de4              # double 0.32540000656260148
	.quad	0x3fb255829fa41e10              # double 0.071617282843469576
	.quad	0x3fdb86676ce6a4ee              # double 0.43007836947306444
	.quad	0x3f8458d41e82ee00              # double 0.0099350520907739436
	.quad	0x3fea96bd015cbad6              # double 0.83090067163524384
	.quad	0x3fec689eb86298c0              # double 0.88777099621508881
	.quad	0x3fd71c8582c97b3c              # double 0.36111581585094021
	.quad	0x3fd818490f6bc812              # double 0.37648226266821994
	.quad	0x3fd5dab2254e7e26              # double 0.34147313731407036
	.quad	0x3fd2ddc03ad35c12              # double 0.29478460068406875
	.quad	0x3fe952aa610bd9f3              # double 0.79134100870470403
	.quad	0x3fc6cde6253f2a58              # double 0.17815853899658651
	.quad	0x3fb23198124efb08              # double 0.071069244832852374
	.quad	0x3fcf087b91fbd838              # double 0.24244637134660407
	.quad	0x3fe4fee897faa234              # double 0.65611676867872015
	.quad	0x3fe53e04ca91c324              # double 0.66382064403851304
	.quad	0x3fe5f723548f30d1              # double 0.68641821399207903
	.quad	0x3fea4ba40340b480              # double 0.82173348079017217
	.quad	0x3fee6e751f3fe4cd              # double 0.95098358252939763
	.quad	0x3fe0c345925d2fb5              # double 0.52383688532562778
	.quad	0x3fdd56469508a2c6              # double 0.45839085153651771
	.quad	0x3fe47a76026c86b9              # double 0.63994884942459074
	.quad	0x3fe894ddadb06d21              # double 0.76817211078324388
	.quad	0x3fe37ab781e58709              # double 0.60873008127620765
	.quad	0x3febe7c3eca124a5              # double 0.8720416661900755
	.quad	0x3fd7834c5f9809e0              # double 0.36738881430951942
	.quad	0x3fe8e7fe550d407a              # double 0.77831951724694126
	.quad	0x3fceeaf4d9d37250              # double 0.24154530178101874
	.quad	0x3fed2345e04900b6              # double 0.91055578046509456
	.quad	0x3fdcd007b4e4ca1c              # double 0.45019714990044846
	.quad	0x3fc0323e32b19c4c              # double 0.12653329348833819
	.quad	0x3fd34155e6de87d8              # double 0.30086276574922755
	.quad	0x3fde61c31e66216a              # double 0.47471693009040072
	.quad	0x3fd4030c15bac488              # double 0.31268598672893022
	.quad	0x3fca2d7783f71cb8              # double 0.20451253837220462
	.quad	0x3fee6134ee8b3729              # double 0.94936606016719793
	.quad	0x3fede9d681c9e916              # double 0.9347946677146719
	.quad	0x3fe83fb6045f02dd              # double 0.75777722219217092
	.quad	0x3fe2b4b25cf1e194              # double 0.58455770638743099
	.quad	0x3fd2a31eea87bb60              # double 0.2912061014493954
	.quad	0x3fb49808129667f8              # double 0.080444817102403365
	.quad	0x3fa2abb28f8e0d40              # double 0.036466197990217442
	.quad	0x3fe615b81eaf8d34              # double 0.69015127175626967
	.quad	0x3fded511041890e8              # double 0.48175454521175576
	.quad	0x3fe1f07c627d3622              # double 0.56060618625787506
	.quad	0x3feaf8365b21466e              # double 0.84279935644935988
	.quad	0x3fdd0df4b3fab1b4              # double 0.45397679878331165
	.quad	0x3fe73236de88c5d0              # double 0.7248796793339185
	.quad	0x3fd6bc5b869c126c              # double 0.35524643083070973
	.quad	0x3fefc11a12864375              # double 0.99232200258312153
	.quad	0x3fd3a82dc7777090              # double 0.30713982085377101
	.quad	0x3fcd88c72e2bd30c              # double 0.23073663477375594
	.quad	0x3fe90d3d5fa69b30              # double 0.78286617929265923
	.quad	0x3fd608c980a8e948              # double 0.34428632320818453
	.quad	0x3fe99d25f6725525              # double 0.80043314107993935
	.quad	0x3fe7cff8a2613bb0              # double 0.74413711275871286
	.quad	0x3fc0d7f158b7e800              # double 0.13159005004837354
	.quad	0x3fd553d44aa4e320              # double 0.33324153222524622
	.quad	0x3fee9fef2f73024a              # double 0.95702323214943275
	.quad	0x3fe7ce57db484578              # double 0.74393837765289472
	.quad	0x3feae08889d97d94              # double 0.83990885661835301
	.quad	0x3fe60e81a73f86e1              # double 0.68927080789236694
	.quad	0x3fe9e1569cf73140              # double 0.80875712067931005
	.quad	0x3fc5cdbf867d5804              # double 0.17034143511654076
	.quad	0x3fcc640998e88128              # double 0.22180290189954488
	.quad	0x3fe31010cb4ba1f6              # double 0.59571113306179657
	.quad	0x3fe9c8dfada207c2              # double 0.80577072060281574
	.quad	0x3fc3ab574ef7018c              # double 0.1536664138384477
	.quad	0x3fe90046fe99e839              # double 0.7812838528327638
	.quad	0x3fdea9d6bf996a42              # double 0.47911614142291026
	.quad	0x3fbc163e428b20f8              # double 0.10971440434071045
	.quad	0x3fd0ad60a8e9678e              # double 0.26058212752615695
	.quad	0x3fedf6e13688087e              # double 0.93638668680820536
	.quad	0x3fea47b31125628e              # double 0.82125237797579742
	.quad	0x3fea8efd2d4754de              # double 0.82995470851406217
	.quad	0x3fd50b3e96f0c55c              # double 0.32881130924496005
	.quad	0x3fe2b99112d70a4d              # double 0.58515218429267579
	.quad	0x3fd8a8a5be653edc              # double 0.38529342263517008
	.quad	0x3fe5ed712b763ed8              # double 0.6852346276154675
	.quad	0x3faea34258914330              # double 0.059839318572477374
	.quad	0x3fe7952603bae329              # double 0.73695660332223156
	.quad	0x3fc9fe2db1df44e8              # double 0.20306941208995188
	.quad	0x3fb4292593742228              # double 0.078752850055146539
	.quad	0x3feb65ffad1d43dd              # double 0.85620101748838418
	.quad	0x3fdaa0beb07084e2              # double 0.41606108885214443
	.quad	0x3fea9f0fc18422c7              # double 0.83191669269680169
	.quad	0x3feb623c43a8910a              # double 0.85574162687820032
	.quad	0x3fd0aaf06fc6f020              # double 0.26043330112202234
	.quad	0x3fe34e2abab42a7e              # double 0.60329185929852236
	.quad	0x3fe33e21d4919b1a              # double 0.60133449094141445
	.quad	0x3fdab41f4929a724              # double 0.41724378723903244
	.quad	0x3fecada7cf5f2aca              # double 0.89619818212789792
	.quad	0x3fc9ab0906e04784              # double 0.20053208194491046
	.quad	0x3fded26e3ca231b2              # double 0.48159366532561443
	.quad	0x3fcf24fe8781cc6c              # double 0.24331647507242182
	.quad	0x3fd5f5d4ad75ba92              # double 0.34312931956711978
	.quad	0x3fd6afe49795007a              # double 0.35448565295155954
	.quad	0x3fec1a08b0d7b845              # double 0.87817797221738003
	.quad	0x3fde76dcb91d4dc0              # double 0.47600477292618493
	.quad	0x3fa3773d92d7cec0              # double 0.038019107985659328
	.quad	0x3f794d4cea391a80              # double 0.0061772350778200869
	.quad	0x3fd078918522665c              # double 0.25735891343501804
	.quad	0x3febe94786ff546c              # double 0.87222648970295102
	.quad	0x3fe95a8ba04f00b3              # double 0.79230290708803464
	.quad	0x3fc2bdf7ff98fed8              # double 0.14642238598206947
	.quad	0x3fdf8f1cbee87a68              # double 0.4931098808610046
	.quad	0x3fdb14016b0a68f8              # double 0.42309604123296607
	.quad	0x3fe1039f998a9f6b              # double 0.53169231403897521
	.quad	0x3fe7d09349723f66              # double 0.74421085686661281
	.quad	0x3fdd4490cd3d6192              # double 0.45730991404482169
	.quad	0x3fdd83413e42ccd0              # double 0.46113616066140839
	.quad	0x3fd0d6b5b520500c              # double 0.26310484588725624
	.quad	0x3fbe1c8fe0a4d9a8              # double 0.11762332186194746
	.quad	0x3fd3f975ec30e11c              # double 0.31210086884995447
	.quad	0x3fe281a30fb523af              # double 0.57832482402692686
	.quad	0x3fe2fb0cf77075fc              # double 0.59314583137501087
	.quad	0x3fe75150d8937d4c              # double 0.7286762456896354
	.quad	0x3fe722ed0c79da1e              # double 0.72301342426982607
	.quad	0x3feb3c81e5b870e9              # double 0.85113615863113268
	.quad	0x3fd50c57a4d929d8              # double 0.32887831781832011
	.quad	0x3feac597d8b2b317              # double 0.8366202576049514
	.quad	0x3fec0e25719bdb52              # double 0.87672683896276227
	.quad	0x3febd2f6406d0365              # double 0.86950218756838338
	.quad	0x3fe32174596cadde              # double 0.59783379998901487
	.quad	0x3fc8b30e8df6c420              # double 0.19296438152153517
	.quad	0x3feafe94209bde43              # double 0.84357649201314933
	.quad	0x3fd23e446516c02c              # double 0.2850504862972254
	.quad	0x3feccdf45da10c56              # double 0.90014093672688023
	.quad	0x3fb722e93fa35c90              # double 0.0903764515272647
	.quad	0x3fdefa2fd58e2f06              # double 0.4840201936246874
	.quad	0x3fdd7ea8251c3888              # double 0.46085551857039109
	.quad	0x3fe9088c76ef46d9              # double 0.78229354123524353
	.quad	0x3fe16b9198b2c3c4              # double 0.54438094924818659
	.quad	0x3fe3fc1827fca5d0              # double 0.62452323732321169
	.quad	0x3fea69b1dab326b9              # double 0.82540219034964146
	.quad	0x3fe26f4666281ad2              # double 0.57608337357018002
	.quad	0x3fe840728bc140be              # double 0.7578671197498108
	.quad	0x3feb51aaa844b4ea              # double 0.85371907105368661
	.quad	0x3fec36f521919ea2              # double 0.88170868450557216
	.quad	0x3fee6c9975d772aa              # double 0.95075676933227737
	.quad	0x3f9c19b0af77a960              # double 0.027441750249559305
	.quad	0x3fea3dbe64b8f756              # double 0.82003707573287943
	.quad	0x3fe3da55887d0cfc              # double 0.6204021135130513
	.quad	0x3fe1167b1d9c533f              # double 0.5339942529995837
	.quad	0x3fd504e555971e06              # double 0.32842381819179456
	.quad	0x3fa882182709e670              # double 0.047867541089499421
	.quad	0x3fe64de2f436663e              # double 0.69700763414147793
	.quad	0x3fd1374aba0091ca              # double 0.26899974979667418
	.quad	0x3fe940473dd099ce              # double 0.7890964705773571
	.quad	0x3fd296a024e50ad8              # double 0.29044345477102018
	.quad	0x3f803566678e9100              # double 0.0079143524506624097
	.quad	0x3fd9ab3acdbe846a              # double 0.40107603161056338
	.quad	0x3fd7f00c8a07480a              # double 0.3740264270719541
	.quad	0x3feaa5d228fc02bc              # double 0.83274181370514765
	.quad	0x3fdd252918683248              # double 0.45539309867379929
	.quad	0x3f9dc3da0e796c00              # double 0.029067427762452525
	.quad	0x3fd819d9a3482784              # double 0.37657776780599073
	.quad	0x3fd31697dfc7ec7e              # double 0.29825398305519701
	.quad	0x3fd3ba801a961fd4              # double 0.30825808140116107
	.quad	0x3fe8b2eb8310bb45              # double 0.77184081648543013
	.quad	0x3fe4eeb5cf952f83              # double 0.65413942855364871
	.quad	0x3fe37717a0f71c00              # double 0.60828763426331989
	.quad	0x3fdc234104ab8e68              # double 0.43965173202579999
	.quad	0x3fec3134e21e8856              # double 0.88100666202468392
	.quad	0x3fea508f359c2e61              # double 0.82233391257018351
	.quad	0x3fe8df542ab9e7f7              # double 0.77726181359253033
	.quad	0x3fc3b46388acd8c8              # double 0.1539425294265071
	.quad	0x3fe9330269af1267              # double 0.78747673646337268
	.quad	0x3fb84c7ae36da6f0              # double 0.09491699268769671
	.quad	0x3fb818b162d1fdf8              # double 0.094126783968014993
	.quad	0x3feb7f016663b8c2              # double 0.85925359724003436
	.quad	0x3fc8f6afe38ae060              # double 0.19502829180214842
	.quad	0x3fe4774512a8742d              # double 0.6395593037046915
	.quad	0x3fe9533f1c9bb636              # double 0.79141192996548315
	.quad	0x3fbf996addc3f438              # double 0.12343471445270005
	.quad	0x3fb8fa53b81b90b8              # double 0.097569687317050291
	.quad	0x3fa3b56fee3e3410              # double 0.038493631203074696
	.quad	0x3fe0e7cd708a6f84              # double 0.52829620342843997
	.quad	0x3fe0b036743c6cd5              # double 0.52151034071303093
	.quad	0x3fb9c3d75be3b6a8              # double 0.100644550260507
	.quad	0x3fe5eb70d552bd2d              # double 0.68499032654464076
	.quad	0x3fd70b59d5e0a5be              # double 0.36006780516126102
	.quad	0x3febf35c72158054              # double 0.87345716745404411
	.quad	0x3fc32c38bd551f10              # double 0.14978703732253296
	.quad	0x3fe0aaf3a6456c35              # double 0.52086813425865464
	.quad	0x3fe400b49e29b3ed              # double 0.6250861252898382
	.quad	0x3fee875220e3292a              # double 0.95401865409192976
	.quad	0x3fe9b09081dda884              # double 0.80280328144478163
	.quad	0x3fb0d10f014a93b0              # double 0.065689981284392074
	.quad	0x3fdc4193eb53ca70              # double 0.44150255185301202
	.quad	0x3fbd205ce9acb5a0              # double 0.11377506928393766
	.quad	0x3fd13bc7e93bc988              # double 0.26927373673165578
	.quad	0x3faed9fe1bd75040              # double 0.060256901644294647
	.quad	0x3fec9b2345a39d43              # double 0.89393771745100314
	.quad	0x3fe8551ca0246dc5              # double 0.76038962629120788
	.quad	0x3fe137de3dab683b              # double 0.53806983990512636
	.quad	0x3fe4bbfc488292a8              # double 0.64794744646186064
	.quad	0x3fb7702932ee3d28              # double 0.091555190023644983
	.quad	0x3fc26b5bcfc24e6c              # double 0.14390132565005176
	.quad	0x3fd31e8287152970              # double 0.29873717490831719
	.quad	0x3feaf6efc5109065              # double 0.84264362801742421
	.quad	0x3fdb2638adb755b0              # double 0.42420784916370291
	.quad	0x3f912137919ffd00              # double 0.016728275550119243
	.quad	0x3fde46d39a33e8f8              # double 0.47307291087021452
	.quad	0x3fe117abeaed97df              # double 0.53413959392923605
	.quad	0x3f60ee5b4b010a00              # double 0.0020667822900872768
	.quad	0x3fcf1361e6410d10              # double 0.24277900450588463
	.quad	0x3fe7941d909d240e              # double 0.73683050389183946
	.quad	0x3fd67198d7b79054              # double 0.35068341318242813
	.quad	0x3fedcbe3f986b05d              # double 0.93113898025104513
	.quad	0x3fcf2703900624a8              # double 0.24337811024114342
	.quad	0x3fec411eddbbe2de              # double 0.8829492884388761
	.quad	0x3fdae834f0ee659e              # double 0.42042277840081421
	.quad	0x3fe4dccbe41d06fe              # double 0.65195269158741076
	.quad	0x3fc1ee8cf17f8830              # double 0.14009248535063668
	.quad	0x3fce64254f2ebfc4              # double 0.23743120542849117
	.quad	0x3fdf8e17d0d720ac              # double 0.49304767031254459
	.quad	0x3fe3b309adffdf4a              # double 0.61560520157125009
	.quad	0x3fb5ff6d1b8d24d8              # double 0.085928744532015044
	.quad	0x3fcd769bf9ee255c              # double 0.23018216804147584
	.quad	0x3fcf6ad410cf9904              # double 0.24544764347883341
	.quad	0x3fe34e8f5e5641ff              # double 0.60333984780487515
	.quad	0x3fd76a115e13b686              # double 0.36584886729438215
	.quad	0x3fd7c605e685181c              # double 0.37146136771878147
	.quad	0x3fd291e75b363dda              # double 0.29015525729570657
	.quad	0x3fb69463aa797ba0              # double 0.088201741332780248
	.quad	0x3fe1cbf996c651fc              # double 0.55614928672963471
	.quad	0x3fe8f5703d789b9f              # double 0.77996074682311078
	.quad	0x3fc52b1e5eff1a10              # double 0.16537837637425001
	.quad	0x3fe14da8b3e49435              # double 0.54072985778169047
	.quad	0x3fc81e76154f0fec              # double 0.18842960396261732
	.quad	0x3fd568cbcb618084              # double 0.33452124463475053
	.quad	0x3fee4a606a89f684              # double 0.9465791779363859
	.quad	0x3fe0a7cf028d14f7              # double 0.52048445223104423
	.quad	0x3fc8936678d87f4c              # double 0.19199829960506987
	.quad	0x3feecb185e2561c9              # double 0.96229189288993055
	.quad	0x3fda750e5e25ebd6              # double 0.41339453882363608
	.quad	0x3fefd4c2116f7846              # double 0.99472144513470862
	.quad	0x3fc231a458e65540              # double 0.14213995304877791
	.quad	0x3f893a298e444240              # double 0.01231796708501165
	.quad	0x3feb704282db76d1              # double 0.85745358999312249
	.quad	0x3fe54d4b2b11c3cb              # double 0.6656852570723627
	.quad	0x3fe5b31c7a00d2cc              # double 0.6781141646266291
	.quad	0x3fd5edfc10f4ffda              # double 0.34265042930564749
	.quad	0x3fc218ce16c69c80              # double 0.14138198959446768
	.quad	0x3fd3b41451e7a6a0              # double 0.30786617277645156
	.quad	0x3fe552bcb0cf1794              # double 0.66634974034308181
	.quad	0x3fb972f800e15538              # double 0.099410534109968363
	.quad	0x3fdb0a2e8ccabd50              # double 0.42249644993986113
	.quad	0x3fe4fa96a0c0fac4              # double 0.6555894031260654
	.quad	0x3f9eea6f54a619e0              # double 0.030191173116259296
	.quad	0x3feb74caa0d5ff7f              # double 0.85800677693622152
	.quad	0x3fe3914049d9e047              # double 0.61148085044897804
	.quad	0x3fe165cd4d8000c8              # double 0.54367699753495291
	.quad	0x3fb84cda82f65858              # double 0.094922692273344267
	.quad	0x3fae21d0da79b6f0              # double 0.058851744336477441
	.quad	0x3f9108dd0e57c140              # double 0.016635374069609243
	.quad	0x3fe1dd22d5f7a550              # double 0.55824415007115569
	.quad	0x3fed4c48bb821860              # double 0.9155620252866008
	.quad	0x3fc45bee5eba721c              # double 0.15905551553159192
	.quad	0x3fe63b51ce930dfb              # double 0.69474115702217831
	.quad	0x3fd185fd8c1e102a              # double 0.27380312617629221
	.quad	0x3feaaab64860d7f9              # double 0.83333887230287396
	.quad	0x3fda5287df59f7dc              # double 0.41128727733291526
	.quad	0x3fd0283a54711e20              # double 0.25245531317020387
	.quad	0x3f6fa470e6324000              # double 0.0038625912726004685
	.quad	0x3fe3fe0ad2976672              # double 0.62476102000364464
	.quad	0x3fec8fecf16b450d              # double 0.89256903793480691
	.quad	0x3fd86e9ce9be29a6              # double 0.38175127817580756
	.quad	0x3fe7343403c87191              # double 0.72512245882858128
	.quad	0x3fe734171025eef1              # double 0.72510865358296261
	.quad	0x3fc479f23fb59888              # double 0.15997150526817827
	.quad	0x3fb8ba3665ed5fa8              # double 0.096591377148227964
	.quad	0x3fedda4149dd2528              # double 0.93289246012242177
	.quad	0x3fd9b722329d9b74              # double 0.40180258696493998
	.quad	0x3fc173720f6d4a24              # double 0.13633561852709974
	.quad	0x3fc2c2bdecb03000              # double 0.1465680509285221
	.quad	0x3fea0b9437f6a026              # double 0.81391344957683454
	.quad	0x3fe192ae0a9b0da0              # double 0.54915525504513951
	.quad	0x3fc5d08ae27575ac              # double 0.17042671258506681
	.quad	0x3fd204f130785834              # double 0.28155164464385796
	.quad	0x3fe1412b5e875aac              # double 0.53920525038377809
	.quad	0x3fe49220dcc2afd0              # double 0.642837935612528
	.quad	0x3fd51684dbba55b0              # double 0.329499449327467
	.quad	0x3fbbb7eba891c9e8              # double 0.1082751547381019
	.quad	0x3fcc9ee7c463a6dc              # double 0.2235994061405141
	.quad	0x3fe590d717750eca              # double 0.67393068868155948
	.quad	0x3fd1b27f1b82ff26              # double 0.27651956259431854
	.quad	0x3fd517fe46182024              # double 0.32958943219319026
	.quad	0x3fb4facb891eb450              # double 0.081951828934238024
	.quad	0x3fbee3686fe23650              # double 0.12065747005018435
	.quad	0x3fef4602f33c0d7d              # double 0.97729632860902848
	.quad	0x3fdf4a101862b728              # double 0.48889543897063215
	.quad	0x3fb99a5d0a0b3058              # double 0.10001164908607174
	.quad	0x3fd4fafb04377fa4              # double 0.32781863605304751
	.quad	0x3faf90637688e260              # double 0.06164847204167212
	.quad	0x3fec051da5469125              # double 0.8756244876899798
	.quad	0x3fe8a709e7b752a8              # double 0.77039046532680278
	.quad	0x3fecff9386059c81              # double 0.90619827438503375
	.quad	0x3fe27345f16af8cc              # double 0.57657143737721972
	.quad	0x3fe8c07a50a52769              # double 0.77349582434656583
	.quad	0x3fc21b6eb20f04c0              # double 0.14146217054625332
	.quad	0x3fcc648686f88d68              # double 0.22181779470802643
	.quad	0x3fae295e36332800              # double 0.058909362903776241
	.quad	0x3feefffd2e245cf2              # double 0.96874865543477839
	.quad	0x3fda80c7c04fb868              # double 0.41411012440119643
	.quad	0x3fe2aee09424cd32              # double 0.58384732183768606
	.quad	0x3fca1c735cacbbdc              # double 0.20399324441083777
	.quad	0x3fef6565a6d9d606              # double 0.981127572899539
	.quad	0x3fd3c2f930ad255c              # double 0.30877523187208111
	.quad	0x3fdf9d95145eeb14              # double 0.49399306287129829
	.quad	0x3fe49268536c2cbb              # double 0.64287201207607525
	.quad	0x3fc0fa0819169df0              # double 0.13263035988823857
	.quad	0x3fe66745148f5a36              # double 0.70010618224734489
	.quad	0x3fee717183420275              # double 0.95134807239817454
	.quad	0x3fe5fd6b8096dcd9              # double 0.68718505015467735
	.quad	0x3fa289681a22db20              # double 0.036204579534958592
	.quad	0x3fe7a4b978416074              # double 0.73885797011736409
	.quad	0x3fd3f03490b990a0              # double 0.31153597005164535
	.quad	0x3fd6ceee7205109e              # double 0.35638009199852572
	.quad	0x3fe58d83a2d106fd              # double 0.67352468299961255
	.quad	0x3fefa54778a8fdd8              # double 0.98892568174772588
	.quad	0x3fc648f1170a162c              # double 0.17410100579233878
	.quad	0x3f959f7a932075a0              # double 0.021116175870806608
	.quad	0x3fd951123e440ac8              # double 0.39557319718020922
	.quad	0x3feab037cf883f8e              # double 0.83401098760258363
	.quad	0x3f71f18e4ab8e280              # double 0.0043807562138274969
	.quad	0x3fd874c191743138              # double 0.3821262283752449
	.quad	0x3fe656e8a9ad4004              # double 0.69810898914329345
	.quad	0x3fd6ac543757db44              # double 0.35426812557800624
	.quad	0x3fce90da83e03074              # double 0.23879558028454861
	.quad	0x3fc2c2124a0c1538              # double 0.14654759040437582
	.quad	0x3fe7ea3ec0872b86              # double 0.74734437564016853
	.quad	0x3fd11b20c9df303c              # double 0.26728076662107347
	.quad	0x3fef7dd4816f727c              # double 0.98411011963214845
	.quad	0x3fedc371c4ba3597              # double 0.93010795996967743
	.quad	0x3fbac1fe346774d0              # double 0.10452259807012187
	.quad	0x3fe1f08e2cb38b35              # double 0.56061466913920432
	.quad	0x3feb84916b83f1b5              # double 0.8599326229009906
	.quad	0x3fe2738f10b6552d              # double 0.57660630478009056
	.quad	0x3fcc1c7ae53d9750              # double 0.21961914246929348
	.quad	0x3fe43a1241f1a4b9              # double 0.63208878402396984
	.quad	0x3fe232b12c79449a              # double 0.56868799864072916
	.quad	0x3fe55a65652dd9eb              # double 0.66728467713875028
	.quad	0x3fc4e8ff83ca8324              # double 0.16336053786383176
	.quad	0x3fd3842a82f0a44c              # double 0.30494177615270668
	.quad	0x3fcbf02990ca4fb8              # double 0.21826667375409925
	.quad	0x3fbde92395e0ff18              # double 0.11683866891052863
	.quad	0x3fda79d735b0c6b4              # double 0.4136865639039613
	.quad	0x3fdccbb06d2c630e              # double 0.44993220006431123
	.quad	0x3fdb162512eb44e4              # double 0.42322661254463712
	.quad	0x3fde8ea83195b696              # double 0.47745709268824876
	.quad	0x3fe4c923dc68e46b              # double 0.64955323265816156
	.quad	0x3fa454ad2ed44fd0              # double 0.039708530394051089
	.quad	0x3fc62152df171838              # double 0.17289195912434407
	.quad	0x3fe1190ec57d1b49              # double 0.53430880138407943
	.quad	0x3fdf7d419e4b13c8              # double 0.49202003916098791
	.quad	0x3fed86d54c20bbd3              # double 0.92270912998889754
	.quad	0x3fec2034cd042afb              # double 0.87893142740480756
	.quad	0x3feaa032b36e5931              # double 0.83205542607428218
	.quad	0x3fc7e1552a693358              # double 0.18656410761686959
	.quad	0x3fea2e8b5bbafcd4              # double 0.81818168560121273
	.quad	0x3fef4003ccb9515d              # double 0.97656431183944969
	.quad	0x3fe92ec7e5fa61d6              # double 0.78696055333699166
	.quad	0x3fa4dce37fceb040              # double 0.040747746802793916
	.quad	0x3fd0982757feacac              # double 0.25928672402614938
	.quad	0x3fe276cb792a0ab8              # double 0.57700132050407316
	.quad	0x3fc4ec2063692e54              # double 0.16345600942655614
	.quad	0x3fda07d31941bbde              # double 0.40672757593614317
	.quad	0x3fd01c9469bdcd6e              # double 0.25174436880407469
	.quad	0x3fd6f6ab22a53f6a              # double 0.35880545028066158
	.quad	0x3fe3b0febd547b98              # double 0.61535584429280998
	.quad	0x3fcf6e3717357420              # double 0.24555100091211646
	.quad	0x3fc408cc0b7b685c              # double 0.15651846466681973
	.quad	0x3fc7dae9cf462380              # double 0.18636820431518331
	.quad	0x3fb366a14f0e7ae0              # double 0.075784761238974152
	.quad	0x3fe9976d687f82e9              # double 0.79973478708060697
	.quad	0x3fd8552c6ddaad60              # double 0.38019858100843429
	.quad	0x3fd3a9b73537314e              # double 0.30723362156711154
	.quad	0x3fe174462c0060a9              # double 0.54544361681020803
	.quad	0x3fc6cb16f7876020              # double 0.17807280622832966
	.quad	0x3fda8ffd77b52e74              # double 0.41503845873078338
	.quad	0x3fe1c3cacb7659d6              # double 0.55515041102153861
	.quad	0x3fd2d5316c6599e2              # double 0.2942622717440867
	.quad	0x3fae622ffc463470              # double 0.059342860741801284
	.quad	0x3fdefa235435c0b6              # double 0.48401721213941629
	.quad	0x3fc1fe0994d20d1c              # double 0.1405651070273074
	.quad	0x3feb66415b29d2a7              # double 0.85623233609529315
	.quad	0x3fc41b6df218a668              # double 0.1570870811568057
	.quad	0x3fec18d046fe96a4              # double 0.87802900186644139
	.quad	0x3fe145b02b569520              # double 0.53975685562605591
	.quad	0x3fb3df85feb25108              # double 0.077629446679854053
	.quad	0x3fd3906383d5add6              # double 0.30568778871994817
	.quad	0x3fd4a6cdcd2f64f0              # double 0.32268090283976303
	.quad	0x3fe86f8362fb78aa              # double 0.76361245472414407
	.quad	0x3fba3bdb18ad8e50              # double 0.10247582771767694
	.quad	0x3fe62643538ffe8a              # double 0.69217077561184337
	.quad	0x3f809359ff2a2d80              # double 0.0080935507769683834
	.quad	0x3fb059b39a227590              # double 0.063868737345236903
	.quad	0x3fbb54968f6f9680              # double 0.10675946237423695
	.quad	0x3fe4790361d67602              # double 0.639772120560963
	.quad	0x3fea767cc67c4a74              # double 0.82696379439069156
	.quad	0x3faca58b6aa5bfd0              # double 0.055950505035866294
	.quad	0x3fec8c495b37a90e              # double 0.8921248227682399
	.quad	0x3fea5ca19a7283c5              # double 0.82380752721302797
	.quad	0x3fd09fbe59f06c46              # double 0.25974997313614201
	.quad	0x3fe0baacc28ded41              # double 0.52278745650202307
	.quad	0x3fbc62adb4468148              # double 0.11088071490531093
	.quad	0x3fdc975e2226ba82              # double 0.44673875174604671
	.quad	0x3feac2d18015e99d              # double 0.83628153816907835
	.quad	0x3fda6fdcb75faa96              # double 0.41307752521121566
	.quad	0x3fc5682f2e123fa8              # double 0.16724195241522222
	.quad	0x3fe758ad5409a3a6              # double 0.72957483686069646
	.quad	0x3fb6d871d8c01160              # double 0.08924018422846336
	.quad	0x3fe1c29599ecbad6              # double 0.55500297606871629
	.quad	0x3fcb8daa6893b0f8              # double 0.21526079279227139
	.quad	0x3fcdef3d9830dc7c              # double 0.2338635438079314
	.quad	0x3fd8a143dbe1f9e0              # double 0.38484283898278981
	.quad	0x3fce938b36206434              # double 0.23887767928025172
	.quad	0x3feb3266a61fdfc8              # double 0.84990246244614642
	.quad	0x3fbc7072bd5706e8              # double 0.11109082338864662
	.quad	0x3fd4b840aea58138              # double 0.3237458901912933
	.quad	0x3face4e575a21d70              # double 0.056433840379265798
	.quad	0x3fd9b61ea0146e14              # double 0.40174070008080887
	.quad	0x3fbce5002e11ca08              # double 0.11286927342170128
	.quad	0x3fe430d90f3ab326              # double 0.63096287703010456
	.quad	0x3fe9c0ee023c571d              # double 0.80480099140797601
	.quad	0x3fec82b9b053ccb2              # double 0.89095768393453612
	.quad	0x3fdfaffadf05c722              # double 0.49511596469447927
	.quad	0x3fe097716b52e72b              # double 0.51848669969260663
	.quad	0x3fe5b4222fd97c71              # double 0.67823895784012056
	.quad	0x3fd8bc3fd86f0f90              # double 0.38648983131519632
	.quad	0x3fd2cad67795e47a              # double 0.2936302345111198
	.quad	0x3fe26d6034df8ed7              # double 0.57585153891383356
	.quad	0x3fd3bda8d30956de              # double 0.30845089539557857
	.quad	0x3fe9f62adec8c135              # double 0.81129973900355046
	.quad	0x3fc59b9f7a480818              # double 0.16881173582811537
	.quad	0x3fe1738a346b3929              # double 0.54535398710303185
	.quad	0x3febcd3ec5935fd8              # double 0.8688043459796928
	.quad	0x3fcae48a37383bf0              # double 0.2100994844081181
	.quad	0x3fd3b421d399d1f8              # double 0.30786939300676819
	.quad	0x3fe3568393513ab9              # double 0.60431078694258311
	.quad	0x3fd308790593c6dc              # double 0.29739213509229301
	.quad	0x3fdd1460e4e111fa              # double 0.45436880446894146
	.quad	0x3fee0f0c12e1e516              # double 0.9393368119046126
	.quad	0x3fdddcede598f6cc              # double 0.46660945340759663
	.quad	0x3fcbaed7ae025dd4              # double 0.21627326962037208
	.quad	0x3fcfa02450c6b5fc              # double 0.24707464164877979
	.quad	0x3fef61656a9081c2              # double 0.98063917935729017
	.quad	0x3feead3e9dfdc619              # double 0.95864802224804457
	.quad	0x3fef3b202aaf522c              # double 0.97596748673328681
	.quad	0x3fc80cf25478b174              # double 0.18789509892065903
	.quad	0x3fec8157f2442fa9              # double 0.89078900640150949
	.quad	0x3fc672c0799d2c10              # double 0.17537694872075393
	.quad	0x3fe3b2f9e381392a              # double 0.61559767183806469
	.quad	0x3fe3facf14d1c1d2              # double 0.62436632219583488
	.quad	0x3fd0a7f6aaf7aeac              # double 0.26025168129010967
	.quad	0x3fe21654dc21809b              # double 0.56522601122198368
	.quad	0x3fe33f83aedb6eb2              # double 0.60150322105206144
	.quad	0x3fe448a45f1af39c              # double 0.63386744094133318
	.quad	0x3fef4b1b985ecaf3              # double 0.97791843185254234
	.quad	0x3fe7838d7b4a4383              # double 0.73480867462249966
	.quad	0x3fd8e39982532d9e              # double 0.38889157988588774
	.quad	0x3fca9c188980f3e8              # double 0.20788866724060928
	.quad	0x3fe711f58675233a              # double 0.720942270862998
	.quad	0x3fd0ad5dfc1fde5e              # double 0.26058148976833262
	.quad	0x3fd10d454147f28a              # double 0.26643496871091854
	.quad	0x3fe233424d0e0c07              # double 0.56875720071582314
	.quad	0x3fef6fe60a6ef6f1              # double 0.98240949666771204
	.quad	0x3fe0a5a9253bca0f              # double 0.5202222563951312
	.quad	0x3fdaef68a425ac70              # double 0.4208623507499345
	.quad	0x3f5299dca7588200              # double 0.0011353163548691869
	.quad	0x3fef9ef8b17d15cb              # double 0.98815569558853988
	.quad	0x3fe84facb3b5573c              # double 0.75972590541162032
	.quad	0x3fc40c79989cffe8              # double 0.15663070632763199
	.quad	0x3fc47303526496e8              # double 0.15975991747944041
	.quad	0x3fb293285cfbe808              # double 0.072557947827505243
	.quad	0x3febc9efecf53bfd              # double 0.86840053826188035
	.quad	0x3feceec307c9bc61              # double 0.90414573212718718
	.quad	0x3f9635cb65d7b760              # double 0.021689584818822438
	.quad	0x3fe1fd5166e1ca4c              # double 0.56217260450495976
	.quad	0x3fe23e9e1e9620c0              # double 0.57014375661767502
	.quad	0x3fe32671aba3a6ff              # double 0.59844287417692488
	.quad	0x3fe5ee1575f42524              # double 0.68531296766119398
	.quad	0x3fcb641a720ed0bc              # double 0.21399241036636407
	.quad	0x3fd5d7003058b5cc              # double 0.34124760361995921
	.quad	0x3fa955401a138cb0              # double 0.049478533919477541
	.quad	0x3fe9a1e88707175f              # double 0.80101419804189422
	.quad	0x3fe54428b4d7f526              # double 0.66457019158375341
	.quad	0x3fcc9b55cd337b10              # double 0.22349045295319359
	.quad	0x3fe85822442c40bb              # double 0.76075852694523094
	.quad	0x3fe703930b58be01              # double 0.71918632713453701
	.quad	0x3fb47e97aefd3478              # double 0.080056648466056646
	.quad	0x3f8a6293ddab6340              # double 0.012883334352794429
	.quad	0x3fd41574d76b6fa4              # double 0.31380959546162956
	.quad	0x3fed145ccc647ad2              # double 0.90873565597925166
	.quad	0x3fe247c9fc0c24b1              # double 0.57126330593123076
	.quad	0x3fee73c2c2e66d24              # double 0.95163095537592257
	.quad	0x3fcce872503cd654              # double 0.22584370534757403
	.quad	0x3f597270c4f68200              # double 0.001553163648942868
	.quad	0x3fdec937f44a6352              # double 0.48103140694143065
	.quad	0x3fd478ff19e8137a              # double 0.31988503961502313
	.quad	0x3fedf38dc00148f2              # double 0.93598067761402448
	.quad	0x3fb2b9f674896288              # double 0.073150065852482737
	.quad	0x3fd13fc9713b4c4c              # double 0.26951824243332534
	.quad	0x3fd9647a79be1a32              # double 0.39675771607327015
	.quad	0x3fe0d40f8bda50dc              # double 0.52588631930350571
	.quad	0x3feeb3c9a9d9967d              # double 0.95944674657648898
	.quad	0x3fe30dd15442974e              # double 0.59543672997527053
	.quad	0x3fe4410e3ca279b9              # double 0.6329413589735885
	.quad	0x3fc87147d93a107c              # double 0.19095705134180097
	.quad	0x3fe4fac890ba8a67              # double 0.65561321513480386
	.quad	0x3fef22f2dfe6450f              # double 0.97301620226258644
	.quad	0x3fe7c80e2c0073f5              # double 0.74317082017989711
	.quad	0x3fe302b5fb0d86de              # double 0.59408091577298783
	.quad	0x3fe768c2721f2356              # double 0.73153803147679741
	.quad	0x3fdb272496c290aa              # double 0.42426409456880754
	.quad	0x3fc6c3b2ee997a5c              # double 0.17784725809447621
	.quad	0x3fdfb2e30dcbdf5c              # double 0.49529339167883335
	.quad	0x3fe67de644f0d7ae              # double 0.70286859002111668
	.quad	0x3fc1eb0394612ecc              # double 0.13998455758188866
	.quad	0x3fae6d64b506eb20              # double 0.05942835531046442
	.quad	0x3fdbb6e2bfc9a6e4              # double 0.4330374596525941
	.quad	0x3fc6b41bf68487b4              # double 0.17737149750706538
	.quad	0x3fdb01c15b3812ba              # double 0.42198213489636383
	.quad	0x3fd3d8b9ef07a30a              # double 0.3101029238010119
	.quad	0x3fdf539f6be6e900              # double 0.48947892701438889
	.quad	0x3fec76ab55f8c283              # double 0.88948599616385626
	.quad	0x3fd11374aae2dd7a              # double 0.26681248367409405
	.quad	0x3fe437295529f0fb              # double 0.63173357614098735
	.quad	0x3fdfa1bd5c558fca              # double 0.49424680726064862
	.quad	0x3fe679e1f33d7260              # double 0.70237824924295111
	.quad	0x3fe4f0a7cf73cc0b              # double 0.65437689321550019
	.quad	0x3fcacf1571e36ab0              # double 0.20944469510034969
	.quad	0x3fe16cec7dd5a079              # double 0.54454636170431947
	.quad	0x3fdf728bf9f0e0a4              # double 0.49136638077062345
	.quad	0x3fe317af73d32db2              # double 0.5966412794309035
	.quad	0x3fd52c98c9b38da0              # double 0.33084697434807175
	.quad	0x3fda66b6c1a1e604              # double 0.41251915845313669
	.quad	0x3fe130a90ee4ceae              # double 0.53718998822156094
	.quad	0x3fe1851de425b882              # double 0.54749960479763637
	.quad	0x3fe80419311c6db4              # double 0.75050029365541215
	.quad	0x3fe713da6d40cb8e              # double 0.72117348993775621
	.quad	0x3fed8b2b36279489              # double 0.92323837830612476
	.quad	0x3fe085d13991b94c              # double 0.51633511775961827
	.quad	0x3fc7a9882eaeeed0              # double 0.18486120490512414
	.quad	0x3fe54c39dbd3cf2f              # double 0.66555493292842083
	.quad	0x3feec95019fe18bb              # double 0.96207432820008109
	.quad	0x3fe2d238c870f065              # double 0.5881618418566289
	.quad	0x3fe33198be26ab6a              # double 0.5998042787444835
	.quad	0x3fd626d91cf982d8              # double 0.34612109975391325
	.quad	0x3fb243fd84803810              # double 0.071349949692575132
	.quad	0x3fd5ee99da82a226              # double 0.34268804873366532
	.quad	0x3fe59fd290605b7a              # double 0.675759584412716
	.quad	0x3fe510ffaa94e171              # double 0.65832503620826632
	.quad	0x3fc004d2980d7a10              # double 0.1251471750683355
	.quad	0x3fb8ef89d6336b70              # double 0.097405066294795394
	.quad	0x3febbd1e544c475a              # double 0.86683575119443934
	.quad	0x3fe5c0c2360bfc43              # double 0.67978010707873471
	.quad	0x3fde8827a0973a54              # double 0.47706022913636059
	.quad	0x3fa5cf909658bde0              # double 0.042599218705045905
	.quad	0x3f9c025d03d7c040              # double 0.027352765426201353
	.quad	0x3fd479403dd85476              # double 0.31990057029299324
	.quad	0x3fe669ce87495106              # double 0.70041586325763272
	.quad	0x3fee048fea3aacc9              # double 0.93805690524950436
	.quad	0x3fe7f38223fccf49              # double 0.74847514180007935
	.quad	0x3fda09bcc1fd4362              # double 0.4068443197657442
	.quad	0x3fe3fd193935bf47              # double 0.62464581655329077
	.quad	0x3fd6a63be90ddd66              # double 0.35389611968226686
	.quad	0x3fd6d61b917fdade              # double 0.35681809624604266
	.quad	0x3fd73c4c2a33c3ca              # double 0.3630552684908791
	.quad	0x3fc15198c9ea06cc              # double 0.13530263766374728
	.quad	0x3fec3b92c5506141              # double 0.88227213418853279
	.quad	0x3fedd493ca932da6              # double 0.93219937863743918
	.quad	0x3fdd43250207567c              # double 0.45722317884551678
	.quad	0x3fd6bfbef06bd46a              # double 0.35545323828347952
	.quad	0x3fd83a41f71f8842              # double 0.37855576642153121
	.quad	0x3fdd0c629557a0ca              # double 0.45388092598160468
	.quad	0x3fe22ef3df84e7c4              # double 0.56823152214132522
	.quad	0x3fdacd378cb81324              # double 0.41877545110792114
	.quad	0x3fee5a887be6dc0a              # double 0.94855140876359312
	.quad	0x3fee5c67ace7ad5d              # double 0.94877990503793408
	.quad	0x3f6d69824eaabc00              # double 0.0035903496803579849
	.quad	0x3fe355b58663b989              # double 0.60421253440817779
	.quad	0x3fa509f5f4a68c80              # double 0.0410916196008424
	.quad	0x3fda3a006e41104a              # double 0.40979014174468331
	.quad	0x3fe483798a2a6432              # double 0.64104916558711111
	.quad	0x3fde9c3c3269657e              # double 0.47828583643930489
	.quad	0x3f8b4d409e52f9c0              # double 0.01333094103972321
	.quad	0x3fe13f285ca2275f              # double 0.53895967571700598
	.quad	0x3fce4ca5b130e5ac              # double 0.23671408798126714
	.quad	0x3fe10402c8d0b099              # double 0.53173960897176464
	.quad	0x3fc3d007851cee60              # double 0.15478605270060353
	.quad	0x3fd70ca39e8adc56              # double 0.36014643175753258
	.quad	0x3fd093e2532a679c              # double 0.25902612802166813
	.quad	0x3fe045b88e7e37fe              # double 0.50851085501358262
	.quad	0x3fda68dd7afd9914              # double 0.41265046129991956
	.quad	0x3fdc566c7ab01122              # double 0.44277488690592481
	.quad	0x3fd9662b381b559e              # double 0.39686089018990767
	.quad	0x3fe4fd6fc3a1d9ba              # double 0.65593708238048198
	.quad	0x3fdd81b3ff7b169c              # double 0.4610414500169584
	.quad	0x3fe26538e4a9b1d8              # double 0.57485623036114486
	.quad	0x3fb3c516e216e480              # double 0.077226095388043702
	.quad	0x3f8ed73f0d1b6280              # double 0.015058987224095377
	.quad	0x3fdf06641a40bfa8              # double 0.48476507724535134
	.quad	0x3fdc07d5ac84f53c              # double 0.43797818992227966
	.quad	0x3fc77ee36d3fc4b8              # double 0.18355982622555245
	.quad	0x3fecf06462aeccfe              # double 0.90434474252688779
	.quad	0x3fe1864ae597f8cb              # double 0.54764313547618693
	.quad	0x3fb6c08bbf4a50e0              # double 0.088875517083866651
	.quad	0x3fe2e45520ad0ab3              # double 0.5903726232721368
	.quad	0x3fc6121b32525568              # double 0.17242755848989622
	.quad	0x3fe5914fee322e75              # double 0.67398830912266183
	.quad	0x3fe15c5e55a67b18              # double 0.54252545097901628
	.quad	0x3fd139d09e29b5d4              # double 0.26915374227141098
	.quad	0x3f71906a7242c280              # double 0.0042881162700473263
	.quad	0x3fbd2f8022e32690              # double 0.11400605060330293
	.quad	0x3fe32fd802abe3ca              # double 0.59959030648962508
	.quad	0x3fb5d8ea42307da0              # double 0.085341111335301978
	.quad	0x3feab0c329e4598c              # double 0.83407743627576413
	.quad	0x3fee991da54da4bf              # double 0.95619089399146862
	.quad	0x3fd418830f396882              # double 0.31399609076255086
	.quad	0x3fba0240db7c5668              # double 0.1015968833783859
	.quad	0x3fdec3c8b006a358              # double 0.48069970312149257
	.quad	0x3fdf18a507bc1258              # double 0.48587919001901048
	.quad	0x3fde0f92c08abb4e              # double 0.46970051577493599
	.quad	0x3fe61d6eaa6852ea              # double 0.69109280855863386
	.quad	0x3fdfc745707c7f0a              # double 0.49653755173675107
	.quad	0x3fe7ba83774c2c38              # double 0.74151776600172692
	.quad	0x3fe0c40cbaf8e2aa              # double 0.52393185155877586
	.quad	0x3fe5646b324da834              # double 0.66850814652321455
	.quad	0x3fc89567776e8b04              # double 0.19205945331221852
	.quad	0x3fcd311d8e358d40              # double 0.22806138461883485
	.quad	0x3fe3a1d435dce9cb              # double 0.61350451011758744
	.quad	0x3fd06ae4f39098f4              # double 0.25652431283596333
	.quad	0x3fd5dff06ebef08a              # double 0.34179316344285182
	.quad	0x3fbdf9cd54bbf6b0              # double 0.11709292715746744
	.quad	0x3fed751a7a0ec1ab              # double 0.92054485167868927
	.quad	0x3f4a415280d7d400              # double 8.0124405366055473E-4
	.quad	0x3fe25856c713ca6a              # double 0.57328356630598631
	.quad	0x3fecaaea7ba4dc4e              # double 0.89586376332489137
	.quad	0x3fe91100337aa873              # double 0.78332529119985705
	.quad	0x3fbbe80ac061a108              # double 0.10900942990122442
	.quad	0x3fbca82acc3e7770              # double 0.11194102751184487
	.quad	0x3fedb179350f014f              # double 0.92791424143801204
	.quad	0x3fed8db99847e51f              # double 0.92355041258193526
	.quad	0x3fb95b2397ebf3c8              # double 0.09904692133927917
	.quad	0x3fe36f61838b69c0              # double 0.60734630291272396
	.quad	0x3fe251258ffcd089              # double 0.5724056064850781
	.quad	0x3fd9f0556240be8e              # double 0.40529379458437453
	.quad	0x3fdbef462be5c45e              # double 0.43647913252704551
	.quad	0x3fcad18a75380dc4              # double 0.20951967929441484
	.quad	0x3fea2fd9a7341c73              # double 0.81834108979172837
	.quad	0x3fe9fab5ca5d5ea8              # double 0.81185426258430926
	.quad	0x3fd1374e8fadc924              # double 0.26900066405427681
	.quad	0x3fd43e291baee496              # double 0.31629398063120939
	.quad	0x3feabfca82c129cd              # double 0.8359119943427743
	.quad	0x3fba5a9ce8dd3068              # double 0.10294514355808959
	.quad	0x3fe526e7a57d414e              # double 0.66099912950634532
	.quad	0x3fe172ab8c2cdda3              # double 0.54524781587581506
	.quad	0x3fed8344b236f1e5              # double 0.92227396781487114
	.quad	0x3fe2743c01916467              # double 0.5766887694000048
	.quad	0x3fec6139457685ae              # double 0.88686812941539528
	.quad	0x3fe98a53b2009102              # double 0.79813561216408879
	.quad	0x3fb877cd10395ee8              # double 0.095578018628085126
	.quad	0x3fbf9027a9ea27d8              # double 0.12329337976748833
	.quad	0x3fe1bcde86a76e78              # double 0.55430532741179572
	.quad	0x3fefd7e2ba8cccde              # double 0.9951032298617084
	.quad	0x3fe502c4f3faea08              # double 0.65658805515642005
	.quad	0x3fefdac432a45509              # double 0.99545488253593916
	.quad	0x3fee00d89685b0a6              # double 0.93760327719566727
	.quad	0x3fdd0f37a34fc76c              # double 0.45405379246141453
	.quad	0x3fea64b57ed989a8              # double 0.8247935750517188
	.quad	0x3fab122656d00840              # double 0.052872846696133013
	.quad	0x3fdbee0f26cb87fe              # double 0.43640497959688662
	.quad	0x3fd6099de226e502              # double 0.3443369587435684
	.quad	0x3fe71a4798f1c511              # double 0.72195796844440185
	.quad	0x3fdfa729e5df967a              # double 0.49457786034177043
	.quad	0x3fe9b7f4281a278f              # double 0.80370529015020675
	.quad	0x3fd83d6f33f9ddae              # double 0.37874965739998856
	.quad	0x3fe969f7ae29d205              # double 0.79418548599511551
	.quad	0x3fec2abacb7071ea              # double 0.88021602377153596
	.quad	0x3fe36948c7af256f              # double 0.60660208702863183
	.quad	0x3fe94957e201f69f              # double 0.79020303861735275
	.quad	0x3fd98932fe7021b4              # double 0.39899897429907161
	.quad	0x3fdd02b4e48d5d5a              # double 0.45329019851256691
	.quad	0x3fe44f5fd6c93128              # double 0.63468925428745582
	.quad	0x3fef893b40c04382              # double 0.98550188681302608
	.quad	0x3feb52e055d65030              # double 0.85386673703260918
	.quad	0x3fe42954e6f440bd              # double 0.63004536731934702
	.quad	0x3fed02475d090339              # double 0.90652816935480651
	.quad	0x3fc4518e91c11ab8              # double 0.15873891941938267
	.quad	0x3fe6c8c2c95c3a8f              # double 0.71200694397141884
	.quad	0x3fdab98792a11802              # double 0.41757382697358036
	.quad	0x3fd63304f83f5716              # double 0.34686397784149514
	.quad	0x3fc6752eb073bcf4              # double 0.17545112243485728
	.quad	0x3f8344c80149ab00              # double 0.0094085336106295436
	.quad	0x3fcd5b8627359b80              # double 0.22935559191247634
	.quad	0x3fd3b56069a126ea              # double 0.30794534983998167
	.quad	0x3fed96bd1a7f57de              # double 0.92465071845321822
	.quad	0x3fe3ff4153a1cde7              # double 0.62490907987961186
	.quad	0x3fee4f35c3c0fc57              # double 0.94716919167684466
	.quad	0x3fdf513ed84949b8              # double 0.48933383104045047
	.quad	0x3fe06d63d2f7cb90              # double 0.51335326389959057
	.quad	0x3fed473563762758              # double 0.91494244981843575
	.quad	0x3fe5c51b7577fe96              # double 0.68031094496832867
	.quad	0x3fe7e736eb249f57              # double 0.74697442938211622
	.quad	0x3fdc0283b07994ac              # double 0.43765346750144363
	.quad	0x3fdd25f5b9561db0              # double 0.45544188594109425
	.quad	0x3fdba674fa4cb638              # double 0.43203472560239531
	.quad	0x3fb5633decf059b0              # double 0.083545561167148063
	.quad	0x3fdabfd9f36619d2              # double 0.41795967835824144
	.quad	0x3fe057c4aee481c2              # double 0.51071390303337005
	.quad	0x3fdc5b0925841d88              # double 0.44305637992553004
	.quad	0x3fe50fc0aba1fd96              # double 0.65817292711283204
	.quad	0x3fd78e1a9f6fcd4e              # double 0.36804833955757921
	.quad	0x3f6bcb4345cbeb00              # double 0.0033928216856770055
	.quad	0x3fe077c57243cdc2              # double 0.51462051694255018
	.quad	0x3fefb272aa25bb15              # double 0.99053319198523814
	.quad	0x3fc6173cd6755b2c              # double 0.17258415671923311
	.quad	0x3fecd20c60225744              # double 0.90064066673469556
	.quad	0x3fc3c1817f642d0c              # double 0.15434282989767956
	.quad	0x3fd9245ee53a1a20              # double 0.39284489045567916
	.quad	0x3f9c6d27c6a614e0              # double 0.027760144710119117
	.quad	0x3fef784b0c7a1b30              # double 0.98343422352704657
	.quad	0x3febeee3b817fd9d              # double 0.87291131931117472
	.quad	0x3fd43be18b05602a              # double 0.31615484787244219
	.quad	0x3fbbfd30c2a47db8              # double 0.10933212997451036
	.quad	0x3fe73103c0c6d496              # double 0.72473323489852493
	.quad	0x3feac70fe594adff              # double 0.83679957237239921
	.quad	0x3fdc1da30f1f87d4              # double 0.43930889584418975
	.quad	0x3fe2786cb38e0216              # double 0.57720027035981292
	.quad	0x3fd81adced6d1544              # double 0.37663958727019442
	.quad	0x3fe5d9355e83fd73              # double 0.6827647062308827
	.quad	0x3fd80e05864a53b8              # double 0.37585580934802065
	.quad	0x3fdd84f7672b04e6              # double 0.46124062609676597
	.quad	0x3fe0d428ce3fda7f              # double 0.52589836390582423
	.quad	0x3fd11af7be329550              # double 0.26727098058684806
	.quad	0x3fd0b7d87df753a0              # double 0.26122104932192691
	.quad	0x3fd202d782736502              # double 0.28142345179874451
	.quad	0x3fe6cdfc5f08d08d              # double 0.7126447540417914
	.quad	0x3fef22f5f19d4e57              # double 0.97301766577079262
	.quad	0x3fca2d9153997bc4              # double 0.2045156152916815
	.quad	0x3feccc588912fd5a              # double 0.89994456074047524
	.quad	0x3fb87822d9c863e8              # double 0.095583131951925915
	.quad	0x3fc95dbeb204bad4              # double 0.19817336742695224
	.quad	0x3fa93e7dd032d850              # double 0.049304896988744518
	.quad	0x3fe9aa468e85cb25              # double 0.80203559719516149
	.quad	0x3f9e3e0c7350c220              # double 0.029533571756646393
	.quad	0x3fe028c7ece83af7              # double 0.50497814436843569
	.quad	0x3fe0d91ec81d0c85              # double 0.52650393566763454
	.quad	0x3fee8fe053a1273f              # double 0.9550630219830295
	.quad	0x3fbef6cde2505468              # double 0.12095343375433887
	.quad	0x3fe5bf0d0a0bc012              # double 0.67957164728250263
	.quad	0x3febec61ad21a078              # double 0.87260516943662392
	.quad	0x3fd9faff94596782              # double 0.40594472396116299
	.quad	0x3fe3b00568cacf91              # double 0.61523695437652937
	.quad	0x3fd22166ba1fdf3e              # double 0.28328865219326704
	.quad	0x3fe01dd8b4892946              # double 0.50364337216277799
	.quad	0x3fe94ef9c24ccb3c              # double 0.79089057873930057
	.quad	0x3fe14cbbf9a179b5              # double 0.54061697727211444
	.quad	0x3fe03563bab3b015              # double 0.50651728120056083
	.quad	0x3fe6603d853815cc              # double 0.69924808520652837
	.quad	0x3fcd1da3e0f78430              # double 0.22746704563817977
	.quad	0x3fd9a7d28076dc7c              # double 0.40086805863706565
	.quad	0x3f8079bb36d9cc00              # double 0.0080446840395094199
	.quad	0x3feb41feacb683b5              # double 0.85180600865361689
	.quad	0x3fca2e7bb88f739c              # double 0.20454355727897855
	.quad	0x3fc2129287da20f0              # double 0.14119178422357193
	.quad	0x3fcbead49d9c0fa0              # double 0.21810395904333024
	.quad	0x3fd7a5b842a9d89c              # double 0.36948973188499123
	.quad	0x3fd8e9fa4483f3bc              # double 0.38928085986099936
	.quad	0x3fe7064bf576bd7f              # double 0.7195186418738756
	.quad	0x3fefe0454d7cfc3a              # double 0.99612679609697996
	.quad	0x3fd98f06d3af283a              # double 0.3993546550015058
	.quad	0x3fe754915401b30f              # double 0.7290732041124971
	.quad	0x3fe46b4ea36871fe              # double 0.63809902110693861
	.quad	0x3fda49b2bc3f7cc6              # double 0.41074818023293991
	.quad	0x3fd0ab5082cec948              # double 0.26045620702929684
	.quad	0x3fe16a39da24d21e              # double 0.54421703916756647
	.quad	0x3fd3e56cb75b3cc2              # double 0.31087797075174362
	.quad	0x3fc2bccba6670004              # double 0.14638658166040852
	.quad	0x3fe5233a3187d2e2              # double 0.66055020975053602
	.quad	0x3fe5274a025ab8a6              # double 0.66104603252258154
	.quad	0x3fd6c24e1d805922              # double 0.35560944443695253
	.quad	0x3feb0fc0f2f52e90              # double 0.84567305996593412
	.quad	0x3feda2f15e6564c4              # double 0.92614048420650663
	.quad	0x3fd7a883cfb23d84              # double 0.36966033251606967
	.quad	0x3fe22c22bd59c4e2              # double 0.56788765890646808
	.quad	0x3fea727baf444efb              # double 0.82647499305536998
	.quad	0x3fe72f066c50b920              # double 0.72449036746346351
	.quad	0x3feeed94712f1707              # double 0.9665014467834404
	.quad	0x3fd6a5079624495c              # double 0.35382260954169964
	.quad	0x3fef84c308a480d2              # double 0.98495628059392915
	.quad	0x3fed1bfad7b252b3              # double 0.90966550949322877
	.quad	0x3feff0390cc59082              # double 0.99807407850723018
	.quad	0x3fe299772947d7c8              # double 0.58123357832550315
	.quad	0x3fe44090443e7336              # double 0.63288129166503526
	.quad	0x3fe8c9d8a38d6041              # double 0.77463943427847692
	.quad	0x3fd38041fdaf16a4              # double 0.30470323346922101
	.quad	0x3fee53f8ae585b1a              # double 0.94775041629586387
	.quad	0x3fd9d19893967cce              # double 0.40341772473216231
	.quad	0x3fd162329e0f7828              # double 0.27161851344669907
	.quad	0x3fe3c88b948fc5b7              # double 0.61823061958255365
	.quad	0x3fe4dbe43ef994e5              # double 0.65184223460951485
	.quad	0x3fd91505e86412fc              # double 0.39190814680505048
	.quad	0x3fd7ebc6d3ccbda6              # double 0.3737656658513181
	.quad	0x3fa252a66734a780              # double 0.035786819551801408
	.quad	0x3fecf3732216596d              # double 0.90471798570324113
	.quad	0x3fe54ce1d3c864c4              # double 0.66563502658677765
	.quad	0x3fef914875ed7560              # double 0.98648474724511103
	.quad	0x3fbe2c2840a756c8              # double 0.11786128595789613
	.quad	0x3fd34687c277d182              # double 0.30117982855815495
	.quad	0x3febd9bbdb0121ad              # double 0.87032883428860475
	.quad	0x3fe3ee5142f1c144              # double 0.62284148287839303
	.quad	0x3fe5c3c61a722981              # double 0.68014817395423688
	.quad	0x3fde988b8fc7ffe6              # double 0.47806061783921761
	.quad	0x3fd46b0fe8183610              # double 0.3190345541523536
	.quad	0x3fee179fb6d6e063              # double 0.94038377486050384
	.quad	0x3fe223726df70771              # double 0.56682702519922945
	.quad	0x3fec8c8f84640515              # double 0.89215827806052295
	.quad	0x3fe11c92eccec44d              # double 0.53473802806377935
	.quad	0x3fd2959c8f013352              # double 0.2903815647630853
	.quad	0x3fe5940b582ec4de              # double 0.67432181571180272
	.quad	0x3fe68504e0be8514              # double 0.70373767752986049
	.quad	0x3febd4639638b18a              # double 0.86967639293793408
	.quad	0x3febc4c5d5870a6c              # double 0.86777011589613328
	.quad	0x3fdcc3b283981872              # double 0.44944441653240752
	.quad	0x3fe6b063d01c478f              # double 0.70903196951461378
	.quad	0x3fe59d825b87b0f8              # double 0.67547719838105902
	.quad	0x3feea0ed30b5b5ac              # double 0.95714435113557305
	.quad	0x3fe70f4e32034f72              # double 0.72061834114218315
	.quad	0x3fd903c0176ff506              # double 0.39085390366365436
	.quad	0x3fe778c5a1a133e5              # double 0.73349267547893915
	.quad	0x3fee835043066f65              # double 0.95352948275420302
	.quad	0x3fb9a95663219af0              # double 0.10024013443181068
	.quad	0x3fc5f54c2a746270              # double 0.17154838631610714
	.quad	0x3fdbabe723403c2a              # double 0.4323671192404982
	.quad	0x3fe4ed18ba1df96d              # double 0.65394245482438651
	.quad	0x3fb991433788d838              # double 0.099872780855407295
	.quad	0x3fba22d6eedbefc0              # double 0.10209410983583123
	.quad	0x3fba91143738f5e8              # double 0.10377622936444875
	.quad	0x3fd9ca141be055ce              # double 0.40295889589591816
	.quad	0x3fd9329de88ea2fa              # double 0.39371440611516528
	.quad	0x3fe5efa1f9d7a428              # double 0.68550204083760935
	.quad	0x3fe111c282eb4df3              # double 0.5334179455771263
	.quad	0x3fe42058ce7e666f              # double 0.62894859629450461
	.quad	0x3fe46c18192c176e              # double 0.63819508472873365
	.quad	0x3fd1e2e417e8e98e              # double 0.27947332701628447
	.quad	0x3fe2e2e32a2a55f1              # double 0.5901962111990412
	.quad	0x3fa6d09036689b70              # double 0.044559961930921044
	.quad	0x3fd8d2843f593f8a              # double 0.38784891306294667
	.quad	0x3fe86d57e5ef6efa              # double 0.76334757718311086
	.quad	0x3fe548e2648804e0              # double 0.66514701495193762
	.quad	0x3fcf196976a98e30              # double 0.24296301168497925
	.quad	0x3fee5f83ac8b6d19              # double 0.94915946674464913
	.quad	0x3fe96f55afab8feb              # double 0.79484066305712753
	.quad	0x3fe0010d99cf9839              # double 0.50012855569071413
	.quad	0x3fd9ecffd3db8b20              # double 0.40509029092042859
	.quad	0x3fee00b99d7431ca              # double 0.93758850815498218
	.quad	0x3f8e727f6bcd2dc0              # double 0.014866824605312412
	.quad	0x3fd77ad1ac2ee7f4              # double 0.36687127890365834
	.quad	0x3fb0904e8cb217e8              # double 0.064701947545557581
	.quad	0x3fdce0b7d1256736              # double 0.45121570038246561
	.quad	0x3fe6a883123f383d              # double 0.70807031215532101
	.quad	0x3fc0e05cf4bc79b8              # double 0.13184701871882765
	.quad	0x3fe05080bda4305c              # double 0.50982701339081471
	.quad	0x3fdd59e740028a84              # double 0.45861226321191162
	.quad	0x3fee629a483e701e              # double 0.94953645811210996
	.quad	0x3feb32a39c1070f5              # double 0.84993153077405614
	.quad	0x3fd857143d85ef26              # double 0.38031488426325877
	.quad	0x3fe1a2cee99623d3              # double 0.55112405416832144
	.quad	0x3fdf4d90c4f5fc84              # double 0.48910922274075852
	.quad	0x3f6151d97d86d100              # double 0.0021142242296382507
	.quad	0x3fcfb9944bd70d24              # double 0.24785093024375116
	.quad	0x3fea29169b2635dc              # double 0.81751566221799576
	.quad	0x3fe106ecf23d32f3              # double 0.53209540664974353
	.quad	0x3fecdda37552869d              # double 0.90205548204922403
	.quad	0x3fde4cb9bdea14b4              # double 0.47343295618368164
	.quad	0x3fef8d197a30b3e6              # double 0.98597406258852227
	.quad	0x3fd78ff4c00c5e3c              # double 0.36816138033598
	.quad	0x3fe4e988db88979f              # double 0.65350764157914287
	.quad	0x3fe68ddd383d594d              # double 0.70481739982896274
	.quad	0x3fdb65a1b834ea2c              # double 0.42807810772834176
	.quad	0x3f413cb583319c00              # double 5.2603590883115725E-4
	.quad	0x3fe506011a413247              # double 0.6569829476152983
	.quad	0x3fd3521d184a0e6a              # double 0.301886819572451
	.quad	0x3fcbd151c47ad310              # double 0.21732542127360732
	.quad	0x3fdd3a92b974a1a0              # double 0.4567000208940275
	.quad	0x3fe605d1c398aac3              # double 0.68821037485516745
	.quad	0x3fedac02c15782ed              # double 0.92724740755155965
	.quad	0x3fdd3cf66500d744              # double 0.45684585441209813
	.quad	0x3fe69636a3896b53              # double 0.70583660069255882
	.quad	0x3fe153124f2cccf1              # double 0.54139056648128137
	.quad	0x3fbb659427a60e20              # double 0.10701871841416066
	.quad	0x3fd8f0c5fa25fa90              # double 0.38969563892889258
	.quad	0x3fec7a6d76ec8076              # double 0.88994477488814883
	.quad	0x3fc4f7cd9b8b9a70              # double 0.16381235213266931
	.quad	0x3fef2230ba9ce1ef              # double 0.97292362640206231
	.quad	0x3fe728844c4cae05              # double 0.72369589712383287
	.quad	0x3fd7e19ec5edaab0              # double 0.37314576462692184
	.quad	0x3fc847f5e5175974              # double 0.18969606100172209
	.quad	0x3fe106811e4a1b08              # double 0.53204399028695182
	.quad	0x3fedca7a0dd7246b              # double 0.93096640303805367
	.quad	0x3f8f378dc8446980              # double 0.015242679285212501
	.quad	0x3fdbb986eaa3ec2e              # double 0.43319867052167893
	.quad	0x3fd91e1ac3c14e92              # double 0.39246243588170515
	.quad	0x3fcf44f0530ed36c              # double 0.24429134421884713
	.quad	0x3fd8315158a50cc0              # double 0.37801011711799148
	.quad	0x3fb24394f3a95480              # double 0.071343717086465475
	.quad	0x3fb17e27c9432d68              # double 0.068331228863078075
	.quad	0x3fb38538d49eb590              # double 0.076251556309861578
	.quad	0x3fc4ee5df6088a0c              # double 0.1635243846258877
	.quad	0x3fdeaaf737790376              # double 0.47918491761452431
	.quad	0x3fea1108502839bf              # double 0.81457915931405711
	.quad	0x3fe21ec8b95bddc3              # double 0.56625782206440822
	.quad	0x3fd7956613252f5e              # double 0.36849357480672562
	.quad	0x3feb2fca4e7f5e56              # double 0.84958377200650648
	.quad	0x3fe189f5dfc2a1cb              # double 0.54809087470226225
	.quad	0x3fe69af5e518a8ac              # double 0.70641607995391587
	.quad	0x3fe32084b9bba7f7              # double 0.59771953845961334
	.quad	0x3fe126b06c2d7883              # double 0.53597279671136311
	.quad	0x3fe15145d86dad00              # double 0.54117100020576459
	.quad	0x3fdd8acff79afbd2              # double 0.46159743480887727
	.quad	0x3fcd515789ef0450              # double 0.22904485926668139
	.quad	0x3fb7d1188745c5d0              # double 0.093034298921131908
	.quad	0x3fedc63aa100959b              # double 0.93044787832029685
	.quad	0x3fd835a62a2e76b0              # double 0.37827448004996267
	.quad	0x3fc73f2681982af4              # double 0.18161469772197558
	.quad	0x3faf9059784db1d0              # double 0.061648174224362529
	.quad	0x3fe8bbaed824df9d              # double 0.77291052070266952
	.quad	0x3fe109d5f22ee2ae              # double 0.53245065022846005
	.quad	0x3fd66200928b52be              # double 0.34973158179245079
	.quad	0x3fe91dfebfd6f12b              # double 0.78491151302981643
	.quad	0x3fe535d6e1e2c456              # double 0.66282219045946067
	.quad	0x3fe468d7fbe51ead              # double 0.63779830168001228
	.quad	0x3fec1a960d6b83e1              # double 0.8782453786953931
	.quad	0x3fe7d53da91e1fbf              # double 0.74478037863536162
	.quad	0x3fecb2031d77e5b6              # double 0.89673000102555167
	.quad	0x3fd09fab6bfbb6e4              # double 0.25974545998802356
	.quad	0x3fc1b9e96158c118              # double 0.13848607304817828
	.quad	0x3fd38cc3e8be1ef0              # double 0.30546663025641774
	.quad	0x3fea102df5c2a531              # double 0.8144750404364115
	.quad	0x3fcc4987f84830a0              # double 0.22099399207252635
	.quad	0x3fe15244abbcd4ff              # double 0.54129251043801208
	.quad	0x3fef616c0236610c              # double 0.98064232284653618
	.quad	0x3fd58f81aade8e3a              # double 0.33688394247494424
	.quad	0x3fac2daf2ef71f30              # double 0.055036043627806897
	.quad	0x3feb37c13a455da2              # double 0.85055600529715414
	.quad	0x3fee02028310ec6c              # double 0.93774533842896579
	.quad	0x3fefd2e4e86f6072              # double 0.99449391744111737
	.quad	0x3fe38e4b3d21c52c              # double 0.6111198610289299
	.quad	0x3fdef65f29f3ff5a              # double 0.48378733727439782
	.quad	0x3fe148eba41f737e              # double 0.54015142493481938
	.quad	0x3fe3f523179acd05              # double 0.62367395983020002
	.quad	0x3fe2243f35a3f92e              # double 0.56692467190422291
	.quad	0x3fe7fc581c8ed7b0              # double 0.74955373361330224
	.quad	0x3fb08a66c7146728              # double 0.064611838916246556
	.quad	0x3fd1e5afb6168c18              # double 0.27964394361532774
	.quad	0x3fe471d4d132caf7              # double 0.63889542445244174
	.quad	0x3fd40d30f0e4baa0              # double 0.31330512547257605
	.quad	0x3fd0e5da44faebbe              # double 0.26402909027427401
	.quad	0x3fe3e88fcd1af8c5              # double 0.62213888225212399
	.quad	0x3fc38f89f42207b4              # double 0.15281795902779793
	.quad	0x3fe0d2f03b97aed9              # double 0.52574931754267162
	.quad	0x3fa68cacf7409a40              # double 0.044042020017788008
	.quad	0x3fe74e0ef5b312fd              # double 0.7282786177462125
	.quad	0x3fcc52185f301adc              # double 0.22125534675452385
	.quad	0x3fec1d88f08cd9e6              # double 0.87860533697567855
	.quad	0x3fa9f5721d9a1420              # double 0.050700727571019621
	.quad	0x3fe699a062d49829              # double 0.70625323584386479
	.quad	0x3fb33573b080bd38              # double 0.075034361449742515
	.quad	0x3fb46b8e3968f900              # double 0.079766167656064368
	.quad	0x3fe4c2bf223761f5              # double 0.64877278025511365
	.quad	0x3fd04da805aa2974              # double 0.25473976662819742
	.quad	0x3fdc9f4291c28704              # double 0.4472204612194306
	.quad	0x3fce0fa93c68c068              # double 0.23485293817202835
	.quad	0x3fde4288cf1ccf16              # double 0.47281093812783703
	.quad	0x3fee03205c7d346e              # double 0.93788164200090107
	.quad	0x3fd381e724cfdc8a              # double 0.30480364413183081
	.quad	0x3fe5506331762e54              # double 0.66606292400815414
	.quad	0x3fd36776cc26c4f2              # double 0.30318994461693116
	.quad	0x3fe17235e90a787a              # double 0.54519172206688826
	.quad	0x3f8f09f3edbdd580              # double 0.015155702297969809
	.quad	0x3fd69b2743c2e938              # double 0.35321981065102959
	.quad	0x3fe2f26a55bf8830              # double 0.5920917200821858
	.quad	0x3fde259d282b07f4              # double 0.47104576990761804
	.quad	0x3fe6368ac0b2bc60              # double 0.69415795933117508
	.quad	0x3fe94b474676fc8a              # double 0.79043926012663346
	.quad	0x3fdbbe52cf586dde              # double 0.43349142311646272
	.quad	0x3fe4d6f557a5100e              # double 0.65124003522987706
	.quad	0x3fd83294e20ce4b2              # double 0.3780872542880146
	.quad	0x3fc0d3367bc33dd4              # double 0.13144570391749133
	.quad	0x3fde319fb6339fe6              # double 0.47177880089884494
	.quad	0x3feb6de43f83a942              # double 0.85716450123917576
	.quad	0x3fd242dfbd367b6a              # double 0.28533166387381093
	.quad	0x3fd3850243449986              # double 0.30499321526658496
	.quad	0x3fd48c03f751ef84              # double 0.32104586746549324
	.quad	0x3feb2e846af9e668              # double 0.84942837613853062
	.quad	0x3fe8e1fb7bae2f1f              # double 0.77758573681191823
	.quad	0x3fe4a909ef678208              # double 0.64563462027223384
	.quad	0x3fbf6923ab414b18              # double 0.12269804888755365
	.quad	0x3fc7145f8b839b30              # double 0.18030924141131655
	.quad	0x3fd26fa4597b34f0              # double 0.28806408632665548
	.quad	0x3fc8417e535ff060              # double 0.18949870177300721
	.quad	0x3fe4b8667ad3ab0b              # double 0.64750980367293332
	.quad	0x3fdcf00736930cd8              # double 0.45215015725643815
	.quad	0x3fdd398b13c0b42e              # double 0.45663716248492647
	.quad	0x3fe176fb0280e6fc              # double 0.54577398766488683
	.quad	0x3fe7a050e0ad2d01              # double 0.73831981546518943
	.quad	0x3f864dd275e93900              # double 0.010890621398314426
	.quad	0x3fe7c74eeeeeb4a9              # double 0.74307963053219794
	.quad	0x3fc656c67c169d40              # double 0.17452317294121578
	.quad	0x3fc382c8dd786f34              # double 0.15242873014437353
	.quad	0x3fd6db686f3de2a8              # double 0.35714159835292003
	.quad	0x3feb170e91c6a938              # double 0.84656456443671058
	.quad	0x3feede11746bf5b5              # double 0.96460793245903764
	.quad	0x3fd95a408e5b215e              # double 0.39613355543089834
	.quad	0x3fd140bd3e7a1956              # double 0.26957636929764328
	.quad	0x3fd7407449bd8758              # double 0.36330897523122507
	.quad	0x3feb211b945bb8ff              # double 0.84779147125462362
	.quad	0x3fe553e57a714069              # double 0.66649125971345058
	.quad	0x3fe8e3c44de5b664              # double 0.77780356611556245
	.quad	0x3fc3becb6120a848              # double 0.15426008455807705
	.quad	0x3fe445b744b154fe              # double 0.63351024071258144
	.quad	0x3fec119d69cbac6a              # double 0.87715025580599826
	.quad	0x3fc300ad60813728              # double 0.14845816814561741
	.quad	0x3feb70904745e18b              # double 0.85749067230703824
	.quad	0x3fdc1b47b219e7ce              # double 0.43916504280752811
	.quad	0x3fee9ca473bc9925              # double 0.95662138562037013
	.quad	0x3feee6a43efd5a3f              # double 0.96565449049632678
	.quad	0x3fc7eaea0be6ca68              # double 0.18685651379708479
	.quad	0x3fe89b5bcce10e71              # double 0.76896467223600784
	.quad	0x3feb5e244588e69e              # double 0.85524190503129538
	.quad	0x3fd2fcc6cf378722              # double 0.29667825923944424
	.quad	0x3fe1d360a6a238c2              # double 0.55705292268410056
	.quad	0x3fa4d96a7144e1c0              # double 0.040721250845709545
	.quad	0x3fe78d1e4efe9e5e              # double 0.73597636631616203
	.quad	0x3fdfdfbcc8319d5c              # double 0.49803084898163319
	.quad	0x3fe8bf673238cce6              # double 0.77336463746032957
	.quad	0x3fe229c8ef32b2e9              # double 0.5676006957852141
	.quad	0x3fcdd1b9003b4278              # double 0.23296272765448456
	.quad	0x3fd7f445ad5d66c2              # double 0.37428419046555572
	.quad	0x3fe96943e2df558b              # double 0.79409975348487316
	.quad	0x3fecc558366f77b8              # double 0.89908991462629384
	.quad	0x3fd21a850b5e3940              # double 0.28286863432085241
	.quad	0x3fc3c4f21a3560f0              # double 0.15444780616485998
	.quad	0x3fed6bafc1d1065b              # double 0.91939533095155512
	.quad	0x3fc074ae57ee4320              # double 0.12856082242481026
	.quad	0x3fe0adc93f62e61a              # double 0.52121412639752696
	.quad	0x3fe605d5cece8271              # double 0.68821230308465264
	.quad	0x3fdfdb8f6556f228              # double 0.49777588745544898
	.quad	0x3fe7093eaf00f454              # double 0.71987852268615393
	.quad	0x3fe34624e857d003              # double 0.6023125207852903
	.quad	0x3fef0da17e235050              # double 0.97041391979520064
	.quad	0x3fd4d90b03001cae              # double 0.3257472543049954
	.quad	0x3fc5f09698077c84              # double 0.17140467093756595
	.quad	0x3febdb08591fa037              # double 0.87048737914029217
	.quad	0x3fc46c6776c7f2b8              # double 0.15955823230605914
	.quad	0x3fa00f1d1cfdc8b0              # double 0.031365308560354577
	.quad	0x3fc28ec1181f8464              # double 0.14498151471983356
	.quad	0x3fe06eeeee7543ec              # double 0.51354166578141536
	.quad	0x3fecf0073c9a33fc              # double 0.90430032574079133
	.quad	0x3fe822d2331372b3              # double 0.75425062156462841
	.quad	0x3fec83a49aaa1876              # double 0.89106970031640631
	.quad	0x3fdae7e16f0a49f0              # double 0.42040286868828414
	.quad	0x3fe900bb8b04cf54              # double 0.78133942749125617
	.quad	0x3fe7d28c8baae368              # double 0.74445178297820025
	.quad	0x3fe7a492e9b4c0cd              # double 0.73883958478656953
	.quad	0x3fd75a0b23dcd0b0              # double 0.36487082006648119
	.quad	0x3fed992958a19a4d              # double 0.92494647322457413
	.quad	0x3fe2dfa255935860              # double 0.58979908670404413
	.quad	0x3fc5da818dde14fc              # double 0.17073077609180831
	.quad	0x3fe97153f3e08b97              # double 0.79508397705318401
	.quad	0x3fe16d67af632daa              # double 0.54460510497431369
	.quad	0x3fef09d16e26fe79              # double 0.9699484969532498
	.quad	0x3fc65d0a3ad3202c              # double 0.17471435425091053
	.quad	0x3fe5e8981e0030f7              # double 0.68464284762879302
	.quad	0x3fe2b8859bbb67ec              # double 0.58502464691559686
	.quad	0x3facb2e0b77eca40              # double 0.056052229308438672
	.quad	0x3fec0a6f1d7b50ed              # double 0.87627368696351271
	.quad	0x3fed0b04871cd8f1              # double 0.90759493245312062
	.quad	0x3fe24158fb9ddb5b              # double 0.57047700065491413
	.quad	0x3fee8739abe6be45              # double 0.95400699209671613
	.quad	0x3fe4938eff68401d              # double 0.6430125225469997
	.quad	0x3f8829cebb59b0c0              # double 0.011798491566161196
	.quad	0x3fec3e6966278553              # double 0.8826186175539682
	.quad	0x3fe9a59083b587d4              # double 0.80146051144060459
	.quad	0x3fed488e1110cd89              # double 0.91510680516368936
	.quad	0x3fdf62e654fb8edc              # double 0.49041136073195246
	.quad	0x3fd92b054252f16a              # double 0.39325076558068039
	.quad	0x3fe51180f71cf188              # double 0.6583866907526934
	.quad	0x3fec247a1fc97e20              # double 0.87945276459135257
	.quad	0x3fef4c45856932a7              # double 0.97806049401113603
	.quad	0x3fea5dc472360b99              # double 0.82394621188028616
	.quad	0x3fe1c2967116a35a              # double 0.55500337684234613
	.quad	0x3fd5d12a88035a1a              # double 0.34089148790863677
	.quad	0x3fd37f992d656e04              # double 0.30466298516486767
	.quad	0x3fe9353e0546feeb              # double 0.78774930029609658
	.quad	0x3fd89ba33b04e392              # double 0.38449936641296134
	.quad	0x3fe53b3f4121f036              # double 0.6634823104973353
	.quad	0x3fea1f9859788ab4              # double 0.81635682558802225
	.quad	0x3fd9c8d4f25b08ca              # double 0.40288280170001356
	.quad	0x3fb445fdd210d358              # double 0.0791929853301786
	.quad	0x3fd6cfe3dc3cd6c2              # double 0.35643860347350309
	.quad	0x3fef968dce207ad4              # double 0.98712816485552901
	.quad	0x3fe93fc4d0b47b40              # double 0.7890342785138742
	.quad	0x3febf55fa622939c              # double 0.87370283554320193
	.quad	0x3fd21e2e5fc4aede              # double 0.28309211113331212
	.quad	0x3fe05cb9f6c3cdb1              # double 0.51131914325963213
	.quad	0x3fe5fb7d340bf9f5              # double 0.68694935002696289
	.quad	0x3fd007bf8615ad6a              # double 0.25047290891844531
	.quad	0x3fe931d75e3c5ad1              # double 0.78733414082929631
	.quad	0x3fb7dabe218433b8              # double 0.093181498701780607
	.quad	0x3fe1796f18e8716b              # double 0.54607348313178983
	.quad	0x3fb838622be1f8f8              # double 0.094610343659926488
	.quad	0x3fdb9f8e1bfd9cb6              # double 0.43161347135032757
	.quad	0x3fe59897212f9934              # double 0.6748767517245029
	.quad	0x3fea15d947750f65              # double 0.81516708332536025
	.quad	0x3fef15c60fad081d              # double 0.97140791951847271
	.quad	0x3fd3182a5dea2d62              # double 0.29834994479525367
	.quad	0x3fdcd91b5de0c658              # double 0.45075115363861107
	.quad	0x3fcebc7f4bae0158              # double 0.2401274795083832
	.quad	0x3fef1eb3c44541f3              # double 0.97249782880868307
	.quad	0x3fd2bbabee6f69b0              # double 0.29270456585586668
	.quad	0x3fcbe93abc1dab58              # double 0.21805509744020912
	.quad	0x3fed1083999d7823              # double 0.90826587679817228
	.quad	0x3fd884ab036d44c6              # double 0.38309741339351111
	.quad	0x3fce60a14fd92ec8              # double 0.23732391737791247
	.quad	0x3fcf7c923d474530              # double 0.24598911277875279
	.quad	0x3fcd001b7bdcb528              # double 0.22656577632862107
	.quad	0x3fea9c95ac50e6ad              # double 0.83161433845017074
	.quad	0x3fe922264e5b24e4              # double 0.78541865638649399
	.quad	0x3fd65487dae86086              # double 0.34890934350688274
	.quad	0x3f9abbedd03edce0              # double 0.026107517085361631
	.quad	0x3fdea3791706f7d2              # double 0.47872760056259012
	.quad	0x3fec5ac52393fd49              # double 0.88608033131451081
	.quad	0x3fbdcf1e52ed44e0              # double 0.11644162678318848
	.quad	0x3fe359db6b4f7a64              # double 0.60471888503145665
	.quad	0x3fbe8a8016f5c970              # double 0.11930084763097226
	.quad	0x3fea75f72cba47e9              # double 0.82690008865233466
	.quad	0x3f3c9ddf93aec800              # double 4.3665607852994004E-4
	.quad	0x3fe27969838e92f5              # double 0.57732082075798863
	.quad	0x3fe613b4044d9842              # double 0.68990517464113332
	.quad	0x3fb0ad5594a1afc8              # double 0.065144871508606816
	.quad	0x3fd4fb5a4f7d38de              # double 0.32784135592090802
	.quad	0x3fd90a46a22b8542              # double 0.39125219189562099
	.quad	0x3f9fbe1b4feda560              # double 0.03099863696426064
	.quad	0x3fdf6c754ac925de              # double 0.49099476149839727
	.quad	0x3fe9762d74439b06              # double 0.79567597110585164
	.quad	0x3fe4530bfc3ff0a2              # double 0.63513755099804237
	.quad	0x3fe68ade58b76e4e              # double 0.70445172622152952
	.quad	0x3fdf8fa53b18cb48              # double 0.49314242144753395
	.quad	0x3feb1def3bf5df96              # double 0.84740411482833866
	.quad	0x3fe4a53c67bffe04              # double 0.64517040504137002
	.quad	0x3fc78624c177fb6c              # double 0.18378123709404848
	.quad	0x3fea717887e43fc2              # double 0.82635141888930996
	.quad	0x3feca71c63a50676              # double 0.8953992792305161
	.quad	0x3fe455bd42a1aaa0              # double 0.63546622289625887
	.quad	0x3fafd8a9c343a5a0              # double 0.062199883542983558
	.quad	0x3fe95c766417a83f              # double 0.79253692197131176
	.quad	0x3fe03d59a9fcb9ff              # double 0.50748904419543794
	.quad	0x3fd3d7228d186a46              # double 0.3100057962307442
	.quad	0x3fa9d26f91e5de00              # double 0.050433622894100694
	.quad	0x3fecc773b80ebfda              # double 0.89934717129471697
	.quad	0x3feba6a62f73fffe              # double 0.86409291523159459
	.quad	0x3feb66c152fbc2ee              # double 0.85629335601524104
	.quad	0x3fe3ed72bd13535d              # double 0.62273537567908088
	.quad	0x3fd2618144c81042              # double 0.28720123021071597
	.quad	0x3fe321316ebca81c              # double 0.59780189159687636
	.quad	0x3feac651aa79010b              # double 0.83670886321491034
	.quad	0x3fe1ea4a2ec18def              # double 0.55984982616467771
	.quad	0x3febe140b27059df              # double 0.87124667025892311
	.quad	0x3faa8406ea1caa40              # double 0.051788536146279984
	.quad	0x3fce8c1929b6a5c4              # double 0.23865046059408546
	.quad	0x3fe2d9e0f39a4689              # double 0.58909652308121097
	.quad	0x3fd4928145c75598              # double 0.32144195379563589
	.quad	0x3fe48a7b9f007dbf              # double 0.64190465025961163
	.quad	0x3fee8bee282675b1              # double 0.95458133546678969
	.quad	0x3fc92041c7884a60              # double 0.196296904018328
	.quad	0x3fe66f65f32d9331              # double 0.7010984181948513
	.quad	0x3fe22562f799f964              # double 0.56706379279766539
	.quad	0x3fcf96799cb36268              # double 0.24677963401224479
	.quad	0x3fec4b0553d14a8a              # double 0.88415781374563207
	.quad	0x3fe13ba48221b9bb              # double 0.53853059212070009
	.quad	0x3fe4ced329f17c12              # double 0.65024717514086405
	.quad	0x3fedc5cf0776f029              # double 0.93039657075815285
	.quad	0x3fe3267f51480c60              # double 0.59844938159256955
	.quad	0x3fd5a22ec95f77d2              # double 0.33802385011028691
	.quad	0x3fec98680580aa88              # double 0.89360428881384824
	.quad	0x3fb21129a756cb68              # double 0.07057438216615497
	.quad	0x3fe06b8f9bf50b57              # double 0.51313000164405309
	.quad	0x3fe7e9d48fceb0e4              # double 0.7472937401521702
	.quad	0x3fe238f43d6dafc5              # double 0.56945240018603072
	.quad	0x3fe9dac2c1562b52              # double 0.8079541946511688
	.quad	0x3fed3dcc388776ad              # double 0.91379366913652904
	.quad	0x3fdd3400345e3938              # double 0.45629887689655702
	.quad	0x3fb395853dee27e8              # double 0.076500251407338404
	.quad	0x3fef5975299e96f8              # double 0.97967012528235297
	.quad	0x3fa35e28b8188500              # double 0.037827751610402416
	.quad	0x3feba2f84085546a              # double 0.86364376641962548
	.quad	0x3fe1a9853944f3a1              # double 0.55194340882700399
	.quad	0x3fcbd41412cb0b7c              # double 0.21740961949953064
	.quad	0x3fe9fd3551f32bcd              # double 0.81215921407544445
	.quad	0x3fe0a8f092052ed3              # double 0.52062252540187115
	.quad	0x3fee4358a5700ffb              # double 0.94572098075923294
	.quad	0x3fdff369063410ac              # double 0.49923158269690293
	.quad	0x3fab04a94271b340              # double 0.052769936905724624
	.quad	0x3fe6437423884847              # double 0.69573409023201627
	.quad	0x3fe7f1e9a95e684d              # double 0.74828036384429597
	.quad	0x3fdf1b2313e48c9a              # double 0.48603131239560471
	.quad	0x3fea97ab25820352              # double 0.83101422620539211
	.quad	0x3fe7a5c99463f4f5              # double 0.73898772223006282
	.quad	0x3f79c3be7fe1e780              # double 0.0062901917827903331
	.quad	0x3fa1d4c6050197f0              # double 0.034826458083259015
	.quad	0x3fe8be4d81ebfaa1              # double 0.77323031783437923
	.quad	0x3fbf7969e98407f0              # double 0.12294637633388539
	.quad	0x3fa2cf62a950aa00              # double 0.036738475006433902
	.quad	0x3fd8a90fd538e0de              # double 0.38531871626356728
	.quad	0x3fda727c549c7e7c              # double 0.41323765051672701
	.quad	0x3fcedbc5ab4bde38              # double 0.2410819136054998
	.quad	0x3fef3e98e0b5cb53              # double 0.97639125717828745
	.quad	0x3fcd5f91d80317d4              # double 0.2294790558573242
	.quad	0x3fd1f77fff77798c              # double 0.28073120067519919
	.quad	0x3febe47ae897cc79              # double 0.87164063862145646
	.quad	0x3fef5ee72ab7de57              # double 0.98033483832746071
	.quad	0x3fde36f3f3484742              # double 0.47210406072655442
	.quad	0x3fe0d3ce27378ffb              # double 0.5258551374395205
	.quad	0x3fe903f0d9e92d91              # double 0.78173105774605933
	.quad	0x3fcf49653fd50730              # double 0.24442735306552654
	.quad	0x3fab893837342c70              # double 0.053781277407403461
	.quad	0x3fdd135ce0ae3a5a              # double 0.4543068117281216
	.quad	0x3fdb168efab8ac10              # double 0.42325186237820933
	.quad	0x3faff5f4606fe910              # double 0.062423359653580701
	.quad	0x3fb4daed76ef4588              # double 0.081465570008068977
	.quad	0x3fe28bc97c67b7ae              # double 0.57956384942894146
	.quad	0x3fe2c7ff5e316d44              # double 0.58691376111111326
	.quad	0x3fe019c83529ea33              # double 0.50314722426930414
	.quad	0x3fea280de60194f1              # double 0.81738943980295009
	.quad	0x3feeaa6afba0487a              # double 0.95830296655391511
	.quad	0x3f9590b4095a7b80              # double 0.021059811659707162
	.quad	0x3fd82663136a14c4              # double 0.37734295745788082
	.quad	0x3fe72777e18f4b06              # double 0.72356790594707898
	.quad	0x3fceeb2c813813b0              # double 0.24155193624042459
	.quad	0x3fd74734fc509948              # double 0.36372112884636865
	.quad	0x3fef2323e7d9f02d              # double 0.97303958209477559
	.quad	0x3fd8ca0427c228c6              # double 0.38733009226474413
	.quad	0x3fed5b0d4ab68e00              # double 0.91736473648455785
	.quad	0x3fd8e705c0a057ba              # double 0.38910049258390311
	.quad	0x3febbe44f94ee683              # double 0.8669762486744762
	.quad	0x3fbb38c1af1abc90              # double 0.10633478665362106
	.quad	0x3fd15e00d58a7e64              # double 0.27136250356304559
	.quad	0x3fef776e02e9342f              # double 0.98332882469697391
	.quad	0x3fe8dbbd4f9d2e36              # double 0.77682366895300592
	.quad	0x3fe9720ed460daeb              # double 0.79517308693070043
	.quad	0x3fed78aeeb4eb7ca              # double 0.92098184545988571
	.quad	0x3fe57e9ab8edf3a4              # double 0.67170463675539738
	.quad	0x3f96d8c432fc7ce0              # double 0.022311273204761117
	.quad	0x3fe80d435b08789f              # double 0.75161903171444411
	.quad	0x3fd261f3ef9a2a4c              # double 0.28722856901791682
	.quad	0x3fc557f88f1f08a0              # double 0.16674715984669763
	.quad	0x3fa7244c68e2e9d0              # double 0.045198810390008171
	.quad	0x3fdc51547ea3d25e              # double 0.44246399275951898
	.quad	0x3fe238210b78e710              # double 0.56935169449499945
	.quad	0x3fe718a660271ca8              # double 0.72175902156677285
	.quad	0x3fe4a1d8f743c546              # double 0.64475677770511974
	.quad	0x3fe56da54a07f821              # double 0.66963448008732851
	.quad	0x3fe7943783bb84dd              # double 0.736842877664596
	.quad	0x3fe74f2f5897f19c              # double 0.72841613105224523
	.quad	0x3fd54a247ac5b6ec              # double 0.33265029897198306
	.quad	0x3feeae49e80e0d45              # double 0.95877547572346399
	.quad	0x3fec2081986da42d              # double 0.87896804591321642
	.quad	0x3fe50fd7863702d4              # double 0.65818382467122172
	.quad	0x3fe7cc585026e45f              # double 0.7436944547145109
	.quad	0x3fee0a8666b0f64f              # double 0.93878479058157349
	.quad	0x3fe76200e0c1c6a5              # double 0.73071330926741906
	.quad	0x3fe35b87a184a77d              # double 0.60492307230491316
	.quad	0x3fac35125967cb60              # double 0.055092404760123115
	.quad	0x3fe496b7b2874b90              # double 0.64339814061018963
	.quad	0x3fe84ace32aaf653              # double 0.75913152595576106
	.quad	0x3fbdbef678b73a68              # double 0.11619511077081202
	.quad	0x3fe3d6f05ad09147              # double 0.61998765694856039
	.quad	0x3fe5432ae7820dda              # double 0.66444916931544218
	.quad	0x3fc037fe9eea80bc              # double 0.12670881995746253
	.quad	0x3fda0e24fec82d4a              # double 0.40711331254052097
	.quad	0x3fdca65a1debc2a4              # double 0.44765332147566483
	.quad	0x3fc640d79bf09910              # double 0.17385382761239798
	.quad	0x3feda1b85c9d6c5a              # double 0.92599123085836799
	.quad	0x3fc4d7ed20b9d438              # double 0.16283954713768067
	.quad	0x3fceded0a86b263c              # double 0.24117477630197637
	.quad	0x3fe2581b7082997a              # double 0.57325527166976475
	.quad	0x3fe1fa867a3f4aea              # double 0.56183170200742194
	.quad	0x3fb13b4ac9950988              # double 0.067310976232908826
	.quad	0x3fcb80a5fc7ad984              # double 0.21486353710288253
	.quad	0x3fea4ec31e98cdd7              # double 0.82211452461199996
	.quad	0x3fed252c94c167d3              # double 0.9107878594761537
	.quad	0x3fdc764b491c180a              # double 0.44472009791968559
	.quad	0x3fdac6fda817d738              # double 0.41839543738693719
	.quad	0x3fde321c595d3df2              # double 0.47180851675963631
	.quad	0x3fa913b06d9ae4a0              # double 0.048978341464541275
	.quad	0x3fb24c1e10bc1018              # double 0.071473960004425741
	.quad	0x3fcd913bf623f330              # double 0.23099469679427775
	.quad	0x3fd0ab150928e0ee              # double 0.2604420270395299
	.quad	0x3fd033780a61b044              # double 0.25314141286685676
	.quad	0x3fe1bb2d61a25d39              # double 0.5540987879675533
	.quad	0x3fdce3531ec5557e              # double 0.45137479786838941
	.quad	0x3fec5d9f8c058faa              # double 0.88642861698143816
	.quad	0x3feaf509831db720              # double 0.84241176231964587
	.quad	0x3fee67ab98a680a2              # double 0.95015506567508035
	.quad	0x3fef4df49face935              # double 0.97826605974777314
	.quad	0x3fe0cdad54afe17b              # double 0.5251070646327628
	.quad	0x3fec8bf55b6e813f              # double 0.89208476884599708
	.quad	0x3fb86cca9d318e60              # double 0.09541002595647674
	.quad	0x3fd47949cd462b8e              # double 0.31990284963892968
	.quad	0x3fbc7aba063fbe78              # double 0.11124766018451193
	.quad	0x3fed0b7e0a81e5d7              # double 0.90765287449101606
	.quad	0x3fdd80a057010eaa              # double 0.46097572800156661
	.quad	0x3fe26d1d52a2ca8a              # double 0.57581964626145177
	.quad	0x3fcf7d7acc2365c4              # double 0.24601683585824052
	.quad	0x3fe35adfc1016a68              # double 0.6048430223120933
	.quad	0x3fd39e102f73dfc4              # double 0.3065224135784741
	.quad	0x3fe97b0b352bceb8              # double 0.79626999268517462
	.quad	0x3fe686abf0a0f5e7              # double 0.70393940923503073
	.quad	0x3fe4156a214cfc44              # double 0.62761408332870205
	.quad	0x3fd741141b841b82              # double 0.36334707915414566
	.quad	0x3fadad42371b80e0              # double 0.057962483622533645
	.quad	0x3fd470f67755a96c              # double 0.31939469960948119
	.quad	0x3fe46f622d4483f8              # double 0.63859661904655152
	.quad	0x3fd57254c0520c7a              # double 0.33510321408557042
	.quad	0x3fda51f84d555c7c              # double 0.41125304748624791
	.quad	0x3fbe03ef9fdb6e70              # double 0.11724755909693285
	.quad	0x3fef915aacdfa25f              # double 0.98649343265885736
	.quad	0x3fcff41ced64b038              # double 0.24963723746748356
	.quad	0x3feaeccc36444c43              # double 0.8414059696100441
	.quad	0x3faf731d793baef0              # double 0.061425133751837779
	.quad	0x3feb0b8a14ef939d              # double 0.84515861596138431
	.quad	0x3febe4dab8c8949c              # double 0.87168632593661099
	.quad	0x3fe7f12ff63ee32f              # double 0.74819181532720858
	.quad	0x3fed00d236ffce5a              # double 0.90635023824729477
	.quad	0x3fe5958c6f26615d              # double 0.67450544079751362
	.quad	0x3fca58f767e82cc8              # double 0.20584003995495537
	.quad	0x3fe6d89ba72d5743              # double 0.71394140865115963
	.quad	0x3f927bdc29333160              # double 0.01805061341728853
	.quad	0x3fed3071e53c5ebc              # double 0.91216368458386609
	.quad	0x3fe490d466822867              # double 0.64267940541436708
	.quad	0x3fe91d185d8007b1              # double 0.78480165731183693
	.quad	0x3fecb78d304979bf              # double 0.89740619116837894
	.quad	0x3fe8e072210cd8ef              # double 0.7773981709968022
	.quad	0x3fc7481841d92af8              # double 0.18188765731095891
	.quad	0x3fd0600775c29cf6              # double 0.25586115360279338
	.quad	0x3fef66c8a45d6c23              # double 0.98129684546018258
	.quad	0x3fe976818ed5b8bb              # double 0.79571607491904872
	.quad	0x3fe9a8236c538865              # double 0.80177470357399427
	.quad	0x3fe6015771ad5cdf              # double 0.68766376688554576
	.quad	0x3feebf09f8797493              # double 0.96082018404162494
	.quad	0x3fe56eb665ac0cab              # double 0.6697647081167778
	.quad	0x3fe9951c483dddeb              # double 0.79945196256352113
	.quad	0x3fe3cb290159728f              # double 0.61854982627444766
	.quad	0x3fdfc21de7488bea              # double 0.49622294985073145
	.quad	0x3fd6f65026fdf22a              # double 0.35878375823793596
	.quad	0x3fed2ba855c375c3              # double 0.91157929182707453
	.quad	0x3fbcf27956adefe0              # double 0.11307485929677297
	.quad	0x3feafbd275ca60a3              # double 0.84324000364269514
	.quad	0x3f8f39d22a6a7cc0              # double 0.015247003478462751
	.quad	0x3fdcf08d705e79aa              # double 0.45218215917148064
	.quad	0x3fec2149ee6de9fd              # double 0.87906357353432407
	.quad	0x3feb1f9b304b0c9d              # double 0.84760817940004396
	.quad	0x3fc648800fd1c9c4              # double 0.17408753178058423
	.quad	0x3fb8ba53e32ddf90              # double 0.096593134845418981
	.quad	0x3feb7aa1576d7db8              # double 0.85871951175425121
	.quad	0x3fe8dfed40aba4a0              # double 0.77733481055215136
	.quad	0x3fe85029e11465cf              # double 0.75978559456705763
	.quad	0x3fdc083a21f6c8a0              # double 0.43800214115902669
	.quad	0x3fe1639b066daf65              # double 0.54340888267095677
	.quad	0x3fda3af4b308f648              # double 0.40984837993514533
	.quad	0x3fb06d65089fcae8              # double 0.064169230084910489
	.quad	0x3fe28f5f3e3fe6d6              # double 0.58000147016647463
	.quad	0x3fa6976d3c1b85d0              # double 0.044124044024794196
	.quad	0x3fece5a954588ac8              # double 0.90303484414865753
	.quad	0x3fedb6057f112ee7              # double 0.92846941774174929
	.quad	0x3f85ff6b8db909c0              # double 0.010741081488167548
	.quad	0x3fa5367e717cd450              # double 0.04143138060900553
	.quad	0x3fe9c529b8720233              # double 0.80531774544221546
	.quad	0x3fc1c3291dd9fbc8              # double 0.13876832921593363
	.quad	0x3fe9b144eb7ff362              # double 0.80288930889183185
	.quad	0x3fcbbcf258c64778              # double 0.21670369467443229
	.quad	0x3fa3b9971dee35e0              # double 0.038525316623331696
	.quad	0x3fdf06821066f3b2              # double 0.48477222062848135
	.quad	0x3fccc81b20484114              # double 0.22485674930840871
	.quad	0x3fe611e0e0cc556b              # double 0.68968242555517401
	.quad	0x3fd14105ea1e8d30              # double 0.26959369528977373
	.quad	0x3fb1e8a79ef7f800              # double 0.069956280050945452
	.quad	0x3fc92e9da18f2b00              # double 0.19673509968409775
	.quad	0x3fef133d74843f73              # double 0.97109864003321744
	.quad	0x3fbab0d31ef2ee90              # double 0.10426063066091218
	.quad	0x3fec60bfefcdc16c              # double 0.88681027256647615
	.quad	0x3fe8a419cfd5c702              # double 0.77003183930193608
	.quad	0x3fec85584b123e16              # double 0.89127745306353989
	.quad	0x3f9364053a3331e0              # double 0.018936235120053158
	.quad	0x3fcf9a3fc59f096c              # double 0.24689480924105156
	.quad	0x3fea01f2cd51b48a              # double 0.81273784734152454
	.quad	0x3fc7cefb15caeecc              # double 0.18600405277344689
	.quad	0x3fe9e28627bc0c4e              # double 0.80890186081558979
	.quad	0x3fa8a068ab668260              # double 0.048098822520164175
	.quad	0x3fed136cd93f7b4e              # double 0.90862123900647318
	.quad	0x3fe54a898dd85f05              # double 0.66534879402294733
	.quad	0x3fd114e53e6d6e4a              # double 0.26690035911972088
	.quad	0x3fd21a600ee6f0e6              # double 0.28285981612476829
	.quad	0x3fc80238c7e7f0b8              # double 0.18756780396495798
	.quad	0x3fe691d62335e3da              # double 0.70530230404903738
	.quad	0x3fdb11057bd2dba8              # double 0.42291390506891924
	.quad	0x3fb934149b316f88              # double 0.098450935257856753
	.quad	0x3fb63c03a10e0de8              # double 0.086853243656200285
	.quad	0x3fe0bc1d62327135              # double 0.52296322993382793
	.quad	0x3fd0de9f32c6a3bc              # double 0.26358776053035249
	.quad	0x3f582e38ed4f3800              # double 0.0014758640220295938
	.quad	0x3fe63b9a25f1359c              # double 0.69477565203276326
	.quad	0x3fed7385f8934dda              # double 0.92035196828731647
	.quad	0x3fcd1add06b58ef0              # double 0.22738230540846116
	.quad	0x3fc6c4584c9740f0              # double 0.17786697139536711
	.quad	0x3fc27b5e63fa1c00              # double 0.14438991433800652
	.quad	0x3fede3f46a53f981              # double 0.93407650725548319
	.quad	0x3fbf6442b859df30              # double 0.12262360573538156
	.quad	0x3fd26d49a9b9a134              # double 0.28792039465635644
	.quad	0x3fd7ac926fa5b2ba              # double 0.36990795996716097
	.quad	0x3fefcca889784df8              # double 0.99373270845029448
	.quad	0x3fd4d6678dc15ebe              # double 0.32558621257110676
	.quad	0x3fb4fbbff1769ef0              # double 0.081966396761909754
	.quad	0x3fe5336e87a82646              # double 0.66252829070544617
	.quad	0x3fcc3a14782b6e28              # double 0.22052245967539474
	.quad	0x3fe046475c69a828              # double 0.50857894944534099
	.quad	0x3fddee72fd933b34              # double 0.46767878306575317
	.quad	0x3fe28c42909609d6              # double 0.57962158431501609
	.quad	0x3fd08bf844d81c44              # double 0.25854307864250736
	.quad	0x3fe1a0961c5055ac              # double 0.5508528283123062
	.quad	0x3feb0416e4b7819d              # double 0.84424919768575857
	.quad	0x3fc86946025f14d4              # double 0.19071269145766812
	.quad	0x3fbc463c078d68c0              # double 0.11044669327148693
	.quad	0x3fe90e7865767079              # double 0.78301639382290411
	.quad	0x3fe31ec3f7104f88              # double 0.59750555281287721
	.quad	0x3fdf3a0d651f712a              # double 0.48791823268199386
	.quad	0x3fada2160cc526d0              # double 0.057877244051793064
	.quad	0x3fecc2ea7f9e41ae              # double 0.89879345822742152
	.quad	0x3febc05119eb1de8              # double 0.86722617208664321
	.quad	0x3fee7a3f4a6499d6              # double 0.95242275743367588
	.quad	0x3feaf0021dece586              # double 0.84179788441467518
	.quad	0x3fea9d69f84ab186              # double 0.83171556944357472
	.quad	0x3fe223f7028ea4d3              # double 0.56689024447873704
	.quad	0x3fca25b565ebf418              # double 0.20427577473302061
	.quad	0x3fd19bcd5ad0e934              # double 0.27513440960651114
	.quad	0x3f9a1f64e226b5e0              # double 0.025510383895086863
	.quad	0x3fcf989c2898cda8              # double 0.24684478742856908
	.quad	0x3fd2ebc3c29de332              # double 0.29563993459264559
	.quad	0x3fddc5d56ca16cda              # double 0.46519981010869815
	.quad	0x3fded530d489de1c              # double 0.48176213031499215
	.quad	0x3fc07e10228fc188              # double 0.12884713828635719
	.quad	0x3fee9f14193a22f7              # double 0.9569187634197921
	.quad	0x3fc9041269f3c984              # double 0.19543676541759336
	.quad	0x3fdf544ce2290df2              # double 0.48952028356526889
	.quad	0x3fd1ccc5a6001588              # double 0.27812329493493637
	.quad	0x3fe8924d056b75ba              # double 0.76785899218128084
	.quad	0x3fd103f0107e229a              # double 0.26586534128777262
	.quad	0x3fe564586472ef14              # double 0.66849918002069098
	.quad	0x3fd85c1c0eb8ec3e              # double 0.38062192380647619
	.quad	0x3fe0dc79059ec8a5              # double 0.52691317651467229
	.quad	0x3fc5e286307bef50              # double 0.17097546927822771
	.quad	0x3feb0a83dbf37660              # double 0.84503357848343441
	.quad	0x3fe41369ab9cad5d              # double 0.62736972349140852
	.quad	0x3fd4b5852014760c              # double 0.32357910282903002
	.quad	0x3fd14e1ee8ed31fc              # double 0.27039311167462166
	.quad	0x3fc998f69852df50              # double 0.19998056829148902
	.quad	0x3fc70bd1fbba8e7c              # double 0.18004822532121867
	.quad	0x3fb389b166924c38              # double 0.076319778005470407
	.quad	0x3fe777ac0d9af5c5              # double 0.73335840852058054
	.quad	0x3fefe8fde67febfd              # double 0.99719138164016352
	.quad	0x3fe9900a337e8288              # double 0.79883298928696522
	.quad	0x3fecf7fcc3a5e63f              # double 0.90527189457424828
	.quad	0x3fc6843609d83208              # double 0.17590976219834453
	.quad	0x3fd021d1707c0384              # double 0.25206409439856992
	.quad	0x3fe1567a29b1f15a              # double 0.54180629867145602
	.quad	0x3fd5340266591c18              # double 0.33129940028124016
	.quad	0x3fd0af587d29808e              # double 0.26070224974501677
	.quad	0x3fee29702cf55f4d              # double 0.94255837231592354
	.quad	0x3fe84808f75dd24d              # double 0.75879333795325865
	.quad	0x3fe2f2987c5be14b              # double 0.59211372650956073
	.quad	0x3fbf1bbdbfaf0830              # double 0.12151704721239365
	.quad	0x3fc64b12958aa540              # double 0.17416603376231343
	.quad	0x3fed36502488eab0              # double 0.91288001189908208
	.quad	0x3fe1991fb8da33bb              # double 0.54994188407874078
	.quad	0x3fd3d6e09f0e7a94              # double 0.30999007733218176
	.quad	0x3fb439080c493568              # double 0.078995230674271277
	.quad	0x3fef5a9324e60df7              # double 0.97980649191634838
	.quad	0x3fb74035dd0043c0              # double 0.09082352300198604
	.quad	0x3fe55216d78fa18b              # double 0.66627065755624082
	.quad	0x3fe38cbc46508717              # double 0.61092962010681873
	.quad	0x3fecfad44a466b93              # double 0.90561880595065458
	.quad	0x3fd0926875ab40d2              # double 0.25893603793248332
	.quad	0x3fcd4c5c6d9214fc              # double 0.22889285421494054
	.quad	0x3fbb709ff19c3ca0              # double 0.10718726776780096
	.quad	0x3fa4ba10ff72e010              # double 0.040482073958116982
	.quad	0x3fe00889668eb71e              # double 0.50104208021886953
	.quad	0x3fad7dfc7761fd20              # double 0.05760182339963138
	.quad	0x3fe9f5b532c1cca6              # double 0.81124362863046851
	.quad	0x3fb7672f78f55970              # double 0.091418234854563129
	.quad	0x3fe7f407d3f248fc              # double 0.74853888889108999
	.quad	0x3fd9a39cedd4731c              # double 0.40061114526342734
	.quad	0x3fd8c919dfe48c54              # double 0.38727423538711503
	.quad	0x3fa9b2dc8d8d5ec0              # double 0.050192730216335857
	.quad	0x3fe371321b46299b              # double 0.60756783797232872
	.quad	0x3fcd9f9f62a17b6c              # double 0.23143379512745399
	.quad	0x3fe12434829df546              # double 0.5356695700753924
	.quad	0x3fb4f35a24648ad0              # double 0.081838258633563087
	.quad	0x3fdbff371801f40a              # double 0.43745210022444836
	.quad	0x3fe23840d408f057              # double 0.56936685002393517
	.quad	0x3fe24ceebbc11d45              # double 0.57189118071338696
	.quad	0x3feb36cac5b1baea              # double 0.85043848621520834
	.quad	0x3fdadcf5592a8ef6              # double 0.41973622996941573
	.quad	0x3feb534c36cdcbc2              # double 0.85391817764172395
	.quad	0x3fec227cc4199075              # double 0.87920988369707109
	.quad	0x3fe479a652581bd8              # double 0.63984981615873959
	.quad	0x3fc2fcb5165d0c6c              # double 0.14833701698271129
	.quad	0x3fbd35d386614910              # double 0.11410257368814691
	.quad	0x3fca430f2879f2e0              # double 0.2051714847219932
	.quad	0x3fd13f1b87554d6a              # double 0.26947677818426163
	.quad	0x3fcd76ac01c02988              # double 0.23018407903175508
	.quad	0x3fe1c1a267f21595              # double 0.55488701154597442
	.quad	0x3fe9f3a8ec2a2afd              # double 0.81099363447114536
	.quad	0x3fd3fc7bb5eaf86a              # double 0.31228535428443271
	.quad	0x3feb2f12b0f9a83e              # double 0.8494962173983891
	.quad	0x3fee3f1c8bd68a3e              # double 0.94520404159658944
	.quad	0x3fd69221a8760ad0              # double 0.35266915751723804
	.quad	0x3fd9cd04ef1a7a3a              # double 0.40313838338798613
	.quad	0x3fca229b14cc27c4              # double 0.20418108478071251
	.quad	0x3fc78b0852cf4bd8              # double 0.18393043559498667
	.quad	0x3fcc3c7747d4485c              # double 0.22059527404104784
	.quad	0x3fc8a566d47eb508              # double 0.19254765868883106
	.quad	0x3fec15e25b83c00c              # double 0.87767141221957123
	.quad	0x3feab04691747b60              # double 0.83401802453213846
	.quad	0x3fe308c73c056688              # double 0.59482156489248528
	.quad	0x3fdcff89f8e2859e              # double 0.45309685998116744
	.quad	0x3fc43dd1b1ee17e4              # double 0.1581365698622782
	.quad	0x3fe0b8a677be620e              # double 0.52254031550825331
	.quad	0x3fc87f9421829964              # double 0.19139339100110953
	.quad	0x3feec03582319382              # double 0.96096301487396851
	.quad	0x3feeec6b7bed44c5              # double 0.96635984615763759
	.quad	0x3fe1124b4490feb2              # double 0.53348315612671215
	.quad	0x3fb9c71ad356ffa0              # double 0.10069434795059218
	.quad	0x3fbd25ff27d6a1f8              # double 0.11386103365533262
	.quad	0x3febf6999679b01d              # double 0.87385253324237377
	.quad	0x3fdbae37418b47ce              # double 0.4325082912520174
	.quad	0x3fcfe06a7c59b4bc              # double 0.24903613158986626
	.quad	0x3fe210ee5589047e              # double 0.5645667715654239
	.quad	0x3feff24079715020              # double 0.99832175940764855
	.quad	0x3fc1f20b50e98b40              # double 0.140199102886152
	.quad	0x3fe086fc076bdca3              # double 0.51647759866218157
	.quad	0x3fc936467cecc364              # double 0.19696885204168801
	.quad	0x3fedf4ae0f1b191b              # double 0.93611815405236898
	.quad	0x3fe0100dcbd250f9              # double 0.50195970353027441
	.quad	0x3fd66c86b7f4487a              # double 0.35037391628532755
	.quad	0x3fa02faa7684cde0              # double 0.031613661735174992
	.quad	0x3fdd24b8060ecbca              # double 0.45536614028531786
	.quad	0x3f9c632920f7a600              # double 0.027722017895859707
	.quad	0x3fd1d150bda41108              # double 0.27840059775941528
	.quad	0x3fc6de8318b3a958              # double 0.17866553026335441
	.quad	0x3feabf2eaa90368e              # double 0.83583768189574115
	.quad	0x3fd545fcf5b1b01e              # double 0.3323967360836394
	.quad	0x3fa072259da0eff0              # double 0.032120872012882162
	.quad	0x3feb21b1f7f54c83              # double 0.84786318234763802
	.quad	0x3fdef23dd32d51a0              # double 0.48353524801975745
	.quad	0x3fcee3588536f8c0              # double 0.24131304268479958
	.quad	0x3fef9927cde916b0              # double 0.98744573799986846
	.quad	0x3fde1566ba3c6546              # double 0.47005623042203515
	.quad	0x3fd5c98b0b46ef52              # double 0.3404262170913529
	.quad	0x3fd6a4f3385a15ae              # double 0.35381775382151204
	.quad	0x3fe39ab1a6a9be57              # double 0.61263353873614335
	.quad	0x3fd3e07cd9de468c              # double 0.31057664180944111
	.quad	0x3fabb688837cf410              # double 0.054126993227761599
	.quad	0x3fe8c18a18459536              # double 0.77362541905009752
	.quad	0x3fd0c0307cbfc53a              # double 0.26173031027345284
	.quad	0x3fe00577ec2486c5              # double 0.50066753503434624
	.quad	0x3fe52794e9783ce3              # double 0.66108174895807925
	.quad	0x3fd5dc23a53d7980              # double 0.34156123291713669
	.quad	0x3fd8bdce4e9a85a4              # double 0.38658483196385363
	.quad	0x3fcb9c79d4f7865c              # double 0.21571276568197362
	.quad	0x3fbbb5a154a3c8f0              # double 0.10824020687485691
	.quad	0x3fdcb5bbcd113934              # double 0.44859213853932833
	.quad	0x3fc86f421160f2fc              # double 0.19089532707757673
	.quad	0x3faf79919512e030              # double 0.061474370429494107
	.quad	0x3feb43e881654870              # double 0.85203957817635789
	.quad	0x3fe0c93948869454              # double 0.52456344762016238
	.quad	0x3fad5272449975e0              # double 0.057269640802342314
	.quad	0x3fad55dd1c2b5d30              # double 0.057295713127752612
	.quad	0x3fe66434677e0efc              # double 0.69973201955187347
	.quad	0x3fe91951bb45c42c              # double 0.78434073044457397
	.quad	0x3fe809de5617a4cd              # double 0.75120465102113487
	.quad	0x3fb4203117e13550              # double 0.07861620743752451
	.quad	0x3fa249102f4e3d90              # double 0.035713678145039229
	.quad	0x3fd00d49a847e1b0              # double 0.25081101831122066
	.quad	0x3fbd6ebf578b1e80              # double 0.11497112166682122
	.quad	0x3fea4a531ebec795              # double 0.82157283787658975
	.quad	0x3fd91c6ba7f8fbd2              # double 0.39235965159963115
	.quad	0x3fe7fe566d554436              # double 0.7497970710193218
	.quad	0x3fe4c4dd0c7782dc              # double 0.64903118548326288
	.quad	0x3fd841e7cf346a16              # double 0.37902255282247788
	.quad	0x3f790114e2122a80              # double 0.0061045470948878355
	.quad	0x3fec88ffc9aed085              # double 0.8917235316389599
	.quad	0x3fbd5741857d1ea0              # double 0.11461267003061915
	.quad	0x3fb05d4b127ba1b0              # double 0.063923542034564518
	.quad	0x3fe1b29b7de9ceed              # double 0.55305265991634445
	.quad	0x3fea3d83c28bc42b              # double 0.8200091171003171
	.quad	0x3fe0f7863bd8c7ce              # double 0.53021537484004866
	.quad	0x3fe86f256da6edef              # double 0.76356765190524623
	.quad	0x3fd9433aa49e6c5e              # double 0.39472833705958077
	.quad	0x3fe93511809dad05              # double 0.78772807236001141
	.quad	0x3fe3d886ed79eb09              # double 0.62018152601317056
	.quad	0x3fd30aac4c12f816              # double 0.29752643040763027
	.quad	0x3fe3dc92965d6d5f              # double 0.62067536705164261
	.quad	0x3fe2ad9d58a946f2              # double 0.58369319264076425
	.quad	0x3fdaed7eff5b80a0              # double 0.42074561059235727
	.quad	0x3fdacabcddc9408e              # double 0.4186241308098112
	.quad	0x3fe0346c88a002db              # double 0.50639940914706061
	.quad	0x3fe58a05d004beaf              # double 0.67309847477550544
	.quad	0x3fce5ed332385840              # double 0.23726882888940004
	.quad	0x3feff0baffaf18ac              # double 0.99813604295993263
	.quad	0x3fc75a1108854914              # double 0.1824361125569075
	.quad	0x3fe98eb23d708f3a              # double 0.79866897582949226
	.quad	0x3fd7877736beb098              # double 0.36764316888980764
	.quad	0x3fe21f8769cad0cc              # double 0.56634874975727589
	.quad	0x3fdc9d7fc6f1c106              # double 0.44711298397216159
	.quad	0x3fc550653c17b7f4              # double 0.16651597437106569
	.quad	0x3fde18cfb9e72648              # double 0.47026436953146744
	.quad	0x3fdeccdcc6f742ec              # double 0.4812538092638039
	.quad	0x3fe2bf162e63e2a1              # double 0.58582600651341832
	.quad	0x3fd05cf87e40c0ce              # double 0.25567447976483215
	.quad	0x3fe50fbda02d87cf              # double 0.65817147526490227
	.quad	0x3fe4ceb6f9b15589              # double 0.65023373382671068
	.quad	0x3fd4b6d809ac2fd8              # double 0.32365990585890136
	.quad	0x3fe125d1fb9e6f13              # double 0.53586672920525513
	.quad	0x3fd39411e254a81c              # double 0.30591246702772579
	.quad	0x3fcfde74f2c31e44              # double 0.2489763436662874
	.quad	0x3fd7d8b30f31148c              # double 0.37260128482405075
	.quad	0x3fdf8b14c04ef386              # double 0.49286383419148938
	.quad	0x3fde059048f29cf2              # double 0.4690895759944872
	.quad	0x3fe8b767637fb654              # double 0.77238816674589338
	.quad	0x3fe85744d9f613d9              # double 0.76065294809870487
	.quad	0x3fdd5afd74cd5554              # double 0.45867859274342959
	.quad	0x3fcab40f7195d03c              # double 0.20862000509407774
	.quad	0x3fd3c465386abcb6              # double 0.30886202344386093
	.quad	0x3fe30508ba2972af              # double 0.59436451301333715
	.quad	0x3feb83a547acdcb3              # double 0.85982002257414647
	.quad	0x3fdc9917a520a660              # double 0.4468440163205738
	.quad	0x3fe7288cf5763540              # double 0.72370002691028645
	.quad	0x3fee4de85bda717b              # double 0.94701021137329577
	.quad	0x3fe98214c1ca030b              # double 0.79712903832850779
	.quad	0x3fe9129787b5a95e              # double 0.78351952081474585
	.quad	0x3fc1a1d72230f48c              # double 0.13775147599691129
	.quad	0x3fd1c0cf21c79116              # double 0.27739313410553856
	.quad	0x3fea53fd91c40afd              # double 0.82275274724847203
	.quad	0x3fc711ca080556c8              # double 0.18023038283961612
	.quad	0x3fdb1fb2fcc2ddde              # double 0.42380976375303969
	.quad	0x3fdfca95265cbd26              # double 0.49673966165842598
	.quad	0x3fc226f05bc4b650              # double 0.14181332093123666
	.quad	0x3febf085825d5764              # double 0.87311053716505826
	.quad	0x3fa04537be3b6300              # double 0.031778089496304673
	.quad	0x3fe20d8995f83d1e              # double 0.56415252009347561
	.quad	0x3fd47acf38fa795c              # double 0.31999569477365752
	.quad	0x3fc215fb29818a84              # double 0.14129581000004887
	.quad	0x3fd297f260e097b8              # double 0.29052409611392305
	.quad	0x3fe9e205b2f7d6b6              # double 0.80884060816489156
	.quad	0x3fd2166360195a78              # double 0.28261646637603333
	.quad	0x3fe73a29f188b710              # double 0.72585007834070048
	.quad	0x3fc7b860446a4490              # double 0.18531421032506445
	.quad	0x3fdb06dc57e399d0              # double 0.42229374487797333
	.quad	0x3fe124b7673716b4              # double 0.53573198470322447
	.quad	0x3fdf751770784aee              # double 0.49152170165431996
	.quad	0x3feaeaccdb198cee              # double 0.84116213601046552
	.quad	0x3fbb95f994d52ac8              # double 0.10775718577967119
	.quad	0x3feeeebcd7f05ac6              # double 0.96664278197825904
	.quad	0x3fd2b55c3d180130              # double 0.29231935468853276
	.quad	0x3fba57c4d2427768              # double 0.10290174611369951
	.quad	0x3fc7f3e2926ec3f4              # double 0.18713028097184259
	.quad	0x3fe101d0255f3fa5              # double 0.53147132205230163
	.quad	0x3fef7555cc39aa7a              # double 0.98307313812013253
	.quad	0x3fe7dbc16f2b2123              # double 0.74557563507645275
	.quad	0x3fd1529bf9e4e658              # double 0.27066707042431437
	.quad	0x3fd3cb3a13fe06d8              # double 0.30927898361561068
	.quad	0x3feb0c805a1cab79              # double 0.84527604675291379
	.quad	0x3fbc7b57e61e2420              # double 0.11125707023724418
	.quad	0x3fa2c16fe7a50b50              # double 0.036632058169309034
	.quad	0x3fddde208272c580              # double 0.46668255557150218
	.quad	0x3fe03d031f71caa9              # double 0.50744777814391739
	.quad	0x3fce45c9a5e12b5c              # double 0.23650475120151782
	.quad	0x3fe6729d64e351be              # double 0.70149106697731844
	.quad	0x3fecca82df6ca8d2              # double 0.89972060811603627
	.quad	0x3fd524fcc9849bd0              # double 0.33038253478519852
	.quad	0x3fa2e0ac8fcc3710              # double 0.036870377114707975
	.quad	0x3fe4ca4e593ecd10              # double 0.64969556265569572
	.quad	0x3fba6777f4611648              # double 0.10314130512514297
	.quad	0x3fde4bb651009d04              # double 0.47337110433950635
	.quad	0x3fdfc3ebab006522              # double 0.49633304309243631
	.quad	0x3fd6504803f14146              # double 0.34864998230934352
	.quad	0x3fc02de7766bd700              # double 0.12640088350570267
	.quad	0x3fe71cf956a287b0              # double 0.72228686257243702
	.quad	0x3fdf6f625e6980b8              # double 0.49117335529264095
	.quad	0x3f9e82b6e9fb39a0              # double 0.029795511275375497
	.quad	0x3febee29969aadd1              # double 0.87282256522069634
	.quad	0x3fd7a3d3813e9f64              # double 0.36937415715737232
	.quad	0x3fe4c4f4308dd8b6              # double 0.64904221995563804
	.quad	0x3fd351e8f952e616              # double 0.30187439296750662
	.quad	0x3fde116c137496c8              # double 0.46981336498207016
	.quad	0x3fed6f668c2ee865              # double 0.91984870318925671
	.quad	0x3febfb72c7391eda              # double 0.87444437895552629
	.quad	0x3fd1753264d88782              # double 0.27277812813019164
	.quad	0x3fbaee3dcc6b8868              # double 0.10519777527545815
	.quad	0x3fd3c17ece667e0a              # double 0.30868501812253213
	.quad	0x3fc459f775cc8418              # double 0.15899556400202708
	.quad	0x3fe96d8569850643              # double 0.79461927995016202
	.quad	0x3fdb229287af1338              # double 0.42398513079051581
	.quad	0x3fe1df1f5eab07f2              # double 0.5584866379724629
	.quad	0x3fd62da76c87ce40              # double 0.34653649901085615
	.quad	0x3f951957a5521fe0              # double 0.020604485955601493
	.quad	0x3fa6ca6af386c840              # double 0.04451307509170066
	.quad	0x3fe04c70bbee53f4              # double 0.50933109956042566
	.quad	0x3feceeaceec0a31c              # double 0.90413519507737616
	.quad	0x3fc6ecadbf671ab8              # double 0.17909786077344392
	.quad	0x3f81c49e4a22d640              # double 0.0086758009314095163
	.quad	0x3fd132bad78081b2              # double 0.2687213043700708
	.quad	0x3fd1915264eeff64              # double 0.27449474198146206
	.quad	0x3fc48537818a8e20              # double 0.16031545472388675
	.quad	0x3fedd89cde62d93e              # double 0.93269198832312106
	.quad	0x3fe58eb57b3cf0b6              # double 0.67367052144938699
	.quad	0x3fef95b9629f647c              # double 0.9870268751357254
	.quad	0x3fe40d8db030dc1b              # double 0.62665447628285464
	.quad	0x3fece3b5807a5bb1              # double 0.90279650777198672
	.quad	0x3fdae6638eef7dea              # double 0.42031182249590293
	.quad	0x3fef547f9c19ae8a              # double 0.97906475532859472
	.quad	0x3fd2466591a60860              # double 0.28554667685978607
	.quad	0x3fed25bff92c6f9d              # double 0.91085814158167333
	.quad	0x3fe1c89d23033d69              # double 0.55573899114999137
	.quad	0x3fbc431c359ab140              # double 0.11039902027795723
	.quad	0x3fe99c3423c4c7f7              # double 0.80031783090657782
	.quad	0x3feb9b1192efdfe4              # double 0.86267927836069846
	.quad	0x3fc414f3b46403e4              # double 0.15688940342081914
	.quad	0x3fd6e7fe573964aa              # double 0.3579097606467011
	.quad	0x3fed395ff038f89b              # double 0.91325375479188453
	.quad	0x3fc48eb9ca136b94              # double 0.16060564391122212
	.quad	0x3fee467a82c23082              # double 0.94610333956508463
	.quad	0x3fb5b61c23cdcb08              # double 0.084810026875668965
	.quad	0x3fe4ca7448b878e3              # double 0.64971365168801432
	.quad	0x3fd4fde3012e68c0              # double 0.32799601664886424
	.quad	0x3fef0a9434b3eff8              # double 0.97004137319117855
	.quad	0x3fe6ad6e0f0a2632              # double 0.70867064416342473
	.quad	0x3fd1d1ecda1bac5e              # double 0.27843781756991415
	.quad	0x3fd03dfc162b2496              # double 0.25378324665923324
	.quad	0x3fe9b7f4f82c7242              # double 0.80370567771348811
	.quad	0x3fc60a756d4fba44              # double 0.17219417417023142
	.quad	0x3f85f8aabff98700              # double 0.010728200896838569
	.quad	0x3fea476b21edf6b6              # double 0.82121807696213156
	.quad	0x3fe601a840d5586e              # double 0.68770229971665997
	.quad	0x3fd29a4d41093944              # double 0.29066783286261377
	.quad	0x3fe3e28eacb35c9f              # double 0.62140592318145937
	.quad	0x3fe5e225d86ab2b2              # double 0.68385593670753608
	.quad	0x3fca209c3bfe1edc              # double 0.20412018708542845
	.quad	0x3fc4fd2c990cb604              # double 0.16397626374366336
	.quad	0x3fefc6234179231c              # double 0.99293673312886054
	.quad	0x3fdb0b9189d4d2de              # double 0.42258108577816056
	.quad	0x3fbd98c6869ceca0              # double 0.11561241899919361
	.quad	0x3fec39f8ca9c9513              # double 0.88207664082134085
	.quad	0x3fa4ba0111679880              # double 0.04048159921130523
	.quad	0x3fb0c37b5fb13280              # double 0.065482817518565994
	.quad	0x3fe1d349027a2ca4              # double 0.55704164966427472
	.quad	0x3fd2cb111a0179b6              # double 0.29364421405434926
	.quad	0x3fd9da78787214d6              # double 0.40395938646572682
	.quad	0x3fe1bb16e921e554              # double 0.55408807309792474
	.quad	0x3fc67a4406c292a0              # double 0.17560625391083295
	.quad	0x3fd77a6015191c18              # double 0.36684419689521652
	.quad	0x3fe0d4472999fb5c              # double 0.52591283917704912
	.quad	0x3f83014186e2b900              # double 0.0092797393120602756
	.quad	0x3fe833646526f081              # double 0.75627345806380231
	.quad	0x3fbcbf49842bc568              # double 0.11229381062346067
	.quad	0x3fe5bc7032bab3e1              # double 0.67925271900241679
	.quad	0x3fcf58152b6dd9ec              # double 0.24487557049333419
	.quad	0x3fd76766ccf72a8a              # double 0.36568613067780886
	.quad	0x3fe263736c2073e1              # double 0.5746399986124936
	.quad	0x3fd1c10ceb846280              # double 0.27740786552161723
	.quad	0x3fe92ac35435f2f7              # double 0.78647009322557337
	.quad	0x3fe3d3d7d76a4d89              # double 0.61960975716867595
	.quad	0x3fbf148a23e9c4e0              # double 0.12140715958391324
	.quad	0x3fedace4e3d71c23              # double 0.92735523700764977
	.quad	0x3fee68dc3bbeb71e              # double 0.95030032795850494
	.quad	0x3fed3e5aa1a9de47              # double 0.91386157584106165
	.quad	0x3f8ca0e65c148240              # double 0.013978767094671274
	.quad	0x3fdd94249870c142              # double 0.46216692816507898
	.quad	0x3fb9b8acda4cf338              # double 0.10047417001346737
	.quad	0x3fe04fc12aea80a9              # double 0.50973566419636029
	.quad	0x3fd379db276a86c6              # double 0.30431250428419465
	.quad	0x3fb2dc3af1ace2d8              # double 0.073672946932571093
	.quad	0x3fe400ef9c8946c7              # double 0.62511425565227163
	.quad	0x3fcfeb0bfda4be4c              # double 0.24936056027353215
	.quad	0x3fa1b4d3e014d890              # double 0.034582730392160532
	.quad	0x3fe2bae0487c0bcd              # double 0.58531202466144239
	.quad	0x3fed64c85a7ea200              # double 0.91855256724107903
	.quad	0x3fca932d2a14f81c              # double 0.20761646799832156
	.quad	0x3fefe5ac39be5bbe              # double 0.99678622510952386
	.quad	0x3fbb78708aa6e278              # double 0.10730651269012437
	.quad	0x3fb03f72c39149c0              # double 0.063468144174556151
	.quad	0x3feef2b7bf37ffa4              # double 0.96712863299761808
	.quad	0x3fed56942af51644              # double 0.91681869878875277
	.quad	0x3fed3fb9e051605a              # double 0.91402906238637205
	.quad	0x3fd1013894e46bea              # double 0.26569952526341345
	.quad	0x3fa7cd26d5c8be00              # double 0.04648705825490751
	.quad	0x3fc32702cabd561c              # double 0.14962801837343498
	.quad	0x3fd0abcfda8cddd2              # double 0.26048656790541458
	.quad	0x3fe4e26516319c42              # double 0.65263609251713484
	.quad	0x3fd0787356fc6ccc              # double 0.25735171789865485
	.quad	0x3fc5a46b036f5490              # double 0.16908013980597447
	.quad	0x3fd58937c965d3c6              # double 0.33650011699438342
	.quad	0x3fc2fcb7e9f11dd4              # double 0.14833735392515612
	.quad	0x3fe5efa0ece13e6d              # double 0.68550153985593243
	.quad	0x3fd351800cc3556c              # double 0.30184937712086568
	.quad	0x3fe93d5f5027ff9f              # double 0.78874173789516877
	.quad	0x3fe94021a312fd48              # double 0.78907853937554595
	.quad	0x3fef960b7f529dd7              # double 0.98706602924078878
	.quad	0x3fbd882aa5b80070              # double 0.11535898729198535
	.quad	0x3fbcc6fd8231d018              # double 0.11241135052279139
	.quad	0x3fb9de2cfbbd1848              # double 0.10104638238871744
	.quad	0x3fde0ab5cce91e40              # double 0.46940369616320154
	.quad	0x3f94f27ed8764de0              # double 0.020456296884345693
	.quad	0x3fdb09d888574bc6              # double 0.42247594179678705
	.quad	0x3fa11c5e36604300              # double 0.033419555795381584
	.quad	0x3fda95620d137764              # double 0.41536761548001366
	.quad	0x3febafa910e8145c              # double 0.86519292165815953
	.quad	0x3fea5f86167ce149              # double 0.82416061775351424
	.quad	0x3fdb988e6fb469c4              # double 0.43118630322137741
	.quad	0x3fcb4e6d48249600              # double 0.21333089850047315
	.quad	0x3fe750aae721d452              # double 0.72859711783406511
	.quad	0x3fe8a07b2ae05b94              # double 0.76958998083397256
	.quad	0x3fed1cd60eeb90d4              # double 0.90977003969285386
	.quad	0x3fde0814b98b86cc              # double 0.46924322242385297
	.quad	0x3fd20618a1bf6132              # double 0.28162208362256813
	.quad	0x3f8bf69ab8ca1380              # double 0.013653954281162006
	.quad	0x3fdd72a4cc8ad12e              # double 0.46012229895429158
	.quad	0x3fedd64773a30cbc              # double 0.9324071177037676
	.quad	0x3fd5e9e1fc70abb2              # double 0.34240007068973022
	.quad	0x3fe97069f51ed644              # double 0.79497239947404141
	.quad	0x3fd08f684eecb6b0              # double 0.25875289638029653
	.quad	0x3fee32ceb1fae98a              # double 0.94370207559340824
	.quad	0x3fe2b542fa3cd06b              # double 0.58462666391870977
	.quad	0x3fea33bd79a73a12              # double 0.81881593475719883
	.quad	0x3fe5502c794958ce              # double 0.66603683174869288
	.quad	0x3fec821b984f5da7              # double 0.89088229892779658
	.quad	0x3f9daa7eebac4160              # double 0.028970702299433326
	.quad	0x3fcee4c28ed1a680              # double 0.24135620091992749
	.quad	0x3fec340187e733da              # double 0.88134838622647327
	.quad	0x3fee60a5ad42409e              # double 0.94929775085076407
	.quad	0x3feea9e36e6c4163              # double 0.95823833052604034
	.quad	0x3fd6b1bcbe3ac630              # double 0.35459822251422946
	.quad	0x3fddcf37bd3e3b74              # double 0.46577256661196675
	.quad	0x3fe4f4d11d308d6a              # double 0.65488486958603898
	.quad	0x3fe93578d9503413              # double 0.78777735179903841
	.quad	0x3fe77861756ce250              # double 0.73344490942606377
	.quad	0x3fcf49a599d8c840              # double 0.24443502437640241
	.quad	0x3fef9e6c26753454              # double 0.9880886794213759
	.quad	0x3fc0dafd3348150c              # double 0.13168301586134878
	.quad	0x3fd3071507ccbbc2              # double 0.29730726014798503
	.quad	0x3fef30b32e208b72              # double 0.97469481476978914
	.quad	0x3fe9e8586fe9dd4a              # double 0.80961248262512098
	.quad	0x3feeff02818706f4              # double 0.96862912462549255
	.quad	0x3fe99efc55c85f8e              # double 0.80065743212161222
	.quad	0x3fe017bc9d057b6f              # double 0.5028975550484186
	.quad	0x3fda14f1970c2792              # double 0.40752830267649032
	.quad	0x3faefd0013086790              # double 0.060523989032119307
	.quad	0x3fcad67d8aeaf094              # double 0.20967072756855443
	.quad	0x3fc8c2370a17d4a8              # double 0.19342697136713594
	.quad	0x3fee00a7f05247c9              # double 0.93758007943892452
	.quad	0x3fe71330f289d990              # double 0.72109267588420956
	.quad	0x3fe77620a03e868c              # double 0.7331698541422198
	.quad	0x3fddb223aeee5bf2              # double 0.46399776538004212
	.quad	0x3fe4540602dbcf57              # double 0.63525677259756719
	.quad	0x3fd8f660ad2d6124              # double 0.39003769790498866
	.quad	0x3fc27403becca868              # double 0.14416548553828368
	.quad	0x3fde35d6ac714682              # double 0.47203604545675415
	.quad	0x3fee5d17418ee271              # double 0.9488636284286952
	.quad	0x3feeae15fc57e82e              # double 0.95875071798150713
	.quad	0x3fc5e06083a8b81c              # double 0.17090994290032391
	.quad	0x3fcc3d8b44cebce8              # double 0.22062817439789417
	.quad	0x3fdba5833128634a              # double 0.4319770793968486
	.quad	0x3fe0e594093f656e              # double 0.52802469068698854
	.quad	0x3fee1f4e9fd0f4e8              # double 0.9413216706667784
	.quad	0x3fd57b93eeb0d866              # double 0.33566759404801016
	.quad	0x3fdb35ec5c900272              # double 0.42516621627149853
	.quad	0x3fe2139b3622c38a              # double 0.56489334653279966
	.quad	0x3f8106e28d257040              # double 0.0083139132809081361
	.quad	0x3fe67781c1c0a51c              # double 0.70208824007309856
	.quad	0x3fe417ee54c109a8              # double 0.62792126229787915
	.quad	0x3fe3cd30f54a37cf              # double 0.61879775913416235
	.quad	0x3fe1708bfdbdfd22              # double 0.54498862799656345
	.quad	0x3fc22f52d4d88748              # double 0.14206920044767402
	.quad	0x3fd065c143d751d8              # double 0.25621062874895761
	.quad	0x3fe6c1da8be9a478              # double 0.71116378142063663
	.quad	0x3fe22673935793a6              # double 0.56719378259423503
	.quad	0x3fe3488007cd2271              # double 0.60260011218731624
	.quad	0x3fe4c3cc8ec4c87a              # double 0.64890125164517021
	.quad	0x3fe56b755e38c1ce              # double 0.66936748888661568
	.quad	0x3fe30dab1718d8be              # double 0.59541849623817433
	.quad	0x3fef6513041bfb18              # double 0.98108816912267382
	.quad	0x3fc23b3dda6266d0              # double 0.14243291056918972
	.quad	0x3fd83388b476f3f8              # double 0.37814538596631975
	.quad	0x3fedf218f9c753c6              # double 0.93580292496573558
	.quad	0x3fd3ac0f9e1c6ab0              # double 0.30737677040603284
	.quad	0x3fe6cfa737881f4d              # double 0.71284828992882299
	.quad	0x3fae8b12d74e5040              # double 0.059654797346553767
	.quad	0x3fef167f69b1ab3d              # double 0.97149630206454384
	.quad	0x3fe412bf5f4e6b7f              # double 0.62728851904408589
	.quad	0x3fd172a16c4c398e              # double 0.2726214940638777
	.quad	0x3fbda46dfadc64e0              # double 0.11579024672063865
	.quad	0x3fdff414ef1d1788              # double 0.49927256918851315
	.quad	0x3fbaf57626d7a380              # double 0.10530794571208268
	.quad	0x3fd2d6f0f5f25df2              # double 0.29436897295224107
	.quad	0x3fd91ae4683eb164              # double 0.39226637058415847
	.quad	0x3feddb36c6a63920              # double 0.93300951765721507
	.quad	0x3fe075d8dd4f9454              # double 0.51438563561226625
	.quad	0x3fd06a0f002cb994              # double 0.25647330300389481
	.quad	0x3fef256da17cd2ad              # double 0.97331887760681967
	.quad	0x3fc0553f77e6f814              # double 0.12760156015969015
	.quad	0x3feaab0448f0cbb4              # double 0.83337606664860297
	.quad	0x3fde6857e9934502              # double 0.47511861620030527
	.quad	0x3fec22cbc0dfbbb2              # double 0.87924754782385706
	.quad	0x3fc217e192c2b05c              # double 0.14135379472770893
	.quad	0x3fe825cfc6660963              # double 0.75461567640040206
	.quad	0x3fec9cf60a19a6bb              # double 0.89416028950400717
	.quad	0x3fd0de5a43f98ce2              # double 0.26357132566609043
	.quad	0x3fe052e5630a52c6              # double 0.51011914581121043
	.quad	0x3fe3349c32cf0911              # double 0.60017213748531806
	.quad	0x3fde2a7c737d6fa4              # double 0.47134314802473853
	.quad	0x3fe37587b25744f1              # double 0.60809693176466173
	.quad	0x3fe43fa939eb9b7a              # double 0.63277112305227878
	.quad	0x3feb9228723a9921              # double 0.86159155187923286
	.quad	0x3fe8aaedd24592b7              # double 0.77086535519318644
	.quad	0x3fd903d9b43cf468              # double 0.39086001016023042
	.quad	0x3fc3582021c75e8c              # double 0.15112687730173879
	.quad	0x3fc8c52ac68693ec              # double 0.19351706212651665
	.quad	0x3fed273e6b4ec76c              # double 0.91104050596753216
	.quad	0x3fe7354592d34755              # double 0.72525290180986224
	.quad	0x3fe60737c710177e              # double 0.68838108901466888
	.quad	0x3fd5ef676b2514f2              # double 0.34273705924381581
	.quad	0x3fd38982bb23f700              # double 0.305267985109694
	.quad	0x3fe38ee6c6f65e5a              # double 0.61119402751769347
	.quad	0x3fdd0e53a03e6a58              # double 0.45399943016824329
	.quad	0x3fef322fe476a050              # double 0.97487635251764893
	.quad	0x3fef03a6865228b1              # double 0.96919561609799675
	.quad	0x3fe352f668a90dcd              # double 0.60387726251104257
	.quad	0x3fd3a4ecaf8b2a58              # double 0.30694119589739932
	.quad	0x3fe24c3cd82ede58              # double 0.57180635665185786
	.quad	0x3fd60a2daece080e              # double 0.34437124319822565
	.quad	0x3fcf5e73a3ee9e88              # double 0.24506993774888408
	.quad	0x3fed24e7f7df216d              # double 0.91075514233038535
	.quad	0x3fd756cd784c075e              # double 0.36467301128151586
	.quad	0x3fe5ade8b9f14f46              # double 0.6774791366283146
	.quad	0x3fd098aba719c704              # double 0.25931826895167398
	.quad	0x3fef0f94e17fcb1c              # double 0.97065204661189197
	.quad	0x3fefa5500e4c803c              # double 0.98892977516880575
	.quad	0x3fef66cc4624445e              # double 0.98129857730431147
	.quad	0x3fdf92cea103fd92              # double 0.49333539699724682
	.quad	0x3fe480fa351d2e10              # double 0.64074430822205564
	.quad	0x3fdc8eff74cd8e5a              # double 0.44622789770639815
	.quad	0x3fe92b2977ef73f1              # double 0.78651879715800821
	.quad	0x3feffbeb642a4007              # double 0.99950189174160264
	.quad	0x3fe6319c8d36bfd0              # double 0.69355609494049908
	.quad	0x3fe1c788251f3aad              # double 0.5556069111861085
	.quad	0x3fea60ad17943578              # double 0.82430128674756897
	.quad	0x3fd15a7066e1b9be              # double 0.27114496275944677
	.quad	0x3fd570dbb0c885da              # double 0.33501331581109428
	.quad	0x3fd36feaa353ba74              # double 0.30370584440144133
	.quad	0x3fce014dffc92b74              # double 0.2344148158029743
	.quad	0x3fde30d14b47f3c8              # double 0.47172958709398616
	.quad	0x3fddb068a3f94c42              # double 0.46389213574474664
	.quad	0x3fc4f0ee1d52c088              # double 0.16360260421561557
	.quad	0x3fce509b2c39ece4              # double 0.23683490428434262
	.quad	0x3fe3d2d48187774a              # double 0.61948609636940799
	.quad	0x3fd5069d5a50e222              # double 0.32852872676770251
	.quad	0x3fe64e144188f803              # double 0.69703114318667792
	.quad	0x3f903cd181da80c0              # double 0.015857003737097086
	.quad	0x3fe48cddcfc15a54              # double 0.64219561173633588
	.quad	0x3fc716112e49b0b8              # double 0.18036093483113347
	.quad	0x3fcad42f421a407c              # double 0.20960036018050576
	.quad	0x3fcf3253c38ef250              # double 0.24372336434125197
	.quad	0x3fe5c8060cd199e1              # double 0.68066694739973965
	.quad	0x3fd75876f484b668              # double 0.36477445486784754
	.quad	0x3fee853d4c95755f              # double 0.9537645812776353
	.quad	0x3fe823d45f233215              # double 0.75437372762241017
	.quad	0x3fed2238a0a22794              # double 0.91042739270891326
	.quad	0x3fc25e6d8ce3eb0c              # double 0.14350671176347196
	.quad	0x3fedcac6acc5deea              # double 0.93100293869698914
	.quad	0x3feb8b91a18c35ec              # double 0.86078721573147509
	.quad	0x3fb4902f611f56d0              # double 0.080325089656379633
	.quad	0x3fb345135fdcb638              # double 0.075272761253210585
	.quad	0x3fdc07912e2c5682              # double 0.43796185978985858
	.quad	0x3feadb143641b173              # double 0.83924303624148278
	.quad	0x3fed5b27200ddc93              # double 0.91737705479217124
	.quad	0x3fd27def8cbeb5fa              # double 0.28893650765061774
	.quad	0x3fe7cdf4c7ed81ba              # double 0.74389113472357526
	.quad	0x3fd9eac151c4da94              # double 0.40495331750154517
	.quad	0x3fccddbb91f099a0              # double 0.22551674486130668
	.quad	0x3fee8141f1a1fd66              # double 0.95327851480389536
	.quad	0x3fe514be72246bf0              # double 0.65878221791660785
	.quad	0x3fdd8cc204463fd8              # double 0.46171617906020179
	.quad	0x3fe15daa92713002              # double 0.54268387414913399
	.quad	0x3fe7047677d25965              # double 0.71929477121993257
	.quad	0x3fe5b3aaae02adfa              # double 0.67818197237414712
	.quad	0x3fec9c92c1e8f4d8              # double 0.8941129481605925
	.quad	0x3fd15ffa56054bd0              # double 0.27148302460153406
	.quad	0x3fec3e6b6ff6bc67              # double 0.88261958949977959
	.quad	0x3fbdd70bba708b58              # double 0.1165625887083882
	.quad	0x3fea1920ce74c4ef              # double 0.81556740115607151
	.quad	0x3fed02eca760dbb4              # double 0.90660698596081212
	.quad	0x3fe52c8ac97dfe19              # double 0.66168727258622362
	.quad	0x3fc8e1c74ee0e75c              # double 0.19439021445742355
	.quad	0x3fe1b60841b70161              # double 0.55347073397573976
	.quad	0x3fc3c85098e4da14              # double 0.15455062356495886
	.quad	0x3fe096bd97d530c2              # double 0.51840095190848268
	.quad	0x3fdf508bd93a2c52              # double 0.48929115499112641
	.quad	0x3fe7ee8b4d1b3672              # double 0.74786915836166501
	.quad	0x3fb716c9d918aa50              # double 0.09019147443965747
	.quad	0x3fd41719539da6be              # double 0.31390984693153345
	.quad	0x3fe46dfd717cdc6b              # double 0.63842651525091065
	.quad	0x3fee85fb072a4bdb              # double 0.95385505103547119
	.quad	0x3fc7ed77d8652fdc              # double 0.18693445268797759
	.quad	0x3fe055606165e075              # double 0.51042193434751815
	.quad	0x3fec5122c1b57668              # double 0.88490426858670634
	.quad	0x3fa64bebeeefa2e0              # double 0.043547985951425394
	.quad	0x3fe61e7973685781              # double 0.69122002163452134
	.quad	0x3f8640308ce05940              # double 0.010864619540410403
	.quad	0x3fabeab66835fc90              # double 0.054525089474730781
	.quad	0x3fdf15133afd4d1e              # double 0.4856613231724668
	.quad	0x3fe14b19f5b3292c              # double 0.54041765201808323
	.quad	0x3fe53ade6f4949ef              # double 0.66343614326097888
	.quad	0x3fdc6c35fbc7b7e6              # double 0.44410466754822975
	.quad	0x3fd31c6f21912598              # double 0.2986104800989664
	.quad	0x3fa60cb9b66c4400              # double 0.043065837400838802
	.quad	0x3fd81072da1c0dec              # double 0.37600394534840009
	.quad	0x3fd456a91e1e77d8              # double 0.31778934422788785
	.quad	0x3fe0f443ab7e1df8              # double 0.52981742376954255
	.quad	0x3fe6d3009e03f3ba              # double 0.71325713026418858
	.quad	0x3fefda4d4c3bef93              # double 0.99539818658330359
	.quad	0x3fed6fe932565401              # double 0.91991100150573868
	.quad	0x3fefd98ed00a0b0f              # double 0.99530735619222976
	.quad	0x3fe9a87dc17500fc              # double 0.80181777748660421
	.quad	0x3fe7c3db3035aae8              # double 0.74265822807259685
	.quad	0x3fec80ed60242fc9              # double 0.89073818948372108
	.quad	0x3fe4b3378f8cee23              # double 0.64687707936485983
	.quad	0x3fe3e7c08bd54e1d              # double 0.62204005538154983
	.quad	0x3fad425e26bbae70              # double 0.057146970966496791
	.quad	0x3fe3c5dd21e934a0              # double 0.61790329573854663
	.quad	0x3fd7dfefea5a010e              # double 0.37304304014107081
	.quad	0x3fce35d0cda9211c              # double 0.23601732294105993
	.quad	0x3fa5c8beb382be60              # double 0.042547187245301599
	.quad	0x3fe095fa8906ad5c              # double 0.51830794108301914
	.quad	0x3fd38f75f6439194              # double 0.30563115166867161
	.quad	0x3fe2857b3f21393d              # double 0.5787941201213368
	.quad	0x3fd46f6813d05ef4              # double 0.31929971632915444
	.quad	0x3fc5d15d3ec516f8              # double 0.17045178952155715
	.quad	0x3fe0bb601dedc532              # double 0.52287298055140341
	.quad	0x3fee3bfa0eaf80b4              # double 0.94482138508103341
	.quad	0x3fe06374a01e2aa3              # double 0.51214057229056598
	.quad	0x3fecd48e87052e99              # double 0.90094686862126416
	.quad	0x3fe0a19e569ddf3c              # double 0.51972882191964898
	.quad	0x3fd71fcd8d3cbada              # double 0.36131609718988289
	.quad	0x3fdfad450c1c6f56              # double 0.49495054419252449
	.quad	0x3fdc5a95ed4975ee              # double 0.44302890942148465
	.quad	0x3fbb1ca6aae3f880              # double 0.10590593025333028
	.quad	0x3fe99e6b419f5559              # double 0.80058825318216542
	.quad	0x3fe26333a8ce99d3              # double 0.57460959406017265
	.quad	0x3fc388502d1494a8              # double 0.15259744836035805
	.quad	0x3fdef87db1fc88ec              # double 0.48391668683519984
	.quad	0x3fe560ed78e53e06              # double 0.66808198559186915
	.quad	0x3fe1dfd5f408724f              # double 0.55857370054907018
	.quad	0x3fe075dc871e6fc5              # double 0.51438738241585524
	.quad	0x3fe5e41e44d6b3ae              # double 0.68409646458677797
	.quad	0x3fee64a164838492              # double 0.94978398925390395
	.quad	0x3fe538d199aabda3              # double 0.66318588269307488
	.quad	0x3fed5c2c206daa48              # double 0.91750150998752478
	.quad	0x3fdb66eab154ba70              # double 0.42815654103734513
	.quad	0x3fee4f8006af0a0c              # double 0.94720460229319902
	.quad	0x3fe311cbb9b9e972              # double 0.59592233919765492
	.quad	0x3fbf0fc8e1097418              # double 0.1213346051603853
	.quad	0x3fe8892a25b3c3c0              # double 0.76674373019897502
	.quad	0x3fe637e484749d4d              # double 0.69432283277721185
	.quad	0x3fd87f41e1b4c258              # double 0.38276717225656887
	.quad	0x3fd5f2f39c3235bc              # double 0.34295358899620587
	.quad	0x3fe56f0b29914112              # double 0.66980512732155462
	.quad	0x3fe72accfdb36fb9              # double 0.72397470046006795
	.quad	0x3fe0e363ef35a039              # double 0.52775761337853233
	.quad	0x3fe6c8b644d2be6a              # double 0.71200097505602611
	.quad	0x3fd451b073f54e92              # double 0.31748591732068931
	.quad	0x3fadb95468714520              # double 0.058054578542064528
	.quad	0x3fc77e04c4767da8              # double 0.18353328316605411
	.quad	0x3fce757887a1fef0              # double 0.23795992491431361
	.quad	0x3fd158a47239a3c6              # double 0.27103530077743831
	.quad	0x3fe2ee9ff0a36f20              # double 0.59162899970712957
	.quad	0x3feaa76334c564e4              # double 0.832933047359941
	.quad	0x3fda051546497ea2              # double 0.40656024803136337
	.quad	0x3fd823256273b0bc              # double 0.37714514364666818
	.quad	0x3fb8fcb30aaeb338              # double 0.097605886562360022
	.quad	0x3fdfacb169d6944c              # double 0.4949153455330062
	.quad	0x3fe66a883f1ca299              # double 0.70050442053350814
	.quad	0x3fa4873def17f1b0              # double 0.040094314037534828
	.quad	0x3fe7b251bf0dd205              # double 0.74051749530059452
	.quad	0x3fe6592902ceb106              # double 0.6983838133651552
	.quad	0x3fd44ef576f16968              # double 0.31731926551369449
	.quad	0x3fe45cd0760b0476              # double 0.63632987075119618
	.quad	0x3fe185cbcf8fad5e              # double 0.54758253611855046
	.quad	0x3fc679fae00c91ec              # double 0.17559753360650576
	.quad	0x3fe8449d408ac32f              # double 0.75837576490275704
	.quad	0x3fea8e19474bfcd9              # double 0.82984603810464386
	.quad	0x3fc34ce1e2e171c4              # double 0.15078376367718083
	.quad	0x3fe70c6104327885              # double 0.72026110477214955
	.quad	0x3fe4d8de10d5b82f              # double 0.65147307670645727
	.quad	0x3fdeef575f17468e              # double 0.48335823332045258
	.quad	0x3fef433adc9b826f              # double 0.97695677840608918
	.quad	0x3fd78516bedebb4a              # double 0.36749809875157224
	.quad	0x3fe1219390923d27              # double 0.53534868465968521
	.quad	0x3fdfa35f428fd4e6              # double 0.49434644222431101
	.quad	0x3fddd5e8b24c7d74              # double 0.46618096744528903
	.quad	0x3fe328fe920ee7d7              # double 0.59875420119282807
	.quad	0x3fe58df2aa7af85c              # double 0.67357762619918615
	.quad	0x3fda3509bf5f75e8              # double 0.4094871872783572
	.quad	0x3fd6b5fcf818fc5a              # double 0.35485767582207972
	.quad	0x3fc4c83df580526c              # double 0.16236090171209427
	.quad	0x3fbcb40171ce4630              # double 0.11212166813336277
	.quad	0x3fd098b2fc93d13c              # double 0.25932001748812517
	.quad	0x3fd03d55d3acb804              # double 0.25374360724788425
	.quad	0x3fe58e01ed0482dd              # double 0.67358490269188176
	.quad	0x3fc602463015b1bc              # double 0.171944402197722
	.quad	0x3fb1e3bd00d62a48              # double 0.069881260589832128
	.quad	0x3fe7b056bcb7342d              # double 0.74027573450587669
	.quad	0x3fe4a1a36fbb545a              # double 0.64473125288590016
	.quad	0x3fe63bd47562a9a8              # double 0.69480345656238729
	.quad	0x3fa586959e6bebb0              # double 0.042042422855920747
	.quad	0x3fd9040d9fed985c              # double 0.39087238901118382
	.quad	0x3fe6a67630012e78              # double 0.70782002807523181
	.quad	0x3fc764b98b390ef0              # double 0.18276137636177436
	.quad	0x3fdcd92922243900              # double 0.45075443586473796
	.quad	0x3fcc774d40981278              # double 0.22239080099111042
	.quad	0x3fbc17d5cb63f9b0              # double 0.10973869529332236
	.quad	0x3fd0848150a1c6a0              # double 0.25808747171604729
	.quad	0x3fe4ace54fef76eb              # double 0.64610543835052903
	.quad	0x3fe68bd6a51dfa5d              # double 0.70457012414392362
	.quad	0x3fc9a6d84dd467ac              # double 0.20040420341757448
	.quad	0x3fda057cacf76f0e              # double 0.40658490077270037
	.quad	0x3fe9cdb2606f23c7              # double 0.80635947069924263
	.quad	0x3fe61c0d7b0f258e              # double 0.69092439684861673
	.quad	0x3fe8fd5a3fb030de              # double 0.78092682303534011
	.quad	0x3fe1047235bd78d0              # double 0.53179274078481775
	.quad	0x3fcddd58ebe64530              # double 0.23331748503236716
	.quad	0x3fb53bc1b58d4508              # double 0.082943064521959653
	.quad	0x3fc32cca2150c4c8              # double 0.14980436922772911
	.quad	0x3fb9c3ecea6ebd28              # double 0.10064583514644154
	.quad	0x3fee3d4f2a0b06cd              # double 0.94498403750932314
	.quad	0x3fe70b0f49d0234f              # double 0.72010006348237166
	.quad	0x3fe77457e09c0421              # double 0.73295205945044384
	.quad	0x3fcaba55f2a02da0              # double 0.20881151530225583
	.quad	0x3fc429223809bd40              # double 0.15750529991371742
	.quad	0x3feb7a5e13895dc2              # double 0.85868743720759988
	.quad	0x3fd4e80a5cb94fce              # double 0.32666262679162805
	.quad	0x3fea74ff590d0bf5              # double 0.82678191559568737
	.quad	0x3faf1f986124e930              # double 0.060787927492543026
	.quad	0x3fe2609e92c6c309              # double 0.57429436366337072
	.quad	0x3fd91ab775860d78              # double 0.39225565411489738
	.quad	0x3fd68cc6a58cf300              # double 0.35234228293465719
	.quad	0x3fdd5dfbc691061a              # double 0.4588612975240679
	.quad	0x3fe54949198d14fd              # double 0.66519598951768411
	.quad	0x3fe8c4b232d8460b              # double 0.7740107529700152
	.quad	0x3fd9a95812aee7f2              # double 0.40096093964132173
	.quad	0x3fe34fd6cc760af9              # double 0.60349597867784077
	.quad	0x3fbc3f816a30aad8              # double 0.11034401743442446
	.quad	0x3fc672077a03c568              # double 0.17535489518881353
	.quad	0x3fe35e30c2f5ebe9              # double 0.60524786070106729
	.quad	0x3fe9743bbc0ff3d7              # double 0.79543863993569175
	.quad	0x3fe8da4199a0f6c6              # double 0.77664260869615798
	.quad	0x3fbc1082b2a6be48              # double 0.10962693082432751
	.quad	0x3fe944339305bf11              # double 0.78957537379571552
	.quad	0x3fd95824cad04b40              # double 0.39600486570377669
	.quad	0x3fc386144a8341dc              # double 0.15252927435223185
	.quad	0x3fd5aa1179f555f4              # double 0.33850514326090253
	.quad	0x3febd8000a97f697              # double 0.8701172072321296
	.quad	0x3fe68380c5e603fe              # double 0.70355261470842811
	.quad	0x3fe2f82e80af33ea              # double 0.59279561170262451
	.quad	0x3fed013d1c997d95              # double 0.90640121065000534
	.quad	0x3fd22de113a0d20a              # double 0.28405024449173821
	.quad	0x3fc22cc1393ebcc0              # double 0.14199080748719517
	.quad	0x3fea1e8f68816b0b              # double 0.81623049174535944
	.quad	0x3fe211853d89b570              # double 0.56463872927785808
	.quad	0x3fef4478e0b9b4cf              # double 0.97710842029268885
	.quad	0x3fe6779d204000fd              # double 0.70210129069167204
	.quad	0x3fe30e140f19a6f6              # double 0.59546854924448556
	.quad	0x3fc2f58599628648              # double 0.1481177329015273
	.quad	0x3f928bed3cc5e140              # double 0.018111903032577148
	.quad	0x3fe4b5aaff505c3a              # double 0.64717626443860543
	.quad	0x3fd61ebf57045b48              # double 0.34562667367702149
	.quad	0x3fdca8cc67db8fd4              # double 0.44780264036512318
	.quad	0x3fb2b4b04757e4a8              # double 0.073069589059644557
	.quad	0x3f9de6cebac56e80              # double 0.02920077338181537
	.quad	0x3fdef14658c50ed2              # double 0.48347624463006611
	.quad	0x3fe2d3f2862d9e5f              # double 0.58837248045615442
	.quad	0x3fd9a14a69694260              # double 0.40046940130290487
	.quad	0x3fbec42cfb905428              # double 0.12018090383237789
	.quad	0x3fe24a5c37a20ed1              # double 0.57157717576816414
	.quad	0x3fb950eef5d7c530              # double 0.098891196270206149
	.quad	0x3fd98c53bf1fb74e              # double 0.39918988861505944
	.quad	0x3fea34d03ceb9431              # double 0.8189469518516771
	.quad	0x3fe65ab33f61b57b              # double 0.69857180003388863
	.quad	0x3fa62fc8fb790a90              # double 0.04333332128273526
	.quad	0x3fd6c9a94aa08498              # double 0.35605842864794957
	.quad	0x3fefac80e2b91225              # double 0.98980755121062158
	.quad	0x3fec7400783d0f23              # double 0.88916038021168153
	.quad	0x3fe5b760923a9ca0              # double 0.67863491592733638
	.quad	0x3fd6c058207d31ec              # double 0.35548976109274011
	.quad	0x3fe5a6b059f04e1c              # double 0.67659776273871186
	.quad	0x3fe2de92a4718cf6              # double 0.58966953390009169
	.quad	0x3fee945feb49e803              # double 0.95561214403937844
	.quad	0x3fd8b3c3edcd5f60              # double 0.385972006062266
	.quad	0x3fbea61e2253c1a0              # double 0.1197222551161361
	.quad	0x3fe5341159803822              # double 0.6626059291900257
	.quad	0x3fe72b8925a7cdac              # double 0.72406442026697482
	.quad	0x3fe6d00a66062e87              # double 0.71289558340636539
	.quad	0x3fd31a4f7fd2d02a              # double 0.29848086817514974
	.quad	0x3fe14e0930971f17              # double 0.54077586641594422
	.quad	0x3fe605d841c7293d              # double 0.6882134709096942
	.quad	0x3fe8e43cc2f1ba07              # double 0.77786100459144414
	.quad	0x3fd0e85e9ea1c10c              # double 0.26418271533386029
	.quad	0x3fd1c3943caae0aa              # double 0.27756219791946057
	.quad	0x3fd97df4672bfd18              # double 0.39831266475080573
	.quad	0x3febdc9534f75da5              # double 0.87067661614394309
	.quad	0x3fd4df9c9bb43d76              # double 0.32614817815279851
	.quad	0x3fe2c9c255b5915b              # double 0.58712879886710867
	.quad	0x3fe480eec6b6affc              # double 0.64073885737661795
	.quad	0x3feed5018dd0b339              # double 0.96350171755111724
	.quad	0x3fb98a98796e1570              # double 0.099771051069259319
	.quad	0x3fd7c9b68d4b6efe              # double 0.37168659017855521
	.quad	0x3fd8d00a50ea604a              # double 0.38769777204425238
	.quad	0x3fd1cf2360f470f8              # double 0.27826771229025793
	.quad	0x3fd955eca78f8130              # double 0.39586941111885476
	.quad	0x3fdf091c01bef9fe              # double 0.48493099375255599
	.quad	0x3fb25c0b84cfce98              # double 0.071716995167486863
	.quad	0x3fe1e07ff0c88a8c              # double 0.55865475681305687
	.quad	0x3fde57b3aba278d4              # double 0.47410289536663908
	.quad	0x3fe7ff9fa9e5f5fd              # double 0.74995406325587022
	.quad	0x3fef2d649b62fc6c              # double 0.97429113720853655
	.quad	0x3fe9efaef3ed63df              # double 0.81050822870303907
	.quad	0x3fef94fdc57ec299              # double 0.98693741391442124
	.quad	0x3fe1ffe633cfc4a3              # double 0.56248769874050131
	.quad	0x3fdec33e355fed0a              # double 0.48066668712972727
	.quad	0x3fc898b760902ef4              # double 0.19216053214073947
	.quad	0x3fdd16fd1c91f5a8              # double 0.4545281199460427
	.quad	0x3fea689ce3ac5518              # double 0.82527012317101178
	.quad	0x3fd51001b3064c4a              # double 0.32910196764823196
	.quad	0x3fedf67f85a95130              # double 0.93634010415784097
	.quad	0x3fcc288c38133254              # double 0.2199874185374876
	.quad	0x3fe0b4f4070634b9              # double 0.52208901760027182
	.quad	0x3fecc00135c61dd7              # double 0.89843807699883882
	.quad	0x3fd86ab1d9aebf42              # double 0.38151212938372592
	.quad	0x3fe062dd946e6de5              # double 0.5120685481119237
	.quad	0x3fdf9ecc120c690a              # double 0.4940672088865915
	.quad	0x3fde3e74f063932c              # double 0.47256206012234503
	.quad	0x3fec83282f24c1fb              # double 0.89101037223559787
	.quad	0x3fe2e365e5abf455              # double 0.59025854928735078
	.quad	0x3fe4712cba352add              # double 0.6388152729863027
	.quad	0x3fd998e1fd99328a              # double 0.39995622411223819
	.quad	0x3fdecbff1286d656              # double 0.4812009507107623
	.quad	0x3fe0cf0e5b905220              # double 0.52527540095849545
	.quad	0x3fe008aebaf3d99a              # double 0.50105988039176741
	.quad	0x3fa6ee69cb1f9a60              # double 0.044787698788969932
	.quad	0x3fdd4952d5b8c2da              # double 0.45760031577360183
	.quad	0x3fb7accbf148f058              # double 0.092480417640162016
	.quad	0x3fea8bba003551b1              # double 0.82955646553687334
	.quad	0x3fee2db160afe264              # double 0.94307774433316327
	.quad	0x3fed654326f6d41d              # double 0.91861112222852948
	.quad	0x3fef99d46b098e37              # double 0.98752804666259563
	.quad	0x3fed4050d31dbafd              # double 0.91410104020710004
	.quad	0x3fe27681418eb016              # double 0.57696593097853355
	.quad	0x3fe44aed71b0a2e4              # double 0.63414642529559417
	.quad	0x3fa5232d1923f350              # double 0.041283997839832609
	.quad	0x3fd11b7170d73f86              # double 0.267299995609385
	.quad	0x3fee5a7f81f40f77              # double 0.94854712850108924
	.quad	0x3fe5cf8fce16934d              # double 0.6815871262702814
	.quad	0x3fe89dfce5f86e39              # double 0.76928563037967657
	.quad	0x3fd3d8aa2cd9c12c              # double 0.31009916667882709
	.quad	0x3fd55688d4157be8              # double 0.333406645882802
	.quad	0x3fddf9b306af5e8e              # double 0.46836543705783462
	.quad	0x3feed7dd3c85fe93              # double 0.96385061093310964
	.quad	0x3fc684ef33534ca4              # double 0.17593183523294897
	.quad	0x3fb20c36044d7078              # double 0.070498825121321107
	.quad	0x3feaf63565e37d66              # double 0.84255475902675125
	.quad	0x3fefb446aad2da73              # double 0.99075635303490938
	.quad	0x3fefac245cf23c40              # double 0.98976343301354319
	.quad	0x3fc972f112c2eaf4              # double 0.1988202420814883
	.quad	0x3fe6cbf09346c0c0              # double 0.712394988679101
	.quad	0x3fd7549fb0f86488              # double 0.36454002649549766
	.quad	0x3feb205f97ccd403              # double 0.84770183227976792
	.quad	0x3fcad104f2f27190              # double 0.20950376379631708
	.quad	0x3fb2dfaee341d2a8              # double 0.073725634081550084
	.quad	0x3fd220ab039eb7a6              # double 0.28324389794840454
	.quad	0x3fd97cc9faff8848              # double 0.39824151526966434
	.quad	0x3fe36b9bf35fea42              # double 0.60688588651766673
	.quad	0x3fce9a953a48c7dc              # double 0.23909249635613505
	.quad	0x3fcacb52f8ff70b0              # double 0.20932995946976041
	.quad	0x3fd642ab1d3f479a              # double 0.34781911712809122
	.quad	0x3fee2a3b216c7d91              # double 0.94265514877399614
	.quad	0x3febe2b14862eda8              # double 0.87142242563225114
	.quad	0x3fe9248aebb5d363              # double 0.7857107738223984
	.quad	0x3fd788e00369fa92              # double 0.36772919019123507
	.quad	0x3fbb7f7973a916b0              # double 0.10741385530226455
	.quad	0x3fdaee68e2864cd2              # double 0.42080137368720927
	.quad	0x3fd796680fc57a14              # double 0.36855508365798184
	.quad	0x3fddaadc24f0d3c2              # double 0.4635534630536392
	.quad	0x3fe603a4b32b52c1              # double 0.68794474596014521
	.quad	0x3fe8d976e797a6df              # double 0.7765459559716098
	.quad	0x3fed7ee55d48f50d              # double 0.9217402288410611
	.quad	0x3fa4fe7f72b11380              # double 0.041004164457752346
	.quad	0x3fd36794a92ae51c              # double 0.30319706459302309
	.quad	0x3fe2beda8d59379c              # double 0.58579757315759506
	.quad	0x3fee8b2f58cecd4a              # double 0.95449035020139061
	.quad	0x3fea340c06dc42f0              # double 0.81885339107438249
	.quad	0x3fb99a9fa6722550              # double 0.10001561940784609
	.quad	0x3fdaa81807935392              # double 0.41650963535112695
	.quad	0x3fe68973eb99b2f0              # double 0.70427890792561065
	.quad	0x3fd2ba263ce05ea6              # double 0.29261165566411262
	.quad	0x3fd81a84c26ad908              # double 0.37661856638023083
	.quad	0x3fd833f35b15e552              # double 0.37817081351348236
	.quad	0x3fbb4e4583934290              # double 0.10666307890211102
	.quad	0x3fe722432f2c9070              # double 0.72293242658316892
	.quad	0x3fe57b7c19341d8c              # double 0.67132382319043549
	.quad	0x3fc66c4caafba4b4              # double 0.17518003796366133
	.quad	0x3fcc5ea2e38a75ec              # double 0.22163807020562787
	.quad	0x3fe0352e5a4635c0              # double 0.50649182922068547
	.quad	0x3febcdc778a9f329              # double 0.86886952941094819
	.quad	0x3fe2d1a479f6db1c              # double 0.58809112378262141
	.quad	0x3fea6947e48704c2              # double 0.82535166391621595
	.quad	0x3fe1e3bb2dde63ba              # double 0.55904921492321269
	.quad	0x3fe3a5d5329d3bf4              # double 0.61399326215348404
	.quad	0x3fd4e6e403a83d8e              # double 0.32659244877955806
	.quad	0x3fdc1eae04f0b4f8              # double 0.4393725441212406
	.quad	0x3fd9adef7fd3b472              # double 0.40124118311980006
	.quad	0x3fed5a1f66ccb481              # double 0.9172513015561351
	.quad	0x3fc9059eda2b4b00              # double 0.19548402455128411
	.quad	0x3fdf802bbba5bdc0              # double 0.49219792675918583
	.quad	0x3fdd3e62bac52568              # double 0.45693271865146423
	.quad	0x3fca3ae028f94110              # double 0.20492174149195153
	.quad	0x3fd0e7854553a71c              # double 0.26413089533035516
	.quad	0x3fe9fc7b1f71abe0              # double 0.8120704282895268
	.quad	0x3feb160d5cf913d3              # double 0.84644191893368725
	.quad	0x3fe6011d72b4ee5b              # double 0.68763611224808174
	.quad	0x3fe6239d0dfdb876              # double 0.6918473504317848
	.quad	0x3fd78a70503f0842              # double 0.36782462917847536
	.quad	0x3fd2b8d9010effc6              # double 0.29253220656755408
	.quad	0x3fe5dcc975a14ef1              # double 0.68320153212195411
	.quad	0x3fe2e3382f20a146              # double 0.5902367516000957
	.quad	0x3fc0a4d810351638              # double 0.13003063956618788
	.quad	0x3fc9a12fffae1954              # double 0.20023155197504627
	.quad	0x3fef5ad93274a965              # double 0.9798398957694131
	.quad	0x3fd9d26278767c98              # double 0.40346586002301299
	.quad	0x3fe30185e31b2351              # double 0.5939359126724445
	.quad	0x3fd6c6c090ca74c0              # double 0.35588087215166908
	.quad	0x3fc796522806f700              # double 0.18427493051961363
	.quad	0x3f64555f18507a00              # double 0.0024821145366467068
	.quad	0x3fe9b8478675158d              # double 0.80374504338458197
	.quad	0x3fd123ac8278fc40              # double 0.26780235997643231
	.quad	0x3fd7c48c87375a42              # double 0.37137139515599327
	.quad	0x3fee2b97e4bc8bba              # double 0.942821451903334
	.quad	0x3fefd84ed66f9b5f              # double 0.99515478021644898
	.quad	0x3fed3480fc778b1a              # double 0.91265916166262007
	.quad	0x3fe579d9ee2efbec              # double 0.6711244251272297
	.quad	0x3fd753dce98699c6              # double 0.36449358754398664
	.quad	0x3fcd5e07a57b73c4              # double 0.22943206386744752
	.quad	0x3fa2b73070f526e0              # double 0.036553872860691561
	.quad	0x3fe6fdacf4b93d98              # double 0.71846626088693011
	.quad	0x3feed2bc5ebb808b              # double 0.96322458746364369
	.quad	0x3fac9956d35c19d0              # double 0.055857384968522106
	.quad	0x3fea60f8ba6ddb33              # double 0.82433735286654153
	.quad	0x3f9f48cbad266b40              # double 0.030551130717508146
	.quad	0x3fd4b79c8c801836              # double 0.32370675774325564
	.quad	0x3fddce3475b6219c              # double 0.46571074958094427
	.quad	0x3fc5c461d0828190              # double 0.17005560570852341
	.quad	0x3feca13213416280              # double 0.89467719803640477
	.quad	0x3fdfea807e2bf85e              # double 0.498687861647232
	.quad	0x3fe86f07ffb3d5f0              # double 0.76355361883059736
	.quad	0x3fe7dee6c2fbcd5e              # double 0.74595964510664792
	.quad	0x3fec8490ab757e97              # double 0.89118226516798671
	.quad	0x3fb5837a41fef408              # double 0.084037438499720563
	.quad	0x3fcabdfc19a1236c              # double 0.20892287494123296
	.quad	0x3fe49453506dd841              # double 0.64310613354496848
	.quad	0x3fe4b486a3b5359f              # double 0.64703685735883087
	.quad	0x3fcc42872e536728              # double 0.22078027498246766
	.quad	0x3fe192ac9eb2263a              # double 0.54915457721035144
	.quad	0x3febe853096eccca              # double 0.872109907554113
	.quad	0x3fe9960a91f03506              # double 0.79956558707786551
	.quad	0x3fe34b473499c291              # double 0.60293922685203161
	.quad	0x3fbbc70dd076c688              # double 0.10850607242061916
	.quad	0x3fe48cb03665d889              # double 0.64217386841370783
	.quad	0x3fecccd14c54544e              # double 0.90000214489067232
	.quad	0x3fee4c14a4f21d85              # double 0.94678718772858927
	.quad	0x3fde9ff747338b86              # double 0.47851354554421055
	.quad	0x3fe065c9d34d0a99              # double 0.51242533940997526
	.quad	0x3fdfb03b235f1dc6              # double 0.4951312871384882
	.quad	0x3fd6aad6a273197a              # double 0.35417714943141443
	.quad	0x3fdcdd4075cc850c              # double 0.45100413802909212
	.quad	0x3fdb56b5dc323f9e              # double 0.42716738227408679
	.quad	0x3fe806380950963a              # double 0.75075914210601202
	.quad	0x3fede2b32ab11957              # double 0.93392332399597933
	.quad	0x3fa6fa07e29501e0              # double 0.044876333626692633
	.quad	0x3fd00f7760e799a6              # double 0.25094398940418683
	.quad	0x3fe9cfd665960191              # double 0.8066207870579537
	.quad	0x3fa6b788f24f3a20              # double 0.04436901052359965
	.quad	0x3fc025e28e491a18              # double 0.12615615794693791
	.quad	0x3faaeb4e595e7a80              # double 0.052576492699917488
	.quad	0x3fc0c41b5adc49e4              # double 0.13098470627353642
	.quad	0x3fe98c84ef12486f              # double 0.7984032315600994
	.quad	0x3fde52c6efe3c278              # double 0.4738023131058422
	.quad	0x3feab5b40c285313              # double 0.83468057989611777
	.quad	0x3fd84b9ed6903970              # double 0.3796155066819642
	.quad	0x3fd890a6d90a1848              # double 0.3838288421178544
	.quad	0x3fe317cf704d2c38              # double 0.59665653165701027
	.quad	0x3fe9db9702c83578              # double 0.80805540603039017
	.quad	0x3fc03b3c003b42f0              # double 0.12680768977454404
	.quad	0x3fe863699b61d5f8              # double 0.76213531826095871
	.quad	0x3fdf238d671cdac2              # double 0.48654494351960065
	.quad	0x3fe81c12be6af4bf              # double 0.75342690649963362
	.quad	0x3fce323f539f0b7c              # double 0.23590842803067946
	.quad	0x3fcccd43ea9fec74              # double 0.22501419979366555
	.quad	0x3fd7a5ad74a914d0              # double 0.36948715584396741
	.quad	0x3fb72b0a3066b3d0              # double 0.090500485245413431
	.quad	0x3fe6f54c266eadd0              # double 0.71744353777233449
	.quad	0x3fd4cff51dfd06bc              # double 0.32519271782448889
	.quad	0x3fdce800c16becae              # double 0.45166033638788405
	.quad	0x3fba9aea7b3eabb8              # double 0.10392632969767035
	.quad	0x3fdf3544f08b84d4              # double 0.48762629976961347
	.quad	0x3fecd5769d4965c9              # double 0.90105753631649421
	.quad	0x3fc6fd89fe32bc00              # double 0.17961239730854572
	.quad	0x3fef37a4bd36db72              # double 0.97554242092051724
	.quad	0x3fd9727a7fbbe280              # double 0.39761221384063816
	.quad	0x3fdc0a4de2917ef4              # double 0.43812892080130372
	.quad	0x3fd30e2d0291b758              # double 0.29774022341631712
	.quad	0x3fe4300c386dbdbb              # double 0.63086520215249864
	.quad	0x3fedf599f90dd0e3              # double 0.9362306465468716
	.quad	0x3fda48fc46a62bf0              # double 0.41070467852904269
	.quad	0x3feb9ca9db9b1f08              # double 0.8628739632776794
	.quad	0x3fe2f8432084ef4a              # double 0.59280544616147179
	.quad	0x3fddf1e6ee48541e              # double 0.46788953084734597
	.quad	0x3fba95b91a12b088              # double 0.10384709250019075
	.quad	0x3fe9ad64631b5966              # double 0.8024160323791818
	.quad	0x3fed2812a05823c6              # double 0.91114169423337255
	.quad	0x3fe6a9fb750c2d7b              # double 0.70824978695729557
	.quad	0x3f9027295a79f520              # double 0.015774389407387734
	.quad	0x3fe2205ba0dee87f              # double 0.56644994182649089
	.quad	0x3fe0956872cfb5d7              # double 0.51823828147979156
	.quad	0x3fee373c22fc6b54              # double 0.94424254258351902
	.quad	0x3fe0625601c1d701              # double 0.51200390189362122
	.quad	0x3fe42626c2fe196b              # double 0.62965715488898633
	.quad	0x3fe0935a7cdb31c9              # double 0.51798748384458648
	.quad	0x3fe26da2d8d8ceda              # double 0.57588331559096706
	.quad	0x3fbfba673cf3be08              # double 0.12393803823555782
	.quad	0x3fedea025f92399e              # double 0.93481558481453297
	.quad	0x3fe3aaf84074c524              # double 0.61462032879913808
	.quad	0x3fe85ba41f8db3c0              # double 0.76118665850446376
	.quad	0x3fe2b96c35f6a46e              # double 0.58513460674033779
	.quad	0x3fea3ea96bc47419              # double 0.82014914558715468
	.quad	0x3fe231ea687636fc              # double 0.5685932197827408
	.quad	0x3fd660efef20b274              # double 0.3496665797454519
	.quad	0x3fe99e90833457b6              # double 0.80060601831313849
	.quad	0x3feffc3a1c1df7fe              # double 0.99953942767729109
	.quad	0x3fce151bfbd9b768              # double 0.23501920506844987
	.quad	0x3feb666db59e84c0              # double 0.85625348541739044
	.quad	0x3fd57dcae101660c              # double 0.33580276463689596
	.quad	0x3fef0228d71d13f8              # double 0.96901361479160552
	.quad	0x3fdf8e89e2757b2e              # double 0.49307486643913279
	.quad	0x3fecdf9d457e94e6              # double 0.9022966725648558
	.quad	0x3fe7166f4e159474              # double 0.72148862124289659
	.quad	0x3fefdddfb75d639e              # double 0.99583421529233696
	.quad	0x3fcd324371dbcabc              # double 0.22809641894817456
	.quad	0x3fd2f480acb41ea6              # double 0.29617325654587956
	.quad	0x3fe1a3f46d63183c              # double 0.55126401295343141
	.quad	0x3fb760a683afce08              # double 0.091318518781740576
	.quad	0x3fc95e0b0ac73430              # double 0.19818246866489764
	.quad	0x3fec130c4df36389              # double 0.87732520317796159
	.quad	0x3fe477a4b0b8b26f              # double 0.63960489765083917
	.quad	0x3fedf89bfe84dd88              # double 0.93659782133811209
	.quad	0x3fecf4cb230ac91c              # double 0.9048820194641709
	.quad	0x3fe9f060a4d6f269              # double 0.81059295840493661
	.quad	0x3fdfa32ee8ae816a              # double 0.49433491442507338
	.quad	0x3fe0130bcd84da04              # double 0.50232496395511861
	.quad	0x3fecf491bf362996              # double 0.90485465379724661
	.quad	0x3fdd66f0d42f1e9c              # double 0.45940800400829018
	.quad	0x3fdcc9084b6a638a              # double 0.4497700439911162
	.quad	0x3fe87433c58154ec              # double 0.76418484282717491
	.quad	0x3fe607880e01d350              # double 0.68841936813132953
	.quad	0x3fefb7793d697920              # double 0.99114667887241481
	.quad	0x3fe33a9f6c4c7347              # double 0.60090609695507957
	.quad	0x3fa79b67a318bb70              # double 0.046107519778494033
	.quad	0x3fe29f0acf1ea8ed              # double 0.58191433384970781
	.quad	0x3fc792773a9ca144              # double 0.18415727960496941
	.quad	0x3fec57554bca83b5              # double 0.88566078951782023
	.quad	0x3fe79e5424a193fe              # double 0.7380772319271498
	.quad	0x3fdef3cf5fde6a6e              # double 0.48363098489941236
	.quad	0x3fe070c95c26db60              # double 0.51376789091487396
	.quad	0x3fd9635f995f2ec8              # double 0.39669027307239135
	.quad	0x3fe7f23c43440eed              # double 0.74831975114690652
	.quad	0x3fd5d967681de796              # double 0.34139428298623764
	.quad	0x3fb4c1ccae8760f8              # double 0.081082146272254962
	.quad	0x3fb67e0fadb042e0              # double 0.087861041931556638
	.quad	0x3fed96128c5b64ec              # double 0.92456939137914906
	.quad	0x3fd9f917419e5864              # double 0.40582829864559344
	.quad	0x3feea4de77f5ff55              # double 0.95762561254376044
	.quad	0x3fee3bfb25cb8938              # double 0.94482190496299889
	.quad	0x3fad5f21cb7ddd20              # double 0.057366424646654091
	.quad	0x3fb73a48695789b0              # double 0.090733075826881615
	.quad	0x3fc27c054bd69dc0              # double 0.14440981104892892
	.quad	0x3fe0a8a72f13821c              # double 0.52058753199168306
	.quad	0x3fa085e713fb6820              # double 0.032271596135345471
	.quad	0x3fe9e2612c711658              # double 0.80888422660855053
	.quad	0x3fea7129d77657f5              # double 0.8263138969657563
	.quad	0x3fe22a9fce45bb2a              # double 0.56770315444541564
	.quad	0x3fd0888ff61859e0              # double 0.25833510430075357
	.quad	0x3fd4d1f0cbcd28ae              # double 0.32531375792008077
	.quad	0x3fdc1c691d1d488e              # double 0.43923404544069278
	.quad	0x3fdc659a43347ca4              # double 0.44370132983199029
	.quad	0x3fd21d7ef49eccb8              # double 0.28305028809263488
	.quad	0x3fb3e086373c7f20              # double 0.077644718633106624
	.quad	0x3fe5fe54d734ab26              # double 0.68729631454821027
	.quad	0x3fd72cce8bbc133e              # double 0.36210979124034626
	.quad	0x3fc4dad1d74cc818              # double 0.16292784702960783
	.quad	0x3fde23d571332c06              # double 0.47093711905171209
	.quad	0x3fdf87ef516c8428              # double 0.49267180396606358
	.quad	0x3fe9a7a1166f08b0              # double 0.80171255475604219
	.quad	0x3fb1318ba59a5a08              # double 0.067162254267124522
	.quad	0x3fe07d84379954a9              # double 0.51532183512849372
	.quad	0x3fe84edec07ede48              # double 0.75962770077507802
	.quad	0x3fef3867a91c87bd              # double 0.97563536672190986
	.quad	0x3fe41e97fab0f09e              # double 0.62873457873458327
	.quad	0x3fd7d36e1febb238              # double 0.37227967374090865
	.quad	0x3fefff63762580f0              # double 0.99992535663116477
	.quad	0x3fe0c98c69a5743c              # double 0.52460308679622569
	.quad	0x3fcd85a07114b11c              # double 0.23064046403431682
	.quad	0x3fe0d9409fc3ed99              # double 0.52652007297676839
	.quad	0x3fe786c88ab8c9ab              # double 0.73520304769617917
	.quad	0x3fed5a1c710ef51d              # double 0.9172498901531615
	.quad	0x3feff9c312651986              # double 0.99923852532155943
	.quad	0x3fe70c3628508774              # double 0.72024066804827536
	.quad	0x3fec82ab14b88569              # double 0.89095071837452366
	.quad	0x3fb8da5d3e1c6bc0              # double 0.097081973708937674
	.quad	0x3fad4f18d65f1c50              # double 0.057244087379836217
	.quad	0x3fdefbb8f5817a46              # double 0.48411392188237234
	.quad	0x3fe7715b85b35a2d              # double 0.73258758653066069
	.quad	0x3fed588485d3b5b4              # double 0.91705537927707903
	.quad	0x3fdb0065b667fdde              # double 0.42189925015551732
	.quad	0x3fdbe4a40276f01c              # double 0.43583011856731146
	.quad	0x3fe3caa84015a598              # double 0.61848843113436924
	.quad	0x3f837d734dc3b780              # double 0.0095166214091155776
	.quad	0x3fd90949930ce59e              # double 0.39119185791386168
	.quad	0x3fe0a676436cf4de              # double 0.52032006424965593
	.quad	0x3fd902c55ff1a48c              # double 0.39079412812731884
	.quad	0x3f90a829de3402a0              # double 0.016266493022160433
	.quad	0x3fd8051365d18e8e              # double 0.37530980056019636
	.quad	0x3fdf5c001f5caac8              # double 0.48999026358312081
	.quad	0x3fd22803efc50106              # double 0.28369234480852901
	.quad	0x3fdb9afe777c8b00              # double 0.43133508366206286
	.quad	0x3fe863f0ee469fcb              # double 0.76219984567887289
	.quad	0x3fef1bb065ae75bd              # double 0.97213001117386677
	.quad	0x3fcf5752f18a6d38              # double 0.24485241693478499
	.quad	0x3fe5253097340ab1              # double 0.66078977138416495
	.quad	0x3febe861e7b9b0fb              # double 0.87211699732645742
	.quad	0x3fe50cf4b360d0f5              # double 0.65783152613451412
	.quad	0x3fedd5d37bedacdf              # double 0.93235182003754946
	.quad	0x3fd0e0fe7e504ada              # double 0.26373255095783821
	.quad	0x3fea6a8a031c965a              # double 0.82550526244876754
	.quad	0x3fe23ab82e46e51b              # double 0.56966790235961484
	.quad	0x3fe8b33114e041ba              # double 0.7718739898428375
	.quad	0x3fefd8ee67ad918f              # double 0.9952308678589804
	.quad	0x3fd0edfea7b80d9e              # double 0.26452604655079337
	.quad	0x3feacff551f89adc              # double 0.8378855324743557
	.quad	0x3fef5474ed792d80              # double 0.97905966168893599
	.quad	0x3fe547fd08c7ebe7              # double 0.6650376483443069
	.quad	0x3fd0ece2b051a4fe              # double 0.26445834368367105
	.quad	0x3febca6e1a8a2dd5              # double 0.868460704646561
	.quad	0x3fe6cd0653bc9970              # double 0.71252743105723759
	.quad	0x3fc797340ba4dc28              # double 0.18430185860208437
	.quad	0x3fee267f99a0c91e              # double 0.94219951634866894
	.quad	0x3fdd17d6a5b697da              # double 0.45457998450217263
	.quad	0x3fe71dbbb0ed3dff              # double 0.72237953716279424
	.quad	0x3fb823c8900eb420              # double 0.094296012087128122
	.quad	0x3fee5f0d19f71b07              # double 0.94910292693461507
	.quad	0x3fe39375bb9d0b40              # double 0.61175047534229776
	.quad	0x3fe19311762629b9              # double 0.54920266223898928
	.quad	0x3fbd0e06f1777e30              # double 0.11349528689560695
	.quad	0x3fdfdf47659303ba              # double 0.49800286216128209
	.quad	0x3fdbb58e1a123c78              # double 0.43295624300021229
	.quad	0x3fe3bca92c85b2d2              # double 0.61677988715890764
	.quad	0x3fe9a3fbc81d1a47              # double 0.80126751980498845
	.quad	0x3fefc20af9dfac42              # double 0.9924368744226586
	.quad	0x3fe17f1d758dd8ca              # double 0.54676697692664189
	.quad	0x3f7828474db2bb00              # double 0.0058977875989245643
	.quad	0x3fd2921297432bbe              # double 0.29016556522099879
	.quad	0x3fd450eb78c3a828              # double 0.31743895333659333
	.quad	0x3fefc6c7105fe998              # double 0.99301484296965991
	.quad	0x3fe64cdbbb4189ed              # double 0.69688211987914672
	.quad	0x3fdee39e9076efae              # double 0.48264278514738634
	.quad	0x3fe27f64e359c0e9              # double 0.57805103687681225
	.quad	0x3fed4249cf1f05a0              # double 0.91434183553080927
	.quad	0x3fdda89d08a587e6              # double 0.46341634601969728
	.quad	0x3fc0567716be8984              # double 0.12763870821533996
	.quad	0x3fd3e704bde6d552              # double 0.3109752516277996
	.quad	0x3fd704a014378cb8              # double 0.35965730642619631
	.quad	0x3fde26ae1e5bac20              # double 0.47111084904344303
	.quad	0x3fd379be73e08bca              # double 0.30430566135526915
	.quad	0x3fe4cbb2e16ea06a              # double 0.64986557035173331
	.quad	0x3fd50cd494b15c14              # double 0.32890810509474133
	.quad	0x3fab444a0c348000              # double 0.053255380620839787
	.quad	0x3fec7fce88065c7a              # double 0.89060141150811423
	.quad	0x3fe6c411caecc332              # double 0.71143426545868338
	.quad	0x3fd533159af4dd44              # double 0.33124294407339883
	.quad	0x3fd3bdf70827c99c              # double 0.3084695415156149
	.quad	0x3fb2276461805730              # double 0.070913575939212548
	.quad	0x3fd1d1f9998b03c6              # double 0.27844085688053288
	.quad	0x3fdab5b6e70b94a8              # double 0.41734097064029152
	.quad	0x3fed5c5109d00ff0              # double 0.91751911083747295
	.quad	0x3fe0303f65224678              # double 0.50588960411751227
	.quad	0x3fa386ef4d800d80              # double 0.038138845644449582
	.quad	0x3fe5917b5a654281              # double 0.67400901465778429
	.quad	0x3fdf82b9046a0bcc              # double 0.49235368186071748
	.quad	0x3fef88d4631b6a6f              # double 0.98545283657888471
	.quad	0x3fe8503998eae302              # double 0.75979308954910629
	.quad	0x3fde3f64ebdfd352              # double 0.47261927637673751
	.quad	0x3fc1e38152c042dc              # double 0.13975540676667364
	.quad	0x3fd4e9284f4a5332              # double 0.32673080199429017
	.quad	0x3fc3845011c52138              # double 0.15247536533048289
	.quad	0x3fddfabbe399a076              # double 0.46842858530590747
	.quad	0x3fe4a82bd04fd8df              # double 0.64552870450895827
	.quad	0x3fec751e8d19bec6              # double 0.88929679449753318
	.quad	0x3fcb450dab242fcc              # double 0.21304484230529253
	.quad	0x3fddf57331a22aa2              # double 0.46810607764261125
	.quad	0x3fe32df9b9208c38              # double 0.59936224134106109
	.quad	0x3fe35e17ae3677fd              # double 0.60523590112620662
	.quad	0x3fd2905776b3edf4              # double 0.29005991546702536
	.quad	0x3fe80ded1e048654              # double 0.75169998038127028
	.quad	0x3fcfa86724919d84              # double 0.24732674871050275
	.quad	0x3fd020945f8d25b6              # double 0.25198849993884254
	.quad	0x3fef0ee18c325271              # double 0.9705665338720576
	.quad	0x3fe14b33ff713979              # double 0.54043006793089809
	.quad	0x3fe3854b10038e6f              # double 0.6100211441775637
	.quad	0x3fe7557382f6fd03              # double 0.72918105677663936
	.quad	0x3fdd3efe3bb05e7a              # double 0.45696979359625056
	.quad	0x3fe663e06bc7e773              # double 0.69969197321846222
	.quad	0x3febb29293a4112f              # double 0.86554840885268003
	.quad	0x3febc5f72679e9d6              # double 0.86791570200812873
	.quad	0x3fe426775f31d109              # double 0.62969559281057841
	.quad	0x3fd5af9a0e170c72              # double 0.33884288192729806
	.quad	0x3fc214a730e8003c              # double 0.14125528228760398
	.quad	0x3fddfecad8c4c4ce              # double 0.46867629212199524
	.quad	0x3fe808627dfac1e5              # double 0.75102352719664778
	.quad	0x3fe87a8a763e0ede              # double 0.76495860189649156
	.quad	0x3fdd58abc1385640              # double 0.45853704327723577
	.quad	0x3fc3347e553d531c              # double 0.1500394741257417
	.quad	0x3fecdde9cb088a17              # double 0.90208902029945903
	.quad	0x3fe66e134bc6ee40              # double 0.70093693542680313
	.quad	0x3fd22c4cd59ac5de              # double 0.28395386562178071
	.quad	0x3fe2200e3f8c2314              # double 0.56641304408649029
	.quad	0x3fe9898defaf591a              # double 0.79804131329982231
	.quad	0x3fef19d358d3da52              # double 0.97190253590708608
	.quad	0x3fc717b4dd0cdb44              # double 0.18041096490352448
	.quad	0x3f96e981d1aabea0              # double 0.022375133916908596
	.quad	0x3fe419b051f83bc0              # double 0.62813583383273652
	.quad	0x3fe58efedc35b77b              # double 0.67370551118595701
	.quad	0x3fcac5d8d62a36f8              # double 0.20916281182547158
	.quad	0x3fece0848fdf7293              # double 0.9024069604889341
	.quad	0x3fc528d3b868154c              # double 0.1653084421560983
	.quad	0x3fead5768acc7eee              # double 0.83855750188010147
	.quad	0x3fe081b5e2afdd50              # double 0.51583380007552115
	.quad	0x3fbb06ebd52892a8              # double 0.10557435945572513
	.quad	0x3fe6c876138e031c              # double 0.71197036570820016
	.quad	0x3fcb60f709e3bd78              # double 0.21389663679972748
	.quad	0x3fdaff7e69da7478              # double 0.42184410416832163
	.quad	0x3fd3ef537b3a8e98              # double 0.31148230585152126
	.quad	0x3fe73f9d449b0766              # double 0.72651542090919174
	.quad	0x3fe0568a583fab75              # double 0.5105640147788636
	.quad	0x3fcddd7331761010              # double 0.2333206168660813
	.quad	0x3fefa5ecde3e476a              # double 0.98900454909219815
	.quad	0x3fe25085ac7614e9              # double 0.57232936557616398
	.quad	0x3fecc154891fe302              # double 0.89859988004818114
	.quad	0x3fd44dac6c87eaf2              # double 0.31724081610415944
	.quad	0x3f9d071fe07c6020              # double 0.028347490383652141
	.quad	0x3fd56b58a289f88e              # double 0.3346768939299033
	.quad	0x3fb6a2d41069a848              # double 0.08842206383420248
	.quad	0x3fbd4fc9936febe0              # double 0.11449870919743388
	.quad	0x3fd683338ea28f70              # double 0.35175789765548071
	.quad	0x3fb2637caf0b6700              # double 0.071830551848872659
	.quad	0x3fe2df37181c94fc              # double 0.58974795064264596
	.quad	0x3fe15c44a6677eff              # double 0.54251320362888567
	.quad	0x3fe1327df77c525f              # double 0.53741358124768712
	.quad	0x3fce2a55917b3a60              # double 0.23566693881589895
	.quad	0x3feacc92a4fb7557              # double 0.83747226927850249
	.quad	0x3fef91ee79ee79fa              # double 0.9865639096713601
	.quad	0x3fec2ef47a1ff152              # double 0.88073181011672319
	.quad	0x3fefd86a7425f4a1              # double 0.99516794858177004
	.quad	0x3fd20fac395ba362              # double 0.2822065887581201
	.quad	0x3fd8f6665c66e9ae              # double 0.39003905318863985
	.quad	0x3fcf19dd8e3a3624              # double 0.2429768509359046
	.quad	0x3fd931b1e4cb09a6              # double 0.3936581358249448
	.quad	0x3fd83993559aaaac              # double 0.3785141311624709
	.quad	0x3fe638e13f40c543              # double 0.69444334367850791
	.quad	0x3fd2eddcd2ea5a0a              # double 0.29576798054895959
	.quad	0x3fd276144a8b3126              # double 0.28845698623333005
	.quad	0x3fe435cc7554e2b7              # double 0.63156721988987996
	.quad	0x3fe3116919a4308c              # double 0.59587531097487689
	.quad	0x3fc4fbd3e8a34264              # double 0.16393517359985588
	.quad	0x3f4ebe19d5d78c00              # double 9.3818913927312674E-4
	.quad	0x3fe80a0216fa25df              # double 0.75122169959757545
	.quad	0x3fe1b76584129633              # double 0.55363727374487437
	.quad	0x3fe17567f0e27cc1              # double 0.54558178947254288
	.quad	0x3fd35ca6d674e1e0              # double 0.30253001158737725
	.quad	0x3fef5a3d966544f6              # double 0.97976569532525448
	.quad	0x3fe6964ef0e1496d              # double 0.70584818884735301
	.quad	0x3fdf27e711ee1bdc              # double 0.48681046248424109
	.quad	0x3fc5c544eda3aa64              # double 0.17008267978174552
	.quad	0x3fe0e4a8d54ed626              # double 0.52791253720960607
	.quad	0x3feeabbd6dc7f2c7              # double 0.95846435014353736
	.quad	0x3feabd655639108b              # double 0.83561961021816111
	.quad	0x3fda1a914d0536c2              # double 0.40787155648727602
	.quad	0x3fe2c846f18bae27              # double 0.586947891014863
	.quad	0x3fa7638b9bc41bf0              # double 0.045681345714960631
	.quad	0x3feb2ae9207acf7c              # double 0.84898811668106999
	.quad	0x3fe8bde584b50337              # double 0.77318073195792791
	.quad	0x3fd7aa5f97d1174e              # double 0.36977376771789217
	.quad	0x3fe8b0ae4ed7ea8b              # double 0.77156749152284598
	.quad	0x3fd3c86b4d3a7d28              # double 0.30910761396258346
	.quad	0x3fef4e2c824c3d34              # double 0.97829270790854261
	.quad	0x3fe4f7da4e84d8dc              # double 0.65525546394089984
	.quad	0x3fefe0fb31b05ac7              # double 0.99621352867946988
	.quad	0x3fe123c4f0c355cc              # double 0.53561636947659386
	.quad	0x3fc9fa56fbc2a270              # double 0.20295226376517261
	.quad	0x3fb21281c533a578              # double 0.070594893116909918
	.quad	0x3fefc73c231257b6              # double 0.99307066774303254
	.quad	0x3fe3f3eceea1b9b6              # double 0.62352606399308885
	.quad	0x3fe40dca223ca106              # double 0.62668329893952612
	.quad	0x3fe8aecf0b4bdf7e              # double 0.77133896070789354
	.quad	0x3feff3892e52cd04              # double 0.99847849891230611
	.quad	0x3feea88023668afb              # double 0.95806891359492796
	.quad	0x3fe0c7470f61af16              # double 0.52432587627615379
	.quad	0x3f51550aaa293c00              # double 0.0010578731677417519
	.quad	0x3fec6cd1ee5e1e45              # double 0.8882836967104103
	.quad	0x3fee1eea1fc97f1b              # double 0.94127374847809919
	.quad	0x3fecb49875b404fe              # double 0.89704535473734359
	.quad	0x3fe1ef72349ba0cc              # double 0.56047926211342647
	.quad	0x3fdfe0e92059ee94              # double 0.49810245665842356
	.quad	0x3fa76924d587fa40              # double 0.045724059167686182
	.quad	0x3fab66133ac7ba70              # double 0.053513146329227435
	.quad	0x3fca1dce1d860fec              # double 0.2040345806273075
	.quad	0x3fed911437ee4c59              # double 0.92395983623499511
	.quad	0x3fe9cb2c6b7f5f9d              # double 0.80605145450225602
	.quad	0x3f9291e8e540baa0              # double 0.018134726517184618
	.quad	0x3fe2ee117060830c              # double 0.59156104992516267
	.quad	0x3fb29c864f888200              # double 0.072700876633923883
	.quad	0x3fe1fd4fc17b3483              # double 0.56217181958494711
	.quad	0x3fe2532f4b1aa9d6              # double 0.57265438717632366
	.quad	0x3fe220b8bde650e1              # double 0.56649434175281155
	.quad	0x3fe8c88d96c6dd88              # double 0.77448157738301493
	.quad	0x3fe82d097460e574              # double 0.75549767236877451
	.quad	0x3fe153f4d65a3c5e              # double 0.54149858346671542
	.quad	0x3feba3ae19750f9c              # double 0.86373047802088676
	.quad	0x3fc4d867fcef2138              # double 0.16285419321344263
	.quad	0x3fcad0a693fa2f6c              # double 0.20949251389935897
	.quad	0x3fe2a234e03696b7              # double 0.58230060378692527
	.quad	0x3fe18864c95f862d              # double 0.54789962130252479
	.quad	0x3fee9b8275d8eabf              # double 0.9564831067758276
	.quad	0x3fd650c0b5cc4600              # double 0.34867875817971594
	.quad	0x3fe29ddd50ce963e              # double 0.58177057058919224
	.quad	0x3fe798adae6773b1              # double 0.73738750518133689
	.quad	0x3fea6920038dd472              # double 0.82533264822144603
	.quad	0x3fe26043e4df78b8              # double 0.57425112439866322
	.quad	0x3fcfa7ea5e2579e8              # double 0.24731187436095969
	.quad	0x3fedd78457aa60dc              # double 0.93255822298217649
	.quad	0x3fe9bdf9958b323c              # double 0.80444030006180566
	.quad	0x3fd74dd40a331980              # double 0.36412526126914457
	.quad	0x3fc7c54a9b4df98c              # double 0.18570835669738661
	.quad	0x3fd58fa63384bb16              # double 0.33689265280820402
	.quad	0x3fcef484900635f4              # double 0.24183709175524337
	.quad	0x3f67e5bde1af1800              # double 0.0029171665787286472
	.quad	0x3fd0a769014246d2              # double 0.26021790621699126
	.quad	0x3fe7921d8657b5c7              # double 0.73658634413521262
	.quad	0x3fd5728d996f0e0c              # double 0.3351167677285225
	.quad	0x3fd78a7cbdfeb724              # double 0.3678275924129244
	.quad	0x3fe926c30f8771e7              # double 0.78598168404601843
	.quad	0x3fe0a0e2a525eeda              # double 0.51963932281020253
	.quad	0x3fc0dd534ca68ed0              # double 0.13175431482988254
	.quad	0x3fcfa825a2df638c              # double 0.24731893971218388
	.quad	0x3fecbe424a0b557f              # double 0.89822496854564793
	.quad	0x3f95c63a141c9100              # double 0.02126398799659146
	.quad	0x3fe7b27bbc1acdf2              # double 0.74053751696777526
	.quad	0x3fea1a17d60cf67e              # double 0.81568519408001783
	.quad	0x3fd8bede0f8c75ea              # double 0.38664962309289186
	.quad	0x3fefd7e91e8f92ac              # double 0.9951062771693464
	.quad	0x3fd73e3622a34efe              # double 0.36317208654985211
	.quad	0x3fb45ac0ffb64ca8              # double 0.07950979464503638
	.quad	0x3fc80b5907bb382c              # double 0.18784630658632417
	.quad	0x3fed31bf271405c1              # double 0.91232259399856031
	.quad	0x3fde7348e6e03c2a              # double 0.47578642412639971
	.quad	0x3fcefc28e5343c9c              # double 0.24207030479053493
	.quad	0x3fe208b482af6832              # double 0.56356263660859995
	.quad	0x3fd7c3e681293452              # double 0.37133181203245613
	.quad	0x3f84380080aa62c0              # double 0.0098724402680984146
	.quad	0x3fcc6b8f73730be8              # double 0.22203248154809718
	.quad	0x3fdeecc370d16398              # double 0.48320089356780604
	.quad	0x3fe2bfaa86ed6515              # double 0.58589674332611941
	.quad	0x3fe40a6c3bfad728              # double 0.62627231325925425
	.quad	0x3fed132a9d324fb5              # double 0.90858965589949625
	.quad	0x3fdbcae515bb4238              # double 0.43425871965613139
	.quad	0x3fd415af073e5200              # double 0.31382346827857077
	.quad	0x3fb1057a2054aa88              # double 0.066489823239559098
	.quad	0x3fe839d9f35968ad              # double 0.75706193474913663
	.quad	0x3fd16be879a92486              # double 0.27221118813447054
	.quad	0x3fdf014d0b19b496              # double 0.48445440372490489
	.quad	0x3fde31ae7e3c84c0              # double 0.47178232505582329
	.quad	0x3fae1e8bd8ab46b0              # double 0.058826799582346267
	.quad	0x3fed3726a76b9af1              # double 0.9129822988441828
	.quad	0x3fd69ebf1dfc61b2              # double 0.35343912056262206
	.quad	0x3fece4ff18e2b30a              # double 0.9029536710782804
	.quad	0x3fd05bd56da9c6f4              # double 0.25560508450790498
	.quad	0x3fd391735bd05862              # double 0.30575260130115656
	.quad	0x3fec3dd0eed9c0e5              # double 0.88254591608531696
	.quad	0x3fec503dcdb5fd2b              # double 0.88479509523304978
	.quad	0x3fd0334dc27c87a2              # double 0.25313133232895713
	.quad	0x3fea24631f2549ab              # double 0.81694179614196594
	.quad	0x3fe8d11444cac433              # double 0.77552236019085397
	.quad	0x3fa7f67a2233d840              # double 0.046802345919715993
	.quad	0x3f91c5e384dde780              # double 0.017356448158785565
	.quad	0x3fef34e4bdaae43c              # double 0.97520672840540312
	.quad	0x3fca33c847c16ac0              # double 0.20470527175606001
	.quad	0x3febef74daded362              # double 0.87298052547576455
	.quad	0x3fe790dc0788e53a              # double 0.73643304320936598
	.quad	0x3feb48074cb20656              # double 0.8525425432164393
	.quad	0x3fe8dbea72eace5c              # double 0.77684519238250571
	.quad	0x3f93f6e268e0e800              # double 0.019496476794508055
	.quad	0x3fd1ea277563a26e              # double 0.27991663421429436
	.quad	0x3fb3353779dff290              # double 0.075030772451962102
	.quad	0x3fdd68941571279a              # double 0.45950796216913548
	.quad	0x3fa26a8d1d20d940              # double 0.035969171338751327
	.quad	0x3fd1aa8891a81fac              # double 0.27603353714266166
	.quad	0x3fd20b6b047248cc              # double 0.28194690164776826
	.quad	0x3fe83a5609c513c6              # double 0.75712110431833746
	.quad	0x3fec6a38d1ab0c33              # double 0.88796654654323104
	.quad	0x3fee844024e38cbe              # double 0.95364386753899288
	.quad	0x3fc699c3748b78d4              # double 0.17656748953499479
	.quad	0x3fe1bf0f8f855f3e              # double 0.5545728495735387
	.quad	0x3fe30b7910cb7da4              # double 0.59515050201655528
	.quad	0x3fe37d20a233c61d              # double 0.60902434997678123
	.quad	0x3fc44298a56a8c74              # double 0.15828235699618498
	.quad	0x3fec0146723af87b              # double 0.87515566168418901
	.quad	0x3feba5fb3059a1b2              # double 0.86401137774833203
	.quad	0x3fe5527b4431a7b9              # double 0.66631854361661802
	.quad	0x3fe3465d2f516e4f              # double 0.60233935586752263
	.quad	0x3f92552313658ca0              # double 0.017902896937255108
	.quad	0x3fd773781d75f0b0              # double 0.36642268063566075
	.quad	0x3fd7dfd3772b6644              # double 0.37303625714921318
	.quad	0x3fc4fb88dd935990              # double 0.16392622775192622
	.quad	0x3feac6d32e0ddd1c              # double 0.83677062029792947
	.quad	0x3fefe2137cf1cacf              # double 0.99634718325827431
	.quad	0x3fb2d6aecebb0228              # double 0.07358830020076168
	.quad	0x3fd9f0472beb4a30              # double 0.40529040612196621
	.quad	0x3fbd62238f5e38c0              # double 0.1147787308711683
	.quad	0x3fee6d3bb7243271              # double 0.9508341385822644
	.quad	0x3fce2e101440a944              # double 0.23578072537322659
	.quad	0x3fd2733f8eff587c              # double 0.28828419651598103
	.quad	0x3fd78247c1e9fe70              # double 0.36732667862813795
	.quad	0x3fe0edfcbc10d488              # double 0.52905117732611107
	.quad	0x3fd484b428277f46              # double 0.3205995933658311
	.quad	0x3fc4dc3f17fdef18              # double 0.16297138854485449
	.quad	0x3fd21eb05635f020              # double 0.28312309664738855
	.quad	0x3fe459aad96c7f0c              # double 0.63594572511280623
	.quad	0x3fe33f85b69a104a              # double 0.60150418915191861
	.quad	0x3fd09cd23e216eaa              # double 0.25957161014023689
	.quad	0x3fe079d10cb6f47e              # double 0.51487019046147942
	.quad	0x3fd021fe453ae3a4              # double 0.25207478295083718
	.quad	0x3febefbdabe9c23a              # double 0.87301524712353928
	.quad	0x3fd1b4539dec98cc              # double 0.27663126394544402
	.quad	0x3fe79cf4cb838bd9              # double 0.73790969609069201
	.quad	0x3fe7ca3684ba9dbc              # double 0.74343419955851386
	.quad	0x3fea70ecc5205cfd              # double 0.82628477574590387
	.quad	0x3fdd230839d6246a              # double 0.45526319168181451
	.quad	0x3fdf085173cffc44              # double 0.48488270101364983
	.quad	0x3fec7210d6506711              # double 0.88892404421059912
	.quad	0x3fa0f959085c7c10              # double 0.033152372618353465
	.quad	0x3fc0061d5b45c68c              # double 0.12518660504024515
	.quad	0x3fe26a4ece080ec8              # double 0.57547703018686835
	.quad	0x3feefa69213ad03a              # double 0.96806770792182495
	.quad	0x3fd229033b5c082a              # double 0.28375321194482928
	.quad	0x3fe19cb16f734a9c              # double 0.55037757651946917
	.quad	0x3fe7191abd0ec316              # double 0.72181450772595457
	.quad	0x3fd75f8e42d6d856              # double 0.36520725753087413
	.quad	0x3fe4b05517e898b1              # double 0.64652495069164762
	.quad	0x3fc48971a34f2138              # double 0.16044445489957027
	.quad	0x3fefd1d7186cb75c              # double 0.99436526079601206
	.quad	0x3fd7cbc5fd881940              # double 0.37181234129856833
	.quad	0x3feb8427fd6df35c              # double 0.85988234994838874
	.quad	0x3fe07ab017d9e346              # double 0.51497654589102448
	.quad	0x3f95a84ef6554ae0              # double 0.02114985826967597
	.quad	0x3fa02179e1faeb20              # double 0.031505402408092076
	.quad	0x3fe993bbee1050fa              # double 0.79928394791434632
	.quad	0x3fd5eb10d8a00e82              # double 0.34247227816397452
	.quad	0x3fd4241764c6aa7c              # double 0.31470284310731933
	.quad	0x3fdb6bf7a53c9e2a              # double 0.42846480499653927
	.quad	0x3fe89d301a4b434f              # double 0.76918797622247748
	.quad	0x3fce25a8dc5917a4              # double 0.23552428015881077
	.quad	0x3fc0a4dbd1b10d44              # double 0.13003108729217605
	.quad	0x3fb125ea883dabf0              # double 0.0669848044032475
	.quad	0x3fda6919ececdbe6              # double 0.41266487252454309
	.quad	0x3fed004210dc09e8              # double 0.90628150265575602
	.quad	0x3fde093d1d8a1378              # double 0.4693138874502476
	.quad	0x3fefa23bbb73ef3d              # double 0.98855387317551157
	.quad	0x3fcfe43c56206288              # double 0.24915270047565152
	.quad	0x3fe45a663b21053a              # double 0.63603507565145567
	.quad	0x3fe1fb205d12cf03              # double 0.56190508058941224
	.quad	0x3fe0f180e8b2a811              # double 0.52948041390232181
	.quad	0x3fd4f0fde6304b88              # double 0.3272089717804012
	.quad	0x3fece7e82b0be73b              # double 0.90330894858855204
	.quad	0x3fef42af61105906              # double 0.97689026792321054
	.quad	0x3fe0e9a8d2be448a              # double 0.52852288399493941
	.quad	0x3fd4437417f1fd4e              # double 0.31661703432469757
	.quad	0x3fd8ec08a7da8518              # double 0.38940636054947353
	.quad	0x3fdacbdf89739478              # double 0.4186934320735598
	.quad	0x3f8a04eccd914540              # double 0.012704706214352712
	.quad	0x3fe7be7d28f441d6              # double 0.74200304030278619
	.quad	0x3fc841667f96260c              # double 0.18949586133776142
	.quad	0x3fb5a5a45a0044f0              # double 0.084558746312058508
	.quad	0x3fe85dfd28cbba3c              # double 0.76147325485164385
	.quad	0x3f837033a5a919c0              # double 0.0094913515978419793
	.quad	0x3fd1112b8d003cba              # double 0.26667298097249736
	.quad	0x3febc7b84b8a7a88              # double 0.86812987093056027
	.quad	0x3fd8e4758f06ca74              # double 0.38894404380258796
	.quad	0x3fe317fa09a79782              # double 0.59667684446024816
	.quad	0x3fc328a6b77fffd0              # double 0.14967807731591032
	.quad	0x3fd5189d46e61fa8              # double 0.32962734149668416
	.quad	0x3fbd1b50910cfa60              # double 0.11369803944851631
	.quad	0x3fefce32584b8854              # double 0.99392049069525478
	.quad	0x3feb105b3a9dede3              # double 0.84574662636390163
	.quad	0x3fe2a9e413793a28              # double 0.58323863795687192
	.quad	0x3fcadd573d85aaf0              # double 0.20987978462229462
	.quad	0x3fcc866c1ab293d4              # double 0.22285224250404545
	.quad	0x3fcdc8c917b28224              # double 0.23268998772711413
	.quad	0x3fe11c63dd709f1d              # double 0.53471558809266961
	.quad	0x3fc02e4c2fb32140              # double 0.12641289071167172
	.quad	0x3fdf85ea3332e358              # double 0.49254851341134076
	.quad	0x3fbdbe5b53b173a0              # double 0.11618586343088433
	.quad	0x3fb04c8b2504b678              # double 0.063667961633393833
	.quad	0x3fe1c0e3cc9ea5c9              # double 0.55479612316883575
	.quad	0x3fb6dd8a664836d0              # double 0.089317941638195508
	.quad	0x3fe6a3d7a01fab31              # double 0.70750027918015779
	.quad	0x3fe178b9f0f770f6              # double 0.54598710120947547
	.quad	0x3fd0b7a1f28d86c2              # double 0.26120804487991844
	.quad	0x3fe7454df478445c              # double 0.72721002338415586
	.quad	0x3fc3985bd8f23638              # double 0.15308712094376786
	.quad	0x3fe75f56cda37bfd              # double 0.73038807071486611
	.quad	0x3fc07f5183b84aec              # double 0.12888544971118365
	.quad	0x3fef7f5fadab959e              # double 0.98429855270358124
	.quad	0x3fe43a2742ab5043              # double 0.6320987989552197
	.quad	0x3fec9207b9d3c664              # double 0.89282594961532568
	.quad	0x3fb205e341fee870              # double 0.070402339565505789
	.quad	0x3fd40b47ccda7862              # double 0.31318850522246156
	.quad	0x3fcbd0961a5dfa5c              # double 0.21730304992157101
	.quad	0x3fe5116928171310              # double 0.65837533788780611
	.quad	0x3fe3941cac412ec3              # double 0.61183007853966165
	.quad	0x3fcd760015efe100              # double 0.23016358443397422
	.quad	0x3fea3871f842fd07              # double 0.81939028252227863
	.quad	0x3fe7385d37d9ca6a              # double 0.72563038738583185
	.quad	0x3fb4c96e78e9d3e8              # double 0.081198601264830139
	.quad	0x3feeee9a4c8f7726              # double 0.96662630990224296
	.quad	0x3fd4b376cf90c742              # double 0.3234536196715575
	.quad	0x3fd753815d6557ea              # double 0.36447176094713873
	.quad	0x3fdd2b252c2a08d4              # double 0.45575837433729061
	.quad	0x3fdacfa391471364              # double 0.41892327487248893
	.quad	0x3feef82bf6b593bb              # double 0.96779440102965652
	.quad	0x3feefdf93ebc2e48              # double 0.96850263836808725
	.quad	0x3fe1c650f072b289              # double 0.55545851671702551
	.quad	0x3fecde1a58430b37              # double 0.90211217154169432
	.quad	0x3fec01cf9ab5e91f              # double 0.87522106377517506
	.quad	0x3feed4c2c9f057a4              # double 0.96347178879908712
	.quad	0x3fedd5a1a876c5a4              # double 0.93232806113353605
	.quad	0x3fe90f20fd2f2ab5              # double 0.78309678506896907
	.quad	0x3fe95cc047f43249              # double 0.79257215550894344
	.quad	0x3fc844bffeec0ac0              # double 0.18959808299412906
	.quad	0x3f9862d723ce10e0              # double 0.023814546165810024
	.quad	0x3fb2f4d61670a5b0              # double 0.074048405149958141
	.quad	0x3fa7a3b9aff46e10              # double 0.046171000222070657
	.quad	0x3fe6043de54ea321              # double 0.68801779543455066
	.quad	0x3fdc95f165bab074              # double 0.44665179190156512
	.quad	0x3fef99254eb35d91              # double 0.98744454737873088
	.quad	0x3fe6aab63ed6e08f              # double 0.70833885453522949
	.quad	0x3fe25380524a0ca8              # double 0.57269302436943281
	.quad	0x3fe78b74666d5679              # double 0.73577327733319386
	.quad	0x3fe2a82cc824b7a4              # double 0.58302916613114464
	.quad	0x3fee17abde65452f              # double 0.9403895705856139
	.quad	0x3fe0b1638ea36863              # double 0.52165391787572124
	.quad	0x3fe65da1f9108dc2              # double 0.69892977376405718
	.quad	0x3fe4c401c5bcf91a              # double 0.64892662640321253
	.quad	0x3fe184409a68f966              # double 0.5473940864392659
	.quad	0x3fe716e9f9ddf773              # double 0.72154711534652305
	.quad	0x3fd3852fd02ea73c              # double 0.30500407533928686
	.quad	0x3fe16323b827dcde              # double 0.54335199325478434
	.quad	0x3fc524d63fdfbb60              # double 0.16518667334409098
	.quad	0x3fe0d54c084ba8ee              # double 0.52603723163818272
	.quad	0x3fe6de46945209a4              # double 0.71463326424445883
	.quad	0x3fc2a9c6ce1ee9c4              # double 0.14580617012491193
	.quad	0x3fd930a11c0f4ec2              # double 0.39359309902395634
	.quad	0x3fc5ad5695fff608              # double 0.16935236286364863
	.quad	0x3feb74812859e7ef              # double 0.85797174340336635
	.quad	0x3fcd4fc89535b57c              # double 0.22899730001101293
	.quad	0x3feac7aa9bafedfa              # double 0.83687334449444895
	.quad	0x3feda4238f5990c2              # double 0.92628648756046794
	.quad	0x3fe0b4b0e00bfb35              # double 0.52205699690953244
	.quad	0x3fd7b50e42b359e2              # double 0.37042576326112286
	.quad	0x3fdde83016b31478              # double 0.4672966214823826
	.quad	0x3fce507c09d38768              # double 0.23683119277762477
	.quad	0x3fe0f5f45489e526              # double 0.53002373229461308
	.quad	0x3fdc2f7ed2ec2bbe              # double 0.44039888952164208
	.quad	0x3fe782615beb576c              # double 0.734665565042389
	.quad	0x3fec8257d735bc4c              # double 0.89091102631744822
	.quad	0x3feae822d271d40f              # double 0.84083691694707052
	.quad	0x3f59b10b9d94aa00              # double 0.0015680898125746134
	.quad	0x3fefc7b26ce1cafc              # double 0.99312707201019589
	.quad	0x3fe42bc2d3e63c4e              # double 0.63034192453950211
	.quad	0x3fe9215e7b51bcb6              # double 0.7853233727054405
	.quad	0x3fdb25bd8e7a1ca6              # double 0.42417849458474632
	.quad	0x3fee68ab7a0e126b              # double 0.95027707899914782
	.quad	0x3fcda50bffb2527c              # double 0.23159933076080452
	.quad	0x3fef9402399fe157              # double 0.98681746725837171
	.quad	0x3fabe4b19cf80cb0              # double 0.054479170237777708
	.quad	0x3fecb693e2851096              # double 0.89728731386323335
	.quad	0x3fe85db95f98c9cd              # double 0.76144093199973784
	.quad	0x3fd5807e5fd23504              # double 0.33596762998134033
	.quad	0x3fcf9697596ee214              # double 0.24678317896702195
	.quad	0x3fd5ad2017bbd928              # double 0.33869173352958848
	.quad	0x3fe1c79e375c5686              # double 0.55561743557582655
	.quad	0x3feaf993c07251f1              # double 0.84296596133441259
	.quad	0x3fec948e999aceb9              # double 0.89313440323754556
	.quad	0x3feeb75e27db30db              # double 0.95988376411835518
	.quad	0x3fd09ea81afe9634              # double 0.25968363414935713
	.quad	0x3f997144511337e0              # double 0.024846141289167067
	.quad	0x3fdcaa4b4483350e              # double 0.44789392176319687
	.quad	0x3fb88f4dd7a646a8              # double 0.095936646603400733
	.quad	0x3fe48453ce4ad620              # double 0.64115324298353826
	.quad	0x3f8696b11b9d5480              # double 0.011029609351377312
	.quad	0x3fc5364bdf8dd340              # double 0.16571949401591191
	.quad	0x3fde87913606e92a              # double 0.47702436710428009
	.quad	0x3fccc2e806085630              # double 0.22469806952055782
	.quad	0x3fe236e05e7c438b              # double 0.56919878439121996
	.quad	0x3fe89bc91882fc89              # double 0.76901678836283438
	.quad	0x3fc110901019a390              # double 0.13331795488491283
	.quad	0x3fc4f6ad6ad30fb0              # double 0.16377799716985697
	.quad	0x3fe9c68496efa880              # double 0.80548314552039812
	.quad	0x3feb51424cd25cab              # double 0.85366930965655763
	.quad	0x3fca30f8fbd2e7b4              # double 0.20461952491842583
	.quad	0x3fe07673c386da4d              # double 0.51445949734518026
	.quad	0x3fd5e800bb031c1a              # double 0.34228533041863474
	.quad	0x3feb4ebfc9bd08c9              # double 0.85336293603929747
	.quad	0x3fec2b2c24a96970              # double 0.88027007256031986
	.quad	0x3fce87b6f4785e88              # double 0.23851668297787776
	.quad	0x3fe8658f750f7f59              # double 0.76239750731836431
	.quad	0x3fd3ba5d63455370              # double 0.30824980444349759
	.quad	0x3fe323302a43bb7d              # double 0.59804542784500792
	.quad	0x3fe80ddf645117f4              # double 0.75169343560332757
	.quad	0x3fc368b8775c9684              # double 0.15163331821638704
	.quad	0x3fe83f58e8e20b02              # double 0.75773282513577578
	.quad	0x3fe480fd6471efc2              # double 0.64074582689453785
	.quad	0x3fece7217d2fd412              # double 0.90321421099236177
	.quad	0x3fe829c743e0c895              # double 0.75509989983972281
	.quad	0x3fe1257abf975402              # double 0.53582513256208153
	.quad	0x3fee7969da97aa89              # double 0.95232098287427036
	.quad	0x3fe41db7d0698a0d              # double 0.6286276884605414
	.quad	0x3fea80ec002e564a              # double 0.82823753390648247
	.quad	0x3fe6441218b0877d              # double 0.69580941030675059
	.quad	0x3fe16f3e436f7f6b              # double 0.54482949419978632
	.quad	0x3fe1b126811c804c              # double 0.5528748056131092
	.quad	0x3fec968fb8a92b63              # double 0.89337907854620047
	.quad	0x3fbc3d2e83a1a220              # double 0.11030855859429112
	.quad	0x3fdd4029f41286ce              # double 0.45704125247185068
	.quad	0x3fd3b289e4e223d0              # double 0.30777213432207606
	.quad	0x3fd5f1396b508434              # double 0.3428481624596913
	.quad	0x3fd055802aaf5528              # double 0.25521854561277957
	.quad	0x3fc95a19d999ca88              # double 0.19806216359173257
	.quad	0x3fe58011cd1e4e12              # double 0.67188348829444267
	.quad	0x3fdb9d642d1b82d0              # double 0.4314814033987604
	.quad	0x3fc63d20cc7bc08c              # double 0.17374048218289706
	.quad	0x3fea4320b602c0a3              # double 0.82069430874800664
	.quad	0x3fc56a0531f2b3f0              # double 0.1672979825865748
	.quad	0x3f97544a8e35fec0              # double 0.022782483034005763
	.quad	0x3fe36112f8e3bc95              # double 0.60559986697434687
	.quad	0x3fe3529a90916742              # double 0.60383346782621339
	.quad	0x3feaf4104f8e9f2b              # double 0.84229293383120785
	.quad	0x3fcf09369bb85174              # double 0.24246866801753308
	.quad	0x3fe7aa18beac94ea              # double 0.73951375237507233
	.quad	0x3fdf4ef55d0069c2              # double 0.48919424135388223
	.quad	0x3fb65d39d4621310              # double 0.087360014296859356
	.quad	0x3fdd28d024917066              # double 0.45561603137117002
	.quad	0x3fecab6d7dbd725d              # double 0.89592623289679418
	.quad	0x3fe00aebba52f9d0              # double 0.50133310691290411
	.quad	0x3fe21499672a7e0b              # double 0.56501455449682803
	.quad	0x3fe5bef36f09ac05              # double 0.67955943762842763
	.quad	0x3fedfcf2551fbd93              # double 0.93712727189806555
	.quad	0x3fc774996563397c              # double 0.18324582529607969
	.quad	0x3fc86c7f1e34158c              # double 0.19081105208185212
	.quad	0x3fe96cdcf611c2d8              # double 0.79453895626474047
	.quad	0x3fc831547e948d28              # double 0.18900543385198287
	.quad	0x3fe7be2cd9950115              # double 0.74196474548810676
	.quad	0x3feeb17d6abe699c              # double 0.95916624878309475
	.quad	0x3fe27f290fcd986e              # double 0.57802250944656719
	.quad	0x3fd0a34ac6d694f4              # double 0.25996655862611751
	.quad	0x3fe0b84ad5b37e30              # double 0.52249662149910669
	.quad	0x3f83222fab6d3a80              # double 0.0093425487699765331
	.quad	0x3fee7b916a23ca57              # double 0.95258398752623463
	.quad	0x3fd0f9619eb23bc4              # double 0.26522102830579919
	.quad	0x3fe8fd3e9e9e1d44              # double 0.78091364841467525
	.quad	0x3fe0c95d3c10837f              # double 0.52458059054707451
	.quad	0x3fe682f38b59f324              # double 0.7034852716165898
	.quad	0x3fb391c3c20d8520              # double 0.076442942501234956
	.quad	0x3fe9257b3f3e91fb              # double 0.78582537033486177
	.quad	0x3f77859cef2d0300              # double 0.0057426576848349509
	.quad	0x3fdb182a02f9c992              # double 0.42334986010168862
	.quad	0x3fd4e6943f0922a8              # double 0.32657343059376354
	.quad	0x3fbeb6dd610b7980              # double 0.11997779483087889
	.quad	0x3fe5717e0f3ff351              # double 0.67010405519941163
	.quad	0x3fd784843a0c9f2a              # double 0.36746316594006834
	.quad	0x3fddb8c3e611cdfa              # double 0.46440217464188971
	.quad	0x3fda5dfc18766686              # double 0.41198637379566383
	.quad	0x3fec60ef3e5270bb              # double 0.88683283016464232
	.quad	0x3fe7a6e981aff91d              # double 0.73912501649445839
	.quad	0x3feb54217a9a9aa2              # double 0.85401987024382131
	.quad	0x3f8c00a777dc6300              # double 0.01367312273537058
	.quad	0x3fe93e78c6e4f2bc              # double 0.78887595030354118
	.quad	0x3fb90f599031f1a0              # double 0.09789047022235886
	.quad	0x3fe1453b7ca0e37f              # double 0.53970121709345154
	.quad	0x3fe7d2135d38df30              # double 0.74439399917080173
	.quad	0x3fd83ca8d5e53c42              # double 0.37870236290195092
	.quad	0x3fefe4295316ac15              # double 0.99660173633799564
	.quad	0x3fdc1481dc171d7e              # double 0.43875166409676314
	.quad	0x3fc29a1aabb9acac              # double 0.1453278864385984
	.quad	0x3fbc1338351b2f60              # double 0.1096682672170437
	.quad	0x3fe354951edf1c95              # double 0.60407501248927764
	.quad	0x3fe8c3d758292cc6              # double 0.7739063951388736
	.quad	0x3fe4103573cd3bb3              # double 0.62697861306684499
	.quad	0x3feb503e31eee045              # double 0.85354528191147294
	.quad	0x3fe9bdc293a9030e              # double 0.804414070509752
	.quad	0x3fe6d7858e3a3091              # double 0.71380880144853809
	.quad	0x3fdf96189eb43c40              # double 0.49353614328805762
	.quad	0x3fd33b96ac283eac              # double 0.30051199733950784
	.quad	0x3fd7bcf360b8ea60              # double 0.37090763516940761
	.quad	0x3fb60b9684c6ce68              # double 0.086114318290862024
	.quad	0x3fdf270a8c89eebe              # double 0.48675788616649729
	.quad	0x3fe7b4799c164a3c              # double 0.74078064428096679
	.quad	0x3feaa054e8472fc6              # double 0.83207173697291448
	.quad	0x3fded5bfb949ad00              # double 0.48179619879256563
	.quad	0x3fe859e3ec03e563              # double 0.76097293946001476
	.quad	0x3fe3737005a876f9              # double 0.60784150223818678
	.quad	0x3fe5690f535f86d1              # double 0.66907469066446812
	.quad	0x3fecaead82975150              # double 0.89632297044821918
	.quad	0x3fe597e6e4c8142c              # double 0.67479271587274559
	.quad	0x3fefb7d6c3bbb24d              # double 0.99119127492083125
	.quad	0x3fe3ba232f4c341f              # double 0.61647185552431327
	.quad	0x3fc9c64a1582424c              # double 0.20136381197200348
	.quad	0x3fe72233fd019420              # double 0.72292518058077704
	.quad	0x3fd00ed74871e762              # double 0.25090581965161196
	.quad	0x3fecbf8e8422e97a              # double 0.8983833866871429
	.quad	0x3fe9e7e981af8c5a              # double 0.80955958680386719
	.quad	0x3fb61ae581442160              # double 0.086347908076395807
	.quad	0x3fea59aac639b6d0              # double 0.82344568935305951
	.quad	0x3fdb91735d5c91e8              # double 0.43075260274261362
	.quad	0x3fd9016ffcb3f8d8              # double 0.39071273496655357
	.quad	0x3fe2203d0965c913              # double 0.56643535457104333
	.quad	0x3feb2a3a8043e019              # double 0.84890484859261328
	.quad	0x3fe1cdd8c19f18d9              # double 0.55637777153676915
	.quad	0x3fdb9ab97790938c              # double 0.43131863285298588
	.quad	0x3fea0f8063edbe3e              # double 0.81439227597542874
	.quad	0x3fdec3ded0242976              # double 0.4807049782399625
	.quad	0x3f9a61f4f007d480              # double 0.025764300489715897
	.quad	0x3fd98882ebde17a0              # double 0.39895699533405526
	.quad	0x3fc91804d830b860              # double 0.19604549938361782
	.quad	0x3fd90aa686ccfe58              # double 0.39127505458961798
	.quad	0x3fe1fddf1f6205bc              # double 0.56224018220398575
	.quad	0x3fcdaad8d068e25c              # double 0.23177633453612401
	.quad	0x3fdeab66983f9758              # double 0.47921147220619309
	.quad	0x3fdec99c62e3e19c              # double 0.48105535180322945
	.quad	0x3fc1f89eabfbb1cc              # double 0.14039977452865882
	.quad	0x3fe4875b270c8897              # double 0.64152295710325091
	.quad	0x3fcf7f38280c7384              # double 0.24606992679119
	.quad	0x3fecd36f6aad5e4d              # double 0.90080996356386722
	.quad	0x3fe3b5a92d368c74              # double 0.61592539625816167
	.quad	0x3fe48c8be20ca1bc              # double 0.64215654516470222
	.quad	0x3fe4444e1c109d16              # double 0.63333802682328399
	.quad	0x3fd8b39c7a413940              # double 0.38596260012572614
	.quad	0x3fc298d91eaf4b20              # double 0.14528955457952808
	.quad	0x3febba301691c91c              # double 0.86647800834751675
	.quad	0x3fe38cd1de37bd7f              # double 0.61093991662885105
	.quad	0x3fe4998c72f2163b              # double 0.64374372911760902
	.quad	0x3fe4fc80617ed856              # double 0.65582293550574877
	.quad	0x3fba1167e3f3ad28              # double 0.10182809176665286
	.quad	0x3fe0cf61952af6b7              # double 0.52531508573857522
	.quad	0x3fea66381cf162f1              # double 0.82497792866624142
	.quad	0x3f92d5aa941be240              # double 0.018393197336054934
	.quad	0x3fba9dd50da16710              # double 0.10397082884574282
	.quad	0x3fbb3d6139df8be0              # double 0.10640533125801666
	.quad	0x3fba8de764b49f28              # double 0.10372778137809446
	.quad	0x3fc5bada778a9b98              # double 0.16976481282219136
	.quad	0x3fe0e219db5ce50e              # double 0.52760022014914099
	.quad	0x3fe46bc3cb59f0d4              # double 0.63815488545471988
	.quad	0x3fdd4853655d7cce              # double 0.45753941439575108
	.quad	0x3fe6c0157b81caf4              # double 0.71094774363004243
	.quad	0x3feedcf29367cdee              # double 0.9644711379063986
	.quad	0x3fc134abbe81f584              # double 0.1344198875630519
	.quad	0x3fc8888fd6fc3f54              # double 0.19166753766375655
	.quad	0x3fda6b74533e21a4              # double 0.41280849579973222
	.quad	0x3fdea9f04812c4d0              # double 0.47912222898874024
	.quad	0x3fddd7e6a5340e40              # double 0.46630254872454557
	.quad	0x3fe65e5416c29ebb              # double 0.69901470609052951
	.quad	0x3fdcadef4079d528              # double 0.44811612411952462
	.quad	0x3fdda2a3dffb9dec              # double 0.46305176614120458
	.quad	0x3fea374dd0fd1f76              # double 0.81925097292058413
	.quad	0x3feb8be87c26adf0              # double 0.86082863090763162
	.quad	0x3fd092d1a6eda2d0              # double 0.25896111775959429
	.quad	0x3fe0171597163674              # double 0.50281791218885852
	.quad	0x3fdda46b7b7dcb48              # double 0.4631603914232767
	.quad	0x3feaef86203255c1              # double 0.84173876083757915
	.quad	0x3fe08a8bd40d3beb              # double 0.51691237846705229
	.quad	0x3fc790fb1583a700              # double 0.1841119628000385
	.quad	0x3fe10dfbdd1a6a1b              # double 0.53295701202597756
	.quad	0x3febd1f8607d2b71              # double 0.86938113065239808
	.quad	0x3fe32885ab250dcd              # double 0.59869655062396421
	.quad	0x3fd9465aac417058              # double 0.3949190790351671
	.quad	0x3fe9971b12c0b3f2              # double 0.79969552672048239
	.quad	0x3fe9c23843403fb1              # double 0.80495846877055588
	.quad	0x3feee67033e72a07              # double 0.96562967431356205
	.quad	0x3fef7cf1a79d916c              # double 0.98400194871332535
	.quad	0x3fa13e6a379dca40              # double 0.033679312981707898
	.quad	0x3fa81fe877bec190              # double 0.047118439309431825
	.quad	0x3fe941b672cf48f4              # double 0.78927156852503665
	.quad	0x3fda34417a66330a              # double 0.40943943932579485
	.quad	0x3fb41e2b05b3eeb8              # double 0.078585327999401211
	.quad	0x3fbbdcc40e92c8f0              # double 0.10883736949725509
	.quad	0x3fdc89fa88ba5478              # double 0.44592154838875997
	.quad	0x3fecf54b5684e966              # double 0.90494315050390806
	.quad	0x3fec50866fbda562              # double 0.88482972931266723
	.quad	0x3fe84ffa1d02109f              # double 0.75976281800878442
	.quad	0x3fd905c2629aa810              # double 0.39097652081784506
	.quad	0x3fe35a08d9ba24a8              # double 0.60474054837063296
	.quad	0x3fda2e5da688d962              # double 0.40907994521275814
	.quad	0x3f6f03b1849a9e00              # double 0.0037859408519869131
	.quad	0x3feba5d004b790ca              # double 0.86399079247760224
	.quad	0x3fb067c291459590              # double 0.064083252398253743
	.quad	0x3fe92b86c15437f1              # double 0.78656327971998341
	.quad	0x3fe040769ab72fdb              # double 0.50786905496488133
	.quad	0x3febda44558d9a95              # double 0.87039391240689901
	.quad	0x3fe9a5b52d64dd9f              # double 0.80147799364106109
	.quad	0x3fea2da0d1173054              # double 0.81806984746936928
	.quad	0x3f95accd69289de0              # double 0.021167001288771803
	.quad	0x3fe32c3ae2149da3              # double 0.59914917141297896
	.quad	0x3fe54f989d47e8d1              # double 0.66596632689404534
	.quad	0x3fec0ec5be23f4a7              # double 0.87680327545935632
	.quad	0x3fb40b53293d1108              # double 0.078297803466799931
	.quad	0x3fea96549a5c343b              # double 0.83085088871451462
	.quad	0x3fe7315e52c86968              # double 0.72477642220046068
	.quad	0x3fd6ee6207bcb02e              # double 0.35829973941395366
	.quad	0x3fe75d2e848c083e              # double 0.73012472045980537
	.quad	0x3fb00d4172ec5548              # double 0.062702265317360006
	.quad	0x3fd7aec6361d062c              # double 0.37004237446317023
	.quad	0x3fe9706ed144bd71              # double 0.7949747168803879
	.quad	0x3fe0462f36b57c72              # double 0.50856743512475888
	.quad	0x3fea02e61eac81e5              # double 0.81285387030589773
	.quad	0x3fa3774979ec3630              # double 0.038019462712423624
	.quad	0x3fc627bd88d146d0              # double 0.17308777981320711
	.quad	0x3fc88d33abd6f604              # double 0.191809138208484
	.quad	0x3fd16d1d8a73ec14              # double 0.27228487511428168
	.quad	0x3fe5bd22d73398e0              # double 0.6793379023700048
	.quad	0x3fef954657ba4ee9              # double 0.98697201856927307
	.quad	0x3fcbf7967ac35ef0              # double 0.21849328035636217
	.quad	0x3fe1daba9c74ad27              # double 0.55795031125800143
	.quad	0x3fe70e2b4279402b              # double 0.72047961218959722
	.quad	0x3fd4a4d18950fb38              # double 0.32255972299383329
	.quad	0x3fe56cc22b16af05              # double 0.66952618041747824
	.quad	0x3fe4898fe6aebe1d              # double 0.64179225020592734
	.quad	0x3fa0dbf39cdf5a40              # double 0.03292809762904314
	.quad	0x3fd8816114f3b524              # double 0.38289668127147736
	.quad	0x3feb9bcfc56513fe              # double 0.86276997140578238
	.quad	0x3fde7d235c066bca              # double 0.47638782488655507
	.quad	0x3fbf651271483678              # double 0.12263598695445832
	.quad	0x3fce5be9fe7fbe94              # double 0.2371799938841731
	.quad	0x3fe531e7727a310c              # double 0.66234180792665276
	.quad	0x3fe2e212e55a1ab0              # double 0.59009690089518152
	.quad	0x3fc8398d2b866610              # double 0.18925633073085679
	.quad	0x3fe58911954c066e              # double 0.67298201713147221
	.quad	0x3fe31e07f8b321e4              # double 0.59741591047446407
	.quad	0x3fd6a54cef0b12e8              # double 0.35383914321964349
	.quad	0x3fd4ff3c831907f4              # double 0.32807839205281586
	.quad	0x3fdc2fe0f3fd5dc8              # double 0.44042228533859573
	.quad	0x3fc7be7a3bbcce58              # double 0.18550041119452731
	.quad	0x3fb0f7076b3379b8              # double 0.06626936309064646
	.quad	0x3fe24e85066a8014              # double 0.57208491566780362
	.quad	0x3fde231cddace406              # double 0.4708931126402266
	.quad	0x3fb13baaab5c2638              # double 0.067316691242148674
	.quad	0x3fed9f08d29b8a52              # double 0.92566338667195169
	.quad	0x3fed451017fa199a              # double 0.91468052561758673
	.quad	0x3fef58fdf2818916              # double 0.97961327900364625
	.quad	0x3febfa5bccbe8262              # double 0.87431135167214458
	.quad	0x3fe7482956309e28              # double 0.7275587733647102
	.quad	0x3fef12d09886479a              # double 0.97104673185298229
	.quad	0x3fd97927da484d72              # double 0.39801975552219127
	.quad	0x3fc957a1f31484cc              # double 0.19798683518550886
	.quad	0x3fde2019ae7dc132              # double 0.47070924797209834
	.quad	0x3fe63a3b5ea25ecf              # double 0.69460838778737777
	.quad	0x3fede56ccc9ffe14              # double 0.93425598111929497
	.quad	0x3fe8c87bed32a2a7              # double 0.77447315528578009
	.quad	0x3feb8b78e6f28c83              # double 0.86077542406964402
	.quad	0x3fe4b2113a532291              # double 0.64673673049499503
	.quad	0x3feab5d27dc8d2cc              # double 0.83469509665754904
	.quad	0x3fc119c0bcd01ed8              # double 0.13359841555960972
	.quad	0x3fc1fe45c87f937c              # double 0.14057228364904606
	.quad	0x3fa74700797ee710              # double 0.045463576155681307
	.quad	0x3fcb35a9188a213c              # double 0.21257508943768666
	.quad	0x3fd650a9f66b8434              # double 0.34867333473636397
	.quad	0x3fd9be43c30bb8b2              # double 0.4022378353828443
	.quad	0x3fd7c26708b6649e              # double 0.37124038554027006
	.quad	0x3febe9c423b8f922              # double 0.87228590943394502
	.quad	0x3f9670afceaea380              # double 0.021914240827445308
	.quad	0x3fdbdf2ccc80814a              # double 0.43549652071853429
	.quad	0x3fd665b139b1fe06              # double 0.34995680460266987
	.quad	0x3fe0aecb05673bed              # double 0.52133704238246781
	.quad	0x3fc25a75c63eafe8              # double 0.14338562183308956
	.quad	0x3fd5fd4f0dec886e              # double 0.34358574256669427
	.quad	0x3fb71c36945a37c0              # double 0.090274249285555719
	.quad	0x3fe14322e6dc2ad6              # double 0.53944535341119138
	.quad	0x3fdc74b29d8c6b12              # double 0.44462266336056289
	.quad	0x3fe1b175f87b14e0              # double 0.55291269809154286
	.quad	0x3fe0b52f4c563536              # double 0.52211728009721159
	.quad	0x3fe7870ff053d21c              # double 0.73523709238958501
	.quad	0x3fcb3fdd170c58d4              # double 0.21288646340753437
	.quad	0x3fe0249bd3894f78              # double 0.5044688350267128
	.quad	0x3fd4a375495bca9c              # double 0.32247669376298815
	.quad	0x3fdcde5b85f44b1e              # double 0.45107162553283497
	.quad	0x3fefef8933721856              # double 0.99799022720322728
	.quad	0x3fee26b091a7322d              # double 0.94222286651490139
	.quad	0x3fe067e228aee93b              # double 0.51268108316370531
	.quad	0x3fcb678f07dde708              # double 0.21409786113854801
	.quad	0x3faa2594664e3ce0              # double 0.051067960251310884
	.quad	0x3fe3359618d63cd1              # double 0.60029129839849749
	.quad	0x3fea983bc089b28d              # double 0.83108317952208355
	.quad	0x3fe6eaffcf49085d              # double 0.71618643269927029
	.quad	0x3fde5157e21bd15a              # double 0.47371480065273419
	.quad	0x3feca76dc2a6d5cc              # double 0.89543808000478852
	.quad	0x3fd9ab17fcbf8014              # double 0.40106773073603219
	.quad	0x3fe69f6d9bc7cedb              # double 0.70696144510153702
	.quad	0x3fdd5361ddd697c2              # double 0.45821425117389591
	.quad	0x3fcceff97e42adb4              # double 0.22607344307958288
	.quad	0x3fd44c5c0f6a2720              # double 0.31716062074029772
	.quad	0x3fa499501ba52390              # double 0.04023218476738244
	.quad	0x3fc91fc74cba287c              # double 0.19628230329937313
	.quad	0x3fd0dc4d88f560a6              # double 0.26344622015813923
	.quad	0x3fc5705c27c18e2c              # double 0.16749145451750402
	.quad	0x3fc8f20af26f24e0              # double 0.19488655889134687
	.quad	0x3fe4d1198800003c              # double 0.65052486956120203
	.quad	0x3fda3b894167341c              # double 0.4098837984755066
	.quad	0x3fe9c43b305d3039              # double 0.80520400472733578
	.quad	0x3fe62e313e4fc18e              # double 0.69313871546005301
	.quad	0x3fe8b999fcdf16ec              # double 0.77265643490747271
	.quad	0x3fcd6e86cc329530              # double 0.22993550272546193
	.quad	0x3fcd73f68ac7b290              # double 0.23010141159410979
	.quad	0x3fd42bdfcb3d4480              # double 0.31517786834326245
	.quad	0x3fe73393527ac56b              # double 0.72504583462993588
	.quad	0x3fa03d249dd3b7b0              # double 0.031716484323495719
	.quad	0x3fdc356ebe06998e              # double 0.44076126630025037
	.quad	0x3fe7a4b211e50d24              # double 0.73885444159569547
	.quad	0x3fef1b0c4eebbd8e              # double 0.97205176748495759
	.quad	0x3fe002223016e4e2              # double 0.50026044266192238
	.quad	0x3fc330d68755a1b8              # double 0.14992791755800083
	.quad	0x3fe8c178d01b0411              # double 0.77361717839824184
	.quad	0x3fe1908bb75c26dc              # double 0.54889474689954509
	.quad	0x3feb3724a0cbc501              # double 0.85048133283103777
	.quad	0x3f981ef48a7fd460              # double 0.023555584863022339
	.quad	0x3fe452670c6681b4              # double 0.63505890294987077
	.quad	0x3fd1706b9a692590              # double 0.27248659209416193
	.quad	0x3f9ea4e4343ef880              # double 0.029925885857430945
	.quad	0x3fef32f8a184de21              # double 0.97497207209284308
	.quad	0x3fa2e6a08995af40              # double 0.036915795130737283
	.quad	0x3f98577959e8d9a0              # double 0.023771186936039634
	.quad	0x3fe8be744652df55              # double 0.77324880347348801
	.quad	0x3fe6c053a39e39cb              # double 0.71097738224653406
	.quad	0x3fd47be3b5d551ae              # double 0.32006161458164228
	.quad	0x3fddd581f6060834              # double 0.4661564734052519
	.quad	0x3fdd06f0201c5eac              # double 0.45354846130201554
	.quad	0x3fe577cf194721ad              # double 0.67087511956292689
	.quad	0x3fd02ca2ce262bb6              # double 0.25272436267612919
	.quad	0x3fe6842cea1b6f2d              # double 0.70363469814353652
	.quad	0x3fec7c59d3eefb12              # double 0.89017955201402033
	.quad	0x3fef1d746d4914f3              # double 0.97234555573291314
	.quad	0x3fe8bf0353e1173d              # double 0.77331701643627293
	.quad	0x3f62e2cf9854a300              # double 0.0023054174986508746
	.quad	0x3feced28d07065ae              # double 0.90395012579681633
	.quad	0x3fe5a948da05da5f              # double 0.67691462118711943
	.quad	0x3feb5c6be0ebd36b              # double 0.85503190927430006
	.quad	0x3fc450e55eaaaea0              # double 0.15871874925993712
	.quad	0x3fee032380358c2a              # double 0.93788313904622567
	.quad	0x3fa3eebe8159b1a0              # double 0.038930848398055717
	.quad	0x3fe6ffa7ab60832b              # double 0.71870788070746039
	.quad	0x3fe281b367e2c680              # double 0.57833261766627686
	.quad	0x3fd35ca4713c2cc4              # double 0.30252944048033847
	.quad	0x3fe6e3d96c28947f              # double 0.71531363606176501
	.quad	0x3fe7841bd83241ad              # double 0.73487655855028822
	.quad	0x3fd202d35ab435e0              # double 0.28142246110732394
	.quad	0x3fcb17439b7b3a38              # double 0.2116474637209238
	.quad	0x3fe16d15f4899b95              # double 0.54456613312946678
	.quad	0x3fc028df06744020              # double 0.12624728980199595
	.quad	0x3f96207df9c1d6a0              # double 0.021608322495430543
	.quad	0x3fa3bd755ae83000              # double 0.038554828021091225
	.quad	0x3fd5e4fb57a86baa              # double 0.34210094032612892
	.quad	0x3fe02be80ee4a326              # double 0.50535967739879051
	.quad	0x3fd0dab545accf58              # double 0.26334888271525392
	.quad	0x3fe26c6d71faf1a7              # double 0.57573578130500358
	.quad	0x3fc9ee0196c4c660              # double 0.20257587301016411
	.quad	0x3f3b7b02bc4bb000              # double 4.193193129100603E-4
	.quad	0x3fe80f8714c1b8e2              # double 0.75189546636627491
	.quad	0x3fe005de7da36a86              # double 0.50071644343127342
	.quad	0x3fd1e0c35daa5778              # double 0.27934345385562365
	.quad	0x3fa4c573e779e3c0              # double 0.040568944937099172
	.quad	0x3fd9de4c3dc4ea06              # double 0.40419298202655829
	.quad	0x3fd1c7afbf3f29c6              # double 0.27781289745749083
	.quad	0x3fd0051250f45382              # double 0.25030954271033334
	.quad	0x3fdb31e56f727f3c              # double 0.42492042430420773
	.quad	0x3fd9960fe6a43750              # double 0.39978406451779325
	.quad	0x3fe0e3beaa9813f9              # double 0.52780087775374718
	.quad	0x3fd0bfda16896ef2              # double 0.26170971108307051
	.quad	0x3fdaeaacc1eb0f2c              # double 0.42057341515850299
	.quad	0x3fdb900e181f4cb4              # double 0.43066742282571657
	.quad	0x3fd617fd391af4d6              # double 0.34521418167771623
	.quad	0x3fdd4b84b92b6230              # double 0.45773428042369613
	.quad	0x3fc05272db7cd9a4              # double 0.12751613347218183
	.quad	0x3fd30ea7a8c45a7e              # double 0.29776946526673231
	.quad	0x3fcb8560fea3cb0c              # double 0.21500790055832686
	.quad	0x3fe7f2a09a5ce5d2              # double 0.74836759709358547
	.quad	0x3fe74266f1902f5c              # double 0.72685572796170161
	.quad	0x3fd082ea236bcc3c              # double 0.25799039324846595
	.quad	0x3fe3b9f50faeccec              # double 0.61644986212777786
	.quad	0x3fdab6c137579766              # double 0.41740446476466386
	.quad	0x3fc6c579b8dce2b4              # double 0.177901473298126
	.quad	0x3fb02683aad6e1d8              # double 0.063087681969484222
	.quad	0x3fe597bca0e08ea5              # double 0.67477256223033477
	.quad	0x3fa18af42de9ebd0              # double 0.0342632585570396
	.quad	0x3fecfa4eb1e2c2c0              # double 0.90555510276143281
	.quad	0x3fea5fa1ddc6c69d              # double 0.82417386356083322
	.quad	0x3fdf3b40e2689826              # double 0.48799154386722632
	.quad	0x3fee13995a949c63              # double 0.93989246074205501
	.quad	0x3fd7ba1ded90d8fe              # double 0.37073467445169672
	.quad	0x3fc04fb0cccd6c30              # double 0.12743196487540009
	.quad	0x3fe3a843e4ce213b              # double 0.61429018677248537
	.quad	0x3fd7bc0d5d6fdf70              # double 0.37085279583651864
	.quad	0x3fd4a0f1533443b0              # double 0.32232316136747396
	.quad	0x3fec0222cdca3183              # double 0.87526073640178514
	.quad	0x3fecb90dc65a8923              # double 0.89758957615803003
	.quad	0x3febfa08b35adb06              # double 0.87427172689680854
	.quad	0x3fe3d28b18fa09d0              # double 0.61945109251274211
	.quad	0x3fd95dd42128be76              # double 0.39635184515189026
	.quad	0x3fa6d013ebd8c4a0              # double 0.044556257762800699
	.quad	0x3fb2c73e519f5b78              # double 0.07335271351563033
	.quad	0x3fd2cebec54b796c              # double 0.29386872546265042
	.quad	0x3fe398ef777f7ce8              # double 0.61241887416317997
	.quad	0x3fe95346dc081b09              # double 0.7914156243794831
	.quad	0x3fb7f9c757abc218              # double 0.093655070213351954
	.quad	0x3fe8b4527434c686              # double 0.77201197334780214
	.quad	0x3fa4863ddadad640              # double 0.040086682286908815
	.quad	0x3fe48f0205540ae2              # double 0.6424570182865319
	.quad	0x3fe85b234047d231              # double 0.76112520746989365
	.quad	0x3fd3920fffd44da4              # double 0.3057899473507979
	.quad	0x3fe16413f09d0e2b              # double 0.5434665393335697
	.quad	0x3fd76cdf391aa48a              # double 0.36602001740045209
	.quad	0x3fe0dfbb4525baf7              # double 0.52731097703312357
	.quad	0x3fe3f365de6af809              # double 0.62346166077600274
	.quad	0x3fcb0800a145f268              # double 0.21118171572369993
	.quad	0x3fe57033fe07f050              # double 0.66994666686469806
	.quad	0x3fd6adcdd2bd54b2              # double 0.35435815410648808
	.quad	0x3fcba3c33f163be0              # double 0.21593514042294171
	.quad	0x3fd3c62dedec0490              # double 0.30897091135563759
	.quad	0x3fe1713f0094721a              # double 0.54507398713355149
	.quad	0x3fe30c3939bceee3              # double 0.59524213101346068
	.quad	0x3fa63d827835aba0              # double 0.043438031362561746
	.quad	0x3fc738634c39f98c              # double 0.1814083215903789
	.quad	0x3fc203867c85a044              # double 0.14073258476423878
	.quad	0x3fee04264951fd7f              # double 0.93800653763166497
	.quad	0x3fd23da0ec74c408              # double 0.28501151172082517
	.quad	0x3fe00c5930c7b850              # double 0.50150737311720128
	.quad	0x3fd4d8e52e1efdfe              # double 0.3257382345582015
	.quad	0x3fe7c6d89f649e6e              # double 0.74302321559384921
	.quad	0x3fc058c5295f69cc              # double 0.12770905037071001
	.quad	0x3fd3378f2bd88eb0              # double 0.30026606828526337
	.quad	0x3fd0a9aee6bc77c6              # double 0.26035664112884793
	.quad	0x3fdd9a11f905ff12              # double 0.46252869909948047
	.quad	0x3fd0741abb9c1522              # double 0.2570864517332031
	.quad	0x3fef5eed08cafea1              # double 0.98033763615963576
	.quad	0x3fea68cb883ae6b5              # double 0.82529236419141816
	.quad	0x3fe120e15ab5df78              # double 0.53526370732195883
	.quad	0x3fdd66216e4df9da              # double 0.45935855647976853
	.quad	0x3fbea2d508c6c328              # double 0.11967212166088059
	.quad	0x3feda5ed795f9f96              # double 0.92650483804480888
	.quad	0x3fb0b890f779bc50              # double 0.065316257876234518
	.quad	0x3fefdc762ce108e6              # double 0.99566181912839791
	.quad	0x3fce026464ad2dcc              # double 0.23444800296634438
	.quad	0x3fae77e81ee57ef0              # double 0.05950856568483498
	.quad	0x3fe3a69ec7c650cc              # double 0.61408938425531678
	.quad	0x3feb87307f0df5c0              # double 0.86025261702859979
	.quad	0x3fef49d3fbb68fb2              # double 0.97776221430512167
	.quad	0x3fec5a048c04202e              # double 0.88598849627397214
	.quad	0x3fecf6b66e9075e5              # double 0.90511628717984804
	.quad	0x3fe36f1c166abaf6              # double 0.60731319788268823
	.quad	0x3fed8cd42e3855af              # double 0.92344101931910483
	.quad	0x3fc5948aafd39aac              # double 0.16859563432008906
	.quad	0x3fe241191185d089              # double 0.5704465238800519
	.quad	0x3fddc9ca8ac370f0              # double 0.46544135619275462
	.quad	0x3fe97831101288cc              # double 0.79592183245792957
	.quad	0x3feb6f2a9044a162              # double 0.85732010056839791
	.quad	0x3fcf7d639acef62c              # double 0.24601407107358975
	.quad	0x3fd271a9b635f378              # double 0.28818743509309952
	.quad	0x3fe13a2bf7a13271              # double 0.5383510433690174
	.quad	0x3fdce4eb9e4cdf80              # double 0.45147219141971817
	.quad	0x3fefc9d2329bbe84              # double 0.99338636288116832
	.quad	0x3fd4090ed4901446              # double 0.31305285223090029
	.quad	0x3fcbef77465ad228              # double 0.21824541983882395
	.quad	0x3fd618adf10cb360              # double 0.34525631465912987
	.quad	0x3fd2c9cf927c60ea              # double 0.29356755547770652
	.quad	0x3fd42e5ffcd804c6              # double 0.31533050243167471
	.quad	0x3fe632f699f81c58              # double 0.69372110435586887
	.quad	0x3fd52ed37cf34276              # double 0.330983039876663
	.quad	0x3fc78fe0f099ea84              # double 0.18407832859141504
	.quad	0x3fe26e8f48da65c2              # double 0.57599605778812468
	.quad	0x3fe8d286df9ecb36              # double 0.7756990783294444
	.quad	0x3fe6b698ee5ded2a              # double 0.70978972011599706
	.quad	0x3fd4b5f0f41c0e74              # double 0.32360481108501138
	.quad	0x3fc1def5a5a8fc84              # double 0.1396166857611868
	.quad	0x3fef935c9c37e4fa              # double 0.98673849593538354
	.quad	0x3fdb4c4fed79638c              # double 0.42653272810780929
	.quad	0x3fa02ab5f42e9f00              # double 0.031575857217204018
	.quad	0x3fe23979ef7425b2              # double 0.56951615112591569
	.quad	0x3fd79eee5ab35ed4              # double 0.36907538278090368
	.quad	0x3fdb4880c5956f54              # double 0.42630023284231311
	.quad	0x3fefa0d235302b6f              # double 0.98838148487389598
	.quad	0x3fe0798c7237af9c              # double 0.51483747776136424
	.quad	0x3feb40febb5715d9              # double 0.85168396558645576
	.quad	0x3fe5c87b6bdc9acb              # double 0.68072291437860011
	.quad	0x3fe46776ea3d6f8c              # double 0.63762994527813666
	.quad	0x3fdc533e13809a80              # double 0.44258071808364008
	.quad	0x3fdaf96c72f84c5e              # double 0.42147361018687046
	.quad	0x3fdf86c976b3c33c              # double 0.49260174362193587
	.quad	0x3fd038e86d8c9690              # double 0.25347338388596885
	.quad	0x3fdc570113519b42              # double 0.44281031500434065
	.quad	0x3fc7482b8cddddcc              # double 0.18188995722060353
	.quad	0x3feced34ef1d3fa5              # double 0.90395590497972889
	.quad	0x3fd8e6c6415bc824              # double 0.3890853536860297
	.quad	0x3fde00f6885026a0              # double 0.46880877792191633
	.quad	0x3fe752374921a18e              # double 0.72878612788649533
	.quad	0x3fea734f658e359a              # double 0.82657594523486755
	.quad	0x3fc00e1b2e8489b4              # double 0.12543048640607213
	.quad	0x3fb67d073d526080              # double 0.087845280142916593
	.quad	0x3fe9cd8ccdaa9153              # double 0.80634155434794719
	.quad	0x3fae59cbac600870              # double 0.05927883605183204
	.quad	0x3fa2be4d7f757960              # double 0.03660814457792827
	.quad	0x3fe4ee0be0f1c49d              # double 0.65405839857534753
	.quad	0x3fe0839751157078              # double 0.51606336437863742
	.quad	0x3fed0462da0cfaa4              # double 0.90678541744258156
	.quad	0x3fe93f8679cf0623              # double 0.78900455275305992
	.quad	0x3fd25ddac42cedd2              # double 0.28697842748416946
	.quad	0x3fef132589f16d1a              # double 0.9710872358513456
	.quad	0x3fe767ee32d075b1              # double 0.73143682408015398
	.quad	0x3fe8f52eae0227d4              # double 0.7799294851877172
	.quad	0x3fcf79d92fec71ec              # double 0.24590601768512899
	.quad	0x3fbca74bb1c00938              # double 0.11192772950747532
	.quad	0x3fb81f8166e60248              # double 0.094230735418031064
	.quad	0x3fdcfbf97039004c              # double 0.45287929496044366
	.quad	0x3fd8bf780f227ad2              # double 0.38668633916851747
	.quad	0x3fe637d15307ab5e              # double 0.69431368080891409
	.quad	0x3f8ae0045a00b5c0              # double 0.013122591015497842
	.quad	0x3fa66c5903025370              # double 0.04379537736637118
	.quad	0x3fd1a52882d3470e              # double 0.27570545936497204
	.quad	0x3fd29231f67e5fdc              # double 0.29017304488797691
	.quad	0x3fe793bc0e794ff5              # double 0.73678400828293766
	.quad	0x3fe4506a7a1441d6              # double 0.63481639712886806
	.quad	0x3fcaa0a72dd1db98              # double 0.208027741787842
	.quad	0x3fd457e1feec53c4              # double 0.31786394018973518
	.quad	0x3fe570c025eac9a7              # double 0.67001349836055091
	.quad	0x3fdc7ff5d94ef7b8              # double 0.44531007977991122
	.quad	0x3fd495f948e8efc8              # double 0.32165367241009024
	.quad	0x3fd39157ce1a9a10              # double 0.30574603202185902
	.quad	0x3fea3133ff8892a8              # double 0.81850623997577987
	.quad	0x3fd52ee12631a148              # double 0.33098629693860859
	.quad	0x3fe832456a6ca6be              # double 0.75613661561984435
	.quad	0x3fea41b6f5888247              # double 0.82052181201658747
	.quad	0x3fc0d464605b2fc8              # double 0.1314816923608062
	.quad	0x3fe9f2978e876431              # double 0.81086328351660175
	.quad	0x3fd765ec5ea6edfe              # double 0.36559590571752654
	.quad	0x3fe9a8882ef47cd3              # double 0.80182274981407387
	.quad	0x3fee0514c1ecd316              # double 0.93812024951930328
	.quad	0x3fe06099242150a6              # double 0.51179177338282922
	.quad	0x3fed8d78379f1458              # double 0.92351923812442305
	.quad	0x3fc7c3c395677c40              # double 0.18566174311760797
	.quad	0x3fe3e1b6a3e90671              # double 0.62130290998193349
	.quad	0x3fe1014a0857713f              # double 0.53140737179959519
	.quad	0x3f8b61c99a2499c0              # double 0.013370108620233689
	.quad	0x3feff02f7b9ad9b3              # double 0.99806951657847375
	.quad	0x3f8c77918debb600              # double 0.013899933951928567
	.quad	0x3fe4a7cef4099c61              # double 0.64548442519743443
	.quad	0x3fe02b9b6a883ed3              # double 0.50532313162872311
	.quad	0x3fe2ac7e543ff1f4              # double 0.58355633215938818
	.quad	0x3f910b053bf52000              # double 0.01664360216571481
	.quad	0x3f973bf4b0646360              # double 0.022689650789377125
	.quad	0x3fb1a665e558e718              # double 0.068945282452571255
	.quad	0x3fa131d35f27fc30              # double 0.033583264699693749
	.quad	0x3fe3dc78a1653d00              # double 0.62066298983145884
	.quad	0x3fe68e1384dfa762              # double 0.70484329177746141
	.quad	0x3fdfdb2640161d06              # double 0.49775081880984862
	.quad	0x3fcf5d933924dc40              # double 0.24504318514093093
	.quad	0x3fb2a2867d0aed10              # double 0.072792439964292521
	.quad	0x3fe3a38549baf22a              # double 0.61371101761284774
	.quad	0x3fd51b82fe013618              # double 0.32980418019437385
	.quad	0x3fe87b59efa55e5b              # double 0.76505753331998549
	.quad	0x3fd5b2059fdd5a0e              # double 0.33899059879095794
	.quad	0x3fe886ebf7308072              # double 0.7664699390334262
	.quad	0x3febe73dd3452d51              # double 0.87197772277560592
	.quad	0x3fe5533ce1fbd426              # double 0.66641086709444575
	.quad	0x3fcc0437b5b29218              # double 0.21887871143293647
	.quad	0x3fd022a44d07cc8c              # double 0.25211436769968354
	.quad	0x3f93c94b9ec12f40              # double 0.019322568478215674
	.quad	0x3fe9975b5f63b4f0              # double 0.79972618704564802
	.quad	0x3fe131710747716e              # double 0.53728534146970985
	.quad	0x3fcbb4bc975fa9c8              # double 0.21645314589780029
	.quad	0x3fecfba435100043              # double 0.90571794856806098
	.quad	0x3fead114611913cb              # double 0.83802241291470503
	.quad	0x3fd9e1b05cf27734              # double 0.40439995838993359
	.quad	0x3f964495f42321a0              # double 0.02174600889773759
	.quad	0x3fef32cfb069e5b1              # double 0.97495254951279808
	.quad	0x3fb2c2fd541a89f8              # double 0.073287804635164266
	.quad	0x3fee023df58c299e              # double 0.93777368505952885
	.quad	0x3fe7f24f5b1b2413              # double 0.74832885545868277
	.quad	0x3fd7906d548343a4              # double 0.36819012883375479
	.quad	0x3fde3517bf1d1b38              # double 0.47199052489706927
	.quad	0x3fd89af3acf0c7bc              # double 0.38445751084065782
	.quad	0x3fdbdeff4b5ebc80              # double 0.43548567161901275
	.quad	0x3fee1bbb26545e96              # double 0.94088513838046839
	.quad	0x3fcfece9c442aa0c              # double 0.2494175155928392
	.quad	0x3fb1d9aed6805ce0              # double 0.06972782837725644
	.quad	0x3fd7e4629282b91c              # double 0.37331451709441565
	.quad	0x3fd38e052d19c266              # double 0.3055432262836234
	.quad	0x3fdf952f0f190c80              # double 0.4934804580154335
	.quad	0x3fa7cbfd8c201cf0              # double 0.046478198390156211
	.quad	0x3fe97aa176f1bdc8              # double 0.796219570458498
	.quad	0x3fe294023035b691              # double 0.58056744972209817
	.quad	0x3fe3db51f4f90827              # double 0.62052247854467601
	.quad	0x3fe42334fa84056e              # double 0.6292977230915946
	.quad	0x3fb627e18527e068              # double 0.086546034821255113
	.quad	0x3fd10dd147e533e0              # double 0.26646835347201936
	.quad	0x3fed5059999263a5              # double 0.91605834955690979
	.quad	0x3fef36e1fa685563              # double 0.97544955165600943
	.quad	0x3fe4be0cd909b592              # double 0.64819948568553998
	.quad	0x3f94c06aaf3954a0              # double 0.020265261597462669
	.quad	0x3fe06897b7f53097              # double 0.5127676575589416
	.quad	0x3fba8396ef25ae48              # double 0.10357039774469812
	.quad	0x3fe3644417661b51              # double 0.6059894997605203
	.quad	0x3fe2b0096dbc8daf              # double 0.58398887093465202
	.quad	0x3fad62ac522ac100              # double 0.057393441229011799
	.quad	0x3fca8af3d965cd78              # double 0.20736549487228806
	.quad	0x3fd551715d62670c              # double 0.33309587592667422
	.quad	0x3fe9c03fb30aac15              # double 0.80471787423209895
	.quad	0x3fe3d9d8fb91328f              # double 0.62034272321905515
	.quad	0x3fe2730a6951fc52              # double 0.57654305048334664
	.quad	0x3fea2dc867b008e3              # double 0.81808872462741211
	.quad	0x3fe08b8390413053              # double 0.5170305078004368
	.quad	0x3fe102fd266225c8              # double 0.53161485192065872
	.quad	0x3fcfb338b7352984              # double 0.24765690751730685
	.quad	0x3f9d941e60034e60              # double 0.028885340318835495
	.quad	0x3fed9f52aadbaddb              # double 0.92569859858252401
	.quad	0x3fe3b4bcdb210ea2              # double 0.61581270979555236
	.quad	0x3fd0458808e94784              # double 0.25424385900725377
	.quad	0x3fce9f2e6b8bbd28              # double 0.23923282862913564
	.quad	0x3fdd4f9536339b9c              # double 0.45798235219120342
	.quad	0x3fc988d310395240              # double 0.19948805133994263
	.quad	0x3fbb9b953fa507f8              # double 0.10784275821518452
	.quad	0x3fd2d250888ddf86              # double 0.29408658347482974
	.quad	0x3fb9bf65d12b15b8              # double 0.10057674748084977
	.quad	0x3fe81d7ed1e9563f              # double 0.75360051153501917
	.quad	0x3fe6bce38e0f1a7e              # double 0.71055772539041562
	.quad	0x3fe7ea2f4de0b75f              # double 0.74733700953013826
	.quad	0x3feb04bad9e62bf4              # double 0.84432737883014263
	.quad	0x3fcb72eaa6469308              # double 0.21444447630815255
	.quad	0x3fc3806cceb2e6b4              # double 0.15235672085491603
	.quad	0x3fb6949de6e66c30              # double 0.088205212471095917
	.quad	0x3fe38b2712b5e9ba              # double 0.61073640493787384
	.quad	0x3fe116cd2c54dc5c              # double 0.53403338106626164
	.quad	0x3fe7347223f2be6e              # double 0.72515208264480946
	.quad	0x3fd11dbb5fed4be2              # double 0.26743969314446592
	.quad	0x3fe8553237223f4a              # double 0.76039992111507471
	.quad	0x3f5f4b98a4187600              # double 0.0019101133951900939
	.quad	0x3fcd9a484af1115c              # double 0.23127082499753271
	.quad	0x3fd7e1851c3fb650              # double 0.37313964613608608
	.quad	0x3fdceefabed49fa8              # double 0.45208614955708493
	.quad	0x3fcf24da04ed468c              # double 0.24331212273186897
	.quad	0x3fbfe7b611e9e978              # double 0.12462938248964928
	.quad	0x3fdfcbf8ac833d3a              # double 0.49682442519129533
	.quad	0x3fefa5eff5acafb8              # double 0.98900602324783104
	.quad	0x3fdb1007ef94330a              # double 0.42285345455529522
	.quad	0x3fe19bc3e4ad6799              # double 0.55026430762812872
	.quad	0x3feba1064077c1f9              # double 0.86340630141609076
	.quad	0x3fc2194214056058              # double 0.14139581658924061
	.quad	0x3fefd3d8d128c56c              # double 0.99461022235315743
	.quad	0x3fed669a7b63470a              # double 0.91877483462505549
	.quad	0x3fed965de87d8241              # double 0.92460532577758425
	.quad	0x3fc41345d2dcbf78              # double 0.15683815761576247
	.quad	0x3fdf27542b07443c              # double 0.48677543832770076
	.quad	0x3fe19a7aaedc96d8              # double 0.55010732796355466
	.quad	0x3fd4f38badd24768              # double 0.32736484503504082
	.quad	0x3fed3b04fddfe1b1              # double 0.91345452866430865
	.quad	0x3fe2460fae8535c3              # double 0.57105239950185938
	.quad	0x3feb81bd2da35896              # double 0.85958727754293096
	.quad	0x3fe19fd1041930ad              # double 0.55075884628742744
	.quad	0x3fd9da9e5029b3ea              # double 0.40396840885551788
	.quad	0x3fea7ee22e3776c4              # double 0.82798871065798396
	.quad	0x3fe1bd76adb7d34c              # double 0.55437787942228445
	.quad	0x3fb792a031634328              # double 0.092081081445269164
	.quad	0x3fb4e9fc70e31e58              # double 0.081695344505641088
	.quad	0x3fe5b88f115608e5              # double 0.67877915750457574
	.quad	0x3fe5527636ae4852              # double 0.66631613426057812
	.quad	0x3fed9a14245721ee              # double 0.92505843255736209
	.quad	0x3fd8e1982e9e3330              # double 0.38876919319663994
	.quad	0x3feecaa36f8a36e5              # double 0.96223613534104102
	.quad	0x3fd5c1d9a8799bc8              # double 0.33995667889251679
	.quad	0x3fa0eb2004abaaa0              # double 0.033043861932886331
	.quad	0x3fcdae3463b450a4              # double 0.23187880390526516
	.quad	0x3fde1fec75d5480a              # double 0.47069846636907242
	.quad	0x3fd850c1b04b3d38              # double 0.37992899147225812
	.quad	0x3fef2bf9d1675790              # double 0.97411814593464108
	.quad	0x3fec7e715ac539af              # double 0.8904349110469435
	.quad	0x3fe2c0301d5513cd              # double 0.58596044281932225
	.quad	0x3fe50d4a6fda76a3              # double 0.65787240835534921
	.quad	0x3fd4d0583783737a              # double 0.32521634503591879
	.quad	0x3fe2a6c187a6fe24              # double 0.58285595411866042
	.quad	0x3fe742121815a2f2              # double 0.72681526855475753
	.quad	0x3fe76377b30fd634              # double 0.73089203808803527
	.quad	0x3fdb0433767e458a              # double 0.42213141032797152
	.quad	0x3fec56885894d047              # double 0.88556306172405008
	.quad	0x3fd5bf25e4e1ff9c              # double 0.33979174949490143
	.quad	0x3fcc4ecb52126000              # double 0.2211546087971783
	.quad	0x3fcfd0cd5e158020              # double 0.24855963796562808
	.quad	0x3feaa6d6755c787c              # double 0.8328659336291504
	.quad	0x3fe93c12cf39eb3e              # double 0.78858318780780912
	.quad	0x3fd6f4bf10eeafb6              # double 0.35868813184310555
	.quad	0x3fd44420e5b20712              # double 0.31665823394006154
	.quad	0x3fe01d13b14082e1              # double 0.50354942912607836
	.quad	0x3fdf9efc31306166              # double 0.49407868198024685
	.quad	0x3fd9b79b0347a1c2              # double 0.40183139152807368
	.quad	0x3fd96c3b5cac72f8              # double 0.39723094988021002
	.quad	0x3fcbf992fd6a5dd4              # double 0.21855389951518467
	.quad	0x3fe29b34f2398be1              # double 0.58144614514855786
	.quad	0x3fd49b7b92617c7a              # double 0.32198991103172825
	.quad	0x3fa6e2e43bb9aae0              # double 0.044699795046502677
	.quad	0x3fd119281735294c              # double 0.26716043726323302
	.quad	0x3fe7464b3a378959              # double 0.72733079309936521
	.quad	0x3fa7a4b9b050bc10              # double 0.046178629658577219
	.quad	0x3fa03cec8a6538c0              # double 0.031714813131303199
	.quad	0x3fdda0d7f39bc7ce              # double 0.46294211187261858
	.quad	0x3fe21c259cd80734              # double 0.56593590386930837
	.quad	0x3fdfcf993584dd22              # double 0.49704580522980468
	.quad	0x3fe88a54028e104d              # double 0.76688576220522864
	.quad	0x3fe8f53c2b9de5d8              # double 0.7799359180345915
	.quad	0x3fd14ec5a928e798              # double 0.27043286818990842
	.quad	0x3fdeeffae7e509cc              # double 0.4833972229572765
	.quad	0x3fe22e75c512e98b              # double 0.56817139140120909
	.quad	0x3fb271da1d9f90a0              # double 0.07204974387383567
	.quad	0x3fe66ffe4bcf29b8              # double 0.70117106253137873
	.quad	0x3fe7808b1a3624fc              # double 0.73444132918771698
	.quad	0x3fe535cb3c8059b2              # double 0.66281663719819606
	.quad	0x3fd19aa3bc3d9c48              # double 0.27506345160367518
	.quad	0x3fc226e0cf948474              # double 0.14181146751164742
	.quad	0x3fe41e24124c26f2              # double 0.62867930959438767
	.quad	0x3fcf51251870c8a8              # double 0.24466384595286184
	.quad	0x3fd0f249b04d7a2e              # double 0.26478807656340819
	.quad	0x3fc2ac0d8d9b958c              # double 0.14587563909951162
	.quad	0x3febf6059e211eab              # double 0.87378197559970283
	.quad	0x3fe77a9f167cc2a9              # double 0.7337184371190989
	.quad	0x3fdb013eb7b62320              # double 0.42195098820279675
	.quad	0x3feeb3ad6e08bb27              # double 0.9594332837203624
	.quad	0x3fec1c0408cccdeb              # double 0.8784198924899419
	.quad	0x3fc61bd8d6dff758              # double 0.17272482387482557
	.quad	0x3fc652465c71a044              # double 0.17438582910404155
	.quad	0x3fe38a5170b35729              # double 0.61063453685594482
	.quad	0x3fec21880a0468b7              # double 0.87909318882454712
	.quad	0x3fd504e0c1ebbd90              # double 0.32842272698959452
	.quad	0x3fde8a044b18c78a              # double 0.47717387517615661
	.quad	0x3f820ed7bdbcb700              # double 0.0088173727777660638
	.quad	0x3fdb3adab65b99f8              # double 0.42546718414669682
	.quad	0x3fd89897585a72c0              # double 0.38431342724087969
	.quad	0x3fe9d3ea9f1e32c8              # double 0.80711871221282028
	.quad	0x3fe0e1ba16237daa              # double 0.52755455326034917
	.quad	0x3fe7f4b0763cba9e              # double 0.7486192998238328
	.quad	0x3fe95b02ddc93017              # double 0.79235976522022866
	.quad	0x3fc082090c7bb514              # double 0.12896836385281374
	.quad	0x3fccaced494aac98              # double 0.22402731016822908
	.quad	0x3fc54337ee69f1d0              # double 0.16611384526539874
	.quad	0x3f8f13bd3d300680              # double 0.015174368314549769
	.quad	0x3fd255d5daf2cec2              # double 0.28648897535024898
	.quad	0x3fd1ec2a3ebdc0bc              # double 0.28003936888763881
	.quad	0x3fca09a108317ab8              # double 0.20341885471403542
	.quad	0x3fe290ded109c24f              # double 0.58018437221296348
	.quad	0x3fe37f9fc37d8eb1              # double 0.60932911092500863
	.quad	0x3feeeff7bcdae666              # double 0.9667929352355713
	.quad	0x3fe3b12401692626              # double 0.61537361407790026
	.quad	0x3fe4da342691a4e8              # double 0.651636195497443
	.quad	0x3fc4086e3d04e578              # double 0.15650728206109554
	.quad	0x3f9e709f5c0f4000              # double 0.029726495736952074
	.quad	0x3fee11866ba9776e              # double 0.93963929202776142
	.quad	0x3fd8719a6f5082c2              # double 0.38193379278713391
	.quad	0x3fcf6d8ca74fe224              # double 0.24553068322690408
	.quad	0x3fe00e653e7c8f36              # double 0.50175726131826681
	.quad	0x3fe20a536a81b7a4              # double 0.56376047899333459
	.quad	0x3fec63e26e2024b6              # double 0.88719293126009435
	.quad	0x3fe5e034755768d5              # double 0.68361876409769684
	.quad	0x3f85ae3025b66ec0              # double 0.010586143637559942
	.quad	0x3f91aa6511c87000              # double 0.017251567087541275
	.quad	0x3fe8455882aea262              # double 0.7584650566469231
	.quad	0x3fc81eea3bdac5b0              # double 0.18844345018946518
	.quad	0x3fe00485ef3b1561              # double 0.50055214619412081
	.quad	0x3fe3d2b42a50f327              # double 0.61947067513356024
	.quad	0x3fdc3699a03701a2              # double 0.44083252569182652
	.quad	0x3fdd149c9502069e              # double 0.45438303519777345
	.quad	0x3fe942c2a20c96f6              # double 0.78939944887380764
	.quad	0x3fd3a260711ae620              # double 0.3067856888334024
	.quad	0x3fe13831ffd9ca56              # double 0.53810977907989854
	.quad	0x3fe69dbd281bbad2              # double 0.70675523599296697
	.quad	0x3fe4a2cd8a048a63              # double 0.64487339932049925
	.quad	0x3fd022192645eda8              # double 0.25208119142163321
	.quad	0x3fd8abeefdd32152              # double 0.38549399173327459
	.quad	0x3fd7611232a0ba4c              # double 0.36529974884152661
	.quad	0x3fe686817e7423f9              # double 0.70391916940673049
	.quad	0x3fe719a5625b8314              # double 0.72188061914866575
	.quad	0x3fec6fe75486915c              # double 0.88866011151234713
	.quad	0x3fdb9854c2c01cc2              # double 0.43117255228612461
	.quad	0x3fe38f168505e3d5              # double 0.61121679287964048
	.quad	0x3fe88d7fcddcf7cf              # double 0.76727285583160121
	.quad	0x3feaafe79c3e2d6e              # double 0.83397274509608876
	.quad	0x3fc5bad373fbd3e4              # double 0.16976397670046517
	.quad	0x3fee397f8a18af9f              # double 0.94451882335623683
	.quad	0x3fb36feaf75702d0              # double 0.075926480661119954
	.quad	0x3fe5c178747e0297              # double 0.67986700775516595
	.quad	0x3fedd54932a3770a              # double 0.93228587999667067
	.quad	0x3fd160352fee2792              # double 0.27149705582325467
	.quad	0x3fcc4b2831924324              # double 0.22104360981440963
	.quad	0x3fda65bf4c63c752              # double 0.41246015987336648
	.quad	0x3fe97eb1d9f3fe94              # double 0.79671566552129258
	.quad	0x3fcef0fdc90bec00              # double 0.24172947231986086
	.quad	0x3fc3ce2a1e9c71fc              # double 0.15472914213832201
	.quad	0x3fed35fa6aa0e854              # double 0.91283913446319298
	.quad	0x3fe6845751f7ade2              # double 0.70365491875912434
	.quad	0x3fe0e5ccd76a7dd2              # double 0.52805177758630806
	.quad	0x3fd0a5b7be41af5a              # double 0.26011460857147528
	.quad	0x3fd0d6c766589fc0              # double 0.26310906405205614
	.quad	0x3feeac49dc32cbe9              # double 0.95853131301407501
	.quad	0x3fcab0962d527eac              # double 0.20851399624824773
	.quad	0x3fe0f59acee71b1c              # double 0.52998104487128073
	.quad	0x3fcfcd22df03bdf0              # double 0.24844776048074335
	.quad	0x3fed062ce0e6d1ad              # double 0.90700382162190396
	.quad	0x3fc7de39c09dd89c              # double 0.186469286967342
	.quad	0x3fe44b0cadc448be              # double 0.6341613191491644
	.quad	0x3fe57f722030be70              # double 0.67180734908283846
	.quad	0x3fe2c5b3ae7ddfd3              # double 0.58663353042993049
	.quad	0x3fee2b1dce257ab4              # double 0.94276323569268649
	.quad	0x3fdcc81eb3c87a18              # double 0.44971435124344472
	.quad	0x3fac7fe2465a9530              # double 0.055663176620593169
	.quad	0x3fbd57dd6dd4b920              # double 0.11462196284694359
	.quad	0x3fe8d7d6da6b3f87              # double 0.77634756717633102
	.quad	0x3fa4bee89e1831a0              # double 0.040519017504354382
	.quad	0x3fdb54e4b248321c              # double 0.42705647859910001
	.quad	0x3fd2ce55d9c8329e              # double 0.2938437105920374
	.quad	0x3fcbbadb4acef3a8              # double 0.21663991120103998
	.quad	0x3fe12f1fd7aa86ba              # double 0.53700248834885334
	.quad	0x3fbb9d28b89baac0              # double 0.10786680705102025
	.quad	0x3fea6ce22ec148a2              # double 0.82579144603575494
	.quad	0x3feaba027b64ef30              # double 0.83520626163906364
	.quad	0x3fe7142cbc745548              # double 0.72121273810868392
	.quad	0x3fea0d8d1fe71af6              # double 0.81415420752531875
	.quad	0x3fdc54fccadc58de              # double 0.44268722353571188
	.quad	0x3feda6d73d2c529d              # double 0.92661630580785792
	.quad	0x3fcee891de17a52c              # double 0.24147246689180102
	.quad	0x3fcc243446eae64c              # double 0.21985486471912663
	.quad	0x3fd618b1cef1bfdc              # double 0.34525723657043073
	.quad	0x3fe1f49724986d4c              # double 0.56110722682516601
	.quad	0x3fe60b0f98763c64              # double 0.68885020997721513
	.quad	0x3fddc9bec203afec              # double 0.46543854662627271
	.quad	0x3fb8549c263c4af0              # double 0.095041045508235333
	.quad	0x3fe2ba304186a2f2              # double 0.58522808836013795
	.quad	0x3feb03b1b5f444e3              # double 0.8442009500305655
	.quad	0x3fe2c00f04664cb6              # double 0.58594466075228158
	.quad	0x3fcf49bc58868a48              # double 0.24443773577248096
	.quad	0x3fec1b22cbcec935              # double 0.87831249052241012
	.quad	0x3fdfc1497ab0d0b4              # double 0.49617230397712864
	.quad	0x3fab686212e11bf0              # double 0.053530754856687568
	.quad	0x3fe24a2d2a97b331              # double 0.57155474013197793
	.quad	0x3fc13809806f0c3c              # double 0.13452261706524549
	.quad	0x3fd632a68034194c              # double 0.3468414546954548
	.quad	0x3fe336b978896c45              # double 0.60043023626656888
	.quad	0x3fe30eecdc9fcb8f              # double 0.59557192888893151
	.quad	0x3fbade76328476e0              # double 0.10495699628196631
	.quad	0x3fe001d8595b77b2              # double 0.50022523357960424
	.quad	0x3fe620a07c2e2280              # double 0.6914827752489856
	.quad	0x3fd4240e74742b94              # double 0.3147007119411509
	.quad	0x3feca7f05ec6d489              # double 0.895500359640793
	.quad	0x3fe8e735587d0c3b              # double 0.77822367937950021
	.quad	0x3fecdb6415a732de              # double 0.9017811224853991
	.quad	0x3fe3954d0a1323ca              # double 0.61197521178939351
	.quad	0x3fe55f56c4d61f2c              # double 0.66788805431949561
	.quad	0x3fef3156d5543c64              # double 0.97477285066441909
	.quad	0x3fd25cf5bdbca7c0              # double 0.28692382363317037
	.quad	0x3fd33f86729fc1c8              # double 0.30075226968531554
	.quad	0x3fd31f27558e1f8e              # double 0.29877646784779521
	.quad	0x3fec83282780098d              # double 0.89101035799858297
	.quad	0x3fe3e5b3b67e0941              # double 0.62178979533226919
	.quad	0x3febf4e9fc65e2ce              # double 0.87364672943575683
	.quad	0x3fb6bca1e2aeb1b8              # double 0.088815801470167766
	.quad	0x3fe32439cf2780b3              # double 0.59817209682298367
	.quad	0x3feb11fab004821c              # double 0.8459447324603988
	.quad	0x3fc09e6100bd29a0              # double 0.12983334098892119
	.quad	0x3fef9c956eeeb091              # double 0.98786422411423491
	.quad	0x3feeacb935757bc4              # double 0.95858440819926515
	.quad	0x3fe6009d8fe3a2ca              # double 0.68757513144836335
	.quad	0x3feff987c628b2ca              # double 0.99921024992871676
	.quad	0x3fef0ff1a3b13de5              # double 0.97069627734338992
	.quad	0x3fc7fd2072daf64c              # double 0.18741231544656711
	.quad	0x3fe1a2980030316b              # double 0.55109787022369738
	.quad	0x3fe82927bae9a4ee              # double 0.75502382761365339
	.quad	0x3fd2f8ccb56286bc              # double 0.29643552506795934
	.quad	0x3fe2d13bcab105dd              # double 0.58804120624716527
	.quad	0x3fde3642fb72bf70              # double 0.47206186824313701
	.quad	0x3fef47f7c7d4a10e              # double 0.97753514317904133
	.quad	0x3fd1b3c162f36d1e              # double 0.27659639990970841
	.quad	0x3fdd0d6bffc07622              # double 0.45394420600664109
	.quad	0x3fdd3dbbf7284f1e              # double 0.4568929589888614
	.quad	0x3fba8f6a46818e48              # double 0.10375084134425905
	.quad	0x3fd047942991643c              # double 0.25436882075661393
	.quad	0x3fe71a36fc0b0e93              # double 0.72195004679857033
	.quad	0x3fc7c52b718a6f9c              # double 0.18570464176161472
	.quad	0x3fe01ee9acc7338d              # double 0.50377353425720772
	.quad	0x3fe997ececf88dca              # double 0.79979559214955853
	.quad	0x3fea7dcf83ae7fb1              # double 0.82785773963040843
	.quad	0x3fe54a8064b1d3cc              # double 0.66534442583962905
	.quad	0x3fb6fb271bcab628              # double 0.089769787106626198
	.quad	0x3fd96b2999d89026              # double 0.39716568016069898
	.quad	0x3fea8a855979b54f              # double 0.82940928912800327
	.quad	0x3fe1ef03815ed7c4              # double 0.5604264761702713
	.quad	0x3faf6bd5101e01e0              # double 0.06136956998580323
	.quad	0x3fccef43f603f624              # double 0.22605180275415748
	.quad	0x3fdeff024df263b6              # double 0.4843145142745543
	.quad	0x3fefe2815abb9a1e              # double 0.99639957162145598
	.quad	0x3feb579e14f8b814              # double 0.85444549652106838
	.quad	0x3fe30bcec8b25df8              # double 0.5951913757189109
	.quad	0x3fa33b0f3b865750              # double 0.037559963241774796
	.quad	0x3fd16e4b7c819400              # double 0.27235686453633434
	.quad	0x3fc99a87f7f79ce8              # double 0.20002841575408259
	.quad	0x3fe8d010fa9d8ab7              # double 0.77539872120208642
	.quad	0x3fdb9d53134d7f34              # double 0.43147732625037638
	.quad	0x3fe8642279ab9d5f              # double 0.76222347034210347
	.quad	0x3fbc6171474bb738              # double 0.11086185446376084
	.quad	0x3fee0947e357a37e              # double 0.93863291170883634
	.quad	0x3feed01275a01c65              # double 0.96289942716329035
	.quad	0x3feb0e986a554b5c              # double 0.84553166168403093
	.quad	0x3fe4292d3d307a66              # double 0.63002645445869798
	.quad	0x3fcae2d1b0e9fb00              # double 0.21004696977976067
	.quad	0x3fecb4da8e8e9406              # double 0.89707687228349253
	.quad	0x3fc9706ab04b64a8              # double 0.19874318702821836
	.quad	0x3fe458f6eefa68d7              # double 0.63585993457243262
	.quad	0x3fe65afc7c253171              # double 0.69860672232748133
	.quad	0x3fb7ad9be60fa660              # double 0.092492812793034229
	.quad	0x3febdaec065d8f00              # double 0.8704738735509352
	.quad	0x3fd5e2904d11cbce              # double 0.34195334936447075
	.quad	0x3fc4b6c9bf4f1adc              # double 0.16182824937114659
	.quad	0x3fe0ce1da814dae5              # double 0.52516062572871347
	.quad	0x3feec5455740caf8              # double 0.961580915847974
	.quad	0x3fe3eca4d36ee8c5              # double 0.62263718886904285
	.quad	0x3fa79260e2d5c760              # double 0.046038654031589799
	.quad	0x3fc7196473e269fc              # double 0.18046241434497279
	.quad	0x3fe767803075b4f9              # double 0.73138436760714776
	.quad	0x3fdf965c8808ac70              # double 0.49355233463820181
	.quad	0x3fd11cf902c29ff0              # double 0.26739335317188218
	.quad	0x3fc6afa1164d7dc8              # double 0.17723477925299691
	.quad	0x3fb099509a48ff18              # double 0.064839399020453548
	.quad	0x3fe6a99e39e85f2e              # double 0.70820533094499694
	.quad	0x3fc5564bb2d7f4b4              # double 0.16669603569599689
	.quad	0x3fe521950ece502a              # double 0.66034939662723002
	.quad	0x3fefa61e134c02a5              # double 0.98902801293305186
	.quad	0x3fe69b591e5c2f8b              # double 0.70646339349467391
	.quad	0x3fc55a0b5a56e91c              # double 0.16681043540104035
	.quad	0x3fd8097b4d58ecec              # double 0.37557871392682673
	.quad	0x3fc0fcfa9e10d7b8              # double 0.13272030561500769
	.quad	0x3fe75eee1a606d06              # double 0.73033814574901679
	.quad	0x3fefd2212059d45e              # double 0.99440056150946154
	.quad	0x3feac09870e8f6ff              # double 0.83601018955934581
	.quad	0x3fd6110ef740803a              # double 0.3447911657876862
	.quad	0x3fdb43d61a077bb8              # double 0.42601540128628868
	.quad	0x3feedfb37eb141c8              # double 0.96480726952182127
	.quad	0x3fca4da84331e1ac              # double 0.20549491196630976
	.quad	0x3fc780ef12190638              # double 0.18362224944762473
	.quad	0x3fd3042be5abcb52              # double 0.29712960652175469
	.quad	0x3fdf3b66ab339906              # double 0.48800055235769013
	.quad	0x3fedb749f1d86775              # double 0.92862412677207706
	.quad	0x3fea15f01e58a03c              # double 0.81517797400466163
	.quad	0x3fc7a696b063cd30              # double 0.18477138150010708
	.quad	0x3fe21c404146c7b0              # double 0.56594860791505219
	.quad	0x3fb1ff30a84f31d8              # double 0.070300141421462015
	.quad	0x3fe0fbee3c64b70b              # double 0.53075324817265945
	.quad	0x3fc3a0ada39dfa40              # double 0.15334101189724159
	.quad	0x3fee475a100bd460              # double 0.94620993742013226
	.quad	0x3fea2af32d5629f6              # double 0.81774290900040003
	.quad	0x3fca9b3db68e82b0              # double 0.20786258138561697
	.quad	0x3fd3d3481c8b7090              # double 0.30977061069075607
	.quad	0x3fe61f4d71e456d6              # double 0.69132110828896987
	.quad	0x3fe2d079867d6817              # double 0.58794857280304569
	.quad	0x3fe98865b4d69301              # double 0.79790005989033841
	.quad	0x3fd512a2b84b5e40              # double 0.32926242825985597
	.quad	0x3fd26cdf511d3e26              # double 0.28789503976165276
	.quad	0x3fef3d1701d97494              # double 0.97620725976197997
	.quad	0x3fb81c22db252a98              # double 0.094179323675385951
	.quad	0x3fd93c80a209c9d4              # double 0.39431777786299205
	.quad	0x3fcd79d2bd96bb24              # double 0.23028024918809209
	.quad	0x3fec40aa6aa5653d              # double 0.88289376096069072
	.quad	0x3fe3547c23a537f4              # double 0.6040631004523207
	.quad	0x3fedaab37db4222a              # double 0.92708754111760538
	.quad	0x3fe1f0d4c4fe7f5f              # double 0.56064833140770165
	.quad	0x3fe69fd45dc6a21a              # double 0.70701044383628475
	.quad	0x3fd2934c898c3ca8              # double 0.29024041588213345
	.quad	0x3fe01332a068993a              # double 0.50234347657968859
	.quad	0x3fcf6dba2736d7a8              # double 0.24553610720402941
	.quad	0x3fe34662cdbfe2e0              # double 0.60234203515491558
	.quad	0x3fed2879c0d99920              # double 0.9111908690072461
	.quad	0x3fe052fcc6cd367a              # double 0.51013029888572636
	.quad	0x3fecefd0be5e190f              # double 0.90427434140363683
	.quad	0x3feb31303b67bbbe              # double 0.84975444414691714
	.quad	0x3fd76f339b6f18b2              # double 0.36616220645044983
	.quad	0x3fb7d70a6e7a3048              # double 0.093125011417385939
	.quad	0x3fdca883213ed764              # double 0.44778517004612284
	.quad	0x3fee93bb0e4ade39              # double 0.95553353110785288
	.quad	0x3feacd3e23177e60              # double 0.83755404332982763
	.quad	0x3fdcce754eb74a8e              # double 0.45010121047122531
	.quad	0x3fd62b172a646b20              # double 0.34638003482693769
	.quad	0x3fd3c8e96536260e              # double 0.30913767703950235
	.quad	0x3fe81b41aaea2092              # double 0.75332721120595836
	.quad	0x3fe881c4c5b9fdc3              # double 0.76584089868986671
	.quad	0x3fabb949032639c0              # double 0.054147988924444501
	.quad	0x3fe4a059357aa5b5              # double 0.64457378811964949
	.quad	0x3fe153d87269c3f0              # double 0.54148504587476332
	.quad	0x3fe27fd446ae16db              # double 0.57810415081686573
	.quad	0x3fef4e836555b052              # double 0.9783341387933524
	.quad	0x3fee57381a0b03bf              # double 0.94814686857727526
	.quad	0x3fedab45266e32fd              # double 0.9271569967837362
	.quad	0x3fe7dd0ad1573480              # double 0.74573269736141867
	.quad	0x3fe574d845c5a1b3              # double 0.67051328303664659
	.quad	0x3fb6062778782140              # double 0.086031405364455971
	.quad	0x3fd7f159d92580fa              # double 0.37410589414322681
	.quad	0x3fe31cd82abc5e04              # double 0.59727104517782026
	.quad	0x3f8ff45f9b4f8cc0              # double 0.015602824141700444
	.quad	0x3fe206b84726898b              # double 0.56332029244031057
	.quad	0x3fc0f364bc6a9c9c              # double 0.13242778015157775
	.quad	0x3fe9f03dadadd5ca              # double 0.81057628556907813
	.quad	0x3fd9feefc439d4d6              # double 0.40618509447751927
	.quad	0x3fd6353714abb6b2              # double 0.34699799555424271
	.quad	0x3fe76fcabee23ab3              # double 0.73239648134207014
	.quad	0x3fc5ef37a89e20e0              # double 0.17136283620153048
	.quad	0x3fda629f9cc8ffc2              # double 0.41226949988412909
	.quad	0x3fc72083f7008308              # double 0.18067979393620015
	.quad	0x3fcbe97242611508              # double 0.21806171647237016
	.quad	0x3fe4b886504ece8b              # double 0.64752498326420616
	.quad	0x3fef29f995dd1ce3              # double 0.97387389440782745
	.quad	0x3feb069477ae755a              # double 0.84455321669853878
	.quad	0x3fef48885836a3a6              # double 0.97760407666384164
	.quad	0x3fe8ff05c905da89              # double 0.78113068830755694
	.quad	0x3faa68bf378f4760              # double 0.051580405742824409
	.quad	0x3fe24c13e58a5cdf              # double 0.57178683120846674
	.quad	0x3fef023407a32e04              # double 0.96901895038303154
	.quad	0x3fecd9189d1820fb              # double 0.90150099451514565
	.quad	0x3fc49ea676c22fc0              # double 0.16109162138707056
	.quad	0x3fe3549bf67d7293              # double 0.60407827513297929
	.quad	0x3fa4efbb6052b5b0              # double 0.040891509540738169
	.quad	0x3fe6efd5d5e720b6              # double 0.71677676942728996
	.quad	0x3fe4ff4e4481ec21              # double 0.65616525059101971
	.quad	0x3fe991ecd73ee610              # double 0.79906312980819116
	.quad	0x3fe52f1768cac5d0              # double 0.6619984671325998
	.quad	0x3fbcb424642489c8              # double 0.11212375111475759
	.quad	0x3fce0b37e01d0d88              # double 0.23471735423127549
	.quad	0x3fd9f1ed16b46670              # double 0.40539099900488562
	.quad	0x3fb50db0c8a1f3f8              # double 0.082240151388717098
	.quad	0x3feb7353980c476e              # double 0.85782794663303519
	.quad	0x3fca600a26c29838              # double 0.20605589764198995
	.quad	0x3fdb264c20c25b7a              # double 0.42421248625890196
	.quad	0x3fe103f967e8b761              # double 0.53173513693557706
	.quad	0x3feee6d833a5a53c              # double 0.96567926490130373
	.quad	0x3fc7681b2d26a4c8              # double 0.18286456780086824
	.quad	0x3fcccbe10f134c88              # double 0.22497189746954782
	.quad	0x3fe7ab6db9300173              # double 0.7396763436263839
	.quad	0x3fefdfd5975decdb              # double 0.99607352794501069
	.quad	0x3fdbd113b4e6073e              # double 0.4346360460841544
	.quad	0x3fca55277bbce898              # double 0.20572370092287851
	.quad	0x3fef1521a38dbb46              # double 0.97132951683111268
	.quad	0x3fe2523de7cc9c0c              # double 0.57253928445141034
	.quad	0x3f856f47b6420d00              # double 0.010466156243870817
	.quad	0x3fe322a65b9d85ee              # double 0.59797971624010215
	.quad	0x3fefef764c3cf783              # double 0.99798121347679147
	.quad	0x3fd2c7522aaa324c              # double 0.29341558615195562
	.quad	0x3fe9a3e4216f616d              # double 0.80125624208726054
	.quad	0x3fc6d36774aa003c              # double 0.17832654186713792
	.quad	0x3fb11c4f4ee36470              # double 0.066838223228289584
	.quad	0x3fc6c97945fede54              # double 0.17802349012139251
	.quad	0x3fea093465c44f01              # double 0.81362361790021975
	.quad	0x3fe238443ab82ccc              # double 0.56936847180022587
	.quad	0x3fd23ccdb469fa08              # double 0.28496115320732018
	.quad	0x3fd6b891eb155780              # double 0.35501525838241577
	.quad	0x3fa402dbe9e694e0              # double 0.039084312727291737
	.quad	0x3feba99933aed1bb              # double 0.86445293516458521
	.quad	0x3fefcee765074392              # double 0.99400682193855716
	.quad	0x3fe0d533bfe6b19b              # double 0.52602565270130996
	.quad	0x3fe90b9a57c02cc4              # double 0.78266636980824744
	.quad	0x3fb97253d789e710              # double 0.099400749322651416
	.quad	0x3fe6f2062a773d82              # double 0.7170439557466326
	.quad	0x3fe23edd7ada7e4a              # double 0.57017396921941921
	.quad	0x3fe912b098d06095              # double 0.78353147360305064
	.quad	0x3feba37ead33cd1f              # double 0.86370786503394814
	.quad	0x3fdda1096df26e22              # double 0.4629539083195785
	.quad	0x3fbb37210b7d97b8              # double 0.10630995302707802
	.quad	0x3fc8cffe44e00db0              # double 0.19384744990393932
	.quad	0x3fe336cc8b1905ff              # double 0.60043933074501854
	.quad	0x3fdc6a2a5785b6e6              # double 0.44397982165433658
	.quad	0x3fdb59c06c406e9c              # double 0.42735300609067806
	.quad	0x3fa71f79fd04c290              # double 0.045162021766718685
	.quad	0x3fe33cb49d6fc7d9              # double 0.6011603426870763
	.quad	0x3fc92f424461fb20              # double 0.19675472582817921
	.quad	0x3fccc90ee7519434              # double 0.22488580984932727
	.quad	0x3fd28d664c51f8b8              # double 0.28988034680504482
	.quad	0x3faa48ddf96b95e0              # double 0.051337181755837014
	.quad	0x3fd1ea0187d591b6              # double 0.27990759148658684
	.quad	0x3fdc682b58086482              # double 0.44385799023582007
	.quad	0x3fcd9545738b38f8              # double 0.23111789838589636
	.quad	0x3fc07a73aa6253b4              # double 0.12873693294082289
	.quad	0x3fecb9691c649a9f              # double 0.89763312860016586
	.quad	0x3fdca8104a96c514              # double 0.44775779041363362
	.quad	0x3feac9c407418918              # double 0.83712960641085754
	.quad	0x3feb221faf4e8cee              # double 0.84791549911133557
	.quad	0x3fd6b86fa76a85ea              # double 0.35500708913067902
	.quad	0x3feff2ddfa6ad8b1              # double 0.99839686307566044
	.quad	0x3faf80856598be30              # double 0.061527413036284506
	.quad	0x3fc1bef12ca11374              # double 0.1386395900646239
	.quad	0x3f97431203a0f160              # double 0.022716790648915519
	.quad	0x3fe74a208560c87b              # double 0.72779871035005728
	.quad	0x3feb5f3aad60429a              # double 0.85537465918067146
	.quad	0x3fed9dd17e0ce421              # double 0.92551493281564856
	.quad	0x3fe843d612062fbc              # double 0.75828078766198059
	.quad	0x3fcaa6b98d6efc8c              # double 0.20821303754744169
	.quad	0x3fd97c2cc79be054              # double 0.39820403569274743
	.quad	0x3fd0b8d101466b42              # double 0.26128029942053754
	.quad	0x3fe90c220068b1c5              # double 0.78273105697513101
	.quad	0x3fedfe05e4df23ca              # double 0.93725866986744077
	.quad	0x3fc30e10dc287384              # double 0.14886675596144638
	.quad	0x3fb12e84b6ed0b80              # double 0.067116064700753597
	.quad	0x3fbd582b7b7bc080              # double 0.11462661518794626
	.quad	0x3fefaf1295f69332              # double 0.99012116708454401
	.quad	0x3fe9fb73febd7bdd              # double 0.81194495920123766
	.quad	0x3fd2156175a2248e              # double 0.28255497443803612
	.quad	0x3fc6d7bcf65af1b8              # double 0.17845880536141379
	.quad	0x3fdcd4bb7d76f59a              # double 0.45048415424738553
	.quad	0x3fece2e0bfee0b86              # double 0.90269505964566643
	.quad	0x3fe1179043352bf2              # double 0.534126406922381
	.quad	0x3fe4140f8941799a              # double 0.62744881446615186
	.quad	0x3fe607e3e0f0b63f              # double 0.68846315320633511
	.quad	0x3fedf494ecc4b756              # double 0.93610616916496769
	.quad	0x3fb5428f185715f8              # double 0.083046859209467416
	.quad	0x3fc2b27776bedc28              # double 0.14607137010691074
	.quad	0x3fe565a1ad6bf499              # double 0.66865619536806087
	.quad	0x3fd8d31b07249ce8              # double 0.38788486192284077
	.quad	0x3fc12e9029789038              # double 0.13423349404286156
	.quad	0x3fec3a64011264fa              # double 0.88212776383730263
	.quad	0x3fcc103ca82be1e4              # double 0.21924551211829091
	.quad	0x3fd070a326429b0c              # double 0.25687483536096134
	.quad	0x3fe1f47ab9882626              # double 0.56109367596326787
	.quad	0x3fe868fc446a7c69              # double 0.76281560289852479
	.quad	0x3fe029dd3ef09777              # double 0.50511038105899686
	.quad	0x3fefe200352b35d8              # double 0.99633798965958941
	.quad	0x3fd017c9ac9d3d18              # double 0.25145189148766312
	.quad	0x3fe7af8e5b804adc              # double 0.74018018599812363
	.quad	0x3fdb0df2236a90f4              # double 0.42272618731136835
	.quad	0x3fde5a865936c4a0              # double 0.47427519523905382
	.quad	0x3fdc93990a2d6772              # double 0.44650865548975738
	.quad	0x3fd416f970993a08              # double 0.31390224452926008
	.quad	0x3fdf5386b2c64d9a              # double 0.48947303255519048
	.quad	0x3fea3ea863b0f39e              # double 0.82014865370694046
	.quad	0x3fd2c54e8707fde0              # double 0.29329264818804113
	.quad	0x3f9a588b62dbb3e0              # double 0.02572839537508631
	.quad	0x3fea89cbad5abdc8              # double 0.82932075365345614
	.quad	0x3feca945a844dbc4              # double 0.89566309800181231
	.quad	0x3fda103a712ff20e              # double 0.40724049619146363
	.quad	0x3fbd69bd480ac8b8              # double 0.11489470490303944
	.quad	0x3fee29a80adaf713              # double 0.94258501167471065
	.quad	0x3fe312a45898db1a              # double 0.59602563194389124
	.quad	0x3fe3d6c46be36f25              # double 0.61996670791584008
	.quad	0x3feb378a94f32f8e              # double 0.8505299481562234
	.quad	0x3fe9890901455bec              # double 0.79797792671422262
	.quad	0x3fbe183aa9d06128              # double 0.11755720754479582
	.quad	0x3fe89fa6af7eada7              # double 0.76948866154036899
	.quad	0x3fed5a967acb1822              # double 0.91730808241914397
	.quad	0x3fe3a5653fbdf163              # double 0.61393988084413953
	.quad	0x3fdb526200171268              # double 0.42690324791718703
	.quad	0x3feba4de604a1331              # double 0.86387556845202174
	.quad	0x3fddd870a45e40ec              # double 0.46633544971065422
	.quad	0x3fe1b5f91cd73fd9              # double 0.5534635127351023
	.quad	0x3fcfc9f07fef3120              # double 0.2483502030066882
	.quad	0x3fbaedb4493bbb00              # double 0.1051895788948336
	.quad	0x3fecc9643c72f8a6              # double 0.89958392912355545
	.quad	0x3fe3686001bcacd4              # double 0.60649109210262475
	.quad	0x3fc64f91ee9c5614              # double 0.17430328513062021
	.quad	0x3fe17e0b1090507e              # double 0.54663613543608824
	.quad	0x3fbb4c9fc82d6dc0              # double 0.10663794171471519
	.quad	0x3fdbaf53538bd100              # double 0.43257601889423825
	.quad	0x3fe277ac05d8d07c              # double 0.57710839406946901
	.quad	0x3fc614cbfceb0edc              # double 0.1725096688224913
	.quad	0x3fee97d0c183ddd9              # double 0.95603215976637579
	.quad	0x3fdf7002fff36e74              # double 0.49121165271001321
	.quad	0x3fdd883614766d70              # double 0.46143867491055968
	.quad	0x3f5caf32d5ddd200              # double 0.0017507549705132464
	.quad	0x3fef084534e06c4a              # double 0.96975956275435604
	.quad	0x3feb23f318319207              # double 0.84813837743109921
	.quad	0x3fd730cbb26b5110              # double 0.3623532526373916
	.quad	0x3fd4fa960bd33328              # double 0.32779456286225406
	.quad	0x3f8d180d2c5c6800              # double 0.014206030765809174
	.quad	0x3f9841fde4c3c060              # double 0.023689238631903087
	.quad	0x3fca7764f6ad48f0              # double 0.20676862759371017
	.quad	0x3fbd3a545950cdd0              # double 0.11417128735120419
	.quad	0x3fecee1bde570c82              # double 0.90406602311885842
	.quad	0x3feee58ec9b94235              # double 0.96552218817857371
	.quad	0x3fedbc1408f5201a              # double 0.92920877217784725
	.quad	0x3fd6b579d1bb6194              # double 0.35482640725742809
	.quad	0x3fd308de39883a70              # double 0.29741626375554286
	.quad	0x3fdc81be7c642ab6              # double 0.44541895053468339
	.quad	0x3fdf1b246c94dcba              # double 0.48603163341199329
	.quad	0x3fd9365b58090ea8              # double 0.3939426765175349
	.quad	0x3fd6b99e94f3cd14              # double 0.35507931276443228
	.quad	0x3fe584b0e62f00ba              # double 0.67244763334021873
	.quad	0x3fe0c9695eeb9d14              # double 0.52458637751706982
	.quad	0x3fd49fd4e6dedb90              # double 0.32225534959746316
	.quad	0x3feffe337cd5cd1b              # double 0.99978041059367528
	.quad	0x3fe391a70ce5bb46              # double 0.61152985114117864
	.quad	0x3fce2ca336b4238c              # double 0.23573723002507696
	.quad	0x3fb9b9182c597ae8              # double 0.10048056681396711
	.quad	0x3fe8cfe7b81a339f              # double 0.77537904698839444
	.quad	0x3fee6c3d8f5d57aa              # double 0.95071294785406235
	.quad	0x3fdf9732a8267144              # double 0.49360338612475041
	.quad	0x3fe5a374b09b88d9              # double 0.6762031030050607
	.quad	0x3fed5d28bb0150e1              # double 0.91762196087304571
	.quad	0x3fb6fd24ec79e458              # double 0.089800174458916415
	.quad	0x3fe7d6ab1b168155              # double 0.74495463648421867
	.quad	0x3feb2833fda0194e              # double 0.84865760360916354
	.quad	0x3fee3c1848804a3f              # double 0.9448357978856804
	.quad	0x3facb40c7f73d600              # double 0.05606116348091561
	.quad	0x3fd263132632aa7c              # double 0.28729704599633243
	.quad	0x3fe0884822a94c85              # double 0.51663595933713735
	.quad	0x3feff480915e11ca              # double 0.99859646217424225
	.quad	0x3fa43ad921dfc400              # double 0.039511475930233075
	.quad	0x3fd644e360b0a52e              # double 0.34795460169205483
	.quad	0x3fed49c9ce28ce6d              # double 0.91525736108310485
	.quad	0x3fd5603e934279e2              # double 0.33399929409816143
	.quad	0x3fdc87f81e05e56a              # double 0.44579890186249449
	.quad	0x3feafb5f07c404a2              # double 0.84318496243226471
	.quad	0x3fe3e2b0a79f7375              # double 0.62142212618674242
	.quad	0x3fd311a39a37b3cc              # double 0.29795160351096395
	.quad	0x3fe7e3bb3e5b0ed0              # double 0.74654924563261638
	.quad	0x3fd6d902b6c32068              # double 0.35699527595398317
	.quad	0x3f9f44f12ba78ee0              # double 0.030536430634937939
	.quad	0x3fec7ca6f37d48e3              # double 0.89021632725259925
	.quad	0x3fd7cdf3195975b4              # double 0.37194516635448882
	.quad	0x3fc19ea90318525c              # double 0.13765442515490889
	.quad	0x3fe40564cff429a0              # double 0.62565842262238291
	.quad	0x3fecab5533ae7181              # double 0.89591465086009248
	.quad	0x3fe0921f20a8baba              # double 0.51783710840921704
	.quad	0x3fd9ea9c803d6890              # double 0.40494453929353202
	.quad	0x3fc3684484771154              # double 0.15161949604056224
	.quad	0x3fc2dab7b4edfdc0              # double 0.147299731583173
	.quad	0x3fd8c485d481c632              # double 0.38699479820852212
	.quad	0x3fe2344f280d40b6              # double 0.56888540098773066
	.quad	0x3fd8a4afba470d8a              # double 0.38505166236083055
	.quad	0x3fdcb7ed898bd5cc              # double 0.44872606689690708
	.quad	0x3fb43296c07f0c78              # double 0.078896924968875015
	.quad	0x3fd9d2f15064251c              # double 0.40349991656019468
	.quad	0x3fed03d1c50d6b5a              # double 0.90671623694229742
	.quad	0x3feed760b9a4f0cf              # double 0.96379123934414134
	.quad	0x3fcb994e41485540              # double 0.21561601817726661
	.quad	0x3fe927454da00e93              # double 0.78604378853965995
	.quad	0x3feae1aa6116207b              # double 0.84004706346696822
	.quad	0x3fe8c4a9c5cdcb87              # double 0.77400673516818663
	.quad	0x3fe2e7f7f62b59aa              # double 0.59081647949169747
	.quad	0x3f923c43407e7000              # double 0.017808008967776345
	.quad	0x3fe758cbd53ea9ec              # double 0.72958938264247086
	.quad	0x3fd575dfb39105ac              # double 0.33531944785871803
	.quad	0x3fe4737e11bffe34              # double 0.63909820048133392
	.quad	0x3fc8b281d3fd591c              # double 0.19294760561997115
	.quad	0x3fe94af838a7f47e              # double 0.79040156427039654
	.quad	0x3fd06117ecd552ee              # double 0.25592611435176493
	.quad	0x3f917a80ff4c0880              # double 0.017068877775280544
	.quad	0x3fa6be3d6d4b26b0              # double 0.044420165626048003
	.quad	0x3fb0adda7c66dc80              # double 0.065152793284925181
	.quad	0x3fdd23cd4eef8564              # double 0.45531017979199917
	.quad	0x3f9d1ded2ebe2b80              # double 0.028434473016698103
	.quad	0x3fbaddf1d39fd888              # double 0.10494910637484811
	.quad	0x3fb35e1645894b30              # double 0.075654403664242364
	.quad	0x3fefb4cb9aa54cd0              # double 0.99081974224318436
	.quad	0x3fb583663ec54c38              # double 0.084036245655895736
	.quad	0x3feeada0a027aee4              # double 0.95869475631976941
	.quad	0x3fdabdbd111a25f8              # double 0.41783072157031098
	.quad	0x3fc4093a21c22898              # double 0.15653158806191381
	.quad	0x3fe8ecc18f0a5fd4              # double 0.77890088975527271
	.quad	0x3f9bdb569d102940              # double 0.027203896843311925
	.quad	0x3fc0058b61a05010              # double 0.12516920344262461
	.quad	0x3fc2b76fb1d26bdc              # double 0.14622303183281715
	.quad	0x3fc033e7d81ff62c              # double 0.12658403447123712
	.quad	0x3fe69f473c419687              # double 0.70694314736165687
	.quad	0x3fb76fb4ed0540a0              # double 0.091548259607636684
	.quad	0x3fe65dcf676eadfb              # double 0.69895143701199858
	.quad	0x3fd7a204f372cb3c              # double 0.36926387571581976
	.quad	0x3fe9fa31276eb90f              # double 0.81179101659452779
	.quad	0x3fbdadf510a26188              # double 0.11593562751875741
	.quad	0x3fe6d2ef1ebec661              # double 0.71324878697323524
	.quad	0x3fc71c0910c9b558              # double 0.18054307288859195
	.quad	0x3feac5f6f8091d1c              # double 0.83666561550572593
	.quad	0x3fe8babaeb285671              # double 0.77279420785153097
	.quad	0x3fefb652f13959fd              # double 0.99100634683674082
	.quad	0x3fd56603f1d48de2              # double 0.33435152641524557
	.quad	0x3fe883d0a630f428              # double 0.76609070262168633
	.quad	0x3fd19dec3864da2e              # double 0.27526383883688055
	.quad	0x3fe2f2b26805f4b0              # double 0.5921260863975899
	.quad	0x3fe87217f82430f5              # double 0.7639274450789616
	.quad	0x3fec0ea82740a857              # double 0.87678916613118474
	.quad	0x3fde03f053193418              # double 0.46899040331919783
	.quad	0x3fc5c2f00c503844              # double 0.17001152611959658
	.quad	0x3fed570f7c190410              # double 0.91687750089488596
	.quad	0x3fd36e0dc8996a42              # double 0.30359215345166402
	.quad	0x3fb1600b6103ce40              # double 0.067871771989126195
	.quad	0x3fdf44a6fa0869f8              # double 0.48856520097038425
	.quad	0x3fec56495e46ecd4              # double 0.88553303159224094
	.quad	0x3fdb4b03eef50642              # double 0.4264535745206538
	.quad	0x3fc056b3e7d21e54              # double 0.12764595813154023
	.quad	0x3fe028fee26ab648              # double 0.50500435087241957
	.quad	0x3fe0e232b1c3ad64              # double 0.52761206359484136
	.quad	0x3fe03aa26183a300              # double 0.50715750737899157
	.quad	0x3fde0c2c5b98ec50              # double 0.46949299759916574
	.quad	0x3fef07de88da44fb              # double 0.96971060494448069
	.quad	0x3fe119fa7c3cd272              # double 0.53442119851258796
	.quad	0x3f8a5a4bff787800              # double 0.012867540105670372
	.quad	0x3fea8094a4116137              # double 0.82819587749967283
	.quad	0x3fd06688e5803e20              # double 0.25625822460367154
	.quad	0x3fed2a0c0d34622b              # double 0.91138269976642527
	.quad	0x3fcd74c240c14640              # double 0.23012569581855935
	.quad	0x3fd9c7a16743373a              # double 0.40280947765573993
	.quad	0x3fe36f5230a8ebfa              # double 0.60733899597050756
	.quad	0x3feeb78c97643ae2              # double 0.95990590637833528
	.quad	0x3fb18ccceeaad350              # double 0.068554695385342201
	.quad	0x3fd54653be3f5a2c              # double 0.33241742686132869
	.quad	0x3fca94a1e58d37e0              # double 0.20766090115142699
	.quad	0x3fdd9fce277d9dce              # double 0.46287874084961522
	.quad	0x3fe081f654607847              # double 0.51586452941752092
	.quad	0x3fe72178554da3c6              # double 0.72283569966122552
	.quad	0x3f9357e731598b20              # double 0.018890011202880364
	.quad	0x3f6be497eae01600              # double 0.0034049002779308335
	.quad	0x3fe4110714d34345              # double 0.62707857196264938
	.quad	0x3fcfc720f4b7ffdc              # double 0.24826442670018778
	.quad	0x3feb9f2925cb6efd              # double 0.86317880040903072
	.quad	0x3fe50ad1e8e1c800              # double 0.65757079586751388
	.quad	0x3fd2356e12c3cf4c              # double 0.28451110680110925
	.quad	0x3febf56eb01572b9              # double 0.87371000663150433
	.quad	0x3fe62c53f4860698              # double 0.692911126694713
	.quad	0x3fe356d09d3f371f              # double 0.60434752189914664
	.quad	0x3f814d11ef082d40              # double 0.0084477807113417791
	.quad	0x3fe40420b6a5cf06              # double 0.62550388024689663
	.quad	0x3fd5e7b8420869d2              # double 0.34226805161020224
	.quad	0x3fd9f0d5c1f4ae90              # double 0.40532440129275304
	.quad	0x3fe935a4de13ead9              # double 0.78779834150858641
	.quad	0x3feba92cbfa7377e              # double 0.86440122062934655
	.quad	0x3fe269df2e92777b              # double 0.57542380424614181
	.quad	0x3fd9f848b6cf7cf2              # double 0.40577905514324109
	.quad	0x3fe09036e87f340f              # double 0.5176043072657438
	.quad	0x3fe190b89e775f91              # double 0.54891615820359807
	.quad	0x3fece717f0ef1611              # double 0.90320965821655552
	.quad	0x3fda52598cbeb62e              # double 0.41127623314500539
	.quad	0x3f86e257f909f440              # double 0.011173903739512991
	.quad	0x3fefb66c0c7d3aef              # double 0.99101831855099742
	.quad	0x3fe0b80ca832cb59              # double 0.52246697283986088
	.quad	0x3fe74282c3c3f41b              # double 0.72686899409712014
	.quad	0x3fecaeaa1935b88e              # double 0.89632134364889438
	.quad	0x3fe2f7958504bb64              # double 0.59272266369030691
	.quad	0x3fe3592df3027a23              # double 0.60463616812541365
	.quad	0x3fec4cd48e27dcf3              # double 0.88437869801319235
	.quad	0x3fe887c84d698c1e              # double 0.76657500381077504
	.quad	0x3fe78c565dddadb6              # double 0.73588102658452814
	.quad	0x3fedb58ecd2623d4              # double 0.92841281955872512
	.quad	0x3fdcfb1a6f492582              # double 0.45282612674471789
	.quad	0x3fdaf034ebb6e72e              # double 0.42091105479231572
	.quad	0x3fe85788cbb82e24              # double 0.76068534649806851
	.quad	0x3fe8e3d060d2a8d7              # double 0.77780932341309039
	.quad	0x3fe8ae535d5f51f0              # double 0.77127998577867452
	.quad	0x3fcb581c281c7bdc              # double 0.21362640341337069
	.quad	0x3fefe7d0c8df4e36              # double 0.99704779847019753
	.quad	0x3fd5125311f9e13a              # double 0.32924343829610658
	.quad	0x3fea0e9e3cd888c4              # double 0.814284437980199
	.quad	0x3fdbd7cabcb2932c              # double 0.43504589488502421
	.quad	0x3fee622368332e48              # double 0.94947977401302185
	.quad	0x3fee622ad6320e2b              # double 0.94948331675590703
	.quad	0x3fe210d482eeebe8              # double 0.56455445835979123
	.quad	0x3fe441ba89a6c11c              # double 0.63302351841960869
	.quad	0x3f6c36956bcce100              # double 0.0034439962750206776
	.quad	0x3fea22ee6f954129              # double 0.81676408570823356
	.quad	0x3fd9257aa35b9b02              # double 0.39291253998673892
	.quad	0x3fe65e33e66bd036              # double 0.69899935726289786
	.quad	0x3fd1c8298e890530              # double 0.27784193915802557
	.quad	0x3fe93966bda88142              # double 0.78825699846860453
	.quad	0x3fe5dd26ba8c29a7              # double 0.68324600634632737
	.quad	0x3fcdd281489cf8bc              # double 0.23298660321774445
	.quad	0x3fc7f7f15ded6700              # double 0.18725411497398881
	.quad	0x3fe3ad5249767bc0              # double 0.61490740154464874
	.quad	0x3fe44e4bfc9feb24              # double 0.6345577177120032
	.quad	0x3fdf7fce9bc4b098              # double 0.49217572414159738
	.quad	0x3fee93382347828b              # double 0.95547110453124284
	.quad	0x3fe4c5d96c661541              # double 0.64915152713425794
	.quad	0x3fbb93ed6c93cb90              # double 0.1077259435731277
	.quad	0x3febe496b0ef7961              # double 0.8716538863916804
	.quad	0x3feb5b65a50ffa7e              # double 0.85490686644318692
	.quad	0x3fe9300495728c4c              # double 0.78711156071620669
	.quad	0x3fd8ae44fb0c5334              # double 0.38563656345768327
	.quad	0x3fd0ee532d2d8a8c              # double 0.2645461980047592
	.quad	0x3fdf896edbc0294c              # double 0.49276324710867381
	.quad	0x3fe4a5ea4d4631eb              # double 0.64525332539193181
	.quad	0x3fe4a32fa3fdbd6b              # double 0.64492017774129573
	.quad	0x3fdf9ca39935870e              # double 0.49393548929047959
	.quad	0x3fdbd3804e283216              # double 0.43478400833626674
	.quad	0x3fe9e3224c8a6cf1              # double 0.8089763159690887
	.quad	0x3fea71c1bd493957              # double 0.82638632745674101
	.quad	0x3fdc4e46ef93f840              # double 0.44227765461244317
	.quad	0x3fe36cc75bf1417b              # double 0.60702865560055785
	.quad	0x3f953f7d9f423e00              # double 0.020750010342963421
	.quad	0x3fc383095f0ce6a8              # double 0.15243641987927004
	.quad	0x3fe5a30f3465ebf6              # double 0.67615471109399894
	.quad	0x3fe90c2b10d17022              # double 0.78273537907398727
	.quad	0x3fb0f3bd2dcbff58              # double 0.066219161682963601
	.quad	0x3fd894372e04a152              # double 0.38404635900453343
	.quad	0x3fe7d9dba94798c4              # double 0.74534400045811156
	.quad	0x3fe7cf825cfe1081              # double 0.74408071672998244
	.quad	0x3fe4b5a60db2ef61              # double 0.64717390704707267
	.quad	0x3fe4393e46c7d220              # double 0.63198770355535672
	.quad	0x3feaebbeaa91cedb              # double 0.841277440208127
	.quad	0x3fdc3d1d62258740              # double 0.44123015007618349
	.quad	0x3fece74d3fd35625              # double 0.90323507753300147
	.quad	0x3fd0b238f45a5980              # double 0.26087783682432786
	.quad	0x3fd68cf7660695f8              # double 0.35235390628289975
	.quad	0x3fea173a659ff480              # double 0.81533546303366222
	.quad	0x3fe8776aaccc73ce              # double 0.76457723378882192
	.quad	0x3fed91bf3f5cb10d              # double 0.92404138923078138
	.quad	0x3fef6df6afc4da30              # double 0.98217329339860804
	.quad	0x3fe2a908790aef34              # double 0.58313392296938682
	.quad	0x3fe1050c69b4fcb0              # double 0.53186627050299329
	.quad	0x3fe81f52c6623660              # double 0.75382364985280148
	.quad	0x3fcc8bcc9fc65a30              # double 0.22301633645538876
	.quad	0x3fe212c0619ba050              # double 0.56478900016828426
	.quad	0x3fe06a7e8f23d422              # double 0.51299980122587763
	.quad	0x3fe9133a8d672a62              # double 0.78359725587627005
	.quad	0x3fd63b363cc447fa              # double 0.34736400541544266
	.quad	0x3feb46e5f81a04e9              # double 0.85240457970953998
	.quad	0x3fe3bf3b48776a95              # double 0.61709369805915293
	.quad	0x3fc79d841062a8e0              # double 0.18449450302188719
	.quad	0x3fea11ce3b9f98f6              # double 0.81467353482437832
	.quad	0x3fcb4d65d79e53d4              # double 0.21329949405904236
	.quad	0x3fbb49a0d6e49158              # double 0.10659222837836546
	.quad	0x3fda69a8aa613c50              # double 0.41269890440611778
	.quad	0x3fe37d459bf03685              # double 0.60904198128419351
	.quad	0x3faa326ed6d80f10              # double 0.051166022993156202
	.quad	0x3fa3dcf335e10f70              # double 0.038795090033572843
	.quad	0x3feea1cea4140ee9              # double 0.95725185438683724
	.quad	0x3fe3e3d84cc89e10              # double 0.62156310078438715
	.quad	0x3fbe08f635912100              # double 0.11732424552713283
	.quad	0x3fef73a06a2556c5              # double 0.98286457759487488
	.quad	0x3fe1ed03bbe5e4ba              # double 0.56018244456131261
	.quad	0x3fef791f9aec537c              # double 0.98353557833125604
	.quad	0x3fe642a28895bae7              # double 0.69563414265379897
	.quad	0x3fd8bf04a876f35e              # double 0.3866588254129989
	.quad	0x3fed6246b0b1bd0e              # double 0.91824659834483824
	.quad	0x3fbf64779ec6bdd8              # double 0.12262675882697438
	.quad	0x3fd09251ccae673e              # double 0.25893063534168792
	.quad	0x3fe1be26e02c8513              # double 0.55446189674344948
	.quad	0x3fe00a232701c99f              # double 0.5012374650817043
	.quad	0x3fe2781972ee9a5c              # double 0.57716057250656716
	.quad	0x3fc4fe2d64f01230              # double 0.1640068762645952
	.quad	0x3fedd99d63a0f516              # double 0.93281430681932664
	.quad	0x3fe940395abb4355              # double 0.78908984871859877
	.quad	0x3fbeda63218fd168              # double 0.12051982468967071
	.quad	0x3fdbef0a1742463a              # double 0.43646480819106481
	.quad	0x3fd25d8e68d05266              # double 0.28696022258490073
	.quad	0x3fe87051b7a1474c              # double 0.76371084084733231
	.quad	0x3fe91556e1dd7a96              # double 0.78385490526473478
	.quad	0x3fdca806dcf38f28              # double 0.44775554253850425
	.quad	0x3fd82b372b2f6928              # double 0.37763766495995066
	.quad	0x3f57c4de7bfd8c00              # double 0.001450745839939982
	.quad	0x3fde69e31a6d045c              # double 0.47521283703469464
	.quad	0x3fe28fdf2003dc86              # double 0.5800624490065196
	.quad	0x3fb28f6757a91160              # double 0.072500666524381696
	.quad	0x3fcc2364f7ff1798              # double 0.21983015164567798
	.quad	0x3fef77b593880aa4              # double 0.98336294951180436
	.quad	0x3fe977e1a8b98d51              # double 0.79588396982254939
	.quad	0x3fde58a96da0affa              # double 0.47416148858860618
	.quad	0x3fd6c6bbd0020118              # double 0.35587973893417901
	.quad	0x3fe527385d9069cd              # double 0.66103761934510319
	.quad	0x3feedd268ef3b4db              # double 0.96449592514332083
	.quad	0x3fa343e87c0031d0              # double 0.037627473007976087
	.quad	0x3feb1a0b71880776              # double 0.84692928480238439
	.quad	0x3fe16a15c8f4705a              # double 0.54419984101287899
	.quad	0x3fe579789ffaf049              # double 0.67107802625788182
	.quad	0x3fcdff2cd9d93c18              # double 0.23434982907426227
	.quad	0x3fe5cdbf456f77d9              # double 0.68136561929326966
	.quad	0x3fc9be59fdcd974c              # double 0.20112156765679357
	.quad	0x3fe6cc48ad056dab              # double 0.71243699830249818
	.quad	0x3fe49e0441793297              # double 0.64428913867739623
	.quad	0x3fe8221d1d44eba5              # double 0.75416427342075976
	.quad	0x3fe413f45c7e8198              # double 0.62743585648790923
	.quad	0x3fc6f6edd09e76f0              # double 0.17941067396616672
	.quad	0x3fe0d2d646cdfb3c              # double 0.52573694066072774
	.quad	0x3fe75b156652bf2f              # double 0.72986860260968978
	.quad	0x3fddb963aac5a188              # double 0.46444026638939606
	.quad	0x3fd567a451a7da30              # double 0.33445079778849429
	.quad	0x3fe0aa2ba80a33d3              # double 0.52077277012142031
	.quad	0x3fd1f71d085b25b6              # double 0.28070760551471652
	.quad	0x3fce4adc8d9282bc              # double 0.23665959274969406
	.quad	0x3fc3fdf352d05374              # double 0.15618745368615417
	.quad	0x3f9687cb54f88ee0              # double 0.022002389012540813
	.quad	0x3fe1b03fb32d8ad5              # double 0.55276474948581245
	.quad	0x3fcdff358594ade0              # double 0.23435086271761829
	.quad	0x3fd9fdb1b8d745a2              # double 0.40610926676625969
	.quad	0x3fe62c11d113047f              # double 0.69287958941289662
	.quad	0x3fc3048fe5027c2c              # double 0.14857672388186083
	.quad	0x3fd3ba4b388af946              # double 0.30824547311558026
	.quad	0x3fe3f29ddaccf5fa              # double 0.62336628660676685
	.quad	0x3fe7477b0989fbc5              # double 0.72747566092572724
	.quad	0x3fe08ff0fadbc674              # double 0.51757096286583115
	.quad	0x3fd2674e051b95f4              # double 0.28755522249988918
	.quad	0x3fea09699774b1d7              # double 0.81364898282259446
	.quad	0x3fcfb3bc6e1ddddc              # double 0.24767260910787925
	.quad	0x3fdf7de8c517aab0              # double 0.49205989119824789
	.quad	0x3feb71bf3f03e056              # double 0.85763513858456508
	.quad	0x3fe21361c7013e60              # double 0.56486595981727916
	.quad	0x3fd87b912ec1ffb6              # double 0.38254193845932194
	.quad	0x3fe486b636cd811f              # double 0.64144430831587218
	.quad	0x3fd616abd93535f2              # double 0.34513374530510454
	.quad	0x3fed9cd81d2ac4eb              # double 0.92539601990406817
	.quad	0x3fe146f70cea1071              # double 0.53991272470785934
	.quad	0x3feb0e97ae82d478              # double 0.84553131183805785
	.quad	0x3fe32914a94cf8e5              # double 0.59876473490274107
	.quad	0x3fcf829b8f3526c4              # double 0.24617332928237634
	.quad	0x3faf65d8357e9560              # double 0.061323887376867559
	.quad	0x3feac681438e31f3              # double 0.83673155970023882
	.quad	0x3fd15ab15b1cbb14              # double 0.27116044900587721
	.quad	0x3fee750c15fee62e              # double 0.95178798957858191
	.quad	0x3fe853ae7f432730              # double 0.76021504264756423
	.quad	0x3fe01b68b0e2a853              # double 0.50334581897664987
	.quad	0x3fdfed5c6d769014              # double 0.49886236848601695
	.quad	0x3fe8ad5ae0eed373              # double 0.77116149837693937
	.quad	0x3febc3f718dc55c6              # double 0.86767153602220826
	.quad	0x3fdb245cef97f3d8              # double 0.4240944232731727
	.quad	0x3fd286663fcd4d00              # double 0.28945308905277045
	.quad	0x3fd6eb9316a1bbec              # double 0.35812833032735969
	.quad	0x3fe292a8a33b9d3f              # double 0.58040267831248815
	.quad	0x3fef5bf925a57da2              # double 0.97997720101186681
	.quad	0x3fe47cf3216288c2              # double 0.64025265236366402
	.quad	0x3fe22caffb7980b1              # double 0.5679550086606665
	.quad	0x3fc656e8a72c71c4              # double 0.17452724612020465
	.quad	0x3fd75cb7af2fe182              # double 0.36503402813061581
	.quad	0x3fd8041a92f5ba1a              # double 0.375250476375102
	.quad	0x3fe5e9c731bee25b              # double 0.68478736606546009
	.quad	0x3fe4621ce24a40d3              # double 0.63697666356349669
	.quad	0x3fe288ddd9b2a834              # double 0.57920734900586135
	.quad	0x3fc42ed15aad4f04              # double 0.15767876556002858
	.quad	0x3fe15de0f5189725              # double 0.54270980711291783
	.quad	0x3fe19c66c87733a2              # double 0.55034197953647301
	.quad	0x3fd47e9fd2ce3082              # double 0.32022853456943079
	.quad	0x3fc89005bfb761e8              # double 0.19189521657132436
	.quad	0x3fe0389a4e8af109              # double 0.5069095167196177
	.quad	0x3fe7710d131d321e              # double 0.73255017979824166
	.quad	0x3fed710fe107c0b8              # double 0.92005151702144072
	.quad	0x3fc6afd0cc8a2c48              # double 0.17724046695033935
	.quad	0x3fd35cbe5ec0e5ae              # double 0.30253562215110719
	.quad	0x3fdc5adfdcc1b29e              # double 0.44304653700127428
	.quad	0x3fd1679a10dec982              # double 0.27194835326658773
	.quad	0x3fede77c7b90fc62              # double 0.93450760015538159
	.quad	0x3fc1e1888d6d9660              # double 0.13969523339908374
	.quad	0x3fbc15dd84560df8              # double 0.10970863800871899
	.quad	0x3fa845680f816150              # double 0.047404529469249668
	.quad	0x3f90d094fec623a0              # double 0.016420677232904191
	.quad	0x3fdb0c2ace49692a              # double 0.42261762757483956
	.quad	0x3fcf5f14dfd4beb8              # double 0.24508915833711398
	.quad	0x3fee0204aee104e8              # double 0.93774637371111868
	.quad	0x3fe2db230a5be5f1              # double 0.58925010703313607
	.quad	0x3fef1c9a3b8e8bb7              # double 0.972241512605584
	.quad	0x3fdfe42c57b3cb9c              # double 0.49830158772163613
	.quad	0x3fc76b941d735f44              # double 0.18297053754826653
	.quad	0x3fd4dc114b653404              # double 0.32593185770821287
	.quad	0x3fe218a2b67bf06c              # double 0.56550727502282205
	.quad	0x3fdaeb65634ecdfc              # double 0.42061743448286371
	.quad	0x3fdc9fbd19676ffc              # double 0.44724967461456777
	.quad	0x3fd5e836e3312860              # double 0.34229824244233065
	.quad	0x3fdc9a06ea643478              # double 0.44690106286800058
	.quad	0x3fc06da4cde54254              # double 0.12834606221669509
	.quad	0x3fedbc989d11a441              # double 0.92927199056169496
	.quad	0x3fb7c280b7187d40              # double 0.092811627102936889
	.quad	0x3fc48ef4df8811d4              # double 0.1606126872503767
	.quad	0x3fcb21844b3b1e7c              # double 0.21196035073647923
	.quad	0x3fe811263a053e19              # double 0.75209342319607508
	.quad	0x3fe827e2604cbb37              # double 0.75486868675748198
	.quad	0x3fe91ca3e0ced77c              # double 0.78474611194427223
	.quad	0x3fc8ee3a9496e724              # double 0.19477016692490523
	.quad	0x3fec8880b9e327f8              # double 0.89166294389838097
	.quad	0x3fe2d3d126c9731c              # double 0.58835656714981921
	.quad	0x3f87bcb4ec9bd540              # double 0.011590398283696346
	.quad	0x3fed8d26a5d6bb0f              # double 0.9234803427733328
	.quad	0x3fa9f29f4ac53360              # double 0.050679185750232447
	.quad	0x3fe8a86df319f54c              # double 0.7705602405618861
	.quad	0x3fac71f79bbeff70              # double 0.055557000886891639
	.quad	0x3fcdea87afab5644              # double 0.23371978833772478
	.quad	0x3fdecea86a71bd50              # double 0.48136339564276387
	.quad	0x3fdf16f8eabb5610              # double 0.48577711985612471
	.quad	0x3fbf6301ccf984e0              # double 0.12260447744621983
	.quad	0x3fdbd61eb597f5ea              # double 0.4349438451170885
	.quad	0x3fe55c51e4a0cd9c              # double 0.66751951841290547
	.quad	0x3fa2f76df70b94b0              # double 0.037043987662209843
	.quad	0x3fe1cb75be8594a0              # double 0.55608641825951466
	.quad	0x3fe459ddf5a39665              # double 0.63597009636278001
	.quad	0x3fcd32e508013e70              # double 0.22811568156111006
	.quad	0x3fe120fdd090f704              # double 0.53527727828597493
	.quad	0x3f9bafeb00023860              # double 0.027038261294869748
	.quad	0x3fe93e4644dc3131              # double 0.78885186623805315
	.quad	0x3fcbce1bc19a6b1c              # double 0.21722742989808175
	.quad	0x3fe70e5f65a672c2              # double 0.72050447324325995
	.quad	0x3fe4d7e5039db0d8              # double 0.65135431963201551
	.quad	0x3fed65a77f46ad92              # double 0.91865897043810407
	.quad	0x3fe06e2a4e5dc3ff              # double 0.51344790750420077
	.quad	0x3fe5d92555514f70              # double 0.68275705970380152
	.quad	0x3fe83b07dc466657              # double 0.75720589659176596
	.quad	0x3fd2b42161326e6c              # double 0.29224428645986822
	.quad	0x3fcc895e55881110              # double 0.22294215370505599
	.quad	0x3fe628aa4c3ca51f              # double 0.69246401681917635
	.quad	0x3fcc7422b54f54c0              # double 0.22229417660734008
	.quad	0x3fd55ad1e77fb486              # double 0.33366820914563566
	.quad	0x3fe79e2fc652d613              # double 0.73805989012788797
	.quad	0x3fe1c714d484c282              # double 0.55555192477739035
	.quad	0x3fd2bc7d7f0f6a40              # double 0.29275453003143426
	.quad	0x3fe2787df61e6cd5              # double 0.57720850057685402
	.quad	0x3fd5c924e370787a              # double 0.3404018612944878
	.quad	0x3fb6ee1336204888              # double 0.089570236887342003
	.quad	0x3fe281680c6d511f              # double 0.5782966845240799
	.quad	0x3fa3d7777bcb5f70              # double 0.038753255712150714
	.quad	0x3fef62e843c5697c              # double 0.98082364307928981
	.quad	0x3fd534a7410ec4f6              # double 0.331338704617408
	.quad	0x3fcf5a2bdc3f75f0              # double 0.24493931059161822
	.quad	0x3f8bd0a25ffa4100              # double 0.01358153205299617
	.quad	0x3fdb6aa0455bf37c              # double 0.42838293813093009
	.quad	0x3fec8d2b563d7fef              # double 0.89223257869525507
	.quad	0x3fda8c92c595e922              # double 0.41482991500346789
	.quad	0x3fbbc098c3423bb8              # double 0.10840754286822019
	.quad	0x3fd7c9c6d3f71dc2              # double 0.371690470692979
	.quad	0x3fe8da4a8f6318d8              # double 0.77664688115398928
	.quad	0x3fe7e684ec913687              # double 0.74688955502070165
	.quad	0x3fd737914689d50e              # double 0.36276656998173074
	.quad	0x3fe840e3fbf2f594              # double 0.75792121132660605
	.quad	0x3f9f317ff28e1b80              # double 0.030462264232052672
	.quad	0x3f97d70ccd4838a0              # double 0.023281288175035386
	.quad	0x3fcdd59e9b542864              # double 0.23308165153895566
	.quad	0x3fe6e8f1b23f4442              # double 0.71593556226628885
	.quad	0x3fbaa150a4c26af8              # double 0.10402397177169209
	.quad	0x3fca3d08d130b7a0              # double 0.20498762335176668
	.quad	0x3fe8ef15c1c9fae4              # double 0.77918517922793428
	.quad	0x3fc5fdd209c3fa4c              # double 0.17180848576386365
	.quad	0x3fb884fddc938ac8              # double 0.095779291488308549
	.quad	0x3fe00e85a0bce8ec              # double 0.50177270311476496
	.quad	0x3fd634f72df1e2b6              # double 0.34698276030352859
	.quad	0x3fec29516a836604              # double 0.88004370501875017
	.quad	0x3fe3191d9ec85258              # double 0.59681588184555334
	.quad	0x3fe5aab647732e88              # double 0.67708887057365619
	.quad	0x3fcbcf9cc2211e70              # double 0.21727332571957758
	.quad	0x3fe0ac800adaf4ab              # double 0.52105714912581413
	.quad	0x3fea4446d8d944ee              # double 0.82083456376326835
	.quad	0x3fccaaa964a0a074              # double 0.22395818150949121
	.quad	0x3fdcdafd7832ad62              # double 0.45086609590608451
	.quad	0x3fb3bc0b9d243140              # double 0.077088094582170363
	.quad	0x3fed0ba234b20d00              # double 0.9076701192101666
	.quad	0x3fe2b9c931b29d82              # double 0.58517894465050824
	.quad	0x3fe3f9ea67115300              # double 0.62425727968602018
	.quad	0x3fd37efba61417be              # double 0.30462542742349885
	.quad	0x3fe717b3d539acaa              # double 0.72164336820187214
	.quad	0x3fe1606b262275dc              # double 0.54301984260717573
	.quad	0x3feb0ba55d37f2cd              # double 0.84517162520168088
	.quad	0x3fe326bd8931da41              # double 0.59847904964301091
	.quad	0x3fe5b5ca9f605522              # double 0.67844134452994731
	.quad	0x3fc49d4fdd175644              # double 0.16105078025309372
	.quad	0x3fe6e9fcb8343f42              # double 0.71606288888322234
	.quad	0x3fe4a804f40d859d              # double 0.64551017443243419
	.quad	0x3fe7c68fe2cc7996              # double 0.74298853203417781
	.quad	0x3fefccdcbd0d1491              # double 0.99375760005990987
	.quad	0x3fc6305b6a1b4930              # double 0.17335074120507832
	.quad	0x3fe5e941fdc5655b              # double 0.6847238499132503
	.quad	0x3fe89b49e1117d10              # double 0.76895612677245317
	.quad	0x3f4e0743a6f99400              # double 9.1639331180870531E-4
	.quad	0x3fb4faa6a9c803a8              # double 0.081949631166948422
	.quad	0x3f047b67650a4000              # double 3.9066403251131199E-5
	.quad	0x3fcf6aa3fe8f0f44              # double 0.24544191293363771
	.quad	0x3fed41c0e0705609              # double 0.91427654109674095
	.quad	0x3fbf5e7af692dbd8              # double 0.1225354053484432
	.quad	0x3fe7e7f37b56a763              # double 0.74706434335278649
	.quad	0x3fea629e0aaa5cc1              # double 0.82453825076199661
	.quad	0x3fe2c4839b582e75              # double 0.5864885362693274
	.quad	0x3fb5cd5737071e18              # double 0.085164500174066737
	.quad	0x3fe4321be18f699f              # double 0.63111681036689393
	.quad	0x3fe40eb110306333              # double 0.62679341470638972
	.quad	0x3fbd3952005db6c0              # double 0.11415588864266635
	.quad	0x3fdadc57aa28057a              # double 0.4196986352618165
	.quad	0x3fd733bf047082ce              # double 0.36253333505196117
	.quad	0x3fe568326f8204e3              # double 0.6689693620575351
	.quad	0x3fea6f09472f7164              # double 0.82605422881492218
	.quad	0x3fe4cdf60d2226d3              # double 0.65014174046629092
	.quad	0x3fe58809ba108e77              # double 0.672856200606886
	.quad	0x3fd13261ea88e098              # double 0.2687001028421121
	.quad	0x3fd8ecba9c033724              # double 0.38944878802873206
	.quad	0x3fee0f9f1aed7581              # double 0.93940692195216979
	.quad	0x3fed85eeaa8c77bb              # double 0.92259915647786472
	.quad	0x3fec617989a209cd              # double 0.88689877397001171
	.quad	0x3fe4205070704181              # double 0.62894460640568195
	.quad	0x3fb7ac30fee0dd10              # double 0.092471182085194891
	.quad	0x3fc1d3dfb6d47e60              # double 0.13927837779282282
	.quad	0x3fed4650e9b25a03              # double 0.91483350414165476
	.quad	0x3fd0af6d4d787764              # double 0.26070721211896442
	.quad	0x3fd85a4b5885ace8              # double 0.38051112789862751
	.quad	0x3fd0239b3f0f2cc6              # double 0.25217324407703889
	.quad	0x3fa4714732cdac60              # double 0.039926743461216274
	.quad	0x3fea045355f1f034              # double 0.81302801881930131
	.quad	0x3fef9fccedfb8867              # double 0.98825689774481595
	.quad	0x3fea3c418bad14d0              # double 0.81985547333229114
	.quad	0x3fbe83e70096ad60              # double 0.11920017017717077
	.quad	0x3fb3da43ccacef20              # double 0.077549207181558888
	.quad	0x3fde309921d80e70              # double 0.47171619706225609
	.quad	0x3feea2fc4c329015              # double 0.95739569551779147
	.quad	0x3fe513fca1fe88fb              # double 0.65868980063922267
	.quad	0x3feed5eec7469894              # double 0.9636148349861906
	.quad	0x3fd8b557e22d9496              # double 0.38606831634235428
	.quad	0x3fe875c3be382ff7              # double 0.76437556411974483
	.quad	0x3fe789258abe846e              # double 0.73549153421857993
	.quad	0x3fd528b99a2f6692              # double 0.3306106572832529
	.quad	0x3feb7d5c3495b632              # double 0.85905275602789843
	.quad	0x3fee043815ca40b6              # double 0.93801502471799014
	.quad	0x3fed39295412d0cc              # double 0.91322771473508046
	.quad	0x3fe25c2c2f644eab              # double 0.57375153785911459
	.quad	0x3fe7a373602d4edc              # double 0.7387024763542871
	.quad	0x3fd112d174239796              # double 0.26677357045843431
	.quad	0x3fcc935059363d50              # double 0.22324566227005471
	.quad	0x3fdf4f5ac9d0536a              # double 0.48921842296959162
	.quad	0x3f9327c672bbc740              # double 0.018706417801644948
	.quad	0x3fec9e3fd849098c              # double 0.89431755297873527
	.quad	0x3feaa0a128fae08c              # double 0.83210809711364808
	.quad	0x3fe931f1fabdf639              # double 0.78734683011106832
	.quad	0x3faace99e3ae7040              # double 0.052357491534366307
	.quad	0x3fe206c236cbea48              # double 0.56332503035020753
	.quad	0x3fdbf6fe7dee5754              # double 0.43695032403899359
	.quad	0x3fcf696f76744084              # double 0.24540513309375822
	.quad	0x3fd8d961a08eb308              # double 0.38826790503917197
	.quad	0x3fdf2f9a6ca6b882              # double 0.48728046999429619
	.quad	0x3fd41586aa8aac7a              # double 0.31381384520017941
	.quad	0x3fd243c3feb0a9e4              # double 0.28538608429030732
	.quad	0x3fe940124404e4ae              # double 0.7890712097643211
	.quad	0x3fcd22b1573519bc              # double 0.22762123830962178
	.quad	0x3fe69557aac69860              # double 0.70573027948990941
	.quad	0x3fe055dbeddc32e2              # double 0.5104808469492037
	.quad	0x3fec80ef869631ad              # double 0.89073921476806606
	.quad	0x3fe2324f63be835b              # double 0.56864137154853311
	.quad	0x3fb2f93f039cdef8              # double 0.074115694410348598
	.quad	0x3fd2a7156f02cf76              # double 0.29144798127094107
	.quad	0x3fca0ac025100c44              # double 0.20345308122350236
	.quad	0x3fea78d7f968b4e8              # double 0.82725142204949709
	.quad	0x3f86fadb4aba5e40              # double 0.011220658510224912
	.quad	0x3fcc8b521d151980              # double 0.22300173206367546
	.quad	0x3fea3545b586e6cd              # double 0.8190029664467261
	.quad	0x3fe3869b266c5fa6              # double 0.61018140320355907
	.quad	0x3fe7b7b050e23ce3              # double 0.74117294118505261
	.quad	0x3fea311d76ba8072              # double 0.81849549473919425
	.quad	0x3fe6e835faaed76a              # double 0.71584605180281113
	.quad	0x3fe0bf435b6fa19a              # double 0.52334754809003248
	.quad	0x3fef5fcfcccdb18e              # double 0.98044576645547621
	.quad	0x3fec4f6c5b97df05              # double 0.88469522370630271
	.quad	0x3fe5b8032e94133f              # double 0.67871245477054021
	.quad	0x3fc3ba38e9c9554c              # double 0.15412055411676773
	.quad	0x3fdf182c98b7c756              # double 0.48585047639709467
	.quad	0x3fde6fb1e9e7c622              # double 0.4755673202735996
	.quad	0x3fa8c4c93cd2f5d0              # double 0.048376358675777831
	.quad	0x3fd7d088b21776e8              # double 0.37210290328753937
	.quad	0x3fc0192b8abaa388              # double 0.12576813005332732
	.quad	0x3fede36faed835a0              # double 0.93401321553544747
	.quad	0x3fc1e8cee8476a80              # double 0.13991724340197109
	.quad	0x3fe2bb4d5d6ff753              # double 0.58536403893934119
	.quad	0x3fb7d67c7d1d3880              # double 0.093116550965733679
	.quad	0x3fd73148f1a5ccb6              # double 0.36238311384586142
	.quad	0x3fac78dca8286340              # double 0.055609603430815557
	.quad	0x3fd505fc419404d0              # double 0.3284903183376402
	.quad	0x3feb9193f3103675              # double 0.86152074311549021
	.quad	0x3fc72d0f7472e1cc              # double 0.18106263338064676
	.quad	0x3fc0936a5cf7563c              # double 0.12949876345980893
	.quad	0x3fc4060d45ea504c              # double 0.15643468774635705
	.quad	0x3fc3daf4b9d4dbec              # double 0.15511950563242694
	.quad	0x3fe5b8922d919bc2              # double 0.67878064060357013
	.quad	0x3fe00cc4b2a81efa              # double 0.50155863660708566
	.quad	0x3fe50e516e25f48b              # double 0.65799781335194163
	.quad	0x3fee1013c4af11ac              # double 0.93946255125824995
	.quad	0x3fd59b5fda9c5562              # double 0.33760830258082397
	.quad	0x3fcc4116823423c4              # double 0.22073632581330405
	.quad	0x3fd15cd68d30a5aa              # double 0.27129138744438797
	.quad	0x3fd89d2ab59117d2              # double 0.38459270220880371
	.quad	0x3fb99fbeeb5dad20              # double 0.10009377714384415
	.quad	0x3fe8c59281fbd7e5              # double 0.77411771190122336
	.quad	0x3fd1c4fedf975db2              # double 0.27764865717969223
	.quad	0x3fd403398d4ef40c              # double 0.31269682693147227
	.quad	0x3fc45b9c92c34a94              # double 0.15904576460032571
	.quad	0x3fecb35e481b6ada              # double 0.8968955429403096
	.quad	0x3feba482318dfb4f              # double 0.86383161238323136
	.quad	0x3fc6f6b8fa4296b8              # double 0.17940437526447339
	.quad	0x3febd0370898ae59              # double 0.86916686705576318
	.quad	0x3fe4b8da1123517c              # double 0.64756491992243026
	.quad	0x3fd8285b0990ca4e              # double 0.37746311124934528
	.quad	0x3fdb1d4541429686              # double 0.42366153119142103
	.quad	0x3fc0a11fb0202e88              # double 0.12991710758102593
	.quad	0x3fab82a0df3ec3a0              # double 0.053730990649803134
	.quad	0x3fb49aa5ebc56a70              # double 0.080484743176762796
	.quad	0x3fe28dc1f250d44d              # double 0.57980439498226988
	.quad	0x3fc53a4dbe748794              # double 0.16584178733415611
	.quad	0x3fe68f9a94a1355e              # double 0.70502976445429133
	.quad	0x3fdf719190af1e0e              # double 0.49130667809774387
	.quad	0x3fa72de4201ac210              # double 0.045271996420869098
	.quad	0x3f88556875b0c440              # double 0.011881652919415342
	.quad	0x3fef75b4c1dcf2b4              # double 0.98311841834909907
	.quad	0x3feb751095954828              # double 0.85804013457732697
	.quad	0x3fd78c71d2c307fe              # double 0.36794705946169859
	.quad	0x3f74f80a60817000              # double 0.0051193623877132666
	.quad	0x3fc744b44110e8c4              # double 0.18178418328336055
	.quad	0x3fd74d17b403ed5e              # double 0.36408035831091989
	.quad	0x3fb459a4e6157230              # double 0.079492860958858768
	.quad	0x3fece4f538d65f53              # double 0.90294896222165233
	.quad	0x3fef6359d763e024              # double 0.98087780063997742
	.quad	0x3fdc82b57398ff32              # double 0.44547783173401279
	.quad	0x3fc53b7c87e6b6a8              # double 0.1658778823452185
	.quad	0x3fd859c37a8f82de              # double 0.38047873467261961
	.quad	0x3fe1fa71975235e3              # double 0.56182174258145456
	.quad	0x3fd526c09cd336b8              # double 0.33049025835940027
	.quad	0x3fe96db7787edded              # double 0.79464314970294725
	.quad	0x3fe72cbeb458ef3f              # double 0.72421202873326951
	.quad	0x3fd285b9fbfc3cd6              # double 0.28941201789798521
	.quad	0x3fedc55d3e88bf53              # double 0.93034231389718014
	.quad	0x3fee803070280a61              # double 0.95314809709118375
	.quad	0x3fc9106ff7f1d1b4              # double 0.19581412893934458
	.quad	0x3fd8a88f285b42c4              # double 0.38528803769171938
	.quad	0x3fece9aa900766cb              # double 0.90352371340414928
	.quad	0x3febdd68f6012896              # double 0.87077758834608932
	.quad	0x3fb5cf8b7cb019f8              # double 0.085198133412724419
	.quad	0x3fd581721237d7fe              # double 0.33602573184123219
	.quad	0x3fbeff5e1c465950              # double 0.12108410063078634
	.quad	0x3fa30611ee341fd0              # double 0.037155685737218058
	.quad	0x3fbed9367e8b3670              # double 0.12050190534065464
	.quad	0x3fdfea090c1408d0              # double 0.49865938357846762
	.quad	0x3fe0a1ece88f042d              # double 0.51976628705609118
	.quad	0x3fe2ba3d8a647a77              # double 0.58523442296775741
	.quad	0x3fdd60c466c5b4ee              # double 0.45903120075565951
	.quad	0x3fee87a7181ad2ae              # double 0.95405916889156628
	.quad	0x3fdfab102ea4f5be              # double 0.49481586985697479
	.quad	0x3fa9abd381ba6000              # double 0.050139054857197607
	.quad	0x3feb9486b7b9fd17              # double 0.86188064464650693
	.quad	0x3fe117eeb8d6a084              # double 0.53417144871947686
	.quad	0x3fd608001b0a855c              # double 0.34423830643398445
	.quad	0x3fcc2b8de38063b4              # double 0.22007917030785296
	.quad	0x3fd702cb5402347c              # double 0.35954554752317569
	.quad	0x3fe45596c8e1c104              # double 0.63544787630783661
	.quad	0x3fe841f49e410c7c              # double 0.75805121335032721
	.quad	0x3fd898da9039f4d6              # double 0.38432945332153901
	.quad	0x3fe2f90903689fa1              # double 0.59289980569609579
	.quad	0x3fec38e25275b01b              # double 0.8819438562909484
	.quad	0x3fc6955fa9796584              # double 0.17643352294070891
	.quad	0x3fec1ad4b8d4c962              # double 0.87827526187747318
	.quad	0x3fec7f529224a297              # double 0.89054230254722
	.quad	0x3feeb462953774a6              # double 0.95951966422912416
	.quad	0x3fcc29a83ff27a2c              # double 0.22002127764149415
	.quad	0x3fed96a1b6a4c209              # double 0.92463765785765972
	.quad	0x3f92e0e115ae6380              # double 0.018435971210780888
	.quad	0x3fe3b30007d4d7cd              # double 0.61560060052465249
	.quad	0x3febacd9c9230345              # double 0.86484994205975652
	.quad	0x3fd0ea46211c197c              # double 0.26429894669890763
	.quad	0x3feed3fc18e71668              # double 0.9633770452862338
	.quad	0x3fe01dfec260a41d              # double 0.50366151775699886
	.quad	0x3fe34c8f0c163f76              # double 0.60309555397723957
	.quad	0x3fe92e3d6cc4fe3d              # double 0.78689452404064009
	.quad	0x3fd39732397c63de              # double 0.3061032830606204
	.quad	0x3fb12c5029f93398              # double 0.0670824148630359
	.quad	0x3fede796e444fd2e              # double 0.93452019294628541
	.quad	0x3fe4216033fbd750              # double 0.62907419350697502
	.quad	0x3fd1f9203f97f588              # double 0.28083044252692746
	.quad	0x3fedb4f9d5d536a6              # double 0.92834178699714154
	.quad	0x3feb0c9848824882              # double 0.84528745805643291
	.quad	0x3fe0b91a77871f85              # double 0.52259562821653616
	.quad	0x3fd701e8d0aba254              # double 0.35949154260609828
	.quad	0x3fe16bddd9aaa2ce              # double 0.54441730988500026
	.quad	0x3fe6b8890c63b95e              # double 0.71002628726800388
	.quad	0x3fcf41f64e9e8d04              # double 0.2442005046733372
	.quad	0x3fe0d1f9d51ab0d5              # double 0.52563182470251013
	.quad	0x3fc507a762d4b4d0              # double 0.16429607701994664
	.quad	0x3fd0934349a0666a              # double 0.25898821058362975
	.quad	0x3fde9e53b2687a88              # double 0.47841350958507478
	.quad	0x3fe42cc13a29ef95              # double 0.63046323166007545
	.quad	0x3fd124ee7e773cf2              # double 0.26787912702725614
	.quad	0x3fd100294be6114c              # double 0.26563484584791719
	.quad	0x3fd8b59ca937ab96              # double 0.38608471417563217
	.quad	0x3fe2e61b910e3e10              # double 0.59058931666544545
	.quad	0x3fe442571387d858              # double 0.63309816183642464
	.quad	0x3fd7c2ba857da9aa              # double 0.37126029049127374
	.quad	0x3feafe15679165c6              # double 0.84351606586567907
	.quad	0x3fe89c1cded63b7c              # double 0.76905673525639839
	.quad	0x3fe9af9bd621aac0              # double 0.80268661329804303
	.quad	0x3f667c4f09c3d600              # double 0.0027448219026335874
	.quad	0x3fdb3c5e9b985318              # double 0.42555966563058822
	.quad	0x3f95c53399fd9ba0              # double 0.021260076783984894
	.quad	0x3fe747b57485a1a6              # double 0.72750351675226876
	.quad	0x3fe4d068995252c7              # double 0.65044050164814216
	.quad	0x3fe0e6c50a5bd224              # double 0.52817012808970221
	.quad	0x3fef46b333040836              # double 0.97738037075055817
	.quad	0x3fe61fa8b1374033              # double 0.69136461842027186
	.quad	0x3fe17293eb02e77a              # double 0.5452365484299968
	.quad	0x3f8f33d3d2219640              # double 0.015235571718402174
	.quad	0x3fef9e30604067ad              # double 0.988060176841136
	.quad	0x3fe48d3d44305f8b              # double 0.642241128140982
	.quad	0x3fe94f5b35e2bb48              # double 0.79093704723877867
	.quad	0x3fb5aea80040b0a0              # double 0.084696292936032425
	.quad	0x3fd42cb40a56366e              # double 0.3152284718461037
	.quad	0x3fe508940e8da653              # double 0.65729716150708339
	.quad	0x3fe19f2c7350b728              # double 0.55068037531393532
	.quad	0x3fcd58eccfc22900              # double 0.22927627701239572
	.quad	0x3fe0c685346aec29              # double 0.52423343885255236
	.quad	0x3fd9951d8f638e7a              # double 0.39972628596135673
	.quad	0x3feebece6e060692              # double 0.96079179276439874
	.quad	0x3fe000808b3f4b0e              # double 0.50006129452444426
	.quad	0x3fec13d520b92c57              # double 0.87742096320415441
	.quad	0x3fb60da7465d3730              # double 0.086145834616414118
	.quad	0x3fe2aaee5cd4b81e              # double 0.58336561327974201
	.quad	0x3fddc4f546eba51a              # double 0.46514636922673136
	.quad	0x3fddfd5dbaca295c              # double 0.46858924142056479
	.quad	0x3fbdc06b9c039e10              # double 0.11621735152186141
	.quad	0x3fcc19dd8e05eb50              # double 0.21953935084078546
	.quad	0x3fcef50b4c7e1718              # double 0.24185315356242465
	.quad	0x3fc20c376f0ae3a8              # double 0.14099781915663567
	.quad	0x3fe9ed63ac2c2f1a              # double 0.81022819163760862
	.quad	0x3fdfc2585205f188              # double 0.49623687753753432
	.quad	0x3fcf0268d52d8d88              # double 0.24226103219107764
	.quad	0x3fe6b2f743983006              # double 0.70934642030761164
	.quad	0x3fe88728138a5643              # double 0.76649860207061982
	.quad	0x3fee21d39886b40e              # double 0.94162921705503932
	.quad	0x3fec16127ec45d8d              # double 0.87769436606588302
	.quad	0x3fcd95c65ca64750              # double 0.23113326572325343
	.quad	0x3fe5e85a0af14a72              # double 0.68461324822631142
	.quad	0x3fd1f40e5fd49a7c              # double 0.28052100523419887
	.quad	0x3fc722554a903d28              # double 0.18073526516716609
	.quad	0x3fe6993329465397              # double 0.70620115338771228
	.quad	0x3fefa79cbe1005c4              # double 0.98921048280333723
	.quad	0x3fe6b30b5f395deb              # double 0.7093560085149283
	.quad	0x3fda8cbd55139fbc              # double 0.4148400622202606
	.quad	0x3fe62ce7d1d03227              # double 0.69298163394120571
	.quad	0x3fe8dba904200a86              # double 0.77681399160094666
	.quad	0x3fe8edcc67a3df19              # double 0.77902813188754572
	.quad	0x3fd24c6a239d08e4              # double 0.28591397741196389
	.quad	0x3fe85ea6db18a41a              # double 0.76155417244183643
	.quad	0x3fe114e9fda7acdc              # double 0.53380298177708196
	.quad	0x3fe89c53adfc2dd5              # double 0.76908287030658562
	.quad	0x3fdf90340e98fa0c              # double 0.49317647386115548
	.quad	0x3fe66a42cc639ff3              # double 0.70047130508191768
	.quad	0x3feb217221603716              # double 0.84783274191588265
	.quad	0x3fd6d2062bf2c07a              # double 0.35656885425397145
	.quad	0x3fce088378f95b40              # double 0.23463481337486236
	.quad	0x3fd1fc58541316a4              # double 0.28102691851050055
	.quad	0x3fe05bcfe0f2739e              # double 0.51120752272582926
	.quad	0x3fe5416da5a9f2d5              # double 0.6642368541357323
	.quad	0x3fee9e3f9d9ded01              # double 0.95681744370031663
	.quad	0x3fd73f45801b1fac              # double 0.36323678503367307
	.quad	0x3fe5988d0fc04000              # double 0.67487195087778673
	.quad	0x3fbaa0e9f4ff6ff8              # double 0.10401785117522866
	.quad	0x3fee540a77b041af              # double 0.94775889755879017
	.quad	0x3fd7e8d423d958d8              # double 0.37358573437576359
	.quad	0x3fe5d31444a657e3              # double 0.68201650055084106
	.quad	0x3fb6c3cf2672fc50              # double 0.088925310980799254
	.quad	0x3f9bbf3ba9847080              # double 0.027096683713452752
	.quad	0x3fdc045e3817380e              # double 0.43776660420996982
	.quad	0x3fe727a573acb88d              # double 0.72358963577950564
	.quad	0x3fd5fdb963e6aeae              # double 0.34361109500853615
	.quad	0x3fe3aa163268e332              # double 0.6145125374378948
	.quad	0x3fca7ce9435d82d0              # double 0.20693698682136707
	.quad	0x3fc6e810439f1284              # double 0.17895701696228994
	.quad	0x3fdfe45456832986              # double 0.49831112335655126
	.quad	0x3fc58ffa759c8928              # double 0.16845637076137021
	.quad	0x3fd6d62a8dbf9c80              # double 0.35682166903138324
	.quad	0x3fe3578c4b577aae              # double 0.60443701472452971
	.quad	0x3fd248864ce636c2              # double 0.28567655095762856
	.quad	0x3fea289a49e1108f              # double 0.81745638303302026
	.quad	0x3fcdc99119f234d8              # double 0.23271383063221296
	.quad	0x3febc10da6ac9ccb              # double 0.86731607965057245
	.quad	0x3feb980cd6055174              # double 0.86231080819065519
	.quad	0x3fcd86de67138518              # double 0.23067836792964935
	.quad	0x3fc638ad92bebc2c              # double 0.17360467591558526
	.quad	0x3fd75849148cd724              # double 0.36476351744510027
	.quad	0x3fb250abe9496d68              # double 0.071543449835578365
	.quad	0x3fb1462fb407e438              # double 0.06747720856937256
	.quad	0x3f8b782e2bf7d900              # double 0.013412819592286684
	.quad	0x3fa0398aec56ddc0              # double 0.031689015722288882
	.quad	0x3fd9faf21fced064              # double 0.40594151598202743
	.quad	0x3fe6d5ebc5c718ed              # double 0.71361340168439613
	.quad	0x3fc4fd324e768ff4              # double 0.16397694426734655
	.quad	0x3fdc8188cd9dad32              # double 0.44540615157775953
	.quad	0x3fef4f8c1697b683              # double 0.97846035397169861
	.quad	0x3fe2555f4506cfec              # double 0.57292140466460983
	.quad	0x3fccc4e47e63c5c0              # double 0.22475868388532483
	.quad	0x3fb63bce0dcfdb40              # double 0.086850050327353934
	.quad	0x3fe7bf8d2e126009              # double 0.74213274954218023
	.quad	0x3fe43efadcbc31ec              # double 0.63268797981578251
	.quad	0x3fc888ec3badae20              # double 0.19167855180727233
	.quad	0x3fe4d37993077ccf              # double 0.65081480709695849
	.quad	0x3fe2c9320d99fed6              # double 0.58706000000526148
	.quad	0x3fe434137b2c1a31              # double 0.63135694558224575
	.quad	0x3fa65476492b0270              # double 0.043613144332543707
	.quad	0x3fd28286c56b30f4              # double 0.28921670226260621
	.quad	0x3feaf9b59c9cebf5              # double 0.84298210705253374
	.quad	0x3faf377169f07da0              # double 0.06096987169461987
	.quad	0x3fe85dd7d3a404d2              # double 0.76145545326303421
	.quad	0x3fe5d34ba71a8792              # double 0.68204290997913319
	.quad	0x3fe4e0263dad0073              # double 0.65236198469211926
	.quad	0x3fe1fdbc6fffee96              # double 0.56222364306400396
	.quad	0x3fea787672c027ae              # double 0.82720491802432661
	.quad	0x3fd1170e5d550fae              # double 0.26703223337630788
	.quad	0x3fd2a1cca3ef34a6              # double 0.2911254502221915
	.quad	0x3fbf20dbf78af240              # double 0.12159514230274571
	.quad	0x3fedb91f179eb1b9              # double 0.92884783375989521
	.quad	0x3fd5e1e0de9b586a              # double 0.34191152323672347
	.quad	0x3fc6ce32871325f8              # double 0.17816764445733191
	.quad	0x3fce656e6ae44f08              # double 0.23747043818786318
	.quad	0x3fedb87d7fce3100              # double 0.92877078020094928
	.quad	0x3fef41a6839659ec              # double 0.97676397038122564
	.quad	0x3fdb7ec1158e9056              # double 0.4296114645496848
	.quad	0x3f98b3e73e584560              # double 0.024123776607728131
	.quad	0x3fe5c167fc6b219b              # double 0.67985915470585512
	.quad	0x3fc376db22384dd4              # double 0.1520646969880618
	.quad	0x3fe9f830d0586a0b              # double 0.81154671375708298
	.quad	0x3fde1d0ebf26e99e              # double 0.47052353541553227
	.quad	0x3fe4426b5b8290ba              # double 0.63310783265162418
	.quad	0x3fb470aa914b3538              # double 0.07984415099345632
	.quad	0x3fc7b576943f1f00              # double 0.18522531736947911
	.quad	0x3fde996df8a643fa              # double 0.47811459810424106
	.quad	0x3f977b64f5f612a0              # double 0.02293164969661865
	.quad	0x3fbb8bff0a632070              # double 0.10760492328256688
	.quad	0x3fe1ac43cb3bea44              # double 0.55227842039250463
	.quad	0x3fd7fdb5d18be416              # double 0.37486024344940583
	.quad	0x3fee7727c8c10f68              # double 0.95204533777039745
	.quad	0x3fba14d4d7a52cd0              # double 0.1018803621747566
	.quad	0x3fe1c1a8de061cd7              # double 0.55489009250677668
	.quad	0x3fea980314c7a66e              # double 0.83105615671702338
	.quad	0x3feb61aaa58e3f2e              # double 0.85567219100082581
	.quad	0x3fd754837d1af126              # double 0.36453330247219851
	.quad	0x3fe613984bfbb229              # double 0.68989195671526204
	.quad	0x3fdc4c943f60089c              # double 0.44217401684739754
	.quad	0x3fd1e16b5eed7e64              # double 0.27938350935253298
	.quad	0x3fe876cb560c8367              # double 0.76450125509664424
	.quad	0x3fda10e150fb79e4              # double 0.40728028210096867
	.quad	0x3fd8fea1f894c71a              # double 0.39054154658798412
	.quad	0x3fd780e9aea5cb8a              # double 0.36724321418221761
	.quad	0x3fdfc6ea5980f146              # double 0.4965158342418089
	.quad	0x3fba931e1dd8bc38              # double 0.10380733708073897
	.quad	0x3feb2ef2f52b4f49              # double 0.84948108563046631
	.quad	0x3fe211d91c1251fe              # double 0.56467872126319185
	.quad	0x3fd0d96bf1c50ba2              # double 0.26327036485980149
	.quad	0x3fd5697faaadc62e              # double 0.33456412952282022
	.quad	0x3fb984def30d6878              # double 0.099683698977431123
	.quad	0x3fe0485107a7c1f4              # double 0.5088277005689279
	.quad	0x3fea9ba1fd7e712a              # double 0.83149814138918043
	.quad	0x3f80f67c53283d40              # double 0.0082826340558584954
	.quad	0x3fedf2cdfa8ee9d3              # double 0.93588923394355061
	.quad	0x3fe17364923f9dd8              # double 0.54533604206238362
	.quad	0x3fe1bf9f66cfd9f7              # double 0.55464143829777768
	.quad	0x3fcbaa6c8e9fc870              # double 0.21613842929906779
	.quad	0x3fe97355f8a5ccc0              # double 0.79532908023829663
	.quad	0x3fd40aa83787d5aa              # double 0.31315045760069415
	.quad	0x3fdaea80a6a6cf94              # double 0.42056289934702673
	.quad	0x3fe5584ce69b69dd              # double 0.66702885666319001
	.quad	0x3fe6b6dd87e3ceb4              # double 0.70982243100157527
	.quad	0x3f967f482a7ec880              # double 0.021969916909889253
	.quad	0x3fe24e61d647240e              # double 0.57206813670302537
	.quad	0x3fa7132324b54810              # double 0.045067880850766184
	.quad	0x3fd2ff6152a05dce              # double 0.29683716839778362
	.quad	0x3fc4d7031fd641ac              # double 0.16281165174997392
	.quad	0x3fe3226cfe2c9209              # double 0.59795236247424655
	.quad	0x3fbe1c1baedb17e0              # double 0.11761639613095509
	.quad	0x3fe6ee515b6f1254              # double 0.71659152849367524
	.quad	0x3fe4e7afdbe151b1              # double 0.6532820982488855
	.quad	0x3fd311311a38135c              # double 0.29792430458501484
	.quad	0x3fe283999e8f2eb9              # double 0.57856446236242853
	.quad	0x3fe74200471f5b9c              # double 0.72680677310096398
	.quad	0x3f795df1f6e74e80              # double 0.006193108724307117
	.quad	0x3fd45dd526d576e4              # double 0.31822708885543549
	.quad	0x3fd5d3cdef136410              # double 0.34105251643410472
	.quad	0x3fe93fb8dc6d32a2              # double 0.78902857830106066
	.quad	0x3fd1facc6fdc6076              # double 0.28093253063116863
	.quad	0x3fe5bd188d2eaabb              # double 0.67933299612680942
	.quad	0x3fd640fc9b387dd4              # double 0.3477164760424476
	.quad	0x3fdfdf0fd56a09bc              # double 0.497989614879909
	.quad	0x3fe9d4aed334ba3a              # double 0.8072122693172965
	.quad	0x3fbb3fe58a44b5d8              # double 0.10644373536771157
	.quad	0x3fde7eba46a917ea              # double 0.47648484135095137
	.quad	0x3fc8f33c662da648              # double 0.19492297162223537
	.quad	0x3fd8c25e73bed2c4              # double 0.38686333945524276
	.quad	0x3fec470f34f2c4bf              # double 0.88367424336879441
	.quad	0x3feb47911efc15c3              # double 0.85248619128895375
	.quad	0x3fd0a0a3456656b8              # double 0.25980455186195739
	.quad	0x3fdd5ee82f3068c2              # double 0.45891766174612425
	.quad	0x3fc24f45f08bd7f4              # double 0.14304422612593692
	.quad	0x3fe5258877ac1177              # double 0.66083167432274947
	.quad	0x3fe1fa6b595a4f89              # double 0.56181876613344273
	.quad	0x3fdf4504bd147ad6              # double 0.48858755555003819
	.quad	0x3fe7c5e3a1d72c43              # double 0.74290639504887002
	.quad	0x3fd65b50f6a6c37c              # double 0.34932350241711396
	.quad	0x3fd687329a438e52              # double 0.35200181069214864
	.quad	0x3fed13deed50fa04              # double 0.90867563582270394
	.quad	0x3fc0b90c587bc97c              # double 0.13064722366796022
	.quad	0x3fea1ae4e311e5f8              # double 0.81578296994774657
	.quad	0x3fef62e888079e1d              # double 0.98082377022086897
	.quad	0x3fa2b86794a270d0              # double 0.036563145536293029
	.quad	0x3f938492fd588580              # double 0.019060417855262468
	.quad	0x3fdc1d146ecfb20e              # double 0.43927489110390716
	.quad	0x3fe89ab494a29fcb              # double 0.76888493566820537
	.quad	0x3fdb84e2cdd26828              # double 0.42998571491046045
	.quad	0x3fe2ded87c7d41a3              # double 0.58970283808053059
	.quad	0x3fd621ca69c34ce4              # double 0.3458124192085974
	.quad	0x3fa0d0f12f4f3b70              # double 0.032844101929746183
	.quad	0x3fce6879b7a87914              # double 0.23756333797150175
	.quad	0x3fea994c4cb9b20d              # double 0.83121314034866745
	.quad	0x3fd87892c5b0ae08              # double 0.38235921197585343
	.quad	0x3fb9b648124c8f88              # double 0.10043764540438194
	.quad	0x3f9fcfe2f7fb5ac0              # double 0.031066461930857825
	.quad	0x3fccabe3d599ffcc              # double 0.22399566583408015
	.quad	0x3fe93e40dabe24f7              # double 0.78884928439325008
	.quad	0x3fed9ab3754d48ba              # double 0.92513440046811657
	.quad	0x3fe30ebb2ea4807e              # double 0.59554823980216987
	.quad	0x3fc6f592803bd3e8              # double 0.17936927091037025
	.quad	0x3fd13c97feeeb0b8              # double 0.26932334800472857
	.quad	0x3fcb637debc3e034              # double 0.21397375118226736
	.quad	0x3fefb75943dde071              # double 0.99113143210617071
	.quad	0x3fe6cdff3a8dc2bf              # double 0.71264611660270549
	.quad	0x3fd3a6762613e7da              # double 0.30703500479250823
	.quad	0x3fde3a633b114a56              # double 0.47231369751276497
	.quad	0x3fd25db4176b83ec              # double 0.28696920668704595
	.quad	0x3fe0dfab11b4876a              # double 0.52730325182004134
	.quad	0x3f9b0286b798fec0              # double 0.026376824336920235
	.quad	0x3fc935ca43ff4f60              # double 0.1969540435808268
	.quad	0x3fe2baf33a33b6b3              # double 0.58532105796412848
	.quad	0x3fe7b28d9e49007d              # double 0.740546044493399
	.quad	0x3fc539bd07138268              # double 0.1658245358039665
	.quad	0x3fec9faf5db8806b              # double 0.89449280075861048
	.quad	0x3f7a55a7518e5880              # double 0.0064293418771709243
	.quad	0x3f83a3c3f570ca80              # double 0.0095897015836261534
	.quad	0x3feb92c25d2eb6de              # double 0.86166494559958173
	.quad	0x3fc52082c72813a4              # double 0.16505465244713691
	.quad	0x3fede3cb17edd9d4              # double 0.93405680345204666
	.quad	0x3fec741163ae97c6              # double 0.88916844815388951
	.quad	0x3fe312c69c02d244              # double 0.59604196997549552
	.quad	0x3fdd2219215f002a              # double 0.45520618685623282
	.quad	0x3fdd1ab3092bc518              # double 0.45475459952929631
	.quad	0x3fb3f2e4d6be47e8              # double 0.077925016810950987
	.quad	0x3fd639af43bd64da              # double 0.34727079024521645
	.quad	0x3fdc33be02ce9b5e              # double 0.44065809511305598
	.quad	0x3fefd51c8565a94a              # double 0.99476457647441774
	.quad	0x3fedb3e2bb207bdb              # double 0.92820869968624764
	.quad	0x3fea23604a342d91              # double 0.81681837552007341
	.quad	0x3fea41c11da0b2ee              # double 0.82052665506998124
	.quad	0x3feb9d4a50261db5              # double 0.86295047430114968
	.quad	0x3fe31d50582247c7              # double 0.59732835019735198
	.quad	0x3fd5ab92fc9e351c              # double 0.33859705610014301
	.quad	0x3fe339715655d2fa              # double 0.6007620512233125
	.quad	0x3fc745cb24c1d7f8              # double 0.18181742949280966
	.quad	0x3fee3a80ba0755db              # double 0.94464145978661962
	.quad	0x3fcd65494714aa08              # double 0.22965351076830154
	.quad	0x3fe68ad7592e2d48              # double 0.70444838922541297
	.quad	0x3fefb440c4a3d0a4              # double 0.99075354009848526
	.quad	0x3fe14f6ebde49492              # double 0.54094636047797651
	.quad	0x3fe9b7ad098be0ab              # double 0.80367137779741904
	.quad	0x3fc00155d97f8518              # double 0.1250407516481935
	.quad	0x3fe93cf924a20168              # double 0.78869301943636305
	.quad	0x3fe7d427c58fe07d              # double 0.7446478708871066
	.quad	0x3fe623589bd2db85              # double 0.69181471285161023
	.quad	0x3fd49df0fce43a94              # double 0.32213997551381479
	.quad	0x3fe3475f1687d266              # double 0.60246233368395674
	.quad	0x3fdf2e4ce4c92498              # double 0.4872009500728125
	.quad	0x3fedc127a26d0640              # double 0.92982846950344111
	.quad	0x3fb3dbdcbdf22f58              # double 0.077573582051795653
	.quad	0x3fce67b8e241ad30              # double 0.23754035041506816
	.quad	0x3fe0b8fb0eaa955b              # double 0.52258065094489881
	.quad	0x3fdf7ee190192d2a              # double 0.49211920806983989
	.quad	0x3fd937046caf005c              # double 0.39398298848755586
	.quad	0x3fc1205240fa2f04              # double 0.13379886791914697
	.quad	0x3fb3e656456b2340              # double 0.077733413646581262
	.quad	0x3fe4a77145bce993              # double 0.64543975468341086
	.quad	0x3fea8fad4ffc5da4              # double 0.83003869650103867
	.quad	0x3fec781fb469da98              # double 0.88966355549821952
	.quad	0x3fdf03f134217ab0              # double 0.48461561289688415
	.quad	0x3fd747382e071b06              # double 0.363721890400868
	.quad	0x3fd2d200fa56b93a              # double 0.29406761595864206
	.quad	0x3fedec336c7bebee              # double 0.93508311451239279
	.quad	0x3fe4c6ecb2d29305              # double 0.64928278852730215
	.quad	0x3fc8d3b5399e5bdc              # double 0.19396081269653009
	.quad	0x3fed9b23b909e31b              # double 0.92518793239932806
	.quad	0x3fed3086def13190              # double 0.91217368644133678
	.quad	0x3fe46f666f2ad53e              # double 0.63859864914289921
	.quad	0x3fe0bdbf36c63f50              # double 0.52316246698499391
	.quad	0x3fd80962ad7714f4              # double 0.3755728429790246
	.quad	0x3fd5d6eb3a1312b0              # double 0.34124260588968536
	.quad	0x3fd01a49403d1f1c              # double 0.25160437844577799
	.quad	0x3fe7de4de0994a2b              # double 0.74588674418402456
	.quad	0x3fc8d80235f8f760              # double 0.19409206042649441
	.quad	0x3fe46e1c1b2a8fc9              # double 0.63844113641652556
	.quad	0x3fe206e96f680b52              # double 0.56334373244349423
	.quad	0x3fdeffa45b3c3678              # double 0.48435315046012972
	.quad	0x3fd7b1ac59f67808              # double 0.37021931443621314
	.quad	0x3fc7b688e9b84ebc              # double 0.18525802051646234
	.quad	0x3fd1fbd9935a5b84              # double 0.28099669828355212
	.quad	0x3fa9e83b0163c6b0              # double 0.050599903030059123
	.quad	0x3febf4d746012602              # double 0.87363780663253032
	.quad	0x3fa7f981c449ed90              # double 0.046825461588890893
	.quad	0x3fdf93e0b73ef30c              # double 0.49340074439150849
	.quad	0x3fc3ac13a8b6591c              # double 0.15368886697678696
	.quad	0x3fc42ae2962206bc              # double 0.15755874949177506
	.quad	0x3feb4bf00028b802              # double 0.85301971465173687
	.quad	0x3fee81d164667b12              # double 0.95334691628872492
	.quad	0x3fd910f551842d5a              # double 0.39166005096986611
	.quad	0x3fd20c6c6fbc8072              # double 0.28200827514411408
	.quad	0x3fefe53f66e9443f              # double 0.99673433399050981
	.quad	0x3fa9752bfbf20d10              # double 0.049722074990336762
	.quad	0x3fe054d3ecf4dc9a              # double 0.51035496025623961
	.quad	0x3fe86cf6c8350ccb              # double 0.76330126860593717
	.quad	0x3f9674c499620520              # double 0.021929809438465786
	.quad	0x3fe4e70059f5678d              # double 0.65319840974847099
	.quad	0x3fe036698dbb1041              # double 0.50664212877064341
	.quad	0x3feec62f572f6063              # double 0.96169249561627301
	.quad	0x3fea45cfb5d06880              # double 0.82102189550938931
	.quad	0x3fecef02d51a07f7              # double 0.90417615529463446
	.quad	0x3fd53fd75002cd82              # double 0.3320215493542592
	.quad	0x3fdcde6f0ede190c              # double 0.45107628299628355
	.quad	0x3fea409c08f3cbe8              # double 0.82038690327169395
	.quad	0x3fe90426fb17f3be              # double 0.78175686876021877
	.quad	0x3feca8ed924325c1              # double 0.89562109534124812
	.quad	0x3fe1a59d5dcd113a              # double 0.55146663971439769
	.quad	0x3fd1ce269dc99288              # double 0.27820744904446615
	.quad	0x3fe91cc49208dfbe              # double 0.7847617008437664
	.quad	0x3feaa20effde7f47              # double 0.83228254293860793
	.quad	0x3fe48b34ac796b18              # double 0.64199289022812689
	.quad	0x3febf142cfd43acb              # double 0.87320080367666131
	.quad	0x3fe35a35b4bb15bd              # double 0.60476193713173354
	.quad	0x3fe2657d776fc122              # double 0.57488892867516861
	.quad	0x3fb0c65b16b8c000              # double 0.065526669547352867
	.quad	0x3fd269b10cf6ea56              # double 0.28770090356889477
	.quad	0x3fe4a8de57d64a8d              # double 0.64561383395842287
	.quad	0x3fe004158612150a              # double 0.50049854455633747
	.quad	0x3fdc7a4039e5d2b8              # double 0.44496160177304089
	.quad	0x3fe8d4e672200af7              # double 0.77598879137107601
	.quad	0x3fe243324043d98c              # double 0.57070267249837192
	.quad	0x3fd1e66bf7e18cbe              # double 0.2796888275826851
	.quad	0x3fcd5178457f56cc              # double 0.2290487613051283
	.quad	0x3fdf18ec870cbb42              # double 0.48589623630953238
	.quad	0x3feef8e1b8e56689              # double 0.96788107025641167
	.quad	0x3fe1070a2cb83223              # double 0.53210934385566977
	.quad	0x3fef50061067a184              # double 0.97851851657928579
	.quad	0x3fdc788584e9090a              # double 0.44485605220337787
	.quad	0x3fefc632fa2e6fcf              # double 0.9929442297320693
	.quad	0x3fe3b785a2538d78              # double 0.61615258888598046
	.quad	0x3fefef9354236668              # double 0.99799505646951747
	.quad	0x3fc4757a6cfd334c              # double 0.15983515092593803
	.quad	0x3fee31dfe44921dc              # double 0.94358820521398056
	.quad	0x3fd26fadac9373f4              # double 0.28806630948184808
	.quad	0x3feb4e8d9b75c9ab              # double 0.85333900798132356
	.quad	0x3fe97d2f3859f6fb              # double 0.79653130537164374
	.quad	0x3fd5c44a3a2fac16              # double 0.34010558778999334
	.quad	0x3fc6ece435bc0d94              # double 0.17910435317763229
	.quad	0x3fd599c5446724e0              # double 0.33751041107150392
	.quad	0x3fb7829bdf15cb80              # double 0.091836683239121086
	.quad	0x3fede0c2cb352bcd              # double 0.93368663491252735
	.quad	0x3fed8648622ea7d2              # double 0.92264193702907904
	.quad	0x3fdc345398886ab4              # double 0.44069375892437823
	.quad	0x3fd0378270c08d6a              # double 0.25338803301766311
	.quad	0x3f928811896cbf40              # double 0.018097185147041062
	.quad	0x3fc3bcc8fd8d6068              # double 0.15419876461487836
	.quad	0x3fe64ab84b2a3606              # double 0.69662108116762123
	.quad	0x3fee1bc61565b87b              # double 0.94089035205048732
	.quad	0x3fe404f0805ae67c              # double 0.6256029612479348
	.quad	0x3fd61b7d3f9452b6              # double 0.34542781075405615
	.quad	0x3fcd5634c9005b78              # double 0.22919330420037531
	.quad	0x3fe1d6b7aa4c364b              # double 0.55746062527914242
	.quad	0x3fe28b13b97278fb              # double 0.57947717876575611
	.quad	0x3fd68681fb3db7c8              # double 0.35195970092069873
	.quad	0x3fe696078d383c4a              # double 0.70581414777724061
	.quad	0x3fec5380e6e9fabc              # double 0.88519330120455874
	.quad	0x3fed2bfb5c6ddd31              # double 0.91161888172692873
	.quad	0x3fcb992c2fe5054c              # double 0.21561195696453195
	.quad	0x3fe1c010bc64f127              # double 0.55469548030626903
	.quad	0x3f61a03760e96700              # double 0.0021515924084213323
	.quad	0x3fd7caf5693ccac8              # double 0.37176261212441064
	.quad	0x3fd0ec85f66091e6              # double 0.26443623600269317
	.quad	0x3fef733f0b0e8dd1              # double 0.9828181472734575
	.quad	0x3fd6ad34b29fafb0              # double 0.35432164615371686
	.quad	0x3fdd8cfd81b6687c              # double 0.46173036257972178
	.quad	0x3faf1fe599c26dc0              # double 0.060790228862255713
	.quad	0x3fdd3848d67877c4              # double 0.45656033462898571
	.quad	0x3fc05e6c6327df44              # double 0.12788157312001591
	.quad	0x3fe7c5ea35f803ed              # double 0.74290953198226151
	.quad	0x3fda45e29c2a6576              # double 0.41051545382068555
	.quad	0x3f9592d9a5c06060              # double 0.02106800150076571
	.quad	0x3fef061517f84db6              # double 0.96949248010280686
	.quad	0x3f8e6690d98afc00              # double 0.014844066275484735
	.quad	0x3faf4a868aa35b70              # double 0.061115459846113107
	.quad	0x3fd51318969dce8e              # double 0.32929053028713262
	.quad	0x3fea62c03d3ed723              # double 0.82455455743795303
	.quad	0x3fef359e57b1504f              # double 0.97529523017375108
	.quad	0x3fe38520c85766c7              # double 0.61000098351652177
	.quad	0x3fdca4a1a26b1552              # double 0.44754830228005915
	.quad	0x3fe89a633e538e14              # double 0.76884615109560394
	.quad	0x3fdc0cf585511788              # double 0.43829095858779299
	.quad	0x3fdd5fcbd89b3504              # double 0.45897194054562385
	.quad	0x3fece8a6036ce030              # double 0.90339947384837238
	.quad	0x3fe51cb58f37cc96              # double 0.65975454303988346
	.quad	0x3fd4749527815b92              # double 0.3196156392854671
	.quad	0x3fd89987c3a6711c              # double 0.38437074762784262
	.quad	0x3fda25885266622c              # double 0.40854080244892788
	.quad	0x3fed7cbae2860db9              # double 0.92147583239459785
	.quad	0x3fe3b395783935a1              # double 0.61567185860774398
	.quad	0x3fec0e656ffaad17              # double 0.87675735350549899
	.quad	0x3fe4ab56b7c87889              # double 0.64591537375578512
	.quad	0x3fb17a3ab1871c10              # double 0.068271320668927382
	.quad	0x3fee49f53ed2a6ee              # double 0.94652807493295454
	.quad	0x3fcf83a6799130d0              # double 0.24620514808555649
	.quad	0x3fdb85cc93e34278              # double 0.43004145090257095
	.quad	0x3fedcfb3fcf74526              # double 0.93160437972452281
	.quad	0x3fe5fc7b2e75b904              # double 0.68707045625868135
	.quad	0x3faa22dc051fab60              # double 0.051047206521465993
	.quad	0x3fe870b630d91275              # double 0.76375875034916751
	.quad	0x3fa767d5b83d8380              # double 0.045714071979779725
	.quad	0x3fa235dca3d4be70              # double 0.035567183493523724
	.quad	0x3fea0b67f6b2e37d              # double 0.81389234717708769
	.quad	0x3fe85b132f588074              # double 0.761117546531763
	.quad	0x3fe3dc034fd9f944              # double 0.62060704799640876
	.quad	0x3fc943715422b2f8              # double 0.19737068756275966
	.quad	0x3fe2bff0145f41df              # double 0.58592990855145988
	.quad	0x3fd7660f7b261b54              # double 0.36560427690749475
	.quad	0x3fef439d9352639d              # double 0.97700384877963453
	.quad	0x3fec4207030abf0b              # double 0.88305998415123221
	.quad	0x3fe3cb5df0d511aa              # double 0.61857506787832972
	.quad	0x3f7c61b44fe00680              # double 0.0069291156232808016
	.quad	0x3fe36cdb38e608ed              # double 0.60703812706949878
	.quad	0x3fde42c7f8179f72              # double 0.47282599666367908
	.quad	0x3fd53e8d8f278e68              # double 0.33194293003018638
	.quad	0x3fe808d609408bc7              # double 0.75107862288529581
	.quad	0x3fc1935f46d885d8              # double 0.13730994185702516
	.quad	0x3fd8a364b4a985de              # double 0.38497274058144437
	.quad	0x3fca42e2a0771880              # double 0.20516617617812827
	.quad	0x3fa39fe805653620              # double 0.038329363497364932
	.quad	0x3fe8cb25df7fa62a              # double 0.77479833271099108
	.quad	0x3fe6b935b5f92f28              # double 0.71010861913371048
	.quad	0x3fd536858bb68236              # double 0.33145273822632093
	.quad	0x3fd720e7ca131178              # double 0.36138338788830238
	.quad	0x3fed03422a3f809e              # double 0.90664776088307852
	.quad	0x3fe59c276ebe4393              # double 0.67531177167448886
	.quad	0x3fef9c71c0854495              # double 0.98784720994639718
	.quad	0x3fe4dce144846f6a              # double 0.65196288473405883
	.quad	0x3fea997ec8e62147              # double 0.83123721349787949
	.quad	0x3fd3db712e261540              # double 0.31026868349757208
	.quad	0x3f7f24673073ee00              # double 0.0076030760603731373
	.quad	0x3fbbe52117d68b28              # double 0.10896498519882114
	.quad	0x3fd2243d37c99eb4              # double 0.28346186111455585
	.quad	0x3fdeb0eaf8492cf6              # double 0.47954820868171966
	.quad	0x3fdc8d93f94e423a              # double 0.44614123674640249
	.quad	0x3fd1c8295821817c              # double 0.27784188849002311
	.quad	0x3fdd7dfde4f57854              # double 0.46081492766632448
	.quad	0x3fd74798330e808c              # double 0.36374478326798321
	.quad	0x3fb9cfab4f5d1048              # double 0.10082503020845579
	.quad	0x3fe7c67559f9db6e              # double 0.74297587941587806
	.quad	0x3fd679dcdccc923e              # double 0.35118791162884466
	.quad	0x3fea9f7ad403d1ec              # double 0.83196774872936662
	.quad	0x3fd259a1558d8e46              # double 0.28672059397488103
	.quad	0x3fe680c7df506d9d              # double 0.70322030654954271
	.quad	0x3fee5a9c3944c4f4              # double 0.94856082139281605
	.quad	0x3fd834ca9b3e208e              # double 0.3782221332589949
	.quad	0x3fd74c5a04aec608              # double 0.36403513390823194
	.quad	0x3fda6624ae15b85e              # double 0.41248433113549321
	.quad	0x3fd46ed823619e62              # double 0.31926539855201075
	.quad	0x3fd9030259846746              # double 0.39080866567529815
	.quad	0x3fd4fa2823456f82              # double 0.32776835865455933
	.quad	0x3fd060c2d2a024e4              # double 0.25590582436468723
	.quad	0x3fe38aff93a9b42f              # double 0.6107175716439367
	.quad	0x3fda90b7be4ef9f6              # double 0.41508287033857927
	.quad	0x3fd36eedb1857f0c              # double 0.3036455377204994
	.quad	0x3fe0d1492aa3184a              # double 0.52554758384281652
	.quad	0x3fee3c41ad73b0b1              # double 0.94485553624465102
	.quad	0x3fe8026f345ee5f2              # double 0.75029716709758376
	.quad	0x3fe30147d205060f              # double 0.59390631694276574
	.quad	0x3fdac1a185e1ac02              # double 0.41806829523437739
	.quad	0x3fa0a088969a0530              # double 0.032474773773183307
	.quad	0x3fc54c8adc744ef0              # double 0.16639838947650487
	.quad	0x3fe5eb4b57008eab              # double 0.68497244827854809
	.quad	0x3fe4d1adcafba89f              # double 0.65059556622624715
	.quad	0x3fe0758afed69966              # double 0.51434850476361471
	.quad	0x3fece9d5f664ed11              # double 0.90354440807223757
	.quad	0x3fccdf53d6ee16c0              # double 0.22556541437750433
	.quad	0x3feba6772d8bee7c              # double 0.86407050033399412
	.quad	0x3fd090e2140d1502              # double 0.25884296377292071
	.quad	0x3fde6f91aecf5d00              # double 0.47555963584223093
	.quad	0x3fdeb20c8ab7695e              # double 0.479617248025212
	.quad	0x3fce9eff2f9983e0              # double 0.23922719787790836
	.quad	0x3faba4e9321055b0              # double 0.053992545472435594
	.quad	0x3feee36091def399              # double 0.96525600901042019
	.quad	0x3fe61a67db418cca              # double 0.69072335074852131
	.quad	0x3fefa2feb0b5d84b              # double 0.9886468364118256
	.quad	0x3fe34be0e2e9e2f4              # double 0.60301250762048975
	.quad	0x3fda31efda2d4eb2              # double 0.40929790788980391
	.quad	0x3fc465d0c712ce10              # double 0.15935716362365371
	.quad	0x3fa8fe753144cc30              # double 0.04881635881829316
	.quad	0x3fad46040219a970              # double 0.05717480207097736
	.quad	0x3fd11dd6d85ec5ae              # double 0.26744624261763306
	.quad	0x3feb9e8125a3e11b              # double 0.8630986914786577
	.quad	0x3fc2cbc99b7653ec              # double 0.14684410181931129
	.quad	0x3fd1d996b0573708              # double 0.27890555592317456
	.quad	0x3fefd2847dc41cdc              # double 0.99444794238743439
	.quad	0x3fdce20f1089ae90              # double 0.4512975369932315
	.quad	0x3fc4c8cd9f8dbe4c              # double 0.16237802782733224
	.quad	0x3fed0b7fa95befef              # double 0.90765364721255348
	.quad	0x3fe13ec1392733a4              # double 0.53891049540253677
	.quad	0x3fddbbfbeedd0562              # double 0.46459863974094706
	.quad	0x3f80feae16cd3300              # double 0.0082982636173709601
	.quad	0x3fef4df8225845ff              # double 0.97826773364994312
	.quad	0x3fded6801f2d580a              # double 0.48184207005158497
	.quad	0x3fea518f53fe6666              # double 0.82245603947667401
	.quad	0x3fec3c7705848e88              # double 0.8823809726495293
	.quad	0x3fe5beb827d218dc              # double 0.67953117158392784
	.quad	0x3fe491c6bc61ac6b              # double 0.64279495995778058
	.quad	0x3fe3f50d5a42a338              # double 0.62366359356847223
	.quad	0x3fc15b431fc2c090              # double 0.13559760142152699
	.quad	0x3fdf4243712843a6              # double 0.48841939974323123
	.quad	0x3fb6b0d80f02a1a0              # double 0.088635924973124336
	.quad	0x3fe0052e68f1453c              # double 0.50063248154234641
	.quad	0x3fd5b1c4d5fb22b8              # double 0.33897515198308836
	.quad	0x3f92c0d0ae9812a0              # double 0.01831365647923866
	.quad	0x3fd43b2a9da40d90              # double 0.31611123461353774
	.quad	0x3fe4b6d9149d6e19              # double 0.64732030893668757
	.quad	0x3fe47591ea9e3cdf              # double 0.63935180496073574
	.quad	0x3fe190b55bc7b166              # double 0.54891460347930088
	.quad	0x3fe3ed35c4fadda2              # double 0.6227063033356226
	.quad	0x3feaf340a4b14be1              # double 0.84219391027943058
	.quad	0x3fe448a87c84630e              # double 0.63386940307381834
	.quad	0x3fc965f1c3b35f50              # double 0.1984235959596341
	.quad	0x3fe1e17da833e8b0              # double 0.55877573825934768
	.quad	0x3fec285b76ad4dd6              # double 0.87992642573447699
	.quad	0x3fc5ae03ddf321ac              # double 0.16937301957501683
	.quad	0x3f92e9e62925b180              # double 0.018470379125049785
	.quad	0x3fe6f504d1c92160              # double 0.71740952466738506
	.quad	0x3fe54a6f521a8cdd              # double 0.66533628497964126
	.quad	0x3fb7a07ed905e4e0              # double 0.092292716964851973
	.quad	0x3fef698b71cae71c              # double 0.98163387513270405
	.quad	0x3fdec3f45cfe1b84              # double 0.48071011620816528
	.quad	0x3fc83e9c754002c8              # double 0.18941074109172562
	.quad	0x3fe25000f86df875              # double 0.57226608773613796
	.quad	0x3fd82dc55fd3aa2c              # double 0.37779363973700941
	.quad	0x3feeee91d85ac99d              # double 0.96662227875485806
	.quad	0x3fe59579c9335ccd              # double 0.67449654862402897
	.quad	0x3fe394733bf79592              # double 0.61187135422066974
	.quad	0x3feda14f86a615fe              # double 0.92594124125088206
	.quad	0x3feb535a121d2880              # double 0.85392478502150482
	.quad	0x3fc499654fb6c828              # double 0.16093126671108959
	.quad	0x3fe09a5995cf6af6              # double 0.51884154567537055
	.quad	0x3fef5fe7fdd2706f              # double 0.98045730185141433
	.quad	0x3fe36d8cd8b4c3f4              # double 0.60712282491124236
	.quad	0x3fe04b2dbb9aafa6              # double 0.50917708054975175
	.quad	0x3fe6abc95d213843              # double 0.70847004117400336
	.quad	0x3fe158b9be9c4420              # double 0.54208075741383155
	.quad	0x3fe9e9e534092719              # double 0.80980167544587112
	.quad	0x3fec074f6a7c89a7              # double 0.87589236066951492
	.quad	0x3fe750e37283c245              # double 0.72862408033513104
	.quad	0x3fe511fd9acd5112              # double 0.65844612345475384
	.quad	0x3fdcc2900c60245e              # double 0.44937516411352429
	.quad	0x3fd3f569d2c1d8b4              # double 0.31185384351500578
	.quad	0x3fd33467e69b714c              # double 0.30007360000833638
	.quad	0x3fc31a857a8c7920              # double 0.14924686893295647
	.quad	0x3feb741da4130836              # double 0.85792429013986893
	.quad	0x3fe61ce146cb8569              # double 0.69102538897656729
	.quad	0x3fed9a97738cacb7              # double 0.92512104576362375
	.quad	0x3fef4cc3bb5ea751              # double 0.97812067599918794
	.quad	0x3fb4bfa558d74da8              # double 0.081049284162239332
	.quad	0x3fc164b51576bad0              # double 0.13588584468876386
	.quad	0x3fa5db77af9286b0              # double 0.042690029318021572
	.quad	0x3fe580a661a532f1              # double 0.67195433684682204
	.quad	0x3fc6a84f1f6fc68c              # double 0.177011385297693
	.quad	0x3fe7be6d5617d4b9              # double 0.74199549498611994
	.quad	0x3fdd32a532431168              # double 0.45621614368817243
	.quad	0x3fe92d60da65dff0              # double 0.78678934722756644
	.quad	0x3f8e91e25b1d6b40              # double 0.014926689534765836
	.quad	0x3fae0518c6f3d490              # double 0.05863263538950847
	.quad	0x3fe77f0438020cf4              # double 0.73425494135918123
	.quad	0x3fe48fdc2423ecc6              # double 0.64256102617891808
	.quad	0x3fed08814bca4b39              # double 0.90728821566367579
	.quad	0x3fd68076a3229faa              # double 0.35159078532387389
	.quad	0x3fcb0c8229b74340              # double 0.21131922757060728
	.quad	0x3fdb53ee7b5cfdc6              # double 0.42699777648155324
	.quad	0x3fe53a7b14ae3a87              # double 0.66338876761604204
	.quad	0x3fed0f2dbf870436              # double 0.9081028691072166
	.quad	0x3fccc3fefba76288              # double 0.22473132407937535
	.quad	0x3fb9aed2c4a3d2a8              # double 0.10032384205608003
	.quad	0x3fd2e719aa36bd48              # double 0.29535524008220593
	.quad	0x3fb2f66d30afd3d8              # double 0.074072670351440606
	.quad	0x3fe3a88235f42792              # double 0.61431990182721763
	.quad	0x3f968f4cdcc597a0              # double 0.022031022047847792
	.quad	0x3fefaf12631e2942              # double 0.99012107237766878
	.quad	0x3fd64c9f5835545a              # double 0.3484266625794753
	.quad	0x3fe8fac18ba0d51a              # double 0.78060986777441888
	.quad	0x3fde5b80a0d49198              # double 0.47433486658180746
	.quad	0x3fe6526d74f990ea              # double 0.6975619587579136
	.quad	0x3fe41304bf404c20              # double 0.62732159951918121
	.quad	0x3fe6c5621e86315d              # double 0.71159463845973969
	.quad	0x3fe2d20745b18554              # double 0.58813823329925663
	.quad	0x3fe7fc4fe56e8dd8              # double 0.749549816235624
	.quad	0x3fee2090319c89d0              # double 0.94147500695935982
	.quad	0x3fe93dac6b5c11f1              # double 0.78877850502663993
	.quad	0x3fc19c9c3a65526c              # double 0.13759186602932816
	.quad	0x3fe2c6668af70285              # double 0.58671881810740045
	.quad	0x3fbb1fae4dfa00f8              # double 0.1059521618244651
	.quad	0x3fe7b847ab736ac3              # double 0.74124511229032242
	.quad	0x3fcdf1f8f7f05ebc              # double 0.23394691568750214
	.quad	0x3fe3b9485bf6a7a1              # double 0.61636751138324908
	.quad	0x3fe7bd864811e70a              # double 0.74188531948240777
	.quad	0x3fe454538647e7db              # double 0.63529373385176358
	.quad	0x3fc90307c6bef050              # double 0.19540497974765225
	.quad	0x3fd2fad2fbbba772              # double 0.29655909140875913
	.quad	0x3fcc2b20deafcb68              # double 0.22006617425321484
	.quad	0x3fe7cc73ba93b68f              # double 0.74370752754994551
	.quad	0x3fc7c547ca45e294              # double 0.18570802094088334
	.quad	0x3facba526809e060              # double 0.056109023284933057
	.quad	0x3fad5f40fc13df90              # double 0.057367354174799989
	.quad	0x3fee08eecf44cfae              # double 0.93859043581186596
	.quad	0x3fede4a2367cef82              # double 0.93415938036149293
	.quad	0x3f8032da6e0bdb40              # double 0.0079094948609800264
	.quad	0x3fc5cc3306a2d590              # double 0.17029416870142855
	.quad	0x3fc873afa472f1d4              # double 0.19103045968758059
	.quad	0x3fe12b74338d150e              # double 0.53655443256926261
	.quad	0x3fdff2679277563a              # double 0.49917020133338819
	.quad	0x3fe8766ee896f804              # double 0.76445718219451963
	.quad	0x3fd3bcb6fa927ebc              # double 0.30839323491998605
	.quad	0x3fea88aa8571b78a              # double 0.82918287337609908
	.quad	0x3fd5ed14264325f4              # double 0.34259513603737379
	.quad	0x3fea4832c74c20de              # double 0.82131327557820177
	.quad	0x3fd6d0b8a1cf97d0              # double 0.3564893322167082
	.quad	0x3fdf2d1cb0f47194              # double 0.48712842255351885
	.quad	0x3fdcb24471035a9c              # double 0.44838057552753141
	.quad	0x3fdc55224d68c0d4              # double 0.44269616660586775
	.quad	0x3fc6b0f34ddfdea8              # double 0.17727509787049667
	.quad	0x3fe1102f383afb59              # double 0.53322564108371318
	.quad	0x3fd1a30497b3e13e              # double 0.27557482542717426
	.quad	0x3fec334d92c5f66f              # double 0.88126257578524114
	.quad	0x3fd15ae7e98be626              # double 0.27117345626138201
	.quad	0x3fdc708b01fd63d4              # double 0.44436907953564497
	.quad	0x3fb37e9d94ce31b8              # double 0.076150749997572542
	.quad	0x3fc6a5a43eaa898c              # double 0.17692997989531667
	.quad	0x3f88b3597f748e80              # double 0.012060832216383988
	.quad	0x3fe31901f482244b              # double 0.59680269008198061
	.quad	0x3fec226f0ae4eaa8              # double 0.87920333984159971
	.quad	0x3fe2f25e917de53f              # double 0.592086109317428
	.quad	0x3fc34fb60e5ef550              # double 0.15087009145455932
	.quad	0x3fd14ba866110866              # double 0.27024278609690666
	.quad	0x3fec41aecbfc6b64              # double 0.88301791993158618
	.quad	0x3fe72e153d35ea48              # double 0.7243753619689608
	.quad	0x3fef7b6e55d03cc4              # double 0.98381726036486627
	.quad	0x3fcc3893438225a0              # double 0.22047653957660618
	.quad	0x3fed530f1db1d5f2              # double 0.91638904380550756
	.quad	0x3fe4861cfe01e933              # double 0.64137124644120147
	.quad	0x3fbe2fa051042eb8              # double 0.11791421869218766
	.quad	0x3fe99aaad6c7cefd              # double 0.80013029050175499
	.quad	0x3fd72d75cc95924a              # double 0.36214966753894784
	.quad	0x3f994dac3ad6b800              # double 0.024710360614044191
	.quad	0x3fd0627333bad0ac              # double 0.25600891162617745
	.quad	0x3fe048f07a741a23              # double 0.50890373150543089
	.quad	0x3fe1331a27a62913              # double 0.53748805755575046
	.quad	0x3fae455e74c63f00              # double 0.059122993235289911
	.quad	0x3fe5504368a366a7              # double 0.66604776799359378
	.quad	0x3fc50ca89be6e020              # double 0.16444881069560413
	.quad	0x3fe7ea84e8cdbee8              # double 0.74737782926055463
	.quad	0x3fe0965f7e1e2ea5              # double 0.51835608131792255
	.quad	0x3fc9b9ce480ba85c              # double 0.2009828426155903
	.quad	0x3fd6acd3c3be2c6c              # double 0.35429853549493973
	.quad	0x3fe995b324131a68              # double 0.79952389760803744
	.quad	0x3f9cb3e81062d980              # double 0.028030038833742221
	.quad	0x3fe0dae08cb134ac              # double 0.52671840170809991
	.quad	0x3fdeea59587b85a4              # double 0.48305352822179715
	.quad	0x3f9ef7c15eeb8220              # double 0.030241986673788301
	.quad	0x3fb273666f350568              # double 0.072073366308378461
	.quad	0x3fe196465e016302              # double 0.54959410057480818
	.quad	0x3fab1eb417f28e50              # double 0.052968624041821344
	.quad	0x3fed136c6c78a0c7              # double 0.90862103639394654
	.quad	0x3faea90625770740              # double 0.059883300851210297
	.quad	0x3fee0ccb31d7b723              # double 0.93906173453226349
	.quad	0x3fb8b078593ff690              # double 0.096442720212474464
	.quad	0x3fe7c51a48ee4c55              # double 0.74281038517291142
	.quad	0x3fefc5da7a2dd830              # double 0.992902029639259
	.quad	0x3f8bf901420f7140              # double 0.013658532932759315
	.quad	0x3fed285594170fd0              # double 0.9111736194977258
	.quad	0x3fd8ffd274a834ce              # double 0.39061414139071082
	.quad	0x3fc1e29f326c630c              # double 0.13972845041350757
	.quad	0x3fe97e2ae5d21898              # double 0.7966513146100338
	.quad	0x3fde86cc31331568              # double 0.476977394148284
	.quad	0x3fda295f21b072b8              # double 0.40877512254682413
	.quad	0x3fe0a192e116d989              # double 0.51972335779901002
	.quad	0x3feefca0600e8aed              # double 0.96833819161505874
	.quad	0x3fda3ebe5d909970              # double 0.41007956635657816
	.quad	0x3fd9ac1842f72b24              # double 0.40112883128738219
	.quad	0x3fed51f069426739              # double 0.91625233229135639
	.quad	0x3fd43ed333415d64              # double 0.31633453374293752
	.quad	0x3fd88ab329367488              # double 0.3834655668704916
	.quad	0x3fb50eb2c24f8240              # double 0.082255527915102711
	.quad	0x3fe6d8532ffc8aec              # double 0.71390685436594259
	.quad	0x3fd359564d9bf85c              # double 0.30232770518330709
	.quad	0x3fc754eb7c6dca1c              # double 0.18227904868724998
	.quad	0x3fe804ca90443b87              # double 0.75058487107331551
	.quad	0x3fe87f54793b6686              # double 0.76554320982104751
	.quad	0x3fa54854114a7390              # double 0.041567446814247622
	.quad	0x3fdabb8149e124e4              # double 0.41769439902107153
	.quad	0x3fe104d08318153d              # double 0.53183770756064741
	.quad	0x3fc2ab096f553dfc              # double 0.14584463058643837
	.quad	0x3fe28c5f5c65e0f9              # double 0.57963531538464885
	.quad	0x3fe5da1b942b3277              # double 0.68287447871405405
	.quad	0x3fd9bca72eb9bf60              # double 0.40213946879429407
	.quad	0x3fe3a5dd05c6bf2e              # double 0.6139969933337619
	.quad	0x3fc09b1428652a94              # double 0.12973262760563797
	.quad	0x3f8eb605651e1540              # double 0.014995615146981778
	.quad	0x3fb71e76118e0f08              # double 0.090308551107281088
	.quad	0x3fdd59cf02f5633a              # double 0.45860648430748407
	.quad	0x3fbecebbbf21ee28              # double 0.12034200111696036
	.quad	0x3feed482d1058ab6              # double 0.96344128441372479
	.quad	0x3fa4304af2dc2440              # double 0.039430944581973382
	.quad	0x3fea52841fe886ec              # double 0.82257276756373931
	.quad	0x3fa11d1ea7ae8900              # double 0.033425291031806026
	.quad	0x3feae94f69804981              # double 0.8409802494591504
	.quad	0x3fc7c330908cdf9c              # double 0.18564421709174617
	.quad	0x3fb6da74e07406d8              # double 0.089270882414008823
	.quad	0x3feb62baf4c7f84d              # double 0.85580203827681489
	.quad	0x3fe4cf19d491d43f              # double 0.65028087155827297
	.quad	0x3fe3f487ea9e58c9              # double 0.62359996627744707
	.quad	0x3fdf4cc43e7afc58              # double 0.48906046010592297
	.quad	0x3fe180baae68460b              # double 0.54696401657037208
	.quad	0x3fdbcc002a76cc48              # double 0.43432621142273264
	.quad	0x3fb1197c7b618e08              # double 0.0667951394294094
	.quad	0x3feba412541fcad9              # double 0.86377827101236015
	.quad	0x3fe952c34ab94e84              # double 0.79135288805487435
	.quad	0x3fd91ae5617908b2              # double 0.392266602695723
	.quad	0x3fb469b66cb4df50              # double 0.079738046207123547
	.quad	0x3fe3ebd075e3aec1              # double 0.62253592515249789
	.quad	0x3fe30cbbc70f2c4e              # double 0.59530438307536726
	.quad	0x3fc8b5c03c984c64              # double 0.19304659804092517
	.quad	0x3fd2aa7834c7b7bc              # double 0.29165463594733487
	.quad	0x3fe4d408d3c7c1f4              # double 0.65088311541882016
	.quad	0x3fe00de5375c1ba9              # double 0.50169621288738597
	.quad	0x3fed20b7d05054e3              # double 0.91024389921463145
	.quad	0x3fbc66d9bc8b1980              # double 0.11094437459096262
	.quad	0x3fc87359a25d80c8              # double 0.19102020671835462
	.quad	0x3fe4672b89d42203              # double 0.63759400291115786
	.quad	0x3fe39971df499c21              # double 0.61248105631682759
	.quad	0x3fea337ae5a0601e              # double 0.81878418778342499
	.quad	0x3feb4b853e355969              # double 0.85296880865170721
	.quad	0x3fd5992620d7214e              # double 0.33747246939721698
	.quad	0x3fc5b77816a9aff0              # double 0.16966153246482873
	.quad	0x3fe82e51fcd5a9ef              # double 0.75565432912600083
	.quad	0x3febd8d1c8e404f9              # double 0.87021722065415397
	.quad	0x3fb0b408a04e6ec8              # double 0.065247096192645349
	.quad	0x3fea8dbf15a07652              # double 0.82980303024278101
	.quad	0x3f906aeb49f8c0e0              # double 0.01603286398875603
	.quad	0x3fed3ac756e7154f              # double 0.91342513058831709
	.quad	0x3feaada675004f0d              # double 0.83369753696249094
	.quad	0x3fe971cac9cad0fe              # double 0.79514064228581538
	.quad	0x3fec232a7b971956              # double 0.87929271830288758
	.quad	0x3feefda0a163768b              # double 0.96846038361737052
	.quad	0x3fe4644a14586d26              # double 0.63724235509599647
	.quad	0x3fecbbe4c7bd2330              # double 0.89793623935211109
	.quad	0x3fe1fdf755007e8c              # double 0.56225172616901054
	.quad	0x3fef88b468271a99              # double 0.98543758718809038
	.quad	0x3feccf9f099f8817              # double 0.90034438972020581
	.quad	0x3fc8b2222724efe8              # double 0.19293620025007319
	.quad	0x3fd7120831efd2b2              # double 0.36047558666841006
	.quad	0x3fdd06f68b441fda              # double 0.45354999160963205
	.quad	0x3fe6426e19d64f38              # double 0.69560914083783754
	.quad	0x3febc68a977047a9              # double 0.86798600747919352
	.quad	0x3fed8539191c5c7f              # double 0.92251257805300202
	.quad	0x3fe8713f3f572a4d              # double 0.76382410403432177
	.quad	0x3fe58500b704b634              # double 0.67248569246084466
	.quad	0x3fea3204a4a3ded9              # double 0.81860572963975209
	.quad	0x3fe49e35af5d02e5              # double 0.64431270838403221
	.quad	0x3fe119efd546f50a              # double 0.5344161191530088
	.quad	0x3fd9b648a2c1f446              # double 0.40175071615505364
	.quad	0x3febbac3f934ee2d              # double 0.86654852555461093
	.quad	0x3fe9e7b3052031cd              # double 0.80953360558629017
	.quad	0x3fdca89cdcb432ea              # double 0.44779130509486598
	.quad	0x3fc8f12df9615adc              # double 0.19486021687290289
	.quad	0x3fe90d4130c3cde1              # double 0.78286799930941353
	.quad	0x3fe44de3cf98e81f              # double 0.63450804277750084
	.quad	0x3fb5bd5c6137c9a0              # double 0.084920667395442795
	.quad	0x3fd88616f5feebc8              # double 0.38318418524766829
	.quad	0x3fd92991dfdada22              # double 0.3931622205813331
	.quad	0x3fe6386e7d79e80a              # double 0.69438862330503182
	.quad	0x3f723dde7da80c80              # double 0.0044535342262889133
	.quad	0x3fecabe0fd5c5c2b              # double 0.89598130688216793
	.quad	0x3fb8528aa6db6400              # double 0.095009484993525462
	.quad	0x3fe0e9bf87abdaec              # double 0.52853371141722283
	.quad	0x3fe1bfa9251238c8              # double 0.55464608421768791
	.quad	0x3fd8936327e5d2c0              # double 0.38399580856575355
	.quad	0x3fc358001bbbe508              # double 0.15112305978963314
	.quad	0x3facb35a44d6f3b0              # double 0.056055851844099336
	.quad	0x3fc81c398bed8ddc              # double 0.18836135227603179
	.quad	0x3fe8bcf8fcf0bdb5              # double 0.77306794550343361
	.quad	0x3fea232691b4b535              # double 0.81679085214788094
	.quad	0x3feae9dc35eb1570              # double 0.84104738741795693
	.quad	0x3fad2e525d9594f0              # double 0.056994031833520142
	.quad	0x3fcd14f0bb4e5368              # double 0.22720154901312672
	.quad	0x3febe63653ee1519              # double 0.8718520774133679
	.quad	0x3fd131f7504ae9d0              # double 0.26867468682362716
	.quad	0x3fd6c78d50683eca              # double 0.35592968799845137
	.quad	0x3fdfc22b78445010              # double 0.49622618431863064
	.quad	0x3fe16f8567a6eba3              # double 0.54486341709649755
	.quad	0x3fe26650c71fb65d              # double 0.57498968974477871
	.quad	0x3fd9c7514087c542              # double 0.40279036809723234
	.quad	0x3fe2ce5cc73561eb              # double 0.58769072444834813
	.quad	0x3fd5de84f74d198a              # double 0.34170650625710464
	.quad	0x3fe881ba967a35ba              # double 0.765836042309892
	.quad	0x3fede655a5094228              # double 0.93436701043726078
	.quad	0x3fe7f3e02a0ded70              # double 0.7485199757933696
	.quad	0x3fd6602e1f06667a              # double 0.34962037114892264
	.quad	0x3fcb30704e0570e4              # double 0.21241573152190718
	.quad	0x3fd41410bd1c8224              # double 0.31372469394594504
	.quad	0x3fe06c5b05fc7073              # double 0.51322699708135955
	.quad	0x3fe935ac9509fbd9              # double 0.78780202016047973
	.quad	0x3fba7d39ee38bdc8              # double 0.10347330156286383
	.quad	0x3fc761b748c40e98              # double 0.1826695542623511
	.quad	0x3fecbf7670fe4e1c              # double 0.89837190693873791
	.quad	0x3fd805bb6225eb3a              # double 0.37534985146310229
	.quad	0x3fe40d78028237d9              # double 0.62664413919423645
	.quad	0x3fd2f1465d065f1c              # double 0.29597624859296601
	.quad	0x3fd45b1eff1865e8              # double 0.31806158935213924
	.quad	0x3fe4d52ce28acffe              # double 0.65102237936525831
	.quad	0x3f925f1600aa1de0              # double 0.017940849104460699
	.quad	0x3fc33e1943d1a894              # double 0.15033260165666162
	.quad	0x3fd1b756e4d9609c              # double 0.27681515072391405
	.quad	0x3fec06ada6bad173              # double 0.87581522526174493
	.quad	0x3fe882420034cd9c              # double 0.76590061226163497
	.quad	0x3fe28bb880c17ae6              # double 0.57955575130094128
	.quad	0x3fe0552dbae0e2cd              # double 0.51039778232287747
	.quad	0x3fde014d592c8432              # double 0.46882947643649964
	.quad	0x3fcd999ef2e4fbd8              # double 0.23125063762742459
	.quad	0x3fe836262bca7c76              # double 0.75660999825403397
	.quad	0x3fe0a0bec31d03aa              # double 0.5196222124869696
	.quad	0x3fecaea2788c2698              # double 0.89631770653177778
	.quad	0x3fddd2d6216789e0              # double 0.46599343549874384
	.quad	0x3fe5ba0b41d0dc6e              # double 0.67896044592533911
	.quad	0x3fdcf3eb0a095d1c              # double 0.45238758068212959
	.quad	0x3fd0f0789ca3e5d2              # double 0.26467719361207032
	.quad	0x3fe793eeaf51509d              # double 0.73680814973569719
	.quad	0x3fef239535919224              # double 0.97309360945343259
	.quad	0x3fb945a8a5bee220              # double 0.098719158616298319
	.quad	0x3fe704429d3257e2              # double 0.7192700453040255
	.quad	0x3fc4b5916e202bd4              # double 0.16179101826887055
	.quad	0x3fd547fe9210184e              # double 0.33251919044449074
	.quad	0x3fd8e923375b13da              # double 0.38922958761059834
	.quad	0x3fed8c4856498143              # double 0.9233743367476922
	.quad	0x3feaa1bc9971339d              # double 0.83224325150660017
	.quad	0x3fe20708d303c59e              # double 0.5633586999303366
	.quad	0x3fecb57a58fc0c9c              # double 0.89715306644247361
	.quad	0x3fdbe8b4d11523d2              # double 0.43607826631756297
	.quad	0x3fe1fc9ad7cc286d              # double 0.56208555362651469
	.quad	0x3fef7d114d3bb5d4              # double 0.9840170391523153
	.quad	0x3fc94520c2e23460              # double 0.19742211833764411
	.quad	0x3fe107445c9fcd10              # double 0.53213708964031703
	.quad	0x3fcdf0d937e271dc              # double 0.23391261318910395
	.quad	0x3feb4a6bf5db4fa2              # double 0.85283468264468731
	.quad	0x3fc6cc75f5644744              # double 0.17811464769379814
	.quad	0x3fca52434219cfb4              # double 0.20563545920924542
	.quad	0x3fe6fe8fe8c1aa0f              # double 0.71857448063139084
	.quad	0x3fe020f058e7120b              # double 0.5040208565120009
	.quad	0x3fefe7cd1575817f              # double 0.99704603377544731
	.quad	0x3fb82e24bcd118a8              # double 0.09445409402641991
	.quad	0x3fe87b65a31f67eb              # double 0.76506311283014605
	.quad	0x3fc8bb4f65ad7060              # double 0.19321625199052317
	.quad	0x3fefcc75dad801fb              # double 0.99370854132581543
	.quad	0x3fd74a6bbca61236              # double 0.36391728804327117
	.quad	0x3fecf69919112c12              # double 0.90510229965127764
	.quad	0x3fea4c3c8ab9559e              # double 0.82180621237300833
	.quad	0x3fdf84e0bf43b7ea              # double 0.49248522451568866
	.quad	0x3fe825b4045115ae              # double 0.7546024402915259
	.quad	0x3feff11dd0db9844              # double 0.99818316261804129
	.quad	0x3fe2d70afea221e1              # double 0.58875035985061797
	.quad	0x3feac4db86ef4278              # double 0.83653045992293951
	.quad	0x3fe820698e9a8fc2              # double 0.75395658352180583
	.quad	0x3fd8db4191a43fb2              # double 0.38838233206569861
	.quad	0x3fe782696bb4cd97              # double 0.73466940914515788
	.quad	0x3fdae8a33209d234              # double 0.42044906508025126
	.quad	0x3fe540ee790599d0              # double 0.6641762126644668
	.quad	0x3fd8b8ca236590ce              # double 0.38627866226876229
	.quad	0x3fee0dc4bc9afe39              # double 0.93918072545051878
	.quad	0x3fed1d4bcbb84ebb              # double 0.90982618130734438
	.quad	0x3fe7ca3efeedcf0c              # double 0.74343824187096308
	.quad	0x3fe24a7866213c56              # double 0.57159061381561105
	.quad	0x3fba0e7c7ec3f488              # double 0.10178354353770847
	.quad	0x3fd26db3393c3f54              # double 0.28794556226147461
	.quad	0x3fd53f6ddb64b998              # double 0.33199640679495124
	.quad	0x3fd72596ccb256be              # double 0.36166925420671336
	.quad	0x3fd44c42e33617e6              # double 0.31715461910823561
	.quad	0x3fd6c75e7509395c              # double 0.35591851643848371
	.quad	0x3fdfc2e7997a9420              # double 0.49627103794256477
	.quad	0x3feac8c598d527c6              # double 0.8370082840931381
	.quad	0x3fccf7341789f288              # double 0.22629405164106609
	.quad	0x3fec3627cbb71a7e              # double 0.88161077297338841
	.quad	0x3fdc36629929c416              # double 0.44081940610254955
	.quad	0x3fde4ae3134dbc96              # double 0.47332074055788931
	.quad	0x3feac10b9a1e671b              # double 0.83606510258980238
	.quad	0x3fda95b471a71234              # double 0.41538725947274036
	.quad	0x3fdb395c2d707e58              # double 0.42537598073429228
	.quad	0x3fccfb62aabd6d74              # double 0.22642167412673653
	.quad	0x3fec6d3ff82b6fe0              # double 0.88833616705550966
	.quad	0x3fe136da5557721a              # double 0.53794590633657724
	.quad	0x3fe7f9f80ad5542d              # double 0.74926378360635726
	.quad	0x3fea65b97b2d9648              # double 0.82491754587381028
	.quad	0x3fd7febb73deb89a              # double 0.37492262187414271
	.quad	0x3fc41729ec42c510              # double 0.1569569018952639
	.quad	0x3fd39e6cfcb78e28              # double 0.30654453925510206
	.quad	0x3fecd85a941a961c              # double 0.90141037870916163
	.quad	0x3fa56dd5e5c0b9b0              # double 0.041853603645324866
	.quad	0x3fb5041d19255050              # double 0.082094019545651208
	.quad	0x3fde2cc2b5fbceca              # double 0.47148196956480304
	.quad	0x3fe461cd68b89d50              # double 0.63693876698827445
	.quad	0x3fea0ebf7a18c0b0              # double 0.81430028769502449
	.quad	0x3fef6ef64b4f9a0f              # double 0.98229517659348342
	.quad	0x3fbbadfb71b68998              # double 0.10812350774953072
	.quad	0x3fef9150128ebc87              # double 0.98648837685131318
	.quad	0x3fe67ac08f9b113c              # double 0.7024843983458946
	.quad	0x3fd114637490961a              # double 0.26686941512375173
	.quad	0x3fa51158f9dee900              # double 0.041147976400184305
	.quad	0x3fe70e6736110254              # double 0.72050819930889043
	.quad	0x3fc32a3d6c8d9888              # double 0.14972656059689293
	.quad	0x3fe08f352ca8c8b3              # double 0.51748141024133643
	.quad	0x3fecb97118fec731              # double 0.89763693696861513
	.quad	0x3fe0508906cd63b3              # double 0.50983096436094966
	.quad	0x3f86cd83fca43ec0              # double 0.011134177348622543
	.quad	0x3fdf4abf4d95fe82              # double 0.48893721176862226
	.quad	0x3fda19d3a66b7abc              # double 0.40782634021699571
	.quad	0x3fe5ab6d06e9fbf7              # double 0.67717601156607443
	.quad	0x3fe1cbf404b63622              # double 0.55614663048044499
	.quad	0x3fdd679e00f85670              # double 0.45944929213269514
	.quad	0x3fe895d736284bd4              # double 0.76829109742754519
	.quad	0x3fe809e82924e864              # double 0.75120933567019365
	.quad	0x3fda061d3a86816a              # double 0.40662317958233152
	.quad	0x3fdb09a7c6d1f3c2              # double 0.42246431747463131
	.quad	0x3fdd1cccc446e70e              # double 0.45488280456230334
	.quad	0x3fc23f9541e46568              # double 0.14256540028945186
	.quad	0x3fd11d029caedb06              # double 0.26739564229085067
	.quad	0x3feeaa8e43626481              # double 0.95831978951459018
	.quad	0x3fb2efe9c26ae698              # double 0.073973283734540707
	.quad	0x3fdf561a2e0204ce              # double 0.48963026516873931
	.quad	0x3fc53e146d094aa4              # double 0.16595702480352259
	.quad	0x3fb7262741cd3518              # double 0.090425923886148118
	.quad	0x3fe2dbb8c2162ed8              # double 0.58932149798917077
	.quad	0x3fd98d645400ee4c              # double 0.39925487712364283
	.quad	0x3fefbe61af7f769b              # double 0.9919899394696644
	.quad	0x3f91b3d075cbf540              # double 0.017287499608746204
	.quad	0x3fd976bcbcd1154e              # double 0.39787214697965545
	.quad	0x3fe3d7e30a923b16              # double 0.62010337891283274
	.quad	0x3fd568815ed9cd48              # double 0.33450350058338474
	.quad	0x3fec428d400bb554              # double 0.88312399395878538
	.quad	0x3fe4e6d70a075e24              # double 0.6531787105440725
	.quad	0x3fd0d9d37e5357ee              # double 0.26329505287628663
	.quad	0x3fd91330f8d7f884              # double 0.39179634381424244
	.quad	0x3fe54a3ea58254bb              # double 0.66531307531354089
	.quad	0x3fb690d0d7ca04a8              # double 0.088147213633436139
	.quad	0x3fe711ec7dd35389              # double 0.72093796325008086
	.quad	0x3fb8b4b49a9b1c70              # double 0.096507346864301402
	.quad	0x3fb766270b99e8b0              # double 0.091402473766637681
	.quad	0x3feb994e326e1482              # double 0.86246404504403551
	.quad	0x3fe5fe1e8ebc0620              # double 0.6872704303534114
	.quad	0x3fcad7d8ae1375a4              # double 0.20971210956387865
	.quad	0x3fedfa8f19e6a467              # double 0.93683581408289462
	.quad	0x3fee37572926cf31              # double 0.94425542867108991
	.quad	0x3fad2c1b628c9150              # double 0.056977134494703763
	.quad	0x3fe1f511c627d286              # double 0.56116570188767478
	.quad	0x3fe4b5a10f96ad78              # double 0.64717152638097186
	.quad	0x3fd9fb77cdab5b8a              # double 0.40597338757418611
	.quad	0x3fcd0ffc350eca44              # double 0.22705032911979306
	.quad	0x3fb3ec7e5495b478              # double 0.077827354097921631
	.quad	0x3fd8b2bf988839c8              # double 0.38590993781772598
	.quad	0x3fe8f8fec08a88d4              # double 0.78039491277402328
	.quad	0x3fb0a58eacb5dfb0              # double 0.065026204267154553
	.quad	0x3fe8c352dc4d505d              # double 0.77384322192893829
	.quad	0x3fdfa63365914256              # double 0.49451908987706383
	.quad	0x3fe9a2bcbe7dc604              # double 0.80111539082844318
	.quad	0x3fef302c2346d52c              # double 0.9746304215429169
	.quad	0x3feefa652c0f5f81              # double 0.96806582074621883
	.quad	0x3fdc51751e10149e              # double 0.44247177062818277
	.quad	0x3fcc8677d2ecc9e0              # double 0.22285363959379278
	.quad	0x3fcca3d25447a50c              # double 0.22374943843104977
	.quad	0x3f91241b7f546ce0              # double 0.016739301344483759
	.quad	0x3fe6b6cf26e5635b              # double 0.70981557461628186
	.quad	0x3feb33ab23a97f9d              # double 0.85005719151739678
	.quad	0x3fe69a98cf7bf0b8              # double 0.70637169384237719
	.quad	0x3fe833208e01d2b3              # double 0.75624110923543808
	.quad	0x3fed316ee441ed5a              # double 0.91228432256267955
	.quad	0x3fa51686f7b800f0              # double 0.04118749402914712
	.quad	0x3fe6b81357cceb06              # double 0.70997016094710896
	.quad	0x3f8e61679f759a80              # double 0.01483422236806331
	.quad	0x3fe09ff497852169              # double 0.51952581018217103
	.quad	0x3fdfa4d3f749fa9c              # double 0.49443530225100019
	.quad	0x3fed081100e9e384              # double 0.90723467043345396
	.quad	0x3fde7e200ee35ad2              # double 0.47644807294765912
	.quad	0x3fe250477f247d61              # double 0.57229971725966433
	.quad	0x3fe8b6673f014d80              # double 0.77226602845841796
	.quad	0x3fe0d986c66126d6              # double 0.52655352350231044
	.quad	0x3fb89fa248d846a8              # double 0.096185820373899333
	.quad	0x3fe3bbed929367d0              # double 0.61669043186270223
	.quad	0x3fc4d976e0853928              # double 0.16288648569975206
	.quad	0x3fd13a03ef76c916              # double 0.26916597733647174
	.quad	0x3fee1b8db1950b59              # double 0.94086346324943826
	.quad	0x3fea98e0c107a42d              # double 0.83116185856954916
	.quad	0x3fb3a9901404ea78              # double 0.076806073081494008
	.quad	0x3fba97243f5363c8              # double 0.10386873765982252
	.quad	0x3fe43f71ef7839bf              # double 0.63274475833332378
	.quad	0x3fc12b6ba1c4e064              # double 0.1341375865829405
	.quad	0x3fb4bc8b35871850              # double 0.081001949852266053
	.quad	0x3fe3a1ca89b0a798              # double 0.61349989788617432
	.quad	0x3fe8edbc9b5f187d              # double 0.77902059885015229
	.quad	0x3f848b5740f51680              # double 0.010031396550981286
	.quad	0x3fef7154831fd326              # double 0.9825842438718595
	.quad	0x3fd5fc5834297cf0              # double 0.34352688878966742
	.quad	0x3feaeac521866fa8              # double 0.84115845249060772
	.quad	0x3fcc903e5cf774ac              # double 0.22315196551690997
	.quad	0x3fe4d11b6419229f              # double 0.65052575636316934
	.quad	0x3fd24dbf90567504              # double 0.28599537940483821
	.quad	0x3fedd66628871f05              # double 0.93242175975407859
	.quad	0x3fe48a2db869c05f              # double 0.64186750429326966
	.quad	0x3fe073467f5486eb              # double 0.51407170170952321
	.quad	0x3f99f3d321c52de0              # double 0.025344180046244946
	.quad	0x3f93cd7e63ad1ee0              # double 0.019338583787685049
	.quad	0x3fa015b9217c2710              # double 0.031415734612961654
	.quad	0x3fecc27a1af1d96d              # double 0.89873986494676006
	.quad	0x3fe3994359d657b1              # double 0.61245887323706516
	.quad	0x3fdb364e43b63820              # double 0.42518955814819215
	.quad	0x3feb3caa7215f24b              # double 0.85115549356812303
	.quad	0x3fd1d385d78ee87a              # double 0.27853532839402073
	.quad	0x3fe539a8b005b45f              # double 0.66328844432213063
	.quad	0x3fd0eb7d3889b424              # double 0.26437311669616492
	.quad	0x3fec9a11323f20b5              # double 0.89380702794826183
	.quad	0x3fdef3670977d314              # double 0.48360610890021971
	.quad	0x3fd909d6bb096ff6              # double 0.39122551217383206
	.quad	0x3fea44a8cd6d2d67              # double 0.82088127252920351
	.quad	0x3fd52d87eafa63da              # double 0.33090398737982485
	.quad	0x3fe21b449d6f46e9              # double 0.56582861660919292
	.quad	0x3fe1c84d27a6a192              # double 0.55570085281674353
	.quad	0x3fe4227b5aacc551              # double 0.62920921049059519
	.quad	0x3fce3e841229c380              # double 0.23628283392784155
	.quad	0x3fb98ece15f4ab98              # double 0.099835281715668578
	.quad	0x3febc1bd88c2f94e              # double 0.86739994727376213
	.quad	0x3fc3252915cef7d8              # double 0.14957154812685647
	.quad	0x3fd596bdb80b7d86              # double 0.33732550595410549
	.quad	0x3fca50ce1c893f78              # double 0.20559097665181603
	.quad	0x3fe920bad47ee794              # double 0.78524533751554992
	.quad	0x3fd742be9a181480              # double 0.3634487633538086
	.quad	0x3feba95b18841ea2              # double 0.86442332065867711
	.quad	0x3fe5844c0d823622              # double 0.67239954603582341
	.quad	0x3fb84bbc3c1c5708              # double 0.094905628848518941
	.quad	0x3fecfdca4fed9097              # double 0.90598025904593527
	.quad	0x3fed59330a41f075              # double 0.9171385956137913
	.quad	0x3fb36d5ba2065b38              # double 0.075887419754832375
	.quad	0x3fd06545380580f6              # double 0.25618105383729473
	.quad	0x3fedf1eea07cc8fa              # double 0.93578273148730706
	.quad	0x3fc80a39d4496b2c              # double 0.18781206956449503
	.quad	0x3fd1a3fc7e5afdae              # double 0.27563392962835109
	.quad	0x3fcaee18e79725b4              # double 0.21039115245939188
	.quad	0x3fc7fb72541e76e8              # double 0.18736104113934648
	.quad	0x3f6ccbe2f369f000              # double 0.0035151894219875857
	.quad	0x3fef19ec04d3747e              # double 0.9719143003709545
	.quad	0x3fea48816057f47b              # double 0.82135075394729939
	.quad	0x3fee251b66f0630c              # double 0.94202966790462161
	.quad	0x3fdc44dfe19a6a1e              # double 0.44170376807747569
	.quad	0x3fcf10b992949858              # double 0.24269790322540774
	.quad	0x3fcb94f34a7ae798              # double 0.21548310410235838
	.quad	0x3fc205ad764a0fec              # double 0.14079826618046754
	.quad	0x3fea9b4858d2e073              # double 0.83145539615999409
	.quad	0x3fe975aea921f3a5              # double 0.79561551126208896
	.quad	0x3fcf8777c69094e8              # double 0.24632165141625895
	.quad	0x3fea2c7a2b005a26              # double 0.81792934797960437
	.quad	0x3fea9a3786535134              # double 0.83132530436936358
	.quad	0x3fd49d723b59bd04              # double 0.32210975452376567
	.quad	0x3fed75c0ab183572              # double 0.92062409798533751
	.quad	0x3fdfc665952e5f18              # double 0.49648418014975126
	.quad	0x3fee1eac98a41e49              # double 0.94124440968239143
	.quad	0x3fb6fd3b4b2859d0              # double 0.089801507805851388
	.quad	0x3fd133dcc81e26fe              # double 0.26879043143036074
	.quad	0x3fe65194d3d65d74              # double 0.69745866178975158
	.quad	0x3fe69180d99490e4              # double 0.70526163574370715
	.quad	0x3fd8863c464b7a72              # double 0.38319308151941478
	.quad	0x3f92db149aa52760              # double 0.018413850725927161
	.quad	0x3fe00e407d3ed8bd              # double 0.5017397352410381
	.quad	0x3fb3451f5ddc7d80              # double 0.075273476043085096
	.quad	0x3feccf0e2eab18ea              # double 0.90027531733428856
	.quad	0x3fe8ac57f1ab660b              # double 0.77103802872733362
	.quad	0x3fde73d87b2045bc              # double 0.47582065605191892
	.quad	0x3fc4d4b0ea25292c              # double 0.16274081642979732
	.quad	0x3faf68136427aaf0              # double 0.061340909934946342
	.quad	0x3fbfb9f41505a958              # double 0.12393117440448032
	.quad	0x3fe21b10c7527094              # double 0.56580389909824413
	.quad	0x3fe580cb27ed35db              # double 0.67197187231220867
	.quad	0x3fc2f44f8e382530              # double 0.14808077282240495
	.quad	0x3fa88eff71774650              # double 0.047965986824817564
	.quad	0x3fd43475b454884a              # double 0.31570189104434532
	.quad	0x3f87a6d4d31fd940              # double 0.01154867429066242
	.quad	0x3fe3566e3f90add9              # double 0.60430061736172569
	.quad	0x3fd69ddd35dc161a              # double 0.35338526019799732
	.quad	0x3fb85f8fc64bd0b8              # double 0.095208154594561445
	.quad	0x3fc73180e0e7b780              # double 0.18119822484680626
	.quad	0x3fdc7cd1ab7f80ac              # double 0.44511834857804433
	.quad	0x3fe87a2960248f88              # double 0.76491230752843453
	.quad	0x3fe5f516674e69b7              # double 0.68616790940296013
	.quad	0x3fe906a88a8a8991              # double 0.78206278857060074
	.quad	0x3fdaba960076c2c0              # double 0.4176383022814143
	.quad	0x3fe2d2aa41810b88              # double 0.5882159499527555
	.quad	0x3fe9769dfbb2e689              # double 0.79572962913444301
	.quad	0x3fdd6c959bae9738              # double 0.45975246623344246
	.quad	0x3fce50e6ff38c70c              # double 0.23684394323350266
	.quad	0x3fe40a984a8a2197              # double 0.62629332121382475
	.quad	0x3faac138b0151710              # double 0.052255412573272264
	.quad	0x3fd6b6ac470707da              # double 0.3548994725825857
	.quad	0x3fdc88eb444e2338              # double 0.44585687323028678
	.quad	0x3fe9d772c204498d              # double 0.80754983800788838
	.quad	0x3fd87f6e285e1dc2              # double 0.38277772848274705
	.quad	0x3fe292782b822f12              # double 0.5803795671249381
	.quad	0x3fc6c62e23411828              # double 0.17792298051262034
	.quad	0x3fea18043a5f0b6b              # double 0.81543170357359196
	.quad	0x3fe89edf3966a324              # double 0.76939355097883721
	.quad	0x3fed682e43886525              # double 0.91896737279890728
	.quad	0x3fd2936bce84550e              # double 0.29024787109058614
	.quad	0x3fe4605caafb97c8              # double 0.6367629374988093
	.quad	0x3fee93ad938be017              # double 0.9555271035924332
	.quad	0x3fdfcad2751cb45c              # double 0.49675427853327903
	.quad	0x3fef88fd792c56e8              # double 0.9854724280037006
	.quad	0x3fd902ac15a86a8e              # double 0.39078809847857421
	.quad	0x3fe087dae5125812              # double 0.5165838693671978
	.quad	0x3febd4180e0cedd8              # double 0.86964037651290038
	.quad	0x3fc777a59c61d85c              # double 0.183338834150791
	.quad	0x3f83d2aae7eae080              # double 0.0096791603112793556
	.quad	0x3fe20efd49cd00b3              # double 0.56432976164071247
	.quad	0x3fd3e7536e7577be              # double 0.3109940127086438
	.quad	0x3fd4a31eee02cbae              # double 0.32245610469106623
	.quad	0x3fb419ce17fa2108              # double 0.078518753865982061
	.quad	0x3fee3ae3eeb9c945              # double 0.94468876482123021
	.quad	0x3fa688a7ea9382b0              # double 0.044011351952354061
	.quad	0x3fec9e53e5c44f61              # double 0.89432711483321381
	.quad	0x3fed671b5d2dae8a              # double 0.91883629034914915
	.quad	0x3fd815889bd5b472              # double 0.37631430834046065
	.quad	0x3feb20d01e585446              # double 0.84775548865094019
	.quad	0x3feda1d60eb38fad              # double 0.92600539084786748
	.quad	0x3fea6e252c633991              # double 0.82594546002819602
	.quad	0x3fde3b7ab49cbc8e              # double 0.47238032949366804
	.quad	0x3fcb2310ee672c5c              # double 0.21200763359806529
	.quad	0x3fd603d2277a7d76              # double 0.34398321013755806
	.quad	0x3f9c5ff241c94fc0              # double 0.027709756150514187
	.quad	0x3fe8b74eb97753ba              # double 0.77237640594341106
	.quad	0x3fea66237b4dec9e              # double 0.82496809084786427
	.quad	0x3febdb13581a5b73              # double 0.87049262244805303
	.quad	0x3fcab0cfce772794              # double 0.20852086621590316
	.quad	0x3fe6ade1ffc8d679              # double 0.70872592885889596
	.quad	0x3fdfbe73193bce90              # double 0.49599912132473722
	.quad	0x3fec95d525ffe610              # double 0.89329011365697575
	.quad	0x3fe5253ad39b084b              # double 0.6607946522638114
	.quad	0x3feecdba4f46b086              # double 0.9626132534372267
	.quad	0x3fe041a3504c8a2e              # double 0.50801244433779913
	.quad	0x3feafd58e4db0a3f              # double 0.84342617700924183
	.quad	0x3fe91c53878b24ef              # double 0.78470779870363383
	.quad	0x3fe889819c11f15b              # double 0.7667854355091025
	.quad	0x3fc29129b51cc884              # double 0.14505502074604604
	.quad	0x3fdcfd18b48c833e              # double 0.45294778472639396
	.quad	0x3fd3507cd56212ae              # double 0.30178757513230436
	.quad	0x3fe67b2f73f36bb1              # double 0.70253727575924618
	.quad	0x3fc6ee15251f0360              # double 0.17914070427471085
	.quad	0x3fea79bfe9d67101              # double 0.82736201926630326
	.quad	0x3fed52d5bd743f19              # double 0.9163616848254349
	.quad	0x3fe5e52c18a56d04              # double 0.68422512830457594
	.quad	0x3fe1b1a1ef37f640              # double 0.55293366167433788
	.quad	0x3fdd0e34d32d55e2              # double 0.45399208662760604
	.quad	0x3fd2f0f7281180c2              # double 0.29595736420561647
	.quad	0x3fd62580f2ac554e              # double 0.34603904436638266
	.quad	0x3fbcbff740ffd878              # double 0.11230416619204842
	.quad	0x3fd5e5e9a987dd3e              # double 0.34215776019796695
	.quad	0x3fd30a1484ea3aca              # double 0.29749024372078436
	.quad	0x3fed8f2c63a7120d              # double 0.92372722113992867
	.quad	0x3fc7bb9a35d55198              # double 0.18541267040803855
	.quad	0x3fe9cad23a0f7996              # double 0.80600844707423636
	.quad	0x3fe9e22528672788              # double 0.80885560885620666
	.quad	0x3fefa3bdbdd79129              # double 0.98873793676879018
	.quad	0x3fd1ac8d1f9c46f6              # double 0.27615669333418624
	.quad	0x3fecdc6df082daed              # double 0.90190789198717669
	.quad	0x3fd2abc663e6ac02              # double 0.2917343116375265
	.quad	0x3fe369af54b7d171              # double 0.60665098711483101
	.quad	0x3fd3d7281e10bfa8              # double 0.31000712333752256
	.quad	0x3fb20e0a35744cc8              # double 0.070526731539121035
	.quad	0x3feef155ddcff870              # double 0.96695988962870949
	.quad	0x3fd9c8e6808f8694              # double 0.40288698725462635
	.quad	0x3feb1607dae37711              # double 0.8464392924467764
	.quad	0x3fe7df5233ff9c70              # double 0.74601087718919068
	.quad	0x3fcdb0f70e6eb504              # double 0.23196304516515209
	.quad	0x3fb6b7a6a1ce3ae0              # double 0.088739790442768918
	.quad	0x3fb36310c498d5c8              # double 0.075730369565312761
	.quad	0x3fb3ed6f7c94ea40              # double 0.07784172812981982
	.quad	0x3fe132a371cb0290              # double 0.5374314520377812
	.quad	0x3fe366660a330071              # double 0.60624982826267459
	.quad	0x3fed9d7c43a39c63              # double 0.92547429285776805
	.quad	0x3fc2cc4b35d6f660              # double 0.14685955170527887
	.quad	0x3f7752515732c780              # double 0.0056937386863625816
	.quad	0x3fe23bae967ae458              # double 0.56978539839395648
	.quad	0x3fdc0a357606457a              # double 0.43812309766607138
	.quad	0x3feb3a249449a1a5              # double 0.85084752046991652
	.quad	0x3fb25c0e8c13a390              # double 0.071717175672928457
	.quad	0x3fd105e52843e934              # double 0.26598481113582584
	.quad	0x3fe08af23d6e70f7              # double 0.51696121214220525
	.quad	0x3fedf6462f1da7af              # double 0.93631276323616486
	.quad	0x3fdd6eeef5dcb5d6              # double 0.45989583978629633
	.quad	0x3fdf7a86ade49ee4              # double 0.49185339910262216
	.quad	0x3feef5cef5cb2082              # double 0.96750591284309473
	.quad	0x3fed62671a103f1a              # double 0.91826205339927758
	.quad	0x3feee36735f0efe2              # double 0.96525917563803554
	.quad	0x3fe3bbfb74f182b3              # double 0.61669705238826678
	.quad	0x3fd482650aa29b6e              # double 0.32045866049377636
	.quad	0x3fedf008664c981c              # double 0.93555088024436683
	.quad	0x3fe39093c562a4ee              # double 0.61139858772108169
	.quad	0x3fe1f88421f063f3              # double 0.56158644322124329
	.quad	0x3fee23c38b3f4046              # double 0.94186570355123744
	.quad	0x3fed7565347203be              # double 0.9205804848025918
	.quad	0x3f9922b6b933edc0              # double 0.024546484998593021
	.quad	0x3fd5a52169714106              # double 0.33820376679524633
	.quad	0x3fbe4cc5bfffa1e0              # double 0.11835895478691993
	.quad	0x3fd1d0ea31616398              # double 0.27837614843661518
	.quad	0x3fbf46c232926a40              # double 0.12217344031015731
	.quad	0x3feea7f41c780c90              # double 0.9580021434816377
	.quad	0x3fd5744521448838              # double 0.33522155998992131
	.quad	0x3fefa5cf9cb39734              # double 0.98899059873358519
	.quad	0x3fe26a0429661395              # double 0.57544143758478816
	.quad	0x3f8b4ef2890db4c0              # double 0.013334173972646801
	.quad	0x3fe28a8b1cef9f11              # double 0.57941203738752922
	.quad	0x3fe3dfa7cfa63865              # double 0.62105169826987761
	.quad	0x3feda89b61fe2561              # double 0.92683190478525657
	.quad	0x3fc34cb2f00603bc              # double 0.15077816696068946
	.quad	0x3fd0254e015b1aa6              # double 0.25227689869317727
	.quad	0x3fce0e5bfea02610              # double 0.23481321270837485
	.quad	0x3fd0e2fadbcb5778              # double 0.26385375465667193
	.quad	0x3fd0d9e84224bf8c              # double 0.26330000361758077
	.quad	0x3fe507bfa1b6a3ea              # double 0.65719586929946883
	.quad	0x3fec7f6bb6d80dbd              # double 0.8905542918368422
	.quad	0x3f97604b83dee4a0              # double 0.022828273700473134
	.quad	0x3fe615053bdeb436              # double 0.69006597226473931
	.quad	0x3fedd3b19b82a501              # double 0.93209152577506427
	.quad	0x3fd301de38f21ee8              # double 0.2969890171157048
	.quad	0x3fe9a4d08b29777b              # double 0.80136897258829209
	.quad	0x3fed33e360c7bf0e              # double 0.9125840082396921
	.quad	0x3fde48899ee98b62              # double 0.47317734259393351
	.quad	0x3fe56bf8ae25fac1              # double 0.66943010342932763
	.quad	0x3fef4c4ed3649288              # double 0.97806493079822676
	.quad	0x3fd68d84bb175488              # double 0.35238760252588763
	.quad	0x3feb04216dafbd7f              # double 0.84425422118322035
	.quad	0x3fe51357a2c71e22              # double 0.65861112396754984
	.quad	0x3fe76c774e192088              # double 0.73199048284097135
	.quad	0x3fee93b94df32220              # double 0.95553269600447165
	.quad	0x3fda9b8c185cb498              # double 0.41574385050882645
	.quad	0x3fedf102c8a0203d              # double 0.93567027268091574
	.quad	0x3fc6de61753a24e8              # double 0.17866152023297066
	.quad	0x3fdc8557e4025164              # double 0.44563863054761144
	.quad	0x3feaea4547363d69              # double 0.8410974875313687
	.quad	0x3fce7d904d906eec              # double 0.23820689952196206
	.quad	0x3fe63e969806b458              # double 0.69514016811957458
	.quad	0x3fe1c2dd6fad1767              # double 0.55503722964998026
	.quad	0x3fdab91633b81cc2              # double 0.41754679728223831
	.quad	0x3fef2f7f8c5958f5              # double 0.97454812442700122
	.quad	0x3fdd4f685ba66de6              # double 0.45797165823179709
	.quad	0x3fd5161fc7fe8ba0              # double 0.3294753506726753
	.quad	0x3fd45a66ec8be072              # double 0.31801770305856458
	.quad	0x3fe8a6a3d5fe44ac              # double 0.7703417949252489
	.quad	0x3fe5b6d8f3c040a4              # double 0.6785702477227642
	.quad	0x3fd72777ac409bca              # double 0.36178390332719046
	.quad	0x3fcf312bb7b9a368              # double 0.24368807288126537
	.quad	0x3fd069862f9f26a0              # double 0.25644068384699814
	.quad	0x3fd38eecba27edba              # double 0.30559843234342632
	.quad	0x3fee848087e88d05              # double 0.95367456955537533
	.quad	0x3fd9b31ac8321634              # double 0.40155667829853603
	.quad	0x3fdf1f0ad5fa7d7a              # double 0.48626967331252724
	.quad	0x3feea1850b78493b              # double 0.95721676101883391
	.quad	0x3fce4bf8d19a2ae8              # double 0.23669347986682188
	.quad	0x3fe34fad4dabb51b              # double 0.60347619218888171
	.quad	0x3fdd59bd39604042              # double 0.45860224345324607
	.quad	0x3fc82c26719c41e8              # double 0.18884735629445903
	.quad	0x3fe49f3718be2ef6              # double 0.64443545181845141
	.quad	0x3fe450bdf5e161cd              # double 0.63485620521083208
	.quad	0x3fe68fb82a445fb9              # double 0.70504387145319136
	.quad	0x3fee767ff99af78d              # double 0.95196532012026724
	.quad	0x3fdb3b92debd4266              # double 0.42551109077343197
	.quad	0x3fd468c497d99a22              # double 0.31889452771284443
	.quad	0x3fefc5be2e13f8d4              # double 0.99288853644955077
	.quad	0x3fa466a55bed5580              # double 0.039845626327102757
	.quad	0x3fd61934490ae94a              # double 0.34528834469860625
	.quad	0x3fb202582604a870              # double 0.070348271638666082
	.quad	0x3fe3dc503ea3e71b              # double 0.62064373239920501
	.quad	0x3f691897d028c000              # double 0.0030634846782717773
	.quad	0x3fe31f36f1cf13bf              # double 0.59756037929820838
	.quad	0x3feba53a611b1bb8              # double 0.86391943899149393
	.quad	0x3fe7ca347c6f5bae              # double 0.74343323043546206
	.quad	0x3fe5831399d1e533              # double 0.67225055735540307
	.quad	0x3fe6caa118dd9b33              # double 0.71223502022335194
	.quad	0x3f8568bb818cb6c0              # double 0.010453667536775568
	.quad	0x3febd864c7c906bc              # double 0.87016524334486389
	.quad	0x3fdde1581422620c              # double 0.46687890974274704
	.quad	0x3fe45b6674f2112d              # double 0.63615725365574394
	.quad	0x3fedccf7c1367982              # double 0.93127048241494514
	.quad	0x3fe5b33add9000ea              # double 0.67812865518501764
	.quad	0x3fdc2abe00d68ad8              # double 0.44010877687302985
	.quad	0x3fce782bb6140aec              # double 0.23804232016126237
	.quad	0x3feb81686122b3c6              # double 0.85954684230602463
	.quad	0x3fe3a186f70ef2a0              # double 0.6134676766738103
	.quad	0x3fde589da5a3b8e8              # double 0.47415867973076198
	.quad	0x3feaf9c99f4a360c              # double 0.84299164878183452
	.quad	0x3fc9016a7559a570              # double 0.19535570840825356
	.quad	0x3feaf5cfea27c650              # double 0.84250636800261169
	.quad	0x3fde071a228ded8e              # double 0.46918347715810504
	.quad	0x3fccfdac6f760e58              # double 0.22649150316657329
	.quad	0x3fec0185c0a26591              # double 0.87518584846400149
	.quad	0x3feb813df854cf18              # double 0.8595266199322138
	.quad	0x3fa14c93ea466310              # double 0.033787367198959584
	.quad	0x3feffe1191fda046              # double 0.99976423753560861
	.quad	0x3fe9d400615b2d08              # double 0.80712908758997148
	.quad	0x3fdf227cfc9d8008              # double 0.4864799944825795
	.quad	0x3fabe6b0a0fee760              # double 0.054494399693296058
	.quad	0x3fd3c9cb0d3c4206              # double 0.30919147770421807
	.quad	0x3fe90d9a6e2d02d3              # double 0.78291055220332806
	.quad	0x3fdf93805837e9b6              # double 0.49337776770667163
	.quad	0x3fe7bf5035b2324b              # double 0.74210367667689903
	.quad	0x3feb1987927f495f              # double 0.84686640370118116
	.quad	0x3fec3ff010111df4              # double 0.88280490053233373
	.quad	0x3feccdc0594ad509              # double 0.90011613311676897
	.quad	0x3fe9b6223a2a0115              # double 0.80348311767741853
	.quad	0x3fee235fe70492a1              # double 0.94181819077183004
	.quad	0x3fb5c8d4f252ab48              # double 0.085095700417395226
	.quad	0x3fe54935f5288987              # double 0.66518686182489339
	.quad	0x3fe2006f601d26bb              # double 0.56255310795059843
	.quad	0x3fe532ad5dd32f49              # double 0.662436183215939
	.quad	0x3fd150a8e67090dc              # double 0.27054808143499343
	.quad	0x3fee9d5626ec5f8e              # double 0.95670611955846296
	.quad	0x3fe5b74bceb52f13              # double 0.67862501499755223
	.quad	0x3fe4b934fe7632a1              # double 0.64760827731659643
	.quad	0x3fed288bdfde7092              # double 0.91119950985332054
	.quad	0x3fe896223cec4936              # double 0.76832687281629464
	.quad	0x3fe2f48cba517b6f              # double 0.59235226049700695
	.quad	0x3fdd0905ea7c36c4              # double 0.45367572688051561
	.quad	0x3fe9fc211388fb17              # double 0.81202749076314518
	.quad	0x3fab7cc333c1d520              # double 0.053686237400066839
	.quad	0x3fd7580fc0cc80e4              # double 0.36474984958660017
	.quad	0x3fe0c254f2b7c93f              # double 0.52372214704363518
	.quad	0x3fdf10d6e8a334c8              # double 0.48540280073650566
	.quad	0x3fcee5a655b3bc24              # double 0.24138335404083577
	.quad	0x3fc7932fa927239c              # double 0.18417926558893505
	.quad	0x3fd84f6914074076              # double 0.37984682994738905
	.quad	0x3fe11ffc8d17ce45              # double 0.53515460545754279
	.quad	0x3fe39f5d910c847f              # double 0.61320379571783679
	.quad	0x3fedf287bee2aecf              # double 0.93585574419327056
	.quad	0x3fb37220d2cf85b8              # double 0.075960208384933448
	.quad	0x3fd2b7b3c70c6302              # double 0.29246229589766426
	.quad	0x3fc3541feaadc058              # double 0.15100478133126916
	.quad	0x3fc0c9e12121efec              # double 0.1311608707218278
	.quad	0x3fc6c1b0e45aeaa8              # double 0.17778597974923582
	.quad	0x3fce7c71910eeacc              # double 0.23817271788524008
	.quad	0x3fdc4f9c4d1b9052              # double 0.44235904245420443
	.quad	0x3fe2fe92db03e8c5              # double 0.59357588554782892
	.quad	0x3fe1df22b74f7eed              # double 0.55848823359334931
	.quad	0x3feb044de820aaba              # double 0.84427543008253925
	.quad	0x3fceb35b2f021214              # double 0.23984851641957106
	.quad	0x3fe0c4c29e8a4f3a              # double 0.52401858296295889
	.quad	0x3fd02c437596a506              # double 0.25270163043258298
	.quad	0x3fef870e9344f4c2              # double 0.98523644221827333
	.quad	0x3fe323d545991d03              # double 0.59812415688875864
	.quad	0x3fede74c3da9ad71              # double 0.93448459666744388
	.quad	0x3f53d948ceeccc00              # double 0.0012114726084291316
	.quad	0x3fcdd1564fc2d698              # double 0.23295096296867679
	.quad	0x3fd5176c9bc0c71e              # double 0.32955470285661359
	.quad	0x3fea16c3fbd4f305              # double 0.81527899919419211
	.quad	0x3fd57225fcb08ef4              # double 0.33509206463553132
	.quad	0x3fd0e3ecbda77a76              # double 0.26391142388266731
	.quad	0x3fca89230d127d80              # double 0.20731008661548955
	.quad	0x3fec6a913ece6b03              # double 0.88800871149882743
	.quad	0x3fb6756635c10e40              # double 0.087728870509686807
	.quad	0x3fa6628870caf340              # double 0.043720496910714335
	.quad	0x3fdead4e96308e78              # double 0.4793278185554537
	.quad	0x3fec77badf0d3c6c              # double 0.8896154743650988
	.quad	0x3fc5ea0c4b57b824              # double 0.17120507887688163
	.quad	0x3fb46d41843f3b48              # double 0.079792113100876638
	.quad	0x3fd3c79b098ac984              # double 0.3090579598603187
	.quad	0x3fdebb5f57f3c280              # double 0.4801863058956215
	.quad	0x3fe21641b1bbff29              # double 0.56521687234633078
	.quad	0x3fdfc1df634f3926              # double 0.49620804498853699
	.quad	0x3fe989d5a254af40              # double 0.79807550149187279
	.quad	0x3fb8021369e4aed8              # double 0.093781674721579278
	.quad	0x3fd95419157c13f2              # double 0.39575793359864442
	.quad	0x3fe674081ac20950              # double 0.70166402078783996
	.quad	0x3fe20ae08f34546f              # double 0.56382778138744338
	.quad	0x3fe18f0baf5e5114              # double 0.54871162654538574
	.quad	0x3fe0e2f1c196ab01              # double 0.52770316896689462
	.quad	0x3fda5681ac29828e              # double 0.41152993977269936
	.quad	0x3fe704bbe92e8509              # double 0.71932788413337889
	.quad	0x3fe223a10ebdfd7d              # double 0.56684925917936335
	.quad	0x3fed6ef8f771e8e0              # double 0.91979645089238815
	.quad	0x3fd762e4f9d35c9e              # double 0.36541103741678593
	.quad	0x3fed3bb2e1184ac2              # double 0.91353744472356646
	.quad	0x3fe5d74e13fce038              # double 0.68253234771601168
	.quad	0x3fe5fca9b03c3dfa              # double 0.68709263249360153
	.quad	0x3fe25fbbbdb89c63              # double 0.57418620161923817
	.quad	0x3fed697bb4fa3fcc              # double 0.91912637087988846
	.quad	0x3fe3198783d0f068              # double 0.59686637635560391
	.quad	0x3fd0bebe785097b4              # double 0.26164209126943239
	.quad	0x3fa9e55d6bac8f10              # double 0.050578040498548416
	.quad	0x3fb961443706d108              # double 0.099140418466792224
	.quad	0x3f7a893f96fac680              # double 0.0064785465216786742
	.quad	0x3fe244db815348df              # double 0.57090544947484634
	.quad	0x3fe60f9c62f47c02              # double 0.68940562560226248
	.quad	0x3fef3785a2ac5ef5              # double 0.97552758953221874
	.quad	0x3fe90909e9f98a7a              # double 0.78235336015889279
	.quad	0x3fe5e14b0f02f4a6              # double 0.68375161106054771
	.quad	0x3fe8402ba6f95df0              # double 0.75783331501128082
	.quad	0x3fed37b216fff139              # double 0.91304878704207859
	.quad	0x3fd6ffa32d2a956c              # double 0.35935286913657793
	.quad	0x3fce87b04bf2290c              # double 0.23851588924691958
	.quad	0x3fef1d902e9faa35              # double 0.97235879045667295
	.quad	0x3fd506f2c1c3e464              # double 0.32854908869155097
	.quad	0x3fa3e8cabd0fb6e0              # double 0.038885436610014201
	.quad	0x3fd734cc81a3a12c              # double 0.36259758625102978
	.quad	0x3fee55f314e905cc              # double 0.94799188694030922
	.quad	0x3fe098ed9f884e13              # double 0.51866799505882211
	.quad	0x3fe71a27f27efe4f              # double 0.72194287645829458
	.quad	0x3feaa9cb01048ab2              # double 0.83322668265130617
	.quad	0x3fd2ea688c2f28d2              # double 0.2955571526514521
	.quad	0x3fd621a629e6ac3c              # double 0.34580377666378914
	.quad	0x3fd7214578b32660              # double 0.36140572344866051
	.quad	0x3fc04b717e9d46a8              # double 0.12730234796849982
	.quad	0x3fdb556480c15696              # double 0.42708695005181008
	.quad	0x3fb33fa8ce07d558              # double 0.07519011526149677
	.quad	0x3fe183d7e21cb2d6              # double 0.54734415209312703
	.quad	0x3fef103e358583d9              # double 0.9707327885954512
	.quad	0x3fd472d163ce4a3c              # double 0.31950793024694568
	.quad	0x3fd222a500354894              # double 0.28336453457189603
	.quad	0x3fec4c81937fcce0              # double 0.88433913048211465
	.quad	0x3fef88966dbcf7ba              # double 0.98542329247697258
	.quad	0x3fece40884fdab68              # double 0.90283609366211426
	.quad	0x3fb3886019f8eb58              # double 0.076299673405555324
	.quad	0x3fe295f879182aa1              # double 0.580806957733632
	.quad	0x3fde643da5cb9eba              # double 0.47486821356731534
	.quad	0x3fef6543e3c615ff              # double 0.98111147391381325
	.quad	0x3fd7b06d0d48ed0c              # double 0.37014318749761865
	.quad	0x3fd336d418a23c10              # double 0.30022146611821743
	.quad	0x3fed5a4f24ab1b2f              # double 0.91727406656068478
	.quad	0x3fd09a4c0202b792              # double 0.25941753574704152
	.quad	0x3fdb7080f7f9486a              # double 0.42874168602168672
	.quad	0x3fdea1f038609c76              # double 0.47863393312076796
	.quad	0x3fe802448fd64fe6              # double 0.75027683346933993
	.quad	0x3fb63b37fe514628              # double 0.08684110602305195
	.quad	0x3fdd2d1c41c35714              # double 0.45587831899807552
	.quad	0x3fce8b05b5cd2c24              # double 0.23861762406372222
	.quad	0x3febd804ba96acf9              # double 0.87011944239694039
	.quad	0x3fe512564b6e4f86              # double 0.65848841412160719
	.quad	0x3fd4568094399ee4              # double 0.31777967906098881
	.quad	0x3fc4ecfb26681b88              # double 0.16348208785367668
	.quad	0x3fc7b079056883a4              # double 0.18507302059245234
	.quad	0x3feab3b7b2a2cc9d              # double 0.83443817987280833
	.quad	0x3fd419c89197299e              # double 0.31407369821376985
	.quad	0x3fdd442ae6ff7afc              # double 0.45728561933894674
	.quad	0x3fcd848336da0bc0              # double 0.23060646227176385
	.quad	0x3fd196be0fd9d46e              # double 0.27482558772982812
	.quad	0x3fcca69971d1639c              # double 0.22383420999065329
	.quad	0x3fe3042bfe32e151              # double 0.5942592587298724
	.quad	0x3fd42f0bc3752406              # double 0.31537145698217761
	.quad	0x3fe5315fe18f01c5              # double 0.66227716497820011
	.quad	0x3f86348e594d0080              # double 0.010842430210346032
	.quad	0x3fe3dcb941b2320b              # double 0.62069380599274504
	.quad	0x3fe0d4b523be0d22              # double 0.52596528035102019
	.quad	0x3fe156e3e45af89b              # double 0.54185671425490811
	.quad	0x3fe79f8395fe9543              # double 0.73822192474168735
	.quad	0x3fd6f6d39875eeea              # double 0.35881509674776046
	.quad	0x3fe4357592b491b2              # double 0.63152578977001483
	.quad	0x3fe83f3053f944f8              # double 0.75771347428431479
	.quad	0x3fef857aa03095fc              # double 0.98504382407253343
	.quad	0x3faf7310bc5168c0              # double 0.061424754131353065
	.quad	0x3fec552634b6451d              # double 0.88539419455824808
	.quad	0x3fd93d0ad8d84598              # double 0.39435073066950954
	.quad	0x3f7d2327c724d280              # double 0.0071136049103200927
	.quad	0x3fdd721263f46290              # double 0.4600873924369262
	.quad	0x3fe30f115b65a4bc              # double 0.59558933115945178
	.quad	0x3fef951ba267ef90              # double 0.98695165367051807
	.quad	0x3fef0ce9d94fe102              # double 0.97032635158305447
	.quad	0x3febf995950eeb84              # double 0.87421683419175666
	.quad	0x3fdca058e1beb990              # double 0.4472868160763932
	.quad	0x3fe9bd2fc5999798              # double 0.80434406846756001
	.quad	0x3feaac36d9a034b2              # double 0.83352224831619126
	.quad	0x3fd3154fbbf5f046              # double 0.29817574840103978
	.quad	0x3fecc526bc931e7e              # double 0.89906632262223218
	.quad	0x3fedb2b7ab9facf8              # double 0.92806609649906502
	.quad	0x3fef35191114103f              # double 0.9752316793024035
	.quad	0x3fdc0a77ce037782              # double 0.4381389152384757
	.quad	0x3fbdabbabe6932a8              # double 0.11590163372711493
	.quad	0x3fd86fd3af073acc              # double 0.38182537167169239
	.quad	0x3fe7286e2cadb95c              # double 0.72368534780779781
	.quad	0x3fe3877357278fe8              # double 0.61028449079867375
	.quad	0x3fe07c6bedd15928              # double 0.51518818329603722
	.quad	0x3fe0ac02aadb237b              # double 0.52099736566843491
	.quad	0x3fdfa27147137ab2              # double 0.49428970280670648
	.quad	0x3fec4c78fdea7382              # double 0.88433503716406414
	.quad	0x3fefca8d96ada40b              # double 0.99347571782448207
	.quad	0x3fed3749788a289e              # double 0.9129989008227033
	.quad	0x3fe109ed4a0a6df7              # double 0.53246178113062015
	.quad	0x3fe1d16975ce96b0              # double 0.55681298264672385
	.quad	0x3fbb28e13a8b9c80              # double 0.10609252623872756
	.quad	0x3fa79149fd369990              # double 0.046030342254471113
	.quad	0x3fe546e55b8894d6              # double 0.6649042880786975
	.quad	0x3fe13a3efa724ea1              # double 0.53836010852178984
	.quad	0x3fe7d0e781164a65              # double 0.74425101482695466
	.quad	0x3fbebcd26448e5d0              # double 0.12006869266851727
	.quad	0x3fe5f0c3b7a89563              # double 0.68564020033651862
	.quad	0x3feb35adfa076797              # double 0.85030268510603235
	.quad	0x3fe6644a3af2b183              # double 0.69974242699895262
	.quad	0x3fd85f8f8649ef6a              # double 0.38083255876676125
	.quad	0x3fc8a28d88890dfc              # double 0.19246071974531265
	.quad	0x3fe188b5ca001ae5              # double 0.5479382462807193
	.quad	0x3fc96025f20f9064              # double 0.19824671096205571
	.quad	0x3feef42dd4826710              # double 0.96730700975169448
	.quad	0x3fdb2740cd4f12ca              # double 0.42427082109160763
	.quad	0x3fee920c2c3190cc              # double 0.9553280699879223
	.quad	0x3fc936f5a67f19b0              # double 0.19698973302565781
	.quad	0x3fb790bb73353578              # double 0.092052188517490197
	.quad	0x3fe7a01673feea6d              # double 0.73829195647642865
	.quad	0x3fb651606c919c38              # double 0.087179209238102184
	.quad	0x3fea6ff142233d99              # double 0.82616484563361603
	.quad	0x3fcf3d69c1be0790              # double 0.244061679459318
	.quad	0x3fdf23d1853bcbc4              # double 0.48656118403522108
	.quad	0x3fc49cd79dcac550              # double 0.16103644566241337
	.quad	0x3fe30cd243bad6d5              # double 0.59531510570988166
	.quad	0x3fe5acaf6a9c5e68              # double 0.67732973883080394
	.quad	0x3fd12ac2fb155fc2              # double 0.26823496360657029
	.quad	0x3fcdbe92c46be720              # double 0.23237833586591083
	.quad	0x3facefc3c0eccbc0              # double 0.056516759205258449
	.quad	0x3fee2ef0f3024620              # double 0.943230127932285
	.quad	0x3fe8fd7e86f12d91              # double 0.78094412189368445
	.quad	0x3fe93b37b9cc1409              # double 0.78847872055541857
	.quad	0x3fed87955bf8374b              # double 0.92280071223078985
	.quad	0x3fedbc8c113ca45e              # double 0.92926600805834503
	.quad	0x3fe2468af272d800              # double 0.5711111769985564
	.quad	0x3fedd238a2de9ee5              # double 0.93191177187415219
	.quad	0x3fd5f62bd8daf498              # double 0.34315010239863275
	.quad	0x3fe32801edf51770              # double 0.59863373256733432
	.quad	0x3fe1eb9be6946057              # double 0.56001086268498568
	.quad	0x3fe81b6148b3ff55              # double 0.75334228706194983
	.quad	0x3fe53564809c1ca0              # double 0.66276764983276237
	.quad	0x3fc462e0ecc57684              # double 0.1592675357923562
	.quad	0x3fe9600c136b07fc              # double 0.79297450821491066
	.quad	0x3fd757edd79b571c              # double 0.36474176459647523
	.quad	0x3feaf705cb0d0eb9              # double 0.8426541295852622
	.quad	0x3fd35f8d616baa0a              # double 0.30270704759337319
	.quad	0x3fd151a96fd3d6f4              # double 0.27060924454359214
	.quad	0x3fe8ae9b09ced48c              # double 0.77131416240321604
	.quad	0x3fd3b6c281ea14d8              # double 0.30802977263404108
	.quad	0x3fec62201c12eb54              # double 0.88697820170578234
	.quad	0x3feb21dbd82b4b25              # double 0.84788315029650063
	.quad	0x3fe2b2b09e370933              # double 0.58431273366321645
	.quad	0x3fc87de4b865ea28              # double 0.19134196285070115
	.quad	0x3fddd6e8c1cb4832              # double 0.46624201703264412
	.quad	0x3fd1d391383807ae              # double 0.27853804102061985
	.quad	0x3fd60bd5fe588986              # double 0.34447240675412905
	.quad	0x3fd40774e39c612a              # double 0.3129551146280557
	.quad	0x3fe32c0da938f3d7              # double 0.59912760783447083
	.quad	0x3fda7b4c779cc0e6              # double 0.41377555542841404
	.quad	0x3fda962287f617c0              # double 0.41541350629301732
	.quad	0x3fa57a69b3728ef0              # double 0.041949561267100921
	.quad	0x3fe4731c85bbc60a              # double 0.63905168647596722
	.quad	0x3fe3dccc75680e3e              # double 0.62070296221686028
	.quad	0x3fdaa17548e04f88              # double 0.41610462300126771
	.quad	0x3fd0bd78949883fe              # double 0.26156439315133173
	.quad	0x3f941e34103aef60              # double 0.019646466723073686
	.quad	0x3fe009f7e4de88d2              # double 0.50121683789282145
	.quad	0x3fec6c157695b6c9              # double 0.88819382821176263
	.quad	0x3fda99ad44693442              # double 0.41562968903310005
	.quad	0x3fd4fbbd8fc6d05a              # double 0.32786501923260902
	.quad	0x3fe31dce1a35e322              # double 0.59738831633794498
	.quad	0x3fe3f1591470cc38              # double 0.62321142189319456
	.quad	0x3fbacdccbc0285e8              # double 0.10470275487980241
	.quad	0x3fd7d05e0feeb0d8              # double 0.37209273868462622
	.quad	0x3fd1d3002212a3f4              # double 0.27850344970153107
	.quad	0x3fe888ddc33b2c9e              # double 0.76670730715831659
	.quad	0x3fd6104a0cc977fa              # double 0.34474421738366312
	.quad	0x3fed4a0ec4f702de              # double 0.91529024572090711
	.quad	0x3fe8ccc579c72563              # double 0.77499650749920723
	.quad	0x3fec9f9fa2b2e1a3              # double 0.89448529984570191
	.quad	0x3fe33b0b41345a8e              # double 0.60095751509909845
	.quad	0x3fb2b720a1f1b5a8              # double 0.073106803452637537
	.quad	0x3fa7a0b9b74cb2a0              # double 0.046148112893523718
	.quad	0x3fc3cba48166dc5c              # double 0.15465217894027006
	.quad	0x3feae445257ad488              # double 0.84036500282549387
	.quad	0x3feef47c97873421              # double 0.96734456630077059
	.quad	0x3fc60df5460b8328              # double 0.17230096740879586
	.quad	0x3fe3d1b17c1dc1de              # double 0.61934732667401327
	.quad	0x3feeb7d4cea5e4b2              # double 0.95994034157697272
	.quad	0x3fc2df97b07304f8              # double 0.14744850269020282
	.quad	0x3fefd16340311af6              # double 0.99431002175773986
	.quad	0x3fea0c19d71b4562              # double 0.813977165346085
	.quad	0x3fe8ccc630da4063              # double 0.77499684850228012
	.quad	0x3fac8f3701f66940              # double 0.055780142774170205
	.quad	0x3fec4f24928288d7              # double 0.88466099372115081
	.quad	0x3fde744eed2de2a4              # double 0.47584889566454991
	.quad	0x3fe81fde7e0ac83e              # double 0.7538902723083607
	.quad	0x3fcea095205629e4              # double 0.239275589742035
	.quad	0x3fd9aa1a0a01b906              # double 0.40100718476504971
	.quad	0x3fe7060973a42a63              # double 0.71948692880807774
	.quad	0x3fdb817b5bb8564e              # double 0.42977794606244835
	.quad	0x3fd9c4448b1b3c7c              # double 0.40260423264130174
	.quad	0x3fbc508097ee3040              # double 0.1106033678935896
	.quad	0x3fe36e2df2aeed9e              # double 0.60719964408001537
	.quad	0x3fea2f8d0a880528              # double 0.81830455834293492
	.quad	0x3fc253bd3c93ea10              # double 0.14318051774883189
	.quad	0x3fb2a50bd2989868              # double 0.072830904879624847
	.quad	0x3fe5b9d80a9ab73c              # double 0.67893602439082867
	.quad	0x3fbbf7a281c1d550              # double 0.10924735706233446
	.quad	0x3fde2ba10bf2a136              # double 0.47141290823721549
	.quad	0x3fc0a0386cb1b3dc              # double 0.12988953883487298
	.quad	0x3fecca6021749188              # double 0.89970404180762475
	.quad	0x3f97875fe0ee0960              # double 0.022977350333812097
	.quad	0x3fe0640b05360b82              # double 0.51221228616519476
	.quad	0x3fb51a580cb0d3d8              # double 0.082433226679156646
	.quad	0x3fa1ee3a54706660              # double 0.035020659263136578
	.quad	0x3fddd8a293a7cb6e              # double 0.46634735507466629
	.quad	0x3fed30f0b052ec69              # double 0.91222414434686272
	.quad	0x3fd544dfe0b048d2              # double 0.33232876722571547
	.quad	0x3fd3c6979ce28b10              # double 0.30899610825342538
	.quad	0x3fb8af1072e59048              # double 0.096421268511734159
	.quad	0x3fd1a7d4d1453ad2              # double 0.27586861073079405
	.quad	0x3fe60844ff3a2d10              # double 0.68850946282455716
	.quad	0x3fdb94f9c0221610              # double 0.43096774828913542
	.quad	0x3fdb98fd3f91a506              # double 0.43121272285368695
	.quad	0x3fd763d057a80242              # double 0.36546715316947964
	.quad	0x3fbf094322995678              # double 0.12123508066846422
	.quad	0x3fea39cedaf6c352              # double 0.81955664411916929
	.quad	0x3fef95fd3dd23d22              # double 0.98705923151456809
	.quad	0x3fec2f72c0e59c2e              # double 0.880792023422037
	.quad	0x3fed2294482f9fed              # double 0.91047109698138018
	.quad	0x3fdace958b5e1bf0              # double 0.41885889635199103
	.quad	0x3f80826fa42c88c0              # double 0.0080612871148030285
	.quad	0x3fea9e51cd470f98              # double 0.83182611554410624
	.quad	0x3fda2b3b13d0455c              # double 0.40888859686773116
	.quad	0x3fe04af82dfbfdea              # double 0.50915154439274812
	.quad	0x3fd03708056ad39e              # double 0.2533588459876287
	.quad	0x3fc6a78f8bd3a310              # double 0.17698854758716509
	.quad	0x3fdf8c7f7f5122ae              # double 0.49295031960768199
	.quad	0x3fbc902a4dd2eab8              # double 0.1115747871398679
	.quad	0x3fd36eac23045d7c              # double 0.30362990779527599
	.quad	0x3fe50d8f8986b2e0              # double 0.65790535793857075
	.quad	0x3fb91d4a4497a7a8              # double 0.098103181596938982
	.quad	0x3fb16dfa6579ff10              # double 0.06808438279585638
	.quad	0x3fc698cdfe45ea9c              # double 0.17653822818450216
	.quad	0x3fe4b229718e3fe2              # double 0.64674827746238983
	.quad	0x3fd68562d85d4428              # double 0.35189124230697866
	.quad	0x3fe2ba28730b5a79              # double 0.58522436589812721
	.quad	0x3f9b48f961767f40              # double 0.026645561765348491
	.quad	0x3fe66376f447da59              # double 0.69964168273038319
	.quad	0x3fe67075c571d73c              # double 0.7012280327169047
	.quad	0x3fd50e47c265ad62              # double 0.32899660095309546
	.quad	0x3fed29a214434514              # double 0.91133216817448436
	.quad	0x3fe665f6a4d1908a              # double 0.69994671050200563
	.quad	0x3fa80f9baf69b380              # double 0.04699408069868749
	.quad	0x3fef74a757c78657              # double 0.98298995155728163
	.quad	0x3fbe93cd3dc87728              # double 0.11944277532935799
	.quad	0x3fefd51f36a47877              # double 0.99476586029392322
	.quad	0x3fe099ab8f1cdf94              # double 0.51875856353489036
	.quad	0x3fe1d7fa48ae81e7              # double 0.5576144618572102
	.quad	0x3fed0079714a076c              # double 0.90630790831367624
	.quad	0x3fed7f5f0e85231d              # double 0.92179825626326173
	.quad	0x3fea0c7e4984cbb6              # double 0.81402506217124571
	.quad	0x3fecbb0bb00595d6              # double 0.89783272151242488
	.quad	0x3fec23244dec74f7              # double 0.87928977221932214
	.quad	0x3fccdaeefc16d4ac              # double 0.22543132123033638
	.quad	0x3fe3837238e549c3              # double 0.60979567634995424
	.quad	0x3fd9f05b22cb57c4              # double 0.4052951659954227
	.quad	0x3feebcf7df3ef0bb              # double 0.96056741335589579
	.quad	0x3fe52b95d3d41399              # double 0.66157046673525877
	.quad	0x3fd6c34a22338f40              # double 0.35566953029614368
	.quad	0x3fd0a20213965622              # double 0.25988819039170796
	.quad	0x3fe18ad423ccbfa0              # double 0.54819685928486095
	.quad	0x3fe6fff02927117b              # double 0.71874244725817904
	.quad	0x3fc4da01e83c7e9c              # double 0.16290305938399718
	.quad	0x3fe0cd05f8c4325c              # double 0.52502726161180702
	.quad	0x3fdeb9864c519a8c              # double 0.48007352307323781
	.quad	0x3febfc32cc6eb969              # double 0.87453594139314561
	.quad	0x3fe6733080628f88              # double 0.7015612132567961
	.quad	0x3f973233b4fd72c0              # double 0.022652442857508559
	.quad	0x3fef094c44301901              # double 0.9698849994463502
	.quad	0x3fee6733e3349726              # double 0.95009798408566293
	.quad	0x3fe6aa69908bfcae              # double 0.70830229026605251
	.quad	0x3fef170b03afc6c3              # double 0.97156286926311741
	.quad	0x3fded7ae7f7f64d8              # double 0.48191416216793703
	.quad	0x3fe494cbdedfc9a1              # double 0.64316361932860755
	.quad	0x3fa4a79e2c2f2560              # double 0.040341322797369683
	.quad	0x3fdea4bfb677b098              # double 0.478805473509746
	.quad	0x3feb5907c4926a93              # double 0.8546179618163755
	.quad	0x3fe3037fec7ca5ee              # double 0.59417720974778176
	.quad	0x3fe89c2cf3802ee1              # double 0.76906440314038715
	.quad	0x3f9510f865055080              # double 0.020572549024408193
	.quad	0x3fe7c77fd92689cb              # double 0.74310295498099188
	.quad	0x3fe2d53f3ea04477              # double 0.58853113395356516
	.quad	0x3fdcdcc18a75a4a8              # double 0.45097387811126532
	.quad	0x3fc5c4d17562b348              # double 0.17006891471592156
	.quad	0x3fb0c56f5bd15390              # double 0.065512618938852407
	.quad	0x3fed6d83cad449a3              # double 0.91961850752914065
	.quad	0x3fd9c16401966f92              # double 0.40242862849276506
	.quad	0x3fe6371929743d50              # double 0.69422586533065989
	.quad	0x3fd9308e971e7430              # double 0.39358868367873168
	.quad	0x3fa1208999d5f6f0              # double 0.033451366452011189
	.quad	0x3fd3776e47393d2c              # double 0.30416447596958807
	.quad	0x3fee1c2293ba2ee6              # double 0.94093445637687689
	.quad	0x3fd5ae79076b281a              # double 0.33877397274466292
	.quad	0x3fece07879129a6e              # double 0.90240119597440382
	.quad	0x3f93efd1946a69a0              # double 0.019469523128103128
	.quad	0x3fd30a3cbb9c1454              # double 0.29749983140238112
	.quad	0x3fe2b4dfe8537237              # double 0.58457942367710458
	.quad	0x3fe81c2d1a4ad9a4              # double 0.7534394753954996
	.quad	0x3fc7f887419e3d2c              # double 0.18727198318490801
	.quad	0x3fe516c2c498ad60              # double 0.65902841947301383
	.quad	0x3fe3904d3ab826a0              # double 0.61136495083447429
	.quad	0x3fcc9883ed43eab8              # double 0.22340439877719631
	.quad	0x3fe59e973156044e              # double 0.67560920368135569
	.quad	0x3fe616aee0853c9e              # double 0.69026893474246598
	.quad	0x3fe5e5ea4b7beab1              # double 0.68431582205751884
	.quad	0x3fe7a98faf1fa8f3              # double 0.73944839671938067
	.quad	0x3fe080f8a1685bf9              # double 0.51574355626041701
	.quad	0x3fdf0f15636ca30c              # double 0.48529562673006477
	.quad	0x3fe78c5aa29eb072              # double 0.73588306199736864
	.quad	0x3fe6bd9f531ff215              # double 0.71064726100263675
	.quad	0x3fe5db9bcb33cbd4              # double 0.68305768669085376
	.quad	0x3fbcebb02badb500              # double 0.11297131601687127
	.quad	0x3fdf4d0aeb4a594e              # double 0.48907731034832558
	.quad	0x3fd1d304fbc2101e              # double 0.27850460611102956
	.quad	0x3fec8f91db5c578d              # double 0.89252560466660358
	.quad	0x3fdfd365e43d741e              # double 0.4972777108103531
	.quad	0x3fd2c51c5a3c596e              # double 0.29328068554004616
	.quad	0x3feedac87fd5e2b7              # double 0.96420693366879717
	.quad	0x3fcdc4b0ed5d76a4              # double 0.23256503667919504
	.quad	0x3fc585991de6b3e4              # double 0.16813959083574936
	.quad	0x3fc2013c5b9c2afc              # double 0.14066271279474296
	.quad	0x3fec15b59495f9e1              # double 0.87765006085083652
	.quad	0x3fd2d05d1995cede              # double 0.29396750925591941
	.quad	0x3feda1b6f47c16f5              # double 0.9259905600635806
	.quad	0x3feb18f4bd9e5dd5              # double 0.84679638895880294
	.quad	0x3fefe18febb9089a              # double 0.99628444709402975
	.quad	0x3fb9e6d48387c768              # double 0.10117843829337192
	.quad	0x3fef5643b4e710e1              # double 0.9792803319219524
	.quad	0x3fed211f621e2aca              # double 0.91029328502312379
	.quad	0x3fe0951b5c793e7d              # double 0.51820152341129211
	.quad	0x3fe5e3a96e2156c8              # double 0.68404075155077582
	.quad	0x3fd16fce88508604              # double 0.27244914352385785
	.quad	0x3fdca1eeca123770              # double 0.44738359197150768
	.quad	0x3fe137cb99cdba2e              # double 0.53806095161218592
	.quad	0x3fdb9713f107956e              # double 0.43109606302308279
	.quad	0x3fd11432e34502a4              # double 0.26685783571523758
	.quad	0x3fdc72391c51343a              # double 0.44447162404395935
	.quad	0x3fec691638f8bdfd              # double 0.88782797934794611
	.quad	0x3fd073fd0d1f374e              # double 0.25707937509001944
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
