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
	.quad	32                              # 0x20
	.quad	32                              # 0x20
	.quad	32                              # 0x20
	.quad	62                              # 0x3e
	.quad	62                              # 0x3e
	.quad	62                              # 0x3e
	.quad	94                              # 0x5e
	.quad	94                              # 0x5e
	.quad	94                              # 0x5e
	.quad	125                             # 0x7d
	.quad	125                             # 0x7d
	.quad	125                             # 0x7d
	.quad	154                             # 0x9a
	.quad	154                             # 0x9a
	.quad	154                             # 0x9a
	.quad	180                             # 0xb4
	.quad	180                             # 0xb4
	.quad	180                             # 0xb4
	.quad	207                             # 0xcf
	.quad	207                             # 0xcf
	.quad	207                             # 0xcf
	.quad	236                             # 0xec
	.quad	236                             # 0xec
	.quad	236                             # 0xec
	.quad	267                             # 0x10b
	.quad	267                             # 0x10b
	.quad	267                             # 0x10b
	.quad	296                             # 0x128
	.quad	296                             # 0x128
	.quad	296                             # 0x128
	.quad	326                             # 0x146
	.quad	326                             # 0x146
	.quad	326                             # 0x146
	.quad	356                             # 0x164
	.quad	356                             # 0x164
	.quad	356                             # 0x164
	.quad	387                             # 0x183
	.quad	387                             # 0x183
	.quad	387                             # 0x183
	.quad	415                             # 0x19f
	.quad	415                             # 0x19f
	.quad	415                             # 0x19f
	.quad	443                             # 0x1bb
	.quad	443                             # 0x1bb
	.quad	443                             # 0x1bb
	.quad	471                             # 0x1d7
	.quad	471                             # 0x1d7
	.quad	471                             # 0x1d7
	.quad	498                             # 0x1f2
	.quad	498                             # 0x1f2
	.quad	498                             # 0x1f2
	.quad	528                             # 0x210
	.quad	528                             # 0x210
	.quad	528                             # 0x210
	.quad	557                             # 0x22d
	.quad	557                             # 0x22d
	.quad	557                             # 0x22d
	.quad	587                             # 0x24b
	.quad	587                             # 0x24b
	.quad	587                             # 0x24b
	.quad	614                             # 0x266
	.quad	614                             # 0x266
	.quad	614                             # 0x266
	.quad	647                             # 0x287
	.quad	647                             # 0x287
	.quad	647                             # 0x287
	.quad	672                             # 0x2a0
	.quad	672                             # 0x2a0
	.quad	672                             # 0x2a0
	.quad	701                             # 0x2bd
	.quad	701                             # 0x2bd
	.quad	701                             # 0x2bd
	.quad	732                             # 0x2dc
	.quad	732                             # 0x2dc
	.quad	732                             # 0x2dc
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	763                             # 0x2fb
	.quad	793                             # 0x319
	.quad	793                             # 0x319
	.quad	793                             # 0x319
	.quad	822                             # 0x336
	.quad	822                             # 0x336
	.quad	822                             # 0x336
	.quad	854                             # 0x356
	.quad	854                             # 0x356
	.quad	854                             # 0x356
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	913                             # 0x391
	.quad	939                             # 0x3ab
	.quad	939                             # 0x3ab
	.quad	939                             # 0x3ab
	.quad	968                             # 0x3c8
	.quad	968                             # 0x3c8
	.quad	968                             # 0x3c8
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	99                              # 0x63
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
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	99                              # 0x63
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
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
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
	.quad	0                               # 0x0
	.quad	6                               # 0x6
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
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	99                              # 0x63
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
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
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
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3fe3ba5de9bf37b3              # double 0.61649985936832363
	.quad	0x3feb3240cd3ced1b              # double 0.84988441548867699
	.quad	0x3fe10ac774544812              # double 0.53256581039954853
	.quad	0x3fc276588f28dcc0              # double 0.14423663130012265
	.quad	0x3fd5afa8be77784a              # double 0.33884638405095713
	.quad	0x3fd34ad5cbacf4aa              # double 0.30144257440754052
	.quad	0x3feeda5194543261              # double 0.96415022821890883
	.quad	0x3fd48a9086773034              # double 0.32095730906872011
	.quad	0x3fe0350b5aa63f12              # double 0.5064751406189052
	.quad	0x3fe98a8a8890f727              # double 0.79816176102733472
	.quad	0x3fe6416705031b84              # double 0.69548369387563058
	.quad	0x3fbc7fe167fee058              # double 0.11132630146937694
	.quad	0x3fed83a97145a014              # double 0.92232200740272896
	.quad	0x3fe56e7a6783f9a6              # double 0.66973610132099703
	.quad	0x3fe0425820293eae              # double 0.50809866219966238
	.quad	0x3fc4586b4949bb5c              # double 0.1589483363963734
	.quad	0x3fc622544ffcbb34              # double 0.17292264848352945
	.quad	0x3fb2e5b97d780210              # double 0.073817818767573096
	.quad	0x3fefb24b24a09128              # double 0.99051434663536941
	.quad	0x3fe8261a4b370f06              # double 0.75465120974010413
	.quad	0x3fd96a11d474e15e              # double 0.39709897754393875
	.quad	0x3fc3f51c52c72220              # double 0.15591768304717935
	.quad	0x3fc7f3cacbda6c1c              # double 0.18712744668741343
	.quad	0x3fe86b182cc2b437              # double 0.76307305090234123
	.quad	0x3fee5818aab82ec7              # double 0.94825394958157794
	.quad	0x3fbc128e2e7d29c8              # double 0.10965813288672799
	.quad	0x3fef182e26e3e4a5              # double 0.97170169444793386
	.quad	0x3fedbaa705227bf0              # double 0.92903471949455074
	.quad	0x3fd84825249da47e              # double 0.37940338683853969
	.quad	0x3fc835bb0eb6e324              # double 0.18913973062969902
	.quad	0x3fdfcd648910e98c              # double 0.49691117654187944
	.quad	0x3feb9785a1b7ba01              # double 0.86224633775219683
	.quad	0x3fe1e5dec0324245              # double 0.55931031740517112
	.quad	0x3fd738af4940f184              # double 0.36283476022415351
	.quad	0x3fe0e7de6124abed              # double 0.52830428098002147
	.quad	0x3fe5b6b8ee0a258f              # double 0.67855497829548195
	.quad	0x3fd2494addd72cc8              # double 0.28572341598619433
	.quad	0x3f9356b57c4a8580              # double 0.018885455809714013
	.quad	0x3fed537850c33234              # double 0.9164392068283349
	.quad	0x3fd842e07f486f98              # double 0.37908184461570604
	.quad	0x3fcc6d6b005f4220              # double 0.22208917158288077
	.quad	0x3fde0cf87e0449ba              # double 0.46954166704486122
	.quad	0x3fe2aac91d582822              # double 0.58334785205193307
	.quad	0x3fea87fd776f08fe              # double 0.82910035445118502
	.quad	0x3fd077a2b5c80128              # double 0.25730197670056265
	.quad	0x3fdc4901dc6e0638              # double 0.44195601011606156
	.quad	0x3fefec448633ec35              # double 0.99759126864899505
	.quad	0x3fdae86b3f08944a              # double 0.42043572574249721
	.quad	0x3fef0912bdfbb93a              # double 0.96985756975281068
	.quad	0x3fd61f27515ee2b0              # double 0.34565146395065494
	.quad	0x3fe95303b72b26cf              # double 0.7913836076270061
	.quad	0x3fc7f296698dc1c0              # double 0.18709068445197197
	.quad	0x3fd055cf1acc7816              # double 0.25523736588536516
	.quad	0x3fea4458297d05e6              # double 0.82084282019803534
	.quad	0x3fe4818561f56eee              # double 0.64081067211688292
	.quad	0x3feb49477fa88c13              # double 0.8526952260330084
	.quad	0x3fe3379aa85b0b6e              # double 0.60053761369668535
	.quad	0x3fe572ccee936384              # double 0.67026373478721313
	.quad	0x3fd44dee1693782c              # double 0.31725647167866344
	.quad	0x3f98f37c6a6aa4a0              # double 0.024366325373794795
	.quad	0x3fd52acd0ae377b4              # double 0.33073736251196384
	.quad	0x3fbc2e706560f060              # double 0.11008360362115033
	.quad	0x3fc658ffbb81e72c              # double 0.17459103255878838
	.quad	0x3fd125692b8e4e96              # double 0.26790837529663614
	.quad	0x3fcc10aeeff915d4              # double 0.21925913541251296
	.quad	0x3fe3ae216b86fba9              # double 0.6150061702863826
	.quad	0x3fef56fb73310150              # double 0.97936794756246037
	.quad	0x3fdee0b07685b58e              # double 0.48246394705241691
	.quad	0x3fe7c6335cb34f97              # double 0.74294441323808058
	.quad	0x3fecef89af34aa59              # double 0.90424045772426631
	.quad	0x3feb9cfbf02fb88e              # double 0.86291310225876017
	.quad	0x3fdc41930dbaeeae              # double 0.4415023454746273
	.quad	0x3fdc67e8bf82c828              # double 0.44384211256249495
	.quad	0x3fce5a736c75c694              # double 0.23713534160520011
	.quad	0x3fb17f96d1c71648              # double 0.068353105750326937
	.quad	0x3fc0b3e40cd7985c              # double 0.13048983218249333
	.quad	0x3fe2aa82b345410a              # double 0.58331427587293772
	.quad	0x3fc54cb0e0c9f758              # double 0.16640292144796365
	.quad	0x3fdb37b2b67b7722              # double 0.42527454205070303
	.quad	0x3fee99e3827deded              # double 0.95628524290753847
	.quad	0x3fe228210122f4db              # double 0.56739855024320762
	.quad	0x3fdc1ed4fc3dee84              # double 0.43938183434486455
	.quad	0x3fc1a0fa48afff20              # double 0.1377251486701363
	.quad	0x3fda1deb2a77d3e4              # double 0.40807608744881763
	.quad	0x3fd001337b018490              # double 0.25007330906198266
	.quad	0x3feb2397b8ef33dc              # double 0.84809480781552393
	.quad	0x3fe1e5a89200e87c              # double 0.55928448215787752
	.quad	0x3fd07817d758d508              # double 0.25732990293484237
	.quad	0x3faef31a8f748e90              # double 0.060448484431870786
	.quad	0x3fc03245d29062dc              # double 0.12653420239873625
	.quad	0x3fe7b3c4c140cf61              # double 0.74069440598257696
	.quad	0x3fd8c9274cc07f0c              # double 0.38727743621164801
	.quad	0x3fe43ec11c4b66c1              # double 0.63266044164921464
	.quad	0x3fa18766caf53fb0              # double 0.034236156726023537
	.quad	0x3fbd44e353021ad8              # double 0.11433239723747179
	.quad	0x3fdea376be760428              # double 0.47872704124171372
	.quad	0x3f826535b07eeb80              # double 0.0089821047293889844
	.quad	0x3fbce79f956a1d88              # double 0.11290929220023405
	.quad	0x3fd6d0257b75f136              # double 0.35645424896917477
	.quad	0x3fa77ec5e8759470              # double 0.045889076830271658
	.quad	0x3fee3a6842aebcb4              # double 0.94462979339541286
	.quad	0x3fec23d9b591ea5e              # double 0.87937627280127706
	.quad	0x3fd1f1cc05ca1b16              # double 0.28038311543825623
	.quad	0x3f10f0c7f8ec2000              # double 6.4623074859437857E-5
	.quad	0x3fed2054551a781f              # double 0.91019646283871569
	.quad	0x3fe2dab49fcf7a14              # double 0.58919745648364819
	.quad	0x3fb22781de440988              # double 0.070915333522895918
	.quad	0x3f8320ddeebfbfc0              # double 0.0093400324330729089
	.quad	0x3fd5550e73a58936              # double 0.33331643384566989
	.quad	0x3fce94d5b2071218              # double 0.23891707604174495
	.quad	0x3fe75905da586e9b              # double 0.72961704869836141
	.quad	0x3fe9c1411ed3ec53              # double 0.80484062214908147
	.quad	0x3fd8fc989f666faa              # double 0.39041724745197348
	.quad	0x3fe3c7af78a5c50c              # double 0.61812566341373687
	.quad	0x3fe499452501697a              # double 0.64370972850456032
	.quad	0x3fd3b8a6b5c05964              # double 0.30814521550327911
	.quad	0x3fb04ebdf274c1c0              # double 0.063701507275943037
	.quad	0x3fdf183a0a1843ce              # double 0.48585368142908869
	.quad	0x3fe5bcde5829c68c              # double 0.67930524081585153
	.quad	0x3fece1a8903f3ca5              # double 0.90254619763608857
	.quad	0x3feb52c54d4b5927              # double 0.85385384651707319
	.quad	0x3fc147ddf7d9c990              # double 0.13500570871435658
	.quad	0x3fd4a176abd2a7fc              # double 0.32235495357110699
	.quad	0x3fc1fb5f11ae283c              # double 0.14048374522491425
	.quad	0x3fd4966dddc5544c              # double 0.32168146760279082
	.quad	0x3fb230b7bf0035d8              # double 0.071055873995838126
	.quad	0x3fe1bfbcf44432df              # double 0.55465553005486956
	.quad	0x3fd11a6c0c11a052              # double 0.26723767450903779
	.quad	0x3fbb1e04cf8cae20              # double 0.10592680041434521
	.quad	0x3fe88e7eb79e9d5d              # double 0.76739440787506974
	.quad	0x3fe33bbb2f988da6              # double 0.60104140564037745
	.quad	0x3f9d45abe0372c20              # double 0.028586087760953061
	.quad	0x3fed81e91d5a9d04              # double 0.92210822804636949
	.quad	0x3fe292ea11d42c18              # double 0.5804338787287433
	.quad	0x3fe9e1b574157113              # double 0.80880234406098095
	.quad	0x3fcadcf571e083f0              # double 0.20986812649155651
	.quad	0x3fe5c944dd2eb5f6              # double 0.68081896972370148
	.quad	0x3fd68fd2d6a4ef9e              # double 0.35252829514842599
	.quad	0x3fcfbc6cbcda9150              # double 0.2479377672326657
	.quad	0x3feb55c34224a0a6              # double 0.85421908300942984
	.quad	0x3fbfebd70369e660              # double 0.12469238122312154
	.quad	0x3fa74624f8eb0cd0              # double 0.045457034478681657
	.quad	0x3fe3e64fe1efe50f              # double 0.62186426285112073
	.quad	0x3fce220dbfb42ef8              # double 0.23541423664607186
	.quad	0x3fe651616d15131c              # double 0.6974341516985052
	.quad	0x3fee11570fae5411              # double 0.93961670935334685
	.quad	0x3fede9aa28906f57              # double 0.93477352068610287
	.quad	0x3feb1ec389cb1f6b              # double 0.8475053492811474
	.quad	0x3faa349f279e9af0              # double 0.051182721697207501
	.quad	0x3fe78f5e6ebbc1c2              # double 0.73625108363744851
	.quad	0x3fe32b5c4d05239e              # double 0.59904303591712327
	.quad	0x3fdbb768eca79d86              # double 0.43306944952788518
	.quad	0x3fe3b68bfb499d88              # double 0.6160335452995449
	.quad	0x3fedd4ef718f99bb              # double 0.93224308185454363
	.quad	0x3f82180af1199e00              # double 0.0088349203899289463
	.quad	0x3fe9191a8aee0da0              # double 0.78431441435570903
	.quad	0x3fe02a2faf72ac6b              # double 0.50514969126869624
	.quad	0x3fe34e9c94170259              # double 0.60334614681057552
	.quad	0x3fe6e6952b94f229              # double 0.71564730178903802
	.quad	0x3fd55fd86ac5ebce              # double 0.33397493769706166
	.quad	0x3fed150d169d153a              # double 0.90881971756667856
	.quad	0x3fefc91ca631deb7              # double 0.99329979381487631
	.quad	0x3feeecca406656dd              # double 0.96640503480986306
	.quad	0x3fe921344a7bf25a              # double 0.78530325458229844
	.quad	0x3fdfec9108e0b306              # double 0.49881387583700165
	.quad	0x3fed4503a2bdc3c3              # double 0.91467458520320866
	.quad	0x3fec6e97771f266a              # double 0.88849995866730791
	.quad	0x3fe096b85b63504d              # double 0.51839845513542004
	.quad	0x3fedb1b370fba044              # double 0.92794200961089545
	.quad	0x3feaea2a2e33bdce              # double 0.84108456634378981
	.quad	0x3fc9882b222ca9a4              # double 0.19946803253817535
	.quad	0x3febccfc3319d7c1              # double 0.86877260189680083
	.quad	0x3fd48645cc4cf41c              # double 0.32069535208921862
	.quad	0x3fc9ccccd2cabe6c              # double 0.20156250279022758
	.quad	0x3fddca89da3c0962              # double 0.46548696815457025
	.quad	0x3fd60c48812e29e0              # double 0.34449970832124954
	.quad	0x3fca5f5d77ebd614              # double 0.20603531222848004
	.quad	0x3fe1d298b9ce525f              # double 0.55695759096358788
	.quad	0x3fb3654014f09548              # double 0.07576370726800008
	.quad	0x3fc949ca70595c68              # double 0.19756441579622508
	.quad	0x3fdc6e7d11585318              # double 0.44424368566369443
	.quad	0x3fd7c5e310cab75c              # double 0.37145306243734466
	.quad	0x3fd001334abdda46              # double 0.25007326411233455
	.quad	0x3fc1c8d0eae06f00              # double 0.13894092053021012
	.quad	0x3f91ee5083f85380              # double 0.017510660223780672
	.quad	0x3feabc75c470377f              # double 0.83550537459244356
	.quad	0x3fb8d744c05dcbc8              # double 0.097034737553072792
	.quad	0x3fed372ee4060f8d              # double 0.91298622642396909
	.quad	0x3fe7a439b5441521              # double 0.73879704860215523
	.quad	0x3fe47dd458c95e23              # double 0.6403600439179552
	.quad	0x3fc2b1fd5c99d8f0              # double 0.14605681439906659
	.quad	0x3fb3bc93f4504c60              # double 0.077096221110239949
	.quad	0x3fe738ae2cd173ce              # double 0.72566899064588042
	.quad	0x3fe3f79e13609aaf              # double 0.62397674355164223
	.quad	0x3fe85646348fb3c0              # double 0.76053152337919272
	.quad	0x3fd145566ef0662c              # double 0.26985703309910281
	.quad	0x3fbfd5f9610b79e8              # double 0.12435873622187155
	.quad	0x3fef02d4cc52fe57              # double 0.9690956106860068
	.quad	0x3fe128512a991c0a              # double 0.53617151565492915
	.quad	0x3fd7dc1914b2f320              # double 0.37280871411694427
	.quad	0x3febd27d07abd0c0              # double 0.86944438455841322
	.quad	0x3fd0eb81d8d11308              # double 0.26437421964173824
	.quad	0x3fcefcbf36b5f8f0              # double 0.2420882241385196
	.quad	0x3feb0c2fce2c66ea              # double 0.84523763912440342
	.quad	0x3fd1748988512372              # double 0.27273786842538705
	.quad	0x3fa832e8aeccf940              # double 0.04726340421483366
	.quad	0x3fd08af7333b9926              # double 0.25848178866580651
	.quad	0x3fee5b61072f3857              # double 0.94865466502393303
	.quad	0x3fe88921f1dd3ba3              # double 0.76673981894588328
	.quad	0x3fee236e76a11b73              # double 0.94182513398923928
	.quad	0x3fcf013962467ca8              # double 0.24222485827065054
	.quad	0x3fc6b6ac2835c444              # double 0.17744972194080522
	.quad	0x3fe814d7b37f5182              # double 0.75254426057885859
	.quad	0x3fe9e2601a596cde              # double 0.8088837160716158
	.quad	0x3fede2527dc6a7be              # double 0.93387722554802344
	.quad	0x3fc8cf28df38e8e8              # double 0.19382201098944241
	.quad	0x3fc567ae062a5ca4              # double 0.16722655583428037
	.quad	0x3fddff3fc5352ff2              # double 0.46870416887827482
	.quad	0x3fd5624760afc726              # double 0.33412346307805973
	.quad	0x3fd94d1d77ed3d4e              # double 0.39533173286050249
	.quad	0x3fee21b1bd48ac13              # double 0.94161307305819475
	.quad	0x3fd00d84598ead96              # double 0.25082501169046034
	.quad	0x3fd71c6441c6f530              # double 0.36110788749268163
	.quad	0x3fdf16e71f549670              # double 0.48577287730800034
	.quad	0x3fe5a1f054806d7b              # double 0.67601791862709548
	.quad	0x3fe144e68e388b11              # double 0.53966071870340404
	.quad	0x3fe26e59ff5f20b1              # double 0.57597064854873825
	.quad	0x3fc0d5fa2121eba8              # double 0.13153006189153627
	.quad	0x3fa9429f08d14150              # double 0.049336404634802933
	.quad	0x3fd66cef6e6f8dd0              # double 0.35039888176671941
	.quad	0x3fe087afc80d440a              # double 0.51656331131573663
	.quad	0x3fc7320dc5f57dd8              # double 0.18121502080883434
	.quad	0x3fd99cbe4e76d4d8              # double 0.40019185698049631
	.quad	0x3fee6b8329f5f167              # double 0.95062406726314641
	.quad	0x3f9858517f8e99e0              # double 0.023774407778228368
	.quad	0x3fe72eb2752044c0              # double 0.72445032955342725
	.quad	0x3fe49c84a67e6395              # double 0.64410622137357854
	.quad	0x3fd914156082ff6a              # double 0.39185079979869519
	.quad	0x3fec15af47d66439              # double 0.87764705687289457
	.quad	0x3fe5226b4abeda64              # double 0.66045155142530776
	.quad	0x3febb37f52722f55              # double 0.86566129782429846
	.quad	0x3fb3934b882f8a50              # double 0.076466294048750826
	.quad	0x3feaabe97ca10b0b              # double 0.83348535863510287
	.quad	0x3fca57310f2e6c10              # double 0.20578587762142364
	.quad	0x3fc28ec5abcca0b8              # double 0.14498206032408745
	.quad	0x3fea683a576996e7              # double 0.82522313187356822
	.quad	0x3fd41cd9b56a060c              # double 0.31426089016176273
	.quad	0x3fd37192647b8cce              # double 0.30380687535052864
	.quad	0x3fc69534517e1584              # double 0.17642835597159146
	.quad	0x3fe6512563ef1947              # double 0.69740552442889558
	.quad	0x3fd42033d6df3d70              # double 0.3144654844627075
	.quad	0x3fee31b050589a6e              # double 0.94356551830862911
	.quad	0x3fdc8179d0e00610              # double 0.44540257833441022
	.quad	0x3fe7384daf396146              # double 0.72562298034157702
	.quad	0x3fe250452d3a301f              # double 0.57229861100632096
	.quad	0x3fe4a72f7a0100dc              # double 0.64540838078394414
	.quad	0x3fb3a77c91d84fe8              # double 0.076774392706567718
	.quad	0x3fd7e6668242a25a              # double 0.37343752594691682
	.quad	0x3fd1bbd43df2fe4a              # double 0.27708917665220112
	.quad	0x3fde993ae1cddc6e              # double 0.47810241748033533
	.quad	0x3f82a71959631680              # double 0.0091077785877005102
	.quad	0x3fe0473c90c0ac2d              # double 0.50869587203977107
	.quad	0x3fcfd0267d55340c              # double 0.24853974456564776
	.quad	0x3fe58134b26ef94d              # double 0.67202219820300402
	.quad	0x3fdedf1264f743e6              # double 0.48236522540997695
	.quad	0x3fe73bcf52e63957              # double 0.72605100814125023
	.quad	0x3fedaafc383ced47              # double 0.92712222084029683
	.quad	0x3fe0f2c47c9692d9              # double 0.52963470777157362
	.quad	0x3fb74c72dd764098              # double 0.0910102644613765
	.quad	0x3fe1402139a4534f              # double 0.53907834299261903
	.quad	0x3fb724cbc84efff0              # double 0.090405212787117994
	.quad	0x3feb1235f06b4cac              # double 0.84597298580992719
	.quad	0x3fea289d1a5e7e9d              # double 0.81745772505015035
	.quad	0x3fe3755d416d88c9              # double 0.60807669428711464
	.quad	0x3fde2ccea79a9682              # double 0.47148481719555246
	.quad	0x3fdf3b63957fdfb0              # double 0.48799981689034677
	.quad	0x3fb4269c2eee2e78              # double 0.078714143235794398
	.quad	0x3fe745c561e1de0f              # double 0.72726697080264724
	.quad	0x3f8d3281b5af8800              # double 0.014256490094286534
	.quad	0x3fb6c79bb5b020d8              # double 0.088983280045911939
	.quad	0x3fdb0bb593c7343c              # double 0.42258967811068593
	.quad	0x3fd7ca7a29d4bf88              # double 0.37173322758734928
	.quad	0x3fe129b7a1d3d5cc              # double 0.53634244543962373
	.quad	0x3fc36a90674d741c              # double 0.1516895775229451
	.quad	0x3fe33836b72a0426              # double 0.6006120278763134
	.quad	0x3fd92aa7199f42ee              # double 0.39322831632766408
	.quad	0x3fcfaff8fe757cf0              # double 0.24755775856736006
	.quad	0x3fe4f3691863e67f              # double 0.65471319926946581
	.quad	0x3fe4584fbdc3a4dc              # double 0.63578021109892857
	.quad	0x3fd0ca25aa60f402              # double 0.26233808172747797
	.quad	0x3fe11c30ec955d05              # double 0.53469129760461043
	.quad	0x3fd2251530e5dc2c              # double 0.28351335311112069
	.quad	0x3fee9de33e4d1916              # double 0.95677339714237308
	.quad	0x3fc5c5958dd00140              # double 0.17009229111136825
	.quad	0x3fd22d07f966e4a8              # double 0.28399848323494803
	.quad	0x3fd2fefd3573786a              # double 0.2968132993681879
	.quad	0x3fd3773d5b2c493c              # double 0.30415281203854128
	.quad	0x3fd05840393079ca              # double 0.25538640580080296
	.quad	0x3fbb39d8f09aae38              # double 0.10635143159986959
	.quad	0x3fc5116e68c43400              # double 0.16459446063564087
	.quad	0x3fe8e370a5f58ab7              # double 0.7777636758222205
	.quad	0x3fe0e7757c8ddb0b              # double 0.52825426413514387
	.quad	0x3fccfd5e612042ec              # double 0.22648219816667081
	.quad	0x3fc82be3841687a4              # double 0.1888393778763745
	.quad	0x3fc81a1dec6173cc              # double 0.18829702417397554
	.quad	0x3fddc8e129d3ecc8              # double 0.4653857143855018
	.quad	0x3fe59102a4ab8828              # double 0.67395145570867943
	.quad	0x3fe57fcbf68323b5              # double 0.67185018679548725
	.quad	0x3fc6a0fc2619e30c              # double 0.17678787098318371
	.quad	0x3fd36569b9756784              # double 0.30306475745384653
	.quad	0x3fb4b27b3a61c748              # double 0.08084840941753868
	.quad	0x3fe011ea2afb7874              # double 0.50218685526830464
	.quad	0x3fe840ee8e1edef9              # double 0.75792625196387953
	.quad	0x3fe88ad2e60f6529              # double 0.76694626744862149
	.quad	0x3fc0abd137134ab4              # double 0.13024344624735351
	.quad	0x3fe5a61608c50dcd              # double 0.67652417862739755
	.quad	0x3fe9f0e5c26bb893              # double 0.81065643284616085
	.quad	0x3fe6cdba13f72305              # double 0.71261314296234046
	.quad	0x3feb8a50b161feef              # double 0.8606341804988612
	.quad	0x3fd715948454c7f0              # double 0.36069214747396838
	.quad	0x3fcabb7bdcc32b5c              # double 0.20884655265248397
	.quad	0x3fed68c23dd4a955              # double 0.91903793407736123
	.quad	0x3fe020e7b3112904              # double 0.50401673292188365
	.quad	0x3fe88f409b15f7d6              # double 0.76748686113546216
	.quad	0x3fee3950c5353b93              # double 0.9444965221135696
	.quad	0x3f8e196114b44900              # double 0.014696844524710873
	.quad	0x3fd7668942f84b10              # double 0.36563331165341229
	.quad	0x3fcd28181d764a88              # double 0.22778607786729688
	.quad	0x3fe6e99c0798946d              # double 0.7160167835578598
	.quad	0x3fb260bfe85a4c30              # double 0.071788782335986623
	.quad	0x3fec3d59e0316253              # double 0.88248914516140997
	.quad	0x3fe2d8a7443373f6              # double 0.58894694633965972
	.quad	0x3fd88ace1ffe9654              # double 0.38347199558697764
	.quad	0x3fd51634e40c9d9a              # double 0.32948038359105569
	.quad	0x3fce7c5c11d9713c              # double 0.23817015525390584
	.quad	0x3fe21d4870ae1175              # double 0.56607458122066012
	.quad	0x3fd7abef90976d70              # double 0.36986912842049602
	.quad	0x3fe048eb883beee7              # double 0.50890137298798954
	.quad	0x3fcd7c2b407d8e3c              # double 0.23035183571765738
	.quad	0x3fe1a0ac6ff6f69e              # double 0.55086347454171736
	.quad	0x3fee2d2332371a4b              # double 0.94300994689621953
	.quad	0x3fc0a1d96f7a63a8              # double 0.12993925040498522
	.quad	0x3fd7d53ae39fdcb2              # double 0.37238952855063723
	.quad	0x3fe6e56a85a5f9ec              # double 0.71550489524071059
	.quad	0x3fe94e0d0a67fd8f              # double 0.79077770264113834
	.quad	0x3fe525853b57d977              # double 0.66083013143979386
	.quad	0x3fe5c44c4efaa765              # double 0.68021216798409212
	.quad	0x3fe04412f02f5b8d              # double 0.50830981169825551
	.quad	0x3feed62fdbb5d124              # double 0.96364586746361569
	.quad	0x3fd9740635960822              # double 0.39770655854238346
	.quad	0x3fe92805826f34fa              # double 0.7861354396387974
	.quad	0x3fd7fdd995f3d844              # double 0.37486877101708083
	.quad	0x3fd14c9289a44fde              # double 0.27029860917650506
	.quad	0x3fb870976d79f580              # double 0.095468010165822292
	.quad	0x3fed9a6a44e40a09              # double 0.92509950118284323
	.quad	0x3fd484c1bdb9d8ba              # double 0.32060283210683915
	.quad	0x3feccbee3647977c              # double 0.89989386178488883
	.quad	0x3fe115ad9ec50ff9              # double 0.53389626512262034
	.quad	0x3fd5ed93d555a89e              # double 0.34262557824571072
	.quad	0x3fdf629d098ebc18              # double 0.49039388593058808
	.quad	0x3fee1673427a4da5              # double 0.94024050697264683
	.quad	0x3fe0d4b4b781e4a4              # double 0.52596507874763576
	.quad	0x3fdd8f827535092a              # double 0.46188413091671754
	.quad	0x3fed3c48194c8e86              # double 0.91360859814854289
	.quad	0x3fd743fc2dc80df8              # double 0.36352447958799372
	.quad	0x3fe77aa3cd841f9a              # double 0.73372068538536728
	.quad	0x3fe3d7df3e47bb23              # double 0.62010156787969029
	.quad	0x3fe7d3dcec7e8f38              # double 0.74461218061740109
	.quad	0x3fe04aeb7e4d54d6              # double 0.50914549511312646
	.quad	0x3fdaa4672a424344              # double 0.4162843620952581
	.quad	0x3fd70a2daac46ea4              # double 0.3599962394380134
	.quad	0x3fd8d87a85df827c              # double 0.38821280549567638
	.quad	0x3fda393a0fcb22ee              # double 0.40974284689268259
	.quad	0x3fd5798ba7edd616              # double 0.3355435504848584
	.quad	0x3fe930e5a987d6cb              # double 0.7872188864846178
	.quad	0x3feb7a3b51dd194f              # double 0.85867086400029702
	.quad	0x3fec14df36fbc8da              # double 0.87754784335109126
	.quad	0x3fe7130761fa4bdd              # double 0.72107285629533246
	.quad	0x3fdb43bbdfb78358              # double 0.42600914809559276
	.quad	0x3fc78c33a2ca8a68              # double 0.18396611641681493
	.quad	0x3fe6c06c24433f87              # double 0.71098906595760603
	.quad	0x3fd447d1732704bc              # double 0.31688343282082676
	.quad	0x3fe402714c4b43bd              # double 0.62529816533253035
	.quad	0x3fe0e1dd0c3fef0a              # double 0.52757122414138391
	.quad	0x3fe79b5cb1972234              # double 0.73771509824388781
	.quad	0x3fe2193b349bb721              # double 0.56557998919536001
	.quad	0x3fe220886a1bc0f2              # double 0.56647129749583613
	.quad	0x3fd2414f0b890884              # double 0.28523613096707146
	.quad	0x3fe66ba7c288b600              # double 0.70064151759078186
	.quad	0x3fd733e015281a80              # double 0.36254121843413856
	.quad	0x3fe3f19751116c71              # double 0.62324109872441913
	.quad	0x3fc1389d3e0821ac              # double 0.13454022911925045
	.quad	0x3fd0744fc77c5d5e              # double 0.25709909897837757
	.quad	0x3fec9488b405cb5e              # double 0.89313159142180232
	.quad	0x3fb4d3a46430c008              # double 0.081354402981333007
	.quad	0x3fa97efd5f61d990              # double 0.049796979802454122
	.quad	0x3fde857b55c2411c              # double 0.47689708113559148
	.quad	0x3fd7da9b889e440c              # double 0.37271774617789855
	.quad	0x3fec614e016f0c34              # double 0.88687801628146312
	.quad	0x3fd01f613a097eee              # double 0.25191527049717777
	.quad	0x3fd09ae44697ebc6              # double 0.25945383924380072
	.quad	0x3fa630600575cb10              # double 0.043337822596091979
	.quad	0x3fe82a7983c8f555              # double 0.75518489588982141
	.quad	0x3fb90bce8a7cd0a8              # double 0.097836407480658694
	.quad	0x3fea340ce7ed1743              # double 0.818853810291991
	.quad	0x3f83aea349eb90c0              # double 0.0096104390081069857
	.quad	0x3fec7218a6d1d83f              # double 0.88892777044271287
	.quad	0x3fe93fd2cc5fb9df              # double 0.78904094616683185
	.quad	0x3fe75c084d012cce              # double 0.7299844268794915
	.quad	0x3fda739db2880ef0              # double 0.41330664095606462
	.quad	0x3fe950d24464aa8b              # double 0.79111588819553569
	.quad	0x3fcbeedc5d98dbac              # double 0.21822695322199814
	.quad	0x3fc671407fb38cf0              # double 0.17533117518824026
	.quad	0x3fe8aedcaae23a1a              # double 0.77134545684549782
	.quad	0x3fe6a7070b219a2f              # double 0.70788910078119283
	.quad	0x3fbad17cb56ce300              # double 0.10475902013139304
	.quad	0x3fd0533701fc7428              # double 0.2550790328403445
	.quad	0x3fc0e5c9356cab54              # double 0.13201251133554115
	.quad	0x3fd0bd735de6a83a              # double 0.26156315011997189
	.quad	0x3fe7c892d1c73b03              # double 0.74323407146752662
	.quad	0x3fe3a0e7e00b316f              # double 0.61339181669749887
	.quad	0x3fd9c77f6cbfd8d0              # double 0.402801376534069
	.quad	0x3fdeef54f3b621ca              # double 0.48335765647837248
	.quad	0x3fe557bd3508ce8c              # double 0.66696033819467138
	.quad	0x3fea72a6185b4bac              # double 0.82649521596100816
	.quad	0x3f731c3efe611780              # double 0.0046656094255633773
	.quad	0x3fee0410936e2621              # double 0.93799618525480721
	.quad	0x3fdc6f81d993ca98              # double 0.44430586097511471
	.quad	0x3fe58b168e06bd76              # double 0.67322852839963221
	.quad	0x3fed1122ab4597f0              # double 0.90834172679455882
	.quad	0x3fd3d114545b3f28              # double 0.30963619459088187
	.quad	0x3fc9663712da7838              # double 0.19843185825897236
	.quad	0x3fe44000fcafd70b              # double 0.63281297066598208
	.quad	0x3fdf8ea72d8caf06              # double 0.49308185051153008
	.quad	0x3fd61c2028253d8a              # double 0.34546665115791397
	.quad	0x3fe705b50cdaf536              # double 0.71944668303300463
	.quad	0x3fc26d37964023dc              # double 0.14395804249241351
	.quad	0x3fbcb6e2558ea850              # double 0.11216559017944516
	.quad	0x3fdee03e15380242              # double 0.48243667671343726
	.quad	0x3fcf8dc9caa5ee84              # double 0.24651453394823275
	.quad	0x3fe2bc62e43ea7de              # double 0.58549637393047838
	.quad	0x3fda97460f589dcc              # double 0.41548301218651029
	.quad	0x3fefa4c9b6045248              # double 0.98886571455165839
	.quad	0x3fd8dd913ba0e85a              # double 0.38852339575863015
	.quad	0x3fbd3cc7b19687c0              # double 0.11420868001599072
	.quad	0x3fd7f1866e56ff34              # double 0.37411652350782565
	.quad	0x3fe1a2b3ac9e65e7              # double 0.55111106600378157
	.quad	0x3fed85cdabb3449a              # double 0.92258342299659835
	.quad	0x3fee1902cc486ee5              # double 0.94055309199344761
	.quad	0x3fd326ef8966e8a8              # double 0.29925144594347808
	.quad	0x3fd22eb0adaf3b52              # double 0.28409974061371657
	.quad	0x3fee0a1fd3a622dc              # double 0.93873587930383051
	.quad	0x3fe2683a0560c76e              # double 0.57522297907256159
	.quad	0x3f9f7c03c46875c0              # double 0.030746516096874066
	.quad	0x3fd55852f8c7f3de              # double 0.33351587576890818
	.quad	0x3fe3c43986def458              # double 0.61770321218467483
	.quad	0x3fe4dee08b0a087f              # double 0.65220667987911429
	.quad	0x3f9a3b7e2f130460              # double 0.025617572425066348
	.quad	0x3fe04f96ec53443e              # double 0.50971552045132973
	.quad	0x3fd98c699f3a2b36              # double 0.39919510411771186
	.quad	0x3fe89820885e9b17              # double 0.76857020029715073
	.quad	0x3fe087caa0efd419              # double 0.51657611306166296
	.quad	0x3fef7aa84ac06816              # double 0.98372282600326133
	.quad	0x3fc7f3b220bb109c              # double 0.18712450597934527
	.quad	0x3febf2abad03c8f4              # double 0.87337287704420285
	.quad	0x3f9920d50932adc0              # double 0.024539307295226243
	.quad	0x3fdcabf6dc37d078              # double 0.44799586778322675
	.quad	0x3fefffc756d7a94f              # double 0.99997298203860818
	.quad	0x3fd608e012fa224a              # double 0.34429170468550707
	.quad	0x3fe8354513480f28              # double 0.75650266424097357
	.quad	0x3fe6dba66a2df06b              # double 0.71431275118039872
	.quad	0x3fefafc462865d79              # double 0.99020594828736741
	.quad	0x3fe3a2fbbb53f0ef              # double 0.61364542567710412
	.quad	0x3fdf5a90c423e8a8              # double 0.48990267900775075
	.quad	0x3fef86bcbb9d25d5              # double 0.98519741671878569
	.quad	0x3fdbad7094ce54d6              # double 0.43246092349847964
	.quad	0x3fe61a97fd70472e              # double 0.69074630260204173
	.quad	0x3fba6663fd69e288              # double 0.10312485634666235
	.quad	0x3fdaa2c2b2f6b478              # double 0.41618411518977139
	.quad	0x3fe0dee8b20adb09              # double 0.52721056722552462
	.quad	0x3fabfbca8ca56bc0              # double 0.054655389469835836
	.quad	0x3fee3fd1bf99eaea              # double 0.94529044553868613
	.quad	0x3fe11c89d0013d23              # double 0.53473368287987844
	.quad	0x3feacf5bf81435a1              # double 0.83781240895193687
	.quad	0x3feae000ea5b1131              # double 0.83984418652156567
	.quad	0x3fe18cf987332bd5              # double 0.54845882803180734
	.quad	0x3fc26bcaef3b69d8              # double 0.14391457253698436
	.quad	0x3fe45178c99c6433              # double 0.63494529130105659
	.quad	0x3fe4e95fb7269ec4              # double 0.65348802348759039
	.quad	0x3fda7cdd07abe370              # double 0.41387105702556592
	.quad	0x3fe3cea7524fa4f6              # double 0.61897626949681128
	.quad	0x3fc5c7d20cbbd1f0              # double 0.17016053792725883
	.quad	0x3f84d0bb3709cc80              # double 0.010163748376021298
	.quad	0x3fed03c983769220              # double 0.90671230007552949
	.quad	0x3fe662df7940a833              # double 0.69956945116178415
	.quad	0x3feacc17fab1536c              # double 0.83741377795614146
	.quad	0x3fc47b3f1e9da9b4              # double 0.16001118655124247
	.quad	0x3fdc9c7d6cbcd438              # double 0.44705138796718158
	.quad	0x3fd1a093f6e890c8              # double 0.27542590248254983
	.quad	0x3fd7375bbc7e054a              # double 0.36275380523155276
	.quad	0x3fef47b5082c7194              # double 0.97750331493766617
	.quad	0x3fd30e472e934d14              # double 0.29774646328333287
	.quad	0x3fd654fa0bb3ac2e              # double 0.34893656866796874
	.quad	0x3fb2a131b3ff7400              # double 0.072772127575674972
	.quad	0x3fd14a99a0ae9804              # double 0.27017822925188306
	.quad	0x3fe6a1672af32ec5              # double 0.70720251454027816
	.quad	0x3fe23d842f39035f              # double 0.57000931952653022
	.quad	0x3fe9b04d221db9e8              # double 0.80277115500740326
	.quad	0x3fe9c290020e0374              # double 0.80500030900303309
	.quad	0x3fe2934f96044b08              # double 0.58048228550100678
	.quad	0x3feafcbc393accc8              # double 0.84335147073434147
	.quad	0x3fed88def5aa2774              # double 0.92295787793521677
	.quad	0x3fda758048b23efa              # double 0.41342169856305555
	.quad	0x3fec90d0e2c259d1              # double 0.89267772950079849
	.quad	0x3fcb2405813f47e8              # double 0.21203678904436107
	.quad	0x3fd92a8f7c831598              # double 0.39322268638019287
	.quad	0x3fcaa033b2d1a2d0              # double 0.20801397544280187
	.quad	0x3fe36fda76426150              # double 0.60740397546309488
	.quad	0x3fe977be7ec6911b              # double 0.79586720238561115
	.quad	0x3fb6d5f5666a1350              # double 0.089202249053483173
	.quad	0x3feb1fdf647f51e4              # double 0.8476407015646683
	.quad	0x3fb74938b53d9fa8              # double 0.090961021660062813
	.quad	0x3fb93b5dabcf1658              # double 0.09856210178903646
	.quad	0x3faf9fb6e9b254f0              # double 0.061765399959009204
	.quad	0x3fe4c865faf64518              # double 0.64946269050611516
	.quad	0x3fef17ddff4e731b              # double 0.97166347374477213
	.quad	0x3fe41f8f0ec85e89              # double 0.62885239493603351
	.quad	0x3fe054b8b028f591              # double 0.51034197241067336
	.quad	0x3fd3faabef8b787c              # double 0.31217478173301294
	.quad	0x3fea4d362fd3fd22              # double 0.82192525235578651
	.quad	0x3fca5a31c9c37afc              # double 0.20587751723993353
	.quad	0x3fe08bd7eee2e24b              # double 0.51707073838685724
	.quad	0x3fec70cf85ca6fe6              # double 0.88877082949647668
	.quad	0x3fec0d47e17e3473              # double 0.87662118951415235
	.quad	0x3fcce57859e4e8e8              # double 0.22575287236561015
	.quad	0x3feab5303385a8a4              # double 0.83461771071349177
	.quad	0x3fb4b76e7ec8ed80              # double 0.080923944428766603
	.quad	0x3feb460bd63573a9              # double 0.85230056607871518
	.quad	0x3fc2efad7ce4f274              # double 0.14793938253741923
	.quad	0x3fefb83a12c95c7d              # double 0.99123862904788462
	.quad	0x3fea70779c50d929              # double 0.82622890978271812
	.quad	0x3fdb6bf7136e557e              # double 0.42846466920430959
	.quad	0x3fc0e89c2922cd68              # double 0.13209869392958784
	.quad	0x3fc8189a6a7fc320              # double 0.18825082969808538
	.quad	0x3feb214bb666471e              # double 0.84781442284495134
	.quad	0x3fef96e91295b2a4              # double 0.98717168454966897
	.quad	0x3fedddd519061c43              # double 0.93332915198778499
	.quad	0x3fc20954d21cf6d4              # double 0.14090976962500312
	.quad	0x3fe65ea13d83e533              # double 0.69905149473848949
	.quad	0x3fbe2de6103a3c58              # double 0.11788785835436622
	.quad	0x3fe968a7d2acb61e              # double 0.79402533671754205
	.quad	0x3fe2bc9eac1c2634              # double 0.58552487960077437
	.quad	0x3fcedac3a4f5d554              # double 0.24105115465833171
	.quad	0x3fead99c467cc158              # double 0.83906377570205404
	.quad	0x3fe0e2543023217f              # double 0.52762803460886676
	.quad	0x3fb67040622968c0              # double 0.087650321927330133
	.quad	0x3fea78b619d5d1e8              # double 0.82723526998466657
	.quad	0x3fd892677acb5552              # double 0.38393580428722374
	.quad	0x3fe9e948ed684363              # double 0.80972715729340583
	.quad	0x3fd541453205f19c              # double 0.33210878262596011
	.quad	0x3feba25408fb359d              # double 0.8635654616752394
	.quad	0x3fe8c4745665a3a5              # double 0.77398125528735717
	.quad	0x3fe1fd3763632621              # double 0.56216020022947444
	.quad	0x3fecae0885b9c6dd              # double 0.89624429815577467
	.quad	0x3fdd57603051ec2e              # double 0.45845799177885993
	.quad	0x3fd0fb211eebaa06              # double 0.26532772082887879
	.quad	0x3fee87dc6255ca31              # double 0.95408457952573233
	.quad	0x3fdf2b2e706986cc              # double 0.48701058366542038
	.quad	0x3fcdf35a5307ca84              # double 0.2339890389844933
	.quad	0x3fe8e1f1d34b08e4              # double 0.77758113163170294
	.quad	0x3fc8518a05798d50              # double 0.18998837725949125
	.quad	0x3fd3ff1e0e2caa76              # double 0.31244613060213255
	.quad	0x3fca6cdb73759548              # double 0.20644705903684213
	.quad	0x3fdac6dbfe8674aa              # double 0.41838741165140425
	.quad	0x3fd1b9c2f6014d12              # double 0.27696298622068227
	.quad	0x3fe3fbcb2aa49c26              # double 0.62448652580940656
	.quad	0x3fe2e62f88518a21              # double 0.59059883713445427
	.quad	0x3fe84a534a18bd5c              # double 0.7590729186248768
	.quad	0x3feadfd613140816              # double 0.83982375837536227
	.quad	0x3fedd0ab6d4c1633              # double 0.93172236773597772
	.quad	0x3fe8af5a226a971e              # double 0.77140528413721987
	.quad	0x3fd72b643fd0c0f4              # double 0.36202341300942398
	.quad	0x3fed88e5466ed279              # double 0.92296088940072629
	.quad	0x3fe9687d7e28815f              # double 0.79400515213277945
	.quad	0x3fb27ef03f8d0f90              # double 0.072249427333245686
	.quad	0x3fde8528b9e71b54              # double 0.47687738565985183
	.quad	0x3fe6b04b06f4b70b              # double 0.70902015074327218
	.quad	0x3fe272aa6b4b572c              # double 0.57649727779309989
	.quad	0x3fb0eef2a7b02ca0              # double 0.066146055163857742
	.quad	0x3fe63f3ece1dd5ea              # double 0.69522037751329191
	.quad	0x3fd80991a21535de              # double 0.37558403805163987
	.quad	0x3f97e756ec7ce280              # double 0.02334342783362553
	.quad	0x3f99aa40ae0678a0              # double 0.025063524839077034
	.quad	0x3fa16b1f03bfa3c0              # double 0.034020394523231356
	.quad	0x3fce1b75010d6798              # double 0.23521292258629667
	.quad	0x3fce9663a6b5dce0              # double 0.23896451606899571
	.quad	0x3fe1c2b2d2362f7e              # double 0.55501690918889302
	.quad	0x3fdebd0e97d4b050              # double 0.48028912379482325
	.quad	0x3fdc6aee9d3bd1f6              # double 0.44402661661959486
	.quad	0x3fc558aaae5f80bc              # double 0.16676839365300633
	.quad	0x3fe16155d4dad125              # double 0.54313174794382191
	.quad	0x3fb631fc35f83598              # double 0.086700213600315101
	.quad	0x3fe3db61ad063100              # double 0.62052997392450493
	.quad	0x3fc554c8623f3b60              # double 0.16664986417023453
	.quad	0x3fe7194ff1c0b23b              # double 0.72183987824752849
	.quad	0x3fd1cc1e24fd9232              # double 0.27808335888247193
	.quad	0x3fd2639b6a323dc6              # double 0.28732953425148045
	.quad	0x3fe16c46eb7656da              # double 0.54446741093371576
	.quad	0x3fee929041c294ce              # double 0.95539105266348101
	.quad	0x3fe536eaddd802b9              # double 0.66295378998628174
	.quad	0x3fe1425c7ee262f2              # double 0.53935074598402211
	.quad	0x3fe09e1476c60ed0              # double 0.51929686735135228
	.quad	0x3fdb1cd32d3b8a62              # double 0.42363433282131358
	.quad	0x3fe4a0e64e464cc9              # double 0.64464106834420776
	.quad	0x3fcdc1d8bf5e097c              # double 0.23247823089702624
	.quad	0x3fce61508b261994              # double 0.23734480661751134
	.quad	0x3fef558b15f021bb              # double 0.97919229779022687
	.quad	0x3fecbaa3ab69d1f8              # double 0.89778312186405085
	.quad	0x3fefd33c6509e129              # double 0.99453563436603531
	.quad	0x3fd0a2e40d6125ba              # double 0.2599420672091487
	.quad	0x3fe4869f05502355              # double 0.64143324887946085
	.quad	0x3fea93b1c4760ab8              # double 0.83052910205181885
	.quad	0x3fdfae7043204d24              # double 0.49502188258448343
	.quad	0x3fead8bdd5e849d0              # double 0.83895770815643722
	.quad	0x3fe08e8b6ca47930              # double 0.51740046710236776
	.quad	0x3fe1b3b42f836fe9              # double 0.5531865051266297
	.quad	0x3fefcf615faa8975              # double 0.99406498608395443
	.quad	0x3fd0392f9aa790a6              # double 0.2534903536127423
	.quad	0x3fde24694c855dda              # double 0.47097237084150623
	.quad	0x3fbc721ba27e8250              # double 0.1111161491121575
	.quad	0x3fe3e58ec3a45df5              # double 0.62177217685069641
	.quad	0x3fed029e9ef55deb              # double 0.9065697769792086
	.quad	0x3fe636fdbc7fe2ba              # double 0.69421278778380402
	.quad	0x3fec59ab56702781              # double 0.88594595797006559
	.quad	0x3fe177f618a43ab5              # double 0.54589371502682715
	.quad	0x3fedf2b96633db17              # double 0.93587942086637355
	.quad	0x3fef7a8f282f3577              # double 0.98371084068791858
	.quad	0x3fe882d602340c84              # double 0.76597118788085127
	.quad	0x3fee6db7f65de85e              # double 0.95089338415642621
	.quad	0x3fe8c91a35ea2e07              # double 0.77454863100268845
	.quad	0x3fe5f4dba7efdb7f              # double 0.68613989639457873
	.quad	0x3fdf47b476edf44e              # double 0.48875152219972484
	.quad	0x3fe3a344daf09585              # double 0.61368029367137977
	.quad	0x3fe5184520af1c63              # double 0.65921265014266017
	.quad	0x3fe80777f71af464              # double 0.75091169607879892
	.quad	0x3fe3d3026ced1217              # double 0.61950799250240862
	.quad	0x3fea6ff4de56dde6              # double 0.82616656709336378
	.quad	0x3fc53bb109c80800              # double 0.1658841417084318
	.quad	0x3fe4f6359defcbd2              # double 0.65505486342441999
	.quad	0x3fc95c6eef713820              # double 0.19813334170834285
	.quad	0x3fe7d045cb239bda              # double 0.74417390513996939
	.quad	0x3fe512836f1375d1              # double 0.65850993818792791
	.quad	0x3fe3ff7eca7c8792              # double 0.62493838832982562
	.quad	0x3fd6a2a0b5f29e48              # double 0.35367601173718244
	.quad	0x3fc580c01ee17cd4              # double 0.16799165256359194
	.quad	0x3fef9fb86a7b6caa              # double 0.9882471160630264
	.quad	0x3fb3f4c10d40b278              # double 0.077953401313331727
	.quad	0x3fb0b52bf4d6a350              # double 0.065264460825926962
	.quad	0x3fd13607b5680d9a              # double 0.2689227363154828
	.quad	0x3fe499a927bbbd43              # double 0.64375741730138036
	.quad	0x3fa7e7ff0df1b060              # double 0.046691866352234213
	.quad	0x3fe7d13957d673da              # double 0.74429003864099319
	.quad	0x3fe192e37d25d88c              # double 0.54918074076592083
	.quad	0x3febdf7e7cae629f              # double 0.8710319934062517
	.quad	0x3fee470e6b8b8371              # double 0.94617386822583971
	.quad	0x3fdcdedd9d1832a6              # double 0.45110264149915691
	.quad	0x3fe2ade195d5217b              # double 0.58372573150795348
	.quad	0x3fd644b5f385718a              # double 0.34794377118466768
	.quad	0x3fbcca0ffc11c350              # double 0.11245822814977413
	.quad	0x3fcbe2bde423b64c              # double 0.21785710944770853
	.quad	0x3fe716cbb3562007              # double 0.72153267885823957
	.quad	0x3fce93947c0716f0              # double 0.23887878471412405
	.quad	0x3fe467b0a948ff5e              # double 0.63765748084550089
	.quad	0x3fef0aa11bb722cf              # double 0.97004752553137929
	.quad	0x3fdc7af394877bb8              # double 0.44500436310584801
	.quad	0x3fe5dbd2641fccde              # double 0.68308372073661494
	.quad	0x3fb1aed73efd7f28              # double 0.069074108961555525
	.quad	0x3fec177546709847              # double 0.87786353833940545
	.quad	0x3fec9be6ac48a711              # double 0.89403089188746965
	.quad	0x3fd0bb40928e7172              # double 0.26142896949911354
	.quad	0x3fc3442c6ca8152c              # double 0.15051799111839992
	.quad	0x3fee4cfa58affab0              # double 0.94689671823274146
	.quad	0x3fd6cb97e11fdbd2              # double 0.3561763475876748
	.quad	0x3feaf731302bc50f              # double 0.84267482193368604
	.quad	0x3fb4029c20f50550              # double 0.078164823576135633
	.quad	0x3fd431dc17a64b04              # double 0.31554319676904208
	.quad	0x3fd2296695f07208              # double 0.28377689974311737
	.quad	0x3fea6f09f5b6af52              # double 0.82605455389919258
	.quad	0x3fb3152f84334688              # double 0.074542016768896713
	.quad	0x3fe58d5716f83810              # double 0.67350344167948784
	.quad	0x3fcd1d404dabc8a8              # double 0.22745517532854831
	.quad	0x3fda5a54844ac160              # double 0.41176331442968284
	.quad	0x3fe79d33a379c539              # double 0.73793966225472396
	.quad	0x3feb5723a65f4836              # double 0.85438711638040021
	.quad	0x3fd9f4f45ded2d0a              # double 0.40557583973414124
	.quad	0x3fe201320f64fefd              # double 0.56264594084493036
	.quad	0x3fa5dc68ef9d1260              # double 0.042697219133093212
	.quad	0x3fe4ab793a9eb2b9              # double 0.64593182992174214
	.quad	0x3feef398986a2442              # double 0.96723584907989157
	.quad	0x3fe499615a9d6781              # double 0.64372317980017624
	.quad	0x3fe68c862df714b8              # double 0.70465382554598133
	.quad	0x3fee3b61403b70dd              # double 0.94474852128362452
	.quad	0x3fd6fa17ad35e2ba              # double 0.3590144340046596
	.quad	0x3fecf22dd4d20666              # double 0.90456286970602373
	.quad	0x3fe699c869e32354              # double 0.70627232247452776
	.quad	0x3fd9707e23d5b156              # double 0.39749101161466649
	.quad	0x3fe1e2bd287a2a91              # double 0.558928088242583
	.quad	0x3fe1fe6fe4889514              # double 0.56230921397642186
	.quad	0x3fb757c3ec4df610              # double 0.091182942573105885
	.quad	0x3febd91b0136e50c              # double 0.87025213467782824
	.quad	0x3fe1d8005e464bc9              # double 0.557617363100115
	.quad	0x3f8a02580c88f1c0              # double 0.012699783213172888
	.quad	0x3fdef75199d2e2ce              # double 0.48384513875820978
	.quad	0x3fe5ab469b566e9c              # double 0.67715769137744841
	.quad	0x3fc6c0c5293720d8              # double 0.17775787842243207
	.quad	0x3fbc69594eba17f0              # double 0.11098249599498877
	.quad	0x3fe1b3eea638626a              # double 0.55321438279049784
	.quad	0x3fef4212a4431ebb              # double 0.9768155296560147
	.quad	0x3fb160426726e2b8              # double 0.067875051673477738
	.quad	0x3fd6e01ae1c83538              # double 0.35742828415898797
	.quad	0x3fa736a7f6ed7b50              # double 0.045338868038689584
	.quad	0x3fb2b0a50e7a00d8              # double 0.073007885011978302
	.quad	0x3fb972835f94e3b8              # double 0.099403582415915959
	.quad	0x3fe623d1293dbccc              # double 0.69187219672121492
	.quad	0x3fe372ecba8b9f91              # double 0.60777889666222695
	.quad	0x3fa130357a5a74d0              # double 0.033570929704390573
	.quad	0x3fecf12b2895e6ad              # double 0.90443952490678259
	.quad	0x3fd1e66be76ca816              # double 0.27968881225626896
	.quad	0x3fe12e6023f71573              # double 0.53691107773253888
	.quad	0x3fe31a9f619b2710              # double 0.59699982703861743
	.quad	0x3fe6243a000e64f3              # double 0.69192218790990834
	.quad	0x3fc9a015e8303b10              # double 0.20019792401623038
	.quad	0x3fdad34f06cdf56e              # double 0.41914725937370789
	.quad	0x3fe84ecdcfb2a091              # double 0.75961962285966156
	.quad	0x3fb1d81e7ef744d8              # double 0.069703966138394136
	.quad	0x3fe882c09855ed47              # double 0.76596097710663791
	.quad	0x3fcaffe16f00d4e0              # double 0.21093385620193938
	.quad	0x3fde0831a6c7c620              # double 0.46925011908669667
	.quad	0x3feb1131d0b16853              # double 0.84584894905425256
	.quad	0x3fabb85f5aedf220              # double 0.054141025399961018
	.quad	0x3fe6cbae9347e9d5              # double 0.71236351743510318
	.quad	0x3fdcccb8679e8bb0              # double 0.4499951373965656
	.quad	0x3fd494b828e9c87c              # double 0.32157711024695579
	.quad	0x3fd62c3e4963f9a4              # double 0.34645039717715975
	.quad	0x3fe0428f47cba7ed              # double 0.50812496206822078
	.quad	0x3fbf5d6caca3a970              # double 0.12251929488016855
	.quad	0x3fe4d9370bdaca14              # double 0.65151550593719998
	.quad	0x3fea284bc4594e17              # double 0.81741894101509416
	.quad	0x3fe6ac0fbfbef044              # double 0.70850360346185726
	.quad	0x3fe38799bbda2bd4              # double 0.61030279817475241
	.quad	0x3fdccc0dba994b5c              # double 0.44995444510020888
	.quad	0x3fe8d50dd5a810c2              # double 0.77600757341181059
	.quad	0x3fdfd74f8e448c76              # double 0.49751652615868325
	.quad	0x3feb0d382947170c              # double 0.84536369382905851
	.quad	0x3fef0b134630ff2e              # double 0.97010196408516491
	.quad	0x3fe517a157774129              # double 0.65913455088778961
	.quad	0x3fc1d1ee66221fc8              # double 0.13921909319856085
	.quad	0x3fe9289dd2c41286              # double 0.78620806851593339
	.quad	0x3fddb9de406ee7e8              # double 0.46446949283892858
	.quad	0x3fc5a5a16409a760              # double 0.16911713966993158
	.quad	0x3fb7ae03dbc96308              # double 0.092499009283880551
	.quad	0x3fc2936cf437cfdc              # double 0.14512407231052193
	.quad	0x3fe89103346b4258              # double 0.76770172346193544
	.quad	0x3fed9d9660959f3d              # double 0.9254867445388083
	.quad	0x3fef6ef0b4728b5c              # double 0.98229251140251561
	.quad	0x3fa8d13ef7bfad00              # double 0.048471420042767832
	.quad	0x3fecb49385ff645f              # double 0.89704300090228262
	.quad	0x3feadfc6ed894eb7              # double 0.83981653589076799
	.quad	0x3fd5109c0b48c50a              # double 0.32913876630762273
	.quad	0x3fe3c26a9e114498              # double 0.61748247978734394
	.quad	0x3feb3918e4b0e5dc              # double 0.85071987787449243
	.quad	0x3fd3a38f88ad6f6a              # double 0.30685795161638529
	.quad	0x3fe1b4047be90992              # double 0.5532247943995563
	.quad	0x3fcb19f7614a5ba4              # double 0.21172992945204527
	.quad	0x3fdbac96a69e497a              # double 0.43240896483725744
	.quad	0x3fd4558e9aa78a64              # double 0.31772198775266802
	.quad	0x3fe21909cc85905d              # double 0.56555643029833969
	.quad	0x3fe8962e506dc43a              # double 0.76833263119454576
	.quad	0x3fdb9ffa3da88188              # double 0.43163925191222363
	.quad	0x3fece0afce3c7086              # double 0.90242758064734185
	.quad	0x3fd3e61df4c5993a              # double 0.31092022803786146
	.quad	0x3fb16cffce410ee8              # double 0.068069446425450431
	.quad	0x3f6e9846b4eecb00              # double 0.0037347203246665961
	.quad	0x3fd38a3519f59d2a              # double 0.30531051192379499
	.quad	0x3fc9ec15a09041fc              # double 0.20251722660078986
	.quad	0x3fb913e7ba2d2800              # double 0.097959979012699704
	.quad	0x3feefc0b2f660985              # double 0.96826705224548048
	.quad	0x3fe5bc7e2a0a4329              # double 0.67925937853769824
	.quad	0x3fcdf2cdcc368c78              # double 0.23397228690473404
	.quad	0x3fde6fefaf7113ca              # double 0.47558204777697866
	.quad	0x3fba0f833ad8f918              # double 0.10179920374591622
	.quad	0x3fc39353c6e49cc0              # double 0.15293357097218596
	.quad	0x3fc8372c314872a0              # double 0.18918373495480001
	.quad	0x3feae044f5183e2d              # double 0.8398766314512095
	.quad	0x3fea423cbb80b91f              # double 0.82058560010571913
	.quad	0x3fd54c9bf766537e              # double 0.33280085716369701
	.quad	0x3febb4e5ac16ffde              # double 0.86583217250153743
	.quad	0x3fc0bc0f68aaa6c0              # double 0.13073914156603017
	.quad	0x3febfac2240006a8              # double 0.87436015158910596
	.quad	0x3fec69b5f95a972a              # double 0.88790415479590945
	.quad	0x3fe176c589856b36              # double 0.54574848994830094
	.quad	0x3fe7839601b8b7f9              # double 0.73481273971788064
	.quad	0x3fe5f547fc5ee634              # double 0.68619155207779281
	.quad	0x3feac4000e0e5fd7              # double 0.83642580743161943
	.quad	0x3fe7e8245fe5f6f0              # double 0.74708765726219717
	.quad	0x3fd0ec0e5948a33a              # double 0.26440771788707063
	.quad	0x3fe573edd9aabd80              # double 0.67040150178029023
	.quad	0x3fee025697e187b5              # double 0.93778543152097049
	.quad	0x3fca7e5bf80062dc              # double 0.20698117837380081
	.quad	0x3fe84fdf90c090b2              # double 0.75975015899577714
	.quad	0x3fd5999771f23010              # double 0.33749948623221915
	.quad	0x3fc001631a94cfcc              # double 0.12504233167567091
	.quad	0x3fe8b71739d38754              # double 0.77234994215198549
	.quad	0x3fc1e96b867f8178              # double 0.13993591372765102
	.quad	0x3fd814821e961ec6              # double 0.37625172602609458
	.quad	0x3feaefe9ca8d2bf8              # double 0.84178628502684116
	.quad	0x3fdec899d038d94c              # double 0.48099370321451285
	.quad	0x3fee416f51288078              # double 0.94548765040600724
	.quad	0x3feb70b6429130a4              # double 0.85750878335376912
	.quad	0x3fdf1c699aa8de12              # double 0.4861091623638184
	.quad	0x3fcda055edb9bd3c              # double 0.23145555598919454
	.quad	0x3fe9335d5f101b11              # double 0.78752010886168666
	.quad	0x3fe042b427f1f6ea              # double 0.50814254571716089
	.quad	0x3fd8d9c6ce270262              # double 0.38829202777927752
	.quad	0x3fe865627dfbf49e              # double 0.76237606626786536
	.quad	0x3fd3803f290e6bbc              # double 0.30470255860717166
	.quad	0x3fae6f0143f886f0              # double 0.05944065050813474
	.quad	0x3fb09144a0ffa928              # double 0.064716615015332324
	.quad	0x3fe84e62dc2ef6bf              # double 0.75956862454014373
	.quad	0x3fe4b937c28be8bd              # double 0.64760959622733305
	.quad	0x3fc2b1ae063327b8              # double 0.14604735663152524
	.quad	0x3fea4bdc856b95da              # double 0.82176042612689604
	.quad	0x3fe49d42127b95b7              # double 0.64419654474175203
	.quad	0x3fe1b391a8af862e              # double 0.55317004152693072
	.quad	0x3fef8667cc171533              # double 0.9851569162498549
	.quad	0x3fbd6d41d2f16260              # double 0.11494838142369579
	.quad	0x3fe2edb878614dae              # double 0.59151862632500296
	.quad	0x3fd096ae35c33c0a              # double 0.2591968083406192
	.quad	0x3fbdf4c4d6d671c0              # double 0.11701612706241971
	.quad	0x3fed006e92b157d2              # double 0.90630272532393463
	.quad	0x3fe09e12dffcfb29              # double 0.51929610965439565
	.quad	0x3fc481f05e78cf0c              # double 0.16021542179952808
	.quad	0x3fb0826760831150              # double 0.064489804327483968
	.quad	0x3fb00042c67b86d0              # double 0.062503980119369418
	.quad	0x3fe7944ba23c8a4a              # double 0.73685247122586728
	.quad	0x3fab26e7b63d6290              # double 0.053031197544162301
	.quad	0x3fea5ea9e208a535              # double 0.82405561587544318
	.quad	0x3fc3c4b532d44d10              # double 0.15444054586314637
	.quad	0x3fe897635e332ffc              # double 0.76847999952724377
	.quad	0x3fdc2ad821599fec              # double 0.44011500603528364
	.quad	0x3fec02212c254611              # double 0.87525995847880911
	.quad	0x3fd7aa3f7d8fd384              # double 0.36976611387154201
	.quad	0x3fd8526a1b91cb5e              # double 0.38003018085799123
	.quad	0x3fb2c6a8bf7dbae0              # double 0.073343798399700955
	.quad	0x3fd1a5084614fca4              # double 0.27569777339881285
	.quad	0x3fa21a2a46df2f80              # double 0.035355874205918347
	.quad	0x3fe98d4d4b2c48bf              # double 0.79849877054427754
	.quad	0x3fd86c55cb88e414              # double 0.38161225201071258
	.quad	0x3fcd805c96813dcc              # double 0.23047978733892049
	.quad	0x3fd6dda6b3b904fe              # double 0.35727851439521874
	.quad	0x3fbce62de1b0c520              # double 0.11288725624105611
	.quad	0x3fe85e4e03c8383a              # double 0.76151180971806487
	.quad	0x3fd9e6db396b2ac6              # double 0.40471535308158157
	.quad	0x3fe5ab0221484889              # double 0.67712503910503685
	.quad	0x3fe3ac845c7b2d59              # double 0.61480920851446819
	.quad	0x3fe03d0cc826da0c              # double 0.50745238392011194
	.quad	0x3fe1e08303b1c65a              # double 0.55865622254914205
	.quad	0x3fb0a94ba7613630              # double 0.065083244671051643
	.quad	0x3feab913729ab6df              # double 0.83509228118574785
	.quad	0x3fd40131af33607a              # double 0.31257288083498447
	.quad	0x3fe5508c9ab0830f              # double 0.66608267033379487
	.quad	0x3fed16dc7ae62d13              # double 0.90904067996726423
	.quad	0x3fef69d201b6eb49              # double 0.98166752180927929
	.quad	0x3fb3d3b8fcfa4378              # double 0.077449380647761745
	.quad	0x3febf14542310986              # double 0.87320197036778846
	.quad	0x3feee8e3fd9bb93c              # double 0.96592902691717297
	.quad	0x3fc8d307fca06d4c              # double 0.19394016108786116
	.quad	0x3fc9d80a56f0d1a4              # double 0.20190552945281326
	.quad	0x3fe2a7e2ba8dfbfc              # double 0.58299385487032351
	.quad	0x3fb161df9a46e588              # double 0.067899680295246623
	.quad	0x3fdce49cce9674e4              # double 0.45145340132314815
	.quad	0x3fb65307c1991878              # double 0.087204441800254773
	.quad	0x3fa79b81fd443780              # double 0.046108305136029593
	.quad	0x3fc89f94418618f4              # double 0.19236996840863407
	.quad	0x3fd763a7b9d0e124              # double 0.3654574694260353
	.quad	0x3fe9cfdeefd076b0              # double 0.80662485922558425
	.quad	0x3fd5cfe5dacf09b8              # double 0.34081407897988525
	.quad	0x3fdc27d8f8384c68              # double 0.43993210067964705
	.quad	0x3fe3931b5030de62              # double 0.61170735990794989
	.quad	0x3fd87643ff942468              # double 0.38221836050849456
	.quad	0x3fe2610689211416              # double 0.57434393675851214
	.quad	0x3fd29380ea715d08              # double 0.29025290388877112
	.quad	0x3fe826f223c84ba4              # double 0.75475413311720673
	.quad	0x3fde9702118d43cc              # double 0.47796680177731043
	.quad	0x3fd38fd88d75c408              # double 0.30565465750174825
	.quad	0x3fcee3795904fb04              # double 0.24131695601132475
	.quad	0x3fd9cbb22180a54c              # double 0.40305760642748534
	.quad	0x3feba469df7b21ec              # double 0.86382001541738651
	.quad	0x3fdeb66718317f3a              # double 0.47988297808295821
	.quad	0x3fe8433f6d7a5365              # double 0.75820895559682511
	.quad	0x3fedd9c2bfd4b429              # double 0.93283212153403838
	.quad	0x3fdb5e012b9ed396              # double 0.42761258373075728
	.quad	0x3fe079bfde841d59              # double 0.51486199817820044
	.quad	0x3feab6035af3be3f              # double 0.83471839679800286
	.quad	0x3fe246496c498c04              # double 0.57107993268834933
	.quad	0x3fe2ae4809ad3e30              # double 0.58377458467470511
	.quad	0x3fe42aee1c85e6af              # double 0.63024049349697531
	.quad	0x3fb427b190563368              # double 0.078730676401574606
	.quad	0x3fbaae4ab21ef038              # double 0.10422198151258122
	.quad	0x3fe69dd2cca75f19              # double 0.70676555606312086
	.quad	0x3fb8196224310720              # double 0.094137319408244213
	.quad	0x3fe17c1426b4ba19              # double 0.54639632758864132
	.quad	0x3fd519e24ff6864a              # double 0.3297048359764615
	.quad	0x3fee4e08abe3dd06              # double 0.94702561924251039
	.quad	0x3fba88ef440eccc8              # double 0.10365195666854554
	.quad	0x3fe743c19fe6b26c              # double 0.72702103834815324
	.quad	0x3fe6bd5f231add16              # double 0.71061665398056806
	.quad	0x3feb860dc4edb536              # double 0.86011398756605817
	.quad	0x3fea0f58de9bd5b9              # double 0.8143734309984928
	.quad	0x3fe80b2711ee8da6              # double 0.75136140348734126
	.quad	0x3fd5401b6a9d079c              # double 0.33203778659309946
	.quad	0x3fab565203816050              # double 0.05339294712820275
	.quad	0x3fe1c9cc6ee271cd              # double 0.55588361413134069
	.quad	0x3fc02968e55ff9ec              # double 0.12626372528025287
	.quad	0x3fb692de4203c558              # double 0.088178530804517208
	.quad	0x3feca92c087d8702              # double 0.89565087946195399
	.quad	0x3fe0c2d6369152b1              # double 0.52378378541705761
	.quad	0x3fe4cbef07004459              # double 0.64989425055876915
	.quad	0x3fe19e757ee323a9              # double 0.55059313566845447
	.quad	0x3fec99a7d908828f              # double 0.89375679387383566
	.quad	0x3fcc0a093fb004c4              # double 0.21905627832169305
	.quad	0x3fedb1d7b600b5d1              # double 0.92795930430809836
	.quad	0x3fed16d6d3e930ee              # double 0.90903798474167075
	.quad	0x3f9e8c0e218f3940              # double 0.029831143186862308
	.quad	0x3fe2900e7fed16fb              # double 0.58008503900120389
	.quad	0x3fe9c464f6e3dde8              # double 0.80522392483447636
	.quad	0x3fd2f9565b0e2ef0              # double 0.29646834270600575
	.quad	0x3fe87dcdadd120a1              # double 0.76535686443914497
	.quad	0x3fe232d0fbe15248              # double 0.56870316691726774
	.quad	0x3fd8034789047e30              # double 0.37520016079540408
	.quad	0x3fc484d4c67c8afc              # double 0.16030368510936188
	.quad	0x3fe2e3cbe08f6548              # double 0.59030717715646919
	.quad	0x3fe9746e2a6733ad              # double 0.79546268731939096
	.quad	0x3fdc9f8b211f7844              # double 0.4472377608743765
	.quad	0x3feb350aa04ffac6              # double 0.85022479353923397
	.quad	0x3fe59b3e177d7cff              # double 0.67520050609519433
	.quad	0x3fd6106fb5f81b62              # double 0.34475319643427416
	.quad	0x3fd064089c43fce4              # double 0.25610556850729282
	.quad	0x3fd89e6c8edc7382              # double 0.38466943694384537
	.quad	0x3fc1842b82965a18              # double 0.1368460071214066
	.quad	0x3fe71733ec5e6401              # double 0.72158237615360588
	.quad	0x3feac27b84ccc145              # double 0.83624053895440709
	.quad	0x3fe49d93cda6378a              # double 0.64423551717639893
	.quad	0x3fc3efaa5441f16c              # double 0.15575150598659648
	.quad	0x3fe7a5681423de10              # double 0.73894123014082602
	.quad	0x3fe457698d1c2765              # double 0.63567044792692384
	.quad	0x3fdf8d4a75851caa              # double 0.49299870945510327
	.quad	0x3fe4335c63ed9d74              # double 0.6312696410868015
	.quad	0x3fd2458e3c0a9f2a              # double 0.28549533713747854
	.quad	0x3fe82accc48d23d1              # double 0.75522459401065067
	.quad	0x3fce17813fa2b990              # double 0.23509231192788294
	.quad	0x3fd6f4259d10b2fa              # double 0.35865154589082204
	.quad	0x3fe8de4aee069047              # double 0.7771353386820089
	.quad	0x3fe392ff448b8d30              # double 0.61169398677558284
	.quad	0x3fdfbf094df24c9e              # double 0.49603493320427983
	.quad	0x3fcaa9c575250a8c              # double 0.20830600948291467
	.quad	0x3fce92b31eb8270c              # double 0.2388519191738897
	.quad	0x3fde31317c550fea              # double 0.47175252096007958
	.quad	0x3fc2b0f688ae3260              # double 0.14602548288202666
	.quad	0x3fe40549abff9f22              # double 0.62564548104726136
	.quad	0x3fe465c4b2f35bc4              # double 0.63742289496701021
	.quad	0x3fb9738d3300e678              # double 0.099419426872282446
	.quad	0x3fcf83d940288ce0              # double 0.24621120102629046
	.quad	0x3fc17449af2d94e8              # double 0.13636132291427505
	.quad	0x3fd918ab853375d6              # double 0.39213073738014026
	.quad	0x3fe9be8775298f13              # double 0.80450795062322056
	.quad	0x3fe9e28564df61fe              # double 0.80890149785687959
	.quad	0x3feb0ae246cde393              # double 0.84507860020595371
	.quad	0x3fea21c5b923e5d2              # double 0.81662260208320903
	.quad	0x3fe24f5847c1339b              # double 0.57218565001095401
	.quad	0x3f9b7af63f4499e0              # double 0.026836249934740652
	.quad	0x3fc905f261aad2dc              # double 0.1954939820185676
	.quad	0x3fed1049f8c1fc16              # double 0.90823839745997037
	.quad	0x3feb3922401127e0              # double 0.85072433960999305
	.quad	0x3fa8817f8b1aa340              # double 0.047862992983317643
	.quad	0x3fa8c04150d5def0              # double 0.048341790311438149
	.quad	0x3f9000315afe9e60              # double 0.01562573545348156
	.quad	0x3fe92e89d445af50              # double 0.78693095645346922
	.quad	0x3fece7d600e4f045              # double 0.90330028700510268
	.quad	0x3fe74b0fc6860131              # double 0.72791279577362478
	.quad	0x3fe67038766aea2c              # double 0.70119879845089406
	.quad	0x3fc0f5f6e7c635f0              # double 0.13250624005415501
	.quad	0x3feaa5e97758bbf7              # double 0.83275292692076064
	.quad	0x3fdfe7a43f067014              # double 0.49851328043746546
	.quad	0x3feb72e171f3e7fe              # double 0.85777351623914888
	.quad	0x3fe4de06258dcfec              # double 0.65210254034763926
	.quad	0x3fe5cbaa876a7666              # double 0.68111158798610627
	.quad	0x3fe2a768d73586ce              # double 0.58293573411011734
	.quad	0x3fe2e77d111742c0              # double 0.5907578786664871
	.quad	0x3fb681fac88c1078              # double 0.087920831643772845
	.quad	0x3fefc7bb3311c9be              # double 0.99313125586041173
	.quad	0x3fecb738a809de6b              # double 0.89736588306454956
	.quad	0x3fe542d95875ee83              # double 0.66441027905916916
	.quad	0x3fed4d72b54007c1              # double 0.91570411110318883
	.quad	0x3fdab00524cb0610              # double 0.41699341385910405
	.quad	0x3fdab09502c41d36              # double 0.41702771444439024
	.quad	0x3fedfee18626c818              # double 0.93736339761221909
	.quad	0x3fe7b1becac9ea19              # double 0.74044742209599967
	.quad	0x3f94151605326d00              # double 0.019611686770628189
	.quad	0x3fe612b6fe9e0bb3              # double 0.68978452424959469
	.quad	0x3fe072ff7f51e541              # double 0.5140378462521441
	.quad	0x3fe70ef9e209bd01              # double 0.72057813785605174
	.quad	0x3fd264463d492212              # double 0.28737026200227078
	.quad	0x3fd84100184b40c4              # double 0.37896730778176058
	.quad	0x3fd624b5f93d274c              # double 0.34599065150961361
	.quad	0x3fd114532d3df166              # double 0.26686553400192847
	.quad	0x3fe85a736249721f              # double 0.76104134747180641
	.quad	0x3fe00731fb43ce7c              # double 0.50087832522554221
	.quad	0x3fb46cf9a1cebb80              # double 0.079787828449054742
	.quad	0x3fd82f6c20aeb334              # double 0.3778944319881703
	.quad	0x3fdc49a4d9d4dba8              # double 0.44199486992459436
	.quad	0x3fe78e241cb25c99              # double 0.73610120396451173
	.quad	0x3fe1315d11d2d88d              # double 0.53727582436728627
	.quad	0x3fed18d3523d2c7f              # double 0.90928045332238117
	.quad	0x3fe52cb629ffab5a              # double 0.66170795634148338
	.quad	0x3fdd73675ec22698              # double 0.46016868833303581
	.quad	0x3fe85d705a337453              # double 0.76140611283666215
	.quad	0x3fe8a0e4f4e556b2              # double 0.76964042502614505
	.quad	0x3fdd33eea7c86906              # double 0.45629469285053437
	.quad	0x3fdc805e1fc8ff26              # double 0.445334940948657
	.quad	0x3fdba4a19a2fd87c              # double 0.43192329461397327
	.quad	0x3fef7b54ab9d8c9c              # double 0.98380502241743128
	.quad	0x3fea74417dd82436              # double 0.82669138506856288
	.quad	0x3fd40118fd5063ac              # double 0.31256699311921454
	.quad	0x3fde179d53e4411e              # double 0.47019131844082718
	.quad	0x3fea91bc56d05611              # double 0.83029000240157036
	.quad	0x3fc93cd1f8de7274              # double 0.19716858531764425
	.quad	0x3fdcadf7cf6332c6              # double 0.44811816456494247
	.quad	0x3fe332fe99e4d144              # double 0.59997491891275745
	.quad	0x3fe27b8259d9fdb3              # double 0.57757680462957806
	.quad	0x3feb2b934f202900              # double 0.84906926588271858
	.quad	0x3fdf6b1b83ec3d6a              # double 0.49091232188307876
	.quad	0x3fa7bb02d04f1970              # double 0.046348655632345692
	.quad	0x3fef8c832e2f0e71              # double 0.98590239544178193
	.quad	0x3fe3b1d034b31529              # double 0.61545572560195183
	.quad	0x3fecfd9defcd72e5              # double 0.90595909916336537
	.quad	0x3fbe849a5d507068              # double 0.11921086099795419
	.quad	0x3fe3a0d8481cb824              # double 0.61338438114558302
	.quad	0x3fe3aae34addf5c4              # double 0.61461033461062486
	.quad	0x3fd9c83b65e7948a              # double 0.402846192852231
	.quad	0x3fe3a9f771fa82d0              # double 0.61449787389218535
	.quad	0x3fe385ddcd59a2a8              # double 0.61009111506890168
	.quad	0x3fca14f4ead32278              # double 0.2037645479779433
	.quad	0x3fce6b42989c0d34              # double 0.23764831973685718
	.quad	0x3fdcda84a8290346              # double 0.45083729192633759
	.quad	0x3fd820987e5c13a8              # double 0.37698948230564122
	.quad	0x3fd88feed9204928              # double 0.3837849731800298
	.quad	0x3fbb55bbac5a19e0              # double 0.10677693326770266
	.quad	0x3fe917c04212bf48              # double 0.78414929299285863
	.quad	0x3fe9b958e6a949cc              # double 0.80387539912254046
	.quad	0x3feccd144dc90a7d              # double 0.90003409569210613
	.quad	0x3fdd7f7a80afd49c              # double 0.46090567175935759
	.quad	0x3fe7dbcb48c17870              # double 0.74558033189874884
	.quad	0x3fdbbc9c050b53a2              # double 0.43338680737115898
	.quad	0x3fe430f9e192263d              # double 0.63097852761092776
	.quad	0x3fdd3df5900f866a              # double 0.45690669125006045
	.quad	0x3fba9fdf259438c8              # double 0.10400194804626317
	.quad	0x3fcc1545681815c0              # double 0.21939914305418817
	.quad	0x3fc14dbc0a4c0c24              # double 0.13518476965700288
	.quad	0x3fe342e49c818544              # double 0.60191565101209976
	.quad	0x3fc89be94f1a1570              # double 0.19225803720852808
	.quad	0x3fef8e13effb2fb8              # double 0.98609349128081813
	.quad	0x3fd327044e9ae01c              # double 0.29925639797466075
	.quad	0x3fedd03e821d5077              # double 0.93167043126096771
	.quad	0x3feee35f771d0c23              # double 0.96525548233364977
	.quad	0x3fd2e294d075170a              # double 0.29507942540327348
	.quad	0x3fd871ec78260c54              # double 0.38195335133804531
	.quad	0x3fc700317d380f8c              # double 0.17969339956482278
	.quad	0x3fdad8778962b26a              # double 0.41946209351116315
	.quad	0x3fdb91be09ee21e2              # double 0.43077040643450293
	.quad	0x3fd26fe72012a9d6              # double 0.28808000690574198
	.quad	0x3f916f3657706140              # double 0.017025803648807569
	.quad	0x3fdecfdf2202af9c              # double 0.4814374763616287
	.quad	0x3fea92bc42387359              # double 0.83041203435605404
	.quad	0x3fce71049cc55ecc              # double 0.23782403616745851
	.quad	0x3fc933df5be8ffbc              # double 0.19689552295494461
	.quad	0x3fd381c442be6ca8              # double 0.3047953273578039
	.quad	0x3fb4146ebad2ead0              # double 0.078436775790503121
	.quad	0x3fe0f2fe972b635d              # double 0.52966241383829138
	.quad	0x3feb9a2fac7a0a7e              # double 0.86257156073436625
	.quad	0x3fd6716bd7a17810              # double 0.35067268426598819
	.quad	0x3f94e0b38988eb60              # double 0.020388417500935119
	.quad	0x3fb6e34a2363a588              # double 0.089405664100601467
	.quad	0x3fb1a063f0b03b20              # double 0.068853613149468362
	.quad	0x3fbfcb82e030a470              # double 0.12419908498181242
	.quad	0x3fea6dfe7b7848f4              # double 0.82592701068122531
	.quad	0x3fef0135bf215d2f              # double 0.9688976986898633
	.quad	0x3fc75e38bab91854              # double 0.18256291501365018
	.quad	0x3feecfdbb2788f84              # double 0.96287331445317692
	.quad	0x3fdee7b067045c30              # double 0.48289117870575904
	.quad	0x3fe11df88a9c8a50              # double 0.53490855286174543
	.quad	0x3fd542032b339f52              # double 0.33215407580290901
	.quad	0x3fcbf45cb2c793cc              # double 0.21839483956787686
	.quad	0x3fc372f3e19f50ac              # double 0.15194557682719301
	.quad	0x3fe8dd327a0a8f56              # double 0.77700160823995179
	.quad	0x3fd0bca87e32b7b2              # double 0.26151478122744287
	.quad	0x3fef63a8a977a202              # double 0.98091538523755184
	.quad	0x3fd2d08ce062c338              # double 0.29397890007662708
	.quad	0x3fe8cf38f2c8d47b              # double 0.77529570978971607
	.quad	0x3fc066f69004e5c4              # double 0.12814218551811341
	.quad	0x3fb5aa5a12743d18              # double 0.084630612855324805
	.quad	0x3fedbb7898e34070              # double 0.92913465367202086
	.quad	0x3fdc0fd5cf6daf5e              # double 0.43846650368390339
	.quad	0x3fed543fe8a8b388              # double 0.91653438035210488
	.quad	0x3fe5a6ee1405392d              # double 0.67662719640956015
	.quad	0x3fe648829d06c4ee              # double 0.69635134381510766
	.quad	0x3fefbf0d96d713cc              # double 0.99207190953222257
	.quad	0x3fef91b034414156              # double 0.98653421598468571
	.quad	0x3fecdaa903ee7fa2              # double 0.90169192092797723
	.quad	0x3fd3e4ceb5bc3a98              # double 0.31084029910645361
	.quad	0x3fe130b19e963d8d              # double 0.53719407056807855
	.quad	0x3fc884df8e1e94d0              # double 0.19155497016359968
	.quad	0x3fe9846a3332e04e              # double 0.79741392135384515
	.quad	0x3fe3946b8ddc72bc              # double 0.6118676920628654
	.quad	0x3fe2362ba7b61c73              # double 0.56911261325957552
	.quad	0x3fda651a2ad77ece              # double 0.41242078956382222
	.quad	0x3f9afe1c7a066ec0              # double 0.026359982440779417
	.quad	0x3fde22a889bb1b02              # double 0.47086537790566763
	.quad	0x3fc2dba4a91422ec              # double 0.14732797866624681
	.quad	0x3fc789eadcfd7b6c              # double 0.18389640608344437
	.quad	0x3fda695b3c4b786c              # double 0.41268044365086243
	.quad	0x3fd2a3c4e47198c2              # double 0.29124567326506334
	.quad	0x3fbb456e70ded828              # double 0.10652818923594565
	.quad	0x3fe71c534de3afb0              # double 0.72220769131444307
	.quad	0x3fd93f327ef58188              # double 0.39448225401249504
	.quad	0x3fdbbd145a2cb018              # double 0.43341549688443726
	.quad	0x3fda03537e4b33e8              # double 0.40645301183104587
	.quad	0x3fe2830071ee47a7              # double 0.57849142315011626
	.quad	0x3fed7a9e4604dbc5              # double 0.9212180488165066
	.quad	0x3fe9d12f702323ac              # double 0.80678531553086463
	.quad	0x3fc21c4096f9fba4              # double 0.14148719188594072
	.quad	0x3fe0929e832bcd2b              # double 0.51789785022120804
	.quad	0x3f8c1c57712cc8c0              # double 0.013725932256054896
	.quad	0x3fe4f4d351a2089b              # double 0.65488592094358766
	.quad	0x3fdec41109915762              # double 0.48071695265149661
	.quad	0x3fe9b4528d05ffcd              # double 0.80326201957358878
	.quad	0x3fe8fa39ec3b5fca              # double 0.78054519785927678
	.quad	0x3fe1dd41d7eb160e              # double 0.55825893565696716
	.quad	0x3fd255f52cc4620c              # double 0.28649644252576034
	.quad	0x3fc3a5e940ac3a48              # double 0.15350070627069301
	.quad	0x3fb0b164a0ca88b8              # double 0.065206803565646676
	.quad	0x3fddf60965edf6bc              # double 0.46814188913399923
	.quad	0x3fc59d3f1be5021c              # double 0.16886128294028502
	.quad	0x3fa4b10d270186e0              # double 0.040413294803114175
	.quad	0x3fe0fa5051ff6560              # double 0.53055587783016378
	.quad	0x3fe13dac2f245203              # double 0.53877839286229834
	.quad	0x3fd7f2e79e76f2a2              # double 0.37420073008596877
	.quad	0x3fe67a4ab82f2956              # double 0.70242820714455934
	.quad	0x3fdc0f5bc12cf6d2              # double 0.43843740334328374
	.quad	0x3fb40f0416f534a8              # double 0.078354125599804036
	.quad	0x3fed8a8d9945da48              # double 0.92316322265725947
	.quad	0x3fe3f8af81cb6050              # double 0.62410712576366656
	.quad	0x3fd86b6bd336eacc              # double 0.38155646921556463
	.quad	0x3f95e9f2a40e4580              # double 0.021400252593200886
	.quad	0x3fd31aa9e2771c46              # double 0.29850241771459129
	.quad	0x3fc3a1f3ab6c9294              # double 0.15337987776105833
	.quad	0x3f8e8e91115d58c0              # double 0.014920361845423336
	.quad	0x3f8bc5cfc14fb280              # double 0.013560889326947434
	.quad	0x3fce5e7eb6c11b48              # double 0.23725875781584649
	.quad	0x3fda4689b5ab83c4              # double 0.4105552934761898
	.quad	0x3febda3c277308e1              # double 0.87039001183464049
	.quad	0x3fecbc4bfc0dbcd7              # double 0.89798545102339744
	.quad	0x3fde5d0c07cabe36              # double 0.47442913781103202
	.quad	0x3fd8c5aa775982f4              # double 0.38706456809272471
	.quad	0x3fe2d22dc22a40a5              # double 0.58815658495770562
	.quad	0x3fede2f5524044fa              # double 0.93395486893328372
	.quad	0x3fefaa8047bc396c              # double 0.98956312189856765
	.quad	0x3fd2c756908bbc72              # double 0.2934166347103605
	.quad	0x3f94c3e24fe095e0              # double 0.020278488278696716
	.quad	0x3f9b326d27df3860              # double 0.026559548910704556
	.quad	0x3fe6d9025041c385              # double 0.71399036097692259
	.quad	0x3fac01530a66d940              # double 0.05469760419821279
	.quad	0x3fe69ad0c70a3c9e              # double 0.70639838099477337
	.quad	0x3fca23e46f49450c              # double 0.2042203467740723
	.quad	0x3fe69be87053f63f              # double 0.70653173388536306
	.quad	0x3fe5ce87fe7abd5f              # double 0.68146133139627441
	.quad	0x3fdf45f67fa1e5fe              # double 0.48864519561865893
	.quad	0x3fe479c34078a603              # double 0.63986361114547241
	.quad	0x3fe947f2a47025ed              # double 0.7900326930695748
	.quad	0x3fe6d95e6a3ccb8b              # double 0.71403427838809941
	.quad	0x3fb53564948d2188              # double 0.08284596087208318
	.quad	0x3fe39cf57fdc2afb              # double 0.61291003201162597
	.quad	0x3fe422186319c259              # double 0.62916201930608928
	.quad	0x3fecb4aae6d2de58              # double 0.89705414850954934
	.quad	0x3fa9da31c39b1340              # double 0.050492816093117288
	.quad	0x3feca7178b9da9fd              # double 0.89539696949697112
	.quad	0x3fc6e7145ac2fa34              # double 0.17892698699684362
	.quad	0x3fed7e9665f0ec92              # double 0.9217025748288441
	.quad	0x3fc49b62314448c4              # double 0.16099193006136236
	.quad	0x3fec032246471f10              # double 0.87538255430351519
	.quad	0x3fc000905ba4e5ac              # double 0.12501720881281864
	.quad	0x3fe5ea54af78cbaf              # double 0.68485483428809413
	.quad	0x3fd2f1863e5b70c2              # double 0.29599147882050769
	.quad	0x3fd6b468cb21ae88              # double 0.35476131283824275
	.quad	0x3fed37655bd1bca9              # double 0.91301219876722428
	.quad	0x3fea476e1496290b              # double 0.82121948262036548
	.quad	0x3fd5c692efeec3ba              # double 0.34024499350476456
	.quad	0x3fb11f07523cb318              # double 0.066879708840769658
	.quad	0x3fbb08c2bdf27bb0              # double 0.10560242783911522
	.quad	0x3fd8504c786b8b2e              # double 0.37990104446196227
	.quad	0x3fdc869fbce3a1a4              # double 0.44571679540833942
	.quad	0x3fee4be60cb05460              # double 0.94676496961859513
	.quad	0x3fe9d684f1623daf              # double 0.80743643899216078
	.quad	0x3feabfb6a8d2e3d5              # double 0.83590252850910451
	.quad	0x3fe2b5bf7f1b994e              # double 0.58468603921645879
	.quad	0x3f88df73da5fc9c0              # double 0.012144951917410718
	.quad	0x3fef274378fd691d              # double 0.97354291563832229
	.quad	0x3fbe41095f86f998              # double 0.11817987997253565
	.quad	0x3fdfd194a0896b5c              # double 0.49716678311749773
	.quad	0x3fd2a4a32316230a              # double 0.29129866053021714
	.quad	0x3fe1999d70975890              # double 0.5500018309637813
	.quad	0x3feb0816b7be9a19              # double 0.84473739516835444
	.quad	0x3fe78e75bdde88f0              # double 0.73614012798159756
	.quad	0x3fe0f4165d5ae5f3              # double 0.52979582055485108
	.quad	0x3fdff0266edad2a6              # double 0.49903260064756194
	.quad	0x3fe8fb45be82ee7d              # double 0.7806729050566471
	.quad	0x3fd0e7c7985769fe              # double 0.26414670827003295
	.quad	0x3fee135ad3168321              # double 0.93986264446366274
	.quad	0x3fefb0b9cc537622              # double 0.99032297046114004
	.quad	0x3fdc12b8ee08413a              # double 0.4386427235158582
	.quad	0x3fe46b9ab988034c              # double 0.63813530193883983
	.quad	0x3feb4bb00120f999              # double 0.85298919887991353
	.quad	0x3fbab00ef1b394f0              # double 0.10424893761554066
	.quad	0x3fb50b5695908d38              # double 0.082204257502373035
	.quad	0x3fe7c099db6ecae4              # double 0.7422608648106146
	.quad	0x3fe24b643c50be1f              # double 0.57170306949950944
	.quad	0x3fd59007fc70ada2              # double 0.33691596653326361
	.quad	0x3fea302309a3775b              # double 0.81837608225371683
	.quad	0x3fd1354339ac8a7a              # double 0.26887589103913678
	.quad	0x3fe71ced4dd61ef9              # double 0.72228112413810586
	.quad	0x3fd661940d14a37e              # double 0.34970570828823344
	.quad	0x3feec3eba5d7b9aa              # double 0.96141607657573513
	.quad	0x3fec766159e6699e              # double 0.88945071753123606
	.quad	0x3fc6a9e630c601fc              # double 0.17705991155163747
	.quad	0x3fe0eaac1d0e5a21              # double 0.52864652323734529
	.quad	0x3fe76d061292ce3a              # double 0.73205855968121303
	.quad	0x3fe58d25d578ec85              # double 0.6734799546606075
	.quad	0x3fe35275f9ddc4b4              # double 0.6038160209847292
	.quad	0x3feb17234900db05              # double 0.84657444246735791
	.quad	0x3fee6d16999b169b              # double 0.95081644059310422
	.quad	0x3fedec64f7994e46              # double 0.93510673865461835
	.quad	0x3fdfdd09e984dda6              # double 0.49786613277998482
	.quad	0x3fb0255bd78cd358              # double 0.063070049404655548
	.quad	0x3fdf256e8128eb62              # double 0.48665964711442744
	.quad	0x3fdeb11b29299728              # double 0.47955969829341649
	.quad	0x3fe0f31db96d3fd5              # double 0.52967725959933409
	.quad	0x3fe124fa10e85f97              # double 0.53576377203261216
	.quad	0x3fea15503cbec194              # double 0.81510173668179897
	.quad	0x3fe6ba1bb288aa58              # double 0.71021828527347974
	.quad	0x3fa5946d319938c0              # double 0.042148029617793181
	.quad	0x3fe47c9fc9262e54              # double 0.64021291052763241
	.quad	0x3feef77f3933a6b7              # double 0.96771203205317746
	.quad	0x3fc132d45208c4b0              # double 0.13436368947580979
	.quad	0x3fe1d7c7d821c2f1              # double 0.55759041035898183
	.quad	0x3fa2acfdf3a87c50              # double 0.036476074212480669
	.quad	0x3febd3fd18b71d03              # double 0.86962752177433378
	.quad	0x3fdbb7becadfc1aa              # double 0.43308992206496078
	.quad	0x3fe040e5abe71048              # double 0.50792201590275798
	.quad	0x3fe0afd8dd832919              # double 0.52146571411256837
	.quad	0x3f74a7eacbf75900              # double 0.0050429507968685616
	.quad	0x3fc76d71c2632924              # double 0.18302747718400625
	.quad	0x3fefb7fdf4f4f9da              # double 0.99120996325637667
	.quad	0x3feb1831c7eecd6c              # double 0.846703424924653
	.quad	0x3fe79ba6326321dc              # double 0.73775014725930133
	.quad	0x3fe28961c988b732              # double 0.57927026140325766
	.quad	0x3fc98245995fd8b4              # double 0.19928808201774972
	.quad	0x3fedda5796ec1bf5              # double 0.93290309407245664
	.quad	0x3fd3f70d14f1ed52              # double 0.31195380254185523
	.quad	0x3fb72e67e357a430              # double 0.090551846507552324
	.quad	0x3fd666a311645750              # double 0.35001446436341599
	.quad	0x3fc6ab8211d772cc              # double 0.17710901137515689
	.quad	0x3febc3a6f417f201              # double 0.86763332056540332
	.quad	0x3fae9c6ef8b2da40              # double 0.059787242754670178
	.quad	0x3f967a2e2f354fe0              # double 0.021950456267702978
	.quad	0x3fd7b15782f4e324              # double 0.37019908703546123
	.quad	0x3fe689713935ffdb              # double 0.70427762197504806
	.quad	0x3fb4ddc15930f2d8              # double 0.081508716845699936
	.quad	0x3fe7ec4d29a89585              # double 0.74759538780624324
	.quad	0x3fedd67993898b9c              # double 0.93243101898075364
	.quad	0x3fe1f2cb8a8db1f1              # double 0.56088807164411325
	.quad	0x3fdb350520cf2880              # double 0.42511108593010505
	.quad	0x3fcb81f93e47766c              # double 0.21490397969221264
	.quad	0x3fbb145d918c4f90              # double 0.10577950290126936
	.quad	0x3fec3fd65484f143              # double 0.88279263026883148
	.quad	0x3fea25fda129ff8f              # double 0.81713754155497209
	.quad	0x3fe0119f5f35fc9d              # double 0.50215118976474893
	.quad	0x3fccc6c799e4a9e8              # double 0.2248162747794844
	.quad	0x3fe885eb2c883f81              # double 0.76634749124239943
	.quad	0x3fea3e947a90efbb              # double 0.82013915957167371
	.quad	0x3febb7f34c2a7013              # double 0.86620488048675026
	.quad	0x3fe97f3ac9a708a3              # double 0.79678096184968117
	.quad	0x3fc51f2135f16c60              # double 0.1650125039476249
	.quad	0x3fe5d14db699d674              # double 0.68179975189441544
	.quad	0x3fa89b7d90a18080              # double 0.04806129827989114
	.quad	0x3fdbd7e4f8249550              # double 0.43505214913087276
	.quad	0x3fa30f29cb5241b0              # double 0.037225061482902944
	.quad	0x3fd723e669affb78              # double 0.36156616517103357
	.quad	0x3fe67142479ff342              # double 0.70132554997653807
	.quad	0x3fe6da65ab314168              # double 0.71415980754867991
	.quad	0x3fdd90549ccdcc9e              # double 0.46193423569565961
	.quad	0x3fd11c132e9e91f2              # double 0.26733855774571602
	.quad	0x3feaab4ec6da7f96              # double 0.83341158712936436
	.quad	0x3fbd05518e452288              # double 0.11336240504636852
	.quad	0x3fd317c9dec18c7c              # double 0.29832693818588729
	.quad	0x3fc3f619a1e07e60              # double 0.1559478798308076
	.quad	0x3fd95388eea13e08              # double 0.39572356513687668
	.quad	0x3fdf9c22d9d83c8a              # double 0.49390479349035188
	.quad	0x3fd66e44f401d956              # double 0.35048030690031362
	.quad	0x3fe6a746860c5442              # double 0.70791937047273046
	.quad	0x3fe7c784067fb33c              # double 0.74310494679739447
	.quad	0x3fe2affe8c3f1534              # double 0.58398368255499244
	.quad	0x3fe943ebb75b9a24              # double 0.78954110920023312
	.quad	0x3fbb65d2ea337590              # double 0.10702245919988784
	.quad	0x3fe444267cf8a8e0              # double 0.63331913383924743
	.quad	0x3fdb0bfb5e0c18e2              # double 0.42260631737043586
	.quad	0x3fe3819a80dfbf65              # double 0.60957074328142069
	.quad	0x3fd6d9028fdb654a              # double 0.35699523972069314
	.quad	0x3fe854f0586c3d11              # double 0.76036851186828092
	.quad	0x3fd0dda9c27ed578              # double 0.26352924340911654
	.quad	0x3fc8274f3291e59c              # double 0.18869962662919881
	.quad	0x3fd31cbf0c4e512a              # double 0.29862953378439505
	.quad	0x3fefbeee8f739292              # double 0.99205711381780959
	.quad	0x3feb69ae39f2156e              # double 0.85665046041019166
	.quad	0x3fdab7df41d26b7e              # double 0.4174726622383601
	.quad	0x3fc2c8fbbd83438c              # double 0.14675852540542811
	.quad	0x3fcac6917a269d7c              # double 0.20918482269665251
	.quad	0x3fd708fdb543d2ea              # double 0.35992376996664055
	.quad	0x3fd52c99e39c1c7e              # double 0.33084723689575657
	.quad	0x3f84338ac73f4a40              # double 0.0098639337592533182
	.quad	0x3fdfc313389b65ac              # double 0.49628143814114867
	.quad	0x3febdbeb352fad4f              # double 0.87059555423676638
	.quad	0x3fd00af613a2b696              # double 0.25066902082003517
	.quad	0x3fd0113d82a518d8              # double 0.25105226286212945
	.quad	0x3fef0ad771637591              # double 0.97007343431657677
	.quad	0x3fd7035566bb370e              # double 0.35957846672396065
	.quad	0x3fe2b7bc7de61a0a              # double 0.58492874707809617
	.quad	0x3feb44ac357d73ba              # double 0.8521328968741877
	.quad	0x3fd5ee7fb8929b5e              # double 0.34268181824375243
	.quad	0x3fe93b23f8c86d65              # double 0.78846930113233482
	.quad	0x3fe5afc21992501d              # double 0.67770485872688691
	.quad	0x3fd2e077b5cd8e2c              # double 0.29495041612810513
	.quad	0x3fe9b5b858234ac3              # double 0.80343262876916588
	.quad	0x3fee195774ccb0b4              # double 0.94059346020141854
	.quad	0x3fe0bd0aeee0d334              # double 0.52307650237944481
	.quad	0x3fdb0c8bbcf1a36a              # double 0.42264073802521429
	.quad	0x3f9409721edcbde0              # double 0.019567282804187403
	.quad	0x3fccb92fb8fa4ae8              # double 0.22440144092669034
	.quad	0x3fb2da36b6e02bc0              # double 0.073642177245502261
	.quad	0x3feff05fc3314c7f              # double 0.99809253810452946
	.quad	0x3fef535528972c8d              # double 0.97892244270168904
	.quad	0x3fbfff879016a6e8              # double 0.12499282138619672
	.quad	0x3fef54680b9858ef              # double 0.97905351891202296
	.quad	0x3fef7644dce15dab              # double 0.98318713322344331
	.quad	0x3febe70dd4378424              # double 0.8719548363552616
	.quad	0x3fede69426d6d540              # double 0.93439681611804559
	.quad	0x3fe36350edcd7d66              # double 0.60587355085219197
	.quad	0x3fe232183ca8df8b              # double 0.56861507270422018
	.quad	0x3fc5328a882d02a0              # double 0.16560489320001626
	.quad	0x3fe7250f0f0a6a28              # double 0.723273782135327
	.quad	0x3fbb23eabc563b78              # double 0.10601679895465377
	.quad	0x3fef4f528d218062              # double 0.97843291821119416
	.quad	0x3fe9054629b2bbfb              # double 0.78189380783248852
	.quad	0x3fc8c9450efd67c8              # double 0.19364226562430376
	.quad	0x3fd0d22c2b8d6be0              # double 0.26282791379133918
	.quad	0x3f95f6bfbd98d360              # double 0.021449085185128225
	.quad	0x3fbbce9e20a3c158              # double 0.10862148568026464
	.quad	0x3fd898dc6d1fe3c8              # double 0.38432989746757729
	.quad	0x3fdbade19326df4e              # double 0.43248786325738287
	.quad	0x3feb2b126d962594              # double 0.84900781062713059
	.quad	0x3fe729bc6627820d              # double 0.72384471847550602
	.quad	0x3fb668fb00793230              # double 0.087539374938565783
	.quad	0x3fcab09c416263cc              # double 0.20851472084612366
	.quad	0x3fda9622668e0e9e              # double 0.41541347518089278
	.quad	0x3fe21bbc152643fd              # double 0.56588558321720905
	.quad	0x3f8050655476bb00              # double 0.0079658428574851392
	.quad	0x3fec5bead905e89d              # double 0.88622038256950797
	.quad	0x3fecda100ef7a167              # double 0.9016189853983122
	.quad	0x3fe30023c120aab7              # double 0.59376704902873356
	.quad	0x3fe7d890e3a20014              # double 0.74518627604993748
	.quad	0x3fb3d41510c4cf08              # double 0.077454868883077066
	.quad	0x3fd60b89f229995c              # double 0.34445427559548647
	.quad	0x3fe7f07aea4b8123              # double 0.74810548554163281
	.quad	0x3fe99332a5cfae51              # double 0.79921848664293738
	.quad	0x3fe58940d6f35dd1              # double 0.67300455076741106
	.quad	0x3fd1846bd0297d12              # double 0.27370734527899387
	.quad	0x3fd8faacd9f94f60              # double 0.39030000006208887
	.quad	0x3f9ce47d602a2500              # double 0.028215369219229736
	.quad	0x3feceb77e2a19f8e              # double 0.90374368919309389
	.quad	0x3fe81c096d548bb7              # double 0.75342246392789647
	.quad	0x3feca5fa8bb79914              # double 0.8952610710955775
	.quad	0x3feb35f296656355              # double 0.85033540128925245
	.quad	0x3fd7463d1625ad30              # double 0.3636620250969882
	.quad	0x3fe14dbf5bd1e4f7              # double 0.54074066098760809
	.quad	0x3fdf3728a288d7ca              # double 0.48774162170900281
	.quad	0x3fe9e3b38957ba71              # double 0.8090455706095111
	.quad	0x3fdd3420c7086e2a              # double 0.45630664288339295
	.quad	0x3fe8684aceaaa088              # double 0.76273098339608314
	.quad	0x3fbd8f72b5743240              # double 0.11547009401346831
	.quad	0x3fbdef1bad6747b8              # double 0.11692975028498054
	.quad	0x3fe47d31f02d7b5d              # double 0.64028260144901206
	.quad	0x3fe52991a8eb0204              # double 0.66132433883473185
	.quad	0x3feb1f2514a6829e              # double 0.84755186112677783
	.quad	0x3fe0863924cf1882              # double 0.51638467015506273
	.quad	0x3feefdc8799a49c9              # double 0.96847938299679825
	.quad	0x3fd7b1f3f9dbf548              # double 0.37023639107049577
	.quad	0x3fedc01218671aa4              # double 0.92969612852251204
	.quad	0x3fe332a52b9d1d75              # double 0.5999322749930075
	.quad	0x3fbd64079826b220              # double 0.11480758156421489
	.quad	0x3fd08de07911c056              # double 0.25865947554757918
	.quad	0x3fe33578a3ca49a1              # double 0.6002772521044798
	.quad	0x3fed74ba223a2628              # double 0.92049891171445086
	.quad	0x3fdb53324bd87dc6              # double 0.42695290953448894
	.quad	0x3fd53bedf5e39e96              # double 0.33178280842410268
	.quad	0x3fdbd29d8d911a42              # double 0.43472994637378204
	.quad	0x3fc12ef3df4d4304              # double 0.13424538043411627
	.quad	0x3fed3054e16ffd91              # double 0.91214984923128573
	.quad	0x3fe24b09afe7f7f8              # double 0.57165989262261885
	.quad	0x3feec2b2ad7fda00              # double 0.96126684080701352
	.quad	0x3fe1db76270d4bd7              # double 0.55803973796207174
	.quad	0x3fd4a8155e4dc432              # double 0.32275900086739562
	.quad	0x3fec76d4185a9be1              # double 0.88950543171528917
	.quad	0x3fec72289b4cb4bd              # double 0.88893537837943593
	.quad	0x3fd0c72a580eec1e              # double 0.26215609168474596
	.quad	0x3fcac96ba031c904              # double 0.20927186319347169
	.quad	0x3fe18ed10e393dc1              # double 0.54868366983458128
	.quad	0x3fef65b9da92f8c3              # double 0.98116772356277015
	.quad	0x3fec277555574898              # double 0.879816691094919
	.quad	0x3fd04a1b73f5c91a              # double 0.25452314686039446
	.quad	0x3fee122d8055c1e4              # double 0.93971896233966534
	.quad	0x3fda09f262d1351a              # double 0.40685710573309708
	.quad	0x3fdd8ae0e85e431a              # double 0.46160147373397964
	.quad	0x3fe9ca1afb086b21              # double 0.80592106847629819
	.quad	0x3feae196e6ce31cc              # double 0.84003777579487737
	.quad	0x3fd90ed6d9212d7c              # double 0.3915307159811261
	.quad	0x3fecfef04122c719              # double 0.9061204216179447
	.quad	0x3fd42fe8bbb3f03a              # double 0.31542414026603505
	.quad	0x3fe0578cd5ec42e5              # double 0.51068727285209248
	.quad	0x3fc442c5a4528e9c              # double 0.15828772090491305
	.quad	0x3fd5561863356100              # double 0.33337983787852465
	.quad	0x3feb02f1de25451e              # double 0.84410947215852494
	.quad	0x3fd65553670dc610              # double 0.34895787299964898
	.quad	0x3fe423cfcc57a061              # double 0.62937154684642505
	.quad	0x3fa27bd9d2dcd990              # double 0.036101157178950349
	.quad	0x3fdcf0c141291bb8              # double 0.45219451297128499
	.quad	0x3fa9cda252f48ac0              # double 0.05039698851239427
	.quad	0x3fe2b4183c3ca414              # double 0.58448421254172667
	.quad	0x3fe614b7653681c1              # double 0.69002885597370078
	.quad	0x3fb183ee73ae8d78              # double 0.068419364206922739
	.quad	0x3fd098a87a8e43a2              # double 0.25931751221019728
	.quad	0x3fe0c0ba4e892a81              # double 0.52352633799576165
	.quad	0x3fe09d8aee54960b              # double 0.51923128651532247
	.quad	0x3fe9f8d468dcf995              # double 0.81162472230043881
	.quad	0x3fef468f810a70ac              # double 0.9773633499458092
	.quad	0x3fd141adb4ff466a              # double 0.26963370013718324
	.quad	0x3fe8ca27bb95dd78              # double 0.77467714917922503
	.quad	0x3febcdd7c0166ab8              # double 0.86887729184248652
	.quad	0x3fd3ca845332bd7e              # double 0.30923565029930689
	.quad	0x3fcc38a0ce41c89c              # double 0.22047815390721304
	.quad	0x3fdc5c7b5e4dd754              # double 0.44314464768773587
	.quad	0x3fea13837ae8c60e              # double 0.81488203054158403
	.quad	0x3fe2638eb4ed73f5              # double 0.57465300881778936
	.quad	0x3fce41ce14c4e7d8              # double 0.23638320936316748
	.quad	0x3fcd2aaa172848a4              # double 0.22786451464395896
	.quad	0x3fe4e07f7e0914df              # double 0.65240454307845741
	.quad	0x3fe92b8b0bc89b53              # double 0.78656532575119298
	.quad	0x3fd66973797c84e4              # double 0.35018622268587607
	.quad	0x3fc0407ebadc8748              # double 0.12696823238462174
	.quad	0x3fc23fa0d759c5e4              # double 0.14256678118867605
	.quad	0x3fea5c43cb7d0ddd              # double 0.82376279586645362
	.quad	0x3fc2f5a63a73c55c              # double 0.1481216226016312
	.quad	0x3fbca2a5af9b9958              # double 0.11185679948139204
	.quad	0x3fd9d0126608456c              # double 0.40332469905941681
	.quad	0x3fb434e5b99727b0              # double 0.078932149706047338
	.quad	0x3fec0a3a804e0aa6              # double 0.87624859866658222
	.quad	0x3fc4ae7cf6986f48              # double 0.16157495537560806
	.quad	0x3fe63522d09cdedf              # double 0.69398632759745371
	.quad	0x3fe23d226a9ea382              # double 0.5699627001205132
	.quad	0x3fc5ede5bb11b30c              # double 0.17132255205378788
	.quad	0x3fa6952c8f58c4b0              # double 0.044106857775099484
	.quad	0x3fec70204c0fc594              # double 0.88868727546484871
	.quad	0x3fe7035eba8a4f83              # double 0.71916138108871086
	.quad	0x3fceec4143c77fc0              # double 0.24158492860351366
	.quad	0x3fa930f903ef52d0              # double 0.049201757173852223
	.quad	0x3feddcebb9358827              # double 0.93321787046102578
	.quad	0x3fef91123a561e1f              # double 0.98645888704135475
	.quad	0x3fe61915f0b6349d              # double 0.69056221975337773
	.quad	0x3fda9fb468cf97ac              # double 0.41599760280075304
	.quad	0x3fed5a1055175c0b              # double 0.91724411601433198
	.quad	0x3fe934e61a3c3a63              # double 0.78770737766337751
	.quad	0x3fec49f2a00a1749              # double 0.88402682550143041
	.quad	0x3fd61a06b0d5d268              # double 0.34533850926462728
	.quad	0x3fd1735ead676498              # double 0.2726666158101323
	.quad	0x3fe6646086baa865              # double 0.69975305856975167
	.quad	0x3feb09ed5df610ad              # double 0.84496181823535255
	.quad	0x3fdef47dd8c29bce              # double 0.48367258232104582
	.quad	0x3fec499c906d1a31              # double 0.88398578842390496
	.quad	0x3fe3640e9c08c36c              # double 0.60596399760662001
	.quad	0x3fe4c9b0902a14b0              # double 0.64962032467942343
	.quad	0x3fd9026fd5dad48a              # double 0.39077373394258841
	.quad	0x3fdef2c1501262ae              # double 0.48356659717095851
	.quad	0x3fe99a55357400a5              # double 0.80008945884766958
	.quad	0x3fb8e6ff7993de10              # double 0.097274748975785252
	.quad	0x3faf19f012219000              # double 0.060744764531392548
	.quad	0x3fec5a5db3aa0a67              # double 0.88603100863140305
	.quad	0x3fe170e68969a13d              # double 0.54503180349733038
	.quad	0x3fd8b112908ed564              # double 0.38580764882075003
	.quad	0x3fee7ad8fc08504a              # double 0.95249604439823909
	.quad	0x3fbab25bc702d658              # double 0.10428403481167814
	.quad	0x3fd4b4904132a538              # double 0.32352072112060482
	.quad	0x3fc17c93d6f35f6c              # double 0.13661430354727189
	.quad	0x3fee2344cdf70d0a              # double 0.94180526950404553
	.quad	0x3fe647804526c35c              # double 0.69622815614830413
	.quad	0x3fdfedab40ab01c0              # double 0.49888116183504039
	.quad	0x3fe76a27f9356ecf              # double 0.7317085139615872
	.quad	0x3fa9476cb91cf2d0              # double 0.049373052212535407
	.quad	0x3fecfa7aa9cc9f2c              # double 0.90557606853415029
	.quad	0x3fd75e49bbf50df2              # double 0.36512988429259885
	.quad	0x3fea91a12d8cf19a              # double 0.83027705093950321
	.quad	0x3fe68514ebbd380c              # double 0.70374532740402307
	.quad	0x3fe8282753c99ed2              # double 0.75490156521569873
	.quad	0x3fee860df9f679e7              # double 0.95386408635004905
	.quad	0x3fe0459d99a6245e              # double 0.5084980011898883
	.quad	0x3fdf25e9dd68e8ae              # double 0.48668905851412603
	.quad	0x3fe84b15720e1f0d              # double 0.7591654994621152
	.quad	0x3fef4745e632f3e3              # double 0.97745032273052989
	.quad	0x3fd8441ccb89de4e              # double 0.37915725590525973
	.quad	0x3fec5384906ca180              # double 0.88519504745367783
	.quad	0x3fd136fed88b0a6c              # double 0.26898165842809507
	.quad	0x3fd1f975e53650e4              # double 0.28085086235047485
	.quad	0x3f9835bfe8f770c0              # double 0.023642538637304922
	.quad	0x3fe522d2312c95e2              # double 0.66050061802223703
	.quad	0x3fd69df1f5a85c2e              # double 0.35339020719533465
	.quad	0x3fc6cb1f8b59392c              # double 0.1780738287365663
	.quad	0x3fef2ef41a92e603              # double 0.97448163213920258
	.quad	0x3fe695cecee8ad78              # double 0.70578709041494303
	.quad	0x3fe67abfcf53b172              # double 0.70248404019871047
	.quad	0x3fe21a5398e6937e              # double 0.56571369040885577
	.quad	0x3fede8b0db037ddd              # double 0.93465464378453655
	.quad	0x3fe979e15063fd21              # double 0.7961279459122218
	.quad	0x3fa38dd31a0cd5b0              # double 0.038191410951564975
	.quad	0x3feb28f4304a5fbf              # double 0.84874925071471086
	.quad	0x3fe2628fa7f022b2              # double 0.5745313911475789
	.quad	0x3fd06938e2e6a3c0              # double 0.2564222541646437
	.quad	0x3fda6cc53c4bf942              # double 0.41288882149082806
	.quad	0x3fedc4bcde067eed              # double 0.93026584019022851
	.quad	0x3feed0654b21a636              # double 0.96293892549619531
	.quad	0x3fe7ea7d0c823555              # double 0.74737408106890746
	.quad	0x3fe1dea2f0a9d6be              # double 0.5584273052652049
	.quad	0x3fdc025191b2603c              # double 0.43764151790810835
	.quad	0x3fe64f8dc0b2db9f              # double 0.69721114765603776
	.quad	0x3fe3e7a99dff40ac              # double 0.62202912195973203
	.quad	0x3fdefaa47beb77c4              # double 0.48404800511877633
	.quad	0x3fd31bff82516af2              # double 0.29858386732455167
	.quad	0x3fd120a52dc30d70              # double 0.26761750668466444
	.quad	0x3fe4b3213ccce313              # double 0.64686643481317885
	.quad	0x3fe7a6598d1a705f              # double 0.7390563732074148
	.quad	0x3feef17ed4739e80              # double 0.9669794225164452
	.quad	0x3fc900778cee5088              # double 0.19532675153152845
	.quad	0x3feccfd111cae81c              # double 0.90036824679487237
	.quad	0x3fe39a44f7e527b4              # double 0.6125817147924324
	.quad	0x3fd10b83146197fe              # double 0.26632763853410768
	.quad	0x3fb2c0f56f8bc330              # double 0.073256816609284625
	.quad	0x3fec85c6744b9ba5              # double 0.89132998193678203
	.quad	0x3fde2daa77ab0a32              # double 0.4715372246393229
	.quad	0x3fdcdeb6fb2a7fdc              # double 0.45109343078547481
	.quad	0x3feb355dbf858521              # double 0.85026442915492251
	.quad	0x3fd555cbb1732676              # double 0.33336155251581745
	.quad	0x3fef960626aad9da              # double 0.9870634799215694
	.quad	0x3fd68d7f08f2ac46              # double 0.35238624452421552
	.quad	0x3fea5f8d3cd15453              # double 0.82416402700858737
	.quad	0x3febfdb661b5a9df              # double 0.8747207554236488
	.quad	0x3fe1de79345581f3              # double 0.55840740415084011
	.quad	0x3fbff61744b2fb40              # double 0.12484879901147128
	.quad	0x3fefb064746755e8              # double 0.99028227553452286
	.quad	0x3fd8cd023ef00eb8              # double 0.38751274248373191
	.quad	0x3fe3b4bf87fde143              # double 0.61581398545153154
	.quad	0x3fd568986de218b0              # double 0.33450899821071811
	.quad	0x3fe2fa9d03cd1a12              # double 0.59309244863908561
	.quad	0x3fa4e995a48ca150              # double 0.040844608627880974
	.quad	0x3feca2fc3d2524aa              # double 0.89489566748047378
	.quad	0x3fe6828b2f34106a              # double 0.70343550891312856
	.quad	0x3fba287c87b0dff0              # double 0.1021802741314557
	.quad	0x3fe07ba81ad0ac52              # double 0.51509480702714883
	.quad	0x3fe50f11dc43d255              # double 0.65808957119458944
	.quad	0x3f869f2987dbf840              # double 0.011045765360446436
	.quad	0x3fe18322d939846a              # double 0.54725782801336931
	.quad	0x3fc194c1b4027efc              # double 0.13735219277895527
	.quad	0x3fee265edab15819              # double 0.94218390191486201
	.quad	0x3fe5205d6118cb60              # double 0.66020077671269561
	.quad	0x3fe9b9b60475121d              # double 0.80391980047767542
	.quad	0x3fc001f7643bf838              # double 0.12506000894785685
	.quad	0x3fe101791a82301c              # double 0.5314298169846583
	.quad	0x3fed99b32b5e3e76              # double 0.92501219244327504
	.quad	0x3faa693b4325a040              # double 0.051584102579739
	.quad	0x3fe243106ae58c08              # double 0.57068653944259129
	.quad	0x3fdbb3f834df0e08              # double 0.43285947001660974
	.quad	0x3fe92c7f7178a376              # double 0.78668186342575441
	.quad	0x3fe831cf262db872              # double 0.75608022171742406
	.quad	0x3fc380db7f892c44              # double 0.15236991622291118
	.quad	0x3fd07183252e8628              # double 0.25692824011830107
	.quad	0x3fe42fcd21bbd053              # double 0.63083511913874657
	.quad	0x3fdc05fa266688de              # double 0.43786481618930206
	.quad	0x3fe9db891cf3feef              # double 0.80804877905754136
	.quad	0x3fef4ba4ae80ffdf              # double 0.97798379977029614
	.quad	0x3fe743ec4e93b721              # double 0.72704139086792818
	.quad	0x3feb88f1d0a6947e              # double 0.86046686889734736
	.quad	0x3fcd6ffedca44a5c              # double 0.22998033307574672
	.quad	0x3fa01ffb70934ff0              # double 0.031494004718893964
	.quad	0x3fe80499d44fe41c              # double 0.75056163279726062
	.quad	0x3fe9d953a536f3f2              # double 0.80777914303291554
	.quad	0x3fa81d4077f76550              # double 0.047098173755964923
	.quad	0x3fd1649735a87f4c              # double 0.27176456680353023
	.quad	0x3fda749657f713ce              # double 0.41336592283579143
	.quad	0x3fc8b1b2e8921024              # double 0.19292293888077083
	.quad	0x3fd0ea59e2b6bdd4              # double 0.26430365695975166
	.quad	0x3fc12bc326fd3040              # double 0.13414801982651348
	.quad	0x3feafb455f5b7b92              # double 0.84317272781832941
	.quad	0x3fecbdf29518a201              # double 0.8981869613681398
	.quad	0x3fc91a7f801b76d0              # double 0.19612115626562465
	.quad	0x3fe926256f1772ee              # double 0.7859065217740786
	.quad	0x3fe873d45c3c6315              # double 0.76413934721776633
	.quad	0x3fe32f01d0181895              # double 0.59948816913017089
	.quad	0x3fe0c9f8310bdc45              # double 0.52465447978364266
	.quad	0x3fca07a3cbb8cf28              # double 0.20335814902647908
	.quad	0x3fde46d4bf85c892              # double 0.47307318404558274
	.quad	0x3fe5e03725867ef6              # double 0.68362004594015846
	.quad	0x3f66aee4db834000              # double 0.0027689428207864353
	.quad	0x3fdfe9e10b6b9dc4              # double 0.49864984622260189
	.quad	0x3fcdce6f706212d0              # double 0.23286240565734895
	.quad	0x3f84b41218571940              # double 0.010109082572750894
	.quad	0x3fe4410678594920              # double 0.63293765550250569
	.quad	0x3fe57839b71185d1              # double 0.67092595820957446
	.quad	0x3fb97a5cebc51f18              # double 0.099523360787426518
	.quad	0x3fcfa257c025d600              # double 0.24714180834023125
	.quad	0x3fe0b41c2dc987ec              # double 0.52198609297579202
	.quad	0x3fdb4a08d467fda0              # double 0.42639370672983468
	.quad	0x3fbc3102db0575f8              # double 0.11012285086822959
	.quad	0x3fe6f9adaa30e18c              # double 0.7179783176462009
	.quad	0x3fd0e19d7c0febf0              # double 0.26377045741509075
	.quad	0x3fe5226ff80db9f5              # double 0.66045378158543022
	.quad	0x3fd4d569d878446c              # double 0.32552572383526157
	.quad	0x3fb42c9593b2d440              # double 0.078805302199570271
	.quad	0x3fd75f04ce03c3d4              # double 0.3651744853842136
	.quad	0x3fed32a414ef484b              # double 0.91243175591285686
	.quad	0x3fc0d564efd03394              # double 0.13151227674134403
	.quad	0x3fe41cff3812a251              # double 0.6285396666690507
	.quad	0x3fd911841197ebac              # double 0.39169408529385907
	.quad	0x3fe0f59f59bba69b              # double 0.52998321081141186
	.quad	0x3fe69fce1267b252              # double 0.70700744242419433
	.quad	0x3fefead71c935a7f              # double 0.99741702634021567
	.quad	0x3fe9a3a284a3686a              # double 0.80122495561523732
	.quad	0x3fd142655a3d5096              # double 0.26967748463108288
	.quad	0x3fe3ddc2b30835bb              # double 0.62082037894440789
	.quad	0x3fedb0c34b1aea16              # double 0.92782749814006382
	.quad	0x3fefe533816ab142              # double 0.99672866131508209
	.quad	0x3fe3ecd029146690              # double 0.62265785239579152
	.quad	0x3fecad56e60f55d4              # double 0.89615960057806853
	.quad	0x3fb8d7b2951b6840              # double 0.097041283991900151
	.quad	0x3fea7e2ca177e733              # double 0.82790214096824
	.quad	0x3fd246ed33505f24              # double 0.28557901393058871
	.quad	0x3fe7b0202130e0d2              # double 0.74024969561198817
	.quad	0x3fe4024205770105              # double 0.62527562205653509
	.quad	0x3fd715f1c19a69cc              # double 0.36071437746582258
	.quad	0x3fd54e7b271993d8              # double 0.33291510408736036
	.quad	0x3feeaa505ab9f3c1              # double 0.95829026908869974
	.quad	0x3fd7d7a560e14356              # double 0.37253698788577105
	.quad	0x3fd8fc25f7be152a              # double 0.39038991159061942
	.quad	0x3fed81ec09f70ff5              # double 0.92210962244325734
	.quad	0x3fe6b18485c6b717              # double 0.70916963699503099
	.quad	0x3fe832c773f53b5a              # double 0.75619862220797107
	.quad	0x3fd6ed8e24a5cfc6              # double 0.35824922160031425
	.quad	0x3fa1933858038460              # double 0.034326325172295169
	.quad	0x3fb1e8124a60e8a8              # double 0.06994737926371164
	.quad	0x3fc4c7fd5d102778              # double 0.16235320133301534
	.quad	0x3fb2598babd2eff0              # double 0.071678857278072661
	.quad	0x3fea92b2d44d4087              # double 0.83040753808201451
	.quad	0x3fe371d9f909543d              # double 0.60764788284235005
	.quad	0x3f99606d092be580              # double 0.024781898197919983
	.quad	0x3fa9a1712a2b2cb0              # double 0.050059830091038093
	.quad	0x3f9b02d563e39a40              # double 0.026377996656174796
	.quad	0x3fd268d61a79053a              # double 0.28764870248058438
	.quad	0x3fc77acb3ca5ea28              # double 0.18343487225850308
	.quad	0x3fbf46cdc54e97a0              # double 0.12217413012567002
	.quad	0x3fe3bbaa697ae6e8              # double 0.61665840722636478
	.quad	0x3fef315820bc4f5e              # double 0.97477346795720243
	.quad	0x3fd2f2dd031756ba              # double 0.29607320119735514
	.quad	0x3feae8f6013cea92              # double 0.84093761674678746
	.quad	0x3fefa7f8ad3347ea              # double 0.98925432041346295
	.quad	0x3fd985c6b519adfe              # double 0.39879005132272016
	.quad	0x3feaceb0ac0f1cb4              # double 0.83773072819976457
	.quad	0x3fc18ca70b24f900              # double 0.13710487407838201
	.quad	0x3fe4c72636b4157c              # double 0.64931021389263277
	.quad	0x3fbddbf35e6a8600              # double 0.11663743071633093
	.quad	0x3fd19bc2ff37bb5e              # double 0.27513194011310371
	.quad	0x3fdd8fbf7d355040              # double 0.46189868190163352
	.quad	0x3fdc6d38206243ca              # double 0.44416621363148734
	.quad	0x3feb8b32522a358f              # double 0.86074176833942484
	.quad	0x3fda9e48dd4fb48c              # double 0.41591092693745035
	.quad	0x3fedbcfa7a3fac43              # double 0.92931865574554029
	.quad	0x3fdae36eb53a7656              # double 0.4201313752945216
	.quad	0x3fc09ed570084ad4              # double 0.1298472210915721
	.quad	0x3fbe7200724284a8              # double 0.11892702855631632
	.quad	0x3fe387a1cd87c96e              # double 0.61030664580020555
	.quad	0x3febc6c686a92cd3              # double 0.86801458645768503
	.quad	0x3fd39f730ecb7658              # double 0.30660702175905419
	.quad	0x3faec98f0d040640              # double 0.060131521548111966
	.quad	0x3fe153f07d9ddf04              # double 0.54149651083477623
	.quad	0x3fe717185b4349e4              # double 0.72156923126959471
	.quad	0x3fe8b1598efcdf2c              # double 0.77164915015507551
	.quad	0x3fba2b0539e6cc80              # double 0.10221893943416838
	.quad	0x3fdeff9fbf1076f4              # double 0.48435205134033699
	.quad	0x3fe818de342e6a2c              # double 0.75303564254438049
	.quad	0x3fd1bd7a5d5ca5e8              # double 0.27718981854795155
	.quad	0x3fcd6a1857805828              # double 0.22980026505018825
	.quad	0x3fd615b9bdf7a0c0              # double 0.34507602263921555
	.quad	0x3fbb3766d2d9ea48              # double 0.10631411216483244
	.quad	0x3fd1f461f8bf4e7e              # double 0.28054093639114075
	.quad	0x3fe43f0181421ede              # double 0.63269114728697295
	.quad	0x3fe6acb4ed6f1278              # double 0.70858236669353314
	.quad	0x3fb2d56961b55288              # double 0.073568903307498101
	.quad	0x3fb7588b99759208              # double 0.091194844213141946
	.quad	0x3fe1c67c7c4bf1df              # double 0.5554792812031869
	.quad	0x3fda6aaa126618ce              # double 0.41276027485617994
	.quad	0x3fe80bbf09749aa2              # double 0.75143386694692915
	.quad	0x3fee87c73203041e              # double 0.95407447593618477
	.quad	0x3fdbfb9d657a4912              # double 0.43723235044412079
	.quad	0x3fe0c8b89c426aad              # double 0.52450209159299777
	.quad	0x3fe0778c2100e3fb              # double 0.51459318586341796
	.quad	0x3fecc8886adf36fd              # double 0.89947911141800285
	.quad	0x3fe53f815f59af1d              # double 0.66400211928473463
	.quad	0x3fc7a89201d452a8              # double 0.18483185853314876
	.quad	0x3fc74ce6f3dd36c8              # double 0.1820343676321754
	.quad	0x3fea5d95e578f1b5              # double 0.82392401522479608
	.quad	0x3fc37d4b4e0896fc              # double 0.15226117429954644
	.quad	0x3fc6d3364d25a588              # double 0.17832068221040864
	.quad	0x3fda40e3ef849ea0              # double 0.41021059408601879
	.quad	0x3fd17e8e57495bc6              # double 0.27334936641767305
	.quad	0x3fedb44d4c500e76              # double 0.9282595148547006
	.quad	0x3fe240f2d660e07c              # double 0.57042829390321925
	.quad	0x3fe9d686b3af83a3              # double 0.80743727774471485
	.quad	0x3fefe8598db8a4b3              # double 0.99711301498350335
	.quad	0x3fee7c933005d8ca              # double 0.95270690326176433
	.quad	0x3fd059a744d8889a              # double 0.25547200892663968
	.quad	0x3f904a8a96225ce0              # double 0.015909352696863333
	.quad	0x3fd74d3f45fe1c24              # double 0.36408979258743757
	.quad	0x3fd34ce36668774a              # double 0.30156788826740366
	.quad	0x3feb18dbeb16597c              # double 0.84678455272187092
	.quad	0x3fca623e410e3e20              # double 0.2061231439260931
	.quad	0x3fd298c5a17602d8              # double 0.29057446258233943
	.quad	0x3fd6fb882ce3dee0              # double 0.35910229095268953
	.quad	0x3fc4448dd74d24dc              # double 0.15834210407982752
	.quad	0x3fe0ce6b5eae651d              # double 0.5251976823084622
	.quad	0x3fe3b0b90ebd3177              # double 0.61532261732786153
	.quad	0x3fcece98b614e818              # double 0.24067982569414492
	.quad	0x3fe6c3263008ad00              # double 0.7113219202196035
	.quad	0x3fd980b9a6c77bdc              # double 0.39848176276239911
	.quad	0x3fe82767cc4b5e71              # double 0.75481023694278637
	.quad	0x3feb94a8307e4531              # double 0.86189660521828249
	.quad	0x3fd9a09bed8e694a              # double 0.40042780112130016
	.quad	0x3fe494cdcb3433ad              # double 0.64316453636421544
	.quad	0x3fe592566f71d6f0              # double 0.67411348120250913
	.quad	0x3fc88372d4f0ab50              # double 0.1915114917513514
	.quad	0x3fc41f11ea1a73f0              # double 0.1571981804926561
	.quad	0x3fd2ca5a39bbd878              # double 0.29360061300338414
	.quad	0x3fe674c93782156a              # double 0.70175610391076515
	.quad	0x3fb4497633a9ce68              # double 0.079245936978446729
	.quad	0x3fea8f548162e30a              # double 0.82999635000951
	.quad	0x3fb8066c61eab410              # double 0.093848012834044647
	.quad	0x3fd0ed132a7d7512              # double 0.26446990155621208
	.quad	0x3feb9b867824c7b5              # double 0.86273501840172762
	.quad	0x3fe5f9647e1f9ff8              # double 0.68669342645171039
	.quad	0x3feb7f3c0195bce0              # double 0.85928154286912317
	.quad	0x3fef23ff9530c736              # double 0.97314433230187691
	.quad	0x3fe2fafdad2d7db4              # double 0.593138540494627
	.quad	0x3fe506ea647fa0bd              # double 0.65709418896314953
	.quad	0x3fecfff32628a0d8              # double 0.90624387219306879
	.quad	0x3fe42f75899dae77              # double 0.63079335096467914
	.quad	0x3febb3cd77449e91              # double 0.86569855970897625
	.quad	0x3fd1aaaf7ad6b1ee              # double 0.27604281421625287
	.quad	0x3fea96e71830ae04              # double 0.83092074131622029
	.quad	0x3fe620b9008af592              # double 0.69149446588532926
	.quad	0x3fe91386ff774a68              # double 0.78363370795916598
	.quad	0x3fe181a29af5fcf5              # double 0.54707460656928097
	.quad	0x3fe383e1b689de3d              # double 0.60984883930263545
	.quad	0x3fd876dbb5bcba0a              # double 0.38225453136229304
	.quad	0x3fd30f0f702e4794              # double 0.29779420809892909
	.quad	0x3fd7603d4f036344              # double 0.36524899212013318
	.quad	0x3fc872a605f7a9e8              # double 0.19099879542711951
	.quad	0x3fa7451f525df100              # double 0.045449236683426264
	.quad	0x3fe34dd59c81f5ff              # double 0.60325127189543071
	.quad	0x3fe010209d51a50c              # double 0.50196867681839441
	.quad	0x3fb809ff5f637380              # double 0.093902550495341685
	.quad	0x3feb11b144d5be9a              # double 0.84590972370456829
	.quad	0x3fd2a49ca8d05776              # double 0.29129711614347487
	.quad	0x3fe97201d3702896              # double 0.79516688629634547
	.quad	0x3fda4060fc5cf39c              # double 0.4101793732150385
	.quad	0x3fcd3b30d26e451c              # double 0.22836885714472366
	.quad	0x3fd00803995016ea              # double 0.25048913928945515
	.quad	0x3fc550934a7cd178              # double 0.16652146470154228
	.quad	0x3fec3f22d967dba8              # double 0.88270704710054293
	.quad	0x3fec81d6566846ec              # double 0.89084927441055361
	.quad	0x3fcfa4777b88bcb4              # double 0.24720662624301826
	.quad	0x3fe6a98071079102              # double 0.70819112850270494
	.quad	0x3fa5aeefeb0cf020              # double 0.042350289766972304
	.quad	0x3feebe5109adad05              # double 0.96073200121227897
	.quad	0x3feb50ca2b6cb5c9              # double 0.85361202699066852
	.quad	0x3fee48257a37d288              # double 0.94630693312372304
	.quad	0x3feaeb1bd455c4c6              # double 0.84119979354559216
	.quad	0x3fcd3d6d29ff5480              # double 0.22843708563474152
	.quad	0x3fda2d8accadf592              # double 0.40902967441783133
	.quad	0x3fcd572e2cef93a4              # double 0.22922303384907849
	.quad	0x3fef6bc57c2d228f              # double 0.98190569165406482
	.quad	0x3fb7f3f98f18ec70              # double 0.093566510616186482
	.quad	0x3fd8a4768a15a592              # double 0.38503802761859973
	.quad	0x3fe1122a5f33dcca              # double 0.53346747011428275
	.quad	0x3f9af001984e2b60              # double 0.026306176110249324
	.quad	0x3feefe00d222ef15              # double 0.96850625078465901
	.quad	0x3fbeaaa9ec5d41c0              # double 0.11979162235844054
	.quad	0x3fbf20ff000f0ce0              # double 0.12159723044810589
	.quad	0x3fdfb15a5e92feb0              # double 0.49519976840745539
	.quad	0x3fdfd7e60cbe30f4              # double 0.49755240673472589
	.quad	0x3fba2bdcc7d3baf8              # double 0.1022317874774038
	.quad	0x3fe0f4d9626d186e              # double 0.52988881324632842
	.quad	0x3fdb4521a1715ef4              # double 0.42609444394973583
	.quad	0x3fc2392a8ad3b078              # double 0.14236957338960443
	.quad	0x3fd9fb98751a0ab8              # double 0.40598117290225444
	.quad	0x3fd960ecfc8d5f02              # double 0.39654087699226193
	.quad	0x3fe580c08462481a              # double 0.67196679931862779
	.quad	0x3fe1c4edb6d08f8f              # double 0.55528913217539067
	.quad	0x3fe6abea3956cfca              # double 0.70848571013493111
	.quad	0x3fc1766348e7696c              # double 0.13642540988696383
	.quad	0x3fe87b345919229e              # double 0.76503960992802766
	.quad	0x3fd59e57bbab1eb6              # double 0.33778947188373409
	.quad	0x3fccefcb5166a960              # double 0.22606793856295848
	.quad	0x3fe0a2a63086ecc6              # double 0.51985463598193671
	.quad	0x3fccd1e45d8d8310              # double 0.22515539711005106
	.quad	0x3fd967c19df2aad0              # double 0.39695778297997908
	.quad	0x3fd11ac1303b5910              # double 0.26725797376765659
	.quad	0x3fe16d254dd2d98d              # double 0.54457345199516427
	.quad	0x3fd8c1061088c67a              # double 0.38678123106647144
	.quad	0x3fdf19b0e8b7ae74              # double 0.48594305731123844
	.quad	0x3fed39066a0051da              # double 0.9132110662781614
	.quad	0x3fdff6fd0ca74b4a              # double 0.49944998012249597
	.quad	0x3fe5d7fb96e56c08              # double 0.6826150843802461
	.quad	0x3fcf094cd12e4094              # double 0.24247131551647227
	.quad	0x3feceb416dddd77c              # double 0.90371772249521553
	.quad	0x3fe9fb1e13b141b7              # double 0.81190399023221616
	.quad	0x3fdca00e9930417e              # double 0.44726910552801502
	.quad	0x3fd656ecdf061196              # double 0.34905549792917989
	.quad	0x3fcf9a9ac71dbb4c              # double 0.24690565798251851
	.quad	0x3fea0806b7727938              # double 0.81347976521991594
	.quad	0x3fdaaf041175dfba              # double 0.41693212227937304
	.quad	0x3fd61795f548cbec              # double 0.34518956140089929
	.quad	0x3fd70bcf47ce6746              # double 0.36009580623941806
	.quad	0x3fda5616e3526748              # double 0.41150448035624665
	.quad	0x3fe5d9ac0fda575e              # double 0.68282130333203006
	.quad	0x3f9ab9a59f984720              # double 0.026098811975379665
	.quad	0x3fbcb5d7deeb2b18              # double 0.11214970772122645
	.quad	0x3fb787706a6b2708              # double 0.091910387021155171
	.quad	0x3fd770e08fe4425c              # double 0.36626447727124911
	.quad	0x3fca9a4d139977b0              # double 0.20783389527326568
	.quad	0x3fe7d6ae5bfeef8a              # double 0.74495618789613727
	.quad	0x3fedb377144fd0c2              # double 0.92815736739296306
	.quad	0x3fed58c74f85367b              # double 0.9170872262127
	.quad	0x3fd628b506af9260              # double 0.34623456623947924
	.quad	0x3febc3e8ce50856a              # double 0.86766472144897233
	.quad	0x3fecb7e0d58cefa9              # double 0.8974460764797999
	.quad	0x3fc8c33d58afc5b4              # double 0.19345824079895879
	.quad	0x3fee7c38d2aa6050              # double 0.95266381402599087
	.quad	0x3fdf545cfe4fc000              # double 0.48952412448034011
	.quad	0x3fbe3cfe9a8e2cd8              # double 0.11811820290874964
	.quad	0x3feebbc2d65e2360              # double 0.96042005413719877
	.quad	0x3fdfc4d045200c98              # double 0.49638754606730506
	.quad	0x3feef279d1d2c570              # double 0.96709910374754138
	.quad	0x3fec73b3890d6c3a              # double 0.88912369506886724
	.quad	0x3fe4a5f0e0d488b9              # double 0.64525646125937108
	.quad	0x3fd062319e3bf230              # double 0.25599327518992521
	.quad	0x3fc902b1573a7a40              # double 0.19539467581940251
	.quad	0x3feb726956a11deb              # double 0.85771624488637366
	.quad	0x3fe3b34f05cd8942              # double 0.61563826688169621
	.quad	0x3fd45eabf10f0764              # double 0.31827829876794156
	.quad	0x3f84fc7edb9d6540              # double 0.01024722202025663
	.quad	0x3fd699db6154a052              # double 0.35314068322123149
	.quad	0x3fe8a68bfd9704c2              # double 0.77033042458801781
	.quad	0x3feacaf44ce21d8e              # double 0.83727469459783932
	.quad	0x3fe2632af6263386              # double 0.57460544658680202
	.quad	0x3fe56520887f928c              # double 0.66859461459951453
	.quad	0x3fc03ffa3801e738              # double 0.12695243582475668
	.quad	0x3fe098a420b70182              # double 0.51863294973013319
	.quad	0x3febbc73eb46c0d7              # double 0.8667544932596013
	.quad	0x3fe407ab254165e0              # double 0.62593610073525596
	.quad	0x3faecdd492bf6650              # double 0.060164111054927916
	.quad	0x3fc8705fc03ad144              # double 0.19092938314646279
	.quad	0x3fe5b646391cb665              # double 0.6785002818557585
	.quad	0x3fd085e15511bd90              # double 0.25817139918850618
	.quad	0x3fe51a976225bdd9              # double 0.65949601334971952
	.quad	0x3fd3c36812bdc82e              # double 0.30880166845520562
	.quad	0x3fe6e988f410736f              # double 0.71600768727112818
	.quad	0x3feea85a56c1bd1c              # double 0.95805088944135574
	.quad	0x3fe4ac932131c8c1              # double 0.64606625064177348
	.quad	0x3feb87b37e4ed080              # double 0.86031508130555778
	.quad	0x3fe895bab09be65d              # double 0.76827749723379279
	.quad	0x3fde30a85721543c              # double 0.4717198229676034
	.quad	0x3fd9e8ba373cbfa6              # double 0.40482955354945671
	.quad	0x3fde072b18344474              # double 0.46918752063454083
	.quad	0x3fe736b8056d0963              # double 0.72542954501868129
	.quad	0x3f8ed6c8de06f380              # double 0.015058106685381878
	.quad	0x3fec576a514eee70              # double 0.88567081337482811
	.quad	0x3fe316f018dc3704              # double 0.59655003409872664
	.quad	0x3fd94b6cc40e2fcc              # double 0.39522856851612853
	.quad	0x3feef83b8dbd945e              # double 0.96780183490467286
	.quad	0x3fe88bcf9b4a6931              # double 0.76706676798065676
	.quad	0x3fb4369dca6d7828              # double 0.078958379669956558
	.quad	0x3fef36a9e095dbad              # double 0.975422800677611
	.quad	0x3fd1afdbfa8c3e8a              # double 0.27635859935342266
	.quad	0x3fde77655f3f2462              # double 0.47603735257559354
	.quad	0x3fca7f68ccb36db8              # double 0.20701322550926959
	.quad	0x3f8669edfeb3e740              # double 0.010944232306872359
	.quad	0x3feec60a8ddc1ba3              # double 0.96167495448104423
	.quad	0x3f8264b05e595780              # double 0.0089811114113833579
	.quad	0x3fb6fe89bf76d070              # double 0.089821442836923059
	.quad	0x3fb6a833a5434648              # double 0.088504054877625582
	.quad	0x3fe0508862417aab              # double 0.50983065786916393
	.quad	0x3fe89d2a96b33cc0              # double 0.76918534692403995
	.quad	0x3fd030be8b34b844              # double 0.25297511667566064
	.quad	0x3fd1b70b23d58faa              # double 0.2767970895713413
	.quad	0x3fc6a3f463b391a4              # double 0.17687849872812678
	.quad	0x3fe317ea7bb8f7d5              # double 0.5966694275336929
	.quad	0x3fe8e70714b13de1              # double 0.77820161859011361
	.quad	0x3fdab2565be1c76a              # double 0.4171348473820361
	.quad	0x3fe0651f3d6ca171              # double 0.51234399792615026
	.quad	0x3fac04983fc3a3e0              # double 0.054722554954260039
	.quad	0x3fd17a06539abb50              # double 0.27307279743665891
	.quad	0x3fe7efe6cfc375ba              # double 0.74803486422359033
	.quad	0x3fe4d0e247ed1245              # double 0.65049852417048071
	.quad	0x3fcf3ec2d0446900              # double 0.24410281342790796
	.quad	0x3fe4e9b6ca9f5196              # double 0.65352954458880919
	.quad	0x3fdac81270e9ad2e              # double 0.41846142794266228
	.quad	0x3fe7137b9c71a4d9              # double 0.72112827830747073
	.quad	0x3fd2a98e0aadf132              # double 0.29159880679050609
	.quad	0x3fee09f75b240ec3              # double 0.93871658135363878
	.quad	0x3fe5665e9b2bcbc3              # double 0.66874628359652666
	.quad	0x3fdd5e936a36d75a              # double 0.45889745113833202
	.quad	0x3fd7a088e83920fa              # double 0.36917326620142854
	.quad	0x3fd51168adbe6154              # double 0.32918755499988106
	.quad	0x3fe4b89fe6e56bd2              # double 0.64753718468579735
	.quad	0x3fd3a56fd5d693d8              # double 0.30697246439586712
	.quad	0x3fe45402bb32a811              # double 0.63525520860753393
	.quad	0x3fc81ac40f36d724              # double 0.18831682913667536
	.quad	0x3fdc84f38e1a154a              # double 0.44561470868241726
	.quad	0x3fe6171df43f4032              # double 0.69032190041071417
	.quad	0x3fef054cfb3f6a2e              # double 0.96939705917185903
	.quad	0x3f7caf9c8fa95b80              # double 0.0070034137412083863
	.quad	0x3fa57a4f13b27d10              # double 0.041948767809339427
	.quad	0x3fc3fff1f7bf35b0              # double 0.15624832722680315
	.quad	0x3faefeb6f266bd40              # double 0.060537068452840348
	.quad	0x3fdaba7532220396              # double 0.41763048072612585
	.quad	0x3fea8dc149c7eb7d              # double 0.82980408106173764
	.quad	0x3fec99999da99375              # double 0.89375000756682133
	.quad	0x3fca91a08599a468              # double 0.20756918452687789
	.quad	0x3fec9ec0c6fa4c8a              # double 0.89437903273427932
	.quad	0x3fe8ee923c7e51a3              # double 0.77912246527789752
	.quad	0x3fe9531ca27a774f              # double 0.79139549001750165
	.quad	0x3fe18826f20eac50              # double 0.54787013317889866
	.quad	0x3fd9e4fdac7bac0c              # double 0.40460149616291186
	.quad	0x3fefd80daea10069              # double 0.99512371165475344
	.quad	0x3fc66e43762cfb04              # double 0.17523997564600091
	.quad	0x3fe8b5f318f20795              # double 0.77221064445642418
	.quad	0x3fea316207bcfa09              # double 0.81852818976750641
	.quad	0x3fc5152e16df1564              # double 0.16470886341827928
	.quad	0x3fc2cd14fd93fc08              # double 0.14688360578290394
	.quad	0x3fec0f2ee9d748ca              # double 0.87685342475949679
	.quad	0x3fd35a1a55c4d3fc              # double 0.30237444282403181
	.quad	0x3fdabaa75b1b8592              # double 0.41764243981568783
	.quad	0x3fe515c9163ab418              # double 0.65890936223661623
	.quad	0x3fd65650cbc78c1e              # double 0.34901828670825974
	.quad	0x3f37f47b32a86800              # double 3.6552436600489902E-4
	.quad	0x3fa87fdff69c7e80              # double 0.047850607732695671
	.quad	0x3fd444b40e9efcea              # double 0.3166933195861491
	.quad	0x3feb3cedb759bdea              # double 0.85118757067351436
	.quad	0x3fe71ccb2fa7ccd5              # double 0.72226485545834385
	.quad	0x3fe0d00fae8dbc21              # double 0.52539810268888598
	.quad	0x3fdc00103f6afcc2              # double 0.43750387375980548
	.quad	0x3fe6d050d31343ad              # double 0.71292916513094939
	.quad	0x3fe3c9d21c602cd7              # double 0.61838632146955319
	.quad	0x3fe2fe9487016393              # double 0.59357668274161524
	.quad	0x3fb6852673c3f638              # double 0.087969210875564197
	.quad	0x3fd1534b8485a4c6              # double 0.27070892278295522
	.quad	0x3fd306f49d7904cc              # double 0.2972995317287086
	.quad	0x3fc9a838eafa3e9c              # double 0.20044623826514829
	.quad	0x3fe966c6aa36db7a              # double 0.7937959026811392
	.quad	0x3fe55a0c90b613db              # double 0.66724231971658854
	.quad	0x3fb39e0793ac02d0              # double 0.076630090286936125
	.quad	0x3fd02f4f290d6912              # double 0.25288752564451145
	.quad	0x3fd9500f95f7de14              # double 0.39551152844748683
	.quad	0x3fe1b279d1bf3a4e              # double 0.55303660360534379
	.quad	0x3fd6df0e704dd8b8              # double 0.35736428229518991
	.quad	0x3fe5ed4724598092              # double 0.68521458720717221
	.quad	0x3fd08f62eda10c70              # double 0.25875161367384347
	.quad	0x3fea7ec871358477              # double 0.82797643767493312
	.quad	0x3fd47732c078e0f2              # double 0.31977528377639353
	.quad	0x3fe4cb57357de297              # double 0.64982185790639135
	.quad	0x3fdfda2bcc672172              # double 0.49769110642639369
	.quad	0x3fe5d52f2573ed15              # double 0.68227345767027947
	.quad	0x3fe4928bd1207668              # double 0.64288893551902238
	.quad	0x3fe6496671740f21              # double 0.69645998152597965
	.quad	0x3fed422fe75cbdb2              # double 0.91432948291724458
	.quad	0x3fe77b8fd8f3b376              # double 0.73383324025563357
	.quad	0x3fd6885d07d61b50              # double 0.35207296147603007
	.quad	0x3fd1e52e13332ab8              # double 0.27961303591716158
	.quad	0x3fb65e14566c2de0              # double 0.087373038386594271
	.quad	0x3fe85281d1017f5f              # double 0.76007166692214045
	.quad	0x3fea2acf04e4bcd5              # double 0.81772566753161391
	.quad	0x3fd1f6e6cc47fcb4              # double 0.2806946749623862
	.quad	0x3fe4ad512c617eaa              # double 0.64615687053806892
	.quad	0x3fb09dfc653dc250              # double 0.064910673825360421
	.quad	0x3fe2f4283a4efdca              # double 0.59230433834448459
	.quad	0x3fe733dc0b62d805              # double 0.72508051132058482
	.quad	0x3fe22d55d865a559              # double 0.56803409829187068
	.quad	0x3feade039088ecee              # double 0.83960130910364028
	.quad	0x3fe08980d09b356e              # double 0.51678505652823303
	.quad	0x3fe3931b89411d5e              # double 0.61170746619692884
	.quad	0x3fb8f7b47e99d2f0              # double 0.09752967921106026
	.quad	0x3fd1d74053c93f3e              # double 0.27876289541471866
	.quad	0x3fe8b54572f7e224              # double 0.77212784247155186
	.quad	0x3fcce14c3971b094              # double 0.2256255417336247
	.quad	0x3fd95b6ceaabe92c              # double 0.39620516698018338
	.quad	0x3fbbfc22911c0840              # double 0.10931602518761085
	.quad	0x3fe4397f0e1eddd2              # double 0.63201859243320713
	.quad	0x3feea4c20ff09cbc              # double 0.95761206734905313
	.quad	0x3fc4eb5f83addd58              # double 0.16343301705976887
	.quad	0x3fe3905f1b6df3e2              # double 0.61137347562145927
	.quad	0x3fddc7d31f313534              # double 0.46532133146395727
	.quad	0x3fe9d4b94b4c1477              # double 0.80721726137620819
	.quad	0x3fed7fdd74ebe320              # double 0.92185852848260552
	.quad	0x3fe9db1aa04ac250              # double 0.80799609477078072
	.quad	0x3fef00e843d705c9              # double 0.96886075258242343
	.quad	0x3fc1e597a5c02874              # double 0.13981910317699298
	.quad	0x3fe16c23a147f691              # double 0.54445058346000696
	.quad	0x3febd573e3255ff3              # double 0.86980623592807971
	.quad	0x3fd860ba06118bac              # double 0.38090372650747883
	.quad	0x3fe2d884d125c4b4              # double 0.58893051957252007
	.quad	0x3fdf8215f50dc4ec              # double 0.49231480532678407
	.quad	0x3fe59ffd972d779d              # double 0.67578010107876063
	.quad	0x3fe972d1a2aa7588              # double 0.79526597757983186
	.quad	0x3fe4a7ece4200646              # double 0.64549870067293891
	.quad	0x3fea340e81d9fe5e              # double 0.81885457383755145
	.quad	0x3fda7e1800d5a12c              # double 0.41394615251057831
	.quad	0x3fee9d58541efc49              # double 0.95670715742006351
	.quad	0x3fec0af6af7c9227              # double 0.87633833193519173
	.quad	0x3fcd0ae1d8a7b7b8              # double 0.22689459875931361
	.quad	0x3fb5221b0f1eff10              # double 0.082551661674184595
	.quad	0x3fdd3cc4f4314922              # double 0.45683406683851235
	.quad	0x3fe2f7a7f0a47e6e              # double 0.59273144722460613
	.quad	0x3fdeba91cb63e940              # double 0.48013729917842696
	.quad	0x3fe33910aa2b2cd8              # double 0.60071595417084733
	.quad	0x3fed7b098692139d              # double 0.92126919062922108
	.quad	0x3fe19070187f7675              # double 0.5488815763926157
	.quad	0x3fe7897a74e005f6              # double 0.73553202464262202
	.quad	0x3fdee184922d9f56              # double 0.48251451754776065
	.quad	0x3fe8eab2318127e8              # double 0.7786494223485052
	.quad	0x3fc6b6c49af9e92c              # double 0.17745263640592535
	.quad	0x3fda9baf3f439fe4              # double 0.41575223138943174
	.quad	0x3fcd52a474514418              # double 0.22908454589426763
	.quad	0x3fb476111d7efba8              # double 0.079926557255915243
	.quad	0x3feade538d904ae9              # double 0.83963945054196387
	.quad	0x3fe8068432f74384              # double 0.75079545931122071
	.quad	0x3fc6c17b1c2f174c              # double 0.17777956844491383
	.quad	0x3fd0241e728cb076              # double 0.25220452486497125
	.quad	0x3fece7a6d8f7dc3e              # double 0.90327780129053514
	.quad	0x3fe5df54c30c8e00              # double 0.68351209731594054
	.quad	0x3fcc4a3cf3e7b828              # double 0.22101556691581092
	.quad	0x3fc81a277b5ac99c              # double 0.18829816363502239
	.quad	0x3fe59ae70ffe4256              # double 0.67515900729820078
	.quad	0x3fe0309f49feb8b8              # double 0.50593532993459345
	.quad	0x3fdd97cfdef2839c              # double 0.46239086887549674
	.quad	0x3fe47c6c34a5b338              # double 0.64018831522626041
	.quad	0x3fe6a8dc6c0274da              # double 0.70811291785835384
	.quad	0x3fd76cc9c11a2a9a              # double 0.36601489884984917
	.quad	0x3fd667a0d9747340              # double 0.35007497058704828
	.quad	0x3fef53b17f68c953              # double 0.97896647343285747
	.quad	0x3f77e706d05e9780              # double 0.0058355585260069232
	.quad	0x3fe2ab44cf7a6edf              # double 0.58340683482262168
	.quad	0x3feddb524da518c9              # double 0.93302264370938659
	.quad	0x3fefa480fde906d1              # double 0.98883103935096461
	.quad	0x3fe340a3ca70cde5              # double 0.60164060153186638
	.quad	0x3fd120aa0cfe220e              # double 0.26761866825884872
	.quad	0x3fe9306ce8aa8a2d              # double 0.78716130678760055
	.quad	0x3fd51989901fb5da              # double 0.32968367647739927
	.quad	0x3fedc9924a60c912              # double 0.93085588957754539
	.quad	0x3fe7df5d658173e8              # double 0.74601621461226575
	.quad	0x3fb8c80f8bbc2610              # double 0.096802684416751327
	.quad	0x3fbace3cf7e05af0              # double 0.10470944453878039
	.quad	0x3fe1650de9d41954              # double 0.54358573598509929
	.quad	0x3fe4933158b7fc69              # double 0.64296786620969926
	.quad	0x3fb2808b4cd1e4d0              # double 0.072273927931649995
	.quad	0x3fe09e3c381eba36              # double 0.51931582413619171
	.quad	0x3fc9bce97197d218              # double 0.201077633347851
	.quad	0x3fe7cb83b5261c6b              # double 0.7435930765212907
	.quad	0x3fea40ff8ee688ff              # double 0.8204343596483169
	.quad	0x3fdd13546742dd4a              # double 0.45430479129887102
	.quad	0x3fe9c537b064e912              # double 0.80532440616596745
	.quad	0x3fe0a2a32e21cf5b              # double 0.51985320100946397
	.quad	0x3fe7cc1b074e24f2              # double 0.74366523196036227
	.quad	0x3fe16195f5b73a43              # double 0.54316232673028997
	.quad	0x3fdcdae96c543fb0              # double 0.450861316480764
	.quad	0x3fd6d0f4880b7c44              # double 0.35650361333495462
	.quad	0x3fbdfe59d2552f90              # double 0.1171623362071712
	.quad	0x3febeb836896674f              # double 0.87249918391464998
	.quad	0x3fed7bae24ebe1ad              # double 0.92134768687451685
	.quad	0x3fe94354afa1cd09              # double 0.7894690923989468
	.quad	0x3fe78d0c35edbd76              # double 0.73596773655837811
	.quad	0x3fae7c06695cd1f0              # double 0.059539986001627798
	.quad	0x3fe4f3311eda5805              # double 0.65468650842626686
	.quad	0x3fe9c8386fe0ca57              # double 0.80569097377003629
	.quad	0x3fd68a3230255b98              # double 0.3521848173308455
	.quad	0x3fe95cfacb7a77ec              # double 0.79260005704759128
	.quad	0x3fe13bc5637cb92e              # double 0.53854627066701766
	.quad	0x3fa4328dbe750370              # double 0.039448194026141858
	.quad	0x3fe2786b204cbbac              # double 0.57719951923887924
	.quad	0x3fe5bd7332982890              # double 0.67937621957504923
	.quad	0x3fdad74fd7886cf2              # double 0.41939159439216589
	.quad	0x3fe6f214182b9b31              # double 0.71705059738892463
	.quad	0x3fc2bb45064de1f4              # double 0.14634001548598941
	.quad	0x3fe92f4ff6250c21              # double 0.78702543330325991
	.quad	0x3feea8b7634cbb42              # double 0.95809525866011591
	.quad	0x3fef959d88f38343              # double 0.98701359508786656
	.quad	0x3fd627acb680b924              # double 0.34617154905835634
	.quad	0x3fd4de3ad50f823a              # double 0.3260638313932166
	.quad	0x3fe43dbceb74d868              # double 0.63253637302001398
	.quad	0x3fd0827b4562f4f2              # double 0.25796396041898995
	.quad	0x3fedc33bb31c7004              # double 0.93008217795022618
	.quad	0x3fe3f1786e193f57              # double 0.62322637084614996
	.quad	0x3febbba505fe4a00              # double 0.8666558377320257
	.quad	0x3fd91afe256e18fa              # double 0.39227250724105966
	.quad	0x3fe18406552d622a              # double 0.54736630092799499
	.quad	0x3fa44df7de8c0e80              # double 0.039657350460427843
	.quad	0x3fbff91d75379808              # double 0.12489494430300863
	.quad	0x3fd795a897c48132              # double 0.36850943394712765
	.quad	0x3fcabc6cf30b5280              # double 0.20887529246705938
	.quad	0x3fe8557b5590adcf              # double 0.7604347869104745
	.quad	0x3f92832e4700b440              # double 0.018078539928115811
	.quad	0x3fd22ea66e17dfee              # double 0.28409729720396981
	.quad	0x3fde2f2012a1bd42              # double 0.4716262990904917
	.quad	0x3fa0f303722b8c10              # double 0.033104045569210538
	.quad	0x3fa63439b5cf8350              # double 0.043367198413540309
	.quad	0x3fe8e989e19d9f88              # double 0.7785081297451919
	.quad	0x3fe9ae8e921897ac              # double 0.80255821737659038
	.quad	0x3fd99f3e7a30c042              # double 0.40034448559436353
	.quad	0x3fcb7abe34513114              # double 0.21468331865833845
	.quad	0x3fd69754d1ef76ee              # double 0.35298653127197965
	.quad	0x3fc1724eca78c748              # double 0.1363008965141097
	.quad	0x3f81f72021ca1940              # double 0.0087721357642861486
	.quad	0x3fe6754698b3d57b              # double 0.70181588959410079
	.quad	0x3fdff6443ddb349e              # double 0.49940591850902105
	.quad	0x3fcf68256a0e923c              # double 0.24536578825531474
	.quad	0x3f9f979e953284a0              # double 0.030851819855005957
	.quad	0x3fc5f7831799048c              # double 0.17161596920235345
	.quad	0x3fefca523fc75604              # double 0.99344742256897733
	.quad	0x3fd9b2df63dbd08e              # double 0.40154251815625563
	.quad	0x3fee4e4be4d1e76c              # double 0.9470576733722118
	.quad	0x3fda64bb3c31c232              # double 0.41239815595966711
	.quad	0x3fedb69113d6e1f1              # double 0.92853597521667386
	.quad	0x3fd3afd9d682c2ca              # double 0.30760808895415137
	.quad	0x3fac1aa372985b40              # double 0.054890735376992073
	.quad	0x3fc7ef29dc5b89ac              # double 0.18698619136473604
	.quad	0x3fca66f4cf8acd44              # double 0.2062669766797659
	.quad	0x3fe637b20a066222              # double 0.6942987628745565
	.quad	0x3fef45ffb29c022b              # double 0.97729477772378936
	.quad	0x3fc1f21fd306d74c              # double 0.14020154766120141
	.quad	0x3fe7b19063897356              # double 0.74042529526523526
	.quad	0x3fe59d3166cde8cb              # double 0.67543859557124486
	.quad	0x3fea0274958d40da              # double 0.81279973229723201
	.quad	0x3fe8980a0fcf4ff2              # double 0.76855948531965468
	.quad	0x3fe7fc5cc1a4d161              # double 0.74955594845827644
	.quad	0x3fdae9a92cb61f72              # double 0.42051152578687045
	.quad	0x3fecaab3ddd17afd              # double 0.89583772014506702
	.quad	0x3fd8d8e49282ff5a              # double 0.38823808963569706
	.quad	0x3fe5ce18a3dd1d2e              # double 0.68140823368677217
	.quad	0x3fd595f4d2338088              # double 0.33727760817965491
	.quad	0x3fa4520d6d36a7b0              # double 0.039688510495877849
	.quad	0x3fe973747a30aa88              # double 0.79534362664465252
	.quad	0x3fd172b7aa0df572              # double 0.27262679678809498
	.quad	0x3fea0f06726350c7              # double 0.81433412877461187
	.quad	0x3feb632f6cda976d              # double 0.8558575750400742
	.quad	0x3fca19b05e07151c              # double 0.20390896407312986
	.quad	0x3fa59e5b60cf0810              # double 0.042223792617292699
	.quad	0x3fe6c0c46fccd621              # double 0.71103116832700064
	.quad	0x3feaef76e9d17e82              # double 0.84173150699275845
	.quad	0x3fd3649284e50f08              # double 0.30301344850543943
	.quad	0x3fe41def80ea09b9              # double 0.62865424326474006
	.quad	0x3fe637c59a890bc7              # double 0.69430809195215992
	.quad	0x3fe49e268dcdb8cc              # double 0.64430549331680131
	.quad	0x3fe3dfca321bea77              # double 0.62106809412882924
	.quad	0x3fe593741aa21917              # double 0.67424969865604367
	.quad	0x3fe00d480ca9ad29              # double 0.50162126992419076
	.quad	0x3fda1dd262a032ee              # double 0.408070179285274
	.quad	0x3fe763f949ca2e49              # double 0.73095383083404741
	.quad	0x3fd259499988191c              # double 0.28669967645000027
	.quad	0x3fe7d923be53e4d5              # double 0.74525630162602374
	.quad	0x3f9b57ee9cec43a0              # double 0.026702621772588864
	.quad	0x3fca2d622bf29ed8              # double 0.20450999399076042
	.quad	0x3fd7d1fbd4ab6dc0              # double 0.37219138878364433
	.quad	0x3fd413bac84ebf94              # double 0.31370420037546265
	.quad	0x3fcad734b99e70e0              # double 0.20969256461547214
	.quad	0x3fc5346608749850              # double 0.16566157734740949
	.quad	0x3f9033a4d6bf2100              # double 0.015822005850879783
	.quad	0x3fee0e1ff6fc7852              # double 0.93922422637457204
	.quad	0x3fe8a4f58830f683              # double 0.77013661002975231
	.quad	0x3fdba2dc79800896              # double 0.43181526055571717
	.quad	0x3fe1d1b5cc39c517              # double 0.55684938323807642
	.quad	0x3fd2a656443aefc4              # double 0.29140240347964785
	.quad	0x3fd9fefdd3d22942              # double 0.4061884468616378
	.quad	0x3fd8b476ce304c7c              # double 0.38601465354549425
	.quad	0x3fe7eac67d1936a8              # double 0.74740909989642024
	.quad	0x3fec32209c02d230              # double 0.88111906500723158
	.quad	0x3fda93300b8ca144              # double 0.41523362281670395
	.quad	0x3fdffd8f0ba1952a              # double 0.49985099922044418
	.quad	0x3fb778e164275b08              # double 0.09168823905143253
	.quad	0x3fcfc295484992fc              # double 0.24812570600183637
	.quad	0x3fed4c9227b85e17              # double 0.91559703595970887
	.quad	0x3fe25b67039cedc2              # double 0.57365751939453724
	.quad	0x3fddaae845b84080              # double 0.46355635460441391
	.quad	0x3fb25f6da4ca2250              # double 0.071768620235283409
	.quad	0x3fe6e8facfce9a5b              # double 0.71593990886033099
	.quad	0x3fe4078756f6ae81              # double 0.62591902718618553
	.quad	0x3fd060cb555a8852              # double 0.25590785346333178
	.quad	0x3fedce0430ec9da4              # double 0.93139848285220638
	.quad	0x3fc5875075c82e34              # double 0.16819196463653585
	.quad	0x3fe1d76e8e4a7234              # double 0.55754783431218025
	.quad	0x3febf57998d4ae7b              # double 0.87371520852816731
	.quad	0x3fa11814447040c0              # double 0.033386834482486361
	.quad	0x3fbf73e60233cc70              # double 0.12286222032325766
	.quad	0x3fed82c1b4f45cc0              # double 0.92221150725062983
	.quad	0x3fec94ec75cd03a8              # double 0.89317915924049363
	.quad	0x3fd5281c871c418a              # double 0.33057320780155719
	.quad	0x3fc2d3fb8fb17ee0              # double 0.14709419742847896
	.quad	0x3fefb0979d737cfc              # double 0.99030667068646449
	.quad	0x3fde0c10eb3b4c64              # double 0.46948645564879699
	.quad	0x3fb0b5c2099c8900              # double 0.065273406359242614
	.quad	0x3feeb8ba6dac6679              # double 0.9600498334941242
	.quad	0x3fe0feb49b933b09              # double 0.53109197984471834
	.quad	0x3fe149e93cee31da              # double 0.54027234936216506
	.quad	0x3feb7a7463d7fb37              # double 0.85869807720869218
	.quad	0x3fcc6be40550132c              # double 0.22204256305135439
	.quad	0x3fed2a517cd4dc46              # double 0.91141580945157652
	.quad	0x3fd5ebbde8be0ebc              # double 0.34251353958846287
	.quad	0x3fe9e1b11ca42643              # double 0.80880027383791064
	.quad	0x3fdc5e85fe4f2a7e              # double 0.44326925120245864
	.quad	0x3fe42132105fc852              # double 0.62905219266964196
	.quad	0x3fe77b62e07e4b60              # double 0.73381179663043027
	.quad	0x3fedb4d1a955ae8f              # double 0.92832263062651232
	.quad	0x3fcb0f9064f80798              # double 0.21141247682686237
	.quad	0x3fe3a5aa719adb8f              # double 0.6139728754850341
	.quad	0x3feada27ec7eb88b              # double 0.83913036528044083
	.quad	0x3fe48476a93f04a8              # double 0.64116986328021586
	.quad	0x3feb306f9d80ff72              # double 0.84966259729843174
	.quad	0x3fd4907759cb4b18              # double 0.32131751793819907
	.quad	0x3fe4e4cc1be5750e              # double 0.65292935799121365
	.quad	0x3fe56c343e70ce79              # double 0.66945850558700137
	.quad	0x3fee6c92a0cfa2bc              # double 0.95075351150906994
	.quad	0x3f911f1a6d3ef960              # double 0.016720211904379112
	.quad	0x3fe80f31ed76173f              # double 0.75185486201437601
	.quad	0x3fee82af17989933              # double 0.95345263107882372
	.quad	0x3fe0adf58ec8e648              # double 0.52123525512360747
	.quad	0x3fe98cc3378bc360              # double 0.79843293045824381
	.quad	0x3fbe1c315b2d2fd8              # double 0.1176176879500298
	.quad	0x3fe9c1749df5446f              # double 0.80486517764269461
	.quad	0x3fede5d9f198a45f              # double 0.93430802523392831
	.quad	0x3feff7a69e0a1f20              # double 0.99898081652733949
	.quad	0x3fe3b299db59ed68              # double 0.61555188028380048
	.quad	0x3fbbac61c65d5f98              # double 0.10809908955468328
	.quad	0x3fdc222ced141e22              # double 0.43958590652661844
	.quad	0x3fe1d7efc8c5bd37              # double 0.55760945523608185
	.quad	0x3fea709f3b512265              # double 0.82624780259454822
	.quad	0x3fb40de06aebba38              # double 0.078336740592683252
	.quad	0x3fe3feaf424dd6e5              # double 0.6248394293786218
	.quad	0x3fdb78e9d7b14bcc              # double 0.42925497115828359
	.quad	0x3fe8484bf529700e              # double 0.75882528193642584
	.quad	0x3fe1dac82a841eef              # double 0.55795677474904248
	.quad	0x3fe12de0088d625d              # double 0.53684999151580437
	.quad	0x3fd4dd95ab905678              # double 0.32602445368079414
	.quad	0x3fe9416ed7050002              # double 0.78923742290498944
	.quad	0x3fc5b11c95263844              # double 0.16946751864128562
	.quad	0x3fd898db63a00456              # double 0.38432965020189636
	.quad	0x3fe158ac9436e299              # double 0.54207447956203503
	.quad	0x3fd6d9baa41b2c92              # double 0.35703912759772394
	.quad	0x3fd9ab50deb49f76              # double 0.40108129261579195
	.quad	0x3fef7c514facd93f              # double 0.98392549096642045
	.quad	0x3fd599b15d5d303e              # double 0.33750566594676801
	.quad	0x3fa57388bdd99390              # double 0.041897080588376601
	.quad	0x3fd72fc0917a62d8              # double 0.36228956419794889
	.quad	0x3fdcdc682efba776              # double 0.45095257366357744
	.quad	0x3fec3f8f331f074c              # double 0.88275871262178773
	.quad	0x3fcec480f43e34d0              # double 0.2403718178360692
	.quad	0x3fd99d7822149048              # double 0.40023616150051966
	.quad	0x3fdfc6985050c62e              # double 0.49649627536118401
	.quad	0x3fe3e7f3fc76c5ef              # double 0.62206458386770958
	.quad	0x3fe64045287c5153              # double 0.6953454771742521
	.quad	0x3fe876d94da6e5f1              # double 0.76450791517635086
	.quad	0x3fe230ac9fe4daf8              # double 0.56844168881693147
	.quad	0x3fd3b6ecc4100f00              # double 0.30803984781981342
	.quad	0x3fedb1af2589aa7b              # double 0.92793996173470761
	.quad	0x3fd81a7039c31f90              # double 0.37661367073860053
	.quad	0x3fc6647dc72505a4              # double 0.17494175170763271
	.quad	0x3f880ccf6b417440              # double 0.011743183575328442
	.quad	0x3fe09c361b0cfce0              # double 0.51906876834246063
	.quad	0x3fe227a685e5ab1e              # double 0.5673401465586243
	.quad	0x3f8eb58565ecb940              # double 0.014994661496157691
	.quad	0x3fbf4e32dd4a7998              # double 0.12228696730242061
	.quad	0x3fe4477f9d338901              # double 0.63372784331684795
	.quad	0x3fe512fbf92ac040              # double 0.65856741586140544
	.quad	0x3fe87ece0ae541e1              # double 0.76547910812410802
	.quad	0x3fe4c68821e1d205              # double 0.64923483483886513
	.quad	0x3f876e951bb59780              # double 0.011441388042566336
	.quad	0x3fe3332e1a63fd76              # double 0.59999756960307482
	.quad	0x3fe6c2ab03fa942e              # double 0.71126318719018911
	.quad	0x3fd52d1aacdaaace              # double 0.33087794189729614
	.quad	0x3fe97e58cd341492              # double 0.79667320326611191
	.quad	0x3fdc2d0022cd7df2              # double 0.44024661444379298
	.quad	0x3fe72e071aa6a750              # double 0.72436862187644557
	.quad	0x3febeb55e471dc5d              # double 0.8724774801074876
	.quad	0x3fc4543a806d35c8              # double 0.1588204505045907
	.quad	0x3fe2cc2aa7a7d224              # double 0.58742268319344193
	.quad	0x3fd1acd5eee98ae2              # double 0.2761740525367441
	.quad	0x3fd2becc0b47bc6e              # double 0.29289532758315928
	.quad	0x3fe8a4e586eed080              # double 0.77012897829128235
	.quad	0x3fd7d62e776e94ce              # double 0.37244760192181736
	.quad	0x3fe5d11b6249ca8d              # double 0.68177575299189785
	.quad	0x3fd389f52919f496              # double 0.30529526723678069
	.quad	0x3f939904ab83cdc0              # double 0.019138405769764111
	.quad	0x3fe9f5cb671ab159              # double 0.81125421655228103
	.quad	0x3fd375ecc7c9275a              # double 0.30407256613090328
	.quad	0x3feb437e11219681              # double 0.85198882432878531
	.quad	0x3febb7fb37d53222              # double 0.86620865731089602
	.quad	0x3fee6d7c1ac00945              # double 0.95086484169613839
	.quad	0x3fdeb3100ec239ae              # double 0.47967912141111924
	.quad	0x3fdd5bee402791b4              # double 0.45873600258917269
	.quad	0x3fe384852d054766              # double 0.60992678444948178
	.quad	0x3fe163a921b0147f              # double 0.54341560916567733
	.quad	0x3fe55ba1a212fec5              # double 0.6674354711066931
	.quad	0x3fcdbd8e54e559b4              # double 0.2323472895174753
	.quad	0x3fe4d3cf1ea0c1aa              # double 0.65085559827826001
	.quad	0x3feea21c7eec7b15              # double 0.95728897847934269
	.quad	0x3fc165deab11a540              # double 0.13592131951308239
	.quad	0x3fe2233ae901a3b6              # double 0.56680055150092445
	.quad	0x3fc13668128f592c              # double 0.13447285562751554
	.quad	0x3fe409eaee199b97              # double 0.62621065620338612
	.quad	0x3fe26619b251fd27              # double 0.57496342495133923
	.quad	0x3fefd5d26609f043              # double 0.99485130242784014
	.quad	0x3fc82f68c0f4a7d0              # double 0.18894681378998124
	.quad	0x3fc57766c65c2d5c              # double 0.16770634351301339
	.quad	0x3fd26ae7449a0bf8              # double 0.28777486514462636
	.quad	0x3fd7c7e0b9526826              # double 0.37157457444993935
	.quad	0x3fe1583411980c79              # double 0.54201701580349415
	.quad	0x3fe1b5d5cf9b7612              # double 0.55344667957587235
	.quad	0x3fda2a79e562268c              # double 0.40884253884051058
	.quad	0x3f96cdf7e6096400              # double 0.022270081916165196
	.quad	0x3fe04b66f273e2dc              # double 0.50920436243094569
	.quad	0x3fdaeaa88f543096              # double 0.4205724143691979
	.quad	0x3fe457e74d1b24c6              # double 0.63573041019221743
	.quad	0x3fdc08c273348362              # double 0.43803464174748374
	.quad	0x3fe528576e630144              # double 0.66117450294408586
	.quad	0x3fdd1376e0504d2a              # double 0.45431301026947557
	.quad	0x3fba68f772343ad0              # double 0.10316416299995557
	.quad	0x3fd1abf18ff48bfe              # double 0.27611960466509788
	.quad	0x3fdeca1e5b5de292              # double 0.48108633921177912
	.quad	0x3fc1912cbf75d3cc              # double 0.13724288319249778
	.quad	0x3fd4b3dbff690ef8              # double 0.32347774450703026
	.quad	0x3fe0c43a2893fd10              # double 0.52395351338773999
	.quad	0x3fc562e39c7b6224              # double 0.16708035603257188
	.quad	0x3fd37d479943b29e              # double 0.30452146498900301
	.quad	0x3fef536c5369a6c3              # double 0.97893348971884852
	.quad	0x3fd6a358ab616968              # double 0.35371987091425305
	.quad	0x3fda35e3afc475dc              # double 0.40953914799487534
	.quad	0x3fa4181e87f7e5f0              # double 0.039246515367221124
	.quad	0x3fedee10940996c2              # double 0.93531063951078175
	.quad	0x3fa49b1dd4163520              # double 0.040245945109840031
	.quad	0x3fd78849a0a67686              # double 0.36769333542347515
	.quad	0x3fe1590a1864f9f3              # double 0.54211907162226536
	.quad	0x3fe39b7768912230              # double 0.61272783683040721
	.quad	0x3fea7b8f976a7327              # double 0.82758311818506491
	.quad	0x3fd58e36fa3c1bae              # double 0.33680509984008722
	.quad	0x3fd566a0d1bbe966              # double 0.33438892824019317
	.quad	0x3fb4e93c11932928              # double 0.081683878222211903
	.quad	0x3fca6fb2da265c74              # double 0.20653377200935419
	.quad	0x3fc7dad31cbe632c              # double 0.1863654985761739
	.quad	0x3fd8206bd2ab06ce              # double 0.37697883198789561
	.quad	0x3fd3b5bb61bcd39c              # double 0.3079670385807789
	.quad	0x3fe906ed2234bc3e              # double 0.78209549599512918
	.quad	0x3fcbf2baf5c0e518              # double 0.21834504127199561
	.quad	0x3fee4a1ea17897cc              # double 0.94654780900304436
	.quad	0x3fe943de66e8baa6              # double 0.78953476046975335
	.quad	0x3fef352a89c9695d              # double 0.97524001037099206
	.quad	0x3fe8960f76ec4a64              # double 0.76831792094374096
	.quad	0x3fe41d22e75186d7              # double 0.62855668239009332
	.quad	0x3fe09424ac2b75a0              # double 0.51808389307887026
	.quad	0x3fef6f780a507a63              # double 0.98235704435849091
	.quad	0x3feef5f698985d70              # double 0.96752481273408186
	.quad	0x3fc332dc003cc944              # double 0.14998960506052061
	.quad	0x3fdb576d7c623c4e              # double 0.42721116206025023
	.quad	0x3fea06fb6a2b7097              # double 0.81335230575816098
	.quad	0x3fd41c4c7c053a4a              # double 0.3142272196900292
	.quad	0x3fd8d8b4895cb18c              # double 0.38822663702264815
	.quad	0x3fe8b0fec7f111a4              # double 0.77160586405857545
	.quad	0x3fc8615ad9730150              # double 0.19047103517187702
	.quad	0x3fe8321e104e9def              # double 0.75611785111408192
	.quad	0x3fe343a65270c801              # double 0.60200801946325566
	.quad	0x3fe6419ee218f328              # double 0.69551033172283372
	.quad	0x3fda1778701f7df4              # double 0.40768252324593779
	.quad	0x3f929a5e5dfd2700              # double 0.018166994558931115
	.quad	0x3feed080a6797e17              # double 0.96295197023931933
	.quad	0x3fc5070ebda12db4              # double 0.16427788028009405
	.quad	0x3fe242d072834ca1              # double 0.57065603605078163
	.quad	0x3feaa8b0fa489189              # double 0.83309220202913636
	.quad	0x3fec32c9a0e2ea0e              # double 0.88119965956804136
	.quad	0x3fdc82a49ea7cce2              # double 0.44547381871889347
	.quad	0x3fcd7c8c95ee83c4              # double 0.23036343880542465
	.quad	0x3fe8fc6ae78f1ddf              # double 0.78081269480110993
	.quad	0x3fa53822d7699840              # double 0.041443909450024297
	.quad	0x3fda9f8a8721714a              # double 0.41598761745787682
	.quad	0x3fd5cfa3b0c0d522              # double 0.34079830418643742
	.quad	0x3fdbf03ab5445604              # double 0.43653743459557881
	.quad	0x3fde184d281e59c8              # double 0.47023323934390904
	.quad	0x3fef05447e5cf914              # double 0.96939301185901394
	.quad	0x3fe820228528419b              # double 0.75392271048808668
	.quad	0x3fddb5da92aa7938              # double 0.46422447512476905
	.quad	0x3fd7ddb309b2d882              # double 0.37290645548944934
	.quad	0x3fdc7e50d92de01e              # double 0.44520970543772076
	.quad	0x3fec3de9125e3c59              # double 0.88255742633362921
	.quad	0x3fdbdd97caa163ec              # double 0.43539995945098897
	.quad	0x3fe93877708c57b4              # double 0.78814289075920962
	.quad	0x3fed3eccff4794be              # double 0.91391610965060699
	.quad	0x3fe5010b451e3cb2              # double 0.65637744426375932
	.quad	0x3fdd41262474f3f8              # double 0.45710137901534109
	.quad	0x3fdd310caa632f10              # double 0.4561187423648656
	.quad	0x3feb3e1ecd28d597              # double 0.85133304662911058
	.quad	0x3fb29bd57fe3d738              # double 0.07269033787073631
	.quad	0x3fefca4c443afa6c              # double 0.99344456983801654
	.quad	0x3fdaf5fd07503f62              # double 0.42126393999295975
	.quad	0x3fd145982caad682              # double 0.26987270700497146
	.quad	0x3fd7d408a536323a              # double 0.37231651433902224
	.quad	0x3fee15b230996cf4              # double 0.94014844409994546
	.quad	0x3fe523c88a1bde5c              # double 0.66061808561694191
	.quad	0x3fe2708c989e1128              # double 0.57623891647430003
	.quad	0x3fe037ce3ffb93ec              # double 0.5068122148192038
	.quad	0x3fe153772d57a189              # double 0.5414386640159573
	.quad	0x3fc95373aea4ad40              # double 0.19785924937728261
	.quad	0x3fedbfcd93ebe1a8              # double 0.92966345683003215
	.quad	0x3fd09e71666f8d98              # double 0.2596705913876689
	.quad	0x3fed2a202b00649a              # double 0.91139229201066319
	.quad	0x3fd4396f0f3cdf12              # double 0.31600548255981764
	.quad	0x3fcad5a620c4a208              # double 0.20964504814152485
	.quad	0x3fe3c1fcd7f44cf0              # double 0.61743013552259463
	.quad	0x3fe1cfa10fdf46b1              # double 0.55659535503419566
	.quad	0x3fe03f206be9c0da              # double 0.50770588948037276
	.quad	0x3fe70c115126144e              # double 0.72022310113301002
	.quad	0x3fdc2c0eb6b2d552              # double 0.44018905488640769
	.quad	0x3fade847fd821b10              # double 0.058412790008381177
	.quad	0x3fd15d4b2f6d82d8              # double 0.27131919509524272
	.quad	0x3feed07b27207212              # double 0.96294934884969252
	.quad	0x3feccd4f1b0dc83f              # double 0.90006213458969586
	.quad	0x3feb60a3ce858948              # double 0.85554685913329198
	.quad	0x3fe2af576feb6644              # double 0.58390399798663184
	.quad	0x3fda8e80679d26d4              # double 0.41494760626356464
	.quad	0x3feea35b661511a2              # double 0.95744104326199797
	.quad	0x3fe912f15ab5cb86              # double 0.7835623523409232
	.quad	0x3fb21fdb41cac8e8              # double 0.07079859119656684
	.quad	0x3fd9e087be8df156              # double 0.40432923897585249
	.quad	0x3feba594081d9edb              # double 0.86396218857859297
	.quad	0x3fe3e9f44ef54b36              # double 0.62230887815017044
	.quad	0x3fe8a5909be12203              # double 0.77021055646133652
	.quad	0x3fe74cf09abdd074              # double 0.72814207289640231
	.quad	0x3fdcca69891940f0              # double 0.44985426319637067
	.quad	0x3fcae5dcbd7c8860              # double 0.21013983967083316
	.quad	0x3fed7545b4f470ff              # double 0.92056546538108808
	.quad	0x3fcba4b232c7cf50              # double 0.21596362571255634
	.quad	0x3fed080ba06c2ca1              # double 0.90723210651903596
	.quad	0x3fe7bb339bbb37b9              # double 0.7416017572047543
	.quad	0x3fdb838d8b863ed4              # double 0.42990435243062319
	.quad	0x3fea838d8306242e              # double 0.82855868902800522
	.quad	0x3fe09bef04dbd3b4              # double 0.51903487156834283
	.quad	0x3fad7c40bdbbf340              # double 0.057588599358473491
	.quad	0x3fb60fb21a488720              # double 0.086176997582267933
	.quad	0x3fe40b07033f71fe              # double 0.62634611734716805
	.quad	0x3fc37abc599fc42c              # double 0.15218309761215332
	.quad	0x3fe824ac70afa452              # double 0.7544767571354305
	.quad	0x3fe3d27535dc80dc              # double 0.61944065589707575
	.quad	0x3fed92c45ff0cbcb              # double 0.92416590441131896
	.quad	0x3fe2c8e2e26e7068              # double 0.58702224945910775
	.quad	0x3fd06374a2330ddc              # double 0.25607028808391674
	.quad	0x3fca08f235d71a8c              # double 0.20339801434439087
	.quad	0x3fede778fc2e83d4              # double 0.93450593237150281
	.quad	0x3fe081b4e4edad42              # double 0.51583332741339682
	.quad	0x3fe69545487b70a0              # double 0.70572151333501054
	.quad	0x3f9531d7928c7ee0              # double 0.020697944945935798
	.quad	0x3fda83de40ed5dfc              # double 0.4142985948614919
	.quad	0x3fca9be036941f14              # double 0.20788195290537514
	.quad	0x3fecf415d73aa243              # double 0.90479557072564665
	.quad	0x3fe766bc70ec6ac9              # double 0.73129102759715991
	.quad	0x3fe380f6a1fe0ff7              # double 0.60949260367533398
	.quad	0x3fe6f9dfdc78b5ff              # double 0.71800225315899968
	.quad	0x3fb1edae38e9acf8              # double 0.070032967467046237
	.quad	0x3fd31ffebad4b588              # double 0.2988278221626719
	.quad	0x3fe00a6532d7abc8              # double 0.50126895837944918
	.quad	0x3fe9b6532b781af9              # double 0.8035064553267538
	.quad	0x3feea0a0a20e4ede              # double 0.95710784579793162
	.quad	0x3fe7505e13119adf              # double 0.72856048321122191
	.quad	0x3fd84d51fc49c8d6              # double 0.37971925389787253
	.quad	0x3fe907b7910e354b              # double 0.78219202357437589
	.quad	0x3fe4fc7533cd29ba              # double 0.65581760518516963
	.quad	0x3fcdd8fd6453191c              # double 0.23318450354253961
	.quad	0x3fcaabd026d756b4              # double 0.20836831947842926
	.quad	0x3f94b5855351c740              # double 0.020223696909347
	.quad	0x3fe7734364a0b49f              # double 0.73282022146090131
	.quad	0x3feb97df22b3f735              # double 0.86228901651313683
	.quad	0x3fe4cba7b98c6a57              # double 0.64986025085392896
	.quad	0x3fea3d22986baa70              # double 0.81996278543131318
	.quad	0x3fa24260a14d5920              # double 0.035662669840052397
	.quad	0x3fe58c2f57e4ee81              # double 0.67336241881226055
	.quad	0x3febcf4715f35e2d              # double 0.86905245101201489
	.quad	0x3fc26732d7693814              # double 0.14377437131992166
	.quad	0x3fcbc1c0054b0d20              # double 0.21685028322654265
	.quad	0x3fda5c8668aa34ce              # double 0.41189727994135417
	.quad	0x3fd1ea74f04b5278              # double 0.27993510690911405
	.quad	0x3fd3e8add8f7071e              # double 0.31107660472854259
	.quad	0x3fe57e35e5f2b01b              # double 0.6716565600559109
	.quad	0x3fec5fcb6533fcc2              # double 0.88669366613603295
	.quad	0x3fe730ec65f64039              # double 0.7247220984882069
	.quad	0x3f758e0034f04d00              # double 0.0052623756482887973
	.quad	0x3fd464366a199e6e              # double 0.31861648904166529
	.quad	0x3f934e606c692620              # double 0.018853670708528836
	.quad	0x3feaa67212144ed0              # double 0.83281806498640698
	.quad	0x3feadf92572be7d3              # double 0.83979146028218066
	.quad	0x3fcb2bc75cd0ca1c              # double 0.21227352172861991
	.quad	0x3fe057d7692ef54b              # double 0.51072283309592004
	.quad	0x3fe4c4a8590f772d              # double 0.64900605578052295
	.quad	0x3fe77cb62cd8d38c              # double 0.7339735866467989
	.quad	0x3fe93d7ce999fcd1              # double 0.78875585198684395
	.quad	0x3fd33e1f54b10ef4              # double 0.30066664953868316
	.quad	0x3feaa6b383df5c64              # double 0.83284927135799735
	.quad	0x3fef713c797510b4              # double 0.98257278177381701
	.quad	0x3fcbb739a9e71838              # double 0.21652909084349559
	.quad	0x3fe446dd285c2f15              # double 0.63365037806349511
	.quad	0x3fd07478dcf7126a              # double 0.25710889414430105
	.quad	0x3fc1657f15f4bc38              # double 0.13590992519445577
	.quad	0x3fef69adcb132f2e              # double 0.98165025389741856
	.quad	0x3fdefcaf9a479d24              # double 0.48417272631054886
	.quad	0x3fe8a0ecbef12c12              # double 0.76964413922667263
	.quad	0x3fe8c155901f1a0c              # double 0.77360036991814373
	.quad	0x3fef4e4154ccdb0e              # double 0.978302636742997
	.quad	0x3f6e23d33b3e7200              # double 0.0036791921247198989
	.quad	0x3fd52c2fe1269dcc              # double 0.33082196223628269
	.quad	0x3fdff5b82f2d5520              # double 0.49937252623688444
	.quad	0x3feb53f8da71b690              # double 0.85400049843674886
	.quad	0x3f8de99216e59240              # double 0.014605656932595967
	.quad	0x3fd21c010b995a30              # double 0.28295923359601982
	.quad	0x3f6a61bab69c3b00              # double 0.0032204291100080829
	.quad	0x3fe48016e3c324a7              # double 0.6406359146577828
	.quad	0x3fe8b69d80422359              # double 0.77229189920863484
	.quad	0x3fe9e496c8c5f03d              # double 0.80915393079295195
	.quad	0x3fb9269505e64d30              # double 0.098244966450057757
	.quad	0x3fd66fd642362318              # double 0.35057598558391723
	.quad	0x3fda275a254a7834              # double 0.40865186349572302
	.quad	0x3feef3c471611844              # double 0.96725675720586723
	.quad	0x3fe865d552a59c29              # double 0.76243082181907085
	.quad	0x3fc48c3b2ff66f00              # double 0.1605295166199241
	.quad	0x3fe7f29cb77b75a2              # double 0.74836574398402811
	.quad	0x3fe80ac872b01104              # double 0.75131628417923979
	.quad	0x3fe8b3fbc892d873              # double 0.7719706456616805
	.quad	0x3fe71be7be498a3d              # double 0.72215640225869715
	.quad	0x3fd1cef49890290e              # double 0.27825655840628449
	.quad	0x3fdc88a60070e268              # double 0.44584035914480191
	.quad	0x3fa7477ba7d4ac50              # double 0.045467247235443708
	.quad	0x3fd8f75acbf8c5a4              # double 0.39009733122937917
	.quad	0x3fe8d60cb4576d4b              # double 0.7761291048331399
	.quad	0x3fe35ccb76fb9aa6              # double 0.60507748831590358
	.quad	0x3fea751944227b88              # double 0.82679427440221875
	.quad	0x3fe1cd4d2ffee93c              # double 0.55631121992272581
	.quad	0x3fe7d33930b3f375              # double 0.74453410637180062
	.quad	0x3fed3ed6f83258f2              # double 0.91392086482917834
	.quad	0x3fde155d81e66706              # double 0.47005403218791775
	.quad	0x3fcdfd8fa2ea7e28              # double 0.23430057005769922
	.quad	0x3febf6f8b2785243              # double 0.87389788491652387
	.quad	0x3fe20adfa7a26163              # double 0.56382735005449225
	.quad	0x3fe283ca508e2aa5              # double 0.57858768208946698
	.quad	0x3fea4668bfca4763              # double 0.821094870176449
	.quad	0x3fc996143804e670              # double 0.19989254699048642
	.quad	0x3fd16ef765d3f8de              # double 0.27239785141126827
	.quad	0x3fe55be9b0eedc75              # double 0.66746983105885127
	.quad	0x3fe8518a59100239              # double 0.75995366473222881
	.quad	0x3fe76191bc86c838              # double 0.73066031285839639
	.quad	0x3fe3cdfe3ac3fba5              # double 0.61889564016006615
	.quad	0x3fc60d7252285ff8              # double 0.17228535663230082
	.quad	0x3fe423267f2553ea              # double 0.62929081757704108
	.quad	0x3fe5ba59d75d0f21              # double 0.67899791777788121
	.quad	0x3fe12c860e558052              # double 0.53668501662833479
	.quad	0x3fdf6e021db4d510              # double 0.49108937169087685
	.quad	0x3feffeae796f33fc              # double 0.99983905522969918
	.quad	0x3fe18bfb5e3e1fef              # double 0.54833763510486999
	.quad	0x3fe30497cca58756              # double 0.5943106648448786
	.quad	0x3fe69df0a4824fad              # double 0.70677978640241224
	.quad	0x3fcc964ba6d570ec              # double 0.2233366551034871
	.quad	0x3fe24b61315e4794              # double 0.5717016185974324
	.quad	0x3fab5118e0801920              # double 0.053353097348052936
	.quad	0x3fe5d32aab691a73              # double 0.68202718237519233
	.quad	0x3fb3ea04b4f85cd8              # double 0.077789587194604493
	.quad	0x3fed1ba0a4130476              # double 0.90962249799498696
	.quad	0x3fe34478640d9610              # double 0.60210818807235178
	.quad	0x3fe3649717d9b3f0              # double 0.60602907808572404
	.quad	0x3fecc7bd9e60aecf              # double 0.89938240941179426
	.quad	0x3fe838ac1a5e6388              # double 0.75691800260675368
	.quad	0x3fde26f95f6017f4              # double 0.47112879098892724
	.quad	0x3fd0f06f7bb4e1d8              # double 0.26467501717300257
	.quad	0x3fdaa35cb2c54984              # double 0.41622083147117217
	.quad	0x3fe6c42bde7b3360              # double 0.71144669965142882
	.quad	0x3fe4402c2e503e62              # double 0.63283356710048744
	.quad	0x3fe11178f0b5dade              # double 0.5333828641294891
	.quad	0x3faf8cd38debf1b0              # double 0.061621295046254132
	.quad	0x3fecf5ce339549b5              # double 0.90500555109820502
	.quad	0x3fe58a3900c0fd63              # double 0.67312288424720312
	.quad	0x3fe10513474d69a7              # double 0.53186954427956301
	.quad	0x3fe0b8a9a20883e0              # double 0.52254182479020628
	.quad	0x3fac7d620b5edcb0              # double 0.055644096267707055
	.quad	0x3fe5356e5b740c9c              # double 0.66277234899498039
	.quad	0x3fced134b4cca86c              # double 0.2407594569024839
	.quad	0x3fe171f94d2f6343              # double 0.54516282153336026
	.quad	0x3fed5db22327b3e6              # double 0.91768748155811575
	.quad	0x3fd6ddea411a4368              # double 0.35729462011027247
	.quad	0x3fe6107828869ad9              # double 0.6895104209441697
	.quad	0x3fcbf8a577ec51dc              # double 0.21852558475133221
	.quad	0x3fe0a836605fa074              # double 0.52053374121625362
	.quad	0x3fd173e5f78c664a              # double 0.27269887137081084
	.quad	0x3feae27d502a8ab9              # double 0.84014764459092028
	.quad	0x3fd8aae5d078a874              # double 0.3854307685711611
	.quad	0x3fa12e9770d18680              # double 0.033558590432915203
	.quad	0x3fe804e4f8f5e525              # double 0.75059746384718962
	.quad	0x3fe9fd0327d1afe1              # double 0.81213529374280935
	.quad	0x3fee09b776ed9773              # double 0.93868611553328518
	.quad	0x3fd9352063956f4a              # double 0.39386758542035649
	.quad	0x3fecb1fc68d04706              # double 0.8967268035068805
	.quad	0x3fe3d36c1cf5e119              # double 0.61955838829365739
	.quad	0x3fd7b83c10e57898              # double 0.37061978960071817
	.quad	0x3fe323ed9b860c75              # double 0.59813576102932464
	.quad	0x3fad29e22f999560              # double 0.056960171042002683
	.quad	0x3fe5f3170afda925              # double 0.68592407366421482
	.quad	0x3fc395a53effa73c              # double 0.15300431800943126
	.quad	0x3feb9e09f37d2a69              # double 0.86304185444289516
	.quad	0x3fafbed03b7f5190              # double 0.062002665770395926
	.quad	0x3fd73eb630d73d10              # double 0.36320261735541326
	.quad	0x3fd79bde21367d3e              # double 0.36888840907518616
	.quad	0x3fe38a4ae3c7f448              # double 0.61063141335001436
	.quad	0x3fedb019d4c04c9e              # double 0.92774669220888817
	.quad	0x3fe8d9dd64ffaf7c              # double 0.77659482694933457
	.quad	0x3febc639f8ea1583              # double 0.86794756523220007
	.quad	0x3fb6cfd62f030668              # double 0.089108835675710929
	.quad	0x3fdbfc13ee9e1260              # double 0.43726061155783746
	.quad	0x3facd1e001ed25d0              # double 0.056288719401503706
	.quad	0x3fe0f353e65cc8c5              # double 0.5297030925051095
	.quad	0x3fe27294cb12c983              # double 0.5764869657780739
	.quad	0x3fe41011056cdb04              # double 0.62696124133694342
	.quad	0x3fe332b704aeddd7              # double 0.59994078554785346
	.quad	0x3fe56aa5efcb52ad              # double 0.66926857790766336
	.quad	0x3fecb69b96324d73              # double 0.89729098639729299
	.quad	0x3fef44de8e267afb              # double 0.97715690387471398
	.quad	0x3fcf306747d6fa98              # double 0.24366465575981944
	.quad	0x3fea5f957495d491              # double 0.82416794558106876
	.quad	0x3fe5bd459606011d              # double 0.67935447026687579
	.quad	0x3fb45cfa3ee1ac10              # double 0.07954372439569135
	.quad	0x3fcac0b9600460cc              # double 0.20900647343001422
	.quad	0x3fda1bca273ccaea              # double 0.40794614631447124
	.quad	0x3fc0dafc068f61c0              # double 0.13168287582699456
	.quad	0x3fe99792f7f62f32              # double 0.79975269727717646
	.quad	0x3fd0ac283349cdd8              # double 0.26050763138411304
	.quad	0x3fc4cfd5d770d48c              # double 0.16259263057296314
	.quad	0x3fec5e259b8b0dde              # double 0.88649254207160388
	.quad	0x3fae9139f5e60710              # double 0.059701739565765632
	.quad	0x3fe67a88346ac649              # double 0.7024575256129505
	.quad	0x3fdbfec6405c6048              # double 0.43742519650686917
	.quad	0x3fecfb1e0596b621              # double 0.9056539639620419
	.quad	0x3fd7e38ca5eec844              # double 0.37326351360673393
	.quad	0x3fb5ff49542ddfb8              # double 0.085926611949502241
	.quad	0x3fef8e6210408ca4              # double 0.98613074468848482
	.quad	0x3fee773532a67d2b              # double 0.95205173390050868
	.quad	0x3fe4cc4ea1c48585              # double 0.64993983836409142
	.quad	0x3fd4e414e02ecb7c              # double 0.32642099278307746
	.quad	0x3fdfc46adc60e0de              # double 0.4963633682377927
	.quad	0x3fe840a8cd6e0658              # double 0.75789299128536936
	.quad	0x3fd7f76c5ac5ccc8              # double 0.37447651733891663
	.quad	0x3fea8e9b7e90c5e4              # double 0.82990812988117257
	.quad	0x3fc84130f14ccfa8              # double 0.18948947698811236
	.quad	0x3fee85a78e8d9d12              # double 0.95381524889390534
	.quad	0x3fe4a5b048759755              # double 0.64522565986838265
	.quad	0x3fe6923eb1853cfe              # double 0.70535216018643587
	.quad	0x3fe67175bc54e0b9              # double 0.70135008605486526
	.quad	0x3fe36cc7bad52877              # double 0.60702883234740923
	.quad	0x3fd0dae32cdb5b0c              # double 0.26335982685616055
	.quad	0x3fe89e5aadc26d9b              # double 0.76933034837150005
	.quad	0x3fd85e2afc03bea8              # double 0.38074755297473439
	.quad	0x3fe43443fde68862              # double 0.63138007726616885
	.quad	0x3fe0e3a66f60dcbd              # double 0.52778932336413897
	.quad	0x3fb422e5caa24c80              # double 0.078657495471178506
	.quad	0x3fe5e1d8227d9a55              # double 0.68381888138248803
	.quad	0x3fd94dc239e6a582              # double 0.39537101416006959
	.quad	0x3fe0662805767cb2              # double 0.51247025553666092
	.quad	0x3fec4d895813788e              # double 0.88446490480761653
	.quad	0x3fbdbbcd079df9c0              # double 0.11614686428035892
	.quad	0x3f8f6878ef40b340              # double 0.015335984040655171
	.quad	0x3fc5c1438f772d20              # double 0.16996044640686936
	.quad	0x3fc769eef1640bac              # double 0.1829203299203902
	.quad	0x3fd6974e762c94f4              # double 0.35298501530117155
	.quad	0x3fe13cc7f1e64df7              # double 0.53866955991764953
	.quad	0x3fd9b9b31ea77258              # double 0.4019592093807538
	.quad	0x3fe657b07b5c9519              # double 0.69820427030632282
	.quad	0x3feb3e843e850825              # double 0.85138141833181591
	.quad	0x3fe2d875478c784f              # double 0.5889231107173688
	.quad	0x3fc4f974c27fc3cc              # double 0.1638627958014055
	.quad	0x3faac9fc59ce3b90              # double 0.05232227894077035
	.quad	0x3fdc9760d7069e42              # double 0.44673939703577414
	.quad	0x3fe18a26d8ba9c1e              # double 0.54811422662612919
	.quad	0x3fe6e3a0d6bfb6f5              # double 0.71528665488378229
	.quad	0x3feabb9cce3ed207              # double 0.83540191919615914
	.quad	0x3fe18634d0f042a6              # double 0.54763260658554169
	.quad	0x3fda7f8fec64dd26              # double 0.41403577885962972
	.quad	0x3fe58469207f82c3              # double 0.67241340968401919
	.quad	0x3fe4bdd57979b444              # double 0.64817308164277465
	.quad	0x3fed6c189cec40c5              # double 0.91944533013340701
	.quad	0x3fc04afa6cf5a244              # double 0.1272881538418621
	.quad	0x3fe0d650c63896ee              # double 0.5261615630631391
	.quad	0x3fed23aeada34882              # double 0.91060575402868005
	.quad	0x3fcedc54eb4e4900              # double 0.24109899034062465
	.quad	0x3fe2af17e1371ed4              # double 0.58387369143835111
	.quad	0x3fdc2ecf84902da8              # double 0.44035709329247164
	.quad	0x3fdb6dc1ba40f8ae              # double 0.42857402027938007
	.quad	0x3fc7d885e07b1d5c              # double 0.18629525624258292
	.quad	0x3fe6ebb79cf3b782              # double 0.71627407698336776
	.quad	0x3fa80de5041f7340              # double 0.046981007340696213
	.quad	0x3fe43c91dc62b9a7              # double 0.63239377063819269
	.quad	0x3feb9feef6be29e5              # double 0.86327312652548172
	.quad	0x3fe708adaf4190d8              # double 0.71980938176832421
	.quad	0x3fe9a73a212bf8f7              # double 0.80166346052990789
	.quad	0x3fd1023e95a10460              # double 0.26576199161724468
	.quad	0x3fdf3fa5a6017da2              # double 0.48825970851427247
	.quad	0x3fc6fd75a0972db4              # double 0.17960996953330055
	.quad	0x3fd0b7cdfa4285aa              # double 0.26121854247511556
	.quad	0x3fe526e58ee32d38              # double 0.66099813373276728
	.quad	0x3fee05985a054aa6              # double 0.93818299848711173
	.quad	0x3fe7ce7d4421ff26              # double 0.74395621592700389
	.quad	0x3fc04e8f62c02fa8              # double 0.1273974640065465
	.quad	0x3fde1a5ffe7faa18              # double 0.47035980084788909
	.quad	0x3fdbec0f677ee7dc              # double 0.43628296954159196
	.quad	0x3fe9dfa0192ef015              # double 0.80854802054045882
	.quad	0x3fe41d461fec8724              # double 0.62857347712654077
	.quad	0x3fabf65919f3de40              # double 0.054613861482661452
	.quad	0x3fe229d542b0722c              # double 0.56760657334559061
	.quad	0x3fcbcf5d5fff4048              # double 0.21726576983792456
	.quad	0x3fd8c61c342d9f96              # double 0.38709168525246562
	.quad	0x3fabf0da1c43d5e0              # double 0.05457192988425752
	.quad	0x3fd144302eaa4d58              # double 0.26978687817719083
	.quad	0x3fb2dd1d0d678140              # double 0.073686424038446496
	.quad	0x3fcc34dce59e5e50              # double 0.22036324703070642
	.quad	0x3fd7036df7d593ea              # double 0.35958432390753947
	.quad	0x3fe3ba1a0cabb857              # double 0.61646749949228308
	.quad	0x3fee4d7d8ddd9e7f              # double 0.94695928295273279
	.quad	0x3fee7302796c98ff              # double 0.9515392657820313
	.quad	0x3fd87d3bed9abf28              # double 0.38264368251383241
	.quad	0x3fc7f346dc0a4e74              # double 0.1871117185988741
	.quad	0x3fd567310586b29c              # double 0.3344233087507662
	.quad	0x3fd7e8556c118860              # double 0.37355552247584534
	.quad	0x3fde7c8a4c10e504              # double 0.47635133198089386
	.quad	0x3f9ed82405fe9960              # double 0.030121386400105421
	.quad	0x3fe31fec323f3268              # double 0.59764680684891136
	.quad	0x3fb7b6ba59a5bca0              # double 0.092631956945967264
	.quad	0x3febd9868a50d4f1              # double 0.87030341162485858
	.quad	0x3fca6f0327b0d328              # double 0.20651282728217635
	.quad	0x3feffa9a4af6790e              # double 0.99934115067643048
	.quad	0x3fc2fa8208ec9adc              # double 0.14826989589456374
	.quad	0x3fe979b8a33bf870              # double 0.79610854989711122
	.quad	0x3fdf8fc1873b3cb8              # double 0.49314916807356779
	.quad	0x3fb82b571fc742c0              # double 0.094411320932759502
	.quad	0x3fe412faee846486              # double 0.62731691918737975
	.quad	0x3fdea3f190076506              # double 0.4787563234836657
	.quad	0x3f8f1743929db180              # double 0.015181091224541587
	.quad	0x3fdf0a575307f77c              # double 0.48500617130763835
	.quad	0x3fe1f33380dbc3a4              # double 0.56093764465014262
	.quad	0x3fd6a03cce750b6e              # double 0.35353012239300241
	.quad	0x3fc9b9ed7652a070              # double 0.20098655965307755
	.quad	0x3fe2420c1834116c              # double 0.57056240775322697
	.quad	0x3fd4e2b1fdfcc34e              # double 0.32633638194515846
	.quad	0x3fdd7c3a4c1bfffc              # double 0.46070725853496675
	.quad	0x3fec6e0ff3f580b7              # double 0.88843534134141222
	.quad	0x3fa3a15b82cc6e10              # double 0.038340434757824338
	.quad	0x3fe4f627c801b497              # double 0.6550482660656084
	.quad	0x3fe4f27c81b4e5dc              # double 0.65460038503004681
	.quad	0x3fd708fb6f19c77e              # double 0.3599232277839447
	.quad	0x3fed4555a317171a              # double 0.9147136865001102
	.quad	0x3fe8cb9a73c80202              # double 0.77485392201930403
	.quad	0x3fef89891aae322d              # double 0.98553900919939041
	.quad	0x3fce6df0926a45c0              # double 0.23773009442497361
	.quad	0x3fd4ac2ba06179f6              # double 0.32300844824013042
	.quad	0x3fd991318fd2a00c              # double 0.3994869141120041
	.quad	0x3fdffcd358560d6c              # double 0.49980624796463391
	.quad	0x3feb4533960a62d8              # double 0.85219744972990963
	.quad	0x3fe32903086ec2e1              # double 0.59875632903102993
	.quad	0x3fdc923101a23e1e              # double 0.44642281684443386
	.quad	0x3fd2a08c5163f874              # double 0.2910490794018934
	.quad	0x3f8d7b8ba85ee140              # double 0.01439580066276902
	.quad	0x3fdfa793fc959500              # double 0.49460315386234299
	.quad	0x3fe636a27223650f              # double 0.69416925709370669
	.quad	0x3fed5b16f394712e              # double 0.91736934255781022
	.quad	0x3fe43b92e5630656              # double 0.63227219392883671
	.quad	0x3fd351f996b2add8              # double 0.30187835423086318
	.quad	0x3feb79984a948f8e              # double 0.85859312597720971
	.quad	0x3fe32e8a8a850c3f              # double 0.59943129591591304
	.quad	0x3fe80bead5f93289              # double 0.75145475188908606
	.quad	0x3fe78bf63c3304a7              # double 0.73583518750833299
	.quad	0x3fe25ceba6296129              # double 0.57384283498234823
	.quad	0x3fe58114a2e3b798              # double 0.67200691046103866
	.quad	0x3fdcafef5c800720              # double 0.44823822053159468
	.quad	0x3fed2e0dd7302cfa              # double 0.911871834077288
	.quad	0x3fd670e6c06150d0              # double 0.35064095294116004
	.quad	0x3fc22e6801c0d860              # double 0.14204120717630797
	.quad	0x3f716ff6507e5480              # double 0.0042571660668687672
	.quad	0x3fd8f61be224f2c2              # double 0.39002129635245464
	.quad	0x3fe7e4020b48b277              # double 0.74658300594235427
	.quad	0x3f893feb0cce99c0              # double 0.012328945473041197
	.quad	0x3fcae748c4f4df6c              # double 0.21018323533075589
	.quad	0x3fefff8e40a41548              # double 0.99994576096711629
	.quad	0x3fcabe8150b84c40              # double 0.20893875543024087
	.quad	0x3fe51ca90063b223              # double 0.65974855495511908
	.quad	0x3fd345f55f59e836              # double 0.3011449271358545
	.quad	0x3fe45219a95584d0              # double 0.63502200196321645
	.quad	0x3fcd41fed81c4030              # double 0.22857652237189674
	.quad	0x3fe1869b3d540a11              # double 0.54768144586734213
	.quad	0x3fdd216a045ee448              # double 0.45516443659613914
	.quad	0x3fef4b65c50c7e33              # double 0.9779538010224712
	.quad	0x3fedd683575e9d08              # double 0.9324356752812557
	.quad	0x3fe0d8fd00a100af              # double 0.526487828472474
	.quad	0x3fd763372aa7b19e              # double 0.36543063321621527
	.quad	0x3fc69684834aed0c              # double 0.17646843348288888
	.quad	0x3fe4b3ab79765d7f              # double 0.64693235133283611
	.quad	0x3fc37a6b3b9bf6a8              # double 0.15217342768294384
	.quad	0x3fd8f53da320c130              # double 0.38996830873931554
	.quad	0x3fef9dfb8260bbdc              # double 0.98803496803690959
	.quad	0x3febd922821cea31              # double 0.87025571263013124
	.quad	0x3fd78664a0c9446c              # double 0.36757770253922817
	.quad	0x3fecd0fca3b7f798              # double 0.90051109291356379
	.quad	0x3f5697b1b931e800              # double 0.0013789401607753327
	.quad	0x3fe201aaa7d8af5c              # double 0.56270344526772531
	.quad	0x3fedd611dec652aa              # double 0.93238156805690164
	.quad	0x3fe7c45b12fc055d              # double 0.74271920879270292
	.quad	0x3fe5ba1abf506f57              # double 0.67896783224157786
	.quad	0x3fb1d1f4a12d8648              # double 0.069609917974525648
	.quad	0x3fc64682c75ba340              # double 0.17402682050967577
	.quad	0x3fd89d0f65fe378c              # double 0.38458619079835255
	.quad	0x3fcdbc25349f8f68              # double 0.2323042399358386
	.quad	0x3febfd13538c6e1e              # double 0.87464300458981703
	.quad	0x3fdb4c876d40ac0c              # double 0.42654596013261492
	.quad	0x3fdd2b939d1e8554              # double 0.45578470557855622
	.quad	0x3fdb7a5e6e889b64              # double 0.42934380335139211
	.quad	0x3fe1635160f71390              # double 0.54337376535896631
	.quad	0x3fdf62946c01e024              # double 0.4903918318518683
	.quad	0x3fe16ef801f4cbe2              # double 0.54479599363400788
	.quad	0x3fea873b698ce2cd              # double 0.82900782218265479
	.quad	0x3fe9f55edaa89f1d              # double 0.81120245653889678
	.quad	0x3fedcb9cfc7d53fa              # double 0.93110513033263875
	.quad	0x3feffc32aca20907              # double 0.99953588216183753
	.quad	0x3fcf9594619ac5bc              # double 0.24675230756615274
	.quad	0x3fd6488a8b2cbc00              # double 0.3481775626304966
	.quad	0x3fe5c926df3ba311              # double 0.68080466842829612
	.quad	0x3fb0af2ddd19d6c0              # double 0.065173021774024953
	.quad	0x3fe4a64344a430b4              # double 0.64529574781911103
	.quad	0x3fe75dfa253c8799              # double 0.73022181771033268
	.quad	0x3fea3fde82a5d50f              # double 0.82029653088707899
	.quad	0x3fd71b032f21f16a              # double 0.36102370837013231
	.quad	0x3fe28f238a451856              # double 0.57997300153580045
	.quad	0x3fd235e5a7244300              # double 0.28453961679865358
	.quad	0x3fde124a51f0f1f6              # double 0.46986635210103544
	.quad	0x3fe361678f8d526b              # double 0.60564020192630375
	.quad	0x3fceb31253660d70              # double 0.23983983108710616
	.quad	0x3fc9979fe89fc69c              # double 0.19993971689796275
	.quad	0x3fb86c22b52f52b8              # double 0.095400017962058992
	.quad	0x3fc74797db9f2b58              # double 0.18187235091894638
	.quad	0x3fd4f46afb51728a              # double 0.32741808455265498
	.quad	0x3fdd44f4ab86a766              # double 0.45733372450432908
	.quad	0x3f9bc77ce91c2120              # double 0.027128173568628289
	.quad	0x3fed4287845c3f74              # double 0.91437126018170866
	.quad	0x3fc4bce8e5336600              # double 0.16201506797260379
	.quad	0x3fcac1a7fabc8788              # double 0.20903491728773482
	.quad	0x3fc1328c380b5e5c              # double 0.13435509430449855
	.quad	0x3fe124ce81c0cb87              # double 0.53574300138858255
	.quad	0x3fe2952a1bb80ca4              # double 0.58070855535369903
	.quad	0x3feb1a5c70466445              # double 0.84696790627197827
	.quad	0x3fc7427a82211e68              # double 0.18171626428578525
	.quad	0x3fe15d17f5f8ab4b              # double 0.54261396447450616
	.quad	0x3feaa12c714ae0a4              # double 0.83217451217116833
	.quad	0x3fc3505a1e21df04              # double 0.15088964911750946
	.quad	0x3fee6f054d41753b              # double 0.95105233277323664
	.quad	0x3fd7e00456e9de6e              # double 0.3730479096188678
	.quad	0x3fb28de033642570              # double 0.072477352663687489
	.quad	0x3fdc01866e8bc2f6              # double 0.43759308619978243
	.quad	0x3fbeb16aebc3e380              # double 0.11989467864976966
	.quad	0x3fd35a24823adfc8              # double 0.30237686841746525
	.quad	0x3fbe63c6545d5630              # double 0.1187099414795163
	.quad	0x3fee67b995d16ea5              # double 0.95016173611971466
	.quad	0x3fd883c749fe4040              # double 0.38304311967749882
	.quad	0x3fcce8a9c7a3d240              # double 0.22585031745951945
	.quad	0x3f69a5ed22272700              # double 0.0031308776389992188
	.quad	0x3fee86ced928c0e8              # double 0.95395605482010825
	.quad	0x3fc40f6b0feb4738              # double 0.15672052647874479
	.quad	0x3fc4fc4f74efdc4c              # double 0.16394990167438761
	.quad	0x3fce5433a06356f4              # double 0.23694463092277085
	.quad	0x3fd300fd04a30a78              # double 0.29693532421894231
	.quad	0x3fc6e9cd0dae1c4c              # double 0.17901003997778486
	.quad	0x3fead1239a286288              # double 0.83802967175422882
	.quad	0x3fc1082744109690              # double 0.13306132148243366
	.quad	0x3fea39908e2daa7c              # double 0.81952693719115599
	.quad	0x3fece699ed80b7c3              # double 0.90314957034365084
	.quad	0x3fe04a18ae0bbb73              # double 0.509044971402416
	.quad	0x3fd56e98f2ed296a              # double 0.334875333054376
	.quad	0x3fe41603b5e4c8f5              # double 0.6276873161898765
	.quad	0x3fd77126ea2a836c              # double 0.36628125064640105
	.quad	0x3fde837b1b3c8f2c              # double 0.47677495632000233
	.quad	0x3f789409daf41080              # double 0.0060005555126317889
	.quad	0x3fe632ef19b11e20              # double 0.69371752756063998
	.quad	0x3fd3fd1cf0027462              # double 0.31232379377781261
	.quad	0x3fea6a4c032afd42              # double 0.82547569864974712
	.quad	0x3fc6f873747b75b0              # double 0.17945712268457958
	.quad	0x3fd2b4466084590a              # double 0.2922531073139828
	.quad	0x3fd95fa06928cdc6              # double 0.39646158475371995
	.quad	0x3febb565c91c5208              # double 0.86589326171321179
	.quad	0x3fe1111d9cddc725              # double 0.53333931577637783
	.quad	0x3fe8fde8686f575d              # double 0.78099460980841295
	.quad	0x3fe06f28cf8bf7bd              # double 0.51356926475977327
	.quad	0x3feed7d29af61aab              # double 0.96384554162871916
	.quad	0x3fe9b816cd5da1be              # double 0.80372181044099711
	.quad	0x3feeff8fa09a5527              # double 0.96869641654726457
	.quad	0x3feed517f12f8830              # double 0.96351239306046033
	.quad	0x3fe16ce7fd6479cf              # double 0.54454421511382545
	.quad	0x3fdbba111c0b8e38              # double 0.43323161829741563
	.quad	0x3fc442d0baad91d0              # double 0.15828904261719723
	.quad	0x3fcbb2157744b258              # double 0.21637218783998224
	.quad	0x3fe22f15fcc0d25b              # double 0.5682477890573624
	.quad	0x3fe43e89c75a8fa5              # double 0.63263405739097733
	.quad	0x3fda31c62785f218              # double 0.40928796634378406
	.quad	0x3fd1fad7d0767df2              # double 0.28093524320317365
	.quad	0x3fe5221f6fbf4003              # double 0.66041538072204309
	.quad	0x3fd3f25fd08f84f2              # double 0.3116683518147304
	.quad	0x3fedd4fdd072045a              # double 0.93224993431079928
	.quad	0x3fd4f286a4682ae4              # double 0.32730260901796115
	.quad	0x3fe75e4eb539a1ae              # double 0.73026214023143665
	.quad	0x3fdd41a587cd4982              # double 0.4571317506971796
	.quad	0x3fe9b71ae86ad7cb              # double 0.80360169786467261
	.quad	0x3fe9a13163019ee5              # double 0.80092686974691374
	.quad	0x3fdbe3897d44cb80              # double 0.43576276047968321
	.quad	0x3fc2d9c94d10c5b0              # double 0.14727131140675231
	.quad	0x3fe1afdb9d9bb43e              # double 0.55271702559333113
	.quad	0x3fbb33cc8594b810              # double 0.10625913869145642
	.quad	0x3fe173eb7dac5ebd              # double 0.54540037675447872
	.quad	0x3fc26034eaa54ef8              # double 0.14356099564849223
	.quad	0x3fdcc64fc973bcd2              # double 0.44960398362213738
	.quad	0x3fe6503c56bdbd63              # double 0.6972943967975137
	.quad	0x3fa451a71a946dc0              # double 0.039685461039165926
	.quad	0x3fe4147a094cc0e7              # double 0.62749959770556252
	.quad	0x3fd91f1838e30488              # double 0.3925228648695982
	.quad	0x3fdb7976be810fc0              # double 0.42928856471939625
	.quad	0x3f90a2e915f43ec0              # double 0.016246454205485206
	.quad	0x3fdae85614de28c0              # double 0.42043067968246461
	.quad	0x3fdf1587320a6a60              # double 0.48568897139344891
	.quad	0x3fd689af59b189dc              # double 0.35215362319118326
	.quad	0x3fe70d725e3cea72              # double 0.72039144903039998
	.quad	0x3fe43e3ec950339b              # double 0.63259829825402691
	.quad	0x3fc049d8b96d3488              # double 0.12725361875564922
	.quad	0x3fdfc3a513c40ae0              # double 0.49631621294262906
	.quad	0x3fea4fa2b3bc215c              # double 0.82222113708943878
	.quad	0x3fd8e4bd8be77d0c              # double 0.38896120703243819
	.quad	0x3fda58e7f9692f0e              # double 0.41167640072375
	.quad	0x3fe3cbcdd856cf29              # double 0.61862842801790408
	.quad	0x3fef0b9e995c42ed              # double 0.97016839936449417
	.quad	0x3fe300ca9f6bd2aa              # double 0.59384661805105066
	.quad	0x3fb2806db6e8e520              # double 0.072272164493274449
	.quad	0x3fb161437cb5b788              # double 0.067890375086532839
	.quad	0x3fe41c1e4abf8f58              # double 0.62843241309426912
	.quad	0x3fe2b1213e59dea9              # double 0.58412229707660857
	.quad	0x3fe6d24123f206f7              # double 0.71316582699384312
	.quad	0x3fef16b39f84aed9              # double 0.97152119785229296
	.quad	0x3fcd18f2cfada480              # double 0.22732386723081177
	.quad	0x3fefd97682babcc8              # double 0.99529576809973097
	.quad	0x3fe968756ab725d0              # double 0.79400130122047052
	.quad	0x3fe8aada4039633b              # double 0.77085602325232772
	.quad	0x3fec56fcb9d3f87d              # double 0.88561855597050931
	.quad	0x3fe57d3341513114              # double 0.67153322942025051
	.quad	0x3fe3b12df4c53e34              # double 0.61537835890516712
	.quad	0x3fc7ee95d9a3b370              # double 0.18696854712416267
	.quad	0x3fb3f44089339408              # double 0.077945741173223948
	.quad	0x3fe6c18467a400d1              # double 0.71112270586311344
	.quad	0x3f938af081a2e060              # double 0.019084699547164852
	.quad	0x3fcdfcf19939a380              # double 0.23428173047730283
	.quad	0x3fc3506ad58459f8              # double 0.15089164186129245
	.quad	0x3febaf6d162bab5d              # double 0.86516432123367404
	.quad	0x3fbf20717a4ab080              # double 0.12158879504812781
	.quad	0x3fb23ed861448048              # double 0.071271442172020305
	.quad	0x3feb7faa562ad07d              # double 0.85933415250339318
	.quad	0x3fd4a61cd3ac1ffe              # double 0.32263870879296508
	.quad	0x3fdfe90bd38162c0              # double 0.49859901099038595
	.quad	0x3fcc2aff71978a6c              # double 0.22006218954546186
	.quad	0x3fc88fb6412f1b30              # double 0.1918857401162426
	.quad	0x3fe919431dc2dd5e              # double 0.78433376133663635
	.quad	0x3fd6c5805b9e884a              # double 0.35580452868646673
	.quad	0x3fe27aac80e1120b              # double 0.57747483417239331
	.quad	0x3fdd106ca0d82276              # double 0.45412746150444805
	.quad	0x3fe6ccadbfce912d              # double 0.71248519384656606
	.quad	0x3fe40e3aff6d02db              # double 0.62673711669784937
	.quad	0x3fe79f7669952d64              # double 0.7382156431353164
	.quad	0x3fe51bb8bc720eaf              # double 0.65963398748177393
	.quad	0x3fad21f472b206f0              # double 0.056899680138497888
	.quad	0x3fc270f8cad59e7c              # double 0.14407262710595947
	.quad	0x3fead7cd9a993c06              # double 0.83884315676721211
	.quad	0x3fd3624ab6549748              # double 0.30287425809580215
	.quad	0x3fe10d4c3c533d8e              # double 0.53287326605088636
	.quad	0x3fd2b47e851c1146              # double 0.2922664928339781
	.quad	0x3fdc73f12f7ad5b8              # double 0.44457654606534502
	.quad	0x3fc1d6f98c506ba4              # double 0.13937301017071235
	.quad	0x3fea20ce08842a1c              # double 0.81650449431737426
	.quad	0x3fe293678bf03c24              # double 0.58049371082040979
	.quad	0x3fdf851e7a1e44e8              # double 0.49249994207009573
	.quad	0x3fe76327b4ebcfa7              # double 0.73085389457854866
	.quad	0x3fcc99ba372b4388              # double 0.22344138807104863
	.quad	0x3fec5758cf036140              # double 0.88566246444955965
	.quad	0x3fe3d90d1af48bc1              # double 0.62024550690363622
	.quad	0x3fce77bb135eaf58              # double 0.23802889295381635
	.quad	0x3fa847704143be70              # double 0.047420032469628448
	.quad	0x3fb3091ae3ce8f18              # double 0.074357681862747049
	.quad	0x3fdaf4233f711bec              # double 0.42115098186007915
	.quad	0x3f6731222a0b3600              # double 0.0028310458440958808
	.quad	0x3fdf657c01866a72              # double 0.49056911610538301
	.quad	0x3fedb240a84a9cb2              # double 0.92800934667038448
	.quad	0x3fe8a69437d37fb8              # double 0.77033434775875431
	.quad	0x3fd37d7de8cd8d28              # double 0.30453441366826661
	.quad	0x3fdee4023c8a4494              # double 0.48266654884452831
	.quad	0x3fcaaebdd2d3d288              # double 0.20845768732364811
	.quad	0x3fd07feda9ae3566              # double 0.25780812807427933
	.quad	0x3fe9c2bf9e38ac5f              # double 0.80502301123250308
	.quad	0x3fedf1b2915fe187              # double 0.93575409310783264
	.quad	0x3fe8131aea32840e              # double 0.7523321699301293
	.quad	0x3fc56d0cc523fee0              # double 0.16739043832784883
	.quad	0x3fe6775d4bb28be3              # double 0.70207085404069536
	.quad	0x3fdf96e3d4eb4598              # double 0.49358459275125588
	.quad	0x3fe5c99ec2b784b2              # double 0.68086183577192672
	.quad	0x3fcfec9b775e5294              # double 0.24940818146264532
	.quad	0x3fd30ba1be2e5350              # double 0.2975849492298055
	.quad	0x3fcb44195fe83c30              # double 0.21301572020499426
	.quad	0x3fe9d56225ee3911              # double 0.80729777725517426
	.quad	0x3fa394195d9c6ed0              # double 0.038239281346447052
	.quad	0x3fe8c45a17a9f505              # double 0.77396874067167742
	.quad	0x3fd5d2403bda2c30              # double 0.34095769734330172
	.quad	0x3fe46512bd35a02c              # double 0.63733803706145897
	.quad	0x3fe7b9b259a44298              # double 0.74141805179722819
	.quad	0x3feb7a0b1aa86bb9              # double 0.85864787298793666
	.quad	0x3fe7acc7656ff293              # double 0.73984117328616816
	.quad	0x3fb64d0a28d2b6a8              # double 0.087113032309128813
	.quad	0x3fd6687d40e996e6              # double 0.35012751902682593
	.quad	0x3fe331336302a36e              # double 0.599755948428635
	.quad	0x3febf6e0e698b1be              # double 0.87388653791781912
	.quad	0x3fd53a31af56947a              # double 0.33167688486930269
	.quad	0x3fd98b5b9cddacae              # double 0.39913072890221712
	.quad	0x3fdec452afb17c7e              # double 0.48073260457562828
	.quad	0x3fe60b02ade62f14              # double 0.68884405102423552
	.quad	0x3fdc8786e112e5ea              # double 0.44577190379967979
	.quad	0x3fe7544ca7f58011              # double 0.72904045872201284
	.quad	0x3fe2c5fd0223f773              # double 0.58666849535050714
	.quad	0x3fde740f1a538986              # double 0.47583367892198003
	.quad	0x3fd8324a14fc1c14              # double 0.37806942033097468
	.quad	0x3fe8e76f2cb45b1b              # double 0.77825125438070886
	.quad	0x3fe728031251d0ef              # double 0.72363427713437811
	.quad	0x3fef1dcb897ffae4              # double 0.97238709311917803
	.quad	0x3fe5a3bef2627880              # double 0.67623851147415337
	.quad	0x3fe979caddacf845              # double 0.79611724182155597
	.quad	0x3f805d613b5ffb40              # double 0.007990607857207288
	.quad	0x3fe9474e34209ff7              # double 0.78995428258076472
	.quad	0x3fe6b17cbb640fba              # double 0.70916592216280283
	.quad	0x3fd7bad852f7cee4              # double 0.37077911474555791
	.quad	0x3fc1b00aba4f44c0              # double 0.13818487260008361
	.quad	0x3fc5a962b0b2289c              # double 0.1692317354939562
	.quad	0x3fcbe8269a7ee8f8              # double 0.21802218002068918
	.quad	0x3fdc4304dbcdc878              # double 0.44159051385134473
	.quad	0x3fed21fe31f3eab8              # double 0.91039952999502471
	.quad	0x3fbc62bf68a96348              # double 0.11088177018372136
	.quad	0x3fdc80eab183e308              # double 0.445368455271407
	.quad	0x3fe1bf075b6836b9              # double 0.55456893780657091
	.quad	0x3fc06bee02793a88              # double 0.12829375382212427
	.quad	0x3fedbaee2385ce27              # double 0.92906863153479413
	.quad	0x3fe04d31ed4d210d              # double 0.50942322109134042
	.quad	0x3fe4e205b4d0b792              # double 0.65259061160553444
	.quad	0x3fb86881d6ec1bd8              # double 0.095344653102173438
	.quad	0x3fc5adce968fd960              # double 0.16936666824012558
	.quad	0x3fc56f5052a1ee10              # double 0.16745952639381345
	.quad	0x3fdac902d3447fce              # double 0.41851874000167022
	.quad	0x3fe81951234c8d40              # double 0.75309044737188202
	.quad	0x3f9991997224ff40              # double 0.024969480125263788
	.quad	0x3fdcc0d115e6a0da              # double 0.44926859987982726
	.quad	0x3fe0bd71dca8c0c5              # double 0.5231255826711495
	.quad	0x3fd5d119bc99b948              # double 0.34088748376861533
	.quad	0x3fe54b1c5008086f              # double 0.66541877394798898
	.quad	0x3feaf61abda88312              # double 0.84254204790713261
	.quad	0x3feedaddf9ed6a0f              # double 0.96421717466302137
	.quad	0x3fe1440e3e4f0bfc              # double 0.53955757302935536
	.quad	0x3fc88fb157af30a8              # double 0.19188515454732635
	.quad	0x3fd14b094216650a              # double 0.27020484403472322
	.quad	0x3fef28bb3950f57c              # double 0.97372208780841118
	.quad	0x3fa3caa0b7e6ebd0              # double 0.038655302475909203
	.quad	0x3fd7ee043afab0c6              # double 0.37390237579053254
	.quad	0x3feba59d1e3f9007              # double 0.8639665213381712
	.quad	0x3fe6dd886a02217f              # double 0.71454258637190537
	.quad	0x3fd1d43afe348792              # double 0.27857851814962331
	.quad	0x3febbce93b28032d              # double 0.8668104319950537
	.quad	0x3fe658e3d8e2ef43              # double 0.69835083351743099
	.quad	0x3fd0400703504910              # double 0.25390792201609802
	.quad	0x3fd2ed1b9f300802              # double 0.29572191758791189
	.quad	0x3fe7e4e72f80f53e              # double 0.74669226911615971
	.quad	0x3fd68ce577827746              # double 0.35234963103163286
	.quad	0x3fe8480a700d67a7              # double 0.75879403958537217
	.quad	0x3fdf6a68c6c69740              # double 0.49086970721906553
	.quad	0x3fb46c46c074ffa0              # double 0.079777166353777407
	.quad	0x3fe7baa856df6dc3              # double 0.74153534858071912
	.quad	0x3fe66eeb077fc95d              # double 0.70103980507546348
	.quad	0x3fe86596da5b626b              # double 0.76240103385778235
	.quad	0x3fd9d2770adaa820              # double 0.40347076473210741
	.quad	0x3fad210cb80a14b0              # double 0.05689277407240334
	.quad	0x3fd5637646adcdc2              # double 0.33419567968595854
	.quad	0x3fe62c301f1bb62c              # double 0.69289403987722187
	.quad	0x3faeee603621e520              # double 0.060412413223227768
	.quad	0x3fdb9769142d85d4              # double 0.43111636133661801
	.quad	0x3fe7bc190fd3d71d              # double 0.74171116915997326
	.quad	0x3fddc46670ef2b46              # double 0.4651123144982886
	.quad	0x3fe92203eaef116d              # double 0.78540225873488867
	.quad	0x3fdcb913fa14c9b2              # double 0.44879626676552242
	.quad	0x3fe515fe1c1fcd2e              # double 0.65893464558613402
	.quad	0x3fe100ef5af364db              # double 0.53136413348979816
	.quad	0x3fca677048ac8ebc              # double 0.20628169582879774
	.quad	0x3fe66d1721661c06              # double 0.70081669352737275
	.quad	0x3fdc715890ac60ac              # double 0.44441808822876783
	.quad	0x3fef2b1d86495ad7              # double 0.97401310184326461
	.quad	0x3fecd940df695fde              # double 0.90152019152719354
	.quad	0x3fefdbea62dfe088              # double 0.99559516250066426
	.quad	0x3feedc2726158eb7              # double 0.9643741363365369
	.quad	0x3fefba8924a61f32              # double 0.99152047307959479
	.quad	0x3feeba2c169d8401              # double 0.96022610108423134
	.quad	0x3fe70cdbf33da5d4              # double 0.72031972415896428
	.quad	0x3fef825c03a84857              # double 0.98466301645590703
	.quad	0x3fcf12062636dec8              # double 0.24273754945692461
	.quad	0x3fe089dd09512d01              # double 0.51682903117890089
	.quad	0x3fac27aa3b1ff9e0              # double 0.054990119664569681
	.quad	0x3fde3b38d01468ca              # double 0.47236461944852393
	.quad	0x3fc9972eeeaeaf50              # double 0.19992624906933054
	.quad	0x3fe6946a90da1f3e              # double 0.70561722079671774
	.quad	0x3fe9fcf81c749b7e              # double 0.81213002736772899
	.quad	0x3febdeb1eccd44b7              # double 0.87093445062978148
	.quad	0x3fdb69df766e1752              # double 0.42833696904596252
	.quad	0x3febe1b88a0ea04b              # double 0.87130381550105918
	.quad	0x3fbc301cba958b48              # double 0.11010913424756297
	.quad	0x3fd778b42db331d4              # double 0.36674217665566045
	.quad	0x3fe7405790cda92d              # double 0.72660425455004474
	.quad	0x3fecb6c23e4e1de3              # double 0.89730941933606478
	.quad	0x3fb92968de9f95a8              # double 0.098288111068163375
	.quad	0x3fec79b430123151              # double 0.88985642804031262
	.quad	0x3fc4ef137431210c              # double 0.16354602025445109
	.quad	0x3fde5081d8e5ef48              # double 0.47366377049887776
	.quad	0x3fef40fce1e8e040              # double 0.97668308375342149
	.quad	0x3fc74feb15b2126c              # double 0.18212641295771748
	.quad	0x3fef0fd5756040af              # double 0.97068283963201007
	.quad	0x3fdd3f3220a065f2              # double 0.4569821661585528
	.quad	0x3fd4a0ff1a7260a8              # double 0.32232644636816099
	.quad	0x3fcea2a92007acac              # double 0.23933900894130511
	.quad	0x3fec62e8d7835c72              # double 0.88707391827018811
	.quad	0x3feab79a65d8b9eb              # double 0.8349124898139143
	.quad	0x3fe6c688bf879de8              # double 0.71173512848048137
	.quad	0x3fd3be1d6b02b8d8              # double 0.30847869348771217
	.quad	0x3fdbadc1eeb9c48c              # double 0.43248031914760854
	.quad	0x3fc886fa81456738              # double 0.19161921798768744
	.quad	0x3fea3bb87d8bc409              # double 0.81979012032218279
	.quad	0x3fdb2cf3c381a012              # double 0.42461866466919773
	.quad	0x3f9f77da87fb86a0              # double 0.030730642842974221
	.quad	0x3fcb9044fca09b10              # double 0.21534025512047394
	.quad	0x3fe79ff36f9516ce              # double 0.73827525895532076
	.quad	0x3feb6fc3a6bb416d              # double 0.85739309849490797
	.quad	0x3fe4a392c4ed023d              # double 0.64496744596551248
	.quad	0x3fd1902e56d5df50              # double 0.27442511062644304
	.quad	0x3fed3693893061a8              # double 0.91291214747166283
	.quad	0x3feb1fc5a92ba66a              # double 0.84762843171229219
	.quad	0x3fab85117c748430              # double 0.053749605600622252
	.quad	0x3fd8d75ff46c9d1a              # double 0.38814543599660711
	.quad	0x3fee238a2fcefed2              # double 0.94183835351574374
	.quad	0x3fe6eb3886a905d4              # double 0.71621347714261185
	.quad	0x3fd47f89465126f6              # double 0.32028419367689709
	.quad	0x3fce6136fb66aaec              # double 0.23734175944749525
	.quad	0x3fe6c21f9b0acf84              # double 0.71119671136555995
	.quad	0x3fe4c1f1135efdee              # double 0.64867452414904192
	.quad	0x3feb04b6165f9e0b              # double 0.84432510728669408
	.quad	0x3fea9340cf3bf6a1              # double 0.83047523951946201
	.quad	0x3fecea52a7e7ab19              # double 0.90360386651932167
	.quad	0x3fe5c8b2d05229e1              # double 0.68074932754216999
	.quad	0x3fe20d97db647cf1              # double 0.56415932512382316
	.quad	0x3fd00afd3a0fa1b0              # double 0.25067072553658942
	.quad	0x3fee1b347d2873fa              # double 0.94082092709470477
	.quad	0x3fb09a93499e08f8              # double 0.064858632538775995
	.quad	0x3fe2d7ec8802b2fd              # double 0.5888579040962153
	.quad	0x3fc307cd249a85b4              # double 0.14867557799611364
	.quad	0x3fee9cfd6a575a43              # double 0.95666380662698491
	.quad	0x3fececdfbdafd12d              # double 0.90391528175545022
	.quad	0x3fa40862b43c49a0              # double 0.039126476766017548
	.quad	0x3fe90884d2caacbe              # double 0.78228989763501722
	.quad	0x3fb92ea6a8178820              # double 0.098368087804857839
	.quad	0x3fe75f809f4502a6              # double 0.73040801150644508
	.quad	0x3fdc580f4a5e8ee4              # double 0.44287473929055765
	.quad	0x3fe17d431014858f              # double 0.54654076710373711
	.quad	0x3fd14b42fc9be6ba              # double 0.27021860760542504
	.quad	0x3fe9e234d93e83d7              # double 0.80886309080608043
	.quad	0x3fcbc7cfd7e34fe4              # double 0.21703527490046703
	.quad	0x3fee6b26377e50d1              # double 0.95057974661406253
	.quad	0x3fe535b80ddbd8e6              # double 0.66280749041359566
	.quad	0x3fb6af13c2992b40              # double 0.088608965882639446
	.quad	0x3fe19be092d55f08              # double 0.55027798345960921
	.quad	0x3fb349c52a4a9ea0              # double 0.075344393563336443
	.quad	0x3fc29b6ce72acaec              # double 0.14536820685824325
	.quad	0x3fe911010bbbc7e7              # double 0.78332569400504048
	.quad	0x3fec44f5e5c7e552              # double 0.88341803435393218
	.quad	0x3fe5b90c9d252192              # double 0.67883902256385142
	.quad	0x3fc355e475fa6ebc              # double 0.15105872879654736
	.quad	0x3fde544b9fd10f94              # double 0.47389498335928093
	.quad	0x3fcc1dd9b2565360              # double 0.21966096122619216
	.quad	0x3fd3e065a12e6972              # double 0.31057110538826926
	.quad	0x3fe1f3f6d56b0d48              # double 0.5610307854007397
	.quad	0x3fe29ccfa7639e93              # double 0.58164198582831472
	.quad	0x3fe50d5984d4ec8d              # double 0.65787959998796597
	.quad	0x3fee76ca947d53b6              # double 0.95200089456431303
	.quad	0x3feb618894fa6d44              # double 0.85565594765959263
	.quad	0x3fbf6ea8a68a51d0              # double 0.12278226915288504
	.quad	0x3fc8cd8ea1bd9400              # double 0.19377310655104907
	.quad	0x3fdd32ba5d446c80              # double 0.45622119053013677
	.quad	0x3fdf161bdf3fb2c0              # double 0.48572441865580274
	.quad	0x3fa826f3be856bc0              # double 0.047172181136111657
	.quad	0x3fe7bcea3399254a              # double 0.74181089475420348
	.quad	0x3fd79016538dee84              # double 0.36816938552485845
	.quad	0x3fefc8c08a4e8a37              # double 0.99325587285085858
	.quad	0x3fea3f21a324cd41              # double 0.82020646919264817
	.quad	0x3fd41f1e18bf9184              # double 0.31439926544978669
	.quad	0x3fec52824d521a23              # double 0.88507189847661427
	.quad	0x3fe23ffe6cc9b1a2              # double 0.57031174895887582
	.quad	0x3fda156007c0dafa              # double 0.40755463368570555
	.quad	0x3fef4cb26a8f8636              # double 0.97811241924882242
	.quad	0x3fd7ea0bf3db9736              # double 0.37366007627712194
	.quad	0x3fef28e599afa9e2              # double 0.97374229447205729
	.quad	0x3fe7a84ee2997107              # double 0.73929542787257752
	.quad	0x3fc204cbce67b404              # double 0.14077136591313899
	.quad	0x3fcbab653f300b6c              # double 0.21616807542167338
	.quad	0x3fe501a213b43968              # double 0.6564493546336907
	.quad	0x3fe79eeda3868603              # double 0.73815042437144063
	.quad	0x3f9642acc79dcea0              # double 0.0217387196384623
	.quad	0x3fe3df3cd103c4c1              # double 0.62100067923724833
	.quad	0x3feaf447c6ede666              # double 0.84231938222292224
	.quad	0x3fe07918f50e1237              # double 0.51478240835473954
	.quad	0x3fbdc981954d5838              # double 0.11635599036284894
	.quad	0x3fb4948daf40f258              # double 0.080391745840594608
	.quad	0x3fcf838cd5f73c3c              # double 0.24620209167048468
	.quad	0x3fe9dbdec9d51fd6              # double 0.80808963222897989
	.quad	0x3fe5a72f54b0a2da              # double 0.67665831128132514
	.quad	0x3fe309ae972c2955              # double 0.59493188405876174
	.quad	0x3fca81ca464d1b44              # double 0.20708588059116029
	.quad	0x3f7db4b9634c0f00              # double 0.0072524301256213786
	.quad	0x3fc5d75cce53b7dc              # double 0.17063484263002138
	.quad	0x3fe802c2cc8d1a89              # double 0.75033702803996605
	.quad	0x3fc8923012beccf0              # double 0.19196129718111576
	.quad	0x3fd1c500cf62e044              # double 0.27764911892473187
	.quad	0x3fdcc0440afaa08e              # double 0.44923497268838097
	.quad	0x3fc9d0b05c488338              # double 0.20168118005769897
	.quad	0x3fe2bc9fb76a39b9              # double 0.58552537749510869
	.quad	0x3feae74a52e919b1              # double 0.84073368257013759
	.quad	0x3fd0d270ba9b4900              # double 0.26284425948428236
	.quad	0x3fdc618fa7da6b1c              # double 0.44345466033853298
	.quad	0x3fc555dcc5c0dd74              # double 0.16668281227041926
	.quad	0x3feec457b37cfb71              # double 0.96146760040561052
	.quad	0x3feb236364174b3b              # double 0.84806985425016224
	.quad	0x3fea27c59c2f34ec              # double 0.81735497002378343
	.quad	0x3fe7357db6fa9369              # double 0.7252796720318716
	.quad	0x3f8e97753a6ae300              # double 0.014937320561658307
	.quad	0x3fe0043b2ddf27c8              # double 0.5005165000850349
	.quad	0x3fe9c81b7bc4dba3              # double 0.80567716764095498
	.quad	0x3f7880429194e280              # double 0.0059816933001505257
	.quad	0x3feedac483a60b5c              # double 0.96420503342265417
	.quad	0x3fb07034204948d0              # double 0.064212091333760712
	.quad	0x3fe4b0122d98da83              # double 0.64649304300003541
	.quad	0x3fdf387e6cf7e8ac              # double 0.48782311097569209
	.quad	0x3fef6d4648c471ff              # double 0.98208917820335261
	.quad	0x3fde8656fa3e1434              # double 0.47694944799178818
	.quad	0x3fe5416be8eedc4a              # double 0.66423602576004126
	.quad	0x3fe24f01d069c90e              # double 0.57214441972453911
	.quad	0x3fef8d4ae87a048a              # double 0.98599763303367749
	.quad	0x3fcf2335505d0a68              # double 0.24326197074886413
	.quad	0x3fa4f92e590c8bf0              # double 0.040963600511780274
	.quad	0x3fefee972e042e27              # double 0.99787482249798109
	.quad	0x3fdc3a3ce4d6571a              # double 0.44105455729855836
	.quad	0x3fc4f9278b6d1270              # double 0.16385359104073727
	.quad	0x3fe411d53e3ca4e5              # double 0.62717687755244056
	.quad	0x3fdad0dea6e92820              # double 0.41899839687232721
	.quad	0x3fd3aa6b818f5bf0              # double 0.30727660801261347
	.quad	0x3fc0ef160c2e3020              # double 0.13229632944819603
	.quad	0x3fe46a142547bf2c              # double 0.63794905930806101
	.quad	0x3fab4c4eb5db7c00              # double 0.053316554736504429
	.quad	0x3fd8946a4c4f224a              # double 0.38405854656278804
	.quad	0x3fe91a6df33e2a55              # double 0.78447625645032792
	.quad	0x3fbc88bb0c60cb88              # double 0.1114613442630753
	.quad	0x3fe1a25034b20668              # double 0.55106363575050654
	.quad	0x3fd5b2e493995e3a              # double 0.33904375471090342
	.quad	0x3fdc035ffb23e650              # double 0.43770598912633307
	.quad	0x3fd867a463849496              # double 0.38132581442398228
	.quad	0x3fe6a30188cb1f72              # double 0.70739819257231162
	.quad	0x3fcec950e2ee6344              # double 0.2405186756193648
	.quad	0x3fed8f2c3c274994              # double 0.92372714756702345
	.quad	0x3fea09b535364054              # double 0.8136850394530577
	.quad	0x3fecd77234213be2              # double 0.90129957372289149
	.quad	0x3fec41da779b31e5              # double 0.88303874359695256
	.quad	0x3fca4c202301054c              # double 0.20544816693476731
	.quad	0x3fefe3e39852a591              # double 0.99656848669580899
	.quad	0x3fe52c8ab0d560f9              # double 0.6616872266559134
	.quad	0x3fe1b876b5fc6c64              # double 0.55376754326006195
	.quad	0x3fbf27b0029746f0              # double 0.12169933379416498
	.quad	0x3fd1d8b100242102              # double 0.27885079396993728
	.quad	0x3fa4d44fe74cd370              # double 0.040682312950969357
	.quad	0x3fe6e065c96e7ff0              # double 0.71489228574864505
	.quad	0x3fed4e26082508e8              # double 0.91578961935763648
	.quad	0x3fec9c172a3be527              # double 0.89405401467152934
	.quad	0x3fe58798685d93d0              # double 0.67280216583150754
	.quad	0x3fe456ce0375d176              # double 0.63559628177476557
	.quad	0x3fe1293bf450cb15              # double 0.53628347127809894
	.quad	0x3fd58e2078ae1134              # double 0.33679973397399299
	.quad	0x3fe722d5d61e60ea              # double 0.72300235576679239
	.quad	0x3feceea76857fc07              # double 0.9041325605356868
	.quad	0x3fe94721f0d06548              # double 0.78993317636483429
	.quad	0x3fd90b0f1549f838              # double 0.39129998282431044
	.quad	0x3fe3328efbd8d3f6              # double 0.59992169560302844
	.quad	0x3feb3e9649553ca6              # double 0.85139002154200649
	.quad	0x3fdb509e93518b76              # double 0.42679561983657466
	.quad	0x3fd36b9cce4956ea              # double 0.30344314713634779
	.quad	0x3fe618503b4248ae              # double 0.69046794485099894
	.quad	0x3fd19165269bdfea              # double 0.27449921389006582
	.quad	0x3fecec8cc2653fc0              # double 0.90387571304199099
	.quad	0x3fa71818cafc8a80              # double 0.045105719355224672
	.quad	0x3fdc6da2a253097a              # double 0.44419160701740845
	.quad	0x3fded4213e91cb88              # double 0.48169737921050926
	.quad	0x3fc6d690622e2a84              # double 0.17842297357522707
	.quad	0x3fd198431206f39e              # double 0.27491833458389603
	.quad	0x3fe83d0846b58b27              # double 0.75745023546582935
	.quad	0x3fd98e1bf0e7d0c4              # double 0.39929865384989349
	.quad	0x3fe44dd8ce84a023              # double 0.63450279555855038
	.quad	0x3fd7f825414c9af8              # double 0.37452060105208274
	.quad	0x3fe817676509ef2c              # double 0.75285691961423628
	.quad	0x3fe515f8d0911d75              # double 0.65893212066377649
	.quad	0x3faadf2ff8c33e50              # double 0.052484034649407207
	.quad	0x3fd6bcc098545586              # double 0.35527052761002442
	.quad	0x3fed6edf1c14cbde              # double 0.91978412136665688
	.quad	0x3fd37af277af5046              # double 0.304379097823816
	.quad	0x3fd1663e76ca76b0              # double 0.27186547852202647
	.quad	0x3fa3317bf0350210              # double 0.037486908981467448
	.quad	0x3fe3b190e842bcae              # double 0.61542554248253167
	.quad	0x3fcfca701a3a2064              # double 0.24836541443460469
	.quad	0x3fe5dc550c8acede              # double 0.68314602327015073
	.quad	0x3fdb4f97eaf57dfe              # double 0.42673299737177206
	.quad	0x3fd6231c961d930e              # double 0.34589304599494219
	.quad	0x3fe077f837d4e731              # double 0.51464472679729145
	.quad	0x3fdd64c185dce2f0              # double 0.45927465508024934
	.quad	0x3fed9d8179ae51fc              # double 0.92547677770431802
	.quad	0x3fe05ff500fb7a4a              # double 0.51171350662100079
	.quad	0x3fc5f39133954a34              # double 0.17149558085164218
	.quad	0x3fe1bcae28fae987              # double 0.55428226474695996
	.quad	0x3f6956d7f4c91500              # double 0.0030931680578613063
	.quad	0x3fef3bde4e0ffd39              # double 0.97605815168927911
	.quad	0x3fc31d74ea05879c              # double 0.14933644701801263
	.quad	0x3fd6c1bcd1278c4a              # double 0.35557480263941399
	.quad	0x3fe955d67231e713              # double 0.79172823241899193
	.quad	0x3fec3babd09bec6d              # double 0.88228407615623683
	.quad	0x3fd37d4b3d10861c              # double 0.30452233279547314
	.quad	0x3fe986f02d728676              # double 0.79772194744528124
	.quad	0x3fe03874ebc9576a              # double 0.50689168979691357
	.quad	0x3fe9427ea198a2ca              # double 0.78936702310337492
	.quad	0x3fc7c6af96bb55cc              # double 0.18575091228437512
	.quad	0x3fc4feecc38a6100              # double 0.16402968929174477
	.quad	0x3fce75c59574232c              # double 0.23796911046545099
	.quad	0x3fed8b19f7763927              # double 0.9232301552999943
	.quad	0x3fe07ca8e034cc95              # double 0.51521724500925592
	.quad	0x3fcef0e2f87f72f8              # double 0.24172627576526629
	.quad	0x3fd9460a72f05866              # double 0.39489995216843565
	.quad	0x3fab4234e304e080              # double 0.053239491188322496
	.quad	0x3fee68d93496dc23              # double 0.95029888411852814
	.quad	0x3fecce74e3aa7980              # double 0.90020222154616647
	.quad	0x3fe8b2e0e3635838              # double 0.77183575069171351
	.quad	0x3fde5790ca655322              # double 0.47409457936491795
	.quad	0x3fc06d88ed869958              # double 0.12834273908556315
	.quad	0x3f8579c81a0ca940              # double 0.010486186308828693
	.quad	0x3fda900fe5f408e6              # double 0.41504285293934939
	.quad	0x3fe764e9e5544532              # double 0.73106856146674759
	.quad	0x3f8111025707d740              # double 0.0083332236108436541
	.quad	0x3fe73dd904268e8b              # double 0.72629977045694838
	.quad	0x3fdcfbd17846626c              # double 0.45286976571654836
	.quad	0x3fe39865fbf91264              # double 0.61235331738914711
	.quad	0x3fb1262dd378be70              # double 0.066988815430471638
	.quad	0x3fdbd94c05d6c326              # double 0.43513775415617528
	.quad	0x3fc667a5ccc17d2c              # double 0.17503807542650784
	.quad	0x3fe0f80acb5ddbf4              # double 0.53027858467146283
	.quad	0x3fea1cceb9dde75f              # double 0.81601654340850505
	.quad	0x3fd3a502459597bc              # double 0.30694634242388097
	.quad	0x3fe464efc0e79c5c              # double 0.63732135464386941
	.quad	0x3fa3c71cf8018fc0              # double 0.038628487848455517
	.quad	0x3fe73251afff4fb6              # double 0.72489246725535028
	.quad	0x3fe64ceecb71e122              # double 0.69689120993919951
	.quad	0x3fc88a5cf5817264              # double 0.19172250735836649
	.quad	0x3fe56db3624837d2              # double 0.66964120097849844
	.quad	0x3fe71539e1553806              # double 0.72134107599572483
	.quad	0x3fe563c4904f30da              # double 0.6684286898175984
	.quad	0x3feb48dc4214302e              # double 0.85264408975627304
	.quad	0x3fef2a5a3261f724              # double 0.97391996231428779
	.quad	0x3fc55baa04b18b30              # double 0.16685986737419389
	.quad	0x3fe29e1f835918d8              # double 0.58180213598168518
	.quad	0x3fe2910185192d3f              # double 0.58020092006464796
	.quad	0x3fed546a98b009b2              # double 0.91655473539167631
	.quad	0x3fef75d9259e2338              # double 0.98313577029430287
	.quad	0x3fe41b30169b1c73              # double 0.62831882872786904
	.quad	0x3fdd4832c9f5964c              # double 0.45753164026823323
	.quad	0x3fe945997a213274              # double 0.78974603513195384
	.quad	0x3fe44cdc52729073              # double 0.63438240149527159
	.quad	0x3fc9de18c4a22ce0              # double 0.20209035493130667
	.quad	0x3fcb46e22d5020e8              # double 0.21310069286869937
	.quad	0x3fc518999df68fe8              # double 0.16481323445361729
	.quad	0x3fec0151dc704537              # double 0.87516110472112174
	.quad	0x3feb03cb5640726b              # double 0.84421316953701131
	.quad	0x3fe702c221933d1f              # double 0.71908670957228427
	.quad	0x3fdd2914ba4e123c              # double 0.45563238328785238
	.quad	0x3fd9ff19365e9070              # double 0.40619497594366916
	.quad	0x3fd2858b860919c6              # double 0.28940094079407819
	.quad	0x3fb980b8db7d8d50              # double 0.099620393358738512
	.quad	0x3fd793b43c6826c6              # double 0.36839013957124356
	.quad	0x3fe18d54946f77e2              # double 0.54850224486630972
	.quad	0x3fdcd1ead4a86658              # double 0.45031233565678042
	.quad	0x3fe5ca820d025993              # double 0.68097021618705111
	.quad	0x3fe9a0f97849e25e              # double 0.80090020650738913
	.quad	0x3fd39f9a5c9ee070              # double 0.30661639256459861
	.quad	0x3fd92a449abd765c              # double 0.39320483313881538
	.quad	0x3fcf5d99423f15c4              # double 0.24504390463532222
	.quad	0x3fbf9cb42664d688              # double 0.12348485886908567
	.quad	0x3fd7aa6057ad9126              # double 0.36977394640259076
	.quad	0x3fdd37f6f03c29c6              # double 0.45654080830049926
	.quad	0x3fd049b551c4c066              # double 0.25449879632197392
	.quad	0x3febf6a9dfb45966              # double 0.87386029903681783
	.quad	0x3fe79aa3c9b0547b              # double 0.73762692825643172
	.quad	0x3fe89df92c9274da              # double 0.76928385453689008
	.quad	0x3fbc8cbba6428450              # double 0.11152241524770656
	.quad	0x3fd80873d6516808              # double 0.3755158989857823
	.quad	0x3feeb27d8ac28dee              # double 0.95928837873037565
	.quad	0x3fe668e68af04682              # double 0.70030524383965109
	.quad	0x3fc4568dd0693420              # double 0.15889141727748868
	.quad	0x3fbe58bb90e4c430              # double 0.11854145324174747
	.quad	0x3fce1226ca84219c              # double 0.23492894066317838
	.quad	0x3fccddfeb2f0654c              # double 0.22552474725015725
	.quad	0x3fdb17dd7f6be7da              # double 0.42333161777025696
	.quad	0x3f70b422c94da680              # double 0.0040780409661721473
	.quad	0x3fd0d95e995d50ac              # double 0.26326718308451791
	.quad	0x3fda6076d5526be0              # double 0.41213770706388964
	.quad	0x3fd51078c295b494              # double 0.32913035395069667
	.quad	0x3fbcff8771c253a8              # double 0.11327406432458409
	.quad	0x3fddaa104a38baa2              # double 0.46350486038401517
	.quad	0x3fe73dc5bfa9e1b8              # double 0.72629058298394167
	.quad	0x3fe22ab2b33628de              # double 0.5677121639467051
	.quad	0x3fe7a234162f3c81              # double 0.73855022747910948
	.quad	0x3fe4acbe8f396532              # double 0.64608695958592066
	.quad	0x3fea342eaf831b49              # double 0.8188699176761044
	.quad	0x3fda79e9401b3bf4              # double 0.41369086513890285
	.quad	0x3fded061de1aa0de              # double 0.48146864595265793
	.quad	0x3fe8613067e80de0              # double 0.76186390203696063
	.quad	0x3fee5c62d439f165              # double 0.94877759409386597
	.quad	0x3fddb5b91fa15994              # double 0.46421650017637117
	.quad	0x3fd33762fee7ffc8              # double 0.30025553601444388
	.quad	0x3fe85f3e8e04998f              # double 0.76162650812038801
	.quad	0x3fd891b4f19218f8              # double 0.3838932379807285
	.quad	0x3fe3c8bf7d685334              # double 0.61825537198692482
	.quad	0x3fe3504ea4bb6887              # double 0.60355312513571924
	.quad	0x3fe68667bd83c84f              # double 0.70390688910107169
	.quad	0x3f9d34b82b042f80              # double 0.02852142107535327
	.quad	0x3fd286096037cade              # double 0.28943094631465083
	.quad	0x3fdf5286575f9cd4              # double 0.48941191227500025
	.quad	0x3fe8e8cbf5247dc0              # double 0.7784175670566853
	.quad	0x3feab03c2fd56691              # double 0.83401307432650829
	.quad	0x3fe653ec562a8171              # double 0.69774453000358794
	.quad	0x3fd6298394be0d96              # double 0.34628381276726239
	.quad	0x3fde8d72a5de899a              # double 0.47738329122707912
	.quad	0x3fecdc5499513582              # double 0.90189580864687025
	.quad	0x3fca8a33ec1b46cc              # double 0.20734261540069665
	.quad	0x3fe379d09dd8448a              # double 0.60861998395024952
	.quad	0x3fddd67fce03012e              # double 0.46621699446042697
	.quad	0x3fd917d9dd910e42              # double 0.39208075177541357
	.quad	0x3fd059e7409a746c              # double 0.25548726376457043
	.quad	0x3fe435adf4434480              # double 0.6315526743657216
	.quad	0x3fe33bc6bf08eb42              # double 0.60104691802494181
	.quad	0x3fedb82bfe650e49              # double 0.92873191534494837
	.quad	0x3fee5384c7fca6bc              # double 0.9476951509470477
	.quad	0x3fee3bd959c895c6              # double 0.9448057893356967
	.quad	0x3fe07b45b2b91289              # double 0.51504788309883154
	.quad	0x3f65834b1800c200              # double 0.0026260821032553228
	.quad	0x3fde7c37ae3854b2              # double 0.47633163465190898
	.quad	0x3fc7ab7863f7dac8              # double 0.18492035752543345
	.quad	0x3fe5195099e70df4              # double 0.65934019145100686
	.quad	0x3fe045e3154746c6              # double 0.50853113323156474
	.quad	0x3fc66de0d37cd7bc              # double 0.17522821737810357
	.quad	0x3fd5730ce1de522a              # double 0.33514711434807742
	.quad	0x3fe841c8b4077324              # double 0.75803027307447168
	.quad	0x3fe7a01afa9ebb88              # double 0.73829411458233185
	.quad	0x3fc0f27042b84770              # double 0.13239863641552629
	.quad	0x3fdd63f8ee9a7bde              # double 0.45922683049314894
	.quad	0x3fdc645125c946d0              # double 0.44362286272108253
	.quad	0x3fd9b8981bed6d5a              # double 0.40189173438348791
	.quad	0x3fd256a09f3189a0              # double 0.28653731867066234
	.quad	0x3fec2d360f996b1d              # double 0.88051894232498606
	.quad	0x3fe6284e0fd68c0b              # double 0.69242003529905227
	.quad	0x3fe85f14b424ca75              # double 0.76160655197447957
	.quad	0x3feec5f9e14b091e              # double 0.9616670036560071
	.quad	0x3fd9fe69d4bee418              # double 0.40615316177314886
	.quad	0x3fcd24022b88c3f4              # double 0.22766139150328935
	.quad	0x3fe93b19cc44895f              # double 0.78846444984473496
	.quad	0x3fcabd379b905254              # double 0.20889945121656928
	.quad	0x3fdab09e327396c0              # double 0.41702990462213663
	.quad	0x3fd86fd4e41425e2              # double 0.38182565949736447
	.quad	0x3fe6f0050df90896              # double 0.71679928521213543
	.quad	0x3fc9b7d415e6d398              # double 0.20092249936501783
	.quad	0x3fcbb70226353afc              # double 0.21652247300740857
	.quad	0x3fed2eff43522494              # double 0.91198695324523493
	.quad	0x3fd9da5716fa9f88              # double 0.40395142787974025
	.quad	0x3fe49e0c12fcd1ad              # double 0.64429286678801179
	.quad	0x3fed072f30cb7c07              # double 0.90712699442144717
	.quad	0x3fdf46a456979946              # double 0.48868664222972702
	.quad	0x3fc9a111b9875b34              # double 0.20022794302959712
	.quad	0x3fd41370438dbfaa              # double 0.3136864337639006
	.quad	0x3fe23ee8d94b71d8              # double 0.57017939033863296
	.quad	0x3feaf12696352631              # double 0.84193734490799532
	.quad	0x3fea86f686b729fd              # double 0.82897497474306159
	.quad	0x3fe1ba234d94613c              # double 0.55397191192881889
	.quad	0x3fc8f72bcf960df8              # double 0.19504306446115982
	.quad	0x3fd39bcb4c695da4              # double 0.30638391935414178
	.quad	0x3fc9f047e32944b8              # double 0.20264528838973717
	.quad	0x3fd5600ce9062208              # double 0.33398745304342059
	.quad	0x3fad66655043c930              # double 0.057421842620799857
	.quad	0x3fd8ee669c7d0d60              # double 0.38955083162382742
	.quad	0x3fd653b610fba9a0              # double 0.34885932596685088
	.quad	0x3fe5e48349c1d891              # double 0.68414463430123551
	.quad	0x3fcc7fd9b9c63144              # double 0.22265168734555563
	.quad	0x3fc61011baa80bfc              # double 0.17236539472659718
	.quad	0x3fdb7c39720dbaaa              # double 0.42945705545472868
	.quad	0x3fc780156d30d3f4              # double 0.18359630424097839
	.quad	0x3fdc4bb1dc792144              # double 0.44212004213888556
	.quad	0x3fd0560a09295efe              # double 0.25525141615570124
	.quad	0x3fe5633a604b36aa              # double 0.66836279685386057
	.quad	0x3fef31fa49c9c1a0              # double 0.9748507920431173
	.quad	0x3fcf8f1bf1ffff34              # double 0.24655484501271874
	.quad	0x3fed0d91c7e1affb              # double 0.90790642775891628
	.quad	0x3feaf5644017a15b              # double 0.84245502965954289
	.quad	0x3fe05fa937d42a99              # double 0.51167736915643325
	.quad	0x3fe9a6fed5a7584b              # double 0.80163518647419474
	.quad	0x3fe24c5ed99cb5ee              # double 0.57182257177708862
	.quad	0x3fe2eb6b67a8c7d6              # double 0.59123773809391866
	.quad	0x3fdb4821b64e9bba              # double 0.42627756884979429
	.quad	0x3fec50cc73e7d7ee              # double 0.8848631156713489
	.quad	0x3fe352ffaf977a39              # double 0.60388168616538629
	.quad	0x3fc7f219d99c27a8              # double 0.18707583547103224
	.quad	0x3fef41a7bf6baabd              # double 0.97676455866652356
	.quad	0x3fed62fcd1219411              # double 0.91833344312601828
	.quad	0x3fcef4c91d9e4718              # double 0.24184526392178252
	.quad	0x3fdcb80c3129c158              # double 0.44873337555966009
	.quad	0x3fc29c9e35077818              # double 0.14540460194888349
	.quad	0x3fce6a31fb1fc5cc              # double 0.23761582147521521
	.quad	0x3f8269243ae3b8c0              # double 0.0089896040412579258
	.quad	0x3fa553ee16c9fe60              # double 0.04165596035181518
	.quad	0x3fe34237c9366dbe              # double 0.60183324145639694
	.quad	0x3fed09dd7743533c              # double 0.90745423596909047
	.quad	0x3fcced745ebc9ba8              # double 0.22599653840844991
	.quad	0x3fef2fe540b3a6b0              # double 0.97459662091315202
	.quad	0x3feba764592bd3bd              # double 0.86418359199762274
	.quad	0x3fd133d5bab9aa2c              # double 0.26878875002754188
	.quad	0x3fb5dd71d3dd62d0              # double 0.085410227036287311
	.quad	0x3fe66ea0a65cc62a              # double 0.70100433819442753
	.quad	0x3fe8bff6fbfe1fd9              # double 0.77343320100134882
	.quad	0x3fe045fa51d2af01              # double 0.50854221325923288
	.quad	0x3fcd354ece147908              # double 0.22818932592867491
	.quad	0x3fea8a4988b08ac5              # double 0.82938076684180173
	.quad	0x3fed5e71c7247a27              # double 0.9177788629056679
	.quad	0x3fe899adda359a6e              # double 0.76875965708752658
	.quad	0x3fd3ed7c2be004cc              # double 0.31136993679690472
	.quad	0x3fe5d098430d4c95              # double 0.68171322914203591
	.quad	0x3fe4ddf474a30205              # double 0.65209410458197736
	.quad	0x3fe6b95dbb687e33              # double 0.71012770274314219
	.quad	0x3f91c0762b1999e0              # double 0.017335745220771304
	.quad	0x3fec24b793ae8afc              # double 0.8794820675287549
	.quad	0x3fbcf96ee91805c8              # double 0.11318104925887618
	.quad	0x3fe58d7b89a85e76              # double 0.67352082144039005
	.quad	0x3fcdac51710a0c2c              # double 0.23182123202795546
	.quad	0x3fc52f50cdefc250              # double 0.1655064588117221
	.quad	0x3fd76d96745396a6              # double 0.36606370315562697
	.quad	0x3fe40f41bfdc1e03              # double 0.62686240646957037
	.quad	0x3fdfd4c546fdbe80              # double 0.49736148770077904
	.quad	0x3fdd8593578077b4              # double 0.46127780480480429
	.quad	0x3fda342e52509372              # double 0.40943487204122342
	.quad	0x3fd1dcf4e25df2ca              # double 0.27911111932898491
	.quad	0x3fecb7167e5788a2              # double 0.89734959293516092
	.quad	0x3fda9abfd97fc9fe              # double 0.41569515457300088
	.quad	0x3feb2afa9195fff1              # double 0.8489964335894894
	.quad	0x3fca585080344b78              # double 0.20582014331793252
	.quad	0x3feb8c2b816a5428              # double 0.86086058880267036
	.quad	0x3fa9ad4f33a6b060              # double 0.050150370650357656
	.quad	0x3fed8b717b98b8a7              # double 0.923271886252924
	.quad	0x3fea73283caa4e9d              # double 0.8265572724216842
	.quad	0x3fc32a0818c630f4              # double 0.14972020349194504
	.quad	0x3fe4a46014f8d06b              # double 0.64506534668045157
	.quad	0x3fed48a00a3be89b              # double 0.91511537550765654
	.quad	0x3fd57fe3c6d03590              # double 0.33593077102053659
	.quad	0x3fb06d2328c0ff80              # double 0.064165303659136086
	.quad	0x3f4cfcbeab1e7000              # double 8.8462171537484479E-4
	.quad	0x3fe11f8de9af926d              # double 0.53510184900058066
	.quad	0x3fecb78325a5adba              # double 0.89740140297856574
	.quad	0x3fed727816cdf45a              # double 0.92022327856069386
	.quad	0x3feaa371523949ad              # double 0.83245149669010277
	.quad	0x3fd9d2e8dfba530a              # double 0.40349790428562982
	.quad	0x3fe764253d75d5c1              # double 0.73097478870356991
	.quad	0x3fbf50389b598f18              # double 0.12231782715531059
	.quad	0x3fdd1ac511dde68c              # double 0.45475889916233636
	.quad	0x3fc7b3085a1c2504              # double 0.18515114211940198
	.quad	0x3fd767c8d5f3c2ba              # double 0.36570950406807479
	.quad	0x3fe187c6eb0cbb9c              # double 0.54782434375907796
	.quad	0x3fd33ec028e473d8              # double 0.30070499413869589
	.quad	0x3fe9157c3289f75c              # double 0.78387269850621121
	.quad	0x3fe5797831f44c4c              # double 0.67107782131859883
	.quad	0x3fe98c20e5679c99              # double 0.79835552983867608
	.quad	0x3fd0486be93380c4              # double 0.25442025922349054
	.quad	0x3fc2a6d0c82ba43c              # double 0.14571580671261752
	.quad	0x3fedfb61b29751fe              # double 0.93693623429368222
	.quad	0x3fe2c19cefac68f4              # double 0.58613440333581801
	.quad	0x3fe4da62c432fcc0              # double 0.65165842361593462
	.quad	0x3fef4c3ec9d3e565              # double 0.97805728358723043
	.quad	0x3fe7475d9e8e7e25              # double 0.72746163337791769
	.quad	0x3fd789f909eada8a              # double 0.36779619186874213
	.quad	0x3fe6bfdcce200ec3              # double 0.71092071780045563
	.quad	0x3fdea61bf2c50fd0              # double 0.47888849933610533
	.quad	0x3fe929cf1fbac48b              # double 0.78635364720516188
	.quad	0x3fe1bf27b29cee42              # double 0.55458435902932757
	.quad	0x3fc10919d690dd7c              # double 0.13309023835038747
	.quad	0x3fe326858899ead8              # double 0.59845234565667749
	.quad	0x3fdd07f8356e5c84              # double 0.45361142366295604
	.quad	0x3fe33fe89fc467ee              # double 0.6015513534978234
	.quad	0x3fe90260e09e38a0              # double 0.78154033537591161
	.quad	0x3fe2a6d2a4506dfc              # double 0.58286411373722968
	.quad	0x3fe6cfa35d8c01ca              # double 0.7128464533889709
	.quad	0x3f7b106af2dc7400              # double 0.0066074540789289316
	.quad	0x3fdfcb8b31028f0a              # double 0.49679832254535994
	.quad	0x3feb2cd1ba52fbc0              # double 0.8492210997718459
	.quad	0x3fdd20a625d83248              # double 0.45511773772958408
	.quad	0x3fe2c56ff3957bd2              # double 0.58660123419746868
	.quad	0x3fe5edb0c255b233              # double 0.68526494937902382
	.quad	0x3fd6cab71fcf9fc4              # double 0.35612276178880742
	.quad	0x3fdaa3e06c4b41c2              # double 0.41625223708708969
	.quad	0x3fd84be6efe8976c              # double 0.37963269642420161
	.quad	0x3fc48a6840acd568              # double 0.16047385366406819
	.quad	0x3fe0dba94a4af73f              # double 0.52681412229842539
	.quad	0x3fc4c90970a5f0dc              # double 0.1623851585426398
	.quad	0x3fadcf27c270f2e0              # double 0.058221094594477441
	.quad	0x3fec66bcc083723e              # double 0.88754117584500825
	.quad	0x3fecd0f5f48a3534              # double 0.90050790559477045
	.quad	0x3fdbc38b9b9b370e              # double 0.43381014057091327
	.quad	0x3feb7fd824a95a6b              # double 0.85935599480110392
	.quad	0x3fc97adeb2e34744              # double 0.19906219229465638
	.quad	0x3fee38a084ae0ac2              # double 0.94441247858079458
	.quad	0x3fe1914ec9fce1d0              # double 0.54898776484247414
	.quad	0x3fcd16d33f49acd8              # double 0.22725906934952067
	.quad	0x3fc6d9248684cf34              # double 0.1785016686277402
	.quad	0x3fe938b62a5a3a01              # double 0.78817280075037399
	.quad	0x3f9ecd7f6f8305a0              # double 0.030080786877766053
	.quad	0x3fd34ebad2729a4a              # double 0.30168028403787572
	.quad	0x3fe4a058b450782c              # double 0.64457354753154084
	.quad	0x3fe6259f3b5278d1              # double 0.69209252916678043
	.quad	0x3fa9034ab6349550              # double 0.048853239766951106
	.quad	0x3fe0342ad040baa2              # double 0.50636807131180128
	.quad	0x3fd17fc37c7cd986              # double 0.27342307240487462
	.quad	0x3fdeadd32181fdb2              # double 0.47935941955798989
	.quad	0x3fde1f20953ecbca              # double 0.47064985823379557
	.quad	0x3fe016039c0902af              # double 0.50268726802467778
	.quad	0x3fe0864abc0be8b2              # double 0.51639305808864422
	.quad	0x3fe682bc07b9bd15              # double 0.70345880040068443
	.quad	0x3fefcc32105e0508              # double 0.99367621609431555
	.quad	0x3fc2fc30f347be98              # double 0.14832126501959375
	.quad	0x3fb01de369786be8              # double 0.062956059693916822
	.quad	0x3feb31ec3a1da58c              # double 0.84984408713096248
	.quad	0x3fc9e34b80684af8              # double 0.20224899072544367
	.quad	0x3fed2e6c26b4d3e1              # double 0.91191680488429594
	.quad	0x3fe99fa9a38a5d6d              # double 0.80074006978513312
	.quad	0x3feee3b152975a9f              # double 0.96529451495264939
	.quad	0x3fe1fb4cfe3b9e79              # double 0.56192636160717691
	.quad	0x3fe1aa912c231050              # double 0.55207117672444816
	.quad	0x3fd5c66b8a9654dc              # double 0.34023560079488191
	.quad	0x3fe363d1eace52f5              # double 0.60593505726373442
	.quad	0x3fe899e3ecdbe2ef              # double 0.76878544103155189
	.quad	0x3fed65098ac9eee5              # double 0.91858365161121169
	.quad	0x3fe0202cb8b2f9af              # double 0.50392757486388529
	.quad	0x3fa1c93b01cd9af0              # double 0.034738391847715877
	.quad	0x3fe542959475a165              # double 0.6643779658889285
	.quad	0x3fed7521bb208c09              # double 0.92054831074017429
	.quad	0x3fe3d82851cb1a1b              # double 0.62013641333834657
	.quad	0x3fdb0dbc50e21b76              # double 0.42271335505250052
	.quad	0x3fedc00c542931bd              # double 0.92969337880781888
	.quad	0x3fd927f031b3edc0              # double 0.39306263784211737
	.quad	0x3fa51b48567ce890              # double 0.041223774488075127
	.quad	0x3fc3fad4d6adc2c0              # double 0.1560922668682192
	.quad	0x3fedb04ac25c47ae              # double 0.92777002297429134
	.quad	0x3fc6deb56f4a7d8c              # double 0.17867153104905886
	.quad	0x3fe37f4afaff42a7              # double 0.6092886831557579
	.quad	0x3fecd5f0fbd9672e              # double 0.90111588658621655
	.quad	0x3fdf68153dc07e8c              # double 0.49072772055112845
	.quad	0x3fe9e3cb45dc3bff              # double 0.8090568890055464
	.quad	0x3fba87b85793c370              # double 0.10363342416873222
	.quad	0x3fa6aa5e6f5f0240              # double 0.044268561453922661
	.quad	0x3fe876b75b53f4df              # double 0.76449172818652389
	.quad	0x3fe2cee20837ff9b              # double 0.58775426488135751
	.quad	0x3fe5d8036f1992f4              # double 0.68261882495116177
	.quad	0x3fe1b2097eedf09a              # double 0.55298304358395289
	.quad	0x3fe54479b425f82e              # double 0.66460881409853356
	.quad	0x3fe086a0e1371146              # double 0.51643413531613969
	.quad	0x3fe60535866bcdc5              # double 0.68813587431071055
	.quad	0x3fd945387b4a88ac              # double 0.39484989204550902
	.quad	0x3fe38e912809d936              # double 0.61115320034040255
	.quad	0x3fbb760b0776b600              # double 0.107269944498249
	.quad	0x3fda1480b47fa42c              # double 0.40750138880554476
	.quad	0x3fdbee5017073250              # double 0.43642046212042818
	.quad	0x3fea89137643e90d              # double 0.82923291300474633
	.quad	0x3fd27d953022a802              # double 0.28891496372909853
	.quad	0x3fad2329724eae80              # double 0.056908889010938601
	.quad	0x3fe083f12b019a0a              # double 0.51610620879802238
	.quad	0x3fd2342c59be5692              # double 0.28443440212263582
	.quad	0x3fa4c664ef1befb0              # double 0.040576128185392135
	.quad	0x3fef15c3faa15224              # double 0.97140692664340066
	.quad	0x3fdfdd7312d02774              # double 0.49789120518891328
	.quad	0x3fe85e84fd23ad29              # double 0.76153802338868559
	.quad	0x3feb85445d06e328              # double 0.86001794976536861
	.quad	0x3feceda5ebebbd56              # double 0.90400978163044488
	.quad	0x3fe26eb7049412e0              # double 0.57601500410290996
	.quad	0x3fe7c81e8b441e47              # double 0.74317862701804749
	.quad	0x3fe8467883b2c47e              # double 0.75860238764120402
	.quad	0x3fc87faccd8f274c              # double 0.19139633214063634
	.quad	0x3fcf0584d47efb44              # double 0.24235592246801663
	.quad	0x3fca997c97b6a6dc              # double 0.20780904205212536
	.quad	0x3fe9cc567a10ad74              # double 0.80619357910965883
	.quad	0x3fe83efb9e771d46              # double 0.75768834066631352
	.quad	0x3fcb916cd0ed2e04              # double 0.21537552072037169
	.quad	0x3fd21f3d54776672              # double 0.28315671204254678
	.quad	0x3fe05ff22f89f03c              # double 0.51171216282774123
	.quad	0x3fe2f57a55459f90              # double 0.59246555952721458
	.quad	0x3fdf71f3e7bfd876              # double 0.49133012420441646
	.quad	0x3fae87d9cd4296e0              # double 0.059630209261099187
	.quad	0x3fe259d40bb296bb              # double 0.57346536907854018
	.quad	0x3fd0987d48d6b9fe              # double 0.25930721390878364
	.quad	0x3fd846af68686888              # double 0.37931428142622581
	.quad	0x3fd9fd413c5461c6              # double 0.40608244792522574
	.quad	0x3fd5b5e36940af72              # double 0.33922658232290026
	.quad	0x3fe0974c0527bc28              # double 0.51846886641385925
	.quad	0x3fecc8b9b6e2f156              # double 0.89950261802691034
	.quad	0x3f5fc37cc2519e00              # double 0.0019386976576017956
	.quad	0x3fe5f7777ea9c257              # double 0.68645834673777528
	.quad	0x3feef3010d8f2f4a              # double 0.96716358803085112
	.quad	0x3fe482033aa9b508              # double 0.64087068040467532
	.quad	0x3fe2f825b400267c              # double 0.59279141575207417
	.quad	0x3feb7d8f714f88b7              # double 0.85907718783371123
	.quad	0x3fe4509e3525f45b              # double 0.63484106426734443
	.quad	0x3fe279142fddc4a0              # double 0.57728013371356113
	.quad	0x3fdff47beae34c88              # double 0.49929712236662072
	.quad	0x3fdf8e94a6a5e7b8              # double 0.49307743334031384
	.quad	0x3fe63d89a01ca971              # double 0.69501191398494033
	.quad	0x3fb7a19c90cabfe0              # double 0.092309747075659754
	.quad	0x3fe4f29c4108b200              # double 0.65461552335688111
	.quad	0x3fc7807b11198788              # double 0.18360842070529437
	.quad	0x3fedc1c660635f3a              # double 0.92990416360678485
	.quad	0x3fcbf76f5ba64be0              # double 0.21848861670568365
	.quad	0x3fe3201f32bf03bb              # double 0.59767112647397569
	.quad	0x3fea8f8e522d341b              # double 0.8300239186297661
	.quad	0x3fdece1ef2cf131c              # double 0.48133062087826928
	.quad	0x3fe566e3a05a5305              # double 0.66880971259033173
	.quad	0x3fd207f058cc7a58              # double 0.28173454925300723
	.quad	0x3fb1321425861958              # double 0.067170390282716652
	.quad	0x3feb57528d38799d              # double 0.85440948087834878
	.quad	0x3fe8befad40f7a7a              # double 0.77331296365794278
	.quad	0x3fce03feb0a72a24              # double 0.23449691415437812
	.quad	0x3fc876e07e3a1a24              # double 0.1911278358786187
	.quad	0x3feb02a26fcba70c              # double 0.84407159648000762
	.quad	0x3fcdea567caf3b7c              # double 0.2337139233408968
	.quad	0x3fd4bc45eb9ceaca              # double 0.32399127968862429
	.quad	0x3fdc31ee32bc1c00              # double 0.44054751352854282
	.quad	0x3feef6aa4bcd8f94              # double 0.96761050038593277
	.quad	0x3feb6004fc58333b              # double 0.85547112737695075
	.quad	0x3fb51d03b4881410              # double 0.082473975730025239
	.quad	0x3fdfe8fd6bc23cce              # double 0.49859557650866015
	.quad	0x3fe5027f51dafd5a              # double 0.65655485141170833
	.quad	0x3fe7d6afd168d68a              # double 0.74495688343331889
	.quad	0x3fef44f6887dd885              # double 0.97716833742630682
	.quad	0x3fdada97c5859ca4              # double 0.41959184922456871
	.quad	0x3fde531cb04cf458              # double 0.4738227578816967
	.quad	0x3fd5a0bf9e321d34              # double 0.33793631027988913
	.quad	0x3fd72768799b1c94              # double 0.36178027988030093
	.quad	0x3fd25b499fcfa7bc              # double 0.28682175261075904
	.quad	0x3fec607138cd9f10              # double 0.88677273840309745
	.quad	0x3fd9bd88ed9a9506              # double 0.40219329074382448
	.quad	0x3fe10c8154792b64              # double 0.53277651308722485
	.quad	0x3fec97a663724441              # double 0.89351195738903055
	.quad	0x3fbdbb4d73f4eab0              # double 0.11613926011060971
	.quad	0x3fe27a435bd4df51              # double 0.57742469726415824
	.quad	0x3fc7ae570213dfbc              # double 0.18500793076941402
	.quad	0x3fe68e6ab43f0865              # double 0.70488486484852031
	.quad	0x3fca7cfd6365bda4              # double 0.2069393859232892
	.quad	0x3fb1b47a90fbd5a8              # double 0.069160137554567513
	.quad	0x3fe8661f396d3f0b              # double 0.76246606079254897
	.quad	0x3fec3bad708740ee              # double 0.88228485086622555
	.quad	0x3fe5cac47a4b541e              # double 0.68100189099880359
	.quad	0x3fd7a12f45ba9330              # double 0.36921293076948114
	.quad	0x3fe33b1b0435b9b8              # double 0.60096503088225628
	.quad	0x3fd2976fd7d451de              # double 0.29049297406279873
	.quad	0x3fd3b5e5cd33f4ea              # double 0.30797715224600941
	.quad	0x3fefab4732c20511              # double 0.98965797341966965
	.quad	0x3fd4b2d28576e770              # double 0.32341445001258418
	.quad	0x3fbab3aba2985eb8              # double 0.10430405349358807
	.quad	0x3fd65a7f89335fce              # double 0.34927357100013701
	.quad	0x3fca6203d40ab588              # double 0.20611617902379131
	.quad	0x3fd6d9fdfe10b2c6              # double 0.35705518542344483
	.quad	0x3fe64f44b95c8a00              # double 0.69717632487692072
	.quad	0x3fd87bcc6c10ba22              # double 0.38255606225257754
	.quad	0x3fccd3d2918f79bc              # double 0.22521431071704778
	.quad	0x3fe68c8ed96978ad              # double 0.70465795958786759
	.quad	0x3fe16e4a914a8440              # double 0.5447132909504333
	.quad	0x3fcc4e36fcc4b0e8              # double 0.22113692609980906
	.quad	0x3fe19d9a4f928fc2              # double 0.55048862020020572
	.quad	0x3fdb0013e6bf042c              # double 0.42187974485210833
	.quad	0x3fe3dcd523e935bc              # double 0.62070710195410284
	.quad	0x3fb157e08363d9d0              # double 0.067747146680495307
	.quad	0x3fef173d48ceccf5              # double 0.97158683986927363
	.quad	0x3fc6960df5a0a3b4              # double 0.17645430081873104
	.quad	0x3fcfebbc51ce16a8              # double 0.24938158029924762
	.quad	0x3fc80b49fbc794bc              # double 0.18784451288153103
	.quad	0x3febb30ad0e1cbcd              # double 0.8656057433821559
	.quad	0x3fe5038af9a52348              # double 0.65668247946550995
	.quad	0x3fedd245537f00df              # double 0.93191782291253478
	.quad	0x3fe4de3ea30fd3e2              # double 0.65212947700512935
	.quad	0x3fe04497a07a3c31              # double 0.50837308257349012
	.quad	0x3fe09ee821f4465c              # double 0.51939779884032644
	.quad	0x3fd0d8b37dff2f80              # double 0.26322638801934062
	.quad	0x3fc0d1e8c4c4f0bc              # double 0.13140592201114554
	.quad	0x3fe21fd17b81b265              # double 0.56638406870258662
	.quad	0x3fd8eb6cad6934da              # double 0.38936917242683722
	.quad	0x3fc3acb17d5fffa4              # double 0.15370768186403183
	.quad	0x3fbe37c85c5965e8              # double 0.11803867582911887
	.quad	0x3fe619327ad4e85d              # double 0.69057582846222554
	.quad	0x3fe8d0998734aa7e              # double 0.7754638329254957
	.quad	0x3fe31864b55962b1              # double 0.59672770900495753
	.quad	0x3fe8c95109492d20              # double 0.77457477391854823
	.quad	0x3f7402053ad7fb80              # double 0.0048847393313725673
	.quad	0x3feca352784b0f79              # double 0.89493678564802714
	.quad	0x3fe7f852a8677600              # double 0.74906285182413512
	.quad	0x3fe2f448acc2ab71              # double 0.59231981031676473
	.quad	0x3fd9175e187c1750              # double 0.392051242743368
	.quad	0x3fdcd1c7fe266f06              # double 0.4503040296492461
	.quad	0x3fe4ca9b0ae6c915              # double 0.64973213319015832
	.quad	0x3fec44decc8e4d99              # double 0.88340702011412298
	.quad	0x3f72d2c170703200              # double 0.0045955234736649864
	.quad	0x3fe773df1aac2de3              # double 0.73289447030532207
	.quad	0x3fb002ebd32643d8              # double 0.062544573831714856
	.quad	0x3fcc0af540324848              # double 0.21908441195097539
	.quad	0x3fe90b2e72359de5              # double 0.78261492067843774
	.quad	0x3fb015c06cb0fc38              # double 0.062831903968786018
	.quad	0x3feac1ae5909a56e              # double 0.83614270582363104
	.quad	0x3fee6f0bbebf5db4              # double 0.95105540519118969
	.quad	0x3fed06a3a4f7e3ea              # double 0.90706045360923082
	.quad	0x3fc949398418d788              # double 0.19754713964510651
	.quad	0x3fee146e98161806              # double 0.93999414162021888
	.quad	0x3fdcf5b2aa299d66              # double 0.45249621026456166
	.quad	0x3fc76552f2777168              # double 0.18277966345966523
	.quad	0x3fd63b1a87c84b2c              # double 0.34735739955901823
	.quad	0x3fe84e1ecde3e867              # double 0.75953617299024934
	.quad	0x3fd5f463d6d7dac2              # double 0.3430413816526362
	.quad	0x3fbe499c7a4a67d0              # double 0.11831071839915741
	.quad	0x3fc932f270cff35c              # double 0.19686728008664545
	.quad	0x3fcfda7abd290734              # double 0.24885496364918824
	.quad	0x3f80c84696e66040              # double 0.0081944956589695694
	.quad	0x3fe16a33d4c03da4              # double 0.54421416809957579
	.quad	0x3fefb7b45a6317f4              # double 0.99117486623504058
	.quad	0x3fda734e0bcba4d2              # double 0.41328765060332018
	.quad	0x3fc71692bcbf2f00              # double 0.18037637916710736
	.quad	0x3f7f85a194963380              # double 0.0076957999930414855
	.quad	0x3fe2b2752c80b530              # double 0.58428438846536856
	.quad	0x3feee8f4258e602e              # double 0.96593673072039166
	.quad	0x3fdffb62067c8b78              # double 0.49971819528052874
	.quad	0x3fc7e7a9458197e0              # double 0.18675723928316668
	.quad	0x3feb021b0116dc29              # double 0.84400701725724503
	.quad	0x3fc05e00e84e49e4              # double 0.12786876051957485
	.quad	0x3fa6d24eab35f140              # double 0.044573267364258928
	.quad	0x3fdc98394a3f7224              # double 0.44679100275769401
	.quad	0x3fee75be824d518c              # double 0.95187306832899443
	.quad	0x3fc4cded57fc0044              # double 0.16253439708816775
	.quad	0x3fa0549332edf380              # double 0.031895256010989748
	.quad	0x3fc8b43d3e8f7a20              # double 0.19300046496114565
	.quad	0x3feb2a0412eb3a0a              # double 0.84887889571274511
	.quad	0x3fe4ace4431e8441              # double 0.64610493764133292
	.quad	0x3fe0095063d83a23              # double 0.50113696576028521
	.quad	0x3fd7099c58392f04              # double 0.35996159186900933
	.quad	0x3fe36971b66a19a6              # double 0.60662160518477459
	.quad	0x3fc5e7a1c7dd4088              # double 0.17113134631154403
	.quad	0x3fe128f161bd403b              # double 0.53624791230868796
	.quad	0x3fe062839f9471cc              # double 0.51202565353337937
	.quad	0x3fec395924d5f4e3              # double 0.88200051493154452
	.quad	0x3fed3e9bbad169ad              # double 0.91389261711019787
	.quad	0x3fd65f222943d334              # double 0.34955648450641097
	.quad	0x3feaab3143ba59df              # double 0.83339751461135936
	.quad	0x3fee6d81ab232d26              # double 0.95086749482417043
	.quad	0x3feb9340d761a22a              # double 0.86172525469470895
	.quad	0x3fce45939cb88330              # double 0.23649830963497598
	.quad	0x3feb4432a3c4b3da              # double 0.85207492815026886
	.quad	0x3fd12d7ca6da9862              # double 0.26840130132985085
	.quad	0x3fe105c188f152b1              # double 0.53195263620962951
	.quad	0x3fe3270f98af0860              # double 0.59851817914046634
	.quad	0x3fbcc5c1c924f448              # double 0.1123925319743232
	.quad	0x3fce1c6f8d859bd8              # double 0.23524279031991457
	.quad	0x3fc0c4b134d7a5f4              # double 0.13100256996339932
	.quad	0x3fc570ab9003ff10              # double 0.16750092060100785
	.quad	0x3fee446b18f59f70              # double 0.94585184931655242
	.quad	0x3fe15316fb9f7ae1              # double 0.54139279503928261
	.quad	0x3fe96b45b3dd09d2              # double 0.79434476022316347
	.quad	0x3fca49d5f08b12f4              # double 0.20537828679348247
	.quad	0x3fa363c0a8c0b420              # double 0.037870426749897712
	.quad	0x3fd3c3d1c0134c9a              # double 0.30882686383592672
	.quad	0x3fe0242264e812ba              # double 0.50441093166644824
	.quad	0x3fd53e52165d8ddc              # double 0.33192875084043094
	.quad	0x3fe54a5e8fd419cf              # double 0.66532829371936397
	.quad	0x3fc2c4317fc7a864              # double 0.14661234606984686
	.quad	0x3fe58ef188aaddc4              # double 0.673699156693083
	.quad	0x3fe1a41e20d22bd6              # double 0.55128389749858786
	.quad	0x3fd26d36edd15a8e              # double 0.2879159281195961
	.quad	0x3fe544bfc81f6785              # double 0.66464222990474353
	.quad	0x3fa552e95668c7e0              # double 0.041648189352045284
	.quad	0x3feabae9eacbea07              # double 0.8353166185254971
	.quad	0x3f8446b7ea3f4bc0              # double 0.0099005096780383494
	.quad	0x3fe6699edbf42749              # double 0.70039313277923398
	.quad	0x3fea8a5c859f8b87              # double 0.8293898210362024
	.quad	0x3fe7474ee3626a03              # double 0.7274546090223456
	.quad	0x3fb8a29fab3d1af8              # double 0.096231440836259341
	.quad	0x3fd1a24fda7794de              # double 0.2755317338436053
	.quad	0x3fe2c9a9c04b3a2a              # double 0.58711707646745492
	.quad	0x3fe0d617a9181a6e              # double 0.52613432909204305
	.quad	0x3fd31c761141833a              # double 0.29861213383815122
	.quad	0x3fa92f4ea0ae2d50              # double 0.049189049829773013
	.quad	0x3fb206622ac484a0              # double 0.070409903947182162
	.quad	0x3fe781a4fddb183f              # double 0.7345757444497919
	.quad	0x3feac22ecbef35e2              # double 0.83620395499172795
	.quad	0x3fe48ed797580f1b              # double 0.6424367862641448
	.quad	0x3fe12a0edcb803da              # double 0.53638403996603334
	.quad	0x3fe7198d11896cb5              # double 0.72186902451667001
	.quad	0x3fe39618a1ede526              # double 0.61207229258358065
	.quad	0x3fe143924850cc25              # double 0.53949846386092715
	.quad	0x3feeda2fabc3e1ca              # double 0.96413405940898511
	.quad	0x3fe4f7a3172166bc              # double 0.65522913472815203
	.quad	0x3fc7b326af202f38              # double 0.18515475798664638
	.quad	0x3fc6c20bb8f4b1a8              # double 0.17779680758520766
	.quad	0x3fe6b9ab4b20c4c3              # double 0.71016468690336187
	.quad	0x3fe366874d8c95af              # double 0.60626568933792224
	.quad	0x3fe56319ea47cf90              # double 0.66834731824791227
	.quad	0x3feb3fa8e147474f              # double 0.8515209579438564
	.quad	0x3fe74964d623dab6              # double 0.7277092153952569
	.quad	0x3fb71544a90bf5b8              # double 0.090168277045413414
	.quad	0x3fa9d722043e8560              # double 0.050469458597272476
	.quad	0x3fe726d0ca217e6e              # double 0.72348823050192634
	.quad	0x3fe507f08509645b              # double 0.65721918090560949
	.quad	0x3fe58551d1c172ee              # double 0.67252436607267696
	.quad	0x3fe32d7ba84e7532              # double 0.59930212852819964
	.quad	0x3fe650bb690451e5              # double 0.69735498915775607
	.quad	0x3fc97e2e608dfde4              # double 0.19916324343283442
	.quad	0x3fa06a082a1c3950              # double 0.032058959141169852
	.quad	0x3fd26067935a4c30              # double 0.28713406934656671
	.quad	0x3fe69bce367c7813              # double 0.70651922838055936
	.quad	0x3fc9f32703e3a85c              # double 0.2027329224577582
	.quad	0x3fd82c3f3de73a4e              # double 0.37770062489736211
	.quad	0x3fa290bd61a36c80              # double 0.036260526818034045
	.quad	0x3fe4ca8290e67d4c              # double 0.6497204618534993
	.quad	0x3fd18e30e12ef828              # double 0.2743036459977497
	.quad	0x3fd2974c8e0cbef2              # double 0.29048456069993656
	.quad	0x3fef74ceed73a407              # double 0.98300882699288727
	.quad	0x3feb546874b23211              # double 0.85405371467783386
	.quad	0x3fe0854d0f755bcc              # double 0.51627209681725494
	.quad	0x3feed371652195c3              # double 0.96331090690790011
	.quad	0x3fefb873e020c7a9              # double 0.99126619124421211
	.quad	0x3fca0e866ae6a264              # double 0.20356826991816768
	.quad	0x3fe6d7e82305f8df              # double 0.71385580864423648
	.quad	0x3febe094a7a7fd64              # double 0.8711646341834407
	.quad	0x3fd8d5bed7966fc0              # double 0.38804598859291772
	.quad	0x3fe36e58be248e5f              # double 0.60722005021348113
	.quad	0x3febbbd9be3d2c72              # double 0.86668097644850506
	.quad	0x3fb50d209a5b8808              # double 0.082231557545611733
	.quad	0x3fca8ef2dc746ab8              # double 0.20748744739906555
	.quad	0x3fafb2806e975590              # double 0.061908734798332365
	.quad	0x3fa6688370b380c0              # double 0.043766124255627314
	.quad	0x3fe173634f6dc41a              # double 0.54533544076378182
	.quad	0x3fe3c4d8cd6d30b6              # double 0.6177791607128913
	.quad	0x3f841de05892b840              # double 0.0098226096182224553
	.quad	0x3fe2e4fb7619e3be              # double 0.59045193735720836
	.quad	0x3fc8e952e28a81cc              # double 0.1946204763562619
	.quad	0x3fe9ef53d7ff22ab              # double 0.81046478449669246
	.quad	0x3fda8a321c5666be              # double 0.4146847988828134
	.quad	0x3fe1c56c08f032d3              # double 0.55534936662442147
	.quad	0x3fe4ff58acb98f18              # double 0.65617021308250667
	.quad	0x3fea1d2ecff72661              # double 0.81606236093757556
	.quad	0x3fbf147f81d99820              # double 0.12140652580419031
	.quad	0x3fad082354164eb0              # double 0.056702713026564822
	.quad	0x3fe8dfcb7c2bbb43              # double 0.77731870891680221
	.quad	0x3fb953f8bcf07908              # double 0.098937555434961522
	.quad	0x3fd00573f777ecfc              # double 0.25033282439080984
	.quad	0x3fe6bdb88de1e74e              # double 0.71065929137623995
	.quad	0x3fd613b9aa24d2dc              # double 0.3449539338646852
	.quad	0x3fcf9d6167cce0cc              # double 0.24699037140249513
	.quad	0x3fe7b38013168f0d              # double 0.74066165664814465
	.quad	0x3fdd53d294184ae4              # double 0.45824112379447812
	.quad	0x3fe2802d9e431df6              # double 0.57814675245839342
	.quad	0x3fdf0333ec720604              # double 0.48457048502322686
	.quad	0x3f98e0eda1be90a0              # double 0.0242955331774658
	.quad	0x3fd1870233e3c258              # double 0.27386527125694249
	.quad	0x3fefdd8d1e64409e              # double 0.99579482971059341
	.quad	0x3fe08357140e1b6f              # double 0.51603273312580977
	.quad	0x3fc21e85769fb1cc              # double 0.14155643741777479
	.quad	0x3fa7407d15ddcce0              # double 0.045413884085883316
	.quad	0x3fd3595ed40ee15e              # double 0.30232973774720573
	.quad	0x3fb3ce93234c5858              # double 0.077370830648164968
	.quad	0x3fb50140610597e8              # double 0.082050346075987712
	.quad	0x3fee1b32875b87e9              # double 0.94081999241848024
	.quad	0x3fe83d379de02f46              # double 0.7574728091726477
	.quad	0x3fe8644ee0d677a1              # double 0.76224464334130826
	.quad	0x3fde962b7d408c5a              # double 0.47791564208654835
	.quad	0x3fa656be7631f7e0              # double 0.043630554130672072
	.quad	0x3fc5422b718053c4              # double 0.16608183900885198
	.quad	0x3fea76957ddad00a              # double 0.82697558003428751
	.quad	0x3fe34308a15ce89c              # double 0.60193282619663391
	.quad	0x3fa6c384cc97e050              # double 0.044460439657939888
	.quad	0x3fe6ab18616b9332              # double 0.70838564898858736
	.quad	0x3fa9f2a72b0ec9b0              # double 0.050679420476984816
	.quad	0x3fd8c11db80920ec              # double 0.38678687069160733
	.quad	0x3fe4b75a3d4fb4ee              # double 0.64738189673303537
	.quad	0x3fe271877ae96c30              # double 0.57635854726993863
	.quad	0x3feab57c03f1aac8              # double 0.83465386171641232
	.quad	0x3fd78312748aad76              # double 0.36737500554109859
	.quad	0x3fcd15847d6b9e20              # double 0.22721916317026203
	.quad	0x3fed1dc9d29e000b              # double 0.90988627563638269
	.quad	0x3fd8c63280803d40              # double 0.38709700154227633
	.quad	0x3fba68470cf8eec0              # double 0.10315364901264967
	.quad	0x3fd1650ebf312d90              # double 0.27179306670287762
	.quad	0x3fe2462695db6d34              # double 0.57106332081767741
	.quad	0x3fe2b0db272daa01              # double 0.5840888753130572
	.quad	0x3fe3e7fc934b1fb1              # double 0.62206867950680167
	.quad	0x3f8a7f5d2150e100              # double 0.012938239649983974
	.quad	0x3fe6e365072269b6              # double 0.7152581347793816
	.quad	0x3fd550aa8c5cef6a              # double 0.33304847438170404
	.quad	0x3fdc8801ab0b7fa8              # double 0.44580117896657123
	.quad	0x3f5fd5fbc7261600              # double 0.0019431074875638776
	.quad	0x3fed66591b40b4b0              # double 0.91874366114429584
	.quad	0x3fb9ad7998d57570              # double 0.10030326825422775
	.quad	0x3fe1f4ae58586248              # double 0.56111829047137807
	.quad	0x3fe99eba8039c7f5              # double 0.80062603992541759
	.quad	0x3fc751af1b2619e4              # double 0.18218029809595671
	.quad	0x3fc5459da2ed8484              # double 0.16618700461825509
	.quad	0x3fd7df72a287114c              # double 0.37301317092739761
	.quad	0x3fd3954ff23c6f78              # double 0.30598829894892488
	.quad	0x3fe24c1c6ece4e19              # double 0.57179090158246304
	.quad	0x3fc34332c3835870              # double 0.15048822924171956
	.quad	0x3fc58507adbbfec4              # double 0.1681222532570158
	.quad	0x3fdf91a9fdfcc7f0              # double 0.49326562694034148
	.quad	0x3fd5a05c125cf42e              # double 0.33791257661124774
	.quad	0x3f8c68d4f6e222c0              # double 0.013871825966149998
	.quad	0x3fc4c4f00bb5ea5c              # double 0.16226006099516865
	.quad	0x3fb211cd32fd7248              # double 0.070584130238281806
	.quad	0x3fa3be7f0d3b1cc0              # double 0.038562746396161085
	.quad	0x3fdffdd66b92c300              # double 0.49986801629260924
	.quad	0x3fef732241aff603              # double 0.98280442075309826
	.quad	0x3fcea1b50071f8c4              # double 0.23930990716684708
	.quad	0x3fcba9329ae79f5c              # double 0.21610100330075965
	.quad	0x3fb8737e5d7ab678              # double 0.095512292692285672
	.quad	0x3fe64b6f01e7fcee              # double 0.6967082059126406
	.quad	0x3fb65281878863d8              # double 0.087196441258483914
	.quad	0x3fea75e7c0d44f8c              # double 0.82689273511867744
	.quad	0x3fe53c474356ae32              # double 0.6636081996161407
	.quad	0x3fd041fc90bb1048              # double 0.25402750142916775
	.quad	0x3fe45e33d25dc3db              # double 0.6364993199077803
	.quad	0x3fe31534f5f8b688              # double 0.59633873025241346
	.quad	0x3fe2de33b7b2cc9b              # double 0.58962427023506636
	.quad	0x3fd73d77cf7ac804              # double 0.36312670957261184
	.quad	0x3fe1861e04327762              # double 0.54762173480751763
	.quad	0x3fce644dfaa13574              # double 0.23743605363635434
	.quad	0x3fe765ba65fc192e              # double 0.73116798323534282
	.quad	0x3fcbb6a02359ab00              # double 0.21651078916632827
	.quad	0x3fcc44501a30fa0c              # double 0.22083474425194571
	.quad	0x3fe3248aa3481983              # double 0.59821063891358539
	.quad	0x3fd1466cca3f5eaa              # double 0.26992339850174096
	.quad	0x3fcf7cba200484f8              # double 0.2459938675247384
	.quad	0x3fd0fa06b3495aae              # double 0.26526038654757655
	.quad	0x3fd4da370bd1b690              # double 0.32581878809183085
	.quad	0x3fd1b7dbe4a3e43a              # double 0.27684686020035409
	.quad	0x3fb7df89102f8dd8              # double 0.093254629565812208
	.quad	0x3fc1dfc7d5c6f390              # double 0.13964174211824032
	.quad	0x3fc5a459486f4fc0              # double 0.16907802616935719
	.quad	0x3fadb9cbdd9b3830              # double 0.058058138658097724
	.quad	0x3fe48b775dda8f3d              # double 0.64202469187555489
	.quad	0x3feccfc9de2288a2              # double 0.90036481271478785
	.quad	0x3fe7c71568de505f              # double 0.74305220110046466
	.quad	0x3fede6bb40d31374              # double 0.93441546116865348
	.quad	0x3fea7bcf4f0619f9              # double 0.82761350092260877
	.quad	0x3fe8f18bdf5e0ed2              # double 0.77948564173171975
	.quad	0x3fdb6aa9d9f1cdec              # double 0.42838522227904607
	.quad	0x3fc4eeb51cc56318              # double 0.16353477387271975
	.quad	0x3fd8ab00d5366bfc              # double 0.3854372102884438
	.quad	0x3fecc5f8ef7a9c5a              # double 0.89916655324203565
	.quad	0x3fc11ed37c71c220              # double 0.13375323845276998
	.quad	0x3fd3cce6d4226b0c              # double 0.30938120571379168
	.quad	0x3fe13b35e413d7c2              # double 0.53847784563435419
	.quad	0x3fee982d473bf650              # double 0.95607627785620686
	.quad	0x3fb68a54e3690a40              # double 0.088048272628875601
	.quad	0x3f9beb4c0906e5a0              # double 0.027264774371109746
	.quad	0x3fc791c1beea13c4              # double 0.18413564512243685
	.quad	0x3fe7f151b8cc87db              # double 0.74820791333717851
	.quad	0x3fc7342de7ef7fbc              # double 0.18127988648393323
	.quad	0x3fd4cc5e4ab023dc              # double 0.32497365278009993
	.quad	0x3fe30df940b54f43              # double 0.59545576704338321
	.quad	0x3fe2c376af23c7f1              # double 0.58636030394541028
	.quad	0x3feb98cd680fe640              # double 0.86240263294821062
	.quad	0x3fd9f8147350fb80              # double 0.40576659451829045
	.quad	0x3fd79c73c1caf22a              # double 0.36892408299516666
	.quad	0x3fe5206c65608f7c              # double 0.66020793724281601
	.quad	0x3fd500225a0093a6              # double 0.32813319005281938
	.quad	0x3fc84006d17541b0              # double 0.18945393779223485
	.quad	0x3fc9f42f11de6600              # double 0.20276440021989117
	.quad	0x3fea1c935e44c41e              # double 0.81598823940123899
	.quad	0x3fdbda8680e2e0da              # double 0.4352127321867677
	.quad	0x3febd87d6cfacb16              # double 0.87017699513521296
	.quad	0x3fd4d4ba390f4606              # double 0.32548385212166442
	.quad	0x3fe58a23c0c8a729              # double 0.67311275151334826
	.quad	0x3fea31cd8fdb2690              # double 0.81857946488271871
	.quad	0x3fd34015e57101dc              # double 0.30078647047414875
	.quad	0x3fe67bd39ea1f51a              # double 0.70261555655420982
	.quad	0x3fe40b6cfb4ef387              # double 0.62639473994896455
	.quad	0x3fe0fdc9f0bc3168              # double 0.53098008173541889
	.quad	0x3fcc7e5cd0f57514              # double 0.22260627940242073
	.quad	0x3fe039f1732b48ed              # double 0.50707314008675797
	.quad	0x3fe0ea3e9272f28e              # double 0.52859428981135337
	.quad	0x3fefee18c9b13ad7              # double 0.99781455414798869
	.quad	0x3f5d7224afac6400              # double 0.0017972334159763736
	.quad	0x3fe89fcd21a36d2b              # double 0.7695069939613054
	.quad	0x3fde5d41bfde4b50              # double 0.4744419454302049
	.quad	0x3fe30d5241e57d1b              # double 0.59537613745115736
	.quad	0x3fe623efd6fbede8              # double 0.69188682545739955
	.quad	0x3fe4ef71dc71d04e              # double 0.65422909789641337
	.quad	0x3fb6cf24340cf420              # double 0.089098227222124127
	.quad	0x3fb4239142f77a50              # double 0.078667715882582145
	.quad	0x3fc1286951e3f804              # double 0.13404575823363996
	.quad	0x3fdc1b8dfd7b796c              # double 0.4391818023122116
	.quad	0x3fe31142908c7b0f              # double 0.5958569358079745
	.quad	0x3fde240004acd948              # double 0.47094726997911041
	.quad	0x3fd5bcb9d8e27492              # double 0.33964391880164968
	.quad	0x3fdeaedb6d2927b0              # double 0.479422432520205
	.quad	0x3fc3c67b68133068              # double 0.15449469167504337
	.quad	0x3fcd0dcdcfafa928              # double 0.22698376313139446
	.quad	0x3fe9ddae1d83db8f              # double 0.80831056370412735
	.quad	0x3fef02fe291e47e3              # double 0.96911533385195658
	.quad	0x3fef506ea1895c8b              # double 0.97856837797270779
	.quad	0x3fd477a5a913e91c              # double 0.31980268012525115
	.quad	0x3fe07eba9660054e              # double 0.51546983118184087
	.quad	0x3fc2f72f778af004              # double 0.14816850029990303
	.quad	0x3fb80736568800c0              # double 0.093860050321384669
	.quad	0x3fd8f3e20ea8e57e              # double 0.38988543922058472
	.quad	0x3fd7abf3e11860b0              # double 0.36987015706973647
	.quad	0x3fe6d92badf619a5              # double 0.71401008583852799
	.quad	0x3fe30f62193ecba6              # double 0.59562783175203005
	.quad	0x3fc95c7eef2fa8cc              # double 0.19813524893772294
	.quad	0x3fe744b16a9a606e              # double 0.72713537999062594
	.quad	0x3fdc0d4397ee3fe6              # double 0.43830957257250558
	.quad	0x3fd00c2789bf669c              # double 0.2507418484870898
	.quad	0x3fec7275dd7047ec              # double 0.88897221803403914
	.quad	0x3fde08ee3c0298e6              # double 0.46929508076062942
	.quad	0x3fd3a4997a62f3c0              # double 0.30692135764894246
	.quad	0x3f79095d7ffce400              # double 0.0061124470083138149
	.quad	0x3fe2beadb7665a94              # double 0.58577619381215351
	.quad	0x3fdb2b8c27191052              # double 0.42453292673258602
	.quad	0x3fd43e3dda4feb2a              # double 0.31629892653988867
	.quad	0x3fd400fad508636e              # double 0.3125598030470006
	.quad	0x3fe35b7defbc5117              # double 0.6049184496246508
	.quad	0x3fe752e96040f3eb              # double 0.72887104796938951
	.quad	0x3fbdc45880b0e398              # double 0.11627724782819227
	.quad	0x3fd87446e09bff48              # double 0.3820969766093083
	.quad	0x3fea86c08374971c              # double 0.82894921946419541
	.quad	0x3f73ef0e5c2f1580              # double 0.0048666535321378879
	.quad	0x3fb231849975e278              # double 0.071068084207476789
	.quad	0x3fed1d3880121c45              # double 0.90981698049370918
	.quad	0x3fe9ed090b1f45cb              # double 0.81018497631355879
	.quad	0x3fe4cb66ff8ea195              # double 0.64982938683992819
	.quad	0x3fba434551e39258              # double 0.10258897065393435
	.quad	0x3fe8fcc3fb08a9f3              # double 0.78085516958281997
	.quad	0x3fe2b2103d4e618b              # double 0.58423625921118238
	.quad	0x3fe7aa38b84f4d88              # double 0.73952899930957106
	.quad	0x3fde998124e09dc4              # double 0.47811916924771602
	.quad	0x3feecece1b297933              # double 0.96274476342276782
	.quad	0x3f66d405d800fe00              # double 0.002786647237399853
	.quad	0x3f9476ea44d570a0              # double 0.019984875155714676
	.quad	0x3fe29ba807b33d38              # double 0.58150102142273052
	.quad	0x3fdd746ce9137a1e              # double 0.46023104440055984
	.quad	0x3fea9010df15a16d              # double 0.83008616992178264
	.quad	0x3fe2fe61c7bad644              # double 0.59355248460514831
	.quad	0x3fe321db398e2edc              # double 0.5978828548554378
	.quad	0x3fbc28870b29e528              # double 0.10999340078878517
	.quad	0x3feb7368e7aa4b5d              # double 0.85783810851203735
	.quad	0x3fd33ee663bfaf5a              # double 0.30071410885897409
	.quad	0x3fde6ca1508b6af6              # double 0.47538025727924038
	.quad	0x3feec87658470521              # double 0.96197049371417986
	.quad	0x3fc388deb5d78bf8              # double 0.15261443976405054
	.quad	0x3feac1e976593845              # double 0.83617089381164844
	.quad	0x3fe78e979e349b32              # double 0.73615628146658296
	.quad	0x3fd79e5b2d648e6e              # double 0.36904029305353603
	.quad	0x3fee0bd03450a6c6              # double 0.93894205301077061
	.quad	0x3fd7e97c4f59e5ba              # double 0.37362582921158671
	.quad	0x3fd006fc72e268e8              # double 0.25042639941388112
	.quad	0x3feb3cc106cd9cc1              # double 0.85116626099343062
	.quad	0x3fdd60a71d2e09c2              # double 0.45902421807855032
	.quad	0x3f9211aa23d59000              # double 0.017645510136745202
	.quad	0x3fbd21bd57af8260              # double 0.1137960757328158
	.quad	0x3feded2dccc4fa99              # double 0.93520250314743969
	.quad	0x3fdfc9475647c546              # double 0.49666007448020755
	.quad	0x3fd4bd255953b8ea              # double 0.32404454921096593
	.quad	0x3febbba922c5d5c8              # double 0.86665779868661108
	.quad	0x3fe29ab78fe2953a              # double 0.58138635733181521
	.quad	0x3fe3143d7e8bba85              # double 0.59622072902659851
	.quad	0x3fe388b53684b780              # double 0.61043797157411461
	.quad	0x3fd55ab203b5d572              # double 0.33366060602505521
	.quad	0x3fc993749b2eebf8              # double 0.19981248452481259
	.quad	0x3fc5e2229eb80cbc              # double 0.17096359968136265
	.quad	0x3fdfbe637bd41542              # double 0.49599539845106133
	.quad	0x3fed313ef8cb773d              # double 0.91226147263271395
	.quad	0x3fe82e44ef57887b              # double 0.7556481051108358
	.quad	0x3fe16aa365ccf202              # double 0.54426736720012081
	.quad	0x3fa7af1bcd6f7be0              # double 0.046257847621511194
	.quad	0x3fd495b3280be46e              # double 0.32163695250307611
	.quad	0x3f9ecb19b06861c0              # double 0.030071641342233724
	.quad	0x3fc97cfb7da37fdc              # double 0.19912665972424193
	.quad	0x3feb31a1a24da461              # double 0.84980851840840554
	.quad	0x3fe641771a5c0a1a              # double 0.69549136303277526
	.quad	0x3fc5d0e6ee805144              # double 0.17043768544739113
	.quad	0x3fdc68b790d98dce              # double 0.4438914217518829
	.quad	0x3fde3abfa5a30ebe              # double 0.47233573127253325
	.quad	0x3fe0fe1cae062d0e              # double 0.53101953496062193
	.quad	0x3fe22a7c54d58917              # double 0.56768623894848502
	.quad	0x3fee3620ca32be74              # double 0.94410743228759352
	.quad	0x3fddf88fc38686cc              # double 0.46829599470411831
	.quad	0x3fe9759985e11abe              # double 0.79560543201736045
	.quad	0x3fed54b542cf8c80              # double 0.91659033822033109
	.quad	0x3fea3783fe8c6eeb              # double 0.81927680698887906
	.quad	0x3fe1491fe9357cbf              # double 0.54017634914989532
	.quad	0x3fb3df0931140c10              # double 0.077622007829674766
	.quad	0x3fd574c05ee40f74              # double 0.33525094286618828
	.quad	0x3fc49133a081a634              # double 0.16068120324352864
	.quad	0x3fde28b41628efb6              # double 0.47123434223226057
	.quad	0x3fe28bf39e1f3b49              # double 0.57958393939211661
	.quad	0x3fe4d8d22cf51478              # double 0.65146740704280059
	.quad	0x3fe61df704e83398              # double 0.69115782698064532
	.quad	0x3fee74a06c55399a              # double 0.95173665198108215
	.quad	0x3fd6da04f8e0ad3c              # double 0.35705684952218397
	.quad	0x3fc52d5872c39a34              # double 0.16544633487429083
	.quad	0x3fcb310567c21b38              # double 0.21243350569076269
	.quad	0x3fe6b36fe4ff8898              # double 0.70940394140440599
	.quad	0x3fb1386578a38ee0              # double 0.067266790345054783
	.quad	0x3fd33d93b42da630              # double 0.30063335986651207
	.quad	0x3fe8554939807f77              # double 0.76041089278076768
	.quad	0x3fe59e3c6b5f3bc6              # double 0.67556591960043799
	.quad	0x3fec361f936e5b9f              # double 0.8816068534387006
	.quad	0x3fd66f38a728f348              # double 0.35053840946402604
	.quad	0x3fe5dc601c65632d              # double 0.68315129800894214
	.quad	0x3fd01ab9a4511416              # double 0.25163117453149775
	.quad	0x3fec2363d7e23017              # double 0.87932006993060241
	.quad	0x3fe849d8ac3734d0              # double 0.75901445041531623
	.quad	0x3fdffda2769e6b78              # double 0.49985562881345613
	.quad	0x3fee029356e1f4a2              # double 0.93781439751878204
	.quad	0x3fe6ebcccf6c40f5              # double 0.71628418457296894
	.quad	0x3fb9be39a12e68e8              # double 0.10055885491457028
	.quad	0x3fda370c841c72c8              # double 0.40960991765477361
	.quad	0x3fe3216d806664c4              # double 0.59783053472633485
	.quad	0x3fdc47c8c388d12c              # double 0.44188136191520999
	.quad	0x3fb75b1526b3ff40              # double 0.091233560513498624
	.quad	0x3fd1615471ee2e9a              # double 0.27156554342284667
	.quad	0x3fe912fdeb1e886c              # double 0.78356834336979153
	.quad	0x3fc6bf09cc1f47cc              # double 0.17770502535728239
	.quad	0x3fe977b0b00cc1d4              # double 0.79586061844571043
	.quad	0x3faf277c37aba3e0              # double 0.060848123355590422
	.quad	0x3fe07d4ff7c0f402              # double 0.51529692067526889
	.quad	0x3fe8daff48391b37              # double 0.77673305612629562
	.quad	0x3fc8daabc6089d30              # double 0.19417330903636687
	.quad	0x3fd23f57bb0b19c8              # double 0.28511613145783743
	.quad	0x3fc3180b97bf65c0              # double 0.1491713038401894
	.quad	0x3fe34d2f61aaca73              # double 0.60317200732818177
	.quad	0x3fce714f308b2cf4              # double 0.23783292646690024
	.quad	0x3fe7bd5a83fc58b1              # double 0.74186445024931491
	.quad	0x3feeae5606e3c4cd              # double 0.95878125520371215
	.quad	0x3fda9173ae8709f6              # double 0.41512767833424336
	.quad	0x3fc5dab5e11c1ff8              # double 0.17073701373760719
	.quad	0x3fb2bdd57d1e6520              # double 0.073209136053624224
	.quad	0x3f793dfc9fd99500              # double 0.0061626308575786215
	.quad	0x3fe46f88552b21b8              # double 0.63861481317967783
	.quad	0x3fc1fbd9c2bde49c              # double 0.14049837120891062
	.quad	0x3fe92cfda52abb45              # double 0.78674204119838775
	.quad	0x3fe800b188d7a28e              # double 0.75008465506569322
	.quad	0x3fc9818fadc90514              # double 0.19926639543158642
	.quad	0x3fe54ee1de19d77e              # double 0.66587918643084243
	.quad	0x3fe6f6263047abdf              # double 0.71754750661545674
	.quad	0x3feb316657ca126f              # double 0.84978024622303205
	.quad	0x3fe055180b84b440              # double 0.51038744210894293
	.quad	0x3fb0d901e6785ff8              # double 0.065811270491735629
	.quad	0x3fe26c54a8678ed6              # double 0.57572396174915741
	.quad	0x3fe839cd08e2df68              # double 0.75705577598180884
	.quad	0x3fd4418d0965820a              # double 0.31650091092709032
	.quad	0x3fe4f7596173e812              # double 0.65519398721449051
	.quad	0x3fd24932509569d8              # double 0.28571756238457402
	.quad	0x3febeea67bdf1ddf              # double 0.87288212007200261
	.quad	0x3fb44a22ca5626c8              # double 0.079256224058691704
	.quad	0x3fd13fcc09c556a8              # double 0.26951886133370317
	.quad	0x3fb6d6031fda95a0              # double 0.089203067089860699
	.quad	0x3f8094196a1d0080              # double 0.0080949769504743418
	.quad	0x3fd0f440940da77a              # double 0.26490797479947725
	.quad	0x3fdf2493a9849192              # double 0.48660747103192492
	.quad	0x3fdd21d3fb3df306              # double 0.45518970046377694
	.quad	0x3fceece790ce4d94              # double 0.24160475321387465
	.quad	0x3feb5af27bdb99f3              # double 0.85485195342044873
	.quad	0x3fef49cf0287725d              # double 0.97775984281504302
	.quad	0x3fe677c5c07f97b3              # double 0.70212066266389284
	.quad	0x3fe7cac4a27fdd28              # double 0.74350196588685424
	.quad	0x3feccdb1adb4c9c1              # double 0.90010913779251933
	.quad	0x3fea69b6d658b278              # double 0.82540456642671156
	.quad	0x3fc656a8816f7eb0              # double 0.17451959915250859
	.quad	0x3fe880458e8dde07              # double 0.76565816729174763
	.quad	0x3fd4716be5d64cb2              # double 0.31942269749670082
	.quad	0x3fde73605658166e              # double 0.47579201156654605
	.quad	0x3fe3970addde520e              # double 0.61218779882125474
	.quad	0x3fe614fa8ef8dcde              # double 0.69006088184587688
	.quad	0x3fc76e5bd31b2598              # double 0.18305537994301058
	.quad	0x3fef0293e8e09ec9              # double 0.96906466945525793
	.quad	0x3fc4dfeb2643e034              # double 0.1630834519235137
	.quad	0x3fe45383e456e7b5              # double 0.6351947269206365
	.quad	0x3fe2d8441c22d2bb              # double 0.58889966483419387
	.quad	0x3fdc37183cd15f24              # double 0.44086271228069251
	.quad	0x3fe00539f2ef2f87              # double 0.50063798378094837
	.quad	0x3fe53ddbc0d5ef08              # double 0.66380107558458779
	.quad	0x3fea373809b12100              # double 0.81924058812094813
	.quad	0x3fc9d06cd0c9d598              # double 0.20167312807795379
	.quad	0x3fbcdca87d9d8b98              # double 0.11274197642118933
	.quad	0x3fcc26692dd17e14              # double 0.21992220627997539
	.quad	0x3feee2c4ea5f33c8              # double 0.96518178725966041
	.quad	0x3fe5298145e72a84              # double 0.66131652501037808
	.quad	0x3fe2bd8397ad72fb              # double 0.58563403725165075
	.quad	0x3fe250018003d794              # double 0.57226634028369228
	.quad	0x3fea9a67fc35428e              # double 0.83134841212638988
	.quad	0x3fe3ac379f7e62d5              # double 0.61477261687385953
	.quad	0x3feac2e2d750c63c              # double 0.83628980687917175
	.quad	0x3fe5971fe2d9f17f              # double 0.67469782168295456
	.quad	0x3fec15d3849c4a72              # double 0.87766433620920581
	.quad	0x3feee40c6d2fa159              # double 0.96533795667077548
	.quad	0x3fda03fe01b5eb80              # double 0.40649366538098519
	.quad	0x3fc3c4e64bc54540              # double 0.15444639873252619
	.quad	0x3fef224f1b4efae8              # double 0.97293811162657295
	.quad	0x3feff0a56a593bd1              # double 0.99812575122074964
	.quad	0x3f9cac1e45342080              # double 0.028000328992704215
	.quad	0x3fea6df6e844f3ea              # double 0.82592339863879016
	.quad	0x3fee034096db4c9e              # double 0.93789700950800969
	.quad	0x3fe5ceed3709e6c5              # double 0.68150959729901983
	.quad	0x3fe3e5c62212841b              # double 0.62179857878448119
	.quad	0x3fe8d59ebf88a916              # double 0.77607667359305554
	.quad	0x3fe682e9dedbf1f0              # double 0.70348065879039545
	.quad	0x3fc5586b960fe4bc              # double 0.16676087214708513
	.quad	0x3fc032717c66f4d4              # double 0.12653940748524539
	.quad	0x3fdbb0a8a6472f64              # double 0.43265739667980641
	.quad	0x3fef1350b41b02f6              # double 0.97110781838281812
	.quad	0x3fe1012ef4ac5042              # double 0.53139446056093953
	.quad	0x3fc14054ed915664              # double 0.13477574920641466
	.quad	0x3fc569ff49107610              # double 0.16729727809517714
	.quad	0x3fda2ea1db3ccff4              # double 0.40909620675961311
	.quad	0x3fd24fc080e20464              # double 0.28611767374247266
	.quad	0x3fdf2f6b9ff7013c              # double 0.48726931211060154
	.quad	0x3fe040d23ff309fc              # double 0.50791275491820853
	.quad	0x3fd394b4ddcba4fe              # double 0.30595132503238165
	.quad	0x3fe164950cfddbf2              # double 0.54352810418538255
	.quad	0x3fa77dd0e4916cc0              # double 0.045881774808287812
	.quad	0x3fe0488948fe79ef              # double 0.50885452515268337
	.quad	0x3fe861d91ce53cf8              # double 0.76194434779782139
	.quad	0x3fd1ac7ac08e5ff8              # double 0.27615231327354151
	.quad	0x3fd6c34bcda3342e              # double 0.35566992837704248
	.quad	0x3fd2512809b1d082              # double 0.28620339342820256
	.quad	0x3feee10f99bb177f              # double 0.96497325921585275
	.quad	0x3fdd5a87cc01fe96              # double 0.4586505405677398
	.quad	0x3fd4cdb74e8ef9de              # double 0.32505591079453022
	.quad	0x3fe24e183dbd80df              # double 0.5720330434669697
	.quad	0x3fdfc5e20ca05ce4              # double 0.49645282013939451
	.quad	0x3fa5058a3392a350              # double 0.04105789069701038
	.quad	0x3fe152aa97e23c1b              # double 0.54134111084738679
	.quad	0x3fe727254f440995              # double 0.72352853280635776
	.quad	0x3fe81c3b30eafbcd              # double 0.75344619325903184
	.quad	0x3fd86befb3d85bea              # double 0.38158791125300573
	.quad	0x3fe1728a24338b0c              # double 0.54523188658308319
	.quad	0x3fe3d4b28e9049dd              # double 0.61971404880960856
	.quad	0x3fe45ab7484e60a3              # double 0.63607372400567319
	.quad	0x3fe359c05ee96623              # double 0.60470598733372005
	.quad	0x3f568256a0a51600              # double 0.0013738485309472415
	.quad	0x3fb0bd0cfb2e2df0              # double 0.065384684871041321
	.quad	0x3fda6da9415a6f42              # double 0.41294318563608468
	.quad	0x3fe5f914ffae186b              # double 0.68665552079688774
	.quad	0x3feaecff29bf4320              # double 0.84143026498540862
	.quad	0x3fea36b328ea1caf              # double 0.81917722693551365
	.quad	0x3fd5d5357f9e769c              # double 0.34113824332039555
	.quad	0x3fd343662f4e3d32              # double 0.30098871822061135
	.quad	0x3fc14012e5035c2c              # double 0.1347678774097586
	.quad	0x3fa313a71a435fd0              # double 0.037259313541369132
	.quad	0x3febee5aab5c82b6              # double 0.87284596890466193
	.quad	0x3fec90a7a68da042              # double 0.89265806703497952
	.quad	0x3fda27efb07dd76c              # double 0.40868751750473709
	.quad	0x3fa4b5eacd1dbc70              # double 0.040450418032258351
	.quad	0x3f8b29a21c80ed00              # double 0.013263002867566431
	.quad	0x3fdd2349d86b6374              # double 0.45527883658137758
	.quad	0x3fa5497bffb567c0              # double 0.04157626625483557
	.quad	0x3fd64a0d6600f540              # double 0.34826979600241614
	.quad	0x3fe0582abf42541a              # double 0.51076257090847155
	.quad	0x3fe99b371d42047a              # double 0.80019717897825093
	.quad	0x3fcf43b935f58064              # double 0.2442542565795548
	.quad	0x3fbd0e8c9a0dfa50              # double 0.1135032535657754
	.quad	0x3feb22dc0c8491ae              # double 0.84800531811611335
	.quad	0x3fdd675d86f284f2              # double 0.45943391970111158
	.quad	0x3f7bea07668f1e80              # double 0.0068149842345018863
	.quad	0x3fe7bef442d693ac              # double 0.74205983213743343
	.quad	0x3fe35a19f52d5529              # double 0.60474870573185513
	.quad	0x3fdc5e61cda7c734              # double 0.44326062282117396
	.quad	0x3fedaddaffdb388d              # double 0.92747259113254332
	.quad	0x3fe17c7de0b2642c              # double 0.54644674192525633
	.quad	0x3fd8d975fb688de6              # double 0.38827275802233741
	.quad	0x3fe0a3f89a818434              # double 0.52001600434244333
	.quad	0x3fe10b228a21c17e              # double 0.53260924319151548
	.quad	0x3fe147d117d5bdcc              # double 0.54001669554957621
	.quad	0x3fc32476491963c4              # double 0.14955023354812458
	.quad	0x3feaeaec69f69733              # double 0.84117718406625952
	.quad	0x3feaa3ebd3bab336              # double 0.83250991204622582
	.quad	0x3fbc9b5a860dc270              # double 0.11174550793453775
	.quad	0x3fe9caac59489964              # double 0.80599038541985779
	.quad	0x3fbbc45b9f6d1f58              # double 0.10846493379824318
	.quad	0x3fef0349e371c6fb              # double 0.96915144369833627
	.quad	0x3fe4aaa4f6d1f3c6              # double 0.64583061415725562
	.quad	0x3fe55acab5bdfbe3              # double 0.66733298775204408
	.quad	0x3fee6eec5a50098a              # double 0.95104043616474709
	.quad	0x3fba21c6dd9e6c40              # double 0.10207789335838502
	.quad	0x3feb6af98b89a714              # double 0.85680844548662316
	.quad	0x3fe8eb5c239feb1a              # double 0.77873045881219416
	.quad	0x3fbf52c4555eb7a0              # double 0.12235667309025056
	.quad	0x3fe1a180c7c2c55c              # double 0.55096472755227976
	.quad	0x3fc5b01dbb31489c              # double 0.1694371379877041
	.quad	0x3fb37bbe11021168              # double 0.076106909897196595
	.quad	0x3fd3faaf309b01e8              # double 0.31217555758124016
	.quad	0x3fcf0ef03a3f1b50              # double 0.24264338344638725
	.quad	0x3fdcf797deca3866              # double 0.45261189228847909
	.quad	0x3fe5b0b0a4bec638              # double 0.67781860520171389
	.quad	0x3fc49cd1bbdbe510              # double 0.16103574440766311
	.quad	0x3fe733e53c78425b              # double 0.72508489428043832
	.quad	0x3fe4c896bb294f58              # double 0.64948593668894272
	.quad	0x3fd9e99732dcb9f2              # double 0.40488223998082085
	.quad	0x3fcf472a88821168              # double 0.24435931840356351
	.quad	0x3fe4f488101372d1              # double 0.65485003604734449
	.quad	0x3fdce7b26a6bcb38              # double 0.45164165871317463
	.quad	0x3fc2399b2c524094              # double 0.142383000031718
	.quad	0x3feb8265cd5d1f33              # double 0.8596676836977849
	.quad	0x3fe94044259a5739              # double 0.78909499496760482
	.quad	0x3fc7a15b1969aff8              # double 0.18461168995725052
	.quad	0x3fe848cc1d08475b              # double 0.75888639135721847
	.quad	0x3fc3207ae990a09c              # double 0.14942871479548081
	.quad	0x3fe8193feb02652b              # double 0.75308223629250415
	.quad	0x3fae10c7e51b6850              # double 0.058721777646227324
	.quad	0x3fb298187075bbb8              # double 0.07263329263308449
	.quad	0x3fc09f03f9d60158              # double 0.12985276888867747
	.quad	0x3fe821b2c30f4468              # double 0.75411356065354784
	.quad	0x3fe13e3e808dc105              # double 0.53884816272878366
	.quad	0x3fd10b8d3d217e98              # double 0.26633006067093268
	.quad	0x3fcb2955270a62d4              # double 0.21219887167241913
	.quad	0x3fc9444f292caa24              # double 0.19739713201973175
	.quad	0x3fcb07215a9a1454              # double 0.21115509914321484
	.quad	0x3febc79bfdd3ba1e              # double 0.86811637473676107
	.quad	0x3fc66b67224f5be4              # double 0.17515267539303558
	.quad	0x3fc35960b47aa4ec              # double 0.15116509258704214
	.quad	0x3fef3fce014cf99e              # double 0.97653866056480232
	.quad	0x3fee38e6183e9740              # double 0.94444565520527845
	.quad	0x3feb4432e3c0f2e4              # double 0.85207504733224626
	.quad	0x3fcbd7b109f12494              # double 0.21751988397071342
	.quad	0x3fb71165b2e235e0              # double 0.09010921113277659
	.quad	0x3fea1d2203796f06              # double 0.8160562579973607
	.quad	0x3fad0191aedcc1a0              # double 0.056652596087931828
	.quad	0x3fb935050782b2e0              # double 0.098465265592220685
	.quad	0x3fd27cde3e4b73be              # double 0.28887134631605338
	.quad	0x3fdc95b7f4c568c4              # double 0.44663809684210443
	.quad	0x3fdc6cb29bd54b76              # double 0.44413438051304099
	.quad	0x3fd46f6ec408e50e              # double 0.31930131095903469
	.quad	0x3fe15d8c52e1bacc              # double 0.54266945064395022
	.quad	0x3fbfbb83a31ab290              # double 0.12395498973882924
	.quad	0x3fe8d67d67e049ae              # double 0.77618284500413437
	.quad	0x3fd1fb706fa3a238              # double 0.28097163107171097
	.quad	0x3fea9df57848d3f1              # double 0.83178208821357036
	.quad	0x3f9aea23e6664160              # double 0.026283799111810224
	.quad	0x3fdf7c24ea9846e2              # double 0.4919521609273102
	.quad	0x3fc61001dffc9ae8              # double 0.17236350476124263
	.quad	0x3fe2d932377cf37b              # double 0.58901320302503224
	.quad	0x3fd07ffcd7626626              # double 0.25781174691801068
	.quad	0x3fe2b76277b75ffa              # double 0.58488582021800473
	.quad	0x3fe4d375f531c084              # double 0.65081308259506487
	.quad	0x3fdb317483330b38              # double 0.4248935014003794
	.quad	0x3fcd4fb042b90784              # double 0.22899440057704734
	.quad	0x3fdd6edbdfae8baa              # double 0.45989128917625044
	.quad	0x3fca3a88328b5f54              # double 0.20491125553121015
	.quad	0x3fe6fc137b4ce591              # double 0.71827100832085666
	.quad	0x3fc645f2f1bc1860              # double 0.17400967410520973
	.quad	0x3fd73cae59fca4ac              # double 0.3630786780145836
	.quad	0x3f7f8edee7b1f100              # double 0.0077046115139831617
	.quad	0x3fe53ad09f9848aa              # double 0.66342955752249577
	.quad	0x3fea89c0056e1568              # double 0.82931519566106449
	.quad	0x3fa8a310d8f3d2c0              # double 0.048119093402339441
	.quad	0x3fe8680503c7d233              # double 0.76269770372761625
	.quad	0x3fe63f44612003fd              # double 0.69522303552378129
	.quad	0x3fab35127bad7c00              # double 0.053139283749935373
	.quad	0x3feeaeb6c1896bfa              # double 0.95882737922818184
	.quad	0x3fec76cde30c3b61              # double 0.88950247140187966
	.quad	0x3fe48332dd5b9836              # double 0.64101546510642637
	.quad	0x3fa1cc57027b89e0              # double 0.034762114575432213
	.quad	0x3fe0daeaf6c964b2              # double 0.52672336769605566
	.quad	0x3fe8c6af59c30038              # double 0.77425353557192178
	.quad	0x3fd8e943f88e2fac              # double 0.38923739693631876
	.quad	0x3fe1e3b7332780ec              # double 0.55904731741978031
	.quad	0x3fed0ce81d9a0f62              # double 0.90782552510834713
	.quad	0x3fdfce0560cd2b0a              # double 0.49694952443375995
	.quad	0x3fec12cd0bc6262d              # double 0.87729503917325291
	.quad	0x3fcb16d3d643e080              # double 0.21163413965382816
	.quad	0x3fe5b607e6a8fb6d              # double 0.67847056437299857
	.quad	0x3fdf399f6b99aa9e              # double 0.48789201267087801
	.quad	0x3fb78d098df70610              # double 0.091995808753402963
	.quad	0x3fee4f4d44a13875              # double 0.94718039898158557
	.quad	0x3fe4a02e7d1a2a97              # double 0.64455341753030637
	.quad	0x3fd6665a69f7c572              # double 0.34999714229987611
	.quad	0x3fed0cd6f7f4f953              # double 0.90781734875762721
	.quad	0x3fcd6dd693e7e584              # double 0.22991449567761546
	.quad	0x3fe45d27e4c1365c              # double 0.63637156180056875
	.quad	0x3fdf59a3b4a18a18              # double 0.489846159360384
	.quad	0x3fbf758bc86dd0c0              # double 0.12288736003194156
	.quad	0x3fdb0a9901320ab4              # double 0.42252183071847615
	.quad	0x3fd5006e4c2f4976              # double 0.32815129699624579
	.quad	0x3fece7c326cd4d2f              # double 0.90329129770763028
	.quad	0x3fe73cfd5a7d3a06              # double 0.72619502710023265
	.quad	0x3fea68f7d9adce5d              # double 0.82531349673667942
	.quad	0x3fd3b4a379e05810              # double 0.30790030385958378
	.quad	0x3fef5d28fe8835bf              # double 0.98012208665175382
	.quad	0x3fe09f92270ade11              # double 0.51947887063482956
	.quad	0x3fd1723ad5d196c8              # double 0.27259703522427658
	.quad	0x3fd04ce948f7965a              # double 0.25469429135987343
	.quad	0x3fe678bae312ff00              # double 0.70223755217008943
	.quad	0x3fe9509ce051970d              # double 0.7910904294228388
	.quad	0x3fe898759b22c84c              # double 0.76861076641058323
	.quad	0x3fd0fc4514d8e764              # double 0.26539732967250118
	.quad	0x3fd7867cf851bba6              # double 0.36758350610665003
	.quad	0x3fe364ecc7efd2c3              # double 0.60606993723066471
	.quad	0x3fdf511ea02c1e7e              # double 0.48932614938573937
	.quad	0x3fee4f6ad653fa02              # double 0.9471944986433416
	.quad	0x3fe1c3bcae899752              # double 0.55514368142460513
	.quad	0x3fce1dfb92c45fcc              # double 0.23528999964105279
	.quad	0x3fe922711a5052ef              # double 0.78545432223708456
	.quad	0x3fefa24242eca70d              # double 0.98855698653389512
	.quad	0x3fdef076e9408fd2              # double 0.48342678812536832
	.quad	0x3fe586893ba5da96              # double 0.67267285966848323
	.quad	0x3fd9865a231bb8be              # double 0.39882520130676002
	.quad	0x3fe8cf60fe9509b5              # double 0.77531480525094898
	.quad	0x3f819121ed9c6800              # double 0.0085775995863066612
	.quad	0x3fcf9fe22a63740c              # double 0.24706675595999206
	.quad	0x3fe12bedd56500f8              # double 0.53661243132231018
	.quad	0x3fecfe78a109288f              # double 0.90606337978648976
	.quad	0x3f82d15e43540640              # double 0.0091884006783430338
	.quad	0x3fee8e48a250b0c3              # double 0.95486861898600528
	.quad	0x3fe0f98a77a05a61              # double 0.53046153416182673
	.quad	0x3fe023b070ceb1dd              # double 0.50435659439750291
	.quad	0x3fec46a9c2e66cee              # double 0.8836258703844615
	.quad	0x3fe60015eedf3d05              # double 0.68751045851414061
	.quad	0x3fd08806d41c47d8              # double 0.2583024093047448
	.quad	0x3fdfe07e7cc9fa1c              # double 0.49807703195975406
	.quad	0x3fe51978ca99d9fe              # double 0.65935935564522175
	.quad	0x3fe336e8bb6caa18              # double 0.60045277220098381
	.quad	0x3fe9dc24107fa982              # double 0.80812266561888202
	.quad	0x3fe43b49cd097268              # double 0.63223733946103966
	.quad	0x3fda2ef889fdbd52              # double 0.40911687350940895
	.quad	0x3fe774a9db4b483f              # double 0.73299115019677419
	.quad	0x3fd9f869ba60fadc              # double 0.40578692627961543
	.quad	0x3fef59489d462374              # double 0.97964888303350372
	.quad	0x3fe8c8d06a88447a              # double 0.77451344306076852
	.quad	0x3fc2d2870d052bc8              # double 0.14704979072334212
	.quad	0x3fd88dc08180bfba              # double 0.38365185400743551
	.quad	0x3fe0935c26eb39bb              # double 0.5179882774480612
	.quad	0x3fe56f4b5fd8e9ac              # double 0.66983574600390261
	.quad	0x3fedc32a94f69b6a              # double 0.93007401556392932
	.quad	0x3fe99416521e2870              # double 0.79932704962381074
	.quad	0x3fe672e7820b562d              # double 0.70152640723489912
	.quad	0x3fc4045298fc50cc              # double 0.15638191671371826
	.quad	0x3fb0183f42130458              # double 0.062869981414239162
	.quad	0x3fe5e9197e61999a              # double 0.68470453914487739
	.quad	0x3fdb7f395a891b92              # double 0.4296401390205854
	.quad	0x3fd9bd3cdf91292c              # double 0.40217515785902225
	.quad	0x3fc077e2558f10b4              # double 0.12865857293775707
	.quad	0x3fd0aa7786adc4b8              # double 0.26040447380280396
	.quad	0x3fdd2513dd9c99d0              # double 0.45538803712625242
	.quad	0x3fe5c0949325a82d              # double 0.67975834598224127
	.quad	0x3fe4ca2fed8eedc7              # double 0.64968105695827993
	.quad	0x3fc1038ace663848              # double 0.13292059972849501
	.quad	0x3fdfc5f79219b6ec              # double 0.49645795123693293
	.quad	0x3fd8ace7b51dc3a8              # double 0.38555329024444029
	.quad	0x3fe1ebb779b7384c              # double 0.56002401135061453
	.quad	0x3fe12ccd5f2cc376              # double 0.53671902264441829
	.quad	0x3fecc2512527dca0              # double 0.89872033364271786
	.quad	0x3f53a176de02a200              # double 0.0011981640637178659
	.quad	0x3fe9bed6991d0741              # double 0.80454568772277224
	.quad	0x3fe7ebcd04abb383              # double 0.74753428375480302
	.quad	0x3fe22e06d959d501              # double 0.56811850024556076
	.quad	0x3fd9bfc2c706d4c6              # double 0.40232915340613962
	.quad	0x3fe186e2aa7850e0              # double 0.54771550459784279
	.quad	0x3f5d9b93a2b69a00              # double 0.0018071119073767017
	.quad	0x3fdbf9a20b7be52c              # double 0.4371113884113409
	.quad	0x3fe74661adb526e1              # double 0.72734149863500985
	.quad	0x3fe0778fd968fc09              # double 0.51459495985898329
	.quad	0x3fec9cdb409ea34f              # double 0.89414751645117885
	.quad	0x3fec87fe38e4ffa5              # double 0.89160071479999614
	.quad	0x3fdb2b5b06c6be78              # double 0.42452121412041022
	.quad	0x3fde1af751590c00              # double 0.47039587921261727
	.quad	0x3fe13d887427eeb2              # double 0.53876135527339941
	.quad	0x3fe1fc0607817b5f              # double 0.56201459375357021
	.quad	0x3fd97d8d783ad398              # double 0.39828812352362197
	.quad	0x3fe58225a26c6db9              # double 0.67213708613728962
	.quad	0x3fe00833594f161e              # double 0.5010010475459159
	.quad	0x3fe54a82b607af8c              # double 0.66534553101290461
	.quad	0x3fd8ab629cf1fc44              # double 0.3854605229061614
	.quad	0x3fc62f4a487e229c              # double 0.17331818141635302
	.quad	0x3fdb4c97a3b0e288              # double 0.42654982552952747
	.quad	0x3f96b7cf980de640              # double 0.022185557990701321
	.quad	0x3fea158b898f467b              # double 0.81513001315234079
	.quad	0x3fa629c0f2f45ad0              # double 0.043287305505307239
	.quad	0x3fceed20c133aeb8              # double 0.24161157067952899
	.quad	0x3fbf4636c6795c58              # double 0.12216513009603724
	.quad	0x3fec11c66e87e081              # double 0.8771698149494257
	.quad	0x3fdc062c64729aea              # double 0.43787679490416898
	.quad	0x3fe070f1eb4e644a              # double 0.5137872310471121
	.quad	0x3fc5d5511668f2f8              # double 0.17057241052852823
	.quad	0x3fc6864addaca1f8              # double 0.17597328018133829
	.quad	0x3fd24c2eb26126dc              # double 0.28589980525849312
	.quad	0x3fe00ba292d5a350              # double 0.50142029455774129
	.quad	0x3fdc57757246639a              # double 0.44283805999435233
	.quad	0x3fe560bf8939885e              # double 0.66806008149820761
	.quad	0x3fea472b22b0908a              # double 0.8211875607999144
	.quad	0x3fea06c0f3e2e5b2              # double 0.81332442888304102
	.quad	0x3fd6d7187a8c210c              # double 0.3568783947707892
	.quad	0x3fe80cb999d2fd27              # double 0.75155334514412153
	.quad	0x3fd0818e27aa2552              # double 0.25790742753504958
	.quad	0x3fefb8380cef66f3              # double 0.99123766447448102
	.quad	0x3fe880657648a962              # double 0.76567338087378922
	.quad	0x3fd917831438cfbe              # double 0.3920600602607428
	.quad	0x3fe0228708c703d1              # double 0.50421477999054265
	.quad	0x3fde4fa4ebcac79c              # double 0.47361109758923603
	.quad	0x3fd4832c1c0a88b2              # double 0.3205061220015849
	.quad	0x3fee2c45d567a6d7              # double 0.94290439301149831
	.quad	0x3fc5e9360d863dbc              # double 0.17117953930254071
	.quad	0x3fb93ed045a16768              # double 0.098614708900098713
	.quad	0x3fe74e5b4c083c9e              # double 0.72831501817735833
	.quad	0x3fe4badae2fe6430              # double 0.64780945143423274
	.quad	0x3f9b37345a5c3a60              # double 0.026577775969651163
	.quad	0x3fe80324d22ac011              # double 0.75038376854172573
	.quad	0x3fd78cc8e69fbd48              # double 0.36796782037614095
	.quad	0x3fef70d835a53693              # double 0.98252497174844888
	.quad	0x3feabc4ec68097a9              # double 0.83548678178771241
	.quad	0x3f7b1f0f1a0e2200              # double 0.006621417037316224
	.quad	0x3fd217a27074f006              # double 0.28269253713710929
	.quad	0x3fe73b76b6f84383              # double 0.72600875602994142
	.quad	0x3fe4bc265359b4ca              # double 0.64796749381425767
	.quad	0x3fb20d84bd59a9c8              # double 0.070518776157462715
	.quad	0x3fe40cad657892d8              # double 0.62654752558281768
	.quad	0x3fe35470ce19c1eb              # double 0.60405769590402991
	.quad	0x3fdd2eaa9fefe73c              # double 0.4559732972989996
	.quad	0x3fe7b8adfd9eb611              # double 0.74129390273236784
	.quad	0x3fe32dc3be6ffb3d              # double 0.59933650202569988
	.quad	0x3fe5c60e413ad4d1              # double 0.68042671909520369
	.quad	0x3fc5f22eb04a01dc              # double 0.17145331962457433
	.quad	0x3fe16b9af7822784              # double 0.54438541738021273
	.quad	0x3f98a68681dada40              # double 0.02407274406024329
	.quad	0x3fd826a4301786f4              # double 0.37735848137354755
	.quad	0x3fee239f0762e09a              # double 0.94184829180359775
	.quad	0x3fe0f4b3399eac35              # double 0.52987061742658759
	.quad	0x3fd0207d532bc890              # double 0.25198300478144464
	.quad	0x3fef3cec238bea7d              # double 0.97618681852993882
	.quad	0x3feeb0f6c1946f0a              # double 0.95910203751142942
	.quad	0x3fe9ae22da8e071f              # double 0.80250685392840981
	.quad	0x3fee8b558f30d1b0              # double 0.95450857130940925
	.quad	0x3fdabfdbcb4ca6e2              # double 0.41796011784991383
	.quad	0x3fd7181030b73de4              # double 0.36084370381737885
	.quad	0x3fedc9991c34ad04              # double 0.93085914143503645
	.quad	0x3fee260494ab6c25              # double 0.9421408561423773
	.quad	0x3fe863e2e5bb1fa7              # double 0.76219315404249677
	.quad	0x3fbc3c0eeb740f68              # double 0.11029141662953423
	.quad	0x3fe89e097d8c1ad6              # double 0.76929163475946427
	.quad	0x3fda26cf36c99b20              # double 0.40861873960823125
	.quad	0x3f956a194aed2ae0              # double 0.020912547300478646
	.quad	0x3fe7efffa4143482              # double 0.74804670378365778
	.quad	0x3fd531a7d1fdfe94              # double 0.33115573412940447
	.quad	0x3fa0f6636fc822f0              # double 0.033129794497716136
	.quad	0x3fe4c510c48e02db              # double 0.64905584706874764
	.quad	0x3feb8a1c5cd44703              # double 0.86060922747330471
	.quad	0x3fddc86e4bec0af6              # double 0.46535832800161303
	.quad	0x3fed3a42f14e6031              # double 0.91336199884518099
	.quad	0x3fe02b4b9adc1914              # double 0.50528507467314165
	.quad	0x3fe6fa0caa2ed220              # double 0.71802361716123997
	.quad	0x3fae2c3f7dcb7510              # double 0.05893133555012231
	.quad	0x3fec096105529e84              # double 0.87614489593120525
	.quad	0x3fe9652d8c196aed              # double 0.79360082018987799
	.quad	0x3fef2c4baf28583a              # double 0.9741571827933122
	.quad	0x3fef90df49768db7              # double 0.98643459652196596
	.quad	0x3feba7b8e1e724dd              # double 0.86422390100156188
	.quad	0x3fe32a3399d8f7c2              # double 0.59890155838342474
	.quad	0x3fcaeb1693b44390              # double 0.2102993222438525
	.quad	0x3fe5fe989fee2745              # double 0.68732863651641962
	.quad	0x3fcc3c2c95251634              # double 0.22058636934723241
	.quad	0x3fef1d51264b3942              # double 0.97232873420015431
	.quad	0x3fd2ea49076848ea              # double 0.2955496380174184
	.quad	0x3fefdb3df1f17c16              # double 0.99551293615866387
	.quad	0x3fe2dfdabf518d1c              # double 0.58982598654657492
	.quad	0x3fe349d1f4b0f521              # double 0.60276124755151639
	.quad	0x3f94496606641c40              # double 0.019811243190840822
	.quad	0x3fe64d9dfedea81c              # double 0.69697475222824634
	.quad	0x3fdce32e98c3bb7c              # double 0.45136608999649019
	.quad	0x3fc18cf3f714bba4              # double 0.13711404385091186
	.quad	0x3feeb1800fe0505d              # double 0.9591675100405258
	.quad	0x3fdb8df7dfdcbb4c              # double 0.43054005490823921
	.quad	0x3fd8dbe8cdc4bc74              # double 0.38842220396595128
	.quad	0x3fdef2ee5eeffcaa              # double 0.48357733985171569
	.quad	0x3fc300ce1c740718              # double 0.14846207036321668
	.quad	0x3fe48482c4d7cdbe              # double 0.64117563672919409
	.quad	0x3fb15415bd5b1100              # double 0.067689284066606348
	.quad	0x3fedc295a8ffa6b2              # double 0.93000300414606429
	.quad	0x3fe7fab77836d905              # double 0.74935506324143886
	.quad	0x3fe5004f5019fe9d              # double 0.65628781933624547
	.quad	0x3fe06850559e201e              # double 0.51273361894800806
	.quad	0x3fcebfdb90d495e8              # double 0.24023003169820289
	.quad	0x3fad232a822e1d60              # double 0.056908920661096429
	.quad	0x3fd226fcb20a7d2a              # double 0.28362958323301035
	.quad	0x3fd33d577c9bc182              # double 0.30061900299826771
	.quad	0x3fe200a72f70de07              # double 0.56257972017095959
	.quad	0x3feed049ac7ba61c              # double 0.96292575538717839
	.quad	0x3fb46a8a7282a628              # double 0.079750683743121997
	.quad	0x3fe304907277755f              # double 0.59430715901150311
	.quad	0x3febc7e0b75327c1              # double 0.86814914518003417
	.quad	0x3fdc4118d6e43c34              # double 0.44147320733549411
	.quad	0x3fe58c1c79a38228              # double 0.6733534217601731
	.quad	0x3fcb8009d02c0c3c              # double 0.21484491982127618
	.quad	0x3fd5401ba5c003a4              # double 0.33203784166840422
	.quad	0x3f7217dd34eca680              # double 0.004417289818584913
	.quad	0x3fe8cdba09ceebbd              # double 0.77511312404327948
	.quad	0x3fd96bc2628d5a7e              # double 0.397202106706949
	.quad	0x3fe80ffffc8566b4              # double 0.75195311852004076
	.quad	0x3fe575146f48a3cc              # double 0.67054197058779996
	.quad	0x3fd372465844fafa              # double 0.30384977932037283
	.quad	0x3fcd2130e1e51898              # double 0.2275754073145364
	.quad	0x3fc8b990a4b90ae0              # double 0.19316299479586174
	.quad	0x3fde5b9b6f19911a              # double 0.47434125756832801
	.quad	0x3fdad70d87a72df0              # double 0.41937578437202117
	.quad	0x3fe81e6e1742f1f1              # double 0.75371460479033037
	.quad	0x3fe7712248be5724              # double 0.73256029327123828
	.quad	0x3fe63830054b543e              # double 0.69435883554491062
	.quad	0x3fe36d5db3ee86ac              # double 0.60710034506720012
	.quad	0x3fe872ea934ab820              # double 0.76402786987251047
	.quad	0x3fc11f2fccb0f724              # double 0.13376424307528467
	.quad	0x3fd54153cccebd48              # double 0.33211226464023413
	.quad	0x3fca32b526532f58              # double 0.20467247363410013
	.quad	0x3fe26ed75c7e8f0d              # double 0.57603042664820381
	.quad	0x3fdd7148f2b3d456              # double 0.46003936482822405
	.quad	0x3fd7c8d5c2b6e66e              # double 0.37163299574931485
	.quad	0x3fdd1963b4b67a1c              # double 0.45467465064749191
	.quad	0x3fedbe11403b4e42              # double 0.92945158524748472
	.quad	0x3fe6ca9466ca58ad              # double 0.71222896648648304
	.quad	0x3fe3b4a813caec98              # double 0.6158028017593038
	.quad	0x3fe0f5bfa5bc7527              # double 0.52999861116737612
	.quad	0x3fe7e8be2cd71551              # double 0.7471609950813819
	.quad	0x3fb0595a9fcc38e0              # double 0.063863433850403606
	.quad	0x3f9bd588f55c7d80              # double 0.027181758857407257
	.quad	0x3fedcf5c4b2417b9              # double 0.93156256366704959
	.quad	0x3fd4d981911af1d6              # double 0.32577552004275157
	.quad	0x3fe5d8133f1239e6              # double 0.68262636488526307
	.quad	0x3fc7aab6dab2cfb0              # double 0.1848972862113647
	.quad	0x3fe94cdb247940fe              # double 0.79063183902510992
	.quad	0x3fe6cf32f3593782              # double 0.71279284981731927
	.quad	0x3fc7bc0263262f04              # double 0.18542508927600221
	.quad	0x3fdd3fd890d0c8f0              # double 0.45702184812684177
	.quad	0x3fe8c0dbded7e9c7              # double 0.77354234241584485
	.quad	0x3fd6bc984d0091c6              # double 0.35526092071293325
	.quad	0x3fca5be97a9432e4              # double 0.20592993245408941
	.quad	0x3fde0d9ae76598e0              # double 0.46958038899755472
	.quad	0x3fd84fa3e001d994              # double 0.37986084819513022
	.quad	0x3fe33a4792dd904b              # double 0.6008642071215119
	.quad	0x3febaca19095fbd3              # double 0.86482313384464715
	.quad	0x3fd588946aa7b934              # double 0.3364611665300743
	.quad	0x3fc19a02171f435c              # double 0.137512456216906
	.quad	0x3fdbd21db731ba80              # double 0.43469946756423639
	.quad	0x3fde35f897d47352              # double 0.47204413249146626
	.quad	0x3feec56f36439a6a              # double 0.96160088156177648
	.quad	0x3fee3b642973afc9              # double 0.94474990936350267
	.quad	0x3fdcf6268e24e5d2              # double 0.45252384072554463
	.quad	0x3fedd0a580d9a240              # double 0.93171954313317684
	.quad	0x3fe43daead55351d              # double 0.63252958158560413
	.quad	0x3fec35e3d1eede01              # double 0.88157835962823594
	.quad	0x3fdd340ca20c91da              # double 0.45630184006793473
	.quad	0x3fe8f116f25e07ba              # double 0.7794298871742662
	.quad	0x3feb80b0855ccfdd              # double 0.85945917174694453
	.quad	0x3fc67eee9e9c2618              # double 0.1757486605131795
	.quad	0x3fe60cc0a9fc76f3              # double 0.68905671310832728
	.quad	0x3feb2a1a7d0834f2              # double 0.84888958378146939
	.quad	0x3fdc516a9b9617be              # double 0.44246926492666805
	.quad	0x3fdb0b2f21021a82              # double 0.42255762313326539
	.quad	0x3fe6742c4fff9608              # double 0.70168128609356106
	.quad	0x3fe85a5b21758e23              # double 0.76102978262901322
	.quad	0x3fe224c76a748b88              # double 0.56698962013284504
	.quad	0x3fef2f17291e7e34              # double 0.97449834853245542
	.quad	0x3fdcd9625b5eb4e8              # double 0.45076807902189708
	.quad	0x3fd6bc367ea4a4fc              # double 0.35523760192388898
	.quad	0x3fd0ffd47caeacf0              # double 0.26561462570198469
	.quad	0x3fe9afaa5ddf139f              # double 0.80269354185348962
	.quad	0x3fbf4cd076778050              # double 0.12226584331756496
	.quad	0x3fe11db0bd13861e              # double 0.53487431458433199
	.quad	0x3fe7d424e4764cb8              # double 0.74464649793153281
	.quad	0x3feb6e3d781187fa              # double 0.85720704508662426
	.quad	0x3fd0553c234e11bc              # double 0.25520232627630057
	.quad	0x3feab9d857e00a45              # double 0.83518616831890624
	.quad	0x3fdaeb8c29770186              # double 0.42062667893699091
	.quad	0x3fe4a5a8212f315c              # double 0.64522177201574094
	.quad	0x3fd1b01f0f9cf50a              # double 0.27637459301679768
	.quad	0x3fed814f9b609b19              # double 0.92203502986089625
	.quad	0x3fe5d52a2aa7f0d1              # double 0.68227108317617013
	.quad	0x3fdcb000fe3014e4              # double 0.44824242423085381
	.quad	0x3fd77ed960f27fb2              # double 0.36711725680833773
	.quad	0x3fd559cb843b40f4              # double 0.33360565102795126
	.quad	0x3fed18b888b9f2af              # double 0.90926768020979931
	.quad	0x3fe108989d874b90              # double 0.5322993351677372
	.quad	0x3fdcaeddea057714              # double 0.448173025642846
	.quad	0x3fe80cbd896c7a07              # double 0.75155522194455748
	.quad	0x3fa3b5e3d3aebd30              # double 0.038497085180433266
	.quad	0x3fba1f19b502a190              # double 0.10203705472179636
	.quad	0x3fe15be4f93e870f              # double 0.54246758156316044
	.quad	0x3feea1f4bd8edc65              # double 0.95727002165848474
	.quad	0x3fd4f6ca6b44aa7a              # double 0.32756290889179918
	.quad	0x3fe959426d3187cd              # double 0.79214593245364429
	.quad	0x3fc2d68195108140              # double 0.14717120913065607
	.quad	0x3feeab307cf18f91              # double 0.95839714434667844
	.quad	0x3fe844454e7ab410              # double 0.75833382919302217
	.quad	0x3fd68cfae7badd94              # double 0.352354742335103
	.quad	0x3fe3a6a2bf238aef              # double 0.61409127551845966
	.quad	0x3fe51fb9f9634dcd              # double 0.66012285908294077
	.quad	0x3fdd0b20486b3086              # double 0.45380408355845991
	.quad	0x3fe8368ff1aea9cd              # double 0.75666043475694666
	.quad	0x3fed4551c25d9cf2              # double 0.91471183740659812
	.quad	0x3fee2dcb50e101f8              # double 0.94309011265437359
	.quad	0x3fc8d0c7955c73c8              # double 0.19387144845032211
	.quad	0x3fca6160e4a093dc              # double 0.20609675563278429
	.quad	0x3fd95f9dc1ae3cf8              # double 0.39646095193980058
	.quad	0x3fe0b027d0098f71              # double 0.52150335914892143
	.quad	0x3fed4171a221be44              # double 0.9142387549054054
	.quad	0x3fd7e1856e7fd1de              # double 0.37313972273775942
	.quad	0x3fe1a43c2f1f5564              # double 0.55129822925179583
	.quad	0x3fe1d93ef6dd4c40              # double 0.55776928153716909
	.quad	0x3fe76b99596b8fef              # double 0.73188464608074166
	.quad	0x3fdcb744a4db5000              # double 0.44868579959188537
	.quad	0x3fdc16332a34b77e              # double 0.43885497209236479
	.quad	0x3fbdfea253e0efc0              # double 0.11716665790385061
	.quad	0x3fdf4fc3d447c550              # double 0.4892434666681611
	.quad	0x3fb8949023c9c650              # double 0.096016892182683166
	.quad	0x3fd2500487f2e1fc              # double 0.28613389278646628
	.quad	0x3fedeb0ca01dd92f              # double 0.93494254372379781
	.quad	0x3fe07e3aa5c79ce4              # double 0.51540882471900007
	.quad	0x3fe3709d2b99f0b6              # double 0.60749681964764224
	.quad	0x3fb5ed8988a24b68              # double 0.085655780656720304
	.quad	0x3fa8a53a45f41950              # double 0.04813558677601526
	.quad	0x3fe1192e2e21585e              # double 0.53432377824607236
	.quad	0x3fe59484cae79f41              # double 0.67437972669447543
	.quad	0x3fe816a519e564fc              # double 0.75276427324129668
	.quad	0x3feee6fb24151455              # double 0.96569592521030733
	.quad	0x3fe6c67a3f0ea0a3              # double 0.71172821346137416
	.quad	0x3fe1c473672ab1f9              # double 0.55523080968629224
	.quad	0x3fe69d0773171c5a              # double 0.70666859129495241
	.quad	0x3fe0bdbc6f83427c              # double 0.5231611421568938
	.quad	0x3fed5ab582d4bc7a              # double 0.91732287934236401
	.quad	0x3fd6468c6b4d6ed8              # double 0.34805593947178926
	.quad	0x3fec2416bbd22381              # double 0.87940537151108356
	.quad	0x3fe9cc0ff5857d16              # double 0.80615995362669213
	.quad	0x3fd2a1cda8b5e072              # double 0.29112569308882208
	.quad	0x3fe322a73e1a7d17              # double 0.59798013810714934
	.quad	0x3fe3939be2a3d3b3              # double 0.61176866784682316
	.quad	0x3fe04c912965b8c7              # double 0.50934656224651398
	.quad	0x3fd26600fc19ccfc              # double 0.28747582072465128
	.quad	0x3fdae5946712bdee              # double 0.4202624327253649
	.quad	0x3fd3f624f5c816f6              # double 0.31189846040830049
	.quad	0x3fea7330fea199c0              # double 0.82656144840876067
	.quad	0x3fe7570a85957cc4              # double 0.72937513437855062
	.quad	0x3fe4855c9d4ba97d              # double 0.64127951356685708
	.quad	0x3fde71f59b4cc4e8              # double 0.47570552984241354
	.quad	0x3fce6b28137699cc              # double 0.23764515829425503
	.quad	0x3fdf78a29e668482              # double 0.49173799008173813
	.quad	0x3fc1264642403174              # double 0.13398054346943022
	.quad	0x3fe66ebba178dbb6              # double 0.70101720368881248
	.quad	0x3feeb317eabccdd8              # double 0.95936199042483405
	.quad	0x3fe5d27f2d979f38              # double 0.68194540886631838
	.quad	0x3fe4f7f643fd637d              # double 0.65526879576928787
	.quad	0x3fd374ec771e7322              # double 0.30401145584782985
	.quad	0x3f88e8ca0c078580              # double 0.012162760250194138
	.quad	0x3fb78ecdd8348ac8              # double 0.092022767338259759
	.quad	0x3fdeea39aa8b6ef2              # double 0.48304597525360216
	.quad	0x3fc2df44afdd6a68              # double 0.14743860804704245
	.quad	0x3fc4fee31efe8b54              # double 0.16402853978532994
	.quad	0x3feea0917e6a3042              # double 0.95710062685385133
	.quad	0x3fe2efc78045f1f1              # double 0.59176993420947899
	.quad	0x3fea99c3210f88ac              # double 0.83126980263866334
	.quad	0x3fe0da920bee74bb              # double 0.52668096857418989
	.quad	0x3fa59ca0265777a0              # double 0.042210583382014777
	.quad	0x3fe73e64aaf2cb58              # double 0.7263663615070568
	.quad	0x3fe1c78df98a5057              # double 0.55560969103181435
	.quad	0x3fe799c34b776883              # double 0.73751988162554516
	.quad	0x3fdb7e8a53703a2e              # double 0.42959840915947012
	.quad	0x3fde2f09e6703104              # double 0.47162101272330426
	.quad	0x3fe31096a2ef24ec              # double 0.5957749540622479
	.quad	0x3fecd13145c9206e              # double 0.90053619031915644
	.quad	0x3feddea21ff54a10              # double 0.93342691652134313
	.quad	0x3fed39f1ee0c1938              # double 0.91332336896520072
	.quad	0x3fba12c7b35cc4a8              # double 0.10184906128849269
	.quad	0x3fda9c77cb99dec2              # double 0.41580004580417207
	.quad	0x3fdf058d2a3bd6f2              # double 0.48471383213414676
	.quad	0x3fc5d9717748eca4              # double 0.1706983406491861
	.quad	0x3fef17d78c561139              # double 0.97166039857305641
	.quad	0x3fc8c6eaa9c72444              # double 0.19357045450149901
	.quad	0x3fe47d78a211bfcc              # double 0.64031631139914102
	.quad	0x3fedf525b0e09e7b              # double 0.93617519899721857
	.quad	0x3fddaec535fde246              # double 0.46379213593130364
	.quad	0x3fe6abad69d46aaa              # double 0.7084567133891444
	.quad	0x3fcdbd6ca7c36fd0              # double 0.23234327498982887
	.quad	0x3fcf8a572afa2ab0              # double 0.24640931700226565
	.quad	0x3feb85e61b8483cd              # double 0.86009507536447816
	.quad	0x3fdb698540b0eb3e              # double 0.42831546132554255
	.quad	0x3feb45cdd3a89bc3              # double 0.85227099742484602
	.quad	0x3feaebfbc81b19f3              # double 0.84130658229042721
	.quad	0x3fe8d7b26631ea4d              # double 0.77633018455464653
	.quad	0x3fb1a20fc17c7298              # double 0.068879112947295318
	.quad	0x3fc3704a8752e2d0              # double 0.15186435325246928
	.quad	0x3fd721470f0b7ddc              # double 0.36140610188701117
	.quad	0x3fca36fb8cd99254              # double 0.20480293633876789
	.quad	0x3fd7456b2f4d7e28              # double 0.36361198062329203
	.quad	0x3fdcd5be00a9e028              # double 0.45054578842928317
	.quad	0x3fe09b1c9072fe00              # double 0.51893451893550946
	.quad	0x3fe0b520c7a86962              # double 0.52211035724330324
	.quad	0x3fd7fb87c5a72b82              # double 0.37472719480563665
	.quad	0x3fed1e73601ada48              # double 0.90996712465750651
	.quad	0x3fcacf0af8adcb4c              # double 0.20944344656489944
	.quad	0x3feea6a834a8024f              # double 0.95784387859755237
	.quad	0x3fd1cf679d808acc              # double 0.27828398114267539
	.quad	0x3fea074a2d1f5f1e              # double 0.81338986218449683
	.quad	0x3fd92ef106cb3574              # double 0.39349008239226824
	.quad	0x3fc6d98b2639f278              # double 0.17851390234490672
	.quad	0x3fef799e196d64eb              # double 0.98359589544557246
	.quad	0x3fe6cca89061b054              # double 0.71248272132425905
	.quad	0x3fe821ce651f2575              # double 0.75412673712086919
	.quad	0x3fd190df2b42d044              # double 0.27446727013307659
	.quad	0x3fe8f781972cab00              # double 0.78021316076532798
	.quad	0x3fd15e2cd2072dd6              # double 0.27137299070883836
	.quad	0x3feb40f456f97799              # double 0.85167901026919701
	.quad	0x3fd6fe0487940fcc              # double 0.35925400962900933
	.quad	0x3fe8f228c9b2ee0b              # double 0.77956046480488916
	.quad	0x3fd13c1e7f831b20              # double 0.26929438068730072
	.quad	0x3fe61f4fd0c0b4d5              # double 0.6913222386553125
	.quad	0x3fe9ef75afe424cd              # double 0.81048092225787516
	.quad	0x3fca37b1de033590              # double 0.20482467022376882
	.quad	0x3fd5f9b644fd12b8              # double 0.34336621033825621
	.quad	0x3fba2347d3cf2478              # double 0.10210083886262733
	.quad	0x3fd8bb1d0446b232              # double 0.38642049234002507
	.quad	0x3fd8c4b752daa1de              # double 0.38700659838880636
	.quad	0x3fdc2b894c317478              # double 0.44015724602451867
	.quad	0x3fe33c3c07900aca              # double 0.60110284306605277
	.quad	0x3fd84765a7fd81d0              # double 0.3793577328233626
	.quad	0x3fb8400bd15c6a68              # double 0.094727266896748596
	.quad	0x3fe6e67bf04dd965              # double 0.71563527044672226
	.quad	0x3fd611339e78a652              # double 0.34479990459167198
	.quad	0x3fd80cb32a93e750              # double 0.37577513845427735
	.quad	0x3fefc4a29c20508f              # double 0.99275331967739244
	.quad	0x3fe35e872894ca6c              # double 0.60528905797975829
	.quad	0x3febdee14bcf3c13              # double 0.87095703894181253
	.quad	0x3fc07e1a779dae4c              # double 0.1288483699857913
	.quad	0x3fee7b3508396211              # double 0.95253993612556276
	.quad	0x3fd9ee88de0ea95c              # double 0.40518399892120782
	.quad	0x3fe552623abe74b2              # double 0.66630660508567119
	.quad	0x3fdf1e85e8f69214              # double 0.4862379813223765
	.quad	0x3fd4d6b534ff6c26              # double 0.32560472655831274
	.quad	0x3fd7bc3c46b5aebc              # double 0.37086398034328361
	.quad	0x3fced4b3cbf420e0              # double 0.24086615999863792
	.quad	0x3fef52830797c7e2              # double 0.97882224543559126
	.quad	0x3fd3f9ce4b44e430              # double 0.31212193823336332
	.quad	0x3fd0de31afac17f0              # double 0.26356165080539906
	.quad	0x3fce37ed5bdec12c              # double 0.2360817621788639
	.quad	0x3fe0c267fe2cfbdc              # double 0.52373122829146324
	.quad	0x3fdf937c067cf7b0              # double 0.49337673791512326
	.quad	0x3fe20993a7e8bdd7              # double 0.56366904062991352
	.quad	0x3fd27e753986ef6a              # double 0.28896837823753307
	.quad	0x3fdf89eaa54a08f0              # double 0.49279276029132202
	.quad	0x3feb1cd909d4393a              # double 0.84727146072126591
	.quad	0x3fc1f7558eced660              # double 0.14036054108662466
	.quad	0x3fdffa1c1f41d8f6              # double 0.49964049389326648
	.quad	0x3fcdd4a2e3cb48ac              # double 0.23305164454229066
	.quad	0x3fe2fa0cab18ece3              # double 0.59302361886457466
	.quad	0x3fd19dd0b6facace              # double 0.27525728100878843
	.quad	0x3f9f6624334f0cc0              # double 0.03066307604946128
	.quad	0x3fea82d59ca2d054              # double 0.82847099869696672
	.quad	0x3fe0bd6fcff6c49e              # double 0.52312460535008021
	.quad	0x3fbf7648b122e408              # double 0.1228986198865557
	.quad	0x3fea4b867b508d55              # double 0.82171939930814608
	.quad	0x3fd829c7387035e6              # double 0.37754993926577496
	.quad	0x3fcedeb56dbd220c              # double 0.24117153032626992
	.quad	0x3fb873876c907400              # double 0.095512832646321044
	.quad	0x3fa6008c2e362c90              # double 0.042972927704874597
	.quad	0x3fecdae6c6e3923d              # double 0.90172137113092499
	.quad	0x3febbf6474f329c0              # double 0.86711333123940193
	.quad	0x3fdc00887a4829e4              # double 0.43753253881064169
	.quad	0x3fbd9618205791b8              # double 0.11557150640107394
	.quad	0x3fd8c6a8512ce432              # double 0.38712509085923152
	.quad	0x3fe2d1f5e629142f              # double 0.588129949123532
	.quad	0x3fe2a8d17853300d              # double 0.58310769558875253
	.quad	0x3fd327c13b9b4d9e              # double 0.29930144139253823
	.quad	0x3fecf4047bb4783c              # double 0.9047872940170758
	.quad	0x3fe280394894cfc4              # double 0.5781523149112151
	.quad	0x3fe8967214e05625              # double 0.76836494519620102
	.quad	0x3fd4e519a241cf96              # double 0.32648316235940322
	.quad	0x3fef33febde0dcbf              # double 0.97509705625170528
	.quad	0x3fe7ca98b8ef3712              # double 0.7434810268402734
	.quad	0x3fbe559450907aa0              # double 0.11849333731559364
	.quad	0x3fb9d968cc8d2cf8              # double 0.10097365373546896
	.quad	0x3feeee814e21c01a              # double 0.9666143919002963
	.quad	0x3fb8c71132fc55e0              # double 0.096787524173428618
	.quad	0x3feaf06f30574eae              # double 0.84184989396677223
	.quad	0x3fefad431620cd69              # double 0.98990015336896164
	.quad	0x3fe1f3cd34ebbb45              # double 0.56101093612765196
	.quad	0x3fd7b41ce3a86a98              # double 0.37036821586813451
	.quad	0x3fe01f4862bce393              # double 0.50381869587646333
	.quad	0x3fddca4ad1497d02              # double 0.46547193945112053
	.quad	0x3fdfcdbf55c63bae              # double 0.49693282486344514
	.quad	0x3fe030a1588df7e6              # double 0.50593631072819956
	.quad	0x3fe0fc50c6c81dc9              # double 0.53080023598243387
	.quad	0x3fed9d8595fae9cc              # double 0.92547873776430256
	.quad	0x3fef83d3280f8930              # double 0.9848418981967253
	.quad	0x3fe27563ae0a98f8              # double 0.57682975761852529
	.quad	0x3fed77ceaa9b951a              # double 0.92087491342377636
	.quad	0x3fe126715d5fb57c              # double 0.5359427283962499
	.quad	0x3fe0f43fa5271a09              # double 0.52981550461191873
	.quad	0x3fb23c72dfdda368              # double 0.071234874396066794
	.quad	0x3fac016f0d7e0680              # double 0.05469843902302518
	.quad	0x3fe9c07d4289af0a              # double 0.80474722858113634
	.quad	0x3fe454d89332236f              # double 0.63535717724981378
	.quad	0x3f937d3d60612740              # double 0.019032439239061505
	.quad	0x3f3e502c4fa18000              # double 4.6254236042919672E-4
	.quad	0x3fe62cfa8eadc153              # double 0.69299056879939724
	.quad	0x3fd64a91b9e294ac              # double 0.348301345375442
	.quad	0x3febb51aef3cbd9a              # double 0.8658575699427502
	.quad	0x3febe3f79eabf053              # double 0.87157803526452893
	.quad	0x3fee45ab669f07fd              # double 0.94600458186346226
	.quad	0x3fe05ed92421ee2d              # double 0.51157815034043141
	.quad	0x3fe782cb8c527422              # double 0.73471619993836534
	.quad	0x3fe2d9811b2b62ea              # double 0.58905082041300472
	.quad	0x3fe41d098d1a0092              # double 0.62854459341908098
	.quad	0x3fddd2aca4ad839a              # double 0.46598354417624821
	.quad	0x3fe2f9fc8f5be9b2              # double 0.59301593780337769
	.quad	0x3fd9d229e584f118              # double 0.4034523717307521
	.quad	0x3fe9db139e481b4d              # double 0.80799275316608432
	.quad	0x3fbcd91a407881f8              # double 0.11268772195808896
	.quad	0x3fe59e1b22718a3d              # double 0.67555004813431874
	.quad	0x3fd9bd10ee4a07d2              # double 0.40216468115260995
	.quad	0x3fc56ab9f3a3e17c              # double 0.16731953045360715
	.quad	0x3fc5be0083c370f8              # double 0.16986090120088426
	.quad	0x3fe4f32d8e261635              # double 0.65468480838234788
	.quad	0x3fdd5cf2facb8778              # double 0.45879816524222106
	.quad	0x3fee271492c1bc82              # double 0.94227055228647338
	.quad	0x3fe11848c3080cf8              # double 0.53421438304977098
	.quad	0x3fd789def8b5b304              # double 0.36778997695982718
	.quad	0x3fe0500e51e38eab              # double 0.50977245325016918
	.quad	0x3fe46560ce899fcd              # double 0.63737526263593625
	.quad	0x3fef2df03f1ccfd5              # double 0.9743577225367469
	.quad	0x3fc2ff951e91a144              # double 0.14842475884075601
	.quad	0x3fd9b5e626f610ae              # double 0.40172723583988101
	.quad	0x3fc0ce7d4d26bdd0              # double 0.13130155818133327
	.quad	0x3fe54f7e76fa0343              # double 0.66595385778064331
	.quad	0x3fcd6d2cf4a47940              # double 0.22989427514489513
	.quad	0x3fe4cebc855903e9              # double 0.6502363781402184
	.quad	0x3fd18158083ee17a              # double 0.27351952367055044
	.quad	0x3fd0946be215dbea              # double 0.25905892447138845
	.quad	0x3fe0e4aa6b710db0              # double 0.52791329369249773
	.quad	0x3fb27ed9cdecbb50              # double 0.072248089575379426
	.quad	0x3fd1b3568f0d909a              # double 0.27657093019502954
	.quad	0x3fd8f1e005349364              # double 0.38976288326585107
	.quad	0x3fe57e9b41cb511f              # double 0.67170489168578118
	.quad	0x3fc5ffe0f23c11b8              # double 0.17187129810203117
	.quad	0x3fb83f3ae33c5890              # double 0.094714813687774901
	.quad	0x3fd43cbe0de82a8c              # double 0.31620742185683848
	.quad	0x3f64555217482e00              # double 0.0024820903147479978
	.quad	0x3fe365d1127fed36              # double 0.6061787949869657
	.quad	0x3fd014ed55b93a40              # double 0.25127728816451977
	.quad	0x3fe617facd643edd              # double 0.69042720904868882
	.quad	0x3fe24cce20ae65e1              # double 0.57187563307814682
	.quad	0x3f902e5eec207440              # double 0.015801890527758156
	.quad	0x3fe8aba1cc89e02a              # double 0.77095117520275847
	.quad	0x3fddd328746d93b8              # double 0.46601306314397162
	.quad	0x3fedd53a0be64b1f              # double 0.93227865528237774
	.quad	0x3feccf6100f637ad              # double 0.90031480968331368
	.quad	0x3f9f28f5efc3cb40              # double 0.03042969013126684
	.quad	0x3fe56767abf1d7f4              # double 0.66887267668675898
	.quad	0x3faeb619fa35e3f0              # double 0.059983073991084157
	.quad	0x3fe1f975a623a7ea              # double 0.56170160721853546
	.quad	0x3fefd9b09587d75e              # double 0.99532345967484637
	.quad	0x3fcb2b3f0b51cdd4              # double 0.2122572713156915
	.quad	0x3fd2e9fc678a2c9e              # double 0.2955313693170839
	.quad	0x3fe87d703a195e81              # double 0.76531230304222231
	.quad	0x3fd9b1150a6918d0              # double 0.40143323914197726
	.quad	0x3fd7cc32caa0210c              # double 0.37183828151366138
	.quad	0x3feb3b904ce20f52              # double 0.85102095619411444
	.quad	0x3fe3960addf92183              # double 0.61206572870382592
	.quad	0x3faa40ee5af1c300              # double 0.051276634790047737
	.quad	0x3fe9fed9a9aef9f5              # double 0.81235964909848113
	.quad	0x3fddc014ea705468              # double 0.4648487367097176
	.quad	0x3fc8b79b67773a54              # double 0.19310324241674215
	.quad	0x3feb10acfcfd38dd              # double 0.84578561222022197
	.quad	0x3fdb0a1a87896fbc              # double 0.42249167667409515
	.quad	0x3fd7947c70777340              # double 0.36843787177149423
	.quad	0x3fcdb7c5d747c5ec              # double 0.23217080127464784
	.quad	0x3fe4d9d90f0b7058              # double 0.65159275949873585
	.quad	0x3fe73f1493251d10              # double 0.72645024050953744
	.quad	0x3fe1d998c287839e              # double 0.55781209939970089
	.quad	0x3f91848163b6fee0              # double 0.01710703059302332
	.quad	0x3fd3d5c51c5508cc              # double 0.30992248312771831
	.quad	0x3fed48d9c0ffc6c9              # double 0.91514289565221774
	.quad	0x3fecbb8ae946efe0              # double 0.89789338647778649
	.quad	0x3fe930ea23873fb3              # double 0.78722102107166447
	.quad	0x3fa1c2c18688c770              # double 0.034688995049136362
	.quad	0x3fd1a2d55973d73c              # double 0.275563561778984
	.quad	0x3feae2a815b5bb54              # double 0.84016803970539877
	.quad	0x3fe12d2ad6a96ed4              # double 0.53676359106199323
	.quad	0x3fd0ccd1beff4f06              # double 0.26250117923812899
	.quad	0x3fca06d49b6aadd4              # double 0.2033334502096823
	.quad	0x3fe92a89c2518a6b              # double 0.78644264176211942
	.quad	0x3fd01237fff39476              # double 0.25111198420774572
	.quad	0x3faffa0cb9410bf0              # double 0.062454602827095473
	.quad	0x3fef4d8858f58d75              # double 0.97821442961541882
	.quad	0x3fea92403bff9c7b              # double 0.83035289495900544
	.quad	0x3fd21f95b07522f2              # double 0.28317777855094939
	.quad	0x3fe386e7feb27908              # double 0.6102180456689732
	.quad	0x3fd037cd948b3fc4              # double 0.25340594774479208
	.quad	0x3fe88a29e8d7dd6b              # double 0.76686568715278491
	.quad	0x3fb180010990cc28              # double 0.068359436831813114
	.quad	0x3fde48b38c0c7244              # double 0.47318733860609918
	.quad	0x3fd816b1c6eb8708              # double 0.37638515878471468
	.quad	0x3fed0aaa336a4fa8              # double 0.90755186121031262
	.quad	0x3fdc646e461283d6              # double 0.44362980692863851
	.quad	0x3fcef1e1224e9ee0              # double 0.24175657439376774
	.quad	0x3fd5f397acf23f10              # double 0.34299270524296421
	.quad	0x3fd08e342a05e410              # double 0.25867942909059227
	.quad	0x3fa8a6d79ea79370              # double 0.048147905461326412
	.quad	0x3fe0141404f90752              # double 0.50245095225566616
	.quad	0x3fdb87980f6060c6              # double 0.43015100003823326
	.quad	0x3fc1653e1824e6b8              # double 0.13590217760957102
	.quad	0x3fdaf13a832a7e0e              # double 0.42097342309168162
	.quad	0x3fc3e9b829f5f394              # double 0.15557004975189825
	.quad	0x3fe0991d797a4ce1              # double 0.51869081236000281
	.quad	0x3fe6a07bf7506930              # double 0.70709036162887706
	.quad	0x3fe7e0dfc0ef8b28              # double 0.74620044405705688
	.quad	0x3f975644b99fb7e0              # double 0.022790025548537929
	.quad	0x3fe3bd07c0276424              # double 0.61682498483708459
	.quad	0x3fe1a20a5a529fb8              # double 0.55103032723581347
	.quad	0x3fd0340f9dd55ef8              # double 0.25317755139756981
	.quad	0x3fcc8cab48dbb454              # double 0.22304287965326586
	.quad	0x3fd68921387f32d8              # double 0.35211973683617037
	.quad	0x3febb164dd5cd6ae              # double 0.86540454134838796
	.quad	0x3f7b5228d3e22e00              # double 0.0066701502638681909
	.quad	0x3fe3328191118e34              # double 0.59991529782968778
	.quad	0x3f96ccf86af1b7a0              # double 0.022266274955135779
	.quad	0x3fc150f0a0954240              # double 0.13528259125679831
	.quad	0x3f7ab17dc4d48f00              # double 0.0065169251295491559
	.quad	0x3fc18097de63b460              # double 0.13673685416088954
	.quad	0x3fd6b80c550a35c0              # double 0.35498340897251168
	.quad	0x3fea657c434ba94a              # double 0.82488835471785049
	.quad	0x3fe1bc59660de376              # double 0.55424184734793758
	.quad	0x3fde916765080562              # double 0.47762474886265782
	.quad	0x3f84698b4290da40              # double 0.0099669341744689221
	.quad	0x3fe2e69a8aff4c31              # double 0.59064986369992856
	.quad	0x3fe5cd758d857f5c              # double 0.68133046761429794
	.quad	0x3fe4e950b9ce5628              # double 0.65348087587580483
	.quad	0x3fc4a173e4873604              # double 0.16117714556314422
	.quad	0x3fbf1759a086b4f8              # double 0.12145004433724071
	.quad	0x3fd690f21e0d2d4a              # double 0.35259678778375714
	.quad	0x3fcf673c6a44bad4              # double 0.24533801258936327
	.quad	0x3fd08faee8f9f0cc              # double 0.25876972915262964
	.quad	0x3fe50fd971357138              # double 0.65818473921857557
	.quad	0x3fe581a4e1087233              # double 0.67207569076305729
	.quad	0x3feb664a9f674d96              # double 0.85623675473691452
	.quad	0x3fbda43bd7c720c8              # double 0.11578725831998604
	.quad	0x3fe4171970f1fac2              # double 0.62781974849334454
	.quad	0x3fd32a27401b1d8a              # double 0.29944783459037494
	.quad	0x3fe4e3de2f2b4d6f              # double 0.65281590664601008
	.quad	0x3fd69de9e111a3e4              # double 0.35338828067193462
	.quad	0x3fef8393f9b0cc62              # double 0.98481177108477547
	.quad	0x3fc12ee51f1aee38              # double 0.13424362200554341
	.quad	0x3fed8a647d9abea6              # double 0.92314362079737999
	.quad	0x3fdede68a80126b8              # double 0.4823247566861073
	.quad	0x3fe93a983ecbe6a6              # double 0.78840267434062095
	.quad	0x3fe78f0375589bf8              # double 0.73620770377317424
	.quad	0x3fd73472534b4e06              # double 0.36257608541674846
	.quad	0x3fef44274b641652              # double 0.97706951832578626
	.quad	0x3fa34b23899f4ef0              # double 0.03768263869247146
	.quad	0x3fb2deaab0dfbd18              # double 0.073710125143169214
	.quad	0x3fe328b7f8c770a9              # double 0.59872053708706574
	.quad	0x3fe2519de519d435              # double 0.57246298548000729
	.quad	0x3fe9eab12f4b830f              # double 0.8098989413957457
	.quad	0x3fe7727c320ba4c1              # double 0.73272523664959277
	.quad	0x3fee36fcd2a1c917              # double 0.94421235217149302
	.quad	0x3fdf177bc859392c              # double 0.48580832066808699
	.quad	0x3fe9070052a4a36c              # double 0.78210464612230401
	.quad	0x3faf6d205197ed80              # double 0.061379442176952459
	.quad	0x3fd447c0747e1d7e              # double 0.31687938095316059
	.quad	0x3fd41bc764f2574c              # double 0.31419548852988011
	.quad	0x3fda9c3f784fca32              # double 0.41578661679446605
	.quad	0x3fd16d0d5d781bee              # double 0.27228101852273212
	.quad	0x3fda1ca4b9eb7cf0              # double 0.40799825817334945
	.quad	0x3fd2efe2b2fd9c40              # double 0.29589145164067432
	.quad	0x3fc25e59f1b57808              # double 0.14350437452498022
	.quad	0x3fe5fd07ea6c4bf2              # double 0.68713756356953426
	.quad	0x3fe5462d9895e16c              # double 0.66481666375970638
	.quad	0x3fe451a5f1cae70f              # double 0.634966823817395
	.quad	0x3feff6341a2a5cfe              # double 0.99880414114423366
	.quad	0x3fce6054bd9bcf28              # double 0.23731478937372086
	.quad	0x3fd1b09e8258acb8              # double 0.27640497903002936
	.quad	0x3fdcd69971f5389e              # double 0.45059810761166286
	.quad	0x3fc15bbc8300cc70              # double 0.1356120719588918
	.quad	0x3fbb3e9dd7e2db58              # double 0.10642420311601819
	.quad	0x3fa0452592e58010              # double 0.03177754800958621
	.quad	0x3fe2bfbd3188d8ca              # double 0.58590564417570445
	.quad	0x3fe008fed6ab548b              # double 0.50109807899083714
	.quad	0x3fe319277db79177              # double 0.59682058862794818
	.quad	0x3fcaefd0ecfd4e30              # double 0.21044360706092524
	.quad	0x3fee4678f5348ddd              # double 0.94610259906442773
	.quad	0x3fd438e3dae6b99e              # double 0.31597229363515023
	.quad	0x3fa7a17b9c555bd0              # double 0.046153891404791758
	.quad	0x3fd7bd7f14855fe4              # double 0.37094094280246126
	.quad	0x3feba42e1842d215              # double 0.86379151094894502
	.quad	0x3fe705ddd2fbc087              # double 0.71946612556168155
	.quad	0x3feb435e551859be              # double 0.85197369213238239
	.quad	0x3fbaaeb64be6b440              # double 0.10422839501434655
	.quad	0x3fc3986e84d62be4              # double 0.1530893467537161
	.quad	0x3fd18f2ab5c0db1c              # double 0.27436321019506393
	.quad	0x3fe850d08c119711              # double 0.75986506802721199
	.quad	0x3fcb8c2c14bb1430              # double 0.21521521579976044
	.quad	0x3fe88b2778126f2d              # double 0.76698659373821487
	.quad	0x3fcb3762a9af4358              # double 0.21262772832281018
	.quad	0x3fe1bf1ac0fb3d9e              # double 0.55457818690949856
	.quad	0x3fe619db64bf1b24              # double 0.69065637280514069
	.quad	0x3febf7e09059a687              # double 0.87400844758413221
	.quad	0x3fb9be62b20143f0              # double 0.10056130262206842
	.quad	0x3f773be73263db80              # double 0.0056723624349989121
	.quad	0x3feac39361a38e73              # double 0.83637398786636508
	.quad	0x3fbaff9ed7e44570              # double 0.10546295901101188
	.quad	0x3fe427a9c9c645df              # double 0.62984170350153679
	.quad	0x3fecbe9d96c7ae2f              # double 0.89826850365847644
	.quad	0x3fe53c8160a4f631              # double 0.66363591075759676
	.quad	0x3fee7e8e5f5086fe              # double 0.95294874778866734
	.quad	0x3fe6f77654eb4efc              # double 0.71770779214645541
	.quad	0x3fd2ac79e49361ea              # double 0.29177710840079263
	.quad	0x3fe775f56c1b4908              # double 0.73314925303046241
	.quad	0x3fc641ad4c33a97c              # double 0.17387930126944784
	.quad	0x3fd4d3d97ad30ae2              # double 0.32543026918953732
	.quad	0x3feb346c5779be3a              # double 0.85014931759901136
	.quad	0x3fca971af44a186c              # double 0.20773636749453617
	.quad	0x3feef8b76cefbc44              # double 0.96786090160993198
	.quad	0x3fec19ee655e687c              # double 0.87816543387022205
	.quad	0x3fdd3cc1b6692c0a              # double 0.45683329404408879
	.quad	0x3fd7bd05046a2f62              # double 0.37091184073573491
	.quad	0x3fc7bdbab6863908              # double 0.18547758018798555
	.quad	0x3fead3b259d33fd9              # double 0.83834188026412015
	.quad	0x3fe3574ba9146059              # double 0.60440619490965297
	.quad	0x3fc50bcb3a7f2ce8              # double 0.1644224200848392
	.quad	0x3fd63df14bc4b62e              # double 0.34753067397363935
	.quad	0x3fe736d4bdba15e3              # double 0.72544323974642244
	.quad	0x3fdf9cb11828938a              # double 0.49393870696285858
	.quad	0x3fd061990d6ce9d0              # double 0.2559569007022704
	.quad	0x3fe099455c472e3e              # double 0.51870983145767702
	.quad	0x3fbe5a3eb994bb20              # double 0.11856452971254017
	.quad	0x3feacd63457d5f44              # double 0.83757175037587971
	.quad	0x3fe50c882256bc13              # double 0.65777975756452844
	.quad	0x3fdb435025dedab8              # double 0.42598346422475286
	.quad	0x3fe1ef30d1dc70fe              # double 0.56044808376785205
	.quad	0x3fe2853d03fcc94c              # double 0.57876444605634836
	.quad	0x3fef035f003eb209              # double 0.96916151092369873
	.quad	0x3fe5511ac40618ff              # double 0.66615045820142871
	.quad	0x3fe222226a18ee83              # double 0.56666680071016662
	.quad	0x3fcfb9e142374ec8              # double 0.24786010487752308
	.quad	0x3fe929279962fbc1              # double 0.78627376516657688
	.quad	0x3fe4e9d5040ad597              # double 0.65354395665660803
	.quad	0x3fd24d6922a9474a              # double 0.2859747732628547
	.quad	0x3fdd35bd96d12e92              # double 0.45640506485208576
	.quad	0x3fefb3676cb1f9c3              # double 0.99064990262541419
	.quad	0x3fd26de5b05a575c              # double 0.28795759412729693
	.quad	0x3fcdca6a39a37954              # double 0.23273971380599312
	.quad	0x3fe8da684ae1a834              # double 0.77666105866706525
	.quad	0x3fcc12601c5ee090              # double 0.21931077370914354
	.quad	0x3fa2301c08964390              # double 0.035523296402181548
	.quad	0x3fea4e5b66ba9f5b              # double 0.82206506790405898
	.quad	0x3fe4713e75e50a30              # double 0.63882372881227489
	.quad	0x3fef308730697135              # double 0.97467383819051767
	.quad	0x3fc40f54e1803d68              # double 0.15671788225925387
	.quad	0x3fe290292d5cab37              # double 0.58009775981677236
	.quad	0x3feff5997cae1b6a              # double 0.99873041488249936
	.quad	0x3fe84fa0499743f1              # double 0.759719985706509
	.quad	0x3fd0b6809446dccc              # double 0.26113905410916227
	.quad	0x3fbbe012356a3670              # double 0.10888780407022991
	.quad	0x3fdd1762a200c9b6              # double 0.45455232449162553
	.quad	0x3fdc11194da86eb0              # double 0.43854363044531919
	.quad	0x3fe50e6248285798              # double 0.65800584882048252
	.quad	0x3fdb8817dc720db8              # double 0.43018147018321029
	.quad	0x3feb6b35ebe2f792              # double 0.85683723517989763
	.quad	0x3fe06f552fa290ff              # double 0.51359042457309545
	.quad	0x3fc011c0ec479f54              # double 0.1255417970380629
	.quad	0x3fd221de330434ba              # double 0.28331713659356306
	.quad	0x3fd9723180d6df32              # double 0.39759481031386479
	.quad	0x3fc29fb5547afddc              # double 0.14549891114255231
	.quad	0x3fbe8611aac430d0              # double 0.11923323077297998
	.quad	0x3fe9fd2642771a96              # double 0.81215203267568614
	.quad	0x3feca80dbbe8bd1a              # double 0.8955143613910963
	.quad	0x3fd5a8ac3ab6e74a              # double 0.33841996892771375
	.quad	0x3fe22d3d9a52f904              # double 0.56802253858020935
	.quad	0x3fbf801a99e42a10              # double 0.12304846055136687
	.quad	0x3fd1071a02973576              # double 0.26605844738954632
	.quad	0x3fce6798c07a1aec              # double 0.23753651998796188
	.quad	0x3fa4c0e6bd424f00              # double 0.040534220316798653
	.quad	0x3f9186c6b6c058a0              # double 0.017115693001038879
	.quad	0x3fe6d765bfc65806              # double 0.7137936349488434
	.quad	0x3fca50951f43a38c              # double 0.20558418299267733
	.quad	0x3fc2c3d2257111b4              # double 0.14660097912031989
	.quad	0x3fdf5750dcb31148              # double 0.48970433762248833
	.quad	0x3fdbf70689170b32              # double 0.43695224178024994
	.quad	0x3fef02cabc349d88              # double 0.96909081229107219
	.quad	0x3fd4e84389bb2950              # double 0.32667625856688165
	.quad	0x3fee5c12e9e1c551              # double 0.94873948745786596
	.quad	0x3fdb400dac8f078a              # double 0.42578451014934926
	.quad	0x3fc7eadebd3c9104              # double 0.18685516586368334
	.quad	0x3fda5c8411f3ec5a              # double 0.41189672234731278
	.quad	0x3fee5d232a196719              # double 0.94886930677896253
	.quad	0x3feed1bdefeefc86              # double 0.96310326444644612
	.quad	0x3fc0c9250fab0414              # double 0.13113845124283385
	.quad	0x3fecc6005353053a              # double 0.89917007707860042
	.quad	0x3fea5a89b91329d2              # double 0.82355199954445824
	.quad	0x3fe8f923b464d2f9              # double 0.78041253312275594
	.quad	0x3fe9e6e768ba2d9b              # double 0.80943651632826474
	.quad	0x3fee1f6e72a188f9              # double 0.94133684529177153
	.quad	0x3fe091b193585fa3              # double 0.51778486994134132
	.quad	0x3febf9d8010ab384              # double 0.87424850657917874
	.quad	0x3fd578f59875e878              # double 0.33550777329185832
	.quad	0x3fdbc6d6f890c71c              # double 0.4340112140081247
	.quad	0x3fcf620224c1c1bc              # double 0.24517847819107697
	.quad	0x3fe26af46573af7d              # double 0.57555599036048444
	.quad	0x3fdcfe96c76276aa              # double 0.45303887816576582
	.quad	0x3feea024f7e19d41              # double 0.95704887785260706
	.quad	0x3fd80cc1c942e402              # double 0.37577862409995089
	.quad	0x3fdab1f37217f93c              # double 0.41711126462896053
	.quad	0x3feb0acec024dfa1              # double 0.84506928947574889
	.quad	0x3feb9c8976faa303              # double 0.86285851705642391
	.quad	0x3fdcc89eacbe7870              # double 0.44974486226590837
	.quad	0x3fdc375f22cf46fc              # double 0.44087961577780255
	.quad	0x3fdea772c4ea9038              # double 0.47897023420432872
	.quad	0x3fe44481a21c9a8b              # double 0.63336259520004157
	.quad	0x3fa80595a432ae80              # double 0.046917606633852138
	.quad	0x3fd5046e9998b33c              # double 0.32839550971657494
	.quad	0x3fd4b8fb502a83da              # double 0.32379038647382929
	.quad	0x3fd64a2f52380956              # double 0.34827788380802838
	.quad	0x3fede335fe964bfa              # double 0.9339857075123057
	.quad	0x3fddeaaa4a741c3a              # double 0.46744782706122445
	.quad	0x3fefda8170b6ef66              # double 0.99542305006569332
	.quad	0x3fdb19e6c4b67c04              # double 0.42345589838254249
	.quad	0x3fc3cb77fd13a35c              # double 0.15464687211285877
	.quad	0x3fb3331433cfe9e8              # double 0.074998152398542239
	.quad	0x3fea69955bef7c75              # double 0.825388602792272
	.quad	0x3fe369508065d08e              # double 0.60660576894453455
	.quad	0x3fd922bbcb2304a4              # double 0.39274496877266984
	.quad	0x3fe4349dea81ded4              # double 0.6314229564877345
	.quad	0x3fea257efc8ddc24              # double 0.81707715346317799
	.quad	0x3fdbc7b697daa88e              # double 0.43406452970032994
	.quad	0x3fe2f3fe2d6be559              # double 0.59228428717976123
	.quad	0x3fdc1a48d0102192              # double 0.43910427397397556
	.quad	0x3fc9c2bc004d4f40              # double 0.20125532164331084
	.quad	0x3fe04bb9888c9212              # double 0.50924374265429351
	.quad	0x3fdfe1a8981f0576              # double 0.49814810615142535
	.quad	0x3fb6ca65ecc61e30              # double 0.089025850587966415
	.quad	0x3fec3d3372d114c7              # double 0.88247082162038104
	.quad	0x3fe442b834d2de16              # double 0.6331444770539203
	.quad	0x3fbea8d22b4c0d38              # double 0.11976350361878907
	.quad	0x3fd0c9fabb730f80              # double 0.26232784562693467
	.quad	0x3f9f908ac75c2ca0              # double 0.030824821870777286
	.quad	0x3fd4bda7de474f6c              # double 0.32407566744699667
	.quad	0x3fa6d5e888f9ea20              # double 0.044600741120081944
	.quad	0x3fd3fd6ce37d393e              # double 0.31234285560357822
	.quad	0x3fe02d3badc7a975              # double 0.50552162114517663
	.quad	0x3fe3d484758f2b3b              # double 0.6196920677260559
	.quad	0x3fe4f3621f27215e              # double 0.65470987400571423
	.quad	0x3feb5844d28eba64              # double 0.85452500462072267
	.quad	0x3fe2b230cea120cc              # double 0.58425178868585581
	.quad	0x3fe3d5c58d15a99c              # double 0.61984517627324776
	.quad	0x3fe4abc4ab7f05ab              # double 0.64596780295703604
	.quad	0x3fed475e0dc5ede2              # double 0.91496184053488272
	.quad	0x3fe2e9ff1e77d666              # double 0.5910640330391288
	.quad	0x3f9d6e5f5580d400              # double 0.028741349786475467
	.quad	0x3fd6bc3e3f5b36ca              # double 0.35523945033206117
	.quad	0x3fdd570a48dd00b6              # double 0.45843751063876981
	.quad	0x3fd4f03ef2050638              # double 0.32716344485024562
	.quad	0x3fecb03783f71e10              # double 0.89651084684823168
	.quad	0x3fdd23f4b4e19b0c              # double 0.45531957306086279
	.quad	0x3fca1ac36a238258              # double 0.20394175226739963
	.quad	0x3fec728bec8d4880              # double 0.88898273660221605
	.quad	0x3fe445e6b4b8cd27              # double 0.63353286072962056
	.quad	0x3fe54cdff5a04c6a              # double 0.6656341359506659
	.quad	0x3fec54780e96f8a7              # double 0.88531115388447723
	.quad	0x3fd8605a0037a08e              # double 0.38088083287448959
	.quad	0x3fd19610a27d1edc              # double 0.2747842394642086
	.quad	0x3fe62406088dd1e4              # double 0.69189740820598589
	.quad	0x3fd3594bfabc2f24              # double 0.3023252438149362
	.quad	0x3fe4c116d08bb153              # double 0.64857044917656947
	.quad	0x3fe58f305f517abb              # double 0.6737291204152237
	.quad	0x3fe9be56396e6ec3              # double 0.80448447434488235
	.quad	0x3fd888449f219dd2              # double 0.38331714191596433
	.quad	0x3fd9079e03786954              # double 0.39108991946127003
	.quad	0x3fa3e9864e047f10              # double 0.038891026519421001
	.quad	0x3fedf9601bef566a              # double 0.93669133621251643
	.quad	0x3fdb3b5b2fc502c6              # double 0.42549781479833049
	.quad	0x3fe6aae1e49cd38d              # double 0.70835966730975175
	.quad	0x3fe30a2ec78bc2b9              # double 0.5949930093175545
	.quad	0x3fe4f697cfc9e8b3              # double 0.65510168632251575
	.quad	0x3fe9599bd833c655              # double 0.79218857028008449
	.quad	0x3fee9854f95c190a              # double 0.95609520629003097
	.quad	0x3fe1694a5dd6e527              # double 0.54410284355177374
	.quad	0x3fe70cf256ff060e              # double 0.72033040038530927
	.quad	0x3fed9f800aa838ae              # double 0.92572023469417331
	.quad	0x3fe63212b839c7fe              # double 0.69361244184096882
	.quad	0x3fe451c47a590dbc              # double 0.6349813832861666
	.quad	0x3fe7e7dc90992083              # double 0.74705341569735173
	.quad	0x3fdd1ee7a532897c              # double 0.45501128323134998
	.quad	0x3fd91be2e575f846              # double 0.39232704551966824
	.quad	0x3fd6b6b3b2319088              # double 0.35490124131889234
	.quad	0x3fe0cb37bf8fd550              # double 0.52480685629294932
	.quad	0x3fedbc800c45d4e4              # double 0.92926027676608358
	.quad	0x3fdcf16de12e0278              # double 0.45223566999633347
	.quad	0x3fc5a8a4cd6f0018              # double 0.16920909911095872
	.quad	0x3faee4e943753660              # double 0.060340203747369925
	.quad	0x3fd92fe44da4b114              # double 0.39354808409076836
	.quad	0x3fbab384c0cea5e8              # double 0.10430173594672676
	.quad	0x3f9eabccb11256a0              # double 0.029952238376231066
	.quad	0x3fe3837699c44330              # double 0.60979776413487308
	.quad	0x3fdeea075b774d78              # double 0.48303398067692838
	.quad	0x3feb13ef7fbfaf36              # double 0.8461835379689322
	.quad	0x3fa1b2bcbb2ddfa0              # double 0.034566781853697437
	.quad	0x3fe2945e2ca0af9b              # double 0.58061131206840189
	.quad	0x3fe2009ee2720d1c              # double 0.56257576205863158
	.quad	0x3fedb3b02918cda6              # double 0.92818458582626273
	.quad	0x3fea2a84b417a7b6              # double 0.81769023107812333
	.quad	0x3fe215f292e8feea              # double 0.5651791447962442
	.quad	0x3fe4c36e44d3e401              # double 0.64885629122647981
	.quad	0x3fceb44d81553038              # double 0.23987740340305819
	.quad	0x3fefdd1b0ee2a49c              # double 0.99574044139184847
	.quad	0x3fce67a89ee5aff0              # double 0.23753841169980161
	.quad	0x3fe863a281053789              # double 0.76216244887631135
	.quad	0x3fe210126688e56b              # double 0.56446189905470356
	.quad	0x3fe7486b2b7d25a3              # double 0.72759016508023355
	.quad	0x3fb34dbd577199d8              # double 0.075404962395260511
	.quad	0x3fb5839f686ed570              # double 0.084039652820896426
	.quad	0x3fd2e353af93c0f4              # double 0.2951249327297909
	.quad	0x3fd911d83dc99bbe              # double 0.39171415361345996
	.quad	0x3fdcde19837b2daa              # double 0.45105588760335513
	.quad	0x3fd82418bc6b2e6e              # double 0.377203163149466
	.quad	0x3fbfdaf3b69610c8              # double 0.12443469245596639
	.quad	0x3fe4384083fa11bc              # double 0.63186670090413299
	.quad	0x3fc0bfa586ab25b0              # double 0.13084858966457835
	.quad	0x3fe7fa127ba7f685              # double 0.74927639152129244
	.quad	0x3fe2581edd00ac90              # double 0.5732569042642286
	.quad	0x3fe480660d51a6f2              # double 0.6406736621986211
	.quad	0x3fe3e48fedbf1325              # double 0.62165066180077544
	.quad	0x3fddfb8adac5621c              # double 0.46847792972906332
	.quad	0x3fc9a26c3312af30              # double 0.20026924604223373
	.quad	0x3fe5abcea53f0c9c              # double 0.67722255968728318
	.quad	0x3fc77a4d74c9e358              # double 0.18341987803048698
	.quad	0x3fd3bfbcce7b3bf4              # double 0.30857772983739484
	.quad	0x3fe551796cb1aea0              # double 0.66619559506712633
	.quad	0x3fe3a5dd443a0afd              # double 0.61399710965665089
	.quad	0x3fe0d1e487605dc2              # double 0.52562166634282215
	.quad	0x3fd309334b4ea63a              # double 0.29743654588910184
	.quad	0x3fe1389eb296e28f              # double 0.53816161041966548
	.quad	0x3fd41a0223826be8              # double 0.314087423970419
	.quad	0x3fd8ab3718c84e04              # double 0.38545014782104681
	.quad	0x3fe0afbae6ae71e4              # double 0.5214514260765637
	.quad	0x3fe129c23fbc3707              # double 0.53634750793727981
	.quad	0x3fe9e61fd634a8a5              # double 0.80934135281610919
	.quad	0x3fe53d24fb47cd3a              # double 0.66371392324655365
	.quad	0x3fd6e2ddfb189352              # double 0.35759686966985271
	.quad	0x3fe70e568d78586b              # double 0.72050025587919941
	.quad	0x3fecffb15f792882              # double 0.9062125076973333
	.quad	0x3fb48336b98d3bb8              # double 0.080127163220125364
	.quad	0x3fc2e012ff8ef344              # double 0.14746320227086518
	.quad	0x3fee7653a761a9ba              # double 0.95194418613146259
	.quad	0x3fe4a73e43da55fc              # double 0.64541543247713618
	.quad	0x3fd09fe3b3a22ab6              # double 0.25975887815790644
	.quad	0x3fd8c0458cb131e0              # double 0.38673533191174947
	.quad	0x3fe1a4b13dbc2088              # double 0.55135404641716068
	.quad	0x3fe869667104bbfa              # double 0.76286623071598503
	.quad	0x3fe071f7b2c64323              # double 0.51391205708396048
	.quad	0x3fec700be097a53e              # double 0.88867753854461973
	.quad	0x3fbfd2bf8c571e90              # double 0.12430951286580183
	.quad	0x3fe49485c3bdae0b              # double 0.6431301901879477
	.quad	0x3fa720e7b8c04120              # double 0.04517292146931795
	.quad	0x3faca26df8e5d830              # double 0.055926739342723741
	.quad	0x3fdc4ca92fb0c778              # double 0.44217900903014806
	.quad	0x3fe259376c28cae7              # double 0.57339068531868242
	.quad	0x3fe7d14d0b279c39              # double 0.74429943255098074
	.quad	0x3fe8574a51ef1855              # double 0.76065555575110955
	.quad	0x3f9f9103a627a720              # double 0.030826622978486928
	.quad	0x3fe95613dd646aff              # double 0.79175751915622061
	.quad	0x3fd8d47fdaa4fea8              # double 0.38796993591311457
	.quad	0x3f8809d130586ec0              # double 0.011737474716077556
	.quad	0x3fd4c48f0716d7cc              # double 0.32449699108417174
	.quad	0x3fc97c411fe6c018              # double 0.19910444314655318
	.quad	0x3fe956bc7b039cbe              # double 0.7918379213923783
	.quad	0x3fd2827a6e0cb152              # double 0.28921375987080922
	.quad	0x3fde2f4c8defc42a              # double 0.47163690434450933
	.quad	0x3fe00c5ce794bacb              # double 0.50150914412173486
	.quad	0x3f9ef804f1db6660              # double 0.030242993604451818
	.quad	0x3fd9b17a6fba0912              # double 0.40145741377649913
	.quad	0x3fe07a42cfaccc0e              # double 0.51492443620225159
	.quad	0x3fb7a39a51635508              # double 0.092340130682107113
	.quad	0x3fef994bb4aa1d3a              # double 0.98746285711323556
	.quad	0x3feeae95543b4d0c              # double 0.9588114400052361
	.quad	0x3feff7a04eb537d8              # double 0.99897780773766964
	.quad	0x3f841a1c1a8b0140              # double 0.0098154254532124562
	.quad	0x3fcb7b51c817f5b4              # double 0.21470091123766866
	.quad	0x3fef3ee01ee5c3bf              # double 0.9764252284495497
	.quad	0x3fcc56a0ba8e01e4              # double 0.22139367207638749
	.quad	0x3fd883036bdde6c4              # double 0.38299642118327548
	.quad	0x3fe17b9ea90286dc              # double 0.54634030351391116
	.quad	0x3fd8561b4446f480              # double 0.38025552432720389
	.quad	0x3fe373bc150563ad              # double 0.60787777047800307
	.quad	0x3fe23dc0393fe712              # double 0.57003794843260125
	.quad	0x3fe61a665dcdc590              # double 0.69072264023832197
	.quad	0x3fe83052b6e98392              # double 0.75589881634742739
	.quad	0x3fe75af86e7584d2              # double 0.72985478948626281
	.quad	0x3fd3bf912ced1c72              # double 0.30856732737851822
	.quad	0x3fd6cbf506bc3b52              # double 0.35619855554334834
	.quad	0x3fea456c79bd0de3              # double 0.82097457673119967
	.quad	0x3fe0ec5a884a017e              # double 0.52885176295244185
	.quad	0x3fd5d0a8d4dc479a              # double 0.34086056506304774
	.quad	0x3fd7582e66ea017c              # double 0.36475715685084942
	.quad	0x3fce1536edf95a08              # double 0.23502241725755391
	.quad	0x3fe2aba71cf759a9              # double 0.58345370919669393
	.quad	0x3fd0cb82d211189c              # double 0.26242132677396923
	.quad	0x3fea497e9f7e95d4              # double 0.82147151137604135
	.quad	0x3fe7b767126e2bfa              # double 0.74113801574401283
	.quad	0x3fef4dfb18329ece              # double 0.97826914526100395
	.quad	0x3fe9ede32329bd00              # double 0.8102889715936783
	.quad	0x3fd7c9e5fad4f8d6              # double 0.37169789786629559
	.quad	0x3fe0cc2fc9e2287d              # double 0.52492513113362771
	.quad	0x3fdfecf023899f8a              # double 0.49883655043094477
	.quad	0x3fed671d32654f56              # double 0.91883716433447193
	.quad	0x3fd0a72ba9019fec              # double 0.26020328049207708
	.quad	0x3fe1ea5a60bf461b              # double 0.55985754867487303
	.quad	0x3f9ad5f0a63c9280              # double 0.026206741472508899
	.quad	0x3fe6940fcf5ee16a              # double 0.70557394506526561
	.quad	0x3fd7172524bc7d58              # double 0.3607876642945107
	.quad	0x3fd1cb3628e9eaaa              # double 0.27802804942590831
	.quad	0x3fea5964470e64dd              # double 0.82341207388085602
	.quad	0x3fafb4e2a76536d0              # double 0.061926920827870213
	.quad	0x3fb79da48c8d9c50              # double 0.092249187769639862
	.quad	0x3fcbe2293f74de58              # double 0.2178393897863653
	.quad	0x3fe281506481d206              # double 0.57828540449423893
	.quad	0x3feecf8512340c33              # double 0.96283200793585022
	.quad	0x3fe49473c58a0533              # double 0.64312161046851768
	.quad	0x3fec2ed38c4f6767              # double 0.88071610836344127
	.quad	0x3fb9d68eaefc1bb0              # double 0.10093013546075613
	.quad	0x3fe6f6c61bb996b3              # double 0.71762376227407854
	.quad	0x3fc7d89e466ad214              # double 0.18629816473334471
	.quad	0x3fe1fb1c8f41b2f7              # double 0.56190326671420976
	.quad	0x3fe3837527ade10a              # double 0.60979707479330725
	.quad	0x3fe1bc37e561e6bb              # double 0.55422587205176599
	.quad	0x3fde213c1bbcad84              # double 0.47077849110311143
	.quad	0x3fe5c0ebe4f9ec74              # double 0.67979998323370561
	.quad	0x3fe15625e6af4f8e              # double 0.5417661195337915
	.quad	0x3f750d7eade0dd80              # double 0.0051398228079543307
	.quad	0x3fc61682bc8315f8              # double 0.17256197170915732
	.quad	0x3fce800a3ebe28bc              # double 0.23828247130979274
	.quad	0x3fd76a952da010ce              # double 0.36588029342261741
	.quad	0x3fe03e6a60f637f3              # double 0.5076190847191796
	.quad	0x3fe08ebe17719bbd              # double 0.51742462710250658
	.quad	0x3fa07b3c7accd330              # double 0.032190217962499879
	.quad	0x3fdbb339492f34fe              # double 0.4328139509860448
	.quad	0x3fe089a2a10b8e42              # double 0.51680118040207668
	.quad	0x3fe1ab600bbb22ed              # double 0.55216982165538087
	.quad	0x3fe06547faa85cff              # double 0.51236342388702372
	.quad	0x3fd01885c8bab1e4              # double 0.25149674036472747
	.quad	0x3fb8ff524ba14a28              # double 0.097645896400799459
	.quad	0x3fda4b927712abb4              # double 0.41086255672660887
	.quad	0x3fe147ed84addda7              # double 0.54003024972819424
	.quad	0x3fb507bfda2d76a0              # double 0.082149496809018618
	.quad	0x3fd5f96de548091c              # double 0.34334895506630558
	.quad	0x3fa29833d7ba1320              # double 0.036317463001102945
	.quad	0x3fd7447227f72446              # double 0.36355260756369423
	.quad	0x3fec3df295fc0f43              # double 0.88256196302288747
	.quad	0x3fe4ab0d85ee539b              # double 0.64588047178641561
	.quad	0x3fd98f52714978f0              # double 0.39937268317397834
	.quad	0x3feb3cc45e46b2af              # double 0.85116785443604737
	.quad	0x3feecf64fbb36644              # double 0.96281670723255574
	.quad	0x3fe719d13179c0c0              # double 0.72190150893404592
	.quad	0x3fd92367727ddca0              # double 0.39278589421105359
	.quad	0x3fef544bbe6fed6a              # double 0.9790400237538226
	.quad	0x3fe7a3b8914e57fe              # double 0.7387354696281816
	.quad	0x3fecf7700d806619              # double 0.90520479809783005
	.quad	0x3fdf74f260549a04              # double 0.49151286513588865
	.quad	0x3fe5497c98125317              # double 0.66522054387550866
	.quad	0x3fe82a20c3e51306              # double 0.75514257679660157
	.quad	0x3fbaffffa5943a68              # double 0.10546872894722414
	.quad	0x3fed7696cb929501              # double 0.92072620163222052
	.quad	0x3fd247630cca373e              # double 0.28560711144460871
	.quad	0x3fed2b38a1294104              # double 0.91152602650439051
	.quad	0x3fe1c05f999f51bd              # double 0.55473308567393753
	.quad	0x3fdcee655deefc30              # double 0.45205053494641145
	.quad	0x3fd690ca28fd4012              # double 0.35258726122720063
	.quad	0x3feeac6e0c36aeee              # double 0.95854856858701765
	.quad	0x3fc5e056a30987ec              # double 0.17090876541902789
	.quad	0x3fe1fd5d7782837b              # double 0.56217835752259704
	.quad	0x3fe9b5b79f62c5e5              # double 0.80343228464169825
	.quad	0x3fe01389f14accc9              # double 0.502385112069896
	.quad	0x3fea72dc378417d0              # double 0.82652102320639109
	.quad	0x3fed0635b6ab9501              # double 0.90700803449422562
	.quad	0x3fdf5c60a167efa0              # double 0.49001327287964536
	.quad	0x3fc1d583908cf36c              # double 0.13932842786916966
	.quad	0x3fe7e498018964f6              # double 0.7466545133603677
	.quad	0x3feb2ccf71b7fdaa              # double 0.84922001085935972
	.quad	0x3fe3b7b033fe2c66              # double 0.61617288737160147
	.quad	0x3fe82a372f5798af              # double 0.75515326735037103
	.quad	0x3fe553fec67899f3              # double 0.66650332225691356
	.quad	0x3fdacc147cc115ca              # double 0.41870605643302083
	.quad	0x3fe46f224c54de58              # double 0.63856615932941008
	.quad	0x3fe612d3ed5652b0              # double 0.6897983203403637
	.quad	0x3fe3a9638932ef51              # double 0.61442734524414722
	.quad	0x3fead1afa50dd87d              # double 0.83809644925237559
	.quad	0x3fe845fa0d267a9d              # double 0.75854208534640899
	.quad	0x3fc51d0e172c2c00              # double 0.16494918948623649
	.quad	0x3fca34f5742098b0              # double 0.20474117441444184
	.quad	0x3fc1cd6f864d2dfc              # double 0.13908189828576656
	.quad	0x3feca14c02ac6f36              # double 0.89468956491643925
	.quad	0x3fe6cf3760387601              # double 0.712794959955943
	.quad	0x3f8fb97c22de4b40              # double 0.015490503133866462
	.quad	0x3fd9815b572fd230              # double 0.39852031244598418
	.quad	0x3fed75c1de5cb824              # double 0.92062467031587802
	.quad	0x3fd89f437c393aa8              # double 0.3847206795807474
	.quad	0x3fd90de933f8d616              # double 0.39147405696289306
	.quad	0x3fc9ba3e1a5f5f04              # double 0.20099617278787474
	.quad	0x3fe3f781edf238f3              # double 0.62396332239020891
	.quad	0x3fd5e076bb3231a8              # double 0.34182518273226004
	.quad	0x3fd53f75c3a51c82              # double 0.33199829202607856
	.quad	0x3fcf17dbc81d704c              # double 0.24291560431709269
	.quad	0x3fd693b399623368              # double 0.35276498774401555
	.quad	0x3fc80648fe46a75c              # double 0.18769180694408305
	.quad	0x3febed32f1e1f957              # double 0.87270495646206825
	.quad	0x3fd08a35118f5264              # double 0.25843550410107796
	.quad	0x3fe29979a745f47f              # double 0.58123476667937257
	.quad	0x3fe1ec133c74cf26              # double 0.56006776626461341
	.quad	0x3fd5c8920cdcd49e              # double 0.34036685234179653
	.quad	0x3fe81d6c0a767ddc              # double 0.75359155696417756
	.quad	0x3fc1f6ff66edc708              # double 0.14035027051755145
	.quad	0x3fda0f4eb6c86c86              # double 0.40718429422276647
	.quad	0x3fbba0889a4cd8a0              # double 0.10791829840749978
	.quad	0x3fef6c05595bb2b0              # double 0.98193614437840004
	.quad	0x3fead037bc3c3dca              # double 0.83791720165930283
	.quad	0x3fefa4024c229e5f              # double 0.98877062673723148
	.quad	0x3fc7bd7cbe9303e0              # double 0.18547019296059286
	.quad	0x3fd9ae316871fa48              # double 0.40125689697007205
	.quad	0x3fdd5e8bed322e00              # double 0.45889566577599794
	.quad	0x3fe059813f6fa992              # double 0.51092588796500338
	.quad	0x3fee0c28314be621              # double 0.93898400905817792
	.quad	0x3fe2966a21ef5b9b              # double 0.58086115482261691
	.quad	0x3f9ccb691e3aec40              # double 0.028119699926474562
	.quad	0x3febc6310d070bb1              # double 0.86794331116140289
	.quad	0x3fc4342c21ca0260              # double 0.15784217500551545
	.quad	0x3fd0d2f772d806da              # double 0.26287637915821238
	.quad	0x3fec6382ea21b100              # double 0.88714738587216857
	.quad	0x3fe01c7b404c0afa              # double 0.50347673948303329
	.quad	0x3fcd0e4c01a71d38              # double 0.22699880676939599
	.quad	0x3f8e71a665489940              # double 0.014865207639627287
	.quad	0x3fe5488b3260bf78              # double 0.6651054367011815
	.quad	0x3fee7b738fbd2ffa              # double 0.95256975244546926
	.quad	0x3fce8f5a9316ffb0              # double 0.23874981100197834
	.quad	0x3fe34b030aba4fa2              # double 0.60290672393101752
	.quad	0x3fe686d88a7cd924              # double 0.70396067665459272
	.quad	0x3fd9880b6320005c              # double 0.39892849617172543
	.quad	0x3fed68d391a30a28              # double 0.91904619641019725
	.quad	0x3fd7d83edc24f39a              # double 0.37257358072729974
	.quad	0x3fe182734e7ac679              # double 0.54717412307782276
	.quad	0x3fd7e6ab7dd9fdc2              # double 0.37345397272289571
	.quad	0x3fe49bc91832b0d3              # double 0.64401678777860594
	.quad	0x3fe9d8ea2f36d396              # double 0.80772885533825689
	.quad	0x3fef78433a1c19cf              # double 0.9834304938274786
	.quad	0x3fec3ec6c8ba8df5              # double 0.88266314701871684
	.quad	0x3fe4e4cf3535a238              # double 0.65293083565217724
	.quad	0x3fdf495040106a98              # double 0.48884969955694535
	.quad	0x3fa4c17213d554c0              # double 0.040538372918186294
	.quad	0x3fd8648d527644f0              # double 0.3811372094433656
	.quad	0x3fcfaced236b8a9c              # double 0.24746479253288534
	.quad	0x3fe3a4d4112034f9              # double 0.61387065262684282
	.quad	0x3fe0241cc4714d9a              # double 0.50440824859326772
	.quad	0x3fe1a743cdd2cfc6              # double 0.55166807365321158
	.quad	0x3feb83ed92f0e347              # double 0.85985449504287537
	.quad	0x3fe74315a3892d24              # double 0.72693902912707076
	.quad	0x3fe83ad1fcdd30ff              # double 0.75718020808702124
	.quad	0x3fdfed3833d49922              # double 0.49885373174255865
	.quad	0x3fa484c5eaab58c0              # double 0.040075478454740132
	.quad	0x3fd6641e24b58958              # double 0.34986070237041167
	.quad	0x3f57608732ec0400              # double 0.0014268226911442472
	.quad	0x3fed7a4bcd312488              # double 0.92117872311168103
	.quad	0x3fdd0a1ffe5f0fec              # double 0.45374297944022035
	.quad	0x3fcb1869af321ae4              # double 0.21168252043226865
	.quad	0x3fd320c7ad073236              # double 0.29887573144222601
	.quad	0x3fdfc18863de0322              # double 0.49618730309161851
	.quad	0x3fd63b4508f3cbbc              # double 0.34736753343821269
	.quad	0x3fec4787a36b1893              # double 0.88373166959424265
	.quad	0x3fda4d96ee1fc194              # double 0.41098569158841625
	.quad	0x3fbdf08c31cc5470              # double 0.116951715619807
	.quad	0x3fea6fdfb4c82046              # double 0.82615647610601495
	.quad	0x3fee260a645895d7              # double 0.94214362715563993
	.quad	0x3fe31c088e781951              # double 0.59717204881671127
	.quad	0x3fc599408d3a846c              # double 0.16873938461234006
	.quad	0x3fe77d466e9d4303              # double 0.73404237369877057
	.quad	0x3fd6f6ab75a17a14              # double 0.35880552756671702
	.quad	0x3fe1d2b4fb9501aa              # double 0.556971064921574
	.quad	0x3fce6024a7e230d4              # double 0.23730905721129736
	.quad	0x3feca4039e25c6d7              # double 0.89502125633426999
	.quad	0x3fda8d24c1336378              # double 0.41486472003230501
	.quad	0x3fcc12745ba2ed78              # double 0.21931318735537864
	.quad	0x3fc4acb1c7391320              # double 0.16152021625216495
	.quad	0x3fda4782b7f04518              # double 0.41061466181516115
	.quad	0x3feb1fd2336c62fa              # double 0.84763441127424177
	.quad	0x3fe64ed12ff57aad              # double 0.69712123267148274
	.quad	0x3fe70eb300f92bd7              # double 0.72054434003927781
	.quad	0x3fe32afcc8771649              # double 0.59899748948436937
	.quad	0x3fd3e73f558e7498              # double 0.31098922114490213
	.quad	0x3f865e1d999fe140              # double 0.010921698809383984
	.quad	0x3fe8a7bb30d87202              # double 0.77047500171789829
	.quad	0x3fb55455d6c37ea8              # double 0.08331810467961509
	.quad	0x3fe7714425fc46d0              # double 0.73257644099268227
	.quad	0x3fda9622ca23fccc              # double 0.41541356792727124
	.quad	0x3febeec8226b9826              # double 0.87289816591942748
	.quad	0x3fd636d93ce5325a              # double 0.3470976919823322
	.quad	0x3fe928f2a9d8e983              # double 0.78624852345755902
	.quad	0x3fe3235a4d7b6ac1              # double 0.59806552060339169
	.quad	0x3fb036ab5fac9028              # double 0.063334189279487974
	.quad	0x3fc243493d05aa1c              # double 0.14267840842815438
	.quad	0x3fa7bdcb657ed0d0              # double 0.046369892253467548
	.quad	0x3fad81f7b8b28220              # double 0.057632199569756404
	.quad	0x3fe37bc650eb3cfc              # double 0.60885921291801948
	.quad	0x3fe82f2842cb1635              # double 0.75575650258605853
	.quad	0x3fe25f2e96f13b70              # double 0.57411889534874483
	.quad	0x3fc6da7dd59e9e88              # double 0.1785428326668248
	.quad	0x3feb4830cf812c31              # double 0.85256233719099417
	.quad	0x3fedc1ba4f17f4fd              # double 0.92989840934720258
	.quad	0x3fb22f0751a069b0              # double 0.071030099323627693
	.quad	0x3fc318241a2ad8f0              # double 0.14917422559455629
	.quad	0x3fdbd957d934e478              # double 0.43514057361205216
	.quad	0x3f69186bde554e00              # double 0.0030634028250149381
	.quad	0x3fe21693509e3db6              # double 0.56525579210022303
	.quad	0x3fb6049d2ec84d10              # double 0.086007903977862065
	.quad	0x3fd87a680b2f0da4              # double 0.38247109501045373
	.quad	0x3fc596e543ddde14              # double 0.168667467248938
	.quad	0x3fdead3d6d3af958              # double 0.47932372729328199
	.quad	0x3feabbadd5fa9b63              # double 0.83541003983269169
	.quad	0x3fe72809b045fb6f              # double 0.72363743236915734
	.quad	0x3feac136c8bae4e7              # double 0.83608569340790673
	.quad	0x3fdf0178435411ea              # double 0.48446470809019948
	.quad	0x3fb0bc9a3bb84300              # double 0.065377845363638443
	.quad	0x3fe61dd8bee51c22              # double 0.69114339145824411
	.quad	0x3fd7b2b4a9562160              # double 0.37028233086359386
	.quad	0x3fbcc0bcf45a6d00              # double 0.11231595006613659
	.quad	0x3fd2f0a8f5f15f2c              # double 0.29593872087342521
	.quad	0x3fd09d634d09e1d2              # double 0.25960619471837021
	.quad	0x3fdac911223db0c8              # double 0.41852215141149118
	.quad	0x3fecdea91658154c              # double 0.90218023647381917
	.quad	0x3fe6003ae2279a36              # double 0.68752807780112479
	.quad	0x3fed50747db0a5b3              # double 0.91607117222627321
	.quad	0x3fa5f54daf2409b0              # double 0.042887141828049535
	.quad	0x3fe341fb4aa3c63c              # double 0.60180439546656528
	.quad	0x3fb5277d0367eec0              # double 0.082633794147052519
	.quad	0x3fd939b34b833178              # double 0.39414675115838049
	.quad	0x3fe40f6ba0d2fb42              # double 0.62688237582174389
	.quad	0x3fd172bcbbc70562              # double 0.27262800538672682
	.quad	0x3fd735ba36c88800              # double 0.36265426015791036
	.quad	0x3fe2dc1a6e691b2e              # double 0.58936807217182774
	.quad	0x3fd8abe71e5f8226              # double 0.38549211469765721
	.quad	0x3fe0dcc6e04a4c0a              # double 0.52695030028041967
	.quad	0x3fe2b1bed8c37984              # double 0.58419744812617624
	.quad	0x3fee59298c5480d4              # double 0.94838406952114917
	.quad	0x3fb8bf0a76e12208              # double 0.096665052436158416
	.quad	0x3fef5604dd30970f              # double 0.9792503662217501
	.quad	0x3fa1d9e810f9f1a0              # double 0.034865619728381647
	.quad	0x3feb4024dee2769a              # double 0.85158008129265572
	.quad	0x3fcbc76c10bd8d5c              # double 0.2170233804455205
	.quad	0x3fb451cf6f982cf0              # double 0.079373326058135296
	.quad	0x3fe68b6a6f3a0224              # double 0.70451852535194748
	.quad	0x3fd01fc3bd7c46c2              # double 0.25193875793875631
	.quad	0x3fe3478c0753cb2e              # double 0.60248376303784368
	.quad	0x3fd783a96e14ec92              # double 0.36741100073022281
	.quad	0x3fea7653889dc105              # double 0.82694412882668245
	.quad	0x3fd091cd23d0bf74              # double 0.25889900682067624
	.quad	0x3fe790e1804fc259              # double 0.73643565235949915
	.quad	0x3feef2d62bec7520              # double 0.96714314059105177
	.quad	0x3fe2daef68076d9e              # double 0.58922548597495328
	.quad	0x3fdc9df8b493c4d2              # double 0.44714181551451049
	.quad	0x3fdf8d3905274048              # double 0.49299455168966633
	.quad	0x3fc6dfc21b752364              # double 0.17870355930997583
	.quad	0x3fe109445096b6a9              # double 0.53238120784745491
	.quad	0x3fe0bfe255a67e82              # double 0.52342335442149612
	.quad	0x3fb3cef74e240e40              # double 0.077376801087717162
	.quad	0x3febe3190b44a9ed              # double 0.87147190285514642
	.quad	0x3fd0bbf5a6116f9e              # double 0.26147214143360908
	.quad	0x3fe33714b8d8da13              # double 0.60047374823517641
	.quad	0x3fe5b9646cc78907              # double 0.67888089414580655
	.quad	0x3fcef3dc8ab27938              # double 0.24181706211397525
	.quad	0x3fd8bfa5c37e8864              # double 0.38669723597752736
	.quad	0x3fd9e47d7717a0e0              # double 0.40457092886073376
	.quad	0x3fc696f21f5cb49c              # double 0.17648149997095153
	.quad	0x3fef0d2d78cb3d55              # double 0.9703585967307996
	.quad	0x3fdda8470ffb508e              # double 0.46339584885323226
	.quad	0x3fba01f3bc665b30              # double 0.10159228658299635
	.quad	0x3fa988e5a77e0a00              # double 0.049872566886751457
	.quad	0x3fe9a78249936f7c              # double 0.80169786806389664
	.quad	0x3fe8f53f6ccf041b              # double 0.77993746997538282
	.quad	0x3fd758de056194a0              # double 0.36479902768616945
	.quad	0x3fd0b7db18f73bc2              # double 0.26122167051374501
	.quad	0x3fcd0adfd8187b30              # double 0.22689436008018893
	.quad	0x3fe89d539b45c61a              # double 0.76920490576430045
	.quad	0x3feb238ea3c8921e              # double 0.84809047688446859
	.quad	0x3fef265d8fed2140              # double 0.9734332858143162
	.quad	0x3febb1478da1c03e              # double 0.86539056456059149
	.quad	0x3fd4c30e95c123fc              # double 0.32440533279856232
	.quad	0x3fef15aa747da4cb              # double 0.97139475586041024
	.quad	0x3fc9cb77b88f3bc8              # double 0.20152184020704866
	.quad	0x3feacf5c92420fef              # double 0.83781269613291254
	.quad	0x3fd345a1c4fbdb3c              # double 0.30112499462795816
	.quad	0x3fe9f7ddfbf92159              # double 0.81150721753605659
	.quad	0x3fc6b7b9c3c5817c              # double 0.17748186167865387
	.quad	0x3fc6628ef5778ae4              # double 0.17488276467982822
	.quad	0x3fd6d39d246903ec              # double 0.35666588359532514
	.quad	0x3fe4698d904e8143              # double 0.63788488564390666
	.quad	0x3fe4084a4776e961              # double 0.62601198156270865
	.quad	0x3fe8c4ee0b08d27b              # double 0.77403928904693886
	.quad	0x3fbb191fb1e80ef8              # double 0.10585210889263041
	.quad	0x3fea79d033aaec56              # double 0.82736978617993873
	.quad	0x3fe659c5fd49d730              # double 0.69845866651914967
	.quad	0x3fc627d0371d52f4              # double 0.17309000674381247
	.quad	0x3fe760a4ce6e9e79              # double 0.73054733580370546
	.quad	0x3fe5d0133701f2e1              # double 0.68164978736566806
	.quad	0x3fef9fa8be7ae339              # double 0.98823964312678136
	.quad	0x3fcd9a26c439cbe4              # double 0.23126682835899637
	.quad	0x3fd5be79483fd8a2              # double 0.33975059562306786
	.quad	0x3fef53240338a767              # double 0.97889900807534224
	.quad	0x3fe57dd1acda00e3              # double 0.67160876998971408
	.quad	0x3fd139f6c5ede460              # double 0.26916283921270256
	.quad	0x3fe3409b3c8e1db7              # double 0.60163652255226097
	.quad	0x3fdfa7f129bfc30c              # double 0.49462536885316477
	.quad	0x3fd743dd6e4185a0              # double 0.3635171486585822
	.quad	0x3febb0e6281bfd35              # double 0.86534412225584012
	.quad	0x3fe0afbd09332b18              # double 0.52145244404650537
	.quad	0x3fe61cedf7a76108              # double 0.69103144044768872
	.quad	0x3fe3c2b1cdceb304              # double 0.61751642414819274
	.quad	0x3fd7c6e64bf3b4ba              # double 0.37151486794648358
	.quad	0x3fd63085f6ae5f98              # double 0.34671162691074064
	.quad	0x3fceb833d5b972a8              # double 0.23999641357194901
	.quad	0x3fd8615ab7b1ef90              # double 0.38094203890772693
	.quad	0x3fe4618b56e0a22e              # double 0.636907262499397
	.quad	0x3fe3be2b6b126066              # double 0.61696406280954075
	.quad	0x3fd2794fd201e164              # double 0.28865428455858066
	.quad	0x3fcf1f712e31a5c0              # double 0.24314703708232166
	.quad	0x3fa48d1c96cd7230              # double 0.040139096649657424
	.quad	0x3feaf3a0d5e4842c              # double 0.84223977828890417
	.quad	0x3fa1dab3d38066b0              # double 0.034871692245542874
	.quad	0x3fe45dc1e9ca3375              # double 0.63644500410155891
	.quad	0x3fdab162b1f1fa86              # double 0.4170767534014107
	.quad	0x3fe1e9263f0369c6              # double 0.55971061999599026
	.quad	0x3feaed67f573d88c              # double 0.84148023548074624
	.quad	0x3fde87f58dcb9934              # double 0.47704829070279975
	.quad	0x3fe7c4e965e02f9a              # double 0.74278707406618882
	.quad	0x3fce74b3ec6ea6f8              # double 0.23793648762266861
	.quad	0x3fbd1b7145fe9e40              # double 0.1136999889264354
	.quad	0x3fb0819117bf1e30              # double 0.064477031991480471
	.quad	0x3fc0d4bd76f2edd0              # double 0.1314923125081422
	.quad	0x3fedffa19eaff23d              # double 0.93745499604808169
	.quad	0x3fe20709a3545179              # double 0.56335908794657918
	.quad	0x3fb45006ad8b1888              # double 0.079346101159076921
	.quad	0x3fef1911d920503d              # double 0.97181026847329798
	.quad	0x3fd65eedda9ef414              # double 0.34954401349733755
	.quad	0x3fc48de6f392b068              # double 0.16058051007474039
	.quad	0x3fcea518c490dc44              # double 0.23941335294668609
	.quad	0x3fe3fbae4833a8ca              # double 0.6244727525893492
	.quad	0x3fe18a7d4187b184              # double 0.54815542982900967
	.quad	0x3febbacc8ec84a46              # double 0.86655261885818713
	.quad	0x3fd5cbca0884c2a2              # double 0.34056330520528821
	.quad	0x3feaf46fca6a7111              # double 0.84233846220334574
	.quad	0x3fe33f688eb6eecb              # double 0.60149028657857551
	.quad	0x3fe2898030f59eff              # double 0.57928475916284572
	.quad	0x3feaeb437eb260a6              # double 0.84121870751825578
	.quad	0x3fc31f4c687e0ca4              # double 0.14939265348593722
	.quad	0x3fc93bd2152026c4              # double 0.1971380808975508
	.quad	0x3fedd6ef83afc22c              # double 0.93248725624113637
	.quad	0x3fe6a993ce828cd3              # double 0.70820036252953356
	.quad	0x3fec6b34c49b15fc              # double 0.88808668517657407
	.quad	0x3fcbfc880d76a214              # double 0.21864414842026803
	.quad	0x3fe30c09d5d98c1d              # double 0.59521953361070568
	.quad	0x3fc72c929c64390c              # double 0.18104775081923952
	.quad	0x3fe1e78768d5250b              # double 0.55951281046978474
	.quad	0x3f925be7cdf7ed80              # double 0.017928716608350381
	.quad	0x3fe94d07bb23c84e              # double 0.79065310049760185
	.quad	0x3fd4ab81bd73cc6a              # double 0.32296794415669317
	.quad	0x3fd31623c4758dde              # double 0.29822630105465275
	.quad	0x3fe237a08618fbee              # double 0.56929041090904575
	.quad	0x3fea633670620983              # double 0.82461091947361387
	.quad	0x3fbfbac435093a90              # double 0.1239435796244186
	.quad	0x3fec804a41261685              # double 0.89066040729876816
	.quad	0x3fec223e1d215c7b              # double 0.87918000878825298
	.quad	0x3fd93f7888e48f20              # double 0.39449895256460543
	.quad	0x3fe795b6e44968b4              # double 0.73702568614250774
	.quad	0x3fd0a9009af32774              # double 0.260315085714516
	.quad	0x3fe5bf6e1a681c0a              # double 0.67961793096117273
	.quad	0x3fcef11daa987964              # double 0.24173327283728974
	.quad	0x3fe26215c477e2bd              # double 0.57447327015605476
	.quad	0x3feaa0965a17c356              # double 0.83210294338469271
	.quad	0x3fe9096b82cd1635              # double 0.78239989802449961
	.quad	0x3fd09a85bdea4794              # double 0.25943130060579134
	.quad	0x3fc57769c6cb0c8c              # double 0.16770670134255672
	.quad	0x3fd97e3b691f331e              # double 0.39832959428604109
	.quad	0x3fee73b95a8b05d5              # double 0.95162646946135487
	.quad	0x3fce142d4e1cd7d8              # double 0.23499075235457556
	.quad	0x3fa247903af5e8f0              # double 0.035702235410058125
	.quad	0x3fd43e15cfcd4bb2              # double 0.31628938000829543
	.quad	0x3fd605d25d46768c              # double 0.34410533055220394
	.quad	0x3fd28ff25324d91c              # double 0.29003580207371882
	.quad	0x3fb7c6f1a3e20e08              # double 0.092879393110756436
	.quad	0x3feb7eb1f58ec408              # double 0.85921571693882104
	.quad	0x3fecd6b10f9c6bba              # double 0.90120747612979035
	.quad	0x3fd8831f380fd1e4              # double 0.38300304865631873
	.quad	0x3fd10ec55d8f4e24              # double 0.26652654778192386
	.quad	0x3fd42ae5d0f825a8              # double 0.31511826903496365
	.quad	0x3fd7ca468692c7e4              # double 0.37172091619424763
	.quad	0x3fb65d60d2444840              # double 0.087362338385248428
	.quad	0x3fe3e4460f762cf3              # double 0.62161543865059199
	.quad	0x3fe2307594689ac6              # double 0.56841544138009037
	.quad	0x3fe47705c46eafd3              # double 0.63952911725709283
	.quad	0x3fe3e17cf27bb480              # double 0.62127539978031621
	.quad	0x3fbe461095084658              # double 0.11825660360798318
	.quad	0x3fe3278a09b65f93              # double 0.59857656380607904
	.quad	0x3f8ccc0f6a413c80              # double 0.014061088972225244
	.quad	0x3fef2730c572b7f6              # double 0.9735339981468758
	.quad	0x3fd38b7faf871694              # double 0.30538932935119445
	.quad	0x3fc41160c5da7c6c              # double 0.15678033505261924
	.quad	0x3fd9eb94ce4371d4              # double 0.40500373976626958
	.quad	0x3fed2fc30947f120              # double 0.91208030522060212
	.quad	0x3fd71b384299bfd8              # double 0.36103636268580663
	.quad	0x3fe099c3749b4e74              # double 0.51876995825519012
	.quad	0x3fe8124e8a350643              # double 0.75223471635417416
	.quad	0x3fd185c576e6ac28              # double 0.27378975497657843
	.quad	0x3fcd56d679811968              # double 0.22921257908655979
	.quad	0x3fb836802bfc1a08              # double 0.094581614244909074
	.quad	0x3fd8d55f138709a0              # double 0.38802315623265748
	.quad	0x3fee7add3b5c7fc2              # double 0.95249806970604589
	.quad	0x3fc841ffe04eebec              # double 0.18951414539864631
	.quad	0x3fee9c3f75ca2f8f              # double 0.95657322889154439
	.quad	0x3fd085bbc9377c4c              # double 0.25816244745323469
	.quad	0x3fda86e08571e9de              # double 0.41448224097953623
	.quad	0x3fd08cdd4b40b43c              # double 0.25859768246556647
	.quad	0x3fd20e39249dd432              # double 0.28211811614829962
	.quad	0x3fe9bbe4428bfd1e              # double 0.80418599126270229
	.quad	0x3fdfbb9a8907aa88              # double 0.49582541829901361
	.quad	0x3fd0eadbbb5f2d24              # double 0.26433461473489417
	.quad	0x3fe4357e07ed69f9              # double 0.63152982281036352
	.quad	0x3fe201bac6ffe6a5              # double 0.56271113268958983
	.quad	0x3fc8384973c504cc              # double 0.18921774056256024
	.quad	0x3fc2df980a181b50              # double 0.1474485444343494
	.quad	0x3feac5758a0b8220              # double 0.83660389863877426
	.quad	0x3fef2f9ed1d57863              # double 0.97456303580453285
	.quad	0x3fde5bff20979a80              # double 0.47436502631027366
	.quad	0x3fc72fede9843050              # double 0.18115018751302836
	.quad	0x3fd75baabcf62386              # double 0.3649699063612889
	.quad	0x3fe4b1d46a49945d              # double 0.64670773276578652
	.quad	0x3fe3c333fe80f17c              # double 0.61757850368262224
	.quad	0x3fc153fbc1a2c998              # double 0.13537547068478939
	.quad	0x3fe95451f461a78a              # double 0.7915429852557605
	.quad	0x3fe964ba1fb31f84              # double 0.79354578200671754
	.quad	0x3fc913520cda51d4              # double 0.19590211513117473
	.quad	0x3fe3878cefc1d0d5              # double 0.61029669597203429
	.quad	0x3fce22ba1295b5b4              # double 0.23543477923833012
	.quad	0x3f4e1651ec593400              # double 9.1818809659971468E-4
	.quad	0x3fc9841d7450a4dc              # double 0.19934433154529685
	.quad	0x3fe5f1dd85da4b46              # double 0.6857745756445659
	.quad	0x3fe7c56e4905f202              # double 0.7428504396662563
	.quad	0x3fc7c56df881ab64              # double 0.18571257242305272
	.quad	0x3fe481c86d7c4fbf              # double 0.64084264167694716
	.quad	0x3fdfbd32d96cfc12              # double 0.49592276795368762
	.quad	0x3fdce3ef2bd98c70              # double 0.45141200334746312
	.quad	0x3feed99d2763c17c              # double 0.96406419461531767
	.quad	0x3fdd2009b9814566              # double 0.4550804435321737
	.quad	0x3fd21a74d71eb15a              # double 0.28286477096368901
	.quad	0x3feea112df30b583              # double 0.95716231910562077
	.quad	0x3fedba968b95c401              # double 0.92902686369609466
	.quad	0x3fdf200e19f5ef3a              # double 0.48633148703787621
	.quad	0x3fe49c1e886f6100              # double 0.64405752799487459
	.quad	0x3fe275aa73e1fdfe              # double 0.57686350472789605
	.quad	0x3fd647ba5a233dd0              # double 0.34812792589670227
	.quad	0x3fd780a10000afe4              # double 0.36722588539373491
	.quad	0x3f92d64dc3c08c00              # double 0.018395628998529645
	.quad	0x3fb06c58203bda30              # double 0.064153201932506176
	.quad	0x3fc68be7309f1360              # double 0.17614450334636
	.quad	0x3fe4671780dc5b92              # double 0.63758444946403103
	.quad	0x3fee707c79726356              # double 0.95123122901996271
	.quad	0x3feb66e591c8d2f4              # double 0.85631063912896232
	.quad	0x3febe21c932cc351              # double 0.87135151619995999
	.quad	0x3fe1ffbd57006297              # double 0.56246821396333047
	.quad	0x3feed2de4413cd1e              # double 0.96324075027806422
	.quad	0x3fd7aca0c82512c4              # double 0.36991138024704306
	.quad	0x3fd6e5f0dee35a74              # double 0.35778447882095255
	.quad	0x3fe1a7ff352a5bce              # double 0.55175743469123417
	.quad	0x3fe4ca7f8a2436c2              # double 0.64971901875261318
	.quad	0x3fead8cfb6f41b84              # double 0.8389662335692809
	.quad	0x3fe900404c67cfe2              # double 0.78128065989448836
	.quad	0x3fed2e110518e0c1              # double 0.91187335010092607
	.quad	0x3fc6f75c4dc7e630              # double 0.17942384527104727
	.quad	0x3fd99abc4418868e              # double 0.4000693001745298
	.quad	0x3fb27374e9f8cab0              # double 0.072074229356796193
	.quad	0x3fed8dd26cb77a3d              # double 0.92356225236637324
	.quad	0x3f90393d757485e0              # double 0.015843353551764028
	.quad	0x3fc51caac3d5a458              # double 0.16493734895928713
	.quad	0x3fdad8ca6684e270              # double 0.4194818497813122
	.quad	0x3fc2c51715b9b17c              # double 0.14663971482094584
	.quad	0x3fca24b78ee678f4              # double 0.20424551465561758
	.quad	0x3fdf572a746aba50              # double 0.48969518059576433
	.quad	0x3f95bed534d19ca0              # double 0.021235782002261616
	.quad	0x3fd41bc86a95402c              # double 0.314195732197734
	.quad	0x3fec32853a489bd0              # double 0.88116704352875708
	.quad	0x3fd86c60aedbd330              # double 0.38161484790844025
	.quad	0x3fed1ee6d9f7b9ce              # double 0.91002218791782652
	.quad	0x3fe3d8f7cae0c3ac              # double 0.62023534416777215
	.quad	0x3fd53b47d20b79be              # double 0.33174319755735471
	.quad	0x3fee6adf4be69273              # double 0.95054592918729808
	.quad	0x3fe1099d951d9806              # double 0.53242377399578866
	.quad	0x3fcac91a856f2eb0              # double 0.20926219477984409
	.quad	0x3fe1fbe30810167f              # double 0.561997905490628
	.quad	0x3fcc7ce3d8846360              # double 0.22256134101987879
	.quad	0x3fe0399be6b9c18f              # double 0.50703234733195923
	.quad	0x3fd81ece22a2ec5c              # double 0.37688020117247389
	.quad	0x3fdbf7ac8d05d568              # double 0.43699182292706107
	.quad	0x3fab3475c27061d0              # double 0.053134613023022248
	.quad	0x3fec455d24e191d8              # double 0.88346726611467385
	.quad	0x3fd6324ba82f826a              # double 0.34681979584096345
	.quad	0x3feef2265fe3e776              # double 0.96705931404652179
	.quad	0x3fe10d1663a207aa              # double 0.5328475900607732
	.quad	0x3fed7b7c61afd65d              # double 0.92132395820108182
	.quad	0x3fdbed3fc6fb721a              # double 0.43635553771835733
	.quad	0x3fe9b03fa53d3b15              # double 0.80276472352292905
	.quad	0x3fc09fe800d56674              # double 0.1298799518652235
	.quad	0x3fea266237fcba53              # double 0.81718550620082409
	.quad	0x3fcffff321a093d0              # double 0.2499984659381469
	.quad	0x3fd9a60b5fe02fe8              # double 0.40075954783310275
	.quad	0x3fe40bc9098a6e7a              # double 0.62643863547732725
	.quad	0x3fefa63c7ad21273              # double 0.98904251087567585
	.quad	0x3fe478fb5188b443              # double 0.63976827549561965
	.quad	0x3fe20ff4ced43073              # double 0.56444778820288233
	.quad	0x3fe58c5a1e768a9f              # double 0.67338281583609561
	.quad	0x3feeb8f9a80c7cb8              # double 0.96007998296763386
	.quad	0x3fe0bbb4e6258053              # double 0.52291340780721851
	.quad	0x3f7547344e141780              # double 0.005194858852751838
	.quad	0x3fc48e94e928a4e8              # double 0.16060124764161476
	.quad	0x3f939e05720e44a0              # double 0.019157490812692246
	.quad	0x3fd757ce1c98846e              # double 0.36473419945293173
	.quad	0x3fd8e20b4b5ee4c6              # double 0.38879663811128429
	.quad	0x3fd8423e1d3fcf5a              # double 0.37904312950489827
	.quad	0x3fee86e54918babc              # double 0.9539667537372547
	.quad	0x3fe9ea4f4d49d1d4              # double 0.80985226722128311
	.quad	0x3fc23a6bdf6e7fcc              # double 0.14240787896869589
	.quad	0x3feef0d6be726373              # double 0.9668992728867195
	.quad	0x3fe0c1343d61a241              # double 0.52358448017646009
	.quad	0x3fd33ab1d682b2f4              # double 0.30045743892951227
	.quad	0x3fe65e65a429e913              # double 0.69902307570672162
	.quad	0x3fb352ab0e931c48              # double 0.075480166490806799
	.quad	0x3fd2afce02d0f1a8              # double 0.2919802691938238
	.quad	0x3fc8357a37990fdc              # double 0.18913200106373906
	.quad	0x3fe884f2aea02e9c              # double 0.76622900110801905
	.quad	0x3fe4263f8167d972              # double 0.62966895365279485
	.quad	0x3fd7772612d2a5ee              # double 0.36664726102989575
	.quad	0x3fd510ea6c12f9ea              # double 0.32915745309938294
	.quad	0x3fe782cc3f5e121f              # double 0.73471653343637289
	.quad	0x3fe855a7ba036204              # double 0.76045595484453132
	.quad	0x3fdf4fde0fb8f762              # double 0.48924972091105279
	.quad	0x3fc52358d5173464              # double 0.16514120487991868
	.quad	0x3fe51d75dc29976c              # double 0.65984623909456053
	.quad	0x3fccf970c4bc5bfc              # double 0.2263623200057906
	.quad	0x3fb429838d5e3d38              # double 0.078758451474858826
	.quad	0x3fd649ce151dec60              # double 0.34825470030017946
	.quad	0x3fe59e02d6e7cdcb              # double 0.67553846334197354
	.quad	0x3fc8f9f3980dd098              # double 0.19512791561613052
	.quad	0x3fdd68411b42a8ca              # double 0.45948817884585635
	.quad	0x3fe82fc3c993e8a4              # double 0.75583066340120241
	.quad	0x3fe7f6a3d2caa68f              # double 0.74885741396174577
	.quad	0x3fe73dee4b34a088              # double 0.7263099163874509
	.quad	0x3f610edf59370900              # double 0.0020822870517075431
	.quad	0x3fe4b0cfbcf5fd86              # double 0.64658343225885129
	.quad	0x3fd0bc60a4107172              # double 0.2614976503553158
	.quad	0x3fed8033d37d7d59              # double 0.92189971262625214
	.quad	0x3fc2a5778da62fac              # double 0.14567465225661402
	.quad	0x3fe6bdf58988681e              # double 0.71068837034113463
	.quad	0x3fe57ad7a99d662c              # double 0.67124541404627314
	.quad	0x3fde535794c46502              # double 0.47383679893535213
	.quad	0x3fe218ba0b9267fd              # double 0.56551840076576776
	.quad	0x3fe01d30af0490ed              # double 0.50356325324221773
	.quad	0x3fd5343caf672502              # double 0.33131329659643438
	.quad	0x3fd09bdc13c9353a              # double 0.2595129197332714
	.quad	0x3fd6a4b56ba3cfa2              # double 0.35380301963527405
	.quad	0x3fdb67ee6acaba02              # double 0.42821846417328413
	.quad	0x3fb557a1bd4af0f0              # double 0.083368405069396578
	.quad	0x3fcf62d86cab2a9c              # double 0.24520402246556194
	.quad	0x3fe20b4b95b9821d              # double 0.56387881510824267
	.quad	0x3fe6e0a4fec230fb              # double 0.7149224258187411
	.quad	0x3fe6b808f1918ce5              # double 0.70996520215376491
	.quad	0x3fd0e41576334418              # double 0.26392113249772953
	.quad	0x3fef06725cd19af5              # double 0.96953695419946817
	.quad	0x3fec31e11d9ee8f6              # double 0.88108878884602748
	.quad	0x3fe44de3f28bca9c              # double 0.63450810787465484
	.quad	0x3fdb536e5080c0a6              # double 0.42696721898665613
	.quad	0x3fe72e94b98ea82a              # double 0.72443615190173216
	.quad	0x3fcdafb19e4f09b4              # double 0.23192424993437799
	.quad	0x3feccef6b312d86c              # double 0.90026411986651799
	.quad	0x3fcabc1eed9e4034              # double 0.20886599161576813
	.quad	0x3fd201e8d3bac2b8              # double 0.28136654545509598
	.quad	0x3fd119a1be274cde              # double 0.26718944139174805
	.quad	0x3fd02841b1952fc4              # double 0.25245706884447494
	.quad	0x3fdac3c2fb41587a              # double 0.41819834267278788
	.quad	0x3fe237ab9571c462              # double 0.56929568470344472
	.quad	0x3f96804aa0e3cae0              # double 0.021973768300948104
	.quad	0x3fe56830e49a8fbb              # double 0.66896862649127031
	.quad	0x3fee579bf339f106              # double 0.94819447999137263
	.quad	0x3fe21b3f12bd3087              # double 0.5658259740826147
	.quad	0x3fe0ef23f260a031              # double 0.52919194545120807
	.quad	0x3fdc80ae172e3f84              # double 0.44535400642143252
	.quad	0x3fe0d7a78112f555              # double 0.52632498941208417
	.quad	0x3fe0293f0f19a3aa              # double 0.50503495167969459
	.quad	0x3fda4cd938105a9a              # double 0.4109404609202244
	.quad	0x3fd1306d6f6eabce              # double 0.26858077890454701
	.quad	0x3fd3e69c4e25830e              # double 0.31095035201546828
	.quad	0x3fda608ee77342da              # double 0.41214344599306474
	.quad	0x3f94f19d989a44e0              # double 0.020452940405964237
	.quad	0x3fb2da18935e6358              # double 0.073640380839049668
	.quad	0x3fe19c8a1cc0f2da              # double 0.55035882583578233
	.quad	0x3fe53a3244561761              # double 0.66335404726917713
	.quad	0x3fc67363aadbf8e0              # double 0.17539640276658641
	.quad	0x3fdb2818de2cc0b6              # double 0.42432233521231966
	.quad	0x3fe081a011fb2852              # double 0.51582339775019137
	.quad	0x3fdd97b7115faed8              # double 0.46238495537430202
	.quad	0x3fc134c6994f6df8              # double 0.13442308889248955
	.quad	0x3fd41d55cbc3ee92              # double 0.31429047488175244
	.quad	0x3fd3951d96ac505c              # double 0.30597629274530447
	.quad	0x3fef8ccb4286ab1c              # double 0.98593676560753662
	.quad	0x3fed21441566d1b7              # double 0.91031078510291408
	.quad	0x3feddb6cdee0e1de              # double 0.9330353119940431
	.quad	0x3fe21dc95891bc36              # double 0.56613604830443509
	.quad	0x3feede689c5bfd80              # double 0.96464949168141345
	.quad	0x3fa42e467cba2d00              # double 0.039415552831167489
	.quad	0x3fdafe67edd27b1c              # double 0.42177770829032268
	.quad	0x3fe7a5a3a303b399              # double 0.73896962965737878
	.quad	0x3fbdb80a24ab6750              # double 0.11608947177174156
	.quad	0x3fec261a13b9ec90              # double 0.87965110638414679
	.quad	0x3fc63b9a536b6f5c              # double 0.17369393418527579
	.quad	0x3fd616e6a269115e              # double 0.34514776096718502
	.quad	0x3fe4032103484642              # double 0.62538195267752195
	.quad	0x3fd4bc178fc24dba              # double 0.32398022688831996
	.quad	0x3fe3a2f8ce46c50f              # double 0.61364403046005289
	.quad	0x3fe8f0161c0c7242              # double 0.77930741766210354
	.quad	0x3fd0c1c96c564434              # double 0.26182780818732287
	.quad	0x3fed944c95fabe6f              # double 0.92435292523255252
	.quad	0x3fbed351bd2278d8              # double 0.1204119765047581
	.quad	0x3fea7aac24528bee              # double 0.82747466177204188
	.quad	0x3fdbb2801f3f2750              # double 0.43276980449137614
	.quad	0x3fe9261ca72ce5df              # double 0.78590233470384507
	.quad	0x3fbe07a2b889d268              # double 0.11730401044207783
	.quad	0x3fc498157f8380f0              # double 0.16089123464826782
	.quad	0x3fe3a7229621acac              # double 0.61415223429266552
	.quad	0x3fb468a5d0370ac8              # double 0.079721797307722331
	.quad	0x3fea2515e752d932              # double 0.81702704601665332
	.quad	0x3fc5d2b4da90ed68              # double 0.17049275085615112
	.quad	0x3fe7090f559e0bc3              # double 0.71985594484464632
	.quad	0x3fe5704aa2e1ce8e              # double 0.66995746434118231
	.quad	0x3fdaecdb55320c8e              # double 0.42070658988831944
	.quad	0x3fe614325d3c3e66              # double 0.68996542177223996
	.quad	0x3fbce07617077960              # double 0.11280000745998597
	.quad	0x3feadfa006152a67              # double 0.83979798496268365
	.quad	0x3fe676b947791577              # double 0.70199264487807411
	.quad	0x3fba5f445737b078              # double 0.10301615838369738
	.quad	0x3fdae51ea9fc4f7c              # double 0.42023436165003836
	.quad	0x3fdb7ece6f2edcaa              # double 0.42961464746208355
	.quad	0x3fd91dee2290450e              # double 0.39245179534289398
	.quad	0x3fe702a9d22615e5              # double 0.71907511753732634
	.quad	0x3fdadb95088b140a              # double 0.41965223154358056
	.quad	0x3fe92e650a282cc7              # double 0.78691341384674096
	.quad	0x3fdeb35fd68dc0ec              # double 0.47969814255249221
	.quad	0x3fd243dc7cb4e134              # double 0.28539192369818811
	.quad	0x3fc34de0373b1bb0              # double 0.15081408211537228
	.quad	0x3f9ffc52efd9d740              # double 0.031235977067317622
	.quad	0x3fe7257dbe571564              # double 0.72332656074347002
	.quad	0x3f818ebb897d0700              # double 0.0085730220158697357
	.quad	0x3fe3b9137d206914              # double 0.61634230078496666
	.quad	0x3fdedfe10ba43c62              # double 0.48241449486608279
	.quad	0x3fe77d9c87407759              # double 0.73408342758532819
	.quad	0x3fd55058215e2d34              # double 0.33302882441121828
	.quad	0x3fd81e873bb7060c              # double 0.37686329680954667
	.quad	0x3fe54fa049e127b6              # double 0.66596998624412751
	.quad	0x3fe25fda68092b1c              # double 0.57420082396979266
	.quad	0x3fecb3d91c561c64              # double 0.89695411238143352
	.quad	0x3fd96359d54a2ce2              # double 0.39668889836384669
	.quad	0x3fec08fe9088692e              # double 0.87609794835160471
	.quad	0x3fe4a4921f6ca2d5              # double 0.64508920800752867
	.quad	0x3fddcc7b1581136c              # double 0.46560551738757883
	.quad	0x3fb0c1d030712928              # double 0.065457355333965794
	.quad	0x3fe5301a4b170ef4              # double 0.66212191263227149
	.quad	0x3fee6f35096e252c              # double 0.95107509462210293
	.quad	0x3fd26178f2a489d6              # double 0.28719924636439254
	.quad	0x3fd9bdf51321f850              # double 0.40221907490184083
	.quad	0x3fed19c7b0d16f87              # double 0.90939697775637363
	.quad	0x3fee5723b639b0e7              # double 0.94813714590921172
	.quad	0x3feeb926e183022c              # double 0.96010154767288247
	.quad	0x3f9a48989f828400              # double 0.025667557464320367
	.quad	0x3fe92a0aae195088              # double 0.78638204578102577
	.quad	0x3fefc0e42e944369              # double 0.99229630563250481
	.quad	0x3fd5ff76b536a200              # double 0.343717267004223
	.quad	0x3fde06702f1661fe              # double 0.46914295767194847
	.quad	0x3fefb1c324c7e5b4              # double 0.9904494970680191
	.quad	0x3fd3ebf4ce4bf102              # double 0.31127662798077449
	.quad	0x3fd283b138ac7c50              # double 0.2892878583388141
	.quad	0x3fe3cc4dbce9de37              # double 0.61868941209008355
	.quad	0x3fc16f58fedecef4              # double 0.13621056027260858
	.quad	0x3fc2fc76dc68ef38              # double 0.14832959902002485
	.quad	0x3fcba5b168bdca6c              # double 0.21599404920887666
	.quad	0x3feae1a0e0b4ad8e              # double 0.84004253280493102
	.quad	0x3fc8f193db33b73c              # double 0.1948723621675813
	.quad	0x3fdf3a8f313b66de              # double 0.48794917877022026
	.quad	0x3fe3dbbe9d0201b8              # double 0.62057428994744779
	.quad	0x3fedf51c7fc64a4b              # double 0.93617081600161478
	.quad	0x3fd589bf996ffcf6              # double 0.33653249725462275
	.quad	0x3fe9fac004c670b9              # double 0.81185913975379898
	.quad	0x3fc73d145e9e30ac              # double 0.18155150051132318
	.quad	0x3fd65576b2d08352              # double 0.34896628820756803
	.quad	0x3fe01290157be884              # double 0.50226597019288066
	.quad	0x3fef1188f471f675              # double 0.97089050048061997
	.quad	0x3fd428b672b48e06              # double 0.31498490525902445
	.quad	0x3fe2e38021b9a48c              # double 0.59027105891176879
	.quad	0x3fe61c3514fd1521              # double 0.69094328021370555
	.quad	0x3fc257f514580b28              # double 0.14330924504619102
	.quad	0x3fcf304a3e4a16e0              # double 0.24366119424319432
	.quad	0x3fdcd5d34b64f60a              # double 0.45055086481792783
	.quad	0x3fd0445a8a1d93de              # double 0.25417197692723714
	.quad	0x3fe4f39cc212896d              # double 0.65473783402221175
	.quad	0x3fbb3bb7867fe978              # double 0.10637995752032292
	.quad	0x3fe8aececa88912d              # double 0.77133884007756637
	.quad	0x3fc579de5d4717f8              # double 0.16778163485122355
	.quad	0x3fee94480aa9d20c              # double 0.95560075838744884
	.quad	0x3fda0c4333b3dc24              # double 0.4069984440715777
	.quad	0x3fd3c01b5c54022c              # double 0.30860027328893369
	.quad	0x3feaed2a62c2a438              # double 0.84145087517857231
	.quad	0x3fee6c727b83fc06              # double 0.9507381832517019
	.quad	0x3fc25c043eb12a24              # double 0.14343312321791857
	.quad	0x3fc200974d5add08              # double 0.14064303662392086
	.quad	0x3fe4949c82bf1915              # double 0.64314103638096987
	.quad	0x3fd8aa50cc837260              # double 0.38539524051683394
	.quad	0x3fe8e8c517548ee5              # double 0.77841429287624619
	.quad	0x3fe2f18b3d977bbe              # double 0.5919853404010309
	.quad	0x3fd9f576dd388c66              # double 0.40560695270159497
	.quad	0x3fe92d9e3569eadb              # double 0.78681860382433955
	.quad	0x3fd1811a5c32cf74              # double 0.27350481990583053
	.quad	0x3fd780f4efb95526              # double 0.36724589739363223
	.quad	0x3fd2f6d7779508aa              # double 0.29631601980157518
	.quad	0x3fe19137006ba045              # double 0.54897642213928377
	.quad	0x3fe0109bcb6be950              # double 0.50202741366164538
	.quad	0x3fe861cc3462cf64              # double 0.76193819266925943
	.quad	0x3fe44fb37d55539c              # double 0.63472914199029473
	.quad	0x3fe3c039603cc250              # double 0.61721485897403205
	.quad	0x3fe85d1152cd139c              # double 0.76136079952322033
	.quad	0x3fe94a66af622391              # double 0.79033216719209254
	.quad	0x3fdf82b2ccd81ce0              # double 0.49235219959559906
	.quad	0x3fe100f6b78d357a              # double 0.5313676438324102
	.quad	0x3fb50d85c61cdd30              # double 0.082237587802286737
	.quad	0x3fdd759a2685ff38              # double 0.46030286562016753
	.quad	0x3fe4223c9f27105f              # double 0.62917929729929856
	.quad	0x3fab71d32e1a7270              # double 0.053602790239186571
	.quad	0x3fe9ab62e4e1fcb0              # double 0.8021711798063702
	.quad	0x3fe1b8483409b180              # double 0.55374536670346686
	.quad	0x3fa0f4ff8331cc20              # double 0.033119187130886241
	.quad	0x3fc44fe850b48c68              # double 0.1586885828083695
	.quad	0x3fea3bbbd739fbff              # double 0.81979171787668281
	.quad	0x3fe5802ca2633049              # double 0.67189628330516726
	.quad	0x3fda2e2b2dae4c42              # double 0.40906791173000923
	.quad	0x3fe488607b773eb7              # double 0.64164756884016227
	.quad	0x3fea98329f590699              # double 0.83107882616623663
	.quad	0x3fc211c88ab2d3cc              # double 0.14116770527257783
	.quad	0x3fe7c033375e12a7              # double 0.74221192182502171
	.quad	0x3fb83c4fb4468ad8              # double 0.094670278084361015
	.quad	0x3fa03497f24463e0              # double 0.031651256869913658
	.quad	0x3fd67c2b74cf5bf8              # double 0.35132872016168859
	.quad	0x3fea34e9ab6de603              # double 0.81895907861979855
	.quad	0x3fe542ee8c660076              # double 0.66442038938113401
	.quad	0x3fe5dd9c6e2c1962              # double 0.68330213087100966
	.quad	0x3fb6ed38fbba4f18              # double 0.089557229477858491
	.quad	0x3fa526ec93ab8a40              # double 0.041312592531330683
	.quad	0x3fe66e5289a54830              # double 0.7009670914069428
	.quad	0x3fdee2669862af62              # double 0.48256840592761396
	.quad	0x3fdb690b824d2774              # double 0.42828643536323985
	.quad	0x3fd1e701f8ffa16e              # double 0.27972459141030626
	.quad	0x3f8bcf643462dfc0              # double 0.013579161499691739
	.quad	0x3f89077886c7bf40              # double 0.012221280682723212
	.quad	0x3fec19863f483c50              # double 0.87811577186392675
	.quad	0x3fa3198376267270              # double 0.037304027722005695
	.quad	0x3fd6fed59a35b89a              # double 0.35930385646396135
	.quad	0x3fe5d570e7a02ba9              # double 0.68230481376064234
	.quad	0x3fa039c6f73d7b30              # double 0.031690805130656918
	.quad	0x3fdfacc60a87db80              # double 0.49492026356113428
	.quad	0x3fefbc9114dd7ad0              # double 0.99176839900231961
	.quad	0x3fdc98db06f6fabe              # double 0.44682956390526474
	.quad	0x3fe72ed3ee807bd9              # double 0.72446629125976891
	.quad	0x3fdeda90989ef392              # double 0.48209013847718396
	.quad	0x3fec27ef89cfcdf1              # double 0.87987496296267242
	.quad	0x3fcd2f744c34fff8              # double 0.22801068993612694
	.quad	0x3fc5415f44812578              # double 0.16605749936051573
	.quad	0x3fcb247963909720              # double 0.21205060350001137
	.quad	0x3fef3a80707a6a14              # double 0.97589132278818846
	.quad	0x3fd0f9048c9da632              # double 0.2651988385392513
	.quad	0x3fd238d863cb09f8              # double 0.28471956010267219
	.quad	0x3fea62f629edb554              # double 0.82458027066392469
	.quad	0x3fd6c1a9d9ddd11a              # double 0.35557028080008168
	.quad	0x3fe8b45c5ab0dd28              # double 0.7720166941934723
	.quad	0x3fef0d2fbba112ad              # double 0.97035967489553842
	.quad	0x3fe74df72e5f6325              # double 0.72826727921628687
	.quad	0x3feea97bb5099198              # double 0.95818887099135263
	.quad	0x3fee8ca3a81a0d47              # double 0.95466788132072444
	.quad	0x3febd098f040611b              # double 0.86921355175130388
	.quad	0x3fd967fa0326ceea              # double 0.39697122867367673
	.quad	0x3fe7ec381ab53a0e              # double 0.7475853463782316
	.quad	0x3fdeb3750dd956ee              # double 0.4797032008403751
	.quad	0x3fed7bc59574f9bf              # double 0.92135886374290255
	.quad	0x3fb0125c325f53d8              # double 0.062780153558676388
	.quad	0x3fb42fe0914f2fc0              # double 0.078855548358830241
	.quad	0x3fedc9c848b8bb14              # double 0.93088163569868465
	.quad	0x3fed9400b7c40ba7              # double 0.92431674854048118
	.quad	0x3fec0aa07f7710e4              # double 0.87629723449256546
	.quad	0x3fcaf8750b3db9d4              # double 0.21070731209643034
	.quad	0x3fbdb8ca9b8c8908              # double 0.11610094354231049
	.quad	0x3fed907af357af3d              # double 0.92388675239406093
	.quad	0x3fc1fe573e63592c              # double 0.14057436510365429
	.quad	0x3fd88823ef183526              # double 0.38330934857443066
	.quad	0x3fe56dfb1a5c4276              # double 0.6696753992892599
	.quad	0x3feb21dab51e0b8b              # double 0.84788260817036709
	.quad	0x3fdc9a85221d20e6              # double 0.44693115550445695
	.quad	0x3fc5c32f8b909608              # double 0.17001909556090333
	.quad	0x3fd1f09482be07c8              # double 0.28030884521296828
	.quad	0x3fd51e7da4979d9e              # double 0.32998601029836461
	.quad	0x3fe0585a4635c7ab              # double 0.51078523362069939
	.quad	0x3fc652baf47293d0              # double 0.17439972816387561
	.quad	0x3fda5be2ee9c5cee              # double 0.41185830404124502
	.quad	0x3fd2c66e0e7b1cb8              # double 0.29336120046759673
	.quad	0x3fb376f289597a90              # double 0.076033743412589283
	.quad	0x3fda866df1d912b8              # double 0.41445492380106996
	.quad	0x3fa2b34285d6a890              # double 0.036523894155224501
	.quad	0x3fea67a285329b9b              # double 0.82515073790715421
	.quad	0x3fdb1d2bbc65ad2c              # double 0.42365544698869217
	.quad	0x3fe4c76911c79d2f              # double 0.64934209320646186
	.quad	0x3fe1720a5319af01              # double 0.54517093878300227
	.quad	0x3fd53295ca0ca768              # double 0.33121247035398094
	.quad	0x3fce812611a91ba8              # double 0.23831630575497553
	.quad	0x3fd254e74e04f3b6              # double 0.28643210047794854
	.quad	0x3fd8f6277679ac2e              # double 0.39002405710079102
	.quad	0x3fe04e51a1f8fb32              # double 0.50956040988226037
	.quad	0x3fcb5e6cbddc3b40              # double 0.21381911535760345
	.quad	0x3fe5854315cf396e              # double 0.67251734027540322
	.quad	0x3fe26f76fb1cb52e              # double 0.57610653920497668
	.quad	0x3fa618c12e0bb720              # double 0.043157612677403145
	.quad	0x3fbf185c317d4ba0              # double 0.12146545608747639
	.quad	0x3fe055198e2d08fb              # double 0.5103881623147396
	.quad	0x3f69514fe98a7500              # double 0.003090530470514552
	.quad	0x3febb1dc7e5d9f9c              # double 0.86546158486179391
	.quad	0x3fee7b9034a79f27              # double 0.95258341106543731
	.quad	0x3fe08196553096b4              # double 0.51581875456459736
	.quad	0x3fd69be0b909e70c              # double 0.35326402731117024
	.quad	0x3fe30fa1264148d7              # double 0.59565789672549385
	.quad	0x3fdaf15e48e9152a              # double 0.42098195190586074
	.quad	0x3fe4d6251f39b7b5              # double 0.65114074801180399
	.quad	0x3fe35d60d50ab54e              # double 0.60514871225101685
	.quad	0x3fe5d488f7ad564b              # double 0.68219421743806075
	.quad	0x3feafd126c1d1105              # double 0.84339257350851027
	.quad	0x3fd593f61dbceb44              # double 0.33715584663484699
	.quad	0x3fbe7ff7b34cd0e8              # double 0.11914013030474602
	.quad	0x3fbd93cd3bc45d80              # double 0.11553652485996757
	.quad	0x3feb23c68048ace3              # double 0.848117113642186
	.quad	0x3fdb8c9885957030              # double 0.43045628590857898
	.quad	0x3fdbc2a52e96556c              # double 0.43375520276580093
	.quad	0x3fe7608993dfbdab              # double 0.73053435212744
	.quad	0x3fbd623d4c26ee48              # double 0.11478026494199256
	.quad	0x3fca88c5fd1d7f60              # double 0.20729899272100294
	.quad	0x3fc86c887c3b6308              # double 0.19081216875090257
	.quad	0x3fe3bf8202746398              # double 0.61712742309019841
	.quad	0x3fb603a37d3d2bc8              # double 0.085993021083751064
	.quad	0x3fe199426091557f              # double 0.54995840893631953
	.quad	0x3fedf08cf9d20816              # double 0.93561409752897151
	.quad	0x3fecfb519dd75507              # double 0.90567856624935039
	.quad	0x3fcbb5fd0d71e20c              # double 0.21649134785163004
	.quad	0x3fea78744647ecdd              # double 0.82720388151883706
	.quad	0x3fe4c0f504f70323              # double 0.64855433435159104
	.quad	0x3fe546f72f41c9db              # double 0.66491278867607251
	.quad	0x3fe77d301899ea80              # double 0.73403172306946374
	.quad	0x3fbf46a333f55868              # double 0.1221715928889765
	.quad	0x3fec32c0197c35c3              # double 0.88119511582925047
	.quad	0x3fef8259529bbafd              # double 0.98466173300207027
	.quad	0x3fcf6df07533fbb0              # double 0.24554258082204461
	.quad	0x3f9c59bdad73fec0              # double 0.027686084472405836
	.quad	0x3fdcef62e9d2d894              # double 0.45211098512971515
	.quad	0x3fe740696af8b2ea              # double 0.72661276715151968
	.quad	0x3fbdd91a6453e2e0              # double 0.11659398030668511
	.quad	0x3fd90aaad199cfe2              # double 0.39127607792693031
	.quad	0x3fd2615d9e25bdf6              # double 0.28719273037037796
	.quad	0x3fe02c5932dc0ffc              # double 0.50541362699050252
	.quad	0x3fcbadb9a050bd24              # double 0.21623916938686094
	.quad	0x3fefe765613725d6              # double 0.99699658381831102
	.quad	0x3fc82b75e9b89ea0              # double 0.18882631218115353
	.quad	0x3fd46aa7a73138be              # double 0.31900969817514724
	.quad	0x3fb12bec6ace0060              # double 0.06707646949325996
	.quad	0x3fc28223a63c45c8              # double 0.14459653489079316
	.quad	0x3fd54df4b6734218              # double 0.33288305108456617
	.quad	0x3f2751932f79b000              # double 1.7790719697374779E-4
	.quad	0x3fd5a9c95bd00132              # double 0.33848794904772028
	.quad	0x3fe7c22b30a5ad9d              # double 0.74245223523523729
	.quad	0x3fe8a23b14ab9288              # double 0.76980356251859039
	.quad	0x3fefb23d4f7c137d              # double 0.99050775074338981
	.quad	0x3fdaf39d056ad484              # double 0.4211189797309276
	.quad	0x3fe2741f1043e2b7              # double 0.57667496849815947
	.quad	0x3fe8f6ea5f992632              # double 0.7801410548356158
	.quad	0x3fe64db4905c0833              # double 0.69698551364149919
	.quad	0x3fd901ad8baec4f6              # double 0.39072741166007974
	.quad	0x3fd60427dcda58a6              # double 0.34400364463489053
	.quad	0x3fdba88727e9d47c              # double 0.43216112993042777
	.quad	0x3fdfc16a5b9c0eca              # double 0.49618014284372391
	.quad	0x3fe9c89d0125400d              # double 0.8057389280675139
	.quad	0x3fe85003591d7545              # double 0.75976722150122866
	.quad	0x3fc2fe4e191f71c8              # double 0.14838577486706428
	.quad	0x3fe1cdc7a702412a              # double 0.55636961573512633
	.quad	0x3fe5e01d95373b6c              # double 0.68360785621358167
	.quad	0x3fe1b583111e0d3e              # double 0.55340722411384724
	.quad	0x3fefd5f87dbcf474              # double 0.99486946638320583
	.quad	0x3fe7805485645132              # double 0.73441530278299738
	.quad	0x3fe1f80a6f2329d6              # double 0.56152841288104116
	.quad	0x3fbd28f8b54f9900              # double 0.11390642572914444
	.quad	0x3fd89725d61bce7e              # double 0.38422532948536758
	.quad	0x3fd4b19b75d1ac16              # double 0.32334028726353503
	.quad	0x3fe58b3aa6069f15              # double 0.67324573923994768
	.quad	0x3fe88e67b8c0bdd6              # double 0.7673834427313817
	.quad	0x3fdfe6e72b5c2a32              # double 0.49846820101143685
	.quad	0x3feab553832d1e14              # double 0.83463454838141837
	.quad	0x3fef2640c9dc1c97              # double 0.97341956544632324
	.quad	0x3fb13ba75ac16870              # double 0.067316493661026433
	.quad	0x3feb71882b37d7b6              # double 0.85760887566606558
	.quad	0x3fddee74a5c7d366              # double 0.46767917813786253
	.quad	0x3fede3f840d46870              # double 0.93407833730749523
	.quad	0x3fe9a1d37d635990              # double 0.80100416650638984
	.quad	0x3fed32da02600153              # double 0.91245747054930815
	.quad	0x3fca3d7af18065b4              # double 0.20500122825687372
	.quad	0x3fef0f404ea7cbd3              # double 0.97061171877282459
	.quad	0x3fdda0c76b3962bc              # double 0.46293817015752459
	.quad	0x3f711d3a017fee00              # double 0.0041782632688369681
	.quad	0x3feb674e6845da0f              # double 0.85636062970917404
	.quad	0x3fea0fb115372c2f              # double 0.81441549438148353
	.quad	0x3fe590bf00872081              # double 0.67391920188039489
	.quad	0x3fec2e9476c03eff              # double 0.88068602746531599
	.quad	0x3fe9ce87b1530161              # double 0.80646118768349251
	.quad	0x3fed571a45fc6fcd              # double 0.91688264531284747
	.quad	0x3fddf595e04503ee              # double 0.46811434651686923
	.quad	0x3fd934207392a1b0              # double 0.39380656515506995
	.quad	0x3feeb6afabe62b62              # double 0.95980056356470933
	.quad	0x3fdfd3a3b9456fe2              # double 0.49729245274443035
	.quad	0x3fe86ad00e1e494e              # double 0.76303866155130051
	.quad	0x3feeb3715516d045              # double 0.95940462702720508
	.quad	0x3fb28385b94a32d8              # double 0.072319371926094944
	.quad	0x3fe7bdf74269fca0              # double 0.7419391915463116
	.quad	0x3fbdfbf4b7f44d90              # double 0.11712579241821275
	.quad	0x3fb03ae511020de8              # double 0.063398663189267901
	.quad	0x3fe3b8c2fac59b8c              # double 0.61630391100776327
	.quad	0x3fd1832243a2ae7a              # double 0.27362877469088398
	.quad	0x3fefff58e27fe773              # double 0.9999203132458504
	.quad	0x3fd9b5cc0e4b1d42              # double 0.40172101398316695
	.quad	0x3fd16eeebe76d490              # double 0.27239578819291754
	.quad	0x3fdb0b9fb6b329ee              # double 0.42258446542532979
	.quad	0x3fe9379595a0aaa7              # double 0.78803519462720295
	.quad	0x3fbcfb256feaa660              # double 0.11320718748415848
	.quad	0x3fe77f1e682b8bb2              # double 0.73426742883417817
	.quad	0x3fe32d296470978d              # double 0.59926290146971584
	.quad	0x3fed62aabfba7659              # double 0.91829431006380979
	.quad	0x3fe08daa38d219a3              # double 0.51729308221620263
	.quad	0x3fe759aeadb93726              # double 0.72969755106325773
	.quad	0x3feca81570105376              # double 0.8955180348153664
	.quad	0x3fd41632752c3d2e              # double 0.31385480349213679
	.quad	0x3fe6824eeb070587              # double 0.70340677169603871
	.quad	0x3fea49541e819c09              # double 0.82145124395617686
	.quad	0x3fdcd07e959b751e              # double 0.45022549257358147
	.quad	0x3fef1c59c2e6b7a4              # double 0.97221077028892866
	.quad	0x3fbc0f0c69e3c1e0              # double 0.10960462174603647
	.quad	0x3fce36d736c774fc              # double 0.23604860472452305
	.quad	0x3fd3eba64a19cb5a              # double 0.31125790821459065
	.quad	0x3fedb1824b298211              # double 0.92791857414346357
	.quad	0x3fba210f8f569520              # double 0.10206696748226252
	.quad	0x3fd27a87e93db7f4              # double 0.28872869279336943
	.quad	0x3fefc86e622615f5              # double 0.99321669740373741
	.quad	0x3fe548a3bcab68f0              # double 0.66511713838124642
	.quad	0x3fc95d6f53414efc              # double 0.19816390576544751
	.quad	0x3fc0e05a00fffe44              # double 0.13184666680170853
	.quad	0x3fe0dbb3a183c61b              # double 0.52681905313346833
	.quad	0x3fb3e063b8189a18              # double 0.07764266247304652
	.quad	0x3fe3e9d4002181a2              # double 0.62229347253383005
	.quad	0x3fcac61e49cf9ae8              # double 0.20917109111834198
	.quad	0x3fe42cb48d9ccb77              # double 0.63045718821227481
	.quad	0x3fd329ea82b346cc              # double 0.29943335307789876
	.quad	0x3fe2125e705b1560              # double 0.56474229759684746
	.quad	0x3fed9e28d1c04c66              # double 0.92555657355331955
	.quad	0x3fe085f1da5e16c1              # double 0.51635067605885621
	.quad	0x3fd975d41ec1aa8c              # double 0.3978166866642503
	.quad	0x3fd6a97f58402e24              # double 0.35409530275566881
	.quad	0x3fdaecbf45d54820              # double 0.42069989986078049
	.quad	0x3fe04afa70b174ff              # double 0.50915262232197722
	.quad	0x3fe8de2bf95652dc              # double 0.77712057779953225
	.quad	0x3fb75d3b365a0f88              # double 0.091266346711618707
	.quad	0x3fe6e0a2c70e7009              # double 0.71492136839106124
	.quad	0x3fe8cabfc5f9b186              # double 0.77474964778007016
	.quad	0x3fcec5a68120fad0              # double 0.24040681176298628
	.quad	0x3f98a831aa807400              # double 0.024079109222032713
	.quad	0x3fd968cb512487b2              # double 0.39702113079158174
	.quad	0x3fe1a8094355ec26              # double 0.55176222945681697
	.quad	0x3fe25f03dca0dc66              # double 0.57409852115132476
	.quad	0x3fe88a585f024ddb              # double 0.76688784176297575
	.quad	0x3fed4cd05afbfa4e              # double 0.91562669535034913
	.quad	0x3fe0838e22c17c54              # double 0.51605898655169335
	.quad	0x3fe62a39e48086ec              # double 0.69265455846126889
	.quad	0x3fef8d8a378e2106              # double 0.9860278210699398
	.quad	0x3fc5fd1af6838de0              # double 0.17178666149912569
	.quad	0x3fcac8d802e48574              # double 0.20925426617854337
	.quad	0x3fe8ca83334e5a0c              # double 0.7747207643577112
	.quad	0x3fe4b7cbf8facd16              # double 0.64743612889143054
	.quad	0x3fe914bc6a6c48dc              # double 0.78378124986400221
	.quad	0x3fecdf85f8f88671              # double 0.90228556277379657
	.quad	0x3fe5fe744f77f6a8              # double 0.6873113205071677
	.quad	0x3fd181ce4cbc4c2c              # double 0.27354772084908308
	.quad	0x3fe7a83fd91d991d              # double 0.73928825765031869
	.quad	0x3fd3549b60b33086              # double 0.30203899806361567
	.quad	0x3fd1355431e67e66              # double 0.26887993691523204
	.quad	0x3fe1d257e8fe9f2d              # double 0.55692668444405558
	.quad	0x3f6af61c6bc7f300              # double 0.0032911830041925105
	.quad	0x3fd2c601542e8858              # double 0.29333527775645996
	.quad	0x3fd991f14f352cfa              # double 0.3995326303017489
	.quad	0x3fc928522fc7df6c              # double 0.19654300053639007
	.quad	0x3fd57f6ae7c5bfd2              # double 0.33590195306805726
	.quad	0x3fc99b01a6389ab8              # double 0.20004292122140099
	.quad	0x3fd4a26f8488c86a              # double 0.3224142832069733
	.quad	0x3fbbfa70aae9e530              # double 0.10929016277977577
	.quad	0x3fdf253716da66ce              # double 0.48664643508673755
	.quad	0x3fdf1f4aa95b5e22              # double 0.4862848905445124
	.quad	0x3fd3e6110def9a5a              # double 0.3109171520322086
	.quad	0x3fa5054d67cb8370              # double 0.041056078834805443
	.quad	0x3f9746f889eb0720              # double 0.022731669824458511
	.quad	0x3fe3cdd03aa00d36              # double 0.6188737053893536
	.quad	0x3fc6715707daf984              # double 0.17533386119425753
	.quad	0x3fd0c7b2a0206a5c              # double 0.2621885837303688
	.quad	0x3fcee5756301b758              # double 0.24137751898109161
	.quad	0x3fe2b95a2a83fcce              # double 0.58512600234817014
	.quad	0x3fc89bd3c5006b30              # double 0.19225546950550543
	.quad	0x3fd04596303a9a28              # double 0.25424723348479228
	.quad	0x3fc6090386211ed4              # double 0.17215007828985185
	.quad	0x3febbdaf87d39985              # double 0.86690498856187104
	.quad	0x3fd7f95c494622b2              # double 0.37459475665722686
	.quad	0x3fb24d750c45cc70              # double 0.071494403358700387
	.quad	0x3fda24cee067373c              # double 0.40849658884404838
	.quad	0x3fe592d36d8904a0              # double 0.67417308229063977
	.quad	0x3fd7ab9cfac4e45a              # double 0.36984943856402241
	.quad	0x3fe093a3a9903c1f              # double 0.51802237623076397
	.quad	0x3fe829c7086dc395              # double 0.75509978910678177
	.quad	0x3fcfadb377e0fb2c              # double 0.24748843530138609
	.quad	0x3fda7cfd6254bad6              # double 0.41387877085337033
	.quad	0x3fed531000b2fb08              # double 0.91638946663428644
	.quad	0x3fef7446f0802df1              # double 0.98294398281853834
	.quad	0x3f9abe38cb443f20              # double 0.026116263777168247
	.quad	0x3fdc6209ba08b258              # double 0.44348376433734904
	.quad	0x3fdc510460a81e78              # double 0.442444891349147
	.quad	0x3fa3ba0cbf043ca0              # double 0.038528822247934302
	.quad	0x3febf3eab42cd196              # double 0.87352500143474532
	.quad	0x3fe7db84cc095704              # double 0.74554672098995001
	.quad	0x3fe632e3f7d1321d              # double 0.69371221925536342
	.quad	0x3fe90519b8382b49              # double 0.7818726156268464
	.quad	0x3febbc5bf0623bc2              # double 0.86674305868097457
	.quad	0x3f9cd37d4f53c320              # double 0.028150518385646639
	.quad	0x3fe0a1d8a1a0d97c              # double 0.5197566181948754
	.quad	0x3fc320f7b46f13f4              # double 0.14944359121560036
	.quad	0x3fef293e1a715179              # double 0.97378449596958127
	.quad	0x3fc2cc5ebcabef54              # double 0.1468618794677875
	.quad	0x3fe94695a040e436              # double 0.78986626910694357
	.quad	0x3fd1ebfc868aabb2              # double 0.2800284685023896
	.quad	0x3fd75fa2076da568              # double 0.36521197057171273
	.quad	0x3fd146fbc748ea78              # double 0.26995748959931332
	.quad	0x3f9c9a0c9bba7260              # double 0.027931401257421107
	.quad	0x3fad36df7c3bd170              # double 0.057059272685281992
	.quad	0x3feb51b4934bf264              # double 0.85372380036239947
	.quad	0x3fd9e08ff2b8c6ca              # double 0.40433119490908764
	.quad	0x3fd964ae7c09cab0              # double 0.3967701159773851
	.quad	0x3fe8783cd3bf3da0              # double 0.76467744213907806
	.quad	0x3fe367651ebccf31              # double 0.60637145999360176
	.quad	0x3fc628ed3b424128              # double 0.17312398332115575
	.quad	0x3fe2f84b65b4a08c              # double 0.59280938972826069
	.quad	0x3f9ab1d4cfe62e20              # double 0.026068997563511442
	.quad	0x3fc80653a3465fa0              # double 0.18769307587058126
	.quad	0x3fc48f52704ea660              # double 0.16062384113074568
	.quad	0x3fd909a6b1f2ee04              # double 0.39121405961824984
	.quad	0x3fec97d22966defa              # double 0.89353283010765883
	.quad	0x3fe6bec03dbc7b98              # double 0.71078502710212188
	.quad	0x3fdf712235211b02              # double 0.49128012836847301
	.quad	0x3fe375e1d91e722b              # double 0.60813991933861666
	.quad	0x3fe24e64b7e7b8f5              # double 0.57206951064088563
	.quad	0x3fd563d194610e6a              # double 0.33421744814061205
	.quad	0x3fec21724b7275e3              # double 0.87908282027973106
	.quad	0x3fd11827425c7420              # double 0.26709920387821917
	.quad	0x3fe38f901386bca9              # double 0.61127475560887945
	.quad	0x3fef434b65904f44              # double 0.97696466290151606
	.quad	0x3fe171f5ac284921              # double 0.54516109108434219
	.quad	0x3feed8c46c7952e1              # double 0.96396084963143036
	.quad	0x3fd5a95072b7daaa              # double 0.33845912173220916
	.quad	0x3feaa3c694a09c46              # double 0.83249215153490108
	.quad	0x3fe45b1432e1cb39              # double 0.63611802995578792
	.quad	0x3fd2b555b94f6c10              # double 0.29231780144408592
	.quad	0x3fd7f2622fcc8656              # double 0.37416891734946967
	.quad	0x3fe741928fd8d04a              # double 0.72675445647338077
	.quad	0x3fd5d0a202a5276c              # double 0.34085893877328632
	.quad	0x3febf2a21a0ae33e              # double 0.87336831175262097
	.quad	0x3feb9007c08aff23              # double 0.86133182149930965
	.quad	0x3f8e520d3273acc0              # double 0.014804938413780611
	.quad	0x3fbdeb99dae2c0d0              # double 0.11687623590364926
	.quad	0x3fe5daecde82bd8a              # double 0.68297427615282058
	.quad	0x3fd60c162db6e30e              # double 0.34448770965859488
	.quad	0x3fd26692eef62762              # double 0.28751061760032404
	.quad	0x3fe417cc3e05573f              # double 0.62790500749063216
	.quad	0x3fe5a42b28116598              # double 0.67629010988018745
	.quad	0x3fd8f6df44683b6a              # double 0.39006787948976884
	.quad	0x3f7be8b81d0ffd80              # double 0.0068137351927356482
	.quad	0x3fc0800a29de41a4              # double 0.12890746158929034
	.quad	0x3fc8b2ba926ce474              # double 0.1929543700187285
	.quad	0x3fe2b19e5ceaaea7              # double 0.58418195865438782
	.quad	0x3fe7fbd64985bf9a              # double 0.74949182853559937
	.quad	0x3fc46dfd057aa504              # double 0.159606578517277
	.quad	0x3fea47c6119290c4              # double 0.82126143867619605
	.quad	0x3fd1c56feac16c62              # double 0.27767560887668286
	.quad	0x3fe03bbd82dad946              # double 0.50729251439660383
	.quad	0x3fce1b329cccb174              # double 0.23520500808934808
	.quad	0x3fe71326225ff70c              # double 0.72108751977768426
	.quad	0x3fe640a93fd6da39              # double 0.69539320438963792
	.quad	0x3fe6fb311dd0d71c              # double 0.71816306899447424
	.quad	0x3fe2d52e07ea970c              # double 0.58852292581716048
	.quad	0x3fe151e45daaeef1              # double 0.54124658865427311
	.quad	0x3f83e4e35fe54800              # double 0.0097139133110069054
	.quad	0x3fe835871b57cc5d              # double 0.75653415050909312
	.quad	0x3fe112bd49be2d23              # double 0.53353752520471109
	.quad	0x3fe37a0a7ed102d5              # double 0.60864758271062647
	.quad	0x3fd82cbb98c7337a              # double 0.37773027343501264
	.quad	0x3fe47c8763f7b3f6              # double 0.64020127797050352
	.quad	0x3fd3169ccf46f40a              # double 0.29825515977773931
	.quad	0x3fef2d6f57ddc9c6              # double 0.97429625665090991
	.quad	0x3fd54801397daff2              # double 0.33251982321121354
	.quad	0x3fc8aa4c14380244              # double 0.19269705760236111
	.quad	0x3fe6dbf763436def              # double 0.71435136210805961
	.quad	0x3febc638b5664292              # double 0.8679469626386711
	.quad	0x3fe64ebd4cb5ab1d              # double 0.69711174948074339
	.quad	0x3fee71d8ffbaad7c              # double 0.95139741847144376
	.quad	0x3fe2beacd0e09dfb              # double 0.58577576443070656
	.quad	0x3fe1425a6e2a9035              # double 0.53934976116989353
	.quad	0x3fcd9ea2a9be4a48              # double 0.23140366829155057
	.quad	0x3fca7b0a1695c558              # double 0.20687986471925046
	.quad	0x3fec41419dd0c1bd              # double 0.88296585868197719
	.quad	0x3fe73f58b2eb05f9              # double 0.72648272461827823
	.quad	0x3fc5a3411614abe0              # double 0.16904462412034515
	.quad	0x3fccdea119a42ad8              # double 0.22554410697951854
	.quad	0x3fb9ec44d55b0018              # double 0.10126142701028618
	.quad	0x3fd3c136b52a3324              # double 0.30866782848242935
	.quad	0x3fbca1818a2b8458              # double 0.1118393862084458
	.quad	0x3fc566850386ca20              # double 0.16719114944642488
	.quad	0x3fd2fd5373156ffc              # double 0.29671179045340046
	.quad	0x3fdf7d0e984bd224              # double 0.49200787422822345
	.quad	0x3fe018bf29359308              # double 0.50302084015547255
	.quad	0x3fc4d375b6fc57c0              # double 0.16270324168061556
	.quad	0x3febb8babbd84365              # double 0.866299979099591
	.quad	0x3fccd40bd4833ecc              # double 0.22522113682361178
	.quad	0x3fee8c9117295411              # double 0.95465902827948146
	.quad	0x3f89acb24cc3eb80              # double 0.012536423652354634
	.quad	0x3fe19ad97a2f42f6              # double 0.55015252937491144
	.quad	0x3fc80caac188637c              # double 0.18788656663744152
	.quad	0x3fda81c8cc86ad52              # double 0.41417140935182772
	.quad	0x3fb3406168965908              # double 0.075201118501670661
	.quad	0x3fe4740bd44818ff              # double 0.63916579686409125
	.quad	0x3f7c6ba2f5b06480              # double 0.0069385877241298077
	.quad	0x3fedda56084eb1f9              # double 0.93290235159434964
	.quad	0x3fe878bece688272              # double 0.76473942102536641
	.quad	0x3fe310c3328a29aa              # double 0.59579620238337339
	.quad	0x3fecfbcffd51d4e4              # double 0.90573882557387408
	.quad	0x3fe60822aca17b71              # double 0.68849309651328217
	.quad	0x3fef984541a06120              # double 0.98733771150276439
	.quad	0x3fe60c87320663cb              # double 0.68902930994510692
	.quad	0x3fe0209afac8908c              # double 0.50398015004295038
	.quad	0x3fd0b71fa147f81e              # double 0.26117697477445911
	.quad	0x3fef15a3c8bf009c              # double 0.97139157493804217
	.quad	0x3fe416da704b2682              # double 0.62778970653853627
	.quad	0x3fca0732b66f13b4              # double 0.20334466846375465
	.quad	0x3fcd23fa2d1b065c              # double 0.22766043856067852
	.quad	0x3fdaa0233ac2fe04              # double 0.41602402437635555
	.quad	0x3fd6d5f1e03ba342              # double 0.35680815599203097
	.quad	0x3fdf33554e5237b0              # double 0.48750813149024008
	.quad	0x3fe749401c4363f2              # double 0.72769170303501896
	.quad	0x3fe83f2c7c54858e              # double 0.75771164210543573
	.quad	0x3fd3b0a2cc3e265e              # double 0.30765600152571959
	.quad	0x3fe05b6f6e294252              # double 0.51116153255322616
	.quad	0x3feb89e3ce801558              # double 0.86058225948424205
	.quad	0x3fef914a39dde147              # double 0.98648558904736993
	.quad	0x3fc6e1111f24307c              # double 0.17874349613737539
	.quad	0x3fefb425edff33c0              # double 0.99074074252859389
	.quad	0x3fe570cc77a1439b              # double 0.67001937260839683
	.quad	0x3fd3ea9c57ba7d34              # double 0.31119450156434714
	.quad	0x3fe470635c78d30f              # double 0.6387192541211294
	.quad	0x3fdf60d9f8857248              # double 0.49028634328513876
	.quad	0x3fd1c7a338ec2a7c              # double 0.27780991133537447
	.quad	0x3fd809f3709a5f28              # double 0.37560735699070102
	.quad	0x3fa6f4b71dba9de0              # double 0.044835779551529731
	.quad	0x3fdd66d6fa677508              # double 0.45940184072044632
	.quad	0x3fdc8ce97d33fa58              # double 0.44610059000834701
	.quad	0x3fe96c7f18c80a4c              # double 0.79449419822805955
	.quad	0x3fe14c756fe985af              # double 0.54058334215021897
	.quad	0x3fe13c63cc54334a              # double 0.53862180622091071
	.quad	0x3fdbd63ff4a2bbaa              # double 0.43495177164271104
	.quad	0x3fd70314a321926a              # double 0.35956302576804566
	.quad	0x3fecb078b4d46329              # double 0.89654193228043255
	.quad	0x3fec50a31a974ecc              # double 0.88484339898647013
	.quad	0x3fd3847d9471edaa              # double 0.30496158119759775
	.quad	0x3fd3ea5d7c878676              # double 0.31117951546739364
	.quad	0x3fea636ee34b62f4              # double 0.82463783639386045
	.quad	0x3fdc469795416864              # double 0.44180860114796006
	.quad	0x3fd95d165ab85c7c              # double 0.39630659922972433
	.quad	0x3fe4c18a19dfe491              # double 0.64862542203549556
	.quad	0x3fb6e3f8a4e048e0              # double 0.089416065457303073
	.quad	0x3fe7e597c67159fb              # double 0.74677647360186883
	.quad	0x3fe0ce0808fbbf9b              # double 0.52515031580513793
	.quad	0x3fecd9416e6ec84c              # double 0.90152045792479773
	.quad	0x3fee90e820584839              # double 0.95518881146768486
	.quad	0x3fc1508aa45afa84              # double 0.13527043366589819
	.quad	0x3fa91f36a09b2c50              # double 0.049066264252893732
	.quad	0x3fca0915387e0b20              # double 0.20340218790450937
	.quad	0x3fde2509a6ccd50e              # double 0.47101060189318467
	.quad	0x3fdb07ef30cd0dc4              # double 0.42235927358362013
	.quad	0x3fd56c04a02e824a              # double 0.33471789973012689
	.quad	0x3fd4a3ffa689918a              # double 0.32250968230643962
	.quad	0x3fe19061fa4b0644              # double 0.54887484441150791
	.quad	0x3fe3b6560367cc1c              # double 0.61600781121376569
	.quad	0x3fef2882c2b2b528              # double 0.97369516398399458
	.quad	0x3fe669c4891760c6              # double 0.70041109824799075
	.quad	0x3fdc2639cf3fb5be              # double 0.43983311881205711
	.quad	0x3fed350f5789bea6              # double 0.91272704217222578
	.quad	0x3fee89ad6c3493d1              # double 0.95430632718909625
	.quad	0x3febd15517a21c0d              # double 0.86930327049128808
	.quad	0x3fd554e899439d32              # double 0.33330740897368394
	.quad	0x3fd0c7fac792cbd2              # double 0.26220578660575911
	.quad	0x3fe6e66a7d3678d0              # double 0.71562694984074859
	.quad	0x3feb85532355e700              # double 0.86002499486423289
	.quad	0x3fccd6f938dad05c              # double 0.22531047130690041
	.quad	0x3fab284fbab64130              # double 0.053041926900848302
	.quad	0x3fefefbac6981144              # double 0.9980138663091016
	.quad	0x3fd80f45de373928              # double 0.37593218518022065
	.quad	0x3f9216da4fa74980              # double 0.017665301429425906
	.quad	0x3fe4683a7d10caf5              # double 0.63772320200800314
	.quad	0x3fe3c0e5ecd5b9fd              # double 0.61729713684854881
	.quad	0x3fafc812674f9520              # double 0.062073302375021067
	.quad	0x3fa561087dad9bd0              # double 0.04175592931897365
	.quad	0x3fe0e06a160ddc89              # double 0.52739433581781825
	.quad	0x3f9fe271336abda0              # double 0.031137245906106892
	.quad	0x3fd59d775f90dc68              # double 0.33773598034480878
	.quad	0x3fe46b580abea6be              # double 0.63810350512104441
	.quad	0x3fc125541c5efa0c              # double 0.133951677182225
	.quad	0x3fe54dddc87b8557              # double 0.66575516850222527
	.quad	0x3fea6a349a0d136e              # double 0.82546453559971922
	.quad	0x3fc849bb7f026638              # double 0.18975013448361877
	.quad	0x3fece596a8f9cb87              # double 0.90302594187811358
	.quad	0x3f5e86f4122f8800              # double 0.0018632300859668938
	.quad	0x3fd222b79b4646aa              # double 0.28336897052313736
	.quad	0x3fdc0d93900bab32              # double 0.43832863871527927
	.quad	0x3fca805b48aeb964              # double 0.20704213189078324
	.quad	0x3fef14ea676ae5ae              # double 0.9713031787752493
	.quad	0x3fdd96339a91f084              # double 0.46229257673963553
	.quad	0x3fef18020c2475ee              # double 0.97168066379134443
	.quad	0x3fd6738fe309c4fc              # double 0.35080334827132709
	.quad	0x3fc3ab748fe149ec              # double 0.15366990113632484
	.quad	0x3fc4e7b7ecf49244              # double 0.16332148618779929
	.quad	0x3fdca7e6a65e189a              # double 0.44774786230881036
	.quad	0x3fe65fb7b5b8c401              # double 0.69918427937057015
	.quad	0x3fe2fbe1e7ad79e1              # double 0.59324736833132985
	.quad	0x3fef01dd0af93230              # double 0.96897747176405424
	.quad	0x3fe6c661bb3f361e              # double 0.71171652385391204
	.quad	0x3fe221190727b40b              # double 0.5665402545688506
	.quad	0x3fe79356a8553fce              # double 0.73673565747776038
	.quad	0x3fb11811a864f160              # double 0.066773513423816322
	.quad	0x3fee116a83a78354              # double 0.93962598527660157
	.quad	0x3fdd1c23ed6459fa              # double 0.45484255011379526
	.quad	0x3fe062306bcc9ba4              # double 0.51198597960034364
	.quad	0x3feb3848aa06df4d              # double 0.85062058647506833
	.quad	0x3fed4055d3433d23              # double 0.91410342466580052
	.quad	0x3fea07e40059c414              # double 0.81346321171270341
	.quad	0x3fc79e225676274c              # double 0.18451337072138541
	.quad	0x3fed297da06d0f77              # double 0.91131478627401818
	.quad	0x3fee21df3e80444b              # double 0.94163477141604213
	.quad	0x3fe42a95b5313dc7              # double 0.63019833935862202
	.quad	0x3fee7a62838d47ec              # double 0.95243955320097262
	.quad	0x3fe379fa60495ac2              # double 0.60863989644970951
	.quad	0x3fe147f3c35a3707              # double 0.54003322748914762
	.quad	0x3fb6ccb038ff3048              # double 0.089060796656839192
	.quad	0x3fd92ffb268a8482              # double 0.39355353130128645
	.quad	0x3fe05cbd3a7d956c              # double 0.51132069992006057
	.quad	0x3fdd1acb85aa4320              # double 0.45476043751937034
	.quad	0x3fc8cd2091ff24e4              # double 0.19375998619788171
	.quad	0x3fb639cf70fdad50              # double 0.086819615445780984
	.quad	0x3fec6027a0b5e51b              # double 0.8867376459958537
	.quad	0x3fd7d77cc3b1e248              # double 0.37252730475259854
	.quad	0x3fe77bc68ac2d2e3              # double 0.73385932065738435
	.quad	0x3fede87aea074d41              # double 0.93462892254539309
	.quad	0x3fb4e15fa69572f0              # double 0.081563928766126059
	.quad	0x3fe71277a752aad4              # double 0.72100432091004985
	.quad	0x3fb4b771dfe9d4a8              # double 0.080924145857198426
	.quad	0x3fdda9b12444c154              # double 0.46348217527249358
	.quad	0x3fd3847781bfe184              # double 0.30496013327458393
	.quad	0x3fec4cd790c64b9f              # double 0.88438013340270405
	.quad	0x3fd2fb503e180e10              # double 0.29658895553458908
	.quad	0x3fe91c4830baa5cd              # double 0.78470239179039825
	.quad	0x3fd495690381187e              # double 0.32161927549567071
	.quad	0x3f7f7982865dea80              # double 0.0076842402103191043
	.quad	0x3fc881c1bf6b41f4              # double 0.19145986410741467
	.quad	0x3fe413de39a2ef34              # double 0.6274253011428983
	.quad	0x3fe320b42b010c50              # double 0.59774216078984388
	.quad	0x3fed6a38eb903998              # double 0.91921659477684425
	.quad	0x3fdd4a82fe4d0040              # double 0.45767283281384508
	.quad	0x3fb1856495dc5f00              # double 0.068441664301982286
	.quad	0x3feb07dff6432d91              # double 0.84471128557327024
	.quad	0x3f93029871a28300              # double 0.018564588485449285
	.quad	0x3fec6e1caebffba8              # double 0.88844141131254606
	.quad	0x3fef3fa69681cf20              # double 0.97651986499701948
	.quad	0x3faac5f374b75710              # double 0.052291496274547211
	.quad	0x3fd42909180c3c7e              # double 0.3150046095697191
	.quad	0x3fecdf04a0d4d97a              # double 0.90222388660804076
	.quad	0x3fb13da86b27f208              # double 0.067347074662343798
	.quad	0x3fe5f0306436e80e              # double 0.68556994984760578
	.quad	0x3fc7de371918b74c              # double 0.18646897054116562
	.quad	0x3fec74b56835d3d4              # double 0.88924665788237655
	.quad	0x3feb8f62c579c18b              # double 0.86125315255599
	.quad	0x3fd20e6844b83702              # double 0.28212935171983144
	.quad	0x3fe89a673d85e8a3              # double 0.76884805694796332
	.quad	0x3fe87ae73fec092a              # double 0.76500284657257578
	.quad	0x3fda26a9a2699544              # double 0.40860977993573422
	.quad	0x3fea67ddcf86d1d5              # double 0.82517900974795089
	.quad	0x3fc1e1c0f4297a00              # double 0.13970195695851828
	.quad	0x3fde4fcd427ff3bc              # double 0.47362071508524273
	.quad	0x3fe3c398bec001fd              # double 0.6176265454851656
	.quad	0x3fc4c5e17297b718              # double 0.16228883834212904
	.quad	0x3fc21fad750f386c              # double 0.14159172263902364
	.quad	0x3fd0e04e85777100              # double 0.26369059594959765
	.quad	0x3fceb835ec03ef00              # double 0.23999666237056516
	.quad	0x3fdcb3b4b0c9286a              # double 0.44846837295756947
	.quad	0x3fe3f9ad4399c0a3              # double 0.62422812655679072
	.quad	0x3fd5f75b9067c0ba              # double 0.34322251417234961
	.quad	0x3fdb759a1c5fca16              # double 0.42905285616794353
	.quad	0x3fecea6253d6f1aa              # double 0.90361133932997473
	.quad	0x3f3f0af7fcce9800              # double 4.736762464808697E-4
	.quad	0x3fe89b84b0f7662b              # double 0.7689841705679944
	.quad	0x3fe537f52cd98caa              # double 0.66308077583052705
	.quad	0x3fc2accf6a342b0c              # double 0.14589874921542678
	.quad	0x3fd495d904c90880              # double 0.32164597956955987
	.quad	0x3fe53c72dc37c168              # double 0.66362898837364259
	.quad	0x3fe3fb0a6d017af6              # double 0.62439461984817402
	.quad	0x3fe749ea8b69efb3              # double 0.72777297238598349
	.quad	0x3fddedf4420c0a50              # double 0.467648567675643
	.quad	0x3fe92faa0b5ff478              # double 0.78706838819165537
	.quad	0x3feccee8a734e78f              # double 0.90025742204237413
	.quad	0x3fd9edf92c277a58              # double 0.40514973937925935
	.quad	0x3fde9f1400899696              # double 0.47845935871587508
	.quad	0x3fe92f4e6521a5e0              # double 0.78702468635782096
	.quad	0x3fd0af3fc9ad35d2              # double 0.26069636054020606
	.quad	0x3fe7ac4678601b61              # double 0.73977969656776221
	.quad	0x3fd3646bae5784f4              # double 0.30300418878148538
	.quad	0x3fae807dfe256f20              # double 0.059574067376813256
	.quad	0x3fde31296a4dbb74              # double 0.47175059682097431
	.quad	0x3fec082caae873a6              # double 0.8759978616759454
	.quad	0x3fec9b6745e4aa8b              # double 0.89397014285107568
	.quad	0x3fb2e2bdceea9180              # double 0.073772299782438821
	.quad	0x3fb7f3d615a13b00              # double 0.093564396172251207
	.quad	0x3fbf433b066b6098              # double 0.12211960703587221
	.quad	0x3fe0b4844ff55833              # double 0.52203574768896599
	.quad	0x3fed1d9ca072b898              # double 0.9098647245171092
	.quad	0x3fedc5ac7d86d301              # double 0.93038010136533
	.quad	0x3fc8193caf47672c              # double 0.18827017363110465
	.quad	0x3fe66c4e169b84b1              # double 0.70072082915807787
	.quad	0x3fe03034f323aa7c              # double 0.5058846234145018
	.quad	0x3fb62aab9e55a3f8              # double 0.086588598400012873
	.quad	0x3fa2f3904e8e8a70              # double 0.037014493550732719
	.quad	0x3fec24dd2c989ee3              # double 0.87949999532881085
	.quad	0x3fdadee032117800              # double 0.41985325707889842
	.quad	0x3fdac3f929938e1a              # double 0.41821126041597412
	.quad	0x3fae19d9001c52d0              # double 0.05879095198011941
	.quad	0x3fcbedcb8fe86744              # double 0.21819443251370718
	.quad	0x3fe1f52486c7640b              # double 0.56117464374540427
	.quad	0x3fbfe65a0bc5ed90              # double 0.12460863864355631
	.quad	0x3fdbc22aa2e9981a              # double 0.43372598561688991
	.quad	0x3fea086ca16e69b2              # double 0.81352836160231434
	.quad	0x3fd3f2203e91fb98              # double 0.31165319548011317
	.quad	0x3fe0e02f020687e2              # double 0.52736616511924361
	.quad	0x3fafa0488136e010              # double 0.061769738934742802
	.quad	0x3fef1911f0f1513f              # double 0.9718103128348402
	.quad	0x3fe50c3c4b681e25              # double 0.65774359443543473
	.quad	0x3fe455e3c40be321              # double 0.63548458376235228
	.quad	0x3fb0cea7781a7e78              # double 0.065653292486325898
	.quad	0x3fe511af21076533              # double 0.65840870333628343
	.quad	0x3fca3e6bf9be27cc              # double 0.20502996153328323
	.quad	0x3fd727789b403176              # double 0.36178412591177478
	.quad	0x3fe39ca90998a4a6              # double 0.61287357210416782
	.quad	0x3fee229f706058d1              # double 0.94172641705042726
	.quad	0x3fd6666790151d4e              # double 0.35000027723841221
	.quad	0x3febeabd892a39c1              # double 0.87240483083751752
	.quad	0x3fec519500b0a400              # double 0.88495874533430197
	.quad	0x3fdd503e96c633d8              # double 0.45802273487134704
	.quad	0x3fed648ae731725f              # double 0.91852326540863405
	.quad	0x3fd6fba1d27c9236              # double 0.35910840564091318
	.quad	0x3fd571db691a1fcc              # double 0.33507428420898289
	.quad	0x3fe59f74a831d5f1              # double 0.67571480608483914
	.quad	0x3feca5e375511053              # double 0.8952500621167111
	.quad	0x3f80fe479dede000              # double 0.0082975001403013948
	.quad	0x3fe8b3e8068da107              # double 0.77196122436456072
	.quad	0x3fe929cc8b4a04bf              # double 0.78635241703900494
	.quad	0x3fe08b8dc343524d              # double 0.51703537118243903
	.quad	0x3fd03b743d678340              # double 0.25362878796117982
	.quad	0x3fea8a0936cf18f5              # double 0.82935009674909443
	.quad	0x3fc2c262c398bc68              # double 0.1465571837484021
	.quad	0x3fcd19a64eb1d36c              # double 0.22734526484023421
	.quad	0x3febd6a607988760              # double 0.8699522159915709
	.quad	0x3fd43041184a1182              # double 0.31544520732884263
	.quad	0x3fea61d297365883              # double 0.82444123777055756
	.quad	0x3fc9866932d79e60              # double 0.19941439611942524
	.quad	0x3fdf0f430b1e60f4              # double 0.48530651174361528
	.quad	0x3fdd51fe93f292f4              # double 0.45812954376223947
	.quad	0x3fd64837cf7d43ce              # double 0.34815783751133444
	.quad	0x3fec535452be16f1              # double 0.88517204437877528
	.quad	0x3fe2237fcef0b3f1              # double 0.56683340471283661
	.quad	0x3fec7125476d8aeb              # double 0.88881172133218678
	.quad	0x3fe5593655b11b52              # double 0.66714016663250164
	.quad	0x3fd4aa45ff50e866              # double 0.32289266522605542
	.quad	0x3fd2b10ed3a5263e              # double 0.29205675762623062
	.quad	0x3fef811144f342d0              # double 0.98450530497401623
	.quad	0x3febe3f6fd9b4cc4              # double 0.87157773525759596
	.quad	0x3fc24e472979c594              # double 0.14301385426692248
	.quad	0x3fe3ffb3e4976c9b              # double 0.62496370932366874
	.quad	0x3fd2778e60ffd16e              # double 0.28854712936961036
	.quad	0x3fed2af72992e391              # double 0.91149480934028493
	.quad	0x3fd457ae5db88fbe              # double 0.31785163071094391
	.quad	0x3fba698ced4c9f10              # double 0.1031730727523803
	.quad	0x3fdda8956d795374              # double 0.46341453257382814
	.quad	0x3fdb208ff368ad26              # double 0.42386244554900754
	.quad	0x3fe539e31af88557              # double 0.66331630008441322
	.quad	0x3fdecda8d609a8ac              # double 0.48130246069070881
	.quad	0x3fe489a266276475              # double 0.64180107070855164
	.quad	0x3fe9253b1d1af8c8              # double 0.785794789167789
	.quad	0x3fd2167921a94530              # double 0.28262165343501788
	.quad	0x3fe67f7d4826d348              # double 0.7030626687252175
	.quad	0x3facdf851d6f9e40              # double 0.056392822116148711
	.quad	0x3fdcab6f9e50c232              # double 0.44796362362379505
	.quad	0x3fe45e47a4fb9064              # double 0.63650877211740609
	.quad	0x3fea5e0394fcca83              # double 0.82397631739725374
	.quad	0x3fc6041b10f370dc              # double 0.17200029685671481
	.quad	0x3fe6588f6f3b4d93              # double 0.6983105823987209
	.quad	0x3fc0e9de50305e38              # double 0.13213709750628921
	.quad	0x3fea3e5db6e37608              # double 0.82011304588712708
	.quad	0x3fed581bf5971a7c              # double 0.91700551955075537
	.quad	0x3fc615629fc6cf04              # double 0.17252762605277649
	.quad	0x3fd70ae8633983d6              # double 0.36004075708302474
	.quad	0x3fe91eb7ac43f19b              # double 0.78499969144427284
	.quad	0x3fe1da6e2c6922a3              # double 0.55791386293374889
	.quad	0x3fc56c1d581ce2f8              # double 0.16736189653763467
	.quad	0x3fd0e74a59c57620              # double 0.26411684767467314
	.quad	0x3fe5ec2187b1918a              # double 0.68507458212529682
	.quad	0x3fcaa47d25a3a978              # double 0.2081448015008609
	.quad	0x3fe30c442230fa64              # double 0.59524733236305538
	.quad	0x3fecc1661bc6f785              # double 0.89860825944173028
	.quad	0x3fcf3cab816b5df4              # double 0.24403899974161869
	.quad	0x3feee7cc96183971              # double 0.96579579654080138
	.quad	0x3fcf7fad4adee544              # double 0.24608389049334722
	.quad	0x3fe1fd8f60abb831              # double 0.56220215683948116
	.quad	0x3feb52b5f56cbf62              # double 0.85384653028993918
	.quad	0x3fb4a9786baa0f38              # double 0.080710912976482585
	.quad	0x3fe71a37257a49b6              # double 0.72195012397633351
	.quad	0x3febbe48c0afb801              # double 0.86697805055678157
	.quad	0x3fd629351adcbc98              # double 0.34626510260836474
	.quad	0x3fe6440e89d568be              # double 0.69580771370535621
	.quad	0x3fe17e7f49813e27              # double 0.5466915546075527
	.quad	0x3fe8225a8e6aeea6              # double 0.75419357124288378
	.quad	0x3fe2c59aca9d54ab              # double 0.58662166188391518
	.quad	0x3fd0d89a90a5b11c              # double 0.26322044492441576
	.quad	0x3fe19e56ac96b1a5              # double 0.55057843884201374
	.quad	0x3fe8b7566ab99b61              # double 0.77238007397395958
	.quad	0x3feafc954d6bb004              # double 0.84333291169377888
	.quad	0x3fe24dab204ddfe2              # double 0.57198101338780938
	.quad	0x3fce8fb2675c19d0              # double 0.23876028105605807
	.quad	0x3fd2d4461b2c27b2              # double 0.2942061677318818
	.quad	0x3fe7b560108e0786              # double 0.7408905337654097
	.quad	0x3fe3788f46854bcf              # double 0.60846675656864047
	.quad	0x3fec0c9887e35ee0              # double 0.8765375761094809
	.quad	0x3fcde4158a6c2414              # double 0.23352307566554542
	.quad	0x3fef24cd0bcbe8a6              # double 0.97324230484015994
	.quad	0x3fc5ddc5a55e3200              # double 0.17083044600111918
	.quad	0x3fcabe211596c128              # double 0.20892728380341308
	.quad	0x3fe59a3244d2644a              # double 0.67507279817358179
	.quad	0x3fd8dd620cb161b4              # double 0.38851214637318354
	.quad	0x3fe2bd07dea060d4              # double 0.58557504159673579
	.quad	0x3feccd81b5e52833              # double 0.90008626486201704
	.quad	0x3fe62f39de02a699              # double 0.69326489793202761
	.quad	0x3fe9fd9d11db1111              # double 0.8122086857552252
	.quad	0x3fc95e88760672d0              # double 0.19819741976689054
	.quad	0x3fd9ea84d08bc0a0              # double 0.40493889203845335
	.quad	0x3fed5a8d0b6fa5b7              # double 0.91730358346574448
	.quad	0x3fe6ad7bc78f5e4e              # double 0.70867718674248592
	.quad	0x3feccb84966da30c              # double 0.89984349613686864
	.quad	0x3fdc3ed2779a373a              # double 0.44133435897753126
	.quad	0x3feb11d931889594              # double 0.84592876123922389
	.quad	0x3fd266ce116a49ce              # double 0.28752471638395327
	.quad	0x3fe4753624e11a30              # double 0.6393080444621031
	.quad	0x3fe182c57b4377bb              # double 0.54721330714141148
	.quad	0x3fdcf9004fd8566c              # double 0.45269782826776495
	.quad	0x3fe2ecbf6f9378bd              # double 0.59139987747382572
	.quad	0x3fbfaac5dfe3f440              # double 0.12369953838420233
	.quad	0x3fd17babceb24998              # double 0.2731732862968328
	.quad	0x3fec67777523ac0e              # double 0.88763020399835724
	.quad	0x3fd85c1295c6af48              # double 0.38061966539929815
	.quad	0x3fef19e2c032f546              # double 0.97190988100889153
	.quad	0x3fde09535f11dfdc              # double 0.46931919368898689
	.quad	0x3fc494c6dd62483c              # double 0.16079030809174977
	.quad	0x3fedf363e125aa7c              # double 0.93596071218537657
	.quad	0x3fe3418b813e6fa9              # double 0.60175109141299743
	.quad	0x3fe3bd7520d8f86d              # double 0.61687714019332207
	.quad	0x3fd1a534b96de136              # double 0.27570837124177971
	.quad	0x3fe19bd8855b7e85              # double 0.55027414366118477
	.quad	0x3fe7108289c0407a              # double 0.72076537041176825
	.quad	0x3fe68b989a2168b9              # double 0.70454053977598285
	.quad	0x3fedc4d0503c7fdb              # double 0.93027511283070952
	.quad	0x3fa5bd96c006c340              # double 0.042462073269581513
	.quad	0x3fee6680d2fd4fbe              # double 0.95001260002981502
	.quad	0x3fbf14b040397538              # double 0.12140943115214931
	.quad	0x3fdf7d247ea9bf86              # double 0.49201309556428219
	.quad	0x3fe407fc918ac38d              # double 0.62597492624455386
	.quad	0x3fe0c80104f5eac9              # double 0.52441454857702141
	.quad	0x3fdf13b95a5ec738              # double 0.48557885956971658
	.quad	0x3fd0872ae8e6e0b8              # double 0.25824997658083815
	.quad	0x3fe6e3724df44c60              # double 0.71526446557471601
	.quad	0x3fb249a2ec8e4d08              # double 0.071436102631469933
	.quad	0x3fe5de15a475b458              # double 0.68335992928553946
	.quad	0x3fad780eab84f880              # double 0.057556589543751535
	.quad	0x3fdfc12546e8ff16              # double 0.49616367268389305
	.quad	0x3fdef9d021ab1710              # double 0.4839973763267702
	.quad	0x3fe33ce0567a111b              # double 0.60118119134907333
	.quad	0x3fde5aa369ebae42              # double 0.47428212493716526
	.quad	0x3fed17bb169407cb              # double 0.90914682779134048
	.quad	0x3fd8505a4cd3f504              # double 0.37990434172373022
	.quad	0x3fb4d8613b86b2a0              # double 0.081426693947558082
	.quad	0x3fd93f13d995b44c              # double 0.39447494743837264
	.quad	0x3fe9fb1ccdf77662              # double 0.81190338352071145
	.quad	0x3fee210d029055e0              # double 0.94153452397102554
	.quad	0x3fe0d849303fc3a2              # double 0.52640208648346154
	.quad	0x3fbe7d855b2704f0              # double 0.11910279727364403
	.quad	0x3fd756f408cd240c              # double 0.36468220576767929
	.quad	0x3fec71a176c6ef91              # double 0.88887093733454681
	.quad	0x3fc7db97ab3aee80              # double 0.18638892994737333
	.quad	0x3fe1c45e31bf62a7              # double 0.55522069660499518
	.quad	0x3fed82f9562cb18e              # double 0.92223803359006395
	.quad	0x3fd25ec7920a6c34              # double 0.28703488599575455
	.quad	0x3fec698f67198390              # double 0.88788576256421159
	.quad	0x3fea46af93e50a37              # double 0.8211286438530071
	.quad	0x3fec431f6c496023              # double 0.88319369458895769
	.quad	0x3fdb9a38eb9bbdea              # double 0.43128798493032028
	.quad	0x3fe8b1f1ead6e575              # double 0.77172180049016836
	.quad	0x3feaeb86cf6a5f64              # double 0.84125080595820778
	.quad	0x3fec74958a5bb742              # double 0.8892314626989235
	.quad	0x3fed69b63a17b13b              # double 0.91915427538109584
	.quad	0x3fe93a942f7473bf              # double 0.78840073841603686
	.quad	0x3fe186b0afa7f27e              # double 0.54769167239972183
	.quad	0x3feaa2c3c8b9d2d9              # double 0.83236874775192427
	.quad	0x3fe0392a42910dc3              # double 0.50697815896312937
	.quad	0x3fe31575022ffd3e              # double 0.59636927058446765
	.quad	0x3fc27417162dc854              # double 0.14416779120398593
	.quad	0x3f8ef5739d3d8d80              # double 0.015116599308106826
	.quad	0x3fe85c8f53587cda              # double 0.7612988117070032
	.quad	0x3feed85db24e5783              # double 0.96391186547656138
	.quad	0x3fcca21d0f9c9a7c              # double 0.22369731199542631
	.quad	0x3fc8724187b36758              # double 0.19098681570067799
	.quad	0x3fecf7189f32acb1              # double 0.90516310780858167
	.quad	0x3fe38a221d6e7b22              # double 0.61061197040894322
	.quad	0x3fb9d6643b76fc60              # double 0.10092760516907751
	.quad	0x3fe2ed8aa598bc04              # double 0.59149677603807094
	.quad	0x3fe385ffa7a37644              # double 0.61010725728892412
	.quad	0x3fe60a87f2f1d8ff              # double 0.68878552866115672
	.quad	0x3fe932ea23fe64bc              # double 0.78746516256355603
	.quad	0x3fa08513474b1c10              # double 0.032265284016425366
	.quad	0x3fc5bb71fddb590c              # double 0.16978287597039132
	.quad	0x3fd5de89d3cf7656              # double 0.34170766529664343
	.quad	0x3fea6655e2345b05              # double 0.82499212437218772
	.quad	0x3fef7289951b0bbb              # double 0.98273162004658531
	.quad	0x3fd7754a41cfddc4              # double 0.36653381754828396
	.quad	0x3fd563e19aa207b8              # double 0.3342212686621866
	.quad	0x3fd7f525790c128c              # double 0.3743375475026276
	.quad	0x3fe72d2fb8d7eafd              # double 0.72426591970665266
	.quad	0x3fe036c3d22da2f1              # double 0.50668517160838011
	.quad	0x3fee12c237f52c96              # double 0.93978987626305144
	.quad	0x3fe906d161d5c86a              # double 0.78208226307311901
	.quad	0x3fe98db226e85023              # double 0.79854686354747562
	.quad	0x3fe5b9d2168c03e3              # double 0.67893318561266047
	.quad	0x3fecc7102219c098              # double 0.89929968509933911
	.quad	0x3fc258545d782008              # double 0.14332060398032831
	.quad	0x3fea45065ea34d39              # double 0.82092588886226914
	.quad	0x3fc9a8d97e2b839c              # double 0.20046538029330641
	.quad	0x3fe43fcc3c95f9bd              # double 0.63278781731769806
	.quad	0x3fe58ad01a8b96a0              # double 0.67319493469831926
	.quad	0x3fdc4cc1c9f902ee              # double 0.44218487476250246
	.quad	0x3fe64a06e2928a01              # double 0.69653648617196506
	.quad	0x3feec9c740dd0d0a              # double 0.9621311442246292
	.quad	0x3fc0463ed963c2d4              # double 0.12714372267466578
	.quad	0x3fb77b867782dbf0              # double 0.091728595902949683
	.quad	0x3fb7d740e4132c10              # double 0.093128257448526818
	.quad	0x3fc2c9b3f0f2cbf8              # double 0.14678048386630826
	.quad	0x3feddb360388df51              # double 0.93300915422785569
	.quad	0x3fc6b088efed50b8              # double 0.1772624179381006
	.quad	0x3feb5595ed3f27ef              # double 0.85419746720549294
	.quad	0x3fe99ce9ba4cff20              # double 0.80040441882008295
	.quad	0x3fe37f76a9d54841              # double 0.60930951281103074
	.quad	0x3fd79427839cbf10              # double 0.36841762402308209
	.quad	0x3fea64f176dd069a              # double 0.82482217040542882
	.quad	0x3fe9e57b3048c13a              # double 0.80926284246928692
	.quad	0x3febf06d74f43969              # double 0.8730990680940468
	.quad	0x3feb36c6b47705ee              # double 0.85043654677445857
	.quad	0x3fe9fa0139b8555b              # double 0.81176816247413386
	.quad	0x3feb89421e0548d7              # double 0.8605051599827459
	.quad	0x3fc10ccf0958e7dc              # double 0.13320339161310712
	.quad	0x3fe09cce41a07438              # double 0.5191413194439809
	.quad	0x3fe04f1e7ddfcbaf              # double 0.50965809426121733
	.quad	0x3fb71bd1bb4ad5d8              # double 0.090268238282838253
	.quad	0x3fe5954949f5bac1              # double 0.6744734234360622
	.quad	0x3fc7b3abbb456d84              # double 0.18517061847783733
	.quad	0x3fe953ac9e4014f4              # double 0.79146414669290132
	.quad	0x3fefea9761a4e703              # double 0.99738663741229094
	.quad	0x3fe2d6957e3950a7              # double 0.58869433072188293
	.quad	0x3fd0e3f5e127ec1c              # double 0.26391360271344566
	.quad	0x3fd5304cc89c18da              # double 0.3310729941444045
	.quad	0x3fefb46696899210              # double 0.99077157403786664
	.quad	0x3fe4d5b82a42e72d              # double 0.65108879331748926
	.quad	0x3feaeca07957faca              # double 0.84138511371551172
	.quad	0x3fe56ccbe8783c66              # double 0.6695308247016214
	.quad	0x3feb69ba8fcc73d0              # double 0.85665634236976906
	.quad	0x3fcc584204f3ef0c              # double 0.22144341699446846
	.quad	0x3fe40d3c6d5deaf2              # double 0.62661572800365506
	.quad	0x3fed158575f0f2c1              # double 0.90887711558715278
	.quad	0x3feed50d85caba9f              # double 0.96350742465240901
	.quad	0x3fd1c3d99477ab42              # double 0.27757873057150928
	.quad	0x3fd33dff1a5a778e              # double 0.30065896581242491
	.quad	0x3fe78db834d5ca87              # double 0.73604975051269228
	.quad	0x3feb163e314193f2              # double 0.84646520252556301
	.quad	0x3fe57529a8a57dcb              # double 0.67055209101447966
	.quad	0x3fd7a6b38f52660a              # double 0.36954964634205167
	.quad	0x3fe4b05076586078              # double 0.64652274240780994
	.quad	0x3fcfab1640f49454              # double 0.24740865871095485
	.quad	0x3f511ca386779c00              # double 0.0010444256712334177
	.quad	0x3fe78e89d87adb0a              # double 0.73614971429091836
	.quad	0x3fe963237d1399bf              # double 0.79335188321129368
	.quad	0x3fcc7d1364954e0c              # double 0.22256700907983917
	.quad	0x3fe07e51f068fcc2              # double 0.51541993098353367
	.quad	0x3fdac9c7ea4fb7f8              # double 0.41856572992298835
	.quad	0x3fb6b52fdb4d2550              # double 0.088702193298691556
	.quad	0x3fe2154ec82459de              # double 0.56510104265435834
	.quad	0x3fe7b32c423adc69              # double 0.74062169013531076
	.quad	0x3fea1901ee9e7aee              # double 0.81555267911229889
	.quad	0x3fd775c536b962e4              # double 0.36656313270718344
	.quad	0x3fe8d63bd85159cc              # double 0.77615158319059096
	.quad	0x3fd81bc5f5bf860e              # double 0.37669514654962277
	.quad	0x3feda2a5e8a32088              # double 0.92610450207668382
	.quad	0x3fc2d856cee99650              # double 0.14722714522501912
	.quad	0x3fb27905c087a3b8              # double 0.072159156326633389
	.quad	0x3fe3cb3361f4ec84              # double 0.61855477459120367
	.quad	0x3fd0200cd3d9a486              # double 0.25195618332379188
	.quad	0x3fa4ae9b38f07880              # double 0.04039464063701903
	.quad	0x3fe92c83cb612979              # double 0.78668393824163652
	.quad	0x3fee42f37ecc28b2              # double 0.94567274823318415
	.quad	0x3fec3d80bab70c62              # double 0.88250767200259994
	.quad	0x3facd3e3028678d0              # double 0.056304067667257152
	.quad	0x3fb81d6df4eab120              # double 0.094199058813221103
	.quad	0x3feb0b85f63a6e2b              # double 0.84515665141538443
	.quad	0x3fd0a3dfadbc6e86              # double 0.26000205961620571
	.quad	0x3fe9ce50fb2bd7e7              # double 0.8064350991905912
	.quad	0x3fea2fadfd479b23              # double 0.81832026928609414
	.quad	0x3feddd52367ff2a7              # double 0.93326674122325393
	.quad	0x3fe0fc7160ba368d              # double 0.53081578151768982
	.quad	0x3fef60090357abfa              # double 0.98047304776025546
	.quad	0x3fe9e7dfbe17629c              # double 0.80955493094650732
	.quad	0x3fd38ee28caae674              # double 0.30559600579326873
	.quad	0x3fc40361bd26d698              # double 0.1563532041160911
	.quad	0x3fe516464f6f0cb1              # double 0.65896907343303301
	.quad	0x3fc8d411be86ba60              # double 0.19397184184113581
	.quad	0x3fdd3312a6fcbb90              # double 0.4562422400221573
	.quad	0x3fdc0826775074ae              # double 0.43799745227608866
	.quad	0x3fe7a819298a2a90              # double 0.73926981080269805
	.quad	0x3fdfef1fbec3ca8c              # double 0.49896997098327556
	.quad	0x3fe22f84b38ce637              # double 0.56830058163104169
	.quad	0x3fe07906e5ae59c4              # double 0.51477379664975631
	.quad	0x3fbce861dac8cc98              # double 0.11292087165274933
	.quad	0x3fdb469fd1c388c4              # double 0.42618556484934467
	.quad	0x3feb04c33754d390              # double 0.84433136755852622
	.quad	0x3fb919aca7c7cdc0              # double 0.098048010789901774
	.quad	0x3fea3ffab17ca535              # double 0.82030996957215641
	.quad	0x3fa30a505ad03430              # double 0.037188063703162633
	.quad	0x3fe9aec0d890e930              # double 0.80258219049509272
	.quad	0x3fed8f4769035a0f              # double 0.92374010572786058
	.quad	0x3fe4a169afd8e208              # double 0.64470371575504348
	.quad	0x3f7070a767179680              # double 0.004013685147105428
	.quad	0x3fc98aac17924508              # double 0.19954444075532529
	.quad	0x3fe37ae2a436283a              # double 0.6087506491906034
	.quad	0x3fd9b502657aea40              # double 0.40167293462915055
	.quad	0x3fa2e4b0473d7310              # double 0.036901005455297065
	.quad	0x3fdaddf7ec173318              # double 0.41979787879681529
	.quad	0x3fecc50b4cd29645              # double 0.89905323986449359
	.quad	0x3fea6a2b4c43f2c8              # double 0.82546009917822349
	.quad	0x3fad0516941a4af0              # double 0.056679444865172957
	.quad	0x3fb5e8096780c3b0              # double 0.085571849602969818
	.quad	0x3fd86586126ecae2              # double 0.38119651603771676
	.quad	0x3fea62ac15e1f37d              # double 0.82454494737576989
	.quad	0x3fc08836d5baf448              # double 0.12915692745255769
	.quad	0x3fef1badf7133490              # double 0.97212885147895811
	.quad	0x3fe0110dc73d6766              # double 0.50208176530871351
	.quad	0x3fe565b66086f817              # double 0.66866606572125675
	.quad	0x3fdcb74909250aee              # double 0.44868684666668812
	.quad	0x3fd0f437d60f5f3c              # double 0.2649058905058046
	.quad	0x3fe3db1e5877737f              # double 0.62049786833414078
	.quad	0x3fb9ba7b73f42fc8              # double 0.10050174313454285
	.quad	0x3fe3eee62b2d982b              # double 0.6229124873468711
	.quad	0x3feb819b4802d10b              # double 0.8595711142029655
	.quad	0x3feaa79dc9e319f6              # double 0.83296098166539312
	.quad	0x3feb3a94753c281a              # double 0.85090086839159373
	.quad	0x3fe849801cfb63c5              # double 0.75897222195191516
	.quad	0x3fd524b5f05092e8              # double 0.33036564319836126
	.quad	0x3fbdcc5b75bd11f8              # double 0.1163994944045682
	.quad	0x3fd2d25defd0d0ca              # double 0.29408977908611844
	.quad	0x3fd617f06531263e              # double 0.34521112329511883
	.quad	0x3fe743ff67b34f8b              # double 0.72705049756994933
	.quad	0x3fd39d7b235df7da              # double 0.30648687795462382
	.quad	0x3fc01930b0f56bd8              # double 0.12576874390182868
	.quad	0x3fe99440caae6a8c              # double 0.79934730135149001
	.quad	0x3fd6f4bf2dccb1c4              # double 0.35868815872779813
	.quad	0x3fb42fdae17b9e60              # double 0.078855209397823867
	.quad	0x3fc87276fd7547a0              # double 0.19099318862805337
	.quad	0x3fddc6b457a63c5c              # double 0.46525295791156451
	.quad	0x3fe57f74df34f089              # double 0.67180865855290606
	.quad	0x3fd1efd16a3a576c              # double 0.28026233075922025
	.quad	0x3fe8ee3b9d42b9c6              # double 0.77908116068811561
	.quad	0x3fcb576f64cc194c              # double 0.21360580846539745
	.quad	0x3feca1f4ecec430a              # double 0.89477010988238814
	.quad	0x3feb05160bfc4d48              # double 0.84437086430481489
	.quad	0x3fede24401b2a051              # double 0.93387031871407988
	.quad	0x3feb0665b4bf98df              # double 0.84453091909815814
	.quad	0x3fb6670c791b0018              # double 0.087509898726239377
	.quad	0x3fd9ab27eac3723a              # double 0.40107152868384655
	.quad	0x3f9e2ff8c8bddb40              # double 0.02947987294416099
	.quad	0x3fc787afebe63448              # double 0.18382834452168795
	.quad	0x3fea1cbdf9c3575e              # double 0.81600855619283741
	.quad	0x3fe10977c450be3f              # double 0.53240574210025915
	.quad	0x3feb962bd00e1712              # double 0.86208143840551288
	.quad	0x3fd8887fe841eab2              # double 0.38333127671618705
	.quad	0x3fe9341d8dc2a5cd              # double 0.78761174857680205
	.quad	0x3feb7b567038af84              # double 0.85880586546180426
	.quad	0x3fe9b30bc766abd7              # double 0.80310620255965659
	.quad	0x3fc79ba2a8148148              # double 0.18443711478267688
	.quad	0x3fcbaf3e42f02f38              # double 0.21628549831836508
	.quad	0x3fc8a4342cd7ad08              # double 0.19251110257696546
	.quad	0x3f8ae2f6ce4adf00              # double 0.0131282121377434
	.quad	0x3fee3e42b5b314bc              # double 0.94510016906919913
	.quad	0x3fd214c2ff9737da              # double 0.28251719436673073
	.quad	0x3fcfb5bbc3f170e0              # double 0.24773356502090049
	.quad	0x3fdca09672eb9946              # double 0.44730149481474191
	.quad	0x3fe22ae65065a710              # double 0.56773677542261858
	.quad	0x3fe6ca9f5a486f03              # double 0.71223418839824182
	.quad	0x3fa03a47372fa3a0              # double 0.031694627272208509
	.quad	0x3fdc9a177ab0b55c              # double 0.44690501195403498
	.quad	0x3fd89e4edf014e42              # double 0.38466235902635415
	.quad	0x3fe5ad56fcc8d0f7              # double 0.67740964290581374
	.quad	0x3fed9976d4885764              # double 0.92498342046995363
	.quad	0x3fead7286981fbae              # double 0.83876438719732049
	.quad	0x3fc988184fce930c              # double 0.19946578881094756
	.quad	0x3fec8add0733df0c              # double 0.89195109755289214
	.quad	0x3fd58581e09d108a              # double 0.33627364096560852
	.quad	0x3fde813eeea5e216              # double 0.47663853936640643
	.quad	0x3fe31cf16de5bd3b              # double 0.59728309120502077
	.quad	0x3fb9af2e9b0ff368              # double 0.10032931600285411
	.quad	0x3feffce0cb681379              # double 0.99961890914765583
	.quad	0x3fe33b4a4d1be014              # double 0.60098757801370306
	.quad	0x3fd1c77938bed3fa              # double 0.27779989759011381
	.quad	0x3fd1f100363aed84              # double 0.2803345231620471
	.quad	0x3fe2de8d703505ab              # double 0.5896670524163502
	.quad	0x3fe74a7c0dc5c9fa              # double 0.7278423565861083
	.quad	0x3fd9a1f0841aa4b4              # double 0.40050900364674225
	.quad	0x3fd6833ebc95c65e              # double 0.35176056305417613
	.quad	0x3fd3f43741b767c2              # double 0.31178075235004254
	.quad	0x3fc9e144357ec9fc              # double 0.20218708622049053
	.quad	0x3fedeeee72cc1f98              # double 0.93541643544539265
	.quad	0x3fd8049d27ebf242              # double 0.37528160952186707
	.quad	0x3fdd174a54bd2db2              # double 0.45454653048792715
	.quad	0x3fc96234160a53c8              # double 0.19830943180264016
	.quad	0x3fbec96f7b0e8118              # double 0.1202611613684933
	.quad	0x3fd33488000e1e26              # double 0.30008125310311795
	.quad	0x3fe152d8e7f4c975              # double 0.54136319450326076
	.quad	0x3fbf5d022c9d1e80              # double 0.1225129469795494
	.quad	0x3fe9866c4a3dc6dc              # double 0.79765905857331231
	.quad	0x3fd51bc5350840e8              # double 0.32981996706895567
	.quad	0x3fc9a1f64a019448              # double 0.20025519002516234
	.quad	0x3fe864f432c2a8bf              # double 0.76232347406519085
	.quad	0x3fde95a8e83ecc44              # double 0.47788450889783385
	.quad	0x3fec8b141647f9bf              # double 0.89197735168254855
	.quad	0x3fedcbf9edc58252              # double 0.93114944877386052
	.quad	0x3fd027ee9fa12aa6              # double 0.25243726338218619
	.quad	0x3fe14a0e732d94f4              # double 0.5402900933810586
	.quad	0x3fe7a6b39f56e284              # double 0.7390993225190674
	.quad	0x3fb26a56a6df2dd0              # double 0.071935096492942607
	.quad	0x3fd9caabde75c2f0              # double 0.40299507832155168
	.quad	0x3fe7d4b36daa335e              # double 0.74471446436801236
	.quad	0x3fdb3598e5ce5e0c              # double 0.42514631692890315
	.quad	0x3fe2934d7164ce72              # double 0.58048126361104679
	.quad	0x3fe22acdc6d76fd3              # double 0.56772507511368031
	.quad	0x3fe576ae9cc30e25              # double 0.67073755853238437
	.quad	0x3fe0c231c3ec5ac4              # double 0.52370537058126176
	.quad	0x3fcae3b534afbf04              # double 0.21007409164985102
	.quad	0x3fce2b5bce38c2dc              # double 0.23569819993419727
	.quad	0x3fccbeed45cd3e04              # double 0.22457662494933583
	.quad	0x3fa95c9f698a72a0              # double 0.049534780152702185
	.quad	0x3fe8e589c9e0fa4a              # double 0.77801980428177697
	.quad	0x3fe9268322e341e0              # double 0.78595120252617434
	.quad	0x3f9e759082641840              # double 0.029745347937044864
	.quad	0x3fec68ca48a6a256              # double 0.8877917689288306
	.quad	0x3fd1c63a546e421e              # double 0.27772386784730141
	.quad	0x3fef4b724aa51241              # double 0.97795977191032801
	.quad	0x3fd8b37f35b51082              # double 0.38595562214710111
	.quad	0x3fcdda113d2a9590              # double 0.23321738707197115
	.quad	0x3fecdcbd029bdc46              # double 0.90194559583222467
	.quad	0x3fe7042d40062efb              # double 0.7192598581763997
	.quad	0x3fe6ae5351e1dfa3              # double 0.70877996437683455
	.quad	0x3fee0070f3a9d9f2              # double 0.93755385962032123
	.quad	0x3f8985f480b0f640              # double 0.012462530305238251
	.quad	0x3fee25506b2e0cf2              # double 0.9420549481732492
	.quad	0x3fe414a3e4fc0ecb              # double 0.62751955722384289
	.quad	0x3fee4903d925ff8a              # double 0.94641296779444528
	.quad	0x3fecfa1c45fe6c89              # double 0.90553105993912297
	.quad	0x3fc7c8260418b1ec              # double 0.18579554748556804
	.quad	0x3fd76ae697d7db1c              # double 0.3658997042506813
	.quad	0x3fdc0c2fb7cdc9d4              # double 0.43824379872890273
	.quad	0x3fe3a0c7db5f60ab              # double 0.61337654920773355
	.quad	0x3fe4d30beabc0da7              # double 0.65076251837347321
	.quad	0x3fefc81e4721cf83              # double 0.99317850010855612
	.quad	0x3fee6b3626231cdb              # double 0.95058734368003728
	.quad	0x3fcabd71656559c0              # double 0.2089063401314899
	.quad	0x3fe1b91c05ca861c              # double 0.55384637003971049
	.quad	0x3fcc8d76ced0263c              # double 0.22306714151663865
	.quad	0x3fd50820cd558568              # double 0.32862110187678306
	.quad	0x3f80a57e82c72080              # double 0.0081281551037053479
	.quad	0x3fb4a9a72f79aa48              # double 0.080713700380934061
	.quad	0x3fe707e555bb4b83              # double 0.71971384758431645
	.quad	0x3feb83a1934a3a25              # double 0.85981825606888107
	.quad	0x3fce4a8b46618d28              # double 0.23664990364623262
	.quad	0x3fd37d371e4f8e0a              # double 0.30451753578219665
	.quad	0x3fe7aa97e64c67f6              # double 0.73957438450020052
	.quad	0x3feab6c5613f90d6              # double 0.83481091493424731
	.quad	0x3fe0b11b58dfa95a              # double 0.52161948545589643
	.quad	0x3fe3ca2f869a2d20              # double 0.61843086518766555
	.quad	0x3fe38533785ca007              # double 0.61000989444892262
	.quad	0x3fb11a082952c048              # double 0.066803464974101279
	.quad	0x3fe8fac85529c341              # double 0.78061310418534202
	.quad	0x3fd5814e9cae8352              # double 0.33601727772661605
	.quad	0x3fdeb95af4274958              # double 0.4800631889640008
	.quad	0x3fdf000a3b6216a2              # double 0.48437743949066647
	.quad	0x3fee6ed73c04ac48              # double 0.95103036615672298
	.quad	0x3fe7d5c58cf7ebe7              # double 0.74484517605685319
	.quad	0x3fe0cc9aabc26b32              # double 0.52497609659926625
	.quad	0x3fd565957a19ed92              # double 0.33432518886521578
	.quad	0x3fee9e622ae34dca              # double 0.95683391930145345
	.quad	0x3fc3cc346e89b130              # double 0.15466933629375879
	.quad	0x3febe2da51393838              # double 0.87144199241607279
	.quad	0x3fdc1544b7ab3a76              # double 0.43879812179958522
	.quad	0x3fb32b2b869bffa8              # double 0.074877472270599044
	.quad	0x3fe015523261f2d3              # double 0.50260267105439949
	.quad	0x3fadfeb3bc103ef0              # double 0.058583847720113158
	.quad	0x3fee2117c544a5fa              # double 0.94153965500771553
	.quad	0x3fd364ed6fa0caae              # double 0.30303512479000971
	.quad	0x3fdcb8171d4f83d2              # double 0.4487359796749476
	.quad	0x3fda8568c061bbc2              # double 0.41439265048296303
	.quad	0x3fe1d3a7ddab3226              # double 0.55708688063311196
	.quad	0x3fed2b9f74cbf57c              # double 0.91157505809648808
	.quad	0x3fcce609006b6cbc              # double 0.22577011604776043
	.quad	0x3fcdcda8b21cbcf4              # double 0.23283871361625297
	.quad	0x3fe1e7705aa17179              # double 0.55950181676193644
	.quad	0x3fdf7b02fa683536              # double 0.49188303426565783
	.quad	0x3fe04785a8b234cf              # double 0.50873072575054745
	.quad	0x3fef1d41176819bc              # double 0.97232107707605264
	.quad	0x3fe733ab8c7404d4              # double 0.72505738670602193
	.quad	0x3fac67602aea3940              # double 0.055476193655624062
	.quad	0x3fef17d8b9ed2faa              # double 0.97166096032878113
	.quad	0x3fd680287e7f693c              # double 0.35157215455332724
	.quad	0x3fe2dfdd390dd6e7              # double 0.58982716697093174
	.quad	0x3fd9000753cc8816              # double 0.39062674697390898
	.quad	0x3fedffbff50ec114              # double 0.93746946204012937
	.quad	0x3fdcc34f147405f8              # double 0.44942070958504088
	.quad	0x3fc02ac2863b3e54              # double 0.12630492738979859
	.quad	0x3fec2306bc143f71              # double 0.87927567228505954
	.quad	0x3fd5b0c0f9af83d8              # double 0.33891319640502848
	.quad	0x3fd6be307894b810              # double 0.35535823607904238
	.quad	0x3fe259f9683c63d3              # double 0.57348318441938273
	.quad	0x3f7cb9d2b4c71180              # double 0.0070131521901583005
	.quad	0x3fdc94b9681dd214              # double 0.44657740752816832
	.quad	0x3fd4e92e3a62cfba              # double 0.32673221303707189
	.quad	0x3fc7656c642e2900              # double 0.18278269664399005
	.quad	0x3fdc40abd66fc44c              # double 0.44144721928666253
	.quad	0x3fe0e9ddb8359ac5              # double 0.52854810694119492
	.quad	0x3fc0d1036fb69628              # double 0.13137858347651954
	.quad	0x3fdde912a1243cc0              # double 0.46735063301543889
	.quad	0x3fe08f421fe6ec13              # double 0.51748758536212092
	.quad	0x3fe006f104976240              # double 0.50084734818216958
	.quad	0x3fe30ec46f263b58              # double 0.59555265148979242
	.quad	0x3fe2a4efdba59dc2              # double 0.58263390445511498
	.quad	0x3fc0aff5bae6a084              # double 0.13036986948032248
	.quad	0x3fe012f78f443ac2              # double 0.50231531125776763
	.quad	0x3fefc5c908da0a75              # double 0.99289371231891598
	.quad	0x3fd78380275aab90              # double 0.36740115969831155
	.quad	0x3fee12ed1a705fda              # double 0.93981032527789954
	.quad	0x3fbd939c06f91358              # double 0.11553359194028923
	.quad	0x3fd15499cdf56fde              # double 0.27078862298162487
	.quad	0x3fbfcba2e3574178              # double 0.12420099306405585
	.quad	0x3fc09e4396e949a4              # double 0.12982983463969078
	.quad	0x3feec318273503de              # double 0.96131522805819336
	.quad	0x3fe11a5a4c2a0f30              # double 0.5344668853362915
	.quad	0x3fe07d4f56a0cc5f              # double 0.51529662055544267
	.quad	0x3fd2ad9953c49ada              # double 0.29184563808887065
	.quad	0x3fea43054f6654ad              # double 0.82068124301681211
	.quad	0x3fe5d492e6e4ff07              # double 0.68219895454964863
	.quad	0x3fe0e6c84b92798a              # double 0.52817168007077098
	.quad	0x3fee0811d634d4b8              # double 0.93848506772214701
	.quad	0x3fec62fb74f0e977              # double 0.88708279457141159
	.quad	0x3fc4970c38d1d058              # double 0.16085961126703086
	.quad	0x3fe662356fa82aef              # double 0.69948837097157746
	.quad	0x3fdea2afba661dfc              # double 0.47867959216134159
	.quad	0x3fc436192b073c8c              # double 0.15790094948758726
	.quad	0x3fe41d077f3dd35c              # double 0.62854361392838198
	.quad	0x3fe947d33873b748              # double 0.79001770997795351
	.quad	0x3fd3c0577472faee              # double 0.308614600868096
	.quad	0x3fe426638e59b4be              # double 0.62968614390197053
	.quad	0x3fdf000a8cd69f3a              # double 0.48437751535174167
	.quad	0x3fed03b3626d0a42              # double 0.90670174812141391
	.quad	0x3fac58736079ecb0              # double 0.055362325217140351
	.quad	0x3fe71735eaa755e6              # double 0.72158332663337599
	.quad	0x3fedb466d51b2b4f              # double 0.92827169058123526
	.quad	0x3fd88810877a4190              # double 0.38330472212057831
	.quad	0x3fda41c9681bd840              # double 0.4102653042494957
	.quad	0x3fdbf3d2a430bb74              # double 0.43675676378455042
	.quad	0x3fc387be5623e6b4              # double 0.15258006292406423
	.quad	0x3fe6761418be21ca              # double 0.70191387970503993
	.quad	0x3fca364dee294b58              # double 0.2047822392365457
	.quad	0x3fd168d1d8b9f03e              # double 0.27202268757514847
	.quad	0x3fd3069df06b86ce              # double 0.29727886656301628
	.quad	0x3feb9da133659bdd              # double 0.86299190557917493
	.quad	0x3fd7c8ecfc6c69c4              # double 0.3716385331223615
	.quad	0x3fc14e91cc36b40c              # double 0.13521025153514221
	.quad	0x3fe9cea03c59a5f1              # double 0.80647289073129802
	.quad	0x3fedf18f3bef1541              # double 0.93573724466174479
	.quad	0x3f5c718a6fbc8c00              # double 0.0017360546034488333
	.quad	0x3fbab949e87634b8              # double 0.1043897812398481
	.quad	0x3fd7fec5964737d2              # double 0.37492503810505895
	.quad	0x3fe027dfff3168a4              # double 0.50486755220778834
	.quad	0x3fd47e2778a1f79e              # double 0.32019984036002735
	.quad	0x3fe4c1a55f53b028              # double 0.64863842600380384
	.quad	0x3fda211b31a36a16              # double 0.40827064368719002
	.quad	0x3fef67299ca6aaec              # double 0.98134308429629646
	.quad	0x3fb330d432915c68              # double 0.07496381983342959
	.quad	0x3feca0f4628c38e7              # double 0.89464778182607751
	.quad	0x3fe33f76b0e68b2f              # double 0.60149702597514032
	.quad	0x3fe61cb6a0900d1d              # double 0.69100505218412744
	.quad	0x3fc6eb80c18f6b50              # double 0.17906197978194394
	.quad	0x3fd3d711ea884ed2              # double 0.31000183013496241
	.quad	0x3fe582dcede35e6f              # double 0.6722244879010314
	.quad	0x3fb6238960615e80              # double 0.086479745893820236
	.quad	0x3fe9084c43920cb0              # double 0.78226292798389885
	.quad	0x3fb60f5c8af5bd08              # double 0.086171897817383436
	.quad	0x3fd2f4f2dfa0d9a2              # double 0.29620048369124607
	.quad	0x3fe8ab4019da904d              # double 0.77090458917201377
	.quad	0x3fe9916523fe711a              # double 0.79899842290936651
	.quad	0x3feb24afee0d7d40              # double 0.84822842116037833
	.quad	0x3febc1f376f603ca              # double 0.86742566332406423
	.quad	0x3fd1ee5128114dc6              # double 0.28017071640826108
	.quad	0x3fe6570869d59aef              # double 0.69812412901668874
	.quad	0x3fe5596e24cb170b              # double 0.66716677843280203
	.quad	0x3fe5d4f453e1ef50              # double 0.68224541076004108
	.quad	0x3fe02b9c3ef525b6              # double 0.50532352730186036
	.quad	0x3fe87a2702fd27e1              # double 0.76491118034141092
	.quad	0x3fe2cedf70030458              # double 0.58775302769948734
	.quad	0x3febfcfafa3bbb58              # double 0.87463139413544422
	.quad	0x3fe828bf5dd4cf45              # double 0.75497406317160964
	.quad	0x3fe25c0e27f40899              # double 0.57373721888895368
	.quad	0x3fbc60d9728a4c78              # double 0.11085280462639158
	.quad	0x3faafa0159fd7f20              # double 0.052688638911375429
	.quad	0x3fcab68de52ac908              # double 0.20869611444283742
	.quad	0x3fd20aa32a5f5688              # double 0.28189925325327936
	.quad	0x3fe8cd2cf5929d8c              # double 0.77504585231229006
	.quad	0x3fdb8a0e94be2342              # double 0.43030132795006548
	.quad	0x3fe891a57958dd4f              # double 0.76777909947024081
	.quad	0x3fe20d1e15a9f9cf              # double 0.56410125952953105
	.quad	0x3f82b7c3cc265440              # double 0.0091395661045600151
	.quad	0x3fc5ccbca34f4b70              # double 0.17031057333096156
	.quad	0x3fed365e91e6e8eb              # double 0.91288689133150791
	.quad	0x3fd32dd85758e0d4              # double 0.29967316179273706
	.quad	0x3fe90b91c02fd303              # double 0.78266227280127543
	.quad	0x3f99fb94ae1ecc80              # double 0.025373767020664406
	.quad	0x3fd9aedef18c8622              # double 0.4012982710720242
	.quad	0x3fe3b98fc8d9b0f8              # double 0.61640156963906545
	.quad	0x3fe74224592c4482              # double 0.72682397286020284
	.quad	0x3fd756964bf88d0e              # double 0.36465985697778158
	.quad	0x3fc74a4d76bdbd78              # double 0.18195503518971257
	.quad	0x3fe03d271bf588e8              # double 0.50746493778958968
	.quad	0x3fdde2a603044d8a              # double 0.46695852560625239
	.quad	0x3fd30796893214a8              # double 0.29733813665400044
	.quad	0x3fe22707a5c163f8              # double 0.56726438879115815
	.quad	0x3feb648026956232              # double 0.85601813827367423
	.quad	0x3fd2c4b7821e990e              # double 0.29325664240822469
	.quad	0x3fe2be1e8760be22              # double 0.58570791665073707
	.quad	0x3fcb23aa87ff35e0              # double 0.21202594414209752
	.quad	0x3fcb914db88f0d18              # double 0.2153718138853058
	.quad	0x3febfdd0d0f89232              # double 0.8747333604301899
	.quad	0x3fe51e843d607501              # double 0.6599751662030543
	.quad	0x3fef7f1914c30dba              # double 0.98426488928855993
	.quad	0x3fb5835f5f9ea4d8              # double 0.084035836071638115
	.quad	0x3fc8c275de02b858              # double 0.19343446102488104
	.quad	0x3fd34ac69d2813b6              # double 0.30143895480460559
	.quad	0x3fdbcea084a596ea              # double 0.43448651269714722
	.quad	0x3fe146251f9ec751              # double 0.53981262374711936
	.quad	0x3fe83ff3cf56aee1              # double 0.75780668731519196
	.quad	0x3fec15eb5a2b55c8              # double 0.87767570124804539
	.quad	0x3fef9ff487a8953e              # double 0.98827578063779931
	.quad	0x3fb3557091400f28              # double 0.07552245660923218
	.quad	0x3fc87fefd069fcdc              # double 0.19140432049241596
	.quad	0x3fef9e15372da21c              # double 0.98804722573283099
	.quad	0x3fe51e046c6b625a              # double 0.65991421867063171
	.quad	0x3fc2aa5e051521b0              # double 0.14582419632121235
	.quad	0x3fe9d840445ae352              # double 0.80764783239929216
	.quad	0x3fed254b5757ccea              # double 0.91080252703832554
	.quad	0x3f909fe776541900              # double 0.016234985921095735
	.quad	0x3fee90cadb144543              # double 0.9551748541727324
	.quad	0x3feca66b66fb31f2              # double 0.89531488526841785
	.quad	0x3fe67d80f0343e40              # double 0.70282027163370486
	.quad	0x3fe89e32ce8956fc              # double 0.76931133593708933
	.quad	0x3fe4d357bbe5718e              # double 0.65079867075432829
	.quad	0x3fd53c7d616d719c              # double 0.33181700243383161
	.quad	0x3fee18f1d567215c              # double 0.9405450027489155
	.quad	0x3fe658b8dd6aa13c              # double 0.69833033795752142
	.quad	0x3fc7caf0012cecb4              # double 0.18588066155812089
	.quad	0x3fe8d1805cfd7fa4              # double 0.77557390367654877
	.quad	0x3fb95e66b0e74f30              # double 0.099096697034209979
	.quad	0x3fca08fde0230810              # double 0.20339940494710662
	.quad	0x3fe06327bd672d23              # double 0.51210391037730962
	.quad	0x3feebf4d593f17a8              # double 0.9608523123831576
	.quad	0x3fdf6b64d5214ef4              # double 0.49092980206954384
	.quad	0x3fd56d96921834f2              # double 0.33481373087927502
	.quad	0x3fe7f030b79b6c8a              # double 0.74807010517851436
	.quad	0x3febf5bf63a638d1              # double 0.87374848807101035
	.quad	0x3faf365d53e25c30              # double 0.060961643686077926
	.quad	0x3fe5eee4cc366d66              # double 0.68541183362269176
	.quad	0x3fec6cf90b56539c              # double 0.88830234731959789
	.quad	0x3fe1d83404219ca6              # double 0.55764199072736598
	.quad	0x3fe168c7123c5ebe              # double 0.5440402370613453
	.quad	0x3fbd8898ad5f7b98              # double 0.1153655455850483
	.quad	0x3fec10a2e45fcc08              # double 0.87703079799973782
	.quad	0x3fdbf926947fcf78              # double 0.43708195211296852
	.quad	0x3fed9eb664a02464              # double 0.92562408116749539
	.quad	0x3feb0972928979ef              # double 0.8449032651949987
	.quad	0x3fec6ffde39054ad              # double 0.88867086835911879
	.quad	0x3fe7e25d1cbf3783              # double 0.74638229002606271
	.quad	0x3fe2b150b3a6b6ba              # double 0.58414492691164033
	.quad	0x3fa26b6b560906a0              # double 0.035975794079161405
	.quad	0x3fece4e814f4183c              # double 0.90294269649962854
	.quad	0x3fe148f301480551              # double 0.54015493631610856
	.quad	0x3fe1a4f0eb7c6715              # double 0.55138441079472733
	.quad	0x3fe7cba56ece472e              # double 0.74360915796044025
	.quad	0x3fc18c9cf38090f8              # double 0.13710367097622345
	.quad	0x3fe10456712ebb6b              # double 0.53177950006452812
	.quad	0x3fded055d37e3664              # double 0.48146577504744514
	.quad	0x3feac3438b3c8060              # double 0.83633591837498144
	.quad	0x3fdab31d73dd2096              # double 0.41718231501409642
	.quad	0x3fd55fe1c4b9325a              # double 0.33397716723701409
	.quad	0x3fd497c08eb24d84              # double 0.32176221785740489
	.quad	0x3fef57d910754ac4              # double 0.97947362150656447
	.quad	0x3fda98bbbf3ea7e8              # double 0.41557210613484452
	.quad	0x3fe8f7411dfb7be6              # double 0.7801824174492793
	.quad	0x3fe882b2f483b7b9              # double 0.76595447308294873
	.quad	0x3fed03f717fef5c6              # double 0.90673403441149314
	.quad	0x3fca256aa428dcfc              # double 0.20426686301809827
	.quad	0x3fe1173962b55a84              # double 0.53408498076426314
	.quad	0x3fe6ba1c5dfc0ecc              # double 0.71021860462539044
	.quad	0x3fe7a641c4955377              # double 0.73904503245522235
	.quad	0x3fe924ee81ffaf97              # double 0.78575826063523635
	.quad	0x3fdea3df987cab56              # double 0.47875203982646519
	.quad	0x3fd473f87a10678a              # double 0.31957828445740033
	.quad	0x3fec8807ee38497e              # double 0.89160534407919534
	.quad	0x3fe2b1b638fc7ac1              # double 0.58419333582045152
	.quad	0x3fd73ade469460ce              # double 0.36296803371943731
	.quad	0x3fe4c797e0e5c4d6              # double 0.64936441350269081
	.quad	0x3fd527278b0455dc              # double 0.33051479888794488
	.quad	0x3fce17720c7ae0ec              # double 0.23509049996733411
	.quad	0x3fd40716cea285c4              # double 0.3129326837461941
	.quad	0x3fe24a2c0d4775c4              # double 0.57155420869428797
	.quad	0x3fcd7b8ff6354864              # double 0.23033332368737824
	.quad	0x3fec1318ee9bcdd3              # double 0.8773312244724657
	.quad	0x3fc8323a169c0fac              # double 0.18903280357346597
	.quad	0x3fe2d1a3ba970b81              # double 0.58809076732028143
	.quad	0x3f95a0655385c060              # double 0.021119673941427997
	.quad	0x3fc3f64a5b26a2dc              # double 0.15595368815163269
	.quad	0x3fef12459355d03f              # double 0.97098044182212805
	.quad	0x3feb2f01506f5096              # double 0.84948793134619183
	.quad	0x3fcbe75ec84f7364              # double 0.2179983594968703
	.quad	0x3fe9005664886ba6              # double 0.78129119525271018
	.quad	0x3fee9f76b83e94ad              # double 0.95696578965421042
	.quad	0x3fe362a88a1274b6              # double 0.60579325644689308
	.quad	0x3f724d1a96b4a300              # double 0.0044680632229663342
	.quad	0x3fb115dd84d90bc8              # double 0.066739888127855029
	.quad	0x3fd9b3276851db1a              # double 0.40155968844867262
	.quad	0x3fb696bdcbc6f550              # double 0.088237631082809686
	.quad	0x3fe61f3164745b50              # double 0.69130773181937322
	.quad	0x3fc667e8cbd8458c              # double 0.17504606202468798
	.quad	0x3fb726f52f340160              # double 0.090438198112683832
	.quad	0x3fe797b8518421d2              # double 0.7372705070602541
	.quad	0x3fedddab794fbd6f              # double 0.93330930417680047
	.quad	0x3fdd39a2fc2c2f38              # double 0.45664286257009534
	.quad	0x3fd659dd5a5df62a              # double 0.34923490357309339
	.quad	0x3fe838996b9f55f0              # double 0.7569090940475558
	.quad	0x3fee0fb97c0ac519              # double 0.93941950060812751
	.quad	0x3fdb20a2d482602e              # double 0.42386694672450431
	.quad	0x3febcdef379cc9d7              # double 0.86888848172957978
	.quad	0x3fdf91bf41a043b0              # double 0.49327069672386425
	.quad	0x3fef691905745383              # double 0.98157931390106545
	.quad	0x3fe5facb0269b348              # double 0.68686438056247656
	.quad	0x3fe2de5a69d74550              # double 0.58964272186327982
	.quad	0x3fe006aa8b8a45fe              # double 0.50081374410564172
	.quad	0x3fd4024beeee74ba              # double 0.31264017422820312
	.quad	0x3feeda2181fde635              # double 0.9641273058798051
	.quad	0x3feac43588c9e6c0              # double 0.83645130840815085
	.quad	0x3fc5954d761573a0              # double 0.16861885324297265
	.quad	0x3fe17595237d9e48              # double 0.54560334140564581
	.quad	0x3fce63a0e2e5aa1c              # double 0.23741541937791133
	.quad	0x3feb47527f1ad404              # double 0.85245632958560735
	.quad	0x3fe633ab57015ea3              # double 0.69380728715164641
	.quad	0x3fe5aaf110697c52              # double 0.67711690144995829
	.quad	0x3fe0649d8830f72a              # double 0.51228214835984898
	.quad	0x3fe15f8a9e4ffe29              # double 0.54291277809528993
	.quad	0x3fb97c6b46242cf0              # double 0.099554733871787481
	.quad	0x3fdc0b768fe8b610              # double 0.4381996541368105
	.quad	0x3fea413e69ef68b5              # double 0.82046433153597909
	.quad	0x3fe9e83c849b165b              # double 0.8095991697270607
	.quad	0x3fe314ed6592f825              # double 0.59630460585299672
	.quad	0x3fe3a13942646e2a              # double 0.61343062369582424
	.quad	0x3fea79390cfb6e23              # double 0.827297711711655
	.quad	0x3fec622d41e3b378              # double 0.88698447102579703
	.quad	0x3fd9ce1899b766da              # double 0.40320410739296408
	.quad	0x3fba74c339528e90              # double 0.10334415578341294
	.quad	0x3fe2dc1f0ea13d7b              # double 0.58937027795211294
	.quad	0x3feb91de2749a9fb              # double 0.86155612634075796
	.quad	0x3f6cb19604797f00              # double 0.0035026483563312949
	.quad	0x3fec6f9768a8bde8              # double 0.88862200204124253
	.quad	0x3fc4119b3dc05c88              # double 0.15678730502324734
	.quad	0x3fd52bfb32be6ed0              # double 0.33080940204102394
	.quad	0x3fd6888a26b9dd84              # double 0.35208371908034786
	.quad	0x3fe4d9062b02961a              # double 0.65149219894800869
	.quad	0x3fed40e7c5d8a4fb              # double 0.91417301790093519
	.quad	0x3fedbd2239d585ff              # double 0.92933760925023978
	.quad	0x3faa28f888e3e8c0              # double 0.051093832693327013
	.quad	0x3fc6ed92eec1aa64              # double 0.17912518175156145
	.quad	0x3fece1d8574cf973              # double 0.90256897974886241
	.quad	0x3feeaa3ae0e14b56              # double 0.95828002855192085
	.quad	0x3fd5dd648a0178d0              # double 0.34163773991703028
	.quad	0x3fe435dfb1814492              # double 0.63157639187751813
	.quad	0x3fe734e62f50b372              # double 0.72520741692788548
	.quad	0x3fe1bdaf000fbfa8              # double 0.55440473567977211
	.quad	0x3fbe09dee1faf7e0              # double 0.11733811394785176
	.quad	0x3fa00d933c6ae6f0              # double 0.031353570103829997
	.quad	0x3feeecdc2ce1ea3a              # double 0.96641358152493884
	.quad	0x3fe020303414f074              # double 0.50392923519349475
	.quad	0x3fde43d920e039a4              # double 0.4728911229184638
	.quad	0x3fea6c58f78efe6e              # double 0.82572601653369104
	.quad	0x3fec6b16cbe2d334              # double 0.88807239362231493
	.quad	0x3fe334ba4e330d2a              # double 0.6001864936191954
	.quad	0x3fe5e077045db79b              # double 0.68365050175428921
	.quad	0x3fe5f33d2a17effe              # double 0.68594225140941467
	.quad	0x3fc2999b1a2e9e7c              # double 0.14531267908499845
	.quad	0x3fd0feba6be0e226              # double 0.26554737601284939
	.quad	0x3fef10ee9d132722              # double 0.97081690481829619
	.quad	0x3fc4ecb5622204b4              # double 0.1634737710155939
	.quad	0x3fe05a63ef0f1484              # double 0.51103398028557523
	.quad	0x3fac68d91b7e26d0              # double 0.05548742733578893
	.quad	0x3fde1a03700229c8              # double 0.47033773363423537
	.quad	0x3fbbdebf21a01138              # double 0.10886759348801867
	.quad	0x3fdadbad7da8788a              # double 0.4196580626611498
	.quad	0x3fec835d40607c90              # double 0.89103567670453465
	.quad	0x3fd2df34aa0f6c42              # double 0.29487339599080908
	.quad	0x3fd40d15f713d63e              # double 0.31329869393025322
	.quad	0x3fcc0ba5705d8114              # double 0.21910541521629823
	.quad	0x3fe014d8c6ae3f85              # double 0.50254477314773338
	.quad	0x3fea93afc6ab3e0e              # double 0.83052815248987755
	.quad	0x3fed7e9b52ff6a88              # double 0.92170492372982071
	.quad	0x3fe8cca68ca6f02c              # double 0.77498176070321767
	.quad	0x3fdf223f282e7f16              # double 0.48646525310503941
	.quad	0x3fa6412ab30bd8e0              # double 0.043465933185801608
	.quad	0x3fe3839a9b312594              # double 0.60981493292745137
	.quad	0x3fe07b925a978823              # double 0.51508443540319993
	.quad	0x3fd7c6002dfe4cf4              # double 0.37146000377215604
	.quad	0x3fef38d1f303037b              # double 0.9756860491107625
	.quad	0x3fed98e7c6bb1f30              # double 0.92491520704877495
	.quad	0x3fd50c69c4e6b79c              # double 0.32888263920437466
	.quad	0x3fe76e1a0bc1b8f4              # double 0.73219015403972643
	.quad	0x3fed28bc52e6af19              # double 0.91122261230109125
	.quad	0x3fe6230c4d9e2b86              # double 0.69177832755791324
	.quad	0x3fe9ca3172809463              # double 0.80593178142283894
	.quad	0x3fe87f0c061fd490              # double 0.76550866314086541
	.quad	0x3feb419162b7872f              # double 0.85175389557500647
	.quad	0x3fe20d4cc74e707a              # double 0.5641235249236296
	.quad	0x3fd7b1573b6901d0              # double 0.37019902040267727
	.quad	0x3fe833cc581df637              # double 0.75632302484854719
	.quad	0x3fce38b20f462a54              # double 0.23610521074108937
	.quad	0x3fd31a64de056886              # double 0.29848596269369698
	.quad	0x3fe04715110cc1ad              # double 0.50867703752560589
	.quad	0x3fe7603ff28b2a7c              # double 0.7304992425136585
	.quad	0x3fe810117b0e4a85              # double 0.75196146044102419
	.quad	0x3fecf251def3f1c8              # double 0.90458005471696712
	.quad	0x3fe8cf2be7f59dcd              # double 0.77528949074342679
	.quad	0x3fda4d05282b7078              # double 0.41095093653507986
	.quad	0x3fdb78d914e45b1c              # double 0.42925097503887044
	.quad	0x3fec1d95a0857bde              # double 0.87861138679351902
	.quad	0x3fd2f7e28466804c              # double 0.29637968950010385
	.quad	0x3f967f8206ffda40              # double 0.021970779111109673
	.quad	0x3feb78d892b81f82              # double 0.85850170761203537
	.quad	0x3fe304a0fa6f9b76              # double 0.59431504166864957
	.quad	0x3fe1a4d9d8a433b2              # double 0.55137340843940863
	.quad	0x3fee3079ad27ab3e              # double 0.94341739482238274
	.quad	0x3fd0ca5b3b01f2fc              # double 0.26235085260832114
	.quad	0x3fd7cb9d7018aeb4              # double 0.37180267283359147
	.quad	0x3fe231141262bc52              # double 0.56849101630167298
	.quad	0x3fe5c0e7c9dcbb09              # double 0.67979802538124645
	.quad	0x3fdf3238894e5526              # double 0.48744023712909479
	.quad	0x3fe233dd82098af6              # double 0.56883120916276542
	.quad	0x3fece891c1003b54              # double 0.90338981338013946
	.quad	0x3fee9c6ca19b1bce              # double 0.95659476817751865
	.quad	0x3fe40332d0d924dc              # double 0.62539044180553161
	.quad	0x3fca6f866897bb48              # double 0.2065284739214468
	.quad	0x3fd810db1bc39202              # double 0.37602880202601352
	.quad	0x3fe6cee3f7ef3124              # double 0.7127551882236145
	.quad	0x3fe6a9347e03c2b5              # double 0.70815491306537715
	.quad	0x3fe5c62ffdef44ae              # double 0.68044280621156417
	.quad	0x3feefe8b1bb3fbf4              # double 0.96857219134096661
	.quad	0x3fdaed20407ea250              # double 0.42072302149111795
	.quad	0x3fa987a7d4e06b70              # double 0.049863095031659976
	.quad	0x3fc3506571fac148              # double 0.15089099946409079
	.quad	0x3fd838e7149da9e8              # double 0.37847306264180114
	.quad	0x3fe002412f5c1764              # double 0.50027522325465812
	.quad	0x3fec261f7ae27baf              # double 0.87965368271749422
	.quad	0x3fe3d5aeabfe71e5              # double 0.61983426659167817
	.quad	0x3f4e3cce1a9f3000              # double 9.2277587577305197E-4
	.quad	0x3fc9ece1dce030d4              # double 0.2025415733809327
	.quad	0x3febe76ad6e73d51              # double 0.87199918721482039
	.quad	0x3feed7c744823dc9              # double 0.96384013538948309
	.quad	0x3fe8ffa7f1a83823              # double 0.78120801161435727
	.quad	0x3fe60a9de522430d              # double 0.68879599335386532
	.quad	0x3fb7f3a3d2f4f308              # double 0.093561400416501184
	.quad	0x3fefb9238a231047              # double 0.99134995441318884
	.quad	0x3fdc638a95582340              # double 0.4435755213203727
	.quad	0x3fdaf2d0ae6790cc              # double 0.42107026130385061
	.quad	0x3fd5afc0d5ee50fc              # double 0.33885212794963571
	.quad	0x3fe69ffdb8ef097b              # double 0.70703016395445617
	.quad	0x3faaa051d8da4840              # double 0.052004392358086182
	.quad	0x3fb8262d7cb86898              # double 0.094332545232108322
	.quad	0x3fc461b5386933f0              # double 0.15923180822792871
	.quad	0x3fee1fd8b8e0eaf1              # double 0.94138752087687128
	.quad	0x3fedef17074db990              # double 0.93543578554617746
	.quad	0x3fe383879073a09e              # double 0.60980585301605905
	.quad	0x3fe1c06bb230d4a0              # double 0.55473885348205343
	.quad	0x3fece5dff25f4469              # double 0.90306088770206572
	.quad	0x3fe4ce466f903427              # double 0.65018007077890594
	.quad	0x3fb295e134365f48              # double 0.072599482772031654
	.quad	0x3fe575e1c0c2ad8c              # double 0.67063987396743263
	.quad	0x3fdef4e05fb2d630              # double 0.48369607301296735
	.quad	0x3fe62ffe32a8b037              # double 0.69335851568531026
	.quad	0x3feb4a3cff00a9ec              # double 0.85281228833383471
	.quad	0x3fb4fcb69c71f440              # double 0.081981099314320183
	.quad	0x3fe9c251d8d6cf8a              # double 0.80497066832912023
	.quad	0x3fa0578882007120              # double 0.031917825574256264
	.quad	0x3fe3dffb8e33324b              # double 0.62109163068232343
	.quad	0x3fe8d36dcc829176              # double 0.77580919211736332
	.quad	0x3fe7468a58058c83              # double 0.72736088935597853
	.quad	0x3fc2ea43c8c44d1c              # double 0.14777419379297718
	.quad	0x3fc91d1c39ad3a20              # double 0.19620087448352397
	.quad	0x3fe2a4f433ce7c53              # double 0.58263597601388495
	.quad	0x3fece223ea6b73f4              # double 0.90260501656632508
	.quad	0x3fb78a7b16071c60              # double 0.091956799390673805
	.quad	0x3fd34ff35be93cf8              # double 0.30175479865734145
	.quad	0x3fcbfc0a184652b8              # double 0.21862913308418341
	.quad	0x3fe915174fa3ec48              # double 0.78382459215880207
	.quad	0x3fec6175a4da374c              # double 0.88689691732154463
	.quad	0x3fd5398c50bcb496              # double 0.33163745769963648
	.quad	0x3fda7b340254b09c              # double 0.41376972415560842
	.quad	0x3fe022637e5c33ca              # double 0.50419783286781095
	.quad	0x3fe5ec8f147f5ff5              # double 0.68512681964329991
	.quad	0x3fca0af415a43008              # double 0.20345927292544297
	.quad	0x3fefce67a6e716b7              # double 0.99394590948278149
	.quad	0x3fe7a01213fbee5c              # double 0.73828987029214543
	.quad	0x3fe4b391839d680c              # double 0.64691997247723654
	.quad	0x3fe399976fe8be77              # double 0.61249896867043574
	.quad	0x3fd7d5960630bdc6              # double 0.37241125683337051
	.quad	0x3fe1fcd7d9e3eee4              # double 0.56211464459144311
	.quad	0x3feb1b36ced817a0              # double 0.84707203292122201
	.quad	0x3fa1d6d141f93c00              # double 0.034842051795401119
	.quad	0x3fd0a1a689defac4              # double 0.25986636604276847
	.quad	0x3fe4b9758c2aa42f              # double 0.64763905884058726
	.quad	0x3f93b4c6214332a0              # double 0.019244285373860692
	.quad	0x3fdb563d0210b886              # double 0.42713856889430024
	.quad	0x3fe5552e6ee4519c              # double 0.66664811762398157
	.quad	0x3fe41e7a04f7a8e3              # double 0.62872029276084296
	.quad	0x3fdeea539938a500              # double 0.48305215800299095
	.quad	0x3fe11a469d7cbfec              # double 0.53445750006903614
	.quad	0x3fee00a16aea6255              # double 0.93757696992822537
	.quad	0x3fe91ca672aff02c              # double 0.7847473373399274
	.quad	0x3fd2001c6dccecec              # double 0.28125677797989002
	.quad	0x3fe928cbba3b157c              # double 0.78622995732500511
	.quad	0x3fd579f3e9c6e0e4              # double 0.33556840734264726
	.quad	0x3fda5c69508aa568              # double 0.41189034333600327
	.quad	0x3fef59d51e324a08              # double 0.97971588037245371
	.quad	0x3fe696ae02955cb2              # double 0.70589352135256989
	.quad	0x3fa61110580fcf60              # double 0.043098936795927356
	.quad	0x3fa86d547edf0c10              # double 0.047709122168747453
	.quad	0x3fe3a31d140b9f83              # double 0.61366132655256
	.quad	0x3fd329300bf2ea64              # double 0.29938889662631696
	.quad	0x3fb9edd8fe18a640              # double 0.10128551677248598
	.quad	0x3fdfebaec6673778              # double 0.49875993132888352
	.quad	0x3fc9eab87d427948              # double 0.20247560611910331
	.quad	0x3fef7b42431fa871              # double 0.98379624471750848
	.quad	0x3fa7c27fbe04d420              # double 0.046405784555112684
	.quad	0x3fbd85d5a3f86728              # double 0.11532340291196574
	.quad	0x3fe2114c3368068e              # double 0.56461153068831194
	.quad	0x3fe997240bfbc523              # double 0.79969980564616028
	.quad	0x3fdc32f8b4cfe70e              # double 0.44061105401452572
	.quad	0x3fbdd048d3e462a0              # double 0.11645941899440482
	.quad	0x3fd0c733c8d5c22c              # double 0.26215834248344794
	.quad	0x3fe2dfd1250acf41              # double 0.58982140765008506
	.quad	0x3fe4c32f4ace22c0              # double 0.64882626161951151
	.quad	0x3f93e5210ab6be20              # double 0.019428745535775005
	.quad	0x3fcd53b0233dea0c              # double 0.22911645623010235
	.quad	0x3fe0e1c03c3b21c5              # double 0.52755748523582524
	.quad	0x3fed1cbf7673e60a              # double 0.90975926528261764
	.quad	0x3fe21fd2258ee93c              # double 0.56638438544840808
	.quad	0x3fe113d8664bd8fd              # double 0.5336725233053411
	.quad	0x3fdf1f3b372764a2              # double 0.48628120790596985
	.quad	0x3fe4c6c781b26b1a              # double 0.64926505404887114
	.quad	0x3fec45304c6bb90f              # double 0.88344588209091224
	.quad	0x3fc3bf2dec95ca28              # double 0.15427183200843442
	.quad	0x3f8611078eb1d8c0              # double 0.010774668733784742
	.quad	0x3fe5c52ee77ca0f4              # double 0.68032021724960012
	.quad	0x3fd5ae14300bb0e6              # double 0.33874993030509726
	.quad	0x3fee33ae1f0fabb3              # double 0.94380861345904632
	.quad	0x3fdc371786bd85c6              # double 0.44086254270777336
	.quad	0x3fef7267a9ad9f35              # double 0.98271544590259074
	.quad	0x3fd35e34382c4810              # double 0.3026247547687726
	.quad	0x3fee6090e25ec336              # double 0.94928783619807322
	.quad	0x3fe65e5ad5b2ddcb              # double 0.69901792276407926
	.quad	0x3fdcf932e1bd6be0              # double 0.45270988507189536
	.quad	0x3fdeb256b95ae9e6              # double 0.47963493443572103
	.quad	0x3fb554eb720e4a30              # double 0.083327021928462086
	.quad	0x3fe90a113b8b3688              # double 0.78247892026566124
	.quad	0x3fe55e10287d3991              # double 0.66773231418646806
	.quad	0x3fd84625f81046b6              # double 0.37928151345213779
	.quad	0x3fcd3803f40fa6d8              # double 0.22827195565269309
	.quad	0x3fdcc1a220e7034a              # double 0.44931843960880669
	.quad	0x3fe0b65cc1e03fa9              # double 0.52226102701569233
	.quad	0x3f90a2b866453d00              # double 0.016245728723615294
	.quad	0x3fc859790538ab60              # double 0.19023049120854818
	.quad	0x3faebf4b68c4b3c0              # double 0.060053211726291078
	.quad	0x3fe37626db1f0f32              # double 0.60817282483228596
	.quad	0x3faf15f8dc0b2e30              # double 0.060714508877563467
	.quad	0x3fe9acb18042a7ff              # double 0.80233073283056899
	.quad	0x3fea64dea2b564b1              # double 0.82481319216744542
	.quad	0x3fd742654597838c              # double 0.3634274654014511
	.quad	0x3fd277a40d3852a6              # double 0.28855229655281744
	.quad	0x3fe7c04fdc761bb2              # double 0.74222558077678102
	.quad	0x3fe7d306c3b26eb2              # double 0.74451006147451992
	.quad	0x3fa17dd1e58c9e50              # double 0.034163054724839825
	.quad	0x3fe4ac10745d4145              # double 0.64600393988988769
	.quad	0x3fea5aa7f1f448f8              # double 0.82356641060530844
	.quad	0x3fbb030dbb59b268              # double 0.1055153448484788
	.quad	0x3fae70a57c311a50              # double 0.059453174028523237
	.quad	0x3fd3779b3a682a6e              # double 0.30417519286917283
	.quad	0x3fd6a588075b800c              # double 0.35385323256014156
	.quad	0x3fe4bc0bc445b838              # double 0.64795482954446637
	.quad	0x3fe8d13de134ba58              # double 0.77554220185795497
	.quad	0x3fd2779446388c50              # double 0.28854853494175803
	.quad	0x3fee9410b92f65c4              # double 0.95557438057874621
	.quad	0x3fc835f07232286c              # double 0.18914609504674063
	.quad	0x3feeaf1609feeae6              # double 0.95887281372355626
	.quad	0x3fe34f61ce7eac8a              # double 0.60344019251842096
	.quad	0x3fe615e281ee48ab              # double 0.69017148377522142
	.quad	0x3fcc5fa190de2ef8              # double 0.22166843007686743
	.quad	0x3fec33b8a2fdc470              # double 0.88131362756952392
	.quad	0x3fc6aa902e9cfe80              # double 0.17708017612493521
	.quad	0x3fce6462ab88c3a0              # double 0.23743852019972866
	.quad	0x3fe6bd141d2c9eea              # double 0.71058088014703213
	.quad	0x3fe3529870dfa200              # double 0.60383245511644645
	.quad	0x3febe61f16569b8a              # double 0.87184099543525062
	.quad	0x3fe0ba1e8a6faa91              # double 0.52271964109725577
	.quad	0x3fec4226581e9795              # double 0.8830749245723718
	.quad	0x3fdd9bbca4de09b8              # double 0.46263042545629274
	.quad	0x3fe47d97cfb5cb90              # double 0.64033117836366849
	.quad	0x3fd84d0a6f52386e              # double 0.37970219489296297
	.quad	0x3feb8db02c7e48b0              # double 0.86104592027756688
	.quad	0x3fe90bc4108563e5              # double 0.78268626429337174
	.quad	0x3fec3aa85a2977e4              # double 0.88216035470736331
	.quad	0x3fe76ab4809e4626              # double 0.73177552338365071
	.quad	0x3fd9f90c202579cc              # double 0.40582564486785766
	.quad	0x3fc7596572a34e7c              # double 0.18241565797380932
	.quad	0x3fc6f1a9304dbf8c              # double 0.17924990519122408
	.quad	0x3fdf7827b2a75b7a              # double 0.49170868345884566
	.quad	0x3fc6cc055abc52ec              # double 0.17810122423602281
	.quad	0x3fda71fe206bfcb0              # double 0.41320756117051882
	.quad	0x3fef1bdba4da1963              # double 0.97215063283583125
	.quad	0x3feb2e07ec7605bd              # double 0.84936901267808873
	.quad	0x3fc376a3cf146b30              # double 0.15205810176197465
	.quad	0x3fe6cf0e9e0be4bf              # double 0.71277552479218531
	.quad	0x3fe8b819db0c8edb              # double 0.77247326643961445
	.quad	0x3fe2256864bada8a              # double 0.56706638025100742
	.quad	0x3fe5d9ec56155e83              # double 0.68285195172480007
	.quad	0x3fed6603380a7b6f              # double 0.91870270677087074
	.quad	0x3fee5fb314299308              # double 0.94918207109421448
	.quad	0x3fd5964183fb1380              # double 0.33729589356180867
	.quad	0x3fe41180d7d97431              # double 0.62713663251964225
	.quad	0x3fd9bf03cea28b2c              # double 0.40228362254326799
	.quad	0x3fc7aeef8b3b5fb0              # double 0.18502611444887185
	.quad	0x3feefd219417ad97              # double 0.96839980053248353
	.quad	0x3fde9b1b57e2c632              # double 0.47821696837044947
	.quad	0x3faaff64a0eccd80              # double 0.052729744571844428
	.quad	0x3fcc3734ddf8b634              # double 0.22043476904348014
	.quad	0x3fe37c86fc4f064c              # double 0.60895108489075644
	.quad	0x3fdbe51b0e6cc324              # double 0.43585850151707661
	.quad	0x3fcce9c2439c7d40              # double 0.2258837537892564
	.quad	0x3fc59f5a9f2ede24              # double 0.16892559788333117
	.quad	0x3fa04a86b6157120              # double 0.031818589903851668
	.quad	0x3fec7c9923f3fe94              # double 0.89020974180307854
	.quad	0x3fc2f0da72708998              # double 0.1479752596652133
	.quad	0x3fe88135a5f38a13              # double 0.76577265179031639
	.quad	0x3fe30f304c6b4050              # double 0.59560408521248043
	.quad	0x3fc2e9ea21c14208              # double 0.1477635063952365
	.quad	0x3fe2e6edeba7b38d              # double 0.59068962122329227
	.quad	0x3fee1e0c8b76c7ea              # double 0.94116809119281908
	.quad	0x3fe037d5d12339f6              # double 0.50681582305133932
	.quad	0x3fe15f98601bd816              # double 0.54291933795207359
	.quad	0x3fdfce8ae7a3e094              # double 0.49698135968311274
	.quad	0x3fcbcd687b05b6c4              # double 0.21720605856847019
	.quad	0x3fec16a8c2a69e7f              # double 0.87776601808305077
	.quad	0x3fd675d22d31456e              # double 0.3509412232716248
	.quad	0x3fca0c4989946da0              # double 0.20349997728122293
	.quad	0x3fd6131dc0f8171a              # double 0.34491676182402531
	.quad	0x3fe562d85e13198a              # double 0.66831606267878496
	.quad	0x3fed52cd178e1752              # double 0.91635756111711886
	.quad	0x3fe675f69157b8ab              # double 0.7018997992252215
	.quad	0x3fe74dd5f455da09              # double 0.72825143548726701
	.quad	0x3fe91d9ddbd763be              # double 0.7848653119827913
	.quad	0x3fcabe18930062a4              # double 0.20892626931960934
	.quad	0x3feab4d9711a7d84              # double 0.8345763405849742
	.quad	0x3fe806b1f44b07b8              # double 0.75081727708333457
	.quad	0x3fee1835ce7a7085              # double 0.94045534446515033
	.quad	0x3fec17a600080fdb              # double 0.87788677221442002
	.quad	0x3fe6dd02d10cdb3b              # double 0.71447888212319499
	.quad	0x3f989091f0c6d760              # double 0.023988991089673006
	.quad	0x3fbde68e5d294320              # double 0.11679925703471072
	.quad	0x3fd6c5f0f595451c              # double 0.3558313749573061
	.quad	0x3fb44873e37f3280              # double 0.079230540314890518
	.quad	0x3fe6933d81ac66f8              # double 0.7054736645397659
	.quad	0x3fed05ef59029159              # double 0.90697448143741177
	.quad	0x3fb43db162507080              # double 0.079066359045500078
	.quad	0x3fea18096a40ccfc              # double 0.81543417694629694
	.quad	0x3fc59724cd107698              # double 0.16867504132180922
	.quad	0x3fc7d85d4c056e8c              # double 0.18629041873906649
	.quad	0x3fddd3d0a69ad388              # double 0.46605316419600529
	.quad	0x3fe62cfe945c7880              # double 0.6929924867324786
	.quad	0x3fd02f527d66cc08              # double 0.25288831945653145
	.quad	0x3fd5f66687206d34              # double 0.34316409297908312
	.quad	0x3fc75d7ca3edabd0              # double 0.18254049305264042
	.quad	0x3fd9ddb005a653d6              # double 0.40415573646288061
	.quad	0x3fd61944da23a664              # double 0.34529229452764398
	.quad	0x3fd1a64248a8357a              # double 0.27577263923088646
	.quad	0x3fc0962eec6d85fc              # double 0.129583230441355
	.quad	0x3fc7364d368dbbc8              # double 0.1813446537375667
	.quad	0x3febb837e4c361ea              # double 0.86623758964838982
	.quad	0x3fe32c76ca0f3689              # double 0.59917773689967746
	.quad	0x3fe8a54a7ad0047a              # double 0.77017711626844165
	.quad	0x3fe480416c7cfb1b              # double 0.64065619649031491
	.quad	0x3fccb1c6a6aafdfc              # double 0.22417529237826261
	.quad	0x3fe182977293ea97              # double 0.5471913564536689
	.quad	0x3fe4c34b32550f94              # double 0.64883956747552185
	.quad	0x3fe81ad6d3ac273f              # double 0.75327626554756211
	.quad	0x3fee960a2311cb26              # double 0.95581538056862736
	.quad	0x3fda5c7f0acf230c              # double 0.4118955236013313
	.quad	0x3f9dc0327238d160              # double 0.029053486081651925
	.quad	0x3fb1ee718569ad38              # double 0.070044608184322565
	.quad	0x3fc2f6ea9d1795a8              # double 0.14816029234422712
	.quad	0x3fdfc4af92400676              # double 0.49637975008236113
	.quad	0x3fdb30497f82ac36              # double 0.4248222108096259
	.quad	0x3feaa39bc12a01b1              # double 0.83247173049317358
	.quad	0x3fe83faac9d878b2              # double 0.75777186797110674
	.quad	0x3fbb7731663d9270              # double 0.10728749033075657
	.quad	0x3fe76abfb07ceb8d              # double 0.73178085775667656
	.quad	0x3fe0b8cee2c502c0              # double 0.52255958834583538
	.quad	0x3fe6fdb19b823c2e              # double 0.71846847889708498
	.quad	0x3fed80f695e07ec3              # double 0.92199258110846249
	.quad	0x3fd41a5a65451eba              # double 0.31410846604965637
	.quad	0x3fe5730ffcc28bf3              # double 0.67029570929696403
	.quad	0x3fd1c184a8ba87be              # double 0.27743641354947701
	.quad	0x3f7ae6218305b780              # double 0.0065671261839791439
	.quad	0x3fea5cae513d4348              # double 0.82381358973553009
	.quad	0x3fd718e8e6e594bc              # double 0.36089537189975451
	.quad	0x3fc601149004a944              # double 0.17190796882762005
	.quad	0x3fc9930266637744              # double 0.19979887008133279
	.quad	0x3fde0c9e62e55f16              # double 0.46952018411455876
	.quad	0x3fb2561d8c157e20              # double 0.071626517009911073
	.quad	0x3fda81d9195ce662              # double 0.41417529560894739
	.quad	0x3fe71d902467347b              # double 0.72235877141942184
	.quad	0x3fd715d4258818a4              # double 0.36070731797407007
	.quad	0x3fed473a13bc91dd              # double 0.91494468550495933
	.quad	0x3fe0aed6fb237c36              # double 0.52134274530897673
	.quad	0x3fd9c99b152655d2              # double 0.40293004098324758
	.quad	0x3fec1363ac423916              # double 0.87736686367296346
	.quad	0x3fe5ec8fdfb5747d              # double 0.68512719815375045
	.quad	0x3fb3f8e81aa81e30              # double 0.078016764171586983
	.quad	0x3fe06d6f16dc7a97              # double 0.51335863556944872
	.quad	0x3fe2a8c3732f0d1f              # double 0.5831010102923847
	.quad	0x3fe957dc0ba87cc8              # double 0.7919750430773087
	.quad	0x3fbdfe8ec5b49108              # double 0.11716549231329421
	.quad	0x3fde8389e0db32ea              # double 0.47677847822778452
	.quad	0x3fc85e4b8f1e8e00              # double 0.19037765968560905
	.quad	0x3fe64177b7eb11ae              # double 0.69549165650874101
	.quad	0x3fe63c2681dae439              # double 0.69484258043588121
	.quad	0x3fe883cc9cad8328              # double 0.76608877755288507
	.quad	0x3febe3d4dfdb0975              # double 0.87156146737861084
	.quad	0x3fe441c5c7400abb              # double 0.63302887836501698
	.quad	0x3fe3bd0f2c0863c8              # double 0.61682852363730323
	.quad	0x3fe15a3d38b893cc              # double 0.54226552084275559
	.quad	0x3fb28997e8721640              # double 0.072412008523394356
	.quad	0x3fd722ff6ad5dfec              # double 0.36151109154843541
	.quad	0x3fb9151b11dd04d8              # double 0.097978298054857915
	.quad	0x3fd1b2cb80853cca              # double 0.27653777647806221
	.quad	0x3fe5d25849d7d12d              # double 0.68192686483829379
	.quad	0x3fda23b96f8f245c              # double 0.40843044180343724
	.quad	0x3fd8fac6eb31e03c              # double 0.39030621498341467
	.quad	0x3fd45324e968323e              # double 0.31757471841482132
	.quad	0x3fde542e686dd166              # double 0.47388801763670185
	.quad	0x3feeaca180ffc095              # double 0.9585731048118925
	.quad	0x3fdf53d0a1732d74              # double 0.48949065939515113
	.quad	0x3fe2bee514465078              # double 0.58580259284873559
	.quad	0x3fd24e6d23f5a2a4              # double 0.28603676330252825
	.quad	0x3fe98b4ab758f8e6              # double 0.79825340089862773
	.quad	0x3fdd36df5a9a6178              # double 0.45647415016130521
	.quad	0x3fe2ddd1ece8874b              # double 0.5895776393046871
	.quad	0x3feec5bc90f54640              # double 0.96163776695374991
	.quad	0x3fd8f1c4536efb82              # double 0.38975628040127941
	.quad	0x3fd5f8352c162986              # double 0.34327439599351128
	.quad	0x3fc3de33447fe88c              # double 0.15521851391514863
	.quad	0x3fe4e41221757d07              # double 0.65284067664097811
	.quad	0x3feed74259867321              # double 0.96377675519361016
	.quad	0x3fd9985362bdbefa              # double 0.39992222445196968
	.quad	0x3fe0523fda4c3644              # double 0.51004021297712443
	.quad	0x3fc2ac3b3c9f79d4              # double 0.14588108501534569
	.quad	0x3fd97ed9d30bd030              # double 0.39836736307120457
	.quad	0x3fc2a8ad8a4a71ac              # double 0.14577264072876284
	.quad	0x3fc53bcf42fdaddc              # double 0.16588774462739664
	.quad	0x3fe556adaa2a7758              # double 0.66683085666202668
	.quad	0x3fedc786037fab5d              # double 0.93060589488355172
	.quad	0x3fd9831d03acc75c              # double 0.39862752303007709
	.quad	0x3fede48318f7bdda              # double 0.93414454342376563
	.quad	0x3fee19af447ea491              # double 0.94063533189650361
	.quad	0x3fdec6e2b996464c              # double 0.48088901637774906
	.quad	0x3fb05c43bcdc3a88              # double 0.063907846077407737
	.quad	0x3fec5cf1370a131e              # double 0.88634548902391308
	.quad	0x3fd037448dc7eef6              # double 0.25337327810096555
	.quad	0x3fe89903d37b245b              # double 0.76867858223807717
	.quad	0x3feb4478209a867a              # double 0.85210806243794868
	.quad	0x3fed845a364dae61              # double 0.92240629774228122
	.quad	0x3fb75d94c9c043f8              # double 0.091271685844063088
	.quad	0x3fef361669b8f47e              # double 0.97535248421594622
	.quad	0x3fd534c9e5b97492              # double 0.33134696420695164
	.quad	0x3fc5f1463cfad9f0              # double 0.17142560937436668
	.quad	0x3fdac460b65318c4              # double 0.41823594861160651
	.quad	0x3fe45530c4e54f22              # double 0.63539923149298638
	.quad	0x3fca06ab4b3d9b68              # double 0.20332852529392231
	.quad	0x3faf3cc3d38d38b0              # double 0.06101047475259358
	.quad	0x3fed54bffbba3c01              # double 0.91659545102618278
	.quad	0x3fc3c605f2e29de4              # double 0.15448068961744277
	.quad	0x3fedc4f76cbb3663              # double 0.93029376255590213
	.quad	0x3febd8f48a07d7a7              # double 0.87023379286869307
	.quad	0x3fd02202dc49834a              # double 0.2520758773080628
	.quad	0x3fe9c38abfbc079f              # double 0.80511987159865217
	.quad	0x3fe7015d4f0d73bc              # double 0.7189165634150565
	.quad	0x3fd38714f8c032d6              # double 0.30511974613254489
	.quad	0x3fe448fa0a3dcb82              # double 0.63390829086561973
	.quad	0x3fe4ec9d2f56ce6e              # double 0.65388354535975934
	.quad	0x3fc80d9544e472cc              # double 0.18791452278028087
	.quad	0x3fdffd7d0e898ddc              # double 0.49984671039257278
	.quad	0x3fe094e93acaea78              # double 0.51817761881768742
	.quad	0x3fe65a025abb2b6a              # double 0.69848745079921781
	.quad	0x3fdc6dfcb34969fe              # double 0.44421308048700314
	.quad	0x3feea99ee7384dc9              # double 0.95820565376418997
	.quad	0x3fe48ad99d003082              # double 0.64194946922499718
	.quad	0x3fd86ac60c63a13a              # double 0.38151694497948407
	.quad	0x3fe7b72fc43f4c5f              # double 0.74111164407294072
	.quad	0x3fd2a3b4519ea5fc              # double 0.29124172182727626
	.quad	0x3fd4b4c7c143fb0e              # double 0.32353395341481039
	.quad	0x3fec751f570b24e0              # double 0.88929717064561586
	.quad	0x3fc5242bf9296f00              # double 0.16516637483697849
	.quad	0x3fe0b7e8cb1e4d4e              # double 0.52244987174564428
	.quad	0x3fb446348faabc60              # double 0.079196248125968705
	.quad	0x3fe1af35eaf36738              # double 0.55263801468684104
	.quad	0x3f938db9b07f7ee0              # double 0.019095326802811452
	.quad	0x3fe02815c2b5db9b              # double 0.50489318875667111
	.quad	0x3fb627410615b7b0              # double 0.08653646849208374
	.quad	0x3fd036f3cc422fb2              # double 0.25335402438281129
	.quad	0x3fd6bdd27a48aa0a              # double 0.35533582631856631
	.quad	0x3fe902c109b9b82c              # double 0.78158618831162618
	.quad	0x3fedb6de347f4fa0              # double 0.92857275250797854
	.quad	0x3fda0d4883b98634              # double 0.40706074584713581
	.quad	0x3fd02a474904df46              # double 0.25258047228588898
	.quad	0x3fd2a49e5886a92a              # double 0.29129751820677774
	.quad	0x3fe75bc8311c5d6b              # double 0.72995385734513485
	.quad	0x3fbc8d455e752e78              # double 0.11153062397095848
	.quad	0x3fd1f5d4d12670a0              # double 0.28062935280628132
	.quad	0x3fd1ba195d1cd180              # double 0.27698358624481756
	.quad	0x3fed8b6ca34a880c              # double 0.92326957600403281
	.quad	0x3fe9642e4f13dd2d              # double 0.79347911305277352
	.quad	0x3fede5344d9fa235              # double 0.93422904167989052
	.quad	0x3fee9554003643f8              # double 0.95572853127862256
	.quad	0x3fcac63ebb64a8a0              # double 0.20917495870645997
	.quad	0x3fe03ac385a528dd              # double 0.50717331030434887
	.quad	0x3fd3a38ab5b32a6e              # double 0.30685680145385319
	.quad	0x3f9a256434b52740              # double 0.025533261982935374
	.quad	0x3fcbe6e0c3db5028              # double 0.21798333705248862
	.quad	0x3fd4fcaa09bde702              # double 0.32792139960621125
	.quad	0x3fe562ec29ccb28a              # double 0.66832550205215679
	.quad	0x3fd4114077f2885a              # double 0.31355296815502742
	.quad	0x3fc8f67cae0487ac              # double 0.19502218720395825
	.quad	0x3fe3c664a0f575fc              # double 0.61796790540000712
	.quad	0x3fb3c1ee4cb1b080              # double 0.077177900051255576
	.quad	0x3fe8496ba46cf9d1              # double 0.75896246065513584
	.quad	0x3fbf782b67864280              # double 0.12292739179089018
	.quad	0x3fc6c6e780be894c              # double 0.17794507776586455
	.quad	0x3fe6dd4ced7affb6              # double 0.71451422102835838
	.quad	0x3fa0d641614fc620              # double 0.032884638909205899
	.quad	0x3fe5d19fc7588ddf              # double 0.68183888373135548
	.quad	0x3fe232dcee960749              # double 0.5687088642009509
	.quad	0x3fdbecbced6411d2              # double 0.4363243406553724
	.quad	0x3fdb80bb110cff82              # double 0.42973210015406249
	.quad	0x3fd545f8d2433e86              # double 0.33239574941124095
	.quad	0x3fe5b774870592ba              # double 0.67864443179549672
	.quad	0x3fec4f2c6f15d942              # double 0.88466474243504245
	.quad	0x3fecaf8e8d517853              # double 0.89643027878970327
	.quad	0x3fe48cfa951fc6b8              # double 0.64220933080488063
	.quad	0x3fae81aa98648fb0              # double 0.059583026030196051
	.quad	0x3fe20b7f24aee8d1              # double 0.56390340008445083
	.quad	0x3feaeebbe6aa4096              # double 0.84164233257071674
	.quad	0x3fe37459ddd2fb47              # double 0.60795300793675089
	.quad	0x3fdfa3545ad2baa8              # double 0.49434384221505434
	.quad	0x3fd571a442cceede              # double 0.33506113551605476
	.quad	0x3fc76654bd135b8c              # double 0.18281039459426685
	.quad	0x3fd8f43367d23a08              # double 0.38990483416355959
	.quad	0x3fbaf5dc2c7ee690              # double 0.10531402670212686
	.quad	0x3fe86cd188c2eba3              # double 0.76328350745403772
	.quad	0x3fe9f7d58fd5da97              # double 0.81150320141644527
	.quad	0x3fb9aa1744c113f8              # double 0.10025163105554202
	.quad	0x3fd1266de316e66e              # double 0.26797053505615664
	.quad	0x3fb7914f25ca4558              # double 0.092060991979697859
	.quad	0x3fe1f4ff91fab55f              # double 0.56115702163303272
	.quad	0x3fd58c314a5d24f6              # double 0.33668167364210377
	.quad	0x3fdf445bf8b24950              # double 0.48854731833229881
	.quad	0x3fdb5ac1a4774c12              # double 0.42741433201916934
	.quad	0x3fe5d1ca0c6a36ae              # double 0.68185903954300442
	.quad	0x3fec1a66f1d6af38              # double 0.87822291597465263
	.quad	0x3febf885eb65325a              # double 0.87408729529995388
	.quad	0x3fe2b8ffae023418              # double 0.58508285509163027
	.quad	0x3fef1f8bea5dc8b6              # double 0.97260089659382376
	.quad	0x3fc5e0890d55b9f4              # double 0.17091477538220057
	.quad	0x3f90a4e641cd28e0              # double 0.016254041448782952
	.quad	0x3fecf3ae845932a1              # double 0.90474630212118623
	.quad	0x3fec5573a22e7540              # double 0.88543111492223403
	.quad	0x3f9a33470fbb2a60              # double 0.025586233458663066
	.quad	0x3f777269489b0a80              # double 0.0057243454591026088
	.quad	0x3fe1e6b74ba23c96              # double 0.55941357395376445
	.quad	0x3feb536e6cab4626              # double 0.85393449043676095
	.quad	0x3f95741d83213040              # double 0.020950757149236887
	.quad	0x3fefbcd4dceb2df1              # double 0.99180071972062766
	.quad	0x3fe21ef1e184510b              # double 0.56627744718801531
	.quad	0x3fcbc010ab450bb4              # double 0.21679886210230637
	.quad	0x3fec8ca496aeda12              # double 0.89216832571293225
	.quad	0x3fe56b6f2417af65              # double 0.66936451958961796
	.quad	0x3fe2986557745e09              # double 0.58110301094979022
	.quad	0x3fd32ceaad866f32              # double 0.29961649843038451
	.quad	0x3fce2a8fb5627e20              # double 0.2356738696735059
	.quad	0x3fe44084e32b0c80              # double 0.63287586563855314
	.quad	0x3fe2480e18b7310b              # double 0.57129578425659255
	.quad	0x3fdeea2507d99ed0              # double 0.48304105536088304
	.quad	0x3febe4e824a372ad              # double 0.87169272571516887
	.quad	0x3fdef140610e7486              # double 0.48347482183618984
	.quad	0x3f8cfb36b445ba40              # double 0.014151027084804757
	.quad	0x3fd0cbbf58d21cce              # double 0.26243575738812985
	.quad	0x3fd1c9451080acae              # double 0.27790953265748441
	.quad	0x3fd1d098f45ad580              # double 0.27835677969718375
	.quad	0x3fe214c985954ced              # double 0.56503749933690772
	.quad	0x3fc1671d515d202c              # double 0.13595930550423085
	.quad	0x3fe247732bd1e82e              # double 0.57122191008170886
	.quad	0x3fd8b2ea07b34f26              # double 0.38592005493159076
	.quad	0x3fe1b7d80e3ef1a9              # double 0.55369189054868173
	.quad	0x3fe956127bcd8fa3              # double 0.79175686054485472
	.quad	0x3fb5e426497178f0              # double 0.085512535982591009
	.quad	0x3fe410f63ebf4ea1              # double 0.62707054381685989
	.quad	0x3fe2bfb50c5160e4              # double 0.58590176015698292
	.quad	0x3fd61a1ef38135b6              # double 0.34534429340132122
	.quad	0x3fec94dce48e37c6              # double 0.89317173614266987
	.quad	0x3fd5d15639af8c12              # double 0.3409019053780763
	.quad	0x3fe4189ad46b7ecb              # double 0.62800351608526606
	.quad	0x3fe9b85b3fedc1e5              # double 0.80375444875795365
	.quad	0x3fdda8191148e72e              # double 0.46338488281218104
	.quad	0x3fdce592fa2c6ade              # double 0.45151209288603222
	.quad	0x3fe320fd92373f06              # double 0.59777716214918608
	.quad	0x3fe34d1ef65deb12              # double 0.60316417807129796
	.quad	0x3fe9a64b4057469f              # double 0.80154955450617027
	.quad	0x3fd6ca20db092622              # double 0.3560869349499588
	.quad	0x3fe1d44e69b9592b              # double 0.55716629647466698
	.quad	0x3fed1630665333ad              # double 0.90895862565377217
	.quad	0x3fbfc2b4dc84cf60              # double 0.12406473525771622
	.quad	0x3fe26f2a7512a517              # double 0.57607004991328636
	.quad	0x3fe2265c7e6c82d3              # double 0.56718277637636516
	.quad	0x3fba8a4ba93b7c50              # double 0.10367272264146377
	.quad	0x3fd3d517fbc38282              # double 0.30988120638179606
	.quad	0x3fd4c436f5a00eae              # double 0.32447599398458749
	.quad	0x3fef7d424158f308              # double 0.98404038203406773
	.quad	0x3fee22c5cbc94740              # double 0.94174470712662383
	.quad	0x3fe8fc8fad541ca8              # double 0.78083022931322876
	.quad	0x3fe54e23f5804dd1              # double 0.66578863095713292
	.quad	0x3fea84a6cb5b467a              # double 0.82869281499934222
	.quad	0x3fef9462d6dd96b2              # double 0.98686353650983549
	.quad	0x3fe88b479eceadd9              # double 0.76700192467745432
	.quad	0x3fd7f6e1bcf9ba98              # double 0.37444346861495026
	.quad	0x3fb9a37be0b0b530              # double 0.10015081630327383
	.quad	0x3fe48c063073c48f              # double 0.64209279502223804
	.quad	0x3fef9f71422fb01a              # double 0.98821318556793192
	.quad	0x3fd4fb1feb64ce06              # double 0.32782743442223283
	.quad	0x3fe3cfc4740ada90              # double 0.61911223091631662
	.quad	0x3fe996f41b71c583              # double 0.79967694626081742
	.quad	0x3fefba04a542ae40              # double 0.99145729329524812
	.quad	0x3fef4e72fe4a132e              # double 0.97832631746186904
	.quad	0x3fec6ac7e3afe5de              # double 0.8880347678197571
	.quad	0x3fd0348a1f7f638c              # double 0.25320675922335378
	.quad	0x3febf7298551f1bf              # double 0.87392116583901458
	.quad	0x3fe32756e1b447e6              # double 0.59855217058997989
	.quad	0x3feebecdf614cb32              # double 0.96079156935443266
	.quad	0x3fee68acaf65662f              # double 0.950277655191888
	.quad	0x3fe2dd7cf8d2c451              # double 0.58953713033964494
	.quad	0x3fe97fec3e5f4733              # double 0.79686557943407477
	.quad	0x3fd04ad90bb66514              # double 0.25456834930226191
	.quad	0x3fb375eddea27348              # double 0.076018206457274862
	.quad	0x3fddb5cf30678ef4              # double 0.46422176100735091
	.quad	0x3fb56b6b9f648200              # double 0.083670355238162131
	.quad	0x3fe0b1fe48041292              # double 0.52172769609076597
	.quad	0x3fe97b4a698996ef              # double 0.79630013096604368
	.quad	0x3fee9ecfd922fdee              # double 0.9568862191153451
	.quad	0x3fb00c6a3a8e92c8              # double 0.062689437194943243
	.quad	0x3fa8f76d98e4f2b0              # double 0.048762726701601422
	.quad	0x3fdd3af1a7f165ca              # double 0.45672265434913284
	.quad	0x3fc0edd13b01d914              # double 0.13225760823451849
	.quad	0x3fc742d4f72273c4              # double 0.18172704760664093
	.quad	0x3fdfeca2d465739c              # double 0.49881811849427904
	.quad	0x3fe79eb53e85b009              # double 0.7381235333573396
	.quad	0x3fdd0f492fdb44be              # double 0.45405797646987966
	.quad	0x3fe8ac714efca604              # double 0.77105012347345835
	.quad	0x3fd9714866cea406              # double 0.39753923454060247
	.quad	0x3fe61fd121691328              # double 0.69138390088537438
	.quad	0x3fd31a4c0bb388da              # double 0.29848004477220302
	.quad	0x3fbcca3055652890              # double 0.112460156296182
	.quad	0x3fbbc1b2e4b53b48              # double 0.10842435916604842
	.quad	0x3fc0c7a435d5d014              # double 0.13109257343933278
	.quad	0x3fe9333e9a5feee2              # double 0.78750543738666701
	.quad	0x3fd29622ff84dc00              # double 0.29041361763978557
	.quad	0x3fdf13aefc0d8616              # double 0.48557638754400168
	.quad	0x3febf2da31989181              # double 0.87339505850518162
	.quad	0x3fe9c30479ec5d5a              # double 0.80505584538597508
	.quad	0x3fe5f48ecce8ceae              # double 0.68610324879997164
	.quad	0x3fc8a1d117026998              # double 0.19243825553423899
	.quad	0x3fb63fa3989204f8              # double 0.086908554791097603
	.quad	0x3fd6383a4e890274              # double 0.34718187016918667
	.quad	0x3feb64052a44941c              # double 0.85595949416586192
	.quad	0x3fd10bf9f30d0b72              # double 0.26635597930378829
	.quad	0x3febaaa7afff31c9              # double 0.86458191275010521
	.quad	0x3fea460d6bc75586              # double 0.8210513215114339
	.quad	0x3fd2cf2e11ff7746              # double 0.29389526136025201
	.quad	0x3fd04de61866c316              # double 0.25475456603003133
	.quad	0x3fd179c66757c762              # double 0.27305755703047485
	.quad	0x3fe196ab996e360e              # double 0.54964237181565223
	.quad	0x3feee4169ed01ca3              # double 0.96534281747962713
	.quad	0x3fb833475bcedf20              # double 0.094532451547703733
	.quad	0x3fe3af1278996286              # double 0.61512111238978728
	.quad	0x3fabc591d24796a0              # double 0.054241711539174675
	.quad	0x3fd5acaea8bcdabc              # double 0.33866468885700463
	.quad	0x3fe914bc3654f080              # double 0.78378115283659611
	.quad	0x3fe4e7a182979139              # double 0.65327525621663718
	.quad	0x3fd8d524eeb1b3be              # double 0.38800929365134695
	.quad	0x3fe0055e0aeae361              # double 0.50065519459085916
	.quad	0x3fe59bc01f622abc              # double 0.67526250962813306
	.quad	0x3fd9ec9ec971c298              # double 0.40506715462019249
	.quad	0x3fdfa8b08d8d4e94              # double 0.49467099975047657
	.quad	0x3fdcab7eeb1cc7bc              # double 0.44796727142522363
	.quad	0x3fdb6812bcd61e68              # double 0.42822712365202742
	.quad	0x3fc0c4a20e107e60              # double 0.13100076376666703
	.quad	0x3fdb589aff024d94              # double 0.42728304770681658
	.quad	0x3fd6d63d15b6c608              # double 0.3568260871935256
	.quad	0x3f9e54128e45f700              # double 0.029617586072610003
	.quad	0x3fc758bacf415c2c              # double 0.18239531631363215
	.quad	0x3fe689392c2017f1              # double 0.70425089472041524
	.quad	0x3fe358bc7a9a9e41              # double 0.60458206125344571
	.quad	0x3fe3764cc0135f63              # double 0.60819089426784634
	.quad	0x3fecb0680ff9bd72              # double 0.89653399582122817
	.quad	0x3fe874b227e2564e              # double 0.76424510755414032
	.quad	0x3fa234c9a68c30b0              # double 0.035558988171119466
	.quad	0x3fd29f2255a40584              # double 0.2909627758345652
	.quad	0x3fe7e47c4a862112              # double 0.74664129786927647
	.quad	0x3fc6cd57050deba8              # double 0.17814147707744366
	.quad	0x3fe8d777972c8431              # double 0.77630214239264295
	.quad	0x3fe5f22f380d2523              # double 0.68581353137520684
	.quad	0x3f96a2d21de982a0              # double 0.022105486941998209
	.quad	0x3fd634610cda57b4              # double 0.34694696669736946
	.quad	0x3fde27096ab05a46              # double 0.47113261622272196
	.quad	0x3fa1a2d0b3b7e760              # double 0.034445306719091517
	.quad	0x3fe70e8596f93c4b              # double 0.72052268492724048
	.quad	0x3fedc45ae18ad09f              # double 0.93021911669940838
	.quad	0x3fe1918dca203316              # double 0.54901780584040938
	.quad	0x3fec7a81bab3c408              # double 0.88995443787837392
	.quad	0x3fe21bd46cc037c7              # double 0.56589719047928433
	.quad	0x3fe31fea3a597109              # double 0.59764586826671107
	.quad	0x3fe730ae9d42544b              # double 0.72469263758342473
	.quad	0x3fe4063a0e4c0801              # double 0.62576010506040813
	.quad	0x3fcd2ed92c2e36fc              # double 0.22799219758274336
	.quad	0x3fc11b4500637c80              # double 0.13364470023131858
	.quad	0x3fe176f68adeee59              # double 0.5457718574829854
	.quad	0x3fe583d2050fb469              # double 0.67234135616821533
	.quad	0x3fef9d21ff4e7098              # double 0.98793125023395855
	.quad	0x3fc47171018ad3b8              # double 0.15971195769603042
	.quad	0x3fea3f10fc33ab7e              # double 0.8201985288445568
	.quad	0x3f931dbdd1363240              # double 0.018668142217892703
	.quad	0x3fd1ddd37fb6688e              # double 0.27916419479300536
	.quad	0x3fe8274341cef407              # double 0.75479281285481725
	.quad	0x3fefc8ab6fd206be              # double 0.99324580993580702
	.quad	0x3fbf5a4817548a60              # double 0.12247133798204279
	.quad	0x3fe899bfb0220da1              # double 0.76876816178303298
	.quad	0x3fe44299f371972b              # double 0.633130050159456
	.quad	0x3fec534483821f3a              # double 0.88516450581753436
	.quad	0x3fe6c0beadab7eb6              # double 0.7110284225454595
	.quad	0x3fd1074aa6a51dae              # double 0.26607004426883918
	.quad	0x3fd06f109e111e1e              # double 0.25677886425225604
	.quad	0x3fe8eb67cc3d56da              # double 0.77873601809070725
	.quad	0x3fd1caf8db6eadf6              # double 0.27801343373241083
	.quad	0x3fe0c761a3e13783              # double 0.52433855064167323
	.quad	0x3fcc6eecb399e844              # double 0.22213515061941014
	.quad	0x3fe19c4d0e042cc0              # double 0.55032971131858943
	.quad	0x3fcd749c7586b684              # double 0.23012119043908197
	.quad	0x3fd59773bd4808f8              # double 0.33736890301237521
	.quad	0x3fc25080c3a572d8              # double 0.14308175614396279
	.quad	0x3fdee8e094ee994e              # double 0.48296370071547734
	.quad	0x3fc29be1d6b483b8              # double 0.14538214667939342
	.quad	0x3fdb18cbc7f61f04              # double 0.42338842895013351
	.quad	0x3fe45e2a6e8822e6              # double 0.63649484241713306
	.quad	0x3fcdf5592547bc70              # double 0.23404993362734983
	.quad	0x3fc7c155bab27320              # double 0.18558761230533438
	.quad	0x3fde82c3823d6066              # double 0.47673118323064612
	.quad	0x3fd3b3c8fba1cb56              # double 0.30784821103514071
	.quad	0x3fdada88323d3dd2              # double 0.41958813577818177
	.quad	0x3fc3d20e9ca048e0              # double 0.15484793327102064
	.quad	0x3fef2d0c56fcd239              # double 0.97424904813539747
	.quad	0x3fb951390eb719d8              # double 0.098895612804973054
	.quad	0x3fe14af278b07f40              # double 0.54039882251888827
	.quad	0x3fe54811d54a3a47              # double 0.66504756601518344
	.quad	0x3fef3f45fcd8450f              # double 0.97647380241156322
	.quad	0x3fb307dc49018bb8              # double 0.074338691543330948
	.quad	0x3fe9eb3cadf2ff8d              # double 0.80996545767264794
	.quad	0x3fe1d81e9a2f4496              # double 0.55763177980601841
	.quad	0x3fe384dcf90e640a              # double 0.60996864932815353
	.quad	0x3f7d47d58d32e980              # double 0.0071485845430124817
	.quad	0x3fecf4dda434e9c0              # double 0.90489084312076074
	.quad	0x3fd071789447212a              # double 0.25692572098025102
	.quad	0x3fbc9863e297f310              # double 0.11170028955525546
	.quad	0x3fed65178214fcbb              # double 0.91859031111371026
	.quad	0x3fe08f833a2f82e9              # double 0.51751862873433396
	.quad	0x3fdef3dbc8ce94ea              # double 0.483633943653628
	.quad	0x3fd524145eeceed8              # double 0.33032712240286122
	.quad	0x3fcbfc8c8786075c              # double 0.21864468209610777
	.quad	0x3fed09d4614f2a4c              # double 0.90744990354262133
	.quad	0x3fe65f716393dcde              # double 0.69915074776408992
	.quad	0x3fe0836ef92ad56e              # double 0.51604412713520076
	.quad	0x3fce053ccd69c200              # double 0.23453483610093429
	.quad	0x3fec0912e032dcbe              # double 0.87610763348393284
	.quad	0x3fe75b377b3dc6bd              # double 0.72988485403603642
	.quad	0x3fead3690307bb44              # double 0.83830690948330088
	.quad	0x3fe632c83307d64d              # double 0.69369897810856573
	.quad	0x3fe7d3907c2ef745              # double 0.74457573179800163
	.quad	0x3fe76ffd9b7f7e76              # double 0.73242073412616437
	.quad	0x3fe3096bb929d676              # double 0.59489999928218995
	.quad	0x3fe2e643e04b0352              # double 0.59060853774290423
	.quad	0x3fd8285b976a1f50              # double 0.37746324335647774
	.quad	0x3fd47ba2c2474b88              # double 0.32004612896451379
	.quad	0x3fcf81f9139009e4              # double 0.24615395980079235
	.quad	0x3fe4190a23f65e3d              # double 0.62805659316922624
	.quad	0x3fe5ce3c57217369              # double 0.68142525689800693
	.quad	0x3fe9a40db61c1fe3              # double 0.80127606933910689
	.quad	0x3feb60cfbc9004d6              # double 0.85556780651691144
	.quad	0x3fe31c7727514a18              # double 0.59722478560644543
	.quad	0x3fecca4f9808e791              # double 0.8996961564473499
	.quad	0x3fd1e862a2df4182              # double 0.27980867295720924
	.quad	0x3feb64f221a53f0a              # double 0.85607248851189977
	.quad	0x3fda45c280f965b4              # double 0.41050779910218727
	.quad	0x3fdf33909dd0fd42              # double 0.48752227222208344
	.quad	0x3fccc08960fb0ef8              # double 0.22462575183282474
	.quad	0x3fd599b3a0c4d0aa              # double 0.33750620555953026
	.quad	0x3fdf42d9fc7291a2              # double 0.48845529225425299
	.quad	0x3facf7b47f47d950              # double 0.056577339684667494
	.quad	0x3fe8beaa13d48741              # double 0.77327445862849953
	.quad	0x3fe589528c25c8aa              # double 0.6730129945047072
	.quad	0x3fd915c62876c3e2              # double 0.39195398284488026
	.quad	0x3fc5c45ee704f7f8              # double 0.17005525856251302
	.quad	0x3fe36f0a47175a03              # double 0.60730470547679294
	.quad	0x3fd57e3795bdc3f4              # double 0.33582868216677686
	.quad	0x3fd107e40cbd282e              # double 0.26610661739380503
	.quad	0x3fe05b9e9228af21              # double 0.51118401095070365
	.quad	0x3fbedf10ff4b3a70              # double 0.12059122307548775
	.quad	0x3fe20d97206cb79f              # double 0.56415897686905569
	.quad	0x3fd11be5bcf45f16              # double 0.26732772305102637
	.quad	0x3fd004e699c34dc8              # double 0.25029912010105848
	.quad	0x3fead07131dddf2a              # double 0.8379446004828186
	.quad	0x3fe4404592e7373a              # double 0.63284567539242365
	.quad	0x3fd7c0afa08fb40e              # double 0.37113562278574441
	.quad	0x3fb09d56a4037a90              # double 0.064900794069652656
	.quad	0x3fe6c659942881c1              # double 0.7117126363482883
	.quad	0x3fe7fb9ba57c8fbf              # double 0.74946386643977536
	.quad	0x3feaf605cd6f2fea              # double 0.8425320637120397
	.quad	0x3fecd60de1747880              # double 0.90112966570065112
	.quad	0x3fc4f7d8f653b048              # double 0.16381370570832332
	.quad	0x3fd9eb11ff8404da              # double 0.4049725528021334
	.quad	0x3fd0eb1c6560c91c              # double 0.26435003185464878
	.quad	0x3fa7df387afdeca0              # double 0.046624913228663134
	.quad	0x3f95050f9a941a60              # double 0.020527118501400543
	.quad	0x3fe4c3ba0b332822              # double 0.6488924235102369
	.quad	0x3feed2c3eaf2838d              # double 0.96322818649433517
	.quad	0x3fe8fa9bfbab6a32              # double 0.78059195665566095
	.quad	0x3fb63bfc902b0eb0              # double 0.086852822491944037
	.quad	0x3fb443550a9d7f70              # double 0.079152407733543261
	.quad	0x3fef0140fc79ab39              # double 0.96890305816245991
	.quad	0x3fc14713075cd63c              # double 0.13498151645187473
	.quad	0x3fd7a29a58b34368              # double 0.36929949438222431
	.quad	0x3fa836e965519d30              # double 0.047293943040865094
	.quad	0x3fde0adf3b829e92              # double 0.46941357432886222
	.quad	0x3fd0555b3f63673c              # double 0.25520974340689739
	.quad	0x3fb69e19e3c72138              # double 0.088349931821657957
	.quad	0x3fd110351d94834a              # double 0.26661422623333364
	.quad	0x3fd5793a5a261cc8              # double 0.33552416614152181
	.quad	0x3fbf6abbebb8d188              # double 0.12272238259249069
	.quad	0x3fe6be53995d7aaa              # double 0.71073322252398907
	.quad	0x3f90bafd0a73a2e0              # double 0.016338304293557537
	.quad	0x3fe06bd1b500a669              # double 0.51316151954706613
	.quad	0x3fe3ffbdc6534718              # double 0.62496842132006503
	.quad	0x3fe1ef727dd5d9bf              # double 0.5604793985101465
	.quad	0x3fd91427fb237c36              # double 0.39185523534064559
	.quad	0x3fdbda4bfb73dcfe              # double 0.4351987796394069
	.quad	0x3fe710d629b49faf              # double 0.72080524583451744
	.quad	0x3fdd32894df59664              # double 0.45620949376311715
	.quad	0x3fde80f0017692ea              # double 0.47661972182167622
	.quad	0x3feb49399bc97e1d              # double 0.85268860270656754
	.quad	0x3feb401ba0323ab8              # double 0.85157567299196213
	.quad	0x3fee8ac6ba627434              # double 0.95444046405066851
	.quad	0x3fe0a9855f81b064              # double 0.52069348004944205
	.quad	0x3fd89c5a1441a8a2              # double 0.38454296091243567
	.quad	0x3fc87b21b0d9d50c              # double 0.19125767836855123
	.quad	0x3feba3b16ea29a67              # double 0.86373206718856188
	.quad	0x3febac309f20baf3              # double 0.86476927833231654
	.quad	0x3fa9dd12db780070              # double 0.050514783182735168
	.quad	0x3fe3e8e256954b19              # double 0.62217823897148883
	.quad	0x3fe05ebabfe85787              # double 0.51156365854215913
	.quad	0x3fe9f53030130f00              # double 0.81118020429173043
	.quad	0x3fe9f0e9b933cecc              # double 0.81065832302416529
	.quad	0x3fd61a090294e7f6              # double 0.34533906223407429
	.quad	0x3fea4bbd73761906              # double 0.82174561072386676
	.quad	0x3fe4fb47b23ba037              # double 0.65567383586040406
	.quad	0x3fa2c20e8a49a9a0              # double 0.036636785870388211
	.quad	0x3fc6a29b85409c74              # double 0.17683738714660857
	.quad	0x3f5c6d6aa3674800              # double 0.0017350713147732399
	.quad	0x3fd1b88883941164              # double 0.27688801621868309
	.quad	0x3fe458ae887c5d6e              # double 0.63582541139014181
	.quad	0x3fe6f07cd23e88b0              # double 0.71685639441809279
	.quad	0x3fbaeebb77a072c8              # double 0.10520526571822153
	.quad	0x3fdf5311c96b82c4              # double 0.48944515867155425
	.quad	0x3fba69b90cbdd168              # double 0.10317570267745213
	.quad	0x3fef6be341227cc9              # double 0.98191988679527597
	.quad	0x3fe8c49373624387              # double 0.77399609123141111
	.quad	0x3fc491ecbaeb1824              # double 0.16070326926109246
	.quad	0x3fe4482e651e91f0              # double 0.63381118535886394
	.quad	0x3feba6e5c194cfca              # double 0.86412322815748976
	.quad	0x3facb9e1ffd03370              # double 0.056105673291404368
	.quad	0x3fa179caca75af00              # double 0.034132325376814876
	.quad	0x3fe60e2418104d82              # double 0.68922619533479712
	.quad	0x3fbd920fb3877ea8              # double 0.1155099690727136
	.quad	0x3fe019858d3c0f08              # double 0.50311544022449173
	.quad	0x3fcd284460a0ee0c              # double 0.22779135435290276
	.quad	0x3fbbf64bd48d6310              # double 0.1092269319464203
	.quad	0x3fc61275fbe2b424              # double 0.17243838118648214
	.quad	0x3fdc925b29c02162              # double 0.44643286778639013
	.quad	0x3fca79e70ed71fc0              # double 0.20684517120957757
	.quad	0x3fe5a5f2e7a2f592              # double 0.67650742761149929
	.quad	0x3fd4b3ef5c8a101c              # double 0.32348236119310214
	.quad	0x3fc1f78c08a0a610              # double 0.14036703511492066
	.quad	0x3fef4e4ec2b714af              # double 0.9783090403585869
	.quad	0x3fc4e81ad48a9810              # double 0.16333327653882224
	.quad	0x3fe0213bf31ba878              # double 0.50405690652884427
	.quad	0x3fe826f5b0b15910              # double 0.75475582609468184
	.quad	0x3fcdcaa0ae9690bc              # double 0.23274620556651893
	.quad	0x3fcdb62b57d7ce2c              # double 0.23212186612328034
	.quad	0x3feab81da96a8d68              # double 0.83497508133988863
	.quad	0x3fd65af8ad78277a              # double 0.34930245342604105
	.quad	0x3fe9d9dc13e62867              # double 0.80784419905218108
	.quad	0x3fd70f9c0fbed678              # double 0.36032773530619222
	.quad	0x3fc67f31298f4ce0              # double 0.17575659302983748
	.quad	0x3fef17ed50065b4c              # double 0.97167077665185663
	.quad	0x3fedb797da7a6c08              # double 0.92866127654576847
	.quad	0x3f9b2d59886d2460              # double 0.0265401830213573
	.quad	0x3fcd09567a463424              # double 0.22684746714040316
	.quad	0x3fcd3e54446fc384              # double 0.22846463529233685
	.quad	0x3fe121a3ea96fdd6              # double 0.53535648172686012
	.quad	0x3fe9f7c6098fe977              # double 0.81149579875572797
	.quad	0x3fd1ed1fdde81414              # double 0.28009792967378755
	.quad	0x3fe3461fa17e80ec              # double 0.60231000463320816
	.quad	0x3fe2a94fe25abc04              # double 0.58316797456598168
	.quad	0x3fca4a0a7cb5c7f0              # double 0.20538455094680286
	.quad	0x3fea8894f24cd791              # double 0.82917258571863972
	.quad	0x3fe226c0dbce9cca              # double 0.56723063403196616
	.quad	0x3fe91bbb43a485fd              # double 0.78463519298037421
	.quad	0x3fc00ac817f44170              # double 0.12532902879366814
	.quad	0x3fd6653fe172f50c              # double 0.3499297811175246
	.quad	0x3fbc1d6e20d2ace8              # double 0.10982406903592656
	.quad	0x3fded18f1c152742              # double 0.48154046766704905
	.quad	0x3fe1af5e0fc8214b              # double 0.5526571567761861
	.quad	0x3fe024410713e921              # double 0.50442553884866836
	.quad	0x3fe29138fef152a3              # double 0.58022737306108174
	.quad	0x3fe4b3133f900e8e              # double 0.64685976423830183
	.quad	0x3fe744e2f3da80ed              # double 0.72715900066034822
	.quad	0x3fe300498670457b              # double 0.59378505952388083
	.quad	0x3fd1ac4322a39db2              # double 0.27613905317999887
	.quad	0x3fd1a71c39ff85ae              # double 0.2758246008289359
	.quad	0x3fda364464e21c6c              # double 0.40956220485572348
	.quad	0x3fda30ec6e7a6814              # double 0.40923605717546363
	.quad	0x3fdc367929877a98              # double 0.44082478576266615
	.quad	0x3fe2ead61d4683b4              # double 0.59116655080662506
	.quad	0x3fe16a5c0c4f1f29              # double 0.54423334507098275
	.quad	0x3fe59142a49602cd              # double 0.67398197313021913
	.quad	0x3fe6d1ee5745d0ee              # double 0.71312634511425954
	.quad	0x3fe88412e06c96b5              # double 0.76612228234144786
	.quad	0x3fd7b77b0480650a              # double 0.37057376327136693
	.quad	0x3fe0cd9f2abe31ef              # double 0.52510031078560171
	.quad	0x3fd623755a7dc82e              # double 0.34591420971912867
	.quad	0x3fd51da7a31816cc              # double 0.32993498732717508
	.quad	0x3fcd0ebbeccbc8b0              # double 0.22701214849764062
	.quad	0x3fe4af45fa9e5bf3              # double 0.64639567326491798
	.quad	0x3fce9ae672853c58              # double 0.23910217849558779
	.quad	0x3fe62cf808927578              # double 0.69298936533202404
	.quad	0x3fe48d769ac2bd8f              # double 0.64226846911144431
	.quad	0x3fca6876434e8394              # double 0.20631292616328933
	.quad	0x3fee6bdd94977301              # double 0.95066718122288318
	.quad	0x3fefa12e9a64a35d              # double 0.98842554240136915
	.quad	0x3fc68f570e3c8af8              # double 0.17624939150945074
	.quad	0x3fd92de3a7069b28              # double 0.39342585860360879
	.quad	0x3fe2e9bd7aebb0ef              # double 0.59103273399298739
	.quad	0x3fd6a3497b814fa2              # double 0.35371625004813201
	.quad	0x3fc090496942a840              # double 0.12940328254382116
	.quad	0x3fc811ccda0f32f8              # double 0.18804321906500099
	.quad	0x3fe4c3296a594d21              # double 0.64882345935112451
	.quad	0x3fe6b8722eefeef9              # double 0.7100153843634579
	.quad	0x3fdc604c6a75cd2a              # double 0.44337759396076371
	.quad	0x3feea27be2fffab5              # double 0.95733446441575742
	.quad	0x3fd585d0377d6ab2              # double 0.33629231852470831
	.quad	0x3fb81d1789ed0560              # double 0.094193907903009854
	.quad	0x3fe7ec3bba7e5a63              # double 0.74758707451367135
	.quad	0x3fb9d243e2e1d1d0              # double 0.10086464203943213
	.quad	0x3fea5d9fb1ea3b39              # double 0.823928687563103
	.quad	0x3feeff7e6ba0db3e              # double 0.96868821164284902
	.quad	0x3fdb66218fc5cab2              # double 0.42810858764930082
	.quad	0x3fc1ddd7972a5920              # double 0.13958258515476363
	.quad	0x3fe2c2695dc393db              # double 0.58623188317562425
	.quad	0x3fdc09b87dcc43c6              # double 0.43809330258323731
	.quad	0x3fec8e5da91cbed9              # double 0.89237864522689414
	.quad	0x3fcfec3b2cf9a224              # double 0.24939670272876058
	.quad	0x3fc290316e47162c              # double 0.14502542385723538
	.quad	0x3faf50b17aad3490              # double 0.061162515854996546
	.quad	0x3fd9f5e8d634d9ec              # double 0.40563412588690428
	.quad	0x3fe9d69294e01d38              # double 0.80744294240222469
	.quad	0x3fd08b2da2f49798              # double 0.25849476731888776
	.quad	0x3fedde18df5c4b41              # double 0.9333614695081921
	.quad	0x3fa16f017e0e1140              # double 0.034050032270018793
	.quad	0x3feb3685a354a4bb              # double 0.8504055204440627
	.quad	0x3fef4c9b2eada9ba              # double 0.97810134045476294
	.quad	0x3fe463ccb2190b2b              # double 0.63718256745082635
	.quad	0x3fd47e44dbf95ae4              # double 0.3202068470176711
	.quad	0x3f79026281494000              # double 0.0061057899334429067
	.quad	0x3fdb47c0dd10cc72              # double 0.42625447834433949
	.quad	0x3fd8e7d37e1285f0              # double 0.38914954482797182
	.quad	0x3fdfba0e4ef345b8              # double 0.49573095045078786
	.quad	0x3fee2a8904be8515              # double 0.94269228865246879
	.quad	0x3fbc0af7b0679178              # double 0.10954235131027257
	.quad	0x3fd1b51815b25538              # double 0.27667810553369376
	.quad	0x3feebe9eee5c08c6              # double 0.96076914362517907
	.quad	0x3fcc5489ba607df8              # double 0.22132989502368594
	.quad	0x3feb771f32142c2a              # double 0.85829124241843613
	.quad	0x3fe4a96d2a0b4329              # double 0.64568193637578475
	.quad	0x3fd273b71754ba8e              # double 0.28831269529738612
	.quad	0x3fe16320d5e9ca8d              # double 0.54335061817103425
	.quad	0x3fdd09e87d7d901c              # double 0.45372974638871866
	.quad	0x3fe1099eb5707c56              # double 0.5324243110407092
	.quad	0x3fd4e601f225e6a6              # double 0.32653854987402509
	.quad	0x3fcbb70e336dcd88              # double 0.2165239096753846
	.quad	0x3fe543cb5292a95c              # double 0.66452566268462077
	.quad	0x3fd492ebe2e8cbb4              # double 0.32146737250439661
	.quad	0x3feedc256af34525              # double 0.96437331093526224
	.quad	0x3fd530167fd93d04              # double 0.3310600517770157
	.quad	0x3fe47b23758d4f4b              # double 0.64003155669568323
	.quad	0x3fdc72111bc55628              # double 0.44446208679196042
	.quad	0x3fecf5a80383e86b              # double 0.90498734175276974
	.quad	0x3fa60357554ff9a0              # double 0.042994240917312299
	.quad	0x3fe953dd322c1c11              # double 0.79148731040266018
	.quad	0x3feacbb97ba59b58              # double 0.83736871862206907
	.quad	0x3fc483f9577e465c              # double 0.16027752658969774
	.quad	0x3fe609ae75c86563              # double 0.68868182186558291
	.quad	0x3fc75096e1555af8              # double 0.18214689257248273
	.quad	0x3fdcf0a8c89e2050              # double 0.45218867866106383
	.quad	0x3fe6cc68c0d7be30              # double 0.71245229401205812
	.quad	0x3fe06c96958084ae              # double 0.51325539779295126
	.quad	0x3fe64c2feb658974              # double 0.69680019355682399
	.quad	0x3fd75d32d3d12296              # double 0.36506338773009739
	.quad	0x3fe0dad5e65428b6              # double 0.5267133234604191
	.quad	0x3fc86905f7b3f100              # double 0.19070505709522223
	.quad	0x3fe582779a95468f              # double 0.67217617218030223
	.quad	0x3fdc91125805778e              # double 0.44635447116694926
	.quad	0x3fed4f7124231e57              # double 0.91594750459712315
	.quad	0x3fe17d88040025d3              # double 0.54657364636767125
	.quad	0x3fe999346723a279              # double 0.7999517454564532
	.quad	0x3fe0c0e1759fa812              # double 0.52354500745173227
	.quad	0x3feb05b401329f04              # double 0.84444618448193908
	.quad	0x3feb29cf1dc39b04              # double 0.84885364354417491
	.quad	0x3fc2d9d1009615fc              # double 0.14727222946764573
	.quad	0x3fe4aabcee42b51e              # double 0.64584204230564857
	.quad	0x3fb337877bf16338              # double 0.075066058883192066
	.quad	0x3fdd7b47250153ae              # double 0.46064928640162861
	.quad	0x3fbbd182b43aad98              # double 0.10866562748076658
	.quad	0x3feb5691371b5892              # double 0.85431729090739084
	.quad	0x3fd38e9e8e330eda              # double 0.30557979475655161
	.quad	0x3fc5c22cd8d87534              # double 0.16998825634156278
	.quad	0x3fc0b0a6ce44eb2c              # double 0.13039097854365289
	.quad	0x3fe57adba0da3b28              # double 0.67124730507371044
	.quad	0x3fbb5f9a76ab1ce0              # double 0.10692754170587504
	.quad	0x3fc9c2556b3bb934              # double 0.20124309288025588
	.quad	0x3fef6ad25badfeff              # double 0.98178975969491932
	.quad	0x3fee23a7a8ab2c92              # double 0.94185240691276051
	.quad	0x3fdd663840f725ac              # double 0.45936399788169058
	.quad	0x3fced0df3811f0b0              # double 0.24074926603123492
	.quad	0x3fedca7bebc6c9be              # double 0.93096729326344252
	.quad	0x3fde263cd7c6e0f0              # double 0.47108384201011599
	.quad	0x3feca9795845657b              # double 0.89568774452634103
	.quad	0x3fb9b0a5db5bbea0              # double 0.10035168271474015
	.quad	0x3fa060e6f27b92e0              # double 0.031989304637851879
	.quad	0x3fe0368cac123705              # double 0.50665887458464509
	.quad	0x3fe698d640a31f76              # double 0.70615685104802028
	.quad	0x3fed7cdeb95ae515              # double 0.92149292184982079
	.quad	0x3fdff98c0e23eaca              # double 0.49960614567650607
	.quad	0x3fe341b6a794929f              # double 0.60177166681804184
	.quad	0x3fed80fb38f4d18e              # double 0.9219947922161269
	.quad	0x3fea10d1fb6b1988              # double 0.81455325226925002
	.quad	0x3fee1863adc16147              # double 0.94047721802329753
	.quad	0x3fe0b855df6dfc63              # double 0.52250188482856819
	.quad	0x3fe4b722588572db              # double 0.64735524453461879
	.quad	0x3fe929951442b4f3              # double 0.78632596928733134
	.quad	0x3fdf31f948f9cb56              # double 0.48742515684641796
	.quad	0x3fe6c5aec1e99a4c              # double 0.71163118241822465
	.quad	0x3fef5f8206b7d235              # double 0.98040868103141198
	.quad	0x3fd0cb166f052c36              # double 0.26239548532311419
	.quad	0x3fd6657cbe23aca0              # double 0.34994429176613018
	.quad	0x3fcce5ddfd768c14              # double 0.22576498867155748
	.quad	0x3fd9c84b0b70d420              # double 0.40284992329844904
	.quad	0x3fead88a17b4d77a              # double 0.83893303518446705
	.quad	0x3fed404e95ac8f88              # double 0.91409997208801119
	.quad	0x3fb97a6fad833690              # double 0.099524478780234071
	.quad	0x3fec971fd1f79244              # double 0.89344779023355913
	.quad	0x3fc564d0fa642e68              # double 0.16713916994227707
	.quad	0x3fe6818db4d3726f              # double 0.70331464116641296
	.quad	0x3fe557b98510831d              # double 0.66695857991371421
	.quad	0x3facf4db56256300              # double 0.056555609002947094
	.quad	0x3fe8d4f30ab1b7f3              # double 0.7759947975989675
	.quad	0x3feb6e60e652990a              # double 0.85722393975154998
	.quad	0x3fdaf0cdd7d3a504              # double 0.4209475143130279
	.quad	0x3fe95dc1043090c0              # double 0.79269457643797381
	.quad	0x3fc7445f5a0967c0              # double 0.18177406212163127
	.quad	0x3fd1bf9e1eaf5d04              # double 0.27732041355689341
	.quad	0x3fe121adc7fc7449              # double 0.53536118564410018
	.quad	0x3fd1d81aa85b2030              # double 0.27881494942676266
	.quad	0x3fe7df08ffb15294              # double 0.74597597064947019
	.quad	0x3fd21e33a6677004              # double 0.28309336901088522
	.quad	0x3fec8922afcf71b7              # double 0.89174017274813522
	.quad	0x3fe74b66691a8d61              # double 0.72795410659857052
	.quad	0x3fe132f188e127db              # double 0.53746868833809047
	.quad	0x3fe35562922d4948              # double 0.60417297887969657
	.quad	0x3fe7ca0decf9278d              # double 0.74341484340514941
	.quad	0x3fe7d3716dc60609              # double 0.74456092300550936
	.quad	0x3fe9c2704053b109              # double 0.80498516620494442
	.quad	0x3fe827305a768082              # double 0.75478379887137259
	.quad	0x3f83c4a959882940              # double 0.0096524458358727693
	.quad	0x3fd6283a8c209e56              # double 0.34620536503141375
	.quad	0x3fecb116690f9003              # double 0.89661713142095356
	.quad	0x3fe1b30989e77aed              # double 0.55310513433854924
	.quad	0x3febe0b9df498164              # double 0.87118238077895826
	.quad	0x3fd41e98b4848ecc              # double 0.31436746243182934
	.quad	0x3fd8c17ef69ab008              # double 0.38681005556532044
	.quad	0x3fb5c6fc1d2a20f8              # double 0.08506751739526297
	.quad	0x3fd8f7b9631ccb3a              # double 0.39011988333657011
	.quad	0x3fda5bdc0105f6d4              # double 0.41185665225917245
	.quad	0x3fad033d21246af0              # double 0.056665334983525883
	.quad	0x3fee78c27870e5a3              # double 0.95224116824754323
	.quad	0x3fee7eb96e69d211              # double 0.95296927991017999
	.quad	0x3fb43fde4657e660              # double 0.079099552320167188
	.quad	0x3fe84a418d0de5f4              # double 0.75906446027437235
	.quad	0x3fd1e9b15e24a1e6              # double 0.27988847917234094
	.quad	0x3fe4eea7a10d14f7              # double 0.65413266616147225
	.quad	0x3fdebb6c6c1b6d3e              # double 0.48018942410790888
	.quad	0x3fdc87e793d441ae              # double 0.4457949584621258
	.quad	0x3f9c1d4f34b3fc20              # double 0.027455556480159626
	.quad	0x3fe6197f27ea329d              # double 0.69061239047876521
	.quad	0x3fea978581559535              # double 0.83099627743346238
	.quad	0x3fd6a7e9e76ba97e              # double 0.35399863814986776
	.quad	0x3fe925b23e683d1b              # double 0.78585159481909572
	.quad	0x3fe3fcd8a388ee1b              # double 0.6246150201836288
	.quad	0x3fd8b012cb8c5010              # double 0.38574666860336126
	.quad	0x3fdedf400c829d38              # double 0.48237611028385485
	.quad	0x3fc8f0ce8899b718              # double 0.19484883947318887
	.quad	0x3fc3ec2584374758              # double 0.15564412074905465
	.quad	0x3fe0e7288de29876              # double 0.52821757995549379
	.quad	0x3fd2c9907d83d6b4              # double 0.29355251557658879
	.quad	0x3fd71f0372ca35de              # double 0.36126791200589803
	.quad	0x3fef5757e3787700              # double 0.97941202571720964
	.quad	0x3fcc1d451bcb13cc              # double 0.21964324814885428
	.quad	0x3fefd88044523d4e              # double 0.99517834991449106
	.quad	0x3fa400aeac404010              # double 0.039067705656748442
	.quad	0x3feac27a6cbe0cd7              # double 0.83624001730677378
	.quad	0x3fa1eeefbb447050              # double 0.035026065454275668
	.quad	0x3fd3eb780c31461c              # double 0.31124688330337036
	.quad	0x3fd7993804a05944              # double 0.36872673465531514
	.quad	0x3fe40be5a8f257c3              # double 0.62645228383438967
	.quad	0x3fc09713983b35a0              # double 0.12961049016159354
	.quad	0x3fe5364041e2d885              # double 0.66287243717557998
	.quad	0x3fc512f69442a0f8              # double 0.16464121093054707
	.quad	0x3fd2b3ceb31b7c22              # double 0.29222457400277524
	.quad	0x3fe60a25f1be793d              # double 0.68873879638321223
	.quad	0x3fcada492699f158              # double 0.20978655228453635
	.quad	0x3fe684f53da884a3              # double 0.70373022120124451
	.quad	0x3fe82882feb12380              # double 0.75494527573128778
	.quad	0x3fe8c135a058b803              # double 0.77358514135062284
	.quad	0x3fe6a79e8b104935              # double 0.70796134148466783
	.quad	0x3fee415b75836869              # double 0.94547818137949691
	.quad	0x3fba611b3b3e5de0              # double 0.10304422565820159
	.quad	0x3fc6e0a2ee56135c              # double 0.17873036038886425
	.quad	0x3fc0d939e08ee54c              # double 0.1316292139506835
	.quad	0x3fef1432e78b31c6              # double 0.97121567939171238
	.quad	0x3fd10d388a3d2178              # double 0.26643193721658731
	.quad	0x3fe2d80cfa0909c1              # double 0.58887337527294659
	.quad	0x3fe518fd004ae577              # double 0.65930032784596804
	.quad	0x3fed0a1f5b3ab83f              # double 0.90748565500485501
	.quad	0x3fe3957f2f384a42              # double 0.61199912283547797
	.quad	0x3fdff7a6abcb9ade              # double 0.49949042107475161
	.quad	0x3fe6c80d7e584b72              # double 0.711920496718774
	.quad	0x3fcdf95457812254              # double 0.23417143128087281
	.quad	0x3fbbe7bf80164a60              # double 0.1090049445831851
	.quad	0x3fe4968f32cb980c              # double 0.64337882920222134
	.quad	0x3fe833dd3ced9847              # double 0.75633108043690178
	.quad	0x3fc87a31ca633454              # double 0.19122908003046979
	.quad	0x3fed3be3647b85b9              # double 0.91356057763567045
	.quad	0x3fd543bb2df38c56              # double 0.33225898253858099
	.quad	0x3fe5e63a9df20582              # double 0.68435412262640249
	.quad	0x3feeaa1cd428be16              # double 0.9582656997426422
	.quad	0x3fc3aae8a643d4f0              # double 0.15365322225958478
	.quad	0x3fd19affb4b13188              # double 0.27508537908286046
	.quad	0x3fe8fbc95ec8d334              # double 0.78073566925613713
	.quad	0x3fd6799e83674f24              # double 0.35117304642084179
	.quad	0x3fece162535676c0              # double 0.90251270558265873
	.quad	0x3fcf825d8bfb8430              # double 0.24616593680460275
	.quad	0x3fc3168cc7c245bc              # double 0.14912566903926272
	.quad	0x3fe3bf7e61baf111              # double 0.6171256932061927
	.quad	0x3fee25101a0b1935              # double 0.94202427946655709
	.quad	0x3fd6cddf8c2a6a38              # double 0.35631550491385466
	.quad	0x3f8a5e0dcc664600              # double 0.012874706077840692
	.quad	0x3fe0917400d77a0d              # double 0.51775550999065134
	.quad	0x3fcb4f58f14fef2c              # double 0.21335899145912529
	.quad	0x3fd09d76bdcb58ae              # double 0.2596108296833205
	.quad	0x3febd259d53c2257              # double 0.86942760131303032
	.quad	0x3fd3d7fefb0437ee              # double 0.31005835069015475
	.quad	0x3fe42f44337a60fc              # double 0.63076982549958371
	.quad	0x3f8f4cbfc39e31c0              # double 0.015283106000219315
	.quad	0x3fdbed4f864227d0              # double 0.43635929213689639
	.quad	0x3fee8a3e7371c2b5              # double 0.95437548206071787
	.quad	0x3faf27295a7e4d30              # double 0.060845653816750889
	.quad	0x3fe2fafadbb9962b              # double 0.59313719668415865
	.quad	0x3fd6c82f4ace8fe0              # double 0.35596830659255652
	.quad	0x3fc2072882582050              # double 0.14084345211472504
	.quad	0x3fe94449941fac96              # double 0.78958586626449079
	.quad	0x3fb71f251591dfd8              # double 0.090318982854909691
	.quad	0x3fead41b7a488fb9              # double 0.83839200862393348
	.quad	0x3fe06457d06aae56              # double 0.51224890428916114
	.quad	0x3feb48ff39a89c53              # double 0.85266076337291918
	.quad	0x3fe7c2e8ef7cdd39              # double 0.74254271292640006
	.quad	0x3fb332286c10f088              # double 0.074984098800031984
	.quad	0x3fef1e4eec188fac              # double 0.97244974243630144
	.quad	0x3fe885a7556b6954              # double 0.76631514247427867
	.quad	0x3fd2f84a6b9a72ec              # double 0.29640446193825087
	.quad	0x3fe6fc88e03dce29              # double 0.71832698628572189
	.quad	0x3fd9d9eb6c7e0f88              # double 0.40392575831378297
	.quad	0x3fe4532860d814a3              # double 0.63515108980995583
	.quad	0x3fde58b95659d814              # double 0.47416528160772597
	.quad	0x3fe55beb15867435              # double 0.66747049526350699
	.quad	0x3fe59764308b6672              # double 0.67473039132455725
	.quad	0x3fefffa52d25f46d              # double 0.99995669191379266
	.quad	0x3fbad18dfbee9bb0              # double 0.10476004982648024
	.quad	0x3fb45e6c807d2850              # double 0.079565793389663186
	.quad	0x3fc9f3c6820a7b84              # double 0.20275193547874093
	.quad	0x3fd7ca3feed3ab60              # double 0.37171934435780507
	.quad	0x3fefae559cc25a42              # double 0.9900310575201916
	.quad	0x3fdf66ff255a34fa              # double 0.49066141746227709
	.quad	0x3fde311d0b3457de              # double 0.47174764723001583
	.quad	0x3fb33a6bb7b9cb10              # double 0.075110180239601698
	.quad	0x3fcf7bc5729b06a8              # double 0.24596469970679391
	.quad	0x3fc3cc816ac4716c              # double 0.15467851365327634
	.quad	0x3febd83a12ce653f              # double 0.87014487908451332
	.quad	0x3fd33eadd0707f9a              # double 0.30070062022604704
	.quad	0x3fd3a992ba84fad8              # double 0.30722492422857561
	.quad	0x3fb211b77597cec0              # double 0.070582834443309928
	.quad	0x3feed468c540208a              # double 0.96342886472213363
	.quad	0x3fd8f287f8868cc8              # double 0.389802925778167
	.quad	0x3fc731da5370afb4              # double 0.18120888780810918
	.quad	0x3fedc366b8a5d166              # double 0.93010269226082865
	.quad	0x3fccc1511f32c870              # double 0.22464956305845218
	.quad	0x3feadeaf9c98fc9f              # double 0.83968334756345431
	.quad	0x3fa262dcd6ef2bc0              # double 0.035910512196628996
	.quad	0x3feea16830f807ce              # double 0.9572030025885796
	.quad	0x3fbfa7119e31ce98              # double 0.12364301788493959
	.quad	0x3fed3f182d967abe              # double 0.91395195869321078
	.quad	0x3fe201942eb2b0d4              # double 0.56269272919373714
	.quad	0x3fe26e0660ac29c4              # double 0.57593077546453531
	.quad	0x3fe9076edf209c50              # double 0.78215735988204393
	.quad	0x3fec1103cab8e93e              # double 0.8770770034237001
	.quad	0x3fd8b51368faa4e2              # double 0.38605199100363852
	.quad	0x3f62411a3c969f00              # double 0.0022283089098954489
	.quad	0x3fa3ba7760e9cb90              # double 0.038532000141365264
	.quad	0x3fed8cda3ea2c326              # double 0.92344391091873912
	.quad	0x3fe09e2d47a5c29c              # double 0.51930870050098887
	.quad	0x3fe6afe3d406da58              # double 0.70897094165304519
	.quad	0x3fd85f2bbebaccca              # double 0.38080876947351483
	.quad	0x3fed5a78a4791a7f              # double 0.91729385493893278
	.quad	0x3fdd3bb8286fa3a0              # double 0.45676998089634857
	.quad	0x3fceba6c16e8d964              # double 0.24006415480262
	.quad	0x3fea3605acd6ff75              # double 0.81909450300007214
	.quad	0x3fe3335901c23d49              # double 0.60001802772050283
	.quad	0x3fee7e25ecfe04d3              # double 0.95289894378233908
	.quad	0x3fc095c334ee2f20              # double 0.12957038959972866
	.quad	0x3fd14acd0a263376              # double 0.27019048682341607
	.quad	0x3fdd2d59a6349c98              # double 0.45589295607573765
	.quad	0x3fc282862d5a3618              # double 0.14460828031990114
	.quad	0x3fd70c94af333c58              # double 0.36014287099255204
	.quad	0x3fee79a2c9f83210              # double 0.95234813162966425
	.quad	0x3febc4be3f6d99ed              # double 0.86776649845415721
	.quad	0x3fcee1dea2fcefa0              # double 0.24126799543762179
	.quad	0x3fa6ffcfbf71c3b0              # double 0.044920436973263533
	.quad	0x3fe90acd2d7feb35              # double 0.78256853949219496
	.quad	0x3febd96bac2be1fa              # double 0.87029060008268222
	.quad	0x3fe2645f88031fc7              # double 0.57475258412250063
	.quad	0x3fdb970605204e12              # double 0.43109274387936225
	.quad	0x3fdb8fb2a5e2ac86              # double 0.43064562034368981
	.quad	0x3fdf039f75b04390              # double 0.48459612362881277
	.quad	0x3fd577e48e251220              # double 0.33544267541245354
	.quad	0x3fdab64fbac8cdb4              # double 0.41737740746176688
	.quad	0x3fec248349612fb4              # double 0.87945713359794419
	.quad	0x3fcd41cbdd750684              # double 0.22857044518791636
	.quad	0x3fc48f9147737440              # double 0.16063133229082105
	.quad	0x3fef526fd8beacb8              # double 0.97881309826825368
	.quad	0x3f850d1172428540              # double 0.010278831767495888
	.quad	0x3fa8fc36cc035260              # double 0.048799240497520158
	.quad	0x3fe6d9a59c2866bd              # double 0.7140682268102051
	.quad	0x3fe40a5ce83a8576              # double 0.62626500470302804
	.quad	0x3fd477462819bf26              # double 0.31977991024085595
	.quad	0x3fc1bff772669ba4              # double 0.13867085538842361
	.quad	0x3fd14391ba94db90              # double 0.26974909993025964
	.quad	0x3f3ea4bba85c4000              # double 4.6758252607137507E-4
	.quad	0x3fe6658034f773bd              # double 0.69989023537674877
	.quad	0x3fec89ef3358b486              # double 0.89183769253362821
	.quad	0x3fc01885ec6046e8              # double 0.12574838678170086
	.quad	0x3fdd2dd730191e8e              # double 0.4559228868206241
	.quad	0x3fd1f164533c24ac              # double 0.28035839203273372
	.quad	0x3fdaa1372ae7ee88              # double 0.41608981313741156
	.quad	0x3fa87b3d6f95a050              # double 0.04781524645915225
	.quad	0x3fe0be1c9312ff44              # double 0.52320698476248895
	.quad	0x3fd2cc5ca10385a6              # double 0.29372325634002505
	.quad	0x3fe63e5a187477cc              # double 0.69511132027013778
	.quad	0x3fdc2a070e1ec37e              # double 0.44006515864298723
	.quad	0x3fa0339683b3f330              # double 0.031643584801690827
	.quad	0x3feb42fa78bb0c53              # double 0.85192607479292304
	.quad	0x3fe9e6cebaaf7e7f              # double 0.80942474805847542
	.quad	0x3feef93ce43f70e9              # double 0.96792454318668064
	.quad	0x3fe9e2a48bca0022              # double 0.80891635229636827
	.quad	0x3fc0a912cb2d286c              # double 0.13015971108171998
	.quad	0x3fedba532e46ecbe              # double 0.92899474180685337
	.quad	0x3fd973c0610fd010              # double 0.39768990973175367
	.quad	0x3fe10591c2c6c06e              # double 0.53192985574970719
	.quad	0x3fe7020384bbaf17              # double 0.71899581837121473
	.quad	0x3fda08e62402eeea              # double 0.40679315106147718
	.quad	0x3fe91266b3d9e6a0              # double 0.78349623801405599
	.quad	0x3fd1225037760a4c              # double 0.26771932045099756
	.quad	0x3f92061444356480              # double 0.017601315177078636
	.quad	0x3fce5a2866040d10              # double 0.23712639790765211
	.quad	0x3fe4b9e675f8927f              # double 0.64769290009697034
	.quad	0x3fe1cb9e1c0fa4ff              # double 0.55610566597638911
	.quad	0x3fb8b53a0760f218              # double 0.096515299607695559
	.quad	0x3fcecbaa1643aedc              # double 0.24059034430626169
	.quad	0x3febeced809112e5              # double 0.87267184363062411
	.quad	0x3fd385fa934aab2a              # double 0.30505241760208668
	.quad	0x3fe94f8ced8154db              # double 0.79096075427755907
	.quad	0x3febc585d92bf3ab              # double 0.86786167541833004
	.quad	0x3fe90c3dc3e4a954              # double 0.78274429569618542
	.quad	0x3fec332f8614cc9e              # double 0.88124824702972027
	.quad	0x3fe8c2d35294bf6a              # double 0.77378240708456514
	.quad	0x3fdec062dd7706c8              # double 0.48049232127605679
	.quad	0x3fe25d0f965a19f6              # double 0.57385997167221947
	.quad	0x3fdf79cd36e6f12a              # double 0.49180918084654712
	.quad	0x3fe70c9ffa5d85ed              # double 0.72029112719991206
	.quad	0x3fe56cc6c41b04ef              # double 0.66952837278236454
	.quad	0x3fed53cefa692a67              # double 0.91648053081855785
	.quad	0x3fe846d391d7f98d              # double 0.75864580617035104
	.quad	0x3fef5296cd13118e              # double 0.97883167317972819
	.quad	0x3fe945fd6a83a9a6              # double 0.78979368976188336
	.quad	0x3feac1f62c33fff5              # double 0.83617695458815311
	.quad	0x3fe07ce78ab4a8cf              # double 0.51524712649304572
	.quad	0x3fefa6edfb8fe352              # double 0.98912715085234937
	.quad	0x3fe2e88efb612ab2              # double 0.59088849160737866
	.quad	0x3fd17112b3b19784              # double 0.2725264315434901
	.quad	0x3fc9f9d7ce46d958              # double 0.20293710300547718
	.quad	0x3fc0490624f58774              # double 0.1272285156692835
	.quad	0x3fdc643292db2592              # double 0.44361557332430224
	.quad	0x3fec14eccfe9bbb2              # double 0.87755432708751457
	.quad	0x3fd53b6bc5231772              # double 0.3317517686049235
	.quad	0x3fe7f74b185c4f93              # double 0.74893717534949855
	.quad	0x3fa272eee4f00680              # double 0.036033120581135059
	.quad	0x3fe08f0aaad840bf              # double 0.51746114128220444
	.quad	0x3fedc4fe877de994              # double 0.93029715026141213
	.quad	0x3fe8ea912c643501              # double 0.77863367719842824
	.quad	0x3fd6f1398171dcce              # double 0.35847318307010034
	.quad	0x3fe8304ce1aba5f7              # double 0.75589603496808777
	.quad	0x3f89a7c500d130c0              # double 0.01252702625983948
	.quad	0x3fea56937f8a5ab9              # double 0.82306837949985046
	.quad	0x3fec5d180179e9f3              # double 0.88636398590398213
	.quad	0x3fe5aac53602e35f              # double 0.67709599064901826
	.quad	0x3fec1cc5b502759a              # double 0.87851224282683238
	.quad	0x3fd56b1e689ae94a              # double 0.33466301169723478
	.quad	0x3f90eba662e016e0              # double 0.016523933205482844
	.quad	0x3fe07943cfdb464d              # double 0.51480284306507829
	.quad	0x3feee51c0d210643              # double 0.96546747745760119
	.quad	0x3fe876b64a71cf70              # double 0.76449121990161295
	.quad	0x3fee36724fe4f8d4              # double 0.9441463051259924
	.quad	0x3fed57f7a6000997              # double 0.9169882051649435
	.quad	0x3fab66a7679df3e0              # double 0.053517562292632936
	.quad	0x3fdbdcca1f4dee6c              # double 0.43535092408249088
	.quad	0x3fee52f8293f7f9a              # double 0.94762809807069748
	.quad	0x3fe73b81c3698d44              # double 0.72601402441470286
	.quad	0x3fef43e8f4ba3317              # double 0.97703979299839971
	.quad	0x3fe44bfadbcd7b87              # double 0.63427489214142063
	.quad	0x3fe95fd14072460f              # double 0.79294645869430436
	.quad	0x3fe5858b6157345e              # double 0.67255181323856639
	.quad	0x3fc4f0667c2b1430              # double 0.16358643591789379
	.quad	0x3fe5f88f88a0a85c              # double 0.68659187970230162
	.quad	0x3fb49c1caa0c9858              # double 0.080507079616468302
	.quad	0x3fe4ec1a0c64ce9f              # double 0.65382101460132336
	.quad	0x3feb869b81fc5573              # double 0.86018157375171567
	.quad	0x3fe941a74d8df775              # double 0.78926434657453959
	.quad	0x3fd06af24620bfd8              # double 0.25652748917036439
	.quad	0x3fd75fdec7ebd94e              # double 0.365226454959516
	.quad	0x3fd748eb2245cd8e              # double 0.36382559153499805
	.quad	0x3fe24acaf9b943f6              # double 0.57162998937758291
	.quad	0x3fee472d7386e25b              # double 0.94618866504522303
	.quad	0x3fcd4ebd58ae9e94              # double 0.2289654429452993
	.quad	0x3fd5363076c1e730              # double 0.33143245313077596
	.quad	0x3fd365f236b367fe              # double 0.30309729902148763
	.quad	0x3f8bb0ccdd63f040              # double 0.013520813471124993
	.quad	0x3fa23275d826c9c0              # double 0.035541231761630154
	.quad	0x3fd5c22b63984364              # double 0.33997616506626671
	.quad	0x3fe4ade36463a270              # double 0.64622659308686359
	.quad	0x3feaadc6cc8747b5              # double 0.83371295878372698
	.quad	0x3feca2c2a215a86e              # double 0.89486819893978775
	.quad	0x3fd064bbf1a8defe              # double 0.25614832496238182
	.quad	0x3fd15a221c0e8848              # double 0.27112629642408992
	.quad	0x3fd64c9c58950440              # double 0.34842594767184565
	.quad	0x3fdb56490751853a              # double 0.42714143480960198
	.quad	0x3fef431414aef898              # double 0.97693828620664913
	.quad	0x3fe365ff1d0e5f76              # double 0.60620074915912769
	.quad	0x3fe1e17edf6ce816              # double 0.55877631795670157
	.quad	0x3fe2991a2fd3cdc9              # double 0.58118924466401112
	.quad	0x3fe6f33e2e251a52              # double 0.71719273579294396
	.quad	0x3fe95e7bd7866edb              # double 0.79278366179229509
	.quad	0x3fdd94e1bad5c13a              # double 0.46221202130893213
	.quad	0x3fb6cab8036c4ba8              # double 0.089030743442249816
	.quad	0x3fede69fabdee57c              # double 0.93440230911725974
	.quad	0x3fdfb880daa7c1d8              # double 0.49563618996674341
	.quad	0x3f9e5c983cd20560              # double 0.029650095665151865
	.quad	0x3fb0c442a1ada288              # double 0.065494694206458814
	.quad	0x3fe7bfb4ccf06bf6              # double 0.74215164210488527
	.quad	0x3fa0264a187695e0              # double 0.031542125211938332
	.quad	0x3feb0313ebfefa04              # double 0.84412571042031503
	.quad	0x3fc6e7b3fffcb3c8              # double 0.17894601821299561
	.quad	0x3fedbc1a562ff90b              # double 0.92921177705264435
	.quad	0x3fc70b54b4e5cc70              # double 0.18003329117673017
	.quad	0x3fe8d682adad4336              # double 0.77618535920382814
	.quad	0x3fd44d3a54afdffa              # double 0.31721361417976335
	.quad	0x3fd2ea7d0d9efef8              # double 0.29556204157050514
	.quad	0x3fef450a135affd3              # double 0.97717765598644701
	.quad	0x3fe6c3ecf8bf8e27              # double 0.71141670783658106
	.quad	0x3fd5d44c911779b2              # double 0.34108270806418794
	.quad	0x3fe33b5f99873aab              # double 0.60099773393615885
	.quad	0x3fd9e84b52f4617a              # double 0.40480311490093579
	.quad	0x3fecf74e17123421              # double 0.90518860345912711
	.quad	0x3fe9f5acea924468              # double 0.81123967947690989
	.quad	0x3fd382a229141158              # double 0.30484823237954606
	.quad	0x3fe597cdb34e710c              # double 0.67478070278915103
	.quad	0x3fd26b11a2593e16              # double 0.28778496603351422
	.quad	0x3fd88adba7102980              # double 0.38347522082099061
	.quad	0x3fdf878bff1f3be0              # double 0.49264812387712986
	.quad	0x3fea0b4f65229d6e              # double 0.8138806319520151
	.quad	0x3fca225326b49ba8              # double 0.20417251005093573
	.quad	0x3feb75cb729e4a02              # double 0.85812923799886698
	.quad	0x3fdd2d01d3f92170              # double 0.45587201786522424
	.quad	0x3fd0accace868390              # double 0.26054639976978766
	.quad	0x3fcb7ed6171e32f8              # double 0.21480823639685531
	.quad	0x3fb7d784d71d7cd8              # double 0.093132307546955118
	.quad	0x3fb1ab98ccb633b8              # double 0.069024610498856442
	.quad	0x3fe04f93e76d63f1              # double 0.50971408081670522
	.quad	0x3fd019ca8c42f74e              # double 0.25157417008800997
	.quad	0x3fe130efb2f7bcad              # double 0.53722367243417113
	.quad	0x3fecf53217ded033              # double 0.90493111288242856
	.quad	0x3fdde7843534ca72              # double 0.46725564189833968
	.quad	0x3fe2be452d1289f4              # double 0.58572634509283583
	.quad	0x3fd7ff61e70b821c              # double 0.37496230662330432
	.quad	0x3fefe3149a346b69              # double 0.99646978490941962
	.quad	0x3fa9eb7ad3ffa8a0              # double 0.050624693278068067
	.quad	0x3fee89a01fa3cae3              # double 0.9542999856915596
	.quad	0x3fc95a634de648f4              # double 0.19807092002572058
	.quad	0x3fec6081b9cd5a02              # double 0.8867806080768903
	.quad	0x3faba5cf1d7f7f30              # double 0.05399939761241368
	.quad	0x3fede6931b740377              # double 0.93439631807278445
	.quad	0x3fe05902b9191472              # double 0.51086555625864905
	.quad	0x3fda1cb7854f8872              # double 0.40800273913021734
	.quad	0x3fd829519ad15afa              # double 0.37752189749646414
	.quad	0x3fdfce820a982eb6              # double 0.49697924646964553
	.quad	0x3febef2fe6c9594c              # double 0.87294764590732532
	.quad	0x3fe0809e06296e4e              # double 0.5157003517483163
	.quad	0x3fe09aa23fe07dcd              # double 0.51887619472466329
	.quad	0x3feb4d6ef13ff82a              # double 0.85320231551282188
	.quad	0x3fe5d5f6489fe686              # double 0.68236841377729784
	.quad	0x3fe6d0709303d02f              # double 0.71294430459830049
	.quad	0x3fe89f6212773983              # double 0.76945594412409013
	.quad	0x3fea580aa9e10509              # double 0.82324727229584582
	.quad	0x3fe566c94a779803              # double 0.66879715484969926
	.quad	0x3fd7e021b5f6fab2              # double 0.37305491228100174
	.quad	0x3fd90d82b8657c0c              # double 0.3914496231790856
	.quad	0x3fe9481a5a8e99b7              # double 0.79005162894173153
	.quad	0x3fcd639b24c1de6c              # double 0.22960223479070707
	.quad	0x3fea8ed4a155a770              # double 0.82993537436162335
	.quad	0x3fea10c167d0d87a              # double 0.81454534794353539
	.quad	0x3fd0f4d5f37d896c              # double 0.2649435880504345
	.quad	0x3fd7921244041b6e              # double 0.36829048769180062
	.quad	0x3fd7c68543617b22              # double 0.37149173336176677
	.quad	0x3fec749f75a12fde              # double 0.8892361924604264
	.quad	0x3fefdc92f5e54dc6              # double 0.99567554499156397
	.quad	0x3fe8bf5b4290f52f              # double 0.77335894585818277
	.quad	0x3fd349321feac8e0              # double 0.30134251706034654
	.quad	0x3feb0915129e1d5f              # double 0.84485868107087103
	.quad	0x3fe2135a275abb13              # double 0.56486232458505226
	.quad	0x3fe345dd7583ebec              # double 0.6022784514638011
	.quad	0x3fd1ee813c48f482              # double 0.28018217932896772
	.quad	0x3fe036a4f3091b34              # double 0.50667045085797335
	.quad	0x3fd7112c7b93c63a              # double 0.360423203164007
	.quad	0x3fe7090a2237fa4a              # double 0.71985346492130842
	.quad	0x3fc872e1777eee24              # double 0.19100588164097687
	.quad	0x3f77f8dd2e3be700              # double 0.0058525695674178646
	.quad	0x3fe04788438231bb              # double 0.50873196778552854
	.quad	0x3fe08df36af5ae92              # double 0.51732798471990038
	.quad	0x3fe7791a687874f8              # double 0.73353310017014817
	.quad	0x3fcf44904e20bca8              # double 0.24427989783132387
	.quad	0x3fec3aa59ad015dd              # double 0.88215904461747707
	.quad	0x3fcd67e008a9f87c              # double 0.22973251746219947
	.quad	0x3fd377c65864c5aa              # double 0.30418547279540553
	.quad	0x3fdc866e67adbc92              # double 0.44570503353947644
	.quad	0x3fe6dbbc987e74fc              # double 0.71432332786540043
	.quad	0x3fdd29bd51213eb0              # double 0.45567257807577288
	.quad	0x3fda471cb5c42c6e              # double 0.41059034109702608
	.quad	0x3fd4a6216c64e3c8              # double 0.32263980470048326
	.quad	0x3fd509d4cf177b76              # double 0.32872505401422047
	.quad	0x3fe239ed0aa1faba              # double 0.56957103802400089
	.quad	0x3fc78fb1c6cf9ae0              # double 0.18407270629469163
	.quad	0x3fdbb699e467efa8              # double 0.43302008919976709
	.quad	0x3fee2e96dd218f65              # double 0.94318717183749057
	.quad	0x3fb33cbac0710340              # double 0.075145408613946252
	.quad	0x3fcef9aaacf03e38              # double 0.2419942230630896
	.quad	0x3fd46e0344205bf0              # double 0.31921464589089421
	.quad	0x3fa641e3121bb410              # double 0.043471427879787083
	.quad	0x3f86fb479fcd8f40              # double 0.011221465648936779
	.quad	0x3fe1466760e3908d              # double 0.53984421657198001
	.quad	0x3fe3ccdd7c5cc403              # double 0.61875795640492048
	.quad	0x3fea84904af8a193              # double 0.828682085445552
	.quad	0x3fcc8b4976f0f170              # double 0.22300070102381708
	.quad	0x3fac5e50eaf388f0              # double 0.055407074623660679
	.quad	0x3fd49be40c603f6e              # double 0.32201482018080341
	.quad	0x3feba5c5de566137              # double 0.86398595261838451
	.quad	0x3fe3409242d6b831              # double 0.60163224272196747
	.quad	0x3fd938414edd2f84              # double 0.39405853940547098
	.quad	0x3fe16301b9b2a5b8              # double 0.54333578366384128
	.quad	0x3fa4e9b73882aa60              # double 0.040845609329456023
	.quad	0x3fda50c62143ff10              # double 0.41118005035967631
	.quad	0x3fdee7c1223b5132              # double 0.48289516776027874
	.quad	0x3fde9e083f7c8afc              # double 0.47839552116253947
	.quad	0x3fe34b8c9f669761              # double 0.60297232754667729
	.quad	0x3fe9265b1ca049fb              # double 0.78593211737671653
	.quad	0x3fe3d12339d50d9a              # double 0.61927949233397617
	.quad	0x3fd8d9f397426ffc              # double 0.38830270549237844
	.quad	0x3fe63e91dbe17687              # double 0.69513791032268635
	.quad	0x3fb7cba974b2ac08              # double 0.09295138453551044
	.quad	0x3f9947878aeb2800              # double 0.024686925748746091
	.quad	0x3fda4936c47744d8              # double 0.41071862398264392
	.quad	0x3fbea0c96ed502d0              # double 0.11964091258870302
	.quad	0x3fe7aed1540e08f8              # double 0.7400900499053753
	.quad	0x3fc2ad0bd5cf078c              # double 0.14590595188024869
	.quad	0x3feeca987c95a26e              # double 0.96223091442977959
	.quad	0x3febb84599181fc7              # double 0.86624412442415
	.quad	0x3fd54653d7ff56d0              # double 0.33241745084283725
	.quad	0x3fe75f6417f3656a              # double 0.73039440801509881
	.quad	0x3fe73dd1893268cb              # double 0.72629620357772617
	.quad	0x3fcb07ceb8930d38              # double 0.21117576610968469
	.quad	0x3fe0a70e440bc522              # double 0.52039254465322338
	.quad	0x3fdfeb8054ff01d8              # double 0.49874885845568206
	.quad	0x3fd0b6786664d344              # double 0.26113710402869494
	.quad	0x3febf6cdf0230841              # double 0.87387749578216056
	.quad	0x3fda3a1b126869c0              # double 0.40979649350779468
	.quad	0x3fdcd481b5b4bb6c              # double 0.45047037834858972
	.quad	0x3fc538223f289458              # double 0.16577556690131945
	.quad	0x3fe79c8c0ca1a69e              # double 0.73785974948005495
	.quad	0x3fd1204a247951ac              # double 0.26759580194382226
	.quad	0x3feb068b313b93d1              # double 0.84454879394308524
	.quad	0x3fe99505744e09b5              # double 0.79944107738292891
	.quad	0x3fe17fdf3167b8de              # double 0.54685935639806948
	.quad	0x3fd0743ca7d04c5a              # double 0.25709453952840067
	.quad	0x3fee77da3ccd78c0              # double 0.95213043094170046
	.quad	0x3fe7893add17a1c2              # double 0.73550170118419822
	.quad	0x3fb6ba760a772048              # double 0.088782670550359488
	.quad	0x3fc8cea23b2325bc              # double 0.19380596053660593
	.quad	0x3fe989dc6c327b77              # double 0.79807873852028777
	.quad	0x3fdd4b020670ed10              # double 0.45770311955466614
	.quad	0x3fcc0c9c85893e68              # double 0.21913486976926611
	.quad	0x3fd9d7e90a83c708              # double 0.40380311991531004
	.quad	0x3fea7050955cc04f              # double 0.82621030018163732
	.quad	0x3fee515bc7f9ba58              # double 0.94743145997729083
	.quad	0x3feef3ac2658cf57              # double 0.96724517335540383
	.quad	0x3fd17b05d8a1fa1e              # double 0.27313371806659059
	.quad	0x3fdbef15f7e97bc6              # double 0.43646764001999505
	.quad	0x3fd828f2ef144a18              # double 0.37749932620605042
	.quad	0x3fd1ffe732d61432              # double 0.28124408688046565
	.quad	0x3fdf240523ab5f46              # double 0.48657349093763391
	.quad	0x3fe3628bf752cc44              # double 0.6057796316657762
	.quad	0x3fe01e48c76cbeb0              # double 0.50369681310799841
	.quad	0x3fedd2433b924854              # double 0.93191682467500891
	.quad	0x3fe1f812cc2006a7              # double 0.56153240078147781
	.quad	0x3fdb227ba88bcd34              # double 0.42397967776851719
	.quad	0x3fee64bec565e26e              # double 0.94979799799246023
	.quad	0x3fd07d80c9b3cf74              # double 0.25766009995935879
	.quad	0x3feff578c969a073              # double 0.99871482218169516
	.quad	0x3fef6d2c5c9cc013              # double 0.98207681740132313
	.quad	0x3fd5bd84f7477aac              # double 0.3396923460804071
	.quad	0x3fe45be6df7b9494              # double 0.63621848725292063
	.quad	0x3fb3467283db3020              # double 0.075293690864044027
	.quad	0x3fe10f4d592ad6b9              # double 0.53311793723579293
	.quad	0x3fe6e77694ba90ee              # double 0.71575478600109732
	.quad	0x3fbf43f42b728c90              # double 0.12213064251641215
	.quad	0x3fe09a906a56241c              # double 0.51886769074292571
	.quad	0x3fcb2aa7524658f0              # double 0.21223918454479174
	.quad	0x3f9c84eeb3561da0              # double 0.027850846954178388
	.quad	0x3fdbf3f5fc6bed3e              # double 0.43676519060655383
	.quad	0x3fe9e12bbc6e5426              # double 0.80873667529033777
	.quad	0x3fe0b3d0e0e9b7c7              # double 0.52195018699944107
	.quad	0x3fbd202816934be8              # double 0.11377192069203057
	.quad	0x3feb48b1ef69d035              # double 0.85262390861908577
	.quad	0x3fddafef985445f0              # double 0.46386327625177071
	.quad	0x3fdda5c8b7d5ee98              # double 0.46324365570738157
	.quad	0x3fe1ba44ba740c89              # double 0.55398785034812292
	.quad	0x3fe91d73676420c3              # double 0.78484506791667064
	.quad	0x3fca28abb185d674              # double 0.20436617057901041
	.quad	0x3fd7a82ccf0a5926              # double 0.36963958948890008
	.quad	0x3fe5a2d324badc6e              # double 0.67612607168019934
	.quad	0x3fe891cd7a152739              # double 0.76779817432654973
	.quad	0x3fe18476fe9cc785              # double 0.54742002228725595
	.quad	0x3fb942b7e00d04b0              # double 0.098674289894023159
	.quad	0x3fea2562797d1da8              # double 0.81706355789440455
	.quad	0x3fe9d88eb556d7bf              # double 0.80768523614710108
	.quad	0x3fa718844d4fb850              # double 0.045108923375537402
	.quad	0x3fe7b4c4b77cf444              # double 0.74081645810623131
	.quad	0x3fe975a32c5dae61              # double 0.79561003365729388
	.quad	0x3fbe01872f53dd88              # double 0.11721081643542253
	.quad	0x3fe5c3f853d6886f              # double 0.68017212271321437
	.quad	0x3fe33f8353eea20a              # double 0.60150305169105533
	.quad	0x3feea3b48fb8e882              # double 0.95748355932961737
	.quad	0x3fd81cd6576e2d5a              # double 0.37676008737681388
	.quad	0x3fd2dbc8996a2ee8              # double 0.29466452581321656
	.quad	0x3fd20ebefc5b8e4a              # double 0.28215002674389622
	.quad	0x3fe78ad0b08a6edb              # double 0.73569521408668537
	.quad	0x3f64605acba96400              # double 0.0024873517370846976
	.quad	0x3fbdf3754b633448              # double 0.11699612703815021
	.quad	0x3fdf88f3b0ffe87e              # double 0.49273388180848332
	.quad	0x3fd383d0356327a6              # double 0.30492024625402292
	.quad	0x3fdedb0cdcabbac0              # double 0.48211976575741389
	.quad	0x3fddfcaaf3f41b7c              # double 0.4685466177328903
	.quad	0x3fc3ebc0d6951970              # double 0.1556321189656944
	.quad	0x3fef39330b459465              # double 0.9757323475029237
	.quad	0x3feccec9cfc9273f              # double 0.90024271567492764
	.quad	0x3fee5acd5f9b5a29              # double 0.94858425782405675
	.quad	0x3fcd4310081f486c              # double 0.22860908886520137
	.quad	0x3fcc05e3286d9a98              # double 0.21892966722517282
	.quad	0x3fd187f3605378f4              # double 0.27392277151910993
	.quad	0x3fcc98ca57520150              # double 0.22341279281318771
	.quad	0x3fb0a94e93a12400              # double 0.065083418886516142
	.quad	0x3fed3adfb71e93d0              # double 0.91343675389782142
	.quad	0x3fe2f4cfb3615780              # double 0.59238419566348455
	.quad	0x3fe55647dc2ef55e              # double 0.66678231243683306
	.quad	0x3fcdfb326cdda964              # double 0.23422842326847182
	.quad	0x3fd97c22d82a84b2              # double 0.39820166692704639
	.quad	0x3fe4c4ce418ff4f6              # double 0.64902413182394869
	.quad	0x3fbe44dea949c2c8              # double 0.11823836930285403
	.quad	0x3fe0b20b0e0f0ffc              # double 0.52173378702036599
	.quad	0x3fbb50d61ae93130              # double 0.10670221478466568
	.quad	0x3fef67e30e521cae              # double 0.98143151089688785
	.quad	0x3fe120c3736c8af3              # double 0.53524944823979437
	.quad	0x3fd33aaf4b9fed64              # double 0.30045683274484802
	.quad	0x3fce2b7445a09e14              # double 0.23570111655975323
	.quad	0x3fcdbd919e1a9a74              # double 0.23234768123548444
	.quad	0x3fd22957624e32fa              # double 0.28377327537673092
	.quad	0x3fcd25e751c66d60              # double 0.22771922581601256
	.quad	0x3fef10220648014c              # double 0.9707193491631556
	.quad	0x3fd13ab2e41cb008              # double 0.26920769001549205
	.quad	0x3fbb2b873c8a0aa0              # double 0.10613293865211881
	.quad	0x3fe79442634ef0cb              # double 0.73684806247867962
	.quad	0x3fee35c9f63b6b57              # double 0.94406602947433782
	.quad	0x3fedb7bc49bdff77              # double 0.92867864992875482
	.quad	0x3fa0c8613751c3d0              # double 0.032778776171546675
	.quad	0x3fe9d0fdad8dea82              # double 0.80676158807121134
	.quad	0x3fe096d059ab7658              # double 0.51840989602687682
	.quad	0x3fd13061ac8e1ddc              # double 0.268577974806673
	.quad	0x3fe1f178a6a2ba8f              # double 0.56072647615458659
	.quad	0x3fd2b57bc5911eea              # double 0.29232687276497293
	.quad	0x3fe05fe95adc40c7              # double 0.51170795198597652
	.quad	0x3fde15140578435e              # double 0.47003651174695971
	.quad	0x3fd651e0b29d9906              # double 0.3487474197667243
	.quad	0x3fe45f6c29b9a1de              # double 0.63664825581968976
	.quad	0x3fb2f8b554b2e0e0              # double 0.074107487848667386
	.quad	0x3fb4113b621f0dc0              # double 0.078387938933750512
	.quad	0x3fde5f110d0e4a12              # double 0.4745524051187725
	.quad	0x3fd66ea6f86dc632              # double 0.35050367603898558
	.quad	0x3fe50926bc7e5269              # double 0.65736710372091267
	.quad	0x3fe046d08c944b25              # double 0.50864436585320461
	.quad	0x3fbf6fb42f967ed8              # double 0.12279821550191217
	.quad	0x3feff0f25d8bba8f              # double 0.99816244383494445
	.quad	0x3fb0b7a4cfe2ede8              # double 0.065302181962514916
	.quad	0x3fe5231ec1ecb844              # double 0.66053712726512304
	.quad	0x3fdc4d92d50630c2              # double 0.44223471453802798
	.quad	0x3fe16d1b57a43efa              # double 0.54456870191094642
	.quad	0x3fddbf940ccb7caa              # double 0.46481801270960921
	.quad	0x3fd1cc19cc64f59c              # double 0.27808232269657096
	.quad	0x3fea1bfce6ebd72d              # double 0.81591649152571721
	.quad	0x3fd4adc5770351d6              # double 0.32310616133079628
	.quad	0x3fd03d3c1c57b8c2              # double 0.25373747604215791
	.quad	0x3fce326322c1df04              # double 0.23591269681104887
	.quad	0x3fcb8852cfef5934              # double 0.21509776261400193
	.quad	0x3feda4a0bc5a2850              # double 0.92634617602858249
	.quad	0x3fe2560165318b3d              # double 0.57299871219979759
	.quad	0x3fe07f5afdd5ced9              # double 0.51554631783661897
	.quad	0x3fefb72389529202              # double 0.99110581227120087
	.quad	0x3fb078299a100648              # double 0.064333534348429144
	.quad	0x3fe7187cd6a9d90b              # double 0.72173921514948469
	.quad	0x3fc2257cd2641034              # double 0.1417690303134137
	.quad	0x3fed6d25f5ac13b3              # double 0.91957376463743967
	.quad	0x3fe8a5b9ee0b5993              # double 0.77023025982889448
	.quad	0x3fd626a482c4e176              # double 0.3461085583726552
	.quad	0x3fd4a5367fe6f4d2              # double 0.32258379450270269
	.quad	0x3fdb0b4a95ec8cca              # double 0.42256416932123086
	.quad	0x3fe9d7b4951c8f6b              # double 0.80758122561790679
	.quad	0x3fe41b1f9cefe562              # double 0.6283109727075209
	.quad	0x3fd66d081a65562e              # double 0.3504047639629303
	.quad	0x3feda188495bb116              # double 0.92596830680625675
	.quad	0x3fd8ac80b8068918              # double 0.38552873584025482
	.quad	0x3fe6780fc739a4a4              # double 0.7021559611431667
	.quad	0x3fe58725689175de              # double 0.67274732993581288
	.quad	0x3fdecff3dbc5927e              # double 0.48144241773687912
	.quad	0x3fd9286d4a4116ca              # double 0.39309246302978507
	.quad	0x3fe839cee063f734              # double 0.75705665422694901
	.quad	0x3fe8bdaa88ade40d              # double 0.77315260596435709
	.quad	0x3fe1c9d5a8b22540              # double 0.5558880133477615
	.quad	0x3fe86d9ce56a8d07              # double 0.76338047798017861
	.quad	0x3fdfd899f516db4e              # double 0.49759530004978536
	.quad	0x3fbc7879f92e3fc8              # double 0.11121332486641144
	.quad	0x3fe2a0a352df778e              # double 0.58210912881962584
	.quad	0x3fe43d5fb1b5860d              # double 0.63249191960147899
	.quad	0x3fcc5f844175ef24              # double 0.22166493603060033
	.quad	0x3fb19da0eb138350              # double 0.068811471358924736
	.quad	0x3fef0abb1775129f              # double 0.9700599153662387
	.quad	0x3fe8a7d634789a47              # double 0.77048788307440297
	.quad	0x3fe8e4c2d07b248e              # double 0.77792492598486418
	.quad	0x3feb8a0ad02d0b1f              # double 0.86060085925450724
	.quad	0x3fd903027dd2507c              # double 0.39080869948634933
	.quad	0x3fb29aa6972a6e90              # double 0.072672283082676481
	.quad	0x3fcce58230fc9c68              # double 0.22575404540950506
	.quad	0x3fe1289ff44bbcb1              # double 0.53620908464463046
	.quad	0x3fd642a765bca142              # double 0.34781823096502162
	.quad	0x3fdb11a75416f0d4              # double 0.42295249187351414
	.quad	0x3fcc782d0e90cd6c              # double 0.22241748057568189
	.quad	0x3fc43192982cefb8              # double 0.15776283674665392
	.quad	0x3fea712450715e59              # double 0.82631126128667198
	.quad	0x3fc25fc633366854              # double 0.14354779720889843
	.quad	0x3feb8d5440e03385              # double 0.86100208922435739
	.quad	0x3fd42f3a737f357c              # double 0.31538258818621734
	.quad	0x3fc6eeac96163fd8              # double 0.17915875748121723
	.quad	0x3fec00660f18ba95              # double 0.87504866550973992
	.quad	0x3fee4fb933fbbde8              # double 0.94723186638833301
	.quad	0x3fec2ee414235e88              # double 0.88072399075731855
	.quad	0x3fd11cec5718bba2              # double 0.26739033227470987
	.quad	0x3fc78003e5f0637c              # double 0.18359421470156778
	.quad	0x3fd1bc9237462f18              # double 0.27713446996561819
	.quad	0x3fe5c0896769acd8              # double 0.67975301931201226
	.quad	0x3fed0cb9c36d0e53              # double 0.90780342263355818
	.quad	0x3fb9e5a11b56f7f8              # double 0.10116011540864622
	.quad	0x3fdb097194b161ec              # double 0.42245139618674332
	.quad	0x3fe6ba6cf85b2dcd              # double 0.71025703913749683
	.quad	0x3fb963d208aac738              # double 0.099179389110557348
	.quad	0x3fec4796dd2c204e              # double 0.88373892972686874
	.quad	0x3fd24588d5d70300              # double 0.28549404986192428
	.quad	0x3fe0e2c6fe21016a              # double 0.52768277773433891
	.quad	0x3fd34403f4cb25da              # double 0.30102633386249311
	.quad	0x3fd4a8e3a9b2e708              # double 0.32280818531181454
	.quad	0x3fe49aaee33b63a7              # double 0.64388222104309001
	.quad	0x3fe563936194a74e              # double 0.66840523775793215
	.quad	0x3fe87f6be8f4a2cc              # double 0.76555438517706297
	.quad	0x3f94b39cf93afb80              # double 0.020216419898811733
	.quad	0x3fc8dcb6181a23d4              # double 0.19423557450161744
	.quad	0x3fdfcebc425fdf2a              # double 0.49699312669644036
	.quad	0x3fe3c546b749691f              # double 0.61783157156176916
	.quad	0x3fcccbd475157474              # double 0.22497039525015661
	.quad	0x3feaf2959f5b4270              # double 0.8421123611861514
	.quad	0x3fe94c7227376090              # double 0.79058177623211812
	.quad	0x3fe400086e7c2f4d              # double 0.62500402049179515
	.quad	0x3fc1263dfe67b4d0              # double 0.13397955820202023
	.quad	0x3fec09548f981cfe              # double 0.87613895459881497
	.quad	0x3fc14556e71b57b8              # double 0.13492857250701973
	.quad	0x3fe07f7d5861b208              # double 0.51556269895587636
	.quad	0x3fc14db9af6c9070              # double 0.13518448892239432
	.quad	0x3fc377fe61b9adb4              # double 0.15209941646331304
	.quad	0x3fe13e9034f967be              # double 0.53888712259799099
	.quad	0x3fd84e764707729e              # double 0.37978894173083144
	.quad	0x3fe4d2ebba94e202              # double 0.65074716989244075
	.quad	0x3fbdbdee0ee60c10              # double 0.11617935050712469
	.quad	0x3fe3d80fdd3fcbf2              # double 0.62012475216613283
	.quad	0x3fd292792baffd72              # double 0.29019002214768996
	.quad	0x3fd435708c568b60              # double 0.31576169686211664
	.quad	0x3fdb0990443928c8              # double 0.42245871221952003
	.quad	0x3fc509d12d2f01a8              # double 0.16436209398490331
	.quad	0x3fdd60b077a321f2              # double 0.45902644809078119
	.quad	0x3fb7d7fd5219c998              # double 0.093139488739132026
	.quad	0x3fd4cda4e3fdb8d6              # double 0.32505152001148241
	.quad	0x3fc0ee93b4f9b928              # double 0.13228079163258966
	.quad	0x3fd1f65052dfc148              # double 0.28065879910629521
	.quad	0x3f877bb50840fcc0              # double 0.011466421427142826
	.quad	0x3fe17aae0ceeff18              # double 0.54622557188119725
	.quad	0x3fea6face8391db7              # double 0.82613225322795969
	.quad	0x3fc304e3d057b394              # double 0.14858672783830384
	.quad	0x3fd785a6cd1b888a              # double 0.36753244428667442
	.quad	0x3fcd04dbf3aea6c4              # double 0.22671079062029353
	.quad	0x3fdaef36aa813b7e              # double 0.42085043574200387
	.quad	0x3fedcfed996ce37a              # double 0.93163185087097067
	.quad	0x3fd01c482c22b5bc              # double 0.25172619161716248
	.quad	0x3fdbdd240751ec9e              # double 0.43537235941739449
	.quad	0x3fe4ab8951d2c1f0              # double 0.64593950253589405
	.quad	0x3fac08284b83a320              # double 0.054749736040156316
	.quad	0x3fef7516f109fde2              # double 0.98304316595016084
	.quad	0x3fca5e3fcd8cdf8c              # double 0.20600125824580251
	.quad	0x3fdfb30d1214705c              # double 0.49530340924844096
	.quad	0x3fedfcbcad07f998              # double 0.93710168643137858
	.quad	0x3fc239d578fa6548              # double 0.14238994986662079
	.quad	0x3fbdc66500cb6a18              # double 0.11630851048850166
	.quad	0x3fe5cddee57102ce              # double 0.68138069927962319
	.quad	0x3fea99e726f5776b              # double 0.83128697976256427
	.quad	0x3fe15b88d5983d34              # double 0.54242364614211747
	.quad	0x3fd1049de716a6a0              # double 0.2659067875598371
	.quad	0x3fea673f85a1686e              # double 0.82510353183466889
	.quad	0x3fc04380a7d7a2dc              # double 0.12706001468111239
	.quad	0x3fb738f663cf5d10              # double 0.090712928168944495
	.quad	0x3fe76e5a0b21f27d              # double 0.73222067045533346
	.quad	0x3f9e7f6576f6d020              # double 0.029782853494637718
	.quad	0x3fe8972e796ceabc              # double 0.76845477786931537
	.quad	0x3fe0eea6460b29cb              # double 0.52913201980964553
	.quad	0x3fc7de83cbda8054              # double 0.18647811368737399
	.quad	0x3fc22c49a8f24be4              # double 0.14197655438746815
	.quad	0x3fd7d0339510c85e              # double 0.37208261067565285
	.quad	0x3febed733081a1e6              # double 0.87273559068586049
	.quad	0x3fe835ac076de218              # double 0.75655175639173233
	.quad	0x3fef04d0c9e6e39e              # double 0.96933783945052077
	.quad	0x3fbf8776b54f1540              # double 0.12316076208579307
	.quad	0x3fe5a33ce5f82c26              # double 0.67617649951842362
	.quad	0x3f90bd88cf286380              # double 0.016348016399294618
	.quad	0x3fdf8ba51fff679e              # double 0.49289825558445866
	.quad	0x3fcfc0005988be30              # double 0.24804691669258849
	.quad	0x3fdaa286ed805130              # double 0.41616986459236482
	.quad	0x3fe4392923ca271d              # double 0.63197762479942166
	.quad	0x3fc83883d0251280              # double 0.18922469771691297
	.quad	0x3fd72e5d9376dc4c              # double 0.36220492745218702
	.quad	0x3fd662db315815f8              # double 0.34978370493658373
	.quad	0x3fe329a550ab5343              # double 0.59883371120177065
	.quad	0x3fc8781e7cf21a60              # double 0.19116574383606899
	.quad	0x3fefec6fc773de2f              # double 0.9976118941839952
	.quad	0x3fe807d1b14bf871              # double 0.75095448139451382
	.quad	0x3fb78c43b3225868              # double 0.091984015687872067
	.quad	0x3fb8808c9a8c8918              # double 0.09571150563400399
	.quad	0x3fe2e3942b1ab4ac              # double 0.59028061312496538
	.quad	0x3fe885fe44d96268              # double 0.76635659644223342
	.quad	0x3fe171a00c3975e2              # double 0.54512026202763431
	.quad	0x3fc55fa8a82969f4              # double 0.16698177538894721
	.quad	0x3fe5b85cc10f4a27              # double 0.67875516612031539
	.quad	0x3fd90b6de25db370              # double 0.39132258516365592
	.quad	0x3fe5b0cf8c42adaa              # double 0.67783334154721797
	.quad	0x3feeadfb32b9874b              # double 0.95873794467136386
	.quad	0x3fd10f8ba909ec00              # double 0.2665738249558558
	.quad	0x3fe1fa030e21c43a              # double 0.56176903495919039
	.quad	0x3feb06a4253b7c7e              # double 0.84456069251963561
	.quad	0x3fece8c47f6531d3              # double 0.90341400987522957
	.quad	0x3feb38231c53f4c4              # double 0.85060267956546242
	.quad	0x3fe9181b227be2c1              # double 0.78419262633459408
	.quad	0x3fead2ef8c7b6aa6              # double 0.83824899137410536
	.quad	0x3fecbd662a206be5              # double 0.89812000491963018
	.quad	0x3fea6a7570e1c403              # double 0.82549545333142793
	.quad	0x3fed82e09612904f              # double 0.92222623168027862
	.quad	0x3f9cd3046f66c500              # double 0.028148717212109098
	.quad	0x3fed779e7df5f32d              # double 0.92085194207866083
	.quad	0x3fd64d8c6735b6dc              # double 0.34848318175396087
	.quad	0x3fc27691e2c22864              # double 0.14424346515835673
	.quad	0x3fe9f4fa0d758980              # double 0.81115439060913275
	.quad	0x3fef8ef3cf4eb274              # double 0.98620024194458588
	.quad	0x3fea20f0386ae9bd              # double 0.81652079600399186
	.quad	0x3fea6b0bb6589d84              # double 0.82556710829241852
	.quad	0x3f96d18415553280              # double 0.022283614923525707
	.quad	0x3fdb8db5801f0e1c              # double 0.43052423011633478
	.quad	0x3fcf38d4fab71354              # double 0.24392187349271899
	.quad	0x3f84b6a83a98dd00              # double 0.010114015854112868
	.quad	0x3fd74b96a7363e80              # double 0.36398855523382423
	.quad	0x3fd248da73dd75a8              # double 0.28569661440800553
	.quad	0x3fce019966a64fc0              # double 0.23442380439939647
	.quad	0x3fafa275a296e570              # double 0.061786342713683662
	.quad	0x3fec7884af4a885b              # double 0.88971170651008025
	.quad	0x3f668aed0c44e500              # double 0.0027517919390019907
	.quad	0x3fe68c8944e11bdc              # double 0.70465529873842625
	.quad	0x3fe50e04f0dc56e9              # double 0.65796134036164944
	.quad	0x3fef419fa59ff0eb              # double 0.97676069592082848
	.quad	0x3fedbc5c5e7870f9              # double 0.9292432637335245
	.quad	0x3f925cfe72d4e780              # double 0.017932868727462914
	.quad	0x3feff2f0ffde7c34              # double 0.99840593313627445
	.quad	0x3fd34058dd6e33bc              # double 0.30080243705816279
	.quad	0x3fe83577bc3397a7              # double 0.75652682073699828
	.quad	0x3fec23c4312e9fec              # double 0.87936601262935942
	.quad	0x3fe30d08e9d5be9f              # double 0.59534116431128214
	.quad	0x3fdc57dc3f6fa17e              # double 0.44286256976058513
	.quad	0x3fed4d9c8741179a              # double 0.91572405258988288
	.quad	0x3feb868a12b9821a              # double 0.86017326028019458
	.quad	0x3fc29f0130d3f9e0              # double 0.14547743686848857
	.quad	0x3feff9b18bc72f1e              # double 0.99923016834643241
	.quad	0x3fe0b0be8ea9016c              # double 0.52157523978534703
	.quad	0x3fdd437ebf28290a              # double 0.4572445742384309
	.quad	0x3fed8dc97916d3c0              # double 0.92355798387745124
	.quad	0x3fe7efb29488434e              # double 0.74800995836458539
	.quad	0x3fdc00d97fc0ad7a              # double 0.4375518558105892
	.quad	0x3fee67f439d13839              # double 0.95018969814714815
	.quad	0x3fd8e6c88638d180              # double 0.3890858946572493
	.quad	0x3feeb36421d0ddb5              # double 0.95939833264031071
	.quad	0x3fd68605c1fd5f66              # double 0.35193008369741674
	.quad	0x3fe1f8276a75daad              # double 0.56154223244705792
	.quad	0x3fefc29ba626f2f6              # double 0.99250585986700801
	.quad	0x3fd49e761e4036f8              # double 0.32217171625312302
	.quad	0x3fbac9a8b8beed30              # double 0.10463957319636985
	.quad	0x3fee11c241cdd23d              # double 0.93966782429067275
	.quad	0x3fcd21c5190635b4              # double 0.22759307596099421
	.quad	0x3fd7880faf31d18e              # double 0.36767952069137599
	.quad	0x3febb444dda05f3a              # double 0.86575549398819551
	.quad	0x3fddc8bc888ed842              # double 0.46537698112240744
	.quad	0x3fd4d9237891d810              # double 0.32575308584580487
	.quad	0x3fdf80f6d58967d6              # double 0.49224634984204607
	.quad	0x3f96f1e457bae520              # double 0.022407119612329329
	.quad	0x3fee84f36284fc12              # double 0.95372933618625866
	.quad	0x3fe17ebcbe74329c              # double 0.54672085950877003
	.quad	0x3fbc1c548e998288              # double 0.10980728608547896
	.quad	0x3fe6143ea0f4aff3              # double 0.68997126995736691
	.quad	0x3fefc22ee78967c0              # double 0.99245400640506176
	.quad	0x3fea53761f49f8c7              # double 0.82268816100238318
	.quad	0x3fe2068d29e3a4b3              # double 0.56329973393908117
	.quad	0x3fcb273eb88b9f0c              # double 0.21213516245847364
	.quad	0x3fe5ee17ec7cee31              # double 0.68531414212288244
	.quad	0x3fdbc3ce71f13590              # double 0.43382607581300991
	.quad	0x3fd403662acffc9c              # double 0.3127074640360179
	.quad	0x3fa5b1c028011a60              # double 0.042371754535044159
	.quad	0x3fa501bdfd137020              # double 0.04102891649537832
	.quad	0x3fef5a1638c2fb4b              # double 0.97974692426928677
	.quad	0x3fb9a427e1930068              # double 0.10016106850798823
	.quad	0x3fe84d3e6e2d0c67              # double 0.7594291831850456
	.quad	0x3fa091f050befe10              # double 0.032363424164483345
	.quad	0x3fc6ea77361db5b4              # double 0.17903032438645783
	.quad	0x3fee6121f268f3f3              # double 0.94935700746247986
	.quad	0x3fd076b7a600ed6c              # double 0.25724593364039694
	.quad	0x3fe392a353550976              # double 0.61165014530005979
	.quad	0x3fe1e1041107e1a4              # double 0.55871775938344515
	.quad	0x3fdcb6d5ec1edafa              # double 0.44865940149922745
	.quad	0x3fdfdd1ca29b482a              # double 0.49787059669063416
	.quad	0x3fe8766b5814cd17              # double 0.76445548251504902
	.quad	0x3fef9a107ecfa3f0              # double 0.98755669372360266
	.quad	0x3f99367b3ad22640              # double 0.024621892418997371
	.quad	0x3fd9d76909cec848              # double 0.40377260167872864
	.quad	0x3fda274a48204e32              # double 0.40864808124135543
	.quad	0x3fd856163f08b67c              # double 0.38025432735125952
	.quad	0x3fe9ed0619fd7903              # double 0.81018357349583459
	.quad	0x3fecfda53d16301d              # double 0.90596258097639615
	.quad	0x3fc74ddcf7c34c48              # double 0.18206369493290908
	.quad	0x3fe11af30717bd6d              # double 0.53453971276569023
	.quad	0x3fdeda96dae2e95e              # double 0.48209163070318606
	.quad	0x3fdd92cb06916e90              # double 0.46208453790107118
	.quad	0x3fe07c05d9c53059              # double 0.51513950856452617
	.quad	0x3f8c3f567dcc8ac0              # double 0.013792682375031062
	.quad	0x3faf7afe0cb4dff0              # double 0.061485232401935153
	.quad	0x3fdea21a729a753a              # double 0.47864400092824477
	.quad	0x3fe24340bb4eecda              # double 0.57070957740452433
	.quad	0x3fee5cb2fb78fe81              # double 0.94881581416844096
	.quad	0x3fd3998cab6dc9cc              # double 0.30624691716289187
	.quad	0x3fb81f576df35af8              # double 0.094228233664903516
	.quad	0x3fc8edc2bc211a3c              # double 0.19475588022233292
	.quad	0x3feb107670d20560              # double 0.84575960192902854
	.quad	0x3fe1500c1fa96cb1              # double 0.5410214060206241
	.quad	0x3fc969355391089c              # double 0.19852320270917267
	.quad	0x3fefa70cf033b2ea              # double 0.98914191164439313
	.quad	0x3fedf23085b54624              # double 0.93581415285934044
	.quad	0x3fbeb74dc59c75f0              # double 0.11998449396602218
	.quad	0x3fb0858ada71f7c0              # double 0.064537695247024907
	.quad	0x3fd69ea0f0d4c254              # double 0.35343192595158723
	.quad	0x3fdcf0afa7e93034              # double 0.4521903171305468
	.quad	0x3fe48c48f6ce4833              # double 0.64212463573699663
	.quad	0x3fc8ca662d5a6b2c              # double 0.19367673124801266
	.quad	0x3fe464022af8abad              # double 0.63720806496472948
	.quad	0x3fc162efc9b8affc              # double 0.13583180761031588
	.quad	0x3feb49085995cacf              # double 0.85266511437506576
	.quad	0x3fe189b42a3faa28              # double 0.54805954219529429
	.quad	0x3fe4be55ffe0df07              # double 0.64823436714411364
	.quad	0x3feadc7c62ea5e51              # double 0.83941478080209653
	.quad	0x3fe4e7d0a3995248              # double 0.65329772904312566
	.quad	0x3fc1ff5fb41eccb0              # double 0.14060589117943811
	.quad	0x3fd56203ecbfdaf2              # double 0.33410738105833027
	.quad	0x3fe987a45b645def              # double 0.79780786371241941
	.quad	0x3fe5fbf1a041b308              # double 0.68700486469387645
	.quad	0x3fdd5171de352db2              # double 0.45809599590276229
	.quad	0x3fe7d5b189d50989              # double 0.74483563347193738
	.quad	0x3fe76429900c7bee              # double 0.7309768498852216
	.quad	0x3fa0c98dcf3afe00              # double 0.032787734553036074
	.quad	0x3fd0e3c4964e9302              # double 0.26390185049449155
	.quad	0x3fd1359884c17a84              # double 0.26889622654372425
	.quad	0x3fef296b445cb865              # double 0.97380603172292679
	.quad	0x3fef270e54f10181              # double 0.9735175761234559
	.quad	0x3fee77e8d15484f1              # double 0.95213738331599818
	.quad	0x3fd20761310bec6e              # double 0.28170041837410664
	.quad	0x3fc9da032cd27864              # double 0.2019657105310585
	.quad	0x3fe0d37e6f0d8219              # double 0.52581712427133021
	.quad	0x3fc990ef2aca5bd4              # double 0.19973554219606504
	.quad	0x3fef6cf2371572ae              # double 0.98204909094382287
	.quad	0x3fbf8c1e13c99a20              # double 0.12323177321523149
	.quad	0x3fb49f466136e200              # double 0.080555342420559839
	.quad	0x3fd2dd285e227978              # double 0.29474839394415353
	.quad	0x3fd5fde47fd57130              # double 0.34362137302175011
	.quad	0x3fec156128aa5dc5              # double 0.87760980551222956
	.quad	0x3fde6952de32141e              # double 0.47517844866553272
	.quad	0x3fc1f0fde8412344              # double 0.14016698685215989
	.quad	0x3fe7688805bbc860              # double 0.73151017303304044
	.quad	0x3fc54074fba2a0dc              # double 0.16602957045439026
	.quad	0x3fb532d46d1e1a20              # double 0.082806851043735197
	.quad	0x3fe5ebc6dd72d4c1              # double 0.6850313496749082
	.quad	0x3faf6c667538a8b0              # double 0.0613739030926167
	.quad	0x3fedc47ed510be07              # double 0.9302362595971666
	.quad	0x3fd3b1df0dc5c5a0              # double 0.30773140282607336
	.quad	0x3fe0946a39aa91f5              # double 0.51811705840060418
	.quad	0x3f9624a5176b6aa0              # double 0.021624164156359371
	.quad	0x3febab9687e2050a              # double 0.86469580211283525
	.quad	0x3fecbcc1e14ad63c              # double 0.89804166796120155
	.quad	0x3fc3ed32c7872f50              # double 0.15567621939259846
	.quad	0x3fd632467ac119ae              # double 0.34681856143688605
	.quad	0x3fe9b9c6c06bbe96              # double 0.80392777998163711
	.quad	0x3fe3f88e62a4c36a              # double 0.62409133211450052
	.quad	0x3feff4aecae6936e              # double 0.99861850384750794
	.quad	0x3fe445bce695f3f5              # double 0.63351292644767787
	.quad	0x3fd4217021d733f6              # double 0.31454089455365819
	.quad	0x3fec50262e7746e1              # double 0.88478383136154204
	.quad	0x3fe77c44c2b1bebd              # double 0.73391950632318237
	.quad	0x3fe6797b3e779ffe              # double 0.70232927513734444
	.quad	0x3fe5951e7e208090              # double 0.67445301660701951
	.quad	0x3fee18372739e4ee              # double 0.94045598660809815
	.quad	0x3fec55af207b0a5d              # double 0.88545948356506765
	.quad	0x3fd7d0d177c4d5a4              # double 0.37212025352649847
	.quad	0x3fe169a4f4170c36              # double 0.54414603875955581
	.quad	0x3fcbfa3cc424709c              # double 0.21857413842451912
	.quad	0x3fe5f2ec4557c041              # double 0.68590367835532373
	.quad	0x3fdb9108e770bf8a              # double 0.43072722055057311
	.quad	0x3fc6f3832b2b0a80              # double 0.17930640800303266
	.quad	0x3fc099f698fd4810              # double 0.12969858617958652
	.quad	0x3fe9efe433411d9c              # double 0.81053361902825171
	.quad	0x3fc43ae7a9a7e410              # double 0.1580476358792855
	.quad	0x3fdb888312d067c0              # double 0.43020703160584262
	.quad	0x3fe2f24830e203fe              # double 0.59207543895183767
	.quad	0x3fcc68b26ceed94c              # double 0.22194509810442253
	.quad	0x3fe1914662c63e59              # double 0.54898375789521048
	.quad	0x3fd9ffc2fc56fdce              # double 0.40623545305785747
	.quad	0x3fd6bfab357ea782              # double 0.35544853424163858
	.quad	0x3fc738111b1cb1c4              # double 0.18139852355797192
	.quad	0x3fb7e785cfa86e00              # double 0.093376506040321772
	.quad	0x3fe632eafe0c9d7f              # double 0.69371556872367524
	.quad	0x3fd4ec64b2ab2e3e              # double 0.32692830513107995
	.quad	0x3fed40ff917e4395              # double 0.91418436447757989
	.quad	0x3fd2145dfb626d14              # double 0.28249311017289469
	.quad	0x3fd6ff64d03749d2              # double 0.35933800061789356
	.quad	0x3fdaf38914d9a870              # double 0.42111422573237345
	.quad	0x3fecad0c01ba44de              # double 0.89612388932632903
	.quad	0x3fca84614078bfe0              # double 0.2071649136355509
	.quad	0x3fe29bf8a778c9cd              # double 0.58153946599332473
	.quad	0x3fead3b0dc202930              # double 0.83834116929327784
	.quad	0x3fe5ad8c8c9487fd              # double 0.67743518311567608
	.quad	0x3fe98ac2349437e5              # double 0.79818830746966951
	.quad	0x3fe75911fe0d11f2              # double 0.72962283725115484
	.quad	0x3fe972c7fe8a1c22              # double 0.79526138033623206
	.quad	0x3fde334662231812              # double 0.47187957366657074
	.quad	0x3fe6b6a196c8ec79              # double 0.70979384851615557
	.quad	0x3fd6c07b38c7d186              # double 0.35549812836622896
	.quad	0x3fd52ba6a9493bc6              # double 0.33078924686281785
	.quad	0x3fd5b948b60bc57c              # double 0.33943383958747808
	.quad	0x3fc526678b40b474              # double 0.16523451137019018
	.quad	0x3fb78556297b1040              # double 0.091878304602745153
	.quad	0x3fe7610101c87ea8              # double 0.73059130047109466
	.quad	0x3fd89201fa6725a8              # double 0.3839116044369697
	.quad	0x3fd735df58074064              # double 0.36266311260715711
	.quad	0x3fe4c9065260417b              # double 0.64953914727270445
	.quad	0x3fbdfc27198cad48              # double 0.11712879537360721
	.quad	0x3fcff72ecc256cfc              # double 0.24973092048717394
	.quad	0x3fc7d56b50e3e4f0              # double 0.18620053720204721
	.quad	0x3fed54f03083b88e              # double 0.91661843753333172
	.quad	0x3fede0db83173937              # double 0.9336984215131342
	.quad	0x3fe6db0b0c5a1ee3              # double 0.71423866665369606
	.quad	0x3fe90ed77598e444              # double 0.78306172340592938
	.quad	0x3fe68f807228f8ab              # double 0.70501730248340289
	.quad	0x3fb765221561a468              # double 0.091386919231483454
	.quad	0x3fad5fe644ca93e0              # double 0.057372280022981448
	.quad	0x3fbccc1a5520b0c0              # double 0.11248936250985064
	.quad	0x3fe395aca5a53559              # double 0.6120208010922098
	.quad	0x3fe3964fe1f58c13              # double 0.61209863789224739
	.quad	0x3fec936e5011949d              # double 0.89299693716442941
	.quad	0x3fe6115f66fdc17a              # double 0.68962068667865073
	.quad	0x3fd02d7e7fb94d32              # double 0.25277674172430686
	.quad	0x3fa1c28a9be8cdd0              # double 0.034687358409793867
	.quad	0x3f8341d1a5894400              # double 0.0094028834002148897
	.quad	0x3fe0bfc230f69d37              # double 0.52340802729751246
	.quad	0x3fef9ca14945b442              # double 0.98786987601273091
	.quad	0x3feace39b2c8076f              # double 0.83767399709925694
	.quad	0x3fe5fbc99a556326              # double 0.68698578017492617
	.quad	0x3fc04ee512260188              # double 0.12740767847209278
	.quad	0x3fd98abbae97fa9c              # double 0.39909259843981615
	.quad	0x3fb9683a32781790              # double 0.09924663288265223
	.quad	0x3fe34ba9b3164d11              # double 0.60298619249297947
	.quad	0x3fc6f6408e481dc4              # double 0.17939001986836278
	.quad	0x3fead7633f64e677              # double 0.83879244214695248
	.quad	0x3fec35dcf2eeeaa3              # double 0.88157508323577749
	.quad	0x3fe9b56557268117              # double 0.80339304944576184
	.quad	0x3fd141d8c54be96e              # double 0.26964396731604878
	.quad	0x3fdbf367500f230e              # double 0.43673117464327127
	.quad	0x3fd08f290a977d3e              # double 0.25873781236983351
	.quad	0x3fec508926d8ec52              # double 0.88483102404951297
	.quad	0x3fe90a3decf433ab              # double 0.78250023155270776
	.quad	0x3f95590b4ec99e20              # double 0.020847489055453861
	.quad	0x3fe17df1d352b009              # double 0.54662410043738519
	.quad	0x3fe6ab395c06f073              # double 0.70840137456936103
	.quad	0x3fd704cc4d83b322              # double 0.35966785020609582
	.quad	0x3fea26cef1fb7f80              # double 0.81723735105695994
	.quad	0x3fe918b5a33782aa              # double 0.78426629904068546
	.quad	0x3fd5af4997bd12aa              # double 0.33882369821757641
	.quad	0x3f9f3ae9cc79e860              # double 0.030498173814045848
	.quad	0x3fdfdde4efb64ac0              # double 0.49791835221655489
	.quad	0x3fdb71aaee232a08              # double 0.42881272559739658
	.quad	0x3fb051f34e69bf58              # double 0.063750464099709858
	.quad	0x3fe1444ddd3a10b5              # double 0.53958790977824
	.quad	0x3fb27454754d4eb8              # double 0.072087553632907198
	.quad	0x3fd672fbd5ae241c              # double 0.35076804988108434
	.quad	0x3fdeef94726a86ea              # double 0.48337279485177354
	.quad	0x3fe1b9dc5177ce9e              # double 0.55393806373327314
	.quad	0x3fd50c691fd8ffbe              # double 0.32888248548624321
	.quad	0x3fd0e32b90a242d4              # double 0.26386536716840436
	.quad	0x3fc10b7597426f08              # double 0.13316221128194905
	.quad	0x3fbb1a0a06c0d3d0              # double 0.10586607613443211
	.quad	0x3feb23fef747ff6b              # double 0.84814403817288786
	.quad	0x3f65559bf72d8500              # double 0.00260429822940067
	.quad	0x3fb5dee1bc9e00c0              # double 0.085432156132813297
	.quad	0x3fe38ecf2c154d66              # double 0.61118277177812952
	.quad	0x3fe3ffbe6e9882a7              # double 0.62496873474818393
	.quad	0x3fdd2d3051b221c8              # double 0.45588310220821571
	.quad	0x3fbf33216e75be80              # double 0.12187394091392356
	.quad	0x3fe9bfa3f95d8ea4              # double 0.80464361862364741
	.quad	0x3fc90272d0666854              # double 0.19538722205908476
	.quad	0x3fd34f43c4ee355a              # double 0.30171293479437156
	.quad	0x3fe185ee82e8e82b              # double 0.54759908264464252
	.quad	0x3fedda8c850ad77f              # double 0.93292833313783763
	.quad	0x3fe847fd1521216a              # double 0.75878767134512981
	.quad	0x3fd222548d467358              # double 0.2833453540459252
	.quad	0x3fed4e188e27493d              # double 0.91578319324825197
	.quad	0x3fec3a55a65e113c              # double 0.88212091916697188
	.quad	0x3fe4a067c38b225c              # double 0.64458072845543368
	.quad	0x3fc7dd688b44ae58              # double 0.18644434738358728
	.quad	0x3f8e2c943da4fcc0              # double 0.014733465319862638
	.quad	0x3fe0a6acf2026367              # double 0.52034613864371415
	.quad	0x3fc8766aa20660c4              # double 0.19111378585217242
	.quad	0x3fe9b2d0385ad716              # double 0.8030778027229839
	.quad	0x3feffee45812c7e1              # double 0.99986474229649158
	.quad	0x3fdb92166972a440              # double 0.43079147622717429
	.quad	0x3fa5814e754fe4a0              # double 0.042002155132601304
	.quad	0x3fe0cc67d62387b2              # double 0.52495185684187207
	.quad	0x3fe013aba4a0110e              # double 0.50240118172999515
	.quad	0x3fea2680cd677ac9              # double 0.81720008962641899
	.quad	0x3fc7bcd889c5c040              # double 0.18545061804934626
	.quad	0x3fdecd5bd22b3cf4              # double 0.4812840988569882
	.quad	0x3fe2125a8d0dc3a2              # double 0.56474044370235199
	.quad	0x3fc0194778319544              # double 0.12577145928222866
	.quad	0x3fe6ef394725248f              # double 0.71670211692357266
	.quad	0x3fedf72ab1dfa50a              # double 0.93642172566356519
	.quad	0x3faaf15f05c81370              # double 0.052622765975718688
	.quad	0x3fe775a03bfe23fe              # double 0.7331086322529925
	.quad	0x3fde6b3bcd6a1924              # double 0.47529501972202781
	.quad	0x3fe2e6bec2203641              # double 0.59066713252259018
	.quad	0x3fdc2aa0ba5f4d5c              # double 0.44010179710786246
	.quad	0x3fe0d2bf20dcb3f4              # double 0.52572590273268682
	.quad	0x3fe4907361f14c4b              # double 0.642633143705447
	.quad	0x3fe1759573d3cb70              # double 0.54560349104427353
	.quad	0x3fd8bc56267ca730              # double 0.38649514921654582
	.quad	0x3fc1d38681db980c              # double 0.1392677434989199
	.quad	0x3fdf71caaa45970a              # double 0.49132029178723313
	.quad	0x3fd302516501e7a2              # double 0.29701647628791694
	.quad	0x3fe755cc526772d5              # double 0.72922340483236303
	.quad	0x3fac2e897c0e7270              # double 0.055042549508674266
	.quad	0x3fed32dba50ff6c6              # double 0.91245825041524919
	.quad	0x3fa7a0b756ac3b70              # double 0.046148042040036752
	.quad	0x3fd9da5a19b0d9ac              # double 0.40395214566106108
	.quad	0x3fde51b97017edf2              # double 0.47373805948856706
	.quad	0x3fdf77acdb0a7b66              # double 0.49167939558713269
	.quad	0x3fe0779eae83009e              # double 0.51460203251192005
	.quad	0x3fe5fbcceb5605e4              # double 0.68698736156528328
	.quad	0x3fbba8fc2a8e3278              # double 0.10804725684119798
	.quad	0x3fe021641bd35a3b              # double 0.5040760558575309
	.quad	0x3fe01a31fe314b3f              # double 0.5031976666162804
	.quad	0x3fe619b90346d7fb              # double 0.69063997879015859
	.quad	0x3f95d1bab05d4ee0              # double 0.021307866110261808
	.quad	0x3fe8d9a35a40416a              # double 0.77656715037487101
	.quad	0x3fcf02879a1d54f0              # double 0.24226470017553181
	.quad	0x3fed95478a02e4b4              # double 0.92447258906681506
	.quad	0x3fe286df4934eac8              # double 0.57896389291939787
	.quad	0x3fec8244f766cbd5              # double 0.8909020263730506
	.quad	0x3fe9d4277638ddde              # double 0.807147723105057
	.quad	0x3fea38b82a7b76ae              # double 0.81942375466652151
	.quad	0x3fe42afd9c19d918              # double 0.63024788368673779
	.quad	0x3fe9ed62551e7c82              # double 0.81022755265065904
	.quad	0x3fec1c5c929c26cb              # double 0.87846211085089843
	.quad	0x3fecb7ffa2ff04c2              # double 0.89746076426686039
	.quad	0x3fd8d306775323ca              # double 0.38787995961007182
	.quad	0x3fe5a8f017d652b9              # double 0.67687229781821323
	.quad	0x3feec4afdea4f643              # double 0.9615096424601649
	.quad	0x3fd720a6080ee9d6              # double 0.36136770998896617
	.quad	0x3fc6fb5389393ab0              # double 0.17954487038010347
	.quad	0x3fed4f6ee986aa5c              # double 0.91594644175104233
	.quad	0x3fee3cf4926635c2              # double 0.94494083970646892
	.quad	0x3fe5a1ddeca665c5              # double 0.67600914211941954
	.quad	0x3fc0cc0c5231df68              # double 0.13122705472391805
	.quad	0x3fde0c1263b9735c              # double 0.46948680628502415
	.quad	0x3fead22e87a07a4c              # double 0.83815695275900159
	.quad	0x3fe02f1c542bfe11              # double 0.5057508129102094
	.quad	0x3fbd9bcad0a13670              # double 0.11565845101832806
	.quad	0x3fe5d6f056fedb52              # double 0.68248764983477828
	.quad	0x3fefa505dcde4855              # double 0.98889439714754223
	.quad	0x3fcbcc67f414991c              # double 0.21717547815314553
	.quad	0x3fe058455f4049f0              # double 0.51077526668296791
	.quad	0x3fb68027b6cabd90              # double 0.087892992140714776
	.quad	0x3fef2eac183998c2              # double 0.97444729548876574
	.quad	0x3fec789daf0ae812              # double 0.88972362697609442
	.quad	0x3fade5e5a4e5cb50              # double 0.058394600276094111
	.quad	0x3fd27cc42bc9b1e4              # double 0.28886513019713633
	.quad	0x3fe41d1ad9b379ec              # double 0.62855284232847231
	.quad	0x3feb4a2d1516f5dd              # double 0.8528047000797262
	.quad	0x3fa89c2a7aa84db0              # double 0.048066451523620102
	.quad	0x3fe50a5b978a7e59              # double 0.65751437757348719
	.quad	0x3fe9fea97b3018e7              # double 0.81233667431004342
	.quad	0x3fa68026b567e900              # double 0.043946466106676851
	.quad	0x3fb7ce1ba63459c0              # double 0.092988708569783363
	.quad	0x3fb0d1130eea4a28              # double 0.06569022287502746
	.quad	0x3fd19d611ea12240              # double 0.2752306746593014
	.quad	0x3fc0f886864f38ec              # double 0.13258439596251692
	.quad	0x3fd08172da424cb0              # double 0.25790091814378524
	.quad	0x3fd29a552f32c0c6              # double 0.29066972359852306
	.quad	0x3fee8df44fec3faf              # double 0.95482841119700435
	.quad	0x3fd8a842b3070362              # double 0.38526980860847548
	.quad	0x3fda9e281ed2bd7c              # double 0.41590312013700959
	.quad	0x3fd90c1411dcd4ea              # double 0.39136220688244683
	.quad	0x3fba7de7b3bef2f8              # double 0.10348365915610802
	.quad	0x3fcba91e65320cc0              # double 0.21609859410464161
	.quad	0x3fed49d93d8a6e68              # double 0.91526472110440427
	.quad	0x3fb3e6de33718688              # double 0.077741515693128815
	.quad	0x3feecd02ab0cfab7              # double 0.96252568634357416
	.quad	0x3fec303759621380              # double 0.88088576753271752
	.quad	0x3fcd59f15939dde8              # double 0.22930733544102044
	.quad	0x3fe6cca8aebb0087              # double 0.71248277785345315
	.quad	0x3fe6da939d1f0572              # double 0.71418171584825374
	.quad	0x3fb9465610ec2f20              # double 0.098729495173924153
	.quad	0x3fe0b45e1f8bd423              # double 0.52201753770225812
	.quad	0x3fe3405ee0a6cc7f              # double 0.60160774113900561
	.quad	0x3fe00af93420de42              # double 0.50133953267408793
	.quad	0x3fe28640f3170cbf              # double 0.57888839224360555
	.quad	0x3fe3eb4e5f9288fa              # double 0.62247389475331194
	.quad	0x3fe8cbd12f2fb5f1              # double 0.77488002029502756
	.quad	0x3fd1db7704f4dce8              # double 0.27902007564575948
	.quad	0x3fd0636c6452c876              # double 0.25606832310871341
	.quad	0x3fe5dc7890594ad7              # double 0.68316295807957317
	.quad	0x3fd30b8993208f32              # double 0.29757918708695563
	.quad	0x3fe02d46c6dbaee3              # double 0.50552691306571906
	.quad	0x3fe066aeb428dbc5              # double 0.51253447711393874
	.quad	0x3fa664fac8806480              # double 0.043739163375172474
	.quad	0x3fb47525baf382f8              # double 0.079912527220141416
	.quad	0x3fe3fc9606bf22a9              # double 0.62458325689029437
	.quad	0x3fe0dc844b96d6d9              # double 0.52691855205076898
	.quad	0x3fdd5ac90eefa836              # double 0.45866610010728281
	.quad	0x3fedba0f65774baa              # double 0.92896241967752258
	.quad	0x3fd05447390cbd2c              # double 0.255143933975847
	.quad	0x3fee0e2c0f434492              # double 0.93922999363907622
	.quad	0x3fece1be5c8ddd66              # double 0.90255659176811487
	.quad	0x3fe92e94a1b00d7b              # double 0.78693610744123477
	.quad	0x3feb7695466b8829              # double 0.85822547677913008
	.quad	0x3fe45d394d4bd084              # double 0.63637986275581726
	.quad	0x3fe40767fc892215              # double 0.62590407679914739
	.quad	0x3fdb1a2175c6c68c              # double 0.42346989156349291
	.quad	0x3fd92a3a4a351012              # double 0.39320237395099966
	.quad	0x3fedc5ecad1ecbfe              # double 0.93041070759352329
	.quad	0x3fe009e358a8ef73              # double 0.50120703998935168
	.quad	0x3fefc7923068ffa0              # double 0.99311170058352971
	.quad	0x3fcf4bc24ad45c94              # double 0.24449947980676667
	.quad	0x3f867846db050d40              # double 0.010971597250892473
	.quad	0x3fbcfe5cf9177e50              # double 0.11325627404539174
	.quad	0x3fe48e8d815d3544              # double 0.64240145937370885
	.quad	0x3fdab0470c60a4de              # double 0.41700912674657598
	.quad	0x3feeb9260892bd3a              # double 0.96010114359334087
	.quad	0x3fb17f1a999d2378              # double 0.068345701697706818
	.quad	0x3fcf3fa31ac69144              # double 0.24412955100445732
	.quad	0x3fe1d7b633cdf182              # double 0.55758199804363096
	.quad	0x3fd4a8793b0f71bc              # double 0.32278280990228914
	.quad	0x3fe126ce24ccbcca              # double 0.53598696887447628
	.quad	0x3fe43e76e27be26d              # double 0.63262504801884989
	.quad	0x3fe1207176c320ea              # double 0.53521035381075177
	.quad	0x3febe8adf17bd4a4              # double 0.8721532551268365
	.quad	0x3fe00d0aa37b5207              # double 0.5015919869425155
	.quad	0x3fef707c44fc3a5e              # double 0.98248113130268755
	.quad	0x3fd8169391f1b36a              # double 0.37637795688970377
	.quad	0x3fe5114c41c52fd6              # double 0.65836155744318137
	.quad	0x3fb78ef6c18c6cc0              # double 0.092025205853519587
	.quad	0x3fe3d514a73b4c98              # double 0.61976082479886241
	.quad	0x3fec5d2024184054              # double 0.88636786508323917
	.quad	0x3fb247d555904108              # double 0.071408589734577643
	.quad	0x3fd9f99fe9c06a5c              # double 0.40586088015849042
	.quad	0x3fe3a242079b33f0              # double 0.61355687604520703
	.quad	0x3fd409c0afbf14f8              # double 0.31309525645003999
	.quad	0x3fe64e0b4fdaa9a1              # double 0.69702687832368693
	.quad	0x3fbeb9225da1a8c8              # double 0.120012424334763
	.quad	0x3fe4ea7ee76c3c0b              # double 0.65362496566547301
	.quad	0x3fa7166a0da119f0              # double 0.045092882312520177
	.quad	0x3fc37be1e32afdf8              # double 0.15221808998283826
	.quad	0x3f9d5c0eb0d59a00              # double 0.028671483557809907
	.quad	0x3fed841b20a63ccb              # double 0.92237621666745306
	.quad	0x3fb010c45dac0040              # double 0.062755844945059813
	.quad	0x3fd7b93f3967bae0              # double 0.37068157773948762
	.quad	0x3fe6cd63e7593a00              # double 0.71257205186140027
	.quad	0x3fd59a292f68a9fe              # double 0.3375342333771697
	.quad	0x3febbf0207659975              # double 0.86706639713956568
	.quad	0x3f95e0536591cb20              # double 0.021363547396002436
	.quad	0x3f925669d8e8cbe0              # double 0.017907766212555631
	.quad	0x3fa17402991e5690              # double 0.034088212195610201
	.quad	0x3fd8c1fcdcb517c4              # double 0.3868400721879619
	.quad	0x3fe9655dc0fcdae6              # double 0.79362380688584433
	.quad	0x3fe1e8829ddec033              # double 0.55963259538658006
	.quad	0x3fed39ff2b62f409              # double 0.91332968210156296
	.quad	0x3fc9afeb91d14174              # double 0.20068115825643995
	.quad	0x3fe76f13e4f886de              # double 0.73230929108487053
	.quad	0x3fb034674f40b4c0              # double 0.063299614762132528
	.quad	0x3fa3df43719282e0              # double 0.038812739957625686
	.quad	0x3fe494a4c2b45c8f              # double 0.64314497020940731
	.quad	0x3fe57a17c025e56a              # double 0.6711539032832381
	.quad	0x3fe7cde8829d0f5e              # double 0.74388528356983463
	.quad	0x3fe9d53b887c9b6f              # double 0.80727936418121071
	.quad	0x3fac3dd5fe8e7180              # double 0.055159270595342313
	.quad	0x3fec52f9b21ae166              # double 0.88512882982381025
	.quad	0x3feaba787cfafa97              # double 0.83526253137809447
	.quad	0x3fc91a4071f74e04              # double 0.19611363949535143
	.quad	0x3feff33549593b78              # double 0.99843849492923109
	.quad	0x3fd0ed46477195f0              # double 0.26448208786891225
	.quad	0x3fefc002aad90a40              # double 0.9921887719031659
	.quad	0x3fe419366e00d30b              # double 0.62807771191600759
	.quad	0x3fdae95967da0ea6              # double 0.42049250737930277
	.quad	0x3fe272d08d18c80d              # double 0.57651546056718106
	.quad	0x3fc070816ab91920              # double 0.12843339644514007
	.quad	0x3fe211d6ed954541              # double 0.56467768099734184
	.quad	0x3fe7ea53a41acbec              # double 0.74735433627790604
	.quad	0x3fd21b7496bcbec6              # double 0.28292574615896304
	.quad	0x3fe0ee98939310de              # double 0.52912548850192898
	.quad	0x3fb13afdbbb6dde8              # double 0.067306383446399942
	.quad	0x3fda09ad88563326              # double 0.40684068979389776
	.quad	0x3fe8e6716d9215ab              # double 0.77813025856510387
	.quad	0x3fe7009bc90f4330              # double 0.71882428426224543
	.quad	0x3fe55e22a9cb7fe3              # double 0.66774113810606328
	.quad	0x3fe40d45bd6d7f99              # double 0.62662016866305514
	.quad	0x3fe60eaf587ab217              # double 0.68929259568318713
	.quad	0x3fb3ea17b714e800              # double 0.077790720174476746
	.quad	0x3fe1346a193344fb              # double 0.53764824792793264
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
