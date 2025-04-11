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
	.quad	30                              # 0x1e
	.quad	30                              # 0x1e
	.quad	30                              # 0x1e
	.quad	61                              # 0x3d
	.quad	61                              # 0x3d
	.quad	61                              # 0x3d
	.quad	91                              # 0x5b
	.quad	91                              # 0x5b
	.quad	91                              # 0x5b
	.quad	119                             # 0x77
	.quad	119                             # 0x77
	.quad	119                             # 0x77
	.quad	152                             # 0x98
	.quad	152                             # 0x98
	.quad	152                             # 0x98
	.quad	182                             # 0xb6
	.quad	182                             # 0xb6
	.quad	182                             # 0xb6
	.quad	211                             # 0xd3
	.quad	211                             # 0xd3
	.quad	211                             # 0xd3
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	238                             # 0xee
	.quad	267                             # 0x10b
	.quad	267                             # 0x10b
	.quad	267                             # 0x10b
	.quad	297                             # 0x129
	.quad	297                             # 0x129
	.quad	297                             # 0x129
	.quad	328                             # 0x148
	.quad	328                             # 0x148
	.quad	328                             # 0x148
	.quad	359                             # 0x167
	.quad	359                             # 0x167
	.quad	359                             # 0x167
	.quad	386                             # 0x182
	.quad	386                             # 0x182
	.quad	386                             # 0x182
	.quad	415                             # 0x19f
	.quad	415                             # 0x19f
	.quad	415                             # 0x19f
	.quad	448                             # 0x1c0
	.quad	448                             # 0x1c0
	.quad	448                             # 0x1c0
	.quad	476                             # 0x1dc
	.quad	476                             # 0x1dc
	.quad	476                             # 0x1dc
	.quad	508                             # 0x1fc
	.quad	508                             # 0x1fc
	.quad	508                             # 0x1fc
	.quad	536                             # 0x218
	.quad	536                             # 0x218
	.quad	536                             # 0x218
	.quad	566                             # 0x236
	.quad	566                             # 0x236
	.quad	566                             # 0x236
	.quad	595                             # 0x253
	.quad	595                             # 0x253
	.quad	595                             # 0x253
	.quad	624                             # 0x270
	.quad	624                             # 0x270
	.quad	624                             # 0x270
	.quad	654                             # 0x28e
	.quad	654                             # 0x28e
	.quad	654                             # 0x28e
	.quad	680                             # 0x2a8
	.quad	680                             # 0x2a8
	.quad	680                             # 0x2a8
	.quad	711                             # 0x2c7
	.quad	711                             # 0x2c7
	.quad	711                             # 0x2c7
	.quad	742                             # 0x2e6
	.quad	742                             # 0x2e6
	.quad	742                             # 0x2e6
	.quad	770                             # 0x302
	.quad	770                             # 0x302
	.quad	770                             # 0x302
	.quad	796                             # 0x31c
	.quad	796                             # 0x31c
	.quad	796                             # 0x31c
	.quad	826                             # 0x33a
	.quad	826                             # 0x33a
	.quad	826                             # 0x33a
	.quad	855                             # 0x357
	.quad	855                             # 0x357
	.quad	855                             # 0x357
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	885                             # 0x375
	.quad	912                             # 0x390
	.quad	912                             # 0x390
	.quad	912                             # 0x390
	.quad	940                             # 0x3ac
	.quad	940                             # 0x3ac
	.quad	940                             # 0x3ac
	.quad	971                             # 0x3cb
	.quad	971                             # 0x3cb
	.quad	971                             # 0x3cb
	.quad	999                             # 0x3e7
	.size	.L__constant_101xindex, 808

	.type	.L__constant_999xindex,@object  # @__constant_999xindex
	.p2align	6, 0x0
.L__constant_999xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
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
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
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
	.quad	36                              # 0x24
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
	.quad	21                              # 0x15
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
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
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
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
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
	.quad	12                              # 0xc
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
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	69                              # 0x45
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
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	30                              # 0x1e
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
	.quad	12                              # 0xc
	.quad	15                              # 0xf
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
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	12                              # 0xc
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
	.quad	54                              # 0x36
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
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
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
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
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
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
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
	.quad	99                              # 0x63
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
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
	.quad	18                              # 0x12
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
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
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
	.quad	15                              # 0xf
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
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
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
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
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
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
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
	.quad	30                              # 0x1e
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
	.quad	93                              # 0x5d
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
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
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
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	66                              # 0x42
	.quad	69                              # 0x45
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
	.quad	75                              # 0x4b
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
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
	.quad	0x3fe1afadcf241a2c              # double 0.55269518334609335
	.quad	0x3fdb759bdc02a996              # double 0.42905327306166308
	.quad	0x3feb2cb3258ceb04              # double 0.84920651754450249
	.quad	0x3fe4242e538904b1              # double 0.62941662135576426
	.quad	0x3fe8aec58e3df910              # double 0.7713344362416894
	.quad	0x3fe2a31c1a413e84              # double 0.58241086128141761
	.quad	0x3fe12020e5f27aa2              # double 0.53517193709906885
	.quad	0x3fb579e6b8d41178              # double 0.08389131557857421
	.quad	0x3fd0b8c7044ac990              # double 0.26127791804460632
	.quad	0x3fe0c5ccdc396a26              # double 0.52414553654245277
	.quad	0x3feb0aafa75adfd7              # double 0.84505446135062356
	.quad	0x3fe85f8c2ec1ee82              # double 0.76166352398236392
	.quad	0x3fe84ea1bccdaa81              # double 0.75959860683117608
	.quad	0x3fe1a1c7a1a9f0e3              # double 0.5509985120293347
	.quad	0x3fe2eca80c7fdaca              # double 0.59138872567458489
	.quad	0x3fd24e6507668dfc              # double 0.28603482935633884
	.quad	0x3fb41dfb1ac96788              # double 0.07858247188542411
	.quad	0x3fd49728b7b51040              # double 0.32172601642765031
	.quad	0x3fe7f958999767ad              # double 0.74918775556874595
	.quad	0x3fc3c45f76993ba4              # double 0.15443032542176838
	.quad	0x3fd6d616eb69399a              # double 0.35681698788985161
	.quad	0x3fea2ae3678581fb              # double 0.81773538798375911
	.quad	0x3fbc7c0b8c218320              # double 0.11126777812161182
	.quad	0x3fec99d77f6e6ae6              # double 0.8937795151608412
	.quad	0x3fdc2c8f7017a09a              # double 0.44021974512589568
	.quad	0x3fdd47c4cb4ab012              # double 0.45750541546544909
	.quad	0x3fdcf5f9105ed0d8              # double 0.45251299475354534
	.quad	0x3fb4d0970d25c2e0              # double 0.081307831487503091
	.quad	0x3fcb0ce034e8998c              # double 0.21133043845584287
	.quad	0x3fe1cb2148ef0eae              # double 0.55604614491354254
	.quad	0x3f9a58e3f0e061a0              # double 0.025729714943823034
	.quad	0x3fd9ec419f0c2f38              # double 0.40504494220725773
	.quad	0x3fdcacbdecd1fac0              # double 0.44804332854247875
	.quad	0x3fe44b8a180637b5              # double 0.63422112171405465
	.quad	0x3feefd97530338b9              # double 0.96845594609637608
	.quad	0x3fde5e857e9d1dd6              # double 0.47451913227675158
	.quad	0x3fcf1e45f59834f0              # double 0.24311136714860693
	.quad	0x3febc4b5e86e0bd0              # double 0.86776252171000046
	.quad	0x3f8612f1b3b3bec0              # double 0.010778320595334789
	.quad	0x3fe20b128f368e42              # double 0.56385162326154892
	.quad	0x3fe377d240571ffb              # double 0.60837662283392946
	.quad	0x3fe9bf29e598b70e              # double 0.80458540766787379
	.quad	0x3fdc8c08e8e28b70              # double 0.44604704611463486
	.quad	0x3fe5baa9338d6de6              # double 0.67903575962867246
	.quad	0x3feed75a25906bd9              # double 0.96378810250041191
	.quad	0x3fb92a6f32193370              # double 0.098303746920647361
	.quad	0x3fc7d881d0723afc              # double 0.18629477193868371
	.quad	0x3febfcc51ddf095c              # double 0.8746057113096799
	.quad	0x3fe10d04560b019f              # double 0.53283898167869725
	.quad	0x3fe903ff3f5c2dac              # double 0.78173792243017237
	.quad	0x3feeb8855e66d153              # double 0.96002453267878207
	.quad	0x3fd94302398769ee              # double 0.39471488588392745
	.quad	0x3fec0d8a8eb9d994              # double 0.87665298343817932
	.quad	0x3fe998aaa5160c09              # double 0.79988605731375728
	.quad	0x3fe66724e3d94085              # double 0.70009083272636075
	.quad	0x3fc8af160d143760              # double 0.1928432048666151
	.quad	0x3faec81ca2c26b00              # double 0.060120482318970048
	.quad	0x3fdd2b0940a41618              # double 0.45575171768754918
	.quad	0x3fd549f020f8c0fc              # double 0.33263781757251798
	.quad	0x3f6451848d76a500              # double 0.0024802769582562556
	.quad	0x3fee4029c9c86460              # double 0.94533242617320567
	.quad	0x3fe381b04f032038              # double 0.60958114082405412
	.quad	0x3f8794d43e09f7c0              # double 0.011514337676313491
	.quad	0x3fcc6bddaf60ed68              # double 0.22204180777940086
	.quad	0x3fef988091e2bf73              # double 0.98736599438960437
	.quad	0x3fd0f419249b15da              # double 0.26489857268128747
	.quad	0x3feca188d9730cf7              # double 0.89471857519711662
	.quad	0x3fe9bee1f00f104c              # double 0.80455109488003406
	.quad	0x3fce902a1473f028              # double 0.23877454756427707
	.quad	0x3fe1e48fae0ccab8              # double 0.55915054315695212
	.quad	0x3fe170094f27c61f              # double 0.5449263139727839
	.quad	0x3fe4c83f3636797f              # double 0.64944420422015969
	.quad	0x3feb52523c9a0c4d              # double 0.85379897915152869
	.quad	0x3fe9932565c7d197              # double 0.79921216849338605
	.quad	0x3fb67f1f15f5ed20              # double 0.087877219068037693
	.quad	0x3fbd17c94e5c0ef8              # double 0.11364420092655425
	.quad	0x3fd3845217c8d8f4              # double 0.3049512130995844
	.quad	0x3fd74393129be040              # double 0.36349942033075777
	.quad	0x3fd0ce027d585fda              # double 0.2625738357614843
	.quad	0x3fef98e6506fe275              # double 0.98741450987206624
	.quad	0x3fe707a5c1cf4429              # double 0.71968353131717777
	.quad	0x3fe77fe5bcbdb89d              # double 0.73436247695441959
	.quad	0x3f9de8c6feda21a0              # double 0.02920828752988458
	.quad	0x3fe24c92bff96174              # double 0.57184731955480439
	.quad	0x3f91d319deadaea0              # double 0.017406849113668188
	.quad	0x3feae0ae8fcc71c3              # double 0.83992698751131234
	.quad	0x3fe1d5cb5ae20c5d              # double 0.55734794378839647
	.quad	0x3fe66d07b128932b              # double 0.70080933190601991
	.quad	0x3fc96ed0554cbe64              # double 0.19869426884678199
	.quad	0x3fe2709a18e84344              # double 0.57624535431578083
	.quad	0x3fe6d66712a18cb1              # double 0.71367219580533547
	.quad	0x3fc3962cfe37c52c              # double 0.15302050030690262
	.quad	0x3feffb5d22c44443              # double 0.99943405905117577
	.quad	0x3fc5d54659b7a10c              # double 0.17057113056876749
	.quad	0x3fe765362710bdad              # double 0.73110492353401002
	.quad	0x3fd9a67f68d07580              # double 0.40078721271296303
	.quad	0x3fda70715cb76d22              # double 0.41311296514841633
	.quad	0x3fdac425dd78d482              # double 0.41822191837429312
	.quad	0x3fe0960698d1f0de              # double 0.5183136925475329
	.quad	0x3fc67c9475edc908              # double 0.17567687757725303
	.quad	0x3f73bba7c59a1380              # double 0.0048176339711333283
	.quad	0x3fec087d33f361de              # double 0.87603626391051725
	.quad	0x3fe2cd88b5ba35d3              # double 0.58758960240964553
	.quad	0x3fdf423059773aca              # double 0.48841484772576094
	.quad	0x3fe53e6166512162              # double 0.66386480315945229
	.quad	0x3fe0f1493b371701              # double 0.52945386472194411
	.quad	0x3fb5582214a37448              # double 0.083376054800695987
	.quad	0x3fee9da44c94dd90              # double 0.95674338300061557
	.quad	0x3fd2f5cef6ff66c4              # double 0.29625295754304326
	.quad	0x3fe9aadab669c5ad              # double 0.80210624339649927
	.quad	0x3fe017f9d10d2e18              # double 0.50292673902862628
	.quad	0x3fdc719e4763f50a              # double 0.44443470927929296
	.quad	0x3fe4a0d505f4fa25              # double 0.6446328274103662
	.quad	0x3fa2954fba174520              # double 0.036295405832456717
	.quad	0x3feb18d788ef2844              # double 0.84678246254885225
	.quad	0x3fd140ba88002902              # double 0.26957572251616579
	.quad	0x3fdbbce65e18abfa              # double 0.4334045332822708
	.quad	0x3f74287f6ef60f00              # double 0.0049214341992216415
	.quad	0x3fdf91b3714b7850              # double 0.49326788009591827
	.quad	0x3fec30aa8be45a15              # double 0.8809406978860489
	.quad	0x3fe292794445b653              # double 0.58038009008823577
	.quad	0x3fedd7a59793f346              # double 0.93257407765450107
	.quad	0x3fefb54b17711385              # double 0.99088053301294165
	.quad	0x3fe382f328adaa94              # double 0.60973508782383812
	.quad	0x3fe53e856c117b10              # double 0.66388198000990606
	.quad	0x3fd54f9df8b37fa4              # double 0.33298444068167954
	.quad	0x3fe4254aad124227              # double 0.62955220988266525
	.quad	0x3fd54818287180bc              # double 0.33252529096172245
	.quad	0x3fdb71f0aa5c3a6a              # double 0.42882935177559622
	.quad	0x3fe985c86c3fabeb              # double 0.79758092062308827
	.quad	0x3f9e27005040ec00              # double 0.029445652864733773
	.quad	0x3fefc06eea525ae0              # double 0.99224038854557861
	.quad	0x3fed0cd346dc8e5c              # double 0.90781558838029807
	.quad	0x3fe9a67dbb63bc5f              # double 0.80157362556009193
	.quad	0x3fed1cceb692f856              # double 0.90976653727535495
	.quad	0x3fb709f2c0f166f0              # double 0.089995548348635656
	.quad	0x3fc710b3df3a49c4              # double 0.18019722366132218
	.quad	0x3fe7c7d70c3f5f74              # double 0.74314453498935373
	.quad	0x3f8e66d8eb6c7c40              # double 0.014844603237689324
	.quad	0x3fc61405c6da3d44              # double 0.17248604020685765
	.quad	0x3fbfebfb95ef79b0              # double 0.12469456110509358
	.quad	0x3fe86ce750245613              # double 0.76329389240953771
	.quad	0x3feac80371006db0              # double 0.83691570349349398
	.quad	0x3fd75d361d2de704              # double 0.36506417130986812
	.quad	0x3fe26ad633c8e2fa              # double 0.57554159273340066
	.quad	0x3fee9287572cc4aa              # double 0.95538680101721707
	.quad	0x3fd9e04ec29332ba              # double 0.40431565286125315
	.quad	0x3fef5a34b10213a6              # double 0.97976145336052833
	.quad	0x3fd432527425ccb2              # double 0.31557141630691909
	.quad	0x3fe6dd0f0d743f6b              # double 0.71448471668007352
	.quad	0x3fd202049dc70364              # double 0.28137317092846659
	.quad	0x3fe6f21cfbae76be              # double 0.71705483585875363
	.quad	0x3fd4d791add77096              # double 0.32565729119029052
	.quad	0x3fd35ca11bdb9c40              # double 0.30252864571088267
	.quad	0x3fe0cdf8b1e93cf6              # double 0.52514300106295653
	.quad	0x3fe9a8d9b11b1abc              # double 0.80186161604873218
	.quad	0x3fde38c15990acb0              # double 0.47221406694979873
	.quad	0x3fee5d51765644c4              # double 0.94889138329212885
	.quad	0x3fc27f83c428aad0              # double 0.14451644018239174
	.quad	0x3fe7b1f41d401c05              # double 0.74047284806226854
	.quad	0x3fb9d5fc26c2a7e0              # double 0.10092140146539874
	.quad	0x3fdc84d05ce11ddc              # double 0.44560631819009955
	.quad	0x3fe972d217f4d259              # double 0.79526619605037319
	.quad	0x3fe8c326914ecc27              # double 0.77382210140638541
	.quad	0x3fdac4962854301e              # double 0.41824869097104223
	.quad	0x3fdf12a56d85afd2              # double 0.48551307387856213
	.quad	0x3feecf6a37847b45              # double 0.96281920283568267
	.quad	0x3fe1c8e98abeb9ed              # double 0.5557754239906082
	.quad	0x3fd49b0b78426fa4              # double 0.32196318382352218
	.quad	0x3fe9ee899906cf2c              # double 0.81036834609992558
	.quad	0x3fc2cf5f5552b674              # double 0.14695350328604528
	.quad	0x3fc1278ca6bf4b7c              # double 0.13401945249514913
	.quad	0x3fe501505233bfc0              # double 0.65641037039858219
	.quad	0x3fe43ffd1fab56c1              # double 0.63281112847717946
	.quad	0x3fed8a30afb63f43              # double 0.92311891859751716
	.quad	0x3fe712529e701824              # double 0.72098666138549961
	.quad	0x3fcdedf8a59c4584              # double 0.23382480703780228
	.quad	0x3fdf8d28174d60e6              # double 0.49299051547633466
	.quad	0x3fe7f6174b948c8c              # double 0.74879040490886117
	.quad	0x3fd3227fff54437a              # double 0.29898071226585154
	.quad	0x3feddfe09c3a0dfc              # double 0.93357878220598378
	.quad	0x3fed1f1239ea5a59              # double 0.91004287063226308
	.quad	0x3fb9720e89893560              # double 0.099396618440740436
	.quad	0x3fd391622b986c5c              # double 0.30574850327838532
	.quad	0x3fe176b93257157d              # double 0.54574260551514409
	.quad	0x3fd287f9d6cef17c              # double 0.28954931237583259
	.quad	0x3fd1a529378653a4              # double 0.27570562765441253
	.quad	0x3fe9e9b4f97a6960              # double 0.80977867819028048
	.quad	0x3fec4ee9aea89137              # double 0.88463291275960543
	.quad	0x3fead44479edc479              # double 0.83841155828680691
	.quad	0x3fb7f46dee226eb8              # double 0.093573446882539879
	.quad	0x3fe70cb159a9373c              # double 0.72029941093362693
	.quad	0x3fe82d26c2f0c61f              # double 0.75551164697953144
	.quad	0x3fd54712da0a546a              # double 0.33246299069407448
	.quad	0x3fc6c0cd0349a9c0              # double 0.17775881443533414
	.quad	0x3fdf40cdd2cea304              # double 0.48833032213819672
	.quad	0x3febf997a8aea47b              # double 0.87421782441846518
	.quad	0x3fa7fd0de6023fe0              # double 0.04685252602314427
	.quad	0x3feaf83cc017e7ec              # double 0.84280240553129948
	.quad	0x3fac26098753f6b0              # double 0.054977700967339671
	.quad	0x3fc1f99fcb49e3ec              # double 0.14043042589381061
	.quad	0x3fdf92e3896859b2              # double 0.49334038180077322
	.quad	0x3fc6dd31484f5674              # double 0.17862525969274012
	.quad	0x3fea6aa070f1aa0a              # double 0.8255159574449078
	.quad	0x3f9d95b85e219d00              # double 0.028891449685400694
	.quad	0x3fe7f8ba1e510095              # double 0.74911218568014937
	.quad	0x3fd34f0ff16fb8f2              # double 0.30170057847762088
	.quad	0x3fde14377a5cf2d0              # double 0.46998393010634931
	.quad	0x3fb883a1da3ed240              # double 0.095758548529212284
	.quad	0x3fec48012ea88b74              # double 0.88378962624515944
	.quad	0x3fd11f8ea8e77504              # double 0.26755110258621095
	.quad	0x3fc51552e6958dc8              # double 0.16471325167650108
	.quad	0x3fecf7e8eac55bf7              # double 0.90526243070314549
	.quad	0x3fea6a24a4c76b0f              # double 0.82545692618745814
	.quad	0x3fe59129f3e3312e              # double 0.67397019991179774
	.quad	0x3fd63d99b4e73df2              # double 0.34750979105316937
	.quad	0x3fee7534ad2dc92f              # double 0.95180734466547345
	.quad	0x3fc2776a75b82300              # double 0.14426928279888074
	.quad	0x3fe97f4185b98d2c              # double 0.79678417318465255
	.quad	0x3fd53237d68e922c              # double 0.33119007065605177
	.quad	0x3fce811043809bc4              # double 0.23831370636000149
	.quad	0x3fe50c4f009692c1              # double 0.65775251498106269
	.quad	0x3fd8610cebde34e4              # double 0.38092349084838717
	.quad	0x3fe20dbc32c67a09              # double 0.5641766540246077
	.quad	0x3fe265e98373eca6              # double 0.57494044947033696
	.quad	0x3fdb0c7cf471b87a              # double 0.42263721343522997
	.quad	0x3fe0824e6abd37d5              # double 0.51590653274046849
	.quad	0x3fbf4883f3360f78              # double 0.12220024764797965
	.quad	0x3fd1e6dada47d15a              # double 0.27971526447733697
	.quad	0x3fecd5a744ebd25d              # double 0.90108073674361899
	.quad	0x3fbb47c7aabb5088              # double 0.10656402509931884
	.quad	0x3fd92d7b80d119fc              # double 0.39340102748647587
	.quad	0x3fdee797db8a8eac              # double 0.48288532676290674
	.quad	0x3fe94662b9196158              # double 0.78984199669052213
	.quad	0x3fc7ec1b81fb6a94              # double 0.18689292761594756
	.quad	0x3fc3a731e6e3a870              # double 0.15353988431826648
	.quad	0x3fe5ccec12a511e0              # double 0.68126491204798967
	.quad	0x3fbe3c8fd56ee818              # double 0.11811160050174896
	.quad	0x3fd98c4fff7c43a0              # double 0.39918899488207593
	.quad	0x3fa03ad564d14530              # double 0.03169886451417836
	.quad	0x3fddf35c0b3de258              # double 0.46797848794770891
	.quad	0x3fb15be8dab57fc0              # double 0.067808679004428107
	.quad	0x3fe0ec794229b2c0              # double 0.52886641428411707
	.quad	0x3fdd7cc6e61065ec              # double 0.46074078051751033
	.quad	0x3fd591e4b4532e7e              # double 0.33702962503296152
	.quad	0x3fedad608bb3d59e              # double 0.92741420064583102
	.quad	0x3fef6ed88d57e2d8              # double 0.98228099447359351
	.quad	0x3fe32a86223e5a0d              # double 0.59894091308780306
	.quad	0x3fd38da332d6a5ea              # double 0.30551986660665753
	.quad	0x3fa86efb864e5d10              # double 0.047721729416645542
	.quad	0x3fb9e9dd1aefd288              # double 0.10122472674977179
	.quad	0x3fe4894dc7f169f6              # double 0.64176072169658371
	.quad	0x3fd1311f6b33767e              # double 0.26862321347093843
	.quad	0x3fe22d56f09756b8              # double 0.56803462019407558
	.quad	0x3fe183fe79b779fb              # double 0.54736255429071379
	.quad	0x3fe4fb7878fc8a33              # double 0.65569709425137146
	.quad	0x3fa66d07df1e7b70              # double 0.043800588594641421
	.quad	0x3fe73121d0028591              # double 0.72474756838725984
	.quad	0x3fe1513de0867b02              # double 0.54116720059013823
	.quad	0x3fe09333252030d5              # double 0.51796872378465741
	.quad	0x3feefd9ab1dcb60e              # double 0.96845755327893968
	.quad	0x3fe4af5e39eb5734              # double 0.6464072352634731
	.quad	0x3fe867b9b13c8afb              # double 0.76266178719046651
	.quad	0x3fcdcd06c25045b0              # double 0.23281940925566635
	.quad	0x3fc76eb89b5edca0              # double 0.18306644045307952
	.quad	0x3fc6c4a59b67e0fc              # double 0.17787618721172993
	.quad	0x3fe7190fa60903ba              # double 0.72180921963455735
	.quad	0x3fe3ca0d7a23370e              # double 0.61841462950698811
	.quad	0x3fea1d5867b5bc3c              # double 0.81608219390717051
	.quad	0x3fcff822eb8bb804              # double 0.24976002217539428
	.quad	0x3fe867de12d96bba              # double 0.76267913514617836
	.quad	0x3fe215543f462c48              # double 0.56510364874100905
	.quad	0x3fe87e71cb8ac09b              # double 0.76543512110039857
	.quad	0x3feea52d10b02a84              # double 0.95766309031871843
	.quad	0x3fd739fa35293a3a              # double 0.36291365806110643
	.quad	0x3fba7160ff834618              # double 0.1032925247011679
	.quad	0x3fef934efd54f1d1              # double 0.98673200110311587
	.quad	0x3feb62a401f1e568              # double 0.85579109554161636
	.quad	0x3fe847b070f5ccff              # double 0.75875112593203642
	.quad	0x3fea4dfbbd9b80c4              # double 0.82201945336057535
	.quad	0x3fb3a57ef11f13b8              # double 0.076744016521003711
	.quad	0x3fe6f783f8ce4aa4              # double 0.7177142962921903
	.quad	0x3fac605ec60d94f0              # double 0.055422746349714447
	.quad	0x3fe836974e959994              # double 0.75666394566069294
	.quad	0x3fc44c4b1389df94              # double 0.15857828573257093
	.quad	0x3fe01823ec749a8f              # double 0.50294681723319623
	.quad	0x3fa6da2d3b360cf0              # double 0.044633306005403273
	.quad	0x3fd7b8902c033e52              # double 0.37063984201538347
	.quad	0x3f7adae312c0a480              # double 0.0065564031647592502
	.quad	0x3fee3bb64d7167fa              # double 0.94478907704910786
	.quad	0x3f8d411188410780              # double 0.014284264536516877
	.quad	0x3f7e7d6e72a86e00              # double 0.0074438394899760674
	.quad	0x3fcd6e1a2fafd378              # double 0.22992255524118455
	.quad	0x3fbfe306cd049cc0              # double 0.12455790047953297
	.quad	0x3fa219c901424020              # double 0.035352975276623733
	.quad	0x3fef5a235623f147              # double 0.97975317787453597
	.quad	0x3feb26d3a9f651bb              # double 0.84848960109461957
	.quad	0x3fe4393514ffdd39              # double 0.63198331929644447
	.quad	0x3fe09b2aae919a3d              # double 0.51894125075779807
	.quad	0x3fdc8a119cb2b350              # double 0.44592705061477478
	.quad	0x3fd19a6f1439a0a6              # double 0.27505089736087951
	.quad	0x3fe0550edfb1cedd              # double 0.51038306894630703
	.quad	0x3fcca46d55bb469c              # double 0.22376791654692318
	.quad	0x3feca3342dfbe09b              # double 0.89492234212140731
	.quad	0x3fd8466c8d5e812c              # double 0.37929834180433164
	.quad	0x3fe3810a0615f9d0              # double 0.60950185001984813
	.quad	0x3fdf49d46df4f1e2              # double 0.48888121355028435
	.quad	0x3fd09de85c429fc8              # double 0.25963791856565566
	.quad	0x3fd8ddd0308d5802              # double 0.38853840581339238
	.quad	0x3fee0db8cce97d8e              # double 0.93917503377808642
	.quad	0x3faca322bc042bf0              # double 0.055932126475532473
	.quad	0x3fe7d71e50c984d7              # double 0.74500957278010105
	.quad	0x3fcc2190df231200              # double 0.21977435012207991
	.quad	0x3fb41165672d56f0              # double 0.078390443505977236
	.quad	0x3fb40afb24bf20b0              # double 0.078292557212196411
	.quad	0x3fc448baa8544fb8              # double 0.15846951693731426
	.quad	0x3fddfb87100a3f0c              # double 0.46847702566536564
	.quad	0x3f97e4a811705460              # double 0.023333192886714094
	.quad	0x3fd011f9c621ca3a              # double 0.25109714840724318
	.quad	0x3fddc89e3e830b14              # double 0.46536975960423033
	.quad	0x3fe620d1951a5aa1              # double 0.69150618669194241
	.quad	0x3fd60444fd43a4ae              # double 0.3440105889590751
	.quad	0x3fbadaad58b335a8              # double 0.10489924827125796
	.quad	0x3fe69b2203443f63              # double 0.70643711698538103
	.quad	0x3fe953387095fe67              # double 0.79140874852596432
	.quad	0x3fc87a894abaf7e8              # double 0.19123951100294723
	.quad	0x3fae23f9104bc880              # double 0.058868201483975646
	.quad	0x3fd16acd6def4488              # double 0.27214370475582728
	.quad	0x3fef81f25560abf4              # double 0.98461262393300197
	.quad	0x3fd9750a843dd40a              # double 0.39776862062655083
	.quad	0x3fd2cd1aa326615e              # double 0.29376855785951317
	.quad	0x3fd9bbb895ae14c8              # double 0.40208258263767194
	.quad	0x3fb12be12ea5fd80              # double 0.06707579983593881
	.quad	0x3fa78110cd05c970              # double 0.045906567599461989
	.quad	0x3fb941102293a4c8              # double 0.098649033013901932
	.quad	0x3fec9af67a42cecf              # double 0.89391635779471723
	.quad	0x3fea7898fe89e149              # double 0.82722139086312396
	.quad	0x3fb5b3a34ecbf008              # double 0.08477230714555628
	.quad	0x3feede8ee432bdf8              # double 0.96466774530375598
	.quad	0x3fe28ece71c87744              # double 0.57993242476707296
	.quad	0x3fe31f169fed39f9              # double 0.59754496799160883
	.quad	0x3fe1e4c527663756              # double 0.55917604155704725
	.quad	0x3fed7cf871812bc5              # double 0.92150518578397878
	.quad	0x3fab2fe8980e8e20              # double 0.053099888383510541
	.quad	0x3fc4d27ad8a070d8              # double 0.16267333581425336
	.quad	0x3fd961adc22e94d8              # double 0.39658683741647627
	.quad	0x3fd3ae305ca10a56              # double 0.30750664754683521
	.quad	0x3fd46c13601b0490              # double 0.31909641633326036
	.quad	0x3fdc0ca4f77e62ec              # double 0.43827175301843968
	.quad	0x3febb4066809ca40              # double 0.86572571105927665
	.quad	0x3fe976eb341183a6              # double 0.79576645059215845
	.quad	0x3fd07801d0374c86              # double 0.25732465108485092
	.quad	0x3febf61880aacb36              # double 0.87379098062806437
	.quad	0x3fdd5d7b0b2c183e              # double 0.45883060542144338
	.quad	0x3fe8f87242b46afe              # double 0.78032792118332828
	.quad	0x3fe130c63acff643              # double 0.53720389830386528
	.quad	0x3fd372a3c0676a40              # double 0.3038720492310496
	.quad	0x3fe354b934c51b3b              # double 0.60409221941595292
	.quad	0x3fcdc07033716794              # double 0.23243525039543711
	.quad	0x3fcb96caaba32fcc              # double 0.21553929692015428
	.quad	0x3fd087850368db0a              # double 0.25827145894020076
	.quad	0x3fc6789a212adf18              # double 0.17555548305039603
	.quad	0x3fd68ea0198ade14              # double 0.35245516294841761
	.quad	0x3fd95fe0e0901022              # double 0.39647695474582367
	.quad	0x3fb2f3860e3dc790              # double 0.074028376080404579
	.quad	0x3fe742d417849a96              # double 0.7269077739081975
	.quad	0x3fea2cbea06876d6              # double 0.81796199159335958
	.quad	0x3fd12d49aeb06a9e              # double 0.26838914927945179
	.quad	0x3fd3309e7284967a              # double 0.29984246428862316
	.quad	0x3fec1adaa7d6cbcf              # double 0.87827809125007572
	.quad	0x3fd1d90b940f04b6              # double 0.27887238940099779
	.quad	0x3fde47b0fa4bdc32              # double 0.4731256908702931
	.quad	0x3fc8b85f01439c38              # double 0.1931265598461509
	.quad	0x3fe9149edd6ff128              # double 0.78376715898005944
	.quad	0x3fe850335332a525              # double 0.75979009866310732
	.quad	0x3f97f8ccd4dfb900              # double 0.023410034649651301
	.quad	0x3fefdcad717de85b              # double 0.99568817297336964
	.quad	0x3fe987ecd936eb1e              # double 0.79784243035041746
	.quad	0x3fb92260217a1890              # double 0.098180778668480295
	.quad	0x3fb9a851ec9bbd58              # double 0.10022460962840307
	.quad	0x3fcb4c77d1de14d4              # double 0.21327111957012923
	.quad	0x3fb7869b9450e7d8              # double 0.091897700986833697
	.quad	0x3fd6d259337deca0              # double 0.35658865002160134
	.quad	0x3fdce5eb5da280de              # double 0.45153316635152219
	.quad	0x3fd00ba6d597e028              # double 0.2507111631271095
	.quad	0x3fea206cc5309c84              # double 0.81645811570787474
	.quad	0x3fd0d610a8965b3c              # double 0.2630654951439515
	.quad	0x3fd3ebca7ebe089e              # double 0.31126654030971135
	.quad	0x3fd201be0023a95c              # double 0.2813563348160153
	.quad	0x3fe46019a5fd70cd              # double 0.63673098010942797
	.quad	0x3fbaab37374bc0d8              # double 0.10417504405973277
	.quad	0x3fe54932d76cbc07              # double 0.66518537593026472
	.quad	0x3fe815545aec3089              # double 0.75260370024035794
	.quad	0x3fe84f7e431715ba              # double 0.75970376113462312
	.quad	0x3fed05b2d0c4e3aa              # double 0.90694561743940949
	.quad	0x3fede38feb84b82d              # double 0.93402858733839411
	.quad	0x3fe1ea7dfcd6327f              # double 0.55987452871484311
	.quad	0x3fdd9b6aa8d00ed6              # double 0.46261087880723772
	.quad	0x3fd0d0c192d55d2c              # double 0.26274146403507603
	.quad	0x3fec43598ec2887d              # double 0.88322141535560628
	.quad	0x3fd8d4655c58c836              # double 0.38796361940615343
	.quad	0x3fde993e8c1db5e4              # double 0.47810329135140095
	.quad	0x3fd1f236e646c368              # double 0.28040859687739905
	.quad	0x3fe4f7bebf9e3523              # double 0.65524232316389364
	.quad	0x3fd3eee222c4fcb4              # double 0.31145528216797946
	.quad	0x3fc53e06c1f168e4              # double 0.16595539541123749
	.quad	0x3fdee99f8e58a186              # double 0.48300923253057026
	.quad	0x3fce7554d18d34a4              # double 0.23795566780100785
	.quad	0x3fe3f42c4ae02c91              # double 0.62355627655178314
	.quad	0x3fe36d331d7a107a              # double 0.60708003766241281
	.quad	0x3fdbf31ef36a345e              # double 0.43671392222387861
	.quad	0x3fe4b508433adecc              # double 0.64709866648532843
	.quad	0x3fc008235b481ff0              # double 0.12524835545650559
	.quad	0x3fdf015c6de4ab50              # double 0.48445807201158164
	.quad	0x3fcc5d82b2b0e1bc              # double 0.22160371518272182
	.quad	0x3fd7cafef7055fe0              # double 0.37176488993782009
	.quad	0x3fd4da7b322c8b04              # double 0.32583503627590482
	.quad	0x3fad60a627397b80              # double 0.057377998626853888
	.quad	0x3fd7f9ef54c38c5c              # double 0.37462981488915204
	.quad	0x3fecc474d47b3197              # double 0.89898149013747541
	.quad	0x3fd33677926e90ee              # double 0.30019940662374622
	.quad	0x3fe7aaa1d958a18b              # double 0.73957912874634368
	.quad	0x3fcfeffc8d18070c              # double 0.24951130761478912
	.quad	0x3fc480e5e0ef178c              # double 0.16018365367034126
	.quad	0x3fdd2b0f36a46ed6              # double 0.45575313888705915
	.quad	0x3fe945330ec922ba              # double 0.78969719779805492
	.quad	0x3fe8ceee7615d901              # double 0.77526019156974268
	.quad	0x3fe7e5a277af88d2              # double 0.74678157211408291
	.quad	0x3fece31f6b2ba59e              # double 0.90272494251000857
	.quad	0x3fe696b1cd0cb522              # double 0.70589532898671714
	.quad	0x3fd31951e895d204              # double 0.29842040742303788
	.quad	0x3fddb52143a743ca              # double 0.46418029410147865
	.quad	0x3fe11376009cc28f              # double 0.53362560386274704
	.quad	0x3fcd0612853ec228              # double 0.22674781328307003
	.quad	0x3fd8b67de15130a0              # double 0.38613841060283427
	.quad	0x3fe4f18d8406d8fd              # double 0.65448642527078926
	.quad	0x3fd7f55c2a87d0a0              # double 0.37435058740016736
	.quad	0x3feeb389a4703547              # double 0.95941621891839978
	.quad	0x3fd60b7eb1f0e390              # double 0.34445159318016128
	.quad	0x3fd45c2fea130a92              # double 0.31812665804697204
	.quad	0x3f990fc459341660              # double 0.024474208778903495
	.quad	0x3fe23474504a6c44              # double 0.56890311891346146
	.quad	0x3fed1a3a05bfd533              # double 0.90945149538916892
	.quad	0x3fc7a744420be090              # double 0.18479207253381391
	.quad	0x3fdba0f0263de026              # double 0.43169788107434426
	.quad	0x3fe050d0a556aa5c              # double 0.50986511509593013
	.quad	0x3fe8e021e817fb01              # double 0.77735991793437631
	.quad	0x3fe1f20e12554ab1              # double 0.56079772549340678
	.quad	0x3fe640eaed0d1236              # double 0.69542452143702493
	.quad	0x3fa90ccee42cc4e0              # double 0.048925843575838845
	.quad	0x3fdf9864cab45dbc              # double 0.49367637439123846
	.quad	0x3fe60c277201f1e4              # double 0.68898365275486784
	.quad	0x3fd8ce57eebc4816              # double 0.38759420694361901
	.quad	0x3fe4fb65784475d0              # double 0.65568803300600997
	.quad	0x3fe0b13ee6068c00              # double 0.5216364376723277
	.quad	0x3feb3ae7af90fc2c              # double 0.85094055452635108
	.quad	0x3fd96f52280f858e              # double 0.39741948997660692
	.quad	0x3fe60f4908d61e28              # double 0.68936588025912204
	.quad	0x3feb3b8800bf2494              # double 0.85101699968176314
	.quad	0x3fd337a040cd791c              # double 0.30027014091855775
	.quad	0x3feeaa1b8620af52              # double 0.95826507756053503
	.quad	0x3fe1a587d964da06              # double 0.55145637950664717
	.quad	0x3fe30256a7ba361d              # double 0.5940354610372115
	.quad	0x3fbdd809c53a2e38              # double 0.11657773079985467
	.quad	0x3fdd4782b1617e5a              # double 0.45748965570780842
	.quad	0x3fdce25fd55767d4              # double 0.45131679376720268
	.quad	0x3fc5869a004449f4              # double 0.16817021382355757
	.quad	0x3fe90dcff1f3ca47              # double 0.78293607002553578
	.quad	0x3fe39034f0310cad              # double 0.61135336792394457
	.quad	0x3fcbb893b229debc              # double 0.21657034110443429
	.quad	0x3fda2f64be73d45a              # double 0.40914267157433459
	.quad	0x3fa297dcb2f5f110              # double 0.036314865918912642
	.quad	0x3fd36ec2f8e00de2              # double 0.30363535217494875
	.quad	0x3fe3e6fcfd94e561              # double 0.62194680717145101
	.quad	0x3f5d6e9eb191ee00              # double 0.0017963933699139956
	.quad	0x3fc0b6f144bad490              # double 0.13058296066234165
	.quad	0x3fec8a6add984cff              # double 0.89189666061648143
	.quad	0x3fe59544087e6f3b              # double 0.67447091731035103
	.quad	0x3fd1533418463b58              # double 0.27070333834210691
	.quad	0x3fe110ec68d35df3              # double 0.53331585382232871
	.quad	0x3f90d9b1c7ac3720              # double 0.016455438434653691
	.quad	0x3fa2e5ebe502ac50              # double 0.03691041155374164
	.quad	0x3fe3633716920f31              # double 0.60586122902211603
	.quad	0x3fce35eb0b23593c              # double 0.23602045101024227
	.quad	0x3fc2bf9f5c3abdd8              # double 0.14647285464660231
	.quad	0x3fe19b3250aee638              # double 0.55019489057958193
	.quad	0x3fdd2deff0219d60              # double 0.45592878771136292
	.quad	0x3fbb65656cbfc098              # double 0.10701593308454205
	.quad	0x3fd85651486db0f2              # double 0.38026840279668683
	.quad	0x3fe8a10e7359e59e              # double 0.76966021089099335
	.quad	0x3fe4eeb335a5c627              # double 0.6541381881526761
	.quad	0x3fe2d071c8885143              # double 0.58794488111974663
	.quad	0x3fe8ef6d2fdc6649              # double 0.77922686908568395
	.quad	0x3fcf413e1b187de4              # double 0.24417854617148216
	.quad	0x3fd8a8e0883e18fc              # double 0.38530743889749863
	.quad	0x3fe97569e0bad3c5              # double 0.79558271305597172
	.quad	0x3fed4000be2f0b25              # double 0.91406285424486511
	.quad	0x3fe1d3579ff60d0c              # double 0.55704861872109879
	.quad	0x3fec9518b76c5dfb              # double 0.89320026230683369
	.quad	0x3fd0715a22161408              # double 0.25691846207365687
	.quad	0x3fcae284eec76120              # double 0.21003781947252609
	.quad	0x3fb0cb7a715cdf90              # double 0.065604832340680597
	.quad	0x3fb15ffb20fc1ed8              # double 0.067870803406658964
	.quad	0x3f9ad16df1a5df40              # double 0.026189535020846977
	.quad	0x3fe13a424ab12995              # double 0.53836168850220878
	.quad	0x3fc9d7e43c184c68              # double 0.20190098699876846
	.quad	0x3fcd17ff1cdabb40              # double 0.22729481610209668
	.quad	0x3fd1306c4bd8187e              # double 0.26858050734188754
	.quad	0x3fec3caab4f56ca6              # double 0.88240561812871898
	.quad	0x3fe69dddcc81e695              # double 0.7067708009992254
	.quad	0x3fca073b125279c4              # double 0.203345664926884
	.quad	0x3fd7fea466f54196              # double 0.37491712622161211
	.quad	0x3fd121c28811252c              # double 0.26768554008283973
	.quad	0x3fe91e3f6655bb92              # double 0.78494234072955948
	.quad	0x3fcfd2a605b18ed0              # double 0.24861598279959773
	.quad	0x3fe0396846d81417              # double 0.5070077308342914
	.quad	0x3fd7a995fb5f7442              # double 0.36972569988376247
	.quad	0x3fe12ff271c97ac0              # double 0.53710291122464326
	.quad	0x3fe7bea883437f6f              # double 0.74202371251520371
	.quad	0x3fa37ac60e694560              # double 0.038046063670331476
	.quad	0x3fddd79f6491e0b2              # double 0.46628556081078465
	.quad	0x3fe4aa4ad34cc4a7              # double 0.64578763265139549
	.quad	0x3fd6e949bf741d3e              # double 0.35798877426755726
	.quad	0x3fe6e48e73b4fce0              # double 0.71539995764751652
	.quad	0x3fe7fd697267ed31              # double 0.74968407006182336
	.quad	0x3fe4d9915716a8c5              # double 0.65155856141543522
	.quad	0x3fa482fcee452c00              # double 0.040061859212606521
	.quad	0x3fe9e8bc6e3aedc2              # double 0.80966016320547163
	.quad	0x3fe5650a4ace0fef              # double 0.6685840092691232
	.quad	0x3fc3801b37133ee4              # double 0.15234699429719634
	.quad	0x3fb9c6035dd56270              # double 0.10067769089563128
	.quad	0x3f6d10ab3d6c2e00              # double 0.0035479874162598346
	.quad	0x3f9d6181e72aa820              # double 0.028692273840228322
	.quad	0x3fbceaad19051370              # double 0.11295587406955376
	.quad	0x3fd503e5ba293db4              # double 0.32836287669939712
	.quad	0x3fe7935a56299694              # double 0.73673741177181507
	.quad	0x3fe76b7d2b7158dd              # double 0.73187120900072566
	.quad	0x3fc36d96dad35338              # double 0.15178189930761632
	.quad	0x3fea46a70eb4fc6f              # double 0.82112458107429898
	.quad	0x3fd94e0960bcf97c              # double 0.39538797804916448
	.quad	0x3fb2c92197625a50              # double 0.073381518801718615
	.quad	0x3fd7b780702ad2d4              # double 0.37057505563579451
	.quad	0x3fe5e67467fb78b9              # double 0.68438167866749844
	.quad	0x3fec3c722c5948c4              # double 0.88237866079205007
	.quad	0x3fea61b929c4010b              # double 0.82442911298133603
	.quad	0x3fc1f213b5c54820              # double 0.14020010352629786
	.quad	0x3fd3ee8dc3118830              # double 0.31143516587883635
	.quad	0x3fe99533745df02d              # double 0.79946301200789593
	.quad	0x3fd251b94efb1fbe              # double 0.28623802865012837
	.quad	0x3fd6a6e623766fbe              # double 0.35393670523785292
	.quad	0x3fe963ad80f3e78a              # double 0.79341769395908668
	.quad	0x3fc93c0fd57bd1b0              # double 0.19714544223792307
	.quad	0x3fef4f1045081d37              # double 0.97840131266358454
	.quad	0x3fd597f0c05f751e              # double 0.33739870821394102
	.quad	0x3fe668e89f6db3fd              # double 0.70030623567947681
	.quad	0x3fe5cd1dabf82d9f              # double 0.68128856265814253
	.quad	0x3fdc8dc769018aa2              # double 0.44615350012296962
	.quad	0x3fde4e5331b9429e              # double 0.47353057723834435
	.quad	0x3fe3c687fad1f7cb              # double 0.61798476208036257
	.quad	0x3fcb95979b56fd98              # double 0.21550269207908168
	.quad	0x3fe172ddc835b36b              # double 0.54527176955671786
	.quad	0x3fd1a5ca028606da              # double 0.27574396368446019
	.quad	0x3fcdd2affbb22004              # double 0.2329921702369121
	.quad	0x3fe74fe23f14e62f              # double 0.72850143738395967
	.quad	0x3fb5db01ad39d880              # double 0.085373024741643988
	.quad	0x3feb4d2638449528              # double 0.85316763868164447
	.quad	0x3fbbcf621828c7f8              # double 0.10863316621615116
	.quad	0x3fe58d2be96dc4e6              # double 0.67348285285529808
	.quad	0x3fed32fb6dabd1b0              # double 0.91247340603017868
	.quad	0x3fa3f2dc9f8d4d00              # double 0.038962263561780119
	.quad	0x3fe4876718ec365f              # double 0.64152865283694982
	.quad	0x3faa9c6437f6f700              # double 0.051974422294263078
	.quad	0x3fe4b4c12e32d766              # double 0.64706477187312994
	.quad	0x3fed286c4e70bae0              # double 0.91118445701962613
	.quad	0x3f9d03046153c000              # double 0.028331821861627304
	.quad	0x3fead533cda70301              # double 0.83852567831499425
	.quad	0x3feaaac1e9bf2947              # double 0.83334441808373405
	.quad	0x3fe31e303e25edf4              # double 0.59743511331856647
	.quad	0x3fb5bb5e06d6eb80              # double 0.084890247983748778
	.quad	0x3fed4091cfbb647e              # double 0.91413202831894558
	.quad	0x3fe3d51c43523552              # double 0.61976445339829866
	.quad	0x3fec6a8a1d8a9fa4              # double 0.88800531167816076
	.quad	0x3fe651e191f5bb5f              # double 0.69749525554457736
	.quad	0x3fdd17a0541613da              # double 0.45456703387782016
	.quad	0x3fca18c5de121da4              # double 0.2038810095147997
	.quad	0x3fe5fdeaa3b775c5              # double 0.68724567390352631
	.quad	0x3fedb37dc855193e              # double 0.92816056373047906
	.quad	0x3fe4d9635d2c7527              # double 0.65153663824063279
	.quad	0x3fe746d4cd5f1d90              # double 0.72739639388685084
	.quad	0x3fe2933687a1b335              # double 0.58047033777766066
	.quad	0x3fe663d7d899aaaf              # double 0.69968788437593854
	.quad	0x3fc1c668251d94d8              # double 0.1388673955181392
	.quad	0x3feacff4f765619c              # double 0.83788536376509936
	.quad	0x3fd88467b482eb34              # double 0.38308136585299057
	.quad	0x3fda3f880176b4ee              # double 0.41012764113368305
	.quad	0x3fcbf6290b7ec2cc              # double 0.21844971715247252
	.quad	0x3fe97f8ea7de2f6d              # double 0.79682095324231528
	.quad	0x3fc033f26c216488              # double 0.12658529548460629
	.quad	0x3fef3d3864f2a815              # double 0.97622317997343321
	.quad	0x3fd52ee37e44ec18              # double 0.33098685580233811
	.quad	0x3feee90f25db92f2              # double 0.96594960588535472
	.quad	0x3feef0b22a21ae2b              # double 0.96688183049031317
	.quad	0x3fe47cd9f1aee18b              # double 0.64024064258323798
	.quad	0x3fde66005e3df38c              # double 0.47497567370719973
	.quad	0x3fd8031189555a40              # double 0.37518728648629818
	.quad	0x3fdcbafbce27605c              # double 0.44891257412155539
	.quad	0x3fd32e1a4b2ba164              # double 0.29968888607847632
	.quad	0x3fd0e428aaf24a4a              # double 0.26392571157444833
	.quad	0x3fda7ce1034ea336              # double 0.41387200663534729
	.quad	0x3fdf48767eaf3b8a              # double 0.48879778262647078
	.quad	0x3fe18035680c89fb              # double 0.54690046617571342
	.quad	0x3fe80b644d707670              # double 0.75139060139527025
	.quad	0x3fcac20b6e34e8e8              # double 0.20904677277741901
	.quad	0x3fc60aa01f6616b4              # double 0.17219926388877627
	.quad	0x3fe8e496e490d64e              # double 0.7779039825606533
	.quad	0x3fd16723f0d37f04              # double 0.27192019003085499
	.quad	0x3feaf8ad19dea4d6              # double 0.84285597851444538
	.quad	0x3fddeccd39c71502              # double 0.46757822649335889
	.quad	0x3fcb9375831006c0              # double 0.21543759250203287
	.quad	0x3fc1adaf8b289850              # double 0.13811296744205714
	.quad	0x3fe8f7c684040ec7              # double 0.78024602684350775
	.quad	0x3fe15ed9b7496954              # double 0.5428284244365309
	.quad	0x3fe8d29e6877470d              # double 0.77571030047894995
	.quad	0x3fcbc648c83cc85c              # double 0.21698865678041812
	.quad	0x3fe9200180e49352              # double 0.78515696691884274
	.quad	0x3fb959fb02cc89a8              # double 0.099029243644088383
	.quad	0x3feb1fc02758d339              # double 0.8476258057113234
	.quad	0x3fdcc5566b2d5196              # double 0.44954452959543667
	.quad	0x3fea96b741d1e2dd              # double 0.83089793067400886
	.quad	0x3fc826a6169ef314              # double 0.18867946724449125
	.quad	0x3fbeeb370186d918              # double 0.12077659404062435
	.quad	0x3fdc3172b059a688              # double 0.44051806661318738
	.quad	0x3fe8a8de5a634665              # double 0.77061383870950506
	.quad	0x3fe6ca78a866d5be              # double 0.71221573725659204
	.quad	0x3fe161a17e0cc632              # double 0.54316782588120405
	.quad	0x3fdc5f75adf0badc              # double 0.44332639681208064
	.quad	0x3fde3a19ad53ef96              # double 0.47229616095113991
	.quad	0x3fec87b1b83d03a5              # double 0.89156423553514641
	.quad	0x3fe0ace66f4fe455              # double 0.52110597363128852
	.quad	0x3fee5e71d63b4792              # double 0.94902889101125454
	.quad	0x3fe514d497ddc5e0              # double 0.65879277860056717
	.quad	0x3fe5c49b0273e549              # double 0.68024969557806358
	.quad	0x3fde558444cb164a              # double 0.47396952360245292
	.quad	0x3f658c9d838ede00              # double 0.0026305271571478439
	.quad	0x3fd9612676001782              # double 0.39655457995865373
	.quad	0x3fdf891dcf7910cc              # double 0.49274392376925102
	.quad	0x3fc2ad5145bcc944              # double 0.14591422944210752
	.quad	0x3fd04cb6faae0452              # double 0.25468229752010985
	.quad	0x3fce733c2f9ab184              # double 0.23789169620921424
	.quad	0x3fd6e302d77ca162              # double 0.35760565799366451
	.quad	0x3feb20a39dfd00c2              # double 0.84773426873291435
	.quad	0x3fe66fb7cba77eef              # double 0.70113744522310906
	.quad	0x3fd14d492c0cd686              # double 0.270342152612422
	.quad	0x3feb491688133210              # double 0.85267187668938682
	.quad	0x3fd5c2ce451f0444              # double 0.34001499891389053
	.quad	0x3fb668b37b1d5600              # double 0.087535111958764844
	.quad	0x3fd5c3fcd16889e0              # double 0.34008713197741081
	.quad	0x3fed23aaf8fd163d              # double 0.91060398703184087
	.quad	0x3feb6755f47a5233              # double 0.85636422872136675
	.quad	0x3fd42e7f77a7f6dc              # double 0.31533800778548282
	.quad	0x3fea33c40076cd55              # double 0.8188190468849067
	.quad	0x3fd5e45de2f09908              # double 0.34206339990704793
	.quad	0x3fe0e033acc6f050              # double 0.52736839051750373
	.quad	0x3fe250ae8616517e              # double 0.57234884442236456
	.quad	0x3fd9a5c8a8a10332              # double 0.40074364154502284
	.quad	0x3fdce1af723657aa              # double 0.45127473977606292
	.quad	0x3fdcb038df23c554              # double 0.44825574675549729
	.quad	0x3fcafe4360d4d38c              # double 0.21088449695676237
	.quad	0x3fe0795f8f8f6a65              # double 0.51481607474427149
	.quad	0x3fe17cf8cb7dda42              # double 0.54650535339789763
	.quad	0x3fe979940635eda4              # double 0.79609109128016486
	.quad	0x3fe100df0240633d              # double 0.5313563388800514
	.quad	0x3fe3cfed05b2483f              # double 0.6191315757043937
	.quad	0x3fe750f29af00ac6              # double 0.72863130818617416
	.quad	0x3fdc3571a03b2886              # double 0.44076195380751704
	.quad	0x3fe73d40013e097c              # double 0.72622680895464908
	.quad	0x3fdf28fb50d24514              # double 0.48687632458411767
	.quad	0x3fd24e67c14e5b72              # double 0.28603547933146622
	.quad	0x3fa9ca93b086bb50              # double 0.050373664187069012
	.quad	0x3fd43c42754a8338              # double 0.3161779542370371
	.quad	0x3fd56b43cdadc37c              # double 0.33467192731682593
	.quad	0x3fececea88803ade              # double 0.90392042789775551
	.quad	0x3febb258d3b8de83              # double 0.86552087165814873
	.quad	0x3fe1673c42b7fd5d              # double 0.5438519766902733
	.quad	0x3fa18503488253b0              # double 0.034217932320792399
	.quad	0x3fed2bfce63b57ff              # double 0.91161961524153401
	.quad	0x3fef14682d07aa56              # double 0.97124108118925778
	.quad	0x3fc57efee3a7e488              # double 0.16793810001380316
	.quad	0x3febb9dc718e26f2              # double 0.86643812350049942
	.quad	0x3fefa04d48db53b6              # double 0.98831810216744631
	.quad	0x3fe4c8e7ac225cf9              # double 0.64952453250853559
	.quad	0x3fe1623f0fa92793              # double 0.54324296053640564
	.quad	0x3fdf077ac687b034              # double 0.4848315180559013
	.quad	0x3fee837067160e62              # double 0.95354480871214897
	.quad	0x3fc14113a1f90024              # double 0.13479848297902308
	.quad	0x3fe86622c41bb383              # double 0.76246774961838104
	.quad	0x3fdcbe5c4a3211ce              # double 0.44911868329679983
	.quad	0x3fdbc5756110b372              # double 0.43392691115405235
	.quad	0x3fde00f61ff12040              # double 0.46880868071866999
	.quad	0x3fe43464a1b6c1ac              # double 0.63139564118141811
	.quad	0x3fe30afe19495821              # double 0.595091866862962
	.quad	0x3fd184eb25a02c4e              # double 0.27373770403273034
	.quad	0x3fe344ead99162ae              # double 0.60216276639683541
	.quad	0x3fe5ae40d7d8102c              # double 0.67752115399389856
	.quad	0x3fda64a4ba89886c              # double 0.4123927899983133
	.quad	0x3fdc6391cdf3f276              # double 0.44357724297132195
	.quad	0x3fe03322f65fba00              # double 0.50624225730808803
	.quad	0x3fe940e583bba7ae              # double 0.78917194108111288
	.quad	0x3feb52e39a3c84f9              # double 0.85386829494760186
	.quad	0x3fd9f3f3ed7d0616              # double 0.4055146998617557
	.quad	0x3fa36b09956de780              # double 0.037926005831606879
	.quad	0x3fe8e11ebe47168e              # double 0.77748047984705848
	.quad	0x3fc9374a3cf4a00c              # double 0.19699981666894961
	.quad	0x3fe76fe2147258fb              # double 0.73240760797014504
	.quad	0x3fa8ba70726ee800              # double 0.048297418564700934
	.quad	0x3fe78fd0dabf05e7              # double 0.73630564426292444
	.quad	0x3fe20e720084c202              # double 0.56426334477697559
	.quad	0x3fe005b6939ea2c9              # double 0.50069741088835784
	.quad	0x3fe1ad2d0f72250b              # double 0.55238965050480837
	.quad	0x3fef5b28d38c56b7              # double 0.97987786596305326
	.quad	0x3fca77444aa81bac              # double 0.20676473279328655
	.quad	0x3fe5b2fdac5d5209              # double 0.6780994764799867
	.quad	0x3fc332722d9fab80              # double 0.14997699001045461
	.quad	0x3fc13ec68e1e44ac              # double 0.13472825946204148
	.quad	0x3fddb71da67fa25e              # double 0.46430150279642202
	.quad	0x3fe660e8befb24c7              # double 0.69932973195059212
	.quad	0x3fc54502f596b8a8              # double 0.16616856567037996
	.quad	0x3fed684f509ea9cc              # double 0.9189831328015372
	.quad	0x3fd82059a20dcd5a              # double 0.37697449517800907
	.quad	0x3fe9d41084cbd634              # double 0.80713678299679836
	.quad	0x3fe58bac298d564e              # double 0.67329986682552501
	.quad	0x3fdd706ff41ff464              # double 0.45998762932123882
	.quad	0x3fb3036332101050              # double 0.074270438883162315
	.quad	0x3fc56066977532b4              # double 0.16700441737557059
	.quad	0x3fe2ae28df02822c              # double 0.58375972324944803
	.quad	0x3fee47b7b02abe35              # double 0.94625458152399367
	.quad	0x3fed0a70af0f2905              # double 0.90752443495992507
	.quad	0x3fe95bbe7a45e58f              # double 0.79244922524883232
	.quad	0x3fe57baa0d177529              # double 0.67134573513945839
	.quad	0x3f8ce57016a4a700              # double 0.014109492960943992
	.quad	0x3fe2c08306259b9e              # double 0.58599997711722884
	.quad	0x3fe38fd2096187bf              # double 0.61130620796415502
	.quad	0x3fb37a71396da6c8              # double 0.076087070961558756
	.quad	0x3fea5ae32b780b08              # double 0.82359465112708197
	.quad	0x3fe23a924cb4d977              # double 0.56964983922698209
	.quad	0x3fee33f82a924a94              # double 0.94384392084824009
	.quad	0x3fd65f20939333ba              # double 0.34955610667821768
	.quad	0x3fe987fb97f49494              # double 0.79784946135318302
	.quad	0x3fe8aa680a6fab16              # double 0.77080156362839847
	.quad	0x3fe8fd40ea46e278              # double 0.78091474301534358
	.quad	0x3fd78725229a22e0              # double 0.36762359980688863
	.quad	0x3fad2f0b88824dd0              # double 0.056999550260254161
	.quad	0x3fe5c2d87b968941              # double 0.68003486765181986
	.quad	0x3fc99a00b55f56fc              # double 0.20001229148936506
	.quad	0x3fc14543dfcb5094              # double 0.13492630412531936
	.quad	0x3fd4e9344619f25a              # double 0.326733654459337
	.quad	0x3fc73da1c3d2e788              # double 0.1815683561488266
	.quad	0x3fde44477ac9b14c              # double 0.47291743269922359
	.quad	0x3fbb9332dfce5a50              # double 0.10771482433333657
	.quad	0x3fea45036880e65a              # double 0.82092447672693969
	.quad	0x3fe0c03704a0bc5c              # double 0.52346373466378848
	.quad	0x3fd6afeb8024a5c6              # double 0.35448730005245144
	.quad	0x3fd683fa01046ffa              # double 0.35180521106099116
	.quad	0x3fe9f6889eb40c29              # double 0.81134444233646719
	.quad	0x3fcde6795f048074              # double 0.23359601153879661
	.quad	0x3fa58dbc185188e0              # double 0.042096975296560535
	.quad	0x3fe720946a15918e              # double 0.7227270194967319
	.quad	0x3fde0581e67f0714              # double 0.46908614644427016
	.quad	0x3fe98094f6d459a1              # double 0.79694603165517119
	.quad	0x3fe5d1a64200acd5              # double 0.68184197322025375
	.quad	0x3fe0820d9a6f1cbc              # double 0.5158756271638576
	.quad	0x3fef3fb03fe5f16d              # double 0.97652447204704417
	.quad	0x3fe2238a27666d15              # double 0.56683833785374083
	.quad	0x3fc1d47c27d3f0a8              # double 0.13929702706071123
	.quad	0x3fe8c40e0d6849f9              # double 0.7739324819434038
	.quad	0x3fe120c298cfa439              # double 0.5352490410415448
	.quad	0x3fcc0f75af8be628              # double 0.21922179290395261
	.quad	0x3fd5a08ae0d50b16              # double 0.33792373615521976
	.quad	0x3fe16d8347772005              # double 0.54461826284477921
	.quad	0x3fdc8d6add7648ee              # double 0.44613143565324165
	.quad	0x3fe18319a676b305              # double 0.54725344192920089
	.quad	0x3fb6bc628d98e648              # double 0.088812026567120061
	.quad	0x3fd0d83e180f889e              # double 0.26319839811015722
	.quad	0x3fc08cbc3066dcb8              # double 0.12929489482278256
	.quad	0x3fba82189a6d2048              # double 0.10354760904476834
	.quad	0x3fe5e3db01ca919e              # double 0.68406439161167376
	.quad	0x3fe9ea83dd1eb2ee              # double 0.80987733066066681
	.quad	0x3fe6d76d6b2f07cb              # double 0.71379729208296661
	.quad	0x3fee751548eb9eb6              # double 0.95179237596763389
	.quad	0x3fc9d0e4340eb1e0              # double 0.20168736020913425
	.quad	0x3fa26d4fede89620              # double 0.035990236083574212
	.quad	0x3fef19cdce12df52              # double 0.97189989327214676
	.quad	0x3fe9084fb9483bb8              # double 0.78226457775041691
	.quad	0x3fc6dc0cc2bd1174              # double 0.17859038838117736
	.quad	0x3fe200399f6f97cb              # double 0.56252747669054182
	.quad	0x3fe3cce6ceae44f3              # double 0.61876240126926374
	.quad	0x3fe7a8a7fb722ece              # double 0.73933791266014182
	.quad	0x3fc2b157658d2ad0              # double 0.14603702982488764
	.quad	0x3feec42687883b36              # double 0.96144415351031998
	.quad	0x3febb09535734da9              # double 0.86530552329570753
	.quad	0x3fc375f510405c3c              # double 0.15203727048421622
	.quad	0x3fedb1811668344e              # double 0.92791799904228767
	.quad	0x3fcb948433a1603c              # double 0.21546986123098744
	.quad	0x3fe7db1afeaa09ab              # double 0.74549627055266876
	.quad	0x3fa613028e296a20              # double 0.043113784650547382
	.quad	0x3fb4bcde5cc2ba28              # double 0.081006906172412685
	.quad	0x3fc829ae98cabae4              # double 0.1887720342687863
	.quad	0x3fd467ff1860f5f8              # double 0.31884744053590408
	.quad	0x3fe3e49d4c4d23a7              # double 0.62165703680613127
	.quad	0x3fe20c9656d597b8              # double 0.56403653106530438
	.quad	0x3fe760d1ec912e5d              # double 0.73056884960665125
	.quad	0x3fec95ced4826196              # double 0.89328710084650953
	.quad	0x3fe692086346599a              # double 0.70532626523599906
	.quad	0x3fed8fa40f2612de              # double 0.92378428419814518
	.quad	0x3fce61064ca23924              # double 0.23733595601920243
	.quad	0x3fb9505958ebee18              # double 0.098882278642058785
	.quad	0x3fde28e5c1a98e34              # double 0.4712461844667104
	.quad	0x3fdb552db214bcc0              # double 0.42707388296816973
	.quad	0x3fd7112755a08b9c              # double 0.36042197572731438
	.quad	0x3fc29b509475dc48              # double 0.14536483048479654
	.quad	0x3fee87b9e5057bac              # double 0.9540681336474015
	.quad	0x3fa36ea8ce849c40              # double 0.037953639230459135
	.quad	0x3fef0bd5b6570a23              # double 0.97019467938691084
	.quad	0x3fe2ef4c4d2885f1              # double 0.59171118803004508
	.quad	0x3fdef363e0305b04              # double 0.48360535520025416
	.quad	0x3fe38e2827e00aad              # double 0.61110313213460687
	.quad	0x3fcda360143dc5b4              # double 0.23154831875176074
	.quad	0x3fe8f9d59b01473a              # double 0.78049736284649573
	.quad	0x3fd007c6af0e9642              # double 0.25047461600692966
	.quad	0x3fd938b848a28568              # double 0.39408690541502844
	.quad	0x3fef79039128926c              # double 0.98352220870272111
	.quad	0x3fe0088b4e2b2277              # double 0.5010429884651576
	.quad	0x3fe03f4a20623c50              # double 0.50772577595660984
	.quad	0x3fdaa59a1ab3e84c              # double 0.41635754211131792
	.quad	0x3fdb2f2062bc41cc              # double 0.42475137369276861
	.quad	0x3fe1e9ef3b0b7e8e              # double 0.55980645687300679
	.quad	0x3fe4235cc339ae1d              # double 0.62931669359153697
	.quad	0x3fcd19c20dc090f8              # double 0.22734857245917062
	.quad	0x3fba080550f511b0              # double 0.10168488718506441
	.quad	0x3fd392787075ff0c              # double 0.3058148477793885
	.quad	0x3fca0d99bbc72e88              # double 0.20354005497789651
	.quad	0x3fe0d8755b7bec8b              # double 0.52642314784988409
	.quad	0x3fe07e3b5325ad28              # double 0.5154091476410132
	.quad	0x3fd1648718b688b8              # double 0.27176072514897553
	.quad	0x3fe153b2127a50a0              # double 0.54146674736923117
	.quad	0x3fe4e7c8bee01881              # double 0.65329396515222993
	.quad	0x3fe85b62a2653bfa              # double 0.76115543096409444
	.quad	0x3fea8f94adfd53fe              # double 0.83002695066772936
	.quad	0x3fe60355cdff00b2              # double 0.68790712579359181
	.quad	0x3fe7f99db89ec3e5              # double 0.74922071512821431
	.quad	0x3fa1f3cf7acfb410              # double 0.035063251248949823
	.quad	0x3febad1b257f8258              # double 0.86488110851139322
	.quad	0x3fcb18f2a0be86e4              # double 0.2116988453754437
	.quad	0x3fc45f6c05842d24              # double 0.15916204709388027
	.quad	0x3feb1eb1f15884c9              # double 0.84749695909354117
	.quad	0x3fd7ac77655be986              # double 0.36990151308386776
	.quad	0x3fcae3834ea4f404              # double 0.21006814327293466
	.quad	0x3fe7bbe0b297b243              # double 0.74168429261551017
	.quad	0x3fdc768441a2d7aa              # double 0.44473368081832609
	.quad	0x3fc681c6ae4b45f4              # double 0.1758354521794413
	.quad	0x3fc3daad69803d74              # double 0.15511100436604475
	.quad	0x3fd28c39d9759702              # double 0.28980871425879695
	.quad	0x3fcec42f5d701970              # double 0.24036209165951616
	.quad	0x3fd6a5f88d491ff2              # double 0.35388006017137663
	.quad	0x3fe1903735d0e544              # double 0.54885445128380939
	.quad	0x3fd8723ad1d952fc              # double 0.38197203152712667
	.quad	0x3fe859b191163aee              # double 0.76094892823479454
	.quad	0x3fee277a641f7ecb              # double 0.94231910281447406
	.quad	0x3fee74d2bca80199              # double 0.951760643452917
	.quad	0x3fe17c0bd75ec6c4              # double 0.54639236511703659
	.quad	0x3fc1469ee736496c              # double 0.13496767320300351
	.quad	0x3fe2201b1b6a7921              # double 0.56641917566938471
	.quad	0x3fee430131c468db              # double 0.94567928047333838
	.quad	0x3fd6f912bd4e12d2              # double 0.35895222174467023
	.quad	0x3fb48fde791817b0              # double 0.080320267261497546
	.quad	0x3fd1f52a72c8b2f0              # double 0.28058873376248439
	.quad	0x3fe4a3eb928c7960              # double 0.64500979063795327
	.quad	0x3fe0830ccc9a29fa              # double 0.5159973140846994
	.quad	0x3fee89a9b88cf6ae              # double 0.95430456204458891
	.quad	0x3fe8afe78732f3fc              # double 0.7714727058988724
	.quad	0x3fe52fcf682dfd41              # double 0.66208620402895957
	.quad	0x3feec0fd9693f182              # double 0.96105842027422761
	.quad	0x3fe6a426b184e264              # double 0.70753798171706395
	.quad	0x3fd8a6d77ed01356              # double 0.38518321403562561
	.quad	0x3feaf37daec90708              # double 0.84222301614519868
	.quad	0x3fe52bf29036c089              # double 0.66161468664906053
	.quad	0x3fd8c36f9c332426              # double 0.38692846540340253
	.quad	0x3fe6655536261a2e              # double 0.69986973358101578
	.quad	0x3fb3e7b903148c78              # double 0.077754557849901818
	.quad	0x3fd6f3bafc404890              # double 0.35862612375161351
	.quad	0x3fef536fc5301a6c              # double 0.97893513215315186
	.quad	0x3fdd2473e6ef56ac              # double 0.45534989883649746
	.quad	0x3fd88c4ace760de6              # double 0.38356275713178289
	.quad	0x3fdc02e4f0eef382              # double 0.43767665413525247
	.quad	0x3fd240d81bb3a900              # double 0.28520777421239529
	.quad	0x3fdbb7aff849a922              # double 0.43308638808106725
	.quad	0x3fe5e3181c95777d              # double 0.6839714582708748
	.quad	0x3fee7b8bcd90e544              # double 0.95258131169899984
	.quad	0x3fe08e2476d0a71e              # double 0.51735137182297186
	.quad	0x3fbaeb41f17a2ef0              # double 0.10515224595490813
	.quad	0x3fbcef6d9333fd10              # double 0.11302838176560592
	.quad	0x3fe4c303fdbf3b17              # double 0.6488056140895847
	.quad	0x3fdf98b77d1b4d60              # double 0.49369609086462241
	.quad	0x3fd4cf7b978f83c8              # double 0.32516374398079195
	.quad	0x3fe1119ef712bacb              # double 0.53340099579312417
	.quad	0x3fc29b444a1b2778              # double 0.14536336534939287
	.quad	0x3fd8c69927bddd68              # double 0.38712147599240732
	.quad	0x3fe0ee6a06274e75              # double 0.52910329057563266
	.quad	0x3fed7ea00c85242a              # double 0.9217071766407845
	.quad	0x3fed13580f7021e0              # double 0.90861132636296915
	.quad	0x3fee986e3b57a5a8              # double 0.95610725012118269
	.quad	0x3fb7b0224ad50068              # double 0.092531340856113808
	.quad	0x3fd6b18ad3f08bd4              # double 0.35458632180433125
	.quad	0x3fbb6dbe8dae6050              # double 0.10714331587803483
	.quad	0x3fc54b68d7052400              # double 0.16636381625201579
	.quad	0x3fe481c514b7bbe0              # double 0.64084104582240897
	.quad	0x3fd49e50383d748a              # double 0.32216268055146513
	.quad	0x3fe78b904c3a45a7              # double 0.73578657997329777
	.quad	0x3fc51161eb418bbc              # double 0.16459297167884113
	.quad	0x3fe248eefe962d79              # double 0.5714030239482063
	.quad	0x3feb168e1e4e474f              # double 0.84650331420037073
	.quad	0x3fd9db49e682b06a              # double 0.40400931845466082
	.quad	0x3fe103fb98af44b4              # double 0.53173618146151691
	.quad	0x3fe0f277feadc06a              # double 0.52959823362290348
	.quad	0x3fcf6d87d86e2a74              # double 0.2455301100529429
	.quad	0x3fd1b138fa727918              # double 0.27644180734377377
	.quad	0x3fe21bd36776a129              # double 0.56589670379347468
	.quad	0x3fcbc8d5a89fd32c              # double 0.21706648572549037
	.quad	0x3faedfeea396a270              # double 0.060302216977395129
	.quad	0x3fcba3fd361edf7c              # double 0.2159420503864985
	.quad	0x3fe804c4d8ff5a32              # double 0.75058214552229274
	.quad	0x3fd692b4f6099f44              # double 0.35270427729709675
	.quad	0x3fdc24888fa1aa92              # double 0.43972982431902452
	.quad	0x3fd4772772d11cc8              # double 0.31977258884985504
	.quad	0x3fe1ba43d9860722              # double 0.55398743138377804
	.quad	0x3fef41f14e993d91              # double 0.97679963446891993
	.quad	0x3fcdec87900221d8              # double 0.23378080875069318
	.quad	0x3fd8fbade88f60d2              # double 0.39036128722137875
	.quad	0x3fdd362219236304              # double 0.45642902808099017
	.quad	0x3fa7de34e2bb2cc0              # double 0.04661717670168164
	.quad	0x3fb148f2e315a2d8              # double 0.06751936000876968
	.quad	0x3fee157c45e97141              # double 0.94012273459114948
	.quad	0x3fa687ce3ec3b860              # double 0.044004864846883818
	.quad	0x3fdeb6e38d577060              # double 0.47991265108954018
	.quad	0x3fdccac7d5a18a3e              # double 0.44987674581912873
	.quad	0x3fd98d5bcd715d1c              # double 0.39925284445549081
	.quad	0x3fd70978d9afa3b0              # double 0.35995312937171331
	.quad	0x3fb1eba74956d610              # double 0.070002036480979024
	.quad	0x3fab93ad6b062ea0              # double 0.053861064257117564
	.quad	0x3fd8f8c2b26dbc42              # double 0.39018313812897898
	.quad	0x3fe17dcdec8df23c              # double 0.5466069812969816
	.quad	0x3f68484e892af400              # double 0.0029641660597392594
	.quad	0x3fe0ae0be92f20a0              # double 0.52124591392295727
	.quad	0x3fba08d7f957b5c8              # double 0.10169744336572883
	.quad	0x3febae38e9f49d18              # double 0.86501737303197768
	.quad	0x3fe88096fc62d105              # double 0.76569699567929261
	.quad	0x3fc96906770a30c4              # double 0.19851761639109189
	.quad	0x3fd9a103a221e294              # double 0.40045252640951756
	.quad	0x3fe9fcb50367ba98              # double 0.81209803261829716
	.quad	0x3fd822055bfb6be0              # double 0.37707647307041547
	.quad	0x3fd4f42bafb811da              # double 0.32740299377499371
	.quad	0x3fef77f2830b883c              # double 0.98339200587020725
	.quad	0x3fe1fdb4438cac48              # double 0.56221974557173215
	.quad	0x3fc9e52cd9807058              # double 0.20230637188149347
	.quad	0x3fd848e0960e9ad2              # double 0.37944807676323677
	.quad	0x3fb27556161112d0              # double 0.072102909457565589
	.quad	0x3fe1ac04e4866ae4              # double 0.55224842675974317
	.quad	0x3feb408c11fe9947              # double 0.85162929071956561
	.quad	0x3fd7cb81aa32c046              # double 0.3717960512249231
	.quad	0x3fa68a014319b200              # double 0.044021644059146325
	.quad	0x3fe65793572c1d83              # double 0.69819037462086475
	.quad	0x3fef1b248942643d              # double 0.9720633202406429
	.quad	0x3feadab20a4f5c3f              # double 0.83919622434303409
	.quad	0x3fe59ac4fb1fa184              # double 0.67514275596208551
	.quad	0x3fe6a02399fe16de              # double 0.7070482261339881
	.quad	0x3fd4b7434ae69a58              # double 0.32368547739534881
	.quad	0x3fdb833776558ed8              # double 0.42988382869792252
	.quad	0x3fe4a9a9c71bee12              # double 0.64571083916183825
	.quad	0x3febf3d46287cc8d              # double 0.87351435894233165
	.quad	0x3fd43ba61f71c8c4              # double 0.31614068098782533
	.quad	0x3fd94d5df2945688              # double 0.39534710587882005
	.quad	0x3fc209b23a49f0cc              # double 0.14092090459951689
	.quad	0x3febbc2347922be6              # double 0.86671604136188019
	.quad	0x3fc769479e5c2130              # double 0.18290038330474934
	.quad	0x3fbcc99391962748              # double 0.11245081238135157
	.quad	0x3fea60a4ad7d871b              # double 0.82429727444489076
	.quad	0x3fd0bf75d8b49ab4              # double 0.26168581164021565
	.quad	0x3f97958e82d4e740              # double 0.023031450972872181
	.quad	0x3fd8d4c60073b842              # double 0.38798666042464813
	.quad	0x3fe8cedcd5ed4b4c              # double 0.77525178701976349
	.quad	0x3fdbb65d49e40372              # double 0.43300564018141252
	.quad	0x3fd9ecfa58b44648              # double 0.4050889841319969
	.quad	0x3fd305dd7bbde0b4              # double 0.29723298153067934
	.quad	0x3fd72a857d0152e4              # double 0.36197030265365826
	.quad	0x3feadb7afbf6087d              # double 0.83929204188486006
	.quad	0x3feffbb89e536474              # double 0.99947768137930248
	.quad	0x3feded2084111009              # double 0.93519616884486922
	.quad	0x3fea0ad24c712445              # double 0.81382098131246805
	.quad	0x3fe0fc41206920e8              # double 0.53079277353483878
	.quad	0x3fd4c38de4a93ea0              # double 0.32443568544565871
	.quad	0x3fdd615dc7fbde84              # double 0.45906776933359361
	.quad	0x3fc02304d093d0c4              # double 0.12606868919795577
	.quad	0x3fc3ff99359412b0              # double 0.15623774639256771
	.quad	0x3fe643fd728da99f              # double 0.69579956411080335
	.quad	0x3fd4d19522315182              # double 0.32529190386892293
	.quad	0x3fdc1ee8a0367ac6              # double 0.43938651700765907
	.quad	0x3fe6adbd86f9c36b              # double 0.70870853769711795
	.quad	0x3fe8e9d650cf3de1              # double 0.77854457648384934
	.quad	0x3fd1f5881621fa1c              # double 0.28061105882071202
	.quad	0x3fd9d07a52674014              # double 0.40334947631072393
	.quad	0x3fd76a599e549d56              # double 0.36586609327283293
	.quad	0x3fe8df0b14b8648f              # double 0.77722696349077747
	.quad	0x3fed45e662555363              # double 0.91478270726893773
	.quad	0x3fcf08b03fca3080              # double 0.24245265116440251
	.quad	0x3fec3df16ab6169e              # double 0.88256140558287988
	.quad	0x3fe684e23764f651              # double 0.70372114962783361
	.quad	0x3fdc739a5377da6e              # double 0.44455583716572888
	.quad	0x3fa48c1c2e8b4d40              # double 0.040131455117853765
	.quad	0x3fd5d3d032be71d6              # double 0.34105305629216554
	.quad	0x3fdb981c06445714              # double 0.4311590253067703
	.quad	0x3fe8cba860e4f293              # double 0.77486056255982516
	.quad	0x3fe42c90c1e5bfbd              # double 0.63044011946293887
	.quad	0x3fe46d926f70aa8d              # double 0.63837548986096382
	.quad	0x3fce5d79b6277014              # double 0.23722764391175188
	.quad	0x3fe6235fcd801926              # double 0.69181814324182223
	.quad	0x3fe56b2a1d97bbd4              # double 0.66933160571886186
	.quad	0x3fe24c1295977682              # double 0.57178620545501269
	.quad	0x3fefbb75ebe5587a              # double 0.99163337777532878
	.quad	0x3fdf240df198a61a              # double 0.48657559007060203
	.quad	0x3fc736ec5ce587f4              # double 0.181363625869437
	.quad	0x3fca28c314d6e0e8              # double 0.20436895864054994
	.quad	0x3fc0dc8c59780c3c              # double 0.13173059815025734
	.quad	0x3fb1b6be128792a8              # double 0.069194678806136722
	.quad	0x3fe9af2de3e7616a              # double 0.8026341868635829
	.quad	0x3fe4f151aa540ae1              # double 0.65445788638347946
	.quad	0x3f823e88db62b480              # double 0.0089083377791558949
	.quad	0x3f98f05d116fa7e0              # double 0.024354414166658844
	.quad	0x3fc4afd24fa82bd4              # double 0.161615647215824
	.quad	0x3febabf2f41d9c4f              # double 0.8647398727306469
	.quad	0x3fc3796669177fd8              # double 0.15214233523783949
	.quad	0x3fe2805d2fa73209              # double 0.57816943461654191
	.quad	0x3fcac9d88951e614              # double 0.20928484635423728
	.quad	0x3fe8bae1730ef8fc              # double 0.77281258079872783
	.quad	0x3fee1613b0426435              # double 0.94019493508961338
	.quad	0x3fb45120ff8dff80              # double 0.079362928763655915
	.quad	0x3fcab33137cc8084              # double 0.20859351372292079
	.quad	0x3fce2d2c5cfaa3a4              # double 0.23575357952111375
	.quad	0x3fc273982b7df63c              # double 0.14415266154894535
	.quad	0x3fd0c09b1e7e1776              # double 0.26175573327815671
	.quad	0x3fd764e67b82052a              # double 0.36553346692388067
	.quad	0x3fef03a6f123f09a              # double 0.96919581506473951
	.quad	0x3fce98dab87a9c3c              # double 0.23903974540482575
	.quad	0x3fd9e6658247568a              # double 0.40468728754545025
	.quad	0x3fc4a4e5290db644              # double 0.16128220085686185
	.quad	0x3fe78c528503b3d2              # double 0.73587919215571618
	.quad	0x3fdff219a2f4e460              # double 0.49915162004214686
	.quad	0x3fda4939ca3b8718              # double 0.41071934460897941
	.quad	0x3fefabafe6cd9ed6              # double 0.98970789984465557
	.quad	0x3fe82ed875a2a3cd              # double 0.75571845031401497
	.quad	0x3fd72989d96c7eb6              # double 0.36191030724328799
	.quad	0x3fbba97c6735f3e0              # double 0.10805490035814058
	.quad	0x3fdf668a2bcb61d8              # double 0.49063352848818687
	.quad	0x3febb8b3eca43719              # double 0.8662967321303966
	.quad	0x3fe5f00ac2c23755              # double 0.68555200613784939
	.quad	0x3fb2a42ead8dc670              # double 0.072817723628554765
	.quad	0x3fe219c1042006bf              # double 0.56564379506763618
	.quad	0x3fa8b296d7b3be10              # double 0.048237527685952242
	.quad	0x3fe0b09c8c3b4d4a              # double 0.52155902279847877
	.quad	0x3f530d9da114b200              # double 0.001162914213931221
	.quad	0x3f927486d9e9df00              # double 0.018022639322651024
	.quad	0x3fd7faf02bed537c              # double 0.37469105043174245
	.quad	0x3f91fe813edf9060              # double 0.017572421514970293
	.quad	0x3fe5edea2da70c5d              # double 0.68529232899198755
	.quad	0x3fe12f8c9fd97562              # double 0.53705435963244619
	.quad	0x3fe516efd66bfc1f              # double 0.65904991034756566
	.quad	0x3fd118438aa1e7fe              # double 0.2671059469063265
	.quad	0x3fe259f66d90d8bd              # double 0.5734817638356372
	.quad	0x3fee58b4666b7e7b              # double 0.94832820896040404
	.quad	0x3fd6801b1f0a77b0              # double 0.35156896621071621
	.quad	0x3fcd0c522bc276cc              # double 0.22693850647640657
	.quad	0x3fe1501e0ef9e671              # double 0.54102995801004117
	.quad	0x3fe5d68847323a12              # double 0.68243802934176956
	.quad	0x3feb93c1ff7ac6a9              # double 0.86178684137685935
	.quad	0x3fec634a333dbf8b              # double 0.88712034233138704
	.quad	0x3fd644ad52e4dc4a              # double 0.34794171424022535
	.quad	0x3fed6520c672e3ff              # double 0.91859472999124125
	.quad	0x3fd0eef088499700              # double 0.26458371457407281
	.quad	0x3fd97a8510c59880              # double 0.39810301435353068
	.quad	0x3fe8a6b25f2213b3              # double 0.77034872608839178
	.quad	0x3fe76b052eae73b2              # double 0.73181399457427276
	.quad	0x3f9a3cafb7a97d00              # double 0.025622125229685544
	.quad	0x3fcea270485b9ebc              # double 0.23933223279094828
	.quad	0x3fdc065a0d072ed2              # double 0.43788768074294382
	.quad	0x3fd58682a0fcb0a2              # double 0.3363348552836759
	.quad	0x3fe9f93cd0b32f4b              # double 0.81167450677592379
	.quad	0x3fe36382674dfced              # double 0.6058971421879541
	.quad	0x3fe77814368929c2              # double 0.73340807582399514
	.quad	0x3fb85c85302c1d68              # double 0.095161747227498261
	.quad	0x3fb29b8c38b53348              # double 0.072685970158272828
	.quad	0x3fe045783a578940              # double 0.50848018069181222
	.quad	0x3fe9d3641865b618              # double 0.80705456509685103
	.quad	0x3fa9b967b7524b00              # double 0.050242653968913586
	.quad	0x3fec27ca26cf4388              # double 0.87985713558201528
	.quad	0x3fead3087a271739              # double 0.83826087816189621
	.quad	0x3feb61807b5a1096              # double 0.85565208522941094
	.quad	0x3fec01e6f6eb59d6              # double 0.87523220278199676
	.quad	0x3fec7ca01be19326              # double 0.8902130646280042
	.quad	0x3fa2ca11dc21a8e0              # double 0.036697919961470538
	.quad	0x3fe8407ac3f9e80d              # double 0.75787103916741361
	.quad	0x3f9878a06e4608c0              # double 0.023897654276432645
	.quad	0x3fdd0f365f243f08              # double 0.45405349055452904
	.quad	0x3fe54f257ba54e1f              # double 0.66591142797046021
	.quad	0x3fdbe708bc9d6a5c              # double 0.43597620410370097
	.quad	0x3fad5dbad82fd330              # double 0.057355727090828146
	.quad	0x3fdd4a1f15c0e23c              # double 0.45764901279793313
	.quad	0x3fe81d2061bff153              # double 0.75355547992470873
	.quad	0x3fd657bd62097638              # double 0.34910521100923431
	.quad	0x3fe5d5aaaababeae              # double 0.68233235688781746
	.quad	0x3fc7e2ce73dd9900              # double 0.18660908372402929
	.quad	0x3fe9a662b98ce88b              # double 0.80156074753109985
	.quad	0x3fd9194af861073c              # double 0.39216875320208877
	.quad	0x3fcc4b8df2799244              # double 0.22105573978037019
	.quad	0x3fe977926d34e940              # double 0.79584618882589808
	.quad	0x3fa81b7aa8586d80              # double 0.047084649133661394
	.quad	0x3fe575b1c52f36bd              # double 0.67061699402412212
	.quad	0x3fc8e91fc6c788f4              # double 0.19461438375498796
	.quad	0x3febe8fe4fad9738              # double 0.87219157755018895
	.quad	0x3fdfa27b5fda6904              # double 0.49429211006794582
	.quad	0x3fbd161765b164a8              # double 0.11361833794343801
	.quad	0x3fe2c452ec132894              # double 0.58646532162062437
	.quad	0x3fdc7730172d4d68              # double 0.44477464927077515
	.quad	0x3fcaf340d8cae728              # double 0.21054850183082263
	.quad	0x3fed6ab88d0e9491              # double 0.91927745390116133
	.quad	0x3fd13ad9b7090cd4              # double 0.2692169463591203
	.quad	0x3fc26ea691f79e24              # double 0.14400179030711613
	.quad	0x3fe3eb8b176dd720              # double 0.62250284744252227
	.quad	0x3fd79d22b7ce12ce              # double 0.36896579694466147
	.quad	0x3fe6d2656bdc8a47              # double 0.71318312708565024
	.quad	0x3fee13c197164ee3              # double 0.9399116469307639
	.quad	0x3fc12ff57a0d0304              # double 0.13427608928216028
	.quad	0x3fe4a3c61d0873e2              # double 0.64499192877303479
	.quad	0x3fea32d705a7bfab              # double 0.81870604614777187
	.quad	0x3fe3f24611b877b4              # double 0.62332442723322012
	.quad	0x3fdf97d752b36efe              # double 0.49364264560948345
	.quad	0x3fef856b7c5828f3              # double 0.98503660474787435
	.quad	0x3fe2c7d6b139f0e2              # double 0.58689436544912277
	.quad	0x3fcd71c8d0909f68              # double 0.23003492530665004
	.quad	0x3fc5076756ee0edc              # double 0.1642884420835945
	.quad	0x3fd218647e7e6830              # double 0.28273880341442048
	.quad	0x3fc5a898ef21c7fc              # double 0.16920768429150701
	.quad	0x3feca6022e2d6d15              # double 0.89526471156151166
	.quad	0x3feb1c761bf83b32              # double 0.84722428763220692
	.quad	0x3fea623a1479e57f              # double 0.82449058531999231
	.quad	0x3fe81363414e10e4              # double 0.75236666445610156
	.quad	0x3fa5c63d6c317ce0              # double 0.042528075654212349
	.quad	0x3fb80eebe17f3d30              # double 0.093977682641015247
	.quad	0x3fe8c0942511ad69              # double 0.77350814094590448
	.quad	0x3fe0e9a34a990808              # double 0.52852024621847793
	.quad	0x3fed6bf01df3abc1              # double 0.91942602014511732
	.quad	0x3fe840cd645cc3fb              # double 0.75791043855690476
	.quad	0x3fef13b57d16ba51              # double 0.97115587645914491
	.quad	0x3fed22412b06d0ba              # double 0.91043146518361273
	.quad	0x3fa828f5a2b7cce0              # double 0.047187496293099818
	.quad	0x3fee7516a86704fc              # double 0.95179303065393083
	.quad	0x3fc5787c43993d0c              # double 0.16773942280494969
	.quad	0x3fd9096b1ec176c6              # double 0.39119985583770889
	.quad	0x3fedca39495df874              # double 0.93093551949983899
	.quad	0x3fb76fc096dc97d0              # double 0.091548954802959103
	.quad	0x3fc138a482688f8c              # double 0.13454109542464854
	.quad	0x3fe3b4ebbc5a154b              # double 0.61583506381490716
	.quad	0x3fec252b455bfd9f              # double 0.87953723475213852
	.quad	0x3fe26d92e786c4bc              # double 0.57587571353919698
	.quad	0x3fe2c3ad098d83fa              # double 0.58638622155933651
	.quad	0x3fe4b2e116b570a1              # double 0.64683584628393842
	.quad	0x3fcc5253be187010              # double 0.2212624242973793
	.quad	0x3f78b3ba9bbcaf00              # double 0.0060307778729045136
	.quad	0x3fe75a338ec82110              # double 0.72976091277181077
	.quad	0x3fb08184e57c9e58              # double 0.064476305033730141
	.quad	0x3fe41e32a89dd97c              # double 0.62868626530580185
	.quad	0x3fe953bae46cf1f9              # double 0.7914709531247005
	.quad	0x3fdc198369cf0882              # double 0.43905721028216516
	.quad	0x3f9b25e87ba1e440              # double 0.026511795564577278
	.quad	0x3fec2626e40569ec              # double 0.87965721640949601
	.quad	0x3fe4bea9abc9b101              # double 0.64827426483455508
	.quad	0x3fe3b32cdc4d55ec              # double 0.61562197711708455
	.quad	0x3fe36a1fa69404fc              # double 0.60670454535298246
	.quad	0x3fe55da496d6e4eb              # double 0.66768102131677887
	.quad	0x3fe82ba9046b06e4              # double 0.75532961714654023
	.quad	0x3fc805fe6bc714f8              # double 0.18768291723805652
	.quad	0x3fef3434f6083f2e              # double 0.97512291005293661
	.quad	0x3fc581a611433b58              # double 0.16801906435872627
	.quad	0x3fc4f7f8729723dc              # double 0.16381745906099254
	.quad	0x3fc8ac252ca6ccd4              # double 0.19275345497371765
	.quad	0x3fe4bc3fc0c6b65f              # double 0.64797961856465836
	.quad	0x3fe3e16e066fb923              # double 0.62126828438866644
	.quad	0x3fe0d9cf3ad35776              # double 0.52658807267537955
	.quad	0x3fd980209b8195fa              # double 0.39844527422096088
	.quad	0x3fecde7791da6186              # double 0.90215662466930335
	.quad	0x3fc7e8dbf9911050              # double 0.18679380117294153
	.quad	0x3fc456fd4944c854              # double 0.15890470578739502
	.quad	0x3feb1ac95d6de343              # double 0.84701984641933625
	.quad	0x3fe5870b071d2b09              # double 0.67273475064698218
	.quad	0x3fedee901af328e4              # double 0.93537144912377501
	.quad	0x3fc793b8208fafc4              # double 0.18419553365617791
	.quad	0x3fdd8418f9e6ba98              # double 0.4611875954096063
	.quad	0x3fecf35480c32ce2              # double 0.90470338009745555
	.quad	0x3fdcac0d7b864322              # double 0.44800126135764817
	.quad	0x3fd5d06634f500d4              # double 0.34084468051515882
	.quad	0x3fe8b97afaea7c3e              # double 0.77264164931319335
	.quad	0x3fcab047c0547d24              # double 0.20850464717020956
	.quad	0x3fe6a2951505bad4              # double 0.70734647851881016
	.quad	0x3fd4c2fd03ecaeda              # double 0.32440114386802821
	.quad	0x3fe89488b958bbdb              # double 0.76813160133849168
	.quad	0x3fe30698ab0f2229              # double 0.59455521974547765
	.quad	0x3fde80e70c9e75ea              # double 0.47661758644411967
	.quad	0x3fc93dded822566c              # double 0.19720063737320304
	.quad	0x3fead902e9081609              # double 0.83899064554197011
	.quad	0x3fdc7eea8e1407d6              # double 0.44524635195568629
	.quad	0x3fe9e2e1e9597f6d              # double 0.80894561363309736
	.quad	0x3fefabe16a65f20b              # double 0.98973150998023251
	.quad	0x3fbf33b08248b6d8              # double 0.12188246899378485
	.quad	0x3fd413c47ec8b4d2              # double 0.31370651608706368
	.quad	0x3fcdce62ccf6db0c              # double 0.2328608990480564
	.quad	0x3fdb7f48f82bf394              # double 0.42964386210933836
	.quad	0x3fe34bbf9229987b              # double 0.6029966215835566
	.quad	0x3fd363a3be6be034              # double 0.30295652004088258
	.quad	0x3fe23b92b15e39da              # double 0.56977209703637333
	.quad	0x3fe5ac51c85c73da              # double 0.6772850907615251
	.quad	0x3fed88e3d058bf22              # double 0.92296019261081974
	.quad	0x3fd1de4b8b9f0f7e              # double 0.27919281611342928
	.quad	0x3fdefa58c9ae4abe              # double 0.4840299577273689
	.quad	0x3fe877c9ff3e9e5f              # double 0.76462268688642243
	.quad	0x3fe6555f2f4525a5              # double 0.69792136413996231
	.quad	0x3fef1b690697a757              # double 0.9720959786184079
	.quad	0x3fe7b7253219a8bc              # double 0.74110660348130564
	.quad	0x3fd66fbbac2a2924              # double 0.35056964695890458
	.quad	0x3fd1778916862998              # double 0.2729208679162638
	.quad	0x3fe6a61ffb64b226              # double 0.7077789220834958
	.quad	0x3fd8f6008056a0f6              # double 0.39001476796194312
	.quad	0x3fd48d3427c59e82              # double 0.32111839183787805
	.quad	0x3fe7fc53c480a660              # double 0.74955166224863134
	.quad	0x3fe965cdc5928458              # double 0.79367722118707729
	.quad	0x3fcaad7546d654bc              # double 0.20841852148865836
	.quad	0x3fdbb73bb4127612              # double 0.43305866799514192
	.quad	0x3fb237ab07a851f0              # double 0.071161927575594808
	.quad	0x3fb369f61f730c58              # double 0.075835592916562944
	.quad	0x3fce98e7b2e25bfc              # double 0.23904129252034056
	.quad	0x3fdd1dae7d5c5b70              # double 0.45493662111532895
	.quad	0x3fdb26a43ec8427c              # double 0.42423349505501284
	.quad	0x3fe811191c75a685              # double 0.75208716925153907
	.quad	0x3fda417e339e3cb8              # double 0.41024737397033162
	.quad	0x3fe591eace9ccd2c              # double 0.674062160053301
	.quad	0x3fc5137140ca42a0              # double 0.16465583480432588
	.quad	0x3fe09080de58eaef              # double 0.51763957431043461
	.quad	0x3fe80f39eb578685              # double 0.75185867276395923
	.quad	0x3fe64c9c7ba98463              # double 0.69685196068543254
	.quad	0x3fdd0bdbb9eff874              # double 0.45384877355525721
	.quad	0x3fcea06ca7b83680              # double 0.23927076520378776
	.quad	0x3fd4182e3129f920              # double 0.31397585679214224
	.quad	0x3fd923dac62a39a0              # double 0.39281339027447792
	.quad	0x3fe5401b7ac6a2f2              # double 0.66407560329125048
	.quad	0x3fd543aef41d31ac              # double 0.33225606765042914
	.quad	0x3fe1f5ba2b9ae04f              # double 0.5612459994945399
	.quad	0x3fd02b5f634cd06a              # double 0.25264725396414767
	.quad	0x3fb0139a8aeaaa70              # double 0.06279912845153901
	.quad	0x3fe7909adbdf0405              # double 0.73640196746430375
	.quad	0x3fe34d1444e245fc              # double 0.60315907911188971
	.quad	0x3fba01a566721a10              # double 0.10158761740795108
	.quad	0x3fcc6d5e93582578              # double 0.22208769030138931
	.quad	0x3fe17ad523c0df22              # double 0.54624421103560317
	.quad	0x3fadcf9269b52450              # double 0.05822427311301992
	.quad	0x3fed1b3aaca05c34              # double 0.90957387653441523
	.quad	0x3fb18ae1a2f80840              # double 0.068525411879847731
	.quad	0x3fc3142a4adbcf3c              # double 0.14905289321142756
	.quad	0x3fe3c8df4878edab              # double 0.61827053217659989
	.quad	0x3fe9bb003007c185              # double 0.80407723790089902
	.quad	0x3fd9382e636dd0dc              # double 0.39405402860508132
	.quad	0x3fe352cd73d863d5              # double 0.60385773302106804
	.quad	0x3fa97fa9664caf40              # double 0.049802106607187202
	.quad	0x3fe6a6d9ae5321c1              # double 0.70786747024344987
	.quad	0x3fa0aab6e3e656d0              # double 0.032552447624011216
	.quad	0x3fc6f3a6ff10223c              # double 0.17931067899941577
	.quad	0x3fb0db5cf7f93808              # double 0.065847216167839062
	.quad	0x3fe293d1424f7461              # double 0.58054411841625264
	.quad	0x3fbb105d2e8c48a8              # double 0.1057184446947611
	.quad	0x3feb2d860b35ed4a              # double 0.84930708112316577
	.quad	0x3fd957f9b4b8a1e8              # double 0.39599459312969865
	.quad	0x3f6cd5934f7fac00              # double 0.003519809451963507
	.quad	0x3fd517d2226750b4              # double 0.32957890853618754
	.quad	0x3fedfba72c334b9d              # double 0.93696936257252939
	.quad	0x3fed768d4a774c12              # double 0.92072166961804869
	.quad	0x3fd31cf0e73e1716              # double 0.29864142019538187
	.quad	0x3fe24d350f5343ab              # double 0.57192471497738973
	.quad	0x3fe77ad33f49784c              # double 0.73374330864658921
	.quad	0x3faa7af8ea6eb0e0              # double 0.051719454400286358
	.quad	0x3feaa4b907b9234e              # double 0.8326077605098392
	.quad	0x3fedcb36b4e84eba              # double 0.93105635961042954
	.quad	0x3feff7b94fec9470              # double 0.99898973093207921
	.quad	0x3fd5909fd5b8641a              # double 0.33695217009659617
	.quad	0x3fe97ad74b5af22d              # double 0.7962452384741191
	.quad	0x3fec5d41450629bd              # double 0.88638366204514052
	.quad	0x3fd6bfe4acf0c32e              # double 0.35546223534315657
	.quad	0x3fd49a054e05028a              # double 0.3219006788167823
	.quad	0x3fe679efb233f72d              # double 0.70238480382224611
	.quad	0x3f97cb2492688980              # double 0.023235866008812334
	.quad	0x3fcb6f8402757760              # double 0.21434068794308825
	.quad	0x3fe854454f22eab7              # double 0.76028695541693636
	.quad	0x3fb805f52ee3cf90              # double 0.093840908000684786
	.quad	0x3fe412076e025f8e              # double 0.62720080839334158
	.quad	0x3fe304528c7e6582              # double 0.59427764358694923
	.quad	0x3fe1bf6c73afc3e9              # double 0.55461714358363878
	.quad	0x3fd3fcb1b008e9a8              # double 0.31229822340869839
	.quad	0x3fdea718970dc2a0              # double 0.47894873381941672
	.quad	0x3fea10a6d28f0e24              # double 0.81453267216460689
	.quad	0x3fde1479e5d02078              # double 0.46999976580310188
	.quad	0x3fee6c15bfc2458f              # double 0.95069396450905852
	.quad	0x3fb5b0ae7313b0f0              # double 0.084727194876623945
	.quad	0x3fb981f088705e48              # double 0.099638970670974492
	.quad	0x3fcea4d2cfd89974              # double 0.2394050135491842
	.quad	0x3fee1113db1cb277              # double 0.93958466334659263
	.quad	0x3fd86b0821c522f6              # double 0.38153270051820642
	.quad	0x3fe4acd19541083e              # double 0.64609603072336319
	.quad	0x3fed15437f0310db              # double 0.9088456612303405
	.quad	0x3fd454188c7b9d92              # double 0.31763280600576949
	.quad	0x3fe14209b9b984d0              # double 0.53931127809860335
	.quad	0x3fc58408e0fa3c64              # double 0.16809187875012122
	.quad	0x3fe40699b2806e24              # double 0.6258057104454946
	.quad	0x3fc299b7a2864da4              # double 0.14531608043453759
	.quad	0x3fe2179b7c21f500              # double 0.56538175816208991
	.quad	0x3fe5c191a677bb39              # double 0.67987902177069437
	.quad	0x3fc4539d73bf8cc0              # double 0.15880172874230958
	.quad	0x3fd8456cae66d33a              # double 0.3792373374119965
	.quad	0x3fe23353ceeb2962              # double 0.56876554883755781
	.quad	0x3fe6b51c10792143              # double 0.7096081086865883
	.quad	0x3feef6ba026bc5b2              # double 0.96761799309586238
	.quad	0x3fdf83278187453e              # double 0.49238002442605822
	.quad	0x3fbcdeeca1f80fe8              # double 0.11277655557938682
	.quad	0x3fe6c7462f2c7264              # double 0.71182545865628954
	.quad	0x3feb98d16e924d51              # double 0.86240455242151814
	.quad	0x3fdd49c21fff1536              # double 0.45762684940958154
	.quad	0x3fda419db2f181be              # double 0.41025488352718387
	.quad	0x3fd4600a483a0566              # double 0.31836182645209588
	.quad	0x3fe4bea8ea2e3210              # double 0.64827390421265996
	.quad	0x3fc0acc474a0bfb0              # double 0.13027244276736161
	.quad	0x3fefb6c48b5f7c05              # double 0.99106051656042437
	.quad	0x3fc1b5d3440656fc              # double 0.13836136647721975
	.quad	0x3fe0ff94c03cc7f2              # double 0.53119885965702296
	.quad	0x3fe5a54ac6783729              # double 0.67642725719062924
	.quad	0x3feff81ce03b6cf3              # double 0.99903720660532113
	.quad	0x3fdf93fc9c89786c              # double 0.49340739523711963
	.quad	0x3fd128ecb67727f6              # double 0.26812284296886391
	.quad	0x3feab85871d8ed66              # double 0.83500311122717785
	.quad	0x3fc08c2018d46000              # double 0.12927628719694439
	.quad	0x3fec341f039993e3              # double 0.88136244490726445
	.quad	0x3f9e2c6e1afadc00              # double 0.029466362377856825
	.quad	0x3fcd1884fde463e8              # double 0.22731077572896585
	.quad	0x3feeffdd1681e95f              # double 0.96873335262288751
	.quad	0x3fe846f590ebeb89              # double 0.75866201691620561
	.quad	0x3fc5b6f3236953ec              # double 0.16964568356584608
	.quad	0x3fe3c4c5a6b26035              # double 0.61777002866711561
	.quad	0x3fed06548acf9a7b              # double 0.90702273475183348
	.quad	0x3fc3e622164ea728              # double 0.15546060647221194
	.quad	0x3fee806e615c8c65              # double 0.95317763343736017
	.quad	0x3fd0e210b326fa02              # double 0.2637979268583025
	.quad	0x3fe8ba8afd031162              # double 0.77277135292437671
	.quad	0x3fecf379d9ccc851              # double 0.90472118891762865
	.quad	0x3fdc66dba507ccd2              # double 0.44377795330292458
	.quad	0x3fe9c570b30f1331              # double 0.80535159084738528
	.quad	0x3fe352c1cb1a1988              # double 0.60385217350339904
	.quad	0x3fe9af11b38d6139              # double 0.80262074536134442
	.quad	0x3fd1c3fa3ab6b670              # double 0.27758651479493945
	.quad	0x3fab95eeca0772a0              # double 0.053878271257166377
	.quad	0x3fedb8ce524887b2              # double 0.92880931921921772
	.quad	0x3fa752cbc62048b0              # double 0.045553558287921958
	.quad	0x3fe151f0a19283d7              # double 0.5412524371823747
	.quad	0x3fe2a00888d8bceb              # double 0.58203531959398214
	.quad	0x3feb0401aebb0e84              # double 0.8442390835484308
	.quad	0x3fec48cfbb60a046              # double 0.88388811680943813
	.quad	0x3fd3e85cc18d811c              # double 0.31105727101932401
	.quad	0x3fd4ca786d968bf2              # double 0.32485781385383838
	.quad	0x3fcdfcd5c0123370              # double 0.23427841070624877
	.quad	0x3fd699f1e7fe78bc              # double 0.35314605384509057
	.quad	0x3fe155ea1e1a4bec              # double 0.54173761252820674
	.quad	0x3fd3e5794df90d0e              # double 0.31088097204720178
	.quad	0x3fd78d263a1c4802              # double 0.36799007105685189
	.quad	0x3fefe79de200b1a9              # double 0.99702352658419102
	.quad	0x3fb3e55b41932d10              # double 0.077718451985834713
	.quad	0x3fdfc9ddc629f512              # double 0.49669594146674101
	.quad	0x3fea05f4e9b5dd4e              # double 0.81322713514865952
	.quad	0x3fd9fed011aa0acc              # double 0.40617753720304672
	.quad	0x3fda5a6645401f9a              # double 0.41176754725210574
	.quad	0x3fe7c61dffe18592              # double 0.7429342267679877
	.quad	0x3fc3ab1de4902a20              # double 0.15365956936177927
	.quad	0x3fe63932c1288e5a              # double 0.69448220945600814
	.quad	0x3fe4a322f3a2b4f7              # double 0.64491412720749863
	.quad	0x3fcaae49c2839b2c              # double 0.20844385144956712
	.quad	0x3fb87b1b4ece22a8              # double 0.095628458728365673
	.quad	0x3fe279e812c5622e              # double 0.5773811689969699
	.quad	0x3fe4c0630e615da8              # double 0.64848473366412396
	.quad	0x3f968f8a9c66b400              # double 0.022031942172976215
	.quad	0x3fe89af0f2ecffb0              # double 0.76891372152748794
	.quad	0x3fd6d82ce4a61ee2              # double 0.35694429711337083
	.quad	0x3fd233c4d9d55ef8              # double 0.28440972588349167
	.quad	0x3fdd62b0158319f8              # double 0.4591484270171402
	.quad	0x3fdc9281e41524fa              # double 0.44644210122767414
	.quad	0x3febdc34b26fb4e1              # double 0.87063059664583531
	.quad	0x3fefec4a22f7c8ab              # double 0.99759394483250696
	.quad	0x3fc1e68e75639898              # double 0.13984852535140102
	.quad	0x3fcc00637d4f1110              # double 0.21876186007114784
	.quad	0x3fd222f582580c6c              # double 0.28338372925663324
	.quad	0x3fa0e7c7d2065180              # double 0.033018345248964742
	.quad	0x3fd4c75f532a0ab4              # double 0.32466872331148555
	.quad	0x3fd6c16f4d9b51a4              # double 0.35555632189541542
	.quad	0x3fd087ddb2e18cee              # double 0.25829260319569769
	.quad	0x3fe73f7aed6da505              # double 0.72649904606547067
	.quad	0x3fe271b3a743ada8              # double 0.57637961071798305
	.quad	0x3fd58a211389bd3a              # double 0.33655573757183144
	.quad	0x3fab86e64b81d4b0              # double 0.053763577191526024
	.quad	0x3fd6db3a8c7602f0              # double 0.35713065831082158
	.quad	0x3fd970957285a84e              # double 0.39749656852530257
	.quad	0x3fd27addcce39a8a              # double 0.28874917038630399
	.quad	0x3fef7ed616f1c6cf              # double 0.98423294526420501
	.quad	0x3fbdf4f8a1b816a8              # double 0.11701921413631544
	.quad	0x3f6edeafa283cc00              # double 0.0037682943694732352
	.quad	0x3fd51a47fbdf4308              # double 0.32972907635580428
	.quad	0x3fe026aa52077f66              # double 0.50471988698334935
	.quad	0x3fed825ef43fa3c6              # double 0.92216441826632756
	.quad	0x3fc9b3658223ff14              # double 0.20078724722406405
	.quad	0x3fc2310d421191b0              # double 0.14212194181449211
	.quad	0x3fd76b5e467d2e34              # double 0.36592823871316971
	.quad	0x3fe85a1ff365de98              # double 0.76100156344087377
	.quad	0x3fe7119f1cc337ce              # double 0.72090106599511627
	.quad	0x3fe901c3a1ae824c              # double 0.78146535471393852
	.quad	0x3fe573cf9402f777              # double 0.67038706692231542
	.quad	0x3feb257ce6737662              # double 0.84832615861860128
	.quad	0x3fd915ca217baf48              # double 0.39195493001783577
	.quad	0x3fe145165a470f0d              # double 0.53968351013506466
	.quad	0x3fd6fc424f5dc172              # double 0.35914666891678515
	.quad	0x3fa5a7dedb77c610              # double 0.042296375551711063
	.quad	0x3fed414da246c0d3              # double 0.91422158903699324
	.quad	0x3fef48841918a31a              # double 0.97760205175027015
	.quad	0x3fe61319e0aca24e              # double 0.68983167535504619
	.quad	0x3fc9624c9bc3ddf0              # double 0.19831235509603529
	.quad	0x3fe7809577e67022              # double 0.73444627206800228
	.quad	0x3fcd66517884bba0              # double 0.22968500504199785
	.quad	0x3fed2155f70fc436              # double 0.91031931165901514
	.quad	0x3fe9cfdaee645230              # double 0.80662294922746547
	.quad	0x3feb046fff8fb72c              # double 0.84429168619474159
	.quad	0x3fe3bf8746e284c0              # double 0.61712993473715727
	.quad	0x3fded20c9c15f938              # double 0.48157038920171003
	.quad	0x3fbb9ad7a4f69ba8              # double 0.10783145692276597
	.quad	0x3fe77e8c21f3cf1e              # double 0.73419767981838269
	.quad	0x3fd77fcdb946e4ca              # double 0.36717551320505193
	.quad	0x3fed2a51d3da37c8              # double 0.9114159715406851
	.quad	0x3fe37d210527353b              # double 0.6090245342872217
	.quad	0x3fe391517279638e              # double 0.61148903234708185
	.quad	0x3fb99431524da3a0              # double 0.099917490571569178
	.quad	0x3fe5ff2d6a4182d6              # double 0.68739958527666079
	.quad	0x3fda734c3b2c8ec4              # double 0.41328721789089351
	.quad	0x3feeef019d2654b7              # double 0.96667557423884076
	.quad	0x3fa1de2f00632920              # double 0.034898251340182762
	.quad	0x3fd707e1de1a16a2              # double 0.3598560971225685
	.quad	0x3fe103064784b77f              # double 0.53161920517389649
	.quad	0x3fed625b511b46a3              # double 0.91825643387911204
	.quad	0x3fe1196a4f125a2e              # double 0.53435244983376662
	.quad	0x3fed90c38bd3bffd              # double 0.92392136869420904
	.quad	0x3fec0ef7acc698cf              # double 0.87682708497302453
	.quad	0x3fe76c3673ce358a              # double 0.73195955866110407
	.quad	0x3fcf8da34d1bdee8              # double 0.24650994553643746
	.quad	0x3fe38170e780e723              # double 0.6095509072831401
	.quad	0x3fe7fe2e651a5f25              # double 0.74977798220331648
	.quad	0x3fee7047ad57b25b              # double 0.95120605331392072
	.quad	0x3fe9ecbfe5e6b6f5              # double 0.81015009787162617
	.quad	0x3fc4dd75fce56e58              # double 0.16300845001647946
	.quad	0x3fe8a22c75a13dfa              # double 0.76979659056263405
	.quad	0x3febc0b3b55767e8              # double 0.86727319162605188
	.quad	0x3faa599824bfbc20              # double 0.051464800344426687
	.quad	0x3fe10966a3f8cc91              # double 0.53239757562404766
	.quad	0x3fd8b750043e6a2c              # double 0.3861885110324319
	.quad	0x3feb0e826a5b3e4c              # double 0.84552117130983495
	.quad	0x3fce21b0a4a12394              # double 0.23540313757464715
	.quad	0x3fe1aa1a1b0e6104              # double 0.55201440128715307
	.quad	0x3fe27760d47c51a1              # double 0.57707253933999791
	.quad	0x3fcf40554a02e02c              # double 0.24415079225377789
	.quad	0x3fd7b21cdaa136a4              # double 0.37024613714752719
	.quad	0x3fabdf5d7b0b2980              # double 0.05443851592061133
	.quad	0x3fef3e7d701145fb              # double 0.97637817276171234
	.quad	0x3feb693ead42dd69              # double 0.85659726944042547
	.quad	0x3fe94806d4f72d3d              # double 0.79004232020216814
	.quad	0x3fdb2b94722dc2e0              # double 0.42453490400570892
	.quad	0x3fd876206b628f6a              # double 0.38220987784210669
	.quad	0x3fe3b22231459c47              # double 0.61549481986447396
	.quad	0x3fde40edcd61997a              # double 0.47271294647943984
	.quad	0x3fed92bcd288fdda              # double 0.92416230316296866
	.quad	0x3fe4e30ee31645f8              # double 0.65271705964022342
	.quad	0x3fda013a7110d4de              # double 0.40632496873452151
	.quad	0x3f96271521d61140              # double 0.021633463087270544
	.quad	0x3febed5a6c7d302e              # double 0.87272378148327845
	.quad	0x3fed0f3da1891e67              # double 0.9081104426376897
	.quad	0x3fd6334ebd8db37a              # double 0.34688156615339205
	.quad	0x3fee00c658fba77e              # double 0.93759457950112313
	.quad	0x3fde348451a4c68a              # double 0.47195537541401988
	.quad	0x3f816b4f55514440              # double 0.0085054586326426262
	.quad	0x3fa618428cf12370              # double 0.043153838829829705
	.quad	0x3fef04f91f1eb59f              # double 0.96935707166783291
	.quad	0x3fe585640ee3946e              # double 0.67253306301121341
	.quad	0x3fca5639e387581c              # double 0.20575641259955624
	.quad	0x3fe659503ea53893              # double 0.69840252147129644
	.quad	0x3fe153fbbc2d6b0d              # double 0.5415018725719577
	.quad	0x3fe967d2b84bd70d              # double 0.79392372126923905
	.quad	0x3fb9f5cb199934f8              # double 0.10140675902330887
	.quad	0x3fe29103c26f58f4              # double 0.58020198798729306
	.quad	0x3fe90038b8409599              # double 0.78127704607747994
	.quad	0x3fecb429e6382a34              # double 0.89699263539052376
	.quad	0x3fd25141bf2ae226              # double 0.28620952290251223
	.quad	0x3feae114f0652fd1              # double 0.83997580482673062
	.quad	0x3fec8369e6eb4705              # double 0.89104170895936419
	.quad	0x3fd75c50eb682b0c              # double 0.36500952710109469
	.quad	0x3f9955bd81370880              # double 0.024741135608345122
	.quad	0x3fdfba9c98105580              # double 0.49576487398129387
	.quad	0x3fca7f10c77217c0              # double 0.20700273264463753
	.quad	0x3fe9fe1ad5722f11              # double 0.81226865471532694
	.quad	0x3fef4799198b58f0              # double 0.97748999585271967
	.quad	0x3fe32f3567b077f3              # double 0.59951277019331284
	.quad	0x3fb0fa7d3d0e4ef0              # double 0.066322162061904555
	.quad	0x3fa7442a32d2e960              # double 0.045441931442342876
	.quad	0x3fe490b8bf697456              # double 0.64266621956961489
	.quad	0x3fdf6d76a8bd3eac              # double 0.49105612257424514
	.quad	0x3fd73a1a2fce6346              # double 0.36292128246855204
	.quad	0x3fdb23471e949f58              # double 0.42402818666822872
	.quad	0x3fe8114f84bbf306              # double 0.75211311268466896
	.quad	0x3fd4d8b196669d82              # double 0.32572593391019933
	.quad	0x3fedeaab4294727a              # double 0.93489611629372793
	.quad	0x3fd293a0648e6d62              # double 0.29026040859181113
	.quad	0x3fee6743dfffb364              # double 0.95010560750743566
	.quad	0x3fd308b0a49d6194              # double 0.29740539622937345
	.quad	0x3fc35b2606d2d34c              # double 0.15121913273983478
	.quad	0x3fe5ecf1330c53af              # double 0.68517360658971949
	.quad	0x3fd97ec0e761c3f8              # double 0.39836142154587106
	.quad	0x3f65651e241fa000              # double 0.0026116932576663032
	.quad	0x3fdc441b5a69f73c              # double 0.44165691213116864
	.quad	0x3fe12437dc4d8835              # double 0.53567116763975398
	.quad	0x3fea890fcbe0ebfc              # double 0.82923116512335992
	.quad	0x3fecf3e2e72a78d8              # double 0.90477128171530818
	.quad	0x3fe2f80a40cfbad1              # double 0.59277832659230445
	.quad	0x3fefed67dd3eea9d              # double 0.99773019039215038
	.quad	0x3fed877638e03782              # double 0.92278586491168846
	.quad	0x3fc7b312ac618968              # double 0.18515237252274663
	.quad	0x3fd1b9d159e4fab8              # double 0.27696641711001346
	.quad	0x3fddfc347d9f5d64              # double 0.4685183741362009
	.quad	0x3fe6e5a51f6c42ea              # double 0.71553283822330838
	.quad	0x3f9d1b7cbbdd6c60              # double 0.028425168005338342
	.quad	0x3fe04d83d5e2d6bf              # double 0.50946227812411127
	.quad	0x3fd0fcb9eea96962              # double 0.26542518908322255
	.quad	0x3fec3fec539e4b72              # double 0.88280311900812891
	.quad	0x3fe8810285f30b21              # double 0.76574827348699526
	.quad	0x3fdb1027fb15a28a              # double 0.42286109466525856
	.quad	0x3fb2133589d4d4e8              # double 0.070605608129728048
	.quad	0x3fe3a62ebdacb841              # double 0.61403595968091207
	.quad	0x3fc3a33f1f82e1a0              # double 0.15341939009318839
	.quad	0x3fb1f3e3478c8170              # double 0.070127682655316326
	.quad	0x3fe60c04b066b46e              # double 0.68896707967145487
	.quad	0x3fe51995b5880c3b              # double 0.65937314467772212
	.quad	0x3fc42aae92fa97ec              # double 0.1575525491400066
	.quad	0x3faff9577dc67120              # double 0.062449201682485134
	.quad	0x3f964d4c2d5a4e80              # double 0.021779241817581951
	.quad	0x3feaea0908685e01              # double 0.84106876031995637
	.quad	0x3fea550aece600d6              # double 0.82288118619183126
	.quad	0x3fe711504ee204e3              # double 0.7208634892159832
	.quad	0x3fe39c5732cba964              # double 0.6128345481968549
	.quad	0x3fe39dc18cfb903a              # double 0.61300733123471862
	.quad	0x3fe9caeb9b26e4d3              # double 0.80602054885016583
	.quad	0x3fd720dc94210b1e              # double 0.36138071504335467
	.quad	0x3febe915dcfb987a              # double 0.8722028080053541
	.quad	0x3fe9e809495db979              # double 0.80957474068945523
	.quad	0x3fe5d12f135e2f2a              # double 0.68178514273447388
	.quad	0x3fce204736c990e0              # double 0.23536005187191389
	.quad	0x3fa3a3bb407b86d0              # double 0.038358546849634245
	.quad	0x3fc163a5c6d40410              # double 0.13585350235374039
	.quad	0x3fe668378a128e72              # double 0.70022179572374754
	.quad	0x3fe3a17f245c1600              # double 0.61346394635683055
	.quad	0x3fd101ed1c898bcc              # double 0.26574256693691889
	.quad	0x3f9f767cc72a1280              # double 0.030725431114222435
	.quad	0x3fe277c277469128              # double 0.57711909576440679
	.quad	0x3fa9baf01a96e810              # double 0.050254348035608243
	.quad	0x3fe86fbe56e74764              # double 0.76364056561781668
	.quad	0x3fe7f71646dea462              # double 0.74891198961007555
	.quad	0x3fd6d95869c3c12c              # double 0.35701570824223228
	.quad	0x3feffe167968281b              # double 0.99976657593038298
	.quad	0x3febeb2f1fa7996e              # double 0.87245899374538083
	.quad	0x3fd297c0d9ad1496              # double 0.29051228768759907
	.quad	0x3fe47b921cc0ad52              # double 0.64008432021857176
	.quad	0x3fe98dd8d061aa96              # double 0.79856529902947915
	.quad	0x3fd7be72f692d092              # double 0.3709990890449798
	.quad	0x3fb42e61c2844788              # double 0.078832731236870512
	.quad	0x3fe71246ad267e47              # double 0.72098096674376044
	.quad	0x3fb170a2571d8b18              # double 0.068124910610589118
	.quad	0x3fdddffcdf43f082              # double 0.46679612925778013
	.quad	0x3fd025fb3dfca968              # double 0.25231820157445961
	.quad	0x3fde454c1b015936              # double 0.47297957074387698
	.quad	0x3fe762f95c49565b              # double 0.73083179497434558
	.quad	0x3fb23204373de1f8              # double 0.071075690733671482
	.quad	0x3fed820c5b877529              # double 0.92212503315719119
	.quad	0x3fb5a7693b05b008              # double 0.084585740003319754
	.quad	0x3fef05ff7f101726              # double 0.96948218171084899
	.quad	0x3fea9f88eae86690              # double 0.83197446709091771
	.quad	0x3fba680a0e45a8f8              # double 0.1031500134319322
	.quad	0x3fc1d7ef73ed96bc              # double 0.1394023243002972
	.quad	0x3fd5cc60e3f612b6              # double 0.34059927236402687
	.quad	0x3fa14232a1374d60              # double 0.033708173923197249
	.quad	0x3fcff95d27c02b68              # double 0.24979748192739781
	.quad	0x3fd6a0a36b63b826              # double 0.35355458724268585
	.quad	0x3fe83962e87734f1              # double 0.75700517085502217
	.quad	0x3fd7c92479ca5346              # double 0.37165176290118429
	.quad	0x3feac54e82dcf80d              # double 0.83658528861246995
	.quad	0x3fa02d95b35b8b80              # double 0.031597784179914434
	.quad	0x3fe2ce5e04d64b16              # double 0.58769131607764069
	.quad	0x3fe25328d31b33e8              # double 0.57265130263988073
	.quad	0x3fba2f62f4dbecf8              # double 0.10228556135182376
	.quad	0x3fe18e10c12eb0d4              # double 0.54859197359976486
	.quad	0x3fc296eb0c1fc290              # double 0.145230656547501
	.quad	0x3fe2935905bd1223              # double 0.58048678513347729
	.quad	0x3fdbb8e6fbbf0a60              # double 0.43316053948016098
	.quad	0x3fe607653d657ca7              # double 0.68840276710024717
	.quad	0x3fea128bf5abaea6              # double 0.81476400358720436
	.quad	0x3fed3570a831d937              # double 0.91277344561129936
	.quad	0x3fe9f1bf244ebe99              # double 0.81076008883788397
	.quad	0x3fb9647b1a659c90              # double 0.099189466423569294
	.quad	0x3fed5a04e572518b              # double 0.91723866285114874
	.quad	0x3fa130e20eac2e20              # double 0.033576072970472604
	.quad	0x3fcbd273b3771148              # double 0.2173599840445013
	.quad	0x3fd12a4766c9946e              # double 0.26820550000986187
	.quad	0x3feac92330231504              # double 0.83705291177526008
	.quad	0x3fe938b87ec80d02              # double 0.78817391168595941
	.quad	0x3fd61f9062fe900e              # double 0.34567651431484669
	.quad	0x3fe08db4e0caf530              # double 0.51729816346020208
	.quad	0x3fd0c186d08b68a6              # double 0.26181192746811133
	.quad	0x3fe65b769c55eeff              # double 0.69866495642006032
	.quad	0x3fc4ac91b40e3b44              # double 0.16151639262940354
	.quad	0x3fe57263accd5c6f              # double 0.67021354437282621
	.quad	0x3fd6c8af418fbcb0              # double 0.3559988155602225
	.quad	0x3fca55f02e3993f4              # double 0.20574762589527007
	.quad	0x3fe8df78fe287326              # double 0.7772793735526633
	.quad	0x3fefef5fc4eccf2c              # double 0.99797047101899272
	.quad	0x3fde1631b4e3f0de              # double 0.47010462441518353
	.quad	0x3fc67d6b4cc43288              # double 0.17570248840674574
	.quad	0x3fe25f386c10365c              # double 0.5741235838519958
	.quad	0x3fedb677dff00374              # double 0.92852395761302242
	.quad	0x3fd85cf1426c27ac              # double 0.38067275511331888
	.quad	0x3fe777fd0974cc61              # double 0.73339702460215161
	.quad	0x3feeaca5a53ace1b              # double 0.95857507964541655
	.quad	0x3fa49da83766ce90              # double 0.040265328181161242
	.quad	0x3fe0652cbec3fe78              # double 0.51235043772608346
	.quad	0x3fe9c9e3fd4cdcbd              # double 0.8058948466558814
	.quad	0x3fc2bb254235a898              # double 0.14633622868433771
	.quad	0x3fe4c5c9af213064              # double 0.64914402203568189
	.quad	0x3fd6c8584d1e6e24              # double 0.35597808390750374
	.quad	0x3feb3afb981fa6e1              # double 0.85095004760406934
	.quad	0x3fe042a2cd79d545              # double 0.50813427097333685
	.quad	0x3fe4f7e355c82c4b              # double 0.6552597690037002
	.quad	0x3fe135417f60651a              # double 0.53775095823508257
	.quad	0x3f8d9db92ebd27c0              # double 0.014460989703042659
	.quad	0x3fe10b96b62262b1              # double 0.53266463826283517
	.quad	0x3fe36ce0b7e69c8c              # double 0.60704074781541939
	.quad	0x3fc711f715328460              # double 0.18023575339342113
	.quad	0x3fea44432b30fef1              # double 0.82083280978983286
	.quad	0x3fed9f3b8430a37d              # double 0.92568755930288626
	.quad	0x3fa99aae3398e080              # double 0.050008243368609762
	.quad	0x3fdfb49a333f0e90              # double 0.49539809231303256
	.quad	0x3fd3e994e33d235c              # double 0.31113168898860066
	.quad	0x3fb8bf8fc60f9c98              # double 0.096672998289806578
	.quad	0x3feb9c511a9b4813              # double 0.86283164211841024
	.quad	0x3fc536b8a089e074              # double 0.1657324584846297
	.quad	0x3fe96dd2cbf1f569              # double 0.79465617974316871
	.quad	0x3f70aa71f2e7c680              # double 0.0040687991263311796
	.quad	0x3fd0467e2d6e4a50              # double 0.25430254398921637
	.quad	0x3fdb35775acd181e              # double 0.42513831965732318
	.quad	0x3fcc825584942ea8              # double 0.22272747968269369
	.quad	0x3fe6ca263752a121              # double 0.71217642598370301
	.quad	0x3feb9867f0c18ab1              # double 0.8623542501703324
	.quad	0x3fb9ace1964260a8              # double 0.10029420774879105
	.quad	0x3fdb31b2c3371124              # double 0.42490834297156455
	.quad	0x3fe48783ddb1a0a9              # double 0.64154237079221332
	.quad	0x3fbd3f634aff68d0              # double 0.11424847203253141
	.quad	0x3fc249e4e7696844              # double 0.14288007068063469
	.quad	0x3fb2dd843c2098c0              # double 0.073692574195407978
	.quad	0x3fd2ed7abe88916a              # double 0.29574459654602114
	.quad	0x3fe04f3e43ee2348              # double 0.50967324512121426
	.quad	0x3fe8911653d9acf7              # double 0.76771084191332661
	.quad	0x3fde9d52bf11772e              # double 0.47835224780088736
	.quad	0x3fdefc254aabcb60              # double 0.48413975040528179
	.quad	0x3fcd96bed7781040              # double 0.23116288681933561
	.quad	0x3fcb4fb064559f80              # double 0.21336941622871208
	.quad	0x3fdaf1ca9c6462a6              # double 0.42100777886074991
	.quad	0x3fda9308893eca1c              # double 0.41522420313700237
	.quad	0x3fdd171483cb9a5a              # double 0.45453369970929247
	.quad	0x3f9de9ff0c795ce0              # double 0.029212937485081691
	.quad	0x3fdc1fe0a782e508              # double 0.43944565161253069
	.quad	0x3fdfbde00c2c74be              # double 0.49596406163056972
	.quad	0x3fcf757eb838cd58              # double 0.24577316279610772
	.quad	0x3febdc37ed8ea1ec              # double 0.87063213727838961
	.quad	0x3f95ed0666fb7f40              # double 0.021411991153285514
	.quad	0x3fca74401587d250              # double 0.20667267848297621
	.quad	0x3fce139d201682cc              # double 0.2349735647849428
	.quad	0x3fea58fdf3b95908              # double 0.82336328127237923
	.quad	0x3fd474e3de76cb42              # double 0.31963440632823759
	.quad	0x3fe2630b1c345206              # double 0.57459025868098546
	.quad	0x3fd48577e0d0fa46              # double 0.32064625696867599
	.quad	0x3fe4af9014c6d677              # double 0.6464310079379193
	.quad	0x3fa1c8aff2c6a970              # double 0.034734247575516686
	.quad	0x3fe9d362f9aac682              # double 0.80705403102020079
	.quad	0x3fe832ef8f438f3a              # double 0.75621774655562679
	.quad	0x3fed5a583b686b3d              # double 0.91727840045073317
	.quad	0x3fe99e95ae9b94e1              # double 0.80060848334383306
	.quad	0x3fc7ce1e8e0d2cb4              # double 0.18597776352030382
	.quad	0x3fd503b57ce9ee18              # double 0.32835137556659921
	.quad	0x3fb1d05c25155050              # double 0.069585570386437867
	.quad	0x3fe297239aa38cf5              # double 0.58094959452537742
	.quad	0x3f971d8869237400              # double 0.022573596398490992
	.quad	0x3fc57c4dec92b630              # double 0.16785596896572619
	.quad	0x3fe8003ab14078b2              # double 0.75002798671245885
	.quad	0x3fa15a4a16d1ff70              # double 0.033891978536302214
	.quad	0x3fdd8440d05a2666              # double 0.46119709345712179
	.quad	0x3feeb984ea98b8d5              # double 0.96014638728754653
	.quad	0x3fe81ece84575b33              # double 0.75376058433434989
	.quad	0x3fe4fe47cb213d60              # double 0.6560400931720487
	.quad	0x3fd0557b2725e0ba              # double 0.25521735022585867
	.quad	0x3fb3a5c568afc918              # double 0.076748216684596193
	.quad	0x3fd8d7e0c279d2b6              # double 0.38817614547523804
	.quad	0x3fd74b09d974ddec              # double 0.36395498500811985
	.quad	0x3fe191b31d2036ae              # double 0.54903560341491242
	.quad	0x3fdad8b6cd2ecbf6              # double 0.41947717702276976
	.quad	0x3fe524dcf8a1a7e2              # double 0.66074989853700239
	.quad	0x3fec0b872d6e238e              # double 0.876407231074255
	.quad	0x3fb96c64f608b9f8              # double 0.099310216967502529
	.quad	0x3fd5ae1f9477c1de              # double 0.33875264643486769
	.quad	0x3fe8341f622d4dfa              # double 0.75636262107076324
	.quad	0x3fed6c542e6757cc              # double 0.91947373450488489
	.quad	0x3fe58f7bb8d16945              # double 0.67376504990833352
	.quad	0x3fde39f404065bb4              # double 0.47228718178797213
	.quad	0x3fdb5bd93ed991a6              # double 0.42748099458392586
	.quad	0x3fe0394bd551075a              # double 0.50699416793234353
	.quad	0x3fe5fb755d8c2795              # double 0.6869456126307677
	.quad	0x3fe4c05b93f8d29f              # double 0.64848116780065712
	.quad	0x3fd0de333c7fd082              # double 0.26356202037937504
	.quad	0x3fd2fb33e03b44ca              # double 0.29658219239815919
	.quad	0x3fdb2930a4b8d948              # double 0.42438903890742496
	.quad	0x3fd21fd0fe8a11de              # double 0.28319191796643206
	.quad	0x3f9555c09c1c5140              # double 0.020834931877361074
	.quad	0x3feae80fce20cdee              # double 0.84082784900095731
	.quad	0x3fe283db0f7e94d6              # double 0.57859566713582455
	.quad	0x3fd2a2e80f9fd7de              # double 0.29119302297419647
	.quad	0x3fe5898bbd338860              # double 0.67304026559237329
	.quad	0x3fc9396b2a255ac8              # double 0.19706477697282865
	.quad	0x3fc84eb57c32f638              # double 0.18990200580985728
	.quad	0x3fe9cfc7c2c0f5b1              # double 0.8066138080391082
	.quad	0x3fec631ddf33d441              # double 0.88709920496206263
	.quad	0x3fdb3244138903da              # double 0.42494298846946565
	.quad	0x3fe290cf854b2b93              # double 0.58017707857048817
	.quad	0x3fd23d603d006482              # double 0.2849960895269491
	.quad	0x3fd8a2371f359ab0              # double 0.38490083740036152
	.quad	0x3fe15ec043ba04ad              # double 0.54281628826006101
	.quad	0x3fe490aa8a86f587              # double 0.64265944534388175
	.quad	0x3fd3c7c1565d693a              # double 0.30906709131308541
	.quad	0x3fd658d3b9c3bd96              # double 0.34917157307696678
	.quad	0x3fd134a5b19381dc              # double 0.26883833257127576
	.quad	0x3fccf2f76e1129a4              # double 0.22616474985472934
	.quad	0x3fe30ecb4ff4fb7c              # double 0.5955559312495633
	.quad	0x3fef5013fb6dd4bd              # double 0.97852515322906408
	.quad	0x3fd67bfb2b3f4ff8              # double 0.35131720755930429
	.quad	0x3fcc0a29e62f576c              # double 0.21906017055033133
	.quad	0x3fe363ac916874dc              # double 0.60591724777227851
	.quad	0x3fd2ae87d600eeb2              # double 0.29190250300210174
	.quad	0x3fe1ac4efd36acff              # double 0.55228375869538116
	.quad	0x3f8ebe1aa7c3ff80              # double 0.015011032337951979
	.quad	0x3fdfafafba5fe84c              # double 0.49509804917000078
	.quad	0x3faf86119c18e050              # double 0.061569738678770691
	.quad	0x3fe98ebe45658ae6              # double 0.79867471269639334
	.quad	0x3fee68829ac6e27c              # double 0.95025758962499606
	.quad	0x3fedde64723ee852              # double 0.93339750589007964
	.quad	0x3fd58dbb004b6c5a              # double 0.33677554157993017
	.quad	0x3fd0782f31fa8630              # double 0.25733547096942555
	.quad	0x3fc9557597f0def8              # double 0.19792051238049857
	.quad	0x3fb38cabd4ca4b78              # double 0.076365222407089095
	.quad	0x3fd9229a1af32b42              # double 0.39273693687271216
	.quad	0x3fe773d6ac0f6738              # double 0.73289044957639415
	.quad	0x3fec4b15c04e72b6              # double 0.88416564521647589
	.quad	0x3fe6bd5dc6f7fa7d              # double 0.71061600552623327
	.quad	0x3fe18de8b9349b81              # double 0.54857288525532522
	.quad	0x3fd52b5d0380345a              # double 0.33077168790697942
	.quad	0x3fe4b1c9e7949bfb              # double 0.64670272093360326
	.quad	0x3fca3b7b995286ec              # double 0.20494027124828251
	.quad	0x3fd10482250119ce              # double 0.26590016950322315
	.quad	0x3fe1e203e1adce30              # double 0.55883974149623405
	.quad	0x3fed0fb7179d841b              # double 0.90816835987436961
	.quad	0x3fe319b9c875e4cf              # double 0.5968903460735876
	.quad	0x3fe4156628e00bb0              # double 0.62761219008858937
	.quad	0x3fef0ab6759ab93c              # double 0.97005770654303757
	.quad	0x3f9e25ea46ba9700              # double 0.029441509787509368
	.quad	0x3fedc374c3ee03a6              # double 0.93010938899543727
	.quad	0x3fdded5f0212115e              # double 0.46761298372464022
	.quad	0x3fd676161ec37548              # double 0.35095742229699001
	.quad	0x3fce769809e1304c              # double 0.23799419863132909
	.quad	0x3fb1eec27340bea0              # double 0.070049431932370343
	.quad	0x3fdcd982e379475e              # double 0.45077583517296727
	.quad	0x3fddc7629497b518              # double 0.46529449950215129
	.quad	0x3fc28e617035bedc              # double 0.14497011164666318
	.quad	0x3fd2a9a271ddaeca              # double 0.2916036712619926
	.quad	0x3fe881ef4f08a495              # double 0.7658611816051627
	.quad	0x3fe5dbcc34a2a429              # double 0.68308077125869204
	.quad	0x3fed95d93665fce9              # double 0.92454205155072799
	.quad	0x3fd9e44454c05c5a              # double 0.4045573070192795
	.quad	0x3febd3e89f0f19a0              # double 0.86961775842864952
	.quad	0x3fdf0b122345cad4              # double 0.48505071110336684
	.quad	0x3fb08257002b5c80              # double 0.064488828221657357
	.quad	0x3fb9e61be9846fb0              # double 0.101167435179774
	.quad	0x3fd45d5e34154740              # double 0.31819872938386951
	.quad	0x3fee0c5c5d2fcf38              # double 0.93900888634241308
	.quad	0x3fd799be602edb4a              # double 0.36875876801370977
	.quad	0x3fd62451d6e3918e              # double 0.34596677766082784
	.quad	0x3fe8df48448e9495              # double 0.77725613966016971
	.quad	0x3fedcd9ce1eddbe4              # double 0.93134922148498988
	.quad	0x3fe3d1a81cbef8bf              # double 0.61934285749864404
	.quad	0x3fe29323e52a1e65              # double 0.58046145209023037
	.quad	0x3facf3d066650c30              # double 0.056547653674464349
	.quad	0x3fe947b6d824117f              # double 0.79000417914407695
	.quad	0x3fc5a03c82d54c80              # double 0.16895252598132871
	.quad	0x3febe4e0590d2656              # double 0.8716890086445328
	.quad	0x3fee04531b797256              # double 0.93802790990919038
	.quad	0x3fd4d5a1180447be              # double 0.32553889603979858
	.quad	0x3fdcebc12b27a5b2              # double 0.45188931669562316
	.quad	0x3fe99d918e484d63              # double 0.80048444547211905
	.quad	0x3fee45bf234ebd49              # double 0.94601399322520152
	.quad	0x3fb9d2eaba14a950              # double 0.10087458651529357
	.quad	0x3fea20f9c00ef131              # double 0.81652534018897971
	.quad	0x3fd045135685d296              # double 0.25421603631483813
	.quad	0x3fe939d27bc5fa11              # double 0.78830837416154698
	.quad	0x3fd1bd528095f436              # double 0.27718031460955517
	.quad	0x3fd0e84a404f92be              # double 0.26417785911898395
	.quad	0x3fe49c48f5547a4c              # double 0.64407775798810851
	.quad	0x3fd20d8ee44779a0              # double 0.28207752507105432
	.quad	0x3fa779ab05342600              # double 0.045850128541200519
	.quad	0x3fe4f69f298d5584              # double 0.65510519137994594
	.quad	0x3fe9981898212df6              # double 0.79981641495527245
	.quad	0x3fc6435e1f8f8d30              # double 0.17393089810421136
	.quad	0x3fce2a4a8e6fd198              # double 0.23566562609597663
	.quad	0x3fd125e8393cc924              # double 0.26793866719812542
	.quad	0x3fb81aecddd866e0              # double 0.09416084686418058
	.quad	0x3fe75487e243cabc              # double 0.72906870071741237
	.quad	0x3fd8b5be41effa88              # double 0.38609272422028384
	.quad	0x3fc409b86040fcec              # double 0.15654663753409837
	.quad	0x3fde9fb9a957744e              # double 0.47849885499255584
	.quad	0x3fe22a8367a4944a              # double 0.56768961184264666
	.quad	0x3fdbb6402eac9676              # double 0.43299870069527147
	.quad	0x3feaba434b79e06e              # double 0.83523716679975535
	.quad	0x3febcd80d2aa7471              # double 0.8688358416144536
	.quad	0x3feee7b3b8b5985c              # double 0.96578394008680445
	.quad	0x3fef9dc00f5cf7b0              # double 0.98800662041298004
	.quad	0x3fe3b679c7b0fc07              # double 0.61602486612525886
	.quad	0x3feed9697251dd9b              # double 0.96403953865130931
	.quad	0x3febd3765520ef47              # double 0.86956326128663697
	.quad	0x3fedb9a7871901ed              # double 0.92891289125696874
	.quad	0x3fe4c1a0c93cf4af              # double 0.64863623909299928
	.quad	0x3fe8c3e865209ff5              # double 0.77391452552274009
	.quad	0x3fd4bfa5d246dd52              # double 0.32419724974484609
	.quad	0x3fe87f9c66eb2873              # double 0.76557750798498458
	.quad	0x3fdc45303c3782ae              # double 0.44172292595434726
	.quad	0x3fe69216d9d5bbc1              # double 0.70533316179159311
	.quad	0x3fd6d5c4557ddfd2              # double 0.35679729794310078
	.quad	0x3fe0b4e55744eacd              # double 0.52208201451079506
	.quad	0x3fd555f9906c7a72              # double 0.3333724890125388
	.quad	0x3fe85ec883314417              # double 0.76157022117161233
	.quad	0x3fee0143d125b4d0              # double 0.93765440796928523
	.quad	0x3fd53a14ea9d9fb2              # double 0.33167002593699657
	.quad	0x3fe47ea538ff53b2              # double 0.64045964367197983
	.quad	0x3f9413aab80892e0              # double 0.019606273157608878
	.quad	0x3fc4afe5d5107b24              # double 0.16161797431501512
	.quad	0x3fb0a53cc19f24a0              # double 0.065021321555053024
	.quad	0x3fedf68b95d1c43b              # double 0.93634585630036982
	.quad	0x3fe3b8ee006771d0              # double 0.61632442549631072
	.quad	0x3fb9f8c772b92350              # double 0.10145231772288565
	.quad	0x3fe3dcd305f7cc3e              # double 0.62070609250657305
	.quad	0x3fdc54da6f268682              # double 0.44267903189220459
	.quad	0x3fe552f6eb6019c3              # double 0.66637750598675216
	.quad	0x3fc5eeeedb8549d4              # double 0.17135415762693518
	.quad	0x3fddac96175f15d8              # double 0.46365883142820286
	.quad	0x3fd837d992ade282              # double 0.37840880703110014
	.quad	0x3feda8cc069a3b4d              # double 0.92685509957832724
	.quad	0x3fca658ea3dc7e08              # double 0.20622427941360422
	.quad	0x3fd103ecb5f36f46              # double 0.26586454170841411
	.quad	0x3fe60a4fac4b34b7              # double 0.68875869418265878
	.quad	0x3fec14848566b072              # double 0.87750459723385021
	.quad	0x3fef3f1ce4425d8c              # double 0.97645420629389567
	.quad	0x3fb1c21d63324408              # double 0.069368206708773639
	.quad	0x3fd20eef3f4dbeea              # double 0.28216153318406489
	.quad	0x3fe0d81df0724846              # double 0.52638146364393701
	.quad	0x3fee6c3e030e42da              # double 0.95071316334550748
	.quad	0x3fbe9efa17f0f238              # double 0.11961329540731291
	.quad	0x3fe45f128e338a3f              # double 0.63660552762696188
	.quad	0x3fe671d7c3261bbb              # double 0.70139682879459231
	.quad	0x3fca08da3c0d2e8c              # double 0.20339515621377691
	.quad	0x3f895820bd7e4d40              # double 0.012375121863249405
	.quad	0x3fe4059ead6890b8              # double 0.62568601483191966
	.quad	0x3fedffa48f06fee3              # double 0.93745639739060171
	.quad	0x3fe0795ae1b2cb9c              # double 0.51481384355280424
	.quad	0x3fe826d435d5df59              # double 0.75473986162885887
	.quad	0x3fe15dab451c3691              # double 0.54268420694434572
	.quad	0x3fe81e5b7cf2d7f9              # double 0.75370573429131504
	.quad	0x3fb6b1cdf8cc7af8              # double 0.088650582544214873
	.quad	0x3fe8a95e9ee79035              # double 0.77067500148814949
	.quad	0x3fd1c8e4d456208a              # double 0.27788658843974956
	.quad	0x3fdf20c7b62dd580              # double 0.48637573996469285
	.quad	0x3fc0d282637ef9dc              # double 0.13142423494532707
	.quad	0x3fa51e5b64043b00              # double 0.041247230490730757
	.quad	0x3fde6b2d140c2768              # double 0.4752915092254768
	.quad	0x3fd3b4afe4a70a8c              # double 0.30790326432558213
	.quad	0x3fe6a27b4aef57b0              # double 0.70733418117264613
	.quad	0x3fedf31e80e9f06f              # double 0.93592763117295685
	.quad	0x3fea9e5d8fc4d911              # double 0.83183172302122632
	.quad	0x3fd335c4d63f0926              # double 0.30015679285510755
	.quad	0x3fe29537b4828188              # double 0.58071503883188402
	.quad	0x3fef5de8ebc89d12              # double 0.98021360446446892
	.quad	0x3f66c5a589a1eb00              # double 0.0027797921330238173
	.quad	0x3fd3ff8e2240c756              # double 0.31247285218261334
	.quad	0x3feaeb209d398d42              # double 0.8412020750805953
	.quad	0x3fec180e52bfc322              # double 0.87793651735237099
	.quad	0x3fe014c940d2b03f              # double 0.50253737126104869
	.quad	0x3fe1e8f98a43f605              # double 0.55968930249190463
	.quad	0x3fc56d258b3747cc              # double 0.16739339158681188
	.quad	0x3feb82ef943fdf01              # double 0.85973338084201611
	.quad	0x3fd865e7d873177c              # double 0.38121982705739987
	.quad	0x3fe389973c295619              # double 0.61054574728285893
	.quad	0x3feb0c41e2accda3              # double 0.84524626038039619
	.quad	0x3fe3b4a0bc46c1da              # double 0.61579930088742718
	.quad	0x3fd90e3a7e46a980              # double 0.39149343806879955
	.quad	0x3fde9ec9b7291ffa              # double 0.47844164740354211
	.quad	0x3fe4075788d8f5c7              # double 0.62589623191859622
	.quad	0x3fda73158535a8ba              # double 0.41327417382002418
	.quad	0x3fe608a3f68f631e              # double 0.68855474621077284
	.quad	0x3fe8ed1d981a1323              # double 0.77894477565186937
	.quad	0x3fc197d405af4a70              # double 0.13744592931341826
	.quad	0x3fe2261f646dc01d              # double 0.56715364088995879
	.quad	0x3feff4e81863cf25              # double 0.99864582790039391
	.quad	0x3fd573b6b22e6cdc              # double 0.33518760109445878
	.quad	0x3fef0235b3b603a3              # double 0.96901974773219412
	.quad	0x3fea733bfbb6dac4              # double 0.82656668818420842
	.quad	0x3fdba696bf9ad63a              # double 0.43204277717027006
	.quad	0x3fdc124ea9ddcb22              # double 0.43861738766206504
	.quad	0x3fa0e5dc8164e030              # double 0.033003702922031031
	.quad	0x3fd5306a9d0142ac              # double 0.33108010609161442
	.quad	0x3f6f4af8505dd000              # double 0.0038199281579469613
	.quad	0x3fcfe237e99a73f4              # double 0.2490911379472035
	.quad	0x3fe62caa0dce5836              # double 0.69295218178263585
	.quad	0x3fda4e29c09140be              # double 0.41102069669160446
	.quad	0x3fe9e199b4362733              # double 0.80878911206784776
	.quad	0x3fe41b20f0e4155f              # double 0.62831160592092405
	.quad	0x3fe2c87568539097              # double 0.58697004677061926
	.quad	0x3fdc11d4ca8ff124              # double 0.43858833104583739
	.quad	0x3fef3363bb0f1b67              # double 0.9750231412407232
	.quad	0x3fcc81516e453c3c              # double 0.22269647487925848
	.quad	0x3fd1d095a030c02e              # double 0.27835598605725209
	.quad	0x3feb2045b67d0a0a              # double 0.8476894916751132
	.quad	0x3fd8327e4599cc34              # double 0.3780818633742371
	.quad	0x3fe12cece96a6e0b              # double 0.53673406209003482
	.quad	0x3fde80f46474fa88              # double 0.47662076769112405
	.quad	0x3fe7d9cb07fc1943              # double 0.74533607062839058
	.quad	0x3fccfdf7ffa720b8              # double 0.22650051100777602
	.quad	0x3fe977d39e64cba9              # double 0.79587727485919857
	.quad	0x3fe9549e15b8674e              # double 0.79157928697825652
	.quad	0x3fe06cd1f4726344              # double 0.51328370803376133
	.quad	0x3fd9ff99b25f872c              # double 0.40622560900929972
	.quad	0x3fe45569e3604d78              # double 0.63542646798525393
	.quad	0x3fe611aa58e9701e              # double 0.68965642324065235
	.quad	0x3fe0a6f91ce3b6a1              # double 0.52038245813828976
	.quad	0x3fe8603119b9b410              # double 0.76174216293805053
	.quad	0x3fd4002847387aec              # double 0.3125096030725405
	.quad	0x3fb01ef03466f9b0              # double 0.062972080987470092
	.quad	0x3fdf812cc19b4f6a              # double 0.49225920588400263
	.quad	0x3fb2a8ef38da6c30              # double 0.072890235309771567
	.quad	0x3fdd49a4974f8d08              # double 0.45761980797233592
	.quad	0x3fca4a1860adea44              # double 0.20538620682403252
	.quad	0x3fe29d1db559657d              # double 0.5816792051293046
	.quad	0x3febc22ec524446e              # double 0.86745394233925111
	.quad	0x3fa6a6669c9781c0              # double 0.044238287558758582
	.quad	0x3fec81a4644c7fda              # double 0.89082545842756677
	.quad	0x3fdb2a44e4811808              # double 0.42445490183706669
	.quad	0x3feaecf782269564              # double 0.84142661495267789
	.quad	0x3fd6a7711519c07c              # double 0.35396983204464738
	.quad	0x3fe3e5dee60c80f6              # double 0.6218103879109822
	.quad	0x3fce74d1a1cbbb44              # double 0.23794002914606882
	.quad	0x3fa2a1c71e88ebf0              # double 0.036390516736410805
	.quad	0x3fe0af8d61eee28a              # double 0.52142972114150266
	.quad	0x3febd979314a1bce              # double 0.87029704691746601
	.quad	0x3fda6b31efce35e6              # double 0.41279266756541089
	.quad	0x3fe2d42fc527906b              # double 0.5884016848253969
	.quad	0x3fe881a0254025a3              # double 0.76582343364241401
	.quad	0x3fbec627a45dae20              # double 0.12021110308494842
	.quad	0x3fd1983926b349d0              # double 0.27491596965151377
	.quad	0x3fc823edc19497f4              # double 0.18859645797891711
	.quad	0x3fe2c49d40384611              # double 0.58650076430257247
	.quad	0x3faba60d59ecc950              # double 0.05400125239102016
	.quad	0x3fe2f6061a85c4b4              # double 0.5925322073000161
	.quad	0x3feead06e1ae2166              # double 0.95862144544757366
	.quad	0x3fef72c08e7f5ae7              # double 0.9827578337816164
	.quad	0x3fed1a885c7afa89              # double 0.90948885023665682
	.quad	0x3fdee6df8827c642              # double 0.48284138008520838
	.quad	0x3fe6d5e161c4d64d              # double 0.71360844703185367
	.quad	0x3fde0842be288524              # double 0.46925419397492107
	.quad	0x3fefd04570e8d038              # double 0.99417373707411282
	.quad	0x3fed831be1486a9f              # double 0.92225450516282936
	.quad	0x3fc20e12eeee47a4              # double 0.14105450312177681
	.quad	0x3fac693500e19b00              # double 0.055490166051461287
	.quad	0x3fe3c07cf8ab4c22              # double 0.61724709098996677
	.quad	0x3fe29579728e058e              # double 0.58074638723353345
	.quad	0x3fd5fc4c7a199174              # double 0.34352409290138231
	.quad	0x3fdc381802a1b4e2              # double 0.44092369324682867
	.quad	0x3feabf8f1a30f500              # double 0.83588366618610621
	.quad	0x3fbca97a9511c760              # double 0.11196104182616073
	.quad	0x3fe97e6dc98753f3              # double 0.79668321000155939
	.quad	0x3fecffcd34124a12              # double 0.90622577829555184
	.quad	0x3fc4c99de7ee0ae0              # double 0.16240285706233859
	.quad	0x3fe8ea46773aea15              # double 0.77859805380950553
	.quad	0x3fe7c186362a1655              # double 0.74237356738076221
	.quad	0x3fee508274a0d966              # double 0.94732783106773577
	.quad	0x3f8a51f67a54b540              # double 0.012851644142382157
	.quad	0x3fce5c3b15a8ded8              # double 0.23718966062164415
	.quad	0x3fbce9634d6aa908              # double 0.11293621673636178
	.quad	0x3fe9bee31bec5ea5              # double 0.80455165342114709
	.quad	0x3fe0e0512cc2c103              # double 0.52738245718322252
	.quad	0x3f9a0dff6bba8700              # double 0.025444022131188682
	.quad	0x3fcd532d602d8fb8              # double 0.22910086818876407
	.quad	0x3fec273ba66e9d22              # double 0.87978918558375008
	.quad	0x3fde936b96f838c0              # double 0.47774781935812527
	.quad	0x3fd12e6e09b4b17a              # double 0.26845885227046262
	.quad	0x3fd90f0601642416              # double 0.39154195915085788
	.quad	0x3fd15029e4c637c2              # double 0.27051780072440235
	.quad	0x3feb8aafaa01f660              # double 0.86067946629163927
	.quad	0x3fecdd2f1c92a75a              # double 0.90200000363004595
	.quad	0x3fefcceb68291bb0              # double 0.99376459449637444
	.quad	0x3fe7b615a4672bc1              # double 0.74097711667979393
	.quad	0x3fbc6e9afa636778              # double 0.11106270421023889
	.quad	0x3fd2451a0ccc7e58              # double 0.28546763658412067
	.quad	0x3fb1a3113d3413a0              # double 0.068894460146181391
	.quad	0x3fd56c3b028e74a8              # double 0.33473086595206292
	.quad	0x3fe08be3ad59ffda              # double 0.51707633836485489
	.quad	0x3fed4ccd2bd0fbb7              # double 0.91562517698172641
	.quad	0x3fde76890ebed2dc              # double 0.47598482551556542
	.quad	0x3fa11ecafe23f5a0              # double 0.033438056490904033
	.quad	0x3fef45ae625f2fa4              # double 0.97725600445982196
	.quad	0x3fe03d8f33972d8b              # double 0.50751457287098967
	.quad	0x3fe4d0edd85d1698              # double 0.65050403841515259
	.quad	0x3fcb38dc83849cb0              # double 0.21267277166154974
	.quad	0x3fe6e8e7f455cbcb              # double 0.71593091699320988
	.quad	0x3fe3f42d4debc3ba              # double 0.62355675906120855
	.quad	0x3fe71ebe8efb133f              # double 0.72250297475748215
	.quad	0x3feda3884471807e              # double 0.92621243827672095
	.quad	0x3fd39f156b2420a0              # double 0.30658469641685748
	.quad	0x3fe7d7a2bfa806b5              # double 0.74507272179490391
	.quad	0x3fce7fb5270ccd74              # double 0.2382723274873616
	.quad	0x3fd68f889051e438              # double 0.35251058667887802
	.quad	0x3fa1a4e7f50463a0              # double 0.034461258563346364
	.quad	0x3fe4988e7f2450a5              # double 0.64362263519662533
	.quad	0x3fec60251aa92525              # double 0.88673644263431994
	.quad	0x3fe7e78a0712f194              # double 0.74701405889168138
	.quad	0x3f9eb4d343506480              # double 0.029986668571016839
	.quad	0x3fc23f01e11dd2fc              # double 0.14254783145920402
	.quad	0x3fe24ac63b449cfe              # double 0.57162772727761513
	.quad	0x3fdaa9107ab3bbea              # double 0.41656887037873835
	.quad	0x3fe3b4c19240c488              # double 0.61581495823897203
	.quad	0x3fdf620e1b4c76e2              # double 0.49035980859649275
	.quad	0x3fe78d08c382a9ed              # double 0.7359660929262738
	.quad	0x3fe7e13159e402e9              # double 0.74623935276767128
	.quad	0x3fd8eef48c42721e              # double 0.38958467194768953
	.quad	0x3fee3e9466802aa6              # double 0.945139122196754
	.quad	0x3fe1cd62c25b9913              # double 0.55632150612362563
	.quad	0x3fe60ed76b952231              # double 0.6893117047521341
	.quad	0x3fb44f9cd0f34b60              # double 0.079339791310571339
	.quad	0x3fef77da8ef7c0e4              # double 0.98338058398624328
	.quad	0x3fe1663f8b328658              # double 0.5437314718912587
	.quad	0x3fedf458bb8a4f46              # double 0.93607746724090002
	.quad	0x3fe18da4f7d759ed              # double 0.5485405769966839
	.quad	0x3fd00278bdee6d90              # double 0.25015085742935472
	.quad	0x3fd70c5c296b9728              # double 0.36012939495991469
	.quad	0x3fee869874177bd4              # double 0.95393011736075061
	.quad	0x3fde32c1d99dfb60              # double 0.47184797527000022
	.quad	0x3fd73dce1fc301e8              # double 0.36314728833897769
	.quad	0x3fe483be6f6e136d              # double 0.64108201755207761
	.quad	0x3febfbf710ddade5              # double 0.87450745863082757
	.quad	0x3fda7da6dcb2b8ee              # double 0.41391917755653551
	.quad	0x3fd53ce0d7a7f6ec              # double 0.33184071598212372
	.quad	0x3fec08259c6bcca8              # double 0.87599449683184094
	.quad	0x3fe5dfcf24a2dc25              # double 0.68357045321943544
	.quad	0x3fd2f10fdeec8716              # double 0.29596325654903077
	.quad	0x3fddb05090188078              # double 0.46388639518591601
	.quad	0x3fe4858d6f2e68c6              # double 0.6413027926930901
	.quad	0x3fdf5daa32de01de              # double 0.49009184806348383
	.quad	0x3fea239be2760738              # double 0.81684679251359338
	.quad	0x3fc5d47736dba9b0              # double 0.17054643801323044
	.quad	0x3fe7fcffac77f47c              # double 0.74963363347309508
	.quad	0x3fd4d8116e3f81da              # double 0.3256877495423659
	.quad	0x3fb4824bc9b26730              # double 0.080113159887699181
	.quad	0x3fe1833dff61f707              # double 0.54727077369145227
	.quad	0x3fe2e46260bc874c              # double 0.59037894147716363
	.quad	0x3fad060239cb5010              # double 0.056686467699961551
	.quad	0x3fed6a15724e2911              # double 0.91919967961556115
	.quad	0x3fde44aa154549ce              # double 0.4729409415932907
	.quad	0x3feba7a0dd9ef0b2              # double 0.86421244893383276
	.quad	0x3fe810bfa85a8179              # double 0.75204451448011789
	.quad	0x3fcbef46b98689d0              # double 0.2182396322142055
	.quad	0x3fe4dccfcfb0136b              # double 0.65195456089041437
	.quad	0x3fe3aab10b07fdae              # double 0.61458637384924031
	.quad	0x3fed42ff57bf8401              # double 0.91442839754392946
	.quad	0x3fee0c3e310c5033              # double 0.9389944990130118
	.quad	0x3fd42026168968b0              # double 0.3144622058949933
	.quad	0x3fe637240999a2eb              # double 0.69423105120685358
	.quad	0x3fa6cf442c419610              # double 0.044550066377990416
	.quad	0x3fe7dcdd892b5d58              # double 0.7457111052598675
	.quad	0x3fa9e694d69458a0              # double 0.050587321466239787
	.quad	0x3fd34bbf4645ac94              # double 0.30149824011341164
	.quad	0x3fefae6a81a9bb95              # double 0.99004102062996202
	.quad	0x3fd4b3ed6544a8d2              # double 0.32348189248535875
	.quad	0x3fb941068791f250              # double 0.098648460481805644
	.quad	0x3fd852679c6d5b54              # double 0.38002958561030664
	.quad	0x3fef9d04e2153044              # double 0.98791736752310344
	.quad	0x3feab72892ae70b1              # double 0.83485821388923942
	.quad	0x3faad86748e4aa60              # double 0.052432277343844147
	.quad	0x3fc44b256b9fe8a4              # double 0.15854327921971845
	.quad	0x3fe98edc7780f6ba              # double 0.79868911114291241
	.quad	0x3fce75c40e9c0c04              # double 0.2379689284644827
	.quad	0x3fe23274f422ef30              # double 0.56865928347494865
	.quad	0x3fefd922343bd62a              # double 0.99525556756879507
	.quad	0x3fe6d9bfef59a8d1              # double 0.71408077953426574
	.quad	0x3fe61ef9fb1e582c              # double 0.69128130957210976
	.quad	0x3fe914368e4613df              # double 0.78371742046203596
	.quad	0x3fec1e73e01806ee              # double 0.87871736305552672
	.quad	0x3fedb5b99d19bada              # double 0.92843323405926559
	.quad	0x3fdb3a56f313e880              # double 0.42543576944411399
	.quad	0x3fa5a624a9209790              # double 0.04228319706480399
	.quad	0x3fd0b7a8a3f775cc              # double 0.26120964062087348
	.quad	0x3fe88b8eadc5e0e8              # double 0.76703580799133153
	.quad	0x3fd6d28d091c4a34              # double 0.35660100831697439
	.quad	0x3fe340d2e7c52cb2              # double 0.6016630675088861
	.quad	0x3fae47726b076a90              # double 0.059138846936282907
	.quad	0x3fd2adabeed379ae              # double 0.29185007403239183
	.quad	0x3fb93cbf48d0ace8              # double 0.098583178784497627
	.quad	0x3fef9b586615b173              # double 0.98771305025506561
	.quad	0x3fbbf62a5a673a60              # double 0.10922493655309884
	.quad	0x3fd7ddc481405192              # double 0.37291061994735586
	.quad	0x3fee02633e4c21de              # double 0.9377914635415967
	.quad	0x3fe3e7b4942aeea0              # double 0.622034348859831
	.quad	0x3fd2a9c450b56c36              # double 0.29161174661357181
	.quad	0x3fcf843bbe1832dc              # double 0.24622294218024521
	.quad	0x3fd6b957f7fea3f0              # double 0.35506247728568407
	.quad	0x3fd830784a5d2f70              # double 0.37795836698636887
	.quad	0x3fe5e8063c9efe07              # double 0.68457328643847937
	.quad	0x3fd88440d2ae175c              # double 0.38307209562514344
	.quad	0x3fe8e42bb277c64a              # double 0.77785286767011397
	.quad	0x3fd10af441789258              # double 0.26629358667040526
	.quad	0x3fe3045b5f86a0bd              # double 0.59428185136223244
	.quad	0x3fe74750b9b4ae42              # double 0.72745548506413393
	.quad	0x3fd533e297e71dac              # double 0.33129181703813049
	.quad	0x3fb52da775d97dd8              # double 0.082727876922482735
	.quad	0x3f9a16ac799488c0              # double 0.025477118416468825
	.quad	0x3fdc60e0ccdb313c              # double 0.44341297154894099
	.quad	0x3fe1a4dba8c969c0              # double 0.55137427297750463
	.quad	0x3f8c296824694140              # double 0.013750852214031384
	.quad	0x3fbf8e1ece89bb18              # double 0.12326233427459632
	.quad	0x3fe73aeb9b2008e7              # double 0.72594242380025953
	.quad	0x3fe90f67089ea0fa              # double 0.78313018497013265
	.quad	0x3feb5e965e3e2454              # double 0.85529631048951637
	.quad	0x3fe75cee4a24563b              # double 0.73009409409377868
	.quad	0x3fd77494747ca180              # double 0.36649047256153011
	.quad	0x3fe8b87673b41823              # double 0.77251741979921851
	.quad	0x3fe1350ddeb39ef0              # double 0.53772634025969346
	.quad	0x3fcd6a84e34f017c              # double 0.22981320475629363
	.quad	0x3feca56b3397a852              # double 0.8951927192367839
	.quad	0x3fe481affe971d29              # double 0.64083099102655183
	.quad	0x3fc84540680eba7c              # double 0.18961339074072103
	.quad	0x3fe03b98d115a0ab              # double 0.50727501713574463
	.quad	0x3f92504292c185a0              # double 0.01788429280020909
	.quad	0x3fd91befd69c0cf6              # double 0.39233013112989512
	.quad	0x3fbc4660648de970              # double 0.11044886069240589
	.quad	0x3fd62dc9dfeccfd4              # double 0.34654471271209997
	.quad	0x3fe9bbcbd17f15bf              # double 0.8041743365981161
	.quad	0x3fe51867f11466ce              # double 0.65922925077321692
	.quad	0x3fd7125080228110              # double 0.36049282563364304
	.quad	0x3fc9c43062bfb6d4              # double 0.20129971334193064
	.quad	0x3fda8e5db31265ae              # double 0.41493933188902588
	.quad	0x3fd290977c9ec71a              # double 0.29007517976707364
	.quad	0x3fe875f9f1bd3c44              # double 0.76440140928924238
	.quad	0x3fd427e48d189f28              # double 0.31493486193584141
	.quad	0x3fd3f47e52e131c6              # double 0.31179769605367047
	.quad	0x3fbcad952103fce0              # double 0.11202365928692215
	.quad	0x3fc68a57438e7394              # double 0.17609682844786489
	.quad	0x3fc3e4b372bd54bc              # double 0.15541689970510741
	.quad	0x3fec778dc574f46e              # double 0.88959396901885923
	.quad	0x3f8b063be0dcbd00              # double 0.013195483970405153
	.quad	0x3fd80e482859b5e4              # double 0.37587169590446323
	.quad	0x3fb3b6fb1071cf50              # double 0.077010814204013344
	.quad	0x3fedbc2e3571aa34              # double 0.92922125280649092
	.quad	0x3feeb62f7bd67f18              # double 0.95973943888745605
	.quad	0x3f98e7a98eaf6bc0              # double 0.024321221669975079
	.quad	0x3feadf06196cc17f              # double 0.83972458806788086
	.quad	0x3f997f676524f720              # double 0.024900069759716037
	.quad	0x3fe5c53eb3a47b55              # double 0.68032775007655266
	.quad	0x3fe57ee676e11ba7              # double 0.67174075335139072
	.quad	0x3fda4e237648e7bc              # double 0.41101919699905998
	.quad	0x3fd98cfb7bc26ade              # double 0.39922988019831773
	.quad	0x3feb5712c976cadc              # double 0.85437907551235126
	.quad	0x3feea762e0ea9579              # double 0.95793289116833968
	.quad	0x3fd78fed58816a08              # double 0.3681596149741897
	.quad	0x3fdc1d498e2eea38              # double 0.43928755650600548
	.quad	0x3fbecd925eb2e1d0              # double 0.12032427608472251
	.quad	0x3fea51445be3c98a              # double 0.82242029139733686
	.quad	0x3fe867bb4f991f2b              # double 0.76266255899915814
	.quad	0x3fb7f2e6eca0c598              # double 0.093550141115676388
	.quad	0x3fe03af479a84fe6              # double 0.50719665299629635
	.quad	0x3f928884b8081aa0              # double 0.018098901493454833
	.quad	0x3fe6d1c5f2a2c6e4              # double 0.71310708417715007
	.quad	0x3fdf821756485690              # double 0.49231513429672535
	.quad	0x3f99b3f84b507100              # double 0.025100593182387776
	.quad	0x3fdcd28dbc365328              # double 0.45035117511842992
	.quad	0x3f9ad0bdad62b4a0              # double 0.026186908443084023
	.quad	0x3feb9fc76c73e40b              # double 0.86325427229087504
	.quad	0x3fe1be928cf10323              # double 0.55451324012401348
	.quad	0x3fac011be1616460              # double 0.054695960294971924
	.quad	0x3fde3f4776946892              # double 0.47261225299883691
	.quad	0x3f775b855c1cd000              # double 0.0057025155418166662
	.quad	0x3feba917bb56822d              # double 0.86439119901121375
	.quad	0x3fe2cd85f91a9c7b              # double 0.58758829739680551
	.quad	0x3fe510ce4d3e1c5f              # double 0.65830149733018206
	.quad	0x3fadf33bca6bbf30              # double 0.058496349773007217
	.quad	0x3f9a8ac71b7fc1e0              # double 0.025920020154389323
	.quad	0x3fdc5c60f41e2834              # double 0.44313834991101264
	.quad	0x3febf400fc35e12a              # double 0.87353562602860291
	.quad	0x3feb191ccc2dea04              # double 0.84681548956660934
	.quad	0x3fe1ebd4e866fcd9              # double 0.56003804579804772
	.quad	0x3fdcf70b7fb51d04              # double 0.45257842513497359
	.quad	0x3fe2c499d42369c1              # double 0.58649913247364094
	.quad	0x3fec4ad866de7341              # double 0.8841363915595154
	.quad	0x3fec60b2a4e0778f              # double 0.8868039341211772
	.quad	0x3fc564f079043d10              # double 0.16714292439471778
	.quad	0x3fd9d1e672a5fe0e              # double 0.4034362907040937
	.quad	0x3fe87800a7b4ed21              # double 0.7646487498781519
	.quad	0x3fee07fdb16ae281              # double 0.93847546245440594
	.quad	0x3feb19c24de5c1b2              # double 0.84689440931656734
	.quad	0x3fe61497e5905c49              # double 0.69001383625698864
	.quad	0x3fe654a3850b0462              # double 0.69783187851875206
	.quad	0x3fd24749875ef032              # double 0.28560102672395538
	.quad	0x3fcfe27b9e33c7c4              # double 0.24909920906753602
	.quad	0x3fe274405e317071              # double 0.57669084927648673
	.quad	0x3febdc6aa71e3119              # double 0.87065632477018362
	.quad	0x3f9d2daa3b752500              # double 0.028494510535243656
	.quad	0x3fe3b60c2c9b5024              # double 0.61597260200733617
	.quad	0x3fe0817a2be3c540              # double 0.51580532619679076
	.quad	0x3fd8490b2bdf2ec8              # double 0.3794582298694249
	.quad	0x3fe8a9ed306d649c              # double 0.77074298342190017
	.quad	0x3febf9368fb9b81c              # double 0.87417152472858417
	.quad	0x3fe0f66d74dc02f8              # double 0.5300814897928765
	.quad	0x3fe2f2798187ce9b              # double 0.59209895419049319
	.quad	0x3feb9ff5ad10e279              # double 0.86327632715172264
	.quad	0x3fe5dfd6b73e3915              # double 0.68357406415614952
	.quad	0x3fec3253572a7aa0              # double 0.88114325546833427
	.quad	0x3fb939b1acf88bb0              # double 0.098536591271609408
	.quad	0x3fe76da186b389e7              # double 0.73213268574573653
	.quad	0x3f974d0715848220              # double 0.02275477475007126
	.quad	0x3fe492a3408d036f              # double 0.64290011031708427
	.quad	0x3fdc434b1f4557b4              # double 0.4416072659854493
	.quad	0x3fb43351eff49df0              # double 0.078908082087415953
	.quad	0x3fe8c0e3e6e70dba              # double 0.77354617212443277
	.quad	0x3fea9d169a04c65c              # double 0.83167581636207499
	.quad	0x3fdccb930b6e2a06              # double 0.44992519489520111
	.quad	0x3fe225da29bc0715              # double 0.56712062979952071
	.quad	0x3feae7539d220c56              # double 0.84073811235465246
	.quad	0x3fbec394564b6938              # double 0.12017180544663553
	.quad	0x3faedc3812d9cf80              # double 0.060273887921453273
	.quad	0x3fcdc9cf81101c54              # double 0.23272126962567319
	.quad	0x3fbd6f51c2b2b3e0              # double 0.11497984889383828
	.quad	0x3fe906b91ba3a182              # double 0.78207068823125803
	.quad	0x3fce8d00f112389c              # double 0.23867809077313928
	.quad	0x3fedd4b9d7c126d0              # double 0.9322175229983376
	.quad	0x3fe536b666455d60              # double 0.66292877173229314
	.quad	0x3fc33c1e95ed398c              # double 0.15027220078122772
	.quad	0x3fd06111bf3c773a              # double 0.25592464137467952
	.quad	0x3feb7745feca1fc9              # double 0.85830974353393075
	.quad	0x3fe78b25d2bde151              # double 0.73573580894939472
	.quad	0x3fe7cadbe63b25d0              # double 0.743513059301387
	.quad	0x3fdc5eb653691374              # double 0.4432807745509344
	.quad	0x3fed0a2e4ff7d775              # double 0.90749278658652932
	.quad	0x3fe84a70170869c8              # double 0.75908665178877133
	.quad	0x3fd11bfef1653d20              # double 0.26733373235488678
	.quad	0x3fddfebd89776458              # double 0.46867311882448837
	.quad	0x3fe853ed0e76cd4d              # double 0.76024487328542423
	.quad	0x3fea1b31f14252ad              # double 0.81581971283829591
	.quad	0x3fee56b3cf3e5177              # double 0.94808378674728899
	.quad	0x3f9983dab7d3c5e0              # double 0.024917046995090675
	.quad	0x3fba25d365b7b9f8              # double 0.10213967545835334
	.quad	0x3fe87a6cef51d100              # double 0.76494452230556931
	.quad	0x3fe1e1d62ce97aac              # double 0.5588179471195267
	.quad	0x3fddf11f54604650              # double 0.46784194221354358
	.quad	0x3fcf5ff13e2639ec              # double 0.24511542830118971
	.quad	0x3fd33d0e981905fe              # double 0.30060162404342339
	.quad	0x3fe90cae21280b67              # double 0.78279787517417965
	.quad	0x3fd4285e2b880b66              # double 0.31496385813823335
	.quad	0x3fa0d408db3086b0              # double 0.032867695576226708
	.quad	0x3fc30a2744a18b8c              # double 0.14874735690235885
	.quad	0x3fdbf2ffb41af884              # double 0.4367064722863534
	.quad	0x3fb5c0bd593f3390              # double 0.084972223557271187
	.quad	0x3fefa26f5a40aa70              # double 0.98857848765812939
	.quad	0x3fea6cdf405506e4              # double 0.82579004826422108
	.quad	0x3fef3d977fce8bca              # double 0.97626852953214294
	.quad	0x3fdc5e8f40134fcc              # double 0.44327145821921188
	.quad	0x3fdb687ef3d7973a              # double 0.42825292408666693
	.quad	0x3fe659c80bba2670              # double 0.69845964708765784
	.quad	0x3fef68d724732886              # double 0.98154790038212592
	.quad	0x3fd094a2be43175e              # double 0.25907200413018028
	.quad	0x3fec156ee4ecb9ca              # double 0.87761635505540281
	.quad	0x3febf8a5e1584290              # double 0.87410253536843818
	.quad	0x3fdcec9408441c6e              # double 0.4519395905230742
	.quad	0x3fe3e8a070b1f9ae              # double 0.62214681635651004
	.quad	0x3fe79c22ead2057d              # double 0.73780961860045091
	.quad	0x3fe1ad73c48919fa              # double 0.5524233664116871
	.quad	0x3fdb59c7b8a2d818              # double 0.42735474615926838
	.quad	0x3fccc2a8bb6098a4              # double 0.22469052457126282
	.quad	0x3fb690e54e745f30              # double 0.088148433355283328
	.quad	0x3fc5afd0e90aef28              # double 0.16942798022307071
	.quad	0x3fd5a60142c93614              # double 0.33825713655537126
	.quad	0x3fe70249fc90edf6              # double 0.71902942017862759
	.quad	0x3fe4597b4bcf1026              # double 0.63592304998792737
	.quad	0x3fb5c47556532180              # double 0.085028966498731151
	.quad	0x3f85e5e338d13240              # double 0.010692382022306934
	.quad	0x3f93648b8f77ea80              # double 0.018938236838929701
	.quad	0x3fef73139018e5e8              # double 0.98279741424556466
	.quad	0x3fdf75ef06f3cf72              # double 0.49157310179656755
	.quad	0x3fc1d1a6b9c958fc              # double 0.13921054908377772
	.quad	0x3fcb109406454dd4              # double 0.21144342714488451
	.quad	0x3f650ffe049a1300              # double 0.0025711022652238347
	.quad	0x3feee26a3a0b0471              # double 0.96513854347734995
	.quad	0x3fe441935701759f              # double 0.63300482743550279
	.quad	0x3fdc1034f30d733a              # double 0.43848918662643011
	.quad	0x3fef479ff34ed82e              # double 0.97749326249209445
	.quad	0x3fc3e945b220d440              # double 0.15555640409152893
	.quad	0x3fefde77234e2656              # double 0.99590641875802066
	.quad	0x3fd8cd585b79b2fe              # double 0.3875332730593043
	.quad	0x3fdbdd4067d0e728              # double 0.43537912500652221
	.quad	0x3feca998feb5ccb8              # double 0.89570283649518156
	.quad	0x3fe33c522c4623c4              # double 0.60111340186369278
	.quad	0x3fe79bd0dcea763a              # double 0.73777049205427336
	.quad	0x3fd49b225c3f8926              # double 0.32196864136325798
	.quad	0x3fe8f559388a042b              # double 0.77994977038190905
	.quad	0x3fe7f092189c81b7              # double 0.74811653906731734
	.quad	0x3fe63d5dc02d483b              # double 0.69499099287555255
	.quad	0x3fef41eb76ad7090              # double 0.97679684809874523
	.quad	0x3fa3e0f06e67aa60              # double 0.038825524785200072
	.quad	0x3fc6f2721cfb4284              # double 0.1792738572608138
	.quad	0x3fe75be35cdea82d              # double 0.72996681345580827
	.quad	0x3fea4cae872c7d69              # double 0.821860565196329
	.quad	0x3fecc7f8748a7882              # double 0.89941046487707887
	.quad	0x3feef17410bc4334              # double 0.966974289594964
	.quad	0x3fee2f6dc8455e90              # double 0.94328965297150269
	.quad	0x3fe6cc9a9bdabe34              # double 0.71247606697392607
	.quad	0x3fe78306d3780033              # double 0.73474446585169628
	.quad	0x3fd1582002b37738              # double 0.27100372566006881
	.quad	0x3fbd34cd32fab6c0              # double 0.11408693785298407
	.quad	0x3f96ab61076b2920              # double 0.022138134076876814
	.quad	0x3fd357b3208a1c94              # double 0.30222776582417876
	.quad	0x3fd498febaeba8a0              # double 0.321838076152412
	.quad	0x3fedf8674862c820              # double 0.9365726865564774
	.quad	0x3fe57c047216b931              # double 0.67138883860551435
	.quad	0x3fe6d40e8ef6f2e5              # double 0.71338584826261509
	.quad	0x3fdd33fe732194a0              # double 0.45629845851210327
	.quad	0x3fbd75347ee7e758              # double 0.11506965730941709
	.quad	0x3fbd90f17cc123b8              # double 0.11549290939105006
	.quad	0x3fc137ebe90f8c34              # double 0.13451908950728042
	.quad	0x3fbef7b8aa08f918              # double 0.12096742774244651
	.quad	0x3f702ac5ed057280              # double 0.0039470416525914098
	.quad	0x3fefc0609ef199f5              # double 0.99223357242300258
	.quad	0x3fe861b486377de9              # double 0.76192690099918281
	.quad	0x3fe759d1902e087a              # double 0.72971418533440091
	.quad	0x3fd5732cd4cdabc8              # double 0.3351547315748431
	.quad	0x3fea5a52979a157a              # double 0.82352571115249806
	.quad	0x3fca892ba611d380              # double 0.20731111153477499
	.quad	0x3fe9bd685334b5ed              # double 0.80437103511002095
	.quad	0x3fe18d461944c2d7              # double 0.54849533973000575
	.quad	0x3fe967a68fdfe9da              # double 0.79390266514320307
	.quad	0x3fdc62efbfe531ae              # double 0.44353860606932016
	.quad	0x3fccba36033fc9b8              # double 0.22443270834589923
	.quad	0x3fcc6e65601e5fe0              # double 0.22211901849072913
	.quad	0x3fe9be54fdf4cd57              # double 0.80448388672668159
	.quad	0x3fd322806be24a08              # double 0.29898081336537574
	.quad	0x3fd71c13644496be              # double 0.36108860770978513
	.quad	0x3fe3a7648bdfc273              # double 0.61418368643906118
	.quad	0x3fea986c89610bf4              # double 0.83110644180157899
	.quad	0x3fdc798199660808              # double 0.44491615276649599
	.quad	0x3fec605aed6ab762              # double 0.88676210756760221
	.quad	0x3fed7b5f8969503c              # double 0.92131020391617068
	.quad	0x3fef077d8e83c930              # double 0.96966436228675512
	.quad	0x3fc6f7ded529fd9c              # double 0.17943940552139004
	.quad	0x3fd2e30ad342c404              # double 0.29510756140649641
	.quad	0x3fd52bc011caced4              # double 0.33079530465623219
	.quad	0x3fc7f190ac1be030              # double 0.18705948261026739
	.quad	0x3fe6037ea54027ba              # double 0.6879266002226736
	.quad	0x3fe7ed6bc80316e3              # double 0.74773205818993593
	.quad	0x3fe889cae3d591c2              # double 0.76682037829282756
	.quad	0x3fe3ff2ac834abbc              # double 0.62489832976040516
	.quad	0x3fe57b2410c46a72              # double 0.67128184580663075
	.quad	0x3fb5f325d0ffd4b0              # double 0.085741389775494836
	.quad	0x3fe046799bbd7661              # double 0.50860290925966123
	.quad	0x3fe1368707888d22              # double 0.53790618392341494
	.quad	0x3fe25add10ab5398              # double 0.57359174018584991
	.quad	0x3fde0150820b7898              # double 0.46883022975624433
	.quad	0x3fe9e537db3686e8              # double 0.80923073592222483
	.quad	0x3fd3580780302a56              # double 0.30224788206456787
	.quad	0x3fd54d9dead22c0e              # double 0.33286235744225301
	.quad	0x3f9cde1d2f08d9e0              # double 0.028191047664415936
	.quad	0x3fd907e2f3c9dc88              # double 0.39110635573838026
	.quad	0x3fe16eda139e043d              # double 0.54478172141546788
	.quad	0x3fbd39a2e3139a08              # double 0.11416070979939985
	.quad	0x3fcd2824b42bb3cc              # double 0.22778757855794962
	.quad	0x3fe23d0579dad263              # double 0.56994890022049238
	.quad	0x3fe959fc6de46bf2              # double 0.79223462546667478
	.quad	0x3fc1963d94c9fc50              # double 0.13739747777069278
	.quad	0x3fe65d1383cb6479              # double 0.69886184445489541
	.quad	0x3fdd45206e626f08              # double 0.45734415797936423
	.quad	0x3feaeeda2e4111fe              # double 0.84165677103061376
	.quad	0x3fedd748c1d8895b              # double 0.93252981052891515
	.quad	0x3f90d482a4b135e0              # double 0.016435662557617081
	.quad	0x3fc76dcfd5af4890              # double 0.18303869184325494
	.quad	0x3fb48250d5d7a828              # double 0.080113460738772901
	.quad	0x3fea38907ea94359              # double 0.81940483797562103
	.quad	0x3fd05f2d082777e2              # double 0.25580907627397498
	.quad	0x3fb0f89f8c043d10              # double 0.066293689426164315
	.quad	0x3febd987ae7666df              # double 0.87030395579060016
	.quad	0x3fcf329ea9f38f14              # double 0.24373229311378763
	.quad	0x3fd6ecad392ae58c              # double 0.35819559653062849
	.quad	0x3fe94772ac9a3fa2              # double 0.78997167312080685
	.quad	0x3fe5a65b6806063c              # double 0.67655725781532494
	.quad	0x3f59689985412a00              # double 0.001550817415607697
	.quad	0x3fd25ade5cdd0648              # double 0.28679617947281999
	.quad	0x3fee76a4890b6d7f              # double 0.95198275343447836
	.quad	0x3fec9732a9354f8c              # double 0.89345677422032698
	.quad	0x3fd353962e1d6aa8              # double 0.30197672370347073
	.quad	0x3fd1b62938877d46              # double 0.27674322624621472
	.quad	0x3fc988a8c2e0a3b0              # double 0.19948300853255096
	.quad	0x3fe954a4d558b841              # double 0.79158250493288318
	.quad	0x3fe17f4589d06014              # double 0.54678608814993135
	.quad	0x3fe18975ae8964c3              # double 0.54802974785993575
	.quad	0x3fcc3e0e00bf3db0              # double 0.220643759121669
	.quad	0x3feac1dc8ce7d27e              # double 0.83616473694435434
	.quad	0x3fd1b16db3d9b886              # double 0.27645437778017656
	.quad	0x3fe4141fcc6de5d0              # double 0.62745656898112578
	.quad	0x3fdb4b4117acba90              # double 0.42646815597519439
	.quad	0x3fddd50830363ed6              # double 0.4661274405307102
	.quad	0x3fb5f2c3b2bebe30              # double 0.085735541476190446
	.quad	0x3fb4575f5adeafa8              # double 0.079458198246980971
	.quad	0x3feed4713e654e60              # double 0.96343290506997547
	.quad	0x3fe1a6bbb2578c8f              # double 0.55160317261142378
	.quad	0x3fe2d642e1a8a46f              # double 0.58865493844963435
	.quad	0x3fe1835566730379              # double 0.54728193292258631
	.quad	0x3f59b642a2336c00              # double 0.0015693331450197245
	.quad	0x3fe4ca143b92bff3              # double 0.6496678508319732
	.quad	0x3fec4b689c365d1c              # double 0.88420515547014444
	.quad	0x3fc065cc1d745d80              # double 0.12810660780153782
	.quad	0x3fecddbe8b098e18              # double 0.9020683970997565
	.quad	0x3fbd25ce1dbf8820              # double 0.113858110678422
	.quad	0x3fe5717c30e3b5ba              # double 0.67010316418389171
	.quad	0x3fe837e5deec0167              # double 0.7568234781211175
	.quad	0x3fce330b7e3fda0c              # double 0.23593276657602791
	.quad	0x3fe3726d45dee0e4              # double 0.6077181210194138
	.quad	0x3fdb66cb7afdb884              # double 0.42814909945344248
	.quad	0x3fec291c4d9c7ccc              # double 0.8800183788152025
	.quad	0x3fc66e49be14a368              # double 0.17524072438507265
	.quad	0x3fb3e60201204f98              # double 0.077728390955881799
	.quad	0x3fea239f5c4edbc3              # double 0.81684844998277872
	.quad	0x3fed0cac18bdaab2              # double 0.90779690582470196
	.quad	0x3fd5e82bdf1eb01e              # double 0.34229561604547765
	.quad	0x3fe56762d9a720eb              # double 0.6688703776390218
	.quad	0x3fe9bf6395afce8c              # double 0.80461291537945234
	.quad	0x3fe62ec36ddf4a9b              # double 0.69320842227382984
	.quad	0x3fc93b8d414578f4              # double 0.19712987601355503
	.quad	0x3fed540e6e663546              # double 0.91651078760484306
	.quad	0x3fa42d0e7a092010              # double 0.039406254193238621
	.quad	0x3fc2de3110cac540              # double 0.14740575141835599
	.quad	0x3feff3a13f66f8af              # double 0.99848997481583079
	.quad	0x3fe522be5e6b0c4d              # double 0.6604911655525797
	.quad	0x3fda1fd3fc134ee2              # double 0.40819263092747182
	.quad	0x3fdd848959642c0e              # double 0.46121438722246999
	.quad	0x3fe03571b3e03f1a              # double 0.50652394420646663
	.quad	0x3feafdd90bf47872              # double 0.84348728499368364
	.quad	0x3fc176634902aa18              # double 0.13642540993653607
	.quad	0x3fdc6e468a4f41d8              # double 0.44423068529888843
	.quad	0x3fe40b20b29a0e61              # double 0.62635836489830521
	.quad	0x3fb3ff10ef84fe48              # double 0.078110750652734429
	.quad	0x3febe47c19922e06              # double 0.87164120668734379
	.quad	0x3fe1bbc07e66039d              # double 0.55416893660741418
	.quad	0x3fd139231005cb10              # double 0.26911236347875533
	.quad	0x3fe0c4eb90f72089              # double 0.52403810800116546
	.quad	0x3fed08bdf93fc828              # double 0.90731714898561666
	.quad	0x3fec250bb9ac7f38              # double 0.87952219261567333
	.quad	0x3fef3547413913fd              # double 0.9752537034879648
	.quad	0x3fee93ea96bf85a1              # double 0.95555619662279778
	.quad	0x3fd1c8a088c4d524              # double 0.27787030559859915
	.quad	0x3fd05f706fb3e6b0              # double 0.25582514675589163
	.quad	0x3fe4742215512a08              # double 0.63917640841947421
	.quad	0x3fe1757335e6f46f              # double 0.54558716323630374
	.quad	0x3fc36e5b66a30b94              # double 0.15180532943312797
	.quad	0x3fe595001ec70ff3              # double 0.67443853389022335
	.quad	0x3fec9deea853cf83              # double 0.89427883984033973
	.quad	0x3fec07248be9eae1              # double 0.87587191893484484
	.quad	0x3fd68d1a7eb37f28              # double 0.35236227391395625
	.quad	0x3fe8c7b619f7afa0              # double 0.77437882491857479
	.quad	0x3fc726c730cab640              # double 0.18087091333784322
	.quad	0x3febdffa0ecfe6d3              # double 0.87109091656676652
	.quad	0x3fd5bc590dc473fa              # double 0.33962084145042548
	.quad	0x3fe475f4c8e20cb8              # double 0.63939894900285932
	.quad	0x3fb3b9f4576b3280              # double 0.077056189863649038
	.quad	0x3fe9d433a25bd5be              # double 0.8071535273617696
	.quad	0x3fe2f8ee7a83aa9c              # double 0.59288715294436001
	.quad	0x3fe0b69ef4ded844              # double 0.52229259325282174
	.quad	0x3fd2a7e86cab6dea              # double 0.29149828541059597
	.quad	0x3fe5b8ddd4ecd11f              # double 0.6788167151158041
	.quad	0x3fef2e4509cc8b3a              # double 0.97439815439097477
	.quad	0x3fe38c170638b228              # double 0.6108508225930267
	.quad	0x3fe16749a07cffb6              # double 0.54385835023275919
	.quad	0x3fd3d07724813a5c              # double 0.30959871830865437
	.quad	0x3fe4c451c97dcccb              # double 0.64896478036680472
	.quad	0x3fc5001a14ca9948              # double 0.16406560912327905
	.quad	0x3fea04fe0d7b2f37              # double 0.81310942299885525
	.quad	0x3fead5242dbe1e62              # double 0.83851822790252251
	.quad	0x3fbbe719fafeb940              # double 0.10899507882888759
	.quad	0x3fe58eed00a1327c              # double 0.67369699595435817
	.quad	0x3fe555339d05f1a0              # double 0.66665058773610397
	.quad	0x3feae61877211742              # double 0.84058783786233726
	.quad	0x3fece637cd6bab96              # double 0.90310278054436099
	.quad	0x3fd62238f578d5fc              # double 0.34583877536655883
	.quad	0x3feacabcac288a27              # double 0.83724816918067269
	.quad	0x3fdaccf4dc3d49ba              # double 0.41875955112223162
	.quad	0x3fe4e138fff6db58              # double 0.65249299996399213
	.quad	0x3fe5a55f79ddbee7              # double 0.67643712808600476
	.quad	0x3fef22ddb4487650              # double 0.97300610744032134
	.quad	0x3fed3886041481d7              # double 0.91314984127898924
	.quad	0x3fe287a9ac8b22c0              # double 0.57906039905454776
	.quad	0x3fe68e2718d45643              # double 0.70485262727260822
	.quad	0x3fd324187416662a              # double 0.29907809578580447
	.quad	0x3fcdfc6e8f1ccdc4              # double 0.23426610935130843
	.quad	0x3fe632ce42e144e5              # double 0.69370186865321826
	.quad	0x3fd8d7bd5705753c              # double 0.38816770075012008
	.quad	0x3feecaba4b910c37              # double 0.96224703559017299
	.quad	0x3fd9038d3e4c4746              # double 0.39084178050790219
	.quad	0x3fde5b562726492a              # double 0.47432473967741606
	.quad	0x3fef7dc81f227691              # double 0.98410421448689266
	.quad	0x3f94b0f9389a9680              # double 0.020206350402665496
	.quad	0x3fd9ab1e2727562c              # double 0.40106920074080921
	.quad	0x3fe31aa1d2f5925f              # double 0.59700099184972177
	.quad	0x3fe5f22593d167a6              # double 0.68580893393231146
	.quad	0x3feeccea8e966700              # double 0.9625141892349518
	.quad	0x3fc5fbf4ccdef4d4              # double 0.17175159457648326
	.quad	0x3fe76abc5229672c              # double 0.73177925154889101
	.quad	0x3fe95ef945dd19ff              # double 0.79284347195863336
	.quad	0x3fd00ce36cb856a0              # double 0.25078664414591323
	.quad	0x3fec1af8fa353ab7              # double 0.87829254978881621
	.quad	0x3fe81b46db406bcd              # double 0.75332968542658707
	.quad	0x3fe9f39c26d45469              # double 0.81098754485959745
	.quad	0x3fd2d1e4d1f2c64e              # double 0.2940609026219122
	.quad	0x3fed4c5ee4dab0c0              # double 0.91557259271714741
	.quad	0x3fb847b1030d4440              # double 0.094843924756120579
	.quad	0x3fe6bca935d00761              # double 0.71052990446353814
	.quad	0x3fe570b2be5330dd              # double 0.67000710652203177
	.quad	0x3fdfdb6cfe26868c              # double 0.49776768512138214
	.quad	0x3feb89adccb78657              # double 0.860556506955798
	.quad	0x3fe0941bf414d92a              # double 0.51807973549037922
	.quad	0x3fed93229e110204              # double 0.92421084282256105
	.quad	0x3fb7a6c3d8ff74e8              # double 0.092388382413861714
	.quad	0x3fd06da9b3e4f912              # double 0.25669329231085769
	.quad	0x3fb17fa1fc480648              # double 0.068353771297574473
	.quad	0x3feecf0cd60e2fb4              # double 0.96277467544267958
	.quad	0x3fd8168601bd6242              # double 0.37637472314739651
	.quad	0x3fe8da248c8c9c42              # double 0.77662875605609138
	.quad	0x3fec9677e1643130              # double 0.8933677103209785
	.quad	0x3fc8de6f4bbd472c              # double 0.19428816984378139
	.quad	0x3fe505b811ec4137              # double 0.65694812298355643
	.quad	0x3feb07796a66fd4b              # double 0.84466238767337509
	.quad	0x3fe5114ea99cfbbd              # double 0.65836270454007428
	.quad	0x3fc0748b75222f18              # double 0.12855666369829843
	.quad	0x3fb291ed32e70e18              # double 0.072539162566549797
	.quad	0x3faa58662d17a6e0              # double 0.051455681805078646
	.quad	0x3fac5085eec02fb0              # double 0.05530184306562036
	.quad	0x3fa0c9134d2bcd90              # double 0.032784083528805685
	.quad	0x3fe2d3647b2ec818              # double 0.58830474909905472
	.quad	0x3fbce934d1a57a40              # double 0.11293344610519629
	.quad	0x3fee60b908f52feb              # double 0.9493069815594003
	.quad	0x3fe50e79870b6926              # double 0.65801693321126176
	.quad	0x3fd6a61b4e74d4e2              # double 0.35388834630732735
	.quad	0x3fd7c98ccb8d4b16              # double 0.37167663457982891
	.quad	0x3fdd6202669b5372              # double 0.45910701770963336
	.quad	0x3fec15c71745e30b              # double 0.87765841050631488
	.quad	0x3fd8a89b53fa11c4              # double 0.3852909393392816
	.quad	0x3fa5ef3a7bafacd0              # double 0.042840793226639584
	.quad	0x3fe26025dfd0bdbe              # double 0.57423680986351378
	.quad	0x3feaa9156220869f              # double 0.8331400791687037
	.quad	0x3fd9346da5ebd392              # double 0.3938249702762785
	.quad	0x3fb8bbd694a8c698              # double 0.096616183561105351
	.quad	0x3fe0777709a23fd6              # double 0.51458312875365197
	.quad	0x3fe8e13a329a4d18              # double 0.77749357112262185
	.quad	0x3fe4ccc9ee6ff5b9              # double 0.6499986321429595
	.quad	0x3feae78bcee3a7fe              # double 0.84076490791380798
	.quad	0x3f969fcfd9bff640              # double 0.022094009080311006
	.quad	0x3fe5cff1c4ab4676              # double 0.68163383876726757
	.quad	0x3fc9e26beae278d0              # double 0.20222233742692319
	.quad	0x3fefa93ee7baabde              # double 0.98940987834555094
	.quad	0x3fe696b94cc534c5              # double 0.70589890474516237
	.quad	0x3fe16afbdc88ec7d              # double 0.54430955002989345
	.quad	0x3fcb8ce3a1219b5c              # double 0.21523709647882583
	.quad	0x3fec747dcbcaa643              # double 0.88922014048620956
	.quad	0x3fdcd0d2ef38c1e6              # double 0.45024560319418894
	.quad	0x3fd5b83fe8ee876e              # double 0.33937070605508424
	.quad	0x3fb52f6e2f061698              # double 0.082754980545440282
	.quad	0x3fd3afc4108f312e              # double 0.30760289780734495
	.quad	0x3fb74c5c8e22dee0              # double 0.091008934689735366
	.quad	0x3fe6289713394c29              # double 0.69245485071804069
	.quad	0x3fddd82d49602606              # double 0.46631939092239383
	.quad	0x3fdc7db2a82a8e5e              # double 0.44517198965534088
	.quad	0x3fd8a3cd4b46d7a0              # double 0.38499767638438165
	.quad	0x3fe8d55585f3c18d              # double 0.77604175722631086
	.quad	0x3fd2b08e7edad36c              # double 0.29202616108096069
	.quad	0x3f7e7f4c1389bc80              # double 0.00744561879456207
	.quad	0x3fe9554cbcbcc8bf              # double 0.79166256773739707
	.quad	0x3fe46c88948df512              # double 0.63824872030787305
	.quad	0x3fe1e39eb72ede8b              # double 0.5590356424135775
	.quad	0x3fc58cd4005144d0              # double 0.16836023345471185
	.quad	0x3fe5acdbc039c3cb              # double 0.67735087913580949
	.quad	0x3feabecb63c93279              # double 0.83579034318388701
	.quad	0x3fe7bcf270e610ff              # double 0.74181482363249518
	.quad	0x3fdd931bb6385f52              # double 0.46210377497617572
	.quad	0x3fe320c724b4f09a              # double 0.59775120896621847
	.quad	0x3fec3433955df399              # double 0.88137225316278311
	.quad	0x3fdee2da5d119eb6              # double 0.48259600723984464
	.quad	0x3fe277b503c9b7cd              # double 0.57711268176876163
	.quad	0x3fe6048633804019              # double 0.68805227335724617
	.quad	0x3fe09376775c88fe              # double 0.51800082505022238
	.quad	0x3fd105fe368e0f22              # double 0.26599078490856887
	.quad	0x3fd63a947bf934a6              # double 0.34732544047148861
	.quad	0x3fc35206afcfec44              # double 0.15094073853092216
	.quad	0x3fe9e841bb4b78ec              # double 0.80960165577905973
	.quad	0x3fcc5cdfb1b70e94              # double 0.22158428361409632
	.quad	0x3fd545f50712c16a              # double 0.3323948449206201
	.quad	0x3fb6180e48488800              # double 0.086304562232299986
	.quad	0x3fe3254ef111d568              # double 0.59830424388807746
	.quad	0x3fa7046b42e42c30              # double 0.044955589213792613
	.quad	0x3fdceab84e5cdaf2              # double 0.45182616856202096
	.quad	0x3fbba3c7933f8148              # double 0.10796782822535989
	.quad	0x3fd39a1700c45010              # double 0.30627989840400094
	.quad	0x3fe03c02e553a14a              # double 0.50732559957854417
	.quad	0x3fef7f5a30b2bc68              # double 0.98429593573918072
	.quad	0x3fad83f56d829900              # double 0.057647390001237753
	.quad	0x3fef612b99850d82              # double 0.98061161026309684
	.quad	0x3fc6084d35defe30              # double 0.1721283448259654
	.quad	0x3feaa47bdcc8dc42              # double 0.83257859346384344
	.quad	0x3fdd7f8ad873baea              # double 0.4609095681943659
	.quad	0x3fd98cf0b11937ba              # double 0.39922730726982147
	.quad	0x3fe201ca3c3c8ee5              # double 0.56271850361778475
	.quad	0x3fcda1d1d53be0e4              # double 0.23150084411441363
	.quad	0x3fef9945e3b4e093              # double 0.98746008371292004
	.quad	0x3fee9564dff4f2f9              # double 0.95573657743042795
	.quad	0x3fc74d3df46c6038              # double 0.18204473910077623
	.quad	0x3fea6e62e444950d              # double 0.82597488959859933
	.quad	0x3fd3e21ea95523e2              # double 0.31067625557312628
	.quad	0x3fe62a934f5f3afd              # double 0.69269719602911517
	.quad	0x3feb068fc9905540              # double 0.84455098503045889
	.quad	0x3fd0f0cc3e023488              # double 0.26469713264015882
	.quad	0x3fb53601c06d08b8              # double 0.082855329016669255
	.quad	0x3fe2e865a620c00e              # double 0.59086878249036245
	.quad	0x3fc509a45968625c              # double 0.16435675016033968
	.quad	0x3febc2b4d51a408c              # double 0.86751786824790277
	.quad	0x3fe06e60e5a3a6c2              # double 0.51347393847864731
	.quad	0x3fd30ba44229699e              # double 0.29758554898367062
	.quad	0x3fd335df7a899556              # double 0.30016314474626904
	.quad	0x3fcf109d0782bcc0              # double 0.24269450060589826
	.quad	0x3fec807f0ccf629e              # double 0.89068558217975968
	.quad	0x3fe5e5dbb5966754              # double 0.6843088671332489
	.quad	0x3faab921f72eb450              # double 0.052193700240743213
	.quad	0x3fa47caff4b1d5d0              # double 0.040013788814501461
	.quad	0x3fed7ea01740a5a0              # double 0.92170719663151956
	.quad	0x3fa063454bb59e80              # double 0.032007375232578461
	.quad	0x3fd2ef0bc68aad2c              # double 0.29584020985449189
	.quad	0x3fd56690a6c5ccd8              # double 0.33438507353203084
	.quad	0x3fe9581441dd2ca6              # double 0.79200184692435438
	.quad	0x3fd9a561d99375e6              # double 0.40071913001687987
	.quad	0x3fd34f7d1855dc70              # double 0.30172660233024029
	.quad	0x3fbe78d2f4918a28              # double 0.11903112860594744
	.quad	0x3fe84637fac0390e              # double 0.75857161497859393
	.quad	0x3fb6fac702ac7e40              # double 0.089764059212478209
	.quad	0x3fe57a2fc1f6fb07              # double 0.67116535075896955
	.quad	0x3fd207f0e1ebc128              # double 0.2817346769579836
	.quad	0x3fee4162dd35c18d              # double 0.94548171238970868
	.quad	0x3fa0dccf496dcb00              # double 0.032934644425855808
	.quad	0x3fee0b9743fc9800              # double 0.93891490248347509
	.quad	0x3fc9e76cd0f63eb8              # double 0.20237503245561128
	.quad	0x3fc8fdb3cca4e5c8              # double 0.19524238102330416
	.quad	0x3fe18b31e7b43057              # double 0.5482415700403277
	.quad	0x3fe77799d71c2d0d              # double 0.7333497239464194
	.quad	0x3fee036a0c584b7f              # double 0.93791677867044132
	.quad	0x3fe525669421fc05              # double 0.66081551487138823
	.quad	0x3fe6cc03a6d39421              # double 0.71240408500000652
	.quad	0x3fcf6ee55bcc5318              # double 0.24557177526789853
	.quad	0x3fd1ff7a13e2c456              # double 0.28121807043050262
	.quad	0x3fe63dc899ed09c1              # double 0.69504194320352763
	.quad	0x3fd18ab4a0834722              # double 0.2740909163959363
	.quad	0x3fe1126c5ad3170b              # double 0.53349893321203135
	.quad	0x3fdf96e0da34cf28              # double 0.49358388241965878
	.quad	0x3fdde8a2ca7102f4              # double 0.4673239685981081
	.quad	0x3fea52b366c7513d              # double 0.82259531091634808
	.quad	0x3fd33fbd0bc51800              # double 0.3007652869167714
	.quad	0x3fea95b3b4f42a32              # double 0.83077416746647814
	.quad	0x3fd1a55f6c7c98a8              # double 0.27571855158238145
	.quad	0x3fecb86aead58980              # double 0.89751191965142141
	.quad	0x3fe0aeeea7c482d2              # double 0.52135403411019809
	.quad	0x3feb8bbf207284b6              # double 0.86080890977259261
	.quad	0x3fde1c37181c3d68              # double 0.47047211985132842
	.quad	0x3fe40348bf3d9bf4              # double 0.62540089942638
	.quad	0x3fd72cd8bac1616c              # double 0.36211221921759917
	.quad	0x3fbc631eb3f80ed0              # double 0.11088745015882329
	.quad	0x3fcb84294bca7410              # double 0.21497074318622866
	.quad	0x3fec09081fbc3a2c              # double 0.87610250662129862
	.quad	0x3fd3813ebcdfb816              # double 0.30476349301068362
	.quad	0x3fcb30d489dc8de4              # double 0.21242768031616699
	.quad	0x3fd1fde583af7712              # double 0.28112161502745991
	.quad	0x3fe43847ebcc749d              # double 0.63187023214745219
	.quad	0x3fe62ec8cd94d5a1              # double 0.69321098473180964
	.quad	0x3fd228e3a5b130e0              # double 0.28374568158029767
	.quad	0x3fe39ee4718da156              # double 0.61314603975646764
	.quad	0x3fdf84b42b910968              # double 0.49247459654374959
	.quad	0x3fcae6395bc652f4              # double 0.21015088063418086
	.quad	0x3fe7dc1f3e8823d0              # double 0.74562036717645164
	.quad	0x3fe2e209fe51aa06              # double 0.59009265586547666
	.quad	0x3fd6367879699c4c              # double 0.3470746217412326
	.quad	0x3fb1828f7b2a1f00              # double 0.068398444718805962
	.quad	0x3fd1e9713441b922              # double 0.27987318137356187
	.quad	0x3f88e91cbef0c1c0              # double 0.012163376404800696
	.quad	0x3fe83e3cca4f77d4              # double 0.7575973464370187
	.quad	0x3fde81ef950cfbf6              # double 0.47668065601095522
	.quad	0x3fe42140f30055e4              # double 0.62905929051583742
	.quad	0x3fc619da17ae14dc              # double 0.17266393810510905
	.quad	0x3fe0faec84d68074              # double 0.53063035912420142
	.quad	0x3fdb8db6b7b1d878              # double 0.43052452029167609
	.quad	0x3f2e68e8c60c4000              # double 2.3200837588222001E-4
	.quad	0x3fe5ac2be961786f              # double 0.67726703245331332
	.quad	0x3fd4cde393550c4e              # double 0.32506646526252758
	.quad	0x3fe89054f221b66c              # double 0.76761863032670651
	.quad	0x3fe58e77bfd6a2cd              # double 0.67364108532373168
	.quad	0x3fee2de63c0b5f60              # double 0.94310294845034192
	.quad	0x3fcccf1d0fd8d390              # double 0.22507060312059624
	.quad	0x3fde24c60b08401a              # double 0.4709944827782252
	.quad	0x3fb38de595500300              # double 0.076383923486002203
	.quad	0x3fec5edbc7e9869a              # double 0.88657940907815491
	.quad	0x3fd3415f1a0fb4f4              # double 0.30086495919279277
	.quad	0x3fed0193cac36ba2              # double 0.90644254305094685
	.quad	0x3fedd802098df9d8              # double 0.93261815897113376
	.quad	0x3fe5ba941d8adc12              # double 0.67902570505146032
	.quad	0x3fb936a20271e7f0              # double 0.098489881131086809
	.quad	0x3fa8d12f924e7a70              # double 0.048470961198508244
	.quad	0x3fe0df473ef0824f              # double 0.52725565235966509
	.quad	0x3fdb31f67f335178              # double 0.42492449209137062
	.quad	0x3fe7020eba680ae1              # double 0.71900116355422139
	.quad	0x3feecc3517874b54              # double 0.96242765994461842
	.quad	0x3fdcacced4288554              # double 0.4480473586900946
	.quad	0x3fe4dc1b57e233b9              # double 0.65186850704923593
	.quad	0x3fe905e2a42450c6              # double 0.78196842249828857
	.quad	0x3fe830a4c3a6c127              # double 0.7559379407230481
	.quad	0x3fe0b32fb6bfbf59              # double 0.52187333768049904
	.quad	0x3fa8ee5682090c40              # double 0.048693374036269166
	.quad	0x3fdf1971a9d5eb68              # double 0.4859279783774384
	.quad	0x3fd56e3c4686224e              # double 0.33485323798280298
	.quad	0x3fd1ecea3950ab1c              # double 0.28008514020136643
	.quad	0x3fdad47f9c5d0620              # double 0.41921987790928661
	.quad	0x3fe76a79743cce1a              # double 0.7317473669303951
	.quad	0x3fb8d53dac88edc0              # double 0.097003798125050444
	.quad	0x3fe0d5998c88d49c              # double 0.52607419441359893
	.quad	0x3fd8c59e7ad364ae              # double 0.38706171030714642
	.quad	0x3fe127eabbc1b4dc              # double 0.53612267180656259
	.quad	0x3fe7b2f5c261f43e              # double 0.74059570279462839
	.quad	0x3fdac6edf2930e42              # double 0.41839169205579563
	.quad	0x3fcdf30b17349944              # double 0.23397959359244613
	.quad	0x3fe8f06ee8b7cb06              # double 0.77934976055834748
	.quad	0x3fcae4d393c834c0              # double 0.21010822978897714
	.quad	0x3fd757d23e209678              # double 0.36473518435591457
	.quad	0x3fc96391d29d3e20              # double 0.19835112365625296
	.quad	0x3fe646d6c174c229              # double 0.69614732536689872
	.quad	0x3feae695c03cd50b              # double 0.84064757868205342
	.quad	0x3fe533afbaa6d4db              # double 0.66255938010604198
	.quad	0x3fda2ed2678e1510              # double 0.40910778153222882
	.quad	0x3fed1cc73106edd5              # double 0.90976295066451007
	.quad	0x3fd6dbd5eecd665c              # double 0.35716770477811166
	.quad	0x3fea9f9236591c19              # double 0.83197889914379453
	.quad	0x3fb57a7cafbf1a20              # double 0.083900254160746091
	.quad	0x3fe95c47e5f1c390              # double 0.7925147524930356
	.quad	0x3fd18d96f2075336              # double 0.27426694522482664
	.quad	0x3fe08f68f5811c04              # double 0.51750610303940947
	.quad	0x3fd6111ec7168624              # double 0.34479493562875718
	.quad	0x3fe2f6f5b1999d3c              # double 0.59264645278464156
	.quad	0x3f7af8c3103c4c80              # double 0.0065848941483351853
	.quad	0x3fe64e8d6b0d8ed3              # double 0.69708891781598437
	.quad	0x3fbc09c3b42ec570              # double 0.10952399395934775
	.quad	0x3fe821b807704c5e              # double 0.75411607220520316
	.quad	0x3fe0e7a715d07206              # double 0.52827791462510798
	.quad	0x3fe69f87d29e1d31              # double 0.70697394500976973
	.quad	0x3fcfe204e144ac70              # double 0.24908505439211437
	.quad	0x3fd72f9d167ede36              # double 0.36228110501130872
	.quad	0x3fed92c3b20d137e              # double 0.92416558051682762
	.quad	0x3fea057609abc3b8              # double 0.81316663636072573
	.quad	0x3fe0cf9d3e0a6bbb              # double 0.5253435336811586
	.quad	0x3fd1a459d920bdb8              # double 0.27565618709465012
	.quad	0x3fea632dc44536f3              # double 0.82460678419167122
	.quad	0x3fefb088aa893972              # double 0.99029954250162988
	.quad	0x3fce50de09f12164              # double 0.23684287534184556
	.quad	0x3fe9d058e1c31d78              # double 0.80668300718472974
	.quad	0x3f842662d0200700              # double 0.009838840462183196
	.quad	0x3fee77823676fa0a              # double 0.952088457466574
	.quad	0x3fe94d633d166a9b              # double 0.79069673472561719
	.quad	0x3f6523e332a79100              # double 0.0025805890520463892
	.quad	0x3fee44bb3b7deeca              # double 0.94589006061092928
	.quad	0x3fdbb5ccec1f47a8              # double 0.43297122057730997
	.quad	0x3fea0b5512efabf7              # double 0.81388333986740136
	.quad	0x3f927bfa172e0fc0              # double 0.018051059403219716
	.quad	0x3fe7ee8bdc1325c9              # double 0.74786942466124018
	.quad	0x3feac8c5713ad87b              # double 0.83700821032722617
	.quad	0x3feabc096eae8a0f              # double 0.83545371644533073
	.quad	0x3fd939559c08c234              # double 0.3941244148036589
	.quad	0x3fe0d65778bea39a              # double 0.52616475661226336
	.quad	0x3fc61b5c73477d2c              # double 0.17270999554509936
	.quad	0x3fa38689cb1e6b40              # double 0.03813582043149788
	.quad	0x3fef5ec531ba64ec              # double 0.98031863892097481
	.quad	0x3fe582f9413cc951              # double 0.67223799459160649
	.quad	0x3fea51af7c609a05              # double 0.82247137348605348
	.quad	0x3fe39cda98fc7540              # double 0.61289720420942473
	.quad	0x3fef6e6adaf34f19              # double 0.98222868694071785
	.quad	0x3fc3eea4cb85ea04              # double 0.15572032869006602
	.quad	0x3fdecad63c099fda              # double 0.48113017905279565
	.quad	0x3fe6ac0e6b0f1dad              # double 0.70850296888322861
	.quad	0x3fe09b3a30d20c43              # double 0.51894864592794254
	.quad	0x3feac1d5449ce485              # double 0.83616126442861172
	.quad	0x3fe2a76cbc0206bd              # double 0.58293759079261742
	.quad	0x3fe775b0276f4991              # double 0.73311622335522675
	.quad	0x3fb083108b7b9008              # double 0.064499887517342924
	.quad	0x3fd681a18820658c              # double 0.35166204732521389
	.quad	0x3fe926fc750c4ef2              # double 0.7860090528579049
	.quad	0x3fc32029ef041cb0              # double 0.14941906138139904
	.quad	0x3fee0425a80c1b8c              # double 0.938006237237333
	.quad	0x3fe8f3c3ca4cf837              # double 0.77975644599769722
	.quad	0x3fe3710a08130b9e              # double 0.6075487287238166
	.quad	0x3fcc899f691f2c44              # double 0.22294991143130194
	.quad	0x3feac71e5abef070              # double 0.83680646632957512
	.quad	0x3fd3668fe4e50bce              # double 0.30313489296912344
	.quad	0x3fe1d755eadf361d              # double 0.55753608582898873
	.quad	0x3fdc604601f5cf86              # double 0.44337606612611358
	.quad	0x3fd3ae2a726455c2              # double 0.30750523730361234
	.quad	0x3fe1cdc5210a7d0c              # double 0.55636841252626956
	.quad	0x3fe23b996e852f7c              # double 0.56977531038272344
	.quad	0x3fee96c51c21ee55              # double 0.9559045361961106
	.quad	0x3fdb51975492b672              # double 0.42685492762652821
	.quad	0x3f957af5e513e7a0              # double 0.020976869684978916
	.quad	0x3fef09b868d79e93              # double 0.96993656613354273
	.quad	0x3fe37117bce8f45c              # double 0.607555264439394
	.quad	0x3fdb9ed72e3555ac              # double 0.43156985771687562
	.quad	0x3fc5be5477bdeb68              # double 0.16987090918322711
	.quad	0x3fe2977069104f30              # double 0.58098621864562539
	.quad	0x3fae5ba747d102a0              # double 0.059293010250717204
	.quad	0x3fddf956aa9703f2              # double 0.46834341677828129
	.quad	0x3fc665e8c589d8f0              # double 0.17498502393181736
	.quad	0x3fdfe04905691c3c              # double 0.4980642845952763
	.quad	0x3fdf9f8dd7f01d90              # double 0.49411340797129188
	.quad	0x3fe67593e6b4b41d              # double 0.70185275134793168
	.quad	0x3fba5ca10ebd7048              # double 0.10297590837348125
	.quad	0x3fe86f663379d0ab              # double 0.7635985379588609
	.quad	0x3fe886bda7e01dc8              # double 0.76644785679030125
	.quad	0x3fc6b4f4aed60d30              # double 0.17739733254357182
	.quad	0x3fd082df74745e1c              # double 0.25798784611240122
	.quad	0x3fe955f2c20df308              # double 0.79174173260943892
	.quad	0x3fd93893bdb62204              # double 0.39407819296369007
	.quad	0x3fb56fbecff678e8              # double 0.083736348888553302
	.quad	0x3fd0fb647c48df8e              # double 0.26534378182577079
	.quad	0x3fd628f9d1988d8a              # double 0.34625096767759855
	.quad	0x3fded0f20dd90302              # double 0.48150302269282019
	.quad	0x3fa460f5d51755f0              # double 0.039802248251060379
	.quad	0x3fda9230fe139dfc              # double 0.41517281353159752
	.quad	0x3feccc37ba357231              # double 0.8999289166345702
	.quad	0x3fc7c533d271e244              # double 0.18570564056041594
	.quad	0x3fe8aad850c59ce6              # double 0.77085510040060679
	.quad	0x3fe1998befc13c9c              # double 0.54999348475566334
	.quad	0x3fe5bf3c7ab0b76a              # double 0.67959426844548187
	.quad	0x3fda01633577221a              # double 0.4063346883890816
	.quad	0x3f952ff37c21c5e0              # double 0.020690731479083513
	.quad	0x3fd57e7cab5278b2              # double 0.3358451531474983
	.quad	0x3fe1d10d5149670c              # double 0.5567690456038874
	.quad	0x3febfeb308260b17              # double 0.87484122840428113
	.quad	0x3fe8789a55999d90              # double 0.76472202986490068
	.quad	0x3fee01c5f6ff6e57              # double 0.93771646730187797
	.quad	0x3fcc04dd94eccc04              # double 0.21889848491409236
	.quad	0x3fd809858e0744b8              # double 0.37558115835151851
	.quad	0x3fe08b997cd83ef2              # double 0.51704096206409944
	.quad	0x3fe4cd076a82d29f              # double 0.65002795031485394
	.quad	0x3fb5d6c9745449a8              # double 0.085308638477988752
	.quad	0x3fe58a3e2fcd32c2              # double 0.67312535606614454
	.quad	0x3fd63162cb74c082              # double 0.34676427716022584
	.quad	0x3fe3334c5a4a60a2              # double 0.6000119937407542
	.quad	0x3fe159659dfe2936              # double 0.54216271265003146
	.quad	0x3fe38ca16cc51eb1              # double 0.61091681713238277
	.quad	0x3feba7974b0e5cbe              # double 0.86420788440127416
	.quad	0x3fd35192f0a68bbc              # double 0.30185388089210696
	.quad	0x3fd5af64b791517c              # double 0.3388301651623562
	.quad	0x3fef683da2dff055              # double 0.98147470294453376
	.quad	0x3fecbba85b04bb0b              # double 0.89790742661520662
	.quad	0x3fc0b833e9c3b4ec              # double 0.13062142290383549
	.quad	0x3fdbbb3ce5493dbe              # double 0.43330309287281554
	.quad	0x3fc60e36878064d4              # double 0.1723087464932066
	.quad	0x3fd182ae92f6feee              # double 0.27360119201692512
	.quad	0x3fde3daf53ebba32              # double 0.47251494593993748
	.quad	0x3fe6a471332dff4e              # double 0.70757350917845385
	.quad	0x3fbac1bafe338c10              # double 0.10451859193885604
	.quad	0x3fdf850a1c12a01c              # double 0.49249508611183201
	.quad	0x3febd2a5414ba9ed              # double 0.86946356537856462
	.quad	0x3fb3a64798373618              # double 0.076755976354626276
	.quad	0x3fecb4a3a49bf23d              # double 0.89705068731524984
	.quad	0x3fe881a2d47ac828              # double 0.76582471370625615
	.quad	0x3fc55f263f0d4adc              # double 0.1669662292357178
	.quad	0x3fec9ed28c19e220              # double 0.89438750613686934
	.quad	0x3f9317dc91a67be0              # double 0.018645712270536907
	.quad	0x3fd2def99e17e276              # double 0.29485931814955479
	.quad	0x3fe9fa52f059e0b6              # double 0.81180712646075537
	.quad	0x3fd52149bccfd334              # double 0.33015674055723143
	.quad	0x3fe4b1dc52803df8              # double 0.64671150315729076
	.quad	0x3fec3ef437de416c              # double 0.88268481170420676
	.quad	0x3fe06a2e6679464b              # double 0.51296157850647128
	.quad	0x3fe493bdeef344f6              # double 0.6430349032399636
	.quad	0x3febcd462ee060a3              # double 0.86880787997781217
	.quad	0x3fe7507a8a0af7f6              # double 0.72857405625813842
	.quad	0x3fd08593e9293ea0              # double 0.2581529404605849
	.quad	0x3fe5300b898bc44a              # double 0.66211487640806266
	.quad	0x3fe44bd6bbf5b3fd              # double 0.63425766669172357
	.quad	0x3fd555a8aa60f8fc              # double 0.33335320128016099
	.quad	0x3fd2341c88e533e6              # double 0.28443063133891966
	.quad	0x3febf328c8c7b265              # double 0.87343253340584381
	.quad	0x3fafe3cfd196e250              # double 0.062284941038744379
	.quad	0x3fee58efc24bee96              # double 0.94835651348644734
	.quad	0x3fd334f94ac295c6              # double 0.30010826397696311
	.quad	0x3feaca2da8de25b8              # double 0.83717997533783883
	.quad	0x3fdaf5ce8e5cf270              # double 0.42125286009448981
	.quad	0x3fe99395373e58fa              # double 0.79926548757319371
	.quad	0x3fe86d0a9c49f18d              # double 0.7633107235447355
	.quad	0x3fcc5d2abf23be68              # double 0.22159323056210956
	.quad	0x3fac915d74ca13d0              # double 0.055796547419084797
	.quad	0x3fe3b6c7a738a863              # double 0.61606199894346181
	.quad	0x3fea102b7a40220d              # double 0.81447385670714001
	.quad	0x3fc4d51d361b3684              # double 0.16275372640523156
	.quad	0x3fe73604fc534aa8              # double 0.72534417421623676
	.quad	0x3fe6d847291370cd              # double 0.71390111944813273
	.quad	0x3fdb4e5df7c3b374              # double 0.42665814586398843
	.quad	0x3fe781675eace33e              # double 0.73454636088636227
	.quad	0x3fe1d90cfb4645b0              # double 0.55774544789362857
	.quad	0x3fcedcdb4ba87cb4              # double 0.24111500925298446
	.quad	0x3f5ad5a961b0a000              # double 0.0016378549687576793
	.quad	0x3fe215f5a235d511              # double 0.56518060380645541
	.quad	0x3fef61be8a2f18cd              # double 0.98068167676026407
	.quad	0x3fd200fca277924e              # double 0.28131023279118927
	.quad	0x3fa3d55a5cbf4110              # double 0.038737129041353069
	.quad	0x3fd93a45932e4c40              # double 0.39418162701730708
	.quad	0x3fc3278d0d0edf84              # double 0.14964450013735242
	.quad	0x3fc7aa7aa3167ec0              # double 0.18489010775828341
	.quad	0x3fdb0a34a7a12f74              # double 0.42249790544587218
	.quad	0x3fe260e5b8bc30fc              # double 0.57432828980520823
	.quad	0x3fe363d94a609d51              # double 0.60593857313953425
	.quad	0x3feb63fa79751196              # double 0.8559543964589007
	.quad	0x3fdafda13e284fea              # double 0.42173033781113978
	.quad	0x3fda0cb5295d349c              # double 0.4070256141611226
	.quad	0x3fdcc0ddbde73950              # double 0.44927161736713561
	.quad	0x3fe2324f987962c6              # double 0.56864146976575891
	.quad	0x3fdd01355b0bd5b4              # double 0.45319875613435134
	.quad	0x3fef0cab8514f40a              # double 0.97029663078831274
	.quad	0x3fea4e68494db715              # double 0.82207121197800126
	.quad	0x3fc6bd4fb3d39cf4              # double 0.17765232353779192
	.quad	0x3fe3a03c6a3e7757              # double 0.61331005812437922
	.quad	0x3fe94f6d153de8ed              # double 0.79094556950374584
	.quad	0x3fe8b5c3f7ee0e60              # double 0.77218817161378794
	.quad	0x3fc46a05f052d700              # double 0.15948557123709151
	.quad	0x3fe021c82aee0c62              # double 0.50412376770726675
	.quad	0x3fd553481e3e9c4c              # double 0.33320811227389835
	.quad	0x3fa1229838705f40              # double 0.033467060937424353
	.quad	0x3fb84d7f7e5488e0              # double 0.094932525961243907
	.quad	0x3fa29a710da5f060              # double 0.036334546009101798
	.quad	0x3fef41594b3beb9b              # double 0.97672714895394407
	.quad	0x3fe390c6612e0355              # double 0.61142271976869245
	.quad	0x3fe2223d3f01551c              # double 0.5666795950479897
	.quad	0x3fe6ddfbe55dacb7              # double 0.71459765241652107
	.quad	0x3fd81d015ee6be5c              # double 0.37677034633359141
	.quad	0x3fd2b3edfa1f99c8              # double 0.29223203111760343
	.quad	0x3feb7b7a51beaebf              # double 0.8588229748324564
	.quad	0x3fe7f35a372910e1              # double 0.74845610402601548
	.quad	0x3fedd6a675dbed54              # double 0.93245242137292416
	.quad	0x3fdb528c81adb41a              # double 0.42691338218611607
	.quad	0x3fef4aa1b8329c97              # double 0.97786031700242659
	.quad	0x3fe6933ccd881ff0              # double 0.70547332899968573
	.quad	0x3fe1bd9dede09490              # double 0.55439659557727516
	.quad	0x3f9bad319a04c4e0              # double 0.027027869248915759
	.quad	0x3fef9e5738601fc8              # double 0.98807869921528723
	.quad	0x3fe27e217bf45a6b              # double 0.57789682588447755
	.quad	0x3fe697322ca19902              # double 0.70595654217757464
	.quad	0x3fcfbcf3b4edcf1c              # double 0.24795385679646464
	.quad	0x3fd943801a516956              # double 0.39474489755743514
	.quad	0x3fe765ae5139046e              # double 0.73116222251713991
	.quad	0x3fd94a231ad22f64              # double 0.39514997119180451
	.quad	0x3fdaa91bcf025abc              # double 0.41657157150022406
	.quad	0x3fbfbf1ecac97150              # double 0.12401001406528178
	.quad	0x3fc64a0e4699a7f4              # double 0.17413500258709258
	.quad	0x3fc1d0745918d714              # double 0.13917402601662643
	.quad	0x3fc3eec5b8492d9c              # double 0.15572425363857867
	.quad	0x3fe1d135a3aa4658              # double 0.55678827253195617
	.quad	0x3fc6220073feed3c              # double 0.172912651671007
	.quad	0x3fdf3b4beaeebb7e              # double 0.48799417441016846
	.quad	0x3fdc20cbcadb79c0              # double 0.43950171289716522
	.quad	0x3fe98bba16bd5d38              # double 0.79830650750492449
	.quad	0x3fba720ca5f2ea98              # double 0.10330275584684967
	.quad	0x3fc76173f90d5d70              # double 0.18266153012039466
	.quad	0x3fef609ee3fd9bf9              # double 0.98054451493669525
	.quad	0x3f842a7f8d5817c0              # double 0.0098466839799690175
	.quad	0x3fae65221a149910              # double 0.05936533516278264
	.quad	0x3fd998fc8b1dd088              # double 0.39996255479423626
	.quad	0x3fc8ce09190d2768              # double 0.193787705642815
	.quad	0x3fec30c569818fa3              # double 0.88095350844058762
	.quad	0x3fc3a76b291989c8              # double 0.15354671007942344
	.quad	0x3fdd0ee784773ec4              # double 0.45403469024766374
	.quad	0x3fee7d06f5f80c02              # double 0.95276210823828955
	.quad	0x3feee2f4425c85c8              # double 0.9652043624993718
	.quad	0x3fc25e928ef093c8              # double 0.14351112346153472
	.quad	0x3fe34f741bf14df7              # double 0.60344891984499227
	.quad	0x3fedfe075f30ce95              # double 0.93725937454151398
	.quad	0x3feb2780dfca0044              # double 0.84857219418336926
	.quad	0x3fd2d535f4834faa              # double 0.29426335218635791
	.quad	0x3fdf590b9f34ae20              # double 0.48980989978255884
	.quad	0x3fe3eb6f230e0fe9              # double 0.62248951765695637
	.quad	0x3fe9d88affacb805              # double 0.80768346725903994
	.quad	0x3fc74306439bc188              # double 0.18173292447273703
	.quad	0x3fec08635be77f13              # double 0.87602394056372856
	.quad	0x3fdd062fcef35078              # double 0.45350260934834052
	.quad	0x3fe489290ad775f0              # double 0.64174320333012069
	.quad	0x3fec453a5bdf8fef              # double 0.88345067924501375
	.quad	0x3fe3aa9eebbc6213              # double 0.61457773248827363
	.quad	0x3fe4cf425118fea2              # double 0.65030017699605858
	.quad	0x3fca626548fd2f14              # double 0.20612779678264614
	.quad	0x3feb59e85bbc959c              # double 0.85472505490604389
	.quad	0x3fd28bd76336ec14              # double 0.28978523911399745
	.quad	0x3fd17bd4cc78ec98              # double 0.27318305938724441
	.quad	0x3fe5b2a832d46e12              # double 0.67805871894546699
	.quad	0x3fed0aebb7379859              # double 0.90758310112574769
	.quad	0x3fe34b5d6dc8cf2f              # double 0.60294982378261419
	.quad	0x3fe1bb50ad7d7102              # double 0.55411561856047364
	.quad	0x3fd94e261e32bf00              # double 0.39539483021779631
	.quad	0x3fd71939b0661994              # double 0.36091463304946925
	.quad	0x3fce22fd669e0870              # double 0.23544280539141793
	.quad	0x3fb9dff602f2e8b8              # double 0.10107362339013803
	.quad	0x3fe286e47a696d03              # double 0.57896636875685237
	.quad	0x3fe6305881abda0b              # double 0.69340157820153203
	.quad	0x3fdcde1dbed3ace0              # double 0.45105689654765335
	.quad	0x3fe7204b1774ea6e              # double 0.72269205647837764
	.quad	0x3fde4debf18e2936              # double 0.47350596036325798
	.quad	0x3fe0764750660910              # double 0.51443830206724961
	.quad	0x3fe080e3dce4c8c9              # double 0.51573365348146993
	.quad	0x3fcf2b3428ce03c4              # double 0.24350597374362171
	.quad	0x3fc8066bdf51183c              # double 0.18769596485270934
	.quad	0x3fe49e063b6c2e7a              # double 0.64429008108113739
	.quad	0x3fd83605193a9c86              # double 0.37829711402668698
	.quad	0x3fdc4c45a475f402              # double 0.44215527592297132
	.quad	0x3fef3cf9dae59f85              # double 0.97619335892976322
	.quad	0x3fd832080b0055ca              # double 0.37805367540690027
	.quad	0x3fe9484893511919              # double 0.79007366917429345
	.quad	0x3fec0ebf1d6008df              # double 0.87680011498767019
	.quad	0x3fd8093e3a5e5478              # double 0.37556415271803401
	.quad	0x3fec4a7e63e5d385              # double 0.88409347068100941
	.quad	0x3fee452b50dbfefa              # double 0.94594350617259626
	.quad	0x3fe210c83cb5db7e              # double 0.56454860551353625
	.quad	0x3fd54af146444db4              # double 0.33269912588113049
	.quad	0x3fe6396da38bd973              # double 0.69451028769144185
	.quad	0x3fec9913edee6149              # double 0.89368626089984915
	.quad	0x3fe3aff4be649e2f              # double 0.61522900758877153
	.quad	0x3fd9e8494eeb8a06              # double 0.40480263430632168
	.quad	0x3fe7379964bffe8c              # double 0.72553701093416256
	.quad	0x3fdc526ddfecac54              # double 0.44253107898356814
	.quad	0x3fd0602fbc999b04              # double 0.25587075632067546
	.quad	0x3fe85a67fd442e8d              # double 0.76103591409760585
	.quad	0x3fd88373fa520dce              # double 0.38302325673450077
	.quad	0x3fe6a7ad25134555              # double 0.70796830407395339
	.quad	0x3fc818cb56fcd774              # double 0.18825666186756573
	.quad	0x3fc9639332358e60              # double 0.1983512873804214
	.quad	0x3fd2acfbc2747606              # double 0.29180807103861672
	.quad	0x3fe16243bc357779              # double 0.54324518928090904
	.quad	0x3fe66f42e9b92ba8              # double 0.70108171128355412
	.quad	0x3f88c2a2f2a623c0              # double 0.012089989690837188
	.quad	0x3fb45e4e49c1e028              # double 0.079563992507133308
	.quad	0x3fef5062b59aaeae              # double 0.97856269330573808
	.quad	0x3fc5ea6a4644ab54              # double 0.17121628218714113
	.quad	0x3fc9ffb32e5dbba0              # double 0.20311584247562298
	.quad	0x3fda7051ea91c3fa              # double 0.41310546786468161
	.quad	0x3fc9206ea6527370              # double 0.19630225297160164
	.quad	0x3fe5e369adb6061b              # double 0.68401035240111996
	.quad	0x3fd42d8cb50198a6              # double 0.31528012920751747
	.quad	0x3fe8431ead32d571              # double 0.75819333865972116
	.quad	0x3fe559d789c199f8              # double 0.66721703439253499
	.quad	0x3feb04f0228eaddc              # double 0.84435278653603118
	.quad	0x3fc92d1c5cad9778              # double 0.19668917203233227
	.quad	0x3feeac634ae73285              # double 0.95854344014658521
	.quad	0x3fe25195041981e7              # double 0.57245875168524385
	.quad	0x3fe93b96c6a36369              # double 0.78852404400377651
	.quad	0x3fedfdc0829cbbdf              # double 0.93722558508113341
	.quad	0x3fd0ecdf3f264d6c              # double 0.26445752303080527
	.quad	0x3fd15b4917e640de              # double 0.27119662603310057
	.quad	0x3fe4b8c895125722              # double 0.64755658259921156
	.quad	0x3fe9b013aaac9e4d              # double 0.80274375281164512
	.quad	0x3febe33a2ee5d8e7              # double 0.87148770484671167
	.quad	0x3fe46e044e601c99              # double 0.63842978770925918
	.quad	0x3fa23a35043e0970              # double 0.035600334899771435
	.quad	0x3fd6bb0ed348e0ee              # double 0.35516710885305158
	.quad	0x3fe291e32f0acbea              # double 0.58030852497028929
	.quad	0x3fec228b7dd994e5              # double 0.87921690540374853
	.quad	0x3fdb4a6e45febf26              # double 0.42641789279422182
	.quad	0x3fe0f625242d1f9e              # double 0.5300470072333956
	.quad	0x3fba684038ff1910              # double 0.10315324203029186
	.quad	0x3fdcdad926d72d8c              # double 0.45085743706723558
	.quad	0x3fbcfb3a39c6b4a8              # double 0.11320842657615293
	.quad	0x3fe214a039be470c              # double 0.56501780775053723
	.quad	0x3f8e1d01a8cf3240              # double 0.014703762973931167
	.quad	0x3fed410d0200e05f              # double 0.91419077292722395
	.quad	0x3fc1d3e5ba7690e0              # double 0.13927909474035172
	.quad	0x3fe87e7e6e018900              # double 0.76544114575906974
	.quad	0x3fac5f24793c1280              # double 0.055413379477646352
	.quad	0x3fedc53697cb71e6              # double 0.93032388350871709
	.quad	0x3fc6a254d3ec5048              # double 0.17682895992095582
	.quad	0x3fc430153ccbfab0              # double 0.1577173754557939
	.quad	0x3fd783c6b3e94ad0              # double 0.36741797990286518
	.quad	0x3fef4351bfb67248              # double 0.97696769184001031
	.quad	0x3fb5794f6fa04048              # double 0.083882298233448727
	.quad	0x3fd7e27207cbd282              # double 0.37319613229127679
	.quad	0x3fe9bd5374e66fa3              # double 0.80436108429011133
	.quad	0x3fd0f396e9a81aac              # double 0.26486752336533459
	.quad	0x3feb12af94e767be              # double 0.84603098948286237
	.quad	0x3fe3299718964508              # double 0.59882693102022788
	.quad	0x3fdfdadab93ab226              # double 0.49773281182095486
	.quad	0x3fe612cd8e6c382e              # double 0.68979528252544298
	.quad	0x3fc331124d2daf6c              # double 0.14993504303435701
	.quad	0x3fe8313be12b41fd              # double 0.75600999811473424
	.quad	0x3fee6681b4ccf64d              # double 0.95001302063583071
	.quad	0x3f879d4293b6ce40              # double 0.011530418522716634
	.quad	0x3fdeeff7c7020ec6              # double 0.48339647707346634
	.quad	0x3fe865c6601609f3              # double 0.76242369429411239
	.quad	0x3fe9cc0818f8bcdd              # double 0.80615620496055451
	.quad	0x3fc84b3467ecc4b4              # double 0.18979506563622339
	.quad	0x3fd02e42c5e7147a              # double 0.252823537124932
	.quad	0x3fd49b203baa887e              # double 0.32196813418170922
	.quad	0x3fe71d56575f3444              # double 0.7223312098009349
	.quad	0x3fd578ab921c89bc              # double 0.33549012440394299
	.quad	0x3feb0492cc3d1429              # double 0.8443082798991145
	.quad	0x3fdda11f883c4d88              # double 0.46295917801145281
	.quad	0x3feb372151d5f3b5              # double 0.85047975524468333
	.quad	0x3fe5172b7b629f6f              # double 0.65907835100823131
	.quad	0x3fede6a6df713938              # double 0.93440574303693946
	.quad	0x3fe004dfb6217eee              # double 0.50059495518141062
	.quad	0x3fd3c9cf34748e34              # double 0.30919246790492427
	.quad	0x3fe3ae14d47e5fe9              # double 0.61500016691843229
	.quad	0x3fc14ed7afc71920              # double 0.13521858294388611
	.quad	0x3fe1e8c42eca05ec              # double 0.55966385973459642
	.quad	0x3fbfefb5af4deb20              # double 0.12475142984287091
	.quad	0x3fdc55d0c6c4b4e2              # double 0.44273776446318724
	.quad	0x3fd2311a178749fc              # double 0.28424694345190438
	.quad	0x3fe6631ba7e465a6              # double 0.69959814826431876
	.quad	0x3fea60de44308ead              # double 0.8243247348622923
	.quad	0x3fedacf8806de31d              # double 0.9273645885833478
	.quad	0x3fceacc171f02538              # double 0.23964708388693068
	.quad	0x3fe7d0b941d2304a              # double 0.74422896247552583
	.quad	0x3fa17826cdb09dc0              # double 0.034119808777457461
	.quad	0x3fec64f2a78b7c8d              # double 0.88732273791892313
	.quad	0x3fc5350f6ef3f274              # double 0.16568177144644702
	.quad	0x3fe02e86a901999d              # double 0.50567944535287135
	.quad	0x3fef2acfaa15c3ac              # double 0.97397597522477985
	.quad	0x3fd3376f9b0577aa              # double 0.30025854243091976
	.quad	0x3fc40b7c4cc0e36c              # double 0.15660051105239903
	.quad	0x3fe8ea3c53510826              # double 0.77859321854362373
	.quad	0x3fe74c7f598e2c64              # double 0.72808806887895772
	.quad	0x3fb79c6dc5ef6090              # double 0.09223066408537961
	.quad	0x3fee801d60a97573              # double 0.95313900832449716
	.quad	0x3fd6c1fc0997d054              # double 0.35558987557238209
	.quad	0x3fde9e4ed0cdd1e8              # double 0.47841234580053404
	.quad	0x3feba69d6d4925d5              # double 0.86408873886937931
	.quad	0x3fcbc1acaa99f20c              # double 0.2168479760183718
	.quad	0x3fcab1434bf831b4              # double 0.20853463372658398
	.quad	0x3fe6bd34023f195c              # double 0.71059608877912295
	.quad	0x3fc52b1eb91ebb74              # double 0.16537841834130129
	.quad	0x3fcf84b0b891971c              # double 0.24623688709396496
	.quad	0x3fdcd70c663b4436              # double 0.45062551482721191
	.quad	0x3fe19f2096d8b858              # double 0.55067471945018109
	.quad	0x3fb9739a7777d908              # double 0.099420217673330424
	.quad	0x3fce229201eed504              # double 0.23543000311261875
	.quad	0x3fe0fa4e4a13e296              # double 0.53055490940376404
	.quad	0x3fbe9e8e7fbfe590              # double 0.11960688227545391
	.quad	0x3fc6008050b020b8              # double 0.1718902963623401
	.quad	0x3fee5869693c0fa0              # double 0.94829245141635354
	.quad	0x3fb860e09a497b38              # double 0.095228231113179684
	.quad	0x3fda73c77bc8544a              # double 0.41331660354746147
	.quad	0x3fce3c3710b03604              # double 0.23621261896953183
	.quad	0x3fb01d0c751baa28              # double 0.062943247404895986
	.quad	0x3fe8fa02caf27152              # double 0.78051890981763905
	.quad	0x3fd5a2f34389aeda              # double 0.33807069392672207
	.quad	0x3fb642fb0b42b040              # double 0.086959543465753519
	.quad	0x3fe2a1e11a58e65e              # double 0.58226065774870128
	.quad	0x3fea60a2ebde7379              # double 0.8242964369597835
	.quad	0x3fe67909ffea8cdc              # double 0.70227527602801443
	.quad	0x3fb37ee1a692f428              # double 0.076154807250489953
	.quad	0x3fe9867e7a4e1a3e              # double 0.79766773116791234
	.quad	0x3fb496a30354b770              # double 0.080423534692014575
	.quad	0x3fc26ddb7b197690              # double 0.14397758017269213
	.quad	0x3fd0cbc52cf14b6a              # double 0.26243714703485088
	.quad	0x3fe68c8c5577b14d              # double 0.70465676014786427
	.quad	0x3f9ef1b4eadeafa0              # double 0.030218912921256114
	.quad	0x3fe1442295269937              # double 0.53956727152834716
	.quad	0x3fdbe3f9b79c141c              # double 0.43578951769478791
	.quad	0x3fed0bb595965e57              # double 0.90767935959133694
	.quad	0x3fc5130525e9810c              # double 0.16464294768503185
	.quad	0x3fe0c4c39347add8              # double 0.52401903882622047
	.quad	0x3fef95b7fbd8be4a              # double 0.98702620686339881
	.quad	0x3fe353a6c4bdf3bc              # double 0.6039613573662943
	.quad	0x3fd70731fabe7d0a              # double 0.35981416212776252
	.quad	0x3fe4e6dc9ff45e9d              # double 0.65318137398840614
	.quad	0x3fc5989d4c2171c8              # double 0.16871992318455242
	.quad	0x3fe68abb2ab16988              # double 0.70443495119552413
	.quad	0x3fe3b75578afbc13              # double 0.61612962314200315
	.quad	0x3fe9af6e325c8212              # double 0.80266485058024473
	.quad	0x3febf13e39856688              # double 0.87319861635769858
	.quad	0x3fe3131379f1fa8e              # double 0.59607862298419589
	.quad	0x3fdc9369ce6202b2              # double 0.44649739412856626
	.quad	0x3fdaa83b10196858              # double 0.41651798793976047
	.quad	0x3fda8e3ebb554bb2              # double 0.41493194860702964
	.quad	0x3f9a8ceb462b4480              # double 0.025928188474442226
	.quad	0x3fe8e06d39a68d30              # double 0.7773958326328394
	.quad	0x3fe4308bf6c514c0              # double 0.63092611500965035
	.quad	0x3fe7511c54153537              # double 0.72865120336942979
	.quad	0x3fda0569307fb9ce              # double 0.406580254900203
	.quad	0x3fe028d8148ab3af              # double 0.50498584758826393
	.quad	0x3feb07b7f5d42f67              # double 0.844692211279363
	.quad	0x3fe417022b40a1bb              # double 0.62780865142581577
	.quad	0x3fe3e3f6cb38a225              # double 0.62157764140744531
	.quad	0x3fd16874e01a1086              # double 0.27200052151625476
	.quad	0x3fea1eb51886e468              # double 0.81624846258558836
	.quad	0x3fe53986cecf28fe              # double 0.66327228920388825
	.quad	0x3fe85ec7852ab9dc              # double 0.76156974801215993
	.quad	0x3fe414fb67e06195              # double 0.62756128586174731
	.quad	0x3fe27e6f8192cb0f              # double 0.57793402964884588
	.quad	0x3fda5dab8c19d2d2              # double 0.41196716958738222
	.quad	0x3fc5df6026945d8c              # double 0.17087938197867591
	.quad	0x3fe911f875377dce              # double 0.78344366926097009
	.quad	0x3fc5de2c4d299e38              # double 0.17084268348411213
	.quad	0x3fc0512facf31e78              # double 0.12747760720070622
	.quad	0x3fdf6e294e0e30ca              # double 0.49109871504402902
	.quad	0x3fed3b13993b5893              # double 0.91346149376001262
	.quad	0x3fe2094b35945aad              # double 0.56363449539897703
	.quad	0x3feb5d0d60def75c              # double 0.85510891838178393
	.quad	0x3fe679fc40f0d5be              # double 0.70239079173796148
	.quad	0x3feddfe90b245f33              # double 0.93358280349909817
	.quad	0x3fe9c49a2864fc64              # double 0.80524928941293838
	.quad	0x3fdbe0b7fcca262a              # double 0.43559074102867845
	.quad	0x3fd3f90d2ac605ac              # double 0.31207589318372686
	.quad	0x3fd37c9b903c03cc              # double 0.30448044858354417
	.quad	0x3fda3dd188483d80              # double 0.41002310093696082
	.quad	0x3fd46c483e7a622c              # double 0.31910902119992346
	.quad	0x3fe401f211e9a017              # double 0.62523749826960084
	.quad	0x3fd0605b0a4de1a2              # double 0.25588108068725479
	.quad	0x3fe738a8228aac5d              # double 0.72566611048149421
	.quad	0x3fb4f897a4a73e98              # double 0.081918218325194636
	.quad	0x3fd4d8e02c312d2a              # double 0.32573704066881481
	.quad	0x3fd230cffad978ce              # double 0.28422927376767582
	.quad	0x3fe54278d32474d7              # double 0.66436425436736612
	.quad	0x3fe010612f10ec1b              # double 0.50199946587179356
	.quad	0x3fd5c5ff9a9c2f7c              # double 0.34020986651079688
	.quad	0x3fde93f4bc6a23ae              # double 0.4777805175768276
	.quad	0x3fd63f3beece8920              # double 0.34760950394606205
	.quad	0x3fe1f43149808436              # double 0.56105865817892808
	.quad	0x3fd8387eef1946ac              # double 0.37844823216901591
	.quad	0x3fd9546df292f682              # double 0.39577816666483312
	.quad	0x3fd152f621c8420e              # double 0.2706885652451384
	.quad	0x3fe82f0a6ad925ca              # double 0.75574227207942468
	.quad	0x3fec902f42671cb3              # double 0.89260066003125471
	.quad	0x3fd24a290ae98e30              # double 0.28577638688713858
	.quad	0x3feabfdaf63fed6e              # double 0.83591983886382848
	.quad	0x3fe236a0ef3bbd64              # double 0.56916853642716747
	.quad	0x3fd43fc7d32b3e9a              # double 0.31639285680737717
	.quad	0x3fb6b80fe1aa2080              # double 0.088746063798796015
	.quad	0x3feed8bbc66d459b              # double 0.96395672564738121
	.quad	0x3fc7bcb04b1f1b88              # double 0.18544582050364178
	.quad	0x3fe5ee84e42134bc              # double 0.68536610180458224
	.quad	0x3fd58a041b5e134a              # double 0.33654883072477004
	.quad	0x3fe5d08a9ea183fa              # double 0.68170672400094579
	.quad	0x3feb11e752acb1d3              # double 0.84593549868946594
	.quad	0x3fef6d7dbeefb69f              # double 0.98211562435399801
	.quad	0x3fd0602cfda623b4              # double 0.2558701016465037
	.quad	0x3fd61fdde30ebc88              # double 0.34569499181356678
	.quad	0x3f8d67280a34d140              # double 0.01435691147944651
	.quad	0x3fd6c982aa73e58e              # double 0.35604921956800062
	.quad	0x3fb96abd7137ebc0              # double 0.099284973279210043
	.quad	0x3fc317b100395280              # double 0.14916050444539408
	.quad	0x3fca7c9f55df0cc4              # double 0.20692817395147334
	.quad	0x3fab39746ee648d0              # double 0.053172720468084855
	.quad	0x3fc6492310aa1d6c              # double 0.17410696328827713
	.quad	0x3feb73d0adea4d8a              # double 0.85788759200879494
	.quad	0x3fd5493fd46cfa0e              # double 0.33259578461357442
	.quad	0x3fed68edc5a21a69              # double 0.91905869102704429
	.quad	0x3fead174948eb508              # double 0.83806828513266485
	.quad	0x3fbdb55b202a4628              # double 0.11604852233201568
	.quad	0x3fa2e7854667a320              # double 0.036922612041797587
	.quad	0x3fd11f4b3f393de4              # double 0.26753503011874913
	.quad	0x3fec0ec6d9efd90c              # double 0.87680380407144431
	.quad	0x3fd3523ea800186e              # double 0.301894821226944
	.quad	0x3fb6c6c1e5a49ea8              # double 0.088970297398754838
	.quad	0x3fec1842495fab94              # double 0.87796129542162981
	.quad	0x3feda0ffb05a365e              # double 0.92590317195726946
	.quad	0x3feca787f25db407              # double 0.89545056664576428
	.quad	0x3fe4c8ebd33ab250              # double 0.64952651267737771
	.quad	0x3fdee9889bd03826              # double 0.48300376144550439
	.quad	0x3fe70b18b1278e21              # double 0.72010454750529018
	.quad	0x3fec14c10043a50e              # double 0.8775334363137135
	.quad	0x3fd25284d2cdc300              # double 0.28628655039123885
	.quad	0x3f7eeb1b08425400              # double 0.0075484329173791664
	.quad	0x3fe468d17e26c53c              # double 0.63779520644144538
	.quad	0x3fdd124a1116c0b6              # double 0.4542412917026114
	.quad	0x3fd5ccfa5a4cac08              # double 0.34063586061773821
	.quad	0x3fe3f17c9161262c              # double 0.62322834391051662
	.quad	0x3fcf1341d5058a38              # double 0.24277518178412705
	.quad	0x3fe8c5e84f449cf8              # double 0.77415862543139635
	.quad	0x3faa7812295bbf80              # double 0.051697318600303355
	.quad	0x3fe8520c5db50716              # double 0.76001566221404704
	.quad	0x3fcc8f45bf248f70              # double 0.22312232812066268
	.quad	0x3fe2acb1ef6d39e8              # double 0.58358093989391779
	.quad	0x3fedcf17a5b9c3a7              # double 0.93152983063020123
	.quad	0x3fee3431c8b29b2b              # double 0.94387139509931239
	.quad	0x3fb3966b87d48690              # double 0.076513977681793798
	.quad	0x3fdcf8a53be355fe              # double 0.45267611359062687
	.quad	0x3fef60e6de640d3d              # double 0.98057883678158186
	.quad	0x3fec11285fb192c0              # double 0.87709444704213269
	.quad	0x3fe306a136b07190              # double 0.59455929452410494
	.quad	0x3feeb35568caf60d              # double 0.9593913122877794
	.quad	0x3facc733e2f48050              # double 0.056207295851209538
	.quad	0x3fe792aa2a52d40c              # double 0.73665340677564606
	.quad	0x3fc331e6da4d8668              # double 0.14996038111989951
	.quad	0x3fd8e831099d1e18              # double 0.38917184771386948
	.quad	0x3fe5d0450001f2e1              # double 0.68167352677809501
	.quad	0x3fc1176350d12e1c              # double 0.13352624364993992
	.quad	0x3fe4d8a723c8a133              # double 0.65144688595777323
	.quad	0x3fdd88952850c05e              # double 0.46146134316496112
	.quad	0x3fe91252b8ad8f56              # double 0.78348671026149463
	.quad	0x3fd5b6c53c7f617c              # double 0.33928042324034613
	.quad	0x3fe1ed08c0d3b20c              # double 0.56018483792792173
	.quad	0x3fe654dbbac039d0              # double 0.69785868143827123
	.quad	0x3fde86b28d9c57c6              # double 0.47697128132983513
	.quad	0x3fef1de9f8d1433e              # double 0.97240160557894462
	.quad	0x3fe75978a6cff4e8              # double 0.72967178898366303
	.quad	0x3fe61a000349d0c4              # double 0.69067383425001383
	.quad	0x3fdeb05da20a476a              # double 0.47951451133950818
	.quad	0x3fcbb96d004ef61c              # double 0.21659624590931592
	.quad	0x3feb3a911d28c301              # double 0.85089927382622943
	.quad	0x3fdbd2fe2356b11c              # double 0.43475297404326496
	.quad	0x3fde2d7eb9a14e9c              # double 0.4715267956537248
	.quad	0x3fd8c72677fc5c14              # double 0.38715516774522141
	.quad	0x3fe56ae483291c05              # double 0.66929841630269549
	.quad	0x3fefaadeb075be32              # double 0.98960813965636008
	.quad	0x3fe7f1f43064c197              # double 0.74828538371916664
	.quad	0x3fe91048b32a481f              # double 0.78323779099651236
	.quad	0x3f8e829af7dbcbc0              # double 0.014897547425311575
	.quad	0x3fe523eaee71fef6              # double 0.66063448497149468
	.quad	0x3fdabafd7f8fcc96              # double 0.41766297776411798
	.quad	0x3fec5a42aa84e073              # double 0.88601811699392241
	.quad	0x3fd6bee9562251f0              # double 0.35540231143502776
	.quad	0x3fed840cc48335b4              # double 0.92236936932902446
	.quad	0x3fc2eb981196d57c              # double 0.14781475886199391
	.quad	0x3fd913163894160a              # double 0.39178996587028847
	.quad	0x3fcdcf0d1ab31ec8              # double 0.23288120082565045
	.quad	0x3fa6fb6a7687ab60              # double 0.044886900872220137
	.quad	0x3fc3e5feccd14db8              # double 0.15545639992579452
	.quad	0x3fccec5ec8f4c330              # double 0.22596344768819554
	.quad	0x3faf1c470c3a9660              # double 0.060762615435390854
	.quad	0x3fe2a0f9c647badf              # double 0.58215035177803631
	.quad	0x3fcc6e4836d3059c              # double 0.22211554219215379
	.quad	0x3fcca73ad1d7409c              # double 0.22385344740041979
	.quad	0x3fe2fb065ea15fbb              # double 0.59314268572324325
	.quad	0x3fe3fd90a2a62ac4              # double 0.62470275657081986
	.quad	0x3fe77db3a60ea2bb              # double 0.73409445221940162
	.quad	0x3fd19bd17da55fca              # double 0.2751353957187318
	.quad	0x3fe60eda1b95f838              # double 0.6893129862580798
	.quad	0x3fe3b784dd827108              # double 0.61615222228604782
	.quad	0x3fe96593c5a963ed              # double 0.79364956479832716
	.quad	0x3fdbb76e8162704e              # double 0.43307078013618117
	.quad	0x3feedf3f6f381fca              # double 0.96475192759043549
	.quad	0x3fe642a0ad877cad              # double 0.69563325779372109
	.quad	0x3fd6b5565bd6e52c              # double 0.35481795281119122
	.quad	0x3fd4e38718cc9d96              # double 0.32638719007305761
	.quad	0x3fee641e9ea6cf7b              # double 0.94972163187638559
	.quad	0x3fd3e26614455152              # double 0.31069328288619602
	.quad	0x3fee4bae7691db7a              # double 0.94673846395640671
	.quad	0x3fd77b0825adf3de              # double 0.36688426665915397
	.quad	0x3fe632fbae9ba902              # double 0.69372352698454187
	.quad	0x3fe8ab676af2bd5a              # double 0.77092333687134418
	.quad	0x3fe2a0ee820e6a79              # double 0.58214497949241129
	.quad	0x3fe2de8eafa621fa              # double 0.5896676474231406
	.quad	0x3fe4e6b9fbc43ac2              # double 0.65316485570095772
	.quad	0x3feedd7117f0d0ea              # double 0.96453146625438291
	.quad	0x3fb773abd1335bd0              # double 0.091608751844759028
	.quad	0x3fc8143192401490              # double 0.18811626092079736
	.quad	0x3fec269a4721ebb8              # double 0.87971223729197501
	.quad	0x3fe9a2804568ad73              # double 0.80108655506539461
	.quad	0x3fcd8701c7b8135c              # double 0.23068258525759233
	.quad	0x3fd9510fd424a1f2              # double 0.39557262150859096
	.quad	0x3fe95a4950a3f361              # double 0.7922712874420591
	.quad	0x3fb0297c97226240              # double 0.063133036516213714
	.quad	0x3fd162a01136c7e8              # double 0.27164460831693171
	.quad	0x3fe0448560c52422              # double 0.50836438084036595
	.quad	0x3fbddc16260e7640              # double 0.11663950375665255
	.quad	0x3fdb66fb7a50264a              # double 0.42816054291379102
	.quad	0x3faf05f516e188e0              # double 0.060592326205339608
	.quad	0x3fd457760a0985e2              # double 0.31783820133395413
	.quad	0x3fcb166e328da3c0              # double 0.21162202328130597
	.quad	0x3fd89d63e3bf5c14              # double 0.38460633507696795
	.quad	0x3fe4c77633118ffb              # double 0.64934835409485403
	.quad	0x3f996ad3cc01b4c0              # double 0.02482157642991889
	.quad	0x3fe1aa9d9f6da804              # double 0.55207711351727129
	.quad	0x3fc1d78fbf5a93b0              # double 0.13939091533134507
	.quad	0x3fe896e08c4fc155              # double 0.76841761974905387
	.quad	0x3fc603b749a93ad4              # double 0.17198840233546397
	.quad	0x3fb705454a320ca8              # double 0.089924173940789331
	.quad	0x3fd737d5804bd244              # double 0.36278283623622465
	.quad	0x3fc54399655c9d30              # double 0.1661254639559302
	.quad	0x3fb3bb7057149d88              # double 0.077078839549917899
	.quad	0x3feae51db082d8ef              # double 0.84046825861767427
	.quad	0x3fe719a29b14fdd9              # double 0.72187929429486097
	.quad	0x3fc535e5e111cef4              # double 0.16570733537411508
	.quad	0x3fc6f9cbf0dbf3dc              # double 0.17949818859770417
	.quad	0x3fd7bc512226fa00              # double 0.37086895308667067
	.quad	0x3feee06beb58cef8              # double 0.96489520994370447
	.quad	0x3f980f4d6387d000              # double 0.023495873641834919
	.quad	0x3fb418fc1fb0b6f0              # double 0.078506238686454343
	.quad	0x3fe04495725f5a5a              # double 0.5083720430219032
	.quad	0x3fe0ef1d94b910b3              # double 0.52918890998309676
	.quad	0x3fe10ffbdca95b86              # double 0.5332011518283799
	.quad	0x3fce21e270e54210              # double 0.23540907394864563
	.quad	0x3fe830c1cfef19af              # double 0.75595179187876294
	.quad	0x3fc6c61349c3c568              # double 0.17791977979463103
	.quad	0x3feb47c53d9433af              # double 0.85251104380733078
	.quad	0x3fef7bfd9fbef8aa              # double 0.98388558578860352
	.quad	0x3fe3c2dd6e465f4f              # double 0.61753722703995517
	.quad	0x3fef9fc11b73a8b3              # double 0.98825126039198207
	.quad	0x3fb70c53bb506758              # double 0.090031846266723448
	.quad	0x3fda003382696d02              # double 0.40626228080300575
	.quad	0x3fdc332972739278              # double 0.44062267472171568
	.quad	0x3febca1ae76facb1              # double 0.86842103197468223
	.quad	0x3fccc7e9c586dd20              # double 0.2248508657919297
	.quad	0x3feae7bdde810f24              # double 0.84078877885665237
	.quad	0x3febf18fd9673760              # double 0.87323753797111791
	.quad	0x3fe74735ee8f5495              # double 0.72744270890929619
	.quad	0x3fbd42ec3675c920              # double 0.11430240945427217
	.quad	0x3fea30465e24de01              # double 0.81839292895796245
	.quad	0x3fb6d117aca27370              # double 0.0891279980155113
	.quad	0x3fef46902f12d3ee              # double 0.9773636741070939
	.quad	0x3fe5fc16bfcda654              # double 0.68702256642900261
	.quad	0x3fe76af67b085854              # double 0.73180698423198942
	.quad	0x3fdbdd6475bf7c98              # double 0.43538772105052592
	.quad	0x3fecefd36961cd9b              # double 0.90427561361723308
	.quad	0x3fd268a8ff20f382              # double 0.28763794817842137
	.quad	0x3fc482377d1ea614              # double 0.16022389993058594
	.quad	0x3fd88080041a47b6              # double 0.38284302139902182
	.quad	0x3fdfd01e49ab67be              # double 0.49707753366748963
	.quad	0x3fded860d72287de              # double 0.48195668229356936
	.quad	0x3fe2790a9b9f6e98              # double 0.57727556605410069
	.quad	0x3feb84774012e342              # double 0.85992014421854202
	.quad	0x3f5449ba0fbb3800              # double 0.0012382809645035131
	.quad	0x3fe5472cc2cb1ad7              # double 0.66493833585340212
	.quad	0x3fea89cd5705b431              # double 0.82932154652156076
	.quad	0x3fe6b2ddba1762e0              # double 0.70933424325911787
	.quad	0x3fe9ba76090b8453              # double 0.80401136175727073
	.quad	0x3fec566c617caff4              # double 0.88554972687188504
	.quad	0x3fd019dfaddea3ac              # double 0.25157920817815227
	.quad	0x3fca25b45165bf98              # double 0.2042756459663877
	.quad	0x3fe65640935f6323              # double 0.69802883895599555
	.quad	0x3fe69d04d856f7cb              # double 0.7066673493752601
	.quad	0x3faad55f86bc54f0              # double 0.052409157941079587
	.quad	0x3fdea177fbaa1cec              # double 0.47860526634799672
	.quad	0x3feba5b84c90e796              # double 0.86397948221496068
	.quad	0x3fd8110ecb3e4bd0              # double 0.37604112480147212
	.quad	0x3fef6440a0b2cab4              # double 0.9809878481522305
	.quad	0x3fba961c60f41e88              # double 0.10385300986319568
	.quad	0x3fd9f397675c9540              # double 0.40549264043723454
	.quad	0x3fe248420252bbad              # double 0.5713205380796943
	.quad	0x3fd1ed35554a7a1e              # double 0.28010304764930705
	.quad	0x3fedb3f9b24a2ef6              # double 0.92821965048048471
	.quad	0x3fcff31d05c032a8              # double 0.24960673123168431
	.quad	0x3fd6772557f395d2              # double 0.35102208699239867
	.quad	0x3fa902149a832790              # double 0.048843997823111995
	.quad	0x3fecf3ab17913e94              # double 0.90474466898918359
	.quad	0x3fe60fe87bb585ac              # double 0.68944191133430399
	.quad	0x3fca2d80802d904c              # double 0.20451360949221209
	.quad	0x3fea669f692e6ac0              # double 0.82502718489862303
	.quad	0x3fe0d006826cdc60              # double 0.52539372895888548
	.quad	0x3fe4fc3fde1ea2ed              # double 0.65579217322109928
	.quad	0x3feb2e5528d2759b              # double 0.84940584157054688
	.quad	0x3fcf512217e4f004              # double 0.24466348807061433
	.quad	0x3fc84a6b53c5ea8c              # double 0.18977109518512625
	.quad	0x3fc8b4c5a5669e44              # double 0.19301672531331537
	.quad	0x3fba08bc3aafb930              # double 0.1016957896497146
	.quad	0x3fed21c4f5bf6045              # double 0.91037223813601342
	.quad	0x3fef7f9d6577777c              # double 0.98432798211773286
	.quad	0x3fe9120f7f517851              # double 0.78345465533107916
	.quad	0x3fde58dbe8324a46              # double 0.47417352366861498
	.quad	0x3fa1c9143678b7c0              # double 0.03473723568855247
	.quad	0x3fe5348fd9c1d4f2              # double 0.66266624956793252
	.quad	0x3fb65cad37acae40              # double 0.087351633160033693
	.quad	0x3fea22229f051e18              # double 0.81666689928619274
	.quad	0x3fee222b1d84730d              # double 0.94167094960320841
	.quad	0x3fee5e5b7c17d181              # double 0.94901823269769647
	.quad	0x3fd7e9012a6203f4              # double 0.37359646929695534
	.quad	0x3fe9a00e330769de              # double 0.80078802076905808
	.quad	0x3fe81162b3e17ed6              # double 0.75212226040818098
	.quad	0x3fe4d162291324ab              # double 0.65055950186174039
	.quad	0x3fed9cf25ac380f4              # double 0.92540853240282539
	.quad	0x3fe2b962f1797c99              # double 0.58513018763541702
	.quad	0x3fa5313b7fab1a10              # double 0.041391238531606089
	.quad	0x3fc013b0aec6c670              # double 0.12560089620596981
	.quad	0x3fc36570a1f4f15c              # double 0.15153320224807032
	.quad	0x3fdbb3d665f369e0              # double 0.43285140949379119
	.quad	0x3fed255f39ffc1f2              # double 0.91081200912418425
	.quad	0x3fea282a01d2edc2              # double 0.81740284305799826
	.quad	0x3fddde1594af8d12              # double 0.4666799499520532
	.quad	0x3fed2014747e904c              # double 0.91016600373087319
	.quad	0x3fea525f9509c7e5              # double 0.8225553427603215
	.quad	0x3fe358682fe65231              # double 0.60454186778458141
	.quad	0x3fd733b4d8899068              # double 0.36253090997911963
	.quad	0x3fdf1fa7fbe8f02a              # double 0.48630714035585021
	.quad	0x3fd3b4cca4210e68              # double 0.30791011837229698
	.quad	0x3fe46b221c819ada              # double 0.63807778899794276
	.quad	0x3fec6ef3d7852e2b              # double 0.88854400724216498
	.quad	0x3fe63fd519fa930d              # double 0.69529204439149483
	.quad	0x3fef7b35376ac1b4              # double 0.98379002402912485
	.quad	0x3fed486313af50ea              # double 0.91508630604451224
	.quad	0x3fc997c1c93367ac              # double 0.19994375538118214
	.quad	0x3fc90f5c5dd47a40              # double 0.19578127461950778
	.quad	0x3fcfc18bd45204d8              # double 0.24809406153875702
	.quad	0x3fea1d37158acc3e              # double 0.81606630523163637
	.quad	0x3fdfb3b5286e123c              # double 0.49534348438490716
	.quad	0x3fda1095e92c491a              # double 0.40726230402755592
	.quad	0x3fb8fa10932dadc8              # double 0.09756568520759068
	.quad	0x3fe72b8eea921ca8              # double 0.72406717123603404
	.quad	0x3fca682c1681dff4              # double 0.20630408381452947
	.quad	0x3fdba20544b8f568              # double 0.43176395140820611
	.quad	0x3fe9094597bfb957              # double 0.78238181723080913
	.quad	0x3fec4c103ec35e21              # double 0.88428509005001754
	.quad	0x3fefa2d5353ab427              # double 0.98862705608701595
	.quad	0x3fa8deb03e0dded0              # double 0.048573978018735198
	.quad	0x3fd9b369ab35d0ca              # double 0.40157548637149587
	.quad	0x3fd16a4bab17a786              # double 0.27211276729814704
	.quad	0x3fc685246b9a1efc              # double 0.1759381795311511
	.quad	0x3febdee2fc2960b1              # double 0.87095784426039391
	.quad	0x3fc5acfcece1260c              # double 0.16934167448407356
	.quad	0x3fec6173d2404ad8              # double 0.88689604820896317
	.quad	0x3fb66945a8124970              # double 0.087543824704231942
	.quad	0x3fd999c1b37f3326              # double 0.40000956086150763
	.quad	0x3fe8b9437c80704d              # double 0.77261518780461247
	.quad	0x3fe2086ba564041b              # double 0.5635278921400898
	.quad	0x3fb759156c7164d0              # double 0.091203059172943357
	.quad	0x3feeda734382dad7              # double 0.96416629014751265
	.quad	0x3fd12396c9e7c2c4              # double 0.26779718129459362
	.quad	0x3fee6b0cf37c91b9              # double 0.95056769901253013
	.quad	0x3fe4d4ec85e93710              # double 0.65099168924800388
	.quad	0x3fd216022bca0324              # double 0.28259329105644526
	.quad	0x3fe987afc0986f5c              # double 0.79781329742716478
	.quad	0x3fd84b14fdbe4a5e              # double 0.3795826414072162
	.quad	0x3fc79fa9970a16d0              # double 0.18456001162501545
	.quad	0x3fe0fa96efb37b9c              # double 0.53058955017683074
	.quad	0x3fcd218066786f44              # double 0.22758488658370812
	.quad	0x3fd70a52a19bce52              # double 0.36000505239573954
	.quad	0x3f91f7b4b1017ec0              # double 0.0175464852367202
	.quad	0x3fdb7394f36d3a08              # double 0.42892955562720703
	.quad	0x3fd861b123c36926              # double 0.3809626435519412
	.quad	0x3feee0f3415ed67d              # double 0.96495974319141419
	.quad	0x3fee0890eb52b6d5              # double 0.93854566537421624
	.quad	0x3fcdcb275094493c              # double 0.23276225504430126
	.quad	0x3fe2bfbe9eef8dd1              # double 0.58590632478847671
	.quad	0x3fb593d4dc550de8              # double 0.084286979476977941
	.quad	0x3fe157516900ea25              # double 0.54190893658170991
	.quad	0x3fea080577f36dd4              # double 0.81347917011174297
	.quad	0x3fec3ba74d6bb292              # double 0.88228192445019915
	.quad	0x3fc3844bb7aa5888              # double 0.15247484653508914
	.quad	0x3fe923e9e5db4a57              # double 0.78563399213664808
	.quad	0x3fe7ec71a6e0a733              # double 0.74761278718253832
	.quad	0x3fef7a192d9b5d86              # double 0.98365458400341832
	.quad	0x3fedb111fc9e5c99              # double 0.92786502208300015
	.quad	0x3fcfd875f0735c50              # double 0.2487933563304261
	.quad	0x3fe234594f34b019              # double 0.56889024228940166
	.quad	0x3fec62563b5545e2              # double 0.88700400913711186
	.quad	0x3f90753819087220              # double 0.016072155502216856
	.quad	0x3fbddaf29cba1b90              # double 0.11662212683050499
	.quad	0x3fe150e3ccc46b51              # double 0.54112424844366036
	.quad	0x3fea0706b0670786              # double 0.81335768178563295
	.quad	0x3fe437691b020dae              # double 0.63176398539547107
	.quad	0x3fe463c1535be8e9              # double 0.63717714577731244
	.quad	0x3feae80643176678              # double 0.84082329849043358
	.quad	0x3fe277ed31ebc616              # double 0.57713947057908643
	.quad	0x3fd84a1e99278432              # double 0.37952389675598674
	.quad	0x3fc5bb948d72e69c              # double 0.1697869959514734
	.quad	0x3fe592292e7cf199              # double 0.67409190253924856
	.quad	0x3fdd36a84200a414              # double 0.45646101422841068
	.quad	0x3fd5dbfc0b06c9a0              # double 0.34155179096992505
	.quad	0x3febf8faf4ea62d3              # double 0.87414310298035003
	.quad	0x3fa60b4fcb2f2880              # double 0.043055051377067777
	.quad	0x3fe325435e0830e6              # double 0.59829872480034108
	.quad	0x3fb6c08325790220              # double 0.0888750044332558
	.quad	0x3fd8ab78efb406aa              # double 0.38546584518926841
	.quad	0x3feda67b92e37c95              # double 0.92657259644683398
	.quad	0x3fe2da15b9ffe31e              # double 0.58912168815649912
	.quad	0x3fb57b60a53c2b88              # double 0.083913841572366477
	.quad	0x3fd9d2db77ff7a0c              # double 0.40349470823812861
	.quad	0x3fab4dd118f97e20              # double 0.053328069971709136
	.quad	0x3fe2e10e86a98bb6              # double 0.5899727468607725
	.quad	0x3fe6c1d723ff4ee5              # double 0.7111621573517054
	.quad	0x3fe294ab7d780fba              # double 0.58064817910825828
	.quad	0x3fcb87a6ec98dbc0              # double 0.21507727196305204
	.quad	0x3fe1649213f8f6b3              # double 0.54352668667680459
	.quad	0x3fcf45e0a1d16a74              # double 0.24431999112387681
	.quad	0x3fe312f8a446a7d8              # double 0.59606582722812629
	.quad	0x3fe0a8f5d5deeaf5              # double 0.52062503596911702
	.quad	0x3fdf76fcf2a66998              # double 0.49163745590490171
	.quad	0x3fca53c3219ef714              # double 0.2056812204518158
	.quad	0x3fddac9f39bede0a              # double 0.46366100920883524
	.quad	0x3fe4a4b4d8113b74              # double 0.64510576439520984
	.quad	0x3fe843423eb1e963              # double 0.75821029896841841
	.quad	0x3fd311db5624dfa8              # double 0.29796489155296024
	.quad	0x3fe0004c2835f2af              # double 0.50003631452235264
	.quad	0x3fcd240de704a6d8              # double 0.22766279010948298
	.quad	0x3fedcd866b086b2c              # double 0.93133850960598385
	.quad	0x3fed91b8801ea5c4              # double 0.92403817199117854
	.quad	0x3fee914faa15c26b              # double 0.95523818225599422
	.quad	0x3fe30902e14bcd05              # double 0.59485000613349881
	.quad	0x3f74095d15d9fd80              # double 0.0048917423388269432
	.quad	0x3fce8897cea891c8              # double 0.23854348746057341
	.quad	0x3feccee27772359a              # double 0.90025447205850928
	.quad	0x3fd3eb1962596b2a              # double 0.31122431377814286
	.quad	0x3fd0b367217d436c              # double 0.2609498812717479
	.quad	0x3fdac577a0003880              # double 0.41830244660457794
	.quad	0x3fc914eb7d261cc0              # double 0.19595092402253123
	.quad	0x3feea067624ee712              # double 0.95708054734061165
	.quad	0x3fea867e8f10cfe8              # double 0.82891776983751431
	.quad	0x3fe14a48288e21b7              # double 0.54031761094034081
	.quad	0x3fe8e0e891870df4              # double 0.77745464728690061
	.quad	0x3fd4981ef964f6a8              # double 0.3217847285739972
	.quad	0x3fe4aa72c91a59a9              # double 0.64580668714443334
	.quad	0x3fb9ed98d03f1e10              # double 0.10128169139999721
	.quad	0x3fd19ec23a5af886              # double 0.27531486223950485
	.quad	0x3fe071aa2a13b764              # double 0.51387508600394627
	.quad	0x3fd45a35512c5390              # double 0.31800587584557949
	.quad	0x3fe7431a68ff7ef7              # double 0.72694130427768655
	.quad	0x3fd33d094c6650b4              # double 0.30060036145119828
	.quad	0x3fe18c11b412f1c3              # double 0.54834828539565483
	.quad	0x3fde07379fc2e6ba              # double 0.46919050790493666
	.quad	0x3fdcc3b9fe8b0378              # double 0.44944619996754609
	.quad	0x3fe9961ecab245f6              # double 0.7995752295411751
	.quad	0x3fe31033f690b237              # double 0.59572790295857814
	.quad	0x3fe96c47137565fa              # double 0.79446748543267565
	.quad	0x3febc8feaf9e940f              # double 0.86828550625489409
	.quad	0x3fecac4a4581dccd              # double 0.8960315091670964
	.quad	0x3fd0d80982505da0              # double 0.26318586088151541
	.quad	0x3fcf83d67125a1a8              # double 0.24621086621051558
	.quad	0x3fb672028c755798              # double 0.087677153865426738
	.quad	0x3fed56aab4da4a3f              # double 0.91682944605629035
	.quad	0x3fedec5da121e92f              # double 0.93510323973831599
	.quad	0x3fb4b0b85783ca28              # double 0.080821534505766679
	.quad	0x3fd7a7ed7de08ac2              # double 0.36962449352919802
	.quad	0x3fdedc3a0af24a9e              # double 0.48219157284726488
	.quad	0x3feef173b01b0910              # double 0.96697410960794805
	.quad	0x3fe3753be2f58a8c              # double 0.60806078269918507
	.quad	0x3fed67153286d9c9              # double 0.91883334988124787
	.quad	0x3fde299b79e783ee              # double 0.47128950981829021
	.quad	0x3fef5d8b417a81d2              # double 0.98016894139078148
	.quad	0x3fe4284b96f670f0              # double 0.62991885647673307
	.quad	0x3fe2decfc55415f6              # double 0.58969868221964705
	.quad	0x3fca824f36793e10              # double 0.20710172805637272
	.quad	0x3fdae7a43199005a              # double 0.42038826793214457
	.quad	0x3fa6fc7efe8d9d30              # double 0.044895142148386191
	.quad	0x3fd4ca77467371ce              # double 0.32485753898597813
	.quad	0x3fe41efa8fff2d33              # double 0.62878158687946095
	.quad	0x3fc96c2fa58f3e68              # double 0.1986140783687802
	.quad	0x3fdb7cea75c3a2b8              # double 0.42949925899896924
	.quad	0x3fc03d9519cac8b0              # double 0.12687934646016208
	.quad	0x3fed2fdff0298661              # double 0.91209408671074865
	.quad	0x3fb3f98e07f93850              # double 0.078026654192599353
	.quad	0x3fe28bc11cae2529              # double 0.57955985643017016
	.quad	0x3fccd87731eaa538              # double 0.22535600602467709
	.quad	0x3fc664f4c89842f0              # double 0.17495593828836986
	.quad	0x3feb1acd85784727              # double 0.84702182834937367
	.quad	0x3fecf748741188aa              # double 0.90518591565730344
	.quad	0x3f6d69f897751400              # double 0.0035905700021054976
	.quad	0x3fdf06a31143e39a              # double 0.48478008924535632
	.quad	0x3fe4a142ac8004de              # double 0.64468511287136798
	.quad	0x3fe0db49fd7ba19c              # double 0.52676867969880758
	.quad	0x3fe77e81e69eb67d              # double 0.73419280093158046
	.quad	0x3fcd7058aad0b2e8              # double 0.22999103870952031
	.quad	0x3fe0a168f140b754              # double 0.51970336074530588
	.quad	0x3fd462963924846c              # double 0.31851726131760105
	.quad	0x3fd5466b8d7b7e2c              # double 0.33242310349121129
	.quad	0x3fd498d939f4ea48              # double 0.32182913455804796
	.quad	0x3fbd54c048513a88              # double 0.11457444921073023
	.quad	0x3fc55b76647da430              # double 0.16685371310021102
	.quad	0x3feaa43fdf213f9f              # double 0.8325499876027499
	.quad	0x3fd904252cf96412              # double 0.39087800399789885
	.quad	0x3fd95947b88aec9e              # double 0.39607422849412355
	.quad	0x3fcc7f64bd03f41c              # double 0.22263774136800485
	.quad	0x3fdd1ed363189cc2              # double 0.45500645329816447
	.quad	0x3fe5ef820a42a6f4              # double 0.68548681262947619
	.quad	0x3fe37220f6370fb1              # double 0.60768173302539286
	.quad	0x3fea30bf146abfdf              # double 0.81845048892682459
	.quad	0x3fe4f99e19aaf066              # double 0.65547089589337015
	.quad	0x3fa2884ddc9eaa00              # double 0.036196168118596717
	.quad	0x3fe30e0356df8e87              # double 0.59546057670054686
	.quad	0x3fb37ff1614c0580              # double 0.07617100358404194
	.quad	0x3fe77e603bcd4705              # double 0.73417674713184111
	.quad	0x3fe1e09b229cdaf9              # double 0.55866772423072952
	.quad	0x3fe669fe3736d847              # double 0.70043860229521548
	.quad	0x3fdb41cad53ffdce              # double 0.42589064431373636
	.quad	0x3fa6d80d29e49f40              # double 0.044617091525934516
	.quad	0x3febe370945eb20b              # double 0.87151364305970114
	.quad	0x3fe34c7252a81d11              # double 0.60308185714612439
	.quad	0x3fd84710b1183332              # double 0.37933747572315035
	.quad	0x3fe7291fc4ab01f1              # double 0.72377003108709748
	.quad	0x3fd3dfc8db1ac3ca              # double 0.31053372761658393
	.quad	0x3feb2c1a4ef95556              # double 0.84913363861657376
	.quad	0x3fe2a8848aeb93c5              # double 0.58307101376396331
	.quad	0x3fed8b3d37aa10d2              # double 0.92324696418702445
	.quad	0x3fea5f5335938181              # double 0.82413635696507026
	.quad	0x3fd7fcf7f2f7b5f8              # double 0.37481497504526784
	.quad	0x3fe655a3e906e9eb              # double 0.69795413506591097
	.quad	0x3fe8b1bb3cb07dd9              # double 0.77169572690393828
	.quad	0x3fdd98fb79f0c05a              # double 0.46246230037923441
	.quad	0x3fbb0d1f9b7ddaf8              # double 0.10566899820501507
	.quad	0x3fc2bf2174ff53c0              # double 0.14645784580957688
	.quad	0x3fe39c21c5d0c4f1              # double 0.6128090728363117
	.quad	0x3fee411be789cc4a              # double 0.94544787618941339
	.quad	0x3fd02b12545ac82c              # double 0.2526288818145328
	.quad	0x3fe67e939b525b8f              # double 0.70295124374648477
	.quad	0x3fec56b5a18a6525              # double 0.88558465529346064
	.quad	0x3fce9c49431d6e6c              # double 0.23914447571847874
	.quad	0x3fa978578bfd9c60              # double 0.049746261442856321
	.quad	0x3fedfada33c5c3a1              # double 0.93687162505931465
	.quad	0x3fe98dee588f4910              # double 0.79857556626146398
	.quad	0x3fe46271d67f4b55              # double 0.63701717275612657
	.quad	0x3fd7fabeca172a6c              # double 0.37467927680396573
	.quad	0x3fc1f6a543a2c1ec              # double 0.14033952524688631
	.quad	0x3fe264f4bf4835b8              # double 0.57482373580722079
	.quad	0x3fc56bde168b8d8c              # double 0.16735435582004887
	.quad	0x3fed13dbb0f529b3              # double 0.90867409288448753
	.quad	0x3feafb4b1192d542              # double 0.84317544395768373
	.quad	0x3fe5d99dda7bdcc7              # double 0.68281452820419808
	.quad	0x3fee00ba7ea36264              # double 0.9375889275934921
	.quad	0x3fe0c2d6b2dfb73f              # double 0.52378401695543875
	.quad	0x3fdc6f53524a45d6              # double 0.44429476772446941
	.quad	0x3fe96493b13bc6d0              # double 0.79352745643537936
	.quad	0x3fd12a20c6c64316              # double 0.26819629108017418
	.quad	0x3fe713a13d8dcc0c              # double 0.72114622137303419
	.quad	0x3fea16c62a392537              # double 0.81528003927920778
	.quad	0x3fd7d63894b9b638              # double 0.37245001338928629
	.quad	0x3fea09c6feb69498              # double 0.8136935210101397
	.quad	0x3fed7564bd9401c1              # double 0.92058026339514509
	.quad	0x3fc8c9cd8e4caf54              # double 0.19365853737087468
	.quad	0x3fd9dc45947f9472              # double 0.40406932355683189
	.quad	0x3fed70ae50a634b8              # double 0.9200049948864466
	.quad	0x3fefee42f9df44b1              # double 0.99783467105057443
	.quad	0x3fe70e477250648f              # double 0.72049305273971409
	.quad	0x3fd50e903c76d98c              # double 0.32901388077461813
	.quad	0x3fe4114e02c64677              # double 0.62711239377877248
	.quad	0x3fe1f37e356cceb4              # double 0.56097326693130478
	.quad	0x3fe1ffba48037e20              # double 0.56246675553478909
	.quad	0x3fefca0aabc9151e              # double 0.99341329147197022
	.quad	0x3fd64188dc02ffde              # double 0.34774991498488628
	.quad	0x3fe5cd289d184ac1              # double 0.68129378016086417
	.quad	0x3fda539ddd34f1b4              # double 0.41135355570056764
	.quad	0x3fca848a492c68d4              # double 0.20716980526851236
	.quad	0x3fe58736b2dc1d47              # double 0.67275557454642232
	.quad	0x3fd3e0bba49cf570              # double 0.3105916125822068
	.quad	0x3fedb62542642e9b              # double 0.92848456351335373
	.quad	0x3fb0f881cd25ff28              # double 0.066291916451515775
	.quad	0x3fe03cedb8dd9f75              # double 0.50743757349572027
	.quad	0x3fc18fcf41b27670              # double 0.13720122058741735
	.quad	0x3feb4ee39dbf634e              # double 0.85338002023773085
	.quad	0x3f9e3a8385d82920              # double 0.029520087284290786
	.quad	0x3fef711f1ceb2964              # double 0.9825587811294949
	.quad	0x3fee85ebcb0c9bf4              # double 0.95384778650338697
	.quad	0x3fe1a885149ab909              # double 0.55182127022070049
	.quad	0x3fd87d1d3184620c              # double 0.38263635478645663
	.quad	0x3f9617646d976260              # double 0.021573609532284599
	.quad	0x3fa88052be9fbf80              # double 0.047854028481991939
	.quad	0x3fd03acc8ca11758              # double 0.25358880742384349
	.quad	0x3fcced0419894ad8              # double 0.22598315474404873
	.quad	0x3fb8ae6e2b2b74d8              # double 0.096411595859041355
	.quad	0x3fe97d7f18a64679              # double 0.7965693932948873
	.quad	0x3febd79c7584a5db              # double 0.87006972267880245
	.quad	0x3fee8fdf50b95d4b              # double 0.95506253973409494
	.quad	0x3fe20fa1917c87f8              # double 0.56440809645960055
	.quad	0x3fa431e0936d6f60              # double 0.039443033215063705
	.quad	0x3feccf0a7c70a26b              # double 0.90027355484660398
	.quad	0x3fe59637f65f7a6d              # double 0.67458723182410341
	.quad	0x3fe09e2cdc89ab15              # double 0.51930850099356241
	.quad	0x3fe1a8e924e06781              # double 0.55186898424584296
	.quad	0x3fe478cf6597094d              # double 0.63974733201784206
	.quad	0x3fe8e37a972cceac              # double 0.77776841665623441
	.quad	0x3fdfa7aa344a2f54              # double 0.49460845095085415
	.quad	0x3fd05ac5b7ac1d46              # double 0.25554030358076252
	.quad	0x3fbd313725fd3088              # double 0.11403221776453354
	.quad	0x3fe7cc17fd37140d              # double 0.74366378265460897
	.quad	0x3fe9ac4443829c5b              # double 0.80227864442430119
	.quad	0x3fc1a54550617ff8              # double 0.13785616326185823
	.quad	0x3fdfa1b176ea38c6              # double 0.49424397099290862
	.quad	0x3fc6eb72943850e8              # double 0.17906028973869259
	.quad	0x3fccd0838c20ffe8              # double 0.22511333791953736
	.quad	0x3fda11799504eef8              # double 0.40731658508933277
	.quad	0x3fe6b2b34b6ebfb8              # double 0.70931400998050886
	.quad	0x3fbdd7cf83e2c8b8              # double 0.11657425851697922
	.quad	0x3fd7490b3d0fde94              # double 0.36383324587902988
	.quad	0x3fe3f7de612e088f              # double 0.62400740604813787
	.quad	0x3fe53c8a493c230d              # double 0.66364015868848159
	.quad	0x3feccbc2eafa6ad1              # double 0.89987321752718163
	.quad	0x3febc2093f165bf1              # double 0.86743604966875243
	.quad	0x3fed90f5b98d09b5              # double 0.92394529571929829
	.quad	0x3fdb219fbfd45f6c              # double 0.42392724736554643
	.quad	0x3fd84f20a96ceb74              # double 0.37982956452804406
	.quad	0x3fce9f3cc72f3018              # double 0.23923454023167845
	.quad	0x3fcadcae9d7accec              # double 0.20985968293607671
	.quad	0x3fe59ae342892513              # double 0.67515719409235186
	.quad	0x3facdd776f8129a0              # double 0.056377155648607458
	.quad	0x3fc32625b4e646d4              # double 0.14960166295036592
	.quad	0x3fe7b0c75352f052              # double 0.74032942079748865
	.quad	0x3fd3b5c2a29eb06a              # double 0.30796876793716044
	.quad	0x3fdef787ba8bb5e2              # double 0.48385804383619135
	.quad	0x3fef7180601935e0              # double 0.98260515946611448
	.quad	0x3feb7231db305e83              # double 0.85768978891697178
	.quad	0x3fe9829eac353704              # double 0.79719480165815115
	.quad	0x3fef7e10dfa24814              # double 0.98413890532015324
	.quad	0x3fd721f6f386dfcc              # double 0.36144803792876412
	.quad	0x3fdf8c9cd19ce3c0              # double 0.49295731039051915
	.quad	0x3fe9b78059708f03              # double 0.80365006893814017
	.quad	0x3fe9966380340284              # double 0.7996079925506625
	.quad	0x3fe4040ed691e5db              # double 0.62549535663782352
	.quad	0x3fed4bdd8eda2621              # double 0.91551092053231653
	.quad	0x3fefd2d387be4e4d              # double 0.99448563110713339
	.quad	0x3fe7d984214b8b22              # double 0.74530226233432395
	.quad	0x3fef50752e6a9a83              # double 0.97857150140482962
	.quad	0x3fe4d89e70c2ed0e              # double 0.65144273780552608
	.quad	0x3fe935117cc2e280              # double 0.78772806518016125
	.quad	0x3fe192e168af601e              # double 0.54917974897671562
	.quad	0x3fd4f84c55ae0d1a              # double 0.32765491835762506
	.quad	0x3fd91ae00130d2be              # double 0.39226532093315913
	.quad	0x3fe99801cb49416f              # double 0.79980554298712814
	.quad	0x3fd8028135710df0              # double 0.37515287608059023
	.quad	0x3fc9081ac18ed0c8              # double 0.19555983019893675
	.quad	0x3fef815bc328d9f6              # double 0.98454082600693371
	.quad	0x3f8585f4304048c0              # double 0.010509402964121839
	.quad	0x3fc2f9279d2f7958              # double 0.14822859931059429
	.quad	0x3fdc1198a95a832e              # double 0.43857399500307082
	.quad	0x3fc8c39e2c194910              # double 0.19346978333721454
	.quad	0x3fecf75e2f85f890              # double 0.90519627839946004
	.quad	0x3fe10e731a17bcc4              # double 0.53301386924967931
	.quad	0x3fb329a07960b568              # double 0.07485392535519042
	.quad	0x3fd5b2ec0f249088              # double 0.33904553870002774
	.quad	0x3f705d200775f000              # double 0.0039950610292827093
	.quad	0x3fa60e00c8bbc110              # double 0.043075584891882568
	.quad	0x3fd64d7ff8a13308              # double 0.34848021774523419
	.quad	0x3fbff01f91f88a08              # double 0.12475774110547644
	.quad	0x3fe990e0a7d9f9bc              # double 0.7989352491711581
	.quad	0x3fd16091b5d40fbe              # double 0.27151911503483095
	.quad	0x3fe1dd78c81b75c7              # double 0.55828513225031251
	.quad	0x3fedeac3e84191c8              # double 0.93490786898160483
	.quad	0x3fbf5fd7dc7c23c0              # double 0.12255620129521017
	.quad	0x3fc20ab3223ec594              # double 0.14095153019074458
	.quad	0x3fe8b320a9dcaa8a              # double 0.77186616111915041
	.quad	0x3fe3977ef06c17d1              # double 0.61224314649074973
	.quad	0x3fe76fd2ab1e5a89              # double 0.73240025922389507
	.quad	0x3fea665d25fe86ff              # double 0.82499558850051347
	.quad	0x3fe9dfe3781dec3d              # double 0.80858014545754708
	.quad	0x3fe39d4af610596a              # double 0.61295078334187036
	.quad	0x3fef89da175c1282              # double 0.98557762682374084
	.quad	0x3fe336cfb46611d8              # double 0.60044083818552973
	.quad	0x3fda65846378768e              # double 0.41244611467286851
	.quad	0x3fd1f0661f2947ba              # double 0.2802977852162446
	.quad	0x3fc5ec56c44a50d8              # double 0.17127499184119332
	.quad	0x3fc482c173e3ff48              # double 0.16024034651490582
	.quad	0x3fe1a5d329821ebb              # double 0.55149229151807988
	.quad	0x3fd6873c3cdc0580              # double 0.35200410788828407
	.quad	0x3fdfd29005117e0e              # double 0.49722671980814048
	.quad	0x3fe86b900f912d72              # double 0.76313021698426398
	.quad	0x3f92b72e44ecfd40              # double 0.018276904065030353
	.quad	0x3fe64f1531ac13f4              # double 0.69715366078946639
	.quad	0x3fcd26eb45a14bec              # double 0.22775021457582001
	.quad	0x3fe647842d96f755              # double 0.69623001960983777
	.quad	0x3fede5efd573ef51              # double 0.93431846323026424
	.quad	0x3fd47557dac6b07a              # double 0.31966205944878079
	.quad	0x3fdf3893db062f6c              # double 0.48782822026327355
	.quad	0x3fba9f54d6d686b0              # double 0.10399370427196675
	.quad	0x3fe1abd6537289e9              # double 0.55222622202228167
	.quad	0x3fc69d23604e32dc              # double 0.17667047693648541
	.quad	0x3f773e35b9dc1680              # double 0.0056745623276178714
	.quad	0x3fb6d1cba9d5ad68              # double 0.089138726199669116
	.quad	0x3fedc5b16ac33859              # double 0.930382450600301
	.quad	0x3f8eef52ef7132c0              # double 0.015104911739535765
	.quad	0x3fe6aefb0b0338b6              # double 0.70885994101424532
	.quad	0x3fd67f9aaddc5858              # double 0.35153834322534783
	.quad	0x3fead07f19429124              # double 0.83795123036955887
	.quad	0x3fe5668306065c37              # double 0.66876364876487215
	.quad	0x3feb4ebe2db40275              # double 0.85336216856383251
	.quad	0x3fe5a7cec6d8d432              # double 0.67673434102346719
	.quad	0x3fd64c74be61039e              # double 0.34841650573440031
	.quad	0x3fe0abe16488b3eb              # double 0.52098149905725444
	.quad	0x3fb23269632a4720              # double 0.071081721029511602
	.quad	0x3febac2f45bbe184              # double 0.86476863498596445
	.quad	0x3fc11c4b09427e40              # double 0.13367593719611826
	.quad	0x3fe7273f3a62f31f              # double 0.72354089168183922
	.quad	0x3fe2acb590b3f87e              # double 0.58358267080599524
	.quad	0x3fea6e6813c43d7f              # double 0.82597736225754648
	.quad	0x3fe7de800db2c197              # double 0.74591067004625955
	.quad	0x3fc88b5472cb18a0              # double 0.19175201039451384
	.quad	0x3fda956eab86ac6a              # double 0.41537062407105074
	.quad	0x3fd24176beba4ce2              # double 0.28524559617762979
	.quad	0x3fdaca0a06977f9a              # double 0.41858149188737459
	.quad	0x3fc490e3761a2a50              # double 0.1606716467543543
	.quad	0x3fc477d665a135a8              # double 0.15990714990986743
	.quad	0x3fed2db7e412a900              # double 0.9118308500813157
	.quad	0x3fe405f5b5d9002e              # double 0.62572751538391969
	.quad	0x3fee0afd446961eb              # double 0.93884147035265408
	.quad	0x3fe6b2fd31933ea9              # double 0.70934924776698438
	.quad	0x3fec4cfbbb04bbe6              # double 0.88439737822579612
	.quad	0x3fc965da8d5c15c8              # double 0.19842082884149037
	.quad	0x3feefc50137a5914              # double 0.96829990200311266
	.quad	0x3fd383e01e71e1ec              # double 0.30492403958444814
	.quad	0x3fd23a1ca736c02c              # double 0.28479687051276659
	.quad	0x3fb3ac3df947f068              # double 0.076846955642339787
	.quad	0x3feb387f34fd8a2a              # double 0.85064659452138369
	.quad	0x3fe654aaef74bc77              # double 0.69783541458845277
	.quad	0x3f98f6bf73a31ec0              # double 0.024378768380102001
	.quad	0x3fe61e23801ed4f7              # double 0.69117903731844776
	.quad	0x3fed28a686fad853              # double 0.91121221888784942
	.quad	0x3fdab86ed08807d8              # double 0.41750688900367328
	.quad	0x3fbfd6e3d591b360              # double 0.12437271083918011
	.quad	0x3fe59ea36db15b77              # double 0.67561503815055246
	.quad	0x3fcce2ed9a0d68ac              # double 0.22567529699410238
	.quad	0x3fe76d9619348187              # double 0.73212723658439038
	.quad	0x3fedfae9e8560755              # double 0.93687911394247669
	.quad	0x3f9f9bd799304220              # double 0.030867928242573339
	.quad	0x3fdfcb27013dd756              # double 0.49677443619963435
	.quad	0x3fee90587344e431              # double 0.95512030137536474
	.quad	0x3fd3743aa3150236              # double 0.30396905828459653
	.quad	0x3f73322b967d5380              # double 0.0046865179682143987
	.quad	0x3fc13ee2ca9c2298              # double 0.13473162549077666
	.quad	0x3fe1d283804e2268              # double 0.55694747027980629
	.quad	0x3fabb81c02a2b990              # double 0.054139018365606195
	.quad	0x3fd473b28e01a3c0              # double 0.31956161372960068
	.quad	0x3fe50c5389ce17fb              # double 0.65775467791604514
	.quad	0x3fe6b8fe4e7a7ec0              # double 0.71008220031577451
	.quad	0x3feb0a3dabbf31cd              # double 0.84500011009509424
	.quad	0x3f94e64a3bd5bca0              # double 0.020409736539872214
	.quad	0x3fe53989165a20b7              # double 0.66327337613713311
	.quad	0x3fe47023f953ebe2              # double 0.63868902870978794
	.quad	0x3fc4238ef97534c4              # double 0.15733515911634843
	.quad	0x3fcd84ffc5be33e0              # double 0.23062131076258563
	.quad	0x3fbc5a0ac32ea460              # double 0.110748932506469
	.quad	0x3fd4b2b6f30f3bfc              # double 0.32340787636070423
	.quad	0x3fbdc35c6674c1d8              # double 0.11626222134942255
	.quad	0x3fe738a769b8f575              # double 0.7256657662289131
	.quad	0x3fe618a424b3a2fa              # double 0.69050795715619917
	.quad	0x3fe7c7df81138041              # double 0.74314856729689194
	.quad	0x3fee835e75845da5              # double 0.9535362525229415
	.quad	0x3feb7e4432b0bc92              # double 0.8591633787199433
	.quad	0x3fd4387fcfa7f53c              # double 0.31594844130434629
	.quad	0x3fefd9f4a31ca776              # double 0.99535590989874723
	.quad	0x3fef4b24f6cf4221              # double 0.97792289929390474
	.quad	0x3fd962f30ca3ea04              # double 0.39666439279940868
	.quad	0x3fe7a5fd31841885              # double 0.739012333594261
	.quad	0x3fe5ada90da0af77              # double 0.6774487749257635
	.quad	0x3fe3b54b1c3d4409              # double 0.6158805419491965
	.quad	0x3fd516ef3909daa4              # double 0.32952480859914091
	.quad	0x3f9a9e31d82df3a0              # double 0.025994089908170204
	.quad	0x3fe35c498a266038              # double 0.60501553518680051
	.quad	0x3fe45b37b589e9a1              # double 0.63613496262341951
	.quad	0x3fe592026ef68ad5              # double 0.67407342598411424
	.quad	0x3fe610e94177fe1b              # double 0.6895643500028571
	.quad	0x3f843173b7e311c0              # double 0.009859947251592227
	.quad	0x3fe2cf2a4e02d266              # double 0.58778872715499797
	.quad	0x3fe2467f67fb12fe              # double 0.57110567387334732
	.quad	0x3faccfb441264d90              # double 0.056272156670412632
	.quad	0x3fd0bb3f94ffe376              # double 0.26142873335589145
	.quad	0x3fe1add4800a46fc              # double 0.55246949203339524
	.quad	0x3fa8ad4b97b31580              # double 0.04819713808823689
	.quad	0x3fdbb5c126eb0dc4              # double 0.43296841431239508
	.quad	0x3fd7593e2ae9c7bc              # double 0.36482195082418989
	.quad	0x3fe88c35e34c3715              # double 0.76711553949437195
	.quad	0x3fefbd707f11d738              # double 0.99187493150996086
	.quad	0x3fd57e921495bef4              # double 0.33585025797127277
	.quad	0x3fe4bc2c4935a49a              # double 0.64797033594836084
	.quad	0x3fec80319968855e              # double 0.8906486507659499
	.quad	0x3feeaba08ca3c97a              # double 0.95845057934484079
	.quad	0x3fd26b56dae960b6              # double 0.28780146959389741
	.quad	0x3fe9bfba3780ed6f              # double 0.80465422478247983
	.quad	0x3fcee7a1dcaa1410              # double 0.24144385599734663
	.quad	0x3fe1f6563b4c8971              # double 0.56132041532354837
	.quad	0x3fd5d8298b1596fe              # double 0.34131849844412432
	.quad	0x3fc02340b353082c              # double 0.12607582813331086
	.quad	0x3facef5eca2a7280              # double 0.056513750246470984
	.quad	0x3fe5e63dc3b19c10              # double 0.68435562344973455
	.quad	0x3fcaa46586b90780              # double 0.20814198568592346
	.quad	0x3fea8c2354b84895              # double 0.82960669085356875
	.quad	0x3fea613ef41f714a              # double 0.82437083893049956
	.quad	0x3fe99422b18ca066              # double 0.79933294942476318
	.quad	0x3fb259458caf9168              # double 0.071674677703020273
	.quad	0x3fe3bde5a08a2393              # double 0.61693078380004562
	.quad	0x3fb2e7c642c09248              # double 0.073849097535068187
	.quad	0x3fe76a49200b50e1              # double 0.73172432192452785
	.quad	0x3fe49f145e403439              # double 0.64441889198645363
	.quad	0x3feee03dd93c3dd0              # double 0.96487324169896205
	.quad	0x3fe9c28a1b33b867              # double 0.80499749482056593
	.quad	0x3fe1f3db0ed2d92a              # double 0.56101754088630185
	.quad	0x3fe53f4a388d674d              # double 0.6639758209741814
	.quad	0x3feba15038e18d10              # double 0.86344157323438431
	.quad	0x3fc349f091a27684              # double 0.15069396124902223
	.quad	0x3fdfaa3073c3a39e              # double 0.49476252846812396
	.quad	0x3fd599e68e39bebc              # double 0.33751834763732425
	.quad	0x3fe619f88d2917a3              # double 0.69067027635968647
	.quad	0x3fad6293a858a3d0              # double 0.057392706203536314
	.quad	0x3fe57fecfc79dd63              # double 0.6718659335300966
	.quad	0x3fd93aa9088a304c              # double 0.39420533975567618
	.quad	0x3fec57e2d17c087d              # double 0.88572827258055009
	.quad	0x3fbf475902bcb838              # double 0.12218242947412328
	.quad	0x3fcb3573c5dec258              # double 0.21256873284939348
	.quad	0x3feedef7c0f4e530              # double 0.96471774756279238
	.quad	0x3fd44d5e98a1f33e              # double 0.31722226052788816
	.quad	0x3fc9c4df3dafbe60              # double 0.20132055770908419
	.quad	0x3fec150b7e6f1052              # double 0.87756895727262418
	.quad	0x3fe834a3659c1b59              # double 0.75642556996977384
	.quad	0x3fab8db7c108da70              # double 0.053815595926086313
	.quad	0x3fe4f4f24d17801f              # double 0.65490069443695009
	.quad	0x3fdb943cb3a199b4              # double 0.43092267553438579
	.quad	0x3fe29bdab0854862              # double 0.58152517773329415
	.quad	0x3fc4f569b5736070              # double 0.16373940811058985
	.quad	0x3fea9172e57338c5              # double 0.83025498213262294
	.quad	0x3fe6fc1ef13c946e              # double 0.71827647320300314
	.quad	0x3fd877a32d01bd00              # double 0.38230208773798324
	.quad	0x3fefbe68cb8bb284              # double 0.99199332957285024
	.quad	0x3fce0d5930c14a08              # double 0.23478236084572779
	.quad	0x3fe18b87754eedf4              # double 0.54828236495762761
	.quad	0x3fec91e2b8218a9c              # double 0.89280830348100748
	.quad	0x3fe975e985b2f015              # double 0.79564357865411017
	.quad	0x3fd62f2bd92dea78              # double 0.34662910660669111
	.quad	0x3fd247d7330f1896              # double 0.28563480364062721
	.quad	0x3fd4edfdbc7fe4b0              # double 0.32702582748567988
	.quad	0x3feb74318c5751e0              # double 0.85793378267640818
	.quad	0x3fb84c31d9447520              # double 0.094912639182855418
	.quad	0x3fc47b3ea4bbede8              # double 0.16001112979561971
	.quad	0x3fe7d416c090be95              # double 0.74463975534850368
	.quad	0x3fc4a4b9e65531dc              # double 0.16127704378813135
	.quad	0x3fe59097daac01e9              # double 0.6739005347190502
	.quad	0x3febe983245ac05c              # double 0.87225491619575334
	.quad	0x3fea7480fd6d45e8              # double 0.82672166345053899
	.quad	0x3fd6bd5dd4a8b178              # double 0.35530801551319469
	.quad	0x3fdd07629cadb6a8              # double 0.45357575703278963
	.quad	0x3fc73c27d29c5388              # double 0.18152330192301869
	.quad	0x3fe70d7aa434052a              # double 0.72039539404810182
	.quad	0x3fec38137382c07b              # double 0.88184521256154313
	.quad	0x3fd03ad6089cc584              # double 0.25359106865933989
	.quad	0x3fdfb42d2049f224              # double 0.49537208703239544
	.quad	0x3fec7a5e2c871b08              # double 0.88993748375728021
	.quad	0x3fe57bc74fb22aa8              # double 0.67135968747728203
	.quad	0x3fef948def4adeba              # double 0.98688408600624844
	.quad	0x3fdba7e6b07fef5c              # double 0.4321228717451413
	.quad	0x3fc8cf4c746aad84              # double 0.19382625278863597
	.quad	0x3fd344c93e1755c4              # double 0.30107337058629136
	.quad	0x3fbac66a5c6beef0              # double 0.10459007984530522
	.quad	0x3feab79b45fd1789              # double 0.83491290731102297
	.quad	0x3fd845b62b8d3450              # double 0.37925485852321561
	.quad	0x3fd6ecad0f88381c              # double 0.35819555775458567
	.quad	0x3fe1199d28e93d60              # double 0.53437669744918637
	.quad	0x3fca3070afcbd758              # double 0.20460327705193992
	.quad	0x3fd95ef9adc4552a              # double 0.3964218327467558
	.quad	0x3fef6abcf5c99598              # double 0.98177955632552293
	.quad	0x3fde54418e33f09a              # double 0.47389258276940327
	.quad	0x3fc2144c66d2a294              # double 0.14124445934910013
	.quad	0x3fcc0a6d725488a4              # double 0.21906822283296379
	.quad	0x3fd0490bd1fd9602              # double 0.25445838457957859
	.quad	0x3fbf4c90d08143b0              # double 0.12226204958393683
	.quad	0x3fef7a2c5328cf02              # double 0.98366371385643014
	.quad	0x3fe3fb6f7c19e17b              # double 0.62444280851836653
	.quad	0x3fe32cfb347270e0              # double 0.59924087756692401
	.quad	0x3fa94e7c64ea1640              # double 0.049426925009396161
	.quad	0x3fedad4c49d43e42              # double 0.92740454120389182
	.quad	0x3fe4d07509cc0656              # double 0.65044643319579154
	.quad	0x3f87eb6fa2cb9f80              # double 0.01167952743112699
	.quad	0x3fef4fa8ab408501              # double 0.97847398231184012
	.quad	0x3fef4ca5c3fbfdc2              # double 0.97810638693038521
	.quad	0x3fc9efb05aeab6ec              # double 0.20262722434329505
	.quad	0x3fd18f3dceff222a              # double 0.27436776365769566
	.quad	0x3fe47a2dbd43c2a7              # double 0.63991438833007386
	.quad	0x3fb962753b5ff438              # double 0.099158598895841332
	.quad	0x3fc8b7a9cc631438              # double 0.19310495834193531
	.quad	0x3fce5911e22e2ea8              # double 0.23709319633450332
	.quad	0x3fe7572a778e2fdd              # double 0.72939036703746363
	.quad	0x3fea833fb76812d1              # double 0.82852159329976349
	.quad	0x3fb7ac0236b7e7d8              # double 0.092468393668155513
	.quad	0x3fdf2d7a50b366ea              # double 0.48715074425636706
	.quad	0x3fb8be5119fe3918              # double 0.09665400395008239
	.quad	0x3fe05879909c8dff              # double 0.51080015415612923
	.quad	0x3f7a1376769c5380              # double 0.0063662173722790483
	.quad	0x3fe02997a66c21f6              # double 0.50507719520925209
	.quad	0x3fda10c646d9b8ca              # double 0.40727383536330974
	.quad	0x3fe72e2ced6a6cf9              # double 0.72438665743121
	.quad	0x3fea0c6c4f14d883              # double 0.81401648946372551
	.quad	0x3fd76c5e227d84aa              # double 0.3659892403430357
	.quad	0x3fec5972c3c6a021              # double 0.88591898190953
	.quad	0x3fd37410a9cfff74              # double 0.30395905097247256
	.quad	0x3fdf1356db2d8698              # double 0.48555537609181831
	.quad	0x3fd727e98402a9ca              # double 0.36181104556694932
	.quad	0x3fe8afd6eeee9680              # double 0.77146479288485637
	.quad	0x3fe2a9f46946c3ad              # double 0.5832464271717207
	.quad	0x3fd79baa4935224a              # double 0.36887604855704537
	.quad	0x3fe4abedaf2639c3              # double 0.64598736008502333
	.quad	0x3fec34a0eec22e2b              # double 0.88142439491770597
	.quad	0x3fdcde59572c93ba              # double 0.45107110512827442
	.quad	0x3febc636e4bc05e6              # double 0.86794609713268467
	.quad	0x3fbdab21a00804d0              # double 0.11589250714316113
	.quad	0x3fe93c2351a183a4              # double 0.78859106009996482
	.quad	0x3fb72c27eb079968              # double 0.09051751602200897
	.quad	0x3fcc9f93d4eb4e3c              # double 0.22361991783565027
	.quad	0x3fd8707d146a5528              # double 0.38186575883567508
	.quad	0x3fc94afb6a1e18e0              # double 0.19760077172777013
	.quad	0x3fdde8d9a868f8b4              # double 0.46733704992574165
	.quad	0x3fef6c3600baf4d6              # double 0.98195934431682974
	.quad	0x3fedddb9356dedb9              # double 0.93331585345679635
	.quad	0x3fd161bdc6c4739e              # double 0.27159065638425683
	.quad	0x3fe291b399cb5b4c              # double 0.5802858356281404
	.quad	0x3fe5b59deab46a58              # double 0.67842002716799765
	.quad	0x3fd2c2cba1e51faa              # double 0.29313937006053925
	.quad	0x3fe619043bbfa3e2              # double 0.69055377645156235
	.quad	0x3fe8bec0a328c315              # double 0.77328521601711719
	.quad	0x3fee32f1f2ee0d98              # double 0.94371888587231733
	.quad	0x3feef0c627fccb4d              # double 0.96689136323980451
	.quad	0x3fe52f40e954cf48              # double 0.6620182568790165
	.quad	0x3fb688d2087c5d00              # double 0.088025214263655727
	.quad	0x3fde955f88f06ee8              # double 0.47786701558082578
	.quad	0x3fe2b40bc2760212              # double 0.58447826367052103
	.quad	0x3fa84a329982f870              # double 0.047441083182534594
	.quad	0x3fd4f85ec8b39212              # double 0.32765931701422446
	.quad	0x3fe0c7aca47e786c              # double 0.52437431457270867
	.quad	0x3fe5d8869780e92b              # double 0.68268136587656636
	.quad	0x3fcd68dd753c1e68              # double 0.22976272796971675
	.quad	0x3fe0b07bdf79663f              # double 0.52154344222362414
	.quad	0x3fe4133d34cebad4              # double 0.62734852136585539
	.quad	0x3fe63677ae9f4f48              # double 0.69414886575621271
	.quad	0x3fbf3caa9f729c80              # double 0.12201944725767255
	.quad	0x3fe70e1878f083e9              # double 0.72047065373419372
	.quad	0x3fe1892ecad1af99              # double 0.54799594510176342
	.quad	0x3feca679191c61e8              # double 0.89532141594378079
	.quad	0x3fc8bd0f2c6f1228              # double 0.19326963109610173
	.quad	0x3feccbde52a53bd8              # double 0.8998862852257572
	.quad	0x3fdc79df0d6087fa              # double 0.44493843370776143
	.quad	0x3fdec4bd32c6e334              # double 0.48075799902612748
	.quad	0x3fd6d3857fbf4a6e              # double 0.35666024661364915
	.quad	0x3fbcf12b73456268              # double 0.11305495800241661
	.quad	0x3fd4fc6f15259eac              # double 0.32790734353191442
	.quad	0x3fe2425603e4179c              # double 0.57059765586813027
	.quad	0x3fb32bc632ae0250              # double 0.074886691449145503
	.quad	0x3fc3a7069263efb4              # double 0.1535347189709434
	.quad	0x3fc03e1065b52e24              # double 0.12689404455373776
	.quad	0x3fc89e95bda1f48c              # double 0.19233962783247127
	.quad	0x3fae5dcffc14e0e0              # double 0.059309482118296009
	.quad	0x3fe4845575ff0c78              # double 0.6411540321936533
	.quad	0x3fed354c5fad6d43              # double 0.91275614439965869
	.quad	0x3fdeb247a290df74              # double 0.47963133693291771
	.quad	0x3fe0465e03c6b9c8              # double 0.50858975160172637
	.quad	0x3fcd802a230a9280              # double 0.23047377310753703
	.quad	0x3fedec9fdecb1e52              # double 0.93513482584325858
	.quad	0x3fe5d3ea06bd0167              # double 0.68211842838358627
	.quad	0x3fc60b96ba35017c              # double 0.17222866146222404
	.quad	0x3feeaee5a64c45e3              # double 0.95884973983828236
	.quad	0x3fb5911165bbb9f8              # double 0.084244811379654894
	.quad	0x3fe344d28775a5b7              # double 0.60215116936631474
	.quad	0x3fd1ba52a0d33cc2              # double 0.27699723916607522
	.quad	0x3fe2e5782216e919              # double 0.59051138551811555
	.quad	0x3fea91172e834582              # double 0.83021124920394151
	.quad	0x3fef6f8e8a5249c9              # double 0.98236777320772106
	.quad	0x3fecee169f835e76              # double 0.90406352190889439
	.quad	0x3fecc84d6dbf219a              # double 0.89945098338016582
	.quad	0x3fd8f169a91467fa              # double 0.38973466407480795
	.quad	0x3fd5330666e43888              # double 0.33123931930538975
	.quad	0x3fdfa669168c6758              # double 0.49453189088818794
	.quad	0x3fabb49648e4caf0              # double 0.054112144849929211
	.quad	0x3fead5464dde773a              # double 0.83853450020590192
	.quad	0x3fce8f2f3788d490              # double 0.23874464236874759
	.quad	0x3feb924d9c37b95d              # double 0.86160927306427093
	.quad	0x3fd58309bbc7b43a              # double 0.33612292611980232
	.quad	0x3fd701a1840facda              # double 0.35947454353909125
	.quad	0x3fd6c1e3c00a5662              # double 0.35558408502524774
	.quad	0x3fdfdcff4da63cde              # double 0.4978636034292786
	.quad	0x3fd97cfb7adfc0d6              # double 0.39825331687371823
	.quad	0x3fb18f666f39c7b0              # double 0.068594362406456666
	.quad	0x3fed51490836bf7e              # double 0.91617251972455427
	.quad	0x3fee0e489382d7fa              # double 0.93924359141124047
	.quad	0x3fe02dfdca9ba8df              # double 0.50561418125041857
	.quad	0x3fe08ecf7933f158              # double 0.51743291542474434
	.quad	0x3fc1fe0c77a64100              # double 0.14056545107133189
	.quad	0x3fd4bf16afb9e2f4              # double 0.32416312371019207
	.quad	0x3fd637321da64dbe              # double 0.34711888213606901
	.quad	0x3fe0f8a085276078              # double 0.5303499794636215
	.quad	0x3fe102c0dc891345              # double 0.5315861041386617
	.quad	0x3fee754a884620ac              # double 0.95181776634219295
	.quad	0x3fdd3e313f732642              # double 0.45692092129010942
	.quad	0x3fc754e02b43bcf0              # double 0.1822776995900095
	.quad	0x3fd812e03dc1849e              # double 0.37615209608891031
	.quad	0x3fec2019776fb34a              # double 0.87891839339645483
	.quad	0x3fc70574c9c82528              # double 0.17985401013019353
	.quad	0x3fd8cc46f7123372              # double 0.38746809127842774
	.quad	0x3feb583f5b50bba5              # double 0.85452239832908516
	.quad	0x3feb137dd1bd6dd9              # double 0.84612933125338963
	.quad	0x3faeeb3889a2eaa0              # double 0.0603883426678824
	.quad	0x3fe100db7db9fa65              # double 0.53135466152145894
	.quad	0x3fe528bc7bbbc57f              # double 0.66122268835731279
	.quad	0x3fe98b1911a301a5              # double 0.79822972721745045
	.quad	0x3fd2e8e02bc35ca8              # double 0.29546360276931205
	.quad	0x3fd6145602bc1094              # double 0.34499120966962349
	.quad	0x3fc3fe3515285b8c              # double 0.15619529278839328
	.quad	0x3fe5a7a04962dc5a              # double 0.67671217282521501
	.quad	0x3fe1733f9e683888              # double 0.54531842173470668
	.quad	0x3fe3d5c675bd837a              # double 0.61984560962819946
	.quad	0x3fe27e63faa6e843              # double 0.57792853312935966
	.quad	0x3fdd218bfcf86106              # double 0.45517253593563145
	.quad	0x3fe62c46fcfff88b              # double 0.69290494360008503
	.quad	0x3fd2b7057c249556              # double 0.29242074130373419
	.quad	0x3fea9ceefd19825d              # double 0.83165692742847919
	.quad	0x3fd7224e961d33c2              # double 0.36146893176629302
	.quad	0x3fc2ff961753be80              # double 0.14842487467784693
	.quad	0x3fe4bc152a834efd              # double 0.64795931151681396
	.quad	0x3fbb1dca8d66ba10              # double 0.10592332794360737
	.quad	0x3fd8d2fdc20fb264              # double 0.38787788344669694
	.quad	0x3fd4acb875a95632              # double 0.32304202547433924
	.quad	0x3fec2bfc8e00cbf6              # double 0.8803694509027753
	.quad	0x3feb1ce8d2af8215              # double 0.8472789874031742
	.quad	0x3fe0d4b820abb20a              # double 0.52596670514100308
	.quad	0x3fdb44e02012484a              # double 0.42607882625555205
	.quad	0x3fe7fb88854a9839              # double 0.74945474656556776
	.quad	0x3fd4a7748019e4ba              # double 0.3227206469524152
	.quad	0x3fe7c31ec0398637              # double 0.74256837409865895
	.quad	0x3fe6cd6416bdca3c              # double 0.71257214013741743
	.quad	0x3fd15367b68195ac              # double 0.27071564505453227
	.quad	0x3fcd9c42d2e8d2dc              # double 0.23133120821298447
	.quad	0x3fe8a416ee209aae              # double 0.77003046521425289
	.quad	0x3fe93d916f7c8692              # double 0.78876563811009448
	.quad	0x3fe2edb0faa1650c              # double 0.59151505423793216
	.quad	0x3fd2d6049a6ab056              # double 0.29431262092362453
	.quad	0x3fe43cb716c68231              # double 0.63241152237248432
	.quad	0x3fea7bb1f098c939              # double 0.82759949676100242
	.quad	0x3fe0d09062926d12              # double 0.52545947315539565
	.quad	0x3fd5320b356ea148              # double 0.33117943017943618
	.quad	0x3f7f136fc071d100              # double 0.0075868954946722855
	.quad	0x3fdd9f07b67df9e0              # double 0.46283142873281058
	.quad	0x3fe94d7ec86bb32a              # double 0.79070986885708305
	.quad	0x3feedeb8e7a826b8              # double 0.96468777890660017
	.quad	0x3fd302bb0423b230              # double 0.29704165844194375
	.quad	0x3fe31b30b4267440              # double 0.59706912217701102
	.quad	0x3feaa249d814f1f2              # double 0.83231060222129671
	.quad	0x3fe9797f2e6dd2e3              # double 0.7960811526123418
	.quad	0x3fcb3b69b6b6901c              # double 0.21275063916721215
	.quad	0x3fd4b0ba8331995c              # double 0.32328665553941049
	.quad	0x3fe365e190eebae6              # double 0.60618665988098708
	.quad	0x3f6d4f783c6baa00              # double 0.0035779331550334081
	.quad	0x3fdb0c421d2b0dae              # double 0.42262318466620286
	.quad	0x3fe647beba24cf10              # double 0.6962579379673759
	.quad	0x3fdf9b7218e4d8d4              # double 0.49386265212104985
	.quad	0x3f5b85da53842800              # double 0.0016798622219220682
	.quad	0x3fecd0bcaaa8b260              # double 0.90048058826284815
	.quad	0x3fdcb1f821f60ad0              # double 0.44836238209260859
	.quad	0x3fe9a9551778a881              # double 0.80192045768968978
	.quad	0x3fe4d7c462041245              # double 0.65133875983935552
	.quad	0x3fe025c42c188a1d              # double 0.50461014378044278
	.quad	0x3fdefb204c062e82              # double 0.48407752441628571
	.quad	0x3fed83a7e0802f57              # double 0.9223212609081014
	.quad	0x3fe762752e8dc2f9              # double 0.73076876728563811
	.quad	0x3fea40a785805535              # double 0.82039238047096907
	.quad	0x3fe02f89a82cb14f              # double 0.50580294462774045
	.quad	0x3fd368b97cd65b28              # double 0.30326687995095591
	.quad	0x3fee9641e59e3217              # double 0.95584196898704732
	.quad	0x3fe084382e3dedb3              # double 0.51614007026312547
	.quad	0x3fd9920f3f77ff44              # double 0.39953976820105574
	.quad	0x3fe20e9de712decd              # double 0.56428427821716698
	.quad	0x3fc7964e2085a994              # double 0.18427445018762667
	.quad	0x3fb3535803164020              # double 0.075490475419656367
	.quad	0x3fe996257d4a7e16              # double 0.79957842322250161
	.quad	0x3fb7c38b7d360060              # double 0.092827528065755782
	.quad	0x3fd433db9f8e241c              # double 0.31566515523496874
	.quad	0x3fd25334a241cc4a              # double 0.28632846684849211
	.quad	0x3fd04289e7ffa952              # double 0.25406119972344243
	.quad	0x3fd542489bf8c166              # double 0.33217063171016148
	.quad	0x3f9237d294cea260              # double 0.017791071255177093
	.quad	0x3fec4af60fa18009              # double 0.88415053418066336
	.quad	0x3fe809fe44bd7b5d              # double 0.75121987748921593
	.quad	0x3fe0bbc95dbeb75c              # double 0.52292316731994104
	.quad	0x3fdf2bfff2f614d0              # double 0.48706053473172251
	.quad	0x3febb2efdfa2c281              # double 0.86559289625991209
	.quad	0x3fe8790be403ce35              # double 0.76477617773202289
	.quad	0x3fe57e33f659d919              # double 0.67165563693450558
	.quad	0x3fee3390cf86d7d6              # double 0.94379463703693989
	.quad	0x3fe910b5bd2c8675              # double 0.7832897848895316
	.quad	0x3fe61039144ee0f0              # double 0.68948034254483836
	.quad	0x3fec5a098f74a470              # double 0.88599088686636485
	.quad	0x3fe89e96d76808a4              # double 0.76935903617438272
	.quad	0x3fc199d3f1bab4b8              # double 0.13750695517720657
	.quad	0x3fe742033db6bcf5              # double 0.72680818608742348
	.quad	0x3fc69a78468cfdf4              # double 0.17658904499874917
	.quad	0x3fd3163ce74ac8fa              # double 0.29823229395982731
	.quad	0x3fe1e58131b6e8a4              # double 0.55926570615635685
	.quad	0x3fed9b3fc41c42a0              # double 0.92520130446253645
	.quad	0x3fe50bbbc059909c              # double 0.65768230026562291
	.quad	0x3fe1a5a2e9ec05fa              # double 0.55146928489574454
	.quad	0x3fe95ab34487d96b              # double 0.79232180962462218
	.quad	0x3fe6929eb619c0f3              # double 0.70539794508479614
	.quad	0x3fcc815c42045f8c              # double 0.22269776557436349
	.quad	0x3feeeff1ac54f676              # double 0.9667900434357779
	.quad	0x3fe3ff11df36b5f4              # double 0.62488645168713086
	.quad	0x3fe00b4b287b2aad              # double 0.50137861162632691
	.quad	0x3faf896ad8e11740              # double 0.061595286345023315
	.quad	0x3fdbc0e9d9c8d0e2              # double 0.43364950435649352
	.quad	0x3fe807b8b22d1bf7              # double 0.75094256210365884
	.quad	0x3fccba5dd24fd1e4              # double 0.22443745392924008
	.quad	0x3fe2178d336de237              # double 0.56537494702121804
	.quad	0x3fe3bf179ac5ad39              # double 0.61707668522777859
	.quad	0x3fe7aa912329085e              # double 0.73957116000407175
	.quad	0x3fd6939219b4a500              # double 0.35275700102154417
	.quad	0x3fab418def1c7aa0              # double 0.053234515608200583
	.quad	0x3fccb080ea80bf30              # double 0.22413646173799284
	.quad	0x3fe3c13bd420ca77              # double 0.61733809882419066
	.quad	0x3fbb7bf40744f1c0              # double 0.10736012628053171
	.quad	0x3fd88a1e569bd234              # double 0.38343008478048834
	.quad	0x3fd60c9e61ce0164              # double 0.34452018309823118
	.quad	0x3fe0a11d99536247              # double 0.51966743418149342
	.quad	0x3fee2d8ce583bcaa              # double 0.94306034876890021
	.quad	0x3fefff6d8d266a1e              # double 0.9999301678502126
	.quad	0x3fd99e0f3ba9ca12              # double 0.40027218653190844
	.quad	0x3fe1829b0714c1ef              # double 0.54719306357406861
	.quad	0x3fdf3dfd75632588              # double 0.48815857375719718
	.quad	0x3fe7109b93e5d53e              # double 0.72077731024061342
	.quad	0x3fdd07052262ee46              # double 0.45355347021152104
	.quad	0x3fe095b246f807f3              # double 0.51827348576648402
	.quad	0x3fd80752a6f827d6              # double 0.37544695191956856
	.quad	0x3fe2f54df4de0d06              # double 0.59244439912473079
	.quad	0x3fe108d4f42f90ea              # double 0.53232810680904419
	.quad	0x3f994ed4fa4292e0              # double 0.024714782499944188
	.quad	0x3fedfac19cd6a6df              # double 0.93685989983097417
	.quad	0x3fbfaa6ec49e1ab8              # double 0.12369434643015154
	.quad	0x3fe773649ff0c70c              # double 0.73283606756578612
	.quad	0x3fd193859a434898              # double 0.2746290213082232
	.quad	0x3fe08c277dfe6e12              # double 0.5171086750810352
	.quad	0x3fcfa6315c6baae4              # double 0.24725930226062254
	.quad	0x3fd45d0627c76c38              # double 0.31817773708980068
	.quad	0x3fda3b04709c8e32              # double 0.40985213277074017
	.quad	0x3fe1884e2c80ba39              # double 0.54788883869134175
	.quad	0x3feeb4b08eaa7567              # double 0.95955684532570451
	.quad	0x3fe5ff28bbca99ab              # double 0.68739735296258198
	.quad	0x3fec26ff6c696438              # double 0.87976046728284185
	.quad	0x3fc38cab8b4035a8              # double 0.15273041056972869
	.quad	0x3fd581d2ddc15b7a              # double 0.33604880958358019
	.quad	0x3fe6d39bbae1db8b              # double 0.71333109379234949
	.quad	0x3fdee4f6e9ff1a60              # double 0.48272488452167828
	.quad	0x3fe134b334c4a531              # double 0.53768310838964883
	.quad	0x3fe39873bdf01975              # double 0.61235987756007992
	.quad	0x3fb06fed3228aca8              # double 0.064207863565274637
	.quad	0x3fa3d37eb0e1fde0              # double 0.038722952930580368
	.quad	0x3fddfa0485cf2dae              # double 0.46838486735642959
	.quad	0x3fe3754b0f4fa02f              # double 0.60806801786839582
	.quad	0x3fd3398a4b265dd2              # double 0.30038697565893557
	.quad	0x3fcd242b9a385dc8              # double 0.22766633062631869
	.quad	0x3fe79be3d9fe1151              # double 0.73777954651499489
	.quad	0x3fd406d497951a36              # double 0.31291689684840962
	.quad	0x3fe5b526d328d872              # double 0.67836323968982826
	.quad	0x3fdc06b6de5e472a              # double 0.43790981021548936
	.quad	0x3fb31aa059b84790              # double 0.074625036148317614
	.quad	0x3fe95e558712638b              # double 0.79276539212433883
	.quad	0x3fa2a38bf03af590              # double 0.036404011797894431
	.quad	0x3feac94d526c1312              # double 0.83707300279692931
	.quad	0x3fa9be0ee90fdc70              # double 0.050278154325433699
	.quad	0x3fe26f8a805e6fe8              # double 0.57611584732103172
	.quad	0x3fe75491899ac795              # double 0.72907330394649483
	.quad	0x3fce348855d9306c              # double 0.23597816650215309
	.quad	0x3fe1d0a0e38055b7              # double 0.55671734269952011
	.quad	0x3fec1325a4c85106              # double 0.87733728584365234
	.quad	0x3fa6fc9946375470              # double 0.044895925351433941
	.quad	0x3fdb5adcddd5ca38              # double 0.42742082274995452
	.quad	0x3fe7a7037600061a              # double 0.73913739249127564
	.quad	0x3fd3d7967c9df7f8              # double 0.31003343743930101
	.quad	0x3fec700f02ccc523              # double 0.88867903277256166
	.quad	0x3fe7c964d1411a2a              # double 0.74333420629483737
	.quad	0x3fd78a6723eecc8a              # double 0.3678224421411832
	.quad	0x3fded0e4b27fe008              # double 0.48149983817666042
	.quad	0x3fe99e333a3bdc3d              # double 0.80056153653902806
	.quad	0x3fefb757c0e32dec              # double 0.99113071130107988
	.quad	0x3fe434d78d287971              # double 0.63145043916646959
	.quad	0x3feb3afed98a8dab              # double 0.85095159996528957
	.quad	0x3fc914ac3fff90e8              # double 0.19594338536183575
	.quad	0x3fb4ce3497a07a88              # double 0.081271445291784983
	.quad	0x3fe1284059e67b78              # double 0.53616349753052273
	.quad	0x3fe1a9120154687a              # double 0.55188846835814265
	.quad	0x3fe0101e4f8c36ad              # double 0.50196757828390093
	.quad	0x3fb5f89e9aa06278              # double 0.085824883223162618
	.quad	0x3fb5efa1b51ef708              # double 0.085687739104255312
	.quad	0x3fe4de89095a1aa5              # double 0.65216495348507364
	.quad	0x3fc974fe6dd2a330              # double 0.19888286936227351
	.quad	0x3fd37877f9778dd2              # double 0.30422782289516903
	.quad	0x3f8ca801065b77c0              # double 0.013992317205914762
	.quad	0x3fd4892457893100              # double 0.32087048099926108
	.quad	0x3fc961c6e65c1ad8              # double 0.1982964157870899
	.quad	0x3fe0cc93d1a5bf09              # double 0.5249728293110546
	.quad	0x3fd593cd0773292c              # double 0.33714605071567649
	.quad	0x3fe071ce54a7aa18              # double 0.51389233144920166
	.quad	0x3fe2327a37a3d071              # double 0.56866179339568934
	.quad	0x3fbbb8d497804dd0              # double 0.10828903864631134
	.quad	0x3fc4fe3e15edfa3c              # double 0.16400886603146769
	.quad	0x3fed0ad8dede38bb              # double 0.90757411507526997
	.quad	0x3fe4c648178da2b3              # double 0.64920429802176327
	.quad	0x3fee90e391e44dc3              # double 0.9551866387795872
	.quad	0x3fc2dc5f97804d64              # double 0.14735026261824224
	.quad	0x3fe93a8664c69bc1              # double 0.78839416201378054
	.quad	0x3fec37151aa547fa              # double 0.88172393039917485
	.quad	0x3fec7223f04a52e3              # double 0.88893315250114957
	.quad	0x3fd81bbd760e4b8e              # double 0.3766931202782694
	.quad	0x3fe0c828f3b4fdbf              # double 0.52443358992598366
	.quad	0x3fd0ffa4493ecb3c              # double 0.26560313370571342
	.quad	0x3fe5a46172aff024              # double 0.67631599807601051
	.quad	0x3fb07486bd8cb830              # double 0.064278050686625177
	.quad	0x3f9d6e7b0f1c5220              # double 0.028741762921599912
	.quad	0x3fe409433d6416ab              # double 0.62613069525169374
	.quad	0x3fe2e17ce4d2f516              # double 0.59002537433812807
	.quad	0x3fe64ff646969537              # double 0.697260988109213
	.quad	0x3fe6f647f78794ca              # double 0.7175636133730674
	.quad	0x3fea52d4f0b868d4              # double 0.82261130347913047
	.quad	0x3fe77a2eea415dc4              # double 0.73366494896884449
	.quad	0x3fb6e9fcc5ea82c0              # double 0.089507864302968976
	.quad	0x3fde8b2a6e3573d2              # double 0.47724400293901426
	.quad	0x3fd119a24f20ba02              # double 0.2671895764096065
	.quad	0x3fd85fad2c977bb2              # double 0.38083962778722047
	.quad	0x3fd2c069f1ab2c68              # double 0.29299400902227157
	.quad	0x3fe2c8576f6a5914              # double 0.5869557548601585
	.quad	0x3fe85a441110653c              # double 0.76101878483601792
	.quad	0x3fd05157b9f79a82              # double 0.25496476326808459
	.quad	0x3fe3cf2406639ad0              # double 0.61903573272578605
	.quad	0x3f932d12bf12a140              # double 0.018726628219753794
	.quad	0x3fdd2655569b305c              # double 0.45546468217503899
	.quad	0x3fee85b4f0b8451b              # double 0.95382163062655267
	.quad	0x3fde3304d9b46da8              # double 0.47186394939645959
	.quad	0x3fefaf1bcf4d7161              # double 0.99012556542178853
	.quad	0x3fe5275740a01ffa              # double 0.66105234739461527
	.quad	0x3fe4471fff24a4c6              # double 0.63368224938053497
	.quad	0x3fe7923cb447424e              # double 0.73660121164909653
	.quad	0x3fdc6e9be423045c              # double 0.44425103453619896
	.quad	0x3fdb88df4e52144e              # double 0.43022902153490328
	.quad	0x3fc188a26ae93c00              # double 0.13698225231425454
	.quad	0x3f50df49e0271800              # double 0.0010297986451504038
	.quad	0x3fe54eb9d3f2db4e              # double 0.66586009403440882
	.quad	0x3fe2e5461f81c1a0              # double 0.59048753884967553
	.quad	0x3fd6c2a69f20291a              # double 0.35563054599391963
	.quad	0x3fd2da47e79a116a              # double 0.29457280747762715
	.quad	0x3fec49df1352ba2e              # double 0.8840175034909572
	.quad	0x3fda453c7a6c4544              # double 0.41047584491123623
	.quad	0x3fda6ddbbe85a0ec              # double 0.41295522313750044
	.quad	0x3fe513c037478065              # double 0.65866099163760039
	.quad	0x3fe0658d9d86892a              # double 0.51239662901597183
	.quad	0x3fd1ed8f926d7516              # double 0.280124562259361
	.quad	0x3fea33e8ff03a061              # double 0.81883668715910229
	.quad	0x3fd87f749caefd72              # double 0.38277926732185741
	.quad	0x3fd738298a977734              # double 0.36280287298528724
	.quad	0x3fd458229f54f772              # double 0.31787934837108545
	.quad	0x3fd8ebc1d87a68fa              # double 0.38938947811551794
	.quad	0x3fdc275d382c08d6              # double 0.43990259633586726
	.quad	0x3fd060b3a4029622              # double 0.25590220467197089
	.quad	0x3fe9c5a49a513e1d              # double 0.80537634029491623
	.quad	0x3feaf4c34ab20b80              # double 0.84237827862703796
	.quad	0x3fe2ee6e034c2002              # double 0.59160519260422029
	.quad	0x3feec91b8116e604              # double 0.96204924786360423
	.quad	0x3fd27977220f06a4              # double 0.28866365743679467
	.quad	0x3fea2c4387a0f1aa              # double 0.81790329446771648
	.quad	0x3fe8a39114096511              # double 0.76996663964669854
	.quad	0x3f9dce28102dad00              # double 0.029106737124874549
	.quad	0x3fa4169ba608cc20              # double 0.039234985368601594
	.quad	0x3fdc7c0e688209b2              # double 0.44507179456573021
	.quad	0x3fee3ae0b3af6da2              # double 0.94468722433832775
	.quad	0x3feb38ddc515dfe3              # double 0.85069168561221564
	.quad	0x3fd62bef7de2d89e              # double 0.34643161099973863
	.quad	0x3fec91fc1add05c7              # double 0.8928204083132919
	.quad	0x3fb6fdac78439128              # double 0.089808253632842949
	.quad	0x3fe924e5d2fd08af              # double 0.78575411995577393
	.quad	0x3fa79ea203a51e20              # double 0.046132147736497098
	.quad	0x3fe08504991944c4              # double 0.51623754407969402
	.quad	0x3fd0d85c2b93a1aa              # double 0.26320556884322832
	.quad	0x3fbd1f489c626320              # double 0.11375860040642438
	.quad	0x3fc610eae2c2980c              # double 0.17239128181717012
	.quad	0x3fe96dae59bfa977              # double 0.79463880089797001
	.quad	0x3fe9390ba3898866              # double 0.78821355763308243
	.quad	0x3fe530823887048b              # double 0.66217146912107816
	.quad	0x3fef8201a8503515              # double 0.98461993097012856
	.quad	0x3fbb77a93738f410              # double 0.10729463194088873
	.quad	0x3fe493344f1153e8              # double 0.64296927874476939
	.quad	0x3fe07900bb509981              # double 0.51477085671358236
	.quad	0x3fe18acde03bf057              # double 0.54819387241105744
	.quad	0x3fb1c0d4c5d9c148              # double 0.069348619750376206
	.quad	0x3fdcaa1b284337bc              # double 0.44788245136157534
	.quad	0x3fd5473b95addf5c              # double 0.33247270218952507
	.quad	0x3fcfe175fecf58b4              # double 0.2490680212201305
	.quad	0x3fdb7245972e024a              # double 0.42884959949154633
	.quad	0x3fa31dab7bf902a0              # double 0.037335738070855884
	.quad	0x3fbb17e30a8ad4a0              # double 0.10583323485737361
	.quad	0x3f823ca047d61d40              # double 0.0089046976015781931
	.quad	0x3fea9d358ed5967c              # double 0.83169057748155195
	.quad	0x3feec162dbcf0711              # double 0.96110670977961565
	.quad	0x3fcc9edb8f223c14              # double 0.22359795082999823
	.quad	0x3fe030fcc3668958              # double 0.50597990192572251
	.quad	0x3fe4c3d77a977614              # double 0.64890645927124746
	.quad	0x3fc91723cf427410              # double 0.19601867313477372
	.quad	0x3fda294885ec1ba0              # double 0.40876973226880331
	.quad	0x3fef008d29a51249              # double 0.96881731160881046
	.quad	0x3fcf2ee8df3c2f58              # double 0.24361906910086861
	.quad	0x3fec13789739f649              # double 0.87737683807763134
	.quad	0x3fe5c30cfff0cbaf              # double 0.68005990970993035
	.quad	0x3fd4a5ae6035e52e              # double 0.32261237521705055
	.quad	0x3fd9dcedbe07c9aa              # double 0.40410941655786792
	.quad	0x3fd09f369153f420              # double 0.25971759979421627
	.quad	0x3fe8149f7dc0570e              # double 0.75251745758825606
	.quad	0x3fd737569d7265c4              # double 0.36275258422537271
	.quad	0x3fe32ff5962ab6b3              # double 0.59960440949881499
	.quad	0x3fb058b2587f62d8              # double 0.063853403669223652
	.quad	0x3fe7cd7d7fc73c7e              # double 0.7438342567128442
	.quad	0x3fe28c1dd5c4b762              # double 0.57960407020230442
	.quad	0x3fd8fbd6ce421c10              # double 0.3903710378876335
	.quad	0x3fd58f7f24fd8522              # double 0.33688334095320915
	.quad	0x3fe8139f33f690e1              # double 0.75239524983456019
	.quad	0x3fd4de0fb84e9836              # double 0.32605355261546565
	.quad	0x3feed3f725d94d1d              # double 0.96337468521452118
	.quad	0x3fee767cf6b90c0f              # double 0.95196388423971878
	.quad	0x3fe6f0ef4f415037              # double 0.71691098670499442
	.quad	0x3fd3aa9ad54f3a06              # double 0.30728789168361492
	.quad	0x3f96c05dc3b38ac0              # double 0.022218194074308029
	.quad	0x3fe7455d49d4412f              # double 0.72721733493566443
	.quad	0x3fb66b1734dde758              # double 0.087571573645531031
	.quad	0x3fd041240e524a3e              # double 0.25397588156298301
	.quad	0x3f9e0d5bded78620              # double 0.029347835041226955
	.quad	0x3fe20ca6f5b13112              # double 0.56404445635556244
	.quad	0x3fe4dc64fd836947              # double 0.65190362467118568
	.quad	0x3fdce4d644487334              # double 0.45146710079443442
	.quad	0x3fc215e46cf76834              # double 0.1412930996000924
	.quad	0x3fee757d71d51d4f              # double 0.95184204323678923
	.quad	0x3fcbe2ab8237b604              # double 0.21785491808206825
	.quad	0x3fb5e20b819d3720              # double 0.085480422157357072
	.quad	0x3fe836e640c7db62              # double 0.75670159008482707
	.quad	0x3fa4b35ffdc90020              # double 0.040431022386201443
	.quad	0x3fc103b711bdda8c              # double 0.13292587629594654
	.quad	0x3fe7e68a374e0d4d              # double 0.74689207841621796
	.quad	0x3fcf05af02b29d0c              # double 0.24236095077251496
	.quad	0x3fe20f8398fd98cf              # double 0.56439380532244765
	.quad	0x3fec444ced5d777e              # double 0.88333746300098404
	.quad	0x3fa9d22759dd8490              # double 0.050431470603833906
	.quad	0x3fe91409fbb031b9              # double 0.78369616659033803
	.quad	0x3fea9272cf96894e              # double 0.83037701172387712
	.quad	0x3fed3d8e408e7f61              # double 0.9137641201850607
	.quad	0x3fdda07924fa8670              # double 0.46291950808708915
	.quad	0x3fcdb1e7e76be08c              # double 0.23199175643799597
	.quad	0x3fda4b591e178a7e              # double 0.41084888399760888
	.quad	0x3fe6385ea9c37a4c              # double 0.69438107640218893
	.quad	0x3fd6cbaf102fe9e6              # double 0.35618187504556287
	.quad	0x3fee251e4b570f5a              # double 0.94203104700907692
	.quad	0x3fb467412335b320              # double 0.079700537773260027
	.quad	0x3feb4b29e491aa22              # double 0.85292524950392967
	.quad	0x3fc0656f50d11090              # double 0.12809554525495459
	.quad	0x3fc5652433417a84              # double 0.16714909079287932
	.quad	0x3fea2781a974930c              # double 0.81732256981612882
	.quad	0x3fe0178e358a6111              # double 0.5028754277909987
	.quad	0x3fb155a7f4b4d3f8              # double 0.067713258021129152
	.quad	0x3fc64b4212368614              # double 0.17417169465356663
	.quad	0x3fe91addae61f409              # double 0.78452953394992264
	.quad	0x3fc7e796f5a19580              # double 0.18675505632124256
	.quad	0x3fd9228f54e1e5d4              # double 0.39273436822221908
	.quad	0x3fe9524ac9682553              # double 0.79129542672414244
	.quad	0x3fd8126d87491950              # double 0.37612474643210181
	.quad	0x3fef0b7f80935113              # double 0.97015357124704093
	.quad	0x3fc49a2981f22908              # double 0.16095465512291462
	.quad	0x3fe397109160ea3c              # double 0.61219051737072716
	.quad	0x3fdf957c22901f7c              # double 0.4934988343743425
	.quad	0x3fbcbd4d8e278ba8              # double 0.11226353378837806
	.quad	0x3fed65c69c8f626c              # double 0.91867380693572675
	.quad	0x3feca88f66815f53              # double 0.89557619114473608
	.quad	0x3fda63a2511f452e              # double 0.41233117982945344
	.quad	0x3fea68ad35e8db11              # double 0.82527790574281046
	.quad	0x3fdf08ec4e53ebd2              # double 0.48491962098313224
	.quad	0x3fd2fa9e60ee3250              # double 0.29654654947151915
	.quad	0x3fe1dc8efe0bb61d              # double 0.55817365282354425
	.quad	0x3fe21737bbd73272              # double 0.56533419311160871
	.quad	0x3fcbf091e1753660              # double 0.21827910908398263
	.quad	0x3fd14d695f8da746              # double 0.27034982997303236
	.quad	0x3fd32d617f29be24              # double 0.29964482706324902
	.quad	0x3fdffcff47443fe6              # double 0.49981672248486431
	.quad	0x3fe222ac43374140              # double 0.56673253181546812
	.quad	0x3fe2252e6c9a046a              # double 0.56703873835807639
	.quad	0x3fdcee6b635f2020              # double 0.45205197052246326
	.quad	0x3fd79134bc063682              # double 0.36823767053360978
	.quad	0x3fd73f285da42b2c              # double 0.36322983879715554
	.quad	0x3fc8b4d852268e0c              # double 0.19301895152339943
	.quad	0x3fd4d4a243db51e0              # double 0.32547814013130782
	.quad	0x3fc58b452d4fd1f4              # double 0.1683126899003039
	.quad	0x3fd6c4d05d25ddfe              # double 0.35576256844021248
	.quad	0x3fd1db0e69b30f7c              # double 0.27899513551914601
	.quad	0x3feabbc504d5d0f1              # double 0.83542109436396406
	.quad	0x3fb07a90f9f088b0              # double 0.064370213528067266
	.quad	0x3fdb734c191f2fbc              # double 0.42891218617728177
	.quad	0x3fe3544e0eb729ea              # double 0.60404112695806345
	.quad	0x3fc7cf6ad0035f50              # double 0.18601737172024935
	.quad	0x3fdf67ca728b271a              # double 0.49070988832373674
	.quad	0x3fe3f12fe37766b0              # double 0.62319178034814193
	.quad	0x3fdf0ac42b0462b0              # double 0.48503212166682896
	.quad	0x3fe5f21c393808e5              # double 0.68580447364390962
	.quad	0x3fe33067783d1694              # double 0.59965871318918795
	.quad	0x3fedca6bbaa5eda8              # double 0.93095957236021309
	.quad	0x3fd1f90079da02ca              # double 0.28082286738940054
	.quad	0x3fc692ea9df54320              # double 0.17635853493495635
	.quad	0x3f9e2078a6b03220              # double 0.02942074315437726
	.quad	0x3fec4b3e47896422              # double 0.88418497058876633
	.quad	0x3fd910aa629a1018              # double 0.39164218548853702
	.quad	0x3fcb069628ca6618              # double 0.21113850585679539
	.quad	0x3fe19d8b200d6d14              # double 0.55048137912982265
	.quad	0x3fe3c28e55b35a1d              # double 0.61749951113126011
	.quad	0x3fa17c1446a2a240              # double 0.034149774191352567
	.quad	0x3fe303dc9eb96fd9              # double 0.59422141075946933
	.quad	0x3fd6dd20f7ec3388              # double 0.35724662982175248
	.quad	0x3fd78b1abefbb8fa              # double 0.36786526346885717
	.quad	0x3fcf4e9d96431d2c              # double 0.24458665692348214
	.quad	0x3fd75b09345b63b0              # double 0.36493139374720851
	.quad	0x3fed271134c53bc8              # double 0.91101894671179995
	.quad	0x3fd5ce2f6ee689a2              # double 0.34070955114489199
	.quad	0x3fe49484e847edf8              # double 0.6431297814119139
	.quad	0x3fd5d76fd5a449c6              # double 0.34127422202541557
	.quad	0x3fe5f418d14430bc              # double 0.6860469901307833
	.quad	0x3fe07838e4c7c141              # double 0.51467556651736157
	.quad	0x3fe20c4ebd5f0e7a              # double 0.56400238977990047
	.quad	0x3fdd66d16de7d416              # double 0.45940051777807989
	.quad	0x3fd935454b767b7a              # double 0.39387638444343731
	.quad	0x3fe46b31e135051f              # double 0.63808530793918183
	.quad	0x3fd30341afb69e5a              # double 0.29707376632220461
	.quad	0x3fde2d86b3a651fa              # double 0.4715286974326599
	.quad	0x3fd77e54c29c7550              # double 0.36708563809391581
	.quad	0x3fe0ad11739d5fcc              # double 0.52112648564342967
	.quad	0x3fe3fbaaf417717b              # double 0.62447116541038328
	.quad	0x3fe66b12b01106f5              # double 0.70057043445578293
	.quad	0x3fc72b25a8d1d62c              # double 0.18100424521587521
	.quad	0x3fe4b2186a339d87              # double 0.64674015753273373
	.quad	0x3fe1451c52890ef5              # double 0.53968635673706322
	.quad	0x3fe26e3eeebd96e7              # double 0.575957742967799
	.quad	0x3fe60e6594dd7eb1              # double 0.68925742221104802
	.quad	0x3fe254e7d7fc42c7              # double 0.57286445793769125
	.quad	0x3fe7ca0f0fcdfc40              # double 0.74341538512079097
	.quad	0x3fed0d7735436149              # double 0.90789375689477325
	.quad	0x3f81722b35db3100              # double 0.0085185409365284848
	.quad	0x3fe8ef53da5744a1              # double 0.77921478886323225
	.quad	0x3f9fabf37e720280              # double 0.030929379074680075
	.quad	0x3fd2e06ab0a184e4              # double 0.29494731186976098
	.quad	0x3fe7fb6398bec5f1              # double 0.74943713982628257
	.quad	0x3feddfea68076741              # double 0.93358345335148141
	.quad	0x3feec3560d73f223              # double 0.96134474399110947
	.quad	0x3fbede00ff80eaf8              # double 0.12057501066093923
	.quad	0x3fb5fe1bc2c849f8              # double 0.085908637098590535
	.quad	0x3fe1374f65ed4c97              # double 0.53800172717673689
	.quad	0x3fdaa0aa2878dcc6              # double 0.41605619385104509
	.quad	0x3fc9fbe0f11251d8              # double 0.20299922724792796
	.quad	0x3fe657bdf7237ac5              # double 0.69821069974190009
	.quad	0x3fec8478437f18d0              # double 0.8911706274309612
	.quad	0x3febaaeea2442ab8              # double 0.86461574261314578
	.quad	0x3fb2cbf8a5413c00              # double 0.073424854607978318
	.quad	0x3fd2e26dcf3b107c              # double 0.29507012593627002
	.quad	0x3fc3a50e5ea98c54              # double 0.15347461340124602
	.quad	0x3fe85066891c1506              # double 0.7598145177768465
	.quad	0x3fd4775729ac6822              # double 0.31978396482156957
	.quad	0x3fdb28b09b913958              # double 0.42435851280324277
	.quad	0x3fe5eb728c3d5133              # double 0.68499114408999728
	.quad	0x3feaa5ff38d5c821              # double 0.83276330090143713
	.quad	0x3fcf22df90e99264              # double 0.2432517488079099
	.quad	0x3fe02732025d6221              # double 0.5047845884501535
	.quad	0x3fe3a682a8d90c52              # double 0.61407597520918444
	.quad	0x3fec9aaae7755406              # double 0.89388032156659913
	.quad	0x3feadf2f47605b19              # double 0.83974422398282222
	.quad	0x3febf8225ff74fc6              # double 0.87403982871409691
	.quad	0x3fe1a4e60c0931bc              # double 0.55137922621502566
	.quad	0x3fd3adad0fdcd1fe              # double 0.3074753432186127
	.quad	0x3fed35ba7e38978c              # double 0.91280865337897543
	.quad	0x3fe29f7116e4edfd              # double 0.58196310493025261
	.quad	0x3fefb41a0e8cd197              # double 0.99073508111773633
	.quad	0x3fefe53c0af1f2e0              # double 0.99673273217885238
	.quad	0x3fded3f8eeb26ac4              # double 0.4816877680802174
	.quad	0x3fe1f9034947701b              # double 0.56164707481684972
	.quad	0x3fd8af8cc9ec7fd2              # double 0.38571471900104115
	.quad	0x3fd19e985a7ec124              # double 0.27530487859168518
	.quad	0x3fdfa5e1d9abf4a2              # double 0.49449964768411736
	.quad	0x3fd37c0f0189aece              # double 0.30444693708589632
	.quad	0x3fc1a21485a11110              # double 0.13775879406797076
	.quad	0x3fd113e07504f908              # double 0.26683818271330084
	.quad	0x3fe803d08cfbca47              # double 0.75046565566874157
	.quad	0x3fe808dbb35cfa79              # double 0.75108132392763516
	.quad	0x3fe39c7823fa8a9b              # double 0.61285025622449341
	.quad	0x3fdb055fb46c3ec4              # double 0.42220299357812174
	.quad	0x3fec7f56d6839605              # double 0.89054433724658166
	.quad	0x3fa30f06c5565a60              # double 0.037224017704990287
	.quad	0x3fef5f7d5d030255              # double 0.98040645758016842
	.quad	0x3fd14919df16fac8              # double 0.27008673463926103
	.quad	0x3fd01e66662e85c8              # double 0.25185546854671914
	.quad	0x3fea47a9308c6f70              # double 0.8212476680960048
	.quad	0x3fd4c57f5d3f725a              # double 0.32455429178461304
	.quad	0x3feecc72657c2197              # double 0.96245689221636865
	.quad	0x3feae41b7364cef2              # double 0.84034512079094115
	.quad	0x3fe6fe48f4b2070f              # double 0.71854064743112811
	.quad	0x3fc415ca73df6db0              # double 0.15691500337457631
	.quad	0x3feefcebd0b166be              # double 0.96837416420313338
	.quad	0x3fe011ad0dbad06a              # double 0.50215771371450768
	.quad	0x3fc23b3d5b6c0848              # double 0.14243285144772444
	.quad	0x3fe4561cbb80dab8              # double 0.63551174756761153
	.quad	0x3fbc1379903fbc78              # double 0.10967216273978575
	.quad	0x3fecab642954e8ac              # double 0.8959217841395648
	.quad	0x3f8b66c5734eb8c0              # double 0.01337961443081459
	.quad	0x3fe0701ff143a1bd              # double 0.5136871063414713
	.quad	0x3fdf70636b48d608              # double 0.49123464085582258
	.quad	0x3fe83a89201af1bf              # double 0.75714546461636434
	.quad	0x3fd96705e8043ba2              # double 0.39691302926888217
	.quad	0x3febf322a346d61d              # double 0.87342960252744073
	.quad	0x3fd5c79cf04bdaae              # double 0.34030841318546379
	.quad	0x3fe4e0eb3d887214              # double 0.65245592134630437
	.quad	0x3fec8899720c0ed8              # double 0.89167473101448547
	.quad	0x3fdb7097dac9069e              # double 0.42874714246509338
	.quad	0x3fce951d27fe3360              # double 0.23892559483320053
	.quad	0x3feedabbb1966236              # double 0.96420082745596036
	.quad	0x3f9efff0657c56e0              # double 0.030273204988666147
	.quad	0x3fc59910f29822e8              # double 0.16873370976852375
	.quad	0x3fe06aa68765f8a9              # double 0.51301886029229593
	.quad	0x3fe65aba9857934a              # double 0.69857530359568298
	.quad	0x3fe46c1203f18cbc              # double 0.6381921841642888
	.quad	0x3fbb1de6f6cac4d0              # double 0.10592502141186633
	.quad	0x3fd384b0ad578712              # double 0.3049737637321509
	.quad	0x3fdfce228413dabc              # double 0.4969564714259993
	.quad	0x3fecdbd6e5a33ef2              # double 0.90183586932286475
	.quad	0x3fe4a01f6d878e11              # double 0.64454623596651761
	.quad	0x3fc1fde5f81d19a8              # double 0.14056086172986437
	.quad	0x3fe09b97434c1fa3              # double 0.51899302619948562
	.quad	0x3fb9a55435099d30              # double 0.10017896933424164
	.quad	0x3fe722970fe8b671              # double 0.72297242266877337
	.quad	0x3fbfe13f6fe7e250              # double 0.12453075868678209
	.quad	0x3fd947124648e6dc              # double 0.39496285308596923
	.quad	0x3fecd8bdf1703c20              # double 0.90145775943699746
	.quad	0x3fcb86686df9d948              # double 0.21503930444641584
	.quad	0x3fefcb8d14caba11              # double 0.99359754620474138
	.quad	0x3fee0773395a044f              # double 0.93840943528642551
	.quad	0x3fb474fb7f55b670              # double 0.079910009944535564
	.quad	0x3fe99fa310ba1964              # double 0.80073693530065925
	.quad	0x3fe988961e2555b9              # double 0.79792314422473176
	.quad	0x3fb1cb3007b91b00              # double 0.069506647000803667
	.quad	0x3fd183350129b32a              # double 0.27363324273646816
	.quad	0x3fe22f36322df9eb              # double 0.56826314736082162
	.quad	0x3fefb12b480833f3              # double 0.99037708348043762
	.quad	0x3fe46142edc72a17              # double 0.6368727344609536
	.quad	0x3fe6402893a5a378              # double 0.69533184850034413
	.quad	0x3fd637951c299a9c              # double 0.34714248419042248
	.quad	0x3fed6deac910772f              # double 0.91966761846899725
	.quad	0x3fb49d8415594fc0              # double 0.080528502666594726
	.quad	0x3fe29762ad4d4a31              # double 0.58097967002897211
	.quad	0x3fe7b4d608c3e22f              # double 0.74082471572825692
	.quad	0x3fdc46b5061cf162              # double 0.44181562039354649
	.quad	0x3fe7073eec841e21              # double 0.71963449663684653
	.quad	0x3fdf196509c7e1f8              # double 0.48592496829181142
	.quad	0x3fe3a5721c06db7b              # double 0.61394601320249309
	.quad	0x3fe6680a996e25ab              # double 0.70020036665771579
	.quad	0x3fd3e35eed8b2480              # double 0.31075261304483348
	.quad	0x3feefc71035c3254              # double 0.96831560760763091
	.quad	0x3fe81d702a03e2a6              # double 0.75359352308358463
	.quad	0x3f56fed9fc673600              # double 0.0014035347718278635
	.quad	0x3fb66e868451f140              # double 0.087623984627446028
	.quad	0x3fc36851687f759c              # double 0.15162103273807481
	.quad	0x3feb9a77ccbc1867              # double 0.8626059530950102
	.quad	0x3fd9de14ca278ac2              # double 0.40417976133009514
	.quad	0x3fe843d1c2f23e81              # double 0.75827873301928161
	.quad	0x3fed18be2cdeb9d9              # double 0.90927037013698986
	.quad	0x3fd44e61885a96f0              # double 0.31728399577910604
	.quad	0x3fe65b1a3f781d21              # double 0.69862091442420049
	.quad	0x3fed6e1b0d3a4fce              # double 0.91969063361693215
	.quad	0x3fe5812260727480              # double 0.67201346242258353
	.quad	0x3fc8e98101ea1dc0              # double 0.19462597459299324
	.quad	0x3f8e29be925beb00              # double 0.014728058663867838
	.quad	0x3fe793c459e487f9              # double 0.73678796345870901
	.quad	0x3fd59dda7f5bec6c              # double 0.33775961339387695
	.quad	0x3fc9fd5156d1e3b0              # double 0.20304314364673592
	.quad	0x3f82689d874d4a80              # double 0.0089886004367702999
	.quad	0x3fb218d14fc2a8f0              # double 0.070691186878921064
	.quad	0x3feb0a28cef502e0              # double 0.84499016209892019
	.quad	0x3feaac334298f83a              # double 0.83352053649264879
	.quad	0x3faac20d1fecc770              # double 0.052261743685803164
	.quad	0x3fe12cf572e83f36              # double 0.53673813288512551
	.quad	0x3fd01d269da5b9b2              # double 0.25177922625780547
	.quad	0x3fcea9444c74d818              # double 0.2395406125376105
	.quad	0x3fe44da98e846af9              # double 0.63448026500131427
	.quad	0x3fb65d4bd9e21be0              # double 0.087361088461065162
	.quad	0x3fa6dbaa45a8cf10              # double 0.044644661906572236
	.quad	0x3fdc486160aa2852              # double 0.4419177478781694
	.quad	0x3fea05da0a784507              # double 0.81321432156451656
	.quad	0x3fefcc27777930fd              # double 0.99367116293572588
	.quad	0x3fe0da70426a7fd0              # double 0.52666485759618276
	.quad	0x3fef80fc6dbcca9a              # double 0.98449536736582677
	.quad	0x3fd61abd99286a46              # double 0.3453821178133335
	.quad	0x3fe91ca8ce503754              # double 0.78474846168112799
	.quad	0x3fe5922e0e0f5ac2              # double 0.67409422632302829
	.quad	0x3fd669b0fd3c0c4c              # double 0.35020088891923673
	.quad	0x3fe39bfa979fe571              # double 0.61279039014986669
	.quad	0x3fec385d79eedfc3              # double 0.88188051047381355
	.quad	0x3fe99a57820ebeca              # double 0.80009055520891903
	.quad	0x3feb0aec506eaeb8              # double 0.84508338651126902
	.quad	0x3fda2b3135cd378a              # double 0.40888624433579734
	.quad	0x3fef72e929fbc59c              # double 0.9827771968831942
	.quad	0x3fd633c4fc4b807e              # double 0.3469097579782171
	.quad	0x3fe874ef3ec6be5d              # double 0.76427423726085986
	.quad	0x3fed7e08f84787b8              # double 0.92163513652871298
	.quad	0x3fe75c077246f403              # double 0.7299840194679067
	.quad	0x3fc56577a7d4d898              # double 0.16715903944868127
	.quad	0x3fe3ebca841c9b97              # double 0.62253309062076567
	.quad	0x3fc56e9ddf50dc40              # double 0.16743825344176066
	.quad	0x3fe7b3e8192e1844              # double 0.74071125905971558
	.quad	0x3fe783247fde5770              # double 0.73475861524887698
	.quad	0x3fe3d6af1a5f4f8a              # double 0.61995654249993604
	.quad	0x3fdad1074bc9818a              # double 0.41900808716857141
	.quad	0x3fe34c4d31d890ee              # double 0.60306415305651995
	.quad	0x3fe1eb4a431b780f              # double 0.55997193438429516
	.quad	0x3fdd2fa8083f230a              # double 0.45603371434531026
	.quad	0x3fe3a3a9d968d810              # double 0.61372845137407417
	.quad	0x3fc1081b36a9f8a4              # double 0.13305988473070329
	.quad	0x3fe66e93ad9798ec              # double 0.70099815277788258
	.quad	0x3fed30777331edc3              # double 0.91216633318929785
	.quad	0x3fd4796fcddd4c0c              # double 0.31991191009473208
	.quad	0x3fcd4b61a0d5b74c              # double 0.22886295655501454
	.quad	0x3fee6bcc9a1fb6ae              # double 0.95065908529587317
	.quad	0x3feb24103d83a329              # double 0.84815227522367309
	.quad	0x3fe6ad8b681e3521              # double 0.7086846383623745
	.quad	0x3fedbba7c5f40148              # double 0.92915714895938439
	.quad	0x3fe22412c774a5bb              # double 0.56690348583395378
	.quad	0x3fb2d36282db1ae8              # double 0.073537976214634093
	.quad	0x3fefb36a1ae3fbfb              # double 0.9906511807638475
	.quad	0x3fe41f1c81ed888c              # double 0.62879777313743679
	.quad	0x3fe4a6a9e6098b72              # double 0.64534468583256754
	.quad	0x3fba4fc432765d70              # double 0.10277963859549799
	.quad	0x3fe5056019430d4b              # double 0.6569061749836832
	.quad	0x3fe2344fb503a06f              # double 0.56888566355065773
	.quad	0x3fd48fd16cbb16ca              # double 0.32127795809024617
	.quad	0x3fbae46deb4e4ab8              # double 0.10504805559893782
	.quad	0x3fda812910448c88              # double 0.41413332546853399
	.quad	0x3fd3e88fd83cfb8c              # double 0.31106945149434106
	.quad	0x3fdef6369968c1b4              # double 0.48377766591422788
	.quad	0x3fe7532dfab002ec              # double 0.72890376055155803
	.quad	0x3fd946e7d07079aa              # double 0.39495272975355056
	.quad	0x3fecbff85b522a44              # double 0.89843385540127274
	.quad	0x3fe9c0ff9aa0aafa              # double 0.80480938149170744
	.quad	0x3fd9bcc38eef1128              # double 0.40214623411545114
	.quad	0x3fcdf42013d752ec              # double 0.234012612999002
	.quad	0x3fea2e07a77df6fb              # double 0.81811888421336165
	.quad	0x3feea6b1207636e2              # double 0.95784813251676959
	.quad	0x3fb64f3c6913cba0              # double 0.087146545079845428
	.quad	0x3fb83847e800c8f0              # double 0.094608778134702253
	.quad	0x3fef3a60eb9eab41              # double 0.9758762933682662
	.quad	0x3fd8d990c1f71564              # double 0.38827914182578227
	.quad	0x3fb0b9f872e05850              # double 0.065337684675200736
	.quad	0x3fe76bcc60f99b74              # double 0.73190897884783945
	.quad	0x3fb474b00a97f830              # double 0.079905512415252344
	.quad	0x3fd440d77eb47544              # double 0.31645762799765387
	.quad	0x3fd484ddbe19f598              # double 0.32060950817671019
	.quad	0x3fe2d5d9e373549b              # double 0.58860487388541871
	.quad	0x3f931eb3fcf7cba0              # double 0.018671810450495152
	.quad	0x3fedda1bd976a932              # double 0.93287460778564069
	.quad	0x3fe6f64c082177bd              # double 0.7175655516436944
	.quad	0x3f898a1049cd3240              # double 0.012470366718525416
	.quad	0x3fef336b7545c163              # double 0.97502682595044765
	.quad	0x3fdd148e1ce0b932              # double 0.45437958545780355
	.quad	0x3f88b4173b457940              # double 0.012062245842284214
	.quad	0x3fe96fe5e0c94071              # double 0.79490941909354096
	.quad	0x3fe24b8280630f3d              # double 0.57171750140739841
	.quad	0x3fdcddcb00189b3a              # double 0.45103716859232501
	.quad	0x3fedbb017425b9b2              # double 0.92907784161598372
	.quad	0x3f809dfc9eabe8c0              # double 0.0081138358996110104
	.quad	0x3fe99a4d65af97ef              # double 0.80008573399095251
	.quad	0x3feb4d94bb4bc042              # double 0.85322033482771809
	.quad	0x3fe05fa7ebfe7167              # double 0.51167675106584631
	.quad	0x3fe7d17e5938ce71              # double 0.74432294298317292
	.quad	0x3fd6278d5e7103fc              # double 0.34616407606887356
	.quad	0x3fd5299dd6d96256              # double 0.33066507321703875
	.quad	0x3fc0802a9bba75b8              # double 0.12891132930682914
	.quad	0x3fe94581c6ce51cc              # double 0.78973473386081982
	.quad	0x3fdbb71a08f5c44c              # double 0.43305064082148159
	.quad	0x3fd418b49c8821b0              # double 0.31400790487580377
	.quad	0x3fe3f7f7428c6c28              # double 0.62401926992186407
	.quad	0x3f8e35513aebdbc0              # double 0.014750132189403575
	.quad	0x3fd95de914135520              # double 0.39635683975696345
	.quad	0x3fda12bd3b279906              # double 0.40739374901603786
	.quad	0x3fc9156c657a6318              # double 0.19596629099830731
	.quad	0x3feb25bec88bd41b              # double 0.84835757416897495
	.quad	0x3fe91600541cd703              # double 0.78393570354703035
	.quad	0x3fbc4964f616e5d0              # double 0.11049490936320372
	.quad	0x3fe0ad2e394d4016              # double 0.52114020530462102
	.quad	0x3fe1c89d590d2951              # double 0.5557390918050179
	.quad	0x3fddad98af8254d2              # double 0.46372048511086661
	.quad	0x3fe48e3347a49614              # double 0.64235843651539648
	.quad	0x3fcf4b3738c2c74c              # double 0.24448290130163242
	.quad	0x3fe0b07aa456e604              # double 0.52154285523937505
	.quad	0x3fd3b912ff02cfa8              # double 0.30817103293815729
	.quad	0x3fe7fde47d6be4a1              # double 0.74974274155023946
	.quad	0x3fe7b47027e3f14f              # double 0.74077613631338035
	.quad	0x3fe89f5dd8868c28              # double 0.76945392885352693
	.quad	0x3fd11490f2f764c4              # double 0.26688026168046641
	.quad	0x3fe41b1fea4247c4              # double 0.62831111673062212
	.quad	0x3fdb7de3b152a772              # double 0.42955868069349556
	.quad	0x3fdecaad83b21cda              # double 0.48112047062791208
	.quad	0x3fda820d17551b56              # double 0.4141876914840642
	.quad	0x3feb55652f267c81              # double 0.85417422493982553
	.quad	0x3fdb848c565d0346              # double 0.42996509965819418
	.quad	0x3fa99e00fad8ae00              # double 0.050033598538302471
	.quad	0x3fee6a611f8c116d              # double 0.95048576509047467
	.quad	0x3fe5e2169aff1dea              # double 0.68384866974605285
	.quad	0x3fbb4aa452f67680              # double 0.10660769486863764
	.quad	0x3fdaf4f6bf780a0c              # double 0.42120140741477097
	.quad	0x3fd66ac32a31bc20              # double 0.35026625748190732
	.quad	0x3fbde9890335d630              # double 0.11684471443535283
	.quad	0x3fc71ebe50530640              # double 0.18062571451268816
	.quad	0x3fc251ce49eb03b4              # double 0.14312151536253526
	.quad	0x3fd5369a0684f06c              # double 0.33145762097024689
	.quad	0x3fe8925f2dd7f064              # double 0.76786765054522421
	.quad	0x3fb9071f2d650648              # double 0.097764919836685782
	.quad	0x3feb6fd592d25109              # double 0.85740164447864331
	.quad	0x3fe13663f259288f              # double 0.5378894551625012
	.quad	0x3fbb54b27c0b26a0              # double 0.1067611267891615
	.quad	0x3fd092dd355dca3e              # double 0.25896387301978396
	.quad	0x3fdfc77cdfa3ac5a              # double 0.49655076827793254
	.quad	0x3fe0d93c138bc0f4              # double 0.52651790444909219
	.quad	0x3fd3d00e39c217b4              # double 0.30957370415159891
	.quad	0x3fe440ce9cfa709e              # double 0.6329110208494233
	.quad	0x3fa69599d8ea33a0              # double 0.044110114792693667
	.quad	0x3f6d50bdc318c400              # double 0.0035785394946050708
	.quad	0x3fb87d3a5f3e1870              # double 0.09566082787759611
	.quad	0x3fc5dba060f31ed0              # double 0.17076496824142007
	.quad	0x3fd910d0e045f196              # double 0.39165136243516352
	.quad	0x3fe4ffb5c47231a8              # double 0.6562146031224545
	.quad	0x3fd109da2245fa0c              # double 0.2662263235760356
	.quad	0x3fe86d951842c9fb              # double 0.76337675798850968
	.quad	0x3fb64e7f7e7d13b0              # double 0.087135284787179356
	.quad	0x3fed0bd5593b650a              # double 0.90769450595976875
	.quad	0x3fe1be62a9d3e29c              # double 0.55449040574520181
	.quad	0x3fe527717f0b18e5              # double 0.66106486142305398
	.quad	0x3fedad1b0443076f              # double 0.92738104660405252
	.quad	0x3fe4b30016b62cb9              # double 0.64685062824118866
	.quad	0x3febd08018929968              # double 0.86920170592638346
	.quad	0x3fa7139980519c00              # double 0.045071408189691908
	.quad	0x3feed1b55dc1a182              # double 0.96309917747298379
	.quad	0x3fefc538019bb471              # double 0.9928245574389064
	.quad	0x3fe7e48caf8d0ad7              # double 0.74664911544126766
	.quad	0x3fd547f44eb88152              # double 0.33251674354143745
	.quad	0x3fa878c17db07ce0              # double 0.04779629382414341
	.quad	0x3fe74e7bcb9b800e              # double 0.72833051459383724
	.quad	0x3fdc8f6c911c3fce              # double 0.44625391169483641
	.quad	0x3fc3783153d90cf4              # double 0.15210548967488757
	.quad	0x3fc7cba48275de24              # double 0.18590217943322884
	.quad	0x3fc21fab4b1853ac              # double 0.141591464679235
	.quad	0x3fcc7316b39a17f0              # double 0.22226222772241
	.quad	0x3fe01c59519049fb              # double 0.50346055918117771
	.quad	0x3fda31961cadd9c6              # double 0.4092765121526124
	.quad	0x3fe10db50d2fe7af              # double 0.53292324615107656
	.quad	0x3fe845303a00acf6              # double 0.75844584778442825
	.quad	0x3fe5cc2905813397              # double 0.68117190432677688
	.quad	0x3facb70613033d70              # double 0.056083860226517568
	.quad	0x3feb65df9e724274              # double 0.85618573137806075
	.quad	0x3fd03671a8699298              # double 0.25332299658320201
	.quad	0x3fc23f5ef70ee920              # double 0.14255892814055304
	.quad	0x3feca6edb092f518              # double 0.8953770111762962
	.quad	0x3fee867e4ea29a75              # double 0.9539176498263503
	.quad	0x3fef67d5a8e43a6e              # double 0.98142512308716134
	.quad	0x3fd793b58d1846f8              # double 0.36839045313637042
	.quad	0x3fc02bfb75433be4              # double 0.1263422319957207
	.quad	0x3fc3538b9ecb3264              # double 0.15098710301971885
	.quad	0x3fec57bbfb8d2790              # double 0.8857097542870509
	.quad	0x3fb3a0ad06cd3a98              # double 0.076670469437184585
	.quad	0x3fd4fe7d0c9c65c0              # double 0.32803274375472924
	.quad	0x3fe36faebe15a925              # double 0.60738312841320818
	.quad	0x3fdeef0b3e9be0fe              # double 0.48334008325720379
	.quad	0x3fea0d6c4d49d5bd              # double 0.81413855643648214
	.quad	0x3fbcf31577bc84d8              # double 0.11308416531803134
	.quad	0x3fc84284d7749b2c              # double 0.18952999611175281
	.quad	0x3fd2def9141fceb8              # double 0.29485918965586277
	.quad	0x3fa60daa9682fc40              # double 0.043073016045575674
	.quad	0x3fd37f6252816b3a              # double 0.30464990670377612
	.quad	0x3fe9e410fe3a0fdb              # double 0.80909013417885534
	.quad	0x3fd4fe87a4841048              # double 0.32803526941302552
	.quad	0x3fc81602a708c6ac              # double 0.18817170291872765
	.quad	0x3fe5f9bd74db4f7d              # double 0.68673584769793161
	.quad	0x3fca6a0166f65a20              # double 0.20636003043610263
	.quad	0x3fdfa44b995e4c9a              # double 0.49440278985384511
	.quad	0x3fb6f99b30ff5490              # double 0.089746188604595156
	.quad	0x3fee2674989bb9dc              # double 0.94219426924047011
	.quad	0x3fef33f72a75e1a2              # double 0.97509344380437235
	.quad	0x3fbbf5902b8424c0              # double 0.1092157465210617
	.quad	0x3fb23bff6e7f4038              # double 0.071227993466210004
	.quad	0x3fe6ac6f67034cfd              # double 0.70854921455102693
	.quad	0x3fe00aaae975922d              # double 0.50130220029365591
	.quad	0x3feb60c99877cfc6              # double 0.85556487826260574
	.quad	0x3fd092740b15ded0              # double 0.25893879969178801
	.quad	0x3fd1ac5a6e2f0526              # double 0.27614460716366052
	.quad	0x3fe6d9bf4e4cd306              # double 0.71408047955500886
	.quad	0x3fe79df598469360              # double 0.73803214780182813
	.quad	0x3fc2c0dbffb77d84              # double 0.14651060091180679
	.quad	0x3fc5f69325381868              # double 0.17158736531581842
	.quad	0x3fd45d1983c8f8ce              # double 0.3181823527301163
	.quad	0x3fe9e67f3dd2a81d              # double 0.80938684534817507
	.quad	0x3fe213fa09dae1b5              # double 0.56493856358343086
	.quad	0x3fede7a9a1a0e866              # double 0.93452912872386373
	.quad	0x3fe6283607578224              # double 0.69240857538176614
	.quad	0x3fe46346db0cae54              # double 0.6371187475501281
	.quad	0x3fd5361c4123ebe8              # double 0.33142763482436388
	.quad	0x3fecbc4bdd1c9802              # double 0.89798539338949035
	.quad	0x3fcbf5819eb11e44              # double 0.21842975853563662
	.quad	0x3fafdae87cba8300              # double 0.062217011666922062
	.quad	0x3fe5015f4cc768ad              # double 0.65641751285445127
	.quad	0x3fe54d252fe77c8f              # double 0.66566714626596191
	.quad	0x3fee878a83807cdb              # double 0.95404554065671776
	.quad	0x3fe86c42f8dd7d61              # double 0.76321552854998853
	.quad	0x3fd2adf1f7c55904              # double 0.29186677166343622
	.quad	0x3fa3c2533d6d8e60              # double 0.03859195828297568
	.quad	0x3fe0318e87a8fcde              # double 0.50604940887560779
	.quad	0x3fed506a18e6c33b              # double 0.91606621612127215
	.quad	0x3fd6564324c02514              # double 0.34901503170893133
	.quad	0x3fefe53595c3f92d              # double 0.99672965289190573
	.quad	0x3fbb68863730b5b0              # double 0.10706366393488653
	.quad	0x3fe90619e1cdcb3a              # double 0.78199476339646101
	.quad	0x3fc5b384fddac558              # double 0.16954100032084329
	.quad	0x3fa24d7cd9dc0bd0              # double 0.035747434229072561
	.quad	0x3fe85c754404abc8              # double 0.76128638539136606
	.quad	0x3f8889485c887140              # double 0.011980595897562396
	.quad	0x3fe071052dabce8b              # double 0.51379641456738179
	.quad	0x3fe2061521888b6e              # double 0.56324249791610526
	.quad	0x3fdfe8a8125e2ed4              # double 0.49857522767773088
	.quad	0x3fe8761fc069c625              # double 0.76441943722438011
	.quad	0x3fb95a11f6d0f7e8              # double 0.099030611760980158
	.quad	0x3fc5f5e342f40cfc              # double 0.17156639832692366
	.quad	0x3fdec9e57fd3111c              # double 0.4810727833066879
	.quad	0x3fc5c1b9d76f95c0              # double 0.16997454661684053
	.quad	0x3fedf5b8705a380f              # double 0.93624517387229556
	.quad	0x3fecd559c3975536              # double 0.90104377938647562
	.quad	0x3feb09c8b95ca101              # double 0.84494434550745734
	.quad	0x3fe3b2269f44c823              # double 0.61549693209804379
	.quad	0x3fee72f10c88ffde              # double 0.95153095672867116
	.quad	0x3fc816c6c5f15a40              # double 0.18819508233237237
	.quad	0x3fe2643ae4ea9a1a              # double 0.57473511419522372
	.quad	0x3fd8f472781a9720              # double 0.3899198696984616
	.quad	0x3fea5b1b41a9829e              # double 0.82362139534605538
	.quad	0x3fcd0f99a2339b7c              # double 0.22703857822417806
	.quad	0x3fc80a90cf58cdbc              # double 0.18782243847236468
	.quad	0x3fea437e931f7010              # double 0.82073906645701022
	.quad	0x3fe6925126fdecf9              # double 0.70536096206288257
	.quad	0x3fe4af0f9448f544              # double 0.64636973344719495
	.quad	0x3fe51fb5b1990292              # double 0.66012081801462075
	.quad	0x3fe096f3e31acabc              # double 0.51842684131982919
	.quad	0x3fd05eb15684aa0a              # double 0.255779585352372
	.quad	0x3fa37670271a3c20              # double 0.038012985966922708
	.quad	0x3feb018b9880b223              # double 0.84393863473593844
	.quad	0x3fe1940be75c18c4              # double 0.54932208239986169
	.quad	0x3fe76f80d943ec7c              # double 0.73236124453195783
	.quad	0x3feb1a86714ee1f0              # double 0.84698793535704731
	.quad	0x3fdc30df8a6aa298              # double 0.4404829837535913
	.quad	0x3fde1f5c30d66a1a              # double 0.47066406983654618
	.quad	0x3fd712b1b4219b04              # double 0.36051600066132061
	.quad	0x3fcb35e1fc4a6768              # double 0.21258187121275829
	.quad	0x3fa47e22129ef830              # double 0.040024819157665426
	.quad	0x3fefb249d26b470a              # double 0.99051371667357668
	.quad	0x3fd8b161eed9e150              # double 0.38582657170583889
	.quad	0x3fd3f2cdc264b784              # double 0.31169456466420109
	.quad	0x3fef6bbf95991f59              # double 0.9819028779829565
	.quad	0x3fa2655287879fd0              # double 0.035929278415835264
	.quad	0x3f6425bb73151000              # double 0.0024593983768301797
	.quad	0x3feeeb52da614ab1              # double 0.96622603084900593
	.quad	0x3fee06b2ff8a4fcb              # double 0.93831777487002321
	.quad	0x3fe163f7e6e9d0cd              # double 0.54345316982519309
	.quad	0x3fadc17a9b5459a0              # double 0.058116752110595415
	.quad	0x3fd29b9a1acf4fa8              # double 0.29074719064851218
	.quad	0x3fedd2109b45c85a              # double 0.93189268423726479
	.quad	0x3fddf2eca26f1bcc              # double 0.46795192587563572
	.quad	0x3fe02c8cd89d3def              # double 0.50543825442758628
	.quad	0x3fc74fa351cf9920              # double 0.18211785788225487
	.quad	0x3fd2ebe871e7bd32              # double 0.29564868091161423
	.quad	0x3fed3ab90c65daa6              # double 0.91341831609209545
	.quad	0x3fe8eceee6a4cdd7              # double 0.77892251060114404
	.quad	0x3fe15df65b7055f5              # double 0.54272001132147685
	.quad	0x3fc49d5ff784f55c              # double 0.16105269990832027
	.quad	0x3fd720054e18f7d2              # double 0.36132938982688956
	.quad	0x3fe1e9762566bb68              # double 0.55974871926251257
	.quad	0x3fd49bbeec16f124              # double 0.32200596862436925
	.quad	0x3fe91aa2dcc98690              # double 0.78450148699285371
	.quad	0x3fe960b006967055              # double 0.79305268561030096
	.quad	0x3fc7ba75478802b4              # double 0.18537775032748061
	.quad	0x3fd4d35b1dbcf02a              # double 0.32540014175515586
	.quad	0x3fc96cc5b755fac0              # double 0.19863196803995287
	.quad	0x3fcfb1d25f9d678c              # double 0.24761418980307004
	.quad	0x3fdfb0536a165796              # double 0.49513707504353854
	.quad	0x3fecc9855c5f6061              # double 0.89959972421184997
	.quad	0x3fe13136328750cc              # double 0.53725728863585109
	.quad	0x3fe6bfacad47c89d              # double 0.71089776843861652
	.quad	0x3fe60ab46d02e464              # double 0.688806736862841
	.quad	0x3fed3b73cf7076ab              # double 0.91350737109651925
	.quad	0x3fb337cf82129318              # double 0.075070351844783167
	.quad	0x3fe73a1f3b138020              # double 0.72584497011485283
	.quad	0x3fb9be5a58890fe0              # double 0.1005608049536586
	.quad	0x3fd04a8d93503e1c              # double 0.25455035577849272
	.quad	0x3fec269efdc12b8b              # double 0.87971448480071623
	.quad	0x3fe3401739ec7090              # double 0.60157357514573739
	.quad	0x3fe4f2b5837364cb              # double 0.65462756799674915
	.quad	0x3fdeaddc23dada7e              # double 0.4793615675111268
	.quad	0x3fc49afd69c9ac88              # double 0.16097991624278429
	.quad	0x3fa00bca974cd0f0              # double 0.031339961022611607
	.quad	0x3fae8d7033963c10              # double 0.05967283849451388
	.quad	0x3fd570ffcb219296              # double 0.33502192341828996
	.quad	0x3fe1a95c895ce502              # double 0.55192400768933703
	.quad	0x3fc13a0c7798fe20              # double 0.13458400573470986
	.quad	0x3fde55b2c5a47e10              # double 0.47398061085729726
	.quad	0x3fd68e042b1d2d10              # double 0.35241798601482888
	.quad	0x3febe0e0e3f8bc76              # double 0.87120098615368025
	.quad	0x3fe3fe6c36bbfb4a              # double 0.62480745973867013
	.quad	0x3fe4c2397fd98a97              # double 0.64870905848177329
	.quad	0x3fe40b1890f9abf1              # double 0.62635448756679868
	.quad	0x3fe2b6dda659b156              # double 0.58482248773865808
	.quad	0x3fef055367734a7c              # double 0.96940012173793332
	.quad	0x3fec50078709caa0              # double 0.88476921438844513
	.quad	0x3fe9bc2f751cdb8c              # double 0.80422184823588471
	.quad	0x3fe109a614e7364e              # double 0.53242782671595434
	.quad	0x3fd2c7c37a5722ec              # double 0.29344260165502933
	.quad	0x3fabe8a6f6d45250              # double 0.054509370451488182
	.quad	0x3fe8d80f388b93d8              # double 0.77637444538106148
	.quad	0x3fdb7e5b52a4aac0              # double 0.42958720274570439
	.quad	0x3fe311cc4504a6ac              # double 0.59592259864912966
	.quad	0x3fdea41fc511f406              # double 0.47876734013681277
	.quad	0x3fe323ff977369c5              # double 0.59814433651200061
	.quad	0x3fd3ad04ce295d3e              # double 0.30743522770849896
	.quad	0x3fdf60b2d5453da0              # double 0.49027701213068475
	.quad	0x3feeb405b625ae61              # double 0.95947537971137475
	.quad	0x3fd181f50ef9707e              # double 0.27355696165410126
	.quad	0x3fee716d19233ed4              # double 0.95134596738531707
	.quad	0x3fe5aa753cb7ab8a              # double 0.6770578561675944
	.quad	0x3fe3db7187b8bade              # double 0.62053753383755939
	.quad	0x3fdd05a62edd5178              # double 0.45346979691137035
	.quad	0x3fec74b1b93365ce              # double 0.88924490139032186
	.quad	0x3fccd4f476ab1630              # double 0.22524886888838713
	.quad	0x3fcd9b56a2c6cc80              # double 0.23130305240701787
	.quad	0x3fef24938edff49e              # double 0.97321489243735804
	.quad	0x3fe54e3982900854              # double 0.66579890728486157
	.quad	0x3fe552a589062314              # double 0.66633869898314169
	.quad	0x3fe39db756a8673c              # double 0.61300246167522898
	.quad	0x3fb9c3d4667a7018              # double 0.10064437391196213
	.quad	0x3fe222e126569eda              # double 0.56675775039635856
	.quad	0x3fe3a1ac3c682ad3              # double 0.61348544882033662
	.quad	0x3fcb4bfdbd1ee18c              # double 0.21325656637578694
	.quad	0x3fd1ce30c3aaa24e              # double 0.27820986850796181
	.quad	0x3fd957adadc129c8              # double 0.39597646682946364
	.quad	0x3fe1a6bb072f8744              # double 0.55160285380791452
	.quad	0x3fdb15fafbe62332              # double 0.4232165775252269
	.quad	0x3fc82bde10ab084c              # double 0.18883872808334201
	.quad	0x3fa5555a799282d0              # double 0.041666819897050567
	.quad	0x3fe8cd22842edfe4              # double 0.775040872736096
	.quad	0x3fdbe1b6f697e93c              # double 0.4356515319956491
	.quad	0x3fdbcfa3692b9d36              # double 0.43454823751968108
	.quad	0x3fe9309a8c9fee99              # double 0.78718306985634279
	.quad	0x3fe38c64f67d6856              # double 0.61088798658898713
	.quad	0x3fcf93944e85f3d0              # double 0.24669126352446691
	.quad	0x3fe1db025580b796              # double 0.55798451137319449
	.quad	0x3feb0c8b42670ee2              # double 0.84528124779941671
	.quad	0x3fe2cc64fb11c1c8              # double 0.58745049511895164
	.quad	0x3fee9898cb8b5fea              # double 0.95612754587909632
	.quad	0x3fd1533a7630a9a0              # double 0.27070485631943519
	.quad	0x3fd333dfe41ddb30              # double 0.30004117276205289
	.quad	0x3fe7d4b8bfead5be              # double 0.74471700176098188
	.quad	0x3feb4b332f45cb2d              # double 0.85292968018470605
	.quad	0x3feccef09329fc85              # double 0.90026119940729699
	.quad	0x3fef4ebbc2add04a              # double 0.97836101554140353
	.quad	0x3fbc484c069b8640              # double 0.11047816430393542
	.quad	0x3fd483d27bd7416c              # double 0.32054578870613315
	.quad	0x3fd9845627ef336c              # double 0.39870218181459083
	.quad	0x3f9d9b53add49120              # double 0.028912837490808418
	.quad	0x3fcc09f664ccbbb4              # double 0.21905403062689077
	.quad	0x3feded6d61d8fb65              # double 0.93523282156807552
	.quad	0x3fd7f82d81e78390              # double 0.37452256856891442
	.quad	0x3fbd30c988aecb68              # double 0.11402568423254211
	.quad	0x3fe2f27d59f9ce47              # double 0.59210078786276987
	.quad	0x3fdf53fed1cf6452              # double 0.48950167168874714
	.quad	0x3fe1004dd5e5f3e9              # double 0.53128711487772506
	.quad	0x3f9e40c9a5aa0a40              # double 0.029544020401326643
	.quad	0x3fe13c94d6f8ad72              # double 0.5386451910648431
	.quad	0x3fe9a285c59790ef              # double 0.80108917801092427
	.quad	0x3fe170d4bfb45eb6              # double 0.54502332155512678
	.quad	0x3fe659f8a5619540              # double 0.69848282147419383
	.quad	0x3fc4e4edf3f4b920              # double 0.16323637401496516
	.quad	0x3fd308fffea14044              # double 0.29742431513023271
	.quad	0x3fc6d791eb42cdf0              # double 0.17845367419577896
	.quad	0x3fda36e49374bc70              # double 0.40960039520263702
	.quad	0x3fd5bbd9b5396e60              # double 0.33959047982873436
	.quad	0x3fb2fd46e2fe1810              # double 0.074177198808769385
	.quad	0x3fe55bfb62cbbb18              # double 0.66747826858577053
	.quad	0x3fd9040b1d63f700              # double 0.39087179060139476
	.quad	0x3feb93ed8e79ec83              # double 0.86180761172671827
	.quad	0x3fe72dfc356e9555              # double 0.72436342655115971
	.quad	0x3faa13571e7779c0              # double 0.050928804844932341
	.quad	0x3fba0aa986fb31b8              # double 0.1017251925033581
	.quad	0x3fc6439ddf7f7960              # double 0.17393849766717562
	.quad	0x3fd75fec1c694c0c              # double 0.36522963308851852
	.quad	0x3fdbeb6e5576193a              # double 0.43624456735451
	.quad	0x3fc9f0b45d7c6718              # double 0.20265821995490607
	.quad	0x3fefe51379671fa7              # double 0.99671338759889216
	.quad	0x3fec5dfe2749debd              # double 0.88647372888131992
	.quad	0x3fa73e951e174590              # double 0.045399341510015678
	.quad	0x3fe5e355efd239bc              # double 0.68400093879772994
	.quad	0x3fcfdba41b332df0              # double 0.24889041259881095
	.quad	0x3fd3ff9fc4e073a8              # double 0.3124770567536026
	.quad	0x3fe51106e375d216              # double 0.65832848001315614
	.quad	0x3fea15f275749315              # double 0.81517908993245902
	.quad	0x3fee6864c3317478              # double 0.95024335979145657
	.quad	0x3fec8247797ac00a              # double 0.89090322233642039
	.quad	0x3fd7fe6dd6d7cc3a              # double 0.37490411740072072
	.quad	0x3fe36b0d7cf58cfe              # double 0.606817955075172
	.quad	0x3fea2e697d26422a              # double 0.81816553538562187
	.quad	0x3fc9125a4498c184              # double 0.19587257718513851
	.quad	0x3fdd588a5dcb0be2              # double 0.45852908286559402
	.quad	0x3fe68a928a4a4917              # double 0.70441557893562645
	.quad	0x3fc2eb946b4490d4              # double 0.1478143237847066
	.quad	0x3fea7864e12dd7c5              # double 0.82719654064452952
	.quad	0x3fe42a6182b9fc88              # double 0.63017344982644463
	.quad	0x3fc4922651fff364              # double 0.16071013454338889
	.quad	0x3fe20236b634ee46              # double 0.56277022921808206
	.quad	0x3fbca232628f3a30              # double 0.11184992700803131
	.quad	0x3febe9a9cdc6ca15              # double 0.87227335158087504
	.quad	0x3fbc9e92966c0038              # double 0.11179462597283496
	.quad	0x3febdf70f8cc233a              # double 0.87102554887051231
	.quad	0x3fdcd96937d937f0              # double 0.45076971487003359
	.quad	0x3fcce8e64a6eebd4              # double 0.22585753092229643
	.quad	0x3feb6b05fa73fa69              # double 0.85681437412843053
	.quad	0x3fc0a19e2b2ea158              # double 0.12993218525412931
	.quad	0x3fe861b025dfe041              # double 0.7619248141991265
	.quad	0x3fdc34bed8ad7714              # double 0.44071932945176795
	.quad	0x3fede88c26344c65              # double 0.93463714086318517
	.quad	0x3fe7f35c715989d5              # double 0.7484571660864342
	.quad	0x3fb21f43bf3b5fd0              # double 0.070789560496790971
	.quad	0x3fe3250ed1bfe70a              # double 0.59827366797182546
	.quad	0x3fee12faae83b723              # double 0.93981679997316225
	.quad	0x3fc12f4199af6b2c              # double 0.13425464634095741
	.quad	0x3fef4077e96664f5              # double 0.97661967836316299
	.quad	0x3fe5199d6fb3da65              # double 0.65937682930855301
	.quad	0x3fbb1005a0edea30              # double 0.10571322611750911
	.quad	0x3fda2ea2be6d65f8              # double 0.40909641834659238
	.quad	0x3fce9f55d59586ec              # double 0.23923752716932911
	.quad	0x3fccac4c3b3887b4              # double 0.22400811092034945
	.quad	0x3f9684461b1af2e0              # double 0.021988959698080346
	.quad	0x3fd911cf2e2a9166              # double 0.3917119932978238
	.quad	0x3fefb74c263c21c3              # double 0.99112517802955613
	.quad	0x3fe3bc82d999b329              # double 0.61676161289287734
	.quad	0x3fc42721716bdc3c              # double 0.15744417226935237
	.quad	0x3fe087d2aa3fe43f              # double 0.5165799451052705
	.quad	0x3f9c40f72af98740              # double 0.02759157371327281
	.quad	0x3fbecec48bb19a90              # double 0.12034252558224012
	.quad	0x3fe4bd5b2dd99ff4              # double 0.64811476664635714
	.quad	0x3fd58c9e9feed890              # double 0.33670774095970391
	.quad	0x3fe374ddf618d521              # double 0.60801599565335007
	.quad	0x3fd973fce45d9900              # double 0.3977043371327369
	.quad	0x3fe60b67eae6e406              # double 0.68889232520371091
	.quad	0x3fd247db5ee530a2              # double 0.28563579814068352
	.quad	0x3fee5b668722b7e4              # double 0.9486572875373409
	.quad	0x3fbddaa21f24e038              # double 0.11661732921936696
	.quad	0x3fef1b204046fb07              # double 0.9720612769523037
	.quad	0x3fe435062e7cf3f6              # double 0.63147267417627861
	.quad	0x3facb5134582d090              # double 0.056068994746426459
	.quad	0x3fd814529edd1842              # double 0.37624040140179116
	.quad	0x3fd2784560d58e92              # double 0.2885907598158407
	.quad	0x3fe4efa84750079c              # double 0.6542550461601766
	.quad	0x3fe6f66e83ff0c2a              # double 0.71758199482463181
	.quad	0x3fc94808930de158              # double 0.19751078777677367
	.quad	0x3fc27caf19084cec              # double 0.14443005296980205
	.quad	0x3fb3944d0c3b84e0              # double 0.076481643186997683
	.quad	0x3fd9a1a64cf6961a              # double 0.40049130931797239
	.quad	0x3fe7202f57ee4697              # double 0.72267882513024773
	.quad	0x3fe2dc756af6c740              # double 0.58941145793344418
	.quad	0x3fd1aac84d820e92              # double 0.27604873246330286
	.quad	0x3fd2654cab402d3e              # double 0.28743283008289555
	.quad	0x3fd8192711a1b340              # double 0.37653519365158061
	.quad	0x3fdb7acbd78cc1e6              # double 0.42936988878048366
	.quad	0x3fd957c0f8ab6328              # double 0.39598106655243948
	.quad	0x3fa9413691f5fb40              # double 0.049325661962021261
	.quad	0x3fa5b005e66f48f0              # double 0.042358574275242478
	.quad	0x3fa9f006d6b6bc60              # double 0.050659383497411836
	.quad	0x3fe320e7e50bcf61              # double 0.59776682601521369
	.quad	0x3fbb368684f7b070              # double 0.10630074259069189
	.quad	0x3fd98014322193e4              # double 0.39844231505986571
	.quad	0x3feed1e744470965              # double 0.96312297187277506
	.quad	0x3fe58b64ac6876d1              # double 0.67326577828836254
	.quad	0x3fe8b43d0baed997              # double 0.77200176507794793
	.quad	0x3fe91a856ff21961              # double 0.78448745598215563
	.quad	0x3feed7ac7e87455b              # double 0.96382736885622521
	.quad	0x3fd38038521f4020              # double 0.30470092792256942
	.quad	0x3fccb40765bccedc              # double 0.22424404590275671
	.quad	0x3fd90d5d9559a36a              # double 0.39144076905227243
	.quad	0x3fe7fbfd3cf1f17e              # double 0.74951040175760375
	.quad	0x3fc036b530816b54              # double 0.12666954868731273
	.quad	0x3fe605c0aa48bdd4              # double 0.68820222147581456
	.quad	0x3fef19d2090a4a9b              # double 0.97190191045440899
	.quad	0x3fd3f6d23de94caa              # double 0.3119397739985269
	.quad	0x3fe46fd8f7e7c461              # double 0.63865326327335137
	.quad	0x3fb8e3835099c318              # double 0.09722157209195037
	.quad	0x3fd3405327741d4a              # double 0.3008010754860676
	.quad	0x3fc2d127a518b330              # double 0.14700789986945884
	.quad	0x3fdc5d4ddfee1e3e              # double 0.44319483631304368
	.quad	0x3febad428d0e6bd1              # double 0.86489989805283518
	.quad	0x3fd183749c72caf0              # double 0.27364840772786092
	.quad	0x3fd56ad9eed4d6f6              # double 0.33464668582324408
	.quad	0x3fb118d092e71b98              # double 0.066784892907078564
	.quad	0x3fecc73c7086173f              # double 0.89932081200888792
	.quad	0x3fc1aceae658eb84              # double 0.13808952567509547
	.quad	0x3fd6f062da230fa8              # double 0.35842200567662497
	.quad	0x3fb7e25f62bbaa00              # double 0.093297921757461211
	.quad	0x3feaf44cc73341b2              # double 0.84232176691334915
	.quad	0x3fed739625252d20              # double 0.92035968069959395
	.quad	0x3feff095d0916249              # double 0.99811831222457059
	.quad	0x3fec18ff03b45ef0              # double 0.8780512878756479
	.quad	0x3fed156aeb3318f2              # double 0.90886445939466243
	.quad	0x3feb6fd09884844d              # double 0.85739927090265555
	.quad	0x3fc650ed6e10eab4              # double 0.17434471010513664
	.quad	0x3fe2104acb29eea5              # double 0.56448878937176927
	.quad	0x3fda2e36939d1062              # double 0.40907062926658544
	.quad	0x3fe74430be7fa772              # double 0.7270740242649778
	.quad	0x3fed18147b646b90              # double 0.90918945407917029
	.quad	0x3fd54c9bb2c0f62c              # double 0.33280079323216927
	.quad	0x3f797552e9821400              # double 0.0062154043918143387
	.quad	0x3fb359eeeb18b630              # double 0.075591022869695434
	.quad	0x3fe1f84e810e6708              # double 0.56156087118435583
	.quad	0x3fee3f694f17fb2d              # double 0.94524064491256399
	.quad	0x3fdb809c0bb50574              # double 0.42972470420143982
	.quad	0x3fdbb8e45cbb82be              # double 0.43315991454987202
	.quad	0x3fc06308aae2263c              # double 0.12802227348247353
	.quad	0x3fe4f4227e4b7813              # double 0.65480160395577724
	.quad	0x3fd3350d39b935c2              # double 0.3001130164819551
	.quad	0x3fd93dd8cca3525c              # double 0.3943998335283021
	.quad	0x3feaae97d8e1b4c2              # double 0.83381264075946881
	.quad	0x3febec4c67ce318b              # double 0.87259502672672917
	.quad	0x3fe6a2069c74c786              # double 0.70727854307027438
	.quad	0x3feef6778c167c36              # double 0.96758630143074842
	.quad	0x3fcf6ba59133d690              # double 0.24547261800733056
	.quad	0x3fdd5a56949d5128              # double 0.45863880646835975
	.quad	0x3fda1f01ac6af206              # double 0.40814248883887705
	.quad	0x3feef59a66ccaa9c              # double 0.96748085096381286
	.quad	0x3fd5fe8b44b055c8              # double 0.34366113384143349
	.quad	0x3fcd89f807300638              # double 0.23077297545391828
	.quad	0x3fd6dc1dc2263954              # double 0.3571848293294313
	.quad	0x3fd9d8daecdb41f2              # double 0.40386078959002625
	.quad	0x3fefa9ee09a86f04              # double 0.98949338804547481
	.quad	0x3fc03ee91cbf1adc              # double 0.1269198789943492
	.quad	0x3fdd47b13f20d61a              # double 0.45750075497503107
	.quad	0x3fc8f0f7a775be28              # double 0.19485374142412692
	.quad	0x3fcb1bd33e6c4a4c              # double 0.21178665683744879
	.quad	0x3fd735bf0e9ca830              # double 0.36265541483828923
	.quad	0x3fa838e163c14b50              # double 0.047308963229304113
	.quad	0x3fe8eea5a5b9072d              # double 0.77913172118880925
	.quad	0x3fefb7f1b4f9311a              # double 0.99120412203186281
	.quad	0x3f9d645789f24440              # double 0.028703086657120958
	.quad	0x3fcadbd99454e6ec              # double 0.20983428709751395
	.quad	0x3fdd41c8f1262d54              # double 0.45714019345969814
	.quad	0x3fc547840c2e4478              # double 0.16624498934519116
	.quad	0x3fe66342a245358e              # double 0.69961673444201877
	.quad	0x3fe14fa4f42269d3              # double 0.54097221071725199
	.quad	0x3fe276c569c15866              # double 0.57699843077967894
	.quad	0x3fef39116daa38b5              # double 0.97571631831103522
	.quad	0x3fe5242c5d42669a              # double 0.66066568579408913
	.quad	0x3fdc483341f79f74              # double 0.44190675203434826
	.quad	0x3fe1485e0eb5d44e              # double 0.54008391259288557
	.quad	0x3fb9a94930bb1f10              # double 0.10023934783668786
	.quad	0x3fd40a0c34d4a998              # double 0.31311326178788468
	.quad	0x3fd554f074f96132              # double 0.33330928252464098
	.quad	0x3fb76d2c75a04ed8              # double 0.091509607999167186
	.quad	0x3fe59aea412e297a              # double 0.67516052942782712
	.quad	0x3fd10c8f28e187c0              # double 0.26639155380518886
	.quad	0x3fd616347110dbcc              # double 0.34510527650439538
	.quad	0x3fd921a81ded50d6              # double 0.39267924234924345
	.quad	0x3fc53c80a83a3e50              # double 0.16590889181360291
	.quad	0x3fefe5fb54ff42f7              # double 0.99682394600867396
	.quad	0x3fb8900de01e36e8              # double 0.095948092666926166
	.quad	0x3fc6368873cd1594              # double 0.1735392156062231
	.quad	0x3fe3f7da71cbd638              # double 0.624005529649998
	.quad	0x3fedb99f270924a4              # double 0.92890889763034012
	.quad	0x3fd7f5c5b8fd8c40              # double 0.37437575402708845
	.quad	0x3fe871f65a15c497              # double 0.76391141504986393
	.quad	0x3fedd445702e22b2              # double 0.93216201696585288
	.quad	0x3fe7e032ae61130e              # double 0.74611791666447558
	.quad	0x3fb15e00a46bac10              # double 0.067840614454027781
	.quad	0x3fc5a45a7483645c              # double 0.16907816590426961
	.quad	0x3fe16b8349d93b1b              # double 0.54437412665888318
	.quad	0x3fee6bbefdebcd8c              # double 0.95065259546247338
	.quad	0x3fe34a17806eb404              # double 0.60279440960368946
	.quad	0x3fe9610d6e1a8e45              # double 0.7930972242797415
	.quad	0x3fe8bb80047e996b              # double 0.77288819196546166
	.quad	0x3fd9a063c76bd320              # double 0.4004144141647874
	.quad	0x3fde9b0b103a90dc              # double 0.47821308693734266
	.quad	0x3fb9a60bfb264930              # double 0.1001899231107799
	.quad	0x3fe0c1c589926061              # double 0.52365376348008053
	.quad	0x3fef3f0ec2fc08ad              # double 0.97644746859466169
	.quad	0x3fd44b55410046f6              # double 0.3170979628349494
	.quad	0x3fdb60c3342f57ba              # double 0.42778091522393036
	.quad	0x3fc96729aee0043c              # double 0.19846077956029429
	.quad	0x3fbea755c00ba0f8              # double 0.11974082888230331
	.quad	0x3fe97844bb7a3a31              # double 0.79593121163072145
	.quad	0x3fd60b250072b4c2              # double 0.34443020862347506
	.quad	0x3fc154fbbe6c3a94              # double 0.13540598676668891
	.quad	0x3fd4b11e6e56e724              # double 0.32331047797525714
	.quad	0x3fd0874b93dfeb62              # double 0.25825776520621535
	.quad	0x3fb3a4a6a85d9020              # double 0.076731124977925891
	.quad	0x3fe17d6e3c1c5cf8              # double 0.54656135311498044
	.quad	0x3fd125f7fec6b374              # double 0.26794242744909202
	.quad	0x3fe0b7ac05c3f9e2              # double 0.52242089391785052
	.quad	0x3fbb0f024002d7b0              # double 0.10569776594897351
	.quad	0x3fd0cfcde68b3cc2              # double 0.26268336786320046
	.quad	0x3feb7d3ba55f0930              # double 0.85903723048276071
	.quad	0x3fb85b97b1857bf8              # double 0.095147591438475732
	.quad	0x3fde546f6185e398              # double 0.47390350841265549
	.quad	0x3fe29ef1fb4fe295              # double 0.58190249523529991
	.quad	0x3fcc5ca2df6af148              # double 0.22157703312940158
	.quad	0x3fd4e5b236850422              # double 0.32651954006365902
	.quad	0x3fbb6dcf98fc1d58              # double 0.10714433178883576
	.quad	0x3fe37245042ef24e              # double 0.60769892518107738
	.quad	0x3fbcfb2986104e68              # double 0.11320743105926001
	.quad	0x3fdf9c06a1c031d2              # double 0.49389806552860904
	.quad	0x3fe9d8d35ff2e84b              # double 0.80771797885905394
	.quad	0x3fe9f0de7abccf18              # double 0.81065296146559529
	.quad	0x3fab56d93d9153f0              # double 0.05339697720106773
	.quad	0x3fd640a66c11ec04              # double 0.34769592813216854
	.quad	0x3fe9bb6ffb441c6e              # double 0.80413054538156614
	.quad	0x3fef60ff18a2b448              # double 0.98059038936265441
	.quad	0x3fe6f9e9561ddea0              # double 0.71800677127517432
	.quad	0x3fd0b1f4fb75cd68              # double 0.26086163098007953
	.quad	0x3fef0d09031557f5              # double 0.97034121134015427
	.quad	0x3feecffaec261abd              # double 0.96288820383855233
	.quad	0x3feaddced1c40cfc              # double 0.83957615823638276
	.quad	0x3fe83e3d78523cdb              # double 0.75759767055742644
	.quad	0x3fead6c77d55a203              # double 0.83871817092318712
	.quad	0x3fef79099ae4f58f              # double 0.98352508786017434
	.quad	0x3fe48869a85ad584              # double 0.64165194398690106
	.quad	0x3fcb01e8aff0c7cc              # double 0.21099575606200316
	.quad	0x3fb576a1e7a55918              # double 0.083841437391445672
	.quad	0x3fe518bfe92f0b79              # double 0.65927119773583265
	.quad	0x3fba6304fbd6e3b8              # double 0.10307341717169904
	.quad	0x3fb030be86d7d5c8              # double 0.063243778153114438
	.quad	0x3febd324d97cd5e7              # double 0.86952440717749091
	.quad	0x3fd16d5a5fe0c936              # double 0.27229937899678036
	.quad	0x3fe85ab52a1cec96              # double 0.76107271409218202
	.quad	0x3fd36ddf8f21fd64              # double 0.30358113267717202
	.quad	0x3faa29c5d8b02730              # double 0.051099951459106285
	.quad	0x3fc75c82b8e4044c              # double 0.18251070049157858
	.quad	0x3fd2e2eb3472ae48              # double 0.29510002252456902
	.quad	0x3fe9908ceeb8ae15              # double 0.79889532685541786
	.quad	0x3fd9ba8e9cab42f2              # double 0.40201154041009979
	.quad	0x3fb8b38c0bf73238              # double 0.096489670678416739
	.quad	0x3fd63a30cf025cc0              # double 0.34730167594666383
	.quad	0x3fec0cca310b6c3a              # double 0.87656125620868086
	.quad	0x3fb31a9c8b11c528              # double 0.074624809219831278
	.quad	0x3fe2102ea9182647              # double 0.56447537447201845
	.quad	0x3fed3af042e63a60              # double 0.91344464365267796
	.quad	0x3fe2fa9e6ec5686f              # double 0.59309312472329434
	.quad	0x3fe70073fa32a976              # double 0.71880530230309492
	.quad	0x3fcacad732b98d60              # double 0.20931520439908535
	.quad	0x3fd471133b26e5ec              # double 0.31940155769879541
	.quad	0x3fee50a1112fc2c3              # double 0.94734242779494371
	.quad	0x3fc1bdcec58b5340              # double 0.13860497136797711
	.quad	0x3fd8f3b561ccfce0              # double 0.38987478781559837
	.quad	0x3fbd688075c35680              # double 0.11487582087587533
	.quad	0x3fe75e1a7b823f4f              # double 0.73023723719414046
	.quad	0x3fe3d5a8d82572cc              # double 0.61983148780890351
	.quad	0x3fe75a81bed6ecef              # double 0.72979819558477554
	.quad	0x3fd3061382c42e6a              # double 0.29724586267614106
	.quad	0x3fc195d48c3e487c              # double 0.13738495681588236
	.quad	0x3fe2221845cb0893              # double 0.56666196471657526
	.quad	0x3fde8e3fe8002b3e              # double 0.47743222862543522
	.quad	0x3fe06f6b62b1786a              # double 0.51360101009391923
	.quad	0x3fd0c6a36a7b52b6              # double 0.26212392233473325
	.quad	0x3fac23a44566f0b0              # double 0.054959424468934315
	.quad	0x3fe6aece34005aff              # double 0.70883855968972387
	.quad	0x3fcb3324e619d8dc              # double 0.21249829516791052
	.quad	0x3fd793784f7afffe              # double 0.36837585222019686
	.quad	0x3fde5f66ba678bc2              # double 0.47457283214151513
	.quad	0x3fa8ab4120cdcc90              # double 0.048181567434675832
	.quad	0x3fd91ff0797a49fc              # double 0.3925744234376507
	.quad	0x3fdf460028c7c5ee              # double 0.48864749891717352
	.quad	0x3fc54c8be376c0c0              # double 0.1663985119498701
	.quad	0x3fe48a7b20f55d1d              # double 0.64190441548535981
	.quad	0x3fd21986023c8274              # double 0.28280782907862734
	.quad	0x3fdc897622093ec2              # double 0.44588998149718517
	.quad	0x3fe7cc7839ec0b69              # double 0.74370967209720817
	.quad	0x3fed8504b31e4676              # double 0.92248759254489587
	.quad	0x3fc857868ffa359c              # double 0.19017107038636716
	.quad	0x3fcb125d3c8000a0              # double 0.21149793104269055
	.quad	0x3fe64e83976119b8              # double 0.697084232008641
	.quad	0x3fe4fa1770553e43              # double 0.65552875461612137
	.quad	0x3fc3c2ba8d27be20              # double 0.15438014881463946
	.quad	0x3fe096a5b842a0f6              # double 0.51838956821759896
	.quad	0x3fdd64d68affe5f6              # double 0.45927966665439557
	.quad	0x3fc307dc835e3090              # double 0.14867741026353487
	.quad	0x3febcfc7508dd9aa              # double 0.86911359532569077
	.quad	0x3fd3b21d26c33c50              # double 0.30774620805181474
	.quad	0x3fd322340a4b6ab4              # double 0.29896260266620378
	.quad	0x3fe98d7b832f9416              # double 0.7985208093856524
	.quad	0x3fded63583665746              # double 0.48182428199776373
	.quad	0x3fc1b6d423d38780              # double 0.13839198827104937
	.quad	0x3fe7bb04db2c5215              # double 0.74157946402789554
	.quad	0x3fe4750b24e0c18f              # double 0.63928754046178138
	.quad	0x3fd2fbbc42175580              # double 0.29661470846379956
	.quad	0x3fe7c76cbdca83b9              # double 0.74309384411400636
	.quad	0x3fedf363b4bda5fa              # double 0.9359606294721623
	.quad	0x3fdde588e98d614c              # double 0.46713469322050538
	.quad	0x3fea038923809e39              # double 0.81293160375657358
	.quad	0x3fedef5a61bd8ecb              # double 0.93546790208753217
	.quad	0x3fe413d116396296              # double 0.6274190362992893
	.quad	0x3fc4ea9ee632d92c              # double 0.16341005554358767
	.quad	0x3fec42b2e27528c9              # double 0.88314193944941011
	.quad	0x3fe7db134c33c9e5              # double 0.74549260028134923
	.quad	0x3fbbd796bd1e8b78              # double 0.10875837437792579
	.quad	0x3fd109d200b8f10e              # double 0.26622438498067502
	.quad	0x3fd93b73790a6298              # double 0.3942536050831591
	.quad	0x3fbcf1fb61b0bec0              # double 0.11306735167522231
	.quad	0x3fed960f31fb5e7b              # double 0.92456779253093602
	.quad	0x3fe2e54ecf61365f              # double 0.59049168113569894
	.quad	0x3fe8444fa2ff8d5d              # double 0.7583387549933992
	.quad	0x3febf00526df0617              # double 0.87304933158901832
	.quad	0x3fe9d75edebba025              # double 0.80754035475274988
	.quad	0x3feefa78aa4a0d20              # double 0.96807511577245364
	.quad	0x3fecbe95d9505749              # double 0.89826481289012705
	.quad	0x3fec1fa5c2021b0a              # double 0.87886321918708288
	.quad	0x3fec65873e24b8b3              # double 0.88739359033004062
	.quad	0x3fd40b932372b25e              # double 0.31320646726343238
	.quad	0x3fc8567bf83d6f74              # double 0.19013929005711427
	.quad	0x3fc8b4da9589c6bc              # double 0.19301922132176752
	.quad	0x3fd5e6102c02c828              # double 0.34216694162307926
	.quad	0x3fd46e8d4b39f94a              # double 0.31924755426725382
	.quad	0x3fabaae246e2be10              # double 0.054038115647355167
	.quad	0x3feac047227a3ebb              # double 0.83597141965761723
	.quad	0x3f9c6ef8d0ed0b20              # double 0.027767074348285736
	.quad	0x3fc1e19a23483214              # double 0.13969732973818394
	.quad	0x3fdaebff82f4e364              # double 0.42065418041925384
	.quad	0x3fe6c8c07493f18f              # double 0.71200583237764359
	.quad	0x3fe565efae961296              # double 0.6686933908354884
	.quad	0x3fe470fbccd47e82              # double 0.63879194265241801
	.quad	0x3fea9fcdcf6e68a7              # double 0.83200731767580727
	.quad	0x3fd7fa9eda5d02ce              # double 0.3746716625646912
	.quad	0x3fc22b0311f68890              # double 0.14193762185192726
	.quad	0x3fe2cdb291d47352              # double 0.58760956270598741
	.quad	0x3fe36c09d86dfe62              # double 0.60693828841608544
	.quad	0x3fdb26800e717b9a              # double 0.42422486696698913
	.quad	0x3febe9a7c24aa8ee              # double 0.87227237651430101
	.quad	0x3fe35b15945b7546              # double 0.60486868835474961
	.quad	0x3fc778cf344538c8              # double 0.18337431003823768
	.quad	0x3fd6c501e31f120c              # double 0.35577437572308734
	.quad	0x3feeb722bef299ce              # double 0.95985543531861039
	.quad	0x3f7bd7eb4d2d0a00              # double 0.0067977134193051292
	.quad	0x3fe2cc6d0ca5353a              # double 0.58745434255403173
	.quad	0x3fdcf4b4410368d0              # double 0.45243555401760904
	.quad	0x3fd07faade41b128              # double 0.25779220299479499
	.quad	0x3fce649a13304450              # double 0.23744512497845216
	.quad	0x3fe98afbebd0b7e8              # double 0.79821582849194517
	.quad	0x3fe669be312c37b3              # double 0.70040807346389611
	.quad	0x3fcd45367688913c              # double 0.22867470538870716
	.quad	0x3fb085add5e118b0              # double 0.064539780346509756
	.quad	0x3fd870f6ad934e40              # double 0.38189475012515928
	.quad	0x3fe803f9e8b83707              # double 0.75048537686390737
	.quad	0x3f9cafe8c02c24e0              # double 0.028014790276789436
	.quad	0x3fdf1312f520e20a              # double 0.48553918779683214
	.quad	0x3fa7afcca4d92540              # double 0.046263117907594964
	.quad	0x3fec2d137f2b907f              # double 0.88050246084141282
	.quad	0x3fd9a52041c3f9da              # double 0.40070349142470507
	.quad	0x3fec44be6b6f8787              # double 0.88339158042457278
	.quad	0x3fb5a9fc2bc7f4f0              # double 0.084625015915623214
	.quad	0x3fec262f983fa958              # double 0.8796613668066966
	.quad	0x3fe34e3eb83a8f71              # double 0.60330139143159844
	.quad	0x3fd89f8e1ac64c2c              # double 0.38473847021777163
	.quad	0x3fef3fde8c386890              # double 0.97654654871736746
	.quad	0x3fd058ad5b568b42              # double 0.25541242522938401
	.quad	0x3febef5234b99576              # double 0.87296400354232051
	.quad	0x3feb8e09404af7f4              # double 0.86108839566418149
	.quad	0x3fe6d1f5dbd832e1              # double 0.71312992990860036
	.quad	0x3fe365c8649c306c              # double 0.60617465639508117
	.quad	0x3fd6ce4fa19ba076              # double 0.35634222776435054
	.quad	0x3fbb44e628d5ed28              # double 0.10652006623233901
	.quad	0x3fe6cc2e1ed984ba              # double 0.71242433572128694
	.quad	0x3fd1500746ff4fa8              # double 0.27050954755145051
	.quad	0x3fecc095584849ac              # double 0.89850871317530822
	.quad	0x3fa1d3eb83cc9270              # double 0.034819946135290603
	.quad	0x3fdd0adbff39e36a              # double 0.45378780292917631
	.quad	0x3fe4acde9e521ba5              # double 0.6461022464944689
	.quad	0x3fe18c695a1ba58f              # double 0.54839007949083107
	.quad	0x3fc26ae3231a4454              # double 0.14388694013590231
	.quad	0x3fe9f1a2ee1a63e5              # double 0.81074663643368849
	.quad	0x3fe8a8c51c97af29              # double 0.77060180267787814
	.quad	0x3fe71a2791d49176              # double 0.72194269640435382
	.quad	0x3fef2e215d35c44f              # double 0.97438114361842476
	.quad	0x3fe0e8c87c15cf48              # double 0.52841591105832553
	.quad	0x3fdc13ba2e2c296e              # double 0.43870405682596114
	.quad	0x3feda7263673dfe6              # double 0.92665396342544848
	.quad	0x3fec1eed142737b9              # double 0.87877515731974321
	.quad	0x3fe110dbdb948267              # double 0.53330796133748215
	.quad	0x3fbb70421ffcd220              # double 0.10718167572924431
	.quad	0x3fdc3b7a49e47868              # double 0.44113023010311858
	.quad	0x3fc68c54bf688484              # double 0.17615756364924462
	.quad	0x3fe4a0041f10717f              # double 0.64453321521027351
	.quad	0x3fd1b23e82982dce              # double 0.2765041613899627
	.quad	0x3feea607085cf0a7              # double 0.95776702531249647
	.quad	0x3fe89277f558b130              # double 0.76787946624020798
	.quad	0x3fe658c94e037988              # double 0.69833817708040247
	.quad	0x3fb1dea1db0aefb0              # double 0.069803348519541286
	.quad	0x3fd60595af29c83a              # double 0.34409086328298921
	.quad	0x3fe4e7bd208aa70a              # double 0.65328842502387485
	.quad	0x3f9f556d6d477360              # double 0.030599317355029299
	.quad	0x3fd7c33ce259850e              # double 0.37129137138806889
	.quad	0x3fe7c23e5d3eee75              # double 0.7424613782126942
	.quad	0x3fdd52a9483a50c6              # double 0.45817024281974417
	.quad	0x3fe599bb80e29d7b              # double 0.67501616642850537
	.quad	0x3fd5bba6bfa5f174              # double 0.33957833018919037
	.quad	0x3fe7909f1e98b68c              # double 0.73640399909864263
	.quad	0x3fdd8d6a701d192a              # double 0.46175633381462211
	.quad	0x3fb1e9bbcef12238              # double 0.069972742102557883
	.quad	0x3fb5281f07867498              # double 0.082643451058589057
	.quad	0x3fd01cac8ca0be3e              # double 0.25175012334054603
	.quad	0x3fee310eec4e16a2              # double 0.94348856118513802
	.quad	0x3fec2a35bf56a319              # double 0.88015258188997614
	.quad	0x3f90de1b9367efc0              # double 0.016472273704479568
	.quad	0x3fcf2256ba3dc4a0              # double 0.24323543638050626
	.quad	0x3f8bd39440166c00              # double 0.013587148862646004
	.quad	0x3fd44d2e28b195fc              # double 0.31721071218484531
	.quad	0x3fd36e00d4aa1270              # double 0.30358906524660423
	.quad	0x3fd36fd2ff71fcde              # double 0.30370020814730292
	.quad	0x3fec96aaefa5718b              # double 0.89339205556784529
	.quad	0x3fee7b7850f5c9a2              # double 0.95257201969643668
	.quad	0x3fedaa14b9bcb10b              # double 0.92701183583042857
	.quad	0x3fed29aeb978eead              # double 0.91133819794727844
	.quad	0x3fe33cdac3c9b168              # double 0.60117853393380205
	.quad	0x3fd338bdf3e2198c              # double 0.30033825699538208
	.quad	0x3fc89cd0503c6140              # double 0.19228557508245991
	.quad	0x3feacc1ca21b88af              # double 0.8374159971392795
	.quad	0x3fe85fbc103b266e              # double 0.76168635530593831
	.quad	0x3fbaf1f1e669ff68              # double 0.10525428653090574
	.quad	0x3fbabf8d44cdcce0              # double 0.10448534898550887
	.quad	0x3feacc68a699fe77              # double 0.83745224513400174
	.quad	0x3fb398e7d2e237e0              # double 0.076551903710622593
	.quad	0x3fd9d8da9daa36cc              # double 0.40386071583712346
	.quad	0x3f9786f4c4890480              # double 0.022975754256780778
	.quad	0x3fdea80b3702512a              # double 0.47900658008554109
	.quad	0x3fc640cb436d9148              # double 0.17385235588438719
	.quad	0x3fb8e70ac234a868              # double 0.097275421536922146
	.quad	0x3fe8ac03fbc5f3ce              # double 0.77099799322570006
	.quad	0x3fc9479a8a33cd5c              # double 0.19749767063295109
	.quad	0x3fe9bbc41426257b              # double 0.80417064605096245
	.quad	0x3fc94ee26b7b6800              # double 0.19771986244342088
	.quad	0x3fef017f2f8fcd66              # double 0.96893271722221352
	.quad	0x3fcf3599701475c8              # double 0.24382322285320712
	.quad	0x3fa28954838659f0              # double 0.036203995757364882
	.quad	0x3fe2bf3e24b4642f              # double 0.58584506195905373
	.quad	0x3fd38679a56111b8              # double 0.30508271360693184
	.quad	0x3fccce12cb3fc45c              # double 0.22503886150619479
	.quad	0x3fedbebdd10a7885              # double 0.92953387096692153
	.quad	0x3fe275fc0ad0e8a5              # double 0.57690240967283002
	.quad	0x3fef52a44cb1638d              # double 0.97883810977065055
	.quad	0x3feafcb576c3bb44              # double 0.84334824749189651
	.quad	0x3fe31d1c752d13ec              # double 0.59730360876039645
	.quad	0x3fef5ecb46fd7940              # double 0.98032153954753908
	.quad	0x3fd22d7db8d36870              # double 0.2840265564860891
	.quad	0x3feb29000b3879f8              # double 0.84875490371251683
	.quad	0x3feac4306936bbeb              # double 0.83644886540957708
	.quad	0x3fdeb18ec8820fde              # double 0.47958726483216008
	.quad	0x3fdc0ac6ba21c1da              # double 0.43815773178996908
	.quad	0x3fdfab9ea10237ea              # double 0.4948498318052531
	.quad	0x3fd7061806b83948              # double 0.359746939241536
	.quad	0x3fb8ab4aac9519a8              # double 0.096363703855877447
	.quad	0x3fea92dfcdb8ad34              # double 0.83042898349723381
	.quad	0x3fd2559b6e492490              # double 0.28647504587258599
	.quad	0x3fd11cee3c8fc17a              # double 0.26739078439916109
	.quad	0x3fb906d544dce9c0              # double 0.097760514557115208
	.quad	0x3fd58f8851134aa0              # double 0.33688552777781844
	.quad	0x3fd48e58d80e5e2e              # double 0.32118817424040713
	.quad	0x3fc455c136e17980              # double 0.15886702708935374
	.quad	0x3fdc85695dcf0a38              # double 0.44564279709826193
	.quad	0x3fead93823a6e5e8              # double 0.83901602710028289
	.quad	0x3fef0fdf7842c9d1              # double 0.97068761337714637
	.quad	0x3fe60ac62c88bd9c              # double 0.68881519983363004
	.quad	0x3fd1147a90c24810              # double 0.26687492500889309
	.quad	0x3fd884e0ef93a8ce              # double 0.38311026950999583
	.quad	0x3fe23265f4853931              # double 0.56865213163272277
	.quad	0x3fd3caa95c06f44c              # double 0.30924448000934457
	.quad	0x3fe0a3632fc0683e              # double 0.51994475676043073
	.quad	0x3fab3d31ebc2b200              # double 0.053201255826341054
	.quad	0x3fe50ccac2f4e16d              # double 0.65781152799085663
	.quad	0x3fe01a9c9e4960b5              # double 0.50324850955350675
	.quad	0x3fe24e7eed5e37a0              # double 0.57208200798935493
	.quad	0x3fe43e2ec12f4916              # double 0.63259065371883838
	.quad	0x3fbce2edb7f95b20              # double 0.11283765546373248
	.quad	0x3fb823f00bae3348              # double 0.09429836545150494
	.quad	0x3fa9ea716fac36a0              # double 0.05061678398315661
	.quad	0x3fee6d9f5d410e17              # double 0.95088165486999088
	.quad	0x3fa0d6a6e2d4b7c0              # double 0.032887664021799434
	.quad	0x3febeaf35f6d6695              # double 0.87243050230172747
	.quad	0x3febffd6c5d0f080              # double 0.87498034130068447
	.quad	0x3fe319d91018bf51              # double 0.59690526145821299
	.quad	0x3fd5c730f6bb280a              # double 0.34028266997177126
	.quad	0x3fde3506995189d2              # double 0.47198643658171335
	.quad	0x3fde7b178f7fbdcc              # double 0.47626294148991799
	.quad	0x3fd0c6a2b46b5214              # double 0.26212375277580802
	.quad	0x3fedb1fbe2bdeaa8              # double 0.92797655377883803
	.quad	0x3fc11ab8320162c8              # double 0.13362791482611258
	.quad	0x3fdad2c94621f16a              # double 0.41911537026296364
	.quad	0x3fc4cc73bc3edc48              # double 0.16248938266446289
	.quad	0x3fe9a034c823ea05              # double 0.80080641832256616
	.quad	0x3fbdc84a4cab9bd0              # double 0.11633743640741945
	.quad	0x3fedeb23482be94e              # double 0.93495334716798495
	.quad	0x3fed0bea24d9930f              # double 0.90770442197080736
	.quad	0x3fd95f3eebfd014c              # double 0.3964383415768864
	.quad	0x3fe314b1a688bdb6              # double 0.59627611662101887
	.quad	0x3fd5f73a67d92fdc              # double 0.3432146085876846
	.quad	0x3fe21a700424cd3f              # double 0.56572724160506727
	.quad	0x3fdb3f1a7470edb6              # double 0.425726522171057
	.quad	0x3fd48caf5b9a2b52              # double 0.32108673043756142
	.quad	0x3fee2eebc22887dd              # double 0.94322765275523646
	.quad	0x3fe1a6036316ef8e              # double 0.551515286955224
	.quad	0x3f9ee18c0434cf60              # double 0.030157268292171024
	.quad	0x3fc5b1555b2deba4              # double 0.16947428657644281
	.quad	0x3fc33773d9df7130              # double 0.15012977732011157
	.quad	0x3fe757a1ea66cbf9              # double 0.72944732457688055
	.quad	0x3febdaa4306d5892              # double 0.87043961962150918
	.quad	0x3fef8d0a7682f945              # double 0.98596690317916879
	.quad	0x3fbbe0f4ec0e1eb0              # double 0.10890131724419905
	.quad	0x3fe8d29dee37fe16              # double 0.77571007277578263
	.quad	0x3fbff201d3036c08              # double 0.12478648568814787
	.quad	0x3fde458a6dc9a646              # double 0.47299442979292328
	.quad	0x3fd2d8e7646286a8              # double 0.29448876193246543
	.quad	0x3fea8294a13f9ba7              # double 0.82844001287309232
	.quad	0x3fe1b93f5dfa531c              # double 0.55386322360081719
	.quad	0x3fda41962e2d404a              # double 0.41025309094857632
	.quad	0x3fcecad5ec222e94              # double 0.24056505231816472
	.quad	0x3fc9e22918d5646c              # double 0.20221437180115076
	.quad	0x3fe3a0f644cc239e              # double 0.61339868008609577
	.quad	0x3fed0352cf92c294              # double 0.9066556982198386
	.quad	0x3fe487a7654cb577              # double 0.64155931267821031
	.quad	0x3fe9cd13e37ea312              # double 0.80628389771036013
	.quad	0x3fcbe6d64dc49348              # double 0.21798208997020141
	.quad	0x3fcfc698e0853684              # double 0.24824820483120302
	.quad	0x3fcfc4e71d2b03f8              # double 0.24819649624080831
	.quad	0x3fef78c83ff4a0bf              # double 0.98349392405818736
	.quad	0x3fc330bcbc5f946c              # double 0.14992484281461615
	.quad	0x3fe8ab0b7164f794              # double 0.77087947985977445
	.quad	0x3fd09dd81452039e              # double 0.2596340368691531
	.quad	0x3fee010c47539448              # double 0.93762792521432292
	.quad	0x3fdc29847fe89bb2              # double 0.44003403178288203
	.quad	0x3fde1ff04fda7cc0              # double 0.47069938467206995
	.quad	0x3fe7a0cd67b7e700              # double 0.73837919480794767
	.quad	0x3fdf2507cee6bdf8              # double 0.48663516240318883
	.quad	0x3fe659213568dbf8              # double 0.69838009292186509
	.quad	0x3fb2100137c98248              # double 0.070556713218601463
	.quad	0x3fe9f7c55a076efe              # double 0.81149547179981574
	.quad	0x3fe8218a726bb5d4              # double 0.75409433696557437
	.quad	0x3fef8b9493e5e07f              # double 0.98578862081832585
	.quad	0x3faedbabbca026b0              # double 0.060269705558380848
	.quad	0x3feaba8963e25583              # double 0.83527059086434041
	.quad	0x3fa700cbec8c0750              # double 0.044927952409138272
	.quad	0x3fccfa9d9894ebb0              # double 0.22639818144111024
	.quad	0x3feaaa17ad7ef772              # double 0.83326324354105297
	.quad	0x3fe85979a4c33095              # double 0.76092226200263957
	.quad	0x3fdc32569528ec2a              # double 0.4405724007262416
	.quad	0x3fea239d07d2b44a              # double 0.81684733894292916
	.quad	0x3fee59adcac5ec7d              # double 0.94844712833527434
	.quad	0x3fe2e30f3e0a27e2              # double 0.59021722905276541
	.quad	0x3fdffdfd676a631a              # double 0.49987731074502195
	.quad	0x3fe3e1f6250f0f95              # double 0.62133319128087072
	.quad	0x3fe0a17c097e43f6              # double 0.51971246580262576
	.quad	0x3fe2cabf633e4565              # double 0.58724946387716825
	.quad	0x3fe1c913021fa661              # double 0.55579519667407962
	.quad	0x3fe081f855cbe193              # double 0.51586548573600266
	.quad	0x3fdd74a9f94be5cc              # double 0.46024560304030326
	.quad	0x3fee2be9d3bb99a2              # double 0.9428605208784584
	.quad	0x3fe1c9c9714fef2a              # double 0.55588218814179879
	.quad	0x3fba4de9d27d9f50              # double 0.10275136364873316
	.quad	0x3fc8429441842efc              # double 0.18953183363952764
	.quad	0x3fe5b90913adaeaa              # double 0.67883733600088658
	.quad	0x3fc3f44a4f802030              # double 0.1558926475702278
	.quad	0x3fd824f0e0f2e32c              # double 0.37725469558386027
	.quad	0x3fc9e5a8d6fed358              # double 0.20232115266631001
	.quad	0x3fe6c4e88602088a              # double 0.71153665707994773
	.quad	0x3feec87dd2094c1e              # double 0.96197405836790373
	.quad	0x3fae87b725bdf4f0              # double 0.059629176480464952
	.quad	0x3fe96b30eee542f4              # double 0.79433485659873648
	.quad	0x3fee5f5cb5c60ddb              # double 0.9491408872858601
	.quad	0x3fed01d04ff04922              # double 0.90647140133868143
	.quad	0x3fe177f97849cc0b              # double 0.54589532369425464
	.quad	0x3fe50e750f1f1943              # double 0.65801480248845967
	.quad	0x3fe0092c70892e9c              # double 0.50111982326184856
	.quad	0x3fd71657d983a550              # double 0.36073871842980498
	.quad	0x3fefd0766f01c615              # double 0.99419709855118532
	.quad	0x3fef705ef5476c96              # double 0.98246715456061184
	.quad	0x3fd413b1aa513464              # double 0.31370202667750946
	.quad	0x3fe9620a2f1b1336              # double 0.79321774673790091
	.quad	0x3fdbf09a85f6d362              # double 0.43656027872503078
	.quad	0x3fb18279abb51d30              # double 0.068397144718905123
	.quad	0x3fef7824119c2135              # double 0.98341563643865603
	.quad	0x3fe94594d87e6363              # double 0.7897438267128617
	.quad	0x3fe960ccc84dcd06              # double 0.79306639787537914
	.quad	0x3fc919f846b775ac              # double 0.19610503628693488
	.quad	0x3fec3640dda60f62              # double 0.88162272730594915
	.quad	0x3fe8789e2dab4c24              # double 0.7647238628363806
	.quad	0x3fde8d719f492082              # double 0.47738304667701226
	.quad	0x3fc0f4fcf0c066bc              # double 0.13247644191215169
	.quad	0x3fe7969d64eb32cf              # double 0.73713559828464692
	.quad	0x3fed4259cfd89c12              # double 0.9143494662756686
	.quad	0x3fe54cb9451583f9              # double 0.66561568730332887
	.quad	0x3fb52e22caf260f0              # double 0.08273522810702949
	.quad	0x3fe435e408b2c033              # double 0.63157846163631459
	.quad	0x3fe229d2b8c90575              # double 0.56760536280505269
	.quad	0x3fca90ad9d4016c8              # double 0.20754022768249158
	.quad	0x3fc707e6836efaa0              # double 0.17992860238696995
	.quad	0x3fd573092ae7e8b0              # double 0.33514622869518984
	.quad	0x3fef6ff3a5fa838d              # double 0.98241598527612128
	.quad	0x3fd2bd9c95afd6de              # double 0.2928229772363532
	.quad	0x3fc98e17bf9b8d34              # double 0.19964882713166221
	.quad	0x3fcfaa03e25e2ec4              # double 0.24737595131988688
	.quad	0x3fd9656b5ac21d7a              # double 0.39681514609443236
	.quad	0x3fd2404f7f62584a              # double 0.28517520370349259
	.quad	0x3fedaad0037113f5              # double 0.92710114166459212
	.quad	0x3fef698f7615b3e5              # double 0.98163579047615867
	.quad	0x3fb38da73c526980              # double 0.076380207278281986
	.quad	0x3feb94601b5312b1              # double 0.86186223351304225
	.quad	0x3fd0214da5794bda              # double 0.25203267249633898
	.quad	0x3fcc09d7525948d0              # double 0.2190503265470114
	.quad	0x3fd651a1921c1886              # double 0.34873236912279315
	.quad	0x3fd0bd190c081a48              # double 0.26154161620107574
	.quad	0x3fe6bed04af011ce              # double 0.71079268108638316
	.quad	0x3fd28a82dcd9c30c              # double 0.2897040516609628
	.quad	0x3fd02fb147ecec20              # double 0.25291091941807231
	.quad	0x3fe15ec8768555c4              # double 0.5428201975689082
	.quad	0x3fa398f3d1c28d30              # double 0.038276309352364257
	.quad	0x3fae545667e46e70              # double 0.059237194235007062
	.quad	0x3fee422f6aef0fcb              # double 0.9455792511512241
	.quad	0x3feeaf1b388034b1              # double 0.95887528453171999
	.quad	0x3febc30e0ecac3b1              # double 0.86756041421005226
	.quad	0x3fdda9dd7b240116              # double 0.46349274659589079
	.quad	0x3fd569fb6859fdce              # double 0.33459363165453915
	.quad	0x3fd375c8654b67ea              # double 0.30406389133497547
	.quad	0x3fc8aad9fde65cdc              # double 0.19271397492841558
	.quad	0x3fe2977223a43df0              # double 0.5809870430111328
	.quad	0x3fd32692f309a8ec              # double 0.29922937139657679
	.quad	0x3fee0d27bb963871              # double 0.93910586011931063
	.quad	0x3fe492095521a90d              # double 0.64282671572917283
	.quad	0x3fdff7a5454bddd2              # double 0.49949008719656007
	.quad	0x3fe332eb46c9336d              # double 0.59996570420626727
	.quad	0x3faa899914830b50              # double 0.051831039194005002
	.quad	0x3fed41e12d5a1a79              # double 0.914291943147716
	.quad	0x3feb31ce09aefeb6              # double 0.84982969180415213
	.quad	0x3fe47e933ba674fb              # double 0.64045106554445341
	.quad	0x3fec0f7f68bbf6a2              # double 0.87689180808930112
	.quad	0x3fcb5e2c93521d08              # double 0.21381146615406288
	.quad	0x3fd4849f38667870              # double 0.32059460170592669
	.quad	0x3febd1220271b6b3              # double 0.86927891232854504
	.quad	0x3fdb226c8b82115e              # double 0.42397607444606489
	.quad	0x3feac558b9743298              # double 0.83659015866722353
	.quad	0x3fe295b184532c1a              # double 0.58077312321381958
	.quad	0x3fe9e2b0b4e5d17c              # double 0.8089221509131188
	.quad	0x3fd8b1c9a29627fc              # double 0.38585129621117153
	.quad	0x3fe4082fba363e57              # double 0.62599932069310682
	.quad	0x3fd19ecbec039a9c              # double 0.27531717346429629
	.quad	0x3feced9d6366a31b              # double 0.90400571264499108
	.quad	0x3fe6601a3b0e992c              # double 0.6992312577683939
	.quad	0x3fc5e40418107fe4              # double 0.17102099585554165
	.quad	0x3fe2d68b6a5cbc69              # double 0.58868952535511909
	.quad	0x3fefcd55614e8c43              # double 0.99381512646903791
	.quad	0x3fce619129aa0684              # double 0.23735250982649714
	.quad	0x3fda42466938742e              # double 0.41029510760728527
	.quad	0x3fee22767bf7f14b              # double 0.94170688831904081
	.quad	0x3feebdd79f6d25a4              # double 0.96067410600624159
	.quad	0x3fd29b116e4ad844              # double 0.29071460505236169
	.quad	0x3facb3111a07c3c0              # double 0.056053671290903662
	.quad	0x3fe6f793491bc04d              # double 0.71772159842476813
	.quad	0x3fe54bf902685ab9              # double 0.66552401037446096
	.quad	0x3fd1f7940b7225b4              # double 0.28073598020327073
	.quad	0x3fe4a2b1a6d2e37a              # double 0.6448601015355131
	.quad	0x3fbe0b0cdd4d2a30              # double 0.11735611346117802
	.quad	0x3fbbc486ee8904a8              # double 0.10846751521696041
	.quad	0x3fb3edc79b0437a0              # double 0.077846980424708168
	.quad	0x3fc04ae96a2bd360              # double 0.12728612598553024
	.quad	0x3feb3efd58248645              # double 0.85143916335454917
	.quad	0x3fe3416c552b0e87              # double 0.60173622736370269
	.quad	0x3febf1a7e419318d              # double 0.8732490019843212
	.quad	0x3fe19a26fef03eb0              # double 0.55006742279689114
	.quad	0x3fee1b7c7cbf4e2e              # double 0.9408552586050456
	.quad	0x3fe94f0094ce4397              # double 0.79089383185975037
	.quad	0x3fdf75738e712924              # double 0.49154366407732852
	.quad	0x3fd208296ea90d94              # double 0.28174815947223775
	.quad	0x3fb4abc063156920              # double 0.080745720091190964
	.quad	0x3fb4e9f0c0805840              # double 0.081694647786521024
	.quad	0x3fecb991abfd1bbb              # double 0.8976524695543654
	.quad	0x3febd6f0cdb8ef1a              # double 0.86998787098079622
	.quad	0x3fcb1ac3e73a6a20              # double 0.21175431051672522
	.quad	0x3feb8ab992ac316f              # double 0.86068419119832906
	.quad	0x3fbee7a657de1158              # double 0.12072219510270565
	.quad	0x3fed195d0824863a              # double 0.90934611883512351
	.quad	0x3fba922362be6ce8              # double 0.10379239235628612
	.quad	0x3fb47a39af56faf0              # double 0.07999001055484789
	.quad	0x3fe8a6a747a75732              # double 0.77034343714578868
	.quad	0x3fc524e06b75156c              # double 0.16518788573209109
	.quad	0x3fc2ff51714fc37c              # double 0.14841669113914324
	.quad	0x3fe9aa054087686c              # double 0.80200445750530269
	.quad	0x3fd52b6184b2b95c              # double 0.33077276190569704
	.quad	0x3fe5affa8439ad9e              # double 0.67773176026587456
	.quad	0x3fd539b16b057390              # double 0.3316463036660986
	.quad	0x3fec2d74efe79552              # double 0.88054892403003238
	.quad	0x3fe5a015fb4100bb              # double 0.67579173157721273
	.quad	0x3fcbcf79e2a433d8              # double 0.21726916853404421
	.quad	0x3fed119aaae766c1              # double 0.9083989465682053
	.quad	0x3fd70695dd5cf57a              # double 0.3597769414662576
	.quad	0x3fd0400c1f6a5034              # double 0.25390914028071454
	.quad	0x3fe8bd313a5cfbb6              # double 0.77309476279321276
	.quad	0x3fe1ba32a84e28c3              # double 0.55397923347597844
	.quad	0x3fdbb1fb5fe33a34              # double 0.43273815502189739
	.quad	0x3fd433440266e622              # double 0.31562900766911828
	.quad	0x3fbd64a9210e2590              # double 0.11481720978749466
	.quad	0x3fea211cd0e960c5              # double 0.81654206088116921
	.quad	0x3fedaba8d5512ff6              # double 0.92720452941421061
	.quad	0x3f9d2c2bfa489e60              # double 0.028488814498045634
	.quad	0x3fc9a8fc57af15f8              # double 0.20046953469697804
	.quad	0x3fc84dcb92c984e8              # double 0.18987412135451298
	.quad	0x3fd93b3bd2346472              # double 0.39424033668325997
	.quad	0x3fbdfaeadfc899e0              # double 0.11710994685618159
	.quad	0x3fe79539fec3b466              # double 0.73696613081632445
	.quad	0x3fef2c24daf37be8              # double 0.97413866771591717
	.quad	0x3fe8fa44e9975c4a              # double 0.7805504381493702
	.quad	0x3fe4a667b2100531              # double 0.64531311776969436
	.quad	0x3fe76aff90bd37e4              # double 0.73181131619798778
	.quad	0x3fe9a58c74ca7859              # double 0.80145857630464967
	.quad	0x3fe28fcd0dfd4a6e              # double 0.58005383236225128
	.quad	0x3fb1f6f54232a020              # double 0.070174530660211065
	.quad	0x3fe236cecc89f9c1              # double 0.56919040631310491
	.quad	0x3fcc55006ed4feb8              # double 0.22134404575080224
	.quad	0x3fdc017a4323d188              # double 0.43759018475181977
	.quad	0x3fe74520df5ac678              # double 0.72718852638190778
	.quad	0x3fd685de57093326              # double 0.35192068576434321
	.quad	0x3fd41bbc4ee4d700              # double 0.31419284538729642
	.quad	0x3fcfe86139f2e0b8              # double 0.24927916841057196
	.quad	0x3fe2454d390767ca              # double 0.57095967424833671
	.quad	0x3fd6667398192332              # double 0.35000314572657765
	.quad	0x3fdb87cf0bfcd05a              # double 0.43016410990390386
	.quad	0x3fcfec0f9b23826c              # double 0.24939150881893413
	.quad	0x3feb668cdf3ba68b              # double 0.85626834488103165
	.quad	0x3fbec2ae3f49e2a8              # double 0.12015809102184483
	.quad	0x3fb0d3cf68087098              # double 0.065731966875718917
	.quad	0x3fe182a618d96db2              # double 0.54719834187874583
	.quad	0x3f767867d1189800              # double 0.0054859214156177671
	.quad	0x3fb343e05c14d468              # double 0.075254461746980916
	.quad	0x3f8b3dd7971f2f40              # double 0.013301548289653575
	.quad	0x3fe7661a84e3d01a              # double 0.73121381716782996
	.quad	0x3fd7e30dd9029642              # double 0.37323328201668826
	.quad	0x3fec6c7044fd3073              # double 0.88823712801378318
	.quad	0x3fec20f4b77c26c9              # double 0.87902294003398496
	.quad	0x3fd07d1df4932324              # double 0.25763653644803441
	.quad	0x3febad5be5a71785              # double 0.86491198400538905
	.quad	0x3fe18afdce31f921              # double 0.54821672699452872
	.quad	0x3febc8bf05c73271              # double 0.86825514915979174
	.quad	0x3fe68017e987a65b              # double 0.70313640223794083
	.quad	0x3fcda03a9ea4bce0              # double 0.23145230051293364
	.quad	0x3fdd3b980a516820              # double 0.45676232345215517
	.quad	0x3fdfd30279759c16              # double 0.49725400792380137
	.quad	0x3fe76f131d22ed8a              # double 0.73230891886434901
	.quad	0x3faec9e4117cc050              # double 0.060134055266076403
	.quad	0x3fe028ef4896ac51              # double 0.50499691178755246
	.quad	0x3fe50a8182bb1700              # double 0.65753245862353538
	.quad	0x3feb04a712189756              # double 0.84431794676195682
	.quad	0x3fce313f9abb46a0              # double 0.23587794356585778
	.quad	0x3fe6a803d68639af              # double 0.70800964259415433
	.quad	0x3fd936cc3592b334              # double 0.39396958572142471
	.quad	0x3fe673201588c1ac              # double 0.70155338483714536
	.quad	0x3fd88288644f533e              # double 0.38296708866009854
	.quad	0x3fb10f8010638190              # double 0.066642765046259322
	.quad	0x3f8ab38abecc6dc0              # double 0.013037761638364453
	.quad	0x3fe0bac2ca3c1758              # double 0.52279796122523248
	.quad	0x3fe0ba632778d0bb              # double 0.52275235852587032
	.quad	0x3fb1fde01ba289a0              # double 0.07028008150749665
	.quad	0x3fef733df431e67b              # double 0.98281762785263937
	.quad	0x3fec28387155ec44              # double 0.8799097264849327
	.quad	0x3fecfc0102b4df17              # double 0.90576220062846147
	.quad	0x3feb630f92c9d618              # double 0.85584238690961723
	.quad	0x3fa40d9dcfaa4600              # double 0.039166385268924131
	.quad	0x3fc4106e1da8c2a8              # double 0.15675140808300125
	.quad	0x3fe4511e362e4b69              # double 0.63490210134692149
	.quad	0x3fe3063808325230              # double 0.59450914002315436
	.quad	0x3fdb223a847102b0              # double 0.42396414693579754
	.quad	0x3fc688d83bdd07bc              # double 0.17605116770761053
	.quad	0x3fe9a3c84adef4f8              # double 0.80124296782710669
	.quad	0x3fec2279a5c00432              # double 0.8792083966546953
	.quad	0x3fc6b25d3abf7a8c              # double 0.17731824272683061
	.quad	0x3fec57d1758debd7              # double 0.88571999511565991
	.quad	0x3fc8d427bfd28ec4              # double 0.19397446504910054
	.quad	0x3fc8390b5eb34a58              # double 0.18924085735359841
	.quad	0x3fde64f0cc6d2d6a              # double 0.47491092647097466
	.quad	0x3fd41407797c0134              # double 0.31372248519621171
	.quad	0x3feb68f4c0636396              # double 0.85656201911762042
	.quad	0x3fbca551ddc32ec0              # double 0.11189757980462911
	.quad	0x3fdf98b57bcc411a              # double 0.49369561280856689
	.quad	0x3fe6520ec4bccfae              # double 0.69751680779744674
	.quad	0x3fed8bf028bb427d              # double 0.9233322902237685
	.quad	0x3fdac45495853ce8              # double 0.41823305703742486
	.quad	0x3fef24eb66a1236a              # double 0.97325677914441866
	.quad	0x3fd8618c3fce73d0              # double 0.38095384818171585
	.quad	0x3fd570c500180074              # double 0.33500790604740094
	.quad	0x3fbf9d4f6602f290              # double 0.12349411240115615
	.quad	0x3fe434877e7e8cb5              # double 0.63141226488041602
	.quad	0x3fc7e1b3ce306964              # double 0.18657538955524011
	.quad	0x3f86c4abf393ac40              # double 0.011117308970332584
	.quad	0x3fd92d317b3853c6              # double 0.39338337929921996
	.quad	0x3fe55f3e80f8ea9f              # double 0.66787648382099352
	.quad	0x3fecf440756b8ab3              # double 0.90481589254007699
	.quad	0x3fd2bcccb64e5660              # double 0.29277341655083511
	.quad	0x3f704b049889fa00              # double 0.0039777926946258368
	.quad	0x3fd1a4c6c063d500              # double 0.27568215168078325
	.quad	0x3fd0420bc7f05478              # double 0.25403112912437775
	.quad	0x3fc6cc84fa5a345c              # double 0.17811643814312361
	.quad	0x3fb4b7f8ff2d1248              # double 0.080932199763148138
	.quad	0x3f98571102eaf620              # double 0.023769632151689035
	.quad	0x3fea86cc4cb21682              # double 0.82895483951206494
	.quad	0x3fbc26596153be60              # double 0.10996016145849685
	.quad	0x3fe95897d2217e9f              # double 0.7920645813100754
	.quad	0x3fe966f31fb5bcf1              # double 0.79381710236876135
	.quad	0x3fe8d1110034fe81              # double 0.77552080192977269
	.quad	0x3fe790e8c7f1ef2e              # double 0.7364391236473915
	.quad	0x3fc96dc986ad8588              # double 0.19866293979707117
	.quad	0x3fedf51780affed6              # double 0.93616843351625323
	.quad	0x3fd231b94f663c66              # double 0.28428490403979934
	.quad	0x3fe8cd6d56263c27              # double 0.775076549778423
	.quad	0x3feb9d3a3e41d145              # double 0.86294281158056008
	.quad	0x3fd715a0bec53dac              # double 0.36069506292275366
	.quad	0x3febf64388b48810              # double 0.8738114995978794
	.quad	0x3fcab3f2d969ec08              # double 0.20861659637361663
	.quad	0x3fde4ddf2efc523a              # double 0.47350291813316725
	.quad	0x3fe59ed19170a8bb              # double 0.67563703924431395
	.quad	0x3fd79278dfa93784              # double 0.36831495134253367
	.quad	0x3fddbadc7ffb403c              # double 0.46453011034191483
	.quad	0x3fe3b2e01a9e81b4              # double 0.61558537673049907
	.quad	0x3fca3761997e59e4              # double 0.20481510157396976
	.quad	0x3faa824816b1b470              # double 0.051775219698222297
	.quad	0x3fed886aa13ec11d              # double 0.92290240758123654
	.quad	0x3fdc15197ffb6dc8              # double 0.43878781793838728
	.quad	0x3fcb63e79d179aa0              # double 0.21398635073201877
	.quad	0x3fd01026d830c862              # double 0.25098582374915257
	.quad	0x3fe68a90724e3a84              # double 0.70441458058651607
	.quad	0x3fed6aef6b4dc06d              # double 0.91930361707455932
	.quad	0x3fd8223d66b172c0              # double 0.37708983448628075
	.quad	0x3fd8fef1b5385224              # double 0.39056055733934358
	.quad	0x3fd0787359c3c32e              # double 0.25735172048648536
	.quad	0x3fb0194352162f28              # double 0.062885482350051647
	.quad	0x3feed4d5782aaf2d              # double 0.96348069639268418
	.quad	0x3fdf709897cfe3b8              # double 0.4912473185100299
	.quad	0x3fed419e8c472a28              # double 0.91426017187160813
	.quad	0x3fc1adbe8e3f7c40              # double 0.13811475702002163
	.quad	0x3fdd0719ce6d2482              # double 0.45355839880773641
	.quad	0x3fc5c8362508c42c              # double 0.17017247017204917
	.quad	0x3feca05f542d18dc              # double 0.89457670632034647
	.quad	0x3feac28ccaa39fcb              # double 0.83624877527199126
	.quad	0x3fe3a8c27fd2324d              # double 0.61435055699400609
	.quad	0x3fd5a8ce64839cc0              # double 0.33842811408835516
	.quad	0x3fdd22ed22b4cd06              # double 0.45525673283846435
	.quad	0x3fcaf5b91bfb3664              # double 0.21062387338899946
	.quad	0x3fe0510170432c40              # double 0.50988838125466174
	.quad	0x3fd74ad3293aba2c              # double 0.36394194628056442
	.quad	0x3fd2106e522acd04              # double 0.28225286506786085
	.quad	0x3fe72ff3af851a24              # double 0.7246035030482898
	.quad	0x3faefaa949b435f0              # double 0.060506143805564849
	.quad	0x3fe79b802bf0bead              # double 0.73773201543914058
	.quad	0x3fd33139fa2935c8              # double 0.29987954549582385
	.quad	0x3fda02470da6bf3e              # double 0.40638901074543188
	.quad	0x3fec4df58acf2e5a              # double 0.88451649771873098
	.quad	0x3fc3211328b28f28              # double 0.14944686400587526
	.quad	0x3fe6a1e9ae232bf3              # double 0.70726474772652492
	.quad	0x3fd226bd1ae9c138              # double 0.283614422113732
	.quad	0x3fe0057383e910b1              # double 0.50066543353798043
	.quad	0x3fe56a6754d18ef1              # double 0.66923872533922524
	.quad	0x3fb1148343afc410              # double 0.066719249749226828
	.quad	0x3fb21d74c5ed0188              # double 0.07076196510479893
	.quad	0x3fe542605d0e254b              # double 0.66435259032110971
	.quad	0x3fb65b383f0a5940              # double 0.087329402342537499
	.quad	0x3fe10475c9bd72c5              # double 0.5317944469676027
	.quad	0x3fe8e80eb46761a5              # double 0.77832732424854056
	.quad	0x3fd095b343152632              # double 0.25913697768246202
	.quad	0x3fa661baad609260              # double 0.043714364685261797
	.quad	0x3fcb594dd38748b4              # double 0.21366284206903219
	.quad	0x3fc70e50eca0d82c              # double 0.18012439302555217
	.quad	0x3fc14f78e5bbea28              # double 0.13523780076487069
	.quad	0x3fd914f094946838              # double 0.39190306195962732
	.quad	0x3fe7e883c3f9fd8c              # double 0.74713314320244839
	.quad	0x3fdcafb378dee436              # double 0.4482239418389925
	.quad	0x3fdddd3c541d6138              # double 0.46662815298397531
	.quad	0x3fdd01382152d2f0              # double 0.45319941763163651
	.quad	0x3fe94377575cecd6              # double 0.78948561728557354
	.quad	0x3fe98909b8bf685f              # double 0.7979782684663056
	.quad	0x3fdee5be79d291e4              # double 0.48277246376735961
	.quad	0x3fe9512ccbeb5bfd              # double 0.79115905597689073
	.quad	0x3fd3bc4f94d8fd98              # double 0.30836858306789727
	.quad	0x3fe8fb5c14f93bec              # double 0.7806835565223742
	.quad	0x3fe71788cbaa36e6              # double 0.72162284639645402
	.quad	0x3fd619788949fcb8              # double 0.34530461699609871
	.quad	0x3fe3d89d9c607ec5              # double 0.62019234220857611
	.quad	0x3fe92fb852ec4a78              # double 0.78707519718075414
	.quad	0x3fe10b74ffffbe18              # double 0.5326485633831366
	.quad	0x3fdd119cddbbacd0              # double 0.45419999745963668
	.quad	0x3fe0061ea99262ed              # double 0.50074704284187777
	.quad	0x3fd5793a4d9c6ef4              # double 0.33552415446477757
	.quad	0x3fec20ce2500361a              # double 0.87900454737399802
	.quad	0x3fdeeac089f49494              # double 0.48307813141065847
	.quad	0x3fd5f8cccdc1f360              # double 0.34331054776685299
	.quad	0x3fcccacee3fac090              # double 0.22493921405612527
	.quad	0x3fb6a23086936038              # double 0.088412316184418027
	.quad	0x3fda1f2a510cd0cc              # double 0.40815217890782374
	.quad	0x3fe42766f63e9148              # double 0.62980983824358194
	.quad	0x3fc3c54cf4031900              # double 0.15445863642361957
	.quad	0x3fdb83a0d821a5e6              # double 0.42990895372949323
	.quad	0x3fecaecd36d2f1b4              # double 0.89633808811009041
	.quad	0x3fea901e0d3cda9c              # double 0.83009245477190374
	.quad	0x3fdf9ad4e8f5032e              # double 0.49382517575945684
	.quad	0x3fea91f98f5f1bbf              # double 0.83031919481515348
	.quad	0x3fc24d30ad2550ec              # double 0.14298065618880373
	.quad	0x3fdae8f7fd01df12              # double 0.42046928127045746
	.quad	0x3fe7513cb45260e6              # double 0.72866664141750159
	.quad	0x3fece5006de9303c              # double 0.90295430628749029
	.quad	0x3fccc4a34a870468              # double 0.22475091113122692
	.quad	0x3fdcc71d19bbeea0              # double 0.44965293419930141
	.quad	0x3feda1a75a1491a3              # double 0.92598311990564175
	.quad	0x3fb7e11efb2c45c0              # double 0.093278824159162887
	.quad	0x3fe19bae59c5207a              # double 0.55025403531273231
	.quad	0x3fcac686926eb6ac              # double 0.20918352270148455
	.quad	0x3fe86e6c7481d02c              # double 0.76347944979943838
	.quad	0x3fec86967cbc40a6              # double 0.89142917978644642
	.quad	0x3fbc61dfac2d9a78              # double 0.11086843446319417
	.quad	0x3fd738ea995fcd24              # double 0.36284890153838689
	.quad	0x3fe9121d333604db              # double 0.78346118929053021
	.quad	0x3fe652c880d10800              # double 0.69760537299612224
	.quad	0x3fc8551bfd682588              # double 0.19009733079319013
	.quad	0x3fe0b538dd0db319              # double 0.52212184118761507
	.quad	0x3fe3fbe40f1f35c5              # double 0.62449839547633046
	.quad	0x3fec1a12e7d918f9              # double 0.8781828430444697
	.quad	0x3fd227750b79ab9e              # double 0.28365827675468747
	.quad	0x3fd7bf5b4ea0e164              # double 0.37105448416288866
	.quad	0x3faec29cb6610640              # double 0.060078522933065148
	.quad	0x3fefa8ec7a2d1b98              # double 0.98937057364024649
	.quad	0x3faf83b59309c980              # double 0.061551737021448893
	.quad	0x3fec0b68769089ee              # double 0.87639258534573883
	.quad	0x3fc3932e99fc3124              # double 0.15292913931660579
	.quad	0x3fe45dda5da92e3d              # double 0.63645666401993817
	.quad	0x3fe7024825d72062              # double 0.71902854338351241
	.quad	0x3fe6554d6b61f2e1              # double 0.69791289303938353
	.quad	0x3fe484732c7ddbad              # double 0.64116820039531819
	.quad	0x3f8eed47b0c7c6c0              # double 0.015101013262185048
	.quad	0x3fd3f33ad0a3c37e              # double 0.31172056555720207
	.quad	0x3feca7d197ffb62c              # double 0.89548568427352881
	.quad	0x3feef1c2e3aaca0a              # double 0.96701187578429537
	.quad	0x3fd8b8fee33be40e              # double 0.38629123869719784
	.quad	0x3fddb6d17f0e5058              # double 0.46428334625057266
	.quad	0x3fa07787bf0f7030              # double 0.032161943505088053
	.quad	0x3fe9d50d571de70b              # double 0.80725733771325403
	.quad	0x3fed0115d3327033              # double 0.90638247727793553
	.quad	0x3fe8bb1c2475f763              # double 0.77284056779147325
	.quad	0x3fe1aae4f07e4bb3              # double 0.55211111995082829
	.quad	0x3fe163b1dd19c04c              # double 0.54341977294644428
	.quad	0x3fc52771afbd74d4              # double 0.16526623803193863
	.quad	0x3fe13a8083b1e8f4              # double 0.53839135858222997
	.quad	0x3feb65f7c961aad6              # double 0.85619725544287451
	.quad	0x3fe63ca1595e2b49              # double 0.69490115599305924
	.quad	0x3fd8cbd6079b94b8              # double 0.38744116537993589
	.quad	0x3fdf8221d34b16a4              # double 0.49231763490784375
	.quad	0x3fed57e04b45f0ed              # double 0.91697706891821229
	.quad	0x3fd86a2f843b5296              # double 0.38148105538611199
	.quad	0x3fecf37db9dace21              # double 0.90472303676364529
	.quad	0x3feb23b7df38a194              # double 0.8481101379193654
	.quad	0x3fc96a4fb7fe6ec8              # double 0.19855686649395055
	.quad	0x3faa6adae35d0750              # double 0.051596489195175566
	.quad	0x3fe279d79f716454              # double 0.57737332478712711
	.quad	0x3fe4573cb5858cb0              # double 0.63564906552746514
	.quad	0x3fe587317f0bfd68              # double 0.67275309385142368
	.quad	0x3fabe0f88f3fd5e0              # double 0.054450767027372171
	.quad	0x3fee860ef71b6fa7              # double 0.95386455786819091
	.quad	0x3fe6321c44836a55              # double 0.69361699468147242
	.quad	0x3fd69a0bce75b186              # double 0.35315222894748677
	.quad	0x3fed82f886e57231              # double 0.92223764750412418
	.quad	0x3f939f4b1a139520              # double 0.019162343470175647
	.quad	0x3fec60a1246a5890              # double 0.88679558861146468
	.quad	0x3fb08c3bed1868a8              # double 0.064639802345853981
	.quad	0x3fe44539cb4b750c              # double 0.63345040994650637
	.quad	0x3fecf17ae815e4cb              # double 0.9044775517387732
	.quad	0x3fd33956eccb2654              # double 0.30037472843523472
	.quad	0x3fa717e63fac3910              # double 0.045104213020851103
	.quad	0x3fdeaa5a99ae1bf8              # double 0.47914757736037883
	.quad	0x3fe0e29fe2dd1737              # double 0.52766413029960446
	.quad	0x3fe0c9e465d52d63              # double 0.52464504136279932
	.quad	0x3fa5c7cb83c6fac0              # double 0.042539939724056008
	.quad	0x3fcc1faa30fcd9c8              # double 0.21971633331277318
	.quad	0x3fee0cfdc17a57e5              # double 0.93908584393170413
	.quad	0x3fa68b913d699420              # double 0.044033564325936192
	.quad	0x3fe9ec82190885d3              # double 0.81012062920870631
	.quad	0x3fdc68c14674375c              # double 0.44389373665113907
	.quad	0x3fa75f0f9bed9db0              # double 0.04564713266773468
	.quad	0x3fd549525874f494              # double 0.3326001991116041
	.quad	0x3fc333436f843f6c              # double 0.15000193543573503
	.quad	0x3fdeb7d58f893a58              # double 0.47997035042945901
	.quad	0x3fcf97b0d3105aa4              # double 0.24681673341611543
	.quad	0x3fda8a2fa8cd7cec              # double 0.41468421444547121
	.quad	0x3feb956787bb692e              # double 0.86198784361048353
	.quad	0x3fedd43cad8ef646              # double 0.9321578397572885
	.quad	0x3fccbb36a27bf3f0              # double 0.22446330007360826
	.quad	0x3fe7d0d772a3ca43              # double 0.7442433585222904
	.quad	0x3fed1bbae9271b9f              # double 0.90963502442979294
	.quad	0x3febd27fb0267e60              # double 0.86944565204971624
	.quad	0x3fecbc3818ee18e0              # double 0.89797596806672785
	.quad	0x3fe9cf17c822dd9a              # double 0.80652989472484937
	.quad	0x3faed69f210dc920              # double 0.060231182846921749
	.quad	0x3fd6701ec32fae18              # double 0.35059327183873412
	.quad	0x3fe53349b85a4ab1              # double 0.66251073843371533
	.quad	0x3fc5f299ec769310              # double 0.17146610303930077
	.quad	0x3fe4c9e3c9140f60              # double 0.64964474938504324
	.quad	0x3fe7512156150135              # double 0.72865359127903295
	.quad	0x3fee106ff142ddad              # double 0.93950650330855512
	.quad	0x3fbf04512b201d20              # double 0.12115962317340179
	.quad	0x3fc023c5880489f8              # double 0.12609166280260786
	.quad	0x3fd4db9deebe78e2              # double 0.32590435328337553
	.quad	0x3fdc3d274b863a10              # double 0.44123251319334234
	.quad	0x3fc09278d786a338              # double 0.12946997188307718
	.quad	0x3fbb5eb42f4891a8              # double 0.10691381601697592
	.quad	0x3fe634cd1ff69b59              # double 0.69394546740373209
	.quad	0x3fe99d8bbc15b17c              # double 0.8004816697626178
	.quad	0x3fe05e8b14b6ff31              # double 0.51154092832437048
	.quad	0x3fe94752871d876c              # double 0.78995634450641949
	.quad	0x3fe085a0e1d94691              # double 0.5163120661838595
	.quad	0x3fe117e58a1cd5ef              # double 0.53416707015156628
	.quad	0x3fed83752d70bf5b              # double 0.92229708552438738
	.quad	0x3feda4983ae06e14              # double 0.92634212016440864
	.quad	0x3fc9f185796544d4              # double 0.202683147692858
	.quad	0x3fc640afac89abfc              # double 0.17384906696983637
	.quad	0x3feea07977af272b              # double 0.95708917022532114
	.quad	0x3fd9396a790e6d04              # double 0.3941293890181472
	.quad	0x3fc3fa3394c8ef78              # double 0.15607304348838702
	.quad	0x3fe9fe7d2c346094              # double 0.81231554635725666
	.quad	0x3fd64b60bec6ad90              # double 0.3483507025764192
	.quad	0x3fdbc831710acbae              # double 0.43409381903910116
	.quad	0x3faa4a62f7cb80a0              # double 0.051348774670033182
	.quad	0x3fbbd4a84bc239f8              # double 0.10871364450051846
	.quad	0x3f812383052f9bc0              # double 0.008368514629138235
	.quad	0x3fe9bbd8f3f390e8              # double 0.80418059965861932
	.quad	0x3fe47418d97d0245              # double 0.63917200544535346
	.quad	0x3fe83b4949d9a230              # double 0.75723709510663717
	.quad	0x3fe397b8f5507897              # double 0.61227081215817492
	.quad	0x3fd7a1d49a0e40ee              # double 0.36925234837055043
	.quad	0x3febc7b41801dff3              # double 0.86812786759310112
	.quad	0x3feb3298c8c090b0              # double 0.84992636880317285
	.quad	0x3fe9f0ab12bf108c              # double 0.81062844907184361
	.quad	0x3f851e5937370300              # double 0.010311791417622285
	.quad	0x3fb855a5bae3d208              # double 0.095056875350401637
	.quad	0x3fe7c6863176d18e              # double 0.74298391018833043
	.quad	0x3fd3628055d0553c              # double 0.30288704281095469
	.quad	0x3fc6e443e96ad1d0              # double 0.17884110352828353
	.quad	0x3feab5799d0a136a              # double 0.83465271636724236
	.quad	0x3fdcc71242e004f2              # double 0.44965034991044128
	.quad	0x3fd42b423c711e30              # double 0.31514030363584578
	.quad	0x3fdf76910c8d8340              # double 0.49161173082216081
	.quad	0x3fea3c7e9fbfcea6              # double 0.81988459778809353
	.quad	0x3fef907c950cdc47              # double 0.98638753043531657
	.quad	0x3fe0e4f90e33f5be              # double 0.52795079015748292
	.quad	0x3fd56317d5cf90b6              # double 0.33417316322289581
	.quad	0x3fe7b9c48ea9acb4              # double 0.74142673362566436
	.quad	0x3febf57e26537e94              # double 0.87371737943245131
	.quad	0x3fec7030352fa663              # double 0.88869486225048566
	.quad	0x3fe8c5fda09f207c              # double 0.77416879054454978
	.quad	0x3fe8254d60bf3644              # double 0.75455349822886619
	.quad	0x3fd52ba3c11a5fca              # double 0.33078855378834915
	.quad	0x3fe61142a31a7f16              # double 0.68960697036888763
	.quad	0x3fbebb1a1a47b348              # double 0.12004244939425945
	.quad	0x3fe5e94eca6d9fd5              # double 0.68472995316278207
	.quad	0x3fd77eee2582981e              # double 0.36712220824336039
	.quad	0x3fd5859780e78f18              # double 0.33627879703839048
	.quad	0x3feea6a3f23ab2a5              # double 0.95784184751899614
	.quad	0x3fe38eb8e9aa7d45              # double 0.61117215764890231
	.quad	0x3feee2457c37160a              # double 0.96512102375771858
	.quad	0x3fc81362c37db58c              # double 0.18809160752736565
	.quad	0x3fed7a34121e7777              # double 0.92116740740651337
	.quad	0x3fe453eefbf5e728              # double 0.63524579249426427
	.quad	0x3fe1d0a02617e751              # double 0.5567169898997496
	.quad	0x3fc1c07d6048b5cc              # double 0.13868682099693641
	.quad	0x3fdf9b0c2f27e4b8              # double 0.49383835415899169
	.quad	0x3fd3ed5a8d92c094              # double 0.31136192155373377
	.quad	0x3fb1431ff9b03b60              # double 0.067430494746287817
	.quad	0x3fe20d0990e89faa              # double 0.56409147551038541
	.quad	0x3fbc5555ca153cf8              # double 0.11067711051622442
	.quad	0x3fe33543dc541fb6              # double 0.60025208504611416
	.quad	0x3fd590c66a725608              # double 0.33696136851480718
	.quad	0x3fd367bd4af1d66a              # double 0.30320675200287062
	.quad	0x3fc306f993cd0208              # double 0.14865035740696464
	.quad	0x3fdd7bd60a0e43b4              # double 0.4606833551597973
	.quad	0x3fe4385c17bcca8b              # double 0.63187985073302977
	.quad	0x3fedb9c9749b134c              # double 0.92892906927645801
	.quad	0x3fcd143c97f25cd0              # double 0.22718007487558234
	.quad	0x3fe0041b3980eb9f              # double 0.50050126296206432
	.quad	0x3f85596f999b7540              # double 0.01042449176332616
	.quad	0x3fe3e28b67186d4a              # double 0.62140436302016977
	.quad	0x3fd643015b9ad016              # double 0.34783967920088921
	.quad	0x3fd271e3e3102eec              # double 0.28820130514280495
	.quad	0x3fefffe12e985d15              # double 0.99998530483836367
	.quad	0x3fd590eb195ced80              # double 0.33697011448722236
	.quad	0x3fe0a5e2886b5004              # double 0.52024962086079585
	.quad	0x3fe22d9565d81a40              # double 0.56806440249858525
	.quad	0x3fd23d84280d9f94              # double 0.28500465308615586
	.quad	0x3f8cc86a11192b80              # double 0.014054134985732381
	.quad	0x3fe53f9b08d79216              # double 0.66401435591666558
	.quad	0x3fd7c3d27bd57208              # double 0.37132703869954797
	.quad	0x3fda4e3d5d6429dc              # double 0.41102537269821737
	.quad	0x3fee84bea3bcb9df              # double 0.95370418529438072
	.quad	0x3fdca382d6ca28f4              # double 0.44747992492251787
	.quad	0x3fcf1607c17e3940              # double 0.24285981128600476
	.quad	0x3fc9114ccd1a24c8              # double 0.19584045424224983
	.quad	0x3fe730d7fc42459c              # double 0.7247123648577829
	.quad	0x3f545b733e29c400              # double 0.0012425065439425342
	.quad	0x3fe2474be2027e58              # double 0.57120317595031178
	.quad	0x3fe69e3f1beb4d3d              # double 0.70681720211943111
	.quad	0x3fc8b385e68c0b34              # double 0.19297860867671945
	.quad	0x3fee87a649f85095              # double 0.95405878493558538
	.quad	0x3fd82bb4f0a1a7d2              # double 0.37766765116850565
	.quad	0x3fda6bddc764e6c6              # double 0.41283363792500116
	.quad	0x3fcb026d3104d504              # double 0.21101155179500364
	.quad	0x3fd67552e1f0e97e              # double 0.35091087402874865
	.quad	0x3fbb2ce457db39e0              # double 0.10615374703340974
	.quad	0x3fe8ae3e917c4c43              # double 0.77127006926674146
	.quad	0x3feff6e80456f449              # double 0.99888993117895907
	.quad	0x3faf4269b19f61f0              # double 0.061053564960903972
	.quad	0x3fe45e4f6bdf6d32              # double 0.63651248043917108
	.quad	0x3fea63b6f1ad3d23              # double 0.82467219545825221
	.quad	0x3fb79b2d2ce36980              # double 0.092211554965080821
	.quad	0x3f9098ed74869180              # double 0.01620837234226391
	.quad	0x3fe6d7cc26cbb68f              # double 0.71384246423049713
	.quad	0x3f9189411affd7a0              # double 0.01712514617243921
	.quad	0x3fe06e6d3e49d5c7              # double 0.51347982564646422
	.quad	0x3fe5feaa579d06de              # double 0.68733708488454304
	.quad	0x3fcb66e86d4c39dc              # double 0.21407800041966041
	.quad	0x3fbd5812afad08a0              # double 0.11462513722384182
	.quad	0x3fda0716567a3de4              # double 0.40668257184094458
	.quad	0x3fef2333bf0d2de8              # double 0.97304713549368404
	.quad	0x3fd0a1271a54241e              # double 0.25983598300132538
	.quad	0x3fec8eb4fbba0253              # double 0.89242028394080319
	.quad	0x3faca58b3e554b60              # double 0.055950499877005511
	.quad	0x3feed86a84aaeb07              # double 0.9639179793515219
	.quad	0x3fd136043e8e7fa8              # double 0.26892191037222313
	.quad	0x3fe36ee214222f0b              # double 0.60728553707437649
	.quad	0x3fe7b9f42ab290a7              # double 0.74144943560942955
	.quad	0x3fe424b41105a4f0              # double 0.62948039364451169
	.quad	0x3feeed3ee803b8af              # double 0.96646066012706011
	.quad	0x3fe067a3b14c2671              # double 0.51265129688654387
	.quad	0x3fe9613823260abd              # double 0.79311758866273119
	.quad	0x3fedbf26c554f795              # double 0.92958391705882326
	.quad	0x3fc61f38e9b44cc8              # double 0.17282782946913344
	.quad	0x3fb0c6a78a2c67e8              # double 0.065531226381068231
	.quad	0x3fe31343b5ddcc45              # double 0.59610162277966394
	.quad	0x3fed635e97ff91f9              # double 0.91838006674930661
	.quad	0x3fdf9fca8942d084              # double 0.49412787823099102
	.quad	0x3fe7430e9e57b8b5              # double 0.72693568159390642
	.quad	0x3fe7e1fde11c4315              # double 0.74633687941431737
	.quad	0x3fd699baa2931fb8              # double 0.35313287617145361
	.quad	0x3fecc11b65a9c425              # double 0.89857263427814316
	.quad	0x3fc68dcb031c51c8              # double 0.17620217944990046
	.quad	0x3fb5df89934bcfa8              # double 0.085442160092326191
	.quad	0x3fe3f4142a401dc2              # double 0.62354477169076739
	.quad	0x3fee6dc47086af4a              # double 0.95089933374172486
	.quad	0x3feff004a5e1adc8              # double 0.99804909132711205
	.quad	0x3fd3699e52c75e28              # double 0.30332143863549499
	.quad	0x3fe714e706ddfacb              # double 0.72130156842453041
	.quad	0x3fd3c9649a80aaf2              # double 0.30916705215592721
	.quad	0x3fe53b8e162abe43              # double 0.66351990060315591
	.quad	0x3feddb9ac62504ed              # double 0.93305720043295326
	.quad	0x3fe5347b8050100b              # double 0.66265654622157066
	.quad	0x3fe6c281095634cb              # double 0.71124317000944737
	.quad	0x3fe1e1382fb45f7e              # double 0.55874261205006781
	.quad	0x3fd34332e68a1cd6              # double 0.3009764911043481
	.quad	0x3fd033ed50dd3554              # double 0.25316937348255419
	.quad	0x3fa354c53e1ee990              # double 0.03775612242994264
	.quad	0x3feb8d500535938f              # double 0.86100007073820162
	.quad	0x3fbd91d752e84b08              # double 0.11550660871607132
	.quad	0x3fe9aea5c3b50bf2              # double 0.80256927703919545
	.quad	0x3fe10a0bb50d2b1a              # double 0.53247628556832471
	.quad	0x3fed705d86319b29              # double 0.91996647081109473
	.quad	0x3fe934e482b4dff5              # double 0.78770661858197732
	.quad	0x3f95c9ed01bb2de0              # double 0.02127809832636085
	.quad	0x3fc4837dad715d70              # double 0.16026278466118127
	.quad	0x3fd81ae0cf319ea6              # double 0.37664051278850719
	.quad	0x3fdc7a98c7a28c8a              # double 0.44498271461106553
	.quad	0x3fec72500dd23c2e              # double 0.8889541883417047
	.quad	0x3fb7b3768c1d7260              # double 0.092582139213342796
	.quad	0x3fe0767e5110c35d              # double 0.51446452935315856
	.quad	0x3fd9363d0c19d984              # double 0.39393545324073664
	.quad	0x3fcab46c5a7090f0              # double 0.208631080780044
	.quad	0x3fb0202b874597d8              # double 0.062990875745156827
	.quad	0x3fef313236e21e3a              # double 0.97475538939847373
	.quad	0x3fc326e9be9fba6c              # double 0.14962503249940384
	.quad	0x3fc0d9e78b1b8bf0              # double 0.1316499165760372
	.quad	0x3fc3d24a9e40ae3c              # double 0.15485508658581348
	.quad	0x3fee6885adba94bb              # double 0.95025905543720712
	.quad	0x3f9cdb990b0b41a0              # double 0.028181449221678201
	.quad	0x3febb8f111563911              # double 0.86632588754744877
	.quad	0x3fc17c42ec53ae00              # double 0.13660465754888662
	.quad	0x3fe58251da3fbc00              # double 0.6721581709551856
	.quad	0x3fe5488792d3e721              # double 0.66510370900434534
	.quad	0x3fead21153eb03dd              # double 0.83814302816619668
	.quad	0x3febe2bd7290cb92              # double 0.87142822624297112
	.quad	0x3f929f8d52aa15c0              # double 0.018186767740663745
	.quad	0x3fcfd6c6e5f17e48              # double 0.24874197223378958
	.quad	0x3feb8787b160122c              # double 0.86029419559105724
	.quad	0x3fe31c2ad8d5c1ca              # double 0.59718839979728355
	.quad	0x3feda0ec9295cc0d              # double 0.92589405660544488
	.quad	0x3fe342cdd48fd854              # double 0.60190478816981363
	.quad	0x3fc998e8b6ae3af8              # double 0.19997891349745323
	.quad	0x3fe9a2430825ed6c              # double 0.80105735389171917
	.quad	0x3fc7b1cee0eb045c              # double 0.1851137731773943
	.quad	0x3fe44d96f8ed47db              # double 0.63447140329867169
	.quad	0x3fedfebd401c009c              # double 0.93734610101093407
	.quad	0x3fd67b2c27870d02              # double 0.35126785144912287
	.quad	0x3fc7ebe52b30618c              # double 0.18688644989812209
	.quad	0x3fd3fe2f6d15fc4a              # double 0.3123892369548612
	.quad	0x3fe16e9e33535130              # double 0.54475317024711067
	.quad	0x3fc634e5e4e65b38              # double 0.17348931957959635
	.quad	0x3fc9ab9b6a086aac              # double 0.20054953267466169
	.quad	0x3fdbc33853c48f96              # double 0.43379028492403771
	.quad	0x3fe1c44bc0901632              # double 0.55521190271310261
	.quad	0x3fd216e6e51685d4              # double 0.28264782306550029
	.quad	0x3fea11d87449c845              # double 0.81467840874234609
	.quad	0x3fe395127b724180              # double 0.6119472895680218
	.quad	0x3fd9ed4bc20b295a              # double 0.4051083941418675
	.quad	0x3fe19a2d238dd8a5              # double 0.5500703520217668
	.quad	0x3fd2b414935bdcc8              # double 0.29224123373519406
	.quad	0x3fdf3cc82248d4a8              # double 0.48808482502074435
	.quad	0x3fd33892ecf80d2c              # double 0.30032799855708237
	.quad	0x3fe8860a44634cf2              # double 0.7663623176289589
	.quad	0x3fd6f26d5e747c8c              # double 0.35854658340571954
	.quad	0x3fd87f4820da3392              # double 0.38276866157757994
	.quad	0x3fee7e7240398391              # double 0.95293533843879363
	.quad	0x3fd29dfc84cf6a34              # double 0.29089272470233429
	.quad	0x3fe104424f6fa7d6              # double 0.53176990046380967
	.quad	0x3fe1e13ed7bce668              # double 0.55874578605944425
	.quad	0x3fe20d22ffcb3a48              # double 0.56410360297906781
	.quad	0x3fdde4dbc715439e              # double 0.46709341470437404
	.quad	0x3fdbded629eccdc8              # double 0.43547586530914062
	.quad	0x3fe19eb0fb2228ed              # double 0.55062150048732195
	.quad	0x3fc54acddaf1af74              # double 0.16634534063939166
	.quad	0x3fe6d6f7cea023e6              # double 0.71374121052315043
	.quad	0x3fe7ad108479449b              # double 0.7398760402085317
	.quad	0x3fe485fe3349a08b              # double 0.64135656373129402
	.quad	0x3fd1117d1f796c80              # double 0.26669242929137482
	.quad	0x3fbe7122143f4860              # double 0.11891377443615303
	.quad	0x3fd38445601fb1d8              # double 0.30494818102922983
	.quad	0x3fef8241435269a7              # double 0.98465026043713954
	.quad	0x3fe44ba3e07e7a88              # double 0.63423341604705374
	.quad	0x3fe853db20400422              # double 0.76023632334557001
	.quad	0x3fbe281f9c83c238              # double 0.11779973574790226
	.quad	0x3fde356b5b755382              # double 0.4720104592463984
	.quad	0x3fe07dcb654cd395              # double 0.51535577569176161
	.quad	0x3fe4f866ae632358              # double 0.65532239971171702
	.quad	0x3fe1f0b44b6b6266              # double 0.56063284616818687
	.quad	0x3fdf35540288a56c              # double 0.48762989280165558
	.quad	0x3fcd4f4c3af3f644              # double 0.22898247602999977
	.quad	0x3fd113e751e76abe              # double 0.26683981893954101
	.quad	0x3fe11a1d7cc44d1b              # double 0.53443788879886556
	.quad	0x3fec0478eef39391              # double 0.87554594679078168
	.quad	0x3fd48860b739871e              # double 0.32082384007490983
	.quad	0x3fdcca3f04457214              # double 0.44984412591091538
	.quad	0x3fae549da7e03820              # double 0.059239317648561718
	.quad	0x3febaf17af0e274d              # double 0.86512359800802019
	.quad	0x3fe96e73472b1513              # double 0.7947327032094641
	.quad	0x3fe71c76e8c361f3              # double 0.72222466908993821
	.quad	0x3fed13a32e5ad935              # double 0.90864714673697355
	.quad	0x3fdadd57be5c2976              # double 0.41975968923420426
	.quad	0x3fe348f97ddee889              # double 0.60265802940490787
	.quad	0x3fec4a993f006064              # double 0.88410627655958906
	.quad	0x3fe57cfca328f43b              # double 0.67150718562300626
	.quad	0x3fe11222e3514d26              # double 0.53346390150037304
	.quad	0x3fe1955f57ff5fe3              # double 0.54948394000075174
	.quad	0x3fd403da152e38fa              # double 0.31273510044492492
	.quad	0x3fe6bed19a58f50c              # double 0.71079330583566636
	.quad	0x3fd2632ce10f323e              # double 0.28730318048909342
	.quad	0x3fd754327e26c700              # double 0.36451399154167063
	.quad	0x3fd2841938c69790              # double 0.28931265396601535
	.quad	0x3fa25bffc39ce7b0              # double 0.035858147266892515
	.quad	0x3fa1f737a9086fc0              # double 0.035089244254975949
	.quad	0x3fd4bf6b819a23f0              # double 0.32418334633308543
	.quad	0x3fd4bc46ac5b4364              # double 0.32399145919503369
	.quad	0x3fd89e29af5f636e              # double 0.38465349317771469
	.quad	0x3fe1ec6a77cf6f8b              # double 0.56010936165283576
	.quad	0x3fea33cc21838ec9              # double 0.81882292314227201
	.quad	0x3fd721876409b3ce              # double 0.36142143983198316
	.quad	0x3feec70c8bde1bfb              # double 0.96179797475713202
	.quad	0x3fd4fc65e6cbce86              # double 0.32790515459712599
	.quad	0x3fde8d53e545bcc6              # double 0.47737595929988819
	.quad	0x3fda57f9efb67d84              # double 0.41161964806993745
	.quad	0x3fb0d809464788e0              # double 0.065796451242508436
	.quad	0x3fea7c1e41a5c15d              # double 0.82765114614270952
	.quad	0x3fc4ad748a2212dc              # double 0.16154343361645018
	.quad	0x3f87d7a23e34abc0              # double 0.011641757510536865
	.quad	0x3fe26fae626d3dcb              # double 0.57613295768708761
	.quad	0x3fd36f67efd7efa4              # double 0.30367468282906374
	.quad	0x3fca32fccf7491d0              # double 0.2046810162511421
	.quad	0x3fdb8c0da34affc0              # double 0.43042317339495284
	.quad	0x3feb186088a6b881              # double 0.84672571839998068
	.quad	0x3fda3b94f6e54cf8              # double 0.40988659010800133
	.quad	0x3fd01dc4a8c6145a              # double 0.25181690675555546
	.quad	0x3fd09e1a9baba7a6              # double 0.25964989855003251
	.quad	0x3fc9650a1263f260              # double 0.19839597604722581
	.quad	0x3fe372c53d76b4f5              # double 0.60776006703022623
	.quad	0x3fe938678d362721              # double 0.78813531475427479
	.quad	0x3fba1bdf50188db8              # double 0.10198779778925526
	.quad	0x3fe084c22093df88              # double 0.51620584833925509
	.quad	0x3fd06831e91adfd6              # double 0.25635955585630421
	.quad	0x3fe962de70be9d33              # double 0.79331895847727762
	.quad	0x3fd7c55caa84b100              # double 0.37142101909809355
	.quad	0x3fe08515e57a3301              # double 0.51624579257767789
	.quad	0x3fe6ce48849a6534              # double 0.71268106364292416
	.quad	0x3fe9f01e0c4d7f30              # double 0.81056120303035151
	.quad	0x3fb6dfa4b4bdd840              # double 0.089350027204859295
	.quad	0x3fe7bfcd8613def9              # double 0.7421634310439621
	.quad	0x3fee1116a75addf7              # double 0.9395859974528652
	.quad	0x3fe876bb1801292d              # double 0.76449351013551381
	.quad	0x3fe24d4553bd51d7              # double 0.57193247180344542
	.quad	0x3fe55da996475d08              # double 0.66768340445824581
	.quad	0x3fe863810099b393              # double 0.76214647404923352
	.quad	0x3feda0c4ea4aa41e              # double 0.92587514648505809
	.quad	0x3fe456a72cd3097c              # double 0.63557776217230311
	.quad	0x3fdb6f9da12557b0              # double 0.42868748413945479
	.quad	0x3fd9efbe5113dc02              # double 0.40525777738315594
	.quad	0x3fc62c141b32c258              # double 0.17322017028847614
	.quad	0x3fca71610f145058              # double 0.2065850566510814
	.quad	0x3fec6ac49f864560              # double 0.88803321034553661
	.quad	0x3fda52e071a65cc2              # double 0.41130839441889233
	.quad	0x3feb6d2399ec3427              # double 0.8570726400663532
	.quad	0x3fecdec81bebd0f6              # double 0.90219502881384872
	.quad	0x3fda4a325cd7a73c              # double 0.41077860895767393
	.quad	0x3fd66dbb13d3220e              # double 0.35044743476876838
	.quad	0x3fee3f305827a4bb              # double 0.94521348207231115
	.quad	0x3fe0a5443af58dc3              # double 0.52017413630931519
	.quad	0x3fdaa92b47df8bde              # double 0.41657526034231107
	.quad	0x3fcfbc61e14d9590              # double 0.24793647290350096
	.quad	0x3fd9247a1f49af64              # double 0.39285138183071511
	.quad	0x3fcd9c16a56f26c0              # double 0.23132594182816568
	.quad	0x3fe5cf6d3ad1f6dc              # double 0.6815706394988541
	.quad	0x3fecd613272b2f78              # double 0.901132179738382
	.quad	0x3fc203e754b157b0              # double 0.14074412951839355
	.quad	0x3fd403ec9027bf70              # double 0.31273950650847038
	.quad	0x3f793b94fc413d00              # double 0.0061603374234231456
	.quad	0x3fd806bdf17f5a04              # double 0.37541149696099319
	.quad	0x3feb256a1e72eb37              # double 0.84831720301676838
	.quad	0x3fd356fb583cca18              # double 0.30218394867839171
	.quad	0x3fdd08c3165b7f22              # double 0.45365979369488418
	.quad	0x3fc2ddc3e2b9d70c              # double 0.14739273615457937
	.quad	0x3fadfb9ca174d960              # double 0.058560270985639873
	.quad	0x3feb7ca484a51a4c              # double 0.85896516711438541
	.quad	0x3fe0b42ac629ce03              # double 0.52199305251855355
	.quad	0x3fa65eb9b866f310              # double 0.043691447982814435
	.quad	0x3feebf7c3b0d3f2f              # double 0.96087466748756422
	.quad	0x3fd6bd60400f5d2a              # double 0.35530859237538215
	.quad	0x3faf781f528ea030              # double 0.061463335826659082
	.quad	0x3fed64820d1d66e2              # double 0.91851904450888022
	.quad	0x3fc20849f27584b4              # double 0.14087795580693341
	.quad	0x3f9b13f318ffccc0              # double 0.026443289185362984
	.quad	0x3fefcef09cc0f845              # double 0.99401121726965213
	.quad	0x3fcdbf3e9d54d438              # double 0.23239882166095227
	.quad	0x3fefa3a8689aadd1              # double 0.98872776442061127
	.quad	0x3fd0e456a7c8c910              # double 0.26393667588412573
	.quad	0x3fca9ec591f591f4              # double 0.20797032954136763
	.quad	0x3fc65913af2489e8              # double 0.17459341098681525
	.quad	0x3fd2af1eac2067d4              # double 0.29193846520649669
	.quad	0x3fbb8329e222a010              # double 0.10747014780884023
	.quad	0x3fea497e8ba991a7              # double 0.82147147443588586
	.quad	0x3fcaa2a5f2170044              # double 0.20808862992089605
	.quad	0x3fd381a9bfe97200              # double 0.30478900662799902
	.quad	0x3fefaa0e5f9c7489              # double 0.98950880693486553
	.quad	0x3fb6af7bbd4a65e0              # double 0.088615163529901064
	.quad	0x3feaac6761dc5761              # double 0.83354539025706853
	.quad	0x3fe3d15037243e24              # double 0.61930094499434007
	.quad	0x3fee555cb2c9b127              # double 0.9479201785993937
	.quad	0x3fde6bcb270e93a2              # double 0.47532919706491772
	.quad	0x3fe726b1c9b6fa64              # double 0.72347344777501776
	.quad	0x3fdff5c6b9ef2944              # double 0.49937599332465177
	.quad	0x3fc371e18e0dbf00              # double 0.15191287456718072
	.quad	0x3fbb6f15494e9ff0              # double 0.10716374435162357
	.quad	0x3fd38aa51f7da85e              # double 0.30533721995619156
	.quad	0x3fb5397bee54b870              # double 0.082908387838615871
	.quad	0x3fdcbee33ab1eb92              # double 0.44915085536893529
	.quad	0x3fe96f98ed44d945              # double 0.79487272588338753
	.quad	0x3fef186789e67a84              # double 0.97172905858663272
	.quad	0x3fc57bdfc7d4c1f8              # double 0.16784283883454498
	.quad	0x3feee78c9529a4e2              # double 0.96576527722677619
	.quad	0x3fe57cf4b4bb4dda              # double 0.67150340365554517
	.quad	0x3fe4e4248182fa72              # double 0.65284943862191214
	.quad	0x3fdd579628fc5402              # double 0.4584708595514827
	.quad	0x3fef475f68fae6c4              # double 0.97746248725817297
	.quad	0x3fb686be789d8648              # double 0.087993530699827294
	.quad	0x3faf77aa0c77d6b0              # double 0.061459840795504816
	.quad	0x3febd5a1b830295c              # double 0.86982809042209963
	.quad	0x3fec01f624e7cdd1              # double 0.8752394409952392
	.quad	0x3fe09473530ee83d              # double 0.51812139723120476
	.quad	0x3fe99150d82ac355              # double 0.79898874492765037
	.quad	0x3fbd6b007c107020              # double 0.11491396931563758
	.quad	0x3fefbb6482a0d3c1              # double 0.99162507546736133
	.quad	0x3fe2a8786abff11d              # double 0.58306523179593095
	.quad	0x3feba4f8f3add6df              # double 0.86388824075285331
	.quad	0x3fef086af0e422af              # double 0.96977755593350944
	.quad	0x3fb07b15468965a0              # double 0.064378099175334658
	.quad	0x3fe8cbcae539479e              # double 0.77487702150596127
	.quad	0x3fee17daa283c54f              # double 0.94041187039526075
	.quad	0x3fe70f0d0635e065              # double 0.72058726513843097
	.quad	0x3f46d92f757c8c00              # double 6.9727723436974198E-4
	.quad	0x3fe34eb969c24078              # double 0.60335989624037634
	.quad	0x3fd7c9ef86f7b92e              # double 0.3717001741450926
	.quad	0x3fc9162d8b95fc50              # double 0.19598931613652093
	.quad	0x3fef91ebe41cad3c              # double 0.98656267693642218
	.quad	0x3febecec8c74657b              # double 0.87267138893655216
	.quad	0x3fe2803b40d34783              # double 0.57815325413888308
	.quad	0x3fe7ae73779fd26e              # double 0.74004529346582415
	.quad	0x3fc55d3a362b13e4              # double 0.16690757412848634
	.quad	0x3fe3b9e8f4df1a65              # double 0.61644409014190826
	.quad	0x3feec099eaa17589              # double 0.96101089311893972
	.quad	0x3fe6394b5e794179              # double 0.69449394657026098
	.quad	0x3fcd4dc97bdb6cf0              # double 0.22893637225829577
	.quad	0x3fe17c4f1f2b936a              # double 0.54642444694455361
	.quad	0x3febebd12d1a25ca              # double 0.8725362664128451
	.quad	0x3fe6fe977998e4ed              # double 0.71857808827840375
	.quad	0x3fe8cfeeddd7bf58              # double 0.77538245514549953
	.quad	0x3fe782d29e3e42ea              # double 0.73471957117916742
	.quad	0x3fd6c209f277a47c              # double 0.35559319189503191
	.quad	0x3fd97c74dc966886              # double 0.39822122136832439
	.quad	0x3fd4ff1ed8a3d522              # double 0.32807131916281851
	.quad	0x3fe3b2654dba7167              # double 0.61552682095820621
	.quad	0x3febc5c40aa2ee7c              # double 0.86789133145744257
	.quad	0x3fe510d331b5763e              # double 0.65830383023030214
	.quad	0x3fdb73d5123d09b4              # double 0.42894484311195957
	.quad	0x3fed33f4376ffbfd              # double 0.912592037464378
	.quad	0x3fe5e67fc61ed901              # double 0.68438709922227769
	.quad	0x3fc9ab8f5c09b78c              # double 0.20054809564629428
	.quad	0x3feb91dfc1dbfa4f              # double 0.86155689108984201
	.quad	0x3feca565180508a9              # double 0.89518980685558802
	.quad	0x3fd60761ac2b1cd0              # double 0.34420053304024822
	.quad	0x3fead5a41b299a0b              # double 0.83857922845055677
	.quad	0x3f9742f7d57f4c00              # double 0.022716400533521863
	.quad	0x3fe8097710484e6f              # double 0.75115540676274672
	.quad	0x3fc63a662da54f6c              # double 0.17365720013423969
	.quad	0x3fcc804ff0e716bc              # double 0.22266577971293156
	.quad	0x3fc58efc075d46b8              # double 0.16842604026401431
	.quad	0x3fe07187410f6200              # double 0.51385843951271681
	.quad	0x3fd6a2f2b1127e10              # double 0.35369555752001336
	.quad	0x3fe9161b1450a2e4              # double 0.7839484593178807
	.quad	0x3fe298f7ddabac8b              # double 0.58117287917174687
	.quad	0x3fcf078f5f7b6bcc              # double 0.2424182144376047
	.quad	0x3fe31da364529b7c              # double 0.59736795038484969
	.quad	0x3fe8b459baf29d81              # double 0.77201544297433611
	.quad	0x3fe3576c4077a0a2              # double 0.6044217356802799
	.quad	0x3fefc1f9c10cda14              # double 0.99242866234891602
	.quad	0x3f5a2018b37a3600              # double 0.0015945664617079691
	.quad	0x3feb99d78bb3a3bd              # double 0.86252953801623955
	.quad	0x3fe1b0abc5039e15              # double 0.55281628112146797
	.quad	0x3fe899949c7019ab              # double 0.76874762110019412
	.quad	0x3fcb8381e08134f4              # double 0.2149507852758813
	.quad	0x3fc9aaf93773be20              # double 0.20053019721625365
	.quad	0x3fe1e64520efaa0c              # double 0.55935913498734768
	.quad	0x3fe3fd7a9e2a0dc6              # double 0.62469225779971604
	.quad	0x3f9289b641a98980              # double 0.01810345435877414
	.quad	0x3fcf62121f746be8              # double 0.24518038307073131
	.quad	0x3fc2000982f4bfa4              # double 0.14062613386476841
	.quad	0x3fda0a9efd50da24              # double 0.40689825761674769
	.quad	0x3fea02a47e5517f3              # double 0.81282257723137119
	.quad	0x3f7e5ee648dea080              # double 0.0074147220129036073
	.quad	0x3fdc543a7071f9d6              # double 0.44264088612535823
	.quad	0x3fec1727c2d4b6fd              # double 0.87782657673753273
	.quad	0x3feb9f80a45eca0a              # double 0.86322052100723679
	.quad	0x3fd7a1c60ca9cbbe              # double 0.36924887882849677
	.quad	0x3fd7d4139f2d4742              # double 0.37231913132301397
	.quad	0x3fd2520607e95768              # double 0.28625632069212381
	.quad	0x3fe73c26e565804e              # double 0.72609276584626925
	.quad	0x3fcdc6dcc858df98              # double 0.23263129980636843
	.quad	0x3fc84c2bc1beb438              # double 0.18982455215646765
	.quad	0x3fda708b49ec2aee              # double 0.41311914652821613
	.quad	0x3fcb62481d325c80              # double 0.21393681932088171
	.quad	0x3fe991da90fd96ba              # double 0.79905441587899095
	.quad	0x3fe7105c38198152              # double 0.72074709851225749
	.quad	0x3fde1e3f6885d8c8              # double 0.47059617240246299
	.quad	0x3fc35be0eabe8f98              # double 0.15124141180160389
	.quad	0x3feba867539bb332              # double 0.86430708245970878
	.quad	0x3fcaebe9b7919a30              # double 0.21032449210470494
	.quad	0x3fe1a7b6c0a46fb8              # double 0.55172288537459391
	.quad	0x3fcf589f17df63f8              # double 0.24489201226859314
	.quad	0x3fc2b9391d343170              # double 0.14627756048174545
	.quad	0x3fea39c528ca11a1              # double 0.81955202070871647
	.quad	0x3fca5c718a852130              # double 0.20594615234063829
	.quad	0x3fdefc7e41329702              # double 0.48416096083597904
	.quad	0x3fb270aa406c7a78              # double 0.072031632164433534
	.quad	0x3fccba15784ce5f8              # double 0.22442882894556226
	.quad	0x3fe3ed05152be12e              # double 0.62268308768310532
	.quad	0x3fd9fe4cf76c570a              # double 0.40614627993032626
	.quad	0x3fb6db711c0a30f8              # double 0.08928591665807406
	.quad	0x3f813ecdd7a6cec0              # double 0.008420570510544123
	.quad	0x3feeaa4d02af6762              # double 0.95828867458770284
	.quad	0x3fe856ad2b66953e              # double 0.76058062054349995
	.quad	0x3fe8a340df033b5d              # double 0.76992839390900836
	.quad	0x3fe859fecc2872da              # double 0.76098575472459662
	.quad	0x3fe82d08f546b23c              # double 0.75549743562220994
	.quad	0x3fd11e29cfb6c288              # double 0.26746602329789271
	.quad	0x3fe507dbb5592dbc              # double 0.65720925731277857
	.quad	0x3fcc42e7c870233c              # double 0.22079179083837086
	.quad	0x3fe3e8af882e3308              # double 0.62215401265857029
	.quad	0x3fab94efa11b3410              # double 0.053870666900913133
	.quad	0x3fdd854097f58334              # double 0.46125807609319058
	.quad	0x3fe92387a3eed255              # double 0.78558713930267265
	.quad	0x3fc0eb356368e470              # double 0.13217799524298668
	.quad	0x3fe50f80e32b083a              # double 0.65814251297729887
	.quad	0x3fecccd2f19f66de              # double 0.90000292961050454
	.quad	0x3fe50ae6bce3b83e              # double 0.65758072750555363
	.quad	0x3fe0308f0710bfd6              # double 0.50592757587400672
	.quad	0x3fdaa8aea945f176              # double 0.41654554873073069
	.quad	0x3fe5f16fd940132e              # double 0.68572227889726434
	.quad	0x3fec2509e3a386ec              # double 0.8795213171071885
	.quad	0x3fc14f4820e84dac              # double 0.13523198706444128
	.quad	0x3fed4e3742f9e9b1              # double 0.91579783517163638
	.quad	0x3fd0ca30e34d3b94              # double 0.26234075734549234
	.quad	0x3fd35ec1c4ccda78              # double 0.30265850275774353
	.quad	0x3fe8e153ea7eb663              # double 0.77750583457755018
	.quad	0x3fdde3139d1d3a1a              # double 0.4669846567457242
	.quad	0x3fe8da6f2c40d764              # double 0.77666433947773017
	.quad	0x3fdce63ca1ab45a0              # double 0.45155254161826441
	.quad	0x3fd8d7b046aeda52              # double 0.38816458609236293
	.quad	0x3fe5aeeca34f43c8              # double 0.67760307213222237
	.quad	0x3fab6abbeeb8aff0              # double 0.053548691645431634
	.quad	0x3fe2b163d4934f12              # double 0.58415404814374683
	.quad	0x3fd3cc57c7055fa2              # double 0.3093470996441231
	.quad	0x3feffdac142a7e2c              # double 0.99971584261579016
	.quad	0x3fe92fa47fe4d063              # double 0.78706574420222031
	.quad	0x3fda6756bf877e9c              # double 0.41255730346709085
	.quad	0x3fb0df28575a2360              # double 0.065905114484974714
	.quad	0x3fefce7d979c60f2              # double 0.99395637141699766
	.quad	0x3fed9dea1676e073              # double 0.92552666080065504
	.quad	0x3f9e503847d0bf20              # double 0.029602889426484258
	.quad	0x3fd07d51711d0fec              # double 0.25764881178133581
	.quad	0x3fedd6f26d6684ac              # double 0.93248864524152486
	.quad	0x3fe53d53c38ee555              # double 0.66373623080213895
	.quad	0x3fbbfffa2cc64758              # double 0.10937465279701308
	.quad	0x3fcb11b8cf9a4774              # double 0.21147833000992089
	.quad	0x3feb635130b060aa              # double 0.85587367543759751
	.quad	0x3fed8e951f05a96a              # double 0.92365509089476672
	.quad	0x3fb2badc0d464308              # double 0.073163750878176725
	.quad	0x3fe876ee01794f70              # double 0.76451778686394611
	.quad	0x3fea95c087bd9e78              # double 0.83078028213363009
	.quad	0x3fe570dd044a0400              # double 0.67002726400107804
	.quad	0x3fe3a59940291787              # double 0.61396467715597758
	.quad	0x3fef9983e284c94f              # double 0.98748964540417627
	.quad	0x3fdc58c6e4615eba              # double 0.44291851332443921
	.quad	0x3fe184b4c767afcb              # double 0.54744948335928123
	.quad	0x3fee1e44e7d97816              # double 0.94119496615508313
	.quad	0x3fc52444b3a35ad4              # double 0.16516932269470053
	.quad	0x3fc114e3748e7e68              # double 0.13344996634713202
	.quad	0x3fdf25cfcb896d94              # double 0.48668284298556697
	.quad	0x3fea18c53ebd7519              # double 0.81552374128264937
	.quad	0x3fc98446f854aef4              # double 0.19934928060080603
	.quad	0x3fd1ed163df26a70              # double 0.28009563493257073
	.quad	0x3fd0c44a10280efe              # double 0.26198054864674691
	.quad	0x3fb461aba2ee73b8              # double 0.079615332868754218
	.quad	0x3fd33ec6a03a5e2c              # double 0.30070653579011508
	.quad	0x3fe1e8a18e08432d              # double 0.55964734783819881
	.quad	0x3fd23d656f7f3774              # double 0.28499732864735638
	.quad	0x3fe17a8ac1dd98f6              # double 0.54620874275567988
	.quad	0x3fd6879e656919b4              # double 0.35202751067518112
	.quad	0x3fd396df42487c5e              # double 0.30608350251163141
	.quad	0x3f7f9a0b554ba180              # double 0.0077152674391317566
	.quad	0x3fc7d6f67d487c7c              # double 0.18624764554349216
	.quad	0x3fe88500dfb0d961              # double 0.7662357682191151
	.quad	0x3fc2f8a264347da8              # double 0.14821271794151625
	.quad	0x3fb3b45be1795b48              # double 0.076970808551192538
	.quad	0x3fe69b0528db94dc              # double 0.70642335872676254
	.quad	0x3feadb57f4223228              # double 0.83927533800448817
	.quad	0x3fca96249c25dec8              # double 0.20770700096522021
	.quad	0x3fb7f7e728b43d18              # double 0.093626449048532456
	.quad	0x3fc8bf7f9ccdf5a4              # double 0.19334407001944698
	.quad	0x3fe7060c5d8562ef              # double 0.71948831811741154
	.quad	0x3fb814b731ea11f0              # double 0.094066095052830922
	.quad	0x3feed7e58b243502              # double 0.96385457206784531
	.quad	0x3fd60132b4955050              # double 0.34382312426646866
	.quad	0x3fea23338de88247              # double 0.81679704395725927
	.quad	0x3fe5fc573ddb8916              # double 0.68705331880144871
	.quad	0x3fe689f8b937d886              # double 0.70434223342341862
	.quad	0x3febf5b9af2591c9              # double 0.87374576767302259
	.quad	0x3fee47388b377933              # double 0.94619395437965748
	.quad	0x3feaaf6b5954439b              # double 0.83391349265194792
	.quad	0x3fd6a9eeedcf324a              # double 0.35412190650530262
	.quad	0x3fd416ea8da102b0              # double 0.31389869528724557
	.quad	0x3fcc924c460564b0              # double 0.22321465891835635
	.quad	0x3fef3462b0b6feba              # double 0.97514471544851422
	.quad	0x3fe8a8d3c4fc7907              # double 0.77060879205581123
	.quad	0x3fd5296c813093c6              # double 0.33065331093012806
	.quad	0x3fcd3ce62adfa850              # double 0.22842099278870132
	.quad	0x3fd45460dcea40aa              # double 0.31765004705176614
	.quad	0x3fec1ffb1a7321b5              # double 0.878903915080676
	.quad	0x3fec295a00dd7158              # double 0.88004779976794634
	.quad	0x3fdc17e9d7851b3e              # double 0.43895956084127252
	.quad	0x3fe800cc5d79afc5              # double 0.75009744889165886
	.quad	0x3fc8a5ee1444508c              # double 0.19256378163902743
	.quad	0x3fbfc266c6a925f8              # double 0.12406008100619903
	.quad	0x3fc259fd2000aa0c              # double 0.1433712393057508
	.quad	0x3f8b8df64671e680              # double 0.013454364800270513
	.quad	0x3fe5509af5e3117d              # double 0.66608951592256427
	.quad	0x3fea4334f963644f              # double 0.82070397099153947
	.quad	0x3fd0b41cdd881d34              # double 0.26099321016268395
	.quad	0x3fd599016ca776d4              # double 0.33746371851689827
	.quad	0x3fe10ceb94221e6d              # double 0.53282717640190713
	.quad	0x3fd28cdeef1264b6              # double 0.28984807345257069
	.quad	0x3fe2ff3ca80da37a              # double 0.59365685294061099
	.quad	0x3fe57de63b328d36              # double 0.67161857187276186
	.quad	0x3fb10152c3b6c528              # double 0.06642644193813807
	.quad	0x3fe22d2cab05815e              # double 0.56801446344983808
	.quad	0x3fd762f35c701cc6              # double 0.36541446711676107
	.quad	0x3fed4f6f7a698024              # double 0.91594671162238627
	.quad	0x3fe484552bd1caa8              # double 0.64115389402862366
	.quad	0x3fe95e525334ece1              # double 0.79276386500660234
	.quad	0x3fe8c50809ad6d26              # double 0.77405168428541482
	.quad	0x3fe3e18e03b8bb9c              # double 0.62128353812100867
	.quad	0x3fe32c6d4e5e08e0              # double 0.59917321497075804
	.quad	0x3fe747b409e20c73              # double 0.72750284128450315
	.quad	0x3fcf5f8bdc5d1008              # double 0.24510334262788569
	.quad	0x3fe3ce74bc198e9e              # double 0.61895214784859198
	.quad	0x3fc6a729b0f69314              # double 0.17697640553264959
	.quad	0x3fedc1a330912321              # double 0.92988738523226655
	.quad	0x3fd8a1e1565ec2ac              # double 0.38488038477502573
	.quad	0x3fb51056d0aa2bb0              # double 0.082280565207993872
	.quad	0x3fe28343b28bfb25              # double 0.57852349159643224
	.quad	0x3fd80d393f31be66              # double 0.37580710574454768
	.quad	0x3fe5928d551f76cd              # double 0.67413965821807553
	.quad	0x3fd75d41e2f95ab6              # double 0.36506697812493927
	.quad	0x3fe406f11dd33a6a              # double 0.62584739518372356
	.quad	0x3fca80cc126d8bd8              # double 0.20705557727623503
	.quad	0x3feb61651cf738d9              # double 0.85563903481831993
	.quad	0x3fed1b6f282651de              # double 0.90959890214667971
	.quad	0x3fcfdab2fdafab98              # double 0.24886166941663812
	.quad	0x3fe7696821b9a7a0              # double 0.73161703669505939
	.quad	0x3fd0d008847ed584              # double 0.26269734324463223
	.quad	0x3fea03941eca95e4              # double 0.81293684019027212
	.quad	0x3febb21927a8eabd              # double 0.86549051042614844
	.quad	0x3fd2d4446d7483b8              # double 0.29420576752641692
	.quad	0x3fbe3b37d785ed08              # double 0.11809109699054343
	.quad	0x3fe798b43ee63fde              # double 0.73739063534776128
	.quad	0x3fd0a9bb91406986              # double 0.26035966095664553
	.quad	0x3fe76ee6d7d96ff6              # double 0.73228780897215873
	.quad	0x3fedb53c1076944c              # double 0.92837336745709242
	.quad	0x3fd833a044fd1964              # double 0.37815100419211078
	.quad	0x3fe9f00cafb00fb6              # double 0.81055292428981462
	.quad	0x3fdde5028917c3a8              # double 0.46710265529605488
	.quad	0x3fd0507a0b26e422              # double 0.25491190995268387
	.quad	0x3fd065f8d1c8781a              # double 0.25622387396458779
	.quad	0x3fd749850c5236f2              # double 0.36386228755223649
	.quad	0x3feedcb12f27579d              # double 0.96443995675757643
	.quad	0x3fb622501e3df200              # double 0.086461074240965274
	.quad	0x3fc12712700f4d30              # double 0.13400488349598438
	.quad	0x3fe051ea88cac1d7              # double 0.50999953000251252
	.quad	0x3fd1f562fe38509e              # double 0.28060221506280836
	.quad	0x3fd7d69f6009eef8              # double 0.37247452143468207
	.quad	0x3fdae6c44f0cf63c              # double 0.42033488960064225
	.quad	0x3fe2789551f3e362              # double 0.57721963888534966
	.quad	0x3fe38b1948fd7c54              # double 0.61072983032125672
	.quad	0x3fe34e833d78a850              # double 0.60333406454197736
	.quad	0x3f9f31c9c0765d00              # double 0.030463364002199178
	.quad	0x3fe83f2432ac8d91              # double 0.75770769021294104
	.quad	0x3fd808be340975fa              # double 0.37553362924322153
	.quad	0x3fee941d0b9b8aa3              # double 0.95558025614839825
	.quad	0x3fc3701d14767748              # double 0.15185893534811101
	.quad	0x3feee5a5d44b2664              # double 0.9655331751211631
	.quad	0x3fee94efcc3e7784              # double 0.9556807507649272
	.quad	0x3fd7e539082f46ae              # double 0.37336564826282881
	.quad	0x3fe04b0714ed7bf8              # double 0.50915865027843576
	.quad	0x3fd132b49ce37dcc              # double 0.26871981927066879
	.quad	0x3fc9f6950354240c              # double 0.20283758795292817
	.quad	0x3fe1816fca0ad4f9              # double 0.54705037557019331
	.quad	0x3fc7dc0e817bc638              # double 0.1864030964130039
	.quad	0x3fd38efb0c52032e              # double 0.30560184672508484
	.quad	0x3fe650ef0478296a              # double 0.69737959740568312
	.quad	0x3feb7d72d58762dd              # double 0.85906354622701608
	.quad	0x3fe22e4eae7a12a1              # double 0.5681527526617921
	.quad	0x3fcb56765a904b70              # double 0.21357612058690334
	.quad	0x3fece5f94ad54563              # double 0.90307297340238468
	.quad	0x3fe9820db188b9d7              # double 0.79712567019106018
	.quad	0x3fc4ff870bf08eb8              # double 0.16404808123581005
	.quad	0x3feb353c5ba89c74              # double 0.85024850751950831
	.quad	0x3fe077e07afbbc6f              # double 0.51463340778526667
	.quad	0x3fd7d5882a3d5418              # double 0.3724079525466677
	.quad	0x3fe25f0934bed48b              # double 0.57410106946794437
	.quad	0x3fc93d6867fd35f4              # double 0.19718651845543855
	.quad	0x3fef4d750aef1126              # double 0.97820522437590252
	.quad	0x3fddb4b28ec27f22              # double 0.46415389958746023
	.quad	0x3fd25ab6ac7603e4              # double 0.28678671686071611
	.quad	0x3febd24ef87ecd7d              # double 0.86942242178194784
	.quad	0x3fcc45a53a77a214              # double 0.22087540964936692
	.quad	0x3f82626afd570c80              # double 0.0089767798007243105
	.quad	0x3fc6be5cf54af2a4              # double 0.17768442132173334
	.quad	0x3fe1f37b5ccfb25c              # double 0.56097190978250522
	.quad	0x3fcf625a0503e1b8              # double 0.2451889538276768
	.quad	0x3fe5af50c5135a8b              # double 0.67765081874206723
	.quad	0x3fda64a12929e5be              # double 0.41239193935288287
	.quad	0x3fe870d176bd8396              # double 0.76377175513708795
	.quad	0x3fea5c9457d3c80e              # double 0.823801204240455
	.quad	0x3fde35ddc7f583b6              # double 0.47203774001360033
	.quad	0x3fdbdd34fc3d00e6              # double 0.43537640221258156
	.quad	0x3fd7859084854e42              # double 0.36752713147618377
	.quad	0x3fb637a388ca0cd0              # double 0.086786480804266874
	.quad	0x3fc09c1f8e5629d4              # double 0.12976450395610917
	.quad	0x3fe5431ba5b3ca24              # double 0.6644418941853627
	.quad	0x3fdfc9a687d3178a              # double 0.49668277038687647
	.quad	0x3fe6758bd99afaf2              # double 0.70184891224911738
	.quad	0x3fccb6e5b31c6e70              # double 0.22433158155114397
	.quad	0x3fe4da778b28ed8e              # double 0.65166833095229193
	.quad	0x3fb4921a808c30c8              # double 0.080354362853714112
	.quad	0x3fedd30f35d4386b              # double 0.93201408875917247
	.quad	0x3fdd10f0918c6406              # double 0.45415891851149615
	.quad	0x3fd287d080dd3fa0              # double 0.28953945717239016
	.quad	0x3fe3e98ca0356ec2              # double 0.62225943842664599
	.quad	0x3f9f052e17e68c80              # double 0.030293197830939977
	.quad	0x3fedc16aa046823d              # double 0.92986041358751204
	.quad	0x3fe7f3d9576eb17b              # double 0.7485167224563577
	.quad	0x3fc7fa4ed161adc0              # double 0.18732629035672055
	.quad	0x3fe7e5d663d01f96              # double 0.74680633063052215
	.quad	0x3fd3825fd08b9648              # double 0.30483241430042485
	.quad	0x3fe564b9bda74ad1              # double 0.66854559938141211
	.quad	0x3fefcea98dd6f909              # double 0.9939773340518353
	.quad	0x3fdf0781bb9ec3d8              # double 0.48483317682535931
	.quad	0x3fddd73ceb3a7e18              # double 0.4662620827820958
	.quad	0x3fb5d83c80b5c7a0              # double 0.085330754683836663
	.quad	0x3feaa143d8ef1101              # double 0.83218567247288899
	.quad	0x3fde976fe605360c              # double 0.47799298727918038
	.quad	0x3fedc119f934b8bb              # double 0.92982195542369739
	.quad	0x3fc4442013ae6950              # double 0.15832901917458253
	.quad	0x3fc7e16297535404              # double 0.18656570805492845
	.quad	0x3fe4e8120d8b0e20              # double 0.65332892079499416
	.quad	0x3fe820b580927893              # double 0.7539927970099306
	.quad	0x3fe30b252a32daa7              # double 0.59511049501346214
	.quad	0x3fe3adccd35715b7              # double 0.61496583249452541
	.quad	0x3fe265c6edf8524f              # double 0.57492395857350143
	.quad	0x3fd97487ad6e62a2              # double 0.39773742615356344
	.quad	0x3fdaf7984eba0240              # double 0.42136199653763029
	.quad	0x3fe2d45c96026406              # double 0.58842305468272182
	.quad	0x3fe0827014e41356              # double 0.51592258529908963
	.quad	0x3fcb1516b0e0855c              # double 0.21158107410978289
	.quad	0x3fe48917d8055d41              # double 0.64173500243752113
	.quad	0x3fdfd8938a5a4768              # double 0.49759377013207606
	.quad	0x3fe39e5496578725              # double 0.6130774437299108
	.quad	0x3fe55dd086da0be9              # double 0.66770197237235351
	.quad	0x3fd26ff6bed9c4cc              # double 0.28808373105773621
	.quad	0x3fea6d3322c4ed9b              # double 0.82583004752034428
	.quad	0x3fe219ff5aeb3222              # double 0.56567352063718013
	.quad	0x3fd0e76194002c7a              # double 0.26412238553229594
	.quad	0x3fe41f15c6056f16              # double 0.62879456211109885
	.quad	0x3fde4439373bc830              # double 0.47291403192423598
	.quad	0x3fede042f3e5e806              # double 0.93362567554800147
	.quad	0x3fddd1f0dbaa5066              # double 0.46593877269447714
	.quad	0x3fe113e5792de74a              # double 0.5336787573607833
	.quad	0x3fdf407e0952bb4a              # double 0.48831129942384577
	.quad	0x3fd4d1739d14a0bc              # double 0.32528391208553464
	.quad	0x3fe017adc62f57a5              # double 0.5028904791640697
	.quad	0x3fe1ac9ecf0ffee9              # double 0.55232181970492633
	.quad	0x3fb8866938a4e6b8              # double 0.095800949410569269
	.quad	0x3f926dcfa4c038a0              # double 0.01799702113208268
	.quad	0x3feece9cf4e59cc8              # double 0.96272132712774638
	.quad	0x3fe8f0ffa6a05e04              # double 0.77941877884126187
	.quad	0x3fdfb0ea69bded0a              # double 0.49517307592732662
	.quad	0x3fc50d5cdf232764              # double 0.16447029967667526
	.quad	0x3fe512c7ba45bc73              # double 0.6585425031788773
	.quad	0x3fe23d1a1203bda0              # double 0.56995872038344331
	.quad	0x3fa3f7f99a914260              # double 0.039001274221509119
	.quad	0x3fbe7f6eeecff4f0              # double 0.11913197832469158
	.quad	0x3fd8e7f4dcfc00f0              # double 0.38915750103480118
	.quad	0x3fe710bbdf8d8552              # double 0.72079270994815148
	.quad	0x3fec9593b12ddb63              # double 0.89325890164660071
	.quad	0x3fda8ac0d66a9ea2              # double 0.41471882762059853
	.quad	0x3fdc79f1b96b004e              # double 0.44494288546775784
	.quad	0x3fecb926efa8c555              # double 0.89760157402467178
	.quad	0x3feb0e00bf474dbe              # double 0.84545934065902606
	.quad	0x3fedb926365c6564              # double 0.92885122887961957
	.quad	0x3fec7d3c91cc14aa              # double 0.89028767086042149
	.quad	0x3fef5ac0b60ebfdc              # double 0.97982821996810853
	.quad	0x3fe4d91628940486              # double 0.65149982381275673
	.quad	0x3fe4ddf4a6f7d908              # double 0.65209419833152626
	.quad	0x3fee1e9332e13e80              # double 0.94123229920838014
	.quad	0x3fb32300088d8080              # double 0.074752809608527925
	.quad	0x3fd2c018f4cc1ada              # double 0.2929747000311359
	.quad	0x3fe8af2313f487b2              # double 0.7713790311574853
	.quad	0x3fef497b02415b7f              # double 0.977719787983787
	.quad	0x3fe9209e33cfb788              # double 0.7852316867772382
	.quad	0x3fee3f61d9b552e1              # double 0.94523708840514697
	.quad	0x3fac049d0281a490              # double 0.054722696834525242
	.quad	0x3fe276d8d733adb4              # double 0.57700769454588974
	.quad	0x3fddb6a19b67bb8a              # double 0.46427192856111132
	.quad	0x3fd2d5c408fb95c4              # double 0.29429722668859548
	.quad	0x3fe0ce4301d67386              # double 0.52517843588758306
	.quad	0x3fde1027269ae758              # double 0.46973589677837913
	.quad	0x3fe62857b0cb61d4              # double 0.69242462663810977
	.quad	0x3fdf1e1a21bd5714              # double 0.48621228499301705
	.quad	0x3fe367362ccc7d0b              # double 0.60634907483827882
	.quad	0x3fb1d13064d1fe50              # double 0.069598221411063976
	.quad	0x3fcd37711d3fb920              # double 0.22825445106668329
	.quad	0x3fdd4c659f98df1a              # double 0.45778790078792186
	.quad	0x3fd3507b18545ba4              # double 0.30178716064386379
	.quad	0x3fdbbeffa196f0a0              # double 0.43353262691722172
	.quad	0x3fecbeb157fb86b8              # double 0.89827792343222423
	.quad	0x3fe81a13f194bc79              # double 0.75318333801068527
	.quad	0x3fea032b06bc80c0              # double 0.81288672748271296
	.quad	0x3fd6a708c4b1efe2              # double 0.35394496162893863
	.quad	0x3fd1845419407104              # double 0.27370169130314559
	.quad	0x3fc61edfe674bdb8              # double 0.17281721832976671
	.quad	0x3fdfd5315ad7dda6              # double 0.49738725539597295
	.quad	0x3fec050c51d7c5de              # double 0.87561622605261014
	.quad	0x3fd631b75392d73a              # double 0.34678443109020274
	.quad	0x3f9c66c7145d5900              # double 0.027735815637549344
	.quad	0x3fea932414af701b              # double 0.83046154060457711
	.quad	0x3fea694778b293ab              # double 0.82535146306746776
	.quad	0x3fb7ad04571bf030              # double 0.092483779208067273
	.quad	0x3fd219b9f77f4d76              # double 0.28282021684318381
	.quad	0x3fd17908373c740e              # double 0.27301221269755238
	.quad	0x3fbe339766178998              # double 0.11797472231368145
	.quad	0x3febf1b6336a3c2c              # double 0.87325582544315727
	.quad	0x3fb5ba1da4591188              # double 0.084871151565556358
	.quad	0x3feadf0d5827b9bf              # double 0.83972804277237134
	.quad	0x3feb4820149c5b65              # double 0.85255435967961246
	.quad	0x3fe47b6cf95ef619              # double 0.64006661134016263
	.quad	0x3fe5117eed9356b9              # double 0.65838571931336454
	.quad	0x3fe1c67cf9247854              # double 0.55547951374661375
	.quad	0x3fbd209e9aed24f8              # double 0.11377898485547522
	.quad	0x3fd24df8d088f9c4              # double 0.28600902905227721
	.quad	0x3fdeb0641998c636              # double 0.47951605319676405
	.quad	0x3fe3744f29536088              # double 0.60794790336059723
	.quad	0x3fd33e136c493be6              # double 0.30066381048976465
	.quad	0x3fcbcf5920e25a48              # double 0.21726526361153931
	.quad	0x3fc06803243b64ac              # double 0.12817420262471069
	.quad	0x3fe43c50b0b1907c              # double 0.63236269484015351
	.quad	0x3fe18eb68a834771              # double 0.5486710267380045
	.quad	0x3fd28cc69672e8f2              # double 0.28984226887008824
	.quad	0x3fd57368fa2635e2              # double 0.33516907147062913
	.quad	0x3fe0a030c9c80549              # double 0.51955451403061048
	.quad	0x3feeb8129977c534              # double 0.95996980642499929
	.quad	0x3fe86620acc785a3              # double 0.76246675249074192
	.quad	0x3fe858fb60afbb7d              # double 0.76086205371926463
	.quad	0x3fbadb605fb790d0              # double 0.10490991913644909
	.quad	0x3fe59f89cda3c510              # double 0.67572488941201136
	.quad	0x3fe91e33e9ae2c2d              # double 0.78493686333366031
	.quad	0x3fb453d613867910              # double 0.079404239432254053
	.quad	0x3fcf8393e0aadb24              # double 0.24620293111885261
	.quad	0x3fd1db6d8bdea11c              # double 0.27901781710763074
	.quad	0x3fce21e4888c14ac              # double 0.23540932338088305
	.quad	0x3fe557f0e59781a1              # double 0.6669849857535618
	.quad	0x3fead9d136d9cd6c              # double 0.83908901894612375
	.quad	0x3fe6ad3b7ddfabbc              # double 0.70864653191289717
	.quad	0x3fe96a148e8e5931              # double 0.79419925539949621
	.quad	0x3fee6e52b3d3feb1              # double 0.95096716997792019
	.quad	0x3fef8affea5ce1ee              # double 0.98571773313511613
	.quad	0x3fcb434eb8e29a8c              # double 0.21299156215282655
	.quad	0x3fc4f138d6b0c0fc              # double 0.1636115120213687
	.quad	0x3fcc073e31654278              # double 0.21897103702442045
	.quad	0x3fb468b825f9e2d0              # double 0.079722890159142467
	.quad	0x3fea77cd6470a760              # double 0.8271243058891109
	.quad	0x3fd13295f24bd1c2              # double 0.26871250783667844
	.quad	0x3fb129a81970a110              # double 0.067041879855086473
	.quad	0x3f8d86f2375a9dc0              # double 0.014417545618313876
	.quad	0x3fdc61bfc7e06714              # double 0.44346613425442283
	.quad	0x3fea15f09170a3f8              # double 0.81517818838358291
	.quad	0x3fefa68adb4e2039              # double 0.98907988389056022
	.quad	0x3fecfed802f29871              # double 0.90610886169157656
	.quad	0x3facdf63b6bf8d40              # double 0.056391826685081359
	.quad	0x3fe7406762fd0a57              # double 0.7266117986076307
	.quad	0x3feb10d90ade7228              # double 0.84580661890828868
	.quad	0x3fe3255ca1fd8816              # double 0.59831077231160879
	.quad	0x3fe2717a3102723d              # double 0.57635221073321186
	.quad	0x3fcfa80844489174              # double 0.24731543859628469
	.quad	0x3fe14b4569286870              # double 0.54043837107316328
	.quad	0x3fe39d0cb1865939              # double 0.61292109177410403
	.quad	0x3fe18c7e8e4241e1              # double 0.54840019020963038
	.quad	0x3fb1459f36826a38              # double 0.06746859627529822
	.quad	0x3fecce0377ab1c10              # double 0.9001481377862337
	.quad	0x3fe71fcbbf5a0083              # double 0.72263133405068947
	.quad	0x3fbf9655aab90298              # double 0.12338767450365606
	.quad	0x3feb1d853147f45b              # double 0.84735355019769132
	.quad	0x3fea0ad9081b26cd              # double 0.81382419188704491
	.quad	0x3fc49c53a6240508              # double 0.16102071392382578
	.quad	0x3fdb61da1409da9c              # double 0.42784740406879407
	.quad	0x3fd7599419164bc6              # double 0.36484243822013374
	.quad	0x3fca1e50ac7720a4              # double 0.20405014439734714
	.quad	0x3fe17e44468e94f7              # double 0.54666341572433808
	.quad	0x3fe981f20f5c8f88              # double 0.7971124935179299
	.quad	0x3fea58b8b2487f39              # double 0.82333025761543077
	.quad	0x3fd9ffa0cedcf9c4              # double 0.40622730447276134
	.quad	0x3fd4919bf64278d4              # double 0.32138728188318777
	.quad	0x3fe635365dd993cb              # double 0.69399565057812518
	.quad	0x3fe0336350904c03              # double 0.50627294287767233
	.quad	0x3fe256575d815235              # double 0.57303970587469755
	.quad	0x3fe518e6f1f3e63a              # double 0.65928981071846882
	.quad	0x3fe19419a183afe1              # double 0.54932862802297333
	.quad	0x3fe7bbf3d2e831aa              # double 0.7416934127118584
	.quad	0x3fbc00ac792fa378              # double 0.10938528021473626
	.quad	0x3fe4b366342b7539              # double 0.64689932050138232
	.quad	0x3f9f6c39565a02e0              # double 0.030686279197200572
	.quad	0x3fefdeba2b098645              # double 0.99593838124946698
	.quad	0x3fc3925467aca0bc              # double 0.15290312826369312
	.quad	0x3fc41a3850ce79e8              # double 0.15705017037994584
	.quad	0x3fe77ef883058642              # double 0.73424935903694455
	.quad	0x3fe543072e12ef23              # double 0.6644321346170482
	.quad	0x3fd0ab905c6136ba              # double 0.26047143002947915
	.quad	0x3fa64c117258f870              # double 0.04354910393566136
	.quad	0x3fba65fe746c2870              # double 0.1031188043818092
	.quad	0x3fc290626def379c              # double 0.14503126495258989
	.quad	0x3fb26fe3c8033c28              # double 0.072019802409372446
	.quad	0x3fc565fddb1b5d6c              # double 0.16717503737047978
	.quad	0x3fd665b65dbc5c52              # double 0.34995803026089789
	.quad	0x3fe9fdd643f878ad              # double 0.81223595881944777
	.quad	0x3fda60ce7ed8341c              # double 0.41215860736048326
	.quad	0x3fe73539ae53702e              # double 0.72524723098786636
	.quad	0x3fe4f3766bbc63a9              # double 0.65471955339591148
	.quad	0x3fefc285eb034b29              # double 0.99249549771261513
	.quad	0x3feb0f717b7c5ba0              # double 0.84563516729655319
	.quad	0x3fe067d751ac7802              # double 0.5126759143056463
	.quad	0x3fc33cff2ea3277c              # double 0.15029897477353049
	.quad	0x3fd6b00df812ac14              # double 0.35449551797745582
	.quad	0x3fdea21fc32043a0              # double 0.47864526801373053
	.quad	0x3fe619b681ca0186              # double 0.69063878392630396
	.quad	0x3fe2094d886db475              # double 0.56363560339163021
	.quad	0x3fa18d9704458070              # double 0.034283370276853797
	.quad	0x3fe1a770f82be3e4              # double 0.55168961020455898
	.quad	0x3fd8f0e87bf39b3e              # double 0.38970386604926321
	.quad	0x3faa1a35021870b0              # double 0.050981194024843801
	.quad	0x3fdc432fdba3cd90              # double 0.44160076569752338
	.quad	0x3fd95b74f08d7468              # double 0.39620707980595293
	.quad	0x3fd007a9be623552              # double 0.25046771614218699
	.quad	0x3fee118f0c7b42f6              # double 0.93964340627471077
	.quad	0x3fe5d3851cb66b16              # double 0.68207030876087305
	.quad	0x3fe7603c8e722558              # double 0.73049762555562392
	.quad	0x3fef64f278cef523              # double 0.98107265086551753
	.quad	0x3feb33746911d2c8              # double 0.85003109475527427
	.quad	0x3fed55aa9d2cd001              # double 0.91670733164073692
	.quad	0x3fed32cbf385484d              # double 0.91245076716064377
	.quad	0x3feace48e87b5260              # double 0.83768124968134927
	.quad	0x3fd72ec6e2c86274              # double 0.36223003527405884
	.quad	0x3fba89aad19a7040              # double 0.10366313569323982
	.quad	0x3fa633ca5edaab00              # double 0.043363880232694996
	.quad	0x3fb5b59219d7db18              # double 0.084801799115535537
	.quad	0x3fd63aca13c92fe4              # double 0.34733821804252174
	.quad	0x3fcb2b911f4ad5f0              # double 0.2122670557779851
	.quad	0x3fed63d667fbe398              # double 0.9184371977745398
	.quad	0x3fe7b74070c12140              # double 0.74111959478708656
	.quad	0x3fd6c43a780c2c22              # double 0.35572683070557976
	.quad	0x3fca88c378da8244              # double 0.20729869271328216
	.quad	0x3fe85027ce7a88f3              # double 0.75978460624562982
	.quad	0x3f9196e484493420              # double 0.017177172254651762
	.quad	0x3fef3a546a37208f              # double 0.97587033028777792
	.quad	0x3fd38becd59569fa              # double 0.30541535241869122
	.quad	0x3fed9dd178850cd2              # double 0.9255149225140491
	.quad	0x3fe499484bdf72a9              # double 0.6437112314120742
	.quad	0x3fdc6bf3b7a18be6              # double 0.4440888684532055
	.quad	0x3fa7fa47fd79bbb0              # double 0.046831369106136278
	.quad	0x3fc4e4fa98a8c1f4              # double 0.16323788122237171
	.quad	0x3fb04edd41592818              # double 0.063703373388449669
	.quad	0x3feb9d08720833e2              # double 0.8629190661609949
	.quad	0x3fb528bcccd2b2a8              # double 0.082652854924797681
	.quad	0x3fcac391cfca8a38              # double 0.2090933098416643
	.quad	0x3fe388b83bc28e06              # double 0.61043941184874551
	.quad	0x3fe594899426e42f              # double 0.67438200889512767
	.quad	0x3fc974b4ff073920              # double 0.19887411549138623
	.quad	0x3fec42f41d32f66b              # double 0.88317304327911239
	.quad	0x3fe3d2678a7e6b96              # double 0.61943413781715395
	.quad	0x3fb8ef54f7fefc90              # double 0.097401915117176551
	.quad	0x3fd33a6d6d91e8d6              # double 0.30044112873259843
	.quad	0x3fec27de4e65aa40              # double 0.87986674606265325
	.quad	0x3f7490cddf6d3300              # double 0.0050209085373580375
	.quad	0x3fe5959248756d2c              # double 0.67450822975243829
	.quad	0x3fe7d8e61008cc17              # double 0.74522688991271735
	.quad	0x3fedf26277bb417f              # double 0.93583796868374225
	.quad	0x3fd74fea3150ef2a              # double 0.36425261322050295
	.quad	0x3fd41f5a9c35c292              # double 0.31441369299776867
	.quad	0x3fd8d1b155e079c8              # double 0.38779862772380769
	.quad	0x3fe5874f9b898fb6              # double 0.67276745203388688
	.quad	0x3fef009f3ce14144              # double 0.96882593050580867
	.quad	0x3fb90c01a3f7d0f8              # double 0.097839453250177288
	.quad	0x3fd084c74121f4fa              # double 0.25810414658174319
	.quad	0x3fcaccc4a000a148              # double 0.20937402546520389
	.quad	0x3fe733af8cba68a3              # double 0.72505929456680851
	.quad	0x3fbfe61e6e1845f8              # double 0.12460508525716552
	.quad	0x3feea10d59781bce              # double 0.95715968584488009
	.quad	0x3fdc28ed12ca82b6              # double 0.43999792895378265
	.quad	0x3fdaf79daf86af58              # double 0.42136327878210045
	.quad	0x3fe5f6adf55d4507              # double 0.68636224673005664
	.quad	0x3fe7e22a6c16d105              # double 0.74635811911733241
	.quad	0x3fe066db6c3efcce              # double 0.51255580083661711
	.quad	0x3fa3b87188bc8fd0              # double 0.038516567174411542
	.quad	0x3fe3f0df7bb033e6              # double 0.62315344007367623
	.quad	0x3fe4bb017b11da9f              # double 0.64782785450991642
	.quad	0x3fe5a68213f195b4              # double 0.67657569785358485
	.quad	0x3fe93762d7c8c728              # double 0.78801099915856287
	.quad	0x3fe8ca1830884c6d              # double 0.77466973761546642
	.quad	0x3fd69db72e2a3d22              # double 0.35337619312572788
	.quad	0x3fe110b1e82afda0              # double 0.53328795762347525
	.quad	0x3fdb59f03e946858              # double 0.42736440764713768
	.quad	0x3fef6d6b18555e0a              # double 0.98210673096304046
	.quad	0x3fd8f8c343387184              # double 0.39018327297687727
	.quad	0x3fe85d13e177bba4              # double 0.76136201893483645
	.quad	0x3fe24f6e33bd5ea9              # double 0.57219610314765135
	.quad	0x3fd0f58ed9492044              # double 0.26498767108251209
	.quad	0x3feaf7f15efad9f6              # double 0.84276646185645521
	.quad	0x3fef624a1b112af7              # double 0.98074822699103847
	.quad	0x3fcaa006095643d0              # double 0.20800853210360382
	.quad	0x3fe01134072fbea8              # double 0.50210000423063139
	.quad	0x3fe1b6f485252256              # double 0.55358339314359273
	.quad	0x3fea8b788e33ca0b              # double 0.82952525876891181
	.quad	0x3feb6dfc30166542              # double 0.85717591659628334
	.quad	0x3fd3f386c0442b00              # double 0.31173867012027756
	.quad	0x3fef5aff210fb8d8              # double 0.97985798318202466
	.quad	0x3fd3fe6de03d940a              # double 0.31240412615289925
	.quad	0x3fe9af0ea02c4aab              # double 0.80261927875320305
	.quad	0x3fdf2457e30bbffa              # double 0.48659321949435219
	.quad	0x3fd9087d95b86d60              # double 0.39114322301039373
	.quad	0x3fbb1f60520402b8              # double 0.10594751360259635
	.quad	0x3fc88c27b317f138              # double 0.19177719349671363
	.quad	0x3fe3fcaa2edcfc44              # double 0.62459286835645189
	.quad	0x3fd5ca15c6c3f6e2              # double 0.34045929346744519
	.quad	0x3fe4306fa083afc6              # double 0.63091260290593065
	.quad	0x3fcfc1578177a994              # double 0.24808782407428664
	.quad	0x3f933ca3ca993340              # double 0.018786010017993293
	.quad	0x3fd66efd52df7a70              # double 0.35052426426947303
	.quad	0x3fa50e259afcaea0              # double 0.041123557252231935
	.quad	0x3fdcdf118a2e93ee              # double 0.45111502165155926
	.quad	0x3fd526b1a0e0ba68              # double 0.33048668585516916
	.quad	0x3fe3537da32f5922              # double 0.60394174453793803
	.quad	0x3fd21859b5851c22              # double 0.28273623205717702
	.quad	0x3fecd1f177925448              # double 0.90062783578708494
	.quad	0x3fe946c7064639a4              # double 0.78988982415630859
	.quad	0x3fd912798145bc14              # double 0.3917526018548767
	.quad	0x3fe896ae11890aca              # double 0.76839354920260772
	.quad	0x3fcf4ea02e72d2f0              # double 0.24458696620936093
	.quad	0x3fde606d78db3122              # double 0.4746354751812466
	.quad	0x3fe3b9408c9f69c1              # double 0.61636378732082886
	.quad	0x3fe2a6af8425eaf8              # double 0.58284736452273389
	.quad	0x3fe3b3ec9234a473              # double 0.61571339183605145
	.quad	0x3feb08d832df3887              # double 0.84482965408257449
	.quad	0x3fe767ee3e86c2d1              # double 0.73143684589566693
	.quad	0x3fe74f461ec848fd              # double 0.72842699062519467
	.quad	0x3fe7d7d682ef69fd              # double 0.74509740422519111
	.quad	0x3fd263f87218851e              # double 0.28735171453634389
	.quad	0x3fd28f1ddc21873e              # double 0.28998514649548557
	.quad	0x3fed9156ed55f808              # double 0.92399164538051171
	.quad	0x3fe49d1ed157e484              # double 0.6441797341095854
	.quad	0x3fe0b6d8c02815f0              # double 0.52232015162070233
	.quad	0x3fda0f4abf7c4fd8              # double 0.40718334865345929
	.quad	0x3fccf600f6c51c54              # double 0.22625743912996887
	.quad	0x3f971a54a6047840              # double 0.022561380989934543
	.quad	0x3fbeee538df49eb0              # double 0.12082407203399259
	.quad	0x3fe801f9108d4893              # double 0.75024083359518767
	.quad	0x3fc194400e3000c0              # double 0.13733673756360609
	.quad	0x3f8ec268fe6b25c0              # double 0.015019245399701897
	.quad	0x3fd72d1b9eba5b4e              # double 0.36212816715981411
	.quad	0x3fe9138a056ae9e2              # double 0.78363514955645663
	.quad	0x3fed125eca85d35a              # double 0.90849246554590057
	.quad	0x3fe9950a53218077              # double 0.79944339977738721
	.quad	0x3fdda8c3e6d536fc              # double 0.46342561285278783
	.quad	0x3fe8ccb768a5920d              # double 0.77498979986973071
	.quad	0x3feb3e47f492a1c4              # double 0.8513526703655363
	.quad	0x3fdd9d66326e217c              # double 0.4627318851931006
	.quad	0x3fe712f2f40d8368              # double 0.72106311480102381
	.quad	0x3fcdddf534a59d3c              # double 0.23333611555720235
	.quad	0x3fe3a2dc1a13d95c              # double 0.61363034337299949
	.quad	0x3fc579ababa1488c              # double 0.16777559166309108
	.quad	0x3fe70a4fc370da86              # double 0.72000873729742021
	.quad	0x3fba0445e87b1388              # double 0.10162770200538607
	.quad	0x3fd46fe654465890              # double 0.31932981710395669
	.quad	0x3fd2efefe1fce3b6              # double 0.29589459485174119
	.quad	0x3fdfdd21e26ad9ee              # double 0.49787184821198494
	.quad	0x3fb3767b325dfe68              # double 0.076026630207701396
	.quad	0x3fe68eeef0b44bb9              # double 0.7049479199653127
	.quad	0x3fcea0fb10fc6498              # double 0.23928774194135793
	.quad	0x3fdde6039c441f3c              # double 0.46716394672738537
	.quad	0x3fe18be4dfd6f940              # double 0.54832690924357763
	.quad	0x3fe1ef9aa13d018c              # double 0.56049853793960969
	.quad	0x3fce23a4b89b8ed0              # double 0.23546275152249629
	.quad	0x3fe6cc581aeb8208              # double 0.7124443555622415
	.quad	0x3fc35ecbbc7c1958              # double 0.15133043959958559
	.quad	0x3fd151f0f8de75e6              # double 0.27062629989253961
	.quad	0x3fb6a5ebd60eecf8              # double 0.088469257126167267
	.quad	0x3fd7d78e7f26e140              # double 0.37253153245139359
	.quad	0x3fbc19066fce0198              # double 0.10975685338599417
	.quad	0x3fcc2f15ab56cca8              # double 0.22018690935292295
	.quad	0x3fe657286317cfd4              # double 0.69813937524895175
	.quad	0x3fe7ab0d48ea50ce              # double 0.73963035813587807
	.quad	0x3fe7ec414b79c0b4              # double 0.74758972874953722
	.quad	0x3fb5e38b34c97210              # double 0.085503292453218415
	.quad	0x3fe105e9cebcf9ea              # double 0.53197183970024509
	.quad	0x3fec2df34fe7a680              # double 0.88060918432638857
	.quad	0x3fedd3a4e7e6a274              # double 0.93208546918056223
	.quad	0x3fc3e56c9a828150              # double 0.15543897194312217
	.quad	0x3fbb13fa9c7f70c0              # double 0.10577360459086815
	.quad	0x3fa107ab1b6936d0              # double 0.033261630149906574
	.quad	0x3fe06753a91dcdd7              # double 0.51261313467551417
	.quad	0x3fef814563217146              # double 0.98453015672161182
	.quad	0x3fee403384450deb              # double 0.94533706506666471
	.quad	0x3feb2df5e98d1114              # double 0.84936042418897494
	.quad	0x3fd50d0c04efce9a              # double 0.32892132265190244
	.quad	0x3fe4089619d5435e              # double 0.62604813619155286
	.quad	0x3fbf7f1f4b0a1130              # double 0.12303348142637982
	.quad	0x3fea7aebd18be73c              # double 0.8275050251679441
	.quad	0x3fe2eaf675315a1f              # double 0.59118197335448375
	.quad	0x3fea0bdf17d206ce              # double 0.81394915249276223
	.quad	0x3fe84623274d01ab              # double 0.75856168437899407
	.quad	0x3fe533a96f192770              # double 0.66255637835386771
	.quad	0x3fedb5891ee73dd2              # double 0.92841011081503155
	.quad	0x3fe9e5056a6d9669              # double 0.80920668398603113
	.quad	0x3fe108e6ac75e451              # double 0.53233655627912857
	.quad	0x3fb8d40d5d78d368              # double 0.09698565990477237
	.quad	0x3fe0c5e11a753c62              # double 0.52415518920487281
	.quad	0x3fd3164686b5fb1a              # double 0.29823458819730464
	.quad	0x3fe79bf72c9eef22              # double 0.7377887603283606
	.quad	0x3feffc0687f57cdc              # double 0.99951483301620269
	.quad	0x3fdc4fcb4665a038              # double 0.44237024187760055
	.quad	0x3fe03e83929ac027              # double 0.50763109811487517
	.quad	0x3fe5fafeb6b8e04e              # double 0.68688903510975208
	.quad	0x3feb1a3a63f8d30b              # double 0.84695167089248125
	.quad	0x3fe402de14e976d0              # double 0.62535003742569906
	.quad	0x3fd24a68913a7f58              # double 0.28579153234931232
	.quad	0x3fe639886c6aa83c              # double 0.69452305960772476
	.quad	0x3fe316dadc81d049              # double 0.59653990810193946
	.quad	0x3fd31898fc295788              # double 0.29837631821771327
	.quad	0x3fdaaa7f54d1a6f4              # double 0.41665633471585228
	.quad	0x3fe711be7db55426              # double 0.72091602852254222
	.quad	0x3fd29d91a4480acc              # double 0.29086724322420987
	.quad	0x3f81ee3caf636000              # double 0.0087551823639131499
	.quad	0x3fe43e4d83a2ba80              # double 0.63260532102670197
	.quad	0x3fa863fe6d015aa0              # double 0.047637892538366033
	.quad	0x3fe041c4394ffa33              # double 0.50802813714819306
	.quad	0x3fe3c807c5d4029e              # double 0.61816776884377922
	.quad	0x3fdb939400b87180              # double 0.43088245458945806
	.quad	0x3fe3d7296e4eff1b              # double 0.62001487297672797
	.quad	0x3fee96b4262ef5b4              # double 0.95589644868566958
	.quad	0x3fabd237c5eb91b0              # double 0.054338210020236644
	.quad	0x3fd5d93e77d486fc              # double 0.34138452245871043
	.quad	0x3fd4bb06f40e17ca              # double 0.32391523202420258
	.quad	0x3fc5ccfb255d4060              # double 0.1703180248682683
	.quad	0x3fc3349faa6f5280              # double 0.15004344770445144
	.quad	0x3fc59b7c433a8800              # double 0.16880753786705327
	.quad	0x3fe4a5bab90bb2eb              # double 0.64523063794839908
	.quad	0x3fe672c0f9e051bd              # double 0.70150803379015481
	.quad	0x3fdc8a16421a800a              # double 0.44592815833493715
	.quad	0x3fecbaee29afe06f              # double 0.89781864301677483
	.quad	0x3fea83ecfff6db10              # double 0.8286042212774607
	.quad	0x3fcaa5b64f9b930c              # double 0.20818213355155313
	.quad	0x3fd62a8fd0cbd29c              # double 0.34634776487590968
	.quad	0x3fafc646f32b5d80              # double 0.062059609588398068
	.quad	0x3fd52f3fdc04fb2a              # double 0.33100887762332099
	.quad	0x3fda3606f3ed63f8              # double 0.40954755612398186
	.quad	0x3fe17610d30bdde8              # double 0.54566231937400023
	.quad	0x3fda8cfb1d25bfc6              # double 0.41485479208403964
	.quad	0x3fea3fcf92c72e15              # double 0.82028940837466513
	.quad	0x3fe04f32aeb2b4fe              # double 0.50966772194593069
	.quad	0x3fe7dff6c07a0623              # double 0.74608934014412787
	.quad	0x3fecb0439096bca3              # double 0.89651659240725612
	.quad	0x3fea8d66dab1a020              # double 0.82976095880167477
	.quad	0x3fd9052e3bcb603c              # double 0.39094119872379784
	.quad	0x3fe095560b52d244              # double 0.51822950564980674
	.quad	0x3fd52f4ef733953a              # double 0.33101247921725341
	.quad	0x3fedc32c20f44748              # double 0.93007475315446531
	.quad	0x3fe004364563f044              # double 0.50051415970620683
	.quad	0x3feaaefd1aa4ea3d              # double 0.83386092380471377
	.quad	0x3fed2dec18383b6d              # double 0.91185574274446213
	.quad	0x3fd3c2b501351ece              # double 0.3087589751998906
	.quad	0x3fd3d9a4973eb8e8              # double 0.31015887041111379
	.quad	0x3fe5352fc5be82ca              # double 0.66274250623617914
	.quad	0x3fe8a70bb3ef3d3f              # double 0.77039132255041654
	.quad	0x3feefb712aa6bae1              # double 0.9681936104805936
	.quad	0x3fb80e73b174f510              # double 0.093970518898420118
	.quad	0x3fe6cb434f1a0cc7              # double 0.71231236886560445
	.quad	0x3fef6fee71e9d08a              # double 0.98241350411127937
	.quad	0x3fc1bcf4c280fde4              # double 0.13857898232707477
	.quad	0x3fd0c9e5c1fb6d78              # double 0.26232284492080948
	.quad	0x3fbaf226b5a47840              # double 0.10525743422155731
	.quad	0x3fc96ff544158204              # double 0.19872918915190507
	.quad	0x3fe1a80a612370e5              # double 0.55176276180602868
	.quad	0x3fe10627bffb7173              # double 0.53200137611888321
	.quad	0x3fcf097cf45b2070              # double 0.24247705394214192
	.quad	0x3fac7ec66478e980              # double 0.055654716267286908
	.quad	0x3fd6085fc94e7906              # double 0.34426111849633434
	.quad	0x3fce3cfe390d2234              # double 0.23623636041362917
	.quad	0x3fd4a47fc0b5be6e              # double 0.32254022425966056
	.quad	0x3f59fc3053338400              # double 0.0015860053943514973
	.quad	0x3fc978fae2161340              # double 0.19900451697699317
	.quad	0x3fce0ef8e4dc97f8              # double 0.23483191656958957
	.quad	0x3fb065c813d601a8              # double 0.064053063242687558
	.quad	0x3fa1014006c1afb0              # double 0.033212662529734316
	.quad	0x3fddfecbc4f17f42              # double 0.46867651207684358
	.quad	0x3fde17bda5a0b946              # double 0.47019902395813451
	.quad	0x3fd84cdcf733ea76              # double 0.37969135418794708
	.quad	0x3fd006aa7aea95f6              # double 0.25040685657071948
	.quad	0x3fdd2de67fb6b770              # double 0.45592653724712928
	.quad	0x3fe8c4b3d1804126              # double 0.77401152532732875
	.quad	0x3fd995f7a409b364              # double 0.39977828044248143
	.quad	0x3fdb20968292a10c              # double 0.42386400939223345
	.quad	0x3fd239b1d1d5851e              # double 0.28477139941795027
	.quad	0x3fc916ac332bbf34              # double 0.19600441454485351
	.quad	0x3fe10ec564189062              # double 0.53305310773840753
	.quad	0x3febf836b2256669              # double 0.87404951852950064
	.quad	0x3fe1e74b199faa35              # double 0.5594840527022088
	.quad	0x3fd1a31eab2eb122              # double 0.27558104245214754
	.quad	0x3fe7404fc38b1791              # double 0.72660053436333005
	.quad	0x3fddaded6cdaa7e6              # double 0.46374068861280049
	.quad	0x3fbe03f180afef68              # double 0.11724767104891287
	.quad	0x3fd6bd7a770b0306              # double 0.3553148424653475
	.quad	0x3fb7226ca346e118              # double 0.090369024145619981
	.quad	0x3fd73dbdc18c7fe8              # double 0.36314338589909179
	.quad	0x3fe475807a822818              # double 0.63934348990847223
	.quad	0x3fe9062e7979a164              # double 0.78200458264931826
	.quad	0x3fea45fdcb8642d1              # double 0.82104387045736804
	.quad	0x3fbf7ad14ef15b30              # double 0.12296779801668545
	.quad	0x3fdf1059068d5dac              # double 0.48537278785576166
	.quad	0x3fe27720ff3b763a              # double 0.57704210138371725
	.quad	0x3feff0e5938aeb69              # double 0.99815634552883836
	.quad	0x3fe13aad5a647a37              # double 0.53841273932250189
	.quad	0x3fe475b8ae24dc2d              # double 0.63937028896805759
	.quad	0x3fef7d940e2cb3e2              # double 0.98407938736420086
	.quad	0x3fa8da2d7f214a30              # double 0.048539563912204264
	.quad	0x3fea472fa14893e9              # double 0.82118970394787738
	.quad	0x3fc70d40817081b0              # double 0.18009191818511061
	.quad	0x3f9bab7843940720              # double 0.02702129280533605
	.quad	0x3fdf25c7eb7191a2              # double 0.48668096535245742
	.quad	0x3fe3044e116931ed              # double 0.59427550697870191
	.quad	0x3fec311c36211f3f              # double 0.88099489757676241
	.quad	0x3fe86d48e777f2e0              # double 0.76334042748166197
	.quad	0x3fde29d3fc54eaba              # double 0.47130298272865512
	.quad	0x3fe032394ffc7ddb              # double 0.50613084432910271
	.quad	0x3fd39bbbdd3644f4              # double 0.30638023951276172
	.quad	0x3fe54cca37c2aa1e              # double 0.66562376871781104
	.quad	0x3fe87da286dca915              # double 0.76533628788209518
	.quad	0x3fe1f7aeaa527334              # double 0.56148465410260551
	.quad	0x3fdf47fecd92a2c0              # double 0.48876924586742732
	.quad	0x3fee823d581cd509              # double 0.95339839181420516
	.quad	0x3fbd07b860f4c4c0              # double 0.11339905135243367
	.quad	0x3fe4731ee1eeac0a              # double 0.63905281188397223
	.quad	0x3fef3128464150fa              # double 0.97475064965922731
	.quad	0x3fef795d45478086              # double 0.98356498271097403
	.quad	0x3fc60741f6ad2ab8              # double 0.17209648651836118
	.quad	0x3fb1a6b3d1e6aa58              # double 0.068949927087183283
	.quad	0x3fca5129681e1538              # double 0.20560185989249091
	.quad	0x3fe0ace2e9c4fac1              # double 0.52110429437728822
	.quad	0x3fb18de92cc14430              # double 0.068571637560368215
	.quad	0x3fd86a9e3dbf539c              # double 0.38150745420471721
	.quad	0x3fe841bb3f6a902a              # double 0.75802385698307728
	.quad	0x3fdc63ba142939d2              # double 0.44358684510089319
	.quad	0x3fd622c0453436fc              # double 0.34587103613090142
	.quad	0x3fe7ea390732cf4d              # double 0.74734164625122335
	.quad	0x3fdfe097f76e53c4              # double 0.49808310664348832
	.quad	0x3fe3a61bc69d44e5              # double 0.61402691642629448
	.quad	0x3fe81a958c293554              # double 0.75324513793172309
	.quad	0x3fc75cbc9fa5d6f4              # double 0.18251760287574081
	.quad	0x3fe68985be520147              # double 0.7042874066537842
	.quad	0x3fc8524afd2e9120              # double 0.19001138079068713
	.quad	0x3fe4b46764e33871              # double 0.64702195839505638
	.quad	0x3fee0eccbb1f22bc              # double 0.93930660769645824
	.quad	0x3fd9fa76dfb38b32              # double 0.40591213079294441
	.quad	0x3fea128062043cbd              # double 0.81475848335130474
	.quad	0x3fc35222fcf7ce0c              # double 0.15094411231949356
	.quad	0x3fc0dac34c3bbcc8              # double 0.13167611334163198
	.quad	0x3fee467286e0bff4              # double 0.94609953254075529
	.quad	0x3fee57742d99bcdd              # double 0.94817551523547261
	.quad	0x3fe364c9f18ee231              # double 0.60605332545589452
	.quad	0x3fd45843a636006a              # double 0.31788722259080393
	.quad	0x3fe30128eb4ce09e              # double 0.59389158207979498
	.quad	0x3fdc248e1760ec30              # double 0.43973114283625403
	.quad	0x3fde3d2c9b8d5810              # double 0.47248377981793599
	.quad	0x3fc2894155c2eb68              # double 0.14481369674271183
	.quad	0x3fb5e0166293c640              # double 0.085450553003988183
	.quad	0x3fa699355608b720              # double 0.044137636902048749
	.quad	0x3fe06e9f205aaffe              # double 0.51350361174763726
	.quad	0x3fed3c16a8951abf              # double 0.91358502317674339
	.quad	0x3fb27a136db34870              # double 0.072175230295472792
	.quad	0x3fe5e354bd41b235              # double 0.68400036777672446
	.quad	0x3feb51e73cee55b6              # double 0.85374795818886784
	.quad	0x3f8de5b81f07de80              # double 0.014598310896857258
	.quad	0x3fcca76db7efcd8c              # double 0.22385951501165058
	.quad	0x3fe761c94366a3d9              # double 0.73068679012532833
	.quad	0x3fcd78acbd6d9094              # double 0.23024520158208317
	.quad	0x3fe8c311d6adbbe4              # double 0.77381221703933222
	.quad	0x3fe35ad97f3a6a3c              # double 0.60484003876928893
	.quad	0x3fd1cec9d91fe47a              # double 0.2782463665349223
	.quad	0x3fdeed69956ac7fc              # double 0.48324050513758698
	.quad	0x3fefd076616f41af              # double 0.99419707327074557
	.quad	0x3fc8c5436d41adec              # double 0.19352000078957532
	.quad	0x3fbc155fa378e780              # double 0.1097011350729229
	.quad	0x3fdd3311b3ce1714              # double 0.45624201354108718
	.quad	0x3fe5bf802f36a0a1              # double 0.67962655278553907
	.quad	0x3fe283155a0de675              # double 0.57850139225702313
	.quad	0x3fd208db8ec7950c              # double 0.2817906278927047
	.quad	0x3fdae9658ca4c7aa              # double 0.42049540266736563
	.quad	0x3fd5efa0459c6b90              # double 0.34275061414671715
	.quad	0x3fd3ac6c3b3331ac              # double 0.30739885121581767
	.quad	0x3feeb7a47af85f74              # double 0.95991729753130394
	.quad	0x3fd9bfec080cb8d2              # double 0.40233898912528077
	.quad	0x3fb6d9fbbb24c168              # double 0.089263661565160413
	.quad	0x3fa9609a2d89a790              # double 0.049565141733935225
	.quad	0x3fc3e378c1fd59cc              # double 0.15537938568259191
	.quad	0x3fd24a7d8cb00e5c              # double 0.28579653491053647
	.quad	0x3fd377bfc6c52750              # double 0.30418390666146866
	.quad	0x3fb2f7b18ab59e90              # double 0.074092003216373437
	.quad	0x3fe503bec2b88894              # double 0.65670717269337553
	.quad	0x3fe9284e4b7aeedd              # double 0.78617014639118177
	.quad	0x3fcb773c429c017c              # double 0.2145762753716659
	.quad	0x3fc55d39aa91acbc              # double 0.16690750912252905
	.quad	0x3fa26315c9ad0410              # double 0.035912209385522087
	.quad	0x3fd8211a34e6b6be              # double 0.37702040830741257
	.quad	0x3fea25c12667d2d3              # double 0.81710870266996449
	.quad	0x3fe2c953d099f0a9              # double 0.58707609884688339
	.quad	0x3fdd98e7df412f6c              # double 0.46245762636384913
	.quad	0x3fc5d6e1bc2d08ac              # double 0.17062017143513708
	.quad	0x3fb9fe96a451f9f8              # double 0.10154096137737401
	.quad	0x3fb617b46ab8b8e0              # double 0.086299205832549131
	.quad	0x3fef04ad722d4b8c              # double 0.96932098674948141
	.quad	0x3fe2b54c3c8229c5              # double 0.58463107889229404
	.quad	0x3fa2f2d2f94c3a40              # double 0.037008850986343322
	.quad	0x3fe1ff63e02d567b              # double 0.56242555412855155
	.quad	0x3fd23abb6791eae4              # double 0.2848347197938621
	.quad	0x3feee0b116bfea91              # double 0.96492819255156991
	.quad	0x3fe7e8d54148d39c              # double 0.74717200041651521
	.quad	0x3feed0d9d8c3ffd2              # double 0.9629945024207649
	.quad	0x3fed9b0ecb463194              # double 0.92517795278540626
	.quad	0x3fdf40f9aa23927c              # double 0.4883407746804449
	.quad	0x3fd2dc453420e0ec              # double 0.29469423380534354
	.quad	0x3fea4ca70b6a06e4              # double 0.82185699681596391
	.quad	0x3fed738c0df4fb98              # double 0.92035486913651976
	.quad	0x3fee6c8482ad253d              # double 0.95074677965855126
	.quad	0x3fdcb938096ce424              # double 0.44880486412472664
	.quad	0x3fe2dc628a9f043a              # double 0.58940245699353189
	.quad	0x3fda2e79f1ec793e              # double 0.40908669114459772
	.quad	0x3fbd7cbff29729a0              # double 0.11518478081339945
	.quad	0x3fecb1cb42f6be0f              # double 0.89670336798548245
	.quad	0x3fdd6f90219da40a              # double 0.4599342659262794
	.quad	0x3fdc91229a3fa69e              # double 0.44635834754317638
	.quad	0x3fe358cea8259525              # double 0.60459072915242429
	.quad	0x3fc0b0275e799fc4              # double 0.13037578690568641
	.quad	0x3fdb69ff8159cc4a              # double 0.42834460861121626
	.quad	0x3fd0233e4c423bb0              # double 0.25215108344212478
	.quad	0x3fc5bfe5d7636e48              # double 0.16991875664722245
	.quad	0x3fcd6ece9020888c              # double 0.22994405782180072
	.quad	0x3fd4b224624db900              # double 0.32337293243371334
	.quad	0x3faaae231aadeb10              # double 0.052109810835608283
	.quad	0x3fd94050834a0c62              # double 0.3945504457589718
	.quad	0x3fe325b89d3c1877              # double 0.59835463247215059
	.quad	0x3fd665793ba5005e              # double 0.34994345497762491
	.quad	0x3fc50a1578e2eb28              # double 0.16437023546844753
	.quad	0x3fd8213b47e87e42              # double 0.3770282938221251
	.quad	0x3fdaba39e5f9c34e              # double 0.41761634310301055
	.quad	0x3fe7481fc136e099              # double 0.72755420434170326
	.quad	0x3fd2d27d6952f20c              # double 0.29409728322551199
	.quad	0x3f8df3a180be1240              # double 0.014624845258148444
	.quad	0x3fe64089ac022eb6              # double 0.69537814708151902
	.quad	0x3fe0b2da368ccf79              # double 0.52183256773285713
	.quad	0x3fe7035776c73462              # double 0.71915791701179566
	.quad	0x3fc895fa1fdd87f8              # double 0.19207693630147538
	.quad	0x3fd95772886101c2              # double 0.39596236532454665
	.quad	0x3feccc0bfe5221be              # double 0.89990806266819567
	.quad	0x3fe739dc6b72e6b9              # double 0.72581311212635236
	.quad	0x3fe4c63c87317a12              # double 0.6491987839215787
	.quad	0x3fef8e9b53e85e99              # double 0.98615805042477966
	.quad	0x3fc56de644860030              # double 0.16741636606093513
	.quad	0x3fb1885af240f718              # double 0.068486866134631064
	.quad	0x3fe4550e9ea8d55a              # double 0.63538294780907312
	.quad	0x3fe7a7f92ce50fb4              # double 0.73925455826291975
	.quad	0x3fe22723ef31bbe1              # double 0.56727787702208954
	.quad	0x3fdaf90445b4c762              # double 0.42144877249949364
	.quad	0x3fd906df8f2c405a              # double 0.39104451162075338
	.quad	0x3fd41154688244de              # double 0.3135577221483582
	.quad	0x3fde6451824f5678              # double 0.47487294889047105
	.quad	0x3fe5dfeba0cd7bb9              # double 0.68358403593798933
	.quad	0x3fdbc8ad4f4a6546              # double 0.43412335150931758
	.quad	0x3fc8ef7509f612cc              # double 0.19480765329730898
	.quad	0x3fc5fa6bb8664138              # double 0.17170473579290912
	.quad	0x3fba518f5bdf3300              # double 0.10280700676885246
	.quad	0x3fc8b1a39e366720              # double 0.19292111611576335
	.quad	0x3fc5cc19ab2ecb24              # double 0.17029114588293581
	.quad	0x3fd1460fbba83fd2              # double 0.26990121198559536
	.quad	0x3fefa2e982567322              # double 0.98863673645573535
	.quad	0x3fe612cf39f6fe55              # double 0.68979607888463568
	.quad	0x3fa45de6f144f0f0              # double 0.039778916312998791
	.quad	0x3fc7525c53c49294              # double 0.18220094766833894
	.quad	0x3fdd184ac14503f8              # double 0.45460766672118735
	.quad	0x3fec4d33891a3095              # double 0.88442398813050949
	.quad	0x3fe95b86e5fe8d9c              # double 0.7924227230145564
	.quad	0x3fd777b51128065e              # double 0.36668135333466079
	.quad	0x3fe78b1ad10cac25              # double 0.7357305605886536
	.quad	0x3fecf1444d059c92              # double 0.90445151370376409
	.quad	0x3febadcac828b65e              # double 0.86496485799370837
	.quad	0x3fef7db7cae1deff              # double 0.9840964281601997
	.quad	0x3fee1e48c8d5388e              # double 0.94119681573080682
	.quad	0x3fa2584e9caad340              # double 0.03582997953836875
	.quad	0x3fa9d1264780dbc0              # double 0.050423809269367847
	.quad	0x3fa9a464accc2270              # double 0.050082346051628757
	.quad	0x3fc728dc8fe960ec              # double 0.18093449618277846
	.quad	0x3fad6d95ca3317b0              # double 0.057476693089071218
	.quad	0x3fca42be7caca54c              # double 0.20516186797730496
	.quad	0x3fd01304cc03575e              # double 0.25116081164502713
	.quad	0x3feac9f87df5304a              # double 0.8371546230423601
	.quad	0x3fd12081f3962318              # double 0.26760910785428527
	.quad	0x3fcb2451e6655c80              # double 0.21204589605142488
	.quad	0x3fda51d981e18966              # double 0.41124570544902495
	.quad	0x3fea3721be2ebbcf              # double 0.81922995705633095
	.quad	0x3fc0a322f8103018              # double 0.12997853386366454
	.quad	0x3febe66541313680              # double 0.87187445385798412
	.quad	0x3feb851aba26a382              # double 0.8599980960617446
	.quad	0x3fea45e05ccefe41              # double 0.82102983595536483
	.quad	0x3faa2d79534d40b0              # double 0.051128188532517327
	.quad	0x3fd9552de9dbc452              # double 0.39582393491497669
	.quad	0x3fc6a32b68d80554              # double 0.17685454005553913
	.quad	0x3fea5f4f70d4b793              # double 0.82413455998697527
	.quad	0x3fdd2e9d04032baa              # double 0.45597005264124368
	.quad	0x3fef65db28fefa5e              # double 0.98118360526116155
	.quad	0x3fec3c050c6586ce              # double 0.88232662602623591
	.quad	0x3fd946efc1f31de6              # double 0.39495462360761591
	.quad	0x3fe8da0bf6a189a2              # double 0.77661703271978788
	.quad	0x3f4a72bd72188800              # double 8.0713510778118724E-4
	.quad	0x3fe9b86d828fdd63              # double 0.80376315594086767
	.quad	0x3fe9ae2cad225b8b              # double 0.80251153769755612
	.quad	0x3fb3c9ac682a0820              # double 0.07729604285307845
	.quad	0x3fb98a3db3a7d4a8              # double 0.099765640603282635
	.quad	0x3febbe1ac9891de5              # double 0.86695613253044412
	.quad	0x3fe0f0f177312663              # double 0.52941201476751265
	.quad	0x3fe90e1bea8021af              # double 0.78297229576951632
	.quad	0x3fe11068e0a5e8e2              # double 0.53325313450411849
	.quad	0x3fd59cb8b5b530c6              # double 0.33769052262210797
	.quad	0x3fce10d2a4d056f0              # double 0.23488839194822431
	.quad	0x3fe0ea23a604da09              # double 0.52858145165993264
	.quad	0x3fd9f10b21a38a34              # double 0.40533712658921961
	.quad	0x3fd140e857adf9c4              # double 0.26958664476833527
	.quad	0x3fc504ee8e5f5b4c              # double 0.16421300842076858
	.quad	0x3feb262ffa807c38              # double 0.84841154981757594
	.quad	0x3fa3baad50fd7580              # double 0.038533607613071119
	.quad	0x3feaa33a403c0c68              # double 0.8324252371388754
	.quad	0x3fec79e5f8157fcb              # double 0.88988016561415273
	.quad	0x3fdae5e5f2189818              # double 0.42028187410540019
	.quad	0x3fe72efb5d2c09c1              # double 0.72448509404812722
	.quad	0x3fe00de7594937b7              # double 0.50169722975419162
	.quad	0x3fd68f45b51a7c1c              # double 0.35249464689144516
	.quad	0x3fe679ca49288a9f              # double 0.70236696518653108
	.quad	0x3fdd971f2896c1f0              # double 0.46234873737105797
	.quad	0x3fd40de7a0e35d58              # double 0.31334868156178208
	.quad	0x3fed08411ce3a5ed              # double 0.90725761072570565
	.quad	0x3fe98a6e23a9869d              # double 0.79814822163844534
	.quad	0x3fd0a95fec8858dc              # double 0.26033781145942014
	.quad	0x3f935e4433b43060              # double 0.018914285331490865
	.quad	0x3fdbb727766578ba              # double 0.43305384218355025
	.quad	0x3fa3f7ccbb82cbb0              # double 0.038999936952129999
	.quad	0x3fe0381acf32d8ed              # double 0.50684872120362245
	.quad	0x3fed0e4b2304a557              # double 0.90799481238824853
	.quad	0x3fee4cf19b04b22d              # double 0.94689255024929297
	.quad	0x3fd75e9d402f5c2e              # double 0.36514979618135868
	.quad	0x3fe6a17ee6308732              # double 0.70721383055590636
	.quad	0x3fd18bea0f92593a              # double 0.27416469116851128
	.quad	0x3fe142f8edd9a838              # double 0.53942533927079861
	.quad	0x3fddab2d8a1d0ad8              # double 0.46357286918298035
	.quad	0x3fed8afc2507ffee              # double 0.92321593506494337
	.quad	0x3fc39acb848eac0c              # double 0.1531614682438377
	.quad	0x3fc270d0ae8d0544              # double 0.14406784556380547
	.quad	0x3fcd99db626599d8              # double 0.23125784210715383
	.quad	0x3fd9eaa6b4efccb0              # double 0.40494697255708001
	.quad	0x3fefaa585bd3e6f5              # double 0.9895440858374217
	.quad	0x3fd4eedfd2299bd6              # double 0.32707973025975201
	.quad	0x3fd1ffdd74083684              # double 0.28124176341302864
	.quad	0x3fd4a5398279c554              # double 0.32258451215519313
	.quad	0x3feb674c34ae9cf3              # double 0.85635957993954859
	.quad	0x3fd03c0ca1c313da              # double 0.25366512105057171
	.quad	0x3fe820afb0f0cb46              # double 0.75399002608023902
	.quad	0x3fc09a08074a7158              # double 0.12970066410060599
	.quad	0x3fdbcff4dcfec048              # double 0.43456765729479629
	.quad	0x3fd8cda1ce76e226              # double 0.38755078470743098
	.quad	0x3fee966582e0b6e5              # double 0.9558589512068606
	.quad	0x3fd953b4eb5c8d70              # double 0.39573405251049731
	.quad	0x3feac67d2af5302f              # double 0.83672960653485073
	.quad	0x3fc33efb435be614              # double 0.15035954274189633
	.quad	0x3fdc8747ee7219a4              # double 0.44575689588273293
	.quad	0x3fec8880b144ee3e              # double 0.89166292784597778
	.quad	0x3fd8b6646426d09a              # double 0.38613233356887522
	.quad	0x3fe1eb0c4b7ee2cd              # double 0.55994238610500136
	.quad	0x3fd6a23d48589876              # double 0.3536523062233593
	.quad	0x3feb863b54a295bb              # double 0.86013571291248725
	.quad	0x3fe1cf15b629c792              # double 0.55652890757322582
	.quad	0x3fd938e0c1fc5e0a              # double 0.39409655517508269
	.quad	0x3fe3f51372ef5eaf              # double 0.62366650055169781
	.quad	0x3fd4d8bb18dfd96a              # double 0.3257282011903927
	.quad	0x3fb934936d988df8              # double 0.09845849443131971
	.quad	0x3f960fba9c2cf3a0              # double 0.021544376165582357
	.quad	0x3fd7f6554fa8c4de              # double 0.37440998820518512
	.quad	0x3fd8c220a9be7a56              # double 0.38684860779350083
	.quad	0x3fa11be09b0d4810              # double 0.033415812422973201
	.quad	0x3fe248a0c2d59e55              # double 0.57136571935275049
	.quad	0x3fe3aa7aced3d38b              # double 0.61456051250444099
	.quad	0x3fe8938585822650              # double 0.76800800395830926
	.quad	0x3fc2ff89a4fb893c              # double 0.14842339092053602
	.quad	0x3fd21a5896a3275e              # double 0.28285803518939712
	.quad	0x3fd51c87eb24ff16              # double 0.32986638987857597
	.quad	0x3fe33a167187b7b2              # double 0.60084078000885754
	.quad	0x3fe02e52c057633e              # double 0.50565469328567025
	.quad	0x3fee3662c7577841              # double 0.94413889821931474
	.quad	0x3f6da25cd4d6a300              # double 0.0036174595940859922
	.quad	0x3fcfce4f12344430              # double 0.24848354710459963
	.quad	0x3feb470da4ee6c6d              # double 0.85242349827912067
	.quad	0x3fe5316c1f70665f              # double 0.66228300228540238
	.quad	0x3fed092d057ebee7              # double 0.90737010072004132
	.quad	0x3fe62d224045e41d              # double 0.6930094962436929
	.quad	0x3fd122ac7de07fea              # double 0.26774132054015232
	.quad	0x3fd39cc6cecaac06              # double 0.3064438838434288
	.quad	0x3fe0506c7cb61751              # double 0.50981735570597142
	.quad	0x3fe2add3cee78803              # double 0.5837191620923935
	.quad	0x3fc71640dde6005c              # double 0.18036661944279586
	.quad	0x3fab2e25e24ee650              # double 0.053086456180107988
	.quad	0x3fecadf26e7d5365              # double 0.89623376445761649
	.quad	0x3fe4f97e221c5a6f              # double 0.65545565283066576
	.quad	0x3fce9175cd1823bc              # double 0.23881409181947599
	.quad	0x3fdbdd25107be53c              # double 0.43537260637056696
	.quad	0x3fb14dddabd36578              # double 0.067594389390611798
	.quad	0x3fefdf2ec73cc5c7              # double 0.99599398530534066
	.quad	0x3fd299a3b4b19cfa              # double 0.29062740941886001
	.quad	0x3fb301676b7f89a8              # double 0.074240173096348117
	.quad	0x3fe9e4886831ea64              # double 0.80914707518179485
	.quad	0x3feb3101583064c2              # double 0.84973208641454101
	.quad	0x3fdb59326a87b5d2              # double 0.42731914904910895
	.quad	0x3fcfda2e734197d4              # double 0.24884586932893049
	.quad	0x3fde9d82b1882fc4              # double 0.47836367928607282
	.quad	0x3fb3159adc3035b8              # double 0.074548414952196107
	.quad	0x3fb078c973fee298              # double 0.064343062228440551
	.quad	0x3fd60f3b1f9f1fee              # double 0.34467962348980918
	.quad	0x3fe2a46096280365              # double 0.58256558730509467
	.quad	0x3fe69e8b761e08b4              # double 0.70685360975064393
	.quad	0x3fe80d50e814296e              # double 0.75162549331552753
	.quad	0x3fe9ba9b5b5929f4              # double 0.80402915803398267
	.quad	0x3fd6d6d077d662ea              # double 0.35686122610927262
	.quad	0x3fbd0c40c2825988              # double 0.11346821545371288
	.quad	0x3fd4f99ebebd1ee8              # double 0.32773560168105442
	.quad	0x3fb913028eea6f88              # double 0.097946319476646448
	.quad	0x3fe30d5b86c2b175              # double 0.59538055725492589
	.quad	0x3fd5d736608dbfa6              # double 0.34126052311966715
	.quad	0x3fb1b8e0333260b0              # double 0.069227230548110752
	.quad	0x3fe00d1f3a0f54ae              # double 0.50160180415936906
	.quad	0x3fe5a3418293095c              # double 0.67617869856648438
	.quad	0x3fe7f86ddccad15b              # double 0.74907582400787065
	.quad	0x3fb3a16c9b8d0e58              # double 0.076681888557737721
	.quad	0x3fe9cf97ae9720f8              # double 0.80659088229825127
	.quad	0x3fe3c059c44db601              # double 0.61723030415095093
	.quad	0x3fe61abf2a2721d5              # double 0.69076498253803698
	.quad	0x3fc20e1e3dec9dcc              # double 0.14105585120817776
	.quad	0x3fbfd8d59e0d8d00              # double 0.12440238102640322
	.quad	0x3fd1edef88c0403e              # double 0.28014744143093029
	.quad	0x3fdd86565fdcde68              # double 0.46132430421446324
	.quad	0x3fd256c304e09c46              # double 0.28654551960284314
	.quad	0x3fd062c66065b308              # double 0.25602874196810932
	.quad	0x3fec436180b89863              # double 0.8832252039035321
	.quad	0x3fece952e115f0e6              # double 0.90348190271427309
	.quad	0x3f99f224753f70e0              # double 0.02533776250480535
	.quad	0x3fc05ea23ab9b260              # double 0.12788799159479236
	.quad	0x3fc0dc4e4142303c              # double 0.13172319590046466
	.quad	0x3fe591cd2d8fc488              # double 0.67404803179501105
	.quad	0x3feefced599a7800              # double 0.9683748960558205
	.quad	0x3fa39859edf663f0              # double 0.038271723077919151
	.quad	0x3fd5443b99d7f798              # double 0.33228960059920487
	.quad	0x3fdf03b4f0e941da              # double 0.48460124517899106
	.quad	0x3fe4296d3a1ac08f              # double 0.63005696629081054
	.quad	0x3feb04f2e345fc33              # double 0.84435409917194304
	.quad	0x3fe6e570f74e1322              # double 0.71550796796563909
	.quad	0x3fdefa2167af5c92              # double 0.48401675343979733
	.quad	0x3fe9527285543bd9              # double 0.79131437340572142
	.quad	0x3fc5b22b91f7f264              # double 0.16949982287760001
	.quad	0x3fdd6e0ef380a3aa              # double 0.45984243182698015
	.quad	0x3fe3902cd45965b9              # double 0.61134950136618393
	.quad	0x3f9abaeb35a8cbe0              # double 0.026103663587672687
	.quad	0x3fd61a3889790c3e              # double 0.34535039353449182
	.quad	0x3fe69ec1c5a4b121              # double 0.70687950708591896
	.quad	0x3fec0c0cb37bd5d9              # double 0.87647090011040085
	.quad	0x3fcabce2fd9e3ff8              # double 0.20888936408709902
	.quad	0x3fb4e2cf58c8f198              # double 0.081585845161447401
	.quad	0x3fb06ccfd91446b0              # double 0.064160337922909205
	.quad	0x3feb5fd4c7e38aee              # double 0.85544814148701476
	.quad	0x3fcf282f31293088              # double 0.24341382885393537
	.quad	0x3fedd0d880c88875              # double 0.93174386170382084
	.quad	0x3fd6f827e4834e5a              # double 0.35889622989382064
	.quad	0x3fea4f74abe39468              # double 0.82219918796603242
	.quad	0x3fbbb18f77d70c78              # double 0.10817810703069763
	.quad	0x3fe3a78d53575f07              # double 0.61420313146206318
	.quad	0x3fcaf607ba1a4b88              # double 0.2106332453446067
	.quad	0x3fb0ee012a274e50              # double 0.066131661216155324
	.quad	0x3f70283e17e4ac80              # double 0.0039446282883474071
	.quad	0x3fe0484eabbd8797              # double 0.50882657568967005
	.quad	0x3fd5f4b516957668              # double 0.34306075292065552
	.quad	0x3fef2b0661de73a0              # double 0.97400206675557754
	.quad	0x3fb8541b60ff3de8              # double 0.09503337019054181
	.quad	0x3fed52d818ec1ea0              # double 0.91636280887265186
	.quad	0x3fd5c5d627cf05e0              # double 0.34019998443190325
	.quad	0x3fd2c11fac7498b0              # double 0.29303733674386034
	.quad	0x3feeb908677f0ef3              # double 0.96008701528668749
	.quad	0x3fd9b168a56feaa4              # double 0.40145317226385147
	.quad	0x3fe8d3150ed3eaa7              # double 0.77576687713675063
	.quad	0x3fe7ef12dba0c07a              # double 0.74793379684525907
	.quad	0x3fe152ebfb740d28              # double 0.5413722907254952
	.quad	0x3fe50e2fa58e9833              # double 0.65798170409539691
	.quad	0x3fcf18f4bcf3acc8              # double 0.24294909692921451
	.quad	0x3fe86a0938b209ee              # double 0.76294385026295486
	.quad	0x3fe4849c206b4c28              # double 0.64118772823201642
	.quad	0x3fd179234ccc769e              # double 0.27301867008086755
	.quad	0x3fdfc15408dec436              # double 0.49617482057789475
	.quad	0x3fc1c11349966534              # double 0.13870469182146794
	.quad	0x3fc04394bac3990c              # double 0.12706240767801835
	.quad	0x3fafb11cb12053a0              # double 0.061898132917270532
	.quad	0x3feee5fc82c6c158              # double 0.96557450811637135
	.quad	0x3fd40a2c660901ac              # double 0.31312093700764865
	.quad	0x3fe1a93b92373758              # double 0.5519082885527764
	.quad	0x3fe3852a4d3d62ee              # double 0.61000552259346619
	.quad	0x3fdfce3cbd5164f2              # double 0.4969627236183235
	.quad	0x3feacdb5ef2ba198              # double 0.83761116707778438
	.quad	0x3fefd6566205fa2d              # double 0.9949142374533203
	.quad	0x3fe32536cff47186              # double 0.59829273811514905
	.quad	0x3fe679228975d03c              # double 0.70228697631546977
	.quad	0x3fea4b84ff84c36a              # double 0.82171869188287627
	.quad	0x3fd97fe29cc96806              # double 0.3984304934616606
	.quad	0x3f7da8e31eeeac00              # double 0.0072411415011783831
	.quad	0x3feb45eaa518c9ed              # double 0.85228473897433121
	.quad	0x3fb3f6da99f15320              # double 0.077985441764508057
	.quad	0x3fe391f2ba8a2db9              # double 0.61156593736216458
	.quad	0x3fe515b5517fd470              # double 0.65889993589247631
	.quad	0x3fea1db6ddd5ee16              # double 0.81612723662641673
	.quad	0x3fd861061acf49ce              # double 0.38092186563622199
	.quad	0x3fcfcd9280023c2c              # double 0.24846106768060972
	.quad	0x3fdf1cac167e4000              # double 0.48612501331899693
	.quad	0x3fd2e0e9443c9a92              # double 0.29497749007934104
	.quad	0x3feb82e25eab5207              # double 0.85972708215791804
	.quad	0x3fca4887ba35a524              # double 0.20533844558966863
	.quad	0x3fc59bf8712c01e4              # double 0.16882234121295803
	.quad	0x3fec09300d89fd31              # double 0.87612154621448302
	.quad	0x3fe4cf17f50e6911              # double 0.65027997839504981
	.quad	0x3fe9d36a3113e95c              # double 0.80705747209075751
	.quad	0x3fd7e1d51d913bd0              # double 0.37315872085031021
	.quad	0x3fc1bac0cca5dc34              # double 0.13851175301144425
	.quad	0x3fc5b424b9c2ba0c              # double 0.16956004209846787
	.quad	0x3fc68bac7e6f9aac              # double 0.17613750623350677
	.quad	0x3fe51eb75c6d8c9a              # double 0.65999954273538042
	.quad	0x3fdc9fbe17eacdf0              # double 0.4472499116484121
	.quad	0x3fec1e86ec0984c2              # double 0.87872644520771126
	.quad	0x3fd5dcfd3f3f1e40              # double 0.34161311317845744
	.quad	0x3fd02de8082cbf1c              # double 0.25280190275496905
	.quad	0x3fe5b363092a2e4a              # double 0.67814780988687429
	.quad	0x3fe20073dd3d984a              # double 0.56255524836593307
	.quad	0x3fd580576d4bf8f8              # double 0.33595834420692894
	.quad	0x3fc9c0c2bdda2fd8              # double 0.20119509000903579
	.quad	0x3fad81feea517050              # double 0.057632413962637075
	.quad	0x3fe3a183af832e60              # double 0.61346611289759423
	.quad	0x3fe5bfe5c5cfd8c3              # double 0.67967499385010688
	.quad	0x3fed52f62949a672              # double 0.91637714447024465
	.quad	0x3fe3e5c399065241              # double 0.62179736983905098
	.quad	0x3fe625145b23133e              # double 0.69202630806157805
	.quad	0x3f9677c9396c7260              # double 0.021941322450503953
	.quad	0x3fd4c9a3092f2a42              # double 0.32480693718813225
	.quad	0x3fe7b7310a3ec952              # double 0.74111225129153468
	.quad	0x3f7d13847d3a3500              # double 0.0070986914976292059
	.quad	0x3fe933eab88e5f54              # double 0.78758750959512235
	.quad	0x3fe527efaf43b30f              # double 0.66112503272378997
	.quad	0x3fd6efd3e02eb728              # double 0.35838791745014698
	.quad	0x3fdf285a6982e0d0              # double 0.4868379621871215
	.quad	0x3fc7add6c8b161cc              # double 0.18499264525850234
	.quad	0x3faa4f28235d05e0              # double 0.051385168377702461
	.quad	0x3fbdc8ad87178d48              # double 0.11634335086960335
	.quad	0x3fa74e5537a2e6a0              # double 0.045519507447761898
	.quad	0x3fca157423044514              # double 0.20377971372412473
	.quad	0x3fd94a5ab8787254              # double 0.39516323103615503
	.quad	0x3fe9365e2c0bd4a6              # double 0.78788670161033703
	.quad	0x3fe13ba8feb02d16              # double 0.53853273147379599
	.quad	0x3fbb050de2fbcd80              # double 0.1055458716544333
	.quad	0x3fc36dc597d7a338              # double 0.15178747095276335
	.quad	0x3fedad8293c1e3d1              # double 0.92743042811263809
	.quad	0x3fe59050bdf05b7b              # double 0.67386662576141931
	.quad	0x3fdba5a19fbd67d6              # double 0.43198433494182831
	.quad	0x3febf2bf37a17595              # double 0.87338219514247106
	.quad	0x3fe1fd976a7531e7              # double 0.56220598976647984
	.quad	0x3fdb9faab5413c2c              # double 0.43162028980890699
	.quad	0x3fecd0c1a966cc86              # double 0.90048297010652401
	.quad	0x3fceb8b62800e7d0              # double 0.24001194909379686
	.quad	0x3fe5917b15dd8e3f              # double 0.67400888701053663
	.quad	0x3fe70aa286bef5b2              # double 0.72004820172849393
	.quad	0x3f9a768b35c81e40              # double 0.025842833669257326
	.quad	0x3fe59f3d946c988f              # double 0.67568854321577188
	.quad	0x3fec4485ac1caeea              # double 0.88336452117570485
	.quad	0x3fed6a317d544c77              # double 0.91921305158974931
	.quad	0x3fa50b21e183fb40              # double 0.041100558069948168
	.quad	0x3fe359ff8e115840              # double 0.60473611590965248
	.quad	0x3fdd6af803c8cd2e              # double 0.45965385789459645
	.quad	0x3fd55ebfa266fd10              # double 0.33390799388503556
	.quad	0x3fe992b067b58add              # double 0.79915638213818918
	.quad	0x3fedd5a83bdda3bc              # double 0.93233119671378217
	.quad	0x3fb43d15d6196070              # double 0.079057087679190507
	.quad	0x3feb67fa416075cf              # double 0.85644257325082573
	.quad	0x3fe3ea0ddddd6cdd              # double 0.62232106526371533
	.quad	0x3fd4fa51bb46eb8a              # double 0.32777827538273441
	.quad	0x3fad3e98f6198740              # double 0.057118206063718535
	.quad	0x3fda685be22b6778              # double 0.41261956297750357
	.quad	0x3fe17e45f22d6fa9              # double 0.54666421222963379
	.quad	0x3fd01766a5c7d1aa              # double 0.25142828168398046
	.quad	0x3fdbbd785dc7d6f0              # double 0.43343934210075385
	.quad	0x3fd2c692fe95b76a              # double 0.29337000715064809
	.quad	0x3fc184a6c7e75c34              # double 0.1368607021420033
	.quad	0x3fdaa67a1c6824c0              # double 0.41641094946005452
	.quad	0x3feb4aa627014148              # double 0.8528624307455539
	.quad	0x3fcef018be0ae150              # double 0.24170216826838464
	.quad	0x3faa2b3c349f2840              # double 0.051111108230160074
	.quad	0x3fb019709e37f458              # double 0.062888182284909333
	.quad	0x3fe58849fa7af9d4              # double 0.67288683816860351
	.quad	0x3feed3f78642ab40              # double 0.96337486479510658
	.quad	0x3fc86ba2b2879844              # double 0.19078477589863685
	.quad	0x3fe7ffaa8d2bc627              # double 0.74995925495585858
	.quad	0x3feb4a668d90d822              # double 0.85283210420198352
	.quad	0x3fc064c8b35cab50              # double 0.12807568319234486
	.quad	0x3feb709f8157ee54              # double 0.85749793302916055
	.quad	0x3fe35c0f73eefda1              # double 0.60498783725045169
	.quad	0x3fd45d4b57402d40              # double 0.31819423218322029
	.quad	0x3f86aa0be9c6e100              # double 0.011066525527767102
	.quad	0x3fdb7685bda4bb82              # double 0.42910903472778028
	.quad	0x3fb32f9b9ab366d8              # double 0.074945187824961734
	.quad	0x3fe081b5c9ede775              # double 0.51583375396079012
	.quad	0x3fd92abc735daae4              # double 0.39323340669822771
	.quad	0x3fe5ad2d61761b73              # double 0.67738980327054177
	.quad	0x3fe6d79691dd7139              # double 0.71381691445598172
	.quad	0x3fec36424b299dd7              # double 0.88162340812862794
	.quad	0x3fec9f42149448f2              # double 0.89444068927175935
	.quad	0x3fefc17a929431d0              # double 0.99236801747025005
	.quad	0x3fc21278faf0e64c              # double 0.14118873837451174
	.quad	0x3fe87c53f4b53ed5              # double 0.76517675203828139
	.quad	0x3fe94e06c1e7ef43              # double 0.79077470657600946
	.quad	0x3f1e2019704c4000              # double 1.1491923585205122E-4
	.quad	0x3fd16ae4c4d49c8c              # double 0.27214926931123595
	.quad	0x3fd47318e5c56e6c              # double 0.31952497900576904
	.quad	0x3fd101085d0b8d38              # double 0.26568802915990686
	.quad	0x3fcc1fa816945d1c              # double 0.21971608259693987
	.quad	0x3fdd9af3dad64c32              # double 0.46258255358515321
	.quad	0x3fd76e8b40b3ebf4              # double 0.36612206762919119
	.quad	0x3fe97f838e68e6a8              # double 0.79681566061409104
	.quad	0x3fa1cbbbde38bff0              # double 0.034757490994138496
	.quad	0x3fc5165773b5da68              # double 0.16474431180877791
	.quad	0x3fe96b15360c0c71              # double 0.79432163768832542
	.quad	0x3fecd15ced659630              # double 0.90055700651709536
	.quad	0x3f874d64ec0bb540              # double 0.011378086522621289
	.quad	0x3fef8d23e9f08f66              # double 0.98597903910966234
	.quad	0x3fe71a3975cfc1f6              # double 0.72195122728413597
	.quad	0x3fc79f672077bee0              # double 0.18455208859767591
	.quad	0x3fe499ef037632ce              # double 0.64379072834125295
	.quad	0x3f8391c3622420c0              # double 0.0095553650212568674
	.quad	0x3fbed398131f3648              # double 0.12041616885036277
	.quad	0x3febc3ca03598b47              # double 0.86765003828291121
	.quad	0x3fd080535b85a9f0              # double 0.25783237397868586
	.quad	0x3fd0f978cb585bfe              # double 0.26522655351567426
	.quad	0x3fe409b79f005036              # double 0.62618619017530963
	.quad	0x3fe3cda34ac5e767              # double 0.61885227779496865
	.quad	0x3feac9935c4ca4b9              # double 0.83710639979576407
	.quad	0x3fe703bb9c2d565e              # double 0.71920567038860006
	.quad	0x3fe7da291d85963e              # double 0.74538093343716816
	.quad	0x3fd1c9ba3c3e181c              # double 0.27793746836721467
	.quad	0x3fc6f5053fb5dff4              # double 0.17935243235456222
	.quad	0x3fdb7e64292ed378              # double 0.42958930989998789
	.quad	0x3fdd6cbe883c7134              # double 0.45976222328478689
	.quad	0x3fe60ddaf0bac95c              # double 0.68919131295687519
	.quad	0x3fd708fd88684120              # double 0.35992372818965812
	.quad	0x3fd5291e5dfa6ef6              # double 0.33063468148769404
	.quad	0x3fe14a822bafe597              # double 0.54034527332912574
	.quad	0x3fe7cf670c039a29              # double 0.74406769129274608
	.quad	0x3fd546d23971cefc              # double 0.33244758233853111
	.quad	0x3fc44133f7c5a28c              # double 0.15823983762972593
	.quad	0x3f9ea7758cba4500              # double 0.029935681070644371
	.quad	0x3fee509a822ade3b              # double 0.94733930037813907
	.quad	0x3fd272721fda61fa              # double 0.2882352171959891
	.quad	0x3fd33b8a0ee7c542              # double 0.30050898986435837
	.quad	0x3fd7117705d21380              # double 0.36044097488802862
	.quad	0x3fedad8c18722193              # double 0.92743496679854542
	.quad	0x3fc14b0c5c4556b4              # double 0.13510279183781437
	.quad	0x3fefa5fe82ffab9d              # double 0.98901296220479972
	.quad	0x3fddf2efd295d03a              # double 0.46795268597566386
	.quad	0x3fd3e581de464f7a              # double 0.31088301378735361
	.quad	0x3fd8bbb9bcd30614              # double 0.38645785751222772
	.quad	0x3fd7ed4149c419e4              # double 0.37385589793885132
	.quad	0x3fea431a60059eec              # double 0.82069128755844422
	.quad	0x3fb96c1a77b46480              # double 0.099305776810426849
	.quad	0x3fd31dce660eeb18              # double 0.29869422880772012
	.quad	0x3fe545a1eee57857              # double 0.66475006732413078
	.quad	0x3fb86701766404f8              # double 0.095321742443065349
	.quad	0x3fd9dd00e2759f34              # double 0.4041139804380578
	.quad	0x3febada788a917a9              # double 0.86494805041796952
	.quad	0x3fefa1dcafdb41a5              # double 0.98850855204550625
	.quad	0x3fd665f0ad1ea7c8              # double 0.34997193247056346
	.quad	0x3fcfa972a3424ed0              # double 0.24735863658553692
	.quad	0x3fdd0ee4bed79638              # double 0.45403402935912451
	.quad	0x3fb2b6ec847bc130              # double 0.073103697151741143
	.quad	0x3fd6b960abc35716              # double 0.35506455205664744
	.quad	0x3fdafb877622dbc8              # double 0.42160212074980707
	.quad	0x3fdd5ed10b3a60b2              # double 0.45891214462745744
	.quad	0x3fa660e4ad6f0770              # double 0.043707986994845238
	.quad	0x3f8e142b59d3a4c0              # double 0.014686907461923915
	.quad	0x3fd06cc41b8287fe              # double 0.25663855253708323
	.quad	0x3feb556ee12d7c86              # double 0.85417884807601818
	.quad	0x3feda1124c1e0bcd              # double 0.92591204516099312
	.quad	0x3fe321899c6ffd75              # double 0.59784393839065209
	.quad	0x3fe8b74654924447              # double 0.77237240331499712
	.quad	0x3fe5220fa2b2aa04              # double 0.66040784623083981
	.quad	0x3fe190c9d7414f85              # double 0.54892437021270324
	.quad	0x3fcb40231543bf10              # double 0.21289480722725118
	.quad	0x3fdf6635fe9a2528              # double 0.49061345923890309
	.quad	0x3fedf7142e1a26f4              # double 0.93641098980262293
	.quad	0x3fb5feee26716908              # double 0.085921177278042049
	.quad	0x3fc1efd3076587cc              # double 0.14013135777628205
	.quad	0x3fd309afc10ae6e2              # double 0.2974662194425105
	.quad	0x3fee435354b484a9              # double 0.94571844619726619
	.quad	0x3fedbb894de5ed7f              # double 0.92914262022479466
	.quad	0x3fb307aa44535370              # double 0.074335710221317575
	.quad	0x3fdbb8235d041cbc              # double 0.43311390002822825
	.quad	0x3fd427cbaacba658              # double 0.31492892913101889
	.quad	0x3fc75f8fbefaa0ac              # double 0.18260380578181434
	.quad	0x3fd6474e3ced0d74              # double 0.34810214948466656
	.quad	0x3fd38bed0d64ab4c              # double 0.3054154043954227
	.quad	0x3f938e78ae9dd2e0              # double 0.019098172815079972
	.quad	0x3fdef48d066a7d74              # double 0.48367620111999732
	.quad	0x3fd2c7be2d202240              # double 0.2934413376501972
	.quad	0x3fd93a67641f2ec2              # double 0.39418968942184673
	.quad	0x3fecd269eb16e5f7              # double 0.90068527141482846
	.quad	0x3fef798fd57a2e09              # double 0.98358909315851505
	.quad	0x3fd012c45f8475bc              # double 0.2511454518115348
	.quad	0x3fe8393bedfb5629              # double 0.75698658448044853
	.quad	0x3f9b2e0fb81ec320              # double 0.026542897808840782
	.quad	0x3feb18e3a24adabb              # double 0.84678823182806384
	.quad	0x3fe0dddfe1acb14d              # double 0.52708429410044177
	.quad	0x3fd31efa048b15ba              # double 0.2987656635635535
	.quad	0x3fc9e7bd12064b14              # double 0.20238459949595067
	.quad	0x3fa780995ebff780              # double 0.045903008285661961
	.quad	0x3fc2a408cdb5f6bc              # double 0.14563093227837054
	.quad	0x3fe247205455c0bb              # double 0.57118240806268916
	.quad	0x3fd0fa2531bd3bc8              # double 0.26526765687316045
	.quad	0x3fc0f6f54304c820              # double 0.13253656170269412
	.quad	0x3fef725c68e535e6              # double 0.98271008002637639
	.quad	0x3fe9c3c25307d495              # double 0.80514637200271244
	.quad	0x3fefe0902d8d3614              # double 0.99616249939725998
	.quad	0x3fe7405244f6d363              # double 0.72660172910273635
	.quad	0x3fe848ec3599cffc              # double 0.75890169590866163
	.quad	0x3fee2e8882beb57f              # double 0.9431803277599754
	.quad	0x3fe4ec90d6563065              # double 0.653877657533951
	.quad	0x3fe8243ae83dbd16              # double 0.75442262038805796
	.quad	0x3fde2af1ba9c9000              # double 0.47137110923563341
	.quad	0x3fc79a561ca6b86c              # double 0.18439747237193005
	.quad	0x3fea3642e459868d              # double 0.81912369346191982
	.quad	0x3fd6fded13e7e98c              # double 0.35924841827331799
	.quad	0x3fe7300f885fde84              # double 0.72461678157465359
	.quad	0x3fc104cca7a9db74              # double 0.13295896708197186
	.quad	0x3fea7acfde347317              # double 0.82749169730559202
	.quad	0x3fec738d8de7a208              # double 0.8891055842951241
	.quad	0x3fbd9b298a81ae20              # double 0.11564883834369555
	.quad	0x3fd0b294015a274a              # double 0.26089954502150603
	.quad	0x3fd455dca07d9c38              # double 0.31774058983723164
	.quad	0x3fe692389598aaa7              # double 0.7053492471507824
	.quad	0x3fc0f030eb2ec6b8              # double 0.13233005031138645
	.quad	0x3fe440aba8365e93              # double 0.63289435247402748
	.quad	0x3fe7b4dc73a3faab              # double 0.74082777582210235
	.quad	0x3fd1b1814e7029a2              # double 0.27645905170416019
	.quad	0x3fe20cc09acd0eac              # double 0.56405668482371629
	.quad	0x3fe89fcabc9bd024              # double 0.76950585210443422
	.quad	0x3fd859cbba114c5a              # double 0.38048070116673716
	.quad	0x3fdc49cd4b7f6eec              # double 0.44200451252775852
	.quad	0x3fe92de90d20154d              # double 0.78685429156818432
	.quad	0x3fe64297938cd3b6              # double 0.69562891786937686
	.quad	0x3fbf900ed5ffceb8              # double 0.12329189991560952
	.quad	0x3fce07227a11b240              # double 0.23459273300558614
	.quad	0x3fef6b6fda252442              # double 0.98186485868894402
	.quad	0x3fe798677c838ab0              # double 0.73735403365238561
	.quad	0x3feba3e7282ebfa5              # double 0.86375768516699181
	.quad	0x3fdfe44c341c1e2c              # double 0.49830918396807777
	.quad	0x3fc1bd03aa0b7040              # double 0.13858075907671896
	.quad	0x3fece20dad5ed8cd              # double 0.90259441243576932
	.quad	0x3fe99b412a307ae6              # double 0.80020197143661842
	.quad	0x3fa7459eceb1bc90              # double 0.045453036051975038
	.quad	0x3fcbf0326d6724c4              # double 0.218267730159175
	.quad	0x3fe0b217fbc36365              # double 0.52173995182520783
	.quad	0x3fe7f9e80db0d23f              # double 0.74925615953413416
	.quad	0x3fc372bb9b6e76b0              # double 0.15193886842182769
	.quad	0x3fe42e97a00bea37              # double 0.63068753489580487
	.quad	0x3f800ebae205c040              # double 0.0078405952669698963
	.quad	0x3fbeb605c56ac890              # double 0.11996494359735466
	.quad	0x3fd866abdcb743f6              # double 0.38126656107220869
	.quad	0x3fe4c81e23dd9a61              # double 0.64942843441970066
	.quad	0x3fe1d56da74aa848              # double 0.55730326341768777
	.quad	0x3fc534f0068af3c8              # double 0.16567802733871262
	.quad	0x3fc9450c72978df4              # double 0.1974196967631624
	.quad	0x3fc417f16ee066c0              # double 0.15698068536658205
	.quad	0x3fece07a714f3b8e              # double 0.90240213518869594
	.quad	0x3fc175261545e174              # double 0.13638759649962717
	.quad	0x3fda5f66afa1a6fe              # double 0.41207282210835661
	.quad	0x3fe6c46d7183791a              # double 0.71147796793573836
	.quad	0x3fc1b73e92c964cc              # double 0.13840467612570817
	.quad	0x3fdffed2920a9d5c              # double 0.49992813360082322
	.quad	0x3fe6a941880f743e              # double 0.70816113065996666
	.quad	0x3fe9e16690472d09              # double 0.80876472644141117
	.quad	0x3fb27a1d0addbd48              # double 0.072175803330300714
	.quad	0x3fbfbbfe13572c50              # double 0.12396228763752615
	.quad	0x3fe81e5a730c00dc              # double 0.75370523901076635
	.quad	0x3fea63e6ba119d60              # double 0.82469498006404862
	.quad	0x3feda1492759e50d              # double 0.92593820272227989
	.quad	0x3fd0ed72ced7d4c6              # double 0.26449270438690708
	.quad	0x3fe05c3ee790d990              # double 0.51126046397875946
	.quad	0x3fe78ed56c63d043              # double 0.73618575258161234
	.quad	0x3fd69eb03cfeeb42              # double 0.35343557316416618
	.quad	0x3fe4658b937da147              # double 0.63739565665040565
	.quad	0x3fb91d59f5eca9d8              # double 0.098104116954949361
	.quad	0x3fd3c9e4849905e6              # double 0.30919754933355958
	.quad	0x3fe469fe78d4392c              # double 0.63793872451222944
	.quad	0x3fdec4a68c4a0888              # double 0.48075259876362297
	.quad	0x3fe75126e8e09146              # double 0.72865624889212977
	.quad	0x3fd6d94bdd3ddfea              # double 0.35701271634707032
	.quad	0x3fc07c1dc5e7538c              # double 0.12878772891295076
	.quad	0x3fd58e7149f172b6              # double 0.33681900235186946
	.quad	0x3fe7a1bf92eed289              # double 0.73849466989357027
	.quad	0x3fdd1db7d112bdd2              # double 0.45493884484582481
	.quad	0x3fdd9a64c6305dd0              # double 0.46254844049823607
	.quad	0x3fd36eebad35e8f0              # double 0.30364505686851739
	.quad	0x3fe435b3ec1d8bc8              # double 0.63155552021304917
	.quad	0x3fe16af6e307bb36              # double 0.5443071779426194
	.quad	0x3fe5cfe6235d94c2              # double 0.68162829310735895
	.quad	0x3fe2fb595dd0ad4a              # double 0.59318226168890331
	.quad	0x3fe52a88ca35b9ac              # double 0.66144217962373864
	.quad	0x3fd42e60c3b9726a              # double 0.3153306876536478
	.quad	0x3fe69492fe193845              # double 0.70563649777046378
	.quad	0x3fe4e92b7f8075bd              # double 0.65346312430090558
	.quad	0x3fe225d1b7eb4d80              # double 0.56711660310467948
	.quad	0x3fedd93ffd1c1a07              # double 0.93276977000715611
	.quad	0x3fd71bd0af0ce25c              # double 0.36107270331152619
	.quad	0x3faaa63a75187120              # double 0.052049471658593527
	.quad	0x3feb71f6f1ef2a31              # double 0.85766169789105196
	.quad	0x3fcc625eafa93634              # double 0.2217520101279874
	.quad	0x3fcdaaf9e285ed44              # double 0.23178027687741054
	.quad	0x3fdf3d7242e3ad58              # double 0.48812538654484205
	.quad	0x3fefffdd6afded71              # double 0.99998350998741447
	.quad	0x3fe909ab64310d1b              # double 0.78243035858796206
	.quad	0x3fec9af16c29f2b8              # double 0.89391394735101581
	.quad	0x3fcca1bc20f1beac              # double 0.22368575676545299
	.quad	0x3fd1a386249e512c              # double 0.27560571266191647
	.quad	0x3fd9b2a39ff71150              # double 0.40152826902000971
	.quad	0x3fcad94302925b4c              # double 0.20975530267306863
	.quad	0x3fece6498efe17d0              # double 0.90311124733193004
	.quad	0x3fe2e4b4db43221f              # double 0.59041827034622318
	.quad	0x3fe19660103320a8              # double 0.54960635341651187
	.quad	0x3febf8da3d7f76da              # double 0.87412750254926697
	.quad	0x3fdf6bd108fa7e2a              # double 0.49095559956365042
	.quad	0x3fddc61b3d41a1f0              # double 0.46521645528858269
	.quad	0x3fec503897efdd87              # double 0.88479261088552696
	.quad	0x3f9a4452c6d00f20              # double 0.025651257881704415
	.quad	0x3fcb246106eb3374              # double 0.21204769933538226
	.quad	0x3fbd9db395ef8450              # double 0.1156875840238325
	.quad	0x3fe3a25e7a2ac4e0              # double 0.61357044087176504
	.quad	0x3fd9665ce0209e6a              # double 0.39687272918170058
	.quad	0x3fd6b1211d1063ce              # double 0.35456111753734099
	.quad	0x3fdb3fa38ef90240              # double 0.42575921022583785
	.quad	0x3fabdc14d95c3ae0              # double 0.05441346314738893
	.quad	0x3fc4c56023b6eafc              # double 0.16227342361329267
	.quad	0x3fddfe7bda0d58b6              # double 0.46865745824960514
	.quad	0x3fe50fb8d3e02a0f              # double 0.65816918737374575
	.quad	0x3feaeedb709ba5b9              # double 0.84165737146138675
	.quad	0x3fdb6bcc24971c02              # double 0.42845443318623222
	.quad	0x3fe6f8d3f6514fe0              # double 0.71787450894271032
	.quad	0x3fef01b5f8206311              # double 0.96895884000977805
	.quad	0x3fd5de519d72b8ee              # double 0.34169426322740903
	.quad	0x3fec1b93c9679de4              # double 0.87836636864534201
	.quad	0x3fb59cf0e1e838e0              # double 0.084425978806595747
	.quad	0x3fec673dd36ca4ee              # double 0.88760272306276788
	.quad	0x3fdf3cfe5ea78dc4              # double 0.48809775584797088
	.quad	0x3fc2f547ce996a94              # double 0.14811036670547095
	.quad	0x3fca33922bfcc4d0              # double 0.20469882152386853
	.quad	0x3fed4c6ddab2fcde              # double 0.91557972635919405
	.quad	0x3fd5cc8e91a71d38              # double 0.34061016296296343
	.quad	0x3f90fca6099fe1e0              # double 0.016588777863917659
	.quad	0x3fd1b7174b446726              # double 0.27679998731911082
	.quad	0x3fbef9d04220f178              # double 0.12099935163945996
	.quad	0x3faed57e3d48ef70              # double 0.060222573262278867
	.quad	0x3fe52b4a4e8f19d1              # double 0.66153445571472436
	.quad	0x3fe8feffd4a6d5bb              # double 0.78112784894499698
	.quad	0x3fe477eaaf37d47f              # double 0.63963827345163782
	.quad	0x3fea517662f53909              # double 0.82244414642062325
	.quad	0x3f899b761483a840              # double 0.012503550053640677
	.quad	0x3fdc5752ed7bd6d6              # double 0.44282983009121091
	.quad	0x3fe447ce66c52251              # double 0.63376541206623405
	.quad	0x3feff594afe42dde              # double 0.99872812608503714
	.quad	0x3fed3ae24255b782              # double 0.91343796688100576
	.quad	0x3fe5c3a41542e659              # double 0.68013195183375352
	.quad	0x3fc9869470a2278c              # double 0.19941955089262497
	.quad	0x3fed08af413097d9              # double 0.90731013042818198
	.quad	0x3fdbb26b2d6c4d82              # double 0.43276481090398289
	.quad	0x3fd281a9759b0318              # double 0.28916393742479007
	.quad	0x3f71caa40cbda600              # double 0.0043436439699262586
	.quad	0x3fdeefe6d92e0f36              # double 0.48339244088150524
	.quad	0x3fecd56f97fe6748              # double 0.90105418859750674
	.quad	0x3fd3bc1b5119a2ea              # double 0.3083561222070289
	.quad	0x3fd116afff4a5cf8              # double 0.2670097344466309
	.quad	0x3fdd6ec398ae4f98              # double 0.45988550100559555
	.quad	0x3fe55bda15a0886e              # double 0.6674623892215672
	.quad	0x3fd3486202e29d0c              # double 0.30129289895781208
	.quad	0x3fe52b8e3172623d              # double 0.66156682641582842
	.quad	0x3fe50f979d418b41              # double 0.65815335001057218
	.quad	0x3fd30822fe12002a              # double 0.29737162410310936
	.quad	0x3fa6b8358014dac0              # double 0.044374153027481267
	.quad	0x3fcab9d138b5b0b4              # double 0.20879569310216584
	.quad	0x3fbb5323984e4a48              # double 0.10673735111621696
	.quad	0x3fe78064c87274a6              # double 0.73442305707762467
	.quad	0x3fb099cf0933fd78              # double 0.06484693503079153
	.quad	0x3fe0042f7fb24135              # double 0.50051093044934325
	.quad	0x3fe50d068b87afe9              # double 0.65784003498037891
	.quad	0x3fe3d2f66b2ede7a              # double 0.61950226720996615
	.quad	0x3fde5c921e5ec8da              # double 0.47440007177205035
	.quad	0x3fe1120f0df25839              # double 0.53345444416004917
	.quad	0x3fe9a52555a5c920              # double 0.80140940406844052
	.quad	0x3fe7a2f91c0c1019              # double 0.73864417531922577
	.quad	0x3fec0876676d6ea2              # double 0.87603302193334209
	.quad	0x3fc8642f1f360f94              # double 0.19055737518294491
	.quad	0x3fe94b8e34eb64da              # double 0.79047308288422902
	.quad	0x3fe8efbcc1bd2355              # double 0.77926481093991617
	.quad	0x3fc78867ae4c8a14              # double 0.18385025034611202
	.quad	0x3fee9312b99e81ab              # double 0.95545326474898695
	.quad	0x3fe210ed62576fed              # double 0.5645663185819082
	.quad	0x3fcc628a5f9924f8              # double 0.22175721805459836
	.quad	0x3fd65e957e0410bc              # double 0.34952294641722026
	.quad	0x3fc5aae80dbce0ec              # double 0.16927815123359069
	.quad	0x3fe9dee9af520ed3              # double 0.8084610389928123
	.quad	0x3fdc8a83a9ff4374              # double 0.44595424271852058
	.quad	0x3fd4af8c3a56f218              # double 0.32321458527784008
	.quad	0x3fbf99728850a310              # double 0.12343517139437332
	.quad	0x3fe98135cefb2366              # double 0.79702272821405695
	.quad	0x3fd8fa6b7b1becc4              # double 0.39028441450473061
	.quad	0x3fd1b59f4e9a202c              # double 0.27671034503919389
	.quad	0x3fd9392ac2e22764              # double 0.39411419898589473
	.quad	0x3fc400de2d07fca4              # double 0.15627648543156625
	.quad	0x3fdbb816fcad3922              # double 0.43311094928221128
	.quad	0x3fe17cdb6e49486d              # double 0.54649135151181627
	.quad	0x3fc312d8c151b270              # double 0.14901265563402744
	.quad	0x3fdfb6629f9c300a              # double 0.49550691210674869
	.quad	0x3fe2d9bbef505cdb              # double 0.58907887211799037
	.quad	0x3fe33c451497c7c9              # double 0.60110715887116684
	.quad	0x3fd8c1d8d26ce496              # double 0.38683147954322672
	.quad	0x3fb7db7c360dd4e0              # double 0.093192828366074121
	.quad	0x3fea3e91af47ff85              # double 0.82013782724969586
	.quad	0x3fe6d8a5dacd6a83              # double 0.7139462731823446
	.quad	0x3fef3f44624e75e5              # double 0.97647303772435789
	.quad	0x3feb553156182d53              # double 0.85414950194664596
	.quad	0x3fc64dfbc74552d0              # double 0.17425486783999711
	.quad	0x3fe09da5bf7e8468              # double 0.51924407387936089
	.quad	0x3fe6559fd157cf9e              # double 0.69795218360239963
	.quad	0x3fce2c23d6eed2d8              # double 0.23572204584856737
	.quad	0x3fe447b6bacc93ed              # double 0.63375412449079038
	.quad	0x3fe7ee124c20a82f              # double 0.74781145924248971
	.quad	0x3fcc1dcb9a6854a8              # double 0.21965928115301847
	.quad	0x3fdabaed17da2b64              # double 0.41765906647986228
	.quad	0x3fd7274dbfe6cb9a              # double 0.36177390804658105
	.quad	0x3fdeb48052c4f1e8              # double 0.47976692278805766
	.quad	0x3fea942db5eb6027              # double 0.830588202773474
	.quad	0x3fbcfb6804455520              # double 0.11321115593212427
	.quad	0x3fc0d78e57f18f80              # double 0.13157824796791928
	.quad	0x3fe03114ea604702              # double 0.50599141861513908
	.quad	0x3feacae8175503b6              # double 0.83726887280510343
	.quad	0x3feeb8be272d9703              # double 0.96005160953492951
	.quad	0x3fe0740f7254b7ee              # double 0.51416752176532809
	.quad	0x3fdd488999752316              # double 0.45755233751383295
	.quad	0x3f9fe70b287aec60              # double 0.031154798837388475
	.quad	0x3fa891417253af60              # double 0.047983212667388697
	.quad	0x3fe9d93425f264c4              # double 0.80776412402624275
	.quad	0x3febebd232fe3a94              # double 0.87253675422273824
	.quad	0x3f910e3c33702600              # double 0.01665586532548069
	.quad	0x3fcdf57064c01664              # double 0.23405270499658848
	.quad	0x3fe90bbc11ae39d8              # double 0.78268245175587037
	.quad	0x3fb41982a6c60ad0              # double 0.078514257160388511
	.quad	0x3fed60d2b7f367be              # double 0.9180692284382912
	.quad	0x3fd8a8560f82d8e0              # double 0.38527442469366058
	.quad	0x3fe5779399f856e7              # double 0.67084674904137109
	.quad	0x3fe7dcff7db1e30e              # double 0.74572729635028323
	.quad	0x3fe37cdc7f4e47ab              # double 0.60899186005030026
	.quad	0x3fe0bea26bd40eb9              # double 0.52327080784058133
	.quad	0x3fdbd39f6f0ecac0              # double 0.43479142995344588
	.quad	0x3fd47f0d4f77c97c              # double 0.32025463829554446
	.quad	0x3fe8cfe702582c7f              # double 0.77537870843788415
	.quad	0x3fe4eae8e759d2ea              # double 0.65367551027028736
	.quad	0x3fd8c280db371f32              # double 0.38687154205080099
	.quad	0x3fe69c06ad1b50ed              # double 0.70654615220931094
	.quad	0x3fde3226a807cbc6              # double 0.47181097420906004
	.quad	0x3fee224f8055b336              # double 0.94168829980262703
	.quad	0x3fe8b0e81a03c01a              # double 0.77159504967676473
	.quad	0x3feb934430ee151a              # double 0.86172685200350263
	.quad	0x3fd7962d2ba74d42              # double 0.36854104292907064
	.quad	0x3fe0b64ef55844e5              # double 0.52225444716364378
	.quad	0x3fd69708abe7164a              # double 0.35296837603923292
	.quad	0x3fd23f0f5b337060              # double 0.28509887605992468
	.quad	0x3fe37c835e0abf63              # double 0.60894935958456775
	.quad	0x3fe46cc62c0a163c              # double 0.6382780895371023
	.quad	0x3fd14c0f05f8f9c2              # double 0.27026725371606741
	.quad	0x3fee1c908e7229da              # double 0.9409868986270411
	.quad	0x3fd68147d3e1c23c              # double 0.35164066020573492
	.quad	0x3fdb9f9cd47c7b22              # double 0.43161698103533486
	.quad	0x3fd5dafbfcf4d444              # double 0.3414907427098266
	.quad	0x3fdf18658c1fba46              # double 0.48586405452707415
	.quad	0x3fdcda31b25a1f36              # double 0.45081751267615588
	.quad	0x3fdf96a10bb9d246              # double 0.49356866974929792
	.quad	0x3fe9e926065d00a8              # double 0.80971051447706532
	.quad	0x3fc02d00dc6ff2f4              # double 0.12637339366474232
	.quad	0x3fe78e879e261e3b              # double 0.73614865196663659
	.quad	0x3feb99625ee3c47f              # double 0.86247366459987507
	.quad	0x3fbd6e84ddd20950              # double 0.11496763625658457
	.quad	0x3fe1314effad3909              # double 0.5372691148457146
	.quad	0x3fde59baae901cc4              # double 0.47422663733636861
	.quad	0x3fe049310a883c09              # double 0.50893451745093998
	.quad	0x3fc0b350f40dc1b8              # double 0.13047229687391648
	.quad	0x3fe8fe656826acd4              # double 0.78105421392447249
	.quad	0x3fe3be94583f2605              # double 0.6170140956466531
	.quad	0x3fe3ba303b378b22              # double 0.61647807660878962
	.quad	0x3fda5833942f0e48              # double 0.41163339110446318
	.quad	0x3fe6416d36713870              # double 0.69548664696936946
	.quad	0x3fefc9ec952ec6e8              # double 0.99339894425631047
	.quad	0x3fe9c7aa67c1d89b              # double 0.80562324776726102
	.quad	0x3fe95d84de115e66              # double 0.79266589520098019
	.quad	0x3fb36d81d5783e60              # double 0.075889696709276588
	.quad	0x3f9786139cbffda0              # double 0.022972399179705172
	.quad	0x3fc4be2742f89274              # double 0.16205302019183743
	.quad	0x3fdfd58ad2e46a96              # double 0.49740858645388053
	.quad	0x3fc2de7728335e84              # double 0.14741410696909807
	.quad	0x3fde9b21ad495c5c              # double 0.47821847841755072
	.quad	0x3fefae82fac2e036              # double 0.99005269028476195
	.quad	0x3feae1935a007dd4              # double 0.84003608301639554
	.quad	0x3fc659b73f5e545c              # double 0.17461290926135831
	.quad	0x3fd797536d61a776              # double 0.36861119920523977
	.quad	0x3fdb350f009ee1e2              # double 0.42511344013794716
	.quad	0x3feca34bbbea3fc8              # double 0.89493357374339499
	.quad	0x3fee61452b17d06c              # double 0.94937380234342816
	.quad	0x3fc336a8de7be410              # double 0.15010557998155649
	.quad	0x3fa3bfdf012c11c0              # double 0.038573235409816942
	.quad	0x3fde10640f09de8e              # double 0.46975041836365328
	.quad	0x3fe62d8eb42ca824              # double 0.69306121054001268
	.quad	0x3fda97fc701615f6              # double 0.41552649446415957
	.quad	0x3fee3a98e48b3981              # double 0.94465298306913337
	.quad	0x3fe6efcbf5bba596              # double 0.71677206034398711
	.quad	0x3fd9ba9820d861e6              # double 0.40201380927604047
	.quad	0x3fcd048d5025242c              # double 0.22670141614278927
	.quad	0x3fe4fd1890aa44dd              # double 0.65589550261406837
	.quad	0x3fcee0918bf89cc4              # double 0.24122828802612706
	.quad	0x3feca3466abd6aa1              # double 0.8949310383571466
	.quad	0x3fe9d8eec7864ee5              # double 0.80773104638725768
	.quad	0x3feba79da678dfec              # double 0.86421091569991181
	.quad	0x3fe8632c6c633768              # double 0.7621061436600316
	.quad	0x3fe672f0365f7575              # double 0.70153055782036111
	.quad	0x3febd5cf93a898d3              # double 0.86984995688978939
	.quad	0x3fe79aba40a69b9b              # double 0.73763764025794687
	.quad	0x3fe8773f1f8e18bf              # double 0.76455646670435573
	.quad	0x3fb7ad5bcdb30c68              # double 0.092488992423612637
	.quad	0x3feac2dc8e8f1c4b              # double 0.83628681033668195
	.quad	0x3fe9c982ff84b27b              # double 0.80584859758307859
	.quad	0x3fdee5367a642c8e              # double 0.48274003937030663
	.quad	0x3fd2de15ca7280e8              # double 0.29480500002138266
	.quad	0x3fbd8841884a59e0              # double 0.11536035134699985
	.quad	0x3fe04f57e67580c6              # double 0.509685468783595
	.quad	0x3fe35bed9ba1dcca              # double 0.60497169873169665
	.quad	0x3fd20aa14c7dc93c              # double 0.28189880819185809
	.quad	0x3fe738eeb8cbeb53              # double 0.72569976895406751
	.quad	0x3fea117f46888e4c              # double 0.81463588501032679
	.quad	0x3fc2305555069790              # double 0.14210001613281209
	.quad	0x3fe35fb3f2431e5d              # double 0.60543248478729661
	.quad	0x3fed6fa9cc9c0878              # double 0.91988077128213686
	.quad	0x3fccbcdc1f5355d8              # double 0.22451354531828716
	.quad	0x3fd308d97895414c              # double 0.29741513038336076
	.quad	0x3feb1a6978487504              # double 0.84697412007122396
	.quad	0x3fee75588355655e              # double 0.95182443286027385
	.quad	0x3fec5cabad9f6aa9              # double 0.88631233130157228
	.quad	0x3fce0ebbfcaa706c              # double 0.2348246558875674
	.quad	0x3fd9518e6c21a0f8              # double 0.39560280379966128
	.quad	0x3fb9f0c2a12874b0              # double 0.1013299601986144
	.quad	0x3fe275f095782e47              # double 0.57689694588902618
	.quad	0x3fcfc003b49cf6c4              # double 0.24804731673241609
	.quad	0x3fe5f5933489bd2e              # double 0.68622741948448662
	.quad	0x3fe207baa0793a20              # double 0.56344348280419254
	.quad	0x3fa4e0cfb80450e0              # double 0.040777674878116121
	.quad	0x3fd786fb5504d73a              # double 0.3676136331808838
	.quad	0x3fe30c51e8ed8316              # double 0.59525390142161672
	.quad	0x3fd7c31fe4ed8f8e              # double 0.37128445965049017
	.quad	0x3fcd09961ef55fa0              # double 0.2268550540127281
	.quad	0x3fea3ddcc242e9a3              # double 0.8200515550773172
	.quad	0x3fd7f482dd1a0f88              # double 0.37429877845738035
	.quad	0x3fd91c0899383e46              # double 0.3923360344205985
	.quad	0x3fed569b4c8ce5c2              # double 0.916822099220717
	.quad	0x3fc8961df530750c              # double 0.19208120796330552
	.quad	0x3fec986e2c3fbecc              # double 0.89360722200759701
	.quad	0x3fdc3b755794332a              # double 0.44112905075671682
	.quad	0x3fe96e0ffdcfe928              # double 0.79468535969434573
	.quad	0x3fd3b672dad9313a              # double 0.3080107819739798
	.quad	0x3feba21fe9883b07              # double 0.86354060756443196
	.quad	0x3fd52003862d86f2              # double 0.33007896521858904
	.quad	0x3fdbfa3b715915ea              # double 0.43714796132220946
	.quad	0x3fd7a046670c025c              # double 0.36915741027045157
	.quad	0x3fd20168ae2d4626              # double 0.28133599290331046
	.quad	0x3fef60691628568d              # double 0.98051885917330283
	.quad	0x3fe2ff673be1dcf5              # double 0.59367715545422917
	.quad	0x3fd2f3e22c3fbb28              # double 0.29613546677767255
	.quad	0x3fe0e390e2442d39              # double 0.5277790469421354
	.quad	0x3fe9347c74d304ad              # double 0.78765700165981445
	.quad	0x3fe2bf1e40e5eda0              # double 0.58582985568448365
	.quad	0x3fe8858ff7fab26a              # double 0.76630400117353514
	.quad	0x3fd7587fd525ff06              # double 0.36477657141948361
	.quad	0x3fdfc99505e7daba              # double 0.4966785962746304
	.quad	0x3fdf8d7644218572              # double 0.49300915387546873
	.quad	0x3fd025da90a5e952              # double 0.25231041074552707
	.quad	0x3fe7451b169135d0              # double 0.72718576820050806
	.quad	0x3f87f62d42278fc0              # double 0.011700013715149171
	.quad	0x3fc7941250e58b64              # double 0.1842062850001539
	.quad	0x3fe4e33a6d15b7e7              # double 0.65273782067901898
	.quad	0x3fed28a47bc950af              # double 0.91121124436405931
	.quad	0x3fe0665b8e3a966e              # double 0.51249482897828869
	.quad	0x3fb6dc611a66b9e8              # double 0.089300221391318879
	.quad	0x3fe9b31632302355              # double 0.80311116983748809
	.quad	0x3fe974a50de4c25d              # double 0.79548886025993293
	.quad	0x3fe29bac016d7e44              # double 0.58150291708802415
	.quad	0x3fe0d700226e819f              # double 0.52624518132147446
	.quad	0x3fd2b4282d3c5e94              # double 0.29224590699730268
	.quad	0x3fc2c56b3318f4d8              # double 0.14664974207872805
	.quad	0x3fe28450de567791              # double 0.57865184235901002
	.quad	0x3fd71bbcf18fcd28              # double 0.36106799688350799
	.quad	0x3fc7edb4b1e8601c              # double 0.18694170653248043
	.quad	0x3fdb9e0b45ded418              # double 0.43152124236377309
	.quad	0x3fd05ae8462977d6              # double 0.25554854251629189
	.quad	0x3fd91b4f56f9919c              # double 0.3922918652881664
	.quad	0x3fc739db54957a4c              # double 0.18145314817498315
	.quad	0x3fdbccac54c7da74              # double 0.43436725882876392
	.quad	0x3fe9443693f04f69              # double 0.78957680601386671
	.quad	0x3fe9d63dacf2d99a              # double 0.80740245608358241
	.quad	0x3fe325e44b69fbf3              # double 0.59837546090409288
	.quad	0x3fd79275de64aa4e              # double 0.3683142349060845
	.quad	0x3fd2e95681e8b988              # double 0.2954918163913125
	.quad	0x3fef759937afdf0d              # double 0.98310528637282035
	.quad	0x3fb65ff26efd9360              # double 0.087401535126969687
	.quad	0x3fabf82138388fa0              # double 0.054627454865367797
	.quad	0x3fd56b5a63666bd4              # double 0.3346773119644102
	.quad	0x3fdf84fd8d9b2ec0              # double 0.49249209240654679
	.quad	0x3fe2c6cb80797929              # double 0.58676695912052879
	.quad	0x3fe884a340a41636              # double 0.76619112610996498
	.quad	0x3feaa9674ebdc1a7              # double 0.83317914370677648
	.quad	0x3fea58c185f801df              # double 0.82333446660782872
	.quad	0x3fdf33ef9e51e398              # double 0.48754492245603265
	.quad	0x3fe895329e62fcaa              # double 0.76821261343856873
	.quad	0x3fefe60d5778600d              # double 0.99683253368402946
	.quad	0x3feaead81946f7c9              # double 0.84116749703366012
	.quad	0x3f9693ce87836e20              # double 0.022048213025170793
	.quad	0x3fdda8632145a9ba              # double 0.46340254067640851
	.quad	0x3fd048c943f0edfa              # double 0.25444251665950868
	.quad	0x3fe6bd5ebed52b6f              # double 0.71061646720896288
	.quad	0x3fc938086997bb24              # double 0.19702248721974869
	.quad	0x3fbaedf6a1ad1d88              # double 0.10519353339360837
	.quad	0x3fbadc00f7426d08              # double 0.10491949116333299
	.quad	0x3f680ab8c3974300              # double 0.0029348000214003411
	.quad	0x3fe1bb53cffa1297              # double 0.55411711330869451
	.quad	0x3fc1692cdadfd728              # double 0.13602219283318928
	.quad	0x3fa0fc62d9084e80              # double 0.033175553315371253
	.quad	0x3fd45c71bd4669ea              # double 0.31814235195056872
	.quad	0x3fefa083e09faff9              # double 0.98834413406211674
	.quad	0x3fef52dbe81b3488              # double 0.97886462529426498
	.quad	0x3fe9fafcbf91fee8              # double 0.81188809791634942
	.quad	0x3fe177b79b018116              # double 0.5458639171083941
	.quad	0x3fe894a90546ab3d              # double 0.76814700155714599
	.quad	0x3fd3d215092fcfba              # double 0.30969739815850128
	.quad	0x3feebeb16b88fff6              # double 0.960777959851838
	.quad	0x3fe00780388fd545              # double 0.50091563269840178
	.quad	0x3fefa51bf7a5fd9b              # double 0.98890493744686425
	.quad	0x3fd3cdb275c09612              # double 0.30942975520369587
	.quad	0x3fcd5e9dd03cef00              # double 0.22944996517059479
	.quad	0x3fedb52ea37face1              # double 0.9283669656118968
	.quad	0x3fd627c279165256              # double 0.34617673706933283
	.quad	0x3fd4b69f3e9fb46c              # double 0.32364636531457935
	.quad	0x3feba5ddb16e805f              # double 0.86399731306665817
	.quad	0x3fb5663bd0adac50              # double 0.083591211745145388
	.quad	0x3f6b99f276620200              # double 0.0033693061441797401
	.quad	0x3fe647d8b27397b4              # double 0.69627032140555523
	.quad	0x3fe963a58be79ace              # double 0.79341389966142528
	.quad	0x3fedb7fa58d2979b              # double 0.9287082419220839
	.quad	0x3fead48709858184              # double 0.83844329700154718
	.quad	0x3fedd3b1257015ab              # double 0.93209130584789557
	.quad	0x3fb72ada23502920              # double 0.090497621175164245
	.quad	0x3fd8ba0baf561de8              # double 0.38635532496161185
	.quad	0x3fef9735abd27db7              # double 0.98720820960072941
	.quad	0x3fe2f2cce503a7dc              # double 0.59213871697761133
	.quad	0x3fee798a5fc9b5ae              # double 0.95233648975925234
	.quad	0x3fef2d040a186556              # double 0.97424509021508743
	.quad	0x3fa757f6574d1920              # double 0.045592973858719299
	.quad	0x3fdbc0b7da7fe444              # double 0.43363758409356401
	.quad	0x3fe9a3a360a24fd9              # double 0.80122536538919598
	.quad	0x3fe94f56b1db20a0              # double 0.79093489396565885
	.quad	0x3fec7b2db8ead8a5              # double 0.89003645054505809
	.quad	0x3fde7ef5f6e70738              # double 0.47649907218520893
	.quad	0x3fa294a65e097330              # double 0.036290358523478949
	.quad	0x3fe6b3cd23004f2c              # double 0.70944840274976206
	.quad	0x3fdcc0db4a12d0a2              # double 0.44927103265514223
	.quad	0x3fdba1cdc108f4d2              # double 0.43175071574280566
	.quad	0x3feddfda793f465e              # double 0.93357585602843662
	.quad	0x3fe9fd397bfe6de2              # double 0.81216119973708722
	.quad	0x3fdb9dad710317ac              # double 0.43149887119613584
	.quad	0x3fe7d04e6c74a16b              # double 0.74417802031261482
	.quad	0x3fef4af1cba1ac08              # double 0.97789850017341084
	.quad	0x3fbacc1de8ef7278              # double 0.10467707573793372
	.quad	0x3fcfdf8734f9f51c              # double 0.24900903784502126
	.quad	0x3fc55f6ba3da7524              # double 0.16697450161601879
	.quad	0x3fee60d625ba3686              # double 0.94932086342460376
	.quad	0x3fa5e2d285803e60              # double 0.04274614219332018
	.quad	0x3fec56953d628b1c              # double 0.88556920994992394
	.quad	0x3fe4a160ad169281              # double 0.64469941908153328
	.quad	0x3fe30360675d4133              # double 0.594162179835655
	.quad	0x3fe1a423007067e7              # double 0.55128622136839744
	.quad	0x3fe6cc622b865db4              # double 0.71244915486288685
	.quad	0x3fbbc7f7ec0bff78              # double 0.10852002632964097
	.quad	0x3fd9e20a11078168              # double 0.40442134535807961
	.quad	0x3fa2bb8f521b9080              # double 0.036587218068036442
	.quad	0x3fe98ad154e37895              # double 0.79819552020832651
	.quad	0x3fc721b0ae773ec4              # double 0.18071564215505564
	.quad	0x3fdada24b2d6ff4a              # double 0.41956441368892128
	.quad	0x3feacd5f34d0d90c              # double 0.83756981196964508
	.quad	0x3fd5034a861ad3d4              # double 0.32832587333842622
	.quad	0x3fddbffd81476d28              # double 0.46484315514472252
	.quad	0x3fdc6b066c6689fc              # double 0.44403229318609738
	.quad	0x3fe53269e5b7dbf7              # double 0.66240401141010252
	.quad	0x3fd8c0db12b889ce              # double 0.38677098110397601
	.quad	0x3fe07b48a40b7049              # double 0.51504928626992197
	.quad	0x3fc416a58f0a3d1c              # double 0.15694112285971407
	.quad	0x3feed5d944d5b13f              # double 0.96360457844051683
	.quad	0x3fec39af79af401b              # double 0.88204168097036317
	.quad	0x3fe4c761834bc2ec              # double 0.64933848994959709
	.quad	0x3fe767c5c8321d51              # double 0.73141755200132696
	.quad	0x3fe703c774388b73              # double 0.71921131801023674
	.quad	0x3fcd50f776aefad8              # double 0.22903340621083745
	.quad	0x3fdcfbc2372c3f30              # double 0.45286612880680632
	.quad	0x3fd4b35a932c6fe8              # double 0.32344688770694896
	.quad	0x3fe75bb1aec6b3d8              # double 0.72994312416050899
	.quad	0x3fe60def91ebd11a              # double 0.68920114994265025
	.quad	0x3fedcbb89f91ae9a              # double 0.93111830869516443
	.quad	0x3fe2ed19d480d992              # double 0.59144298080973301
	.quad	0x3fe21a1d1afefe78              # double 0.56568770668668744
	.quad	0x3fe8caa9fbd8c3af              # double 0.77473925770583729
	.quad	0x3fd33f15a2ad1a76              # double 0.30072537313791459
	.quad	0x3fea50bbca9810d7              # double 0.8223551709093283
	.quad	0x3fdd0d35fbe356b6              # double 0.45393132780496204
	.quad	0x3fb499140e659e10              # double 0.080460790171507534
	.quad	0x3fbac3fa66840fb8              # double 0.10455288889721615
	.quad	0x3fe6b88455da9b8f              # double 0.7100240399203005
	.quad	0x3fd7b4def460fc58              # double 0.37041448464510074
	.quad	0x3fedf04731e80883              # double 0.93558082339610882
	.quad	0x3fe087b2d4def3df              # double 0.51656476570462562
	.quad	0x3fdf7b0764fc4c7e              # double 0.49188408719891885
	.quad	0x3fec3bc8b62e66ce              # double 0.88229785520817372
	.quad	0x3fe0948d3513186e              # double 0.51813373914843708
	.quad	0x3fdc092b1068f530              # double 0.43805958368814668
	.quad	0x3fe9db2fecf5df37              # double 0.80800625115714453
	.quad	0x3fdf46d90be0a7cc              # double 0.48869920883100515
	.quad	0x3fd8c9b44bad86c0              # double 0.38731105223096662
	.quad	0x3fe6a9e074f6d3f2              # double 0.70823691219868423
	.quad	0x3fe303cbba831dce              # double 0.59421335628661054
	.quad	0x3fed647bbb70e502              # double 0.91851603135651794
	.quad	0x3fef4dd7d482127c              # double 0.97825232987868515
	.quad	0x3fc8eefa50e8b91c              # double 0.1947930235923615
	.quad	0x3fd32e3c1c0be366              # double 0.29969694842252748
	.quad	0x3fd0f7e6b1c87c2e              # double 0.26513068544039953
	.quad	0x3fe7a28aa4ff4cc3              # double 0.7385915014841874
	.quad	0x3fe1d5158cd96100              # double 0.55726125249478287
	.quad	0x3fe1b557fcb86cd6              # double 0.55338668212371078
	.quad	0x3fe06014c207df8c              # double 0.5117286481536083
	.quad	0x3fe6354522442c98              # double 0.69400269215238364
	.quad	0x3fe9b7cdcc93a4e7              # double 0.80368699985879466
	.quad	0x3fd05ec2301b8d56              # double 0.25578360269556322
	.quad	0x3fe8cc0f1de20d1d              # double 0.7749095519688215
	.quad	0x3fef7f86fb3c6c7b              # double 0.98431729383027233
	.quad	0x3fe262c7200cb409              # double 0.5745578409165556
	.quad	0x3fdb75d9319c477c              # double 0.42906789631626174
	.quad	0x3fb0d003d159ca18              # double 0.06567405568220186
	.quad	0x3fe34490ec62fbb7              # double 0.60211988610523448
	.quad	0x3fe42722027ee89a              # double 0.6297769592995508
	.quad	0x3fba01d2146f2a78              # double 0.101590280522183
	.quad	0x3feaab6539b41ec0              # double 0.83342229147179836
	.quad	0x3fb1697e38351078              # double 0.068015946123581972
	.quad	0x3fc37012e5524c78              # double 0.15185772130334718
	.quad	0x3fd5383fb93792ec              # double 0.33155816161733642
	.quad	0x3fea313871d07455              # double 0.81850836018896678
	.quad	0x3fd24805776b1058              # double 0.28564583455977788
	.quad	0x3fe1ef5217d083e4              # double 0.56046394969245883
	.quad	0x3fddc91bfb3d9e84              # double 0.46539973769402132
	.quad	0x3fd3307a861685ca              # double 0.29983389944581218
	.quad	0x3fbb44306f8ec148              # double 0.10650923465323558
	.quad	0x3fe3b0bf86551462              # double 0.61532570111070251
	.quad	0x3fbff592424b7538              # double 0.12484087103390074
	.quad	0x3fe729721af5ecec              # double 0.72380929246665238
	.quad	0x3fee101937c846d5              # double 0.93946514983164298
	.quad	0x3fed00d1c054f324              # double 0.90635001721202401
	.quad	0x3fe5dedfd5a3200c              # double 0.683456341991588
	.quad	0x3fde76e42946ba04              # double 0.47600654631506267
	.quad	0x3fe4f5072a6457e5              # double 0.65491064338379756
	.quad	0x3fdd8259cde25150              # double 0.46108098131050657
	.quad	0x3fd71486b796327e              # double 0.36062782219304512
	.quad	0x3fe530c91a10f13a              # double 0.6622052678208441
	.quad	0x3fefec8b45fd0bdd              # double 0.99762500447865998
	.quad	0x3fe0f3998173db5a              # double 0.5297362831468988
	.quad	0x3fb43dd9a3d42110              # double 0.079068758485054013
	.quad	0x3fe1893c62e09cc0              # double 0.54800242721548642
	.quad	0x3fec90ac769e0471              # double 0.89266036193306608
	.quad	0x3fd6332e19b32218              # double 0.34687378415813575
	.quad	0x3feab9857c32aa3a              # double 0.83514665849117553
	.quad	0x3fed7f8937d03bf8              # double 0.92181836033876063
	.quad	0x3fda307ebef431fa              # double 0.40920990608063301
	.quad	0x3fd5981e830bf4c6              # double 0.33740961835412653
	.quad	0x3fe03cfb3f201cfe              # double 0.50744402245700804
	.quad	0x3fe71d75f1d5dbd4              # double 0.72234627946351759
	.quad	0x3fe2940c541fe9d1              # double 0.58057228499029112
	.quad	0x3fe94687a85fc71e              # double 0.78985960851261772
	.quad	0x3feefc3d469cb5c2              # double 0.96829093734202609
	.quad	0x3fed35feaa29327a              # double 0.91284116015010786
	.quad	0x3fd36a1d55505bee              # double 0.30335172015605749
	.quad	0x3fb769ed4e87f3a8              # double 0.091460067436811898
	.quad	0x3fea3070b688a858              # double 0.81841312075745076
	.quad	0x3fe78c0dfd6ca6eb              # double 0.73584651467282691
	.quad	0x3fc04a6192a8c0bc              # double 0.12726993237584405
	.quad	0x3fefa21f4cd830be              # double 0.98854031571092782
	.quad	0x3fe83bfd747abc7e              # double 0.7573230051983868
	.quad	0x3fe86385346b833e              # double 0.76214847791934637
	.quad	0x3fe2cb03b4b1dec1              # double 0.58728204051927702
	.quad	0x3fe090fcbf892b7c              # double 0.51769864472713278
	.quad	0x3fd62854aae9d0c0              # double 0.34621159258609779
	.quad	0x3fe6871deabb7a93              # double 0.70399375768814065
	.quad	0x3fe35622d77d1bb2              # double 0.60426466071736784
	.quad	0x3fefb1674b46ada3              # double 0.99040569975243319
	.quad	0x3fd2c47634036f96              # double 0.29324107245860753
	.quad	0x3fe5642379be1166              # double 0.66847394731352661
	.quad	0x3fed971d88a79596              # double 0.9246967000041646
	.quad	0x3fbbc9f979846b48              # double 0.10855063645105389
	.quad	0x3fe1d8e0640bb831              # double 0.55772418537322299
	.quad	0x3fe4624713e1f7c4              # double 0.63699678309762264
	.quad	0x3fdc1b40a8238ade              # double 0.43916336459930772
	.quad	0x3fd4a973f38ce6ee              # double 0.32284258636683105
	.quad	0x3fe9b04c7e2a329f              # double 0.8027708496243412
	.quad	0x3fec542e7f456acc              # double 0.88527607782028772
	.quad	0x3fd0dd478f570edc              # double 0.2635058307462097
	.quad	0x3fe2753bea3af302              # double 0.57681079624271114
	.quad	0x3fe21bc0d7a41186              # double 0.56588785283433718
	.quad	0x3fc6593648703134              # double 0.17459753548644985
	.quad	0x3fe9990b453ef6e3              # double 0.79993213200188185
	.quad	0x3fe71aff2a491e41              # double 0.72204550036344284
	.quad	0x3fc12c25a7d5c514              # double 0.13415976233549343
	.quad	0x3fa89a0ef0c05d60              # double 0.048050372017480525
	.quad	0x3fe063140b685795              # double 0.51209451892894953
	.quad	0x3fe190709693fb60              # double 0.54888181123520141
	.quad	0x3feabfba5ad737fc              # double 0.83590429060291127
	.quad	0x3fd61c5606689eee              # double 0.3454794943413465
	.quad	0x3febaa3dbcc2f115              # double 0.86453139178732619
	.quad	0x3fe09d0a86656768              # double 0.51917005776634273
	.quad	0x3fe77a3d2c0fe26d              # double 0.73367174726361173
	.quad	0x3fe10a4dce8282e5              # double 0.53250780424067712
	.quad	0x3feada332be3a484              # double 0.83913572857012797
	.quad	0x3fee930515047f18              # double 0.9554467592715552
	.quad	0x3fd661a0cd5bf412              # double 0.34970874838455857
	.quad	0x3f91d908267f04a0              # double 0.017429473256701855
	.quad	0x3fe047180b75b025              # double 0.50867845762468689
	.quad	0x3fd8c17c1792dbb8              # double 0.38680937101474511
	.quad	0x3f7ce0cd17dda580              # double 0.0070503245786793789
	.quad	0x3fe595105b345bc7              # double 0.67444627583869809
	.quad	0x3fe9f9faaff52b15              # double 0.81176504484878598
	.quad	0x3fd894a423efc496              # double 0.38407233724053336
	.quad	0x3fdcdb5ef238945e              # double 0.45088933615108384
	.quad	0x3fd922799dd54d8e              # double 0.39272919095420711
	.quad	0x3fe08e8761713718              # double 0.51739853889168597
	.quad	0x3feb43fac6697081              # double 0.85204828979796343
	.quad	0x3feb51258943d0e5              # double 0.85365559396316526
	.quad	0x3fef269edb94843c              # double 0.97346442114588382
	.quad	0x3fedbb233eb77b3d              # double 0.92909395455703925
	.quad	0x3fe23d39bf58d944              # double 0.56997382519220041
	.quad	0x3fe649d852dbe78e              # double 0.69651428397559001
	.quad	0x3fe378ff9e297c36              # double 0.60852032557511992
	.quad	0x3fdf261761a61090              # double 0.48669991050724892
	.quad	0x3fe0db807ea410d9              # double 0.52679466948077469
	.quad	0x3fed26954f14b573              # double 0.9109598679112153
	.quad	0x3fe64e2706b01c42              # double 0.69704009348141249
	.quad	0x3fe6db520a9456f6              # double 0.71427251879023745
	.quad	0x3fedb8a3d0c9daf2              # double 0.92878905085566843
	.quad	0x3fe51874b02ea662              # double 0.65923532877532076
	.quad	0x3fe0e37ab88a4583              # double 0.52776847880356603
	.quad	0x3fec144300d5dda1              # double 0.87747335589567765
	.quad	0x3fee70ebdc460aac              # double 0.95128434202373091
	.quad	0x3fe564548096a894              # double 0.66849732508605308
	.quad	0x3fbe03273b1d7328              # double 0.11723561471212618
	.quad	0x3fe44ed0ba0489aa              # double 0.63462101298892049
	.quad	0x3fe85eeee24a2337              # double 0.7615885181158778
	.quad	0x3fe1fb26e30d153b              # double 0.56190819116515145
	.quad	0x3fd027706c724e7e              # double 0.25240717497329246
	.quad	0x3fe68317ba500f32              # double 0.70350252522664491
	.quad	0x3fc183378562a9e0              # double 0.1368169213577195
	.quad	0x3fc8515205fcf568              # double 0.18998170177830365
	.quad	0x3fec6110d9dbfa9a              # double 0.88684885550158588
	.quad	0x3fec290ef71c34f6              # double 0.88001201881129876
	.quad	0x3fe31c72c8305914              # double 0.59722270106684272
	.quad	0x3fd35622a9f386e2              # double 0.30213228794865021
	.quad	0x3fdd2e965962ced8              # double 0.45596846322153572
	.quad	0x3fbbe56026aee8b8              # double 0.10896874374785426
	.quad	0x3fe0f6e90bc61d0d              # double 0.53014042186342325
	.quad	0x3fea8b11218bb173              # double 0.8294759421528809
	.quad	0x3fc808154da05ab0              # double 0.18774668016768237
	.quad	0x3fe0c53bb91e83aa              # double 0.52407632976620744
	.quad	0x3fdda5c72fd4d572              # double 0.46324329062493697
	.quad	0x3fe55d57b6ad50e6              # double 0.66764436415772077
	.quad	0x3fe0bde1c0ed9e14              # double 0.52317893677985916
	.quad	0x3fdf9e1be5e09402              # double 0.4940252060790159
	.quad	0x3fd997990f9193f0              # double 0.3998778011358004
	.quad	0x3fc00ba3ca872d28              # double 0.12535521878303624
	.quad	0x3fe0ecc400884f71              # double 0.52890205482479591
	.quad	0x3fe5ba997df524fd              # double 0.67902826882450962
	.quad	0x3feaaed94337987e              # double 0.83384383324006683
	.quad	0x3fd2af6b15022e98              # double 0.29195668269742603
	.quad	0x3f841a163504db80              # double 0.0098153815202814964
	.quad	0x3fe9b2456c551311              # double 0.80301161917359043
	.quad	0x3fe817776bd2e0d9              # double 0.75286456164669879
	.quad	0x3fe785f6e364063a              # double 0.73510307705163958
	.quad	0x3fd962676afc5bc0              # double 0.39663110206441488
	.quad	0x3fbf6d94922b5a80              # double 0.12276581352794302
	.quad	0x3fe79ebee4ce547f              # double 0.73812813461940141
	.quad	0x3fc4d4a0a996dd70              # double 0.1627388790200075
	.quad	0x3fe828f3e460a4a9              # double 0.75499910931570924
	.quad	0x3fd20b05a7511bb8              # double 0.28192273463758566
	.quad	0x3fe661365b76e89e              # double 0.69936673988492593
	.quad	0x3fe6e38b0661e8ce              # double 0.71527625319074573
	.quad	0x3fe57d71adcaa99d              # double 0.67156299537355191
	.quad	0x3fee0a01ff7d3952              # double 0.9387216558477951
	.quad	0x3fd52be115143426              # double 0.33080317553032257
	.quad	0x3fdb8c3ecfb4d9c8              # double 0.43043489726860829
	.quad	0x3fd36dbc8554d71c              # double 0.30357277889867063
	.quad	0x3fcee5208dd037c4              # double 0.24136740612487817
	.quad	0x3fed434c529f0c7f              # double 0.9144651044556581
	.quad	0x3fe5dfaeea0bae8d              # double 0.68355508529698883
	.quad	0x3fe313f1a53b7d72              # double 0.59618456146192345
	.quad	0x3feb4486a5f874e2              # double 0.85211498657340834
	.quad	0x3feb4021a0ea5dbb              # double 0.85157853535468264
	.quad	0x3fe54453927d9ad3              # double 0.66459063159421772
	.quad	0x3f829fe97233cf80              # double 0.0090940702416231201
	.quad	0x3fe1d8c54469eac0              # double 0.55771125185068371
	.quad	0x3f79fc70081c0e00              # double 0.0063442589032578489
	.quad	0x3fea1ee9bcb44882              # double 0.81627356392188255
	.quad	0x3fc00d047c54778c              # double 0.12539726324842737
	.quad	0x3fe38dce9e8238c1              # double 0.61106043776251096
	.quad	0x3fe6cce2731435ff              # double 0.71251032329899988
	.quad	0x3fd30c8bc175697c              # double 0.29764074222989456
	.quad	0x3fdf614fcc555b82              # double 0.49031443552433285
	.quad	0x3fe110f51226611d              # double 0.53331998391061897
	.quad	0x3fc83b88ed899aec              # double 0.18931686018478133
	.quad	0x3fe9cfd601e2a2b6              # double 0.80662060135099156
	.quad	0x3fef8d662c4bd3f5              # double 0.98601063396074428
	.quad	0x3fe7a29b3548997c              # double 0.73859939963294563
	.quad	0x3fe0a3f9068e5470              # double 0.52001620560134931
	.quad	0x3fd035c31583065c              # double 0.25328137493861447
	.quad	0x3feb06258b6122d7              # double 0.84450032446428736
	.quad	0x3fc7b5180b8a6cb8              # double 0.18521404803764141
	.quad	0x3fe4658892da2b1a              # double 0.63739422494959119
	.quad	0x3fe6129006ea479a              # double 0.68976594305626127
	.quad	0x3fec9c8e6d6d6332              # double 0.89411088345068479
	.quad	0x3fd8a7a83f479a52              # double 0.38523298434885078
	.quad	0x3fd3e0d039ce55ae              # double 0.31059651990048109
	.quad	0x3fa73bda40ab32e0              # double 0.045378513712057034
	.quad	0x3fecd3f3eb570f23              # double 0.90087314572199195
	.quad	0x3fed38004d9391fb              # double 0.91308608199739127
	.quad	0x3fd616cce4415e7e              # double 0.34514162340699517
	.quad	0x3fc3007b67fa43c0              # double 0.14845221116095608
	.quad	0x3feb07862fe9404c              # double 0.84466847760814678
	.quad	0x3fe940c50e08c750              # double 0.78915646306107057
	.quad	0x3fc971ce2dcfd0b0              # double 0.19878556477454401
	.quad	0x3fe47e3cc820875f              # double 0.64040984237020016
	.quad	0x3fc7b611a6408884              # double 0.18524380319383138
	.quad	0x3fe8a9407698bacc              # double 0.77066062129400725
	.quad	0x3feb4544a280f818              # double 0.85220557917614581
	.quad	0x3fbce398fb8d5938              # double 0.11284786359224064
	.quad	0x3feda0c4f69c4432              # double 0.92587516943070214
	.quad	0x3fda56c7c9992ffe              # double 0.41154665648787148
	.quad	0x3feab3202b563b46              # double 0.83436592544772092
	.quad	0x3fe7148fe558a366              # double 0.72126002115429055
	.quad	0x3fc35dcccb626d70              # double 0.15130004816897324
	.quad	0x3fd63475a4a5ccb0              # double 0.34695187643883241
	.quad	0x3fe9f80348d8bf20              # double 0.81152500369896429
	.quad	0x3fc97436a8902ac0              # double 0.19885905485747024
	.quad	0x3fe510024d24e7cb              # double 0.65820422236651532
	.quad	0x3fcacde4b14ceec8              # double 0.20940836579563027
	.quad	0x3f7fbc3a1b00f000              # double 0.0077478666062766877
	.quad	0x3feb582cf557e78b              # double 0.85451362532261166
	.quad	0x3feac54e1aeec479              # double 0.83658509502687572
	.quad	0x3fe94e1e5703e03b              # double 0.79078595156807496
	.quad	0x3f55b2e05b075c00              # double 0.0013243857357474464
	.quad	0x3fe4bec5ac981d0c              # double 0.6482876177769028
	.quad	0x3fb0199857c218b8              # double 0.062890550065364148
	.quad	0x3fdb8039e70da026              # double 0.4297013050440931
	.quad	0x3fe4ec5b224f323f              # double 0.65385204983756029
	.quad	0x3fe6573163f48f47              # double 0.69814366838952757
	.quad	0x3fe3a138119de2cb              # double 0.6134300560070981
	.quad	0x3fe8d39d6dee9cb9              # double 0.77583190413579139
	.quad	0x3fb64a0b35b31918              # double 0.087067318544630345
	.quad	0x3fb7c3532b07afe0              # double 0.092824171071412831
	.quad	0x3faf3c2d721c4d00              # double 0.06100599306059884
	.quad	0x3fed69af52435268              # double 0.91915098254191907
	.quad	0x3fef1f8eaf07b8f5              # double 0.97260221658305445
	.quad	0x3fefa8687dbbd22f              # double 0.98930763776167462
	.quad	0x3fdf84de6d2db87a              # double 0.4924846712300518
	.quad	0x3fb17cc1562f1428              # double 0.068309863606444865
	.quad	0x3febb3eceb8af826              # double 0.86571355823958096
	.quad	0x3fe331f85e6b7a39              # double 0.59984987679837964
	.quad	0x3fe649f9c8ba7d1c              # double 0.69653023915080636
	.quad	0x3fe6eacb58d5dfe4              # double 0.71616141653703069
	.quad	0x3fe47abada5a1419              # double 0.63998167654847571
	.quad	0x3fe863674add81b0              # double 0.76213421461220854
	.quad	0x3fe6f1ad9db71302              # double 0.71700173190819805
	.quad	0x3fea5adb9e674e31              # double 0.82359105051222603
	.quad	0x3fcdb43692516874              # double 0.23206216949876401
	.quad	0x3fd912cf238cb966              # double 0.39177301856661584
	.quad	0x3fe85854cef1bd4c              # double 0.76078262728507572
	.quad	0x3fd43ffd784441be              # double 0.31640564675128846
	.quad	0x3fd366ed6e238f90              # double 0.30315719371559968
	.quad	0x3fe73b850e175737              # double 0.72601559402639892
	.quad	0x3fe2c7c2e2354d75              # double 0.58688491994182235
	.quad	0x3fddec4888cdac96              # double 0.46754659042080371
	.quad	0x3fe1a348a36fd275              # double 0.55118209763766279
	.quad	0x3fe79dbe2cf959bf              # double 0.73800572189320934
	.quad	0x3fe057ea8bfa03e8              # double 0.5107319578092957
	.quad	0x3fc03607cd9e75fc              # double 0.12664887943257941
	.quad	0x3fd96c505ecd9bba              # double 0.3972359586536488
	.quad	0x3fb12c5b8263d2b8              # double 0.067083091100196834
	.quad	0x3fea32ddac0076ad              # double 0.81870921701530153
	.quad	0x3fe97cb03be36ca3              # double 0.79647075364063757
	.quad	0x3fe9977260a91158              # double 0.79973715666759926
	.quad	0x3fdc4da3feaf992c              # double 0.4422388064544005
	.quad	0x3fef64a7dfe8e961              # double 0.98103708011994339
	.quad	0x3fe686549c9180d1              # double 0.70389776782760738
	.quad	0x3fa2b81647f7b0e0              # double 0.036560722622967168
	.quad	0x3fd5851bf2f74944              # double 0.33624933936257073
	.quad	0x3febfdefd5475783              # double 0.87474815040580756
	.quad	0x3f83c5d58a893e00              # double 0.0096546824362624406
	.quad	0x3fc75875891ad354              # double 0.1823870582062691
	.quad	0x3feef79f47963e75              # double 0.96772731763662866
	.quad	0x3fc777f1df19e84c              # double 0.18334792512524911
	.quad	0x3fd046fcb008d38e              # double 0.25433270636431693
	.quad	0x3fd095a439d331e2              # double 0.25913339278193182
	.quad	0x3fe49236bf133c5d              # double 0.64284837073672529
	.quad	0x3fec164fd77f6b1d              # double 0.87772361840629609
	.quad	0x3fe8fb6e747d4ad7              # double 0.78069231750336143
	.quad	0x3fc17b29a40d2fdc              # double 0.13657112608268462
	.quad	0x3fe8674d8bbf8cdc              # double 0.76261021895006875
	.quad	0x3fbfb091b40cff30              # double 0.12378798146982883
	.quad	0x3fe8488d58c403c7              # double 0.75885646187827482
	.quad	0x3fc3d518fca6de90              # double 0.15494072281375226
	.quad	0x3feba5ffe7cff231              # double 0.86401362682187799
	.quad	0x3fb0c8ecc61bbc10              # double 0.065565870634358925
	.quad	0x3f8608ad1640b740              # double 0.010758735887147375
	.quad	0x3fde1141711c5640              # double 0.46980320020643163
	.quad	0x3fced03f8cd0c584              # double 0.24073023200757515
	.quad	0x3fe764fd0ee2ce5d              # double 0.7310776987782891
	.quad	0x3fe76db65d18a83b              # double 0.73214262183069623
	.quad	0x3fd6d89c9c9b6e88              # double 0.35697093290011894
	.quad	0x3fd39ed025089a6a              # double 0.30656818024218657
	.quad	0x3fdd4e95e3bbb9e6              # double 0.45792147864895438
	.quad	0x3fb63b0bc8935478              # double 0.086838470905904575
	.quad	0x3faa3600d12195d0              # double 0.051193261650762545
	.quad	0x3fc87236ac9a9b00              # double 0.19098552158285287
	.quad	0x3faff7ef32c0ac40              # double 0.062438464112652969
	.quad	0x3fd86996d5e4fcee              # double 0.38144465339787714
	.quad	0x3fe1ab85a4f626f8              # double 0.55218775004433862
	.quad	0x3fbe5484c16a8558              # double 0.11847715112755475
	.quad	0x3fdb10681af430bc              # double 0.42287638313497289
	.quad	0x3fd2428fd031ecae              # double 0.28531260806603143
	.quad	0x3fd971efadc20d60              # double 0.39757911652141864
	.quad	0x3fd68dc78094395a              # double 0.35240352207701664
	.quad	0x3feed5e4819e50a2              # double 0.96360993686768759
	.quad	0x3fa1ff9b1b446f00              # double 0.035153243139772528
	.quad	0x3fe5475b993cc1ea              # double 0.66496066979567314
	.quad	0x3fef664ca5fe1a05              # double 0.98123772068430581
	.quad	0x3fe522b9950077ea              # double 0.66048888303680298
	.quad	0x3fe430670c9579b5              # double 0.63090851266661352
	.quad	0x3fde35210de41bea              # double 0.47199274403140967
	.quad	0x3f87a12985d256c0              # double 0.011537861248409498
	.quad	0x3fe3f77448ab7d7d              # double 0.62395681565605765
	.quad	0x3fce505e736aab58              # double 0.23682766566829616
	.quad	0x3fdb0567fd48e5cc              # double 0.42220496878470892
	.quad	0x3fc212ee5bac9c2c              # double 0.14120273090631608
	.quad	0x3feb0f7a6e4f195d              # double 0.84563943428728872
	.quad	0x3fd15ecff11e955c              # double 0.27141188189337639
	.quad	0x3feedfc5ab2c4fde              # double 0.96481593544239863
	.quad	0x3fe153f386e5ed1c              # double 0.5414979586343267
	.quad	0x3fe4d320cb97f6a8              # double 0.65077247394920779
	.quad	0x3fc85bff8c306744              # double 0.19030756325883591
	.quad	0x3fe0880a1a6630f2              # double 0.5166063800438947
	.quad	0x3fad8c015fb5e900              # double 0.057708781178876123
	.quad	0x3fe8fe4fa8c11ff6              # double 0.78104384384005132
	.quad	0x3fca9b103de42588              # double 0.2078571607783426
	.quad	0x3fb5ed8f6f6e2168              # double 0.085656132416379926
	.quad	0x3fef996eed1d427d              # double 0.98747965155969519
	.quad	0x3fd05fd948f49ea2              # double 0.25585014462056155
	.quad	0x3fea1c8df37e24a9              # double 0.81598565632989051
	.quad	0x3fbf9678653bc158              # double 0.12338974448699014
	.quad	0x3fc1bbc28c9e4408              # double 0.13854247919201179
	.quad	0x3fef6594b0977278              # double 0.98115000238938332
	.quad	0x3fd496a47f243728              # double 0.32169449249419069
	.quad	0x3fc47d86425d36a0              # double 0.16008070221362392
	.quad	0x3fe03e0da148d412              # double 0.50757485867382202
	.quad	0x3fae8ab1b3087e20              # double 0.059651902298579751
	.quad	0x3fc30e7b769fed88              # double 0.14887946407530372
	.quad	0x3fea24ee2c6a6bc7              # double 0.81700810122435363
	.quad	0x3feb8a9767b23fb3              # double 0.86066789868526994
	.quad	0x3fed9ad995c916ec              # double 0.92515258078557627
	.quad	0x3fe070c990bdadf7              # double 0.51376798886980068
	.quad	0x3fe66143131d6ee4              # double 0.69937280400651192
	.quad	0x3fe468ab13defff9              # double 0.63777688866684834
	.quad	0x3fe8fd30029e4b11              # double 0.78090668212311887
	.quad	0x3fe030390f52677c              # double 0.50588658325726454
	.quad	0x3fe588bb0d95566d              # double 0.67294075634954498
	.quad	0x3fd1466f6e31b270              # double 0.26992402802606019
	.quad	0x3fd7dbad2a495714              # double 0.37278298501529261
	.quad	0x3f94510ec08f80e0              # double 0.019840460303272134
	.quad	0x3fdbbe85c1c7ee0c              # double 0.43350356983111804
	.quad	0x3fef872d1b25a0aa              # double 0.98525100042481495
	.quad	0x3fdb1143c9df5178              # double 0.42292875970931432
	.quad	0x3fc4934be664889c              # double 0.160745131966057
	.quad	0x3fbbfd2fa14679a0              # double 0.1093320626009473
	.quad	0x3fe36138398feafa              # double 0.60561763041127326
	.quad	0x3fd4c3aac96b9b12              # double 0.32444257421450218
	.quad	0x3fa66a23f4cbfc80              # double 0.043778537399696837
	.quad	0x3fb3dfffca0c6c40              # double 0.07763670618844376
	.quad	0x3fc9a3bd043d70c4              # double 0.20030939776450485
	.quad	0x3fd0f60e12d6704c              # double 0.26501800384153706
	.quad	0x3fe47882eb4cb55e              # double 0.63971086461030402
	.quad	0x3fabb946a26c93c0              # double 0.054147918059505695
	.quad	0x3fefb4b8b8cd351b              # double 0.99081073850689749
	.quad	0x3fd6c6378f23b652              # double 0.35584820726839894
	.quad	0x3fe8428e326f3cfd              # double 0.75812444544308699
	.quad	0x3febc28a2740290b              # double 0.86749751726282065
	.quad	0x3fe57e7c62132cd8              # double 0.67169016986135954
	.quad	0x3fe65e75c654207a              # double 0.69903076873835279
	.quad	0x3fe350f97a29a281              # double 0.60363458499803369
	.quad	0x3fd3e8cc658c73ce              # double 0.31108388821467947
	.quad	0x3fe46dd8559274c0              # double 0.63840882027911761
	.quad	0x3fee076ce751e3db              # double 0.93840642146744402
	.quad	0x3fb20ba41e433bf0              # double 0.070490128887499059
	.quad	0x3fe5ade06e0f329e              # double 0.67747518058748191
	.quad	0x3fec35bee82ea629              # double 0.88156075809564982
	.quad	0x3fdf4463ffc8d4f6              # double 0.4885492322822097
	.quad	0x3fe6c75a783e6af7              # double 0.71183513150330568
	.quad	0x3fe59c11100c8b23              # double 0.67530110487527784
	.quad	0x3fe2c7ffddb24ffb              # double 0.58691399860481341
	.quad	0x3fcc2cce76a45e24              # double 0.22011738579816253
	.quad	0x3fcc12bc4371d214              # double 0.21932175915903029
	.quad	0x3feeb9839b9136be              # double 0.96014576324679246
	.quad	0x3fe3a4bb3f83b825              # double 0.61385881810361254
	.quad	0x3fe8f7026270b1ff              # double 0.78015250422100724
	.quad	0x3f751c88e3752100              # double 0.0051541659552827301
	.quad	0x3fe6afeb2ce10ca3              # double 0.70897444501351392
	.quad	0x3fd7ee8ee1ffffa4              # double 0.37393543310462918
	.quad	0x3fec69d2475ca4a4              # double 0.88791765153759572
	.quad	0x3fa64732ca2c8bb0              # double 0.043511950663990162
	.quad	0x3fedf5da92ae68f3              # double 0.93626145027817953
	.quad	0x3fe455d7a00c3c53              # double 0.63547879466376356
	.quad	0x3fe418b949bcc3cd              # double 0.6280180397208085
	.quad	0x3fe26f4d1177ef8a              # double 0.57608655368629624
	.quad	0x3fe4a76325b8f0b8              # double 0.64543301932965047
	.quad	0x3fd79130d46e65c6              # double 0.36823673959005665
	.quad	0x3fe44444199f50d4              # double 0.63333325390206108
	.quad	0x3fe2359986f2e264              # double 0.56904293400937123
	.quad	0x3fd02238c9590ce0              # double 0.25208873427273026
	.quad	0x3fd24e560c63cf9e              # double 0.28603125772428395
	.quad	0x3fe31f7feeb50590              # double 0.59759518263324374
	.quad	0x3fdeae10ae460278              # double 0.47937409418958721
	.quad	0x3fef09501fe51ae1              # double 0.96988683919411411
	.quad	0x3fc0ccdf9f9d91b0              # double 0.13125224393583101
	.quad	0x3fea62e52728cc14              # double 0.82457215927422788
	.quad	0x3fe52d14bd37ce31              # double 0.66175305325163525
	.quad	0x3fe00ce335aed3a8              # double 0.50157318577713728
	.quad	0x3fee48c5e3a56042              # double 0.94638342344388371
	.quad	0x3fecbba2d53b3a90              # double 0.89790479323149164
	.quad	0x3f94e0288a5f20e0              # double 0.020386346288234658
	.quad	0x3fc73d396c89757c              # double 0.18155591773658475
	.quad	0x3feb3c1cac21fa1c              # double 0.85108789081261049
	.quad	0x3fd3f8c6519f7394              # double 0.31205900164587175
	.quad	0x3f954a861b2c5d60              # double 0.020792098434950446
	.quad	0x3fc00965bf838a2c              # double 0.12528678752194489
	.quad	0x3fc0e311d21951b4              # double 0.13192961462722297
	.quad	0x3fdcc6fb572d3428              # double 0.44964488519036871
	.quad	0x3fcaa74260644a98              # double 0.20822934824589789
	.quad	0x3fcf7a7ab9d2e9b4              # double 0.24592527459556168
	.quad	0x3fada36fa6bb7270              # double 0.057887543776563244
	.quad	0x3fe94b6f1c111dcb              # double 0.79045825464066277
	.quad	0x3fe5bcc06efcbbb7              # double 0.67929097821421791
	.quad	0x3fda1189d8b1a284              # double 0.40732046281349477
	.quad	0x3fea450fd89b60d7              # double 0.82093040758175106
	.quad	0x3fea66724bec6c77              # double 0.8250056727296301
	.quad	0x3fd3452c90692b44              # double 0.30109705069178383
	.quad	0x3fe2db7fa0253ce8              # double 0.58929425505075717
	.quad	0x3fef680ef22a8ab1              # double 0.98145243928987302
	.quad	0x3fc70f0a42073308              # double 0.18014648651151099
	.quad	0x3fc838e1c04e3a4c              # double 0.18923589601441149
	.quad	0x3f98fa937a5d4a20              # double 0.024393371909647965
	.quad	0x3fdc65645acc8358              # double 0.44368847720220606
	.quad	0x3fed2050824b15b4              # double 0.91019463966283931
	.quad	0x3fc8243807142f84              # double 0.18860531182906126
	.quad	0x3fc228b307f275a0              # double 0.14186704528848981
	.quad	0x3fb4310387da2468              # double 0.078872891108532905
	.quad	0x3fe3fb5a76332de4              # double 0.62443278394624402
	.quad	0x3fecb35d50243f67              # double 0.89689508106856131
	.quad	0x3fe5d1bf487d7a9e              # double 0.68185390623314723
	.quad	0x3fc1f125414d9004              # double 0.14017167748090753
	.quad	0x3fe0047aa1d454a8              # double 0.5005467568140789
	.quad	0x3fdae00ba12bab6e              # double 0.41992464770617388
	.quad	0x3fd2903ab9060db0              # double 0.29005306309428658
	.quad	0x3fe79785cf1b4234              # double 0.73724642229541937
	.quad	0x3fcdcb6554523ebc              # double 0.23276964776277065
	.quad	0x3fe03d1e76506598              # double 0.50746081455433778
	.quad	0x3fe3e3d3cb6b4867              # double 0.62156095247543142
	.quad	0x3fd6ae765c888e0a              # double 0.35439833675829446
	.quad	0x3fe0888334b835e4              # double 0.51666412636558023
	.quad	0x3fe768b8644f0a6f              # double 0.73153323737672149
	.quad	0x3fdbb86341f8d156              # double 0.43312913363049199
	.quad	0x3fe0c89355884e4e              # double 0.52448431687884933
	.quad	0x3fdb7bdf408f7320              # double 0.42943555168840142
	.quad	0x3fed3647cd952e61              # double 0.91287603524092387
	.quad	0x3feecde9453eb125              # double 0.96263564609902074
	.quad	0x3fbd07f0cc58d530              # double 0.11340241421642783
	.quad	0x3feb30e927a3bc6a              # double 0.84972055189235829
	.quad	0x3fb74a77be4d4a58              # double 0.09098003765147078
	.quad	0x3fe871fbff310f21              # double 0.76391410677067395
	.quad	0x3fe2a1f0dfdb71dd              # double 0.58226817819700794
	.quad	0x3fe9a026dc902e20              # double 0.80079978064299339
	.quad	0x3fdb3d597f427e80              # double 0.42561948230466129
	.quad	0x3fecbd682c85f94d              # double 0.89812096305812761
	.quad	0x3fcd666160377dfc              # double 0.2296869010742596
	.quad	0x3fc94986eb63c328              # double 0.19755636685979394
	.quad	0x3fefb5d3c9d90784              # double 0.99094571517365226
	.quad	0x3fccd58b88fbd760              # double 0.2252668780199043
	.quad	0x3feeeb3b0c3bc285              # double 0.96621467961638585
	.quad	0x3fefd6744b47f083              # double 0.99492850020716649
	.quad	0x3fc98630f7176b84              # double 0.1994076925755871
	.quad	0x3fd750d8fd8e72c2              # double 0.36430954705592111
	.quad	0x3fe8048d075cf224              # double 0.75055552900409283
	.quad	0x3fe60b7d4aa878f0              # double 0.68890251714381456
	.quad	0x3fee2e73021cbe67              # double 0.94317007458262203
	.quad	0x3fd2de998ed42b84              # double 0.29483641574977804
	.quad	0x3f82508e607c6100              # double 0.0089427111811777316
	.quad	0x3fd4a7a32756d7f8              # double 0.32273176995965924
	.quad	0x3fc783c6d7fd7dbc              # double 0.18370900675198054
	.quad	0x3fea30102edf68ab              # double 0.81836709170172151
	.quad	0x3fe9dd8de9fbb723              # double 0.80829520892959683
	.quad	0x3fdadc5fe9860c62              # double 0.41970060162583966
	.quad	0x3fe5e8e2ed710e61              # double 0.68467851996724616
	.quad	0x3fc22c31ffdf5788              # double 0.14197373384257284
	.quad	0x3feeccf352c452f2              # double 0.96251836934479074
	.quad	0x3fded9b8d7e12b0e              # double 0.48203869897831531
	.quad	0x3fd6bdec57b65148              # double 0.35534199300424918
	.quad	0x3fed0fa15bc10200              # double 0.90815799637499594
	.quad	0x3fc4743e225ca394              # double 0.15979744603944523
	.quad	0x3fe2730851aed1c0              # double 0.57654205278100079
	.quad	0x3fedfe4e65f6a447              # double 0.93729324259505453
	.quad	0x3fe406bfda77d78f              # double 0.62582390470082483
	.quad	0x3fb5c4215dbd9d88              # double 0.08502396143523161
	.quad	0x3fab1ef5cf193240              # double 0.052970582514352049
	.quad	0x3fe26177e1271168              # double 0.57439798331374181
	.quad	0x3fd9757a54084c30              # double 0.39779527860918318
	.quad	0x3fee21001fb3d5c6              # double 0.94152837936297185
	.quad	0x3fb861b890965730              # double 0.095241103458047815
	.quad	0x3fed4b6942da421a              # double 0.91545546586172866
	.quad	0x3fbfc3d8302f71e0              # double 0.1240820996894807
	.quad	0x3fc500b642bfe328              # double 0.16408422717338422
	.quad	0x3fef06c414a695ae              # double 0.96957592042297391
	.quad	0x3fe63f62019a7ec2              # double 0.6952371627157492
	.quad	0x3fe678453f605f7d              # double 0.70218145731176629
	.quad	0x3fe49a98b14b0f2f              # double 0.64387163760736665
	.quad	0x3fe9402a90ba600f              # double 0.78908279673760429
	.quad	0x3fe94e8adc215fe1              # double 0.79083769792759651
	.quad	0x3fe47b243e2de077              # double 0.64003193039299233
	.quad	0x3fed1079c41bd3eb              # double 0.90826118757706575
	.quad	0x3fe769d49aceaf84              # double 0.73166876064122777
	.quad	0x3fd374b3e505fe94              # double 0.30399796834533643
	.quad	0x3fef508c25db2ffe              # double 0.9785824527148177
	.quad	0x3fe6297a5bf4519f              # double 0.69256322822416283
	.quad	0x3fe01c82bf312ef6              # double 0.50348031370364654
	.quad	0x3fefd7fd3bc66395              # double 0.99511586832805909
	.quad	0x3fd96ccf0bd0f548              # double 0.39726616052560759
	.quad	0x3feba1e0a8975a8e              # double 0.86351044586156589
	.quad	0x3fe42557cded0df5              # double 0.6295584699623179
	.quad	0x3fef6a0f5dc986e5              # double 0.98169678037467333
	.quad	0x3fdb0d7abc66d99c              # double 0.42269771956071067
	.quad	0x3fe6a23b1f5a532b              # double 0.70730358241653357
	.quad	0x3fd8bdb49625e966              # double 0.38657869971179648
	.quad	0x3fe156760e0c7260              # double 0.54180433982726228
	.quad	0x3fd8f6737b49f3e8              # double 0.39004218139581193
	.quad	0x3fe208fb64042534              # double 0.56359643492138511
	.quad	0x3fb90333fbe15b90              # double 0.097705124849524205
	.quad	0x3fb688e938adac78              # double 0.088026596391204026
	.quad	0x3fd34932808e28ee              # double 0.30134260706166927
	.quad	0x3fd0f848386e30c2              # double 0.26515393744263005
	.quad	0x3fb0b16dc51f7868              # double 0.065207348466601922
	.quad	0x3fea8d83d330b94f              # double 0.82977477310286385
	.quad	0x3fd4087a0e2d4420              # double 0.3130173815198436
	.quad	0x3fedaf5f075bed37              # double 0.92765761792489954
	.quad	0x3fe3d2e043442ce3              # double 0.61949170244170337
	.quad	0x3fd01d413a232456              # double 0.25178557088344655
	.quad	0x3fd8b111be825e56              # double 0.38580745319766174
	.quad	0x3fdb63974953ee64              # double 0.42795354996608226
	.quad	0x3fbd1f1638189a10              # double 0.11375559682401382
	.quad	0x3fe6f75afdb33401              # double 0.71769475508483549
	.quad	0x3fdc47769d5228a8              # double 0.44186177600262022
	.quad	0x3f7bc44ef60eca80              # double 0.0067790111942708231
	.quad	0x3fef4afcebaf0f6d              # double 0.97790380508420826
	.quad	0x3fda370072f2f790              # double 0.40960704064843245
	.quad	0x3fbfef064b5ff6f8              # double 0.12474097576338383
	.quad	0x3fd56ed83353a702              # double 0.33489041340236281
	.quad	0x3fd13585e5afee24              # double 0.26889178686517057
	.quad	0x3fd2b74f7235295e              # double 0.29243837502567327
	.quad	0x3fef4e5927547beb              # double 0.97831399613994329
	.quad	0x3fbb499310f09e28              # double 0.10659140742847539
	.quad	0x3fb8fa2cf73c65d0              # double 0.097567377434095492
	.quad	0x3fc6626831d0ba70              # double 0.17487814361944087
	.quad	0x3fd40646ecea1f94              # double 0.31288312088190051
	.quad	0x3fe875f45a8cb8f1              # double 0.76439874349105541
	.quad	0x3fd3ae8d25683e32              # double 0.30752876904532223
	.quad	0x3fab1599991e3a80              # double 0.052899169865772144
	.quad	0x3fe1267a0084d5a5              # double 0.53594684697479933
	.quad	0x3fef6d7ed78a5881              # double 0.98211614701973826
	.quad	0x3fb0f3771a442aa8              # double 0.066214984810509692
	.quad	0x3fe2dac8324d2aa7              # double 0.58920678925035908
	.quad	0x3fc7ce3505f7833c              # double 0.18598044196462549
	.quad	0x3fe606fe53398011              # double 0.68835369353110043
	.quad	0x3fd25da088203a7c              # double 0.28696454328102283
	.quad	0x3fd9dd6f93a8473e              # double 0.40414037151014159
	.quad	0x3fe5e39a3334c033              # double 0.68403348923857832
	.quad	0x3feebf951c0a41ee              # double 0.96088653065276985
	.quad	0x3feecd9544d0a6b3              # double 0.96259559097707947
	.quad	0x3fefb8ae4ffaddfd              # double 0.99129405613979282
	.quad	0x3fc46ec72063c0a0              # double 0.15963067132498043
	.quad	0x3f94b9d2d8c4fc60              # double 0.020240110855635485
	.quad	0x3fd47c1814a47a2a              # double 0.32007410064571451
	.quad	0x3fe6f1ed08f153f4              # double 0.71703197237604721
	.quad	0x3fa0c865229f3fc0              # double 0.032778892971350171
	.quad	0x3fd9a2a0bec53ea2              # double 0.40055101995401732
	.quad	0x3fc71d2c4f50ede8              # double 0.18057779190881651
	.quad	0x3fe0683a3d6dd8ed              # double 0.51272308347577467
	.quad	0x3febbb8db8649622              # double 0.86664472593537689
	.quad	0x3fd252932cebe692              # double 0.28628997218002283
	.quad	0x3fd9152506d07e34              # double 0.39191556611510525
	.quad	0x3feb50eaf0c2c697              # double 0.85362765334703539
	.quad	0x3fe667cd83e5b58e              # double 0.70017123948280058
	.quad	0x3fe3f69fb8180063              # double 0.62385545688449573
	.quad	0x3fce29c6414cd458              # double 0.23564985455019172
	.quad	0x3fe4e0ba8c75f45a              # double 0.6524327033399786
	.quad	0x3f93a4b2f345b340              # double 0.019182964418564596
	.quad	0x3fdca5e7a1f243dc              # double 0.44762602629731219
	.quad	0x3fd5b6c55c9dd3e6              # double 0.3392804531534338
	.quad	0x3fe031c221dd2d4b              # double 0.50607401479775527
	.quad	0x3fdce50a8bf92a0e              # double 0.45147956532733324
	.quad	0x3fe10b582d0966df              # double 0.53263481899486098
	.quad	0x3fdb784103717cdc              # double 0.42921471916447529
	.quad	0x3fe9b559d71760a7              # double 0.80338756570838121
	.quad	0x3fef84bb04c7fdc7              # double 0.98495245870429293
	.quad	0x3fe7085011b7cc11              # double 0.71976474247492395
	.quad	0x3fd549658ef09d1e              # double 0.33260477980589254
	.quad	0x3fe9edfe4ecdedc1              # double 0.81030192748533392
	.quad	0x3fe4fc20039bf4b1              # double 0.65577698426172593
	.quad	0x3fdbeb397bf150ea              # double 0.43623196700833822
	.quad	0x3fe7589259fa629d              # double 0.7295619733223081
	.quad	0x3fef6cb9db4f8787              # double 0.98202221712220783
	.quad	0x3fe35fde8fb6f136              # double 0.60545280522595735
	.quad	0x3fea7990b53af0e3              # double 0.82733950993090521
	.quad	0x3fdc497e24d5bb3a              # double 0.44198564145237962
	.quad	0x3fed68aea5642e69              # double 0.91902859023089178
	.quad	0x3fe591a7c05f21c7              # double 0.67403018543796456
	.quad	0x3fe56665fc591b0a              # double 0.66874980246288485
	.quad	0x3fe312c35daa31f1              # double 0.5960404233351807
	.quad	0x3fe3a5978ea73a7b              # double 0.6139638696857469
	.quad	0x3fef0607c0adf373              # double 0.96948611862863598
	.quad	0x3fec46b59e7c3b86              # double 0.88363152460247885
	.quad	0x3fba05b479319258              # double 0.10164955099896511
	.quad	0x3fd99ea6ac240c20              # double 0.40030829249025324
	.quad	0x3fe8db9a3264219a              # double 0.77680692522067152
	.quad	0x3fc79c5a6620fb64              # double 0.18445901858100477
	.quad	0x3fdafc6d02f6879e              # double 0.42165684975963724
	.quad	0x3fc34071a96cf68c              # double 0.15040417454467947
	.quad	0x3fd61eda819cab0a              # double 0.34563315064831157
	.quad	0x3fbd634ca09d02a8              # double 0.11479643746589352
	.quad	0x3fe193906d54e15d              # double 0.54926320413418817
	.quad	0x3fe0a5ee25dcbb83              # double 0.52025515933006294
	.quad	0x3fe8711088922334              # double 0.76380182909006189
	.quad	0x3fc223ced098110c              # double 0.14171776948217774
	.quad	0x3fd7adc115ee7ab2              # double 0.36998011724237323
	.quad	0x3fc0aa8aa2bc1384              # double 0.13020451494244523
	.quad	0x3fe68feb9f7d7db1              # double 0.70506840849332353
	.quad	0x3fe3d7d1cc0e7745              # double 0.62009515623842815
	.quad	0x3fb90d379b8a7810              # double 0.097857928727961729
	.quad	0x3fc7fb11092613e4              # double 0.18734944292751188
	.quad	0x3fe498364336d11a              # double 0.6435805619026127
	.quad	0x3feaa91fca4b85fa              # double 0.83314504156822911
	.quad	0x3fdc24c3bbb0edec              # double 0.4397439320489116
	.quad	0x3fcc84bca6b22490              # double 0.22280080928274915
	.quad	0x3fd72e4feaf27ae2              # double 0.36220167106686862
	.quad	0x3fd2d1d6a5a62630              # double 0.2940575235048497
	.quad	0x3f8285236b3caa40              # double 0.0090430037594916301
	.quad	0x3fe1e581f1acd1a1              # double 0.55926606371081189
	.quad	0x3fea60239be93326              # double 0.82423572970728709
	.quad	0x3fd4ae0f1970c80c              # double 0.32312371715954735
	.quad	0x3fe64265e663115f              # double 0.69560523030717636
	.quad	0x3fd06fcbe9f8885e              # double 0.25682351921762414
	.quad	0x3fef0919e285edd3              # double 0.96986097567372053
	.quad	0x3fd7023dcf9ec6b6              # double 0.35951180720722264
	.quad	0x3fc8ac506e42e998              # double 0.19275861152511875
	.quad	0x3feac6b9a8d344e8              # double 0.83675845121083814
	.quad	0x3fe7bc185eb8424c              # double 0.74171083927110137
	.quad	0x3fe0eed7091a0355              # double 0.52915527131708961
	.quad	0x3fdb1ca46fcd3632              # double 0.42362318914533426
	.quad	0x3fe1121d81cb658d              # double 0.53346133566371778
	.quad	0x3fd858b7408ac4dc              # double 0.38041478445945898
	.quad	0x3fd57c7ce20bcd34              # double 0.33572313380064434
	.quad	0x3fdb25a56b9b254e              # double 0.42417274006273409
	.quad	0x3f9c1e4ea08c77c0              # double 0.02745936255370629
	.quad	0x3f9efcfb65fdc3a0              # double 0.030261924839070198
	.quad	0x3fe973ade61cc426              # double 0.79537100738355515
	.quad	0x3fd1bc1838b5a276              # double 0.27710538423574549
	.quad	0x3fd63e41d8fec120              # double 0.34754987898760881
	.quad	0x3fdecaf5b1d1bce4              # double 0.48113767972149746
	.quad	0x3f9c75274d01c3e0              # double 0.027790655207755921
	.quad	0x3fd6dfd639a4dae2              # double 0.35741191510480352
	.quad	0x3fd8e532d5a4cd7e              # double 0.38898917068146222
	.quad	0x3fe574ba59072081              # double 0.67049901378869958
	.quad	0x3fcbcfcca2670d2c              # double 0.2172790329915214
	.quad	0x3fee23d2df52da71              # double 0.94187301271342794
	.quad	0x3fe7dcc5464fbfc2              # double 0.7456995366355772
	.quad	0x3fc702ae6442fc44              # double 0.17976932426060632
	.quad	0x3fee3b9033c0be57              # double 0.94477090938557751
	.quad	0x3fd913e966c163d6              # double 0.39184031519613194
	.quad	0x3fe61e362b2a0096              # double 0.69118793898089126
	.quad	0x3fa1b8d0b07e6e70              # double 0.034613153023397625
	.quad	0x3fe88eb53f489f80              # double 0.76742040977568138
	.quad	0x3fe45289a389eb01              # double 0.63507539693031856
	.quad	0x3fe85b1a5dd78b7d              # double 0.76112097099790754
	.quad	0x3fca4efd45f99fc0              # double 0.20553556362869863
	.quad	0x3fe1f11b38fe660e              # double 0.56068192607489364
	.quad	0x3fef8b74033feefb              # double 0.98577309260096457
	.quad	0x3fea95fc5da8a80a              # double 0.8308088139795029
	.quad	0x3fe9b378d757b118              # double 0.80315820750323308
	.quad	0x3fe20ed063dc65ab              # double 0.56430835250937628
	.quad	0x3fd95a77e4e1691c              # double 0.39614674903499902
	.quad	0x3fc4ecdced65e990              # double 0.16347848502830375
	.quad	0x3fe37ab4b3bc90e9              # double 0.6087287435989569
	.quad	0x3fd290ec22759414              # double 0.29009536137738334
	.quad	0x3fe048b668ea3bd0              # double 0.50887604228216254
	.quad	0x3fe8054c1ccbb7d4              # double 0.75064664482283172
	.quad	0x3fd5cdfaa316198c              # double 0.34069696356200363
	.quad	0x3fc100032f87d3f4              # double 0.13281287976101874
	.quad	0x3fe4d842b9c92d4d              # double 0.65139900480554902
	.quad	0x3fec43134b6e0437              # double 0.88318791134236718
	.quad	0x3fe1739fcc0bf5fb              # double 0.54536428311229146
	.quad	0x3fabfb8e1d046080              # double 0.054653588335157544
	.quad	0x3fefec1c33e1cf6e              # double 0.99757204182831827
	.quad	0x3fe2e9d4409bc927              # double 0.59104359263281914
	.quad	0x3fee7f4e845ec400              # double 0.95304036954451021
	.quad	0x3fec652646993a72              # double 0.8873473528745548
	.quad	0x3fba5db7715b68c0              # double 0.10299250142580529
	.quad	0x3f9ee28bd6406aa0              # double 0.030161080314523248
	.quad	0x3fc3fb5781c57dd4              # double 0.15610784374710696
	.quad	0x3fe46294bbc56471              # double 0.63703381227527534
	.quad	0x3febeeb1875bbac8              # double 0.87288738667651788
	.quad	0x3fbf4301003512c8              # double 0.12211614852010222
	.quad	0x3fcbd403d9146ce4              # double 0.2174076852760215
	.quad	0x3fdd6000fbcbfc88              # double 0.45898460950406461
	.quad	0x3fd3f1fdc9c2c24c              # double 0.31164498046112921
	.quad	0x3fefedece3446b43              # double 0.99779362095009849
	.quad	0x3fce91c6fab3cd40              # double 0.23882376900983537
	.quad	0x3fd1b6e1cc8f0ff0              # double 0.27678723312806053
	.quad	0x3facd856d1ebde70              # double 0.056338036656538359
	.quad	0x3fca654e33afff84              # double 0.20621659778407431
	.quad	0x3fe515e29d0609f8              # double 0.65892153423948141
	.quad	0x3fdb152eec170668              # double 0.42316792541178083
	.quad	0x3fb4701b61bb4920              # double 0.079835616455316671
	.quad	0x3fd5b56d5adb9b14              # double 0.33919843552432494
	.quad	0x3fe1d1f6ab0aed75              # double 0.556880315845247
	.quad	0x3fe6cbfb18f9c585              # double 0.71240000608501985
	.quad	0x3fd5c1a52c22e354              # double 0.33994416532691685
	.quad	0x3fdec16ca7ba4b7c              # double 0.48055569057139969
	.quad	0x3fe14cde1563975b              # double 0.54063324143929081
	.quad	0x3fea5f6accf6f3b2              # double 0.82414760620269178
	.quad	0x3fd29c2d02cc08c6              # double 0.29078221581597707
	.quad	0x3fdfa7e9c266285e              # double 0.49462360367090763
	.quad	0x3fe4399ad01efbc8              # double 0.6320318283904891
	.quad	0x3fec39cfbb55dc0f              # double 0.88205706204360179
	.quad	0x3fc2e77488bf7cfc              # double 0.14768845250271301
	.quad	0x3fd88b845f4f5f2c              # double 0.38351544673558879
	.quad	0x3fee97307451a1fd              # double 0.95595572203188761
	.quad	0x3fe68855cd9629c5              # double 0.70414247659328366
	.quad	0x3fd0595fe3684628              # double 0.25545499046083586
	.quad	0x3fdda4582dfe3264              # double 0.46315578929423951
	.quad	0x3fd0475cfa8c25f4              # double 0.25435566394352738
	.quad	0x3fe318ea4fc39426              # double 0.59679141596700869
	.quad	0x3fccb97cc220b424              # double 0.22441062430280667
	.quad	0x3fe4ccd2baf4fc4e              # double 0.650002827787725
	.quad	0x3fdbe6f6e2a3d510              # double 0.43597194798287919
	.quad	0x3fbf2e59cd2e42c8              # double 0.12180100688261597
	.quad	0x3fed7139e14fd597              # double 0.9200715447065474
	.quad	0x3fcc9246fe1d9988              # double 0.22321402938832713
	.quad	0x3fd16100d95c4798              # double 0.27154561258896015
	.quad	0x3fd41b760fd54b4e              # double 0.31417609735688223
	.quad	0x3fe6d20be3b379cb              # double 0.71314043496004709
	.quad	0x3fec8c859f17cf96              # double 0.89215355942586672
	.quad	0x3fee16b6c4032ea1              # double 0.94027269633939536
	.quad	0x3fddd923334690d6              # double 0.46637802131068662
	.quad	0x3fc6d28d486edb80              # double 0.17830053364533782
	.quad	0x3feee919b1419417              # double 0.9659546339067927
	.quad	0x3fed77d65071c89f              # double 0.92087856017885261
	.quad	0x3feeb5859aaa0db1              # double 0.95965843398919592
	.quad	0x3fecea734579c183              # double 0.90361941880659946
	.quad	0x3fd032291a176db6              # double 0.2530615572738627
	.quad	0x3fe83bb05d5452e8              # double 0.75728624561687941
	.quad	0x3fc99d7e71f00610              # double 0.2001188331924344
	.quad	0x3fe06e10692fb02a              # double 0.51343555969424881
	.quad	0x3fe18a1408c62d2f              # double 0.54810525621124906
	.quad	0x3fe8db65069507eb              # double 0.77678157125069214
	.quad	0x3fdc7a87ea3d42de              # double 0.44497869372302812
	.quad	0x3fe08ec96154281f              # double 0.51743000993269905
	.quad	0x3fcc853b5140bcc0              # double 0.22281590907502924
	.quad	0x3fb2e68b24a4d490              # double 0.073830315061814256
	.quad	0x3fbfbb66d04a8950              # double 0.12395327172501891
	.quad	0x3fe8e0cb26192145              # double 0.77744061890647542
	.quad	0x3fe7d3a17d75ae94              # double 0.74458384040686321
	.quad	0x3fc1a2dfbf20c95c              # double 0.13778302032876411
	.quad	0x3fe794635a539405              # double 0.73686378137483699
	.quad	0x3fae4e490161ef60              # double 0.059191018503922832
	.quad	0x3fe0d70d1d95e202              # double 0.52625137117780718
	.quad	0x3f720ee7fc077880              # double 0.0044087468999959301
	.quad	0x3fe21c4ff03d390e              # double 0.56595608636578887
	.quad	0x3fe0f0b3a1000ee9              # double 0.52938252873761116
	.quad	0x3f918234a1375980              # double 0.017098257388931781
	.quad	0x3fddc054981122f6              # double 0.46486391878401834
	.quad	0x3fd401c0cf1379d2              # double 0.31260700437806321
	.quad	0x3fd16e4caf9fdc20              # double 0.27235715056252907
	.quad	0x3fba62746f1b26c8              # double 0.10306480133581453
	.quad	0x3fe910c65f576dff              # double 0.78329771634474799
	.quad	0x3fe5c14d3e062b9f              # double 0.67984640230257642
	.quad	0x3fee24300aac5787              # double 0.94191743931399763
	.quad	0x3fece57c613de415              # double 0.90301341049701256
	.quad	0x3fbf593ba537ee98              # double 0.12245533736853031
	.quad	0x3fe92db7137216e5              # double 0.78683046148281888
	.quad	0x3fceb5deb1d65568              # double 0.23992522891482371
	.quad	0x3fdba7ad529a0ae8              # double 0.43210919443678941
	.quad	0x3fd3035432449700              # double 0.29707817944505166
	.quad	0x3feee47647c26452              # double 0.96538843169686062
	.quad	0x3fb3f9538baf4408              # double 0.078023168184941594
	.quad	0x3fe95c4d185f43de              # double 0.7925172306078101
	.quad	0x3fa3b42a9253c050              # double 0.038483934747887916
	.quad	0x3fdd79124d388860              # double 0.46051461735817689
	.quad	0x3fb83fefdcd12438              # double 0.09472560063399349
	.quad	0x3facf50e6312eed0              # double 0.056557130426396207
	.quad	0x3feebd237ca44e91              # double 0.96058821052652565
	.quad	0x3feec0eb0762a14c              # double 0.96104957048832195
	.quad	0x3fea8988203175fc              # double 0.82928854263053564
	.quad	0x3feefb2a33651c7a              # double 0.96815977132872821
	.quad	0x3fe11bf70c5f4613              # double 0.53466370026052557
	.quad	0x3fe86001f2cbae44              # double 0.76171967907925663
	.quad	0x3fb7f309253039f8              # double 0.093552180842585986
	.quad	0x3fe30e0423ea55d3              # double 0.59546095862122639
	.quad	0x3fe0335eb116b7d9              # double 0.50627073848385884
	.quad	0x3fe9140dc1505f57              # double 0.78369796520835677
	.quad	0x3fe54fac1e5d95d3              # double 0.66597562723898773
	.quad	0x3fe7ed7eab460293              # double 0.74774106456614431
	.quad	0x3fea09a53adca627              # double 0.81367742058245518
	.quad	0x3feade267f55331b              # double 0.83961796636285457
	.quad	0x3fdd4218d735fe46              # double 0.4571592427891783
	.quad	0x3fd99f3638f526b2              # double 0.40034251749294036
	.quad	0x3fd643f16417ace4              # double 0.34789690756470137
	.quad	0x3fc812a34e45c5c8              # double 0.18806878396894278
	.quad	0x3fe9dc6fb745ea1f              # double 0.80815873904731805
	.quad	0x3fd33ce5eb26fbc0              # double 0.30059192623224007
	.quad	0x3fd28cec62f60bba              # double 0.28985128082438971
	.quad	0x3fd2a2521f1e4228              # double 0.29115727461706564
	.quad	0x3feee24ffe3a44db              # double 0.96512603429632848
	.quad	0x3fe045468dbc387e              # double 0.5084564941660259
	.quad	0x3fe4d62421b27569              # double 0.65114027577844269
	.quad	0x3fe8d315c17d04e9              # double 0.77576720991797032
	.quad	0x3fd788fa0e2382e4              # double 0.36773539906248076
	.quad	0x3fe490627165c597              # double 0.64262506626089333
	.quad	0x3fe47f3c773f7392              # double 0.64053176203343498
	.quad	0x3fd4e253d019f9aa              # double 0.32631392786415836
	.quad	0x3fdccab5bf2d4520              # double 0.44987243337262051
	.quad	0x3fd55e0a8a82084e              # double 0.33386481786886157
	.quad	0x3fe8335fd861dda7              # double 0.75627128851094916
	.quad	0x3fe44ea06c879dd8              # double 0.63459798047272908
	.quad	0x3fa0b41f7458b9d0              # double 0.032624228432144187
	.quad	0x3fe3260270df4ab3              # double 0.59838983579023475
	.quad	0x3fcca9ccfd3a36a8              # double 0.22393190731638879
	.quad	0x3fd836da056e26b2              # double 0.37834787874508458
	.quad	0x3fe4ab10e6a1df67              # double 0.64588208241819423
	.quad	0x3fc94db14ff98898              # double 0.1976834908010161
	.quad	0x3fe853cca69703b2              # double 0.76022942101564284
	.quad	0x3fe35c790e8e5535              # double 0.60503819315878238
	.quad	0x3fd7e9039b6ad396              # double 0.37359705140561894
	.quad	0x3fc14a20c23fcfac              # double 0.13507470593287729
	.quad	0x3fe30a109cd333da              # double 0.5949786246288753
	.quad	0x3fdac8fe7d8f1ad8              # double 0.41851770650502607
	.quad	0x3fb89706bf6bf458              # double 0.096054479345143107
	.quad	0x3fd128d2df927a9c              # double 0.26811668236943276
	.quad	0x3fd36f64102f9ddc              # double 0.30367375927604967
	.quad	0x3fe28c0526f46acd              # double 0.57959230049467581
	.quad	0x3fe189cbb3cc03b7              # double 0.54807076565349788
	.quad	0x3fe282b9ac7655d3              # double 0.57845767673523552
	.quad	0x3fe72878b428d309              # double 0.72369036853214752
	.quad	0x3fe9ddc39f5f91ae              # double 0.80832081916428478
	.quad	0x3fed20e416626c1d              # double 0.91026501056638021
	.quad	0x3fea88e5b42c149b              # double 0.82921109380608315
	.quad	0x3fe45e6d9cf4eea9              # double 0.63652687698000421
	.quad	0x3fe5ab48707ce472              # double 0.67715856523785889
	.quad	0x3fd4e0fe49a14f22              # double 0.32623250189247888
	.quad	0x3fec88e4b6b8fc57              # double 0.8917106217194356
	.quad	0x3fc427480ecb87a0              # double 0.1574487755051992
	.quad	0x3fddf19fdf245fdc              # double 0.46787258902759077
	.quad	0x3fd479ae774caaf0              # double 0.31992684984531561
	.quad	0x3fe651b5de8e9501              # double 0.69747441738277882
	.quad	0x3fd5f7e0ab04315e              # double 0.34325424862688247
	.quad	0x3feada47972a3bd0              # double 0.83914546512994015
	.quad	0x3fc896646ab25eb4              # double 0.19208960733225455
	.quad	0x3fdf9c022de36918              # double 0.49389700394898872
	.quad	0x3fec359fa1dd907a              # double 0.88154584516861623
	.quad	0x3fe1d8746f3c9641              # double 0.55767270780479106
	.quad	0x3fe14babee693832              # double 0.54048725666667097
	.quad	0x3fa187c3671b5880              # double 0.034238916717797885
	.quad	0x3fdaefe6bf29e9b2              # double 0.42089241665203325
	.quad	0x3fdead0876581c22              # double 0.47931109959648854
	.quad	0x3fe88ba5c634bfad              # double 0.76704682075614061
	.quad	0x3fd4cb2cc50e4c88              # double 0.32490081065879695
	.quad	0x3fccc6c2395a1930              # double 0.22481563377750424
	.quad	0x3fd2dceab7be0c52              # double 0.29473369544593198
	.quad	0x3fc9d7da0a822d30              # double 0.20189977181539964
	.quad	0x3fbef850e26af0f8              # double 0.12097650077607003
	.quad	0x3fef11ba25d63da6              # double 0.97091395750060339
	.quad	0x3fef16785cc5695e              # double 0.97149294013369647
	.quad	0x3fed294f738e4acc              # double 0.91129276818750204
	.quad	0x3fef23cbefd2c4f3              # double 0.97311970558635463
	.quad	0x3fc8f4a5e1bc3184              # double 0.19496606371138736
	.quad	0x3fe47c010f82002d              # double 0.64013722447271493
	.quad	0x3fee9523e7733d16              # double 0.95570559697253787
	.quad	0x3fc111380ca875c8              # double 0.1333379804427024
	.quad	0x3fc0f11b723909fc              # double 0.13235800816808296
	.quad	0x3fbc73ca8cb18490              # double 0.11114183363817376
	.quad	0x3feaa36641db6140              # double 0.83244622099577015
	.quad	0x3fdf7b7be45e932a              # double 0.49191186238958784
	.quad	0x3fe11522348d2f89              # double 0.53382978691068772
	.quad	0x3fd89c68237195be              # double 0.38454631291673624
	.quad	0x3fec2ea644a5f7cb              # double 0.88069451721070757
	.quad	0x3fc810291ceba290              # double 0.18799318229800521
	.quad	0x3f7da9310fb0d680              # double 0.0072414318520280796
	.quad	0x3fe73602e4b5399e              # double 0.72534317655099634
	.quad	0x3fab10c9f0b0f8e0              # double 0.05286246359945479
	.quad	0x3f6bf3b0c0d99200              # double 0.0034120990956572061
	.quad	0x3fe77b826093dc55              # double 0.73382681715782871
	.quad	0x3fd4093a78d8e1cc              # double 0.31306325723155903
	.quad	0x3fec70e96899d629              # double 0.88878317289226516
	.quad	0x3fe1a9bf394b199a              # double 0.55197106542691476
	.quad	0x3feb95331cc5bf9b              # double 0.86196284885044194
	.quad	0x3fdf968ae78f86d6              # double 0.49356339085907786
	.quad	0x3fea1b29682bb878              # double 0.81581564279419094
	.quad	0x3fb65ad867fdd1f0              # double 0.087323689831300788
	.quad	0x3fb9f0fb11d0e898              # double 0.1013333242889608
	.quad	0x3fdf9d83eaa62a16              # double 0.49398897089909732
	.quad	0x3fe243265942b817              # double 0.57069699701037535
	.quad	0x3fde88b4318ccf50              # double 0.47709374274130756
	.quad	0x3faa313a8b3ea0d0              # double 0.051156835076939466
	.quad	0x3fc24e6593a13ff8              # double 0.14301747997751568
	.quad	0x3fec25756dc975cb              # double 0.87957259600414639
	.quad	0x3fdf0adce2b116f4              # double 0.48503801477305264
	.quad	0x3feab3e95b66f3e6              # double 0.8344618592451496
	.quad	0x3fe34f992ac7bf7e              # double 0.60346659045715945
	.quad	0x3fe1d75101b2d176              # double 0.5575337441610333
	.quad	0x3fef35a48d72b889              # double 0.97529819132411532
	.quad	0x3fd3027638703d56              # double 0.29702525626722343
	.quad	0x3fc1f1d118fdeb40              # double 0.14019216270738788
	.quad	0x3fc4ff421f937bf0              # double 0.16403986493875733
	.quad	0x3fd9906be5ce71ce              # double 0.39943978731187435
	.quad	0x3fe3a015886cdc12              # double 0.61329151769212076
	.quad	0x3fed48675dbe2f82              # double 0.915088351337076
	.quad	0x3fea114d057993ad              # double 0.81461192197149546
	.quad	0x3fde4c808bce6a9e              # double 0.47341931965790163
	.quad	0x3fbfdc19fa0da7f8              # double 0.12445223192995047
	.quad	0x3fe66cfecd17eba3              # double 0.70080509240448341
	.quad	0x3fe638767b732167              # double 0.6943924342277058
	.quad	0x3fefad6400dec909              # double 0.98991584939929666
	.quad	0x3fe70d4559d7052f              # double 0.72036998316631251
	.quad	0x3fddb942a95d94ce              # double 0.46443239726643248
	.quad	0x3fec0840abdf2eed              # double 0.87600740021431778
	.quad	0x3faf41c909e4b9c0              # double 0.061048777063081427
	.quad	0x3fa4d85cdf634d50              # double 0.040713217038183758
	.quad	0x3fcba80bb9543e2c              # double 0.21606585072776008
	.quad	0x3f9b540a540e86a0              # double 0.026687775974670758
	.quad	0x3fe08741c6f325ac              # double 0.51651085717565115
	.quad	0x3fe182cc8e53078e              # double 0.54721668050500383
	.quad	0x3fdef7a9a51ebd18              # double 0.48386613011366952
	.quad	0x3fc8a8f98b34c37c              # double 0.19265670106099353
	.quad	0x3fe829c2f4d1b194              # double 0.75509784523233003
	.quad	0x3fd6478669e06934              # double 0.34811554278862222
	.quad	0x3fe89515984d806b              # double 0.76819877382878354
	.quad	0x3fda41e30416c606              # double 0.41027140998184597
	.quad	0x3fccb96669b0b1f0              # double 0.2244079605165008
	.quad	0x3fa67463b7def4b0              # double 0.04385673160093384
	.quad	0x3fed1958e217f1fd              # double 0.90934414061445035
	.quad	0x3fe8a95f8ab52799              # double 0.77067544070563365
	.quad	0x3fdbb69de7cea708              # double 0.43302104604173097
	.quad	0x3fc4c8cf93d41404              # double 0.16237826078591422
	.quad	0x3fa461c2a85db970              # double 0.039808352520469437
	.quad	0x3fc4b277c00f9e14              # double 0.16169640424708176
	.quad	0x3fcf788b12c8ea24              # double 0.24586618821361228
	.quad	0x3fef50d56127a7af              # double 0.97861737227980494
	.quad	0x3fc6131e5a1a6144              # double 0.17245845222056222
	.quad	0x3fe4ba8ed9babf7b              # double 0.64777319455423255
	.quad	0x3fee18d0eff5162c              # double 0.94052931658433669
	.quad	0x3fe56335b00d1a3f              # double 0.66836056122776444
	.quad	0x3feb12c13a987588              # double 0.84603940433923785
	.quad	0x3fe067c5fbe71cb4              # double 0.51266764831316047
	.quad	0x3fc36b8d15c0b70c              # double 0.15171969949863529
	.quad	0x3fd2232505394dcc              # double 0.28339505682125998
	.quad	0x3feab0396aaf9258              # double 0.83401175343585532
	.quad	0x3fd75b1c812fd772              # double 0.36493599525362364
	.quad	0x3fe6db30b42284ab              # double 0.71425662214837382
	.quad	0x3fe2710e1e22f31a              # double 0.57630067716636124
	.quad	0x3fc128ad5eecbc3c              # double 0.13405387053487228
	.quad	0x3fecd8061913fb08              # double 0.90137009523445588
	.quad	0x3fdb6b45cc4ebec6              # double 0.42842240287698663
	.quad	0x3fe54025096acf15              # double 0.66408016051579699
	.quad	0x3fdd454f1bb8e884              # double 0.45735528666740088
	.quad	0x3fc69dbcc422b578              # double 0.17668876244480791
	.quad	0x3fe4011d0bebbd81              # double 0.6251359207944206
	.quad	0x3feb26632c1aaab2              # double 0.84843596090407503
	.quad	0x3fe4055d3abc9411              # double 0.62565480682371988
	.quad	0x3fda866041e1c85e              # double 0.41445166047845372
	.quad	0x3fd726123cc0b11e              # double 0.36169868405228722
	.quad	0x3fddf6c43283db92              # double 0.46818642552482814
	.quad	0x3fc427bbc4f8d7d8              # double 0.15746256940627634
	.quad	0x3fed26e7b761724b              # double 0.91099916283162352
	.quad	0x3fd2591971f93ab2              # double 0.2866881955168693
	.quad	0x3febc61ab8fc0f6d              # double 0.86793266420180049
	.quad	0x3fe33495efc4b0d4              # double 0.60016915158987638
	.quad	0x3fe55b218df6f2cd              # double 0.66737439849347313
	.quad	0x3fa020d4b4e04930              # double 0.031500479774097534
	.quad	0x3fb3cd7bd1301070              # double 0.07735418183443854
	.quad	0x3fb1c6e1c8248808              # double 0.069440947878803283
	.quad	0x3fc86ed24ea61148              # double 0.19088200416821111
	.quad	0x3fe161e55824558c              # double 0.54320018019886751
	.quad	0x3fdb375be85873a8              # double 0.42525384607307126
	.quad	0x3fd085e008059480              # double 0.25817108901384955
	.quad	0x3fe5b5f9d373ea3e              # double 0.67846385287641175
	.quad	0x3fe6f8b97c7073d5              # double 0.71786188416046548
	.quad	0x3fead3f94482c0f3              # double 0.83837569600112116
	.quad	0x3fd942b8da1d2142              # double 0.39469739246534996
	.quad	0x3fddd5dd10ef236e              # double 0.46617819455837306
	.quad	0x3fd40081826bdb76              # double 0.31253087746102126
	.quad	0x3fe5767c35b88e83              # double 0.67071352474563672
	.quad	0x3fe0e3758edb40d1              # double 0.52776601697589787
	.quad	0x3fefdcc54461063b              # double 0.99569953303598113
	.quad	0x3fd1881cd8c03a60              # double 0.27393265883521245
	.quad	0x3fe91d986109c054              # double 0.78486269905807626
	.quad	0x3fe90d6eb3707121              # double 0.78288970038150663
	.quad	0x3fdcb3aafe7c85fa              # double 0.44846606113614451
	.quad	0x3fe162c657e516eb              # double 0.54330746809929786
	.quad	0x3fe41ae0b00f7274              # double 0.62828096758637608
	.quad	0x3fe15a198801f243              # double 0.54224850238785682
	.quad	0x3fef318e5a88fe87              # double 0.97479932482379261
	.quad	0x3fed5295742010ad              # double 0.91633103066171417
	.quad	0x3fe0dc6a24d21aff              # double 0.52690608207271328
	.quad	0x3fdac17525ac84d8              # double 0.41805771521656032
	.quad	0x3fbdc479c1f28718              # double 0.11627922997515971
	.quad	0x3fdfd8f132146a94              # double 0.49761609926796635
	.quad	0x3fe54951cd8ebdee              # double 0.66520013950315415
	.quad	0x3fefcb2feb354327              # double 0.99355312289307995
	.quad	0x3fc6f1bd0af24fe4              # double 0.17925227198122606
	.quad	0x3fd28713dc0799ac              # double 0.28949448096536901
	.quad	0x3fe98ffb5187bb9d              # double 0.79882589267605264
	.quad	0x3fc3cc60ad2404c4              # double 0.15467461065421706
	.quad	0x3fef9df1d21395c9              # double 0.98803034811560863
	.quad	0x3fb5701807ab3b08              # double 0.08374166667202243
	.quad	0x3fede63567b458bb              # double 0.93435163740902938
	.quad	0x3fd3c0a781f3d296              # double 0.30863368693034354
	.quad	0x3fef460130e55e13              # double 0.9772954897879934
	.quad	0x3febe9762f57e67b              # double 0.87224873778104894
	.quad	0x3fb80fd3ace3adf0              # double 0.093991498669929063
	.quad	0x3fe5edfd1cb53631              # double 0.68530135733607811
	.quad	0x3fb966a0ffbc1d38              # double 0.099222242770442004
	.quad	0x3fe0d2fd8421480f              # double 0.52575565153733972
	.quad	0x3fbffb420f6a1120              # double 0.12492764355016961
	.quad	0x3fecb0a76374ffbe              # double 0.89656419205856941
	.quad	0x3fcc5db5e7756a2c              # double 0.22160981942836722
	.quad	0x3fd7d97c9f91eb2e              # double 0.37264934142119699
	.quad	0x3fe7982c366e287a              # double 0.73732576971930475
	.quad	0x3fc944d8c5a26800              # double 0.19741353654973182
	.quad	0x3fe25c1659ade037              # double 0.57374112620801199
	.quad	0x3fbe666c02a20320              # double 0.11875033439902127
	.quad	0x3fc68d11eba2c420              # double 0.17618011480001972
	.quad	0x3fd142df59a58326              # double 0.26970657114547902
	.quad	0x3fedb253595eece8              # double 0.92801825957522244
	.quad	0x3fe2efb6b832c43e              # double 0.59176193214637585
	.quad	0x3fde2394143d5402              # double 0.47092153526801905
	.quad	0x3fe56fc473b581c9              # double 0.66989348029533702
	.quad	0x3fc0058c9fa41544              # double 0.12516935152977215
	.quad	0x3fecb2020df608a5              # double 0.89672949530383461
	.quad	0x3fefddb381b8e310              # double 0.99581313454027232
	.quad	0x3fdd5787bef567e2              # double 0.45846742294599896
	.quad	0x3fb56a7989938468              # double 0.083655925834607126
	.quad	0x3fd5fad882637f6c              # double 0.34343540890949131
	.quad	0x3fd47115d45c8c38              # double 0.31940217722348363
	.quad	0x3feac90f5c899916              # double 0.83704345773438393
	.quad	0x3fe98dcd1f1704cc              # double 0.79855972358941462
	.quad	0x3fe5d740d49fbbf8              # double 0.68252603080861629
	.quad	0x3fc2e01456691c18              # double 0.14746336192385523
	.quad	0x3fdaa660018262aa              # double 0.41640472552675567
	.quad	0x3fef17f8fa57d116              # double 0.97167633910297257
	.quad	0x3feb82e70dd41dca              # double 0.85972931576628153
	.quad	0x3feec37b8349e870              # double 0.96136260645222471
	.quad	0x3fd9e20982ea58a2              # double 0.4044212130041932
	.quad	0x3fb6ee94b188eb38              # double 0.089577954619852629
	.quad	0x3fe808e89c0f9774              # double 0.75108747940679032
	.quad	0x3fd0d13a59108a6e              # double 0.2627702588817219
	.quad	0x3fd1c17db3e52d72              # double 0.27743475501912152
	.quad	0x3fe32f3c2d39ed36              # double 0.59951599915749543
	.quad	0x3fd94d49637c7bb2              # double 0.39534220424132649
	.quad	0x3fe14e1c7623223a              # double 0.54078505586318859
	.quad	0x3fe1feb831a3e88f              # double 0.56234368987431249
	.quad	0x3fe78a4d8d70ed2d              # double 0.73563268304079588
	.quad	0x3fdb89ce5a4b5da8              # double 0.43028601472675598
	.quad	0x3fe402f9542590f0              # double 0.62536302981291492
	.quad	0x3fe1c6690ef9e9a2              # double 0.55547001767199711
	.quad	0x3fe06f89eb9f38dd              # double 0.51361557025827731
	.quad	0x3febe5936f1bf7d8              # double 0.87177440358186242
	.quad	0x3feb65f49b254282              # double 0.85619573881020039
	.quad	0x3fb25a9307344908              # double 0.071694554575774672
	.quad	0x3fe419e818238bf3              # double 0.62816242899532282
	.quad	0x3fe5301d79c251ff              # double 0.66212343007151719
	.quad	0x3fe70702c8f94eaa              # double 0.71960582020479547
	.quad	0x3fe74a797dc3b107              # double 0.72784113467562939
	.quad	0x3fbabce678db8200              # double 0.10444488955136677
	.quad	0x3fed48ba546deef5              # double 0.91512791147348926
	.quad	0x3fe4288575e74892              # double 0.62994645145433226
	.quad	0x3fe5af50c0df50e0              # double 0.67765081091286206
	.quad	0x3fe9f461f8da1237              # double 0.81108187297701917
	.quad	0x3fd59b7c3a7a167e              # double 0.33761506758342097
	.quad	0x3fe0bcff4d7a3edb              # double 0.52307095653847158
	.quad	0x3fe929d11ad59440              # double 0.78635459176133082
	.quad	0x3fd9551521b9e430              # double 0.39581802648132491
	.quad	0x3fc0618be8b38878              # double 0.12797688352935999
	.quad	0x3fbce7e83d7a8a60              # double 0.11291362286514461
	.quad	0x3fd716968d295706              # double 0.36075366769124206
	.quad	0x3fd5e191ec48ed78              # double 0.34189270090765644
	.quad	0x3fc0f3f71ed1fdd0              # double 0.13244523053070489
	.quad	0x3febb99967fdca01              # double 0.86640615759671402
	.quad	0x3feb4e68b7a24c9c              # double 0.85332141748439793
	.quad	0x3fc2b656c9f31838              # double 0.14618954525775663
	.quad	0x3fda8bd1624d8238              # double 0.41478380775336943
	.quad	0x3feb29df047db928              # double 0.84886122586411705
	.quad	0x3fe1ce47bc4a062d              # double 0.55643069052911687
	.quad	0x3fe8f2161dc84a5d              # double 0.77955156151649485
	.quad	0x3fc6bca93832c8c4              # double 0.17763247722684217
	.quad	0x3feabbadf9da1969              # double 0.83541010665139226
	.quad	0x3fedaddd692d86d4              # double 0.92747374098345369
	.quad	0x3feb8cc6d7abd678              # double 0.86093465922631562
	.quad	0x3fdc3d4e1322eb50              # double 0.44124175900258411
	.quad	0x3fe668511400efe1              # double 0.70023397356953521
	.quad	0x3fe77ea3f10e127e              # double 0.73420903283165706
	.quad	0x3fbba78ffbc5aaf8              # double 0.1080255498579098
	.quad	0x3fd82b006e1e9f54              # double 0.37762461427563676
	.quad	0x3fe76a89441bf3b2              # double 0.73175490667892107
	.quad	0x3febaf679f3f439d              # double 0.86516171553568066
	.quad	0x3fc38b02c0166d2c              # double 0.15267977122571474
	.quad	0x3fe353175f85bbd5              # double 0.60389298111646872
	.quad	0x3fd694b3c215b0cc              # double 0.35282606080614864
	.quad	0x3fc77aed089b2404              # double 0.1834389011403631
	.quad	0x3fe6d41153c12865              # double 0.71338716848664474
	.quad	0x3fef033b32946176              # double 0.96914443854170318
	.quad	0x3fc45a66cb9013dc              # double 0.15900883617010109
	.quad	0x3fe3f2ea5905c5c3              # double 0.62340276133743833
	.quad	0x3fb5e5a970f664d0              # double 0.085535612181405484
	.quad	0x3fef1f3c6c19399c              # double 0.9725629912662046
	.quad	0x3fe9c9b28c66f496              # double 0.80587127134608028
	.quad	0x3fe3dde35767baa2              # double 0.62083594390226815
	.quad	0x3feee404c4266097              # double 0.96533430395631369
	.quad	0x3fe25b746b90443a              # double 0.57366391190055954
	.quad	0x3fb388e564c26ae8              # double 0.076307618236039709
	.quad	0x3fc92076ef562cf0              # double 0.19630324064596705
	.quad	0x3fbe49acb33e1088              # double 0.11831168533359648
	.quad	0x3fdadf720ad4e016              # double 0.41988802964942928
	.quad	0x3fc7f5550dcb4030              # double 0.18717444585354448
	.quad	0x3fcef144e1ea1328              # double 0.24173794775938373
	.quad	0x3fee04bd1112b8ea              # double 0.93807843527409074
	.quad	0x3fe218177afa20dd              # double 0.56544088381727031
	.quad	0x3fee2e2de5ee8341              # double 0.94313712032826669
	.quad	0x3fe71ac553a68cf1              # double 0.72201792085652816
	.quad	0x3fabad31fe8dfca0              # double 0.05405575020176312
	.quad	0x3fc475474b8355d0              # double 0.159829055663677
	.quad	0x3fd2d6dcc4974312              # double 0.29436415861441489
	.quad	0x3fd583270a5ff3f4              # double 0.33612991345563548
	.quad	0x3fe00eb29629495c              # double 0.5017941410863318
	.quad	0x3fe2f1301b06a8a2              # double 0.59194188383596136
	.quad	0x3feff4ff4fc318f6              # double 0.99865689829382975
	.quad	0x3fc1f8ab407fefa8              # double 0.14040127419855009
	.quad	0x3fab84d8d6cd5780              # double 0.053747917386018251
	.quad	0x3f92b442e265fb40              # double 0.018265767162570556
	.quad	0x3fcdc16dd1a0f864              # double 0.23246548400669831
	.quad	0x3fe664d755170793              # double 0.69980970973141365
	.quad	0x3fe09fcda7c81879              # double 0.51950724382255864
	.quad	0x3fe479fe0c406ff3              # double 0.63989164727126846
	.quad	0x3fd1f54464260d48              # double 0.2805949190153183
	.quad	0x3fdb6bbe4873ed96              # double 0.42845112872574853
	.quad	0x3fdcccc1370a38e4              # double 0.44999723792069646
	.quad	0x3fe56cc24b929bd7              # double 0.66952624092379664
	.quad	0x3fac8bd3c8f4f510              # double 0.055754297524325591
	.quad	0x3fe1c062ac72b8e3              # double 0.55473455125118354
	.quad	0x3fdae9dd5d4b125e              # double 0.42052396879834031
	.quad	0x3fef7b11aa9af2c2              # double 0.98377307244626189
	.quad	0x3fcf9b5200420d60              # double 0.2469274998912665
	.quad	0x3fe34ed1e97addfa              # double 0.60337157823136001
	.quad	0x3fd641c716b5c87e              # double 0.34776475160391118
	.quad	0x3fd1e4778e3cd880              # double 0.27956951990507406
	.quad	0x3fe81ace1efa53bf              # double 0.75327211428031393
	.quad	0x3fed91df750de84e              # double 0.9240567480294517
	.quad	0x3fc28a365fcc0f54              # double 0.14484290769189079
	.quad	0x3fe26de15bb8601c              # double 0.57591312326531208
	.quad	0x3fee9e143da2a45c              # double 0.95679676092289467
	.quad	0x3fef9dd9264125ce              # double 0.98801858398035747
	.quad	0x3fdd8a6f50d0a0f0              # double 0.46157439128957289
	.quad	0x3feb01e6971fd5c2              # double 0.8439820243499343
	.quad	0x3fb1f90580f2fdc8              # double 0.070206016523108095
	.quad	0x3fd0a4e5fa4f48e2              # double 0.26006459659869396
	.quad	0x3fd34a987d951636              # double 0.30142795814421974
	.quad	0x3fd16fa2ce2d88dc              # double 0.27243871817166876
	.quad	0x3fe1b4a3239dbbe4              # double 0.55330044704703285
	.quad	0x3fd9ceeb85322230              # double 0.40325439460187606
	.quad	0x3fd4e5bf05bf12e4              # double 0.32652259408159368
	.quad	0x3faeb59a6425b620              # double 0.059979271626485309
	.quad	0x3fe17aa127493c24              # double 0.54621942208348573
	.quad	0x3fee033984179f5f              # double 0.9378936366965539
	.quad	0x3fd9fb945998e3fa              # double 0.40598019361237869
	.quad	0x3fd0e3789863042e              # double 0.26388373261949283
	.quad	0x3fee072f70d89d20              # double 0.93837711372626486
	.quad	0x3fafcb0513ad70a0              # double 0.062095793392218157
	.quad	0x3fc14b039ee23a7c              # double 0.13510174997323421
	.quad	0x3fbafdcc94094a48              # double 0.10543516744773129
	.quad	0x3fe5277d5c77f219              # double 0.66107051906834891
	.quad	0x3fc6c5411932e560              # double 0.17789472322855726
	.quad	0x3fd60b5b2f817f8a              # double 0.34444312705272095
	.quad	0x3fe8561bcb6090f0              # double 0.76051130029784808
	.quad	0x3fc9ceac0edddc08              # double 0.20161963201437083
	.quad	0x3fc42072ff274558              # double 0.15724027117407036
	.quad	0x3fe9b16b50fd3248              # double 0.80290761774228603
	.quad	0x3fdda7243f81209c              # double 0.46332651330568253
	.quad	0x3fe97b533d342cfc              # double 0.79630433992261329
	.quad	0x3fe96ed8a8585649              # double 0.79478104476829359
	.quad	0x3faaa952e313d980              # double 0.052073087901521653
	.quad	0x3fd2152e4b41de44              # double 0.28254277562470898
	.quad	0x3fd05926e15e1268              # double 0.25544139870206672
	.quad	0x3fc818a1f7829e70              # double 0.18825172982655003
	.quad	0x3fb7ddce3b67d700              # double 0.093228234771085993
	.quad	0x3fe73cf42f8a9d67              # double 0.72619065556947937
	.quad	0x3fe8d1974d2e4342              # double 0.77558484148367079
	.quad	0x3fe7535c90234610              # double 0.72892597343360599
	.quad	0x3fd89d6017461402              # double 0.38460542939020581
	.quad	0x3fede0e5f0444259              # double 0.93370339324071516
	.quad	0x3fc024a831d61894              # double 0.12611868317998598
	.quad	0x3fed60dfd7d9f6df              # double 0.91807548674088568
	.quad	0x3fe0aebd76007096              # double 0.52133057639322788
	.quad	0x3fe8b439256e83d2              # double 0.77199990568999
	.quad	0x3fe568dd9172e2ef              # double 0.66905096443141854
	.quad	0x3fe3947c15faeb55              # double 0.61187557499884326
	.quad	0x3fe4019a936e0b04              # double 0.62519577784436864
	.quad	0x3fe9fdaa08774896              # double 0.8122148671484577
	.quad	0x3fe15fb49ec10aed              # double 0.54293280607848049
	.quad	0x3fd7068710f51dd4              # double 0.3597734132385686
	.quad	0x3fe9f3b0d17667c5              # double 0.81099739943169225
	.quad	0x3fdde80d9d9d4876              # double 0.46728840248136494
	.quad	0x3fd8f929d0c8d036              # double 0.3902077235136433
	.quad	0x3fee0af289c02c9b              # double 0.93883635429792223
	.quad	0x3fe250919d6029d2              # double 0.57233505952290842
	.quad	0x3fe16f08d17c73d2              # double 0.54480400958311237
	.quad	0x3fda0f36b0ea847e              # double 0.40717856671296448
	.quad	0x3fe404c8ca5fb8d6              # double 0.6255840256324301
	.quad	0x3fe8887147453966              # double 0.76665557785035499
	.quad	0x3fdbeb0fccdfc062              # double 0.43622202880124494
	.quad	0x3fe70e027f75d9f0              # double 0.72046017546273156
	.quad	0x3fcacfdad6799f98              # double 0.20946822616974425
	.quad	0x3fe9ea5dbab3da89              # double 0.8098591467413182
	.quad	0x3fe08ca0370983fb              # double 0.51716624021003044
	.quad	0x3fc6be3ff2f2f2cc              # double 0.17768096316094384
	.quad	0x3fe96ccf987d8d9d              # double 0.79453258307733032
	.quad	0x3fe2d72bf42831f7              # double 0.58876607596317754
	.quad	0x3fdfc88425c29516              # double 0.49661353766926319
	.quad	0x3fe8d5957fba2ab8              # double 0.77607226320954847
	.quad	0x3fe84d1a4d39052e              # double 0.75941195566716657
	.quad	0x3fc0c8a4daee420c              # double 0.13112316789603573
	.quad	0x3fe2666bb3582b57              # double 0.57500252750592551
	.quad	0x3fddc084f1338cd2              # double 0.46487544588871998
	.quad	0x3fd12d38ad4d324e              # double 0.26838509487132434
	.quad	0x3fe3092b7dc8ec9b              # double 0.59486937110286264
	.quad	0x3fe10292563316ed              # double 0.53156391940930592
	.quad	0x3fe60fa1196e577f              # double 0.68940787283894156
	.quad	0x3fc4d08d86a0df14              # double 0.16261452745106253
	.quad	0x3fd600cc707a7552              # double 0.34379874214376571
	.quad	0x3fdc9a65fa5fb1ee              # double 0.44692372751776943
	.quad	0x3fd2ac1d3c423dee              # double 0.2917550171341351
	.quad	0x3fe09537410d1ebb              # double 0.51821482377359673
	.quad	0x3fee24982fae4ec4              # double 0.94196709931062416
	.quad	0x3fc943c02cec2268              # double 0.19738008683659136
	.quad	0x3fd894c4f23d3e8a              # double 0.3840801587693724
	.quad	0x3fe773c61cc3230d              # double 0.73288255326869634
	.quad	0x3fcf22027e9dc2d8              # double 0.24322539503511709
	.quad	0x3fc22c54b5401dfc              # double 0.14197787141914364
	.quad	0x3fb3a17839b854b0              # double 0.07668258103543013
	.quad	0x3fc26ff5a81843ec              # double 0.14404173572304957
	.quad	0x3feeb06eb6a710c5              # double 0.95903716730438104
	.quad	0x3fe770071c6c6713              # double 0.73242526580290457
	.quad	0x3fec7dc3cf71dc54              # double 0.89035215870434081
	.quad	0x3f989fa4c30b11a0              # double 0.024046492008680809
	.quad	0x3fe593a128cc7d40              # double 0.67427118271363184
	.quad	0x3fc6691c5c3dd17c              # double 0.17508272651651768
	.quad	0x3fadf99cae0208a0              # double 0.058545013657764544
	.quad	0x3fee0ffdfe7bb754              # double 0.93945216850054658
	.quad	0x3fbf1efe058efa98              # double 0.1215666545458397
	.quad	0x3f941d87a19dfde0              # double 0.019643897284820855
	.quad	0x3fd00a9e5fd89d0a              # double 0.25064811096167772
	.quad	0x3fd00a05c746edba              # double 0.25061172924662467
	.quad	0x3fd52ee383c846ac              # double 0.3309868609368134
	.quad	0x3fdc9c73275c619e              # double 0.44704893916925836
	.quad	0x3fd86960b3096648              # double 0.38143174633077992
	.quad	0x3fea52acab9ed407              # double 0.82259210128415894
	.quad	0x3fe022e14554aa81              # double 0.50425780812413745
	.quad	0x3fd482a785d32b5c              # double 0.32047451084934209
	.quad	0x3fe9881b9d33e3ea              # double 0.79786472991611146
	.quad	0x3fc5f04e14820108              # double 0.17139602662428666
	.quad	0x3fd1f333de805e88              # double 0.2804689095369004
	.quad	0x3fb518aa7fd8aea8              # double 0.08240762349367492
	.quad	0x3fcae35ec004bab4              # double 0.2100637853231625
	.quad	0x3feca8a33c1540c6              # double 0.89558564887013214
	.quad	0x3fed66c7d5e782ba              # double 0.91879646089736089
	.quad	0x3fdc2c93a5fa08f4              # double 0.44022074898397467
	.quad	0x3fbcdda626e04458              # double 0.11275709580537929
	.quad	0x3fedbcef1dfd5d18              # double 0.92931323869098303
	.quad	0x3fe5929b62c0b0a9              # double 0.67414635932575095
	.quad	0x3fedc4905420962d              # double 0.93024460250007268
	.quad	0x3fc2c396b01fc5f0              # double 0.14659389114198929
	.quad	0x3fc4a86f7f0305a8              # double 0.16139024450062078
	.quad	0x3fd6642f08c4f0fc              # double 0.34986472946526681
	.quad	0x3fc4106141fbc240              # double 0.15674987527701667
	.quad	0x3fd6c5bb58d06e32              # double 0.35581859277019412
	.quad	0x3fd7b66553f148d2              # double 0.37050755689155068
	.quad	0x3fce1ca82d7486f8              # double 0.23524954051486424
	.quad	0x3fe08338da7a082a              # double 0.51601832076290077
	.quad	0x3fdb4221fb796e68              # double 0.42591142232934098
	.quad	0x3fe37dbabf90a765              # double 0.60909783759164482
	.quad	0x3fd0628a8cf7751c              # double 0.25601447836182145
	.quad	0x3fbab2aa0fbc02e8              # double 0.1042887009061918
	.quad	0x3fd6b9a1d080a126              # double 0.35508008348053222
	.quad	0x3fd56150afcab916              # double 0.33406464736153063
	.quad	0x3fcbc309a5559ccc              # double 0.21688957760782157
	.quad	0x3fe456975ec59f22              # double 0.63557022581241918
	.quad	0x3fb054ae5e26e2d0              # double 0.06379213141088802
	.quad	0x3fe462d36fe564c4              # double 0.63706371168805065
	.quad	0x3fd31aaf14206f44              # double 0.29850365605829077
	.quad	0x3fdbc1c793be20de              # double 0.43370236804959272
	.quad	0x3fde4e612713c880              # double 0.47353390518322414
	.quad	0x3fe9f925a42e3963              # double 0.81166345659748307
	.quad	0x3fd770c18727f634              # double 0.3662570781596941
	.quad	0x3faa2ccc690985f0              # double 0.051123035261081529
	.quad	0x3fc1958ad8289d5c              # double 0.13737617067929875
	.quad	0x3fb97c8544640398              # double 0.099556283184951133
	.quad	0x3fdaea226eb2eabe              # double 0.42054043589056878
	.quad	0x3fd9a85b373260b8              # double 0.40090065374671324
	.quad	0x3fec560512a8e99b              # double 0.88550046581740405
	.quad	0x3fdea8ce027a9d9e              # double 0.47905302278601336
	.quad	0x3fe0f12f88ce435f              # double 0.52944161147943791
	.quad	0x3faf5924285de7e0              # double 0.061226968696203476
	.quad	0x3fdf7b528a25f4de              # double 0.49190200320283661
	.quad	0x3fd8ec01aadd422e              # double 0.38940469442335057
	.quad	0x3feba1fe811798b6              # double 0.86352467740359518
	.quad	0x3fe575e69981beec              # double 0.67064218503761941
	.quad	0x3fd337d7ed6a4826              # double 0.30028341469835806
	.quad	0x3fdf61d0ec1a8920              # double 0.49034522110936685
	.quad	0x3fe15cc0f3fd9a85              # double 0.54257247595235525
	.quad	0x3fe645567fc7c2ac              # double 0.69596409756748789
	.quad	0x3feb70a504a797f6              # double 0.85750056180108802
	.quad	0x3fd639ad73e462cc              # double 0.34727035825339381
	.quad	0x3fd1206b54b9bbca              # double 0.26760371469475486
	.quad	0x3fe81532ccafcbee              # double 0.75258769967910921
	.quad	0x3fe70361449c8dae              # double 0.71916259194079202
	.quad	0x3fddcd79f9827036              # double 0.46566628805317423
	.quad	0x3fabd4544f9ac350              # double 0.054354319302894027
	.quad	0x3fe1f173dd0e4a72              # double 0.56072419333425061
	.quad	0x3fd6cb4eb5650440              # double 0.35615890230480218
	.quad	0x3fb67861e875cf70              # double 0.087774390461900386
	.quad	0x3f90f104394cb4c0              # double 0.01654440498093801
	.quad	0x3fea4397aca66459              # double 0.82075103493401536
	.quad	0x3fe14a428863ceae              # double 0.5403149284233757
	.quad	0x3fe764f4c2fc4da7              # double 0.73107374270550884
	.quad	0x3fe960b97e59586e              # double 0.79305720021762993
	.quad	0x3fe12896cfe418ee              # double 0.53620472530090324
	.quad	0x3fce01dc0c7617cc              # double 0.23443174942457146
	.quad	0x3fb8bfe48d236e88              # double 0.096678051431292045
	.quad	0x3fe21c9c819c7cf2              # double 0.56599259676650449
	.quad	0x3feb0ff04f66abab              # double 0.84569564350146231
	.quad	0x3fe06acfda247669              # double 0.51303856473869047
	.quad	0x3f781cf354cc6700              # double 0.0058869843603817085
	.quad	0x3fc431f8fc963550              # double 0.15777504285180521
	.quad	0x3fee8ab5e9409642              # double 0.95443244511688641
	.quad	0x3fd095fe2d61e660              # double 0.25915483886601542
	.quad	0x3fc61cd70c689d78              # double 0.17275512796298265
	.quad	0x3fdf57d8b5378616              # double 0.48973672577821625
	.quad	0x3fdeb136dfee22ea              # double 0.47956630581079074
	.quad	0x3fe96ce3268c8733              # double 0.79454190758790444
	.quad	0x3fe414a58dece828              # double 0.62752034873779383
	.quad	0x3fae9124bc5d9730              # double 0.059701107019277777
	.quad	0x3fec78e726c68d1b              # double 0.88975865910871066
	.quad	0x3fe30a3029b5dfe3              # double 0.59499366900035644
	.quad	0x3fc832e1a51bf5c0              # double 0.1890527778813702
	.quad	0x3fe548b63967d13a              # double 0.66512595378893669
	.quad	0x3fe7556cc3f60a3c              # double 0.72917783998156649
	.quad	0x3fbc160bc9efe280              # double 0.10971139602760083
	.quad	0x3fcf91be744519ac              # double 0.24663525273554165
	.quad	0x3fef82c9ed0c45e2              # double 0.98471542642999688
	.quad	0x3fe25f7d953771e1              # double 0.57415656226981693
	.quad	0x3fd3edb01bf66d58              # double 0.31138231974337804
	.quad	0x3fbdbf4111461bc0              # double 0.11619955703473206
	.quad	0x3fb0519b2b701ff8              # double 0.063745210747697345
	.quad	0x3fbaecde6c6b7ca0              # double 0.10517683169335834
	.quad	0x3fee1bb8e3e0c92d              # double 0.94088406093059052
	.quad	0x3fe88502db7184e7              # double 0.76623671398206461
	.quad	0x3fd339a7079f6abc              # double 0.3003938269081734
	.quad	0x3fefde50f9339fd5              # double 0.99588822052191494
	.quad	0x3feb80d20a369d5b              # double 0.85947515482704817
	.quad	0x3fc3102d826214e0              # double 0.14893120638240642
	.quad	0x3fe3bdd1a8437de6              # double 0.61692126144401693
	.quad	0x3fd0320f380c2802              # double 0.25305538628947499
	.quad	0x3fe332eb771a4673              # double 0.59996579420312768
	.quad	0x3fd5fb6cd7b47848              # double 0.343470774316192
	.quad	0x3fd36344e0cacbc6              # double 0.30293390228615313
	.quad	0x3fe84bdc43388146              # double 0.75926030282065748
	.quad	0x3fdafe77e1622716              # double 0.42178151140306974
	.quad	0x3fb7314f2304bde0              # double 0.090596147584384834
	.quad	0x3fe2ccbef8766b67              # double 0.58749340560767116
	.quad	0x3fe67872e6b58322              # double 0.70220322666509483
	.quad	0x3fd197085fd5bcfe              # double 0.27484330519560263
	.quad	0x3fe9b4d5afc55a38              # double 0.8033245499635262
	.quad	0x3fbe1b812c57ca58              # double 0.11760718662825675
	.quad	0x3fb0526703795e80              # double 0.063757360790413387
	.quad	0x3feedb6d7f5d4f82              # double 0.9642856109226019
	.quad	0x3fefb90055e3172d              # double 0.99133316778963875
	.quad	0x3fca4f13ddf5cea4              # double 0.20553825700664163
	.quad	0x3fc137d6fd1ac49c              # double 0.13451659544583527
	.quad	0x3f92aad7a954a240              # double 0.018229837141151117
	.quad	0x3fe743b122356302              # double 0.72701317483287675
	.quad	0x3fe35cd5b664dc6e              # double 0.60508237479997518
	.quad	0x3fd7d348445cc3d6              # double 0.37227064777385743
	.quad	0x3fde72a66bee787e              # double 0.4757476858156976
	.quad	0x3fc2ea2792d1a5cc              # double 0.14777083081143727
	.quad	0x3fe46688d9466c5d              # double 0.63751642643490991
	.quad	0x3fb68560af8ba0d8              # double 0.087972681863564772
	.quad	0x3feb00c970934eae              # double 0.84384605395685752
	.quad	0x3fda698e136a4eee              # double 0.41269256492635875
	.quad	0x3fe92ff719d432a3              # double 0.7871051315756471
	.quad	0x3febeafa12428447              # double 0.87243369642613622
	.quad	0x3fcfdadb407ad32c              # double 0.24886646889140118
	.quad	0x3fee3a61f010b43b              # double 0.9446267784857193
	.quad	0x3fd9a741533796aa              # double 0.40083344580339519
	.quad	0x3fef94158f9f49e4              # double 0.98682668734755596
	.quad	0x3fda68f8101a65f6              # double 0.41265679905481478
	.quad	0x3fa7e56b3653a9e0              # double 0.046672201520624901
	.quad	0x3fdad07ed72b545c              # double 0.41897555363295225
	.quad	0x3fd655226e62bc6c              # double 0.34894619731762222
	.quad	0x3fe0d4d0f1a994d0              # double 0.52597853851025356
	.quad	0x3fa081701635b560              # double 0.032237532340199548
	.quad	0x3fcb4d10432b2e1c              # double 0.21328929214210823
	.quad	0x3fc03b6bc7cb42f8              # double 0.1268133855396838
	.quad	0x3fed06b858178384              # double 0.90707032399596743
	.quad	0x3fe09efd2fb24fd2              # double 0.51940783801773649
	.quad	0x3fc3f8beaf02bba0              # double 0.15602859063571106
	.quad	0x3fe4d311634530a9              # double 0.65076512707448331
	.quad	0x3fee2f00b9ee291c              # double 0.94323765100969891
	.quad	0x3feab0c82f06e3ad              # double 0.83407983002608932
	.quad	0x3feabe7119830057              # double 0.83574728949316579
	.quad	0x3fe6cc82d3d14a0d              # double 0.71246472712147269
	.quad	0x3fea3b06cefc54bb              # double 0.81970539500129946
	.quad	0x3fefe0842ba53b17              # double 0.99615677380083667
	.quad	0x3fbb08dd7a2eaa38              # double 0.10560402138677538
	.quad	0x3fe44dab51d30dac              # double 0.63448110562642546
	.quad	0x3fbd7c194f3ecf80              # double 0.11517484841061609
	.quad	0x3fd89a32828f9314              # double 0.38441145658571085
	.quad	0x3feaa4b290cadeb7              # double 0.83260467796113502
	.quad	0x3fe0ad6cb47cc1b9              # double 0.52116999865943747
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
