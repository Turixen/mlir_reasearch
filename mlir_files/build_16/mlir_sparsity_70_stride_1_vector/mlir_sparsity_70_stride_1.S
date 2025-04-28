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
	.quad	29                              # 0x1d
	.quad	61                              # 0x3d
	.quad	94                              # 0x5e
	.quad	124                             # 0x7c
	.quad	150                             # 0x96
	.quad	185                             # 0xb9
	.quad	214                             # 0xd6
	.quad	240                             # 0xf0
	.quad	266                             # 0x10a
	.quad	300                             # 0x12c
	.quad	332                             # 0x14c
	.quad	367                             # 0x16f
	.quad	395                             # 0x18b
	.quad	424                             # 0x1a8
	.quad	459                             # 0x1cb
	.quad	493                             # 0x1ed
	.quad	532                             # 0x214
	.quad	556                             # 0x22c
	.quad	596                             # 0x254
	.quad	625                             # 0x271
	.quad	658                             # 0x292
	.quad	686                             # 0x2ae
	.quad	725                             # 0x2d5
	.quad	757                             # 0x2f5
	.quad	787                             # 0x313
	.quad	810                             # 0x32a
	.quad	837                             # 0x345
	.quad	866                             # 0x362
	.quad	895                             # 0x37f
	.quad	927                             # 0x39f
	.quad	954                             # 0x3ba
	.quad	979                             # 0x3d3
	.quad	1007                            # 0x3ef
	.quad	1033                            # 0x409
	.quad	1063                            # 0x427
	.quad	1094                            # 0x446
	.quad	1125                            # 0x465
	.quad	1160                            # 0x488
	.quad	1191                            # 0x4a7
	.quad	1223                            # 0x4c7
	.quad	1255                            # 0x4e7
	.quad	1287                            # 0x507
	.quad	1316                            # 0x524
	.quad	1357                            # 0x54d
	.quad	1381                            # 0x565
	.quad	1414                            # 0x586
	.quad	1444                            # 0x5a4
	.quad	1472                            # 0x5c0
	.quad	1498                            # 0x5da
	.quad	1535                            # 0x5ff
	.quad	1561                            # 0x619
	.quad	1584                            # 0x630
	.quad	1613                            # 0x64d
	.quad	1642                            # 0x66a
	.quad	1665                            # 0x681
	.quad	1695                            # 0x69f
	.quad	1721                            # 0x6b9
	.quad	1753                            # 0x6d9
	.quad	1784                            # 0x6f8
	.quad	1813                            # 0x715
	.quad	1839                            # 0x72f
	.quad	1861                            # 0x745
	.quad	1905                            # 0x771
	.quad	1933                            # 0x78d
	.quad	1960                            # 0x7a8
	.quad	1982                            # 0x7be
	.quad	2011                            # 0x7db
	.quad	2045                            # 0x7fd
	.quad	2079                            # 0x81f
	.quad	2114                            # 0x842
	.quad	2138                            # 0x85a
	.quad	2172                            # 0x87c
	.quad	2198                            # 0x896
	.quad	2226                            # 0x8b2
	.quad	2253                            # 0x8cd
	.quad	2291                            # 0x8f3
	.quad	2324                            # 0x914
	.quad	2357                            # 0x935
	.quad	2382                            # 0x94e
	.quad	2415                            # 0x96f
	.quad	2447                            # 0x98f
	.quad	2472                            # 0x9a8
	.quad	2506                            # 0x9ca
	.quad	2532                            # 0x9e4
	.quad	2563                            # 0xa03
	.quad	2597                            # 0xa25
	.quad	2627                            # 0xa43
	.quad	2659                            # 0xa63
	.quad	2683                            # 0xa7b
	.quad	2707                            # 0xa93
	.quad	2732                            # 0xaac
	.quad	2755                            # 0xac3
	.quad	2780                            # 0xadc
	.quad	2810                            # 0xafa
	.quad	2836                            # 0xb14
	.quad	2871                            # 0xb37
	.quad	2902                            # 0xb56
	.quad	2936                            # 0xb78
	.quad	2967                            # 0xb97
	.quad	3000                            # 0xbb8
	.size	.L__constant_101xindex, 808

	.type	.L__constant_3000xindex,@object # @__constant_3000xindex
	.p2align	6, 0x0
.L__constant_3000xindex:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	23                              # 0x17
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	92                              # 0x5c
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	3                               # 0x3
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	91                              # 0x5b
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	68                              # 0x44
	.quad	75                              # 0x4b
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	79                              # 0x4f
	.quad	85                              # 0x55
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	71                              # 0x47
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	20                              # 0x14
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	14                              # 0xe
	.quad	17                              # 0x11
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	33                              # 0x21
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	18                              # 0x12
	.quad	25                              # 0x19
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	67                              # 0x43
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	74                              # 0x4a
	.quad	89                              # 0x59
	.quad	94                              # 0x5e
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	34                              # 0x22
	.quad	39                              # 0x27
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	91                              # 0x5b
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	8                               # 0x8
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	16                              # 0x10
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	72                              # 0x48
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	18                              # 0x12
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	31                              # 0x1f
	.quad	38                              # 0x26
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	89                              # 0x59
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	78                              # 0x4e
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	45                              # 0x2d
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	21                              # 0x15
	.quad	26                              # 0x1a
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	91                              # 0x5b
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	24                              # 0x18
	.quad	28                              # 0x1c
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	41                              # 0x29
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	19                              # 0x13
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	91                              # 0x5b
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	48                              # 0x30
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	79                              # 0x4f
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	13                              # 0xd
	.quad	17                              # 0x11
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	33                              # 0x21
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	47                              # 0x2f
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	62                              # 0x3e
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	23                              # 0x17
	.quad	29                              # 0x1d
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	86                              # 0x56
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	22                              # 0x16
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	13                              # 0xd
	.quad	16                              # 0x10
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	49                              # 0x31
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	8                               # 0x8
	.quad	10                              # 0xa
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	50                              # 0x32
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	86                              # 0x56
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	59                              # 0x3b
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	23                              # 0x17
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	80                              # 0x50
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	22                              # 0x16
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	37                              # 0x25
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	59                              # 0x3b
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	73                              # 0x49
	.quad	77                              # 0x4d
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	19                              # 0x13
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	76                              # 0x4c
	.quad	82                              # 0x52
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	44                              # 0x2c
	.quad	51                              # 0x33
	.quad	55                              # 0x37
	.quad	62                              # 0x3e
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	97                              # 0x61
	.quad	98                              # 0x62
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	63                              # 0x3f
	.quad	67                              # 0x43
	.quad	70                              # 0x46
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	83                              # 0x53
	.quad	87                              # 0x57
	.quad	91                              # 0x5b
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	97                              # 0x61
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	56                              # 0x38
	.quad	61                              # 0x3d
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	82                              # 0x52
	.quad	87                              # 0x57
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	22                              # 0x16
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	46                              # 0x2e
	.quad	50                              # 0x32
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	59                              # 0x3b
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	65                              # 0x41
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	70                              # 0x46
	.quad	71                              # 0x47
	.quad	73                              # 0x49
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	4                               # 0x4
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	44                              # 0x2c
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	61                              # 0x3d
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	85                              # 0x55
	.quad	86                              # 0x56
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	19                              # 0x13
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	68                              # 0x44
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	98                              # 0x62
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
	.quad	0x3fbbe5c7ca647b80              # double 0.10897492114280105
	.quad	0x3fe7723c0af83ace              # double 0.7326946462870525
	.quad	0x3fb61a2607fc3088              # double 0.086336495351306053
	.quad	0x3f8e1bf6a0f40740              # double 0.014701773440268462
	.quad	0x3febf4508329c1e8              # double 0.87357354753299621
	.quad	0x3fe5a89ce5597ef2              # double 0.67683262629358709
	.quad	0x3feda75d84ffd561              # double 0.92668033577380637
	.quad	0x3fe9827509f0d960              # double 0.7971749490887241
	.quad	0x3fd3e1fe3a1293d6              # double 0.31066852255963562
	.quad	0x3fd734d20f501cf6              # double 0.36259891028789981
	.quad	0x3feb1d194351cd5d              # double 0.84730208538386942
	.quad	0x3fe0592ea6e4ba54              # double 0.51088650318508622
	.quad	0x3feb7c3ec065ed9c              # double 0.85891664102330222
	.quad	0x3fe4171da678f58f              # double 0.62782175554427677
	.quad	0x3fe38cceac140a49              # double 0.61093839272536699
	.quad	0x3fe19364b00452f6              # double 0.5492423475103283
	.quad	0x3fc7b57f8e4ab128              # double 0.18522638748016473
	.quad	0x3fa2e6d7e3746b20              # double 0.036917444720719894
	.quad	0x3fec95e75941b18c              # double 0.89329879219944663
	.quad	0x3f9cc5bf0ed2eb80              # double 0.028098092345981041
	.quad	0x3fe675319f6edba5              # double 0.70180588855042869
	.quad	0x3fdf9d78627d754e              # double 0.49398622148676885
	.quad	0x3fee7da97a912ade              # double 0.95283960284117675
	.quad	0x3fec417c5b4280e2              # double 0.88299386810470204
	.quad	0x3fe4450cc7f24bac              # double 0.6334289460377156
	.quad	0x3fc6af3c62de014c              # double 0.17722277476787907
	.quad	0x3fdbc4526c2a902c              # double 0.4338575416861683
	.quad	0x3fe6000b7a1f62ed              # double 0.68750547267981477
	.quad	0x3fe424b632a293af              # double 0.62948140992795298
	.quad	0x3fd228505b687656              # double 0.28371056486671387
	.quad	0x3fe8e4c3c3b63725              # double 0.7779253790374453
	.quad	0x3fefb7b50ff702a2              # double 0.99117520445004836
	.quad	0x3fd76fe9a5a66ba0              # double 0.3662056081463394
	.quad	0x3fed81147c621c0b              # double 0.92200683873750344
	.quad	0x3fd067544631a4dc              # double 0.25630671362757851
	.quad	0x3fe0c0afa75de719              # double 0.52352125824765772
	.quad	0x3f8d067b5556cbc0              # double 0.014172519246903437
	.quad	0x3fda1fe893426c26              # double 0.40819754010016351
	.quad	0x3fc0b33d6ab9c7a8              # double 0.13046996794906573
	.quad	0x3fd074008dcfc5a8              # double 0.2570802101973535
	.quad	0x3fec3dbd92c0156e              # double 0.88253668462918511
	.quad	0x3fbbd2a111760980              # double 0.10868269611640891
	.quad	0x3fe07242c8b22e31              # double 0.51394786070290455
	.quad	0x3fe5612267b80bf9              # double 0.66810722596744576
	.quad	0x3fbd1f1b00911a50              # double 0.11375588191831665
	.quad	0x3fe36e58370e247c              # double 0.60721979859330544
	.quad	0x3fc00534f9675d78              # double 0.12515890291136222
	.quad	0x3fe59a9b3507907b              # double 0.67512283665975248
	.quad	0x3fc54265a624ea10              # double 0.16608877766141505
	.quad	0x3fd05cee6fc64e14              # double 0.25567208209506131
	.quad	0x3fda2cc0e88b90e4              # double 0.40898153981676288
	.quad	0x3fe16981bd26c906              # double 0.54412924712804123
	.quad	0x3fb82d81fb130d38              # double 0.094444392964807444
	.quad	0x3fe61e31cbf27503              # double 0.69118585427682466
	.quad	0x3fe2d932f54fab2a              # double 0.58901355659813714
	.quad	0x3fbdb77bcabad4c8              # double 0.11608098697145686
	.quad	0x3fef1462d3aa3f74              # double 0.97123853054834663
	.quad	0x3fe394daad628ee9              # double 0.6119206797052047
	.quad	0x3fe042d2d30745ac              # double 0.50815716949926104
	.quad	0x3fedbdf3bdaca4e9              # double 0.9294375137880283
	.quad	0x3fddd393811376fc              # double 0.46603858571130252
	.quad	0x3feed95b69b836ec              # double 0.96403284691197432
	.quad	0x3fcf42ec68c13620              # double 0.2442298423288074
	.quad	0x3fead998fa26acc6              # double 0.83906220300323109
	.quad	0x3fb309ad21359f28              # double 0.074366398437288539
	.quad	0x3feef076c6a61b22              # double 0.96685351179698764
	.quad	0x3fa9443c76b88710              # double 0.049348725788389669
	.quad	0x3fefe9266db63bdb              # double 0.99721070697875846
	.quad	0x3fd1c5dffba9d39a              # double 0.27770232750418133
	.quad	0x3fe9d6a93169ec7d              # double 0.80745372439504559
	.quad	0x3fe59c8a7b369a7e              # double 0.67535900178047803
	.quad	0x3f66bfb4ebc86900              # double 0.002776959763889697
	.quad	0x3fbb009c23576460              # double 0.10547805655314013
	.quad	0x3fc93a1f5c7db0e4              # double 0.19708625808869507
	.quad	0x3fe14025e2008ee5              # double 0.53908056393671855
	.quad	0x3fe39226f52993c7              # double 0.61159084208758763
	.quad	0x3fc82dcc90afc48c              # double 0.18889767708563843
	.quad	0x3fe3dff818b4c49f              # double 0.62108998132147863
	.quad	0x3fed08432e891fd5              # double 0.90725859726898739
	.quad	0x3fdfce5abef2134e              # double 0.49696987769157352
	.quad	0x3fd124a42aabfb9e              # double 0.26786140601319086
	.quad	0x3fdff6db823043fa              # double 0.49944198335384693
	.quad	0x3fd944575565a6fe              # double 0.39479621257360964
	.quad	0x3f6dfef50c373c00              # double 0.0036616121376265021
	.quad	0x3fd08feef2d8e78e              # double 0.25878499713473324
	.quad	0x3fd0c0d70d39e230              # double 0.26177002231227942
	.quad	0x3feb5cb877c7cf9f              # double 0.85506842989569865
	.quad	0x3fc826e2cc02d660              # double 0.18868670426825229
	.quad	0x3fe128a7b2c11d61              # double 0.5362127772613513
	.quad	0x3fdffcf95a6efe94              # double 0.49981530982402345
	.quad	0x3fee450e273018b2              # double 0.94592960027582351
	.quad	0x3fe5a3ccb85ebcb3              # double 0.67624507913378407
	.quad	0x3fc78f4975cc8f0c              # double 0.18406027080447307
	.quad	0x3fe59abba63037ae              # double 0.67513830622350723
	.quad	0x3fee65245b05d9f4              # double 0.94984643724347828
	.quad	0x3fd800f66a6185ee              # double 0.37505875004543909
	.quad	0x3feeb0d229ed641d              # double 0.95908458889892111
	.quad	0x3fef75499cc5d021              # double 0.98306732768697113
	.quad	0x3fc105cec65a3a5c              # double 0.13298973736933106
	.quad	0x3fead864c37f91af              # double 0.83891523535981161
	.quad	0x3fec99d4450d9adc              # double 0.89377797591154317
	.quad	0x3fdf8ee0bbf91556              # double 0.49309557301270013
	.quad	0x3fe3d6de6b4e5d83              # double 0.61997910459733452
	.quad	0x3fee704ce55098dc              # double 0.95120854175618374
	.quad	0x3fe24979fe61dbb6              # double 0.57146930393252293
	.quad	0x3feff2e3f0ed391f              # double 0.99839970642077335
	.quad	0x3fe5613d006bed5f              # double 0.66811990816442435
	.quad	0x3febc777983252e4              # double 0.86809901929754262
	.quad	0x3fac56f06cae5110              # double 0.055350793139185339
	.quad	0x3fed7104ad8aefe0              # double 0.92004617590964343
	.quad	0x3fe9a9523ba123c2              # double 0.80191909452798193
	.quad	0x3fdfe600c483e664              # double 0.4984132689565739
	.quad	0x3feaba9de61e6205              # double 0.83528037018828682
	.quad	0x3fe47524e70ffc21              # double 0.63929982308753008
	.quad	0x3fd44d85ae60bc30              # double 0.31723157910431876
	.quad	0x3fe8a7e29af4d996              # double 0.77049379601412471
	.quad	0x3fa98c812f68e3c0              # double 0.049900090253181428
	.quad	0x3fe2a4c1e7ba4a8f              # double 0.58261199244800987
	.quad	0x3fe036f4b28c5fba              # double 0.5067084777137929
	.quad	0x3fbbc0565c96dad8              # double 0.10840358505707159
	.quad	0x3fdf15d9f5e57b6a              # double 0.48570870412179679
	.quad	0x3f706c257ef67100              # double 0.0040093865094628089
	.quad	0x3fc6036b4b809278              # double 0.17197934328682485
	.quad	0x3fc1199783f9359c              # double 0.13359350151078508
	.quad	0x3fe7e239c4340378              # double 0.74636543579991521
	.quad	0x3fdbd491ea759854              # double 0.43484924217626042
	.quad	0x3fd4f6044f69b194              # double 0.32751567607081111
	.quad	0x3fe5de41addf31c5              # double 0.6833809276518471
	.quad	0x3fd45dd1364c7914              # double 0.31822614958390827
	.quad	0x3fe93ddb6bf51ba5              # double 0.78880091748657277
	.quad	0x3fe6903de70c5345              # double 0.70510764242735802
	.quad	0x3fdd0153114060f4              # double 0.45320583996500763
	.quad	0x3feb73da724849cc              # double 0.85789224930550167
	.quad	0x3feb5f3849deaffa              # double 0.85537352016171941
	.quad	0x3fb61480fd187380              # double 0.086250364104172305
	.quad	0x3fd71419f8e7c3cc              # double 0.36060189540063159
	.quad	0x3fb268540ed025d8              # double 0.07190442430159949
	.quad	0x3fd9d1250f8adec8              # double 0.40339018361872236
	.quad	0x3fd0f2c625b45e00              # double 0.26481774980626938
	.quad	0x3fd45978da2e31ca              # double 0.31796094233211802
	.quad	0x3fd78f9c6042da80              # double 0.36814031029226868
	.quad	0x3fb543481a96c850              # double 0.083057886592343921
	.quad	0x3fd049a6421161ee              # double 0.25449520542090809
	.quad	0x3fd9d39ddda875a6              # double 0.40354105612081026
	.quad	0x3fec66b35184313a              # double 0.88753667756240096
	.quad	0x3fe76cbfe065dee7              # double 0.73202508762093721
	.quad	0x3fe4bcb99ceabb1a              # double 0.64803772590480269
	.quad	0x3fc61fb15bbee848              # double 0.17284218768856108
	.quad	0x3fe81606ef8e7652              # double 0.75268885410668873
	.quad	0x3f9dbef6ed68d600              # double 0.029048784485175005
	.quad	0x3fe03550e28f3ef1              # double 0.50650829553521082
	.quad	0x3fbed58efb1382e8              # double 0.12044614438810763
	.quad	0x3fe43313b76dab0e              # double 0.63123498750550922
	.quad	0x3fd4cac1708b3ca0              # double 0.32487522116293555
	.quad	0x3fea62e9646ffeca              # double 0.82457418076224909
	.quad	0x3fc544bf28ae48d8              # double 0.16616048323027743
	.quad	0x3fe40d8e86007ae1              # double 0.62665487453690727
	.quad	0x3fa20bf7da1b9c10              # double 0.03524755990456907
	.quad	0x3fd79a95950ae074              # double 0.36881007723741921
	.quad	0x3fefca8eb885e734              # double 0.99347625770244585
	.quad	0x3fc6476e4f2ae300              # double 0.17405489793397777
	.quad	0x3fdb20fae85c91da              # double 0.42388794604837943
	.quad	0x3fe509b1d2fd8bb8              # double 0.65743342598977161
	.quad	0x3fd3ff3402f5370a              # double 0.31245136536459539
	.quad	0x3fda73d96e287a82              # double 0.41332088239315834
	.quad	0x3fc07c3ba1e5862c              # double 0.12879128842455267
	.quad	0x3fe9c0a8f1a20a13              # double 0.80476805871905055
	.quad	0x3fef1d559ebd596b              # double 0.97233086589657824
	.quad	0x3fd21feae34a091e              # double 0.2831980914708242
	.quad	0x3feb17d0b8b2cb4f              # double 0.84665714334401254
	.quad	0x3fe41dad15bd094f              # double 0.62862257238183783
	.quad	0x3fcc3718e7b3c8a4              # double 0.22043143571460633
	.quad	0x3fb1d1082f551640              # double 0.069595824771647052
	.quad	0x3fb87c496b0a47f8              # double 0.095646465905048106
	.quad	0x3fe1712a8e6b7404              # double 0.54506423775058055
	.quad	0x3feac0e705ebf198              # double 0.83604766041348721
	.quad	0x3fe22ee916dd1d4a              # double 0.56822638001987369
	.quad	0x3fdab01c236b1d5a              # double 0.4169988962061858
	.quad	0x3fec301a541b5e79              # double 0.88087192942744175
	.quad	0x3fd0aa8f154828bc              # double 0.26041009023959893
	.quad	0x3fd7eb0136b224a6              # double 0.37371855107682916
	.quad	0x3fe571dc76060a25              # double 0.67014906932337637
	.quad	0x3fee7d682ff59ca6              # double 0.95280846945833697
	.quad	0x3fcd819ded18305c              # double 0.23051809384230892
	.quad	0x3fed21eb3f164cc8              # double 0.91039049455357546
	.quad	0x3fa53f0da6f2edb0              # double 0.04149668372107429
	.quad	0x3fc8d1225691c10c              # double 0.19388226725596558
	.quad	0x3fc06580c9e479f8              # double 0.12809762819320247
	.quad	0x3fee1e9ae30a9c76              # double 0.94123596519501862
	.quad	0x3fec2d53b4e72b6e              # double 0.88053307850473828
	.quad	0x3fea8e7401d76d43              # double 0.829889300915433
	.quad	0x3fe1cc7e417c1073              # double 0.55621254720655455
	.quad	0x3fe062057bbb8f95              # double 0.51196550528082929
	.quad	0x3fb293ae38fc4e88              # double 0.072565926468366126
	.quad	0x3fc3c83cf827bfc4              # double 0.15454828373867546
	.quad	0x3fd8a7fc0b101936              # double 0.38525296287879784
	.quad	0x3fe5adac7a3b8372              # double 0.67745040772943654
	.quad	0x3fe083a4221a7ae5              # double 0.51606947575404816
	.quad	0x3fdf8fa6a688176a              # double 0.4931427599225261
	.quad	0x3fe57148aaa6dec5              # double 0.67007859545170645
	.quad	0x3fd0370e172f84da              # double 0.25336029304714958
	.quad	0x3fbf3a9e541aa390              # double 0.12198819688150153
	.quad	0x3fcbec2642cd8414              # double 0.21814420949797919
	.quad	0x3fd993491116ae62              # double 0.39961458844002185
	.quad	0x3fcc0b494c9246a8              # double 0.21909443129384454
	.quad	0x3fba15b536f152b8              # double 0.1018937358033537
	.quad	0x3fee599c95ceca1e              # double 0.94843892344789871
	.quad	0x3f90a4e9ab9a22a0              # double 0.016254092310676982
	.quad	0x3fd8e3cf70be01e4              # double 0.38890443811399522
	.quad	0x3fce28983b765520              # double 0.23561385062627327
	.quad	0x3fd3825d887756f0              # double 0.30483187033438153
	.quad	0x3fe4b8e61d60091c              # double 0.64757066476184688
	.quad	0x3fec1c96a288f209              # double 0.87848979706865393
	.quad	0x3feb7e8a1947ca7c              # double 0.8591967099913087
	.quad	0x3fce4ad3338764c4              # double 0.23665847793635042
	.quad	0x3fec4ec0f2fa242a              # double 0.88461348968951836
	.quad	0x3fe68f964a243172              # double 0.70502771836031131
	.quad	0x3fe14d31528fc1c3              # double 0.54067293286612317
	.quad	0x3fe0a8f239f75233              # double 0.52062331506255644
	.quad	0x3fe6b596c22c4066              # double 0.70966661381136187
	.quad	0x3fe0ad444cc265c8              # double 0.52115073196471773
	.quad	0x3fd5867a63a8dfaa              # double 0.33633289081944417
	.quad	0x3fe47fb4bf3797d5              # double 0.64058911654569306
	.quad	0x3fe5086b37286dd1              # double 0.65727768681557042
	.quad	0x3fe825f5605483f6              # double 0.75463360609512509
	.quad	0x3fc026baeea2cf80              # double 0.12618195202014348
	.quad	0x3fd7cc3137e0df78              # double 0.37183790642620052
	.quad	0x3febe0f003aa4e9c              # double 0.8712081977450512
	.quad	0x3f8998f01c303b00              # double 0.012498737201921184
	.quad	0x3fec256f2acd685b              # double 0.87956961021269409
	.quad	0x3fe3b685ea3a7eae              # double 0.61603065250161193
	.quad	0x3fe60e71f9b67c23              # double 0.68926333210027158
	.quad	0x3fdc6a0a14b54558              # double 0.44397213003420211
	.quad	0x3fdcb28c60d17e9e              # double 0.44839772658267829
	.quad	0x3fc18ae93ccb882c              # double 0.13705172985561498
	.quad	0x3fe1dcdb23b12edd              # double 0.55820996256940314
	.quad	0x3fba07985cbdf208              # double 0.10167839302261694
	.quad	0x3fe4d1de6f66f655              # double 0.65061876066438151
	.quad	0x3feaa671200d4297              # double 0.83281761417500177
	.quad	0x3fe568f4f0b2cdda              # double 0.66906210910240849
	.quad	0x3fd1f6860578c288              # double 0.28067160162303439
	.quad	0x3fd56033f300b06c              # double 0.33399676066142692
	.quad	0x3feda6ff4117b071              # double 0.92663538659463829
	.quad	0x3fef34d6e88696c5              # double 0.97520013251479353
	.quad	0x3fd49eb12770f142              # double 0.32218579150846349
	.quad	0x3faeed932b70aa70              # double 0.060406302502390541
	.quad	0x3fe56c87911c6fd3              # double 0.66949823705680911
	.quad	0x3feaa62d5d8fad32              # double 0.83278530381850246
	.quad	0x3fe6855763319294              # double 0.70377702115782137
	.quad	0x3fd59535ec0258f8              # double 0.33723209426661027
	.quad	0x3fe99ddc98513e28              # double 0.80052022695048652
	.quad	0x3fece3b8e0ff9483              # double 0.90279811806671295
	.quad	0x3fe9d58cc459c120              # double 0.80731809949614685
	.quad	0x3fed65f644d1c422              # double 0.91869653168953769
	.quad	0x3feaecf10fb4be0e              # double 0.84142354075987824
	.quad	0x3fec9edb0363201b              # double 0.89439154302181423
	.quad	0x3fde75fdcda3d90c              # double 0.47595162469896546
	.quad	0x3feda62309e5aa70              # double 0.92653037961038187
	.quad	0x3fe3b7a45d5f8427              # double 0.61616724240241616
	.quad	0x3fe7d1a1c2a9fd79              # double 0.74433982868497062
	.quad	0x3fe80b6308e0c21b              # double 0.75138999685265462
	.quad	0x3fb9d8af68b25438              # double 0.1009626036269119
	.quad	0x3feeafa3bdafa59e              # double 0.95894038246222002
	.quad	0x3fd9d9bcd673f876              # double 0.40391465132405047
	.quad	0x3fefbcfa5393de61              # double 0.99181858371498432
	.quad	0x3fe48af3a8fd653d              # double 0.64196188932252307
	.quad	0x3fef1d58ca577112              # double 0.97233237762296398
	.quad	0x3fd652556972af34              # double 0.34877524659781334
	.quad	0x3fb23d6c113f9ae8              # double 0.071249727450417688
	.quad	0x3fae8771a349acd0              # double 0.059627104933349551
	.quad	0x3feb9a06b641ebbe              # double 0.86255202862900382
	.quad	0x3fd964513b9560b2              # double 0.39674788302137209
	.quad	0x3fd3354f09a3c39c              # double 0.30012870732667252
	.quad	0x3fd8588e03d77ed0              # double 0.3804049527661677
	.quad	0x3fed267c8d4fbdb0              # double 0.91094806289577512
	.quad	0x3fa9cc42e9631bc0              # double 0.050386515607491855
	.quad	0x3fd6cee1193c2a66              # double 0.35637690986974346
	.quad	0x3febc1a29f1013a2              # double 0.86738711420968095
	.quad	0x3fe9601dafa01c98              # double 0.79298290540545491
	.quad	0x3feffdfe8c44d440              # double 0.99975516697180211
	.quad	0x3fe0558826884a8e              # double 0.5104408981881805
	.quad	0x3feeb84e1ad3649f              # double 0.9599981807652006
	.quad	0x3fe445a276ad2f62              # double 0.63350032023434388
	.quad	0x3fdc84c6d785408a              # double 0.44560404822278399
	.quad	0x3f8509b7243d0d80              # double 0.010272436898623338
	.quad	0x3fea9790e40b58b4              # double 0.8310017065039319
	.quad	0x3fd86fd38227c2d0              # double 0.38182532988052476
	.quad	0x3fe4557e9879a774              # double 0.63543634205164645
	.quad	0x3fda74f76a13eff0              # double 0.41338906630676231
	.quad	0x3fe9139d0015bd2e              # double 0.78364419952950981
	.quad	0x3fe82a53fcabec51              # double 0.75516700124661373
	.quad	0x3fd2142a12249f4a              # double 0.28248073360235948
	.quad	0x3feedcbf919c677e              # double 0.96444681586875425
	.quad	0x3fbab59f6c08f010              # double 0.10433384311267013
	.quad	0x3fa5bc4d7731e4f0              # double 0.042452259826811445
	.quad	0x3fea6c3d495ee16d              # double 0.82571281748009329
	.quad	0x3fc35709d0d36e6c              # double 0.15109369942262008
	.quad	0x3fc290332e6c5354              # double 0.14502563254122924
	.quad	0x3fc1e41858dfde04              # double 0.13977341022085465
	.quad	0x3fc14c43e611af54              # double 0.13513993009416458
	.quad	0x3fe2b36ec4cc3fec              # double 0.58440340458946372
	.quad	0x3fe597dcbc9df767              # double 0.67478787268894969
	.quad	0x3fee840849f8c892              # double 0.95361723373049956
	.quad	0x3fd7eb189fa5d26a              # double 0.37372413244819447
	.quad	0x3fe6c5b8f1067c1f              # double 0.71163603854427382
	.quad	0x3fe2ce086cf7491c              # double 0.58765050203718117
	.quad	0x3fa0fd6b55127fc0              # double 0.033183435568616471
	.quad	0x3fd21a8a0d27e3c2              # double 0.28286982807872729
	.quad	0x3f9aefc8c8a11c80              # double 0.026305329556887802
	.quad	0x3fd09a54aff349f8              # double 0.2594196050896751
	.quad	0x3fdeb110e117db5e              # double 0.47955724698788582
	.quad	0x3fec4f19ba5ba0b1              # double 0.8846558227351321
	.quad	0x3fe6e3a492d42234              # double 0.71528843572111223
	.quad	0x3fe99827fe37eaae              # double 0.79982375766788549
	.quad	0x3fbe0a202d5158b0              # double 0.11734200579062093
	.quad	0x3f8f0bbad00285c0              # double 0.015159091446835471
	.quad	0x3fecc29468087acb              # double 0.89875240630120723
	.quad	0x3fdd14115189dd1a              # double 0.45434983217951841
	.quad	0x3feb670a29438c7f              # double 0.85632808741901545
	.quad	0x3fe010e0f3aba5cf              # double 0.50206039039511008
	.quad	0x3fc447a03725c3c4              # double 0.15843584721326753
	.quad	0x3fd6049c603662bc              # double 0.34403142352816096
	.quad	0x3fdf4f2abc60a6bc              # double 0.4892069663643317
	.quad	0x3fd3801049e5c59a              # double 0.30469138351971881
	.quad	0x3fe363b867f093c4              # double 0.60592289257748932
	.quad	0x3fe9e93aa96f75ea              # double 0.80972035496568862
	.quad	0x3fde27d15c52ee58              # double 0.47118028656016042
	.quad	0x3fb9ed56c024e2c8              # double 0.10127775374429426
	.quad	0x3fdd742ad107f9dc              # double 0.46021528638075693
	.quad	0x3fd588ebe7e433e6              # double 0.33648202558180029
	.quad	0x3fcb5c68451ba2a8              # double 0.21375754713451056
	.quad	0x3fe1b38ee856fd87              # double 0.5531687295805775
	.quad	0x3fd2409ecdd115f6              # double 0.2851941118172755
	.quad	0x3fb9feb15de2c360              # double 0.10154255430349002
	.quad	0x3fe3dfbce7f2ec6d              # double 0.62106175711177303
	.quad	0x3fddee8a845a4a84              # double 0.46768439221447289
	.quad	0x3fe46a918c0930ab              # double 0.63800885535012719
	.quad	0x3fd053fb4ca387d6              # double 0.25512583240754105
	.quad	0x3fd58c73c537be7e              # double 0.33669752368493977
	.quad	0x3fea60285a24cef2              # double 0.82423799139220777
	.quad	0x3f9953907ce6c000              # double 0.024732835410475218
	.quad	0x3fd1d197157ce536              # double 0.27841736887383506
	.quad	0x3fe6b9fc2a18786a              # double 0.71020324918550881
	.quad	0x3feb2439d20ebab7              # double 0.84817210223066908
	.quad	0x3fe18c36f283bc3e              # double 0.54836604467516969
	.quad	0x3fe74eb4c3b0dfd8              # double 0.72835767956621122
	.quad	0x3fde603965953c12              # double 0.47462305946550132
	.quad	0x3feea3303d122f23              # double 0.9574204628747548
	.quad	0x3fa89458d5ac74e0              # double 0.048006797869882822
	.quad	0x3fe514911daf4da3              # double 0.65876060293014793
	.quad	0x3fe58e96f09ee47f              # double 0.67365595813966184
	.quad	0x3fef257009ea15c0              # double 0.97332002579121734
	.quad	0x3fd2fa6d59cfe2c2              # double 0.29653486033161525
	.quad	0x3fea51d77f98e74d              # double 0.82249045296996715
	.quad	0x3fe257b9a9ccdc8e              # double 0.57320864833936169
	.quad	0x3fe0a93e5a4692bd              # double 0.52065961486785961
	.quad	0x3fe3aefecc5afe1d              # double 0.61511173165485256
	.quad	0x3feec24c5d60016c              # double 0.96121805417355465
	.quad	0x3fede03f8e1166de              # double 0.93362405536319293
	.quad	0x3fc94a3e8a8bdf5c              # double 0.19757825627288639
	.quad	0x3fc19a00b164ad60              # double 0.1375122896364287
	.quad	0x3fd0a42dfd84229a              # double 0.26002073056637587
	.quad	0x3fee56096444f9b5              # double 0.94800252517580097
	.quad	0x3fee9db1c5e6c14a              # double 0.95674980785956021
	.quad	0x3fedbde2e7a574b7              # double 0.92942948573513362
	.quad	0x3feba9e5606bf2b9              # double 0.8644892581210889
	.quad	0x3fee26e0ddb84c02              # double 0.94224589638395195
	.quad	0x3fe4cd43aa2d2f5a              # double 0.65005667913053888
	.quad	0x3fe1877a3fed62cd              # double 0.54778778539465522
	.quad	0x3fd2f90c7055fa0a              # double 0.29645071955010904
	.quad	0x3fcee27deabd00e8              # double 0.24128698312598051
	.quad	0x3fdb057c332bad84              # double 0.42220978734140879
	.quad	0x3fd72e7d5375342e              # double 0.36221249723604643
	.quad	0x3fcc5baf2a329b30              # double 0.2215479808848726
	.quad	0x3fd37b1fae62e15e              # double 0.30438987760455471
	.quad	0x3fe025b738268e3a              # double 0.50460396735110824
	.quad	0x3fe5b2d65e99c1cd              # double 0.67808073498422916
	.quad	0x3fc2f756d1e69810              # double 0.14817319153843345
	.quad	0x3fe67dce06855f98              # double 0.70285702966338004
	.quad	0x3fd6a7ac362752b8              # double 0.35398392952383118
	.quad	0x3fa8991119843380              # double 0.048042806973263019
	.quad	0x3fdbe28abf5dd41e              # double 0.43570202530037416
	.quad	0x3fef763436914c31              # double 0.98317919404724396
	.quad	0x3fe4450fefd626ec              # double 0.63343045085022487
	.quad	0x3fe36999cf9bfd47              # double 0.60664072560022297
	.quad	0x3fef7dfdf41884f3              # double 0.98412988352734342
	.quad	0x3fe31b7d8ff52e5a              # double 0.59710577122445874
	.quad	0x3fd14d8b6e1f3264              # double 0.27035794977272176
	.quad	0x3fd631959b01e5a4              # double 0.34677639138643657
	.quad	0x3fe5ed7ace6f1b64              # double 0.68523922270911131
	.quad	0x3fdc3dc58ed60f3e              # double 0.44127024601788267
	.quad	0x3fecfedada8c1809              # double 0.906110216951448
	.quad	0x3feb0396a93597b6              # double 0.84418805168819833
	.quad	0x3fe15319176bec02              # double 0.54139380049252872
	.quad	0x3fd2f480fc538f82              # double 0.29617333070040541
	.quad	0x3fe8f26a0b9f128e              # double 0.77959158201027079
	.quad	0x3fe0e7e3137dd2ab              # double 0.52830652052815219
	.quad	0x3f9d45bb615b4cc0              # double 0.028586318795373655
	.quad	0x3fd5655173d6084c              # double 0.33430897056689868
	.quad	0x3fee5396d2c2e547              # double 0.94770375408476404
	.quad	0x3fe412839c1f2486              # double 0.62726002209196063
	.quad	0x3fde316b7a617b54              # double 0.47176634742020451
	.quad	0x3fe5c8eb7995e8d6              # double 0.68077634570297607
	.quad	0x3fbbe44c419d8f28              # double 0.10895229913654403
	.quad	0x3fe653e636b262e8              # double 0.69774161036465632
	.quad	0x3f8c99c68d674900              # double 0.013965178671160761
	.quad	0x3fb0f640665c7908              # double 0.06625750063946978
	.quad	0x3fe5f065110186fb              # double 0.68559506722905839
	.quad	0x3fe0a00916c4833f              # double 0.51953558394243504
	.quad	0x3fe4721680ab21ae              # double 0.63892674570620556
	.quad	0x3fd85d40e2abbb7c              # double 0.38069173942397305
	.quad	0x3fee9c7d687b2b1f              # double 0.95660276800603927
	.quad	0x3fe6aa2612d5ec41              # double 0.70827010802111812
	.quad	0x3feea4795dbe6b28              # double 0.95757740315761896
	.quad	0x3fe1cb0f4d0879c8              # double 0.55603756948021843
	.quad	0x3f92af36913817e0              # double 0.018246510137053806
	.quad	0x3fd07782daf128d4              # double 0.25729438191468756
	.quad	0x3fdc503f44bbf65a              # double 0.44239789688422138
	.quad	0x3fd77a0a0772e8c4              # double 0.36682368018558642
	.quad	0x3fee35e088700e57              # double 0.94407679222099261
	.quad	0x3feebe34f3c17e61              # double 0.96071860893784954
	.quad	0x3fe36630f5581599              # double 0.60622451704755342
	.quad	0x3fe9d7d76a9e7972              # double 0.80759783576995248
	.quad	0x3fdb531bbaea819e              # double 0.42694752934951363
	.quad	0x3fdfde884db0c6d8              # double 0.49795730196920607
	.quad	0x3fe82f6a22f69738              # double 0.75578791455038807
	.quad	0x3fd09a34f969e924              # double 0.25941204411323526
	.quad	0x3fd8535c74887df4              # double 0.38008796100800102
	.quad	0x3fe10639b4dd8e98              # double 0.53200993848118383
	.quad	0x3fed1fbf73821723              # double 0.91012547073544103
	.quad	0x3fdde9ab6eaad4ee              # double 0.46738706405024188
	.quad	0x3fd70b12d5970734              # double 0.36005087717431938
	.quad	0x3fc677a026c36ad8              # double 0.17552568333379415
	.quad	0x3fad997209612f70              # double 0.057811320919966103
	.quad	0x3fe3c47d44308118              # double 0.61773551290756057
	.quad	0x3fa7a9fc90294300              # double 0.04621876964359295
	.quad	0x3fd24c01047dad9a              # double 0.28588891447608378
	.quad	0x3fd0ec6e3ec40d0c              # double 0.26443058137393005
	.quad	0x3fe9914f9a76078e              # double 0.79898815315412874
	.quad	0x3fdf035051f8396e              # double 0.48457725529524154
	.quad	0x3fe6276a9aa4aad9              # double 0.69231157497173534
	.quad	0x3fcd122df4026b30              # double 0.22711729445003348
	.quad	0x3fe5e5a40848e518              # double 0.68428231828798669
	.quad	0x3fe805711eae1f77              # double 0.75066429130764234
	.quad	0x3fce072faf5acaf8              # double 0.23459430753936039
	.quad	0x3fc1ac1af52ae934              # double 0.13806473704409827
	.quad	0x3fdadd213ac982ac              # double 0.41974669209416038
	.quad	0x3fd076bfe3f1193e              # double 0.25724789867344444
	.quad	0x3fe32786c1b558da              # double 0.59857499917668666
	.quad	0x3fe2489b868fc783              # double 0.57136322290010388
	.quad	0x3fe1a8ad6e0a652a              # double 0.55184051029497039
	.quad	0x3fdb857718eb88da              # double 0.43002107080077467
	.quad	0x3fe3fab6b83bd5da              # double 0.62435470564985995
	.quad	0x3fe9fa1bd321e79d              # double 0.81178084599308742
	.quad	0x3f0108979da3c000              # double 3.2488944002539988E-5
	.quad	0x3fdfd2d1ae1181c0              # double 0.49724237440934971
	.quad	0x3fe0cc7a07147291              # double 0.52496053107059215
	.quad	0x3fd7553d1306b8d6              # double 0.36457754953415866
	.quad	0x3fe25a97790e1100              # double 0.5735585560182983
	.quad	0x3fe3940af33879bd              # double 0.61182162765526693
	.quad	0x3fe04aed839c2519              # double 0.50914645867411246
	.quad	0x3fd41bbd78adae8c              # double 0.31419312272075994
	.quad	0x3fe7001edb8cbffc              # double 0.71876471405812437
	.quad	0x3fd7d6f47c4dcdaa              # double 0.37249481333784706
	.quad	0x3fb027e1d1169490              # double 0.06310855250065317
	.quad	0x3fea488b5be03aab              # double 0.82135551399718076
	.quad	0x3fd9bfa81bc1ce16              # double 0.40232279501580714
	.quad	0x3fbe64f7f743c288              # double 0.11872815882430576
	.quad	0x3fd08068acb87cb0              # double 0.25783745639086941
	.quad	0x3fe3b8cf9fd18133              # double 0.61630994047667398
	.quad	0x3fe044b0a5f7a216              # double 0.50838501372806166
	.quad	0x3fe34340a9916420              # double 0.6019595443605148
	.quad	0x3fc7fe5dd32ce740              # double 0.18745014964388851
	.quad	0x3fed288c2ee00b57              # double 0.91119965701396211
	.quad	0x3fe6075ddd798eb0              # double 0.68839925057223716
	.quad	0x3feba1c457c28682              # double 0.86349694386099451
	.quad	0x3fe61d68a1e014fa              # double 0.69108993164323285
	.quad	0x3fe54a7a25b5d9f0              # double 0.66534144749931379
	.quad	0x3fe811ca1c5cb253              # double 0.75217156924697759
	.quad	0x3fc1cbfc37a8ebc8              # double 0.13903763501897815
	.quad	0x3fe6721c4a01fb93              # double 0.70142950491559686
	.quad	0x3fd4642d18716384              # double 0.31861426722530717
	.quad	0x3fa455452d5f1130              # double 0.039713060177322013
	.quad	0x3fe31cdb4ead8933              # double 0.59727254263660823
	.quad	0x3fe15bcf04d7c9a2              # double 0.54245711274989028
	.quad	0x3fc5fff7510455d4              # double 0.17187396484284412
	.quad	0x3fddcda134d40360              # double 0.4656756416225587
	.quad	0x3fe02410474bb3d9              # double 0.50440229344314524
	.quad	0x3fa5de1bf0a71960              # double 0.042710183264307089
	.quad	0x3fe45d4a9560572d              # double 0.63638810324730388
	.quad	0x3fe95b9f4da72985              # double 0.79243436018559577
	.quad	0x3fe7baa965f8c00b              # double 0.74153585354179208
	.quad	0x3fd162c2d473a320              # double 0.27165289637791723
	.quad	0x3fd516edda5a7312              # double 0.32952448199812168
	.quad	0x3fc64ccffe705264              # double 0.17421913074271622
	.quad	0x3fcdcbb5ea1cb4b0              # double 0.23277925425774049
	.quad	0x3fe2d2240b483123              # double 0.58815195277705745
	.quad	0x3fe59b0923d2e0d3              # double 0.67517525669884504
	.quad	0x3fcee059b8a213e4              # double 0.2412216331032645
	.quad	0x3fdb1880b39ac0d4              # double 0.42337052859785484
	.quad	0x3fd3c02d3680d118              # double 0.30860452959611129
	.quad	0x3fd8f29ff9de0882              # double 0.38980864907365043
	.quad	0x3fea1511f38452e6              # double 0.81507203637974324
	.quad	0x3fda361f0c896a58              # double 0.40955330108923738
	.quad	0x3fdd5a8ee5894990              # double 0.45865223327305049
	.quad	0x3fadbb27aa51d800              # double 0.058068503895739809
	.quad	0x3fe5289ad03a6b21              # double 0.66120663327760465
	.quad	0x3fd5e99e039ea2ce              # double 0.34238386491283002
	.quad	0x3feb3e2473064757              # double 0.85133573976257082
	.quad	0x3fef433a147a20f1              # double 0.97695640563418184
	.quad	0x3f7539da09638980              # double 0.0051821248109454876
	.quad	0x3fe98298c971ceee              # double 0.79719199509278638
	.quad	0x3fe2610971236ad5              # double 0.57434532258352056
	.quad	0x3fe51ddd174dc567              # double 0.65989546348116057
	.quad	0x3fec071b0bba011d              # double 0.87586738863322788
	.quad	0x3fefb1cca1965c1b              # double 0.9904540210726539
	.quad	0x3fe689bd105484af              # double 0.70431378545267431
	.quad	0x3fe35ac5a0371dd9              # double 0.60483056346941588
	.quad	0x3fe06fae04714cb9              # double 0.51363278262797174
	.quad	0x3fe3a15317dcdd5c              # double 0.61344294224447138
	.quad	0x3fa49116cfcbcfc0              # double 0.040169442048778148
	.quad	0x3fb52bb4bedecbc8              # double 0.082698151206201165
	.quad	0x3fefe1806ba17a7d              # double 0.99627705594669146
	.quad	0x3fc88e042e029294              # double 0.1918339943560069
	.quad	0x3fdbee3d7698cfce              # double 0.43641602117281486
	.quad	0x3fd27730819d5226              # double 0.28852474839848907
	.quad	0x3fbb02d227fa54e8              # double 0.10551179386159826
	.quad	0x3fe4c33aef4e0e1c              # double 0.64883181323279215
	.quad	0x3fd0addc1aedc056              # double 0.26061155919797352
	.quad	0x3fee9246c9dc882c              # double 0.95535602022233012
	.quad	0x3fd137cf721d4602              # double 0.26903139251689379
	.quad	0x3fac4cf09bf11310              # double 0.055274504695750903
	.quad	0x3fe2fa0d05e90825              # double 0.59302378801681199
	.quad	0x3fe74c8c154c9026              # double 0.7280941406247663
	.quad	0x3fe2f009fb20dede              # double 0.5918016342975212
	.quad	0x3fccfae18b81cee0              # double 0.22640628158443743
	.quad	0x3fdb924bcf9cb29a              # double 0.43080420755976834
	.quad	0x3fe23312ad6967c3              # double 0.56873449201088311
	.quad	0x3fe4edd9df64e774              # double 0.65403455382987241
	.quad	0x3fe0163340822216              # double 0.50270998572620118
	.quad	0x3fc59b0929c8e5a8              # double 0.16879381695052342
	.quad	0x3fd5da66e9d9b1c4              # double 0.34145520054769585
	.quad	0x3faab170bbf6eba0              # double 0.052135012574090256
	.quad	0x3febc5be6d0dfede              # double 0.86788865375271107
	.quad	0x3fe96b9eb1660854              # double 0.79438719413907188
	.quad	0x3fd041da142f2afa              # double 0.25401927920454137
	.quad	0x3f8722151329cf40              # double 0.011295475623434137
	.quad	0x3fee30947a37ec40              # double 0.94343017454901456
	.quad	0x3fe80f3db2404213              # double 0.75186047377252618
	.quad	0x3fefb2096e916b42              # double 0.99048301310845255
	.quad	0x3fe1ddee2ebfc057              # double 0.55834111338300374
	.quad	0x3fc29fa6cff07dc0              # double 0.14549718049327787
	.quad	0x3fe9eddf7b5a18bc              # double 0.81028722850967183
	.quad	0x3fde3a1e89dac632              # double 0.47229732000696167
	.quad	0x3fd0970c8ad654d0              # double 0.25921929891894724
	.quad	0x3f9023a9e25a3b60              # double 0.015761045875986368
	.quad	0x3fc10e75c34ed354              # double 0.13325378452796122
	.quad	0x3fdf2ea17d8d4a12              # double 0.48722111950806479
	.quad	0x3fd557f2609b2858              # double 0.33349284586131978
	.quad	0x3feac33b1629380a              # double 0.83633188560793426
	.quad	0x3fc519958af9489c              # double 0.16484326635197
	.quad	0x3fe839bbc4fc33e7              # double 0.75704754327454971
	.quad	0x3feabbd2478a102f              # double 0.83542741749307037
	.quad	0x3fd00300a053110c              # double 0.25018325478255643
	.quad	0x3fe77ae4da017478              # double 0.73375170306429904
	.quad	0x3fd62f875f1b1e4a              # double 0.34665092742622916
	.quad	0x3fdabc62bb6e28d2              # double 0.41774814895383117
	.quad	0x3fc0b67a6a295598              # double 0.1305687921873584
	.quad	0x3fe6581b856c55aa              # double 0.69825531062331447
	.quad	0x3fd7eee687dee062              # double 0.3739563300000609
	.quad	0x3fe80c1ae5f1fc84              # double 0.75147766982253516
	.quad	0x3fd9c2663b33f836              # double 0.40249019414466447
	.quad	0x3fde52339c8545a4              # double 0.47376718793119665
	.quad	0x3feea2c600c363e7              # double 0.95736980580397535
	.quad	0x3fe965aa6ce91e69              # double 0.79366036674123308
	.quad	0x3fde30ff75a30ada              # double 0.47174059379555688
	.quad	0x3fd64aa3773a1f24              # double 0.34830557482972524
	.quad	0x3fe06687d5a3b67b              # double 0.51251594282594171
	.quad	0x3fe1d68228f41d35              # double 0.55743511198753615
	.quad	0x3fe77a1e0171072e              # double 0.73365688592477851
	.quad	0x3fe2fcfd7b989957              # double 0.59338258876668248
	.quad	0x3fdf9b5b7ea692ba              # double 0.49385726326208224
	.quad	0x3fe57436b728868b              # double 0.67043624661546752
	.quad	0x3fed187163973ae9              # double 0.90923375560109065
	.quad	0x3fe0ed0f02f4f8a7              # double 0.52893782212756413
	.quad	0x3fd27af1245c72a2              # double 0.28875378180399924
	.quad	0x3fc800904f8e241c              # double 0.18751720318349008
	.quad	0x3faebc66131a8550              # double 0.060031118232709901
	.quad	0x3fe04f5007b63c48              # double 0.50968171602460988
	.quad	0x3fe67cb703c9b559              # double 0.70272398700550831
	.quad	0x3fd374264119fabe              # double 0.30396419866148594
	.quad	0x3fea4c46bd45bbc0              # double 0.82181107489838467
	.quad	0x3fe412d2b8af3253              # double 0.627297745429653
	.quad	0x3fb04ec7199ba138              # double 0.063702052833495837
	.quad	0x3fe5163ae7b6eee3              # double 0.65896363503221911
	.quad	0x3fed949a4f31ec64              # double 0.92438998668457061
	.quad	0x3fe9d82425e256f9              # double 0.80763442420240417
	.quad	0x3fcfb6e1e18121e8              # double 0.24776862631757912
	.quad	0x3fe96af96699307c              # double 0.79430837668179732
	.quad	0x3fe1edf374ed7c10              # double 0.56029675328670869
	.quad	0x3fe34d4df5cc37e9              # double 0.60318658835762762
	.quad	0x3fc8b5c1cc789248              # double 0.19304678424772903
	.quad	0x3fe4f883db52a012              # double 0.65533631168819029
	.quad	0x3fdb7cc1deb67ba0              # double 0.42948958157824713
	.quad	0x3fcf7e3fdcb9ceb4              # double 0.24604032781245666
	.quad	0x3fa739ad479d4bb0              # double 0.045361914627071953
	.quad	0x3fe361af674cea20              # double 0.60567445922726293
	.quad	0x3fec77a8461a5da6              # double 0.88960660640707512
	.quad	0x3fe908c3f05010db              # double 0.7823199933632411
	.quad	0x3fbd8afb1a264700              # double 0.1154019297448734
	.quad	0x3fd39544c4ad73c4              # double 0.30598563391486899
	.quad	0x3fe79ae7172645cf              # double 0.73765902062785382
	.quad	0x3fe99eafbbc3f9cc              # double 0.80062090561823984
	.quad	0x3fd7114a02109fca              # double 0.36043024255422706
	.quad	0x3fef43f40973bbe8              # double 0.97704507680998364
	.quad	0x3fe24802d5bd4a06              # double 0.57129041429499305
	.quad	0x3fd37e2a03a64382              # double 0.30457544666665382
	.quad	0x3fe0abee6463045c              # double 0.52098769766611097
	.quad	0x3fea467b7ed18aa1              # double 0.821103809063363
	.quad	0x3fe22e27cfe53e3e              # double 0.56813421825967914
	.quad	0x3fd19edf1e52c134              # double 0.27532175027137673
	.quad	0x3fd2f57eac2e4a94              # double 0.29623381437810647
	.quad	0x3fe97c5d54460856              # double 0.79643122157745938
	.quad	0x3f82ecf7b2cb4180              # double 0.0092410422743405274
	.quad	0x3fd74467aeec8d0c              # double 0.36355011064934284
	.quad	0x3fe551c5408694f2              # double 0.66623175242116717
	.quad	0x3fc87f2a82dbdeb0              # double 0.19138080014794445
	.quad	0x3fdd5ea237977aa0              # double 0.45890098027113346
	.quad	0x3fe23dbd27cdcab8              # double 0.57003648542589413
	.quad	0x3fe52f6f72de866d              # double 0.66204044757269076
	.quad	0x3fb1fbfe73d66070              # double 0.07025137260495895
	.quad	0x3fedc4694437e319              # double 0.93022597621811365
	.quad	0x3fbbcaf2d31f7d58              # double 0.1085654988705661
	.quad	0x3fdc451c1046dce2              # double 0.44171811666042349
	.quad	0x3fe62eadc3d17ea5              # double 0.69319809194344784
	.quad	0x3fc6cc037e91c584              # double 0.17810100250384775
	.quad	0x3fe84cfa77d0ec6d              # double 0.75939677621444235
	.quad	0x3fdc0697ba87d696              # double 0.4379023858631198
	.quad	0x3fb6af8405f91568              # double 0.088615657289741301
	.quad	0x3fe9e6413ceb7eb0              # double 0.80935727976244287
	.quad	0x3feff3f3d2e9c376              # double 0.99852935022327816
	.quad	0x3fe80ebfefaa0174              # double 0.75180050668136155
	.quad	0x3feb239ea56a2b2d              # double 0.84809810931742435
	.quad	0x3fee4193394f75d7              # double 0.94550477212367923
	.quad	0x3fb555814745a840              # double 0.083335952663817103
	.quad	0x3fddcb6cb66f1dda              # double 0.46554105583024141
	.quad	0x3fd0a4e25f82e1a0              # double 0.26006373717566511
	.quad	0x3fb1c595e9266060              # double 0.069421166821827196
	.quad	0x3fd9a5594fe76a8e              # double 0.40071709445116077
	.quad	0x3fee56a742105f71              # double 0.9480778017341277
	.quad	0x3fe46991a691309e              # double 0.63788683445592986
	.quad	0x3f95785150e716c0              # double 0.0209667878750881
	.quad	0x3fee7e823552b336              # double 0.95294294752748132
	.quad	0x3fdabf927a4508a0              # double 0.41794263782879604
	.quad	0x3fdc948752218d1c              # double 0.44656546612368841
	.quad	0x3fba5613365ed138              # double 0.10287590100671629
	.quad	0x3fd4545fd5d4f6fa              # double 0.3176498020364843
	.quad	0x3fe0b0e02f4b5bda              # double 0.52159127461606691
	.quad	0x3fdab201e2f8f364              # double 0.4171147076156585
	.quad	0x3fae5dda2d508870              # double 0.0593097858729984
	.quad	0x3fea115da3d77b8f              # double 0.81461984634721485
	.quad	0x3fe12a8f9a4422d9              # double 0.53644542818173158
	.quad	0x3fe818827ec1d55f              # double 0.7529919124341794
	.quad	0x3fd45fddcbfe205a              # double 0.31835122033272045
	.quad	0x3fa3199e27c02910              # double 0.03730482325780049
	.quad	0x3fdda5f1c6e7ec32              # double 0.46325344490441289
	.quad	0x3fdd03461d9e3980              # double 0.45332482235325955
	.quad	0x3fb1b0e10d6857b0              # double 0.069105211041771808
	.quad	0x3fe6d2d0270a0e30              # double 0.71323402047022988
	.quad	0x3fbabe0fb18973c0              # double 0.10446260532758256
	.quad	0x3fee5b3df42b37b7              # double 0.94863794030401649
	.quad	0x3fa5ebf6ecfde730              # double 0.042815891675628825
	.quad	0x3fdbf30672bbc7d2              # double 0.43670808033413977
	.quad	0x3fd6b2237bf2fa0c              # double 0.35462271789938948
	.quad	0x3fba81f85fa8b388              # double 0.10354568801331088
	.quad	0x3fe1b758f5c388f3              # double 0.5536312866281875
	.quad	0x3fdd14b3459b050e              # double 0.45438844487587537
	.quad	0x3fe82bcaf880c107              # double 0.75534580741626278
	.quad	0x3fead9ddcc21d89a              # double 0.83909501905033612
	.quad	0x3fbcecc4e25ff098              # double 0.1129878094361082
	.quad	0x3feeec476e150142              # double 0.9663426542320297
	.quad	0x3fe1875460228143              # double 0.54776972557377979
	.quad	0x3fe42c506a3ad8ba              # double 0.63040943859120735
	.quad	0x3fdb8b6900045fd8              # double 0.4303839206854696
	.quad	0x3fe833ce208b2ce2              # double 0.75632387500936837
	.quad	0x3fd27e2e72981aba              # double 0.28895150366626476
	.quad	0x3fef7417cef871e8              # double 0.98292150901721431
	.quad	0x3fb019f7bde6aee0              # double 0.062896236288618734
	.quad	0x3fe9d06cdf4c8d01              # double 0.80669253933993457
	.quad	0x3fefc0b444879173              # double 0.9922734583347349
	.quad	0x3fe0b29ff3505257              # double 0.52180478594034241
	.quad	0x3fe7bbe8aa496b8d              # double 0.74168809184208018
	.quad	0x3fc689b77e2d1ba4              # double 0.17607778225848592
	.quad	0x3fe8c4fb1b082515              # double 0.77404551772738961
	.quad	0x3fe01bf5c7e60b38              # double 0.50341309588143357
	.quad	0x3fd62e16dfd8e6e4              # double 0.34656307087025895
	.quad	0x3f910f01be6a9ba0              # double 0.016658808943840975
	.quad	0x3fe8f00b141eeea4              # double 0.77930215768670452
	.quad	0x3fb9db74e7505fd0              # double 0.1010048928004601
	.quad	0x3fe5b44fc8568ce0              # double 0.67826069954426416
	.quad	0x3fc7b47f25cbe64c              # double 0.18519582124263179
	.quad	0x3fe13bbfe7590386              # double 0.53854365525340664
	.quad	0x3fb04d4da2244b60              # double 0.063679554067034072
	.quad	0x3fe74b0fa4c0c18d              # double 0.72791273287116243
	.quad	0x3fe2527317d23e60              # double 0.57256464626875569
	.quad	0x3febc0b39220a40e              # double 0.86727312603500351
	.quad	0x3fe65e8c798fe75f              # double 0.6990415930042494
	.quad	0x3fe40a89cac0eb27              # double 0.62628640747366127
	.quad	0x3fd32b18c7c486a6              # double 0.2995054198127981
	.quad	0x3fd074c3c0dda20a              # double 0.25712674936815516
	.quad	0x3fe6150c47117653              # double 0.69006933098325829
	.quad	0x3fd9ca728473c6ae              # double 0.4029814046362884
	.quad	0x3feed7b4cfbe4f79              # double 0.96383133482821314
	.quad	0x3fcbd3ef20b88c20              # double 0.21740521524142853
	.quad	0x3fd116be42b34236              # double 0.26701313508695834
	.quad	0x3fd1e908052cb02c              # double 0.27984810357407031
	.quad	0x3feb295f6c9ab297              # double 0.84880038463377872
	.quad	0x3fe524266df10de7              # double 0.6606628558442339
	.quad	0x3fe90d0799204fad              # double 0.78284053714241042
	.quad	0x3fde40bd67c7595c              # double 0.47270140776290304
	.quad	0x3fe3ee0b444e93e7              # double 0.62280810681533871
	.quad	0x3fd00c7e12b4bf20              # double 0.25076248003732537
	.quad	0x3fb1c66b2d6366a8              # double 0.069433878499149615
	.quad	0x3fc61e535fddbe54              # double 0.17280046635595403
	.quad	0x3fca4e45b2f97ae4              # double 0.2055136798762397
	.quad	0x3fc705c780929c88              # double 0.17986387041057506
	.quad	0x3fe4d0f5629d7494              # double 0.65050763378862309
	.quad	0x3fecc6d7d246f40a              # double 0.89927283353574805
	.quad	0x3fe54d3b88d82f3b              # double 0.6656778023475235
	.quad	0x3fe8f62403a710d8              # double 0.78004646981619441
	.quad	0x3fef37d4493f4015              # double 0.9755650930983416
	.quad	0x3fdd21ca24c05f66              # double 0.45518735493668883
	.quad	0x3fd99ca0e62832b2              # double 0.40018484569808799
	.quad	0x3fee068cbd00d3c6              # double 0.93829953112310061
	.quad	0x3fc407ba4811f9e4              # double 0.15648582953504253
	.quad	0x3fb997b35e361cd0              # double 0.099971018315147874
	.quad	0x3f97598c9ed5d020              # double 0.022802540964633633
	.quad	0x3fd6c834995c537e              # double 0.35596957184434774
	.quad	0x3fde5d5bf112bfc8              # double 0.47444819013889772
	.quad	0x3fd2dcc8bccf4724              # double 0.29472559393353692
	.quad	0x3feda13576c434c0              # double 0.92592881390159931
	.quad	0x3fd12c272f76d5d2              # double 0.26831988940406604
	.quad	0x3fea2a1ef19f9699              # double 0.81764170829838456
	.quad	0x3fed3c5c1d52679e              # double 0.91361814238483752
	.quad	0x3fee0d0975891cf0              # double 0.93909142452403493
	.quad	0x3fe7d78895c0718d              # double 0.74506024597535403
	.quad	0x3fe57650a141bbf8              # double 0.67069274421180491
	.quad	0x3fdaf68ad0ef4ad0              # double 0.42129774478705162
	.quad	0x3fd7c0efea19bf64              # double 0.37115095006355703
	.quad	0x3fee6aba8d2206bf              # double 0.95052840771696612
	.quad	0x3fe6d5de8a597be2              # double 0.71360709210773288
	.quad	0x3fef2ed3910f4432              # double 0.97446611721000509
	.quad	0x3f9d84cc885bdcc0              # double 0.028826900313074999
	.quad	0x3fe6e4124c6ced09              # double 0.71534075667241936
	.quad	0x3fe173f128c7d88d              # double 0.54540307965250323
	.quad	0x3fd1aff24f104196              # double 0.27636392327351567
	.quad	0x3fe8b3e8867abb41              # double 0.77196146264564203
	.quad	0x3fde306742701920              # double 0.47170430648874806
	.quad	0x3fdea348e322b4ec              # double 0.47871610814293208
	.quad	0x3fa3c7ae11836410              # double 0.03863281215462433
	.quad	0x3fb89abd1036b8a8              # double 0.096111122568546592
	.quad	0x3fd7ed39c6e75090              # double 0.37385410713364653
	.quad	0x3fec94597550a174              # double 0.89310906327322792
	.quad	0x3febdc082b007616              # double 0.87060936354436325
	.quad	0x3fcbfa901c58d0bc              # double 0.21858407386901557
	.quad	0x3fe51af70675c17e              # double 0.65954161893573349
	.quad	0x3fd9a33da7fc04cc              # double 0.40058843044978398
	.quad	0x3fefd0e33ec8b120              # double 0.99424898397913707
	.quad	0x3f86d5a9dfd13680              # double 0.011149718420848886
	.quad	0x3fa65a2dc8045d20              # double 0.043656759897368724
	.quad	0x3fe20dbd9a078cd1              # double 0.56417732318768732
	.quad	0x3fe78f5e49f17284              # double 0.7362510151102275
	.quad	0x3fdf5e92d17090e4              # double 0.49014730885597957
	.quad	0x3fc9627f53e037bc              # double 0.19831840129375944
	.quad	0x3fda365fc6c6b2b6              # double 0.40956873332724386
	.quad	0x3fe18e78f2a92ebf              # double 0.54864165682507593
	.quad	0x3fe46442a0f13d2d              # double 0.63723880228090979
	.quad	0x3fd7d1d558e1ae12              # double 0.37218221359100412
	.quad	0x3fc6af2f0bac1b0c              # double 0.1772211844438164
	.quad	0x3fea00949082b8b5              # double 0.81257084107143973
	.quad	0x3fe9b014d3a3a6cb              # double 0.80274430595201218
	.quad	0x3fec23fa4ac41ba9              # double 0.87939180948966567
	.quad	0x3fe627b9af774239              # double 0.69234928389238981
	.quad	0x3fe1466f78d07ed9              # double 0.53984807583398287
	.quad	0x3fcacd1316787750              # double 0.20938337895580128
	.quad	0x3faee96c4f031c60              # double 0.060374626774824192
	.quad	0x3fda0064227f3ed0              # double 0.40627387398579362
	.quad	0x3feaa231205287cb              # double 0.83229881585088472
	.quad	0x3feb8d6101770ade              # double 0.86100816999563867
	.quad	0x3fecd20b64a9b82c              # double 0.90064019833312647
	.quad	0x3fd854187f2e5a92              # double 0.38013279361749952
	.quad	0x3fedc31bdcc33da4              # double 0.93006699674326798
	.quad	0x3fd4205a99c024ee              # double 0.31447472586348979
	.quad	0x3fe24764bffa4db6              # double 0.5712150334897419
	.quad	0x3fe3485af8e4f057              # double 0.6025824414459845
	.quad	0x3fda46aab1bdd476              # double 0.41056315763064022
	.quad	0x3fe47cede2fdd958              # double 0.64025015196129242
	.quad	0x3fd78d7b0aeff3da              # double 0.36801029270264751
	.quad	0x3fb162c896b1e748              # double 0.067913567343478864
	.quad	0x3fc2980b1c11c66c              # double 0.1452649962480338
	.quad	0x3fd5f276fe6ff7f6              # double 0.34292387816810732
	.quad	0x3fe7e39e99dbcce3              # double 0.74653558779246187
	.quad	0x3fee9bf9a464b7a4              # double 0.95653993709651219
	.quad	0x3fd39833750e1296              # double 0.30616461211347124
	.quad	0x3fc127f5078c4694              # double 0.13403189533760396
	.quad	0x3fd4f58e94e4cb60              # double 0.32748760738757277
	.quad	0x3feb5d757385f4aa              # double 0.85515854418885806
	.quad	0x3fd3a894c05b851e              # double 0.30716437134658914
	.quad	0x3fcd2082981d9714              # double 0.22755463054198144
	.quad	0x3fcf3dcc100889e4              # double 0.24407339842680564
	.quad	0x3fd69f5c2cf0d09a              # double 0.35347656620729995
	.quad	0x3fd7e25e1d6fe5fa              # double 0.37319138407437402
	.quad	0x3fe621525ad728ba              # double 0.69156759016302449
	.quad	0x3fe61dcd6a0ea456              # double 0.69113798822685157
	.quad	0x3fc4dd4a8f0b4f70              # double 0.16300327286318916
	.quad	0x3fd505bd94b63dd2              # double 0.3284753753914319
	.quad	0x3f9a97a291a355c0              # double 0.025969066752471681
	.quad	0x3fc42468feaec1d0              # double 0.15736114917446153
	.quad	0x3fd7d36880b1a706              # double 0.37227833335656191
	.quad	0x3fb1c2661e0f3080              # double 0.069372541750626127
	.quad	0x3fd5b9a56fcdc3be              # double 0.33945594709717486
	.quad	0x3fa69915b9a2b680              # double 0.044136694822879186
	.quad	0x3fed6a7277b8bfeb              # double 0.91924403556003875
	.quad	0x3fef4955532c98ec              # double 0.97770181889498308
	.quad	0x3fdb00d90f3e957a              # double 0.42192675102918253
	.quad	0x3fee4a98095a73ad              # double 0.94660569979497711
	.quad	0x3feb163aa8bca4f2              # double 0.84646351772712891
	.quad	0x3fd2bc4f6941ab0a              # double 0.29274354247051859
	.quad	0x3fe8505b86ad814e              # double 0.75980926803826221
	.quad	0x3fc93907d4590488              # double 0.19705293530026702
	.quad	0x3fd8f0216367eea2              # double 0.38965639789214823
	.quad	0x3fe0ee786b980cb9              # double 0.5291101552433225
	.quad	0x3fe775f5d50c49fa              # double 0.73314944849909058
	.quad	0x3fee060c0dea2562              # double 0.93823816983892194
	.quad	0x3fc7f89656538060              # double 0.18727378096719161
	.quad	0x3fe6e91ea90beb40              # double 0.71595700280099805
	.quad	0x3fee3f131403fbe7              # double 0.94519952687539621
	.quad	0x3fd241cd4a5a5098              # double 0.28526623021139974
	.quad	0x3fe8066781f50560              # double 0.75078177816628155
	.quad	0x3fedd4712bef9bb1              # double 0.93218287068599726
	.quad	0x3f89ecb6f0e8c3c0              # double 0.012658528544393977
	.quad	0x3fe619a20ad49a96              # double 0.69062902560547701
	.quad	0x3fc7042eaa504714              # double 0.17981513324826237
	.quad	0x3fe21113f638b326              # double 0.5645847138417579
	.quad	0x3feb80aad85db7bf              # double 0.8594564653301332
	.quad	0x3fc0042294e7b654              # double 0.12512619276769732
	.quad	0x3fe5cae6d213c70d              # double 0.68101826697076862
	.quad	0x3fe120f4daa3605d              # double 0.535273005511964
	.quad	0x3fd59cbe1217ea48              # double 0.33769180075583849
	.quad	0x3fe48ed901e23188              # double 0.64243746154674941
	.quad	0x3fc188971edcdff8              # double 0.13698090559932985
	.quad	0x3fe9ba8e17e1459b              # double 0.80402283348137205
	.quad	0x3fe7a62e24e7b785              # double 0.73903567512546486
	.quad	0x3fe89e5e3d5f1a64              # double 0.76933204638119123
	.quad	0x3fcd2c54126b67e0              # double 0.22791529559509538
	.quad	0x3fe84b5cf2816030              # double 0.75919959415751315
	.quad	0x3fb96b1dca3dead0              # double 0.099290716052489402
	.quad	0x3feba7aece224697              # double 0.86421909580731693
	.quad	0x3fc9292a78fef9e0              # double 0.19656878383643939
	.quad	0x3fd05d20f012b78a              # double 0.25568412251129102
	.quad	0x3fdc2911a5b606b4              # double 0.44000664885252694
	.quad	0x3feec24a1e127446              # double 0.96121698258833344
	.quad	0x3fa703da64ec23b0              # double 0.044951271838790219
	.quad	0x3fedea3ac5569ab6              # double 0.93484247725139968
	.quad	0x3fc6d57f1b3896d4              # double 0.17839039639618781
	.quad	0x3fe9e4e8645ad3fe              # double 0.80919284439607941
	.quad	0x3f934c0e9ec6a600              # double 0.018844822350422064
	.quad	0x3fc56f645db2659c              # double 0.16746191573183189
	.quad	0x3fe790f1226af9df              # double 0.7364431068634153
	.quad	0x3fec92753630b171              # double 0.89287815650963698
	.quad	0x3fde0fcddabb6fc0              # double 0.46971460686267719
	.quad	0x3fedae782055e3b1              # double 0.92754751506355693
	.quad	0x3fef379c7947c34e              # double 0.97553847968638663
	.quad	0x3fe817d8fae1191f              # double 0.75291108131276363
	.quad	0x3fe2f6d119547062              # double 0.59262900302156774
	.quad	0x3fe3b9b1f7ab0d10              # double 0.61641786930741382
	.quad	0x3fee39c37e93bb6e              # double 0.94455122682653125
	.quad	0x3feef55d919ce8e5              # double 0.96745184364342817
	.quad	0x3fceda164d9b02bc              # double 0.24103049077350203
	.quad	0x3fe64cf42b7da9d2              # double 0.69689377302466426
	.quad	0x3fef91dd645409b5              # double 0.98655576320043414
	.quad	0x3f97c952e4654e20              # double 0.023228926839989339
	.quad	0x3fe785963f812d50              # double 0.73505699542276126
	.quad	0x3fc752d4dafa1a3c              # double 0.18221531574472916
	.quad	0x3fd63e91ed497c2a              # double 0.34756897137225684
	.quad	0x3fdbfdd6a9be8d22              # double 0.43736807419391444
	.quad	0x3fe0c566991baa7f              # double 0.5240967741386412
	.quad	0x3fe4277bef34522c              # double 0.62981983871083491
	.quad	0x3fde92cd3a35b63e              # double 0.47771006283332784
	.quad	0x3fc6f5c07321434c              # double 0.17937474843577161
	.quad	0x3fdc947d30ffe996              # double 0.44656305108187533
	.quad	0x3feb39bdb79d4e1c              # double 0.85079847204400804
	.quad	0x3fe4fa691abddcfe              # double 0.65556769583682217
	.quad	0x3fc8e668b7167334              # double 0.19453152599171519
	.quad	0x3fe7a2d14340367d              # double 0.73862517485549939
	.quad	0x3fdc577de3918b88              # double 0.44284007285585192
	.quad	0x3fed6daf1ccd0e0f              # double 0.91963916421122061
	.quad	0x3fe0944a39299de8              # double 0.51810179867328277
	.quad	0x3fd431b9d7a50288              # double 0.31553503092803981
	.quad	0x3fef05d1df83b72d              # double 0.96946042685678934
	.quad	0x3fc118ea4fc71810              # double 0.13357285399814645
	.quad	0x3feffc2c349a91ba              # double 0.99953279756714797
	.quad	0x3f82a4b489bbc800              # double 0.0091032127888617254
	.quad	0x3fe86e8ec3f52a46              # double 0.76349581025108004
	.quad	0x3fec496300f8447c              # double 0.88395834149754604
	.quad	0x3fedc185d601d4d2              # double 0.92987338827392763
	.quad	0x3fcf080a2914b21c              # double 0.24243285184765362
	.quad	0x3fe8e43f7d1a62e6              # double 0.77786230501359621
	.quad	0x3fcd6c109b1d77b4              # double 0.22986037801723358
	.quad	0x3fede033933d5082              # double 0.93361834295002688
	.quad	0x3fd8da54ddb51f18              # double 0.38832589770434955
	.quad	0x3fe1375a5c151d44              # double 0.5380069540487189
	.quad	0x3fdf648098907c62              # double 0.49050917528979288
	.quad	0x3feecb48301ed520              # double 0.96231469534419389
	.quad	0x3fd620e2853d2c62              # double 0.3457571316873268
	.quad	0x3fc5be77fd8662bc              # double 0.16987514380595836
	.quad	0x3fe31cb9355b5ac5              # double 0.59725628300915246
	.quad	0x3fece6af49e58768              # double 0.90315975602082421
	.quad	0x3fe879643863b541              # double 0.76481829656192002
	.quad	0x3fca4f9bfebe0014              # double 0.20555448473533089
	.quad	0x3fecb333d2ad3b74              # double 0.89687529704848012
	.quad	0x3fe56f57928665cc              # double 0.66984156244432702
	.quad	0x3fd608fb3fd95d9c              # double 0.34429818377744836
	.quad	0x3fce7b46e2234d08              # double 0.23813711206330646
	.quad	0x3f85b2d274265800              # double 0.010594982308969492
	.quad	0x3fb4b8e8458bb748              # double 0.080946461657473212
	.quad	0x3fa9898fb975d390              # double 0.049877635373298479
	.quad	0x3fb76590305c69e8              # double 0.091393482024080819
	.quad	0x3fe209ae958eda7f              # double 0.56368188105155059
	.quad	0x3fe5766b3c645d86              # double 0.67070543093989055
	.quad	0x3fe89055a334e670              # double 0.76761896015450581
	.quad	0x3fe65b545cc81689              # double 0.6986486255779748
	.quad	0x3feb906021336593              # double 0.86137396320843818
	.quad	0x3fde9ca4b8213868              # double 0.47831075650618127
	.quad	0x3fe9b284fbbf3e47              # double 0.8030419270452932
	.quad	0x3fda3dffc9f600d8              # double 0.41003412935971317
	.quad	0x3febb4c4910089e4              # double 0.86581638642047353
	.quad	0x3fe1fa34a643a8ee              # double 0.56179268334861177
	.quad	0x3fb9bb85cd861990              # double 0.10051761882468768
	.quad	0x3fe1da520bf5e1be              # double 0.55790045105009489
	.quad	0x3fe361adbd97a7ae              # double 0.60567366628423769
	.quad	0x3fe515937f0b1080              # double 0.6588838082611943
	.quad	0x3fc578f4aad92d94              # double 0.16775377599911379
	.quad	0x3fece00ccb753c23              # double 0.90234985101585996
	.quad	0x3f976302525b6c20              # double 0.022838627125434496
	.quad	0x3fd190c91158a0d6              # double 0.27446200078931093
	.quad	0x3fbd036f4a38c5d8              # double 0.11333365976385978
	.quad	0x3fda246440c70244              # double 0.40847116781154491
	.quad	0x3fd66962842dc62a              # double 0.35018217952810693
	.quad	0x3fe9198a0bd68794              # double 0.78436758339033696
	.quad	0x3fe4198ba79c34ab              # double 0.62811835037577646
	.quad	0x3feb961953876923              # double 0.86207262338874491
	.quad	0x3fdd76aeb12d1820              # double 0.46036879827841126
	.quad	0x3fc3efd4bad0471c              # double 0.15575656053311426
	.quad	0x3fe99d05f5bba891              # double 0.8004178809617476
	.quad	0x3fa81d5f4df5ef30              # double 0.047099092737850845
	.quad	0x3fe817c34d098465              # double 0.7529007439262726
	.quad	0x3fde5fcc143cf7e2              # double 0.47459699608213957
	.quad	0x3fcc24f017738088              # double 0.21987725396229885
	.quad	0x3fe8cc52fda2c1b1              # double 0.77494191683040559
	.quad	0x3feaef50a69df499              # double 0.84171326200852825
	.quad	0x3fd8ae94a1342670              # double 0.38565555326986267
	.quad	0x3fe50ef016a23d55              # double 0.65807346745161033
	.quad	0x3fe05ac46b549a82              # double 0.5110799881266106
	.quad	0x3fd16424309370d8              # double 0.27173714393371773
	.quad	0x3fd61273517f6906              # double 0.344876126849741
	.quad	0x3fe7e75d8bb0a262              # double 0.74699284823607237
	.quad	0x3fefe0b23be2bda2              # double 0.99617873855998007
	.quad	0x3fd9bbeead9ef4f2              # double 0.40209547953766311
	.quad	0x3fab2cd6065257f0              # double 0.053076446792303389
	.quad	0x3fc8b67bbd86131c              # double 0.19306895021522841
	.quad	0x3fdbd759ef5dcb12              # double 0.4350190007746032
	.quad	0x3fc14fefb95a89d4              # double 0.13525196600410416
	.quad	0x3fe6ce2c8cd6d8da              # double 0.71266772754350005
	.quad	0x3fd7f1411e251304              # double 0.37409999793844428
	.quad	0x3fcc070aa3364fcc              # double 0.21896489114135276
	.quad	0x3fea776ccea85bd8              # double 0.82707825053045791
	.quad	0x3fdddbbc72337e7e              # double 0.46653662826972908
	.quad	0x3fe459be43341262              # double 0.63595498204865586
	.quad	0x3feab5bc94fe2628              # double 0.83468464946890197
	.quad	0x3fe84bd1b0f66566              # double 0.75925526202187821
	.quad	0x3feb2566fc612767              # double 0.8483157090461021
	.quad	0x3fe0ad04f14acca0              # double 0.52112052085285043
	.quad	0x3fddf91af6d649b4              # double 0.46832918267423485
	.quad	0x3fcf0092b3935e98              # double 0.24220498817770841
	.quad	0x3fea61f04cdbec49              # double 0.82445540439165044
	.quad	0x3feaed685a1ffec0              # double 0.84148042299781167
	.quad	0x3fcfa2df72973eb8              # double 0.24715798468831962
	.quad	0x3fe80838dff110c0              # double 0.7510036825047095
	.quad	0x3fb7bc2204ee4248              # double 0.092714430049690155
	.quad	0x3fea5de18d026754              # double 0.82396009007355042
	.quad	0x3fc878e8783b12c4              # double 0.19118982191698397
	.quad	0x3fed270de53c40ba              # double 0.91101736805469291
	.quad	0x3fdb72642f70d078              # double 0.42885689385298731
	.quad	0x3fe619e4d8ccd059              # double 0.6906608805061395
	.quad	0x3fe194dc3580cffb              # double 0.54942141008223133
	.quad	0x3fda6df3c4f4c34c              # double 0.41296095117563847
	.quad	0x3fb8579a1ead4588              # double 0.095086700906241828
	.quad	0x3fed7261e9c9b461              # double 0.92021270429325963
	.quad	0x3fe104820c90f049              # double 0.53180029348687541
	.quad	0x3fd68135db69327c              # double 0.35163637568329142
	.quad	0x3fa5057833d36e90              # double 0.041057354284672276
	.quad	0x3fde7f222a12eebc              # double 0.47650961025986383
	.quad	0x3fcd1d6e0b4e7cac              # double 0.22746062805251677
	.quad	0x3fe438bc92c3ea1c              # double 0.6319258562573995
	.quad	0x3febd4b269365511              # double 0.86971397923722027
	.quad	0x3fdfb225dd369516              # double 0.49524828532078524
	.quad	0x3fc28f5976e51d28              # double 0.14499967866343266
	.quad	0x3f8f76f45b1c48c0              # double 0.015363606482001635
	.quad	0x3fc13d46b7864c1c              # double 0.1346825023761945
	.quad	0x3fe9e6a63c659384              # double 0.80940543934103503
	.quad	0x3fe3756bb302f4b0              # double 0.6080835815734158
	.quad	0x3fe760c55d56c86e              # double 0.7305628607775938
	.quad	0x3fee846f116db49b              # double 0.95366624263774058
	.quad	0x3fdde9406b595f8e              # double 0.46736155017196601
	.quad	0x3fe6ef9fb2fc86ce              # double 0.71675095518386356
	.quad	0x3fe45ad509e63877              # double 0.63608791287857869
	.quad	0x3f83db9e916b7bc0              # double 0.0096962345245951153
	.quad	0x3fedd35123ed9ca4              # double 0.93204552666874862
	.quad	0x3fef170012004c39              # double 0.97155765071727906
	.quad	0x3fed082f4f8a0356              # double 0.9072491219995793
	.quad	0x3fd53d0aa8520efe              # double 0.33185068547776087
	.quad	0x3fa0560edd3140d0              # double 0.031906570912384802
	.quad	0x3fa40abe78d87280              # double 0.039144470454833602
	.quad	0x3fd54c26764bfcba              # double 0.33277284195350953
	.quad	0x3fcb286e36a82868              # double 0.21217134159843742
	.quad	0x3fea67fc3d69bb7a              # double 0.82519351954202524
	.quad	0x3fef0975944752d9              # double 0.96990469895043951
	.quad	0x3fee503ff898f3e3              # double 0.94729612878984104
	.quad	0x3fe9e52a3f28c0ee              # double 0.80922424636631063
	.quad	0x3fdebdb3ebf1b2ce              # double 0.48032854119700807
	.quad	0x3fec15a2f01a3a0e              # double 0.87764117140778963
	.quad	0x3fc5aca767e23150              # double 0.16933147976340956
	.quad	0x3fc53f4218ca0e3c              # double 0.16599298677839325
	.quad	0x3febfed85debc108              # double 0.87485903114250707
	.quad	0x3fd80315b99c1284              # double 0.37518828512137525
	.quad	0x3fc7d370480f990c              # double 0.18614009398078968
	.quad	0x3fea2c3915efddf4              # double 0.81789831432882786
	.quad	0x3fdb6ab215f4498a              # double 0.42838718551606603
	.quad	0x3fee9de17f26e4f1              # double 0.95677256426202295
	.quad	0x3fef5c81852e614a              # double 0.98004222881267222
	.quad	0x3fd5b267348d7734              # double 0.33901386386957033
	.quad	0x3fd08aac1f62c4d4              # double 0.2584638887884243
	.quad	0x3fc1a9a5ee459e88              # double 0.13798975118992396
	.quad	0x3fe5bd80606494a5              # double 0.67938250376450482
	.quad	0x3fef0054af0caa76              # double 0.96879038037634646
	.quad	0x3fcf9139ee09ed3c              # double 0.24661945460307233
	.quad	0x3fee968cbed0e335              # double 0.95587765949958359
	.quad	0x3fd6e8428439f57a              # double 0.35792601502165378
	.quad	0x3fdb07a300fbee6a              # double 0.4223411092386643
	.quad	0x3fe2e9c531dfc4a9              # double 0.59103641263040629
	.quad	0x3fe0a2ccf33ee255              # double 0.51987311848558682
	.quad	0x3f43cc7ddd9a3c00              # double 6.0421129019683217E-4
	.quad	0x3fd783a3ac6f4be8              # double 0.36740962828952073
	.quad	0x3fefab8bf6230bef              # double 0.98969076226819463
	.quad	0x3fec139bb7509dd6              # double 0.87739358714764637
	.quad	0x3fed785062ff5f52              # double 0.92093676886995923
	.quad	0x3fd5d0db60f880c6              # double 0.34087261647983913
	.quad	0x3fe06654b2715d8e              # double 0.51249155857196782
	.quad	0x3fee8e85f0d5e226              # double 0.95489785230808333
	.quad	0x3fec76f99529a190              # double 0.88952330716442596
	.quad	0x3fe95e5a4b56ed31              # double 0.79276766505009821
	.quad	0x3fe50d1ca6daa8ac              # double 0.65785057629297716
	.quad	0x3fe6f1b2e0950364              # double 0.71700424064338764
	.quad	0x3fea5813aa12f07d              # double 0.82325156419348355
	.quad	0x3fc6ffe8e4d8f090              # double 0.1796847455424353
	.quad	0x3fd1f593cc221a62              # double 0.28061385092624935
	.quad	0x3fe593b63d85e06f              # double 0.67428123489572822
	.quad	0x3fe7b4f962e6677a              # double 0.74084157291802843
	.quad	0x3fdadfdc509f1eca              # double 0.41991336701583448
	.quad	0x3fa2392a8549ae60              # double 0.035592392702565645
	.quad	0x3fd895aa4329c9bc              # double 0.38413483199033371
	.quad	0x3fe15250b8b78336              # double 0.54129825665959319
	.quad	0x3fcd2887096381d4              # double 0.22779930075104338
	.quad	0x3fc3f07992068b14              # double 0.15577621107248574
	.quad	0x3fcde3af26b2c87c              # double 0.23351086988037995
	.quad	0x3fd4dfb6f7fe1106              # double 0.32615446298611095
	.quad	0x3fe9149178d4e99e              # double 0.78376077270450017
	.quad	0x3fc7472f9e3ca600              # double 0.18185992456828615
	.quad	0x3fe8e19ba8bd140a              # double 0.77754004437213209
	.quad	0x3fd095affa18a64e              # double 0.25913619445291125
	.quad	0x3fe4999d093816c0              # double 0.64375163841824445
	.quad	0x3fe4de66bf1f6a5a              # double 0.6521486027589376
	.quad	0x3fcd24028749f18c              # double 0.22766143422985541
	.quad	0x3fd5caa845e2b854              # double 0.34049422096984938
	.quad	0x3fec84b9d2efec8f              # double 0.89120188902542619
	.quad	0x3fdb48e8eb4e0c06              # double 0.42632506350508981
	.quad	0x3fe47cabaa04b2b6              # double 0.6402185745879112
	.quad	0x3fdba08b521a4c32              # double 0.43167384164661649
	.quad	0x3fd153d4b34ce898              # double 0.27074162969405213
	.quad	0x3fc5ac8624a60b28              # double 0.16932751454813766
	.quad	0x3fe6ff3715021ca0              # double 0.71865419486211479
	.quad	0x3fdd8ddbfc027e88              # double 0.46178340540243612
	.quad	0x3feedf7b5c61ffda              # double 0.96478050273435234
	.quad	0x3fed8bcf8a74f838              # double 0.92331673662534453
	.quad	0x3fe32fd5890be61c              # double 0.59958912627115835
	.quad	0x3feb8b0fbb511d83              # double 0.86072527489970729
	.quad	0x3fe9f40521684f64              # double 0.81103760266203694
	.quad	0x3fe31bf18ffbd19b              # double 0.597161084383106
	.quad	0x3fc31a207f85e668              # double 0.14923483111106184
	.quad	0x3fe2412405e6d9bd              # double 0.5704517474430798
	.quad	0x3fd94d9839aac3f0              # double 0.39536100036190103
	.quad	0x3fbef509b2b92530              # double 0.12092648137435869
	.quad	0x3fea7a1f0248a998              # double 0.82740736433088369
	.quad	0x3fbb592af5d47b48              # double 0.10682934285840162
	.quad	0x3fd438d2221fc266              # double 0.31596806843211878
	.quad	0x3febaef3cb0e239e              # double 0.86510648402428436
	.quad	0x3fe5343d7c8068b4              # double 0.66262697521894731
	.quad	0x3fbe797d3eaf33f0              # double 0.11904127865200542
	.quad	0x3fccec1153e98a8c              # double 0.22595421407011818
	.quad	0x3fec32f7af83475f              # double 0.88122162132115622
	.quad	0x3fc6296687bce3d4              # double 0.17313844325852179
	.quad	0x3febf0fd14741b33              # double 0.87316755289871251
	.quad	0x3fed33b96eba3cda              # double 0.91256400705779162
	.quad	0x3fe54a01216c089d              # double 0.66528374221549635
	.quad	0x3fd044aa31bada52              # double 0.25419096809802
	.quad	0x3fecf7282383e416              # double 0.90517050682604139
	.quad	0x3fe6cdff601252fd              # double 0.71264618648510203
	.quad	0x3fe96604820b1971              # double 0.79370332144826083
	.quad	0x3fee63aa65122d57              # double 0.94966621151381048
	.quad	0x3f73346e4c79c980              # double 0.0046886738342543088
	.quad	0x3fd7a8173ed09c10              # double 0.36963444837823634
	.quad	0x3fcf3d5101b56a44              # double 0.24405872901373205
	.quad	0x3fde79eb978765ae              # double 0.47619142339461973
	.quad	0x3fe23ee9cdad54ed              # double 0.57017984553627132
	.quad	0x3fc1926defdebfc8              # double 0.13728117191703704
	.quad	0x3fc3a27b6ae914e8              # double 0.15339606018293428
	.quad	0x3f50d68ba2b32400              # double 0.0010277141216639141
	.quad	0x3feede60d9691fd9              # double 0.96464579070106559
	.quad	0x3fc1b377255a3cec              # double 0.1382893497834411
	.quad	0x3fe74d7e462d7971              # double 0.7282096262604637
	.quad	0x3fd27d98317cb164              # double 0.28891568024370984
	.quad	0x3fd704ad408fd452              # double 0.35966044716707757
	.quad	0x3fd8d07c84a420ea              # double 0.3877249999354847
	.quad	0x3fe2f5b109f0a12d              # double 0.59249164525411901
	.quad	0x3fea8532a4f598a5              # double 0.82875950068116266
	.quad	0x3fe7ce55c46aef04              # double 0.74393738138994125
	.quad	0x3fe9053076c65ff3              # double 0.78188346098158801
	.quad	0x3fde3b9d676379c6              # double 0.47238860222378454
	.quad	0x3fc82a50bbbf5ac8              # double 0.1887913624511468
	.quad	0x3fe5b9107ca59410              # double 0.67884086937977095
	.quad	0x3fec3ea4e50610c0              # double 0.8826469872588163
	.quad	0x3fcd18a4eaf966c8              # double 0.22731458161688622
	.quad	0x3f96476faa85f220              # double 0.021756882460509996
	.quad	0x3fdd7da97be1eeb6              # double 0.46079480264573236
	.quad	0x3fe22bbf0b32e257              # double 0.56784012019404428
	.quad	0x3fd8691b0f3c26fe              # double 0.3814151428965572
	.quad	0x3fce2c45466568a4              # double 0.23572603165923056
	.quad	0x3fe98328e78d1af0              # double 0.79726071572153323
	.quad	0x3fe06b9ebedf9a45              # double 0.5131372192379976
	.quad	0x3fb0596f1e9e8088              # double 0.063864655471208676
	.quad	0x3fe508fe26b154ca              # double 0.65734775120895361
	.quad	0x3fc8539af3987ba8              # double 0.19005143064802366
	.quad	0x3fe6a675c69b5090              # double 0.70781983175631247
	.quad	0x3faa289699a5eb40              # double 0.051090914016603595
	.quad	0x3fab2529831410f0              # double 0.053017899752406339
	.quad	0x3fea63f33ae64f5c              # double 0.82470094207608779
	.quad	0x3fd462128b8e7854              # double 0.31848586681906466
	.quad	0x3fd75e7f437a2238              # double 0.36514264668997809
	.quad	0x3fe468b9436d1e63              # double 0.6377836529654356
	.quad	0x3fd2453a69b56dac              # double 0.28547535250774092
	.quad	0x3fea6e39f9781611              # double 0.82595537876540182
	.quad	0x3fc7ce2dc4a5e244              # double 0.18597957708313306
	.quad	0x3f874c116b127540              # double 0.011375557022172189
	.quad	0x3fe716ebc6e288f4              # double 0.72154797405917614
	.quad	0x3fe5531a714c5fcd              # double 0.66639444473821074
	.quad	0x3fd7fe00131003da              # double 0.37487794744089131
	.quad	0x3fe8da0a16581a35              # double 0.77661613811580443
	.quad	0x3fd1c5ea5bf0d89c              # double 0.27770480135530717
	.quad	0x3fd4ab4fcfd98d9c              # double 0.32295604036172576
	.quad	0x3fe3356a51acbeff              # double 0.60027042343241976
	.quad	0x3fe2ee1975e82e7c              # double 0.59156487492278087
	.quad	0x3fc586bde017dac0              # double 0.16817449037599452
	.quad	0x3fd4263f3629ca32              # double 0.31483440675143293
	.quad	0x3fe1714422c63a5a              # double 0.54507643501149095
	.quad	0x3fe2ee393424238b              # double 0.59158001121351
	.quad	0x3fe1427822b5b304              # double 0.53936392573595571
	.quad	0x3fe117ca63ae5b1d              # double 0.53415412396393303
	.quad	0x3fe46ddc6206fd3a              # double 0.63841075082738219
	.quad	0x3febd2ce4245c290              # double 0.86948311752174057
	.quad	0x3fee708423384593              # double 0.95123488310689408
	.quad	0x3fe55d535f7bb72a              # double 0.66764229439806866
	.quad	0x3fd84e10c117fbf8              # double 0.37976473671727673
	.quad	0x3fee2d9b89bc0dee              # double 0.94306733037268287
	.quad	0x3fde965120c89b22              # double 0.47792461587452995
	.quad	0x3fd36a560b7f9c12              # double 0.30336524126909226
	.quad	0x3fdfd569bc6b9092              # double 0.49740069771201789
	.quad	0x3fd1d9588fbfd58a              # double 0.27889074361822763
	.quad	0x3fe243a692fe8d3b              # double 0.57075813970406075
	.quad	0x3fe862961b040d0f              # double 0.76203446651962448
	.quad	0x3fec8c292c037f7f              # double 0.89210947605532442
	.quad	0x3fe640c3d2e6cb85              # double 0.69540587608058557
	.quad	0x3fae976ecf442f20              # double 0.059749090958659545
	.quad	0x3fc1825953dd5224              # double 0.13679043383548717
	.quad	0x3fe8cc14e0fef87e              # double 0.7749122995808333
	.quad	0x3fe3d56c9bf89da8              # double 0.61980276549450242
	.quad	0x3fe866bb1a72e035              # double 0.76254038968818938
	.quad	0x3fe75fe9f9e2d9c5              # double 0.73045824819455929
	.quad	0x3fefc8769238219e              # double 0.99322060163926884
	.quad	0x3feb806bdffc0ffc              # double 0.85942643877979163
	.quad	0x3fdbf840f970c05c              # double 0.4370272098485708
	.quad	0x3fe4fe6ebc535749              # double 0.65605866224607567
	.quad	0x3fca77b0f6a75100              # double 0.20677768748885939
	.quad	0x3fc29e9f09739fa8              # double 0.14546573602205837
	.quad	0x3fe7f1b922cfb99a              # double 0.74825722502810099
	.quad	0x3fe87f7b5dc37a71              # double 0.76556175530624959
	.quad	0x3fe6f63131161288              # double 0.71755275332596202
	.quad	0x3fe1a0809072a326              # double 0.55084255421124761
	.quad	0x3fdc1e6f9332ea18              # double 0.43935765623942435
	.quad	0x3f66dae1b1468200              # double 0.0027899177604953085
	.quad	0x3fe913509691f9c9              # double 0.78360776336904181
	.quad	0x3fe9800e196381dc              # double 0.7968817230103542
	.quad	0x3fbbea8cbd6ba7b0              # double 0.10904769539379688
	.quad	0x3fc7edeeb3d90918              # double 0.18694862157469383
	.quad	0x3fed3030d5909a0f              # double 0.91213266097912704
	.quad	0x3feede1f9f94a61a              # double 0.96461468856904564
	.quad	0x3fd6ba66983cfc70              # double 0.35512699954046578
	.quad	0x3fc5f70b485ed848              # double 0.17160168679919452
	.quad	0x3fe7ef190f8466a4              # double 0.74793675451947594
	.quad	0x3fb409d842574160              # double 0.078275219151014763
	.quad	0x3fe00d39900b2acc              # double 0.50161436208267096
	.quad	0x3fd11aef1cd7fd8c              # double 0.26726892296570592
	.quad	0x3fedbdeb6c217a9d              # double 0.92943354720394533
	.quad	0x3fd25f363dd4060e              # double 0.28706127202903609
	.quad	0x3fd3b1fe4f2159ac              # double 0.30773885467115281
	.quad	0x3feaafd8533efbe9              # double 0.83396545657148835
	.quad	0x3fe92373dfaf1496              # double 0.78557771385443931
	.quad	0x3fe54b4db083f9a2              # double 0.66544231868447334
	.quad	0x3fdd3d10f0bd8aee              # double 0.45685218343548584
	.quad	0x3fe070f731313de8              # double 0.51378974540596989
	.quad	0x3fd7415069e6d3a2              # double 0.36336145727119107
	.quad	0x3fc1c48b4327265c              # double 0.13881054667426695
	.quad	0x3fb96f8557ea2758              # double 0.099357923472920162
	.quad	0x3fdbd362bf7525e2              # double 0.43477696129829557
	.quad	0x3fd3252d699c467a              # double 0.29914412797470613
	.quad	0x3fe4d5848b3411fa              # double 0.65106417835391928
	.quad	0x3fb699c1107b33d0              # double 0.088283602260346372
	.quad	0x3fb1fb2c7eca5f08              # double 0.070238858179774266
	.quad	0x3fe6ee7b43033d41              # double 0.7166115101662528
	.quad	0x3fe9a422c70726f8              # double 0.80128611443180286
	.quad	0x3fd11a23ef721ccc              # double 0.2672204817140027
	.quad	0x3fd96adff0880ac2              # double 0.39714811791797555
	.quad	0x3fd678161f0f4c4a              # double 0.35107949288539386
	.quad	0x3fc23ee4b1be74cc              # double 0.14254435233025331
	.quad	0x3fec9a2fbc478b77              # double 0.89382159016928042
	.quad	0x3fc70fc15123b550              # double 0.1801683088482755
	.quad	0x3fdf7ed233d6d330              # double 0.49211554586809125
	.quad	0x3fee2bdbcafc4499              # double 0.94285382886495761
	.quad	0x3fe32e3aca6f45d6              # double 0.59939326799411208
	.quad	0x3fdbdce2bdc7469c              # double 0.43535679371880476
	.quad	0x3fafe5dce5579040              # double 0.0623005895575095
	.quad	0x3fed90a0fce28567              # double 0.92390488998004805
	.quad	0x3fe1f3fcad542ac2              # double 0.56103357175137369
	.quad	0x3fd679ef37a9bf48              # double 0.35119228778693357
	.quad	0x3fd7f5e647b8db4e              # double 0.37438351635085076
	.quad	0x3fe8d0986e1b61ec              # double 0.77546330933824725
	.quad	0x3fac6ad990c14960              # double 0.055502699775973552
	.quad	0x3fde1087ab37a1a2              # double 0.46975890846672474
	.quad	0x3fe4bec0b6efb6be              # double 0.64828525285493988
	.quad	0x3feda7296505164d              # double 0.92665548067516001
	.quad	0x3fceb449b64bc65c              # double 0.23987695122882513
	.quad	0x3fd1e9179d81f01a              # double 0.27985182172392487
	.quad	0x3fe639ad84ea00e5              # double 0.69454074821262834
	.quad	0x3fd9c9504c214ba6              # double 0.40291221079422213
	.quad	0x3fafed9b9ccd4ca0              # double 0.062359679118025868
	.quad	0x3fd18fbf3eada830              # double 0.27439862366611845
	.quad	0x3fb6930f7a4d8720              # double 0.088181464537708809
	.quad	0x3fcf2625b1212984              # double 0.24335166119483287
	.quad	0x3fdab31ecca10684              # double 0.41718263610173545
	.quad	0x3fc42e26c7acbbc0              # double 0.15765843152754933
	.quad	0x3fda41ac28f67638              # double 0.41025833130138123
	.quad	0x3fe2b163952759a1              # double 0.5841539300115991
	.quad	0x3fe352378ae860c4              # double 0.60378625040450418
	.quad	0x3fc4ac45316ac224              # double 0.16150727189007441
	.quad	0x3fed5577981d95da              # double 0.91668300352165066
	.quad	0x3fe10375cf036e77              # double 0.53167238647752313
	.quad	0x3fd74025e9eb8e22              # double 0.36329028934253149
	.quad	0x3fcc34a0947bf454              # double 0.2203560566921704
	.quad	0x3fdd6fc7b0eb0844              # double 0.45994751240880682
	.quad	0x3fed76af7b48fa4f              # double 0.92073797301402205
	.quad	0x3fdc1cc0aab68bc2              # double 0.43925491973112341
	.quad	0x3fe20bd29cdb5e10              # double 0.56394320140947407
	.quad	0x3fe8bba742994296              # double 0.77290690429261377
	.quad	0x3fd2a2c7c909a63c              # double 0.29118532784068285
	.quad	0x3fd581ce165d8e8c              # double 0.33604767021299931
	.quad	0x3fe5b586719e7a02              # double 0.67840883437367006
	.quad	0x3fe0339c91811232              # double 0.506300243556842
	.quad	0x3fede49d376db5b0              # double 0.93415699792756435
	.quad	0x3fd62346af39ed10              # double 0.34590308296147132
	.quad	0x3fc0c20f6cf62304              # double 0.13092224903473249
	.quad	0x3fcddae06b7fa144              # double 0.23324208497002463
	.quad	0x3fdc75619de737fa              # double 0.44466438694223565
	.quad	0x3fb703d0870caef0              # double 0.089901955576973113
	.quad	0x3fc2a51d580cffb0              # double 0.1456638984618599
	.quad	0x3fdf2fbeace88422              # double 0.48728911290715093
	.quad	0x3feb4b524953044a              # double 0.85294451066159493
	.quad	0x3febee3dfae293a2              # double 0.8728322887515001
	.quad	0x3fd6356a31c12c72              # double 0.34701018198820244
	.quad	0x3fdc1e30b56bbea2              # double 0.43934266774065567
	.quad	0x3fe119466f21e531              # double 0.5343353434138064
	.quad	0x3fe73bb5bbff7808              # double 0.72603880613655836
	.quad	0x3fe05cbdb5101de2              # double 0.51132092822893704
	.quad	0x3fd5c448b023b3f8              # double 0.34010522080535521
	.quad	0x3fd47933275521ce              # double 0.31989744988507318
	.quad	0x3fe739cdc8afa6b1              # double 0.72580613323699172
	.quad	0x3fdbf74f9f386702              # double 0.43696966694697903
	.quad	0x3fee1694d17d20e6              # double 0.94025650897767998
	.quad	0x3fdd3788c3bc0646              # double 0.45651454081243903
	.quad	0x3fbe72e0af3d2c50              # double 0.11894039419455393
	.quad	0x3fee80602a316472              # double 0.95317085495766052
	.quad	0x3feaae0b3b00ae93              # double 0.83374558948476574
	.quad	0x3fef6fba3afc5267              # double 0.98238860626822777
	.quad	0x3fe11d34900a506a              # double 0.53481510289067313
	.quad	0x3fe73c4df7612d47              # double 0.72611139599158825
	.quad	0x3fe2522a48f4ccff              # double 0.57252992867725527
	.quad	0x3fd03a2c061eaa94              # double 0.25355053517947934
	.quad	0x3fe62499ee869092              # double 0.69196793162383785
	.quad	0x3fe8bc4197d5b1ea              # double 0.77298049597953633
	.quad	0x3fe32d2ea6a68fc0              # double 0.5992654089827667
	.quad	0x3fd692f3d429b81c              # double 0.35271926611938098
	.quad	0x3fcca25f7b2ec340              # double 0.22370522990015651
	.quad	0x3fec69c6afa0a787              # double 0.88791212370163997
	.quad	0x3fe131ee77e2b0a5              # double 0.53734515586031206
	.quad	0x3fddb7bc754ab31a              # double 0.46433936552311794
	.quad	0x3feaeaab2f5a8653              # double 0.84114608048202866
	.quad	0x3fb6c129f2b5bc88              # double 0.088884946589802394
	.quad	0x3fc095cdaf84db0c              # double 0.12957163877737121
	.quad	0x3fed6eebfbd1fbf6              # double 0.91979026015894649
	.quad	0x3fed81bc9aba3f4e              # double 0.92208700390072251
	.quad	0x3fb86b5bd11c6148              # double 0.095388163139778048
	.quad	0x3fed6257583b14b4              # double 0.91825453980040672
	.quad	0x3fdf6d7b15f4b526              # double 0.49105717796449466
	.quad	0x3fe54ef5275066dd              # double 0.66588838270692075
	.quad	0x3fe754b351bac4a0              # double 0.72908941233449198
	.quad	0x3fe45cc1177302b6              # double 0.63632254199918381
	.quad	0x3fe708ce2a41a09d              # double 0.71982486966318826
	.quad	0x3fd5d6409770a70a              # double 0.34120192326609866
	.quad	0x3feeb709bca18ecc              # double 0.95984351007469959
	.quad	0x3fe60597915c07cf              # double 0.68818262472654534
	.quad	0x3fbb2dbf96159990              # double 0.1061668149392061
	.quad	0x3fe1bcc331b94046              # double 0.55429229461334084
	.quad	0x3fbc33fec565eb98              # double 0.11016838378229321
	.quad	0x3fe13796a9dd862d              # double 0.53803570916006083
	.quad	0x3fe934236b2ea39d              # double 0.7876145451929123
	.quad	0x3fdbfdce71a1caca              # double 0.43736611458659225
	.quad	0x3fdf4c81853d9220              # double 0.48904455196159979
	.quad	0x3fdb6634595d13a8              # double 0.42811306692993378
	.quad	0x3feaad8bbe5889ed              # double 0.83368479897427294
	.quad	0x3fe6fd216792049f              # double 0.71839971760359222
	.quad	0x3fd144a436a5c6a4              # double 0.26981454216648104
	.quad	0x3fe055e530bcf222              # double 0.51048526305345754
	.quad	0x3fede3758e1cd3a9              # double 0.93401601559036351
	.quad	0x3fce8bad821a9450              # double 0.23863762715078218
	.quad	0x3fcf200634a7b300              # double 0.24316480227516735
	.quad	0x3fdc4ca2cf522b42              # double 0.44217748876751639
	.quad	0x3fea249d37834e3e              # double 0.81696949808469532
	.quad	0x3fdfa8e8758636cc              # double 0.49468432881336066
	.quad	0x3fc185ceca2cf770              # double 0.13689598914964618
	.quad	0x3fd08ab07ce915bc              # double 0.25846492956437905
	.quad	0x3fbc533239c39ae8              # double 0.11064447317367476
	.quad	0x3fe5bb661793d752              # double 0.67912582974416069
	.quad	0x3fecb79b9c347397              # double 0.89741306790129982
	.quad	0x3fa8b95c26e3dc50              # double 0.04828918432934215
	.quad	0x3fe04e115448c873              # double 0.50952974759844805
	.quad	0x3fe73d753e62cb38              # double 0.72625219521282869
	.quad	0x3fa7083777b5c370              # double 0.044984563220061058
	.quad	0x3fc5dc4907f72764              # double 0.17078507317483649
	.quad	0x3fd6f41b807fe448              # double 0.35864913510119267
	.quad	0x3fe65004b344e67a              # double 0.69726786626343018
	.quad	0x3fc7259ff6305640              # double 0.18083571930826459
	.quad	0x3fece82f6c1500a2              # double 0.90334292516492476
	.quad	0x3fdc97538dd0b0ca              # double 0.44673622941151037
	.quad	0x3fdedf9e77105780              # double 0.48239862086608554
	.quad	0x3fea83cdddcea56b              # double 0.82858937570305835
	.quad	0x3fed60a834cecd5e              # double 0.91804895700481004
	.quad	0x3fc67db8dc62c8c4              # double 0.17571173440007304
	.quad	0x3fe060d81b851206              # double 0.51182179808580552
	.quad	0x3fe25f6620dfbbf5              # double 0.5741453783101621
	.quad	0x3fdb5308c45939ba              # double 0.42694300818120789
	.quad	0x3fce7d5212672194              # double 0.23819948099686583
	.quad	0x3fe91f1be5372d48              # double 0.7850474812379753
	.quad	0x3fd5fdb4a7970534              # double 0.34360996595576698
	.quad	0x3fc9d137134e3764              # double 0.2016972393288895
	.quad	0x3fd609069dab0bc0              # double 0.34430089375763018
	.quad	0x3fed1e8b2c2e5e7d              # double 0.90997847203375637
	.quad	0x3fe2de8ffe82d0a9              # double 0.58966827115229592
	.quad	0x3fd9307fe700d1ca              # double 0.39358518179804192
	.quad	0x3fdf23b887053cc6              # double 0.4865552252349058
	.quad	0x3fdcb076772e8b0e              # double 0.44827043188904347
	.quad	0x3febb5324ed4c5cc              # double 0.86586871525485653
	.quad	0x3fed35260ea9ab1b              # double 0.91273787368604375
	.quad	0x3fe54b75c781e8c2              # double 0.66546143499660837
	.quad	0x3fee6179ecbdf29c              # double 0.94939895857494915
	.quad	0x3fe94ea1be040943              # double 0.79084860908941612
	.quad	0x3fd0f357dc96d906              # double 0.26485249082487916
	.quad	0x3fd36eac1dee2b58              # double 0.30362990305791504
	.quad	0x3fda012659781266              # double 0.40632017838678391
	.quad	0x3fee7138a42f2cfb              # double 0.95132095401041228
	.quad	0x3fe05b3edce7f4d5              # double 0.51113837381094618
	.quad	0x3fbb1ba063be6690              # double 0.10589029727125365
	.quad	0x3fd0ad1afff3116c              # double 0.2605655192858396
	.quad	0x3fcd3d2c8f6da63c              # double 0.22842938426338033
	.quad	0x3fd93cc184282c44              # double 0.39433324724149466
	.quad	0x3fd7dd572365e420              # double 0.37288454491459966
	.quad	0x3fe4ffcf37b52088              # double 0.65622673874260418
	.quad	0x3fe2dadb14368207              # double 0.58921579311214678
	.quad	0x3fd45a4201f0f3c6              # double 0.31800890149662242
	.quad	0x3fdf4b24a67d6f32              # double 0.48896137484347257
	.quad	0x3feeab368470e99a              # double 0.95840001933474928
	.quad	0x3fec71080006d075              # double 0.88879776005934608
	.quad	0x3feac86f57253c81              # double 0.83696715374561859
	.quad	0x3fe567ce53bd65a8              # double 0.66892162661968246
	.quad	0x3fedce363146dd55              # double 0.93142232536676295
	.quad	0x3feebba05a75af5d              # double 0.96040361087714709
	.quad	0x3fe013efda237586              # double 0.50243370633295181
	.quad	0x3fe1bd6c49f4e509              # double 0.55437292523052506
	.quad	0x3fe6165ef6a0b957              # double 0.6902308289479987
	.quad	0x3fdd33715956bef0              # double 0.45626481747147718
	.quad	0x3fe66396199e7db3              # double 0.69965653423053309
	.quad	0x3fe449eae086c89f              # double 0.63402313092071327
	.quad	0x3fc2f4613ef50034              # double 0.14808288168024009
	.quad	0x3feeece349ca6e24              # double 0.96641697323088182
	.quad	0x3fdeb4b31cda054a              # double 0.47977903192084581
	.quad	0x3fd682d577c6d1e6              # double 0.35173546502053765
	.quad	0x3fe58476613d02d7              # double 0.67241972915516157
	.quad	0x3fee4053bdcbd7bf              # double 0.94535243100721533
	.quad	0x3fe2760c6ae0fb98              # double 0.57691021799824949
	.quad	0x3fc9815639da8204              # double 0.19925954651718325
	.quad	0x3fd7fa833ba6c41a              # double 0.37466507745108546
	.quad	0x3fd06b455da8910a              # double 0.25654729982694902
	.quad	0x3fe60e80fb7d2b07              # double 0.68927048796590007
	.quad	0x3fe3fbbad29b2887              # double 0.62447873243333241
	.quad	0x3fd3f5b1b7ac9a0a              # double 0.31187098442970351
	.quad	0x3feebef98622ee12              # double 0.9608123416759915
	.quad	0x3fee5b6b2b183335              # double 0.94865950028324753
	.quad	0x3fdfd6376d8329ce              # double 0.49744973845068052
	.quad	0x3fe3d626a4a7fcfa              # double 0.61989147338309114
	.quad	0x3fedc4dccc452a89              # double 0.93028106590766513
	.quad	0x3fe8a7f3c249cab7              # double 0.77050197550700872
	.quad	0x3fd50f2a2ea8bcb2              # double 0.32905058437877266
	.quad	0x3fdf896a20ee5628              # double 0.49276211944502046
	.quad	0x3fe7440cdf8b8c03              # double 0.7270569196811042
	.quad	0x3fcaed616a77461c              # double 0.21036927889376578
	.quad	0x3fef9d2bab26eb89              # double 0.98793586185580395
	.quad	0x3fea92ea326d0cd1              # double 0.83043393944572064
	.quad	0x3fe1c88e957bf8bd              # double 0.55573205181260443
	.quad	0x3feec2909d995a00              # double 0.96125059872684914
	.quad	0x3fb01cf8e3884158              # double 0.062942081022133833
	.quad	0x3fa78f96a6b40650              # double 0.046017368173136064
	.quad	0x3fdcad42fc96e270              # double 0.4480750528996742
	.quad	0x3fe9429c9566f1b1              # double 0.78938130550482388
	.quad	0x3fed1dafdab70bbf              # double 0.90987389295366217
	.quad	0x3fbcf07f85c25318              # double 0.11304471030809926
	.quad	0x3fed948562409077              # double 0.92438000860103287
	.quad	0x3fe0486a356ed49b              # double 0.50883970676536039
	.quad	0x3fcd2df4d3bc9c1c              # double 0.22796497667988624
	.quad	0x3fc39a85839b7394              # double 0.15315312315115348
	.quad	0x3fef96b407dfcf05              # double 0.987146392230415
	.quad	0x3fbfcf2c9ff91e18              # double 0.12425497918695105
	.quad	0x3f84354c96885980              # double 0.0098672851027401531
	.quad	0x3fe2f3250b3192b5              # double 0.59218074976214174
	.quad	0x3fcd4af9650d6c64              # double 0.22885053095055519
	.quad	0x3fd41caddf9e78e2              # double 0.31425043905063721
	.quad	0x3fc05e94055c4008              # double 0.12788629781471195
	.quad	0x3fd7bf69bf1d4e3e              # double 0.37105792678378069
	.quad	0x3faffeefe5872120              # double 0.062491890686546592
	.quad	0x3fe16457a3db1b21              # double 0.54349882128812876
	.quad	0x3fedff9f8327279d              # double 0.93745399108705707
	.quad	0x3fcc52101a1e3ebc              # double 0.22125436091709172
	.quad	0x3fd5a1441eab435c              # double 0.33796790118235776
	.quad	0x3fd8664b910d22ca              # double 0.38124360242049404
	.quad	0x3fda031a86371f24              # double 0.40643942934956301
	.quad	0x3faa94d7877522b0              # double 0.051916823659273859
	.quad	0x3fc24c4021e8bd84              # double 0.14295198112220586
	.quad	0x3fcf5418ee6993cc              # double 0.24475394860487965
	.quad	0x3fd44caa0998a746              # double 0.31717921197070031
	.quad	0x3fb9d0e47a732fe0              # double 0.10084369649410929
	.quad	0x3fed1c6d29c88bf7              # double 0.90972002182786482
	.quad	0x3fd323a5a22f6ace              # double 0.29905072058106164
	.quad	0x3fd191d1a48d024e              # double 0.27452508038917223
	.quad	0x3fef0c60bccccdd3              # double 0.97026097178462078
	.quad	0x3fe473bcaafb8602              # double 0.63912804980299165
	.quad	0x3feeb93e10690eb7              # double 0.96011260228302475
	.quad	0x3fc76279a7215560              # double 0.1826927248063539
	.quad	0x3feda2c5818b67db              # double 0.92611956884070012
	.quad	0x3fc04f642c7120e4              # double 0.12742283029570622
	.quad	0x3fea3b0c9272524b              # double 0.8197081432613883
	.quad	0x3fe727832ffc7814              # double 0.72357329723650077
	.quad	0x3fe3171dad58f47a              # double 0.59657176834993142
	.quad	0x3fd9f9d0b6874888              # double 0.40587251496356958
	.quad	0x3fecc6a1628a2e9a              # double 0.89924687620210197
	.quad	0x3feb7ca8e25dee7b              # double 0.85896724903382393
	.quad	0x3fe557a6910ee49e              # double 0.66694954234766946
	.quad	0x3feb762db119ae91              # double 0.85817608442217097
	.quad	0x3fe372c888768983              # double 0.60776163723885224
	.quad	0x3fe5cefcb5264762              # double 0.68151698475615441
	.quad	0x3fd70f4833d3a198              # double 0.36030774174880653
	.quad	0x3fd907f3728fd0bc              # double 0.39111028850244245
	.quad	0x3fe12787e0f2b190              # double 0.53607553420219922
	.quad	0x3fe3394c64a71997              # double 0.60074443491685059
	.quad	0x3fe803f8af798238              # double 0.7504847933997274
	.quad	0x3fc5492febf769fc              # double 0.16629599592017985
	.quad	0x3fe34c18a42caeff              # double 0.60303909364071717
	.quad	0x3fec5092b061783b              # double 0.88483557175982896
	.quad	0x3fdf8b41f5c77656              # double 0.49287461282606182
	.quad	0x3fccae126136a9d8              # double 0.22406224962953902
	.quad	0x3fefc4504de3c765              # double 0.99271407330364225
	.quad	0x3fe35d9724e1e243              # double 0.60517461017213525
	.quad	0x3fe373217edc210e              # double 0.60780405785865965
	.quad	0x3fc82c8119f4cd08              # double 0.18885816352267448
	.quad	0x3fcf0f3547a622b0              # double 0.2426516151283713
	.quad	0x3fe8a2219b88898f              # double 0.76979141595465872
	.quad	0x3fed97a19321d0fa              # double 0.92475966202485371
	.quad	0x3fde3c2de649e754              # double 0.47242305268411156
	.quad	0x3fe6dea8f0c09d86              # double 0.71468016645387489
	.quad	0x3fd159747c3d3126              # double 0.27108490116804018
	.quad	0x3fedf54af22ad5a7              # double 0.93619296358399573
	.quad	0x3fe184f91cf50e42              # double 0.5474820676394716
	.quad	0x3fe22d99006ac932              # double 0.5680661209246749
	.quad	0x3fe0bfdc920f98b3              # double 0.52342060592197581
	.quad	0x3fc3409563309560              # double 0.15040843337298337
	.quad	0x3fea18ee90c55cbe              # double 0.81554344440055337
	.quad	0x3fd8b7814889dfe0              # double 0.38620025714726403
	.quad	0x3fef4170dce27f94              # double 0.97673838750414399
	.quad	0x3fe83fbab1b95e32              # double 0.75777945243584655
	.quad	0x3fdba1ce479b2568              # double 0.43175084107186601
	.quad	0x3fe8969fab600bb1              # double 0.76838668319429904
	.quad	0x3fe3fc8f2569a9bd              # double 0.62457997615029337
	.quad	0x3fd2418681c8c56a              # double 0.28524935411686292
	.quad	0x3fd667ba035e6958              # double 0.35008097008689765
	.quad	0x3fe690d8cef19676              # double 0.70518150728885476
	.quad	0x3fed76cfb2a5cd07              # double 0.92075333492394484
	.quad	0x3fe14cec6b2858dc              # double 0.54064007691593075
	.quad	0x3fe38e35ef6f4da4              # double 0.61110970272641341
	.quad	0x3fd62183762e7bfe              # double 0.34579550305528517
	.quad	0x3fc33db5ebbecfc8              # double 0.15032075892452057
	.quad	0x3fce7511fbdbf96c              # double 0.23794770047966141
	.quad	0x3fdf61861281eb9a              # double 0.49032737548230332
	.quad	0x3fe745f4450b8fda              # double 0.7272893284357409
	.quad	0x3fe76cd92dd2e1b4              # double 0.73203715276672776
	.quad	0x3fc27626b5f33030              # double 0.14423068889880275
	.quad	0x3fd5147a85c88436              # double 0.32937491478702741
	.quad	0x3fe124fb3271fa41              # double 0.5357643113382623
	.quad	0x3fdcdea37fa5e214              # double 0.4510887857973398
	.quad	0x3fc8db8a85f0b46c              # double 0.19419986286212365
	.quad	0x3fea42db6b217912              # double 0.82066126750922508
	.quad	0x3fc9e4d6a9ad3a98              # double 0.20229609761232292
	.quad	0x3fd195fb55d45d2a              # double 0.27477916127959878
	.quad	0x3fea18c07f4fa658              # double 0.81552147736983738
	.quad	0x3fe969791fd31687              # double 0.79412513938650953
	.quad	0x3fe67acc9eb7ece6              # double 0.70249014854144032
	.quad	0x3fdb605bdac41872              # double 0.42775627483241074
	.quad	0x3fdfa89b8b60e8c8              # double 0.4946659909361526
	.quad	0x3fa522478b501b90              # double 0.041277156597110509
	.quad	0x3fc6c046f9bf8424              # double 0.17774283594829499
	.quad	0x3fe550d77e957200              # double 0.66611838076966023
	.quad	0x3fd657dc939cb91e              # double 0.34911264815572618
	.quad	0x3fd72537ab126a56              # double 0.36164657312625559
	.quad	0x3fd1d7f3b7f831e0              # double 0.27880566564343034
	.quad	0x3fee009c16292adc              # double 0.93757442787440536
	.quad	0x3fe03fcc16ab7a1c              # double 0.50778774669362603
	.quad	0x3fe0b45dc6de835b              # double 0.52201737252844838
	.quad	0x3fb2b6388d014ad0              # double 0.073092970299778459
	.quad	0x3fecbe34bb211808              # double 0.89821850346265908
	.quad	0x3fe7a654dbd95d57              # double 0.73905413569711242
	.quad	0x3fd379083602db38              # double 0.30426221155669309
	.quad	0x3fe028e33533f9a8              # double 0.50499115363327451
	.quad	0x3fe02e67b2c46e68              # double 0.50566468158235711
	.quad	0x3fe3065a370e3bec              # double 0.59452543976828798
	.quad	0x3fdbb565adbb0960              # double 0.43294660535697993
	.quad	0x3feb6736329fff89              # double 0.85634908569044044
	.quad	0x3fc1b22c49351498              # double 0.13824990820481697
	.quad	0x3fab619c3fbc4910              # double 0.053479082851611293
	.quad	0x3fc4a40e13db4630              # double 0.16125656098897556
	.quad	0x3fc1a0e84bdafb74              # double 0.1377230043780987
	.quad	0x3fe0e61f364dffb0              # double 0.52809105497725817
	.quad	0x3fe6b8aa50dc2488              # double 0.71004215043025543
	.quad	0x3fe3437ffd38084e              # double 0.60198974091350421
	.quad	0x3fc57a5d50efd69c              # double 0.16779676868434457
	.quad	0x3fe0305e4015b339              # double 0.50590431706004957
	.quad	0x3fea31fe532edecd              # double 0.81860271689125741
	.quad	0x3fce989719ff5640              # double 0.23903168458370949
	.quad	0x3fe071cb64a7cf89              # double 0.51389093074111358
	.quad	0x3fe873d5c43d10d6              # double 0.76414001777495844
	.quad	0x3fe6eabcd4585ba7              # double 0.71615449403440301
	.quad	0x3f366fa9a68a3800              # double 3.42348974791018E-4
	.quad	0x3f97a2eccb745380              # double 0.023082446973677673
	.quad	0x3fecfdf337298555              # double 0.90599976323953035
	.quad	0x3fec12ac9f467a5e              # double 0.87727957828958458
	.quad	0x3fe247edc24b9c3e              # double 0.57128036449729058
	.quad	0x3fcba1cc895ae6b8              # double 0.21587521273413812
	.quad	0x3fe79a3829cc4469              # double 0.73757560886055018
	.quad	0x3fc01aaf1c9b0058              # double 0.12581433197738323
	.quad	0x3fedc9bbd69b3f3d              # double 0.93087570109671669
	.quad	0x3fe68f83d43a9371              # double 0.70501891566219232
	.quad	0x3fd01d6b3e8fbf52              # double 0.25179558858416329
	.quad	0x3fe6a5ba746e88e9              # double 0.70773051014500965
	.quad	0x3fd53aa4dd146a02              # double 0.33170434560602768
	.quad	0x3fb2ee85a6b76920              # double 0.073952058031327983
	.quad	0x3fe1eb2b98a383e0              # double 0.55995731174709462
	.quad	0x3fdbf7bbd3d49170              # double 0.43699546515042353
	.quad	0x3fdf15916b643f54              # double 0.48569140899143304
	.quad	0x3fe4246fc8288e42              # double 0.62944783299867191
	.quad	0x3fde2e24dd543a9c              # double 0.47156640638505976
	.quad	0x3fdf51241d5789dc              # double 0.48932745805191558
	.quad	0x3faac1c2e13d3e60              # double 0.052259531016372263
	.quad	0x3fd8c54e8a4436d8              # double 0.38704265120109715
	.quad	0x3fc8da53a089a788              # double 0.19416280115848061
	.quad	0x3fdf89fbaa3ab8c2              # double 0.49279681800807051
	.quad	0x3fec8d1a4ce1691d              # double 0.89222445502972259
	.quad	0x3fdebddf2ecf54d2              # double 0.48033885546949506
	.quad	0x3fd355d3ae6a03be              # double 0.30211345703724735
	.quad	0x3fe30cfef010244f              # double 0.59533640754046668
	.quad	0x3fecadf1461e4c2c              # double 0.89623321242323106
	.quad	0x3fe2d1b5f06ce89c              # double 0.58809945066538516
	.quad	0x3fe35de6d1fb1413              # double 0.60521260272855881
	.quad	0x3fea50ce6ef949c1              # double 0.82236406015936592
	.quad	0x3fafa60dc5cb5e10              # double 0.061813764948677741
	.quad	0x3fe00899fc72e4ea              # double 0.50104998880774798
	.quad	0x3fd85614caf79d88              # double 0.38025398083706152
	.quad	0x3fdb3e23f3039166              # double 0.42566775066213436
	.quad	0x3fd58fd5557ab1aa              # double 0.33690389010987565
	.quad	0x3fe1d3b2ff7449ed              # double 0.55709218877228539
	.quad	0x3fabdf4c1f0fe530              # double 0.054437998573073521
	.quad	0x3fef0ec54d672a2c              # double 0.97055306546946473
	.quad	0x3fe8242a9f8a26a2              # double 0.75441485557640342
	.quad	0x3fe941147516f302              # double 0.78919432515212429
	.quad	0x3fc76f2d16994b84              # double 0.18308032611329506
	.quad	0x3f94229c21b94d20              # double 0.019663276251162931
	.quad	0x3fe756712acf6197              # double 0.72930200921387012
	.quad	0x3fef20ab3d897ee9              # double 0.97273790377582003
	.quad	0x3fb5bfee38525500              # double 0.084959877729790634
	.quad	0x3fd0fad6f361cb06              # double 0.26531003730558245
	.quad	0x3feb5714fe3bfbe1              # double 0.8543801274789723
	.quad	0x3fc029063d3d1ebc              # double 0.12625196447537756
	.quad	0x3fd009d5bcb87c3e              # double 0.25060027532339635
	.quad	0x3feb08e95d6abb75              # double 0.84483783956043956
	.quad	0x3fe00e8cd0ce3190              # double 0.5017761305075954
	.quad	0x3fec5e3012c7c362              # double 0.88649753253967511
	.quad	0x3fc28890358b4418              # double 0.1447925816960669
	.quad	0x3fe5643a09b0bafb              # double 0.66848470585486497
	.quad	0x3fd2a63b97eb73b4              # double 0.29139604411994502
	.quad	0x3fa1359d56cf1660              # double 0.033612171980661243
	.quad	0x3fe327a46d04815f              # double 0.59858914654254736
	.quad	0x3fecf8f5cf040946              # double 0.90539064820067305
	.quad	0x3fd7a0576a1c6b02              # double 0.36916146623995882
	.quad	0x3fd62fe9c6b81194              # double 0.34667438894418834
	.quad	0x3fed7e6219b7707f              # double 0.92167763731733021
	.quad	0x3fde31c37740e48a              # double 0.47178732534263956
	.quad	0x3fe51692acc6d1a0              # double 0.65900548692166083
	.quad	0x3fdc3028c6b334d6              # double 0.44043940929698289
	.quad	0x3fcff8f453b3283c              # double 0.24978498541742222
	.quad	0x3fd9323ec2bdabf0              # double 0.39369172113100515
	.quad	0x3fe9ae229b1159c9              # double 0.80250673567462016
	.quad	0x3fd8e5fad9308fd2              # double 0.38903685769969087
	.quad	0x3fcfeec2622014f8              # double 0.24947385588908566
	.quad	0x3fd8af3a5b01e782              # double 0.38569506537862008
	.quad	0x3fef091e4ca66e9b              # double 0.96986308069922999
	.quad	0x3fd56cfe8d0497de              # double 0.3347774865272849
	.quad	0x3fd2e95ced42016a              # double 0.29549334687910422
	.quad	0x3fd29af496aaf648              # double 0.29070772851614324
	.quad	0x3fd19015fc7c6866              # double 0.2744193044360429
	.quad	0x3fe2d20d6fc726c3              # double 0.58814117271068544
	.quad	0x3fe22a170dda33b8              # double 0.56763794618165431
	.quad	0x3fce519f818d80a4              # double 0.23686593843286119
	.quad	0x3fe9992df4aa6da2              # double 0.7999486712100643
	.quad	0x3fccee36534cecf0              # double 0.22601965968519933
	.quad	0x3fa076499aea22a0              # double 0.03215246215865375
	.quad	0x3fefcbe8a95aac79              # double 0.99364121510497149
	.quad	0x3fe0b10cd5f9c2ec              # double 0.52161256591906868
	.quad	0x3fd920dec96909a0              # double 0.3926312415025226
	.quad	0x3fe8a3c091076f8d              # double 0.76998928380952381
	.quad	0x3feec471ad55002d              # double 0.96147998670494916
	.quad	0x3fd1653fd1e7d2ca              # double 0.27180476664152009
	.quad	0x3fcd35dc1e4375e4              # double 0.22820617177687474
	.quad	0x3fe9bda117bf5a84              # double 0.80439810407808964
	.quad	0x3fe0ae793635b31a              # double 0.52129803264469676
	.quad	0x3fe90d2e703cd83a              # double 0.78285905763073704
	.quad	0x3fe1d3d8fad4d8eb              # double 0.55711029997362738
	.quad	0x3fe19cc412064a01              # double 0.55038646240637956
	.quad	0x3fee07353e063e79              # double 0.93837988008631534
	.quad	0x3fdf8f36abfdb328              # double 0.49311606212613635
	.quad	0x3fbfcf71276a9ef0              # double 0.12425906383816332
	.quad	0x3fece93151d310e4              # double 0.90346590024321615
	.quad	0x3fed9e489a7d0f49              # double 0.92557172940767274
	.quad	0x3fdf24371679e1fa              # double 0.48658539957935398
	.quad	0x3fbda7cc7b802d08              # double 0.11584165587571615
	.quad	0x3fd5dfaafe0fab68              # double 0.34177660761513673
	.quad	0x3fda01a1ea919ed4              # double 0.40634963900673182
	.quad	0x3fed314b5b40b50d              # double 0.91226737807088087
	.quad	0x3fdebd4399fe6618              # double 0.48030176199390118
	.quad	0x3fc7a6e7827f78ac              # double 0.18478101608247266
	.quad	0x3fe87a90dd1f7771              # double 0.76496165454930865
	.quad	0x3fe23f0a5dd4942c              # double 0.57019537283179522
	.quad	0x3fee822a9279c4e0              # double 0.95338944061782271
	.quad	0x3feda814e842c4ee              # double 0.92676778186264896
	.quad	0x3fe3f54c21fdd130              # double 0.6236935295005761
	.quad	0x3fe5b23f2083cfb2              # double 0.67800861692966508
	.quad	0x3fe99af06a0ef970              # double 0.80016346659230742
	.quad	0x3fc4d542bab23fb4              # double 0.16275819889096754
	.quad	0x3fc81f93cd8dcf14              # double 0.18846366440595175
	.quad	0x3fe99f5852af448d              # double 0.80070129536956502
	.quad	0x3f9c772022e75a80              # double 0.027798177843431748
	.quad	0x3fe3167f17857c70              # double 0.59649614900616932
	.quad	0x3fef9318fc5dbb64              # double 0.9867062500978645
	.quad	0x3fe83c5fcbc29220              # double 0.75736989781268349
	.quad	0x3fb8058b044f1f90              # double 0.093834579994221067
	.quad	0x3fd2a8e48558b002              # double 0.29155838987458094
	.quad	0x3fdb3f29b4f7b898              # double 0.4257301585447606
	.quad	0x3fe6e3729b12af90              # double 0.71526460921949031
	.quad	0x3fef0afac3f88659              # double 0.97009027743861075
	.quad	0x3fa78907e1ecba40              # double 0.045967336968136596
	.quad	0x3fe43bb71f860424              # double 0.6322894683545468
	.quad	0x3fd754b7f2bd1e96              # double 0.36454580979305129
	.quad	0x3fe161f670ebfe82              # double 0.54320833258675827
	.quad	0x3fde7bb14a049d5e              # double 0.47629959324190974
	.quad	0x3fcf039c861e25a8              # double 0.24229771183699467
	.quad	0x3fce2d1d14df3034              # double 0.23575175780422486
	.quad	0x3fe73535282a874f              # double 0.72524507374712666
	.quad	0x3fe75e94029b7a49              # double 0.73029518613095334
	.quad	0x3fe29cac07fa4181              # double 0.58162499960057812
	.quad	0x3fda56c1ce4ad6c2              # double 0.4115452303479793
	.quad	0x3fafc6a4743fccc0              # double 0.062062396231249206
	.quad	0x3fe16a886876b287              # double 0.5442544975572482
	.quad	0x3fe0548d20726a31              # double 0.51032120072642873
	.quad	0x3fd2c460a56024ce              # double 0.29323593282658755
	.quad	0x3fe970038d0559bd              # double 0.79492356818337095
	.quad	0x3fd2537dbd62bd6e              # double 0.28634589667031818
	.quad	0x3fea019466abff08              # double 0.81269283345315646
	.quad	0x3fef2c5c7cd6f747              # double 0.97416519530063616
	.quad	0x3fe1d94e69760461              # double 0.55777664754726797
	.quad	0x3fe7616522ca1b8b              # double 0.73063904566593985
	.quad	0x3fe427613ad07e44              # double 0.62980710494225223
	.quad	0x3fe5d71f73ca6800              # double 0.68251011481629575
	.quad	0x3fd2e70941c90278              # double 0.29535132812819809
	.quad	0x3fd89273fae3925c              # double 0.38393878460764141
	.quad	0x3fc1659b2d0439cc              # double 0.13591327379294993
	.quad	0x3fb9a6fdda3249f0              # double 0.1002043397623209
	.quad	0x3fb472d93f15ded0              # double 0.079877450849262787
	.quad	0x3fdd24ce8e999f66              # double 0.45537151265897646
	.quad	0x3fe41e55dd520ddc              # double 0.62870305277504768
	.quad	0x3fae1aef4f873a10              # double 0.058799246271167616
	.quad	0x3fd98db0777fb76e              # double 0.39927302999318826
	.quad	0x3f96d2957fa3adc0              # double 0.022287689128388299
	.quad	0x3fe8a3a0983fa595              # double 0.76997403846796664
	.quad	0x3fd6009405ad02c4              # double 0.34378529123572954
	.quad	0x3fe92681d842f8f0              # double 0.78595058668704887
	.quad	0x3fe79fa1e0e89e1b              # double 0.73823636939499993
	.quad	0x3f869bc2dbb666c0              # double 0.011039278345197245
	.quad	0x3fde374cb93d293a              # double 0.47212522592294059
	.quad	0x3fd5bdce929be304              # double 0.33970989529875362
	.quad	0x3fee7cf9a1db28fc              # double 0.95275575268286116
	.quad	0x3fe126cedb941c20              # double 0.53598730932651861
	.quad	0x3fe09101e1084f00              # double 0.51770109130526976
	.quad	0x3fdeb3e7b7bd4a6e              # double 0.47973053878118932
	.quad	0x3fe900425a5b9a98              # double 0.7812816395570108
	.quad	0x3fe55d472213664d              # double 0.66763645797181825
	.quad	0x3fc45aa48bdbe9d8              # double 0.1590161974816755
	.quad	0x3fd57b9d617a1790              # double 0.33566984671812694
	.quad	0x3fd8908e8cb26e48              # double 0.38382304897252029
	.quad	0x3fe8d8d1a9e3a3b8              # double 0.77646716290939022
	.quad	0x3fd190f4698bbc64              # double 0.27447233493052736
	.quad	0x3fd851d4d20511ac              # double 0.37999458799120123
	.quad	0x3fe9a35c197c01b3              # double 0.80119137742445046
	.quad	0x3fea01af4d3b9fc1              # double 0.81270566067268402
	.quad	0x3fe79327fb3db010              # double 0.73671340055943979
	.quad	0x3fd3e8056e2bfbe0              # double 0.31103645094839116
	.quad	0x3fefd89affa8a570              # double 0.99519109662393923
	.quad	0x3fdaa0329af3b616              # double 0.41602769023924802
	.quad	0x3fe08dd383904bd3              # double 0.51731277175928836
	.quad	0x3f7683f954665400              # double 0.0054969539109110954
	.quad	0x3fe8234ee65e3b57              # double 0.75431008332985072
	.quad	0x3feb38f6e0e93d66              # double 0.85070365837047457
	.quad	0x3fdcc06cbf49411e              # double 0.44924467735565254
	.quad	0x3fec21ae08716b77              # double 0.87911130570442608
	.quad	0x3fe613118bd554a9              # double 0.68982770262905035
	.quad	0x3fefc7651d6cbc42              # double 0.99309020754834187
	.quad	0x3fda1b432df11682              # double 0.40791396605013841
	.quad	0x3fd55d879013f232              # double 0.33383359022244286
	.quad	0x3fe2f32633405a46              # double 0.59218130121264134
	.quad	0x3fe54733a97c478c              # double 0.66494162657385081
	.quad	0x3fe36551b1076fe4              # double 0.60611805511461769
	.quad	0x3fc994b39115d8a0              # double 0.19985050758595424
	.quad	0x3fe82cfd57ee61b3              # double 0.75549189733560806
	.quad	0x3f9e30d6c1756cc0              # double 0.029483180578023349
	.quad	0x3fe37256c5bdb235              # double 0.6077073919419208
	.quad	0x3fdd3188497ddc3c              # double 0.45614821602743283
	.quad	0x3fe8f8fc17feab64              # double 0.78039364515767006
	.quad	0x3fec5b90e0a67841              # double 0.88617748143202146
	.quad	0x3fc11b59a6d3b0c0              # double 0.13364716192098136
	.quad	0x3fe7548d6c3f1a36              # double 0.72907134191411305
	.quad	0x3fb243a22a802618              # double 0.071344504715078805
	.quad	0x3fe1d46a8e1bb161              # double 0.55717971568587299
	.quad	0x3fec188170340772              # double 0.87799140848822632
	.quad	0x3fdf804840161aa4              # double 0.49220472582275421
	.quad	0x3f9b4fce23e61e40              # double 0.026671620312781252
	.quad	0x3fc8647162bb6c18              # double 0.19056527443794447
	.quad	0x3fe5ffef0760e976              # double 0.68749190751195388
	.quad	0x3fe4401ad1350e18              # double 0.63282528744497579
	.quad	0x3fd8510d0c92905a              # double 0.37994695880684548
	.quad	0x3fed39ce2a1c49fd              # double 0.9133063147040158
	.quad	0x3fd4746cdc31c108              # double 0.31960603240351348
	.quad	0x3fe740dfefdd7662              # double 0.72666928146982124
	.quad	0x3fc23df522cb1bc8              # double 0.14251579474350096
	.quad	0x3fe8fbf967014756              # double 0.7807585727516464
	.quad	0x3fe4aac194f881d6              # double 0.64584426017614294
	.quad	0x3fecbe315d05c627              # double 0.89821689766376245
	.quad	0x3fbee3c0829c2a70              # double 0.12066271961899999
	.quad	0x3fe6bcf20f4e5d49              # double 0.71056464185213841
	.quad	0x3fb3fd4ba60c4610              # double 0.078083732642220349
	.quad	0x3feb8d27142ad60e              # double 0.86098054827624693
	.quad	0x3faf4531a8aab2b0              # double 0.061074783171851776
	.quad	0x3fdf51a1eff5a9b4              # double 0.48935745652729712
	.quad	0x3fc790d198103160              # double 0.18410701680148644
	.quad	0x3fc8fdbaf17cbcb0              # double 0.19524323264474708
	.quad	0x3fd4e6bf705cb412              # double 0.32658372853148976
	.quad	0x3fe16618becad45c              # double 0.54371297134515428
	.quad	0x3fe240029dd94f0c              # double 0.57031374769073429
	.quad	0x3fe77f922aae6bbd              # double 0.73432262741277265
	.quad	0x3fecf3fafde67d84              # double 0.90478276815331115
	.quad	0x3fdbfcb929fa378e              # double 0.43730000590664353
	.quad	0x3fefabdc5524ab72              # double 0.98972908620394962
	.quad	0x3feeb631d5588e89              # double 0.9597405592835041
	.quad	0x3fe6574a8acc9049              # double 0.69815566167063381
	.quad	0x3fe4decf7d77fa29              # double 0.65219854837034064
	.quad	0x3fc531c9c4c77ce0              # double 0.1655819140278032
	.quad	0x3fe28f99c0af9038              # double 0.58002936967796526
	.quad	0x3fee5f97a2524d2e              # double 0.94916898444572495
	.quad	0x3fe0f4eb437ded95              # double 0.52989733869564992
	.quad	0x3fe6b7a08439129a              # double 0.70991540741723047
	.quad	0x3fef8e8ea2fe9bc4              # double 0.98615199885249937
	.quad	0x3fec219a4b2eb1e7              # double 0.87910189327299981
	.quad	0x3fe340ed55f7f7a4              # double 0.60167567053553173
	.quad	0x3febf00c0b0484eb              # double 0.87305261756787667
	.quad	0x3fd6995d68bf67e6              # double 0.35311064938798464
	.quad	0x3fb4718e7b833d00              # double 0.079857735781150296
	.quad	0x3fc6772bf62bee10              # double 0.17551183242891044
	.quad	0x3faa8f295f260310              # double 0.051873486389928058
	.quad	0x3fe236e0cf735275              # double 0.56919899480506209
	.quad	0x3fe9c1a33a684b35              # double 0.80488740356154287
	.quad	0x3fee5f6a61229917              # double 0.94914740535458264
	.quad	0x3feff08a9ceb9671              # double 0.99811297081460115
	.quad	0x3fe80bfb382e8d53              # double 0.75146256421104807
	.quad	0x3fbcf72fa17a4e78              # double 0.1131467599137127
	.quad	0x3fee75112eb967c3              # double 0.95179041982486756
	.quad	0x3fecdb01acc22963              # double 0.90173419706233593
	.quad	0x3fcf42f083a445e4              # double 0.24423033168618169
	.quad	0x3fd8101e78a23986              # double 0.37598382740625202
	.quad	0x3fbb60f668500f88              # double 0.10694828077981644
	.quad	0x3fef9f4e80b81f6a              # double 0.98819661274408799
	.quad	0x3fcc4b3cd0356110              # double 0.22104606787139192
	.quad	0x3fddf7d7c2700ec6              # double 0.46825212467249988
	.quad	0x3fd3e4d15f966d04              # double 0.31084093413092284
	.quad	0x3fe56def4413bc38              # double 0.66966975494677339
	.quad	0x3fe529ad45ee3af9              # double 0.66133750589673845
	.quad	0x3fe21d4d80b7e34b              # double 0.56607699528022104
	.quad	0x3fa2c983b3dc6520              # double 0.036693683343580696
	.quad	0x3fefc1d784ce9614              # double 0.99241233767378611
	.quad	0x3fdc0afd0cb3abc8              # double 0.43817068329252296
	.quad	0x3fdb7f08921f7234              # double 0.42962850827987897
	.quad	0x3fefe2dd42a9803e              # double 0.99644339580482444
	.quad	0x3fc84251f1ea25b4              # double 0.18952392875898527
	.quad	0x3fce188b7100c93c              # double 0.23512404458740288
	.quad	0x3fe0ef56e6e64630              # double 0.52921624276695489
	.quad	0x3fe35fa5dc5bace1              # double 0.605425768267562
	.quad	0x3faad6e443ad8520              # double 0.052420743237926226
	.quad	0x3faa29abb0e87db0              # double 0.051099171967730839
	.quad	0x3fd7c54cfae5402c              # double 0.37141727925791446
	.quad	0x3fec7737d7e733b9              # double 0.88955299538212451
	.quad	0x3fc7660ea97306c4              # double 0.18280204080479312
	.quad	0x3f6e7d5f53d4c300              # double 0.0037218915810161013
	.quad	0x3fc046b6009fc774              # double 0.12715792685008476
	.quad	0x3fb1eae69c57df18              # double 0.069990552110422377
	.quad	0x3fe907874c091e2a              # double 0.7821690068312297
	.quad	0x3fe1a0db90c2e02c              # double 0.5508859469764551
	.quad	0x3fad036d1c72e1a0              # double 0.056666764948605008
	.quad	0x3fdf95e4a7da9364              # double 0.49352375404332904
	.quad	0x3fe4ac4d853739a4              # double 0.6460330583448024
	.quad	0x3fe048d7685b0f29              # double 0.50889177686665221
	.quad	0x3fd4513b6761205e              # double 0.31745801063198609
	.quad	0x3fe6569100113e79              # double 0.69806718838840631
	.quad	0x3fe46d48e3b9e5f5              # double 0.63834042051092743
	.quad	0x3f8cac609f9d8300              # double 0.014000658865997107
	.quad	0x3feeacdd50e24cb8              # double 0.95860162542012172
	.quad	0x3fdf9973a4455a98              # double 0.49374095003205687
	.quad	0x3febe27885e76e5c              # double 0.87139536049967203
	.quad	0x3fc235d9f55701e8              # double 0.14226841430173853
	.quad	0x3fcc26750cf949dc              # double 0.21992362149701605
	.quad	0x3fcaf21838337144              # double 0.21051314109980457
	.quad	0x3fe2da07d32edaa1              # double 0.58911505934414177
	.quad	0x3fec382c67267a97              # double 0.88185711046738191
	.quad	0x3fc1121067121ec4              # double 0.13336377175095582
	.quad	0x3fb52dcb3de13ce0              # double 0.082730009658223747
	.quad	0x3febe977d43467f3              # double 0.87224952169640202
	.quad	0x3fcdeaf98667fcd8              # double 0.23373335898211312
	.quad	0x3fd5c974de3f8f38              # double 0.34042092994626527
	.quad	0x3fdc1cc84e98220a              # double 0.43925674128743764
	.quad	0x3fec9696c7554d34              # double 0.8933824437357658
	.quad	0x3fd3a1a2f41abd02              # double 0.30674051130604607
	.quad	0x3fefa72df63eba06              # double 0.98915765852672233
	.quad	0x3fe926486531ed18              # double 0.78592319264081123
	.quad	0x3fd355894c6b549c              # double 0.30209572279756869
	.quad	0x3fe28c9aaa1a9a17              # double 0.57966359351559305
	.quad	0x3fef430a7efbbf23              # double 0.97693371583406862
	.quad	0x3fc0589860f413b8              # double 0.12770371183446882
	.quad	0x3fe2bdd8791d9b99              # double 0.58567451148416005
	.quad	0x3fd5cce3b5c3b954              # double 0.3406304621738816
	.quad	0x3feb11fe6e797cbb              # double 0.84594651772558593
	.quad	0x3fe52d5611c06a65              # double 0.66178420512308078
	.quad	0x3fdb98d2c0601e48              # double 0.43120259081522194
	.quad	0x3fd4dc67623a25c4              # double 0.32595238296979923
	.quad	0x3f9dbcf839d6a000              # double 0.029041174440550321
	.quad	0x3fe53d75d133407d              # double 0.66375246867575266
	.quad	0x3fdc03dfdc9a29a6              # double 0.43773647826369666
	.quad	0x3fe815f573e0e56f              # double 0.75268051750678733
	.quad	0x3feaef6234cf1b48              # double 0.84172163309345027
	.quad	0x3fedde50755db56f              # double 0.93338797495895942
	.quad	0x3f372704a6af4000              # double 3.5327781250504842E-4
	.quad	0x3fe23738805efc73              # double 0.56924080917805353
	.quad	0x3fe16037226a6354              # double 0.54299504014771083
	.quad	0x3fe8aead282fa7b1              # double 0.77132280205591119
	.quad	0x3fd7b472282ae964              # double 0.37038854525203235
	.quad	0x3fe3a1dd6d33b2ab              # double 0.61350890472893604
	.quad	0x3fd1f8cb8b1ed4fc              # double 0.28081024728756154
	.quad	0x3fdbd5fddc4d48e4              # double 0.43493601335388932
	.quad	0x3fe9c27184cdcde3              # double 0.80498577059045962
	.quad	0x3fcea1dba71ce14c              # double 0.23931451473050414
	.quad	0x3fe044585c332fe2              # double 0.50834291465571035
	.quad	0x3fdc466926d32e4a              # double 0.44179753104683483
	.quad	0x3fb1a0aa00314718              # double 0.068857789084429633
	.quad	0x3f974f10a65dade0              # double 0.022762546686335372
	.quad	0x3fe5ef1fd40b4337              # double 0.68543998160212183
	.quad	0x3fec7b25f5efcec5              # double 0.89003274950524569
	.quad	0x3fe28394a8505b01              # double 0.57856209634596223
	.quad	0x3fd142796db4dd54              # double 0.26968227113271337
	.quad	0x3fee24b6eab74169              # double 0.9419817528051172
	.quad	0x3fe0e430a4754b14              # double 0.52785522576081911
	.quad	0x3f9d23dd6f2ec820              # double 0.028457126532608013
	.quad	0x3fe2efb1bc27934c              # double 0.59175955532973878
	.quad	0x3fd254d8b6a48ce4              # double 0.28642862163742522
	.quad	0x3fe9ba4ef468a422              # double 0.80399272667012078
	.quad	0x3fc73680d541d954              # double 0.18135080731344522
	.quad	0x3fe55813ac2b12a8              # double 0.66700156809436795
	.quad	0x3fcfede10c29d630              # double 0.24944699376980983
	.quad	0x3fd517feef2b8e56              # double 0.32958958965739293
	.quad	0x3fab15088ade6240              # double 0.052894846870178203
	.quad	0x3fa3c35e3c89f500              # double 0.038599915399553097
	.quad	0x3fd1d0f3f2f1f110              # double 0.27837847447496333
	.quad	0x3fedf7c4421dbeb7              # double 0.93649495042151087
	.quad	0x3fe70fc18bf9e90f              # double 0.72067334498504632
	.quad	0x3fe548d22e315ae4              # double 0.66513928434400471
	.quad	0x3fee97c82e31a367              # double 0.95602807066198359
	.quad	0x3fecd02d3fb02d5e              # double 0.9004122013006215
	.quad	0x3fe3aa57b1d9c4c7              # double 0.61454376923043064
	.quad	0x3fd68f86a88ab50a              # double 0.35251013240015594
	.quad	0x3fde403aa2934290              # double 0.47267022968757377
	.quad	0x3fd234cb44d1fbda              # double 0.28447229119040929
	.quad	0x3fc034e247457380              # double 0.12661388855022082
	.quad	0x3fe52a3472d485d2              # double 0.66140196254507999
	.quad	0x3fe0eb8beebc58d0              # double 0.52875324848243999
	.quad	0x3fb3b68552058dc0              # double 0.077003796124293977
	.quad	0x3fe37126a1649fd1              # double 0.60756236574251876
	.quad	0x3fd6c71e27e7601a              # double 0.35590318581444225
	.quad	0x3fe20d1aec0658a8              # double 0.56409975145904401
	.quad	0x3fadd7a46e86e6c0              # double 0.058285845272121772
	.quad	0x3fcf92b03d4c1db0              # double 0.2466640757850036
	.quad	0x3fe85b8083f4804c              # double 0.76116967937924462
	.quad	0x3fd68e43afd0729a              # double 0.35243312997207854
	.quad	0x3fe33f78679bc42a              # double 0.60149784313228349
	.quad	0x3fecbdc3e14c5d42              # double 0.89816469195913151
	.quad	0x3fe1cce91db221f2              # double 0.55626350212065589
	.quad	0x3fe3b23b283b78ed              # double 0.61550672395585837
	.quad	0x3fe725038bfd6fa2              # double 0.72326829282564042
	.quad	0x3fed8ef3e4f0f730              # double 0.9237002822407927
	.quad	0x3fed002487a80b5d              # double 0.9062674188174743
	.quad	0x3fe1f689c0b3b61f              # double 0.56134498250111509
	.quad	0x3fe7b40ac2c8a445              # double 0.74072778743460133
	.quad	0x3fe648067ea6e74d              # double 0.69629215943062095
	.quad	0x3fca71c21a2152b4              # double 0.20659662509810561
	.quad	0x3fa103693613ae00              # double 0.033229148722821122
	.quad	0x3fdb237455a52bf0              # double 0.42403896678723552
	.quad	0x3fc542332f3effe8              # double 0.16608276183069326
	.quad	0x3fd3908a18210d6e              # double 0.30569698673590195
	.quad	0x3feba79dd742b7ad              # double 0.86421100657547856
	.quad	0x3fea3b1873939fc9              # double 0.81971380780759617
	.quad	0x3fe4d956caff1739              # double 0.65153064391845483
	.quad	0x3feb36fcb0d4bcf4              # double 0.85046228921228683
	.quad	0x3fe7a4fe2a6090d3              # double 0.73889072682188794
	.quad	0x3fe829c6a29c4aa4              # double 0.75509959945550919
	.quad	0x3feb70dacbb68371              # double 0.85752620494541365
	.quad	0x3fd5d80341f17eb8              # double 0.34130937042025833
	.quad	0x3fe7ad3f33014ce1              # double 0.7398982998078304
	.quad	0x3feca7be1993b0f9              # double 0.89547638888828296
	.quad	0x3fedbb7f5a41e3eb              # double 0.92913787487407029
	.quad	0x3fcdcf5e49e31140              # double 0.23289087875139991
	.quad	0x3fe6101530107bab              # double 0.68946322810721961
	.quad	0x3fe5f6231b3650b4              # double 0.68629603686215157
	.quad	0x3fee179968157550              # double 0.94038076714392993
	.quad	0x3fd8d8d3ac8c4bac              # double 0.38823406076806566
	.quad	0x3fdd8e9adee38ad0              # double 0.46182891623008704
	.quad	0x3fb44c349757e0d0              # double 0.079287802647630245
	.quad	0x3fb3d241e0f4f0b0              # double 0.077427022381871379
	.quad	0x3fe0b96d7a7cfbb8              # double 0.52263521121482537
	.quad	0x3fe53fa220867375              # double 0.66401773789003349
	.quad	0x3fd618c98459d70a              # double 0.34526288914581527
	.quad	0x3fefe6b419193c2e              # double 0.99691204931321464
	.quad	0x3f716161081c2780              # double 0.0042432585048660654
	.quad	0x3fe03e3b01e6c766              # double 0.50759649630911663
	.quad	0x3feb4468fb7a6016              # double 0.85210084072878334
	.quad	0x3fd2c146d605274a              # double 0.2930466737785663
	.quad	0x3fb571769212f108              # double 0.083762560522647189
	.quad	0x3fec6bdc84b1899c              # double 0.88816667477321997
	.quad	0x3fef334b85933164              # double 0.97501159752713961
	.quad	0x3fdf8b1e7f17dec4              # double 0.49286615764092923
	.quad	0x3fe7c423bd1607b1              # double 0.74269282275075998
	.quad	0x3fda04034f531430              # double 0.40649492975745982
	.quad	0x3fc5a29209b17200              # double 0.16902375672624714
	.quad	0x3fee234f823e16e7              # double 0.94181037366862774
	.quad	0x3fe53bd62989d8de              # double 0.66355426896077652
	.quad	0x3fac3f83af625190              # double 0.055172076377092982
	.quad	0x3fe826eff04dce33              # double 0.75475308355675563
	.quad	0x3fe6070ffe99d2c9              # double 0.68836211897595334
	.quad	0x3fe03adea873f1cb              # double 0.50718624974211346
	.quad	0x3fef3a6b26f422ed              # double 0.97588117225776971
	.quad	0x3fe509f74c027ea9              # double 0.65746655316975933
	.quad	0x3fe5d99b9ced2f9e              # double 0.68281345987042008
	.quad	0x3fdcb38d952053ba              # double 0.44845904887307209
	.quad	0x3fef62af430134c4              # double 0.98079646193368619
	.quad	0x3fc7774598808800              # double 0.18332738825216666
	.quad	0x3fe7053596452c49              # double 0.71938590383195689
	.quad	0x3fb6ca0684ddb230              # double 0.089020163953769992
	.quad	0x3fe56a74a2e23824              # double 0.66924506962982777
	.quad	0x3fe763d330e296c9              # double 0.73093566463350002
	.quad	0x3fe1200b3afca2ac              # double 0.53516160508032362
	.quad	0x3fe248658a9c6e9a              # double 0.57133748123620198
	.quad	0x3fdb81241227c32e              # double 0.42975713513355884
	.quad	0x3fda17a6e4a64996              # double 0.40769359902437807
	.quad	0x3fc3ce659d1e8ea0              # double 0.15473623439639983
	.quad	0x3fe0320d25c7c5f4              # double 0.50610978487946889
	.quad	0x3fe2a9ebe322adf4              # double 0.58324236261745321
	.quad	0x3fe035853b2117c9              # double 0.50653325604138744
	.quad	0x3fdbb737f09892c6              # double 0.43305777068807705
	.quad	0x3fe54618f5210a69              # double 0.66480682255526091
	.quad	0x3fcdf44c0d160d58              # double 0.23401785506221517
	.quad	0x3fd682ab0378a574              # double 0.35172534312240278
	.quad	0x3fe3bc241d23d2dd              # double 0.61671643916505625
	.quad	0x3fe43f01cdc75fe9              # double 0.63269128981755529
	.quad	0x3fea22c5c4b91625              # double 0.81674469397029681
	.quad	0x3fd93faba55f9a08              # double 0.39451113843679808
	.quad	0x3fec1e41af2ebbd0              # double 0.87869343009321632
	.quad	0x3fec7176594704c7              # double 0.88885037838931502
	.quad	0x3fe39c1616d1680b              # double 0.61280350166930597
	.quad	0x3fe09f76bc673753              # double 0.51946579740045207
	.quad	0x3fb54872dbd4bb70              # double 0.083136728925394143
	.quad	0x3feabf90847c729b              # double 0.83588434101291698
	.quad	0x3fed4f46822aa6e9              # double 0.91592717574277771
	.quad	0x3fda74b647ee6924              # double 0.41337353729763238
	.quad	0x3fe0f6dd2859f091              # double 0.5301347530471664
	.quad	0x3fd93e36939b769c              # double 0.39442219176076221
	.quad	0x3fd197a68b05870a              # double 0.27488101555182765
	.quad	0x3fdcbaca48360560              # double 0.44890076686723113
	.quad	0x3fd5a4a4fb197e70              # double 0.33817410012668514
	.quad	0x3fe28aeae9c432ff              # double 0.57945771844387639
	.quad	0x3feee4319bb5b6aa              # double 0.96535568630289004
	.quad	0x3fb855548f348b38              # double 0.095052037203044004
	.quad	0x3fdafe024e0ad4e2              # double 0.42175347920722406
	.quad	0x3fdc914e0957fca2              # double 0.44636870300741738
	.quad	0x3fe4cbba3755e2a6              # double 0.64986906821930712
	.quad	0x3fdfe32be4f819d8              # double 0.49824044571178439
	.quad	0x3fbb3e00763003e0              # double 0.10641482243956046
	.quad	0x3fd1e0e764cdeeb0              # double 0.27935204357320753
	.quad	0x3fec2ddcc92fc376              # double 0.88059844297650502
	.quad	0x3fdf2fbbc8e2d226              # double 0.48728842370772651
	.quad	0x3f92fc5a1fa24d20              # double 0.018540771656785471
	.quad	0x3fee0a7b13805fcd              # double 0.93877939041976222
	.quad	0x3fd3b929708ef806              # double 0.30817638389623914
	.quad	0x3fe25bad32a33ae7              # double 0.5736909855857818
	.quad	0x3fe7f3f26b89fbfe              # double 0.74852868083678437
	.quad	0x3fe9be109cf7fbd7              # double 0.80445128114649378
	.quad	0x3fedbdadcceb011a              # double 0.92940416358036093
	.quad	0x3fef97c09469abd2              # double 0.98727444636221606
	.quad	0x3fd702a44e371372              # double 0.35953624380299865
	.quad	0x3fe4001270e6c948              # double 0.62500879336429538
	.quad	0x3fef9d7e4a7cc7c5              # double 0.98797525928807117
	.quad	0x3feac5f2395fa394              # double 0.8366633530214238
	.quad	0x3fe9cfad5195ad6a              # double 0.80660119947917264
	.quad	0x3fe59c318b2764bb              # double 0.67531659296505298
	.quad	0x3fee58e39af6578f              # double 0.94835071817463923
	.quad	0x3fd346586c13a8dc              # double 0.30116854242682023
	.quad	0x3fed9689148a44d1              # double 0.92462591182461484
	.quad	0x3feddee394cb1601              # double 0.93345812855903898
	.quad	0x3fd13e42c2aff8be              # double 0.26942509663048131
	.quad	0x3fa581cdb93aebf0              # double 0.042005947934249721
	.quad	0x3fc1e9e97957b224              # double 0.13995092797212394
	.quad	0x3fd7f8d8d173731e              # double 0.37456341222950751
	.quad	0x3fec3684c43730c8              # double 0.88165510485989618
	.quad	0x3fb568691e7fe9a0              # double 0.083624429651456555
	.quad	0x3fd841aa5a7fb07c              # double 0.37900790059826028
	.quad	0x3fe0e1fd38b33026              # double 0.52758656572541862
	.quad	0x3fd0f127ba1cd6a8              # double 0.26471894431174769
	.quad	0x3fec8ec5017b9f97              # double 0.89242792405728977
	.quad	0x3fe0e6bc922baa87              # double 0.52816608952464683
	.quad	0x3fd1b54c98c3b8ea              # double 0.27669062536632671
	.quad	0x3fae05ac93928450              # double 0.05863704015178739
	.quad	0x3fe185f3706ff151              # double 0.54760143242268999
	.quad	0x3fd404dcc03a5394              # double 0.31279677173852716
	.quad	0x3fbf865bfbfb1af0              # double 0.12314391042591999
	.quad	0x3fef62cbd531bced              # double 0.98081008567342353
	.quad	0x3fe1b05fb57f792a              # double 0.55278001259629161
	.quad	0x3fde989444c2cdd6              # double 0.4780626937383351
	.quad	0x3fe5896e63595735              # double 0.67302626995181092
	.quad	0x3fea831b6dd56c8c              # double 0.82850429012195681
	.quad	0x3fc5b056761e7d84              # double 0.16944390075239479
	.quad	0x3fd3105c8ce8a6be              # double 0.29787362824081842
	.quad	0x3fe1fd6b33912fe7              # double 0.56218490668970567
	.quad	0x3fd4df3e8ba5ddfc              # double 0.32612575185291326
	.quad	0x3fe8e26cfa959223              # double 0.77763985578764439
	.quad	0x3fc341e2787cead8              # double 0.1504481399841413
	.quad	0x3fe1b90d9e5b94c1              # double 0.5538395016598302
	.quad	0x3fbd169f344154b8              # double 0.11362643266450589
	.quad	0x3fd62cdad0deb7c4              # double 0.34648771665058242
	.quad	0x3fea95a33eb6d992              # double 0.83076631783369437
	.quad	0x3fe0ec2c4b5f87b2              # double 0.5288297149784198
	.quad	0x3fef10ee596a4f03              # double 0.97081677879256778
	.quad	0x3fd277d4bef0bfb4              # double 0.28856390615964789
	.quad	0x3feda5db39957dde              # double 0.92649613615861504
	.quad	0x3fe63ff2fda92d80              # double 0.69530629675993794
	.quad	0x3fee7e920df12b9d              # double 0.95295050356922995
	.quad	0x3fbb22f7b4ab07d8              # double 0.10600231324045184
	.quad	0x3fd1e753b111fe2e              # double 0.27974407474536889
	.quad	0x3fd5e23240e9bc86              # double 0.34193092669642799
	.quad	0x3fefe85343e6522f              # double 0.9971100164571619
	.quad	0x3fe1b5b17bdea4e0              # double 0.55342935746480393
	.quad	0x3fc50ce4ecdeff50              # double 0.16445600095721113
	.quad	0x3fe9bcc699b22924              # double 0.80429391878832179
	.quad	0x3fb91f534bec1bc0              # double 0.098134237323491469
	.quad	0x3f870bdb1b09ec80              # double 0.011253082049043295
	.quad	0x3fd012b6c060153a              # double 0.25114220415737842
	.quad	0x3feb2295fece8fc9              # double 0.84797191397637406
	.quad	0x3f988a1e543a1a40              # double 0.02396438016014657
	.quad	0x3fe3ca7f830e4641              # double 0.61846900555446649
	.quad	0x3fcc8b1a1578ab4c              # double 0.22299505279928622
	.quad	0x3fd924c53e860f3a              # double 0.39286929231478818
	.quad	0x3fd1a7d89c685d74              # double 0.27586951517283542
	.quad	0x3fec9eb2da93af17              # double 0.89437239352034481
	.quad	0x3feeb5c9e2ec8515              # double 0.95969099351001097
	.quad	0x3fc2f73e4c3dc224              # double 0.14817026827542279
	.quad	0x3feb1038029033bf              # double 0.84572983265535828
	.quad	0x3fcee5ccff9f4f7c              # double 0.24138796311910571
	.quad	0x3fea362384ac207d              # double 0.81910873329708489
	.quad	0x3feaa873e1f80e24              # double 0.83306306967319132
	.quad	0x3fd1ea0cfbdc8ae4              # double 0.27991032214974454
	.quad	0x3fe7e266835b386e              # double 0.74638677268536724
	.quad	0x3fd901d6fca2a46c              # double 0.39073729201715568
	.quad	0x3fbe046cea91d688              # double 0.11725502707289526
	.quad	0x3fe8769832a2a364              # double 0.76447687043865331
	.quad	0x3fd225f79257c554              # double 0.28356732646269234
	.quad	0x3fe0b23ed2cb26e1              # double 0.52175847216241433
	.quad	0x3fe25b0fa694be4a              # double 0.57361586127621789
	.quad	0x3fd9c8d4b65c7d88              # double 0.40288274582595607
	.quad	0x3fdacfc0a3999cdc              # double 0.41893020607535703
	.quad	0x3fcb9c6d8ebc6074              # double 0.21571130246661918
	.quad	0x3fdedafd3815a56c              # double 0.48211603619582521
	.quad	0x3fc4a754ebf79ffc              # double 0.16135655900802692
	.quad	0x3fd0d2c3f48dd938              # double 0.26286410219417489
	.quad	0x3fe78d277a837f52              # double 0.73598073891114724
	.quad	0x3fe7d9f4108c8299              # double 0.74535563690376982
	.quad	0x3fef00fe4563155e              # double 0.96887124588162599
	.quad	0x3fc88b7f4a1fd2f4              # double 0.19175711745597079
	.quad	0x3fd5eaf256432968              # double 0.34246500419671699
	.quad	0x3fc3c65ac3085658              # double 0.15449080012392602
	.quad	0x3fdf918a20516076              # double 0.49325802951853548
	.quad	0x3fe3a1f26db00ec9              # double 0.61351891921409518
	.quad	0x3feca9fa4cac3cfc              # double 0.89574923491628011
	.quad	0x3fd3125400cfd7b6              # double 0.29799366072927158
	.quad	0x3fdf61c001dd08c4              # double 0.49034118825887796
	.quad	0x3fd6759f9abae324              # double 0.35092916593889556
	.quad	0x3fe136ff228d2795              # double 0.53796345470731188
	.quad	0x3fca632cd4f329a8              # double 0.20615158460561855
	.quad	0x3fe0958f8023e7d4              # double 0.51825690295594962
	.quad	0x3fdbfccf701e41d0              # double 0.437305316439077
	.quad	0x3fe80922274ab645              # double 0.751114918462641
	.quad	0x3fc1c18f2112dbd4              # double 0.13871945490765702
	.quad	0x3fe3e6697a9cf071              # double 0.62187646816120268
	.quad	0x3fd3a45895bf21dc              # double 0.30690588592235968
	.quad	0x3fe3e684069cc08c              # double 0.62188912669627561
	.quad	0x3fc12182bee96bf0              # double 0.13383516618600266
	.quad	0x3fe6fd32be1946ca              # double 0.7184079850068994
	.quad	0x3fd49df1c5b4e604              # double 0.32214016253746558
	.quad	0x3fcad390fc4be910              # double 0.20958149260679493
	.quad	0x3fd70c4ddf233d4c              # double 0.3601259879187253
	.quad	0x3fde70c91f99410a              # double 0.47563388906293425
	.quad	0x3fcd7ccdc4de625c              # double 0.23037120926598476
	.quad	0x3fea7b3c509cbf36              # double 0.82754340881908806
	.quad	0x3fefc57e5187edd4              # double 0.99285808490770444
	.quad	0x3fd49bf5fbd2f14a              # double 0.32201909630000058
	.quad	0x3fe0cf70282ce67e              # double 0.52532203528171784
	.quad	0x3fe3e66c0fe57eaa              # double 0.62187769989755748
	.quad	0x3fedd7ad6f70e8f7              # double 0.93257781759100922
	.quad	0x3fad3e766c268930              # double 0.057117176725358099
	.quad	0x3fd5a8a4ed8375c2              # double 0.3384182280986715
	.quad	0x3fe1bb9155b49582              # double 0.55414644946419878
	.quad	0x3fe5771d4904fade              # double 0.67079033147441769
	.quad	0x3fe0a79d161200a3              # double 0.52046064673051651
	.quad	0x3fe161cebdb4c1a5              # double 0.54318940212219913
	.quad	0x3fefa7355767fe04              # double 0.98916117736365594
	.quad	0x3fe2c72e91da6f70              # double 0.58681419836964999
	.quad	0x3fe2a92137605646              # double 0.58314572158514788
	.quad	0x3fe20b797a3c7faf              # double 0.56390069841653723
	.quad	0x3fd9fda363fcc83e              # double 0.40610584988019471
	.quad	0x3fe100c9614fb845              # double 0.53134602552541621
	.quad	0x3fdcd3ef468a1cca              # double 0.45043546570418569
	.quad	0x3fed8f9ecadbea17              # double 0.92378177281290419
	.quad	0x3fd17daf5c9f544c              # double 0.2732962040439062
	.quad	0x3feb03114a28eea4              # double 0.84412445530275137
	.quad	0x3fc89c84604bb828              # double 0.192276522654937
	.quad	0x3fa33131579c6750              # double 0.037484685845085353
	.quad	0x3fea4725a5fb2ffd              # double 0.82118494432643241
	.quad	0x3fd04ef905d93856              # double 0.25482011386055115
	.quad	0x3fe61dd05be9ef3c              # double 0.6911393923942124
	.quad	0x3fa671eb39024940              # double 0.043837881764505315
	.quad	0x3fc1258c4619aa20              # double 0.13395837233413577
	.quad	0x3fa03eb4c75da190              # double 0.031728410088194825
	.quad	0x3fe594a53426b544              # double 0.67439518152028954
	.quad	0x3fdb0efe7f184650              # double 0.42279016887286947
	.quad	0x3fdbf92034335eb6              # double 0.43708043191643797
	.quad	0x3fe0a03f6822acf3              # double 0.51956148470836039
	.quad	0x3fe324940895d4aa              # double 0.59821511914073722
	.quad	0x3fd2699d01fdb990              # double 0.28769612497753716
	.quad	0x3feae60efe76ee77              # double 0.84058332157242333
	.quad	0x3faac08f28b7eb20              # double 0.052250360222350745
	.quad	0x3fe322acd24f98cd              # double 0.59798279835083579
	.quad	0x3fd2c3bd456e7f6c              # double 0.29319698124344629
	.quad	0x3fe8b06ff3fc57f7              # double 0.77153775838337324
	.quad	0x3feb5d79b8a8c075              # double 0.85516058031318087
	.quad	0x3fe38d1446a07648              # double 0.61097158235833948
	.quad	0x3fe0a04a4c7e5833              # double 0.5195666784300158
	.quad	0x3fd2aad5e3b2dba0              # double 0.29167697178075436
	.quad	0x3fc38d62285015ec              # double 0.15275217979812739
	.quad	0x3fd94accc4eb0b84              # double 0.39519042234695001
	.quad	0x3fe915835506708e              # double 0.78387610060191704
	.quad	0x3fe407bd85d89dea              # double 0.62594486371830027
	.quad	0x3fe1745480ec250c              # double 0.5454504507080471
	.quad	0x3feedcc6e997eb29              # double 0.96445031760899724
	.quad	0x3fe14185420ab897              # double 0.5392481126671268
	.quad	0x3fcb703b8d2fe8b8              # double 0.21436256784347107
	.quad	0x3fee3069f231fac0              # double 0.9434098940253861
	.quad	0x3fdc50a3d935c98c              # double 0.44242187702106928
	.quad	0x3fe5986418f9c7c5              # double 0.67485241773669513
	.quad	0x3fd4859f8f67fb66              # double 0.32065571789273972
	.quad	0x3fc849ff000cca64              # double 0.18975818159522639
	.quad	0x3fd9f5bd511aa410              # double 0.40562374992674766
	.quad	0x3f7268897b39a880              # double 0.0044942255368402018
	.quad	0x3fdc274bc35b7778              # double 0.43989843442783849
	.quad	0x3fe1371be996b9a0              # double 0.53797717688376068
	.quad	0x3feafe8faf59bf1b              # double 0.84357437370451593
	.quad	0x3fecdf716179d26f              # double 0.90227574384932818
	.quad	0x3faecb9ea4c98120              # double 0.060147245040527375
	.quad	0x3fda2c74ceb7c56a              # double 0.4089633959511817
	.quad	0x3fed3be15eb608ad              # double 0.9135596132112106
	.quad	0x3fdb81ccec895fb0              # double 0.42979739283827723
	.quad	0x3fe3fc59d4dfb1ab              # double 0.62455455376543989
	.quad	0x3fdbcd65fdeb406a              # double 0.43441152378819103
	.quad	0x3fcfb139fc394d78              # double 0.24759602370850664
	.quad	0x3fefe47847fc06c3              # double 0.99663938579052346
	.quad	0x3fe504826d526892              # double 0.65680047370848826
	.quad	0x3fd785beb10886ac              # double 0.36753814018639264
	.quad	0x3fda436d01d12a16              # double 0.41036534478613029
	.quad	0x3fd27e271e24d93a              # double 0.28894975608581641
	.quad	0x3fed4b677cccc540              # double 0.91545462012269496
	.quad	0x3f7c4909381b8f80              # double 0.0069055900691842309
	.quad	0x3fd6be3f65641bd0              # double 0.35536179448575655
	.quad	0x3fcd3958d2d0c604              # double 0.22831259053923258
	.quad	0x3fd00ba6b4bff1fa              # double 0.25071113253923694
	.quad	0x3fd87318093f1152              # double 0.38202477362599041
	.quad	0x3fe5dbc65c3f6996              # double 0.68307798401956421
	.quad	0x3fec8720d584f252              # double 0.89149514868729285
	.quad	0x3febecc2ae5a4bf7              # double 0.87265142491594261
	.quad	0x3fed2e02d85d9ed5              # double 0.91186659106184698
	.quad	0x3fde4fa8254886bc              # double 0.47361186638782349
	.quad	0x3fc606acea4e63a4              # double 0.17207871857388313
	.quad	0x3fe2ca85c54aec3f              # double 0.5872219899532708
	.quad	0x3fe8e1d6091c307e              # double 0.77756788043326686
	.quad	0x3feea5db48d962a1              # double 0.95774616459228323
	.quad	0x3febe846a1a91c9f              # double 0.87210399221739354
	.quad	0x3fbb8c573a1bdad8              # double 0.10761017960235664
	.quad	0x3fe7b0101afcc5f8              # double 0.74024205466247306
	.quad	0x3fcb3b71a9a50d0c              # double 0.21275158675607775
	.quad	0x3fee1b25ec7ba52f              # double 0.94081398189624632
	.quad	0x3fc64abc84f860e4              # double 0.17415577404677329
	.quad	0x3fcf9bd74ad7cd20              # double 0.2469433894581039
	.quad	0x3fbacd852bd453c8              # double 0.10469848938039583
	.quad	0x3fd66da08cbe23b4              # double 0.35044111008079004
	.quad	0x3fdfb98e5285d438              # double 0.49570043619980053
	.quad	0x3fed2902df065414              # double 0.91125625190273007
	.quad	0x3fefe2df0de4b82a              # double 0.99644425118981883
	.quad	0x3fe6cc5ba182419c              # double 0.71244603676500473
	.quad	0x3f9f5ab2992c9ee0              # double 0.030619421576516426
	.quad	0x3fc6fdca9e88b068              # double 0.17962010136523365
	.quad	0x3fe6a8c642ecc551              # double 0.70810235091463813
	.quad	0x3fecfafcbf57cbd7              # double 0.90563809749289248
	.quad	0x3fca9ba8ef7edf24              # double 0.20787536329384537
	.quad	0x3fc60613a3252fac              # double 0.17206044641568263
	.quad	0x3fefc3805632b21a              # double 0.99261490665009267
	.quad	0x3fb98b0508cdaa58              # double 0.099777521752608123
	.quad	0x3fec816bd79f4fa1              # double 0.89079849351627527
	.quad	0x3fe73b59a8fe775c              # double 0.72599490172045078
	.quad	0x3fe76d03fb1af8a2              # double 0.73205756229414853
	.quad	0x3fee35b24a970ce4              # double 0.94405474251143717
	.quad	0x3fe5ae46cf0217d8              # double 0.6775239985588497
	.quad	0x3fed918aeb7c5689              # double 0.92401643746662032
	.quad	0x3fe897d55ad1a7d6              # double 0.76853435266570602
	.quad	0x3fe66eac4b7df2f6              # double 0.7010098909809972
	.quad	0x3fe80542691ae0fc              # double 0.75064201858825141
	.quad	0x3fb73680ddc50af8              # double 0.090675405638687923
	.quad	0x3fd32690f92edc08              # double 0.29922890028268556
	.quad	0x3febdf080b6b4150              # double 0.87097551565424602
	.quad	0x3fa3dcfe11821620              # double 0.038795413624978403
	.quad	0x3fde379b262bcd84              # double 0.47214392402312222
	.quad	0x3fdc6d7a25b1b300              # double 0.44418195420330164
	.quad	0x3fc7ac1323a77328              # double 0.18493880501673599
	.quad	0x3fdf689469763144              # double 0.49075804041855897
	.quad	0x3fd12aceb18200fa              # double 0.26823775610684175
	.quad	0x3fc3b917b611f54c              # double 0.15408607854980472
	.quad	0x3fec18268c640630              # double 0.87794806881010423
	.quad	0x3fdb66d8c6757c72              # double 0.42815226917986771
	.quad	0x3fc70e189aa78310              # double 0.18011767913323995
	.quad	0x3fc5a8f8d745bd7c              # double 0.169219117272842
	.quad	0x3fec927b174c9001              # double 0.89288095999336303
	.quad	0x3fef7935004069bb              # double 0.98354578065055109
	.quad	0x3fc7839587449000              # double 0.18370312790750631
	.quad	0x3fe410dca4c3237c              # double 0.62705833606842942
	.quad	0x3fe3ffc6e80a2f79              # double 0.62497277565260767
	.quad	0x3f903fa66bfc18a0              # double 0.015867805806032309
	.quad	0x3fe343ce3ae49fe2              # double 0.60202704908897098
	.quad	0x3fef87596ce51d4f              # double 0.98527213352728348
	.quad	0x3fbb8a63aced1c30              # double 0.10758040401297886
	.quad	0x3fdc6fbbeb63a026              # double 0.44431970584128277
	.quad	0x3fd582034d2ecfaa              # double 0.33606035745037366
	.quad	0x3fed9b7a12a1b181              # double 0.92522910727488761
	.quad	0x3fe0d1486dbede87              # double 0.52554723200496845
	.quad	0x3fca244ad4995e94              # double 0.20423255329909706
	.quad	0x3fe8ad2614bc4f79              # double 0.77113632249755348
	.quad	0x3fb1f71451d03308              # double 0.070176382039971341
	.quad	0x3fd09f609271a7fc              # double 0.25972761441391845
	.quad	0x3feaaf4f1ddd3e7a              # double 0.8339000304494697
	.quad	0x3fc4b945ac8964c0              # double 0.16190405773776284
	.quad	0x3fe6b0c3152d6335              # double 0.70907739769163547
	.quad	0x3fee9d45a606ff55              # double 0.95669825007642351
	.quad	0x3fe91adf031d1b88              # double 0.784530168611
	.quad	0x3fdff80a0e1496e4              # double 0.49951411604921092
	.quad	0x3fd9b02cdcbdbc28              # double 0.40137788349869874
	.quad	0x3fd5a210dd17354c              # double 0.33801671591648552
	.quad	0x3fde682fd136b9f2              # double 0.47510905676872917
	.quad	0x3fdf869f56529bae              # double 0.49259169988584517
	.quad	0x3fc449b4e3b34f44              # double 0.15849934690651868
	.quad	0x3fb021bb6c3d8038              # double 0.063014711309279714
	.quad	0x3fd3ccc6cfc91fa0              # double 0.30937357226911821
	.quad	0x3fca566942836b04              # double 0.2057620596668458
	.quad	0x3fdd41a8ee971404              # double 0.45713256168193106
	.quad	0x3fe56f2b1d34947a              # double 0.66982036308458182
	.quad	0x3fe66793ee6fc313              # double 0.70014378137247701
	.quad	0x3fce7603546fda1c              # double 0.23797647116562437
	.quad	0x3fea66840507c3b0              # double 0.82501412374960204
	.quad	0x3fe47437ddb34575              # double 0.63918679524264965
	.quad	0x3fc4f1553d9a593c              # double 0.16361489780383376
	.quad	0x3feb667a88fb2728              # double 0.85625960115541933
	.quad	0x3fee0c862243d317              # double 0.93902880375262299
	.quad	0x3fca1554bac2bdbc              # double 0.20377596968817879
	.quad	0x3fef8414a51c813e              # double 0.98487312553701378
	.quad	0x3fe126b2a4d938e2              # double 0.53597385594346414
	.quad	0x3feac303b6ece066              # double 0.83630548217389555
	.quad	0x3f9945d9a5bb38e0              # double 0.024680519810140633
	.quad	0x3fd5a07aa2c11a12              # double 0.33791986364340787
	.quad	0x3fe29cbdcccb6235              # double 0.58163347243232144
	.quad	0x3fede97da2d1d8a7              # double 0.93475229073262234
	.quad	0x3fe360b24d7cb78c              # double 0.60555377134527211
	.quad	0x3fe0422d3c25e111              # double 0.5080782103314353
	.quad	0x3feb8ef3c33efc2e              # double 0.86120021947852421
	.quad	0x3faf4722871dd7d0              # double 0.061089591020319411
	.quad	0x3fe91c34232ef18e              # double 0.78469282981636623
	.quad	0x3fdf8afbb6d26d92              # double 0.49285786489209571
	.quad	0x3fba38fd44dbb2d8              # double 0.10243208819492666
	.quad	0x3fe7be49a062906f              # double 0.7419784672279216
	.quad	0x3fda6329d9425930              # double 0.41230245796886589
	.quad	0x3fc45b4679cde4f4              # double 0.15903550097917896
	.quad	0x3fd93a3a9e651978              # double 0.39417901485685247
	.quad	0x3fec0def8fc1cd6d              # double 0.87670114591166526
	.quad	0x3fb810195d38da18              # double 0.093995652446075773
	.quad	0x3fd7521ff8b0ffaa              # double 0.36438750540036813
	.quad	0x3fbe9207e66bc200              # double 0.11941575408469163
	.quad	0x3fe1dd3bdf4c5a52              # double 0.5582560883802421
	.quad	0x3fd42cbd5942a85a              # double 0.31523069111665836
	.quad	0x3fee3bd6601d5db9              # double 0.94480437061695632
	.quad	0x3fc27800c879790c              # double 0.14428720272821527
	.quad	0x3fe49f8598a6f537              # double 0.64447288336638209
	.quad	0x3fe827d158c5180d              # double 0.7548605665003848
	.quad	0x3fefc1a961023134              # double 0.99239033648476615
	.quad	0x3fdd1196f64fa1d6              # double 0.45419858983816874
	.quad	0x3fd3858dcf2df63e              # double 0.30502648575188462
	.quad	0x3fcf41bdfac59b9c              # double 0.24419378990861851
	.quad	0x3fb96f53d76e79f8              # double 0.09935497293051998
	.quad	0x3fe150173b7e9b15              # double 0.54102670307188083
	.quad	0x3fb94243983f8548              # double 0.098667359037354463
	.quad	0x3fc52d7c8cddf5c4              # double 0.16545063856385245
	.quad	0x3fbe059daa2c1ce8              # double 0.11727319149587212
	.quad	0x3fe80da86fff834b              # double 0.75166723131779045
	.quad	0x3fd80239d9053010              # double 0.37513586228738038
	.quad	0x3fe6c8848688f3fa              # double 0.71197725559579728
	.quad	0x3f88b01d5dc8d680              # double 0.012054662155701168
	.quad	0x3fdcf291a05ca0c4              # double 0.45230522785506033
	.quad	0x3fdf91457c869114              # double 0.4932416645117581
	.quad	0x3fd1c67b658953a8              # double 0.27773938098590145
	.quad	0x3fe0bf0cc1823497              # double 0.52332151217128142
	.quad	0x3fc1838cbafe0a94              # double 0.13682707911001002
	.quad	0x3fd9fdc688407138              # double 0.40611422830422184
	.quad	0x3fed181832af1793              # double 0.90919122599801694
	.quad	0x3fdab23dd8163844              # double 0.41712900259233643
	.quad	0x3fc6540080a514c8              # double 0.17443853646742569
	.quad	0x3fda682ed07ab250              # double 0.41260881766610158
	.quad	0x3fe8054cd9c69d39              # double 0.75064699682562896
	.quad	0x3fef02600485583b              # double 0.96903992541297812
	.quad	0x3fd89d443d4cdc6c              # double 0.38459878908492473
	.quad	0x3fd4486913004850              # double 0.3169195828969622
	.quad	0x3fb08ca961bae838              # double 0.064646326408280497
	.quad	0x3fe6d770b7d55b49              # double 0.71379886536565451
	.quad	0x3fdcb752a22a2d64              # double 0.44868913494493357
	.quad	0x3fc23479c672e36c              # double 0.14222643079645125
	.quad	0x3fe58910e477d8d1              # double 0.67298168776212652
	.quad	0x3fd1454f856b19f4              # double 0.269855385104534
	.quad	0x3fd1055f107ef05e              # double 0.265952840909227
	.quad	0x3fe77e6ab2980263              # double 0.73418173677061949
	.quad	0x3feef56442d16e3e              # double 0.96745503473670857
	.quad	0x3fd2d28360e64f52              # double 0.2940987058911918
	.quad	0x3fcedc4578f42f24              # double 0.24109714895200185
	.quad	0x3feb66fcda20a9f4              # double 0.85632174113317072
	.quad	0x3feddf512c79d144              # double 0.93351038634003957
	.quad	0x3fe841fbc2b5dd2c              # double 0.75805461911560234
	.quad	0x3fe9ebbfa79b938b              # double 0.81002791152842357
	.quad	0x3fa1ec5edbaffc60              # double 0.035006489102664018
	.quad	0x3febfd28540c7f31              # double 0.87465301910194715
	.quad	0x3fe3fccf7d005299              # double 0.62461065687473927
	.quad	0x3fc51b5a55c3a538              # double 0.16489724338252087
	.quad	0x3fe2db0abe35003b              # double 0.58923852109729269
	.quad	0x3fa6ee6bec4f6970              # double 0.04478776225706127
	.quad	0x3feb1b477d8dfa48              # double 0.84707998773939952
	.quad	0x3fc1a9fd0c4d3c28              # double 0.13800013638180642
	.quad	0x3f88f1a3a9159100              # double 0.012179640386144275
	.quad	0x3fd790fd27c50756              # double 0.36822441943887918
	.quad	0x3fe0ed386d1d6943              # double 0.52895757018567513
	.quad	0x3fce3d1cd0cc8464              # double 0.23624000735529471
	.quad	0x3f97af92d6df4da0              # double 0.023130697598231387
	.quad	0x3fba190286f1d8f0              # double 0.10194412035511724
	.quad	0x3fede1aca33cd68d              # double 0.93379814035752562
	.quad	0x3fc77f90237bf7cc              # double 0.18358041508321177
	.quad	0x3fae816d145666a0              # double 0.059581192715268516
	.quad	0x3fea4ffec7efd02d              # double 0.82226504373693887
	.quad	0x3f858cf45ae03600              # double 0.010522755645093973
	.quad	0x3fea6481a08c3ac9              # double 0.82476884228693692
	.quad	0x3fc52e7be304b62c              # double 0.16548107705004733
	.quad	0x3fe71e111465365b              # double 0.72242025359600903
	.quad	0x3fe2e6e82ecc8821              # double 0.59068688526554436
	.quad	0x3fd46c359f201f18              # double 0.31910458125683894
	.quad	0x3fec9a6bc87e4f35              # double 0.89385022314897944
	.quad	0x3fe9f7872f65dc86              # double 0.81146582848931881
	.quad	0x3fea92f83f5c2b7b              # double 0.83044063925750267
	.quad	0x3fea9049b6a83abe              # double 0.83011327433799642
	.quad	0x3fabf60b5f9f55c0              # double 0.05461154501214649
	.quad	0x3fe6800669f710e8              # double 0.70312805839833192
	.quad	0x3fe2d87a8eb8cff3              # double 0.58892562747359845
	.quad	0x3fe7edecf03c932b              # double 0.74779364510741198
	.quad	0x3feb345320d08e7b              # double 0.85013729485622436
	.quad	0x3fde408ea914166a              # double 0.47269026290482563
	.quad	0x3fe9755a2b68dae4              # double 0.79557522276340053
	.quad	0x3fba8fc53961d6b0              # double 0.10375626231128865
	.quad	0x3fcfd76e8efcff9c              # double 0.24876195890282993
	.quad	0x3fc1d0b01fab7650              # double 0.13918115183234869
	.quad	0x3feed9d8ce2494e9              # double 0.96409263860973937
	.quad	0x3fe48b4324041daa              # double 0.64199978861227192
	.quad	0x3fd0ea9c022344d0              # double 0.26431942185179214
	.quad	0x3fec7c3d417cdf62              # double 0.89016592779715276
	.quad	0x3fded2b322e2a128              # double 0.4816100922276001
	.quad	0x3fc1e46afbb9eca0              # double 0.13978326121636986
	.quad	0x3fee557432ca52f7              # double 0.94793138427721046
	.quad	0x3febc66a5ccf2db7              # double 0.86797063948454578
	.quad	0x3fe453050a04c24f              # double 0.63513423878436892
	.quad	0x3fd8623687dabe18              # double 0.38099444644009983
	.quad	0x3fee4781ce2c6ca2              # double 0.94622888820903861
	.quad	0x3fe81f00a1a3d2b6              # double 0.75378448076533888
	.quad	0x3fd5f06da3484a88              # double 0.34279957719369536
	.quad	0x3fed5121f3322b24              # double 0.91615388392651597
	.quad	0x3fe42c9ea7275746              # double 0.63044674536897882
	.quad	0x3fe92f804246692c              # double 0.78704846329063604
	.quad	0x3f830ed60c801300              # double 0.0093056414189134351
	.quad	0x3fe5ca99515efe1f              # double 0.68098131077562474
	.quad	0x3fe12e2185922fcf              # double 0.53688121879667416
	.quad	0x3fe3ff0fcf38303b              # double 0.62488546822124336
	.quad	0x3fd441cd74ba7a36              # double 0.31651626967678526
	.quad	0x3fee61d5df429a69              # double 0.94944280248166735
	.quad	0x3fdaf2b7d3eabb0e              # double 0.42106433577548408
	.quad	0x3fe5f864a2662081              # double 0.68657142370740598
	.quad	0x3fc087678b70dbf8              # double 0.12913221653590745
	.quad	0x3fec15d96de49bbb              # double 0.87766715491749581
	.quad	0x3feb979582cb4e2c              # double 0.86225390954718283
	.quad	0x3fe30a810643bfea              # double 0.59503222678722278
	.quad	0x3fd75c53690e34f2              # double 0.36501012095761987
	.quad	0x3fd02f00f6567e80              # double 0.25286888176376721
	.quad	0x3fd901fa3cecf1f0              # double 0.390745696542381
	.quad	0x3fd46dbba66ea6e0              # double 0.31919757130763848
	.quad	0x3fd6e0a8cdd8c96e              # double 0.35746212103108277
	.quad	0x3fe7ac7ca68af393              # double 0.73980553176771691
	.quad	0x3fe7dfb75f81c725              # double 0.74605911878299891
	.quad	0x3fdd3f24b893c6a4              # double 0.45697896981355712
	.quad	0x3fee48416e4e3720              # double 0.94632026237534105
	.quad	0x3fe0188928dfcd12              # double 0.50299509032484679
	.quad	0x3fef786a70e35fd9              # double 0.98344919250939277
	.quad	0x3fee44dee699602b              # double 0.94590706862346019
	.quad	0x3fd98d1754aaf1f2              # double 0.39923651951156025
	.quad	0x3fda6049394a077e              # double 0.41212683291097807
	.quad	0x3fcf50cb5fed2eb4              # double 0.24465315040503344
	.quad	0x3fea207d303d0a3f              # double 0.81646594449586718
	.quad	0x3fec974cfd36052a              # double 0.89346932845379468
	.quad	0x3fd47c5424f9240a              # double 0.32008842096962609
	.quad	0x3feee01263a22949              # double 0.96485251865059595
	.quad	0x3fcdc2d6085157c0              # double 0.23250842481746581
	.quad	0x3fb547fded0d51b0              # double 0.083129759191541863
	.quad	0x3fceb3053c949f20              # double 0.23983827074084108
	.quad	0x3fe5db4df9155e26              # double 0.68302057885279477
	.quad	0x3fdd462e9fe68ec0              # double 0.45740857711119176
	.quad	0x3fe34c86df949f61              # double 0.60309165638043905
	.quad	0x3fde2792a7a984d4              # double 0.47116533635387481
	.quad	0x3fced83389d45074              # double 0.24097294073056086
	.quad	0x3fcf2373691dedc8              # double 0.24326937325154874
	.quad	0x3fd0ebb2513129d8              # double 0.26438577584181422
	.quad	0x3fe1d40baf0b8dfe              # double 0.55713447750571254
	.quad	0x3fc2ab056697b0a0              # double 0.14584414967919646
	.quad	0x3fd690f73b49f2d2              # double 0.35259800710609313
	.quad	0x3fe0ba9604ee826b              # double 0.52277661288469568
	.quad	0x3fec9f64aff01344              # double 0.89445719111299881
	.quad	0x3fde57fa67e2ad9c              # double 0.47411975998940092
	.quad	0x3fe2ddd1c79c987b              # double 0.58957756983433229
	.quad	0x3fe95d631cdf42ce              # double 0.79264979971966354
	.quad	0x3fd9fb8d41c12b0a              # double 0.4059785024771122
	.quad	0x3fe005ab641d0d3a              # double 0.50069207719244635
	.quad	0x3fe8971c6aa848fa              # double 0.7684461672927505
	.quad	0x3fd3ee92e9c16dae              # double 0.31143639400189727
	.quad	0x3fd6cbb89b827944              # double 0.35618415056696429
	.quad	0x3fe8f604af17b707              # double 0.7800315303590829
	.quad	0x3fe40af21f22dc34              # double 0.62633615571292589
	.quad	0x3feecf6c5799f9f2              # double 0.96282021627103931
	.quad	0x3fee53572b321e37              # double 0.94767340122866173
	.quad	0x3feb155000d1e3d8              # double 0.8463516250623071
	.quad	0x3fddd3e0a3b0b97a              # double 0.46605697617896846
	.quad	0x3fe54706e3f1cf83              # double 0.66492027779030172
	.quad	0x3fdd2e41da85c500              # double 0.45594831791011359
	.quad	0x3fe269336ffc1a86              # double 0.57534191009547508
	.quad	0x3fe98dfba54a5957              # double 0.79858190806661866
	.quad	0x3fc38de7e2ec52c8              # double 0.15276812153083186
	.quad	0x3fd1ecac63722e1c              # double 0.28007039748692519
	.quad	0x3fe7ae032c6e44a2              # double 0.73999174764516717
	.quad	0x3fe9ffa56a8bc813              # double 0.81245680627603389
	.quad	0x3fe438c99f9dc36d              # double 0.63193207907725724
	.quad	0x3fed3f711f5f6d63              # double 0.91399437072270151
	.quad	0x3fc03af49dfb5818              # double 0.12679918016391478
	.quad	0x3fe2d5f18642a055              # double 0.58861614439684706
	.quad	0x3fedb8918674b714              # double 0.92878032933160392
	.quad	0x3fac1ca9ea11a870              # double 0.054906186888573738
	.quad	0x3fe0b54705417b28              # double 0.52212859179039572
	.quad	0x3f8719185be44180              # double 0.011278333954152897
	.quad	0x3fe4392af2be3e76              # double 0.63197848711747784
	.quad	0x3febb1ea79e6acf6              # double 0.86546825226596868
	.quad	0x3fdcc9b25b45c4d4              # double 0.449810589917502
	.quad	0x3fe60ded61194f33              # double 0.68920010532972353
	.quad	0x3fe8d680b42d753c              # double 0.77618441763812695
	.quad	0x3febfd13e1f75af5              # double 0.87464326986341112
	.quad	0x3fd8a7448f990c40              # double 0.38520921729304192
	.quad	0x3fef3f2963464cdd              # double 0.97646016492435772
	.quad	0x3fc85ab7c96502c4              # double 0.19026849111289412
	.quad	0x3fec3f068f639340              # double 0.88269355779321046
	.quad	0x3fc56ec53dad7f80              # double 0.16744294654472114
	.quad	0x3fe8b8e46b141f3b              # double 0.77256985582150806
	.quad	0x3fe539dfb600e2fa              # double 0.66331468150664752
	.quad	0x3fe96b21d5a81c9b              # double 0.79432765703031138
	.quad	0x3fe605bccd6ed126              # double 0.68820037959679747
	.quad	0x3fe43437b17e94f7              # double 0.63137421290289708
	.quad	0x3fdfcca361abe7ac              # double 0.49686512506706992
	.quad	0x3fecc00e82803e5e              # double 0.8984444187971794
	.quad	0x3feb2256634f8400              # double 0.84794158360102756
	.quad	0x3fc0617cda72e334              # double 0.1279750887531691
	.quad	0x3fdecb606ecbfa60              # double 0.4811631280898947
	.quad	0x3fe8e3cc408801b6              # double 0.77780735591664185
	.quad	0x3fe0a51855f8965c              # double 0.52015320578784552
	.quad	0x3fe26d587daeacda              # double 0.57584785983399489
	.quad	0x3fd078da89b57ef2              # double 0.25737632225171503
	.quad	0x3fee9d5992e8933b              # double 0.95670775120797857
	.quad	0x3feb5d7bebe4688e              # double 0.85516162941645901
	.quad	0x3fdf5dcd62888faa              # double 0.49010023710638484
	.quad	0x3fcbfc92f7aa1448              # double 0.21864544957148468
	.quad	0x3fdeb81d88afdc90              # double 0.47998751018844477
	.quad	0x3fe9af186282d448              # double 0.80262393227042939
	.quad	0x3fe876716113b58f              # double 0.76445836029385983
	.quad	0x3fe36c686a101580              # double 0.60698338237186533
	.quad	0x3fc0dd35f007cf30              # double 0.13175081463088523
	.quad	0x3fe00034c036cdb7              # double 0.50002515355884369
	.quad	0x3fea156ccd779f87              # double 0.81511535768821453
	.quad	0x3fe8a43b4320e7b7              # double 0.77004778967897536
	.quad	0x3fd5942c12c9ff10              # double 0.33716871104114521
	.quad	0x3fe20f9bf0af92ca              # double 0.56440541275932188
	.quad	0x3fbcf0c7f7e720c0              # double 0.11304902841868891
	.quad	0x3fd23d846aaf7492              # double 0.28500471514218717
	.quad	0x3fd8ffa5bc6d2d62              # double 0.3906034793951304
	.quad	0x3fd03f7b93deec96              # double 0.25387467804439134
	.quad	0x3fe5925816cac99b              # double 0.67411426974858857
	.quad	0x3fd2ce4cf7d4f0bc              # double 0.2938415928108602
	.quad	0x3fe7f8d3e4d14af0              # double 0.74912447634627988
	.quad	0x3fcaccba802ef2e4              # double 0.20937281855540057
	.quad	0x3fd3a5f1ffde5d76              # double 0.30700349795502946
	.quad	0x3fe6fe4047574bcc              # double 0.71853650983609318
	.quad	0x3fe8ad4741094b1e              # double 0.7711521406402857
	.quad	0x3fe4c05a4a2248f8              # double 0.64848055342943578
	.quad	0x3fcfbe52d063cb6c              # double 0.24799571204456627
	.quad	0x3fd44884a38dff6a              # double 0.31692615482460573
	.quad	0x3fda7563a4225d28              # double 0.4134148695824984
	.quad	0x3fe686f8463486fa              # double 0.70397580825758088
	.quad	0x3fe554685817a896              # double 0.66655366139936478
	.quad	0x3febc37eb1942186              # double 0.86761412318541953
	.quad	0x3fe95d23387eec30              # double 0.79261933359464898
	.quad	0x3fe359e2687a74a0              # double 0.60472221761633094
	.quad	0x3fcf9e557a260d7c              # double 0.24701946701325628
	.quad	0x3fb35e4d75844008              # double 0.075657693090988798
	.quad	0x3fb73f67dbf7d230              # double 0.090811244204652252
	.quad	0x3fd4ca6d60b81b4e              # double 0.32485517926436536
	.quad	0x3fd45ea5b454bd4a              # double 0.31827681169939537
	.quad	0x3feacd3303f18fe8              # double 0.83754874010309965
	.quad	0x3fb4f800d06e9618              # double 0.081909228216851537
	.quad	0x3feffc3db8f76b70              # double 0.99954115034357294
	.quad	0x3fb89f5cd2884150              # double 0.096181680106615319
	.quad	0x3fe700dc252de9d3              # double 0.71885497342673899
	.quad	0x3fddd1c26cd09c78              # double 0.46592770220235691
	.quad	0x3fe133298d65c159              # double 0.53749539963431936
	.quad	0x3fcffb6c4e3e87b4              # double 0.24986032314796847
	.quad	0x3fdd9edc4a67ae04              # double 0.46282107606995759
	.quad	0x3fc9ff92b8707c74              # double 0.20311197286443738
	.quad	0x3fe30cf858c745e2              # double 0.59533326472790926
	.quad	0x3fef17c8e7d9e614              # double 0.97165341647559211
	.quad	0x3fd212b8747c8d8c              # double 0.28239261031759422
	.quad	0x3fef0af8bbbc0a05              # double 0.97008930842304208
	.quad	0x3fdcee8d3669f6f4              # double 0.45206003488406954
	.quad	0x3fe1fcdf3de160d6              # double 0.56211816869747611
	.quad	0x3fdd0894df298e9e              # double 0.45364877503582501
	.quad	0x3fe7d51025ce8700              # double 0.74475867637758597
	.quad	0x3fe3e96e6f803815              # double 0.62224504258643043
	.quad	0x3fd05900853be4f8              # double 0.25543225299004702
	.quad	0x3fd82f001ef33306              # double 0.37786868116818118
	.quad	0x3feaced733b43d11              # double 0.83774910067032426
	.quad	0x3f7c31a51b89e580              # double 0.0068832826151433713
	.quad	0x3fe023038c8297a2              # double 0.50427415316947966
	.quad	0x3fe00abaf283c36c              # double 0.50130984655525657
	.quad	0x3fd4e7868cf2d622              # double 0.32663120045194394
	.quad	0x3fb4556dd9c9a368              # double 0.079428544684231661
	.quad	0x3fe65ceae67f9aad              # double 0.69884247798184662
	.quad	0x3fec09842fe25fb4              # double 0.87616166450879129
	.quad	0x3fa33d37415446f0              # double 0.03757641479945828
	.quad	0x3f9b89c46a5345a0              # double 0.02689272784193053
	.quad	0x3fc4a0ccb0f5bac4              # double 0.16115721359843438
	.quad	0x3fe72539d337de20              # double 0.72329417470513491
	.quad	0x3fe0c786179528f1              # double 0.52435593229281896
	.quad	0x3fc5f7c221edebf8              # double 0.17162348419864748
	.quad	0x3fdf2886c34338e6              # double 0.48684853619205481
	.quad	0x3fd9ade8aba39fa2              # double 0.40123955499302089
	.quad	0x3fe027e18fcb35a1              # double 0.50486829838489566
	.quad	0x3febe08c539a23f2              # double 0.87116066292321492
	.quad	0x3fe1e47f3777ac57              # double 0.55914269288531215
	.quad	0x3fd832a7825b15fa              # double 0.37809169511851304
	.quad	0x3fea9e3f965de15d              # double 0.83181743019580845
	.quad	0x3fd0afa603d05330              # double 0.26072073337973034
	.quad	0x3fed9ed91e47f916              # double 0.92564063944135699
	.quad	0x3fe65d1ead35a6f9              # double 0.69886716680522831
	.quad	0x3fcee0d8f9c3f274              # double 0.24123680301262918
	.quad	0x3fecabfb7f5bf8b5              # double 0.89599394678932376
	.quad	0x3fdee0df60321c60              # double 0.48247513193240898
	.quad	0x3fed90bf7d62790e              # double 0.92391943444434488
	.quad	0x3f8ca6c7ba5c9c00              # double 0.013989982962426595
	.quad	0x3fe57224e740059d              # double 0.67018361249954561
	.quad	0x3fc8ee396e54d7a0              # double 0.19477002990032322
	.quad	0x3fd64d4a394f006a              # double 0.34846740337889648
	.quad	0x3fd36903fe8ad154              # double 0.30328464372293706
	.quad	0x3feb9268a0c3960f              # double 0.86162215613575366
	.quad	0x3fe572726c667b44              # double 0.67022057697236237
	.quad	0x3fd356d61b6167f2              # double 0.30217507051349835
	.quad	0x3fa03aa9d8e92eb0              # double 0.031697566727044602
	.quad	0x3fea36110431ed7d              # double 0.8190999109205418
	.quad	0x3fefb42a1d91c0c5              # double 0.99074273848784655
	.quad	0x3fe805fe0d446fec              # double 0.75073149291301666
	.quad	0x3fc6813160c7d2d0              # double 0.17581765390027337
	.quad	0x3fee43ba29b4afb7              # double 0.94576748033204339
	.quad	0x3fc154557403578c              # double 0.13538616337490017
	.quad	0x3fea0828ed28d9fc              # double 0.81349607773046228
	.quad	0x3fef2df6601e3427              # double 0.97436064503711328
	.quad	0x3fe5b982280c78da              # double 0.67889507123961867
	.quad	0x3fd2deb7134c4d30              # double 0.29484345326018779
	.quad	0x3fd83c4e7532564c              # double 0.37868081517203644
	.quad	0x3fe6edc4988e9736              # double 0.71652440830505415
	.quad	0x3fe643024e6bd953              # double 0.69567981068284224
	.quad	0x3fe9c774e9f6984a              # double 0.80559774108838522
	.quad	0x3fefdf568709e36c              # double 0.99601293921214795
	.quad	0x3fded0968e333e0c              # double 0.48148120772108949
	.quad	0x3fd1c00a0d8b628c              # double 0.27734614680006398
	.quad	0x3fda729208aaf53c              # double 0.41324282499757081
	.quad	0x3fb5d0aa53d6a3f0              # double 0.085215230434769528
	.quad	0x3fe900c550357cd1              # double 0.7813440863209512
	.quad	0x3fe7aefb6527f895              # double 0.74011010891969653
	.quad	0x3fe6499675d98888              # double 0.69648287789847618
	.quad	0x3fc511aaa698590c              # double 0.16460164198424143
	.quad	0x3fe30c3a0d4b874b              # double 0.5952425250691048
	.quad	0x3fe696adb6d7529a              # double 0.70589338027146487
	.quad	0x3fe9e1864edacaff              # double 0.80877986336994911
	.quad	0x3fa8dee19b979e60              # double 0.048575449221797795
	.quad	0x3fe1459c700c3fb1              # double 0.53974744686455811
	.quad	0x3fbeb4f9ad423e48              # double 0.11994896392774834
	.quad	0x3fc24fb5385f9774              # double 0.14305749180419591
	.quad	0x3fd0219322b82880              # double 0.25204924002230911
	.quad	0x3fc8d08c2aad2b00              # double 0.19386436542330188
	.quad	0x3fc158ac61118448              # double 0.13551859607381034
	.quad	0x3fc6ff6a1d68b600              # double 0.1796696323012128
	.quad	0x3fd10aa2b06fc14e              # double 0.26627413969165026
	.quad	0x3fc0ad11babfd0f0              # double 0.13028165453545837
	.quad	0x3fd5541bd5b7e542              # double 0.33325858946735221
	.quad	0x3fec796cedd3ad1f              # double 0.88982244921263376
	.quad	0x3fd592acf900980c              # double 0.33707737270958726
	.quad	0x3fe88ffe47b02831              # double 0.76757730485520004
	.quad	0x3feac12efb5d07c6              # double 0.83608197302259479
	.quad	0x3fd5a5a7a15895ba              # double 0.33823576694916435
	.quad	0x3fd990b7df4677e2              # double 0.39945790104127188
	.quad	0x3fbcfbc3f69afec8              # double 0.11321663637772439
	.quad	0x3fe7869540f5b923              # double 0.73517859160873333
	.quad	0x3fc767792dc5adc4              # double 0.18284525618524416
	.quad	0x3fec7fcdc05333bc              # double 0.89060103953817515
	.quad	0x3f821d1e68f65480              # double 0.0088446021825723253
	.quad	0x3fcc86002c1a6448              # double 0.22283937600585291
	.quad	0x3fea0b57c1794f06              # double 0.81388461864341433
	.quad	0x3fd6178efa9ddc10              # double 0.34518789743691602
	.quad	0x3fe151e53d46cd31              # double 0.54124700515823154
	.quad	0x3fd8e333ca80ec22              # double 0.38886732841246119
	.quad	0x3fe1604e9dc6245e              # double 0.5430062371753015
	.quad	0x3fd1a78aa1df5c5a              # double 0.2758509236131822
	.quad	0x3fcc5bc205481a10              # double 0.22155022867100671
	.quad	0x3fd3ad643502c208              # double 0.30745797325928992
	.quad	0x3fd8f85faa9b00ac              # double 0.3901595274037486
	.quad	0x3fb52ea3fca5d330              # double 0.082742928678112503
	.quad	0x3fe900e5a33bcef8              # double 0.78135949975555175
	.quad	0x3fbd01403777dea8              # double 0.11330033640103443
	.quad	0x3fd6049d75c1dcfc              # double 0.34403168201193046
	.quad	0x3fd034788b2095e4              # double 0.25320256792687545
	.quad	0x3fa698c49fc69f80              # double 0.044134277824297463
	.quad	0x3fd90ca66398b9b8              # double 0.39139709211567775
	.quad	0x3fe2e133f79599fe              # double 0.58999060016941463
	.quad	0x3fcab36a4bb9f9e8              # double 0.20860031793195266
	.quad	0x3fe53aa1d1be982e              # double 0.66340723958706405
	.quad	0x3fde8a0a0018ecda              # double 0.47717523583896837
	.quad	0x3fec10a0a2421095              # double 0.87702972117451117
	.quad	0x3fddb71140c17756              # double 0.46429854701806528
	.quad	0x3fb57d7d8883fba0              # double 0.083946080998414718
	.quad	0x3fe7497227dfa057              # double 0.72771556651879166
	.quad	0x3fc9624285b20288              # double 0.19831115272610966
	.quad	0x3fed03664dc2d71f              # double 0.9066649931689631
	.quad	0x3fde2e2858bb019e              # double 0.47156723656737565
	.quad	0x3fdf7227cb5442f2              # double 0.49134249550210918
	.quad	0x3fe8c9f88a16a374              # double 0.77465464563748165
	.quad	0x3fedd9ba7e85fe34              # double 0.93282818519214183
	.quad	0x3fc4da4dc89830bc              # double 0.16291210455563554
	.quad	0x3fd52a2d283ffbea              # double 0.33069924288423513
	.quad	0x3fb7a903cd5727b8              # double 0.092422711975045924
	.quad	0x3fcb7965a0c021c8              # double 0.21464224194666159
	.quad	0x3fe7008cca21bc00              # double 0.71881713370191846
	.quad	0x3fa6a7d30fcdedb0              # double 0.044249149016617806
	.quad	0x3fe79226f957fded              # double 0.73659084987587919
	.quad	0x3fcf852ea89aaad0              # double 0.24625190003037867
	.quad	0x3fd15fd35fa32374              # double 0.27147373523307938
	.quad	0x3fd60f7d7b7f2628              # double 0.34469544468137991
	.quad	0x3fe5d729aeaa3777              # double 0.68251499284973149
	.quad	0x3fcb9901e1405450              # double 0.21560691355321859
	.quad	0x3fec2bb848505985              # double 0.88033689616968103
	.quad	0x3fd43ad97d4a9046              # double 0.31609189258074755
	.quad	0x3fd3951d54802a62              # double 0.3059762311174038
	.quad	0x3fe0b147509be5dd              # double 0.5216404508966509
	.quad	0x3fe501fc50392c00              # double 0.65649238270395927
	.quad	0x3fd0b9e337d46432              # double 0.26134567691912303
	.quad	0x3fd3e32a639e6a6e              # double 0.31074008682632026
	.quad	0x3fcd636f7a346ee4              # double 0.22959702937156756
	.quad	0x3fdbc442f2b6272e              # double 0.43385385229395268
	.quad	0x3fec970d844dd1ba              # double 0.89343906250592586
	.quad	0x3fe168f69c585eef              # double 0.54406290565654369
	.quad	0x3fecf8830e3061ad              # double 0.90533592959677878
	.quad	0x3fec72c5e9369207              # double 0.88901038693853784
	.quad	0x3fed5f0f707c70d1              # double 0.91785404176655494
	.quad	0x3fe63ef65371cb5f              # double 0.69518581674342872
	.quad	0x3fd4d5a8e2cb008a              # double 0.32554075381995828
	.quad	0x3feaffe5263637a3              # double 0.84373719657172719
	.quad	0x3fd74c5461407c8e              # double 0.36403378960853494
	.quad	0x3fdcedb177ce00a4              # double 0.45200764369657009
	.quad	0x3fd0fb6dbc48adce              # double 0.26534598719692049
	.quad	0x3fd99f27ac58ad5e              # double 0.40033904867842363
	.quad	0x3fdf219ece01c5fc              # double 0.48642702215064992
	.quad	0x3fd779ffab03e56e              # double 0.36682120991425549
	.quad	0x3fe9ef4dc1e4b654              # double 0.81046188230329585
	.quad	0x3fdd204212bcaad4              # double 0.45509387807639468
	.quad	0x3fd706f029583ff2              # double 0.35979846990176079
	.quad	0x3fae5287276c7bc0              # double 0.059223388254614928
	.quad	0x3fe9a1232591142b              # double 0.80092007958649469
	.quad	0x3fea8bf97454b1f3              # double 0.82958672257296795
	.quad	0x3fd5bb4def292950              # double 0.33955715518518037
	.quad	0x3fae1002c1ae8260              # double 0.05871590246465952
	.quad	0x3fe58ec719dc582f              # double 0.67367892313882816
	.quad	0x3fe3d9ddee596b50              # double 0.62034508278461864
	.quad	0x3fd56fd0a50239f8              # double 0.33494964708452768
	.quad	0x3fcda6144c4daba4              # double 0.23163083768608062
	.quad	0x3fc31172d6f822b0              # double 0.14896998879000511
	.quad	0x3fe8491da24ebbe9              # double 0.75892526341146749
	.quad	0x3fd81b63f080f004              # double 0.37667177664457108
	.quad	0x3fcc1892cda0d014              # double 0.2194999221843551
	.quad	0x3fd2e92881ce4500              # double 0.29548084904043037
	.quad	0x3fe384fad1c36835              # double 0.60998288125416045
	.quad	0x3fc9912485e361c0              # double 0.19974190270910519
	.quad	0x3fe710343f9b8eac              # double 0.72072803901069937
	.quad	0x3fef5727dd45f799              # double 0.97938912599032612
	.quad	0x3fe0411c55dc56a4              # double 0.50794808168094052
	.quad	0x3feea38a6c1ec7ef              # double 0.95746346585496933
	.quad	0x3fe1e36f1b274d11              # double 0.55901294043943228
	.quad	0x3fee47416b65f5e6              # double 0.94619818664767474
	.quad	0x3fd6c6a5958a6f9e              # double 0.35587443927374263
	.quad	0x3fa1e47fe359df00              # double 0.034946438315214934
	.quad	0x3fed98cc226f30ca              # double 0.92490202641922648
	.quad	0x3fd96ec976983e6a              # double 0.39738689977182295
	.quad	0x3fb322007272fdc0              # double 0.074737575475402274
	.quad	0x3fd21078a7eb3f32              # double 0.28225532911618523
	.quad	0x3fdb6429ef9e24e0              # double 0.42798851394816317
	.quad	0x3fd1ad5ca02ceda2              # double 0.27620616571558732
	.quad	0x3fe879a9b08001f0              # double 0.76485142204916023
	.quad	0x3fbf5e047e76c198              # double 0.12252834403512336
	.quad	0x3feff7119b00e9eb              # double 0.99890976213583593
	.quad	0x3fd0d47464d382fc              # double 0.26296720358190817
	.quad	0x3fce192ffa417760              # double 0.23514365882413824
	.quad	0x3fe614921c08b45a              # double 0.6900110766924954
	.quad	0x3fd27c6d4174ddc4              # double 0.28884440796124644
	.quad	0x3fe3e6cee7a99d3f              # double 0.62192483183472536
	.quad	0x3fe2a770fbbf5da3              # double 0.58293961686552043
	.quad	0x3fefcd96951f8b60              # double 0.99384621739987366
	.quad	0x3fb398ff2f0daa58              # double 0.07655329607738659
	.quad	0x3feb2239d9fbfe33              # double 0.8479279763705051
	.quad	0x3fe0f62d8ab277ca              # double 0.5300510128906748
	.quad	0x3fed1c024283ee6d              # double 0.90966904631882317
	.quad	0x3fee5da43722faf2              # double 0.94893084305644337
	.quad	0x3fe1a583007225dc              # double 0.55145406806075981
	.quad	0x3fa901d68853bd10              # double 0.048842147962085858
	.quad	0x3fe029d7b62496b2              # double 0.50510774206914832
	.quad	0x3f91fd5a0defe4a0              # double 0.017568022823955531
	.quad	0x3fe872df0eb90028              # double 0.76402237773436799
	.quad	0x3fce6a2704ae4d38              # double 0.23761451462324046
	.quad	0x3fe0ab8fa1b84d42              # double 0.52094251237796407
	.quad	0x3fecb8f0f7a252ab              # double 0.89757583967237531
	.quad	0x3fee7442576ebae8              # double 0.95169179035823692
	.quad	0x3fbd3b1141eb20c8              # double 0.11418254718148824
	.quad	0x3feacc9488d711e5              # double 0.83747317053399384
	.quad	0x3fe3bbdafae4b81b              # double 0.61668156626342652
	.quad	0x3fdf471c98b6f158              # double 0.48871531404053803
	.quad	0x3fd6c1fd75039244              # double 0.35559021403449642
	.quad	0x3fb466d254709658              # double 0.079693933119949434
	.quad	0x3fd513fc1d385a72              # double 0.32934477666405038
	.quad	0x3fd9e8cd5857980e              # double 0.40483411433376737
	.quad	0x3fdb7d1061a61f14              # double 0.42950830017115149
	.quad	0x3fe1b1f99ec309f5              # double 0.55297547348192089
	.quad	0x3fd4f6bfe44f679c              # double 0.32756039901652811
	.quad	0x3fdb293438c74612              # double 0.424389892051381
	.quad	0x3fed8f863c321b0f              # double 0.9237700629899751
	.quad	0x3fc96817ae5f1f4c              # double 0.19848915113675003
	.quad	0x3fdad3e69fd6c55a              # double 0.41918340310356472
	.quad	0x3fe548dc75d75049              # double 0.66514418617089988
	.quad	0x3fbc4ed97fbb77d8              # double 0.11057814949478428
	.quad	0x3fe3e5334555d55f              # double 0.62172854940460442
	.quad	0x3fea5aeb9c82666b              # double 0.8235986763786064
	.quad	0x3fe88c285c85e518              # double 0.76710908957389545
	.quad	0x3fdc84f771bc363c              # double 0.44561563593819975
	.quad	0x3fe0a4f803543989              # double 0.52013779306598551
	.quad	0x3fe08bb770fffac1              # double 0.51705524511620393
	.quad	0x3fd1685af41e8cf6              # double 0.27199434127596989
	.quad	0x3fddda6cb36a2c4a              # double 0.46645658036203896
	.quad	0x3fec3b7c8a68ed76              # double 0.88226153405359642
	.quad	0x3fefdc2536f4c0f2              # double 0.99562321408850907
	.quad	0x3fd74c3dfb372fba              # double 0.36402844937105849
	.quad	0x3fe92c7e7285d22a              # double 0.78668138854715619
	.quad	0x3fe6aa4885dc1786              # double 0.70828653473357472
	.quad	0x3fe8f5e0a1d56b95              # double 0.78001433952464316
	.quad	0x3fef1d50f7684f49              # double 0.97232864686746112
	.quad	0x3fecfb72a83b1081              # double 0.9056943212276708
	.quad	0x3fde14fd79ba1c8e              # double 0.47003113639261407
	.quad	0x3fdc36f20736b8a2              # double 0.44085360245197525
	.quad	0x3fd6df6a5b2de64e              # double 0.35738619713047093
	.quad	0x3fef5b9db617aca2              # double 0.9799336010450086
	.quad	0x3fe1071ef2068fd6              # double 0.53211924811011602
	.quad	0x3fdce932a9464e8c              # double 0.45173326998449492
	.quad	0x3fe2f506251bdf5b              # double 0.59241015670611874
	.quad	0x3feb1b8394960000              # double 0.84710864086810034
	.quad	0x3fd2c28d238c1f14              # double 0.29312447043820211
	.quad	0x3fe430ee4f125b32              # double 0.6309730095261783
	.quad	0x3fc25beb7cdbfb08              # double 0.14343017193456142
	.quad	0x3fd70c331e1d4a6e              # double 0.36011960926877051
	.quad	0x3fe10d63016a2e00              # double 0.53288412357636616
	.quad	0x3fec7a7def532456              # double 0.88995262854690327
	.quad	0x3fee8951fe47d23c              # double 0.95426273025675056
	.quad	0x3fb4f0abbe51f8c0              # double 0.081797346081631694
	.quad	0x3fe8e53151e9dd58              # double 0.77797761915909813
	.quad	0x3fd0162afd4145f0              # double 0.25135302287989614
	.quad	0x3fd6c75b6674fcfc              # double 0.35591778760495152
	.quad	0x3fedcb9e12170501              # double 0.93110564740359802
	.quad	0x3f958c22551df240              # double 0.021042381711128266
	.quad	0x3fce15ac694b331c              # double 0.23503642216965026
	.quad	0x3fa05c24fbd70070              # double 0.031953006498498193
	.quad	0x3fbb575d08923098              # double 0.10680180987600563
	.quad	0x3fdfad3650d99d9a              # double 0.49494703193200851
	.quad	0x3fdfdead7aeecd00              # double 0.49796616559179085
	.quad	0x3fee49bcd957ff8c              # double 0.94650118303251096
	.quad	0x3fccacb4ed7ce098              # double 0.22402059169849475
	.quad	0x3faf1bb46495cf90              # double 0.060758244780031778
	.quad	0x3feaf7ca159ff879              # double 0.84274772857294444
	.quad	0x3fa86f22450fdad0              # double 0.047722884111797037
	.quad	0x3fd8198b5715a558              # double 0.37655910019255634
	.quad	0x3fe6d8769685c07c              # double 0.71392373465461345
	.quad	0x3fe831ba32a780f8              # double 0.75607023137493368
	.quad	0x3fde6368c511dade              # double 0.47481745953647969
	.quad	0x3fe7f28a5c4f8796              # double 0.74835699109484
	.quad	0x3feada5a41227208              # double 0.8391543647917965
	.quad	0x3fcaeeeafd359b50              # double 0.21041619647732057
	.quad	0x3fe5f7ec6d170b26              # double 0.68651410395282109
	.quad	0x3fd274739e96b750              # double 0.28835764395886532
	.quad	0x3fe8e0453989fe51              # double 0.77737675893872382
	.quad	0x3fe6b242682a5e99              # double 0.70926018090081577
	.quad	0x3fb05af342e73660              # double 0.063887790521414356
	.quad	0x3fe23108e3aea4b7              # double 0.5684856841009126
	.quad	0x3fd881465249a9de              # double 0.38289030109322464
	.quad	0x3f7179b09a902080              # double 0.0042664431175652995
	.quad	0x3fa5f2c9e6d53310              # double 0.042867955615838338
	.quad	0x3fd8b9094a18429c              # double 0.3862937186795905
	.quad	0x3fd25cb3fe45e91e              # double 0.28690814811092646
	.quad	0x3fd3a75c344c6c44              # double 0.30708985430982616
	.quad	0x3fe2d65e9036189e              # double 0.58866813818237396
	.quad	0x3fa484f5675bf7a0              # double 0.040076893679710013
	.quad	0x3fec897b0ab5352a              # double 0.89178230372786982
	.quad	0x3fe64a972a9aa75d              # double 0.69660528489223916
	.quad	0x3fea8a7ec8279825              # double 0.82940615742404999
	.quad	0x3fef3a3bca6ddf5a              # double 0.97585858857108154
	.quad	0x3fc5b6db84b18884              # double 0.16964286784338267
	.quad	0x3fe4bb0312f7464b              # double 0.64782861427574667
	.quad	0x3fc1e2d804ae0700              # double 0.13973522404199201
	.quad	0x3fdce9d6473b0e5e              # double 0.45177227932092545
	.quad	0x3fda1d85781347cc              # double 0.40805184103112135
	.quad	0x3fea8517e0662d0d              # double 0.8287467367930802
	.quad	0x3fa5018011014790              # double 0.041027071071439214
	.quad	0x3fe76162315bca20              # double 0.7306376422914731
	.quad	0x3fb0f98e9a865f40              # double 0.066307938314250414
	.quad	0x3fe002fb457eda08              # double 0.50036395619719176
	.quad	0x3fdf9e02cf488a1a              # double 0.49401922457232816
	.quad	0x3fdc5c5e95d4dd0a              # double 0.44313778526289183
	.quad	0x3fda48bbda0c84ac              # double 0.41068931859815438
	.quad	0x3fcf9d5e1d0ec20c              # double 0.24698997896986474
	.quad	0x3fe4413936dece0d              # double 0.63296185223447454
	.quad	0x3f9bc94552663320              # double 0.027134974626778718
	.quad	0x3fe5ac4a54ea7486              # double 0.67728153786778544
	.quad	0x3f605e020b9f5e00              # double 0.0019979515027264139
	.quad	0x3fe15e69302a064d              # double 0.54277476698934779
	.quad	0x3fd89fb6b6de12f6              # double 0.38474815233375581
	.quad	0x3feeb8ec3d7166bc              # double 0.96007358551579313
	.quad	0x3fd16525d387bf0e              # double 0.27179856927158219
	.quad	0x3fb96315db9a7690              # double 0.099168172945122146
	.quad	0x3fb799ed1a963f70              # double 0.092192477217620583
	.quad	0x3fee897b50f3aee1              # double 0.95428243456759898
	.quad	0x3fe426d65c2bb5d9              # double 0.6297408867082438
	.quad	0x3fbc1a0390c0ec80              # double 0.10977194103263521
	.quad	0x3fefa3ef25b9b2f2              # double 0.98876149528731916
	.quad	0x3fe73b9428874b95              # double 0.72602279582712248
	.quad	0x3fd88d8fbba06c3c              # double 0.38364022562899769
	.quad	0x3f93270c2ea12620              # double 0.018703642221487127
	.quad	0x3fd111397d8ba3fe              # double 0.26667630443859014
	.quad	0x3fd331ce9bac1cb2              # double 0.29991498186468413
	.quad	0x3fed881328b44e38              # double 0.92286069822370731
	.quad	0x3fe04653dfd5ce0c              # double 0.50858491628463431
	.quad	0x3fecbe611e718206              # double 0.89823966928457888
	.quad	0x3fc407e95aec22d0              # double 0.15649144115038505
	.quad	0x3fe9cae9f25ef8ea              # double 0.80601975763400202
	.quad	0x3fef05cc90018aa8              # double 0.96945789457489173
	.quad	0x3fe0101a0a05a0c4              # double 0.5019655414335138
	.quad	0x3fe5595900b36721              # double 0.66715669762490759
	.quad	0x3fe4fe7bfd94c954              # double 0.65606498267724556
	.quad	0x3fd8c131361bd08a              # double 0.38679151805923395
	.quad	0x3fe944a427a36efe              # double 0.78962905637624181
	.quad	0x3fe68c93fdca2bbd              # double 0.70466041153246517
	.quad	0x3fc7960e30805a40              # double 0.18426682823401741
	.quad	0x3fdd7a89626bfab8              # double 0.46060404407027589
	.quad	0x3fecae4c1f37f833              # double 0.89627653214825498
	.quad	0x3fc9569481b3e110              # double 0.19795471509110785
	.quad	0x3fc05e2ed5b6ed74              # double 0.12787423548966681
	.quad	0x3fc26bd417393bd4              # double 0.14391566404307687
	.quad	0x3fe098eddd3075a1              # double 0.5186681099036613
	.quad	0x3fead9b20f857b6f              # double 0.83907416373754795
	.quad	0x3f53ebf381fbee00              # double 0.0012159231191039011
	.quad	0x3fe52d6a08f631bd              # double 0.66179372549372995
	.quad	0x3fc491b461a25c84              # double 0.16069655196472266
	.quad	0x3fe42b4767db8b56              # double 0.63028307232557768
	.quad	0x3fda6e2e5c4fc7ca              # double 0.41297492041405504
	.quad	0x3fef565e9a340651              # double 0.97929315679375339
	.quad	0x3febd088615776ed              # double 0.86920565616648349
	.quad	0x3feb6e22bcc4c523              # double 0.85719429844735762
	.quad	0x3fa33e2b98bef530              # double 0.037583696742766626
	.quad	0x3feb2457f97e6614              # double 0.84818648080107772
	.quad	0x3fe04dc9848c4739              # double 0.50949550522111686
	.quad	0x3fe9a03e0f7638c9              # double 0.80081084270366276
	.quad	0x3fec5408d5bdff20              # double 0.88525811907308948
	.quad	0x3fedd43f9c070912              # double 0.93215923761479957
	.quad	0x3feab17d92dd1659              # double 0.83416632351208897
	.quad	0x3fc29ff4019de354              # double 0.14550638274138328
	.quad	0x3fee03bb2a1c9bc5              # double 0.9379554579253343
	.quad	0x3fd9023291654002              # double 0.39075912665157386
	.quad	0x3fed9e5c8b5b4ed4              # double 0.925581237965583
	.quad	0x3fd3f6b2b209d26e              # double 0.31193225275573055
	.quad	0x3fe4023105e269ea              # double 0.62526751660635438
	.quad	0x3fd7b9eeb64a0256              # double 0.37072341729802838
	.quad	0x3faef29b51def3a0              # double 0.060444692367560338
	.quad	0x3fdfcca8f409ca92              # double 0.49686645347461778
	.quad	0x3fed57ded029dcce              # double 0.91697636277140204
	.quad	0x3fea929c4e300541              # double 0.83039679785739662
	.quad	0x3fe3d67d00655925              # double 0.61993265225718075
	.quad	0x3febc2f90a1519be              # double 0.86755039185737082
	.quad	0x3f99804872e90660              # double 0.02490342332226303
	.quad	0x3fee83d4e575b72b              # double 0.95359272781727122
	.quad	0x3fe69725c9f105c7              # double 0.7059506363076985
	.quad	0x3fed98008b0065b4              # double 0.92480494641056631
	.quad	0x3fecde835eaa30ea              # double 0.90216225136967165
	.quad	0x3fe400fa7d015f71              # double 0.625119442130183
	.quad	0x3fb230e9f2e14ff8              # double 0.071058866307168844
	.quad	0x3febf3d3da6afc21              # double 0.87351410541294083
	.quad	0x3fe06ec169c35079              # double 0.51351996094537278
	.quad	0x3f970f4b02ab36e0              # double 0.022519275701418873
	.quad	0x3fe83d73723f54ac              # double 0.75750133813803222
	.quad	0x3fe0d77115ccb136              # double 0.52629904039125708
	.quad	0x3f90e4bc7fbd4100              # double 0.016497559830271236
	.quad	0x3fca2fe525da2ed8              # double 0.20458664272552229
	.quad	0x3fd9730868be4a5a              # double 0.39764604786720315
	.quad	0x3fe5bb9629b8839c              # double 0.67914875172219835
	.quad	0x3fec984764bd4412              # double 0.89358873057983801
	.quad	0x3fd81afa5bde63a4              # double 0.37664660426667695
	.quad	0x3fb0d873f9385cc8              # double 0.065802810997740768
	.quad	0x3fd3f41dce8e473c              # double 0.31177468463384961
	.quad	0x3fd198335ea23c7e              # double 0.27491459123206841
	.quad	0x3f6c6077aa2d5600              # double 0.0034639680101615777
	.quad	0x3fe1d32b9844ad76              # double 0.55702762355706059
	.quad	0x3fe03f1d5bcbd488              # double 0.50770442894885637
	.quad	0x3fe0fff3cd1a8ef7              # double 0.53124418315243715
	.quad	0x3fe6b3b37db2fd92              # double 0.70943617392178937
	.quad	0x3fd48ae436de0bfa              # double 0.32097726209775568
	.quad	0x3facf546a04d4b80              # double 0.056558806484324542
	.quad	0x3fe99856e7dd721e              # double 0.79984612737786498
	.quad	0x3fe9236245cf218f              # double 0.78556932100859622
	.quad	0x3fe4a36a10862cc0              # double 0.64494803645484211
	.quad	0x3fe1a61a95d99260              # double 0.55152634875828355
	.quad	0x3fde7b9ca7cf355a              # double 0.47629467380177959
	.quad	0x3fe89b9694f468a9              # double 0.76899270146102083
	.quad	0x3fecb59c9e145364              # double 0.89716940760500252
	.quad	0x3fceabbe07c5cba0              # double 0.23961615924380641
	.quad	0x3fdcae4119a6a67a              # double 0.44813563828447622
	.quad	0x3fd603cbc0159102              # double 0.34398168333270018
	.quad	0x3fe3caf1f350cc66              # double 0.61852357409078418
	.quad	0x3fe18a6e238d6bc1              # double 0.54814822143395514
	.quad	0x3fe9cee063eaa650              # double 0.80650348200760824
	.quad	0x3fe4e5aa176a4d82              # double 0.65303520749368738
	.quad	0x3fd5756c99a8e3fe              # double 0.33529200559456729
	.quad	0x3fd22bdfea5ac3ce              # double 0.28392789732157275
	.quad	0x3fd5442d3963f59e              # double 0.33228617291009666
	.quad	0x3fd47001153aa5ae              # double 0.31933619568971039
	.quad	0x3fdf22f34834e48a              # double 0.48650819827486969
	.quad	0x3fdd111c2e82af70              # double 0.45416931669273364
	.quad	0x3fdd5e853907a32a              # double 0.45889406747169181
	.quad	0x3fd94619208690a4              # double 0.39490345169384455
	.quad	0x3fe0abfb6590a25e              # double 0.52099389874372171
	.quad	0x3fead103da49b661              # double 0.83801453241694557
	.quad	0x3fcbaca9e0bf0f18              # double 0.21620677446309666
	.quad	0x3fea2c2254f559b6              # double 0.8178874644607308
	.quad	0x3fe5838c67e1e624              # double 0.67230816163573026
	.quad	0x3fed3e40a04bbd70              # double 0.91384917552742984
	.quad	0x3fe9abd75b43c03a              # double 0.80222671342017482
	.quad	0x3fe218b5a2156c75              # double 0.56551629693002659
	.quad	0x3fe7ae9d6d5d62f1              # double 0.7400653015166353
	.quad	0x3fe55ce206b8df29              # double 0.6675882464687436
	.quad	0x3fe983e7536971bf              # double 0.79735151568780072
	.quad	0x3fd082ab40cd36c8              # double 0.25797540024073529
	.quad	0x3fdb35aac7149632              # double 0.42515057984778359
	.quad	0x3fe0ebe9f6272483              # double 0.52879808499086811
	.quad	0x3fc41eee2487bbf0              # double 0.15719391616536837
	.quad	0x3fe6d90092181ad8              # double 0.71398952993407772
	.quad	0x3fdc432237cf7298              # double 0.44159751367787115
	.quad	0x3fec5d82661929c3              # double 0.88641471806595751
	.quad	0x3fe098e9ddfe327e              # double 0.51866620405196762
	.quad	0x3fdaba57da088886              # double 0.41762348453824705
	.quad	0x3f90dabade978d60              # double 0.01645938857644802
	.quad	0x3feec90953bc5377              # double 0.96204058031672345
	.quad	0x3fe1b21b9cc95269              # double 0.55299168226572448
	.quad	0x3fe9ab032f8f6633              # double 0.80212554253666324
	.quad	0x3fb6ec04f1df48e8              # double 0.089538868952590556
	.quad	0x3fdcf71b38f8ee16              # double 0.45258217395505207
	.quad	0x3fe5b522e353e164              # double 0.67836136245663825
	.quad	0x3fea1d8a17c7cd17              # double 0.81610588688491503
	.quad	0x3fe590012f401aed              # double 0.67382868984790678
	.quad	0x3fbf2d0be5094ad8              # double 0.12178110448557378
	.quad	0x3fe917df16cab03f              # double 0.78416399432672523
	.quad	0x3fe5bcf21f87fd0e              # double 0.67931467207373131
	.quad	0x3fcf4bb5a0440968              # double 0.24449796987034778
	.quad	0x3fc16c45ae429274              # double 0.13611670502463691
	.quad	0x3fba3a5e2e2106f0              # double 0.10245312334248147
	.quad	0x3fd35d6c0f6e0d94              # double 0.30257703310800221
	.quad	0x3fe476d3e98ecf13              # double 0.63950534455077201
	.quad	0x3fb81869390ca200              # double 0.09412248270803758
	.quad	0x3fee239aea1b327e              # double 0.94184632991671413
	.quad	0x3fc5fc8d05a41460              # double 0.17176974082409213
	.quad	0x3fe50994bac14e88              # double 0.65741955257040363
	.quad	0x3fc7884e34e646a8              # double 0.18384721358284151
	.quad	0x3fd4c7a6aecbeccc              # double 0.32468573636988363
	.quad	0x3fc97cdd5dc6b558              # double 0.19912306860843887
	.quad	0x3fed9a2252792566              # double 0.92506519420673494
	.quad	0x3fd178263d98b4bc              # double 0.27295833602222408
	.quad	0x3fdf34f24dc98a10              # double 0.48760659786617655
	.quad	0x3fd1cb395048cd3e              # double 0.2780288013484159
	.quad	0x3fc095cee708b648              # double 0.12957178383787693
	.quad	0x3fd93aeaf6431f74              # double 0.39422105835955468
	.quad	0x3fe5656b4ab9adfb              # double 0.66863026232516576
	.quad	0x3fb55978eada4998              # double 0.083396489464837464
	.quad	0x3fce2aa9b5364b08              # double 0.23567696903463564
	.quad	0x3feee88bdad18ed0              # double 0.96588700044636688
	.quad	0x3fd9dcdc63ce3ab6              # double 0.4041052794135952
	.quad	0x3fe385ea582f8cfd              # double 0.6100970957162698
	.quad	0x3fea8bb2c2e89e60              # double 0.82955301349734256
	.quad	0x3fe54e2edaf8eea6              # double 0.66579382675214016
	.quad	0x3fd4e62a3f8e5e7a              # double 0.32654815870908005
	.quad	0x3fe25e159246eea1              # double 0.57398489541761333
	.quad	0x3fe349290722257d              # double 0.60268069642295041
	.quad	0x3fbeab724de0deb8              # double 0.11980356599166953
	.quad	0x3fe605f48b3aca2a              # double 0.6882269591645287
	.quad	0x3fe8617dcf866f45              # double 0.76190081150296207
	.quad	0x3fd864be6b8dcd58              # double 0.3811489153224179
	.quad	0x3fcc53c74902a488              # double 0.22130671563107662
	.quad	0x3fe70ebb83c60fee              # double 0.72054839837119089
	.quad	0x3fe20e02d48c3720              # double 0.56421033395028886
	.quad	0x3feb62fcbfd2796c              # double 0.8558334108854928
	.quad	0x3feec83c8a1e3376              # double 0.96194292999426412
	.quad	0x3fef970fafa247db              # double 0.98719009688852155
	.quad	0x3fd047ec8378cfa6              # double 0.25438988532118356
	.quad	0x3fb05dc9a1f957f0              # double 0.063931085628922579
	.quad	0x3fce450c0aee8da0              # double 0.23648214849263827
	.quad	0x3fca3ccee7c5b778              # double 0.20498071972854937
	.quad	0x3fe3cb291744932d              # double 0.61854986710077287
	.quad	0x3fda1619e5ea7f0c              # double 0.40759894802793961
	.quad	0x3fe7e0c380c72723              # double 0.74618697311345661
	.quad	0x3fdd223a01868dfa              # double 0.45521402501091723
	.quad	0x3fedf44f67f6e80e              # double 0.93607302003442938
	.quad	0x3fe493cb713967f9              # double 0.64304134477720176
	.quad	0x3fd6c2351ccd6cf0              # double 0.35560348332155822
	.quad	0x3fcfa1588ea59368              # double 0.2471113869206889
	.quad	0x3f8c8b30554e8140              # double 0.013937356570580151
	.quad	0x3fd345f68c880e26              # double 0.30114520763183561
	.quad	0x3fe1300866031190              # double 0.53711337970939788
	.quad	0x3fed4a591e9af68d              # double 0.91532569863893942
	.quad	0x3fdcc9e2862ad994              # double 0.44982207395823903
	.quad	0x3fef066d461ea961              # double 0.96953452773349735
	.quad	0x3fea376f62721667              # double 0.81926697948138105
	.quad	0x3fca630884bb2644              # double 0.20614725571640424
	.quad	0x3fd32ca4e034b078              # double 0.29959985632991204
	.quad	0x3fea518c172df0bf              # double 0.82245449568974738
	.quad	0x3fd999dc5183a12c              # double 0.4000159069096465
	.quad	0x3fec14c7832bf668              # double 0.87753654117086644
	.quad	0x3fe10d6903b7539c              # double 0.53288698888592334
	.quad	0x3fca3fc421bc86d8              # double 0.20507098815237756
	.quad	0x3fe57c4c52529619              # double 0.67142311171182023
	.quad	0x3fceb4821ecf20a8              # double 0.23988367561674306
	.quad	0x3fdf9ceff907deae              # double 0.49395369834335667
	.quad	0x3fdb386699907536              # double 0.42531743046295689
	.quad	0x3faf3104e5032920              # double 0.060920861201866794
	.quad	0x3fd4d2b5677c0c60              # double 0.3253606329528278
	.quad	0x3fece0f54532833c              # double 0.90246070399380284
	.quad	0x3fa9f84b593ffe60              # double 0.050722460407993664
	.quad	0x3fd9efc77905523e              # double 0.40525996035038137
	.quad	0x3fb9eabe2f4fcbe0              # double 0.10123814253874697
	.quad	0x3fe87e831eac0825              # double 0.76544338217377528
	.quad	0x3fab81d5eac2e660              # double 0.053724942119015351
	.quad	0x3fc222f2a2ff489c              # double 0.14169152220580805
	.quad	0x3fc88d5e99d9b7e8              # double 0.19181425583104716
	.quad	0x3fe6e7162c25052d              # double 0.71570881483072457
	.quad	0x3fe3aa5d5d54db34              # double 0.61454647282412234
	.quad	0x3fd2e2595dc7af6a              # double 0.29506525190549004
	.quad	0x3fe59b69c313c1fc              # double 0.67522132969867199
	.quad	0x3fe9556aadc22f44              # double 0.79167684495175949
	.quad	0x3fe5a5671e99fba7              # double 0.6764407727895233
	.quad	0x3fca87a768338c70              # double 0.20726482952077019
	.quad	0x3fd84081d451b30a              # double 0.3789372037343105
	.quad	0x3fe6b853eaae8318              # double 0.71000095211283831
	.quad	0x3fd194d0deb3c928              # double 0.2747080015971215
	.quad	0x3feace27fa252997              # double 0.83766554695584972
	.quad	0x3fd7210cc1e0e168              # double 0.36139220174256659
	.quad	0x3fd03b86d07fd122              # double 0.25363321648844039
	.quad	0x3fe7e9e3d9c0cbf4              # double 0.74730103044419005
	.quad	0x3fe2fca780b27635              # double 0.59334159027247912
	.quad	0x3fdd84cb5c377ee2              # double 0.46123012548012643
	.quad	0x3fdfd39d3675e8c4              # double 0.49729090040603929
	.quad	0x3fb8e78e22b10048              # double 0.097283252210219051
	.quad	0x3fea38bd29b0a000              # double 0.81942613737646752
	.quad	0x3feb1a1ecddc54a5              # double 0.8469385166851181
	.quad	0x3fee2a41e982199f              # double 0.94265838248320566
	.quad	0x3fe0aa7b1ec98a79              # double 0.52081066144121657
	.quad	0x3fcc8f6293cb8d84              # double 0.22312576500472059
	.quad	0x3fa6cba11d078030              # double 0.04452231864320344
	.quad	0x3fe11115856a8ff7              # double 0.53333545739997035
	.quad	0x3fda2096816b2a62              # double 0.40823900831734339
	.quad	0x3fd7d71a1340330c              # double 0.37250377540549162
	.quad	0x3fc5d1e9bf6ebdcc              # double 0.17046853873533363
	.quad	0x3fe4199c30a25d97              # double 0.62812623499751197
	.quad	0x3fe39e6d5cb310d9              # double 0.61308925729147312
	.quad	0x3fc0fa94729e3280              # double 0.13264709087924942
	.quad	0x3fe7bf23760ba787              # double 0.74208233886496167
	.quad	0x3fdf1e120b1b201a              # double 0.48621035656515377
	.quad	0x3fd9e0c7f7cb9d22              # double 0.40434455107465983
	.quad	0x3fbac24a2e778ef0              # double 0.10452712664078567
	.quad	0x3fea1f8682bc0ef2              # double 0.81634831937887342
	.quad	0x3fddc0f8a8bd6aa6              # double 0.46490303495890328
	.quad	0x3fb58345a7affaf0              # double 0.084034303130447574
	.quad	0x3fd6f401622d47d6              # double 0.35864290797792131
	.quad	0x3fccb13a5ef40ad4              # double 0.22415856968299031
	.quad	0x3fbbf91e227a0790              # double 0.10926998464313287
	.quad	0x3fdfe96af039c446              # double 0.49862168750320668
	.quad	0x3feb91bee23720fe              # double 0.86154121573147768
	.quad	0x3fe3f367e140a2ce              # double 0.62346261973024197
	.quad	0x3fc71d82aa97e3f4              # double 0.18058808641197255
	.quad	0x3fe3e4519397f7d9              # double 0.62162092997436524
	.quad	0x3fe8e198a45331d6              # double 0.77753860563967225
	.quad	0x3fd5e9556cf2e042              # double 0.34236655845188946
	.quad	0x3fe5ebb0b59a5595              # double 0.68502078503904562
	.quad	0x3fe25d99a5b42806              # double 0.57392580379496461
	.quad	0x3fb7f51075324ac8              # double 0.093583134281554625
	.quad	0x3fdcdeb645a6f8d0              # double 0.45109326173759445
	.quad	0x3fe6e2308a3bd2e0              # double 0.71511103628889927
	.quad	0x3fe5c23d1dd83923              # double 0.67996078328159049
	.quad	0x3fb0a076daf8b5e8              # double 0.064948490581364759
	.quad	0x3f7ea63ace950000              # double 0.0074827477595249547
	.quad	0x3fda7d9052f738b6              # double 0.41391380407447842
	.quad	0x3fdb17e5256c33f8              # double 0.42333344130093975
	.quad	0x3fb70fc0370526a8              # double 0.090084088738104584
	.quad	0x3fe2c2a1dd5b28fc              # double 0.58625882371532567
	.quad	0x3fd592458a460784              # double 0.33705271247173862
	.quad	0x3fdb96e5402cb552              # double 0.43108493105940682
	.quad	0x3fee407392217a92              # double 0.94536760846297541
	.quad	0x3fc2ed3a3a44b7d4              # double 0.14786460728777107
	.quad	0x3fd1aac24be4ed12              # double 0.27604730044886694
	.quad	0x3fcb6f8846e04b5c              # double 0.2143411966395331
	.quad	0x3fef527c68b8a882              # double 0.97881908849127819
	.quad	0x3fc255badbf263e8              # double 0.14324126948920868
	.quad	0x3fd7b671ada99f98              # double 0.37051050147283027
	.quad	0x3fe863d869711d68              # double 0.76218815416443153
	.quad	0x3fed8bac455d215c              # double 0.92329991862883842
	.quad	0x3fe0af3a9f7cab6c              # double 0.52139025831034536
	.quad	0x3fccee75a6b9ba28              # double 0.22602720871823689
	.quad	0x3feae1052a6f1f6a              # double 0.83996828353791142
	.quad	0x3fefda2211fcdece              # double 0.99537757409322025
	.quad	0x3fe1a2101005762d              # double 0.55103304986159218
	.quad	0x3fe4dfa55a209976              # double 0.65230052569385921
	.quad	0x3fcb74b10546ab28              # double 0.21449864156360232
	.quad	0x3fdd460423b7e582              # double 0.45739844787711814
	.quad	0x3fdb5733ec2271a0              # double 0.42719743785871778
	.quad	0x3fde41c0ae31e29e              # double 0.47276322375504687
	.quad	0x3fe220449b9b2d2d              # double 0.56643896476581335
	.quad	0x3fe39f3f092b1990              # double 0.61318923750586585
	.quad	0x3fb4d0272e8e2c50              # double 0.081301163545661525
	.quad	0x3fe3dced35706526              # double 0.62071857869446911
	.quad	0x3feae489ea614353              # double 0.84039779450732011
	.quad	0x3fd7b5223f5b03bc              # double 0.37043052851737079
	.quad	0x3fdf269b33395424              # double 0.48673133852327255
	.quad	0x3fe888e282571619              # double 0.76670957047525967
	.quad	0x3fdf5356292d8628              # double 0.48946146031639381
	.quad	0x3fa53441e7f70f70              # double 0.04141431767086956
	.quad	0x3fee99a2c610d5ca              # double 0.95625437435836003
	.quad	0x3fc7797443945db8              # double 0.18339398669989548
	.quad	0x3fec351122d7533e              # double 0.8814778976908213
	.quad	0x3fdb85ee9f6257fe              # double 0.4300495678411379
	.quad	0x3fba279cf020b7e0              # double 0.10216694700713402
	.quad	0x3feda9a10a16d669              # double 0.92695667238758717
	.quad	0x3f9bfa5f50732600              # double 0.027322282109514262
	.quad	0x3fd4e2bec2176cfe              # double 0.32633942560433116
	.quad	0x3fd3c6985d5f557a              # double 0.30899628752134556
	.quad	0x3fb99ac496f83298              # double 0.10001782117633196
	.quad	0x3f9585c02aacc000              # double 0.021018030743277905
	.quad	0x3fdfa059a3b3d86c              # double 0.49416199671339345
	.quad	0x3fee541e28d3f079              # double 0.94776828741261376
	.quad	0x3fce892660d063fc              # double 0.23856048323867174
	.quad	0x3fea4cc0b6c62deb              # double 0.82186923692773683
	.quad	0x3fec5f66f86619bd              # double 0.88664577975651293
	.quad	0x3fe037d762963350              # double 0.50681657080859033
	.quad	0x3fe7ee27b3d46450              # double 0.7478216659830057
	.quad	0x3fefaa3fe731551b              # double 0.98953242449593703
	.quad	0x3fb40bb2ed2a5b20              # double 0.078303511525842584
	.quad	0x3fe8c39215e89d30              # double 0.77387336997063549
	.quad	0x3fe4b61b4180a5a7              # double 0.64722979348623688
	.quad	0x3fe9c5d9025640a2              # double 0.80540132957868971
	.quad	0x3fc72d4fd80265e8              # double 0.18107030913669964
	.quad	0x3fc1e9fb00911844              # double 0.13995301749872813
	.quad	0x3fc702d7868d41f8              # double 0.17977422780906216
	.quad	0x3fee4c7a36556db0              # double 0.94683561908771274
	.quad	0x3fce3fb4120c7810              # double 0.23631907349857828
	.quad	0x3fe0596301995c6f              # double 0.51091146766965589
	.quad	0x3fcfdb428255515c              # double 0.24887877811364489
	.quad	0x3fe34fd583fbe0af              # double 0.60349536684136307
	.quad	0x3fd6d247d8e9a114              # double 0.35658451254723045
	.quad	0x3fad35ee3ce55e80              # double 0.05705208295210884
	.quad	0x3fca29c383b226ec              # double 0.20439952784027271
	.quad	0x3f9a18336908df40              # double 0.025482943807417557
	.quad	0x3f7f3a3636e9a780              # double 0.0076238744501128108
	.quad	0x3fc53d191b156684              # double 0.16592706510964572
	.quad	0x3fe0a7a794a2afe1              # double 0.52046565084810592
	.quad	0x3fdd48cfeb7f5c60              # double 0.45756910322001509
	.quad	0x3fe5934ae7b215d6              # double 0.67423005345397757
	.quad	0x3fe581fa51233baf              # double 0.6721164307326627
	.quad	0x3feb549e87fb48d3              # double 0.85407949980642639
	.quad	0x3fd7c2cf192f5c96              # double 0.37126519641373912
	.quad	0x3fd492f47296501e              # double 0.32146941366340964
	.quad	0x3fde450d3591baae              # double 0.47296457511303458
	.quad	0x3fd6cccad07b1a26              # double 0.35624952659091702
	.quad	0x3fe7e68af4a3bc90              # double 0.7468924310795888
	.quad	0x3fd454dcff2dc6fe              # double 0.31767964286619577
	.quad	0x3fd4f833f14555e4              # double 0.32764910279851578
	.quad	0x3feac0a7ccd9939e              # double 0.8360175133681087
	.quad	0x3feb8a46d465606b              # double 0.86062947734445794
	.quad	0x3feac5fc36e1753f              # double 0.83666811674962804
	.quad	0x3fe456db590e8d2f              # double 0.63560264009394085
	.quad	0x3fb6391b619b0fb8              # double 0.086808883027571393
	.quad	0x3fddc825e842d152              # double 0.46534106904734529
	.quad	0x3fe0656e7b19f9e7              # double 0.51238178294425729
	.quad	0x3fe01a09583ac5d6              # double 0.50317828399982534
	.quad	0x3fe875b6631e812c              # double 0.76436919554911275
	.quad	0x3fe06edb93fb293e              # double 0.51353243734892096
	.quad	0x3fee8f74d6c62c15              # double 0.95501176784580599
	.quad	0x3fec8c72d26fbe83              # double 0.89214459515456246
	.quad	0x3fec90d0803cfa82              # double 0.89267754599116267
	.quad	0x3fe8e3613e995609              # double 0.77775633074151174
	.quad	0x3fef6b06891130d7              # double 0.98181463976791405
	.quad	0x3fed37887ca8012d              # double 0.91302894923140843
	.quad	0x3fbbd61924d48350              # double 0.10873562955067695
	.quad	0x3feeb48dd35217da              # double 0.95954028390473955
	.quad	0x3fe9c20e1cc5fbdc              # double 0.80493836993980094
	.quad	0x3fef61a716d09166              # double 0.98067049461364486
	.quad	0x3fe9138fa4b864df              # double 0.78363783046657065
	.quad	0x3fdad6956607b170              # double 0.41934714282867613
	.quad	0x3fd6f438c0ef32ec              # double 0.35865610924956459
	.quad	0x3fee8625ac91fa2d              # double 0.95387538628694346
	.quad	0x3fe89881ab0bcff3              # double 0.76861651809167453
	.quad	0x3fed08355424686d              # double 0.90725199159647973
	.quad	0x3fdd7bf46e4f4e8a              # double 0.46069060108605042
	.quad	0x3fec8d68ca05c75b              # double 0.89226188142331908
	.quad	0x3fedee9039fa8cca              # double 0.93537150691954563
	.quad	0x3fce44964587a4bc              # double 0.23646810908329552
	.quad	0x3fe189464140e7a4              # double 0.54800713295775383
	.quad	0x3fe7b509643c1759              # double 0.74084920479865979
	.quad	0x3fd31909e910d72c              # double 0.29840324173288724
	.quad	0x3fc8de79d46af7f0              # double 0.19428942558255313
	.quad	0x3feeb2aabfefa36d              # double 0.95930993545071674
	.quad	0x3fd90d1777862230              # double 0.39142405197393071
	.quad	0x3fb6e65177942e90              # double 0.08945187730221904
	.quad	0x3fe8ab4e061c1d60              # double 0.77091122811627244
	.quad	0x3fc88e03b47026a8              # double 0.19183393774465185
	.quad	0x3fd1207cd0d6b29e              # double 0.26760788339996988
	.quad	0x3fe842f2b6b819af              # double 0.75817237555820849
	.quad	0x3fd47cd450269014              # double 0.32011897875986617
	.quad	0x3fed6338ca437436              # double 0.91836204056347159
	.quad	0x3fedd0f5acbc9dd0              # double 0.93175777185109077
	.quad	0x3fc1208a615a9fa0              # double 0.13380555871594613
	.quad	0x3fe971d3cf12fc75              # double 0.79514494365856925
	.quad	0x3fe2c0ebe43fb14c              # double 0.58604998187869617
	.quad	0x3feec96c82f407e4              # double 0.96208787514501326
	.quad	0x3fd4821112dc8300              # double 0.32043864099436803
	.quad	0x3fa6f187580425a0              # double 0.044811467641987734
	.quad	0x3fe582a6979ea47e              # double 0.6721985780069557
	.quad	0x3fa5c75b95737770              # double 0.042536603921447091
	.quad	0x3fee35f957fe3963              # double 0.94408862291474482
	.quad	0x3fe5e7df6bd2ffca              # double 0.68455477771203133
	.quad	0x3fe119668af1231e              # double 0.53435065400217119
	.quad	0x3fe136bda07e3837              # double 0.53793221803949265
	.quad	0x3fee50beb61b9c68              # double 0.94735656326237194
	.quad	0x3fda0c8e26dff03a              # double 0.40701631351817336
	.quad	0x3fad168033cd8030              # double 0.056812292407585452
	.quad	0x3fed46b57fdff061              # double 0.91488146758593925
	.quad	0x3fd9fd5e102a6330              # double 0.40608932093305139
	.quad	0x3fef7c470f3151f9              # double 0.98392060248676138
	.quad	0x3fbefc6f83ef23e0              # double 0.12103936167763107
	.quad	0x3fde78c8b7229584              # double 0.47612207302366749
	.quad	0x3fe253474fcb246f              # double 0.57266584000275411
	.quad	0x3fe06f1825543d17              # double 0.51356131831008411
	.quad	0x3fd791a6b50464e6              # double 0.36826484372575263
	.quad	0x3fedc1868f415861              # double 0.92987373332540468
	.quad	0x3feee42d701ad342              # double 0.96535369773355506
	.quad	0x3fd179e58858faee              # double 0.27306497874444247
	.quad	0x3fee874457ae26e3              # double 0.95401208043150765
	.quad	0x3feb22ba6c31635e              # double 0.84798928386144801
	.quad	0x3fe12269f9602b95              # double 0.53545092302498409
	.quad	0x3fd68b7614ed5a74              # double 0.35226203960102187
	.quad	0x3fe6e32630da21c9              # double 0.71522817174359787
	.quad	0x3fddc038a3216668              # double 0.46485725336751793
	.quad	0x3fefce5a849781e8              # double 0.99393964669075973
	.quad	0x3fc64ebd798c8c40              # double 0.17427795825014591
	.quad	0x3fec3c4ab06cc095              # double 0.88235983331653023
	.quad	0x3feffc598e509422              # double 0.99955442233897807
	.quad	0x3fda8abde63f8b0e              # double 0.41471812710931111
	.quad	0x3fde5f3301528230              # double 0.47456050042277109
	.quad	0x3fb8a25545aa2488              # double 0.096227006442989205
	.quad	0x3fc0d27faebe4918              # double 0.13142391235721429
	.quad	0x3f9638e198bb6cc0              # double 0.021701359698323541
	.quad	0x3fe28f903cb27042              # double 0.58002483229530122
	.quad	0x3fbfd3d00c4456b8              # double 0.12432575511442223
	.quad	0x3fe6de626c701601              # double 0.71464654139771266
	.quad	0x3fd0186589a4df96              # double 0.25148905221748785
	.quad	0x3fe13c32466d1b66              # double 0.53859819178692869
	.quad	0x3fe3119c05b8c11f              # double 0.59589959256667047
	.quad	0x3fe5a18556080b78              # double 0.67596689990055747
	.quad	0x3fe438498d9be9ee              # double 0.63187101037993698
	.quad	0x3feffdbccde11560              # double 0.99972381792819575
	.quad	0x3fbd5aad9dc8e828              # double 0.11466488935630592
	.quad	0x3fdd12d869802ac6              # double 0.45427522948072541
	.quad	0x3fe7cb2c7c6d0843              # double 0.74355148603377363
	.quad	0x3fed4c28e2fa6c3b              # double 0.91554684001619735
	.quad	0x3fe778e0430cbcb5              # double 0.73350537391333737
	.quad	0x3fd34531f735eed6              # double 0.30109833852450885
	.quad	0x3fc19ca80975a0ec              # double 0.1375932737530613
	.quad	0x3feff3b68c86e04c              # double 0.99850013205196708
	.quad	0x3fb84c7565523440              # double 0.094916665302847925
	.quad	0x3fb9d4e712aa8a40              # double 0.10090488630024996
	.quad	0x3fc2ed13137082d4              # double 0.14785994004434733
	.quad	0x3fd2fd1600e2fe00              # double 0.296697140565783
	.quad	0x3fe7e5bfbc643048              # double 0.74679552836597285
	.quad	0x3fdb1f02fbee6d00              # double 0.42376780131026237
	.quad	0x3fdb82e6fd2413c0              # double 0.42986464234155264
	.quad	0x3f621db4b76f4a00              # double 0.002211430513378021
	.quad	0x3f746556c829b880              # double 0.0049794568936772921
	.quad	0x3fb757fc04511380              # double 0.091186286023981821
	.quad	0x3feb992ba1e85e18              # double 0.86244756338686823
	.quad	0x3fc75513b3a29a08              # double 0.18228384276626763
	.quad	0x3fd77c9d32aff22e              # double 0.36698083829813555
	.quad	0x3fe9906f71083f6c              # double 0.79888126446347262
	.quad	0x3fe2e972e3d3b1e8              # double 0.59099716660926749
	.quad	0x3fcdd9bbe30d95c4              # double 0.23320721232009423
	.quad	0x3fb724b1adcb83f0              # double 0.090403656893172756
	.quad	0x3fc2cc22ed878280              # double 0.14685474966156065
	.quad	0x3fe162309cac04aa              # double 0.5432360706328343
	.quad	0x3fd94c1505626a7a              # double 0.39526868367980905
	.quad	0x3fd580f00e8491ec              # double 0.3359947339797873
	.quad	0x3fe15473ccaada9b              # double 0.54155912374592974
	.quad	0x3fe0e5edb226c571              # double 0.52806744380192872
	.quad	0x3fe7921b765b7a86              # double 0.73658536068599356
	.quad	0x3fdd93d702b0278e              # double 0.46214843046674836
	.quad	0x3feec10539175f7e              # double 0.9610620608391256
	.quad	0x3fd9874c3dae7fae              # double 0.39888292335126152
	.quad	0x3fe642147988bd29              # double 0.69556640374313361
	.quad	0x3fd231acd4ad0238              # double 0.28428192872164315
	.quad	0x3feaa19a26adeab4              # double 0.83222682528079028
	.quad	0x3fe7fa294deacd19              # double 0.74928727358056613
	.quad	0x3fd679763a56b758              # double 0.35116344163076496
	.quad	0x3f7242568fe0a580              # double 0.0044577962235420321
	.quad	0x3fc110d514564eb0              # double 0.13332618229889226
	.quad	0x3faab68680ba66b0              # double 0.052173808301814062
	.quad	0x3fc0a5be8d769b40              # double 0.13005811602962503
	.quad	0x3fc9eafd2af388cc              # double 0.20248379323226684
	.quad	0x3febd0af593b1bbf              # double 0.86922423770817392
	.quad	0x3fe4b95c150d4aa8              # double 0.64762691604331213
	.quad	0x3fe59030f0fda8b3              # double 0.67385146206404156
	.quad	0x3fa70a664838d940              # double 0.045001217189950982
	.quad	0x3fe7eb3f23c8c1da              # double 0.74746663083174814
	.quad	0x3fe29d28fb9b1312              # double 0.58168458120107602
	.quad	0x3fe91b83c218ee02              # double 0.78460872563977113
	.quad	0x3fe42e19e0e7dd01              # double 0.63062757422349602
	.quad	0x3fdcdb1e86be3c3e              # double 0.45087397726542011
	.quad	0x3fdc3c4311a9b8dc              # double 0.441178099869729
	.quad	0x3fd76e8e2a27acf4              # double 0.36612276188561954
	.quad	0x3fd74dd7c189a5f0              # double 0.36412614727177495
	.quad	0x3fdb99945a3442b8              # double 0.43124874886511178
	.quad	0x3feaf7eda80154e1              # double 0.84276469052806757
	.quad	0x3fee1dba5d78678e              # double 0.94112890487598277
	.quad	0x3fbb1f13246508f8              # double 0.10594291342298223
	.quad	0x3fda7bf117379bac              # double 0.41381480471903376
	.quad	0x3fed688c9aca2be2              # double 0.91901235802049208
	.quad	0x3fcf29766bb270b8              # double 0.24345283754963076
	.quad	0x3fe0639471b8d5be              # double 0.51215574466066704
	.quad	0x3fc1f8543464d72c              # double 0.14039089735313703
	.quad	0x3fbacd1460f183b0              # double 0.10469176642210587
	.quad	0x3fe34fcca16c1edc              # double 0.60349113014032296
	.quad	0x3fd70726539799c8              # double 0.35981138385104972
	.quad	0x3fbf5afad44ad4c0              # double 0.12248199160497375
	.quad	0x3fb19364c0941300              # double 0.068655297294821338
	.quad	0x3fcd9b899383a8a4              # double 0.23130912497373857
	.quad	0x3fd0dd094447725c              # double 0.26349097888831863
	.quad	0x3f7ef7a81dfbea80              # double 0.0075604025912477945
	.quad	0x3fd4482b347c2944              # double 0.31690483212937104
	.quad	0x3fe24d0ad18f64cd              # double 0.57190457277024509
	.quad	0x3fcdd7d616cd8cc8              # double 0.23314930070328033
	.quad	0x3fe802458dea3f2d              # double 0.7502773067262517
	.quad	0x3fedb91d0eba3191              # double 0.92884686352185686
	.quad	0x3fd02158597a0c8a              # double 0.25203522432293168
	.quad	0x3fd3a70743dc41bc              # double 0.30706960322370569
	.quad	0x3fc69b3495e1c990              # double 0.17661149328666825
	.quad	0x3feda2aa8c625fea              # double 0.92610671442798531
	.quad	0x3fef113d6c408c3d              # double 0.9708544840144736
	.quad	0x3fda32b8f6895dd6              # double 0.40934585643614463
	.quad	0x3fe844fd146c6bff              # double 0.75842145909280123
	.quad	0x3fe19a05b74716a9              # double 0.55005155369209036
	.quad	0x3fe05a2ab3fe5026              # double 0.51100669054949743
	.quad	0x3fee7e95717199ef              # double 0.95295211941703239
	.quad	0x3fe3838d83b719e1              # double 0.60980869031555696
	.quad	0x3f9f33c041d46680              # double 0.030470851915288311
	.quad	0x3fca9f0a72dc7b64              # double 0.20797854050121167
	.quad	0x3fcc75e9bb08563c              # double 0.22234841949891571
	.quad	0x3fead821fa6bbaff              # double 0.83888338957135022
	.quad	0x3fefd896b0407b2b              # double 0.99518904136843866
	.quad	0x3fd3696254730cf8              # double 0.30330713507665008
	.quad	0x3fe16c382d2b44dc              # double 0.54446038076471437
	.quad	0x3fe835969c9a6c74              # double 0.75654154383245364
	.quad	0x3fa332dd21e718d0              # double 0.037497434986606515
	.quad	0x3fe9790f53ca34f1              # double 0.79602781644066856
	.quad	0x3fb85b9116144470              # double 0.095147197618887124
	.quad	0x3fed3c00a3997bf6              # double 0.91357452347790402
	.quad	0x3fe65471ede2e8d2              # double 0.69780823194676089
	.quad	0x3fd6959d896ce5ce              # double 0.3528817979855291
	.quad	0x3fdb36a58af76670              # double 0.42521036692560354
	.quad	0x3fc920cfe00290f4              # double 0.1963138431357333
	.quad	0x3fdb006241d7b99a              # double 0.4218984263415223
	.quad	0x3fe01562af668804              # double 0.50261053331291849
	.quad	0x3fe617cfc2b7ab13              # double 0.69040668516876946
	.quad	0x3fca2d3117c726a4              # double 0.20450414334327605
	.quad	0x3fde3a4390ea2c6c              # double 0.47230614806966886
	.quad	0x3fed0380950a5e9a              # double 0.90667752370332555
	.quad	0x3fedc5430ef114a9              # double 0.93032982748322468
	.quad	0x3fe04d1f27becf99              # double 0.50941427004589734
	.quad	0x3feab814d63ec07d              # double 0.83497087330580622
	.quad	0x3fdd1b6c1aa97ee6              # double 0.45479872325630166
	.quad	0x3fd47507c4dd0c7e              # double 0.31964296555469918
	.quad	0x3fe63cb25e037995              # double 0.69490927087808763
	.quad	0x3feb590446ea9ca6              # double 0.85461629725331956
	.quad	0x3f955f09f1603ea0              # double 0.020870356900614895
	.quad	0x3fe33223ca4493bc              # double 0.59987058167882124
	.quad	0x3fe1c55aecbdb0eb              # double 0.5553412078711778
	.quad	0x3fca981d8c838030              # double 0.20776719437617563
	.quad	0x3fd1a7315808226c              # double 0.27582963559010554
	.quad	0x3feb503f7cfcefc0              # double 0.85354589854932073
	.quad	0x3fe1da0b43feb49b              # double 0.55786669998419158
	.quad	0x3fe27c697c61749f              # double 0.57768701832869229
	.quad	0x3fe5cf0b341b05ac              # double 0.68152389695040005
	.quad	0x3fe5b1ac14ec9802              # double 0.67793850027806024
	.quad	0x3fd29a0f0b048fe2              # double 0.29065300060233146
	.quad	0x3fd188773df37b7e              # double 0.27395421075737392
	.quad	0x3fecab7b7a4285bc              # double 0.89593290213468135
	.quad	0x3fea576db784d697              # double 0.82317243426833187
	.quad	0x3fe440f260274817              # double 0.63292807369203075
	.quad	0x3fdf25d1d2e13ec8              # double 0.4866833266614603
	.quad	0x3fcb6d0000f9aff0              # double 0.21426391646980347
	.quad	0x3fdfd85704bf1d8c              # double 0.49757934058694597
	.quad	0x3fd4569766c1835c              # double 0.31778512034184359
	.quad	0x3fea262c84a6f1c3              # double 0.81715989979380088
	.quad	0x3fe648815805de0f              # double 0.69635073844887241
	.quad	0x3fe227b2cd86077c              # double 0.56734600201910679
	.quad	0x3fe6151b539e8516              # double 0.6900765069187027
	.quad	0x3fe93d7204770224              # double 0.78875065681501554
	.quad	0x3fe421a24bad9c45              # double 0.62910570889369721
	.quad	0x3fdc1ec6992b5334              # double 0.4393784042161315
	.quad	0x3fd970303e2c0840              # double 0.39747243949398481
	.quad	0x3fed9e1eb5174324              # double 0.92555175179777338
	.quad	0x3fe1ede153dc83c4              # double 0.56028810862709877
	.quad	0x3fe79002ead8bf04              # double 0.73632951611031716
	.quad	0x3fddfdfd3a241adc              # double 0.46862726857982095
	.quad	0x3fc0cd45e113d3b4              # double 0.13126443376645869
	.quad	0x3fb8ad93c84e0b60              # double 0.096398579027704212
	.quad	0x3fd167e8b89f39de              # double 0.27196710614671626
	.quad	0x3fccab3f2d4c41dc              # double 0.22397603713808578
	.quad	0x3fede905c6e7b209              # double 0.93469513748783684
	.quad	0x3fd0a274645f4880              # double 0.25991544534657152
	.quad	0x3fc38fb28c9e5154              # double 0.15282279840597346
	.quad	0x3fc36df3d11a0400              # double 0.15179298124351703
	.quad	0x3feb6777b9f1aa9b              # double 0.85638033215703346
	.quad	0x3fe568cb49f53a46              # double 0.66904224820047697
	.quad	0x3f3a508887cf2800              # double 4.0152867569231976E-4
	.quad	0x3fcc14ed88368b20              # double 0.21938866759327258
	.quad	0x3fd3f03f2aed2ec2              # double 0.31153849784889698
	.quad	0x3fc6a884cc3a5498              # double 0.17701778385222577
	.quad	0x3fce33c6ce9e2864              # double 0.23595509613761856
	.quad	0x3fec1beac9e3383a              # double 0.87840785437743496
	.quad	0x3fe6fdc470cbbed2              # double 0.71847745924420736
	.quad	0x3feba79a41dcd032              # double 0.86420929778842592
	.quad	0x3fea43ba7b9474ca              # double 0.82076763283444021
	.quad	0x3fbb1598638d94d0              # double 0.10579826765531952
	.quad	0x3fb5d32877136ca8              # double 0.085253266402491534
	.quad	0x3feed5387f45c383              # double 0.96352791650689117
	.quad	0x3fd5dfa2f3b8081e              # double 0.34177469063445354
	.quad	0x3fe9c4f18fb5a89b              # double 0.80529096668512368
	.quad	0x3fe6e965c5c8b6d3              # double 0.71599091176696061
	.quad	0x3fcf84a84270b580              # double 0.24623587841180594
	.quad	0x3fc74fa0d5523c38              # double 0.18211756149364233
	.quad	0x3fc8667bc050dff8              # double 0.19062754526544246
	.quad	0x3fc81c089800d4dc              # double 0.18835551664384453
	.quad	0x3fe522606d9800aa              # double 0.6604463711264732
	.quad	0x3fc7b4dbbf1ee918              # double 0.18520685989444341
	.quad	0x3f7af24d3bc67800              # double 0.0065787331517679348
	.quad	0x3fed706416c9e941              # double 0.91996960116311055
	.quad	0x3fef45e2e071b6e4              # double 0.9772810348201486
	.quad	0x3fe1ad63d6a763c9              # double 0.55241577076514503
	.quad	0x3fe4ca8a651f7671              # double 0.6497241950089131
	.quad	0x3fdafedbaa456a00              # double 0.42180530193368782
	.quad	0x3fd76c8bbc915754              # double 0.36600011267488708
	.quad	0x3fe5c9f8128636cd              # double 0.68090442293188291
	.quad	0x3fc2783dce4844bc              # double 0.14429447719934341
	.quad	0x3fef9f21a536285f              # double 0.98817522304421945
	.quad	0x3fe926b23a537995              # double 0.78597365752993886
	.quad	0x3fec6eac1d12de1b              # double 0.88850980452020012
	.quad	0x3feaa4728fe4744f              # double 0.83257415870651552
	.quad	0x3fc5eba63b8f9f64              # double 0.1712539473367044
	.quad	0x3fef6d688d9ca570              # double 0.98210551889967057
	.quad	0x3fcfabbf708c1b64              # double 0.24742882724259652
	.quad	0x3fe7f2329bae1aed              # double 0.74831514745969019
	.quad	0x3fef24987f2e5aaf              # double 0.97321724739125226
	.quad	0x3fe01ea248047b0b              # double 0.50373949113768057
	.quad	0x3fb0f12c8ef0dd58              # double 0.066180024049449115
	.quad	0x3fe1edd4d2e0f9f7              # double 0.56028214633243933
	.quad	0x3feb044ce9c634a4              # double 0.84427495631247895
	.quad	0x3fce1b2ce004ab58              # double 0.23520432413473702
	.quad	0x3fea16046144bfb7              # double 0.81518763540042627
	.quad	0x3fe9ec6f37ff2781              # double 0.81011162697653571
	.quad	0x3faf54bb509c94f0              # double 0.061193326559342398
	.quad	0x3fefc09d043e118a              # double 0.99226237133602635
	.quad	0x3fe35f93e5239f85              # double 0.60541720155468737
	.quad	0x3fd7b622cf3115d0              # double 0.37049169763153333
	.quad	0x3fe1266a69bc424e              # double 0.53593941356127472
	.quad	0x3feadd15113047a0              # double 0.83948758465907147
	.quad	0x3fd5c9480cbf9546              # double 0.34041024441679146
	.quad	0x3fd7d47791bf9ca8              # double 0.37234296067476658
	.quad	0x3fdb854afd198892              # double 0.43001055447360514
	.quad	0x3fb320aee4946e00              # double 0.074717455678573685
	.quad	0x3fe007cf264f7185              # double 0.50095326883779079
	.quad	0x3feb10c445048644              # double 0.84579671363844299
	.quad	0x3fdd08d30bdecf22              # double 0.45366359862531358
	.quad	0x3fcb127afd3e2404              # double 0.21150147786491413
	.quad	0x3fedaf46e81c3540              # double 0.9276461156274891
	.quad	0x3fe1debaa39b5361              # double 0.55843860582772831
	.quad	0x3fd05f8a102f8890              # double 0.25583125668175288
	.quad	0x3fc5ec3b4762a10c              # double 0.17127171502694016
	.quad	0x3fc8f65f500c9e68              # double 0.19501868637711373
	.quad	0x3fb89703a6371650              # double 0.096054294662360151
	.quad	0x3fec6e992effb9b5              # double 0.88850077800252925
	.quad	0x3fba1bc6f6169978              # double 0.10198634632124548
	.quad	0x3fe02d83234147ef              # double 0.50555569539778655
	.quad	0x3fae5a49320802a0              # double 0.059282576901755535
	.quad	0x3feffad2fd95e78a              # double 0.99936818626814383
	.quad	0x3fe1aea354901860              # double 0.55256811634241032
	.quad	0x3fe40edf1f98914d              # double 0.62681537791335418
	.quad	0x3fd73d099212d438              # double 0.36310042634005724
	.quad	0x3feb1fa8bb6b32df              # double 0.84761463742469434
	.quad	0x3fe46677ab5a9a39              # double 0.63750823466836615
	.quad	0x3fd2acfe826ea540              # double 0.29180872666855251
	.quad	0x3fe5d4948ac1395e              # double 0.68219973660033495
	.quad	0x3fb1aba9c2d461e0              # double 0.069025621476960008
	.quad	0x3fee7bda5fd61692              # double 0.95261877744697387
	.quad	0x3facb2358978c690              # double 0.056047127753470538
	.quad	0x3fddb27edf035406              # double 0.46401950625050892
	.quad	0x3fb2a0f167039888              # double 0.072768294954217549
	.quad	0x3fe7e80a7d9d108a              # double 0.7470753148450211
	.quad	0x3fe90ea3e7caf0c4              # double 0.78303714057940299
	.quad	0x3fe9a394c2e498bd              # double 0.80121839585333243
	.quad	0x3fc9fd35c3eac980              # double 0.20303985658899748
	.quad	0x3fe3a38bf93dac8b              # double 0.61371420554986977
	.quad	0x3fe6537088f06c96              # double 0.69768549676827507
	.quad	0x3fd4f3af837524fc              # double 0.32737338864951915
	.quad	0x3fe899e856b219b4              # double 0.76878754551653694
	.quad	0x3fe6b91d50865327              # double 0.71009698607904148
	.quad	0x3fc68233df7e9dc8              # double 0.17584846890279793
	.quad	0x3fd22056220d75c4              # double 0.28322366071173755
	.quad	0x3fc03eff4bec4804              # double 0.1269225235669752
	.quad	0x3f9e16f1d91df3c0              # double 0.029384402157564216
	.quad	0x3fad879005cc34d0              # double 0.057674885471081461
	.quad	0x3fee6177121c4936              # double 0.94939759766774645
	.quad	0x3fea275244bbc461              # double 0.8172999708605283
	.quad	0x3fd7f7acde89b120              # double 0.37449189884388723
	.quad	0x3fec7227249e93ee              # double 0.88893468048320101
	.quad	0x3fe002054335b186              # double 0.50024664999868729
	.quad	0x3fd3375f13a34b9e              # double 0.3002546016479587
	.quad	0x3fd9d0bc4521b1d6              # double 0.40336519957670924
	.quad	0x3fe93563b65dcd74              # double 0.78776727312508265
	.quad	0x3f9b36f012f541a0              # double 0.026576758534533007
	.quad	0x3fe09b9894422db5              # double 0.51899365383854124
	.quad	0x3faab161a31c7400              # double 0.052134562645939297
	.quad	0x3fd24f4c1790b3b4              # double 0.28608991910260362
	.quad	0x3fca2e693981da44              # double 0.20454135234804671
	.quad	0x3fe9d66dc3d676eb              # double 0.80742538690148302
	.quad	0x3fcb7b9b1438b2d0              # double 0.21470964896561506
	.quad	0x3fe8bae1b3a5d492              # double 0.77281270110565203
	.quad	0x3fe19a8ea029ff4f              # double 0.55011683733025929
	.quad	0x3fe2ed0ca4464705              # double 0.59143669209353844
	.quad	0x3fd099bec5738146              # double 0.25938386232703114
	.quad	0x3feab7f45cd5aa78              # double 0.83495538837207928
	.quad	0x3fdb2a3a4c59dc64              # double 0.42445237594751561
	.quad	0x3fdde285a4e4fb58              # double 0.46695080855345372
	.quad	0x3fcadfb16368e3bc              # double 0.20995156625738598
	.quad	0x3fdd0f0d208f2430              # double 0.45404365710834593
	.quad	0x3fe492661f0f8fa7              # double 0.64287096087035855
	.quad	0x3fe545384450b999              # double 0.66469968169058113
	.quad	0x3fdd86856002b9f4              # double 0.46133551002540618
	.quad	0x3fe8a359b6ea46ac              # double 0.76994024015057993
	.quad	0x3fb1562bf61e6180              # double 0.067721126163069911
	.quad	0x3fdef9355093486c              # double 0.48396046513256041
	.quad	0x3feb645c25f7a5f9              # double 0.85600097098830397
	.quad	0x3fdf82a3d489c98c              # double 0.49234863048254662
	.quad	0x3fe99d3a83eddd4e              # double 0.80044294135488214
	.quad	0x3fc8ac875a85ff3c              # double 0.19276515884484435
	.quad	0x3fe2779d4c8f9aac              # double 0.57710137322722721
	.quad	0x3fe0953f757cfb10              # double 0.51821873614230363
	.quad	0x3fe8244cab511504              # double 0.75443108997629382
	.quad	0x3f944fa1260b95c0              # double 0.019835012385461814
	.quad	0x3fbfa64cf5f98b60              # double 0.12363129620784497
	.quad	0x3fe8b9e326e16869              # double 0.77269132226798576
	.quad	0x3fb182b93f6bfc98              # double 0.068400934203952324
	.quad	0x3fdd7bac6b724e4a              # double 0.46067343228171309
	.quad	0x3fe8f1d3786dec0a              # double 0.77951978227008678
	.quad	0x3fec417622d0409e              # double 0.88299090194233876
	.quad	0x3fed072100e741a4              # double 0.90712022949633253
	.quad	0x3fe7ce8bdc5c57b2              # double 0.74396317519380362
	.quad	0x3fefae5b0c32529b              # double 0.99003364927428394
	.quad	0x3fc0f76bdaa69f30              # double 0.1325506990081009
	.quad	0x3fee763c50aecd34              # double 0.95193305738795297
	.quad	0x3fe036f9beed865e              # double 0.50671088495819183
	.quad	0x3fd58105e5a50844              # double 0.33599994112239906
	.quad	0x3fe21cfdc4b13b60              # double 0.56603897491900668
	.quad	0x3fedb5c5b998f9eb              # double 0.92843900918506728
	.quad	0x3fe13feede2eeb03              # double 0.53905433077974896
	.quad	0x3feaf4a6c533256c              # double 0.84236467853149354
	.quad	0x3fd472357cf522ba              # double 0.31947076037298994
	.quad	0x3fe2050b15fd35e5              # double 0.56311563772913742
	.quad	0x3fe5d6fffbfb8ac1              # double 0.68249510970448324
	.quad	0x3fe0dff6dee69012              # double 0.52733939681320607
	.quad	0x3feba4c21d7a84b9              # double 0.86386209256683977
	.quad	0x3fcfd3f17b0c556c              # double 0.24865549572192991
	.quad	0x3fd8022d0bd9a80a              # double 0.37513281018493727
	.quad	0x3fe0c971e883305c              # double 0.52459044849957648
	.quad	0x3fe6b5cdccb92487              # double 0.70969285950663241
	.quad	0x3fecccc2701d6039              # double 0.8999950589886857
	.quad	0x3fdd7203c1228d48              # double 0.46008390293919321
	.quad	0x3fe95da64a0752c7              # double 0.79268183191978714
	.quad	0x3fd4555feaa94a6c              # double 0.31771085659162313
	.quad	0x3fde95a6cb54679a              # double 0.47788400513092599
	.quad	0x3fca93f67f653e24              # double 0.20764046879274745
	.quad	0x3feb58834835e9d5              # double 0.85455478767044701
	.quad	0x3fd5217841528864              # double 0.33016783122196203
	.quad	0x3fec1440d49d27b3              # double 0.8774723198523503
	.quad	0x3fde822cbf0f57d8              # double 0.47669523866841024
	.quad	0x3fe51094a07bf7e9              # double 0.65827399582462676
	.quad	0x3fde824655502d70              # double 0.47670133906713996
	.quad	0x3fed94a75c9c1bb4              # double 0.9243962105546104
	.quad	0x3fe347e70454a748              # double 0.60252714963756038
	.quad	0x3fa477145d12a4c0              # double 0.039971004830769541
	.quad	0x3feb011f511ee65b              # double 0.84388700336348721
	.quad	0x3fdca7fbf3da63b8              # double 0.44775294126298659
	.quad	0x3fd5531fb97e7548              # double 0.33319848169943045
	.quad	0x3fe413c2934d8a4b              # double 0.6274121167192076
	.quad	0x3fe48b80d82b74a6              # double 0.64202921124128376
	.quad	0x3feb3b495997ed19              # double 0.85098712443087543
	.quad	0x3fe9104d7096ea86              # double 0.78324005117549755
	.quad	0x3fedae1396d94515              # double 0.92749957525862448
	.quad	0x3fd681e0fddbc868              # double 0.35167717734214543
	.quad	0x3fecf685c9c4b893              # double 0.90509309204004962
	.quad	0x3fe2bb4a53a31cf6              # double 0.58536259017355863
	.quad	0x3fe00fdef5c7a2cf              # double 0.50193737033722552
	.quad	0x3fe8e112b4843c1f              # double 0.77747473961960967
	.quad	0x3fe519547456e73e              # double 0.65934202883293103
	.quad	0x3fcf159245508790              # double 0.24284580597401062
	.quad	0x3fedd7ef9613fc8a              # double 0.93260936081050372
	.quad	0x3fe20bec6b0907ca              # double 0.5639555063755719
	.quad	0x3fd5103b106bccfa              # double 0.32911564448950481
	.quad	0x3fe06fe2ccf5ab5d              # double 0.5136579516523444
	.quad	0x3fe431e43d4d28c9              # double 0.63109027836733234
	.quad	0x3fe8d43c284f0d5e              # double 0.77590759156047873
	.quad	0x3fe832ada0810844              # double 0.75618630741542647
	.quad	0x3fdb472ab20073dc              # double 0.42621867545113701
	.quad	0x3fe3086ac81d56ae              # double 0.59477747998126573
	.quad	0x3fefb9156c98cd6d              # double 0.99134322367028249
	.quad	0x3fbcf2ca5d5963e0              # double 0.11307968882591934
	.quad	0x3fe39099d55ca540              # double 0.61140147850270665
	.quad	0x3fd19441665ec5bc              # double 0.27467379567232419
	.quad	0x3fcad570ea0d0188              # double 0.20963870456945366
	.quad	0x3fe2384230d6b885              # double 0.56936749972170786
	.quad	0x3fc84fb9fe825e6c              # double 0.1899330609055484
	.quad	0x3fd1a4ccdca90218              # double 0.27568360852095131
	.quad	0x3fd80cfcd88c1386              # double 0.37579270503220419
	.quad	0x3fe5f827ff9edddc              # double 0.6865425102795899
	.quad	0x3fdee6af1cc33222              # double 0.48282983597599316
	.quad	0x3feecd55ef946122              # double 0.96256539147274034
	.quad	0x3fe1a54f5bbf79f7              # double 0.55142944259188098
	.quad	0x3fe3ab4c8251842d              # double 0.61466050579850207
	.quad	0x3fda0422ffcce98c              # double 0.40650248508941256
	.quad	0x3fe97e8b7263d6b3              # double 0.79669735280795917
	.quad	0x3fecbc8214e3be4c              # double 0.89801124649052033
	.quad	0x3fe353e0343be644              # double 0.6039887447543113
	.quad	0x3fd81a28c7f0fe32              # double 0.37659663701558366
	.quad	0x3fef1406a493a26f              # double 0.9711945738209361
	.quad	0x3f52e6ab48549600              # double 0.0011536286049901312
	.quad	0x3feb5ab0f22912e2              # double 0.85482070252382081
	.quad	0x3fed1ed49dafcb19              # double 0.91001349256689246
	.quad	0x3fc91196e8c7114c              # double 0.19584928861707807
	.quad	0x3fdce584dd35b598              # double 0.45150872805137388
	.quad	0x3fedcfc6803a5aca              # double 0.93161320728798924
	.quad	0x3fce138e0b727970              # double 0.23497176703399303
	.quad	0x3fc7197b21b72828              # double 0.18046511789572262
	.quad	0x3fe52ee393aad39b              # double 0.66197375146167603
	.quad	0x3fd088555c13ddf6              # double 0.25832113258317635
	.quad	0x3fe6d8a216faccd2              # double 0.71394447792263294
	.quad	0x3fe442d6d9f5f32d              # double 0.63315908976037394
	.quad	0x3fe00881b8dfe53b              # double 0.50103841884916933
	.quad	0x3fe11aeed101fc5f              # double 0.53453770467593731
	.quad	0x3fc575d5125efaa0              # double 0.16765845677396829
	.quad	0x3fc31412e101c388              # double 0.14905010210670988
	.quad	0x3fed2516ebe9800d              # double 0.91077753140052808
	.quad	0x3fe1f7fe810553be              # double 0.56152272414566773
	.quad	0x3fe7fad2081ae023              # double 0.7493677290249291
	.quad	0x3fe6777ffc03a033              # double 0.70208739491955041
	.quad	0x3fe5bc20a9848e3d              # double 0.67921479329056178
	.quad	0x3fd451704db9326a              # double 0.31747062292269013
	.quad	0x3fc955090d80f444              # double 0.19790757331239395
	.quad	0x3feddf069f0f4e24              # double 0.9334748369823882
	.quad	0x3fd9fd7bd77c9bae              # double 0.40609642070415475
	.quad	0x3fed368e0344a949              # double 0.91290951383897678
	.quad	0x3feb1756719a2ea1              # double 0.84659883678383008
	.quad	0x3fd8ff12f7fd5a78              # double 0.39056848733654403
	.quad	0x3fe0c0dc4abcd099              # double 0.52354254338435446
	.quad	0x3fb3ab0618c59250              # double 0.076828366325181862
	.quad	0x3fef9da57eecc2ac              # double 0.98799395360955122
	.quad	0x3fbf79455e3f1948              # double 0.12294419814052049
	.quad	0x3fde4814d5fff99a              # double 0.47314949892452207
	.quad	0x3fed3f8e8bc07302              # double 0.91400840087189317
	.quad	0x3fead640fd95f71a              # double 0.83865403679348849
	.quad	0x3fdc0689921184b2              # double 0.43789901031966416
	.quad	0x3fe907bf687d8964              # double 0.78219576271321189
	.quad	0x3fd976d0b89e10b0              # double 0.39787691144034465
	.quad	0x3fc49b70a5665004              # double 0.16099365307002256
	.quad	0x3fe4fc659534f36d              # double 0.65581015722237412
	.quad	0x3fe5b18bb76cf2f9              # double 0.67792306733426166
	.quad	0x3fd436e2b6524dc2              # double 0.3158499508365048
	.quad	0x3fb268feb85a6218              # double 0.071914596565314404
	.quad	0x3fd2252af7bc0682              # double 0.28351854508228069
	.quad	0x3fe20178b9962cf8              # double 0.56267963645350871
	.quad	0x3fd7a4f61b55b0b6              # double 0.36944344205290791
	.quad	0x3fdf706932cbc706              # double 0.49123601875827239
	.quad	0x3fdcc47fc1f2941a              # double 0.44949335041229832
	.quad	0x3fc2c1653a8c493c              # double 0.14652695997990317
	.quad	0x3fed30b6dd3ad7af              # double 0.91219657143550659
	.quad	0x3fece75862889af1              # double 0.90324038739058043
	.quad	0x3fef18a2d06443ba              # double 0.97175732327934061
	.quad	0x3fe9b88615f1209f              # double 0.80377487454918028
	.quad	0x3fe6b597c2a5dd8f              # double 0.7096670915333777
	.quad	0x3fecca894925c50f              # double 0.8997236660635809
	.quad	0x3fed370d7660854e              # double 0.91297028656496493
	.quad	0x3fe4191e7d25d65a              # double 0.62806629603319242
	.quad	0x3fe4fb74a5ddce10              # double 0.65569527049814447
	.quad	0x3fe7a7d3cc7e858a              # double 0.73923673572805737
	.quad	0x3fd2956dd5a20742              # double 0.29037042486753617
	.quad	0x3fd846be1a78ce8c              # double 0.3793177851214089
	.quad	0x3fc603c90f378a38              # double 0.17199052088752054
	.quad	0x3fcd514a248c7fd4              # double 0.22904326233492489
	.quad	0x3fd9a472513cfb4e              # double 0.4006620210019961
	.quad	0x3fbca892184ba058              # double 0.11194718449735441
	.quad	0x3fcd744e0a4024a0              # double 0.23011184216037339
	.quad	0x3fb5b94b953cb200              # double 0.084858631071888624
	.quad	0x3fd9512fb0ef7e44              # double 0.39558021811351218
	.quad	0x3f9db4a72c12f580              # double 0.029009449067179727
	.quad	0x3fe89f4138b205da              # double 0.76944027970619833
	.quad	0x3fd713615c231024              # double 0.36055788038015835
	.quad	0x3fb86ec7154e2c20              # double 0.095440333081726169
	.quad	0x3fd90ec356528c60              # double 0.39152606420447533
	.quad	0x3fcafc965a99e11c              # double 0.21083335327035335
	.quad	0x3fe45b3403153bc2              # double 0.63613319971215554
	.quad	0x3fe7fc7589539019              # double 0.74956776448789519
	.quad	0x3fe7664297593129              # double 0.73123292503581638
	.quad	0x3fee58770306bcca              # double 0.94829893675878307
	.quad	0x3fd5aa92d48c6f9a              # double 0.33853598362633763
	.quad	0x3fcf994e93303ae4              # double 0.24686605631764913
	.quad	0x3fefeafd6148f9da              # double 0.99743527413357502
	.quad	0x3fdb303219182d2c              # double 0.42481663179997287
	.quad	0x3fefe026f76664a1              # double 0.9961123306303713
	.quad	0x3fe03f71f17e8d43              # double 0.50774476210464348
	.quad	0x3fe46eb2e7fe4596              # double 0.63851304351026061
	.quad	0x3fb334f246409990              # double 0.075026647712183924
	.quad	0x3fcd0bb143ef3abc              # double 0.22691932503808754
	.quad	0x3fdd8fb47e82fc0e              # double 0.46189606051115184
	.quad	0x3fbb03d43f0b3830              # double 0.10552717723041449
	.quad	0x3fcd80f5bb044a98              # double 0.23049804336240665
	.quad	0x3fdcbdee938acd66              # double 0.4490925255624546
	.quad	0x3feaad4ecdba921c              # double 0.83365574056057623
	.quad	0x3faaa9224d98f4d0              # double 0.052071639988278684
	.quad	0x3fc99917342d9528              # double 0.19998445556408595
	.quad	0x3fe0a8208cfea20d              # double 0.52052333391208239
	.quad	0x3fe813050bfa9319              # double 0.75232174243555783
	.quad	0x3fd0bf3fd19f25ba              # double 0.26167293043962625
	.quad	0x3fdc91ec4fac9e52              # double 0.44640643864338359
	.quad	0x3fe3f8e67ed2bf2f              # double 0.62413334627306039
	.quad	0x3fc3b8bc7152f2d0              # double 0.15407519849204343
	.quad	0x3fd756b3fb04694c              # double 0.36466693414117368
	.quad	0x3fe621cf5faf6fd8              # double 0.6916272038320086
	.quad	0x3fe971ec65e4f0d0              # double 0.79515666867475865
	.quad	0x3fd8237b241e1e4e              # double 0.3771655895911622
	.quad	0x3febc7c0476183c8              # double 0.86813367787919393
	.quad	0x3fee4061f8f5caaa              # double 0.94535921692871239
	.quad	0x3fedefad96ee72cb              # double 0.93550757864758205
	.quad	0x3fd565ce837ec85a              # double 0.33433878747303469
	.quad	0x3fc10984a1647acc              # double 0.13310296898358442
	.quad	0x3fe36e8dcd6ba966              # double 0.60724535103990429
	.quad	0x3fc0a05551b42298              # double 0.12989298333583998
	.quad	0x3fc4bb1a3fa93560              # double 0.16195991619535288
	.quad	0x3fd739455f3edd66              # double 0.36287054349255354
	.quad	0x3fed4ab029ed40e6              # double 0.91536720455954135
	.quad	0x3fe4b8b1eb8ffa24              # double 0.64754577644618339
	.quad	0x3fc2c95e7cea56f4              # double 0.14677029704460376
	.quad	0x3fdf1a2ac20f87ac              # double 0.48597210837589944
	.quad	0x3fe6226c2102ba41              # double 0.69170195052522143
	.quad	0x3fe527ddacf545e2              # double 0.66111644535902436
	.quad	0x3fedbce6310efac9              # double 0.92930898267499018
	.quad	0x3fe7e3390c62a068              # double 0.74648716372486223
	.quad	0x3fc6245774e529d8              # double 0.17298405845424614
	.quad	0x3fd7363016fd9714              # double 0.3626823639409491
	.quad	0x3fe743ea370cb2a1              # double 0.72704039337039117
	.quad	0x3fd89b65432b58d8              # double 0.38448459205154739
	.quad	0x3fe758800bff0193              # double 0.72955324500076058
	.quad	0x3fe34e0c85a677f9              # double 0.60327745536392208
	.quad	0x3fe3725b406f31ca              # double 0.60770952782473242
	.quad	0x3fe6366c2c536e76              # double 0.69414337785151647
	.quad	0x3fc768e1d003a6bc              # double 0.18288824707933837
	.quad	0x3fd1f6be5cdcea86              # double 0.28068503445289428
	.quad	0x3fef38aa90092f5a              # double 0.97566726810462545
	.quad	0x3fe7013c8e32e71f              # double 0.71890094540797012
	.quad	0x3fc92338739245c4              # double 0.19638734477170605
	.quad	0x3fcd722d17b68048              # double 0.23004687936645696
	.quad	0x3fc2ac5550779adc              # double 0.14588419369757488
	.quad	0x3fbb1ae078d37068              # double 0.10587885808803466
	.quad	0x3fe9e5a5b3f2ab5b              # double 0.80928311487273719
	.quad	0x3fc3158bacd20ae8              # double 0.14909501970767924
	.quad	0x3fc15a014b887b68              # double 0.13555923641339551
	.quad	0x3fe463030c26687d              # double 0.63708641408017253
	.quad	0x3fe0bf9595e41c94              # double 0.52338675761793008
	.quad	0x3fed4836dd37e44c              # double 0.9150652237577872
	.quad	0x3fe4d99cf86e7084              # double 0.65156410714872992
	.quad	0x3feffc08b1e93036              # double 0.9995158648321254
	.quad	0x3fc1c313e8e6aee0              # double 0.13876580116390524
	.quad	0x3fe68391a94f535e              # double 0.70356066768963976
	.quad	0x3fc222ecba36a5bc              # double 0.14169081776098646
	.quad	0x3fe35ed6c5817f71              # double 0.6053270204101705
	.quad	0x3fe6e1f8d1f5cb08              # double 0.71508446700895067
	.quad	0x3fce6cd4b1620ebc              # double 0.23769625340729827
	.quad	0x3febe3b969ca3c16              # double 0.87154837286095943
	.quad	0x3fe712f9fbea77b2              # double 0.72106646730730106
	.quad	0x3fdc664842878bf2              # double 0.44374281403560112
	.quad	0x3fc0c8be44725a90              # double 0.13112619726299046
	.quad	0x3fec29a7a9322a11              # double 0.88008482976994362
	.quad	0x3fec8f8774dcedc8              # double 0.89252064537816356
	.quad	0x3fe0102aee62c358              # double 0.5019735961887859
	.quad	0x3fc66a16974e0de4              # double 0.17511255634245437
	.quad	0x3fb0f12ef18f9aa0              # double 0.066180166220514369
	.quad	0x3fd203d7ab506e56              # double 0.28148452501202337
	.quad	0x3f8185c43b4969c0              # double 0.0085559206574331581
	.quad	0x3fede545e531617a              # double 0.93423743023144756
	.quad	0x3fef6fd1d6ab0206              # double 0.98239986350387265
	.quad	0x3fe5d2a86265a66a              # double 0.68196505754640424
	.quad	0x3fe485e3475b4bdc              # double 0.6413437265094859
	.quad	0x3fd5a77b2f61d6be              # double 0.33834724070707611
	.quad	0x3fe96795d3dd259b              # double 0.7938946855512542
	.quad	0x3fec6753b8f1ee40              # double 0.88761316415861558
	.quad	0x3fcfd801f12ca640              # double 0.2487795283898766
	.quad	0x3fdbd532bf5849a0              # double 0.43488758741400524
	.quad	0x3fe9459d51e77a1d              # double 0.78974786755481186
	.quad	0x3fdee264f0e5fcac              # double 0.48256801152451589
	.quad	0x3fcebcbd177d0274              # double 0.24013484618082581
	.quad	0x3faeeb38bf3e2560              # double 0.060388348908484657
	.quad	0x3fe6723ff16c769e              # double 0.70144650605262249
	.quad	0x3fe7ec8b7ab9cf95              # double 0.74762510270965044
	.quad	0x3fd800f36b2ca630              # double 0.3750580355286699
	.quad	0x3fb4c0cd4019cfd8              # double 0.081066921376815926
	.quad	0x3fe7e5770460ba90              # double 0.74676085333870112
	.quad	0x3fc60902473e702c              # double 0.17214992979722987
	.quad	0x3fc46cc1bdfa6c20              # double 0.15956899429588223
	.quad	0x3fe44f2171634306              # double 0.63465950151484729
	.quad	0x3fe3434e46c98d12              # double 0.60196603608747723
	.quad	0x3fd7bdae96061c4e              # double 0.37095226908462997
	.quad	0x3fba382d5af861c8              # double 0.1024196955771749
	.quad	0x3fe62e32bac68909              # double 0.69313942412944229
	.quad	0x3fd14b2a8c8b702e              # double 0.27021278119150594
	.quad	0x3fdcc353ee467b14              # double 0.44942186612199575
	.quad	0x3fef4d3af6500d41              # double 0.97817752941083579
	.quad	0x3feaf8e84d52c39f              # double 0.84288420774656803
	.quad	0x3fe34ff9ba9a215d              # double 0.60351263471333605
	.quad	0x3fb463b7370cb380              # double 0.079646540584418445
	.quad	0x3fe95b1198f08cd1              # double 0.79236678954148421
	.quad	0x3fe817c02636fa46              # double 0.75289924110240558
	.quad	0x3fe9f759664b80fc              # double 0.81144399623374807
	.quad	0x3fded655575cd83c              # double 0.48183187037955455
	.quad	0x3fec4f58d0747eb9              # double 0.88468590463522567
	.quad	0x3fce4c368874f1b0              # double 0.23670083678179088
	.quad	0x3feb622c46b9388c              # double 0.8557340031927807
	.quad	0x3fe5772f4c19afef              # double 0.67079892028186616
	.quad	0x3fed9674e962e40e              # double 0.92461629470119688
	.quad	0x3fc86bb853416c18              # double 0.19078735413754155
	.quad	0x3fb9bd9122d64428              # double 0.10054881191742082
	.quad	0x3fe170a03f4825d7              # double 0.54499828681690132
	.quad	0x3fd11dc47b203b34              # double 0.26744186424268723
	.quad	0x3fd2359af8b8cf16              # double 0.28452181138276111
	.quad	0x3fd5dfb4c51ee3b6              # double 0.34177893877091081
	.quad	0x3fbaacbacdfeaf70              # double 0.10419814614459511
	.quad	0x3fd1917eea8f1c36              # double 0.27450535684733113
	.quad	0x3fd4a9f553e5c4ea              # double 0.32287343209379904
	.quad	0x3fc68a7ff1aea674              # double 0.17610167790308007
	.quad	0x3fe37568b82f0e3a              # double 0.60808216069603493
	.quad	0x3fe5d56a5a180087              # double 0.68230168911397093
	.quad	0x3fd7c3d0ba66c302              # double 0.37132662013304707
	.quad	0x3fe402ceecab0472              # double 0.62534280990816016
	.quad	0x3fda7e93a3e01200              # double 0.41397562983937064
	.quad	0x3fe7b531e6527cf2              # double 0.74086852059181596
	.quad	0x3fba9cf6a1591e58              # double 0.10395757140315121
	.quad	0x3feaa037aed5eb48              # double 0.83205780170042321
	.quad	0x3fcbd15dbe04d788              # double 0.21732684877650521
	.quad	0x3fd39ec523841d04              # double 0.30656555622449866
	.quad	0x3fcf598df96e42ec              # double 0.24492048911317654
	.quad	0x3fe5d1088a6766f1              # double 0.68176676780714562
	.quad	0x3feb00842f0bf254              # double 0.84381303013612773
	.quad	0x3fe4cec4d97835c2              # double 0.650240349526648
	.quad	0x3fe4543e0d5017a8              # double 0.63528349495094449
	.quad	0x3fe06a9eefb89fb2              # double 0.51301523991150177
	.quad	0x3fedc9740032b673              # double 0.93084144629183496
	.quad	0x3fe65e9239ee4c63              # double 0.69904433550472012
	.quad	0x3fe242dd1578bc98              # double 0.57066206163098609
	.quad	0x3fe561bc98498a5b              # double 0.66818074935538208
	.quad	0x3fe19490865afecb              # double 0.54938532105730908
	.quad	0x3fe8738420f68560              # double 0.7641010898407039
	.quad	0x3fd9d0602806da70              # double 0.40334323796142879
	.quad	0x3fe72b95cfdee340              # double 0.72407045936333958
	.quad	0x3fe842768f7a967d              # double 0.75811317465986827
	.quad	0x3fd073e0d1b5f736              # double 0.25707264403887409
	.quad	0x3fcb3939353c23f0              # double 0.21268382167207234
	.quad	0x3fd63c27cd7b93ee              # double 0.34742159907028636
	.quad	0x3fe4ba8601e68390              # double 0.64776897784405385
	.quad	0x3fc064f2e5c67214              # double 0.12808071345797656
	.quad	0x3fee4725000b93b2              # double 0.9461846352465868
	.quad	0x3fb88e397bcf7b48              # double 0.095920174338499753
	.quad	0x3fe27e4efbfbe908              # double 0.57791852203016081
	.quad	0x3fba47b3e18499f8              # double 0.10265659576234742
	.quad	0x3fec50274e320792              # double 0.8847843672995046
	.quad	0x3fcb423926c93108              # double 0.21295847314684857
	.quad	0x3fe4695bdfe3bffe              # double 0.63786119202086389
	.quad	0x3fd28b45e4cd1254              # double 0.28975055068830113
	.quad	0x3fe6b7b18bc80453              # double 0.70992352772749212
	.quad	0x3fd770af4e51226a              # double 0.36625273368966893
	.quad	0x3fee91ba9fc31b4a              # double 0.95528918460409185
	.quad	0x3fd7d23059e91fd8              # double 0.3722039106401076
	.quad	0x3fcca40dd927de48              # double 0.2237565336542835
	.quad	0x3fe4e7d97b244e8c              # double 0.65330194522035034
	.quad	0x3fc7a7cbe41b5044              # double 0.18480824125311035
	.quad	0x3fe1920014379f16              # double 0.54907230328260215
	.quad	0x3feffff269d92322              # double 0.99999352143740716
	.quad	0x3fe0027f4defb2f2              # double 0.50030484411180809
	.quad	0x3fe21c2822c5a4db              # double 0.56593710700431232
	.quad	0x3fbde7efac19bc78              # double 0.11682031585381647
	.quad	0x3fd1e14e53e7a95c              # double 0.27937658494797346
	.quad	0x3fce6e4220337858              # double 0.2377398164016451
	.quad	0x3fdaa932b28971ce              # double 0.41657702861064372
	.quad	0x3fd716e46b13d2f4              # double 0.36077223259717006
	.quad	0x3fdc2fe2610ab6ce              # double 0.44042262531989429
	.quad	0x3f9ff35298a865a0              # double 0.031201639716618268
	.quad	0x3fcc29e6ad238600              # double 0.22002871946374114
	.quad	0x3fe792051bcf810f              # double 0.73657470161200134
	.quad	0x3febb1fa0cd2eee6              # double 0.86547567848853357
	.quad	0x3fc65ec239f9442c              # double 0.17476680594202898
	.quad	0x3fee215bd464a3ba              # double 0.94157210810691727
	.quad	0x3fc36a76d376bf08              # double 0.15168652844794672
	.quad	0x3fe2780c1ea96927              # double 0.57715421665787836
	.quad	0x3fee4bff76a312a7              # double 0.94677708789148063
	.quad	0x3fa42ebea0d089e0              # double 0.039419133310975019
	.quad	0x3fdcc9deca8ea9d0              # double 0.44982118397697679
	.quad	0x3fa976ba55e64900              # double 0.049733946786675531
	.quad	0x3fe715e143d8f22e              # double 0.72142089129881071
	.quad	0x3fe699bbd3144160              # double 0.70626631952658769
	.quad	0x3fe9e228345ad151              # double 0.8088570616296612
	.quad	0x3fefceebda0bd4fc              # double 0.99400894724990918
	.quad	0x3fca8242849b3100              # double 0.2071002147189418
	.quad	0x3fee50404405cfc5              # double 0.9472962692802801
	.quad	0x3fb5cfa779219f80              # double 0.085199801514702855
	.quad	0x3fe0bf1aea970931              # double 0.52332826441150904
	.quad	0x3fe2b9a59488c188              # double 0.58516196261011633
	.quad	0x3fc2ab47d9692d18              # double 0.14585207095874675
	.quad	0x3fcedbf9cce24ab8              # double 0.24108812812899827
	.quad	0x3feb632b095096f7              # double 0.85585548228547637
	.quad	0x3fdcc741edca8446              # double 0.44966171476159322
	.quad	0x3fc1f29b91ee1afc              # double 0.14021629930012824
	.quad	0x3fe837ec87345cb6              # double 0.75682665259491588
	.quad	0x3fe661d9ba7ab004              # double 0.69944464132049733
	.quad	0x3fd01df68bbb1b28              # double 0.25182880063623481
	.quad	0x3f8c07798ec9e5c0              # double 0.013686132116378924
	.quad	0x3fc231a9666137b8              # double 0.14214055537234827
	.quad	0x3f71593759210080              # double 0.0042354738271229708
	.quad	0x3fd380c0ea7a46bc              # double 0.30473349474150857
	.quad	0x3fe9e2b368ec4bad              # double 0.80892343991069071
	.quad	0x3fe2f30dc455201c              # double 0.59216965051837489
	.quad	0x3fefb67263d10945              # double 0.99102134223384352
	.quad	0x3fde1c3d9f8f8830              # double 0.47047367651078087
	.quad	0x3fec33f92b0e45ef              # double 0.88134439858748503
	.quad	0x3f5c0258e95d2a00              # double 0.0017095440175177723
	.quad	0x3f753bd0effc7700              # double 0.0051839982623087533
	.quad	0x3fcc0df06946a548              # double 0.21917538776805601
	.quad	0x3fd9d9882b7b89a4              # double 0.40390209432930591
	.quad	0x3fe5816499dc3d2d              # double 0.67204504061547754
	.quad	0x3fee0b502117ddfc              # double 0.93888098205110237
	.quad	0x3f99df7722dc21a0              # double 0.025266515257528988
	.quad	0x3fd95411f0483f16              # double 0.39575623002109361
	.quad	0x3fd021294a8a48d6              # double 0.25202400473893982
	.quad	0x3fc3a6cc0566f4cc              # double 0.1535277391794011
	.quad	0x3fe0eee5610497e8              # double 0.52916211079422926
	.quad	0x3fee925229d6acf2              # double 0.95536144420239411
	.quad	0x3fe01a5cacd85b9c              # double 0.50321801909273089
	.quad	0x3fe4d1cf37d2b0ce              # double 0.65061150458270745
	.quad	0x3fd2a07a930a99f6              # double 0.29104484900963656
	.quad	0x3fcd94df85b1a2e0              # double 0.23110574749013946
	.quad	0x3fce07c54024e924              # double 0.23461213714637907
	.quad	0x3fd41da44ed5853a              # double 0.31430919359816623
	.quad	0x3fea3ee29631a543              # double 0.82017640433074523
	.quad	0x3fdfa2ea623a8c98              # double 0.49431857674262281
	.quad	0x3fea4c14771d0a9a              # double 0.82178710235924091
	.quad	0x3fb34bd4e82c5758              # double 0.075375849421417285
	.quad	0x3fe267a37fd9beeb              # double 0.57515120478453008
	.quad	0x3fb1863d31c29958              # double 0.068454575203394596
	.quad	0x3fd06db51ed4dbae              # double 0.25669601450811796
	.quad	0x3fd5404cc7705636              # double 0.33204955555388282
	.quad	0x3fbdcd0ce5fcb2b8              # double 0.1164100705615948
	.quad	0x3feb1e8818bc1794              # double 0.84747700530054936
	.quad	0x3fbe963560514c98              # double 0.11947949983123107
	.quad	0x3fe39bf875f70eed              # double 0.61278937377980258
	.quad	0x3fee34a13fb30834              # double 0.94392454568174466
	.quad	0x3fcbd7c4ec55043c              # double 0.21752225436833494
	.quad	0x3fb21f5c383b25b0              # double 0.070791019180566961
	.quad	0x3fef5ffce7cf35df              # double 0.98046727443005099
	.quad	0x3fbea63c16778630              # double 0.11972404049404228
	.quad	0x3fdceb614945358c              # double 0.45186645655925228
	.quad	0x3fe39b430461349d              # double 0.61270285468494345
	.quad	0x3fea1e489e529fb2              # double 0.81619673654949154
	.quad	0x3fac9cbfd84099a0              # double 0.055883402965537288
	.quad	0x3fdf6c545ccf2612              # double 0.49098691047092402
	.quad	0x3feb1c804099c28a              # double 0.8472291242342902
	.quad	0x3fc16aea703c1ccc              # double 0.13607531051841304
	.quad	0x3fd02f461025ffe0              # double 0.25288535668368972
	.quad	0x3fc42dc50c08ca88              # double 0.15764678084959294
	.quad	0x3fe10d60d5a1ba3e              # double 0.53288308834982678
	.quad	0x3fe48531e7458284              # double 0.64125914736003198
	.quad	0x3fe7b0aeae690a1b              # double 0.74031766953004607
	.quad	0x3fb2c9be074aea00              # double 0.073390843182018273
	.quad	0x3f99522a0da84d40              # double 0.024727494319518373
	.quad	0x3feebbd34fcf73c1              # double 0.96042790973626079
	.quad	0x3fdd9af065391b46              # double 0.46258172879281678
	.quad	0x3fb4e52e34386e98              # double 0.081622016667490249
	.quad	0x3fd8efb3d3ecd946              # double 0.38963027664012306
	.quad	0x3fee78bd62fc572e              # double 0.95223874409814413
	.quad	0x3fb98a9987cedb18              # double 0.099771114021546814
	.quad	0x3fe7dc3c90597674              # double 0.74563434785132054
	.quad	0x3fe335fda2be6d90              # double 0.60034066949758547
	.quad	0x3fe60f3650179da1              # double 0.68935695307748202
	.quad	0x3fd55b4c11c156da              # double 0.33369733556660963
	.quad	0x3fd3d18f8573ccae              # double 0.30966556580024018
	.quad	0x3fc496cc8894c73c              # double 0.16085201901437951
	.quad	0x3fc3a99157e66410              # double 0.15361229698172041
	.quad	0x3fbb4a099a676330              # double 0.10659847278237744
	.quad	0x3fd11576d5e0a0f4              # double 0.26693507086248691
	.quad	0x3fd64945a8e9ec72              # double 0.3482221746014097
	.quad	0x3fd0ecc6bba30b6e              # double 0.26445167850413653
	.quad	0x3fe0cda0b1433b12              # double 0.52510103818517195
	.quad	0x3fe17f015ad68d6b              # double 0.5467535757237959
	.quad	0x3fe89eaf39448c14              # double 0.76937066254720543
	.quad	0x3fe6be121f65c768              # double 0.71070200092638647
	.quad	0x3fc44b26e2cb4248              # double 0.15854345392155467
	.quad	0x3fe938f47271d8e6              # double 0.78820249893649641
	.quad	0x3fc7d7fb0aa16610              # double 0.18627870577874761
	.quad	0x3fd46ebc1e272c02              # double 0.31925871796255489
	.quad	0x3fb75ff4cad89c30              # double 0.091307925723058458
	.quad	0x3fe13d132173b0cf              # double 0.53870541127755611
	.quad	0x3fc9d8f600d4d314              # double 0.20193362274735505
	.quad	0x3fe0077eccab37f4              # double 0.50091495489482307
	.quad	0x3fed0c2b366a42ae              # double 0.90773544910378745
	.quad	0x3fec0b554044c5ad              # double 0.87638342430562022
	.quad	0x3fe675873180b0d9              # double 0.70184669178481862
	.quad	0x3f983bc2911bdaa0              # double 0.023665466410387581
	.quad	0x3fc002c4432489cc              # double 0.12508443144277093
	.quad	0x3fc82586ecaa31ac              # double 0.18864523464106975
	.quad	0x3fc418f075363af4              # double 0.15701108668550712
	.quad	0x3fdefd2ca075c60a              # double 0.48420253438880023
	.quad	0x3fb1dcfb2dbb33d0              # double 0.069778155007227172
	.quad	0x3fc3ab00d5f60df0              # double 0.15365610549279962
	.quad	0x3fd021427bf68d22              # double 0.25203001123209579
	.quad	0x3fea0921e35780f2              # double 0.81361479189584274
	.quad	0x3fe66f6d50c5207e              # double 0.70110193038364321
	.quad	0x3fec0e57edce3bbe              # double 0.87675091215520928
	.quad	0x3fe7e976a1cd2ed2              # double 0.74724895097593902
	.quad	0x3fc8baf544bf91f8              # double 0.19320550782062162
	.quad	0x3fe72e37490a9048              # double 0.72439159646865736
	.quad	0x3fc07a694a35d9b8              # double 0.12873569606354152
	.quad	0x3fec3811108dfa53              # double 0.88184407456703651
	.quad	0x3fe4cd45293d055d              # double 0.65005739263885298
	.quad	0x3fed4c99991b382f              # double 0.9156005850179606
	.quad	0x3fc580d41cbabc58              # double 0.1679940357475711
	.quad	0x3fe3ef21b674679b              # double 0.62294088016209359
	.quad	0x3fd499f68145637c              # double 0.32189715026975541
	.quad	0x3fe530993a7b8064              # double 0.6621824400172156
	.quad	0x3fea927e77bd527d              # double 0.8303825701392068
	.quad	0x3fe11aa29d98e2b6              # double 0.53450136929230641
	.quad	0x3fd442cd0f328a14              # double 0.31657721027491559
	.quad	0x3fdb55f52dcb56ce              # double 0.42712144348238901
	.quad	0x3fbd7585adde5b80              # double 0.11507449622000188
	.quad	0x3fd90c8991cf6d5a              # double 0.39139022101672583
	.quad	0x3fe0dbfd1d4c2166              # double 0.52685409280915674
	.quad	0x3fef235137563cea              # double 0.9730611878202613
	.quad	0x3fe43b3eed92d4f1              # double 0.63223215485655093
	.quad	0x3fca89f63c3efe68              # double 0.20733526174261674
	.quad	0x3fe3e421c725a355              # double 0.62159813781645801
	.quad	0x3fd58e3894a1cdca              # double 0.33680548205230976
	.quad	0x3feef68cd0927b3b              # double 0.9675964425731317
	.quad	0x3fe40059663d661b              # double 0.62504262894362073
	.quad	0x3feac24bbf90e887              # double 0.83621776023143546
	.quad	0x3fe7ede38309c0f1              # double 0.747789150174894
	.quad	0x3fdeda4af56cac50              # double 0.48207353560673472
	.quad	0x3fe980207bb60a7a              # double 0.7968904892189379
	.quad	0x3fb86cc245f93408              # double 0.095409528811799871
	.quad	0x3fcc9ec94f98b254              # double 0.22359577547594489
	.quad	0x3f8eb2d69ef60b80              # double 0.014989544607265648
	.quad	0x3fe5f2d3a05ee21c              # double 0.68589192697897117
	.quad	0x3fc2d4092bdca768              # double 0.14709581987090847
	.quad	0x3feef9ce6c516fbc              # double 0.9679939380252942
	.quad	0x3fe82c3c3014f889              # double 0.7553997935390423
	.quad	0x3feaf30a9af1a624              # double 0.84216814291466279
	.quad	0x3fdd7c3988e67a86              # double 0.46070707673235523
	.quad	0x3fdca2f8e62a79be              # double 0.44744703747883452
	.quad	0x3fd216f18b818636              # double 0.28265036224010787
	.quad	0x3fb5d31bb47bf260              # double 0.085252505839841231
	.quad	0x3fe59c6ae89794b2              # double 0.67534394672533993
	.quad	0x3fe6a5488a135f09              # double 0.70767619102386548
	.quad	0x3fddc3a291dd090a              # double 0.46506561512445954
	.quad	0x3fe52b6338a2c51f              # double 0.66154633580859812
	.quad	0x3feb504c8ebd9d0f              # double 0.85355213049925449
	.quad	0x3fd786a4ee897672              # double 0.36759303373933172
	.quad	0x3fc6a70e1feb2e68              # double 0.17697311934022086
	.quad	0x3fc1b1dde52ef698              # double 0.13824056330297618
	.quad	0x3fc8be0512b66154              # double 0.19329894460384855
	.quad	0x3feb6a3122893508              # double 0.85671288247400046
	.quad	0x3fcae24c75f609c8              # double 0.21003108749216737
	.quad	0x3fd367f462167ef2              # double 0.30321988657850263
	.quad	0x3fb89e46df7237f0              # double 0.096165113022123938
	.quad	0x3fe1093b47c85bc2              # double 0.53237689991043902
	.quad	0x3fb3d72ca1da3bf0              # double 0.077502049937024031
	.quad	0x3fe2444422729987              # double 0.57083327034051556
	.quad	0x3fed783903ec123b              # double 0.92092562452359716
	.quad	0x3fbd699d1afb7230              # double 0.11489278706307782
	.quad	0x3fc12fae331562e4              # double 0.13426759237588393
	.quad	0x3fea342c006057e0              # double 0.81886863778595042
	.quad	0x3fe36cfb54ec946c              # double 0.60705343806024592
	.quad	0x3fd6c1792e8deb8a              # double 0.35555867716146194
	.quad	0x3fde92813ab0b360              # double 0.47769194346874677
	.quad	0x3fb1b4c7cc684fc0              # double 0.069164740947882386
	.quad	0x3fd80d4fb5655eaa              # double 0.37581246103716615
	.quad	0x3fe106154c89e3d8              # double 0.53199257801963551
	.quad	0x3fcda93b0d8dc7fc              # double 0.23172701036270371
	.quad	0x3fa9cfe78e7fb8d0              # double 0.050414310593497214
	.quad	0x3fe642addbf1a29b              # double 0.69563954313078413
	.quad	0x3fed06c99b0f42fa              # double 0.90707855496483991
	.quad	0x3fddc8798dffef66              # double 0.46536101214564096
	.quad	0x3fe6c1e2068d7700              # double 0.71116734771541701
	.quad	0x3fe67beda7a6a5b5              # double 0.7026279711182527
	.quad	0x3fe9e9f5f75ca1b3              # double 0.80980966866359549
	.quad	0x3fe5b519c0a09c72              # double 0.67835700628792339
	.quad	0x3fe662bbbaa54c19              # double 0.69955240682827757
	.quad	0x3fe841f8452d8d21              # double 0.75805295478167889
	.quad	0x3fe8fa8cd4b44426              # double 0.78058473151952934
	.quad	0x3fe6d3efc345e0c3              # double 0.71337116374254383
	.quad	0x3fcf86b3ae2e47d0              # double 0.24629827504082735
	.quad	0x3fec848730e50c4f              # double 0.89117774533986871
	.quad	0x3fdb5f14dc3f4760              # double 0.42767831333650541
	.quad	0x3fda0fcde006414c              # double 0.40721461179147833
	.quad	0x3fe016c3b4464b2d              # double 0.50277886590843013
	.quad	0x3fea1cd6cc5e7af1              # double 0.81602039256890013
	.quad	0x3fd4dd6511261ace              # double 0.32601286577884714
	.quad	0x3fe2868c9fea4367              # double 0.57892447694221694
	.quad	0x3fc1a4e07ae408c0              # double 0.13784414291882818
	.quad	0x3fe782ffa7813303              # double 0.73474104610213009
	.quad	0x3fc1873415c89414              # double 0.13693858207366871
	.quad	0x3fb79a1e2fe07fd0              # double 0.092195402802189407
	.quad	0x3fc0aa9c8751e018              # double 0.13020664794362413
	.quad	0x3fee24be3bdcc28e              # double 0.94198524181236265
	.quad	0x3fd599fee676520e              # double 0.33752415185998152
	.quad	0x3fe5bba392f1612c              # double 0.67915514659674647
	.quad	0x3fd6b3b26b2e02be              # double 0.35471783129473156
	.quad	0x3fe030016a1f285e              # double 0.50586004950424601
	.quad	0x3fbea28516e9a000              # double 0.11966735658063499
	.quad	0x3fd5f866d8a2183a              # double 0.34328623920044132
	.quad	0x3fbc965212b485e8              # double 0.11166871029538294
	.quad	0x3fea2569b62a0b88              # double 0.81706700877144645
	.quad	0x3f8b729fc6943500              # double 0.013402221915863155
	.quad	0x3fedc75fd3c52c03              # double 0.93058768617027032
	.quad	0x3fe95a092e760835              # double 0.79224070619989695
	.quad	0x3fe30c33eb02e5e9              # double 0.59523960018776478
	.quad	0x3fdf33d6dcadbc46              # double 0.48753902006769001
	.quad	0x3fe9de60348f6ac0              # double 0.80839548364323122
	.quad	0x3fdbe6629c883c04              # double 0.43593659674019158
	.quad	0x3faced17f6946480              # double 0.056496380662971468
	.quad	0x3fb5c2f2b44a80e0              # double 0.085005921379436966
	.quad	0x3fe7e7863e22e47b              # double 0.74701225410457484
	.quad	0x3fe59f6e027681b4              # double 0.67571163636244203
	.quad	0x3fcac5b989ff30f0              # double 0.20915908086897828
	.quad	0x3fe4f1f0856d7ab6              # double 0.65453363475884063
	.quad	0x3fe6d6270e0e690a              # double 0.71364166970605081
	.quad	0x3fc32f9e45ca3878              # double 0.14989069373808994
	.quad	0x3f71308c8a7c7400              # double 0.0041966905480679273
	.quad	0x3fef39f41bc5bc62              # double 0.9758244078092384
	.quad	0x3fe34ab353e5a215              # double 0.60286871324666669
	.quad	0x3fd8684a55ccc704              # double 0.38136537913224822
	.quad	0x3fe0fa3332b40d5f              # double 0.53054199126237822
	.quad	0x3feecce560860542              # double 0.9625117192482906
	.quad	0x3fe3ca59cae07f06              # double 0.61845101951982495
	.quad	0x3fe140c00c5175f8              # double 0.53915407567882223
	.quad	0x3fecfcc61faa323f              # double 0.90585619148766472
	.quad	0x3fe3dd1ac97610f8              # double 0.62074031207933356
	.quad	0x3fe87b2d893f3071              # double 0.7650363617517667
	.quad	0x3fee44fad308b951              # double 0.94592038362115194
	.quad	0x3fc7cb46df63ca00              # double 0.18589101703362587
	.quad	0x3fcf6886aae86f48              # double 0.24537738175501489
	.quad	0x3febd0c70675b282              # double 0.86923552762671386
	.quad	0x3fd5ed0291b75d70              # double 0.34259094457725947
	.quad	0x3fe38ef6c79d9b04              # double 0.61120165812903382
	.quad	0x3fd099c71f3f9dd0              # double 0.25938585330592634
	.quad	0x3fed4c4a39e56bff              # double 0.91556273753974426
	.quad	0x3fe69548f085a734              # double 0.705723256845181
	.quad	0x3fb7e39a85146a68              # double 0.093316705217526441
	.quad	0x3fe5e337f9a25b57              # double 0.6839866519611445
	.quad	0x3fea5a5c55ad422a              # double 0.82353035672901354
	.quad	0x3fedb4061189fbd1              # double 0.92822554994188
	.quad	0x3fe8a6dfde11a78a              # double 0.77037042019695545
	.quad	0x3fe5a50481cd2694              # double 0.67639375068502483
	.quad	0x3fe2302781abadd3              # double 0.56837821317952331
	.quad	0x3fefe82bdb9fc766              # double 0.99709122557963492
	.quad	0x3fa011ee6b0e96a0              # double 0.031386805122832984
	.quad	0x3fefd747a5dd4791              # double 0.99502928157220271
	.quad	0x3fd65d7724b73e70              # double 0.34945467553641318
	.quad	0x3fdce78217990440              # double 0.45163013748612357
	.quad	0x3fd162677cca515c              # double 0.27163111864617462
	.quad	0x3feb8eaceac3dfe5              # double 0.86116643765035106
	.quad	0x3fd9b3aae7168312              # double 0.40159103934461016
	.quad	0x3fe28e1ada8a426e              # double 0.57984678920372601
	.quad	0x3f7fd632e68fe400              # double 0.0077726352983455981
	.quad	0x3fa8489650438f60              # double 0.047428796098556658
	.quad	0x3fe692979158635a              # double 0.70539453876254332
	.quad	0x3fe7278cdb78ccac              # double 0.72357790818786816
	.quad	0x3fa65f4fd1f0d200              # double 0.043695921304252039
	.quad	0x3fe9d3059829e382              # double 0.80700950355013412
	.quad	0x3fe53da6287d2b42              # double 0.66377551944729185
	.quad	0x3fc3fa2a9852ea70              # double 0.15607197225274971
	.quad	0x3feb9569818e3460              # double 0.86198878578001014
	.quad	0x3fdb37dc90a5f52c              # double 0.42528452039535369
	.quad	0x3fec93b54b7c0d38              # double 0.8930307840641154
	.quad	0x3fe23f9600f2d3d8              # double 0.57026195702803317
	.quad	0x3fd7af71484adb84              # double 0.37008316097074379
	.quad	0x3fe096d431f040ae              # double 0.51841172937021951
	.quad	0x3fd8ebc4c0433242              # double 0.38939017081864702
	.quad	0x3fe81f3c537b1664              # double 0.75381294541211874
	.quad	0x3fe72839c16c118d              # double 0.72366035249483363
	.quad	0x3fb5c3dfb5f82240              # double 0.08502004807099528
	.quad	0x3fec033ff691139d              # double 0.8753967109447448
	.quad	0x3fe60dd4f1af9596              # double 0.6891884537150641
	.quad	0x3fd4f63305bc2ace              # double 0.32752681312619536
	.quad	0x3fe982ab1af07822              # double 0.79720072995747082
	.quad	0x3febaf0ac01da44a              # double 0.86511743090262283
	.quad	0x3fe2f038b80aee9e              # double 0.59182392068710832
	.quad	0x3fbe9735ee3798d8              # double 0.119494791658869
	.quad	0x3fe69e642cde42ba              # double 0.70683487666436595
	.quad	0x3fe821881e8a352e              # double 0.75409322705096371
	.quad	0x3fea59b82dd6379c              # double 0.82345208122727653
	.quad	0x3fe02e930f7ec8b3              # double 0.50568535829940797
	.quad	0x3fe7360785f448e3              # double 0.72534538424431749
	.quad	0x3feac191d9d27303              # double 0.83612911742565676
	.quad	0x3fb037f8cb931578              # double 0.063354062748734452
	.quad	0x3fded9409ba52b1e              # double 0.4820100326511908
	.quad	0x3fc52234af241e54              # double 0.16510637809573103
	.quad	0x3fd98d82f95e518a              # double 0.39926218368898303
	.quad	0x3fea5d8754720c46              # double 0.82391706937085796
	.quad	0x3fec0932d9417269              # double 0.87612287934059652
	.quad	0x3fe53c78e0419363              # double 0.66363185691862403
	.quad	0x3fd3f771e729e3a0              # double 0.31197784018109509
	.quad	0x3fd5ad2574fe3078              # double 0.33869301247683081
	.quad	0x3fe13abcf8ba4be6              # double 0.53842018680222448
	.quad	0x3fe23bc6dffb316b              # double 0.5697969793923624
	.quad	0x3feae053a276a32b              # double 0.83988363009584555
	.quad	0x3fc3615e3cf072f8              # double 0.15140893912839437
	.quad	0x3fd6078103546d12              # double 0.34420800519156203
	.quad	0x3fe750ee822b59b8              # double 0.72862935470293788
	.quad	0x3fe779e0e3149912              # double 0.73362774230625605
	.quad	0x3fbf220df33c26b8              # double 0.12161338032106073
	.quad	0x3fd1fe2b52260848              # double 0.28113825819321336
	.quad	0x3fe1b62d019986d5              # double 0.55348825752681796
	.quad	0x3fdcbe66b82ceaba              # double 0.44912116990932882
	.quad	0x3f722cb49df4d700              # double 0.0044371657707438228
	.quad	0x3fd1c3c435bc4f4e              # double 0.27757363555541736
	.quad	0x3fc0d1b5701b807c              # double 0.13139980291362352
	.quad	0x3fe5056e3ead85fd              # double 0.65691292039645044
	.quad	0x3fdd7fb553b34f5e              # double 0.46091969655866716
	.quad	0x3feda5c98f0717c9              # double 0.92648771224116289
	.quad	0x3feee08559893cc5              # double 0.96490733611599266
	.quad	0x3fab07c6fc4b51d0              # double 0.052793710992463994
	.quad	0x3fe39b977fdd08cf              # double 0.61274313901255961
	.quad	0x3fe46f805ced7f6d              # double 0.63861101293512734
	.quad	0x3fe814d28948e5a4              # double 0.75254179776600382
	.quad	0x3fe8aa0759613f95              # double 0.7707554574681007
	.quad	0x3fed945ed95c60fc              # double 0.92436163380901303
	.quad	0x3feece5ae4c34c6b              # double 0.96268982582331596
	.quad	0x3fd3eed1555cae90              # double 0.3114512761701258
	.quad	0x3fed7e098ef9db19              # double 0.92163541722297559
	.quad	0x3fe5e9b45d11ed72              # double 0.68477838685741532
	.quad	0x3fcb1f3388ddd840              # double 0.21188968832911037
	.quad	0x3fbb1c06e6d926a8              # double 0.10589640747016438
	.quad	0x3fc0b04d23e390b0              # double 0.13038028957737913
	.quad	0x3febcdd6c014d3d3              # double 0.86887681499376368
	.quad	0x3fdb2561511bf54e              # double 0.42415650292226281
	.quad	0x3fc7b0b2d5510450              # double 0.18507991233676302
	.quad	0x3fed0d637e5da99e              # double 0.90788435631593578
	.quad	0x3fd355f484603478              # double 0.30212128569912222
	.quad	0x3f5fa7d2b4420800              # double 0.001932101979975176
	.quad	0x3fe5834ff915aa1e              # double 0.67227934502927034
	.quad	0x3fd212be39662bb6              # double 0.28239398579961106
	.quad	0x3fbd29835c290b98              # double 0.11391469001777776
	.quad	0x3fb5049930b47a90              # double 0.082101416006916005
	.quad	0x3fe0502aa65e3b92              # double 0.50978596204537241
	.quad	0x3fda3cedd3331be4              # double 0.40996881127324358
	.quad	0x3fea7ebd9ffd7c23              # double 0.82797127960282457
	.quad	0x3fd4b144ef2845f2              # double 0.32331965785223737
	.quad	0x3fd6e2d52f6e20a6              # double 0.35759477264265127
	.quad	0x3fcedd5ba7f2b3c4              # double 0.24113031101788185
	.quad	0x3fe81a25c4327679              # double 0.75319183654546784
	.quad	0x3fd96c919b4907b4              # double 0.39725151218965071
	.quad	0x3fef054203fd0485              # double 0.96939183024382258
	.quad	0x3f82c4ea307c9840              # double 0.0091646476790395725
	.quad	0x3fe76a6108c51a01              # double 0.73173572266460962
	.quad	0x3feb10d753f8e790              # double 0.84580580139957995
	.quad	0x3fe11e97679d82b8              # double 0.53498430478437964
	.quad	0x3fe10c9db36624da              # double 0.53279004134051466
	.quad	0x3fe604f198fb12dc              # double 0.68810348395399101
	.quad	0x3fd9a17d9fba8c66              # double 0.4004816112375863
	.quad	0x3fa131f862651dc0              # double 0.033584367762667267
	.quad	0x3fc474dd51f33e28              # double 0.15981642247651107
	.quad	0x3fe40a86af79fd36              # double 0.62628492615468789
	.quad	0x3feedd0998833a0c              # double 0.96448211467378675
	.quad	0x3fd5eda2f837b3b6              # double 0.34262918701170564
	.quad	0x3fe5fd3a8573090b              # double 0.68716169418647277
	.quad	0x3faaf6acfa944ae0              # double 0.052663236225404253
	.quad	0x3fccde8ce4f3eb44              # double 0.2255416982587467
	.quad	0x3fe58387119e4da8              # double 0.67230561677063339
	.quad	0x3fc55216e4b98228              # double 0.16656767051883148
	.quad	0x3fec7125881c94d4              # double 0.88881184181505057
	.quad	0x3fb7340964ab8ab0              # double 0.090637766912133654
	.quad	0x3fafb059b1971770              # double 0.061892321518412952
	.quad	0x3fe52a48ed4bd7ee              # double 0.6614117273991249
	.quad	0x3feb9ac69319d2b2              # double 0.86264351587904842
	.quad	0x3feec3ab027ff177              # double 0.96138525474775249
	.quad	0x3fcd006e70792b68              # double 0.2265756653963209
	.quad	0x3f9c76e67fb63960              # double 0.027797318978224239
	.quad	0x3fda92a57986557a              # double 0.41520058505678714
	.quad	0x3fd098906fd18348              # double 0.2593117801643996
	.quad	0x3fe7465b53f47939              # double 0.72733847043472288
	.quad	0x3fe7636404955716              # double 0.73088265319049373
	.quad	0x3fe9e2806aad0e9a              # double 0.80889912448079149
	.quad	0x3fd5bd0935490582              # double 0.33966283992420909
	.quad	0x3fe16f495d68bcd2              # double 0.54483478778811389
	.quad	0x3fc7f06746665188              # double 0.18702403008923008
	.quad	0x3fe53a2ba6018237              # double 0.66335089133287439
	.quad	0x3fafc8f56ff56f10              # double 0.062080068508946096
	.quad	0x3fe32a1c8f6ac29a              # double 0.59889057170046844
	.quad	0x3fd3c068add22198              # double 0.30861870741548492
	.quad	0x3feeebb70202078d              # double 0.96627378837750799
	.quad	0x3fd9a89e5596bd44              # double 0.40091665609630334
	.quad	0x3fb4824de5d35de8              # double 0.080113285646227106
	.quad	0x3fdf1b8ea6e7f406              # double 0.48605696010037069
	.quad	0x3fe865b5ac1d7d98              # double 0.76241572967767279
	.quad	0x3fee72d0485b1f25              # double 0.95151533252735432
	.quad	0x3fd5d1cbda793eb0              # double 0.34092995009721516
	.quad	0x3fef4449b2c477ec              # double 0.97708592334288146
	.quad	0x3fe0f885ecaf19c6              # double 0.53033729770032134
	.quad	0x3fb7240d3d66d4b8              # double 0.090393855562825531
	.quad	0x3fd4840f7f491262              # double 0.32056033544748719
	.quad	0x3fd02ace69d34384              # double 0.25261268934723824
	.quad	0x3fe00f9865d5906b              # double 0.50190372361659052
	.quad	0x3fe94820aa2d12ef              # double 0.79005463826669409
	.quad	0x3feaf9d39fc7ba15              # double 0.84299641806666392
	.quad	0x3fc87a1ea6434e7c              # double 0.19122679823214017
	.quad	0x3fd64b9c2c4d0b50              # double 0.34836487127556826
	.quad	0x3fbcf64d14341f08              # double 0.11313325637103955
	.quad	0x3fe90caaa47ec5ce              # double 0.78279621246309161
	.quad	0x3fe0eff00962689d              # double 0.52928926308529223
	.quad	0x3fe8e998cb633045              # double 0.77851524089920388
	.quad	0x3fe618292f46abfb              # double 0.69044932588201335
	.quad	0x3fd6f59c6e96eb5c              # double 0.35874090957411453
	.quad	0x3fe1c29e16ffe43f              # double 0.55500702373604571
	.quad	0x3fe57312c46e2da2              # double 0.67029703488644921
	.quad	0x3fdb5e09c5c96428              # double 0.42761463465791616
	.quad	0x3fe77fa92c0ec773              # double 0.73433359723115499
	.quad	0x3fd75e643a577fea              # double 0.36513620088044141
	.quad	0x3fd69903b9c75c76              # double 0.35308926718193534
	.quad	0x3fd79eebea5bc60a              # double 0.3690748013169417
	.quad	0x3fd0c72216b6b0ee              # double 0.26215412347916256
	.quad	0x3fd93fa31a993b32              # double 0.39450910184398247
	.quad	0x3fe453b49126cc31              # double 0.63521793699181306
	.quad	0x3fb8d1ac5255d818              # double 0.096949358083151416
	.quad	0x3fb159e678523d00              # double 0.067778019309333359
	.quad	0x3fc08f5c102c6de8              # double 0.12937498845791073
	.quad	0x3fd88d7ef68d9bbe              # double 0.38363622739273839
	.quad	0x3fada656c2ee9ca0              # double 0.057909690184993368
	.quad	0x3fe623488d0e2b77              # double 0.69180705594895542
	.quad	0x3fecd42b7413486c              # double 0.90089962645494159
	.quad	0x3fb3e2575a197128              # double 0.077672442910117767
	.quad	0x3fe2a041efce9cf1              # double 0.58206269109078168
	.quad	0x3fe9ff84e007ea45              # double 0.81244128948248628
	.quad	0x3fcc1b5bef51f808              # double 0.2195849340968723
	.quad	0x3fd69fd854ea65fe              # double 0.35350616734066864
	.quad	0x3fe52bd5a94aa0c9              # double 0.66160090508221814
	.quad	0x3fdb3d3dfb049e76              # double 0.4256129218433452
	.quad	0x3fced5ea068ee200              # double 0.24090314216824993
	.quad	0x3fe94fa0be580dba              # double 0.79097020317606526
	.quad	0x3fe919925279b465              # double 0.78437152966001789
	.quad	0x3fe8e41c2816a101              # double 0.77784545736088273
	.quad	0x3fb90e270289a3d0              # double 0.09787219821886528
	.quad	0x3f84111c29d46400              # double 0.0097982597604175936
	.quad	0x3fd3cb075d182c76              # double 0.30926689234974647
	.quad	0x3fe8cb31cb3983e3              # double 0.77480401699369528
	.quad	0x3fc805cce70ac248              # double 0.18767701417302107
	.quad	0x3fcbefbbf6469774              # double 0.21825360799010307
	.quad	0x3fea3bc184899197              # double 0.81979442487913701
	.quad	0x3fd52a02aeafd502              # double 0.3306891160894595
	.quad	0x3fd5340e033c5878              # double 0.33130216899861109
	.quad	0x3fb05d52ca1f7270              # double 0.063924002024075
	.quad	0x3fe5f1bfa43f58e7              # double 0.68576032714443336
	.quad	0x3fdae7ebe7fc4384              # double 0.42040536551308372
	.quad	0x3fef1ff0125f4b0c              # double 0.97264865482643036
	.quad	0x3fe50f02290829ae              # double 0.65808208478965979
	.quad	0x3fd226c696759320              # double 0.28361668294228259
	.quad	0x3fd877e27f899e6e              # double 0.38231718497124845
	.quad	0x3fb47e51dd5a5850              # double 0.080052486935842326
	.quad	0x3fc5a2622f67cb8c              # double 0.16901805224150868
	.quad	0x3fc5b52056998a58              # double 0.1695900366640497
	.quad	0x3fb9099b891044f8              # double 0.097802849734097808
	.quad	0x3fed7b83839c0c54              # double 0.92132735924713893
	.quad	0x3fd89a90cd4ae18a              # double 0.38443393753143396
	.quad	0x3fa3d18477136330              # double 0.038707866225826115
	.quad	0x3fc40f8f85276b18              # double 0.15672487260493351
	.quad	0x3fd223816dc5e046              # double 0.28341708869948368
	.quad	0x3fe797824e61a9cd              # double 0.73724475201498196
	.quad	0x3fd535f356bf9ae2              # double 0.33141787978676807
	.quad	0x3fefde22dac3c74f              # double 0.99586622931949786
	.quad	0x3fcb63ebe23bc298              # double 0.21398685976557341
	.quad	0x3fbc0f9659d9f848              # double 0.10961284345282352
	.quad	0x3feac3f0fae72416              # double 0.83641861919852789
	.quad	0x3fee7286be70cf9a              # double 0.95148026652758522
	.quad	0x3fc1c5d271c00f58              # double 0.13884954981051112
	.quad	0x3fabceaa75b41260              # double 0.054311110370723226
	.quad	0x3fca0840b2a0be24              # double 0.20337685319962973
	.quad	0x3fd2d537a4a03922              # double 0.29426375462289134
	.quad	0x3fd8271f469c28c2              # double 0.37738782783038627
	.quad	0x3fceeddbcb3c2e3c              # double 0.24163386748874582
	.quad	0x3fe2d4da9d848d93              # double 0.5884831501502269
	.quad	0x3fed10e60827d5c8              # double 0.90831281273738629
	.quad	0x3fe6f168e0947961              # double 0.71696895468975808
	.quad	0x3fe9a7ac7e9a97a3              # double 0.80171799399680699
	.quad	0x3fc7b772d9976d64              # double 0.1852859079798278
	.quad	0x3fe46da156c668d3              # double 0.63838259647607243
	.quad	0x3fe3675a6b885cec              # double 0.60636635782694048
	.quad	0x3fe4ab89ed2083f2              # double 0.64593979181165495
	.quad	0x3fb00e28658e7038              # double 0.062716030878107953
	.quad	0x3fdca443c62e6442              # double 0.44752592424044135
	.quad	0x3fc8b3ffb5374f3c              # double 0.19299312923851086
	.quad	0x3fe98a8879100875              # double 0.79816077847523437
	.quad	0x3fda16d2a53133c2              # double 0.40764299518633262
	.quad	0x3fe6b065056ed71e              # double 0.7090325456726736
	.quad	0x3fe0d47f4d9407be              # double 0.52593960906983006
	.quad	0x3fd00b1c413e9916              # double 0.25067812320266236
	.quad	0x3fbd52d1b93ac428              # double 0.11454497120099971
	.quad	0x3fcbcae2f0b9fec0              # double 0.21712910417772058
	.quad	0x3fe2823985b2032c              # double 0.57839656937003303
	.quad	0x3fea893097e6d3ee              # double 0.82924680393500494
	.quad	0x3fed94acd567c32d              # double 0.92439881973959859
	.quad	0x3fdc43f54592d5ae              # double 0.44164783281606901
	.quad	0x3fc44da5a8ef970c              # double 0.15861960171530887
	.quad	0x3fd9884ebab5ea86              # double 0.39894455178697574
	.quad	0x3fe7d8a0970bf675              # double 0.7451937627917703
	.quad	0x3fef0578ef5a015a              # double 0.96941801784854964
	.quad	0x3fe3333edcb88cf4              # double 0.60000556096602375
	.quad	0x3fda5dc359b31566              # double 0.41197284469338624
	.quad	0x3feac5a8564022b3              # double 0.83662812085920846
	.quad	0x3fe9fbd99cb4cce1              # double 0.81199341398896874
	.quad	0x3fe4af87f5fd48e1              # double 0.6464271358948076
	.quad	0x3fee42d877c262bc              # double 0.94565986052028661
	.quad	0x3fe5156c2db0f320              # double 0.65886506008209622
	.quad	0x3fe48b033d906db2              # double 0.64196931862118434
	.quad	0x3fe3183ca2debfa5              # double 0.59670860109871582
	.quad	0x3fe1aa6df183c11b              # double 0.55205437823136394
	.quad	0x3fe6e83bb083c460              # double 0.71584877467661201
	.quad	0x3fda80f91212e9a0              # double 0.41412188305880626
	.quad	0x3feb8536bb794ac2              # double 0.86001144996620149
	.quad	0x3fda3f9f2925058c              # double 0.41013316171673675
	.quad	0x3fdd103060379952              # double 0.45411309620103169
	.quad	0x3feec436eb2e1d3b              # double 0.96145196851367786
	.quad	0x3fc988b6d4c79e30              # double 0.19948468579899403
	.quad	0x3fc75fd70cc49574              # double 0.18261230586464772
	.quad	0x3fe3e1ce6766c5c2              # double 0.62131424136730851
	.quad	0x3fe2ac1e9726be10              # double 0.58351068040605192
	.quad	0x3feb4d72d0361422              # double 0.85320416132220012
	.quad	0x3fb1ce6e81f93538              # double 0.069556147319606576
	.quad	0x3fe74c2dee97c7cf              # double 0.72804924583601316
	.quad	0x3fd4820d216adbf6              # double 0.32043770087642487
	.quad	0x3fed407aafe9f350              # double 0.91412100179841538
	.quad	0x3fbab61498fcbde8              # double 0.10434082732239569
	.quad	0x3fd4847d6ef476a8              # double 0.32058654628222394
	.quad	0x3fe7648180edd586              # double 0.73101878339245796
	.quad	0x3fecba1605c6d993              # double 0.89771557930252965
	.quad	0x3fdea1f6a8a99f3a              # double 0.47863546820598268
	.quad	0x3fc37b0387f42c50              # double 0.15219158304566571
	.quad	0x3fed4e3b970c9ad4              # double 0.91579989911846348
	.quad	0x3fef8ea0c8eabc5f              # double 0.98616065255727025
	.quad	0x3f9a1bb66477eb40              # double 0.025496339685541658
	.quad	0x3f8e15d01d182380              # double 0.014690042388808555
	.quad	0x3fe2af460194447c              # double 0.58389568623000754
	.quad	0x3fc9d54e8ee86878              # double 0.2018221090118606
	.quad	0x3fd5d062a1ab5d5a              # double 0.34084382808710745
	.quad	0x3fbdf183127d6580              # double 0.1169664306775271
	.quad	0x3fd38b0fe35d80aa              # double 0.30536267474782142
	.quad	0x3fcc56b22d91f2b0              # double 0.22139575219252583
	.quad	0x3fd68221afea5638              # double 0.35169260195957319
	.quad	0x3fecc7b1489539ef              # double 0.89937652756071695
	.quad	0x3fe2339a05851f33              # double 0.56879902914167813
	.quad	0x3fda2aa3f5bc170e              # double 0.40885256764919198
	.quad	0x3fe8af99a69b2287              # double 0.77143557110055461
	.quad	0x3feb64bbf0968dcd              # double 0.85604664792884366
	.quad	0x3fee5deea8a3ece7              # double 0.94896634042325168
	.quad	0x3fd1d27b3aee0d08              # double 0.27847176318046296
	.quad	0x3fd373c4e4fa3ab6              # double 0.30394098626212995
	.quad	0x3fe6242ac84f5131              # double 0.69191493151678263
	.quad	0x3fdc2d72ecee524e              # double 0.44027398240840376
	.quad	0x3feb3c6e27429e5e              # double 0.85112674396527743
	.quad	0x3fe94e73c2fe4b74              # double 0.79082668385159005
	.quad	0x3fe47fa7977ed1c9              # double 0.64058284367507057
	.quad	0x3fe84df791f46da1              # double 0.75951746470257231
	.quad	0x3fe9170574742996              # double 0.78406021828532135
	.quad	0x3fe6ea5a7ab02be1              # double 0.71610759699376214
	.quad	0x3fe2f7d67eaa5c3c              # double 0.59275364627217852
	.quad	0x3fe9a3a71da569f7              # double 0.80122714796317396
	.quad	0x3fe01fe836e9ed3e              # double 0.50389490819308214
	.quad	0x3fc9c93dac78abc4              # double 0.20145388528302821
	.quad	0x3fe2df88581f00f8              # double 0.58978669367937098
	.quad	0x3fe0b71dd906c474              # double 0.52235309970832455
	.quad	0x3fd1a6028dabf252              # double 0.27575744471667918
	.quad	0x3fe354f22397a22d              # double 0.60411936713814429
	.quad	0x3fe6eaef6cd3c2bf              # double 0.71617861991224874
	.quad	0x3fd1eb81d7c99782              # double 0.27999921868319444
	.quad	0x3fcd22b8ba430bc0              # double 0.22762211890048256
	.quad	0x3fe9a49d70d2a46c              # double 0.80134460483271885
	.quad	0x3fc95c1bbc8f590c              # double 0.19812342364338809
	.quad	0x3fe7642a76969fb2              # double 0.7309772792987046
	.quad	0x3fe73fc927df88b4              # double 0.72653634822588353
	.quad	0x3fedbb268592e254              # double 0.92909551705003901
	.quad	0x3fbf242421e5b798              # double 0.1216452200657997
	.quad	0x3fe2c7e406c9a8c3              # double 0.58690072370270518
	.quad	0x3fe9ee36973bcf51              # double 0.81032876527613429
	.quad	0x3fe8410d1f6f6b27              # double 0.75794082774823301
	.quad	0x3fddb4557193cc02              # double 0.46413169948135657
	.quad	0x3feb2333d631f413              # double 0.84804717860208922
	.quad	0x3fe675d9ed916989              # double 0.70188614273074379
	.quad	0x3fe7087e6ad03e62              # double 0.71978684293749162
	.quad	0x3feed8765f75d0a6              # double 0.96392363209317433
	.quad	0x3fa2fd20f0aead20              # double 0.037087468509833466
	.quad	0x3fd75a4cc5f36938              # double 0.36488646823058302
	.quad	0x3fab48597ed66780              # double 0.053286358578772841
	.quad	0x3fc67a565a9e06f0              # double 0.17560843872711684
	.quad	0x3fe861a7cb07fdbc              # double 0.76192083029302848
	.quad	0x3fef6666aea3f741              # double 0.98125013455840115
	.quad	0x3fecbbcbe100d439              # double 0.89792436548180554
	.quad	0x3fc2c27164e54874              # double 0.14655892778916135
	.quad	0x3fef180a8e9e4e1b              # double 0.97168472151901441
	.quad	0x3fd6d63bcfac8710              # double 0.35682578354509165
	.quad	0x3fd688e44761bd98              # double 0.35210520716551619
	.quad	0x3fd7f09602d320b8              # double 0.37405920291758887
	.quad	0x3fe90044b401dba3              # double 0.78128276021640308
	.quad	0x3fe0652af3aafa89              # double 0.51234958258994923
	.quad	0x3fb0e785f2a78e78              # double 0.066032764188600157
	.quad	0x3fc2d8bbd644b854              # double 0.14723918878866249
	.quad	0x3f999d4badf64d40              # double 0.025014097683720538
	.quad	0x3fc8b727b85dc1ec              # double 0.19308945181138826
	.quad	0x3fc0735d0c2b19d4              # double 0.12852061361463873
	.quad	0x3fe457f4b2988835              # double 0.63573679811475492
	.quad	0x3febec6b0e6d0840              # double 0.87260964219627368
	.quad	0x3feefa2f78c08cce              # double 0.96804021438983923
	.quad	0x3fb07e69db371da8              # double 0.064428916949614945
	.quad	0x3fb881843480c640              # double 0.095726263826485969
	.quad	0x3fb31e4f08a553e0              # double 0.074681224451822015
	.quad	0x3fdb68db4d7fda74              # double 0.4282749420957892
	.quad	0x3fe033a82379e7f0              # double 0.50630576065964128
	.quad	0x3fe7b1de2342e32a              # double 0.74046236884087091
	.quad	0x3fa32e02f1f69ea0              # double 0.037460414921324459
	.quad	0x3fd669565c7cffae              # double 0.3501792815404724
	.quad	0x3fd1c7cc27aabf2a              # double 0.27781967042664013
	.quad	0x3fdcee0ee458ca2c              # double 0.4520299177121696
	.quad	0x3fd71f197eb753f0              # double 0.36127316832181489
	.quad	0x3fd54abd8226c632              # double 0.33268678388694461
	.quad	0x3fe857dcfd360d4a              # double 0.76072549300480685
	.quad	0x3fe1a6b1bddd3f38              # double 0.55159842570171858
	.quad	0x3fe09dce1237ae7d              # double 0.51926330144983945
	.quad	0x3fe71dca40b2873a              # double 0.72238648067671041
	.quad	0x3fe95faf469c037b              # double 0.7929302577104943
	.quad	0x3fef8a6233bad4cd              # double 0.98564252952078279
	.quad	0x3fe5b0d9c5c4d325              # double 0.67783821703651326
	.quad	0x3fef94438a4c0aca              # double 0.98684861193790963
	.quad	0x3fe85044dcab8439              # double 0.75979846095663739
	.quad	0x3fe7b28da7cce451              # double 0.74054606221683106
	.quad	0x3fe13d557d43db34              # double 0.53873705354531021
	.quad	0x3f763f26ec839a80              # double 0.005431320234697723
	.quad	0x3fe41caa53f7851e              # double 0.62849918746738687
	.quad	0x3feca249e4d7184b              # double 0.89481062598566419
	.quad	0x3fe6162d4073145f              # double 0.6902071245937228
	.quad	0x3fedbea0bac4c44d              # double 0.92952000120397715
	.quad	0x3fc988cbf7ec9c38              # double 0.19948720555950827
	.quad	0x3fe432ec2cc38b11              # double 0.63121613257348674
	.quad	0x3fe349a88ca5ca85              # double 0.60274150343168797
	.quad	0x3fe96b981b3539bd              # double 0.79438405336423268
	.quad	0x3fde64207bf7ff24              # double 0.47486126047441446
	.quad	0x3fd3f99584bb81fa              # double 0.3121084018912651
	.quad	0x3fd77ad1575af238              # double 0.36687119990145645
	.quad	0x3fdb0e60a79459f4              # double 0.42275253644166289
	.quad	0x3fe27f6fa084ba09              # double 0.57805615760099827
	.quad	0x3fd9dce843536b88              # double 0.40410811018744441
	.quad	0x3fd87bf3be6fa908              # double 0.38256543729097858
	.quad	0x3fe07e834962e241              # double 0.51544346173529487
	.quad	0x3fcaac01a41a1370              # double 0.20837421906267251
	.quad	0x3fd4f4cbe315a9d4              # double 0.32744118858559301
	.quad	0x3fe49957dfdcd7aa              # double 0.64371865962197217
	.quad	0x3fde00757d384858              # double 0.46877801159383159
	.quad	0x3fc98f74e341beb8              # double 0.19969044777416456
	.quad	0x3fe1f1e6bf0efa80              # double 0.56077897373309327
	.quad	0x3fe083b6d364bce6              # double 0.51607838905138403
	.quad	0x3fee1b22e0939720              # double 0.94081252920725333
	.quad	0x3fea08a6186c45ef              # double 0.81355576295953635
	.quad	0x3fa17639e5b4bc60              # double 0.034105119028361441
	.quad	0x3fe301af98cd4b2d              # double 0.59395580143095617
	.quad	0x3fbcbd58843e4ee0              # double 0.11226418713186659
	.quad	0x3fe967ea94a7c741              # double 0.79393509897474968
	.quad	0x3fe7db6a893cc0a5              # double 0.74553419880068772
	.quad	0x3fe300453a231485              # double 0.59378301005257639
	.quad	0x3fecfca62161e062              # double 0.90584093589769688
	.quad	0x3fc3dd3a47edc884              # double 0.15518883239889558
	.quad	0x3fdf84366638a664              # double 0.49244461042926546
	.quad	0x3fe78d323df62ecb              # double 0.73598587133297977
	.quad	0x3fd7af8ec21f0f96              # double 0.37009018857156073
	.quad	0x3fd3ab89487d1612              # double 0.30734474257437328
	.quad	0x3fc67cf6729930d8              # double 0.17568855853676868
	.quad	0x3fdf619ae9cee73e              # double 0.49033234436830131
	.quad	0x3fe45a19404e14bb              # double 0.63599836883135852
	.quad	0x3fe3b67d0fa41e4a              # double 0.61602643065357054
	.quad	0x3f127bcf1d5be000              # double 7.050944926934033E-5
	.quad	0x3faf7b3ffc440150              # double 0.061487197441240427
	.quad	0x3fd1b767fb5b6eb0              # double 0.27681922480199272
	.quad	0x3fe5a4d4164f29dd              # double 0.67637066228172282
	.quad	0x3fec8ca855b8cb46              # double 0.89217011206196939
	.quad	0x3fd47e9e5ce167de              # double 0.32022818632469618
	.quad	0x3fc1229f7e510704              # double 0.13386911075399877
	.quad	0x3fe5d00abb60d41b              # double 0.68164574239074527
	.quad	0x3fe79cee6176083b              # double 0.73790663752902874
	.quad	0x3fe74349c7cf8b83              # double 0.72696389222652191
	.quad	0x3fee5fa58a34c562              # double 0.94917561524759386
	.quad	0x3fd4fa4b7171dc32              # double 0.32777677610960432
	.quad	0x3feb2b6d6fca4d81              # double 0.84905120691330194
	.quad	0x3feab105092e0cc1              # double 0.8341088465971539
	.quad	0x3fc6eb190b4ab4ac              # double 0.1790496163497769
	.quad	0x3fd38dbece1c4f1e              # double 0.3055264485167174
	.quad	0x3fed314837bdc53e              # double 0.91226588141413578
	.quad	0x3febec27fa837500              # double 0.87257765701693302
	.quad	0x3fd126154b6c8816              # double 0.26794941297168984
	.quad	0x3f9e8cecb7ca8420              # double 0.029834459989278028
	.quad	0x3fe3c234b3c386b3              # double 0.61745677099334839
	.quad	0x3fcd2234dce40608              # double 0.22760639939956229
	.quad	0x3feeaa6a2dafc5e7              # double 0.95830258296171855
	.quad	0x3fd5b1733f7e6a2e              # double 0.33895569992606311
	.quad	0x3fd7e87314402a14              # double 0.37356259324647678
	.quad	0x3fbb3bf7dec5c6f8              # double 0.10638379277022725
	.quad	0x3feb17525f6b144d              # double 0.84659689556486628
	.quad	0x3fe8c91e84500be5              # double 0.77455068437882046
	.quad	0x3fa668301da335e0              # double 0.043763640992988462
	.quad	0x3fc5e462486bc014              # double 0.17103222404648533
	.quad	0x3fec486b554a12e7              # double 0.88384024293972352
	.quad	0x3fe96f6aef60bd3d              # double 0.7948507953023306
	.quad	0x3fcf2201af859394              # double 0.24322529859923903
	.quad	0x3fe96652479402b9              # double 0.79374040584669736
	.quad	0x3fd50a70f8165ce2              # double 0.32876228549271336
	.quad	0x3fea355eca3be398              # double 0.81901492594544134
	.quad	0x3fc358fc82af6144              # double 0.15115314847094841
	.quad	0x3fe7968c80f39916              # double 0.7371275442681362
	.quad	0x3fcbe667b9d9ed90              # double 0.21796890806932057
	.quad	0x3fd77d6557f7fabc              # double 0.36702855673494716
	.quad	0x3fe457293c1a9a43              # double 0.63563977946325456
	.quad	0x3fea050ff5c167c8              # double 0.81311796187514407
	.quad	0x3fe223ff78571a24              # double 0.56689427856401098
	.quad	0x3fdfae3eedcc3a02              # double 0.4950101206058265
	.quad	0x3fe08f0e45ab75c9              # double 0.51746286017776655
	.quad	0x3fec1778e82774e8              # double 0.87786527006724402
	.quad	0x3fdb39dfdc2c6aac              # double 0.42540737630194303
	.quad	0x3fe73e70dbc4f936              # double 0.72637217448917712
	.quad	0x3fbc3978443bdaf8              # double 0.11025191942085744
	.quad	0x3fead0813650f5ca              # double 0.83795223816530862
	.quad	0x3fd69b1270b64100              # double 0.35321484572433803
	.quad	0x3fd9f9b87a52a35a              # double 0.40586673684679442
	.quad	0x3fdab62bc92275f4              # double 0.41736883775760636
	.quad	0x3fd3b184f1bb13c6              # double 0.30770991903801492
	.quad	0x3fe7da517404b399              # double 0.74540016803586007
	.quad	0x3fb33bbbca7f8f68              # double 0.075130211771065825
	.quad	0x3fc0f0979cf098ec              # double 0.13234229243352702
	.quad	0x3fe627810ce4dc4d              # double 0.69232227819782965
	.quad	0x3feaf683f135223d              # double 0.84259221182680444
	.quad	0x3fd3588187955f1a              # double 0.30227697601866199
	.quad	0x3fc25a22afbb8c0c              # double 0.14337571697896612
	.quad	0x3fd542985f3e8936              # double 0.3321896486396726
	.quad	0x3fe1e20d621b2752              # double 0.55884427224484967
	.quad	0x3f60ca3113887200              # double 0.0020495375176905473
	.quad	0x3fd19b8103b185ce              # double 0.27511620865524555
	.quad	0x3fc8b1f8deed0558              # double 0.19293127903987783
	.quad	0x3fe76b64c15a6ad2              # double 0.73185956730170632
	.quad	0x3fc4fbaefb9b8314              # double 0.16393077168961467
	.quad	0x3fce180862a0d2f0              # double 0.23510842147665967
	.quad	0x3feb1482464d512f              # double 0.84625352602828297
	.quad	0x3fd0abdbf6a1e3b6              # double 0.26048945508187715
	.quad	0x3fd695a3e6ddf8b4              # double 0.35288331552136332
	.quad	0x3fe61e404d072421              # double 0.69119277042876004
	.quad	0x3fe0661460eb8c64              # double 0.51246088914593857
	.quad	0x3fc0d87df1a1c524              # double 0.13160681055482215
	.quad	0x3fd7f00fb4347b1a              # double 0.37402718160767423
	.quad	0x3fcdb25fb91d5d3c              # double 0.23200603998950864
	.quad	0x3fcbc5a6b0ddc0e4              # double 0.21696933399244422
	.quad	0x3fd7e887a66a77c4              # double 0.37356749774505382
	.quad	0x3fefd1577600c837              # double 0.99430439994308172
	.quad	0x3fea5517e6efdcfd              # double 0.82288737397075773
	.quad	0x3fa4fc6a0b59f400              # double 0.040988267789522581
	.quad	0x3fcb089334a96fd8              # double 0.21119918891315481
	.quad	0x3fd97e8eeb4efbf6              # double 0.39834950427388038
	.quad	0x3fe03d698a237056              # double 0.50749661426699322
	.quad	0x3fd0f953044ef984              # double 0.26521754666091391
	.quad	0x3fcdc385b37ac458              # double 0.2325293661465675
	.quad	0x3fe8eb101993a4a4              # double 0.77869420047240511
	.quad	0x3fe83b94c788ded0              # double 0.75727309199916171
	.quad	0x3fe0654ab963b02b              # double 0.51236473282688644
	.quad	0x3fd1d7e26c15c7f2              # double 0.27880154185470396
	.quad	0x3fe2260adb5b4918              # double 0.56714384883005931
	.quad	0x3fc3f4205daeb8b4              # double 0.1558876473840819
	.quad	0x3fe39291a48e5fc6              # double 0.61164171352265195
	.quad	0x3fe83de596f5bcbd              # double 0.75755576595647478
	.quad	0x3fe36ca3eeaee8e1              # double 0.60701176278896807
	.quad	0x3fe39e272a7971a2              # double 0.6130557851388867
	.quad	0x3fdc1eb6e5d140f4              # double 0.43937466090302668
	.quad	0x3fa2cf1849c071e0              # double 0.036736258509538322
	.quad	0x3fda8f1807473606              # double 0.41498375616797067
	.quad	0x3fe51a7bb8ebe68f              # double 0.65948282353856935
	.quad	0x3fdf5efdae879786              # double 0.49017278713142109
	.quad	0x3fe0e1439b76268f              # double 0.52749805797175664
	.quad	0x3fb1bfa070c63b08              # double 0.069330241711423324
	.quad	0x3fd31dfb6cb21322              # double 0.29870496382527467
	.quad	0x3fd43dcb7e8a57b2              # double 0.31627166135273932
	.quad	0x3fcbc35a5998b058              # double 0.21689919829202853
	.quad	0x3fdb090db844d8bc              # double 0.42242758746159459
	.quad	0x3fef6dc219bbf6e3              # double 0.98214821840494115
	.quad	0x3feca46b0cc72c61              # double 0.89507057662684641
	.quad	0x3fea40166a29e8e0              # double 0.82032318816279925
	.quad	0x3fbaa6d921258d40              # double 0.10410840090985563
	.quad	0x3f980b9f66f4bd60              # double 0.023481836947380486
	.quad	0x3fddc1a56384884e              # double 0.46494421690488685
	.quad	0x3fed71438e5b69f6              # double 0.92007615856283453
	.quad	0x3fdce07eb62fcb10              # double 0.45120208541554607
	.quad	0x3fed3bb339a0c760              # double 0.91353760962941166
	.quad	0x3fdbfdcd65ea36e8              # double 0.43736586525561316
	.quad	0x3fe1ac31ad3258ba              # double 0.55226978137468241
	.quad	0x3fe119376b3a3a79              # double 0.53432818358289957
	.quad	0x3fe311984aa1afe2              # double 0.59589781357271598
	.quad	0x3fe28067007fb995              # double 0.5781741151566161
	.quad	0x3fd7c871fd3dcab8              # double 0.37160920839884737
	.quad	0x3febff37b012bf28              # double 0.87490448369314766
	.quad	0x3fe2d8715e77176d              # double 0.58892124605402574
	.quad	0x3fd21e5fdb5a6690              # double 0.28310390874103408
	.quad	0x3faf057ba7933190              # double 0.060588707166604583
	.quad	0x3fb9d6ee26f38928              # double 0.10093582583389049
	.quad	0x3fdc22fc95d9d08a              # double 0.43963541635390213
	.quad	0x3fe5bd163a0d770b              # double 0.67933188761136998
	.quad	0x3fe3b597b10599a7              # double 0.61591705870232694
	.quad	0x3fa5ff7d5bceff20              # double 0.042964856583692645
	.quad	0x3fde38d9d79c69b6              # double 0.47221990638504552
	.quad	0x3fb15b21a2d61d48              # double 0.067796804671265254
	.quad	0x3fea5a389a02fc09              # double 0.82351331787492754
	.quad	0x3feb58eb526ab1c5              # double 0.85460439774538399
	.quad	0x3fb8b4b6a50c76d0              # double 0.096507468504991367
	.quad	0x3fac06c13c8d07c0              # double 0.054739035264460778
	.quad	0x3fbeff42d98ce1e0              # double 0.12108247576987408
	.quad	0x3feb9c46ff1d66c6              # double 0.86282682253951104
	.quad	0x3fc19f2f57271a9c              # double 0.13767043834214554
	.quad	0x3fef1a0979f98875              # double 0.97192834685507867
	.quad	0x3fd0ffac16934740              # double 0.26560499386424752
	.quad	0x3fc5ba01bc9cb57c              # double 0.16973897656991344
	.quad	0x3fe7c321f408897a              # double 0.7425699011112521
	.quad	0x3feb7f2c71680762              # double 0.85927412175827222
	.quad	0x3fd470a6325edd2a              # double 0.31937556189537253
	.quad	0x3fe704960709d30e              # double 0.71930981993372867
	.quad	0x3fe8f591a512ffc9              # double 0.77997667542512616
	.quad	0x3fd4110a807dabf0              # double 0.3135401015085213
	.quad	0x3fd24f86ecd1295c              # double 0.28610394598640254
	.quad	0x3feabd088d470fae              # double 0.8355753669097703
	.quad	0x3fd91d6d8c8d84ec              # double 0.39242113805637646
	.quad	0x3fda988e7f7b3bd8              # double 0.41556131791452122
	.quad	0x3fe3ce7230f3e94b              # double 0.6189509349926906
	.quad	0x3fe89b8bd90e8d55              # double 0.76898758310236792
	.quad	0x3fd227e8f0edd8b8              # double 0.28368590858680021
	.quad	0x3fe898f908b292d0              # double 0.76867343615284689
	.quad	0x3f9316f626303960              # double 0.018642278748353447
	.quad	0x3fe20fec42b641f6              # double 0.5644437125175148
	.quad	0x3feb3dc0142d2aee              # double 0.85128787937841621
	.quad	0x3fea8831fd4cf9af              # double 0.82912539933004392
	.quad	0x3fd7888c7054c898              # double 0.3677092644676434
	.quad	0x3fdcdf5a91e9ac4a              # double 0.4511324334077399
	.quad	0x3fe22c7cac12afa2              # double 0.56793054206854188
	.quad	0x3fd9146e8c2e8f58              # double 0.39187205972324568
	.quad	0x3fd04bf5dbcedf5c              # double 0.25463625398287149
	.quad	0x3fdec01d3d7d7996              # double 0.48047572140594619
	.quad	0x3feb8f0a2488091e              # double 0.86121089110409677
	.quad	0x3fedca37d75aa3dd              # double 0.93093483029690172
	.quad	0x3fdf4e2fa2e67e88              # double 0.4891470995735081
	.quad	0x3fedc25b7100a4c7              # double 0.9299752432899816
	.quad	0x3fe27e861e2ec475              # double 0.57794481177383139
	.quad	0x3feaef6122a716ac              # double 0.84172112243751007
	.quad	0x3fe9e627b737ac64              # double 0.80934510979330953
	.quad	0x3fc1d69e5ca3b3fc              # double 0.13936213992511159
	.quad	0x3fd69b786fa7309e              # double 0.35323916343328132
	.quad	0x3fe74c56076fd319              # double 0.72806836559775256
	.quad	0x3fe9b13c3c708e57              # double 0.80288516811965394
	.quad	0x3fc6ca4fd5711174              # double 0.17804906770664852
	.quad	0x3fea190180e8f66f              # double 0.81555247476326354
	.quad	0x3fe0729593329d40              # double 0.5139873385386764
	.quad	0x3fed0bbc99390a1c              # double 0.90768270422296692
	.quad	0x3fed28470bf0ece7              # double 0.91116669018029206
	.quad	0x3fc2d8d5e3d27094              # double 0.14724229454157423
	.quad	0x3fe79a98b202a7a3              # double 0.73762163894319988
	.quad	0x3fe9bccd3796c766              # double 0.80429707390997573
	.quad	0x3fee54afe2f42160              # double 0.9478377754867715
	.quad	0x3fe2c1fd938b3872              # double 0.58618048493532471
	.quad	0x3fe660f14bcbccea              # double 0.69933380893635655
	.quad	0x3fe50086fb665338              # double 0.65631436444764457
	.quad	0x3fd59c4d1d35ba44              # double 0.33766486980940535
	.quad	0x3feabafb63610fa2              # double 0.83532494935979096
	.quad	0x3fed9cfa3cac6a8c              # double 0.92541229105275268
	.quad	0x3fc6104791f46174              # double 0.17237181307497063
	.quad	0x3feecef0cee6cae9              # double 0.96276131067710679
	.quad	0x3fcff93b2aee53f4              # double 0.24979343029249856
	.quad	0x3fd5d01ebd6a7ed8              # double 0.34082764146476796
	.quad	0x3fe014876742c84d              # double 0.50250597160471389
	.quad	0x3fd72a31358dc312              # double 0.36195020894869956
	.quad	0x3feb607416ac8a0a              # double 0.85552410534393286
	.quad	0x3fe51ca81cfd0d27              # double 0.65974813138783339
	.quad	0x3fea704c11d96c6c              # double 0.82620814787095531
	.quad	0x3fdc4f36dabd7992              # double 0.44233485566464836
	.quad	0x3fec8fd588cb99c7              # double 0.89255787580332757
	.quad	0x3fc16d3ea8c1cf78              # double 0.13614638557521253
	.quad	0x3fdba57d0a8e6eee              # double 0.43197561293503284
	.quad	0x3fe6db8b132eb6b3              # double 0.71429971453263474
	.quad	0x3feb91b5c8ac68c1              # double 0.86153687662160661
	.quad	0x3fe8992d8c2cb83a              # double 0.7686984765803182
	.quad	0x3fd5e8ab36d53d46              # double 0.34232597689420563
	.quad	0x3fd72f97232247d8              # double 0.36227968627019669
	.quad	0x3fe7dd9fb0edb108              # double 0.74580368572563405
	.quad	0x3fed4df04ea489a9              # double 0.91576400146395998
	.quad	0x3fe6a7e9a82c6b26              # double 0.70799715849293388
	.quad	0x3fb81654bfde2950              # double 0.094090744822243665
	.quad	0x3fe19dfe19b805d0              # double 0.55053620360575373
	.quad	0x3fded2016941edfe              # double 0.48156771925980013
	.quad	0x3fef0f01b7abe45c              # double 0.97058187363939962
	.quad	0x3fed3a474af4eb7a              # double 0.91336407318099977
	.quad	0x3fd37d3bc095f608              # double 0.30451864058690647
	.quad	0x3fd506879fbf3eb6              # double 0.3285235462217132
	.quad	0x3fe7c85d2da0fcc2              # double 0.74320849334608163
	.quad	0x3fb1408ecad1e028              # double 0.067391323582228879
	.quad	0x3fe59ce57427a2f4              # double 0.67540238081445958
	.quad	0x3fe532a0960c9253              # double 0.66243008905855516
	.quad	0x3fe54e4246e980d4              # double 0.66580308771156149
	.quad	0x3fd24a38b6a5490e              # double 0.28578012310494294
	.quad	0x3fd4293ab9fd9dd4              # double 0.31501644290116571
	.quad	0x3fd2e66ecad3ed4e              # double 0.29531450087934707
	.quad	0x3fefc78324856b77              # double 0.99310452588120667
	.quad	0x3fe2c1ed24258900              # double 0.58617264804732372
	.quad	0x3fe385f23f35e5fe              # double 0.61010086389359208
	.quad	0x3faee7dba09ef870              # double 0.060362685544064543
	.quad	0x3fc544e7e8fdfb8c              # double 0.16616534115379655
	.quad	0x3fdb00a41a799dee              # double 0.42191412530379935
	.quad	0x3fd4cc7ebb94d926              # double 0.32498138731479498
	.quad	0x3fe5708fb86a32cf              # double 0.66999040621302608
	.quad	0x3fe66195115874f4              # double 0.69941190135764808
	.quad	0x3fec7d5a618acf61              # double 0.89030188609329397
	.quad	0x3fe981be0ec4a041              # double 0.79708769688023307
	.quad	0x3f8000d4f6326e00              # double 0.0078140866883620319
	.quad	0x3fdadf20b10b1f18              # double 0.41986863412283659
	.quad	0x3fe53a3344ad14eb              # double 0.6633545247392737
	.quad	0x3fef4b372473e506              # double 0.97793156737967091
	.quad	0x3fd94af511cc4862              # double 0.39520003069003995
	.quad	0x3fd54bf86556fb46              # double 0.33276185890638421
	.quad	0x3faa85cab6ee41e0              # double 0.051802000837714024
	.quad	0x3fe66d6cddebbc89              # double 0.70085757583537245
	.quad	0x3fe9093d4205fb2b              # double 0.78237784285724865
	.quad	0x3feb4ac8081d5de9              # double 0.85287858567147368
	.quad	0x3fd5761afcd699a8              # double 0.3353335827945565
	.quad	0x3fe506888dfa976b              # double 0.65704753618477463
	.quad	0x3fe615843afabafa              # double 0.69012652892510506
	.quad	0x3fe3d811ace25aeb              # double 0.62012561575360559
	.quad	0x3fdeee006afb57e2              # double 0.48327646682207448
	.quad	0x3feb0e5ea2b69758              # double 0.845504110144911
	.quad	0x3fdb33faa4dfbeb6              # double 0.42504755116440707
	.quad	0x3fe67413b7044d6e              # double 0.70166955705137268
	.quad	0x3fe2ef0268c22639              # double 0.59167595348953406
	.quad	0x3fa57050fccd05e0              # double 0.041872530803185759
	.quad	0x3fbd2627520135c8              # double 0.11386342765873458
	.quad	0x3fd3cc2be33a4c12              # double 0.3093366354962096
	.quad	0x3fb887b85867cbe0              # double 0.095820924361575077
	.quad	0x3fe139cd41ca4938              # double 0.53830588197369078
	.quad	0x3fd7cb33cbed6fc6              # double 0.3717774859885562
	.quad	0x3fb1d5e217e4bc70              # double 0.069669848283170799
	.quad	0x3fe6cdfbf095a9ff              # double 0.71264454831299406
	.quad	0x3fd8a7c0211f5b18              # double 0.38523867830865433
	.quad	0x3faac6d69e0163e0              # double 0.052298266208431476
	.quad	0x3fdea6b7eb92052a              # double 0.47892568592949891
	.quad	0x3fe064e74e9f76dd              # double 0.51231732708012212
	.quad	0x3fe95cdd2a61eb3a              # double 0.79258592870551259
	.quad	0x3fed795b8c7ef158              # double 0.92106416168784744
	.quad	0x3fe7d08db741c368              # double 0.74420820038185997
	.quad	0x3fed24355907b01f              # double 0.91066996945074041
	.quad	0x3fe36ac9e9bdeb94              # double 0.60678573277197012
	.quad	0x3fb6679fa7553248              # double 0.087518671372159962
	.quad	0x3fec927f76480561              # double 0.89288304426024123
	.quad	0x3fe2ea0bd460f669              # double 0.5910700939200072
	.quad	0x3fd2a084f28387d2              # double 0.29104732211100981
	.quad	0x3fe22f354e83e05b              # double 0.56826272330273342
	.quad	0x3febd95f908e4631              # double 0.87028482659861173
	.quad	0x3fe7284e8ece32d0              # double 0.72367027179424248
	.quad	0x3fea59e161c78b08              # double 0.82347172830154225
	.quad	0x3fd1935f46d169b4              # double 0.27461988368818457
	.quad	0x3fe5d908417a54b3              # double 0.68274319447177445
	.quad	0x3fe2925358a274d1              # double 0.58036200820392925
	.quad	0x3fcafcdb4e2d7c20              # double 0.21084157292622852
	.quad	0x3fd275284e4972c8              # double 0.28840072293477848
	.quad	0x3feec1f2fe8b69c6              # double 0.96117543903101743
	.quad	0x3feefc79ca2e3deb              # double 0.96831979263691658
	.quad	0x3feb96e18a7e68e2              # double 0.86216809320037791
	.quad	0x3fd01d39729d1fa2              # double 0.2517837161326445
	.quad	0x3fe67c198f6027f4              # double 0.70264890673683889
	.quad	0x3fe8b5ee9025c649              # double 0.77220848230189987
	.quad	0x3fdfd00c22bf4bfc              # double 0.49707320588385051
	.quad	0x3fe223640ad80ef1              # double 0.56682016485180331
	.quad	0x3fcae54874b9f57c              # double 0.21012216281443929
	.quad	0x3fb56a29b4eeb240              # double 0.083651167557669659
	.quad	0x3fd745f1b9fcee54              # double 0.36364405787364729
	.quad	0x3f819c7c161da000              # double 0.0085992521523650112
	.quad	0x3fe91aa384584395              # double 0.78450179909315187
	.quad	0x3fba06c24777f020              # double 0.10166563267552009
	.quad	0x3fe16f9b983c3b92              # double 0.54487399800733471
	.quad	0x3fb9272424c65b30              # double 0.098253497102956499
	.quad	0x3fe1631a81ba6869              # double 0.54334760034113316
	.quad	0x3fcbecbe4f792ce8              # double 0.21816233521017314
	.quad	0x3fcab1e57c808a7c              # double 0.20855396823124639
	.quad	0x3fec788d0f29739b              # double 0.88971569978058385
	.quad	0x3fc4bed1a6b7ff68              # double 0.16207333221972964
	.quad	0x3fdc243d2d139d8a              # double 0.43971185113920142
	.quad	0x3fe2006beb9e1fd7              # double 0.56255146044804405
	.quad	0x3fe48d426a802db7              # double 0.64224358368794909
	.quad	0x3fe7619116edae33              # double 0.73066000440798573
	.quad	0x3f9508284de341c0              # double 0.020538930658234866
	.quad	0x3feda5f0a02e450f              # double 0.92650634084034944
	.quad	0x3fed2e3665721f42              # double 0.91189117253905061
	.quad	0x3fe60c23119761ad              # double 0.68898156581695036
	.quad	0x3fee6dcc1f3bee3c              # double 0.95090299702082559
	.quad	0x3fe1f6d1d566babb              # double 0.56137935333193612
	.quad	0x3fe1cca551b23cda              # double 0.55623117405221056
	.quad	0x3fe9f4b934bbd5cb              # double 0.81112346934849577
	.quad	0x3fd6db947cc6a3c0              # double 0.35715210137510311
	.quad	0x3fb582f9f5345ef0              # double 0.084029791225812777
	.quad	0x3febec09a96e0611              # double 0.8725632008719818
	.quad	0x3fe7a0cea0e4c47d              # double 0.73837977814231659
	.quad	0x3fcfcd717a45905c              # double 0.24845713110255729
	.quad	0x3fe77c6dc99b973a              # double 0.73393906952399068
	.quad	0x3fd6018989ed9ff4              # double 0.34384382695725368
	.quad	0x3fea6f89535291d8              # double 0.82611528657849487
	.quad	0x3fdb35999db08ef4              # double 0.42514648818381251
	.quad	0x3fd8d68d22cfea44              # double 0.38809517287851159
	.quad	0x3fe8932f03180219              # double 0.7679667530465536
	.quad	0x3fcb62f475207a6c              # double 0.21395736426434853
	.quad	0x3fdc372d6fbeabda              # double 0.44086776650027348
	.quad	0x3fc320cbc606d2a0              # double 0.14943835419912421
	.quad	0x3fe480603055fd09              # double 0.64067086639980275
	.quad	0x3fefc7b2e51ceb13              # double 0.99312729595780735
	.quad	0x3fd671b96a78a714              # double 0.35069117925250848
	.quad	0x3fea01ac7eb9e544              # double 0.81270432234956802
	.quad	0x3fe7e219d7b02166              # double 0.74635021330417994
	.quad	0x3fee91d566b02ab0              # double 0.95530195289878428
	.quad	0x3fcf13c0cad741b4              # double 0.24279031662309836
	.quad	0x3fd859cdcd1a9146              # double 0.38048119573274553
	.quad	0x3fe4c9130ff089ef              # double 0.64954522240833323
	.quad	0x3fd0f4a1a2648b08              # double 0.26493111475626607
	.quad	0x3fe978a03fc30425              # double 0.79597485021088643
	.quad	0x3feae8f70def70b1              # double 0.84093811723461986
	.quad	0x3f9ece0dcf4fc420              # double 0.030082908418936793
	.quad	0x3fdaff997d6c430c              # double 0.42185055969552887
	.quad	0x3fe23c5b81b32a3f              # double 0.56986785251621785
	.quad	0x3fd118354b5cadea              # double 0.267102550121051
	.quad	0x3fea75a166893182              # double 0.82685918833298921
	.quad	0x3fd89a1ce4f77df4              # double 0.38440630302463252
	.quad	0x3fe93f21d131133b              # double 0.78895655496362538
	.quad	0x3fd0cc94a7611044              # double 0.26248661370869208
	.quad	0x3feffd91cec48366              # double 0.99970331558516246
	.quad	0x3fec31a5992b6fca              # double 0.88106040874435476
	.quad	0x3fc1d5b3baa79110              # double 0.13933416952125599
	.quad	0x3fe13548f64a7427              # double 0.53775451759031945
	.quad	0x3fdcb4f0b7a25864              # double 0.4485437196066242
	.quad	0x3fbabf44b1194ed0              # double 0.10448102306082352
	.quad	0x3fe534aabd0dad75              # double 0.66267907070634513
	.quad	0x3fe0647327bcb9e0              # double 0.5122619415395171
	.quad	0x3fd54829235f6836              # double 0.33252933935512219
	.quad	0x3fe310ad8e4a3a4e              # double 0.59578588286405831
	.quad	0x3fed6cdb0de0914c              # double 0.91953804693597751
	.quad	0x3fcb1403c2f2f0f8              # double 0.21154829997056601
	.quad	0x3fec8547b82dd060              # double 0.89126955006078034
	.quad	0x3fbb6fb91924a910              # double 0.10717350829932948
	.quad	0x3fe65cf7dae2d612              # double 0.69884865523516937
	.quad	0x3fe4b4a3ac6bbbcc              # double 0.64705070186561775
	.quad	0x3fa75b772e243820              # double 0.045619701750283292
	.quad	0x3febae10dd0d6a95              # double 0.86499827551172592
	.quad	0x3fc68e990f43d1b8              # double 0.17622674222333301
	.quad	0x3fe41f4013d2b493              # double 0.62881473418896616
	.quad	0x3fde9050dcd44fd2              # double 0.47755834164968036
	.quad	0x3fad6b620e0dc760              # double 0.057459892478518126
	.quad	0x3fe7742bc72de57d              # double 0.73293103124812797
	.quad	0x3fe579399455e787              # double 0.67104796382703646
	.quad	0x3fd03787447c6044              # double 0.25338918388434117
	.quad	0x3fd792fc76af3aa6              # double 0.36834632482797713
	.quad	0x3fe2cbe720c1b738              # double 0.58739048383515691
	.quad	0x3fce30673fef6350              # double 0.23585215207892896
	.quad	0x3fc26f467f066dec              # double 0.14402085497282202
	.quad	0x3fb80dd5287d4b48              # double 0.093961069474329695
	.quad	0x3fc5628b2c82345c              # double 0.16706981347343486
	.quad	0x3fd70626bf9a8042              # double 0.359750449288189
	.quad	0x3fe931d3ec78704f              # double 0.78733249841344299
	.quad	0x3fe931a037b73b9f              # double 0.78730784303649048
	.quad	0x3fee91a6460d58da              # double 0.95527948076303493
	.quad	0x3fdb41e0bc00c6a8              # double 0.42589586600943585
	.quad	0x3fd81d4e1b358fa0              # double 0.37678864152098335
	.quad	0x3fa129ed06ac9770              # double 0.033522994103164616
	.quad	0x3fe996f2f2b08ea8              # double 0.79967639351203434
	.quad	0x3fc984070c686d98              # double 0.19934166055541591
	.quad	0x3fefb2c36f189cf6              # double 0.99057170580354525
	.quad	0x3fe9bf00b963410d              # double 0.80456577499902127
	.quad	0x3fee083088b763b4              # double 0.93849970533766802
	.quad	0x3fcdacef229d7cf8              # double 0.2318400305766557
	.quad	0x3fd2730fc7a1bd1a              # double 0.28827280516903075
	.quad	0x3fc64453f8e7da8c              # double 0.17396020558927139
	.quad	0x3febf4603fcca84e              # double 0.87358105145291076
	.quad	0x3fea1c42c4cb5a3f              # double 0.815949806560475
	.quad	0x3fe5f5def3cbba77              # double 0.6862635385167114
	.quad	0x3fd4ff6add2d2044              # double 0.32808944319959132
	.quad	0x3fb3d6ed5c1b69c0              # double 0.07749827860553804
	.quad	0x3fdd8f2e03b6cd50              # double 0.4618639980573862
	.quad	0x3fe3ecb4fc6b5c0b              # double 0.62264489460619765
	.quad	0x3fc2e0a23286713c              # double 0.14748027293252075
	.quad	0x3fc512016abecc10              # double 0.16461198532269394
	.quad	0x3feb484187920d37              # double 0.85257030943504375
	.quad	0x3fed00c570c01699              # double 0.90634414693404886
	.quad	0x3fd11704d5c47c14              # double 0.2670299613545819
	.quad	0x3fe640e0bb3bd86a              # double 0.69541966027351276
	.quad	0x3fe45393b7b0570f              # double 0.63520227314686106
	.quad	0x3fc69a9c64cc2344              # double 0.17659335061787307
	.quad	0x3fe1dcbe287d093b              # double 0.55819614322562161
	.quad	0x3fb6971f8add6018              # double 0.088243457224394084
	.quad	0x3fed9a13e1f3764f              # double 0.92505830889758467
	.quad	0x3f760ac4354a4c00              # double 0.0053813614255373565
	.quad	0x3fdd851f1040eaea              # double 0.46125008189453232
	.quad	0x3fd7f170be107050              # double 0.37411135254820227
	.quad	0x3feff68742f0991b              # double 0.99884379457651861
	.quad	0x3fec8bcef8f1a98d              # double 0.89206646558641156
	.quad	0x3fed671a4cec64fa              # double 0.91883578323464055
	.quad	0x3fea26aa1d6dc7e1              # double 0.81721978900736414
	.quad	0x3fe4f1334899da21              # double 0.65444339923744022
	.quad	0x3fcc858b68c7eb3c              # double 0.22282545677429677
	.quad	0x3fda39b470abd0e8              # double 0.40977202418367975
	.quad	0x3fa0b7c4bbc49810              # double 0.032652042313472518
	.quad	0x3fe46d32f391edff              # double 0.63832995960495953
	.quad	0x3fc395ac8331a458              # double 0.15300518423035459
	.quad	0x3facb870815c4970              # double 0.056094661513401145
	.quad	0x3fc1deaa908ac8f4              # double 0.1396077352306474
	.quad	0x3fe5adb49365326f              # double 0.67745426929611863
	.quad	0x3fe1947e1480f9d9              # double 0.54937652592326025
	.quad	0x3fea503d96bacb10              # double 0.82229499282252227
	.quad	0x3fe7be8cde43a6c4              # double 0.74201053057660049
	.quad	0x3fd705de3b6945be              # double 0.35973316003682132
	.quad	0x3fd5d6451b797178              # double 0.34120299990697545
	.quad	0x3f835af18797cb40              # double 0.0094508046631510689
	.quad	0x3fe0eb9162c9711f              # double 0.52875584883034665
	.quad	0x3fe56739a1030e1e              # double 0.66885072181361571
	.quad	0x3fc0c006935d514c              # double 0.1308601588776902
	.quad	0x3fecf4834472b812              # double 0.90484774941228552
	.quad	0x3fe3f502e5967e90              # double 0.62365860787754634
	.quad	0x3fe19e285f2d31af              # double 0.55055636014144749
	.quad	0x3fdda9c285f184fa              # double 0.46348631935514073
	.quad	0x3fe4eaef9b061cb4              # double 0.65367870596028022
	.quad	0x3feaa52e51d0ea1a              # double 0.83266368846608718
	.quad	0x3fcb7a436d68a808              # double 0.21466868250109905
	.quad	0x3fce4ee7887e4fa4              # double 0.23678297199932985
	.quad	0x3fc6ee7364f8cba0              # double 0.17915193968073329
	.quad	0x3fee01b0989f281d              # double 0.93770627793242378
	.quad	0x3fe7b215c51856e7              # double 0.74048889632350956
	.quad	0x3fd446fba396346a              # double 0.31683245635287582
	.quad	0x3fe50cd30a1f8c19              # double 0.65781547524636885
	.quad	0x3fe11ef155c07b90              # double 0.53502718685546036
	.quad	0x3fec16836015bf75              # double 0.87774819151489558
	.quad	0x3fb53cf3c1645e60              # double 0.082961306300029403
	.quad	0x3fb79cd10fd02628              # double 0.092236582146278168
	.quad	0x3f8d284964ebfc80              # double 0.014236997024907661
	.quad	0x3fd592dca1462374              # double 0.33708873509799919
	.quad	0x3fef035861b99b47              # double 0.96915835463446675
	.quad	0x3fe61aa105e1eef9              # double 0.69075060986457892
	.quad	0x3fe48410d6cbaf0e              # double 0.64112131073258793
	.quad	0x3fc1b878b8e61ba4              # double 0.13844212558998692
	.quad	0x3fe1d546b4356e58              # double 0.55728469082846299
	.quad	0x3f8dec75b5531f80              # double 0.014611167522516899
	.quad	0x3fc7e8668f040f3c              # double 0.18677980406948247
	.quad	0x3fcd4e714cf849c4              # double 0.22895637758536058
	.quad	0x3fe83c74206ac641              # double 0.75737959224188256
	.quad	0x3fc1faf09d548754              # double 0.14047057802332097
	.quad	0x3feae7c75ac79b98              # double 0.84079330187238366
	.quad	0x3fecc31f9971f883              # double 0.89881877870335847
	.quad	0x3fee464fa750008d              # double 0.94608290365433023
	.quad	0x3fd7a108cd8d3426              # double 0.36920375893970669
	.quad	0x3fec2d672714da55              # double 0.88054235108468026
	.quad	0x3fe911c77aacf988              # double 0.78342031440824744
	.quad	0x3fc1f1e6fc033cf8              # double 0.14019477181725626
	.quad	0x3fef6de099cd4266              # double 0.9821627620641038
	.quad	0x3feb81bc180f0647              # double 0.85958676051104355
	.quad	0x3fc94744199b13b8              # double 0.1974873662021801
	.quad	0x3fda393c5f876a3e              # double 0.40974339798927761
	.quad	0x3fea43f70560dc87              # double 0.82079649973356161
	.quad	0x3fe1521cff699853              # double 0.54127359280824761
	.quad	0x3fdf72eb505b4c48              # double 0.49138911101653493
	.quad	0x3fde926713e5095c              # double 0.47768570845450653
	.quad	0x3fc2ba649b6cb2ac              # double 0.14631326283542501
	.quad	0x3feb54524c0d5549              # double 0.8540431485550154
	.quad	0x3fd24066d446dee4              # double 0.28518076639328016
	.quad	0x3fc79837e80f83c4              # double 0.18433283644756504
	.quad	0x3fc864c1f9c25fbc              # double 0.19057488150860802
	.quad	0x3fc59859dd4d60fc              # double 0.16871188455366581
	.quad	0x3fee8fc4f150a9c6              # double 0.95504996425489064
	.quad	0x3fe8fe9b47ebbcd9              # double 0.78107990309754449
	.quad	0x3fd34efd3bc7cbbe              # double 0.30169611776289773
	.quad	0x3fc31e3e29b67848              # double 0.14936043774372565
	.quad	0x3fc4aa398a88ae14              # double 0.1614448477206315
	.quad	0x3fe3a0a1c82f8c01              # double 0.61335839365744971
	.quad	0x3fee86d73d173950              # double 0.95396005565434372
	.quad	0x3fe6dad809755cea              # double 0.71421434256890604
	.quad	0x3fd40e08896d10ae              # double 0.31335652752410226
	.quad	0x3fe3d87da0fdcb67              # double 0.62017709201459759
	.quad	0x3fd352b3efee0cfc              # double 0.30192278319027799
	.quad	0x3fe8e1ec7a487154              # double 0.77757858165163407
	.quad	0x3fe8773a09cf08c9              # double 0.76455404201285504
	.quad	0x3fdf1b17b76e5d2a              # double 0.4860286036796021
	.quad	0x3fd2d4ad1832ef08              # double 0.29423072207622214
	.quad	0x3faffa190504c400              # double 0.062454969275115957
	.quad	0x3fe9d7c0e2c914d5              # double 0.80758709234273829
	.quad	0x3fe6d62904392782              # double 0.71364260506491939
	.quad	0x3feac0caf601a89b              # double 0.83603427932873176
	.quad	0x3feb79f1c57225d4              # double 0.85863579333925565
	.quad	0x3fa83c2dfed8d3c0              # double 0.047334134444475762
	.quad	0x3fa36d6e7d4b1f20              # double 0.037944271845445465
	.quad	0x3fea75bcc394390d              # double 0.8268722362425095
	.quad	0x3fda73687b501f0e              # double 0.41329395334513286
	.quad	0x3fb350e1d3f58698              # double 0.075452913520644649
	.quad	0x3fb614b559138a58              # double 0.086253484961653526
	.quad	0x3fdaeeeac8a6c642              # double 0.42083234400624658
	.quad	0x3feb2292ddf25849              # double 0.84797042225796659
	.quad	0x3fb169d3b462c230              # double 0.068021041430946338
	.quad	0x3fdbbb7412ea4cce              # double 0.43331624839011063
	.quad	0x3febfc8acb61dbdc              # double 0.87457790110681399
	.quad	0x3fe396554319955a              # double 0.61210120301681603
	.quad	0x3feb247723cf9116              # double 0.84820134157465321
	.quad	0x3fe2a4ee6fde53f4              # double 0.58263322686491259
	.quad	0x3fe9d1bc28cb3f99              # double 0.80685241668287511
	.quad	0x3fd2513920af7a08              # double 0.28620746795596164
	.quad	0x3fd390a3656655e2              # double 0.3057030191642679
	.quad	0x3fcf162da13f70f8              # double 0.24286432622364607
	.quad	0x3feddf5e41cd3007              # double 0.93351662494524212
	.quad	0x3fc781dc7e293fd8              # double 0.18365055237018058
	.quad	0x3f942280cc98a800              # double 0.019662868964736901
	.quad	0x3fe9960bf27eb718              # double 0.79956624376584085
	.quad	0x3fe88ea39c3f7cc0              # double 0.76741199986636133
	.quad	0x3fc9ee858baef7c4              # double 0.20259160347444383
	.quad	0x3f9c96dac0f77280              # double 0.027919214275117898
	.quad	0x3fe82c8b0aece5c9              # double 0.75543739446509861
	.quad	0x3fd094e6e8690b04              # double 0.25908825584717499
	.quad	0x3fd183e62877fffa              # double 0.27367547943140347
	.quad	0x3fea2fcd44e27fb3              # double 0.81833518461279764
	.quad	0x3f933b2fa50e0b20              # double 0.018780464600705149
	.quad	0x3fed9e009b194ab0              # double 0.92553739826901982
	.quad	0x3fe30e3311fe8bff              # double 0.59548333658710806
	.quad	0x3fcf7747f7eedd1c              # double 0.24582767110926163
	.quad	0x3febe02930ee0b4a              # double 0.87111339146245226
	.quad	0x3fb0f2edfe6046c8              # double 0.066206812480483213
	.quad	0x3fec47086e37fd09              # double 0.8836710121831014
	.quad	0x3fe07e6190efb9a8              # double 0.51542738254447773
	.quad	0x3fe6d145321127c9              # double 0.71304569033349552
	.quad	0x3fbf6a076568e2f0              # double 0.12271162248442713
	.quad	0x3fd685d8c514e162              # double 0.3519193577408456
	.quad	0x3fbec36e582ce308              # double 0.12016954090803378
	.quad	0x3fe553191a00d8b7              # double 0.66639380530138836
	.quad	0x3fc0757d36dcd49c              # double 0.12858548334921671
	.quad	0x3fcda46b2bfcba18              # double 0.23158015868962489
	.quad	0x3fe4af749be6eb9a              # double 0.64641790818801614
	.quad	0x3fe0668291ccc9db              # double 0.51251343227914548
	.quad	0x3fdd862d2033a160              # double 0.46131446976371215
	.quad	0x3feda5725f94198a              # double 0.92644613902739192
	.quad	0x3fe8b433473b2bfe              # double 0.77199710762340579
	.quad	0x3fdc92dce438c0dc              # double 0.44646379744791687
	.quad	0x3fe341bba05b5539              # double 0.60177403754884218
	.quad	0x3fc7240a5650cf48              # double 0.18078736509925819
	.quad	0x3fc5ba966bdab06c              # double 0.1697567011482336
	.quad	0x3fd7d7cd65e53a9a              # double 0.37254652929997578
	.quad	0x3f9cddb554280f00              # double 0.028189500104430998
	.quad	0x3fd8ba943e2e7a9e              # double 0.38638788292329618
	.quad	0x3fe4dc92dd2382ba              # double 0.65192549887804963
	.quad	0x3fe625a4870179f7              # double 0.69209505432428287
	.quad	0x3fede0735b76109c              # double 0.933648756632937
	.quad	0x3fee9b2ef37aa77f              # double 0.95644328646197596
	.quad	0x3fdf3fb93f09ab0e              # double 0.48826438098937863
	.quad	0x3fadc54076226690              # double 0.058145536823940636
	.quad	0x3fc71a5cf124ed14              # double 0.18049203657742707
	.quad	0x3fd9dcf03bec3b50              # double 0.40411001064142216
	.quad	0x3fe3672dc14b07fe              # double 0.60634505989605691
	.quad	0x3f434d1170328c00              # double 5.8902121999826473E-4
	.quad	0x3fdaa05dd71a0bd8              # double 0.41603799825696575
	.quad	0x3fd73cd278f2a5e2              # double 0.36308728991806849
	.quad	0x3fe347f23be0dd6e              # double 0.60253249831195688
	.quad	0x3fdb18163a584952              # double 0.42334514329663364
	.quad	0x3fedb1fd5b9ccd80              # double 0.92797725575512402
	.quad	0x3feb8f79c44fb266              # double 0.86126411764196287
	.quad	0x3fd3a8700c751f6c              # double 0.30715562073282032
	.quad	0x3fcbf49826c0bcfc              # double 0.21840192692022942
	.quad	0x3fc6eb2569989034              # double 0.17905109077503456
	.quad	0x3fe20db9b0a21e5a              # double 0.56417545794188162
	.quad	0x3fd8588addcde70c              # double 0.38040420208527403
	.quad	0x3fe24430c4145082              # double 0.57082403465985032
	.quad	0x3fe2478bddef47ff              # double 0.57123368593806834
	.quad	0x3fef8d083910a032              # double 0.98596583505150748
	.quad	0x3f8abff119929680              # double 0.013061412423051921
	.quad	0x3fd5d63c7312f8ac              # double 0.34120093572335963
	.quad	0x3fdac9c79b6dc91e              # double 0.41856565645788801
	.quad	0x3feb4fc2f341bf24              # double 0.85348651419733245
	.quad	0x3fe6717d75700fe8              # double 0.70135376870211719
	.quad	0x3feeb6156de7e2d4              # double 0.95972701517083658
	.quad	0x3fe0cb276af5c4f7              # double 0.52479906931526343
	.quad	0x3fc4d2590eef51e8              # double 0.16266930798759849
	.quad	0x3fe2bbab89d0490c              # double 0.58540894428941348
	.quad	0x3fe46a30fcd9f887              # double 0.63796281228111773
	.quad	0x3fd53e1ad4fc8266              # double 0.33191557692956619
	.quad	0x3fd5df7b3ff317b6              # double 0.3417652248866675
	.quad	0x3fd2c064e0df9e48              # double 0.29299280128768546
	.quad	0x3fee4af2dddb4be0              # double 0.94664901095745435
	.quad	0x3fe0efb4fa3b9f09              # double 0.52926110147106542
	.quad	0x3fe142554d08a55a              # double 0.53934731527003099
	.quad	0x3fe3495f0ff87476              # double 0.60270646208995404
	.quad	0x3fe23c7d90b2fc51              # double 0.5698840929179686
	.quad	0x3fbb5c510b7a4928              # double 0.10687738924233214
	.quad	0x3fe57c536000e42b              # double 0.67142647505455011
	.quad	0x3fd31ca135e66256              # double 0.29862241996446437
	.quad	0x3fec8f303dbd8ac9              # double 0.89247905787154835
	.quad	0x3fe429ccea738363              # double 0.63010259429220772
	.quad	0x3fca83fb65bb5b54              # double 0.20715277163864221
	.quad	0x3fc160db620c5524              # double 0.13576833999165061
	.quad	0x3fd0e7718c877d04              # double 0.26412619327125264
	.quad	0x3fd1a3b429ad2746              # double 0.27561668462714228
	.quad	0x3fc77bfa00852984              # double 0.18347096467398327
	.quad	0x3fbcbbdcd1094408              # double 0.11224155524656976
	.quad	0x3fd5db00be90c258              # double 0.34149187669666992
	.quad	0x3fe910c4c2334c4a              # double 0.78329694680940887
	.quad	0x3fcbabe0cdfed4e0              # double 0.21618280466433415
	.quad	0x3feeff7a43445442              # double 0.96868622911518565
	.quad	0x3fc66819420d1520              # double 0.1750518391146807
	.quad	0x3fe810eb132c4546              # double 0.75206521744454657
	.quad	0x3fd9965d904a7032              # double 0.39980258074661201
	.quad	0x3fea01c7fe88fe9c              # double 0.81271743501561699
	.quad	0x3fb878ffa4f52410              # double 0.095596292279097605
	.quad	0x3fc5c67aea4ed268              # double 0.17011963311019263
	.quad	0x3fe7cc73abbee757              # double 0.7437074999245209
	.quad	0x3fdba3f10974d490              # double 0.43188119815324288
	.quad	0x3fe82a5e0159b768              # double 0.75517177833328919
	.quad	0x3fe3905b593a0f3e              # double 0.61137168337925352
	.quad	0x3fc9427ed11bcec8              # double 0.19734177790052443
	.quad	0x3fe9250e931bd964              # double 0.78577355129418124
	.quad	0x3fdf593611b45546              # double 0.48982001999805325
	.quad	0x3fb465ec70bbc338              # double 0.079680230639280647
	.quad	0x3fc4b745c6eeecbc              # double 0.16184303487339047
	.quad	0x3fcd665365906284              # double 0.2296852346342072
	.quad	0x3fe0d5ccfbc50484              # double 0.52609872030019789
	.quad	0x3fcf75506ee4d7ec              # double 0.24576764502279447
	.quad	0x3fcc38c54adfc29c              # double 0.22048250347099418
	.quad	0x3fd87b120ac9df00              # double 0.38251162580080234
	.quad	0x3fd3ea46092a4a8e              # double 0.31117392439879488
	.quad	0x3fca4d52e69158b8              # double 0.20548473604384809
	.quad	0x3fe10b5dd8153f6c              # double 0.53263752177916279
	.quad	0x3fde579b62c141e6              # double 0.47409710544618944
	.quad	0x3fd1259dd822406a              # double 0.26792093378845172
	.quad	0x3fe951a01d891d9f              # double 0.7912140442721699
	.quad	0x3fc94934a4226508              # double 0.19754655851719627
	.quad	0x3fee9271f4d4fa86              # double 0.95537660425891668
	.quad	0x3fd0650b85515014              # double 0.2561672975473368
	.quad	0x3fe8704dd468d4d2              # double 0.76370898710470159
	.quad	0x3fcf778c5dc52774              # double 0.24583582476253307
	.quad	0x3fe1606f64daae0c              # double 0.54302186678018094
	.quad	0x3f89d2559a4129c0              # double 0.012608212251639439
	.quad	0x3fe3f880284c2878              # double 0.62408454771617894
	.quad	0x3fccfcaa3cd28604              # double 0.22646072358934088
	.quad	0x3fef589573f262be              # double 0.97956345220435259
	.quad	0x3fec60900f7751be              # double 0.8867874433586207
	.quad	0x3fe8875b09415258              # double 0.76652290160798042
	.quad	0x3fd70c7e910379ec              # double 0.36013759767038667
	.quad	0x3fe3069348c8fad1              # double 0.59455265251002676
	.quad	0x3fecb2fcc7f9a743              # double 0.89684905107171919
	.quad	0x3fb52d081ab5c028              # double 0.082718378563868655
	.quad	0x3fe894e38ae9113f              # double 0.76817490702573099
	.quad	0x3fe7ea4d46c557dd              # double 0.74735130140720296
	.quad	0x3fda079b0611f760              # double 0.40671420662680724
	.quad	0x3fda8cb361de070a              # double 0.41483768994668024
	.quad	0x3fe487b4b6e37359              # double 0.64156566353231448
	.quad	0x3fe3034e70c6eab1              # double 0.5941536142994065
	.quad	0x3fef8782cd53a0a8              # double 0.9852918634687926
	.quad	0x3fe25d41d19fdb6e              # double 0.57388392393373322
	.quad	0x3fc9c7463414fca0              # double 0.20139386694970529
	.quad	0x3fe110dfeb16e0e7              # double 0.53330989757435254
	.quad	0x3fc7c8fb17fc3474              # double 0.18582094832564489
	.quad	0x3feb6a7257997c6c              # double 0.85674397572792093
	.quad	0x3fdf78a6d5035954              # double 0.49173899461802262
	.quad	0x3fe3dd419fea2098              # double 0.62075883134186238
	.quad	0x3fbb8d2b0409b0d0              # double 0.10762280319767403
	.quad	0x3fefea69b012f382              # double 0.99736484899004574
	.quad	0x3fbbe62c3e9330b0              # double 0.10898090865811372
	.quad	0x3fc3b58a2b1c3904              # double 0.15397765259735519
	.quad	0x3fe4a53d7c758f60              # double 0.6451709204525109
	.quad	0x3faf053fba203060              # double 0.060586921186854381
	.quad	0x3fef193209ebf1ae              # double 0.97182561815093549
	.quad	0x3fcf9cfce75928ec              # double 0.24697839065840499
	.quad	0x3fd9663e1263d360              # double 0.39686538501637436
	.quad	0x3fdf46756999074e              # double 0.48867545425683978
	.quad	0x3fac3bcfe9c4ab70              # double 0.055143830572283004
	.quad	0x3fe40353da761ee9              # double 0.62540619533771491
	.quad	0x3fee3df9dd660bc6              # double 0.94506543390195286
	.quad	0x3fd28c54e99166ea              # double 0.28981516656277384
	.quad	0x3fd2eb317c1a91f0              # double 0.29560505980978657
	.quad	0x3fe5edb79e491baf              # double 0.68526822009231647
	.quad	0x3fc7103a326cde38              # double 0.18018271886988813
	.quad	0x3fedba52eebbf7c5              # double 0.92899462344916428
	.quad	0x3fe60f98e7ae3f7c              # double 0.68940396547439731
	.quad	0x3fd9ef439e6e0c34              # double 0.40522852393786768
	.quad	0x3faaa7fa7a8d1fe0              # double 0.052062823734160935
	.quad	0x3fe1ecf63bb6f91d              # double 0.56017600691828628
	.quad	0x3fd2c893ad52bda2              # double 0.29349224020094244
	.quad	0x3fcc5925b0f626e8              # double 0.22147055760097278
	.quad	0x3fc1d65f12b92c64              # double 0.13935459531998895
	.quad	0x3fece6006e1b77f2              # double 0.90307637696582632
	.quad	0x3fa2b973778042d0              # double 0.036571129167105476
	.quad	0x3fe85b727f265d63              # double 0.76116299470860971
	.quad	0x3feb299884214d5c              # double 0.84882760817201186
	.quad	0x3fbe988a25047ef0              # double 0.11951506999730177
	.quad	0x3fbc703ea65f04f0              # double 0.11108771859928246
	.quad	0x3febd4439b704ca6              # double 0.86966114386668347
	.quad	0x3fec8f478cbf9863              # double 0.89249017229009231
	.quad	0x3fda1bbc269b651e              # double 0.40794280786720261
	.quad	0x3fe68b0c7156b9e4              # double 0.70447370659331598
	.quad	0x3fd3eb72a677f916              # double 0.31124559647277417
	.quad	0x3fdaf55b59fff368              # double 0.42122539319080099
	.quad	0x3feb749a24ac7e51              # double 0.85798365748264349
	.quad	0x3fc6f89b660fb8e0              # double 0.17946188434093013
	.quad	0x3fef6aceb2d8f863              # double 0.98178801470909282
	.quad	0x3fbd51ac8b1f6190              # double 0.11452749630496428
	.quad	0x3fef589ddf43c3a0              # double 0.97956746679675532
	.quad	0x3fc90723e263244c              # double 0.19553040079179806
	.quad	0x3fe22b29d3086161              # double 0.56776896684008815
	.quad	0x3fd5b31c28a22a30              # double 0.33905700653181992
	.quad	0x3fed46b968549fb7              # double 0.91488333108008291
	.quad	0x3fe06030f7345c1c              # double 0.51174209863791331
	.quad	0x3fb20ed56a82c930              # double 0.070538843635209458
	.quad	0x3fd2b188023ba1d0              # double 0.29208564966259321
	.quad	0x3fc1a73c37591b5c              # double 0.13791611387770331
	.quad	0x3fe2db0c8aefdd11              # double 0.58923937927366599
	.quad	0x3fe1c331dc009b30              # double 0.55507748574459548
	.quad	0x3fea5e11b966b983              # double 0.8239830609434623
	.quad	0x3fe529aa252d052b              # double 0.66133601437483003
	.quad	0x3fd9ade70af62330              # double 0.40123916693169104
	.quad	0x3fe11e5b6c0bae46              # double 0.53495570280706128
	.quad	0x3fe260e41ce04b71              # double 0.57432752265809317
	.quad	0x3fcd50633539e1c8              # double 0.22901573275500042
	.quad	0x3fe9ef3ba57a7816              # double 0.81045324630736348
	.quad	0x3fc1e0faa7d7cc88              # double 0.13967831798035868
	.quad	0x3fe239d032371642              # double 0.56955728347447399
	.quad	0x3fea861eba780fd7              # double 0.82887207431530896
	.quad	0x3fe1d1a69541d5e4              # double 0.55684212829390534
	.quad	0x3fe37159cf72bca5              # double 0.60758677022194674
	.quad	0x3fd5f9c147613ec2              # double 0.34336883516969519
	.quad	0x3fd45125c888eaac              # double 0.31745285590629169
	.quad	0x3fc690338136e334              # double 0.17627567109391296
	.quad	0x3fec8032ef0a7b75              # double 0.89064928710636926
	.quad	0x3fe148261a8cb0e0              # double 0.54005723176444675
	.quad	0x3fe97ef0f0ef3627              # double 0.79674574906829754
	.quad	0x3faf6f9476daa340              # double 0.061398162373115017
	.quad	0x3fe8e475d0b1b4a7              # double 0.77788820992067975
	.quad	0x3fc7f075d7f3bf30              # double 0.18702576679742711
	.quad	0x3fd9ae1beaf2f2ee              # double 0.40125177330246131
	.quad	0x3fc13add4cdf35d4              # double 0.13460890058051567
	.quad	0x3fd5cef3218e7a76              # double 0.34075620915419991
	.quad	0x3fc152255d6cbab0              # double 0.13531939565424045
	.quad	0x3fdb683ade4a0e74              # double 0.42823669155061528
	.quad	0x3fc5c7bf0aa0c6b4              # double 0.17015827197024225
	.quad	0x3fb13b76880c2628              # double 0.067313583578788028
	.quad	0x3fe9ad270146bd70              # double 0.80238676308901624
	.quad	0x3fe9d786a3b32ec2              # double 0.80755931828158389
	.quad	0x3fe5d03a98079b4e              # double 0.68166856473258419
	.quad	0x3fdf2e1e60c68558              # double 0.48718985987405494
	.quad	0x3fb6d575466b1af0              # double 0.08919461220930791
	.quad	0x3fd9bc2eedad79bc              # double 0.40211079798418914
	.quad	0x3fe1114a6f7f50d0              # double 0.53336068894216204
	.quad	0x3feb0e3d710aba24              # double 0.84548828199860226
	.quad	0x3fef4b6acbc16f8f              # double 0.97795619770066533
	.quad	0x3febd3837b1571ef              # double 0.86956953086661126
	.quad	0x3fda0cdca2d30f1e              # double 0.40703502560448779
	.quad	0x3fc345f84ba536f4              # double 0.15057281201955386
	.quad	0x3fd318b32e298f18              # double 0.29838256366768823
	.quad	0x3fe2228bb5c221bd              # double 0.56671700954125692
	.quad	0x3fe212064a414c21              # double 0.56470026495879122
	.quad	0x3fe03499ca6b9303              # double 0.50642098937223101
	.quad	0x3fec16a85a4e61bd              # double 0.87776582372594414
	.quad	0x3fea1c3a23b5fefd              # double 0.81594569182195154
	.quad	0x3fe05b012c552559              # double 0.51110895785056265
	.quad	0x3fe94f47ad77ba2b              # double 0.79092773323447341
	.quad	0x3fed23118281d4f3              # double 0.91053081025770977
	.quad	0x3fe3de3e9877439c              # double 0.62087945726863181
	.quad	0x3fd4dfef5b2817c6              # double 0.32616790678036656
	.quad	0x3fee88d70c087c56              # double 0.95420410490249696
	.quad	0x3fec63e442bcd183              # double 0.88719380411798487
	.quad	0x3fe98e22e8c16774              # double 0.79860063037925366
	.quad	0x3fde75ddd2629a0a              # double 0.47594399972368306
	.quad	0x3fde71f110269032              # double 0.475704446575267
	.quad	0x3fad3095649f6410              # double 0.057011288197550525
	.quad	0x3fd1d94b889245ba              # double 0.27888763749168854
	.quad	0x3fe943f8df46574c              # double 0.78954738243440081
	.quad	0x3fdb0dcdd4810ba4              # double 0.42271753074981633
	.quad	0x3fe58c791773c01c              # double 0.67339758472917621
	.quad	0x3feca77d4a69db23              # double 0.89544548543822022
	.quad	0x3fe4ccafec8621fd              # double 0.64998623081288509
	.quad	0x3fc701bf595180e4              # double 0.17974082814453773
	.quad	0x3fc795e8e4673a44              # double 0.1842623820543442
	.quad	0x3fc5dc588a13b594              # double 0.17078692190208911
	.quad	0x3fc8b151a89351f8              # double 0.19291134577964875
	.quad	0x3fdc8d846a5e53fc              # double 0.44613752734704781
	.quad	0x3feba9149f3d6d59              # double 0.86438971616318405
	.quad	0x3fe6b8cd84b2c4ff              # double 0.71005893628731076
	.quad	0x3fc1db3ff3d4b3d0              # double 0.13950347333721291
	.quad	0x3fe58941377be7c9              # double 0.67300473057479693
	.quad	0x3fdb013eaa8e8764              # double 0.42195097595150899
	.quad	0x3fc4874327a02770              # double 0.16037787852138363
	.quad	0x3f92142e5c440140              # double 0.017655109769294741
	.quad	0x3fd8d0097b61a1c6              # double 0.38769757317507147
	.quad	0x3fef7a2e3cc9f4c2              # double 0.98366462586241021
	.quad	0x3fecbd6b8d0b4103              # double 0.89812257335327705
	.quad	0x3fe578a1ed362aa3              # double 0.67097565012348459
	.quad	0x3fe2e2058e48075a              # double 0.5900905398304801
	.quad	0x3fc9c95729ecb478              # double 0.2014569239339925
	.quad	0x3fdd1d13442e5c18              # double 0.45489961298284376
	.quad	0x3fa8046d561b6220              # double 0.046908776055435419
	.quad	0x3feb568a8320e4ee              # double 0.8543140946486838
	.quad	0x3fdcb5ee3e961850              # double 0.44860416519111812
	.quad	0x3fdb21d7eb0ed408              # double 0.42394063906550672
	.quad	0x3fe8aac65e73082a              # double 0.77084654280793541
	.quad	0x3fe90a59d1edf15c              # double 0.78251353265617806
	.quad	0x3fd3f0d0966e72e8              # double 0.3115731686646499
	.quad	0x3fd104d075b128be              # double 0.26591884129869559
	.quad	0x3fded3fc9ac789ec              # double 0.48168864360027785
	.quad	0x3fe3d7bdf903375e              # double 0.62008570323244405
	.quad	0x3fe31a31110ba8fb              # double 0.59694722489555774
	.quad	0x3fd3e63b0fceb530              # double 0.31092716735550407
	.quad	0x3fe5081738d1b015              # double 0.65723763558844672
	.quad	0x3f7782e6a9a1c700              # double 0.0057400713213711096
	.quad	0x3fc8ce225cdb5670              # double 0.19379071744940601
	.quad	0x3fedd5822e684832              # double 0.93231305183349478
	.quad	0x3fe2dc1880566a05              # double 0.58936715188912159
	.quad	0x3fecf8a643614d0a              # double 0.90535271797344419
	.quad	0x3fd35413d776294c              # double 0.30200668374222484
	.quad	0x3f989f10fb7fde80              # double 0.024044289923010442
	.quad	0x3fc6059d63ca26d0              # double 0.17204635021726356
	.quad	0x3fe65bec31a517ca              # double 0.69872102447765738
	.quad	0x3fe50d5cece13e55              # double 0.65788122430417195
	.quad	0x3fe625ea2195bcd8              # double 0.6921282440142944
	.quad	0x3fed76a3d79df5da              # double 0.92073242294980706
	.quad	0x3fd1cc0c84ab3dc4              # double 0.27807915645550119
	.quad	0x3fcd91f55d2a4cc4              # double 0.23101679848750767
	.quad	0x3fe35fe624caaeac              # double 0.60545642076382
	.quad	0x3fef01686803a9e0              # double 0.96892185511870465
	.quad	0x3fdb140448292556              # double 0.42309672400422949
	.quad	0x3fd51c75e07a0b04              # double 0.32986208840900155
	.quad	0x3fbffbd21ca54ff8              # double 0.12493622969969909
	.quad	0x3febef9ba02afbef              # double 0.87299901278299596
	.quad	0x3fe35b333fd341e4              # double 0.60488283601631254
	.quad	0x3fde2e065517dd62              # double 0.471559126948213
	.quad	0x3fbbc5824a3f77a0              # double 0.10848249733632409
	.quad	0x3fea66bf056b07b7              # double 0.82504225786418928
	.quad	0x3fdd208177723a8e              # double 0.45510899223965218
	.quad	0x3fd93d05626882c2              # double 0.3943494282739658
	.quad	0x3fef327d735bf539              # double 0.97491333514304934
	.quad	0x3fea6cc0f3a1f5ea              # double 0.82577560028556474
	.quad	0x3fdb028ef98a148c              # double 0.42203115815238657
	.quad	0x3fedb29e0185b741              # double 0.92805385873155199
	.quad	0x3fd254f53234e208              # double 0.28643541243539561
	.quad	0x3fe8e221791cd876              # double 0.77760385184116276
	.quad	0x3feb694cad3c9a10              # double 0.85660394511507043
	.quad	0x3fe0dc2edb43091a              # double 0.52687781166631287
	.quad	0x3fb771c229b65f60              # double 0.091579566177072191
	.quad	0x3fea389953278a7c              # double 0.81940904847245077
	.quad	0x3fdedfff3846753e              # double 0.48242168899180971
	.quad	0x3fe479fd3aa8f434              # double 0.6398912568762456
	.quad	0x3fd379ef17029582              # double 0.30431725737647508
	.quad	0x3fdf9d495c9e76ae              # double 0.49397501034568847
	.quad	0x3fea717a5a9baa52              # double 0.82635228821647844
	.quad	0x3fe5540b2fe22c9e              # double 0.66650924064869677
	.quad	0x3fd6b4c3a8b96070              # double 0.35478297688451388
	.quad	0x3fd26ab665483bd0              # double 0.28776321307026098
	.quad	0x3fe55af73b06e90c              # double 0.66735421684941931
	.quad	0x3fea42b5a4c9eb98              # double 0.8206432550936027
	.quad	0x3fca9a6e55288adc              # double 0.20783785970805624
	.quad	0x3f76e436f322bd00              # double 0.0055887361979067851
	.quad	0x3fca93411ed7091c              # double 0.20761884694918187
	.quad	0x3fa276a7bda27350              # double 0.036061517618895977
	.quad	0x3fe5c5498b52e603              # double 0.68033292018589042
	.quad	0x3feefb316912b2e2              # double 0.96816320917204401
	.quad	0x3fece2d1957d2f7d              # double 0.90268782803603609
	.quad	0x3fe8c9a81c0d4533              # double 0.77461629370569651
	.quad	0x3feb1ce9d24d2796              # double 0.8472794635247165
	.quad	0x3fd2ca435a8bc8ac              # double 0.29359515993486229
	.quad	0x3fda5bd943c2e59a              # double 0.41185599915805826
	.quad	0x3fdc46809397a508              # double 0.4418031159717235
	.quad	0x3fdd9dadab257cb4              # double 0.46274892533797218
	.quad	0x3fdc78756f5b4936              # double 0.44485221743265713
	.quad	0x3fa83a70e40e1580              # double 0.047320869292017953
	.quad	0x3fe668bf694b3cd5              # double 0.70028658452238324
	.quad	0x3fd40809cc81b70a              # double 0.31299061747891754
	.quad	0x3fdebf15081484d4              # double 0.48041272915913891
	.quad	0x3feff3883b22311a              # double 0.99847804593585754
	.quad	0x3fea2e24e097ad4a              # double 0.81813281884880351
	.quad	0x3fd1b75632a8ef3c              # double 0.27681498477226163
	.quad	0x3fb1e00f9bbf8900              # double 0.069825149082621607
	.quad	0x3fdc3b33a9272b94              # double 0.44111339110229975
	.quad	0x3fecea9a7aa73859              # double 0.90363811450675791
	.quad	0x3fd964b7d3658222              # double 0.39677234310332399
	.quad	0x3fe28d6f88006154              # double 0.57976509630956707
	.quad	0x3fd1a23695543cd0              # double 0.27552570898928952
	.quad	0x3fe79f06986c40a0              # double 0.73816232462015207
	.quad	0x3fea2a5468937dba              # double 0.81766720223452372
	.quad	0x3fe84bddf4aa7c8f              # double 0.75926111017533227
	.quad	0x3fe088394848414e              # double 0.51662887685419334
	.quad	0x3fea27a217310247              # double 0.81733803300455399
	.quad	0x3fe7b1f966e602e6              # double 0.74047536942825043
	.quad	0x3fbe388c80204c88              # double 0.11805036666946667
	.quad	0x3feee3f7bb6240bb              # double 0.96532808874510267
	.quad	0x3fea73b6fb8c0753              # double 0.82662533884306766
	.quad	0x3fa12302be23a170              # double 0.0334702355483526
	.quad	0x3fa0228a6d20e5f0              # double 0.031513524838782447
	.quad	0x3fd36d580cf508b4              # double 0.30354882493351032
	.quad	0x3fe8d1a1ec977f59              # double 0.77558990678151496
	.quad	0x3fcf009f1e74bebc              # double 0.24220646845923521
	.quad	0x3fc10dd00fc6fefc              # double 0.13323403139474255
	.quad	0x3fd98458dd9d831e              # double 0.39870282785527589
	.quad	0x3fcf75974870a148              # double 0.24577609097583264
	.quad	0x3fb085bc09232f70              # double 0.064540626746006913
	.quad	0x3fd8f613cdfd8ea6              # double 0.39001937023406652
	.quad	0x3fc9c382a6829190              # double 0.2012790024792932
	.quad	0x3fe849bc7c4a198b              # double 0.75900100970538753
	.quad	0x3fadc165e23f1250              # double 0.058116134517636753
	.quad	0x3fd4f459628c4dd8              # double 0.32741388915857561
	.quad	0x3fb655e6bc4e2520              # double 0.087248249981844328
	.quad	0x3fed474c916f8a35              # double 0.91495350270662945
	.quad	0x3fea5d0306ec4786              # double 0.82385398246900432
	.quad	0x3fe1629bccc9ea7c              # double 0.54328718183326385
	.quad	0x3fe4a6b8417558a7              # double 0.64535153183785077
	.quad	0x3fb18270a1a9c888              # double 0.068396605938490507
	.quad	0x3fef36c01f97d368              # double 0.97543340845605275
	.quad	0x3fe651f75034674e              # double 0.697505623483474
	.quad	0x3fdf1aac812b9cc0              # double 0.48600304235737823
	.quad	0x3feced57f4af53c7              # double 0.90397260465635376
	.quad	0x3fd5292b432a8a7e              # double 0.33063775595852707
	.quad	0x3fd490a5ba69cf4c              # double 0.32132857517648428
	.quad	0x3fcb80a4dc7008cc              # double 0.21486340297275885
	.quad	0x3fe9b957892f6acb              # double 0.80387474817265436
	.quad	0x3fe2cb20f576397f              # double 0.5872959894348212
	.quad	0x3fb19508e47ccf68              # double 0.068680339606371654
	.quad	0x3fe43a9c5b8eb1bc              # double 0.63215463526062576
	.quad	0x3fdeda42feb2bfee              # double 0.48207163689494237
	.quad	0x3feb685e6db1d6e8              # double 0.85649033951514486
	.quad	0x3fd7301949eb0d52              # double 0.3623107168061398
	.quad	0x3f9c3bfa40173220              # double 0.02757254615953475
	.quad	0x3fa7e44b9211c7a0              # double 0.046663629132026374
	.quad	0x3fb43643da359498              # double 0.078953018926386398
	.quad	0x3fe422ae44581018              # double 0.62923348759113917
	.quad	0x3fe1ced3f2cf6479              # double 0.5564975492844858
	.quad	0x3feff9b4ec946075              # double 0.99923177916481498
	.quad	0x3fd771c58a982f4e              # double 0.36631907019249332
	.quad	0x3fef8ae133e4883a              # double 0.98570308814328844
	.quad	0x3fefdebbd326c772              # double 0.99593917122386544
	.quad	0x3fecba54b25497e6              # double 0.89774546461262328
	.quad	0x3fe1892d847713d3              # double 0.54799533722018123
	.quad	0x3fdf2a4fc708699c              # double 0.486957496994046
	.quad	0x3fdd532a50e93bfa              # double 0.45820100690337962
	.quad	0x3fe8663d2b642690              # double 0.76248033976408358
	.quad	0x3fe9fce02dd52177              # double 0.81211861564319932
	.quad	0x3fdf67dc2097eccc              # double 0.49071410353617462
	.quad	0x3fc065cf2d16d0d0              # double 0.12810697270982141
	.quad	0x3fe543c73eee7866              # double 0.66452371875108152
	.quad	0x3fc1b0d1b0144688              # double 0.13820859048478362
	.quad	0x3fb379a10fc1a860              # double 0.076074663492961658
	.quad	0x3fd95f09967b714a              # double 0.39642562575842943
	.quad	0x3fe7792299273043              # double 0.73353700554572077
	.quad	0x3fdbd67b2386e076              # double 0.43496588200969855
	.quad	0x3fc65c2ca50f1148              # double 0.17468793925776027
	.quad	0x3fd78ea2cb8ff63a              # double 0.36808080557952716
	.quad	0x3febc37482a264c0              # double 0.86760926737328958
	.quad	0x3fc11ed048ab4b04              # double 0.13375285671516945
	.quad	0x3fa05eae70d13440              # double 0.031972361823684015
	.quad	0x3fdba701ee9a1458              # double 0.4320683317276397
	.quad	0x3fae419e7c0ca7b0              # double 0.059094383852723253
	.quad	0x3feeefb9597b7f08              # double 0.96676318623573909
	.quad	0x3fe2f16b236d566d              # double 0.59197003287654371
	.quad	0x3fef5e09e366b55d              # double 0.98022932447717503
	.quad	0x3fc717fc7a679cd4              # double 0.18041950203698909
	.quad	0x3fe22a4c46981819              # double 0.56766332424081434
	.quad	0x3fe5ba96b4aa8feb              # double 0.67902694021586052
	.quad	0x3fd8837035632efe              # double 0.38302235807053353
	.quad	0x3fc929d9e5766dcc              # double 0.19658969597081322
	.quad	0x3fef7348894da9f7              # double 0.98282267396035549
	.quad	0x3fc26938c88a9a50              # double 0.1438361148077143
	.quad	0x3fdee7ac2d592be6              # double 0.48289017132327527
	.quad	0x3fe03f5ad1e19657              # double 0.50773373596593785
	.quad	0x3f476bc9f1efac00              # double 7.147537288550998E-4
	.quad	0x3fc3d677e745f2a0              # double 0.15498255531919813
	.quad	0x3fe46cf698c29307              # double 0.6383011802286952
	.quad	0x3fe258782adaf6e2              # double 0.57329948778325623
	.quad	0x3fea95644e90cc4d              # double 0.83073630661818643
	.quad	0x3fe3d87073bd5fa6              # double 0.62017080884378539
	.quad	0x3feff1d5fdcf9ad4              # double 0.99827098438694372
	.quad	0x3fda53e05ce1d8f8              # double 0.41136941023377416
	.quad	0x3fc800f8133df890              # double 0.18752957286409755
	.quad	0x3fd77155ecbb9b16              # double 0.36629245871010718
	.quad	0x3fedd89a0f7fa313              # double 0.93269064929072198
	.quad	0x3fa1f0988a8744a0              # double 0.035038725767330137
	.quad	0x3fc22f588e59618c              # double 0.14206988287584144
	.quad	0x3fe368260325664d              # double 0.60646343817206516
	.quad	0x3fc6d5c06029701c              # double 0.17839817710307748
	.quad	0x3fbf4d9d4f7b7f08              # double 0.12227805319298224
	.quad	0x3fdce65554f7af70              # double 0.45155843064889378
	.quad	0x3fcc36ce613a178c              # double 0.22042255160721103
	.quad	0x3fd062219b0a63f0              # double 0.2559894575184094
	.quad	0x3fcb01a25299c9cc              # double 0.21098736794699702
	.quad	0x3fd1d32a57d08f92              # double 0.27851351333287611
	.quad	0x3fb72bb08b92a120              # double 0.090510400843986094
	.quad	0x3fcac0e2825d6414              # double 0.20901137700528294
	.quad	0x3fd12b25d6ef55b2              # double 0.26825853337990246
	.quad	0x3fe2096b40ba4cb6              # double 0.56364977495322566
	.quad	0x3fe0eac8596abbae              # double 0.52865998710864459
	.quad	0x3fd521c7449984d0              # double 0.33018666934192442
	.quad	0x3fef7b3e1ca80760              # double 0.98379426571794326
	.quad	0x3fdec65269c34f9c              # double 0.48085460976039385
	.quad	0x3fef0f67eed66f23              # double 0.97063061378455406
	.quad	0x3fd0fd443fe232fc              # double 0.26545816649085885
	.quad	0x3fef9b8b0741b07c              # double 0.98773719231895951
	.quad	0x3fe9f8e6683c6b4e              # double 0.81163330420108948
	.quad	0x3fe68fc5b44b66c0              # double 0.70505032743241003
	.quad	0x3fc6b3faf33bac28              # double 0.17736756207099913
	.quad	0x3fc3d3d5836825ac              # double 0.15490216175412053
	.quad	0x3fc0a345fcc4d140              # double 0.12998270838000714
	.quad	0x3f839de8bdd930c0              # double 0.0095785315453656982
	.quad	0x3fe75679c2f0cf9f              # double 0.7293061072764323
	.quad	0x3fb6a1df03fb7e00              # double 0.088407457802070155
	.quad	0x3fe0cd66f9c457c6              # double 0.52507351667986124
	.quad	0x3fc2821615e3e434              # double 0.14459491795403923
	.quad	0x3fce50947ec9849c              # double 0.23683410826473483
	.quad	0x3feeae1d8b5d6276              # double 0.95875432223972612
	.quad	0x3fc9d2d64bcf3280              # double 0.20174673749570005
	.quad	0x3fd6d10e7e2defee              # double 0.35650980303012048
	.quad	0x3fe630c0e235efc0              # double 0.69345134908461858
	.quad	0x3fc6f444a83c9750              # double 0.17932947363550023
	.quad	0x3fdf3921cefa722a              # double 0.48786206448292779
	.quad	0x3fe07a7c995dc816              # double 0.51495199159967586
	.quad	0x3fea8234724af818              # double 0.82839414904424569
	.quad	0x3fe0e4964f0d4dfd              # double 0.52790370406950127
	.quad	0x3fd67b8be7aac0c2              # double 0.3512906801579555
	.quad	0x3fe0cd5823c4dc83              # double 0.52506644235735711
	.quad	0x3fd56d7452f0615e              # double 0.33480556582937548
	.quad	0x3fcb53ef1ee32c08              # double 0.21349896438763971
	.quad	0x3fe7193c2e7813ec              # double 0.72183045459735018
	.quad	0x3fd2c1fa3ef6453a              # double 0.29308944843895157
	.quad	0x3fdd802f4282db94              # double 0.46094876761656534
	.quad	0x3fc41d76bcdd37ec              # double 0.15714916440850801
	.quad	0x3fef48ffff9fd0e2              # double 0.97766113211266892
	.quad	0x3f808af28aad4680              # double 0.0080775211878603148
	.quad	0x3fe5a3e48065203c              # double 0.67625641896393729
	.quad	0x3fdc13da96ccee96              # double 0.43871178366291852
	.quad	0x3fe46a34b2f4a12f              # double 0.6379645819879779
	.quad	0x3fec23920efbaeee              # double 0.87934210707086691
	.quad	0x3fe4ffd0c1f6a8e6              # double 0.65622747310160601
	.quad	0x3feffae285ed5d55              # double 0.99937559278161336
	.quad	0x3fafacb918ba4ca0              # double 0.061864647167703568
	.quad	0x3fdafd7506c22d3a              # double 0.42171979579935093
	.quad	0x3fe627f8e0f63f24              # double 0.69237941682692794
	.quad	0x3fe7d0457252578a              # double 0.74417373970457956
	.quad	0x3fe49b12a835a48c              # double 0.64392979482103518
	.quad	0x3fb1c3822bd16960              # double 0.069389472673184738
	.quad	0x3fb52597a07ce268              # double 0.082604862863158268
	.quad	0x3fe396c7128fdb1e              # double 0.61215547204378473
	.quad	0x3fd683a3b772961a              # double 0.35178463854603736
	.quad	0x3feadc1b31b0bd50              # double 0.83936843590883292
	.quad	0x3fe8094cbd481649              # double 0.75113522500095897
	.quad	0x3f73df6cd4ec6a00              # double 0.0048517466773554396
	.quad	0x3fea39c3e5a271ec              # double 0.81955141878603177
	.quad	0x3fef894a1e7cdbd2              # double 0.98550897555002792
	.quad	0x3fb5867297b565d8              # double 0.084082757986286949
	.quad	0x3fe91dfe7988a882              # double 0.78491138207506617
	.quad	0x3fe20be953a716c3              # double 0.56395403231064056
	.quad	0x3fc23df7b408e8f0              # double 0.14251610079538279
	.quad	0x3fc1165621faf498              # double 0.13349415454095914
	.quad	0x3feb2c59f5a9fddd              # double 0.8491639898419937
	.quad	0x3fcf84259f2ba5c8              # double 0.24622030517575255
	.quad	0x3fefac5d9aa23d2a              # double 0.98979072763350939
	.quad	0x3fe6e84ae138f8cc              # double 0.71585601795939047
	.quad	0x3fd3669edfad9438              # double 0.30313846438940883
	.quad	0x3faa8f5052d71030              # double 0.051874647247615591
	.quad	0x3fcaccc58f73f608              # double 0.20937413696803753
	.quad	0x3fec0b00f51c9f9e              # double 0.87634322999382497
	.quad	0x3fd5d0abbb813572              # double 0.34086125670440659
	.quad	0x3fe0857bd779af07              # double 0.51629440388703152
	.quad	0x3fe3e8e972c45794              # double 0.62218162932798515
	.quad	0x3fe2177246730540              # double 0.56536210784557994
	.quad	0x3fdfaa42b3e5d59e              # double 0.49476687973159439
	.quad	0x3fe3a3df24ce8c8a              # double 0.6137538641818463
	.quad	0x3fe5fba170a21689              # double 0.68696662901557304
	.quad	0x3fe23016f360d4ec              # double 0.56837031874479527
	.quad	0x3fdc6dfe0bcd07a8              # double 0.44421340134078457
	.quad	0x3fce57c0bb5a36a0              # double 0.23705300472322666
	.quad	0x3fcba96ae588d0f4              # double 0.21610771377311944
	.quad	0x3fdadd8fa2c98618              # double 0.41977301499545794
	.quad	0x3fc97621847185dc              # double 0.19891756979909203
	.quad	0x3fe4f5b3ad37a312              # double 0.65499290305624158
	.quad	0x3fcbde06e87c3910              # double 0.2177132258588661
	.quad	0x3fee553275279f5e              # double 0.94790003663818445
	.quad	0x3fed4f1f3bdcc317              # double 0.91590844814172356
	.quad	0x3fe2653f43bc2302              # double 0.57485926846956681
	.quad	0x3fd46141dbf19144              # double 0.31843611220235268
	.quad	0x3fec7d7245b49530              # double 0.89031327833496299
	.quad	0x3fcc1eeffe1b7634              # double 0.21969413669187221
	.quad	0x3febf31b796beb95              # double 0.87342618670605765
	.quad	0x3fede0401d84beb1              # double 0.93362432256068051
	.quad	0x3fd5771caba9f120              # double 0.33539501918837011
	.quad	0x3fc0dc0baf8ea060              # double 0.13171526023984637
	.quad	0x3fef257e866a7b7d              # double 0.97332693341364484
	.quad	0x3fdc6bd7d93adfb6              # double 0.44408222402443742
	.quad	0x3fda32c488d79458              # double 0.40934861529814759
	.quad	0x3fe5e2a771340b75              # double 0.68391773328799721
	.quad	0x3fe965d91ea789ca              # double 0.79368263232418568
	.quad	0x3fc03901b7cdaccc              # double 0.12673970675255075
	.quad	0x3fec548e474bd40e              # double 0.88532174992599422
	.quad	0x3fc7ef400a40606c              # double 0.18698883534011956
	.quad	0x3fceb43898dc432c              # double 0.23987491096388547
	.quad	0x3fd308685f60625e              # double 0.297388165608515
	.quad	0x3fdc41ac81139d36              # double 0.44150841336382329
	.quad	0x3fe50a4764b5cc3e              # double 0.65750474615050059
	.quad	0x3fd24a7713199fe0              # double 0.28579499116176343
	.quad	0x3fe5755151c8b008              # double 0.67057100270676617
	.quad	0x3fef05766e2751d6              # double 0.96941682352422265
	.quad	0x3fc2b5bcf1632eb8              # double 0.1461712053918427
	.quad	0x3fe60f111ff0fd28              # double 0.68933922041461404
	.quad	0x3fceb9a38567ff34              # double 0.24004024518944223
	.quad	0x3fe7757f3ee77793              # double 0.73309290204973576
	.quad	0x3fe308484c58cfc7              # double 0.59476103698261162
	.quad	0x3f90b55840185e00              # double 0.016316775238093939
	.quad	0x3fef3e7ae861e9a5              # double 0.97637696635438386
	.quad	0x3fe58046faa58ce3              # double 0.67190884546689877
	.quad	0x3fea2ba97e3635c1              # double 0.81782984400495462
	.quad	0x3fe1f154da18036b              # double 0.56070940586515172
	.quad	0x3fddba9b6e7f95ca              # double 0.46451459685189589
	.quad	0x3fd226eef713bfc2              # double 0.28362630966784874
	.quad	0x3fa2c4caa0e498b0              # double 0.03665765012765243
	.quad	0x3fedb7cb8ff0525f              # double 0.92868593323744253
	.quad	0x3fee3b36f6ddc9ca              # double 0.9447283574684715
	.quad	0x3fbc2fa7e8628ee8              # double 0.1101021711679625
	.quad	0x3fee3c3a2af8c711              # double 0.94485195534636734
	.quad	0x3fd8bf1c16a89138              # double 0.38666441166630561
	.quad	0x3fd9d9428d1ab684              # double 0.40388549594613488
	.quad	0x3fe7366c8f319fdc              # double 0.72539356200740768
	.quad	0x3fe36fc7059c2bbb              # double 0.60739470573150045
	.quad	0x3fdac39616024fc2              # double 0.41818763875312126
	.quad	0x3fc3790f397efa80              # double 0.15213194186613421
	.quad	0x3facf73ffeed8fd0              # double 0.056573867673051503
	.quad	0x3fd8e2de6caa2528              # double 0.38884697543888302
	.quad	0x3fc9ec9d2b28f968              # double 0.20253338439392654
	.quad	0x3fe808ab2ae64ea3              # double 0.75105818156085424
	.quad	0x3fcefdce685d22fc              # double 0.24212055297746093
	.quad	0x3fdc7fa62df0439e              # double 0.44529108511147253
	.quad	0x3fe5e9a64935c7df              # double 0.68477167414516404
	.quad	0x3fe4efac3c2c7dec              # double 0.65425693276114094
	.quad	0x3fe5356c2e2838b6              # double 0.66277131094991293
	.quad	0x3fd698d290058ef2              # double 0.35307754578228334
	.quad	0x3fe8a2ec441eabb2              # double 0.76988805107736469
	.quad	0x3fec9b1f658db0be              # double 0.89393586954749771
	.quad	0x3fd8e37e2791d016              # double 0.38888505806176121
	.quad	0x3f65543601c45900              # double 0.0026036314794836146
	.quad	0x3fc3b92429292a2c              # double 0.15408756265453982
	.quad	0x3fe72ccdf2f23e57              # double 0.7242192978901113
	.quad	0x3febdb2621ae1bb8              # double 0.87050158098360608
	.quad	0x3fe289364e7c9cc9              # double 0.57924952821203946
	.quad	0x3fde771a8d4283b8              # double 0.4760195140352681
	.quad	0x3fea504e02e48599              # double 0.82230282368634555
	.quad	0x3feeca619659061a              # double 0.96220473637385173
	.quad	0x3fe2b460832d977c              # double 0.58451867695542559
	.quad	0x3fbf693184df29d0              # double 0.12269887441576732
	.quad	0x3fe450435f47e64c              # double 0.63479775056402721
	.quad	0x3fe529bc7a634802              # double 0.66134475616331678
	.quad	0x3fdb2019f0389966              # double 0.42383430918780218
	.quad	0x3fd7ec3e0080e5ca              # double 0.37379407929583108
	.quad	0x3fe73a3b44104824              # double 0.72585833829566981
	.quad	0x3fe2cec34d14f6c3              # double 0.58773961119705864
	.quad	0x3fda01d49b3488a4              # double 0.40636172444113527
	.quad	0x3fee7b0df36e06ef              # double 0.95252130074388031
	.quad	0x3feed5ba8c567ec1              # double 0.96358992967358159
	.quad	0x3feec4e3f179920b              # double 0.96153447306693473
	.quad	0x3fde76de971ee830              # double 0.47600521810420826
	.quad	0x3fe7b05f36038e9c              # double 0.74027977513874843
	.quad	0x3feeb7dfe38efbb6              # double 0.95994562573456821
	.quad	0x3fcc60444cf2b348              # double 0.22168782956341659
	.quad	0x3fe2d90367bd9304              # double 0.5889908815557594
	.quad	0x3fe698951d12c334              # double 0.70612579038979684
	.quad	0x3fedee366fe21385              # double 0.93532869198007573
	.quad	0x3fe068674bec9de3              # double 0.51274456814729452
	.quad	0x3fe7d546904eaa52              # double 0.7447846239568412
	.quad	0x3fea3baa5bf15238              # double 0.81978338201094569
	.quad	0x3fbbc3d7b10d8b90              # double 0.10845707008915739
	.quad	0x3fcb43e6d5b4b29c              # double 0.21300969538551306
	.quad	0x3fed8b0953ed935a              # double 0.92322222130006115
	.quad	0x3fd5dbeeb3f11402              # double 0.34154861042435425
	.quad	0x3fed7fd78c6486a8              # double 0.92185571117825749
	.quad	0x3fe64dd2f1d2f96a              # double 0.69700000029824349
	.quad	0x3fac1c1385f762b0              # double 0.054901704886736069
	.quad	0x3fb82091a78dd478              # double 0.094246962935203515
	.quad	0x3fd25929189a188a              # double 0.28669192698033241
	.quad	0x3fe24d5a2e7f4a53              # double 0.57194241601457418
	.quad	0x3fe40c3f78418eb8              # double 0.62649510848537826
	.quad	0x3fec114298f03ea9              # double 0.87710695143501483
	.quad	0x3fd9a2b3d0044e54              # double 0.40055556596891972
	.quad	0x3feb641b9101daea              # double 0.85597017595031599
	.quad	0x3fd7e62bf6bce79c              # double 0.37342356772898611
	.quad	0x3fe59ac2836fcfde              # double 0.67514157935374519
	.quad	0x3fe773550a8fb113              # double 0.73282863676789345
	.quad	0x3feb52884d9ef8f2              # double 0.85382476005886887
	.quad	0x3fe6f9d8a17e14e8              # double 0.71799880544190575
	.quad	0x3fee95608e48ccce              # double 0.95573451795498854
	.quad	0x3fa1e2597c174d70              # double 0.034930035016851657
	.quad	0x3fc0521738a60530              # double 0.12750520959893086
	.quad	0x3fd239ed5d5a90f6              # double 0.28478559605197462
	.quad	0x3fd12f22807e99c0              # double 0.26850187824529925
	.quad	0x3fdeeb9f150560d4              # double 0.48313118985016712
	.quad	0x3fb944d824fae968              # double 0.098706730869627557
	.quad	0x3fd8b002102b8b8a              # double 0.38574267939673546
	.quad	0x3fdf1919e9e52fe2              # double 0.48590705720266503
	.quad	0x3fe2a4d3c11836b4              # double 0.5826205035570724
	.quad	0x3fc3f14cdaf376bc              # double 0.15580139819114958
	.quad	0x3fe0e2deb285a170              # double 0.52769408099724835
	.quad	0x3fd5eeceac46f0c2              # double 0.34270064186035765
	.quad	0x3fd70f3824002152              # double 0.36030391231226588
	.quad	0x3fd4dbca1be006a0              # double 0.32591488573243943
	.quad	0x3fe11781d8039e54              # double 0.53411953153858827
	.quad	0x3fb26aa9745944d8              # double 0.071940031915136315
	.quad	0x3f9350bdd2b16760              # double 0.018862691864661385
	.quad	0x3fe60f2bbea205ec              # double 0.68935191376675453
	.quad	0x3fe9d0c9def82d02              # double 0.80673688458173864
	.quad	0x3fd87f7accd67560              # double 0.38278074268040108
	.quad	0x3fe8b619fb213b34              # double 0.77222918556967679
	.quad	0x3fd6346f7b562280              # double 0.3469504074533134
	.quad	0x3fe928003333d660              # double 0.78613290787206935
	.quad	0x3fe4b288486056f7              # double 0.64679350028992999
	.quad	0x3fe6e969899860ef              # double 0.71599270700519735
	.quad	0x3feeec43a769afca              # double 0.96634085367031131
	.quad	0x3fe5b7624ac781e3              # double 0.67863573651635212
	.quad	0x3fea47df5f5835c7              # double 0.82127350446688119
	.quad	0x3fec0051aaaaf788              # double 0.87503894170343788
	.quad	0x3fd46f5c61315dd8              # double 0.31929692737091164
	.quad	0x3fe360b89067d319              # double 0.60555675701343425
	.quad	0x3fd71e91d9484e4e              # double 0.36124082774151567
	.quad	0x3fd4450c7ee09086              # double 0.31671440496780467
	.quad	0x3feb76e83e290044              # double 0.85826503887802418
	.quad	0x3fdec74ebdb70ff0              # double 0.48091476942886313
	.quad	0x3f94db9cdb18b000              # double 0.020369006035409143
	.quad	0x3fe88a3257df5d7b              # double 0.76686970865823356
	.quad	0x3fe23853c9859388              # double 0.56937589034770131
	.quad	0x3fa1d08b0aaef5e0              # double 0.034794182829027909
	.quad	0x3fdf4e681a29efdc              # double 0.48916056208667924
	.quad	0x3fc386c7da86ef78              # double 0.15255067987697735
	.quad	0x3faedad8d934e630              # double 0.060263420595628836
	.quad	0x3fe654bf77ce4755              # double 0.6978452053028642
	.quad	0x3feda6ab80a56506              # double 0.9265954506510361
	.quad	0x3fe2c453e36e0f18              # double 0.58646578235536406
	.quad	0x3fe1968949a327ac              # double 0.54962601072587836
	.quad	0x3fce207f39d15928              # double 0.2353667290032686
	.quad	0x3fcd7143b0395f64              # double 0.23001905541127166
	.quad	0x3fe8b94e8374ade8              # double 0.77262044596630819
	.quad	0x3fba8ffd54ebb628              # double 0.10375960658321814
	.quad	0x3fdd89c5f674acca              # double 0.46153401439614739
	.quad	0x3fe0cd0d06a92b7c              # double 0.52503062535230027
	.quad	0x3fb4a8304a11f120              # double 0.080691354831234907
	.quad	0x3fba91f57f551358              # double 0.10378965719889999
	.quad	0x3fea1209b4b615b4              # double 0.81470189376039181
	.quad	0x3fe5be89e715b03f              # double 0.67950911649450763
	.quad	0x3fc67fd1f80d854c              # double 0.17577576267198436
	.quad	0x3fd488339ce2f1cc              # double 0.32081308670947517
	.quad	0x3fee80ac553346cc              # double 0.95320717468913462
	.quad	0x3fdee8416761b7f6              # double 0.48292574973936497
	.quad	0x3fe618dfc6780bfe              # double 0.6905363918634746
	.quad	0x3fda5c24b8e465ea              # double 0.41187398963810884
	.quad	0x3f9233af7a04c8c0              # double 0.017775289366178226
	.quad	0x3fec8e9ff7760972              # double 0.89241026241533761
	.quad	0x3fe74d325cae8ef0              # double 0.72817342855384304
	.quad	0x3feebc91e007b054              # double 0.96051877742639613
	.quad	0x3fef01e65e8c9ad9              # double 0.96898191897056584
	.quad	0x3fdfc5b3c5d528dc              # double 0.49644178695292651
	.quad	0x3fbe8865768c8058              # double 0.11926874298342349
	.quad	0x3fdcb1af676578d8              # double 0.44834504220297111
	.quad	0x3fecc7b40f8a4e1b              # double 0.89937785182195584
	.quad	0x3fe332a886679cd8              # double 0.59993387461590952
	.quad	0x3fbdaabffcdccd30              # double 0.11588668750191711
	.quad	0x3fdf2f5f20066252              # double 0.48726633193431212
	.quad	0x3f873019f06c04c0              # double 0.011322214746089521
	.quad	0x3fefc1f7a4781e67              # double 0.99242765543835964
	.quad	0x3fed8efc4d5ca883              # double 0.92370429143672117
	.quad	0x3fd68da954566be4              # double 0.35239632831661383
	.quad	0x3fe5196c77e489ab              # double 0.65935347954318979
	.quad	0x3febfb43908d970f              # double 0.87442186577820447
	.quad	0x3fe3d649a7392f06              # double 0.61990816746535482
	.quad	0x3fe9a1e9c9403d65              # double 0.80101479822944255
	.quad	0x3fe56d9505d41c94              # double 0.66962672365561327
	.quad	0x3fccca7eb1efcc90              # double 0.22492965400997322
	.quad	0x3fd98c7297590e2a              # double 0.39919724254670774
	.quad	0x3fef02d1d868d52d              # double 0.96909420268517509
	.quad	0x3fd58d07546755aa              # double 0.33673270456832916
	.quad	0x3fdd33e7db26cf18              # double 0.45629307176135248
	.quad	0x3fe1022b4c33f794              # double 0.53151478656194451
	.quad	0x3fe777351e07386c              # double 0.73330169548877455
	.quad	0x3fb37fb784b127b8              # double 0.07616755475569803
	.quad	0x3fe0a8ec84d925a2              # double 0.52062059351844803
	.quad	0x3fdab4e167707b14              # double 0.41729006864072571
	.quad	0x3fe6506fce6eb225              # double 0.6973189384348798
	.quad	0x3fddc6fa324687cc              # double 0.46526961240499243
	.quad	0x3fe681c97e04096a              # double 0.70334314930395903
	.quad	0x3fd1888b436207e4              # double 0.27395898418774167
	.quad	0x3fd6675e6747d1c0              # double 0.35005912862768795
	.quad	0x3feced9b2bd50554              # double 0.9040046554656933
	.quad	0x3fef28e7e40019aa              # double 0.97374338656736836
	.quad	0x3fe865d0958a6d6c              # double 0.76242856223272559
	.quad	0x3fe86e8f2d042e61              # double 0.76349600593807676
	.quad	0x3fcee821da668754              # double 0.24145911373221429
	.quad	0x3fe5aec6ab6dceb9              # double 0.67758496744359953
	.quad	0x3fe1b7c604022616              # double 0.5536832884110392
	.quad	0x3fea39a81056b7be              # double 0.81953814688835513
	.quad	0x3fd718fef7d86f4e              # double 0.36090063289315288
	.quad	0x3fe76b458c27e91e              # double 0.73184468626212484
	.quad	0x3fef9992e339dd08              # double 0.9874967992790582
	.quad	0x3fc62ae49d7197f8              # double 0.17318399131471529
	.quad	0x3fd62a324981c126              # double 0.3463254659500471
	.quad	0x3fea16384781c2ad              # double 0.81521238294779652
	.quad	0x3fee72365ac02726              # double 0.95144193386770293
	.quad	0x3fdeb1366b1c7362              # double 0.47956619701454006
	.quad	0x3fb3ded9635aad68              # double 0.077619158512495567
	.quad	0x3fe23d18e8683802              # double 0.56995816604626293
	.quad	0x3fdeface2b5b4144              # double 0.48405794366864918
	.quad	0x3fe5bad05efffd7d              # double 0.67905443720512404
	.quad	0x3fe187e03763747b              # double 0.54783640688005109
	.quad	0x3fcc9b03f1cea1a0              # double 0.22348069483747413
	.quad	0x3fe975e12e333bed              # double 0.7956396009775496
	.quad	0x3fbd63e1e8a11f28              # double 0.11480533532551063
	.quad	0x3fd5cd7e35d9973e              # double 0.34066729792390393
	.quad	0x3fd3e377b4fca6f6              # double 0.31075852083686983
	.quad	0x3fe4ab157c885093              # double 0.64588426897764106
	.quad	0x3fd3b95c8af9596e              # double 0.30818856784517024
	.quad	0x3fe49b8b3e9c60e0              # double 0.64398729542429223
	.quad	0x3fe3d69ced812ebb              # double 0.61994787585850675
	.quad	0x3fded81178157a8a              # double 0.48193775870269262
	.quad	0x3fcb8ae9bf440228              # double 0.21517679061072781
	.quad	0x3fd9606046809858              # double 0.3965073288440002
	.quad	0x3fdc1072d8367636              # double 0.43850394358182443
	.quad	0x3fd949af1c76289e              # double 0.39512231616448357
	.quad	0x3fd4df50b6e94608              # double 0.32613008367943097
	.quad	0x3fa28492d1da9ce0              # double 0.036167705647409454
	.quad	0x3fe82d129790ba87              # double 0.75550202944380451
	.quad	0x3fdbdb5c81387ffc              # double 0.43526375407418505
	.quad	0x3fcba2913b68b214              # double 0.21589866066769103
	.quad	0x3fba94fe8c5f30b8              # double 0.10383597304388814
	.quad	0x3fb2e32ce24f00f8              # double 0.073778920413136606
	.quad	0x3fcfa14d1a9332a0              # double 0.24711002156836503
	.quad	0x3fcc1ad3614d4b54              # double 0.21956865550108751
	.quad	0x3fd05a32f9213eee              # double 0.25550531701172374
	.quad	0x3fd7470b803d8d96              # double 0.36371123813133843
	.quad	0x3fc9e8b75d95a7c8              # double 0.20241443700370909
	.quad	0x3fe80a9a8a505162              # double 0.75129439367678352
	.quad	0x3fed057e05489c82              # double 0.90692044288597651
	.quad	0x3f505d3423ceae00              # double 9.9878398689667857E-4
	.quad	0x3fd5e56d8333fd72              # double 0.34212816059876794
	.quad	0x3fe09e9fea8ae290              # double 0.51936336335264066
	.quad	0x3fe4d194810d00cc              # double 0.65058350758774841
	.quad	0x3fedd957b50e0b22              # double 0.9327810798862155
	.quad	0x3facf7316fb8e4b0              # double 0.056573433769196213
	.quad	0x3fcbcfdfde025c00              # double 0.21728132572454228
	.quad	0x3fee07fcd686ab53              # double 0.93847505473727677
	.quad	0x3fdd4dabc5969bba              # double 0.4578656606267334
	.quad	0x3fefcba6ac873a52              # double 0.99360974976463923
	.quad	0x3fe8ad2e82de9699              # double 0.77114034233518958
	.quad	0x3fe2f34611602ff1              # double 0.59219649690339626
	.quad	0x3fefef34edb59b86              # double 0.9979500429879955
	.quad	0x3fe6f13b98537820              # double 0.71694736243421531
	.quad	0x3fe8bd67bc610d27              # double 0.77312075417322468
	.quad	0x3fcb9ef7d200e404              # double 0.21578881982875953
	.quad	0x3fd25fb7eecd89d6              # double 0.28709219284624277
	.quad	0x3fc31912cae7c470              # double 0.14920267970549927
	.quad	0x3fcbc7724ae00788              # double 0.21702412277232619
	.quad	0x3fe3e08cb9f89240              # double 0.62116085360009521
	.quad	0x3fb85ac7f9ca9800              # double 0.095135210499023514
	.quad	0x3fda072de4759f2c              # double 0.40668818769926207
	.quad	0x3feec4db166efe06              # double 0.96153025037341489
	.quad	0x3fd861f1efa47a96              # double 0.38097809221827938
	.quad	0x3fd5125ca1ccb9da              # double 0.32924571800950064
	.quad	0x3f48349e959b3800              # double 7.3869460467235193E-4
	.quad	0x3fd092c770a59dfe              # double 0.25895868302038128
	.quad	0x3fc2e4744c562fbc              # double 0.14759687163711799
	.quad	0x3fb6a682728a8020              # double 0.088478234256854638
	.quad	0x3fe1064bbd7e858b              # double 0.53201853762236462
	.quad	0x3fa5a7f457b01fd0              # double 0.042297015861606391
	.quad	0x3fed4ccc48777de8              # double 0.91562475351014161
	.quad	0x3fec6d0386ddecb5              # double 0.88830734578313886
	.quad	0x3fe8abdc5d222c6f              # double 0.770979101086949
	.quad	0x3fe7131e649e19fb              # double 0.72108382846710073
	.quad	0x3fe9e84e9ce1035e              # double 0.80960779800816929
	.quad	0x3fe6985ebace51ae              # double 0.7060998581460376
	.quad	0x3fd651219df2c75e              # double 0.34870186257022862
	.quad	0x3fedb8b822d099d4              # double 0.92879874038481569
	.quad	0x3fd837fc455f6958              # double 0.37841707968404625
	.quad	0x3fe2d36a83c175a6              # double 0.58830762609038767
	.quad	0x3fea38930a04f235              # double 0.81940605122469512
	.quad	0x3fcd11235bb2f210              # double 0.22708551385393649
	.quad	0x3fd119ee9660b694              # double 0.26720776257830292
	.quad	0x3fe2307b0757e884              # double 0.56841803964859183
	.quad	0x3fb29d41fa1a9f48              # double 0.072712062416596557
	.quad	0x3fb1aadc3e7b3688              # double 0.069013371710037075
	.quad	0x3f97c3fc92b4b900              # double 0.023208567098827793
	.quad	0x3fdc02a99399b79c              # double 0.43766250051600664
	.quad	0x3fe19a02d498e0b7              # double 0.55005017779242038
	.quad	0x3fdd66c530418dd6              # double 0.45939759933955082
	.quad	0x3fe3fd7a51de05da              # double 0.62469211568548677
	.quad	0x3fde00ae69932fca              # double 0.46879158315709601
	.quad	0x3fe1336b8d619f5c              # double 0.53752687085669093
	.quad	0x3fe75de8785935b2              # double 0.73021338944970737
	.quad	0x3fd5b315b035654e              # double 0.33905546386593677
	.quad	0x3fdfe9b57129fc1c              # double 0.49863945056125814
	.quad	0x3fca08b183175898              # double 0.20339030171334538
	.quad	0x3fdfb3a30cd4c064              # double 0.49533916714699999
	.quad	0x3fd5241f54130940              # double 0.33032973490130146
	.quad	0x3f34a3d5e8b5d000              # double 3.1494114292418551E-4
	.quad	0x3fe1459d55a200fe              # double 0.53974787449990891
	.quad	0x3fe301c72734ba62              # double 0.59396703393379036
	.quad	0x3feec72643e7aa31              # double 0.96181023848232005
	.quad	0x3fe046654f47a313              # double 0.50859323009817314
	.quad	0x3fdcf60dceef2dbc              # double 0.45251794060160555
	.quad	0x3fedf72a697f90ec              # double 0.93642159085405074
	.quad	0x3fda1db894143e46              # double 0.40806402645919027
	.quad	0x3fee70ce8a41bcc5              # double 0.95127036097792284
	.quad	0x3fd653e8f104271a              # double 0.34887145554294963
	.quad	0x3fe9222a242d43f4              # double 0.78542048517021934
	.quad	0x3fd80d3f979764d2              # double 0.37580861858220971
	.quad	0x3fc91dc5146d1cc4              # double 0.19622100350736649
	.quad	0x3facf5ea5eaa22b0              # double 0.056563686424003889
	.quad	0x3faa4100496fcc40              # double 0.05127716919368952
	.quad	0x3fd5dcf4c6e579b6              # double 0.34161109374499732
	.quad	0x3fb89256762bc948              # double 0.095982936716415002
	.quad	0x3fc06b7f9789da7c              # double 0.12828059100475631
	.quad	0x3fec4f20360c3f3e              # double 0.8846589141485095
	.quad	0x3fec97705b74b9ba              # double 0.89348619329921708
	.quad	0x3fd733d96607eacc              # double 0.36253962482412017
	.quad	0x3fc237d15fec8728              # double 0.14232842620645525
	.quad	0x3fe54ea793d12c40              # double 0.66585139151118966
	.quad	0x3fee50bd0f6375c4              # double 0.94735577588624453
	.quad	0x3f917fbfec98d6e0              # double 0.017088888946282021
	.quad	0x3fe6a64d55382f41              # double 0.70780054706981599
	.quad	0x3fadc56df83e0160              # double 0.0581468930749931
	.quad	0x3fdfd44bec2641cc              # double 0.49733255444973845
	.quad	0x3fdcdbff2d040ee6              # double 0.45092753788070039
	.quad	0x3fec5069849a4667              # double 0.88481593989326945
	.quad	0x3fa541adac7ac340              # double 0.041516711525565686
	.quad	0x3fd270facbf307e8              # double 0.28814573208739924
	.quad	0x3fcb9dadccaf0274              # double 0.21574947828596047
	.quad	0x3fc47ac87fda0c68              # double 0.15999704592477149
	.quad	0x3fda7e77c69b612e              # double 0.41396898646555058
	.quad	0x3fef563dd75d671d              # double 0.97927753508995218
	.quad	0x3fd50244c9d21334              # double 0.32826347073596485
	.quad	0x3fcd64d600099a30              # double 0.22963976861793034
	.quad	0x3febb3d87895fafb              # double 0.86570380737234076
	.quad	0x3fe7a7fb257f1253              # double 0.73925549815664693
	.quad	0x3fe68f4579383359              # double 0.70498918224039209
	.quad	0x3fe4a37b3181f66b              # double 0.64495620412317345
	.quad	0x3fd4248c7c879ae6              # double 0.31473076020340185
	.quad	0x3fee5396729a72c1              # double 0.94770357497653646
	.quad	0x3fd80efb033177a8              # double 0.3759143382247836
	.quad	0x3fe226f1e54505a1              # double 0.56725401667806719
	.quad	0x3fb07300e1adbc88              # double 0.064254813287094703
	.quad	0x3fc5980ceb233b8c              # double 0.16870271188096486
	.quad	0x3fed240b99b52e67              # double 0.91065006276171523
	.quad	0x3fdea33ca21c00ee              # double 0.4787131865596298
	.quad	0x3fec8c1c29fb74db              # double 0.8921032733884674
	.quad	0x3f9992623166fea0              # double 0.024972471490171899
	.quad	0x3fc0b7bf825a4738              # double 0.13060754647136164
	.quad	0x3fc5a1d2ca3f3b08              # double 0.16900095820752647
	.quad	0x3fcef96c7d786720              # double 0.24198680998306887
	.quad	0x3fe6a267a99ab21a              # double 0.70732482076488457
	.quad	0x3fec839c660e7bf2              # double 0.89106578762937105
	.quad	0x3fa1a99a10e6ce20              # double 0.034497084201032147
	.quad	0x3fe1426d0ee8bc1b              # double 0.53935864364564468
	.quad	0x3fef6b7703d7fdc5              # double 0.98186827421880507
	.quad	0x3fc64eb2dd983c34              # double 0.17427669353534869
	.quad	0x3fe54f0b5bde39f9              # double 0.66589897101385909
	.quad	0x3fe7888700b308f7              # double 0.73541593681900863
	.quad	0x3fd36b366b08501e              # double 0.30341873600377933
	.quad	0x3fded5aaebeec790              # double 0.48179123916917721
	.quad	0x3fe7e9b2ce841f93              # double 0.7472776444928847
	.quad	0x3fdbbef5a9c9084c              # double 0.43353025036424664
	.quad	0x3fcdc27a4b6f7da4              # double 0.2324974888169723
	.quad	0x3fab713fc45db750              # double 0.053598396988361885
	.quad	0x3fd8f61e5ccb4ac0              # double 0.39002188741612187
	.quad	0x3f454898bbf96800              # double 6.4952333191148348E-4
	.quad	0x3fe0148b4f7b91ec              # double 0.50250783466304716
	.quad	0x3fbb3902af534518              # double 0.10633866100694822
	.quad	0x3feb61c4cda3153b              # double 0.8556846634243479
	.quad	0x3fd696f4bee98008              # double 0.35296362537155845
	.quad	0x3fef2eefeb88de98              # double 0.97447963717327734
	.quad	0x3fe29e9b35f49d30              # double 0.58186111963451559
	.quad	0x3fe0edf037dfcf06              # double 0.52904520905437447
	.quad	0x3fe108068611cd48              # double 0.53222967324692494
	.quad	0x3feee644153efb65              # double 0.96560863637556038
	.quad	0x3fec183992aad3cf              # double 0.87795714040714212
	.quad	0x3fe7302044a98fd3              # double 0.72462476168265721
	.quad	0x3fefe2d628c2d05e              # double 0.99644000970011937
	.quad	0x3fd6250ce014b492              # double 0.34601137049578157
	.quad	0x3fc10a520f0e50c8              # double 0.13312745795395231
	.quad	0x3f9e791889aa1ac0              # double 0.029758819010136106
	.quad	0x3feca33c7fcb411f              # double 0.89492630920179639
	.quad	0x3fa90927dab05520              # double 0.048897977300081275
	.quad	0x3fc22422347ebc10              # double 0.1417277103732606
	.quad	0x3fd3087758a2f60a              # double 0.29739173561014864
	.quad	0x3fd57f312ab4ada2              # double 0.33588818712697777
	.quad	0x3fe7ca521b575336              # double 0.743447354698765
	.quad	0x3fea6b3a4f6c46a0              # double 0.82558932792945327
	.quad	0x3fe83fbb4abcad76              # double 0.75777973744463512
	.quad	0x3fdf31e0b20bde84              # double 0.48741929423656694
	.quad	0x3fb3a378dbdb8a18              # double 0.076713136364141454
	.quad	0x3fef60487711c067              # double 0.98050330405932306
	.quad	0x3fe96b02c54efd67              # double 0.79431284462763763
	.quad	0x3f68b7aa27979d00              # double 0.0030172656376979967
	.quad	0x3fd91bea7a2c6b50              # double 0.39232885294920994
	.quad	0x3fe981dbeac9edb5              # double 0.79710193497833493
	.quad	0x3fe0a1532569c21b              # double 0.51969296748399374
	.quad	0x3feb54ecfcf4aa8f              # double 0.85411691098609477
	.quad	0x3fd0d08a9772a6f6              # double 0.26272835531072702
	.quad	0x3feba5d6024ee11e              # double 0.86399364901356868
	.quad	0x3fbb0b4d3a52cc90              # double 0.10564119981681785
	.quad	0x3fe1ceb0d068777b              # double 0.55648079590513022
	.quad	0x3fea2b59621c2665              # double 0.81779164468862275
	.quad	0x3fdd13ac4b077b36              # double 0.45432574584076535
	.quad	0x3fe91a714b0bd1f4              # double 0.7844778505082659
	.quad	0x3feb7f780fcf3e5a              # double 0.85931017959405698
	.quad	0x3fd141ff14e43c08              # double 0.26965310135068465
	.quad	0x3fd2df5b1fefcbd2              # double 0.29488256567782145
	.quad	0x3fefce39a8de4c8b              # double 0.99392397863484072
	.quad	0x3fe5a0c1d3ae71e7              # double 0.67587367385891362
	.quad	0x3fe83f5c61b22c4d              # double 0.75773448067901372
	.quad	0x3fec610cf6dcc873              # double 0.88684700217551293
	.quad	0x3fdcace4912174ae              # double 0.44805254147451989
	.quad	0x3feca887039bd0f2              # double 0.89557219223800488
	.quad	0x3fda19ce6fec0d62              # double 0.40782509736910388
	.quad	0x3fb24e3aef027c88              # double 0.071506198265057219
	.quad	0x3fd5ce46d8c6dc7e              # double 0.34071513337716641
	.quad	0x3fe977a7e03e0ff6              # double 0.79585641667699636
	.quad	0x3fdfe1359cfc5e4e              # double 0.49812069254537483
	.quad	0x3fe89710db2eba0d              # double 0.76844065484130086
	.quad	0x3fe8ff6b14125fda              # double 0.78117898865002222
	.quad	0x3fe4b03b333bbea7              # double 0.64651260382193676
	.quad	0x3fd6cfb8e50f0fbe              # double 0.35642835968996767
	.quad	0x3fe4cd89b2ccdced              # double 0.65009007379458483
	.quad	0x3fc67585b1c518f8              # double 0.17546149425670143
	.quad	0x3febf95250954bec              # double 0.8741847585573601
	.quad	0x3faf9c828a50a600              # double 0.061740950950774476
	.quad	0x3fee4b2c282f4508              # double 0.9466763291221989
	.quad	0x3fdd2e1e056d5a1a              # double 0.45593977479930603
	.quad	0x3fe61dcd13e255d0              # double 0.69113782771699483
	.quad	0x3fe1f21bd1dc2bac              # double 0.56080428112305958
	.quad	0x3f9f6a013097cb00              # double 0.030677813139798893
	.quad	0x3f9dc42195ebf700              # double 0.029068493628975567
	.quad	0x3fc812f533977220              # double 0.1880785467063939
	.quad	0x3fc39d212e04e134              # double 0.15323271510147551
	.quad	0x3fe46085e23e896f              # double 0.63678259075486021
	.quad	0x3fe2157ca973ad5f              # double 0.56512291999881004
	.quad	0x3fb24490f2bb43e0              # double 0.07135873724043007
	.quad	0x3fcd54f6d5b4774c              # double 0.22915540156184944
	.quad	0x3fea46fb02ae9be4              # double 0.82116461299744658
	.quad	0x3fd8c0ca13a1ea26              # double 0.38676692883714947
	.quad	0x3fdaa1d2ec2cd0a8              # double 0.41612694801302519
	.quad	0x3fea35b49ba9cc71              # double 0.8190558471964221
	.quad	0x3fe8a6852842d571              # double 0.77032716620912656
	.quad	0x3fe050584280418d              # double 0.50980771053768736
	.quad	0x3fbdcc0f3fc0cd08              # double 0.11639495188210358
	.quad	0x3fdf468df34167dc              # double 0.4886813045064835
	.quad	0x3fb46eb10932a968              # double 0.079814018960552624
	.quad	0x3fe6cb90ae8cd56f              # double 0.71234926311323743
	.quad	0x3fe35d857fbd423b              # double 0.60516619633751334
	.quad	0x3fe22c28ed614eab              # double 0.56789060939123226
	.quad	0x3fef6beabf943c05              # double 0.98192346017629061
	.quad	0x3fe23c7d6b219dae              # double 0.56988402294239449
	.quad	0x3fe4332eeaa36ca6              # double 0.63124795749481133
	.quad	0x3fed03a227f43f37              # double 0.90669353297742006
	.quad	0x3fe38fe561ea3320              # double 0.61131543277733513
	.quad	0x3fd89de1af97afd6              # double 0.38463632724483199
	.quad	0x3febc8a9679fa05a              # double 0.86824484099362143
	.quad	0x3fdf6438ac592fd2              # double 0.4904920275773722
	.quad	0x3feb13bb8e67bfda              # double 0.84615876973657156
	.quad	0x3fd17b10329ea97c              # double 0.27313618605935353
	.quad	0x3fe2eb786a4730df              # double 0.59124394185485218
	.quad	0x3fe0d508408c1d86              # double 0.52600491148852835
	.quad	0x3fe46dda79e50337              # double 0.638409841609337
	.quad	0x3fe366f149d1454d              # double 0.60631622712586764
	.quad	0x3f96c97d75122720              # double 0.022252998609963659
	.quad	0x3fccaeda6c7c2f38              # double 0.22408609673618129
	.quad	0x3fa869e08dc9ea80              # double 0.047682778652377245
	.quad	0x3feead187b4f364e              # double 0.95862983783599431
	.quad	0x3fb8929f933e62f8              # double 0.095987294624489183
	.quad	0x3fef7f4ce0715502              # double 0.98428958736863614
	.quad	0x3fdf7b2517310bfc              # double 0.49189116730502724
	.quad	0x3fdb0efe1c8fdcc8              # double 0.42279007710699235
	.quad	0x3fa45c55f9100570              # double 0.039766966488978706
	.quad	0x3fe412231410f016              # double 0.62721399230167907
	.quad	0x3feffb19f97e2ab0              # double 0.99940203408308115
	.quad	0x3fe12cae47b2b16c              # double 0.53670419696349603
	.quad	0x3fc6e240ff8cd4b8              # double 0.17877972105057949
	.quad	0x3fd6a1efd9367928              # double 0.35363384449182655
	.quad	0x3fd03c7d53f6e40c              # double 0.25369198989534492
	.quad	0x3fe17d69e619c7fa              # double 0.54655928556007827
	.quad	0x3fede3da4803b1b5              # double 0.93406404557531764
	.quad	0x3fe58245e3ef931a              # double 0.67215246695249964
	.quad	0x3fe0038e3994df85              # double 0.50043402906793288
	.quad	0x3fcff203981f861c              # double 0.2495731823719759
	.quad	0x3fd9f65a39ba1cee              # double 0.40566115987208107
	.quad	0x3fe2360be9bf6fe0              # double 0.56909747747294759
	.quad	0x3fd17a9ab6fdd2f6              # double 0.27310817594779679
	.quad	0x3fe76dd965f8f0a4              # double 0.73215932766426706
	.quad	0x3feb3b94f7fc0139              # double 0.85102318224384199
	.quad	0x3fe4b0e9a640c5d1              # double 0.64659578772823967
	.quad	0x3fe893beaa755e15              # double 0.76803525250119498
	.quad	0x3f37521634870800              # double 3.5584489935669428E-4
	.quad	0x3fdfebb963c14092              # double 0.49876246205986619
	.quad	0x3fe6d43a8b0cb0c5              # double 0.71340682180518711
	.quad	0x3fee9e4945c98ade              # double 0.95682204847647845
	.quad	0x3fe3257161baa670              # double 0.59832066619601498
	.quad	0x3fece1598c9e6a4b              # double 0.9025085207425233
	.quad	0x3fe53529f44a18b0              # double 0.66273973191052526
	.quad	0x3fec97ceb697b894              # double 0.89353118574742262
	.quad	0x3fe8c5251de95d82              # double 0.77406555025201862
	.quad	0x3fef85e89508bf32              # double 0.98509625538097212
	.quad	0x3fd908171fe5bd62              # double 0.39111879458410759
	.quad	0x3fe271fab71ccb83              # double 0.57641349567562405
	.quad	0x3fda273cfdc87906              # double 0.40864491256242308
	.quad	0x3fe66cc738c7eb3e              # double 0.70077859010721233
	.quad	0x3feba19a9c9569b5              # double 0.86347704489462862
	.quad	0x3faa6ec36faa0c90              # double 0.051626307850733189
	.quad	0x3feb42f3839e2ba3              # double 0.85192275721179944
	.quad	0x3fde0dcc8d2dfb7a              # double 0.46959222590515248
	.quad	0x3fdbf416fcb203d6              # double 0.43677305867464378
	.quad	0x3fdccaa26231b182              # double 0.44986781682271026
	.quad	0x3fc365533faa24e8              # double 0.15152969940780925
	.quad	0x3fe5514fc866e65a              # double 0.66617573872572255
	.quad	0x3fe579d38bafa61a              # double 0.67112138063857008
	.quad	0x3fe503002c06c6a1              # double 0.65661629294318768
	.quad	0x3fe3cd4978cf9117              # double 0.61880944820271366
	.quad	0x3fd9fd3cf7773f5e              # double 0.406081430116492
	.quad	0x3fc45ce144e547dc              # double 0.15908447135967563
	.quad	0x3fa66bc659ab3f70              # double 0.043791006513514641
	.quad	0x3fe2037ef57832cb              # double 0.56292674964205369
	.quad	0x3fe7723967552e85              # double 0.73269338781524651
	.quad	0x3febbca321eeaed1              # double 0.86677700641072353
	.quad	0x3fe3c7af39ae1545              # double 0.61812554612758019
	.quad	0x3fcc49900381a810              # double 0.22099495097364796
	.quad	0x3fdb2c9a9c53d288              # double 0.42459740892744735
	.quad	0x3fe6a002208129f7              # double 0.70703226421875243
	.quad	0x3fc7470c330c44b0              # double 0.18185570232939119
	.quad	0x3fe5dc9701d43053              # double 0.68317747456741029
	.quad	0x3fe35becf858342f              # double 0.60497139458460036
	.quad	0x3fec30f77d98ddde              # double 0.88097738772097123
	.quad	0x3fec819b8065c487              # double 0.89082121923105795
	.quad	0x3fdc0ce8bf78101a              # double 0.43828791330474959
	.quad	0x3fc9a16f7278c098              # double 0.20023911561429908
	.quad	0x3fd82bb8b613457c              # double 0.3776685503081223
	.quad	0x3fe4a579dc91f7b5              # double 0.64519970970262952
	.quad	0x3fbb14c2dd2d4eb8              # double 0.1057855405791156
	.quad	0x3fdd632e03e65254              # double 0.45917845135526147
	.quad	0x3fedf99a8d1cc0c6              # double 0.93671920357703509
	.quad	0x3fea0fd7f5f7f9b8              # double 0.8144340328288342
	.quad	0x3fe6c264eee0564c              # double 0.71122976928263304
	.quad	0x3fe5099ee5806972              # double 0.65742440056355478
	.quad	0x3fa75ecbae5d8080              # double 0.045645108256167966
	.quad	0x3feaad9cf8a7da09              # double 0.83369301381645855
	.quad	0x3fe7b36216745840              # double 0.74064735780371649
	.quad	0x3fe731205e7c304e              # double 0.72474688009379817
	.quad	0x3fddf1e6831363a8              # double 0.46788943100323843
	.quad	0x3fed887aa21ce84d              # double 0.92291003859214416
	.quad	0x3fc8d0c23ec0d4a4              # double 0.19387081207392953
	.quad	0x3fe99585b82df071              # double 0.79950223896550032
	.quad	0x3fd97e325d96ced8              # double 0.39832743777809076
	.quad	0x3fed16ab02c6e6ff              # double 0.90901709120154794
	.quad	0x3fa0b63612854ca0              # double 0.032640161286189739
	.quad	0x3fde15780b1ac8c4              # double 0.47006035885273101
	.quad	0x3fb0a0f33aff85a8              # double 0.064955903915253743
	.quad	0x3feb10e169829446              # double 0.84581060988842505
	.quad	0x3fcba9bc5cb8dfd0              # double 0.21611742522668331
	.quad	0x3f85900521c3bc40              # double 0.010528602688706923
	.quad	0x3fbcbb8d0b7ea5f0              # double 0.11223680048592377
	.quad	0x3fecf59e436e8aa9              # double 0.90498269243501739
	.quad	0x3fdb53d01455f72c              # double 0.42699052797239534
	.quad	0x3fce255694170a18              # double 0.23551447134930537
	.quad	0x3fc65c3633a0accc              # double 0.1746890785301275
	.quad	0x3fb2f61b497448e0              # double 0.074067788537181212
	.quad	0x3fe24b556b54c94a              # double 0.57169600451587965
	.quad	0x3fd146d334718660              # double 0.2699478160994655
	.quad	0x3fe79cb52854f10a              # double 0.73787935139947192
	.quad	0x3feef784437e0b6c              # double 0.96771443540670309
	.quad	0x3fc7510b5e557fec              # double 0.1821607790579941
	.quad	0x3fed4fb370edc82e              # double 0.91597911888516648
	.quad	0x3fd567f87bac3a34              # double 0.33447086408060334
	.quad	0x3fea1578381a2a82              # double 0.81512080151999577
	.quad	0x3fd5e397381bd1e4              # double 0.34201603392946667
	.quad	0x3fe88520366f2e38              # double 0.76625071174334547
	.quad	0x3fd71e6d16da79b2              # double 0.36123206359652749
	.quad	0x3fef2e3d558848f7              # double 0.97439448075809209
	.quad	0x3faa02c82ee44b70              # double 0.050802474712461243
	.quad	0x3fe8e358c8c3fe74              # double 0.77775229656249544
	.quad	0x3fc1572c2cdbdb60              # double 0.13547279539462931
	.quad	0x3fd22a8fe951fda2              # double 0.28384778771575203
	.quad	0x3fe4d7dcc08d7fc1              # double 0.65135038001971435
	.quad	0x3fe3469f4cc406e6              # double 0.6023708819704694
	.quad	0x3fef9ff69c6ca3ab              # double 0.98827677299151639
	.quad	0x3fdf991601c53e10              # double 0.4937186257638766
	.quad	0x3fd20641d19db496              # double 0.28163190336528865
	.quad	0x3feaaff15135b6f6              # double 0.83397737370770986
	.quad	0x3fdb5d579164feba              # double 0.42757214735682292
	.quad	0x3fdb91bd68aaeb7e              # double 0.4307702562470509
	.quad	0x3fc6c898149c81f0              # double 0.17799664503492307
	.quad	0x3f94b2f18cdc6b80              # double 0.020213865492319183
	.quad	0x3febbe93c9dabd65              # double 0.86701383042047253
	.quad	0x3fcbb7dfdec9061c              # double 0.21654890421091089
	.quad	0x3fde542c1aa67d6c              # double 0.47388746836255424
	.quad	0x3fe806ccc0d3bfed              # double 0.75083005582382401
	.quad	0x3fca491912c2f7bc              # double 0.20535577217191114
	.quad	0x3fe99b2ab2fa1693              # double 0.8001912589686121
	.quad	0x3fd54ec5a1950a08              # double 0.33293286113271892
	.quad	0x3fe60e07b943d26e              # double 0.68921266731792996
	.quad	0x3fe1ef74c380654c              # double 0.56048048194785727
	.quad	0x3fec7fdae3d9e4b7              # double 0.89060730459382043
	.quad	0x3fe42989e8f41a6d              # double 0.63007064341293317
	.quad	0x3fe8e1ababe8161e              # double 0.77754767966752403
	.quad	0x3fef0a0c9a39ac2e              # double 0.96997671243787464
	.quad	0x3fe93948659f17a9              # double 0.78824252937260042
	.quad	0x3fd8b7ffa9256888              # double 0.3862303878610267
	.quad	0x3fe3a996b5e47502              # double 0.61445174718724638
	.quad	0x3feedf7503c5acc8              # double 0.9647774766612196
	.quad	0x3fe52fac2c7c7d09              # double 0.66206940354086996
	.quad	0x3fd31011013d6744              # double 0.2978556167705515
	.quad	0x3fc33743393016a4              # double 0.15012398044944064
	.quad	0x3fe1dd9baf00ae23              # double 0.55830177478987186
	.quad	0x3fd41ab4ddb33066              # double 0.31413003588091326
	.quad	0x3fc9326e25d4cc38              # double 0.19685150954464503
	.quad	0x3fcbdafb54962978              # double 0.21762029295161844
	.quad	0x3fd41f15b1d42c46              # double 0.31439726224988751
	.quad	0x3fdda30dd4e6e148              # double 0.4630770281906007
	.quad	0x3fb8d691b82be500              # double 0.097024066413627707
	.quad	0x3fa4860b4c0d5df0              # double 0.040085175546376806
	.quad	0x3fe8e52b9408e4b8              # double 0.77797488129649306
	.quad	0x3fb2428167cee978              # double 0.071327293247042678
	.quad	0x3fe514bca4971dca              # double 0.65878135820906292
	.quad	0x3fed559054a5b9cc              # double 0.91669479878128745
	.quad	0x3fc8ba82fd460d50              # double 0.19319188467862114
	.quad	0x3fe63b0e31514d39              # double 0.69470891601887452
	.quad	0x3fd7847a4e3c9420              # double 0.36746080055519492
	.quad	0x3fdd05ad8b3a2092              # double 0.45347155186073806
	.quad	0x3fcc4997661cb29c              # double 0.22099583135549927
	.quad	0x3fe74756ed40ecfe              # double 0.72745844210240285
	.quad	0x3fe633ffd75ee117              # double 0.69384758057188634
	.quad	0x3fd054989d5ba5c0              # double 0.25516333930007917
	.quad	0x3f9005ebb9228ec0              # double 0.015647586035483441
	.quad	0x3fab450699069680              # double 0.053260999851130642
	.quad	0x3fcc87929c33e0b4              # double 0.22288735034067531
	.quad	0x3fef36d006eea970              # double 0.97544099191627076
	.quad	0x3fecf92d300e1cb1              # double 0.90541705499426517
	.quad	0x3fe02bcb7d987237              # double 0.50534605532045063
	.quad	0x3fe361349e106427              # double 0.60561591026192196
	.quad	0x3fdedad327dc05e6              # double 0.48210600750471
	.quad	0x3fd68af27d65df2a              # double 0.35223066564457162
	.quad	0x3fef9e99585aec55              # double 0.98811023003453135
	.quad	0x3fcd683f9721b940              # double 0.22974390868643901
	.quad	0x3fb7a9d398f029e8              # double 0.092435097540295552
	.quad	0x3fce339530f153d0              # double 0.23594918145923183
	.quad	0x3fe7c6bc9bc2e91d              # double 0.74300985738890157
	.quad	0x3fe67b054f004e9e              # double 0.70251717977449224
	.quad	0x3fd8148017eaeb18              # double 0.37625124297817214
	.quad	0x3fe1a2797760008b              # double 0.5510833102744227
	.quad	0x3fdb758b41a5b0d6              # double 0.42904931460249196
	.quad	0x3f864cdec10865c0              # double 0.010888805642980226
	.quad	0x3f8b8da8c669db40              # double 0.013453787379359761
	.quad	0x3fe06f6bc5928ed9              # double 0.51360119427087192
	.quad	0x3f5780b3e97d6c00              # double 0.0014344937280472703
	.quad	0x3fe4f1d6744bf8d1              # double 0.65452120508396139
	.quad	0x3fea2c1ad91e1d5a              # double 0.81788389592922361
	.quad	0x3fb72e92d2b4b958              # double 0.090554405633814894
	.quad	0x3fb626a97d504048              # double 0.086527436346160447
	.quad	0x3fdfaa540c8f63d6              # double 0.49477101542066515
	.quad	0x3fb81db7a60139e8              # double 0.094203451183808462
	.quad	0x3fd93ed5647dd604              # double 0.39446005643489479
	.quad	0x3fe15602e7ac1b28              # double 0.54174943207258242
	.quad	0x3fe2ff8db908ffc1              # double 0.59369550838163587
	.quad	0x3fdeb0e9eeab562e              # double 0.47954796130702249
	.quad	0x3fe70d2f14a20542              # double 0.7203593638406931
	.quad	0x3fea0aae0807b7e9              # double 0.81380368774784728
	.quad	0x3fead04c4e7760b2              # double 0.83792701077893228
	.quad	0x3fd4edf481d17f2a              # double 0.32702362706730759
	.quad	0x3fe93f69ab7efeaa              # double 0.78899081702544049
	.quad	0x3fdd0b2af7d291aa              # double 0.45380663110179376
	.quad	0x3fe6e0349ccfe57b              # double 0.7148688376175153
	.quad	0x3fe1777eb39813a2              # double 0.54583678318941886
	.quad	0x3fe6a62eced98fff              # double 0.7077859916721535
	.quad	0x3fe093e872435728              # double 0.51805517498971643
	.quad	0x3fab69e9d2fa63e0              # double 0.053542429927979418
	.quad	0x3f9272e80db07680              # double 0.018016458354500831
	.quad	0x3fec400f3e412873              # double 0.88281976851545918
	.quad	0x3fdb1d20d729c052              # double 0.42365284931202496
	.quad	0x3fe904556bd50c88              # double 0.78177901326161336
	.quad	0x3fe682e94af70175              # double 0.70348038331580531
	.quad	0x3fd5ac697e3c179a              # double 0.33864819839106419
	.quad	0x3fee9e9a16f82165              # double 0.95686058508094318
	.quad	0x3fef2edd7ca2dcee              # double 0.97447084753994573
	.quad	0x3fe6cb79783578ac              # double 0.71233819464011594
	.quad	0x3f9768b6c16b0700              # double 0.022860389285376037
	.quad	0x3fcc187db3d16e78              # double 0.21949740677051799
	.quad	0x3fca27a4ebe5c0c8              # double 0.20433484571868221
	.quad	0x3fed2f694312343b              # double 0.91203749751878804
	.quad	0x3fe3dc1461b937f5              # double 0.62061518751738609
	.quad	0x3fe676523a1ebc83              # double 0.70194350577902787
	.quad	0x3fd3313f2b5d52ce              # double 0.29988078341311286
	.quad	0x3fddec2b7f3d4fa4              # double 0.46753966737491681
	.quad	0x3fe3fb913bcf2136              # double 0.6244589012285704
	.quad	0x3fefe75d77dc4fb8              # double 0.99699281130096206
	.quad	0x3fddc0ff1bdb4794              # double 0.46490457268111496
	.quad	0x3fd2b38e3603929c              # double 0.29220919871139883
	.quad	0x3fb0215f8bf18830              # double 0.063009235063447688
	.quad	0x3fee5e7583173193              # double 0.94903064349778032
	.quad	0x3fd729e8568accd4              # double 0.36193283511529484
	.quad	0x3fe474ac9f704377              # double 0.63924246921861438
	.quad	0x3fe121fb3d8f79e5              # double 0.53539812110448948
	.quad	0x3fde7fd1fc2dc4c2              # double 0.47655152918657617
	.quad	0x3fd54565c0190c62              # double 0.33236068496279902
	.quad	0x3fd4f8d7c5ce541a              # double 0.32768816296567282
	.quad	0x3fdeda2935a76932              # double 0.48206548919337699
	.quad	0x3fd08b0e7ff125c2              # double 0.25848734373411386
	.quad	0x3fd40f5aefdd6fd0              # double 0.31343720840754674
	.quad	0x3fac9dbf72bcde30              # double 0.055891020542216174
	.quad	0x3fe080ca2c25638e              # double 0.51572140333438354
	.quad	0x3fc5786e1b7e1720              # double 0.16773773519906232
	.quad	0x3fe4743b8e83510a              # double 0.63918855509339889
	.quad	0x3fe7d9dbc612ff2b              # double 0.74534405409210558
	.quad	0x3fec7dce43333705              # double 0.89035714268695243
	.quad	0x3fd46cc0d972ea94              # double 0.31913777575724933
	.quad	0x3fd8136b80df8af6              # double 0.37618529877924745
	.quad	0x3fec039fb15362b2              # double 0.87544235834055528
	.quad	0x3fb85397d4100350              # double 0.095025529168208722
	.quad	0x3fe4c8d875d145cd              # double 0.64951727877831333
	.quad	0x3fd9ea299bffdd8a              # double 0.40491714701007508
	.quad	0x3fd2230a242bad04              # double 0.28338864834104549
	.quad	0x3fc2a5633990ef70              # double 0.14567222891661968
	.quad	0x3feb64ebcf8c0256              # double 0.85606947456842408
	.quad	0x3fe7f6e56e2c78af              # double 0.7488886977987671
	.quad	0x3fc2a16e3025c47c              # double 0.14555146552041609
	.quad	0x3fd8fc2f32a351e8              # double 0.39039211220850101
	.quad	0x3fe4ab877ab9a8be              # double 0.64593862504741373
	.quad	0x3fcb909b3999d944              # double 0.21535053551242289
	.quad	0x3faf1f72950b3360              # double 0.060786801046197381
	.quad	0x3fe76470d34348e3              # double 0.73101083051940596
	.quad	0x3fd9b31706b0c94c              # double 0.40155578282714965
	.quad	0x3fec5d9bcfa0b7ae              # double 0.88642683555894108
	.quad	0x3fe9175fcf185a8b              # double 0.78410330246227156
	.quad	0x3fea0f3f558243a6              # double 0.81436125470110166
	.quad	0x3feafcb472e7214e              # double 0.84334776346171636
	.quad	0x3feacd2a31fd523a              # double 0.83754453433591114
	.quad	0x3fcd1631e0940174              # double 0.2272398325512871
	.quad	0x3fde2b8cdfb6d4ba              # double 0.47140809866989353
	.quad	0x3f9d72c8c30f3620              # double 0.028758179574472575
	.quad	0x3febe1c3ebbe3137              # double 0.8713092426637904
	.quad	0x3fe843c4c7c354eb              # double 0.75827254310811776
	.quad	0x3fdc12480e4c5cb6              # double 0.43861581226651525
	.quad	0x3fe75996befa5dd5              # double 0.72968613911046509
	.quad	0x3fea8bcc0e25ad17              # double 0.82956507456893547
	.quad	0x3fe0768f731cd795              # double 0.51447269900266923
	.quad	0x3fe22d585a98b9c9              # double 0.56803529448171119
	.quad	0x3fe28328026d5594              # double 0.57851028894463008
	.quad	0x3fe1358320f53e47              # double 0.53778225361924903
	.quad	0x3fe5c55cf5deda1d              # double 0.68034217855057799
	.quad	0x3fe7ab959c5077a7              # double 0.73969536333219288
	.quad	0x3fc1fa35b1724ed0              # double 0.14044829525356883
	.quad	0x3fe99a0efeab2b5d              # double 0.80005597820250396
	.quad	0x3fe8172b3d0a8f5e              # double 0.75282823488349115
	.quad	0x3fe467532f91f124              # double 0.63761290827782036
	.quad	0x3fcf8026fc9c9848              # double 0.2460983975844917
	.quad	0x3fd0503dd3d13016              # double 0.25489755330340935
	.quad	0x3fea5e656ef735bd              # double 0.8240229766176338
	.quad	0x3fe72b9e20269c31              # double 0.72407442359406649
	.quad	0x3fd4b53cde59acfc              # double 0.32356187547584603
	.quad	0x3fbb9d9df203e1f8              # double 0.10787379416058929
	.quad	0x3fb9cbf61d659f30              # double 0.10076845376681542
	.quad	0x3fe4926f45244e13              # double 0.64287532333622932
	.quad	0x3fea4bea914ddec2              # double 0.82176712398264606
	.quad	0x3fdce3bf6ecf3a98              # double 0.45140062161673589
	.quad	0x3fceb11769af6910              # double 0.23977940235528949
	.quad	0x3feaacab4c410121              # double 0.83357777493805341
	.quad	0x3fdede1310bdb90c              # double 0.48230435023187179
	.quad	0x3feec4ce4f60581c              # double 0.96152415755455278
	.quad	0x3fe60e10e6f77931              # double 0.68921704397852157
	.quad	0x3fc0546030d9c664              # double 0.12757494340216902
	.quad	0x3feff283c238d60e              # double 0.99835384305942099
	.quad	0x3fecb6612484d84a              # double 0.89726311810114479
	.quad	0x3fed660920919935              # double 0.91870552407343686
	.quad	0x3fd51d23fd1382ea              # double 0.32990359987711193
	.quad	0x3fd8dcc1bda32106              # double 0.38847392577419304
	.quad	0x3fc5ee681a25e3fc              # double 0.17133809353597929
	.quad	0x3fefc3cb43185fd4              # double 0.99265063385518681
	.quad	0x3feb173ce3e1053e              # double 0.84658665187468052
	.quad	0x3fd630f99ea51b22              # double 0.34673920147581516
	.quad	0x3feb17fbf51c3d4f              # double 0.84667775986773985
	.quad	0x3fe6d8df900c9e2c              # double 0.71397379049898779
	.quad	0x3fe6f32eea7d78e4              # double 0.71718545721867288
	.quad	0x3fdb7ee3ac96f6ac              # double 0.42961971144164113
	.quad	0x3fce75605c9bfa0c              # double 0.23795704385698035
	.quad	0x3fc3688107243e40              # double 0.15162670944890699
	.quad	0x3fe64728bf159fae              # double 0.69618642159638511
	.quad	0x3fdf33e72a72f08c              # double 0.48754290719421856
	.quad	0x3fe92e8cc1f76680              # double 0.78693235286773699
	.quad	0x3fe32b86ea1f553d              # double 0.59906335570364144
	.quad	0x3fec8a2a4fc9534f              # double 0.89186587889944657
	.quad	0x3fefbe811dbbef2c              # double 0.99200492675251927
	.quad	0x3fe7e985f7016c63              # double 0.74725626223824937
	.quad	0x3fc13972a6978d6c              # double 0.13456566938757974
	.quad	0x3fc7e5430f042d48              # double 0.18668401940554191
	.quad	0x3fede9dece83f9fb              # double 0.93479862532677716
	.quad	0x3fd650e0bd55aeba              # double 0.34868639459339656
	.quad	0x3fe4f57987b6efa1              # double 0.65496517664677267
	.quad	0x3fed56337168b227              # double 0.91677257681073321
	.quad	0x3fd8cbb9509a59ec              # double 0.38743431922321636
	.quad	0x3fd2f26148e29efc              # double 0.29604370229434074
	.quad	0x3fe1f11acafd6b2d              # double 0.56068172117679682
	.quad	0x3fd03d91db83e0ca              # double 0.25375791966463324
	.quad	0x3fed22143ed76a98              # double 0.91041004441952378
	.quad	0x3fc95c84e488b624              # double 0.19813595923317096
	.quad	0x3fed3a974a2a59b8              # double 0.9134022186797699
	.quad	0x3f76407c64836700              # double 0.0054325923049078906
	.quad	0x3fe9aebe583d0c03              # double 0.80258099779200653
	.quad	0x3fe5a3eba1af11eb              # double 0.6762598188293486
	.quad	0x3fe06a181f314559              # double 0.5129509553172894
	.quad	0x3fdb75edace39298              # double 0.42907277949988432
	.quad	0x3fe744f5810b3075              # double 0.72716784671639678
	.quad	0x3feb33bcc4bbbaa6              # double 0.85006559776760038
	.quad	0x3fe61e6b98563290              # double 0.69121341470015984
	.quad	0x3fe0d416635151ed              # double 0.52588958166103128
	.quad	0x3feacdb82a1520be              # double 0.83761223048443134
	.quad	0x3fe5142106a40a9a              # double 0.65870715424564996
	.quad	0x3fad0701f935cc50              # double 0.056694089575920814
	.quad	0x3fede39a4e404cc9              # double 0.93403353961402857
	.quad	0x3feae4a89ba98607              # double 0.84041242983602238
	.quad	0x3fe773104d53329c              # double 0.73279585936105063
	.quad	0x3fe34a96b6a4b265              # double 0.60285506889847496
	.quad	0x3feb69c399df9a67              # double 0.85666065266998437
	.quad	0x3fb01acda96b0c48              # double 0.062908986913542297
	.quad	0x3fee14400a64c13c              # double 0.9399719431876643
	.quad	0x3fe90c86ce542340              # double 0.78277912424628227
	.quad	0x3f96bc57345bfac0              # double 0.022202837534673447
	.quad	0x3fb449abe511f668              # double 0.079249137330373309
	.quad	0x3fd4f3cbc58c47ee              # double 0.32738012592119403
	.quad	0x3fe8c1c9b012d4c5              # double 0.7736557425438596
	.quad	0x3fdec9e23774633e              # double 0.48107200065128441
	.quad	0x3fc37c5e62e3349c              # double 0.15223293140880834
	.quad	0x3fe3cc2f1398157e              # double 0.61867479159324978
	.quad	0x3feea9aed9d2c9a9              # double 0.95821325820570735
	.quad	0x3fd891594e9e22b2              # double 0.38387139012824456
	.quad	0x3fec6afbf72e5d73              # double 0.88805959966241088
	.quad	0x3fdbb8cc7aebc142              # double 0.4331542206191622
	.quad	0x3fc0cf5f3b888500              # double 0.13132849127672586
	.quad	0x3fda9738f674ec42              # double 0.41547988956489601
	.quad	0x3fed2ec80d3687e0              # double 0.91196062641779107
	.quad	0x3fdbf4460afadcca              # double 0.43678427765139516
	.quad	0x3fda8d2db8bb870c              # double 0.41486685791288447
	.quad	0x3fe70b9b4e6f9cc3              # double 0.72016682929542986
	.quad	0x3fedc8d51b2c12fb              # double 0.93076567942679789
	.quad	0x3fec9d15a005be66              # double 0.89417535070783738
	.quad	0x3fea40b3fd74a610              # double 0.82039832594927198
	.quad	0x3f9ad11d80c27f40              # double 0.026188336356994357
	.quad	0x3fec9b6b8511c727              # double 0.89397216787458411
	.quad	0x3fe1f45ce737a381              # double 0.56107945594440889
	.quad	0x3fd8829c5d05a842              # double 0.38297185024442026
	.quad	0x3feaf92b46ffb832              # double 0.84291614405606752
	.quad	0x3fb81bdccc4b0a68              # double 0.094175147892238464
	.quad	0x3fd2158b90cd9df0              # double 0.28256501332222594
	.quad	0x3fdc443ab0b5d8d8              # double 0.44166438347691672
	.quad	0x3fc9ed4724aeb090              # double 0.20255364695674816
	.quad	0x3fe5fc6c8e3cf55c              # double 0.68706348210222812
	.quad	0x3fcddf8c50d90be0              # double 0.23338464687012017
	.quad	0x3fe67c15934749ac              # double 0.70264700665784607
	.quad	0x3fdfb562cfc81162              # double 0.49544592181361768
	.quad	0x3fe04db6271a5f23              # double 0.50948627126033263
	.quad	0x3fe14da64957af08              # double 0.54072870564184061
	.quad	0x3fea9aee1f635ade              # double 0.83141237383355437
	.quad	0x3fe1b987cf4ed42f              # double 0.55389776696995863
	.quad	0x3fed99d6a361f285              # double 0.9250291052881755
	.quad	0x3fb24f0c53328ed0              # double 0.071518678962600335
	.quad	0x3fb6bcee7071db88              # double 0.088820364429791465
	.quad	0x3fcb10cb41738248              # double 0.21145001121387197
	.quad	0x3fe2769378b06e08              # double 0.57697461673836958
	.quad	0x3fe966fb6925768b              # double 0.79382105385202928
	.quad	0x3fe3375aae32b82e              # double 0.60050710700102683
	.quad	0x3fd4fcc3613f480a              # double 0.32792744156643094
	.quad	0x3fe79db16feffb49              # double 0.73799964773920934
	.quad	0x3fe0245603b628a6              # double 0.5044355461589205
	.quad	0x3fcf75d6c6cf19c4              # double 0.24578366000623764
	.quad	0x3fe195583cef704b              # double 0.54948055173327626
	.quad	0x3fe224d11a3995b2              # double 0.56699423906382251
	.quad	0x3f90cd0648419e60              # double 0.016407106552291828
	.quad	0x3fe2db5581533e4b              # double 0.58927417048284647
	.quad	0x3fd746c2a91ba45a              # double 0.36369387163592182
	.quad	0x3fb397c1f1a8b5d8              # double 0.07653438711050542
	.quad	0x3fc273e9602d968c              # double 0.14416234203524814
	.quad	0x3fe75d829036a90d              # double 0.73016479651167432
	.quad	0x3f49595f7d8e5800              # double 7.7359354610240239E-4
	.quad	0x3fea7b0383a2a5b0              # double 0.82751632413890341
	.quad	0x3fe6cf8758304188              # double 0.71283309196773903
	.quad	0x3fe252e0ebec9810              # double 0.57261701659149544
	.quad	0x3fe193231460f89b              # double 0.54921106319649782
	.quad	0x3fe9104cf8dbfc9c              # double 0.78323982816063475
	.quad	0x3fdc13dbfb240b1c              # double 0.43871211553066458
	.quad	0x3fe8f921152d6a67              # double 0.78041128288471107
	.quad	0x3fdca09488df758c              # double 0.44730103842251689
	.quad	0x3fe23b74feb98062              # double 0.56975793600942048
	.quad	0x3fef61cf7aa16057              # double 0.98068975402112357
	.quad	0x3fe05ce4030453b5              # double 0.51133919324148869
	.quad	0x3fe91ebcd3a8b665              # double 0.78500214900641352
	.quad	0x3f6dec201d214200              # double 0.0036526324484287276
	.quad	0x3fe28df8795cb48b              # double 0.57983039573231687
	.quad	0x3fef8be8b14672fd              # double 0.98582872985897973
	.quad	0x3feb21bed1af1d5a              # double 0.84786930993952159
	.quad	0x3fef16613cf1c6e1              # double 0.97148191359721292
	.quad	0x3fbc4ab63e16e6b0              # double 0.11051501289230248
	.quad	0x3fd5cb4b5ac41420              # double 0.34053310264454417
	.quad	0x3fe60fa89783115c              # double 0.68941144554313949
	.quad	0x3fe288bf50b501f1              # double 0.57919278872583224
	.quad	0x3fc5595db6992eb8              # double 0.16678973594604485
	.quad	0x3feb4adbe6b760cc              # double 0.85288806020528218
	.quad	0x3fe90f6aac57cff7              # double 0.78313192044015423
	.quad	0x3fb45ed85e9043e8              # double 0.079572222792435476
	.quad	0x3fe54c9df6880cea              # double 0.66560266638444188
	.quad	0x3fef0d35615c582a              # double 0.97036236778035811
	.quad	0x3fce8b2b5212d864              # double 0.2386221075773306
	.quad	0x3fec6015f1f701ad              # double 0.88672921427501239
	.quad	0x3feb7ab3ca50be85              # double 0.85872830881813
	.quad	0x3fec363fd2978021              # double 0.88162222987375938
	.quad	0x3fea8207bc2bb762              # double 0.82837282898047371
	.quad	0x3fd6dd908bd8c8de              # double 0.35727323204913641
	.quad	0x3fb5d5ba27affe60              # double 0.08529246777470112
	.quad	0x3feb05be83ad93dc              # double 0.84445119589201622
	.quad	0x3fedb7e5c745e834              # double 0.92869843407175389
	.quad	0x3fefbf63e11190c1              # double 0.99211305578912611
	.quad	0x3fc3828957244594              # double 0.15242115740742845
	.quad	0x3fd09a1c766188b0              # double 0.25940620003360504
	.quad	0x3fe9dfd8303cffff              # double 0.80857476636447234
	.quad	0x3fc091418a8f7cc0              # double 0.12943286195420534
	.quad	0x3fe04b7033164eb5              # double 0.50920877435642942
	.quad	0x3fe90577a436d2e6              # double 0.78191740105702645
	.quad	0x3fb82c4dc605ecd0              # double 0.094426022382253949
	.quad	0x3f9a84f0634bff20              # double 0.025897747097587076
	.quad	0x3fe4ff679afe715f              # double 0.65617733261346334
	.quad	0x3fddfbb53319a6d4              # double 0.46848802557233893
	.quad	0x3fcc92ae1e2fb928              # double 0.22322632287927857
	.quad	0x3fe8ee18e6eda462              # double 0.77906460860425519
	.quad	0x3fc49946123d8968              # double 0.16092754259723141
	.quad	0x3fc7cd427e84e58c              # double 0.18595153024379518
	.quad	0x3fd2b885f1cd6d38              # double 0.29251240361709874
	.quad	0x3fe80b9d1afdfe0e              # double 0.75141768714814972
	.quad	0x3fe2f7e98956f544              # double 0.59276272606045
	.quad	0x3fe7a7a77820dfdf              # double 0.73921559774953127
	.quad	0x3fe034ddae45f68c              # double 0.50645336187126722
	.quad	0x3feabe47838683fa              # double 0.83572745979847629
	.quad	0x3fe73ed96f17c289              # double 0.72642203996481769
	.quad	0x3fcd217fedc66844              # double 0.22758483038052379
	.quad	0x3fb357d5ac718aa0              # double 0.075559000587910763
	.quad	0x3fb71fcd4a5e7150              # double 0.090329008728479154
	.quad	0x3fec10f43a3a461c              # double 0.87706958172401838
	.quad	0x3fdcf40b9c162a72              # double 0.45239534609633048
	.quad	0x3fed47d7addde06b              # double 0.91501983602848946
	.quad	0x3fa551c2c7c46580              # double 0.041639410863534287
	.quad	0x3fe1bda70779caec              # double 0.55440093479259422
	.quad	0x3fea9fcec5a32156              # double 0.8320077762701128
	.quad	0x3fe828b6b3631fc4              # double 0.75496993099749731
	.quad	0x3fded871d505e0e6              # double 0.48196073344253276
	.quad	0x3fec4cbb768a14fd              # double 0.88436673309539027
	.quad	0x3fe9396d00fc8e79              # double 0.78825998490033478
	.quad	0x3fb5e45433f80fa8              # double 0.085515272796384267
	.quad	0x3fcda3c5120da500              # double 0.23156035787113893
	.quad	0x3fd3ecc60e31050e              # double 0.31132651697051095
	.quad	0x3fc1718b74c426cc              # double 0.13627761079287948
	.quad	0x3fda14742e7597c0              # double 0.40749840294881423
	.quad	0x3fb2b3df93cda8e0              # double 0.073057149491123408
	.quad	0x3feaa008a220f57a              # double 0.83203536668558731
	.quad	0x3fe6f0a9723e80a9              # double 0.71687767327604945
	.quad	0x3fe7b8bc6d1dd57d              # double 0.74130078613113393
	.quad	0x3fe7d1141faa2b17              # double 0.74427229103580117
	.quad	0x3fe09ab3bc01d612              # double 0.51888453216696662
	.quad	0x3fc678a865a188c4              # double 0.17555718386126362
	.quad	0x3fd244015e386830              # double 0.28540071679310852
	.quad	0x3fced0eae6ce7e44              # double 0.24075065870145995
	.quad	0x3fe754fd8c86738c              # double 0.72912480779960864
	.quad	0x3fed3428125f10f2              # double 0.9126167639556384
	.quad	0x3fead9dc67ad8357              # double 0.83909435510222863
	.quad	0x3fee0528e161b6c7              # double 0.93812984485494944
	.quad	0x3fe451e381cdb863              # double 0.63499617912544826
	.quad	0x3fc17722f2ee7b0c              # double 0.13644825803654503
	.quad	0x3fe4b17a50beb856              # double 0.64666476984508381
	.quad	0x3fe221672e14b455              # double 0.56657752037211628
	.quad	0x3fa1f2596a814e00              # double 0.035052103282080083
	.quad	0x3fed089e05646a71              # double 0.90730191281484285
	.quad	0x3fe916dce0285628              # double 0.78404086857580513
	.quad	0x3fe6b09b0ecf6331              # double 0.70905831234549599
	.quad	0x3feeffe903cac9f4              # double 0.96873903980878006
	.quad	0x3fb5c60127b27c18              # double 0.085052559081745804
	.quad	0x3fe9e7863139996c              # double 0.80951223005540162
	.quad	0x3fe34daa66563d91              # double 0.60323066699668193
	.quad	0x3fefcb365e0f24da              # double 0.99355619784287375
	.quad	0x3f9938d6f6fe3520              # double 0.024630888772255166
	.quad	0x3fe70bfd27c1709e              # double 0.7202134872891468
	.quad	0x3fc57039ba421f1c              # double 0.16748735041277818
	.quad	0x3fc303439b85ab74              # double 0.14853711217741827
	.quad	0x3feeb1cbcb249c39              # double 0.95920362163895511
	.quad	0x3fd681029dc437f8              # double 0.35162415892489163
	.quad	0x3fc96c916d2b8158              # double 0.19862573462070077
	.quad	0x3fece24d08033b58              # double 0.90262462201085736
	.quad	0x3fe4ac6821365806              # double 0.64604574667714654
	.quad	0x3fc266067c107cdc              # double 0.14373856599647794
	.quad	0x3fc40a4c94809a24              # double 0.15656430483905226
	.quad	0x3fd748c5e042cf6c              # double 0.36381670856939397
	.quad	0x3fef782d29d1f827              # double 0.98341997306829831
	.quad	0x3fe78b752715c316              # double 0.73577363618651037
	.quad	0x3fb9a984d10ad168              # double 0.10024290183611628
	.quad	0x3fd133ef61fd9eb2              # double 0.26879486627010885
	.quad	0x3fecb9fe14e8ac4c              # double 0.89770416339650571
	.quad	0x3fe89d50af30b726              # double 0.76920351235250872
	.quad	0x3fedc10fa4aaddd8              # double 0.92981702958689549
	.quad	0x3fe3755f20908f4a              # double 0.60807758674898449
	.quad	0x3fd685509d4c5186              # double 0.35188689576286725
	.quad	0x3fe14f74076516c7              # double 0.5409488815718867
	.quad	0x3fd5c01d13331c04              # double 0.33985068201985791
	.quad	0x3fda890a907e24da              # double 0.41461433516140078
	.quad	0x3fe4e27b3e1b5fea              # double 0.65264665727863513
	.quad	0x3fe47fc43d1aee39              # double 0.64059650358780751
	.quad	0x3fe8a35b0521e793              # double 0.76994086267881057
	.quad	0x3fcff53ed43ec544              # double 0.24967179645094906
	.quad	0x3fe5bf040bc93c61              # double 0.67956735898941301
	.quad	0x3fd05fef0b1559e8              # double 0.25585533220637879
	.quad	0x3fcbb65185396acc              # double 0.21650141720859606
	.quad	0x3fd3615ae9fc2ee6              # double 0.30281708574396615
	.quad	0x3fac8ec5329937b0              # double 0.055776750971389233
	.quad	0x3fabdc4e2717e9d0              # double 0.054415170929093315
	.quad	0x3fedd0461e240a5d              # double 0.93167405974265771
	.quad	0x3fe48f04c05a3aed              # double 0.64245832032051242
	.quad	0x3fec74eb65ebcffe              # double 0.88927240282509934
	.quad	0x3fda1a3d51d0c68e              # double 0.40785153379247496
	.quad	0x3fe6fb3807646580              # double 0.71816636508735598
	.quad	0x3fed4f1093eca517              # double 0.91590145961268632
	.quad	0x3fd7d438ee5292bc              # double 0.37232802652060193
	.quad	0x3fe6842d1255bb70              # double 0.70363477307351552
	.quad	0x3fe232bc09171049              # double 0.56869317794235841
	.quad	0x3fde72257dad555c              # double 0.47571694634583195
	.quad	0x3f92c790a4f1f060              # double 0.018339405124138231
	.quad	0x3fe64bd90de0dd40              # double 0.69675877295131983
	.quad	0x3fea8a6a5e81f41a              # double 0.82939642389794987
	.quad	0x3fe4481869ec13eb              # double 0.63380070388722964
	.quad	0x3fb400603d53bf68              # double 0.078130736324735772
	.quad	0x3fef17377f7e58fd              # double 0.97158408070643498
	.quad	0x3febd9e61a163141              # double 0.87034897894913155
	.quad	0x3fb0e86c5d5c0850              # double 0.066046498101088646
	.quad	0x3fdf4494ccbaa850              # double 0.48856086724356818
	.quad	0x3feecd360489f97d              # double 0.96255017172352064
	.quad	0x3fe612e91101056e              # double 0.68980840035525914
	.quad	0x3fe69913f799dc01              # double 0.70618627891133212
	.quad	0x3fed907715fb67bf              # double 0.92388490956658831
	.quad	0x3fd6849d46431a02              # double 0.35184413777861334
	.quad	0x3fa254dcf9b63660              # double 0.035803704721826035
	.quad	0x3fc9da07ebc878f8              # double 0.20196627629133679
	.quad	0x3fd21372309a8b40              # double 0.28243689295247876
	.quad	0x3fe8e9ec50864a12              # double 0.7785550663705314
	.quad	0x3fefe3f8d2bf5ef7              # double 0.99657860910062268
	.quad	0x3fe097a811a53605              # double 0.518512758697114
	.quad	0x3fd3f3f759af8f98              # double 0.31176551588418411
	.quad	0x3fc78f0705d83220              # double 0.18405235085846616
	.quad	0x3fe45bd1e72464ec              # double 0.63620848793939677
	.quad	0x3fced35b1e31c330              # double 0.24082507109008011
	.quad	0x3fda1f24e100f47c              # double 0.40815088246365128
	.quad	0x3fe80670a5710ff9              # double 0.75078613579580555
	.quad	0x3fe918621242d688              # double 0.78422645155542714
	.quad	0x3fc0afb57534c788              # double 0.13036220763165951
	.quad	0x3fdd1e584e73c04c              # double 0.45497710858672202
	.quad	0x3faf4e074e02cee0              # double 0.061142185471366295
	.quad	0x3fe1918cb4c0e47e              # double 0.5490172891942533
	.quad	0x3fb69b3939ca7350              # double 0.088306023224913987
	.quad	0x3fe60b3b32c96c78              # double 0.68887100142764179
	.quad	0x3fc4fe5c483ebc78              # double 0.16401246574011785
	.quad	0x3fec8386c9120dca              # double 0.89105548163973336
	.quad	0x3f9ad87003c8f440              # double 0.026216268759743366
	.quad	0x3fcaaccb08e34d48              # double 0.20839822706202882
	.quad	0x3fd72e8669deac4c              # double 0.36221466387604973
	.quad	0x3fec23b74174b551              # double 0.87935984405855028
	.quad	0x3fed410afe045a2c              # double 0.9141898118276166
	.quad	0x3fe74e3e6c0a9317              # double 0.72830124952142483
	.quad	0x3fe7147c31e3141c              # double 0.72125062697944342
	.quad	0x3fcb341657f628d0              # double 0.2125270776271635
	.quad	0x3fdd93cedef79146              # double 0.46214648985030171
	.quad	0x3fd4f3d07394ac0e              # double 0.32738124167616511
	.quad	0x3fe0d7ccc3bab0e6              # double 0.52634275654193341
	.quad	0x3fdc2bfcf861a8d4              # double 0.44018482452396523
	.quad	0x3fdcf11801a21810              # double 0.45221519622316553
	.quad	0x3fdc39c92621a39e              # double 0.44102696155328569
	.quad	0x3fe7b0adad01b10e              # double 0.74031719007828811
	.quad	0x3feaa1e421818a85              # double 0.83226210159439573
	.quad	0x3f9319bb0d79e080              # double 0.018652842233195077
	.quad	0x3fc221ab0c91b544              # double 0.14165247071961506
	.quad	0x3feb8955db6323d5              # double 0.86051457261157316
	.quad	0x3fe4ee22b28249ce              # double 0.65406927933718761
	.quad	0x3fe4089eef9630bb              # double 0.62605234903596541
	.quad	0x3fd035ab621fd3a6              # double 0.25327572424367373
	.quad	0x3fc65e5ab41d8df0              # double 0.17475446505260051
	.quad	0x3fc2b80cd6e3b99c              # double 0.14624176495221952
	.quad	0x3fe06328ace4fa47              # double 0.51210435646482544
	.quad	0x3fe4b7fecca97dd0              # double 0.64746036503850668
	.quad	0x3fea716152f10b63              # double 0.82634035300757736
	.quad	0x3fe1526b132ca9ca              # double 0.5413108229161534
	.quad	0x3fded08dfc5a3eb8              # double 0.4814791645412515
	.quad	0x3fe602f1ba427886              # double 0.68785940531576339
	.quad	0x3fddbed1e6477448              # double 0.46477172363467334
	.quad	0x3fecd2e6ee6d47cc              # double 0.9007448822760522
	.quad	0x3fdfdc27fb611d38              # double 0.49781226681485036
	.quad	0x3fa56e9d0493d140              # double 0.041859537895933219
	.quad	0x3f72a1384464d880              # double 0.0045482824264607702
	.quad	0x3fb8427755a54070              # double 0.094764192971753535
	.quad	0x3fe8ca2a83546c87              # double 0.77467847490642405
	.quad	0x3fcf7830bcff7a14              # double 0.24585541942993017
	.quad	0x3fe3790c016e0bea              # double 0.60852623252173754
	.quad	0x3fea8286bd84e737              # double 0.82843338981113035
	.quad	0x3fe459518155dc62              # double 0.63590312252825876
	.quad	0x3fe133330c6ce535              # double 0.53749992777662803
	.quad	0x3fc13e51d98d195c              # double 0.13471434710136065
	.quad	0x3fe0c80426dcc8ff              # double 0.52441604223557181
	.quad	0x3fe15ab43d834b62              # double 0.54232227339012362
	.quad	0x3fdcbafe15d48a32              # double 0.44891311771258124
	.quad	0x3fc9db9201952bb0              # double 0.20201325490265054
	.quad	0x3fd255718585788e              # double 0.28646505393215527
	.quad	0x3fc006f628bfa67c              # double 0.1252124499290409
	.quad	0x3fa67ffadc3c87f0              # double 0.04394515932496279
	.quad	0x3f9c497eb3a87860              # double 0.027624110904178045
	.quad	0x3fbf2d0e4eb7ee50              # double 0.12178124830091375
	.quad	0x3fcc782e43255d74              # double 0.22241762426959222
	.quad	0x3fd57765ade32cb4              # double 0.33541242581550113
	.quad	0x3fef34506e32bbd8              # double 0.97513600848275938
	.quad	0x3fe44ea5e82d84b9              # double 0.63460059497096843
	.quad	0x3fb92d6184887828              # double 0.098348708016118835
	.quad	0x3feb3933b5f016a7              # double 0.85073266539321402
	.quad	0x3fc979b9328853e0              # double 0.19902720420273479
	.quad	0x3fe99bf640bf2c2d              # double 0.80028832097867098
	.quad	0x3feeff65cdd02612              # double 0.96867647359721532
	.quad	0x3fbe1105cae7ba70              # double 0.11744724467983203
	.quad	0x3fd9375ae36a4978              # double 0.39400360306276339
	.quad	0x3fdf614a0d0f2724              # double 0.49031306529342289
	.quad	0x3fea0ff2486734e6              # double 0.814446584141163
	.quad	0x3fefaf63efa21ea8              # double 0.99015995791792921
	.quad	0x3fd063aa18de24f2              # double 0.25608303478709538
	.quad	0x3fdd7e20238db5d2              # double 0.4608230921938602
	.quad	0x3fdb833be2b4c1f8              # double 0.4298848833014115
	.quad	0x3fe98f4c67a76f51              # double 0.79874248738222253
	.quad	0x3fdf63309c432a44              # double 0.49042907009121373
	.quad	0x3fe8ef7893b9b01c              # double 0.7792323003063788
	.quad	0x3f933a78465d7a80              # double 0.018777732176540329
	.quad	0x3fb82b8ec05999a0              # double 0.094414636574220001
	.quad	0x3fec171b8d4decaa              # double 0.87782075499071266
	.quad	0x3fde68f4e7d165f0              # double 0.47515604628060171
	.quad	0x3fe51fdeeab157d3              # double 0.66014047468592663
	.quad	0x3fcfac382783cab0              # double 0.24744321755823284
	.quad	0x3fe31cd6d665f842              # double 0.59727041124984503
	.quad	0x3fef7cb00d8fff8a              # double 0.98397066735195549
	.quad	0x3fea2498098d01be              # double 0.81696702828781276
	.quad	0x3fd58ee96c9ed64c              # double 0.33684764487711472
	.quad	0x3fe6a10596f314d5              # double 0.70715598566371318
	.quad	0x3fed2af2bc8617f4              # double 0.91149269887023232
	.quad	0x3fe12c2e9a17b1e6              # double 0.53664331527903353
	.quad	0x3fd0339c9437c30a              # double 0.25315012430569139
	.quad	0x3fcd7c6fe803b594              # double 0.23036001995880595
	.quad	0x3fe81472c3b3e11b              # double 0.75249613021063355
	.quad	0x3fe94ab5cdf4c382              # double 0.79036989427378068
	.quad	0x3fe9720750a70bfa              # double 0.79516950371214468
	.quad	0x3fe092e8536269f1              # double 0.51793304716130539
	.quad	0x3fc1d1b73c5d8c48              # double 0.1392125172379528
	.quad	0x3fd7a4037a309e8a              # double 0.36938559467896737
	.quad	0x3fe4c40a95e678bb              # double 0.64893082883261088
	.quad	0x3fe098077ba99f1c              # double 0.51855825569961977
	.quad	0x3feab78a05c21335              # double 0.83490468144063945
	.quad	0x3feb5129c0bae6fc              # double 0.85365760462374806
	.quad	0x3fe009f9d07d9a13              # double 0.50121775360895737
	.quad	0x3f457d68d0c34000              # double 6.5581911032985829E-4
	.quad	0x3fef9d761b7fc8e6              # double 0.98797135706834349
	.quad	0x3fedc44241a610d9              # double 0.93020737478266391
	.quad	0x3fea9772d49e5f75              # double 0.83098737265662115
	.quad	0x3fe3202317c3e69a              # double 0.59767298356674137
	.quad	0x3fd87d0c56b348f4              # double 0.38263233630017557
	.quad	0x3fe71e3d25c216cb              # double 0.7224412667717045
	.quad	0x3fc78087f586d9e4              # double 0.18360995758639753
	.quad	0x3fc424313ac99034              # double 0.15735450144268415
	.quad	0x3fe4226cd116b2b1              # double 0.62920227849607191
	.quad	0x3fcf0b50ba08148c              # double 0.24253281673023641
	.quad	0x3fcce59e11ab0810              # double 0.22575736868572038
	.quad	0x3fe11aef0fbd79c7              # double 0.53453782152410489
	.quad	0x3febf2586253fbdb              # double 0.87333316044520914
	.quad	0x3fe00abe7d240061              # double 0.50131153527764749
	.quad	0x3fe191c3cae66268              # double 0.54904355648893688
	.quad	0x3fea70eda5b0ed1e              # double 0.82628519403025158
	.quad	0x3fe02111544bbe69              # double 0.50403658355749059
	.quad	0x3feac5c8e7b2cdc5              # double 0.83664365056613887
	.quad	0x3fe81808ef0bc5e5              # double 0.75293394745511633
	.quad	0x3fe528ff022bf3b2              # double 0.66125441002042451
	.quad	0x3feb88ef0f207542              # double 0.8604655547566511
	.quad	0x3fe23d841dcea702              # double 0.57000928708768606
	.quad	0x3feeecc309ce0d68              # double 0.96640159525888424
	.quad	0x3fe5b319c6e837f1              # double 0.67811287735980674
	.quad	0x3fd5bc5affece14e              # double 0.33962130539614044
	.quad	0x3fd02757bec06e86              # double 0.25240129116148358
	.quad	0x3fdc4312a6cba24a              # double 0.44159380234353718
	.quad	0x3fcc936e8f41e570              # double 0.22324926371565423
	.quad	0x3fe47abda4bb9830              # double 0.63998300718663437
	.quad	0x3fef9b8784b7f7f8              # double 0.98773551866156505
	.quad	0x3fd3ea1fe8e2f1c6              # double 0.31116483443090848
	.quad	0x3fb1e64e7110ae20              # double 0.069920446971700745
	.quad	0x3fe5eb5c7c038c5c              # double 0.68498062344987032
	.quad	0x3fe3224da39c50e0              # double 0.59793741183468896
	.quad	0x3fe93ee8076de853              # double 0.7889289994339016
	.quad	0x3fce1d8848966ecc              # double 0.23527625603025226
	.quad	0x3fd58afa26cfedea              # double 0.3366074923539758
	.quad	0x3fcf792a976dfc04              # double 0.24588520425820104
	.quad	0x3fde0e25741b8d98              # double 0.46961342180858301
	.quad	0x3fe0ef33b22a2d77              # double 0.52919945524028733
	.quad	0x3fefffb9166655ee              # double 0.99996618628455081
	.quad	0x3fe189b34fd6687e              # double 0.54805913537280992
	.quad	0x3fd771955453c64a              # double 0.3663075755604025
	.quad	0x3fe94b09fc999a12              # double 0.79041003547610189
	.quad	0x3fef66edd34e1d70              # double 0.98131457586798199
	.quad	0x3fe10f0956e625b2              # double 0.53308550808394828
	.quad	0x3fe3943966669d5f              # double 0.61184377670444323
	.quad	0x3fed5a1916ee0573              # double 0.91724829176398115
	.quad	0x3f7c81f065e45400              # double 0.0069598570392104264
	.quad	0x3fed52f6c1559485              # double 0.91637742767910935
	.quad	0x3fef81956be76c4f              # double 0.98456832003592775
	.quad	0x3fdcf962fc360706              # double 0.45272135381684142
	.quad	0x3fca89e04b811604              # double 0.20733264624338699
	.quad	0x3fadad84fe48fd80              # double 0.057964473763145286
	.quad	0x3fea4b000472e277              # double 0.82165528172397628
	.quad	0x3fde36c498b43b80              # double 0.47209277069571698
	.quad	0x3fb977b1daacf2b0              # double 0.099482646834938348
	.quad	0x3fe98200292102f1              # double 0.79711921723364132
	.quad	0x3fd3ab60921b919a              # double 0.30733503597573419
	.quad	0x3fab63a254f147e0              # double 0.053494522923429377
	.quad	0x3feef657de484f53              # double 0.96757119574111027
	.quad	0x3fec245553cb544d              # double 0.87943521848741002
	.quad	0x3fecd93116aac01e              # double 0.90151266505381833
	.quad	0x3fa3655c8fdb78e0              # double 0.037882702408511326
	.quad	0x3fb0f8316802a688              # double 0.066287124531891561
	.quad	0x3fdf14450d2a1602              # double 0.48561216626725934
	.quad	0x3f8c8d6d59296a40              # double 0.013941625865460883
	.quad	0x3fed4c55ba08ebec              # double 0.91556822142535798
	.quad	0x3fb6842d70e66d00              # double 0.087954368651868009
	.quad	0x3fee44c869981568              # double 0.94589634536593525
	.quad	0x3fd05e3bd0418620              # double 0.25575156533713717
	.quad	0x3f9ee7a990754b00              # double 0.03018059677317364
	.quad	0x3fec32eb89cfa09b              # double 0.88121582905025109
	.quad	0x3fe956fc28d7cf4a              # double 0.79186828591489555
	.quad	0x3fe760c9c3ac0620              # double 0.73056495873624172
	.quad	0x3fc3da8216637e98              # double 0.15510583966441938
	.quad	0x3feb178ce3e9f969              # double 0.8466247989124841
	.quad	0x3fe518a15586101c              # double 0.65925661758274456
	.quad	0x3faa156425fc4da0              # double 0.050944451939496149
	.quad	0x3fe6ebf9543b0987              # double 0.7163054127816374
	.quad	0x3fd73b347501c1f0              # double 0.36298858095599851
	.quad	0x3fe570238b1a2e3e              # double 0.66993882339870203
	.quad	0x3fe247b1f8cb821d              # double 0.5712518557812164
	.quad	0x3fea9ee94bc82850              # double 0.83189835358758479
	.quad	0x3fec91e21094fff0              # double 0.8928079913966922
	.quad	0x3fe7bddf492315b5              # double 0.74192775997715066
	.quad	0x3fcbb2316cc345bc              # double 0.21637552080805544
	.quad	0x3fe78e29eb30439f              # double 0.73610397277126427
	.quad	0x3f845a186a2c1980              # double 0.0099374682809070247
	.quad	0x3f92cc7abe721740              # double 0.018358152269249972
	.quad	0x3fba655f46ef56a8              # double 0.10310931665238832
	.quad	0x3fac6cef13b7d610              # double 0.05551859965991579
	.quad	0x3fe035ea5db6f73c              # double 0.50658148101476952
	.quad	0x3fe807db9f3de2c6              # double 0.75095921613600392
	.quad	0x3facd344899f44a0              # double 0.056299344825341935
	.quad	0x3fda3a02a057c330              # double 0.40979066523054808
	.quad	0x3fc10d3ef343b24c              # double 0.13321673277040913
	.quad	0x3fb33e5813246720              # double 0.075170044587505647
	.quad	0x3fd9a7a1b5c0c1de              # double 0.40085642575561831
	.quad	0x3fa2ddb1d3db7700              # double 0.036847645865902834
	.quad	0x3fe870ef62699268              # double 0.76378602238817184
	.quad	0x3fb096537db325b8              # double 0.06479379481165537
	.quad	0x3f97b3e4ca908aa0              # double 0.02314717756611151
	.quad	0x3fecd5ddfe9480a9              # double 0.90110683176682926
	.quad	0x3fe0fee0336bf283              # double 0.53111276667876017
	.quad	0x3fe1acb992a1434e              # double 0.55233458174380146
	.quad	0x3fda621c65d53ee6              # double 0.41223821587207821
	.quad	0x3f7c8c5733bfb500              # double 0.0069697767575978009
	.quad	0x3fe240ce081e5f1a              # double 0.57041074357673271
	.quad	0x3fd6f7624d35009a              # double 0.35884912051916162
	.quad	0x3fe085d38401467a              # double 0.51633621008131958
	.quad	0x3fd96efeb5b9ef84              # double 0.3973995947524076
	.quad	0x3fe3383443fb33fd              # double 0.60061085965719452
	.quad	0x3fe1857b65ac8a46              # double 0.54754419191551373
	.quad	0x3fb36a8bd20db770              # double 0.075844515593159078
	.quad	0x3fcf177210f68640              # double 0.24290300205488968
	.quad	0x3fe152b5003e1f26              # double 0.54134607360262943
	.quad	0x3fedbb6a12ab05cd              # double 0.92912772794823584
	.quad	0x3fbe038038837708              # double 0.11724091891980148
	.quad	0x3fdad0e1c54297b2              # double 0.41899914039310737
	.quad	0x3fe2e861cb8fbf08              # double 0.59086694486720237
	.quad	0x3fe87766f88cf300              # double 0.76457546753917427
	.quad	0x3feb775e7fcb4f9e              # double 0.8583214279155873
	.quad	0x3fe7d8ae26a46c2d              # double 0.7452002291423746
	.quad	0x3fe59598d70333e3              # double 0.67451135630255654
	.quad	0x3fed063e93b20a8b              # double 0.90701226088306564
	.quad	0x3fe73093ae47fb56              # double 0.72467979468624821
	.quad	0x3fec9bc578b5d032              # double 0.89401506019794952
	.quad	0x3fe83fe5ab884d48              # double 0.75779994490077573
	.quad	0x3fdd24886c93dde0              # double 0.45535479167253179
	.quad	0x3fec1ca614efc1b7              # double 0.87849716271562428
	.quad	0x3fe3c6c8b82d5559              # double 0.6180156323631919
	.quad	0x3fd19a111296154a              # double 0.27502848448815043
	.quad	0x3fea81090d16c1b3              # double 0.8282513862268871
	.quad	0x3fec4c3c594ab1b9              # double 0.88430612029838251
	.quad	0x3fb72b683d7470d8              # double 0.09050609112131569
	.quad	0x3fc5e8c86d58a4e4              # double 0.17116647090123316
	.quad	0x3fd91308f7714642              # double 0.39178680576614877
	.quad	0x3fc78d2f18e6aae8              # double 0.18399609294768671
	.quad	0x3fee167efff5af9e              # double 0.9402461051190476
	.quad	0x3fecb4fc7c42553f              # double 0.89709305066450173
	.quad	0x3fdd650c6263e416              # double 0.45929250343721273
	.quad	0x3fe548f8911b3993              # double 0.66515758839686823
	.quad	0x3fd83d1eebce73b8              # double 0.37873051670049618
	.quad	0x3fe85e27cc826b5e              # double 0.76149358695270641
	.quad	0x3fddacfe40dacfe4              # double 0.46368366559477026
	.quad	0x3fd2aab0d97062d4              # double 0.29166814073827863
	.quad	0x3fd52816aca15cf2              # double 0.33057181223325849
	.quad	0x3fd5cf73f0aed606              # double 0.34078691963381436
	.quad	0x3fafe56868762570              # double 0.06229711795010473
	.quad	0x3fe15237d83cecdc              # double 0.54128639444334281
	.quad	0x3fec011921d32925              # double 0.87513405424514146
	.quad	0x3fbbcc0fcbbc8988              # double 0.10858248447451591
	.quad	0x3fe7ca3b9077091c              # double 0.74343660560433333
	.quad	0x3fec0c3734cd9ea7              # double 0.87649116814732941
	.quad	0x3fe78c35f465ccc7              # double 0.73586557134549302
	.quad	0x3fe6a436554b9257              # double 0.7075454393312367
	.quad	0x3fe36982eb33318f              # double 0.60662980973715885
	.quad	0x3fdc16f7175228b0              # double 0.43890168454584977
	.quad	0x3fe4e1faadd00027              # double 0.65258535335306511
	.quad	0x3fedbbd18128a873              # double 0.92917704798061462
	.quad	0x3fcbc84419fb5840              # double 0.21704913395541503
	.quad	0x3feeb468a38d022b              # double 0.95952255195158409
	.quad	0x3fbe95ec341f1f78              # double 0.1194751384019791
	.quad	0x3fd7f8d1ed6c1628              # double 0.37456176934969898
	.quad	0x3fedc6ebca9def15              # double 0.93053235601061834
	.quad	0x3fe32221c77af364              # double 0.59791649781218981
	.quad	0x3fe22ffdbbd81623              # double 0.5683582943754043
	.quad	0x3fd244da85135cba              # double 0.28545248981158589
	.quad	0x3fd346c20462aba4              # double 0.30119371822609708
	.quad	0x3fe0564291754818              # double 0.51052978906432411
	.quad	0x3fe54473d16e6744              # double 0.66460600761931987
	.quad	0x3fd3da5d952d7528              # double 0.310202975922794
	.quad	0x3fd586b0a4f1b716              # double 0.33634582622367881
	.quad	0x3fd6eead131644c2              # double 0.35831763137782613
	.quad	0x3fbed80cf0be1178              # double 0.12048416974545784
	.quad	0x3fef414f5db3691a              # double 0.9767224149793805
	.quad	0x3fe076ec5259694b              # double 0.51451698383179101
	.quad	0x3fe7059b7224f24e              # double 0.71943447393238968
	.quad	0x3fe153e90e755511              # double 0.54149296592609819
	.quad	0x3fe847bb72286647              # double 0.7587563733715762
	.quad	0x3fe361ce6c924579              # double 0.6056892509970303
	.quad	0x3fd8fbc66b81978e              # double 0.39036713122038058
	.quad	0x3fe47677514a3845              # double 0.6394611919111034
	.quad	0x3fdcb8ab8856be28              # double 0.44877136530246498
	.quad	0x3fec404d570b6139              # double 0.88284937859410839
	.quad	0x3fd8688555503c1e              # double 0.38137944537533197
	.quad	0x3fd65a67d14de688              # double 0.34926791610596597
	.quad	0x3fceaf2ed7081680              # double 0.23972115993108289
	.quad	0x3fe63ce32b82e874              # double 0.69493254183113473
	.quad	0x3fefd6acc453fe94              # double 0.99495542855580021
	.quad	0x3fef5e6a82b379d6              # double 0.98027539756349813
	.quad	0x3fe5960da1c43d0a              # double 0.67456704707174819
	.quad	0x3fee70ef5692444d              # double 0.95128600033252442
	.quad	0x3fe84d0f028a8b0f              # double 0.75940657135319778
	.quad	0x3fdc87ca56f0e0a0              # double 0.44578798761677696
	.quad	0x3fdcff9c71eee468              # double 0.45310126425062558
	.quad	0x3faa1abe8b4e0d50              # double 0.050985292916289837
	.quad	0x3fccda0ac968ca78              # double 0.22540411791267778
	.quad	0x3fe7c1ec6ed06607              # double 0.74242231028910133
	.quad	0x3f7ef99f0c2ad000              # double 0.0075622761529992033
	.quad	0x3fef85ece14fed5d              # double 0.98509830480854143
	.quad	0x3fe6a41b9b210efa              # double 0.70753269480380188
	.quad	0x3fd2be1ea073d8b4              # double 0.29285398167793208
	.quad	0x3f9b2e2ebdfd0100              # double 0.026543360086408008
	.quad	0x3fd9dadf09be6e6e              # double 0.40398384048032809
	.quad	0x3fed09217f31a52f              # double 0.90736460535587138
	.quad	0x3fb31ead9e7aa9d0              # double 0.074686862174224489
	.quad	0x3fdce0cfb43eebfc              # double 0.45122139551284568
	.quad	0x3fed1f0765ead400              # double 0.91003770738336698
	.quad	0x3fe30da8e21f5465              # double 0.59541744389083517
	.quad	0x3fd0bd1f081a08ce              # double 0.26154304305249532
	.quad	0x3fa2c63c4fa1acb0              # double 0.036668667526862264
	.quad	0x3fd15229f6ec5888              # double 0.27063988793941762
	.quad	0x3fd7715a554b82da              # double 0.36629350976549591
	.quad	0x3fe9c873dd021337              # double 0.80571931043286937
	.quad	0x3fee4d233074bdab              # double 0.94691619361940604
	.quad	0x3fe7bb5f006d7984              # double 0.74162244876406236
	.quad	0x3fe3c20fed38f60a              # double 0.61743923504371989
	.quad	0x3fbabfce81f4a238              # double 0.10448923752540729
	.quad	0x3fe6218bec1b727b              # double 0.69159504046145004
	.quad	0x3fe6746f54718644              # double 0.70171324246275235
	.quad	0x3fdb8865ac17a102              # double 0.43020002179993366
	.quad	0x3fb4f636cbf64590              # double 0.081881928248796365
	.quad	0x3fabff1a2c2a0600              # double 0.054680650607235037
	.quad	0x3fd8577ccea49ea2              # double 0.3803398149488918
	.quad	0x3fd4eaf8280de2e6              # double 0.32684139167353832
	.quad	0x3fe74f3c31cda437              # double 0.72842225768284308
	.quad	0x3fed67ab0ecdf167              # double 0.9189048089170172
	.quad	0x3fe10267c21b92d0              # double 0.53154361640607739
	.quad	0x3fa62107046ca1e0              # double 0.043220729150849513
	.quad	0x3fe208f39662f0aa              # double 0.56359271404609967
	.quad	0x3fee56beb54d6afe              # double 0.94808898363712024
	.quad	0x3fed57340b9c83d3              # double 0.91689493434761926
	.quad	0x3fc8080a59292494              # double 0.18774537423658855
	.quad	0x3fd59947f23bbf08              # double 0.33748053222278473
	.quad	0x3faad618d49c2c60              # double 0.052414680436492445
	.quad	0x3fde267b785cc308              # double 0.47109877351890406
	.quad	0x3fe18b0abbfb969d              # double 0.54822289195427099
	.quad	0x3fe00576416e2314              # double 0.50066674022045499
	.quad	0x3feacfa10b9ad5dd              # double 0.83784534708564318
	.quad	0x3feb2b77e8b8c24a              # double 0.84905620053729902
	.quad	0x3fec275d9f30d2ac              # double 0.87980538455902523
	.quad	0x3fe13cf5dc2162e5              # double 0.53869145387860995
	.quad	0x3fc9ef008ce75c80              # double 0.20260626678529903
	.quad	0x3fca7b57f6a76348              # double 0.20688914817471926
	.quad	0x3feaf857b9adc4ea              # double 0.84281526818645358
	.quad	0x3fed3bf32ed40d39              # double 0.91356810709149905
	.quad	0x3fe2d86f70208ef4              # double 0.58892032527771088
	.quad	0x3fe219c25168557e              # double 0.56564441585457792
	.quad	0x3fd29b9d75942840              # double 0.29074799043940303
	.quad	0x3fd500ea0f0ffc00              # double 0.3281808039754992
	.quad	0x3fd8c933f95015fc              # double 0.38728045794445598
	.quad	0x3fd12f7ab886d696              # double 0.26852291126429273
	.quad	0x3fe0f5aa7c883f33              # double 0.5299885208387195
	.quad	0x3fece0a01ab95bb3              # double 0.90242009372274479
	.quad	0x3feb73c96377bb96              # double 0.85788411547933907
	.quad	0x3fec1dbc34b8333c              # double 0.87862978264602231
	.quad	0x3fe0eed1c2104661              # double 0.52915275481263901
	.quad	0x3fec0bf83b8db0df              # double 0.87646113997973518
	.quad	0x3fe8bc91724f5a27              # double 0.7730185730568494
	.quad	0x3fabb805ce585080              # double 0.054138356627078998
	.quad	0x3fe73a2d52a8ddfa              # double 0.72585168976269121
	.quad	0x3fce834173039708              # double 0.23838060489577395
	.quad	0x3fe5d124a4426c17              # double 0.68178016740728509
	.quad	0x3feaf7da1287f594              # double 0.84275535220483499
	.quad	0x3fb25e3b3d4fde78              # double 0.07175035712122646
	.quad	0x3fe29dd6c98e927c              # double 0.58176745764337978
	.quad	0x3fcd5a9e8d3ce56c              # double 0.22932798286801004
	.quad	0x3fe72dc3390d13ee              # double 0.724336253574277
	.quad	0x3fcef3a60108f9a8              # double 0.24181056070842755
	.quad	0x3fe500a33b8a1140              # double 0.65632783535742334
	.quad	0x3fdf1666982c4f2c              # double 0.48574223385479587
	.quad	0x3fdf14a8ec9aef9c              # double 0.48563597780207046
	.quad	0x3fd181873102c744              # double 0.27353076730934256
	.quad	0x3fe830591ea0a261              # double 0.75590187055520286
	.quad	0x3fed5dbe60887811              # double 0.91769331792943565
	.quad	0x3fcaf976d3b8be34              # double 0.21073804223986914
	.quad	0x3fb92524b081e7a0              # double 0.09822301205886541
	.quad	0x3fb0115491f54310              # double 0.062764440187731418
	.quad	0x3fdae2aab1da45e2              # double 0.42008464210911545
	.quad	0x3fe00fd4a1b79d8b              # double 0.50193244538688597
	.quad	0x3fb9754f18fee488              # double 0.099446242907008764
	.quad	0x3fed1ae511029ebb              # double 0.90953305551825936
	.quad	0x3fbb88f513b45208              # double 0.10755855303825268
	.quad	0x3fca792ef1da7970              # double 0.20682322320221713
	.quad	0x3fc728a82f3328d4              # double 0.1809282522647836
	.quad	0x3fd671ea299b3e24              # double 0.35070280135275511
	.quad	0x3fe9f2df74665f2e              # double 0.81089756712296945
	.quad	0x3fea497b147274f7              # double 0.82146982186864548
	.quad	0x3fe79c8d003940b6              # double 0.73786020320587542
	.quad	0x3fb91453e1922580              # double 0.097966425486580632
	.quad	0x3fe726afc50aefd1              # double 0.72347248539835551
	.quad	0x3fe9f622f69e204b              # double 0.81129596869960474
	.quad	0x3fe4497708e78c0b              # double 0.63396789302021384
	.quad	0x3fe4b71c52e73ec6              # double 0.64735237304736226
	.quad	0x3fedc0d00ad488d5              # double 0.92978670230174976
	.quad	0x3fdc33367b6c12ac              # double 0.44062578251786522
	.quad	0x3fb28ad2759bb318              # double 0.072430757248821087
	.quad	0x3fe6a1d2de2c4bd5              # double 0.7072538699452432
	.quad	0x3fdb4077007e3d46              # double 0.42580962227016916
	.quad	0x3fdd9af32d5035a0              # double 0.4625823919785379
	.quad	0x3fcb521fa26da318              # double 0.21344371253078331
	.quad	0x3fb1753c13826700              # double 0.068195109141381494
	.quad	0x3fef9aac29909eeb              # double 0.98763092153691667
	.quad	0x3fcce02aeff28df0              # double 0.22559105602441276
	.quad	0x3fe59c53b8f71174              # double 0.6753328907584959
	.quad	0x3fe5ce35d963a8e2              # double 0.68142216166350189
	.quad	0x3fe4929ecba2edac              # double 0.64289798519842156
	.quad	0x3fd480792d625580              # double 0.3203413909153241
	.quad	0x3fd036ede5888668              # double 0.2533526174102918
	.quad	0x3fccbec92d08c45c              # double 0.22457232188165477
	.quad	0x3fe41f560021bf2e              # double 0.62882518792864572
	.quad	0x3faf1b3bda2c78c0              # double 0.060754652388128161
	.quad	0x3fe5b82fba7968b5              # double 0.67873369618180013
	.quad	0x3fc644c0c825a7d8              # double 0.17397317669684642
	.quad	0x3fe32f8fcb2498b6              # double 0.59955587078436312
	.quad	0x3fd84bbbcf642674              # double 0.37962241414115927
	.quad	0x3fe1357ce3c461c0              # double 0.53777927861943198
	.quad	0x3febc295dcc18eae              # double 0.86750310055182012
	.quad	0x3fe729d2388910fc              # double 0.72385512392113993
	.quad	0x3fd60b8f5e33a256              # double 0.34445556830772739
	.quad	0x3fdf3211d51844ae              # double 0.48743100938834061
	.quad	0x3fdc53b4db9be0fa              # double 0.44260903783971595
	.quad	0x3fa941a4d0160650              # double 0.049328947449805427
	.quad	0x3fc1cb9c12aba740              # double 0.13902617370268366
	.quad	0x3fe4ac5ac1f29e05              # double 0.64603937035002501
	.quad	0x3fdadd6cd04ad888              # double 0.41976471272517601
	.quad	0x3fc4c2d22562f784              # double 0.16219546151654296
	.quad	0x3fed62ee59c105c9              # double 0.91832654504849487
	.quad	0x3fe8c435819e445d              # double 0.77395129505215332
	.quad	0x3febc2e64a67b616              # double 0.86754145176172659
	.quad	0x3feb101ce541e3fd              # double 0.84571690346558592
	.quad	0x3fe56add739028f7              # double 0.66929504939005724
	.quad	0x3fdc380d7a90fb06              # double 0.44092118234031863
	.quad	0x3fd39d9d6fcc274e              # double 0.30649505536768096
	.quad	0x3fc7290463edbaa8              # double 0.18093924407317741
	.quad	0x3fdda87031d025f2              # double 0.46340565552290436
	.quad	0x3fab8d78ee2e0210              # double 0.05381372363536141
	.quad	0x3fdd56b97bca2be6              # double 0.45841824616280602
	.quad	0x3fa7e18133a35b50              # double 0.046642339280586698
	.quad	0x3fd13fa2df314d6e              # double 0.2695090465178599
	.quad	0x3fd90fb78fc7cfb0              # double 0.39158429184976296
	.quad	0x3fe98f1675933413              # double 0.79871676410550874
	.quad	0x3feca24b1b6f2cba              # double 0.89481120451218676
	.quad	0x3fe22bee3f4e2dc4              # double 0.56786262859662218
	.quad	0x3fecced556fa62ba              # double 0.90024821269897548
	.quad	0x3fee6832ca648550              # double 0.95021953134361503
	.quad	0x3fee99052f8897bb              # double 0.9561792305364557
	.quad	0x3fe0d1cd7e2d9064              # double 0.52561068195474236
	.quad	0x3fcd688da978ce90              # double 0.22975321555133066
	.quad	0x3fd13612054a011e              # double 0.26892519489776301
	.quad	0x3fd71257618330d8              # double 0.36049446604444091
	.quad	0x3fe92de3151a5354              # double 0.78685144540450346
	.quad	0x3fd535dcbad967c6              # double 0.33141248938556733
	.quad	0x3fa9413b400f1a60              # double 0.049325801439000783
	.quad	0x3fd947012d495b52              # double 0.39495877668871515
	.quad	0x3feb3c27368aa3dc              # double 0.85109291699074729
	.quad	0x3fe5c265b2ddd09b              # double 0.67998013434273064
	.quad	0x3fdb7be37d412fa4              # double 0.42943656188867352
	.quad	0x3fcd588e532ccb14              # double 0.22926501332548155
	.quad	0x3fd17a72250d216e              # double 0.27309850328722163
	.quad	0x3feb052b45922dc5              # double 0.84438098514640869
	.quad	0x3fe95b73e8f5b7fb              # double 0.79241366863220664
	.quad	0x3fd3815410ab72e4              # double 0.3047685778417828
	.quad	0x3f690c00ebd87d00              # double 0.0030574815744014439
	.quad	0x3fcc82635651e700              # double 0.22272912707176573
	.quad	0x3fdc0b0f51145e22              # double 0.43817503850866235
	.quad	0x3fee7cdc0dea3b7e              # double 0.95274164884345658
	.quad	0x3fe3abb5c6033721              # double 0.61471069979026904
	.quad	0x3fd43aae82267600              # double 0.31608164510711845
	.quad	0x3fd04afd313c0294              # double 0.25457696731613422
	.quad	0x3febbd0dd3c705a6              # double 0.86682788241175923
	.quad	0x3fe85d40962bc484              # double 0.76138333635584887
	.quad	0x3fdbb67377d9e580              # double 0.43301092819418585
	.quad	0x3fbd675d3707de20              # double 0.11485846131824262
	.quad	0x3fd3df7155ab6b66              # double 0.31051286092922792
	.quad	0x3fe65d1282d3d5c5              # double 0.69886136581651981
	.quad	0x3fd7239e6ed3d76c              # double 0.36154900382040611
	.quad	0x3f919d3245111ea0              # double 0.017201219048983973
	.quad	0x3fefb97bd93d5f3d              # double 0.99139206342349661
	.quad	0x3fe12a171022f3ec              # double 0.5363879504362763
	.quad	0x3fe7e5bbe9a4c920              # double 0.74679370530637712
	.quad	0x3fd1e5ee6eb7ee6a              # double 0.27965889751769757
	.quad	0x3fee8737c66c0140              # double 0.95400608782077966
	.quad	0x3fce321091ce0524              # double 0.23590285415051782
	.quad	0x3fecc0a30a42ddad              # double 0.89851524356975221
	.quad	0x3fe7fec0177d357c              # double 0.74984745586122825
	.quad	0x3fdd43018b12fd2a              # double 0.45721472341024827
	.quad	0x3fc8de62ac889f28              # double 0.19428666519638083
	.quad	0x3fe23fdb2d27c1f1              # double 0.57029494113345269
	.quad	0x3fe70d787db8698e              # double 0.72039436869390427
	.quad	0x3fb3531b5bfe9e28              # double 0.075486860236758546
	.quad	0x3fc28ce0eff68de8              # double 0.14492427555988674
	.quad	0x3fdd3c50e790ed70              # double 0.456806398524086
	.quad	0x3fe1c32dfbb419eb              # double 0.5550756374439606
	.quad	0x3feb224f3d430417              # double 0.84793817486945755
	.quad	0x3fde562e8a8f5304              # double 0.47401011973606466
	.quad	0x3f5452be80688800              # double 0.0012404308669222708
	.quad	0x3fe61e795c2a92c3              # double 0.69121997834425775
	.quad	0x3fe46d3baf479e53              # double 0.63833412393882794
	.quad	0x3fb8eb423fb3e150              # double 0.097339764168173248
	.quad	0x3feea4eb34c138b8              # double 0.95763168624559735
	.quad	0x3fcfc31a1f68ec68              # double 0.24814154180225789
	.quad	0x3fe3ae01fbff1086              # double 0.61499118059192948
	.quad	0x3fab3d5807067de0              # double 0.053202391488635703
	.quad	0x3fbf4cd70026deb8              # double 0.12226623300272876
	.quad	0x3fe86a5db0f55034              # double 0.76298412859114828
	.quad	0x3fc7c18b0db4216c              # double 0.18559396905062486
	.quad	0x3fc121cad4f796fc              # double 0.13384375952517036
	.quad	0x3fc6c05afe6a199c              # double 0.17774522230702139
	.quad	0x3fa9d00df72a8f60              # double 0.050415455266629605
	.quad	0x3fe535b9e6e44c6b              # double 0.66280837150624217
	.quad	0x3fe5df6e434939bb              # double 0.68352425710491305
	.quad	0x3fdd6476b12a3a96              # double 0.45925681401505736
	.quad	0x3fe46300786125a2              # double 0.63708518516175539
	.quad	0x3fc6295e6a0d1b3c              # double 0.1731374757602796
	.quad	0x3fe95cfdb44ff38b              # double 0.79260144440887481
	.quad	0x3fc4c4220e582940              # double 0.16223550510796692
	.quad	0x3fd6f6b94968ac18              # double 0.35880882424197713
	.quad	0x3fcc9c0d41316ef0              # double 0.22351232226616657
	.quad	0x3fbe810d79ae3b48              # double 0.11915668698041515
	.quad	0x3fe57b972ecf0a45              # double 0.67133673803648064
	.quad	0x3fe13ec5f4b6328e              # double 0.53891275210624356
	.quad	0x3feaa7713b9329c5              # double 0.83293973575319369
	.quad	0x3fe1dd6c60848d8d              # double 0.55827921725396978
	.quad	0x3feca26ffc0b59df              # double 0.89482878901872798
	.quad	0x3fb865bc7ff310a0              # double 0.095302373159088293
	.quad	0x3fcfde12b6c9b798              # double 0.24896463322823759
	.quad	0x3fed00335486f76d              # double 0.90627447613927148
	.quad	0x3fcd2ba88b901438              # double 0.2278948480090166
	.quad	0x3fe622f5fe5d8b16              # double 0.69176768952124479
	.quad	0x3fe267b1a7701181              # double 0.57515795424164662
	.quad	0x3fe516fa2b81ba82              # double 0.6590548372021916
	.quad	0x3fef92d480b2d1ff              # double 0.98667359482220706
	.quad	0x3fcc38d2ec6987b0              # double 0.22048412841382747
	.quad	0x3feb279ffb1d40f6              # double 0.84858702703243583
	.quad	0x3fe88dbedbf01fc9              # double 0.76730292278897949
	.quad	0x3fdf0a84e3263f6c              # double 0.48501703436431032
	.quad	0x3fc55dff68a95eb4              # double 0.16693108187131644
	.quad	0x3fe751fb92c52538              # double 0.72875765481982224
	.quad	0x3fefcc62b9984f1c              # double 0.99369941948905049
	.quad	0x3fc0cd18ecc5eaa8              # double 0.13125907479464627
	.quad	0x3fe410d9338ecc2e              # double 0.62705669469722181
	.quad	0x3fea561982e65a61              # double 0.82301021162386345
	.quad	0x3fc6e88575f40cb4              # double 0.17897098788680454
	.quad	0x3fdec07f762141f8              # double 0.48049913917660048
	.quad	0x3fe34d9a27cdbb52              # double 0.60322292112491938
	.quad	0x3f80a9653d3a64c0              # double 0.0081355962095578382
	.quad	0x3fd48286a97d245c              # double 0.32046667625087877
	.quad	0x3fe1e1119a90f994              # double 0.55872421444637377
	.quad	0x3fd7ca948deebaec              # double 0.37173951969718533
	.quad	0x3fb8d1f493355e10              # double 0.096953664722029708
	.quad	0x3fe914123eb29fab              # double 0.7837001061025054
	.quad	0x3fa0cc347c5bc190              # double 0.032807960682364912
	.quad	0x3fe85366b82ca159              # double 0.76018081637907209
	.quad	0x3fa8e7929f3c5940              # double 0.048641759813266905
	.quad	0x3fd56506055e9bbe              # double 0.33429098629352072
	.quad	0x3fd057e425275676              # double 0.25536445263183027
	.quad	0x3fdf1b3de4f47be2              # double 0.48603770598304952
	.quad	0x3fde9d9b1d6f7afc              # double 0.47836950182492877
	.quad	0x3fd8a3df35f5b64c              # double 0.38500194806588151
	.quad	0x3fd3a4adf3b1ccf2              # double 0.3069262389974049
	.quad	0x3f950b459ed95180              # double 0.020550811596267149
	.quad	0x3fc351aaa3099cd4              # double 0.1509297653276237
	.quad	0x3fd46afd6d9511fa              # double 0.31903014851948763
	.quad	0x3fd54a2f4f4c2842              # double 0.33265288108725966
	.quad	0x3fd8364afe4ed8b2              # double 0.37831377825512924
	.quad	0x3fa4dfba9a5fff60              # double 0.040769416184047058
	.quad	0x3fef4669dfb07c0a              # double 0.97734540643057355
	.quad	0x3fe2adfffa0f87f1              # double 0.58374022331213216
	.quad	0x3fcda71be9182f50              # double 0.23166226274076474
	.quad	0x3fd62fc9b18f0be6              # double 0.34666673984264518
	.quad	0x3fd4bcd1e1414b6e              # double 0.32402464864315206
	.quad	0x3fe3ab9c78688aee              # double 0.61469863431224581
	.quad	0x3fdc47ff6a2698a2              # double 0.44189439169202605
	.quad	0x3fc07417960baa7c              # double 0.12854285074657301
	.quad	0x3fa79be09e054060              # double 0.046111125268567532
	.quad	0x3fe95f38b5f3a37a              # double 0.79287372147983537
	.quad	0x3fe47bb65420290e              # double 0.64010158949648299
	.quad	0x3fb2ace7707e2198              # double 0.072950806583440886
	.quad	0x3fdb50b9721fa976              # double 0.42680202622309282
	.quad	0x3fd40f1531e91544              # double 0.31342058061666855
	.quad	0x3fe80badeccbc211              # double 0.75142570733265945
	.quad	0x3fbeafa4e352f910              # double 0.11986761617570019
	.quad	0x3fc7d04d81672f0c              # double 0.18604439562329167
	.quad	0x3fe17e80dec32520              # double 0.54669230945834002
	.quad	0x3f8a329fce0cdf40              # double 0.012791870570807995
	.quad	0x3fef95fa7e1c970e              # double 0.98705792075335963
	.quad	0x3fed4a0bfee0df1a              # double 0.91528892308176357
	.quad	0x3fccb85b2f749048              # double 0.22437610451845758
	.quad	0x3fd486a52df18126              # double 0.32071809279115582
	.quad	0x3fe76b6e2ea86014              # double 0.73186406243167079
	.quad	0x3fc31976bca6ed34              # double 0.14921459399725168
	.quad	0x3fe54961bc458138              # double 0.66520773669984745
	.quad	0x3fbf1ea1dee14810              # double 0.12156116191297905
	.quad	0x3fe42ae0ba6f3578              # double 0.63023411190958623
	.quad	0x3fc2f76d9ddfc2e8              # double 0.14817590912527767
	.quad	0x3fc75a6a563b2b2c              # double 0.18244675837044022
	.quad	0x3fc82e221e44f0c0              # double 0.18890787580483526
	.quad	0x3fe16c84d27347f8              # double 0.54449692824914475
	.quad	0x3fd125499b518e44              # double 0.26790084998922148
	.quad	0x3fe1a3d35a4df947              # double 0.55124824178327791
	.quad	0x3feed3c457b9c460              # double 0.96335045942226926
	.quad	0x3fe7739ac675c5e0              # double 0.73286188852051381
	.quad	0x3fe7e93f75637b72              # double 0.74722264220677759
	.quad	0x3fe7817d0cb3fc22              # double 0.73455669861857964
	.quad	0x3feaf02f166c6bcb              # double 0.84181932811349591
	.quad	0x3fe9c0a5987f4705              # double 0.80476646217923131
	.quad	0x3fee19296efbd847              # double 0.94057151485936508
	.quad	0x3feb14ecdab7c455              # double 0.84630434721305881
	.quad	0x3febfe142c62bcc5              # double 0.87476547879295963
	.quad	0x3fdc0b7d790d04b2              # double 0.43820130177852967
	.quad	0x3fea7e09cd469373              # double 0.82788553326518721
	.quad	0x3fa78722fdf05050              # double 0.045952886103038382
	.quad	0x3fe187ff27978262              # double 0.54785115940837792
	.quad	0x3fd1850a21f6b7d8              # double 0.27374509159824134
	.quad	0x3fea19ff48cfbcd6              # double 0.81567348690978281
	.quad	0x3fee200fd6788174              # double 0.94141380204022917
	.quad	0x3fb83c8a6211f7b8              # double 0.094673775618473566
	.quad	0x3fdc122baff583b0              # double 0.43860904868602812
	.quad	0x3fea46329627f3bb              # double 0.82106904342037212
	.quad	0x3fea51f0b46d0eb5              # double 0.82250247230009299
	.quad	0x3fe7fbf36a31e3e8              # double 0.74950571767032859
	.quad	0x3fbf5c856ca22c48              # double 0.1225055113047101
	.quad	0x3faec0fea3461d20              # double 0.060066182547467983
	.quad	0x3f85536fc1f71240              # double 0.010413048846097728
	.quad	0x3fecd8b096ced062              # double 0.901451391741386
	.quad	0x3fe06674805970f1              # double 0.51250672405470088
	.quad	0x3fe3d89f5b4fe99d              # double 0.62019317469030322
	.quad	0x3fd8f9c2e28af814              # double 0.39024421809506404
	.quad	0x3fed3495afd667de              # double 0.91266903250948039
	.quad	0x3fd91354b138e5a0              # double 0.39180486018048022
	.quad	0x3fe68ba9d1b14a86              # double 0.7045487495000351
	.quad	0x3fd7857361ba7b1e              # double 0.36752018493455008
	.quad	0x3fef5789cfc205c2              # double 0.97943583085741914
	.quad	0x3fe41371528f91f2              # double 0.62737337231788914
	.quad	0x3fe19ffa694752cb              # double 0.55077858507373756
	.quad	0x3fd9df95d58f2e5a              # double 0.40427156310463419
	.quad	0x3fe559f43873d7e0              # double 0.66723071123010058
	.quad	0x3fe9d47df563c818              # double 0.80718896796884376
	.quad	0x3fe31757d0bb5f00              # double 0.59659949081375885
	.quad	0x3fe3d8ca13a3853c              # double 0.62021354518598271
	.quad	0x3fd1578445a11f92              # double 0.27096659469361228
	.quad	0x3fd7f26084e0a2a2              # double 0.374168519747892
	.quad	0x3fb1d9e3db61f768              # double 0.069730988559937424
	.quad	0x3fe10c98529502ca              # double 0.53278747681914607
	.quad	0x3fed3b72d02ba15e              # double 0.91350689562117871
	.quad	0x3fe0c772578ca0fe              # double 0.52434651469687288
	.quad	0x3fe46520c9c6f8aa              # double 0.63734473619094456
	.quad	0x3fdc4a3103e0970a              # double 0.44202828768389735
	.quad	0x3fd1c5446fbbfff2              # double 0.27766524230537393
	.quad	0x3fd6eede4a69fc94              # double 0.35832936541550819
	.quad	0x3fd18d41266e151e              # double 0.2742464900296272
	.quad	0x3fc4717a97957f78              # double 0.15971310044823972
	.quad	0x3fed7a428cb57275              # double 0.92117431146796369
	.quad	0x3fb43621bf6497f0              # double 0.078950986124794786
	.quad	0x3feef13d1058e102              # double 0.96694806282815216
	.quad	0x3fe3a6e602820a71              # double 0.61412334909284827
	.quad	0x3f9a6b5406bcdb20              # double 0.025800049697148997
	.quad	0x3fea48af3e6eff98              # double 0.82137262529430455
	.quad	0x3fed0d6271e1a601              # double 0.90788385622471435
	.quad	0x3fefabb97b56c232              # double 0.98971246804837265
	.quad	0x3fad609cd22be6e0              # double 0.057377720504474317
	.quad	0x3fc0acd52e2f9058              # double 0.13027443652311166
	.quad	0x3fd4ff7231fee5ae              # double 0.3280911911238843
	.quad	0x3fe513defa4cf5fb              # double 0.65867566000787237
	.quad	0x3fb420d31828ed40              # double 0.078625863455205725
	.quad	0x3fe04ba9cd0bfae1              # double 0.50923624084665786
	.quad	0x3feb0fe123a53bce              # double 0.84568840944290868
	.quad	0x3fe351debf5c9640              # double 0.60374390960050306
	.quad	0x3fed8c65b4938f21              # double 0.92338834065273911
	.quad	0x3fd4fafb40ddb454              # double 0.3278186925370552
	.quad	0x3fac4bdc901d4240              # double 0.055266277877880743
	.quad	0x3fd57b8ce25ef2c6              # double 0.33566591364414611
	.quad	0x3fb4028561dd8010              # double 0.078163467781905859
	.quad	0x3fe81b8c6983a85c              # double 0.75336285217532461
	.quad	0x3fef9a123fe2b315              # double 0.98755753018994829
	.quad	0x3fdad73be4d75014              # double 0.41938683841476743
	.quad	0x3fce9e8550c918b4              # double 0.23921266979795563
	.quad	0x3fd379cd4342a510              # double 0.3043091923560306
	.quad	0x3fa896051f144720              # double 0.048019561809395706
	.quad	0x3fddba876ef2ec56              # double 0.46450982889991133
	.quad	0x3fb6732c4d9fb1e8              # double 0.087694901419758886
	.quad	0x3fe717dd303295b2              # double 0.72166308797448253
	.quad	0x3fe6a88ce8aa96f6              # double 0.70807500307702642
	.quad	0x3f9d1f44ddde12c0              # double 0.028439594308582228
	.quad	0x3fe0b3dfd497ca47              # double 0.5219573166089696
	.quad	0x3fe5c2ab1a0b91c4              # double 0.68001322829200506
	.quad	0x3fa8b6ca10771290              # double 0.048269571790602872
	.quad	0x3fe425479916f52d              # double 0.62955074215247964
	.quad	0x3fba12745e129360              # double 0.10184409424489393
	.quad	0x3fe233cd82ba519e              # double 0.56882358105444886
	.quad	0x3fefd1aec7c524ba              # double 0.99434603707881952
	.quad	0x3fe03ffc636a55b5              # double 0.50781077782692441
	.quad	0x3fe91ee25b109a93              # double 0.78502004419427107
	.quad	0x3fd7c5ebce042bb0              # double 0.37145514601496199
	.quad	0x3fee996cad28faf5              # double 0.95622857876136769
	.quad	0x3fba8ed830518f58              # double 0.10374213390019571
	.quad	0x3fdfbe7bbd9e8ac0              # double 0.4960011817694685
	.quad	0x3fdb01c5353ccc22              # double 0.42198305319760909
	.quad	0x3fea6e0faf0e4249              # double 0.82593521299902151
	.quad	0x3fd683bab23710b2              # double 0.35179011730020726
	.quad	0x3fdab9fd7a13a764              # double 0.41760193749961716
	.quad	0x3fe2703f51d6287f              # double 0.57620206817342978
	.quad	0x3fcfb046a61abba0              # double 0.24756701574866913
	.quad	0x3faf80b6c8d88170              # double 0.061528884904194281
	.quad	0x3fe831b74348433a              # double 0.75606883183545581
	.quad	0x3fee3cb4c861c6cf              # double 0.94491042267892478
	.quad	0x3fa048cb48309780              # double 0.031805374681694865
	.quad	0x3fdb7eb2f027d73c              # double 0.42960809185693782
	.quad	0x3fe7d40208982580              # double 0.74462987593248897
	.quad	0x3fd8dc77deb23042              # double 0.38845631358777066
	.quad	0x3fe30a312eee677a              # double 0.59499415556204771
	.quad	0x3fc7d899fdf248d8              # double 0.18629765414931998
	.quad	0x3fe7cc3c7ff89cc2              # double 0.74368119234431895
	.quad	0x3fc79185e5801690              # double 0.18412851053306101
	.quad	0x3fda1fe86c9fda5a              # double 0.40819750411848121
	.quad	0x3fdcc428f97434c4              # double 0.44947265969024053
	.quad	0x3fefe19de8b394be              # double 0.99629111718663643
	.quad	0x3fea3705e978ed6b              # double 0.81921668624947352
	.quad	0x3fe80a42870ac252              # double 0.75125242591281904
	.quad	0x3fee4c9af61279a7              # double 0.9468512350174948
	.quad	0x3fd341ec28c1a0b2              # double 0.30089858989823448
	.quad	0x3fe41ae9746805e9              # double 0.62828514800656621
	.quad	0x3feabb137b218eb2              # double 0.83533643769302146
	.quad	0x3fe3fd8aa9469e0a              # double 0.62469990789117102
	.quad	0x3fe6a2716e089a7a              # double 0.70732947817744152
	.quad	0x3fea6c59f4db4c16              # double 0.8257264883380937
	.quad	0x3fd04c1ecdd9c566              # double 0.25464601614574744
	.quad	0x3feb0a1a9953efae              # double 0.8449833864865377
	.quad	0x3fdee31931d75532              # double 0.48261098735140984
	.quad	0x3fe4c644194bd3c2              # double 0.64920239391960188
	.quad	0x3feafc7ca319ceca              # double 0.84332115035655275
	.quad	0x3fdef0650a6b0cca              # double 0.48342252747916048
	.quad	0x3fe247f08cb2aa1c              # double 0.5712816951757449
	.quad	0x3fe8ad1868e2d4ce              # double 0.77112980351980709
	.quad	0x3fdad04a08868ae8              # double 0.41896296341489725
	.quad	0x3fea3fb7a2a478db              # double 0.82027799383265732
	.quad	0x3fe97d4d2b756a95              # double 0.79654558647173934
	.quad	0x3fe6f82601fc3f5c              # double 0.71779156100999897
	.quad	0x3fe930f505a3fb16              # double 0.78722621061010289
	.quad	0x3fdc6ba0b479114c              # double 0.44406907676991092
	.quad	0x3fe7829ba808473d              # double 0.73469336336913893
	.quad	0x3fe49a5c68439a09              # double 0.64384289135051731
	.quad	0x3fd7dd71a206af7e              # double 0.37289086172926733
	.quad	0x3fb88a18eb7c4d40              # double 0.095857198230352658
	.quad	0x3fdcf0631b97459e              # double 0.45217206663536469
	.quad	0x3fd535f314300198              # double 0.3314178177970688
	.quad	0x3fdfb2c6ecd4f4f8              # double 0.49528668525802244
	.quad	0x3f83b51a93475580              # double 0.0096227718540073947
	.quad	0x3fd3b73717771146              # double 0.30805756846918475
	.quad	0x3fe428f490404b49              # double 0.62999942945530407
	.quad	0x3fbc4fd60109be80              # double 0.11059319997161232
	.quad	0x3fd82c3a01c49fde              # double 0.37769937679922616
	.quad	0x3fdd24824ff1c66c              # double 0.45535333449433923
	.quad	0x3fd771ffffc0a7c8              # double 0.36633300758205367
	.quad	0x3fe933bcc17d3a9f              # double 0.7875655917249168
	.quad	0x3fe37f75877fd7c5              # double 0.60930897202228407
	.quad	0x3fe7a83eea575c28              # double 0.73928781289840106
	.quad	0x3fe1e44874d05ed6              # double 0.55911658110832252
	.quad	0x3fd5bffe09817242              # double 0.33984328201566794
	.quad	0x3fecfd0c9e944d9f              # double 0.90588980648537987
	.quad	0x3fd0df1a8f85ed82              # double 0.26361717239316118
	.quad	0x3fc59fb1a6105900              # double 0.16893597229563539
	.quad	0x3fc4d32d6fbf767c              # double 0.16269462543907653
	.quad	0x3fe8c9835754ed2e              # double 0.77459876114827408
	.quad	0x3feb2e00c46675f8              # double 0.8493656001989498
	.quad	0x3f9376f7aac70c20              # double 0.019008512304719116
	.quad	0x3fd741a0a5c98bee              # double 0.36338058653035332
	.quad	0x3fe292bc1e0ea869              # double 0.58041196699674658
	.quad	0x3fcd53b8e7da9758              # double 0.22911750145902476
	.quad	0x3febb4d1a08ada60              # double 0.86582261424957707
	.quad	0x3fb44003046b7b78              # double 0.079101742343011483
	.quad	0x3fdfdd15d68a3b16              # double 0.49786897612732284
	.quad	0x3fd7e6c77e7d663a              # double 0.37346064903758569
	.quad	0x3fe30e42d9e85aee              # double 0.59549086151204533
	.quad	0x3fe785bafece634c              # double 0.73507451788746314
	.quad	0x3fe34f744ed58103              # double 0.60344901463761891
	.quad	0x3fb9989b20d6f658              # double 0.099984832303527837
	.quad	0x3feb39c81f61ae24              # double 0.85080343369685751
	.quad	0x3fd086abfbb4196a              # double 0.25821971493168994
	.quad	0x3f89854f3233c000              # double 0.012461298675106036
	.quad	0x3fcc03350b48e7e4              # double 0.21884787608161027
	.quad	0x3fea9d08e2a927cf              # double 0.83166927594833762
	.quad	0x3fe814e393a68857              # double 0.75254992330543302
	.quad	0x3f9ad03a5be540c0              # double 0.026184951647622468
	.quad	0x3fd500bcd50aae06              # double 0.3281700211034323
	.quad	0x3fd672992429878c              # double 0.35074451953379859
	.quad	0x3fd8d2d61301c2e8              # double 0.38786842208996442
	.quad	0x3fc63294cc81d7ec              # double 0.17341861711218998
	.quad	0x3fd000e424a59dc4              # double 0.25005439356615633
	.quad	0x3fd5574add94b3aa              # double 0.33345290793186655
	.quad	0x3fe61516a1759330              # double 0.69007426772131986
	.quad	0x3fd146257895c08a              # double 0.2699063947284307
	.quad	0x3fef5765a65c4567              # double 0.97941858761093392
	.quad	0x3fb3ec9b9d39bf10              # double 0.077829099545621227
	.quad	0x3fd371371e00de10              # double 0.30378511362093352
	.quad	0x3fef2eb0e683eb40              # double 0.97444958708306472
	.quad	0x3fc6fb76e57dbb0c              # double 0.17954908567067951
	.quad	0x3fda4766e6af00b2              # double 0.41060802962966669
	.quad	0x3fe8956996d77a52              # double 0.76823882542869115
	.quad	0x3fd4f223b92fa60e              # double 0.32727902493078964
	.quad	0x3fe522cd36d2980c              # double 0.66049824435754223
	.quad	0x3fe05999183342c4              # double 0.51093725897416009
	.quad	0x3fb7c65687539c28              # double 0.092870147742005416
	.quad	0x3fe853f7168a0fdd              # double 0.76024965669830247
	.quad	0x3feccf695e2342aa              # double 0.90031879793430858
	.quad	0x3fec006cf47286f4              # double 0.87505195373179711
	.quad	0x3fef6f7529eb0fbf              # double 0.98235567271375845
	.quad	0x3fe891559603e12e              # double 0.76774100589594751
	.quad	0x3fa09bcb9c5e9420              # double 0.032438624227588031
	.quad	0x3feb458da2d9056c              # double 0.85224038892935771
	.quad	0x3fccd9de9aaa37a4              # double 0.22539885093686707
	.quad	0x3fc1934e1fa411a4              # double 0.13730789704289947
	.quad	0x3fe0af3241857802              # double 0.52138626858845805
	.quad	0x3fc0a30a08f9fe64              # double 0.12997556150729672
	.quad	0x3fe08c2485ea85b2              # double 0.51710725932587409
	.quad	0x3fe4495c213ed169              # double 0.63395506375540578
	.quad	0x3fe422164c8afa8f              # double 0.62916102361471526
	.quad	0x3fb3533983319f50              # double 0.075488657502885248
	.quad	0x3fdeedd4fa07e82e              # double 0.48326610962942851
	.quad	0x3feaf17605958434              # double 0.84197522249826883
	.quad	0x3fd74a1a4fbeb5fa              # double 0.36389787471384205
	.quad	0x3fe78394c3658fa4              # double 0.73481214679167239
	.quad	0x3fe7a7f059e791df              # double 0.73925035056577915
	.quad	0x3fd3764dc0c04940              # double 0.30409568618155802
	.quad	0x3fdbf0d6072e3ef8              # double 0.43657446576342762
	.quad	0x3fd630733dcd0a64              # double 0.34670716319320705
	.quad	0x3fe806739f8ab49d              # double 0.75078755531798758
	.quad	0x3fc8fc56c0b9c448              # double 0.19520077143127623
	.quad	0x3fc962313f1a09d4              # double 0.19830909329546265
	.quad	0x3fe7e808945ee252              # double 0.74707440355912014
	.quad	0x3feb3c8bee843c6c              # double 0.85114094338667944
	.quad	0x3fb19faa35c9ebb0              # double 0.068842542774219195
	.quad	0x3feff4c1e3eeb77c              # double 0.99862761037887493
	.quad	0x3fe0f4d51395779f              # double 0.52988675904247262
	.quad	0x3fe975a1e84f8f25              # double 0.79560943005751439
	.quad	0x3fced59cecbcc5d4              # double 0.24089395102923439
	.quad	0x3fe30fc58a8f0e7a              # double 0.59567524969357
	.quad	0x3fe563c13197524b              # double 0.66842708287965402
	.quad	0x3fba03e09f76c5f0              # double 0.10162166493571312
	.quad	0x3fc9d919c95b5338              # double 0.20193788844940186
	.quad	0x3fe934e1869b458a              # double 0.78770519533479555
	.quad	0x3fd0e827110d9010              # double 0.26416947045640971
	.quad	0x3fe14bf8cf1813a2              # double 0.54052391479546125
	.quad	0x3fe0f35c79584ac5              # double 0.52970718097852709
	.quad	0x3fecca164b3a4920              # double 0.89966883366495054
	.quad	0x3fdce3e31e504004              # double 0.45140912971783131
	.quad	0x3fdb41c165447ff6              # double 0.42588839425479763
	.quad	0x3fe2ab79f3bfa3be              # double 0.58343217475077558
	.quad	0x3feffbbed05c2df2              # double 0.99948063559844358
	.quad	0x3fd25f5e8ef4f8ec              # double 0.28707088432919536
	.quad	0x3fb11fa5835e4d60              # double 0.066889137813907151
	.quad	0x3fe0e503b2d8763b              # double 0.52795586519977833
	.quad	0x3fdf6bc050958e5e              # double 0.49095161313582547
	.quad	0x3fba085e413122a8              # double 0.10169018832778909
	.quad	0x3fde78edc6e54dea              # double 0.47613090918932122
	.quad	0x3facd6b745304de0              # double 0.056325652309307861
	.quad	0x3fe8a3ebe05f6a97              # double 0.7700099355964366
	.quad	0x3fc4ec133a5d8628              # double 0.16345444059247538
	.quad	0x3fd57745ee3d7156              # double 0.33540485635400807
	.quad	0x3fe87aa493ffa915              # double 0.76497105508795704
	.quad	0x3fe5e2dd51b64277              # double 0.68394342383733331
	.quad	0x3fc7c4f85de8df8c              # double 0.18569855294640225
	.quad	0x3fd5096eb049e3d0              # double 0.32870070663153417
	.quad	0x3fee84eecbac3315              # double 0.95372714786353419
	.quad	0x3fa343bde57d7530              # double 0.037626203788685308
	.quad	0x3fe6aed317dd194c              # double 0.7088408914649249
	.quad	0x3fe9e044de35db3e              # double 0.80862658882583793
	.quad	0x3fd76b37877facf8              # double 0.3659190009336295
	.quad	0x3fe73cc9c7d592cb              # double 0.7261704352391346
	.quad	0x3fe3f54c677f4d01              # double 0.62369365896520901
	.quad	0x3fd5dc1148b24efe              # double 0.34155685519475287
	.quad	0x3fe1f0bfd9adc508              # double 0.56063835635555481
	.quad	0x3fe5a0801fe46bd0              # double 0.67584234456023218
	.quad	0x3fef1ca701c2e8dd              # double 0.97224760383621922
	.quad	0x3fdb72cee23ea884              # double 0.42888233274664622
	.quad	0x3fc304f22c27d7cc              # double 0.14858843952214185
	.quad	0x3fdfd0434a2b7b8e              # double 0.49708635562085923
	.quad	0x3fed50c6f3c2c6b3              # double 0.91611049279727863
	.quad	0x3fb12585f44f5128              # double 0.066978809495883085
	.quad	0x3feff4e5aae5ab9a              # double 0.99864467027997539
	.quad	0x3fca454f56c665ac              # double 0.20524017083225254
	.quad	0x3fd05fefe9a2d5bc              # double 0.25585553947470507
	.quad	0x3fe95936eafb3c88              # double 0.79214044470599365
	.quad	0x3f758a386530af00              # double 0.0052587702694315563
	.quad	0x3fd1c931008089f2              # double 0.27790474938424758
	.quad	0x3fea708935f2f8d7              # double 0.82623730217872093
	.quad	0x3fcc8974968e5408              # double 0.22294480658879956
	.quad	0x3fe66cf080c7a4a6              # double 0.70079827453914301
	.quad	0x3fdaaadc727f9a10              # double 0.41667853528488852
	.quad	0x3fb259068e947fe8              # double 0.071670923051442181
	.quad	0x3fd1337357d703c0              # double 0.26876529291262941
	.quad	0x3fdc5cea73b54d02              # double 0.44317113208417436
	.quad	0x3fe49628ac412762              # double 0.64332994121035036
	.quad	0x3fdbf6c44996b9cc              # double 0.43693644701388901
	.quad	0x3fd9f76e3e5a73b0              # double 0.40572696770851291
	.quad	0x3fdf89572f16428a              # double 0.49275760267577395
	.quad	0x3fe1b5c952f5938c              # double 0.55344072535500421
	.quad	0x3fbceaba7f7c2c78              # double 0.11295667278698029
	.quad	0x3fd313b7facaa1e4              # double 0.29807853213654156
	.quad	0x3fabb437623acbe0              # double 0.054109316578795363
	.quad	0x3feace40b8fec4ed              # double 0.83767734653352266
	.quad	0x3fe44c62634e3b69              # double 0.63432425876258691
	.quad	0x3fcde3b1033eddc0              # double 0.23351109178996232
	.quad	0x3fee6f0b94c61f19              # double 0.95105532700924578
	.quad	0x3fe285f683f461b1              # double 0.57885289928804273
	.quad	0x3fdc38d4390d6210              # double 0.44096856662284356
	.quad	0x3fc7a3693b5d1b84              # double 0.18467440985315531
	.quad	0x3fe5050c3352c75e              # double 0.65686616920559593
	.quad	0x3fd2ba45f8d283c4              # double 0.29261922167830456
	.quad	0x3fe9dc8c71aee4cb              # double 0.80817243770356961
	.quad	0x3fee776f0f451237              # double 0.95207932455429656
	.quad	0x3fd24665c6e19906              # double 0.28554672643657886
	.quad	0x3fe24ab3b0302741              # double 0.57161888515222625
	.quad	0x3f3f3687d3f36000              # double 4.7627273666028813E-4
	.quad	0x3fe1ea4d3b73ee53              # double 0.55985128032575415
	.quad	0x3fe8d2b34ce319ec              # double 0.77572026268972882
	.quad	0x3fe4d5b40b3b3d13              # double 0.65108682817109054
	.quad	0x3fcc3109d42d5588              # double 0.22024653301438613
	.quad	0x3fe08414f2068739              # double 0.51612326880078918
	.quad	0x3fea0262315a4ba1              # double 0.81279096259310191
	.quad	0x3fdbf6b764fcd194              # double 0.43693337308948199
	.quad	0x3fd505857e3268de              # double 0.3284620029823041
	.quad	0x3fe484bb91fc63a0              # double 0.64120272171850345
	.quad	0x3fda5709d15a5bca              # double 0.4115623993361025
	.quad	0x3fef6868daa9db08              # double 0.98149531085695773
	.quad	0x3fe02534fa9e8186              # double 0.50454186390929645
	.quad	0x3fdc394d335ba67c              # double 0.44099740996771408
	.quad	0x3fe1951fdb15312c              # double 0.54945366658788464
	.quad	0x3fd04e72c9578a3a              # double 0.25478810941982355
	.quad	0x3fb4c70947dd57a0              # double 0.081162052197525814
	.quad	0x3feea3df96adddfa              # double 0.9575040762856013
	.quad	0x3fd1c9602b5e0d24              # double 0.27791599497887121
	.quad	0x3fd6cf74c935d888              # double 0.35641212129065325
	.quad	0x3fdb28f488153226              # double 0.42437470712028114
	.quad	0x3fd8f9057382293e              # double 0.39019905357476492
	.quad	0x3fd7a1a360578624              # double 0.36924061211002113
	.quad	0x3fe336b79c4e37dc              # double 0.60042934921670676
	.quad	0x3fab0d31d2e7d8e0              # double 0.052835041995352716
	.quad	0x3fcc4fd642a24d58              # double 0.22118643048870967
	.quad	0x3fecaf8209b53d20              # double 0.89642431160055835
	.quad	0x3fb22ec3973daf60              # double 0.071026062416135627
	.quad	0x3fdbc21edb426288              # double 0.4337231770710237
	.quad	0x3fcb4682d7cee4d0              # double 0.213089328169906
	.quad	0x3fefa0fc2571229a              # double 0.98840148270490436
	.quad	0x3fd70a6bad3ea554              # double 0.36001102369717342
	.quad	0x3fa26526717f8d30              # double 0.035927964548842062
	.quad	0x3fb8579cab4d2908              # double 0.09508685285723939
	.quad	0x3fe2f1cc3273b9cc              # double 0.59201631406704669
	.quad	0x3fe6956ae52067ad              # double 0.70573944808278599
	.quad	0x3fad4f78e1fe1390              # double 0.057246949755643262
	.quad	0x3fe02fc7e52ac59a              # double 0.50583262213892799
	.quad	0x3fef740c717ffcc0              # double 0.9829160897060305
	.quad	0x3fe308358236056d              # double 0.59475207740631009
	.quad	0x3fd51926f5e01458              # double 0.329660167801483
	.quad	0x3fdfb13e9102e102              # double 0.49519313966040113
	.quad	0x3fec7bfb531bebaf              # double 0.89013448936690576
	.quad	0x3fc3bacb8292a5cc              # double 0.15413802981974667
	.quad	0x3fe1917b2b55d3e7              # double 0.54900892700117943
	.quad	0x3fd7d8a69b47b912              # double 0.37259831585005643
	.quad	0x3fe38cb5dce519e4              # double 0.61092656272449775
	.quad	0x3fbc3faf1345a150              # double 0.11034673901088365
	.quad	0x3fddecd5601a2790              # double 0.46758016953446546
	.quad	0x3fa3f3d4921c2c50              # double 0.038969652972888569
	.quad	0x3fe5852a15b866a3              # double 0.67250541918038598
	.quad	0x3fd74b440e84f8b2              # double 0.36396886270439233
	.quad	0x3fec55d1480b5560              # double 0.88547576972147723
	.quad	0x3fe51e91c8fc4e32              # double 0.65998162512773306
	.quad	0x3feb24addcedcf00              # double 0.84822743559058722
	.quad	0x3febbd5e4b344a51              # double 0.86686625183421928
	.quad	0x3fe291fdd16e02b0              # double 0.5803212252067933
	.quad	0x3fd200e62a71ff22              # double 0.28130487580345875
	.quad	0x3fce2bb2dbaa67b8              # double 0.23570857740270212
	.quad	0x3fea6dd1c725075d              # double 0.82590569396436886
	.quad	0x3fdd266f03c88e44              # double 0.45547080392336547
	.quad	0x3fb3d3226df94048              # double 0.077440406655342575
	.quad	0x3fe8ca0e41c218a7              # double 0.77466500132938598
	.quad	0x3fc32266ba67fc94              # double 0.1494873438059342
	.quad	0x3fa5616176c64c30              # double 0.041758580921986144
	.quad	0x3feb113f50030237              # double 0.84585538508696956
	.quad	0x3fe57a1855ff1ab0              # double 0.67115418239776226
	.quad	0x3fe92596ea0a0933              # double 0.78583856306821642
	.quad	0x3fda76331ecd96a2              # double 0.41346433647263769
	.quad	0x3feceb8f5c349a75              # double 0.9037548828972165
	.quad	0x3fd01a6fcf4afe34              # double 0.25161357158137609
	.quad	0x3fc3155f8fa65464              # double 0.14908976091524828
	.quad	0x3fe550661ea7a6cf              # double 0.6660643194893171
	.quad	0x3fee245eea478762              # double 0.94193979032227682
	.quad	0x3fec22e5382cf3e4              # double 0.87925969096943079
	.quad	0x3fe97cd9cf49adcc              # double 0.79649057851696047
	.quad	0x3fc69e0d4dd98c1c              # double 0.17669836331614952
	.quad	0x3fec16881ce7b358              # double 0.87775045056842327
	.quad	0x3fe20e79df08f612              # double 0.56426709710621226
	.quad	0x3fd39f10281109c0              # double 0.30658344185590281
	.quad	0x3fc76c721e977894              # double 0.18299700254187157
	.quad	0x3fe2a23f449e5a1b              # double 0.5823055591779992
	.quad	0x3fe0735c748f065d              # double 0.51408217206353479
	.quad	0x3fedb62ffa91298d              # double 0.92848967493891765
	.quad	0x3fe7689925d01ebe              # double 0.73151833901734853
	.quad	0x3fe61406dfadeef4              # double 0.68994468390834962
	.quad	0x3fee352c4c2094e1              # double 0.94399084919555432
	.quad	0x3fcc632351ee0438              # double 0.221775450711023
	.quad	0x3fe9addca9de3acf              # double 0.80247338464126894
	.quad	0x3fe07d06a81e35ac              # double 0.51526196322963846
	.quad	0x3fac919a46a360e0              # double 0.055798359988047386
	.quad	0x3fc31b2c0ce6b634              # double 0.14926672582571288
	.quad	0x3fdf4d3d04885f8c              # double 0.48908925478598841
	.quad	0x3f9317cd2d4ad100              # double 0.018645482911510136
	.quad	0x3fd5553225f42812              # double 0.3333249445573766
	.quad	0x3fd030f4c9bcc5e8              # double 0.25298804951589071
	.quad	0x3fe98bdc94ba9bfb              # double 0.79832295464154812
	.quad	0x3fe81db59e903f6a              # double 0.75362664193560858
	.quad	0x3fe6cc215b6b0d65              # double 0.71241824965583744
	.quad	0x3fe9d3735882c8de              # double 0.80706183707504997
	.quad	0x3fecd06607336d8c              # double 0.90043927580284011
	.quad	0x3fee29c73ddbc42a              # double 0.94259988862734656
	.quad	0x3fcb7ad282fb96a4              # double 0.21468573947565972
	.quad	0x3fe8d077179099a1              # double 0.7754474125147689
	.quad	0x3fe31ce9ce0608ff              # double 0.5972794555566735
	.quad	0x3feaeff237bd630f              # double 0.84179030310323977
	.quad	0x3f976fa15f71b220              # double 0.022886773539015803
	.quad	0x3fcbbeda1165b344              # double 0.21676183557010564
	.quad	0x3fbd74a7f6f4f470              # double 0.11506128100605095
	.quad	0x3fdb49dd1e933eca              # double 0.42638328538758385
	.quad	0x3fdf74a8e317c51c              # double 0.49149534394298811
	.quad	0x3fe9188cad7c204a              # double 0.78424676784289571
	.quad	0x3fe636c22cd89b56              # double 0.69418438681609973
	.quad	0x3fde43ccc8b74802              # double 0.47288817979017506
	.quad	0x3fdcfd9c7f9c08da              # double 0.4529792066752073
	.quad	0x3fe8df0434c240ce              # double 0.77722368530705821
	.quad	0x3fc6ac54d22934e0              # double 0.17713413488164687
	.quad	0x3fec1e633ba4987b              # double 0.87870942734731672
	.quad	0x3fd31d52bca9515a              # double 0.29866474555935485
	.quad	0x3fe8fef969006853              # double 0.78112478740809832
	.quad	0x3febbe28a924f628              # double 0.866962747917289
	.quad	0x3fefcd3dacfd1fad              # double 0.99380382334583361
	.quad	0x3faf220f02e2f650              # double 0.060806721784939399
	.quad	0x3fe6d6b42773737a              # double 0.71370895104665455
	.quad	0x3fe3ece4b9a660b8              # double 0.6226676584219808
	.quad	0x3feeb8f33b120c1f              # double 0.9600769189568189
	.quad	0x3fedf92f115c80a5              # double 0.93666795149694748
	.quad	0x3fe9c10b7a2695fd              # double 0.80481504304469775
	.quad	0x3feb3b9ddc2a2be4              # double 0.85102742196010838
	.quad	0x3fd12e836ae531fa              # double 0.26846394957536257
	.quad	0x3facf0f864c1f640              # double 0.056525957393187998
	.quad	0x3fd046f6d693f048              # double 0.25433131174918744
	.quad	0x3fe9bc2e6c548a53              # double 0.80422135504006531
	.quad	0x3fe1311aff07d253              # double 0.53724431811003581
	.quad	0x3fcf28ca90a2d9e0              # double 0.24343235075293901
	.quad	0x3fddb4ef81724218              # double 0.46416843072168623
	.quad	0x3fe82e5ae6ce352a              # double 0.75565857962798089
	.quad	0x3fb524dd9438da30              # double 0.082593773543387483
	.quad	0x3fe87a2e2bdea3cd              # double 0.76491459434793685
	.quad	0x3feffc3157e799af              # double 0.99953524750599409
	.quad	0x3fe0897f914ef528              # double 0.51678446178963089
	.quad	0x3fc4eafc0fdb2650              # double 0.16342116140576701
	.quad	0x3fe20168a6decce4              # double 0.56267197219713383
	.quad	0x3fe9e6f36be66d44              # double 0.80944224428405009
	.quad	0x3feebdcf3bde408a              # double 0.96067010586740875
	.quad	0x3fedf1ef0fa7422d              # double 0.93578293854995354
	.quad	0x3fedfb3f50159e83              # double 0.93691983834737902
	.quad	0x3fe29821773fbe84              # double 0.58107064524479357
	.quad	0x3fee9b3cc26db756              # double 0.95644987081844124
	.quad	0x3fce4e6e020c3c3c              # double 0.23676848506917902
	.quad	0x3fe0d4639010d395              # double 0.52592638147199244
	.quad	0x3fd4d7b81388da2c              # double 0.32566644580529913
	.quad	0x3fc6a17d19970abc              # double 0.1768032431555947
	.quad	0x3fef7a4647a35251              # double 0.98367609016220047
	.quad	0x3fef4fd4b9844854              # double 0.97849498971687376
	.quad	0x3fec7f45553444b2              # double 0.89053599015655593
	.quad	0x3fe8adc2493c6f2a              # double 0.77121080688400423
	.quad	0x3fea0c54a3699689              # double 0.8140052024507024
	.quad	0x3fe04aed68ab8e9c              # double 0.50914640849483161
	.quad	0x3fd6b6b64eded4de              # double 0.35490186407271362
	.quad	0x3fd03da4cb9edb0e              # double 0.25376243481461891
	.quad	0x3fcee19961658e5c              # double 0.24125973945330059
	.quad	0x3fdbdfd8944490de              # double 0.43553747634201823
	.quad	0x3fb0f027bde991e8              # double 0.066164478173568519
	.quad	0x3fe399e1773d8cae              # double 0.61253426827570023
	.quad	0x3fb1fc362f675d40              # double 0.070254694531617368
	.quad	0x3fd66c9eee0b6292              # double 0.35037968870668934
	.quad	0x3fe87586efd40414              # double 0.7643465694565088
	.quad	0x3fde2a2637c0e96e              # double 0.47132258839305663
	.quad	0x3fe0dbbefde00fd6              # double 0.52682447037704594
	.quad	0x3fbf09ce5b33fd00              # double 0.12124337889325787
	.quad	0x3fbc3f765eb34f60              # double 0.11034335910818305
	.quad	0x3fe5a80d2fc6f2d9              # double 0.67676410037492041
	.quad	0x3fe6b879663eea32              # double 0.7100188252437134
	.quad	0x3fe46a2f0026abbc              # double 0.63796186475280292
	.quad	0x3fd24e62967eecdc              # double 0.28603424736838945
	.quad	0x3fe312ce2d7dd007              # double 0.59604557881402875
	.quad	0x3fd327dcbb10fc9a              # double 0.29930799740027114
	.quad	0x3fded20b84e096cc              # double 0.48157012916850017
	.quad	0x3fece278353bb7ac              # double 0.90264521023867905
	.quad	0x3fe853866cdb10df              # double 0.76019593487628956
	.quad	0x3fdcdabd95a0db2e              # double 0.45085086452620515
	.quad	0x3fe27e913f76945f              # double 0.57795011897236381
	.quad	0x3fd1669dd1e14d22              # double 0.27188821312047839
	.quad	0x3fba547b77d41d88              # double 0.10285159755232176
	.quad	0x3fe7c50788de328f              # double 0.74280144435904727
	.quad	0x3fefa958b40b9c3c              # double 0.98942217984302471
	.quad	0x3fb3e5a36a967270              # double 0.077722753069289884
	.quad	0x3f9d4d4be6050da0              # double 0.028615175165453643
	.quad	0x3fe544b5836ec1b4              # double 0.66463733358801003
	.quad	0x3fc470d5993cf618              # double 0.15969343168573924
	.quad	0x3fd4392886f169d6              # double 0.31598866632489597
	.quad	0x3fe263b6a426b5df              # double 0.57467205105575292
	.quad	0x3fcdeae76dbcbacc              # double 0.23373120172751383
	.quad	0x3fe69ebdf569be5e              # double 0.70687768871534806
	.quad	0x3fdda0887a58ca20              # double 0.46292316387112642
	.quad	0x3fee841a497e15f0              # double 0.95362581590660334
	.quad	0x3feb4cce39ed2112              # double 0.85312568010070522
	.quad	0x3fd2594f3464b22a              # double 0.28670101276910265
	.quad	0x3fe75ed35534ff47              # double 0.73032538072582376
	.quad	0x3fb17d4744857c88              # double 0.06831784651648054
	.quad	0x3fd618aa52b0c6b6              # double 0.34525545192000651
	.quad	0x3fd2c30aa490af82              # double 0.29315439291780632
	.quad	0x3fefed1d87849312              # double 0.99769474476178943
	.quad	0x3fd7a9dbd806a07e              # double 0.36974235626485796
	.quad	0x3fe58c0071498484              # double 0.67334005476381309
	.quad	0x3fe219ef88caa9f2              # double 0.56566597668762442
	.quad	0x3fe862a8ed70a61a              # double 0.76204344153410664
	.quad	0x3fe79933a3eee9d1              # double 0.73745138185705106
	.quad	0x3fedcf074ce21dec              # double 0.93152203575385561
	.quad	0x3fdb8f2f27a92866              # double 0.4306142699539407
	.quad	0x3fbd02e8d8f1df80              # double 0.11332564636711417
	.quad	0x3f9868c33f59ae00              # double 0.023837137929531238
	.quad	0x3fcd9cbcf4239388              # double 0.23134576722000255
	.quad	0x3fe12547f382f161              # double 0.53580091057623858
	.quad	0x3fe00223fc267d97              # double 0.50026129959217058
	.quad	0x3feb767cb22b6db1              # double 0.85821375654943755
	.quad	0x3fd52b908a451746              # double 0.3307839727680072
	.quad	0x3fb3ec558a6468e8              # double 0.077824922835506904
	.quad	0x3fdbab1dfdd71732              # double 0.43231916226465039
	.quad	0x3fe06445875dc4ef              # double 0.51224018515327241
	.quad	0x3fe542925b480b39              # double 0.66437642887499415
	.quad	0x3fe9e65e7e8dae6c              # double 0.80937123029202728
	.quad	0x3fd8994fe057021e              # double 0.38435742290678998
	.quad	0x3fd0e7bdbc2c4b66              # double 0.26414435745498677
	.quad	0x3fed3ce738c647a0              # double 0.91368447388434859
	.quad	0x3fb77e1af9d21988              # double 0.091767965308554023
	.quad	0x3fe7fb5966d72b67              # double 0.74943227849994976
	.quad	0x3fc5ffe6ebbdabac              # double 0.171872010333883
	.quad	0x3fde870469090a4e              # double 0.47699079758982499
	.quad	0x3fefa79c56dc2bf0              # double 0.98921029057362198
	.quad	0x3fe90c69e1637a0e              # double 0.78276533147055871
	.quad	0x3fe182a7659e5382              # double 0.54719896170955473
	.quad	0x3fef0f338b62135c              # double 0.97060563300383817
	.quad	0x3fea9c9bfa407c49              # double 0.83161734464000248
	.quad	0x3fcf8b848c611814              # double 0.24644524435478898
	.quad	0x3fbd67d543f1d108              # double 0.11486561688235863
	.quad	0x3fd3b0abc93b6364              # double 0.30765814448891704
	.quad	0x3f9ba55fcb631760              # double 0.026998039997827461
	.quad	0x3fe1c7c1af830796              # double 0.55563434867530037
	.quad	0x3fd35b87e0cd1d02              # double 0.30246159508938331
	.quad	0x3fc007d4e4be8a2c              # double 0.12523900193362303
	.quad	0x3fddd1a87ad4c8f4              # double 0.46592151637300039
	.quad	0x3fe2e90aa980ceae              # double 0.59094746690830902
	.quad	0x3fde90feb5593adc              # double 0.47759978971309436
	.quad	0x3fe9dd3e96a555f9              # double 0.80825738356605747
	.quad	0x3fb6743e6c3354b8              # double 0.0877112402116208
	.quad	0x3fe71669dd8cdf7b              # double 0.72148602744617507
	.quad	0x3feaa6fd25d86f2c              # double 0.83288438216866245
	.quad	0x3fc18665e7b37264              # double 0.13691400350116389
	.quad	0x3fe935da15b48591              # double 0.78782371749200497
	.quad	0x3feadf8a630ff9b0              # double 0.83978766773343771
	.quad	0x3fe5d5fbe7cfdc02              # double 0.68237109447261468
	.quad	0x3fd853d147c175b8              # double 0.38011581427948782
	.quad	0x3fd52a7d82e4c314              # double 0.33071840078905379
	.quad	0x3fc6d310726278e0              # double 0.1783161695975144
	.quad	0x3fec7df53349af75              # double 0.89037570969729407
	.quad	0x3f71dfb51a39ab00              # double 0.0043637346567304558
	.quad	0x3fe252e1caf8caa2              # double 0.57261743205011251
	.quad	0x3fd30739478de40e              # double 0.29731590259285745
	.quad	0x3fb20736fec048a8              # double 0.070422589488119969
	.quad	0x3febaef5bfd924c9              # double 0.86510741682391157
	.quad	0x3fd1fb3c18366f6e              # double 0.28095915188327225
	.quad	0x3fd59f5084187658              # double 0.33784878635365123
	.quad	0x3fc6926081456b20              # double 0.17634207069462438
	.quad	0x3fd98d8a903be0e6              # double 0.39926399312345351
	.quad	0x3fed9b4b8d749fbf              # double 0.92520692470588262
	.quad	0x3fe1b5ee60f47e88              # double 0.55345839439901656
	.quad	0x3faba851858980c0              # double 0.054018542815130299
	.quad	0x3fe9017e9cd32eb5              # double 0.78143244390363142
	.quad	0x3fc2cc368badec64              # double 0.1468570882824195
	.quad	0x3fe870211fadc37f              # double 0.76368766963251733
	.quad	0x3fd369ca814e3360              # double 0.30333197238433307
	.quad	0x3fef14f3df20cf19              # double 0.97130769328802835
	.quad	0x3fc3b89b772d0614              # double 0.15407126731047127
	.quad	0x3fe5c8eb76ef88f4              # double 0.68077634076715166
	.quad	0x3fed715b71b19ad0              # double 0.92008754926504288
	.quad	0x3fd66820e251fa70              # double 0.35010549642166833
	.quad	0x3feeb8f40212ffbb              # double 0.96007728963012739
	.quad	0x3fe63db09a9530ea              # double 0.69503050033520464
	.quad	0x3fd5e3c99bb0da8a              # double 0.34202804760153838
	.quad	0x3fe1b03a07714656              # double 0.5527620454178741
	.quad	0x3fdba66f406ad754              # double 0.4320333603931108
	.quad	0x3fe68b8dc90b364f              # double 0.70453538195006071
	.quad	0x3fee0678d03e12a4              # double 0.93829003021581458
	.quad	0x3fed4204293bd982              # double 0.91430862477754737
	.quad	0x3fdc6fa001908910              # double 0.44431305077354555
	.quad	0x3fc496443c3a234c              # double 0.16083577099586888
	.quad	0x3fecc966ba7e8ef5              # double 0.89958511757546822
	.quad	0x3fe388ee93cdf487              # double 0.61046532505101048
	.quad	0x3fedb62e52c93cec              # double 0.92848888558537856
	.quad	0x3f9baa57e28148c0              # double 0.0270169956205073
	.quad	0x3fd148fb6ca854c2              # double 0.27007947550857747
	.quad	0x3fee545bd93f5be4              # double 0.94779770308639088
	.quad	0x3fc84fafead957d0              # double 0.18993185965763226
	.quad	0x3fe4bac2404bb14a              # double 0.64779770429371664
	.quad	0x3fe8e07e691f97e5              # double 0.77740402728954605
	.quad	0x3fed654db65c7d00              # double 0.91861615769803961
	.quad	0x3febe766c11f20af              # double 0.87199723929463413
	.quad	0x3fe91e7e65e55b30              # double 0.78497238065287966
	.quad	0x3fd65b6cc2cfe8f2              # double 0.34933012985824441
	.quad	0x3fb2085ff0ccb158              # double 0.07044028881927511
	.quad	0x3fe75c075513687e              # double 0.72998396507615815
	.quad	0x3fdb7af52f854ed0              # double 0.42937974587151206
	.quad	0x3fbb125ff65a97e0              # double 0.10574912800311109
	.quad	0x3fe186cfa38c9fa3              # double 0.54770643180107859
	.quad	0x3fdb2866c135a9fa              # double 0.42434090488555365
	.quad	0x3fbbf4a6c2397840              # double 0.109201834123696
	.quad	0x3fbd62c3ae258e70              # double 0.11478827478054554
	.quad	0x3fc89ddb1064e8cc              # double 0.19231737423417028
	.quad	0x3fcbdf26de927e00              # double 0.21774755351815145
	.quad	0x3fcf7f0a3d78f85c              # double 0.24606445314015246
	.quad	0x3fe8c2138e053d05              # double 0.77369096506473112
	.quad	0x3fd036dc982b0710              # double 0.25334849224246714
	.quad	0x3fed21ef0c3fb7c7              # double 0.91039230720866093
	.quad	0x3fb0fa0199831718              # double 0.066314792612584106
	.quad	0x3fe9bd56d54af9c3              # double 0.80436269434704177
	.quad	0x3fe00abf55c7010a              # double 0.50131193879499958
	.quad	0x3fdce63a316d1c64              # double 0.45155196024683719
	.quad	0x3fa147202639e5d0              # double 0.033745770136146214
	.quad	0x3f9a3fd65e8973a0              # double 0.025634145279002873
	.quad	0x3fe0579373d88352              # double 0.51069042802928721
	.quad	0x3fda9d1e1b2602ae              # double 0.41583969737261384
	.quad	0x3fe6ad64389c9f61              # double 0.70866595322602788
	.quad	0x3fde6dcccb28b3f2              # double 0.47545165862794569
	.quad	0x3fecd3c2d6a81036              # double 0.90084974217507496
	.quad	0x3fd93161c8c828a4              # double 0.39363903625111107
	.quad	0x3fd47d4fb6ec5da0              # double 0.32014839995960109
	.quad	0x3faba5c6bb607240              # double 0.05399914777101289
	.quad	0x3fed0c466f5c11cc              # double 0.9077484297745797
	.quad	0x3feabb688248b730              # double 0.83537698217489798
	.quad	0x3fe9010c24517b44              # double 0.78137786000647979
	.quad	0x3fe1f489d8a470a0              # double 0.56110088646848411
	.quad	0x3feb45196a5546f3              # double 0.85218497055231379
	.quad	0x3fb72049a10bf4c0              # double 0.0903364198856762
	.quad	0x3fce482c6c4e429c              # double 0.23657756126751373
	.quad	0x3fe6e78ed596bf89              # double 0.71576635090421903
	.quad	0x3fea4b7060398ac6              # double 0.82170885843182684
	.quad	0x3fc39030c9301054              # double 0.1528378469812447
	.quad	0x3fe0cc6363bf1863              # double 0.5249497364209329
	.quad	0x3fec654ad2781658              # double 0.88736477954143833
	.quad	0x3fc9fd86cf619d84              # double 0.20304951787987247
	.quad	0x3f836aaa2f1ab000              # double 0.009480790674693651
	.quad	0x3fca1e4479700ed8              # double 0.2040486901242875
	.quad	0x3fa184886fd358b0              # double 0.034214271212179681
	.quad	0x3fb75ad77be16288              # double 0.09122988485740724
	.quad	0x3fe29404f2f6ac55              # double 0.58056876615354247
	.quad	0x3fe60d97a8959533              # double 0.68915923048613192
	.quad	0x3fb65eb148e4c890              # double 0.08738239316588392
	.quad	0x3fcdaa0081cb583c              # double 0.23175054872143785
	.quad	0x3fe5a877e4a82a0e              # double 0.67681498202847634
	.quad	0x3fef3c7859714b9d              # double 0.97613160580873492
	.quad	0x3fd0da9325d4b7d0              # double 0.26334074682642683
	.quad	0x3feb0ce2f1ecb77d              # double 0.84532305956757592
	.quad	0x3feec4bce019c62f              # double 0.96151584405578727
	.quad	0x3fe428c94b8e8506              # double 0.62997879750415176
	.quad	0x3fbef69c136e4b38              # double 0.12095046495805384
	.quad	0x3fcc84e4261fd948              # double 0.22280551778357904
	.quad	0x3fe5105d97da3ffd              # double 0.65824775370310784
	.quad	0x3fe23267d0ccbead              # double 0.56865301877220065
	.quad	0x3fca38f82b639b5c              # double 0.20486356848342779
	.quad	0x3fee665ac55f1ba7              # double 0.94999445485233458
	.quad	0x3fe3f731997d77eb              # double 0.62392501810586276
	.quad	0x3feab7118a4ecdde              # double 0.83484723103759584
	.quad	0x3fd1fc8cfb61a73e              # double 0.28103947209330105
	.quad	0x3fcb6f64e841b55c              # double 0.21433698025377168
	.quad	0x3fdd753788aee532              # double 0.46027935359923611
	.quad	0x3fdc81a1c7fb2288              # double 0.4454121067943011
	.quad	0x3fe331994393ec2d              # double 0.59980452727120837
	.quad	0x3fe3a45f6a8cfc14              # double 0.61381502924621367
	.quad	0x3fe0cd6b6f4a8dee              # double 0.52507564293449405
	.quad	0x3fd0e71f3ff3ebce              # double 0.26410657163040419
	.quad	0x3fd3e99afa6a62b8              # double 0.31113314108510393
	.quad	0x3fe4967a141d09df              # double 0.64336875847248709
	.quad	0x3fd04ab4e098860c              # double 0.25455972607787269
	.quad	0x3fee7f5febcd49c3              # double 0.95304866843280711
	.quad	0x3fe2b0577312d573              # double 0.58402607417398966
	.quad	0x3fe214659b09e1ab              # double 0.56498985558487413
	.quad	0x3fcbf3b5ce080094              # double 0.2183749443065649
	.quad	0x3fe2f6e7d3717c6a              # double 0.59263984010239068
	.quad	0x3fd5725877165684              # double 0.33510409955611231
	.quad	0x3fef66febcb12538              # double 0.98132263997937396
	.quad	0x3fdcc4fd15ea8a38              # double 0.44952323093653801
	.quad	0x3fe409ba0ee82bd8              # double 0.62618735229022615
	.quad	0x3fa04ac692fc8be0              # double 0.031820493166627051
	.quad	0x3fe90239072a130d              # double 0.7815213336876653
	.quad	0x3fdc7461be245f52              # double 0.44460338181078385
	.quad	0x3fdbca341db845fe              # double 0.43421652700735069
	.quad	0x3fdbe1f90ad9d37c              # double 0.43566728648811881
	.quad	0x3fe5ed4917d0a0c1              # double 0.68521551753385535
	.quad	0x3fe8eaa83a6b6bd8              # double 0.77864467058258935
	.quad	0x3fc4690bbe07b624              # double 0.15945574549498176
	.quad	0x3fd3fd195bd62e8e              # double 0.31232294052527088
	.quad	0x3fe5165d6358f708              # double 0.65898007777988798
	.quad	0x3fde5ecb4ffb631c              # double 0.47453577814808212
	.quad	0x3fd16aa297cd8310              # double 0.27213349174967139
	.quad	0x3fd404b55bb9fb16              # double 0.3127873798147659
	.quad	0x3fc091e4aa02eac4              # double 0.12945230771386751
	.quad	0x3fc8a37da25c5328              # double 0.19248934200063528
	.quad	0x3fded125c09f0e9a              # double 0.48151534853625721
	.quad	0x3fef15d3e832b39d              # double 0.97141452170545827
	.quad	0x3fefb0a8f0c5d1b8              # double 0.99031493211673815
	.quad	0x3feef124284daf2b              # double 0.96693618652122859
	.quad	0x3fe62ccaa78015c0              # double 0.6929677268496377
	.quad	0x3fd485ed03f135f4              # double 0.32067418465598441
	.quad	0x3fe1795502a56462              # double 0.54606104389962362
	.quad	0x3fefa64d80d5bdab              # double 0.9890506283099304
	.quad	0x3fefdb8d3a84c5e5              # double 0.9955507414762762
	.quad	0x3fa66ced23a9f0f0              # double 0.043799791911597441
	.quad	0x3fea36a4ebb0ac69              # double 0.81917043717602411
	.quad	0x3feb8e47954d4869              # double 0.86111811790966641
	.quad	0x3fdeaf43490258e0              # double 0.4794471943836367
	.quad	0x3fec24b145ac8d12              # double 0.87947906120499142
	.quad	0x3fdd0d892f96dd8a              # double 0.453951164697593
	.quad	0x3febb267f84effff              # double 0.86552809236309247
	.quad	0x3fe645205c223d18              # double 0.69593828196403518
	.quad	0x3fe16d5641b9bf3c              # double 0.54459679448152754
	.quad	0x3fe94ed524c033a0              # double 0.79087311914337377
	.quad	0x3feac26af1c60b1b              # double 0.83623263570220574
	.quad	0x3fab76754b50fce0              # double 0.053638139194384982
	.quad	0x3fd314cbec9f62d0              # double 0.29814432246852807
	.quad	0x3fdcf86140ce3b80              # double 0.45265990570708681
	.quad	0x3fe8be97e7125c90              # double 0.77326579219051617
	.quad	0x3fe7e120330bc82c              # double 0.74623117418218987
	.quad	0x3fe3a2882a74b09f              # double 0.61359031955864285
	.quad	0x3fdca097f2bb8e74              # double 0.44730185226783381
	.quad	0x3fe70dad82cbdd98              # double 0.72041965051805601
	.quad	0x3fecea54bceee892              # double 0.90360485936186508
	.quad	0x3fd9f4ed5429fe40              # double 0.40557416171211358
	.quad	0x3fe484f798a0963b              # double 0.64123134431856188
	.quad	0x3fd80ee8c9d1e900              # double 0.37590999325733776
	.quad	0x3fe61c52b8baba69              # double 0.69095741348230633
	.quad	0x3feff897bfba6df3              # double 0.99909579703256523
	.quad	0x3fd890a1e1ae4cba              # double 0.3838276580729133
	.quad	0x3fe3abac56cdea16              # double 0.6147062011144182
	.quad	0x3fe4829f85dc4f6b              # double 0.64094520706792701
	.quad	0x3fb24d4bd773c580              # double 0.071491947270052592
	.quad	0x3fe211eee277549f              # double 0.5646891043822001
	.quad	0x3feda773e44e40be              # double 0.92669100371315216
	.quad	0x3fe31bb9db78d302              # double 0.59713452211016738
	.quad	0x3fee9166748d6832              # double 0.95524904979834546
	.quad	0x3fc98155af1ddaac              # double 0.19925948191276655
	.quad	0x3fef69767ce02618              # double 0.98162388219606366
	.quad	0x3fe5a259433ba4c8              # double 0.67606795436326994
	.quad	0x3feab7640b8b6550              # double 0.83488657240665454
	.quad	0x3fefbe12b2a435cd              # double 0.99195227518947037
	.quad	0x3f9e68d7f98dc420              # double 0.029696821791223127
	.quad	0x3fdaf254d17dbdc2              # double 0.4210407300770066
	.quad	0x3f8668583b4c01c0              # double 0.010941209134672003
	.quad	0x3fc26c9cfdf3351c              # double 0.1439396133413674
	.quad	0x3fd92cd57f08ae88              # double 0.39336144834189968
	.quad	0x3fdeacc79940a9e6              # double 0.47929563489984017
	.quad	0x3fee1eb15da49852              # double 0.94124668397558708
	.quad	0x3fdd97f4d169cb4c              # double 0.46239967775834567
	.quad	0x3fe457fe52c0e4a2              # double 0.63574138796606783
	.quad	0x3fe7ea413db5e911              # double 0.74734556248520978
	.quad	0x3fde30348d323246              # double 0.47169221676520967
	.quad	0x3fbf9df2f2015fd8              # double 0.12350386055311391
	.quad	0x3fed1ca6de554181              # double 0.90974753784580298
	.quad	0x3fe1544198c1d568              # double 0.54153518519767108
	.quad	0x3fdb7dd60136aa66              # double 0.42955541723737267
	.quad	0x3fdc554779f6c240              # double 0.44270502958810098
	.quad	0x3fe551dcbd2dc919              # double 0.66624295186037152
	.quad	0x3fdd176e25360a60              # double 0.45455506929298473
	.quad	0x3f97e61dbbb301e0              # double 0.023338760930302516
	.quad	0x3fefa2d080e0c6ed              # double 0.98862481280795366
	.quad	0x3feb88edbed008d7              # double 0.86046492832272292
	.quad	0x3fea233dc24635e8              # double 0.81680190986815848
	.quad	0x3fd74580541264da              # double 0.36361702165738807
	.quad	0x3fdf01184ccd45ee              # double 0.48444182872944352
	.quad	0x3fec189a8479f45c              # double 0.87800336717885896
	.quad	0x3fe1cf88af1f388e              # double 0.55658373073107881
	.quad	0x3feba6ffd09a4711              # double 0.86413565390305014
	.quad	0x3fe7c5f88e06ef50              # double 0.74291637172380298
	.quad	0x3fe81178a059ee7e              # double 0.75213271444904684
	.quad	0x3fb2f676dc7fdeb8              # double 0.074073246796497183
	.quad	0x3fe4eceb3bc67172              # double 0.65392076182210546
	.quad	0x3fb334cd917008e0              # double 0.075024459845767222
	.quad	0x3fe058799481823d              # double 0.51080016140992479
	.quad	0x3fe7983ee0462674              # double 0.73733466914673196
	.quad	0x3fe5a7b58c020ac1              # double 0.67672231049831322
	.quad	0x3fe59ddb21d839c4              # double 0.67551952944068505
	.quad	0x3fe25bd8228b9076              # double 0.57371145960907088
	.quad	0x3fe8c545fbad26e5              # double 0.77408122211019459
	.quad	0x3fb380db148acee8              # double 0.076184933200064031
	.quad	0x3fd9f6223def21fc              # double 0.40564781234982639
	.quad	0x3fdf4cd57e12c90e              # double 0.48906457244733381
	.quad	0x3fdc20eac849ba74              # double 0.4395091014802468
	.quad	0x3fc77d7294dc3c4c              # double 0.18351585644311041
	.quad	0x3fe008a53f4255ce              # double 0.50105535846039984
	.quad	0x3fde2c746a7a5976              # double 0.47146330259547342
	.quad	0x3fe89becd85d1b1e              # double 0.76903383501562295
	.quad	0x3fed55a0693c5e22              # double 0.91670246652478604
	.quad	0x3fe977b1d2636ad6              # double 0.79586115924333956
	.quad	0x3fe24f8b07f3a0fc              # double 0.57220984986363943
	.quad	0x3fd409fd119c4b96              # double 0.3131096527078453
	.quad	0x3fe96a0d5310f255              # double 0.79419580673090684
	.quad	0x3fdafded0cecc698              # double 0.42174841177175315
	.quad	0x3fe21da54caff918              # double 0.56611886003500711
	.quad	0x3fc92c1db6e32b04              # double 0.1966588156704675
	.quad	0x3fd7a4872763b9b0              # double 0.3694169888175578
	.quad	0x3fcb5f636bd0895c              # double 0.21384852184662406
	.quad	0x3fdec62c3ee16910              # double 0.48084550991701835
	.quad	0x3fd37bc65268c81a              # double 0.30442960784705664
	.quad	0x3feec72357327848              # double 0.96180884390538157
	.quad	0x3fc2fdb1c478aa20              # double 0.14836713879897534
	.quad	0x3fbd84946a053f78              # double 0.11530425632849794
	.quad	0x3fde2216e87c1636              # double 0.47083065703950255
	.quad	0x3fe9c1ea660c77b0              # double 0.80492134028803797
	.quad	0x3fee59b488f22d61              # double 0.94845034358278835
	.quad	0x3fd868123cd1136a              # double 0.38135200442439177
	.quad	0x3fdf29e19f31dff6              # double 0.48693123384828085
	.quad	0x3fef16afd1977e7c              # double 0.97151938377278623
	.quad	0x3fe0f2b8ee60eea8              # double 0.52962919767692984
	.quad	0x3fd3bd835fe382bc              # double 0.30844196666843593
	.quad	0x3fefacdd6e9ac927              # double 0.98985168077914387
	.quad	0x3fe035a9baacd11c              # double 0.50655065975164204
	.quad	0x3fec0931c943ac06              # double 0.87612237271730531
	.quad	0x3fe08489b411f5f5              # double 0.51617894334748249
	.quad	0x3fc8a05983d2facc              # double 0.19239348351216845
	.quad	0x3fdd26a1f51ee81a              # double 0.45548294961520386
	.quad	0x3fd029ef816c74c4              # double 0.25255954398182845
	.quad	0x3fc8cb66db6fe29c              # double 0.19370732989024908
	.quad	0x3fd628374fdffbee              # double 0.34620459366118339
	.quad	0x3fe6c7077375c35b              # double 0.71179554510863896
	.quad	0x3fe98032f9830494              # double 0.79689930660983288
	.quad	0x3fa842e3ee338030              # double 0.047385332896510923
	.quad	0x3fe3b58b2432eeee              # double 0.61591107435330428
	.quad	0x3fd29b56e4ab6484              # double 0.29073116618162254
	.quad	0x3fb3dbf0a55219d0              # double 0.077574768411160066
	.quad	0x3fba88cf154c56f8              # double 0.10365003843284259
	.quad	0x3fe9ad0bcacbfe15              # double 0.80237378700980122
	.quad	0x3fe6fef1b862395a              # double 0.71862112057150829
	.quad	0x3fded296d007c524              # double 0.48160333934272814
	.quad	0x3fbb0a205f514aa0              # double 0.10562326743210315
	.quad	0x3fdd7d8e91e63fb6              # double 0.46078838584889625
	.quad	0x3fec8f9cfbb02ff4              # double 0.89253091009004359
	.quad	0x3fdde30e14e757b8              # double 0.46698333779692858
	.quad	0x3feba4c713eebcfd              # double 0.86386445897178954
	.quad	0x3feddbe86030eb2b              # double 0.93309420382806729
	.quad	0x3fe7d561cdf42fa4              # double 0.74479761338578898
	.quad	0x3fc84a197360eb64              # double 0.18976133474083234
	.quad	0x3fdcd8f32b546b86              # double 0.45074156981871061
	.quad	0x3fe4dbf0508c8c5e              # double 0.65184798938970423
	.quad	0x3fd155b2830b0dae              # double 0.27085554883179952
	.quad	0x3fdfa42c93d13804              # double 0.49439539370803254
	.quad	0x3fe4831c2e98b484              # double 0.64100464917068267
	.quad	0x3fcda754fadcd56c              # double 0.23166906594421321
	.quad	0x3fe1cdd597c5d119              # double 0.55637626307592136
	.quad	0x3fefcd48fa6df3dd              # double 0.99380921279918832
	.quad	0x3fe92feca4ef8208              # double 0.78710014547328999
	.quad	0x3fe4ac8fdd119e8b              # double 0.64606469323639837
	.quad	0x3fdb5ac6ca2ca46c              # double 0.42741555923072982
	.quad	0x3feba7e9b1b412df              # double 0.86424717624376146
	.quad	0x3fdd20d004f84360              # double 0.45512772069291962
	.quad	0x3fef08a707ec0600              # double 0.96980620906123249
	.quad	0x3fe4903615ad0df5              # double 0.64260391458122845
	.quad	0x3fb80f81677d6bd8              # double 0.093986594930739797
	.quad	0x3fd5906e9d0a8118              # double 0.33694043479955971
	.quad	0x3fe9adf11ece9b2e              # double 0.80248313920023917
	.quad	0x3fd2f0927b87a428              # double 0.29593336165868545
	.quad	0x3fe912e79d600636              # double 0.78355770814250181
	.quad	0x3fee73dd974b387a              # double 0.95164374875618241
	.quad	0x3fc3bf28ef9388c0              # double 0.15427123735486781
	.quad	0x3fe6b5f6776024f5              # double 0.70971225085773304
	.quad	0x3fe10ed892647f74              # double 0.53306225387858186
	.quad	0x3fc7a9bf564b5530              # double 0.18486777986132941
	.quad	0x3fe13d5974bff590              # double 0.5387389450331046
	.quad	0x3fd40553401ffdd0              # double 0.31282502424434444
	.quad	0x3fb227c13c868ba8              # double 0.070919110562086218
	.quad	0x3fd72ede50eb43c6              # double 0.36223562147375465
	.quad	0x3fd5f0bd72ef2b5c              # double 0.34281860565231681
	.quad	0x3fb034b0dc1b5a58              # double 0.063303998696349395
	.quad	0x3fd9cfe735a04bf4              # double 0.40331440197877488
	.quad	0x3fe49810794e04b8              # double 0.64356254284225312
	.quad	0x3feb9a8e8991fe0a              # double 0.86261679524608437
	.quad	0x3fd188e395b55e20              # double 0.27398004169433143
	.quad	0x3fea87a3d2b77c7c              # double 0.82905760913480675
	.quad	0x3fc57c1afe550330              # double 0.16784989756163204
	.quad	0x3fe0e9a77bd31ceb              # double 0.52852224525932223
	.quad	0x3fea865afee6303c              # double 0.82890081200594734
	.quad	0x3fd6852b09026e08              # double 0.35187793617089413
	.quad	0x3fcb9b13991d2e20              # double 0.21567006088513185
	.quad	0x3fe86697b17d3fbe              # double 0.76252350488538645
	.quad	0x3fe18ae72e6db1c6              # double 0.54820593898835379
	.quad	0x3feeedf9b5de300a              # double 0.96654973527029253
	.quad	0x3fd50251b1144bb0              # double 0.32826654713533809
	.quad	0x3fe9e609ddf8c4de              # double 0.8093308768640346
	.quad	0x3fd7bba783cf4c58              # double 0.37082851287886376
	.quad	0x3fcc62dca5ba9054              # double 0.22176702587342112
	.quad	0x3fd97087d21e002c              # double 0.39749331969506119
	.quad	0x3fdc46c351637e78              # double 0.44181902835951048
	.quad	0x3fc5067104e34670              # double 0.16425907839452547
	.quad	0x3fe65e08a0efea8f              # double 0.69897872384110993
	.quad	0x3fd38d9f94e40422              # double 0.30551900425058609
	.quad	0x3fd5b6cc7f2a2004              # double 0.33928215425885377
	.quad	0x3fe176f177346547              # double 0.54576943666612798
	.quad	0x3fc2dfeb09f627b4              # double 0.14745843874362452
	.quad	0x3fd98b7e49811684              # double 0.39913899591588398
	.quad	0x3fec8fdb4eb8680c              # double 0.89256062865320151
	.quad	0x3fd8a5466a6a0b60              # double 0.38508758918776742
	.quad	0x3fefe18914d900fd              # double 0.9962811858349877
	.quad	0x3fa1b786c7631c30              # double 0.034603320922137804
	.quad	0x3fc3ec0162660f0c              # double 0.15563981346723954
	.quad	0x3fe257fbdd53c779              # double 0.5732402155683608
	.quad	0x3feccf536d8f5092              # double 0.90030833624270401
	.quad	0x3fde03b1f482f966              # double 0.46897553327644059
	.quad	0x3fe23c16013ea9ef              # double 0.56983471148606479
	.quad	0x3fe8c83884619e41              # double 0.77444101196028481
	.quad	0x3fece78aaa82ad51              # double 0.90326436331580784
	.quad	0x3fe77af3565283fc              # double 0.73375861034230594
	.quad	0x3fe5f2d17cdaa546              # double 0.68589090714991907
	.quad	0x3fed19a1ebe672b3              # double 0.90937896799331097
	.quad	0x3fec759c534bdc43              # double 0.88935676831068411
	.quad	0x3fc83dfbd851ea80              # double 0.18939159452914467
	.quad	0x3fc3d15e7c71ada0              # double 0.15482693745012188
	.quad	0x3feb531efa8ee760              # double 0.85389660775329545
	.quad	0x3fdb9dbbcc022e58              # double 0.43150229380328176
	.quad	0x3fe66d4e5fdce4bd              # double 0.70084303591934083
	.quad	0x3fe8b9ca1923f76f              # double 0.77267937574627676
	.quad	0x3fca29285dc61634              # double 0.20438103274152442
	.quad	0x3fee607c6e2031d8              # double 0.94927808293283089
	.quad	0x3fe2bcf8abea583f              # double 0.58556779458263708
	.quad	0x3fbbac8911873588              # double 0.10810143163617714
	.quad	0x3fcb00c94658df4c              # double 0.21096149382514751
	.quad	0x3f7a6cbcb1c5fe00              # double 0.0064513560176915341
	.quad	0x3fb082a21d2b9640              # double 0.064493305322309347
	.quad	0x3fd1c82b481e9962              # double 0.2778423504154458
	.quad	0x3f7b742d23a9ca80              # double 0.0067025912527350906
	.quad	0x3f99916baeeb7ee0              # double 0.024968798209441867
	.quad	0x3fdefb866af3f4a2              # double 0.48410187191604781
	.quad	0x3fe52592619d75cd              # double 0.66083640160985058
	.quad	0x3fe9e240ef61a2e0              # double 0.80886885408571274
	.quad	0x3fe8d26f5eac2925              # double 0.77568787089083868
	.quad	0x3fe110465362c47c              # double 0.53323665891924987
	.quad	0x3fec415ed8b75cb1              # double 0.88297979667085802
	.quad	0x3f98ba3fbe7b2960              # double 0.024147983552020746
	.quad	0x3fefaefaf840d366              # double 0.99010990607221738
	.quad	0x3fe19bcbf24d6fb4              # double 0.55026814770416488
	.quad	0x3fe4dd91b300a068              # double 0.65204701386848019
	.quad	0x3fd61ff4194ecee0              # double 0.34570028754681736
	.quad	0x3fb7837e50a99580              # double 0.091850180333116426
	.quad	0x3fc5df4be4487844              # double 0.17087696692118659
	.quad	0x3febda880b8456aa              # double 0.87042619943050181
	.quad	0x3fef5514cb18e95b              # double 0.9791358916038847
	.quad	0x3fecbbfc808d92de              # double 0.89794755085003053
	.quad	0x3fcfc9ae8f0b8fa0              # double 0.24834234223010032
	.quad	0x3feac46e83f74922              # double 0.83647847914315698
	.quad	0x3fee5e59fbcc3e92              # double 0.94901751689208624
	.quad	0x3fe4c075909a9b4e              # double 0.64849355929332275
	.quad	0x3febf5450eec7a5d              # double 0.87369015612405188
	.quad	0x3fd5742f4df1c130              # double 0.33521635638955427
	.quad	0x3fd2fb62d85d9c1c              # double 0.29659339074572855
	.quad	0x3fea446b5e16e779              # double 0.82085197808122168
	.quad	0x3fd9b48fab486e58              # double 0.40164558150147434
	.quad	0x3feb84c5152510d7              # double 0.8599572575554032
	.quad	0x3fe5774ae410d47b              # double 0.67081207794275544
	.quad	0x3fd3f10b652d2850              # double 0.31158718948848207
	.quad	0x3fd3387d9b28c3c2              # double 0.3003229155756878
	.quad	0x3fd90d8d3eb12334              # double 0.39145213243732546
	.quad	0x3fe07c35efc004e4              # double 0.51516243768869829
	.quad	0x3f888a9a427268c0              # double 0.011983113434599679
	.quad	0x3fefc1323c6c2226              # double 0.99233352471589309
	.quad	0x3fa26ec639445460              # double 0.036001390925016308
	.quad	0x3fd94ebfa6fb432c              # double 0.39543143564974303
	.quad	0x3fd7a9025eb1ffe0              # double 0.36969050643528867
	.quad	0x3feb90ced91941fa              # double 0.86142675783236133
	.quad	0x3fe53a49c397d653              # double 0.66336525155811399
	.quad	0x3fd038753c5b91b6              # double 0.25344591993623611
	.quad	0x3fe8ff8a003e5c33              # double 0.78119373366906186
	.quad	0x3feb1234b3dbebee              # double 0.84597239617084852
	.quad	0x3fd7ae746b4270f2              # double 0.37002287363590292
	.quad	0x3fe1d7a4a1d1c7bb              # double 0.55757361989366616
	.quad	0x3fe5ee09f5569c0a              # double 0.68530748288765264
	.quad	0x3fd27bb0744bc8c2              # double 0.28879939419779188
	.quad	0x3fc400305f331294              # double 0.1562557663766212
	.quad	0x3fe34bb67edbf4ad              # double 0.60299229409397059
	.quad	0x3fef79a4c38cb6dd              # double 0.98359907334608076
	.quad	0x3fed5360901fbb2e              # double 0.91642788075646364
	.quad	0x3fee727d93cbdc1c              # double 0.9514758955618876
	.quad	0x3fe0e21847a97da4              # double 0.52759946819781023
	.quad	0x3fd3e464d5f0a934              # double 0.31081505673013798
	.quad	0x3fe4b4d58a5c900e              # double 0.64707448028321024
	.quad	0x3fd490fa80c94426              # double 0.32134878708626713
	.quad	0x3fee794aa2567eb6              # double 0.9523060961400549
	.quad	0x3fc503ca5db71b30              # double 0.16417817665043222
	.quad	0x3fb66fd8c2118f88              # double 0.087644145374325189
	.quad	0x3fe90f68c4db6b46              # double 0.78313101242688599
	.quad	0x3fea9f39262cdb73              # double 0.83193643051241251
	.quad	0x3fe96a3389937fe2              # double 0.79421402807565422
	.quad	0x3fd70a11e0659946              # double 0.35998961366421545
	.quad	0x3fe56bd98660e23c              # double 0.66941524740020197
	.quad	0x3feb5168993dc604              # double 0.85368757181112231
	.quad	0x3fefc5006588f0ac              # double 0.99279804068603061
	.quad	0x3fbbb17eb9c1ad00              # double 0.10817710909912037
	.quad	0x3fefb177721dd7a8              # double 0.99041340149300527
	.quad	0x3fe01595bc1e56a3              # double 0.50263487569710141
	.quad	0x3fecdbe23c31c887              # double 0.90184127575618411
	.quad	0x3fe071ddeb70c8ec              # double 0.51389976486669076
	.quad	0x3fed240d80ee3c9d              # double 0.91065097028503639
	.quad	0x3fceed1cd86c3e1c              # double 0.24161110465546265
	.quad	0x3fe5866e3e3e1b0a              # double 0.67265998989827946
	.quad	0x3fbace2325d48248              # double 0.10470790551745168
	.quad	0x3febd90cb47c707a              # double 0.87024531603994082
	.quad	0x3fb4d4a3556f1c68              # double 0.08136959873000793
	.quad	0x3feab5566f72af39              # double 0.83463594214615633
	.quad	0x3fe71a2ca3c769d6              # double 0.72194511402204387
	.quad	0x3fb929b413716ef0              # double 0.09829259371457133
	.quad	0x3fbc9d73b61ed598              # double 0.11177752682018249
	.quad	0x3fe75f68aefbc266              # double 0.73039659668399959
	.quad	0x3f8ab2d67456d740              # double 0.013036418366805358
	.quad	0x3fe382818bf75b4d              # double 0.6096809133258404
	.quad	0x3fd722d50702855c              # double 0.36150098499827776
	.quad	0x3fe69d80082dae96              # double 0.70672608945229132
	.quad	0x3fce44b17c160260              # double 0.23647135313878476
	.quad	0x3fc647248c093d0c              # double 0.17404610479068372
	.quad	0x3fe18ec9b348f24e              # double 0.5486801625880362
	.quad	0x3fa6fd458a1c1f50              # double 0.044901059254753961
	.quad	0x3faa51ce85446c70              # double 0.051405385749796362
	.quad	0x3fe8223d23b93723              # double 0.75417954423184985
	.quad	0x3fe74ec6dc8af6a1              # double 0.72836630892534882
	.quad	0x3fe32ff0cbc475c7              # double 0.59960212515186917
	.quad	0x3fdd09637d785c7a              # double 0.45369803669877451
	.quad	0x3fe48adff5258188              # double 0.64195249443223279
	.quad	0x3fd18c693885e906              # double 0.27419500846703249
	.quad	0x3fe358030652fef4              # double 0.60449362979122023
	.quad	0x3fe914a63ee2b97c              # double 0.78377067835189917
	.quad	0x3fd05966ebf0d4c6              # double 0.255456667338262
	.quad	0x3fd65aeb70e4aa1c              # double 0.34929929756859379
	.quad	0x3fe88d34ac4b1a05              # double 0.76723703051612857
	.quad	0x3fb8b6b70bc38158              # double 0.096538009998316965
	.quad	0x3fd1dd87b4f72f5c              # double 0.27914612457674592
	.quad	0x3fedd72156a6dcb9              # double 0.93251101421528582
	.quad	0x3fdfc72b566c71ee              # double 0.49653132858091353
	.quad	0x3fd668e26290f4ea              # double 0.35015163064583865
	.quad	0x3fefebb8c9fbdcf2              # double 0.99752463769882938
	.quad	0x3fbda3cf3c7f4770              # double 0.11578078486425425
	.quad	0x3fe6671ce0a9cc41              # double 0.7000870120958852
	.quad	0x3feda0ae4f92a6c2              # double 0.92586436788152349
	.quad	0x3fef64c07359bee6              # double 0.98104879884155305
	.quad	0x3fd8b9f80489a7b8              # double 0.38635063593994401
	.quad	0x3fee016741755796              # double 0.937671306465506
	.quad	0x3fea16095b0c567c              # double 0.81519000799990193
	.quad	0x3fe6699a68bece63              # double 0.70039101083825661
	.quad	0x3fc53445b2aefbcc              # double 0.16565772270948143
	.quad	0x3fe5dbd133115cbb              # double 0.6830831525247939
	.quad	0x3fe6ef756d608e3f              # double 0.71673079836586584
	.quad	0x3fd90df5437fffea              # double 0.39147693244740245
	.quad	0x3fd985740320be32              # double 0.39877033524951166
	.quad	0x3fe4681445d16d67              # double 0.6377049792894639
	.quad	0x3fe575df599d1863              # double 0.67063872816721604
	.quad	0x3fd0c6bcb31b2634              # double 0.26212995043588028
	.quad	0x3fd65ab8781d6dbe              # double 0.34928714494682456
	.quad	0x3fe0eba33640e1b1              # double 0.52876434894920099
	.quad	0x3fe1441da438d6b6              # double 0.53956491541494844
	.quad	0x3fdee2a2d11d5abe              # double 0.48258276387552346
	.quad	0x3feacadd7b8db80a              # double 0.83726381427345697
	.quad	0x3fe72bf19c298dd1              # double 0.72411423206761516
	.quad	0x3fe3960dea891073              # double 0.61206718261429527
	.quad	0x3fdcbd72b8deb4c4              # double 0.44906299642282144
	.quad	0x3fd9e5da53efe03c              # double 0.40465410420393133
	.quad	0x3fcb0e9af75ca89c              # double 0.21138321951122385
	.quad	0x3fe674678de1d7f8              # double 0.70170953475348963
	.quad	0x3fbf03a3cb094258              # double 0.1211492891973277
	.quad	0x3fb23a8746ad8a60              # double 0.071205572848648924
	.quad	0x3fe2cbcfb22165fd              # double 0.58737931052308989
	.quad	0x3f9e382ec88bba20              # double 0.029511195173592353
	.quad	0x3fc688b77624ba80              # double 0.17604726093982848
	.quad	0x3fe44c28934c6985              # double 0.63429669160113689
	.quad	0x3fe1b0eaa7bd8484              # double 0.55284626733568176
	.quad	0x3fea6a72adc633f1              # double 0.82549413624076184
	.quad	0x3fe713d1e4bc5709              # double 0.7211694209570122
	.quad	0x3fecdf2f6818b8d2              # double 0.90224428492890696
	.quad	0x3fe74507da461d34              # double 0.72717659598939699
	.quad	0x3f88807cd42bd040              # double 0.011963820671987091
	.quad	0x3fdb4cac757e233e              # double 0.42655478929423285
	.quad	0x3fe9bfe8f5ab068e              # double 0.80467651350063973
	.quad	0x3fe384198e57bdcc              # double 0.60987546731296893
	.quad	0x3fc1aacd69681170              # double 0.13802497526934188
	.quad	0x3f96fd4cc705cea0              # double 0.022450637481098767
	.quad	0x3fe3f6d6b8c1522c              # double 0.62388168416015821
	.quad	0x3feba776e6eaf661              # double 0.86419243909012888
	.quad	0x3fe04e333ca0a644              # double 0.50954591599765608
	.quad	0x3fcad01dce20bcec              # double 0.20947620930517219
	.quad	0x3fa3eabe17faaa20              # double 0.038900318553107605
	.quad	0x3fef45dabfa729f9              # double 0.97727715904448964
	.quad	0x3fc7d11cd9d45b6c              # double 0.18606911312300711
	.quad	0x3fdf0a75f68ca3f0              # double 0.48501347615325496
	.quad	0x3fdcb381c2e58b42              # double 0.4484562304771097
	.quad	0x3fc7a740fd0c352c              # double 0.18479168277591762
	.quad	0x3fec26de99837b95              # double 0.87974481566549179
	.quad	0x3fe87ae1f58fad67              # double 0.76500032387904759
	.quad	0x3fd1d3a68b7824d2              # double 0.27854312534379944
	.quad	0x3fdfe533a9859f8c              # double 0.49836436800841777
	.quad	0x3fd19d0c5702f43a              # double 0.27521046159000984
	.quad	0x3fd4d8d12e33453a              # double 0.32573346626039135
	.quad	0x3feeeb7b03565f8c              # double 0.96624518062434239
	.quad	0x3fd339a97b8bf866              # double 0.30039441170800385
	.quad	0x3feec59711ff8879              # double 0.96161988749760418
	.quad	0x3fe578d8ae663220              # double 0.67100175917000016
	.quad	0x3fe76d450889ca84              # double 0.73208858173013924
	.quad	0x3fcd749857129978              # double 0.23012069942087598
	.quad	0x3fb71d214af3ed30              # double 0.09028823928740759
	.quad	0x3feb2b6e71710699              # double 0.84905168682617493
	.quad	0x3f8e14f33171fd40              # double 0.014688396402788073
	.quad	0x3fdc3064385c121c              # double 0.44045358184692573
	.quad	0x3fe3db4d14ed048b              # double 0.6205201538761157
	.quad	0x3fd92caf53a252c6              # double 0.39335234801664531
	.quad	0x3fea5f1b90ddf2e8              # double 0.82410982412656342
	.quad	0x3fc101a8b94953a4              # double 0.13286313101948821
	.quad	0x3feec24b447f1925              # double 0.96121753099649664
	.quad	0x3fa3ea02dde59380              # double 0.038894738757142555
	.quad	0x3fbe8ec0095a8b00              # double 0.11936569431649602
	.quad	0x3fe07ad032d79e57              # double 0.51499185495499489
	.quad	0x3fe91b06bf9f347c              # double 0.78454911638404167
	.quad	0x3fda80debf92e9bc              # double 0.41411560734163877
	.quad	0x3fd8c89402f61f60              # double 0.38724231995774083
	.quad	0x3fdc74ff2de1fc0e              # double 0.4446409175943139
	.quad	0x3fe44c6c7dd16036              # double 0.63432907651713921
	.quad	0x3fc6eb6a4512be2c              # double 0.17905929920878927
	.quad	0x3fe8f28bdfb52564              # double 0.77960771267786954
	.quad	0x3fef8253285bdea4              # double 0.98465879328337679
	.quad	0x3fb600d53d2afd18              # double 0.085950210031104368
	.quad	0x3fe9f2d8fa16fc89              # double 0.81089447827970773
	.quad	0x3fbb4937650824e8              # double 0.10658594338032723
	.quad	0x3fe9d7792c3a56a8              # double 0.8075528968644976
	.quad	0x3fe77a0f2dd1c21c              # double 0.73364981602759682
	.quad	0x3fd378a526a3ec30              # double 0.30423859380215657
	.quad	0x3fd286eeee4ed4dc              # double 0.28948567650088619
	.quad	0x3fe94bc6101019c5              # double 0.79049971711429434
	.quad	0x3fea4a268760f9a4              # double 0.821551575099694
	.quad	0x3fee3da553bbeebb              # double 0.9450251231605401
	.quad	0x3fdaa71e8b47a9c8              # double 0.41645015336567015
	.quad	0x3fd100bef1af5e88              # double 0.26567052461675944
	.quad	0x3fbedd683f31ed70              # double 0.12056590597960848
	.quad	0x3fd56b5b256be5a8              # double 0.33467749266091085
	.quad	0x3fdeefabef4c8eda              # double 0.48337839478538813
	.quad	0x3f70fabb02206a00              # double 0.0041453652393337315
	.quad	0x3fd3cc0c29f49652              # double 0.30932907197197779
	.quad	0x3fc9594c2360b1ac              # double 0.19803764083316133
	.quad	0x3fb64452e12c2848              # double 0.086980037664177279
	.quad	0x3fef257a51229951              # double 0.97332492682179794
	.quad	0x3fd3206f05b001d6              # double 0.29885459475920351
	.quad	0x3fda5fc5e739d428              # double 0.41209552364972746
	.quad	0x3fe5253cf320cdfd              # double 0.66079566465344863
	.quad	0x3fe2d9124aff6421              # double 0.58899798057530373
	.quad	0x3fe8b35305f0cf4b              # double 0.77189017448697805
	.quad	0x3fec6e53fd29100f              # double 0.88846778340712429
	.quad	0x3fe92d95a3f7ee73              # double 0.78681451821417026
	.quad	0x3fc811b33b309624              # double 0.18804016485334885
	.quad	0x3fd4828892df6340              # double 0.32046713202503341
	.quad	0x3fdf08f92e0fc5ce              # double 0.48492269037441538
	.quad	0x3fe64a56512673c3              # double 0.69657436227463909
	.quad	0x3f731500257c5980              # double 0.0046586995811338516
	.quad	0x3fd26fac36c6154c              # double 0.28806596135139695
	.quad	0x3fe402c5b2818a6b              # double 0.62533841003853519
	.quad	0x3fd768ca8dd2f7fa              # double 0.36577094888696104
	.quad	0x3fd50dc915381f8e              # double 0.32896639892759871
	.quad	0x3fb30ceb4131b3e0              # double 0.074415877739468339
	.quad	0x3fb4411cdfa4a8f8              # double 0.079118542290107174
	.quad	0x3fc7c3d199b99c7c              # double 0.185663414059693
	.quad	0x3fed58e51c5783be              # double 0.91710143600004534
	.quad	0x3fee3c9680066b27              # double 0.94489598278901077
	.quad	0x3fe1efc75f032967              # double 0.5605198722562762
	.quad	0x3fe44394faac8d06              # double 0.63324974975367421
	.quad	0x3feece4c35b09f79              # double 0.96268282400431737
	.quad	0x3fd880bed761754c              # double 0.38285800011893367
	.quad	0x3fdebaee0a9dcc30              # double 0.48015929257161627
	.quad	0x3fe73e54e568b462              # double 0.72635884100385462
	.quad	0x3fe7127f9b8fda64              # double 0.7210081137007589
	.quad	0x3fe15889aad5ac6d              # double 0.5420578323950288
	.quad	0x3feb98535e8137e7              # double 0.86234444101296226
	.quad	0x3fe5ab03e6240519              # double 0.67712588261943829
	.quad	0x3f7cc33d8bda7980              # double 0.0070221332695424854
	.quad	0x3fd2d647ecfffe30              # double 0.29432867188004064
	.quad	0x3fe9477d563d80e0              # double 0.78997675746725448
	.quad	0x3fceb589443f0e70              # double 0.23991504509295991
	.quad	0x3fbba87a7b1a30f0              # double 0.10803952699115249
	.quad	0x3fc65d120e578444              # double 0.17471528721128682
	.quad	0x3fed5230899430bf              # double 0.91628291006920637
	.quad	0x3fd40be12434d774              # double 0.31322506461889721
	.quad	0x3fe739e8196fcfc0              # double 0.72581868141286776
	.quad	0x3fd9f40dd6802754              # double 0.40552087733577946
	.quad	0x3feab51117c22898              # double 0.83460287704771741
	.quad	0x3fea067734a684a7              # double 0.8132892635659531
	.quad	0x3fda6bf193b6d09e              # double 0.41283835816580872
	.quad	0x3fe863ca03033236              # double 0.76218128765464743
	.quad	0x3f99fba7cde9cb60              # double 0.025374051993320434
	.quad	0x3fbf378fc0f31550              # double 0.12194155178720689
	.quad	0x3fdaeebd6d5e68a8              # double 0.42082153015656809
	.quad	0x3fe00cd022c91eed              # double 0.50156409067218777
	.quad	0x3fe80f93a3c958de              # double 0.75190145482590842
	.quad	0x3fe5c9ea30dba8bc              # double 0.68089780371271713
	.quad	0x3fef82652ead7594              # double 0.98466738812173781
	.quad	0x3fe913436eb875a4              # double 0.78360149026018577
	.quad	0x3fb7e95694e3fe00              # double 0.093404208517306131
	.quad	0x3fa7a78d03fcfc70              # double 0.046200186478466132
	.quad	0x3fee33f6a8c92d61              # double 0.94384320226656027
	.quad	0x3fce036b958775a0              # double 0.23447937775828809
	.quad	0x3fbbc0f693129d28              # double 0.1084131344856486
	.quad	0x3fec095c5da3c200              # double 0.87614267624854847
	.quad	0x3fdde899a143ce72              # double 0.4673217844822154
	.quad	0x3fe8888635d41969              # double 0.76666555894261734
	.quad	0x3fefb3cd68edca5a              # double 0.99069853300018029
	.quad	0x3fcbb91f55c5fa44              # double 0.21658698738242965
	.quad	0x3fe83f0d68e0d0ca              # double 0.75769682392140081
	.quad	0x3fe005b432ea8eb4              # double 0.50069627708986397
	.quad	0x3fe3f60dfd6f7d89              # double 0.62378596781847861
	.quad	0x3fd2fac56fe0dfec              # double 0.29655586171747816
	.quad	0x3fba6bbe463bfc30              # double 0.10320653166489602
	.quad	0x3fe92115c99fc95f              # double 0.78528870944709783
	.quad	0x3fccc0150dfed834              # double 0.22461188491223683
	.quad	0x3f9e6c79f12c5a40              # double 0.029710679383322836
	.quad	0x3fe873b7d8b4b5b4              # double 0.76412575078364008
	.quad	0x3fd123708ed25a0c              # double 0.26778806636267016
	.quad	0x3fccf22a4b06f30c              # double 0.22614029563364857
	.quad	0x3fb6d1c862863b80              # double 0.089138530782504332
	.quad	0x3fd15bd6a37c6340              # double 0.2712303730527772
	.quad	0x3fcb5ab486108e7c              # double 0.21370560213209788
	.quad	0x3fee5b0c93f9d059              # double 0.94861439610987042
	.quad	0x3feaa8a3e4643ad1              # double 0.83308596236914856
	.quad	0x3fd344c934c5112a              # double 0.30107336190509904
	.quad	0x3fda91b826357e6e              # double 0.41514400225967207
	.quad	0x3fd9101c4c751a9a              # double 0.39160830942675207
	.quad	0x3fe918f8039115af              # double 0.78429794975879996
	.quad	0x3fe61fe4b4068a0d              # double 0.69139323388327656
	.quad	0x3fc3f03b5c62c7b4              # double 0.15576879511860187
	.quad	0x3fe6741323669420              # double 0.70166928209494372
	.quad	0x3fcb02e7a7c33dc0              # double 0.2110261506227129
	.quad	0x3fc06327d468a8b4              # double 0.128025988307234
	.quad	0x3fe647ead5b7669b              # double 0.69627897016035278
	.quad	0x3fec6be5d2d1cbc3              # double 0.88817111182867625
	.quad	0x3fdaaada7386a228              # double 0.41667805940463376
	.quad	0x3fd19e322c2c149c              # double 0.27528051675501231
	.quad	0x3fc8e7919f014550              # double 0.19456691993631603
	.quad	0x3fe7bb27835fe6ec              # double 0.74159598979096364
	.quad	0x3fe96b11e4590421              # double 0.79432005499996106
	.quad	0x3fde7cb57cdf6a4e              # double 0.47636162943459659
	.quad	0x3fd0705b43d9a43a              # double 0.25685769678108594
	.quad	0x3fd065c99c11e158              # double 0.25621261826701902
	.quad	0x3fd63fa013141f5a              # double 0.34763337958474028
	.quad	0x3fece13e58dacc8b              # double 0.90249554972105395
	.quad	0x3fdd7f9d100baedc              # double 0.46091391150433281
	.quad	0x3fda25f49f51a96c              # double 0.40856662329192406
	.quad	0x3fec4c2427b9bbe0              # double 0.88429458388224801
	.quad	0x3fd563fc01cbc35e              # double 0.3342275636232922
	.quad	0x3fdb3ef01c811b6c              # double 0.42571642669320542
	.quad	0x3fc32b6d4adfacb8              # double 0.14976278453773317
	.quad	0x3fe788410fd602d2              # double 0.73538258641209553
	.quad	0x3fdfab9fe2f74b06              # double 0.49485013165137592
	.quad	0x3fd62ad1a6524710              # double 0.34636346094440373
	.quad	0x3feab29dae44a0a5              # double 0.83430370365842477
	.quad	0x3fd6677c589eaa0e              # double 0.35006626753116243
	.quad	0x3fe111e57b7e9ec9              # double 0.53343462104836548
	.quad	0x3f9f3b7f7096c9e0              # double 0.030500403639686868
	.quad	0x3feb7d6a81bf1b06              # double 0.85905957547296974
	.quad	0x3fe4388aa4d48ad8              # double 0.6319020480480857
	.quad	0x3fe8f4d0d5f1759b              # double 0.77988473687917137
	.quad	0x3fd6377018d922a0              # double 0.34713365961628462
	.quad	0x3fe69b09396d3aed              # double 0.70642529693745149
	.quad	0x3fdcb335629cb9ae              # double 0.44843802099321806
	.quad	0x3fa5f2a46aa20ac0              # double 0.042866838471146362
	.quad	0x3fc230b5a49a5388              # double 0.1421114972805777
	.quad	0x3fc0f6ed496fe9fc              # double 0.13253561101721789
	.quad	0x3fd2d5c308358ba2              # double 0.29429698754955258
	.quad	0x3fef81e409fabfd9              # double 0.98460580777281869
	.quad	0x3fe0ec6e49665097              # double 0.52886118255493642
	.quad	0x3fc1d5d73820f384              # double 0.13933840027484845
	.quad	0x3fe45c683ab1e376              # double 0.63628016914218111
	.quad	0x3fe2fe0ac277de73              # double 0.59351098997190233
	.quad	0x3fa89aaec4a497c0              # double 0.048055135254159165
	.quad	0x3fefa8916ac2ed06              # double 0.98932715274659766
	.quad	0x3fda51ad0f978e66              # double 0.41123510859163159
	.quad	0x3fd8406e73639d60              # double 0.37893258350819359
	.quad	0x3fe89ca2ec98382f              # double 0.76912065706142652
	.quad	0x3fbac0982c141648              # double 0.10450125766882323
	.quad	0x3fc037e8a395b2d8              # double 0.12670619952714079
	.quad	0x3fae2dce88bbffd0              # double 0.058943227950294053
	.quad	0x3fd626bef100d2fa              # double 0.34611485991926794
	.quad	0x3fc9e92909f3a16c              # double 0.20242798791810956
	.quad	0x3fe8780eb0b8e383              # double 0.76465544239100358
	.quad	0x3fdde95b5505d106              # double 0.46736796668052738
	.quad	0x3fc25ea0fc6fb044              # double 0.14351284337988279
	.quad	0x3fca45379e234284              # double 0.20523734304017094
	.quad	0x3f6309cccad57a00              # double 0.0023240089273450781
	.quad	0x3fe1369b0602a382              # double 0.53791571782959147
	.quad	0x3fb5b6fd446d9ac0              # double 0.084823445516671647
	.quad	0x3fdde78adbe07d00              # double 0.46725722763399347
	.quad	0x3fd2bd136dd5d338              # double 0.29279027677630465
	.quad	0x3fe95c90d2f0c9c6              # double 0.79254952620822716
	.quad	0x3fa76b002f252980              # double 0.045738225703263247
	.quad	0x3fe9c90be6308896              # double 0.80579180678275253
	.quad	0x3fd83dab7124fc5a              # double 0.37876401948228067
	.quad	0x3fd74573050aad9a              # double 0.36361384861330637
	.quad	0x3fdc23cb4b9df3ee              # double 0.43968469986412984
	.quad	0x3fe8ad5376b709b3              # double 0.77115796267053438
	.quad	0x3fef7b5da21871f8              # double 0.98380929621958923
	.quad	0x3fe9fc0c7120e354              # double 0.81201765151409199
	.quad	0x3fe124df860d6dbc              # double 0.53575111562843558
	.quad	0x3fed612bd2664d24              # double 0.91811171621012421
	.quad	0x3fc31b8dfab9d140              # double 0.14927839987252334
	.quad	0x3fedbffc40c95ea0              # double 0.92968571332581362
	.quad	0x3fafe168b546d950              # double 0.06226660931445116
	.quad	0x3fc996793bfb32fc              # double 0.1999045889737302
	.quad	0x3fc0b4c96e61ea64              # double 0.13051717653054873
	.quad	0x3fd12aaec7b48676              # double 0.26823014738520301
	.quad	0x3fca63f1b181bcfc              # double 0.20617505233119704
	.quad	0x3fed2fc627ce7c8b              # double 0.91208179259037203
	.quad	0x3fd1fa78eb80067a              # double 0.28091261861855055
	.quad	0x3fb95802724283e0              # double 0.098999169249978091
	.quad	0x3fecc73c8997457f              # double 0.89932085870002243
	.quad	0x3fea267328917ff9              # double 0.81719358371265038
	.quad	0x3fe586284bfff6bb              # double 0.67262663692209601
	.quad	0x3fdbb8be521cedc6              # double 0.43315084475372279
	.quad	0x3fef0a450b9902fe              # double 0.97000362649131922
	.quad	0x3fe6456d1096524a              # double 0.69597485770879897
	.quad	0x3fd5e85dd48d199e              # double 0.34230752713156132
	.quad	0x3fecb0243bcf3c5e              # double 0.89650165254159808
	.quad	0x3fbd09c9a1e83298              # double 0.1134305973320785
	.quad	0x3fc8579a4fa98f48              # double 0.1901734246231348
	.quad	0x3fed01b98923f13a              # double 0.90646054063066761
	.quad	0x3feb3a4782336c21              # double 0.85086417608124887
	.quad	0x3fe939f00a36c03f              # double 0.78832246775528592
	.quad	0x3fe0d1f76e4f7141              # double 0.52563067955956211
	.quad	0x3fdd229e9741d522              # double 0.45523800631720424
	.quad	0x3fe5bd27a308fc65              # double 0.67934018938821039
	.quad	0x3fd7ad291c005c34              # double 0.36994388327133554
	.quad	0x3feeaec9628f1cf5              # double 0.95883626222430839
	.quad	0x3fecd77534659763              # double 0.90130100473173191
	.quad	0x3fe7f310af2cf636              # double 0.74842104162207224
	.quad	0x3f9ed01f13a79760              # double 0.030090795111298418
	.quad	0x3fd1d24490445434              # double 0.27845872963490881
	.quad	0x3fe3ba9c1d79452f              # double 0.6165295196207462
	.quad	0x3fba521196e3fae0              # double 0.10281476911402931
	.quad	0x3fe2096894d0fa37              # double 0.56364850106894593
	.quad	0x3fe7eac50db5d98f              # double 0.74740841558268467
	.quad	0x3fc2a9c38614e6bc              # double 0.14580577895121916
	.quad	0x3fcfe635b92f9038              # double 0.24921294729495158
	.quad	0x3fdf933059d034d8              # double 0.49335869570570656
	.quad	0x3fedb0ab7c866bbc              # double 0.92781614610009155
	.quad	0x3fe6d2261822a106              # double 0.71315293039245442
	.quad	0x3fde978686b7b73e              # double 0.47799838214892876
	.quad	0x3fe70d52c835e3d9              # double 0.72037638763060408
	.quad	0x3fe6e83501bcbef7              # double 0.71584558810533749
	.quad	0x3fd0d336f7e0940e              # double 0.26289152342570865
	.quad	0x3fe0407bc4e7b33b              # double 0.50787151773474848
	.quad	0x3fe318d7df0f2145              # double 0.59678262296896689
	.quad	0x3fef9d70859bf78c              # double 0.98796869369083273
	.quad	0x3f96fbb0c6a11060              # double 0.022444498179780559
	.quad	0x3fa64e293dd6af30              # double 0.043565071867617156
	.quad	0x3fe5b08f6875d15c              # double 0.67780275728595596
	.quad	0x3fd7fd90b5532d32              # double 0.37485139567862114
	.quad	0x3fee83ad801a4112              # double 0.95357394237547255
	.quad	0x3fe80a814fd332b2              # double 0.7512823638040429
	.quad	0x3fd2e66db7e3d9f8              # double 0.29531424482357194
	.quad	0x3fe781af8ad14233              # double 0.73458077538277278
	.quad	0x3f6666347a091800              # double 0.0027342820106097676
	.quad	0x3fc3fae077f08e98              # double 0.15609365326337321
	.quad	0x3fef5d089bd1cc6e              # double 0.98010664399624914
	.quad	0x3fb64ab6c04615d0              # double 0.087077543203199825
	.quad	0x3fd9124fb7df85a6              # double 0.39174263912544871
	.quad	0x3fee7e374dedb160              # double 0.95290723057182091
	.quad	0x3face82e6f5433f0              # double 0.056458903398471594
	.quad	0x3fd7eaf9c7a08c5a              # double 0.37371677870595976
	.quad	0x3fd86fd693fdb5be              # double 0.38182606174708755
	.quad	0x3fe06746b4ff1f9e              # double 0.51260695792096889
	.quad	0x3feb5f103b063cfa              # double 0.85535441902348386
	.quad	0x3fef7eaf3062414a              # double 0.98421439599955218
	.quad	0x3fdeb7d3686e84e6              # double 0.47996983717355446
	.quad	0x3f631593c7797700              # double 0.0023296247780270063
	.quad	0x3feecab42330dabe              # double 0.96224409936151978
	.quad	0x3fd4f4f3e8f1248e              # double 0.32745073078383136
	.quad	0x3fea667073553c13              # double 0.82500479246107472
	.quad	0x3fd72e48303bdda2              # double 0.36219982824646924
	.quad	0x3fecd918ab2e72d3              # double 0.90150102075457494
	.quad	0x3fe92b21a752e50d              # double 0.78651507072859916
	.quad	0x3fbf041f22da4168              # double 0.12115664101498214
	.quad	0x3fce4627ac3031a4              # double 0.23651595981244811
	.quad	0x3fe44c01bafcc0fc              # double 0.63427816887818222
	.quad	0x3fdfa63f8cc82e3a              # double 0.49452198742139652
	.quad	0x3fe54d7163d7d4d7              # double 0.66570348263362689
	.quad	0x3f8a9bcda29efd80              # double 0.012992483640003938
	.quad	0x3fa907010884dbf0              # double 0.04888156155578105
	.quad	0x3fdb5fcb0b1886a6              # double 0.4277217491490809
	.quad	0x3fe81979b2426de6              # double 0.75310978714281585
	.quad	0x3feee72da50e6337              # double 0.96572000730075202
	.quad	0x3fd434ecf38429ee              # double 0.31573032170186266
	.quad	0x3fcd47c9cb1b6844              # double 0.2287533036931696
	.quad	0x3fb68f62ccf65140              # double 0.088125395812601148
	.quad	0x3fd64577f8dbf63e              # double 0.34799002936037826
	.quad	0x3fe5aef3a1be5acf              # double 0.67760640707532527
	.quad	0x3fdd8e432759533c              # double 0.46180800287884316
	.quad	0x3fddb2e42b43236e              # double 0.46404365753965393
	.quad	0x3fc4d182ff6d3fd4              # double 0.16264378997811824
	.quad	0x3fec32317a025e8c              # double 0.88112710790569925
	.quad	0x3f903f8be62ac6a0              # double 0.015867410586628439
	.quad	0x3fd6bb091c05a5f6              # double 0.35516574608354234
	.quad	0x3fe202a7474621ca              # double 0.56282390518850289
	.quad	0x3fd642fa29c55908              # double 0.34783796385944799
	.quad	0x3fd32bcede599476              # double 0.29954883302554636
	.quad	0x3fe72e4778297636              # double 0.72439931363232435
	.quad	0x3f8631a67fa50600              # double 0.010836888094334363
	.quad	0x3fda599d1cd402c0              # double 0.41171958747149162
	.quad	0x3fe2b0a8740f726c              # double 0.58406469982180687
	.quad	0x3fdf15a78fb18cc4              # double 0.48569668800901078
	.quad	0x3fcdfa4ddff365ac              # double 0.23420117793174933
	.quad	0x3fe37babd7fda5c5              # double 0.60884658990578855
	.quad	0x3fe12eb8c511a54d              # double 0.53695333948159318
	.quad	0x3fe01017f66c3c4d              # double 0.50196455125286266
	.quad	0x3fb3cde3343d1fa0              # double 0.077360344174961515
	.quad	0x3fc36b67f1917958              # double 0.15171527190518463
	.quad	0x3fe0d89038af841d              # double 0.52643595763595707
	.quad	0x3fdf795046b5e9f2              # double 0.49177939324695708
	.quad	0x3fe3223f1d294d89              # double 0.59793048568319407
	.quad	0x3fb5dcb9ef36e208              # double 0.085399266149473019
	.quad	0x3fe588c5cdd87040              # double 0.67294588283721879
	.quad	0x3fec30fe90ea175e              # double 0.8809807615623233
	.quad	0x3fe875c99dd07444              # double 0.7643783647832909
	.quad	0x3fec97069c3a745c              # double 0.89343576920840517
	.quad	0x3feecb3213460698              # double 0.96230415119517243
	.quad	0x3fd96c7fd7709884              # double 0.39724727667852044
	.quad	0x3fea39db975842f3              # double 0.8195627170517511
	.quad	0x3fd5a587196f9770              # double 0.33822801097846078
	.quad	0x3fd01996c65f1e0c              # double 0.25156182644101999
	.quad	0x3fb0846aa3dd6e68              # double 0.064520516401381678
	.quad	0x3fe605c0ea9080d8              # double 0.68820234120723978
	.quad	0x3fe9c5e1bc34ed24              # double 0.80540549048547349
	.quad	0x3fee8674151db05b              # double 0.95391277431691479
	.quad	0x3feef7e14b973520              # double 0.96775879634666139
	.quad	0x3fc4aebd352cc7f0              # double 0.1615826139109795
	.quad	0x3fe2873dde37f021              # double 0.57900899316837606
	.quad	0x3fe52800451a2620              # double 0.66113294121277377
	.quad	0x3fe8cc5b5c2109f4              # double 0.77494590753513969
	.quad	0x3fdf9941e7088558              # double 0.4937290912804051
	.quad	0x3fe223a924798e3d              # double 0.56685311435689523
	.quad	0x3fe2a1e7d05656cc              # double 0.58226385775443523
	.quad	0x3fea8b25d0846579              # double 0.82948580480585499
	.quad	0x3fc6c6659e4c5e08              # double 0.17792959432038935
	.quad	0x3fe0ac9fd3922052              # double 0.52107230493948919
	.quad	0x3fd55c2138b21850              # double 0.33374815499008026
	.quad	0x3f892512f9479d40              # double 0.012277744514860189
	.quad	0x3fe9327f4b2e983e              # double 0.78741421398149902
	.quad	0x3fcc9b31db7d9c10              # double 0.22348616807286747
	.quad	0x3fef47785610039e              # double 0.97747437295048534
	.quad	0x3fea1c42e98a3d6f              # double 0.81594987500458938
	.quad	0x3fd840e59b6c4952              # double 0.37896099260355698
	.quad	0x3fd39bad71792140              # double 0.30637680131305345
	.quad	0x3fdfe0ec81bd9c86              # double 0.49810326261508242
	.quad	0x3fe0683cb1df251e              # double 0.51272425404127708
	.quad	0x3f96ec9b8e2418e0              # double 0.022386961508367942
	.quad	0x3fc40e59007d6c6c              # double 0.15668785594866408
	.quad	0x3fe4ce3a06829552              # double 0.65017415305616511
	.quad	0x3fe8873a3c5f4e8a              # double 0.76650726119483292
	.quad	0x3fd64470abfd5dee              # double 0.34792725368376309
	.quad	0x3fd1c8bc7b323e7c              # double 0.27787696867833467
	.quad	0x3fe69f9380e1eb52              # double 0.70697951481211363
	.quad	0x3fe54d9f8f79d644              # double 0.6657254984153913
	.quad	0x3fecef13a504fbea              # double 0.90418417196621914
	.quad	0x3fd553b23f860846              # double 0.33323341563675901
	.quad	0x3febea8ff4fb71f3              # double 0.87238309715354345
	.quad	0x3fb3a5d481575888              # double 0.076749116494598479
	.quad	0x3fe7c24b7df54be2              # double 0.74246763802727522
	.quad	0x3fa483b7485dde90              # double 0.040067412933180724
	.quad	0x3fd30bd9eee606ec              # double 0.29759834604202129
	.quad	0x3fe1edbfe5fbc01a              # double 0.56027216833718119
	.quad	0x3fbf675ad140e5e0              # double 0.12267081841209615
	.quad	0x3faaf693968c26f0              # double 0.052662479522110561
	.quad	0x3fd8cb782a2eb2fc              # double 0.38741878623368087
	.quad	0x3fd987fe3c48ea44              # double 0.39892536055745986
	.quad	0x3fe1f7b75c7ef746              # double 0.56148880067460349
	.quad	0x3fe627db7717c887              # double 0.6923653913529656
	.quad	0x3fe1be281ae6e6c1              # double 0.55446248297013068
	.quad	0x3fe7008824f2c414              # double 0.71881491867509562
	.quad	0x3fbedac4989289f8              # double 0.1205256340495352
	.quad	0x3fe3f7d4001e1709              # double 0.62400245688397249
	.quad	0x3fed76e396c10439              # double 0.92076281971106433
	.quad	0x3fe381e1da9833ed              # double 0.60960476583715961
	.quad	0x3fe7dec4fe3f86d7              # double 0.74594354303209343
	.quad	0x3fe47c6629ce6ff9              # double 0.64018543401061756
	.quad	0x3fddb73452334a16              # double 0.46430690791490414
	.quad	0x3fc56151416ee434              # double 0.1670323915002726
	.quad	0x3fe91fc969271cb9              # double 0.78513021981861819
	.quad	0x3fe6465ebd25fef1              # double 0.6960900968842606
	.quad	0x3fe3df1ade2099a5              # double 0.62098449119803389
	.quad	0x3fb0a226885969d0              # double 0.064974220550914952
	.quad	0x3fece75333cd5e96              # double 0.90323791616079308
	.quad	0x3fed0690ef5b34de              # double 0.90705153226158663
	.quad	0x3fda383ec88cf13c              # double 0.4096829374791644
	.quad	0x3fe414caa82fa899              # double 0.62753804062710394
	.quad	0x3fdad38a593c3b52              # double 0.41916140283949688
	.quad	0x3faa72fd66a4e100              # double 0.051658552913467659
	.quad	0x3fb363c1ccae2000              # double 0.075740921469446221
	.quad	0x3fc82af184003ba0              # double 0.18881052918774532
	.quad	0x3fe3be7f0257b67d              # double 0.61700392205757704
	.quad	0x3feb578e196e6111              # double 0.85443787543320771
	.quad	0x3fe4d14409a21b0d              # double 0.65054513818253812
	.quad	0x3fc934a530946f7c              # double 0.19691910621702025
	.quad	0x3fdecd0d1f278704              # double 0.48126533548757799
	.quad	0x3fc2bcdb38e7aebc              # double 0.14638843802037182
	.quad	0x3fedc15cea77fd87              # double 0.92985387606306424
	.quad	0x3fc7da7d2c33e5e8              # double 0.18635525377594253
	.quad	0x3fe82fcb78a83570              # double 0.75583432737191281
	.quad	0x3fe5b8ffffe73c57              # double 0.67883300763231602
	.quad	0x3fdac458b44826ec              # double 0.41823403936051196
	.quad	0x3fcc2bc9b83fda74              # double 0.22008630272440011
	.quad	0x3fd16deeadaaa620              # double 0.27233473739269876
	.quad	0x3fd1244d9c729fce              # double 0.26784076955891301
	.quad	0x3fe97a4d5aaf6508              # double 0.79617946350040913
	.quad	0x3fd263d26cebd342              # double 0.28734264981112656
	.quad	0x3fddc7b350b203b0              # double 0.46531374817282778
	.quad	0x3fed63a1447e4574              # double 0.91841185929858548
	.quad	0x3fd648adf671b242              # double 0.34818600718316273
	.quad	0x3fec2f546de9fa0c              # double 0.88077756373951521
	.quad	0x3fe22568e3838bd7              # double 0.56706661640452694
	.quad	0x3fe0c9f880bf4474              # double 0.52465462823796694
	.quad	0x3fd19e2838303876              # double 0.27527814376015358
	.quad	0x3fef5a038aa69776              # double 0.97973801689361895
	.quad	0x3fde0fd283ae7746              # double 0.46971571788332189
	.quad	0x3feb7583de94bae1              # double 0.85809510681960088
	.quad	0x3fdc3cc6de1dadf2              # double 0.44120952311524697
	.quad	0x3fd1ff2f91c24eba              # double 0.28120030626562775
	.quad	0x3feab2649673f49d              # double 0.83427647958128015
	.quad	0x3fe58c2691ca2811              # double 0.67335823511644055
	.quad	0x3feff19c1ab48fcb              # double 0.99824338165171278
	.quad	0x3fdf8771990bea16              # double 0.49264182992888672
	.quad	0x3fc7b1542d25032c              # double 0.18509914593053034
	.quad	0x3fda778fb91af0b2              # double 0.41354744984324576
	.quad	0x3fe3f0789586a859              # double 0.62310437397287466
	.quad	0x3fcea1b88f10acd0              # double 0.23931033120729817
	.quad	0x3fd75b6396493da0              # double 0.36495294262291544
	.quad	0x3fc08163cb9d9774              # double 0.12894866411368933
	.quad	0x3fe2b9732b8e7930              # double 0.58513792521606511
	.quad	0x3fe6ef939aade171              # double 0.71674518786225694
	.quad	0x3fdc0637df1d1a96              # double 0.43787953175016392
	.quad	0x3fe375f941abe72d              # double 0.60815108133758644
	.quad	0x3fd52d0c720cd1ea              # double 0.33087454927161153
	.quad	0x3fd12f186833c3fc              # double 0.26849947143551822
	.quad	0x3fe5137a3f72b71e              # double 0.65862762825210885
	.quad	0x3fd31722e30bae04              # double 0.29828712627815457
	.quad	0x3fcb3320ea6b213c              # double 0.21249782034124987
	.quad	0x3fceac8e815f1da0              # double 0.23964101139993677
	.quad	0x3fe8e697d32e9190              # double 0.77814856764284634
	.quad	0x3f9ba47b7d5600a0              # double 0.026994637989901649
	.quad	0x3fe11c91c2a9dbc3              # double 0.53473747272698124
	.quad	0x3fed6950384233e1              # double 0.9191056345749723
	.quad	0x3fed6843485b0373              # double 0.91897739536226053
	.quad	0x3fdc3132f8fccf70              # double 0.44050287547292211
	.quad	0x3fe0bd4d205fc9be              # double 0.52310806582527625
	.quad	0x3fe89cd24c8eab08              # double 0.76914324715230098
	.quad	0x3fee4e8e0cb1841a              # double 0.94708921889480568
	.quad	0x3fed52a989ec36d4              # double 0.91634060800580607
	.quad	0x3fb1e5bc067c5438              # double 0.069911719878590683
	.quad	0x3fee82b7b74b6893              # double 0.95345674323768248
	.quad	0x3fed391a534427ab              # double 0.91322056067405322
	.quad	0x3fe01ce6d39dfc82              # double 0.50352803546401526
	.quad	0x3fc23d812a92c830              # double 0.14250197008874599
	.quad	0x3fc937f055dcfb0c              # double 0.19701961700953807
	.quad	0x3fd8a52331b73b1e              # double 0.38507919173291494
	.quad	0x3fee17c8735a16dd              # double 0.94040319947881879
	.quad	0x3fc458bb6e696f58              # double 0.15895789042667263
	.quad	0x3fd49f3ee4c82d90              # double 0.32221958486544455
	.quad	0x3f705a6353ca9d00              # double 0.0039924507115423058
	.quad	0x3fde8abc43cadbac              # double 0.47721773739197704
	.quad	0x3fe98812e4ef8c11              # double 0.79786057199487648
	.quad	0x3fb3f2fd9371a450              # double 0.077926491257714447
	.quad	0x3fde7dba19f753e2              # double 0.47642376456980007
	.quad	0x3fc1caf166208418              # double 0.13900582777662929
	.quad	0x3fde9c0c638c9c9a              # double 0.47827443811042658
	.quad	0x3fe32d9ab1ce2e89              # double 0.59931692817322457
	.quad	0x3fee4560e1359869              # double 0.94596904741480359
	.quad	0x3fd7f5e01f41ecac              # double 0.3743820481538005
	.quad	0x3fe80a789ec240b4              # double 0.7512782192952927
	.quad	0x3fe1c907efc61c25              # double 0.55578991728623761
	.quad	0x3fc39fe790691548              # double 0.1533173995141317
	.quad	0x3f84849d73e1bcc0              # double 0.01001856813328883
	.quad	0x3fe3a90f03773a35              # double 0.61438704182530179
	.quad	0x3f71798f40eaad80              # double 0.0042663188784602957
	.quad	0x3fef7a74871fdb53              # double 0.98369814292423496
	.quad	0x3fede3efca4ddab9              # double 0.9340743018390959
	.quad	0x3fc59ca51c753664              # double 0.16884292497200015
	.quad	0x3fedd0c2b18ce953              # double 0.93173346212214836
	.quad	0x3fecb47cc44bea18              # double 0.8970321496884166
	.quad	0x3fbe79ddb5c5d938              # double 0.11904702842534653
	.quad	0x3fc78707e2cf0464              # double 0.18380831312791479
	.quad	0x3fde6bb0aa018714              # double 0.47532288171906711
	.quad	0x3fe97e5df720afef              # double 0.79667566554189573
	.quad	0x3fd63e3c6d7bfa92              # double 0.34754858676743894
	.quad	0x3fe6f7465d6be775              # double 0.71768491979967897
	.quad	0x3fd0c7f1ecd31c3a              # double 0.26220367553145574
	.quad	0x3fe5e6af6d4a14d8              # double 0.68440982194502009
	.quad	0x3fe1fa314510af69              # double 0.56179107178966803
	.quad	0x3fea2640cb5b3609              # double 0.81716956823373821
	.quad	0x3fdbca806209bb6c              # double 0.43423471044564255
	.quad	0x3fdd9263cbbdb10c              # double 0.46205992600040768
	.quad	0x3fe22df09e2899bf              # double 0.56810789957381036
	.quad	0x3fd61fb2c09591f0              # double 0.34568470770889714
	.quad	0x3fefd7789721223a              # double 0.99505261914698129
	.quad	0x3fe9e4c286e846a3              # double 0.80917478894317119
	.quad	0x3feebc9caaf25997              # double 0.96052392375968309
	.quad	0x3fbb2dd5fab24260              # double 0.10616814966693644
	.quad	0x3fe27792c25e9ece              # double 0.57709634745421012
	.quad	0x3fa652548e0e2bb0              # double 0.043596880284062833
	.quad	0x3feed36698bb5bc8              # double 0.96330575781291205
	.quad	0x3fe60ee9a47b5972              # double 0.68932039380415078
	.quad	0x3f91f1eafd244ba0              # double 0.017524406147525817
	.quad	0x3fe8b794077c73d1              # double 0.77240945303094055
	.quad	0x3fe088be51f20227              # double 0.5166923141951586
	.quad	0x3fe6759aa4904abc              # double 0.70185596600852973
	.quad	0x3fef9fa47edbd704              # double 0.98823761727427994
	.quad	0x3fef5c58985b6b90              # double 0.98002271420715381
	.quad	0x3fd2f7bb792b138a              # double 0.29637038071478428
	.quad	0x3fbbb61d8fd54620              # double 0.10824761163282703
	.quad	0x3fe130c9aac83915              # double 0.53720553737528809
	.quad	0x3fa48164df678b60              # double 0.040049698134473344
	.quad	0x3f8d09f5ea60f640              # double 0.014179154601261179
	.quad	0x3fd3b58f463ffee2              # double 0.30795652256345651
	.quad	0x3fee22e5b10fcc42              # double 0.94175991613736465
	.quad	0x3fcc79122a4c356c              # double 0.22244479241673376
	.quad	0x3fbefce0f1105a88              # double 0.12104612241123835
	.quad	0x3fca47db85e86080              # double 0.20531791723692905
	.quad	0x3fc8f00f5eca9bcc              # double 0.19482605103004713
	.quad	0x3febb585ff4653d1              # double 0.86590862139075331
	.quad	0x3fe82ea137d4e178              # double 0.75569210915186513
	.quad	0x3fe4595ab8201bdc              # double 0.63590751611706819
	.quad	0x3fed5a2797f74b5a              # double 0.91725520783289061
	.quad	0x3fe3692a09161ad2              # double 0.60658742689778422
	.quad	0x3feb0478af95a436              # double 0.84429582876067033
	.quad	0x3fa0f7e7561a6f80              # double 0.03314135480942948
	.quad	0x3fd5fa3004ea4e1e              # double 0.34339523773198433
	.quad	0x3fdca80bb1f2d7b0              # double 0.4477566945819218
	.quad	0x3fb83c5b188b84a8              # double 0.094670957081251061
	.quad	0x3fd84bd76decbf4a              # double 0.37962899908869885
	.quad	0x3fdb7b161c2ea1fc              # double 0.42938759567417129
	.quad	0x3fd3e62a1c3b6c5c              # double 0.31092312581103498
	.quad	0x3fc35375d4f07fec              # double 0.15098450562891175
	.quad	0x3fe92665097cfe4b              # double 0.78593685010123104
	.quad	0x3fe9ac0a28d4b196              # double 0.80225093817493831
	.quad	0x3fe0a89c97910fb5              # double 0.5205824814115575
	.quad	0x3fd0dd9d5ea8a4c0              # double 0.26352628940601264
	.quad	0x3fbcc11b1be55b48              # double 0.1123215621094974
	.quad	0x3fefd6d8d696492b              # double 0.99497644340070701
	.quad	0x3fb88c57efb22d40              # double 0.095891471881420109
	.quad	0x3fec1658f66fd568              # double 0.87772796756932525
	.quad	0x3fe3dc5c7a988854              # double 0.62064956612108313
	.quad	0x3fc016095e877e8c              # double 0.1256725036209797
	.quad	0x3fef73f06e9ee004              # double 0.98290273290240337
	.quad	0x3fea459c77d30594              # double 0.82099746134933804
	.quad	0x3fa954ba152b4bf0              # double 0.049474539836999898
	.quad	0x3fd61d59c08bd196              # double 0.34554141810738181
	.quad	0x3feef6fc54602bc6              # double 0.96764961700079577
	.quad	0x3fe55e6ac65885bb              # double 0.6677755235615942
	.quad	0x3fcceaec3bc0b444              # double 0.22591927449812677
	.quad	0x3fdf27d49477aa4c              # double 0.48680605410360012
	.quad	0x3fe7dc7790df2d5a              # double 0.74566248221655518
	.quad	0x3fdf9b36cd9440a8              # double 0.49384851528248896
	.quad	0x3fae3af4709c4390              # double 0.059043539759051744
	.quad	0x3fea4eec94098dff              # double 0.82213429368533741
	.quad	0x3feb60cb1a49b0d8              # double 0.85556559690806022
	.quad	0x3feeb14d2a5d49b5              # double 0.95914324068353684
	.quad	0x3f948f601d9f95e0              # double 0.020078183944766681
	.quad	0x3f8a3beb48bdc5c0              # double 0.012809599072826638
	.quad	0x3fd91b6ae1ddbbe4              # double 0.39229843194237746
	.quad	0x3fc22c6993d4701c              # double 0.1419803592515344
	.quad	0x3fabbe49c6401a40              # double 0.054186158609855983
	.quad	0x3fd2d477e50c64a4              # double 0.29421803825386861
	.quad	0x3fdaf426e6d7eb40              # double 0.42115185302070657
	.quad	0x3fcc1ddd5b410c8c              # double 0.21966139751211633
	.quad	0x3fb3b20b976afc28              # double 0.076935505358946998
	.quad	0x3fa98ef6d4aeae90              # double 0.049918855154229225
	.quad	0x3fe8f39ff62107ae              # double 0.77973936149668588
	.quad	0x3fe5c0665a612268              # double 0.67973630573494592
	.quad	0x3fdf6040b8e90358              # double 0.49024980600011281
	.quad	0x3fe85b0149b76dd3              # double 0.76110901258237573
	.quad	0x3fe0019e6abfc44e              # double 0.50019760941916913
	.quad	0x3fbdeccaca78d4d0              # double 0.11689441149868007
	.quad	0x3fea9012eb9fbe3d              # double 0.83008714695274188
	.quad	0x3fdd7e3e990acfd6              # double 0.46083035417109153
	.quad	0x3fd70c026b99c192              # double 0.36010799892303524
	.quad	0x3febe64f8ca5208c              # double 0.87186410398227698
	.quad	0x3fca4daaeb837084              # double 0.20549522876433823
	.quad	0x3fe745909362824d              # double 0.7272417906388654
	.quad	0x3fd205cd16ec37d0              # double 0.2816040729384186
	.quad	0x3fe048ffba3ed945              # double 0.5089110028846241
	.quad	0x3fa2a8a0ca5979d0              # double 0.036442780209415937
	.quad	0x3fb6a0a2e4d43958              # double 0.088388615480856969
	.quad	0x3fd91fd69ead85dc              # double 0.39256825919991711
	.quad	0x3fea6c285f246f0c              # double 0.82570284445270791
	.quad	0x3fce4c7e4eea668c              # double 0.23670939305593597
	.quad	0x3fdc59e9baf2fb8a              # double 0.442987854545145
	.quad	0x3fecb6a6d79dcb18              # double 0.89729635346006642
	.quad	0x3fe450097b5021a9              # double 0.63477014622281047
	.quad	0x3fc824ae5ee743a4              # double 0.18861941942171001
	.quad	0x3fdb6ac6398662e6              # double 0.42839198701544345
	.quad	0x3fec9ca9b1740ed1              # double 0.89412388476235993
	.quad	0x3fcd362e56485248              # double 0.22821597302449192
	.quad	0x3fe1bae2540f09a3              # double 0.5540629998943597
	.quad	0x3fef69fdca9591a7              # double 0.9816883999561029
	.quad	0x3fe8da30f5d56db9              # double 0.77663467420955279
	.quad	0x3fc9ca653cfc0bdc              # double 0.20148911931764146
	.quad	0x3feb81f0e36b9728              # double 0.85961193483374121
	.quad	0x3fe4ed48a91ef5dc              # double 0.65396531135018732
	.quad	0x3fe124a319ee7b4b              # double 0.53572230400809795
	.quad	0x3feb3b83ecd5a657              # double 0.85101505524398646
	.quad	0x3fd9d5660422985e              # double 0.40364981082746521
	.quad	0x3fdfec9b9c54b81e              # double 0.49881639734928906
	.quad	0x3feee40bcd9b8a49              # double 0.96533765943269955
	.quad	0x3fd747c6a884b9f4              # double 0.3637558599174604
	.quad	0x3fe0575bfa0f9972              # double 0.51066397514368433
	.quad	0x3fe59c3c8641b979              # double 0.67532182905215088
	.quad	0x3fdcd3c71f79d79c              # double 0.45042589258025045
	.quad	0x3fef30efa1be8e63              # double 0.97472364035315839
	.quad	0x3fb63af5be4cefc8              # double 0.086837157211390736
	.quad	0x3fe9735ff5dc7474              # double 0.79533384341961133
	.quad	0x3fd50eb3c282f342              # double 0.3290223502661328
	.quad	0x3fc4833963f1471c              # double 0.16025464420322855
	.quad	0x3fed434e6d1a2b00              # double 0.91446610745455814
	.quad	0x3f99a27aa8582560              # double 0.025033871197626012
	.quad	0x3fba902aa9313898              # double 0.10376230841322565
	.quad	0x3fb48702577db088              # double 0.080185076103307051
	.quad	0x3feea40cf533646f              # double 0.95752571001788833
	.quad	0x3fe6a5b2203d3df3              # double 0.70772653862689905
	.quad	0x3fe31052c991c948              # double 0.59574260109938226
	.quad	0x3fe876e98b41fd4e              # double 0.76451565932067367
	.quad	0x3feb987d36f1d99e              # double 0.86236439448730429
	.quad	0x3fd2635ba35db9be              # double 0.28731432870599949
	.quad	0x3fac575addb83720              # double 0.055353965344791201
	.quad	0x3fd2d3b75cc1e0cc              # double 0.29417213495572692
	.quad	0x3fdc399120235088              # double 0.44101360453101579
	.quad	0x3fe861aeb834131a              # double 0.7619241330836275
	.quad	0x3fdfb8d51df1a268              # double 0.49565627979476412
	.quad	0x3fe2bb95d7ffe618              # double 0.5853985995046882
	.quad	0x3fe04d70dc264fac              # double 0.50945322988490238
	.quad	0x3fed5a7932d8e00c              # double 0.91729412013137467
	.quad	0x3feb3e83b4625e50              # double 0.85138116103457584
	.quad	0x3fd66c66bce062d8              # double 0.35036629147502429
	.quad	0x3fc4855b0fc9ee08              # double 0.16031969328820161
	.quad	0x3fda7b7ed4da15da              # double 0.41378756319349252
	.quad	0x3fe8994aeecf5df2              # double 0.76871248858054586
	.quad	0x3fe4f80a0da004ef              # double 0.65527823125026241
	.quad	0x3fb42ccf030384c8              # double 0.078808725581910655
	.quad	0x3fe1492447524145              # double 0.5401784317964845
	.quad	0x3fdded8c5faffba2              # double 0.46762379974819102
	.quad	0x3fd69c948d80589a              # double 0.35330690210811044
	.quad	0x3fd5e3ee6afd9b1a              # double 0.34203682373338185
	.quad	0x3fc5733034916da8              # double 0.167577768009193
	.quad	0x3fc3bf6beedaa460              # double 0.15427922404095096
	.quad	0x3fe7fd2325eb8175              # double 0.74965054899443706
	.quad	0x3fd3a0dfbaa11654              # double 0.30669396615517042
	.quad	0x3fdc8529e80e635a              # double 0.44562766706217405
	.quad	0x3fd87172727075d4              # double 0.38192425895416915
	.quad	0x3fe8529b4423a788              # double 0.76008380230381167
	.quad	0x3fee89fb786fb4cd              # double 0.95434354326939685
	.quad	0x3fc442f34eceeefc              # double 0.15829316471160115
	.quad	0x3fc250bd6380448c              # double 0.14308898313951024
	.quad	0x3fe2d4cb1212f54a              # double 0.58847573785866669
	.quad	0x3fe069f94303714d              # double 0.51293624008716565
	.quad	0x3fdaf85b856cc806              # double 0.42140853910234488
	.quad	0x3f91b45077b6db40              # double 0.017289407068996399
	.quad	0x3fee404a48db307b              # double 0.94534792165497039
	.quad	0x3fbe93812f9c2be8              # double 0.11943824207644094
	.quad	0x3fe0c6d8b228616a              # double 0.52427325054581542
	.quad	0x3fe4067836ef1b5a              # double 0.62578974465655368
	.quad	0x3fe9167fe86655b6              # double 0.78399653807235015
	.quad	0x3fd1dede4bbbc3e2              # double 0.27922780414433934
	.quad	0x3fb0fe1093c820f0              # double 0.066376720504311981
	.quad	0x3fd2dfe86be3a6d6              # double 0.29491625343380912
	.quad	0x3fe8bead2681adfd              # double 0.77327592392742839
	.quad	0x3fe7c402afc14eab              # double 0.74267706229371322
	.quad	0x3fdb0b4b3be58864              # double 0.42256432389524989
	.quad	0x3fec8429e0c2163c              # double 0.89113325021816747
	.quad	0x3fde8cb0a5d7fbe8              # double 0.47733703799889193
	.quad	0x3fda829270ed529e              # double 0.41421948459655222
	.quad	0x3febb34038d9e41d              # double 0.86563120940911953
	.quad	0x3fe91a3d2d7248ee              # double 0.78445299984221406
	.quad	0x3fe58912233f1cd9              # double 0.67298228153313311
	.quad	0x3fe9390706eac41c              # double 0.78821135855662616
	.quad	0x3fca9a27325f7c14              # double 0.20782937965029247
	.quad	0x3fdb7c24d31eec0c              # double 0.42945213906540469
	.quad	0x3fd7185828590a12              # double 0.36086086216178714
	.quad	0x3feb05d5f2012f26              # double 0.84446236864593938
	.quad	0x3fdc3f5d41989d56              # double 0.44136744886278245
	.quad	0x3fdb2e0bae781ccc              # double 0.42468540227896479
	.quad	0x3fee177644120f8c              # double 0.94036401076344722
	.quad	0x3fe56d1f30352d15              # double 0.66957053580827852
	.quad	0x3fd112c074b86980              # double 0.2667695178839935
	.quad	0x3fe0b0d7dacb0821              # double 0.52158730252290664
	.quad	0x3fc8e71beb352798              # double 0.19455288872478316
	.quad	0x3fd9a22040c4d6f6              # double 0.40052038502777465
	.quad	0x3fddd6cbe96df244              # double 0.46623513980719999
	.quad	0x3fe6256eb3f8b3a4              # double 0.69206938887292724
	.quad	0x3fea60274ae9353c              # double 0.8242374861817221
	.quad	0x3f8e181057fc0740              # double 0.014694335637162603
	.quad	0x3fe8623fda2ef3b8              # double 0.76199333776423028
	.quad	0x3f945ec2b12a2be0              # double 0.019892732680585001
	.quad	0x3feb87762a9c0c1f              # double 0.86028583833865813
	.quad	0x3fd7765cd373815a              # double 0.36659927987604635
	.quad	0x3fd5f2ce15c101ec              # double 0.34294464229972621
	.quad	0x3fe275751e0a2284              # double 0.57683807246310481
	.quad	0x3fec0bb441e49d37              # double 0.87642872686129791
	.quad	0x3fedf2dea025ff1c              # double 0.93589717177380604
	.quad	0x3fe8c37fe2650146              # double 0.77386469094930344
	.quad	0x3fc52b28b15d8780              # double 0.16537960682313368
	.quad	0x3fe9137018dca9d3              # double 0.7836227880082397
	.quad	0x3fc4629621798d10              # double 0.15925861963760513
	.quad	0x3fe88f0d53b214a4              # double 0.76746240946581112
	.quad	0x3fef7c9cd57e84af              # double 0.98396150301063822
	.quad	0x3fe3a60bd32d48e8              # double 0.61401931043135693
	.quad	0x3fe56c8d21fde35a              # double 0.66950089110387556
	.quad	0x3feb546399adfc59              # double 0.85405139937928276
	.quad	0x3f9791052aceab60              # double 0.023014145601034541
	.quad	0x3fdafb8ad9f0d71a              # double 0.4216029289558364
	.quad	0x3fc4a47b536910e0              # double 0.16126958439611538
	.quad	0x3fd094db781a162e              # double 0.25908552864743484
	.quad	0x3fe15aef20723953              # double 0.54235035264154374
	.quad	0x3fe25713ed648512              # double 0.57312961927178407
	.quad	0x3fe3ea5c15e05280              # double 0.62235836289126212
	.quad	0x3fdb41760ba0a9c0              # double 0.42587042937762121
	.quad	0x3fe0a03af415e509              # double 0.51955936119989687
	.quad	0x3fe738c152517d9a              # double 0.72567812040135782
	.quad	0x3fd9de4cec93f784              # double 0.40419314482993962
	.quad	0x3fe8cf72a11199df              # double 0.77532321413746874
	.quad	0x3fe96cbcca2129a0              # double 0.79452361563135198
	.quad	0x3fd4e23df130b8c0              # double 0.32630871347181412
	.quad	0x3fc6634597c9c5dc              # double 0.17490453635723113
	.quad	0x3fa92aef547d3d10              # double 0.04915569216120208
	.quad	0x3fe888563bd5e19d              # double 0.76664268194786056
	.quad	0x3feac14e77fae0c5              # double 0.83609698709099034
	.quad	0x3f9021fc57ca4540              # double 0.015754645212443963
	.quad	0x3fee8b83130b774f              # double 0.95453027457890893
	.quad	0x3fcd979e99d267c0              # double 0.23118956099352594
	.quad	0x3feb61b21179c721              # double 0.85567572987767815
	.quad	0x3fdec249e4f9d1f4              # double 0.48060843811916176
	.quad	0x3feee63b697b1d87              # double 0.96560450174085665
	.quad	0x3fd73febc5d78546              # double 0.36327642746444544
	.quad	0x3fe2c7f378b79537              # double 0.58690808847010245
	.quad	0x3fd4d9358d7bc190              # double 0.32575739685764749
	.quad	0x3feafeff6c9b8f9f              # double 0.8436276551478733
	.quad	0x3fdd2266dc50ccec              # double 0.45522471919248519
	.quad	0x3f4aeb94998ed800              # double 8.2154041148529977E-4
	.quad	0x3fcf9288deab6ab8              # double 0.24665938255824016
	.quad	0x3fdbe1fe32ade1ae              # double 0.43566851567404796
	.quad	0x3fd525caac26443a              # double 0.3304316216609241
	.quad	0x3fddad8c148b1a60              # double 0.46371747976482958
	.quad	0x3faa9687bd17e2c0              # double 0.051929704506567642
	.quad	0x3fe62d315ef26511              # double 0.6930167059355502
	.quad	0x3fb84e860b201be0              # double 0.094948175159614844
	.quad	0x3fe7c9b31c782349              # double 0.74337153969200032
	.quad	0x3fea18bab938555e              # double 0.8155187242106583
	.quad	0x3fd4c8d5b2de0112              # double 0.32475798099041342
	.quad	0x3feb5b83a3233268              # double 0.85492116797247508
	.quad	0x3fe90d95f5bf86ee              # double 0.78290842054067666
	.quad	0x3fe4830a0091d723              # double 0.64099598037021044
	.quad	0x3fddd01ead183920              # double 0.46582762626430174
	.quad	0x3fa2e9c21c8db2a0              # double 0.036939683900390152
	.quad	0x3fd85df8b49b4512              # double 0.38073556554179888
	.quad	0x3fb3bdc15dded270              # double 0.077114186685159458
	.quad	0x3fea74978ba74e8f              # double 0.82673241878588211
	.quad	0x3fefbcae6f551ad3              # double 0.99178239578835769
	.quad	0x3fe41a8d04ad73b5              # double 0.6282410708769165
	.quad	0x3fe329f142bc9ce7              # double 0.59886992487454627
	.quad	0x3fd9aec2ceb2649a              # double 0.40129156289328594
	.quad	0x3fbaf7e2280c4180              # double 0.10534490087252912
	.quad	0x3fe1e21db3f860bc              # double 0.55885205412325645
	.quad	0x3fd47794b282ce18              # double 0.31979863579474133
	.quad	0x3fe872e23546e27e              # double 0.76402388005870114
	.quad	0x3fc83779f294e458              # double 0.18919300408177508
	.quad	0x3fd6d43be642b4a6              # double 0.35670373426803292
	.quad	0x3fd3281e4a017cb8              # double 0.29932362773065391
	.quad	0x3fe72903c1fd929a              # double 0.72375667465947235
	.quad	0x3febef9e43f45475              # double 0.87300027153345516
	.quad	0x3feb1b58b5517a1f              # double 0.84708819783901734
	.quad	0x3fe9b13ead3616ec              # double 0.8028863318474726
	.quad	0x3fd2ab489f15bc08              # double 0.29170432601580432
	.quad	0x3fcc1d66997a4d30              # double 0.2196472405818013
	.quad	0x3feff80aff878168              # double 0.9990286818320273
	.quad	0x3fd716a7f305cf82              # double 0.36075781567273435
	.quad	0x3fd9e644244d1f06              # double 0.40467933220905683
	.quad	0x3fd899f21736a006              # double 0.38439609782153672
	.quad	0x3fec181438c62c70              # double 0.87793932999319502
	.quad	0x3fd7216145ca5bfe              # double 0.36141235175585951
	.quad	0x3f91f2a6ffc7fc60              # double 0.017527207719464477
	.quad	0x3fbdec21339a8960              # double 0.11688430318694065
	.quad	0x3fdd3e2f3f7233da              # double 0.45692044444950641
	.quad	0x3feec8c0e52bf8a0              # double 0.96200604210004669
	.quad	0x3fb07370a97049f0              # double 0.064261475912907207
	.quad	0x3fe2a72d591ce379              # double 0.5829073658452294
	.quad	0x3fead639e0468550              # double 0.83865064433863701
	.quad	0x3fed1b69f1f46506              # double 0.90959641701479721
	.quad	0x3fe95953a0f79b76              # double 0.79215413512143473
	.quad	0x3fe9ed3e337b358a              # double 0.81021032385767566
	.quad	0x3fda31a5c988a9ee              # double 0.40928024941481922
	.quad	0x3feeba8cfe9af195              # double 0.96027230956637998
	.quad	0x3fedaecfa3bb6f27              # double 0.92758924464167058
	.quad	0x3fee6d889004e1f7              # double 0.95087078217244325
	.quad	0x3fd28f896031c618              # double 0.29001078027713012
	.quad	0x3feea41c0016bf42              # double 0.95753288285593663
	.quad	0x3fb30d63c465fc20              # double 0.074423060845206113
	.quad	0x3f9b5749575eec40              # double 0.026700159032525983
	.quad	0x3fefc91bc9101c57              # double 0.99329938192466726
	.quad	0x3fc1504ee1036798              # double 0.13526330935456765
	.quad	0x3feb1ef8f427872d              # double 0.84753081976325506
	.quad	0x3fea0ed0395ed298              # double 0.81430827336460521
	.quad	0x3fa7045b8b7f2fc0              # double 0.044955120829029749
	.quad	0x3feec2c88f5e23c8              # double 0.96127727509985394
	.quad	0x3f9edd5c1f5b76c0              # double 0.030141295827766923
	.quad	0x3fd58db614099898              # double 0.33677436787400827
	.quad	0x3fee451576d1650f              # double 0.94593308645849727
	.quad	0x3fe6764b788c1f8b              # double 0.70194028419881371
	.quad	0x3feedc56022ab826              # double 0.9643964807817198
	.quad	0x3fe7ebb827b409cf              # double 0.74752433542772134
	.quad	0x3fdba24776be576e              # double 0.43177973362013844
	.quad	0x3fb5067a4f38f838              # double 0.082130092946472
	.quad	0x3fe033cb0f3ffef3              # double 0.5063224122859239
	.quad	0x3f90be03b525eee0              # double 0.016349847728163946
	.quad	0x3fe147723d7e8245              # double 0.5399714661653624
	.quad	0x3fe7c5874ad67fa8              # double 0.7428623639752816
	.quad	0x3fedc089c47be727              # double 0.92975319267063561
	.quad	0x3feb68d867d16bbd              # double 0.85654850270235949
	.quad	0x3fee88d0a415d345              # double 0.95420105026151048
	.quad	0x3fe8292bdf468c98              # double 0.75502580269348396
	.quad	0x3facfff1aa487e20              # double 0.056640197788734747
	.quad	0x3fe6cac0b1b5e3ea              # double 0.71225008687099245
	.quad	0x3fddc74b33354942              # double 0.46528892517848786
	.quad	0x3fe9d6967dbc8606              # double 0.80744480665106333
	.quad	0x3fe7270f68b8f64a              # double 0.72351808980574472
	.quad	0x3fe4cf9b660b73dc              # double 0.65034265452015516
	.quad	0x3feadd6ef07742dd              # double 0.83953043905247748
	.quad	0x3fef45a5e9bc5632              # double 0.97725196506025314
	.quad	0x3fe3b1668abcb852              # double 0.61540534112078604
	.quad	0x3fe3b8cefde264b8              # double 0.61630963885104162
	.quad	0x3fd8f816bb5b976a              # double 0.39014213844926948
	.quad	0x3fecc05dafb12888              # double 0.89848217310761047
	.quad	0x3fc046921599d104              # double 0.12715364508370197
	.quad	0x3fe5f8126e129d16              # double 0.68653222559524596
	.quad	0x3fe17de41415c00f              # double 0.54661754534572704
	.quad	0x3fe1e7747ed2d5a3              # double 0.55950379152516339
	.quad	0x3fe50d02611e33f8              # double 0.65783804863315165
	.quad	0x3fc44da77aff20a4              # double 0.15861981874173126
	.quad	0x3fe376538115e7d5              # double 0.60819411479973928
	.quad	0x3fe86cd7da06e9c0              # double 0.76328651984595552
	.quad	0x3fed633d6ce955d2              # double 0.91836425086756379
	.quad	0x3fe1ad77c5d20a1b              # double 0.55242527615365888
	.quad	0x3fcdf3e9f5fc22e0              # double 0.23400616179448885
	.quad	0x3fea623007c4f4bd              # double 0.82448579328015337
	.quad	0x3fdb4e88a126f064              # double 0.42666831719885168
	.quad	0x3fee25a3200d7589              # double 0.94209438572185988
	.quad	0x3fe054d915faf42d              # double 0.51035742085480751
	.quad	0x3fa81bfe90921280              # double 0.047088580272462544
	.quad	0x3fe15bd2aeaa3bc8              # double 0.5424588595795905
	.quad	0x3fea36be6836b25e              # double 0.81918259004812533
	.quad	0x3fe5427d56ab8cab              # double 0.664366406705445
	.quad	0x3fcb462a283c9ee0              # double 0.21307875599563086
	.quad	0x3fc85643fd816554              # double 0.1901326167888252
	.quad	0x3fe3953521c96391              # double 0.61196381186447202
	.quad	0x3fd28f272480720a              # double 0.28998735966322953
	.quad	0x3fddbb5c65aed922              # double 0.46456060342770134
	.quad	0x3fe0ebedbeca409b              # double 0.52879988921815213
	.quad	0x3fe6bf17d3a10eec              # double 0.71082679113211844
	.quad	0x3fe76c2232c04969              # double 0.73194990074470667
	.quad	0x3fd668a1b5d3da28              # double 0.35013621098133507
	.quad	0x3fd6037c2d63fd24              # double 0.3439627116458317
	.quad	0x3fc4403ede062340              # double 0.15821061936392233
	.quad	0x3fe5dbd9df0d6f56              # double 0.68308728756845016
	.quad	0x3fe4e149b33ba5c1              # double 0.65250096327252305
	.quad	0x3feba07a44c86897              # double 0.86333955225133507
	.quad	0x3fe5d8bd4c96f353              # double 0.68270745238224106
	.quad	0x3fd19f5b6eb0b734              # double 0.27535138902281919
	.quad	0x3fe53471c8d51a1e              # double 0.66265191292842807
	.quad	0x3fa48327568dcd50              # double 0.040063123050368632
	.quad	0x3fb97a7f37de30a0              # double 0.09952540506327745
	.quad	0x3fd3c2d7f22eb60c              # double 0.30876730585700396
	.quad	0x3fd99551af0a73fe              # double 0.39973871320563592
	.quad	0x3fe40bce1190b126              # double 0.62644103460983014
	.quad	0x3fc032d90cd22b1c              # double 0.12655175329231205
	.quad	0x3fd3420fce795eac              # double 0.3009070888851777
	.quad	0x3f9dae8ca3e1b440              # double 0.028986165525953789
	.quad	0x3fd040a68f1465b6              # double 0.253945960737464
	.quad	0x3fd5f5e55c1036be              # double 0.34313329687652672
	.quad	0x3fdaba6c98a10400              # double 0.41762843041584574
	.quad	0x3fd08dbc5cef6bb4              # double 0.25865086627680545
	.quad	0x3feef31faac90453              # double 0.96717818600167004
	.quad	0x3fca0e9753e14368              # double 0.20357028575611058
	.quad	0x3fd53b41d54a0fa6              # double 0.3317417700675328
	.quad	0x3fd9b1cf5a10f0b0              # double 0.40147765918278377
	.quad	0x3febc10b7f28e4e4              # double 0.86731505237471795
	.quad	0x3fd31f8d985e374c              # double 0.29880084876719049
	.quad	0x3fd90bce1564ca84              # double 0.39134552087049479
	.quad	0x3fb20dfd82f3d1c0              # double 0.070525974722676743
	.quad	0x3fed20903d63dd32              # double 0.91022502889874191
	.quad	0x3fef72821c54b2d7              # double 0.98272805722589395
	.quad	0x3fb68a7eb16152c8              # double 0.08805076437540571
	.quad	0x3f97310887130fc0              # double 0.022647984737673488
	.quad	0x3fefdee52ff03cbc              # double 0.99595889437650653
	.quad	0x3fea1d90fe49bf0a              # double 0.81610917726172372
	.quad	0x3fe1e4442f751c45              # double 0.55911454457317034
	.quad	0x3fc0286f5a70b7a8              # double 0.12623397747068776
	.quad	0x3fe8c478bbb6c366              # double 0.77398335135340512
	.quad	0x3f85ddc33083eb40              # double 0.010676884573049272
	.quad	0x3feccfa7986faa37              # double 0.9003484704274517
	.quad	0x3fabf77ae690fe20              # double 0.054622498174009104
	.quad	0x3fda48f116f58226              # double 0.41070201150981445
	.quad	0x3fde4cdb895ef642              # double 0.47344101348048551
	.quad	0x3feae5490b0ca5d9              # double 0.84048893125617063
	.quad	0x3fe099c0bebfdd8f              # double 0.51876866584545833
	.quad	0x3fe99a1d798d1082              # double 0.80006288280903015
	.quad	0x3fe4d29fb8d0113a              # double 0.65071092697375055
	.quad	0x3fecfdc71855ee45              # double 0.90597872498569443
	.quad	0x3fae0685e8943590              # double 0.058643517151817481
	.quad	0x3fcf341aeb6beff0              # double 0.24377762313076756
	.quad	0x3fe5281b5cd447f7              # double 0.66114586001117359
	.quad	0x3fea1c937a72e371              # double 0.81598829189088751
	.quad	0x3fd6e7049a7c69a4              # double 0.35785021864435351
	.quad	0x3fe4d4917c120b64              # double 0.65094827873722894
	.quad	0x3fe01bbdfe2d6e1d              # double 0.503386494102816
	.quad	0x3fea63478d370049              # double 0.82461907940888424
	.quad	0x3fda7d3740ef3aa6              # double 0.41389256802805574
	.quad	0x3fcb5cc6a9a75d74              # double 0.21376879962802386
	.quad	0x3fdd7c0f89424294              # double 0.46069706348593198
	.quad	0x3fb4ccab5b69e118              # double 0.081248006646891802
	.quad	0x3fe00be70e11ac42              # double 0.50145294902666415
	.quad	0x3fe8e770f23b97f1              # double 0.7782520991429448
	.quad	0x3fd24e290bbfab6a              # double 0.28602052829108138
	.quad	0x3fe3527114abe655              # double 0.60381368672751512
	.quad	0x3fdd558e40514f3c              # double 0.45834690361992947
	.quad	0x3fdc4a143a8bf69c              # double 0.44202142445997494
	.quad	0x3fc45a039677d8d0              # double 0.15899700972631203
	.quad	0x3faa7d3548008940              # double 0.051736512221639774
	.quad	0x3fe53a79011f9952              # double 0.66338777751370004
	.quad	0x3fe8aa0b10f4cca5              # double 0.77075722991721263
	.quad	0x3fb00b28f9107310              # double 0.062670288855269485
	.quad	0x3fe149a62850fc50              # double 0.54024036287581545
	.quad	0x3fe47b5342b2bde3              # double 0.64005435015672807
	.quad	0x3fedc9a304c1ab48              # double 0.93086386612899563
	.quad	0x3feff8f6b19c1dd7              # double 0.99914107026500686
	.quad	0x3fe8e6981e3fb791              # double 0.77814870746600395
	.quad	0x3fb9723aad46cb08              # double 0.099399249366609266
	.quad	0x3fe86dc17b97c29f              # double 0.76339792384358762
	.quad	0x3fe6c737f2a13144              # double 0.71181867016415667
	.quad	0x3fe36b38122af3d4              # double 0.60683826015849229
	.quad	0x3fed9ec73f18e656              # double 0.92563211749729635
	.quad	0x3fdc42e5d2390800              # double 0.44158311395233341
	.quad	0x3fcf3b503fe633d0              # double 0.24399760360793588
	.quad	0x3fe67232d0cb150d              # double 0.70144024639071889
	.quad	0x3fe9b750e20fa80a              # double 0.8036274352318753
	.quad	0x3fede3bf555945d7              # double 0.93405119580909968
	.quad	0x3fe32441e996308a              # double 0.59817596075437618
	.quad	0x3fe62af8170cd45a              # double 0.69274525167441969
	.quad	0x3fd689dc196db326              # double 0.35216429217580225
	.quad	0x3fe58be467bb5ae3              # double 0.67332668552520791
	.quad	0x3febc302d30bddc2              # double 0.86755505771628116
	.quad	0x3fe8bd2372c3b8b0              # double 0.77308819212864499
	.quad	0x3fc0dc9236520ffc              # double 0.13173129703875464
	.quad	0x3fe76dbc8f6e21ee              # double 0.7321455766078182
	.quad	0x3febbbd0544a136d              # double 0.86667648756757176
	.quad	0x3fef00abc8635236              # double 0.96883191240573896
	.quad	0x3fdb0b31d7e35e14              # double 0.42255827029063764
	.quad	0x3fe658e9a2e65c12              # double 0.69835359398246255
	.quad	0x3fe93d12f330c550              # double 0.78870532510897284
	.quad	0x3fd7506fab1f77da              # double 0.36428443633292107
	.quad	0x3fe1d0e9ecbd709a              # double 0.55675216902047286
	.quad	0x3fe5b8d6e337993b              # double 0.67881340387683708
	.quad	0x3fdc9ee3b6eac902              # double 0.44719784605980817
	.quad	0x3fe3ea1ae2ed78b8              # double 0.62232727357675
	.quad	0x3fdbd89f73a2981a              # double 0.43509660999768729
	.quad	0x3fe7f2d1ba0a8675              # double 0.74839102111964328
	.quad	0x3fc53a85a8675fc8              # double 0.165848452785893
	.quad	0x3fe99ecbbf226174              # double 0.80063426333349108
	.quad	0x3fc91b5ecd727c80              # double 0.19614777595140609
	.quad	0x3fef179443ed3530              # double 0.9716283156100527
	.quad	0x3fef88f4120dde6a              # double 0.98546794439512309
	.quad	0x3fd5389aa15b8ad4              # double 0.33157983548714509
	.quad	0x3fd61f80b2c8455c              # double 0.3456727739258747
	.quad	0x3fe2d2f6d580f045              # double 0.5882524652474862
	.quad	0x3fc39385a81b35d8              # double 0.15293951710047682
	.quad	0x3fe8baef726b3bf2              # double 0.77281925532758877
	.quad	0x3fe3af30d195637f              # double 0.61513558325087547
	.quad	0x3fb323596e601b88              # double 0.074758138129352614
	.quad	0x3fdcd46d7fa75b22              # double 0.45046555963692658
	.quad	0x3fdc8a448b1d1fc6              # double 0.44593919358566969
	.quad	0x3fc6c5ecdc34b8f4              # double 0.17791519882434381
	.quad	0x3fbc23183fad1a38              # double 0.10991050295442839
	.quad	0x3fe164a41186cf1a              # double 0.54353526518977735
	.quad	0x3fe9c5e485bd87bc              # double 0.80540681954538895
	.quad	0x3fa2bee6c1382a80              # double 0.036612711988785129
	.quad	0x3fea988f9ea43b27              # double 0.83112317070649488
	.quad	0x3fd46f1b2eb6d600              # double 0.31928138315137744
	.quad	0x3fd8dfaae2ee3de6              # double 0.38865158234781771
	.quad	0x3fed40a92974028a              # double 0.91414316269227069
	.quad	0x3fc2d47dd5a7308c              # double 0.14710972721366422
	.quad	0x3fdc32031b7ecd9e              # double 0.44055249867525414
	.quad	0x3fc33613ab3d8708              # double 0.1500877939352494
	.quad	0x3fccdca6df9806f0              # double 0.22548376004856818
	.quad	0x3fe808ad53310a21              # double 0.75105921028472633
	.quad	0x3f9c652327b91880              # double 0.027729558276654576
	.quad	0x3feac7e13f262420              # double 0.83689939817225322
	.quad	0x3fe72e9235f0f6c2              # double 0.72443495307353367
	.quad	0x3fec4db996b45765              # double 0.88448790964569624
	.quad	0x3fe4013f0ab1304f              # double 0.6251521309691358
	.quad	0x3fde9611d29f3d02              # double 0.477909522710391
	.quad	0x3fae116bc256a0b0              # double 0.058726661179492878
	.quad	0x3fb6ba0b0b3eb8c0              # double 0.088776293034899645
	.quad	0x3fc44c75716bb1c4              # double 0.15858333623999787
	.quad	0x3fe0676b42211d15              # double 0.51262438693894075
	.quad	0x3fe084080f77bdfa              # double 0.51611712475818128
	.quad	0x3fde8442746048a2              # double 0.4768224846349175
	.quad	0x3fe20be8c19a24b7              # double 0.5639537602702579
	.quad	0x3fe422b0c12a0b2c              # double 0.6292346737612653
	.quad	0x3fb9a93c91ac9fc8              # double 0.1002385955476931
	.quad	0x3fe117372756c7c6              # double 0.53408391650577225
	.quad	0x3fd493d3dcef0f54              # double 0.32152268004960161
	.quad	0x3fca698773ebbe98              # double 0.20634549293707916
	.quad	0x3fbdd87678de7e50              # double 0.11658420992761731
	.quad	0x3fd91bf539333630              # double 0.39233141504232361
	.quad	0x3fe63693bd9897dc              # double 0.69416224508745072
	.quad	0x3fe0acbfc9ec2311              # double 0.52108754575701444
	.quad	0x3fb6c845873cfdf8              # double 0.088993402020598356
	.quad	0x3fe935a12f32267b              # double 0.78779658525418428
	.quad	0x3fc9fd0391de1624              # double 0.20303387281835328
	.quad	0x3fe6901e98cf31e7              # double 0.70509271474435031
	.quad	0x3fd6d16519bd52a4              # double 0.35653045190455601
	.quad	0x3fe3b4183a2ec1a8              # double 0.61573420871541362
	.quad	0x3fed9c441c7a96d4              # double 0.92532544672277561
	.quad	0x3fb7f76d85f6d3b8              # double 0.093619198995681496
	.quad	0x3fd9ecb65b74cd32              # double 0.40507277423167232
	.quad	0x3fe08e4526b4233f              # double 0.51736695823010581
	.quad	0x3fc51fa8f5aaa998              # double 0.16502868647996816
	.quad	0x3fbfe09674bbbf88              # double 0.12452068662582694
	.quad	0x3fef8cdd186ea6db              # double 0.98594527027054412
	.quad	0x3fbb87d8da9c5ca8              # double 0.10754161202599966
	.quad	0x3fe8db0b5a4085fc              # double 0.77673881175377301
	.quad	0x3fe4b7621aaa31d1              # double 0.64738564689610645
	.quad	0x3fe45267de0fbe23              # double 0.63505929347406143
	.quad	0x3fdaf74baa53718c              # double 0.42134372361558614
	.quad	0x3fe8722538a025c5              # double 0.76393376407320857
	.quad	0x3fc4a78a1712c3fc              # double 0.16136289717317698
	.quad	0x3fef69905c5a8444              # double 0.98163621938523037
	.quad	0x3fe6b582fb818660              # double 0.70965718385941656
	.quad	0x3fe1c003d1c5ea39              # double 0.55468932124433146
	.quad	0x3fd3e486d79fd170              # double 0.31082316453036807
	.quad	0x3fdb441c88e94f6a              # double 0.4260321938538626
	.quad	0x3fbccf52c07da440              # double 0.11253850173456303
	.quad	0x3fd31f3ca1659d22              # double 0.29878154527109946
	.quad	0x3fe58b97e7c55c33              # double 0.67329020755540225
	.quad	0x3fe5319e80e333bf              # double 0.66230702565518829
	.quad	0x3fe82bcb46b722e0              # double 0.75534595309826713
	.quad	0x3fc755174e4e9f4c              # double 0.18228427241887812
	.quad	0x3fca78acfb7f20bc              # double 0.20680773048503009
	.quad	0x3fc28d6473855180              # double 0.1449399532381328
	.quad	0x3fd9ea335360ffae              # double 0.40491946356268727
	.quad	0x3fd05039784e1376              # double 0.25489651440175665
	.quad	0x3feb37aac474cb4c              # double 0.8505452954326329
	.quad	0x3fe00e34e3b69242              # double 0.50173420405605662
	.quad	0x3fef815e05ed2b99              # double 0.98454190404423791
	.quad	0x3fe5bcc2a5f2afed              # double 0.67929203426092288
	.quad	0x3fe189d2484ee36b              # double 0.5480739033001617
	.quad	0x3fd7ec7aeee7941c              # double 0.37380860643890101
	.quad	0x3fc120b902faf2fc              # double 0.13381111760636333
	.quad	0x3fe2480244e61267              # double 0.57129014450817983
	.quad	0x3fc906af7bf827e8              # double 0.19551652482215265
	.quad	0x3fe5e2a8623179bb              # double 0.68391818216678446
	.quad	0x3fec9c252182b35b              # double 0.89406067414311552
	.quad	0x3fe2b762ed42b7b8              # double 0.58488603916133908
	.quad	0x3fee1b34503b462f              # double 0.94082084341261474
	.quad	0x3fb34e2d3cd0f580              # double 0.0754116319157756
	.quad	0x3fe7f3d201048cf6              # double 0.74851322363647799
	.quad	0x3fe6c82a145c00db              # double 0.71193412758295993
	.quad	0x3feacc03e02e7fa2              # double 0.83740419183230963
	.quad	0x3fe8fac8630220e6              # double 0.78061312997399734
	.quad	0x3fe11664265a117d              # double 0.53398330202666922
	.quad	0x3fd2748dc6e95d14              # double 0.28836388039549488
	.quad	0x3fb57835f564f730              # double 0.083865520869008447
	.quad	0x3fe4b58768efd0ba              # double 0.64715929503883918
	.quad	0x3fdc149930e9c5ea              # double 0.43875722672154771
	.quad	0x3fe3b5c0b733a830              # double 0.61593662053679132
	.quad	0x3fe360345bcadd52              # double 0.60549371650896888
	.quad	0x3feac2159b8257f1              # double 0.83619194386369433
	.quad	0x3fed7300faf8226e              # double 0.92028855340420335
	.quad	0x3fe499b73fdc26d9              # double 0.64376413796091037
	.quad	0x3fe42bde4cb697bf              # double 0.6303550241761896
	.quad	0x3fe7e81129140d59              # double 0.74707849524603909
	.quad	0x3f82035d63c0bb80              # double 0.0087954803530843062
	.quad	0x3fd608a1ff6ac5fc              # double 0.34427690451693116
	.quad	0x3fe4463b523ff96b              # double 0.63357320846971044
	.quad	0x3fd7412e1904eff4              # double 0.36335327571191489
	.quad	0x3fec96bb1031433d              # double 0.89339974558433932
	.quad	0x3fd5b3b1d33b0dd6              # double 0.33909268978115159
	.quad	0x3fe5897bc0fc2ea1              # double 0.67303264324569423
	.quad	0x3feb096f779239e8              # double 0.84490178445576891
	.quad	0x3fe4481dc53c066f              # double 0.6338032581554226
	.quad	0x3fec8697e6c21a42              # double 0.89142985410655506
	.quad	0x3fe391f0e469dda8              # double 0.61156506168383817
	.quad	0x3fe37cf7cef071f2              # double 0.60900488298244526
	.quad	0x3fdba655627d10be              # double 0.43202719324132122
	.quad	0x3fd1dce4363a1058              # double 0.27910714431368921
	.quad	0x3fdb990611fd48ec              # double 0.4312148261716533
	.quad	0x3fe9ad7fb69df172              # double 0.80242906253219659
	.quad	0x3fd3ea50333d6554              # double 0.3111763477696361
	.quad	0x3fd1cdad6278a3fa              # double 0.27817854515393459
	.quad	0x3fde21d306fb84e6              # double 0.47081447297939716
	.quad	0x3fc23e31f55564c0              # double 0.14252304534128335
	.quad	0x3fd8cdc4c216cd94              # double 0.38755911783229036
	.quad	0x3fb722766bb56270              # double 0.090369607254055628
	.quad	0x3fe8eac047695439              # double 0.7786561388735499
	.quad	0x3faec68239a43c60              # double 0.060108251129457058
	.quad	0x3fcfef31a7ed285c              # double 0.24948712062388523
	.quad	0x3fd4cf84d38a876a              # double 0.32516594560922008
	.quad	0x3fee5922791aa91d              # double 0.94838069584992335
	.quad	0x3fbff6642c7d9a50              # double 0.12485338293263593
	.quad	0x3fd1c6d49bd4e604              # double 0.27776065080578882
	.quad	0x3fe55a3994431c13              # double 0.66726378400278674
	.quad	0x3fd5bede051df8f4              # double 0.33977461337771264
	.quad	0x3fc9bf4df136c304              # double 0.20115064886115175
	.quad	0x3fabcfd78e1a5890              # double 0.054320083710238554
	.quad	0x3fea9017870c9ed4              # double 0.83008934380355947
	.quad	0x3feb677199ccc6e3              # double 0.85637741126103284
	.quad	0x3fe2654061304369              # double 0.57485980016836635
	.quad	0x3fa9da39b03d1080              # double 0.050493052257054138
	.quad	0x3fe7bf7542629b0f              # double 0.74212134328704049
	.quad	0x3fe73a0875c45837              # double 0.72583411218034299
	.quad	0x3fe53db9dbff8e68              # double 0.66378491371547188
	.quad	0x3fc227d2a9118f48              # double 0.14184029822637911
	.quad	0x3f9234834419eb40              # double 0.017778445273943122
	.quad	0x3fccf5d1ce143394              # double 0.22625181734511257
	.quad	0x3fc4a9c8ca89e358              # double 0.16143140687543212
	.quad	0x3fc4d7b129b853fc              # double 0.16283239876852906
	.quad	0x3feb0f6d7df0529f              # double 0.84563326451696585
	.quad	0x3fe48f2b07a11096              # double 0.64247657289571936
	.quad	0x3fe0036e91924104              # double 0.50041893417258665
	.quad	0x3fe0993f33c8863b              # double 0.51870689500737599
	.quad	0x3feed50ebba9b550              # double 0.9635080018321478
	.quad	0x3fee33a4bb39921d              # double 0.94380413596497059
	.quad	0x3f4d8296d829a000              # double 9.005772156571723E-4
	.quad	0x3fd5729957195ade              # double 0.3351195669724073
	.quad	0x3fe9da32f3d2a7d8              # double 0.80788562413840292
	.quad	0x3fe95136ecf86ad1              # double 0.79116388591077158
	.quad	0x3fe3b83380f4d820              # double 0.61623549639512376
	.quad	0x3fd90674b6a01286              # double 0.3910190375757242
	.quad	0x3fe3fed21ca30a3b              # double 0.62485604851855869
	.quad	0x3fdef462cf686de4              # double 0.48366613630943633
	.quad	0x3fef71faeed385e6              # double 0.98266359945062898
	.quad	0x3fe56b6c20739ca0              # double 0.66936308229641739
	.quad	0x3fdaa94c8885c176              # double 0.41658318836473229
	.quad	0x3fc0889da780907c              # double 0.12916918448275172
	.quad	0x3fe23966cee3aa93              # double 0.56950703056402785
	.quad	0x3fcf40156c1be8f8              # double 0.24414317873726765
	.quad	0x3fe670d9db3dd50d              # double 0.70127575703250644
	.quad	0x3fee85385c1a8756              # double 0.95376222599973448
	.quad	0x3fec5ca9aae3ca77              # double 0.88631137253680847
	.quad	0x3fca7414b21f807c              # double 0.20666750619330176
	.quad	0x3fb76a9995b5ee80              # double 0.091470336008507402
	.quad	0x3fee86d7dd127e7c              # double 0.95396035364315379
	.quad	0x3fe56e708b753a7f              # double 0.66973139989734409
	.quad	0x3fbf48500a01fd78              # double 0.12219715351419846
	.quad	0x3fb9b3d034115ae8              # double 0.10039998313127863
	.quad	0x3fd27a9e258fe876              # double 0.28873399418046775
	.quad	0x3fddca5fc951df96              # double 0.46547693882120578
	.quad	0x3fe8f08cf6d47cd2              # double 0.77936409195890577
	.quad	0x3fd892da46cd3842              # double 0.38396317400190949
	.quad	0x3fe6661b31e61fd0              # double 0.69996413942225821
	.quad	0x3fea9fda9dab2640              # double 0.83201342386855259
	.quad	0x3fec876ae81dce6b              # double 0.89153046927681368
	.quad	0x3fd7c22ab710e008              # double 0.37122600438624476
	.quad	0x3feb0eb336c4b234              # double 0.84554444024030894
	.quad	0x3fea2fb4ccf6d17d              # double 0.81832351715142659
	.quad	0x3fde5a968472f252              # double 0.47427905020211825
	.quad	0x3fe8d37fe9938513              # double 0.77581782932625953
	.quad	0x3fefa34b1c8905e5              # double 0.98868327687540313
	.quad	0x3fc5a7e9930bde7c              # double 0.1691867797851393
	.quad	0x3fcdb48a46d51d2c              # double 0.23207214792840014
	.quad	0x3feb05c5fcddd533              # double 0.84445475948328974
	.quad	0x3fe3573b95bd65b7              # double 0.60439852949200812
	.quad	0x3fc146cb5945f88c              # double 0.13497297152565968
	.quad	0x3fe90f7c0c559458              # double 0.78314020546953156
	.quad	0x3fe2657375b693e6              # double 0.57488415709360363
	.quad	0x3fec342f8da093e8              # double 0.88137033139775856
	.quad	0x3fee277ce34dbbd3              # double 0.94232029338115308
	.quad	0x3fab183e80aad320              # double 0.052919343191581314
	.quad	0x3fea0bd44b57d8e0              # double 0.81394400325259752
	.quad	0x3fec6b78a6a1c236              # double 0.88811905427252813
	.quad	0x3fdfeba33f1bcd9c              # double 0.49875718272161307
	.quad	0x3fd5490dad6581e6              # double 0.33258382733586556
	.quad	0x3fe5e7a158fec23a              # double 0.68452517873635732
	.quad	0x3fed35c22a95947a              # double 0.91281231229062532
	.quad	0x3fe4d4c1f1529020              # double 0.65097138531973897
	.quad	0x3fe4b06c4551ecbe              # double 0.64653600253168242
	.quad	0x3fdc49a329481d4a              # double 0.44199446708121981
	.quad	0x3fd575af773a0816              # double 0.33530794757109683
	.quad	0x3fe62be06d22c06d              # double 0.69285603824211039
	.quad	0x3fcb0273bc3edbdc              # double 0.21101233188320989
	.quad	0x3fe554a68f62bf3a              # double 0.66658332829499689
	.quad	0x3fb63cb734c0d228              # double 0.086863947276306974
	.quad	0x3fe7eab09598216e              # double 0.74739865510586667
	.quad	0x3fe4d869b3698936              # double 0.65141758958296836
	.quad	0x3feeca61dddd9b1c              # double 0.96220486958631878
	.quad	0x3febd791ebbbc420              # double 0.8700646976632278
	.quad	0x3febd757b970dba9              # double 0.87003694743076665
	.quad	0x3fc1a9360326139c              # double 0.13797640947100553
	.quad	0x3f8646bcf72f19c0              # double 0.010877109807449936
	.quad	0x3fe9b63afd86bd4f              # double 0.80349492565975733
	.quad	0x3fe5fee9906950cd              # double 0.68736723142003486
	.quad	0x3f972c2b74c9a040              # double 0.022629431727551941
	.quad	0x3fe66a876b5f0ea8              # double 0.70050402613602092
	.quad	0x3fc74192489daf58              # double 0.18168858094883933
	.quad	0x3fd3605f6ca43e7e              # double 0.3027571259453693
	.quad	0x3fd9fd7e14964caa              # double 0.40609695444545457
	.quad	0x3fe0088aac149ac9              # double 0.50104268655271611
	.quad	0x3f713473882fef80              # double 0.0042004120796227395
	.quad	0x3fe27ba3f3842c94              # double 0.57759282647875176
	.quad	0x3fddabe694fd400a              # double 0.46361698674900309
	.quad	0x3fe999bdaced157e              # double 0.80001720213537886
	.quad	0x3fd8cd56a8d92bc8              # double 0.38753286828130884
	.quad	0x3fef8128108cd996              # double 0.98451617462596874
	.quad	0x3fdf2d8a6469ef48              # double 0.48715457731281164
	.quad	0x3feddf5a47630a4e              # double 0.93351472800015656
	.quad	0x3febb7d8fba9fa69              # double 0.86619233277435825
	.quad	0x3fa30d4c7e091e70              # double 0.037210836777885059
	.quad	0x3fe8ef5e04e24f3b              # double 0.77921963647756998
	.quad	0x3fd7f9eef5cdc158              # double 0.37462972645064019
	.quad	0x3fd74666fedd2146              # double 0.36367201699296847
	.quad	0x3fd3a81f45ddd048              # double 0.30713636229416297
	.quad	0x3feba481245978d8              # double 0.86383111094962839
	.quad	0x3fd2fdb42041127c              # double 0.29673483991454197
	.quad	0x3f929b79757c9500              # double 0.018171212955299332
	.quad	0x3fe5f8c3a01e10a1              # double 0.68661671898782484
	.quad	0x3fada50b2d703f50              # double 0.057899808212936166
	.quad	0x3fde0426738ec6c4              # double 0.46900330815251956
	.quad	0x3fdaf746bc72dd82              # double 0.42134254840080854
	.quad	0x3fdf0f16eb150c70              # double 0.48529599148986957
	.quad	0x3faa1c45294227f0              # double 0.050996934210232214
	.quad	0x3fe140785ea1be39              # double 0.53911989672446403
	.quad	0x3fe92ac44a906cf7              # double 0.78647055209458372
	.quad	0x3fa3d3cff6e92460              # double 0.03872537507101792
	.quad	0x3fe10e7025c65d3d              # double 0.53301246049787887
	.quad	0x3febc6016378ea62              # double 0.86792058399380445
	.quad	0x3fc513a63eeff398              # double 0.16466215203390955
	.quad	0x3fe9ba303be77db7              # double 0.80397807788897679
	.quad	0x3fa5efc2e8a74860              # double 0.042844859027937998
	.quad	0x3fda3fc293690db4              # double 0.41014160533469668
	.quad	0x3fc18fb3174fc7d0              # double 0.13719786299003411
	.quad	0x3fee647b4ccb8860              # double 0.94976582526238573
	.quad	0x3f9369e2113183e0              # double 0.018958599376109109
	.quad	0x3fec302cb6bf483e              # double 0.88088069622813925
	.quad	0x3fd8dc25a11ec126              # double 0.38843670591724544
	.quad	0x3feab1746bb23b79              # double 0.8341619590226933
	.quad	0x3fe5e520116fd0eb              # double 0.68421939283009914
	.quad	0x3fe018e675c69ea5              # double 0.50303957942101774
	.quad	0x3fe2d3b8b8e80574              # double 0.58834491838949399
	.quad	0x3fd203f94095aeee              # double 0.28149253184413581
	.quad	0x3fe93c19d1fcde74              # double 0.78858653081165508
	.quad	0x3fdee124074cc1be              # double 0.48249150002359531
	.quad	0x3fca84a7418b7704              # double 0.20717325878552384
	.quad	0x3fe8376d6060b71e              # double 0.7567660219553749
	.quad	0x3fe6960fe9fff025              # double 0.70581813529088733
	.quad	0x3fa24be40cb868a0              # double 0.03573525100019137
	.quad	0x3f73924fea2f4480              # double 0.0047782060309639052
	.quad	0x3fcf8bfa62da285c              # double 0.24645929171339531
	.quad	0x3fda399d87844ada              # double 0.40976656183299343
	.quad	0x3fe87384fecad38b              # double 0.76410150303000657
	.quad	0x3fd98b4b1ceb237e              # double 0.3991267950446441
	.quad	0x3fe198de99250a54              # double 0.5499108306033329
	.quad	0x3fee1e251e86b022              # double 0.94117980920919231
	.quad	0x3fc0e1652167eac4              # double 0.13187851077221613
	.quad	0x3fea123dfddd8f09              # double 0.81472682555292508
	.quad	0x3fe2c54099e369c1              # double 0.58657865577998092
	.quad	0x3fe59bc0da8822a3              # double 0.6752628582190322
	.quad	0x3fd13357fe56c9a2              # double 0.26875877225679734
	.quad	0x3fe0d505cc3d31e9              # double 0.52600374117315341
	.quad	0x3feced2e9453bd0e              # double 0.90395287485253717
	.quad	0x3fdfe1240e481c76              # double 0.49811650652595263
	.quad	0x3fe64f65f8d2848b              # double 0.69719217870819372
	.quad	0x3fcd3285cdb64358              # double 0.22810432953385873
	.quad	0x3f972221827929a0              # double 0.022591136539895751
	.quad	0x3fe450773d32e3e8              # double 0.63482248261345564
	.quad	0x3fee27abb40d5749              # double 0.94234261671474784
	.quad	0x3feaec33706af977              # double 0.8413331218396668
	.quad	0x3fd06faff9be8876              # double 0.25681685818756905
	.quad	0x3fcfd2f8eae724c4              # double 0.24862586469524761
	.quad	0x3fd73f3a41994cfc              # double 0.36323410421501001
	.quad	0x3fb1583ac1b46480              # double 0.067752525607277292
	.quad	0x3fed969c94eed3fe              # double 0.92463521088086487
	.quad	0x3fe97978c9d7a93c              # double 0.79607810423230018
	.quad	0x3fec5da3fb4c96b0              # double 0.88643073160047514
	.quad	0x3fc9722833aac280              # double 0.19879629633716789
	.quad	0x3feaa5b5c3c5592f              # double 0.83272827373983727
	.quad	0x3fdc5444a0d38768              # double 0.44264331536952861
	.quad	0x3fe66489f9278236              # double 0.69977282202677915
	.quad	0x3fb8fc74e7184280              # double 0.097602182788486757
	.quad	0x3fe6d8cf172e7ed4              # double 0.7139659359708852
	.quad	0x3fd5bd67059d8350              # double 0.33968520687453907
	.quad	0x3fe7e1dccd7cb142              # double 0.74632110723681699
	.quad	0x3fe579f37e251922              # double 0.67113661420515691
	.quad	0x3fe443c9fcd56f99              # double 0.6332750261458272
	.quad	0x3fe6a3200dc5e46f              # double 0.70741274538080556
	.quad	0x3feb4d4d461a5f17              # double 0.8531862611007196
	.quad	0x3fcb479283bdc0b8              # double 0.2131217139499364
	.quad	0x3fe095768c08d6ba              # double 0.51824500418179942
	.quad	0x3fd7cc844ba4ee16              # double 0.37185771357664643
	.quad	0x3fe04924ed713e10              # double 0.50892874122104281
	.quad	0x3fc76eac82419754              # double 0.18306499824682965
	.quad	0x3fc8c7547441ed48              # double 0.19358306576382689
	.quad	0x3fda1f1080ab109c              # double 0.40814602437263559
	.quad	0x3fd89df33f128ea6              # double 0.38464051398680466
	.quad	0x3fd596a9ccf26e66              # double 0.33732075704913311
	.quad	0x3fd9bd1a2729693e              # double 0.40216687988653976
	.quad	0x3fe9e84f623f6935              # double 0.80960816563609816
	.quad	0x3f9135bb04816240              # double 0.016806528234470486
	.quad	0x3fef361d80c59732              # double 0.97535586500882787
	.quad	0x3fe64c483282890a              # double 0.69681177010741746
	.quad	0x3feb79218cb81623              # double 0.85853650554844696
	.quad	0x3fe9cff9e9672fec              # double 0.806637721886998
	.quad	0x3fea685e6b2086ce              # double 0.82524033473256408
	.quad	0x3fd2652a8c92ff72              # double 0.28742469528150771
	.quad	0x3fe86615d1eb9871              # double 0.76246157646234114
	.quad	0x3fd45f487fd9da6c              # double 0.31831562505195765
	.quad	0x3fc979a61f9dab54              # double 0.19902493041748903
	.quad	0x3fe0b969f4f20fee              # double 0.52263353196076223
	.quad	0x3fe203b83f21ab24              # double 0.56295406656622449
	.quad	0x3fb9009f01b15e00              # double 0.097665727532664448
	.quad	0x3fdb2055c4d557b4              # double 0.42384857389458408
	.quad	0x3fd978e256c5f168              # double 0.39800318216273078
	.quad	0x3fecda400915277a              # double 0.90164186262084844
	.quad	0x3fb3e1af37b79538              # double 0.077662421324551256
	.quad	0x3fc14590dee61bd8              # double 0.1349354828236915
	.quad	0x3fd1078c6354e712              # double 0.26608571720463303
	.quad	0x3fd010ed72d49380              # double 0.25103317464736818
	.quad	0x3fba26b4ac5e2e80              # double 0.10215310295296298
	.quad	0x3fd20c594124b746              # double 0.2820037017980791
	.quad	0x3fe88e5ebab3c359              # double 0.76737915482781738
	.quad	0x3fef44a6b6147894              # double 0.97713027536862506
	.quad	0x3fe48a69223ef80b              # double 0.64189583481470558
	.quad	0x3fae633ac225adb0              # double 0.059350811194998854
	.quad	0x3fe4cdb0018d5869              # double 0.65010834029341169
	.quad	0x3fe203e4fe44dc4f              # double 0.56297540342246488
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
