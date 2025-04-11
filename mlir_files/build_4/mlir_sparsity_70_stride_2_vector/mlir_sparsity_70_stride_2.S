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
	.quad	3000                            # 0xbb8
	.quad	1                               # 0x1
	.quad	100                             # 0x64
.LCPI2_1:
	.quad	0                               # 0x0
	.quad	3000                            # 0xbb8
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
	lui	a7, %hi(.L__constant_3000xindex)
	addi	a7, a7, %lo(.L__constant_3000xindex)
	lui	t0, %hi(.L__constant_3000xf64)
	addi	t0, t0, %lo(.L__constant_3000xf64)
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
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	113                             # 0x71
	.quad	119                             # 0x77
	.quad	173                             # 0xad
	.quad	177                             # 0xb1
	.quad	232                             # 0xe8
	.quad	239                             # 0xef
	.quad	295                             # 0x127
	.quad	300                             # 0x12c
	.quad	355                             # 0x163
	.quad	362                             # 0x16a
	.quad	417                             # 0x1a1
	.quad	423                             # 0x1a7
	.quad	476                             # 0x1dc
	.quad	485                             # 0x1e5
	.quad	542                             # 0x21e
	.quad	546                             # 0x222
	.quad	603                             # 0x25b
	.quad	612                             # 0x264
	.quad	667                             # 0x29b
	.quad	675                             # 0x2a3
	.quad	730                             # 0x2da
	.quad	739                             # 0x2e3
	.quad	794                             # 0x31a
	.quad	805                             # 0x325
	.quad	860                             # 0x35c
	.quad	863                             # 0x35f
	.quad	916                             # 0x394
	.quad	920                             # 0x398
	.quad	974                             # 0x3ce
	.quad	981                             # 0x3d5
	.quad	1033                            # 0x409
	.quad	1040                            # 0x410
	.quad	1092                            # 0x444
	.quad	1100                            # 0x44c
	.quad	1153                            # 0x481
	.quad	1160                            # 0x488
	.quad	1212                            # 0x4bc
	.quad	1223                            # 0x4c7
	.quad	1276                            # 0x4fc
	.quad	1286                            # 0x506
	.quad	1337                            # 0x539
	.quad	1345                            # 0x541
	.quad	1401                            # 0x579
	.quad	1404                            # 0x57c
	.quad	1460                            # 0x5b4
	.quad	1467                            # 0x5bb
	.quad	1520                            # 0x5f0
	.quad	1532                            # 0x5fc
	.quad	1585                            # 0x631
	.quad	1589                            # 0x635
	.quad	1642                            # 0x66a
	.quad	1645                            # 0x66d
	.quad	1700                            # 0x6a4
	.quad	1710                            # 0x6ae
	.quad	1763                            # 0x6e3
	.quad	1766                            # 0x6e6
	.quad	1817                            # 0x719
	.quad	1824                            # 0x720
	.quad	1875                            # 0x753
	.quad	1884                            # 0x75c
	.quad	1937                            # 0x791
	.quad	1944                            # 0x798
	.quad	1997                            # 0x7cd
	.quad	2004                            # 0x7d4
	.quad	2057                            # 0x809
	.quad	2063                            # 0x80f
	.quad	2115                            # 0x843
	.quad	2120                            # 0x848
	.quad	2173                            # 0x87d
	.quad	2182                            # 0x886
	.quad	2234                            # 0x8ba
	.quad	2239                            # 0x8bf
	.quad	2296                            # 0x8f8
	.quad	2300                            # 0x8fc
	.quad	2351                            # 0x92f
	.quad	2353                            # 0x931
	.quad	2404                            # 0x964
	.quad	2409                            # 0x969
	.quad	2461                            # 0x99d
	.quad	2464                            # 0x9a0
	.quad	2519                            # 0x9d7
	.quad	2523                            # 0x9db
	.quad	2575                            # 0xa0f
	.quad	2584                            # 0xa18
	.quad	2637                            # 0xa4d
	.quad	2642                            # 0xa52
	.quad	2693                            # 0xa85
	.quad	2698                            # 0xa8a
	.quad	2749                            # 0xabd
	.quad	2756                            # 0xac4
	.quad	2809                            # 0xaf9
	.quad	2812                            # 0xafc
	.quad	2866                            # 0xb32
	.quad	2874                            # 0xb3a
	.quad	2930                            # 0xb72
	.quad	2938                            # 0xb7a
	.quad	2993                            # 0xbb1
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
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
	.quad	73                              # 0x49
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
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	46                              # 0x2e
	.quad	76                              # 0x4c
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	88                              # 0x58
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
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
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	37                              # 0x25
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
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	29                              # 0x1d
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
	.quad	45                              # 0x2d
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
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	30                              # 0x1e
	.quad	50                              # 0x32
	.quad	86                              # 0x56
	.quad	89                              # 0x59
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
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	86                              # 0x56
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
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
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	4                               # 0x4
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	55                              # 0x37
	.quad	83                              # 0x53
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	70                              # 0x46
	.quad	80                              # 0x50
	.quad	88                              # 0x58
	.quad	97                              # 0x61
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
	.quad	31                              # 0x1f
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
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
	.quad	7                               # 0x7
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	71                              # 0x47
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	53                              # 0x35
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	56                              # 0x38
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	43                              # 0x2b
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
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
	.quad	45                              # 0x2d
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
	.quad	75                              # 0x4b
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
	.quad	31                              # 0x1f
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
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
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	47                              # 0x2f
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	90                              # 0x5a
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
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
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
	.quad	25                              # 0x19
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	57                              # 0x39
	.quad	64                              # 0x40
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
	.quad	35                              # 0x23
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
	.quad	59                              # 0x3b
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
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
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
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	3                               # 0x3
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	55                              # 0x37
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
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
	.quad	18                              # 0x12
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	38                              # 0x26
	.quad	60                              # 0x3c
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	31                              # 0x1f
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	69                              # 0x45
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
	.quad	21                              # 0x15
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	24                              # 0x18
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
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
	.quad	19                              # 0x13
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
	.quad	51                              # 0x33
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	21                              # 0x15
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	21                              # 0x15
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	81                              # 0x51
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	13                              # 0xd
	.quad	33                              # 0x21
	.quad	62                              # 0x3e
	.quad	81                              # 0x51
	.quad	88                              # 0x58
	.quad	96                              # 0x60
	.quad	97                              # 0x61
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
	.quad	41                              # 0x29
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
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	94                              # 0x5e
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	66                              # 0x42
	.quad	81                              # 0x51
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
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
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	12                              # 0xc
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	89                              # 0x59
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	25                              # 0x19
	.quad	35                              # 0x23
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	16                              # 0x10
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	70                              # 0x46
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
	.quad	49                              # 0x31
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	21                              # 0x15
	.quad	53                              # 0x35
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
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
	.quad	35                              # 0x23
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
	.quad	2                               # 0x2
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	54                              # 0x36
	.quad	66                              # 0x42
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	72                              # 0x48
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
	.quad	71                              # 0x47
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
	.quad	19                              # 0x13
	.quad	99                              # 0x63
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
	.quad	69                              # 0x45
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
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	43                              # 0x2b
	.quad	69                              # 0x45
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
	.quad	27                              # 0x1b
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
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	31                              # 0x1f
	.quad	39                              # 0x27
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
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
	.quad	81                              # 0x51
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
	.quad	32                              # 0x20
	.quad	72                              # 0x48
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
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
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
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
	.quad	23                              # 0x17
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
	.quad	53                              # 0x35
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
	.quad	73                              # 0x49
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
	.quad	6                               # 0x6
	.quad	34                              # 0x22
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
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
	.quad	51                              # 0x33
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
	.quad	3                               # 0x3
	.quad	44                              # 0x2c
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
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
	.quad	25                              # 0x19
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
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	34                              # 0x22
	.quad	67                              # 0x43
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
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
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
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
	.quad	75                              # 0x4b
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
	.quad	40                              # 0x28
	.quad	70                              # 0x46
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
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
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
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
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
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	38                              # 0x26
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	66                              # 0x42
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
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
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
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	68                              # 0x44
	.quad	88                              # 0x58
	.quad	99                              # 0x63
	.size	.L__constant_3000xindex, 24000

	.type	.L__constant_3000xf64,@object   # @__constant_3000xf64
	.p2align	6, 0x0
.L__constant_3000xf64:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
	.size	.L__constant_3000xf64, 24000

	.type	.L__constant_100x100xf64,@object # @__constant_100x100xf64
	.p2align	6, 0x0
.L__constant_100x100xf64:
	.quad	0x3fe2929ff8382713              # double 0.58039854507771549
	.quad	0x3fe85e0f8d832fc4              # double 0.76148202551984711
	.quad	0x3fc252b81d659880              # double 0.14314938960450618
	.quad	0x3fe63e44a205c312              # double 0.69510108609219601
	.quad	0x3fe0b444105ce693              # double 0.52200511165502161
	.quad	0x3fefcd02f6735fa8              # double 0.99377582678697695
	.quad	0x3f933ada7f1d51a0              # double 0.018779195793585779
	.quad	0x3fdef4352eea1406              # double 0.48365525800210241
	.quad	0x3fd1ad5a8b9cf47a              # double 0.27620566972820593
	.quad	0x3feecb73dd55aaee              # double 0.96233552197858585
	.quad	0x3fe48f34ad77475d              # double 0.6424811733252046
	.quad	0x3fc1770a437ad37c              # double 0.13644531531249615
	.quad	0x3fc420e4d9bac108              # double 0.15725384360622052
	.quad	0x3fef1f139a3d0037              # double 0.97254352688469836
	.quad	0x3fd8efafe060d202              # double 0.38962933456357984
	.quad	0x3fdb40059a2acfca              # double 0.42578258567231997
	.quad	0x3fc85e7999da1908              # double 0.19038314831068015
	.quad	0x3fdaa98f29072bb4              # double 0.41659907347337399
	.quad	0x3fe5ec1e58deb2f2              # double 0.68507306439786775
	.quad	0x3fed635978ef4760              # double 0.91837762470298045
	.quad	0x3fec33e210b1ccaf              # double 0.88133338223123825
	.quad	0x3fe5a83513e98616              # double 0.67678312195875168
	.quad	0x3fd460c7bcaa5886              # double 0.31840699600559963
	.quad	0x3fd23b918b0fe7c2              # double 0.28488577442442076
	.quad	0x3fe15b428a64129a              # double 0.54239012746309645
	.quad	0x3fdf730706e35688              # double 0.49139571831379003
	.quad	0x3fc3dde6ff8fa4b4              # double 0.15520942190713571
	.quad	0x3fd1adb0bcf0fd52              # double 0.27622621966653071
	.quad	0x3fd041b495e9ad8c              # double 0.25401034011766721
	.quad	0x3fcb01c049f83f50              # double 0.21099094020655196
	.quad	0x3fd6099a29b1c8c4              # double 0.3443360716984325
	.quad	0x3febb7dce60b9fd9              # double 0.86619419985526769
	.quad	0x3fcf00c52cc5f804              # double 0.24221100507924131
	.quad	0x3fe0c7f3bf52ade1              # double 0.52440821998373732
	.quad	0x3fd5357cd8133600              # double 0.33138962842062369
	.quad	0x3f999652e772bba0              # double 0.02498750245711856
	.quad	0x3fe400e5ebd9a784              # double 0.62510963501448247
	.quad	0x3fda6d3a6f0a7e44              # double 0.4129167637238178
	.quad	0x3fb5b1ac15b55228              # double 0.084742312717317803
	.quad	0x3fc1d030cf5bbb04              # double 0.13916597485464177
	.quad	0x3fbe082fa2a59ee0              # double 0.11731240959999978
	.quad	0x3f992dacee754b20              # double 0.024588300756771209
	.quad	0x3fed67866b8ea9d8              # double 0.91888733870774342
	.quad	0x3fe58ef4d5afa291              # double 0.67370073066293135
	.quad	0x3fd0d71fbf7bb994              # double 0.26313012790242252
	.quad	0x3fe643188400b0eb              # double 0.69569040090348488
	.quad	0x3feec53ee5dfd826              # double 0.96157784364072962
	.quad	0x3fd1fff3dadde898              # double 0.28124710439409162
	.quad	0x3fdd4c81b42c044a              # double 0.45779459566989955
	.quad	0x3fd387becb7ed5b8              # double 0.3051602351436844
	.quad	0x3fed40101f761c3c              # double 0.91407018799589634
	.quad	0x3fef233752054f9c              # double 0.97304883975674583
	.quad	0x3fc0741decdeb728              # double 0.12854360643307783
	.quad	0x3fd749e6cac34272              # double 0.36388559151695354
	.quad	0x3fdcc02df2740e1e              # double 0.44922970463832879
	.quad	0x3fc6d5475461b920              # double 0.1783837472934886
	.quad	0x3fe41362e4646e76              # double 0.62736649139283318
	.quad	0x3fcea167853fc008              # double 0.23930067068386074
	.quad	0x3fe36ce16c04d8d9              # double 0.60704108331153883
	.quad	0x3fcd72ade6aef330              # double 0.23006223453367047
	.quad	0x3f9b5c7f3c28ac00              # double 0.026720035597616487
	.quad	0x3fdb86613f4f226a              # double 0.43007689650088443
	.quad	0x3f90799874caa960              # double 0.016088850143810673
	.quad	0x3fd1b4c4a4bef03e              # double 0.27665821159803616
	.quad	0x3fc1fa02efb51400              # double 0.14044224457225596
	.quad	0x3f9b6d26d07a59c0              # double 0.026783567881091264
	.quad	0x3fc8e897d0170410              # double 0.19459817562713555
	.quad	0x3fbf732540514688              # double 0.12285073108912503
	.quad	0x3fdb6228b23972aa              # double 0.42786614804007661
	.quad	0x3fead003374125c0              # double 0.83789215843096798
	.quad	0x3feeb46112df0e82              # double 0.95951894460490927
	.quad	0x3fef6ec382fc814e              # double 0.98227096160193539
	.quad	0x3fda2249fe4c5e7c              # double 0.40834283670253746
	.quad	0x3fb63a9f85df10f8              # double 0.086832018073497497
	.quad	0x3fe62395a9fa6087              # double 0.69184382628283536
	.quad	0x3fe1b4e738784911              # double 0.55333291081686486
	.quad	0x3f5030d6a779a600              # double 9.8820650409903176E-4
	.quad	0x3fd3afe1807ef7e6              # double 0.30760991619524558
	.quad	0x3fede391f98f5023              # double 0.93402956716682117
	.quad	0x3feacca411e94e60              # double 0.83748057840643852
	.quad	0x3fec7c4707ff9f4a              # double 0.89017058908664493
	.quad	0x3fdcb7fd193a880c              # double 0.44872977699026317
	.quad	0x3feedfd280e26b2c              # double 0.96482205555671418
	.quad	0x3fe051af4f8c2ad7              # double 0.50997128998400398
	.quad	0x3febd352a020d99b              # double 0.8695462348467119
	.quad	0x3fd04a2d74c11564              # double 0.25452743913441211
	.quad	0x3fda51b7918cf19c              # double 0.41123761381074941
	.quad	0x3fda9f0157e51f42              # double 0.41595491012093444
	.quad	0x3fc0f0c6ca7774c0              # double 0.13234791647020039
	.quad	0x3fe346eb4bb58db0              # double 0.60240711962653926
	.quad	0x3fd72a377ef86a52              # double 0.36195170783472463
	.quad	0x3fad3c29966216c0              # double 0.057099628073996822
	.quad	0x3fe37332294d96b9              # double 0.60781200472839381
	.quad	0x3fd1ee6c7a922e3c              # double 0.28017723054719901
	.quad	0x3fe4c893a3f68a27              # double 0.64948446296722728
	.quad	0x3fd18c5738d61a7a              # double 0.27419071722434973
	.quad	0x3fe9427fd1917bdc              # double 0.78936758929546213
	.quad	0x3fe2900a6fb1c8b1              # double 0.58008310141874209
	.quad	0x3fe590b192412dfb              # double 0.67391279759743783
	.quad	0x3fdcb91698069454              # double 0.44879689069995732
	.quad	0x3fe1f7e8fe6928b7              # double 0.56151246728520376
	.quad	0x3fc551650d15732c              # double 0.16654647005898349
	.quad	0x3fdbf2632983723e              # double 0.43666914991425532
	.quad	0x3fdc6c2e98a972bc              # double 0.44410290630711891
	.quad	0x3fde36d42148d954              # double 0.47209647417493739
	.quad	0x3fe2809e5b390976              # double 0.57820051018670315
	.quad	0x3febedcdd442c5fb              # double 0.87277881104654342
	.quad	0x3fed74951fb5fb9a              # double 0.92048126405267117
	.quad	0x3fc2345ef0612ef0              # double 0.14222323167120221
	.quad	0x3fe4dc5f2d7bfe42              # double 0.65190085300123024
	.quad	0x3fe7362aabfc2c48              # double 0.72536214438276492
	.quad	0x3fe232c330324097              # double 0.56869658864345041
	.quad	0x3fd3c2dd1815bbc2              # double 0.30876853324928899
	.quad	0x3fbab27dbf4f6a60              # double 0.10428605957660286
	.quad	0x3fd70f97b96e2950              # double 0.36032670124463539
	.quad	0x3f9c5794abe76040              # double 0.027677844040084887
	.quad	0x3fdd2b205236229a              # double 0.45575721767867494
	.quad	0x3fce1a6345e440b4              # double 0.23518029129673368
	.quad	0x3fe87af7f083924f              # double 0.76501080489522078
	.quad	0x3fb2000d6cd71be8              # double 0.070313300201732098
	.quad	0x3febff0e6fd3290a              # double 0.87488481369771987
	.quad	0x3fdbfaa4811321e6              # double 0.4371730099196881
	.quad	0x3fe92179d1bf64d0              # double 0.78533640829405194
	.quad	0x3fe28579d562f210              # double 0.57879344632198304
	.quad	0x3fc14e5be1a3db30              # double 0.13520382421094146
	.quad	0x3fcdd068c7b13928              # double 0.2329226470050767
	.quad	0x3fe3d80ecb95e283              # double 0.62012424242773567
	.quad	0x3fe0ecbde22e27ea              # double 0.52889913726653259
	.quad	0x3fdf38ac1919382a              # double 0.48783400012041744
	.quad	0x3fea92098897c688              # double 0.83032681158347632
	.quad	0x3fc946f6a867e640              # double 0.19747813437406769
	.quad	0x3fd412835d717cdc              # double 0.31362995267222771
	.quad	0x3fe396ae8e3e3878              # double 0.61214378148885285
	.quad	0x3fe5aaccc4e6d966              # double 0.67709959466337177
	.quad	0x3fe919e9fbafa5d8              # double 0.78441332967229993
	.quad	0x3fd05f618ffecc88              # double 0.2558216005520042
	.quad	0x3fc210c78ce49d18              # double 0.14113706950704663
	.quad	0x3fe9317af05e7156              # double 0.78729006716779781
	.quad	0x3fe0ab12830f62fe              # double 0.5208828506248151
	.quad	0x3fe71d9ad16d99ca              # double 0.7223638620751498
	.quad	0x3fdc3faa9bc4c326              # double 0.4413858910730134
	.quad	0x3fe6bfc524013a89              # double 0.71090943367183101
	.quad	0x3fdb4b304e50fdb4              # double 0.42646415374835134
	.quad	0x3fe5fb8cf08bfad1              # double 0.68695685369297099
	.quad	0x3fd4fc8c9d59e936              # double 0.32791438452081267
	.quad	0x3fcdf648b19bf800              # double 0.23407848999335101
	.quad	0x3fbab752b6d6ecb8              # double 0.10435978854995909
	.quad	0x3fe036f9d094ee12              # double 0.50671091784119171
	.quad	0x3fe7992216b08f9a              # double 0.73744301253872213
	.quad	0x3fc84618bbdc38f4              # double 0.18963917897094229
	.quad	0x3fdadfedb2de24c4              # double 0.41991751163056912
	.quad	0x3fe777cdbe2a0c6e              # double 0.73337447301345349
	.quad	0x3fdce031a65463f4              # double 0.451183712416934
	.quad	0x3fe35d76f0c7db1b              # double 0.6051592543361467
	.quad	0x3fee0b80d34e3c67              # double 0.93890420218111792
	.quad	0x3fed313968202a4a              # double 0.91225881897964567
	.quad	0x3fdeb71d48bc8cd0              # double 0.4799264154737104
	.quad	0x3fc39caa1a991388              # double 0.15321852015236126
	.quad	0x3feb8d144c7a3019              # double 0.86097159325572925
	.quad	0x3f9b8e3d455932c0              # double 0.02690978751916151
	.quad	0x3fc953262cff3ec8              # double 0.19785000989076296
	.quad	0x3fd40946b8f7ed92              # double 0.31306617797209768
	.quad	0x3fa678871e881460              # double 0.043888304211613827
	.quad	0x3fd9640558cca1a4              # double 0.3967297904187268
	.quad	0x3fe42b7d83b83f22              # double 0.63030887342936048
	.quad	0x3fea4ad1145efc82              # double 0.82163290003508416
	.quad	0x3fec6b21e26f3498              # double 0.88807768083065053
	.quad	0x3fe4d2cc3fa480cb              # double 0.6507321589488354
	.quad	0x3fc08affaa736a90              # double 0.12924190352244525
	.quad	0x3feed640d0c639ad              # double 0.96365395332559489
	.quad	0x3fdb9f70d2c488ee              # double 0.43160648901733978
	.quad	0x3fc1819fcb751f10              # double 0.13676831659744737
	.quad	0x3fe002bd34048909              # double 0.50033435973844675
	.quad	0x3fe8b5dbc066cfe6              # double 0.77219951227607164
	.quad	0x3fe4abd821178a02              # double 0.64597708190223124
	.quad	0x3fe0fd76f148c35a              # double 0.53094050527407011
	.quad	0x3fdd45a29cd3c988              # double 0.45737519564786355
	.quad	0x3fe5b6acfd101e55              # double 0.6785492842327111
	.quad	0x3fe3a70c634d9874              # double 0.61414164919984993
	.quad	0x3f9148b4b38b0240              # double 0.016878913362918135
	.quad	0x3fe3341ad66b9734              # double 0.60011045340500013
	.quad	0x3fe27035313ab18f              # double 0.57619723906604914
	.quad	0x3fd192f732263908              # double 0.27459506890672047
	.quad	0x3fa966fa3c4bc690              # double 0.049613780842162503
	.quad	0x3fd080108fbccc6a              # double 0.25781644856323871
	.quad	0x3fef3f9a35bc2f45              # double 0.9765139626992797
	.quad	0x3fe61db479b78ee8              # double 0.6911260964666015
	.quad	0x3fd83448db2a26d2              # double 0.37819119837568593
	.quad	0x3feeb1b81f153ab6              # double 0.95919424124607278
	.quad	0x3fdb8656f5d821b2              # double 0.43007444389561578
	.quad	0x3fd39ff9a01e5226              # double 0.30663910519186499
	.quad	0x3feb6cfcc3865291              # double 0.85705412090699629
	.quad	0x3fe71d99a7981dce              # double 0.72236330731623766
	.quad	0x3fd16864cd46cebe              # double 0.27199668928663445
	.quad	0x3fea81cf937d6814              # double 0.82834605032553776
	.quad	0x3fcee1bb2adff950              # double 0.24126376718045117
	.quad	0x3fd587c57eff27ee              # double 0.33641183282872944
	.quad	0x3fd901c52eaa50a0              # double 0.39073304707677359
	.quad	0x3fe9b674936fe13b              # double 0.80352238460822123
	.quad	0x3fe233d7322be1ed              # double 0.56882819937805851
	.quad	0x3fe677ca8deef2b5              # double 0.70212295266499913
	.quad	0x3fbf93a788f3c0d0              # double 0.12334677785452475
	.quad	0x3fee912c4bfc5f5e              # double 0.95522131768209895
	.quad	0x3fe7a84f15db6de8              # double 0.73929552334760462
	.quad	0x3f7ce53a3c0a5080              # double 0.0070545458589955645
	.quad	0x3fe6f8cfcfcd4541              # double 0.71787252985283356
	.quad	0x3fc6e0a858700da0              # double 0.17873100584266144
	.quad	0x3fd6675e9a477eb6              # double 0.3500591761239592
	.quad	0x3fea806caa3b757f              # double 0.82817681549538225
	.quad	0x3fc6e00b6967456c              # double 0.17871229788446941
	.quad	0x3fa7bfb48418d190              # double 0.046384469151607211
	.quad	0x3fd2f97673f7307e              # double 0.29647599529994995
	.quad	0x3fe19f29d1144bf8              # double 0.55067911945150083
	.quad	0x3f903198bc6eb680              # double 0.015814196110730538
	.quad	0x3fe23103bc67e1eb              # double 0.56848322675710727
	.quad	0x3fcdf982a0d966e8              # double 0.23417694906202446
	.quad	0x3fe8c61bdbf0f54a              # double 0.77418320615076053
	.quad	0x3fbe61abc4e39278              # double 0.11867784077510091
	.quad	0x3fef7ee78a72f115              # double 0.98424126663988664
	.quad	0x3fd03ee5f9e9e93a              # double 0.25383901029239875
	.quad	0x3fe410fd3ae5d41e              # double 0.62707387450666707
	.quad	0x3f996339bde2d480              # double 0.024792577948308026
	.quad	0x3fa75b69b21a0710              # double 0.04561929987995772
	.quad	0x3fe24ad1c1c64694              # double 0.57163322302422381
	.quad	0x3fe84902940949e2              # double 0.75891236222588199
	.quad	0x3fe980841d661524              # double 0.79693799726434066
	.quad	0x3fc284794fb484ac              # double 0.14466778175213812
	.quad	0x3fb1cee7355e5440              # double 0.069563341645634047
	.quad	0x3fb593627dd6edc0              # double 0.084280162546682469
	.quad	0x3fefb2de0cd861b8              # double 0.99058439740024706
	.quad	0x3fd39ef9b1c218c4              # double 0.30657808646391183
	.quad	0x3fc97a402140645c              # double 0.19904328940973215
	.quad	0x3fa17695e99bdd70              # double 0.034107861296372444
	.quad	0x3fecde862104b1f3              # double 0.90216356705565059
	.quad	0x3fd14f784980e04a              # double 0.27047545602863876
	.quad	0x3fe70c0495a10779              # double 0.72021702980440161
	.quad	0x3fe1e0e363846ac2              # double 0.55870217740024253
	.quad	0x3fc14e5414051a24              # double 0.1352028939965787
	.quad	0x3fc31d9a8c4cdba8              # double 0.14934093332859999
	.quad	0x3fe89ea89fa285ce              # double 0.76936751536066494
	.quad	0x3fe8883f584bdfa0              # double 0.76663176770579255
	.quad	0x3fee22ef761236d5              # double 0.94176457463046381
	.quad	0x3feeade39806decf              # double 0.95872668926946313
	.quad	0x3fc50b9adbd76870              # double 0.16441665396161254
	.quad	0x3fd9cf3300ed2510              # double 0.40327143755401185
	.quad	0x3fe4b31e659dbf06              # double 0.64686508032716072
	.quad	0x3fd058b862397cce              # double 0.25541505424730537
	.quad	0x3fe9289d86a055e8              # double 0.78620792669488271
	.quad	0x3feaa30fac6ca08b              # double 0.83240493466020504
	.quad	0x3fd8ad9037085c16              # double 0.38559346555979468
	.quad	0x3f9f049526137ac0              # double 0.030290918778400622
	.quad	0x3fe7528f464dc845              # double 0.72882808428972423
	.quad	0x3fe3c0f1dda7d726              # double 0.61730283062090474
	.quad	0x3fdc15285af306b4              # double 0.43879135972756989
	.quad	0x3feca3af14e57633              # double 0.89498094636264225
	.quad	0x3fe4a124d688f03e              # double 0.64467088605261558
	.quad	0x3fd328b25c83a6d2              # double 0.29935893091770283
	.quad	0x3fe056b2e3734ca5              # double 0.51058334754852253
	.quad	0x3fe55bf55458cf72              # double 0.66747538064963252
	.quad	0x3fe8015347b8f8c7              # double 0.75016178139028333
	.quad	0x3fef07d48d8a2af2              # double 0.96970584530330783
	.quad	0x3fcc18a04614e9b8              # double 0.2195015279956587
	.quad	0x3fd5e4f33383a9ee              # double 0.34209899931616305
	.quad	0x3fe5b4552ad7c39c              # double 0.67826326720943397
	.quad	0x3fc485a189b7374c              # double 0.16032809471510701
	.quad	0x3fe215782bc1d531              # double 0.56512077852554488
	.quad	0x3fe8d53dbc104328              # double 0.77603041392476246
	.quad	0x3fe79e838a4ade8f              # double 0.73809983263250156
	.quad	0x3fe0825313dc5dbb              # double 0.51590875510276335
	.quad	0x3fead4d4aa093d1e              # double 0.83848031244443511
	.quad	0x3fe496ea35f6dc4a              # double 0.64342222728635901
	.quad	0x3fedfcceda22cc70              # double 0.9371103535144254
	.quad	0x3fd3486ea01e4acc              # double 0.3012959064155154
	.quad	0x3fcbb30c82ee8364              # double 0.21640163796567002
	.quad	0x3fd8ffff2ebd7f2e              # double 0.39062480511164466
	.quad	0x3fe5b4a5ee6b1f50              # double 0.67830177847006645
	.quad	0x3fd6ce86e74eb102              # double 0.35635540569889212
	.quad	0x3fe099332245a8e9              # double 0.51870114034434522
	.quad	0x3fecc6d0f5a59cbb              # double 0.89926956155695537
	.quad	0x3fd8127b6f5805c0              # double 0.37612806199475912
	.quad	0x3fe1a58fb9857c69              # double 0.55146013483671397
	.quad	0x3fe829ca25138df7              # double 0.75510127297860563
	.quad	0x3fd646b17823ad82              # double 0.34806477291450488
	.quad	0x3fccd2fef2ed7d78              # double 0.22518908368781942
	.quad	0x3fce35ce1eda5740              # double 0.23601700312127072
	.quad	0x3f891bc28e7b6580              # double 0.012259979222494222
	.quad	0x3fcd75744f0c6e88              # double 0.23014692172806783
	.quad	0x3fedd374aa92756f              # double 0.93206246676315441
	.quad	0x3fd647a3da93c108              # double 0.34812256188799084
	.quad	0x3fdb5c66aa2bc81a              # double 0.42751471155418275
	.quad	0x3fbe77675c6feea0              # double 0.11900945669907026
	.quad	0x3fea1b7b69e840ba              # double 0.81585474667556146
	.quad	0x3fee7dd5d167cb18              # double 0.95286074542522936
	.quad	0x3fdd86a85304cb1e              # double 0.46134384257600114
	.quad	0x3fd3208854d9259a              # double 0.29886062894782983
	.quad	0x3fe5fc2fba5612d1              # double 0.68703447717470045
	.quad	0x3fd9c60c6724557e              # double 0.40271291801885656
	.quad	0x3fe316bdf6c6dc5f              # double 0.59652612875551003
	.quad	0x3fb3f50e23d6c430              # double 0.077957996129740747
	.quad	0x3fd5c9e74130999a              # double 0.3404482018107956
	.quad	0x3fd2603e0bfd98b4              # double 0.2871241681190313
	.quad	0x3fddfcc5cb0bbad0              # double 0.46855301693623819
	.quad	0x3febc04c4b64d0c9              # double 0.86722388005593942
	.quad	0x3fe1052bc1fab184              # double 0.53188121687485124
	.quad	0x3fa05cd65ba2eac0              # double 0.031958292661746324
	.quad	0x3fee4f6c674c99f9              # double 0.94719524551038525
	.quad	0x3fb56ac7de173570              # double 0.08366059467444642
	.quad	0x3fe2e7338e1f426b              # double 0.59072282560562195
	.quad	0x3fd503af29933102              # double 0.32834986743979766
	.quad	0x3fecb23f55286bb6              # double 0.89675871498490412
	.quad	0x3fd1cfd07025fafc              # double 0.2783089728545034
	.quad	0x3fed6171b0d5f0eb              # double 0.91814503229354949
	.quad	0x3fd753c9794ead04              # double 0.36448895307940199
	.quad	0x3fe55c87cc8cb574              # double 0.66754522276975914
	.quad	0x3fdeb48ece3371ca              # double 0.47977037560283675
	.quad	0x3fc6d6d3bcabd30c              # double 0.17843100273571399
	.quad	0x3fbba7722c1f54f8              # double 0.10802377297598642
	.quad	0x3fec99a0b1a5e5eb              # double 0.89375338265307158
	.quad	0x3fd0d26e3802c110              # double 0.26284366102028489
	.quad	0x3fafdf5339ed6ef0              # double 0.06225071031687246
	.quad	0x3fe140fa0d4d0346              # double 0.53918173406427949
	.quad	0x3fe343ea1f6162f7              # double 0.6020403492830998
	.quad	0x3fe483b2a4add043              # double 0.64107639469012445
	.quad	0x3fe7ae621cb2dd6b              # double 0.74003701787198162
	.quad	0x3fe3778cd63c09c2              # double 0.60834352343254516
	.quad	0x3fd9c0068d3a4dd2              # double 0.40234531204006629
	.quad	0x3fd0801ed74ae618              # double 0.25781985306420685
	.quad	0x3fedf1892f2dcf86              # double 0.93573435988081211
	.quad	0x3fe4ad9a5ff69b4f              # double 0.64619177573045217
	.quad	0x3fe09adf7dcfcb7e              # double 0.51890539715382977
	.quad	0x3fe7a997e9495201              # double 0.73945231975318404
	.quad	0x3fc07a24bdf83980              # double 0.12872752452717506
	.quad	0x3fa0eb916e908660              # double 0.033047241922997683
	.quad	0x3fcc175945af0760              # double 0.21946254637264939
	.quad	0x3fe4f4c0cb9f9bf7              # double 0.65487708826265034
	.quad	0x3fd1c7fc99afdb48              # double 0.27783122070779998
	.quad	0x3feced17f75ab38b              # double 0.90394209205042964
	.quad	0x3fe578e72afe9863              # double 0.67100866696706551
	.quad	0x3feb3cc1a24f8c2a              # double 0.85116655064883173
	.quad	0x3fc50cf50eafd54c              # double 0.16445792405253667
	.quad	0x3fe800e9da42ce54              # double 0.75011150960058126
	.quad	0x3fe57ceafa3a969b              # double 0.67149876473259285
	.quad	0x3fe234776c2ee6d5              # double 0.56890460137875698
	.quad	0x3fd5581721619b62              # double 0.33350160846605637
	.quad	0x3fea42cf6ad8451e              # double 0.82065554493070514
	.quad	0x3fde47dd34db9aea              # double 0.47313623582742415
	.quad	0x3fa237d7ea4f1c20              # double 0.035582301475692413
	.quad	0x3fd0ac04bbc7b1ea              # double 0.26049917543312395
	.quad	0x3fc15809e6fa339c              # double 0.1354992273158161
	.quad	0x3fd21bc7c5356de8              # double 0.28294557818091315
	.quad	0x3fe07ec48bef009a              # double 0.51547458010465452
	.quad	0x3fec373a3e9984b7              # double 0.88174164034366853
	.quad	0x3fc270095e5ac050              # double 0.14404408557084247
	.quad	0x3feee4aba1f9bd02              # double 0.96541387210700713
	.quad	0x3fed911819e5949a              # double 0.92396168764084341
	.quad	0x3fde4cb5272acebe              # double 0.47343186211513089
	.quad	0x3fdc9322c3d2c3e2              # double 0.44648045657510071
	.quad	0x3fc60dc7c60a1f18              # double 0.17229554338359132
	.quad	0x3fde22a3276bd7d8              # double 0.47086409425480502
	.quad	0x3fd317f95c586dd2              # double 0.29833826082332593
	.quad	0x3fe1529ae9701982              # double 0.54133363335931528
	.quad	0x3fe41fb86073a36b              # double 0.62887209737992344
	.quad	0x3fc91a44a40739bc              # double 0.19611413964453372
	.quad	0x3fa80e4ed303e990              # double 0.046984160669995778
	.quad	0x3fdaec3542cd85cc              # double 0.42066699527466933
	.quad	0x3fd335f8e44585dc              # double 0.30016920368333699
	.quad	0x3fd4e20e8ed064e2              # double 0.32629741617854624
	.quad	0x3fe97c8e6d85255d              # double 0.7964546336235504
	.quad	0x3fd2d3ca2c541c60              # double 0.29417661980591525
	.quad	0x3fe2db471c55d3d0              # double 0.58926730665427307
	.quad	0x3fd9ea0046484d1c              # double 0.40490729201811049
	.quad	0x3f881e3937321ec0              # double 0.011776396748487072
	.quad	0x3fc40f2aba4b6c4c              # double 0.15671285721222927
	.quad	0x3fe6312e0b03a765              # double 0.6935034003374595
	.quad	0x3fec1c3e2ea30631              # double 0.87844761952164252
	.quad	0x3fdd0f68ef8b5556              # double 0.45406554596896365
	.quad	0x3fecac89d6565fcf              # double 0.89606181967519116
	.quad	0x3fd02277b09cfd46              # double 0.25210373160731014
	.quad	0x3feeb966f1b496e9              # double 0.96013209541407917
	.quad	0x3fbc5a8dc6df8280              # double 0.11075674157428672
	.quad	0x3fbcbc1f1c251928              # double 0.11224550664073674
	.quad	0x3fef934762309d72              # double 0.98672837426867788
	.quad	0x3fdb378ba5674cf0              # double 0.42526522782027509
	.quad	0x3fe1daa95b8322bd              # double 0.55794208405958268
	.quad	0x3fd08d99c6cc5f34              # double 0.25864262021922291
	.quad	0x3fe78d776125253e              # double 0.73601883863117457
	.quad	0x3f9d460dccc2b3e0              # double 0.02858754694232235
	.quad	0x3fee1ad1ab2ffb19              # double 0.9407738059524916
	.quad	0x3fb3602438be28d8              # double 0.075685752728677058
	.quad	0x3fe903a047705e45              # double 0.78169263794820465
	.quad	0x3fd348094cc51ba2              # double 0.3012717485148021
	.quad	0x3fed12d95c9ff1da              # double 0.9085509118154349
	.quad	0x3fdd0ae289bbf766              # double 0.45378936243638746
	.quad	0x3fb92cecb4cb7370              # double 0.09834174550947039
	.quad	0x3fee24bd3d2dbba9              # double 0.94198476742700621
	.quad	0x3fe2b20d7caa7e02              # double 0.5842349467165493
	.quad	0x3fe7ea29366accde              # double 0.74733410480839857
	.quad	0x3fd367d4e9b57142              # double 0.30321238349076307
	.quad	0x3fdf15f0a2e1d9a0              # double 0.48571411043612933
	.quad	0x3fe19adb45050d34              # double 0.55015338402191682
	.quad	0x3fc72bf6f9ce9c60              # double 0.18102919767008796
	.quad	0x3fd0cbd03a3c3148              # double 0.26243978201889151
	.quad	0x3fb79ce60f8ea798              # double 0.092237833784251655
	.quad	0x3fe54f325dbbdfb1              # double 0.6659175711383708
	.quad	0x3fef410b7a0e83aa              # double 0.97669004286955396
	.quad	0x3fc92dde7d35e2cc              # double 0.19671231378358411
	.quad	0x3fef7cd603b13572              # double 0.98398876877915442
	.quad	0x3fdab01b73fb2772              # double 0.41699873281742506
	.quad	0x3fc0dc71f73b161c              # double 0.13172745296303467
	.quad	0x3fe364b885207e91              # double 0.6060450172553421
	.quad	0x3fe9bb5ca4e39b57              # double 0.80412132458591656
	.quad	0x3fd2e4a633b3caa6              # double 0.29520564126066018
	.quad	0x3fea1356d1fda02c              # double 0.81486073507131129
	.quad	0x3fe630699f097580              # double 0.69340973913101323
	.quad	0x3febaec966f6360a              # double 0.86508627042502551
	.quad	0x3fd7f4e76058f04c              # double 0.37432274254729658
	.quad	0x3fd7c464f749d3e6              # double 0.3713619627881698
	.quad	0x3fdb6528fa58785a              # double 0.42804932067691015
	.quad	0x3fd97d4a262c4136              # double 0.39827207305735912
	.quad	0x3fc1c042f4007b14              # double 0.13867985643533898
	.quad	0x3fe72ffd628828e7              # double 0.72460812801844277
	.quad	0x3fbb5f1ea12bd1c0              # double 0.10692016062586784
	.quad	0x3fd1258ba6fd64b2              # double 0.26791659648513211
	.quad	0x3fd9fe473a783dea              # double 0.40614491186076285
	.quad	0x3fdf730d60e6cf64              # double 0.49139723265692781
	.quad	0x3fc9db603d8fe5c4              # double 0.20200732236825847
	.quad	0x3fa24698e56e0bc0              # double 0.035694864279342209
	.quad	0x3fbfe1b1d9decc18              # double 0.12453757828807033
	.quad	0x3f9fbb8335bfa140              # double 0.030988741069365888
	.quad	0x3fc57c0da01e7ea0              # double 0.16784830396953954
	.quad	0x3fc024296ad789e0              # double 0.12610357014553042
	.quad	0x3fc55bf087e95b5c              # double 0.16686827312761465
	.quad	0x3fe0b0ceb85762cc              # double 0.52158294681711359
	.quad	0x3fec13738bbd201f              # double 0.87737443249443803
	.quad	0x3fdf1139502050d4              # double 0.48542626213862872
	.quad	0x3fe68cddeea29d15              # double 0.70469566925467808
	.quad	0x3febc476d79c3f96              # double 0.86773244964023166
	.quad	0x3feca84c4b4ccf47              # double 0.89554419238127358
	.quad	0x3fe40fd0ea19bc83              # double 0.62693067286262794
	.quad	0x3fde39d6546cd274              # double 0.47228010410916643
	.quad	0x3fe677d95ac33869              # double 0.70213000990930852
	.quad	0x3fb166af3c963360              # double 0.067973091403656039
	.quad	0x3fddbed2d6a1e5f6              # double 0.46477194748112483
	.quad	0x3feaf85b75d31614              # double 0.84281704914673349
	.quad	0x3fe4ad3a7f731027              # double 0.64614605801080394
	.quad	0x3fb36725b3f42158              # double 0.075792652544014572
	.quad	0x3fc5a7b9285a46a8              # double 0.16918100805610448
	.quad	0x3fec4272433174b8              # double 0.88311112521809942
	.quad	0x3feeac3a25043977              # double 0.95852381925378338
	.quad	0x3feb9cf27953f2e6              # double 0.86290858933315628
	.quad	0x3fe6bc8234a6a9b3              # double 0.71051130565074627
	.quad	0x3fe2f28237378e4f              # double 0.59210310730527194
	.quad	0x3fda620f1161d6ea              # double 0.41223503777960835
	.quad	0x3fd0a839c6a98f76              # double 0.26026768112773568
	.quad	0x3fe93b769e3b7650              # double 0.78850870995274569
	.quad	0x3febebbe3721a5bd              # double 0.87252722518785897
	.quad	0x3fecd6da29505a8d              # double 0.90122707432858962
	.quad	0x3fc500592f35a2c0              # double 0.16407313161041337
	.quad	0x3fe1a1c4371f1594              # double 0.55099688306715899
	.quad	0x3fe99ec0cc176b09              # double 0.80062904225937459
	.quad	0x3fd91b0f2de50238              # double 0.39227656824008106
	.quad	0x3fe824a3682fa328              # double 0.75447244976848982
	.quad	0x3febcd4876949503              # double 0.86880896721109513
	.quad	0x3fe14649ce726e0f              # double 0.53983011552503679
	.quad	0x3fe6a059ef9afa01              # double 0.70707413480687376
	.quad	0x3fe52128424fa49d              # double 0.66029751731288722
	.quad	0x3fe3ef438b0d7c52              # double 0.6229570117828962
	.quad	0x3fdaaac30b7ca4a8              # double 0.4166724788834224
	.quad	0x3fe91e5715f80bde              # double 0.78495363512808658
	.quad	0x3fe2c67445723d1f              # double 0.58672536433906319
	.quad	0x3feeff1e67608a74              # double 0.96864242735712346
	.quad	0x3feacc16f2ad8205              # double 0.83741328619004263
	.quad	0x3feb3f5701e4e94b              # double 0.85148191804845774
	.quad	0x3feb543f8922619d              # double 0.85403420242350914
	.quad	0x3fd586087ea157ea              # double 0.33630573621974114
	.quad	0x3f952b74f69836e0              # double 0.020673587370814483
	.quad	0x3fe95121ae11128f              # double 0.79115375516319542
	.quad	0x3fe392540b1a9f92              # double 0.61161234062909586
	.quad	0x3fecdc1b44fe506c              # double 0.90186847186352059
	.quad	0x3fb5d94918f78a10              # double 0.085346764178702239
	.quad	0x3fe5d224a89ba321              # double 0.68190224581949022
	.quad	0x3fde6635b6c50806              # double 0.47498839233969681
	.quad	0x3fd6ac1312daa9a0              # double 0.35425259438729917
	.quad	0x3fe2b864e3f48d69              # double 0.58500904581562196
	.quad	0x3feb2930e249cfa6              # double 0.84877819249094411
	.quad	0x3fbd699b98913f48              # double 0.11489269709386207
	.quad	0x3fea420285aa02c5              # double 0.82055784326811276
	.quad	0x3fe820c8b4ea0f17              # double 0.75400195441077045
	.quad	0x3fe8982e16683fbb              # double 0.76857666374598155
	.quad	0x3fbdc446f90470c8              # double 0.11627620296025321
	.quad	0x3fbecb903bedfc50              # double 0.12029363120198977
	.quad	0x3fe1f05fa416125a              # double 0.56059248016442642
	.quad	0x3fd8e0be720b3686              # double 0.38871728074159539
	.quad	0x3fdf0c77ed7d2b8a              # double 0.48513601486472935
	.quad	0x3febd24ee86e2990              # double 0.86942239185855108
	.quad	0x3fd1bfc0206738b4              # double 0.2773285213887775
	.quad	0x3fe61cd71718f1e9              # double 0.69102053176135059
	.quad	0x3fb0c65711d10760              # double 0.065526429986701995
	.quad	0x3fd8512713d80232              # double 0.3799531644617985
	.quad	0x3fd8c36e109680ea              # double 0.38692809696114117
	.quad	0x3fc9d08921a86034              # double 0.20167650359576472
	.quad	0x3fe049fe2d98e158              # double 0.50903233438206552
	.quad	0x3fcc0f41e82ac38c              # double 0.21921562038690146
	.quad	0x3fe5bd5cccf8d8a2              # double 0.67936553987125969
	.quad	0x3fdf8af269f72efa              # double 0.49285564754676126
	.quad	0x3fe090de9809249b              # double 0.51768426603770779
	.quad	0x3fe3c4dd4d5343f9              # double 0.61778130629147576
	.quad	0x3feb7817ebb4920b              # double 0.8584098437900719
	.quad	0x3fc1d1c832ee65e4              # double 0.13921453940274298
	.quad	0x3fcad1f7598ca234              # double 0.20953266022230965
	.quad	0x3fd126f22dec7ae6              # double 0.26800207600346793
	.quad	0x3fe1d50f4d5fb082              # double 0.55725827323978216
	.quad	0x3fd7790b37f3cfd0              # double 0.36676292862034376
	.quad	0x3fd353470886f600              # double 0.30195785362943184
	.quad	0x3fe9e95cd685bca8              # double 0.80973665141018092
	.quad	0x3fe8207a7a5845bc              # double 0.75396465201827522
	.quad	0x3fe0881c06fee0b9              # double 0.51661492697078082
	.quad	0x3fd2c857e14aeb3c              # double 0.29347798348651444
	.quad	0x3fe33d230e0b4c08              # double 0.60121300452226567
	.quad	0x3fc47060fcf3e048              # double 0.15967953063204932
	.quad	0x3fd4ff883d260742              # double 0.3280964467195312
	.quad	0x3fc66aa538b0edcc              # double 0.17512955921288975
	.quad	0x3fa3862f18dae8e0              # double 0.038133117469856037
	.quad	0x3fed7fb7bb206fbf              # double 0.92184053943810074
	.quad	0x3fd4c0cd1072183c              # double 0.32426764112495099
	.quad	0x3fec6bd53b7f88f6              # double 0.88816320057620035
	.quad	0x3fc753903351f55c              # double 0.18223764901987749
	.quad	0x3fb9ffe1b9c08910              # double 0.10156069550479097
	.quad	0x3fdb3f5b2fc0141e              # double 0.42574195540538706
	.quad	0x3fc236c942216214              # double 0.14229694108031821
	.quad	0x3fe95754366feb72              # double 0.79191027290595017
	.quad	0x3fc026a8ad962bb8              # double 0.12617977596195629
	.quad	0x3fe0bac1de76fe53              # double 0.52279752206954766
	.quad	0x3fbef10126b183c0              # double 0.12086493677772037
	.quad	0x3fe20fa67c89d2d7              # double 0.56441044162655885
	.quad	0x3fc7316bcc429c5c              # double 0.18119571183817385
	.quad	0x3fe2a3f71cef5d79              # double 0.58251529361125087
	.quad	0x3fbc827bc6d11b40              # double 0.11136602024008102
	.quad	0x3fda8f78f4e58f56              # double 0.41500686565108447
	.quad	0x3fee787cc70ae5f2              # double 0.9522079360532969
	.quad	0x3fd146fc4d481b54              # double 0.26995761439359467
	.quad	0x3f94036ca3bb3f80              # double 0.019544312947629816
	.quad	0x3fdc2ab8efec0b8c              # double 0.44010756902587711
	.quad	0x3fd0d671e357f6ac              # double 0.26308867646717249
	.quad	0x3fe9cb58bf7abf42              # double 0.80607259176574808
	.quad	0x3fdbaa97a66513bc              # double 0.43228713273520802
	.quad	0x3fb85d1beff816e0              # double 0.095170732580381223
	.quad	0x3fe571e7224aca1c              # double 0.67015415857014515
	.quad	0x3fe5eb29100a898b              # double 0.6849561036399775
	.quad	0x3fe3d7f433a41fd0              # double 0.62011156164316539
	.quad	0x3febf5b2553e79d8              # double 0.87374226235607022
	.quad	0x3fd0c10f2e1436d6              # double 0.2617834043493138
	.quad	0x3fe509251b595de1              # double 0.65736632672900097
	.quad	0x3f66166f93f0a900              # double 0.0026962451224977757
	.quad	0x3fe19b90a8bee94b              # double 0.55023987730172885
	.quad	0x3fed9c3a91a0f5db              # double 0.92532089655986327
	.quad	0x3fe7f1f4e7698204              # double 0.74828572461780185
	.quad	0x3fd3b01de8569006              # double 0.30762431802054413
	.quad	0x3fef3cbd1a01e609              # double 0.97616438941548822
	.quad	0x3fd7ada5eea40202              # double 0.36997364334823157
	.quad	0x3fccfdd70f740730              # double 0.22649658445885157
	.quad	0x3fe4e8f99709de48              # double 0.65343932628361134
	.quad	0x3fe5f0828e0f76ba              # double 0.68560912843869137
	.quad	0x3fe9ae6223684688              # double 0.80253703036778834
	.quad	0x3fc18a7d8a15bef0              # double 0.13703889124325697
	.quad	0x3fe8f75207c4ef9f              # double 0.78019048230588683
	.quad	0x3fddf30a949c86c4              # double 0.46795906555972189
	.quad	0x3fe585f567cd978a              # double 0.67260237001458845
	.quad	0x3fe722416f772658              # double 0.72293159266082352
	.quad	0x3fcfc5e241eeefa0              # double 0.24822643489266927
	.quad	0x3fed1501b71bffd2              # double 0.90881429446744222
	.quad	0x3fdd05304fcf7262              # double 0.45344169420221736
	.quad	0x3fde58060d483b4e              # double 0.47412253663144532
	.quad	0x3fd8c885e43c238c              # double 0.3872389534813514
	.quad	0x3fc157c2bafd3bcc              # double 0.13549074297267649
	.quad	0x3fe3acf2e0d886a7              # double 0.61486190715023248
	.quad	0x3fd5e7c1099cb658              # double 0.34227014483153573
	.quad	0x3fe34cfed5deff40              # double 0.60314885875411761
	.quad	0x3fc4ada5e3be0f64              # double 0.16154931659923044
	.quad	0x3fdd14a169256856              # double 0.4543841864411936
	.quad	0x3fdc62c908c18200              # double 0.44352937560145733
	.quad	0x3feff6b2db59389b              # double 0.99886458245761688
	.quad	0x3fd0ea7dabcea01a              # double 0.26431218889274677
	.quad	0x3fdbe08234f7a5cc              # double 0.43557791874499396
	.quad	0x3fe1637019188ea5              # double 0.54338841344402466
	.quad	0x3fecf6051bbb91d8              # double 0.90503173271695925
	.quad	0x3fefdbcd442dfd38              # double 0.99558127704941679
	.quad	0x3fe41f0fa4b652e3              # double 0.62879163904525759
	.quad	0x3fdd50f40ada00d0              # double 0.45806599673961745
	.quad	0x3fa1895402ebaf90              # double 0.034250855785869949
	.quad	0x3fde8389e961c754              # double 0.47677848616796337
	.quad	0x3fdb1ae6eac4f052              # double 0.42351696898163482
	.quad	0x3fd739abcd43e6f4              # double 0.36289496465143078
	.quad	0x3fc99d6711d46d88              # double 0.20011604662509463
	.quad	0x3feafd6bb82579dd              # double 0.84343515363780919
	.quad	0x3fe6dee00ed1e74a              # double 0.71470644850271836
	.quad	0x3fe588645390d94e              # double 0.67289940186928177
	.quad	0x3fe843a5fed84cca              # double 0.75825786375426074
	.quad	0x3fe84bc86acbe90e              # double 0.75925083979316965
	.quad	0x3fed07359d61b44b              # double 0.90713005770306532
	.quad	0x3fed11bc456faf79              # double 0.90841497003337601
	.quad	0x3fdc29638cc0b71a              # double 0.44002617593183546
	.quad	0x3fe5b03c975d7b79              # double 0.67776326716908308
	.quad	0x3fcf97d7cc64b22c              # double 0.24682137947219596
	.quad	0x3fe0162a048d66f3              # double 0.50270558251506114
	.quad	0x3fb1ea5e48e8de98              # double 0.069982426452833812
	.quad	0x3fe88f61c6a331b3              # double 0.76750267788297888
	.quad	0x3fd18190855a6a7e              # double 0.27353299162647449
	.quad	0x3fe9d09e7e45a110              # double 0.80671620047090364
	.quad	0x3fdaa0fff3b990c2              # double 0.41607664872413974
	.quad	0x3fdf9a6cd2c24a2a              # double 0.49380035955360546
	.quad	0x3fe65f2d3f4b8fc1              # double 0.69911825525604609
	.quad	0x3fb58159bd9abff0              # double 0.084004982748183243
	.quad	0x3fb6687c19d354f0              # double 0.08753181105142338
	.quad	0x3fe193db9f937a0e              # double 0.54929906050875998
	.quad	0x3fd553116e163f28              # double 0.33319507361101097
	.quad	0x3fe565bdc062af60              # double 0.66866958213129735
	.quad	0x3fe5199e38764594              # double 0.65937720325216498
	.quad	0x3fc9782b28bcfb64              # double 0.19897975434465842
	.quad	0x3fe0e0bcc623eb4a              # double 0.52743376445082757
	.quad	0x3fca4108f431d2dc              # double 0.20510970996442424
	.quad	0x3fe9898d1b46b417              # double 0.79804091765766116
	.quad	0x3fe2fa815c9b0d91              # double 0.59307926260992094
	.quad	0x3fd460a79f1e42a4              # double 0.31839933909308571
	.quad	0x3fe2bdac7fb0a2a0              # double 0.58565354289483551
	.quad	0x3fe5607c962cc5be              # double 0.66802815753015188
	.quad	0x3fed6dc3694f93a1              # double 0.9196488434650868
	.quad	0x3fd080ed2df5352e              # double 0.25786904800482346
	.quad	0x3fee3287b30632d1              # double 0.94366822209993917
	.quad	0x3fef18bc8de7380d              # double 0.97176959720104749
	.quad	0x3fd6c1f7cae1a4be              # double 0.35558886349333452
	.quad	0x3fd7abae972d80b6              # double 0.36985363734676058
	.quad	0x3fe7f3bc67ccdd52              # double 0.74850292466627821
	.quad	0x3fe9a283b63e2b84              # double 0.80108819574648792
	.quad	0x3feb5fe0fa993539              # double 0.855453957986959
	.quad	0x3fe63484697c30cc              # double 0.69391079523622912
	.quad	0x3fe3affc13734872              # double 0.61523250388041917
	.quad	0x3fe7944bc5b3ba2f              # double 0.7368525372856477
	.quad	0x3fe48b9f1373867a              # double 0.64204362677646931
	.quad	0x3fedefab89fe27c6              # double 0.93550660087316184
	.quad	0x3fefd9398d113e29              # double 0.99526670028894159
	.quad	0x3fe41376cb94988c              # double 0.62737598192031063
	.quad	0x3fecff41da9f605c              # double 0.90615933131904169
	.quad	0x3fef28b60e91429e              # double 0.97371962399673229
	.quad	0x3fde01e4cb3e21d6              # double 0.46886558387680333
	.quad	0x3fd5bc1c2f5dd37c              # double 0.33960632920871325
	.quad	0x3fb32209a52d88a8              # double 0.074738123728396944
	.quad	0x3fc6fccd278f4778              # double 0.17958988601327142
	.quad	0x3fcb89418dc740f4              # double 0.21512622282762772
	.quad	0x3fe17e2e91d6b0d7              # double 0.546653065529905
	.quad	0x3feb64c2290a5e75              # double 0.85604961410258673
	.quad	0x3fce3747d725a9e0              # double 0.23606203084211952
	.quad	0x3fd173ac03930602              # double 0.27268505429319145
	.quad	0x3fdb22b10b71c2a4              # double 0.42399240605940691
	.quad	0x3fb4dad34219d5c8              # double 0.08146400798599196
	.quad	0x3fd93ce611b07506              # double 0.3943419621226244
	.quad	0x3fe8e1036a2eea51              # double 0.77746744860571415
	.quad	0x3febfe8189636e22              # double 0.87481762727424361
	.quad	0x3fe7322586e0d23a              # double 0.72487140983009302
	.quad	0x3fcce5ed818d49f8              # double 0.22576683831955768
	.quad	0x3fcf0fe133d3bdb0              # double 0.24267210989590415
	.quad	0x3fdbcbe2faae8566              # double 0.43431925278317463
	.quad	0x3fd761e52e132932              # double 0.36535005092140971
	.quad	0x3fb8a88f3d167ac8              # double 0.096322014249817234
	.quad	0x3fe763cc3af29a8d              # double 0.73093234551636643
	.quad	0x3fe4141b9bf13ce2              # double 0.62745457131850579
	.quad	0x3fd4520a2e494922              # double 0.31750731010574118
	.quad	0x3faa95ce7adb10d0              # double 0.051924183365856913
	.quad	0x3f9efd42d43603c0              # double 0.030262989237147542
	.quad	0x3fe6645a28593b21              # double 0.69975002174928502
	.quad	0x3fbbbf11aa70a860              # double 0.1083842316735697
	.quad	0x3feb295b899dc061              # double 0.84879853132407501
	.quad	0x3fd071f128cbe67e              # double 0.25695446952850165
	.quad	0x3fd87895e31b7af0              # double 0.38235995462848305
	.quad	0x3fef16dc1f9e3158              # double 0.97154050994280805
	.quad	0x3fe0fb81bd23770d              # double 0.53070151272888355
	.quad	0x3fd825526fa4ae50              # double 0.37727795508064776
	.quad	0x3fd5b61536df7f3a              # double 0.33923845633215743
	.quad	0x3fe4b90fcca3987c              # double 0.64759054153979845
	.quad	0x3fd9e24a7e2f0416              # double 0.40443670580504099
	.quad	0x3fa6861387f03650              # double 0.043991670936617155
	.quad	0x3fd6adb06f69fedc              # double 0.3543511474635872
	.quad	0x3fce6763fed58bb0              # double 0.23753023093294479
	.quad	0x3fd8bce8200b032c              # double 0.38652995232773679
	.quad	0x3fe6645d66fb69d7              # double 0.69975156892479162
	.quad	0x3fef5d9c937785d0              # double 0.98017720033765876
	.quad	0x3fedabd357ffb0dd              # double 0.92722479998840479
	.quad	0x3fde380b20d591ec              # double 0.47217062193365567
	.quad	0x3fe4190b94d4a589              # double 0.62805728023993013
	.quad	0x3fa73f52c7d7df80              # double 0.045404993910721281
	.quad	0x3fd53aafbd223ac8              # double 0.33170693845833599
	.quad	0x3fd22aa4bb2afbe0              # double 0.28385275152316858
	.quad	0x3fd3618af05cbc82              # double 0.30282853577495683
	.quad	0x3fe63a61bfa175c6              # double 0.6946266882693457
	.quad	0x3fa3761626b31880              # double 0.038010303711005555
	.quad	0x3fec123d313c1e2c              # double 0.87722644439867769
	.quad	0x3fd6f03e9f30562e              # double 0.35841336770804133
	.quad	0x3fd0889c25a1649a              # double 0.25833800959441933
	.quad	0x3fda7551816b79f4              # double 0.41341054571776614
	.quad	0x3fc58af080cd48ec              # double 0.16830259598879793
	.quad	0x3fc69434b4ef7d78              # double 0.17639788470021833
	.quad	0x3fdfed67d49e9f54              # double 0.49886508716234812
	.quad	0x3fdd909472048128              # double 0.46194945463686787
	.quad	0x3fd0b10de7159418              # double 0.26080653731179515
	.quad	0x3fe30cdadc83ff17              # double 0.59531920499282165
	.quad	0x3fda6142ddc57620              # double 0.41218635232312018
	.quad	0x3fe2cab522fa73ba              # double 0.58724457580284839
	.quad	0x3fe13e422bd714a8              # double 0.5388499122861008
	.quad	0x3fe439520972123b              # double 0.63199712605325631
	.quad	0x3febb170ef8afa6c              # double 0.86541029725760898
	.quad	0x3fd619546c9a7fb0              # double 0.34529600721179587
	.quad	0x3fe03c4629b56d5f              # double 0.50735767503958218
	.quad	0x3fe5ed84948ff73e              # double 0.68524388328635388
	.quad	0x3fd5a4b24c2af6ae              # double 0.33817727506889639
	.quad	0x3fd0284e71bfd2d2              # double 0.25246010883647074
	.quad	0x3fd9cae8f52c8c00              # double 0.40300964300894293
	.quad	0x3fe1fc3215c3e972              # double 0.56203560114890494
	.quad	0x3f8f4f1477883240              # double 0.015287551782443676
	.quad	0x3fb3d89e0878c1b0              # double 0.077524067943847141
	.quad	0x3fde0fc695c70802              # double 0.46971287371354731
	.quad	0x3fdb44e19d827330              # double 0.42607918149751622
	.quad	0x3fa1cf5207839a40              # double 0.0347848543331577
	.quad	0x3fc844acfb13355c              # double 0.18959581622622579
	.quad	0x3fe3f2c4def088fb              # double 0.62338489096535399
	.quad	0x3fda605df2e230b6              # double 0.41213177413079494
	.quad	0x3fb86fb2a0ed5170              # double 0.095454372681450072
	.quad	0x3fef1855bd6e8509              # double 0.97172057150251689
	.quad	0x3feb6124666af3ad              # double 0.85560817721817772
	.quad	0x3fdbcf1ff838d6ca              # double 0.4345168994944798
	.quad	0x3fdb0f75f2390602              # double 0.42281864790501811
	.quad	0x3fddf01d593fc80a              # double 0.46778043475853848
	.quad	0x3fb97fe91fcc0050              # double 0.099608011496458148
	.quad	0x3fd3734a9aa94a3c              # double 0.30391182998315336
	.quad	0x3fed0fac91b0fdd2              # double 0.90816334205004012
	.quad	0x3fe549bf613b96bc              # double 0.6652523898198619
	.quad	0x3fda7e360a84de38              # double 0.41395331408736835
	.quad	0x3fe5e6c0553f5b6a              # double 0.68441788339519616
	.quad	0x3fe10c8d5cedf4d8              # double 0.5327822508840212
	.quad	0x3fedddd2bf0007f6              # double 0.93332803063117242
	.quad	0x3fe09847b5fffb4c              # double 0.51858888193951591
	.quad	0x3fd492e903e03652              # double 0.32146668795107758
	.quad	0x3fe7754982e70848              # double 0.7330672794998998
	.quad	0x3fe4c930dcfe5ee5              # double 0.64955943262881688
	.quad	0x3fcd9885ca6bb37c              # double 0.23121712096999747
	.quad	0x3fe01599e4b11da3              # double 0.50263685861948593
	.quad	0x3feefb9f9b060656              # double 0.96821575429948825
	.quad	0x3fdec0b8db086cfe              # double 0.48051282300885123
	.quad	0x3fdb1786cab03d6e              # double 0.42331094545166692
	.quad	0x3fd34a2a9ee0a524              # double 0.3014017631090431
	.quad	0x3fe1653710f2bf2b              # double 0.54360535917473862
	.quad	0x3fd7fe8e65728c0a              # double 0.37491187960603212
	.quad	0x3fad13bb47af5640              # double 0.056791164875602096
	.quad	0x3fb4538a6aed0f78              # double 0.079399729828819932
	.quad	0x3fe74fdc988b7a62              # double 0.72849874299920381
	.quad	0x3fd411eda380708e              # double 0.31359425513233752
	.quad	0x3fe67580474e7819              # double 0.70184339453749367
	.quad	0x3fe6a37cb01dbd98              # double 0.7074569167870548
	.quad	0x3fcc0ac1af1530cc              # double 0.21907826470340408
	.quad	0x3fd3cf1b480f2b20              # double 0.30951578175579364
	.quad	0x3fdf26a238b318ba              # double 0.48673301255292822
	.quad	0x3fb5cff8af9b1298              # double 0.085204642174242173
	.quad	0x3feb7081aca61e3c              # double 0.85748370857704214
	.quad	0x3fefd2f91dfbc2c9              # double 0.99450355392590339
	.quad	0x3fd9d18c04f14f54              # double 0.40341473086049473
	.quad	0x3fd28ebb11a375f4              # double 0.28996159288894252
	.quad	0x3fdef30766c9e40a              # double 0.48358330762818069
	.quad	0x3fc3cc4d7778ee98              # double 0.15467232068646264
	.quad	0x3fecead11a940ac9              # double 0.90366416159698659
	.quad	0x3fdfd87eacc339f8              # double 0.49758879538867928
	.quad	0x3fe772095f9f83ff              # double 0.73267048527134182
	.quad	0x3fddcf4f2d9eec68              # double 0.46577815489917507
	.quad	0x3fd0045c98c8cc56              # double 0.25026621742580824
	.quad	0x3fe0740d15c40cf1              # double 0.51416639567506028
	.quad	0x3fe0e7d80d7f8f27              # double 0.52830126415617407
	.quad	0x3f9b0c062aabbd40              # double 0.026413055757925408
	.quad	0x3fee5b56506eefe4              # double 0.94864955625189084
	.quad	0x3fe09d03748f93d4              # double 0.51916668668547539
	.quad	0x3fdebf78cd0e5e52              # double 0.48043651604664206
	.quad	0x3feecb5c46f27a85              # double 0.96232427460547909
	.quad	0x3fdb9625b3b7b30e              # double 0.43103926229996226
	.quad	0x3fb24dbb79c2b518              # double 0.071498601175978727
	.quad	0x3fe913dfd66e4bc4              # double 0.78367607003234995
	.quad	0x3fda60c3a5976a2e              # double 0.41215602084199332
	.quad	0x3fc5dae99adad668              # double 0.17074317990561672
	.quad	0x3feae6b22eed6460              # double 0.8406611362980918
	.quad	0x3fab473a855248e0              # double 0.053277806067073774
	.quad	0x3fed5075f9b3d48b              # double 0.91607188005458917
	.quad	0x3fc5844d469c12a4              # double 0.16810003230798032
	.quad	0x3fdb6cc2372b8852              # double 0.42851310146045762
	.quad	0x3feb674926ba95ad              # double 0.85635812343814666
	.quad	0x3fdc8ebd0b6528aa              # double 0.44621206391151225
	.quad	0x3fe6dd4da7a7eb4a              # double 0.7145145678071938
	.quad	0x3fcc8cfd52285844              # double 0.22305265914536865
	.quad	0x3fd117b74eaffefc              # double 0.26707251247715624
	.quad	0x3faf3b0312729e40              # double 0.060997100831909012
	.quad	0x3fe5aec6319c79f5              # double 0.67758474054045215
	.quad	0x3fd174cdecc63d80              # double 0.2727541744470372
	.quad	0x3fd863061fe4488e              # double 0.38104394068171465
	.quad	0x3fde21196a0082e8              # double 0.47077021934278074
	.quad	0x3fe05180410a7602              # double 0.50994885161679826
	.quad	0x3fc6266d7432a628              # double 0.17304771589015044
	.quad	0x3fd1e1453a51ae6e              # double 0.27937441535207241
	.quad	0x3fe66e5ab00a57d7              # double 0.70097097762004068
	.quad	0x3fec52ab5e91513f              # double 0.88509148092501977
	.quad	0x3fe2a7231029b27b              # double 0.58290246159374648
	.quad	0x3fcad372352f9e00              # double 0.20957782361004718
	.quad	0x3fe7ed2ca89de734              # double 0.74770195897074254
	.quad	0x3fe9ba53d654550f              # double 0.80399505482879075
	.quad	0x3fea56248bd6e572              # double 0.82301547348394721
	.quad	0x3fe436ec0e17516e              # double 0.63170435669102942
	.quad	0x3fc1b50032ea1be8              # double 0.13833620534953117
	.quad	0x3fc7d00ac99f42cc              # double 0.18603644223050819
	.quad	0x3fe420d7e4a1c206              # double 0.62900919584905135
	.quad	0x3fec4c217527c508              # double 0.88429329759506548
	.quad	0x3f87d7cab2397b00              # double 0.01164205891035186
	.quad	0x3fe339e8d789959f              # double 0.60081903550296889
	.quad	0x3fde5b438d60b1fc              # double 0.4743203049318081
	.quad	0x3fe10118dbe3db44              # double 0.53138392398145884
	.quad	0x3fe205c6ad62a3f8              # double 0.56320508827513915
	.quad	0x3fe9d5022fb372ad              # double 0.80725201908679411
	.quad	0x3fe261d7d1c2fe2a              # double 0.57444373101310942
	.quad	0x3fcf79cdce40808c              # double 0.2459046609010368
	.quad	0x3fb33c99369e1898              # double 0.07514340957104293
	.quad	0x3fefeb9e547ad456              # double 0.99751202106439041
	.quad	0x3fe457b0827d3fa1              # double 0.63570428358251629
	.quad	0x3fe3c3fb0f859083              # double 0.61767342597569586
	.quad	0x3fb35587c4611298              # double 0.075523839420450378
	.quad	0x3fddafa730d93e9e              # double 0.46384601374027479
	.quad	0x3fe3a0c70f1deab2              # double 0.61337616875183287
	.quad	0x3fd1c05481068e86              # double 0.27736389732510991
	.quad	0x3fde98f9fea220ba              # double 0.47808694712194788
	.quad	0x3fe6b2e92e86ee33              # double 0.70933970534628654
	.quad	0x3fefd0e761e24cf8              # double 0.9942509567066784
	.quad	0x3fd780a489f664a2              # double 0.36722672913453824
	.quad	0x3fa3ac71edbbb630              # double 0.038425026197597467
	.quad	0x3fe54945680f9306              # double 0.66519422840482956
	.quad	0x3feb49a21f8d2f86              # double 0.85273843920138925
	.quad	0x3feef3f8b131b27d              # double 0.96728167160252065
	.quad	0x3fd049a614dcdf04              # double 0.25449516332035693
	.quad	0x3fd9a84fe596eb28              # double 0.4008979551396572
	.quad	0x3fedb6360742dd71              # double 0.92849255960656596
	.quad	0x3fef61b2fcab059c              # double 0.98067616795758594
	.quad	0x3fe9ab91f8ba1f3f              # double 0.80219362811565265
	.quad	0x3fcf689c1a142e6c              # double 0.24537993691807303
	.quad	0x3fc792b1f9676680              # double 0.18416428258824524
	.quad	0x3fe17d4858ae0b06              # double 0.54654328651699369
	.quad	0x3fa7ef4411cc3570              # double 0.046747328922814968
	.quad	0x3fa8f51e45d45ce0              # double 0.048745103859056504
	.quad	0x3fe70d3ce9627498              # double 0.7203659590046696
	.quad	0x3fe24085b6b82e3c              # double 0.57037625968354844
	.quad	0x3feae0d24d524157              # double 0.83994402982538474
	.quad	0x3fdca8568aceda80              # double 0.44777453952284674
	.quad	0x3feb0ea8c370b1e9              # double 0.84553945705334599
	.quad	0x3fe66f26650a52ff              # double 0.70106811270179026
	.quad	0x3fa9d288132847c0              # double 0.050434353197615689
	.quad	0x3fed21c510fc184d              # double 0.91037228886922039
	.quad	0x3fda5c45902bbcfc              # double 0.41188181952652747
	.quad	0x3fe8cac13e61bfa8              # double 0.77475034889174754
	.quad	0x3fea9da34963c81c              # double 0.83174290021839025
	.quad	0x3fe17a4dd3d0a3d5              # double 0.5461796891223637
	.quad	0x3fd2c1933cd918ee              # double 0.29306488935652808
	.quad	0x3fdf599e35e2af2c              # double 0.48984484922651705
	.quad	0x3fd8e8445b47c57c              # double 0.38917645372483611
	.quad	0x3fee59a8a7179ebd              # double 0.94844467768867669
	.quad	0x3f52ab16b3b0b800              # double 0.0011394235323325397
	.quad	0x3fc60ae873c8a1e0              # double 0.17220788625242189
	.quad	0x3fee4fc2ff3b5edf              # double 0.94723653650268236
	.quad	0x3fb3a7173d3a33a0              # double 0.076768352935870698
	.quad	0x3fee8de0536a203a              # double 0.95481888095765233
	.quad	0x3fe9ac669177a473              # double 0.80229500209419624
	.quad	0x3fe5940b815ebb60              # double 0.67432189242923002
	.quad	0x3fe5e0ce9befed61              # double 0.68369226891028856
	.quad	0x3fd62d6f73a2978c              # double 0.34652315418713253
	.quad	0x3fe0e8e7eb0be11c              # double 0.52843089969158852
	.quad	0x3fd9d6126eab72f0              # double 0.40369091804113477
	.quad	0x3fdbd26a08584ec0              # double 0.4347176629537266
	.quad	0x3f9ad4dc276ce520              # double 0.026202621370633783
	.quad	0x3fccd85d5a063500              # double 0.2253529252597346
	.quad	0x3fea41e708a1eb01              # double 0.8205447357753145
	.quad	0x3fc4faa5fa91a12c              # double 0.16389918074424636
	.quad	0x3fb79cadef365870              # double 0.092234488393246882
	.quad	0x3fe2bdd13c336921              # double 0.58567106016133519
	.quad	0x3fe406685946c0d8              # double 0.62578217922966939
	.quad	0x3fd426f3d6bec95a              # double 0.31487747164933
	.quad	0x3fcd965f0a590ccc              # double 0.23115146641985118
	.quad	0x3fe099f331a59793              # double 0.51879272171639668
	.quad	0x3fdb645843279f22              # double 0.42799955900271602
	.quad	0x3fd166c37c8f2fea              # double 0.27189719356533593
	.quad	0x3fe37151d31b2e3f              # double 0.60758296233820619
	.quad	0x3fd238df83254f3e              # double 0.28472125823212824
	.quad	0x3fec69d635eb4548              # double 0.88791952639636751
	.quad	0x3fa7f069acb1abb0              # double 0.046756079035581322
	.quad	0x3fe32a2ed404ff13              # double 0.59889928255140246
	.quad	0x3fd772f8bf15230a              # double 0.36639231357962443
	.quad	0x3fcdbf919a419508              # double 0.23240871459999135
	.quad	0x3fdf525faadb211c              # double 0.4894026916995402
	.quad	0x3fcd50bb03864964              # double 0.22902620002839591
	.quad	0x3fed3d22a263ef25              # double 0.91371280400150978
	.quad	0x3fd6669a8a2aa1a4              # double 0.3500124310762891
	.quad	0x3fe0201dc70d4bae              # double 0.50392044904071098
	.quad	0x3fe9ae4234c40302              # double 0.80252180391116235
	.quad	0x3fe188d3bcf5a9b2              # double 0.54795252710510156
	.quad	0x3fe34fa5a54455cf              # double 0.60347254065225708
	.quad	0x3fcaffc3603eab54              # double 0.21093027305081569
	.quad	0x3fec9b6db66db7bd              # double 0.89397321348746284
	.quad	0x3fe4e920d28ed646              # double 0.65345803379631984
	.quad	0x3fa5cdb06ef1c930              # double 0.042584909003283378
	.quad	0x3fa2275f5ec6d740              # double 0.035456638640808169
	.quad	0x3fab6109a80bb060              # double 0.053474714053522332
	.quad	0x3fc2a53bdd4155b8              # double 0.14566753676869637
	.quad	0x3fead5e524dd4cbd              # double 0.83861024093712155
	.quad	0x3fe461092888992f              # double 0.63684518734661377
	.quad	0x3fdf1cec8631c174              # double 0.48614037613790306
	.quad	0x3fcb9551a5583564              # double 0.21549435208764145
	.quad	0x3fe2eb4df48cc0f7              # double 0.59122369540821651
	.quad	0x3fed607cadb1ed6f              # double 0.91802820133982077
	.quad	0x3fe1a804bd5df29a              # double 0.55176007257212523
	.quad	0x3fc62dbd8354d168              # double 0.17327088272726177
	.quad	0x3fe005d466c172b4              # double 0.50071163243736416
	.quad	0x3fdb05cf76209054              # double 0.42222963844165418
	.quad	0x3fc440e100f2b048              # double 0.15822994753159692
	.quad	0x3fd839b12354366a              # double 0.37852123689740458
	.quad	0x3fcb4858512ca9f4              # double 0.21314529384228786
	.quad	0x3fd23ad184d81200              # double 0.28483999226617129
	.quad	0x3fe138eb2673b915              # double 0.53819806585468888
	.quad	0x3fce0ea5d7d0c724              # double 0.23482201612346743
	.quad	0x3fc42b1296b64c88              # double 0.15756447180737987
	.quad	0x3fc26a93166b2e6c              # double 0.143877397486324
	.quad	0x3fdbb3e091adb2e8              # double 0.43285383440415481
	.quad	0x3fef1639890b8301              # double 0.97146298185916191
	.quad	0x3feadd464f9b7989              # double 0.83951106594376868
	.quad	0x3fbbc949350afea0              # double 0.10854013009065477
	.quad	0x3fedf77b074ee1be              # double 0.9364600317704157
	.quad	0x3fcf93a10a4a6e44              # double 0.24669278147199425
	.quad	0x3fc657c146f0b1b8              # double 0.17455306972386864
	.quad	0x3fed2e1b31c197de              # double 0.91187820165645994
	.quad	0x3fc1c4f2888bcc18              # double 0.13882285754479606
	.quad	0x3fe424dcb0f2cf49              # double 0.62949976501702409
	.quad	0x3fc5f35978d35f78              # double 0.17148893737498461
	.quad	0x3fac1d3eca0f4860              # double 0.05491062370823907
	.quad	0x3fe8bcddee0ead64              # double 0.77305504317829987
	.quad	0x3fb246933b217630              # double 0.07138939088459817
	.quad	0x3fe6451d2a803ad6              # double 0.69593675900417895
	.quad	0x3fea362c6ca68c85              # double 0.81911298008743982
	.quad	0x3fde442d7e1153f6              # double 0.47291123687074277
	.quad	0x3fd49a4d02e75812              # double 0.32191777499736063
	.quad	0x3fe4abc7628f1b1a              # double 0.64596909761243926
	.quad	0x3fe8e5753408bd75              # double 0.77800998843114988
	.quad	0x3fcb30d4f320185c              # double 0.21242772933345833
	.quad	0x3fe0792c2806a37d              # double 0.51479156320156927
	.quad	0x3fec47ae2aec2415              # double 0.88375004180227512
	.quad	0x3fe4186c51d217a5              # double 0.62798133831596614
	.quad	0x3fe02a6ec50350c5              # double 0.50517977217762022
	.quad	0x3fe95ba8ea8e4757              # double 0.79243894397425663
	.quad	0x3fef9f740e561109              # double 0.98821451950110017
	.quad	0x3f720db621c02680              # double 0.004407607510083289
	.quad	0x3fec2eb1bd1cbe02              # double 0.88069998680106232
	.quad	0x3fed20d1eddf87fa              # double 0.91025635203936806
	.quad	0x3feb8a3d805f94d2              # double 0.86062502930567519
	.quad	0x3fea682f45c09ce8              # double 0.82521785377039425
	.quad	0x3fe7a1bc4ee50702              # double 0.7384931126509573
	.quad	0x3fe69f0d574b556d              # double 0.70691554116880939
	.quad	0x3fde60d94ba10c62              # double 0.47466118226674869
	.quad	0x3fed0f006be24903              # double 0.90808125563697251
	.quad	0x3fe14e3dbfc82dc1              # double 0.54080092866336582
	.quad	0x3fbac50f03b724a0              # double 0.10456937638004371
	.quad	0x3f65a19e0ccddb00              # double 0.0026405417360665373
	.quad	0x3fe07deabb2756c0              # double 0.51537071755839037
	.quad	0x3fc719d489315920              # double 0.18047577570786988
	.quad	0x3fb5e9def0ae49b8              # double 0.085599836120571093
	.quad	0x3fe0441d79336120              # double 0.50831483528148524
	.quad	0x3fad986509982e00              # double 0.057803304120252363
	.quad	0x3fd9d643bff76d9e              # double 0.40370267626505008
	.quad	0x3fe9a002e27017a0              # double 0.80078262544769884
	.quad	0x3faf54f57a33e330              # double 0.061195059935874929
	.quad	0x3fc096fad0ee9484              # double 0.1296075363326602
	.quad	0x3fcd28e6ee58027c              # double 0.22781073224907178
	.quad	0x3fd8bce71d5e6404              # double 0.38652971141851844
	.quad	0x3fdc2aaf42aeb382              # double 0.44010526191669197
	.quad	0x3fddd1de71ad917c              # double 0.46593438245169927
	.quad	0x3fe961033264db6d              # double 0.79309234469006429
	.quad	0x3feb24b4c044c381              # double 0.84823072006666689
	.quad	0x3fe34e5da74bdedd              # double 0.60331614184448379
	.quad	0x3fe90dabaa5f0e22              # double 0.78291877055784576
	.quad	0x3fe5e1f8f3771f9f              # double 0.68383452941724332
	.quad	0x3fda0987dab73088              # double 0.40683170660918977
	.quad	0x3fbb78590c049cb0              # double 0.10730511229904738
	.quad	0x3feeae8554c0aad3              # double 0.95880381158107252
	.quad	0x3fd547316d7b4e22              # double 0.33247028056686834
	.quad	0x3fe5b7b01b2e5eec              # double 0.67867284115615467
	.quad	0x3fdb8dab2bdfbe18              # double 0.43052176746911774
	.quad	0x3fea89308a90a391              # double 0.82924677909351108
	.quad	0x3fe941ec5f3242b4              # double 0.78929728119881881
	.quad	0x3fb815deb2e43f28              # double 0.094083708452896375
	.quad	0x3fdafa10fa0db4ce              # double 0.42151283664027239
	.quad	0x3fe8d81805bae2eb              # double 0.77637864226480013
	.quad	0x3fde717e4756fc26              # double 0.47567707983756902
	.quad	0x3fb764cf2de2d0d8              # double 0.091381977751385235
	.quad	0x3fd8e2837c7a4af4              # double 0.38882529407526012
	.quad	0x3fe9f577b1686a0c              # double 0.81121430063223121
	.quad	0x3fcfd76e77d82b28              # double 0.24876194812562713
	.quad	0x3fb03bc825f6ead0              # double 0.063412198322946312
	.quad	0x3fd7190d4983d9ac              # double 0.36090404681399479
	.quad	0x3fc8e3186e1bc744              # double 0.1944304025305944
	.quad	0x3fd4c41a520b3118              # double 0.32446916591722319
	.quad	0x3faeab222d15e020              # double 0.059899394992442234
	.quad	0x3fb935c419124cc0              # double 0.098476654168098143
	.quad	0x3fd67e2d93821d9a              # double 0.35145129590133595
	.quad	0x3f66c7fb1f159400              # double 0.0027809052195828521
	.quad	0x3fe770d00de65895              # double 0.73252108301928109
	.quad	0x3fd219d92ec104e8              # double 0.2828276592809531
	.quad	0x3fc9ebfcd29d8bb8              # double 0.20251426967578623
	.quad	0x3fe3a9268eaa7ca5              # double 0.61439826836057831
	.quad	0x3fcce3eb4844ec0c              # double 0.22570553807040061
	.quad	0x3fe090c87eaed87f              # double 0.51767372839709924
	.quad	0x3fe944d2351a396b              # double 0.78965101596422238
	.quad	0x3fe7fe3fff63ca02              # double 0.74978637581654106
	.quad	0x3fdf37039489aa12              # double 0.48773278718604829
	.quad	0x3fa1322607da1670              # double 0.033585728128895265
	.quad	0x3fb9c9b0e8749368              # double 0.10073381114177737
	.quad	0x3fea4b3fdeadd97c              # double 0.82168572895061187
	.quad	0x3faa9d424a496cc0              # double 0.051981040542807389
	.quad	0x3fdd1308135d278e              # double 0.45428659335140587
	.quad	0x3feea1df3f1f5619              # double 0.95725977257342543
	.quad	0x3fcaa5a048a820cc              # double 0.20817950771038907
	.quad	0x3fcc068d8691d5f8              # double 0.21894997664246296
	.quad	0x3fc430a9770c7bf4              # double 0.15773504555633588
	.quad	0x3fe3be4731705002              # double 0.61697730690002595
	.quad	0x3fd2f90ba15eb8e0              # double 0.29645052679815187
	.quad	0x3fd5d1f695932c74              # double 0.3409401379291872
	.quad	0x3fe9e33b44852879              # double 0.8089882219585568
	.quad	0x3fcc3d4fbafd7fe8              # double 0.2206210768736121
	.quad	0x3fd45ad2136a0aa8              # double 0.31804325004501743
	.quad	0x3fe0f7c08076f0d1              # double 0.53024315920586151
	.quad	0x3fdf45727bb13b8c              # double 0.48861372069671272
	.quad	0x3fe6ffaa40bdfdb4              # double 0.71870911259605075
	.quad	0x3fe5d2e686352600              # double 0.68199468815254249
	.quad	0x3fe7db7c1864e903              # double 0.74554257168281912
	.quad	0x3fe9118048b3f666              # double 0.78338636588860022
	.quad	0x3fe3cb2bae0e44d1              # double 0.61855110163937799
	.quad	0x3fdb0be265307922              # double 0.42260036355755137
	.quad	0x3fb8f9286e12c818              # double 0.097551848290806098
	.quad	0x3fe48c9e2fb5ea68              # double 0.64216527288892866
	.quad	0x3fdf051970785eec              # double 0.48468624099176227
	.quad	0x3fd01cfcf40219a6              # double 0.25176929310728224
	.quad	0x3fdd38c53b92bc38              # double 0.45658999269193457
	.quad	0x3fe0c14a8ff1e34a              # double 0.5235951243804291
	.quad	0x3f9a66778df17380              # double 0.025781505621455647
	.quad	0x3fe462e33132dce5              # double 0.6370712242996005
	.quad	0x3fe22e767b1c526e              # double 0.56817173047109093
	.quad	0x3fa56cdfe8f87bc0              # double 0.041846272648619287
	.quad	0x3fec0a8c6a2d698e              # double 0.87628765809795239
	.quad	0x3fd333ff3c915486              # double 0.30004864611448345
	.quad	0x3fe37abe4e609a0c              # double 0.60873332317425044
	.quad	0x3fe854327d65629d              # double 0.76027798167622829
	.quad	0x3fe7e97d4fde4c69              # double 0.74725213622367648
	.quad	0x3fcc21d36c932680              # double 0.21978228379730425
	.quad	0x3fd0ba1005689cb0              # double 0.26135635879695496
	.quad	0x3f939331650c6760              # double 0.019116184036739425
	.quad	0x3fe6e37bac44cf4d              # double 0.71526893278358161
	.quad	0x3f7471ea1392c780              # double 0.0049914497005135727
	.quad	0x3fe1cde638394eb5              # double 0.55638419133398165
	.quad	0x3fecc56fbe439ea9              # double 0.89910113488163745
	.quad	0x3fd3f510e0b7be92              # double 0.31183263726323063
	.quad	0x3fe3d466e2c8184e              # double 0.61967796605382275
	.quad	0x3fe68af78786a67b              # double 0.7044637343398813
	.quad	0x3fe8048c46f7ce35              # double 0.75055517064033117
	.quad	0x3fe29ed9255deaab              # double 0.58189065263953432
	.quad	0x3fe4fbd116d97113              # double 0.6557393499638543
	.quad	0x3fc3da55b794a5d8              # double 0.15510055030726622
	.quad	0x3fe0f2a6484d216d              # double 0.52962030526491122
	.quad	0x3fc8162951bef82c              # double 0.18817631236555721
	.quad	0x3fe7819fda0ed05b              # double 0.73457329358508205
	.quad	0x3faa9177d38e2060              # double 0.051891083311659925
	.quad	0x3fe37e27c192d07e              # double 0.60914981658289924
	.quad	0x3fe24c27b1977f73              # double 0.57179627118965326
	.quad	0x3fe811d213bb0dfa              # double 0.7521753678669818
	.quad	0x3fe8dcf5ac107cdf              # double 0.77697261434868981
	.quad	0x3fbb7c283d2b3fc0              # double 0.10736323827154504
	.quad	0x3fdbf3c47707f27c              # double 0.43675338386655205
	.quad	0x3fe0892942e3e676              # double 0.51674330772875865
	.quad	0x3fe780bcc520ba24              # double 0.73446501256495766
	.quad	0x3fed5cc53187f5bb              # double 0.91757449792901669
	.quad	0x3febfcb7836fcfa3              # double 0.87459922476999841
	.quad	0x3f9848cc0d82fde0              # double 0.023715198826492201
	.quad	0x3fc8f055bcd2f790              # double 0.19483443946768064
	.quad	0x3fd65fe323341bb2              # double 0.34960249364706464
	.quad	0x3fe93b3071f1fa2d              # double 0.78847524886061182
	.quad	0x3fdce81e65102372              # double 0.45166740292966445
	.quad	0x3fd5a8628d953646              # double 0.33840240313006509
	.quad	0x3fe68f291945edc8              # double 0.70497565208591428
	.quad	0x3fd55b66611226f4              # double 0.33370360831814527
	.quad	0x3fe4cc812ca00361              # double 0.64996393886404402
	.quad	0x3fea7ce4329c8640              # double 0.82774553189319278
	.quad	0x3fd7f63f931fa8a2              # double 0.37440480582757563
	.quad	0x3fe2e0ddf2459b07              # double 0.58994958227853622
	.quad	0x3fe124604e202ab8              # double 0.53569045313755392
	.quad	0x3fc2ceffef6ef424              # double 0.14694213095745667
	.quad	0x3feec23ab22d122c              # double 0.96120962905894691
	.quad	0x3fce2d5fada05acc              # double 0.23575969674921848
	.quad	0x3fea60f931f01d2e              # double 0.82433757546906405
	.quad	0x3fe298db3f7d313b              # double 0.5811592330951848
	.quad	0x3fdbbbedf4c553ea              # double 0.43334530738257959
	.quad	0x3fe5b7b9652486d9              # double 0.67867727045469473
	.quad	0x3fe92d1d8d3d5cf6              # double 0.78675725541952946
	.quad	0x3fecb15d910f9676              # double 0.89665106136517525
	.quad	0x3fee2587ccf21cee              # double 0.94208135632007184
	.quad	0x3fd4b601a64fc64c              # double 0.32360879174584478
	.quad	0x3fc153cd7b742d8c              # double 0.13536995437639765
	.quad	0x3fe7c91ab048bd38              # double 0.74329885893340641
	.quad	0x3f8af84332812e40              # double 0.013168835619715158
	.quad	0x3fdc3cec04454916              # double 0.44121838013701742
	.quad	0x3fe071510638b5af              # double 0.51383258071080273
	.quad	0x3fe00d657ae9a892              # double 0.5016353035582759
	.quad	0x3fc83d79bf625540              # double 0.18937608570983322
	.quad	0x3fed1fac928e2b92              # double 0.91011646865932705
	.quad	0x3fb2e9970a77c7b0              # double 0.073876800590169323
	.quad	0x3fea3114536a7bb8              # double 0.81849113742997925
	.quad	0x3fa7bdcfc38ea4f0              # double 0.046370022412995371
	.quad	0x3fe94d5a21a90137              # double 0.79069239210369957
	.quad	0x3fd45eeb7f117f46              # double 0.31829345139521015
	.quad	0x3fc049c53d6e403c              # double 0.12725129603905028
	.quad	0x3fdf3c3532e63bfe              # double 0.48804979296340878
	.quad	0x3fdd008be6647d3c              # double 0.45315835475226485
	.quad	0x3fb3915368271c28              # double 0.076436245849536122
	.quad	0x3fde39b0c75d706a              # double 0.47227115124929375
	.quad	0x3fb2fee14c38a8a8              # double 0.074201661213609271
	.quad	0x3fb8231de37c64b8              # double 0.094285839117577264
	.quad	0x3fd476b7b187c1ec              # double 0.31974594437545423
	.quad	0x3fea2949b0698a08              # double 0.81754002051849373
	.quad	0x3fda307f547d61bc              # double 0.40921004534677841
	.quad	0x3fe81dbb4bd1be83              # double 0.75362934883555999
	.quad	0x3feefed52cb61eaa              # double 0.96860750897117964
	.quad	0x3fcd251a999172a4              # double 0.22769482134289831
	.quad	0x3fef3a5274775a7e              # double 0.97586939570722087
	.quad	0x3fbefcced7803da0              # double 0.12104504357579637
	.quad	0x3fc5295bd5a8751c              # double 0.16532466824075065
	.quad	0x3feec8304722677a              # double 0.96193708318172289
	.quad	0x3feb6e8ecba6fcc9              # double 0.85724582458342369
	.quad	0x3feddf0509e7fb55              # double 0.93347408232498685
	.quad	0x3fc5cadd4accd314              # double 0.17025343086574962
	.quad	0x3fc6500a0efec520              # double 0.1743176053255775
	.quad	0x3fb0ed338dbbd2c8              # double 0.066119405844641155
	.quad	0x3fd1bee60ac1e40a              # double 0.27727652597928965
	.quad	0x3fc62638558707cc              # double 0.17304138351579323
	.quad	0x3fd66cf7ab0d6d62              # double 0.35040084556904649
	.quad	0x3fe2f24daae0adec              # double 0.59207805037061467
	.quad	0x3fe9751cb1eeb65c              # double 0.79554590942798197
	.quad	0x3fd5be8d6b00bab4              # double 0.33975539636132202
	.quad	0x3fb46630f6873478              # double 0.079684314906630749
	.quad	0x3fc35b54fb84d8ec              # double 0.1512247303123283
	.quad	0x3fc811d5dd06ab58              # double 0.18804429333007522
	.quad	0x3fe5f5d8a0c58cf9              # double 0.68626052284926609
	.quad	0x3fe2c1a764f430db              # double 0.58613939015915706
	.quad	0x3fed7eb984aa976c              # double 0.92171932135964373
	.quad	0x3fe1a4dd3459cad6              # double 0.55137500977283582
	.quad	0x3fda5d4a62753c2c              # double 0.41194400420221444
	.quad	0x3fc010659bfd3d5c              # double 0.12550039402638447
	.quad	0x3fee7569557eda82              # double 0.95183245371193004
	.quad	0x3fcf7f8fa304dccc              # double 0.24608035526191541
	.quad	0x3fc0fcc02ebcdcec              # double 0.13271333963505272
	.quad	0x3fe28d6259c850d9              # double 0.57975881133691154
	.quad	0x3fdba3c05f429870              # double 0.43186959555385496
	.quad	0x3febd67ec0af23ed              # double 0.8699334872591159
	.quad	0x3fd3dcdfbca4756a              # double 0.31035607740508075
	.quad	0x3fdc6963f0a9a6a2              # double 0.44393251898018538
	.quad	0x3fa75dc8ecaef820              # double 0.045637396709466538
	.quad	0x3fc44ab8a1a99d3c              # double 0.15853031057052103
	.quad	0x3fe53d56aa27ab8f              # double 0.66373761399641917
	.quad	0x3fe72b5c6885c9aa              # double 0.72404308714458421
	.quad	0x3fe5aa9d9bcd769b              # double 0.6770771067637783
	.quad	0x3fe12db979cba34e              # double 0.53683160579849143
	.quad	0x3fe5a3e4dbc9126d              # double 0.67625658919184917
	.quad	0x3fe308c23113b3aa              # double 0.59481916032165327
	.quad	0x3feaf4acd720fb67              # double 0.84236757294989395
	.quad	0x3fe701e959d7947a              # double 0.71898334071433045
	.quad	0x3fe6059377de67f7              # double 0.68818066989774607
	.quad	0x3fb4f16bd51b1070              # double 0.081808795478595319
	.quad	0x3fc88f98d3be7b7c              # double 0.19188223208490374
	.quad	0x3fd62dfbfeb58dc0              # double 0.346556662311027
	.quad	0x3fd91bddf5238e16              # double 0.39232586802811065
	.quad	0x3fbca079897b5890              # double 0.11182365042199849
	.quad	0x3fe6088ac6f8dccb              # double 0.68854273664228438
	.quad	0x3febebfcfb815dd9              # double 0.87255715486656549
	.quad	0x3fe10f9ed0d19374              # double 0.53315678391355315
	.quad	0x3f6ffb681ab31000              # double 0.0039040597235686647
	.quad	0x3fe9d38da466f47a              # double 0.80707437619970723
	.quad	0x3fdf9c6b582e1458              # double 0.49392207728698656
	.quad	0x3fdef1ea7cffa38a              # double 0.48351537901776764
	.quad	0x3fe7678afe32f303              # double 0.73138951919790463
	.quad	0x3fd272b79b11e22c              # double 0.28825178283253439
	.quad	0x3fd308462b121d9c              # double 0.29738001066331221
	.quad	0x3fd0624cfb55d234              # double 0.25599979919869331
	.quad	0x3fe12885b84adbb9              # double 0.53619657511341423
	.quad	0x3fed1c6f04aba959              # double 0.90972090637414305
	.quad	0x3fe32df8ee7ece35              # double 0.59936186390991131
	.quad	0x3fb96847f5f170a0              # double 0.099247453255375095
	.quad	0x3fdc96cd6d1cecd4              # double 0.44670425086560539
	.quad	0x3fe9d9ec261748b6              # double 0.8078518623317652
	.quad	0x3feb05248d5d339f              # double 0.84437778101129257
	.quad	0x3fc4e1abc5ef1e9c              # double 0.16313693203686774
	.quad	0x3feed552d3089ae1              # double 0.96354047029020872
	.quad	0x3fdc664247a47302              # double 0.44374138828588638
	.quad	0x3fc91a4c19a77270              # double 0.1961150288833724
	.quad	0x3fdbbd9bf3e437e8              # double 0.43344782655265002
	.quad	0x3fe7e714247cc7a4              # double 0.74695784689378231
	.quad	0x3fed3d382c718b6e              # double 0.91372307472589198
	.quad	0x3fdee0b13f8925ac              # double 0.48246413426076162
	.quad	0x3fd9a8536d59def4              # double 0.40089879683317453
	.quad	0x3fef3c2e9f37bbb4              # double 0.97609644982536858
	.quad	0x3fd3a73c5037e2ce              # double 0.30708225091761399
	.quad	0x3fcf58a43105cc1c              # double 0.24489262002643464
	.quad	0x3fe3107b80e3fff5              # double 0.5957620160479552
	.quad	0x3fe6823ff5167756              # double 0.70339963787749116
	.quad	0x3fe7d7b014becdea              # double 0.74507907916853111
	.quad	0x3fa55f7aacf97fd0              # double 0.041744073500694534
	.quad	0x3fd6e0054240d1a6              # double 0.35742312879599536
	.quad	0x3f8a37a9e24b7b00              # double 0.012801482408972387
	.quad	0x3fd04cafc28ca352              # double 0.2546805763145602
	.quad	0x3fda84a7b82de042              # double 0.41434662805795963
	.quad	0x3fdfe770a9480e5e              # double 0.49850098163026313
	.quad	0x3feaeaf48f8a33c0              # double 0.84118106875541088
	.quad	0x3fec426e89f5f997              # double 0.88310934968449117
	.quad	0x3f99bb2843e4dd60              # double 0.025128010887070729
	.quad	0x3fa49b6e539ecf70              # double 0.040248344142496673
	.quad	0x3fe237b8130ee684              # double 0.56930164072328227
	.quad	0x3fd28dbe5cb92d62              # double 0.28990134291662717
	.quad	0x3fea7fd5f5d68f23              # double 0.82810495391138195
	.quad	0x3fdb68d6c64cf808              # double 0.42827386250780863
	.quad	0x3fe5b999413f55e3              # double 0.67890608543046616
	.quad	0x3fe8ccf9b7ddaca2              # double 0.77502141867934804
	.quad	0x3fdfb8d19e45e8d2              # double 0.49565544563632813
	.quad	0x3fe3f433054d2183              # double 0.6235594848194953
	.quad	0x3fcb6b32727458a0              # double 0.21420889462087178
	.quad	0x3fe7e0c3d014a817              # double 0.7461871208263372
	.quad	0x3fe4ebd9b06f2084              # double 0.65379032573493179
	.quad	0x3fd50f5c654b85b2              # double 0.32906255619135572
	.quad	0x3fa48f889f4e05d0              # double 0.040157575079330265
	.quad	0x3fef9dd27a4b18ba              # double 0.98801540265483045
	.quad	0x3fda87489a40fb3a              # double 0.41450705589152259
	.quad	0x3fd8a1dd25a056b2              # double 0.38487938570447533
	.quad	0x3fc2ed39d6ddc538              # double 0.14786456100004286
	.quad	0x3fef0d8f75714db3              # double 0.97040532052999706
	.quad	0x3fd40e73e82a75b8              # double 0.31338212654540198
	.quad	0x3fe34eec46da7442              # double 0.60338414991895939
	.quad	0x3febbb5719b3e74f              # double 0.866618681145363
	.quad	0x3fed20bed609e7af              # double 0.91024724773818899
	.quad	0x3fec5faf34d65f7d              # double 0.88668022460750218
	.quad	0x3fd24793c0e91962              # double 0.28561872328682203
	.quad	0x3fe486912c6e344f              # double 0.64142664602116806
	.quad	0x3fea21b024b3431b              # double 0.81661231201187279
	.quad	0x3fecf6259603efec              # double 0.90504721927527276
	.quad	0x3fc8a59ccbe88ee0              # double 0.19255409199205697
	.quad	0x3feaee138b7762d0              # double 0.84156205405732898
	.quad	0x3fe10383423f889d              # double 0.53167880000207257
	.quad	0x3fd56ae35881d856              # double 0.33464893000871621
	.quad	0x3feaa834e460d339              # double 0.83303303341981583
	.quad	0x3fe9b38b6d98c96b              # double 0.8031670704424817
	.quad	0x3fae500e0294b2a0              # double 0.059204519095463981
	.quad	0x3fe96a0a169c61ec              # double 0.7941942636126078
	.quad	0x3fd3147c9be34024              # double 0.29812541221054034
	.quad	0x3fee5ba8d6c010a1              # double 0.94868890708359654
	.quad	0x3fe894304d53e221              # double 0.76808943846760169
	.quad	0x3fba436a6a2a3a78              # double 0.10259118167798842
	.quad	0x3fd52f0908d77c9e              # double 0.33099580634547887
	.quad	0x3fe008d97a4efe84              # double 0.50108026398079675
	.quad	0x3fd0bd1726c38ece              # double 0.26154116426026242
	.quad	0x3fe6f4d3e0cd7d23              # double 0.7173861876180222
	.quad	0x3feb8a31f5490325              # double 0.86061952502504779
	.quad	0x3fe6251db16fa5f2              # double 0.69203076034062705
	.quad	0x3fe930f683b5f6cb              # double 0.78722692227139512
	.quad	0x3fe67156ab8a00d4              # double 0.70133527282453167
	.quad	0x3fd493515ab71238              # double 0.32149156435869797
	.quad	0x3fe5aa81b7b7d9e8              # double 0.67706380732016402
	.quad	0x3fcefe356ee9bb44              # double 0.24213283458399293
	.quad	0x3fe68f9f36e909f9              # double 0.70503197407407392
	.quad	0x3febffb29338f32c              # double 0.87496308092486207
	.quad	0x3fd6e4a6975488ae              # double 0.35770573404637218
	.quad	0x3fd0f3ccc1388dc8              # double 0.26488036030988527
	.quad	0x3fed74e263efe3f3              # double 0.92051810759505626
	.quad	0x3fe5cea50159ef0d              # double 0.68147516502310312
	.quad	0x3fe812fbcc4a722b              # double 0.75231733227298514
	.quad	0x3fe133114ee7bd88              # double 0.5374838391416441
	.quad	0x3fe3234f9daeb4ec              # double 0.59806042477944521
	.quad	0x3fdb72abb6831154              # double 0.42887394736705642
	.quad	0x3fee295095931eb5              # double 0.942543308389722
	.quad	0x3fe09fed27a65e3a              # double 0.519522263947642
	.quad	0x3fde2ac44b352ed8              # double 0.47136027664667557
	.quad	0x3fe2a06389fd81f5              # double 0.58207871390555843
	.quad	0x3fc93223fdc1a698              # double 0.19684266939593864
	.quad	0x3fd3dd5d00e2a874              # double 0.31038594328368352
	.quad	0x3fe3adcf4c211abe              # double 0.61496701115614605
	.quad	0x3fd3b4ac1c0417a6              # double 0.30790236221252554
	.quad	0x3fdea7c7410815fc              # double 0.47899037695637481
	.quad	0x3fd824d0cb387b8e              # double 0.3772470459534184
	.quad	0x3feefbad30378d3c              # double 0.96822223107702809
	.quad	0x3feff362ed17366b              # double 0.99846025759479795
	.quad	0x3fe93a2b7d0cd539              # double 0.78835081504681803
	.quad	0x3fc51ae2fd7759d4              # double 0.16488301636009217
	.quad	0x3fca502ef5681ca0              # double 0.20557200415371302
	.quad	0x3fc9afd38e876c48              # double 0.20067829570220597
	.quad	0x3fe4239d7877dd4b              # double 0.62934754876088428
	.quad	0x3fe42ac6396abcc9              # double 0.63022147382971483
	.quad	0x3fc0c17eaf654408              # double 0.130904994623535
	.quad	0x3fe8e0c06214a3be              # double 0.77743548542377261
	.quad	0x3fea83553da6b293              # double 0.82853185693018572
	.quad	0x3fe7bfea71baabe3              # double 0.74217722141963482
	.quad	0x3fef498518269cfe              # double 0.97772459713897297
	.quad	0x3fe614a8f9221e3a              # double 0.69002197893946193
	.quad	0x3fdd8119718d37b2              # double 0.46100460137392496
	.quad	0x3fd39d1694f387aa              # double 0.30646290346168803
	.quad	0x3fded52aa9352bbc              # double 0.48176065944852176
	.quad	0x3fdd92b18816dec8              # double 0.46207845964407257
	.quad	0x3fdf060db4c7421c              # double 0.484744478741989
	.quad	0x3fd4b971d4db4b5e              # double 0.32381864344386269
	.quad	0x3feb8ea8903ae6e0              # double 0.86116436166704701
	.quad	0x3fe32ddd6eff390a              # double 0.59934875182241965
	.quad	0x3fea038a751b7993              # double 0.81293223259472069
	.quad	0x3fe6f3828e22c340              # double 0.71722533951660949
	.quad	0x3fdacd23e90e5b28              # double 0.41877076873190555
	.quad	0x3fd9ba15f608eb4c              # double 0.40198277499046209
	.quad	0x3fc238fc9d977f48              # double 0.14236409850036069
	.quad	0x3fd4e489140f3f2c              # double 0.32644869765225581
	.quad	0x3fde56fa5e575e00              # double 0.47405871594443738
	.quad	0x3fed6357471d29c8              # double 0.91837657823025953
	.quad	0x3feb0720729bec0e              # double 0.84461996445259202
	.quad	0x3fd1396c5239095e              # double 0.26912982968874199
	.quad	0x3fbb5493ecc5afc8              # double 0.10675930529185884
	.quad	0x3fe63abb6d3f6773              # double 0.69466945016323078
	.quad	0x3fe39c1653041c0a              # double 0.6128036137969286
	.quad	0x3fdecfb9cfeba62a              # double 0.48142857842194309
	.quad	0x3feed04b5985952e              # double 0.96292655453422582
	.quad	0x3fdca08953d847b6              # double 0.4472983664319331
	.quad	0x3fa9bcbcecff6ee0              # double 0.050268081598657366
	.quad	0x3fc2da685ab44d54              # double 0.14729027203484668
	.quad	0x3fe21f95ecfa1d13              # double 0.56635566982814323
	.quad	0x3fe77c2ef112bf96              # double 0.73390910229317075
	.quad	0x3fd83c636fe44658              # double 0.37868581702159565
	.quad	0x3fd0fa67bc9d36bc              # double 0.26528352183673198
	.quad	0x3fd677f22620494a              # double 0.35107091639760724
	.quad	0x3fa86c62fd433c00              # double 0.04770192472062007
	.quad	0x3fd318b19cad58ee              # double 0.29838218975545672
	.quad	0x3fe974445b292388              # double 0.79544275097679051
	.quad	0x3fe6bbda874f0a5b              # double 0.7104313509701784
	.quad	0x3fe15390a92e4412              # double 0.54145081561194019
	.quad	0x3fede569518ddd02              # double 0.93425432137055986
	.quad	0x3fee3bba45645a72              # double 0.94479096940160745
	.quad	0x3fbcd5f2ab5ff900              # double 0.11263958629567483
	.quad	0x3fddedac26864372              # double 0.46763137590556092
	.quad	0x3fc495f90723b788              # double 0.16082680557832085
	.quad	0x3fcfafbd8905543c              # double 0.24755067053288993
	.quad	0x3fedd3b68596fe20              # double 0.93209386913071412
	.quad	0x3fde1efab4454b6a              # double 0.47064082722243106
	.quad	0x3fcff93463f8313c              # double 0.24979262238810829
	.quad	0x3fe1f101ab77cd07              # double 0.56066974153364491
	.quad	0x3fcafb4fe1353348              # double 0.21079443451380997
	.quad	0x3fda110be02f385a              # double 0.40729042904866264
	.quad	0x3fec4c9e4bf23c72              # double 0.88435282548188199
	.quad	0x3fdd3ec78eb52222              # double 0.45695675789150603
	.quad	0x3fe2383db96d1c4c              # double 0.56936536994988662
	.quad	0x3fe4f629dbd5589e              # double 0.65504925667007163
	.quad	0x3fed54afbc1513af              # double 0.91658770308332815
	.quad	0x3fe9c38fdd062ce2              # double 0.80512231034063242
	.quad	0x3fc87424b3b37e98              # double 0.19104441427679286
	.quad	0x3fe3556ab81360bc              # double 0.60417686416896954
	.quad	0x3fbbcb366e4ed5a8              # double 0.10856952851357582
	.quad	0x3fd4e5c7243ed7bc              # double 0.32652452983472435
	.quad	0x3fbaf156ed06a2c0              # double 0.1052450493504109
	.quad	0x3fac7fdd88ffa460              # double 0.055663035367452762
	.quad	0x3feb18ed77f4224a              # double 0.84679292133757511
	.quad	0x3fed0377a78c1d53              # double 0.9066732666405336
	.quad	0x3fe4ba060504b61e              # double 0.64770794849545488
	.quad	0x3faca1dfd5ecb2d0              # double 0.055922503341525265
	.quad	0x3fe4be57a16c7ef0              # double 0.6482351448830439
	.quad	0x3fb63b311cd614d8              # double 0.086840695896245435
	.quad	0x3f9ffe59d36d7560              # double 0.031243709115519436
	.quad	0x3fbeaa14892365f8              # double 0.11978271816351327
	.quad	0x3fef10a45275f71b              # double 0.97078147988915775
	.quad	0x3fd7badd8c061dca              # double 0.37078035997589309
	.quad	0x3fe0f53657869946              # double 0.52993313879850557
	.quad	0x3fe3714b05e1f3f7              # double 0.60757971905661534
	.quad	0x3fe91b1af949c674              # double 0.78455876053904072
	.quad	0x3fe51273b85a58cc              # double 0.65850244528226076
	.quad	0x3fe0d4d434e372d5              # double 0.52598009423999292
	.quad	0x3fd86ba0f9d32e14              # double 0.38156914135899567
	.quad	0x3fe8bfae8c4a5b01              # double 0.77339866066435559
	.quad	0x3feed20c825d9f3a              # double 0.96314073049595739
	.quad	0x3fb75a3fc7171850              # double 0.09122084246254869
	.quad	0x3fd0fe2976e461e4              # double 0.26551281557615725
	.quad	0x3fe22c6070afa95e              # double 0.5679170800115505
	.quad	0x3fe6de21dce6dc3d              # double 0.71461575646288333
	.quad	0x3fbccd8abdd71d88              # double 0.11251132139942943
	.quad	0x3fd49e446a061584              # double 0.32215986589320544
	.quad	0x3fcf08f662d936c0              # double 0.24246101214014537
	.quad	0x3fd049a93a315b36              # double 0.25449591334238464
	.quad	0x3fe0eab711bef97f              # double 0.52865174737944176
	.quad	0x3fe679204c104263              # double 0.70228590828089599
	.quad	0x3fc7bfa17b435b50              # double 0.18553560751635212
	.quad	0x3fe8909dad28d7ee              # double 0.7676533109686241
	.quad	0x3f80467035f0da40              # double 0.0079468504392085081
	.quad	0x3fcad043d1f2f538              # double 0.20948074103754677
	.quad	0x3fe50851d0137429              # double 0.65726557388155016
	.quad	0x3fe51346cf4a42a5              # double 0.65860310064643512
	.quad	0x3fd38641d915a5b4              # double 0.30506941032089263
	.quad	0x3fc455c7131c7530              # double 0.15886772568857443
	.quad	0x3fd4c3fb0f2f72b4              # double 0.32446171267455814
	.quad	0x3fdc94d1dd5fdbcc              # double 0.4465832387790527
	.quad	0x3fe5574ed658205a              # double 0.66690770973310554
	.quad	0x3fe41724ee5231dd              # double 0.62782522723278655
	.quad	0x3fefdd0c1888fc01              # double 0.99573330680857463
	.quad	0x3febd469860c3482              # double 0.86967922383486518
	.quad	0x3feb18ecafcd61e7              # double 0.84679254852659092
	.quad	0x3fc6e58679492ea4              # double 0.1788795559135582
	.quad	0x3feae7b3dea422fe              # double 0.84078401074029308
	.quad	0x3fb9a5a92456e5d0              # double 0.10018403184121571
	.quad	0x3fdd51a6f624ea50              # double 0.45810865438003123
	.quad	0x3fea808cdfeb6bf0              # double 0.82819217428493452
	.quad	0x3fe5b0189c096f2b              # double 0.67774610973308336
	.quad	0x3f7c25595cdf2e00              # double 0.0068715563520060918
	.quad	0x3fe0582952912221              # double 0.51076189161637242
	.quad	0x3fec85a691b859d1              # double 0.89131477795563729
	.quad	0x3fe7dbad53318891              # double 0.7455660462258199
	.quad	0x3fefe4bb5ea571f4              # double 0.99667137609099976
	.quad	0x3fda649e3ad139f8              # double 0.41239124053836873
	.quad	0x3fde29a8056a0dd4              # double 0.4712925007699742
	.quad	0x3fdb459b144e66fa              # double 0.42612339957268797
	.quad	0x3fb3a60c14dbcae8              # double 0.076752429096625385
	.quad	0x3fdb0277362a5d9e              # double 0.42202549256895761
	.quad	0x3fe57ddf76bae028              # double 0.67161534490060593
	.quad	0x3febdee6293b8cf3              # double 0.87095935872312535
	.quad	0x3feec6600dc19a7f              # double 0.9617157238652253
	.quad	0x3fe376e03bc2aa40              # double 0.60826121971087588
	.quad	0x3fd904878662dc1a              # double 0.39090145229005346
	.quad	0x3fec04d0618a29ad              # double 0.87558764506075237
	.quad	0x3fe001e48ff9588a              # double 0.50023105735705653
	.quad	0x3fb077f94f2d58a8              # double 0.064330655889849653
	.quad	0x3fc34200a209ad98              # double 0.15045173561098291
	.quad	0x3fef8b6c7546866b              # double 0.98576949029320581
	.quad	0x3fe5ae2ef4be5b3e              # double 0.67751262475471896
	.quad	0x3fdb874f5012a9c2              # double 0.43013365573520101
	.quad	0x3fe9d5d018003bf0              # double 0.80735020339659336
	.quad	0x3fb547f94b8b73e8              # double 0.083129483169116392
	.quad	0x3fef5003d3f7911d              # double 0.97851745033088699
	.quad	0x3fd57fef2e20cd30              # double 0.33593348984432492
	.quad	0x3fe4ff945df71b70              # double 0.65619867661085429
	.quad	0x3fd57d84368937f4              # double 0.33578591657430867
	.quad	0x3fe74d3355415601              # double 0.72817389155778767
	.quad	0x3fdf731a0787a81e              # double 0.49140024886458089
	.quad	0x3fe0a31b0a1748e6              # double 0.5199103543366419
	.quad	0x3fed886ac714f9b7              # double 0.9229024780577707
	.quad	0x3fe10c115afbc73d              # double 0.53272311945168094
	.quad	0x3fb8472f9201edc0              # double 0.094836209436770069
	.quad	0x3feb314b10b242dc              # double 0.84976723919870833
	.quad	0x3fe780d44fa8e3ee              # double 0.73447623785534488
	.quad	0x3fdd9334d5ba944c              # double 0.46210976478534316
	.quad	0x3fedebdc2c92cda6              # double 0.93504151063682595
	.quad	0x3fa1821d1a92f0c0              # double 0.034195813650030882
	.quad	0x3fe5a62acd0efaeb              # double 0.67653408098689505
	.quad	0x3fd6a586978e3bf4              # double 0.35385289001800335
	.quad	0x3fec177a931dd3ad              # double 0.87786606534665668
	.quad	0x3fda2fc5e04c830c              # double 0.4091658296984384
	.quad	0x3fd81fb139282f24              # double 0.37693434316382679
	.quad	0x3fe9ff50bf3acd45              # double 0.81241643285321941
	.quad	0x3fdf35d690ac4e7e              # double 0.48766101959447627
	.quad	0x3fe5776139209b3f              # double 0.67082272679986221
	.quad	0x3fef9884e3773035              # double 0.98736805369254077
	.quad	0x3fce57f630e68c8c              # double 0.23705937755321249
	.quad	0x3fe50868fa9b3069              # double 0.65727662035488976
	.quad	0x3fcf265b553d6afc              # double 0.24335805570702707
	.quad	0x3fef90616d14023b              # double 0.98637458137824951
	.quad	0x3feeea591cd299ca              # double 0.9661069453184663
	.quad	0x3fef95b91a27b873              # double 0.98702674015454616
	.quad	0x3fd4b85389d0696a              # double 0.32375038584145577
	.quad	0x3fe6066104353760              # double 0.68827868291712591
	.quad	0x3fecccad21668c30              # double 0.89998489879179111
	.quad	0x3fb42b0668a774d0              # double 0.078781509924243708
	.quad	0x3fdffd6e9017e186              # double 0.49984325477228031
	.quad	0x3fdfd7c824a72922              # double 0.49754527644530999
	.quad	0x3fc8f60ed4749140              # double 0.19500909208103145
	.quad	0x3fe7713a97252f32              # double 0.73257188339764512
	.quad	0x3fd30b4d611513d6              # double 0.29756483536431
	.quad	0x3fd438f93c92d9f4              # double 0.31597739138979297
	.quad	0x3fe906cc589cab85              # double 0.78207986170797084
	.quad	0x3fecc057e8d6b676              # double 0.89847941852867907
	.quad	0x3fe0f672411119da              # double 0.53008377750739588
	.quad	0x3fc0c1ad4a658ccc              # double 0.1309105504288709
	.quad	0x3fdb290c51fa21c4              # double 0.4243803787763023
	.quad	0x3fada2b923e8fc30              # double 0.057882104524189848
	.quad	0x3fe651f44984cb57              # double 0.69750418051840313
	.quad	0x3fd8dccea5bc96e8              # double 0.38847700295660426
	.quad	0x3fe580f1f53a79cd              # double 0.67199037452865584
	.quad	0x3fde7f2829c35664              # double 0.47651104048177317
	.quad	0x3fe4dca32b076ad5              # double 0.65193327335449658
	.quad	0x3fc936e510abb484              # double 0.19698775590896755
	.quad	0x3fc9197201f5cdb4              # double 0.19608903022490909
	.quad	0x3fea89ffd2f3b34c              # double 0.82934561921647675
	.quad	0x3fee88f749b18cba              # double 0.95421947854301625
	.quad	0x3fd6f4a1ea2c3408              # double 0.35868118160652829
	.quad	0x3fdb235bddcc847c              # double 0.42403313312576763
	.quad	0x3fd2662385b43652              # double 0.2874840551092791
	.quad	0x3fc93d089890cbc0              # double 0.19717509698383928
	.quad	0x3febdf7bf56da4c5              # double 0.87103078780378296
	.quad	0x3fe31b0c7f0007ea              # double 0.59705185703955732
	.quad	0x3fd89b771286f0ba              # double 0.38448883828437952
	.quad	0x3fe414db790a08bc              # double 0.62754605904071736
	.quad	0x3fd6a99e6ada5b18              # double 0.35410271105631486
	.quad	0x3fe929b58b8f32cf              # double 0.78634145028771651
	.quad	0x3fe8ca6a50ebdbd9              # double 0.77470889859147996
	.quad	0x3fe8a69539e1f6bb              # double 0.77033482842644874
	.quad	0x3fd166d972023db2              # double 0.27190242894809125
	.quad	0x3fd357e6244317d8              # double 0.30223992863863947
	.quad	0x3fe29e5dbfb35c47              # double 0.58183181230095549
	.quad	0x3fe37f1bb9ad8476              # double 0.60926615014262953
	.quad	0x3fac6b4887bbebb0              # double 0.05550600678358053
	.quad	0x3fbeae0994c39970              # double 0.11984310037550983
	.quad	0x3fedcafb247d8467              # double 0.93102795722019216
	.quad	0x3fe68d5819dc6609              # double 0.70475392390216129
	.quad	0x3fda5b98e2551efc              # double 0.41184064963134381
	.quad	0x3fe25c7c1cf1b2ea              # double 0.57378965047027219
	.quad	0x3febbd12094c4f94              # double 0.86682988945038852
	.quad	0x3fea422e0ef7d889              # double 0.82057860301462526
	.quad	0x3fefc02ee4178d8c              # double 0.99220985936374139
	.quad	0x3fd67b1f08644d76              # double 0.35126472301018141
	.quad	0x3fe572791b392671              # double 0.67022376362838376
	.quad	0x3fe7f2f57fe165e1              # double 0.74840807892467975
	.quad	0x3fd84216d8cd7db0              # double 0.37903376743448813
	.quad	0x3fcacd159dd3bca0              # double 0.2093836804046747
	.quad	0x3fefae3b4dd60878              # double 0.9900185127483061
	.quad	0x3fedd23cf4f3b9e9              # double 0.93191383211325018
	.quad	0x3f9c56d84b91aae0              # double 0.02767503701435714
	.quad	0x3fa8a5bc84986c60              # double 0.048139468370401728
	.quad	0x3fe34a0eb3fa9416              # double 0.60279021408189482
	.quad	0x3fd72c83a3bba910              # double 0.36209193219714653
	.quad	0x3fe2a138a98411ce              # double 0.58218033894132204
	.quad	0x3fe9c3ecab2dc149              # double 0.80516656335206804
	.quad	0x3fcd504c2151a538              # double 0.22901298167134043
	.quad	0x3fd739f2d4fed2da              # double 0.36291189956982139
	.quad	0x3fdf9d14e607c3b2              # double 0.49396250213527104
	.quad	0x3fe581dd72fc3903              # double 0.67210266550117159
	.quad	0x3fe2b92fcee68e68              # double 0.58510580454135397
	.quad	0x3fc34ed96610123c              # double 0.15084378703626722
	.quad	0x3fe91e499318884d              # double 0.78494719247488265
	.quad	0x3fe263415079f7f1              # double 0.57461610525183293
	.quad	0x3fb7217ac66e4df8              # double 0.090354608006513959
	.quad	0x3fea51f510851d2b              # double 0.82250455118711352
	.quad	0x3fe1a326f5754561              # double 0.55116603795083219
	.quad	0x3fd939569ba94f20              # double 0.39412465287499465
	.quad	0x3fe182e6556e9d52              # double 0.54722897230105105
	.quad	0x3f51a8cb989e3a00              # double 0.0010778415912430228
	.quad	0x3f9f83ea115fdd60              # double 0.030776650724843591
	.quad	0x3fe01f8130968414              # double 0.50384578218302289
	.quad	0x3fe02fe8bc1ac30c              # double 0.50584828128020964
	.quad	0x3fe00e3d20a00c01              # double 0.50173813221078956
	.quad	0x3fd453fb0635ce48              # double 0.31762576681578425
	.quad	0x3feb9a25438b4ac1              # double 0.86256659691056126
	.quad	0x3fc8610d95cd94dc              # double 0.19046182455637151
	.quad	0x3fa7730a79d6db80              # double 0.045799567578277411
	.quad	0x3feade34548eeaa4              # double 0.83962456240927396
	.quad	0x3fdb80e731ea39fc              # double 0.42974262117868967
	.quad	0x3fec53dc5f72a8a5              # double 0.8852369178978462
	.quad	0x3fddd7df595dd188              # double 0.46630080916590844
	.quad	0x3fd60dbb97b1adb8              # double 0.3445881825816417
	.quad	0x3fed5522b82c7101              # double 0.91664253207594026
	.quad	0x3fd8ff7b7467fc88              # double 0.39059339874069865
	.quad	0x3fefcd404e99df92              # double 0.99380507804652241
	.quad	0x3fd0e79bae969314              # double 0.26413623857142565
	.quad	0x3fedf2b521beae29              # double 0.93587738600530657
	.quad	0x3fe86ab7c1ed4b55              # double 0.76302707554200799
	.quad	0x3fe3958477bc6014              # double 0.61200164209276631
	.quad	0x3fda1d83e775d684              # double 0.40805146792931901
	.quad	0x3feaaa6e3d3e459e              # double 0.83330451928684446
	.quad	0x3fe360d6388c71f3              # double 0.60557089848185652
	.quad	0x3fb05af275819160              # double 0.063887742698687244
	.quad	0x3fda7f0ab17e5c5e              # double 0.41400401433333467
	.quad	0x3feb7848f4f7a1e2              # double 0.85843322606256955
	.quad	0x3fce50361b426338              # double 0.23682285624524879
	.quad	0x3f9ed8a57bf05480              # double 0.03012331551515901
	.quad	0x3fd866d179a2c788              # double 0.38127552870275183
	.quad	0x3fb14173be73ecb8              # double 0.067404970166466849
	.quad	0x3fef858e5c6704d6              # double 0.98505323455187965
	.quad	0x3fec93a62b812645              # double 0.89302357193918935
	.quad	0x3fa24529640991c0              # double 0.035683911763757958
	.quad	0x3fdeba344578b65e              # double 0.48011500152901998
	.quad	0x3fe79f24eb957476              # double 0.73817678463423309
	.quad	0x3fdcef64a687e0c8              # double 0.45211139929552902
	.quad	0x3fc7afca9f57f3d8              # double 0.18505223064849363
	.quad	0x3fe69b5621073e1a              # double 0.70646196795309213
	.quad	0x3fe1583d9215a0a6              # double 0.54202154667020319
	.quad	0x3fdcfc95dd798232              # double 0.45291659000762075
	.quad	0x3fe2658e2b1ca632              # double 0.57489689274115663
	.quad	0x3fe796c5f9e4fb37              # double 0.73715494925986647
	.quad	0x3fc718a5d7b251f4              # double 0.18043969184931508
	.quad	0x3fee161dc428a4f8              # double 0.94019974052676413
	.quad	0x3fee57a8a5077d1a              # double 0.94820053322101505
	.quad	0x3fdd61f662fc2f1e              # double 0.45910415331376153
	.quad	0x3fed85c2155009da              # double 0.92257789766909615
	.quad	0x3fe68fc6e2788381              # double 0.70505089027948042
	.quad	0x3fc57e441065e164              # double 0.16791582871133948
	.quad	0x3fd8136f4816322c              # double 0.37618619956700416
	.quad	0x3fea8ae79b26df93              # double 0.8294561415013838
	.quad	0x3fba952920c6dad0              # double 0.10383851099218622
	.quad	0x3fd800725332c288              # double 0.37502725720245467
	.quad	0x3faa6404e387d9b0              # double 0.051544335150470189
	.quad	0x3fd8ec03ef65d5d6              # double 0.38940523508730729
	.quad	0x3fe7f199932a72c3              # double 0.74824217551539396
	.quad	0x3febe55fe9898b84              # double 0.87174983608962053
	.quad	0x3fed3ae5660e29d4              # double 0.91343946392708597
	.quad	0x3fcd0f03754014d4              # double 0.22702067589867758
	.quad	0x3fc33f561f65bf60              # double 0.150370374041354
	.quad	0x3feba3899761ccaa              # double 0.86371306959917615
	.quad	0x3fddd6035bb38222              # double 0.4661873240966391
	.quad	0x3fca0177050a4e1c              # double 0.20316970583063287
	.quad	0x3feddee339fd3a8a              # double 0.93345795942316667
	.quad	0x3faf285e804c9430              # double 0.06085486713553967
	.quad	0x3fdd6dc164584042              # double 0.45982394027032936
	.quad	0x3fee3b53884cf2f6              # double 0.9447419798012493
	.quad	0x3fe9b254715bca9c              # double 0.80301878109306157
	.quad	0x3fefcac8e0589297              # double 0.99350398843360465
	.quad	0x3fe71d18a0186a97              # double 0.7223017813551732
	.quad	0x3fe2b4a86dc0e12b              # double 0.58455296932428291
	.quad	0x3fedfa75475652be              # double 0.93682350094839939
	.quad	0x3fcee553add31de4              # double 0.24137350070507957
	.quad	0x3fe56938ec4b3f9b              # double 0.66909452582511919
	.quad	0x3fdce474783f255c              # double 0.45144378416860831
	.quad	0x3fef9b28c7892982              # double 0.98769034358819874
	.quad	0x3fec29173e3a2d21              # double 0.88001596597442611
	.quad	0x3fe7c086fb9382ca              # double 0.74225186477641469
	.quad	0x3fc2f6082896cf74              # double 0.14813329679384035
	.quad	0x3feba596cc46bda7              # double 0.86396350763054819
	.quad	0x3fe4c911385a7a52              # double 0.64954434401063055
	.quad	0x3fdb5f7c706ab4c0              # double 0.42770300844388132
	.quad	0x3fd087b0eaa070fa              # double 0.25828192627683644
	.quad	0x3fd383a3943782b6              # double 0.30490960573483095
	.quad	0x3fbbebd7fb36d2c0              # double 0.10906743891866721
	.quad	0x3fefa86b87a82397              # double 0.98930908675639528
	.quad	0x3fe0332cc8389f15              # double 0.50624693971346579
	.quad	0x3fb0c8f48fbc6468              # double 0.065566334811948956
	.quad	0x3fe0f7c366d56ed4              # double 0.53024454197608373
	.quad	0x3fb0dff33ce2b5a0              # double 0.065917208065647603
	.quad	0x3fdd81ee9828edca              # double 0.46105542048800585
	.quad	0x3fc3115361415c6c              # double 0.14896623848719359
	.quad	0x3fceb53e4c9461a0              # double 0.23990610827673908
	.quad	0x3fe655bbab2223ab              # double 0.69796546387180081
	.quad	0x3fe35e30f8e48d1f              # double 0.60524796115752
	.quad	0x3fd35100cb9501a0              # double 0.30181903725681458
	.quad	0x3fe36df565858874              # double 0.60717267826500043
	.quad	0x3fe318056b766cd9              # double 0.59668227185047862
	.quad	0x3fe7a8cd09f7e6e4              # double 0.73935558268496182
	.quad	0x3fd86fa0f2b87ee2              # double 0.38181327536766052
	.quad	0x3fee0c429e4fcb38              # double 0.93899660988095146
	.quad	0x3fbc3aa311001300              # double 0.11026972928091183
	.quad	0x3fda6af9777ee7de              # double 0.41277920407776303
	.quad	0x3fe0cc353874752c              # double 0.52492772127485443
	.quad	0x3fe2a97b080b12ef              # double 0.58318854876469384
	.quad	0x3fe2c42a4d29b6c0              # double 0.58644595213782935
	.quad	0x3fdddd90d730a0e6              # double 0.46664830221790365
	.quad	0x3fe1c7d74dbea9e1              # double 0.55564465698745036
	.quad	0x3fe18a5fa75a72ec              # double 0.54814131437487168
	.quad	0x3fb15b3eb05e8b70              # double 0.067798536356844741
	.quad	0x3fbf7b5268617108              # double 0.12297549293856858
	.quad	0x3feaa25f91c688c6              # double 0.83232096168310288
	.quad	0x3fd0a846764868fc              # double 0.26027070571002731
	.quad	0x3fc86976f02fc5c8              # double 0.19071852424489877
	.quad	0x3fcd6496a95c3368              # double 0.22963221807040246
	.quad	0x3fe35effa23337b3              # double 0.60534650497151288
	.quad	0x3fbdee6e8379de20              # double 0.11691942891945262
	.quad	0x3fc2ea3224e258b8              # double 0.14777209092125587
	.quad	0x3fe3380ec4171d8a              # double 0.60059297846685067
	.quad	0x3fe9ac19e073ad90              # double 0.80225843275313657
	.quad	0x3fc15cbb63adf998              # double 0.13564245574157208
	.quad	0x3fd5bef691421180              # double 0.33978046594008759
	.quad	0x3fd9ea12fbc26cb6              # double 0.40491175256620282
	.quad	0x3fd353cfe766c0b6              # double 0.30199048612395119
	.quad	0x3fe08b485bb54810              # double 0.51700227653259567
	.quad	0x3fe480e8c5b13ed2              # double 0.64073599445142748
	.quad	0x3fe473be1dba8c83              # double 0.63912874037158962
	.quad	0x3fb27b501ba5f1e0              # double 0.072194105863622848
	.quad	0x3fd5c460a0c39430              # double 0.34011092853171743
	.quad	0x3fc61d4ebf92428c              # double 0.17276939729756113
	.quad	0x3fd75607cf3d1ee6              # double 0.36462588537368246
	.quad	0x3fd1bda72cc66236              # double 0.27720050213386871
	.quad	0x3fcac4f2d0d008d4              # double 0.20913539119653157
	.quad	0x3fd0d66e3e368be8              # double 0.26308780742163984
	.quad	0x3fe1bdf549b62b01              # double 0.55443825146480219
	.quad	0x3fec70406ca2307b              # double 0.88870259492388415
	.quad	0x3fe3a116e61e9d34              # double 0.6134142393611115
	.quad	0x3fd3285c5ba0a39a              # double 0.29933842609403316
	.quad	0x3fe2e8f6b5d468a2              # double 0.59093795312516684
	.quad	0x3fd7545896ae8780              # double 0.36452307429328101
	.quad	0x3fe7e2cab0ab840b              # double 0.74643454080444493
	.quad	0x3fcb56f8ef0e10c0              # double 0.21359168694119113
	.quad	0x3fe3bd6de79392c4              # double 0.61687369565751071
	.quad	0x3fe824f2944f3adf              # double 0.75451020209024111
	.quad	0x3fea7e71770552ee              # double 0.8279349636673865
	.quad	0x3fdcbbaa9466e786              # double 0.44895424358730229
	.quad	0x3fe0d59771efb3f4              # double 0.52607319119635898
	.quad	0x3fdd45c4942660d0              # double 0.45738329379811393
	.quad	0x3fd7532c48b8c1d6              # double 0.36445147611359852
	.quad	0x3f5d9c6be1c4e200              # double 0.0018073133024484322
	.quad	0x3fea9d5146b54a04              # double 0.83170379457652687
	.quad	0x3feca6076e743bf8              # double 0.89526721547178933
	.quad	0x3fd0b0649aecdde0              # double 0.26076617364330268
	.quad	0x3fc4d4afe858707c              # double 0.16274069638246036
	.quad	0x3fd9ab99b0daa8ca              # double 0.40109865446960369
	.quad	0x3fede1ac151c33d5              # double 0.93379787562445904
	.quad	0x3fc1790f489e3a2c              # double 0.13650694890789461
	.quad	0x3feb3d1dbed7c8f7              # double 0.8512104728127089
	.quad	0x3fc34abc3e54c6f8              # double 0.15071824115289423
	.quad	0x3fc24be4e9a0be18              # double 0.14294110686886152
	.quad	0x3fe6d4aaefde4632              # double 0.71346041535634286
	.quad	0x3fef92f32251e447              # double 0.98668820098021903
	.quad	0x3f2bca67c301a000              # double 2.1202580092283263E-4
	.quad	0x3fea71b9efd4b2d9              # double 0.82638260690654441
	.quad	0x3fe123bbbafa073f              # double 0.53561197775727709
	.quad	0x3fb124ed243cf770              # double 0.066969701144413696
	.quad	0x3fe03efd4780203a              # double 0.50768913235606949
	.quad	0x3fded8e84e45a700              # double 0.48198897975690613
	.quad	0x3fe2ef26f702674b              # double 0.59169338459035126
	.quad	0x3fe6752ef998dcbf              # double 0.70180462598263904
	.quad	0x3fe08cd0245f478f              # double 0.51718909362738141
	.quad	0x3fd5365d30b7d452              # double 0.3314431167376074
	.quad	0x3fc1170a5a28451c              # double 0.13351563837253699
	.quad	0x3f753a7fc8f0dc00              # double 0.0051827422712937832
	.quad	0x3fcfae5058440d7c              # double 0.24750713643889444
	.quad	0x3fde946a03a75a32              # double 0.4778084788971767
	.quad	0x3fe8bcc454eb55ee              # double 0.77304283700749266
	.quad	0x3fe4b2a1e3c2b9cb              # double 0.64680571064473591
	.quad	0x3fc3fa3a40a0f9bc              # double 0.15607383876517911
	.quad	0x3fba2298de526f48              # double 0.10209041049750767
	.quad	0x3fbae74e76f3fd68              # double 0.10509195713165342
	.quad	0x3fee51b5132b8c0a              # double 0.94747403854523893
	.quad	0x3fee6e37bff214cd              # double 0.95095431794529761
	.quad	0x3fe5872712a31e0b              # double 0.67274812355111757
	.quad	0x3fe22ade9a5fcffa              # double 0.5677330985186011
	.quad	0x3fdb9db785d3aa18              # double 0.43150127476715872
	.quad	0x3feec25b0e95991c              # double 0.96122505997189788
	.quad	0x3fea3f1378f61af7              # double 0.82019971490157573
	.quad	0x3fb1f7653d178f68              # double 0.070181205191656937
	.quad	0x3fbc5d80983bfe68              # double 0.11080173222216561
	.quad	0x3fed7f77bc0d4805              # double 0.92181002358324859
	.quad	0x3fd226314be76266              # double 0.2835810891388405
	.quad	0x3fc308f386d49880              # double 0.14871067126768267
	.quad	0x3fe0e98ea0e66616              # double 0.52851039338856043
	.quad	0x3feb16441dfad2d8              # double 0.84646802764344908
	.quad	0x3f804410667002c0              # double 0.0079423218976456544
	.quad	0x3fe0be4876fd2b66              # double 0.52322791328456897
	.quad	0x3fd24448cc6d4d6a              # double 0.28541774715014034
	.quad	0x3fd1be653657e4c0              # double 0.27724581057516318
	.quad	0x3feb9a993bb03b6c              # double 0.86262189538852629
	.quad	0x3fe9c5fc548a26fe              # double 0.8054181719937501
	.quad	0x3fd395e8032cad2c              # double 0.30602455434810127
	.quad	0x3fe99b1bcca2a832              # double 0.80018415420386746
	.quad	0x3fef5e1e93c44d82              # double 0.98023918972687363
	.quad	0x3fa02b26454aece0              # double 0.031579204519823767
	.quad	0x3fd6dcc74db8def4              # double 0.35722525205663591
	.quad	0x3fd38baf395dd870              # double 0.30540066339688732
	.quad	0x3fc3869e2693d24c              # double 0.15254570850051363
	.quad	0x3fec371a94cf287b              # double 0.88172654213236912
	.quad	0x3fcc1e90e45cddbc              # double 0.21968279982114136
	.quad	0x3fe8de017b6bb35c              # double 0.77710031610113672
	.quad	0x3fb7941c7ba6efc8              # double 0.092103748501300875
	.quad	0x3fe421ef3d7538e1              # double 0.62914239886756829
	.quad	0x3fb832024a347d10              # double 0.094513075939620216
	.quad	0x3fe967ca9dc966cf              # double 0.79391985719413494
	.quad	0x3fe287fd9c7d5b08              # double 0.57910042347325064
	.quad	0x3fe2c767967f7ca2              # double 0.5868413867391562
	.quad	0x3fe2e800e9ddce03              # double 0.59082074811016161
	.quad	0x3fec5cf96a45ab72              # double 0.88634939914969224
	.quad	0x3fe1fae41f7e82ec              # double 0.56187635565956162
	.quad	0x3fee5f7292fa0a36              # double 0.94915131288900656
	.quad	0x3fdc5885e1ac6060              # double 0.44290301359570172
	.quad	0x3fb8f2112a765898              # double 0.097443650118608338
	.quad	0x3fe46807dac65c39              # double 0.63769905786001069
	.quad	0x3fd3c13e2084ca10              # double 0.30866959739356137
	.quad	0x3fe5918a4bbe2467              # double 0.67401613992218479
	.quad	0x3fef21a548d90705              # double 0.97285713413313656
	.quad	0x3fdc6beb88a50916              # double 0.44408691734510464
	.quad	0x3feced6770d861de              # double 0.90397998848044003
	.quad	0x3fba050840f66f40              # double 0.10163928590776283
	.quad	0x3fc6ccca2c0d0498              # double 0.1781246867267654
	.quad	0x3feb2c37d99d3318              # double 0.84914772513147607
	.quad	0x3fe2022c9571b7f6              # double 0.56276539982149987
	.quad	0x3fb6d0c1d82f2330              # double 0.089122882155731941
	.quad	0x3fe920a9e8afd1b6              # double 0.78523726889266388
	.quad	0x3fdf78c47275f97c              # double 0.49174605539146632
	.quad	0x3feda2df77a45679              # double 0.9261319481617668
	.quad	0x3fee838b119a1e8d              # double 0.95355752408882355
	.quad	0x3fefe970e5c2b321              # double 0.99724621653658485
	.quad	0x3fe72c352055cb89              # double 0.72414642634827076
	.quad	0x3fd7b275012d8908              # double 0.37026715388323383
	.quad	0x3fc5b85ce1cb2588              # double 0.16968880677294984
	.quad	0x3fead1d463bb0b29              # double 0.8381139705528301
	.quad	0x3fd089b7a11d464e              # double 0.25840559705566057
	.quad	0x3fdf525cb562acf0              # double 0.48940198625014286
	.quad	0x3f9768d3ef244660              # double 0.022860824080515818
	.quad	0x3fabbcbab320fae0              # double 0.054174265257179277
	.quad	0x3fbf5f1dbd623ef8              # double 0.12254510758998183
	.quad	0x3fd6a0b2d0bc1894              # double 0.35355825790646489
	.quad	0x3fdf6f2419fb9bc8              # double 0.49115850961100849
	.quad	0x3fe6385da124d63b              # double 0.69438058350960519
	.quad	0x3fe42149bcd89cf4              # double 0.6290634811784046
	.quad	0x3fea519398b85140              # double 0.82245807483790401
	.quad	0x3fa5d024b079c000              # double 0.042603632490568089
	.quad	0x3fe3fad2d965b2ed              # double 0.62436811886217713
	.quad	0x3fec9e05e84f620b              # double 0.89428992627205284
	.quad	0x3fb59ced0de663c8              # double 0.084425750630898411
	.quad	0x3fe6bea1aec3270f              # double 0.71077045567764852
	.quad	0x3fea0b390ad4d0a7              # double 0.81386997333040234
	.quad	0x3fb75425e527cb20              # double 0.091127747007516025
	.quad	0x3fc62422a1248a08              # double 0.17297776096627637
	.quad	0x3fc5029c033bbddc              # double 0.16414213331107319
	.quad	0x3fd4133d63d70144              # double 0.31367430448519351
	.quad	0x3fe1a1c5eb36be21              # double 0.55099769535258158
	.quad	0x3fe22b90bf45e586              # double 0.56781804426206928
	.quad	0x3fdfd2419681e4a8              # double 0.49720802019107646
	.quad	0x3faecbb0b71890c0              # double 0.060147783613758943
	.quad	0x3fd68d13d445cff0              # double 0.35236068467861426
	.quad	0x3f9047770ce6cb40              # double 0.015897617495009841
	.quad	0x3fd1227c6cb6a0ba              # double 0.26772986046354286
	.quad	0x3fefb8056a4eb99e              # double 0.99121351969897709
	.quad	0x3faf33fd4d598ea0              # double 0.060943523113363485
	.quad	0x3fdb0717c299ada4              # double 0.42230791095672715
	.quad	0x3fe758b8118c084a              # double 0.72957995822094657
	.quad	0x3fdfb6b4fb36dbd0              # double 0.49552654774327909
	.quad	0x3fe4c3e345d46dff              # double 0.6489120830405567
	.quad	0x3fd8362d34d06fbe              # double 0.37830667646062099
	.quad	0x3fe7ab7a9b74f386              # double 0.73968248713173135
	.quad	0x3fc0bd37543052b0              # double 0.13077441797999745
	.quad	0x3fea9fdb8316ee58              # double 0.83201385119850624
	.quad	0x3fee9f5189f2fdde              # double 0.95694806044769698
	.quad	0x3fde66bfa43f806e              # double 0.4750212768540284
	.quad	0x3fee41d15f5f5741              # double 0.94553440692354951
	.quad	0x3fca6646f82c3f9c              # double 0.20624625318350531
	.quad	0x3fd5795fedc9837c              # double 0.33553312512781708
	.quad	0x3fd7d9f3dd60b67c              # double 0.37267777079509989
	.quad	0x3fbe6108d32e88e8              # double 0.11866812854580966
	.quad	0x3fb518c5a0c146f8              # double 0.082409240481208346
	.quad	0x3fa4f67196e794d0              # double 0.040942716284726566
	.quad	0x3fc54e6fc9633a90              # double 0.16645619710330495
	.quad	0x3fe57b80da1fcf37              # double 0.67132608988183662
	.quad	0x3fe9eba779b2e065              # double 0.81001638192448111
	.quad	0x3feb816269dfe6f6              # double 0.85954399756084743
	.quad	0x3fcc8e07b0f00f74              # double 0.22308441295183068
	.quad	0x3fd126db9a8f60a4              # double 0.26799669355160405
	.quad	0x3fed1627a3752ec9              # double 0.908954447987946
	.quad	0x3fb4aab1b8917390              # double 0.080729587135875968
	.quad	0x3fe55b8d65a335a0              # double 0.66742582179147192
	.quad	0x3fd5e1ff03bbced6              # double 0.34191871037112997
	.quad	0x3fda09916c619706              # double 0.4068339880380879
	.quad	0x3fee5b360511bf7a              # double 0.94863415708640209
	.quad	0x3fb8c6eee7a9b0e0              # double 0.096785480078043217
	.quad	0x3fd2109b10bf7690              # double 0.28226353297746076
	.quad	0x3fe125a2805cc6d3              # double 0.53584408827574703
	.quad	0x3fd30a78c1f06076              # double 0.29751414241173479
	.quad	0x3fdf92c43d62277e              # double 0.4933329200217641
	.quad	0x3fec57e1f6b2c262              # double 0.88572786505944756
	.quad	0x3f9567e93fcc3780              # double 0.020904202002433703
	.quad	0x3fe919101568f905              # double 0.78430942708635654
	.quad	0x3fd4401fd644f32e              # double 0.31641384052982147
	.quad	0x3fe140ad39ca0c54              # double 0.53914510046923647
	.quad	0x3fed8c180c85caa4              # double 0.92335131116700042
	.quad	0x3fc3c44da4d03400              # double 0.15442820117496581
	.quad	0x3fdc2013bd81e11e              # double 0.43945783144546791
	.quad	0x3fd7038f2350a868              # double 0.35959223221528314
	.quad	0x3fd1b3786f1c41e0              # double 0.27657900667784752
	.quad	0x3fcd1d94fa7d720c              # double 0.22746526938398437
	.quad	0x3fa1f217c7488240              # double 0.03505014712959964
	.quad	0x3fd63df9732f7c0c              # double 0.34753261803229019
	.quad	0x3fd1a6334cab1926              # double 0.27576906668800161
	.quad	0x3fe17ce5f6e3b222              # double 0.54649637432664044
	.quad	0x3fab42d143172ce0              # double 0.053244151534806994
	.quad	0x3fda33f1fadb950e              # double 0.40942048547579268
	.quad	0x3fe4bc71f01b1e0e              # double 0.64800354858101783
	.quad	0x3fd218baba06b712              # double 0.28275936285614123
	.quad	0x3fd9d2e051e4e64e              # double 0.40349586484407929
	.quad	0x3fd1e332a9db15cc              # double 0.2794920595882473
	.quad	0x3fe4e44e7717f2b4              # double 0.65286944637735767
	.quad	0x3fb9bdaf40877da8              # double 0.10055060697003759
	.quad	0x3fbc074657737c18              # double 0.10948600420987054
	.quad	0x3fe21580cb30ec5a              # double 0.56512489019167877
	.quad	0x3fea901158329dae              # double 0.83008639551274199
	.quad	0x3feb93bb42db5a93              # double 0.86178362901667283
	.quad	0x3fea37dcc06b5284              # double 0.81931912977104603
	.quad	0x3fd366df9e234464              # double 0.30315390055790759
	.quad	0x3fc55529e9eb7f1c              # double 0.1666614906489422
	.quad	0x3fc7b6e5d2c68544              # double 0.18526909629603427
	.quad	0x3fec5914085239bd              # double 0.8858738100550948
	.quad	0x3fd9afa139af224a              # double 0.40134459145750567
	.quad	0x3fec7d7211b1af03              # double 0.89031318145632132
	.quad	0x3fc20d5b2492e62c              # double 0.14103259359198839
	.quad	0x3fc2b3093b212758              # double 0.14608874690230311
	.quad	0x3fe409695e9c727b              # double 0.62614887694105847
	.quad	0x3fdf0ec71c5878de              # double 0.48527696388363306
	.quad	0x3fe6e2c40f5d2e59              # double 0.71518137932566639
	.quad	0x3fc4bfd2defad17c              # double 0.16210399520572227
	.quad	0x3fb33cb9b4e6a278              # double 0.075145346322310291
	.quad	0x3fd5405b817f72aa              # double 0.33205306669496315
	.quad	0x3fbbbad066e40828              # double 0.1083193064878577
	.quad	0x3fd6008a789e3ed0              # double 0.34378301409831824
	.quad	0x3feb482fc4e8682c              # double 0.8525618406158677
	.quad	0x3fc37f8e86e26384              # double 0.15233022295140242
	.quad	0x3fe608ea62fe5ed6              # double 0.68858832678503279
	.quad	0x3fe9e7bebe913eda              # double 0.80953919620693715
	.quad	0x3fb5801c802b1b58              # double 0.083986073771581515
	.quad	0x3fd0643f65f38ca6              # double 0.25611863094509102
	.quad	0x3fb3c46fe1f7f8e8              # double 0.077216141384244374
	.quad	0x3fc7cc603cf2ed30              # double 0.18592455841085487
	.quad	0x3fea65e03c3588fb              # double 0.82493602523416543
	.quad	0x3fde1166f6c7a06e              # double 0.46981214618290934
	.quad	0x3fe44330de490610              # double 0.63320201315963409
	.quad	0x3fab650849f33d40              # double 0.053505190875166253
	.quad	0x3fe6503b29cc0a42              # double 0.697293836245372
	.quad	0x3fe91a8d6bfee91a              # double 0.78449126332205599
	.quad	0x3fc41559dc1121c4              # double 0.15690158124404097
	.quad	0x3fe1179c81ce6c6a              # double 0.53413224556733252
	.quad	0x3fe4712c688d4cd0              # double 0.63881512089064962
	.quad	0x3fdba25ebda46ee6              # double 0.43178528327710664
	.quad	0x3fdb535cb56e3602              # double 0.42696302144835852
	.quad	0x3f91a820e02472c0              # double 0.017242921524586619
	.quad	0x3fecb7cab7347cb0              # double 0.89743552953941297
	.quad	0x3fe05713cf84ddc5              # double 0.51062956362778122
	.quad	0x3feb7c761e451b40              # double 0.85894304191683801
	.quad	0x3feaf7dc42cdce8c              # double 0.84275639579432626
	.quad	0x3fc246bd549a28d0              # double 0.14278380042043759
	.quad	0x3fe776df2ac9cc1b              # double 0.73326071126064407
	.quad	0x3fd101bca8bf2a6c              # double 0.26573101500677043
	.quad	0x3fd59666d4547072              # double 0.33730478988014234
	.quad	0x3fe86bd61ffe3a09              # double 0.76316362618109779
	.quad	0x3fe1a260f451c85a              # double 0.55107162207265081
	.quad	0x3fedfa7fd846d252              # double 0.93682853929073873
	.quad	0x3fca49379ae11b4c              # double 0.20535941183535511
	.quad	0x3fe28dee5a73e5f9              # double 0.57982556978748712
	.quad	0x3fec018ff3100230              # double 0.8751907107653718
	.quad	0x3fe8e29dc97fb692              # double 0.77766312937974846
	.quad	0x3fe0ec44dd8feb78              # double 0.52884143136849016
	.quad	0x3fe85d3a3a5df70f              # double 0.76138030433478032
	.quad	0x3fe2d601d8bd9bbd              # double 0.58862392742309277
	.quad	0x3fef9e6d9f2b1333              # double 0.98808938109923472
	.quad	0x3fe48d8963e7bc9e              # double 0.64227742684115063
	.quad	0x3fdf34f30e6b19a2              # double 0.48760677726786572
	.quad	0x3fe051fb856ba794              # double 0.51000762995430415
	.quad	0x3fc4751cbfa5e268              # double 0.15982398374378026
	.quad	0x3fe737f3347a199b              # double 0.7255798363628857
	.quad	0x3fe414913a9d3fdd              # double 0.62751065681549856
	.quad	0x3fec990acd93534a              # double 0.89368190909827061
	.quad	0x3fe8442d06b6958b              # double 0.75832225142646459
	.quad	0x3fe9fd3f2e01e785              # double 0.8121639154989998
	.quad	0x3faeea9b7310ae90              # double 0.060383661075630646
	.quad	0x3feeb4776a2d2415              # double 0.95952959764065559
	.quad	0x3fd8ff5679a4fab4              # double 0.39058458213177549
	.quad	0x3fd493811227ad2e              # double 0.32150294087360265
	.quad	0x3fedbd2e6071fbd1              # double 0.92934340321505193
	.quad	0x3fe6ec230e1a1107              # double 0.71632530931722804
	.quad	0x3fe9e2a4c9d46ed7              # double 0.80891646785627358
	.quad	0x3fcd9e543a242a50              # double 0.2313943179982112
	.quad	0x3fe68816360abc43              # double 0.70411215357842882
	.quad	0x3fe50d5c58839fa1              # double 0.65788094795151519
	.quad	0x3fbfc171fb7a4dc8              # double 0.12404549016564836
	.quad	0x3fdb322880b85814              # double 0.42493641443559338
	.quad	0x3fdbd3d740aadc8c              # double 0.43480473818949217
	.quad	0x3fe491ba4ba5737c              # double 0.64278902792612724
	.quad	0x3fda16ac2774b198              # double 0.40763381817921518
	.quad	0x3fde32d642a82ff8              # double 0.47185284146757978
	.quad	0x3fa4c4e9cf85f0b0              # double 0.040564829428121896
	.quad	0x3fedf825bab953a9              # double 0.9365414282752812
	.quad	0x3fd93af3b8e6513a              # double 0.39422314697846483
	.quad	0x3fe8db30af7ab872              # double 0.77675661347690395
	.quad	0x3fd5222ab9e24604              # double 0.33021038201067676
	.quad	0x3fdc88283729634a              # double 0.44581036936647378
	.quad	0x3fe54d414a395976              # double 0.66568054673079646
	.quad	0x3fe50edb6e3c4a98              # double 0.65806361704229044
	.quad	0x3fdb1a6a0b7c44a8              # double 0.42348719712851812
	.quad	0x3fdedeb6ba0a7d3e              # double 0.48234337013305495
	.quad	0x3feca7fac1fd3c43              # double 0.8955053128100946
	.quad	0x3fd774192f0895bc              # double 0.36646108239287023
	.quad	0x3fe2930fe428b7c5              # double 0.58045191347422842
	.quad	0x3fe638ed27631614              # double 0.69444902127060226
	.quad	0x3fedfe1af216ed6f              # double 0.93726870806805873
	.quad	0x3fde4b80be10e7d0              # double 0.47335833130966609
	.quad	0x3feaba3e045bf25d              # double 0.83523465014838971
	.quad	0x3f91408eacd6b360              # double 0.016847829150424487
	.quad	0x3feededf4650fd1a              # double 0.96470607503570993
	.quad	0x3fd7a002e29f6e20              # double 0.36914131289606367
	.quad	0x3fa38aebdb393d90              # double 0.038169260512059044
	.quad	0x3fd684fa65346208              # double 0.35186633952392343
	.quad	0x3feb2b997fdfb2c3              # double 0.84907221770625829
	.quad	0x3fd9e93c3b900ee8              # double 0.40486055199310877
	.quad	0x3fea028550e36c67              # double 0.81280771063337631
	.quad	0x3fdb1eb200136206              # double 0.42374849326509467
	.quad	0x3fd839b281d4b036              # double 0.37852156332769782
	.quad	0x3fd5e01f8972ddf0              # double 0.34180439398502838
	.quad	0x3fdd676d8bbaad58              # double 0.45943773885183736
	.quad	0x3fd83735d26b5fa2              # double 0.37836976574680581
	.quad	0x3faf8283757169c0              # double 0.061542614065462242
	.quad	0x3f5dcdacba1daa00              # double 0.001819056204534264
	.quad	0x3fe90748f06a12a2              # double 0.78213927226950752
	.quad	0x3fe5e68d49cbe754              # double 0.68439354337099667
	.quad	0x3fe753dd0d7f9bae              # double 0.72898724209232113
	.quad	0x3fd38d4eabd1d150              # double 0.30549971369989226
	.quad	0x3fc2a48c45ca6a18              # double 0.14564660461185563
	.quad	0x3fea61c99c41c582              # double 0.82443695563249286
	.quad	0x3fe8ab03bb4956a8              # double 0.77087580279722534
	.quad	0x3fe1a9492a99c49b              # double 0.55191477127495447
	.quad	0x3fdbcd8bf8b9aea2              # double 0.43442057885725138
	.quad	0x3fe0c8a82f127ca5              # double 0.52449425882140999
	.quad	0x3fedde93340f5587              # double 0.93341980140637382
	.quad	0x3fdcc80d687f84d8              # double 0.44971022801298721
	.quad	0x3fe3b611013e92ad              # double 0.61597490542461275
	.quad	0x3fdac2a4b54517e0              # double 0.41813008978021848
	.quad	0x3f92b927e90e7580              # double 0.01828443870509977
	.quad	0x3fe8c3b0633ca3fd              # double 0.77388781912043181
	.quad	0x3fd22939af7ef844              # double 0.28376619470862274
	.quad	0x3fc353e713035b1c              # double 0.15099800518393003
	.quad	0x3fee6d3217506f0c              # double 0.95082954934648133
	.quad	0x3fe9b0ce43d76c10              # double 0.80283272981921705
	.quad	0x3fb2165860b7a2d0              # double 0.070653461086872982
	.quad	0x3fa921de05c90eb0              # double 0.049086511808608235
	.quad	0x3fdf7cb50ac3f6b2              # double 0.49198652316395475
	.quad	0x3fe39769a170c586              # double 0.61223298579550156
	.quad	0x3fd94d32e3b0517c              # double 0.39533684001187175
	.quad	0x3fe18a93bbca71d5              # double 0.5481661479748775
	.quad	0x3fdbc055fa7d5248              # double 0.43361424886578392
	.quad	0x3fede66b788687a2              # double 0.93437741794717888
	.quad	0x3fcf67f7d4937094              # double 0.24536035422977831
	.quad	0x3f9398b093c7c9e0              # double 0.019137152690697934
	.quad	0x3f7b5918ead29b80              # double 0.0066767667132471287
	.quad	0x3fa1abbd273866e0              # double 0.03451338866962117
	.quad	0x3fe2173dc0a536ed              # double 0.56533706308411313
	.quad	0x3fef4f551832ac37              # double 0.97843413091812336
	.quad	0x3f707ddb8aaf2b80              # double 0.0040262771462477032
	.quad	0x3fe8e369c031178f              # double 0.77776038682417148
	.quad	0x3fb0cdc5e3255870              # double 0.065639846759354858
	.quad	0x3fd70d494dbb9336              # double 0.36018593398175669
	.quad	0x3fb4d5ae82215e08              # double 0.081385523576834484
	.quad	0x3fa783e12dcae830              # double 0.045928036537091876
	.quad	0x3f9cbad950670200              # double 0.028056521923419453
	.quad	0x3fd9371af37c58a0              # double 0.39398835924056108
	.quad	0x3fdf3117a14bc296              # double 0.48737135650211749
	.quad	0x3fdf4277de6b0a1a              # double 0.48843189926643193
	.quad	0x3fd125844b51a8f4              # double 0.26791484217996175
	.quad	0x3fdf1de2308491a8              # double 0.48619894731589364
	.quad	0x3fec1b8c703fd850              # double 0.87836286472043845
	.quad	0x3fb6195e4bb33140              # double 0.086324590188444184
	.quad	0x3fe36d5f8fb5a595              # double 0.60710123127244009
	.quad	0x3fcd5c2aa4d4008c              # double 0.22937520073174189
	.quad	0x3fe8af04a274e25c              # double 0.77136451463509159
	.quad	0x3fd99056ef1a71e2              # double 0.39943478918010389
	.quad	0x3fe9d9b5db1764b1              # double 0.80782597342763129
	.quad	0x3fd92d20fe908f20              # double 0.39337944850761808
	.quad	0x3fc1f833f3cc2830              # double 0.14038705257581929
	.quad	0x3fed242be008d002              # double 0.91066545254443576
	.quad	0x3fdab4224c7cbcfa              # double 0.41724450559100001
	.quad	0x3fe8aef0ba8370a5              # double 0.7713550227013185
	.quad	0x3fd16eaa84da6e24              # double 0.27237952207517169
	.quad	0x3fd07d69a30cae20              # double 0.25765458033376554
	.quad	0x3fef6262e658e089              # double 0.98076004972155417
	.quad	0x3fc6bfe70f2b49d8              # double 0.17773140183142178
	.quad	0x3fe0f129b298320b              # double 0.52943882829419076
	.quad	0x3fd62d71f32f3050              # double 0.34652374981374567
	.quad	0x3fd1274243a6cd80              # double 0.26802116972540801
	.quad	0x3fc4415bf5bdaf80              # double 0.15824460505552551
	.quad	0x3fee4c455d036f79              # double 0.94681041876491101
	.quad	0x3fe5d39dec8699ab              # double 0.68208213993493894
	.quad	0x3fe91d32705b0e37              # double 0.78481409019918302
	.quad	0x3fe983bc01dc3082              # double 0.79733085978797669
	.quad	0x3fdeb875b657e174              # double 0.4800085335441715
	.quad	0x3fc6fe6783572c78              # double 0.17963880456077042
	.quad	0x3fef84c1a2424d64              # double 0.98495561305246015
	.quad	0x3fe1dd638a076ffc              # double 0.55827500304030719
	.quad	0x3fc88cf667accc18              # double 0.19180183470015844
	.quad	0x3fed9a19fa55c69b              # double 0.92506121533934349
	.quad	0x3feead711255c3c0              # double 0.95867208081300958
	.quad	0x3fdcf74abcdbe424              # double 0.45259350245720698
	.quad	0x3fef1fa18e6a68ef              # double 0.97261121573981579
	.quad	0x3f95188fe9acd0a0              # double 0.020601509702104281
	.quad	0x3fe47215ff83405f              # double 0.6389265051348153
	.quad	0x3fec45d806708900              # double 0.8835258603833438
	.quad	0x3fe1efc6a2ad5022              # double 0.56051952145435657
	.quad	0x3fd800d4f7008b78              # double 0.37505077477742743
	.quad	0x3fcfb35d4f2a66d8              # double 0.24766126981267322
	.quad	0x3fd439ee11b09b56              # double 0.31603576400305167
	.quad	0x3fda79601af5807a              # double 0.41365816719736126
	.quad	0x3fe215c503432dfe              # double 0.5651574195593978
	.quad	0x3fd3af3f229269fc              # double 0.30757120491185197
	.quad	0x3fbc5517d7d13338              # double 0.11067341822599708
	.quad	0x3fd245f38af1f4ba              # double 0.28551949089871764
	.quad	0x3f94235bcd7e2320              # double 0.019666132371216283
	.quad	0x3fcdb8f9f1f20480              # double 0.2322075301526958
	.quad	0x3fe344ecef1dccb8              # double 0.60216376020834783
	.quad	0x3fa6ddd3b92df2e0              # double 0.044661156039159655
	.quad	0x3fe73eca06752da5              # double 0.72641469250941226
	.quad	0x3fbbec0ded0bc640              # double 0.10907065427070339
	.quad	0x3fe9d519d07e81ac              # double 0.80726328584210227
	.quad	0x3fc26e356fcdbb64              # double 0.1439883037487234
	.quad	0x3fec1e8f31a0f80f              # double 0.87873038952943883
	.quad	0x3fe3297f439a4aac              # double 0.59881556705143657
	.quad	0x3f928e7adb691300              # double 0.018121642724753251
	.quad	0x3fea00c17dd68997              # double 0.81259226396314232
	.quad	0x3f9c62266dfefda0              # double 0.027718162978769834
	.quad	0x3fdb12052633635e              # double 0.42297486048260236
	.quad	0x3fc4eb124f7f35b8              # double 0.16342381364522196
	.quad	0x3fb4934e9fa78420              # double 0.080372728326907339
	.quad	0x3fb611f633a436c8              # double 0.086211574180391826
	.quad	0x3fdf4dc5dceffffa              # double 0.489121881255414
	.quad	0x3fe9b7f4cc2e32a8              # double 0.80370559576984579
	.quad	0x3fba4a0781d836d0              # double 0.10269209785493705
	.quad	0x3fe5fd67a8ddda60              # double 0.68718321782837322
	.quad	0x3fcaa729f921f828              # double 0.20822643913919703
	.quad	0x3fdb5bbe0857eb2e              # double 0.42747450651920615
	.quad	0x3fe808f7b1de41ec              # double 0.75109467258340378
	.quad	0x3fe80c515b235bb4              # double 0.7515036373177879
	.quad	0x3fd42a7ee86e7522              # double 0.31509373377214633
	.quad	0x3fe8e04d8a38e568              # double 0.77738072392018598
	.quad	0x3fc741fae2284b44              # double 0.181701050213258
	.quad	0x3feb7380c52e23fe              # double 0.85784948837056141
	.quad	0x3fef41c8607792aa              # double 0.97678011742808235
	.quad	0x3f9d8a61f849a2e0              # double 0.0288482005875349
	.quad	0x3fc661f2dfc2d1f8              # double 0.17486415792303922
	.quad	0x3fd419d7fc077b48              # double 0.31407737362126342
	.quad	0x3fd24b9c32d08fb4              # double 0.28586487734196031
	.quad	0x3fd97cbf4c1c1dec              # double 0.39823896820641269
	.quad	0x3fc1191d3e128294              # double 0.13357892542719141
	.quad	0x3fe7a1b4285e0177              # double 0.73848922619076418
	.quad	0x3fdc4c7d45ec727c              # double 0.44216853931883526
	.quad	0x3f9925d357abf100              # double 0.024558355547001476
	.quad	0x3fef29da58128bec              # double 0.97385899736070546
	.quad	0x3fc907d6ec084344              # double 0.19555174374593254
	.quad	0x3fee54da98c9d386              # double 0.9478581413410303
	.quad	0x3fd8eb79f2cacc8a              # double 0.38937233648466274
	.quad	0x3fd113fca8d25774              # double 0.26684490667809446
	.quad	0x3fe36647814c2ff3              # double 0.60623526814879225
	.quad	0x3fea3ece064e5cc2              # double 0.82016659957562177
	.quad	0x3fd77c3eaa393f20              # double 0.36695829986000383
	.quad	0x3feb7e188d78355d              # double 0.85914256697439451
	.quad	0x3fcaa24431e973c0              # double 0.20807697712998952
	.quad	0x3fef540905064693              # double 0.97900820714331115
	.quad	0x3fe2938e99dda909              # double 0.58051233341146358
	.quad	0x3fe8b16c589a6262              # double 0.77165810876165275
	.quad	0x3feff8e54e1a96f8              # double 0.99913277868901584
	.quad	0x3fe413b23ace48f3              # double 0.62740432248599942
	.quad	0x3fbcd9359c7764f0              # double 0.11268935270290448
	.quad	0x3fd6ed4da8313ffe              # double 0.3582338469032037
	.quad	0x3fda64fe8bc72c2a              # double 0.41241420412251506
	.quad	0x3fb5b03635f4fa98              # double 0.08472002808864898
	.quad	0x3febe232d4ac15b8              # double 0.87136212861576379
	.quad	0x3fb14041a3f3c438              # double 0.067386724975009638
	.quad	0x3fd4d8b537275200              # double 0.32572679887860545
	.quad	0x3fe1466fe8284631              # double 0.53984828322626843
	.quad	0x3fee74f67da15f50              # double 0.95177769219569974
	.quad	0x3fe5970d91e192eb              # double 0.6746890877953694
	.quad	0x3fa50e3c2d085ce0              # double 0.041124229905273202
	.quad	0x3fe466f149c0baa4              # double 0.63756622700551135
	.quad	0x3fe95e74e0b44e25              # double 0.79278034102975836
	.quad	0x3fe8373b950fd72e              # double 0.75674227822921636
	.quad	0x3feb40ef133e655e              # double 0.85167649992505878
	.quad	0x3fc73c1248501b18              # double 0.18152073412803627
	.quad	0x3fe8b120793aea58              # double 0.77162192991029155
	.quad	0x3fe6d7d9ad6aec20              # double 0.71384891386640348
	.quad	0x3fe91529bc24c26f              # double 0.78383337733073499
	.quad	0x3fd0384b8871d7b6              # double 0.25343597721745981
	.quad	0x3fdc8374425925e4              # double 0.44552332381553428
	.quad	0x3fb039b330f16570              # double 0.063380431603396792
	.quad	0x3fedc3f9e5081d50              # double 0.93017286999467252
	.quad	0x3fe19fb78fbeeb42              # double 0.55074670863482589
	.quad	0x3fe4d996365ee52f              # double 0.65156088465952233
	.quad	0x3fce48f5802986b0              # double 0.23660153158112029
	.quad	0x3fed1e6d83929ea5              # double 0.90996432969855745
	.quad	0x3fa9241bb4aa3390              # double 0.04910360889798604
	.quad	0x3fe344bbca489dd2              # double 0.6021403265812586
	.quad	0x3fe2734ab1e3f63a              # double 0.576573703234039
	.quad	0x3fe0512150113d30              # double 0.50990358007576297
	.quad	0x3fed1fefb333cb0b              # double 0.91014847755863693
	.quad	0x3f9698cd7ecdcb60              # double 0.022067271103377251
	.quad	0x3fdb63509ee5fdb2              # double 0.42793670194074729
	.quad	0x3fde3ee28d34f25c              # double 0.47258819379547901
	.quad	0x3fcd99fdd7f5cf74              # double 0.23126194996768457
	.quad	0x3fac0cff0d1d19c0              # double 0.05478665385321646
	.quad	0x3fca5326f20460a8              # double 0.2056626016353722
	.quad	0x3feec1c7d3775229              # double 0.96115485479328299
	.quad	0x3fcac0e6a3230768              # double 0.20901186910310376
	.quad	0x3fbb7621e7baa378              # double 0.10727130801627804
	.quad	0x3fe81f86e95a586a              # double 0.75384851052036805
	.quad	0x3fd2ba2e2e2b3cf2              # double 0.29261354931527628
	.quad	0x3fb7421420875df0              # double 0.090852029744716622
	.quad	0x3fefc515ace508be              # double 0.99280818718423069
	.quad	0x3fd25e5db5fbe906              # double 0.28700964710118659
	.quad	0x3fc97610ae75017c              # double 0.19891556280527911
	.quad	0x3fdc25c9a584d772              # double 0.43980637706714909
	.quad	0x3fb10f3fef77fa90              # double 0.066638942684202229
	.quad	0x3fcb1570d53b118c              # double 0.21159181987435394
	.quad	0x3fe5104ffaf29b13              # double 0.65824126256197457
	.quad	0x3fe9e56676135ee4              # double 0.80925295888570447
	.quad	0x3fdb383414ac47f6              # double 0.42530538576931975
	.quad	0x3fedfd314b69286d              # double 0.93715729454676266
	.quad	0x3fd5c953779f7bac              # double 0.34041296655589792
	.quad	0x3fd4e3c6e205b5ea              # double 0.32640239784708902
	.quad	0x3fe8ccb096a7a3b6              # double 0.774986547706354
	.quad	0x3fd5aa2e2b21f2c6              # double 0.3385119839875127
	.quad	0x3fe469b35dbde421              # double 0.63790291127145704
	.quad	0x3fe01115c68848da              # double 0.50208557868816261
	.quad	0x3fdb744d839841d4              # double 0.42897355891275635
	.quad	0x3fee6868f6fc4cba              # double 0.95024536361088185
	.quad	0x3fed1f8ca122b9d7              # double 0.91010123702818191
	.quad	0x3fec33652a4f81c8              # double 0.88127382530006404
	.quad	0x3fe9d20eb9c261f1              # double 0.80689178734888689
	.quad	0x3fd5a95e35fceaea              # double 0.33846240303289099
	.quad	0x3fec0d3cf031d108              # double 0.87661597168929095
	.quad	0x3fe3da9cd50ac5a5              # double 0.62043611154347345
	.quad	0x3fc73b182114eb38              # double 0.18149091353719782
	.quad	0x3fd1b8df36eace74              # double 0.27690868723877959
	.quad	0x3feb2587fb5e5d5c              # double 0.84833144278938332
	.quad	0x3febe8e1a84f58bf              # double 0.87217791436230374
	.quad	0x3fd8725a54cfe69a              # double 0.38197954447205407
	.quad	0x3fd4c62fb535d8ee              # double 0.32459633537599941
	.quad	0x3fef13056c6baf27              # double 0.97107192207247272
	.quad	0x3fda32da396a8038              # double 0.40935378653557875
	.quad	0x3fe6474720892200              # double 0.69620090822814973
	.quad	0x3fc11965479318e0              # double 0.13358751292088922
	.quad	0x3feac9019d9378ee              # double 0.83703690315794943
	.quad	0x3feb8ba5360c49d4              # double 0.86079655224085138
	.quad	0x3fe0dda00a67cd9a              # double 0.52705385238953117
	.quad	0x3fe28ccf5bfe50f8              # double 0.57968872039285113
	.quad	0x3fc845fabc6d1ea0              # double 0.18963560295582216
	.quad	0x3f9a88403a4c9120              # double 0.025910380895895035
	.quad	0x3fef81eb1a128039              # double 0.98460917560806315
	.quad	0x3fd7d7dfaaa3413c              # double 0.37255088485564491
	.quad	0x3fe01ee7749f9b2d              # double 0.50377247598666985
	.quad	0x3fa2198357b031f0              # double 0.035350899175771278
	.quad	0x3feeba6eb03865ee              # double 0.96025785844829925
	.quad	0x3feb066b4fc657a7              # double 0.84453359204302536
	.quad	0x3fe4f74bfd8dc012              # double 0.65518760225495698
	.quad	0x3fc938e92c468140              # double 0.19704928075680961
	.quad	0x3fefa729e532918d              # double 0.98915571942466018
	.quad	0x3fe26a70e193d33d              # double 0.57549327905744685
	.quad	0x3fc87e0121c44cc4              # double 0.19134534977692941
	.quad	0x3fe2b93e70141ab1              # double 0.58511278047884308
	.quad	0x3feb07ddc4f7af78              # double 0.84471024008006079
	.quad	0x3fd16b0f42df2a24              # double 0.27215940027659458
	.quad	0x3fe0aca66f2566da              # double 0.52107545574400693
	.quad	0x3fcd1c1bed8e1e8c              # double 0.22742032145855651
	.quad	0x3fede00a6c7db655              # double 0.93359872045193504
	.quad	0x3fec94f1a19cc749              # double 0.89318162503170939
	.quad	0x3fe33c1df0207b3b              # double 0.60108849429875677
	.quad	0x3fcfb609ef6c3b14              # double 0.24774288359227425
	.quad	0x3fe43660d6b6f241              # double 0.63163797317935899
	.quad	0x3fc96fa286e9c980              # double 0.198719325900651
	.quad	0x3fe5cbd126918e9b              # double 0.68113000424314707
	.quad	0x3fd8955de53c01a8              # double 0.3841166247002783
	.quad	0x3feafc0b1706f9aa              # double 0.84326700685033029
	.quad	0x3fe349418637898d              # double 0.6026923772263203
	.quad	0x3febfe290e9f141a              # double 0.874775436932967
	.quad	0x3fe9875619d03b4b              # double 0.79777054826431859
	.quad	0x3fdbd6fb61c59174              # double 0.43499645755789307
	.quad	0x3fe497b9a128017e              # double 0.64352113223871732
	.quad	0x3feb85888ee6981c              # double 0.86005046758942027
	.quad	0x3fe7729971f69264              # double 0.73273918398315319
	.quad	0x3fcf6cdefce04708              # double 0.24550998065438301
	.quad	0x3fe3c2e29fa7c9ec              # double 0.61753970320415652
	.quad	0x3fdf26c6ccef0ee4              # double 0.48674173367565587
	.quad	0x3fde36b4495ad80a              # double 0.47208888209877442
	.quad	0x3fe6168bce6632eb              # double 0.69025221168848583
	.quad	0x3fe6b70c5c55f6de              # double 0.70984476122222495
	.quad	0x3fee76fc16a76097              # double 0.95202450203489064
	.quad	0x3fe5afae48f82f97              # double 0.67769541026926816
	.quad	0x3fe31795a5206a3c              # double 0.59662897349637189
	.quad	0x3fc4df5b00960c9c              # double 0.16306626824016213
	.quad	0x3fe4ce4ab788618d              # double 0.65018211218107214
	.quad	0x3fd0da90c88541f0              # double 0.26334018308719376
	.quad	0x3fb802aab20becb8              # double 0.093790691822436822
	.quad	0x3f9b6531bb846720              # double 0.026753212995664133
	.quad	0x3fc4792cd98bc508              # double 0.1599479734646041
	.quad	0x3fd621bcbb5c472a              # double 0.3458091573421479
	.quad	0x3fe3b6570406067b              # double 0.6160082892021842
	.quad	0x3fd5924f2ca97eb4              # double 0.33705500947506128
	.quad	0x3fdca21cea860d0e              # double 0.44739458944987198
	.quad	0x3fd6791d9a6f722c              # double 0.35114231187415856
	.quad	0x3fc5102de3f83fa4              # double 0.16455625182470357
	.quad	0x3fd3f2493a0d8b18              # double 0.31166296643475411
	.quad	0x3fea0e05786c30f2              # double 0.81421159286540346
	.quad	0x3fda68d4d168f634              # double 0.41264839601703618
	.quad	0x3fe79dec7897674d              # double 0.73802779725085943
	.quad	0x3fecfbc03240e4a4              # double 0.9057312947762921
	.quad	0x3feabcb0cf904036              # double 0.83553352870695252
	.quad	0x3fe245594fe7456e              # double 0.57096543890126639
	.quad	0x3faa79f235930070              # double 0.051711625137159767
	.quad	0x3f8e9995e4e5b3c0              # double 0.014941378639116709
	.quad	0x3feeb014662d021e              # double 0.95899410206044755
	.quad	0x3fe8eedd90266112              # double 0.77915838388710967
	.quad	0x3fdd3072f7b392be              # double 0.45608209790797705
	.quad	0x3fd33825df393334              # double 0.30030199813045333
	.quad	0x3fea6e0371d8bf38              # double 0.82592937694241808
	.quad	0x3fe4448beae46840              # double 0.63336749913583645
	.quad	0x3fefeec7cb06f01c              # double 0.99789800313692778
	.quad	0x3fe5c32b87cc84e2              # double 0.68007446788046999
	.quad	0x3fdd3a0819dbf696              # double 0.45666697049441873
	.quad	0x3f9f7c8511466460              # double 0.030748442820911825
	.quad	0x3fb94fb1b7461fa8              # double 0.098872287029847628
	.quad	0x3fd3a9bccc78fa82              # double 0.3072349545290437
	.quad	0x3fe48ad48cc1110b              # double 0.64194705477760416
	.quad	0x3fe15c1ada62cfca              # double 0.54249327329170538
	.quad	0x3fd56835e8380bfc              # double 0.33448550870542682
	.quad	0x3fe3992421908a4b              # double 0.61244398646915366
	.quad	0x3fdeb366ef64dbba              # double 0.47969983461683408
	.quad	0x3fea710451d379dd              # double 0.82629600507408052
	.quad	0x3fc87d3acc686a50              # double 0.19132170658925185
	.quad	0x3fee002a2b66a2ff              # double 0.93752010800116625
	.quad	0x3fd80db5b0ee59ca              # double 0.37583677557395545
	.quad	0x3fc05cd5da58711c              # double 0.12783311044120971
	.quad	0x3fcdc4f5978d3934              # double 0.23257322216017828
	.quad	0x3fc65f64ecb6c7a0              # double 0.17478620107936838
	.quad	0x3fa02bbe843fa850              # double 0.031583741801867959
	.quad	0x3fe2940648af1d66              # double 0.5805694026575281
	.quad	0x3fdfc924e1487492              # double 0.49665185928626798
	.quad	0x3fe6d7811478a7a9              # double 0.71380666731169129
	.quad	0x3fbb7affa1c38dc8              # double 0.10734555911363153
	.quad	0x3fd5a66f160ba8b0              # double 0.33828332093129188
	.quad	0x3fc01b6b0b25abdc              # double 0.12583673519415484
	.quad	0x3fefe9770c4878a8              # double 0.99724914931336616
	.quad	0x3fe74c435ce52927              # double 0.72805946487031725
	.quad	0x3feff35994597efd              # double 0.99845580076723161
	.quad	0x3fe6a25e4b41b393              # double 0.70732035349429834
	.quad	0x3fe6e7d55b41e35b              # double 0.71579997848230492
	.quad	0x3feebb39bd499bd9              # double 0.96035468073102514
	.quad	0x3fe3444753ba9a40              # double 0.60208479264549197
	.quad	0x3fe7f25cdd2c485f              # double 0.74833529661033171
	.quad	0x3fe4acde8ae2689e              # double 0.64610221029149151
	.quad	0x3fdad777ff63fb9e              # double 0.41940116825565521
	.quad	0x3feba09b2393cdcc              # double 0.86335522602751657
	.quad	0x3fe0f58d9e051a4e              # double 0.52997475493686763
	.quad	0x3fe1586e528ba295              # double 0.54204479334028355
	.quad	0x3feffdde0a85dd9b              # double 0.99973966651207335
	.quad	0x3fe607eb8ab2bea3              # double 0.688466807265247
	.quad	0x3fae73095ff6a280              # double 0.059471409763607319
	.quad	0x3fb3a2b9c55533d8              # double 0.076701746632536483
	.quad	0x3fe14e715eed9d57              # double 0.5408255437913948
	.quad	0x3f957c775b58b9e0              # double 0.020982613516190685
	.quad	0x3fead58169e5f26d              # double 0.83856268580673332
	.quad	0x3fd970d6b0afeba4              # double 0.39751212362869581
	.quad	0x3fcd0a05a4221b48              # double 0.22686834825818836
	.quad	0x3f9cc1fc4d7ed9a0              # double 0.028083746175718738
	.quad	0x3fcd20bde2609588              # double 0.2275616984708615
	.quad	0x3feefec35a2cdd51              # double 0.96859901058534536
	.quad	0x3fecf68e924b7ca0              # double 0.9050972802468955
	.quad	0x3fe5eb478be5a8a7              # double 0.68497063945439585
	.quad	0x3fbe577a65d37718              # double 0.11852231012332159
	.quad	0x3fdb27ad6e3bf3ae              # double 0.42429672017152142
	.quad	0x3fdcf0b0f88c3264              # double 0.45219063064795351
	.quad	0x3fedaa1e555bf878              # double 0.92701641723375783
	.quad	0x3fe24f62127a3ef6              # double 0.57219031914607288
	.quad	0x3fe079b48d303758              # double 0.51485660148476153
	.quad	0x3fc6c8d979ae5fac              # double 0.17800444070303223
	.quad	0x3fe57f5ef2b431c8              # double 0.67179820445158445
	.quad	0x3fe20ae1bbf1958b              # double 0.56382834155799466
	.quad	0x3fe9cd2de2d395a7              # double 0.8062962942319033
	.quad	0x3fc02a6ce864a000              # double 0.12629472110097595
	.quad	0x3feafb6abb4c5567              # double 0.8431905420463125
	.quad	0x3fe9bbb676ed1bf2              # double 0.80416415431761679
	.quad	0x3fe8f62030476e8d              # double 0.7800446455907647
	.quad	0x3fec4c8b88b35f42              # double 0.88434387873983433
	.quad	0x3fe7cf4d53154ba8              # double 0.74405542590317442
	.quad	0x3fe1e748b473ec6c              # double 0.55948291058247213
	.quad	0x3fd5732caea12dfa              # double 0.33515469602272641
	.quad	0x3fe895ad58dbf3e9              # double 0.76827113490400933
	.quad	0x3feabf5153cf6ae4              # double 0.83585420960602307
	.quad	0x3fdddd2df050cd00              # double 0.46662472217867901
	.quad	0x3fdfe14715939e48              # double 0.49812485797017247
	.quad	0x3feaebd8e65d1376              # double 0.84128994934927337
	.quad	0x3fe747a6266bf4ce              # double 0.72749621872176262
	.quad	0x3fe51aa25857467d              # double 0.65950124029241375
	.quad	0x3fa1bb58511779d0              # double 0.034632453822030507
	.quad	0x3fcd72e22fe03a80              # double 0.23006846749963827
	.quad	0x3fdbad31172e3f34              # double 0.43244578613029039
	.quad	0x3fbc1c63f457a408              # double 0.10980820384396861
	.quad	0x3fe8d8b892a388a9              # double 0.77645519867316637
	.quad	0x3fd1b9ed0a30d89a              # double 0.27697301860042389
	.quad	0x3fe85eeafc683a19              # double 0.76158665941494796
	.quad	0x3feee80a1597c523              # double 0.96582512109140272
	.quad	0x3fdd6c4367d748f6              # double 0.45973286762922727
	.quad	0x3fee9f65b268a61f              # double 0.95695767255273612
	.quad	0x3fcff38b0782b518              # double 0.24961984507300694
	.quad	0x3fcb420c2a935780              # double 0.21295311049351184
	.quad	0x3fad683d01294690              # double 0.057435900108100957
	.quad	0x3fe77f785d73d3c0              # double 0.73431032421523668
	.quad	0x3fc72b9fa34c6154              # double 0.18101878617813816
	.quad	0x3fefb6bbb7c7a5c3              # double 0.99105630774027309
	.quad	0x3fe6fbab9757824b              # double 0.71822146948768173
	.quad	0x3fe96f006270bbe2              # double 0.79479998804697183
	.quad	0x3fd0986839a4fe32              # double 0.25930219296785417
	.quad	0x3fd6208a3a8d3254              # double 0.34573608129429556
	.quad	0x3fe1c38b93282518              # double 0.55512026540341974
	.quad	0x3f5538e90e388400              # double 0.0012953067715744115
	.quad	0x3fe14e670fa297bf              # double 0.54082062772499018
	.quad	0x3feebabc8321facc              # double 0.96029496776449141
	.quad	0x3fec97468233a2c4              # double 0.89346623830814353
	.quad	0x3fe8191f67118398              # double 0.75306673174428607
	.quad	0x3fcf4d958d3bb3b0              # double 0.24455518146660671
	.quad	0x3f93ec2ee846fc40              # double 0.019455655028419949
	.quad	0x3fe920c0e1afb71a              # double 0.78524822310803022
	.quad	0x3fdcf5371382ace6              # double 0.45246674447362378
	.quad	0x3fd096b02a8b73b8              # double 0.25919727473029353
	.quad	0x3fe7b215834bd4a1              # double 0.74048877376357691
	.quad	0x3fa1b8819a6939e0              # double 0.034610796069148853
	.quad	0x3fce8265c889a17c              # double 0.23835441867710105
	.quad	0x3fe119cc9ede3391              # double 0.53439932850743521
	.quad	0x3fef5a1dce09b86a              # double 0.97975054017821361
	.quad	0x3fe73b90b0039ee3              # double 0.72602114084017122
	.quad	0x3fe12b0d085f35f7              # double 0.53650523791446758
	.quad	0x3fc713ddb466f878              # double 0.18029376324369983
	.quad	0x3fe74ec9d693866d              # double 0.72836772832324714
	.quad	0x3fc41c11c95f9e6c              # double 0.15710661251727076
	.quad	0x3fc1e8bc4222b5e8              # double 0.13991502026821867
	.quad	0x3fbcfdb52e6bd3e0              # double 0.11324627288179512
	.quad	0x3fd28d3788d44e78              # double 0.28986919748533735
	.quad	0x3fd4ef43cd8da2d8              # double 0.32710356782494676
	.quad	0x3fe2efc5d687260c              # double 0.59176914119706359
	.quad	0x3fea1c34fe1df76f              # double 0.81594323761212972
	.quad	0x3fdf02cced6beaea              # double 0.48454592881868896
	.quad	0x3fd3e1b2d93596b2              # double 0.31065055095528316
	.quad	0x3fa846b2f167a2c0              # double 0.047414390533793149
	.quad	0x3fe3c0cf8532b884              # double 0.61728645339259502
	.quad	0x3fe886c6bb856473              # double 0.76645218491752443
	.quad	0x3fd83c3da727830a              # double 0.37867680858293851
	.quad	0x3fdf50ad454d63de              # double 0.48929912345698579
	.quad	0x3feeefe94d31fe04              # double 0.9667860515327793
	.quad	0x3fe060d4bc513f44              # double 0.5118201902459778
	.quad	0x3fdbb4c88a365ca6              # double 0.43290914056110308
	.quad	0x3fe06c69e78c4108              # double 0.51323409294312317
	.quad	0x3feebabb461a18a7              # double 0.96029437724861999
	.quad	0x3fe54f2ff07db974              # double 0.66591641398353696
	.quad	0x3fe3f12d252cd301              # double 0.62319047222862889
	.quad	0x3fe21e4b8aabada4              # double 0.56619813045601974
	.quad	0x3fc293ef60d7a74c              # double 0.14513962010033266
	.quad	0x3fe28ebb1c1ea00a              # double 0.57992320530047547
	.quad	0x3fdf11465167719e              # double 0.48542936277024207
	.quad	0x3fca36109014bf60              # double 0.20477492366034777
	.quad	0x3fc9609d66d7ad40              # double 0.19826095124822452
	.quad	0x3fded4d325d29a00              # double 0.48173979467028971
	.quad	0x3fd226c41c01ab4c              # double 0.28361609206210825
	.quad	0x3fec6b847adc7532              # double 0.88812469478913258
	.quad	0x3fe9ba419c8fb57a              # double 0.8039863641585463
	.quad	0x3fa2da3adfda6630              # double 0.036821212602444198
	.quad	0x3fd90b4ba36224d6              # double 0.39131442027480767
	.quad	0x3fdc5b1fb945ea6a              # double 0.44306176274373021
	.quad	0x3fe3ac18247f2869              # double 0.61475760582221739
	.quad	0x3fbefa17b0b941a8              # double 0.12100360931913789
	.quad	0x3fca0de7722aaa40              # double 0.20354931902450524
	.quad	0x3faacedfd8e1a690              # double 0.052359576439653499
	.quad	0x3fe55cf219a9130f              # double 0.6675959111385924
	.quad	0x3fd2a8bfaa197f46              # double 0.29154960261620422
	.quad	0x3fe07a0e64d0e4b6              # double 0.51489944162962931
	.quad	0x3fc9f969587dec70              # double 0.20292393513577478
	.quad	0x3fe6ee75311b0954              # double 0.71660861578883805
	.quad	0x3fd758d263775f22              # double 0.36479625428681761
	.quad	0x3fee18f3f460f659              # double 0.94054601412035332
	.quad	0x3fba973e838c6d80              # double 0.10387030326494617
	.quad	0x3fe4c879bab447ae              # double 0.64947210755984996
	.quad	0x3fe86c324e6f7dba              # double 0.76320758170543646
	.quad	0x3fef458662c93c40              # double 0.97723693174510373
	.quad	0x3fdd8c75f6132a02              # double 0.4616980460238268
	.quad	0x3fe4fccd53a69d1a              # double 0.65585962617925309
	.quad	0x3fc00dd5e62be4ac              # double 0.12542222727623675
	.quad	0x3fe53b8970e111a3              # double 0.66351768538202227
	.quad	0x3fe0be87b12e7d1b              # double 0.5232580624177986
	.quad	0x3fd7eeb0157be1a4              # double 0.37394334886587388
	.quad	0x3fee48fb1cdaab8a              # double 0.94640880237180736
	.quad	0x3fb802167d3bf2b8              # double 0.093781858038663013
	.quad	0x3fd37e3b4730b990              # double 0.30457956268482977
	.quad	0x3feaf56bb284ee66              # double 0.84245858065646639
	.quad	0x3fed839c25d34fa2              # double 0.92231566798954057
	.quad	0x3fc75b62bcfee794              # double 0.18247637012774176
	.quad	0x3fe1901a23fb3a57              # double 0.54884058978661698
	.quad	0x3fbdfd73d01d4640              # double 0.11714862662236047
	.quad	0x3fe12652659230fc              # double 0.53592796171281476
	.quad	0x3fe671f75824ad88              # double 0.70141188827021583
	.quad	0x3fef21919ab2705d              # double 0.97284774984610644
	.quad	0x3fdbb65b4de3366e              # double 0.43300516706663117
	.quad	0x3feb94b4504b1917              # double 0.86190238649649842
	.quad	0x3fd98d8c63e81e10              # double 0.3992644286776974
	.quad	0x3fe98c163191e887              # double 0.79835042649871546
	.quad	0x3fd939d25ae2714c              # double 0.3941541564506863
	.quad	0x3fe9916dfce6ae03              # double 0.79900264162773771
	.quad	0x3fc16d7a39f4457c              # double 0.1361534865359707
	.quad	0x3fc9143a433cc9d8              # double 0.19592979701117375
	.quad	0x3fda09c56643e0ca              # double 0.40684638010817464
	.quad	0x3fe83afd42bcf4f5              # double 0.75720084223544737
	.quad	0x3fd9de178650f24c              # double 0.40418041340652588
	.quad	0x3fea7d9e20afb175              # double 0.82783419021647708
	.quad	0x3fcb4c46a22e5424              # double 0.21326525610916847
	.quad	0x3fdb7c770d4efc64              # double 0.42947174358045559
	.quad	0x3fe64b6e31400335              # double 0.69670781726026709
	.quad	0x3fe99671820e38b6              # double 0.79961467172122158
	.quad	0x3fefb7c1f8e17a45              # double 0.99118136033559578
	.quad	0x3fe7a61bbc9e01ab              # double 0.73902689780520825
	.quad	0x3fe6df40bdc956a5              # double 0.71475255077048827
	.quad	0x3fd27bcb849b55e4              # double 0.28880584668999476
	.quad	0x3faeec96a768a7f0              # double 0.060398776946683941
	.quad	0x3feb45e9384f1a9d              # double 0.85228405950404673
	.quad	0x3fd92e0d9bc1121e              # double 0.39343586168641476
	.quad	0x3fd742915ab1268c              # double 0.36343797546997147
	.quad	0x3fb559d76018e680              # double 0.083402119599577773
	.quad	0x3fe78be43ae470c3              # double 0.73582660200511218
	.quad	0x3feb4b0bd28cd984              # double 0.8529109108265378
	.quad	0x3fea5e32746a3852              # double 0.82399866807259969
	.quad	0x3fb888b6149aa0d0              # double 0.095836048155095499
	.quad	0x3fe9c904e4b56557              # double 0.80578846616405542
	.quad	0x3fbce460f9c00c60              # double 0.11285978410164565
	.quad	0x3fc1e8467a6e2de4              # double 0.13990097978636051
	.quad	0x3fe6f8edb46f2df8              # double 0.71788678399155881
	.quad	0x3fc54a67379f9080              # double 0.16633310523969058
	.quad	0x3fe6d375fc2c93e2              # double 0.71331309559593259
	.quad	0x3fe730dfc5decafd              # double 0.72471607824840556
	.quad	0x3fd1bc45eb99b89e              # double 0.27711627967699737
	.quad	0x3fe1339482879ba3              # double 0.5375464009674612
	.quad	0x3fe37d0d06aad73f              # double 0.60901500036445799
	.quad	0x3fdab4671532dada              # double 0.41726090498143054
	.quad	0x3fe87e656b15773e              # double 0.76542921938719366
	.quad	0x3fd822c21348ab1a              # double 0.37712146647634059
	.quad	0x3feb7eb66d18d279              # double 0.85921784694671921
	.quad	0x3febfb57215e5afb              # double 0.87443119542407943
	.quad	0x3fef6bf74d052b9b              # double 0.98192944567687179
	.quad	0x3fe796ef2ba22183              # double 0.73717459222920956
	.quad	0x3fbad13403c3bed8              # double 0.10475468723211223
	.quad	0x3fe6a218c4cbdd32              # double 0.70728720127855227
	.quad	0x3fd714dc2215da20              # double 0.36064818695686718
	.quad	0x3fe767f251f53b74              # double 0.73143878943834162
	.quad	0x3fbb48f6ac576fe0              # double 0.10658208568150895
	.quad	0x3fe7a1ca3a3ae906              # double 0.73849974988050415
	.quad	0x3fcd8b37dfcc67bc              # double 0.23081110408457828
	.quad	0x3fa6d22365c134e0              # double 0.044571977778653737
	.quad	0x3fee30a3d98d81d5              # double 0.94343750468038456
	.quad	0x3fb7ee461b0193b0              # double 0.093479520409870842
	.quad	0x3fdd0012529732b8              # double 0.4531293684529305
	.quad	0x3fda92712f6e18de              # double 0.41518811828463054
	.quad	0x3fe1e9882aaa529c              # double 0.55975731213637259
	.quad	0x3fdd49e6136e7a0e              # double 0.45763542077648445
	.quad	0x3fe7bdf22d93d543              # double 0.7419367685494439
	.quad	0x3fe1fde295e50e11              # double 0.56224183346097523
	.quad	0x3feda6d2b278626a              # double 0.92661414010497123
	.quad	0x3fe207b70b0420d7              # double 0.56344177390658501
	.quad	0x3fc2456e959fe310              # double 0.14274389558684009
	.quad	0x3fef23fb3bca1294              # double 0.97314225843054424
	.quad	0x3feb03332f7feeb1              # double 0.84414061810772101
	.quad	0x3fd385abf2d57512              # double 0.30503367151489258
	.quad	0x3fe20b901ee4dbda              # double 0.56391149553280262
	.quad	0x3feb752bacc3522b              # double 0.85805305235641549
	.quad	0x3fd2eaf1c6b22696              # double 0.29558987049004182
	.quad	0x3fe497a25eab97ec              # double 0.64351004114427957
	.quad	0x3fef629829cd4a16              # double 0.98078544773517495
	.quad	0x3fdd06dda36c3792              # double 0.45354405364275252
	.quad	0x3fd230536d4fc6c2              # double 0.28419957804645091
	.quad	0x3fed450a7d315a30              # double 0.91467785312381089
	.quad	0x3fe13b8dbe66cc92              # double 0.53851973712734691
	.quad	0x3fd11d5969914700              # double 0.26741633710217627
	.quad	0x3fee2f7c7fee3871              # double 0.94329667078433321
	.quad	0x3fe9ace2654d4f77              # double 0.80235404763742124
	.quad	0x3fe31d6eadc13f65              # double 0.59734281479357476
	.quad	0x3fd5475ad661fe4e              # double 0.33248015342539794
	.quad	0x3fd762439c22624a              # double 0.3653725647687095
	.quad	0x3fe07eeceab1a87b              # double 0.51549383009593386
	.quad	0x3fed23b5a0ed3fd1              # double 0.91060906821257437
	.quad	0x3fee272b61b986f7              # double 0.9422814282117703
	.quad	0x3fe2be601d93bbfa              # double 0.58573919083380521
	.quad	0x3fecb8417b6501c4              # double 0.89749216175555845
	.quad	0x3fd7dcb507db8efe              # double 0.37284589545582481
	.quad	0x3fccd08657b11648              # double 0.22511367112945124
	.quad	0x3fe5e07b0111b4b9              # double 0.68365240296193186
	.quad	0x3fea7dd46d8bf980              # double 0.82786008258680965
	.quad	0x3fd5430be5604856              # double 0.33221719169626363
	.quad	0x3fc87f79dccc016c              # double 0.19139025956247779
	.quad	0x3fd2ea9e91c70958              # double 0.29557003246386193
	.quad	0x3fd73e81db1ff1be              # double 0.36319013976006065
	.quad	0x3fef3846e8e1efb5              # double 0.97561974987865218
	.quad	0x3fc21ff1d5f18134              # double 0.14159987398580542
	.quad	0x3fecc8b41618a972              # double 0.89949993434610875
	.quad	0x3fd54c404925fb8e              # double 0.33277899878879047
	.quad	0x3fc857d18945ee88              # double 0.19018000796119261
	.quad	0x3fee3cf6642b4edd              # double 0.9449417072705405
	.quad	0x3fecc21ff94888c9              # double 0.89869688690330307
	.quad	0x3fdb206b361af386              # double 0.42385368617743102
	.quad	0x3fed53340d9aa5a4              # double 0.91640665680931876
	.quad	0x3fe29b3ffaaaf6d3              # double 0.58145140608368207
	.quad	0x3f814b2676077ec0              # double 0.0084441189546277106
	.quad	0x3fd34e8837d5331e              # double 0.30166821911261532
	.quad	0x3fdbebece681084a              # double 0.43627474317702719
	.quad	0x3fed422f552a4aec              # double 0.91432921060399285
	.quad	0x3fdbfb681641c680              # double 0.43721964047936268
	.quad	0x3fedde96e8a6c9e6              # double 0.93342156829595235
	.quad	0x3feec62962aa3c46              # double 0.96168965597633682
	.quad	0x3feb981798d1b603              # double 0.86231593940254958
	.quad	0x3fd5d878c7218030              # double 0.34133738943455949
	.quad	0x3fd8a66149390744              # double 0.38515503073368884
	.quad	0x3fd003b6ec4748d0              # double 0.25022671770160532
	.quad	0x3fdd38331bd265f2              # double 0.45655515400866797
	.quad	0x3fcb26ec6248a1d8              # double 0.21212534712800735
	.quad	0x3fed01aa50b502f7              # double 0.90645328295803906
	.quad	0x3fe5a1ec118350b7              # double 0.67601588650224798
	.quad	0x3fdd9d14a9c29566              # double 0.46271244600423811
	.quad	0x3fd2f1c74db1446c              # double 0.29600699031022404
	.quad	0x3fd9d9b70371831a              # double 0.40391326271314798
	.quad	0x3fe784b353253f55              # double 0.73494878997187618
	.quad	0x3fdb73667798b1d6              # double 0.42891847304670472
	.quad	0x3fe2a6589d32258d              # double 0.58280592634507544
	.quad	0x3fee6a87f508d08e              # double 0.95050428255355413
	.quad	0x3fe1ea5a0a42f3ff              # double 0.55985738758283776
	.quad	0x3fe77bf2a4e834e2              # double 0.73388035019311482
	.quad	0x3fe110645d3a117c              # double 0.53325098236432167
	.quad	0x3fdf6306de0b3a86              # double 0.49041911777468561
	.quad	0x3f9e90c4d3ccdbe0              # double 0.029849124362239965
	.quad	0x3fec2cf29797d001              # double 0.88048677070628412
	.quad	0x3fddf414546b45b0              # double 0.46802242511793235
	.quad	0x3fc78ab77d823aa8              # double 0.18392079952578411
	.quad	0x3fe18d0dbd09230e              # double 0.54846846505196978
	.quad	0x3fd0ba95d04903f0              # double 0.26138825741151006
	.quad	0x3fddf1fb47a02ca8              # double 0.4678943824262185
	.quad	0x3fb2de896ff32c38              # double 0.073708143073574983
	.quad	0x3fd803601277c1a4              # double 0.37520601085182137
	.quad	0x3fd522ae25424562              # double 0.33024171484529152
	.quad	0x3f9b73ddc78dc840              # double 0.026809182457732783
	.quad	0x3fe7aefcecc3f3fb              # double 0.74011083834886848
	.quad	0x3fdfacc0f0c22100              # double 0.49491904746584225
	.quad	0x3fec05abacb420c8              # double 0.87569221240212247
	.quad	0x3fc28124194bc7f0              # double 0.14456607089192586
	.quad	0x3f9de8e716849500              # double 0.029208765744574983
	.quad	0x3fe9719d19dfb529              # double 0.79511885694015405
	.quad	0x3febc8a13931a6cc              # double 0.86824093981450678
	.quad	0x3fe32514d7655580              # double 0.59827653951167292
	.quad	0x3fd031e6d3f1804c              # double 0.2530457563170827
	.quad	0x3fd614d5235366b8              # double 0.34502151918205071
	.quad	0x3fdf416b30ec75bc              # double 0.48836784150793355
	.quad	0x3fe29dbd335f93cd              # double 0.58175525697571973
	.quad	0x3f9940ef8bc2d660              # double 0.024661772637691093
	.quad	0x3fca0ddfff7f1bcc              # double 0.20354843116203225
	.quad	0x3fd97a38ac012d14              # double 0.3980848006946911
	.quad	0x3fce395e65c569c0              # double 0.2361257550172251
	.quad	0x3fd45f809ab2b862              # double 0.31832900149573196
	.quad	0x3feabbbe1b9ee49b              # double 0.83541779894507628
	.quad	0x3fcb59815d3d588c              # double 0.21366898586956429
	.quad	0x3fc7209f7503ed78              # double 0.18068307126655347
	.quad	0x3fb7827a0b8d6a20              # double 0.091834667034540463
	.quad	0x3fe5fac3acd04713              # double 0.68686088326123451
	.quad	0x3fd4c2e9c633a10c              # double 0.32439655643112597
	.quad	0x3fe0fe0e671d0026              # double 0.5310127271586722
	.quad	0x3fc46351784c15a0              # double 0.15928095220457994
	.quad	0x3fe64ea407064466              # double 0.6970996987530611
	.quad	0x3fae7b3c4b3a2620              # double 0.059533962424279219
	.quad	0x3fe15af6d0ff5867              # double 0.54235401935399075
	.quad	0x3fe44c00b3202778              # double 0.63427767739743413
	.quad	0x3fc6c18e132c55ac              # double 0.17778182922544994
	.quad	0x3feb7177c218a68d              # double 0.85760105046684176
	.quad	0x3fe32dd45bbe357a              # double 0.59934442442469948
	.quad	0x3fe2afcc09ae26f9              # double 0.58395959749870407
	.quad	0x3fe856197cac7175              # double 0.76051020002664294
	.quad	0x3feb3a65d982a2d9              # double 0.8508786438224788
	.quad	0x3fe582687a3d25ba              # double 0.672168959377067
	.quad	0x3fded3415a943100              # double 0.48164399953454051
	.quad	0x3fefef87f3cf2d8a              # double 0.99798963183404621
	.quad	0x3fe58142f90528c9              # double 0.67202900540112254
	.quad	0x3fe3699f38f4e2ef              # double 0.60664330601056615
	.quad	0x3fe907ea120d4320              # double 0.78221610570662747
	.quad	0x3fe35a309fd066f6              # double 0.60475951398549799
	.quad	0x3fbcd7c658ac1b90              # double 0.11266746201373068
	.quad	0x3fd6baf411205976              # double 0.35516072914597119
	.quad	0x3fe2a1b97e3832ea              # double 0.58224177028895707
	.quad	0x3fe0c791fe0fa232              # double 0.52436160680105659
	.quad	0x3fddb462480ae8a6              # double 0.46413476024066325
	.quad	0x3fd6296080bcacc8              # double 0.34627544948552869
	.quad	0x3febfe14c5546d5e              # double 0.8747657636735473
	.quad	0x3fe27084169b57f4              # double 0.5762348596133493
	.quad	0x3fdfb49df2358996              # double 0.49539898541675009
	.quad	0x3fe08aea413f266c              # double 0.51695740455143158
	.quad	0x3fc6e72e0a43c72c              # double 0.1789300489540947
	.quad	0x3fee5a1389acf20b              # double 0.94849564447173529
	.quad	0x3fe9aa6f8768b1de              # double 0.80205513426841057
	.quad	0x3fe4dc9be807390f              # double 0.65192981069574951
	.quad	0x3fefba0def763055              # double 0.99146172304018398
	.quad	0x3fee737d3001798e              # double 0.9515977799999733
	.quad	0x3feff86a924670a8              # double 0.99907425469748023
	.quad	0x3feb71a9101a0918              # double 0.85762456078399207
	.quad	0x3fddf0028019108e              # double 0.46777403363763248
	.quad	0x3fd0f34c72055834              # double 0.26484976897097856
	.quad	0x3fdedd2afe7206f2              # double 0.4822490200823345
	.quad	0x3fe6f1074a254351              # double 0.71692242127947214
	.quad	0x3fd0536c8e859a56              # double 0.25509179990914299
	.quad	0x3fee9ab5454704ac              # double 0.95638526468987583
	.quad	0x3fed7b5520cb065b              # double 0.92130524067779207
	.quad	0x3fa22a58a597a370              # double 0.035479326452167892
	.quad	0x3fbe3f6214176ef8              # double 0.11815464964405098
	.quad	0x3fc735698f040b74              # double 0.18131751521294925
	.quad	0x3fe3dc8dd1554cb9              # double 0.62067309270277982
	.quad	0x3fdf9d9fb471784c              # double 0.49399559613619171
	.quad	0x3fbf6ccbb241a658              # double 0.1227538404652021
	.quad	0x3fe9531ad2d980e7              # double 0.79139462644164105
	.quad	0x3fad3be63d54cc50              # double 0.057097620951389261
	.quad	0x3fe9f517e41348a5              # double 0.81116861864054057
	.quad	0x3fc753c7591b6ee4              # double 0.18224422312675082
	.quad	0x3fe14c95badfc7f9              # double 0.54059874056679214
	.quad	0x3fe55c6518ae3a7f              # double 0.66752867527414128
	.quad	0x3feda9d81b5d7bb2              # double 0.92698293061027059
	.quad	0x3fe3190fbb6f95b4              # double 0.59680925949640207
	.quad	0x3fb35b871a697278              # double 0.075615352581232531
	.quad	0x3feee9958a35f42a              # double 0.96601368898666817
	.quad	0x3fe72f2afd7595c1              # double 0.72450780395291059
	.quad	0x3fe505867f7bed55              # double 0.65692448519932134
	.quad	0x3fe0bf2bb9260f2f              # double 0.52333627855157328
	.quad	0x3fe6b57c1cbc2d78              # double 0.7096539078933537
	.quad	0x3feb94adc9d6cbb6              # double 0.86189927503288888
	.quad	0x3fded46e3a7b3d48              # double 0.48171573363375275
	.quad	0x3fe184e71cb76b9b              # double 0.54747348412216768
	.quad	0x3fef385743a000fd              # double 0.97562754829416997
	.quad	0x3fd6873656e6b186              # double 0.35200270163002079
	.quad	0x3fdcf9ae9cb62cf8              # double 0.4527393846880865
	.quad	0x3f6b23a94b1b2100              # double 0.0033129030715352004
	.quad	0x3fe98d3a9862a16d              # double 0.79848985445737031
	.quad	0x3fd997403c24c928              # double 0.39985662339599282
	.quad	0x3fe8fe6fa9cdf87c              # double 0.78105910458522442
	.quad	0x3fca263c5e9ff90c              # double 0.20429186458927295
	.quad	0x3fec49dd67d6cb1d              # double 0.88401670723974102
	.quad	0x3fed195b1ee4a6c0              # double 0.90934520753690862
	.quad	0x3fe7bf34aac35861              # double 0.74209054329072555
	.quad	0x3f7c0563ad69b180              # double 0.0068410771988108854
	.quad	0x3fdef818a0b025ac              # double 0.48389259044833
	.quad	0x3fbe2419ded84290              # double 0.11773835840745961
	.quad	0x3fd90c62e70cbc64              # double 0.39138100207759963
	.quad	0x3feb8a72f3382077              # double 0.86065051559218275
	.quad	0x3fa7d7cd085192f0              # double 0.046568305268726351
	.quad	0x3fedb0507b386371              # double 0.92777275148828953
	.quad	0x3fe2452418cbad04              # double 0.57094006388561569
	.quad	0x3fe0c150b1c994ac              # double 0.52359804844004065
	.quad	0x3fe485780cf218ae              # double 0.64129259613470935
	.quad	0x3fe6c5e32e284469              # double 0.71165617957207161
	.quad	0x3fd3cd7e3a97da9c              # double 0.30941730234136755
	.quad	0x3fc34255b8588ffc              # double 0.15046187878863282
	.quad	0x3fd21b55e5609dc6              # double 0.28291842842233128
	.quad	0x3febb43a0dd2a325              # double 0.86575033855215067
	.quad	0x3fec0d329f9576ad              # double 0.87661105316847954
	.quad	0x3febbe8e326f5f81              # double 0.86701116419406798
	.quad	0x3fec58fa43400cd8              # double 0.88586152205280211
	.quad	0x3fea364527bc0fbe              # double 0.81912477265040429
	.quad	0x3fe009af2efda777              # double 0.50118216684243933
	.quad	0x3feaf80b68dafd22              # double 0.84277887801718898
	.quad	0x3fede683399cece0              # double 0.93438874485527989
	.quad	0x3fee8c0cb52da5c1              # double 0.95459590326679955
	.quad	0x3fe05395827c82d1              # double 0.51020312772387844
	.quad	0x3fd5dd9f61c18c9a              # double 0.34165176912774486
	.quad	0x3f8ef02b55641140              # double 0.015106524032042601
	.quad	0x3fd6a89bef16a6ea              # double 0.3540410837982636
	.quad	0x3fcd75df709c0e24              # double 0.23015969275012182
	.quad	0x3fef5b4f646a55e5              # double 0.97989625561120574
	.quad	0x3fe5e8cea5e9412a              # double 0.68466884998818967
	.quad	0x3fe8f9bcd2cd5dbb              # double 0.78048554584795882
	.quad	0x3fef41cdf6903d1b              # double 0.97678278119011296
	.quad	0x3fe918acfb80fa01              # double 0.78426217195357151
	.quad	0x3fc5108de1c221a8              # double 0.16456769488673939
	.quad	0x3fedecd9ed2d5d23              # double 0.93516250919029564
	.quad	0x3fed4ffb932884aa              # double 0.91601351491785477
	.quad	0x3fede14907c49ae7              # double 0.93375064389405515
	.quad	0x3fd9096144172c84              # double 0.39119750642266404
	.quad	0x3fe6da31e641e409              # double 0.71413512203355467
	.quad	0x3fe135dfbece1237              # double 0.53782641665072262
	.quad	0x3fe3e01f3d7b6db1              # double 0.6211086464713188
	.quad	0x3fee660112bb0654              # double 0.94995168360055481
	.quad	0x3feeb61e513f3380              # double 0.95973125332385223
	.quad	0x3fd440b45d2d0550              # double 0.31644925212102226
	.quad	0x3fd6901d6ac5b0ec              # double 0.35254607607818289
	.quad	0x3fd4eb799aa83ada              # double 0.32687225440251455
	.quad	0x3fb7e476f3005158              # double 0.093329843832468895
	.quad	0x3fe0416f691c412d              # double 0.50798769502038044
	.quad	0x3fc48d234ab633c0              # double 0.16055718563111832
	.quad	0x3fc69ebba4e9f808              # double 0.17671914627493401
	.quad	0x3fec497ebd38c3e8              # double 0.88397156674738842
	.quad	0x3fe6c2916b7ed504              # double 0.71125098223879535
	.quad	0x3fee515ef8becba3              # double 0.94743298132958775
	.quad	0x3fed527ce91b502a              # double 0.91631932762766621
	.quad	0x3fe03b0a43540f98              # double 0.50720704221793067
	.quad	0x3fe66f4dd356ab50              # double 0.70108691479740948
	.quad	0x3fe6ae1417510791              # double 0.70874981454857011
	.quad	0x3fb3317ab7074ca8              # double 0.074973745045371687
	.quad	0x3fb8843ce53a0188              # double 0.095767789805910053
	.quad	0x3fe78c65697dc3fe              # double 0.73588820079578432
	.quad	0x3fd353fcaffce75e              # double 0.30200116335219274
	.quad	0x3fed2f226fcb6a6a              # double 0.91200372538453434
	.quad	0x3fb29df82b459f78              # double 0.072722921909756155
	.quad	0x3fd56da2eaae0fa4              # double 0.33481667440377749
	.quad	0x3fc2d1aeecfbb608              # double 0.14702402659843039
	.quad	0x3fe4363225bfcdf2              # double 0.6316157090463419
	.quad	0x3fdf4f0a9888b71c              # double 0.48919930358793962
	.quad	0x3fe1e628a0d89e54              # double 0.5593455449606588
	.quad	0x3fa6e01a36114440              # double 0.0446785155296614
	.quad	0x3fe0fdb565297fd8              # double 0.53097028501724264
	.quad	0x3fd00d7b77210e1c              # double 0.25082289346411968
	.quad	0x3fd8c2c6a8efc0aa              # double 0.3868881845255695
	.quad	0x3fe33091fb83b100              # double 0.599678984870053
	.quad	0x3fe1ac9a8208e9be              # double 0.55231976888108369
	.quad	0x3fe0c124edf88edd              # double 0.52357717970559359
	.quad	0x3fea4aa20536b858              # double 0.82161046045599573
	.quad	0x3febed110aa471f4              # double 0.87268879011713673
	.quad	0x3feaa0b913f427ec              # double 0.83211950204099371
	.quad	0x3fe9282bbe1e9963              # double 0.78615367062301933
	.quad	0x3fc5ea95eb09fae8              # double 0.17122148491394928
	.quad	0x3fecf2bab4e0b027              # double 0.9046300442473737
	.quad	0x3fe928cedd574099              # double 0.78623145323401211
	.quad	0x3fd8cbe0bf4e29a0              # double 0.38744372064743438
	.quad	0x3fe700cd7f963ef0              # double 0.71884798926654803
	.quad	0x3feacd9f9537b2b8              # double 0.83760050911003869
	.quad	0x3f994e49c2b1e2a0              # double 0.024712708004218542
	.quad	0x3fb3d9435755abb0              # double 0.077533921071945455
	.quad	0x3fd911520d137ba6              # double 0.39168216015780855
	.quad	0x3fe582f067c0f9cb              # double 0.67223377479950253
	.quad	0x3fc9c47941d6eeb4              # double 0.20130840029547914
	.quad	0x3fe3f90a57a4e7b2              # double 0.62415043943405224
	.quad	0x3fea7d38cc7d1720              # double 0.82778587283312177
	.quad	0x3fe6447770341338              # double 0.69585773386697891
	.quad	0x3fda24e589a965d8              # double 0.40850199168707269
	.quad	0x3fe27e85636f3b90              # double 0.57794446392823495
	.quad	0x3f6ee5ae174ff100              # double 0.0037716293541035784
	.quad	0x3fd84a2b7c6b80c2              # double 0.37952696943649411
	.quad	0x3feb251ec4f7bcd2              # double 0.84828127355822347
	.quad	0x3fea4727a6cdfe1c              # double 0.82118589953455822
	.quad	0x3fe9fe4dbd3e1f6d              # double 0.81229292832811739
	.quad	0x3fb323acbc00dd20              # double 0.074763103389035468
	.quad	0x3fe2c8bb15620f75              # double 0.58700327087761528
	.quad	0x3fe0d40e3aefe34c              # double 0.52588569174904753
	.quad	0x3fe6f27122bde509              # double 0.71709496293547759
	.quad	0x3fccae8f33f41f3c              # double 0.22407712971493676
	.quad	0x3fda8d0410829956              # double 0.41485692608184388
	.quad	0x3faa4d0a03a6bb80              # double 0.05136901182719722
	.quad	0x3fe455403763247d              # double 0.63540659730746507
	.quad	0x3fe914c400e1db48              # double 0.78378486797633062
	.quad	0x3fe88f226018808b              # double 0.76747244614308963
	.quad	0x3fe1eea9d6fa9958              # double 0.56038372028414596
	.quad	0x3feed9ffcb42d0f4              # double 0.96411122989095909
	.quad	0x3fe79942d407d733              # double 0.73745862400276108
	.quad	0x3fee8f5c9007479b              # double 0.95500019197992303
	.quad	0x3fdb2194b4827a84              # double 0.42392461421869876
	.quad	0x3fd3efc8ce4f27f2              # double 0.31151027819998867
	.quad	0x3fedd508b51e4e60              # double 0.93225512861904391
	.quad	0x3fd4363c4b62887e              # double 0.31581027375990078
	.quad	0x3fda5bcde8e637e0              # double 0.41185329193183229
	.quad	0x3fe84117601e4343              # double 0.75794571660126342
	.quad	0x3fd555057c803104              # double 0.3333142963245026
	.quad	0x3fe2d25e5161af68              # double 0.58817973990288142
	.quad	0x3fef55cfc445e6c7              # double 0.97922504744129745
	.quad	0x3fc54d0df6eb5e54              # double 0.16641401821719859
	.quad	0x3feab9c90ee5a88f              # double 0.83517887982931593
	.quad	0x3fed1559ace92ef2              # double 0.90885623714117814
	.quad	0x3fc26afe3925fe28              # double 0.14389016905259777
	.quad	0x3fcb6467ad9b80ac              # double 0.21400161721158406
	.quad	0x3fefbd22d1a302a6              # double 0.99183789200477146
	.quad	0x3fe18a6f2711cf92              # double 0.54814870482231215
	.quad	0x3fef5c39df83b8a7              # double 0.98000806479628443
	.quad	0x3fefc51047583d09              # double 0.99280561384685583
	.quad	0x3fe60c93704c4fbe              # double 0.68903514798375176
	.quad	0x3fcbb8edc24783c4              # double 0.21658107744499777
	.quad	0x3fdfa334e0460a56              # double 0.49433633710592539
	.quad	0x3fe3b488871b47d9              # double 0.61578775775910366
	.quad	0x3fba7d3d5754b048              # double 0.10347350484943363
	.quad	0x3fe10b797b82c44b              # double 0.53265070079044941
	.quad	0x3fd2ec5f12cb8074              # double 0.29567696414415612
	.quad	0x3fc82fc4a0c2265c              # double 0.18895776605158943
	.quad	0x3feb6ba6f4b105ae              # double 0.85689113417918406
	.quad	0x3fe0fd3ab159192c              # double 0.53091177595414285
	.quad	0x3fe718dfb45f4b9f              # double 0.72178635815577141
	.quad	0x3fda66525baacd68              # double 0.41249522163271601
	.quad	0x3fc2156f1451cd20              # double 0.14127911083378653
	.quad	0x3fe13afde90b8f8f              # double 0.53845115200646088
	.quad	0x3fe7f36ec0692ef8              # double 0.74846589641808148
	.quad	0x3fe246931233782f              # double 0.57111505083935821
	.quad	0x3fc2891895abf6b4              # double 0.14480883892240615
	.quad	0x3fed363c458e6609              # double 0.91287053666309348
	.quad	0x3fe97a8cf848fd4b              # double 0.79620979779421341
	.quad	0x3fe6059f4fbcd80d              # double 0.68818631719364165
	.quad	0x3fb641dbef9d9af0              # double 0.08694243049613326
	.quad	0x3fb2cd4f48b95990              # double 0.073445277457130809
	.quad	0x3fd5891f61b53fe0              # double 0.33649429837987377
	.quad	0x3fed659b406018b4              # double 0.91865313123050507
	.quad	0x3fd6c45e109ff2a6              # double 0.35573531745448361
	.quad	0x3fdcfa389a9ed972              # double 0.45277228450449691
	.quad	0x3fe1995df6801017              # double 0.54997156281069948
	.quad	0x3fe880b7d0426aab              # double 0.7657126491133871
	.quad	0x3fce37b16e6e65dc              # double 0.23607461826467968
	.quad	0x3fd1d248200b2a86              # double 0.27845957879313976
	.quad	0x3fe67886a97a6549              # double 0.70221264935677496
	.quad	0x3fcf329f02b6c8f8              # double 0.24373233444709519
	.quad	0x3fdcab1f7c805574              # double 0.44794451864557705
	.quad	0x3fd626a6f38e1298              # double 0.34610914024987371
	.quad	0x3fed146f7ad7024c              # double 0.90874456398166492
	.quad	0x3fed5d6aad2bc8aa              # double 0.91765340635744974
	.quad	0x3fc4fdf91b06ffd4              # double 0.16400064296430961
	.quad	0x3fabbb79c9f0c180              # double 0.054164701367315438
	.quad	0x3fe2ef61d6a7cc9e              # double 0.59172145771880813
	.quad	0x3fc36b599cd5004c              # double 0.15171356351675269
	.quad	0x3fea5610d34f4cc4              # double 0.82300606986464019
	.quad	0x3f944049d1e04d00              # double 0.019776490626168375
	.quad	0x3fab0197b232ede0              # double 0.052746525290298996
	.quad	0x3fe6615ba16dfbc8              # double 0.69938451318000094
	.quad	0x3fe22cc4e92cb754              # double 0.56796498815468022
	.quad	0x3fc9c810f06d0358              # double 0.20141803493063537
	.quad	0x3fe94bbd0b6a3755              # double 0.79049541692232117
	.quad	0x3feceb19f23576b3              # double 0.90369889551558058
	.quad	0x3fda63c33462bae2              # double 0.41233902087962637
	.quad	0x3fe732ba8ddb0364              # double 0.72494247156292291
	.quad	0x3fe000cf2a16dc05              # double 0.50009878368916871
	.quad	0x3fc67f671bf7e2b4              # double 0.17576302400245469
	.quad	0x3fdfc79c3a6eefee              # double 0.49655824381238645
	.quad	0x3fec7148c255138a              # double 0.88882863956006131
	.quad	0x3fd8131be07c5c8a              # double 0.37616631433906689
	.quad	0x3fd8123531c146c8              # double 0.37611131533513431
	.quad	0x3fc518608f6f7868              # double 0.16480643275912432
	.quad	0x3fe5923664baae4e              # double 0.67409820245434005
	.quad	0x3fde580663058018              # double 0.47412261648241971
	.quad	0x3feeb6810ea14b78              # double 0.95977833611901441
	.quad	0x3fa941d1f6c9bee0              # double 0.049330293059822727
	.quad	0x3fa32907ae97c2f0              # double 0.03742240911731709
	.quad	0x3fe1cfb02b3bf43f              # double 0.55660255855730856
	.quad	0x3fe4a0176b640ec2              # double 0.64454241728568484
	.quad	0x3fa9b83a7f3a41d0              # double 0.050233676939686611
	.quad	0x3fe9c17abadc3a17              # double 0.80486809250016023
	.quad	0x3fea086f550979c3              # double 0.81352964981834253
	.quad	0x3fe7a72b52eea645              # double 0.73915640065860855
	.quad	0x3fed0a74cbbafd54              # double 0.90752639571284499
	.quad	0x3fea02381ae01d62              # double 0.81277089356528287
	.quad	0x3fe99e69d6657c9c              # double 0.80058757662108659
	.quad	0x3fd788fa5bfa050c              # double 0.3677354715546961
	.quad	0x3fd4eccff1af9284              # double 0.32695387460834291
	.quad	0x3fc98e1a7e6c69ac              # double 0.19964915440580222
	.quad	0x3fef6ea0c835ce73              # double 0.98225440124083573
	.quad	0x3fc4346d8ef88c8c              # double 0.15784997445107185
	.quad	0x3fde0b52868b2912              # double 0.46944106234572403
	.quad	0x3fa78f5962304a70              # double 0.046015542255322894
	.quad	0x3fc72e5c001212c0              # double 0.18110227588126371
	.quad	0x3fe98a560470c121              # double 0.79813671939158237
	.quad	0x3fe3b8c8df2bf61c              # double 0.61630672062136993
	.quad	0x3fceaed3d06b9204              # double 0.23971030880706234
	.quad	0x3fded5f3e1a5c8ec              # double 0.48180863414667274
	.quad	0x3fc48586d4b82f34              # double 0.16032491099064716
	.quad	0x3fee4cc04222fc37              # double 0.94686901967350579
	.quad	0x3fb438994a60f508              # double 0.078988629015800282
	.quad	0x3fec8d35ca38ed01              # double 0.89223756310039459
	.quad	0x3fe54940cbde8cfb              # double 0.66519203012685979
	.quad	0x3fd26cb557016464              # double 0.28788503166794599
	.quad	0x3fe0786986bc2499              # double 0.51469875636498152
	.quad	0x3f922269b4eae4a0              # double 0.017709399859744068
	.quad	0x3fec5314f2e8edcd              # double 0.88514182513557105
	.quad	0x3fd2780dcc7d79cc              # double 0.28857750863781173
	.quad	0x3fe8d4de36ea932d              # double 0.77598486638871622
	.quad	0x3fd9fecb798ed01c              # double 0.40617644186863955
	.quad	0x3fde37b6078967de              # double 0.47215033279428364
	.quad	0x3f9b125dc6ff0220              # double 0.026437249441871313
	.quad	0x3fd03afdedbaf22c              # double 0.25360058036656841
	.quad	0x3fd2c46fede5bc4e              # double 0.29323957664650357
	.quad	0x3fd07921f647f6a0              # double 0.25739335108651495
	.quad	0x3fc76632321caffc              # double 0.18280627676847405
	.quad	0x3fc9dffc54c8d0bc              # double 0.20214800014367096
	.quad	0x3fd708b8e6319518              # double 0.35990736465312656
	.quad	0x3fcb0e9c065b7d6c              # double 0.21138334570330686
	.quad	0x3f78b511d53ad800              # double 0.0060320564841074287
	.quad	0x3feb1a1c061552fe              # double 0.84693719089645447
	.quad	0x3fe99b5c89f95d2f              # double 0.80021502445280202
	.quad	0x3fe025a892955fd8              # double 0.50459698323811164
	.quad	0x3fd01c103816b9f4              # double 0.25171285130900789
	.quad	0x3fe03db989ca3d5a              # double 0.50753476059064018
	.quad	0x3fd5362e22f51fd6              # double 0.33143189824886343
	.quad	0x3fdb7f855976ff94              # double 0.42965825783539313
	.quad	0x3fd50758b1472e3c              # double 0.32857339203176017
	.quad	0x3fc3328e95c09d04              # double 0.14998037635925965
	.quad	0x3fdfaa439a919796              # double 0.49476709456063739
	.quad	0x3fea1a627d8aa457              # double 0.81572079200590053
	.quad	0x3fef7fd83568696a              # double 0.98435602599356042
	.quad	0x3fe7fcba0d2cafd8              # double 0.74960043500095264
	.quad	0x3fcc1cfc7a7bd708              # double 0.21963458996440743
	.quad	0x3fca25a1a91edaf8              # double 0.20427342183912578
	.quad	0x3fdddc30496abf3a              # double 0.46656424684168807
	.quad	0x3fe3d90ceaaaa7c6              # double 0.62024541695904456
	.quad	0x3fe6a4effdf69f13              # double 0.70763396837444004
	.quad	0x3fc83fb9a3bebb30              # double 0.18944473739016976
	.quad	0x3fe7b8ef5ba8b9d9              # double 0.74132507230916211
	.quad	0x3fee31e4db2d508f              # double 0.9435905724335657
	.quad	0x3fd4230a6c519692              # double 0.31463871553419509
	.quad	0x3fec524ecd0b6aa9              # double 0.88504734084866243
	.quad	0x3febcd089c500182              # double 0.86877851991452837
	.quad	0x3fa90dc492af3d80              # double 0.048933165460421257
	.quad	0x3feeeab304a575c3              # double 0.96614981563077895
	.quad	0x3fd919cbb1af2184              # double 0.3921994433590259
	.quad	0x3fba10cd97426068              # double 0.1018188947949753
	.quad	0x3fe64f2fa444ee65              # double 0.69716627200928072
	.quad	0x3fd2bba5916b0a62              # double 0.29270304871548636
	.quad	0x3fb88236d20b3fd0              # double 0.095736910133609187
	.quad	0x3fee3dcc17cc5cc4              # double 0.94504360817054378
	.quad	0x3feb3bc5c26948e9              # double 0.85104644747687275
	.quad	0x3fc9831b2dcb34b4              # double 0.19931354270958013
	.quad	0x3fdc629bb95dd654              # double 0.44351857282831486
	.quad	0x3fe29eb1fe131e73              # double 0.58187198280297847
	.quad	0x3fd1792769420ea6              # double 0.27301965026002006
	.quad	0x3fda4a8a705ae956              # double 0.41079960796527837
	.quad	0x3fe2caa17df64aa4              # double 0.58723520853012134
	.quad	0x3fe77f2b968854b7              # double 0.7342737140740131
	.quad	0x3fea3512040efc9f              # double 0.81897831719097158
	.quad	0x3fe9387e0af9e551              # double 0.7881460394266161
	.quad	0x3fa27b25a420bf70              # double 0.036095787320276851
	.quad	0x3fe9e18d961f088c              # double 0.80878333397437662
	.quad	0x3fbd9ce75111ede0              # double 0.11567540864228176
	.quad	0x3fe86c941f2553db              # double 0.76325422366300744
	.quad	0x3fec3894b0b5297e              # double 0.88190683854308793
	.quad	0x3fc4691e4ea88700              # double 0.15945795860994139
	.quad	0x3fd9ceaa79619e56              # double 0.40323888639111283
	.quad	0x3fdf7fb88bb75468              # double 0.49217046398309217
	.quad	0x3feff798add3630a              # double 0.99897417021119961
	.quad	0x3fe44f45ad0182a6              # double 0.63467677870001604
	.quad	0x3fda843d7904ee10              # double 0.41432129686629171
	.quad	0x3feeb666e3071da7              # double 0.95976585713736006
	.quad	0x3fedb2405fbdb153              # double 0.92800921153461002
	.quad	0x3fee0b73b508a0ea              # double 0.93889794691224648
	.quad	0x3fea40f1603c0787              # double 0.82042759700583268
	.quad	0x3fee4d4da552f27b              # double 0.9469364384636515
	.quad	0x3fe16b0d5190281b              # double 0.54431787424369149
	.quad	0x3fe896b28d5eb548              # double 0.76839568721121854
	.quad	0x3fe8a9d84d561178              # double 0.77073302368857721
	.quad	0x3fe9434806ee517d              # double 0.78946305612275547
	.quad	0x3fe136fb0291ad7d              # double 0.53796148778694397
	.quad	0x3fd92c2e6e08e41e              # double 0.39332161660746745
	.quad	0x3fe4a4941db5f31e              # double 0.64509015848998152
	.quad	0x3fc912e6a9cbbcdc              # double 0.19588931361020101
	.quad	0x3fdbb097e0205eaa              # double 0.43265339743946163
	.quad	0x3fc6654b91b46448              # double 0.1749662839363586
	.quad	0x3fb900a087687880              # double 0.097665818270316506
	.quad	0x3feb25ef9519432c              # double 0.84838084336124586
	.quad	0x3feab25228a4dffb              # double 0.83426769197740158
	.quad	0x3fcac07211c60614              # double 0.20899797313545376
	.quad	0x3fd03d8de497dc5a              # double 0.25375697444491652
	.quad	0x3fc525e4dfc5fe44              # double 0.16521893431125723
	.quad	0x3f493ffdeea63c00              # double 7.705678847730324E-4
	.quad	0x3fd8b822a82c9298              # double 0.38623873160603628
	.quad	0x3fd09241e6bceb12              # double 0.25892684491161433
	.quad	0x3fb3d3cbf950ff68              # double 0.077450512283574136
	.quad	0x3fd973d73e8c6a60              # double 0.39769536121608517
	.quad	0x3fe098ff648bf734              # double 0.51867646825824076
	.quad	0x3fbb0af8ef3d2800              # double 0.10563617554467442
	.quad	0x3fe9a6f319c122da              # double 0.80162959127582245
	.quad	0x3fee70d181ca61da              # double 0.95127177571981325
	.quad	0x3fe41fd72ac54616              # double 0.62888677934296555
	.quad	0x3fda18be8268c9a2              # double 0.40776026473317917
	.quad	0x3fd0c7ea8a93b130              # double 0.26220191510107593
	.quad	0x3fcfff1bb2e13fc0              # double 0.2499727843701276
	.quad	0x3fefac350f8b3e21              # double 0.98977139507218592
	.quad	0x3fd30d8e3dad4852              # double 0.29770236991055754
	.quad	0x3fe2ebc3f8da927b              # double 0.5912799702096686
	.quad	0x3fe3940256d83c5e              # double 0.61181752168512182
	.quad	0x3fedbb5d1006fbf8              # double 0.92912152414635241
	.quad	0x3fd6b122e39142ce              # double 0.35456154082662017
	.quad	0x3fb8402f77012878              # double 0.094729391626204307
	.quad	0x3fe81a6aaf56ee74              # double 0.75322469945918024
	.quad	0x3fc2de404979d1d8              # double 0.14740756595314397
	.quad	0x3fc9e9e169d7f31c              # double 0.20244996708051921
	.quad	0x3febb72377a56731              # double 0.86610577934627575
	.quad	0x3fed8258c65889af              # double 0.9221614717428589
	.quad	0x3fec67b4b31a2b27              # double 0.88765940647985964
	.quad	0x3fd0e75ad8f3dbf4              # double 0.26412078081869983
	.quad	0x3fe9b925fb319c7d              # double 0.80385111867225556
	.quad	0x3fe6cc1284a8cde5              # double 0.71241117391622011
	.quad	0x3fbaf2c61e71f9a8              # double 0.1052669357613697
	.quad	0x3fd212769bae2766              # double 0.28237691119340125
	.quad	0x3fb3d8a7b9ae3628              # double 0.077524645645291046
	.quad	0x3fe09f70d7a276c4              # double 0.51946298710000649
	.quad	0x3fca4a1dd843a9a8              # double 0.2053868585565628
	.quad	0x3fe11beb59f0f34c              # double 0.53465812269824076
	.quad	0x3fe09ecfd1d38f2e              # double 0.5193862054988807
	.quad	0x3fe5d97277215a9a              # double 0.68279383914598957
	.quad	0x3fa45127114e33e0              # double 0.039681645262227283
	.quad	0x3fcc581e3ea716a8              # double 0.22143915232861855
	.quad	0x3fd21fc6d7fe0f14              # double 0.28318949788102654
	.quad	0x3fe67674f7bbc96e              # double 0.70196007142503247
	.quad	0x3feb49ef5c05ca6c              # double 0.85277526829879723
	.quad	0x3f9adbe34ad53520              # double 0.026229430620607563
	.quad	0x3fea2e20667e7387              # double 0.81813068407392187
	.quad	0x3fd2cdd07095cf8a              # double 0.29381190294883963
	.quad	0x3fe8a1562c3dd7c5              # double 0.76969441071445799
	.quad	0x3fe523b4b7d79c4d              # double 0.66060863405881209
	.quad	0x3fe68e7179cd0096              # double 0.70488809384552797
	.quad	0x3fcdd166e268a0a0              # double 0.23295293860542632
	.quad	0x3feed63310750eeb              # double 0.96364739622410178
	.quad	0x3fc1a5440656d5c8              # double 0.13785600957423427
	.quad	0x3fb2095561ad89d8              # double 0.070454918238773145
	.quad	0x3fd6d1e94fc6bea0              # double 0.35656197348269281
	.quad	0x3fdd04e216aa50ea              # double 0.45342304433257985
	.quad	0x3fde40c903bcc622              # double 0.47270417561512279
	.quad	0x3fcc17ad07372b84              # double 0.21947253086394991
	.quad	0x3fe6f83b6bf17a0a              # double 0.7178017719523393
	.quad	0x3fce73a676ba1e64              # double 0.2379043655130203
	.quad	0x3fe4bfc62f7cf6fc              # double 0.64840993189838469
	.quad	0x3fdae49e7d9b3424              # double 0.42020380274044755
	.quad	0x3fd7c62594375ca2              # double 0.37146892046207303
	.quad	0x3fe349490ba582b2              # double 0.60269596361839306
	.quad	0x3fd6e3099ee144f0              # double 0.3576072742044536
	.quad	0x3fe696f6ecee0e51              # double 0.705928290132258
	.quad	0x3fea0aaa2876dfc6              # double 0.81380184081262352
	.quad	0x3fe912e8874322aa              # double 0.78355814379127264
	.quad	0x3fd8b63ac65e355e              # double 0.38612241145968607
	.quad	0x3fe5915babdb772c              # double 0.67399390760303879
	.quad	0x3fc21a422dcfb114              # double 0.1414263461769073
	.quad	0x3fef82716fb6d0b8              # double 0.98467323130764494
	.quad	0x3fea46383cdedb7d              # double 0.82107173813606915
	.quad	0x3fd20132eeea8a30              # double 0.28132317859322864
	.quad	0x3fd17fc95226b0ba              # double 0.27342446348735516
	.quad	0x3fbc54b67df3d6d0              # double 0.11066761565219996
	.quad	0x3fd8aa9a8c5e8898              # double 0.38541282375275321
	.quad	0x3fc626add9a3de18              # double 0.17305539252241497
	.quad	0x3fd6f718817ea13a              # double 0.35883152624093706
	.quad	0x3fd8f2929900dae0              # double 0.38980545942051315
	.quad	0x3fe3054dc894ae10              # double 0.59439744163450037
	.quad	0x3fba0d5ea7634a58              # double 0.10176650606744297
	.quad	0x3fc85b8bdac6f2bc              # double 0.19029377157666783
	.quad	0x3fd742cce43fea54              # double 0.3634521702767064
	.quad	0x3fcddeadac0a37a0              # double 0.23335810566316884
	.quad	0x3fe5e4f66443a5a8              # double 0.68419951994763029
	.quad	0x3fda58cd36792c56              # double 0.41167002029096034
	.quad	0x3feb113ea5d6cb13              # double 0.84585506811558486
	.quad	0x3febf308194c4bb6              # double 0.87341694775601897
	.quad	0x3fd360a93c7cfd30              # double 0.30277472407393002
	.quad	0x3fc94dbb25dc4e74              # double 0.19768466328297374
	.quad	0x3f82bc7acc907e40              # double 0.0091485589674099587
	.quad	0x3fe9a34cea3a49a2              # double 0.80118413684458667
	.quad	0x3fe82c51da94abaf              # double 0.75541012469817825
	.quad	0x3fe22c0b8c311a19              # double 0.56787660008632479
	.quad	0x3fe095137c8a988b              # double 0.51819776844492205
	.quad	0x3fe1023ef15e0bab              # double 0.5315241541105612
	.quad	0x3fe139148179d67e              # double 0.53821778572337542
	.quad	0x3fe293320218e65c              # double 0.58046818170187064
	.quad	0x3fd5200fd60397a2              # double 0.33008190059478626
	.quad	0x3feb837c3d804686              # double 0.85980045329979826
	.quad	0x3fb512373394c140              # double 0.082309198468242251
	.quad	0x3fe949c992fbfd17              # double 0.79025725086094922
	.quad	0x3fcc33abdeeaf774              # double 0.22032688507709575
	.quad	0x3fe168e6991dcdc1              # double 0.5440552702479452
	.quad	0x3fd50c5e64ad34ba              # double 0.32887992698381263
	.quad	0x3fde9d70fdc6d270              # double 0.47835945876003105
	.quad	0x3fddaabc1e351202              # double 0.46354582738811712
	.quad	0x3fe150ae9d70fcb2              # double 0.54109888792290506
	.quad	0x3fe6f9aeb8712484              # double 0.71797882102795585
	.quad	0x3feb7cd82418eafb              # double 0.85898978281269878
	.quad	0x3fc2ada6f5779f50              # double 0.14592444406229754
	.quad	0x3fc8d62029169220              # double 0.19403459554918445
	.quad	0x3fc5ee9a7811c9b0              # double 0.17134409773605119
	.quad	0x3fe407a2e4673661              # double 0.62593216524119211
	.quad	0x3fda2fc9df889cd8              # double 0.40916678266007755
	.quad	0x3fd103a481e26622              # double 0.26584732707996939
	.quad	0x3feae31f1f37d577              # double 0.84022480103764863
	.quad	0x3fe93a5ed9141cc4              # double 0.78837530515820519
	.quad	0x3fe5aa554f963da8              # double 0.67704263252556007
	.quad	0x3fe5321ca9566c01              # double 0.66236718248126192
	.quad	0x3f9ca7d35a6f0320              # double 0.027983953852302013
	.quad	0x3faeb8e179796e80              # double 0.060004278257761889
	.quad	0x3fe5b5d1cc35fe40              # double 0.67844476590102687
	.quad	0x3fc0eeba725d64d8              # double 0.13228540977687575
	.quad	0x3fd4ac40c1594a32              # double 0.32301348573415389
	.quad	0x3fe8b14517008fd7              # double 0.77163938992134262
	.quad	0x3fb7a389772ac718              # double 0.092339126199274424
	.quad	0x3fb74cfbb1ccc778              # double 0.091018420131858124
	.quad	0x3fe5e1abbdda467a              # double 0.68379771309464776
	.quad	0x3fd151c2027c2f02              # double 0.27061510317501825
	.quad	0x3fc6ea50f1b5396c              # double 0.17902576257842939
	.quad	0x3fec3f5180bc0381              # double 0.88272929328387317
	.quad	0x3fc0793fd5c86b84              # double 0.12870023668878272
	.quad	0x3f71c5f9a149a400              # double 0.0043391944096606849
	.quad	0x3f91bf9254c0b260              # double 0.017332350180526368
	.quad	0x3fe16b823c3a6312              # double 0.54437362445159665
	.quad	0x3fd3a2a4946ac46a              # double 0.30680193418363066
	.quad	0x3fe75aab6f3da89c              # double 0.72981807448128988
	.quad	0x3feb1bfb5a958a15              # double 0.84716575329031463
	.quad	0x3fe60019f0d133f8              # double 0.68751236948594308
	.quad	0x3febf345756b30ad              # double 0.87344620641080939
	.quad	0x3feb326dbb64fb4e              # double 0.84990583992462532
	.quad	0x3fefd5ae602cde20              # double 0.99483412536841697
	.quad	0x3fc534d3e4ede2f4              # double 0.16567467382608181
	.quad	0x3fd31350b266a992              # double 0.29805390760397998
	.quad	0x3feb0224ca3bd949              # double 0.84401168345247257
	.quad	0x3fd5f1abd1371808              # double 0.3428754370801248
	.quad	0x3fede806a402cf8b              # double 0.93457347901720433
	.quad	0x3fcd0b48009ba014              # double 0.22690677671130344
	.quad	0x3fe02e630eacba82              # double 0.50566246858745978
	.quad	0x3fd1757e220183aa              # double 0.27279618569269337
	.quad	0x3fc5403daca83e0c              # double 0.1660229771664351
	.quad	0x3fd43f9c11defa70              # double 0.31638242478576384
	.quad	0x3f9c758087b6fec0              # double 0.027791984828353433
	.quad	0x3fe5a5ed421a995b              # double 0.67650473509710751
	.quad	0x3fc8c02ff5791b94              # double 0.19336509214391795
	.quad	0x3fe6778141c1e613              # double 0.70208800166364183
	.quad	0x3fdd0ec9f64a8b12              # double 0.45402764369843951
	.quad	0x3fda09087ca2f7e0              # double 0.40680133983175715
	.quad	0x3fa2e13d65ec71d0              # double 0.03687469357666695
	.quad	0x3fd5b19c31da6932              # double 0.3389654623839703
	.quad	0x3feafed0006eed0c              # double 0.84360504231099886
	.quad	0x3f85f1f4d5dcee00              # double 0.010715401436406147
	.quad	0x3fc80843fcf78d34              # double 0.187752245444338
	.quad	0x3fd9fd6b955e1516              # double 0.40609254442854714
	.quad	0x3fd238db4ad01112              # double 0.28472025209363594
	.quad	0x3fc43e6bf7212618              # double 0.15815496031636722
	.quad	0x3fdb6862f69b8548              # double 0.42824625094188606
	.quad	0x3fe4e9f769f2271d              # double 0.65356035893021025
	.quad	0x3fdd39492c8f5362              # double 0.45662144996213361
	.quad	0x3f9790d02fb4bd20              # double 0.023013356124633622
	.quad	0x3fe88b0bd406522a              # double 0.76697341357300286
	.quad	0x3fe5aebe8b165611              # double 0.67758109250525156
	.quad	0x3fb7e9fa6e85bb50              # double 0.093413974745755412
	.quad	0x3fe137903a195c50              # double 0.53803263995622252
	.quad	0x3fdab54ca8c4690c              # double 0.41731564026999091
	.quad	0x3fea8aff32617b2e              # double 0.82946739044186812
	.quad	0x3febda042c3a43f0              # double 0.87036331785395582
	.quad	0x3fee8882b58b083a              # double 0.95416388948093034
	.quad	0x3f8e3e22b7eea340              # double 0.014766951788105609
	.quad	0x3fd99436868aec6c              # double 0.39967120303089732
	.quad	0x3fe5ac679a2f955e              # double 0.67729549517086318
	.quad	0x3fdabaffa4e89c16              # double 0.41766348938330233
	.quad	0x3fee336a0cf0704e              # double 0.94377615477743304
	.quad	0x3fecb457348f9ff9              # double 0.89701423898532007
	.quad	0x3fc45e7fe4944918              # double 0.15913389836402625
	.quad	0x3fd759d863aee95c              # double 0.36485872015659537
	.quad	0x3fe6e6871f587b6e              # double 0.7156406032771494
	.quad	0x3fe0ebb235c15fa4              # double 0.52877150057883116
	.quad	0x3feb8f5b0c9252b7              # double 0.86124947028527898
	.quad	0x3fbced54b6a52818              # double 0.11299638232335985
	.quad	0x3fe03683b4233759              # double 0.50665459807508306
	.quad	0x3fe9dbdeeecddf2c              # double 0.80808970109408084
	.quad	0x3fce5568142d1b94              # double 0.2369814013020145
	.quad	0x3fc5972697dbbf8c              # double 0.16867525496445201
	.quad	0x3fe8533a618a88a0              # double 0.76015967417722052
	.quad	0x3fe9e1e455a0640a              # double 0.8088246986764045
	.quad	0x3faec2c6a1a310f0              # double 0.060079772215915983
	.quad	0x3fe8a304cc625f28              # double 0.76989974898149161
	.quad	0x3fe3ab9dd66672f9              # double 0.61469928622281522
	.quad	0x3fe28b9eae8ce6c1              # double 0.57954343883394455
	.quad	0x3fe963f0bc951591              # double 0.79344975311748744
	.quad	0x3fcab30df5ec682c              # double 0.20858931072217624
	.quad	0x3fe6d6136567618e              # double 0.71363229566036224
	.quad	0x3fefb5d17e6c0912              # double 0.99094462100791447
	.quad	0x3fd916452e1b4b98              # double 0.39198426725959612
	.quad	0x3fe02cb2080af131              # double 0.505455985744936
	.quad	0x3fd2676fb991c152              # double 0.28756325838096075
	.quad	0x3fef424ccb1a2c63              # double 0.97684325855642517
	.quad	0x3fbc77c08c18c688              # double 0.11120227260905768
	.quad	0x3fbe18d177a27598              # double 0.11756619616286057
	.quad	0x3fda8e9e04ab8612              # double 0.41495466667228798
	.quad	0x3fe01ea9e43b1be0              # double 0.50374311996790411
	.quad	0x3fb342eb2b3ad038              # double 0.075239847234855328
	.quad	0x3fdb43dc4f5b23e6              # double 0.42601688146220196
	.quad	0x3fab9f5a15f98920              # double 0.053950133497681074
	.quad	0x3fd6170bfef50054              # double 0.34515666864536354
	.quad	0x3fa2c4b7d9ba5ae0              # double 0.036657090499991218
	.quad	0x3fec20ed25f44af7              # double 0.87901933110182895
	.quad	0x3fdcd25ca2232db4              # double 0.45033946832401317
	.quad	0x3fbd8c6e03a94af0              # double 0.11542403783213806
	.quad	0x3fde6a04350762d8              # double 0.47522072962378337
	.quad	0x3fa7a117ec4ca220              # double 0.046150920481810909
	.quad	0x3fe388f0e7208139              # double 0.61046643392550159
	.quad	0x3fe0b6c8a9717223              # double 0.52231247991909802
	.quad	0x3fc3496adfe35634              # double 0.15067802364380756
	.quad	0x3fa0280364369fc0              # double 0.031555276854589476
	.quad	0x3fe458d3b5e945a2              # double 0.63584313897643008
	.quad	0x3f9547d23e40ebe0              # double 0.020781788873346474
	.quad	0x3fc045f4aa1ac6a8              # double 0.12713487916839949
	.quad	0x3fee72c4b1a282e1              # double 0.95150980657862416
	.quad	0x3fe3ef6547be8052              # double 0.62297309887436314
	.quad	0x3fe5ab9664b9db8d              # double 0.67719573662803756
	.quad	0x3fde51140cffb222              # double 0.47369862813391894
	.quad	0x3fe44f3c151cea26              # double 0.63467220424292203
	.quad	0x3fe3d32312caa41e              # double 0.61952356024005772
	.quad	0x3fccd76a400bfa28              # double 0.22532394530567612
	.quad	0x3fc841e582fa1e94              # double 0.1895110024963641
	.quad	0x3fe43b86d8b33976              # double 0.632266448252081
	.quad	0x3fe971d5a79e955c              # double 0.79514582384278353
	.quad	0x3fdc0fd810957aea              # double 0.43846704120180269
	.quad	0x3fa168b894c51ce0              # double 0.034002082977673487
	.quad	0x3fed8604f2c914fd              # double 0.92260978144682293
	.quad	0x3fd7e0a662b38a80              # double 0.37308654440690958
	.quad	0x3fe70cd88de80163              # double 0.7203181048971995
	.quad	0x3fda95ed62805bec              # double 0.41540083522107696
	.quad	0x3fcff3878d51bcdc              # double 0.24961943054538593
	.quad	0x3fef82f2f3194c30              # double 0.98473498802412074
	.quad	0x3fea2c2309e508ec              # double 0.81788780148079132
	.quad	0x3fe5c23dfa5e1e2c              # double 0.67996119403773525
	.quad	0x3fd29451b6f9efec              # double 0.29030268543988202
	.quad	0x3fea7d06e70a68fb              # double 0.82776208043222199
	.quad	0x3fad7ce6979c2da0              # double 0.057593542105759399
	.quad	0x3fe297a8d302eaa9              # double 0.58101311886942597
	.quad	0x3fe0131cc93e7d42              # double 0.5023330622242741
	.quad	0x3fef68aa789f0b83              # double 0.98152659949151688
	.quad	0x3fe2a5c55b4b35dd              # double 0.5827357085306023
	.quad	0x3fe675b255840a3d              # double 0.70186726286221524
	.quad	0x3fee440160ccb2e5              # double 0.94580143839047237
	.quad	0x3fd69101e5e1a0fa              # double 0.35260055016853153
	.quad	0x3fbee49302d56380              # double 0.12067526644876914
	.quad	0x3fec02b2cbd59b9a              # double 0.87532939731032688
	.quad	0x3fc465b9071880cc              # double 0.15935433241339181
	.quad	0x3fcd7187f66a1ae0              # double 0.23002719432789487
	.quad	0x3fee65e3b6fd0ad1              # double 0.94993768443995397
	.quad	0x3fe15209fab65129              # double 0.54126452414724213
	.quad	0x3fe28510f14a3902              # double 0.57874343039455334
	.quad	0x3fbbc0a65fc0fe20              # double 0.10840835416546968
	.quad	0x3fe93a2f6a4a9e0e              # double 0.78835268745473441
	.quad	0x3fee0c90855ac033              # double 0.93903375669288491
	.quad	0x3fc886b7ffcd8e5c              # double 0.19161128988627041
	.quad	0x3fc92a5f4ac10288              # double 0.19660559797377553
	.quad	0x3fed102c2be0366f              # double 0.90822418756006396
	.quad	0x3fd637616ae5b5ba              # double 0.3471301597517954
	.quad	0x3fb9e0a4f87824d0              # double 0.10108405176301294
	.quad	0x3fe23033d5d0323e              # double 0.5683840919533123
	.quad	0x3fe6fef3f5a0e07b              # double 0.71862218832303826
	.quad	0x3fd2a7910bd80108              # double 0.29147745281808612
	.quad	0x3fdb81ef2f02d80c              # double 0.42980556097916245
	.quad	0x3fd32581799db74a              # double 0.299164170041753
	.quad	0x3fe473c80b12f262              # double 0.63913347399609344
	.quad	0x3facf2f41eb0b6b0              # double 0.056541088816044804
	.quad	0x3fee5a3a968d69a3              # double 0.94851426510586057
	.quad	0x3fecc4776e3e8209              # double 0.89898273021759778
	.quad	0x3fea68bce662e578              # double 0.82528538701369225
	.quad	0x3fcb8bb0af0ecd0c              # double 0.21520050571198401
	.quad	0x3feedf519c597968              # double 0.96476059472096853
	.quad	0x3fc895c73ed3742c              # double 0.19207087104487763
	.quad	0x3fe007903a860eb4              # double 0.50092326574709611
	.quad	0x3fb0f6092d1b5588              # double 0.066254209053417168
	.quad	0x3fe2e41b0d73cc3c              # double 0.59034493091019824
	.quad	0x3fe95621befb213f              # double 0.79176413823100933
	.quad	0x3fee5379c62ff268              # double 0.94768990238624173
	.quad	0x3fe2b1049adab559              # double 0.58410864109979876
	.quad	0x3fcd09c14c5356c8              # double 0.22686020113785887
	.quad	0x3fc76fbbee273994              # double 0.18309735420775708
	.quad	0x3fd354a38c173448              # double 0.30204094582297047
	.quad	0x3fcaf7b545d5ee10              # double 0.21068445119804879
	.quad	0x3fe4c105b16dd01d              # double 0.64856228498547674
	.quad	0x3febf1bc1cd7593a              # double 0.87325864441917322
	.quad	0x3fe004ecc8670c88              # double 0.50060118809814558
	.quad	0x3fe05469bca413ac              # double 0.51030432552271554
	.quad	0x3fd557c17c03809c              # double 0.33348118887625744
	.quad	0x3fc87d97b512c06c              # double 0.19133278218714922
	.quad	0x3fe8662db13a4f42              # double 0.76247295965956874
	.quad	0x3fe5177fbed26d5f              # double 0.65911853094022976
	.quad	0x3fe6839a6798ba86              # double 0.70356483682356052
	.quad	0x3fe0ddee08355b71              # double 0.52709104159553821
	.quad	0x3fe999b6a561fd6a              # double 0.80001385022471294
	.quad	0x3fe024437e9794f3              # double 0.5044267151357914
	.quad	0x3feb95fb1ff89747              # double 0.86205822223994566
	.quad	0x3fdadefdc1ace494              # double 0.41986030496225024
	.quad	0x3fc944c6146286a0              # double 0.19741130824427433
	.quad	0x3fe74415addc7293              # double 0.72706111867190015
	.quad	0x3fef2532cc70997b              # double 0.97329082421929002
	.quad	0x3fea26097e96dda1              # double 0.81714319920040535
	.quad	0x3fea8146343cf218              # double 0.82828054621456015
	.quad	0x3feccb38b4f8ed4a              # double 0.89980731340566789
	.quad	0x3fde5f7fff93f332              # double 0.47457885702879132
	.quad	0x3fa00a0de9bbf750              # double 0.031326708585750596
	.quad	0x3fe1eab9f57d603d              # double 0.5599031252595591
	.quad	0x3fdafc771caee262              # double 0.42165925789917058
	.quad	0x3fdf992ffef142a6              # double 0.49372482201310175
	.quad	0x3fead8064a5b2b8e              # double 0.8388701870220403
	.quad	0x3fd845d5e7c3320c              # double 0.37926242478423045
	.quad	0x3fe55d0fe2dad843              # double 0.66761011416998206
	.quad	0x3fef4f841812ba1a              # double 0.97845654203212296
	.quad	0x3feda04fec13920b              # double 0.92581935986214725
	.quad	0x3fe3a36fbb19c4c7              # double 0.61370073836419514
	.quad	0x3fe0e6548840c0b4              # double 0.5281164799871676
	.quad	0x3fe112ab1cb38292              # double 0.53352885823922436
	.quad	0x3feb2c597d7c902c              # double 0.84916376599404008
	.quad	0x3fe737d6402c8979              # double 0.72556602987269436
	.quad	0x3feaf99054273a8f              # double 0.84296432911090047
	.quad	0x3fe503045293df32              # double 0.65661827209894441
	.quad	0x3fdae9b3c783d0be              # double 0.42051405414464316
	.quad	0x3fdc1d24c9695a40              # double 0.43927879017920546
	.quad	0x3fe48717667d7be6              # double 0.64149065034496
	.quad	0x3fe51e5e06b4c8b8              # double 0.65995694455911913
	.quad	0x3fd664edc174fc5c              # double 0.34991020099909576
	.quad	0x3fd8d9b234b5cc0c              # double 0.3882871165034778
	.quad	0x3feea76a6f66963b              # double 0.95793649442629857
	.quad	0x3fea23b6b32670b8              # double 0.81685957899346473
	.quad	0x3fd7f36d387071fc              # double 0.37423258315700969
	.quad	0x3fe30cac16c34a5a              # double 0.59529690214032915
	.quad	0x3fe7da142643f55b              # double 0.74537093614314232
	.quad	0x3fead6bc82417ceb              # double 0.83871293488109921
	.quad	0x3fe989bc7c5ed6bd              # double 0.79806350985628394
	.quad	0x3fc5e1acf6cd5090              # double 0.17094957400206967
	.quad	0x3fc56cd93e7141f8              # double 0.16738429593034687
	.quad	0x3fe2f465005864ec              # double 0.59233331744613116
	.quad	0x3fd6651c69d14e20              # double 0.34992132505178297
	.quad	0x3fef433a74e68087              # double 0.97695658523663631
	.quad	0x3febca88244f3f0c              # double 0.86847312061033354
	.quad	0x3fd59fea182c5d7a              # double 0.33788540230440101
	.quad	0x3fb2c9d43e3a3850              # double 0.073392167274705544
	.quad	0x3fdbfd99afb2757e              # double 0.43735353620453299
	.quad	0x3fe726990f9e21a8              # double 0.72346165705044019
	.quad	0x3fecde54c0e903bd              # double 0.90214002301956209
	.quad	0x3fe6667a7e6614d1              # double 0.7000095814443289
	.quad	0x3fe4ef4d8fbef129              # double 0.65421178889622411
	.quad	0x3fd97fdb31ecd246              # double 0.39842872500893056
	.quad	0x3fe3a513a0c1b6e6              # double 0.61390096090118784
	.quad	0x3fbf5d777a14ec08              # double 0.12251993875990774
	.quad	0x3fe2e6ce808c616d              # double 0.59067463976957202
	.quad	0x3fd3b0463f3ce114              # double 0.30763393569533659
	.quad	0x3fe29bad02518479              # double 0.58150339558427711
	.quad	0x3feb4eb424c67244              # double 0.85335738356258916
	.quad	0x3f5e71221b52d800              # double 0.0018580277513087218
	.quad	0x3fc893fdb0c3b29c              # double 0.19201632624698994
	.quad	0x3fd5e51c5594acda              # double 0.34210880620476092
	.quad	0x3fdb11627e3ddc3a              # double 0.42293608024869267
	.quad	0x3fe83f468a1a20c2              # double 0.75772406552371074
	.quad	0x3fbadd9028865460              # double 0.10494328488705795
	.quad	0x3fd42021f3618aee              # double 0.31446121947935424
	.quad	0x3fdd437ff82f0bac              # double 0.45724486576744527
	.quad	0x3fd1554622505104              # double 0.27082970953894425
	.quad	0x3fd50a2c49a3bb32              # double 0.32874591056217917
	.quad	0x3fb124d8dfcf76c0              # double 0.066968493119442307
	.quad	0x3fef322aeabd6c79              # double 0.97487398002284841
	.quad	0x3fd3db9a292d0cf4              # double 0.31027845402805032
	.quad	0x3fcc16cb248bf6c8              # double 0.21944560322292817
	.quad	0x3fe9cf99e3a03080              # double 0.80659193475868562
	.quad	0x3fcb9ec08b5044b0              # double 0.21578223040026989
	.quad	0x3fa977c1439cc0d0              # double 0.049741782668549228
	.quad	0x3fc6326762e10810              # double 0.17341320350720979
	.quad	0x3fbdb668ec061650              # double 0.11606460344599978
	.quad	0x3fd17b6837330f72              # double 0.27315717115947458
	.quad	0x3fdee8abaa9462ec              # double 0.48295108469169068
	.quad	0x3fc5e6472ad7c64c              # double 0.17109002677857388
	.quad	0x3fc472d235b04510              # double 0.15975406285773674
	.quad	0x3fe7f48afa3a37d3              # double 0.7486014258627115
	.quad	0x3fdb050b1aed80ce              # double 0.42218282346403846
	.quad	0x3fd4acac18ddd76a              # double 0.32303907802940179
	.quad	0x3fe42a2ca8cf6e4d              # double 0.63014824839360417
	.quad	0x3feebb7099ee541c              # double 0.96038084091799502
	.quad	0x3fe4663b588acfb1              # double 0.63747947019009221
	.quad	0x3fd0c1006987947e              # double 0.26177988343835767
	.quad	0x3fe70d35796117f4              # double 0.7203624125183965
	.quad	0x3fb00c1dbdd77228              # double 0.062684878204387062
	.quad	0x3fd5e789777c69e8              # double 0.34225689571908768
	.quad	0x3fe687ff8baa4027              # double 0.70410134580925365
	.quad	0x3fce40ea0986cf40              # double 0.23635602440992365
	.quad	0x3fd927c7a63cab3a              # double 0.3930529712112506
	.quad	0x3fa76ee483078350              # double 0.045767918581765543
	.quad	0x3fe8e36d7f794d71              # double 0.77776217362626998
	.quad	0x3fc07d301f4dd938              # double 0.12882043388862896
	.quad	0x3fe348b672602497              # double 0.60262605990387186
	.quad	0x3fccb2cf8f43d27c              # double 0.22420687194211897
	.quad	0x3fe0bd34f19502a7              # double 0.5230965345764006
	.quad	0x3fe25f246c48fa53              # double 0.57411404752185502
	.quad	0x3fe2a12d4cb5043b              # double 0.58217492086271905
	.quad	0x3fe77f8802d8e712              # double 0.73431778484448018
	.quad	0x3fe2de86da5c85c8              # double 0.58966391228403214
	.quad	0x3fd80ce9ca8cc692              # double 0.37578816204322962
	.quad	0x3fe6430206c996a9              # double 0.6956796772544368
	.quad	0x3fe770962870c589              # double 0.73249347590005798
	.quad	0x3fd0b004d0c552c8              # double 0.26074333560727014
	.quad	0x3fa66553e2daef80              # double 0.043741818849837522
	.quad	0x3fe39eab34aeb151              # double 0.61311874665765675
	.quad	0x3fafa1b02886e1e0              # double 0.061780457446221737
	.quad	0x3fea4fe70d373468              # double 0.82225372868709901
	.quad	0x3fd61319f46fb8bc              # double 0.34491585608237663
	.quad	0x3fa116b8aab16b90              # double 0.033376475178292897
	.quad	0x3fd77534537d87a2              # double 0.36652858880381178
	.quad	0x3fc508a9f6448734              # double 0.16432690167226272
	.quad	0x3fbd01f760882ef8              # double 0.11331125361192196
	.quad	0x3f9932062e042260              # double 0.024604889448740841
	.quad	0x3fecdc5b686b4b09              # double 0.9018990554271521
	.quad	0x3fe01e3c95c16cc3              # double 0.50369099854597044
	.quad	0x3fde6a24e40dd694              # double 0.47522852202323773
	.quad	0x3fabe0d1c06557f0              # double 0.05444961045820651
	.quad	0x3fc12ef5a5560a1c              # double 0.13424559186030727
	.quad	0x3fe2d472903ea430              # double 0.58843353436271251
	.quad	0x3fbedc5feb9c5340              # double 0.12055015089238186
	.quad	0x3fd9c427e6fefd2c              # double 0.40259740408142153
	.quad	0x3feea2048bc4d2d9              # double 0.9572775583133889
	.quad	0x3fec78b6090e7d23              # double 0.88973523873201932
	.quad	0x3fc09e2a899b2e04              # double 0.12982684821177781
	.quad	0x3fb28cd4c9ec29f0              # double 0.072461413667191499
	.quad	0x3febd0c626d48ad3              # double 0.86923511108428853
	.quad	0x3fe9264084edc3c1              # double 0.78591943705225031
	.quad	0x3fba2deb2b770090              # double 0.10226316271928426
	.quad	0x3fb475cc54408120              # double 0.079922457284287152
	.quad	0x3fd7f5d8cd8e7c78              # double 0.37438030313382553
	.quad	0x3fe580c989112078              # double 0.67197109957579837
	.quad	0x3fba85d0caf684f8              # double 0.1036043639674239
	.quad	0x3fe716f424c26066              # double 0.72155196361110252
	.quad	0x3fd12cd4c41f49d6              # double 0.26836127426682077
	.quad	0x3fe3c64771d81e22              # double 0.61795398936459756
	.quad	0x3fc1bc0e95421b78              # double 0.138551543121334
	.quad	0x3fe2f3c2ddc8bc23              # double 0.59225600545130808
	.quad	0x3fd6ff690359bc5e              # double 0.35933900191498036
	.quad	0x3fba165013ebef80              # double 0.10190296636932139
	.quad	0x3fa7e2a4155a3e10              # double 0.046651008230693347
	.quad	0x3fe01d6df0cf6291              # double 0.50359246285650461
	.quad	0x3fd739f8a5e460ac              # double 0.36291328621292496
	.quad	0x3fef53897bfc30b1              # double 0.97894739356845239
	.quad	0x3fe4e122ee096ac4              # double 0.6524824761539425
	.quad	0x3fb67c9edc5c6e78              # double 0.087839058684432092
	.quad	0x3fd3a12c3b558556              # double 0.30671220583288539
	.quad	0x3fe9323d9716f0ef              # double 0.78738288411798674
	.quad	0x3fe043f5137ba7bd              # double 0.5082955723312278
	.quad	0x3fbfa8dd20d2fef0              # double 0.12367040683147557
	.quad	0x3fe24bf06f17b12a              # double 0.57176992128146265
	.quad	0x3fe79d00e1b743c9              # double 0.73791545949108539
	.quad	0x3fd2d897f73f0112              # double 0.29446982522132814
	.quad	0x3fec0200946236d3              # double 0.87524441701108413
	.quad	0x3fe6178be3fd8918              # double 0.69037432221765282
	.quad	0x3fe55ef401a64819              # double 0.66784096071410481
	.quad	0x3fe392530a3d2599              # double 0.61161186218048436
	.quad	0x3fbe8a5dd5ca1fe8              # double 0.11929880589934749
	.quad	0x3fb74f89276b9ae0              # double 0.091057369350532991
	.quad	0x3fd058823d7d92e0              # double 0.25540214543279482
	.quad	0x3fd478ea57e11416              # double 0.31988009054140443
	.quad	0x3fcef0f293a41f60              # double 0.24172813614881772
	.quad	0x3faf400cb47deeb0              # double 0.061035534889893994
	.quad	0x3feda16c00f069a1              # double 0.92595482047481792
	.quad	0x3fd6c53baf6a878c              # double 0.35578815584641954
	.quad	0x3feb9c19c9e9a52f              # double 0.862805265770623
	.quad	0x3fc8877138d616cc              # double 0.19163337016305204
	.quad	0x3fefd7f149c67afc              # double 0.99511017235985788
	.quad	0x3fede46f6146d9a7              # double 0.93413514136664311
	.quad	0x3fb1a75764a238e8              # double 0.068959676808137638
	.quad	0x3fe8de9dbe85b3c2              # double 0.77717482768422763
	.quad	0x3febff846f079b75              # double 0.87494107900134444
	.quad	0x3fb2d91feebf0348              # double 0.073625560557968872
	.quad	0x3fe60b0932a9e17b              # double 0.68884715934022667
	.quad	0x3fc2a740c6e9336c              # double 0.14572915756653104
	.quad	0x3fedfdcaae2e4b0a              # double 0.93723043460553979
	.quad	0x3fe5fee6d21c0d3c              # double 0.68736592328097101
	.quad	0x3fb2c9d14d58e6c8              # double 0.073391991981135551
	.quad	0x3feef3e70f3242c7              # double 0.96727326362641796
	.quad	0x3fa159e0f38e58a0              # double 0.033888845187150851
	.quad	0x3fb6e80074f53ac8              # double 0.089477566293889699
	.quad	0x3fe8d06c2d8196d0              # double 0.77544220817500253
	.quad	0x3fd85ff443d7e22e              # double 0.38085657716104293
	.quad	0x3fe8ef93d8deb184              # double 0.77924530370141598
	.quad	0x3fee75326aa5c560              # double 0.95180626706693871
	.quad	0x3fbbb0d639851798              # double 0.10816706566137524
	.quad	0x3fee96408e259ee5              # double 0.95584132922246268
	.quad	0x3fd8c8e14827a3c4              # double 0.38726074262973165
	.quad	0x3fc3bbcdd9a28c8c              # double 0.15416882635790718
	.quad	0x3fe39ea9eaa7209b              # double 0.61311813192971287
	.quad	0x3fdd0eb7075eedc8              # double 0.45402312965208269
	.quad	0x3fad5ea1c4cf9340              # double 0.057362609171639267
	.quad	0x3fa7e377d9cb7d40              # double 0.046657319389618923
	.quad	0x3fe138859d4a65f2              # double 0.53814964981864777
	.quad	0x3fc613e022a0323c              # double 0.17248155298911338
	.quad	0x3fedd1e1fd6cfd5d              # double 0.9318704557153229
	.quad	0x3fdec78c384996fc              # double 0.48092942711660647
	.quad	0x3fe0d027630a8446              # double 0.52540940612755871
	.quad	0x3fece1b943719ee6              # double 0.90255416081069195
	.quad	0x3fea604c323250c5              # double 0.82425508312237439
	.quad	0x3fef4be0773a8535              # double 0.97801230704150177
	.quad	0x3fe60b2a10774a09              # double 0.68886283126841008
	.quad	0x3fe8af39ccc75303              # double 0.77138986583540292
	.quad	0x3fd962db8893cc46              # double 0.39665878617887917
	.quad	0x3fcf7275c050d5d8              # double 0.24568054094713321
	.quad	0x3fe28ce9b8ae4e38              # double 0.57970129080280852
	.quad	0x3fe191132f8ec8aa              # double 0.54895934380171707
	.quad	0x3fdeaa44ba35f83a              # double 0.47914236244821817
	.quad	0x3fe346b79ee83267              # double 0.60238247906233944
	.quad	0x3fd0746e8beeaf5c              # double 0.25710643449087001
	.quad	0x3fe2610e92a0dd3e              # double 0.57434776914934793
	.quad	0x3fd6bf3112d5af8c              # double 0.35541941489531648
	.quad	0x3fe078f8c607c7f2              # double 0.51476706197558841
	.quad	0x3fa406786acdb410              # double 0.039111865079441199
	.quad	0x3fe293f20c0c6d63              # double 0.5805597529719474
	.quad	0x3fe9aa05acce7d8f              # double 0.80200465918817254
	.quad	0x3fe8f65eb2e4fe2c              # double 0.78007445278484999
	.quad	0x3fead89abb24d490              # double 0.83894096900498205
	.quad	0x3fd718a7e6448496              # double 0.36087987410616884
	.quad	0x3fe213655a0f403c              # double 0.56486766423950696
	.quad	0x3fd5e14171d37050              # double 0.34187351337255212
	.quad	0x3fe0c2bac4e736d4              # double 0.52377069909717955
	.quad	0x3fee821dfb289098              # double 0.95338343672166825
	.quad	0x3fd89cbfc893e3d8              # double 0.38456720912614406
	.quad	0x3fe8a0f77b1f1959              # double 0.76964925810970464
	.quad	0x3fdaf886f16f0380              # double 0.42141889169220548
	.quad	0x3fc823d50dd37ebc              # double 0.18859351325135332
	.quad	0x3fef253520d2da78              # double 0.97329193507068989
	.quad	0x3fe555f44d8bb80a              # double 0.66674246926936687
	.quad	0x3fe3cb53a13b88fb              # double 0.6185701512406746
	.quad	0x3fd1c5a282161da8              # double 0.27768767074345613
	.quad	0x3fd203393e568e6a              # double 0.28144675338464842
	.quad	0x3fe8d8810835eac2              # double 0.77642871478686737
	.quad	0x3fe8a5a77fc02f04              # double 0.770221471322174
	.quad	0x3f9dd1713bb3e200              # double 0.02911927153488314
	.quad	0x3fe022c844797ba6              # double 0.50424588560041594
	.quad	0x3fe1ef2a50eb62e5              # double 0.56044498257241726
	.quad	0x3fe914021adcb82f              # double 0.78369240995903577
	.quad	0x3fdf53812e5ea7ae              # double 0.48947171715064541
	.quad	0x3fed879e2c11ab75              # double 0.92280491454344704
	.quad	0x3fd01f1d3d60431c              # double 0.25189906114342064
	.quad	0x3fd9180951f11bd0              # double 0.39209206583148859
	.quad	0x3fd0d9b346ffc368              # double 0.26328737195495089
	.quad	0x3fe4dd5aad32436e              # double 0.65202077701006345
	.quad	0x3fe231abdfdd517d              # double 0.56856340144672368
	.quad	0x3fe9517d715ef292              # double 0.79119751112701153
	.quad	0x3fd912ef59a453a8              # double 0.39178069833843177
	.quad	0x3fc6467e3d114190              # double 0.17402627927596059
	.quad	0x3fd2b5cb7509ada0              # double 0.29234587125275802
	.quad	0x3fba95a15b0a1ec8              # double 0.10384567711491421
	.quad	0x3fe005374e39f874              # double 0.50063672331431386
	.quad	0x3feb310afdf5388c              # double 0.84973668671752156
	.quad	0x3fe604a9222f9e0d              # double 0.68806893040613348
	.quad	0x3feb3954b43c5b11              # double 0.85074839784906164
	.quad	0x3fd1c8c80d144be2              # double 0.27787972714685172
	.quad	0x3fe3e7ce2f954189              # double 0.62204655927239216
	.quad	0x3fe36bc04d61b3ec              # double 0.60690322030643307
	.quad	0x3fc0ab8d22922570              # double 0.13023533046752389
	.quad	0x3fe8c7771d632e7c              # double 0.77434879054767646
	.quad	0x3feb81370a5cfcd8              # double 0.85952331565922702
	.quad	0x3fd1462b68afded2              # double 0.26990781043376189
	.quad	0x3feea5cb9e69219a              # double 0.95773869456847938
	.quad	0x3fbd4d272a050e10              # double 0.11445851112244321
	.quad	0x3fd5e3dafe3a5e38              # double 0.34203219248726979
	.quad	0x3f9be6a3634dc860              # double 0.027247002540612519
	.quad	0x3fc6cd6e50f94a64              # double 0.17814425424383551
	.quad	0x3fcfcebde010169c              # double 0.24849675598686793
	.quad	0x3fec01a0d7f32114              # double 0.87519876649551742
	.quad	0x3febeb8770baa7f3              # double 0.87250110642821566
	.quad	0x3fdd0e2e2b409c08              # double 0.45399049972405736
	.quad	0x3fde6049748f8e96              # double 0.47462688811195031
	.quad	0x3fcdb6b75ee24370              # double 0.23213855870246958
	.quad	0x3fe7a5f79c66f3de              # double 0.73900967166229825
	.quad	0x3fefc6df2d989ae7              # double 0.99302634149065915
	.quad	0x3fea8a73ee977062              # double 0.82940098380960259
	.quad	0x3fa272cb5ae21d70              # double 0.036032061428211359
	.quad	0x3fe9472d255bb543              # double 0.78993851944475357
	.quad	0x3fe6fb7001faec2c              # double 0.71819305788756571
	.quad	0x3fdc957ac2fb2710              # double 0.44662350693816766
	.quad	0x3fe9bc079dee4fc5              # double 0.80420285077934095
	.quad	0x3fd970e8e567459a              # double 0.39751646425892206
	.quad	0x3fa20f704180c820              # double 0.035274036403635245
	.quad	0x3fe7a567e4e024f9              # double 0.73894114210375428
	.quad	0x3fe9efb37839d3ca              # double 0.81051038247698526
	.quad	0x3fd77f69001c4eee              # double 0.36715149889754073
	.quad	0x3fe37b4242792325              # double 0.60879624350591099
	.quad	0x3fc88db4fb06bff8              # double 0.19182455308100521
	.quad	0x3fe15d2625e469d3              # double 0.54262072945430828
	.quad	0x3fe53d4e65ba867f              # double 0.66373367184515064
	.quad	0x3fdacf029ef1169e              # double 0.41888490220694929
	.quad	0x3fe037c1644eadb6              # double 0.50680608359600998
	.quad	0x3fea3f7ab8538849              # double 0.82024894715528618
	.quad	0x3fe8042da170410b              # double 0.75051003962474405
	.quad	0x3feb1b19eed5a33c              # double 0.84705826423041896
	.quad	0x3fee1345f4494daa              # double 0.93985269272018468
	.quad	0x3fcb720b7f13af68              # double 0.21441787438322568
	.quad	0x3feeaf405e902376              # double 0.95889299840301478
	.quad	0x3fd47b8a197118b0              # double 0.32004024967717282
	.quad	0x3fd272ccf17b10e6              # double 0.28825687009908874
	.quad	0x3fb45d57dbfc1568              # double 0.079549304206087634
	.quad	0x3febd5253f2f092b              # double 0.86976873722622849
	.quad	0x3f971237e0174680              # double 0.022530434658455167
	.quad	0x3fe1b22d8563ccd1              # double 0.55300022175506502
	.quad	0x3fdc4ae66788f550              # double 0.44207153426016976
	.quad	0x3fe49ec7533fed05              # double 0.64438215503415164
	.quad	0x3fee6dcb62048638              # double 0.95090264457775841
	.quad	0x3fbee045f96d1790              # double 0.12060963954453841
	.quad	0x3feb93a82b9fddc1              # double 0.86177452583699943
	.quad	0x3f99ffac09b33140              # double 0.025389373867072296
	.quad	0x3f72483a93221b80              # double 0.0044634140086888818
	.quad	0x3fd18164212e8856              # double 0.27352240791708959
	.quad	0x3fc469f5aeb21c54              # double 0.15948363332811033
	.quad	0x3fde76b00b79d74a              # double 0.47599412079522507
	.quad	0x3fb3110ab01642f0              # double 0.07447878645895023
	.quad	0x3fe1bf3770c631dd              # double 0.55459186578951469
	.quad	0x3fe158f32b0a0d4f              # double 0.54210813909632261
	.quad	0x3fe2c31bb305bca6              # double 0.5863169189959947
	.quad	0x3fd4b0d5c80f97f2              # double 0.32329315697859251
	.quad	0x3fea40b30dc67adb              # double 0.82039787950983667
	.quad	0x3fddba44730e5656              # double 0.4644938586801336
	.quad	0x3fdf6e9a203b9c32              # double 0.49112561366786445
	.quad	0x3fdcae6e2018ea62              # double 0.44814637312416583
	.quad	0x3fde2335f0f238fc              # double 0.47089909105206096
	.quad	0x3fcde9b0a4bb7ac8              # double 0.23369415324756049
	.quad	0x3fd9c9e29021586a              # double 0.40294708323688744
	.quad	0x3fe1eb8187c1ae9a              # double 0.55999828829722564
	.quad	0x3fd097e00824ce60              # double 0.25926972193994935
	.quad	0x3fd25c6660bdb1e2              # double 0.28688964316714138
	.quad	0x3fe785ad8796c785              # double 0.73506809694502862
	.quad	0x3fe0af4eb7425e1a              # double 0.52139983933278988
	.quad	0x3f9a295ab84c9340              # double 0.025548379420018863
	.quad	0x3febb8bc9e8e5dd6              # double 0.86630087821952872
	.quad	0x3fe3fdbd3dc54b40              # double 0.62472402634225688
	.quad	0x3fc3c6cd958dc080              # double 0.15450448801448502
	.quad	0x3fd518ba45677b48              # double 0.32963425424343429
	.quad	0x3fef339fd26151b3              # double 0.97505179490922555
	.quad	0x3fe6ef2dea4f76fd              # double 0.71669669879676656
	.quad	0x3fe7ea8dbe3e7844              # double 0.74738204152141252
	.quad	0x3fe85f50b1c1ddc9              # double 0.761635157758911
	.quad	0x3fd7092502d01e84              # double 0.35993314051345515
	.quad	0x3feed4db5faee867              # double 0.96348351181155755
	.quad	0x3fe8f52d9431ffc0              # double 0.779928960269892
	.quad	0x3fe1117323e7e8cd              # double 0.53338009846563639
	.quad	0x3fc53d29175dfd70              # double 0.16592897072767299
	.quad	0x3fe0c0e351dd98ff              # double 0.52354589452150424
	.quad	0x3fec9bd9c420b80c              # double 0.89402473741734089
	.quad	0x3fdbc0025f5c204e              # double 0.43359431564795592
	.quad	0x3fe0f9ba6ccc5aba              # double 0.53048440217647586
	.quad	0x3fbb9794e95502f8              # double 0.10778170296272183
	.quad	0x3fcee5ea94912f84              # double 0.24139148954634149
	.quad	0x3fc15e9ad0661c18              # double 0.13569960761762512
	.quad	0x3fe7d14c7d35e1fc              # double 0.74429916815921571
	.quad	0x3fe01de29cc14038              # double 0.50364809623898221
	.quad	0x3fd404f79d7c9eac              # double 0.31280317668504654
	.quad	0x3fe91be16a9619aa              # double 0.78465338533060458
	.quad	0x3fd976861552d822              # double 0.39785911638625937
	.quad	0x3fe14af0b51f45eb              # double 0.54039798140928264
	.quad	0x3fd117952daea8c4              # double 0.26706437550695861
	.quad	0x3fda2c800c0e817c              # double 0.40896607568176768
	.quad	0x3fd453ccab776e94              # double 0.31761471504953787
	.quad	0x3fdf99c93a362c18              # double 0.49376135525443621
	.quad	0x3fc34949aebfd7c0              # double 0.15067406685528617
	.quad	0x3fb6c9f8c85f4cf8              # double 0.089019345206270972
	.quad	0x3fe0d8b3b3a4612c              # double 0.52645287596081891
	.quad	0x3fe6c89bd4bc94f2              # double 0.71198836851240643
	.quad	0x3fdd5d789d22a45e              # double 0.45883002610441348
	.quad	0x3fda0acfebe501f6              # double 0.40690992390230407
	.quad	0x3feca774719f6448              # double 0.89544126693648085
	.quad	0x3fe1117fb97b0d17              # double 0.53338609911625923
	.quad	0x3fec994991a5f844              # double 0.8937118382161846
	.quad	0x3f8f1aa62b65f700              # double 0.015187547873888985
	.quad	0x3fef63b9d7a3d55b              # double 0.98092357747251968
	.quad	0x3fd609366154b3ee              # double 0.3443122816559584
	.quad	0x3fe835558adc6ed2              # double 0.75651051636983824
	.quad	0x3fe72f7cac5868f8              # double 0.72454675351335052
	.quad	0x3fe384cfe14341fc              # double 0.60996240612627117
	.quad	0x3fadbfd62a639e40              # double 0.05810422198720433
	.quad	0x3fef8367d5174366              # double 0.98479072207747431
	.quad	0x3fe2711df4efe887              # double 0.576308229821067
	.quad	0x3fe4ed024013c42e              # double 0.65393173708992491
	.quad	0x3fdc86571d040f06              # double 0.44569948037700191
	.quad	0x3fee0a6d80db46c3              # double 0.93877291838926913
	.quad	0x3fe42c2dd98e057a              # double 0.63039295664945816
	.quad	0x3fe239e5d777d578              # double 0.5695676048623417
	.quad	0x3fe7dff50ad31be0              # double 0.74608852495373056
	.quad	0x3fece295d0ea7492              # double 0.90265932849765051
	.quad	0x3fefeeced8a3368e              # double 0.99790136634847371
	.quad	0x3fcc329e2d24e5c4              # double 0.22029473499587315
	.quad	0x3fe35d9398ccaa3b              # double 0.60517291873595214
	.quad	0x3fe257ff3765e8bf              # double 0.57324181384981177
	.quad	0x3fb4849611a1f930              # double 0.080148104958401189
	.quad	0x3fc2377c302ee108              # double 0.14231827118579354
	.quad	0x3fe4e16a746a0e66              # double 0.65251658188976758
	.quad	0x3fe72de620a8a923              # double 0.72435289744069953
	.quad	0x3fcf30beb7d4e040              # double 0.24367507911824937
	.quad	0x3fa2c3d70cb157a0              # double 0.036650390910536901
	.quad	0x3fcdaec7c0dca3e8              # double 0.23189637105068006
	.quad	0x3fb379e017377180              # double 0.076078420322522433
	.quad	0x3fc4b1a03fa30b74              # double 0.16167071444769088
	.quad	0x3fe168318193fc35              # double 0.54396891887871013
	.quad	0x3fe017e94dc214d4              # double 0.50291886508116557
	.quad	0x3fe48de2b06d1868              # double 0.64232000787957322
	.quad	0x3fc33a5d09e72b3c              # double 0.15021861060662356
	.quad	0x3fefaff840825f8f              # double 0.99023068046061435
	.quad	0x3fec30f1d3ae85c4              # double 0.88097468704307191
	.quad	0x3fb84438f4b4f910              # double 0.094790992491628367
	.quad	0x3fd12f806f55fe4c              # double 0.26852427361152276
	.quad	0x3faba330bb140bd0              # double 0.053979418598849471
	.quad	0x3fe21d22e7248b99              # double 0.56605668206281046
	.quad	0x3fef8d3dd3e7d8b9              # double 0.98599139583418271
	.quad	0x3fe0ef6883640a3e              # double 0.52922464048635454
	.quad	0x3fa11fc03bf9d620              # double 0.033445365258483628
	.quad	0x3fc788c57eae0af0              # double 0.18386143384494558
	.quad	0x3fd3e3dc63b9c12e              # double 0.31078252543285856
	.quad	0x3fd3411d5c76e6b2              # double 0.30084928540928069
	.quad	0x3fccde789e7f24bc              # double 0.22553928126425216
	.quad	0x3fd4307950d7664a              # double 0.31545861143749632
	.quad	0x3fe49cd787832fae              # double 0.6441457411506144
	.quad	0x3fe939e0c047ffe6              # double 0.78831517748767221
	.quad	0x3fe3712b12168cb9              # double 0.60756448300198607
	.quad	0x3fc8f068e8056c50              # double 0.19483672455939649
	.quad	0x3f8a7254d73f6400              # double 0.012913382357440994
	.quad	0x3fe9fe28fb46924d              # double 0.81227540089873573
	.quad	0x3fde38ca0a9d8b0e              # double 0.47221613918934302
	.quad	0x3fe10aeadffa26e8              # double 0.532582700209983
	.quad	0x3fede3b6bc708e40              # double 0.93404709629653126
	.quad	0x3fe7ba70f009a336              # double 0.74150893099167692
	.quad	0x3fd17f96584bbd26              # double 0.27341230986253817
	.quad	0x3fee5824d2d5178e              # double 0.94825974634362509
	.quad	0x3fd6ea50b06da454              # double 0.35805146436047619
	.quad	0x3fc141b7c88b9000              # double 0.13481805126423296
	.quad	0x3fcd8a07968fb7ac              # double 0.2307748303568905
	.quad	0x3fc7a6d3e0b4d598              # double 0.18477867576590934
	.quad	0x3fb6d922f48c2670              # double 0.08925074072262773
	.quad	0x3f9d444c82ac3420              # double 0.02858085200846372
	.quad	0x3fabac6f6b349320              # double 0.054049951397507678
	.quad	0x3fde68245c931e7c              # double 0.47510632553574061
	.quad	0x3fecc28718763659              # double 0.89874605920494866
	.quad	0x3fea75dc0b530fb7              # double 0.82688715183075245
	.quad	0x3fd39081c6c4666e              # double 0.30569500361307334
	.quad	0x3fec69bc995eef68              # double 0.88790731387369437
	.quad	0x3fcf6eb383fe8328              # double 0.24556583352116346
	.quad	0x3fdcdb2546e93fa4              # double 0.45087558674731043
	.quad	0x3fd0ae7b6ca5ec24              # double 0.26064954385918981
	.quad	0x3fe2a060ca8da160              # double 0.58207740365200422
	.quad	0x3fdd9d7d96af1d3e              # double 0.46273746218908574
	.quad	0x3fd8f8570f78743a              # double 0.39015747557442959
	.quad	0x3fef1eab5355a53a              # double 0.97249380375175254
	.quad	0x3fb8f69c033bd340              # double 0.09751296118686259
	.quad	0x3fc5c5e9422595fc              # double 0.17010226945710361
	.quad	0x3fcd96f220f699ec              # double 0.23116900071654756
	.quad	0x3fe7387c3286b7e0              # double 0.72564515942007901
	.quad	0x3fe187716ca38d9a              # double 0.54778357714205872
	.quad	0x3fcb973339adba70              # double 0.21555176082934535
	.quad	0x3fe5b94726c4f78c              # double 0.67886693546437149
	.quad	0x3f9662c9e29a9e80              # double 0.021861223655518902
	.quad	0x3fd6c38ea2f15ab8              # double 0.35568586265928159
	.quad	0x3fe586233f1d8039              # double 0.67262422873682859
	.quad	0x3fd0c7dcf9a4968a              # double 0.26219868067924124
	.quad	0x3fe008bf2dbfe7a6              # double 0.50106772361254026
	.quad	0x3feb34fe98f66542              # double 0.85021905780300977
	.quad	0x3fc6f42b88faaea0              # double 0.17932647884787389
	.quad	0x3fbf64673f5f9f28              # double 0.12262578293995985
	.quad	0x3fc5a11225b5dbcc              # double 0.16897799340560338
	.quad	0x3fedae29cdb4fa55              # double 0.92751016785752916
	.quad	0x3fedd62d796caa8a              # double 0.93239473071783263
	.quad	0x3fe81a94770eacd8              # double 0.75324462178596274
	.quad	0x3fe469401976aff3              # double 0.63784794782031751
	.quad	0x3fb54b85de2a8530              # double 0.083183638324517472
	.quad	0x3fe3df3462d7e695              # double 0.62099665932983561
	.quad	0x3fe40d2f74803120              # double 0.62660954240849165
	.quad	0x3fe787718ce3860a              # double 0.73528363721214984
	.quad	0x3fe92a6268262716              # double 0.7864238771591967
	.quad	0x3fe22bbc28cc5634              # double 0.56783874481579355
	.quad	0x3fd58eaf04a0bc90              # double 0.33683371974888932
	.quad	0x3fce75e9a54a6598              # double 0.23797340937452982
	.quad	0x3fc68004d310c65c              # double 0.17578182512220308
	.quad	0x3fdf586e525d1278              # double 0.48977239650074678
	.quad	0x3fec242293fb991a              # double 0.87941101935283261
	.quad	0x3fef8752afa73569              # double 0.9852689200139767
	.quad	0x3fe0a254f879e1d3              # double 0.51981590776909525
	.quad	0x3fe4e77dbd962ae4              # double 0.65325819996482126
	.quad	0x3feaa5c257d20a5b              # double 0.83273427154956481
	.quad	0x3feb361ed12c19a9              # double 0.85035649160345372
	.quad	0x3fe411b6468a59fc              # double 0.62716211106709308
	.quad	0x3fcfc4306b88b458              # double 0.24817471743282016
	.quad	0x3fce024f9afe285c              # double 0.23444552486427284
	.quad	0x3fec6d5836401cf2              # double 0.8883477267817439
	.quad	0x3fed776fc65e007e              # double 0.9208296655997541
	.quad	0x3feb926547e1db82              # double 0.86162056006911336
	.quad	0x3fe5809a3ea1d50a              # double 0.67194854958384664
	.quad	0x3fc709eb2cb067bc              # double 0.17999019319614529
	.quad	0x3fef3defe2c07d6f              # double 0.97631067550166317
	.quad	0x3fedd43df24e6892              # double 0.93215844464727327
	.quad	0x3fe96ccfd6aa0da6              # double 0.79453269888511069
	.quad	0x3fe2fd4c6893bbc7              # double 0.59342022347652168
	.quad	0x3fa56e73340290f0              # double 0.041858291720275775
	.quad	0x3fd1bcd1caef9046              # double 0.27714962785671948
	.quad	0x3f8ebac269133fc0              # double 0.015004652816429487
	.quad	0x3fd12450c9b98580              # double 0.26784152698208885
	.quad	0x3fe1ef0781cd0618              # double 0.56042838432057618
	.quad	0x3fe7e1770050366d              # double 0.74627256451794965
	.quad	0x3feaeadfc35edb97              # double 0.84117115171726453
	.quad	0x3fef286ee45b57ec              # double 0.9736856899351074
	.quad	0x3fe0e3bf2c7ca412              # double 0.52780111969798527
	.quad	0x3fd28adbf05ff74e              # double 0.28972528909786355
	.quad	0x3fea1276d8c499b4              # double 0.8147539361714764
	.quad	0x3fecc013cfceda07              # double 0.89844694697859573
	.quad	0x3fd495444ec8fbf6              # double 0.32161052411896607
	.quad	0x3fd1c49b948a4fe4              # double 0.27762498384367817
	.quad	0x3febde860def9dd6              # double 0.870913531512026
	.quad	0x3fdc2d2abe9062c4              # double 0.44025677308813393
	.quad	0x3fe328c49dd747e6              # double 0.59872656658467061
	.quad	0x3fd8c8349c6bc7f8              # double 0.38721957469454038
	.quad	0x3fe7c7ad0367d057              # double 0.7431244913591496
	.quad	0x3fee13e1682eb06c              # double 0.93992681835289948
	.quad	0x3fdb543b54c18c56              # double 0.42701609875638746
	.quad	0x3fe57bc36171d8e6              # double 0.67135781318827692
	.quad	0x3fea370cc7b90eca              # double 0.81921996124625562
	.quad	0x3fd70419521edf84              # double 0.35962517757024437
	.quad	0x3fea52b807f95990              # double 0.82259751851488438
	.quad	0x3f7b2de708e85600              # double 0.0066355728909193168
	.quad	0x3fdce30fdda4c2c6              # double 0.45135876316912193
	.quad	0x3fdbf46f78ba851e              # double 0.43679415502454499
	.quad	0x3fd03b14f8bbcaa8              # double 0.25360607424151249
	.quad	0x3fddeec9941dd976              # double 0.46769942726623215
	.quad	0x3fe71ce7ff12be91              # double 0.72227859324444144
	.quad	0x3fda2f811fa32908              # double 0.40914943780502755
	.quad	0x3fe9edb610a8c520              # double 0.81026747945557886
	.quad	0x3fe6146693e9ea2f              # double 0.68999031915092768
	.quad	0x3fed3436103f7b70              # double 0.91262343572075899
	.quad	0x3fce43330188b464              # double 0.23642575812246769
	.quad	0x3fd30c71486881fc              # double 0.29763443060986083
	.quad	0x3fc6b344684b1840              # double 0.17734580128143485
	.quad	0x3fa9ce2a536f90d0              # double 0.050401041684183689
	.quad	0x3fc239176c72f550              # double 0.14236729426731154
	.quad	0x3fa5c7f4de619120              # double 0.04254117216695108
	.quad	0x3fe37319f8cd0df9              # double 0.60780047029442053
	.quad	0x3fd56455e4013604              # double 0.33424899355017623
	.quad	0x3fc14ac9cb052740              # double 0.13509485638706487
	.quad	0x3fecd31e93fe6b6d              # double 0.90077141671222949
	.quad	0x3fd6607cd4b8d794              # double 0.34963913701664606
	.quad	0x3fef9e29d2e6dc65              # double 0.9880570525337019
	.quad	0x3fd80232b134717c              # double 0.37513415627633839
	.quad	0x3fe513a51937c2fd              # double 0.65864806104045182
	.quad	0x3fd42485a8dc6e26              # double 0.31472913256013368
	.quad	0x3fa659cb6f123450              # double 0.043653828915105053
	.quad	0x3fd9fe1c17354f38              # double 0.4061346270220727
	.quad	0x3fef84af991c9370              # double 0.98494701294531062
	.quad	0x3f9c3e375472f800              # double 0.027581085709918796
	.quad	0x3feabdbb25da9ed2              # double 0.83566052811962721
	.quad	0x3fedb0a4288ec358              # double 0.92781265183848927
	.quad	0x3fe8d53d36a5d0d3              # double 0.7760301654184566
	.quad	0x3fea3cd890069849              # double 0.81992748384505731
	.quad	0x3fc31c7f641b1e7c              # double 0.149307178382731
	.quad	0x3fec4437133d0f5b              # double 0.88332704312822885
	.quad	0x3fe08d40c14d69a4              # double 0.51724279169439003
	.quad	0x3fc040acd89101f0              # double 0.12697372984440802
	.quad	0x3fec354b3caf10fc              # double 0.88150560238184949
	.quad	0x3fecd7870b3a0903              # double 0.90130951111521573
	.quad	0x3fcbd7238bf75304              # double 0.21750301679880846
	.quad	0x3fcb3611851dc7f0              # double 0.21258753776379491
	.quad	0x3fd4c0a589719d3e              # double 0.32425821707007063
	.quad	0x3fdd2fad38c910da              # double 0.45603495164347196
	.quad	0x3fd771338429e932              # double 0.36628425509083506
	.quad	0x3f97fbe88f85b700              # double 0.023421891937167594
	.quad	0x3fa6b241c1f2ae30              # double 0.044328741956033091
	.quad	0x3faac1cc9417f300              # double 0.052259820058656814
	.quad	0x3fd26ec4e3f947a4              # double 0.28801080954610314
	.quad	0x3fedec4cba5682d3              # double 0.9350951804554718
	.quad	0x3fefe4c0694a2596              # double 0.99667378010160479
	.quad	0x3fcaaf7520c06f34              # double 0.20847953890994975
	.quad	0x3fbcd57cd2e570b0              # double 0.11263256214937445
	.quad	0x3fbd1208e77a52b0              # double 0.11355643893541401
	.quad	0x3fe33ea86291ac7a              # double 0.60139865161671868
	.quad	0x3fe8c0994343e0a3              # double 0.7735105813763038
	.quad	0x3fd174abe2a0f800              # double 0.27274605876652913
	.quad	0x3fe43ad22f5ca41b              # double 0.63218030214659693
	.quad	0x3fe74bf1b813179a              # double 0.7280205340582484
	.quad	0x3fd524983e4fd23e              # double 0.33035856328141111
	.quad	0x3fd8e1af0b00b150              # double 0.38877464365466086
	.quad	0x3feed2517d4af597              # double 0.96317362281085905
	.quad	0x3fba223410804508              # double 0.10208440211160419
	.quad	0x3fe58a6fa8d7f0bd              # double 0.6731489465451187
	.quad	0x3fa304d4d3bd33d0              # double 0.037146235320143384
	.quad	0x3fc84a1a0ca172b0              # double 0.18976140610438597
	.quad	0x3fcc8dd2f8832fd0              # double 0.22307812818905726
	.quad	0x3fef7b5c3ab33adf              # double 0.98380862679354297
	.quad	0x3fe5d476dae50a20              # double 0.68218558075779256
	.quad	0x3f9340faf497d320              # double 0.018802567652488666
	.quad	0x3fedbf6ab215d4d1              # double 0.92961630613594981
	.quad	0x3fe374bc08592bb1              # double 0.60799981718570539
	.quad	0x3fe1e6de5cfd1d11              # double 0.55943220292911822
	.quad	0x3fef99cef5a317f0              # double 0.98752544380181284
	.quad	0x3fefbe662395a373              # double 0.99199206304648013
	.quad	0x3fe1521246228292              # double 0.54126847933010169
	.quad	0x3fe71cdf63b488b1              # double 0.72227448915170644
	.quad	0x3fdb2ebf234bdc5a              # double 0.4247281880083783
	.quad	0x3fee3d82f1662654              # double 0.94500872753378439
	.quad	0x3fe1ddab980d9ba5              # double 0.55830936143762655
	.quad	0x3fc72cc707a1a134              # double 0.18105399963975233
	.quad	0x3fe5f46b8bc8c7a0              # double 0.68608643819446868
	.quad	0x3fb0500786ac8f10              # double 0.063721151713761026
	.quad	0x3fdcc6132034e62c              # double 0.44958952088527115
	.quad	0x3fed2104bf942336              # double 0.9102805845041988
	.quad	0x3fe54b9bc9d42856              # double 0.66547955913234591
	.quad	0x3fe965e165d96d90              # double 0.79368657963225253
	.quad	0x3fc0e2aee5b780c0              # double 0.13191782204285651
	.quad	0x3feef2403f74666f              # double 0.96707165139669182
	.quad	0x3f74c1740fc78600              # double 0.0050673040063613506
	.quad	0x3fee2dc5be4bc3b9              # double 0.94308745543650396
	.quad	0x3fe640af01756c00              # double 0.69539594921968728
	.quad	0x3fd019036bcfb7fa              # double 0.25152669456917887
	.quad	0x3fde7466739db686              # double 0.47585450449592093
	.quad	0x3fdd9af5e624a622              # double 0.46258304095190017
	.quad	0x3fe42d7d9297520b              # double 0.63055304175446858
	.quad	0x3fe535edf32a5f26              # double 0.6628331899000599
	.quad	0x3fe5d6b85ef7b85e              # double 0.68246096180315496
	.quad	0x3fb935a206071af8              # double 0.09847462317621225
	.quad	0x3fe937461d38ed85              # double 0.78799730021948788
	.quad	0x3fe74aa880624ee5              # double 0.72786355090144339
	.quad	0x3fd802119aa1f48c              # double 0.37512626744121103
	.quad	0x3fd4521203b4b77a              # double 0.3175091777983351
	.quad	0x3fdd472bfb4d733c              # double 0.45746898213637954
	.quad	0x3fcc9076549a8efc              # double 0.22315863734285546
	.quad	0x3fe2077de6b1e834              # double 0.56341452653510382
	.quad	0x3fe513cc440e253d              # double 0.65866673748056537
	.quad	0x3fe46d7db642633b              # double 0.63836560819172605
	.quad	0x3fd47b79dd6ab6ee              # double 0.32003637907733562
	.quad	0x3fcd10ce6100c18c              # double 0.22707538353416756
	.quad	0x3fcfb66b30ae5a8c              # double 0.24775447728162125
	.quad	0x3fe0d237cedc6fa2              # double 0.52566137697748538
	.quad	0x3fe1ace0904aa961              # double 0.55235317403757389
	.quad	0x3fef9e9503025773              # double 0.98810816371654508
	.quad	0x3fc3ff6fbdc67e28              # double 0.15623280302405473
	.quad	0x3fc00ef2ab592824              # double 0.12545617453207669
	.quad	0x3fe78a7c0330536c              # double 0.73565483687216959
	.quad	0x3fedd4ea009c4eab              # double 0.9322404872823048
	.quad	0x3feceb7c6de016d0              # double 0.90374585590390133
	.quad	0x3faaa311353b7250              # double 0.052025354145119551
	.quad	0x3fec62ad2d34a7bd              # double 0.88704546765551806
	.quad	0x3fe0357c0cefd38a              # double 0.50652887846682515
	.quad	0x3fe69004e9a83239              # double 0.70508046756874088
	.quad	0x3fd50edfa1016322              # double 0.3290328094786209
	.quad	0x3fef98127f3a29cc              # double 0.98731350754797508
	.quad	0x3fe4b56d52aade1e              # double 0.64714685579287212
	.quad	0x3fc0902431db8fcc              # double 0.12939884600120732
	.quad	0x3fdb9b9f8de78a42              # double 0.43137348993164804
	.quad	0x3fbcd92bb7728098              # double 0.11268876293843488
	.quad	0x3fdaf1e08cb1175c              # double 0.4210130094473834
	.quad	0x3f8b7fadac603300              # double 0.013427120993605879
	.quad	0x3fd22ce2812dacec              # double 0.28398954978065549
	.quad	0x3feb6770ebed19f8              # double 0.85637708739596885
	.quad	0x3fc0a19ec0d277b0              # double 0.12993225493567939
	.quad	0x3fdcb82eed0608e4              # double 0.44874165675004307
	.quad	0x3fe4e0c1455db672              # double 0.65243590877589797
	.quad	0x3fc38fff4c70c094              # double 0.15283194763606345
	.quad	0x3fe88bab62cedb78              # double 0.7670494966358623
	.quad	0x3feace5814cadc9b              # double 0.83768848477383828
	.quad	0x3fef84a8a7ff2392              # double 0.98494370281069821
	.quad	0x3fca88d248c2d478              # double 0.20730045845781198
	.quad	0x3fec81a8fb199622              # double 0.89082764666517655
	.quad	0x3fe7175bf20a22e9              # double 0.72160146020277438
	.quad	0x3fe1c0db4249b998              # double 0.55479205080864613
	.quad	0x3fd084593b3d6174              # double 0.25807791504987354
	.quad	0x3fec73653aae2f0f              # double 0.88908635579125128
	.quad	0x3fd5c3deb540e238              # double 0.34007995319874196
	.quad	0x3fc4d3353a665918              # double 0.16269555427124582
	.quad	0x3fd39284244160c6              # double 0.30581763783039795
	.quad	0x3fe6f20462dba099              # double 0.71704310711085661
	.quad	0x3fe79201aa3a6f71              # double 0.73657305953700647
	.quad	0x3fbc549ee2b28a88              # double 0.1106662085972322
	.quad	0x3fdc9f4c68a72404              # double 0.44722280712136375
	.quad	0x3fd727c1aaefe7f8              # double 0.3618015450771277
	.quad	0x3f8015272e68f780              # double 0.0078528462446418867
	.quad	0x3feac027fe8102ee              # double 0.83595657069971963
	.quad	0x3fd7b85c3ccf8664              # double 0.37062745989360324
	.quad	0x3fdcb6a4128988b8              # double 0.44864751634862499
	.quad	0x3fdd60abd367a0c0              # double 0.45902534146308582
	.quad	0x3fd0f02860d2823e              # double 0.26465806441595763
	.quad	0x3febbd9c5702b21b              # double 0.86689583772892165
	.quad	0x3fbc2b8321d9f0a0              # double 0.11003894401977954
	.quad	0x3fba8447407b1758              # double 0.10358090709914103
	.quad	0x3fd308b50257e6ca              # double 0.2974064371952464
	.quad	0x3feee3c47db7fdba              # double 0.96530365518986305
	.quad	0x3fe017d3319e7f28              # double 0.50290832225070847
	.quad	0x3fd7d7ccfbea0768              # double 0.37254643059724524
	.quad	0x3fe7d4b98cfb0d9d              # double 0.74471738372124074
	.quad	0x3fa6f090bdd9bed0              # double 0.04480411832343878
	.quad	0x3fc7a5b157571b3c              # double 0.18474404110585307
	.quad	0x3fee0c0ed75d0701              # double 0.93897192061578505
	.quad	0x3fed1fae0220b8f3              # double 0.91011715331640486
	.quad	0x3feb39c087b0ff0a              # double 0.85079981329178733
	.quad	0x3fec7798fe7243d2              # double 0.88959932037880152
	.quad	0x3fd221a4e448a784              # double 0.28330347340908468
	.quad	0x3fd64663ceb25a46              # double 0.34804625687812452
	.quad	0x3fe088fbd231ce7b              # double 0.51672164014458077
	.quad	0x3fe344483f4698f7              # double 0.60208523138569958
	.quad	0x3fc9c8265beffbf4              # double 0.20142058838970878
	.quad	0x3fd2817686ce4966              # double 0.28915179409627567
	.quad	0x3fd413a0efd764f6              # double 0.31369803831110177
	.quad	0x3fbb5f228f214e60              # double 0.10692039484393367
	.quad	0x3fcea7b63f20b074              # double 0.23949316103369578
	.quad	0x3fd142d52c89f1fa              # double 0.26970414494988371
	.quad	0x3fb7444f8fda20e0              # double 0.090886089916355939
	.quad	0x3fbf8fd7a8c548b8              # double 0.12328861112954115
	.quad	0x3fd0ab7cc19f58ae              # double 0.26046675594751434
	.quad	0x3fe63468e1878d4b              # double 0.69389766739588177
	.quad	0x3fdefb111d575566              # double 0.48407390466066713
	.quad	0x3fed8ad0b6a3015c              # double 0.92319522544134313
	.quad	0x3fc49414de9511b4              # double 0.16076908939625201
	.quad	0x3fd0270cd5318430              # double 0.25238343066854707
	.quad	0x3fd2245944b1a602              # double 0.28346854885475647
	.quad	0x3fe77c25ab50fe37              # double 0.73390468082647586
	.quad	0x3fe5d3ea07c39b96              # double 0.68211843029426933
	.quad	0x3f9be1439b0fe480              # double 0.027226501788366608
	.quad	0x3fc649d30b8547dc              # double 0.17412794172793056
	.quad	0x3fe9eab5e985e7ef              # double 0.80990119562124885
	.quad	0x3feaa43094727ddd              # double 0.83254269593811225
	.quad	0x3fe41e9cc6f43faf              # double 0.62873686655256289
	.quad	0x3fe0ae667ba2f38b              # double 0.52128910205611712
	.quad	0x3fd2643472065f52              # double 0.28736601958506924
	.quad	0x3fe8e8f78372ef64              # double 0.77843833612085377
	.quad	0x3fb59c0a78707588              # double 0.084412245182155954
	.quad	0x3fe7c3c775104fb4              # double 0.7426488195801455
	.quad	0x3fc5ea107f9be184              # double 0.17120558005241204
	.quad	0x3fe60367ddbaa99b              # double 0.6879157381675215
	.quad	0x3fe6a801a702b23f              # double 0.7080086004185161
	.quad	0x3fe63e9d56f5a8c7              # double 0.69514338478372728
	.quad	0x3fe4ee81c2767311              # double 0.65411460858340054
	.quad	0x3fca59a887236770              # double 0.20586115454244291
	.quad	0x3fe35d3ea7d35eff              # double 0.60513241556597552
	.quad	0x3fe46e828efc37a1              # double 0.63848998953629998
	.quad	0x3fddf698cb7910b0              # double 0.46817607756043866
	.quad	0x3fd7892fb01d4f2a              # double 0.36774818609886728
	.quad	0x3fd02c9aa41c77da              # double 0.25272241617665048
	.quad	0x3fd146266a07624a              # double 0.26990661959056139
	.quad	0x3fe063dbf47e1372              # double 0.51218984367788623
	.quad	0x3fdb3bb225b0de38              # double 0.42551854782820753
	.quad	0x3fd6e58d8e2fefea              # double 0.3577608002231033
	.quad	0x3fcc7f25827289b8              # double 0.22263020390989907
	.quad	0x3fea924270f4c40b              # double 0.83035394727460365
	.quad	0x3fe3f016086b3b27              # double 0.62305738109885034
	.quad	0x3fe1ca69e2cf8489              # double 0.55595869349430516
	.quad	0x3fc08e2d10062890              # double 0.12933886797356253
	.quad	0x3fd8021659f1eb4c              # double 0.37512739928904604
	.quad	0x3fd027b01bf7553a              # double 0.2524223588091733
	.quad	0x3fe58a1207fd5338              # double 0.6731043010755462
	.quad	0x3fe7d509671745e0              # double 0.74475546011870719
	.quad	0x3fd70e4d4574bbbc              # double 0.36024791510402188
	.quad	0x3fe00c98a02dd90e              # double 0.50153762135485791
	.quad	0x3fede35314a4232d              # double 0.93399957686879065
	.quad	0x3f9a471759e3f5c0              # double 0.025661816464880749
	.quad	0x3fe0da2c78389eca              # double 0.52663253288934553
	.quad	0x3fe18ccd426775e2              # double 0.54843771905478556
	.quad	0x3fa154edf5f23be0              # double 0.03385108592293995
	.quad	0x3fe26b491a8f6459              # double 0.5755963820221367
	.quad	0x3fae0106fb36bd40              # double 0.058601587453603887
	.quad	0x3fe4fb4256ede819              # double 0.65567128160842281
	.quad	0x3fdccc1557f7a9f4              # double 0.44995626059122107
	.quad	0x3fee264c8a993277              # double 0.94217516965870984
	.quad	0x3fe873b09b3d3728              # double 0.76412229843274293
	.quad	0x3fe1a1d17a22d411              # double 0.55100320677468251
	.quad	0x3feb79801be91b4e              # double 0.8585815949562432
	.quad	0x3fec3d72d9e70b7c              # double 0.88250105437360515
	.quad	0x3fe1a8a24aa2354d              # double 0.55183519913558998
	.quad	0x3fe3567f02cdb3c4              # double 0.60430861041606265
	.quad	0x3fd8fab6deededb4              # double 0.39030238886308699
	.quad	0x3fd25b61fac5aa2e              # double 0.28682755937066673
	.quad	0x3fbab3dcd7692430              # double 0.10430698641825198
	.quad	0x3f9fa9a82b451f40              # double 0.03092062725161715
	.quad	0x3fe82ce0d8ecf45b              # double 0.75547830932886073
	.quad	0x3fe02bbb3f64022f              # double 0.50533831006038621
	.quad	0x3fe2fb7cdfb62e6b              # double 0.59319919294052903
	.quad	0x3fd284991dea7a38              # double 0.28934314652898108
	.quad	0x3fd318e3c4d60fa2              # double 0.2983941480854303
	.quad	0x3fa44c1c56632bd0              # double 0.039643178506217347
	.quad	0x3fe0b39b8ce3868e              # double 0.52192475812280903
	.quad	0x3fd7e42e835d88d6              # double 0.37330210522317253
	.quad	0x3fdb2418d0f3dc4a              # double 0.4240781822731533
	.quad	0x3fe8c8baf86011e3              # double 0.77450321684642309
	.quad	0x3feaee372aa17fa7              # double 0.84157903982485471
	.quad	0x3fe18f4628d6bde8              # double 0.54873950935683258
	.quad	0x3fc46f61ba0a0fb8              # double 0.15964910110426245
	.quad	0x3feb99914cce4c59              # double 0.86249604226248799
	.quad	0x3fadba7759bc8010              # double 0.058063249305860265
	.quad	0x3fe6e046cb346755              # double 0.71487750709932618
	.quad	0x3fe640987232be6d              # double 0.69538519195880399
	.quad	0x3fe4606eb1ca3786              # double 0.63677153324691527
	.quad	0x3fb5f130b0d82210              # double 0.085711520361776871
	.quad	0x3fe1cbb62b35d74b              # double 0.55611713828577913
	.quad	0x3fdbe7e212da48ba              # double 0.43602802125054618
	.quad	0x3fef69508213b5e9              # double 0.98160577207243904
	.quad	0x3fc71a05f01d69b0              # double 0.18048166488990836
	.quad	0x3fddee5c95cd76be              # double 0.46767344121131404
	.quad	0x3fec7c74e237f62b              # double 0.89019245322532947
	.quad	0x3fca1368debe5a30              # double 0.20371733547354287
	.quad	0x3fde058342adbdd2              # double 0.46908647071447007
	.quad	0x3fecb482745ac266              # double 0.89703486180776504
	.quad	0x3fce17b8ddabc548              # double 0.23509894202974579
	.quad	0x3fd3474c5589d12e              # double 0.30122669556955628
	.quad	0x3fe57d3a8365c4e2              # double 0.6715366903646578
	.quad	0x3fe09414e7b808f2              # double 0.51807637460322398
	.quad	0x3fc23a77a9b98418              # double 0.14240928447091572
	.quad	0x3fea671acadc7dd7              # double 0.82508601781222068
	.quad	0x3fe92ce7112897b9              # double 0.78673127509386298
	.quad	0x3fadc63d4e787e80              # double 0.058153072194042643
	.quad	0x3fecf6cefb953930              # double 0.90512799393926535
	.quad	0x3fdfc897e74c0146              # double 0.49661824786746356
	.quad	0x3fbe5934e5523480              # double 0.1185486850610733
	.quad	0x3f8adb3593f01a80              # double 0.013113421036917261
	.quad	0x3fe8bd5d518a23cd              # double 0.77311578679756965
	.quad	0x3fe652d31bb811b2              # double 0.69761042989607902
	.quad	0x3fc1bd8898072870              # double 0.13859660552253983
	.quad	0x3f8c562cc96cea80              # double 0.013836240670220379
	.quad	0x3fea572bea1c15c8              # double 0.82314105724861353
	.quad	0x3fe27b58664752bf              # double 0.57755680061617187
	.quad	0x3fe8773ddd97122e              # double 0.76455586699791467
	.quad	0x3fedeb97fe84201a              # double 0.93500899992159536
	.quad	0x3fc4c24ebb370d00              # double 0.16217979565963248
	.quad	0x3fe35957f8f620ef              # double 0.60465620637208228
	.quad	0x3fee4390741da370              # double 0.9457475917707665
	.quad	0x3fe6b968c6f32cbc              # double 0.7101329694500218
	.quad	0x3fe4c057cc9cc809              # double 0.64847936595310884
	.quad	0x3fd1ee7ca38a1bbe              # double 0.28018108339932357
	.quad	0x3fed5f7dd225f11d              # double 0.91790667576382001
	.quad	0x3fe58f88e7988bf6              # double 0.67377133592196858
	.quad	0x3fb75d35ed1a39c8              # double 0.091266031633700284
	.quad	0x3fed74a191daaca0              # double 0.92048719870708239
	.quad	0x3fe500a117975171              # double 0.65632681472429344
	.quad	0x3fe7ba7f8137094f              # double 0.74151587712575828
	.quad	0x3fe84e23d8c0f909              # double 0.75953857741095121
	.quad	0x3feaa9e52331251b              # double 0.83323914407188526
	.quad	0x3fea37a1baf54a67              # double 0.81929098620669272
	.quad	0x3fea9131dc8030f1              # double 0.83022397104789836
	.quad	0x3fb317816bca99c0              # double 0.074577416244756556
	.quad	0x3fdc3b64b495f6de              # double 0.44112508426029062
	.quad	0x3fd0f20bc382b806              # double 0.26477331250032454
	.quad	0x3fdd59a0f4988184              # double 0.45859550367642776
	.quad	0x3fd5f0ae5482f3b4              # double 0.34281500104026041
	.quad	0x3fe8a102a0e68e29              # double 0.76965457368755097
	.quad	0x3fdd6bdd1f3fa796              # double 0.45970848132730546
	.quad	0x3fcf6ce9086fc5b0              # double 0.24551117813056811
	.quad	0x3fe9280d0e025e6c              # double 0.78613903747732427
	.quad	0x3fd871550eaa09b0              # double 0.38191725189258374
	.quad	0x3febdcc4ced34ef9              # double 0.87069931407538015
	.quad	0x3fd342bf19e68f10              # double 0.30094888238294093
	.quad	0x3fc9412f2f6088d4              # double 0.1973017674764096
	.quad	0x3fd340c6866cb52c              # double 0.30082858207136343
	.quad	0x3fef48b09e7d9f8c              # double 0.97762328105180662
	.quad	0x3fee94bc98ccb95b              # double 0.95565633624736834
	.quad	0x3fdebe0718b01146              # double 0.48034837160982524
	.quad	0x3fdfe31df3b74b96              # double 0.49823712158575384
	.quad	0x3fee71395b089551              # double 0.95132129459367765
	.quad	0x3fc6fcd94eb8a614              # double 0.17959133476078704
	.quad	0x3fbf31eccad5e350              # double 0.12185554458654946
	.quad	0x3fc1aecc137fa60c              # double 0.13814688636857431
	.quad	0x3fe2d307e2a5e688              # double 0.58826059596249625
	.quad	0x3fec16c4d4af1cd8              # double 0.87777940311289182
	.quad	0x3fe9e5d3e653e405              # double 0.80930514322165037
	.quad	0x3fa9f8a204e8eb40              # double 0.050725043391557367
	.quad	0x3fc6288d22ba678c              # double 0.1731125278063782
	.quad	0x3fed1e47e1a69666              # double 0.90994638512047454
	.quad	0x3fc822073b017004              # double 0.18853845959790771
	.quad	0x3fc214dd7942cc38              # double 0.14126175328201085
	.quad	0x3fea7ba01a9ac30d              # double 0.82759099193762753
	.quad	0x3fdf92d9f5bd0570              # double 0.49333809850585109
	.quad	0x3feff51d05ce188e              # double 0.99867106565285879
	.quad	0x3fe0d8e298e27a5b              # double 0.52647523746766056
	.quad	0x3fe68bf29120dc3a              # double 0.70458343835242165
	.quad	0x3fd5139333cda9be              # double 0.32931976374552707
	.quad	0x3fcd0550030ee2b8              # double 0.22672462605784971
	.quad	0x3fd0eafd911b62b6              # double 0.26434268160441421
	.quad	0x3fe6012912e2d76c              # double 0.68764165581408809
	.quad	0x3fe165912ec75d26              # double 0.54364833008267932
	.quad	0x3febf10a8f326aae              # double 0.87317398040916827
	.quad	0x3fe52559d7142b6f              # double 0.66080944068504077
	.quad	0x3fd4090e19eab8c4              # double 0.31305267840333451
	.quad	0x3f7c5d50b8378080              # double 0.006924929915356981
	.quad	0x3fcdcf37c7b44e8c              # double 0.23288628817737267
	.quad	0x3fd1c60e5c940e44              # double 0.27771338501790788
	.quad	0x3fec2d37a64219fd              # double 0.88051969978624778
	.quad	0x3feea56cd0b2e31a              # double 0.95769348870735205
	.quad	0x3fb738922f975228              # double 0.090706955546303036
	.quad	0x3fbbb3e1e05a7598              # double 0.10821353652359844
	.quad	0x3fc3fc7c36ea728c              # double 0.15614273721157124
	.quad	0x3fbc06b85c028268              # double 0.10947754141171517
	.quad	0x3fc80ba1811b3c50              # double 0.18785494617484
	.quad	0x3fae0eb91959e710              # double 0.058706077904345233
	.quad	0x3fe41b5bca68d9fb              # double 0.6283396676361116
	.quad	0x3fc05795ace69a00              # double 0.12767287199422128
	.quad	0x3fecbf3870096079              # double 0.89834234125284163
	.quad	0x3fc75af3c2dfac90              # double 0.18246314063376134
	.quad	0x3f5c18fd5b910c00              # double 0.0017149423786271267
	.quad	0x3fe1c2bb36d57b3a              # double 0.55502091130970332
	.quad	0x3fdb7f391aa3c89c              # double 0.42964007951298711
	.quad	0x3fdcd2786bd4173c              # double 0.45034609346508936
	.quad	0x3fe1937c89114786              # double 0.54925371905322673
	.quad	0x3fd01b027e8c515e              # double 0.25164854391302593
	.quad	0x3fe09a92eccd9d56              # double 0.51886888743039594
	.quad	0x3fce41bdb1c4ab38              # double 0.23638125591363646
	.quad	0x3fcee7aa77cc71c4              # double 0.24144488191167401
	.quad	0x3fd11a80d92fe918              # double 0.26724263391192116
	.quad	0x3fdf5dc0f22fea90              # double 0.49009727145281889
	.quad	0x3fe3fcda7deb0560              # double 0.62461590379113474
	.quad	0x3fd7a10e131dd660              # double 0.36920501582003418
	.quad	0x3fe96a0e4c37dea8              # double 0.79419627081275213
	.quad	0x3fe54000ddc3b215              # double 0.66406291306845111
	.quad	0x3fb770425f2cd350              # double 0.091556690441234822
	.quad	0x3fd33e049357f47c              # double 0.30066027058621336
	.quad	0x3fed68274692e4b0              # double 0.91896404060311987
	.quad	0x3fc5694ac9694a98              # double 0.16727576097999441
	.quad	0x3feaa97a67fe3109              # double 0.83318825064773805
	.quad	0x3fd60cd8c0c43dae              # double 0.34453409981594063
	.quad	0x3fe3142c89dbdcad              # double 0.59621264386705308
	.quad	0x3fc8e44e8ff9d2f0              # double 0.19446737318107621
	.quad	0x3fd9872328dce2f2              # double 0.39887312880050196
	.quad	0x3fce57aa07dd6e88              # double 0.23705029853850967
	.quad	0x3fa296aed50bcb40              # double 0.036305869585609774
	.quad	0x3fe596785d19ef0d              # double 0.67461794074867643
	.quad	0x3fdd2c38ab5c1678              # double 0.4558240579066033
	.quad	0x3f6e8bb46fab4f00              # double 0.0037287258286172742
	.quad	0x3fd05b22f0031cca              # double 0.25556252897918041
	.quad	0x3fe06d70061d2c04              # double 0.51335908121234342
	.quad	0x3fef441c26794d58              # double 0.97706420435353447
	.quad	0x3fc9bb2e3485446c              # double 0.20102479519349303
	.quad	0x3fef4669d04e00ef              # double 0.97734537777435359
	.quad	0x3f9555191f729820              # double 0.020832436127101173
	.quad	0x3feda0714c252c75              # double 0.92583527443038227
	.quad	0x3fe4d3f07d8bab35              # double 0.65087151070233651
	.quad	0x3fd871e0c3ae2612              # double 0.38195056065942012
	.quad	0x3f7693392d9fcb00              # double 0.005511496879978095
	.quad	0x3feee6298a073a92              # double 0.96559597929611329
	.quad	0x3fc9b427987ff778              # double 0.20081038423807818
	.quad	0x3fe803cc005b6fa8              # double 0.75046348638305904
	.quad	0x3fc549b2d91c5d20              # double 0.16631160355675778
	.quad	0x3faf3fca48cdf8b0              # double 0.061033555400159201
	.quad	0x3fb25dcce8afbee8              # double 0.071743780906895815
	.quad	0x3fe58c4e5eb18643              # double 0.67337721342864432
	.quad	0x3fdffe738b6d1f7c              # double 0.49990547767492166
	.quad	0x3fede0b512ee8ccd              # double 0.93368009278892716
	.quad	0x3fe864e44ff31b61              # double 0.76231589903987296
	.quad	0x3fe386a461ba61cd              # double 0.61018580520163257
	.quad	0x3fe704c0877a401e              # double 0.7193300863309593
	.quad	0x3fee9ff26cc7c7c5              # double 0.95702477689905463
	.quad	0x3fb63f840db7d708              # double 0.086906674718047694
	.quad	0x3fda5c45139ccd1c              # double 0.4118817035225264
	.quad	0x3fcad73c9a85632c              # double 0.20969350380871654
	.quad	0x3fec5474b032897f              # double 0.88530954755360358
	.quad	0x3feb76516bb87697              # double 0.85819312132999215
	.quad	0x3feb4899805bb16f              # double 0.85261225767093929
	.quad	0x3fd92707b6fad5ee              # double 0.39300721043704712
	.quad	0x3fe2cda2c61a8da4              # double 0.58760203067906902
	.quad	0x3fee0b9f04b7678d              # double 0.93891859933067823
	.quad	0x3fe2fd9e4fd06207              # double 0.59345927799864817
	.quad	0x3fd79a88b5d1ea08              # double 0.36880700832230717
	.quad	0x3fc3002907421ba8              # double 0.1484423909607504
	.quad	0x3fd0af3973004bc6              # double 0.26069484930593168
	.quad	0x3fe9423a0244c1bb              # double 0.78933430140573735
	.quad	0x3fcb10d688d045ac              # double 0.21145135574674379
	.quad	0x3fb7862881bc71b0              # double 0.09189084212670795
	.quad	0x3fd55c449a8e9b52              # double 0.33375659078085562
	.quad	0x3fa3532b18482c90              # double 0.037743899072745113
	.quad	0x3feda65a149bf535              # double 0.9265566256068839
	.quad	0x3fc6d1da90de9eb4              # double 0.17827922891341574
	.quad	0x3f32a80068d56000              # double 2.8467187879277489E-4
	.quad	0x3fea4763305a8eec              # double 0.82121428913202754
	.quad	0x3fe58f4459230c15              # double 0.673738645644678
	.quad	0x3fed37b597d1019a              # double 0.91305045749327296
	.quad	0x3fc913491e084ba8              # double 0.19590105024744031
	.quad	0x3fdadcf48e685264              # double 0.41973604113562701
	.quad	0x3fcf71db6b7a6678              # double 0.24566214321093915
	.quad	0x3feb25e9860707c9              # double 0.8483779542659643
	.quad	0x3feea54e871bce8e              # double 0.95767904652025648
	.quad	0x3fcb9d126fd5bc3c              # double 0.21573095761002203
	.quad	0x3fe6ae8a778991ae              # double 0.70880626055855145
	.quad	0x3fefce5edd663c82              # double 0.99394171945631649
	.quad	0x3fe3ae12fa3baacc              # double 0.6149992835392708
	.quad	0x3fdf5a29e4f4b914              # double 0.48987815245608712
	.quad	0x3fe5fd2396a3ecda              # double 0.68715075895252231
	.quad	0x3fbb07595fe35af8              # double 0.10558088866251214
	.quad	0x3fde96e15f284f88              # double 0.4779590062400918
	.quad	0x3fecfbfa5951caf4              # double 0.9057590240975899
	.quad	0x3fe63c0aac58da19              # double 0.69482930814303068
	.quad	0x3fda063934f35dac              # double 0.40662985011064268
	.quad	0x3feb6cee19140ef3              # double 0.85704712770572511
	.quad	0x3fe765e16a495be3              # double 0.73118658789723801
	.quad	0x3fdc018e7e3882e8              # double 0.43759500814671393
	.quad	0x3fc7b807514e1cc8              # double 0.1853036067006768
	.quad	0x3fdc736a3ed25412              # double 0.44454437384530465
	.quad	0x3fe86596e3f9cb1c              # double 0.7624010517741655
	.quad	0x3fe3476ca04deb2b              # double 0.60246878919074243
	.quad	0x3fd5339e17b3349a              # double 0.33127548517661298
	.quad	0x3fdf7e80ece5043c              # double 0.49209616789090993
	.quad	0x3fd282ebc47813ac              # double 0.2892407816546505
	.quad	0x3fd37b9e6f8fed8a              # double 0.30442009825466043
	.quad	0x3fb529f685f615a8              # double 0.082671554284465487
	.quad	0x3fe305dd0c4c2eb2              # double 0.59446575548050462
	.quad	0x3fdf14fc8ad7ba18              # double 0.48565591391425889
	.quad	0x3fc23c493760b76c              # double 0.14246478275293428
	.quad	0x3fc9f6ca37aa24d0              # double 0.20284393041609983
	.quad	0x3fd84102c11a0bf0              # double 0.37896794183342219
	.quad	0x3fe63947d75be9a9              # double 0.69449226438819267
	.quad	0x3fe72b363c676435              # double 0.72402488515502361
	.quad	0x3fe58ffaaf531c82              # double 0.67382559054466662
	.quad	0x3fe509a31a1fe0c5              # double 0.65742640593000401
	.quad	0x3fe4ccb3fd0a3b1c              # double 0.64998816892498068
	.quad	0x3fba0f1bfedd8f10              # double 0.10179305050183651
	.quad	0x3fd5ab1c5aa38424              # double 0.33856877185286494
	.quad	0x3fe653d75fd677d0              # double 0.69773453443826305
	.quad	0x3fed4407cdbe5c73              # double 0.91455450233742253
	.quad	0x3fe26b159b2f4827              # double 0.5755718260718411
	.quad	0x3fe8c8766c679c59              # double 0.77447053120421139
	.quad	0x3f9bab98bb13a080              # double 0.027021776598218583
	.quad	0x3feadf8cbad2de26              # double 0.83978878487591113
	.quad	0x3fc506c8dbe50f8c              # double 0.16426954972314112
	.quad	0x3fe336f007b0376a              # double 0.6004562521136283
	.quad	0x3f93de357591c320              # double 0.01940234689795084
	.quad	0x3fed87a9062944d2              # double 0.92281008914337748
	.quad	0x3fdf8ea7fcc89df6              # double 0.49308204351333929
	.quad	0x3fef3e039c4e91ea              # double 0.97632008103078971
	.quad	0x3fe9db5b19ce1049              # double 0.80802683868433534
	.quad	0x3fe96a125ec0d657              # double 0.79419821268556745
	.quad	0x3fdf0f93506eb824              # double 0.48532564978347836
	.quad	0x3fca3c6981217774              # double 0.20496863179408431
	.quad	0x3fea3254a1abbc82              # double 0.81864387108170455
	.quad	0x3fc990acb0cc8dbc              # double 0.19972761757627022
	.quad	0x3fe8c30d08724428              # double 0.77380992555311412
	.quad	0x3fd5bf5ca5675c2a              # double 0.3398048033972737
	.quad	0x3fdd1924623a1786              # double 0.45465955345604703
	.quad	0x3fcce407f2baa334              # double 0.22570895530705004
	.quad	0x3fe3c1597d2d1fae              # double 0.61735224197854222
	.quad	0x3fda4fdcac876882              # double 0.41112439011124746
	.quad	0x3fbc67c170427730              # double 0.11095818510736133
	.quad	0x3fc0f9ff6ed60018              # double 0.13262932693396645
	.quad	0x3fda6d0b0b1163a4              # double 0.41290546494343006
	.quad	0x3fe06073cc3e2ed8              # double 0.51177396670524455
	.quad	0x3fe683025ee21186              # double 0.7034923413453249
	.quad	0x3fd6330a7ff67a32              # double 0.34686529632918728
	.quad	0x3fec3bd7fef61026              # double 0.88230514332872612
	.quad	0x3fa92e66735638a0              # double 0.049182130412291913
	.quad	0x3fe983c7089654ee              # double 0.7973361175269511
	.quad	0x3fc09e5f0e728ebc              # double 0.12983310895389433
	.quad	0x3fe5f2ff6d0355b5              # double 0.68591281215292688
	.quad	0x3fc8ca4636f77068              # double 0.19367292102731715
	.quad	0x3feced6f41e8753f              # double 0.90398371575034975
	.quad	0x3fe2b91d7280762a              # double 0.5850970493663159
	.quad	0x3fd87ed29e20774a              # double 0.38274064485618864
	.quad	0x3fe3de57257bcdeb              # double 0.62089116402642952
	.quad	0x3fe3b5c7be39a312              # double 0.6159399714789251
	.quad	0x3fa8f589c4bf0f10              # double 0.048748307482609943
	.quad	0x3fb972f7ea7a0048              # double 0.099410528893714489
	.quad	0x3fd257c22850c642              # double 0.28660634934485441
	.quad	0x3fcde176ad289a0c              # double 0.23344310240754884
	.quad	0x3feb0e622490f976              # double 0.84550578252655728
	.quad	0x3feb1355494ea883              # double 0.84611000364135724
	.quad	0x3fbc4262c9163630              # double 0.11038796815247376
	.quad	0x3fe3d25515202311              # double 0.61942533613282269
	.quad	0x3fd302a98fe3e554              # double 0.29703749706057647
	.quad	0x3fe4a29056165bb1              # double 0.64484421552594118
	.quad	0x3f96b6d857be9d80              # double 0.022181873660569007
	.quad	0x3fda35e30c7d8568              # double 0.40953899593122012
	.quad	0x3fc26e84dcb9382c              # double 0.14399777200236608
	.quad	0x3fd3fa29203be806              # double 0.31214359424450355
	.quad	0x3fbe643bbd369488              # double 0.1187169396349238
	.quad	0x3fe184f8a2241e13              # double 0.54748183887653779
	.quad	0x3fe5ff85add7c3cb              # double 0.68744167283704749
	.quad	0x3fee99aa15ad743d              # double 0.95625786050698702
	.quad	0x3fd50672d64d325c              # double 0.32851859023938856
	.quad	0x3fe914464710989a              # double 0.78372491721963233
	.quad	0x3fd7ee161ad83d32              # double 0.37390663739730023
	.quad	0x3fea55a906981f09              # double 0.82295657432493485
	.quad	0x3fb12b21a4c831e0              # double 0.067064383249266779
	.quad	0x3fd7fc309e44fb78              # double 0.37476745086671981
	.quad	0x3fdc9cba3af22e9a              # double 0.44706588512847534
	.quad	0x3fcce4dbef7d3700              # double 0.22573422616772376
	.quad	0x3fdd1b2ab5523668              # double 0.45478313166754569
	.quad	0x3fd1fd655f39e222              # double 0.28109106349396218
	.quad	0x3fea7942ee008a31              # double 0.82730242237841456
	.quad	0x3fea73a055a55d94              # double 0.82661453941084284
	.quad	0x3fed085186091c22              # double 0.90726543597054765
	.quad	0x3fd56ac840dddfe0              # double 0.33464247069013986
	.quad	0x3fe10a3e1860b48f              # double 0.53250031243591589
	.quad	0x3fdf110f589c5be0              # double 0.48541625646015341
	.quad	0x3fe3722cd85fb8f7              # double 0.60768739948778616
	.quad	0x3fe7bd5f92e67dd8              # double 0.74186686221576803
	.quad	0x3fe3ff2a990af24b              # double 0.62489824191249832
	.quad	0x3fea7b4ec6834cbf              # double 0.82755221149491109
	.quad	0x3fe7fcfce4c94a70              # double 0.74963230786154433
	.quad	0x3fe5db22756d8c03              # double 0.68299982962742012
	.quad	0x3fe2b22de012f503              # double 0.58425039066756346
	.quad	0x3fd3d75516d15a64              # double 0.31001784542369237
	.quad	0x3fe27f4566ef54ae              # double 0.57803602318258185
	.quad	0x3fce4d3b6bf24bd0              # double 0.23673193713020035
	.quad	0x3fda35ba2dc0238a              # double 0.40952925174547572
	.quad	0x3fd5003f55e4d65c              # double 0.32814010036540764
	.quad	0x3fe3c885ecba13ba              # double 0.61822792278018501
	.quad	0x3fe6a5c174148e49              # double 0.70773384735043365
	.quad	0x3fbd159ec8789600              # double 0.11361114877998801
	.quad	0x3fefe591d6b3bc87              # double 0.99677364286425607
	.quad	0x3fd59fd6af104018              # double 0.33788077446024678
	.quad	0x3f97a9b59381f820              # double 0.023108327034144449
	.quad	0x3fe90acdcd29334c              # double 0.78256883688445944
	.quad	0x3fea53ed211a20a9              # double 0.82274490800138722
	.quad	0x3fb1130c7fd452a0              # double 0.066696912010522968
	.quad	0x3fe527febd09e28a              # double 0.66113221093753904
	.quad	0x3fef978f02681d67              # double 0.9872508093839486
	.quad	0x3fadbf9d6464f7a0              # double 0.058102530007530406
	.quad	0x3fd53eb7ff6d1f64              # double 0.33195304817171789
	.quad	0x3fdd374b9878592e              # double 0.45649995698603874
	.quad	0x3fd7550ae874f2fc              # double 0.36456558895933688
	.quad	0x3fd6a29e98b6cbec              # double 0.35367550767403944
	.quad	0x3fcbca9c81c188f4              # double 0.21712070785276405
	.quad	0x3fc7af0514d1e39c              # double 0.18502868191333455
	.quad	0x3fb5e8e4c6c3eb90              # double 0.085584925200164585
	.quad	0x3fb8dd13d59137a8              # double 0.097123374596064793
	.quad	0x3febfffd8b5c34eb              # double 0.87499882906709325
	.quad	0x3f900cf390a36400              # double 0.015674405768411503
	.quad	0x3fe61a00cc3d40eb              # double 0.69067420855028894
	.quad	0x3fedc2b32815b618              # double 0.93001706914009485
	.quad	0x3fd6680d18f5c050              # double 0.35010077893730784
	.quad	0x3fcef9dc4d585dec              # double 0.24200013901348372
	.quad	0x3fe6092963b2f275              # double 0.6886183688398676
	.quad	0x3fd646489f9453de              # double 0.34803977569509736
	.quad	0x3fe5d00942b90dcc              # double 0.68164504081544797
	.quad	0x3fd3253b95cb9c9c              # double 0.29914750698521586
	.quad	0x3fec484bb03a54a3              # double 0.88382515353682256
	.quad	0x3fec4b6c25416edc              # double 0.88420684124454451
	.quad	0x3fe4b2af1881f6a1              # double 0.64681200777677728
	.quad	0x3fd038ede01711e8              # double 0.25347468265343176
	.quad	0x3fe26783e02a79d1              # double 0.57513612539679049
	.quad	0x3fe381e1378de2bd              # double 0.60960446215093322
	.quad	0x3fc899fe2690eadc              # double 0.19219948657140307
	.quad	0x3fd7de9311da09ea              # double 0.37295986884433197
	.quad	0x3feb2bbd8d6f5468              # double 0.8490894091033967
	.quad	0x3fc596ccd9cb52f8              # double 0.16866455683216208
	.quad	0x3fabc1674c981b60              # double 0.054209926700471867
	.quad	0x3fec052cb7436880              # double 0.87563167375198248
	.quad	0x3fcadf8ecbdefffc              # double 0.20994744257586706
	.quad	0x3fed6425d10fef19              # double 0.91847506363362463
	.quad	0x3fcadb7b077bd280              # double 0.20982301583685015
	.quad	0x3fd10d92dcf1d12a              # double 0.26645347191449054
	.quad	0x3fec252dedeb4384              # double 0.87953850239328845
	.quad	0x3fd0f7fba2454c48              # double 0.26513567778346614
	.quad	0x3feff45914c98784              # double 0.99857763347630212
	.quad	0x3fe38e740637984d              # double 0.61113930906572878
	.quad	0x3fcc32e635cabae4              # double 0.2203033220916587
	.quad	0x3feb6dd1ddb1330c              # double 0.85715573596243777
	.quad	0x3fc40be7916f0844              # double 0.15661329842811444
	.quad	0x3fc79186ffb32cf4              # double 0.18412864194247158
	.quad	0x3fd3d2ed209bbb08              # double 0.30974891838461405
	.quad	0x3fd7e3694fd2203a              # double 0.37325508875847258
	.quad	0x3fd74d5560c84d28              # double 0.36409506274613301
	.quad	0x3fc62200327ad9bc              # double 0.17291262116277817
	.quad	0x3fdab781b147292e              # double 0.4174503546934315
	.quad	0x3fd34b6578d6481e              # double 0.30147682953350052
	.quad	0x3faaa7a24bc76880              # double 0.052060195684775046
	.quad	0x3fd942743357dc2e              # double 0.39468102468476018
	.quad	0x3febc4b28f3862c5              # double 0.86776092503267732
	.quad	0x3fe282a6098c4749              # double 0.57844831337772817
	.quad	0x3fe3225a682fda43              # double 0.59794350003250718
	.quad	0x3fe28605423ab8b7              # double 0.57885992942262632
	.quad	0x3fe54536e5a398d7              # double 0.6646990285051072
	.quad	0x3fd82de55345de24              # double 0.3778012574398153
	.quad	0x3fe6aaa0f7e20ce6              # double 0.70832870878839738
	.quad	0x3fa67895a01893f0              # double 0.043888736527413985
	.quad	0x3fd93c5a8c79a288              # double 0.39430869787478473
	.quad	0x3fe4b975fce02cb7              # double 0.64763926877767275
	.quad	0x3fc6e96c2bb6362c              # double 0.17899849066127282
	.quad	0x3fe3c63850e69d03              # double 0.61794677544540411
	.quad	0x3fd76c4cd282e82e              # double 0.3659851127409891
	.quad	0x3fb225790ef74ba0              # double 0.070884290841873199
	.quad	0x3f81b1c74a694400              # double 0.0086398667891973702
	.quad	0x3fad31f460127e20              # double 0.057021748282974238
	.quad	0x3feb6ca8e5abb6d7              # double 0.85701413018770267
	.quad	0x3fb2682d98b11638              # double 0.071902131822832227
	.quad	0x3fadab804fc483b0              # double 0.057949075448284204
	.quad	0x3fea04ee0864459b              # double 0.81310178412438761
	.quad	0x3fee5c69c285b407              # double 0.94878089897758933
	.quad	0x3fdbb708b92e28ec              # double 0.43304651340498768
	.quad	0x3fdc5b238c334e8c              # double 0.44306267444083214
	.quad	0x3fec6e6ec11626da              # double 0.88848054611409144
	.quad	0x3fdce0591e498200              # double 0.45119312246063714
	.quad	0x3fe9ad75e7def627              # double 0.8024243859032979
	.quad	0x3fe6a488fde97c92              # double 0.70758485405157701
	.quad	0x3fe0e48f205883a2              # double 0.52790027921229332
	.quad	0x3fe1c06cdc78168a              # double 0.55473940906877428
	.quad	0x3f8e766c207b9240              # double 0.014874310246747346
	.quad	0x3fe9510a70bc29b6              # double 0.79114267366940427
	.quad	0x3fded3d57711074c              # double 0.48167931201543435
	.quad	0x3fe7bf6e6eb69f09              # double 0.7421180879946131
	.quad	0x3fb1b723a5878288              # double 0.069200733101306366
	.quad	0x3fe2e08b6a7c62a9              # double 0.58991022871039889
	.quad	0x3fd7e4ce11e1cb02              # double 0.37334014650620884
	.quad	0x3fdd144edb09b9fc              # double 0.45436450376919857
	.quad	0x3fc608410fa7d5a4              # double 0.17212689651902935
	.quad	0x3fdc1943b68de056              # double 0.4390420229679014
	.quad	0x3fef32ef57c0915f              # double 0.97496764315705408
	.quad	0x3f9af973aa910060              # double 0.026342208180949789
	.quad	0x3fca1a0ab9d7f7e8              # double 0.20391973566432786
	.quad	0x3f9bcc96432d9240              # double 0.02714762482664157
	.quad	0x3fee4044f530d059              # double 0.94534538162998694
	.quad	0x3fe626433424eb69              # double 0.6921707170907726
	.quad	0x3fdaa9f8c5113a40              # double 0.41662425274708781
	.quad	0x3fe39d06f4e43402              # double 0.61291835623126212
	.quad	0x3fcb089180bdedc4              # double 0.21119898592210806
	.quad	0x3fc59a797605b5b4              # double 0.16877668631370357
	.quad	0x3fedb4fffac415f7              # double 0.92834471681334108
	.quad	0x3fdef997196fcae4              # double 0.4839837788014576
	.quad	0x3fceb8e105111498              # double 0.24001705882452451
	.quad	0x3feebed65676de6d              # double 0.96079556357922302
	.quad	0x3fe11936805a00ca              # double 0.53432774609248068
	.quad	0x3fe8ef9dc841e563              # double 0.77925004112982454
	.quad	0x3fda153a62928cde              # double 0.40754565836159695
	.quad	0x3febefcf2e08f0dc              # double 0.8730235957259782
	.quad	0x3fc75e91a0f49014              # double 0.18257351264139798
	.quad	0x3fe358733edc97bc              # double 0.60454714086221584
	.quad	0x3fdf3315ff3e99c8              # double 0.48749303747390771
	.quad	0x3fa1fe405f1a3ad0              # double 0.035142909630953789
	.quad	0x3fe735ef3ce28fff              # double 0.72533380405047854
	.quad	0x3feb95da45b0e57b              # double 0.86204255687259435
	.quad	0x3fc6eb15ba9665cc              # double 0.17904922114102673
	.quad	0x3fe4469889417c85              # double 0.63361765678190862
	.quad	0x3fe867cea4d157fa              # double 0.7626717776390699
	.quad	0x3febe66797393a81              # double 0.87187556777810482
	.quad	0x3fc72fffce7d0b10              # double 0.18115232069438791
	.quad	0x3fe343be27c107f2              # double 0.60201938404520505
	.quad	0x3fb57742e8b9de48              # double 0.083851033990748225
	.quad	0x3fd18f2c5a665994              # double 0.274363601952609
	.quad	0x3fd869e215ce91b8              # double 0.38146259431439544
	.quad	0x3fa60c8b32479ff0              # double 0.043064451110524149
	.quad	0x3fc39cf0226ce388              # double 0.15322686844754352
	.quad	0x3fe5507a218a6c81              # double 0.66607386160775672
	.quad	0x3fb1b378fbe323a8              # double 0.069144784446634078
	.quad	0x3fe484f685ea6916              # double 0.64123083262828362
	.quad	0x3fdb07eb7550fa76              # double 0.42235838371917767
	.quad	0x3fe346aa06510c43              # double 0.60237599595746649
	.quad	0x3fdd01af0bbe318e              # double 0.45322776934406128
	.quad	0x3fe95aa22b47e3f9              # double 0.79231365636144269
	.quad	0x3fe7dcb529f08fa8              # double 0.74569185439439867
	.quad	0x3f77c10210c29680              # double 0.0057993012125386878
	.quad	0x3fd72ae8f34ea6f2              # double 0.36199401627037198
	.quad	0x3fce5240e632b520              # double 0.23688517799511377
	.quad	0x3faec3e521b578d0              # double 0.060088310589650029
	.quad	0x3fe0fd058f1462dc              # double 0.53088643975487626
	.quad	0x3fd5217a73e379b4              # double 0.33016835515254717
	.quad	0x3fec67780cc2f215              # double 0.88763048641664233
	.quad	0x3fe1c0246a9f1795              # double 0.55470486473562863
	.quad	0x3fe2553e154bca29              # double 0.57290558013329929
	.quad	0x3fd27b4d4acd213c              # double 0.28877575211346929
	.quad	0x3fe8eb7b8d746c9a              # double 0.77874543788802275
	.quad	0x3fd9b6bb837084be              # double 0.40177810512438927
	.quad	0x3fe21123e88b45b1              # double 0.56459231776005059
	.quad	0x3fecf662b0e7a5ca              # double 0.90507635642750839
	.quad	0x3fe0da62015bf9cc              # double 0.52665806069836085
	.quad	0x3fd17f3fef81b2e4              # double 0.27339170827217019
	.quad	0x3fe6ba139a0e2ebe              # double 0.71021442498155074
	.quad	0x3fc6aab87a69ba8c              # double 0.17708497979352378
	.quad	0x3fc54ba472fb757c              # double 0.1663709222256492
	.quad	0x3fda787096a0650c              # double 0.41360106191275814
	.quad	0x3fe5d26ea5cb9d8b              # double 0.681937526530349
	.quad	0x3fedf7fc228fb581              # double 0.93652159452692285
	.quad	0x3fc6af228204c548              # double 0.1772196898323648
	.quad	0x3fe88f3026b025e4              # double 0.76747901493325487
	.quad	0x3fdbc3809f365e0c              # double 0.43380752132495171
	.quad	0x3fe3e282c49a0d00              # double 0.62140024565488261
	.quad	0x3fdd04b5498d6342              # double 0.45341236288873088
	.quad	0x3fea538e8f73c18a              # double 0.82269981401445702
	.quad	0x3fd48d96553e43e6              # double 0.32114179920705366
	.quad	0x3fdb3f6f9d0a1858              # double 0.42574682556040022
	.quad	0x3fe3448f667f6f3b              # double 0.60211915988063625
	.quad	0x3fe8835f60d9d302              # double 0.76603669086634363
	.quad	0x3fef3c33763fc363              # double 0.97609875770113452
	.quad	0x3fe0456b929b3d38              # double 0.50847414621413289
	.quad	0x3fe602b85ef2a373              # double 0.68783205551618065
	.quad	0x3fe7a6497bfd0934              # double 0.73904871193398103
	.quad	0x3fe4a4bff6a4134d              # double 0.64511106655172912
	.quad	0x3fee4a23c329447e              # double 0.94655025594160214
	.quad	0x3fda023898734774              # double 0.406385563733344
	.quad	0x3fe462299ddea103              # double 0.63698273500361358
	.quad	0x3feff59a11b81bfb              # double 0.99873069248940227
	.quad	0x3fd9e0e0ebf39e04              # double 0.40435050050879817
	.quad	0x3fce808084f65874              # double 0.23829657070445232
	.quad	0x3fcfd92c4a2a489c              # double 0.24881509419771397
	.quad	0x3fea3b1d2945ecd2              # double 0.81971605359231092
	.quad	0x3fde3e53e07d9dfa              # double 0.47255417750281448
	.quad	0x3fb09c5c288239d0              # double 0.064885864152734785
	.quad	0x3fed978bfb23a9ed              # double 0.92474936533591079
	.quad	0x3feda83cd3ac2e68              # double 0.92678681700040233
	.quad	0x3fcd750da4da96c4              # double 0.23013468312745122
	.quad	0x3fc78918ff283938              # double 0.18387138804286862
	.quad	0x3fd2b0be0d3a6b0c              # double 0.29203749934974677
	.quad	0x3f74f70a74ff4c80              # double 0.0051184090115895531
	.quad	0x3faac787a4eebe80              # double 0.052303542025922134
	.quad	0x3fa460bc0b56b220              # double 0.039800526031602113
	.quad	0x3fe132ac24f52334              # double 0.53743560045504646
	.quad	0x3fea1f3577624f62              # double 0.81630967442695757
	.quad	0x3fe2a59af2b7719b              # double 0.5827154865797185
	.quad	0x3fe0c993b53b0811              # double 0.52460656544303863
	.quad	0x3fe63178c79fac1b              # double 0.69353903759963786
	.quad	0x3febd499f52eef53              # double 0.86970231902476269
	.quad	0x3fee21061dbb6672              # double 0.94153123671567429
	.quad	0x3fe955053eb9b5d0              # double 0.79162847758350985
	.quad	0x3fe27c0cea222392              # double 0.57764287690325689
	.quad	0x3fb556a3c34559f8              # double 0.083353266881523669
	.quad	0x3f8f75fd4bdbd200              # double 0.015361765744708045
	.quad	0x3fdfb1d569669824              # double 0.49522910397570485
	.quad	0x3fdde93d6f22921e              # double 0.46736083844214871
	.quad	0x3fea059728e3b763              # double 0.81318243013604918
	.quad	0x3fdd02e70efb8b74              # double 0.45330215895790293
	.quad	0x3fdc2b44334a55d4              # double 0.44014077195001033
	.quad	0x3f94a1798f25cbe0              # double 0.020147227632559495
	.quad	0x3fdc10660cb9eca8              # double 0.43850089304732842
	.quad	0x3fe44ea147b0a349              # double 0.63459838869048568
	.quad	0x3fe58a75832aa6ac              # double 0.67315173738935163
	.quad	0x3fdc67b602cbe1a8              # double 0.4438300158795081
	.quad	0x3fcd15e27433bb00              # double 0.22723036455086998
	.quad	0x3fd79869dccd3688              # double 0.36867758333833267
	.quad	0x3fdee7cf836a7994              # double 0.48289859613023478
	.quad	0x3fed846bc8fb6096              # double 0.92241467718396808
	.quad	0x3fe5e6493cf02240              # double 0.68436109449346105
	.quad	0x3fd34a89e350c5b4              # double 0.30142447661190919
	.quad	0x3feff6d4f16cf1b8              # double 0.9988808360426935
	.quad	0x3fc87c7a323c88b4              # double 0.19129874661400026
	.quad	0x3fcc0b7163134898              # double 0.21909921014463829
	.quad	0x3fe29fed196730b4              # double 0.58202223741093073
	.quad	0x3fc4b43e19b20700              # double 0.16175056700381418
	.quad	0x3fec22952eae1d5d              # double 0.87922152631010031
	.quad	0x3fe4758e7cdcb3ee              # double 0.63935017001278793
	.quad	0x3fec00588f5225fd              # double 0.87504222862588643
	.quad	0x3fd7e6a2dba7ffce              # double 0.37345191431813596
	.quad	0x3fd101804fc3b166              # double 0.26571662702078525
	.quad	0x3fd86c3ad1dbcbae              # double 0.38160582059861781
	.quad	0x3fb457dfa3fe8d40              # double 0.079465844667130803
	.quad	0x3fe796c66430507e              # double 0.73715514724837283
	.quad	0x3fe0aeb5930bd51b              # double 0.52132681579556406
	.quad	0x3fe02de0b4104d43              # double 0.50560031098067559
	.quad	0x3fbcec652c7a5e10              # double 0.11298210464371317
	.quad	0x3fe20e98ef6eddaa              # double 0.56428190960189295
	.quad	0x3fee80b5c2689cb9              # double 0.95321166963994763
	.quad	0x3fd3977b69405070              # double 0.30612073210182356
	.quad	0x3fdcc147eded0f76              # double 0.44929693446123709
	.quad	0x3fbf2ea2b8b9c370              # double 0.1218053532591179
	.quad	0x3fd1c3166235815c              # double 0.27753219214175373
	.quad	0x3fc6f90e427ea3b8              # double 0.17947557684717963
	.quad	0x3fe0af16306cc77e              # double 0.52137288530342096
	.quad	0x3fd4d2486f114a7c              # double 0.32533465238990522
	.quad	0x3feea0a031f4d1d4              # double 0.95710763699622214
	.quad	0x3fe663a0bcf2a8bc              # double 0.69966160682567802
	.quad	0x3fb67f26026e27b8              # double 0.087877631753285779
	.quad	0x3fd9874c76fd9224              # double 0.39888297672431094
	.quad	0x3f968f4ddfeeb2c0              # double 0.022031037132978382
	.quad	0x3fe653405e37fc95              # double 0.69766252901162551
	.quad	0x3fef9989c1b526c4              # double 0.98749244531173774
	.quad	0x3fe5d1a16f2ad5af              # double 0.68183967316024574
	.quad	0x3fb167d77c407e78              # double 0.06799074920172099
	.quad	0x3fd4665e4401c828              # double 0.31874806062035299
	.quad	0x3fcd86e41e8d5b90              # double 0.23067904941373429
	.quad	0x3fcbecd39e1b04d4              # double 0.21816487522122563
	.quad	0x3fe76894e6ab2670              # double 0.7315163140530796
	.quad	0x3fef03eb2fb39f9e              # double 0.96922835652093275
	.quad	0x3fdd868cd2b4997a              # double 0.46133728577333211
	.quad	0x3feb345411f654a5              # double 0.85013774402854791
	.quad	0x3fe99efa11567275              # double 0.80065635095850374
	.quad	0x3fdbf5a3b7dba128              # double 0.43686764674068224
	.quad	0x3fc8f9570fcee0b0              # double 0.19510925552254355
	.quad	0x3fee0e6ffb1031ae              # double 0.93926238094132031
	.quad	0x3fbbbd6910321470              # double 0.10835892339135156
	.quad	0x3fdc9906c9605638              # double 0.44683999696403331
	.quad	0x3fe67939d802f94a              # double 0.70229808988350695
	.quad	0x3fc315ac1f14e9b0              # double 0.14909888761196788
	.quad	0x3fe58f0b92caac77              # double 0.67371157331707721
	.quad	0x3fa1642e938e8830              # double 0.033967452537823184
	.quad	0x3fa517d9fee17020              # double 0.041197597850185952
	.quad	0x3fe4e92f45e1fb88              # double 0.65346492432569026
	.quad	0x3fe2a850840a92a1              # double 0.58304620541874297
	.quad	0x3fe5c5dd08777d05              # double 0.68040324834501631
	.quad	0x3fe9d90945f73086              # double 0.80774367966797977
	.quad	0x3fd6ebcb58c8262c              # double 0.3581417433748324
	.quad	0x3fe1934eaff2cb71              # double 0.54923185696530485
	.quad	0x3fdca70d744654be              # double 0.44769607882455975
	.quad	0x3fe9a1e43d853b99              # double 0.80101215377532065
	.quad	0x3fb18e84fe085ed0              # double 0.068580925006581639
	.quad	0x3fe5008f029576eb              # double 0.65631819252641088
	.quad	0x3fee4db8599c94b2              # double 0.94698731901430322
	.quad	0x3fe416045cebd874              # double 0.62768762730298855
	.quad	0x3f917755dac6e2a0              # double 0.017056790807802202
	.quad	0x3fd834216e958004              # double 0.37818179892747161
	.quad	0x3fe55806626e4282              # double 0.66699523186441945
	.quad	0x3fecfe423d6fed03              # double 0.90603744506316308
	.quad	0x3fea6c2be16a5af8              # double 0.82570451761679831
	.quad	0x3feb251e8b0342ea              # double 0.84828116560865152
	.quad	0x3fd532590468460e              # double 0.33119798117067567
	.quad	0x3fe0a689108714ff              # double 0.52032902935084724
	.quad	0x3fed7f5cb12fc685              # double 0.92179712874185837
	.quad	0x3fa5255bb8756680              # double 0.041300646082800263
	.quad	0x3fbf10876c081570              # double 0.12134596240510631
	.quad	0x3fec34801bc8a4d5              # double 0.88140874315754536
	.quad	0x3fe8d1778cc5eae0              # double 0.77556970114468626
	.quad	0x3fd23b2a5cb5e440              # double 0.28486117414246692
	.quad	0x3fecedee77867f14              # double 0.9040443739395152
	.quad	0x3fa09a2821c36550              # double 0.032426122781269329
	.quad	0x3fcd5151a54ea370              # double 0.22904415675773349
	.quad	0x3fce99709f4c7a08              # double 0.23905761507280965
	.quad	0x3fc47f517caef6c4              # double 0.16013544643458577
	.quad	0x3febc21b69b2a4de              # double 0.86744471210581842
	.quad	0x3fc25a07d4f83678              # double 0.14337251566796616
	.quad	0x3fd10aae1d8df4c6              # double 0.26627686392005179
	.quad	0x3fefdc67eff8821f              # double 0.99565502995762134
	.quad	0x3fec57f0fa4b9f8f              # double 0.88573502431698781
	.quad	0x3fd068db8ba2c0fe              # double 0.25639999996475626
	.quad	0x3fd273cd984d0a8a              # double 0.2883180606187713
	.quad	0x3fef6fd49c04bcb6              # double 0.98240118477214966
	.quad	0x3fe35d10acd06318              # double 0.60511049034821252
	.quad	0x3fec6b6155f38745              # double 0.88810793673858568
	.quad	0x3fe80d24cc0ffecd              # double 0.75160446029618699
	.quad	0x3fc912efa5d3e228              # double 0.19589038464597874
	.quad	0x3fac0c88e7963a80              # double 0.054783132810475088
	.quad	0x3fec5466c676f72a              # double 0.88530291330946409
	.quad	0x3fd1a546425b0962              # double 0.27571255188026644
	.quad	0x3fc96b5e07bde1b4              # double 0.1985890901376145
	.quad	0x3fc78ff547da0900              # double 0.18408075340636998
	.quad	0x3fed449dc5948dae              # double 0.91462601270580079
	.quad	0x3fc04488b46c56f4              # double 0.12709149179197932
	.quad	0x3feadf6284fcdca0              # double 0.83976865743797546
	.quad	0x3fc1bfd66c4b8a8c              # double 0.13866691863866654
	.quad	0x3f9d8680619772c0              # double 0.028833394962805015
	.quad	0x3fd372b5406fae82              # double 0.30387622158625771
	.quad	0x3fe7fff42108b4c8              # double 0.74999433948473726
	.quad	0x3fd01c9b887459e2              # double 0.25174606633791374
	.quad	0x3fcd4879f39227e0              # double 0.22877430337058424
	.quad	0x3fd9cb16572647ee              # double 0.4030204630918196
	.quad	0x3fc5f7d8aaa801c8              # double 0.17162617047143969
	.quad	0x3fe7423309935161              # double 0.7268309771557534
	.quad	0x3feefe833bae9a70              # double 0.96856843620919442
	.quad	0x3fe2a9e158e42068              # double 0.58323733674570821
	.quad	0x3fe31ddf6e82734a              # double 0.59739657958889691
	.quad	0x3fe4071a917ce173              # double 0.62586716094578632
	.quad	0x3fc653c955065b84              # double 0.17443195964434832
	.quad	0x3fdc7598f7108afa              # double 0.444677583002132
	.quad	0x3fd86854f77fe888              # double 0.38136791391264824
	.quad	0x3fd0170cc11c1670              # double 0.25140684946413838
	.quad	0x3fc8496c68e3d908              # double 0.18974070664962306
	.quad	0x3fefd5754785e6b1              # double 0.99480689973207436
	.quad	0x3fef9eb9ab653139              # double 0.9881256434978588
	.quad	0x3fa9cdc06c28f3c0              # double 0.050397885516282326
	.quad	0x3feb3f9bdd449aab              # double 0.85151475159076051
	.quad	0x3fe033bd1c167612              # double 0.5063157604778914
	.quad	0x3fef2c8e56be0245              # double 0.97418896619644412
	.quad	0x3f9a2eb2deedb580              # double 0.025568766457060743
	.quad	0x3fe10596607ff83f              # double 0.53193205688126699
	.quad	0x3fed6cbd2e0708cd              # double 0.91952380170575909
	.quad	0x3fe5b069a62f7694              # double 0.6777847524460463
	.quad	0x3fc80ef0649980e4              # double 0.18795590316859212
	.quad	0x3fb0f2c782233c30              # double 0.066204518577465121
	.quad	0x3fe751e94bab3511              # double 0.72874893931444451
	.quad	0x3fd92a623ddc6662              # double 0.39321189919573929
	.quad	0x3fec6a3955fa8346              # double 0.88796679299057568
	.quad	0x3fed883520d89323              # double 0.92287689604981826
	.quad	0x3fd5bad513a7d416              # double 0.33952834052553393
	.quad	0x3fcfe5d81e4558f4              # double 0.24920178869314891
	.quad	0x3fea76536089220b              # double 0.82694405417083894
	.quad	0x3fe787e63bb7e745              # double 0.73533927596802384
	.quad	0x3fe94f29e712faa5              # double 0.79091353542010678
	.quad	0x3fe6e25b61ba1e40              # double 0.71513146483716383
	.quad	0x3fe50c551d9bc757              # double 0.6577554300585956
	.quad	0x3fefdd5f70d2510e              # double 0.99577304873904082
	.quad	0x3fe3cf0e566d0c8b              # double 0.61902539138863355
	.quad	0x3fe5e59b69fd9ef0              # double 0.68427820874509671
	.quad	0x3fb512a5119178f8              # double 0.082315747059940381
	.quad	0x3fef6688798b33d5              # double 0.98126624812140994
	.quad	0x3fe34b4cbfe48d7e              # double 0.60294187048968673
	.quad	0x3fcbfb0e46a80000              # double 0.21859911394130904
	.quad	0x3fece036a075530d              # double 0.90236979808341433
	.quad	0x3fe726572ca6ce6b              # double 0.72343023987782595
	.quad	0x3fd62386c01178f2              # double 0.34591835743584831
	.quad	0x3fa5ec1e468af870              # double 0.042817064391315607
	.quad	0x3fd7b64326512c7a              # double 0.37049940816786597
	.quad	0x3fe0433dfa9239a4              # double 0.50820826472936576
	.quad	0x3fdbf0479ddd8cee              # double 0.43654051224275647
	.quad	0x3febad58cab373df              # double 0.86491050329243169
	.quad	0x3fd94abb1741d29c              # double 0.39518620749667277
	.quad	0x3fea9a7f8a47c462              # double 0.83135964401129692
	.quad	0x3fdcf6dd9d0f7ac0              # double 0.45256748521743972
	.quad	0x3f88b94ab9f1b080              # double 0.012072166251720029
	.quad	0x3fecb3bd82b7a839              # double 0.89694095164055121
	.quad	0x3fddfb144801f25e              # double 0.46844965965263963
	.quad	0x3fd2d32860ab5ebe              # double 0.29413804474232197
	.quad	0x3fcd7ca715a46f0c              # double 0.23036659771684531
	.quad	0x3f381cd60f315000              # double 3.6792970712906659E-4
	.quad	0x3fe4c1d6d4c09b24              # double 0.64866200974652033
	.quad	0x3feccad6b3e181d5              # double 0.89976058133111769
	.quad	0x3fe28287567c78ce              # double 0.57843367473449248
	.quad	0x3fe297370900de92              # double 0.58095886000133334
	.quad	0x3fe0b08922d063a6              # double 0.52154976653684026
	.quad	0x3fb4b42528ce5118              # double 0.080873796903976447
	.quad	0x3fc4b2566e3b1738              # double 0.16169243223537832
	.quad	0x3fc5d4391f133cd0              # double 0.1705390359624972
	.quad	0x3fe7f10fa73a8009              # double 0.74817640935725749
	.quad	0x3fca32634e2c760c              # double 0.20466271702837024
	.quad	0x3fe90b6117fa9118              # double 0.78263907130579735
	.quad	0x3fe27b263e359591              # double 0.57753288412338766
	.quad	0x3fe94c5b218d080b              # double 0.79057079842482503
	.quad	0x3fe34e3f68a01a2c              # double 0.60330171999595938
	.quad	0x3fe449b56d3d5ca8              # double 0.6339976438129229
	.quad	0x3fea403188ffd342              # double 0.82033612020186575
	.quad	0x3fee5fbd202f16f9              # double 0.9491868618576681
	.quad	0x3fe60a8d9f80caba              # double 0.68878823426196978
	.quad	0x3fd0f49865f7419e              # double 0.26492891271211672
	.quad	0x3fcdf476261c4c70              # double 0.23402287350527073
	.quad	0x3fe036c49fd2a0d7              # double 0.50668555465110898
	.quad	0x3fef34e74797b7ef              # double 0.97520793898524782
	.quad	0x3fcf86506ebf8114              # double 0.2462864437829998
	.quad	0x3fc1b207a769de4c              # double 0.13824554132928524
	.quad	0x3fd3099788a6e43a              # double 0.29746044487871226
	.quad	0x3fe4ac9aacc2ba24              # double 0.64606984846415516
	.quad	0x3fd494e3341e1c42              # double 0.32158737268077087
	.quad	0x3fe366a42a6210a8              # double 0.60627945211355883
	.quad	0x3fe288f4e2bc4cb6              # double 0.57921833309446558
	.quad	0x3fb453c9b9dd4628              # double 0.079403503300704004
	.quad	0x3fe462f1f829afb3              # double 0.6370782706194319
	.quad	0x3fe1daf70fba78a3              # double 0.55797913619951023
	.quad	0x3fd1b0a9a59d73aa              # double 0.27640763448089933
	.quad	0x3fe614f71e5009c7              # double 0.69005924148978515
	.quad	0x3fe483532be8bbcb              # double 0.64103087020873184
	.quad	0x3fec2c01aaf6c1af              # double 0.88037188903222396
	.quad	0x3fe6eb89c3982f0c              # double 0.71625221445126064
	.quad	0x3fd283e07d22db2a              # double 0.28929912777259637
	.quad	0x3fd42937bf31c8fe              # double 0.31501573249182957
	.quad	0x3fef5de69ab30926              # double 0.98021249975889613
	.quad	0x3feb949794c98683              # double 0.86188868579866129
	.quad	0x3fe4fa08a8d024d2              # double 0.65552170726109638
	.quad	0x3fdf96fe1a7d5974              # double 0.49359085642699729
	.quad	0x3fdfee30a0c84020              # double 0.49891296101941585
	.quad	0x3febb5c5b488c649              # double 0.86593899975395872
	.quad	0x3fd9833ec8af46cc              # double 0.3986355743228216
	.quad	0x3fc5ca20e44c1278              # double 0.17023097178766355
	.quad	0x3fe0fc3ff00c89dd              # double 0.53079220661703241
	.quad	0x3fe2a258f9838a0f              # double 0.58231781705063834
	.quad	0x3fdc5e5a19a1f72a              # double 0.44325878623191051
	.quad	0x3fe93e43ddfbd071              # double 0.78885072094136721
	.quad	0x3fe51ad5a0e9980f              # double 0.65952569416254103
	.quad	0x3fd0521d200178da              # double 0.25501182675897172
	.quad	0x3feb97f035fe661f              # double 0.86229715867665735
	.quad	0x3fd9d4cc7f1a9718              # double 0.40361320888983832
	.quad	0x3fedd737f168083d              # double 0.93252179288561587
	.quad	0x3fe33135206a6df9              # double 0.59975677806090666
	.quad	0x3feb90a41ecf7aef              # double 0.861406383682917
	.quad	0x3fe7beb37816b0db              # double 0.74202893690883387
	.quad	0x3fd708073cf7a894              # double 0.35986500696038459
	.quad	0x3fdd265ec59af178              # double 0.45546693131816296
	.quad	0x3fe463450b2a09a9              # double 0.63711788349637744
	.quad	0x3fe018913cd32500              # double 0.50299894218292707
	.quad	0x3fed2b9d5e828471              # double 0.91157406290962062
	.quad	0x3fe5498c226519f6              # double 0.66522795408019308
	.quad	0x3fcf528ed9749b28              # double 0.24470697038597078
	.quad	0x3fec531b3456ad58              # double 0.88514480802897832
	.quad	0x3feef42f1ef493f7              # double 0.96730762525532909
	.quad	0x3fe5a58c7342090e              # double 0.67645857344931115
	.quad	0x3feeeb671d02644e              # double 0.966235691698907
	.quad	0x3fe6923900aec744              # double 0.70534944661469767
	.quad	0x3fe384dc789d4fee              # double 0.60996841008681968
	.quad	0x3fddea5af18d0a38              # double 0.46742890919645985
	.quad	0x3fef6d7f9f77f2de              # double 0.98211651941491218
	.quad	0x3fe4862aca93a685              # double 0.64137782636426321
	.quad	0x3fe9c0b0f6005ac8              # double 0.80477188155313062
	.quad	0x3fefc1f4c712c6e9              # double 0.99242628938210686
	.quad	0x3f9ef3635027ef60              # double 0.03022532631619812
	.quad	0x3fe8d413e0ab41b9              # double 0.77588838463457599
	.quad	0x3fd54b7f8aad8628              # double 0.332733045032088
	.quad	0x3f54e6375acee000              # double 0.0012755909512929264
	.quad	0x3fdfc958b0336742              # double 0.49666421134098837
	.quad	0x3fe13928805df187              # double 0.5382273204009359
	.quad	0x3fd2fc7520d9e3f4              # double 0.29665878494375808
	.quad	0x3fbccb6f6df6e8a8              # double 0.11247917589835998
	.quad	0x3fe46221c0ed1dc5              # double 0.63697898560433741
	.quad	0x3fea8c44f72443fb              # double 0.82962272901397627
	.quad	0x3fe6ebae2f8dc9cf              # double 0.71626958167899513
	.quad	0x3fd4629711849256              # double 0.31851746283272087
	.quad	0x3fe045eb440a458b              # double 0.50853503502928399
	.quad	0x3fe007a43e75cf54              # double 0.50093280982262423
	.quad	0x3f85e0cffa9e78c0              # double 0.010682701907907322
	.quad	0x3fec9efb7b64fc8d              # double 0.89440702534183603
	.quad	0x3fe9c1203b8e579a              # double 0.80482494003330207
	.quad	0x3fd3c3f0a6142760              # double 0.30883423060060089
	.quad	0x3fdb5895516dfea6              # double 0.42728169395557314
	.quad	0x3fd4220aefab4418              # double 0.3145778027074484
	.quad	0x3fee631e808be1b0              # double 0.94959950548859773
	.quad	0x3f56e13a928aea00              # double 0.0013964721676261727
	.quad	0x3fbf01c395daace8              # double 0.12112066658544374
	.quad	0x3fe17d41d3af19bb              # double 0.54654017776993358
	.quad	0x3fe09efbc133b34a              # double 0.51940715536839233
	.quad	0x3fd7ade14b63e0ba              # double 0.36998779642409441
	.quad	0x3fd73d3fc877822e              # double 0.36311335160101776
	.quad	0x3fdded74b23914b6              # double 0.46761815456950317
	.quad	0x3fe41976066c3320              # double 0.62810803656029535
	.quad	0x3fe806eaa1ef0ec0              # double 0.75084430339526165
	.quad	0x3fccd4463a2d0fc4              # double 0.22522809830308976
	.quad	0x3fe06f19194fcfae              # double 0.51356177276328707
	.quad	0x3fe3185040e97ff7              # double 0.5967179553808809
	.quad	0x3fec27d6d4f6033f              # double 0.87986318201010494
	.quad	0x3fcb1d7efe7e7490              # double 0.21183764864409627
	.quad	0x3feec67201efbdcc              # double 0.96172428491802852
	.quad	0x3fedf984083e1fa2              # double 0.93670846567055244
	.quad	0x3fedb3466fd0b9c3              # double 0.92813417281086463
	.quad	0x3fdf1ec1e74706fa              # double 0.48625228486717698
	.quad	0x3feec747205a9273              # double 0.96182590788937571
	.quad	0x3fe5ae8660c8f07f              # double 0.67755431083016038
	.quad	0x3fd4f4838ec3bbd4              # double 0.32742394391874297
	.quad	0x3fb86d0056853b80              # double 0.095413228152422036
	.quad	0x3fb3aec8fb492fe0              # double 0.076885758732884835
	.quad	0x3fce80129ccfd388              # double 0.23828346878840656
	.quad	0x3fe841c37c766f8c              # double 0.75802778538808146
	.quad	0x3fd9f6b8f430c31e              # double 0.40568374487615866
	.quad	0x3fd77a60394a0ab0              # double 0.36684423060084281
	.quad	0x3fe6d7de92db5d05              # double 0.71385124857889137
	.quad	0x3fe54fdbaa53ac0b              # double 0.66599829928361609
	.quad	0x3fb72b542316a438              # double 0.090504892889513466
	.quad	0x3fd15787e7c7c61c              # double 0.27096746096421653
	.quad	0x3fec5ca758306c43              # double 0.886310264820516
	.quad	0x3fcbba4bd6fb1d30              # double 0.21662281033625552
	.quad	0x3fe4bb285b6cd027              # double 0.64784639221625617
	.quad	0x3fee6ad73e31ea09              # double 0.95054208896118653
	.quad	0x3fcb8895368aaf0c              # double 0.2151056782071169
	.quad	0x3fe277a2a26999a8              # double 0.5771039173239858
	.quad	0x3fe4327dd38d6b06              # double 0.63116351431685369
	.quad	0x3fe7fe74a7157925              # double 0.74981148370332973
	.quad	0x3fea5e8b31c14df3              # double 0.82404098241607782
	.quad	0x3fd8b056b7865eaa              # double 0.38576286241866831
	.quad	0x3fca03ad8fd792a8              # double 0.20323724292315615
	.quad	0x3fd5619c7f29b162              # double 0.33408272188423471
	.quad	0x3fecad3a2b643a37              # double 0.89614590144066752
	.quad	0x3fdbb8f1a9197676              # double 0.43316308511371149
	.quad	0x3fe1a25568b6f4a6              # double 0.5510661168297204
	.quad	0x3fba1c152af21c60              # double 0.10199100779037584
	.quad	0x3fe34d63a4680fdd              # double 0.60319692717211704
	.quad	0x3fea6f2e4ae2b2c3              # double 0.82607187868196552
	.quad	0x3feea41b15cebabf              # double 0.95753244647297453
	.quad	0x3f9d040cd9e30ea0              # double 0.028335762785686058
	.quad	0x3fcda9b252d06d14              # double 0.23174122852001544
	.quad	0x3fdaea239a91318c              # double 0.42054071516465608
	.quad	0x3fedfa62ca54d5d5              # double 0.93681468503808196
	.quad	0x3fd223ffe4d3094e              # double 0.28344724031571367
	.quad	0x3fbe015ce2683778              # double 0.11720829513089182
	.quad	0x3fdf412dc9d96c1e              # double 0.48835320197912491
	.quad	0x3fc823d39e4dff50              # double 0.1885933421108299
	.quad	0x3fbe96198558f698              # double 0.1194778395228816
	.quad	0x3fcd1d439856321c              # double 0.22745556772532971
	.quad	0x3fdc80e3f4d7c922              # double 0.44536684904518797
	.quad	0x3fbe394778f06ec0              # double 0.11806151106469098
	.quad	0x3fe143cecf98267b              # double 0.53952732606667497
	.quad	0x3fe509020ee038ee              # double 0.65734961419528104
	.quad	0x3fdd4be3073ddca6              # double 0.45775676448051639
	.quad	0x3fee6f31276c1b85              # double 0.95107324313799835
	.quad	0x3fe4a6fb70a261a7              # double 0.64538356779944628
	.quad	0x3fdbeaf5ba047f98              # double 0.43621581235674389
	.quad	0x3fdee1341a98d6d8              # double 0.48249533269277611
	.quad	0x3fe94d67dd0984b9              # double 0.79069894000362873
	.quad	0x3fe2ba9fa5e31f03              # double 0.5852812042221277
	.quad	0x3feefb651d565e5b              # double 0.96818786363560194
	.quad	0x3fe1a9c8761b30cc              # double 0.55197547023410598
	.quad	0x3fcdf158af022dd4              # double 0.23392780824029435
	.quad	0x3fd6e950138c1078              # double 0.35799028309725811
	.quad	0x3fe9281778a91d2b              # double 0.78614400450252242
	.quad	0x3fd90d2f2999aae8              # double 0.39142970144773281
	.quad	0x3fea51cb2cf4835a              # double 0.82248457699106869
	.quad	0x3fc7ca4b8bcc48f4              # double 0.18586105657647745
	.quad	0x3fda82ec8e700a3e              # double 0.41424096975257274
	.quad	0x3fa930e5b42d0a00              # double 0.049201181644566105
	.quad	0x3fb11a3bf87ebcb8              # double 0.06680655304693317
	.quad	0x3fe4d5bf9bfe3a4d              # double 0.65109234301946517
	.quad	0x3fbdd7d394167168              # double 0.11657450070783215
	.quad	0x3fd36a1ed72b1f70              # double 0.30335207951110643
	.quad	0x3fd0fa1184342498              # double 0.2652629653026195
	.quad	0x3fe43eb3930e61a1              # double 0.63265398713979348
	.quad	0x3fd37ae0759ff3e0              # double 0.30437480437086428
	.quad	0x3fe4eea676c99e09              # double 0.65413211060234844
	.quad	0x3fe0bb2c6965a921              # double 0.52284832558988026
	.quad	0x3fcf833da5f3a9d8              # double 0.24619265177837124
	.quad	0x3fe00a8a758d23bc              # double 0.50128672560924015
	.quad	0x3fd005f70d5fd6d4              # double 0.25036407762614243
	.quad	0x3fe3ade0a4dc310b              # double 0.61497528266184653
	.quad	0x3fd9e0d69c1f9b06              # double 0.40434804197722973
	.quad	0x3fe2bd581658346b              # double 0.58561329235238924
	.quad	0x3feae1cc43a22a03              # double 0.84006322106989761
	.quad	0x3fd5d0b1f91a0dda              # double 0.34086274458260635
	.quad	0x3fd71ffe407b18e2              # double 0.36132770821531157
	.quad	0x3fe69e58a7980597              # double 0.70682938321276623
	.quad	0x3fe4323f820b223f              # double 0.63113379859084506
	.quad	0x3fe7c934f4e61040              # double 0.74331138450407508
	.quad	0x3fed18d9714c3e19              # double 0.90928337219696964
	.quad	0x3fd54663fda2a7ce              # double 0.33242130059317965
	.quad	0x3fc5f4c964a82190              # double 0.17153279700165713
	.quad	0x3fce400b325fcbc8              # double 0.23632945975950137
	.quad	0x3fdda1239e2d7800              # double 0.46296015212089969
	.quad	0x3fe9851b9267ccae              # double 0.79749849886720425
	.quad	0x3fd2e83217c52e6c              # double 0.29542209931671581
	.quad	0x3fecdb8ec30014dc              # double 0.9018014725303618
	.quad	0x3fe7545ada1e0a45              # double 0.72904722786945142
	.quad	0x3fe605038282294e              # double 0.68811202516489245
	.quad	0x3fe618183a6cbffa              # double 0.69044124041647525
	.quad	0x3feee865d0634199              # double 0.96586886120535375
	.quad	0x3febc0fee460bd4d              # double 0.8673090420251498
	.quad	0x3fee4e393c232fec              # double 0.94704877610774707
	.quad	0x3fbed1d383990938              # double 0.12038919413410987
	.quad	0x3fcb3b9b3be367e0              # double 0.21275654243691999
	.quad	0x3fb85f4a3850a0e8              # double 0.095204008816498154
	.quad	0x3fe584f120add231              # double 0.67247825987448639
	.quad	0x3fe4ba2cc13d9ae8              # double 0.64772641889871085
	.quad	0x3fe38de61373a797              # double 0.61107162284064287
	.quad	0x3fe1c8a2c540d9ac              # double 0.5557416775325712
	.quad	0x3fed0ac4101b4a86              # double 0.90756419320889914
	.quad	0x3fc5a843f7272e7c              # double 0.16919755523700875
	.quad	0x3feb625cc5c1ed20              # double 0.8557571279956484
	.quad	0x3fae49f760a29ba0              # double 0.059158068224227423
	.quad	0x3f86287ba5cfc1c0              # double 0.010819402692477165
	.quad	0x3f958f68c1653ca0              # double 0.021054875186845678
	.quad	0x3febe4f2cbbb84c6              # double 0.87169780532362817
	.quad	0x3f8bff793cd93e40              # double 0.013670870942546931
	.quad	0x3fe246ac7e13ce57              # double 0.57112717270360747
	.quad	0x3fb10d086882eb50              # double 0.066605115428427952
	.quad	0x3fb3ee857348c8d0              # double 0.077858296056351194
	.quad	0x3fb5e485bb12aee0              # double 0.085518224880327676
	.quad	0x3fef847be0e6ce1d              # double 0.98492235113230075
	.quad	0x3fe58d908940a468              # double 0.67353083426600069
	.quad	0x3fc34d073a337a6c              # double 0.15078821508264484
	.quad	0x3fc7ce0a85ef35bc              # double 0.18597537555471699
	.quad	0x3fdaddb814994fd2              # double 0.41978265773400125
	.quad	0x3fe137b9a2650205              # double 0.53805238454521087
	.quad	0x3fe66c72d33e5189              # double 0.70073834665758838
	.quad	0x3fe786d1e39d6f11              # double 0.73520750480699537
	.quad	0x3fe6acd384b5be15              # double 0.70859695358189134
	.quad	0x3fe3c408bfe151a3              # double 0.61767995335189985
	.quad	0x3fd88fb04c299ee4              # double 0.38377005994560265
	.quad	0x3fecaad5827a2ed3              # double 0.89585376247256432
	.quad	0x3fe2954833c25d37              # double 0.58072290524697834
	.quad	0x3fc320b5a7c17cbc              # double 0.14943571749879492
	.quad	0x3fe1e5610cd47671              # double 0.55925037866445682
	.quad	0x3fef19d7a2c56117              # double 0.97190458098615095
	.quad	0x3fdf92e7a2a02586              # double 0.4933413589611394
	.quad	0x3fd12b8325cadb82              # double 0.26828077974953868
	.quad	0x3fe01415623789b9              # double 0.50245160277363887
	.quad	0x3fe7d07deb1b950c              # double 0.74420066756707248
	.quad	0x3fb1594f4d7e7d78              # double 0.067769009036501404
	.quad	0x3fe0d61a63aca465              # double 0.52613563029912014
	.quad	0x3fef5c453a201301              # double 0.98001347878070543
	.quad	0x3fe8073635b07916              # double 0.75088034139824589
	.quad	0x3fcf9c1f0bbd002c              # double 0.24695194314154045
	.quad	0x3fe15a308319d155              # double 0.54225946050295681
	.quad	0x3fe0fbb2ad31d837              # double 0.53072484805193809
	.quad	0x3fe0372eb63edd14              # double 0.50673614115558729
	.quad	0x3feba2b3d9a5e497              # double 0.86361114987734566
	.quad	0x3fe7f2acc89da459              # double 0.74837340529223717
	.quad	0x3fee62f3acf8c7a6              # double 0.94957908423952087
	.quad	0x3fe03bcc0c943ab9              # double 0.50729944664802595
	.quad	0x3fe61612ef2d5bbc              # double 0.69019457544606366
	.quad	0x3f36caf902110000              # double 3.4779147432928426E-4
	.quad	0x3fd3c9f8119b5104              # double 0.30920221061138897
	.quad	0x3fc975052f3ca520              # double 0.19888367468346591
	.quad	0x3fb9555447636578              # double 0.098958270481849797
	.quad	0x3fd85437b168160c              # double 0.38014023136960939
	.quad	0x3fea09d4c8a6cd96              # double 0.81370009603272098
	.quad	0x3fdf11f8191a41c2              # double 0.48547174884245348
	.quad	0x3fdd7c8cda683728              # double 0.4607269413835291
	.quad	0x3fe1dee7e7c42717              # double 0.55846019045677309
	.quad	0x3fe332a204d95590              # double 0.59993077227652414
	.quad	0x3fe164450da20807              # double 0.54348995840723624
	.quad	0x3f86cc49ad274580              # double 0.011131835552904645
	.quad	0x3fe0b918f66daca8              # double 0.52259491091299015
	.quad	0x3fb37f50b39a20a8              # double 0.076161426399382948
	.quad	0x3fa1e41fe8ce0210              # double 0.0349435779271553
	.quad	0x3fdac730eaa3edb2              # double 0.41840765871139773
	.quad	0x3fe42bfdbdaf7092              # double 0.63037001655495062
	.quad	0x3fe44261c0dc808f              # double 0.63310325306157889
	.quad	0x3fefa95a0b9fa5d7              # double 0.98942281980742563
	.quad	0x3fd8135f4bc3deb0              # double 0.37618238829552819
	.quad	0x3fd3a556654b717c              # double 0.30696639911709389
	.quad	0x3fb549bfacc540f8              # double 0.08315656631498658
	.quad	0x3fd5f5ae9e0be75e              # double 0.34312024530628615
	.quad	0x3fb89680868a7d08              # double 0.096046479079166969
	.quad	0x3feb25b9e96f942f              # double 0.84835525124493028
	.quad	0x3feeab4be2380436              # double 0.95841020758974227
	.quad	0x3fda51f57587b25e              # double 0.411252369666533
	.quad	0x3fec4bff801b2e84              # double 0.8842771055291938
	.quad	0x3fbfbc8e9970dc38              # double 0.12397090192904237
	.quad	0x3fedce9ae7c76159              # double 0.93147034901907511
	.quad	0x3fbdb0e029cea560              # double 0.11598015804942952
	.quad	0x3fd92bf837ef39e4              # double 0.3933086916194084
	.quad	0x3fe0dec460b03ab4              # double 0.52719324955417912
	.quad	0x3fd93efa88c89452              # double 0.39446891172184906
	.quad	0x3fe90668b8be2968              # double 0.78203235704976937
	.quad	0x3fe5fb5d9b1e76a6              # double 0.68693428322486194
	.quad	0x3fc7e6834487c5e0              # double 0.18672219129761825
	.quad	0x3fe88f2dc4e53e3f              # double 0.76747787910603182
	.quad	0x3feb7576351fcddc              # double 0.85808859229876643
	.quad	0x3fe3f7220766fe10              # double 0.62391759343876352
	.quad	0x3fd5d363950cfc70              # double 0.34102716022238777
	.quad	0x3fdf0b55cc4a65bc              # double 0.48506684255843502
	.quad	0x3fd0ddffd5d2b12a              # double 0.26354976540712249
	.quad	0x3fd1bfe49cab7a7c              # double 0.27733722018994178
	.quad	0x3fec9c8c395908df              # double 0.8941098327707343
	.quad	0x3fdd496c9d453944              # double 0.45760646208227151
	.quad	0x3fe2d4aa9d98388c              # double 0.58846026210973568
	.quad	0x3fdbbb9e3d59ea68              # double 0.43332630149203633
	.quad	0x3fd4806549abf100              # double 0.3203366488885564
	.quad	0x3fa704035eda6280              # double 0.044952493027442308
	.quad	0x3fe5a316dee37c89              # double 0.67615836651738548
	.quad	0x3fe01c8f0eb58b3d              # double 0.50348618386156085
	.quad	0x3fdc2ec100d6970a              # double 0.44035363275394046
	.quad	0x3fb2deadcbea3e28              # double 0.073710310253084388
	.quad	0x3fe26accda3ae134              # double 0.57553713439032217
	.quad	0x3fe0c74cc0a7be5e              # double 0.52432859065988757
	.quad	0x3fe5e726c1d55cda              # double 0.68446672304244349
	.quad	0x3f94c2c417176b20              # double 0.020274223241226186
	.quad	0x3fcea4ebc80698dc              # double 0.23940799013980196
	.quad	0x3fea5eb40c91f5d3              # double 0.82406046347721895
	.quad	0x3fe324f7d420ac6e              # double 0.5982627051465792
	.quad	0x3fe870806d4bad1b              # double 0.76373311373518804
	.quad	0x3feae534823eebd7              # double 0.84047913969640831
	.quad	0x3fd6298360ebf058              # double 0.34628376450541998
	.quad	0x3fe857e3bc44643e              # double 0.76072870989731434
	.quad	0x3fa4569d0d7ad060              # double 0.039723308463550877
	.quad	0x3fda9221ea87bb00              # double 0.41516921904887738
	.quad	0x3fe892ba5211ff5d              # double 0.76791111020427716
	.quad	0x3fdc09f0cf3a95a4              # double 0.43810672986213661
	.quad	0x3fa776566e313a30              # double 0.045824719382484225
	.quad	0x3fd90825c0049536              # double 0.39112228156803341
	.quad	0x3fe991ad94109755              # double 0.79903296393306766
	.quad	0x3fdd5a9f93e1debe              # double 0.45865621034270621
	.quad	0x3fc769e0e1cf5380              # double 0.18291865373489813
	.quad	0x3fec4880eced5ec3              # double 0.88385053896760046
	.quad	0x3fe79c5c180f5e36              # double 0.73783688258385527
	.quad	0x3fd1f54dae12f0d2              # double 0.28059713363087468
	.quad	0x3feb879a4b276026              # double 0.86030306509474452
	.quad	0x3fe0553bc84ce56d              # double 0.51040448304335728
	.quad	0x3fc0bc53a014ccd8              # double 0.13074727360217397
	.quad	0x3fe895fa6bc31a8d              # double 0.7683078865746481
	.quad	0x3fe39b2e86ecb4d7              # double 0.61269308426349312
	.quad	0x3fe2ed2161adc620              # double 0.5914465816296719
	.quad	0x3fe8405f163625b5              # double 0.75785784090219599
	.quad	0x3fd4d94aeb9a4c5e              # double 0.32576249130324253
	.quad	0x3fd7e937255bf882              # double 0.37360933922162343
	.quad	0x3fdaa66087d7cdd2              # double 0.41640485063473165
	.quad	0x3fd5995351aeb910              # double 0.33748324372108218
	.quad	0x3fd9d50087b4e4f0              # double 0.40362561466788716
	.quad	0x3fb6696aa2f875d8              # double 0.087546028888446314
	.quad	0x3fe192ae2360a25a              # double 0.54915530118621381
	.quad	0x3fd5e565abc2c190              # double 0.34212629102241809
	.quad	0x3fe9eb1d5b6da295              # double 0.80995052201349671
	.quad	0x3fc21c7bba5103a0              # double 0.14149424169047808
	.quad	0x3fe3e5c3c30051e3              # double 0.62179744802648107
	.quad	0x3fcc76eb6d3d1a54              # double 0.22237913927002018
	.quad	0x3fb8d8e6cb3b1780              # double 0.097059654824162677
	.quad	0x3fd35d84624f2fc0              # double 0.30258283234138261
	.quad	0x3fed6bac013ff2cb              # double 0.91939354175664201
	.quad	0x3fdc062e5569341c              # double 0.43787725773728581
	.quad	0x3fd2f4d6312b4c66              # double 0.29619364549325267
	.quad	0x3fef28b7d5991953              # double 0.97372047155730923
	.quad	0x3feb680ca05138f5              # double 0.8564513331600937
	.quad	0x3fe44a5d02b172b7              # double 0.63407755399710808
	.quad	0x3fdb9afbe296c540              # double 0.43133446815325627
	.quad	0x3fd3bff2394c68be              # double 0.3085904655032542
	.quad	0x3fee0de4a1fcfd7b              # double 0.93919593466118501
	.quad	0x3fc1ec836a6dd7cc              # double 0.14003031441433078
	.quad	0x3fca62c4a4630094              # double 0.20613916422553713
	.quad	0x3fe74c337273202a              # double 0.72805187562426465
	.quad	0x3fc759c81ab4c034              # double 0.1824274187470124
	.quad	0x3fe1748ec4c49223              # double 0.54547823363515524
	.quad	0x3fd5919181f9cabc              # double 0.3370097893995696
	.quad	0x3fe5e24c7385845d              # double 0.68387434542467995
	.quad	0x3fe954bff31048a1              # double 0.79159543488846762
	.quad	0x3fb9cc1b125a5308              # double 0.10077065656726003
	.quad	0x3fac31f129167f00              # double 0.055068527474984919
	.quad	0x3fed227be70b4502              # double 0.91045947194848531
	.quad	0x3fe68378705b72ae              # double 0.70354864067811262
	.quad	0x3fe923040c865b25              # double 0.78552439161544341
	.quad	0x3fd536014d389922              # double 0.33142120877382031
	.quad	0x3fe64dec69109eb3              # double 0.69701214333050243
	.quad	0x3fcf93271d5a2f64              # double 0.24667824681489059
	.quad	0x3fcad953848af924              # double 0.20975727054423843
	.quad	0x3fe2a8b83e96bb72              # double 0.58309566711782979
	.quad	0x3fe468b8c328a827              # double 0.63778341404873096
	.quad	0x3fe8e9a0ca5f9ab9              # double 0.7785190537077461
	.quad	0x3fedff0700217e14              # double 0.93738126779129737
	.quad	0x3fd970cb8bfa174e              # double 0.39750946683522137
	.quad	0x3fe60defe051aa50              # double 0.68920129597001711
	.quad	0x3feb95b1c07dc14f              # double 0.86202323528235947
	.quad	0x3fc7df17b2c0d31c              # double 0.1864957449739898
	.quad	0x3fe79c9a0b55681d              # double 0.7378664227828754
	.quad	0x3fe542b050ce4d2c              # double 0.66439071447749631
	.quad	0x3f82c61ea473f380              # double 0.0091669458329250997
	.quad	0x3fc83bdb2172a824              # double 0.18932665951916861
	.quad	0x3fe90c843f2040e3              # double 0.78277790383620205
	.quad	0x3fd560718e00ef8e              # double 0.33401144855064835
	.quad	0x3fe27e7e4eb644d6              # double 0.57794108746943595
	.quad	0x3feb85e75bcce529              # double 0.86009567193756198
	.quad	0x3fb5b725e5f663b8              # double 0.084825867312601555
	.quad	0x3fe61ae05ccc042f              # double 0.69078081249620549
	.quad	0x3fc12e4811af6ba4              # double 0.13422489989792752
	.quad	0x3fe048d50fae0b4b              # double 0.50889065802071209
	.quad	0x3fb82ec399f39920              # double 0.094463563047245902
	.quad	0x3fe9c62f48b51fcd              # double 0.80544246864973845
	.quad	0x3fd9b8923659dbba              # double 0.40189032848087047
	.quad	0x3fe65deb2d348d70              # double 0.69896467999607914
	.quad	0x3fe72e9221266e81              # double 0.72443491434701468
	.quad	0x3fee8d694472cdc6              # double 0.95476210945928908
	.quad	0x3fcbc15fec1b7a24              # double 0.2168388274066767
	.quad	0x3fe941813d1c8594              # double 0.78924619613478563
	.quad	0x3fe75b11fc1411d8              # double 0.72986697420179336
	.quad	0x3fdbd500b8e45748              # double 0.43487566047530324
	.quad	0x3fd516ba356d88e4              # double 0.32951216905179437
	.quad	0x3fe900ba51bdea2c              # double 0.78133884396749442
	.quad	0x3fd65260005ad708              # double 0.34877777132656762
	.quad	0x3fca1af756627f70              # double 0.20394794195180621
	.quad	0x3feb21fe51648835              # double 0.84789958855640768
	.quad	0x3fe350d42e83fde0              # double 0.60361680111958194
	.quad	0x3fee764a3758f779              # double 0.9519396859175081
	.quad	0x3fcfb4b364073660              # double 0.2477020491045776
	.quad	0x3fe283c697e3f753              # double 0.57858590761291351
	.quad	0x3fcb7c1eeb6995d8              # double 0.21472536558864763
	.quad	0x3fe88352f84b2bbe              # double 0.76603077406740971
	.quad	0x3fc8e4d2f174daa8              # double 0.19448315420023232
	.quad	0x3fe83007f0250209              # double 0.75586316016421151
	.quad	0x3fe329001ba13787              # double 0.59875493427692639
	.quad	0x3fead8b725fd90b1              # double 0.83895451946275135
	.quad	0x3fcbff52122d9ba8              # double 0.21872926604848186
	.quad	0x3fe28c689c553d07              # double 0.5796397260072873
	.quad	0x3fd61f273139c97a              # double 0.34565143401336906
	.quad	0x3fea0450c2317acd              # double 0.81302678993582733
	.quad	0x3fe4f0adf3c5aacc              # double 0.65437982188935839
	.quad	0x3fe6387eef5ca52a              # double 0.69439646482820661
	.quad	0x3fb0c57efd2741f0              # double 0.065513550572411594
	.quad	0x3fee25a67636fcc3              # double 0.94209597672297496
	.quad	0x3fec4eb74223b490              # double 0.88460886876932143
	.quad	0x3fc36a9585405768              # double 0.15169018751538066
	.quad	0x3fdfbdf9e8a7fac8              # double 0.49597022743538988
	.quad	0x3fd20fd0693a7f02              # double 0.28221521640988112
	.quad	0x3fd41873f10a8032              # double 0.31399248637353872
	.quad	0x3fa2477f2c562280              # double 0.035701727068105704
	.quad	0x3fdbe0ea7ac22822              # double 0.43560277927520208
	.quad	0x3fd9f3baae32d60c              # double 0.4055010510595316
	.quad	0x3fe29d20604c6557              # double 0.58168047722134986
	.quad	0x3fdb4b25448080fe              # double 0.42646152200360621
	.quad	0x3fa9c201a31211f0              # double 0.050308276325299661
	.quad	0x3fe8964394f75683              # double 0.76834277243570204
	.quad	0x3fe0850489fbf9f1              # double 0.51623751592688738
	.quad	0x3fe288938e098783              # double 0.57917192212720214
	.quad	0x3fbfca65afa78c78              # double 0.12418208635749461
	.quad	0x3fc5d96bdc53a444              # double 0.17069767244473344
	.quad	0x3fd5ccf26a49fa4a              # double 0.34063396816046476
	.quad	0x3fdf568353f90882              # double 0.48965533447711362
	.quad	0x3fd062ac8195e34a              # double 0.25602257399400641
	.quad	0x3fe28d822e7430d1              # double 0.5797739894201418
	.quad	0x3fe2e0f8f97f82db              # double 0.58996247034164229
	.quad	0x3fef7e906dbf8c03              # double 0.98419972834778979
	.quad	0x3fd98c924cbb4684              # double 0.39920480244936862
	.quad	0x3fdfe7b1198f6e40              # double 0.49851634498711306
	.quad	0x3fe75023d8be20c9              # double 0.7285327180152531
	.quad	0x3fa3bf3d8e7a9260              # double 0.03856842388384929
	.quad	0x3fda827a16cbc7ca              # double 0.4142136786095959
	.quad	0x3febada5f3a4efc4              # double 0.86494729601644637
	.quad	0x3fd2a88f03d9080a              # double 0.29153800369033489
	.quad	0x3fe9a0857f904f1d              # double 0.8008449069479614
	.quad	0x3fe9ff6dd6db59e5              # double 0.81243030513979575
	.quad	0x3fd75efa5b180b12              # double 0.36517199417009849
	.quad	0x3fbf8ab5462a1e90              # double 0.12321026766778176
	.quad	0x3fe574bc03db1d34              # double 0.67049980881794236
	.quad	0x3fb61f535afba518              # double 0.086415490830081487
	.quad	0x3fd26daa484d71c0              # double 0.28794343052666349
	.quad	0x3fe6fedf54390cd4              # double 0.71861235093856601
	.quad	0x3fe76274add9c1dc              # double 0.730768527557355
	.quad	0x3fe858e09fd3325e              # double 0.76084929672067481
	.quad	0x3fd58641614f394e              # double 0.33631929877164601
	.quad	0x3feb6e4cb21e21df              # double 0.8572143057691014
	.quad	0x3fcf2909874db36c              # double 0.2434398565923418
	.quad	0x3fe9dc297e02fb48              # double 0.80812525378846889
	.quad	0x3fa5317c256da760              # double 0.041393165177239011
	.quad	0x3fd4809421d2afe0              # double 0.32034781744982688
	.quad	0x3fee3db73a57c9a0              # double 0.94503365893460866
	.quad	0x3fedb2960dd52449              # double 0.92805006696392767
	.quad	0x3fe801275d11630e              # double 0.75014084031417538
	.quad	0x3fe94f3839f9a3f8              # double 0.7909203655555066
	.quad	0x3fd96bf3ba05d3dc              # double 0.39721387068067116
	.quad	0x3fe58bef05ccfb20              # double 0.67333174832296905
	.quad	0x3fd9e31b94e4bee0              # double 0.40448655643829845
	.quad	0x3fa3b9c6294f3120              # double 0.038526718657154513
	.quad	0x3fef2e82d635fc99              # double 0.97442762220443335
	.quad	0x3f7c761800db1e00              # double 0.0069485604887584707
	.quad	0x3faa40dfcd1ed8d0              # double 0.051276201047060987
	.quad	0x3fe1169827028c6a              # double 0.53400809878475042
	.quad	0x3fe0ee8b3535a021              # double 0.52911911385036003
	.quad	0x3fef208ead2a2e64              # double 0.97272428342098438
	.quad	0x3fd1fda4e0bab7ba              # double 0.28110620447375434
	.quad	0x3fc013e1d39b3fe4              # double 0.12560675461145288
	.quad	0x3fbf548b73c61970              # double 0.12238380028256812
	.quad	0x3fe3df817510e976              # double 0.62103340973344134
	.quad	0x3fc898f1407b446c              # double 0.19216743134032599
	.quad	0x3fa4599bd090b530              # double 0.039746159753443755
	.quad	0x3fd6150aa0eb56a6              # double 0.34503427233480932
	.quad	0x3fd1fab9a144fd8c              # double 0.28092804669355398
	.quad	0x3fd53d2d8937ef24              # double 0.33185900116198952
	.quad	0x3fe0637b3dc80fdc              # double 0.51214372698495536
	.quad	0x3fe5cb3a96ac265e              # double 0.68105821064200334
	.quad	0x3fc85e0a5ba00ddc              # double 0.19036988710295943
	.quad	0x3fdd316bf1cd39c6              # double 0.45614145863956101
	.quad	0x3fe348ce78da83cf              # double 0.60263751606191274
	.quad	0x3fe1885c8e7e4f9d              # double 0.54789569693319928
	.quad	0x3fe4e04742dda2fe              # double 0.65237772998543142
	.quad	0x3fcc69502d877504              # double 0.22196390364744201
	.quad	0x3fe6efd2ad9e0a26              # double 0.71677526387822321
	.quad	0x3fa8e97208628fc0              # double 0.048656047366676614
	.quad	0x3fe1f4cf333d8a05              # double 0.56113395698440682
	.quad	0x3fa19ecd109d9820              # double 0.034414680746337689
	.quad	0x3fecf45a2625dbf9              # double 0.90482814265021638
	.quad	0x3fde1786f9575180              # double 0.47018598890033303
	.quad	0x3fe8938f36b6aee5              # double 0.76801262556315619
	.quad	0x3febcd8886c6f1b2              # double 0.86883951495797462
	.quad	0x3fe121ff103c3b9c              # double 0.53539994402841584
	.quad	0x3fe3f68a7caa42b0              # double 0.6238453326096387
	.quad	0x3fee5b5a18d2fed4              # double 0.94865136002041561
	.quad	0x3fe8b9546c8a1b74              # double 0.77262326430432759
	.quad	0x3fee439315562d1d              # double 0.94574884574231854
	.quad	0x3fe5635fe962700e              # double 0.6683806951800777
	.quad	0x3fe063d660284805              # double 0.51218718319637502
	.quad	0x3fe666c750435d94              # double 0.70004621197124317
	.quad	0x3fea90454227d7d1              # double 0.83011114998839208
	.quad	0x3fd7e43d9517974c              # double 0.37330569801121238
	.quad	0x3fea5a9a43d12527              # double 0.82355988736631935
	.quad	0x3fd74de01074c08e              # double 0.36412812811887185
	.quad	0x3fdfd1ce93f8e968              # double 0.49718059969349904
	.quad	0x3fde90052e49150a              # double 0.47754029769960538
	.quad	0x3fe0fa768480011f              # double 0.53057409171018211
	.quad	0x3fdf940f291acf66              # double 0.49341181768544684
	.quad	0x3fe11e175c0ac75e              # double 0.53492324807141833
	.quad	0x3fe9732709ae8ecb              # double 0.79530670062055131
	.quad	0x3fea151972617f7f              # double 0.81507561054239364
	.quad	0x3fbf85d139c45670              # double 0.12313563976598529
	.quad	0x3fd139b765379b16              # double 0.26914772877209836
	.quad	0x3febf876db845074              # double 0.87408011316666867
	.quad	0x3fc581bd86693f38              # double 0.16802186072390568
	.quad	0x3fe4b3ebd4aeb6f6              # double 0.64696303882166606
	.quad	0x3fc3e5236795708c              # double 0.15543024595070098
	.quad	0x3fef3c5d30331994              # double 0.97611865438448086
	.quad	0x3fabe97454504590              # double 0.054515490810568612
	.quad	0x3fe975947e19657a              # double 0.79560303333998594
	.quad	0x3fe1cd320216d391              # double 0.5562982598117846
	.quad	0x3fed635608656d3d              # double 0.91837598457224312
	.quad	0x3fea8bfa46784dc3              # double 0.82958711398753626
	.quad	0x3fe38a2867fc5f3e              # double 0.61061497030002676
	.quad	0x3feab3c28efcba84              # double 0.834443358680645
	.quad	0x3f926672b3bd4b60              # double 0.017968933315681723
	.quad	0x3f9e57c34f61fcc0              # double 0.029631664009227121
	.quad	0x3fb0e8f071141788              # double 0.06605437050538232
	.quad	0x3fce313fb8adcd84              # double 0.23587795751118901
	.quad	0x3fe058770d0a508a              # double 0.51079895541126175
	.quad	0x3fe168bdc076ac36              # double 0.54403579321422657
	.quad	0x3fd6ba3c10722bb0              # double 0.35511685949375771
	.quad	0x3fd93c7b7b636a7c              # double 0.39431654977457931
	.quad	0x3fdcec93276e8b98              # double 0.45193938112986975
	.quad	0x3fe0fbf4b76cf1d3              # double 0.53075633836084035
	.quad	0x3fee8efe65b2d9cc              # double 0.95495529044165428
	.quad	0x3fe5cc57b1016ccb              # double 0.68119415828132313
	.quad	0x3fdeb7cd2be90c3e              # double 0.47996835029715956
	.quad	0x3fedcd68f01bdf6b              # double 0.93132445236458972
	.quad	0x3fe13e5df81634fe              # double 0.5388631673282871
	.quad	0x3fdc6621a88a79a6              # double 0.44373361071657269
	.quad	0x3fbfe0fed234e360              # double 0.12452690727230964
	.quad	0x3fe053b77737d88a              # double 0.51021931919855601
	.quad	0x3fd1355edeb7d168              # double 0.26888248205002308
	.quad	0x3fe3cbdbbca57bbe              # double 0.61863505215648451
	.quad	0x3feb1f5bb83e913f              # double 0.84757791505084146
	.quad	0x3fd99281c771df06              # double 0.39956707455665741
	.quad	0x3fc1760b9a65c528              # double 0.13641495741789211
	.quad	0x3fd4623b640fc4d8              # double 0.31849560519829145
	.quad	0x3fcbd3fb62ad5370              # double 0.21740667646613643
	.quad	0x3fee13b7b6d47929              # double 0.93990693768481492
	.quad	0x3fa2bd22910c71d0              # double 0.036599235731248236
	.quad	0x3fc4822d5b19f0a8              # double 0.16022269199664163
	.quad	0x3fdaefc602191e9a              # double 0.4208846111764416
	.quad	0x3feb9d5631e8265e              # double 0.86295614001683041
	.quad	0x3fdc673d96b367ac              # double 0.44380130497813286
	.quad	0x3fd3692b84e731de              # double 0.30329406718081298
	.quad	0x3fd017cfffc29fe4              # double 0.25145339943492062
	.quad	0x3fc5e5b0c66f7e94              # double 0.17107209862932804
	.quad	0x3fd5b41f2843150a              # double 0.3391187565978987
	.quad	0x3fec88541cee3365              # double 0.89164167070849187
	.quad	0x3fe32195dbfe5d1f              # double 0.59784977881909984
	.quad	0x3fd1a055ec50959a              # double 0.27541111066451551
	.quad	0x3fc8af56b010ab88              # double 0.19285091015748557
	.quad	0x3fd1fdc80593bb9c              # double 0.28111458344113216
	.quad	0x3f956e5666c01ee0              # double 0.020928716679946002
	.quad	0x3fe0faab12766f3a              # double 0.53059915166838967
	.quad	0x3fd303e574b5a556              # double 0.29711281201760664
	.quad	0x3fe0528caae2e9cd              # double 0.51007684112783525
	.quad	0x3fc6c5cd01358c1c              # double 0.17791140135804617
	.quad	0x3fca488c63d8c118              # double 0.20533900142027828
	.quad	0x3fedc05107e7f78d              # double 0.92972613853611252
	.quad	0x3fe8d93b2892beb2              # double 0.77651746677834965
	.quad	0x3fa60b3b96c31d90              # double 0.043054449227891145
	.quad	0x3fe9571a6509e392              # double 0.79188270315272491
	.quad	0x3fc72dd25a79021c              # double 0.18108586709605923
	.quad	0x3fddb600378a7276              # double 0.46423345016390927
	.quad	0x3fe100e7b9f7d7ce              # double 0.5313604957761926
	.quad	0x3fea1a02faab7223              # double 0.81567524870803643
	.quad	0x3fda824a83fb75be              # double 0.41420233620541669
	.quad	0x3fee9782cb0e1c94              # double 0.95599498423770734
	.quad	0x3fe4a96a876278ce              # double 0.645680679724842
	.quad	0x3fb08d3caadea230              # double 0.064655105320192474
	.quad	0x3fe6dabf55dbb6e3              # double 0.71420256394568715
	.quad	0x3fdae15969488a90              # double 0.42000422746256394
	.quad	0x3fe1f7d80e1e297b              # double 0.56150439031016164
	.quad	0x3fe388684cd04006              # double 0.61040129664070331
	.quad	0x3fe36b8525ab268c              # double 0.60687501294269586
	.quad	0x3feab55e6c58c6ec              # double 0.83463975106698518
	.quad	0x3fa289bc042a6e50              # double 0.036207080372346767
	.quad	0x3fce91fdab4105b0              # double 0.2388302885247362
	.quad	0x3fdf7ec44311dd28              # double 0.49211222219260486
	.quad	0x3fd26a47936683f0              # double 0.28773679155898346
	.quad	0x3fde01ae869112ce              # double 0.46885264531401283
	.quad	0x3fedb612ce352ad7              # double 0.92847576403559173
	.quad	0x3fc33b637e501d28              # double 0.15024989764808905
	.quad	0x3fe8b80e0c31ed70              # double 0.77246763593522694
	.quad	0x3fe281ab03b17054              # double 0.57832861634552524
	.quad	0x3fc2beffc66d25d4              # double 0.14645383061205897
	.quad	0x3fcd657eecc5225c              # double 0.22965990601575725
	.quad	0x3fcaf9d68f5b6504              # double 0.21074945449689875
	.quad	0x3fe4c91ae403044e              # double 0.64954895528365753
	.quad	0x3fc5991c76a5aee0              # double 0.16873508256264014
	.quad	0x3fd9a18f92cbd01a              # double 0.40048589072762442
	.quad	0x3fee7a99f636e727              # double 0.95246599282038324
	.quad	0x3fe4730051569aab              # double 0.63903823744188537
	.quad	0x3fb977f024366d40              # double 0.099486359444587613
	.quad	0x3fd7889030cc7ce6              # double 0.3677101589727968
	.quad	0x3fd25db81e244508              # double 0.28697016662143016
	.quad	0x3fe75ed30ae918cc              # double 0.73032524233783525
	.quad	0x3fd5052118e12502              # double 0.32843806676517329
	.quad	0x3fe252e4f733ced0              # double 0.57261894494737398
	.quad	0x3fddbdec03ecb4f2              # double 0.46471691497102008
	.quad	0x3fdf76307d6b0874              # double 0.49158870933400256
	.quad	0x3fe2f3418cd48920              # double 0.59219434266950444
	.quad	0x3fedbc5b61c603cb              # double 0.92924279304872337
	.quad	0x3fe8a792e43dcf5f              # double 0.77045578554541894
	.quad	0x3fcb8f1ac58a8080              # double 0.21530470510061051
	.quad	0x3fe73bce4748f4a1              # double 0.72605050967071716
	.quad	0x3fe554f79776e216              # double 0.66662196715248245
	.quad	0x3feb09392bf01f69              # double 0.84487589437138155
	.quad	0x3fe6e51f766ab561              # double 0.71546910408293851
	.quad	0x3fe81065b70fc499              # double 0.75200162653176783
	.quad	0x3fdb9baa0fe4006e              # double 0.43137599517650116
	.quad	0x3fe433c63da776fc              # double 0.63132011453464498
	.quad	0x3fac0105bd422e00              # double 0.054695300438734051
	.quad	0x3fd3edcbf1f7c5c0              # double 0.31138895635293906
	.quad	0x3fe2a1cafae2dd1a              # double 0.58225010873039484
	.quad	0x3fe8a9b7f9fc2df3              # double 0.7707176096459406
	.quad	0x3fd76054babe5f3e              # double 0.36525457607921286
	.quad	0x3fe24f7f04958a0c              # double 0.57220412154521361
	.quad	0x3fa79ae1ea67da40              # double 0.046103534568761706
	.quad	0x3fd951a29b0beeca              # double 0.39560761586447468
	.quad	0x3fe1f9fe9cc91768              # double 0.5617669164864596
	.quad	0x3fe4db7f65490918              # double 0.65179414541515523
	.quad	0x3fd46d9d4d5f33fc              # double 0.31919033580635392
	.quad	0x3fecfb66f389f0c1              # double 0.90568873945405681
	.quad	0x3fb672ec3d4f03f0              # double 0.087691082923825325
	.quad	0x3faa21b3d91dcf30              # double 0.051038379910919196
	.quad	0x3fd90f88cf4ef7d4              # double 0.39157314534156495
	.quad	0x3fe701e22517fea4              # double 0.71897990460270877
	.quad	0x3fdb281249005bfa              # double 0.42432076577227884
	.quad	0x3fc8adb769932e38              # double 0.19280140547776781
	.quad	0x3fdc9c637e11cf84              # double 0.44704520522577007
	.quad	0x3f957de2e4b046a0              # double 0.020988030632060117
	.quad	0x3fc435c15de97768              # double 0.15789048276468098
	.quad	0x3fe193bf08d391da              # double 0.5492854282752504
	.quad	0x3fd3ef832060d9de              # double 0.31149366533227674
	.quad	0x3fe7f8b1c1f70877              # double 0.74910819896491787
	.quad	0x3fe3874bd3491b74              # double 0.61026564852441689
	.quad	0x3fcf18fdcc10b140              # double 0.24295017685052223
	.quad	0x3fd040ad66797f8c              # double 0.25394759185109517
	.quad	0x3fc3de44917f6900              # double 0.15522057632808384
	.quad	0x3fef49ab0e06f5d4              # double 0.97774269809422742
	.quad	0x3fecabf77df7b56e              # double 0.8959920368485379
	.quad	0x3fe2879061267e70              # double 0.57904833769494068
	.quad	0x3fdf318a556151d4              # double 0.48739870393663165
	.quad	0x3fe434d736b7ee18              # double 0.63145027816011901
	.quad	0x3fc05a557a191dbc              # double 0.12775677167722488
	.quad	0x3fef551e0973c54c              # double 0.97914029928339507
	.quad	0x3fd054d4dfab3784              # double 0.25517770617158697
	.quad	0x3fa3bfb7add37520              # double 0.038572063416476121
	.quad	0x3fc143cbaf31c1a0              # double 0.13488145880138536
	.quad	0x3fe93ddd204d61c9              # double 0.78880173024213562
	.quad	0x3fe3e323401bec78              # double 0.62147676965049836
	.quad	0x3fbc55f5ee05c400              # double 0.11068665562721947
	.quad	0x3fc0d103184db0d0              # double 0.13137854277318306
	.quad	0x3fa55c2658a56320              # double 0.041718672104883447
	.quad	0x3fdf63bce7d01972              # double 0.49046251905419702
	.quad	0x3fcc8c637eda60b4              # double 0.22303432172771454
	.quad	0x3fed2631bcf690ed              # double 0.91091238886704462
	.quad	0x3fee132a8a54c20d              # double 0.93983962075987082
	.quad	0x3feb4fdd56b5cc0c              # double 0.85349909720969341
	.quad	0x3f935a90aadbb740              # double 0.018900165966378113
	.quad	0x3fe8cff7dd6b3926              # double 0.77538674589030587
	.quad	0x3fadd494f81fdfb0              # double 0.058262496269832709
	.quad	0x3fe894155a757a4e              # double 0.76807658832314885
	.quad	0x3fef2cf2e7359b3e              # double 0.97423691900335263
	.quad	0x3fe6143122db58f6              # double 0.68996483619665017
	.quad	0x3fac7b9acb7a8f80              # double 0.05563052877303587
	.quad	0x3fedc873cb54c9f1              # double 0.93071927750707861
	.quad	0x3fecb8be0d50d28c              # double 0.89755156136250624
	.quad	0x3fd254fe6a11df02              # double 0.28643761022929948
	.quad	0x3fef10f084ac7272              # double 0.97081781304184589
	.quad	0x3fe869bc8613b49c              # double 0.7629072779360686
	.quad	0x3fa71cc3ece99b20              # double 0.045141337079988242
	.quad	0x3fe600640b832e10              # double 0.68754770515937658
	.quad	0x3fe0095fbc1e18c2              # double 0.50114428273879974
	.quad	0x3fec5c78132894e1              # double 0.88628772489451191
	.quad	0x3feb4e45378e147d              # double 0.85330448961816752
	.quad	0x3fea926c987d779c              # double 0.83037404807304282
	.quad	0x3fdad4f5a4314ea8              # double 0.41924801859316085
	.quad	0x3feda6a542e4a539              # double 0.92659247460429761
	.quad	0x3fe3a3294f3cae31              # double 0.61366715885146139
	.quad	0x3feb7caf333549ad              # double 0.8589702606353079
	.quad	0x3fedc12a14b78a0b              # double 0.92982963606147118
	.quad	0x3fef7a338156a475              # double 0.98366713773169911
	.quad	0x3fc7e94c4fb5c400              # double 0.1868071927270023
	.quad	0x3fda6db0920d27e4              # double 0.41294492972212837
	.quad	0x3fcaf53f06f0cc28              # double 0.2106093200578425
	.quad	0x3fe171bea11f1064              # double 0.54513484448444816
	.quad	0x3fe38981ed948731              # double 0.61053558733349267
	.quad	0x3f8439befdd55540              # double 0.0098757668699059886
	.quad	0x3febfe21782e201d              # double 0.87477181885424538
	.quad	0x3fe31c387a1071bd              # double 0.59719489899321554
	.quad	0x3fac2ea720714300              # double 0.05504343291307201
	.quad	0x3feac9c304230f96              # double 0.8371291237640317
	.quad	0x3fca7c2c6a0d8e58              # double 0.20691447428099496
	.quad	0x3fd3007fe4105320              # double 0.29690549156048185
	.quad	0x3fdcf524b5cc9d4c              # double 0.45246236566386666
	.quad	0x3fe060d9780fb92b              # double 0.51182244729515014
	.quad	0x3fefd36dba970caa              # double 0.99455915873877143
	.quad	0x3fea810f940968e8              # double 0.82825449860982037
	.quad	0x3fed5a6b46432b51              # double 0.91728748057480847
	.quad	0x3fd07344fa35ad94              # double 0.25703548845805213
	.quad	0x3febe24a11979251              # double 0.87137320934250273
	.quad	0x3fb1c7175bbab7a0              # double 0.069444141287674288
	.quad	0x3fd07b30a1740a86              # double 0.25751891867563648
	.quad	0x3fc9a7aab5bbe334              # double 0.20042928575255703
	.quad	0x3fb91a89cab3de78              # double 0.098061191547339166
	.quad	0x3fc9ee666f9be24c              # double 0.20258789491323836
	.quad	0x3fbebd6c9717c420              # double 0.12007788361349059
	.quad	0x3fcaf5633fa1c6c4              # double 0.21061363799122124
	.quad	0x3fe5df2e501dd8b6              # double 0.68349376342555135
	.quad	0x3fb987a72b03e958              # double 0.099726150514390155
	.quad	0x3fef3c05e4d56235              # double 0.97607702917145522
	.quad	0x3fe6cd7d0fbb5bb5              # double 0.71258404801016317
	.quad	0x3fef8d56d612fec9              # double 0.98600332080237607
	.quad	0x3fd22defb0b254b4              # double 0.28405372863319234
	.quad	0x3fe91f7719b8e506              # double 0.78509097122074034
	.quad	0x3fc0de13d123bbe8              # double 0.1317772647084603
	.quad	0x3fed6997eca813c3              # double 0.91913982603056643
	.quad	0x3fd669d3b5632a48              # double 0.35020916665658719
	.quad	0x3fdbc9a350816fd8              # double 0.43418200361133819
	.quad	0x3fe99e5834685f2a              # double 0.80057916866187395
	.quad	0x3fdf49f9807191c2              # double 0.48889005225489879
	.quad	0x3fb4e8da779a28b8              # double 0.081678060722114476
	.quad	0x3fe95c83621bd9d0              # double 0.79254311715959069
	.quad	0x3fc49a9cc2fed594              # double 0.16096839448225053
	.quad	0x3fe391dc797a237a              # double 0.61155532575604288
	.quad	0x3fb1b77e281f6f20              # double 0.069206127925494076
	.quad	0x3fe739916a3c99f7              # double 0.72577734708175867
	.quad	0x3fe54216cd160176              # double 0.66431751304484865
	.quad	0x3fe86a2286d3d210              # double 0.7629559167240263
	.quad	0x3feeebc778d08924              # double 0.96628163906669728
	.quad	0x3fe1904762ba7294              # double 0.54886216433404167
	.quad	0x3fe59ef9374a562c              # double 0.6756559448137458
	.quad	0x3f8f8dd5a6ff31c0              # double 0.0154072467411418
	.quad	0x3fd9989734f62c98              # double 0.39993839427979472
	.quad	0x3fe671e8c85dc806              # double 0.70140494474458204
	.quad	0x3fc05f8947431070              # double 0.12791553477848394
	.quad	0x3fdbd515eb0cfb1a              # double 0.43488071397944028
	.quad	0x3fb347bd18e484c0              # double 0.075313395097071911
	.quad	0x3fd34712b40bfa8e              # double 0.30121295530981562
	.quad	0x3fc34cc7a69c4608              # double 0.15078063617015425
	.quad	0x3fd6326c42020b46              # double 0.34682756849376906
	.quad	0x3fb7af7f64549810              # double 0.092521631235826129
	.quad	0x3fb8fd0f818564b0              # double 0.097611397858957671
	.quad	0x3fe7201908eeb3ff              # double 0.72266818756690998
	.quad	0x3fbf5e47062d6f68              # double 0.12253230953996097
	.quad	0x3fe4e62f0d44c000              # double 0.65309860793604457
	.quad	0x3fea12993c728c3b              # double 0.81477033430235879
	.quad	0x3fd9c819dffd3604              # double 0.40283820032058792
	.quad	0x3fa00707d0ba71c0              # double 0.031303638677147472
	.quad	0x3fef75465b859b1d              # double 0.98306577563639374
	.quad	0x3fe2704c913b090a              # double 0.57620838513710848
	.quad	0x3fd6d5526fc7e88c              # double 0.35677014270880458
	.quad	0x3fe6bba6b9812c4d              # double 0.71040664893497196
	.quad	0x3fce6a2b082732d0              # double 0.23761499307729261
	.quad	0x3fe7bc419b218716              # double 0.74173050211922731
	.quad	0x3fb8616127023db8              # double 0.095235893272039074
	.quad	0x3fe36be27affd5c3              # double 0.60691951773940678
	.quad	0x3fc4c18190139c38              # double 0.16215533766737322
	.quad	0x3fedf3f291c15649              # double 0.93602875202004399
	.quad	0x3f49216856de6800              # double 7.6692194646743594E-4
	.quad	0x3fd54a6ca2d56dc2              # double 0.33266750241974929
	.quad	0x3fee860b66c72498              # double 0.95386285852250107
	.quad	0x3fef2dbe8fa06ee8              # double 0.97433403064812029
	.quad	0x3fd408289cf6cacc              # double 0.31299796417731041
	.quad	0x3feb99d47da7d1b1              # double 0.86252808134172743
	.quad	0x3f97eb7721a327e0              # double 0.023359166553554078
	.quad	0x3fd25a4b20a9c078              # double 0.28676107587580857
	.quad	0x3fc319f115e0ded4              # double 0.14922917907983069
	.quad	0x3fe3ec0f094112f7              # double 0.62256576354465565
	.quad	0x3fdb2ba31350dce6              # double 0.42453839193644993
	.quad	0x3fe2f0cf6197b4c8              # double 0.59189576207213523
	.quad	0x3fd1aaa00e86cd2a              # double 0.27603913706407701
	.quad	0x3feac781ade97400              # double 0.83685382811711406
	.quad	0x3fe658436930c867              # double 0.69827433152228202
	.quad	0x3fb7c4e8d9d91000              # double 0.092848351655504757
	.quad	0x3fc91348bfe97878              # double 0.19590100641920905
	.quad	0x3fe90aaba85c0be8              # double 0.7825525558731643
	.quad	0x3fd158eee71faf62              # double 0.27105305262261059
	.quad	0x3fecff5da4188ff1              # double 0.90617258119573141
	.quad	0x3fb6b635ca992cd0              # double 0.088717805826650009
	.quad	0x3fe8c01e3e9fa58c              # double 0.77345192176032773
	.quad	0x3fcc2957665d6ffc              # double 0.22001163957872893
	.quad	0x3fe30a9fdf6573dd              # double 0.59504693634118733
	.quad	0x3fd5c0e7ca822f4a              # double 0.3398990132925418
	.quad	0x3fd8e6ad79e4fd94              # double 0.38907944587477883
	.quad	0x3fd6804d42b4c5b8              # double 0.35158092035552668
	.quad	0x3fd9b5f277c809b0              # double 0.40173017213251239
	.quad	0x3fbd1cc801cc89a8              # double 0.11372041744156169
	.quad	0x3fdcc880b90ae3a2              # double 0.44973772116241595
	.quad	0x3fbf0b8487533f18              # double 0.12126949600064696
	.quad	0x3fee356c6ab18695              # double 0.94402142370764131
	.quad	0x3fb206685da92740              # double 0.070410273424525549
	.quad	0x3fd08c9f40a2672a              # double 0.25858289062454054
	.quad	0x3fdc83fb66d8abb2              # double 0.44555554431525046
	.quad	0x3fe98041821b5a6b              # double 0.79690623675817329
	.quad	0x3fe2d0f126fe368c              # double 0.58800561538528617
	.quad	0x3fd9dc52d6d533c6              # double 0.40407248477714253
	.quad	0x3fccfae86c8b889c              # double 0.22640710163165501
	.quad	0x3fe462c01d08a1a6              # double 0.63705449743888631
	.quad	0x3fd5c2dbbaa1f5ba              # double 0.34001820779652869
	.quad	0x3fd57a8b1b58d952              # double 0.33560445471393507
	.quad	0x3fd55cff91ae99e2              # double 0.33380116678963934
	.quad	0x3fe6affbbace75db              # double 0.70898233876840366
	.quad	0x3fde4e82f66318f2              # double 0.47354196606865095
	.quad	0x3fbc00f08387aef0              # double 0.1093893357389637
	.quad	0x3fef344f68190ff2              # double 0.9751355202829457
	.quad	0x3fecc7be8b297f27              # double 0.89938285045716249
	.quad	0x3fdeedfdb3aa1366              # double 0.48327581925723562
	.quad	0x3febad5f0131a18c              # double 0.8649134658162878
	.quad	0x3fe7e8933d923f98              # double 0.74714052224770722
	.quad	0x3feee08f2384d675              # double 0.96491200387272491
	.quad	0x3fd44cc2e7311234              # double 0.31718514039338008
	.quad	0x3fbbff8496d74830              # double 0.10936764414444222
	.quad	0x3fdfa884f2d9531e              # double 0.49466060367312703
	.quad	0x3fc703caea712334              # double 0.17980324218140142
	.quad	0x3fc0901774013cb4              # double 0.12939732708261931
	.quad	0x3fef6e0df58a9035              # double 0.98218439061429896
	.quad	0x3fe5c305011b3c2f              # double 0.68005609718409754
	.quad	0x3fe00dfad6266220              # double 0.50170652223738799
	.quad	0x3fee540511664388              # double 0.94775632284482558
	.quad	0x3fe27038fd3889f4              # double 0.57619904954145662
	.quad	0x3fd1e7f21b2168f6              # double 0.27978184365714698
	.quad	0x3fe04c216a81e4f7              # double 0.50929327776171263
	.quad	0x3fedc04f9cdec14b              # double 0.92972546232889763
	.quad	0x3fe85607ffa66ff9              # double 0.76050186092061189
	.quad	0x3fef5df11e301e0a              # double 0.98021751304708116
	.quad	0x3fea664862ab0217              # double 0.8249856879338634
	.quad	0x3fefb57da131108c              # double 0.99090463145013663
	.quad	0x3fe5968bdc1e0787              # double 0.67462723724041573
	.quad	0x3fe13dfc54cf1923              # double 0.53881660999539738
	.quad	0x3fea7fee75f0ed11              # double 0.82811663661360246
	.quad	0x3fda8b694cad12ce              # double 0.4147589920797089
	.quad	0x3f73b1ebed68a380              # double 0.0048083511269759738
	.quad	0x3fe8c1149e621d3f              # double 0.77356940206747271
	.quad	0x3fbd7a286ab01030              # double 0.11514523129159282
	.quad	0x3feddac30e103758              # double 0.93295433756586998
	.quad	0x3fea4178ea3f99a1              # double 0.82049222709320102
	.quad	0x3fd54c418fc24e5a              # double 0.3327793029686511
	.quad	0x3fd3c0f367ae1f56              # double 0.30865178227440049
	.quad	0x3faf7236366e0c90              # double 0.061418241638443338
	.quad	0x3feb467381972394              # double 0.8523499995290984
	.quad	0x3fec15cfe185e396              # double 0.87766260192357737
	.quad	0x3fd7fad14c34e168              # double 0.37468368951842601
	.quad	0x3fcd48eda455db7c              # double 0.22878809475124828
	.quad	0x3fd5e83bbefdd90c              # double 0.34229940082094923
	.quad	0x3fd9c1a990f036e0              # double 0.40244521288046364
	.quad	0x3fbaf6c9ea94c418              # double 0.10532819726064735
	.quad	0x3fe08203d0fd6af0              # double 0.51587096041052227
	.quad	0x3fe27284e21f2bfb              # double 0.57647937931449122
	.quad	0x3fe0f228aef7903e              # double 0.52956041501284523
	.quad	0x3fd7950d6c392832              # double 0.36847243851355238
	.quad	0x3fe4ba2d7cbbd02d              # double 0.64772676813163843
	.quad	0x3fc4929b8623cbd0              # double 0.16072410630985567
	.quad	0x3fb29f986ba18fe8              # double 0.072747732426762135
	.quad	0x3fe2ed4c8f747d57              # double 0.59146717089235323
	.quad	0x3fce4efbf2344844              # double 0.2367854054105597
	.quad	0x3fe845987d86bfbb              # double 0.75849556462161816
	.quad	0x3fef7f22a9e8133a              # double 0.98426945862647774
	.quad	0x3fda3a007f5d39e6              # double 0.40979015767962179
	.quad	0x3fc5588338800160              # double 0.16676368960180366
	.quad	0x3fdd5ee159295cbc              # double 0.45891603190598196
	.quad	0x3fd100c375d7ad24              # double 0.26567160137229195
	.quad	0x3fe992267d8a7012              # double 0.79909061927492275
	.quad	0x3fdcfae7e15064c6              # double 0.45281407359432213
	.quad	0x3fe2adb7c63e83cc              # double 0.58370579452104598
	.quad	0x3fec9c96983ff23d              # double 0.89411477791106331
	.quad	0x3fdc02784119bb92              # double 0.43765074117157454
	.quad	0x3fcf02e2b71662b4              # double 0.24227556171242315
	.quad	0x3fb5e150d542f430              # double 0.085469295564465808
	.quad	0x3fd423997c134a72              # double 0.31467282406553132
	.quad	0x3fec1014d1872892              # double 0.87696305201940761
	.quad	0x3fc614cf4875d148              # double 0.17251006162735849
	.quad	0x3fd8a0afe9d6d776              # double 0.38480756603109201
	.quad	0x3fd81ab1aa80b5c0              # double 0.37662927294408277
	.quad	0x3fa90d74dfca4460              # double 0.048930790250900413
	.quad	0x3fe1e2973daa1ef0              # double 0.55891000789503487
	.quad	0x3fcac092336ee260              # double 0.20900180350669739
	.quad	0x3fdedf13bb45834e              # double 0.48236554420696087
	.quad	0x3fd26774bf500d7a              # double 0.28756445582276735
	.quad	0x3fdf8b3ab3913d6c              # double 0.49287288223145853
	.quad	0x3fe32ff1f99adce5              # double 0.59960268736804478
	.quad	0x3fea38ca69c489dd              # double 0.8194324556137037
	.quad	0x3fd42105cfec649e              # double 0.31451554589291131
	.quad	0x3fc3105058d84d60              # double 0.14893535936480884
	.quad	0x3fe739f2a4ea1ff2              # double 0.72582370958207165
	.quad	0x3f62cc7795be3800              # double 0.0022947631495702225
	.quad	0x3fc77825331a6c40              # double 0.18335404391550192
	.quad	0x3fe904c1f830c604              # double 0.78183077311240412
	.quad	0x3fe8614605a1bf72              # double 0.76187420940367034
	.quad	0x3fe30e0639f2fc8f              # double 0.59546195333668261
	.quad	0x3fe133326a843d01              # double 0.53749962619795622
	.quad	0x3febe04e119ac409              # double 0.87113097608937651
	.quad	0x3fed64577a417d56              # double 0.91849874380197138
	.quad	0x3fdd59a25c643e64              # double 0.45859583876242582
	.quad	0x3fee69538408be6a              # double 0.95035720622941011
	.quad	0x3faaadfc68377d60              # double 0.052108657571575234
	.quad	0x3fdd6139a0c03b08              # double 0.45905914972620154
	.quad	0x3fe573ee0d4c98fb              # double 0.67040159795286003
	.quad	0x3fd9926c780aa1b2              # double 0.39956199381642954
	.quad	0x3fcf9a7b01dbb698              # double 0.24690187063918212
	.quad	0x3feca58b7c1b7f18              # double 0.89520811309555182
	.quad	0x3fe7aea82c71ef05              # double 0.74007042580294125
	.quad	0x3fee8b8fe8b75aff              # double 0.95453639461888418
	.quad	0x3fcecca8c236628c              # double 0.24062070353535991
	.quad	0x3faffd309fc708d0              # double 0.062478560928427407
	.quad	0x3fe944af7d945b88              # double 0.7896344616627724
	.quad	0x3fdbb22e11914f48              # double 0.43275024142825602
	.quad	0x3fdcc8d6f3264734              # double 0.44975827927656842
	.quad	0x3fed3b3bce01cc5c              # double 0.91348066554781892
	.quad	0x3fbc647b4e009a10              # double 0.11090822843889492
	.quad	0x3fd5fb107baa023c              # double 0.34344875408718045
	.quad	0x3fe2a66281442dc2              # double 0.58281064269379379
	.quad	0x3fc8d393ccb33f6c              # double 0.19395682807089132
	.quad	0x3fe22d681fd1c375              # double 0.56804281439518312
	.quad	0x3fe8ca244e1d0fc5              # double 0.77467551476046792
	.quad	0x3fe76f0a90650b25              # double 0.73230484201517199
	.quad	0x3fe901a5b63ea9b7              # double 0.78145108790095363
	.quad	0x3fde15d9390373e0              # double 0.47008352821086241
	.quad	0x3fe559c40a4e6dfe              # double 0.66720773709261016
	.quad	0x3fe34990affe4b0f              # double 0.60273012517640889
	.quad	0x3fec06f84f761adc              # double 0.87585082549852755
	.quad	0x3fee731c702f00b4              # double 0.95155164633617639
	.quad	0x3fecc1d476403095              # double 0.89866088004920874
	.quad	0x3fea555e39d0ed83              # double 0.82292090694629427
	.quad	0x3fcb661a78e110f4              # double 0.21405344869902587
	.quad	0x3fd81ea4cf466d52              # double 0.37687034837445765
	.quad	0x3fed462f699113cb              # double 0.91481752985475262
	.quad	0x3fea8e22b3649f17              # double 0.82985053098397799
	.quad	0x3fcbc5892dbf1c10              # double 0.21696581586567776
	.quad	0x3fb0895b8c16a650              # double 0.064595910741126916
	.quad	0x3fea2022fc45d8fe              # double 0.81642293235816488
	.quad	0x3fe039b84c64b241              # double 0.50704588814330276
	.quad	0x3fc9d1fe7d8c6bc0              # double 0.20172101145075594
	.quad	0x3fecb01ba58daf1b              # double 0.89649755797060793
	.quad	0x3fcde2751b9d6430              # double 0.23347343300227541
	.quad	0x3fe69cf835eeb003              # double 0.70666132482210775
	.quad	0x3fdca52a40ceb5ba              # double 0.44758087471822317
	.quad	0x3fe03c37ec8ee4bc              # double 0.50735088541764339
	.quad	0x3fa20e59ce3a8a40              # double 0.035265737938307229
	.quad	0x3fe5c85786a6f461              # double 0.6807057981419683
	.quad	0x3fb9e0453e4e3ff8              # double 0.10107834597715726
	.quad	0x3fdb8771663c63e8              # double 0.43014178260778957
	.quad	0x3fd78584ed841bc8              # double 0.36752436823774959
	.quad	0x3fd5b2882b13c6c4              # double 0.33902172285807475
	.quad	0x3fe5d11a13bd5772              # double 0.68177512984651245
	.quad	0x3fc5ffad91d43b0c              # double 0.17186517353589925
	.quad	0x3fba8eaf7f95d488              # double 0.10373970856547221
	.quad	0x3fe0e086c73dd86d              # double 0.52740801729556852
	.quad	0x3fda79dfc5002af6              # double 0.41368860472054736
	.quad	0x3fe48d7d3a0e3ea1              # double 0.64227162684433747
	.quad	0x3fee45b010842fdd              # double 0.9460068056664529
	.quad	0x3fd89561c441cd5a              # double 0.38411754766203432
	.quad	0x3fb8f72f5c806060              # double 0.097521743853918874
	.quad	0x3fe7c18c4126a943              # double 0.74237644886788023
	.quad	0x3fefc3160c64dfc7              # double 0.99256422444067815
	.quad	0x3fd668168f4f8192              # double 0.35010303492711004
	.quad	0x3fd55a99e7f5e13c              # double 0.33365485813512286
	.quad	0x3fe7d6e9c4696ab0              # double 0.74498451577831837
	.quad	0x3feccdd15826483e              # double 0.90012423721987722
	.quad	0x3fd3498dfb7ba0a4              # double 0.30136441763762378
	.quad	0x3fcd546c13cabdb4              # double 0.22913886038211972
	.quad	0x3febf1a873dcc02d              # double 0.87324926976544293
	.quad	0x3feea87b02996229              # double 0.95806646831176067
	.quad	0x3feca1f07140b62a              # double 0.89476797218020931
	.quad	0x3fe15927646f542e              # double 0.54213304153620867
	.quad	0x3fe10316ef2c92db              # double 0.53162714685148715
	.quad	0x3fd8381428d87044              # double 0.37842277516188383
	.quad	0x3fabbee0fe4a3de0              # double 0.054190665284405304
	.quad	0x3feb1dc1c3bb6957              # double 0.84738243321343532
	.quad	0x3feb56395511f086              # double 0.85427538504838263
	.quad	0x3fdb26cb7f3b0c46              # double 0.42424285340183976
	.quad	0x3fe6dfb3c5419def              # double 0.71480740095733875
	.quad	0x3fcd5bb774d79da4              # double 0.22936146931827495
	.quad	0x3fd04e92ce3746a8              # double 0.25479574335359212
	.quad	0x3fe5f8a5d1c9ea6f              # double 0.68660250639307019
	.quad	0x3faf82b8406036b0              # double 0.061544187410715323
	.quad	0x3fe0b60ac27b73c8              # double 0.52222192749797447
	.quad	0x3fe9d22224fddb06              # double 0.80690104699064658
	.quad	0x3fdbf4a42fae90c0              # double 0.436806723179199
	.quad	0x3fea1655200be407              # double 0.8152261377246085
	.quad	0x3f88de8b00e31800              # double 0.012143217053004918
	.quad	0x3fece014b448d342              # double 0.90235362254916418
	.quad	0x3fd4e7d7921ace9e              # double 0.32665051715887639
	.quad	0x3fea2d0e0370ce6c              # double 0.8179998461914244
	.quad	0x3fe76054755ab9c2              # double 0.73050902291088726
	.quad	0x3fe8b7489f0ecc81              # double 0.77237349573114511
	.quad	0x3fe19efca9757333              # double 0.55065758798045861
	.quad	0x3fc8bfcecf4d572c              # double 0.19335351106809051
	.quad	0x3fee0c18b85a1d18              # double 0.93897663122416741
	.quad	0x3fd4227ca228171c              # double 0.31460491023641324
	.quad	0x3fe2cce8b8e67287              # double 0.5875133143741359
	.quad	0x3fcb825393d54e78              # double 0.21491474836749425
	.quad	0x3fbb7e93af4b7ef0              # double 0.1074001601186827
	.quad	0x3fbee51ef6a55620              # double 0.1206836082613667
	.quad	0x3fe18dc52e34f3c4              # double 0.54855593704962091
	.quad	0x3fd52fcd737de2e4              # double 0.33104263571253356
	.quad	0x3fdc18293b83a7b4              # double 0.43897467433873349
	.quad	0x3fd9913e3b37557e              # double 0.39948993475748995
	.quad	0x3f87052d1cd65600              # double 0.011240341608565352
	.quad	0x3fc60a782a4c90f4              # double 0.17219450059304331
	.quad	0x3fcf643aaccd9710              # double 0.24524625241900155
	.quad	0x3fed166a6aa15dd9              # double 0.90898629022825184
	.quad	0x3fdfe2969b299d24              # double 0.49820485260575453
	.quad	0x3fcecc2e7d006264              # double 0.24060612777317936
	.quad	0x3fe0460df13f39d9              # double 0.50855157011556706
	.quad	0x3fba83ca58f5df68              # double 0.10357346221814867
	.quad	0x3fdd45ff965015b6              # double 0.45739736250865393
	.quad	0x3fc9b09bbd7df248              # double 0.20070215942895886
	.quad	0x3fe0779677e3fdea              # double 0.51459811607486228
	.quad	0x3fedaa5f7b8f2a99              # double 0.92704748280205529
	.quad	0x3fead8c3d9a12281              # double 0.83896057611225683
	.quad	0x3fecdbcf44e97701              # double 0.90183223208779861
	.quad	0x3fe8588014081864              # double 0.76080325996805386
	.quad	0x3fc43ddcf2659cb4              # double 0.15813791118418907
	.quad	0x3fed9ba53f50b2ec              # double 0.92524969450240979
	.quad	0x3fe9a81463303d48              # double 0.80176753399602152
	.quad	0x3fc8a79bb5ad8f50              # double 0.19261499758715184
	.quad	0x3fd3c287e1ff7a60              # double 0.30874821729768165
	.quad	0x3fe0730e4437926e              # double 0.51404488872192444
	.quad	0x3fe5f4423767a9d6              # double 0.68606673070217528
	.quad	0x3fd726c16cc8272a              # double 0.36174045203425698
	.quad	0x3fe79d567bbde69e              # double 0.73795627754516935
	.quad	0x3fa954b3e115cce0              # double 0.049474354959693434
	.quad	0x3fe4c5a8ded34616              # double 0.64912837524952027
	.quad	0x3feb56febe78e020              # double 0.85436951829524687
	.quad	0x3fe53b6c5c6167c7              # double 0.66350381892265708
	.quad	0x3fe2bcd3b7352316              # double 0.58555017264106612
	.quad	0x3fd3c63edf4b0fba              # double 0.30897495084741033
	.quad	0x3fe77d09465d0369              # double 0.73401321165884525
	.quad	0x3fe84fac78427282              # double 0.75972579467959656
	.quad	0x3fde35b1d61f50be              # double 0.4720272627867067
	.quad	0x3fd14314a8d3ab84              # double 0.26971928107257548
	.quad	0x3fc2189b403c4680              # double 0.14137592922684306
	.quad	0x3fe6710fa8a0aea1              # double 0.70130141196337459
	.quad	0x3fe54b9d24a3a7b5              # double 0.66548020511731087
	.quad	0x3fee130cd18643e7              # double 0.93982544825314285
	.quad	0x3fd3d8879c75b370              # double 0.31009092597269383
	.quad	0x3f904df7764e6640              # double 0.015922419162597956
	.quad	0x3fe4597f54528823              # double 0.63592497319428209
	.quad	0x3fe77c8b2ccd984b              # double 0.73395308256727654
	.quad	0x3fef7ae6031b071d              # double 0.98375225645597519
	.quad	0x3fc5169500d93c90              # double 0.16475164929804409
	.quad	0x3fd62820e33f8b30              # double 0.34619924728592633
	.quad	0x3fc9d4ca840d7fa8              # double 0.2018063683308331
	.quad	0x3feca18d7692edb1              # double 0.89472077521297966
	.quad	0x3fe3ea69d1710239              # double 0.6223649111416939
	.quad	0x3fc810a079cea930              # double 0.18800741145725786
	.quad	0x3fe4b55477efdc54              # double 0.64713500428377779
	.quad	0x3fe6d252846b1d9e              # double 0.71317411292050159
	.quad	0x3fd904962a6f90d4              # double 0.39090494293328715
	.quad	0x3fbe069bf99d2e70              # double 0.1172883495721011
	.quad	0x3fefbcd911795a1f              # double 0.99180272496124988
	.quad	0x3fe137341a53d77d              # double 0.53798871175852947
	.quad	0x3fe2c0d54e29cd63              # double 0.58603921190517061
	.quad	0x3fdaa152d88352e4              # double 0.41609641212316562
	.quad	0x3fc2b13a8f392d98              # double 0.14603359216048939
	.quad	0x3fe817d7da99bbe0              # double 0.75291054435171744
	.quad	0x3f7edd76b2942700              # double 0.0075354229568433961
	.quad	0x3fec86bb7648219e              # double 0.891446810740536
	.quad	0x3fd4cfea62c426b2              # double 0.32519015927446582
	.quad	0x3fe5934761031776              # double 0.67422837207480657
	.quad	0x3feaa7e45bfedd8e              # double 0.83299463241466909
	.quad	0x3fd70bf62d2498f6              # double 0.36010507973186578
	.quad	0x3fed63920da7b09d              # double 0.91840460459708917
	.quad	0x3fda6a4d7915183c              # double 0.41273819755986429
	.quad	0x3fd40a2af55dd3f2              # double 0.313120593658197
	.quad	0x3fe89e0d2d82d9f9              # double 0.769293393029158
	.quad	0x3fdc6cbfdfaf45ee              # double 0.44413754314618259
	.quad	0x3fe3a3185974e179              # double 0.61365907165513456
	.quad	0x3fcefda1f4152c8c              # double 0.24211525362111208
	.quad	0x3fbff4c8766aefb8              # double 0.12482884303147912
	.quad	0x3fc3749ee8231e1c              # double 0.15199648222754625
	.quad	0x3fe922a429b4bc17              # double 0.78547866960241464
	.quad	0x3feddaf48c1480fb              # double 0.93297793731110745
	.quad	0x3fc864f6ece36f5c              # double 0.19058119360749515
	.quad	0x3fe1398b7cb8dd96              # double 0.53827452049056279
	.quad	0x3fd88915098b0e8c              # double 0.38336683208420008
	.quad	0x3fed72c779a46e21              # double 0.92026113279593258
	.quad	0x3fe4da9d97c30cd0              # double 0.65168647423743131
	.quad	0x3fd808145ad371ac              # double 0.37549313420984265
	.quad	0x3fc77278e2bae9e4              # double 0.18318091460044095
	.quad	0x3fd0f041a3024e1e              # double 0.26466408652160733
	.quad	0x3fe2950f5b30b31c              # double 0.58069579897491819
	.quad	0x3feaccb7085fc84b              # double 0.83748962054802101
	.quad	0x3fecd47f66d68c20              # double 0.90093965611993453
	.quad	0x3fd591ef83054d92              # double 0.33703220171920478
	.quad	0x3fe7b1e4f370c6aa              # double 0.7404656176278952
	.quad	0x3fe99bfbee4cf8de              # double 0.80029102843380051
	.quad	0x3fe34e35c748f16b              # double 0.60329712794149992
	.quad	0x3febb7ba41bf34db              # double 0.86617768136207063
	.quad	0x3fce07ae7414333c              # double 0.23460941951670999
	.quad	0x3fe29fb9e2b090b3              # double 0.58199781680425244
	.quad	0x3fe8926b8b310b3f              # double 0.76787354646544503
	.quad	0x3fc6e92cf5067b50              # double 0.17899095501067075
	.quad	0x3fe9a505c0a67279              # double 0.80139434458722214
	.quad	0x3fe4d554e4d4ae02              # double 0.6510414571143317
	.quad	0x3febc9f67e0026d1              # double 0.86840366944781
	.quad	0x3fd5ee471df03c30              # double 0.3426683227889411
	.quad	0x3fec463c9c277242              # double 0.88357382296414522
	.quad	0x3fbfba29565e3910              # double 0.12393434866519137
	.quad	0x3fd13a7d6aaad0a8              # double 0.26919494072650219
	.quad	0x3fcef45517b3e21c              # double 0.24183143288952713
	.quad	0x3fc38f32365e3080              # double 0.15280749945339167
	.quad	0x3fe93f67bb987ffa              # double 0.7889898933390207
	.quad	0x3fee92fbf924f7d0              # double 0.95544241581932887
	.quad	0x3fda5a6be54911aa              # double 0.41176888838915693
	.quad	0x3fdc0503265986ce              # double 0.43780592675294094
	.quad	0x3fe65f48574dc50b              # double 0.69913117457886764
	.quad	0x3fe00d4303745fc0              # double 0.50161886858676752
	.quad	0x3fe7bf699eace2bf              # double 0.74211579314495413
	.quad	0x3fb1ed4f2609e790              # double 0.070027300631322342
	.quad	0x3fcb4d03b14d6fd0              # double 0.21328779370639817
	.quad	0x3fd39e48a88485fe              # double 0.30653587776950519
	.quad	0x3fd1bc31e9e5f560              # double 0.27711150972012
	.quad	0x3fd01777fce827a4              # double 0.2514324159425263
	.quad	0x3fe7b516247b6de0              # double 0.74085528493327146
	.quad	0x3feb1358dc394f2a              # double 0.84611170780633427
	.quad	0x3fcf4ed5b5e25cf4              # double 0.2445933473688694
	.quad	0x3fe67202a819d394              # double 0.70141728241161383
	.quad	0x3fe76c89a1cc5331              # double 0.73199922181320265
	.quad	0x3fbbf96f596691f0              # double 0.10927482540734679
	.quad	0x3fd74fe5326c6a18              # double 0.36425142215890238
	.quad	0x3feb5842b1fce084              # double 0.85452399028055525
	.quad	0x3fd5e7ca0014069c              # double 0.34227228171958202
	.quad	0x3fd4051242808b6e              # double 0.31280952925060646
	.quad	0x3fe2d2cdae82c84b              # double 0.58823284229425477
	.quad	0x3fcedde7de08f944              # double 0.24114702550464007
	.quad	0x3fde6dd337c163ec              # double 0.47545319027773192
	.quad	0x3fe3e25ffa52bc15              # double 0.62138365641829074
	.quad	0x3fca77fa0eaf9d3c              # double 0.20678640095796108
	.quad	0x3fd8a919986ee7c8              # double 0.38532104383523036
	.quad	0x3fdf6432ee4d7924              # double 0.49049065849057372
	.quad	0x3fc32b439d72177c              # double 0.14975781619812867
	.quad	0x3fe23a3725ee3333              # double 0.56960637481970477
	.quad	0x3feca820222af0c1              # double 0.89552313493143043
	.quad	0x3fe09d7f41f1ab08              # double 0.51922572021189328
	.quad	0x3fe4acdbaed59571              # double 0.6461008467419288
	.quad	0x3fe903e1f0a0714b              # double 0.78172394750030472
	.quad	0x3f85cec9cbbb8e40              # double 0.01064832356445955
	.quad	0x3fc3b3e1227c8df0              # double 0.15392698463357091
	.quad	0x3fd56e06ec8b78e4              # double 0.33484051799849923
	.quad	0x3fdc81b5fc12c310              # double 0.44541692368061181
	.quad	0x3fedc31d8edadcf6              # double 0.93006780530313793
	.quad	0x3fea95d1c974de37              # double 0.83078851077056626
	.quad	0x3fea0e1cbaca9e23              # double 0.8142226837416654
	.quad	0x3fe9eace36510d02              # double 0.80991278275215017
	.quad	0x3fe6c983fe7f578e              # double 0.71209907251862758
	.quad	0x3fd505017cd05de0              # double 0.32843053044186199
	.quad	0x3fc21539e0b8378c              # double 0.14127276871334649
	.quad	0x3fde265e1380265a              # double 0.47109176544527076
	.quad	0x3fde850a532bb106              # double 0.47687013742576345
	.quad	0x3fe8c938a05d248e              # double 0.77456313439428626
	.quad	0x3fd89d5e9a2567c0              # double 0.38460507443744163
	.quad	0x3fdd734a3b922bf4              # double 0.46016174142340494
	.quad	0x3fe50f61c17df617              # double 0.6581276682988485
	.quad	0x3fd7f9b5d7b6e20e              # double 0.3746161085687455
	.quad	0x3fe8dd9bbc14dd49              # double 0.77705179915111799
	.quad	0x3feaf324e71e2144              # double 0.84218068256544897
	.quad	0x3fde5244213108fc              # double 0.47377112618791251
	.quad	0x3fe3f74d5af9072b              # double 0.62393825309866224
	.quad	0x3fe847cb40525721              # double 0.75876390993900966
	.quad	0x3fd7acba4c2f2d20              # double 0.36991746368285483
	.quad	0x3fb8f74493ea22c0              # double 0.097523008453332061
	.quad	0x3fc6bfe3a154d864              # double 0.17773099305640294
	.quad	0x3fccbc54b54f1ec0              # double 0.22449740269643392
	.quad	0x3feaaba88fd2a3cd              # double 0.83345439997094106
	.quad	0x3fe6716dc33129c2              # double 0.70134628413625699
	.quad	0x3fe4c3bd29e689bc              # double 0.64889391120623641
	.quad	0x3fe58c10a2c6f236              # double 0.67334777634056908
	.quad	0x3fc2b53a49da8f48              # double 0.14615563017025068
	.quad	0x3fdb3dec4e7412be              # double 0.42565448438135067
	.quad	0x3fea49456adab7f8              # double 0.8214442336081893
	.quad	0x3fecd92e28502bc8              # double 0.90151126741090426
	.quad	0x3feafb06904fce17              # double 0.84314277826200879
	.quad	0x3fd356c00d67c3aa              # double 0.30216981228937334
	.quad	0x3fe4db05a8a3ed42              # double 0.65173609674040045
	.quad	0x3fc58ba0c0aee468              # double 0.16832360657079737
	.quad	0x3fb2968baa098a98              # double 0.072609642994886037
	.quad	0x3fcfcf4cdfbe6a8c              # double 0.24851380276671298
	.quad	0x3fe28bfedefda6d3              # double 0.57958930542846543
	.quad	0x3fc5c49ebc2c34f0              # double 0.17006286800498271
	.quad	0x3fe47dc1ec1e31de              # double 0.64035125843798446
	.quad	0x3fd43d68cb336174              # double 0.31624812930888102
	.quad	0x3faed59b21067e40              # double 0.060223434239784712
	.quad	0x3feac21b99e312f5              # double 0.83619480186516049
	.quad	0x3fd8e368b355010e              # double 0.38887994301696061
	.quad	0x3fd6fb6eed5916ae              # double 0.35909627131000377
	.quad	0x3fb72010df5b1b40              # double 0.09033303692841077
	.quad	0x3f46332343e70400              # double 6.7748281417590039E-4
	.quad	0x3f9267e882dd56a0              # double 0.017974503505078787
	.quad	0x3fe0dcd3786cff61              # double 0.52695630570086049
	.quad	0x3fd09abaafd174d4              # double 0.25944392366166125
	.quad	0x3fb7798c44606358              # double 0.091698424046979254
	.quad	0x3feb8728a87db132              # double 0.86024887951274409
	.quad	0x3fe18ed8be1197fe              # double 0.54868733523176139
	.quad	0x3fe277fa33ef83a6              # double 0.57714567321464894
	.quad	0x3fe1f3e5cd004061              # double 0.56102266349081387
	.quad	0x3fed07cee836ce46              # double 0.90720315317452882
	.quad	0x3fd20727e7d30876              # double 0.28168676032158346
	.quad	0x3fe43388c4f9b7ab              # double 0.63129080268639848
	.quad	0x3fef90cd3d5855ca              # double 0.98642599088150829
	.quad	0x3fcfef5beb291308              # double 0.24949215872234043
	.quad	0x3fd74e7b5db17a52              # double 0.36416515493138946
	.quad	0x3fe45c7e9b47d65a              # double 0.63629083946461695
	.quad	0x3fdce37b85c5d516              # double 0.45138443053959187
	.quad	0x3fd0292262296f2a              # double 0.25251063905828863
	.quad	0x3fca9070a334188c              # double 0.20753295868798138
	.quad	0x3fe1dbbb14479467              # double 0.55807260475979781
	.quad	0x3fe369489bdf3cf8              # double 0.60660200542216014
	.quad	0x3fd508ab6bc20ab2              # double 0.32865415118446173
	.quad	0x3fc33cab02e200fc              # double 0.15028894081843436
	.quad	0x3faf67b917a6bdf0              # double 0.061338218819738333
	.quad	0x3fef27e46fc67167              # double 0.97361966925704457
	.quad	0x3fd27af409847fca              # double 0.28875447205973315
	.quad	0x3fe90c88b542175c              # double 0.78278003122316475
	.quad	0x3fe913590e188920              # double 0.78361180070013247
	.quad	0x3fe71b1e85529f0b              # double 0.72206045188519974
	.quad	0x3fec2fff66709066              # double 0.88085908897165832
	.quad	0x3fdfcd51cb0b4a78              # double 0.4969067080357159
	.quad	0x3fe3bb7e5b3253d5              # double 0.6166373997863227
	.quad	0x3fe1caf8fa186640              # double 0.55602692457905079
	.quad	0x3fdadc4aaeb2f7ba              # double 0.41969554005106213
	.quad	0x3fef70b996a0a5c2              # double 0.9825103704399043
	.quad	0x3fe798ff14050d4d              # double 0.7374263182650026
	.quad	0x3fd00bf0c9265ce8              # double 0.25072879451313534
	.quad	0x3fe510f378058306              # double 0.65831921998696497
	.quad	0x3fd1fc5abad8bf62              # double 0.28102749106164115
	.quad	0x3fe235943840b0a6              # double 0.56904040324072436
	.quad	0x3faa2fb6f59f02d0              # double 0.051145284159706983
	.quad	0x3f99a1a1022b76e0              # double 0.025030627973015807
	.quad	0x3fdfd401eabd14ce              # double 0.49731491016093521
	.quad	0x3fd1f15990934fc6              # double 0.28035582655615732
	.quad	0x3feb322fdcf32dea              # double 0.84987633852273103
	.quad	0x3fead275e64f3f64              # double 0.83819098455749641
	.quad	0x3fe586d95a3a5a78              # double 0.67271106360097033
	.quad	0x3fb43e9f810493b0              # double 0.079080552099709988
	.quad	0x3fe270a92cb61f38              # double 0.57625254376123447
	.quad	0x3fda658e67a7b300              # double 0.41244850275579381
	.quad	0x3fed5dd36cd75fd1              # double 0.91770335443561113
	.quad	0x3fd74dd809785eca              # double 0.3641262142641436
	.quad	0x3fe87e3d6cbc69bc              # double 0.76541014897821169
	.quad	0x3fe2e99b66cdd367              # double 0.59101648405940643
	.quad	0x3fdf3e9d95e12012              # double 0.48819675099048354
	.quad	0x3fe4e9d154611dc3              # double 0.65354219894737076
	.quad	0x3fe99bef9e9399af              # double 0.80028515789017785
	.quad	0x3fdfa9389d4fcf18              # double 0.49470343935466721
	.quad	0x3fb29bd18d9ff0b8              # double 0.072690102650031174
	.quad	0x3fefb8e6e3840c4a              # double 0.99132103382761128
	.quad	0x3fd09970a67f94b6              # double 0.25936523685079338
	.quad	0x3fb9d21c770a6c28              # double 0.1008622923495045
	.quad	0x3fdb03fb37cf592c              # double 0.42211800050917492
	.quad	0x3fe1a9a3f49c2604              # double 0.55195806289083338
	.quad	0x3fec259c02093885              # double 0.87959099195155999
	.quad	0x3fd29934a41dae80              # double 0.2906009295172467
	.quad	0x3fdfaef03cfbeb12              # double 0.49505239444231208
	.quad	0x3fe958f928fef0f5              # double 0.79211099631314019
	.quad	0x3fd66f9d21d5a344              # double 0.35056236557152354
	.quad	0x3fe8193d9c5d9805              # double 0.75308113613277838
	.quad	0x3fb98c63416f7cc0              # double 0.099798396563971714
	.quad	0x3fe07b142c7be02a              # double 0.51502426803836454
	.quad	0x3fe1f4c8a07b930a              # double 0.56113082260398639
	.quad	0x3fc86cc7f2fc87bc              # double 0.19081973423550191
	.quad	0x3fe49db8adbbe7cb              # double 0.64425310070441222
	.quad	0x3fe32ce80d0393a9              # double 0.59923174421111469
	.quad	0x3fc3913c5ff258d0              # double 0.15286974606414683
	.quad	0x3fe19c5b1c6b96be              # double 0.55033641386827248
	.quad	0x3fd9e9d2da08f194              # double 0.40489646236871946
	.quad	0x3fd4aedfa8a35162              # double 0.32317344158697925
	.quad	0x3fe4a6b367b92038              # double 0.6453492189257366
	.quad	0x3fee6fe23709bfc4              # double 0.95115767240167103
	.quad	0x3fef8122eb4c8330              # double 0.98451372105419033
	.quad	0x3fe14f03ae731acd              # double 0.54089531013672743
	.quad	0x3fc1e67661faf194              # double 0.13984565529052573
	.quad	0x3febd6392f7cef6e              # double 0.86990031504636334
	.quad	0x3fd74981be096e9c              # double 0.36386149938855694
	.quad	0x3fefbd8b0eeff691              # double 0.99188759725048403
	.quad	0x3fedbf3a94115b6a              # double 0.92959336204044729
	.quad	0x3fd2cc49d6c1dda0              # double 0.29371877643958477
	.quad	0x3fe27c9d5017f174              # double 0.57771173136965936
	.quad	0x3fc11fe98477a430              # double 0.13378638237125662
	.quad	0x3fef5f0bf2ab8700              # double 0.98035237690439203
	.quad	0x3fede571fcc02b70              # double 0.93425845494617299
	.quad	0x3fe7ef2668b30cea              # double 0.74794311951737069
	.quad	0x3fdf79b5a71b89ba              # double 0.49180356330011998
	.quad	0x3fe659421bce4a0d              # double 0.69839578085731235
	.quad	0x3fd227259073d580              # double 0.28363932711302908
	.quad	0x3fb1cac5321085d8              # double 0.069500279162205358
	.quad	0x3fdbbecbda38c480              # double 0.43352028189389813
	.quad	0x3fe56b91dd76c20a              # double 0.66938107733409535
	.quad	0x3fef36436b8c458e              # double 0.97537394528824151
	.quad	0x3fdf96737b3fba00              # double 0.49355780635860924
	.quad	0x3fb7a344c358e698              # double 0.092335031215862506
	.quad	0x3fed4a04a4489942              # double 0.91528541647566208
	.quad	0x3fd73106ca37255a              # double 0.36236734149550431
	.quad	0x3fe0c9dadc0068d5              # double 0.52464049309790062
	.quad	0x3fd998e741367c0a              # double 0.39995747917595337
	.quad	0x3fa859672ea21bd0              # double 0.047557091181310462
	.quad	0x3fcb90ae2a249ea8              # double 0.21535279329076684
	.quad	0x3feb9ee999a0b7b7              # double 0.86314849858694387
	.quad	0x3fb33b319de809e0              # double 0.075121975947730402
	.quad	0x3f9f7069f8bc6b20              # double 0.030702262694016658
	.quad	0x3fc223b844e9ff58              # double 0.14171508183425874
	.quad	0x3fe5a592aadb1d3d              # double 0.67646153803153874
	.quad	0x3fd213b7a47b32f2              # double 0.28245345175382319
	.quad	0x3fe994aa84277745              # double 0.79939771472320642
	.quad	0x3fead862ea2712db              # double 0.83891435368476708
	.quad	0x3fde3a5e68ea4048              # double 0.47231254811868384
	.quad	0x3fd42a893d826476              # double 0.31509619719287885
	.quad	0x3fc38053ffb36324              # double 0.15235376344096452
	.quad	0x3fe43d4d39285371              # double 0.632483111987865
	.quad	0x3fda3f95ea62fa90              # double 0.41013095750160122
	.quad	0x3fca8266a054ba8c              # double 0.20710451916371075
	.quad	0x3fd8619415303454              # double 0.38095571583909771
	.quad	0x3fecfaad706cf718              # double 0.9056002803624521
	.quad	0x3fc64c1b7fee51b8              # double 0.17419761416080148
	.quad	0x3fe222640a4b91b3              # double 0.56669809351710965
	.quad	0x3fd4eab45ae7172c              # double 0.32682522656647239
	.quad	0x3fc8f0f52f5b67e0              # double 0.19485344707828656
	.quad	0x3fb11fd6868fe810              # double 0.066892059185107877
	.quad	0x3fdb7738e2de9f32              # double 0.42915174632297515
	.quad	0x3feb73e730b2f2c3              # double 0.85789832603003224
	.quad	0x3fec11ccd01398ac              # double 0.87717285766554686
	.quad	0x3fead12f7a4a8361              # double 0.83803533444379863
	.quad	0x3fd12cd6b6fa3aa4              # double 0.26836173886196435
	.quad	0x3fc2adc8b83d0aac              # double 0.1459284686662462
	.quad	0x3fb2bf34a71ccbe8              # double 0.073230067061373583
	.quad	0x3fd88eb89dabd4b2              # double 0.38371100804881586
	.quad	0x3fc4ac8712f49a9c              # double 0.16151512551842451
	.quad	0x3fd03832f4da50fa              # double 0.25343011771589341
	.quad	0x3fecee31b327bc83              # double 0.90407643309835384
	.quad	0x3fec7a894322d8b0              # double 0.88995802986644001
	.quad	0x3fe9c68a2ee1483f              # double 0.80548581272365272
	.quad	0x3fe40a947b2882d4              # double 0.62629150442452408
	.quad	0x3fe448c78cf48819              # double 0.6338842156440051
	.quad	0x3fe010663ac2b888              # double 0.50200187184033584
	.quad	0x3fd14f41a0a70d9e              # double 0.27046242417073951
	.quad	0x3fec303d20f651e3              # double 0.8808885234635081
	.quad	0x3f7e429b6f208c80              # double 0.0073877402919918511
	.quad	0x3fe2a57fd6f718dd              # double 0.58270256028552192
	.quad	0x3fdbc86143a77ca6              # double 0.43410522086009917
	.quad	0x3fe5941d60914297              # double 0.67433041439842867
	.quad	0x3f8b3b935987fb40              # double 0.013297225160383896
	.quad	0x3fe6fa53282b685b              # double 0.71805723043076897
	.quad	0x3fccd546aa9f439c              # double 0.22525866824301211
	.quad	0x3fef968c75f4e025              # double 0.98712752378833512
	.quad	0x3f9264c742be48c0              # double 0.017962563942611309
	.quad	0x3fd3f7b90d6fada4              # double 0.31199480354436049
	.quad	0x3fe1cafdcc4a8d7f              # double 0.55602922344807826
	.quad	0x3fe21c85cb4a4095              # double 0.5659817667492627
	.quad	0x3fc6dead74649b44              # double 0.17867057975055378
	.quad	0x3fe474ed5fc62ec7              # double 0.63927334504975242
	.quad	0x3fe7b1ce999d874e              # double 0.74045495989796861
	.quad	0x3fcd3ce439701c28              # double 0.22842076115213783
	.quad	0x3fca1283b9ae0fe0              # double 0.20369001928713626
	.quad	0x3fea8368fb240625              # double 0.82854126978799469
	.quad	0x3fe6095b31e21adb              # double 0.6886421179086385
	.quad	0x3fe5cd618930d155              # double 0.68132092280442669
	.quad	0x3fe9a08b169db825              # double 0.80084757249074257
	.quad	0x3fa541961cbaa540              # double 0.041516009337394966
	.quad	0x3fe67d051037387a              # double 0.70276120345239623
	.quad	0x3fc8c95f353f0800              # double 0.19364538288033373
	.quad	0x3fed82299fe579a8              # double 0.92213898877871703
	.quad	0x3fe79cc0584fa476              # double 0.73788468597662304
	.quad	0x3fee81ded0fe5cd6              # double 0.95335331744254392
	.quad	0x3fe634fad2117f4c              # double 0.69396725682234139
	.quad	0x3fd75a3083f0f1fe              # double 0.36487973103410798
	.quad	0x3feb9883fd642ff3              # double 0.86236762514590592
	.quad	0x3fad99a3a15ee110              # double 0.057812798927843301
	.quad	0x3fe7d9ccd9575e47              # double 0.74533693742245866
	.quad	0x3fe88550088ec25c              # double 0.76627351447502745
	.quad	0x3fcd17fe089ed514              # double 0.22729468747062553
	.quad	0x3fc22a3a876868d0              # double 0.14191371547423737
	.quad	0x3fd7939612d712cc              # double 0.36838294830185414
	.quad	0x3fe045687debd008              # double 0.50847267717335942
	.quad	0x3fce2684963c2134              # double 0.23555047355353909
	.quad	0x3fec06025352136e              # double 0.87573353074604454
	.quad	0x3fc15cfb8c6647d4              # double 0.13565010409780476
	.quad	0x3fc50111f4d0c5a8              # double 0.16409515813715569
	.quad	0x3fd99b5e5c6e1744              # double 0.4001079466473707
	.quad	0x3feb70c05510f9d0              # double 0.8575135861827281
	.quad	0x3fbb8068cbbe1be8              # double 0.10742812132058044
	.quad	0x3fd804153d3afa60              # double 0.375249204440399
	.quad	0x3fc5f40743652830              # double 0.17150965491083658
	.quad	0x3fe838970eef0f3e              # double 0.75690796772730784
	.quad	0x3fcb2629c1299a4c              # double 0.21210214549792494
	.quad	0x3fe404b8403e81bc              # double 0.62557613895119557
	.quad	0x3fd9535d58ef5380              # double 0.39571317372365655
	.quad	0x3fede4373ead5cd2              # double 0.9341083740390792
	.quad	0x3fd9f1d10c9b2fde              # double 0.40538431387972007
	.quad	0x3fd2e51776cffefe              # double 0.29523264506131841
	.quad	0x3fea0772f701a963              # double 0.81340931170897723
	.quad	0x3faf2be20e989450              # double 0.060881675988902928
	.quad	0x3fe0b5e761670dea              # double 0.52220505737244349
	.quad	0x3fc8c50bd620cde4              # double 0.19351337390399614
	.quad	0x3fe56909e85b534a              # double 0.66907210714507781
	.quad	0x3fe105f2ac32e7fe              # double 0.53197606690014232
	.quad	0x3fb6d6fa17c1ce48              # double 0.089217787551938987
	.quad	0x3fdba6011b9ddcc6              # double 0.43200710007608867
	.quad	0x3fea437a9ca915b3              # double 0.82073717687369763
	.quad	0x3fb0a31a8336a1d0              # double 0.064988762888453566
	.quad	0x3fe26adabe335d37              # double 0.5755437579017898
	.quad	0x3fdc9faef3092dca              # double 0.44724630102129181
	.quad	0x3fed6c74cde2ef0e              # double 0.91948929035376792
	.quad	0x3fc8d6fc568de020              # double 0.19406084276465752
	.quad	0x3fe20122ccbda6ca              # double 0.56263866413538577
	.quad	0x3fee9149669b4d37              # double 0.95523519554482206
	.quad	0x3fcc07f2c9c434cc              # double 0.21899256564976211
	.quad	0x3fd878c711bee826              # double 0.38237168057423998
	.quad	0x3fe1a6d9810c3a06              # double 0.55161738590851495
	.quad	0x3fe713bc728d4d2e              # double 0.7211591946928928
	.quad	0x3fee87c1a5773622              # double 0.95407182996286033
	.quad	0x3fe97bfbc3830a40              # double 0.79638469873345485
	.quad	0x3fd686760fe79964              # double 0.35195685914222552
	.quad	0x3fe8f0d969e3e169              # double 0.77940054589911967
	.quad	0x3fdec7420d12acd8              # double 0.48091174389510405
	.quad	0x3fdc29eb26b7933c              # double 0.44005850583043915
	.quad	0x3fe06d1502728907              # double 0.51331568220146628
	.quad	0x3fe89d7bee870d0f              # double 0.76922413432512993
	.quad	0x3fe204fc4a09a4c3              # double 0.56310858211977466
	.quad	0x3fedae87947a4626              # double 0.92755488395250008
	.quad	0x3fe69f0d3dcecbe1              # double 0.7069154936965526
	.quad	0x3fe056918d06b12d              # double 0.51056745094459688
	.quad	0x3fda6869a93ac3c4              # double 0.41262284780810554
	.quad	0x3fee49efc9285569              # double 0.94652547157845135
	.quad	0x3fcb26b0e541c9ec              # double 0.21211825555981478
	.quad	0x3fee7e9188eadff0              # double 0.95295025579161852
	.quad	0x3fcd89b4ab43a010              # double 0.23076494562633387
	.quad	0x3fed3c40a6fb2e39              # double 0.91360504735479886
	.quad	0x3fe4bf8b3b977c3d              # double 0.6483818210507547
	.quad	0x3fee1eb4242a6d09              # double 0.94124800742739112
	.quad	0x3fd0742e28e1d50a              # double 0.25709108345411436
	.quad	0x3fcbd56d49853f84              # double 0.2174507721888369
	.quad	0x3feed34a6e3406aa              # double 0.96329232715671265
	.quad	0x3fbe87b7310cca90              # double 0.11925835559376652
	.quad	0x3fcd4e330833c6d0              # double 0.2289489545869885
	.quad	0x3fdce7c792660898              # double 0.45164670273528307
	.quad	0x3fd7b0cb8a2af256              # double 0.37016571515031182
	.quad	0x3fc3335f9089d9b0              # double 0.15000528867285601
	.quad	0x3fe9dcf4e9b6663f              # double 0.80822225234005163
	.quad	0x3fbd02cf07c23720              # double 0.11332410754604583
	.quad	0x3fd18af7a6e4a43e              # double 0.27410689638287866
	.quad	0x3fef8966a2294c1e              # double 0.98552257225162854
	.quad	0x3fe42391984ea72a              # double 0.62934188601977792
	.quad	0x3fe1aa4b483edf3a              # double 0.55203785047976983
	.quad	0x3fdd5ea9b1c7b792              # double 0.45890276299803034
	.quad	0x3fd53a14562db1b0              # double 0.33166988769405759
	.quad	0x3fe2ebf74de51d6e              # double 0.5913044473062834
	.quad	0x3fec5d02526e4195              # double 0.88635364627593793
	.quad	0x3f99674b0e607740              # double 0.024808094742289954
	.quad	0x3fe9f1921ce9469c              # double 0.81073861738896679
	.quad	0x3fcc0a3d261c1900              # double 0.21906246529415085
	.quad	0x3fd12cf7150c662a              # double 0.26836945586691974
	.quad	0x3fe6935716ab16b0              # double 0.70548586299329052
	.quad	0x3fd60a19c99d8fd2              # double 0.34436649979602152
	.quad	0x3fce4595f3349aa0              # double 0.23649858832614701
	.quad	0x3fd9a2c73f3f748c              # double 0.40056019951391231
	.quad	0x3fe2443e5aa83917              # double 0.57083051401585549
	.quad	0x3feba63e54d309c1              # double 0.86404339377650541
	.quad	0x3fd14d086669a734              # double 0.2703267097591493
	.quad	0x3fe42c30ba6db761              # double 0.63039432918388283
	.quad	0x3fdd6cc6bad40c02              # double 0.45976417775108314
	.quad	0x3fc72b4f7ddc2728              # double 0.18100923200136632
	.quad	0x3fa3128e15a46790              # double 0.037250938550825841
	.quad	0x3fbbbd00cf06e4a8              # double 0.10835270933502505
	.quad	0x3fd40f1f3b7a85d4              # double 0.31342297371346928
	.quad	0x3fed90b290d771e7              # double 0.92391327180262983
	.quad	0x3fc6c584ab6999a0              # double 0.17790277833701129
	.quad	0x3fc3cafb20e98e2c              # double 0.15463198763892316
	.quad	0x3fefa1ec1be5a69d              # double 0.98851590584418469
	.quad	0x3feb6fd7476ea20e              # double 0.85740245772928048
	.quad	0x3fd9ba881a748e30              # double 0.4020099886276709
	.quad	0x3fc350af3d99e1b8              # double 0.15089979656091912
	.quad	0x3fe74198b85ded79              # double 0.72675739297066777
	.quad	0x3fad8eba7461fee0              # double 0.057729555804142185
	.quad	0x3fd0bbe46c1e922c              # double 0.26146803434883981
	.quad	0x3fde10c6aee11904              # double 0.46977393224769082
	.quad	0x3fb3aba11e1d04f8              # double 0.076837606288808646
	.quad	0x3feb952a538269ed              # double 0.861958659271577
	.quad	0x3fe58b2d3b01f855              # double 0.67323934102001692
	.quad	0x3fe1fbb2645e59ea              # double 0.56197471240267061
	.quad	0x3fe18347934c11f6              # double 0.54727534073805262
	.quad	0x3fc05d48d5557898              # double 0.12784681717579782
	.quad	0x3fe420d0db1ea368              # double 0.62900584027111694
	.quad	0x3fe42e1c4540c16c              # double 0.63062871480910365
	.quad	0x3fdf045788433f9a              # double 0.4846400099459004
	.quad	0x3fe1d9c25805faed              # double 0.55783192817747607
	.quad	0x3f8e6bca20b4a080              # double 0.014854029772848998
	.quad	0x3f87c204ea8b1cc0              # double 0.011600531013199578
	.quad	0x3fe33efbe52e346c              # double 0.60143847238363213
	.quad	0x3fb8050df67b5188              # double 0.093827126194190424
	.quad	0x3fd47873dcdf2cf6              # double 0.3198518425894713
	.quad	0x3feb0280cad9099d              # double 0.84405555361472617
	.quad	0x3fe2230323691a10              # double 0.56677395740627112
	.quad	0x3fe504f234dc14b6              # double 0.65685377430113223
	.quad	0x3fc5ae2486e12254              # double 0.16937691293630286
	.quad	0x3fe19f6f53c228f0              # double 0.55071226462430722
	.quad	0x3fe0316ec3edc508              # double 0.50603426234570836
	.quad	0x3fe55915f04d78a3              # double 0.66712471899133552
	.quad	0x3f91a53c057853c0              # double 0.017231881936897286
	.quad	0x3fe5d8a387cc2dcd              # double 0.68269516489947935
	.quad	0x3fee2e401daa03c3              # double 0.94314580720685404
	.quad	0x3fc0bcb4f325a10c              # double 0.13075887558375887
	.quad	0x3fe3a7a6529c785b              # double 0.61421505103113405
	.quad	0x3fead16ff71d0b8d              # double 0.83806608452174347
	.quad	0x3fb326e8a6322af0              # double 0.074812450957477017
	.quad	0x3fe4e81ff6b65a29              # double 0.6533355539893978
	.quad	0x3fee04a86d2e92a8              # double 0.93806859325976166
	.quad	0x3fcbcc6a29e34a5c              # double 0.21717574162774411
	.quad	0x3fefd9fbbb07fb55              # double 0.99535929231192687
	.quad	0x3fe58dde55072f20              # double 0.67356793028872985
	.quad	0x3fda3804cebc96ce              # double 0.40966911496284986
	.quad	0x3feea559d48f874a              # double 0.9576844359946588
	.quad	0x3fdf04e193534520              # double 0.48467292201265089
	.quad	0x3fe095d1c5709f1b              # double 0.51828850328908815
	.quad	0x3fd26e9bef7deb54              # double 0.28800104511144764
	.quad	0x3fe9f0cf42acea89              # double 0.8106457044844585
	.quad	0x3fe8776cd5709cde              # double 0.76457826316336841
	.quad	0x3feac71ae24bc904              # double 0.83680481146282703
	.quad	0x3fe3c7d0266f7fb1              # double 0.61814124590818242
	.quad	0x3fe9c9521806903a              # double 0.80582527821071115
	.quad	0x3fe18a973659a157              # double 0.54816780677087251
	.quad	0x3fefad0eef43fb01              # double 0.98987528544952863
	.quad	0x3fec7aa84106893a              # double 0.88997280788706878
	.quad	0x3fd88a79b0b7c116              # double 0.38345186479183846
	.quad	0x3fcbfe0e924ca340              # double 0.21869070189975481
	.quad	0x3fdc7eb8da22744e              # double 0.44523450185972002
	.quad	0x3fecd13073c09239              # double 0.90053579910142567
	.quad	0x3fc644f19214f778              # double 0.17397899277596784
	.quad	0x3fe3aa1b7f45ebb6              # double 0.61451506479294582
	.quad	0x3fe7abb6e5cf5011              # double 0.73971123585443099
	.quad	0x3fcd4823d4301894              # double 0.22876403675781332
	.quad	0x3fbdfd1b5ad4a610              # double 0.11714335410638221
	.quad	0x3f9e9dc624ee5ae0              # double 0.029898735050290948
	.quad	0x3feab623e1921103              # double 0.834733906333469
	.quad	0x3fd8f01f69629148              # double 0.38965592662340898
	.quad	0x3fbc466c58381b30              # double 0.11044957307613568
	.quad	0x3fec189454a528f2              # double 0.87800041706330334
	.quad	0x3fdd6a50521b6384              # double 0.45961387651691887
	.quad	0x3feea38c5bd6b5c9              # double 0.95746438920257859
	.quad	0x3fa5a51eea8fa350              # double 0.042275396473832161
	.quad	0x3fc072e94dee1694              # double 0.12850681595971436
	.quad	0x3fb6b93be8eacea8              # double 0.088763946880869526
	.quad	0x3fee6e722556c2ba              # double 0.95098216336017249
	.quad	0x3fe0fb91d353c7a0              # double 0.53070918345314411
	.quad	0x3fe8af969acacb9c              # double 0.77143411858411381
	.quad	0x3fd98b985e2a83f4              # double 0.39914521404176573
	.quad	0x3fa02c936e6200e0              # double 0.031590087151018187
	.quad	0x3fef45eccf69d627              # double 0.97728577146944395
	.quad	0x3fda42ba2b97ca94              # double 0.41032270676729721
	.quad	0x3fc4534c48a693e4              # double 0.15879205272099661
	.quad	0x3fe1b8a69fe9a1ba              # double 0.55379039032873512
	.quad	0x3feca0f78a601079              # double 0.89464928652206688
	.quad	0x3fe75c9213e9c591              # double 0.73005012406626879
	.quad	0x3fd2f3ee82e66dac              # double 0.29613840850080453
	.quad	0x3fba5a2c04fafb60              # double 0.10293841477958443
	.quad	0x3fd5b76fb7fc2b42              # double 0.33932106940544682
	.quad	0x3fbf3bd15249caf8              # double 0.12200649508467254
	.quad	0x3fe11e555d23083a              # double 0.53495281401433847
	.quad	0x3fdf2172166a18dc              # double 0.48641636074934325
	.quad	0x3fd9b26fce6434a2              # double 0.40151591449177648
	.quad	0x3fd811d9a8020ebc              # double 0.37608949095759292
	.quad	0x3fe2342d0fb416c8              # double 0.56886914317211623
	.quad	0x3fe172625b25344b              # double 0.54521291543790917
	.quad	0x3feeb8ed15a9bb18              # double 0.96007398825699663
	.quad	0x3fee73a6b87999fc              # double 0.95161758451723654
	.quad	0x3fec29670dd1a44d              # double 0.88005402277952671
	.quad	0x3fb7564cae43e790              # double 0.091160576386668745
	.quad	0x3feee1fb5857b426              # double 0.96508567099011056
	.quad	0x3fe9d00aec95c81c              # double 0.80664583404564238
	.quad	0x3fda7a671d05d40a              # double 0.41372087320570528
	.quad	0x3fe0b60fab191896              # double 0.52222426812729128
	.quad	0x3fdc5db5cc1a99f8              # double 0.44321961338064808
	.quad	0x3fec44dde34874a3              # double 0.88340658560959573
	.quad	0x3fef89450d96fbe5              # double 0.98550655988935587
	.quad	0x3fe958619b4fab3f              # double 0.79203872999401159
	.quad	0x3fd19371388036ae              # double 0.27462416188869099
	.quad	0x3fefc06facb54c97              # double 0.99224075061865135
	.quad	0x3faa5d5a776701c0              # double 0.051493479800686526
	.quad	0x3fe4b62eb59a674b              # double 0.64723906964648259
	.quad	0x3fca7260145bf264              # double 0.20661545747852295
	.quad	0x3fdaa337b75d005e              # double 0.41621201426096899
	.quad	0x3fe41c16810143a9              # double 0.62842869945790369
	.quad	0x3fdbdc4fa21f3974              # double 0.43532172043059991
	.quad	0x3fd20db621cb034a              # double 0.28208688068484788
	.quad	0x3fd42d5bd381eb80              # double 0.31526847510365741
	.quad	0x3fe49499f788ea59              # double 0.64313982340474773
	.quad	0x3fe25e9af492fbc5              # double 0.57404849785222523
	.quad	0x3fe6569b7ffe0fa5              # double 0.69807219503899332
	.quad	0x3fdcd9d60ed180c8              # double 0.45079566428286144
	.quad	0x3fd3840e4aab5e7c              # double 0.30493504802641502
	.quad	0x3fd1a2b2169d9144              # double 0.27555515488190374
	.quad	0x3fc22655580eecb8              # double 0.14179484176370294
	.quad	0x3fe65a6128cba1b9              # double 0.6985326573167675
	.quad	0x3fd8bb3c98bc6caa              # double 0.38642802158001166
	.quad	0x3fe5529355836af0              # double 0.66633001996828334
	.quad	0x3fe8798c53b6b259              # double 0.76483742094348905
	.quad	0x3fdf5f4ddd9e8a48              # double 0.49019190447339556
	.quad	0x3fef3309b079555d              # double 0.97498020618028713
	.quad	0x3fc3489cd44c97a8              # double 0.15065346113368361
	.quad	0x3fe46f8eebd7732e              # double 0.6386179548531794
	.quad	0x3fe6a4127ebdbb13              # double 0.70752835039260942
	.quad	0x3fd8827ac88b8ee2              # double 0.38296384415137485
	.quad	0x3fe78865ec9113a9              # double 0.73540016369280636
	.quad	0x3fe5a4245607aaf7              # double 0.67628685763096896
	.quad	0x3fd0c8a19103c1d2              # double 0.26224555169667696
	.quad	0x3fed9eb92ddf4c9f              # double 0.92562540969301554
	.quad	0x3fcce57fa5ac64fc              # double 0.22575374211809407
	.quad	0x3fe2ac6502cd3cc8              # double 0.58354425952156763
	.quad	0x3fe34c4d9edc7a65              # double 0.60306435611330456
	.quad	0x3fbc043e4b09d438              # double 0.10943974811546375
	.quad	0x3fd52c4db7f0f40c              # double 0.330829076414205
	.quad	0x3fdd678cead13720              # double 0.45944521838542762
	.quad	0x3fe726fffb0c57e9              # double 0.7235107329640843
	.quad	0x3fd22f298964d262              # double 0.28412855546347349
	.quad	0x3feca9cbeaa42f61              # double 0.89572711780918379
	.quad	0x3fd2869c7a33ffbe              # double 0.28946601804636518
	.quad	0x3fef6b4f0703709d              # double 0.98184920663654262
	.quad	0x3f7fcb415d69c100              # double 0.0077621987644393986
	.quad	0x3fbbfcb383363b80              # double 0.10932466462530321
	.quad	0x3faa4e6c7b27cec0              # double 0.051379575761442364
	.quad	0x3fe349e917b02d7b              # double 0.60277227999306093
	.quad	0x3fc99eec7fe4ebfc              # double 0.20016247029147383
	.quad	0x3fe77b5e449f76c5              # double 0.73380959895049414
	.quad	0x3fd5cbe82c4f691c              # double 0.34057049109618887
	.quad	0x3fe2d76401cc2a3b              # double 0.58879280425146108
	.quad	0x3fc217117e6e73e0              # double 0.14132898972903174
	.quad	0x3fd38285ddb94fa6              # double 0.30484148647996745
	.quad	0x3fbe0eebc7ef9430              # double 0.11741517668959101
	.quad	0x3fd60006a8e2b4ac              # double 0.34375158779841786
	.quad	0x3fedce197517a2ea              # double 0.93140862340541486
	.quad	0x3fd2490a15b66558              # double 0.28570797081336741
	.quad	0x3feb23aef48f8686              # double 0.84810588613272908
	.quad	0x3fe863a474059157              # double 0.76216337833879322
	.quad	0x3fe413f96ee948af              # double 0.62743827497822291
	.quad	0x3fc2fae570a5d63c              # double 0.14828174591427679
	.quad	0x3fe353a2726d65a4              # double 0.6039592966946441
	.quad	0x3fdbfbfd48e1c4ae              # double 0.43725521199582829
	.quad	0x3fec49e870f3a6aa              # double 0.88402196942225442
	.quad	0x3fcd2969847c1a18              # double 0.22782629937155785
	.quad	0x3fdd07624e110a7c              # double 0.4535756838196574
	.quad	0x3feaacfae0312407              # double 0.83361572062961009
	.quad	0x3fe0219f5e1544b4              # double 0.50410431266404609
	.quad	0x3fe6b6fbfe96d1a6              # double 0.7098369572109291
	.quad	0x3fe611f59f06f5a7              # double 0.6896923166274761
	.quad	0x3fb01d9a0ff53880              # double 0.062951687713594495
	.quad	0x3fb5689828b82890              # double 0.083627233449222737
	.quad	0x3fb01d80c9e9fc50              # double 0.062950181289111784
	.quad	0x3fedfc902d46d8d6              # double 0.93708046763529285
	.quad	0x3fec255239ff68d2              # double 0.87955581023859453
	.quad	0x3fe9b4af4d164c7a              # double 0.8033062463386067
	.quad	0x3fec0de1cf708a55              # double 0.87669458880948048
	.quad	0x3fe2d3bbabc0d02c              # double 0.58834632440130497
	.quad	0x3fd6527af4ae61e6              # double 0.34878419775625813
	.quad	0x3fd064353fb6a4ae              # double 0.25611621114746697
	.quad	0x3f9471b734e09440              # double 0.019965040781375842
	.quad	0x3fa2b5e71280ec40              # double 0.036544056900730926
	.quad	0x3fea1dcf8c56d4bc              # double 0.81613900575634756
	.quad	0x3fc4c8254d05ebfc              # double 0.16235796223540422
	.quad	0x3fd3c291d7008852              # double 0.3087505912427605
	.quad	0x3fe9402a10789946              # double 0.78908255784043813
	.quad	0x3fc55639ab207684              # double 0.16669388633538429
	.quad	0x3fd78002e1702ae6              # double 0.36718818679280074
	.quad	0x3f8160825286c640              # double 0.0084848576960637744
	.quad	0x3fe67c5986d5cc46              # double 0.70267940840711485
	.quad	0x3fd1357be7b2580a              # double 0.26888940455080557
	.quad	0x3fefd5b34a4850d8              # double 0.99483646877572606
	.quad	0x3fee70fbe84ea119              # double 0.95129199383248697
	.quad	0x3fe66a1dd34d5436              # double 0.70045367498335653
	.quad	0x3fe422e720aedc73              # double 0.62926060088547187
	.quad	0x3fecb84ac20abc39              # double 0.89749658488097517
	.quad	0x3fe6c6744fde61ed              # double 0.71172538375236416
	.quad	0x3fc3c5a3e172f7a0              # double 0.1544689989877357
	.quad	0x3fc651284b0f1690              # double 0.17435172715174874
	.quad	0x3fe7d533578157e6              # double 0.7447754582487931
	.quad	0x3feefee7cddf8a82              # double 0.96861639222727569
	.quad	0x3fca8e946e84d3a4              # double 0.20747619053295552
	.quad	0x3fce06013cc94898              # double 0.23455825298384947
	.quad	0x3fedc5c3506b603a              # double 0.93039098460122394
	.quad	0x3f65ca0bac21ba00              # double 0.002659819409976949
	.quad	0x3fe1e4b2dd8abca5              # double 0.55916732091818189
	.quad	0x3fe3ecbd93c7ef49              # double 0.62264899123645379
	.quad	0x3fe0159d479a3551              # double 0.5026384733661563
	.quad	0x3fe60960c43d793b              # double 0.68864477470541574
	.quad	0x3fdd2d80797f1ea6              # double 0.45590221276186538
	.quad	0x3fee6dd7dc1ffc9c              # double 0.95090859406618077
	.quad	0x3fcf810b990dba94              # double 0.2461256501514596
	.quad	0x3fe88a4d9c58b488              # double 0.7668827108042402
	.quad	0x3fdf0e577a40b254              # double 0.48525034846060078
	.quad	0x3fb3253c49a38b48              # double 0.074786918619378473
	.quad	0x3fb9aa834b03bb90              # double 0.10025806981478369
	.quad	0x3fc5f5f025aae434              # double 0.1715679344104345
	.quad	0x3f80b23b4ab8a080              # double 0.0081524498155689518
	.quad	0x3fd387ee1a4c5e24              # double 0.30517151420778732
	.quad	0x3fecde189991938c              # double 0.90211133951071209
	.quad	0x3fcb23bf89264f80              # double 0.21202844807396204
	.quad	0x3fd1f5e7f9a0283e              # double 0.28063392045499203
	.quad	0x3fd322bb17c42e86              # double 0.29899480172091619
	.quad	0x3fe00bb69e463c54              # double 0.50142985260925821
	.quad	0x3fec30fd444070ae              # double 0.88098014192975937
	.quad	0x3fc72d997e522c1c              # double 0.18107908885971902
	.quad	0x3fa0e4a2a88e2520              # double 0.032994349551765945
	.quad	0x3fe5dd699260d03f              # double 0.68327787961471376
	.quad	0x3fc55b849888ae90              # double 0.16685540626473427
	.quad	0x3fd2c8d1884e535e              # double 0.29350698767784944
	.quad	0x3fc5f65edf9b9100              # double 0.17158113401740849
	.quad	0x3fcdfccba62989a0              # double 0.23427720654860895
	.quad	0x3fec25b48b0c5970              # double 0.87960269124850576
	.quad	0x3fec62b0526ca293              # double 0.88704696749217005
	.quad	0x3fb13ef7011765d0              # double 0.067367017523245254
	.quad	0x3fb3996b58983e00              # double 0.076559743051113571
	.quad	0x3fecf77bf89cfb63              # double 0.90521048123615022
	.quad	0x3fe9be1a4b177c50              # double 0.80445589701037967
	.quad	0x3fb518c1f5964ad8              # double 0.082409021814139449
	.quad	0x3fdbc8de0800dbc4              # double 0.4341349676282642
	.quad	0x3fdcaf1c14302e44              # double 0.44818784686569679
	.quad	0x3fa63647d36219e0              # double 0.043382877877821135
	.quad	0x3fdfd5634781d7d2              # double 0.49739915831685011
	.quad	0x3fd5d0c2ab9710d2              # double 0.34086672551007979
	.quad	0x3febbcfc91cd7ed5              # double 0.86681965329258992
	.quad	0x3fe43f244ad1d0bb              # double 0.63270773518754397
	.quad	0x3fc497df8ae2aad0              # double 0.16088480264200777
	.quad	0x3fdeaa4f0777a306              # double 0.47914481858474323
	.quad	0x3fd2cd3354bdf830              # double 0.2937744453009854
	.quad	0x3fe619386eeacb1c              # double 0.69057866729267259
	.quad	0x3fb815a95372cb98              # double 0.094080527184628671
	.quad	0x3fd5e5402522fcf8              # double 0.34211734415653394
	.quad	0x3fcf95bc4e92f5ec              # double 0.24675706707596079
	.quad	0x3f9dad1fa81f6940              # double 0.028980726848979232
	.quad	0x3fec345c3fa742ec              # double 0.88139164383218604
	.quad	0x3fedc485084dc900              # double 0.93023921605916371
	.quad	0x3fd94d92b2e9feca              # double 0.39535968277048694
	.quad	0x3fec11c29a7ba200              # double 0.87716798946809149
	.quad	0x3fe2a64fb369a982              # double 0.58280167619277301
	.quad	0x3f8665c283425500              # double 0.010936278944692734
	.quad	0x3fc094e8a2b74bb0              # double 0.12954433388821718
	.quad	0x3fc4547559f64ad0              # double 0.15882746594123498
	.quad	0x3fd251dac4c018bc              # double 0.28624600614456219
	.quad	0x3fbb27ff03208088              # double 0.10607904268590762
	.quad	0x3fd783d0f0e49cbe              # double 0.36742042088230764
	.quad	0x3fd6d5ef063ca926              # double 0.35680747613027319
	.quad	0x3fec3214d75d494c              # double 0.88111345351561842
	.quad	0x3fa61fd1508b2b20              # double 0.043211499292360012
	.quad	0x3fe2b55eadcb7cbe              # double 0.58463987297354669
	.quad	0x3fe0ef4e8134037e              # double 0.52921223864551314
	.quad	0x3feeb21e77d47150              # double 0.9592430439402424
	.quad	0x3fefce709354d0ff              # double 0.99395016456267615
	.quad	0x3fe202fa5d2ff5f6              # double 0.5628635234895103
	.quad	0x3fdd39516ae5e7c0              # double 0.45662341536774065
	.quad	0x3fd7424687c5ac4a              # double 0.36342013606071488
	.quad	0x3fe054e673e73b49              # double 0.51036379468301007
	.quad	0x3fe06fd100c1908d              # double 0.51364946506193265
	.quad	0x3fef1c89b1508aeb              # double 0.97223362571489013
	.quad	0x3fd10244570b86ce              # double 0.26576336384287635
	.quad	0x3fe04a6b9b9da9e2              # double 0.50908451455807957
	.quad	0x3fd77df29f5b94ca              # double 0.36706224024085243
	.quad	0x3fef8535977c2ca7              # double 0.98501090609479013
	.quad	0x3fdf4e0d0b61aba8              # double 0.48913885222889997
	.quad	0x3fafc609cedf44b0              # double 0.062057787421175958
	.quad	0x3fe8a4382e125145              # double 0.7700463199458133
	.quad	0x3fd4aeb67e3e9ee2              # double 0.32316362694335343
	.quad	0x3fd1fcc82ad60268              # double 0.28105358298493011
	.quad	0x3fd616d7b959844a              # double 0.34514420605234319
	.quad	0x3fdbb4851eba9730              # double 0.43289306641451031
	.quad	0x3fdadd80b84d39dc              # double 0.41976945875367533
	.quad	0x3fe6d35287fc7d0e              # double 0.71329618987866339
	.quad	0x3fbf773ac54c5030              # double 0.12291304890487775
	.quad	0x3fa6f3f247170400              # double 0.044829913309065716
	.quad	0x3fe2f93927a2ed62              # double 0.59292276135913036
	.quad	0x3fe1c98ad7cc720c              # double 0.55585233829657588
	.quad	0x3fe18e62e09d4532              # double 0.54863113279330933
	.quad	0x3fec763b81bab4e3              # double 0.88943267190702746
	.quad	0x3fcd9cc1d0573964              # double 0.23134634659659092
	.quad	0x3fb01ce8fb8332d8              # double 0.062941132931153887
	.quad	0x3fe9a5c6c6a2d977              # double 0.80148638530844962
	.quad	0x3fe4239b18b441a3              # double 0.62934641671204294
	.quad	0x3fdde16b9e9cdeca              # double 0.46688356866387137
	.quad	0x3fc5ee80b3bfa514              # double 0.17134102608478285
	.quad	0x3fe1a6df9d5a458c              # double 0.55162029965338055
	.quad	0x3fea69f36705b409              # double 0.82543344613589043
	.quad	0x3fe3157db34893b3              # double 0.59637341514882392
	.quad	0x3fc2fe1feeaa6574              # double 0.14838027146906152
	.quad	0x3fbbec38be398cb0              # double 0.10907320636902074
	.quad	0x3fc4f7df7276d688              # double 0.16381447876999666
	.quad	0x3fbb9b4753ca5500              # double 0.10783811374342989
	.quad	0x3fd2e5ac358af64a              # double 0.29526810864249298
	.quad	0x3fdb7801dfcb4600              # double 0.4291996655930177
	.quad	0x3fea5b275f14e0b8              # double 0.82362717218986514
	.quad	0x3fe75c8595d5b183              # double 0.73004416718099241
	.quad	0x3fe34ee6fe3aec30              # double 0.60338163046197302
	.quad	0x3fc0ca3ec4ace7a0              # double 0.13117203334132643
	.quad	0x3fe45fa18fbb57df              # double 0.63667371819132856
	.quad	0x3febc3700f377be5              # double 0.86760714504259495
	.quad	0x3fe731a57a41b523              # double 0.72481035116439718
	.quad	0x3fe8517a4a55e275              # double 0.75994600790643452
	.quad	0x3fdc8b7fd6fb3402              # double 0.44601436609519862
	.quad	0x3fe7bbc19e13444e              # double 0.74166947244715131
	.quad	0x3fda7234a3d67cb4              # double 0.41322055816449255
	.quad	0x3fea7e5f4edcf6b9              # double 0.82792630579907389
	.quad	0x3fe156ce27fdd8bd              # double 0.54184634981972801
	.quad	0x3fec2b66764b6091              # double 0.88029788116820573
	.quad	0x3fe62261f3392234              # double 0.69169709686781866
	.quad	0x3fd8ba7016d71534              # double 0.38637926321492277
	.quad	0x3feca04b1921b9ae              # double 0.8945670595983779
	.quad	0x3fc1040597dfa6e0              # double 0.13293523708062249
	.quad	0x3fefca02d1b64bb1              # double 0.99340954741852816
	.quad	0x3fd51dcaaac8d0ea              # double 0.32994333913963081
	.quad	0x3fda8d7982b1f862              # double 0.41488492739870797
	.quad	0x3fbda4f8652a5968              # double 0.11579849691256572
	.quad	0x3fcc77bed608fb8c              # double 0.2224043412297444
	.quad	0x3fec8505b826956c              # double 0.89123807875573168
	.quad	0x3f9a0360a0c24720              # double 0.025403508960670895
	.quad	0x3fa551e81a84caf0              # double 0.041640523183010703
	.quad	0x3fa9e3299fd34390              # double 0.050561238059919522
	.quad	0x3febc1c500e7060a              # double 0.86740350891358386
	.quad	0x3fbf2dcc1aa51a60              # double 0.12179256105910374
	.quad	0x3fe5eaa87d2536b8              # double 0.68489479486898741
	.quad	0x3f7afe302b460580              # double 0.0065900689700141291
	.quad	0x3feefd288e9ed167              # double 0.96840312819999219
	.quad	0x3fe1870d141cda76              # double 0.54773572853339547
	.quad	0x3fbb25205c059338              # double 0.10603525396943503
	.quad	0x3fe160ab0dfcc9c4              # double 0.54305031520771552
	.quad	0x3fe91f96a14d029c              # double 0.78510600570742239
	.quad	0x3fd185e5b65ee3e2              # double 0.27379744348178126
	.quad	0x3fe3c843473f0e62              # double 0.61819614329619932
	.quad	0x3fb908807483bff8              # double 0.09778597683521173
	.quad	0x3fe8c3b4bcbea5d4              # double 0.77388989319040968
	.quad	0x3feb37e9576717f1              # double 0.8505751330455934
	.quad	0x3fd104027a77c62a              # double 0.26586973151924786
	.quad	0x3fe1c735f3424640              # double 0.55556771766186586
	.quad	0x3fcdac10eafc6e60              # double 0.23181354021004363
	.quad	0x3fda938e3ddaaf0a              # double 0.41525608101322631
	.quad	0x3fead01e819d11f8              # double 0.83790517153880639
	.quad	0x3f96b1746f0b8880              # double 0.02216131141438682
	.quad	0x3fecedb09e2eccd8              # double 0.90401488204079339
	.quad	0x3fdff59cc2eedff0              # double 0.49936598812519062
	.quad	0x3fe5825d737adb53              # double 0.67216370157880545
	.quad	0x3f84bc42e1cee800              # double 0.010124704853172517
	.quad	0x3fd5d5ea35215b9c              # double 0.34118132771021137
	.quad	0x3fe3c55c169de067              # double 0.61784176270795121
	.quad	0x3fde236e8a8ad724              # double 0.47091258554006488
	.quad	0x3fdf8310ec17759c              # double 0.49237464004348808
	.quad	0x3fb53d367ecceab8              # double 0.082965284306662279
	.quad	0x3fe898bd36cb46e1              # double 0.76864491178477234
	.quad	0x3fecdd68cec5e36b              # double 0.90202751527168112
	.quad	0x3fea31b9a7da0922              # double 0.81856997283492583
	.quad	0x3fcd0384780923a8              # double 0.22666984425657444
	.quad	0x3feda215b0a9e34b              # double 0.92603573326696542
	.quad	0x3fd46f5002b80c0a              # double 0.31929397836228246
	.quad	0x3fd13adce629f2b8              # double 0.26921770550670088
	.quad	0x3fcd6b401eb21fcc              # double 0.22983552454775091
	.quad	0x3fe54284af2c38b4              # double 0.66436990941453766
	.quad	0x3fd1863845070362              # double 0.27381712666470126
	.quad	0x3fdab64f517ebfd6              # double 0.41737730940348905
	.quad	0x3fe7fa65a00d8780              # double 0.74931603679964098
	.quad	0x3fee02d0660c30c2              # double 0.93784351283240874
	.quad	0x3fd289c0656e7940              # double 0.28965768723891827
	.quad	0x3fe6b9fc47c70da7              # double 0.71020330447247637
	.quad	0x3fdb06565355db4c              # double 0.42226179254742102
	.quad	0x3fec4d38c3cc039c              # double 0.88442648164356141
	.quad	0x3fe16515786e0184              # double 0.54358933946063859
	.quad	0x3fd2d74b8591d188              # double 0.29439056438356959
	.quad	0x3fe21ceb121d74cd              # double 0.56603005922411287
	.quad	0x3fe01913d2a4392f              # double 0.5030612100688695
	.quad	0x3fcbede05f9a8358              # double 0.21819691341536429
	.quad	0x3fe24d575894291f              # double 0.57194106388604726
	.quad	0x3feeab2dd9f523fa              # double 0.95839588708724865
	.quad	0x3fed6a61536c6b08              # double 0.91923586171773852
	.quad	0x3fef729307adc3f3              # double 0.98273612499008178
	.quad	0x3f8c87390b5c3140              # double 0.013929792079146908
	.quad	0x3fe71107d60f2120              # double 0.72082893188875019
	.quad	0x3fc9da8bf0e1507c              # double 0.201982014291051
	.quad	0x3fe0cab8f459fedc              # double 0.52474639630232955
	.quad	0x3fe92fe60c2ca521              # double 0.78709699991046389
	.quad	0x3fec7433262bee09              # double 0.88918454604521557
	.quad	0x3feeeafbe27956c0              # double 0.96618456109236916
	.quad	0x3fcb290ed7543fbc              # double 0.21219048990360345
	.quad	0x3fe85afa69380a89              # double 0.7611057334000445
	.quad	0x3fea426c48a0b0e8              # double 0.82060827431771788
	.quad	0x3fdc56c0692e3b96              # double 0.44279489776175163
	.quad	0x3fea269a29b4070a              # double 0.81721218247568683
	.quad	0x3fc574fb588c6dc0              # double 0.16763250182780887
	.quad	0x3fd9a7abdd18cd74              # double 0.40085884658329651
	.quad	0x3fe83cd5888ec3c7              # double 0.75742603942318787
	.quad	0x3fd296e053a1d692              # double 0.29045875708775626
	.quad	0x3fcb9bb66874f2ec              # double 0.21568946934157596
	.quad	0x3fedcb9a8268e6e7              # double 0.93110394926699491
	.quad	0x3fd8765e43cf1bc2              # double 0.38222462293600412
	.quad	0x3fc957d9eab6397c              # double 0.19799350700891327
	.quad	0x3fcb0dfc80a6e2ac              # double 0.21136432916479941
	.quad	0x3fe07ae7acdcba64              # double 0.5150030494895188
	.quad	0x3fa6a66a4dddbd30              # double 0.044238397603175605
	.quad	0x3fec00ac960ecc14              # double 0.87508229549564697
	.quad	0x3fe39609128cf943              # double 0.61206487296275502
	.quad	0x3fc93fd821bd6228              # double 0.19726087233972689
	.quad	0x3fe44207fb1ffeeb              # double 0.63306044624183977
	.quad	0x3fdebcb82253ccba              # double 0.4802685103633838
	.quad	0x3fdf7f8559c2d66c              # double 0.49215825811129466
	.quad	0x3fe8cb458cae06d2              # double 0.77481343723794738
	.quad	0x3fa642b70f823200              # double 0.043477745669495249
	.quad	0x3fcdf9f184808768              # double 0.23419016809298943
	.quad	0x3fd484dd420c915c              # double 0.3206093926439928
	.quad	0x3fcfc03f76d3febc              # double 0.24805444051889036
	.quad	0x3fed9fa4fa7eadab              # double 0.92573784756443922
	.quad	0x3feecdec826597a7              # double 0.96263719051488727
	.quad	0x3fecb11eae1fe018              # double 0.89662107475942587
	.quad	0x3feae326dd92ad00              # double 0.84022849346129647
	.quad	0x3fefdf85b2a09360              # double 0.99603543174871944
	.quad	0x3fada90bfb16ad50              # double 0.0579303497318856
	.quad	0x3fcaf1bed262b4a8              # double 0.21050248406155458
	.quad	0x3fc60ca8a32cd59c              # double 0.17226131408248768
	.quad	0x3febaad7edc4eee3              # double 0.8646049159937913
	.quad	0x3fec4a012ac6ffe6              # double 0.88403375964116715
	.quad	0x3fde3e7040040a76              # double 0.47256094218770472
	.quad	0x3fbf53e2090d0f20              # double 0.1223737022492597
	.quad	0x3f8c4a3032c1d880              # double 0.013813377903926005
	.quad	0x3fe0aa6968a35750              # double 0.52080221593016951
	.quad	0x3fe9216c66b35453              # double 0.78533001002018421
	.quad	0x3fe46247b2ca6b81              # double 0.63699707908686787
	.quad	0x3fe2bd0afe762cef              # double 0.58557653140579002
	.quad	0x3fa4b5265ba6b780              # double 0.04044456356801529
	.quad	0x3fdb3fe953a7a472              # double 0.42577584428233373
	.quad	0x3fe45418fe977a4b              # double 0.63526582455581015
	.quad	0x3fb137ded63bfdf8              # double 0.067258765509897844
	.quad	0x3fc79715d8001a10              # double 0.18429825827497881
	.quad	0x3fd8d2518cd2e3d0              # double 0.38783682586978063
	.quad	0x3fdfd2284840e3b0              # double 0.49720198684695571
	.quad	0x3fe1bf4679235986              # double 0.5545990339258402
	.quad	0x3fbf5b4d474d3bf0              # double 0.12248690596355494
	.quad	0x3fdd241f0ffef180              # double 0.45532967149826931
	.quad	0x3fe237ecbbf493ed              # double 0.56932675085101681
	.quad	0x3fd19472dd71e320              # double 0.27468558907962581
	.quad	0x3fe596045236135b              # double 0.67456260735398688
	.quad	0x3fed0917abb9102a              # double 0.90735991992597076
	.quad	0x3fd1bcb269a5a7e8              # double 0.27714214627360301
	.quad	0x3feb438f98f937f8              # double 0.8519971835864899
	.quad	0x3fd08029e9df7a30              # double 0.25782249297290871
	.quad	0x3fa4e5e820982170              # double 0.040816549280921488
	.quad	0x3fd8a2aa0f054d00              # double 0.38492824046007001
	.quad	0x3fdd196ced19d85e              # double 0.45467684893026739
	.quad	0x3fd9dd482f260370              # double 0.40413097957939836
	.quad	0x3fdbff102a0e3d6a              # double 0.43744281870836821
	.quad	0x3faa1db049bf2f50              # double 0.051007756235405766
	.quad	0x3fa9c592af2aff40              # double 0.050335487253958977
	.quad	0x3fd3d71689044fd2              # double 0.31000293140936919
	.quad	0x3fe9b9d6e72ec29d              # double 0.80393548157561023
	.quad	0x3fe85fa4b7904f84              # double 0.76167522289550548
	.quad	0x3fe83744e6efb6d7              # double 0.75674672226679263
	.quad	0x3fe89d65dc84d1da              # double 0.76921361036380209
	.quad	0x3fd372e9c26926fa              # double 0.3038887404005518
	.quad	0x3fd4d72e5e8f7314              # double 0.32563361391457701
	.quad	0x3fb55231fad77740              # double 0.08328544973434493
	.quad	0x3fdf0d27d465d6a2              # double 0.48517795316670675
	.quad	0x3fea1dc9aee5132a              # double 0.81613620909829376
	.quad	0x3fe1f708b3b12e68              # double 0.56140551658741078
	.quad	0x3fe490cf43b1d0b0              # double 0.6426769563827488
	.quad	0x3fc86d5090cf934c              # double 0.19083602019159185
	.quad	0x3fece046bea7cad8              # double 0.90237748372450266
	.quad	0x3fd58fb371d24eaa              # double 0.33689581027395354
	.quad	0x3fe6b8ba0107c938              # double 0.71004963113072161
	.quad	0x3fec4c53727e51d3              # double 0.88431713449477412
	.quad	0x3fe3b38870ff9dbd              # double 0.61566564626712472
	.quad	0x3fa07cdbf770c0e0              # double 0.032202600436336715
	.quad	0x3fb501d631a393b0              # double 0.0820592757405183
	.quad	0x3fce3dc90062040c              # double 0.23626053351111442
	.quad	0x3fd6916c3cd21220              # double 0.35262590350638057
	.quad	0x3fdc48b908d7b630              # double 0.44193864692246887
	.quad	0x3fba0b5ac9dfc330              # double 0.10173575810018742
	.quad	0x3fe404741fa8e100              # double 0.62554365333110695
	.quad	0x3fe9f81059a84714              # double 0.81153123389433057
	.quad	0x3fd5783ee3598078              # double 0.3354642124377345
	.quad	0x3fe721a0cbb70ce2              # double 0.72285499370664419
	.quad	0x3fdccc5170a0edfa              # double 0.44997058867349404
	.quad	0x3fc05db4f647fbbc              # double 0.12785970712135775
	.quad	0x3fe9232ae4bfa378              # double 0.78554291417559252
	.quad	0x3fda0ba0cb188e88              # double 0.40695972283922588
	.quad	0x3fd8615f53e5e294              # double 0.38094313805735536
	.quad	0x3fe5c1c722fe01b4              # double 0.67990452608505914
	.quad	0x3fd7513843cd9644              # double 0.36433226224321325
	.quad	0x3fb025920c7ba3c0              # double 0.063073280379867036
	.quad	0x3fe36cdef6514733              # double 0.60703991040120397
	.quad	0x3fd2425b4f777f96              # double 0.28530009041241422
	.quad	0x3fcc6eb7e631241c              # double 0.22212885608522093
	.quad	0x3fee7da43fe60a90              # double 0.95283710937686017
	.quad	0x3feaefcd7e0019f9              # double 0.84177279099895863
	.quad	0x3fdd1934a67f7dde              # double 0.45466343173572266
	.quad	0x3fb01932e24ebcd8              # double 0.06288450265013823
	.quad	0x3fef1f91c1102d99              # double 0.97260368068366453
	.quad	0x3fecd125b0fa359c              # double 0.90053066793341285
	.quad	0x3fec493bd8a62539              # double 0.88393966974505311
	.quad	0x3fb6ae162452c5e8              # double 0.0885938490562449
	.quad	0x3fbb1c7d1f1d3f58              # double 0.10590345391869727
	.quad	0x3fc76ffb9685c474              # double 0.18310494279606682
	.quad	0x3fd532244c32440e              # double 0.33118541184472938
	.quad	0x3fce9688797ccb4c              # double 0.23896890575414387
	.quad	0x3fe2a6098b18dae2              # double 0.58276822249794358
	.quad	0x3fea42639ea6a77e              # double 0.82060414301416507
	.quad	0x3fbd30a896b56f68              # double 0.11402372054493315
	.quad	0x3fde9dedd29917ba              # double 0.47838922086918567
	.quad	0x3fc93a6e8a3b68ac              # double 0.19709569692242235
	.quad	0x3fef9bb43723fc6c              # double 0.98775683183329254
	.quad	0x3fd5f870c8cef5bc              # double 0.34328860864829003
	.quad	0x3fd0889b5df3a938              # double 0.25833782362919377
	.quad	0x3fc8a7558ef29584              # double 0.19260663490164742
	.quad	0x3feb2bdff58c21d9              # double 0.84910581549143693
	.quad	0x3fd799c643b83332              # double 0.36876064885364024
	.quad	0x3fd00d2f730dc0fc              # double 0.25080476985660005
	.quad	0x3f7d9ebc026ef500              # double 0.0072314590569793058
	.quad	0x3fd9191e0fb7b968              # double 0.39215804610184657
	.quad	0x3fe7364ce2d73084              # double 0.72537845902253695
	.quad	0x3fd66d6888bc67be              # double 0.35042775490876099
	.quad	0x3fa4df6fc83c3510              # double 0.040767186348697249
	.quad	0x3fd4f5fed534e168              # double 0.3275143701644283
	.quad	0x3feb942f79e21764              # double 0.86183904462152982
	.quad	0x3fe134fbe62dadcf              # double 0.53771777111745134
	.quad	0x3fe6e6a269ad88a1              # double 0.71565361633499347
	.quad	0x3fb0258591af6298              # double 0.063072536533022805
	.quad	0x3feca49a533a53ae              # double 0.89509311919629453
	.quad	0x3fe07dca7950b0dd              # double 0.51535533613562345
	.quad	0x3fe3a35fed8787da              # double 0.61369320290054508
	.quad	0x3fb190e940fb6748              # double 0.068617418637043959
	.quad	0x3fd35328875b9b16              # double 0.30195058077372161
	.quad	0x3fe5c344a29d114a              # double 0.68008643875558872
	.quad	0x3f5019ceca542e00              # double 9.8271555299589419E-4
	.quad	0x3fd8aeabc97840ca              # double 0.38566107439784203
	.quad	0x3fd0733d865598d2              # double 0.2570337116107001
	.quad	0x3fd027a96bd259da              # double 0.25242076425038606
	.quad	0x3fd0498fd84e8658              # double 0.25448986171440913
	.quad	0x3fb45bb1999faf00              # double 0.079524135595132606
	.quad	0x3fedd4eca3a6fdc9              # double 0.93224174464551723
	.quad	0x3fd9a4c07325f168              # double 0.40068064923231939
	.quad	0x3fe04e4f7a7c993c              # double 0.50955938265978018
	.quad	0x3fe7c2ccd76074fa              # double 0.74252931657579713
	.quad	0x3fe3636f89b9bc4a              # double 0.60588814639584965
	.quad	0x3fcad9de72e6fba0              # double 0.20977383242094749
	.quad	0x3fa91ebbf98e6130              # double 0.049062608922385897
	.quad	0x3fe571efb0f519ce              # double 0.67015823900219984
	.quad	0x3fbd512c224d4048              # double 0.11451984250493397
	.quad	0x3fddd66680504d92              # double 0.46621096163399856
	.quad	0x3feb5ea581ede0b9              # double 0.85530352951811672
	.quad	0x3fe3a3192e7aa0eb              # double 0.61365946844037234
	.quad	0x3fce425e3d565224              # double 0.23640039439182303
	.quad	0x3fd56dc8ecc1cef4              # double 0.33482573624426881
	.quad	0x3fdf1908a6664566              # double 0.48590294122649025
	.quad	0x3fe3c09a9ae6b071              # double 0.61726122144820128
	.quad	0x3fe0510cab587e26              # double 0.50989373651458858
	.quad	0x3fe7f192362fe8b5              # double 0.74823866446901965
	.quad	0x3fe44d388c76dabd              # double 0.63442637857846018
	.quad	0x3fe601902496bd7e              # double 0.68769080301528596
	.quad	0x3fe93502fc5f5f2a              # double 0.78772115031731471
	.quad	0x3fe6e40d32eaa59a              # double 0.71533832497259486
	.quad	0x3fea7c0900c5b635              # double 0.82764101172296611
	.quad	0x3fecc46c7272efcb              # double 0.89897749284090744
	.quad	0x3feb67e277d96722              # double 0.85643123062184068
	.quad	0x3fdd19f15796a85a              # double 0.45470841935696671
	.quad	0x3fccdd5d4c8d5470              # double 0.22550550687688853
	.quad	0x3fee7784d8f9a64c              # double 0.95208971384017493
	.quad	0x3fca114b64dc3c30              # double 0.20365278649157537
	.quad	0x3fecb542eefb6ef3              # double 0.89712664295390565
	.quad	0x3fe6bbd5eab6c659              # double 0.71042915194102385
	.quad	0x3fc931e3bc769d5c              # double 0.1968350095969339
	.quad	0x3fe49a46857efcf2              # double 0.64383245538183886
	.quad	0x3fb62501cec683a8              # double 0.086502182943617556
	.quad	0x3fe3f3ca8abb1499              # double 0.62350966544967712
	.quad	0x3fd30a19e1e2b55c              # double 0.29749152239931731
	.quad	0x3fec912bcc08137f              # double 0.89272107934867495
	.quad	0x3fd4a0ad84cd7f8c              # double 0.32230699509636263
	.quad	0x3fbaee2aa7c4e328              # double 0.10519663425374104
	.quad	0x3fcdeb784394d350              # double 0.23374846744413924
	.quad	0x3fccd33b57e30a04              # double 0.22519628325797225
	.quad	0x3fd0806b7311288c              # double 0.25783811795248179
	.quad	0x3fde3b69fdca1886              # double 0.47237634452938726
	.quad	0x3fe3d6165882b472              # double 0.61988370215625666
	.quad	0x3feb3d8020b5ef81              # double 0.85125738514715021
	.quad	0x3fefe12c09106c9b              # double 0.99623681803076935
	.quad	0x3fc4e73d92b03650              # double 0.16330690062061359
	.quad	0x3fe59d7f513c7033              # double 0.67547574869559524
	.quad	0x3febba5fccce16eb              # double 0.86650075913413838
	.quad	0x3fd8bfd436b92e14              # double 0.38670831054761945
	.quad	0x3fd7efb98aaaf7d8              # double 0.37400663892537755
	.quad	0x3fbf908f5975d9a8              # double 0.12329955991831432
	.quad	0x3f89714d38cb3d00              # double 0.012423136993133799
	.quad	0x3fe292902b170a6b              # double 0.58039101043716579
	.quad	0x3fe8703a4c6f228b              # double 0.76369967392482019
	.quad	0x3fc37da3970017a4              # double 0.15227169869484414
	.quad	0x3fe9a129971f871f              # double 0.80092315212479892
	.quad	0x3fe3e7a0f01bafb3              # double 0.62202498336909284
	.quad	0x3fbec7d4f1325be0              # double 0.12023669136611614
	.quad	0x3fe224336c8c8697              # double 0.56691905213320382
	.quad	0x3fdcf752ebe2d44a              # double 0.45259545360324138
	.quad	0x3fd7e13a73217c00              # double 0.37312184565774942
	.quad	0x3f47f95f2df43800              # double 7.3163173138524051E-4
	.quad	0x3fd3b1e5204f5530              # double 0.30773285060179756
	.quad	0x3fd2eaebfc26f7de              # double 0.29558848976364327
	.quad	0x3fed216a6348aed0              # double 0.91032904998197672
	.quad	0x3fd977f93cbd6d4c              # double 0.39794760638843196
	.quad	0x3fe91e2d83880222              # double 0.78493381204322454
	.quad	0x3fe95936d4c32162              # double 0.79214040331957514
	.quad	0x3fefd020f8011970              # double 0.99415634573305844
	.quad	0x3f9897cb13da75e0              # double 0.024016545378449439
	.quad	0x3fdb9c9f9a6af294              # double 0.43143453674182664
	.quad	0x3fe844489254d959              # double 0.75833538608894024
	.quad	0x3fdff5add1a83242              # double 0.49937005495374731
	.quad	0x3fb6ddbbb6dc29a0              # double 0.089320881026799359
	.quad	0x3fe7c9b22ac6fa66              # double 0.74337108950551278
	.quad	0x3fd86b5c8252103c              # double 0.38155281759850701
	.quad	0x3fe089baabd833a2              # double 0.51681264460932064
	.quad	0x3fd0dbe1d3afcc10              # double 0.26342054054765729
	.quad	0x3fd6774de9ee38da              # double 0.35103175968914757
	.quad	0x3feacf30155aeaa9              # double 0.83779148264814751
	.quad	0x3fdebd6497fe97c4              # double 0.48030962794507226
	.quad	0x3fee0cd7df6eeac8              # double 0.93906777991591017
	.quad	0x3fd45ff1a2c8801e              # double 0.31835595032498698
	.quad	0x3fa52bf5142fdea0              # double 0.041350992883903759
	.quad	0x3fcb3fa6b721f4f4              # double 0.21287998144172315
	.quad	0x3fccc8194230f3d8              # double 0.22485652667992784
	.quad	0x3febf0f051378c56              # double 0.87316146719639209
	.quad	0x3fd6b7ece6fc7948              # double 0.3549759155011043
	.quad	0x3fd4f43a88cfe934              # double 0.32740653381883367
	.quad	0x3fc0f7c1c7085af8              # double 0.13256094187155276
	.quad	0x3fed86f80694186c              # double 0.9227256897436411
	.quad	0x3febef4fa63d4163              # double 0.87296278446778464
	.quad	0x3fe96dfec390ce34              # double 0.79467714497008623
	.quad	0x3fe2a6a9ea53d39d              # double 0.58284469382362014
	.quad	0x3fcc43e25dd85c1c              # double 0.22082166273386938
	.quad	0x3fd0aa7669bd6bc0              # double 0.26040420843281353
	.quad	0x3fc9996963f39d2c              # double 0.19999425297212647
	.quad	0x3f724a94ae36a100              # double 0.0044656570275167784
	.quad	0x3fce77cc0bc9d4d8              # double 0.23803091598134674
	.quad	0x3fdab747c37144b8              # double 0.41743654333283642
	.quad	0x3fd13d448a08bd9a              # double 0.26936448554894243
	.quad	0x3fe03f91f04c7795              # double 0.50776001866664677
	.quad	0x3fea6ee3774bfdf1              # double 0.82603619861759914
	.quad	0x3fe39ad950e154e7              # double 0.61265245243944555
	.quad	0x3fa2d4224e993750              # double 0.036774704069655884
	.quad	0x3fbbe27c7e4ad220              # double 0.10892465670878737
	.quad	0x3fa1881ab32b07e0              # double 0.034241518374542812
	.quad	0x3fde75abb06e8312              # double 0.47593204717308979
	.quad	0x3fdfbea19f65c290              # double 0.49601021352922547
	.quad	0x3fbcac3f40854e98              # double 0.11200328183377406
	.quad	0x3fef5616a31027e5              # double 0.97925884102118898
	.quad	0x3fc7f88c9f0f8da0              # double 0.18727262274397294
	.quad	0x3fe4b82a29205583              # double 0.64748104126435668
	.quad	0x3fe75826b1501341              # double 0.72951063758282697
	.quad	0x3fe44e2a5e808640              # double 0.63454168755942675
	.quad	0x3fd410c4d64a20ca              # double 0.31352349211421127
	.quad	0x3fefd46a152b0258              # double 0.99467949041725045
	.quad	0x3fec6f12bb949bb3              # double 0.88855873715225753
	.quad	0x3fd2029f8576abc0              # double 0.28141010316420179
	.quad	0x3fe4962734ea3b1d              # double 0.64332924208597186
	.quad	0x3fc65a7f81873f3c              # double 0.17463678192734189
	.quad	0x3fc220e54877b708              # double 0.14162889517268007
	.quad	0x3feecc98b625ff2a              # double 0.96247516227592667
	.quad	0x3fa5fe36ae238460              # double 0.042955120808763736
	.quad	0x3fd6a196b85fc2cc              # double 0.35361259465484518
	.quad	0x3fde3681b889aec4              # double 0.4720768262984445
	.quad	0x3feb58939e922665              # double 0.85456257792357049
	.quad	0x3fe67ac786dd22c0              # double 0.70248771992290671
	.quad	0x3fed03c598ac2050              # double 0.90671043223211178
	.quad	0x3fa83b8e520087b0              # double 0.047329375753420222
	.quad	0x3fadf26e77bc51e0              # double 0.058490230671086385
	.quad	0x3fc7dac26a9ecc14              # double 0.18636350828236969
	.quad	0x3fdf735682cafdcc              # double 0.49141466877696582
	.quad	0x3feecd8e256de0b8              # double 0.96259219465630163
	.quad	0x3fc3c8a99bf76484              # double 0.1545612346224382
	.quad	0x3fdc283e7267a82a              # double 0.43995629474977938
	.quad	0x3fac963d5372c110              # double 0.055833736836009007
	.quad	0x3fe06b879d3cdbca              # double 0.51312618933195009
	.quad	0x3fd8980b8a6f3880              # double 0.38428009528150398
	.quad	0x3fceafa481be9ac4              # double 0.23973518691237505
	.quad	0x3fe9c5f4f1921a37              # double 0.80541464978961741
	.quad	0x3feb813e420c34ac              # double 0.85952675723969695
	.quad	0x3feaadf821585c70              # double 0.8337364817879358
	.quad	0x3fcdcc149d96dbe0              # double 0.23279054350652384
	.quad	0x3fd0fed6614dc222              # double 0.26555404188460063
	.quad	0x3fbd4fa114cf5368              # double 0.11449629552892093
	.quad	0x3fe9cab674d21f56              # double 0.805995205083472
	.quad	0x3fe775449b1e9636              # double 0.73306494042180392
	.quad	0x3fee96731be4d815              # double 0.95586543510467215
	.quad	0x3fed0a30fae92738              # double 0.90749405866629385
	.quad	0x3fc6bb4f2c4f9cb0              # double 0.17759122527715965
	.quad	0x3fdb9ca14da5bef2              # double 0.4314349420810536
	.quad	0x3fd5453fca095c06              # double 0.33235163431294301
	.quad	0x3fe93e3dc2c712ff              # double 0.78884780924326481
	.quad	0x3fbe080fee61bf38              # double 0.11731051988476515
	.quad	0x3fd18fd6b90d7748              # double 0.27440422126334285
	.quad	0x3feca1b905250045              # double 0.89474154476921142
	.quad	0x3fefd0d158d2e5cf              # double 0.99424044941332023
	.quad	0x3fc3197687d29e3c              # double 0.14921456939667788
	.quad	0x3fe719681f217d76              # double 0.72185140686262517
	.quad	0x3fb14a0bee62de58              # double 0.067536111545331123
	.quad	0x3fd804e9844e9d64              # double 0.37529981537450952
	.quad	0x3fe9fdeb1be1ff13              # double 0.81224589773043687
	.quad	0x3fb983933012a260              # double 0.099663924442788154
	.quad	0x3fc646ed4cdf0a90              # double 0.17403951886634106
	.quad	0x3feac7a2cf8b9f46              # double 0.83686962639055973
	.quad	0x3fcfdf25023871fc              # double 0.24899733169958427
	.quad	0x3fda3a1f2d743298              # double 0.40979747237069253
	.quad	0x3fe51d80477a8610              # double 0.65985120735803271
	.quad	0x3fe61b89bb8b56e8              # double 0.69086157445664487
	.quad	0x3fed9e889f354868              # double 0.92560225577677802
	.quad	0x3fd869060e551d94              # double 0.38141013526588918
	.quad	0x3febf7871f5f1205              # double 0.87396579863758517
	.quad	0x3fc84aad29562a98              # double 0.1897789432371908
	.quad	0x3fc748d2dda936f4              # double 0.18190990279474983
	.quad	0x3fd08363916fedba              # double 0.25801934435704832
	.quad	0x3fe2bb347828b440              # double 0.58535216778330579
	.quad	0x3fda402d07183e98              # double 0.41016698544351859
	.quad	0x3fe3c1e3bbc4a0d3              # double 0.61741816209271361
	.quad	0x3fe721b5dffac70a              # double 0.72286504503264948
	.quad	0x3fe987921f23626f              # double 0.79779916841205345
	.quad	0x3fe13b2b0bb4a570              # double 0.53847267423877376
	.quad	0x3fb2f5979873a640              # double 0.074059939117113949
	.quad	0x3fe181ab8926bc28              # double 0.54707886493077229
	.quad	0x3fd2b4969fcbdeca              # double 0.29227223973383032
	.quad	0x3fc5b4db8b552684              # double 0.16958183577871833
	.quad	0x3fd23aff407f8050              # double 0.28485089586866241
	.quad	0x3fed7cf9242c3e04              # double 0.92150551857952267
	.quad	0x3fd22ae4eb884536              # double 0.28386805535508886
	.quad	0x3fd19b1e6f3caa76              # double 0.27509270537362995
	.quad	0x3fd6f0a55fbfa694              # double 0.35843786573841752
	.quad	0x3fdb6ea64362ea9c              # double 0.42862850743009928
	.quad	0x3fdc5bcb8097906c              # double 0.44310271795098433
	.quad	0x3fc9d1b28d22b240              # double 0.20171195880301873
	.quad	0x3feec2f60fa0b469              # double 0.96129897167487599
	.quad	0x3feabb25fda44d3f              # double 0.83534526385702879
	.quad	0x3fe57636fa09a18a              # double 0.67068051181290511
	.quad	0x3fdd4e534c1e5108              # double 0.45790560182037199
	.quad	0x3fe488f2ba6c3c6a              # double 0.64171730433180341
	.quad	0x3fda32057ec86944              # double 0.40930306798113159
	.quad	0x3fe3040e572c1a2e              # double 0.59424511934122903
	.quad	0x3fdfcfd6bc57104c              # double 0.49706047432505751
	.quad	0x3fd3ca46222b92e8              # double 0.3092208226865254
	.quad	0x3fe92108b43033f9              # double 0.7852824706366156
	.quad	0x3feb44c29f5c9adf              # double 0.85214358449305994
	.quad	0x3fe4eedb509adcc3              # double 0.65415731185103032
	.quad	0x3f88f18b44643980              # double 0.012179458641665475
	.quad	0x3fc9958c8bbe656c              # double 0.19987637351440968
	.quad	0x3fe76a037b13a371              # double 0.73169111288471644
	.quad	0x3fdb1ace89410ba8              # double 0.42351115611762191
	.quad	0x3fe80cadab0cd7a3              # double 0.75154765518412991
	.quad	0x3f80b89f12c57e80              # double 0.0081646373370738434
	.quad	0x3fd50cc46f7949fe              # double 0.32890425573455662
	.quad	0x3fb81cc54c1aeee8              # double 0.094189005928395297
	.quad	0x3feaa16a0926922b              # double 0.83220388209571661
	.quad	0x3fe30d777cded53e              # double 0.59539389027364797
	.quad	0x3fea13201b5074e1              # double 0.81483464560338004
	.quad	0x3fc2da29e3e8cfbc              # double 0.14728282574071538
	.quad	0x3fde5a5e4238b1ac              # double 0.47426563708247715
	.quad	0x3fe003557c6a1e97              # double 0.50040697383606669
	.quad	0x3fd002485fa92512              # double 0.25013932554118512
	.quad	0x3fe960ce7e132231              # double 0.79306721328709362
	.quad	0x3fe7d3a11d051542              # double 0.744583660773664
	.quad	0x3fd83a42d22ccc58              # double 0.37855597042943634
	.quad	0x3fb62ea60ca6ee70              # double 0.086649301613698659
	.quad	0x3f9f6fc9834bfac0              # double 0.030699871672363654
	.quad	0x3fe184172ce44648              # double 0.54737433212194109
	.quad	0x3fef2260862b550a              # double 0.97294641690192063
	.quad	0x3f9b29f571e8c8c0              # double 0.026527247502777795
	.quad	0x3fd6c6921c4fb316              # double 0.35586979641702621
	.quad	0x3fd87ed8ab475506              # double 0.38274208761625095
	.quad	0x3fede2ab23c1b6fc              # double 0.9339194963810935
	.quad	0x3fe488132a798bd7              # double 0.64161070152146749
	.quad	0x3fe481a876720e18              # double 0.64082739957706547
	.quad	0x3fed53fcbf5599ab              # double 0.91650235528941459
	.quad	0x3fca2bf51df6e104              # double 0.2044664760885625
	.quad	0x3fe70db165a0958d              # double 0.72042150353506573
	.quad	0x3fce722de7e0d41c              # double 0.23785947630099791
	.quad	0x3fd50dd52a6e4126              # double 0.32896927970525025
	.quad	0x3fe325f5a3b1c734              # double 0.59838373157092528
	.quad	0x3fe0dfc4be251e56              # double 0.5273154939431588
	.quad	0x3fd82b11fd1e985a              # double 0.37762880057051051
	.quad	0x3fd4b6d8b81f177e              # double 0.32366006832705085
	.quad	0x3fe6dbc982570eac              # double 0.71432948548359354
	.quad	0x3fe92cc393971bd9              # double 0.78671435190414762
	.quad	0x3fefc6b6ca547fac              # double 0.9930070831069222
	.quad	0x3fc2af6f837f95f0              # double 0.1459788696367208
	.quad	0x3fd27f4ff9990f1a              # double 0.28902053236764547
	.quad	0x3fc36411f5aa0980              # double 0.15149139876673345
	.quad	0x3f84373e828cc540              # double 0.00987099491030341
	.quad	0x3fe9a7f9357a20fd              # double 0.8017545742486899
	.quad	0x3fd96ca2f8f45af8              # double 0.39725565254177253
	.quad	0x3fde246cd36e7f6a              # double 0.47097321174259454
	.quad	0x3f7b15a107f0fb00              # double 0.0066124239229441439
	.quad	0x3fe247b4055c9b03              # double 0.57125283286299611
	.quad	0x3fc9f573645bb0f0              # double 0.20280306244183732
	.quad	0x3fe735c610a8e032              # double 0.7253141713508795
	.quad	0x3fefe41ad820a2c3              # double 0.99659483158492212
	.quad	0x3fa097efa66b6320              # double 0.03240918070304688
	.quad	0x3fe9c829389e5f08              # double 0.80568371828391694
	.quad	0x3fef68ad8cdb5320              # double 0.9815280676944873
	.quad	0x3fe7ee651e5e9253              # double 0.74785095149543179
	.quad	0x3fe75849b61062ba              # double 0.72952733573318729
	.quad	0x3feb20d34f15c5b4              # double 0.84775700994776181
	.quad	0x3fceb8a05a687788              # double 0.2400093499608682
	.quad	0x3fefa0689a02cc75              # double 0.98833112793216904
	.quad	0x3fd81918da36cf52              # double 0.37653180417986676
	.quad	0x3fe0d32fc4f6bdd4              # double 0.52577961415766561
	.quad	0x3fcc8b119d9fafc4              # double 0.22299404331658768
	.quad	0x3fe6cf44ddb62a66              # double 0.71280139258426511
	.quad	0x3fecfdcac5d5066b              # double 0.90598047865951281
	.quad	0x3fe62cbf12633228              # double 0.69296220389657481
	.quad	0x3fbc8bb9baadc2e8              # double 0.1115070420035057
	.quad	0x3fede550e591c074              # double 0.93424267614137912
	.quad	0x3fb3e965fb607dc0              # double 0.077780126448934617
	.quad	0x3fbcc7e9a390afe8              # double 0.11242542498865726
	.quad	0x3fe7ed418b5a4814              # double 0.74771191804234372
	.quad	0x3f8188d278d09740              # double 0.0085617488021615395
	.quad	0x3fe8f6ff0740d304              # double 0.78015090386051655
	.quad	0x3fd5da6b95085760              # double 0.34145631364787299
	.quad	0x3fd9738ddc3cd278              # double 0.3976778651006394
	.quad	0x3fd31db0e29c479e              # double 0.29868719224861617
	.quad	0x3fd1141e841944f2              # double 0.26685297870888214
	.quad	0x3fee45ad78563733              # double 0.94600556853558826
	.quad	0x3fb00eadd917c290              # double 0.062723985196280418
	.quad	0x3fb00f7db6c15de0              # double 0.062736374967577557
	.quad	0x3fc797d6d63c7380              # double 0.18432126484631439
	.quad	0x3fe8c9fc96015d71              # double 0.77465657518307129
	.quad	0x3fedb419950ce70c              # double 0.92823485480696055
	.quad	0x3fedf18143c9b45b              # double 0.93573058357072669
	.quad	0x3fe90cae3e247f51              # double 0.78279792916507962
	.quad	0x3feb65075631f889              # double 0.85608259997367597
	.quad	0x3fe322b5c8cd2378              # double 0.59798707217224401
	.quad	0x3fc17bc7c18491e4              # double 0.13658997487176727
	.quad	0x3fe6668fe7be9b6a              # double 0.7000197912465016
	.quad	0x3fe3b283c78e0480              # double 0.61554135299242319
	.quad	0x3fbc273819fd3ee8              # double 0.10997343668463666
	.quad	0x3fdd2b8d03842686              # double 0.4557831320131317
	.quad	0x3fea8f45bff6e21b              # double 0.8299893140129514
	.quad	0x3fe04fe58d9b529f              # double 0.50975301415981622
	.quad	0x3fe4956489da02aa              # double 0.64323641704694023
	.quad	0x3fd508a119c024a6              # double 0.32865169062331245
	.quad	0x3fecf195e95ff944              # double 0.90449042874369256
	.quad	0x3fc5389215f3cb28              # double 0.16578889915361938
	.quad	0x3fe7986b1fed605f              # double 0.73735576854506835
	.quad	0x3fb4e38540cfbbb8              # double 0.081596687625036135
	.quad	0x3fb71f0c6acd86c0              # double 0.090317512583648174
	.quad	0x3fbd4b4aa5533388              # double 0.11443010841612822
	.quad	0x3fcbf867f5bd1728              # double 0.21851825236279265
	.quad	0x3fe7c8d7714e2e1a              # double 0.74326679353675051
	.quad	0x3fce65ae9448dc38              # double 0.23747808685740934
	.quad	0x3fe41254106e743d              # double 0.62723735055227048
	.quad	0x3fe362de80f69626              # double 0.60581898868685324
	.quad	0x3fe53e5888df9040              # double 0.66386057599130055
	.quad	0x3fdc1fc3284cf1f0              # double 0.43943861899950232
	.quad	0x3fd3c6bc74b59236              # double 0.3090048923243417
	.quad	0x3fe7329a6f12a774              # double 0.72492715543670139
	.quad	0x3fbd625c762e1f90              # double 0.11478212247140918
	.quad	0x3fd6ccadf4f4a0ce              # double 0.35624264642184478
	.quad	0x3fd9cdc5b4b55d36              # double 0.40318434378919521
	.quad	0x3fe2ac18b875fa4a              # double 0.58350788142690502
	.quad	0x3fe14cedff4ce6ac              # double 0.54064082969053606
	.quad	0x3fd61b5f0b4e5e12              # double 0.34542060951341214
	.quad	0x3feeb0f4b6e15be3              # double 0.95910106390772076
	.quad	0x3fde293bdb4e4510              # double 0.47126671234680462
	.quad	0x3fd8892200a456c8              # double 0.38336992323580121
	.quad	0x3fdebd80aa5572fe              # double 0.48031632074507502
	.quad	0x3fefd40bc4c5e3cc              # double 0.99463451797702751
	.quad	0x3fe516fe34821a29              # double 0.65905676131734936
	.quad	0x3fd3d4f438d91fc6              # double 0.30987268020225789
	.quad	0x3fa8e778e1e2b650              # double 0.048640992711949438
	.quad	0x3fec4a71eae7b1f8              # double 0.88408752326864626
	.quad	0x3fd3416fb40a93ec              # double 0.30086891729507559
	.quad	0x3fd271fb532e952e              # double 0.28820689318884518
	.quad	0x3fda88b3a1fc9ba2              # double 0.41459360903757603
	.quad	0x3fb68d33810a1bb8              # double 0.0880920591390425
	.quad	0x3fec538c5159fad1              # double 0.88519874466859438
	.quad	0x3fe996eee755810e              # double 0.79967446501180617
	.quad	0x3fce26d7b9ada18c              # double 0.2355603844291746
	.quad	0x3feaa39c36dcae11              # double 0.83247194972267569
	.quad	0x3fd6e20ff7922b74              # double 0.35754775215962487
	.quad	0x3fe95e83b880a727              # double 0.7927874187055054
	.quad	0x3fe6d87553fae0b8              # double 0.71392313387243345
	.quad	0x3fe03770a68fa304              # double 0.50676758319340864
	.quad	0x3fcaaba94cf22200              # double 0.20836368806000394
	.quad	0x3fddbaad63973336              # double 0.46451887822768201
	.quad	0x3fca892e6dad64a8              # double 0.20731144290292502
	.quad	0x3fd9abaa91148bda              # double 0.40110267799371757
	.quad	0x3fe6edb9a9969fb5              # double 0.71651919481973059
	.quad	0x3feca2cf8c6bc8c0              # double 0.89487435747130206
	.quad	0x3fde12d696d8bcf2              # double 0.46989979487530242
	.quad	0x3fd2f164f354782e              # double 0.29598354113284386
	.quad	0x3fd890ccb01af010              # double 0.38383786390090879
	.quad	0x3fe85794a09e0c68              # double 0.76069098826009185
	.quad	0x3fcb5be2200cdc90              # double 0.21374155583336973
	.quad	0x3fbddc9961c737d0              # double 0.1166473258701608
	.quad	0x3fe5591f6306d070              # double 0.66712922421585397
	.quad	0x3febec70e8ba7e86              # double 0.8726124330023175
	.quad	0x3fe44ad089d09ac3              # double 0.63413264195408947
	.quad	0x3f7b810840732480              # double 0.0067148516020064664
	.quad	0x3fe5a2daf7f1d73e              # double 0.67612980295846348
	.quad	0x3fec5fe8340756cf              # double 0.88670740281914984
	.quad	0x3fed6feb706c25f5              # double 0.91991207082281667
	.quad	0x3fc1ba8c6ff9a7a8              # double 0.13850551097430963
	.quad	0x3fb5a2399964cab8              # double 0.084506607007635348
	.quad	0x3fdd6571ca168f7e              # double 0.45931668028992323
	.quad	0x3fe7aa30cc0d6a63              # double 0.73952522138581533
	.quad	0x3fe50d14916a8c48              # double 0.65784672166444924
	.quad	0x3fee3ca97eb39ab5              # double 0.94490504022981858
	.quad	0x3fca6c0ad9d058f4              # double 0.2064221919578767
	.quad	0x3fe2f2f30444270c              # double 0.59215689500089885
	.quad	0x3fe22fc28b188188              # double 0.56833007018217163
	.quad	0x3fd3120767d20a06              # double 0.29797539843289689
	.quad	0x3fe625c390bf7bc8              # double 0.69210985442247708
	.quad	0x3fe342ce8bc06603              # double 0.6019051293871488
	.quad	0x3feeba4008eb06b5              # double 0.96023561231432685
	.quad	0x3fefb0af18bac3a2              # double 0.99031786756505746
	.quad	0x3fe743ef928664c2              # double 0.72704294794234436
	.quad	0x3fecac983f346eb8              # double 0.89606869072618789
	.quad	0x3fe13f43088ed49b              # double 0.5389723937174894
	.quad	0x3fd198331e69e182              # double 0.27491453142240385
	.quad	0x3fcba005c7e8a7d0              # double 0.21582100163624185
	.quad	0x3fe817956f37c80c              # double 0.75287887308354717
	.quad	0x3fe3103baab817a1              # double 0.59573157638145713
	.quad	0x3fe34af9d290b49b              # double 0.60290232778574493
	.quad	0x3fe42afdb0fc9639              # double 0.63024792258938256
	.quad	0x3fef66a24b23c81e              # double 0.98127855945336129
	.quad	0x3fc9c637ca92d718              # double 0.20136163131035612
	.quad	0x3fdaad847f0b1468              # double 0.41684067160196614
	.quad	0x3fe30379292ccc92              # double 0.59417398492805007
	.quad	0x3fec64ebd2a3c9de              # double 0.88731948032937757
	.quad	0x3fd807adec700e06              # double 0.37546871270771509
	.quad	0x3fd10e7cdcf2608a              # double 0.26650926186403778
	.quad	0x3fe222d777bdfce2              # double 0.56675313365112978
	.quad	0x3feb676370594c13              # double 0.85637065833214121
	.quad	0x3fe9fed754f83431              # double 0.81235853763212706
	.quad	0x3fed43b1b6014290              # double 0.91451345012508689
	.quad	0x3feb01992174a0e6              # double 0.84394508871357909
	.quad	0x3fd97ea26fe2d062              # double 0.39835415769926474
	.quad	0x3fef1f17deb0584f              # double 0.97254556173244022
	.quad	0x3fea1048b6fccd99              # double 0.81448779811619254
	.quad	0x3fefb365d3945179              # double 0.99064914058776232
	.quad	0x3fe24fde5d66286e              # double 0.57224958650591673
	.quad	0x3fbedf505eca75a0              # double 0.12059500040273585
	.quad	0x3fe9cc9ce626e2ed              # double 0.80622715903800002
	.quad	0x3fe1ec8e690f6166              # double 0.56012650031611311
	.quad	0x3fe25341ac283bd1              # double 0.57266315102048726
	.quad	0x3fe4d45acff4188b              # double 0.65092220893781538
	.quad	0x3fef32543dccc451              # double 0.97489368505751816
	.quad	0x3fe90265ad35a9fe              # double 0.78154262380604655
	.quad	0x3fd9d424770dcfd0              # double 0.40357314707148095
	.quad	0x3fe5282e280c67e3              # double 0.66115482160534744
	.quad	0x3fdce5cc32c06f0a              # double 0.45152573543758534
	.quad	0x3fdf317b3020e1be              # double 0.48739509296458638
	.quad	0x3fef58d8916c5536              # double 0.97959545519794378
	.quad	0x3f55de2b29187000              # double 0.0013347074021856642
	.quad	0x3fdd72535215e7b8              # double 0.46010287300270702
	.quad	0x3fe6eaedd0f0b74d              # double 0.71617785271312473
	.quad	0x3fcff976021d9f9c              # double 0.24980044463449935
	.quad	0x3fed3a176c12a052              # double 0.9133412466808386
	.quad	0x3fbb7a710a616f28              # double 0.10733706000740695
	.quad	0x3feed7e71e09f0ef              # double 0.96385532252273076
	.quad	0x3fd82fe8232e1184              # double 0.37792399821798761
	.quad	0x3fe492fd1198e7fe              # double 0.6429429382035321
	.quad	0x3fbc39888e075430              # double 0.11025289027686891
	.quad	0x3fdc8b37a6698a0c              # double 0.44599715472409751
	.quad	0x3fb845843768e6e0              # double 0.094810737159515934
	.quad	0x3fb6c2b1c90c6418              # double 0.088908301910479159
	.quad	0x3fe5946f11e53869              # double 0.67436936850732565
	.quad	0x3fe7ef72d0147bbc              # double 0.74797955170276209
	.quad	0x3fd64973c6ca9f26              # double 0.34823316968184981
	.quad	0x3fd16f3712b8ee1a              # double 0.27241303280217866
	.quad	0x3fd7fb96bfd4822a              # double 0.37473076566132824
	.quad	0x3fef92cc90998274              # double 0.98666980974310414
	.quad	0x3fee73b6329edad0              # double 0.95162496458837076
	.quad	0x3feed11a24ab85cd              # double 0.96302516138183025
	.quad	0x3fcc732d04744910              # double 0.22226488797657185
	.quad	0x3fcc63075c7a8810              # double 0.22177211776312378
	.quad	0x3fce523bb7477b5c              # double 0.23688456010037384
	.quad	0x3fec25be7e44509b              # double 0.87960743581290346
	.quad	0x3fd1d618d57edd2e              # double 0.27869244431663531
	.quad	0x3fee68019a92dd31              # double 0.95019607725308763
	.quad	0x3fe0dfc67504f622              # double 0.52731631141040602
	.quad	0x3fe455dd537b554a              # double 0.63548151307137712
	.quad	0x3fc834474b195450              # double 0.18909541289272846
	.quad	0x3fb3765c9af56030              # double 0.076024806815781387
	.quad	0x3fd8824586a45f24              # double 0.38295114658966356
	.quad	0x3fecce58da950f3d              # double 0.90018885318611519
	.quad	0x3fd4081e3223490c              # double 0.31299548050186909
	.quad	0x3fe30fdb8b997a81              # double 0.59568574204952551
	.quad	0x3fee3af399676702              # double 0.94469623529150248
	.quad	0x3feaba726566fde6              # double 0.83525962643755913
	.quad	0x3fe9fb74e7dbbef9              # double 0.81194539341774352
	.quad	0x3fe603902b315087              # double 0.68793495594083331
	.quad	0x3fc65ade2a31c400              # double 0.17464806614182748
	.quad	0x3fc6bff317bad644              # double 0.17773283632929993
	.quad	0x3f659cc87a851200              # double 0.0026382365796584484
	.quad	0x3fdc9125420a2536              # double 0.44635898064787527
	.quad	0x3feadc5d64af963c              # double 0.83940000214779031
	.quad	0x3fed78abeb15006d              # double 0.92098041452847001
	.quad	0x3fee231801382f6f              # double 0.94178390730074379
	.quad	0x3fec97b357afb002              # double 0.89351813436724137
	.quad	0x3fd2f945f77b3642              # double 0.29646443527312638
	.quad	0x3fa72cc18f487db0              # double 0.045263336887951922
	.quad	0x3fe2f8369c7f3205              # double 0.59279947820465451
	.quad	0x3fb07d329483a7f0              # double 0.06441036344372697
	.quad	0x3fcd3725722a6b5c              # double 0.22824543070313552
	.quad	0x3fd1ea49ca463c7e              # double 0.27992481950145265
	.quad	0x3fb47dade067d3a8              # double 0.080042712484852729
	.quad	0x3fe228e2c72b1990              # double 0.56749094867773131
	.quad	0x3faf581bca9cfa20              # double 0.061219089968734375
	.quad	0x3fa1815e6d77ce80              # double 0.034190131056587525
	.quad	0x3fe5d8a5360f00fb              # double 0.6826959663231088
	.quad	0x3fd4a62858f587ba              # double 0.32264145553028423
	.quad	0x3fea122504e17470              # double 0.81471491769083393
	.quad	0x3fd44662972d7864              # double 0.31679596675338062
	.quad	0x3fd7d5735fca5f3e              # double 0.37240299562971646
	.quad	0x3fe39ba45e9625ae              # double 0.6127492759125539
	.quad	0x3fe8bccd9d633368              # double 0.77304726352450093
	.quad	0x3fc2fb0f689a36b4              # double 0.1482867489580052
	.quad	0x3fea4946b1019f5f              # double 0.82144484111357119
	.quad	0x3fe572b87738ab7a              # double 0.67025397572920942
	.quad	0x3fcf46e6ecb073f4              # double 0.24435125882237652
	.quad	0x3fe02e568f96745f              # double 0.50565650982356292
	.quad	0x3fe637d39a50969c              # double 0.69431476726159103
	.quad	0x3fdf7539d693de66              # double 0.49152990298123311
	.quad	0x3fdf39ec02639ee8              # double 0.48791027291598121
	.quad	0x3fe48841cea9b598              # double 0.64163294185498199
	.quad	0x3fd6b976f03322fe              # double 0.35506986100203608
	.quad	0x3fe228fee9c077cf              # double 0.56750436453489239
	.quad	0x3fe793a32a317d36              # double 0.73677213898546401
	.quad	0x3fd878a7d59bd6ee              # double 0.3823642335913594
	.quad	0x3fcadb368024d8e0              # double 0.20981484658268013
	.quad	0x3fc31c629fd26474              # double 0.1493037491207222
	.quad	0x3fcb494f9bd8e164              # double 0.21317477330900225
	.quad	0x3fed21a385f09ac7              # double 0.91035629425172082
	.quad	0x3fd90b10caa5a48e              # double 0.39130039014578066
	.quad	0x3fdab9d88b62fdc8              # double 0.41759313213330218
	.quad	0x3fe6ce90fd6ebeaf              # double 0.7127156209807789
	.quad	0x3fdfb93ecb4545b4              # double 0.49568147516864802
	.quad	0x3fb0ebb1ec2c76d0              # double 0.06609642044028452
	.quad	0x3fba7c5fec1166c0              # double 0.10346030724886202
	.quad	0x3fe8ad0b66818e6d              # double 0.77112360020369197
	.quad	0x3fea7c0b60de28cb              # double 0.82764214438909656
	.quad	0x3fc5c57575f65748              # double 0.17008846530796462
	.quad	0x3fd20ce31e152340              # double 0.28203657090903178
	.quad	0x3fd5a656bfcee144              # double 0.33827751857053934
	.quad	0x3fd1624140b293f8              # double 0.27162200277444937
	.quad	0x3fea0de6815ae775              # double 0.81419682755152556
	.quad	0x3fe20bab431cdae3              # double 0.56392443759872568
	.quad	0x3fe611defef715cb              # double 0.68968152807126992
	.quad	0x3fb0576402aa28d0              # double 0.063833475733335421
	.quad	0x3fd0283d8843cce2              # double 0.25245607668985148
	.quad	0x3fda88a096c26d9e              # double 0.41458906862836808
	.quad	0x3fb3157e68d5b278              # double 0.074546719164297559
	.quad	0x3fc5f949c836b0b8              # double 0.17167017246300076
	.quad	0x3fee1e0f2fb22582              # double 0.94116935077288155
	.quad	0x3fcc0cc5bf247bc8              # double 0.21913978417521052
	.quad	0x3fc156c442c15858              # double 0.13546040782483959
	.quad	0x3fe2f70b34cc9d6b              # double 0.59265671074255744
	.quad	0x3fe9089ccab538b7              # double 0.78230132666956009
	.quad	0x3fd5c535ea49e43a              # double 0.34016178016424059
	.quad	0x3fe708634a834399              # double 0.71977390816947484
	.quad	0x3fc9ee9056127eec              # double 0.20259288981195966
	.quad	0x3feac52e3e96c6dd              # double 0.83656990265282227
	.quad	0x3fd57903bf1e5f3e              # double 0.33551114715509189
	.quad	0x3fd550de94f39a1e              # double 0.33306088014652058
	.quad	0x3fe7e20a95f0a25c              # double 0.74634293828155363
	.quad	0x3fc0e328316ef78c              # double 0.13193228162520787
	.quad	0x3fed0289ddb5e236              # double 0.90655988028362944
	.quad	0x3fbf7817de407670              # double 0.12292622734136116
	.quad	0x3fb78650b8e73ce0              # double 0.091893239157105011
	.quad	0x3fe0fe60f0082062              # double 0.53105208283615135
	.quad	0x3fdd3ac0c311a566              # double 0.45671099710178564
	.quad	0x3fe2684516e26f68              # double 0.57522825688964208
	.quad	0x3fedf9db2baabd9a              # double 0.9367500164861895
	.quad	0x3fb4faa0bc6e1210              # double 0.081949277881058657
	.quad	0x3fef30c4de494b7f              # double 0.97470324912352157
	.quad	0x3fe34852bb20ed45              # double 0.60257851170118981
	.quad	0x3fcdc88a6ccda978              # double 0.23268251717247401
	.quad	0x3fd103dd1ddd0cca              # double 0.26586082378726117
	.quad	0x3fd96ff5b05d47c6              # double 0.39745847914775501
	.quad	0x3fe97e2e6b3e10b8              # double 0.79665299363889286
	.quad	0x3fae3098868e6ce0              # double 0.058964506554923579
	.quad	0x3fbacf886ca2d7a0              # double 0.10472920086144066
	.quad	0x3fe6ff0dff543f8e              # double 0.71863460415805647
	.quad	0x3fd8760169be91c0              # double 0.38220248533823664
	.quad	0x3feca47b50475cdd              # double 0.89507833175130325
	.quad	0x3fd9fbd05060806a              # double 0.40599449014007993
	.quad	0x3feea5c54e321dbc              # double 0.95773568413363063
	.quad	0x3feecbc64462badb              # double 0.96237481457304896
	.quad	0x3fd05ea0dd387b3a              # double 0.25577565768792321
	.quad	0x3fedb0f83efd52fa              # double 0.92785274794240924
	.quad	0x3fdac03b0e89d9cc              # double 0.41798283023618121
	.quad	0x3fe0f2332f561d76              # double 0.52956542249096006
	.quad	0x3fe1e64da49ab874              # double 0.55936319493572606
	.quad	0x3fe20d33cf74b6c2              # double 0.56411161917431962
	.quad	0x3feecfce7d5b94f1              # double 0.9628670166390788
	.quad	0x3fe130c4f87a9e31              # double 0.53720329791116772
	.quad	0x3fe37fef3a7b9770              # double 0.6093670027009761
	.quad	0x3fedd8b12fa4087e              # double 0.93270167641482238
	.quad	0x3fdff58ab3a9e5ae              # double 0.49936168236998923
	.quad	0x3fef8a64eae59a72              # double 0.98564382437036913
	.quad	0x3fd5cfbd5ab93f5c              # double 0.34080442294815838
	.quad	0x3fe47be499381096              # double 0.64012365270220317
	.quad	0x3fe1ba58645a316b              # double 0.55399722671567753
	.quad	0x3fd5d2902b12f66e              # double 0.34097675520374693
	.quad	0x3fe42b71ad596996              # double 0.63030322892454893
	.quad	0x3fe1f9d794b623dd              # double 0.56174830479823934
	.quad	0x3fd41ef7cc5635dc              # double 0.31439013437997487
	.quad	0x3fe8e4124351e856              # double 0.77784073971202861
	.quad	0x3fef41839e17be2e              # double 0.97674733045091044
	.quad	0x3f9f3e397c11a2e0              # double 0.030510805318416767
	.quad	0x3fe4976351e1c90a              # double 0.64347997658322353
	.quad	0x3fcd8876285c0f80              # double 0.23072697611507564
	.quad	0x3fe7702ae1bd9b81              # double 0.73244232263537878
	.quad	0x3fa76029894c90e0              # double 0.045655534753935134
	.quad	0x3fe3bd672403b3c6              # double 0.61687047037195764
	.quad	0x3fd33dcd6188bf88              # double 0.3006471111757425
	.quad	0x3fd5a09fbe19d0fe              # double 0.33792871059928575
	.quad	0x3fc93116e989dbc4              # double 0.19681059268233814
	.quad	0x3fe438dd015dd77c              # double 0.63194132105739653
	.quad	0x3fbd87381a1e1b20              # double 0.11534453046452287
	.quad	0x3fd6708590c99fbc              # double 0.35061778201497495
	.quad	0x3fc3e993caec3e4c              # double 0.15556571396199315
	.quad	0x3fc738e1470fb3e4              # double 0.18142333955566337
	.quad	0x3feb202090f6aef4              # double 0.84767177880482202
	.quad	0x3fe8bf289c6d6e7a              # double 0.77333479454269072
	.quad	0x3feeaff8dddfc33c              # double 0.95898097357539979
	.quad	0x3fd9aa0f56b84bf4              # double 0.4010046336053954
	.quad	0x3fe5cc193561be29              # double 0.68116436411032055
	.quad	0x3fe2c6dcadb62943              # double 0.58677514961281252
	.quad	0x3fc29419912085ec              # double 0.14514464937478466
	.quad	0x3fd93625a1059c68              # double 0.39392986988827383
	.quad	0x3fe39413c255570c              # double 0.61182582813009523
	.quad	0x3fc3d1b6c3ad71d8              # double 0.15483746103826834
	.quad	0x3fe9675a9e69725d              # double 0.79386645259689781
	.quad	0x3fefa88f89780e70              # double 0.98932625626953374
	.quad	0x3fc33b916429c9fc              # double 0.15025536909850234
	.quad	0x3fe5a890244f81d7              # double 0.67682654468449754
	.quad	0x3fe7aeb51897b1b8              # double 0.74007658770783902
	.quad	0x3fd0077549d9cf76              # double 0.25045520984644243
	.quad	0x3feb8a536ac70704              # double 0.86063547949763163
	.quad	0x3fcb98b5ff52def4              # double 0.21559786765077826
	.quad	0x3fe9dfc02b18a475              # double 0.80856331269491355
	.quad	0x3feb1ad460007443              # double 0.84702509641977775
	.quad	0x3f895556b2637dc0              # double 0.01236980182551306
	.quad	0x3fdac58b8546a596              # double 0.41830719008665918
	.quad	0x3fee3606f0001ab8              # double 0.94409510493354442
	.quad	0x3fe9a4d96ae5e643              # double 0.80137320402645462
	.quad	0x3fedb72f5e81db2a              # double 0.92861145456740712
	.quad	0x3fa0b7c762bddca0              # double 0.032652121356414598
	.quad	0x3fa58f480f073ea0              # double 0.042108775934704967
	.quad	0x3fed97bdf8c497ea              # double 0.92477320277680275
	.quad	0x3fda7dd5de331f96              # double 0.41393038462819598
	.quad	0x3fea37dd39af92fb              # double 0.81931935564770642
	.quad	0x3fec109ac90da61f              # double 0.87702693241334717
	.quad	0x3fefd07f7547fc60              # double 0.99420140177234017
	.quad	0x3fe385e623f0a56b              # double 0.61009509105239823
	.quad	0x3fad4b1b1d22b8a0              # double 0.057213637644381921
	.quad	0x3fe2af962b216932              # double 0.58393391059806832
	.quad	0x3fe1b68f382a0a2f              # double 0.55353508920263106
	.quad	0x3fe12c1fd45f185c              # double 0.53663627127458424
	.quad	0x3fcfc5355ce1f614              # double 0.24820582423483073
	.quad	0x3fd1f658fb9cf79e              # double 0.28066086360547071
	.quad	0x3fd8f043440d4c90              # double 0.38966447492311662
	.quad	0x3fcaf520e1413e8c              # double 0.210605726230359
	.quad	0x3fd742c183a5a3c6              # double 0.36344945770411774
	.quad	0x3fef3bedcde8785f              # double 0.97606554237769305
	.quad	0x3fcc0c46573cc4c0              # double 0.21912459621083791
	.quad	0x3feb23f7c54f6e1f              # double 0.84814060723460105
	.quad	0x3fdbdc7ef24cf990              # double 0.43533300077606274
	.quad	0x3fca5e26bba54a9c              # double 0.20599826967607704
	.quad	0x3fe385c77ea5a10c              # double 0.61008047805538146
	.quad	0x3fc3cf8bb4bc6ddc              # double 0.15477129292490488
	.quad	0x3fd327f55c575e76              # double 0.29931386964515327
	.quad	0x3fd195e69f580d50              # double 0.27477422295506404
	.quad	0x3fe7d132ddfe7144              # double 0.74428695066630057
	.quad	0x3fdf9836d7d23528              # double 0.49366541935235597
	.quad	0x3fe47144be8e6b28              # double 0.63882672517806771
	.quad	0x3fdf86b6be06f9b0              # double 0.49259728009556181
	.quad	0x3fed2b6cb34143ba              # double 0.9115508557389298
	.quad	0x3fbea82e90254148              # double 0.11975375193765558
	.quad	0x3fdf72a7561f2490              # double 0.49137290392224831
	.quad	0x3fe6f3c50d776fc6              # double 0.7172570479410687
	.quad	0x3fe0528a9d895943              # double 0.51007586258746362
	.quad	0x3fc9b1e48cd664fc              # double 0.20074135662870407
	.quad	0x3febe0d6802733ef              # double 0.87119603185567296
	.quad	0x3fa97e4df6d05cb0              # double 0.049791752222682617
	.quad	0x3fedde93ac7f9128              # double 0.93342002574039373
	.quad	0x3fe7fb50a49e5a5d              # double 0.74942810203613031
	.quad	0x3fca0e2595adcd98              # double 0.20355672653714119
	.quad	0x3fdd567ffb756a54              # double 0.45840453678616666
	.quad	0x3fd3857d8cb8c0fe              # double 0.30502260916092883
	.quad	0x3fdc767bd1ca65ba              # double 0.44473166930546493
	.quad	0x3fed295d1f4499fb              # double 0.91129928690935402
	.quad	0x3fed8e717845379f              # double 0.92363809099491678
	.quad	0x3fc14a4a124fbea4              # double 0.13507963079563468
	.quad	0x3f8f34dc8ce19400              # double 0.015237544106819101
	.quad	0x3feccfc0fb849bd5              # double 0.90036057591066287
	.quad	0x3fb9b9c1942f1430              # double 0.10049066417475738
	.quad	0x3fe5121acb452ffe              # double 0.65846004201148367
	.quad	0x3fcf06f8d5f76580              # double 0.24240026900842437
	.quad	0x3fe2cbf26856c229              # double 0.58739586237613139
	.quad	0x3fda4cd8f5655a7c              # double 0.41094039883083844
	.quad	0x3fe18cd7826d6912              # double 0.54844260667894873
	.quad	0x3fc047e07b084954              # double 0.12719350821914566
	.quad	0x3fcf8e5efdf7a7a8              # double 0.24653232002975511
	.quad	0x3fe9d11111b15aa0              # double 0.8067708344995772
	.quad	0x3fcc0ff5b3f4e078              # double 0.21923705374661373
	.quad	0x3fb1a9a04d3868b0              # double 0.068994540073989752
	.quad	0x3fe1905fc76e1dd4              # double 0.5488737959976171
	.quad	0x3fe8a3d378e35560              # double 0.76999829874936764
	.quad	0x3fd2a42977f5f248              # double 0.29126965250887737
	.quad	0x3fa1c9f520ae9250              # double 0.034743938674442476
	.quad	0x3fe64cbe516ecf67              # double 0.69686809449056575
	.quad	0x3fc296e44329e31c              # double 0.1452298477122661
	.quad	0x3fc7fbd100450948              # double 0.18737232697646733
	.quad	0x3fd7d2db5f231b5a              # double 0.37224468508468578
	.quad	0x3fdb8d31d550b280              # double 0.43049283820690931
	.quad	0x3fea03cc67f1664a              # double 0.81296367932663682
	.quad	0x3fb2aa8879c29e60              # double 0.072914628721826968
	.quad	0x3fe49fd3c4ea4c21              # double 0.6445101591110679
	.quad	0x3fcb9206e2366ac8              # double 0.21539388700042239
	.quad	0x3fe239cbfdd8ecdf              # double 0.56955527858317712
	.quad	0x3fbd1178208796e0              # double 0.11354780954533394
	.quad	0x3feac69522615adc              # double 0.8367410346498576
	.quad	0x3f901fc5ee326500              # double 0.01574620500887125
	.quad	0x3fb56a151e835d38              # double 0.083649940442559578
	.quad	0x3fc3ea214199a944              # double 0.15558257773529693
	.quad	0x3fd522c54df2beaa              # double 0.33024723636752162
	.quad	0x3fd709147c9ca1aa              # double 0.35992920083165336
	.quad	0x3fa4068c8baf29e0              # double 0.039112464953706683
	.quad	0x3fcb6309583c5cdc              # double 0.21395985420597341
	.quad	0x3fc6d85af9be867c              # double 0.17847764200728367
	.quad	0x3fe27d35736d4fe0              # double 0.57778427643142649
	.quad	0x3fe77a2620ceb66a              # double 0.73366075904568828
	.quad	0x3fee1428af0dcaa7              # double 0.93996080579957642
	.quad	0x3fc285defbe6d7f8              # double 0.1447104196537905
	.quad	0x3fd350f839d07de0              # double 0.30181699415149232
	.quad	0x3fcc5749403d5038              # double 0.22141376148886294
	.quad	0x3fdfc0c14aa3a26c              # double 0.49613983429893582
	.quad	0x3fe22f5336a8f0c2              # double 0.56827698398367255
	.quad	0x3fec4f1b7c9f0fdf              # double 0.88465666141609833
	.quad	0x3fd44c6afd1b7efa              # double 0.31716417996902602
	.quad	0x3fc176dd2ae67f78              # double 0.13643993944878807
	.quad	0x3fd82c6cabec6c02              # double 0.37771145619780111
	.quad	0x3fe0f3afa8f02742              # double 0.52974684711191622
	.quad	0x3fe7d1ca43de1d19              # double 0.74435914283177163
	.quad	0x3f99d0e39badcbc0              # double 0.025210911156545057
	.quad	0x3fed24c3f83d84c4              # double 0.91073797687945345
	.quad	0x3fc398af920875ac              # double 0.15309710150260736
	.quad	0x3feff44e294fbe6a              # double 0.99857242649700351
	.quad	0x3feb4ec603fb8fa9              # double 0.85336590555060809
	.quad	0x3fe9e31a6ede78fe              # double 0.80897256521328109
	.quad	0x3fde03b897496686              # double 0.46897711538404285
	.quad	0x3feac4ff857c8222              # double 0.83654762336306399
	.quad	0x3fe0ab8e58dc317b              # double 0.52094189982885497
	.quad	0x3fefc730a85f2dae              # double 0.99306519398799309
	.quad	0x3fdd7aa7ff8d9240              # double 0.46061134296749984
	.quad	0x3fd66379fada392a              # double 0.34982156274135667
	.quad	0x3feb7af182a7d640              # double 0.85875773924517063
	.quad	0x3feaac3268ff746f              # double 0.83352013118168411
	.quad	0x3fd6d76306ed2e68              # double 0.35689616848387695
	.quad	0x3fdf4215b5efb5d4              # double 0.48840849654410801
	.quad	0x3fd9d5edba3ce192              # double 0.40368216693198022
	.quad	0x3fb41fd44e8c8fa8              # double 0.078610676934259716
	.quad	0x3fda9c0cd8a09e42              # double 0.41577454714795092
	.quad	0x3fe6fce4b0834007              # double 0.71837076640258679
	.quad	0x3fc568bce4af0f00              # double 0.16725884596063878
	.quad	0x3fc7c4841fb1bda8              # double 0.18568469569752932
	.quad	0x3fd9b097bce7cc5a              # double 0.40140336463736548
	.quad	0x3f922118af9da560              # double 0.017704377859819487
	.quad	0x3fd26fec51e7ab5e              # double 0.28808124540835489
	.quad	0x3fe47addec13b40c              # double 0.63999839886457854
	.quad	0x3fbb2c8c897513a8              # double 0.10614851337329745
	.quad	0x3fd4914d21437ffe              # double 0.32136848686604924
	.quad	0x3fe26f247085258c              # double 0.57606718041022154
	.quad	0x3fe8f340eb124ada              # double 0.77969404137032972
	.quad	0x3fbea6e08820d708              # double 0.11973384211964
	.quad	0x3fe05de3d7376d6c              # double 0.51146118196940682
	.quad	0x3fd8264eab7176b6              # double 0.37733809225560877
	.quad	0x3fe846ff15afb65e              # double 0.7586665557443657
	.quad	0x3fbc1abc4246ddd8              # double 0.10978294962011803
	.quad	0x3fe68e606b354998              # double 0.70487996043293588
	.quad	0x3fc198db7a70dd2c              # double 0.13747733572538701
	.quad	0x3fe24b9390b99510              # double 0.57172563807094612
	.quad	0x3fe9ec76f4ed9048              # double 0.81011531674858706
	.quad	0x3febdfce1b5d035f              # double 0.87106995911026874
	.quad	0x3f8faae1f3c44ac0              # double 0.01546265149275905
	.quad	0x3fdb5facca94b688              # double 0.42771453650753033
	.quad	0x3fd9ce96883f0eca              # double 0.40323413186363821
	.quad	0x3f961ea7bcfc6dc0              # double 0.021601315412324018
	.quad	0x3fef7af951a7f7d9              # double 0.98376146267377884
	.quad	0x3f9f600ab75c9420              # double 0.030639808122163825
	.quad	0x3fe2c645be1e25b2              # double 0.58670317776084446
	.quad	0x3fedf4da3318a1f8              # double 0.9361392019246173
	.quad	0x3fea675ca4acbd74              # double 0.82511741793670845
	.quad	0x3fed11100e4049eb              # double 0.9083328512518255
	.quad	0x3fd1e65f90e0a608              # double 0.27968587063023209
	.quad	0x3fd908f51d42618a              # double 0.39117172105172726
	.quad	0x3fe5fdc67c1c3cb7              # double 0.68722843399327516
	.quad	0x3fea04ca48a49afb              # double 0.81308473766406963
	.quad	0x3fe2da14c64a89c4              # double 0.58912123421424001
	.quad	0x3fcabc9500e6962c              # double 0.20888006729107766
	.quad	0x3fe12024340c8983              # double 0.53517351308646288
	.quad	0x3fe748afeef04594              # double 0.72762295406043842
	.quad	0x3fd93a2e96ebeafe              # double 0.39417614687378932
	.quad	0x3fe778515cd08b6e              # double 0.7334372341905302
	.quad	0x3fef92217fa85c41              # double 0.98658823903213754
	.quad	0x3fc7d3a946f12590              # double 0.18614688838924254
	.quad	0x3febab19015b0cc6              # double 0.86463594689157541
	.quad	0x3fee00cbfaac8214              # double 0.93759726485956429
	.quad	0x3fdf950ae99e8e8e              # double 0.49347184004202738
	.quad	0x3fed81f4f0c71b30              # double 0.92211386706262566
	.quad	0x3fd784ae41f2b542              # double 0.36747318687669772
	.quad	0x3fb78829555b5ac0              # double 0.091921408976626928
	.quad	0x3fd477c6780a7c90              # double 0.31981050226927099
	.quad	0x3feb29ef22017302              # double 0.8488689102337903
	.quad	0x3fe5eea470beec3c              # double 0.68538114567434816
	.quad	0x3fd02162e3113056              # double 0.25203773664975893
	.quad	0x3fedf70e9d350628              # double 0.93640833572880399
	.quad	0x3fac1b32de358730              # double 0.054895009637006331
	.quad	0x3febee983cb453ee              # double 0.87287532669381362
	.quad	0x3fe85cd3bf4b2b9c              # double 0.76133143770254063
	.quad	0x3fe5889f3f4a1f07              # double 0.67292749749410141
	.quad	0x3fdceafac6ef44de              # double 0.45184201647960076
	.quad	0x3fe8c9ef30d54457              # double 0.77465018785199902
	.quad	0x3fc82398feef0e6c              # double 0.18858635375919464
	.quad	0x3fef981684c4928e              # double 0.98731542521689319
	.quad	0x3fe44990f885d8cb              # double 0.63398026027314225
	.quad	0x3fdc1390380db0d4              # double 0.43869405244801141
	.quad	0x3fe8e2411dcc7ed5              # double 0.77761894054489267
	.quad	0x3fe164d675af8913              # double 0.54355929360852639
	.quad	0x3fe2dc72f9ec8401              # double 0.58941029370555509
	.quad	0x3fd7caa428c938aa              # double 0.37174324019441463
	.quad	0x3fdc2b75f605ea2c              # double 0.44015263581937591
	.quad	0x3fd3ba56f0bad722              # double 0.30824826725744192
	.quad	0x3fb2f8c17fd4a5c0              # double 0.074108213146835134
	.quad	0x3fe7ff79cc58c488              # double 0.74993600760912305
	.quad	0x3fedfe0c3db4059f              # double 0.93726169635208467
	.quad	0x3fe0652b763da2d0              # double 0.51234982580089117
	.quad	0x3fe2c9365e705ada              # double 0.58706205792517641
	.quad	0x3fe2c10b4e7f102f              # double 0.58606496173206846
	.quad	0x3f97d30698fa7820              # double 0.023265936934528608
	.quad	0x3fdcf2476dda0e90              # double 0.45228753783906317
	.quad	0x3fec24e284ee2dad              # double 0.8795025440498897
	.quad	0x3fd5b3d9bc472cc2              # double 0.33910220514799161
	.quad	0x3feaae3afe12ab89              # double 0.83376836417788625
	.quad	0x3fe1007d042d0e80              # double 0.53130961242318619
	.quad	0x3fe670811fa07796              # double 0.70123344590295988
	.quad	0x3feaf665f2c5970c              # double 0.84257790962576128
	.quad	0x3fe922d5ba578559              # double 0.7855023040284933
	.quad	0x3fe09324a9831974              # double 0.5179618178160994
	.quad	0x3fb99b5163a17050              # double 0.10002621347797569
	.quad	0x3fd85a8da4ea1f70              # double 0.38052693467078935
	.quad	0x3fe381a1bb2a4c98              # double 0.60957418971738075
	.quad	0x3fe78725a9e2d61b              # double 0.7352474515998354
	.quad	0x3fea9f1e08cbab77              # double 0.83192350118530001
	.quad	0x3fe8e7c409787c71              # double 0.77829171991096591
	.quad	0x3fbbd244876d63b8              # double 0.10867718035059581
	.quad	0x3fd07987e4687234              # double 0.25741765313594844
	.quad	0x3fecdb0a31f9711e              # double 0.90173825989362277
	.quad	0x3fe7eb922e580dda              # double 0.74750622798495248
	.quad	0x3fe57ea6e6d4c7db              # double 0.67171044429982929
	.quad	0x3fc0f870e7846c14              # double 0.1325818186240616
	.quad	0x3f889575f0692a80              # double 0.012003823661094204
	.quad	0x3fe15206cd92b97f              # double 0.54126300955776674
	.quad	0x3fb873289944ca08              # double 0.095507180613630394
	.quad	0x3fccbc7c83b9bffc              # double 0.2245021479789101
	.quad	0x3fe3878a64671d78              # double 0.61029548273010814
	.quad	0x3fcfa57926ab50e0              # double 0.2472373427214114
	.quad	0x3f7d84967d2e0300              # double 0.0072065237499152612
	.quad	0x3fdd001bf555bc02              # double 0.45313166578756647
	.quad	0x3fefbb71eebed78c              # double 0.99163147573448062
	.quad	0x3fe2be4c017b9bea              # double 0.58572960176104272
	.quad	0x3fb6b003e540e5b8              # double 0.088623279066175509
	.quad	0x3fe99fed7d16f56d              # double 0.80077242309168428
	.quad	0x3fe68947f4d07859              # double 0.7042579442529685
	.quad	0x3fd11f289e03164a              # double 0.26752677374711153
	.quad	0x3fe379b495690c71              # double 0.60860661679943295
	.quad	0x3fd51e15ae84072c              # double 0.32996122400810424
	.quad	0x3fcf91542dd8e3a8              # double 0.2466225837577245
	.quad	0x3fd6fcbed5d54434              # double 0.3591763580525964
	.quad	0x3fe7091c72ded872              # double 0.71986219821589104
	.quad	0x3fe2a12770b0b29c              # double 0.58217212686357156
	.quad	0x3fc2022b4185e084              # double 0.14069119166720523
	.quad	0x3fe3ac982914fb84              # double 0.61481864951916565
	.quad	0x3feb56b107d9667e              # double 0.8543324616723138
	.quad	0x3fc21fd385516ec0              # double 0.14159626016304649
	.quad	0x3fe044990dc8a53a              # double 0.50837376300947956
	.quad	0x3fdd8cbc26aa6f4e              # double 0.46171478057816706
	.quad	0x3fe48947a33bd979              # double 0.64175779229735419
	.quad	0x3fec0f47adabe463              # double 0.87686523361402313
	.quad	0x3feae56568fae67b              # double 0.84050245765611409
	.quad	0x3fe67bb0d2e85710              # double 0.70259896462332172
	.quad	0x3fe3917cbf169a2f              # double 0.61150967904979392
	.quad	0x3fd3bafe9eb19582              # double 0.30828824517660547
	.quad	0x3fd37174127dffca              # double 0.30379964643361446
	.quad	0x3fed3638a1d07010              # double 0.91286880115831259
	.quad	0x3fd76c248f659042              # double 0.36597551349246171
	.quad	0x3fe59d17851cfc76              # double 0.6754262542598457
	.quad	0x3fafb74aabdda8b0              # double 0.061945279578894286
	.quad	0x3fd608c7f09b93a2              # double 0.34428595063064382
	.quad	0x3feea91894b9a36f              # double 0.95814160392647618
	.quad	0x3fed60bda68a4e23              # double 0.91805918242829809
	.quad	0x3fb6d84589e5c108              # double 0.089237543264747754
	.quad	0x3fd4b343c3006176              # double 0.32344144862283686
	.quad	0x3fce1155362db2b4              # double 0.23490395684657062
	.quad	0x3fa32b0e46e228e0              # double 0.037437864449275216
	.quad	0x3fe98d672f0a63cd              # double 0.79851111590971302
	.quad	0x3fd9a0039ec7db20              # double 0.40039148813177583
	.quad	0x3fe2c6663be8b35d              # double 0.5867186708543205
	.quad	0x3fdea42935ca147c              # double 0.47876959088200244
	.quad	0x3fe64dcbf127a1cd              # double 0.6969966611914572
	.quad	0x3fe81604eb583b61              # double 0.7526878925872148
	.quad	0x3fd0db2dfeaec7b8              # double 0.26337766524659001
	.quad	0x3fe4b5c475cc65b3              # double 0.64718840606217609
	.quad	0x3fd47adab0ceba76              # double 0.31999842897759068
	.quad	0x3fe4784aa60c35ae              # double 0.63968403273763896
	.quad	0x3fee16c43ca49814              # double 0.94027911991429613
	.quad	0x3fe24ed6025b75d4              # double 0.57212353191760679
	.quad	0x3fc4b4089c2d208c              # double 0.16174419046206301
	.quad	0x3fedacfa372b1b81              # double 0.92736540579868187
	.quad	0x3fe6dd35433daba2              # double 0.71450293667782128
	.quad	0x3fdfd1047114d0f2              # double 0.49713240664574621
	.quad	0x3f97fe5c1d9e8780              # double 0.023431243236366139
	.quad	0x3fe007e6a6a77ed7              # double 0.50096447515167142
	.quad	0x3fd51d8e419f5e4a              # double 0.32992893608522833
	.quad	0x3fe0ac32fd1e05da              # double 0.52102040707557795
	.quad	0x3fd0bf99f670ebd6              # double 0.26169442240251095
	.quad	0x3fd2927d8a730e48              # double 0.2901910640759735
	.quad	0x3fe02c8621cdc921              # double 0.50543505289377688
	.quad	0x3fd8b5073c98bd48              # double 0.38604908864632081
	.quad	0x3fe3945eed5725c8              # double 0.61186167102385358
	.quad	0x3fd6f2f58fa546e2              # double 0.35857905414478186
	.quad	0x3fcd452372d7659c              # double 0.22867243869295073
	.quad	0x3fefaff35af5382c              # double 0.9902283455392129
	.quad	0x3fdd5f7dd596c928              # double 0.45895334108640151
	.quad	0x3fe03881b3df39fc              # double 0.50689778453107648
	.quad	0x3fe74a3a5885c92f              # double 0.72781102456636926
	.quad	0x3fe4537c2f435682              # double 0.63519105177938706
	.quad	0x3fc1577d37d02edc              # double 0.1354824564481224
	.quad	0x3fbac419a1a9af88              # double 0.10455475041243123
	.quad	0x3fe97e5da66f8a14              # double 0.79667551524136337
	.quad	0x3fa502dcb73cb2b0              # double 0.041037461631593941
	.quad	0x3fd0c7a0c1956e3a              # double 0.26218432335528841
	.quad	0x3fe0e392615020a3              # double 0.52777976042218133
	.quad	0x3fdba43437f27864              # double 0.43189721549595661
	.quad	0x3fef6eef31497069              # double 0.98229179025976265
	.quad	0x3fdc40a9ebb55f42              # double 0.44144676226050106
	.quad	0x3fd35a56e2b6ec34              # double 0.30238887920467339
	.quad	0x3fe61b9168540eeb              # double 0.69086523415213941
	.quad	0x3fd56730f345c7bc              # double 0.33442329175079144
	.quad	0x3fed8ba3a2edac78              # double 0.9232958013721051
	.quad	0x3fd960da87bc745e              # double 0.39653647666438541
	.quad	0x3fc59c9a0c99f6bc              # double 0.1688416062860848
	.quad	0x3fe7058dd1c17576              # double 0.71942797630224109
	.quad	0x3fcec1ef9d7ee3a8              # double 0.24029345693796
	.quad	0x3fd72891b53e6bc2              # double 0.36185114574044175
	.quad	0x3fee8664df4df3af              # double 0.95390552152786323
	.quad	0x3feb4bcad8f96be0              # double 0.8530019986895887
	.quad	0x3fd286622a6b2588              # double 0.28945211546359717
	.quad	0x3fee67fc6b12f07f              # double 0.9501936045922007
	.quad	0x3fd962411b55af92              # double 0.39662196797757432
	.quad	0x3fed5dc7f99ec255              # double 0.91769789461074913
	.quad	0x3fba35e9f9708618              # double 0.10238516177971524
	.quad	0x3fdda0b7bdefb998              # double 0.46293443249205657
	.quad	0x3fe999c397c07413              # double 0.80002002371805003
	.quad	0x3fe21f11fea841ed              # double 0.56629276025529196
	.quad	0x3fea9758c11a5824              # double 0.83097493853961568
	.quad	0x3fda0fa66279b5e2              # double 0.40720519654027332
	.quad	0x3fdd6fc2edd00676              # double 0.45994637702833729
	.quad	0x3fee7da05815f4c0              # double 0.95283524708033695
	.quad	0x3fefee228041e263              # double 0.99781918573632955
	.quad	0x3fd8af3251afb064              # double 0.38569314934898657
	.quad	0x3fef0e2e2c822505              # double 0.97048100178759055
	.quad	0x3fed0f2a8783e82d              # double 0.90810133426498896
	.quad	0x3fe4e7109770efca              # double 0.65320615366317125
	.quad	0x3fd8ca6a05cb8862              # double 0.38735437932894545
	.quad	0x3fba3b99574ad078              # double 0.10247190838964737
	.quad	0x3fd11a53afc87760              # double 0.26723186651530817
	.quad	0x3fda7e0a11c17ee4              # double 0.41394283040970792
	.quad	0x3febba094e86c273              # double 0.86645951592625037
	.quad	0x3f916e5a4b120fe0              # double 0.017022524673407591
	.quad	0x3fd787d8e5d379c2              # double 0.36766645854904934
	.quad	0x3fef50c2f127fe4e              # double 0.97860858059716249
	.quad	0x3fe5a6ad4127e73b              # double 0.67659628606563815
	.quad	0x3fe08f860e593cf6              # double 0.51751997759302415
	.quad	0x3fdb83bb719422e4              # double 0.42991529552140961
	.quad	0x3fd2193214213f50              # double 0.2827878185826096
	.quad	0x3fe2fd21f9d6ccc7              # double 0.59339999005023791
	.quad	0x3fef6dcf783cbd2e              # double 0.98215459331360022
	.quad	0x3fd1a5de1e3a21d6              # double 0.27574875785697139
	.quad	0x3fe5785c2f1f9fae              # double 0.67094239429296976
	.quad	0x3fddc9aa656e19d2              # double 0.4654336920288219
	.quad	0x3fe43d7cdb2b97c2              # double 0.63250582510658426
	.quad	0x3fdfb79f8f25d4be              # double 0.49558247546458378
	.quad	0x3fd26d850832187a              # double 0.28793454933509788
	.quad	0x3fea13b520a0e59e              # double 0.81490570423845887
	.quad	0x3fe9af284c4f35c0              # double 0.80263152031118778
	.quad	0x3fa4f0f0ef570830              # double 0.040900735107712527
	.quad	0x3fd2f388ca877324              # double 0.29611415651543127
	.quad	0x3fd8210c9716606c              # double 0.37701716189031376
	.quad	0x3fe1dc2da6fc85e5              # double 0.55812723745856074
	.quad	0x3fe52a0650d20e37              # double 0.66137996468791627
	.quad	0x3fe2f714831959d2              # double 0.5926611481216304
	.quad	0x3fef89d9818f2bba              # double 0.98557734779875905
	.quad	0x3fe16b44f8d73323              # double 0.5443444118660391
	.quad	0x3fee88f46f8f7bae              # double 0.95421811856419025
	.quad	0x3fef1c664db96fe1              # double 0.97221675091304515
	.quad	0x3fea6176ffb9351e              # double 0.82439756341924286
	.quad	0x3fe6c09ad4a34ecc              # double 0.71101132899135555
	.quad	0x3fd819ac4b3a95fa              # double 0.37656695696418263
	.quad	0x3fd14c6b64d6e55e              # double 0.2702892765770083
	.quad	0x3fe2abffdc5785f8              # double 0.58349602733159056
	.quad	0x3fee52e17559f39d              # double 0.9476172725695623
	.quad	0x3fecb216a6af101b              # double 0.89673931651532557
	.quad	0x3fd415390e11423a              # double 0.31379534124156161
	.quad	0x3fc0786d22469894              # double 0.12867511914845819
	.quad	0x3fe7a6fea016f113              # double 0.73913508670333028
	.quad	0x3fe4c581cb1072fb              # double 0.64910974179255676
	.quad	0x3fed913ec80fc1fd              # double 0.92398013185999128
	.quad	0x3fe3564e7fc5dd09              # double 0.60428547816891964
	.quad	0x3fd7ae95e0c13736              # double 0.37003085087495735
	.quad	0x3fed23ab4fd356a5              # double 0.91060414877820917
	.quad	0x3fe35a7074926171              # double 0.60478995101861532
	.quad	0x3fd77ff378574e00              # double 0.36718451263479324
	.quad	0x3fd3aeba53bc641c              # double 0.30753954102834924
	.quad	0x3fee87fe63ccc8bd              # double 0.95410079471755405
	.quad	0x3fb3afab6b16e870              # double 0.07689925541390763
	.quad	0x3fe596a96925e02d              # double 0.67464132820805889
	.quad	0x3fe1b7be3ac11098              # double 0.55367957568570869
	.quad	0x3fe42241c371f454              # double 0.62918174908521474
	.quad	0x3fd5421d21837344              # double 0.33216026566315215
	.quad	0x3fe25be2ee9eceec              # double 0.5737166081002818
	.quad	0x3f9a59b4d4b17920              # double 0.025732827646032352
	.quad	0x3fe0ffb5a03793be              # double 0.5312145356407354
	.quad	0x3fee3f985e5ce4fd              # double 0.94526308470008724
	.quad	0x3fecda422cb05542              # double 0.90164288261681969
	.quad	0x3fe135aa90001660              # double 0.53780105710093196
	.quad	0x3fe3ee211beffe59              # double 0.6228185220388226
	.quad	0x3fef0ae2726a117a              # double 0.97007868143604914
	.quad	0x3fd1b932d7ac0864              # double 0.27692862569541021
	.quad	0x3fdbedb654c333cc              # double 0.4363838031538847
	.quad	0x3fecb60b8a23bd36              # double 0.89722229938880704
	.quad	0x3fec481b0eb63516              # double 0.88380196450603665
	.quad	0x3fec6529e7b1a0f3              # double 0.88734908344943475
	.quad	0x3fe087d38da87f8a              # double 0.51658036868683266
	.quad	0x3fd78d01d59675ba              # double 0.36798139436890731
	.quad	0x3fa3064209148e50              # double 0.037157119377550729
	.quad	0x3fef7939730ded34              # double 0.9835479018360389
	.quad	0x3fa8c7e7b71c56e0              # double 0.048400155165081449
	.quad	0x3faf0ed93559b3e0              # double 0.060660159838199723
	.quad	0x3fdc1edffc6000b0              # double 0.43938445707318419
	.quad	0x3feec13465ddb565              # double 0.96108455558502881
	.quad	0x3fe24e292c3abfe3              # double 0.57204111708233218
	.quad	0x3fec484bb682d01a              # double 0.88382516524007149
	.quad	0x3fcc6a794b6a6368              # double 0.22199932272340139
	.quad	0x3fba7288a67e5918              # double 0.10331014694961416
	.quad	0x3fd743be767f5980              # double 0.36350976535813828
	.quad	0x3fdb3243dd2d35ac              # double 0.42494293784406056
	.quad	0x3fe8e90ad270548f              # double 0.77844754315687392
	.quad	0x3fdc88179853a598              # double 0.44580640674265615
	.quad	0x3fe74f1f0e8e991f              # double 0.72840836375397433
	.quad	0x3fe59cdb4a7907e7              # double 0.675397534804003
	.quad	0x3fd0402c9fc3853a              # double 0.25391688920906896
	.quad	0x3feaecb1977539b6              # double 0.84139327603934677
	.quad	0x3fe80078f1bb1f46              # double 0.75005767071795826
	.quad	0x3feb2a3d0bf6d473              # double 0.84890606247667078
	.quad	0x3fde1a84221a69a8              # double 0.47036841707599786
	.quad	0x3fbb1c6d6782ace8              # double 0.10590251710043541
	.quad	0x3feda7662e25011e              # double 0.92668446552855577
	.quad	0x3fe462b78fece09d              # double 0.6370504199067174
	.quad	0x3fe3d8cacd00d167              # double 0.6202138904541642
	.quad	0x3fe895e1dfa0e047              # double 0.76829618146349155
	.quad	0x3fd0b05f2e0fcc2e              # double 0.26076488016332433
	.quad	0x3fe4bbb565a2c52a              # double 0.64791364527460371
	.quad	0x3fe569877e1dee74              # double 0.66913199073992624
	.quad	0x3fe24ac76f972efc              # double 0.57162830157309896
	.quad	0x3fddb1d289f94fe6              # double 0.4639784190560462
	.quad	0x3fdfd0699d137e98              # double 0.49709549273937048
	.quad	0x3fbf28dd3e93c600              # double 0.12171728875889443
	.quad	0x3fe198a9bb9eaeb3              # double 0.54988562244894579
	.quad	0x3fb988d13449a6d0              # double 0.099743914857437276
	.quad	0x3f890944509d0080              # double 0.012224706373331395
	.quad	0x3fea1c91a52e3eb4              # double 0.81598741781086525
	.quad	0x3fe5ae1889ca25de              # double 0.67750193512000201
	.quad	0x3faa1bcbd5560df0              # double 0.050993318359385031
	.quad	0x3fe798e7ce1455f0              # double 0.73741522073640731
	.quad	0x3feec12ed96f591f              # double 0.96108190982593899
	.quad	0x3fd371d61c1a371c              # double 0.30382302040458042
	.quad	0x3fd160a3165a40b0              # double 0.27152325804582755
	.quad	0x3fa61d9d251261c0              # double 0.043194685721747117
	.quad	0x3fe6f143c3af7922              # double 0.71695125789463909
	.quad	0x3fb8786c9480d330              # double 0.095587526565236613
	.quad	0x3fe110ab691cfe78              # double 0.53328485994275265
	.quad	0x3fcbc96c52a98348              # double 0.21708444629896406
	.quad	0x3fe6251fb6916a8f              # double 0.69203172357386389
	.quad	0x3fe536e442fdd160              # double 0.66295064052841823
	.quad	0x3fb1f821d92f6720              # double 0.070192447208139885
	.quad	0x3fd0a649d2ff1dd4              # double 0.26014943699962356
	.quad	0x3fd7f50b7a5d6b48              # double 0.37433134984683081
	.quad	0x3fbea54a0d56d8b0              # double 0.11970961404481062
	.quad	0x3fe8d25d3a45b4e6              # double 0.77567922002131406
	.quad	0x3fa675aba025c470              # double 0.043866504000910633
	.quad	0x3fa2b5057e74e790              # double 0.036537334143260769
	.quad	0x3fe8c0820c3eca10              # double 0.77349951163916053
	.quad	0x3f9252645ab15400              # double 0.017892425570909865
	.quad	0x3fea9dbbd15752dc              # double 0.83175459753928349
	.quad	0x3fa287a453af9670              # double 0.036191115584910061
	.quad	0x3fdee337c5e67230              # double 0.48261827779950561
	.quad	0x3fea54134f4a8294              # double 0.82276311384710476
	.quad	0x3feb5d433a21c200              # double 0.85513459543113868
	.quad	0x3fd88733b8ce5d66              # double 0.38325207755538881
	.quad	0x3fda9ce0cb293e76              # double 0.41582507934524615
	.quad	0x3fd39755bedb2e24              # double 0.30611175192163587
	.quad	0x3fcde20562beb948              # double 0.2334601146844284
	.quad	0x3fdcdbb2a2b4beac              # double 0.45090928925763296
	.quad	0x3f51cd12970f3800              # double 0.0010864907783232347
	.quad	0x3fb8d6211a2de998              # double 0.097017353908006476
	.quad	0x3fe7b6913e7b340b              # double 0.74103605464336064
	.quad	0x3fa973e64e656ec0              # double 0.049712369031764236
	.quad	0x3fd58adc28e6d4d6              # double 0.33660034174256503
	.quad	0x3fe93a9e6c3ff91c              # double 0.78840562002713765
	.quad	0x3fe272ffcf566480              # double 0.57653799529647642
	.quad	0x3fdf357ef7499884              # double 0.48764013432663256
	.quad	0x3fd90b987e8e559e              # double 0.39133274420722752
	.quad	0x3fdba84634f291d0              # double 0.43214564486177398
	.quad	0x3feeee88f82184cc              # double 0.96661804640839354
	.quad	0x3fee9bac55a8a00b              # double 0.9565030739804582
	.quad	0x3feb8f4e14ef0abe              # double 0.86124328697800201
	.quad	0x3fd0dd22e6f50ab8              # double 0.26349709085858875
	.quad	0x3fcd718d3656336c              # double 0.23002782014045964
	.quad	0x3fe6c4ea3e0bc942              # double 0.71153747671477441
	.quad	0x3fb0c3ee703a6350              # double 0.065489675902779654
	.quad	0x3fb81d784a5aa2a0              # double 0.09419967475208546
	.quad	0x3fedd0bdc5f0d034              # double 0.9317311159161421
	.quad	0x3fcfe8d80c8e8f68              # double 0.24929333317879387
	.quad	0x3fe2d3b8af6a6296              # double 0.58834490071156398
	.quad	0x3fef7b6b86b5e807              # double 0.98381592093142067
	.quad	0x3fc3b476cd6793d4              # double 0.15394482640763718
	.quad	0x3fedf2b61647bb63              # double 0.93587784148790509
	.quad	0x3fc78d96c2536220              # double 0.1840084503990207
	.quad	0x3fe3b479e1fc2668              # double 0.61578077447593405
	.quad	0x3fe89abe72a6ebb4              # double 0.76888964074111365
	.quad	0x3fd8d9532cf7275e              # double 0.38826445952564892
	.quad	0x3fddc9bdb4388ec2              # double 0.46543829536151915
	.quad	0x3fd0f1dedc11b2d2              # double 0.26476260653616379
	.quad	0x3fe56a8b0c2cb220              # double 0.66925575616693678
	.quad	0x3fd674bd99046888              # double 0.35087528174484151
	.quad	0x3fcece1c4c753e7c              # double 0.240664994557381
	.quad	0x3fb61d7d7a09bb00              # double 0.086387483877597759
	.quad	0x3fcebdcbd7ffcdf4              # double 0.24016712233388626
	.quad	0x3fd1125f0580da02              # double 0.26674628770288689
	.quad	0x3fed4af1918ab191              # double 0.91539839197280248
	.quad	0x3fe1a8250a1c503f              # double 0.55177547430731255
	.quad	0x3fcdbd685603584c              # double 0.23234276008469334
	.quad	0x3fe5cad166a54e0a              # double 0.68100805328362068
	.quad	0x3fd88d12ce95c06c              # double 0.38361044096291752
	.quad	0x3fb620525e71f068              # double 0.086430690820579081
	.quad	0x3fdac53e7163faaa              # double 0.41828881333632728
	.quad	0x3fcfa93cd47f9404              # double 0.24735222221275432
	.quad	0x3fe9c1e1ce955741              # double 0.80491724346459403
	.quad	0x3fe81c7b07d7114e              # double 0.75347663432379774
	.quad	0x3fb7913bf1bfb930              # double 0.092059847374660774
	.quad	0x3fc598f8bc413a84              # double 0.1687308234417807
	.quad	0x3feeae8f43a92be4              # double 0.95880854811673232
	.quad	0x3fef1d908299749a              # double 0.97235894687368618
	.quad	0x3fd4496b2aa96b12              # double 0.31698111692610198
	.quad	0x3f97d05bfa1a8800              # double 0.023255765094866376
	.quad	0x3fc9a2691443b00c              # double 0.20026887406800176
	.quad	0x3febd0f92a518bd4              # double 0.86925943627681556
	.quad	0x3fb285a294471f50              # double 0.072351609421386742
	.quad	0x3fe6f2c1711a8e99              # double 0.71713325586866283
	.quad	0x3febee68c71959f3              # double 0.87285269629029327
	.quad	0x3fe3a8abdc7a19f5              # double 0.61433976232439014
	.quad	0x3fc231bd807c54c4              # double 0.14214295171465186
	.quad	0x3fe4cda20a2d10e4              # double 0.65010168063647855
	.quad	0x3fe4fcd8840b7cc4              # double 0.65586496152891316
	.quad	0x3fbc96b2c26768d8              # double 0.11167447324934032
	.quad	0x3f6f83fc45170500              # double 0.0038471152444975454
	.quad	0x3fda6ed85fd33ef8              # double 0.41301545484473889
	.quad	0x3fc0062c1e717a2c              # double 0.12518836485374274
	.quad	0x3fe4034ad36ebe15              # double 0.62540189071109131
	.quad	0x3fe7f2b569399b87              # double 0.74837751914752537
	.quad	0x3fc5ad25ff8ea044              # double 0.16934657076240189
	.quad	0x3fe02fde4f777954              # double 0.50584331055487519
	.quad	0x3fa670fb1ec8a760              # double 0.043830726154125754
	.quad	0x3fe4454e56874a44              # double 0.63346020603268771
	.quad	0x3fee853e1c387156              # double 0.9537649680310476
	.quad	0x3fd42d674be6d7fe              # double 0.31527120983389512
	.quad	0x3fe3c75fdfc6226b              # double 0.6180877085290154
	.quad	0x3fedb273b5b476bb              # double 0.92803369035001226
	.quad	0x3fed82376a5eb15b              # double 0.92214556479806775
	.quad	0x3fa39ee20c57fc60              # double 0.038321556097792309
	.quad	0x3fcaa35ce60b53d0              # double 0.20811043961171416
	.quad	0x3fe7b8d8b051adb0              # double 0.7413142627460072
	.quad	0x3fe184dad503c9aa              # double 0.54746762852146458
	.quad	0x3fd9ecd913176afa              # double 0.4050810514869877
	.quad	0x3fd4152bc184e0ae              # double 0.31379217050881436
	.quad	0x3fe2a45756c66dca              # double 0.58256117771400651
	.quad	0x3fcd28c0005baf24              # double 0.22780609147536623
	.quad	0x3fe0e54c76cbc124              # double 0.52799056246115983
	.quad	0x3fca4863d38a0cf4              # double 0.20533416585030972
	.quad	0x3fe58d6b100d9b0c              # double 0.67351296553974427
	.quad	0x3fef6f30e50a0c41              # double 0.98232311948994077
	.quad	0x3fe0e08a61c06f69              # double 0.52740973560456184
	.quad	0x3fd4e5c6f9a0e998              # double 0.32652449014462936
	.quad	0x3fddb4ecc5b4094c              # double 0.46416777903518347
	.quad	0x3fe5a4ee893baec0              # double 0.67638327411028598
	.quad	0x3fe6d12f4e215c51              # double 0.71303525218798758
	.quad	0x3fe1018388c9c77c              # double 0.53143479076810207
	.quad	0x3fdabdc9c5103832              # double 0.41783375019520286
	.quad	0x3fead5195849cf18              # double 0.83851306194125907
	.quad	0x3fe116f355b2b3c4              # double 0.53405157792951075
	.quad	0x3fed0f7d21e3c452              # double 0.90814072245678745
	.quad	0x3f84ef7849fec240              # double 0.010222377546456163
	.quad	0x3fe0088a81fec7e3              # double 0.50104260816283064
	.quad	0x3fe4ff03572cb134              # double 0.65612952257428114
	.quad	0x3fe21993af5db5de              # double 0.56562217951949001
	.quad	0x3fc00940e46a8e58              # double 0.12528239396225405
	.quad	0x3fe7ce72d86e02cf              # double 0.74395124694282255
	.quad	0x3fcd101640cd3484              # double 0.22705343402995848
	.quad	0x3fc734de57d794ec              # double 0.18130091942945314
	.quad	0x3fd0bcd75930b7fc              # double 0.26152595243445353
	.quad	0x3fc2eb9c8683492c              # double 0.14781529014596495
	.quad	0x3fd12d6d57d6de94              # double 0.26839765146312655
	.quad	0x3f9e3408cc6c3f20              # double 0.0294953703660773
	.quad	0x3fe8f76ac90f7058              # double 0.78020228643027689
	.quad	0x3fe8ce2d4a735d34              # double 0.7751680807222443
	.quad	0x3fdaa8292b843da4              # double 0.41651372193970304
	.quad	0x3fda77a949831d38              # double 0.41355354479715656
	.quad	0x3fe1f5ea033b8ec0              # double 0.56126881247879368
	.quad	0x3fd8e0585ccca366              # double 0.38869294226110751
	.quad	0x3fc2b5bc67795468              # double 0.1461711411708706
	.quad	0x3fdcb6a534204590              # double 0.4486477860492295
	.quad	0x3fda6d1b6b42c6ce              # double 0.41290936922733301
	.quad	0x3fdbc36285a041a8              # double 0.43380034493841402
	.quad	0x3fbc776cf165ba30              # double 0.1111972894047788
	.quad	0x3fe088f006a60a97              # double 0.51671601580194959
	.quad	0x3fe00b4997565215              # double 0.50137786443753163
	.quad	0x3fe08bfc2b34725e              # double 0.51708801687670891
	.quad	0x3fd0e20d55bfafd4              # double 0.26379712461379978
	.quad	0x3fef567a91372e5c              # double 0.9793064914933427
	.quad	0x3fcb8c75ead1b3c0              # double 0.21522401777056466
	.quad	0x3fe559cf1fc80434              # double 0.66721302230155866
	.quad	0x3fc785806f3a4504              # double 0.18376164847408216
	.quad	0x3fe7a555f21f85f1              # double 0.73893258371043491
	.quad	0x3fd33841a746c586              # double 0.30030862174597706
	.quad	0x3fc4cb6120c45980              # double 0.16245664691878048
	.quad	0x3fe4b69af39e39b6              # double 0.64729068357137609
	.quad	0x3fea4e491d424646              # double 0.82205634798646865
	.quad	0x3fe1adb4e6426b6f              # double 0.55245442364262753
	.quad	0x3fc374d11668e464              # double 0.15200246423936215
	.quad	0x3fcc44fafc935770              # double 0.22085511524954482
	.quad	0x3fd1400c47638490              # double 0.26953417750889574
	.quad	0x3fe753845b1ea310              # double 0.72894494816600464
	.quad	0x3fcacb766d652bf0              # double 0.20933418599665243
	.quad	0x3fcb40540958998c              # double 0.21290064293243594
	.quad	0x3feba3e1cd674b6c              # double 0.86375513189191854
	.quad	0x3feccb3a723261a7              # double 0.89980814270079612
	.quad	0x3fbfb7d33ab2dee8              # double 0.12389869864534442
	.quad	0x3fc75aee8f7c0f28              # double 0.18246252065738955
	.quad	0x3fd435ac948a1384              # double 0.31577600961491492
	.quad	0x3feb091f6b0b842e              # double 0.84486361415122757
	.quad	0x3fdde0e80fd1123e              # double 0.46685220284078699
	.quad	0x3fc92a31483eae78              # double 0.19660011317806769
	.quad	0x3fe1962fc03bf982              # double 0.54958331628567714
	.quad	0x3fe2ecad8c2dd3d5              # double 0.59139134768212875
	.quad	0x3fe53d55590d512e              # double 0.66373698609326026
	.quad	0x3fe87e6c9f49ca53              # double 0.76543265448555997
	.quad	0x3fc14d453cbde648              # double 0.13517060724170649
	.quad	0x3fe64b80ff2771c1              # double 0.69671678385525848
	.quad	0x3fe0e9bef33f2ebe              # double 0.52853343495504368
	.quad	0x3fecd2b694be0659              # double 0.90072182704188741
	.quad	0x3fe16468e0f19af0              # double 0.54350704130487593
	.quad	0x3fcc2c3278651b64              # double 0.22009878996524457
	.quad	0x3fed78b5975084ec              # double 0.92098502687090677
	.quad	0x3fdd52e50ad3f254              # double 0.45818449075139722
	.quad	0x3fd4793431062dfa              # double 0.31989769732965068
	.quad	0x3fd4cfaadaa61b70              # double 0.32517501213481292
	.quad	0x3fb4e123ea767590              # double 0.081560368291738294
	.quad	0x3fe1a58d716925aa              # double 0.55145904684575453
	.quad	0x3fd021eb4ab5e2c2              # double 0.25207025810190598
	.quad	0x3fe96bc74ff75bd6              # double 0.79440656298072088
	.quad	0x3fe222b57d3f3a01              # double 0.56673693144131232
	.quad	0x3fd49eef9cfb985c              # double 0.32220068292952475
	.quad	0x3fb56f967bdbc108              # double 0.083733945120688102
	.quad	0x3fe01fc0255d82ce              # double 0.50387580202012727
	.quad	0x3fea01dd2d0acabc              # double 0.81272753522201623
	.quad	0x3feffd47c4b881f4              # double 0.99966801092165136
	.quad	0x3fe4598698dba01f              # double 0.63592843871174753
	.quad	0x3fc2d0a4308b4720              # double 0.14699222917857302
	.quad	0x3feeeecccbf312bb              # double 0.96665038904082878
	.quad	0x3fc08d312f1c9190              # double 0.12930884170885948
	.quad	0x3fc931e6350d6fb8              # double 0.19683530416921058
	.quad	0x3fe16b7e66cf0cba              # double 0.54437179641572375
	.quad	0x3fb4cc0a4db393c8              # double 0.081238407106481891
	.quad	0x3fe001588cbffb28              # double 0.50016429414958896
	.quad	0x3fe4c8f3f86d0d3f              # double 0.64953039665889623
	.quad	0x3fe219acf87bdbc5              # double 0.56563423664089696
	.quad	0x3fddd53bbba6a6d0              # double 0.46613972974101348
	.quad	0x3fd02d0688a6c3f4              # double 0.2527481398092839
	.quad	0x3fd59075d17eb5b0              # double 0.33694215258114024
	.quad	0x3fd4ee500bc2673e              # double 0.32704545162561149
	.quad	0x3fc0a757694a9c8c              # double 0.13010685578521863
	.quad	0x3fe9cc0d5b52d2ab              # double 0.80615871273638129
	.quad	0x3fddadabd27a61a6              # double 0.46372504763123812
	.quad	0x3fe52be9aa9f69ef              # double 0.66161044430492477
	.quad	0x3fb3b14bc9c715f0              # double 0.076924072992447412
	.quad	0x3fea9aee5ee543ee              # double 0.83141249212542134
	.quad	0x3fd93c855197c28c              # double 0.39431889503524853
	.quad	0x3feb8d27e84c1f4c              # double 0.86098094339920683
	.quad	0x3fde623b9cdd8326              # double 0.47474565810084568
	.quad	0x3fe86cfd9bbd585f              # double 0.76330452363869117
	.quad	0x3fe4b3300e6281e1              # double 0.64687350091486107
	.quad	0x3fdc4c6a7fcc10c6              # double 0.44216406326473778
	.quad	0x3fe071abe801aa79              # double 0.51387591661234844
	.quad	0x3fd338188c524fe4              # double 0.30029882148050846
	.quad	0x3fb7eafadb88ec48              # double 0.093429258916260527
	.quad	0x3fc50e6edb521b1c              # double 0.16450296124477226
	.quad	0x3fdc3d2bd811e6b8              # double 0.44123359776095183
	.quad	0x3fcabf2377285a64              # double 0.20895808523410431
	.quad	0x3feca400ccfd7100              # double 0.89501991307363937
	.quad	0x3fa7596edef2b290              # double 0.045604195323311392
	.quad	0x3fdfafc8ac9415e0              # double 0.49510399678578487
	.quad	0x3fdc4b89a5fd27f4              # double 0.44211045465328813
	.quad	0x3fc422407cc8a084              # double 0.15729528515771929
	.quad	0x3fbbca0ec1871038              # double 0.10855190491480549
	.quad	0x3fccc8b1e620756c              # double 0.22487472283038856
	.quad	0x3f6ec58e00d22300              # double 0.0037563107967496512
	.quad	0x3fc36a3e9c2ce404              # double 0.15167982698201865
	.quad	0x3fe536736966b8d7              # double 0.66289682947333517
	.quad	0x3fe28cbd0aad64a6              # double 0.57967998586095315
	.quad	0x3fa68762a07dac60              # double 0.044001657572913855
	.quad	0x3fea297d3fb9d540              # double 0.81756460615603288
	.quad	0x3fc7665f89af823c              # double 0.1828116819661022
	.quad	0x3fb1242660ea2a90              # double 0.066957853947466228
	.quad	0x3fa34b917e60ee90              # double 0.037685915639000034
	.quad	0x3fc10507d9583b74              # double 0.13296602356464471
	.quad	0x3fe1ed0fccde16f1              # double 0.56018819821539811
	.quad	0x3fb132bf9816bf60              # double 0.067180609351223719
	.quad	0x3fd5cb94c9eb8200              # double 0.34055061072106696
	.quad	0x3fb7fe63e7b5b6c8              # double 0.093725437230854358
	.quad	0x3fdec9fccf193f14              # double 0.4810783407638024
	.quad	0x3fcbda5a1a230b20              # double 0.21760107303824672
	.quad	0x3fde5c6f59736b0a              # double 0.47439178214487809
	.quad	0x3fa33641948752c0              # double 0.037523316746648216
	.quad	0x3fbcf2c75d5687b8              # double 0.11307951000938388
	.quad	0x3fc1346531d7b708              # double 0.13441147741053094
	.quad	0x3fe367a5adb788a2              # double 0.60640224389159791
	.quad	0x3fe9de46edaf169a              # double 0.80838343069690954
	.quad	0x3fef83031ebc02a3              # double 0.98474269869628405
	.quad	0x3fe888aaffe9cc9a              # double 0.76668310149252084
	.quad	0x3fec3fd618d84687              # double 0.8827925191164504
	.quad	0x3fe123e2233921b2              # double 0.53563029174352139
	.quad	0x3fd3dd4dab2a8a5c              # double 0.31038228717276239
	.quad	0x3fecbd38d892f032              # double 0.89809839534382818
	.quad	0x3fd3e563dd954d44              # double 0.3108758605860269
	.quad	0x3fc1b58c59a31358              # double 0.1383529126816494
	.quad	0x3fcce7452e5ac858              # double 0.22580780757340579
	.quad	0x3fef9bf7fb4c928a              # double 0.9877891452966463
	.quad	0x3fd0056139e17072              # double 0.25032835628895278
	.quad	0x3fe8d0bd83bdcbff              # double 0.77548099261036885
	.quad	0x3fc1b4e69a120684              # double 0.13833315394372303
	.quad	0x3fcfe86cae4735a0              # double 0.24928053388286475
	.quad	0x3fe8b9d7887b9d1a              # double 0.77268578202066185
	.quad	0x3fe286df56909230              # double 0.57896391780065493
	.quad	0x3fd084598a01ca3e              # double 0.25807798840756735
	.quad	0x3fdb8c899b385af4              # double 0.43045272978035531
	.quad	0x3feb571016b871a1              # double 0.85437778890223026
	.quad	0x3fc04a4526537f70              # double 0.12726654406923954
	.quad	0x3fd7a0777133e436              # double 0.36916910223914401
	.quad	0x3fc839d522cbb288              # double 0.18926490973480647
	.quad	0x3fe4366a6b7e3ad5              # double 0.63164254183524327
	.quad	0x3fe8808aab93907d              # double 0.76569112311382492
	.quad	0x3fe1cb9dfa02e4ab              # double 0.55610560255367625
	.quad	0x3fb7194c1feb70e0              # double 0.09022975711144765
	.quad	0x3fe6bea54ff46ce0              # double 0.71077218643349838
	.quad	0x3fe95674ce631a9c              # double 0.79180374441132839
	.quad	0x3fd155428c6d046a              # double 0.27082885468923357
	.quad	0x3fe18c347c201f8b              # double 0.54836487048395222
	.quad	0x3f9cc1da0d5295e0              # double 0.028083235800883233
	.quad	0x3fd3c5fefbf793c4              # double 0.30895971876298867
	.quad	0x3fe33bbc7e9e6849              # double 0.60104202966909626
	.quad	0x3fccb2faf64b8dc8              # double 0.22421204591874599
	.quad	0x3fdc0c7098adc480              # double 0.43825926694905348
	.quad	0x3fe73d1fac5b0223              # double 0.72621139205154284
	.quad	0x3fc1b5e2bac9c2f0              # double 0.1383632099200649
	.quad	0x3fe72baaed9d7b46              # double 0.72408052834712389
	.quad	0x3fc506b78db8d9a4              # double 0.16426748676321978
	.quad	0x3fee7810d88ba051              # double 0.95215647024179806
	.quad	0x3fdce7fc71658b5a              # double 0.45165930818455069
	.quad	0x3fe76a3edee6a329              # double 0.73171943221413926
	.quad	0x3fe0565ba28c44c6              # double 0.51054174182549938
	.quad	0x3fed439f9e379f39              # double 0.91450482274829092
	.quad	0x3fec24794c4e7e97              # double 0.87945237067829651
	.quad	0x3fd0293de9a4e194              # double 0.25251720253756926
	.quad	0x3f80d77c9e825200              # double 0.0082235084412696224
	.quad	0x3fed0af3bbde21bf              # double 0.90758692448530798
	.quad	0x3fc17ffb01324478              # double 0.1367181545106495
	.quad	0x3fe5a7740ff50039              # double 0.67669108502014474
	.quad	0x3fefedd0ac58f3fe              # double 0.99778016721359086
	.quad	0x3fd66b1eeae06d80              # double 0.35028813302206885
	.quad	0x3fcf3e447b323810              # double 0.24408775344312561
	.quad	0x3fd1a1c4a27b2cba              # double 0.27549854152011799
	.quad	0x3f90d8a0a23dc5e0              # double 0.016451368238852626
	.quad	0x3fecb903caf6863d              # double 0.89758481637199561
	.quad	0x3fc46b08d04e7f14              # double 0.15951643153402328
	.quad	0x3fe9463013a76699              # double 0.78981784666685251
	.quad	0x3fec527033362adb              # double 0.8850632667757411
	.quad	0x3fcb73284d42a164              # double 0.2144518258330762
	.quad	0x3fa4d560cb085510              # double 0.04069044569420488
	.quad	0x3fbdf68a0f1f9250              # double 0.1170431410715278
	.quad	0x3fec5826a036de90              # double 0.88576060573446291
	.quad	0x3fdb72fcfe72bf34              # double 0.42889332626781429
	.quad	0x3fe3d7ad1697c99f              # double 0.62007765209846244
	.quad	0x3fe111ecf2e05719              # double 0.53343818127425202
	.quad	0x3fe8abba7067c0c0              # double 0.77096292452008441
	.quad	0x3fee7d9ded7d07da              # double 0.95283409485295611
	.quad	0x3fed8c5836e2ed22              # double 0.92338190765386607
	.quad	0x3fcbcc9fd3fc554c              # double 0.2171821389280616
	.quad	0x3fe59d9e80a7fc98              # double 0.67549061897433926
	.quad	0x3fea8c91b7c3af17              # double 0.82965932742578985
	.quad	0x3fd9956e0b92349e              # double 0.39974547510139213
	.quad	0x3fdd36a62e5cf5d4              # double 0.45646051910065677
	.quad	0x3fd190185a73264e              # double 0.27441986878384206
	.quad	0x3fdd4aa58daab95c              # double 0.45768107256562529
	.quad	0x3feb58c7025f2f48              # double 0.85458708251233251
	.quad	0x3fd895aaf4c82e64              # double 0.38413499741066048
	.quad	0x3fe516739a36f35e              # double 0.65899067039536496
	.quad	0x3fe665e0c2dbc3fc              # double 0.69993627603810138
	.quad	0x3fdd5f8a00447028              # double 0.45895624185664241
	.quad	0x3fec3c1c45197b26              # double 0.88233769889834401
	.quad	0x3fe278555d26f147              # double 0.57718914216779005
	.quad	0x3fe4d4a21d13e58d              # double 0.65095620803110565
	.quad	0x3fe608a80cd62022              # double 0.68855669505228811
	.quad	0x3fd79ebc0a26f2aa              # double 0.3690633868352885
	.quad	0x3fca5bfd220a2e90              # double 0.20593227541063586
	.quad	0x3f9b3cac024383e0              # double 0.026598632467429328
	.quad	0x3fe8588232847124              # double 0.76080427042646592
	.quad	0x3fe9a87939f756b2              # double 0.80181561776654164
	.quad	0x3fc2b2d3bdbc3b64              # double 0.14608237041872052
	.quad	0x3fd00ab8f7458ac0              # double 0.25065445087072291
	.quad	0x3fd97927e76a2e4c              # double 0.39801976775263337
	.quad	0x3fdc6d2177094b6e              # double 0.44416081070556046
	.quad	0x3fd89991c3bd3d5a              # double 0.38437313189657163
	.quad	0x3fc221f11181d1b0              # double 0.14166081766928817
	.quad	0x3fcf54c97aca5750              # double 0.24477499480843301
	.quad	0x3fbd452214724f88              # double 0.11433613776381268
	.quad	0x3fed82f9dde0b6e7              # double 0.92223828635698346
	.quad	0x3fe49013bf70c2fa              # double 0.64258754149167818
	.quad	0x3fe3d2065308d1db              # double 0.61938778131166872
	.quad	0x3fd1f9fd31071914              # double 0.28088311946739108
	.quad	0x3fd023715270230c              # double 0.25216324854459127
	.quad	0x3fd11c124f224d9c              # double 0.2673383496087014
	.quad	0x3fe2820b9cb913ff              # double 0.578374677753004
	.quad	0x3fccf2e4bbc17d60              # double 0.2261625210548841
	.quad	0x3fe1948d9244aa76              # double 0.54938391273510834
	.quad	0x3fd7d29e69bff5d4              # double 0.37223015143521576
	.quad	0x3fc8520f01411864              # double 0.19000423012966217
	.quad	0x3fd662d76190cc52              # double 0.34978279617206909
	.quad	0x3fe99e1f51b12562              # double 0.80055204349006837
	.quad	0x3f9e81f61ac21360              # double 0.029792638190446197
	.quad	0x3fe8ea08dd1a338d              # double 0.77856867965748366
	.quad	0x3fec09e1e3b9205a              # double 0.87620634534051622
	.quad	0x3fe32f9460d2aaaf              # double 0.59955805693365061
	.quad	0x3fcad511d0f330cc              # double 0.20962736799845627
	.quad	0x3feb0a2c94a98ed0              # double 0.84499196086513884
	.quad	0x3fecbd8aee9e7676              # double 0.89813753705284571
	.quad	0x3fe3ba3ebcf009ea              # double 0.61648499395260825
	.quad	0x3feb456e8d11aae6              # double 0.85222556641141689
	.quad	0x3fea59dee4e12c70              # double 0.82347054198306857
	.quad	0x3fe9341c815ed20a              # double 0.78761124866156362
	.quad	0x3fc27dfa6aad3abc              # double 0.14446954926321165
	.quad	0x3fd04d946fc26724              # double 0.25473509706499642
	.quad	0x3fea68a4b71a7223              # double 0.82527385485042648
	.quad	0x3fd9f25840628320              # double 0.40541654861049103
	.quad	0x3fb802b2cb3092b8              # double 0.093791174513692677
	.quad	0x3fdfb413842425c6              # double 0.49536598114408681
	.quad	0x3feefcee6acfc676              # double 0.96837540494580199
	.quad	0x3fe935f315169453              # double 0.78783563727177819
	.quad	0x3fd981d9f80f97de              # double 0.39855050301264139
	.quad	0x3fe55a44a0626daa              # double 0.66726905179114238
	.quad	0x3fed86a29df65a5e              # double 0.9226849637223713
	.quad	0x3fe1cc164fed5f07              # double 0.55616298304355005
	.quad	0x3fe558bb6ae88237              # double 0.6670815551806929
	.quad	0x3fe3b3be87ed3f64              # double 0.61569143818085736
	.quad	0x3fe583c9f533593d              # double 0.67233751192797053
	.quad	0x3fdcaba5f2959852              # double 0.44797657670858826
	.quad	0x3fede5d82ebb7d97              # double 0.93430718543452229
	.quad	0x3fd6257f94fd63d2              # double 0.34603871869836411
	.quad	0x3fdb04dba1db35be              # double 0.42217150503423884
	.quad	0x3fb9341617b09c30              # double 0.098451023849165819
	.quad	0x3fd72605774022a8              # double 0.36169563909110503
	.quad	0x3fc14f42ab575650              # double 0.13523133627193085
	.quad	0x3fef0fea72f0fe2b              # double 0.97069284867752025
	.quad	0x3fed387498731a1f              # double 0.91314153456989178
	.quad	0x3fee27dfe1d1e565              # double 0.9423674974961328
	.quad	0x3fe921c36cd68b49              # double 0.78537150628503938
	.quad	0x3fdc6da0075fbbb0              # double 0.44419098587143946
	.quad	0x3fd1b7aff1403b3a              # double 0.27683638152750556
	.quad	0x3fd05e550a553bd6              # double 0.2557575798900279
	.quad	0x3fef6b0ba3392640              # double 0.98181707267321627
	.quad	0x3fb60f378e0d70e0              # double 0.086169693165575989
	.quad	0x3fb4636de2bf2510              # double 0.079642169817038643
	.quad	0x3fdec38a0d595440              # double 0.48068476966483686
	.quad	0x3fd97c8bfa7c1c1e              # double 0.39822673283964771
	.quad	0x3fe8b67b32137f55              # double 0.77227554111957863
	.quad	0x3fd32a8dc41c9fac              # double 0.29947227622551043
	.quad	0x3fd993e7dca74ed4              # double 0.39965244816015155
	.quad	0x3fdb9bab3476b076              # double 0.43137626765633941
	.quad	0x3fe9143b8e22fec9              # double 0.78371980439256916
	.quad	0x3fdd88e0a1f7f660              # double 0.46147933785673523
	.quad	0x3fe626270b2bcc33              # double 0.69215728933193643
	.quad	0x3fe4d55a034ed948              # double 0.65104389806837393
	.quad	0x3fb3c113af5a20c8              # double 0.077164869604646857
	.quad	0x3fec7da0dc05056c              # double 0.89033549282627921
	.quad	0x3fdb076d3e5eb6b0              # double 0.42232829180543785
	.quad	0x3fbc7c31c98ac280              # double 0.11127005739650464
	.quad	0x3fe47699a2124725              # double 0.63947755484170854
	.quad	0x3fc9828a5dba3d7c              # double 0.19929627968347663
	.quad	0x3fc46d528f6e6514              # double 0.15958625796773929
	.quad	0x3fdf1afcb02e24d6              # double 0.48602215962507722
	.quad	0x3fe96e4330586abd              # double 0.79470977251488473
	.quad	0x3fd2a7bd6e953bf0              # double 0.29148803519359401
	.quad	0x3fe80206f2cb9770              # double 0.75024745388939884
	.quad	0x3fcc927bfca8da0c              # double 0.22322034680264868
	.quad	0x3fe59d990479a811              # double 0.67548800348345328
	.quad	0x3fcaba4d2fa141dc              # double 0.20881047082595117
	.quad	0x3feb9998cd2c32b9              # double 0.86249961922438623
	.quad	0x3fe3344bccbe0b65              # double 0.60013380039923148
	.quad	0x3fe34af36a6ddde7              # double 0.6028992727942154
	.quad	0x3fd008c6f035e0f4              # double 0.25053571184208967
	.quad	0x3fe5f1692a76428f              # double 0.6857190923056623
	.quad	0x3fca08cf37663308              # double 0.20339384274520733
	.quad	0x3fe4610f61ba57cd              # double 0.63684815490227609
	.quad	0x3febbc775e10ad3a              # double 0.86675613758180892
	.quad	0x3fd1b6185f9dd4e6              # double 0.27673920953323117
	.quad	0x3fcb35a474d6c998              # double 0.2125745363715168
	.quad	0x3fecd67b3653aa8d              # double 0.90118179903704887
	.quad	0x3fe1ecac33839125              # double 0.56014070569338925
	.quad	0x3fe93b390a7271bb              # double 0.78847934761466065
	.quad	0x3fe8c33779d07eef              # double 0.77383016387827108
	.quad	0x3fdc64af34aa3112              # double 0.44364528792427038
	.quad	0x3fce8ce8c996fcfc              # double 0.2386752113652405
	.quad	0x3fe1485f89e7b1a6              # double 0.54008461889821002
	.quad	0x3fe4677e1ef6acef              # double 0.63763338134358871
	.quad	0x3fe8322d604eb544              # double 0.75612515268373003
	.quad	0x3fe3344fbb2b06d9              # double 0.60013567501320175
	.quad	0x3fe884522f749e72              # double 0.76615247028980904
	.quad	0x3fbf479cedc59ad8              # double 0.12218647770860558
	.quad	0x3f502e49be583000              # double 9.875984336558119E-4
	.quad	0x3feec1afad71b5a4              # double 0.96114333988014211
	.quad	0x3fc50284c28bd28c              # double 0.16413936137509599
	.quad	0x3fd0e11558c29958              # double 0.26373799961074473
	.quad	0x3fd970d3d1087892              # double 0.39751143849742576
	.quad	0x3fea63ce6fb0c2a6              # double 0.82468339743180219
	.quad	0x3fd66d3cf2593172              # double 0.35041736285054192
	.quad	0x3fe56cacba95ba52              # double 0.66951595728262192
	.quad	0x3fe139181e6aa1c7              # double 0.53821950855950085
	.quad	0x3fea324b3eb4c7c7              # double 0.81863939521121487
	.quad	0x3fd12d9c60514fa2              # double 0.26840886503236494
	.quad	0x3fde34b00c48b6c6              # double 0.47196580123532461
	.quad	0x3fdb9812eaf7d196              # double 0.43115685411546545
	.quad	0x3fe8539cec8f7e44              # double 0.76020666316248552
	.quad	0x3feb9ef149898fe6              # double 0.86315216410411888
	.quad	0x3fe2a65c59a06c06              # double 0.5828077078361964
	.quad	0x3fe950adf6d1ad34              # double 0.79109857756467372
	.quad	0x3fe64402772f5a96              # double 0.69580195692363378
	.quad	0x3fe3fbcd38efd4e0              # double 0.62448750610806414
	.quad	0x3fe019427538f174              # double 0.50308344740874
	.quad	0x3fd9a1d3231653ea              # double 0.40050199915395857
	.quad	0x3fca871519e2d270              # double 0.2072473884960746
	.quad	0x3fdf8155f328e1ea              # double 0.49226902719558885
	.quad	0x3febb2eada3fbf77              # double 0.86559050204048915
	.quad	0x3fe6eff7e9cce0ff              # double 0.71679301895258607
	.quad	0x3fe05296d9549543              # double 0.51008169600815056
	.quad	0x3fe22ae72f485311              # double 0.56773719057909677
	.quad	0x3f7fa791b4f75480              # double 0.007728165786336949
	.quad	0x3fc86d24ce78b7bc              # double 0.19083080369585825
	.quad	0x3fe769b51c17b8b4              # double 0.73165374266479555
	.quad	0x3fc79012dab69154              # double 0.18408427886346124
	.quad	0x3fa1ed52731d9740              # double 0.035013748695560398
	.quad	0x3fd95aa6637b53be              # double 0.39615783419622719
	.quad	0x3fe7252b9fe0f2ad              # double 0.72328740335759323
	.quad	0x3fec2acf20ba34ed              # double 0.88022571937622518
	.quad	0x3fad78b86b6b3e80              # double 0.05756164847627776
	.quad	0x3fd1bb898aa952da              # double 0.27707136670259802
	.quad	0x3fd5c2992ab234e2              # double 0.34000233811896241
	.quad	0x3fe56f96069ef7bd              # double 0.66987134259374381
	.quad	0x3fb48930d141f430              # double 0.080218363846100926
	.quad	0x3feb8768b5d367b9              # double 0.86027942192890017
	.quad	0x3fe57c6a690f62ec              # double 0.67143745917846109
	.quad	0x3fd4e2858020d884              # double 0.32632577431230225
	.quad	0x3fef2ad206fe06b2              # double 0.97397710195237708
	.quad	0x3fbd047ceaa956a0              # double 0.11334973076858512
	.quad	0x3fb9e04727e0a300              # double 0.10107845996448006
	.quad	0x3fecbd2663dcb831              # double 0.8980895948823272
	.quad	0x3fe9ca2f5555aa53              # double 0.80593077341957053
	.quad	0x3fe03d1c1a28e39c              # double 0.50745968922921092
	.quad	0x3fd9223345f0b9fa              # double 0.39271241979704963
	.quad	0x3fdb1c201ff67d3e              # double 0.42359164353725365
	.quad	0x3fd47006ab836fb8              # double 0.31933752774579771
	.quad	0x3fe98a773e4e6690              # double 0.79815256280126512
	.quad	0x3fcb0ecca20196dc              # double 0.21138914022883781
	.quad	0x3fe183111d73076e              # double 0.54724937202284507
	.quad	0x3fd57c8442e9db8a              # double 0.33572489294550023
	.quad	0x3fdb0f3130bdfe90              # double 0.4228022552488051
	.quad	0x3fd7876a577631c0              # double 0.36764009991818725
	.quad	0x3fe2001230a461fc              # double 0.56250867367185675
	.quad	0x3fddae5f5dffb60a              # double 0.46376785449578561
	.quad	0x3fed99c7117a30bd              # double 0.92502168096100201
	.quad	0x3fe5bc1ff1a5d14d              # double 0.67921445080586695
	.quad	0x3fe40cfcbf3dc2e3              # double 0.62658536292846312
	.quad	0x3fc156c97df123c8              # double 0.13546103143224131
	.quad	0x3fe8d2cf097e83cb              # double 0.77573348860107083
	.quad	0x3fe33b9f579ebe1d              # double 0.60102812875078693
	.quad	0x3fe37daed1f3f0c9              # double 0.60909214979576476
	.quad	0x3fdd726fddd571f4              # double 0.46010967887357812
	.quad	0x3fe0102ee374972c              # double 0.50197548317803387
	.quad	0x3fbe2f11c5b6f8b8              # double 0.11790572239894714
	.quad	0x3fd77f407d30e0b0              # double 0.36714184022595031
	.quad	0x3fcf7a5aa2efbe94              # double 0.24592144924053072
	.quad	0x3fe92631fcd050d9              # double 0.78591250779802657
	.quad	0x3fed52b8fa40bf45              # double 0.91634796979449418
	.quad	0x3febc2a81ac04bc9              # double 0.86751179909548981
	.quad	0x3fb02729f10c4aa0              # double 0.063097592687237469
	.quad	0x3fdb74cfe468706c              # double 0.42900464349236844
	.quad	0x3fcbd162998f46c0              # double 0.21732742784529613
	.quad	0x3fdeb0f954057964              # double 0.47955163197720752
	.quad	0x3fcf903b74b2b9e8              # double 0.24658911893989388
	.quad	0x3fe823a66fb6c745              # double 0.75435182398926115
	.quad	0x3fd425b1004d8c50              # double 0.31480050115186931
	.quad	0x3fc462859d349afc              # double 0.15925665069627104
	.quad	0x3f8de33b6bc25bc0              # double 0.014593567110109507
	.quad	0x3fe4081ee555a7cf              # double 0.62599129478371107
	.quad	0x3fd86745e5209154              # double 0.38130328536705815
	.quad	0x3fe6ff9670b5f107              # double 0.71869966520128592
	.quad	0x3fc77d6a75f7a194              # double 0.18351488838312646
	.quad	0x3fedb7b3cfd503b8              # double 0.92867460815624892
	.quad	0x3fe3d9fa661e4cc3              # double 0.62035865731231643
	.quad	0x3fee143441edea5c              # double 0.93996632458522411
	.quad	0x3fc88c6f6a0b448c              # double 0.19178574254923253
	.quad	0x3fe306f8f301b42c              # double 0.59460113012540239
	.quad	0x3fe8a743c23f834f              # double 0.7704180520923759
	.quad	0x3fe193f6be966dc4              # double 0.54931199287550969
	.quad	0x3fe9de1bb1d3c023              # double 0.80836281520715081
	.quad	0x3fb17f0b2e90f268              # double 0.068344782704068074
	.quad	0x3fe310da8aba62b6              # double 0.59580733390165252
	.quad	0x3fc6b96aca927edc              # double 0.17753348246787126
	.quad	0x3fdcf0109f82997a              # double 0.45215240075267327
	.quad	0x3fd5ce0b7bbd3c06              # double 0.34070098003297777
	.quad	0x3fc26f7b44798cec              # double 0.14402714580055631
	.quad	0x3fec6039172c6d8b              # double 0.88674597288211154
	.quad	0x3fb541c16a388c90              # double 0.083034599716983459
	.quad	0x3fd39a9ea17ecd6a              # double 0.306312234602237
	.quad	0x3fe95ae135c15807              # double 0.79234371661255032
	.quad	0x3fb706a3637f7680              # double 0.089945041457633934
	.quad	0x3fc44268f741d6f8              # double 0.158276673060463
	.quad	0x3fd86c8c0d60557a              # double 0.38162518793372835
	.quad	0x3fe8f75c571fe9cb              # double 0.78019539848838215
	.quad	0x3fe0d502242ba66d              # double 0.52600199760963806
	.quad	0x3fb382b709a05f90              # double 0.076213302469453347
	.quad	0x3fda63ee016800f4              # double 0.41234922540026209
	.quad	0x3fe03acc12c5d767              # double 0.50717738787237188
	.quad	0x3fea47c595492a75              # double 0.82126120717414486
	.quad	0x3fecf29ab9e28fcf              # double 0.9046147947851696
	.quad	0x3fcff9a068f2ad14              # double 0.24980549930965223
	.quad	0x3fcd923432edd474              # double 0.23102428900498106
	.quad	0x3fe7af5fcc86e03a              # double 0.74015798517849096
	.quad	0x3fe84cacc5438e6f              # double 0.7593597271738427
	.quad	0x3fed9dccba8c55aa              # double 0.92551266131583998
	.quad	0x3fe89b1a7ac62c75              # double 0.76893352488822464
	.quad	0x3fc4b9848a914358              # double 0.16191155210483532
	.quad	0x3feb8cb54ca00bc1              # double 0.86092629400115339
	.quad	0x3fdc98cebd83fda6              # double 0.44682663447744131
	.quad	0x3fda4972462f34f2              # double 0.4107328114885852
	.quad	0x3fdcc07c50a47120              # double 0.44924838900785069
	.quad	0x3feb7c3737d63cce              # double 0.85891304879796748
	.quad	0x3fc783087d3d8940              # double 0.18368631472828589
	.quad	0x3fe4e9d92da3f064              # double 0.6535459414876752
	.quad	0x3fc849f09138d974              # double 0.18975646105691235
	.quad	0x3fb368a1dd76b510              # double 0.075815311973844723
	.quad	0x3fc5b1eddb5c90d8              # double 0.16949246607794666
	.quad	0x3fe450b7613f7648              # double 0.63485306733827773
	.quad	0x3fc101e823b97fa8              # double 0.13287069076886593
	.quad	0x3fefa8c3b0c074d9              # double 0.98935112497170074
	.quad	0x3fe0d6a9abf1e22f              # double 0.52620395262699116
	.quad	0x3fcae69926117990              # double 0.21016229971696676
	.quad	0x3fe376c4eae1118d              # double 0.60824819445456202
	.quad	0x3fb53591a6c68690              # double 0.082848647324249791
	.quad	0x3fd84c18d18283e8              # double 0.37964458904212828
	.quad	0x3fe40575ae185c28              # double 0.62566646578750795
	.quad	0x3fe99073e81c9568              # double 0.79888339361484118
	.quad	0x3fe20b6be7531a66              # double 0.56389422588911198
	.quad	0x3fe71b121b5f6779              # double 0.72205453249192353
	.quad	0x3fba764ebf1b5330              # double 0.10336773076717232
	.quad	0x3fdcd467f9cbf420              # double 0.45046424287994746
	.quad	0x3fdd7d59e7e7d10e              # double 0.46077582976364873
	.quad	0x3fe021bcc3fc3647              # double 0.50411833074913026
	.quad	0x3fb3fca4002346b8              # double 0.078073740037576722
	.quad	0x3fd70c16f7b640ce              # double 0.36011289778344924
	.quad	0x3fddb59db55a817a              # double 0.46420996389681302
	.quad	0x3fb876919efba310              # double 0.095559216798971613
	.quad	0x3fad4fec7d685620              # double 0.057250395115414188
	.quad	0x3fcbc27fec4d1378              # double 0.21687315977228727
	.quad	0x3fc4ea8dd3ce6f94              # double 0.16340802042111291
	.quad	0x3fd84c27725693de              # double 0.37964807668532596
	.quad	0x3fec6fc7ad9f89d0              # double 0.88864501868038737
	.quad	0x3fd3de0c2e50f6ac              # double 0.31042770884583137
	.quad	0x3feaba2174470836              # double 0.83522103033488437
	.quad	0x3fe854ae37e1df6f              # double 0.76033698000445138
	.quad	0x3fea9379bbdf66b1              # double 0.8305023831737427
	.quad	0x3fd8b39e309dfb3c              # double 0.38596300838246456
	.quad	0x3fcd1ac0ecf7f924              # double 0.22737895556196819
	.quad	0x3fdb42b45e9077b6              # double 0.42594632372663044
	.quad	0x3fdbc178890e97f2              # double 0.43368352303002589
	.quad	0x3fe83c3207eb9756              # double 0.75734807536057747
	.quad	0x3fe9a44fe1f677f6              # double 0.80130762227395169
	.quad	0x3fd8f77a6e3200e6              # double 0.39010487328779531
	.quad	0x3fe88eed20d71d99              # double 0.76744705595131102
	.quad	0x3fd13eb319358ea2              # double 0.26945188009106336
	.quad	0x3fb9ddb062dc9a18              # double 0.10103895581833233
	.quad	0x3fef718c09e19a51              # double 0.98261072091993117
	.quad	0x3fe7c82fd70c1837              # double 0.74318687440314235
	.quad	0x3fe00e8d48fc676c              # double 0.50177635436123813
	.quad	0x3fd50d09dcf1f94c              # double 0.32892080856972394
	.quad	0x3fdcfc1259e4e45a              # double 0.45288523462983721
	.quad	0x3fb37fc66ee63288              # double 0.076168443751337134
	.quad	0x3fe0e99d7641afc2              # double 0.52851746651639808
	.quad	0x3feadc1fccd038a3              # double 0.83937063219652364
	.quad	0x3fdbd4614550280c              # double 0.4348376442800379
	.quad	0x3fef9ba771da25a6              # double 0.98775074230905058
	.quad	0x3fecda567b0a621f              # double 0.90165256530150717
	.quad	0x3fe42388dcf43142              # double 0.6293377223496821
	.quad	0x3fb81bda335949e0              # double 0.094174993072818846
	.quad	0x3fe7e0298f13d9e5              # double 0.7461135668261788
	.quad	0x3fd9f7e981f5b658              # double 0.40575635615718886
	.quad	0x3fdfbdea058eeaa8              # double 0.4959664396553003
	.quad	0x3fe6fe10aaa1ef6e              # double 0.7185138065974408
	.quad	0x3fe7840dbc42004f              # double 0.73486983079056667
	.quad	0x3fc825586b98642c              # double 0.18863969091106136
	.quad	0x3fed81f92bd6b6b7              # double 0.92211588442088199
	.quad	0x3feccc8f51e183a8              # double 0.89997068397871249
	.quad	0x3fed967ac96c6959              # double 0.92461909618877336
	.quad	0x3fed43f6376153eb              # double 0.91454611603205416
	.quad	0x3fc44681df6fd928              # double 0.15840171251301993
	.quad	0x3fe144c343510527              # double 0.53964388988257361
	.quad	0x3fe79cd0bfd9a6c6              # double 0.73789250822775254
	.quad	0x3fe0c041f2bc46e2              # double 0.52346894654530396
	.quad	0x3fe04e6802a21f36              # double 0.50957108034433563
	.quad	0x3fa55c484a53b740              # double 0.041719683716890277
	.quad	0x3fcfa32a1dbeab94              # double 0.24716688587554059
	.quad	0x3fc1ff6729a4bfa8              # double 0.14060678037048757
	.quad	0x3fe5b2707bde30b4              # double 0.67803215210871892
	.quad	0x3fb8904e07539f88              # double 0.095951916493161815
	.quad	0x3fc828436a37d574              # double 0.18872873960905745
	.quad	0x3fe447f837f6a2b2              # double 0.63378535204272723
	.quad	0x3fd9bd01da39d642              # double 0.40216108618855995
	.quad	0x3fd6104c425c2754              # double 0.34474474411455458
	.quad	0x3fd682b61c3f2c68              # double 0.35172798880075229
	.quad	0x3fe733a4f66b2e6f              # double 0.72505424622199921
	.quad	0x3fe65350cae3f51f              # double 0.69767036082308553
	.quad	0x3feaa4b83cfb6b29              # double 0.83260738287512936
	.quad	0x3fd51298f7b64218              # double 0.32926010313625076
	.quad	0x3fe9563356e9fc10              # double 0.79177252746001336
	.quad	0x3fca7b0fc8d2397c              # double 0.20688054376337195
	.quad	0x3fe3e3a637bf7de2              # double 0.62153921974453064
	.quad	0x3fad4c2c4b47ca20              # double 0.057221779050355304
	.quad	0x3fd4f7e7e8f17738              # double 0.32763097523080686
	.quad	0x3feb032103397654              # double 0.84413195256974882
	.quad	0x3fef7b429355870d              # double 0.98379639412107311
	.quad	0x3fe1db4e77ce74f6              # double 0.5580208148927841
	.quad	0x3fed29cfe8abbcaa              # double 0.91135402148747358
	.quad	0x3fc3839d1cb4c550              # double 0.1524540319601706
	.quad	0x3fb43404e3eea9e8              # double 0.078918748519448578
	.quad	0x3fe7d4edff8e0d61              # double 0.74474239266457343
	.quad	0x3fd97450e7b9fd72              # double 0.39772436742347062
	.quad	0x3fd51e80da8fcbc4              # double 0.32998677581707292
	.quad	0x3fe68771696cc335              # double 0.70403357115546916
	.quad	0x3fe2505fdd7e6586              # double 0.57231133709426341
	.quad	0x3fef5a76c4733770              # double 0.97979296082642797
	.quad	0x3fdf3b7cb306866a              # double 0.48800580485303746
	.quad	0x3fb6c25fa8017830              # double 0.088903406636263282
	.quad	0x3fc4c9b71b78f218              # double 0.16240586129596646
	.quad	0x3fa98bf16d8c1190              # double 0.04989580595250509
	.quad	0x3fec0e3314ea33e2              # double 0.87673334202702002
	.quad	0x3fd468b7f1d7f99a              # double 0.31889151208442856
	.quad	0x3fe0655129548226              # double 0.51236780235564505
	.quad	0x3fea0e6a396f99d1              # double 0.81425963609654606
	.quad	0x3fe04608e9923eb8              # double 0.50854917163265778
	.quad	0x3fe741557c588a6e              # double 0.72672533308316445
	.quad	0x3fc29ce0db749450              # double 0.14541254726023789
	.quad	0x3fb4396872b89178              # double 0.079000976570176351
	.quad	0x3fd5355d3d8d9974              # double 0.33138209353491921
	.quad	0x3fddf47fc03c7b0c              # double 0.46804803631850755
	.quad	0x3f94bb721a4754c0              # double 0.020246298650665961
	.quad	0x3fe1bf0065bad310              # double 0.55456561917398695
	.quad	0x3f9acc28dedee640              # double 0.026169432261417436
	.quad	0x3fc4d21c4e8e3258              # double 0.16266206584659204
	.quad	0x3fe7068a70e794c9              # double 0.71954843570406368
	.quad	0x3fecb006f2268350              # double 0.89648768706329385
	.quad	0x3fe9d5de35ff3055              # double 0.80735693498855687
	.quad	0x3fba1456c564aec0              # double 0.10187284773990779
	.quad	0x3feb06549cb76a75              # double 0.84452276810345828
	.quad	0x3fe72380802feaf5              # double 0.72308373486097699
	.quad	0x3fedce2a15ca36dd              # double 0.93141655212249541
	.quad	0x3fe557ffdf98d206              # double 0.66699212714462486
	.quad	0x3fb031dcd0478bc8              # double 0.063260842179757693
	.quad	0x3fe4d48a39a6936c              # double 0.65094481716060448
	.quad	0x3fda0b93dbc5f0fa              # double 0.40695663892962808
	.quad	0x3fed9e3f7de6ff7a              # double 0.92556738462734178
	.quad	0x3fecdf2330a7e55b              # double 0.90223845961660787
	.quad	0x3fe152810875e79d              # double 0.54132129337743928
	.quad	0x3fd208e6d30bc9c8              # double 0.28179331407514185
	.quad	0x3fd036537162864a              # double 0.25331579277744665
	.quad	0x3f962b19e6cfa9a0              # double 0.021648792946430739
	.quad	0x3fa20f372d28f990              # double 0.035272335303022762
	.quad	0x3fda42d18896b1de              # double 0.41032827700362684
	.quad	0x3fd107f53fd41e22              # double 0.2661107180906318
	.quad	0x3f6bc8ae9c369c00              # double 0.0033915911059980708
	.quad	0x3fcc5eece9832f9c              # double 0.22164689447378982
	.quad	0x3fc5e06c13847ef8              # double 0.17091132119184471
	.quad	0x3fe0bc836dced1e5              # double 0.52301188895085871
	.quad	0x3fcfbc81be2f2060              # double 0.24794027124721918
	.quad	0x3fe938aa26bd230f              # double 0.78816707197356262
	.quad	0x3fe4af2c4baec551              # double 0.64638342649247182
	.quad	0x3fc35e7fa5289044              # double 0.15132136883142
	.quad	0x3fe418ae83a9597f              # double 0.62801290240422236
	.quad	0x3fec6d16bc6a3084              # double 0.88831650542989892
	.quad	0x3fe13c49d3d59ecc              # double 0.53860942243496757
	.quad	0x3feae1bc549cd017              # double 0.84005562330139838
	.quad	0x3fe2eff1d4c6505a              # double 0.59179011876632193
	.quad	0x3fe5318586dc789f              # double 0.66229511585312995
	.quad	0x3fe57d96bf5e12a2              # double 0.67158067108592356
	.quad	0x3f7a04cc7bcafe80              # double 0.0063522327079109653
	.quad	0x3fefab8cdea784cb              # double 0.98969119536573069
	.quad	0x3fef2a8c9ddd4aa4              # double 0.97394400437254491
	.quad	0x3fda183d87c9132e              # double 0.40772951374337907
	.quad	0x3fd844925223afc8              # double 0.37918527623582721
	.quad	0x3fe04e0c50fee95a              # double 0.50952735728723586
	.quad	0x3fd0503ab631075a              # double 0.2548968104566619
	.quad	0x3fc2b070e2ae94a4              # double 0.14600955074744093
	.quad	0x3fe78163b3d733d9              # double 0.73454461217044831
	.quad	0x3fea896ec4c590ac              # double 0.82927645141582706
	.quad	0x3fa21f37d27c2090              # double 0.035394424861864171
	.quad	0x3fabf2a088f902c0              # double 0.054585472793865275
	.quad	0x3fd246a47b4917be              # double 0.28556167640305918
	.quad	0x3fdadd599340d65e              # double 0.41976012592508549
	.quad	0x3fda2c8ba245a55a              # double 0.40896883818512253
	.quad	0x3fb2c1e0ded630e8              # double 0.073270849612700695
	.quad	0x3fed27d106cc043a              # double 0.91111041381385083
	.quad	0x3feb443f64829692              # double 0.85208100920563568
	.quad	0x3fdc7611236ea2e2              # double 0.44470623455212721
	.quad	0x3f9a048535c40780              # double 0.025407868773079212
	.quad	0x3f9ef03e0027ecc0              # double 0.030213326224821868
	.quad	0x3fe0d92085017770              # double 0.52650476434403792
	.quad	0x3fe1260c37bb1048              # double 0.53589449772744846
	.quad	0x3fe2a45c4fc7659a              # double 0.58256354886832473
	.quad	0x3fe79ec2ba07f9b0              # double 0.73812996229371741
	.quad	0x3fe3192ffeaa596c              # double 0.59682464351025777
	.quad	0x3fd3d331bc1f787c              # double 0.30976527568225953
	.quad	0x3fefa3b5a51a2f68              # double 0.98873407599010665
	.quad	0x3fe493136f33386a              # double 0.64295360296979465
	.quad	0x3fd2bbd1a3d72fc0              # double 0.2927135562902059
	.quad	0x3fd4feac87dfe830              # double 0.3280440642262219
	.quad	0x3fe5092f615e6d50              # double 0.65737122552256189
	.quad	0x3fd3079ab9174678              # double 0.29733913493428288
	.quad	0x3fd477510d0ee576              # double 0.31978250766004324
	.quad	0x3fde5d88d22783e2              # double 0.47445889017950382
	.quad	0x3fb10174e8c38b88              # double 0.066428477122412954
	.quad	0x3fee65c586866995              # double 0.94992328905509515
	.quad	0x3fdbdbbce99d78b6              # double 0.43528673948265906
	.quad	0x3feea97af7836263              # double 0.9581885179750994
	.quad	0x3fe97c38ccd1afc0              # double 0.79641380313614007
	.quad	0x3fe8047d54fe367c              # double 0.75054804420660969
	.quad	0x3fe0321aa2dcfabd              # double 0.50611621674746454
	.quad	0x3fd9c0d3102c6d04              # double 0.4023940713829719
	.quad	0x3fe1f688257ed1d2              # double 0.56134421656912026
	.quad	0x3fd5d314c807e32a              # double 0.341008372633541
	.quad	0x3fb73c8622ec8710              # double 0.090767272497512374
	.quad	0x3fd2e483fce7adfa              # double 0.29519748399499657
	.quad	0x3fdcb87028900b42              # double 0.44875720940779129
	.quad	0x3fc1922f8231f7c4              # double 0.1372737298697172
	.quad	0x3fdb38716128823e              # double 0.42532000053509822
	.quad	0x3fda7bff947f4456              # double 0.41381825925515636
	.quad	0x3f95683c67d1b780              # double 0.020905441128369784
	.quad	0x3fe70f6bf75fba90              # double 0.72063253703329799
	.quad	0x3fdfd918a69e9030              # double 0.4976255061285455
	.quad	0x3fcb311409f8d068              # double 0.21243525015745779
	.quad	0x3fe866b1eecf4f25              # double 0.76253601686992012
	.quad	0x3fd419c8e4d50ef0              # double 0.31407377573871909
	.quad	0x3fefa1751370ed38              # double 0.98845914647191701
	.quad	0x3fec3de6b84654fc              # double 0.88255630484732661
	.quad	0x3fe6662c950bdba1              # double 0.69997243033036594
	.quad	0x3feb250578431eb3              # double 0.84826920975407061
	.quad	0x3fd21b4b35b91ebc              # double 0.28291588064574191
	.quad	0x3f9d9165c6f506e0              # double 0.028874960201625721
	.quad	0x3fec147f88ff05f8              # double 0.87750221974437093
	.quad	0x3fddeb201e0d7006              # double 0.46747591910184416
	.quad	0x3fefac9b89287e34              # double 0.98982025898653214
	.quad	0x3fb7bf2728d99150              # double 0.09276051280318609
	.quad	0x3fc96388bb69bfcc              # double 0.19835003996877132
	.quad	0x3fe70d269fa1feb5              # double 0.72035533121375883
	.quad	0x3fecc53175d781d0              # double 0.89907143608075479
	.quad	0x3fd7902d2c5b8d24              # double 0.36817483264731465
	.quad	0x3fdedac7c8589e52              # double 0.48210329594664814
	.quad	0x3fdb65764ba36964              # double 0.42806775461726532
	.quad	0x3fb31cd88c35b2f0              # double 0.074658903342150529
	.quad	0x3fe7c67dcfea4bef              # double 0.74297991379205353
	.quad	0x3feff476778a0a92              # double 0.9985916456938233
	.quad	0x3fe11eba56820d14              # double 0.53500096222015481
	.quad	0x3f84cc7263be3f80              # double 0.010155576390189713
	.quad	0x3fe6d583c46bc9a0              # double 0.71356380809293185
	.quad	0x3fe2254a8fcfb06a              # double 0.56705215538160059
	.quad	0x3febe52387c18b52              # double 0.8717210437283518
	.quad	0x3fee0f44835a16f4              # double 0.93936372427626091
	.quad	0x3fe59a29be5645f5              # double 0.67506873297878534
	.quad	0x3fd907732f006844              # double 0.39107970800398939
	.quad	0x3fdb3f07a283248a              # double 0.42572203512515527
	.quad	0x3fc1af657203d36c              # double 0.13816516940246559
	.quad	0x3fd16b31fd5a8ab0              # double 0.27216768018312631
	.quad	0x3fceedfd5f33e28c              # double 0.24163787029808181
	.quad	0x3fd5e57d590ed852              # double 0.34213193604535264
	.quad	0x3fd476234ffe958c              # double 0.31971056758842376
	.quad	0x3fed6dbfe2144824              # double 0.91964716106509003
	.quad	0x3fd50b3231f7b444              # double 0.32880835418365373
	.quad	0x3fad33a278964ef0              # double 0.0570345661355115
	.quad	0x3fe9a69cab09bff6              # double 0.80158837705493968
	.quad	0x3fd809677edc8fa8              # double 0.37557399166893868
	.quad	0x3fed31d5dafd4d46              # double 0.91233341952685332
	.quad	0x3fdce57b7174ee6e              # double 0.45150648193132426
	.quad	0x3fd163fa5d64ea08              # double 0.27172717209364849
	.quad	0x3fb1f680e4853f88              # double 0.070167594710481507
	.quad	0x3fe4178c6572f21c              # double 0.62787456335314884
	.quad	0x3fec44d1d55d8ac5              # double 0.88340083764008936
	.quad	0x3f856278657539c0              # double 0.010441723438501138
	.quad	0x3fe9fb1f91f44836              # double 0.81190470225033695
	.quad	0x3fa40cc49007ca00              # double 0.039159910756911387
	.quad	0x3f9be8cfe7f06e00              # double 0.027255295306629179
	.quad	0x3feb03f122a029f3              # double 0.84423119318790751
	.quad	0x3fe04d3261fa779f              # double 0.50942343841937887
	.quad	0x3fdfecdd12c90d3a              # double 0.49883200487620949
	.quad	0x3fe19f259cc14401              # double 0.5506771146411894
	.quad	0x3fef58a9852fd351              # double 0.97957302105951715
	.quad	0x3fe7ffd45b104c67              # double 0.74997918878433445
	.quad	0x3fd9af52cf10cf62              # double 0.40132589551216402
	.quad	0x3fe8dc7d2a767eca              # double 0.77691515248803822
	.quad	0x3fc894ee5b8ffc48              # double 0.19204501601049828
	.quad	0x3fefad8cebec62a7              # double 0.98993536070618837
	.quad	0x3f6ec3f079b0ec00              # double 0.0037555405411047182
	.quad	0x3fbf145647f1c710              # double 0.12140406853157182
	.quad	0x3fbb229c4b6fb4b0              # double 0.10599686471660408
	.quad	0x3fd403bb03215e3c              # double 0.31272769265840217
	.quad	0x3fc5c8399e787774              # double 0.17017288434811528
	.quad	0x3fe432dae289aa8b              # double 0.63120788808494532
	.quad	0x3fbefaeeacd1be30              # double 0.12101642340871233
	.quad	0x3fe0e110f3f0240c              # double 0.52747390407705685
	.quad	0x3febf4d24b1bf608              # double 0.87363543195505233
	.quad	0x3fe8f1d571483c8e              # double 0.77952072263168914
	.quad	0x3fe981715af6e88b              # double 0.79705112234593523
	.quad	0x3fe474d27be0b272              # double 0.63926052279346224
	.quad	0x3fea05bd042ce41c              # double 0.81320048156260638
	.quad	0x3fe29ba6540bd88f              # double 0.58150020995414475
	.quad	0x3fc0ad583cb8b658              # double 0.13029005970877239
	.quad	0x3fcdcfbad14e5064              # double 0.23290190906539288
	.quad	0x3fd93a52780daee4              # double 0.39418470119447435
	.quad	0x3fe6acb29370a72f              # double 0.70858124539265599
	.quad	0x3fe7610d95a4e2e8              # double 0.73059729792938999
	.quad	0x3fe1ede2d2010fa3              # double 0.56028882042345562
	.quad	0x3fe6044a17edd971              # double 0.68802361177112747
	.quad	0x3fd2faa61fac09ba              # double 0.29654839604350125
	.quad	0x3fcbd28ff1c44d14              # double 0.2173633509160956
	.quad	0x3fda70328726030e              # double 0.41309798429578926
	.quad	0x3fedd3293dfc880b              # double 0.93202650171974832
	.quad	0x3fed00494f895ece              # double 0.90628495726101632
	.quad	0x3fc11c28675d27ec              # double 0.1336718086916443
	.quad	0x3fd31b0ac0e60fce              # double 0.29852551305543507
	.quad	0x3fec4f6aafb675d8              # double 0.88469442671674425
	.quad	0x3fa06764d1882280              # double 0.032038832261666705
	.quad	0x3fbb8bfda641ce10              # double 0.10760484036455176
	.quad	0x3fea7b429d9b2f3a              # double 0.82754641325434553
	.quad	0x3febd4bbd743c8fe              # double 0.86971847576049277
	.quad	0x3fee5c031a72abad              # double 0.94873194852458698
	.quad	0x3fcb2e4af23c5194              # double 0.2123502428809273
	.quad	0x3fd398887bebfb04              # double 0.30618488408792666
	.quad	0x3fee018d6f8da621              # double 0.9376895121360499
	.quad	0x3fdc885935f46cb0              # double 0.44582205075284786
	.quad	0x3fc53b7646f2ea28              # double 0.16587713684369132
	.quad	0x3fbd07c295d997a8              # double 0.11339965971418897
	.quad	0x3fb50239255299d8              # double 0.082065173732736141
	.quad	0x3fea3e61bb076c29              # double 0.82011496094799441
	.quad	0x3fbbde00614da440              # double 0.10885622382706206
	.quad	0x3fe767d8c665cd9b              # double 0.7314266085581268
	.quad	0x3fe59ad9fd3115a9              # double 0.67515277339469038
	.quad	0x3fe8cc2026b5b609              # double 0.77491767464170025
	.quad	0x3fd76db0b1f55c00              # double 0.36606995943787979
	.quad	0x3fb7e36e6237ffc0              # double 0.093314074496446686
	.quad	0x3fe879e550ba6d97              # double 0.7648798538897833
	.quad	0x3fcae2670db781b8              # double 0.21003425760046723
	.quad	0x3fb084cc58600138              # double 0.064526340080196642
	.quad	0x3fd6c5004aabea58              # double 0.35577399532454512
	.quad	0x3fecb3ee5bf6c51a              # double 0.89696424447734846
	.quad	0x3fed34a8791c2f17              # double 0.91267799047770637
	.quad	0x3fa2c6267d657960              # double 0.036668017203498549
	.quad	0x3fdc464c42fda3ac              # double 0.4417906431395362
	.quad	0x3fe00b1ee4f61507              # double 0.50135750502582332
	.quad	0x3fced0381c71ea18              # double 0.24072934521594003
	.quad	0x3fe559030343f617              # double 0.66711569440639351
	.quad	0x3fedcb874964ade6              # double 0.93109478315949157
	.quad	0x3fe096989f88519e              # double 0.51838332327547554
	.quad	0x3fd0a64f3b5a4d96              # double 0.26015072628180158
	.quad	0x3fe89c23ee5f6aaa              # double 0.76906010205433017
	.quad	0x3fed53441b745d27              # double 0.91641431200233547
	.quad	0x3fcfe5ff1c793cdc              # double 0.24920643701850664
	.quad	0x3fee5eb71e691205              # double 0.94906192721879334
	.quad	0x3fe21f9d5bfb4957              # double 0.56635921445039628
	.quad	0x3fc8d4e639ab768c              # double 0.19399717155367957
	.quad	0x3fed2ec2bc6e469b              # double 0.91195809176334153
	.quad	0x3fa107d39b895c40              # double 0.033262837158581693
	.quad	0x3feed24d64f9c296              # double 0.96317167016794047
	.quad	0x3fe5bb442af349e1              # double 0.67910965336551155
	.quad	0x3fe8d5dc4ba4f07a              # double 0.77610602163578268
	.quad	0x3fa9c57a0a6aadb0              # double 0.050334752818652517
	.quad	0x3fe8febf87f46b1e              # double 0.78109718850769005
	.quad	0x3fb8818f09667b78              # double 0.095726909441948282
	.quad	0x3fed9b95255f3dbe              # double 0.92524201678491358
	.quad	0x3fb28befa7450148              # double 0.072447756135265995
	.quad	0x3feaccf602aea787              # double 0.83751965068698631
	.quad	0x3fec0c6c94d39bd9              # double 0.87651661937422454
	.quad	0x3fe2fbb60c1e646f              # double 0.59322645537316798
	.quad	0x3fe70639141ec5f5              # double 0.71950963906982557
	.quad	0x3fb374c1f3df1da0              # double 0.076000330008460626
	.quad	0x3fe29fb9e0cb04d1              # double 0.58199781327143729
	.quad	0x3f98bcb4814510e0              # double 0.024157352819444422
	.quad	0x3fa10046ce9e32a0              # double 0.033205235216063445
	.quad	0x3fde8bdf1f33b0ec              # double 0.47728708312094059
	.quad	0x3fdc80fa0c282a64              # double 0.44537211596676785
	.quad	0x3fe19a9e618bc248              # double 0.55012435008945548
	.quad	0x3fe2e62b44d247a6              # double 0.59059680406266035
	.quad	0x3fd36df04c202c74              # double 0.30358512338779708
	.quad	0x3f90acf6f2ec97e0              # double 0.016284807755390207
	.quad	0x3fb50b736b91e9b8              # double 0.082205976259422608
	.quad	0x3fe3c9dd815270bd              # double 0.61839175470551988
	.quad	0x3fc0c0189e099618              # double 0.13086230961487
	.quad	0x3fb37b393c3425e0              # double 0.0760989925367066
	.quad	0x3fbb7933896b2a00              # double 0.10731813530870937
	.quad	0x3fed6e28c549028a              # double 0.91969717533363959
	.quad	0x3fa1a4a64dd0cf10              # double 0.034459301947576404
	.quad	0x3fc9b31ff1702fc0              # double 0.20077895440078741
	.quad	0x3fece9c008759a42              # double 0.90353395130370751
	.quad	0x3fed8ca83270adef              # double 0.92342004634468633
	.quad	0x3fe93634af9a7ad1              # double 0.7878669194941158
	.quad	0x3fd842863bd74240              # double 0.37906032413323842
	.quad	0x3fe7ebc823bf70f2              # double 0.74753195745463885
	.quad	0x3fd3a22d20267082              # double 0.30677345409072398
	.quad	0x3fe1db69e3711254              # double 0.55803388998226433
	.quad	0x3f91a1e90f7a4a20              # double 0.01721920163124413
	.quad	0x3fa350b6a72559b0              # double 0.037725170043518275
	.quad	0x3fef81171ae800f6              # double 0.98450808768396203
	.quad	0x3fe6d9b9fc3df3a1              # double 0.71407794252410295
	.quad	0x3fe48e451abbd5ba              # double 0.64236693593436844
	.quad	0x3fd1db5052e0ad40              # double 0.27901084989089853
	.quad	0x3fdee718c72d52b6              # double 0.48285502863772523
	.quad	0x3fb7563b7b456598              # double 0.091159551234701985
	.quad	0x3fc8286e6abbbbc8              # double 0.18873386584843233
	.quad	0x3fcccd520f18b3d8              # double 0.22501588570722109
	.quad	0x3fdece2b3e0baf48              # double 0.48133355197090966
	.quad	0x3fe929f0f93589c5              # double 0.78636978791865231
	.quad	0x3fe41ed76c79a004              # double 0.62876483141462858
	.quad	0x3fe3aaa7c751f594              # double 0.61458195619313694
	.quad	0x3fee84d718e4b7c2              # double 0.9537158476066383
	.quad	0x3f9801c4d23d23c0              # double 0.023444247562369958
	.quad	0x3fda636995f2d078              # double 0.41231765406997267
	.quad	0x3fc6bc8bbbfa393c              # double 0.17762896231256231
	.quad	0x3fd983d75f57076a              # double 0.39867195425551094
	.quad	0x3fd4ea76a5d5d642              # double 0.32681051440099307
	.quad	0x3fb72bbb277312d0              # double 0.090511033183314326
	.quad	0x3fc60eb9a85963c0              # double 0.17232437820601199
	.quad	0x3fc9a4136d7162b8              # double 0.20031969875232902
	.quad	0x3fe43346a794b044              # double 0.63125927668216564
	.quad	0x3fe4448b8f706f3c              # double 0.6333673287913153
	.quad	0x3f95097bb3849040              # double 0.020543988067530217
	.quad	0x3fd6177e6f943a46              # double 0.34518395325077156
	.quad	0x3fc6f85ce6547210              # double 0.17945443388534033
	.quad	0x3fd06b54eeae3f3a              # double 0.25655101116807411
	.quad	0x3fc90034ca23d55c              # double 0.19531879301181732
	.quad	0x3fd1a184749ea094              # double 0.27548324001919267
	.quad	0x3f9c6eb103cce280              # double 0.027766004425958446
	.quad	0x3fe5a0052ab06ad4              # double 0.67578371370049206
	.quad	0x3fee3bc028a06c06              # double 0.9447937768449044
	.quad	0x3fe573a4ab295bda              # double 0.67036660604469067
	.quad	0x3fdb20813d94aaea              # double 0.42385893834823085
	.quad	0x3feaf67eceb49638              # double 0.84258976337577618
	.quad	0x3fd4e162eedb49da              # double 0.32625649762954156
	.quad	0x3fe4c3cad188fe88              # double 0.64890042233305767
	.quad	0x3fce92a144ed98bc              # double 0.23884979119902094
	.quad	0x3fbb5a7fe1a68c78              # double 0.10684966334388146
	.quad	0x3feb46942018f0ec              # double 0.85236555356052923
	.quad	0x3f9e9ed67846d5c0              # double 0.029902793017489548
	.quad	0x3fea35dfe154d96f              # double 0.81907648096129815
	.quad	0x3fe19351eb214eca              # double 0.54923339771127044
	.quad	0x3fe1085e3c59b4bd              # double 0.53227149760427717
	.quad	0x3febd50676d56ce3              # double 0.86975405893045055
	.quad	0x3fbbc19702e5e040              # double 0.10842269726515585
	.quad	0x3fd0cfdc73c2b146              # double 0.26268683724153552
	.quad	0x3fcb6da0dea1dea8              # double 0.21428309317319827
	.quad	0x3fa6cbd7bf534c50              # double 0.044523946862363162
	.quad	0x3fad9c58bb00f7f0              # double 0.057833454921350724
	.quad	0x3fef0eb30a4b7b97              # double 0.9705443574019793
	.quad	0x3fef145cb45175ac              # double 0.97123561113737855
	.quad	0x3fe884a1a8d7fd27              # double 0.76619036652838168
	.quad	0x3fd56b062cfbd6fa              # double 0.33465723412460557
	.quad	0x3fdd06aadefd6358              # double 0.45353194977137923
	.quad	0x3fcee61dacf0a180              # double 0.24139758056959337
	.quad	0x3fdec3cf948879fe              # double 0.4807013464468638
	.quad	0x3fe00dd9522ace39              # double 0.50169054077418374
	.quad	0x3fedce9e005423a0              # double 0.93147182525818905
	.quad	0x3fe7980b67facbb1              # double 0.73731012638596927
	.quad	0x3feb03da031138f9              # double 0.84422016715123427
	.quad	0x3f733b1af9eac200              # double 0.0046950391539870573
	.quad	0x3fca3baa66406588              # double 0.20494585030318668
	.quad	0x3fd08abc7def3072              # double 0.2584677915408583
	.quad	0x3fed8c141b4d6e61              # double 0.92334943134796899
	.quad	0x3fd64407f3593772              # double 0.34790228619100738
	.quad	0x3fd585e756481d4a              # double 0.33629783082911457
	.quad	0x3fed3f94bc39286d              # double 0.91401135218008067
	.quad	0x3fe8eae3d323cf97              # double 0.77867308843859717
	.quad	0x3fd103a9665d487e              # double 0.26584849354288298
	.quad	0x3fe0c61cd615f637              # double 0.52418367208128458
	.quad	0x3fe867c200e5e9c1              # double 0.76266575026902939
	.quad	0x3fe3f64a09f47a5c              # double 0.62381460136732469
	.quad	0x3fe2e00ff1000af7              # double 0.58985135145516565
	.quad	0x3fd33d99b9e1d002              # double 0.30063479569003004
	.quad	0x3fd7b48b17ab1156              # double 0.37039449035025507
	.quad	0x3fedee83549ffe86              # double 0.9353653576690284
	.quad	0x3fc796e053286874              # double 0.18429187832299798
	.quad	0x3fa7fe67923733d0              # double 0.046862827871883561
	.quad	0x3fe03d09f8233fa0              # double 0.50745104278938769
	.quad	0x3fef0a6d67efa43d              # double 0.97002287197131631
	.quad	0x3fefb55e6abe58fd              # double 0.99088974808071805
	.quad	0x3fdc712ece0324d8              # double 0.44440813177477656
	.quad	0x3fe19f8672255cf5              # double 0.55072328848009866
	.quad	0x3fece47d2c410fb4              # double 0.90289171832454551
	.quad	0x3fe7b55f3564c45d              # double 0.74089012554589895
	.quad	0x3fd819ae5bad269e              # double 0.37656744911928708
	.quad	0x3fe4b144a3500b51              # double 0.64663917443281538
	.quad	0x3fec4e5336d8e252              # double 0.88456116402000817
	.quad	0x3fc76d2f7a35d290              # double 0.18301957576081351
	.quad	0x3feff8edb3ee9f68              # double 0.99913678305618436
	.quad	0x3fe811d509dc5e13              # double 0.75217677999438803
	.quad	0x3fea596a3832b34b              # double 0.82341490722829158
	.quad	0x3fe7ed8004af1836              # double 0.7477417079433113
	.quad	0x3fe4e02d060d521c              # double 0.65236521894491117
	.quad	0x3fd3d64b07f02350              # double 0.30995441222380737
	.quad	0x3fd122b7c7294394              # double 0.26774401139578541
	.quad	0x3fe934ff6aa14911              # double 0.78771944833923346
	.quad	0x3fbdd2a1580fb930              # double 0.11649521255433082
	.quad	0x3fd656cf8809998c              # double 0.34904850277816801
	.quad	0x3fef3fc66c39ddf3              # double 0.97653504503153809
	.quad	0x3feda156b6fd0ac6              # double 0.9259446691506461
	.quad	0x3fd55823cdf88a2c              # double 0.33350463022557864
	.quad	0x3fe3003e5eff5ea7              # double 0.59377974085051199
	.quad	0x3fdd90653572c4c6              # double 0.46193819255411162
	.quad	0x3feaeccb9e2fedb3              # double 0.84140568633977464
	.quad	0x3fd3634230c688c8              # double 0.30293326152071787
	.quad	0x3fc719eeae88b004              # double 0.1804788925377353
	.quad	0x3fe65b6551bb25d8              # double 0.69865671122641526
	.quad	0x3fee01e4197fb8f7              # double 0.93773083668000268
	.quad	0x3fbf834f29ef34b8              # double 0.12309736989773767
	.quad	0x3fe7f3c69b8ceeda              # double 0.74850778943024499
	.quad	0x3fe29b102be3de6a              # double 0.58142860958373643
	.quad	0x3fd919ca5df45574              # double 0.39219912696110915
	.quad	0x3feef7439c1c88cc              # double 0.9676836060573577
	.quad	0x3fe15649bad44986              # double 0.54178320398413926
	.quad	0x3fe40e2606616011              # double 0.62672711607138087
	.quad	0x3f9ea66488da0ba0              # double 0.029931612828032805
	.quad	0x3fd8bf00c731de72              # double 0.38665790035836445
	.quad	0x3fc0ca8d8893f46c              # double 0.1311814228901399
	.quad	0x3fe150f7f592db6e              # double 0.54113386119466411
	.quad	0x3feb3ed5bd032c30              # double 0.85142027775271423
	.quad	0x3fe06ad3d0d1f3e6              # double 0.51304045472317905
	.quad	0x3fcc4063340cc964              # double 0.22071495095731131
	.quad	0x3fd0696806b69586              # double 0.25643349319064901
	.quad	0x3fd34e7bc1169c86              # double 0.30166524750024626
	.quad	0x3fe1e3961c14e96c              # double 0.55903153881744805
	.quad	0x3feab63c3e38697b              # double 0.834745522998943
	.quad	0x3fe0cb6592662463              # double 0.52482870667985215
	.quad	0x3fd29fc78e47c346              # double 0.2910021676498683
	.quad	0x3fec14136bbe1480              # double 0.87745066684205142
	.quad	0x3fe466b5478aa260              # double 0.63753761265713749
	.quad	0x3fe46d814b723d4b              # double 0.63836731658549561
	.quad	0x3fe8f59344cd7936              # double 0.77997744977964234
	.quad	0x3fe8a05ef4884c29              # double 0.76957652816998234
	.quad	0x3fda53ed77086638              # double 0.4113725340299399
	.quad	0x3fe8ccaf47988204              # double 0.77498592361013196
	.quad	0x3fee9c60736e37d8              # double 0.95658896012332217
	.quad	0x3fa2aacd529650c0              # double 0.036459366160813911
	.quad	0x3facf340595d63f0              # double 0.056543360623159233
	.quad	0x3fd5797e895d000a              # double 0.3355404225767421
	.quad	0x3fd30a52ada87afe              # double 0.29750506361772
	.quad	0x3fe7eafa92947318              # double 0.74743393544085546
	.quad	0x3fe3265119403063              # double 0.5984273427179797
	.quad	0x3feab171d0de6aab              # double 0.83416071695986227
	.quad	0x3fe0e14156190842              # double 0.52749697509739968
	.quad	0x3fbf01db3d431720              # double 0.12112207646995587
	.quad	0x3fd04e40018cdaa8              # double 0.2547760024203094
	.quad	0x3fe459a81dd37023              # double 0.63594442201020163
	.quad	0x3fc5ea9b8f597674              # double 0.17122215747342617
	.quad	0x3fed0db25656265c              # double 0.90792195189096558
	.quad	0x3fd775ac9c9edbb4              # double 0.36655726714109993
	.quad	0x3fd37026b3934b7a              # double 0.30372016464860219
	.quad	0x3fb6e8915422fd10              # double 0.089486201325588377
	.quad	0x3fd8e16393291840              # double 0.38875665064950127
	.quad	0x3fe691dbd68d3b84              # double 0.70530502228380998
	.quad	0x3f7d53a26ef41600              # double 0.0071598382048754239
	.quad	0x3fd3b0d65f83bfa2              # double 0.30766829803087081
	.quad	0x3fd45600ee5e2ad6              # double 0.3177492454348515
	.quad	0x3fe5d562a5b7162d              # double 0.68229801527258405
	.quad	0x3fed62bf2f73e341              # double 0.91830405490973288
	.quad	0x3fec9a0bf9f28128              # double 0.89380453889683498
	.quad	0x3fcf7c1bd7de4c74              # double 0.24597499885985352
	.quad	0x3fb9bc887bd1b730              # double 0.10053303740434383
	.quad	0x3fd164bcf4d1d7b6              # double 0.27177356632398231
	.quad	0x3fe7989ec66372db              # double 0.73738039729831983
	.quad	0x3feb965711f98b4f              # double 0.86210206518840404
	.quad	0x3fe1eb4196bbd1c2              # double 0.55996779861612134
	.quad	0x3fde41cfa889d1ee              # double 0.47276679476570294
	.quad	0x3fabb861de51af20              # double 0.054141100300368672
	.quad	0x3fe9d1341fa2ce0e              # double 0.80678754977128775
	.quad	0x3fd755b687c39cf6              # double 0.36460650690283047
	.quad	0x3fcf429295044d84              # double 0.24421913410388296
	.quad	0x3fe0e3b58a196d76              # double 0.52779652569317537
	.quad	0x3fdf15d1dd58f882              # double 0.48570677391024486
	.quad	0x3fd0eadb556b5bb0              # double 0.26433451978430877
	.quad	0x3fbef0167a343980              # double 0.12085094913002159
	.quad	0x3fbcad79349b4480              # double 0.11202199491823883
	.quad	0x3fb34c8833810688              # double 0.0753865361921503
	.quad	0x3fe7a4e116b226e9              # double 0.73887686188501533
	.quad	0x3fcfd8cc9585ee28              # double 0.24880368519721796
	.quad	0x3fee88ae683136db              # double 0.95418472623870387
	.quad	0x3fc8f4cd4a240df0              # double 0.19497076149137582
	.quad	0x3fe2fb76cce03234              # double 0.59319629683301978
	.quad	0x3fe1a96f8f0760f7              # double 0.5519330781490045
	.quad	0x3fd2fd00409e8080              # double 0.29669195471252152
	.quad	0x3fe4371e50cd4459              # double 0.6317283228073719
	.quad	0x3fd52f821d806852              # double 0.33102467423453164
	.quad	0x3fd68599ae290d82              # double 0.35190431602332961
	.quad	0x3fc917ab79968c80              # double 0.19603484570425067
	.quad	0x3fde9757b764deaa              # double 0.47798722180912512
	.quad	0x3febe2e1898f53d0              # double 0.87144543521082518
	.quad	0x3fb876f47f536348              # double 0.095565110288032717
	.quad	0x3fe537215ab2f0d9              # double 0.66297977175374989
	.quad	0x3fc48185dafdd3e0              # double 0.16020272438950567
	.quad	0x3fe2b40aaf72691f              # double 0.58447775141693004
	.quad	0x3fd1028826ab8a48              # double 0.26577953125357512
	.quad	0x3fef942def34ffb3              # double 0.98683830947992701
	.quad	0x3fd9ed564d881d30              # double 0.40511090823607088
	.quad	0x3fd679c772e40a32              # double 0.35118280620386877
	.quad	0x3fd038d30c440152              # double 0.25346828649346265
	.quad	0x3fea7cc433815114              # double 0.82773027476881333
	.quad	0x3fb71746767119e0              # double 0.090198902050452556
	.quad	0x3fc2260de94301a4              # double 0.14178632631047805
	.quad	0x3fe7a46e306e13cb              # double 0.73882207354528739
	.quad	0x3fd457b442c546dc              # double 0.317853036122967
	.quad	0x3fe0be9948c1127e              # double 0.52326645097544122
	.quad	0x3febdd7660e2bef6              # double 0.87078398631089615
	.quad	0x3fee28a657ae7cc2              # double 0.94246213078795216
	.quad	0x3fb72488b005f580              # double 0.0904012136215524
	.quad	0x3fdb2f05a4edafaa              # double 0.42474499803824506
	.quad	0x3fd94e32b7951756              # double 0.3953978340908767
	.quad	0x3fcc1c6e4774f684              # double 0.21961763848405635
	.quad	0x3fdb8612083691e6              # double 0.43005801012102862
	.quad	0x3fdb584d44b1bb60              # double 0.4272645159571109
	.quad	0x3fdf5c6ba60fc5aa              # double 0.49001589981988991
	.quad	0x3fddcd7af48a5d08              # double 0.46566652184397173
	.quad	0x3febc837749f1af7              # double 0.86819050576818213
	.quad	0x3fe3e64daf0ad0d7              # double 0.62186321437777792
	.quad	0x3fe73488652acdc6              # double 0.72516269454211435
	.quad	0x3fdd61b16cb169d2              # double 0.45908771147301508
	.quad	0x3fd65f996e0deee8              # double 0.34958492038252453
	.quad	0x3fee6fd52c9ac418              # double 0.95115145408465462
	.quad	0x3fcffa9a5c17fcc8              # double 0.24983529564631213
	.quad	0x3feeddc5697609c7              # double 0.96457167241924757
	.quad	0x3fe31e4155a147be              # double 0.5974432632885891
	.quad	0x3fc7973533cb4634              # double 0.18430199650770052
	.quad	0x3fec591ade588896              # double 0.88587706973000269
	.quad	0x3fe095d26aed9eb1              # double 0.51828881153502071
	.quad	0x3fc9ad88fa1cbd84              # double 0.20060836994660403
	.quad	0x3fef35a1c0ee9626              # double 0.97529685670878474
	.quad	0x3fec36c02091035e              # double 0.88168341026912933
	.quad	0x3fd3fcce56c59d48              # double 0.31230505441495326
	.quad	0x3fe957682b19d1a3              # double 0.79191978853355172
	.quad	0x3fd32f2bfdaa0ebc              # double 0.29975414058592853
	.quad	0x3fca4fd4c6b338bc              # double 0.20556125356819688
	.quad	0x3fd6c1500c007262              # double 0.3555488698200745
	.quad	0x3fe1db97b0d00260              # double 0.55805573018740162
	.quad	0x3fbc9e6c5e9528d8              # double 0.11179234799525106
	.quad	0x3fd92e2325125992              # double 0.3934409963634603
	.quad	0x3fe3bd873831aa11              # double 0.61688576674834128
	.quad	0x3fb83a5a848836f0              # double 0.094640405041186204
	.quad	0x3fef8631cc01b0ab              # double 0.98513116688765955
	.quad	0x3fe7811ef98afdaf              # double 0.73451184023718052
	.quad	0x3fda881b3159357e              # double 0.41455726451098218
	.quad	0x3fedbd64c6f1d517              # double 0.92936934334162202
	.quad	0x3fcd0a0998743cc4              # double 0.22686881965680616
	.quad	0x3fadc0a4b5336d80              # double 0.058110377425431459
	.quad	0x3fc804b726000910              # double 0.1876439033076811
	.quad	0x3fab8eafe2fa1a10              # double 0.053822990853451214
	.quad	0x3fe0b35426372a31              # double 0.52189071144068155
	.quad	0x3fe45933c61472b5              # double 0.63588894546008723
	.quad	0x3fc692f6724db064              # double 0.17635994511818176
	.quad	0x3fd4c800c1ee2a1c              # double 0.32470721186169427
	.quad	0x3feef0ce2d8b3df7              # double 0.96689518828674081
	.quad	0x3fd58e97910f1112              # double 0.33682812848952992
	.quad	0x3fd449454110ba96              # double 0.31697207788503456
	.quad	0x3fe340e1f52d553d              # double 0.60167024503849798
	.quad	0x3fdd66dab53a5826              # double 0.45940272996938558
	.quad	0x3fb8a2b0412a8c88              # double 0.096232429418295351
	.quad	0x3fd15cb1d5055fec              # double 0.2712826328547624
	.quad	0x3fe7571b53e2788c              # double 0.72938314803811144
	.quad	0x3fcef1eab8c9f3c4              # double 0.24175771735090568
	.quad	0x3fcbef0cd4c3618c              # double 0.21823273075893856
	.quad	0x3fde91de1e895712              # double 0.47765305502012823
	.quad	0x3feb2af141c85e81              # double 0.84899199340993914
	.quad	0x3fc4e10f70547edc              # double 0.16311829552522894
	.quad	0x3feb87a502e002fd              # double 0.86030817567379325
	.quad	0x3fd297492d2d5d22              # double 0.29048375522457281
	.quad	0x3fe426671529c721              # double 0.6296878255218169
	.quad	0x3fd96ba37ca6998a              # double 0.39719474003722921
	.quad	0x3fa823ce9df6a190              # double 0.047148186476365983
	.quad	0x3fe9e7c6e2505cd4              # double 0.80954307748734288
	.quad	0x3fb41c39a58658a0              # double 0.078555682097745549
	.quad	0x3fb49e44a5c34b38              # double 0.080539980382394627
	.quad	0x3fe49390c795895f              # double 0.64301337224268795
	.quad	0x3fe9c40d9ae66f8d              # double 0.80518226865705034
	.quad	0x3feb01a12dbe8154              # double 0.84394892630011009
	.quad	0x3fee91f3b1907571              # double 0.95531639748121056
	.quad	0x3fac459ef426f6b0              # double 0.055218665412650636
	.quad	0x3fe0da21590fd665              # double 0.52662722964187181
	.quad	0x3fa895ba98d09aa0              # double 0.048017340807111397
	.quad	0x3fd44d3f772b3d2c              # double 0.31721483838642217
	.quad	0x3fe71a0520981e57              # double 0.72192627302224366
	.quad	0x3fc0261164b0625c              # double 0.12616174141364211
	.quad	0x3fe37b42d5f32722              # double 0.60879651820252811
	.quad	0x3fe9c94fec76e0d2              # double 0.80582424339720604
	.quad	0x3fe41bc2819a67d5              # double 0.62838864625086421
	.quad	0x3fdd919830167124              # double 0.46201138206540038
	.quad	0x3fefc1f5a3a9a765              # double 0.99242670026181356
	.quad	0x3fc8209d15ce32d4              # double 0.18849528851241948
	.quad	0x3fd5f91655fddb0a              # double 0.34332807920093045
	.quad	0x3fae31c4418036f0              # double 0.058973439212520407
	.quad	0x3fd5764edd10f848              # double 0.33534595097069486
	.quad	0x3fb70da71b7ac7f0              # double 0.090052074631586043
	.quad	0x3fd50bf221bc9250              # double 0.32885411543455678
	.quad	0x3fee52c3ca8d374c              # double 0.9476031261526514
	.quad	0x3fea1531499d5201              # double 0.81508697870100388
	.quad	0x3fe438e178d053c2              # double 0.63194345089379333
	.quad	0x3fed6a1769faf659              # double 0.91920061778337037
	.quad	0x3fe7f9d7672a765e              # double 0.74924821996291846
	.quad	0x3fe8eb1d791adf81              # double 0.77870057729067821
	.quad	0x3fdb19e6d34310e2              # double 0.4234559119324911
	.quad	0x3fdfc0b0fb5cb8b8              # double 0.49613594576920717
	.quad	0x3fea7d5709849563              # double 0.82780029162374225
	.quad	0x3fe5283f1d02406f              # double 0.66116290727405935
	.quad	0x3fc5006c563a01b4              # double 0.16407541475565568
	.quad	0x3feb90152688b8cd              # double 0.86133821035562053
	.quad	0x3fb16269d10f5d20              # double 0.067907918491404207
	.quad	0x3fdb6347f1210288              # double 0.42793463275669597
	.quad	0x3fc88da4ef4f9dd8              # double 0.1918226402769807
	.quad	0x3feaf97cdd6cead2              # double 0.84295504805717258
	.quad	0x3feef88077f0ac17              # double 0.96783469606214367
	.quad	0x3fd80a1c75e93038              # double 0.37561713709579037
	.quad	0x3fdf2cf70f11ad00              # double 0.48711945029818082
	.quad	0x3fe3b5e2823bd88f              # double 0.61595273433955977
	.quad	0x3fd50c1522d43716              # double 0.328862461102163
	.quad	0x3fd2de1951d8104a              # double 0.29480584137514099
	.quad	0x3fe0b7a15ddab902              # double 0.52241581278738658
	.quad	0x3fe4e1f88bdd061b              # double 0.65258433644357028
	.quad	0x3fe801fcd6b85b95              # double 0.75024263322380824
	.quad	0x3fd5e6ee89204650              # double 0.34221995726793342
	.quad	0x3fec9a6315790aeb              # double 0.89384607499991142
	.quad	0x3fed6a27c24ab32a              # double 0.91920841167084189
	.quad	0x3fce75f1792ca378              # double 0.23797434250561955
	.quad	0x3fe7243961ed3f2c              # double 0.72317189337079446
	.quad	0x3fd926951a932984              # double 0.39297988505554593
	.quad	0x3fc5bf1a2169f904              # double 0.16989447242298905
	.quad	0x3fd6119155ba05b6              # double 0.34482224818938378
	.quad	0x3fe34698315fe7d4              # double 0.60236749309046411
	.quad	0x3fef27474a863f62              # double 0.97354473643825323
	.quad	0x3fe11bdc2d955ad9              # double 0.53465088751803613
	.quad	0x3fc3d299e00fa128              # double 0.15486453476410955
	.quad	0x3fe057135b8ea71c              # double 0.51062934763214995
	.quad	0x3fecb9feebb0a0ab              # double 0.89770456345742866
	.quad	0x3fe245c5066217e6              # double 0.57101680037225999
	.quad	0x3fc9f0a829f9a98c              # double 0.20265676545689038
	.quad	0x3fd76525c1ea4f4c              # double 0.36554855286634758
	.quad	0x3fe9c86c8eefb9d3              # double 0.80571582715293244
	.quad	0x3fe1c103af1a9126              # double 0.55481132698017599
	.quad	0x3fd7a02b00f4bafc              # double 0.3691508778892254
	.quad	0x3fbcbbf0a5d5a938              # double 0.11224273728081335
	.quad	0x3fed531bffcdcdcb              # double 0.91639518701270484
	.quad	0x3fcfd97341f1cddc              # double 0.24882355422924618
	.quad	0x3fc3729e86a08598              # double 0.15193540166459907
	.quad	0x3fbb773d68dfd3c0              # double 0.10728820619972534
	.quad	0x3fb083e191e8fd78              # double 0.064512346384608565
	.quad	0x3fd37ae36f138ed8              # double 0.30437551352791337
	.quad	0x3fe370853de78266              # double 0.60748540964784747
	.quad	0x3fb038448f2e4790              # double 0.063358578640217766
	.quad	0x3fdc88ef79584b56              # double 0.44585787630164952
	.quad	0x3feadc4c2c85a950              # double 0.83939179130292452
	.quad	0x3f408678a435ec00              # double 5.0431147285168176E-4
	.quad	0x3fe98ec4528a66a1              # double 0.79867759820190909
	.quad	0x3fea8bb5c08e7902              # double 0.82955443962762865
	.quad	0x3fdb540b774d7bcc              # double 0.42700468683864012
	.quad	0x3f87d985e573a040              # double 0.01164536100846203
	.quad	0x3fb781a4217d2e10              # double 0.091821916748067389
	.quad	0x3fb0b186762bb2d0              # double 0.065208820200221895
	.quad	0x3fbc4385ea7ab788              # double 0.11040532087892363
	.quad	0x3fd4496198bd1774              # double 0.31697883525736548
	.quad	0x3fd676e09f3c2a66              # double 0.35100570249838936
	.quad	0x3fce22b775519490              # double 0.23543446758700215
	.quad	0x3fca8b043229e228              # double 0.20736744355578307
	.quad	0x3fe89b221fd893f3              # double 0.76893717021869035
	.quad	0x3fb33af5c2509480              # double 0.075118408146026993
	.quad	0x3f99ac70d70e7f40              # double 0.025071871877684559
	.quad	0x3fe5dee0f74fb7b3              # double 0.68345688155181106
	.quad	0x3fc21eba1f41df3c              # double 0.14156271482692684
	.quad	0x3fab547c3ae3fb80              # double 0.053378946484364143
	.quad	0x3fc13f54c4e6f20c              # double 0.13474521269189699
	.quad	0x3fd894a00a3120a8              # double 0.38407135958960703
	.quad	0x3f816c5c28fa3d40              # double 0.0085074615483607951
	.quad	0x3fef2e1d7882c88c              # double 0.97437928712158017
	.quad	0x3fe1f36cffb5478d              # double 0.56096506064408092
	.quad	0x3fecaed5b66d7851              # double 0.8963421404876134
	.quad	0x3fe24763995f9a55              # double 0.5712144847464723
	.quad	0x3fdc4d192646fd0c              # double 0.4422057031442399
	.quad	0x3fc5ebc6cb5206f8              # double 0.17125782897715403
	.quad	0x3fd116905bcf3642              # double 0.26700219121707758
	.quad	0x3fd62e995325bac8              # double 0.34659417266713577
	.quad	0x3fdcb3de883dff66              # double 0.44847834877872683
	.quad	0x3fd5656f909228ae              # double 0.33431614988570402
	.quad	0x3fc2ca0a1c48bd28              # double 0.14679075604497283
	.quad	0x3febed345e6b7f6c              # double 0.8727056354655196
	.quad	0x3fc202d871da04cc              # double 0.14071183737909221
	.quad	0x3fd696e23cce92d2              # double 0.35295921266724151
	.quad	0x3fe11f8f4844d4b0              # double 0.53510250201238385
	.quad	0x3fead90bd9db8b7f              # double 0.83899490881263705
	.quad	0x3fcd9a505b04f838              # double 0.23127178615863087
	.quad	0x3fe1e104b9832d63              # double 0.55871807320492584
	.quad	0x3fbcbe4d52f51670              # double 0.1122787787945414
	.quad	0x3fe9a26fc88c663b              # double 0.80107869310013002
	.quad	0x3fb6b4e5d9c94750              # double 0.088697782202215025
	.quad	0x3fd8dade3e524e48              # double 0.38835865102848688
	.quad	0x3fed9c0efa7efb7d              # double 0.92530011105542054
	.quad	0x3fde0cb2b75eea32              # double 0.46952503115940936
	.quad	0x3fedfaccd6742747              # double 0.93686525235646279
	.quad	0x3fee92483e0e04ab              # double 0.95535671348638596
	.quad	0x3fc19af93fd49bb4              # double 0.13754191986774134
	.quad	0x3fed53473760f957              # double 0.91641579452679423
	.quad	0x3fe36967ccfeac5f              # double 0.60661687887239768
	.quad	0x3fdfe2353379e04c              # double 0.49818162943802657
	.quad	0x3fdc4656b4097164              # double 0.44179313260771935
	.quad	0x3fa85ff3ea4c4a30              # double 0.04760706172068685
	.quad	0x3fb2c435d9645b70              # double 0.07330643231794709
	.quad	0x3fd68c07cf448170              # double 0.35229678383804863
	.quad	0x3fdf191762c3005c              # double 0.48590645451259262
	.quad	0x3f816a8d7899bac0              # double 0.0085040142468789658
	.quad	0x3fe42489b3962d91              # double 0.62946019244684426
	.quad	0x3fcd342471044c6c              # double 0.22815375822446826
	.quad	0x3fdaabac8347bbd4              # double 0.41672814197857844
	.quad	0x3fead72472182f6f              # double 0.83876249584271345
	.quad	0x3fefff5cb3cf4824              # double 0.99992213362770998
	.quad	0x3fe84bc32ce63b4b              # double 0.75924834031489163
	.quad	0x3fe9358409a4a02c              # double 0.78778268702899856
	.quad	0x3fd24ece121f0a06              # double 0.28605987329152105
	.quad	0x3fea87cc68097da1              # double 0.82907696075192316
	.quad	0x3fec502966c70413              # double 0.88478536676132291
	.quad	0x3fe689f1706dfa3a              # double 0.70433875998407491
	.quad	0x3fc4797d9fd751f8              # double 0.15995760254612867
	.quad	0x3fea8ae7ffae08c8              # double 0.82945632874932418
	.quad	0x3fd39e77b4beaa0c              # double 0.306547094830109
	.quad	0x3fbd46a19560e0b0              # double 0.11435899636205948
	.quad	0x3fd114c0924d548c              # double 0.26689161574660925
	.quad	0x3fc1ebd501c5e9c4              # double 0.14000952326371252
	.quad	0x3fc72d98fd5b717c              # double 0.1810790288062768
	.quad	0x3fdb900a05fc236e              # double 0.43066645225967803
	.quad	0x3fd1e3974e0b27d2              # double 0.2795160543579388
	.quad	0x3fbee3bbe77cff78              # double 0.12066244508332413
	.quad	0x3fd301907bafb5fe              # double 0.29697048262354986
	.quad	0x3fe95dcfd19c1270              # double 0.79270163478265765
	.quad	0x3fdfeab59141b754              # double 0.49870051560616457
	.quad	0x3fe03cc3bb540ea7              # double 0.5074175509220894
	.quad	0x3fda1a238eb5867c              # double 0.40784539162095945
	.quad	0x3fe4128c19feb82d              # double 0.62726407124660499
	.quad	0x3fe682285563bf72              # double 0.70338837316192682
	.quad	0x3fd6cb8b5ac267da              # double 0.35617336142752054
	.quad	0x3fdcd5faad4316a2              # double 0.45056025428889701
	.quad	0x3fdc51de9c8bed78              # double 0.44249692237618587
	.quad	0x3fce2a30fb12d684              # double 0.23566257724239759
	.quad	0x3fda766ead87cc1a              # double 0.41347853609403418
	.quad	0x3fdeec1e0d5b4f0a              # double 0.4831614618717458
	.quad	0x3fdf692ba0fbb610              # double 0.49079409333248325
	.quad	0x3fe296d978787b94              # double 0.5809142449323752
	.quad	0x3fdabec55d81dcc0              # double 0.41789373523301876
	.quad	0x3fd356e434c6e85a              # double 0.30217843202593075
	.quad	0x3fe379c4ec290754              # double 0.60861440777828557
	.quad	0x3fce724f09c7f4c8              # double 0.23786342599479426
	.quad	0x3fcd0b96cdce111c              # double 0.2269161705882049
	.quad	0x3fa7aceb7c6f0070              # double 0.046241148891113748
	.quad	0x3fd3f986dbca48f4              # double 0.3121049066914019
	.quad	0x3fbb08351966d918              # double 0.10559398527297892
	.quad	0x3fc42a9bc5e13f18              # double 0.15755030786612489
	.quad	0x3fcebb2a9f63f484              # double 0.24008686812149815
	.quad	0x3fe3f3aafd2c168b              # double 0.62349461982440013
	.quad	0x3fcf4a51061276cc              # double 0.24445545956125725
	.quad	0x3fd96b6ce0e568aa              # double 0.3971817203761342
	.quad	0x3feab8516ecfaa39              # double 0.83499976771174211
	.quad	0x3fe3c77098f0e2ec              # double 0.61809568282396077
	.quad	0x3fe3aa930402a6a1              # double 0.61457205565712425
	.quad	0x3fd24f1e26e9f082              # double 0.28607896614244777
	.quad	0x3fdcc0178bfd0ce8              # double 0.44922436400174925
	.quad	0x3fef62d18bcb0241              # double 0.98081280997582365
	.quad	0x3fd9972c74b47018              # double 0.39985190770107826
	.quad	0x3fef0e324f9a9bcf              # double 0.97048297450680276
	.quad	0x3fe53baf70f3b48e              # double 0.66353580532963163
	.quad	0x3fe66c4d87e1ef72              # double 0.7007205633121727
	.quad	0x3fca493f9ea08480              # double 0.20536036725482987
	.quad	0x3fe4dc2d7f09addd              # double 0.6518771630484782
	.quad	0x3fdd93710edb5162              # double 0.4621241231045784
	.quad	0x3fda5ee2361b58dc              # double 0.41204123767728418
	.quad	0x3fcd24df9b843a70              # double 0.22768778890209118
	.quad	0x3fe40be254505a3a              # double 0.62645069568208744
	.quad	0x3fb1ac77aa67dcd0              # double 0.069037894347150131
	.quad	0x3fe95634095c6420              # double 0.79177285984326672
	.quad	0x3fe85fa3a8c33356              # double 0.76167471848894297
	.quad	0x3fc0f62f1e69cc38              # double 0.13251294121764245
	.quad	0x3fd1aae8bcf6db6c              # double 0.27605646565955655
	.quad	0x3fbc633f1250c8b0              # double 0.1108893794742325
	.quad	0x3fecb70d35ff9afe              # double 0.89734516665052388
	.quad	0x3fe20bac8ea8673a              # double 0.56392505514961688
	.quad	0x3fdef79b3d89e694              # double 0.4838626957858676
	.quad	0x3fed9c3f417f27d8              # double 0.92532313148808054
	.quad	0x3fed8f6f4ba407c6              # double 0.92375912450392472
	.quad	0x3fe6c3ac67c7500f              # double 0.71138592023135228
	.quad	0x3fecb9d64d262794              # double 0.89768519466564322
	.quad	0x3fe422411b5943e1              # double 0.62918143598119169
	.quad	0x3fe234e68036b3f3              # double 0.568957567612982
	.quad	0x3fef172843a876b3              # double 0.97157681669678763
	.quad	0x3fe16c205e653a52              # double 0.54444902836423581
	.quad	0x3fe6ff64c9a00d09              # double 0.71867598895951901
	.quad	0x3fe85065842ba453              # double 0.75981403173967477
	.quad	0x3fd77458ac489536              # double 0.36647621941149866
	.quad	0x3fee8a126a67cfa2              # double 0.95435448438955839
	.quad	0x3fd047c03a410574              # double 0.25437932671419294
	.quad	0x3fed48b33a4f62f1              # double 0.91512452496234975
	.quad	0x3fef3b23f0e5f0fe              # double 0.97596928644591663
	.quad	0x3f8a8ba31c463400              # double 0.01296164922748666
	.quad	0x3fe72d024bab2657              # double 0.72424425868048103
	.quad	0x3fd758f8b6412fdc              # double 0.36480539129547451
	.quad	0x3fe4ee32c17d8063              # double 0.65407693663656763
	.quad	0x3fedf0d9fc4a1e9c              # double 0.93565081858919851
	.quad	0x3fb0fecc1f4b1108              # double 0.066387899055431743
	.quad	0x3fa2df9235c3f880              # double 0.036861962378666568
	.quad	0x3fea8d641262d51a              # double 0.82975963202503356
	.quad	0x3fec8017090dd322              # double 0.89063598411903322
	.quad	0x3fec7ec209111762              # double 0.89047338267185361
	.quad	0x3fd9ebd035b1316a              # double 0.40501790278792404
	.quad	0x3fec8db65bed4aa8              # double 0.89229886965252536
	.quad	0x3fdeaba5f4f04212              # double 0.47922657890106379
	.quad	0x3fd2870644b18fbe              # double 0.28949124058112463
	.quad	0x3fee02bed93b75ab              # double 0.9378351443116818
	.quad	0x3fd66cc513d9102a              # double 0.35038878381988303
	.quad	0x3fe30db22f017447              # double 0.59542187863156293
	.quad	0x3fea9c294d5ce6c6              # double 0.83156266317310989
	.quad	0x3fdeb39fb59abbc8              # double 0.47971337065513042
	.quad	0x3fe967a6ab9b8bef              # double 0.79390271679983282
	.quad	0x3fda63310dd92f8e              # double 0.41230417587643664
	.quad	0x3fe20f543a4dd91b              # double 0.56437121760862696
	.quad	0x3fc4252f2600e94c              # double 0.15738477092402048
	.quad	0x3fec41c65afb1f91              # double 0.88302915353505018
	.quad	0x3fe37f12453caeba              # double 0.60926164172038644
	.quad	0x3fe79cbf878cb458              # double 0.73788429712807169
	.quad	0x3feaa0e53ae75b8f              # double 0.83214055542599563
	.quad	0x3fec535c54d83e62              # double 0.88517586299162709
	.quad	0x3fc7dd9e2d994b04              # double 0.18645074106697035
	.quad	0x3fc1ab0bbdf3e158              # double 0.13803240561515895
	.quad	0x3fe952ca3c2984ac              # double 0.791356198791751
	.quad	0x3fe3df3691ff1b30              # double 0.62099770083373151
	.quad	0x3fa37e09d1093c40              # double 0.038070971266841003
	.quad	0x3fec232a8643143b              # double 0.87929273818065867
	.quad	0x3fe0f43f43a05763              # double 0.52981532295482869
	.quad	0x3fd2f3c67a6291ae              # double 0.29612886382735837
	.quad	0x3fd746b55bd51eee              # double 0.3636907002260007
	.quad	0x3fc1960f800710b8              # double 0.13739198447558976
	.quad	0x3fdc7851a4fec494              # double 0.44484368431864962
	.quad	0x3fc391dc3bd39410              # double 0.15288880273070093
	.quad	0x3fe036d42fb9382f              # double 0.50669297524451007
	.quad	0x3fda515e44895558              # double 0.41121632283223652
	.quad	0x3fee8ac1cc08abc0              # double 0.95443811273923273
	.quad	0x3fd8a3639e26d866              # double 0.38497248119836625
	.quad	0x3fe12310fe32bbfe              # double 0.53553056381304009
	.quad	0x3f9449bb318ce9c0              # double 0.019812512301749186
	.quad	0x3fe7a204e4ce1151              # double 0.73852772415606627
	.quad	0x3fdb8b78fa653daa              # double 0.430387730147198
	.quad	0x3fe439a48811938c              # double 0.63203646255407042
	.quad	0x3fe8af45b92368d4              # double 0.77139555129840653
	.quad	0x3fdead86f9b6a83a              # double 0.47934126268467347
	.quad	0x3fdf817c2c4cc82c              # double 0.49227814031758288
	.quad	0x3fd1b5469b2deeae              # double 0.27668919710388706
	.quad	0x3f78b709ff979c00              # double 0.0060339346468714083
	.quad	0x3fd5f8b755ddaa18              # double 0.34330542931880492
	.quad	0x3fcaecd2958e20c4              # double 0.21035225203036678
	.quad	0x3fade5660fa7fce0              # double 0.058390798007161626
	.quad	0x3fc8b9a3859f05b0              # double 0.19316524528953272
	.quad	0x3fe573a1c8c25d9f              # double 0.6703652306631972
	.quad	0x3feac6eb9f141125              # double 0.83678227491376289
	.quad	0x3febd4f371ad92c1              # double 0.86974498942125689
	.quad	0x3fb7e6e92841e650              # double 0.093367168739768802
	.quad	0x3fe15565f32f16e6              # double 0.5416745900808706
	.quad	0x3fc2a00330b4e364              # double 0.14550819280864424
	.quad	0x3fe3f6d5fa949bd2              # double 0.62388132993225498
	.quad	0x3fe45b53a637686e              # double 0.63614828552387137
	.quad	0x3fe3a379b98b42fe              # double 0.61370550383625733
	.quad	0x3fe0c3ed6c7abb1e              # double 0.52391692340265528
	.quad	0x3fd67548ad651a16              # double 0.35090844090555728
	.quad	0x3fb321f65004eb68              # double 0.074736971412603048
	.quad	0x3fccd9f5e078b780              # double 0.22540162525677587
	.quad	0x3fe48ad0c7b3b180              # double 0.64194525722773221
	.quad	0x3fe619ce575b6ca5              # double 0.69065014898241783
	.quad	0x3fdb333aef96be6e              # double 0.42500184438083621
	.quad	0x3fef5cb8c7867466              # double 0.98006857843178063
	.quad	0x3feb0c423b15798a              # double 0.84524642505475467
	.quad	0x3fd4bdaccfb40cec              # double 0.32407684596564823
	.quad	0x3fe05ace7a840447              # double 0.51108478478284602
	.quad	0x3fe780e7fbf276ce              # double 0.73448561867163575
	.quad	0x3fe41b5376323940              # double 0.62833569607918349
	.quad	0x3fcbbc1470cb3b40              # double 0.21667724139703104
	.quad	0x3fc4a6948ed6d2dc              # double 0.16133362745826829
	.quad	0x3fdd031ad5e2f7d6              # double 0.4533145035492202
	.quad	0x3fe793d8a7a00bde              # double 0.7367976449899023
	.quad	0x3fd04f8b45b6e446              # double 0.25485498245285887
	.quad	0x3fd611577e61f7e0              # double 0.3448084577756827
	.quad	0x3fc595b468485754              # double 0.16863112537310576
	.quad	0x3fdec6e2d35be9d2              # double 0.48088904037981905
	.quad	0x3fee1a51039eb306              # double 0.94071245867743936
	.quad	0x3fe7429264c5f343              # double 0.72687644655489014
	.quad	0x3fdfd658d3eb7cd6              # double 0.49745770163822323
	.quad	0x3fdbbac64d219eee              # double 0.43327481777531218
	.quad	0x3feffbc21e47d771              # double 0.99948221124826208
	.quad	0x3fee32bfb22d0eb0              # double 0.9436949234008889
	.quad	0x3febad5e0d5bf14a              # double 0.86491301163872802
	.quad	0x3fd7c921aad57d3c              # double 0.37165109332086721
	.quad	0x3fe78b148d02af3e              # double 0.7357275728331627
	.quad	0x3fcad20989019a28              # double 0.20953482808836665
	.quad	0x3fe07e8e84d77796              # double 0.51544881768835427
	.quad	0x3fdb5ba032bf6354              # double 0.42746739345380047
	.quad	0x3fd46e24efe7833c              # double 0.31922267368468105
	.quad	0x3fdec744823dc806              # double 0.48091232985382282
	.quad	0x3feaa75e983243be              # double 0.83293084836815701
	.quad	0x3fc5f15972e115c8              # double 0.17142789944970915
	.quad	0x3fe66a6b4801c14c              # double 0.70049060882414826
	.quad	0x3fd2293de2a3bf6c              # double 0.28376719601418787
	.quad	0x3fdfea8139defb16              # double 0.4986880364557903
	.quad	0x3f9bb227ef8275a0              # double 0.027046798699861818
	.quad	0x3fe3d82c99b72851              # double 0.62013845465231487
	.quad	0x3f938438119c2f40              # double 0.019059063029131851
	.quad	0x3fcd83b29ab79dd0              # double 0.23058159403374967
	.quad	0x3fbd81b652abefc8              # double 0.11526050108289987
	.quad	0x3fe4da35db57ab15              # double 0.6516370090515432
	.quad	0x3fdf1c66e8b91870              # double 0.48610851981027903
	.quad	0x3feacd32b37efd9d              # double 0.83754859025787065
	.quad	0x3fc523806f5ac3c0              # double 0.16514592587694032
	.quad	0x3fe369c496db7484              # double 0.60666112388902649
	.quad	0x3fe2ea3b97f0d9c2              # double 0.59109286952917039
	.quad	0x3fe42c05cc5c4820              # double 0.63037385858683948
	.quad	0x3fec2d5e78d6715a              # double 0.88053821183306558
	.quad	0x3fb0b396d0dbd5d8              # double 0.065240312567616754
	.quad	0x3fd3b6fddf5669ce              # double 0.30804392633731659
	.quad	0x3fc15b7868419828              # double 0.13560395327221042
	.quad	0x3fdff548850a8b12              # double 0.49934590332320383
	.quad	0x3fe223de095e8f9b              # double 0.56687833623844897
	.quad	0x3fed7da2e4ba11f5              # double 0.92158646271906142
	.quad	0x3fa4d27d474a9200              # double 0.040668406441259464
	.quad	0x3fe1cf3b8509fa2f              # double 0.5565469358842331
	.quad	0x3fea63eb2830bcc4              # double 0.82469709253009471
	.quad	0x3febe0dd35b308e7              # double 0.87119923103480523
	.quad	0x3fef946e3acaeff2              # double 0.98686896784738409
	.quad	0x3fcdaaf2478a47f8              # double 0.23177937024280459
	.quad	0x3f992388989a4c80              # double 0.024549612344867189
	.quad	0x3fc0142fb0d1f3a0              # double 0.1256160367373953
	.quad	0x3fe41d35bf3d8051              # double 0.62856566764458865
	.quad	0x3fe13992bc2c415d              # double 0.53827797653688558
	.quad	0x3fe7d0b4bc8d5505              # double 0.74422680689409104
	.quad	0x3fb7346c6e0b4178              # double 0.090643669954493578
	.quad	0x3fe9032263bf2afd              # double 0.78163260919367838
	.quad	0x3fd913aa64ec436c              # double 0.39182529311897585
	.quad	0x3fa76ae91e20f7c0              # double 0.045737538268880495
	.quad	0x3f8c083612d79f40              # double 0.013687536668797073
	.quad	0x3fa5a8e37a7cf8d0              # double 0.042304142667931921
	.quad	0x3fd6c10211841362              # double 0.35553027830638062
	.quad	0x3fd78df5c383b4f2              # double 0.36803955167017854
	.quad	0x3fd2524a8177e24a              # double 0.28627264636410088
	.quad	0x3f6d988b7bd33e00              # double 0.0036127781191692687
	.quad	0x3fd0d4af127b9e90              # double 0.26298119358987382
	.quad	0x3fc2145d229edda0              # double 0.14124645414788706
	.quad	0x3feb320cec476181              # double 0.84985967777451787
	.quad	0x3feb9a9974122929              # double 0.86262200040917947
	.quad	0x3fe19bbd7da9864a              # double 0.55026125472449761
	.quad	0x3fe7cfe8e82b7d93              # double 0.74412961335831296
	.quad	0x3fe77cd53eb1adab              # double 0.73398840184147696
	.quad	0x3fa090973d92c530              # double 0.032353140131258562
	.quad	0x3fe36da234d9ac77              # double 0.60713301012346121
	.quad	0x3fe070f16f3bdea2              # double 0.51378699994434762
	.quad	0x3fd8ac65234eafc4              # double 0.3855221600340395
	.quad	0x3fd23faae53034b4              # double 0.28513595945043879
	.quad	0x3fd70bc899207272              # double 0.36009421304496592
	.quad	0x3fdd65687ffcef68              # double 0.45931446551161637
	.quad	0x3fdf96376186f4b2              # double 0.49354347728860681
	.quad	0x3fc4a7950495b2bc              # double 0.16136419986596262
	.quad	0x3fe61be4c86a25fd              # double 0.69090499061093136
	.quad	0x3fe728b316d468b2              # double 0.72371820887499028
	.quad	0x3fea9ec58867dacb              # double 0.83188130037054842
	.quad	0x3fd6a36149e65f34              # double 0.35372192589555884
	.quad	0x3fe9009c5a36bd9f              # double 0.78132455463303419
	.quad	0x3fd21fe5a07824aa              # double 0.28319683714705468
	.quad	0x3fd1733cc2a098ce              # double 0.27265852934432366
	.quad	0x3f951e219b9c1b80              # double 0.020622754213970307
	.quad	0x3fec514114589806              # double 0.88491872762529122
	.quad	0x3fda8dee1b4a03f6              # double 0.41491272606805241
	.quad	0x3fd68b908bbae38a              # double 0.35226834912787608
	.quad	0x3fe51a8e9eb2d8a2              # double 0.65949183460067595
	.quad	0x3feecb43068a87b5              # double 0.96231223371090968
	.quad	0x3f9b37822fa3ab20              # double 0.026578935773538537
	.quad	0x3fe25a459c739dab              # double 0.57351952130277561
	.quad	0x3fece13b364efea5              # double 0.90249405486243417
	.quad	0x3fec227433ff0459              # double 0.87920580058574693
	.quad	0x3fe0547511369b3c              # double 0.51030972825979104
	.quad	0x3fe6c54023db176e              # double 0.71157843592730585
	.quad	0x3fd98854c5b13dc2              # double 0.39894599252599161
	.quad	0x3fd03c985291a60e              # double 0.25369842589734126
	.quad	0x3fed146ae0bde857              # double 0.90874236960304244
	.quad	0x3fbadb5282d45fc8              # double 0.10490909284669592
	.quad	0x3faffb0a872cc230              # double 0.062462166786989903
	.quad	0x3fca6f389127aae8              # double 0.20651919448513145
	.quad	0x3fd453b600fe151a              # double 0.31760931107449297
	.quad	0x3fdf61a214c3a146              # double 0.49033405330421365
	.quad	0x3fc0b09c9bf6a74c              # double 0.13038976302532956
	.quad	0x3feb86aadb485678              # double 0.86018889263750875
	.quad	0x3feaf6ef0c2cee96              # double 0.84264328363447549
	.quad	0x3fdca40a594fa27a              # double 0.44751223298820941
	.quad	0x3fe54e07b4c03524              # double 0.66577515890972849
	.quad	0x3fc569392b1bde64              # double 0.16727366070675764
	.quad	0x3fe6f4fe2ae3152f              # double 0.71740635277152431
	.quad	0x3fd9a4d84cc7ddc0              # double 0.40068633554571065
	.quad	0x3fe8c584eefc7305              # double 0.7741112392137387
	.quad	0x3fd8b067db331ac8              # double 0.38576694875920881
	.quad	0x3fceb8c803137ad4              # double 0.24001407766532756
	.quad	0x3fbb7b7e080547b0              # double 0.10735309310737651
	.quad	0x3fedf7ed4c6cec84              # double 0.93651451994755108
	.quad	0x3fcc8fd8fc45abb8              # double 0.22313988035179277
	.quad	0x3fea9c450a1ee328              # double 0.83157588936510241
	.quad	0x3fec707374407871              # double 0.88872692780911511
	.quad	0x3fd15608df45f492              # double 0.27087613872556304
	.quad	0x3feb151f1b775660              # double 0.8463283096741172
	.quad	0x3fa10ffa1d18edd0              # double 0.033325019885946383
	.quad	0x3febdffbfdc86871              # double 0.87109183852159167
	.quad	0x3fdb5fdebb7483f6              # double 0.42772644334951282
	.quad	0x3fe5c05564fd7953              # double 0.67972821926722771
	.quad	0x3fe6886d80c7fd0e              # double 0.70415377762393105
	.quad	0x3fd12cdd67cd906c              # double 0.26836333405504464
	.quad	0x3fd22677ea54a372              # double 0.28359792598580846
	.quad	0x3fe46fad967b77ab              # double 0.63863257781098548
	.quad	0x3fad82172b673030              # double 0.057633136795260831
	.quad	0x3fd27da0e8604222              # double 0.28891775792092933
	.quad	0x3fe72161bfde6af0              # double 0.72282493090037114
	.quad	0x3fd1013b7ed835a8              # double 0.26570021998562732
	.quad	0x3fcbaa4936bfa97c              # double 0.21613421605372796
	.quad	0x3fdb751e72826a3e              # double 0.42902337248384359
	.quad	0x3f61790122223800              # double 0.0021328947196428416
	.quad	0x3fec4ed527bce929              # double 0.88462312470736493
	.quad	0x3fe8f32cfb331c3d              # double 0.77968453466826981
	.quad	0x3fe8a060e33e14de              # double 0.76957744963933883
	.quad	0x3fcde5675b1fd2c4              # double 0.23356334638051213
	.quad	0x3fdc6f60308f4f6e              # double 0.44429783575218706
	.quad	0x3f9bfc49a5ea8e80              # double 0.027329588653300707
	.quad	0x3fc49aaf4f2448e8              # double 0.16097060551016473
	.quad	0x3fdbbbd9fb169efe              # double 0.43334054489467622
	.quad	0x3fc757768bf11d14              # double 0.18235666115854399
	.quad	0x3fcdad339349c344              # double 0.231848189275775
	.quad	0x3fd87247c1693c26              # double 0.38197511565971565
	.quad	0x3fe0135e70b07ddd              # double 0.5023643685307736
	.quad	0x3fef6e1eae55de78              # double 0.98219236421478139
	.quad	0x3fe177e1f738a662              # double 0.54588411603363007
	.quad	0x3fb208a1d1d54168              # double 0.070444215515868103
	.quad	0x3fe626064d007496              # double 0.69214167632493928
	.quad	0x3fec187478272afd              # double 0.87798522441275362
	.quad	0x3fc7aa6c59064a74              # double 0.18488840433981901
	.quad	0x3fe66d4c41e4f984              # double 0.70084202642446813
	.quad	0x3feaa4926b0a7085              # double 0.8325893488540862
	.quad	0x3feb13b143b37ec5              # double 0.84615386221772637
	.quad	0x3f794adb4aec3300              # double 0.0061749044532575237
	.quad	0x3fe99436a77d6b74              # double 0.79934246743083159
	.quad	0x3fdaeebeac71a13e              # double 0.42082182731839513
	.quad	0x3fe119e09402a78c              # double 0.53440884502673347
	.quad	0x3fefc3e90cad9d42              # double 0.99266483761031332
	.quad	0x3fb9e8a4e6ac3588              # double 0.10120611793191447
	.quad	0x3febbf92e8f34f8f              # double 0.86713548181659117
	.quad	0x3fe0991c8dc85beb              # double 0.51869037334369972
	.quad	0x3fde503d3099297c              # double 0.47364740129400906
	.quad	0x3fda977116172b4a              # double 0.41549327046657381
	.quad	0x3fe13976bc32fc57              # double 0.53826462514542583
	.quad	0x3fe798a7f9c1e122              # double 0.73738478451472056
	.quad	0x3fe1cb0a44477869              # double 0.55603516898896743
	.quad	0x3fd1be18a351632e              # double 0.27722755383506381
	.quad	0x3feed518eca54440              # double 0.96351286144102488
	.quad	0x3fd171df6a16e380              # double 0.27257523880285106
	.quad	0x3fe3e37c0fb113db              # double 0.62151911797320325
	.quad	0x3fce8ba4f8827b40              # double 0.23863660940420495
	.quad	0x3fecd55c9da46a6f              # double 0.90104513921262519
	.quad	0x3fef3b9fb500e54d              # double 0.97602830269094342
	.quad	0x3f9c9cf7ca250ea0              # double 0.0279425351266257
	.quad	0x3fd62f4bb434d00a              # double 0.34663670156737736
	.quad	0x3fee55e1c5f4b2d9              # double 0.94798363364460692
	.quad	0x3feb5370bf939ec6              # double 0.85393559853852063
	.quad	0x3fe5d53db922ce75              # double 0.68228040847175342
	.quad	0x3fbdc4c22c72d180              # double 0.11628354630631144
	.quad	0x3fe1a2de5c0cc594              # double 0.55113141993040182
	.quad	0x3fe2c915f9e6d7e3              # double 0.58704661187107054
	.quad	0x3fe9b421b434611e              # double 0.8032387275334576
	.quad	0x3fdc9ec01fbefbb2              # double 0.44718936062048009
	.quad	0x3fe79fe2b198a8a9              # double 0.73826727568418449
	.quad	0x3fe1c8c3ee7afcf9              # double 0.55575748995025187
	.quad	0x3fc667730ec129cc              # double 0.1750320264857933
	.quad	0x3fd9e9caad04515a              # double 0.40489451309374191
	.quad	0x3fc2dc8b97bacc90              # double 0.14735550793338748
	.quad	0x3fe6e85832cd19aa              # double 0.71586236879448006
	.quad	0x3fe2aab54f2167f8              # double 0.58333840804266313
	.quad	0x3fe58376fe3b8a6a              # double 0.67229795126725134
	.quad	0x3fe6cf91d26fd155              # double 0.71283808804450166
	.quad	0x3fc984976cf7f1a4              # double 0.19935887165764854
	.quad	0x3fe4749dc3a8904b              # double 0.63923538412610392
	.quad	0x3fe8ab1e2c642855              # double 0.77088841123737473
	.quad	0x3f9e1b91bd161500              # double 0.029402043500813768
	.quad	0x3fca215cb7db9d90              # double 0.20414313294825748
	.quad	0x3fed2a740fd634f3              # double 0.91143229573358864
	.quad	0x3fca2d1dd81dc0a4              # double 0.20450184872197952
	.quad	0x3fe64ec987299480              # double 0.69711758040342886
	.quad	0x3fee79619c9fc594              # double 0.95231705275198175
	.quad	0x3fd7934c804957bc              # double 0.3683654072568705
	.quad	0x3fdd256c49e035f4              # double 0.45540911879001489
	.quad	0x3feb044ff3c10231              # double 0.84427640541259141
	.quad	0x3fcf7e0f5964f774              # double 0.24603454461060503
	.quad	0x3fe5fe5e1fb484cf              # double 0.68730074112331774
	.quad	0x3fdc57ef36748bda              # double 0.44286709134956725
	.quad	0x3fc87847fc6b2ef4              # double 0.191170690776168
	.quad	0x3feff40c6632f290              # double 0.99854106865639558
	.quad	0x3fe9e87275eac9dc              # double 0.80962489157382888
	.quad	0x3fdee09eb4a2ebce              # double 0.48245971336626503
	.quad	0x3fe68b535e72508b              # double 0.70450752684202322
	.quad	0x3fecc25c991539b5              # double 0.89872579478269776
	.quad	0x3fa7279826a81e90              # double 0.045223955839955754
	.quad	0x3fe71be32f8d2778              # double 0.72215422904376592
	.quad	0x3fe57398ed475c79              # double 0.67036100715166846
	.quad	0x3fcd58869c173614              # double 0.22926409360518163
	.quad	0x3feb542e2273f77f              # double 0.85402590493298181
	.quad	0x3fe97651752cde7e              # double 0.79569313894076266
	.quad	0x3fcbb59653a4f9ec              # double 0.21647910198403453
	.quad	0x3fb9be010464efa8              # double 0.10055548054964325
	.quad	0x3fe1d5d6be84ced4              # double 0.55735337458323864
	.quad	0x3febf4c13f562f05              # double 0.87362730379524633
	.quad	0x3fd23971d68831b4              # double 0.28475614500419089
	.quad	0x3fd7f61f59f036a4              # double 0.37439712317505269
	.quad	0x3fda6e29285aa922              # double 0.41297367993196776
	.quad	0x3fd1f942463b2340              # double 0.28083855494019261
	.quad	0x3fd178d36c9644cc              # double 0.27299962619970297
	.quad	0x3feac6b28875f087              # double 0.83675505306702369
	.quad	0x3f91db7791786da0              # double 0.017438762906846983
	.quad	0x3fe1dd2489d8734b              # double 0.55824496195746443
	.quad	0x3fae34924e032190              # double 0.058994838736512567
	.quad	0x3fef75378a185627              # double 0.98305870982830334
	.quad	0x3f87603e02f01140              # double 0.011414036240247172
	.quad	0x3fb5b952ef190f68              # double 0.084859069226750017
	.quad	0x3fd2c2102f5f16ba              # double 0.29309467912785758
	.quad	0x3fdd3511adbefa18              # double 0.45636407821067015
	.quad	0x3fe91075e35241af              # double 0.78325933836645401
	.quad	0x3fe644246ed1aca3              # double 0.6958181538042435
	.quad	0x3fe6a29ca7873e7c              # double 0.7073500892674498
	.quad	0x3fe67b86fe4e8976              # double 0.70257901829999869
	.quad	0x3feb4c46019fa75d              # double 0.85306072537535338
	.quad	0x3feb0e340158cd83              # double 0.84548378241599698
	.quad	0x3fe8e5d864ae0eb6              # double 0.77805728591962153
	.quad	0x3fd29c8216637482              # double 0.29080249964119542
	.quad	0x3fe9bc60a292ab15              # double 0.80424529793285393
	.quad	0x3fe17adf92f7b34e              # double 0.54624918655972876
	.quad	0x3fbd31e0ab657308              # double 0.11404232201079989
	.quad	0x3fee84765da9d3e3              # double 0.95366972249632587
	.quad	0x3fec939165e5dcd3              # double 0.89301366712507002
	.quad	0x3fe066a6385991dd              # double 0.51253043180309599
	.quad	0x3fe340202b50c702              # double 0.60157783947053667
	.quad	0x3fe9bd2d8505687e              # double 0.80434299450577362
	.quad	0x3fe3b793b7ce8a90              # double 0.61615930461660362
	.quad	0x3fdc461b9158781e              # double 0.44177903360275816
	.quad	0x3fd020b1146118a6              # double 0.25199534406818669
	.quad	0x3fe1fff1d400a53a              # double 0.56249324232809461
	.quad	0x3fe206a30bb0017e              # double 0.5633101681014947
	.quad	0x3fe6842be853c9a1              # double 0.70363421799111248
	.quad	0x3fe9cf68ccf144e9              # double 0.8065685274870279
	.quad	0x3fef3e6c8dbe37c7              # double 0.97637012180506921
	.quad	0x3fec15e41e3f9e37              # double 0.87767225177680686
	.quad	0x3fc556c06a7ab9fc              # double 0.16670994948567841
	.quad	0x3fd7683b613f7b6c              # double 0.36573681351540333
	.quad	0x3fccd8db9d76f7cc              # double 0.22536797703463518
	.quad	0x3fd10110c651a14a              # double 0.26569003455235374
	.quad	0x3fe4468755a611ef              # double 0.63360945442451377
	.quad	0x3fef1b60e75d4a08              # double 0.97209210575448512
	.quad	0x3f948b663409b8e0              # double 0.02006301586737258
	.quad	0x3fef9512c3545ba5              # double 0.98694742346093689
	.quad	0x3fbe1c97dd78a3d0              # double 0.11762379796040467
	.quad	0x3fdec9b624c608d2              # double 0.48106149283570432
	.quad	0x3fde83a34b6bd4d2              # double 0.47678453793862474
	.quad	0x3feeb93d6bf0cabd              # double 0.96011229593417335
	.quad	0x3fdfdcde55df22ee              # double 0.49785574327374504
	.quad	0x3fed3a9bdb7c6370              # double 0.91340439670885409
	.quad	0x3fddc4974bc72862              # double 0.46512396240416909
	.quad	0x3fee130185cda036              # double 0.93982006200258783
	.quad	0x3fca6f91546bffb0              # double 0.20652977583085663
	.quad	0x3feda6fc1165b6b6              # double 0.9266338672438994
	.quad	0x3fda88a1697e5ffa              # double 0.41458926488985492
	.quad	0x3fdbcaab4d392698              # double 0.43424494305927785
	.quad	0x3fe25a05811d5b22              # double 0.57348895280560819
	.quad	0x3fe9c873cc73f03e              # double 0.80571927959636702
	.quad	0x3fe79e6e5db71abd              # double 0.73808973602066141
	.quad	0x3fc766b02bdea27c              # double 0.18282129423211646
	.quad	0x3fe8064f79f79c0e              # double 0.75077031919215798
	.quad	0x3fd7c4c55374d270              # double 0.37138493680985274
	.quad	0x3fe416738996ddc4              # double 0.6277406394282754
	.quad	0x3fe68bb71e6049b5              # double 0.70455509121739246
	.quad	0x3fe24eec186785ee              # double 0.57213406340104966
	.quad	0x3fd597a98592079a              # double 0.33738172573077352
	.quad	0x3feebff924e91014              # double 0.96093423089087304
	.quad	0x3fc2dbf98c1ec12c              # double 0.14733809797099562
	.quad	0x3fb8f89c6519b998              # double 0.097543501551376699
	.quad	0x3fe9d7f6c80cc23d              # double 0.80761279175027989
	.quad	0x3fda350119f2c012              # double 0.40948512586601382
	.quad	0x3fdb714166eb5d76              # double 0.42878756571504739
	.quad	0x3fee613bbd5eaa55              # double 0.94936930643354833
	.quad	0x3fe7983271705c60              # double 0.73732874065434472
	.quad	0x3fb9197818aa0a08              # double 0.098044878026520732
	.quad	0x3fb45541527705b8              # double 0.079425890572585867
	.quad	0x3fdf4183bc066388              # double 0.48837369310199863
	.quad	0x3fc7fbee11270390              # double 0.18737579190749587
	.quad	0x3fbc2cbd4ea79aa0              # double 0.11005767030983771
	.quad	0x3feeb44c836f5873              # double 0.95950914069068315
	.quad	0x3fc1a4ebd2eec79c              # double 0.13784549521875256
	.quad	0x3fab60cb2d65a590              # double 0.053472852031357765
	.quad	0x3fc0c6d109b9c408              # double 0.13106739973912362
	.quad	0x3fd6b659d974e3ec              # double 0.35487982021328324
	.quad	0x3fa7bca632a34580              # double 0.046361154252404724
	.quad	0x3fc577d6345d7860              # double 0.16771962696924714
	.quad	0x3fe2ebbdbc2f4715              # double 0.59127699618167873
	.quad	0x3fd26a3c7518ed22              # double 0.28773414073266868
	.quad	0x3fe592530a54642a              # double 0.67411186234960963
	.quad	0x3fd1142ac5a91cae              # double 0.26685590079109545
	.quad	0x3fced893781e280c              # double 0.24098437657477267
	.quad	0x3feef2e14a52fbcd              # double 0.96714844242512187
	.quad	0x3fa487369d1a7770              # double 0.040094095876368807
	.quad	0x3fec533a178d8a57              # double 0.88515953636335609
	.quad	0x3f7782a3cec95200              # double 0.0057398222675897337
	.quad	0x3fe247c55f835888              # double 0.57126110701462185
	.quad	0x3fe164ac1c152a16              # double 0.54353909954926638
	.quad	0x3fd31ef7706a9e5a              # double 0.29876504877254251
	.quad	0x3fe958efbac45815              # double 0.79210649946139944
	.quad	0x3fcc56a5892df364              # double 0.22139424513070616
	.quad	0x3fe6d5752257561d              # double 0.71355683047540064
	.quad	0x3fd3767d6f0652d6              # double 0.30410705415969852
	.quad	0x3fe1d0b0f727e40c              # double 0.55672500870343944
	.quad	0x3fd43e1644565f74              # double 0.31628948854039796
	.quad	0x3fc93e4fdd8424cc              # double 0.19721411052913707
	.quad	0x3fe8997645a87cdb              # double 0.76873315434559275
	.quad	0x3fe37896576ccab5              # double 0.60847012591542315
	.quad	0x3fbe13c6bcf35a18              # double 0.11748926270534132
	.quad	0x3fed19e97c15b24f              # double 0.90941309199622278
	.quad	0x3fe12a0262593e38              # double 0.53637808998786962
	.quad	0x3f718a963bb5d680              # double 0.0042825573431081176
	.quad	0x3fae0f0562a10600              # double 0.058708351411507209
	.quad	0x3feb4e0bf9427dd2              # double 0.85327719386617162
	.quad	0x3fdf1ad093f26ebe              # double 0.48601164291333621
	.quad	0x3fe1c0da74b3e5dd              # double 0.55479166787625511
	.quad	0x3fe2b84f4a686ed2              # double 0.58499874623108838
	.quad	0x3fe5d90188163e67              # double 0.68273998813124315
	.quad	0x3fe3772d20abb8f9              # double 0.60829788571370991
	.quad	0x3fe49de95aab9bef              # double 0.64427631100704541
	.quad	0x3fea755e115aea90              # double 0.82682708158184148
	.quad	0x3fe5142bb89951b3              # double 0.65871225409005374
	.quad	0x3fe614cc765050d0              # double 0.69003890140677449
	.quad	0x3fc38cbac77ea6cc              # double 0.15273222676233045
	.quad	0x3fc1b8bc3fb37c28              # double 0.13845017538457793
	.quad	0x3fd09395e1e9c864              # double 0.25900790273511221
	.quad	0x3fe4d66d7c4ccc78              # double 0.65117525365202678
	.quad	0x3febd1775ed3fc24              # double 0.86931961556536352
	.quad	0x3fe2ef932677653b              # double 0.59174497139898763
	.quad	0x3fdc3fe24338554c              # double 0.44139916004617841
	.quad	0x3fb0e7456e7076a0              # double 0.066028918707582651
	.quad	0x3fc9678bf2a90f98              # double 0.1984724936356741
	.quad	0x3fe6ba32c754321f              # double 0.71022929126189982
	.quad	0x3fe407a184ecb066              # double 0.62593151056126994
	.quad	0x3fedaa090c2a9d40              # double 0.92700626732122515
	.quad	0x3fe8590436d0e261              # double 0.76086626726380413
	.quad	0x3fd5a6ce887107b6              # double 0.33830607723586625
	.quad	0x3fe68bd46e3adf27              # double 0.70456906823435339
	.quad	0x3fd53fdaa6385fdc              # double 0.33202234489863058
	.quad	0x3febd7acad3c1484              # double 0.8700774558534623
	.quad	0x3faee8e75e90b230              # double 0.060370664876561952
	.quad	0x3feef95af9ad9039              # double 0.96793888821822016
	.quad	0x3fed0ca57986c335              # double 0.90779374824169301
	.quad	0x3fdd4ea22e6bc8d8              # double 0.45792440923027078
	.quad	0x3fed8ee490a6b0fa              # double 0.92369297268081074
	.quad	0x3f9b21411184a700              # double 0.026494042104935112
	.quad	0x3fe2304312b846a5              # double 0.56839135795799633
	.quad	0x3feed5920ae0c02d              # double 0.96357061504932561
	.quad	0x3fde6ceb5687ca62              # double 0.47539790582883346
	.quad	0x3fe82b81c242d571              # double 0.75531089727034673
	.quad	0x3fe8680b4c583da0              # double 0.76270069991180733
	.quad	0x3fe3b09b219ff54b              # double 0.61530834739066032
	.quad	0x3fc81f76fcdde614              # double 0.18846022936831786
	.quad	0x3fd35198ac6dab0a              # double 0.30185524786672657
	.quad	0x3fe6f8810a459401              # double 0.71783496862610729
	.quad	0x3f80d8d41a4fc540              # double 0.0082260675935424965
	.quad	0x3febc97198e8ae48              # double 0.86834030022641517
	.quad	0x3fda64c8442086ea              # double 0.41240126278908795
	.quad	0x3fc1cffe32732f50              # double 0.13915994132400522
	.quad	0x3fef2c05ee787bca              # double 0.97412392212196974
	.quad	0x3fefb4aa4045d0c9              # double 0.99080383828415918
	.quad	0x3fed62999249023a              # double 0.91828611918760505
	.quad	0x3fec295c3551a42e              # double 0.88004885114526643
	.quad	0x3fe7917ec7dbc72d              # double 0.73651064905991392
	.quad	0x3fdc94537a84e0e8              # double 0.44655310597182885
	.quad	0x3fdda411460e846a              # double 0.46313888398623837
	.quad	0x3feff9c179d6636b              # double 0.99923776432397681
	.quad	0x3fdcaac041811f5e              # double 0.44792181393539987
	.quad	0x3fe9c56dd2f11d8a              # double 0.80535021972257081
	.quad	0x3fe103dd2262e17d              # double 0.53172165599885057
	.quad	0x3fe7838cbd013589              # double 0.73480832018837916
	.quad	0x3fe81235df6a0bda              # double 0.75222295413584139
	.quad	0x3f9eef14740839e0              # double 0.030208892423667311
	.quad	0x3fb04b5236be6bd0              # double 0.06364930950660086
	.quad	0x3fd178eee8436f8c              # double 0.27300617868399324
	.quad	0x3fd4e98b6111f096              # double 0.32675442199229943
	.quad	0x3fc6b0fc564549b8              # double 0.17727617466387158
	.quad	0x3fb2b5bf10a54688              # double 0.073085729183072101
	.quad	0x3fd1d2ce2b420750              # double 0.27849153732687615
	.quad	0x3fee4990db982a87              # double 0.94648020638972319
	.quad	0x3fe19f01dc07520b              # double 0.55066006635985454
	.quad	0x3fc68cfc8d99ed2c              # double 0.17617756761669889
	.quad	0x3fe1f9a0c035068e              # double 0.5617221597714932
	.quad	0x3f9a618bd4516ce0              # double 0.025762734254709652
	.quad	0x3f9c03d6195b88a0              # double 0.027358384416296233
	.quad	0x3f972f8ab9f18b60              # double 0.022642295455067241
	.quad	0x3fe4e09ba902a382              # double 0.65241797456575079
	.quad	0x3fd60c66b5bfcab0              # double 0.34450690983718868
	.quad	0x3f9fb5c34bb80800              # double 0.030966807838929356
	.quad	0x3fd2c93142779e00              # double 0.29352981081908069
	.quad	0x3fe7dc7833fb403c              # double 0.745662786031978
	.quad	0x3fe65f490ed2b8f2              # double 0.69913151641028848
	.quad	0x3fe0768475603702              # double 0.51446745800942062
	.quad	0x3fed3c47802b4535              # double 0.91360831292164468
	.quad	0x3feedb161bfdc14b              # double 0.96424394099271049
	.quad	0x3fac6bf25a5af8a0              # double 0.055511067895609445
	.quad	0x3fe72d5f0eeb1cb5              # double 0.72428849138022733
	.quad	0x3fdeef3eda5fd478              # double 0.48335238767260291
	.quad	0x3fe52c6de8bb1fa6              # double 0.66167350249542234
	.quad	0x3fe23db60a1f4c90              # double 0.57003309227947518
	.quad	0x3fe3d069a704e1f7              # double 0.61919100399887739
	.quad	0x3fd3407b4456d82e              # double 0.30081063913110284
	.quad	0x3fdb8d81f66c2ef6              # double 0.43051194252687652
	.quad	0x3fa5ab4db11cbb50              # double 0.042322566862245226
	.quad	0x3fbef87ab28fbd30              # double 0.12097899302874704
	.quad	0x3fc1075cc3888e14              # double 0.13303718135385678
	.quad	0x3fe5c58dfac92431              # double 0.68036555272659005
	.quad	0x3fe6db6fb88bdb53              # double 0.71428667110635968
	.quad	0x3f9d897beb8b2840              # double 0.028844772578658473
	.quad	0x3fedab9c7055c237              # double 0.92719861927441272
	.quad	0x3fe057c69d5f6b30              # double 0.51071482407437507
	.quad	0x3fbad8c06453d7e8              # double 0.10486986588861635
	.quad	0x3fa2ba5e6e1bea00              # double 0.03657813161949619
	.quad	0x3fac14a226202ea0              # double 0.054844920305268774
	.quad	0x3fd567c4809f3e14              # double 0.33445847092386427
	.quad	0x3fef038fa323f899              # double 0.96918470252400645
	.quad	0x3fec5b8ba9950a84              # double 0.88617499467393701
	.quad	0x3fd7efbdbdd4cade              # double 0.37400764024930122
	.quad	0x3fb03b5253830c28              # double 0.063405175579689499
	.quad	0x3fe84de65823734e              # double 0.75950925077959552
	.quad	0x3fd9cc11cfe40926              # double 0.40308041860420685
	.quad	0x3fe14f5a65c371f5              # double 0.54093665958094894
	.quad	0x3fe2df5319f335f0              # double 0.58976130550735029
	.quad	0x3fd3403356c28850              # double 0.3007934901489806
	.quad	0x3feb9969f780d37c              # double 0.86247728672479651
	.quad	0x3fefb114541db76e              # double 0.99036613873407275
	.quad	0x3fea6993931ec89a              # double 0.82538775190757296
	.quad	0x3fe86b90d04cc0c6              # double 0.76313057597692402
	.quad	0x3fd1166d45dbcea0              # double 0.2669938261235334
	.quad	0x3fdc1e8fefa09234              # double 0.43936537171456114
	.quad	0x3fc20cf42deedc8c              # double 0.14102031939339488
	.quad	0x3fe8c21a1608edf0              # double 0.77369407943427682
	.quad	0x3fbc0f73964037a8              # double 0.10961077135308861
	.quad	0x3fe0b1658c349391              # double 0.52165486701834329
	.quad	0x3fd3f45d587e60ac              # double 0.31178983346900213
	.quad	0x3fe452144820a161              # double 0.63501943671603212
	.quad	0x3feb7b9dd2627275              # double 0.85883990374311614
	.quad	0x3fd1cc74e7ea4f66              # double 0.27810404441810588
	.quad	0x3fd9556e60d7aa12              # double 0.39583930451650062
	.quad	0x3fea561cda509910              # double 0.82301180495849913
	.quad	0x3fde7ff650038df2              # double 0.47656019033294605
	.quad	0x3feee8509bd14785              # double 0.96585874970536222
	.quad	0x3fed003723039f8f              # double 0.9062762912626442
	.quad	0x3fec7c39832c5252              # double 0.89016414279701395
	.quad	0x3fc5510b23463678              # double 0.1665357515561714
	.quad	0x3fc8c95fd4656d30              # double 0.19364545699031899
	.quad	0x3fd7be93819fbe70              # double 0.37100684794038497
	.quad	0x3fda9624d26518a4              # double 0.41541405245187435
	.quad	0x3feb7cae254ddc2f              # double 0.8589697578999046
	.quad	0x3fb4b6b85edcf718              # double 0.080913088951060863
	.quad	0x3fea5b4bfe770bb7              # double 0.82364463520240505
	.quad	0x3fd978fc7c93effe              # double 0.39800941625412622
	.quad	0x3fc0769a31389074              # double 0.12861945536963371
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
