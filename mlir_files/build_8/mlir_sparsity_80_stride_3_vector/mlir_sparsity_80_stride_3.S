	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"LLVMDialectModule"
	.text
	.globl	sparse_dense_matmul             # -- Begin function sparse_dense_matmul
	.p2align	1
	.type	sparse_dense_matmul,@function
sparse_dense_matmul:                    # @sparse_dense_matmul
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
	.size	sparse_dense_matmul, .Lfunc_end0-sparse_dense_matmul
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
	call	assemble_sparse_tensor
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
	call	sparse_dense_matmul
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
	.p2align	5, 0x0                          # -- Begin function assemble_sparse_tensor
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
	.globl	assemble_sparse_tensor
	.p2align	1
	.type	assemble_sparse_tensor,@function
assemble_sparse_tensor:                 # @assemble_sparse_tensor
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
	.size	assemble_sparse_tensor, .Lfunc_end2-assemble_sparse_tensor
	.cfi_endproc
                                        # -- End function
	.type	.L__constant_101xindex,@object  # @__constant_101xindex
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
.L__constant_101xindex:
	.quad	0                               # 0x0
	.quad	39                              # 0x27
	.quad	52                              # 0x34
	.quad	57                              # 0x39
	.quad	100                             # 0x64
	.quad	108                             # 0x6c
	.quad	118                             # 0x76
	.quad	160                             # 0xa0
	.quad	169                             # 0xa9
	.quad	181                             # 0xb5
	.quad	218                             # 0xda
	.quad	228                             # 0xe4
	.quad	238                             # 0xee
	.quad	279                             # 0x117
	.quad	288                             # 0x120
	.quad	297                             # 0x129
	.quad	336                             # 0x150
	.quad	345                             # 0x159
	.quad	353                             # 0x161
	.quad	394                             # 0x18a
	.quad	405                             # 0x195
	.quad	415                             # 0x19f
	.quad	454                             # 0x1c6
	.quad	466                             # 0x1d2
	.quad	475                             # 0x1db
	.quad	516                             # 0x204
	.quad	527                             # 0x20f
	.quad	537                             # 0x219
	.quad	576                             # 0x240
	.quad	590                             # 0x24e
	.quad	599                             # 0x257
	.quad	643                             # 0x283
	.quad	654                             # 0x28e
	.quad	665                             # 0x299
	.quad	707                             # 0x2c3
	.quad	712                             # 0x2c8
	.quad	720                             # 0x2d0
	.quad	760                             # 0x2f8
	.quad	771                             # 0x303
	.quad	782                             # 0x30e
	.quad	819                             # 0x333
	.quad	832                             # 0x340
	.quad	840                             # 0x348
	.quad	880                             # 0x370
	.quad	895                             # 0x37f
	.quad	906                             # 0x38a
	.quad	943                             # 0x3af
	.quad	949                             # 0x3b5
	.quad	960                             # 0x3c0
	.quad	997                             # 0x3e5
	.quad	1011                            # 0x3f3
	.quad	1017                            # 0x3f9
	.quad	1056                            # 0x420
	.quad	1066                            # 0x42a
	.quad	1073                            # 0x431
	.quad	1113                            # 0x459
	.quad	1125                            # 0x465
	.quad	1132                            # 0x46c
	.quad	1174                            # 0x496
	.quad	1179                            # 0x49b
	.quad	1190                            # 0x4a6
	.quad	1228                            # 0x4cc
	.quad	1237                            # 0x4d5
	.quad	1250                            # 0x4e2
	.quad	1291                            # 0x50b
	.quad	1306                            # 0x51a
	.quad	1316                            # 0x524
	.quad	1358                            # 0x54e
	.quad	1368                            # 0x558
	.quad	1377                            # 0x561
	.quad	1415                            # 0x587
	.quad	1422                            # 0x58e
	.quad	1431                            # 0x597
	.quad	1469                            # 0x5bd
	.quad	1480                            # 0x5c8
	.quad	1487                            # 0x5cf
	.quad	1525                            # 0x5f5
	.quad	1534                            # 0x5fe
	.quad	1543                            # 0x607
	.quad	1582                            # 0x62e
	.quad	1590                            # 0x636
	.quad	1600                            # 0x640
	.quad	1642                            # 0x66a
	.quad	1657                            # 0x679
	.quad	1670                            # 0x686
	.quad	1712                            # 0x6b0
	.quad	1725                            # 0x6bd
	.quad	1738                            # 0x6ca
	.quad	1777                            # 0x6f1
	.quad	1788                            # 0x6fc
	.quad	1793                            # 0x701
	.quad	1834                            # 0x72a
	.quad	1839                            # 0x72f
	.quad	1845                            # 0x735
	.quad	1883                            # 0x75b
	.quad	1894                            # 0x766
	.quad	1902                            # 0x76e
	.quad	1943                            # 0x797
	.quad	1953                            # 0x7a1
	.quad	1961                            # 0x7a9
	.quad	1999                            # 0x7cf
	.size	.L__constant_101xindex, 808

	.type	.L__constant_1999xindex,@object # @__constant_1999xindex
	.p2align	6, 0x0
.L__constant_1999xindex:
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	7                               # 0x7
	.quad	21                              # 0x15
	.quad	31                              # 0x1f
	.quad	54                              # 0x36
	.quad	59                              # 0x3b
	.quad	61                              # 0x3d
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	71                              # 0x47
	.quad	77                              # 0x4d
	.quad	94                              # 0x5e
	.quad	13                              # 0xd
	.quad	47                              # 0x2f
	.quad	52                              # 0x34
	.quad	53                              # 0x35
	.quad	82                              # 0x52
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	46                              # 0x2e
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	16                              # 0x10
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	86                              # 0x56
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
	.quad	87                              # 0x57
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	10                              # 0xa
	.quad	26                              # 0x1a
	.quad	34                              # 0x22
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	50                              # 0x32
	.quad	53                              # 0x35
	.quad	74                              # 0x4a
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	8                               # 0x8
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	57                              # 0x39
	.quad	63                              # 0x3f
	.quad	65                              # 0x41
	.quad	93                              # 0x5d
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
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
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	41                              # 0x29
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
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	10                              # 0xa
	.quad	15                              # 0xf
	.quad	34                              # 0x22
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	77                              # 0x4d
	.quad	89                              # 0x59
	.quad	96                              # 0x60
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	11                              # 0xb
	.quad	25                              # 0x19
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	40                              # 0x28
	.quad	47                              # 0x2f
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
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
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	9                               # 0x9
	.quad	28                              # 0x1c
	.quad	33                              # 0x21
	.quad	42                              # 0x2a
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	66                              # 0x42
	.quad	88                              # 0x58
	.quad	6                               # 0x6
	.quad	11                              # 0xb
	.quad	19                              # 0x13
	.quad	29                              # 0x1d
	.quad	37                              # 0x25
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
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
	.quad	7                               # 0x7
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	89                              # 0x59
	.quad	8                               # 0x8
	.quad	55                              # 0x37
	.quad	58                              # 0x3a
	.quad	65                              # 0x41
	.quad	67                              # 0x43
	.quad	78                              # 0x4e
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	12                              # 0xc
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	55                              # 0x37
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	96                              # 0x60
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	26                              # 0x1a
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	82                              # 0x52
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
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
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	28                              # 0x1c
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	60                              # 0x3c
	.quad	90                              # 0x5a
	.quad	16                              # 0x10
	.quad	19                              # 0x13
	.quad	35                              # 0x23
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	85                              # 0x55
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	6                               # 0x6
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	56                              # 0x38
	.quad	62                              # 0x3e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	29                              # 0x1d
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	51                              # 0x33
	.quad	81                              # 0x51
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	23                              # 0x17
	.quad	31                              # 0x1f
	.quad	50                              # 0x32
	.quad	55                              # 0x37
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	62                              # 0x3e
	.quad	84                              # 0x54
	.quad	93                              # 0x5d
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	20                              # 0x14
	.quad	29                              # 0x1d
	.quad	36                              # 0x24
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	66                              # 0x42
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	6                               # 0x6
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	22                              # 0x16
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	17                              # 0x11
	.quad	43                              # 0x2b
	.quad	67                              # 0x43
	.quad	71                              # 0x47
	.quad	80                              # 0x50
	.quad	11                              # 0xb
	.quad	26                              # 0x1a
	.quad	30                              # 0x1e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	65                              # 0x41
	.quad	69                              # 0x45
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	14                              # 0xe
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	37                              # 0x25
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	65                              # 0x41
	.quad	92                              # 0x5c
	.quad	94                              # 0x5e
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	10                              # 0xa
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
	.quad	43                              # 0x2b
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	21                              # 0x15
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	46                              # 0x2e
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	65                              # 0x41
	.quad	78                              # 0x4e
	.quad	80                              # 0x50
	.quad	87                              # 0x57
	.quad	89                              # 0x59
	.quad	1                               # 0x1
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	12                              # 0xc
	.quad	28                              # 0x1c
	.quad	54                              # 0x36
	.quad	92                              # 0x5c
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	50                              # 0x32
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	11                              # 0xb
	.quad	14                              # 0xe
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	30                              # 0x1e
	.quad	38                              # 0x26
	.quad	40                              # 0x28
	.quad	43                              # 0x2b
	.quad	52                              # 0x34
	.quad	55                              # 0x37
	.quad	78                              # 0x4e
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	89                              # 0x59
	.quad	99                              # 0x63
	.quad	13                              # 0xd
	.quad	19                              # 0x13
	.quad	32                              # 0x20
	.quad	37                              # 0x25
	.quad	40                              # 0x28
	.quad	46                              # 0x2e
	.quad	52                              # 0x34
	.quad	60                              # 0x3c
	.quad	84                              # 0x54
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
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
	.quad	31                              # 0x1f
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
	.quad	80                              # 0x50
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	34                              # 0x22
	.quad	77                              # 0x4d
	.quad	6                               # 0x6
	.quad	14                              # 0xe
	.quad	24                              # 0x18
	.quad	29                              # 0x1d
	.quad	35                              # 0x23
	.quad	37                              # 0x25
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	72                              # 0x48
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	2                               # 0x2
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
	.quad	49                              # 0x31
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
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	21                              # 0x15
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	35                              # 0x23
	.quad	38                              # 0x26
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	67                              # 0x43
	.quad	80                              # 0x50
	.quad	94                              # 0x5e
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	46                              # 0x2e
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
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
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	25                              # 0x19
	.quad	31                              # 0x1f
	.quad	52                              # 0x34
	.quad	56                              # 0x38
	.quad	58                              # 0x3a
	.quad	80                              # 0x50
	.quad	85                              # 0x55
	.quad	99                              # 0x63
	.quad	7                               # 0x7
	.quad	20                              # 0x14
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	39                              # 0x27
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	8                               # 0x8
	.quad	9                               # 0x9
	.quad	33                              # 0x21
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	56                              # 0x38
	.quad	68                              # 0x44
	.quad	74                              # 0x4a
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	96                              # 0x60
	.quad	27                              # 0x1b
	.quad	40                              # 0x28
	.quad	56                              # 0x38
	.quad	67                              # 0x43
	.quad	84                              # 0x54
	.quad	95                              # 0x5f
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	28                              # 0x1c
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	49                              # 0x31
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	60                              # 0x3c
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	6                               # 0x6
	.quad	30                              # 0x1e
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	68                              # 0x44
	.quad	1                               # 0x1
	.quad	13                              # 0xd
	.quad	14                              # 0xe
	.quad	16                              # 0x10
	.quad	51                              # 0x33
	.quad	57                              # 0x39
	.quad	59                              # 0x3b
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	79                              # 0x4f
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
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
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	1                               # 0x1
	.quad	18                              # 0x12
	.quad	22                              # 0x16
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	42                              # 0x2a
	.quad	78                              # 0x4e
	.quad	90                              # 0x5a
	.quad	94                              # 0x5e
	.quad	17                              # 0x11
	.quad	27                              # 0x1b
	.quad	33                              # 0x21
	.quad	38                              # 0x26
	.quad	48                              # 0x30
	.quad	58                              # 0x3a
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	75                              # 0x4b
	.quad	84                              # 0x54
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	16                              # 0x10
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
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	97                              # 0x61
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	10                              # 0xa
	.quad	12                              # 0xc
	.quad	14                              # 0xe
	.quad	15                              # 0xf
	.quad	17                              # 0x11
	.quad	31                              # 0x1f
	.quad	32                              # 0x20
	.quad	43                              # 0x2b
	.quad	44                              # 0x2c
	.quad	52                              # 0x34
	.quad	62                              # 0x3e
	.quad	64                              # 0x40
	.quad	68                              # 0x44
	.quad	81                              # 0x51
	.quad	0                               # 0x0
	.quad	4                               # 0x4
	.quad	39                              # 0x27
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	83                              # 0x53
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	95                              # 0x5f
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	11                              # 0xb
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	53                              # 0x35
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	70                              # 0x46
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	5                               # 0x5
	.quad	27                              # 0x1b
	.quad	39                              # 0x27
	.quad	49                              # 0x31
	.quad	58                              # 0x3a
	.quad	73                              # 0x49
	.quad	80                              # 0x50
	.quad	83                              # 0x53
	.quad	93                              # 0x5d
	.quad	22                              # 0x16
	.quad	39                              # 0x27
	.quad	53                              # 0x35
	.quad	55                              # 0x37
	.quad	65                              # 0x41
	.quad	77                              # 0x4d
	.quad	82                              # 0x52
	.quad	90                              # 0x5a
	.quad	97                              # 0x61
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
	.quad	29                              # 0x1d
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	37                              # 0x25
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
	.quad	71                              # 0x47
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	4                               # 0x4
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	62                              # 0x3e
	.quad	71                              # 0x47
	.quad	89                              # 0x59
	.quad	9                               # 0x9
	.quad	14                              # 0xe
	.quad	31                              # 0x1f
	.quad	56                              # 0x38
	.quad	63                              # 0x3f
	.quad	68                              # 0x44
	.quad	79                              # 0x4f
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	1                               # 0x1
	.quad	7                               # 0x7
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	25                              # 0x19
	.quad	39                              # 0x27
	.quad	50                              # 0x32
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	70                              # 0x46
	.quad	94                              # 0x5e
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	27                              # 0x1b
	.quad	78                              # 0x4e
	.quad	87                              # 0x57
	.quad	88                              # 0x58
	.quad	91                              # 0x5b
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	25                              # 0x19
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	39                              # 0x27
	.quad	40                              # 0x28
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	61                              # 0x3d
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
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	33                              # 0x21
	.quad	37                              # 0x25
	.quad	42                              # 0x2a
	.quad	44                              # 0x2c
	.quad	54                              # 0x36
	.quad	65                              # 0x41
	.quad	82                              # 0x52
	.quad	18                              # 0x12
	.quad	26                              # 0x1a
	.quad	27                              # 0x1b
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	60                              # 0x3c
	.quad	70                              # 0x46
	.quad	76                              # 0x4c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	47                              # 0x2f
	.quad	48                              # 0x30
	.quad	49                              # 0x31
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
	.quad	91                              # 0x5b
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	3                               # 0x3
	.quad	15                              # 0xf
	.quad	37                              # 0x25
	.quad	50                              # 0x32
	.quad	64                              # 0x40
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	6                               # 0x6
	.quad	7                               # 0x7
	.quad	10                              # 0xa
	.quad	11                              # 0xb
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	38                              # 0x26
	.quad	42                              # 0x2a
	.quad	43                              # 0x2b
	.quad	80                              # 0x50
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	34                              # 0x22
	.quad	36                              # 0x24
	.quad	38                              # 0x26
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
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	95                              # 0x5f
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	4                               # 0x4
	.quad	7                               # 0x7
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	28                              # 0x1c
	.quad	34                              # 0x22
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	81                              # 0x51
	.quad	85                              # 0x55
	.quad	90                              # 0x5a
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	19                              # 0x13
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	71                              # 0x47
	.quad	74                              # 0x4a
	.quad	76                              # 0x4c
	.quad	85                              # 0x55
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	59                              # 0x3b
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	83                              # 0x53
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	2                               # 0x2
	.quad	5                               # 0x5
	.quad	26                              # 0x1a
	.quad	29                              # 0x1d
	.quad	38                              # 0x26
	.quad	41                              # 0x29
	.quad	44                              # 0x2c
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	50                              # 0x32
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	94                              # 0x5e
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	8                               # 0x8
	.quad	14                              # 0xe
	.quad	36                              # 0x24
	.quad	38                              # 0x26
	.quad	53                              # 0x35
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
	.quad	61                              # 0x3d
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	67                              # 0x43
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	16                              # 0x10
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	35                              # 0x23
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	58                              # 0x3a
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
	.quad	89                              # 0x59
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	18                              # 0x12
	.quad	32                              # 0x20
	.quad	36                              # 0x24
	.quad	50                              # 0x32
	.quad	56                              # 0x38
	.quad	57                              # 0x39
	.quad	61                              # 0x3d
	.quad	76                              # 0x4c
	.quad	95                              # 0x5f
	.quad	98                              # 0x62
	.quad	34                              # 0x22
	.quad	46                              # 0x2e
	.quad	47                              # 0x2f
	.quad	92                              # 0x5c
	.quad	99                              # 0x63
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	19                              # 0x13
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
	.quad	62                              # 0x3e
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	76                              # 0x4c
	.quad	77                              # 0x4d
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	82                              # 0x52
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	98                              # 0x62
	.quad	99                              # 0x63
	.quad	5                               # 0x5
	.quad	28                              # 0x1c
	.quad	58                              # 0x3a
	.quad	74                              # 0x4a
	.quad	97                              # 0x61
	.quad	10                              # 0xa
	.quad	29                              # 0x1d
	.quad	47                              # 0x2f
	.quad	63                              # 0x3f
	.quad	82                              # 0x52
	.quad	94                              # 0x5e
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	20                              # 0x14
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	32                              # 0x20
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
	.quad	65                              # 0x41
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	92                              # 0x5c
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	19                              # 0x13
	.quad	26                              # 0x1a
	.quad	35                              # 0x23
	.quad	40                              # 0x28
	.quad	62                              # 0x3e
	.quad	73                              # 0x49
	.quad	78                              # 0x4e
	.quad	85                              # 0x55
	.quad	88                              # 0x58
	.quad	90                              # 0x5a
	.quad	98                              # 0x62
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	39                              # 0x27
	.quad	56                              # 0x38
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	13                              # 0xd
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	31                              # 0x1f
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	55                              # 0x37
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	73                              # 0x49
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	79                              # 0x4f
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	85                              # 0x55
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	94                              # 0x5e
	.quad	96                              # 0x60
	.quad	99                              # 0x63
	.quad	31                              # 0x1f
	.quad	46                              # 0x2e
	.quad	49                              # 0x31
	.quad	52                              # 0x34
	.quad	64                              # 0x40
	.quad	67                              # 0x43
	.quad	69                              # 0x45
	.quad	78                              # 0x4e
	.quad	89                              # 0x59
	.quad	95                              # 0x5f
	.quad	10                              # 0xa
	.quad	19                              # 0x13
	.quad	37                              # 0x25
	.quad	41                              # 0x29
	.quad	66                              # 0x42
	.quad	68                              # 0x44
	.quad	88                              # 0x58
	.quad	92                              # 0x5c
	.quad	0                               # 0x0
	.quad	3                               # 0x3
	.quad	6                               # 0x6
	.quad	9                               # 0x9
	.quad	12                              # 0xc
	.quad	15                              # 0xf
	.quad	18                              # 0x12
	.quad	21                              # 0x15
	.quad	23                              # 0x17
	.quad	24                              # 0x18
	.quad	27                              # 0x1b
	.quad	30                              # 0x1e
	.quad	33                              # 0x21
	.quad	36                              # 0x24
	.quad	39                              # 0x27
	.quad	41                              # 0x29
	.quad	42                              # 0x2a
	.quad	45                              # 0x2d
	.quad	48                              # 0x30
	.quad	51                              # 0x33
	.quad	54                              # 0x36
	.quad	57                              # 0x39
	.quad	60                              # 0x3c
	.quad	63                              # 0x3f
	.quad	64                              # 0x40
	.quad	66                              # 0x42
	.quad	69                              # 0x45
	.quad	72                              # 0x48
	.quad	75                              # 0x4b
	.quad	78                              # 0x4e
	.quad	81                              # 0x51
	.quad	84                              # 0x54
	.quad	86                              # 0x56
	.quad	87                              # 0x57
	.quad	90                              # 0x5a
	.quad	93                              # 0x5d
	.quad	96                              # 0x60
	.quad	99                              # 0x63
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
	.quad	0x3fe9237ef5a964e9              # double 0.78558300000000003
	.quad	0x3fb805e5f30e7ff6              # double 0.093840000000000006
	.quad	0x3fe3e60a2014727e              # double 0.62183100000000002
	.quad	0x3feb78ee28672757              # double 0.85851200000000005
	.quad	0x3fc4cdc011d3671b              # double 0.16252900000000001
	.quad	0x3fc10164840e171a              # double 0.132855
	.quad	0x3fd4cee5abc0e38a              # double 0.32512799999999997
	.quad	0x3fe7e939eadd590c              # double 0.74722
	.quad	0x3f5cffeb074a771d              # double 0.0017700000000000001
	.quad	0x3fbcbc05d52c16df              # double 0.112244
	.quad	0x3fef1d6adf71eaff              # double 0.97234100000000001
	.quad	0x3fe9f401c4fc1df3              # double 0.81103599999999998
	.quad	0x3fece88377186552              # double 0.90338300000000005
	.quad	0x3fd0a8c586876e1e              # double 0.260301
	.quad	0x3fe6a979e16d6dc2              # double 0.70818800000000004
	.quad	0x3fe84fe154434e33              # double 0.75975099999999995
	.quad	0x3fe892684cf0739b              # double 0.767872
	.quad	0x3fe209fc6da44849              # double 0.56371899999999997
	.quad	0x3fd01c0ca600b029              # double 0.25171199999999999
	.quad	0x3fd0c725c3dee782              # double 0.26215500000000003
	.quad	0x3fd42a454de7ea60              # double 0.31508000000000003
	.quad	0x3fefdd4e8fb00bcc              # double 0.99576500000000001
	.quad	0x3fef2d0a24463066              # double 0.974248
	.quad	0x3fc6bbf50e347629              # double 0.17761099999999999
	.quad	0x3fef3ffef39085f5              # double 0.97656200000000004
	.quad	0x3fcd270b06c43f60              # double 0.22775400000000001
	.quad	0x3fe17763e4abe6a3              # double 0.54582399999999998
	.quad	0x3fead462c343b70f              # double 0.838426
	.quad	0x3fe9ed5ae1cde5d2              # double 0.81022400000000006
	.quad	0x3fc7bcfd4bf0995b              # double 0.18545500000000001
	.quad	0x3fcc13ec460ed80a              # double 0.219358
	.quad	0x3fb8d5e8d5410f95              # double 0.097014000000000003
	.quad	0x3fe6129670196d8f              # double 0.68976899999999997
	.quad	0x3fd1eadd590c0ad0              # double 0.27995999999999999
	.quad	0x3feedb749adc8fb8              # double 0.96428899999999995
	.quad	0x3fec63b03e20ccff              # double 0.88716899999999999
	.quad	0x3fe3985f06f69446              # double 0.61234999999999995
	.quad	0x3fbd741d084e831b              # double 0.115053
	.quad	0x3fe18583621fafc9              # double 0.54754800000000003
	.quad	0x3fe1ab6ae7d566cf              # double 0.55217499999999997
	.quad	0x3fc06e653868fd1a              # double 0.12836900000000001
	.quad	0x3fe03647baa9b49a              # double 0.50662600000000002
	.quad	0x3fac784230fcf80e              # double 0.055605000000000002
	.quad	0x3fe0121ccd962068              # double 0.50221099999999996
	.quad	0x3fe9f901083dbc23              # double 0.81164599999999998
	.quad	0x3fda9cae21101b00              # double 0.41581299999999999
	.quad	0x3fe74f6598e10cf6              # double 0.72844200000000003
	.quad	0x3fe4b6976bc1effa              # double 0.647289
	.quad	0x3feac46f9b994e1a              # double 0.83647899999999997
	.quad	0x3fdddfb0d51f81a6              # double 0.46677800000000003
	.quad	0x3feded117b5286b6              # double 0.93518900000000005
	.quad	0x3fd6ba6698bb4d49              # double 0.35512700000000003
	.quad	0x3fccc0e7bc3c5bd1              # double 0.224637
	.quad	0x3fd110385c67dfe3              # double 0.26661499999999999
	.quad	0x3fed674f2f123c43              # double 0.91886100000000004
	.quad	0x3fe2e49b1fab96f2              # double 0.59040599999999999
	.quad	0x3fe481a36e2eb1c4              # double 0.64082499999999998
	.quad	0x3fd7a70d1fa33376              # double 0.36957099999999998
	.quad	0x3fe79029ae4f3344              # double 0.736348
	.quad	0x3fd8b65668c26139              # double 0.386129
	.quad	0x3fe81ab6d00b45ae              # double 0.75326099999999996
	.quad	0x3fe1c165907d9125              # double 0.55485799999999996
	.quad	0x3fe0800a7c5ac472              # double 0.51563000000000003
	.quad	0x3fecaa2e3c536d65              # double 0.89577399999999996
	.quad	0x3fca601bc98a222d              # double 0.20605799999999999
	.quad	0x3fc95f6fd21ff2e5              # double 0.19822500000000001
	.quad	0x3fc26c093d966384              # double 0.14392199999999999
	.quad	0x3fe9d9274e22a2c2              # double 0.80775799999999998
	.quad	0x3fd764cb5bb384fd              # double 0.36552699999999999
	.quad	0x3fe106961c36976c              # double 0.53205400000000003
	.quad	0x3fe7941205bc01a3              # double 0.73682499999999995
	.quad	0x3fe8ce1a3f4666ed              # double 0.77515900000000004
	.quad	0x3fe293f290abb44e              # double 0.58055999999999996
	.quad	0x3fe636976bc1effa              # double 0.694164
	.quad	0x3fe1d94af4f0d845              # double 0.55777500000000002
	.quad	0x3fceee41919ac797              # double 0.241646
	.quad	0x3fed7a11a975afb0              # double 0.92115100000000005
	.quad	0x3febdafd113836a8              # double 0.87048199999999998
	.quad	0x3fb33b7521144cbe              # double 0.075125999999999998
	.quad	0x3fc62ba5a038194c              # double 0.173207
	.quad	0x3fca276b7ed41b76              # double 0.20432800000000001
	.quad	0x3fd80431bde82d7b              # double 0.37525599999999998
	.quad	0x3fdee518f3eccc47              # double 0.48273300000000002
	.quad	0x3fdfd3953dea465a              # double 0.49728899999999998
	.quad	0x3fe0508d4bad7d7c              # double 0.50983299999999998
	.quad	0x3fd372085b18548b              # double 0.30383500000000002
	.quad	0x3fa268f4b61fe21e              # double 0.035957000000000003
	.quad	0x3fea2224edf61240              # double 0.81666799999999995
	.quad	0x3fcfddb9841aac54              # double 0.24895400000000001
	.quad	0x3fc75592d98bf7f0              # double 0.18229899999999999
	.quad	0x3fe40438088509c0              # double 0.62551500000000004
	.quad	0x3fef3a365cb35f3d              # double 0.97585599999999994
	.quad	0x3fe1d12a94ff0026              # double 0.55678300000000003
	.quad	0x3fe92497fa5d28d0              # double 0.785717
	.quad	0x3fe8976145953587              # double 0.76847900000000002
	.quad	0x3fef432ca57a786c              # double 0.97694999999999998
	.quad	0x3fe49d5c31593e60              # double 0.64420900000000003
	.quad	0x3fd19b499d0203e6              # double 0.27510299999999999
	.quad	0x3fde676ea4228998              # double 0.47506300000000001
	.quad	0x3fea81cb46bacf74              # double 0.82834399999999996
	.quad	0x3fe057fd82773e25              # double 0.510741
	.quad	0x3fe1112556d19ded              # double 0.53334300000000001
	.quad	0x3fe610afe60c38f3              # double 0.68953699999999996
	.quad	0x3fb1b50f40e5a35d              # double 0.069168999999999994
	.quad	0x3fb3ba8826aa8eb4              # double 0.077064999999999995
	.quad	0x3fe015e5aff2a173              # double 0.50267300000000004
	.quad	0x3fec08bb906466b2              # double 0.87606600000000001
	.quad	0x3fa9ee2435696e59              # double 0.050645000000000003
	.quad	0x3fe41593e5fb71fc              # double 0.62763400000000003
	.quad	0x3fdb4c942d490e67              # double 0.42654900000000001
	.quad	0x3fe2a7bb2fec56d6              # double 0.58297500000000002
	.quad	0x3fb21869835158b8              # double 0.070684999999999998
	.quad	0x3febd6d19dece571              # double 0.869973
	.quad	0x3fe79b584b1ab085              # double 0.73771299999999995
	.quad	0x3fd511c2a0232096              # double 0.32920899999999997
	.quad	0x3fe2bd1ed9dfdac7              # double 0.58558600000000005
	.quad	0x3fe401fb82c2bd7f              # double 0.62524199999999996
	.quad	0x3fb5f6fd21ff2e49              # double 0.085800000000000001
	.quad	0x3fec0bc169c23b79              # double 0.87643499999999996
	.quad	0x3fecce1c58255b03              # double 0.90015999999999996
	.quad	0x3fca39c51dabe271              # double 0.20488799999999999
	.quad	0x3fb44545846e8f2a              # double 0.079182000000000002
	.quad	0x3fe1fe82517e77d5              # double 0.56231799999999998
	.quad	0x3fe48a3f8982cb21              # double 0.641876
	.quad	0x3fb018b502ababeb              # double 0.062877000000000002
	.quad	0x3fd493250b52439a              # double 0.32148100000000002
	.quad	0x3fbd098d477bbf94              # double 0.113427
	.quad	0x3fe869680e065300              # double 0.76286699999999996
	.quad	0x3fc3e82d7b634dad              # double 0.15552299999999999
	.quad	0x3fc9275ee99a62ed              # double 0.19651399999999999
	.quad	0x3fe7017763e4abe7              # double 0.71892900000000004
	.quad	0x3fe930574b407033              # double 0.78715100000000005
	.quad	0x3fe1bd8383ad9f0a              # double 0.55438399999999999
	.quad	0x3fe1d4e4c942d491              # double 0.55723800000000001
	.quad	0x3fd66e008e9b38d6              # double 0.350464
	.quad	0x3fee08d2a1f8e3ac              # double 0.93857699999999999
	.quad	0x3fefede33269df98              # double 0.99778900000000003
	.quad	0x3fd24f69ca9ef523              # double 0.28609699999999999
	.quad	0x3fea365a9a804966              # double 0.81913499999999995
	.quad	0x3fe8cce5f7403dde              # double 0.77501200000000003
	.quad	0x3fe73358f2e05ccd              # double 0.72501800000000005
	.quad	0x3fe09abb01c92ddc              # double 0.51888800000000002
	.quad	0x3fd7ae3608d0891a              # double 0.370008
	.quad	0x3f957646ae3a3a8e              # double 0.020958999999999998
	.quad	0x3fc7f266ba493c8a              # double 0.187085
	.quad	0x3fd36ef8055fbb51              # double 0.30364799999999997
	.quad	0x3fd52b51bd61f5be              # double 0.33076899999999998
	.quad	0x3fb67ff583a53b8e              # double 0.087889999999999995
	.quad	0x3fef0711d798d8a9              # double 0.96961299999999994
	.quad	0x3fdbbd6a593a2df9              # double 0.43343599999999999
	.quad	0x3fc2a3f8982cb210              # double 0.14562900000000001
	.quad	0x3fa43ce2089e3433              # double 0.039527
	.quad	0x3fc9d61f5be5d9e4              # double 0.201847
	.quad	0x3fe0633acd5b6806              # double 0.51211300000000004
	.quad	0x3fe97748a159817c              # double 0.79581100000000004
	.quad	0x3fce359bc33f8551              # double 0.236011
	.quad	0x3fc85cf67b1c0011              # double 0.19033700000000001
	.quad	0x3fe25106ee30caa3              # double 0.57239099999999998
	.quad	0x3fd9f5fd47bedb73              # double 0.40563900000000003
	.quad	0x3fd3985271bcdbbe              # double 0.306172
	.quad	0x3f94e65bea0ba1f5              # double 0.020410000000000001
	.quad	0x3fce68a936c58eeb              # double 0.237569
	.quad	0x3feca55d1c3ac92a              # double 0.89518600000000004
	.quad	0x3fc09e01de269164              # double 0.12982199999999999
	.quad	0x3fea51eb851eb852              # double 0.82250000000000001
	.quad	0x3fe5e50a45d41fa7              # double 0.68420899999999996
	.quad	0x3fe20d349be8ff32              # double 0.56411199999999995
	.quad	0x3fe1b32f01754b06              # double 0.55312300000000003
	.quad	0x3fd017c5ef62f9ca              # double 0.25145099999999998
	.quad	0x3fdb995ee136e71d              # double 0.43123600000000001
	.quad	0x3fd633c60029f16b              # double 0.34691
	.quad	0x3fe8d530489d27c4              # double 0.77602400000000004
	.quad	0x3fdc894c447c30d3              # double 0.44588
	.quad	0x3fdf36694898f606              # double 0.48769600000000002
	.quad	0x3fddffb04ee7c4a0              # double 0.46873100000000001
	.quad	0x3fe6fa22706d5065              # double 0.71803399999999995
	.quad	0x3feb2bf338716095              # double 0.84911499999999995
	.quad	0x3fe02ee2003ab863              # double 0.50572300000000003
	.quad	0x3fd3273929ed3954              # double 0.29926900000000001
	.quad	0x3fee1c38b04ab607              # double 0.94094500000000003
	.quad	0x3feffa7a85015c21              # double 0.99932600000000004
	.quad	0x3fe492e62131a8ef              # double 0.64293199999999995
	.quad	0x3fde64e8b7e4de3c              # double 0.47490900000000003
	.quad	0x3fc64adff822bbed              # double 0.17416000000000001
	.quad	0x3fe5a8d8665e02eb              # double 0.67686100000000005
	.quad	0x3fe40ac9f2fdb8fe              # double 0.62631700000000001
	.quad	0x3fe46922d948dc12              # double 0.63783400000000001
	.quad	0x3fee0dd1e53a81dc              # double 0.93918699999999999
	.quad	0x3fbdff2e48e8a71e              # double 0.117175
	.quad	0x3fe25810624dd2f2              # double 0.57325000000000004
	.quad	0x3fe8d000c9539b89              # double 0.77539100000000005
	.quad	0x3fe4fe64f54d1e97              # double 0.65605400000000003
	.quad	0x3fd3a53b8e4b87be              # double 0.30696000000000001
	.quad	0x3fe602f0e0a84be4              # double 0.687859
	.quad	0x3febdb7ae5796bfd              # double 0.87054200000000004
	.quad	0x3f8ff7164c729f5a              # double 0.015608
	.quad	0x3fe6903a7546d3fa              # double 0.70510600000000001
	.quad	0x3fb751ac9afe1da8              # double 0.091090000000000004
	.quad	0x3fd47bbb62413db8              # double 0.320052
	.quad	0x3fe4a8f9f44d4456              # double 0.64562699999999995
	.quad	0x3fe55e4e69f05ea2              # double 0.66776199999999997
	.quad	0x3fc91b71758e2196              # double 0.19614999999999999
	.quad	0x3fcad6ece13f4a99              # double 0.20968400000000001
	.quad	0x3fe17314ca925fe9              # double 0.54529799999999995
	.quad	0x3fefa20bc382a130              # double 0.98853100000000005
	.quad	0x3fa33fe9fadafd11              # double 0.037596999999999998
	.quad	0x3fe13f85510d38ce              # double 0.53900400000000004
	.quad	0x3fe6f1843c3a42f2              # double 0.71698200000000001
	.quad	0x3fe6f8811b1d92b8              # double 0.717835
	.quad	0x3fe7ad8c2a454de8              # double 0.73993500000000001
	.quad	0x3fe2fae3608d0892              # double 0.59312600000000004
	.quad	0x3fe0435ac8a37260              # double 0.50822199999999995
	.quad	0x3fd42ae8e1d6494d              # double 0.31511899999999998
	.quad	0x3fdb04e1e71044f2              # double 0.42217300000000002
	.quad	0x3fe7b0b178b37004              # double 0.74031899999999995
	.quad	0x3fdcc0053e2d6239              # double 0.44922000000000001
	.quad	0x3fa379d909f1f14a              # double 0.038039000000000003
	.quad	0x3fc7ba2be0589acc              # double 0.18536900000000001
	.quad	0x3fe1896787ce95fb              # double 0.54802300000000004
	.quad	0x3fdb8c2a454de7ea              # double 0.43042999999999998
	.quad	0x3fe97eed45e9185d              # double 0.79674400000000001
	.quad	0x3fcd100a393ee5ef              # double 0.227052
	.quad	0x3fe1f21b3aeee957              # double 0.56080399999999997
	.quad	0x3fb6bc72e275ab7e              # double 0.088813000000000003
	.quad	0x3fd569552e2fbe34              # double 0.33455400000000002
	.quad	0x3fef5069a4df47fa              # double 0.97856600000000005
	.quad	0x3fc5b0f6ad70e6f3              # double 0.169463
	.quad	0x3fc1519bd4067cf2              # double 0.13530300000000001
	.quad	0x3fb0c26138fffbce              # double 0.065465999999999996
	.quad	0x3fd672ffd1dcd706              # double 0.350769
	.quad	0x3fea276fb09203a3              # double 0.81731399999999998
	.quad	0x3fec905186db50f4              # double 0.89261699999999999
	.quad	0x3fd40fe8ab4fa483              # double 0.313471
	.quad	0x3fd87d0f1f57b41c              # double 0.382633
	.quad	0x3fddf2778140dd40              # double 0.46792400000000001
	.quad	0x3fd81f1cfbb94962              # double 0.37689899999999998
	.quad	0x3f8f8f47304039ac              # double 0.01541
	.quad	0x3fed1e29b6b2af14              # double 0.90993199999999996
	.quad	0x3fe77b00bcbe61d0              # double 0.733765
	.quad	0x3fe65aea3161a1dc              # double 0.69859800000000005
	.quad	0x3fd45d6bebe1650a              # double 0.31820199999999998
	.quad	0x3fcf36501e2584f5              # double 0.24384500000000001
	.quad	0x3fef1873ffac1d2a              # double 0.97173500000000002
	.quad	0x3fdb9e59f2ba9d1f              # double 0.43153999999999998
	.quad	0x3f8e90795f676ea4              # double 0.014924
	.quad	0x3fe310e23af31b15              # double 0.59581099999999998
	.quad	0x3fea7505d0fa58f7              # double 0.82678499999999999
	.quad	0x3fe1a7b6fe2e6ea8              # double 0.55172299999999996
	.quad	0x3feb4efed634549b              # double 0.85339299999999996
	.quad	0x3fcf74cd31769a91              # double 0.245752
	.quad	0x3fe85fb506dd69d3              # double 0.761683
	.quad	0x3fd5bc664d3bf2f5              # double 0.33962399999999998
	.quad	0x3fe4fe132b55ef20              # double 0.65601500000000001
	.quad	0x3fdd70e6f2e8c048              # double 0.46001599999999998
	.quad	0x3fe3a0b5ed8d36b5              # double 0.61336800000000002
	.quad	0x3fccda122fad6cb5              # double 0.22540499999999999
	.quad	0x3fd6ff04577d9557              # double 0.359315
	.quad	0x3fd68140dd3fe197              # double 0.35163899999999998
	.quad	0x3fe509917939a7c1              # double 0.65741799999999995
	.quad	0x3fe081ba7fc32ebe              # double 0.51583599999999996
	.quad	0x3fe61a1b9f98b71c              # double 0.69068700000000005
	.quad	0x3fcc7325918a009f              # double 0.22226399999999999
	.quad	0x3fe1f9bdc69f8c22              # double 0.56173600000000001
	.quad	0x3fc10e0221426fe7              # double 0.13324
	.quad	0x3fc9eac42e9899bf              # double 0.20247699999999999
	.quad	0x3fea9a719b4dcec0              # double 0.83135300000000001
	.quad	0x3fe8ffe6d58c8eef              # double 0.78123799999999999
	.quad	0x3feae2089e34330d              # double 0.84009199999999995
	.quad	0x3fd454a7f8012dfd              # double 0.31766699999999998
	.quad	0x3fa56fda836eb4ea              # double 0.041869000000000003
	.quad	0x3fc3172ef0ae5365              # double 0.149145
	.quad	0x3fef4a3400b88ca4              # double 0.97780800000000001
	.quad	0x3fdd6af89c5e6ff8              # double 0.45965400000000001
	.quad	0x3fc7139c94f69caa              # double 0.180286
	.quad	0x3fdab3743632c1f4              # double 0.41720299999999999
	.quad	0x3fe61f5dfeb8d823              # double 0.69132899999999997
	.quad	0x3fd9f71a7e308787              # double 0.40570699999999998
	.quad	0x3fed6ef3d3a1d324              # double 0.919794
	.quad	0x3fca86b59146e4c1              # double 0.207236
	.quad	0x3fddf138bcdfefbf              # double 0.46784799999999999
	.quad	0x3fefcef240fa9c13              # double 0.994012
	.quad	0x3fe5a808c8259e1f              # double 0.67676199999999997
	.quad	0x3fe6baf533f42353              # double 0.71032200000000001
	.quad	0x3feaa19a847b2464              # double 0.83222700000000005
	.quad	0x3fd2f284167a95c8              # double 0.29605199999999998
	.quad	0x3feb57d7c2ca148c              # double 0.85447300000000003
	.quad	0x3fe0b4e9813879c4              # double 0.52208399999999999
	.quad	0x3fc7980f55de58e6              # double 0.18432799999999999
	.quad	0x3fda138bcdfefbf4              # double 0.407443
	.quad	0x3fb1bdc69f8c21e2              # double 0.069302000000000002
	.quad	0x3fea66ff7dfa00e2              # double 0.82507299999999995
	.quad	0x3fdeff327aa68f4b              # double 0.48432599999999998
	.quad	0x3fe76b8737974602              # double 0.73187599999999997
	.quad	0x3fb4a5df2239e6ac              # double 0.080656000000000005
	.quad	0x3fec07f23cc8de2b              # double 0.87597000000000003
	.quad	0x3fd8675579af1887              # double 0.38130700000000001
	.quad	0x3fde1a21ea359360              # double 0.47034500000000001
	.quad	0x3fd0e32e3821af7d              # double 0.26386599999999999
	.quad	0x3fd34b167ec7863c              # double 0.301458
	.quad	0x3fc55c31593e5fb7              # double 0.166876
	.quad	0x3fc9717df19d66ae              # double 0.19877600000000001
	.quad	0x3fef696c3fc43b2e              # double 0.98161900000000002
	.quad	0x3fe25fe974a3400c              # double 0.57420800000000005
	.quad	0x3fc2f8b588e368f1              # double 0.14821500000000001
	.quad	0x3fc4172abef06b38              # double 0.15695700000000001
	.quad	0x3fd98c692f6e8295              # double 0.39919500000000002
	.quad	0x3fc959817b95a294              # double 0.198044
	.quad	0x3fde8ad688377186              # double 0.47722399999999998
	.quad	0x3fb97a89331a08c0              # double 0.099526000000000003
	.quad	0x3fed894a2b9d3cbc              # double 0.92300899999999996
	.quad	0x3fd343bf727136a4              # double 0.30101
	.quad	0x3fdc2478854cdb7b              # double 0.43972600000000001
	.quad	0x3fea13037d63022e              # double 0.81482100000000002
	.quad	0x3fe409acbc8c0ce9              # double 0.62618099999999999
	.quad	0x3fc327d45a5fc7e7              # double 0.14965300000000001
	.quad	0x3fe3790b84988095              # double 0.60852600000000001
	.quad	0x3fda48dc11e42e12              # double 0.41069699999999998
	.quad	0x3fbc6fdeb52c9d17              # double 0.111082
	.quad	0x3fed1c58255b035c              # double 0.90971000000000001
	.quad	0x3fe3d247cb70ac3b              # double 0.61941900000000005
	.quad	0x3fc94d4024b33db0              # double 0.19767000000000001
	.quad	0x3fe9b5b0bbf50e34              # double 0.80342899999999994
	.quad	0x3fdbc74b838c111b              # double 0.43403900000000001
	.quad	0x3fe499fa11a975b0              # double 0.64379600000000003
	.quad	0x3fee2e297396d091              # double 0.94313499999999995
	.quad	0x3fa439de481f5382              # double 0.039503999999999997
	.quad	0x3fd7ad1d041cc533              # double 0.36994100000000002
	.quad	0x3fe94dcebfec13ba              # double 0.79074800000000001
	.quad	0x3fe9f59253543aeb              # double 0.81122700000000003
	.quad	0x3fd37d3d4280ae10              # double 0.30451899999999998
	.quad	0x3fe0289118c197e5              # double 0.50495199999999996
	.quad	0x3feb5154866a11ed              # double 0.85367800000000005
	.quad	0x3fdf558644523f68              # double 0.489595
	.quad	0x3fc5cd24e160d888              # double 0.170323
	.quad	0x3fe4a93f290abb45              # double 0.64566000000000001
	.quad	0x3f74e7ee9142b303              # double 0.005104
	.quad	0x3fe3f3061c79b34a              # double 0.62341599999999997
	.quad	0x3fcc5ecc3e3193f7              # double 0.22164300000000001
	.quad	0x3fd3bf93ff25e56d              # double 0.30856800000000001
	.quad	0x3fe735bb384fd2a6              # double 0.72530899999999998
	.quad	0x3fe082de00d1b717              # double 0.51597499999999996
	.quad	0x3fe40090b417ca21              # double 0.62506899999999999
	.quad	0x3febac94b380cb6c              # double 0.86481699999999994
	.quad	0x3fd0f63800218def              # double 0.26502799999999999
	.quad	0x3fcd2734f82f5126              # double 0.22775899999999999
	.quad	0x3fb9f202107b7846              # double 0.10134899999999999
	.quad	0x3fe4f5d56f32bdc2              # double 0.65500899999999995
	.quad	0x3fef53586ca89fc7              # double 0.97892400000000001
	.quad	0x3fd8d987c6327ed8              # double 0.38827699999999998
	.quad	0x3fccd1526d8b1dd6              # double 0.225138
	.quad	0x3fed00a9de8b3b32              # double 0.906331
	.quad	0x3fc713165d3996fb              # double 0.18027000000000001
	.quad	0x3fcbce9e5e247885              # double 0.21724299999999999
	.quad	0x3fd5cff64cf8d717              # double 0.34081800000000001
	.quad	0x3fe3b671ac14c661              # double 0.61602100000000004
	.quad	0x3febda469d7342ee              # double 0.87039500000000003
	.quad	0x3f9136a400fba882              # double 0.016809999999999999
	.quad	0x3fe1e1f9f01b866e              # double 0.55883499999999997
	.quad	0x3fbb2bba98eda22f              # double 0.10613599999999999
	.quad	0x3febc96cc5fbf834              # double 0.86833800000000005
	.quad	0x3fe8931a8ef77f28              # double 0.767957
	.quad	0x3febe638433d6c72              # double 0.87185299999999999
	.quad	0x3fe5a163fdd65a14              # double 0.67595099999999997
	.quad	0x3fda83cf2cf95d4f              # double 0.41429500000000002
	.quad	0x3fe694898f605ab4              # double 0.70563200000000004
	.quad	0x3fe3ddaad601ffb5              # double 0.62080900000000006
	.quad	0x3fca77ee4e26d480              # double 0.206785
	.quad	0x3fe14f6be37de93a              # double 0.54094500000000001
	.quad	0x3fc4600b02928177              # double 0.15918099999999999
	.quad	0x3fcf4d834091c087              # double 0.24455299999999999
	.quad	0x3fc0426bb55ac040              # double 0.127027
	.quad	0x3fe529cdc443914f              # double 0.66135299999999997
	.quad	0x3fe34e7253da72a8              # double 0.60332600000000003
	.quad	0x3fd0dc11e42e1262              # double 0.263432
	.quad	0x3fe24b2fa93af74d              # double 0.57167800000000002
	.quad	0x3fd34ddb5525cc42              # double 0.30162699999999998
	.quad	0x3f96351deefe4ffd              # double 0.021687000000000001
	.quad	0x3fe7a11ec918e326              # double 0.73841800000000002
	.quad	0x3fdeafcce1c58256              # double 0.47948000000000002
	.quad	0x3fe05dfa871a3b15              # double 0.51147200000000004
	.quad	0x3fe72e770bd017db              # double 0.72442200000000001
	.quad	0x3fc824e592967019              # double 0.18862599999999999
	.quad	0x3fbfcc1871e6cd29              # double 0.124208
	.quad	0x3fdccad57bc7f77b              # double 0.44988
	.quad	0x3fb5c9f72f76e610              # double 0.085112999999999994
	.quad	0x3fec4e4649906cca              # double 0.88455499999999998
	.quad	0x3fdf7f13059641f6              # double 0.49213099999999999
	.quad	0x3fe2ff6d330941c8              # double 0.59367999999999999
	.quad	0x3fe87a4c61d8622c              # double 0.76492899999999997
	.quad	0x3fae534373f316e3              # double 0.059228999999999997
	.quad	0x3fe6cae85b9e8c48              # double 0.71226900000000004
	.quad	0x3fd7cbe61cffeb07              # double 0.37181999999999998
	.quad	0x3fda9a8049667b5f              # double 0.41567999999999999
	.quad	0x3fe2e8e3ef284168              # double 0.59092900000000004
	.quad	0x3fea8ebaade657b8              # double 0.82992299999999997
	.quad	0x3feb2d6883771865              # double 0.84929299999999996
	.quad	0x3fc307bfe7e1fc09              # double 0.148674
	.quad	0x3f824c8366516db1              # double 0.0089350000000000002
	.quad	0x3fe11600f345069a              # double 0.53393599999999997
	.quad	0x3fe2e670e2c12ad8              # double 0.59062999999999999
	.quad	0x3fd66c1a048e043a              # double 0.35034799999999999
	.quad	0x3fe090f301eabbcb              # double 0.51769399999999999
	.quad	0x3fcf0f5a1016ce79              # double 0.24265600000000001
	.quad	0x3fe3c0b34e768598              # double 0.61727299999999996
	.quad	0x3fe604449dbec248              # double 0.68802099999999999
	.quad	0x3fc5e95b78cc9a78              # double 0.171184
	.quad	0x3fed9897a67a52ac              # double 0.92487699999999994
	.quad	0x3fb308feac42e98a              # double 0.074356000000000005
	.quad	0x3fbce8c8abd5dc40              # double 0.112927
	.quad	0x3fef8446b69db65f              # double 0.98489700000000002
	.quad	0x3fc09aed56b00ffe              # double 0.12972800000000001
	.quad	0x3f683d790752da98              # double 0.0029589999999999998
	.quad	0x3fb9f2778140dd40              # double 0.101356
	.quad	0x3fe87dda8bd230ba              # double 0.76536300000000002
	.quad	0x3fafa8b4bf8fcd68              # double 0.061834
	.quad	0x3fe25ba2be0589ad              # double 0.57368600000000003
	.quad	0x3fe54d22c881e471              # double 0.66566599999999998
	.quad	0x3fe495421c044285              # double 0.64322000000000001
	.quad	0x3fe4211ec918e326              # double 0.62904300000000002
	.quad	0x3fe9ad18d25edd05              # double 0.80237999999999998
	.quad	0x3fea7e542e557de1              # double 0.82792100000000002
	.quad	0x3fe58ad46f587d70              # double 0.67319700000000005
	.quad	0x3feac9b62c77574f              # double 0.83712299999999995
	.quad	0x3fecfca2120e1f7d              # double 0.90583899999999995
	.quad	0x3fe5cc89b0ee49f5              # double 0.68121799999999999
	.quad	0x3fe8bb6ed677707a              # double 0.77288000000000001
	.quad	0x3f6a437824d4cb9f              # double 0.0032060000000000001
	.quad	0x3fe0f94c87980f56              # double 0.53043200000000001
	.quad	0x3fed48366516db0e              # double 0.91506500000000002
	.quad	0x3fd8279dd3bafd97              # double 0.37741799999999998
	.quad	0x3fe3a15336deb95e              # double 0.61344299999999996
	.quad	0x3fd108f648c7192f              # double 0.26617200000000002
	.quad	0x3fedc37a3db3bfb6              # double 0.93011200000000005
	.quad	0x3fa680e065300581              # double 0.043951999999999998
	.quad	0x3fe93d4280ae1049              # double 0.78872799999999998
	.quad	0x3fdcb0af5fd47bee              # double 0.44828400000000002
	.quad	0x3fcfd701d9f4d37c              # double 0.248749
	.quad	0x3fca31055b899392              # double 0.204621
	.quad	0x3fee715c63ae2542              # double 0.95133800000000002
	.quad	0x3fe8eb15f88fc936              # double 0.77869699999999997
	.quad	0x3fd052da98676a72              # double 0.25505699999999998
	.quad	0x3fe4265add9c27e9              # double 0.62968199999999996
	.quad	0x3fd17164c729f59d              # double 0.27254600000000001
	.quad	0x3fea2b324851a869              # double 0.81777299999999997
	.quad	0x3fe2148344c37e6f              # double 0.56500399999999995
	.quad	0x3fa570e6f2e8c048              # double 0.041876999999999998
	.quad	0x3fcbef5a964e8b7e              # double 0.21824199999999999
	.quad	0x3fe618a65492ff4c              # double 0.69050900000000004
	.quad	0x3fc37c6fbd273d5c              # double 0.15223500000000001
	.quad	0x3fb33ebbfd71b047              # double 0.075176000000000007
	.quad	0x3fc15f138bcdfefc              # double 0.135714
	.quad	0x3fe3b8f9b13165d4              # double 0.61633000000000004
	.quad	0x3fb9ab29e4d5d80e              # double 0.100268
	.quad	0x3fdc399f5dfeb8d8              # double 0.44101699999999999
	.quad	0x3fef08feac42e98a              # double 0.96984800000000004
	.quad	0x3fe216df3f961805              # double 0.56529200000000002
	.quad	0x3fbba5e353f7ced9              # double 0.108
	.quad	0x3fe40db6a1e81cb4              # double 0.62667399999999995
	.quad	0x3fe38c23fab10ba6              # double 0.61085699999999998
	.quad	0x3fd6c5a3e39f7729              # double 0.35581299999999999
	.quad	0x3fc073797460242d              # double 0.128524
	.quad	0x3fa1de69ad42c3ca              # double 0.0349
	.quad	0x3fee6e02a77a2ced              # double 0.95092900000000002
	.quad	0x3fd4f63800218def              # double 0.32752799999999999
	.quad	0x3fcefdb09a671ef3              # double 0.242117
	.quad	0x3fd031b584b1ab08              # double 0.25303399999999998
	.quad	0x3fe99ed9dfdac68b              # double 0.80064100000000005
	.quad	0x3fe51ae4f3343fa3              # double 0.65953300000000004
	.quad	0x3fe174c09c3ce209              # double 0.54550200000000004
	.quad	0x3fa413db7f173754              # double 0.039213999999999999
	.quad	0x3fe91b25f633ce64              # double 0.78456400000000003
	.quad	0x3fef752b90a78290              # double 0.98305299999999995
	.quad	0x3fb191ff7164c72a              # double 0.068634000000000001
	.quad	0x3fea7314ca925fe9              # double 0.82654799999999995
	.quad	0x3fe2900e6afcce1c              # double 0.58008499999999996
	.quad	0x3fbd3dd97f62b6ae              # double 0.11422499999999999
	.quad	0x3fe63b5bf6a0dbad              # double 0.69474599999999997
	.quad	0x3feebbd5992428d4              # double 0.96042899999999997
	.quad	0x3fe2d9945b6c3761              # double 0.58906000000000003
	.quad	0x3feb144cbe1eb420              # double 0.84622799999999998
	.quad	0x3fe4dbdf8f473040              # double 0.65183999999999997
	.quad	0x3fe082773e24febd              # double 0.515926
	.quad	0x3fede262cba732df              # double 0.93388499999999997
	.quad	0x3fe8b315d701d9f5              # double 0.77186100000000002
	.quad	0x3fe81cae21101b00              # double 0.75350099999999998
	.quad	0x3fc0f53c579f2346              # double 0.13248399999999999
	.quad	0x3fb3e586013660e5              # double 0.077720999999999998
	.quad	0x3f6dc725c3dee782              # double 0.0036350000000000002
	.quad	0x3fe1c4dec1c1d6d0              # double 0.55528200000000005
	.quad	0x3fddea960b6f9fcb              # double 0.467443
	.quad	0x3f9ba4d6e47dc37a              # double 0.026995999999999999
	.quad	0x3fd8c12f09d8c6d6              # double 0.386791
	.quad	0x3fecc7cfa26a22b4              # double 0.89939100000000005
	.quad	0x3fe9c68ec52a411c              # double 0.80548799999999998
	.quad	0x3fe9a43137b07076              # double 0.80129300000000003
	.quad	0x3fe9840e1719f7f9              # double 0.79737000000000002
	.quad	0x3fedef587d6f9768              # double 0.93546700000000004
	.quad	0x3fee98c7e28240b8              # double 0.95615000000000005
	.quad	0x3fce2c1b10fd7e46              # double 0.23572100000000001
	.quad	0x3fe5ad14a0a0f4d8              # double 0.67737800000000004
	.quad	0x3fdebac2df0d4131              # double 0.48014899999999999
	.quad	0x3fe0123e5b8561d4              # double 0.50222699999999998
	.quad	0x3fdc0cd423d9231c              # double 0.43828299999999998
	.quad	0x3fdd2bdc26dce39b              # double 0.45580199999999998
	.quad	0x3fdc01d9f4d37c13              # double 0.43761299999999997
	.quad	0x3fd718a009f62307              # double 0.36087799999999998
	.quad	0x3fe89f9acffa7eb7              # double 0.76948300000000003
	.quad	0x3fe4eed6777079e6              # double 0.65415500000000004
	.quad	0x3fe2cbf6e3f78bbd              # double 0.58739799999999998
	.quad	0x3fcbff92f2b66b61              # double 0.21873699999999999
	.quad	0x3fde3804534bd76f              # double 0.47216900000000001
	.quad	0x3fac9a9973d9ec70              # double 0.055867
	.quad	0x3fca5cbbc2b94d94              # double 0.205955
	.quad	0x3f9ef0ae536501e2              # double 0.030214999999999999
	.quad	0x3fc0291fb3fa6df0              # double 0.12625500000000001
	.quad	0x3fc5b21c475e6363              # double 0.16949800000000001
	.quad	0x3fe2c33721d53cde              # double 0.58633000000000002
	.quad	0x3fe117891e215337              # double 0.53412300000000001
	.quad	0x3fe0894812be48a6              # double 0.51675800000000005
	.quad	0x3fd34e831ad2135e              # double 0.30166700000000002
	.quad	0x3fddec3116228134              # double 0.46754099999999998
	.quad	0x3fd987485e3da2f9              # double 0.39888200000000001
	.quad	0x3fc53bb83cf2cf96              # double 0.165885
	.quad	0x3fbdd041cc532a49              # double 0.11645899999999999
	.quad	0x3fe3852b4d8ba40e              # double 0.61000600000000005
	.quad	0x3f92391d57ff9b56              # double 0.017795999999999999
	.quad	0x3fe9a27ae9ab29e5              # double 0.80108400000000002
	.quad	0x3fdf4430b178b370              # double 0.488537
	.quad	0x3fee1cdc443914f5              # double 0.94102300000000005
	.quad	0x3fbddc4007570c56              # double 0.116642
	.quad	0x3fe238bef8ceb357              # double 0.56942700000000002
	.quad	0x3fe5a47ecfe9b7bf              # double 0.67632999999999999
	.quad	0x3fe1ce3de6149c6f              # double 0.55642599999999998
	.quad	0x3fd1c3ce2089e343              # double 0.27757599999999999
	.quad	0x3f7a2c669057d178              # double 0.0063899999999999998
	.quad	0x3fa3ffac1d29dc72              # double 0.039059999999999997
	.quad	0x3fc76e8af81626b3              # double 0.183061
	.quad	0x3fda1654d61b2a28              # double 0.407613
	.quad	0x3fd52eb1c432ca58              # double 0.33097500000000002
	.quad	0x3fccb7dc7abfb9bf              # double 0.224361
	.quad	0x3fe4ae6ea8544780              # double 0.64629300000000001
	.quad	0x3fd3d8e432441feb              # double 0.31011300000000003
	.quad	0x3fc9c7ef177a7009              # double 0.20141400000000001
	.quad	0x3fe9e6687f455a7d              # double 0.80937599999999998
	.quad	0x3feb50b955f7835a              # double 0.85360400000000003
	.quad	0x3fe69dd1a21ea359              # double 0.70676499999999998
	.quad	0x3fec2374794ea077              # double 0.879328
	.quad	0x3fd403b81b64e054              # double 0.31272699999999998
	.quad	0x3fe17b24638c9753              # double 0.54628200000000005
	.quad	0x3fc4d5842b734b51              # double 0.16276599999999999
	.quad	0x3fed1728a6117721              # double 0.90907700000000002
	.quad	0x3fd492923e5b8562              # double 0.32144600000000001
	.quad	0x3febfab7564302b4              # double 0.87435499999999999
	.quad	0x3fed6b3354c12275              # double 0.91933600000000004
	.quad	0x3fe158a32f44912a              # double 0.54207000000000005
	.quad	0x3fc4ac215b9a5a8a              # double 0.16150300000000001
	.quad	0x3fdc25f202107b78              # double 0.43981599999999998
	.quad	0x3fe862e90364388f              # double 0.76207400000000003
	.quad	0x3fb894e5d5b24e9c              # double 0.096021999999999996
	.quad	0x3fe044bf4cb1897a              # double 0.50839199999999996
	.quad	0x3fed43fa2ad3e921              # double 0.91454800000000003
	.quad	0x3fc67fa1a0cf1801              # double 0.17577000000000001
	.quad	0x3feb6772d5e071c5              # double 0.85637799999999997
	.quad	0x3fe25a72a7bd48cb              # double 0.57354099999999997
	.quad	0x3fe109aaa3ad18d2              # double 0.53242999999999996
	.quad	0x3fd9e5e679463cfb              # double 0.40465699999999999
	.quad	0x3fd5c38b04ab606b              # double 0.34005999999999997
	.quad	0x3fc6a4095f2452c6              # double 0.17688100000000001
	.quad	0x3f814445aa2e3c53              # double 0.0084309999999999992
	.quad	0x3fe704816f0068dc              # double 0.71930000000000005
	.quad	0x3fe402ecaeea63b7              # double 0.62535700000000005
	.quad	0x3fb79a176ddaceee              # double 0.092194999999999999
	.quad	0x3facd9a52263d817              # double 0.056348000000000002
	.quad	0x3f99cd8127b2cc71              # double 0.025198000000000002
	.quad	0x3fe67e4de3b8a19d              # double 0.70291800000000004
	.quad	0x3fccf4384ba0e842              # double 0.22620299999999999
	.quad	0x3fe23a96d4c33b54              # double 0.56965200000000005
	.quad	0x3fcdd5454152b0a7              # double 0.233071
	.quad	0x3f9a93293d102bc7              # double 0.025951999999999999
	.quad	0x3fea009917939a7c              # double 0.81257299999999998
	.quad	0x3fe5c8a372606fac              # double 0.68074199999999996
	.quad	0x3fea8b220791c4b9              # double 0.829484
	.quad	0x3fc6c94b380cb6c8              # double 0.17801800000000001
	.quad	0x3fe877fae3608d09              # double 0.76464600000000005
	.quad	0x3fe33e24febd09e1              # double 0.60133599999999998
	.quad	0x3fd012ba16e7a312              # double 0.25114300000000001
	.quad	0x3fc8933a0407cc7d              # double 0.191993
	.quad	0x3fec0c64fdb09a67              # double 0.87651299999999999
	.quad	0x3fca41461b6d43d0              # double 0.20511699999999999
	.quad	0x3f6d66adb402d16c              # double 0.0035890000000000002
	.quad	0x3fbb77af640639d6              # double 0.107295
	.quad	0x3fcd9a1fd1569f49              # double 0.231266
	.quad	0x3fdd473cd573647c              # double 0.45747300000000002
	.quad	0x3fef5edd052934ad              # double 0.98033000000000003
	.quad	0x3feebb0a2ca9ac36              # double 0.96033199999999996
	.quad	0x3fce757928e0c9da              # double 0.23796
	.quad	0x3fea4c5974e65bea              # double 0.82181999999999999
	.quad	0x3fe8addbdb5d8948              # double 0.77122299999999999
	.quad	0x3fe31f75104d551d              # double 0.59758999999999995
	.quad	0x3fef937d1fe64f55              # double 0.98675400000000001
	.quad	0x3fe3288ace24bba1              # double 0.59869899999999998
	.quad	0x3fdd6eac8605681f              # double 0.45988000000000001
	.quad	0x3fd925d074213a0c              # double 0.39293299999999998
	.quad	0x3fdb9cd3e0bd449a              # double 0.43144700000000002
	.quad	0x3fe1982235b4edb3              # double 0.549821
	.quad	0x3fcb18a009f62307              # double 0.21168899999999999
	.quad	0x3fda3a96d4c33b54              # double 0.40982600000000002
	.quad	0x3fb28ed5f138bce0              # double 0.072492000000000001
	.quad	0x3fec3ca1059ea572              # double 0.88240099999999999
	.quad	0x3fd09d6adf71eaff              # double 0.25960800000000001
	.quad	0x3fcdbcd35a858794              # double 0.232325
	.quad	0x3fe6619fc2a8869c              # double 0.69941699999999996
	.quad	0x3fd25ad106ee30cb              # double 0.28679300000000002
	.quad	0x3fe9218372e6a769              # double 0.78534099999999996
	.quad	0x3fd0c43f5f91600f              # double 0.26197799999999999
	.quad	0x3fe4710cb295e9e2              # double 0.63880000000000003
	.quad	0x3fe45e9185cee17a              # double 0.636544
	.quad	0x3fd4fcefaa4766c7              # double 0.32793800000000001
	.quad	0x3fd0d8d79d0a6762              # double 0.263235
	.quad	0x3fc725247cb70ac4              # double 0.18082100000000001
	.quad	0x3fb349491f2dc2b1              # double 0.075337000000000001
	.quad	0x3fe6055da272862f              # double 0.68815499999999996
	.quad	0x3febac6045baf534              # double 0.864792
	.quad	0x3fe3bafd976ff3ae              # double 0.61657600000000001
	.quad	0x3fdaa4a8c154c986              # double 0.4163
	.quad	0x3fed4669057d1783              # double 0.91484500000000002
	.quad	0x3fed99d0203e63e9              # double 0.92502600000000001
	.quad	0x3fde9aa1d755bccb              # double 0.478188
	.quad	0x3f9a647fdc5931ca              # double 0.025773999999999998
	.quad	0x3fe4f43419e30015              # double 0.65481
	.quad	0x3fe1ae9ccb7d4174              # double 0.55256499999999997
	.quad	0x3fd90374ff865d7d              # double 0.39083600000000002
	.quad	0x3fe5a715831f03d1              # double 0.67664599999999997
	.quad	0x3fc46e08f2170931              # double 0.159608
	.quad	0x3fdc3bc4d22c881e              # double 0.44114799999999998
	.quad	0x3fe1ba8e71476af9              # double 0.55402300000000004
	.quad	0x3fd723033a4723ab              # double 0.361512
	.quad	0x3fee6195464dc22b              # double 0.94941200000000003
	.quad	0x3fe8c50acc0bdcad              # double 0.77405299999999999
	.quad	0x3fa737542a23bff9              # double 0.045344000000000002
	.quad	0x3fe8159c49774257              # double 0.75263800000000003
	.quad	0x3fb87bfe7e1fc090              # double 0.095642000000000004
	.quad	0x3f8cb3e5753a3ec0              # double 0.014015
	.quad	0x3feee2d40aaeafab              # double 0.96518899999999996
	.quad	0x3fdc5f56a7ac81d4              # double 0.44331900000000002
	.quad	0x3fe4a67c6b8b6955              # double 0.64532299999999998
	.quad	0x3fb95043e5321e60              # double 0.098880999999999996
	.quad	0x3fcba6266fd651b1              # double 0.21600800000000001
	.quad	0x3fcda3ca7503b81b              # double 0.23156099999999999
	.quad	0x3feb1a75cd0bb6ed              # double 0.84697999999999996
	.quad	0x3fe5868986fcdee3              # double 0.67267299999999997
	.quad	0x3fec6e45c358afc4              # double 0.88846099999999994
	.quad	0x3fc924af0bf1a5ca              # double 0.196432
	.quad	0x3fb4e6e221c8a7a4              # double 0.081647999999999998
	.quad	0x3fd05bee3d5fdcdf              # double 0.25561099999999998
	.quad	0x3fe50bda9435ac8a              # double 0.65769699999999998
	.quad	0x3fe99ceaf251c194              # double 0.80040500000000003
	.quad	0x3fed6f0f16f4384c              # double 0.91980700000000004
	.quad	0x3fc98aa00192a737              # double 0.199543
	.quad	0x3fe60d64d7f0ed3e              # double 0.68913500000000005
	.quad	0x3fe6c3c3a42f1ed1              # double 0.71139699999999995
	.quad	0x3fc774b407032980              # double 0.183249
	.quad	0x3fd010f94c87980f              # double 0.25103599999999998
	.quad	0x3fe47daa4fca42af              # double 0.64034000000000002
	.quad	0x3fb4218def416bdb              # double 0.078636999999999999
	.quad	0x3fe08d1d8a548238              # double 0.51722599999999996
	.quad	0x3fa4dcca70d1fa33              # double 0.040746999999999998
	.quad	0x3fee780fdc1615ec              # double 0.952156
	.quad	0x3fe2d464dc22ab26              # double 0.58842700000000003
	.quad	0x3fecc7fdc5931ca8              # double 0.89941300000000002
	.quad	0x3feddf47f993d534              # double 0.93350599999999994
	.quad	0x3fe8a979e16d6dc2              # double 0.77068800000000004
	.quad	0x3fe1d4845132f87b              # double 0.55719200000000002
	.quad	0x3f7859c8c9320d99              # double 0.0059449999999999998
	.quad	0x3fe5cb09e98dcdb3              # double 0.68103499999999995
	.quad	0x3fef9272c94b380d              # double 0.98662700000000003
	.quad	0x3fd7806290eed02d              # double 0.36721100000000001
	.quad	0x3febbed0f627392a              # double 0.86704300000000001
	.quad	0x3febdc7ef177a701              # double 0.87066600000000005
	.quad	0x3fe47038e29f9ce9              # double 0.63869900000000002
	.quad	0x3fd27c1bda5119ce              # double 0.288825
	.quad	0x3fea4cf8d716d2aa              # double 0.82189599999999996
	.quad	0x3fd61ee675147f13              # double 0.345636
	.quad	0x3fdc9f3c70c996b7              # double 0.44721899999999998
	.quad	0x3fe695df6555c52e              # double 0.70579499999999995
	.quad	0x3fc12e514c22ee42              # double 0.13422600000000001
	.quad	0x3fd83cf70153bd16              # double 0.37872099999999997
	.quad	0x3fe07b00bcbe61d0              # double 0.515015
	.quad	0x3feb5f06f6944674              # double 0.85535000000000005
	.quad	0x3fe96b5b2d4d4025              # double 0.79435500000000003
	.quad	0x3fa150763a190082              # double 0.033817
	.quad	0x3fec71737542a23c              # double 0.888849
	.quad	0x3fb0a8198f1d3ed5              # double 0.065064999999999998
	.quad	0x3fe9f9b34a44c7b0              # double 0.81173099999999998
	.quad	0x3fda16ebd4cfd08d              # double 0.40764899999999998
	.quad	0x3fe48fb65668c261              # double 0.64254299999999998
	.quad	0x3fd6876188b1140a              # double 0.35201300000000002
	.quad	0x3fec3545c78a6dad              # double 0.88150300000000004
	.quad	0x3fdff644955b4678              # double 0.49940600000000002
	.quad	0x3fc844ae85b9e8c4              # double 0.18959599999999999
	.quad	0x3feaf398e9707182              # double 0.84223599999999998
	.quad	0x3fba90cd423d9232              # double 0.103772
	.quad	0x3fe17d1dcd7060bb              # double 0.54652299999999998
	.quad	0x3fc321ff2e48e8a7              # double 0.149475
	.quad	0x3fef3399f5dfeb8e              # double 0.97504900000000005
	.quad	0x3fd05d744f5d3565              # double 0.25570399999999999
	.quad	0x3fe814812be48a59              # double 0.75250300000000003
	.quad	0x3fdb8ac18f81e8a3              # double 0.430344
	.quad	0x3fcbf8c21e1d2179              # double 0.218529
	.quad	0x3fcd4f722e1ac57e              # double 0.228987
	.quad	0x3fdadb76b3bb83cf              # double 0.41964499999999999
	.quad	0x3fd19656eefa1e3f              # double 0.27480100000000002
	.quad	0x3fdb79ee02a77a2d              # double 0.429317
	.quad	0x3fed80389f83be66              # double 0.921902
	.quad	0x3fe806f049a9973e              # double 0.75084700000000004
	.quad	0x3fc6b62845996745              # double 0.17743400000000001
	.quad	0x3fea44028e4fb97c              # double 0.82080200000000003
	.quad	0x3fe7a76fb09203a3              # double 0.73918899999999998
	.quad	0x3fc6a44417870542              # double 0.17688799999999999
	.quad	0x3fe96b399f5dfeb9              # double 0.79433900000000002
	.quad	0x3fe851654d61b2a2              # double 0.75993599999999994
	.quad	0x3fe9be37de939eae              # double 0.80447000000000002
	.quad	0x3fedd1569f490603              # double 0.93180399999999997
	.quad	0x3fa7a24894c447c3              # double 0.04616
	.quad	0x3fee100a393ee5ef              # double 0.93945800000000002
	.quad	0x3fdb43393ab430f5              # double 0.42597800000000002
	.quad	0x3feb80e27e0ef998              # double 0.859483
	.quad	0x3fe740d2c386d2ed              # double 0.72666299999999995
	.quad	0x3febf546d3f9e7b8              # double 0.873691
	.quad	0x3fd953ef6b5d462c              # double 0.39574799999999999
	.quad	0x3fbc73abc947064f              # double 0.11114
	.quad	0x3fdd3da2f8bdec5f              # double 0.45688699999999999
	.quad	0x3fe210fd7e45803d              # double 0.56457400000000002
	.quad	0x3fe92836eb4e9814              # double 0.78615900000000005
	.quad	0x3f84a4d2b2bfdb4d              # double 0.01008
	.quad	0x3fc81b54195cc858              # double 0.188334
	.quad	0x3fc65fa658c4bd34              # double 0.174794
	.quad	0x3fea72a5a469d734              # double 0.82649499999999997
	.quad	0x3fd9c79b34a44c7b              # double 0.402808
	.quad	0x3fd19085f4a1272d              # double 0.27444600000000002
	.quad	0x3fedf16b11c6d1e1              # double 0.93572
	.quad	0x3fdda8b08dd1e53b              # double 0.46342100000000003
	.quad	0x3fbc148344c37e6f              # double 0.10968799999999999
	.quad	0x3fea3c0c1fc8f323              # double 0.81982999999999995
	.quad	0x3fcbc2f405f6ba06              # double 0.216887
	.quad	0x3fcbb00bcbe61d00              # double 0.21631
	.quad	0x3fb9aeb3dd11be6e              # double 0.10032199999999999
	.quad	0x3fec3bc2b94d9408              # double 0.88229500000000005
	.quad	0x3fc0a8b08dd1e53b              # double 0.13014800000000001
	.quad	0x3fee15c853c14834              # double 0.94015899999999996
	.quad	0x3fe419dece571088              # double 0.62815799999999999
	.quad	0x3fb220ee8d10f51b              # double 0.070815000000000003
	.quad	0x3fb51a6506141637              # double 0.082433999999999993
	.quad	0x3f89e40c8472c0e8              # double 0.012642
	.quad	0x3fcf0b9dc2f405f7              # double 0.24254200000000001
	.quad	0x3fe8d19bd4067cf2              # double 0.77558700000000003
	.quad	0x3feb37aa25d8d79d              # double 0.850545
	.quad	0x3fef1baa1511dffc              # double 0.97212699999999996
	.quad	0x3fd881e03f705858              # double 0.38292700000000002
	.quad	0x3fda486f049a9974              # double 0.41067100000000001
	.quad	0x3fd3c76d117b5287              # double 0.30904700000000002
	.quad	0x3fe8556084a515cf              # double 0.76042200000000004
	.quad	0x3fb42b51bd61f5be              # double 0.078785999999999994
	.quad	0x3fd447ae147ae148              # double 0.31687500000000002
	.quad	0x3fc2d2999567dbb1              # double 0.14705199999999999
	.quad	0x3fe37dd872f33ca3              # double 0.60911199999999999
	.quad	0x3fb65247cb70ac3b              # double 0.087193000000000007
	.quad	0x3fe06c52a411c2a0              # double 0.51322299999999998
	.quad	0x3fe45f00abf76a2f              # double 0.63659699999999997
	.quad	0x3fb26c1a048e043a              # double 0.071961999999999998
	.quad	0x3fafa2ad3e920c07              # double 0.061788000000000003
	.quad	0x3fd9d983947496ab              # double 0.40390100000000001
	.quad	0x3fe1a1ec4e7253da              # double 0.55101599999999995
	.quad	0x3fe912a305532618              # double 0.78352500000000003
	.quad	0x3fc55f138bcdfefc              # double 0.166964
	.quad	0x3fee36dca07f66e8              # double 0.94419699999999995
	.quad	0x3fd43e707e175d14              # double 0.31631100000000001
	.quad	0x3f9aacd9e83e425b              # double 0.02605
	.quad	0x3fef08aefb2aae29              # double 0.96980999999999994
	.quad	0x3fe6b3a2595bbbe8              # double 0.70942799999999995
	.quad	0x3fba73a365cb35f4              # double 0.103327
	.quad	0x3fed625e99e94ab2              # double 0.91825800000000002
	.quad	0x3fdf15a8deb0fadf              # double 0.48569699999999999
	.quad	0x3fec5f91600f3450              # double 0.88666599999999995
	.quad	0x3fe0b94317acc4f0              # double 0.52261500000000005
	.quad	0x3fb1ff822bbecaac              # double 0.070305000000000006
	.quad	0x3fcfd5e4a3832767              # double 0.24871499999999999
	.quad	0x3fe912c8c5004fb1              # double 0.78354299999999999
	.quad	0x3fe7ed7c6fbd273d              # double 0.74773999999999996
	.quad	0x3fed5b48909289db              # double 0.91739300000000001
	.quad	0x3fc6325d4a5df224              # double 0.17341200000000001
	.quad	0x3fc4e158750c1b97              # double 0.16312699999999999
	.quad	0x3fe0a0578e5c4eb5              # double 0.51957299999999995
	.quad	0x3fe40919ef954eb1              # double 0.62611099999999997
	.quad	0x3fe951c9f72f76e6              # double 0.79123399999999999
	.quad	0x3fe0eb8d82342246              # double 0.52875399999999995
	.quad	0x3fea7950b955f783              # double 0.82730899999999996
	.quad	0x3fea6536501e2585              # double 0.824855
	.quad	0x3fee38c75c4a83b2              # double 0.94443100000000002
	.quad	0x3fd1064ece9a2c67              # double 0.26601000000000002
	.quad	0x3fea6aee2003ab86              # double 0.82555299999999998
	.quad	0x3f9d55a3a08398a6              # double 0.028646999999999999
	.quad	0x3fef02dbe7f2c301              # double 0.96909900000000004
	.quad	0x3fd2b72c5197a249              # double 0.29243000000000002
	.quad	0x3fec39cd8127b2cc              # double 0.88205599999999995
	.quad	0x3fe3007357e670e3              # double 0.59380500000000003
	.quad	0x3fc1ac4f7ec3547e              # double 0.138071
	.quad	0x3fd4db50f40e5a36              # double 0.32588600000000001
	.quad	0x3fc2e5ffa3b9ae0c              # double 0.147644
	.quad	0x3febadc0980b2420              # double 0.86495999999999995
	.quad	0x3fd158a761027957              # double 0.271036
	.quad	0x3fd0f0d413122b7c              # double 0.26469900000000002
	.quad	0x3fd26c4827b6fe2e              # double 0.28785899999999998
	.quad	0x3fe0a44a6223e187              # double 0.52005500000000005
	.quad	0x3fee432ca57a786c              # double 0.94569999999999998
	.quad	0x3fe07521144cbe1f              # double 0.51429800000000003
	.quad	0x3fed10a569b17482              # double 0.90828200000000003
	.quad	0x3fe35a7d24180d3d              # double 0.604796
	.quad	0x3fb8168b5cbff477              # double 0.094093999999999997
	.quad	0x3fef6f1dc50ce4eb              # double 0.98231400000000002
	.quad	0x3fd5f9f87f023e9f              # double 0.34338200000000002
	.quad	0x3fe9902bc72e275b              # double 0.79884900000000003
	.quad	0x3feb1f666234a87e              # double 0.84758299999999998
	.quad	0x3fe4ce18266772d6              # double 0.65015800000000001
	.quad	0x3fe3f082491afc05              # double 0.62310900000000002
	.quad	0x3fe139c304ccee5b              # double 0.53830100000000003
	.quad	0x3fd6e7c06e19b90f              # double 0.35789500000000002
	.quad	0x3fc4add590c0ad04              # double 0.161555
	.quad	0x3fc6e24bba12b5e5              # double 0.178781
	.quad	0x3fe76db7281fd9ba              # double 0.73214299999999999
	.quad	0x3fe20b673c4f3ba7              # double 0.56389199999999995
	.quad	0x3fd79ee02a77a2cf              # double 0.36907200000000001
	.quad	0x3fe143c7d5ed06ff              # double 0.539524
	.quad	0x3fe072c5197a2489              # double 0.51400999999999997
	.quad	0x3fec10dbf0563ed1              # double 0.877058
	.quad	0x3fbd39da16616b55              # double 0.114164
	.quad	0x3fd69d7342edbb5a              # double 0.35336000000000001
	.quad	0x3fdf41a261bf37b9              # double 0.48838100000000001
	.quad	0x3fe3f98958d9b5e9              # double 0.62421099999999996
	.quad	0x3fe413e1c9b41398              # double 0.62742699999999996
	.quad	0x3fdd0b780346dc5d              # double 0.45382499999999998
	.quad	0x3fe01af5ba2be059              # double 0.50329100000000004
	.quad	0x3fde28240b780347              # double 0.47120000000000001
	.quad	0x3fd23879c4113c68              # double 0.28469699999999998
	.quad	0x3fe865796bfca85d              # double 0.76238700000000004
	.quad	0x3f7a0dfdef8487ba              # double 0.0063610000000000003
	.quad	0x3fe4bea4ebdd334c              # double 0.64827199999999996
	.quad	0x3f922706d5065732              # double 0.017727
	.quad	0x3fd0f6d330941c82              # double 0.265065
	.quad	0x3fcf49f0e4da09cc              # double 0.24444399999999999
	.quad	0x3fee174e65bea0ba              # double 0.94034499999999999
	.quad	0x3fd2d68c692f6e83              # double 0.29434500000000002
	.quad	0x3fa26527a20578e6              # double 0.035928000000000002
	.quad	0x3fe0ea65cf67b1c0              # double 0.528613
	.quad	0x3feafd32c625e99f              # double 0.84340800000000005
	.quad	0x3fe8badc0980b242              # double 0.77281
	.quad	0x3fd8eda22f6a50d7              # double 0.38950400000000002
	.quad	0x3fe0c3c3a42f1ed1              # double 0.52389699999999995
	.quad	0x3fb96abde3fbbd7b              # double 0.099284999999999998
	.quad	0x3fe54e1a3f4666ed              # double 0.66578400000000004
	.quad	0x3fe9849cb252ce03              # double 0.79743799999999998
	.quad	0x3fe01fff79c842fa              # double 0.50390599999999997
	.quad	0x3fc493293d102bc7              # double 0.16074099999999999
	.quad	0x3fef6518f3eccc47              # double 0.98109100000000004
	.quad	0x3fe4b7d84901d191              # double 0.64744199999999996
	.quad	0x3fe48b1572580c31              # double 0.64197800000000005
	.quad	0x3fb8c0ad03d9a954              # double 0.096689999999999998
	.quad	0x3fe1fa355043e532              # double 0.56179299999999999
	.quad	0x3fdf3ea2d2fe3f36              # double 0.48819800000000002
	.quad	0x3fcfa5c1c6088d6d              # double 0.24724599999999999
	.quad	0x3feedfbd6a593a2e              # double 0.964812
	.quad	0x3fe30d2e514c22ee              # double 0.59535899999999997
	.quad	0x3fdcf25e56cd6c2f              # double 0.452293
	.quad	0x3fe2f4128bf3bea9              # double 0.59229399999999999
	.quad	0x3fd7579af1886df8              # double 0.36472199999999999
	.quad	0x3fec898915bdd767              # double 0.89178900000000005
	.quad	0x3feb90f301eabbcb              # double 0.86144399999999999
	.quad	0x3fc5ea91d9b1b79e              # double 0.17122100000000001
	.quad	0x3fe597fe8ee6b830              # double 0.67480399999999996
	.quad	0x3fcecfd8f0c77dd8              # double 0.24071799999999999
	.quad	0x3fd88858ff759685              # double 0.383322
	.quad	0x3fe1094e5d5b24ea              # double 0.53238600000000003
	.quad	0x3fe9f6ddaceee0f4              # double 0.81138500000000002
	.quad	0x3fe3d2deca2552a0              # double 0.61949100000000001
	.quad	0x3fc716872b020c4a              # double 0.18037500000000001
	.quad	0x3fd956ffc115df65              # double 0.39593499999999998
	.quad	0x3fe51ce075f6fd22              # double 0.659775
	.quad	0x3fed239e6ab9b23e              # double 0.91059800000000002
	.quad	0x3fc23fab10ba6267              # double 0.142568
	.quad	0x3feaecc1ca3a4b55              # double 0.84140099999999995
	.quad	0x3fb445ed4a1ad645              # double 0.079191999999999999
	.quad	0x3fc0b417ca2120e2              # double 0.130496
	.quad	0x3fed062b27cbf6e4              # double 0.907003
	.quad	0x3feeb1422ccb3a26              # double 0.95913800000000005
	.quad	0x3fdfc286f8ad2568              # double 0.49624800000000002
	.quad	0x3fa11e646f156191              # double 0.033434999999999999
	.quad	0x3fd71743e963dc48              # double 0.36079499999999998
	.quad	0x3faa1b5c7cd898b3              # double 0.050990000000000001
	.quad	0x3fdde6d15ad106ee              # double 0.46721299999999999
	.quad	0x3fc9374bc6a7ef9e              # double 0.19700000000000001
	.quad	0x3febddca4b124d0a              # double 0.87082400000000004
	.quad	0x3fe61fe004b7f5a5              # double 0.69139099999999998
	.quad	0x3fd30b84988094e6              # double 0.29757800000000001
	.quad	0x3fd58b3700474d9c              # double 0.33662199999999998
	.quad	0x3fcc66dbd72bcb60              # double 0.221889
	.quad	0x3fd95b899392189c              # double 0.39621200000000001
	.quad	0x3fd775d56f32bdc2              # double 0.36656699999999998
	.quad	0x3febbee3d5fdcdf7              # double 0.86705200000000004
	.quad	0x3fe18298cc144029              # double 0.54719200000000001
	.quad	0x3fee29845dc83233              # double 0.94256799999999996
	.quad	0x3fed565a14488c61              # double 0.91679100000000002
	.quad	0x3fd0ff04577d9557              # double 0.265565
	.quad	0x3feba8c154c985f0              # double 0.86434999999999995
	.quad	0x3fe3e47dc37a3db4              # double 0.62164200000000003
	.quad	0x3fe4c00fba8826ab              # double 0.64844500000000005
	.quad	0x3fe217f62b6ae7d5              # double 0.56542499999999996
	.quad	0x3fe0f06705c896dd              # double 0.52934599999999998
	.quad	0x3fdf9478c868b9fe              # double 0.49343700000000001
	.quad	0x3fed6c8b43958106              # double 0.91949999999999998
	.quad	0x3fea8b6b6e0d23d5              # double 0.82951900000000001
	.quad	0x3fdc4dca8e2e2b8c              # double 0.44224799999999997
	.quad	0x3fe4e19b90ea9e6f              # double 0.65254000000000001
	.quad	0x3fe050f40e5a35d6              # double 0.50988199999999995
	.quad	0x3fa946e4c0df58c1              # double 0.049369000000000003
	.quad	0x3fe95de7a743a648              # double 0.792713
	.quad	0x3fd35d851654d61b              # double 0.30258299999999999
	.quad	0x3fb1955714b9cb68              # double 0.068684999999999996
	.quad	0x3fee68f4b61fe21e              # double 0.95031200000000005
	.quad	0x3fe67fbce4217d28              # double 0.70309299999999997
	.quad	0x3fd4d955714b9cb7              # double 0.32576500000000003
	.quad	0x3fc6d3c792d1287c              # double 0.178338
	.quad	0x3fe24c6c54bcf0b7              # double 0.57182900000000003
	.quad	0x3fd57b5286b59147              # double 0.33565200000000001
	.quad	0x3fed53543aeab799              # double 0.91642199999999996
	.quad	0x3feb976145953587              # double 0.86222900000000002
	.quad	0x3fd8fc9363f572de              # double 0.39041599999999999
	.quad	0x3fcff1172ef0ae53              # double 0.24954499999999999
	.quad	0x3fd04afd5454152b              # double 0.254577
	.quad	0x3fc847fdc5931ca8              # double 0.189697
	.quad	0x3fe92209aaa3ad19              # double 0.78540500000000002
	.quad	0x3fd12c5197a24895              # double 0.26833000000000001
	.quad	0x3feef8d92fb19e73              # double 0.96787699999999998
	.quad	0x3fc5c52e72da1230              # double 0.17008000000000001
	.quad	0x3fdbf98fa376922e              # double 0.43710700000000002
	.quad	0x3fca52502eec7c95              # double 0.20563699999999999
	.quad	0x3fd63e07a28bb0a3              # double 0.34753600000000001
	.quad	0x3fde807fed20296b              # double 0.47659299999999999
	.quad	0x3fe3247cb70ac3a8              # double 0.59820399999999996
	.quad	0x3fe7fee2c98e53eb              # double 0.74986399999999998
	.quad	0x3fe5753c579f2346              # double 0.67056099999999996
	.quad	0x3fc75c96030c23fb              # double 0.18251300000000001
	.quad	0x3fd8e974a3400b89              # double 0.38924900000000001
	.quad	0x3fe500431bde82d8              # double 0.65628200000000003
	.quad	0x3fe81eecbfb15b57              # double 0.75377499999999997
	.quad	0x3fcc278d0cc35ce2              # double 0.21995700000000001
	.quad	0x3feae05681ecd4aa              # double 0.83988499999999999
	.quad	0x3fdafb3fa6defc7a              # double 0.42158499999999999
	.quad	0x3fed8c8cd63cb817              # double 0.92340699999999998
	.quad	0x3fdd6deb95e5aff3              # double 0.45983400000000002
	.quad	0x3fd72cc2d6a9c561              # double 0.36210700000000001
	.quad	0x3fe932a27f1b6912              # double 0.78743099999999999
	.quad	0x3fc721ab4b72c519              # double 0.18071499999999999
	.quad	0x3fc823a6ce358299              # double 0.18858800000000001
	.quad	0x3fe6c52a411c2a02              # double 0.71156799999999998
	.quad	0x3fe0f54f3775b813              # double 0.529945
	.quad	0x3fe5994e1a3f4667              # double 0.67496400000000001
	.quad	0x3fde958d9b5e95b8              # double 0.47787800000000002
	.quad	0x3fc0d0247021d10b              # double 0.131352
	.quad	0x3fa8beb5b2d4d402              # double 0.048329999999999998
	.quad	0x3fe9283b1d0c8041              # double 0.786161
	.quad	0x3fd6193f6c2699c8              # double 0.34529100000000001
	.quad	0x3fd4d5a9eb2074eb              # double 0.32554100000000002
	.quad	0x3fe24bea4ebdd335              # double 0.57176700000000003
	.quad	0x3feee90795f676ea              # double 0.96594599999999997
	.quad	0x3fe6d4195cc857f3              # double 0.713391
	.quad	0x3fdd6173b85e80bf              # double 0.45907300000000001
	.quad	0x3fe3c219eb6390c9              # double 0.61744399999999999
	.quad	0x3fe747e28240b780              # double 0.72752499999999998
	.quad	0x3fd4419e30014f8b              # double 0.31650499999999998
	.quad	0x3f71819d2391d580              # double 0.004274
	.quad	0x3fe622424a276b7f              # double 0.69168200000000002
	.quad	0x3fd29eb2074ea8da              # double 0.29093599999999997
	.quad	0x3fd1933a0407cc7d              # double 0.27461099999999999
	.quad	0x3fe40153bd167664              # double 0.625162
	.quad	0x3fc75b6805a2d730              # double 0.182477
	.quad	0x3f84dbdf8f473040              # double 0.010185
	.quad	0x3fbfd60e94ee392e              # double 0.12436
	.quad	0x3fb134373f316e37              # double 0.067202999999999999
	.quad	0x3fe05d8b60f1b25f              # double 0.51141899999999996
	.quad	0x3fc11d606317268d              # double 0.13370899999999999
	.quad	0x3fe60a222d5171e3              # double 0.68873700000000004
	.quad	0x3fb9e33269df97ab              # double 0.101123
	.quad	0x3fa8e06530058149              # double 0.048586999999999998
	.quad	0x3fe23020c49ba5e3              # double 0.56837499999999996
	.quad	0x3fdfc94b380cb6c8              # double 0.49666100000000002
	.quad	0x3fd17d24180d3cff              # double 0.27326299999999998
	.quad	0x3fee9565c2d27807              # double 0.95573699999999995
	.quad	0x3fdfd5a5b9628cbd              # double 0.497415
	.quad	0x3fb8711d798d8a98              # double 0.095476000000000005
	.quad	0x3fbb09528f190d17              # double 0.105611
	.quad	0x3fc07ae9ab29e4d6              # double 0.128751
	.quad	0x3fee6a39c51dabe2              # double 0.95046699999999995
	.quad	0x3fdbe1932d6ece14              # double 0.435643
	.quad	0x3fcc4ccee5abc0e4              # double 0.22109400000000001
	.quad	0x3fd81cc532a497fa              # double 0.37675599999999998
	.quad	0x3fda79463cfb3312              # double 0.41365200000000002
	.quad	0x3fe2951a437824d5              # double 0.58070100000000002
	.quad	0x3fe6e94467381d7e              # double 0.71597500000000003
	.quad	0x3fe43ff04577d955              # double 0.63280499999999995
	.quad	0x3fbac4b4d056c509              # double 0.104564
	.quad	0x3fe4eb8f9b13165d              # double 0.65375499999999998
	.quad	0x3fe353415b1422cd              # double 0.60391300000000003
	.quad	0x3fd1fc19c17225b7              # double 0.28101199999999998
	.quad	0x3fd79d7774aba387              # double 0.36898599999999998
	.quad	0x3fd0a871a3b14a90              # double 0.26028099999999998
	.quad	0x3fed77403dddb121              # double 0.92080700000000004
	.quad	0x3fdd0064a9cdc444              # double 0.45314900000000002
	.quad	0x3fe7b84db9c7368b              # double 0.74124800000000002
	.quad	0x3fde192ea52ef912              # double 0.47028700000000001
	.quad	0x3fea4bdfd2630ec3              # double 0.82176199999999999
	.quad	0x3fdb9f94855da273              # double 0.43161500000000003
	.quad	0x3fc55432873bc904              # double 0.166632
	.quad	0x3fc4e7f6f4be835e              # double 0.163329
	.quad	0x3fd00ab2e1693c04              # double 0.25065300000000001
	.quad	0x3fe415011904b3c4              # double 0.62756400000000001
	.quad	0x3fc27dbb16c1e365              # double 0.14446200000000001
	.quad	0x3feab61565c2d278              # double 0.834727
	.quad	0x3fb8fe9b7bf1e8e6              # double 0.097634999999999999
	.quad	0x3fd78705425f2021              # double 0.367616
	.quad	0x3fe0e7f4dbdf8f47              # double 0.52831499999999998
	.quad	0x3fe4acd9e83e425b              # double 0.64610000000000001
	.quad	0x3feaadf9378ee286              # double 0.83373699999999995
	.quad	0x3feb0383ad9f0a1c              # double 0.84417900000000001
	.quad	0x3fe35eefe4ffc979              # double 0.60533899999999996
	.quad	0x3fc8a5f84cad57bc              # double 0.19256499999999999
	.quad	0x3fe44cdb7ae5796c              # double 0.634382
	.quad	0x3fd0e6cd29131ec1              # double 0.26408700000000002
	.quad	0x3fe99235f8099179              # double 0.79909799999999997
	.quad	0x3fefb3bb83cf2cf9              # double 0.99068999999999995
	.quad	0x3fc32ddbdb5d8948              # double 0.149837
	.quad	0x3fe79cf13cee9dd8              # double 0.73790800000000001
	.quad	0x3fd5c02afdda8bd2              # double 0.33985399999999999
	.quad	0x3fec2d4d4024b33e              # double 0.88053000000000003
	.quad	0x3fd9a46e08f21709              # double 0.40066099999999999
	.quad	0x3fe71d68c692f6e8              # double 0.72233999999999998
	.quad	0x3fdaacc92146a1a5              # double 0.416796
	.quad	0x3fc3790752da9867              # double 0.15213099999999999
	.quad	0x3fb03e63e8dda48b              # double 0.063451999999999995
	.quad	0x3fec57bc7f77af64              # double 0.88570999999999999
	.quad	0x3fda06034f3fd934              # double 0.40661700000000001
	.quad	0x3fb8e4ead0c3d252              # double 0.097242999999999996
	.quad	0x3fdf7d24180d3cff              # double 0.49201299999999998
	.quad	0x3fdb87f88765ba6f              # double 0.430174
	.quad	0x3fefe79ee02a77a3              # double 0.99702400000000002
	.quad	0x3febea6e32e3821b              # double 0.872367
	.quad	0x3fe8e8a0d349be90              # double 0.77839700000000001
	.quad	0x3fd004e618ce2d1f              # double 0.25029899999999999
	.quad	0x3feb65abc0e38a7e              # double 0.85616099999999995
	.quad	0x3fdf58750c1b9735              # double 0.48977399999999999
	.quad	0x3fc67125dd095af3              # double 0.17532800000000001
	.quad	0x3fe02964e8b7e4de              # double 0.50505299999999997
	.quad	0x3fed54fdf3b645a2              # double 0.91662500000000002
	.quad	0x3fe58ea18372e6a7              # double 0.67366099999999995
	.quad	0x3fe8f455a7d24181              # double 0.77982600000000002
	.quad	0x3febf240fa9c12f1              # double 0.87332200000000004
	.quad	0x3fe7e50e779207d5              # double 0.74671100000000001
	.quad	0x3fd08ef77f27fe4c              # double 0.25872600000000001
	.quad	0x3feff3e468cac4b5              # double 0.99852200000000002
	.quad	0x3fe1fcac8e68e3ef              # double 0.56209399999999998
	.quad	0x3fcd8ab92c061848              # double 0.230796
	.quad	0x3fcb15d701d9f4d3              # double 0.21160399999999999
	.quad	0x3fee636d22424a27              # double 0.94963699999999995
	.quad	0x3fe50aaa7ded6ba9              # double 0.65755200000000003
	.quad	0x3fec202b841248d8              # double 0.87892700000000001
	.quad	0x3fe1ff4fd6d7e88a              # double 0.56241600000000003
	.quad	0x3fcca26e5471715c              # double 0.22370699999999999
	.quad	0x3fc1393250b5243a              # double 0.13455800000000001
	.quad	0x3fef9672324c8366              # double 0.98711499999999996
	.quad	0x3fe57a743a647fdc              # double 0.67119799999999996
	.quad	0x3fe81947cfa26a23              # double 0.75308600000000003
	.quad	0x3fd0537e2c55c960              # double 0.25509599999999999
	.quad	0x3fd2de8b3b320536              # double 0.29483300000000001
	.quad	0x3fe63e6c4c5974e6              # double 0.69511999999999996
	.quad	0x3fd1cbfb15b573eb              # double 0.27807500000000002
	.quad	0x3fd45d701d9f4d38              # double 0.31820300000000001
	.quad	0x3fe015a4acf312b2              # double 0.50264200000000003
	.quad	0x3fd1e1975f2cb641              # double 0.27939399999999998
	.quad	0x3fef73dc054ef45a              # double 0.98289300000000002
	.quad	0x3fd8cd2d44dca8e3              # double 0.38752300000000001
	.quad	0x3fe17de2ef4e0115              # double 0.54661700000000002
	.quad	0x3fefab3892ee84ad              # double 0.98965099999999994
	.quad	0x3f98e1932d6ece14              # double 0.024298
	.quad	0x3fc39934efcbd556              # double 0.153113
	.quad	0x3fda295208e15012              # double 0.40877200000000002
	.quad	0x3fcc2003ab862b28              # double 0.21972700000000001
	.quad	0x3fed6e008e9b38d6              # double 0.919678
	.quad	0x3fecc7cb70ac3a86              # double 0.89938899999999999
	.quad	0x3fd185058dde7a74              # double 0.27374399999999999
	.quad	0x3fe4e3d816aceaaf              # double 0.65281299999999998
	.quad	0x3fe3b0ec31162281              # double 0.61534699999999998
	.quad	0x3fee36e71cda2b5a              # double 0.94420199999999999
	.quad	0x3fd129f16b11c6d2              # double 0.26818500000000001
	.quad	0x3fe74b20fb224aae              # double 0.72792100000000004
	.quad	0x3fe94b05b7cfe586              # double 0.790408
	.quad	0x3fea89cc319c5a3e              # double 0.82932099999999997
	.quad	0x3f57225b749adc90              # double 0.0014120000000000001
	.quad	0x3fbe5f9591cd1c7e              # double 0.118646
	.quad	0x3fd512513b5bf6a1              # double 0.32924300000000001
	.quad	0x3fe8150763a19008              # double 0.75256699999999999
	.quad	0x3febf240fa9c12f1              # double 0.87332200000000004
	.quad	0x3fdba4e379b77c03              # double 0.43193900000000002
	.quad	0x3fea723897204296              # double 0.82644300000000004
	.quad	0x3fbc9a027525460b              # double 0.111725
	.quad	0x3feac63497b7414a              # double 0.83669499999999997
	.quad	0x3fc188fc9363f573              # double 0.136993
	.quad	0x3fc224463065f959              # double 0.141732
	.quad	0x3fefaababead4f59              # double 0.98959099999999999
	.quad	0x3fee6d0d49949e88              # double 0.95081199999999999
	.quad	0x3fd151ac9afe1da8              # double 0.27061000000000002
	.quad	0x3fcc57d1782d3847              # double 0.22142999999999999
	.quad	0x3fb47faa044ae85c              # double 0.080073000000000005
	.quad	0x3fb54046412cf0fa              # double 0.083012000000000002
	.quad	0x3fe18b9dc2f405f7              # double 0.54829300000000003
	.quad	0x3fb7fb04ee7c49fd              # double 0.093673999999999993
	.quad	0x3fe68268900c521e              # double 0.70341900000000002
	.quad	0x3fe7c677b395c422              # double 0.742977
	.quad	0x3fe837b4a2339c0f              # double 0.75680000000000003
	.quad	0x3fec9871e6cd2913              # double 0.89360899999999999
	.quad	0x3fe96d4c33b53932              # double 0.79459199999999996
	.quad	0x3fd4263d816aceab              # double 0.314834
	.quad	0x3fcf84cad57bc7f7              # double 0.24623999999999999
	.quad	0x3fdb48b220791c4c              # double 0.42631200000000002
	.quad	0x3fe124f00ef1348b              # double 0.53575899999999999
	.quad	0x3fee1a34ca0c282c              # double 0.94069899999999995
	.quad	0x3fe30a99b6f5caf3              # double 0.59504400000000002
	.quad	0x3fe89eb851eb851f              # double 0.76937500000000003
	.quad	0x3fe306bbdbe3c105              # double 0.59457199999999999
	.quad	0x3fe71869835158b8              # double 0.72172999999999998
	.quad	0x3fe1230db6a1e81d              # double 0.53552900000000003
	.quad	0x3fb65918a009f623              # double 0.087297
	.quad	0x3fc00b912dba4d6e              # double 0.12535299999999999
	.quad	0x3f8746887a8d64d8              # double 0.011365
	.quad	0x3fc684ad794a6eb9              # double 0.175924
	.quad	0x3fec62a3cea6c1a0              # double 0.88704099999999996
	.quad	0x3fd87c73eee52589              # double 0.38259599999999999
	.quad	0x3fd5935fc3b4f616              # double 0.33711999999999998
	.quad	0x3fbe0b912dba4d6e              # double 0.117364
	.quad	0x3fb96473471f7942              # double 0.099188999999999999
	.quad	0x3fe2f5989df1172f              # double 0.59248000000000001
	.quad	0x3fe404db9c7368ad              # double 0.62559299999999995
	.quad	0x3fd8c204f2ae07e6              # double 0.38684200000000002
	.quad	0x3fecf5515054ac2a              # double 0.90494600000000003
	.quad	0x3fe2543f1c75818c              # double 0.57278399999999996
	.quad	0x3fd700ffda4052d6              # double 0.35943599999999998
	.quad	0x3fae147ae147ae14              # double 0.058749999999999997
	.quad	0x3fdb18d25edd0529              # double 0.42338999999999999
	.quad	0x3fe7d7cf5f4e4431              # double 0.74509400000000003
	.quad	0x3fd1acabc5154867              # double 0.27616400000000002
	.quad	0x3f998fa376922d95              # double 0.024962000000000002
	.quad	0x3fe0e2ed352220bc              # double 0.52770099999999998
	.quad	0x3feeca8c154c985f              # double 0.96222499999999999
	.quad	0x3fe15ed4a1ad6452              # double 0.54282600000000003
	.quad	0x3fea8cda6e75ff61              # double 0.82969400000000004
	.quad	0x3febde28aa433509              # double 0.870869
	.quad	0x3fe5bef06b37867f              # double 0.679558
	.quad	0x3fca239e6ab9b23e              # double 0.204212
	.quad	0x3fd4417ca2120e1f              # double 0.31649699999999997
	.quad	0x3fe551c9f72f76e6              # double 0.66623399999999999
	.quad	0x3fdc2fa5093964a6              # double 0.44040800000000002
	.quad	0x3fe2a0d349be8ff3              # double 0.58213199999999998
	.quad	0x3fca9e236c15d2d0              # double 0.207951
	.quad	0x3fd00053e2d6238e              # double 0.25002000000000002
	.quad	0x3fcb1f8a0902de01              # double 0.21190000000000001
	.quad	0x3fd941a261bf37b9              # double 0.39463100000000001
	.quad	0x3fe17c9795b35b0c              # double 0.54645900000000003
	.quad	0x3fdf4d65e4606749              # double 0.48909900000000001
	.quad	0x3fedc7c0f4517614              # double 0.93063399999999996
	.quad	0x3fdc906034f3fd93              # double 0.44631199999999999
	.quad	0x3fe6f2e48e8a71de              # double 0.71714999999999995
	.quad	0x3fe2e4ef0281ba80              # double 0.59044600000000003
	.quad	0x3fe5710ecb74ddf8              # double 0.67005099999999995
	.quad	0x3fac5e6ff7dfa00e              # double 0.055407999999999999
	.quad	0x3fd1a27f1b691212              # double 0.27554299999999998
	.quad	0x3fe03906466b1e5c              # double 0.50696099999999999
	.quad	0x3fd2bd33d29563aa              # double 0.292798
	.quad	0x3fd917720c8cd63d              # double 0.39205600000000002
	.quad	0x3fe881711947cfa2              # double 0.76580099999999995
	.quad	0x3fc3b3e1437c5693              # double 0.15392700000000001
	.quad	0x3fe1e338b47c73ef              # double 0.55898700000000001
	.quad	0x3fcbf08893b7d849              # double 0.218278
	.quad	0x3fea87314ca925ff              # double 0.82900300000000005
	.quad	0x3fd88b8f14db5958              # double 0.38351800000000003
	.quad	0x3fd9897204295a6c              # double 0.39901399999999998
	.quad	0x3f98eda22f6a50d7              # double 0.024344000000000001
	.quad	0x3fe702e87d2c7b89              # double 0.71910499999999999
	.quad	0x3fee69ca9ef5232d              # double 0.95041399999999998
	.quad	0x3fea1e03f705857b              # double 0.816164
	.quad	0x3feba23bff8a8f3b              # double 0.86355400000000004
	.quad	0x3fd396bb98c7e282              # double 0.30607499999999999
	.quad	0x3fc781f10667f90e              # double 0.18365300000000001
	.quad	0x3feb106ee30caa32              # double 0.84575599999999995
	.quad	0x3fe5d3953dea465a              # double 0.68207799999999996
	.quad	0x3fe703b81b64e054              # double 0.71920399999999995
	.quad	0x3fdc14cec41dd1a2              # double 0.43876999999999999
	.quad	0x3feeb06a2b1704ff              # double 0.95903499999999997
	.quad	0x3fd16733ebbfd71b              # double 0.271924
	.quad	0x3fe4bbdbe3c10518              # double 0.64793199999999995
	.quad	0x3fedc0e9d51b4fe8              # double 0.92979900000000004
	.quad	0x3fe15a5332acfb76              # double 0.54227599999999998
	.quad	0x3fa8d36b4c7f3494              # double 0.048488000000000003
	.quad	0x3fe2afad6cb53501              # double 0.58394500000000005
	.quad	0x3fe602ff8ec0f883              # double 0.68786599999999998
	.quad	0x3fe72cc0bdcad14a              # double 0.724213
	.quad	0x3fe9037b4a2339c1              # double 0.78167500000000001
	.quad	0x3fc3141205bc01a3              # double 0.14904999999999999
	.quad	0x3fe2bab430f49492              # double 0.58529100000000001
	.quad	0x3fe649adc8fb86f4              # double 0.69649399999999995
	.quad	0x3feb6e71cda2b5a2              # double 0.85723199999999999
	.quad	0x3fe2490e66cb1034              # double 0.57141799999999998
	.quad	0x3fdb0fe47991bc56              # double 0.42284500000000003
	.quad	0x3fcda8cdea033e79              # double 0.231714
	.quad	0x3fe3c4ae85b9e8c4              # double 0.61775899999999995
	.quad	0x3fdd439de481f538              # double 0.45725199999999999
	.quad	0x3feb134ce3de614a              # double 0.84610600000000002
	.quad	0x3fec2e2b8c75c4a8              # double 0.88063599999999997
	.quad	0x3fdb107746887a8d              # double 0.42287999999999998
	.quad	0x3fe3aa4db163baba              # double 0.61453899999999995
	.quad	0x3fd035935fc3b4f6              # double 0.25327
	.quad	0x3fb955a3a08398a6              # double 0.098962999999999995
	.quad	0x3fe312ccf6be37df              # double 0.59604500000000005
	.quad	0x3fec9d68c692f6e8              # double 0.89421499999999998
	.quad	0x3fde1d2178f68be3              # double 0.470528
	.quad	0x3fef01083dbc2331              # double 0.96887599999999995
	.quad	0x3fe0ffe4bcad9ad8              # double 0.53123699999999996
	.quad	0x3fdcc53f39d1b2e6              # double 0.44953900000000002
	.quad	0x3fe07644955b4678              # double 0.51443700000000003
	.quad	0x3fbd27c393682731              # double 0.113888
	.quad	0x3fee02b1f687b13a              # double 0.93782900000000002
	.quad	0x3fa9cb6848beb5b3              # double 0.050380000000000001
	.quad	0x3fc1d18090b417ca              # double 0.139206
	.quad	0x3fda5d5f56a7ac82              # double 0.41194900000000001
	.quad	0x3feddf9591cd1c7e              # double 0.93354300000000001
	.quad	0x3fc5f34938583622              # double 0.171487
	.quad	0x3feac0df58c08b76              # double 0.83604400000000001
	.quad	0x3fe9eff1950331e4              # double 0.81054000000000003
	.quad	0x3fca685db76b3bb8              # double 0.20630999999999999
	.quad	0x3fe8e3d1cc100e6b              # double 0.77781
	.quad	0x3fd611ba3ca7503c              # double 0.34483200000000003
	.quad	0x3fef6709fa54c554              # double 0.98132799999999997
	.quad	0x3fb668900c521dda              # double 0.087532999999999999
	.quad	0x3fbfe47991bc5586              # double 0.12458
	.quad	0x3fbff6a0dbad3a60              # double 0.124857
	.quad	0x3fcd3a2595bbbe88              # double 0.22833700000000001
	.quad	0x3fe3492bc2fc6973              # double 0.60268200000000005
	.quad	0x3feecbe1eb4202da              # double 0.96238800000000002
	.quad	0x3fac4b6e935b91f7              # double 0.055263
	.quad	0x3fde6ece13f4a98b              # double 0.47551300000000002
	.quad	0x3feeae18ac9f2fdc              # double 0.95875200000000004
	.quad	0x3fe09d2391d57ffa              # double 0.51918200000000003
	.quad	0x3fe1764adff822bc              # double 0.54569000000000001
	.quad	0x3feeceaf251c193b              # double 0.96272999999999997
	.quad	0x3fd765dbfceb7889              # double 0.36559199999999997
	.quad	0x3fe7a78d0cc35ce2              # double 0.73920300000000005
	.quad	0x3fad549731098d47              # double 0.057285999999999997
	.quad	0x3fdddae3e6c4c597              # double 0.46648499999999998
	.quad	0x3fe8fdbb16c1e365              # double 0.78097300000000003
	.quad	0x3feaad6451b93038              # double 0.83366600000000002
	.quad	0x3fae75ddd2ae8e1d              # double 0.059492999999999997
	.quad	0x3fea12cf0f9d2bf5              # double 0.81479599999999996
	.quad	0x3fee4d65e4606749              # double 0.94694800000000001
	.quad	0x3fd4b927d45a5fc8              # double 0.32380100000000001
	.quad	0x3fe9cf95d4e8fb01              # double 0.80659000000000003
	.quad	0x3f8d69d30270f388              # double 0.014362
	.quad	0x3fd6eeb2d0a24463              # double 0.358319
	.quad	0x3fe05c810a569b17              # double 0.51129199999999997
	.quad	0x3fee04c6a3bddfca              # double 0.938083
	.quad	0x3facf8d716d2aa5c              # double 0.056585999999999997
	.quad	0x3fde82d38476f2a6              # double 0.47673500000000002
	.quad	0x3fdd4f1a1986b9c3              # double 0.457953
	.quad	0x3fb87570c564f97f              # double 0.095542000000000002
	.quad	0x3fddd56f32bdc26e              # double 0.46615200000000001
	.quad	0x3fd29945b6c3760c              # double 0.290605
	.quad	0x3fecf6577531db44              # double 0.90507099999999995
	.quad	0x3fe26c6bce8533b1              # double 0.575735
	.quad	0x3fdfa6e75ff609dd              # double 0.494562
	.quad	0x3fd6fb4c3c18b503              # double 0.35908800000000002
	.quad	0x3fe878854cdb7ae5              # double 0.76471199999999995
	.quad	0x3fb9bff04577d955              # double 0.10058499999999999
	.quad	0x3fad0bfa0945f9df              # double 0.056731999999999998
	.quad	0x3fe6e4712e40852b              # double 0.71538599999999997
	.quad	0x3fecfa1c25d07421              # double 0.90553099999999997
	.quad	0x3fe94784230fcf81              # double 0.78998000000000002
	.quad	0x3fbad02cd39da166              # double 0.104739
	.quad	0x3fd48826aa8eb463              # double 0.32080999999999998
	.quad	0x3fd8fa48301a79ff              # double 0.39027600000000001
	.quad	0x3fecf2452c59fb1e              # double 0.90457399999999999
	.quad	0x3fdec4b09e98dcdb              # double 0.48075499999999999
	.quad	0x3fa993d5347a5b10              # double 0.049956
	.quad	0x3fe84504816f0069              # double 0.75842500000000002
	.quad	0x3fedf2d7f950b956              # double 0.935894
	.quad	0x3fe50711d798d8a9              # double 0.65711299999999995
	.quad	0x3f94213a0c6b484d              # double 0.019657999999999998
	.quad	0x3fe54a3a4b5568e8              # double 0.66531099999999999
	.quad	0x3fdddf3b645a1cac              # double 0.46675
	.quad	0x3fde845564b662fe              # double 0.476827
	.quad	0x3fdfee5abc0e38a8              # double 0.49892300000000001
	.quad	0x3fd14d834091c087              # double 0.27035599999999999
	.quad	0x3fe0c3137b07075b              # double 0.52381299999999997
	.quad	0x3fe39cae21101b00              # double 0.61287599999999998
	.quad	0x3fe13e9a6f826edb              # double 0.53889200000000004
	.quad	0x3fe4543aeab7995f              # double 0.63528200000000001
	.quad	0x3fe1281344806291              # double 0.53614200000000001
	.quad	0x3fe11652bd3c3611              # double 0.53397499999999998
	.quad	0x3fd918efbb0e5e68              # double 0.39214700000000002
	.quad	0x3fdbf2ae07e5a78f              # double 0.43668699999999999
	.quad	0x3fe2d6798958d9b6              # double 0.58868100000000001
	.quad	0x3fc958ea7ce0fc2f              # double 0.19802600000000001
	.quad	0x3fe8c73eee525892              # double 0.77432199999999995
	.quad	0x3fc4aceaaf35e311              # double 0.161527
	.quad	0x3fd69070fbeb9e49              # double 0.35256599999999999
	.quad	0x3fe1df3300de4c51              # double 0.55849599999999999
	.quad	0x3fab2e9ccb7d4174              # double 0.053089999999999998
	.quad	0x3fd00c8cd63cb817              # double 0.25076599999999999
	.quad	0x3fe867e62dc6e2a8              # double 0.762683
	.quad	0x3fdd3c9abb01c92e              # double 0.45682400000000001
	.quad	0x3fe705c4651f3e8a              # double 0.71945400000000004
	.quad	0x3fd0e1a3f4666eca              # double 0.26377200000000001
	.quad	0x3fe0996312f4cf4a              # double 0.51872399999999996
	.quad	0x3fe5a6b93ccd0fe9              # double 0.67660200000000004
	.quad	0x3fe0757b41bfbdf1              # double 0.51434100000000005
	.quad	0x3fe165c4eb56fb8f              # double 0.54367299999999996
	.quad	0x3fc7549f94855da2              # double 0.18226999999999999
	.quad	0x3fe7b649d388a8b1              # double 0.74100200000000005
	.quad	0x3feba86940357a35              # double 0.86430799999999997
	.quad	0x3fe76e675147f130              # double 0.73222699999999996
	.quad	0x3fe2a72862f5989e              # double 0.58290500000000001
	.quad	0x3fda2085b18548aa              # double 0.40823500000000001
	.quad	0x3fb4ed0b30b5aa71              # double 0.081741999999999995
	.quad	0x3fe68cd423d9231c              # double 0.70469099999999996
	.quad	0x3fec9cd3e0bd449a              # double 0.89414400000000005
	.quad	0x3fdaa459103c8e26              # double 0.41628100000000001
	.quad	0x3fdf76b3bb83cf2d              # double 0.49162
	.quad	0x3fd5abde3fbbd7b2              # double 0.338615
	.quad	0x3fde07d0aed99cbf              # double 0.46922700000000001
	.quad	0x3fee446b69db65ed              # double 0.94585200000000003
	.quad	0x3fd7f0b28522ea10              # double 0.37406600000000001
	.quad	0x3fd1a4b5568e820e              # double 0.27567799999999998
	.quad	0x3fee28d21bc126a6              # double 0.94248299999999996
	.quad	0x3fe0c2e126202539              # double 0.52378899999999995
	.quad	0x3fe4f95703f2d3c8              # double 0.65543700000000005
	.quad	0x3fcd5f3d7d3910c3              # double 0.22946900000000001
	.quad	0x3fe8fa24894c447c              # double 0.78053499999999997
	.quad	0x3fe9f939a7c17a89              # double 0.81167299999999998
	.quad	0x3fc42339c0ebedfa              # double 0.15732499999999999
	.quad	0x3fed7dd65a14488c              # double 0.92161099999999995
	.quad	0x3fc7457c0b135979              # double 0.181808
	.quad	0x3fed953586ca89fc              # double 0.92446399999999995
	.quad	0x3fa1c044284dfce3              # double 0.034669999999999999
	.quad	0x3fc895208e150119              # double 0.192051
	.quad	0x3feff32378ab0c89              # double 0.99843000000000003
	.quad	0x3fe981882adc4c9d              # double 0.79706200000000005
	.quad	0x3fc388f42fe82518              # double 0.152617
	.quad	0x3fced19dece57109              # double 0.24077200000000001
	.quad	0x3f82ac753e707e17              # double 0.0091179999999999993
	.quad	0x3fe9d2e72da122fb              # double 0.80699500000000002
	.quad	0x3fe8d821294573a8              # double 0.77638300000000005
	.quad	0x3fe9b9a7c17a8933              # double 0.80391299999999999
	.quad	0x3fe6e0828c36da88              # double 0.71490600000000004
	.quad	0x3fcd249e44fa0514              # double 0.22767999999999999
	.quad	0x3fc19dfdac68a937              # double 0.13763400000000001
	.quad	0x3fd06bfca85caafc              # double 0.25659100000000001
	.quad	0x3fe00d1526d8b1dd              # double 0.50159699999999996
	.quad	0x3fee7e21d96e9bbf              # double 0.95289699999999999
	.quad	0x3fe42df0d413122b              # double 0.63060799999999995
	.quad	0x3fea8a45d41fa765              # double 0.82937899999999998
	.quad	0x3fde14ad362e9036              # double 0.47001199999999999
	.quad	0x3fec610cf5b1c865              # double 0.88684700000000005
	.quad	0x3fc70307f23cc8de              # double 0.17978
	.quad	0x3f7c39bcba301217              # double 0.0068910000000000004
	.quad	0x3fea75afaf859429              # double 0.82686599999999999
	.quad	0x3fe2219220ff5409              # double 0.56659800000000005
	.quad	0x3fede60807357e67              # double 0.93432999999999999
	.quad	0x3fdeb5675579af19              # double 0.47982200000000003
	.quad	0x3fdbd44dca8e2e2c              # double 0.43483300000000003
	.quad	0x3fe5e4d7f0ed3d86              # double 0.68418500000000004
	.quad	0x3fe855432873bc90              # double 0.76040799999999997
	.quad	0x3feed3c148344c38              # double 0.96334900000000001
	.quad	0x3fd1996744b2b778              # double 0.27498800000000001
	.quad	0x3fe001ba7fc32ebe              # double 0.50021099999999996
	.quad	0x3fe44404a72ead92              # double 0.63330299999999995
	.quad	0x3fd53382e44b6e93              # double 0.33126899999999998
	.quad	0x3fe4b343fa2ad3e9              # double 0.64688299999999999
	.quad	0x3fe53ba12b5e529c              # double 0.66352900000000004
	.quad	0x3fb5ecb31c219eb6              # double 0.085642999999999996
	.quad	0x3fd4c86cebbba55d              # double 0.32473299999999999
	.quad	0x3fdf42e557de0d67              # double 0.488458
	.quad	0x3fe5067ad8e43244              # double 0.65704099999999999
	.quad	0x3fed7fed20296b33              # double 0.92186599999999996
	.quad	0x3fd8df0d413122b8              # double 0.38861400000000001
	.quad	0x3fcca4766c6de764              # double 0.223769
	.quad	0x3feeed1e108c3f3e              # double 0.966445
	.quad	0x3fe327264a16a487              # double 0.59852899999999998
	.quad	0x3fe7a15336deb95e              # double 0.73844299999999996
	.quad	0x3fea5df86e3b46fe              # double 0.82397100000000001
	.quad	0x3f9ae46cfc829cfe              # double 0.026262000000000001
	.quad	0x3feb9b0ab2e1693c              # double 0.86267599999999999
	.quad	0x3fed7c49fd7a13c2              # double 0.92142199999999996
	.quad	0x3fe3cd87724fa8b5              # double 0.61883900000000003
	.quad	0x3feade76427c7c52              # double 0.83965599999999996
	.quad	0x3fe4ca2fcefaa476              # double 0.64968099999999995
	.quad	0x3fd85193708aac97              # double 0.37997900000000001
	.quad	0x3fe4865300581494              # double 0.64139699999999999
	.quad	0x3fc7994e1a3f4667              # double 0.184366
	.quad	0x3fe5193d5347a5b1              # double 0.659331
	.quad	0x3fc22e09fe86833c              # double 0.14202999999999999
	.quad	0x3fb9389b52007dd4              # double 0.098519999999999996
	.quad	0x3fa4c8ffb8b26395              # double 0.040596
	.quad	0x3fa91e85fd04a2fd              # double 0.049061
	.quad	0x3fd161fe21d96e9c              # double 0.27160600000000001
	.quad	0x3fe0a82e87d2c7b9              # double 0.52053000000000005
	.quad	0x3febb8950763a190              # double 0.866282
	.quad	0x3fd54d72799a1fd1              # double 0.33285199999999998
	.quad	0x3fe08112ba16e7a3              # double 0.51575599999999999
	.quad	0x3feb3804534bd76f              # double 0.85058800000000001
	.quad	0x3fe2359578a2a90d              # double 0.56904100000000002
	.quad	0x3fd8bfe3b03e20cd              # double 0.386712
	.quad	0x3fe033226c3b927d              # double 0.50624199999999997
	.quad	0x3feb2ea3161a1db8              # double 0.84944299999999995
	.quad	0x3fcb823c85c24c40              # double 0.21491199999999999
	.quad	0x3feb049ecb31c21a              # double 0.84431400000000001
	.quad	0x3fe2aff2a172abef              # double 0.583978
	.quad	0x3fda50870110a138              # double 0.411165
	.quad	0x3fe92921ccd96207              # double 0.78627100000000005
	.quad	0x3fe57837b4a2339c              # double 0.67092499999999999
	.quad	0x3fe24f00ef1348b2              # double 0.57214399999999999
	.quad	0x3fe58262456f75da              # double 0.67216600000000004
	.quad	0x3fe2af8bdec5f395              # double 0.58392900000000003
	.quad	0x3fedbb7521144cbe              # double 0.92913299999999999
	.quad	0x3fe3ddfa871a3b15              # double 0.62084700000000004
	.quad	0x3fcad3953dea465a              # double 0.20958199999999999
	.quad	0x3fc63da2f8bdec5f              # double 0.17375599999999999
	.quad	0x3fa12f09d8c6d613              # double 0.033562000000000002
	.quad	0x3fed6e503fb37436              # double 0.91971599999999998
	.quad	0x3fc63a109d0635a4              # double 0.173647
	.quad	0x3fd4f30a4e379b78              # double 0.32733400000000001
	.quad	0x3fec59ccfaeff5c7              # double 0.88596200000000003
	.quad	0x3fb4903ea704bc27              # double 0.080325999999999995
	.quad	0x3fece02ea960b6fa              # double 0.902366
	.quad	0x3fed144028e4fb98              # double 0.90872200000000003
	.quad	0x3fd5b024f6598e11              # double 0.33887600000000001
	.quad	0x3fe75912556d19df              # double 0.72962300000000002
	.quad	0x3febbe6601bc98a2              # double 0.86699199999999998
	.quad	0x3fd6877ab324851b              # double 0.35201900000000003
	.quad	0x3fc3443d46b26bf8              # double 0.15051999999999999
	.quad	0x3fe3edb50f40e5a3              # double 0.62276699999999996
	.quad	0x3fd51aa821f2990f              # double 0.32975199999999999
	.quad	0x3fe5a6a444178705              # double 0.67659199999999997
	.quad	0x3fed2d905c033615              # double 0.91181199999999996
	.quad	0x3fe353e2d6238da4              # double 0.60399000000000003
	.quad	0x3fe9a0cf1800a7c6              # double 0.80088000000000004
	.quad	0x3fcbe414e7ee9143              # double 0.21789800000000001
	.quad	0x3fe85f202107b784              # double 0.76161199999999995
	.quad	0x3fe5b6ae7d566cf4              # double 0.67854999999999999
	.quad	0x3fdd7a80cf9e3865              # double 0.46060200000000001
	.quad	0x3fd5dfd694ccab3f              # double 0.34178700000000001
	.quad	0x3fe66dd4845132f8              # double 0.70090699999999995
	.quad	0x3fd71eabbcb1cc96              # double 0.36124699999999998
	.quad	0x3fe79f1cfbb94962              # double 0.73817299999999997
	.quad	0x3fc1c4fc1df3300e              # double 0.138824
	.quad	0x3fddeac42e9899bf              # double 0.46745399999999998
	.quad	0x3fe91a73b42cc2d7              # double 0.78447900000000004
	.quad	0x3fc1d5347a5b0ff1              # double 0.139319
	.quad	0x3fe503e8576cce5f              # double 0.65672699999999995
	.quad	0x3fb620685553ef6b              # double 0.086431999999999995
	.quad	0x3fe55460aa64c2f8              # double 0.66654999999999998
	.quad	0x3fe4fded6ba8c587              # double 0.65599700000000005
	.quad	0x3feeec204f2ae07e              # double 0.96632399999999996
	.quad	0x3fe1292c49342678              # double 0.53627599999999997
	.quad	0x3fe0dcd4ed2cbea5              # double 0.52695700000000001
	.quad	0x3fef0958d9b5e95b              # double 0.96989099999999994
	.quad	0x3feda15336deb95e              # double 0.92594299999999996
	.quad	0x3fac07aaef2c7326              # double 0.054746000000000003
	.quad	0x3fd5c1333b96af04              # double 0.33991700000000002
	.quad	0x3fd0a18372e6a769              # double 0.25985799999999998
	.quad	0x3fb17a46173b85e8              # double 0.068271999999999999
	.quad	0x3fc9ef5232d2bb23              # double 0.20261599999999999
	.quad	0x3fdf3005814940bc              # double 0.48730600000000002
	.quad	0x3fd17839cd8127b3              # double 0.27296300000000001
	.quad	0x3fe0fe1b8ed1bf7b              # double 0.53101900000000002
	.quad	0x3fae34dad31fcd25              # double 0.058997000000000001
	.quad	0x3fefe57b84db9c73              # double 0.99676299999999995
	.quad	0x3fe2cbdba0a52696              # double 0.58738500000000005
	.quad	0x3fcca7a41e57d9dc              # double 0.22386600000000001
	.quad	0x3fc84db163baba7c              # double 0.18987100000000001
	.quad	0x3fdb8c9b845564b6              # double 0.43045699999999998
	.quad	0x3fe136d655e28aa4              # double 0.53794399999999998
	.quad	0x3fe4a4b33daf8df8              # double 0.64510500000000004
	.quad	0x3fe72bd1aa821f2a              # double 0.72409900000000005
	.quad	0x3fee3eaf6837f7be              # double 0.94515199999999999
	.quad	0x3fe68893b7d84902              # double 0.70417200000000002
	.quad	0x3fea0eef1bac2df1              # double 0.81432300000000002
	.quad	0x3fec8f53c579f234              # double 0.89249599999999995
	.quad	0x3fea1ae924f227d0              # double 0.81578499999999998
	.quad	0x3fd096d0917d6b66              # double 0.25920500000000002
	.quad	0x3fec8a2014727dcc              # double 0.89186100000000001
	.quad	0x3fd79270b06c43f6              # double 0.368313
	.quad	0x3fef82dbe7f2c301              # double 0.98472400000000004
	.quad	0x3f962c77574f722e              # double 0.021654
	.quad	0x3fe1f6dfc5cdd50b              # double 0.56138600000000005
	.quad	0x3fd94a3400b88ca4              # double 0.39515400000000001
	.quad	0x3fe5d9945b6c3761              # double 0.68281000000000003
	.quad	0x3fd38244e93e1c9b              # double 0.30482599999999999
	.quad	0x3feb25f84cad57bc              # double 0.84838499999999994
	.quad	0x3fea5ca29845dc83              # double 0.82380799999999998
	.quad	0x3fd14c48adeebb34              # double 0.27028099999999999
	.quad	0x3f9d95dd4c76d118              # double 0.028892000000000001
	.quad	0x3fc22c98e53eb39a              # double 0.141986
	.quad	0x3fd4ca57a786c227              # double 0.32485000000000003
	.quad	0x3fe93e7296f6512b              # double 0.78887300000000005
	.quad	0x3fe70229a5ebb774              # double 0.71901400000000004
	.quad	0x3fec98d477bbf940              # double 0.89365600000000001
	.quad	0x3fcb388a8b08dd1e              # double 0.21266299999999999
	.quad	0x3fc5fcfc3f811f4f              # double 0.17178299999999999
	.quad	0x3fea317ce52deca2              # double 0.81854099999999996
	.quad	0x3fe7da3a08398a65              # double 0.74538899999999997
	.quad	0x3fd17b677f6b1a2a              # double 0.27315699999999998
	.quad	0x3fda3e2d6238da3c              # double 0.41004499999999999
	.quad	0x3fca7cd035371972              # double 0.20693400000000001
	.quad	0x3fe1d0edc3bd5992              # double 0.55675399999999997
	.quad	0x3fe6185271bcdbbe              # double 0.690469
	.quad	0x3fb7d1244a6223e2              # double 0.093035000000000006
	.quad	0x3fec280064a9cdc4              # double 0.87988299999999997
	.quad	0x3f95faebc408d8ed              # double 0.021465000000000001
	.quad	0x3fdee53a81dc0db2              # double 0.48274099999999998
	.quad	0x3fef784662bae03b              # double 0.98343199999999997
	.quad	0x3fdf53825e13b18e              # double 0.48947200000000002
	.quad	0x3fecbcbe61cffeb0              # double 0.89803999999999995
	.quad	0x3fccc61522a6f3f5              # double 0.22479499999999999
	.quad	0x3fe2ff36ac647779              # double 0.59365400000000002
	.quad	0x3fd0488c60cbf2b2              # double 0.25442799999999999
	.quad	0x3fc58655193708ab              # double 0.16816200000000001
	.quad	0x3fe922595bbbe879              # double 0.785443
	.quad	0x3fdc74d9c6b0531a              # double 0.44463200000000003
	.quad	0x3fd0c0724b76f6d7              # double 0.26174599999999998
	.quad	0x3fdcda3c21187e7c              # double 0.45082
	.quad	0x3fd06299524bfd2f              # double 0.25601800000000002
	.quad	0x3fdb3ab430f49492              # double 0.425458
	.quad	0x3fc7ff36ac647779              # double 0.187476
	.quad	0x3fee953dea465a57              # double 0.95571799999999996
	.quad	0x3fe8533b10774688              # double 0.76015999999999995
	.quad	0x3fef4b2314013ec4              # double 0.97792199999999995
	.quad	0x3fa037b4a2339c0f              # double 0.031675000000000002
	.quad	0x3fc33f42352eb5f6              # double 0.150368
	.quad	0x3fed7caa7589efd8              # double 0.92146799999999995
	.quad	0x3fc7988d2a1f8e3b              # double 0.18434300000000001
	.quad	0x3f98a2a90cd423d9              # double 0.024058
	.quad	0x3feba5a682b62846              # double 0.86397100000000004
	.quad	0x3fe2fb3311a543f2              # double 0.59316400000000002
	.quad	0x3fc55885d31337eb              # double 0.166764
	.quad	0x3feaf79a6b50b0f2              # double 0.84272499999999995
	.quad	0x3fe4c7ffde7210bf              # double 0.64941400000000005
	.quad	0x3fc15b899392189c              # double 0.135606
	.quad	0x3fe27a9c12f09d8c              # double 0.57746699999999995
	.quad	0x3fdff961804d9839              # double 0.49959599999999998
	.quad	0x3fe07bc3c5bd0e13              # double 0.51510800000000001
	.quad	0x3fe0e6fb4c3c18b5              # double 0.528196
	.quad	0x3feda93d102bc72e              # double 0.92690899999999998
	.quad	0x3fd7a2834d26fa40              # double 0.36929400000000001
	.quad	0x3fe2f86c226809d5              # double 0.59282500000000005
	.quad	0x3febb8b26394face              # double 0.86629599999999995
	.quad	0x3fe1978f68be2f7b              # double 0.54975099999999999
	.quad	0x3fe85faca3619978              # double 0.76167899999999999
	.quad	0x3fe5aba387592535              # double 0.67720199999999997
	.quad	0x3fea897635e7429a              # double 0.82928000000000002
	.quad	0x3fddfe75bc44bf4d              # double 0.46865600000000002
	.quad	0x3fc2365cb35f3d7d              # double 0.14228399999999999
	.quad	0x3fd7049235f80991              # double 0.35965399999999997
	.quad	0x3fec22e3c536d656              # double 0.87925900000000001
	.quad	0x3fe10d2806af46aa              # double 0.532856
	.quad	0x3fec756eac860568              # double 0.88933499999999999
	.quad	0x3fe7830a0b1bbcf5              # double 0.73474600000000001
	.quad	0x3fe956ffc115df65              # double 0.79186999999999996
	.quad	0x3fe6aa582dbe7f2c              # double 0.70829399999999998
	.quad	0x3fdd05814940bbb2              # double 0.453461
	.quad	0x3fc64a1f080303c0              # double 0.17413699999999999
	.quad	0x3fec1248d7e02646              # double 0.87723200000000001
	.quad	0x3fc504bc27631b58              # double 0.16420699999999999
	.quad	0x3fe43f444e0daa0d              # double 0.63272300000000004
	.quad	0x3fdfdfaca3619978              # double 0.498027
	.quad	0x3fa0ff7596851223              # double 0.033198999999999999
	.quad	0x3fc90468448cf7cb              # double 0.19544700000000001
	.quad	0x3fe51656eefa1e3f              # double 0.65897700000000003
	.quad	0x3fe31a95421c0443              # double 0.59699500000000005
	.quad	0x3fb5f28848387df6              # double 0.085732000000000002
	.quad	0x3fc3e5e2478854ce              # double 0.15545300000000001
	.quad	0x3fced2ed783dff3f              # double 0.240812
	.quad	0x3f86672fba01eeee              # double 0.010939000000000001
	.quad	0x3fd17f455a7d2418              # double 0.273393
	.quad	0x3fe159d3458cd20b              # double 0.542215
	.quad	0x3fde9042d8c2a455              # double 0.47755500000000001
	.quad	0x3fe30c0f01fb82c3              # double 0.59522200000000003
	.quad	0x3fec5e0d66f0cfe1              # double 0.88648099999999996
	.quad	0x3fa0bbf50e347629              # double 0.032683999999999998
	.quad	0x3fd52db1e9f27781              # double 0.33091399999999999
	.quad	0x3fd62a2c2374794f              # double 0.34632400000000002
	.quad	0x3fec197c3d68405b              # double 0.87811099999999997
	.quad	0x3feb7102363b2570              # double 0.857545
	.quad	0x3fd83c81908e581d              # double 0.378693
	.quad	0x3fae679463cfb331              # double 0.059383999999999999
	.quad	0x3fec854ac29bf163              # double 0.89127100000000004
	.quad	0x3fc89310129cbab6              # double 0.19198799999999999
	.quad	0x3febf090f733a8a4              # double 0.873116
	.quad	0x3fe301c714fce747              # double 0.59396700000000002
	.quad	0x3fdc58793dd97f63              # double 0.44290000000000002
	.quad	0x3fbfd29563a9f384              # double 0.124307
	.quad	0x3feef97aaac1094a              # double 0.96795399999999998
	.quad	0x3fe59203a322af57              # double 0.67407399999999995
	.quad	0x3fd8beb18116ebd5              # double 0.38663900000000001
	.quad	0x3fb7746887a8d64d              # double 0.091619999999999993
	.quad	0x3fadd7ecbb7f9d6f              # double 0.058288
	.quad	0x3faed30f062d40ab              # double 0.060204000000000001
	.quad	0x3feda60913a4f872              # double 0.92651799999999995
	.quad	0x3fe4fa355043e532              # double 0.65554299999999999
	.quad	0x3fc3b8800eae18ad              # double 0.15406800000000001
	.quad	0x3fe23fb9bed30f06              # double 0.57027899999999998
	.quad	0x3fe596e7a311e860              # double 0.67467100000000002
	.quad	0x3fee91e42e126202              # double 0.95530899999999996
	.quad	0x3feb507e9d94d0dd              # double 0.853576
	.quad	0x3fefb877ab324852              # double 0.99126800000000004
	.quad	0x3fab4549b62c7757              # double 0.053262999999999998
	.quad	0x3fc37f8ca8198f1d              # double 0.15232999999999999
	.quad	0x3fed867cf1c3265b              # double 0.92266700000000001
	.quad	0x3fcbc46d82ba5a04              # double 0.21693200000000001
	.quad	0x3fd5cb35f3d7d391              # double 0.340528
	.quad	0x3fe886af46aa087d              # double 0.76644100000000004
	.quad	0x3fe9a8a6117720c9              # double 0.80183700000000002
	.quad	0x3fb1f5be5d9e40c8              # double 0.070155999999999996
	.quad	0x3f843393ab430f49              # double 0.0098639999999999995
	.quad	0x3fd21df3300de4c5              # double 0.283078
	.quad	0x3fc736b4c7f34938              # double 0.18135699999999999
	.quad	0x3fb3c44bf4cb1898              # double 0.077214000000000005
	.quad	0x3fd588b97785729b              # double 0.33646999999999999
	.quad	0x3fc9338f7985271c              # double 0.19688600000000001
	.quad	0x3fef8f12c27a6373              # double 0.98621499999999995
	.quad	0x3fd5e2da554b8bf0              # double 0.34197100000000002
	.quad	0x3fe121dda059a73b              # double 0.53538399999999997
	.quad	0x3fc418f81e8a2ec3              # double 0.15701200000000001
	.quad	0x3fe0c9ecb31c219f              # double 0.52464900000000003
	.quad	0x3fdb9c842fa50939              # double 0.43142799999999998
	.quad	0x3fe4d564b662fdfc              # double 0.65104899999999999
	.quad	0x3fdc65625a682b63              # double 0.44368800000000003
	.quad	0x3fd5f961804d9839              # double 0.34334599999999998
	.quad	0x3fce209aaa3ad18d              # double 0.23537
	.quad	0x3fde3e8576cce5f7              # double 0.47256599999999999
	.quad	0x3fe31b71758e2196              # double 0.59709999999999996
	.quad	0x3fd48b19a415f45e              # double 0.32099
	.quad	0x3fe5485a0be51090              # double 0.66508199999999995
	.quad	0x3fd62467be553ac5              # double 0.345972
	.quad	0x3feacc39ffd60e95              # double 0.83743000000000001
	.quad	0x3fb0bea4ebdd334c              # double 0.065408999999999995
	.quad	0x3fef05532617c1be              # double 0.96940000000000004
	.quad	0x3f94827b6fe2e6eb              # double 0.020029000000000002
	.quad	0x3fc6307f23cc8de3              # double 0.17335500000000001
	.quad	0x3fef1a36e2eb1c43              # double 0.97194999999999998
	.quad	0x3fd7841ede1198af              # double 0.36743900000000002
	.quad	0x3fd356bca5375c8e              # double 0.30216900000000002
	.quad	0x3fdb4070329802c1              # double 0.42580800000000002
	.quad	0x3fd638b04ab606b8              # double 0.34721000000000002
	.quad	0x3fd2cb923a29c77a              # double 0.29367500000000002
	.quad	0x3feca6809d495183              # double 0.89532500000000004
	.quad	0x3fcd09fa54c55433              # double 0.22686700000000001
	.quad	0x3fe69bb05faebc41              # double 0.70650500000000005
	.quad	0x3fc80828c36da87a              # double 0.187749
	.quad	0x3fe13d859c8c9321              # double 0.53876000000000002
	.quad	0x3fabd3e4ef0281ba              # double 0.054350999999999997
	.quad	0x3fb5667b5f1bef4a              # double 0.083595000000000002
	.quad	0x3fa6d0d49949e881              # double 0.044561999999999997
	.quad	0x3fe89e1b089a0275              # double 0.76929999999999998
	.quad	0x3f9e0b0af5fd47bf              # double 0.029339
	.quad	0x3fcb152f3c2dadb8              # double 0.21158399999999999
	.quad	0x3fc52e8c0485a0be              # double 0.16548299999999999
	.quad	0x3fcff9d6f112fd33              # double 0.24981200000000001
	.quad	0x3fe1d46b26bf876a              # double 0.55718000000000001
	.quad	0x3fdb8e820e629952              # double 0.43057299999999998
	.quad	0x3fe5eba493c89f41              # double 0.68501500000000004
	.quad	0x3fe3a1f8e3ac0c63              # double 0.61352200000000001
	.quad	0x3fecfe996312f4cf              # double 0.90607899999999997
	.quad	0x3fe7825bfad29995              # double 0.73466299999999995
	.quad	0x3fdc1b97353b4b30              # double 0.43918400000000002
	.quad	0x3fe07878b7a1c25d              # double 0.514706
	.quad	0x3fee7f4ba51a005c              # double 0.95303899999999996
	.quad	0x3fe7f9873ffac1d3              # double 0.74921000000000004
	.quad	0x3fe6575c0767d34e              # double 0.69816400000000001
	.quad	0x3fd2a172abef06b3              # double 0.29110399999999997
	.quad	0x3fefd4d61b2a27f2              # double 0.99473100000000003
	.quad	0x3fefc98c3b0c4589              # double 0.99335300000000004
	.quad	0x3fd426916440f239              # double 0.31485400000000002
	.quad	0x3fc9540895d0b73d              # double 0.197877
	.quad	0x3fcd1526d8b1dd5d              # double 0.22720799999999999
	.quad	0x3fd9164840e1719f              # double 0.39198499999999997
	.quad	0x3fea17fe8ee6b830              # double 0.81542899999999996
	.quad	0x3fdbdf86e3b46fdf              # double 0.43551800000000002
	.quad	0x3fc57f84449dbec2              # double 0.16795399999999999
	.quad	0x3fe6d1d25aab4741              # double 0.713113
	.quad	0x3fe3e195464dc22b              # double 0.62128700000000003
	.quad	0x3fe79c6d1e108c3f              # double 0.73784499999999997
	.quad	0x3fded9274e22a2c2              # double 0.48200399999999999
	.quad	0x3fe23e2f7b17ce53              # double 0.57009100000000001
	.quad	0x3fe71d755bccaf71              # double 0.72234600000000004
	.quad	0x3fd3771865519371              # double 0.30414400000000003
	.quad	0x3fb630ec31162281              # double 0.086683999999999997
	.quad	0x3f903b81b64e0547              # double 0.015852000000000002
	.quad	0x3fe34c78e9f6a93f              # double 0.60308499999999998
	.quad	0x3fee84a0e410b631              # double 0.95369000000000004
	.quad	0x3fec3cea6c1a048e              # double 0.882436
	.quad	0x3fcb27ed84d338f8              # double 0.21215600000000001
	.quad	0x3fcc82b628459967              # double 0.22273899999999999
	.quad	0x3fca8283d35eb745              # double 0.20710799999999999
	.quad	0x3fefb6e0d23d4f16              # double 0.99107400000000001
	.quad	0x3fe7ce4649906cca              # double 0.74392999999999998
	.quad	0x3fdbe80bed740c41              # double 0.43603799999999998
	.quad	0x3fd3884406c00da2              # double 0.30519200000000002
	.quad	0x3fc7686a4ca4f441              # double 0.18287400000000001
	.quad	0x3fecca31e7d9988d              # double 0.89968199999999998
	.quad	0x3fdb56a37ac3eb7d              # double 0.42716300000000001
	.quad	0x3feb7b97bb730835              # double 0.85883699999999996
	.quad	0x3fd277681669ced1              # double 0.28853800000000002
	.quad	0x3fd567b1c0010c6f              # double 0.33445399999999997
	.quad	0x3fb8ea39c51dabe2              # double 0.097323999999999993
	.quad	0x3fad1c193b3a68b2              # double 0.056855000000000003
	.quad	0x3fefbc792d1287c2              # double 0.991757
	.quad	0x3fdc05c896dd26b7              # double 0.43785299999999999
	.quad	0x3fe452d666a98245              # double 0.63511200000000001
	.quad	0x3fe28e8427418d69              # double 0.579897
	.quad	0x3fed3f39d1b2e59b              # double 0.913968
	.quad	0x3fee906466b1e5c1              # double 0.95512600000000003
	.quad	0x3fe6c178705425f2              # double 0.711117
	.quad	0x3fe7fb762d83c6c9              # double 0.74944599999999995
	.quad	0x3fd29c3ce2089e34              # double 0.29078599999999999
	.quad	0x3fe05475a31a4bdc              # double 0.51031000000000004
	.quad	0x3fea86db50f40e5a              # double 0.82896199999999998
	.quad	0x3fd322f6a50d6b23              # double 0.29900900000000002
	.quad	0x3fe9c916ca46e08f              # double 0.80579699999999999
	.quad	0x3feb4d2d44dca8e3              # double 0.85317100000000001
	.quad	0x3fde2edbb59ddc1e              # double 0.47160999999999997
	.quad	0x3fe8185f06f69446              # double 0.75297499999999995
	.quad	0x3fec680bed740c41              # double 0.88770099999999996
	.quad	0x3fc5809917939a7c              # double 0.167987
	.quad	0x3fee89d8c6d612c7              # double 0.95432700000000004
	.quad	0x3fea1847f562174c              # double 0.81546399999999996
	.quad	0x3fe81a9fbe76c8b4              # double 0.75324999999999997
	.quad	0x3fdbf53825e13b19              # double 0.43684200000000001
	.quad	0x3fe5a6fe718a86d7              # double 0.67663499999999999
	.quad	0x3febc57c0b135979              # double 0.86785699999999999
	.quad	0x3fddf0cbaf965b21              # double 0.46782200000000002
	.quad	0x3fdaa01eeed8904f              # double 0.41602299999999998
	.quad	0x3fdef2e48e8a71de              # double 0.48357499999999998
	.quad	0x3fd6b302f72b4528              # double 0.35467599999999999
	.quad	0x3fcb4467381d7dbf              # double 0.21302499999999999
	.quad	0x3fe1d0203e63e8de              # double 0.55665600000000004
	.quad	0x3fec9b8aa00192a7              # double 0.89398699999999998
	.quad	0x3fdbdaa0cae642c0              # double 0.43521900000000002
	.quad	0x3fdba172abef06b3              # double 0.43172899999999997
	.quad	0x3fd7b1b36bd2b6f2              # double 0.37022100000000002
	.quad	0x3feba56de33269e0              # double 0.86394400000000004
	.quad	0x3fd8aac53b0813cb              # double 0.38542300000000002
	.quad	0x3fe843efae7924af              # double 0.75829299999999999
	.quad	0x3fdea6a012599ed8              # double 0.47892000000000001
	.quad	0x3fe16bb7739f340d              # double 0.54439899999999997
	.quad	0x3fd7f954eb13dfb1              # double 0.37459300000000001
	.quad	0x3fecf19f7f8ca81a              # double 0.90449500000000005
	.quad	0x3fd99bd4067cf1c3              # double 0.40013599999999999
	.quad	0x3feb1d3458cd20b0              # double 0.84731500000000004
	.quad	0x3feba7d45a5fc7e7              # double 0.86423700000000003
	.quad	0x3fbc4662bae03b3f              # double 0.11044900000000001
	.quad	0x3fa5fd47bedb7282              # double 0.042948
	.quad	0x3fe5f50e34762952              # double 0.686164
	.quad	0x3fd422ccb3a2595c              # double 0.31462400000000001
	.quad	0x3fec960d887ebf23              # double 0.89331700000000003
	.quad	0x3fe3963baba7b917              # double 0.61208899999999999
	.quad	0x3fea57c4e2f37fbf              # double 0.823214
	.quad	0x3fd72e33eff19503              # double 0.36219499999999999
	.quad	0x3feff62f9ca5bd94              # double 0.99880199999999996
	.quad	0x3fc7c89f40a2877f              # double 0.18581
	.quad	0x3feef1fff79c8430              # double 0.96704100000000004
	.quad	0x3febb73affb04ee8              # double 0.86611700000000003
	.quad	0x3fb017225b749add              # double 0.062853000000000006
	.quad	0x3fdbc504816f0069              # double 0.43390000000000001
	.quad	0x3fdbc70435efa616              # double 0.43402200000000002
	.quad	0x3fe4ffef39085f4a              # double 0.65624199999999999
	.quad	0x3fe1ab14ec204f2b              # double 0.55213400000000001
	.quad	0x3fd0534373f316e3              # double 0.25508199999999998
	.quad	0x3fed5d3dc8b86b16              # double 0.917632
	.quad	0x3fe058cd20afa2f0              # double 0.51083999999999996
	.quad	0x3fde9873ffac1d2a              # double 0.47805500000000001
	.quad	0x3fd46e75ff609dd0              # double 0.31924200000000003
	.quad	0x3fcd1b8aa00192a7              # double 0.22740299999999999
	.quad	0x3fec28522ea0fd3b              # double 0.87992199999999998
	.quad	0x3fd7ac471b478423              # double 0.36989
	.quad	0x3fd390afe60c38f3              # double 0.30570599999999998
	.quad	0x3fe2b7ae5796bfcb              # double 0.58492200000000005
	.quad	0x3f9ea8112ba16e7a              # double 0.029937999999999999
	.quad	0x3feeb178b3700475              # double 0.95916400000000001
	.quad	0x3fdd94467381d7dc              # double 0.462175
	.quad	0x3feeb2db1e9f2778              # double 0.95933299999999999
	.quad	0x3fd76a22b3892ee8              # double 0.36585299999999998
	.quad	0x3fbabb98c7e28241              # double 0.104425
	.quad	0x3fee3526527a2058              # double 0.94398800000000004
	.quad	0x3fe092ccf6be37df              # double 0.51792000000000005
	.quad	0x3fec673c4f3ba776              # double 0.887602
	.quad	0x3fe4746aa087ca64              # double 0.63921099999999997
	.quad	0x3fe8e8f6cefed634              # double 0.77843799999999996
	.quad	0x3fc2877681669ced              # double 0.144759
	.quad	0x3fdf80f12c27a637              # double 0.49224499999999999
	.quad	0x3fe5bae46cfc829d              # double 0.679064
	.quad	0x3fdbb19e731d2e0e              # double 0.43271599999999999
	.quad	0x3fc9953586ca89fc              # double 0.19986599999999999
	.quad	0x3fd0c460ed80a17b              # double 0.261986
	.quad	0x3fc97cfe58601366              # double 0.199127
	.quad	0x3fd0c286f8ad2568              # double 0.26187300000000002
	.quad	0x3fe7d89acbc8c0cf              # double 0.74519100000000005
	.quad	0x3fe383126e978d50              # double 0.60975000000000001
	.quad	0x3fe326b93ccd0fe9              # double 0.59847700000000004
	.quad	0x3fd32f1ed17c5ef6              # double 0.29975099999999999
	.quad	0x3fde6c7eae5bc87e              # double 0.47537200000000002
	.quad	0x3fe81455219a847b              # double 0.75248199999999998
	.quad	0x3fc67d0aed99cbef              # double 0.17569100000000001
	.quad	0x3fe7de939eadd591              # double 0.74592000000000003
	.quad	0x3fc43358f2e05ccd              # double 0.15781700000000001
	.quad	0x3f9efe0ce0b912dc              # double 0.030266000000000001
	.quad	0x3feb13c46d82ba5a              # double 0.846163
	.quad	0x3fdd6f6512a94ff0              # double 0.459924
	.quad	0x3fc1e76427c7c526              # double 0.139874
	.quad	0x3fe7f583a53b8e4c              # double 0.74872000000000005
	.quad	0x3fcfecaab8a5ce5b              # double 0.24940999999999999
	.quad	0x3fed95464dc22ab2              # double 0.92447199999999996
	.quad	0x3fecc9afe1da7b0b              # double 0.89961999999999998
	.quad	0x3faf0bd017dae819              # double 0.060637000000000003
	.quad	0x3fe58d5842b734b5              # double 0.67350399999999999
	.quad	0x3feeb9f559b3d07d              # double 0.96020000000000005
	.quad	0x3fec8867ad8e4324              # double 0.89165099999999997
	.quad	0x3fd7d6e47dc37a3e              # double 0.37249100000000002
	.quad	0x3fe76dfc5cdd50a9              # double 0.73217600000000005
	.quad	0x3fee532830a0b1bc              # double 0.94765100000000002
	.quad	0x3feebe5753a3ec03              # double 0.960735
	.quad	0x3feb9be09bb6aa4c              # double 0.86277800000000004
	.quad	0x3fe8da122fad6cb5              # double 0.77661999999999998
	.quad	0x3fe2898f605ab3ab              # double 0.57929200000000003
	.quad	0x3fcb6bca5375c8da              # double 0.214227
	.quad	0x3fe062fdfc19c172              # double 0.51208399999999998
	.quad	0x3fe423bddfc9ff93              # double 0.62936300000000001
	.quad	0x3fedc5ac471b4784              # double 0.93037999999999998
	.quad	0x3fe29d10b1feeb2d              # double 0.581673
	.quad	0x3fea67b3d8e00086              # double 0.82515899999999998
	.quad	0x3fefd31769a91106              # double 0.99451800000000001
	.quad	0x3fc74b05b7cfe586              # double 0.181977
	.quad	0x3fd8378ee2867275              # double 0.37839099999999998
	.quad	0x3fee09741d084e83              # double 0.93865399999999999
	.quad	0x3fc5fbc5de9c022a              # double 0.17174600000000001
	.quad	0x3fefc36fc158fb44              # double 0.99260700000000001
	.quad	0x3fd2da6e75ff609e              # double 0.29458200000000001
	.quad	0x3fe4f6dfc5cdd50b              # double 0.65513600000000005
	.quad	0x3fe59f559b3d07c8              # double 0.67569999999999997
	.quad	0x3fdb769a91105e1c              # double 0.429114
	.quad	0x3fd6314445aa2e3c              # double 0.34675699999999998
	.quad	0x3fe48342aa9f7b5b              # double 0.64102300000000001
	.quad	0x3fb3f93ff25e56cd              # double 0.078021999999999994
	.quad	0x3fdc62f9ca5bd945              # double 0.44354100000000002
	.quad	0x3f54d72799a1fd15              # double 0.0012719999999999999
	.quad	0x3fe6e5b4245f5ad9              # double 0.71553999999999995
	.quad	0x3fe83517a46173b8              # double 0.75648099999999996
	.quad	0x3fe4a3c85c24c405              # double 0.64499300000000004
	.quad	0x3fe3f10cb295e9e2              # double 0.62317500000000003
	.quad	0x3fc062a1b5c7cd8a              # double 0.12801000000000001
	.quad	0x3fdb779a6b50b0f2              # double 0.42917499999999997
	.quad	0x3fd6da554b8bef8d              # double 0.357076
	.quad	0x3fe8c88e79aae6c9              # double 0.774482
	.quad	0x3fb97dd00f776c48              # double 0.099575999999999998
	.quad	0x3fe94e032db1e9f2              # double 0.79077299999999995
	.quad	0x3fc0325d4a5df224              # double 0.12653700000000001
	.quad	0x3fe594f26aec0725              # double 0.67443200000000003
	.quad	0x3fb8983d790752db              # double 0.096073000000000006
	.quad	0x3fc0a3d70a3d70a4              # double 0.13
	.quad	0x3fb9b17481b21c47              # double 0.10036399999999999
	.quad	0x3fdb070329802c0a              # double 0.42230299999999998
	.quad	0x3fc4e3f78bbd3804              # double 0.16320699999999999
	.quad	0x3fdd0420f6f08cc5              # double 0.45337699999999997
	.quad	0x3fe36a033e78e193              # double 0.60669099999999998
	.quad	0x3fef6290eed02cd4              # double 0.98078200000000004
	.quad	0x3fd98ee6b8305d96              # double 0.39934700000000001
	.quad	0x3fd4923e5b8561d4              # double 0.32142599999999999
	.quad	0x3fa7fae3608d0892              # double 0.046836000000000003
	.quad	0x3fd762888b545c79              # double 0.36538900000000002
	.quad	0x3fc411f4f50a02b8              # double 0.15679799999999999
	.quad	0x3fb3b7b6bb129025              # double 0.077021999999999993
	.quad	0x3fe1ac57e23f24d9              # double 0.552288
	.quad	0x3fb65c810a569b17              # double 0.087348999999999996
	.quad	0x3fe3866a11ec918e              # double 0.61015799999999998
	.quad	0x3fc1b56323bbc6eb              # double 0.138348
	.quad	0x3fd88ea39c51dabe              # double 0.38370599999999999
	.quad	0x3fc993ee5eedcc21              # double 0.199827
	.quad	0x3fefea5f84cad57c              # double 0.99736000000000002
	.quad	0x3fd29e40c8472c0e              # double 0.29090899999999997
	.quad	0x3fdc8b60f1b25f63              # double 0.44600699999999999
	.quad	0x3fccf51ac9afe1da              # double 0.22622999999999999
	.quad	0x3fee9e108c3f3e03              # double 0.95679499999999995
	.quad	0x3fe3a66dbd72bcb6              # double 0.614066
	.quad	0x3fe80b524399b2c4              # double 0.75138199999999999
	.quad	0x3feb2250f840181e              # double 0.847939
	.quad	0x3fe5c883fd502257              # double 0.68072699999999997
	.quad	0x3fd8e368f08461fa              # double 0.38888
	.quad	0x3fd558969a0ad8a1              # double 0.333532
	.quad	0x3fdcb841248d7e02              # double 0.44874599999999998
	.quad	0x3fec75a5332acfb7              # double 0.88936099999999996
	.quad	0x3fe107f88765ba6f              # double 0.532223
	.quad	0x3fd491b3f20a73f7              # double 0.32139299999999998
	.quad	0x3fdc5a964e8b7e4e              # double 0.44302900000000001
	.quad	0x3fe5b6f3b213e3e3              # double 0.67858300000000005
	.quad	0x3f6c714fce746cb9              # double 0.0034719999999999998
	.quad	0x3fe4d99aa60913a5              # double 0.651563
	.quad	0x3f8591cd1c7de508              # double 0.010532
	.quad	0x3feb755de58e64b2              # double 0.85807699999999998
	.quad	0x3f9b3743632c1f43              # double 0.026578000000000001
	.quad	0x3fdadc1e7967caea              # double 0.41968499999999997
	.quad	0x3fe5e67d77fae361              # double 0.68438600000000005
	.quad	0x3fe864883fd50225              # double 0.76227199999999995
	.quad	0x3fd78d434a01abd2              # double 0.36799700000000002
	.quad	0x3fd89aa1d755bccb              # double 0.384438
	.quad	0x3fc10d844d013a93              # double 0.13322500000000001
	.quad	0x3fa577b7c7820a31              # double 0.041929000000000001
	.quad	0x3fe7b777d0f1f57b              # double 0.74114599999999997
	.quad	0x3fdcd7e889c1b542              # double 0.45067800000000002
	.quad	0x3fea3fd0d0678c00              # double 0.82028999999999996
	.quad	0x3fe8aceaaf35e311              # double 0.77110800000000002
	.quad	0x3fdcc70867ad8e43              # double 0.44964799999999999
	.quad	0x3fdd4d5d80e496ee              # double 0.457847
	.quad	0x3fe3c102ff8ec0f9              # double 0.61731100000000005
	.quad	0x3fc284a515ce9e5e              # double 0.144673
	.quad	0x3fe3c2fc69728a61              # double 0.61755199999999999
	.quad	0x3fb12157689ca18c              # double 0.066915000000000002
	.quad	0x3fee90de093532e8              # double 0.95518400000000003
	.quad	0x3fe181ecd4aa10e0              # double 0.54710999999999999
	.quad	0x3fed27008a697aee              # double 0.91101100000000002
	.quad	0x3fc97e889c1b5419              # double 0.19917399999999999
	.quad	0x3fd8d948dc11e42e              # double 0.388262
	.quad	0x3fe597dae81882ae              # double 0.67478700000000003
	.quad	0x3fc3d13d74d594f2              # double 0.15482299999999999
	.quad	0x3fe92e9899bf5947              # double 0.78693800000000003
	.quad	0x3fec98fc504816f0              # double 0.893675
	.quad	0x3fe9675147f13059              # double 0.79386199999999996
	.quad	0x3fd58eda22f6a50d              # double 0.33684399999999998
	.quad	0x3fe9bd20f2becedd              # double 0.80433699999999997
	.quad	0x3fe5ee02a77a2ced              # double 0.68530400000000002
	.quad	0x3fc037d63022dd7b              # double 0.12670400000000001
	.quad	0x3fd2f61672324c83              # double 0.29626999999999998
	.quad	0x3f97229e90795f67              # double 0.022592999999999999
	.quad	0x3fdadb76b3bb83cf              # double 0.41964499999999999
	.quad	0x3fbbd102bc72e276              # double 0.108658
	.quad	0x3fb4789613d31b9b              # double 0.079964999999999994
	.quad	0x3fe126809d495183              # double 0.53595000000000004
	.quad	0x3febddfa871a3b15              # double 0.87084700000000004
	.quad	0x3fc808a697aeddce              # double 0.18776399999999999
	.quad	0x3fecf6b1a2a4db16              # double 0.90511399999999997
	.quad	0x3fe9f4107314ca92              # double 0.81104299999999996
	.quad	0x3fe55132f87ad081              # double 0.66616200000000003
	.quad	0x3fe7bfab10ba6267              # double 0.742147
	.quad	0x3fd7c3f3e0370cdd              # double 0.37133500000000003
	.quad	0x3fe79fcb0c026cc2              # double 0.73825600000000002
	.quad	0x3fd5ad4b2745bf27              # double 0.338702
	.quad	0x3fe49728a6117721              # double 0.64345200000000002
	.quad	0x3fda8e10cf5b1c86              # double 0.41492099999999998
	.quad	0x3fc589374bc6a7f0              # double 0.16825000000000001
	.quad	0x3fe857cb2d905c03              # double 0.76071699999999998
	.quad	0x3fd2fa1e3eaf6838              # double 0.296516
	.quad	0x3fe4e6c8f7553693              # double 0.65317199999999997
	.quad	0x3fd1f09528f190d1              # double 0.28030899999999997
	.quad	0x3fe179e59f2ba9d2              # double 0.54613
	.quad	0x3fc031a4bdba0a52              # double 0.12651499999999999
	.quad	0x3fce764adff822bc              # double 0.237985
	.quad	0x3fe8ef49cf56eac8              # double 0.77920999999999996
	.quad	0x3fd025b317efe0ce              # double 0.252301
	.quad	0x3fd85e892253111f              # double 0.38077
	.quad	0x3fde563a9f383f0c              # double 0.47401300000000002
	.quad	0x3fd2d00713f077cd              # double 0.29394700000000001
	.quad	0x3fe8f498c3b0c459              # double 0.77985800000000005
	.quad	0x3fe3bc9cd3e0bd45              # double 0.61677400000000004
	.quad	0x3fe9aca148ba83f5              # double 0.80232300000000001
	.quad	0x3fefad2135daad60              # double 0.98988399999999998
	.quad	0x3fd966772d5e071c              # double 0.39687899999999998
	.quad	0x3fcec0a4a05dd8f9              # double 0.240254
	.quad	0x3fee28d64d7f0ed4              # double 0.94248500000000001
	.quad	0x3fe428ef77f27fe5              # double 0.62999700000000003
	.quad	0x3fc4769ec2ce464a              # double 0.15987000000000001
	.quad	0x3fb3fb8b26394fad              # double 0.078057000000000001
	.quad	0x3f9401c4fc1df330              # double 0.019538
	.quad	0x3fe4fe5a78f25a25              # double 0.65604899999999999
	.quad	0x3fee30f8c64fdb0a              # double 0.94347800000000004
	.quad	0x3fe8984c271fff7a              # double 0.76859100000000002
	.quad	0x3fe0e353f7ced917              # double 0.52775000000000005
	.quad	0x3fe33f8fcd67fd3f              # double 0.60150899999999996
	.quad	0x3fc7e5aff2a172ac              # double 0.186697
	.quad	0x3fd0678c0053e2d6              # double 0.25631999999999999
	.quad	0x3fef73797460242d              # double 0.98284599999999999
	.quad	0x3fe427c17a89331a              # double 0.629853
	.quad	0x3fe2de19fc2a886a              # double 0.58961200000000002
	.quad	0x3fe0dd616f86a099              # double 0.52702400000000005
	.quad	0x3fd53e24febd09e1              # double 0.33191799999999999
	.quad	0x3fc75dbb9cf9a06a              # double 0.18254799999999999
	.quad	0x3fcb0329802c0a4a              # double 0.211034
	.quad	0x3febc1e14bdfd263              # double 0.86741699999999999
	.quad	0x3fea15d0b73d188f              # double 0.81516299999999997
	.quad	0x3f56872b020c49ba              # double 0.0013749999999999999
	.quad	0x3fd8cf5b1c864884              # double 0.387656
	.quad	0x3fe73dd97f62b6ae              # double 0.72629999999999995
	.quad	0x3fe20ba6266fd652              # double 0.56392200000000003
	.quad	0x3fe0fe4bcad9ad86              # double 0.53104200000000001
	.quad	0x3fedc83a96d4c33b              # double 0.93069199999999996
	.quad	0x3fcbc68ec52a411c              # double 0.216997
	.quad	0x3faac6ef3d3a1d32              # double 0.052298999999999998
	.quad	0x3fdd7a9e2bcf91a3              # double 0.46060899999999999
	.quad	0x3feff403dddb120a              # double 0.99853700000000001
	.quad	0x3fe6dc55000c953a              # double 0.71439600000000003
	.quad	0x3fe12272862f598a              # double 0.53545500000000001
	.quad	0x3fdcbd9018e75793              # double 0.44907000000000002
	.quad	0x3fd72e6ea8544780              # double 0.362209
	.quad	0x3fef18c197e56473              # double 0.97177199999999996
	.quad	0x3f6650a45d41fa76              # double 0.0027239999999999999
	.quad	0x3fcc23a6ce358299              # double 0.21983800000000001
	.quad	0x3f96961c36976bc2              # double 0.022057
	.quad	0x3fe1b860999dcb58              # double 0.55375700000000005
	.quad	0x3fd5c7192ea52ef9              # double 0.340277
	.quad	0x3fc24f7ec3547e07              # double 0.14305100000000001
	.quad	0x3fe6605ccc89b0ee              # double 0.69926299999999997
	.quad	0x3fefdc5b4aa9717e              # double 0.99564900000000001
	.quad	0x3fc491e215336dec              # double 0.16070200000000001
	.quad	0x3fbf74bc6a7ef9db              # double 0.122875
	.quad	0x3fd684dfce3150db              # double 0.35186000000000001
	.quad	0x3fd7029ae4f33440              # double 0.35953400000000002
	.quad	0x3fd225cc426351df              # double 0.283557
	.quad	0x3feed193708aac97              # double 0.96308300000000002
	.quad	0x3fe697204295a6c6              # double 0.70594800000000002
	.quad	0x3fd89a49c2c1b110              # double 0.38441700000000001
	.quad	0x3fc0cb07d0aed99d              # double 0.13119600000000001
	.quad	0x3fe18fa7a85015c2              # double 0.548786
	.quad	0x3fc24fa05143bf72              # double 0.14305499999999999
	.quad	0x3fc09c90c4dec1c2              # double 0.129778
	.quad	0x3fb9b899392189be              # double 0.10047300000000001
	.quad	0x3fbf601797cc3a00              # double 0.12256
	.quad	0x3fed102ff8ec0f88              # double 0.90822599999999998
	.quad	0x3fd018ce2d1f1cfc              # double 0.25151400000000002
	.quad	0x3fef97396d0917d7              # double 0.98721000000000003
	.quad	0x3fd14edb2f661f19              # double 0.27043800000000001
	.quad	0x3fee3db7f1737543              # double 0.94503400000000004
	.quad	0x3fb62328f9f44d44              # double 0.086473999999999995
	.quad	0x3fe0a291fb3fa6df              # double 0.519845
	.quad	0x3fe9bd70a3d70a3d              # double 0.80437499999999995
	.quad	0x3fe271327243137b              # double 0.576318
	.quad	0x3fc61b4bb5e0f7fd              # double 0.172708
	.quad	0x3fe12f0bf1a5ca2a              # double 0.53699300000000005
	.quad	0x3fe271843c3a42f2              # double 0.57635700000000001
	.quad	0x3fe858cf398e9707              # double 0.76084099999999999
	.quad	0x3fe507f023e9ea14              # double 0.657219
	.quad	0x3fe0d566cf41f213              # double 0.52605000000000002
	.quad	0x3fd249c2c1b10fd8              # double 0.28575200000000001
	.quad	0x3fd1bc126a65cf68              # double 0.27710400000000002
	.quad	0x3fb44e3ffef39086              # double 0.079319
	.quad	0x3fe9f07e175d13d7              # double 0.81060699999999997
	.quad	0x3fb0080f98fa3769              # double 0.062622999999999998
	.quad	0x3fe5092684cf073a              # double 0.65736700000000003
	.quad	0x3fe3d5b6805a2d73              # double 0.619838
	.quad	0x3fd10b0292817764              # double 0.26629700000000001
	.quad	0x3fe3d70a3d70a3d7              # double 0.62
	.quad	0x3fdebc664d3bf2f5              # double 0.48024899999999998
	.quad	0x3fe782ababead4f6              # double 0.73470100000000005
	.quad	0x3fead0bd87b56b87              # double 0.83798099999999998
	.quad	0x3fc1de37585be1a8              # double 0.139594
	.quad	0x3fe6dd074213a0c7              # double 0.71448100000000003
	.quad	0x3f89f127f5e84f09              # double 0.012666999999999999
	.quad	0x3fd363800218def4              # double 0.302948
	.quad	0x3fbfa871a3b14a90              # double 0.123664
	.quad	0x3feab52eb5f5f0b3              # double 0.83461700000000005
	.quad	0x3fe231876188b114              # double 0.568546
	.quad	0x3fe2e9bbf0dc768e              # double 0.591032
	.quad	0x3fe4b482be8bc16a              # double 0.64703500000000003
	.quad	0x3fe4e97aeddce7cd              # double 0.653501
	.quad	0x3fb0b04ab606b7aa              # double 0.065189999999999998
	.quad	0x3fba2435696e58a3              # double 0.102115
	.quad	0x3fc9991361dc93ea              # double 0.199984
	.quad	0x3fc8e1693c03bc4d              # double 0.194379
	.quad	0x3fe45410f94c8798              # double 0.63526199999999999
	.quad	0x3fde5000c9539b89              # double 0.47363300000000003
	.quad	0x3fd5eafee6fb4c3c              # double 0.34246799999999999
	.quad	0x3fd6447c30d306a3              # double 0.34793000000000002
	.quad	0x3fe2eb228dc981bf              # double 0.59120300000000003
	.quad	0x3fef15011904b3c4              # double 0.97131400000000001
	.quad	0x3fea190f301eabbd              # double 0.81555900000000003
	.quad	0x3feadc6c11a11234              # double 0.83940700000000001
	.quad	0x3fe0320535c9e668              # double 0.50610599999999994
	.quad	0x3fe44061847f5621              # double 0.63285899999999995
	.quad	0x3fedae5796bfca86              # double 0.92753200000000002
	.quad	0x3fafff583a53b8e5              # double 0.062495000000000002
	.quad	0x3fa7eb28d8665e03              # double 0.046716000000000001
	.quad	0x3fdd8a5ce5b4245f              # double 0.46156999999999998
	.quad	0x3feabf1843c3a42f              # double 0.83582699999999999
	.quad	0x3feb2253111f0c35              # double 0.84794000000000003
	.quad	0x3fe6d8f7121ab4b7              # double 0.71398499999999998
	.quad	0x3fe1d64f97edc7ef              # double 0.55741099999999999
	.quad	0x3fe33868fd199bb2              # double 0.60063599999999995
	.quad	0x3fd4c636b0963561              # double 0.324598
	.quad	0x3fe077e80389f83c              # double 0.51463700000000001
	.quad	0x3fb5c853c148344c              # double 0.085087999999999997
	.quad	0x3fe01899bf5946c3              # double 0.50300299999999998
	.quad	0x3fe62fa0d77b7c78              # double 0.69331399999999999
	.quad	0x3fe4d5fdcdf69878              # double 0.65112199999999998
	.quad	0x3fcbc193b3a68b1a              # double 0.21684500000000001
	.quad	0x3fd1b691212513b6              # double 0.27676800000000001
	.quad	0x3fe3fafc8b0079a3              # double 0.62438800000000005
	.quad	0x3fec32702a3486f0              # double 0.88115699999999997
	.quad	0x3fd07304039abf34              # double 0.25702000000000003
	.quad	0x3fed2a8650e77920              # double 0.91144099999999994
	.quad	0x3fccbb6672fba01f              # double 0.224469
	.quad	0x3fdb2ecaeea63b69              # double 0.42473100000000003
	.quad	0x3fe2acb20fb224ab              # double 0.58358100000000002
	.quad	0x3fd005857afea3df              # double 0.25033699999999998
	.quad	0x3fe5098d477bbf94              # double 0.657416
	.quad	0x3fd6cdb7ae5796c0              # double 0.35630600000000001
	.quad	0x3faa94bbe4473cd5              # double 0.051915999999999997
	.quad	0x3fdc7d0f1f57b41c              # double 0.445133
	.quad	0x3fea5974e65bea0c              # double 0.82342000000000004
	.quad	0x3fe3e1c79b34a44c              # double 0.62131099999999995
	.quad	0x3fc08049667b5f1c              # double 0.128915
	.quad	0x3fd69a52263d816b              # double 0.35316900000000001
	.quad	0x3fea59d55e6bc622              # double 0.82346600000000003
	.quad	0x3fd1a70d1fa33376              # double 0.27582099999999998
	.quad	0x3fd5c5197a24894c              # double 0.34015499999999999
	.quad	0x3fe7670c1333b96b              # double 0.73132900000000001
	.quad	0x3fed3d5992428d43              # double 0.91373899999999997
	.quad	0x3fdddb48909289db              # double 0.46650900000000001
	.quad	0x3fef7294dd72367e              # double 0.98273699999999997
	.quad	0x3f9c7d1bb4916ca4              # double 0.027820999999999999
	.quad	0x3fe3fbc5de9c022a              # double 0.62448400000000004
	.quad	0x3fe717acc4ef88b9              # double 0.72163999999999995
	.quad	0x3fd47f562174c4ce              # double 0.320272
	.quad	0x3fc7d03968d759ef              # double 0.18604200000000001
	.quad	0x3fd81476af89c5e7              # double 0.376249
	.quad	0x3fe877caa7589efe              # double 0.76462300000000005
	.quad	0x3f845c78a6dacabc              # double 0.0099419999999999994
	.quad	0x3fe9c78e9f6a93f3              # double 0.80561000000000005
	.quad	0x3feb04db9c7368ad              # double 0.84434299999999995
	.quad	0x3fb8ea39c51dabe2              # double 0.097323999999999993
	.quad	0x3fb8e10cf5b1c865              # double 0.097184000000000006
	.quad	0x3fb3c1df3300de4c              # double 0.077176999999999996
	.quad	0x3fdce414e7ee9143              # double 0.45142100000000002
	.quad	0x3fe52b474107314d              # double 0.66153300000000004
	.quad	0x3fe237c7820a30db              # double 0.56930899999999995
	.quad	0x3fd7096bb98c7e28              # double 0.35994999999999999
	.quad	0x3fa817763e4abe6a              # double 0.047053999999999999
	.quad	0x3fd2c31593e5fb72              # double 0.293157
	.quad	0x3fe736bd2b6f1993              # double 0.72543199999999997
	.quad	0x3fcd3ce63a5c1c61              # double 0.22842100000000001
	.quad	0x3fe799c7bcc2938e              # double 0.73752200000000001
	.quad	0x3fc208e9b38d60a6              # double 0.14089699999999999
	.quad	0x3fc2fb19e731d2e1              # double 0.148288
	.quad	0x3fe2c1c6088d6d3b              # double 0.58615399999999995
	.quad	0x3fef8aa433508f65              # double 0.98567400000000005
	.quad	0x3fc6e2e2b8c75c4b              # double 0.17879900000000001
	.quad	0x3fd7bc2b94d94079              # double 0.37086000000000002
	.quad	0x3fe118b934699418              # double 0.53426799999999997
	.quad	0x3fd203254e6e221d              # double 0.28144200000000003
	.quad	0x3febed938151a438              # double 0.87275100000000005
	.quad	0x3fe36ff3ade225fa              # double 0.60741599999999996
	.quad	0x3fe6c79d4d834092              # double 0.71186700000000003
	.quad	0x3fe7da1016ce789e              # double 0.74536899999999995
	.quad	0x3fd1d5d3dc8b86b1              # double 0.27867599999999998
	.quad	0x3fdcfa82e87d2c7c              # double 0.45279000000000003
	.quad	0x3fe905d95dd4c76d              # double 0.78196399999999999
	.quad	0x3fda4b4d056c508b              # double 0.41084599999999999
	.quad	0x3fc143526527a205              # double 0.13486699999999999
	.quad	0x3fd96e3715400325              # double 0.39735199999999998
	.quad	0x3f951697f1f9ad00              # double 0.020594000000000001
	.quad	0x3fe2e596c82e019b              # double 0.590526
	.quad	0x3fe4cba732df505d              # double 0.64985999999999999
	.quad	0x3fef16659d12cade              # double 0.97148400000000001
	.quad	0x3fe4dca29845dc83              # double 0.65193299999999998
	.quad	0x3fc3df548ecd8dbd              # double 0.155253
	.quad	0x3fe1c17225b749ae              # double 0.55486400000000002
	.quad	0x3fe344a4095f2453              # double 0.60212900000000003
	.quad	0x3fe1d100a393ee5f              # double 0.55676300000000001
	.quad	0x3fe80f9b13165d3a              # double 0.75190500000000005
	.quad	0x3fa96030c23fab11              # double 0.049562000000000002
	.quad	0x3fe02e21101b0037              # double 0.50563100000000005
	.quad	0x3fe6aa27f1b69121              # double 0.70827099999999998
	.quad	0x3fe3a674080f98fa              # double 0.61406899999999998
	.quad	0x3feb3cd78c436fc1              # double 0.85117699999999996
	.quad	0x3fe04c8366516db1              # double 0.50934000000000001
	.quad	0x3fe94ee7c49fd7a1              # double 0.79088199999999997
	.quad	0x3fe7741d084e831b              # double 0.73292400000000002
	.quad	0x3fe8726d04e618ce              # double 0.76396799999999998
	.quad	0x3fefed7e889c1b54              # double 0.99774099999999998
	.quad	0x3fe9c1205bc01a37              # double 0.80482500000000001
	.quad	0x3fe4fc610f0e90bc              # double 0.65580799999999995
	.quad	0x3fec96e9bbf0dc77              # double 0.89342200000000005
	.quad	0x3fd565a57646ae3a              # double 0.33432899999999999
	.quad	0x3fb50d0678c0053e              # double 0.082229999999999997
	.quad	0x3feea19439de481f              # double 0.95722399999999996
	.quad	0x3fc346d3f9e7b80b              # double 0.15059900000000001
	.quad	0x3feb1b0ab2e1693c              # double 0.84705099999999999
	.quad	0x3fd61fc08fa7a850              # double 0.345688
	.quad	0x3fd5f31b152f3c2e              # double 0.34296300000000002
	.quad	0x3fe7a4d8fd5cb791              # double 0.738873
	.quad	0x3fe1820c49ba5e35              # double 0.54712499999999997
	.quad	0x3fe63bc6eb0b7c35              # double 0.694797
	.quad	0x3fd846cfc829cfdd              # double 0.37932199999999999
	.quad	0x3fc54f0520d130e0              # double 0.16647400000000001
	.quad	0x3fdfb66f9335d24a              # double 0.49551000000000001
	.quad	0x3fb05f6ba0620ab7              # double 0.063955999999999999
	.quad	0x3fdac3ac929aa1d7              # double 0.41819299999999998
	.quad	0x3fe9c8b0079a2835              # double 0.80574800000000002
	.quad	0x3fed986338b47c74              # double 0.924852
	.quad	0x3fe2265492ff4ba5              # double 0.56717899999999999
	.quad	0x3fd6790fb65668c2              # double 0.35113899999999998
	.quad	0x3fe1e0008637bd06              # double 0.55859400000000003
	.quad	0x3fe899f1ae2da555              # double 0.76879200000000003
	.quad	0x3fe2b12d3415b142              # double 0.58412799999999998
	.quad	0x3fedf94c87980f56              # double 0.93668200000000001
	.quad	0x3fef18f605ab3aac              # double 0.97179700000000002
	.quad	0x3fe2cce8101f31f4              # double 0.58751299999999995
	.quad	0x3fd6f041461b6d44              # double 0.35841400000000001
	.quad	0x3fd5e121ee675148              # double 0.341866
	.quad	0x3fc4dd93c46d82ba              # double 0.16301199999999999
	.quad	0x3fe78e60807357e6              # double 0.73612999999999995
	.quad	0x3fe842352eb5f5f1              # double 0.75808200000000003
	.quad	0x3fe9409a24031487              # double 0.78913599999999995
	.quad	0x3fec09e774eebf66              # double 0.87620900000000002
	.quad	0x3fee69df97aaac11              # double 0.95042400000000005
	.quad	0x3fd655e6bc621b7e              # double 0.348993
	.quad	0x3fe52afbc1acde1a              # double 0.661497
	.quad	0x3fdfdc054ef459da              # double 0.49780400000000002
	.quad	0x3fdf448cf7caa759              # double 0.48855900000000002
	.quad	0x3fba90795f676ea4              # double 0.103767
	.quad	0x3fd26672fba01eef              # double 0.28750300000000001
	.quad	0x3fc41669ced0b30b              # double 0.15693399999999999
	.quad	0x3fe7d5a7d24180d4              # double 0.74483100000000002
	.quad	0x3fd584944ed6fda8              # double 0.33621699999999999
	.quad	0x3fb3d1676640a6b9              # double 0.077413999999999997
	.quad	0x3fdaa7546d3f9e7c              # double 0.41646300000000003
	.quad	0x3fcb797cc39ffd61              # double 0.214645
	.quad	0x3fc319bd4067cf1c              # double 0.14922299999999999
	.quad	0x3fe3497d8cf398e9              # double 0.60272099999999995
	.quad	0x3fea4621b7e0ac7e              # double 0.82106100000000004
	.quad	0x3fd711cf355cd91f              # double 0.360462
	.quad	0x3fd1e4c0df58c08b              # double 0.27958699999999997
	.quad	0x3fd5e7d1351159c5              # double 0.34227400000000002
	.quad	0x3fd54a558ea7ce10              # double 0.33266200000000001
	.quad	0x3fe02d40aaeafab5              # double 0.50552399999999997
	.quad	0x3fe093ec460ed80a              # double 0.51805699999999999
	.quad	0x3fe9c1355475a31a              # double 0.80483499999999997
	.quad	0x3fd3e2b8c75c4a84              # double 0.31071300000000002
	.quad	0x3fe6cfa48301a7a0              # double 0.71284700000000001
	.quad	0x3fdf55000c9539b9              # double 0.48956300000000003
	.quad	0x3fe3355cd91eeaa7              # double 0.60026400000000002
	.quad	0x3fe6fb7e90ff9724              # double 0.71819999999999995
	.quad	0x3fcc37de939eadd6              # double 0.22045500000000001
	.quad	0x3fdb5ebb7739f341              # double 0.42765700000000001
	.quad	0x3fdfa337a80cf9e4              # double 0.49433700000000003
	.quad	0x3fc1781c714fce74              # double 0.13647799999999999
	.quad	0x3fe077dd872f33ca              # double 0.51463199999999998
	.quad	0x3fc8d905c0336156              # double 0.19412299999999999
	.quad	0x3fe609a027525461              # double 0.68867500000000004
	.quad	0x3fe691ea78af3e47              # double 0.70531200000000005
	.quad	0x3fe82cc4ef88b978              # double 0.75546500000000005
	.quad	0x3fad77fae3608d09              # double 0.057556000000000003
	.quad	0x3fbddcb5781c7150              # double 0.116649
	.quad	0x3fef0dc11e42e126              # double 0.97042899999999999
	.quad	0x3fe7a98244e93e1d              # double 0.73944200000000004
	.quad	0x3fc70e90bc7b45f1              # double 0.18013199999999999
	.quad	0x3fe8530270f38822              # double 0.76013299999999995
	.quad	0x3fd7ed80a17b0f6b              # double 0.37387100000000001
	.quad	0x3fd856eac8605682              # double 0.380305
	.quad	0x3fe0a6f60e0eb67c              # double 0.52038099999999998
	.quad	0x3fd099b6f5caf2d8              # double 0.259382
	.quad	0x3fe91057d1782d38              # double 0.78324499999999997
	.quad	0x3fc1aceee0f3cb3e              # double 0.13808999999999999
	.quad	0x3fd302e2328f9f45              # double 0.29705100000000001
	.quad	0x3fd27caea747d806              # double 0.28886000000000001
	.quad	0x3fcda3a8e71476b0              # double 0.23155700000000001
	.quad	0x3fe1292817763e4b              # double 0.53627400000000003
	.quad	0x3fe5ff47735c182f              # double 0.68741200000000002
	.quad	0x3fd69f94855da273              # double 0.35349000000000003
	.quad	0x3fd49f6a93f290ac              # double 0.32223000000000002
	.quad	0x3fe3ed3b6cbd987c              # double 0.62270899999999996
	.quad	0x3fda71f79420b3d5              # double 0.41320600000000002
	.quad	0x3fead32c625e99e9              # double 0.83827799999999997
	.quad	0x3facee392e1ef73c              # double 0.056505
	.quad	0x3fd392e1ef73c0c2              # double 0.30584
	.quad	0x3fcfbe0157eed45f              # double 0.24798600000000001
	.quad	0x3fe85a059a73b42d              # double 0.76098900000000003
	.quad	0x3fe13302f72b4528              # double 0.53747699999999998
	.quad	0x3fe6006290eed02d              # double 0.68754700000000002
	.quad	0x3fd81904b3c3e74b              # double 0.376527
	.quad	0x3fe336d00b45ae60              # double 0.600441
	.quad	0x3fdace4a7b4e54f8              # double 0.41884100000000002
	.quad	0x3fb87075b3e1437c              # double 0.095465999999999995
	.quad	0x3fe417ca2120e1f8              # double 0.62790400000000002
	.quad	0x3fddb3461309c800              # double 0.46406700000000001
	.quad	0x3fccb7d41743e964              # double 0.22436
	.quad	0x3fd553c9abb01c93              # double 0.33323900000000001
	.quad	0x3fe642ce4649906d              # double 0.69565500000000002
	.quad	0x3fe2914f483cafb4              # double 0.58023800000000003
	.quad	0x3fd03dd97f62b6ae              # double 0.25377499999999997
	.quad	0x3fae57b84db9c737              # double 0.059263000000000003
	.quad	0x3fd5fe69270b06c4              # double 0.34365299999999999
	.quad	0x3fd1869835158b82              # double 0.27383999999999997
	.quad	0x3feea5529fe004b8              # double 0.957681
	.quad	0x3feb1f23465625a7              # double 0.84755100000000005
	.quad	0x3fd9c6cdaf4adbc6              # double 0.40275899999999998
	.quad	0x3fb5cc532a497fa6              # double 0.085149000000000002
	.quad	0x3fcd3b96af038e2a              # double 0.228381
	.quad	0x3fe110f94c87980f              # double 0.53332199999999996
	.quad	0x3fedd6d3b6cbd988              # double 0.93247400000000003
	.quad	0x3fefae18ac9f2fdc              # double 0.99000200000000004
	.quad	0x3f8543aeab7995ee              # double 0.010383
	.quad	0x3fe9c944ed6fda83              # double 0.80581899999999995
	.quad	0x3fe537f9d6f112fd              # double 0.66308299999999998
	.quad	0x3fca52ef911cf356              # double 0.20565600000000001
	.quad	0x3fede481f53825e1              # double 0.93414399999999997
	.quad	0x3febb810e8858ff7              # double 0.86621899999999996
	.quad	0x3fd1297396d0917d              # double 0.26815499999999998
	.quad	0x3fc32ba16e7a311f              # double 0.14976900000000001
	.quad	0x3fe4778dd616f86a              # double 0.639594
	.quad	0x3fe3f11947cfa26a              # double 0.62318099999999998
	.quad	0x3feb902de00d1b71              # double 0.86134999999999995
	.quad	0x3fe9ab55ef1fddec              # double 0.80216500000000001
	.quad	0x3fe21804d9839475              # double 0.56543200000000005
	.quad	0x3fdb8240b780346e              # double 0.42982500000000001
	.quad	0x3fdddd2f1a9fbe77              # double 0.46662500000000001
	.quad	0x3fda7e0ef99806f2              # double 0.41394399999999998
	.quad	0x3fb6715831f03d14              # double 0.087666999999999995
	.quad	0x3fde98c3b0c4588a              # double 0.478074
	.quad	0x3fedf6a0dbad3a60              # double 0.93635599999999996
	.quad	0x3fe5b8023a6ce358              # double 0.67871199999999998
	.quad	0x3fed84230fcf80dc              # double 0.92237999999999997
	.quad	0x3fd8b91b3f20a73f              # double 0.38629799999999997
	.quad	0x3fc7e4473cd57364              # double 0.18665399999999999
	.quad	0x3feceee30caa326e              # double 0.90416099999999999
	.quad	0x3fd58f0c77dd872f              # double 0.33685599999999999
	.quad	0x3fe7a1016ce789e7              # double 0.73840399999999995
	.quad	0x3fe9b571d1d4738a              # double 0.80339899999999997
	.quad	0x3fe7dfd694ccab3f              # double 0.74607400000000001
	.quad	0x3fdc304039abf338              # double 0.44044499999999998
	.quad	0x3fc7d052934acaff              # double 0.18604499999999999
	.quad	0x3fea62541d8e8640              # double 0.82450299999999999
	.quad	0x3fb9531550ca1cef              # double 0.098923999999999998
	.quad	0x3fe27d7a13c254a4              # double 0.57781700000000003
	.quad	0x3fc861d8622c4502              # double 0.19048599999999999
	.quad	0x3fd92c1f42bb6673              # double 0.393318
	.quad	0x3fd4a57214f0520d              # double 0.322598
	.quad	0x3fe5c868b9fdbd30              # double 0.68071400000000004
	.quad	0x3fdf1d9f4d37c137              # double 0.48618299999999998
	.quad	0x3fd1c5c9a34ca0c3              # double 0.27769700000000003
	.quad	0x3fea5905c0336156              # double 0.82336699999999996
	.quad	0x3fdc65f5275ee99a              # double 0.44372299999999998
	.quad	0x3fa6687f455a7d24              # double 0.043765999999999999
	.quad	0x3fe00374ff865d7d              # double 0.50042200000000003
	.quad	0x3fee343d89ce4a7b              # double 0.94387699999999997
	.quad	0x3fc9645a1cac0831              # double 0.198375
	.quad	0x3fd4bed30f062d41              # double 0.32414700000000002
	.quad	0x3f3615ebfa8f7db7              # double 3.3700000000000001E-4
	.quad	0x3fefe779207d4e09              # double 0.99700599999999994
	.quad	0x3fe4308bb906466b              # double 0.63092599999999999
	.quad	0x3fe07d50225742dd              # double 0.51529700000000001
	.quad	0x3fe777fae3608d09              # double 0.73339600000000005
	.quad	0x3fe9d5a3a08398a6              # double 0.80732899999999996
	.quad	0x3fd33f141205bc02              # double 0.30072500000000002
	.quad	0x3fec93037d63022e              # double 0.89294600000000002
	.quad	0x3fd36d97b30f8c65              # double 0.303564
	.quad	0x3fd166559f6ec5b0              # double 0.27187099999999997
	.quad	0x3fd49b8023a6ce36              # double 0.32199100000000003
	.quad	0x3fe3ac5c13fd0d06              # double 0.61478999999999995
	.quad	0x3fc4ae31d712a0ec              # double 0.16156599999999999
	.quad	0x3fb5668c26139000              # double 0.083596000000000004
	.quad	0x3fe2e0913a4f8727              # double 0.58991300000000002
	.quad	0x3fefe0f5e41d4b6a              # double 0.99621099999999996
	.quad	0x3fda1cc100e6afcd              # double 0.40800500000000001
	.quad	0x3fefd66277c45cbc              # double 0.99492000000000002
	.quad	0x3feef7b17ce52ded              # double 0.96773600000000004
	.quad	0x3fe4bdd334c5da6a              # double 0.64817199999999997
	.quad	0x3fde91ab8e8ea39c              # double 0.47764099999999998
	.quad	0x3fec14d50ebaade6              # double 0.87754299999999996
	.quad	0x3fda6b0531982880              # double 0.41278199999999998
	.quad	0x3fe3450268900c52              # double 0.60217399999999999
	.quad	0x3fe01c6088d6d3b7              # double 0.50346400000000002
	.quad	0x3fc635696e58a32f              # double 0.17350499999999999
	.quad	0x3fe0fea5f84cad58              # double 0.53108500000000003
	.quad	0x3fd354fbdad7518b              # double 0.302062
	.quad	0x3fdd6e9bbf0dc769              # double 0.45987600000000001
	.quad	0x3fec76922d948dc1              # double 0.88947399999999999
	.quad	0x3fe94bad7d7c2ca1              # double 0.79048799999999997
	.quad	0x3fe0cb295e9e1b09              # double 0.52480000000000004
	.quad	0x3fdb333333333333              # double 0.42499999999999999
	.quad	0x3fc07ae147ae147b              # double 0.12875
	.quad	0x3fc59702e6644d87              # double 0.16867099999999999
	.quad	0x3fee4a9691a75cd1              # double 0.94660500000000003
	.quad	0x3fd8358afc47e49b              # double 0.37826799999999999
	.quad	0x3fe2b005814940bc              # double 0.58398700000000003
	.quad	0x3fe35a836eb4e981              # double 0.60479899999999998
	.quad	0x3fcca5bd944aa540              # double 0.22380800000000001
	.quad	0x3fe016e7a311e860              # double 0.50279600000000002
	.quad	0x3fe3d4c33b539325              # double 0.619722
	.quad	0x3fc314b167ec7864              # double 0.14906900000000001
	.quad	0x3fd9bdbe3c105187              # double 0.40220600000000001
	.quad	0x3fea6c54bcf0b6b7              # double 0.82572400000000001
	.quad	0x3fb300abf76a2f49              # double 0.074229000000000003
	.quad	0x3fbae1049235f80a              # double 0.10499600000000001
	.quad	0x3fe174128bf3bea9              # double 0.54541899999999999
	.quad	0x3fcc9c6f36ef8056              # double 0.223524
	.quad	0x3fe7f37da61e0c5b              # double 0.74847300000000005
	.quad	0x3fe070bf1a5ca298              # double 0.51376299999999997
	.quad	0x3fdde514c22ee419              # double 0.46710699999999999
	.quad	0x3feea67620ee8d11              # double 0.95782
	.quad	0x3fbfdeb52c9d16fd              # double 0.12449200000000001
	.quad	0x3fbc76e1deacc921              # double 0.111189
	.quad	0x3fa0b60f1b25f634              # double 0.032639000000000001
	.quad	0x3fe4fe0ef99806f2              # double 0.65601299999999996
	.quad	0x3fce674080f98fa3              # double 0.23752599999999999
	.quad	0x3fe28c586876e1df              # double 0.57963200000000004
	.quad	0x3fe13b73083558a7              # double 0.53850699999999996
	.quad	0x3fd11cf355cd91ef              # double 0.26739200000000002
	.quad	0x3fd218655193708b              # double 0.28273900000000002
	.quad	0x3fe0a2120e1f7d74              # double 0.51978400000000002
	.quad	0x3fd24163779e9d0f              # double 0.28524100000000002
	.quad	0x3fd0f1843c3a42f2              # double 0.264741
	.quad	0x3fe037c5692b3cc5              # double 0.50680800000000004
	.quad	0x3fe6cb48d3ae685e              # double 0.71231500000000003
	.quad	0x3fe63d3804534bd7              # double 0.69497299999999995
	.quad	0x3fe52c0e7bc3c5bd              # double 0.66162799999999999
	.quad	0x3fcea86d71f36263              # double 0.23951500000000001
	.quad	0x3febd1ed9dfdac69              # double 0.86937600000000004
	.quad	0x3fe2d0bb6ed67770              # double 0.58797999999999995
	.quad	0x3fa12b7fe08aefb3              # double 0.033535000000000002
	.quad	0x3fd797785729b281              # double 0.36862
	.quad	0x3fee6b463497b741              # double 0.95059499999999997
	.quad	0x3fe3d9cae21101b0              # double 0.620336
	.quad	0x3fed52c7b890d5a6              # double 0.91635500000000003
	.quad	0x3fdeca148ba83f4f              # double 0.48108400000000001
	.quad	0x3fe80ad688377186              # double 0.75132299999999996
	.quad	0x3fe72808c8259e1f              # double 0.72363699999999997
	.quad	0x3fe6b04039abf338              # double 0.70901499999999995
	.quad	0x3fda5ddd2ae8e1d6              # double 0.41197899999999998
	.quad	0x3fbf2becedd48451              # double 0.121764
	.quad	0x3fc57396d0917d6b              # double 0.16758999999999999
	.quad	0x3feea1f8e3ac0c63              # double 0.95727200000000001
	.quad	0x3fa3c382a12f9011              # double 0.038601000000000003
	.quad	0x3fcd3b3a68b19a41              # double 0.22836999999999999
	.quad	0x3fd563b256ffc116              # double 0.33421000000000001
	.quad	0x3fddb5fa22706d50              # double 0.46423199999999998
	.quad	0x3f9655e28aa43351              # double 0.021812000000000002
	.quad	0x3fe5ec02f2f98740              # double 0.68506
	.quad	0x3fe8bc8e25c810a5              # double 0.77301699999999995
	.quad	0x3fe35ae3e6c4c597              # double 0.60484499999999997
	.quad	0x3fd4521dda059a74              # double 0.31751200000000002
	.quad	0x3fddacfb762d83c7              # double 0.46368300000000001
	.quad	0x3fe770cbaf965b21              # double 0.73251900000000003
	.quad	0x3fc2ccff21b3aeef              # double 0.14688100000000001
	.quad	0x3fd40be9424e5929              # double 0.31322699999999998
	.quad	0x3fb777079e59f2bb              # double 0.091660000000000005
	.quad	0x3fd330f062d40aaf              # double 0.29986200000000002
	.quad	0x3fdcc78e9f6a93f3              # double 0.44968000000000002
	.quad	0x3fd4b5e529bae46d              # double 0.323602
	.quad	0x3fd8b59578a2a90d              # double 0.38608300000000001
	.quad	0x3fbe2c12ad81adeb              # double 0.11786000000000001
	.quad	0x3fe7ff1737542a24              # double 0.74988900000000002
	.quad	0x3f9f37b8d3f1843c              # double 0.030485999999999999
	.quad	0x3fd79e774eebf65e              # double 0.36904700000000001
	.quad	0x3fe018dac258d584              # double 0.50303399999999998
	.quad	0x3fde8858ff759685              # double 0.477072
	.quad	0x3fd46da4484944ed              # double 0.31919199999999998
	.quad	0x3fe59697f1f9ad00              # double 0.67463300000000004
	.quad	0x3fd7a4052d666a98              # double 0.36938599999999999
	.quad	0x3fb5070fbeb9e493              # double 0.082139000000000004
	.quad	0x3fe46a2b1704ff43              # double 0.63795999999999997
	.quad	0x3fc773083558a761              # double 0.183198
	.quad	0x3fecdc6c11a11234              # double 0.90190700000000001
	.quad	0x3fd8de5d18090b41              # double 0.38857199999999997
	.quad	0x3fbf5653c9abb01d              # double 0.12241100000000001
	.quad	0x3fc186db50f40e5a              # double 0.13692799999999999
	.quad	0x3fe1d0e991ff7165              # double 0.55675200000000002
	.quad	0x3fe71d3cbc48f10b              # double 0.72231900000000004
	.quad	0x3feb23ad18d25edd              # double 0.848105
	.quad	0x3fcacd8dbcec84f9              # double 0.209398
	.quad	0x3fd4d634549b62c7              # double 0.32557399999999997
	.quad	0x3fefd0aed99cbee8              # double 0.99422399999999999
	.quad	0x3fe5e34dad31fcd2              # double 0.68399699999999997
	.quad	0x3fc20b780346dc5d              # double 0.14097499999999999
	.quad	0x3fe6bd96638433d7              # double 0.71064300000000002
	.quad	0x3fe97b65668c2614              # double 0.79631300000000004
	.quad	0x3fd7095af294dd72              # double 0.35994599999999999
	.quad	0x3fe2fb07075b3e14              # double 0.59314299999999998
	.quad	0x3fee456f75d9a0f1              # double 0.94597600000000004
	.quad	0x3fed4b89d6adf71f              # double 0.91547100000000003
	.quad	0x3fd8bdd334c5da6a              # double 0.38658599999999999
	.quad	0x3fe80611fd5885d3              # double 0.75074099999999999
	.quad	0x3fecc38b04ab606b              # double 0.89886999999999995
	.quad	0x3feac5f7c6759ab7              # double 0.83666600000000002
	.quad	0x3fcff9c62a1b5c7d              # double 0.24981
	.quad	0x3fb8918e325d4a5e              # double 0.095971
	.quad	0x3fe1adfd694ccab4              # double 0.55248900000000001
	.quad	0x3fcbbd4067cf1c32              # double 0.21671299999999999
	.quad	0x3fe685b9e8c47a18              # double 0.70382400000000001
	.quad	0x3fd8e835dedf1e08              # double 0.38917299999999999
	.quad	0x3fdb0917d6b65a9b              # double 0.42243000000000003
	.quad	0x3fedb9841aac53b1              # double 0.92889600000000005
	.quad	0x3fd5dba908a265f1              # double 0.341532
	.quad	0x3fe34cf6be37de94              # double 0.60314500000000004
	.quad	0x3fcc1d4b6a619daa              # double 0.21964400000000001
	.quad	0x3fe32f5dbb9cf9a0              # double 0.59953199999999995
	.quad	0x3f9aa64c2f837b4a              # double 0.026025
	.quad	0x3fd196af038e29fa              # double 0.27482200000000001
	.quad	0x3fee6779207d4e09              # double 0.95013099999999995
	.quad	0x3fcf844d013a92a3              # double 0.246225
	.quad	0x3fe1db6a1e81cb47              # double 0.55803400000000003
	.quad	0x3fd8bacb4289118c              # double 0.38640099999999999
	.quad	0x3fef0d434a01abd2              # double 0.97036900000000004
	.quad	0x3fe24449dbec2481              # double 0.57083600000000001
	.quad	0x3fc20afa2f05a709              # double 0.14096
	.quad	0x3fedea26e5471716              # double 0.93483300000000003
	.quad	0x3fd137cdcca70d20              # double 0.26903100000000002
	.quad	0x3fe7082adc4c9c91              # double 0.71974700000000003
	.quad	0x3fe5494d50ebaade              # double 0.66519799999999996
	.quad	0x3fc5be1a8262456f              # double 0.16986399999999999
	.quad	0x3fee27b4e54f7a92              # double 0.94234700000000005
	.quad	0x3fd453cddd6e04c0              # double 0.31761499999999998
	.quad	0x3fb4c447c30d306a              # double 0.081119999999999997
	.quad	0x3fef98372e6a7696              # double 0.98733099999999996
	.quad	0x3fc3ec02f2f98740              # double 0.15564
	.quad	0x3fb29dd7ecbb7f9d              # double 0.072720999999999994
	.quad	0x3fe98a71de69ad43              # double 0.79815000000000003
	.quad	0x3fbcc7b02d59d55e              # double 0.11242199999999999
	.quad	0x3fef915df6555c53              # double 0.98649500000000001
	.quad	0x3fedf31098d477bc              # double 0.935921
	.quad	0x3fe539ffd60e94ee              # double 0.66332999999999998
	.quad	0x3feec0a4a05dd8f9              # double 0.96101599999999998
	.quad	0x3fd777d0f1f57b42              # double 0.36668800000000001
	.quad	0x3fe429bf162ae4b0              # double 0.63009599999999999
	.quad	0x3fddf87f023e9ea1              # double 0.46829199999999999
	.quad	0x3fea5f1bef49cf57              # double 0.82411000000000001
	.quad	0x3fee1ec918e325d5              # double 0.94125800000000004
	.quad	0x3fe647cd898b2e9d              # double 0.69626500000000002
	.quad	0x3fe818b2e9ccb7d4              # double 0.75301499999999998
	.quad	0x3fe521c68ec52a41              # double 0.66037299999999999
	.quad	0x3fd966f0cfe15443              # double 0.39690799999999998
	.quad	0x3fe1b1a4bdba0a52              # double 0.55293499999999995
	.quad	0x3fdad92fb19e731d              # double 0.41950599999999999
	.quad	0x3fe3a65cf67b1c00              # double 0.61405799999999999
	.quad	0x3fee4a1ad6451b93              # double 0.946546
	.quad	0x3fed8d716d2aa5c6              # double 0.923516
	.quad	0x3fb11116a8b8f14e              # double 0.066667000000000004
	.quad	0x3fd70789613d31ba              # double 0.35983500000000002
	.quad	0x3fc60a9de8b3b320              # double 0.17219899999999999
	.quad	0x3fbbf08893b7d849              # double 0.109139
	.quad	0x3fe9e47778dd6170              # double 0.80913900000000005
	.quad	0x3fe6f24b76f6d762              # double 0.71707699999999996
	.quad	0x3fddb41bfbdf090f              # double 0.46411799999999998
	.quad	0x3fee36976bc1effa              # double 0.944164
	.quad	0x3f97cd466f5019f4              # double 0.023244000000000001
	.quad	0x3fc2a1059ea57215              # double 0.145539
	.quad	0x3fe8467be553ac4f              # double 0.75860399999999995
	.quad	0x3fe576d117b5286b              # double 0.67075399999999996
	.quad	0x3fe805cee17a02fb              # double 0.75070899999999996
	.quad	0x3fdb3300de4c5111              # double 0.42498799999999998
	.quad	0x3fd6f9db22d0e560              # double 0.35899999999999999
	.quad	0x3fd1333333333333              # double 0.26874999999999999
	.quad	0x3fd3a265f0f5a101              # double 0.30678699999999998
	.quad	0x3fe8fab96f21f6cb              # double 0.78060600000000002
	.quad	0x3fdcbcfd4bf0995b              # double 0.44903500000000002
	.quad	0x3fe2661cffeb074a              # double 0.57496499999999995
	.quad	0x3fe7c422036006d1              # double 0.74269200000000002
	.quad	0x3fe1458ab92c0618              # double 0.53973899999999997
	.quad	0x3fe3c42a66dbd72c              # double 0.61769600000000002
	.quad	0x3fe0321a2e7f6f4c              # double 0.50611600000000001
	.quad	0x3fe0ec43f5f91601              # double 0.52884100000000001
	.quad	0x3fc51a21ea359360              # double 0.16486000000000001
	.quad	0x3fe6f666234a87e4              # double 0.71757800000000005
	.quad	0x3f9874c8ffb8b264              # double 0.023883000000000001
	.quad	0x3fe8ad8a116659d1              # double 0.77118399999999998
	.quad	0x3fe13c72e275ab7e              # double 0.53862900000000002
	.quad	0x3fe2eb1c432ca57a              # double 0.59119999999999995
	.quad	0x3fefec9c0a8d21bc              # double 0.99763299999999999
	.quad	0x3fed3f5f91600f34              # double 0.91398599999999996
	.quad	0x3fec196d8f4f93bc              # double 0.87810399999999999
	.quad	0x3fe9b7b6bb129025              # double 0.80367599999999995
	.quad	0x3fd441c8216c6152              # double 0.31651499999999999
	.quad	0x3fde12f901083dbc              # double 0.46990799999999999
	.quad	0x3fd113660e51d25b              # double 0.26680900000000002
	.quad	0x3fe1460ed80a17b1              # double 0.539802
	.quad	0x3fe841615ebfa8f8              # double 0.75798100000000002
	.quad	0x3fdb2456f75d9a0f              # double 0.424093
	.quad	0x3fd82ef911cf355d              # double 0.37786700000000001
	.quad	0x3fdcaa4766c6de76              # double 0.44789299999999999
	.quad	0x3fecde58e64b2314              # double 0.90214199999999999
	.quad	0x3fe5a0ff540895d1              # double 0.67590300000000003
	.quad	0x3f8b2e59af9ebe9d              # double 0.013272000000000001
	.quad	0x3fe099d883ba3444              # double 0.51878000000000002
	.quad	0x3fe9b0fadf2ecf20              # double 0.80285399999999995
	.quad	0x3fd701c4fc1df330              # double 0.359483
	.quad	0x3fe27c71d6063172              # double 0.57769099999999995
	.quad	0x3fe8e48c7192ea53              # double 0.77789900000000001
	.quad	0x3fc0c4dec1c1d6d0              # double 0.13100800000000001
	.quad	0x3fe4c5564b662fe0              # double 0.64908900000000003
	.quad	0x3fde1b328b6d86ec              # double 0.47040999999999999
	.quad	0x3fe40eda22f6a50d              # double 0.62681299999999995
	.quad	0x3fd08d10f51ac9b0              # double 0.25861000000000001
	.quad	0x3fc1c06e19b90eaa              # double 0.138685
	.quad	0x3f8d8adab9f559b4              # double 0.014425
	.quad	0x3fe8e90364388ebd              # double 0.77844400000000002
	.quad	0x3feff5f4e4430b18              # double 0.99877400000000005
	.quad	0x3fec5377e1b8ed1c              # double 0.885189
	.quad	0x3febf5bc44bf4cb2              # double 0.87374700000000005
	.quad	0x3fd6e92d55a3a084              # double 0.35798200000000002
	.quad	0x3fd31f1cfbb94962              # double 0.29877399999999998
	.quad	0x3fdb80a9de8b3b32              # double 0.429728
	.quad	0x3fbd171e29b6b2af              # double 0.113634
	.quad	0x3fd435c9e6687f45              # double 0.31578299999999998
	.quad	0x3fcd5ce18266772d              # double 0.22939699999999999
	.quad	0x3fe1733ca31e7d9a              # double 0.54531700000000005
	.quad	0x3fe45c1c6088d6d4              # double 0.63624400000000003
	.quad	0x3fda0780fdc1615f              # double 0.40670800000000001
	.quad	0x3feecef88b977857              # double 0.96276499999999998
	.quad	0x3fef718c9fb6134d              # double 0.98261100000000001
	.quad	0x3fe70c3b0c4588a0              # double 0.72024299999999997
	.quad	0x3fe05db3397dd00f              # double 0.51143799999999995
	.quad	0x3fe351159c497742              # double 0.60364799999999996
	.quad	0x3feffa311e85fd05              # double 0.99929100000000004
	.quad	0x3fe60aa64c2f837b              # double 0.68879999999999997
	.quad	0x3fee923c42a66dbd              # double 0.95535099999999995
	.quad	0x3fe5c74b838c111b              # double 0.68057800000000002
	.quad	0x3fef68986fcdee35              # double 0.981518
	.quad	0x3fb6d77318fc5048              # double 0.089224999999999999
	.quad	0x3fd797fe8ee6b830              # double 0.36865199999999998
	.quad	0x3fef9c0ca600b029              # double 0.98779899999999998
	.quad	0x3fe5df548ecd8dbd              # double 0.68351200000000001
	.quad	0x3fefe4ba94bbe447              # double 0.99667099999999997
	.quad	0x3fbe00c0f01fb82c              # double 0.117199
	.quad	0x3fe2e297396d0918              # double 0.59016000000000002
	.quad	0x3fda883771865519              # double 0.41456399999999999
	.quad	0x3f4d323fee2c98e5              # double 8.9099999999999997E-4
	.quad	0x3fe054d834091c08              # double 0.51035699999999995
	.quad	0x3f64f8b588e368f1              # double 0.0025600000000000002
	.quad	0x3fe0434a01abd1ab              # double 0.50821400000000005
	.quad	0x3fe66c636b096356              # double 0.70073099999999999
	.quad	0x3feb12b5e529bae4              # double 0.84603399999999995
	.quad	0x3fc87c200c0f01fc              # double 0.19128800000000001
	.quad	0x3fc054152b0a6fc6              # double 0.12756600000000001
	.quad	0x3fccfd7e45803cd1              # double 0.22648599999999999
	.quad	0x3fd24d65e4606749              # double 0.28597400000000001
	.quad	0x3fd7af9a8cdea034              # double 0.37009300000000001
	.quad	0x3fd989b0ee49f517              # double 0.39902900000000002
	.quad	0x3fe9bec2480e8c8b              # double 0.80453600000000003
	.quad	0x3fe1877ab324851b              # double 0.54778800000000005
	.quad	0x3fe9b08787485e3e              # double 0.80279900000000004
	.quad	0x3fdf2becedd48451              # double 0.48705599999999999
	.quad	0x3fe716aad1d041cc              # double 0.72151699999999996
	.quad	0x3fef77a2cecc814d              # double 0.98335399999999995
	.quad	0x3f9cc0bdcad14a0a              # double 0.028079
	.quad	0x3fe6f56861e92924              # double 0.71745700000000001
	.quad	0x3fe26698bb4d4888              # double 0.57502399999999998
	.quad	0x3fe244827b6fe2e7              # double 0.57086300000000001
	.quad	0x3fd4f54d1e96c3fc              # double 0.32747199999999999
	.quad	0x3fc6bae03b3e9a70              # double 0.17757800000000001
	.quad	0x3fe7bc664d3bf2f5              # double 0.74174799999999996
	.quad	0x3fc9743e963dc487              # double 0.19886000000000001
	.quad	0x3fd550374ff865d8              # double 0.33302100000000001
	.quad	0x3fe867fd3f5b5fa2              # double 0.76269399999999998
	.quad	0x3fd31c193b3a68b2              # double 0.29859000000000002
	.quad	0x3fca05bc01a36e2f              # double 0.20330000000000001
	.quad	0x3fd642528ae74f2f              # double 0.347798
	.quad	0x3fedcc2b51bd61f6              # double 0.93117300000000003
	.quad	0x3fba641b328b6d87              # double 0.10309
	.quad	0x3fd4121682f94424              # double 0.31360399999999999
	.quad	0x3fe7b9a7c17a8933              # double 0.74141299999999999
	.quad	0x3fef14467381d7dc              # double 0.971225
	.quad	0x3fec643ed959a30a              # double 0.88723700000000005
	.quad	0x3fe06e8af81626b3              # double 0.51349400000000001
	.quad	0x3fef8c77dd872f34              # double 0.98589700000000002
	.quad	0x3fd533eff1950332              # double 0.33129500000000001
	.quad	0x3fe70eed02cd39da              # double 0.72057199999999999
	.quad	0x3fb444f1a1986b9c              # double 0.079176999999999997
	.quad	0x3fd83a3ec02f2f98              # double 0.37855499999999997
	.quad	0x3fc4121ee675147f              # double 0.156803
	.quad	0x3fe45b3bfb58d152              # double 0.63613699999999995
	.quad	0x3fece79463cfb331              # double 0.90326899999999999
	.quad	0x3fe812231832fcad              # double 0.75221400000000005
	.quad	0x3fa4c55432873bc9              # double 0.040568
	.quad	0x3fe873f0fe047d3d              # double 0.76415299999999997
	.quad	0x3fd0ad5bee3d5fdd              # double 0.26058100000000001
	.quad	0x3fc3d5bab21815a0              # double 0.15495999999999999
	.quad	0x3fedbb5e0f7fcfc4              # double 0.929122
	.quad	0x3fe6ee115592d98c              # double 0.716561
	.quad	0x3feed2ac753e707e              # double 0.96321699999999999
	.quad	0x3fca2c3c9eecbfb1              # double 0.20447499999999999
	.quad	0x3fddf9b56323bbc7              # double 0.468366
	.quad	0x3fe6b58f2e05ccc9              # double 0.70966300000000004
	.quad	0x3fe85abc0e38a7e7              # double 0.76107599999999997
	.quad	0x3fd93764f11b60af              # double 0.39400600000000002
	.quad	0x3fe878e3ac0c62e5              # double 0.76475700000000002
	.quad	0x3fe894877681669d              # double 0.76813100000000001
	.quad	0x3fdc84167a95c854              # double 0.44556200000000001
	.quad	0x3fd75ec80c73abc9              # double 0.36515999999999998
	.quad	0x3fea3354c122749f              # double 0.81876599999999999
	.quad	0x3fad64b662fdfc1a              # double 0.057409000000000002
	.quad	0x3fe4d4d4024b33db              # double 0.65098
	.quad	0x3fdb203a322af577              # double 0.423842
	.quad	0x3fd1f444e0daa0cb              # double 0.28053400000000001
	.quad	0x3fd8e30caa326e11              # double 0.38885799999999998
	.quad	0x3fca7eb6bf444e0e              # double 0.20699200000000001
	.quad	0x3fe58ae1049235f8              # double 0.673203
	.quad	0x3fc84ebdd334c5da              # double 0.18990299999999999
	.quad	0x3fb83254e6e221c9              # double 0.094518000000000005
	.quad	0x3fef98efbb0e5e68              # double 0.98741900000000004
	.quad	0x3fecd104d551d68c              # double 0.90051499999999995
	.quad	0x3fd984d76ab58080              # double 0.398733
	.quad	0x3fdfb2031ceaf252              # double 0.49524000000000001
	.quad	0x3fc96bf444e0daa1              # double 0.19860700000000001
	.quad	0x3fef80ffda4052d6              # double 0.98449699999999996
	.quad	0x3fe5f02a3486f04a              # double 0.68556700000000004
	.quad	0x3fe5f13059641f64              # double 0.68569199999999997
	.quad	0x3fefea0fd3b29a1c              # double 0.99732200000000004
	.quad	0x3fe7a0791c4b9021              # double 0.73833899999999997
	.quad	0x3fed3b0c4588a04d              # double 0.91345799999999999
	.quad	0x3fa9014b599aa609              # double 0.048837999999999999
	.quad	0x3fe3f2170931012a              # double 0.62330200000000002
	.quad	0x3fd7a54c55432874              # double 0.36946400000000001
	.quad	0x3fe992b5e529bae4              # double 0.79915899999999995
	.quad	0x3feb2de657b84dba              # double 0.84935300000000002
	.quad	0x3fe181d19157abb9              # double 0.54709700000000006
	.quad	0x3fe016f4384ba0e8              # double 0.50280199999999997
	.quad	0x3fd35a7d24180d3d              # double 0.302398
	.quad	0x3fed522856605ee5              # double 0.91627899999999995
	.quad	0x3f80cc35ce182667              # double 0.0082019999999999992
	.quad	0x3feead77318fc505              # double 0.95867500000000005
	.quad	0x3fdeecdd0d8cb07d              # double 0.483207
	.quad	0x3fd86a055757d5aa              # double 0.381471
	.quad	0x3fe7544567125dd1              # double 0.72903700000000005
	.quad	0x3fe9d992428d434a              # double 0.807809
	.quad	0x3febe7cd03537197              # double 0.87204599999999999
	.quad	0x3fa50e3476295209              # double 0.041124000000000001
	.quad	0x3fe108d08919ef95              # double 0.53232599999999997
	.quad	0x3fb092bc2fc69729              # double 0.064739000000000005
	.quad	0x3fe63018611fd588              # double 0.69337099999999996
	.quad	0x3fd3b0bbf50e3476              # double 0.30766199999999999
	.quad	0x3fddff6d330941c8              # double 0.46871499999999999
	.quad	0x3fe0023422467be5              # double 0.50026899999999996
	.quad	0x3fea61dc93ea2d30              # double 0.82444600000000001
	.quad	0x3fee2c94b380cb6c              # double 0.94294199999999994
	.quad	0x3f93c792d1287c20              # double 0.019316
	.quad	0x3fe2134267839cd8              # double 0.56485099999999999
	.quad	0x3fe6cc51116a8b8f              # double 0.71244099999999999
	.quad	0x3fc23f034b0e1b4c              # double 0.14254800000000001
	.quad	0x3fed484b5dcc63f1              # double 0.91507499999999997
	.quad	0x3fad834091c08744              # double 0.057641999999999999
	.quad	0x3feb3a4f8726d04e              # double 0.85086799999999996
	.quad	0x3fc840fa9c12f09e              # double 0.18948300000000001
	.quad	0x3fcb1cc964628028              # double 0.211816
	.quad	0x3fe06dfa43fe5c92              # double 0.51342500000000002
	.quad	0x3fdb970b49e01de2              # double 0.43109399999999998
	.quad	0x3fe9f5c6c11a1123              # double 0.81125199999999997
	.quad	0x3fe7451116a8b8f1              # double 0.72718099999999997
	.quad	0x3fa6bd6e8af81627              # double 0.044414000000000002
	.quad	0x3fdafc71d6063172              # double 0.42165799999999998
	.quad	0x3fef47219220ff54              # double 0.97743299999999999
	.quad	0x3fe7b7457c0b1359              # double 0.74112199999999995
	.quad	0x3fdceacc92146a1a              # double 0.45183099999999998
	.quad	0x3fe7cc100e6afcce              # double 0.74365999999999999
	.quad	0x3fe60bfc2224edf6              # double 0.68896299999999999
	.quad	0x3fdcb45ae5ffa3ba              # double 0.44850800000000002
	.quad	0x3fe1cc8bc9cd3e0c              # double 0.55621900000000002
	.quad	0x3fd8a9d627bf61aa              # double 0.38536599999999999
	.quad	0x3fe315feda661284              # double 0.59643500000000005
	.quad	0x3fe9bda2f8bdec5f              # double 0.80439899999999998
	.quad	0x3fe4966be7afa722              # double 0.64336199999999999
	.quad	0x3fe4b96d0917d6b6              # double 0.64763499999999996
	.quad	0x3fcd1ae2da554b8c              # double 0.227383
	.quad	0x3fea5907d912556d              # double 0.82336799999999999
	.quad	0x3faaa2c2374794ea              # double 0.052023
	.quad	0x3feb39ef0f16f438              # double 0.85082199999999997
	.quad	0x3fda8aefb2aae297              # double 0.41472999999999999
	.quad	0x3fec28d002e23290              # double 0.87998200000000004
	.quad	0x3fd34e054690de09              # double 0.30163699999999999
	.quad	0x3fb99fd36f7e3d1d              # double 0.100095
	.quad	0x3fc6d330941c8217              # double 0.17832000000000001
	.quad	0x3fc04a16a4873366              # double 0.12726100000000001
	.quad	0x3fdd0ec743201041              # double 0.45402700000000001
	.quad	0x3fb640fa9c12f09e              # double 0.086929000000000006
	.quad	0x3fe34cf6be37de94              # double 0.60314500000000004
	.quad	0x3fb15347a5b0ff11              # double 0.067677000000000001
	.quad	0x3feaa36e2eb1c433              # double 0.83245000000000002
	.quad	0x3fd0bd61f5be5d9e              # double 0.26155899999999999
	.quad	0x3fc1d24180d3cff6              # double 0.13922899999999999
	.quad	0x3fe59eecbfb15b57              # double 0.67564999999999997
	.quad	0x3fe58bf5d78811b2              # double 0.67333500000000002
	.quad	0x3fba1709310129cc              # double 0.101914
	.quad	0x3fe7865f9591cd1c              # double 0.73515299999999995
	.quad	0x3fe3ad01c0ca600b              # double 0.614869
	.quad	0x3fc9ef8487b99d45              # double 0.202622
	.quad	0x3fe425e353f7ced9              # double 0.62962499999999999
	.quad	0x3fede2c12ad81adf              # double 0.93393000000000004
	.quad	0x3fea147064ece9a3              # double 0.81499500000000002
	.quad	0x3fb77f27fe4bcada              # double 0.091784000000000004
	.quad	0x3fbd3532e7b3d8e0              # double 0.114093
	.quad	0x3fe2b3461309c800              # double 0.58438400000000001
	.quad	0x3fe672dc2b0ea183              # double 0.70152099999999995
	.quad	0x3fe58ed3d859c8c9              # double 0.67368499999999998
	.quad	0x3febb8da3c21187e              # double 0.86631499999999995
	.quad	0x3fe9d0c5eb313be2              # double 0.80673499999999998
	.quad	0x3fee2d2bb23571d2              # double 0.94301400000000002
	.quad	0x3fa33bfb58d1526e              # double 0.037567000000000003
	.quad	0x3fd69f6ec5b078d9              # double 0.35348099999999999
	.quad	0x3fe4f0e6f2e8c048              # double 0.65440699999999996
	.quad	0x3fdd43c3a42f1ed1              # double 0.45726099999999997
	.quad	0x3fe699e0e736049f              # double 0.70628400000000002
	.quad	0x3fe4c9a77e5eaab0              # double 0.64961599999999997
	.quad	0x3fceb51bd61f5be6              # double 0.239902
	.quad	0x3fda960b6f9fcb0c              # double 0.415408
	.quad	0x3fdb41f212d77319              # double 0.4259
	.quad	0x3fec38f14db59579              # double 0.88195100000000004
	.quad	0x3feca9845dc83233              # double 0.89569299999999996
	.quad	0x3fe6828a1dfb938a              # double 0.70343500000000003
	.quad	0x3fdbf5d78811b1d9              # double 0.43687999999999999
	.quad	0x3fcb6ad70e6f2e8c              # double 0.214198
	.quad	0x3fe73606b7aa25d9              # double 0.72534500000000002
	.quad	0x3fe5c56b441bb8c3              # double 0.68034899999999998
	.quad	0x3fe9313dfb0d51f8              # double 0.78726099999999999
	.quad	0x3fae9728a6117721              # double 0.059747000000000001
	.quad	0x3fe90a24463065f9              # double 0.78248799999999996
	.quad	0x3fe033daf8df7a4e              # double 0.50632999999999995
	.quad	0x3fe05ae81882adc5              # double 0.51109700000000002
	.quad	0x3fd74cc25072085b              # double 0.36405999999999999
	.quad	0x3fed92ec6bce8534              # double 0.92418500000000003
	.quad	0x3fec47735c182ecb              # double 0.88372200000000001
	.quad	0x3fc7e5a78f25a251              # double 0.186696
	.quad	0x3fe8034091c08744              # double 0.75039699999999998
	.quad	0x3fe8e748e4755ffe              # double 0.77823299999999995
	.quad	0x3fe2fe004b7f5a53              # double 0.59350599999999998
	.quad	0x3fd42f9873ffac1d              # double 0.31540499999999999
	.quad	0x3fef28b6d86ec17f              # double 0.97372000000000002
	.quad	0x3fe7e8448cf7caa7              # double 0.74710299999999996
	.quad	0x3fc17292c4934268              # double 0.13630900000000001
	.quad	0x3fed9ebc83a96d4c              # double 0.92562699999999997
	.quad	0x3fe896bb98c7e282              # double 0.76839999999999997
	.quad	0x3fa051eb851eb852              # double 0.031875000000000001
	.quad	0x3fe0d5f78359bc34              # double 0.526119
	.quad	0x3fbb341e14bdfd26              # double 0.106264
	.quad	0x3fe99c7bcc2938de              # double 0.80035199999999995
	.quad	0x3fee320535c9e668              # double 0.94360599999999994
	.quad	0x3fe43bbe878fabda              # double 0.63229299999999999
	.quad	0x3feb18fa376922d9              # double 0.84679899999999997
	.quad	0x3fdf5faa8a82a561              # double 0.49021399999999998
	.quad	0x3fe0a64c2f837b4a              # double 0.52029999999999998
	.quad	0x3fef94b7b28954a8              # double 0.986904
	.quad	0x3fd6bbd3804534bd              # double 0.35521399999999997
	.quad	0x3fe0f09741d084e8              # double 0.52936899999999998
	.quad	0x3fe58268900c521e              # double 0.67216900000000002
	.quad	0x3fe4b4d8ba40d90e              # double 0.64707599999999998
	.quad	0x3fb69ad42c3c9eed              # double 0.088300000000000003
	.quad	0x3faaf23033a4723b              # double 0.052629000000000002
	.quad	0x3fb73eff1950331e              # double 0.090804999999999996
	.quad	0x3fe4763e4abe6a33              # double 0.63943399999999995
	.quad	0x3febfe9d94d0dcfd              # double 0.87483100000000003
	.quad	0x3fe030a2ca9ac365              # double 0.50593699999999997
	.quad	0x3fcad5f99c38b04b              # double 0.20965500000000001
	.quad	0x3febd70e6f2e8c05              # double 0.87000200000000005
	.quad	0x3fd38a43bb40b34e              # double 0.30531399999999997
	.quad	0x3fb7dcf0307f23cd              # double 0.093215000000000006
	.quad	0x3fcfdfa871a3b14b              # double 0.24901300000000001
	.quad	0x3fe48474d9c6b053              # double 0.64116899999999999
	.quad	0x3fd4b62845996745              # double 0.32361800000000002
	.quad	0x3feeac83ec892ab7              # double 0.95855900000000004
	.quad	0x3fc7d94d0dcfcc5c              # double 0.18631900000000001
	.quad	0x3fc00f98fa376923              # double 0.125476
	.quad	0x3fd3a4d6e47dc37a              # double 0.30693599999999999
	.quad	0x3fe522e5de15ca6d              # double 0.66051000000000004
	.quad	0x3fec1f3c70c996b7              # double 0.87881299999999996
	.quad	0x3fde2b12d3415b14              # double 0.47137899999999999
	.quad	0x3fe664388ebcc6c5              # double 0.69973399999999997
	.quad	0x3fd996b3354c1227              # double 0.39982299999999998
	.quad	0x3fd91f212d773190              # double 0.39252500000000001
	.quad	0x3fc62b9d3cbc48f1              # double 0.173206
	.quad	0x3fe5f67d34df04de              # double 0.68633900000000003
	.quad	0x3fe519a1fd1569f5              # double 0.65937900000000005
	.quad	0x3fe5eabbcb1cc964              # double 0.68490399999999996
	.quad	0x3fda0eed02cd39da              # double 0.407161
	.quad	0x3fce34c1a8ac5c14              # double 0.235985
	.quad	0x3fadb24e9c454584              # double 0.058000999999999997
	.quad	0x3fc1673c4f3ba776              # double 0.135963
	.quad	0x3fc12923e5b8561d              # double 0.13406799999999999
	.quad	0x3fe7a294141e9af6              # double 0.73859600000000003
	.quad	0x3fe07034b0e1b4bb              # double 0.51369699999999996
	.quad	0x3fe350e560418937              # double 0.60362499999999997
	.quad	0x3fd0ed740c4156e2              # double 0.26449299999999998
	.quad	0x3fea7fbefd00713f              # double 0.828094
	.quad	0x3fea9cb039ef0f17              # double 0.83162700000000001
	.quad	0x3fb1567dbb16c1e3              # double 0.067725999999999995
	.quad	0x3fd29856a37ac3eb              # double 0.29054799999999997
	.quad	0x3fe60bd66277c45d              # double 0.68894500000000003
	.quad	0x3febb9cb6848beb6              # double 0.86643000000000003
	.quad	0x3feecaafbc1acde2              # double 0.96224200000000004
	.quad	0x3fe4cf28c79f6662              # double 0.65028799999999998
	.quad	0x3feabba98eda22f7              # double 0.83540800000000004
	.quad	0x3fc17aa25d8d79d1              # double 0.13655500000000001
	.quad	0x3fd885fd04a2fcf0              # double 0.38317800000000002
	.quad	0x3fec1ce4a7b4e54f              # double 0.87852699999999995
	.quad	0x3fd8da059a73b42d              # double 0.38830700000000001
	.quad	0x3fea9d5a187a4a49              # double 0.831708
	.quad	0x3fe3c3b4f6167232              # double 0.61763999999999997
	.quad	0x3fe6c6d612c6ac21              # double 0.71177199999999996
	.quad	0x3fea0bc9cd3e0bd4              # double 0.81393899999999996
	.quad	0x3fd12e770bd017db              # double 0.26846100000000001
	.quad	0x3fede40a6b93ccd1              # double 0.934087
	.quad	0x3fef067ad8e43244              # double 0.96954099999999998
	.quad	0x3fde40cc78e9f6a9              # double 0.47270499999999999
	.quad	0x3fdc6801711947d0              # double 0.44384800000000002
	.quad	0x3fe7e7c49fd7a13c              # double 0.74704199999999998
	.quad	0x3fd82d7b634dad32              # double 0.377776
	.quad	0x3fd83b60285ec3db              # double 0.37862400000000002
	.quad	0x3fe4044ae85b9e8c              # double 0.62552399999999997
	.quad	0x3fe7edbf8b9baa15              # double 0.74777199999999999
	.quad	0x3f9209aaa3ad18d2              # double 0.017614999999999999
	.quad	0x3fe7219eb6390c91              # double 0.722854
	.quad	0x3fd8b7c7820a30db              # double 0.38621699999999998
	.quad	0x3fe3e1d4306e5cd5              # double 0.62131700000000001
	.quad	0x3fe275903a7546d4              # double 0.576851
	.quad	0x3f9c0bdcad14a0a1              # double 0.027389
	.quad	0x3fd53b9ae0c17657              # double 0.33176299999999997
	.quad	0x3fe4668c26139000              # double 0.63751800000000003
	.quad	0x3fb6469d7342edbb              # double 0.087014999999999995
	.quad	0x3fe754738a3b57c5              # double 0.72905900000000001
	.quad	0x3fe8f35c182ecaef              # double 0.77970700000000004
	.quad	0x3fef4217d2849cb2              # double 0.97681799999999996
	.quad	0x3feb2f6837f7be12              # double 0.84953699999999999
	.quad	0x3fec9e30014f8b59              # double 0.89431000000000005
	.quad	0x3fe6b69984a0e411              # double 0.70979000000000003
	.quad	0x3fede88bda9435ad              # double 0.93463700000000005
	.quad	0x3fe9506dd69d3027              # double 0.79106799999999999
	.quad	0x3feffa5f41aef6f9              # double 0.999313
	.quad	0x3fe4d0fe8ab4fa48              # double 0.65051199999999998
	.quad	0x3feeea2d2fe3f35a              # double 0.966086
	.quad	0x3fe8c393682730c6              # double 0.77387399999999995
	.quad	0x3fde6ce789e774ef              # double 0.47539700000000001
	.quad	0x3fc42b6ae7d566cf              # double 0.15757499999999999
	.quad	0x3fd30a350d2806af              # double 0.29749799999999998
	.quad	0x3fccc16df3f96180              # double 0.22465299999999999
	.quad	0x3fed9af9ebe9c886              # double 0.92516799999999999
	.quad	0x3fdd295a6c5d206d              # double 0.45564900000000003
	.quad	0x3fde955b4677b396              # double 0.47786600000000001
	.quad	0x3fe62324c8366517              # double 0.69179000000000002
	.quad	0x3febaa737110e454              # double 0.86455700000000001
	.quad	0x3fe8f646ae3a3a8e              # double 0.78006299999999995
	.quad	0x3fe24e93e1c9b414              # double 0.57209200000000004
	.quad	0x3fe67ffde7210be9              # double 0.70312399999999997
	.quad	0x3fc5d3ed527e5215              # double 0.17052999999999999
	.quad	0x3fc0f94c87980f56              # double 0.132608
	.quad	0x3fdc98d045fe1112              # double 0.44682699999999997
	.quad	0x3fce6e5cd4ed2cbf              # double 0.23774300000000001
	.quad	0x3feae86833c6002a              # double 0.84087000000000001
	.quad	0x3fdbe0b4e11dbca9              # double 0.43558999999999998
	.quad	0x3fec559d55e6bc62              # double 0.88545099999999999
	.quad	0x3fe49ed9dfdac68b              # double 0.64439100000000005
	.quad	0x3fe4e601bc98a223              # double 0.65307700000000002
	.quad	0x3fd22734f82f5126              # double 0.28364299999999998
	.quad	0x3fa4b2fa93af74cd              # double 0.040427999999999999
	.quad	0x3fdd57928e0c9d9d              # double 0.45846999999999999
	.quad	0x3f9a658c4bd33d29              # double 0.025777999999999999
	.quad	0x3fb40f88333fc86d              # double 0.078362000000000001
	.quad	0x3fee4020817fc760              # double 0.94532799999999994
	.quad	0x3fc37aeddce7cd03              # double 0.15218899999999999
	.quad	0x3fd32c16df3f9618              # double 0.299566
	.quad	0x3fdf0142f61ed5ae              # double 0.48445199999999999
	.quad	0x3fe4e52deca2552a              # double 0.652976
	.quad	0x3fe62936c58eeaea              # double 0.69253100000000001
	.quad	0x3fb5ee675147f130              # double 0.085668999999999995
	.quad	0x3fe9249e44fa0514              # double 0.78571999999999997
	.quad	0x3fd5929670196d8f              # double 0.33707199999999998
	.quad	0x3fe4dbe1a8262457              # double 0.651841
	.quad	0x3fb487ebf22c01e7              # double 0.080199000000000006
	.quad	0x3fe553aa369fcf3e              # double 0.66646300000000003
	.quad	0x3fb4536d655e28aa              # double 0.079397999999999996
	.quad	0x3fe5fd694ccab3ee              # double 0.68718400000000002
	.quad	0x3fed69df97aaac11              # double 0.91917400000000005
	.quad	0x3fdefab10ba62670              # double 0.48405100000000001
	.quad	0x3fd32b66b6177ea2              # double 0.29952400000000001
	.quad	0x3fe0c5baf533f423              # double 0.52413699999999996
	.quad	0x3fc9df1172ef0ae5              # double 0.20211999999999999
	.quad	0x3fb4214ad362e903              # double 0.078632999999999995
	.quad	0x3fd69a2403148777              # double 0.35315800000000003
	.quad	0x3fc775afaf859429              # double 0.183279
	.quad	0x3fd0ab606b7aa25e              # double 0.26046000000000002
	.quad	0x3fe0f56c93a71151              # double 0.52995899999999996
	.quad	0x3fe3009f623076c0              # double 0.59382599999999996
	.quad	0x3fe2d9ab6d00b45b              # double 0.58907100000000001
	.quad	0x3fdca5a469d7342f              # double 0.44761000000000001
	.quad	0x3fc3ed3953dea466              # double 0.15567700000000001
	.quad	0x3fe145d63886594b              # double 0.539775
	.quad	0x3f9511dffc5479d5              # double 0.020576000000000001
	.quad	0x3fd48a009f623077              # double 0.32092300000000001
	.quad	0x3fe4a2c2374794ea              # double 0.644868
	.quad	0x3fcfcb0c026cc1ca              # double 0.24838399999999999
	.quad	0x3fe97e6f71a7e308              # double 0.79668399999999995
	.quad	0x3fed1d6494d50ebb              # double 0.90983800000000004
	.quad	0x3fac5564b662fdfc              # double 0.055338999999999999
	.quad	0x3fc95c96030c23fb              # double 0.19813800000000001
	.quad	0x3fc7e39f77292c49              # double 0.18663399999999999
	.quad	0x3fd4932d6ece13f5              # double 0.32148300000000002
	.quad	0x3feea50b524399b3              # double 0.95764700000000003
	.quad	0x3fba9e90795f676f              # double 0.103982
	.quad	0x3fdfe73e681a9b8d              # double 0.49848900000000002
	.quad	0x3fdab94d94078961              # double 0.41755999999999999
	.quad	0x3fe9a0ad8a11665a              # double 0.80086400000000002
	.quad	0x3fc672862f5989df              # double 0.17537
	.quad	0x3fec1081c2e33eff              # double 0.87701499999999999
	.quad	0x3fd8f4b61fe21d97              # double 0.389936
	.quad	0x3fc03f2d3c792d13              # double 0.12692800000000001
	.quad	0x3fe012ad81adea89              # double 0.50227999999999995
	.quad	0x3fef6ab367a0f909              # double 0.98177499999999995
	.quad	0x3fd1ebaf102363b2              # double 0.28000999999999998
	.quad	0x3fd9558ea7ce0fc3              # double 0.395847
	.quad	0x3fc707bfe7e1fc09              # double 0.179924
	.quad	0x3fe6b354c122749f              # double 0.70939099999999999
	.quad	0x3fe0ecce5f7403de              # double 0.52890700000000002
	.quad	0x3fde6e221c8a7a42              # double 0.47547200000000001
	.quad	0x3fca82d7b634dad3              # double 0.207118
	.quad	0x3fe42e275ab7dc7b              # double 0.63063400000000003
	.quad	0x3fe7bee807bbb624              # double 0.74205399999999999
	.quad	0x3fc494d50ebaade6              # double 0.16079199999999999
	.quad	0x3feb39756c93a711              # double 0.85076399999999996
	.quad	0x3fb1d462c343b70f              # double 0.069647000000000001
	.quad	0x3fd4f9a8cdea033e              # double 0.32773799999999997
	.quad	0x3feab6f5caf2d7f9              # double 0.83483399999999996
	.quad	0x3fe86b0b7c3504c5              # double 0.76306700000000005
	.quad	0x3feb4c100e6afcce              # double 0.85303499999999999
	.quad	0x3feccc5fbf83382e              # double 0.89994799999999997
	.quad	0x3fdc645e4e69f05f              # double 0.44362600000000002
	.quad	0x3fed48f32378ab0d              # double 0.91515500000000005
	.quad	0x3fb29f59ccfaeff6              # double 0.072744000000000003
	.quad	0x3fcac57e23f24d90              # double 0.209152
	.quad	0x3fb425f202107b78              # double 0.078703999999999996
	.quad	0x3fb56fda836eb4ea              # double 0.083738000000000006
	.quad	0x3fe0a3c64345cfee              # double 0.51999200000000001
	.quad	0x3fcb5e0f7fcfc3f8              # double 0.213808
	.quad	0x3fea1bae46cfc82a              # double 0.81587900000000002
	.quad	0x3fdf4d22c881e471              # double 0.48908299999999999
	.quad	0x3f93d6c7219220ff              # double 0.019373999999999999
	.quad	0x3fe2343526527a20              # double 0.56887299999999996
	.quad	0x3fe7a3db3bfb58d1              # double 0.73875199999999996
	.quad	0x3fdfe060fe47991c              # double 0.49807000000000001
	.quad	0x3fa8b2c83ec892ab              # double 0.048238999999999997
	.quad	0x3fed89c1b54195cd              # double 0.92306600000000005
	.quad	0x3fe0331e3a7daa50              # double 0.50624000000000002
	.quad	0x3fd94302b40f66a5              # double 0.39471499999999998
	.quad	0x3fe6153dea465a57              # double 0.69009299999999996
	.quad	0x3fc3f090f733a8a4              # double 0.155779
	.quad	0x3fe37b80a9de8b3b              # double 0.60882599999999998
	.quad	0x3fc5018611fd5886              # double 0.164109
	.quad	0x3fdb028a1dfb938a              # double 0.42203000000000002
	.quad	0x3fe2bcdbbe0157ef              # double 0.58555400000000002
	.quad	0x3fe09ed7c6fbd274              # double 0.51939000000000002
	.quad	0x3fe69294573a7979              # double 0.70539300000000005
	.quad	0x3febb6e503fb3743              # double 0.86607599999999996
	.quad	0x3fce8f96e158750c              # double 0.238757
	.quad	0x3f93ff69014b599b              # double 0.019529000000000001
	.quad	0x3fd1c9f72f76e610              # double 0.27795199999999998
	.quad	0x3fe0ac083126e979              # double 0.52100000000000002
	.quad	0x3feb93fd0d0678c0              # double 0.861815
	.quad	0x3fee8b5aa715831f              # double 0.954511
	.quad	0x3fc99fb1e18efbb1              # double 0.200186
	.quad	0x3fe5548a9bcfd4bf              # double 0.66657
	.quad	0x3fd07d88c1db0143              # double 0.257662
	.quad	0x3fca75360d024702              # double 0.206702
	.quad	0x3fe86523704790b8              # double 0.76234599999999997
	.quad	0x3fe0da059a73b42d              # double 0.52661400000000003
	.quad	0x3fea9a5ebb7739f3              # double 0.83134399999999997
	.quad	0x3fe12f5558212945              # double 0.53702799999999995
	.quad	0x3fe3515054ac29bf              # double 0.60367599999999999
	.quad	0x3fec4b4aec8d5c74              # double 0.88419099999999994
	.quad	0x3fcd4e11dbca9692              # double 0.22894500000000001
	.quad	0x3fdd511dffc5479d              # double 0.45807599999999998
	.quad	0x3fde04ab606b7aa2              # double 0.46903499999999998
	.quad	0x3fe21d9f4d37c137              # double 0.56611599999999995
	.quad	0x3fe8e9a2c669057d              # double 0.77851999999999999
	.quad	0x3fe0d41d8e864021              # double 0.52589300000000005
	.quad	0x3fd30d844d013a93              # double 0.29770000000000002
	.quad	0x3fe70667f90d9d77              # double 0.71953199999999995
	.quad	0x3fb0e6afcce1c582              # double 0.066019999999999995
	.quad	0x3fe04d31769a9110              # double 0.50942299999999996
	.quad	0x3fc28ccdd93c46d8              # double 0.144922
	.quad	0x3f92f0e0a84be404              # double 0.018497
	.quad	0x3fd765e02ea960b7              # double 0.365593
	.quad	0x3fd9a808c8259e1f              # double 0.40088099999999999
	.quad	0x3fefde529bae46d0              # double 0.99588900000000002
	.quad	0x3feed11dffc5479d              # double 0.96302699999999996
	.quad	0x3fc5572580c308ff              # double 0.16672200000000001
	.quad	0x3fe9b0318b934699              # double 0.80275799999999997
	.quad	0x3fdba597d49d7ba6              # double 0.43198199999999998
	.quad	0x3fe603a96d4c33b5              # double 0.68794699999999998
	.quad	0x3fea9a9fbe76c8b4              # double 0.83137499999999997
	.quad	0x3fa2c2374794ea07              # double 0.036637999999999997
	.quad	0x3fce6f587d6f9768              # double 0.23777300000000001
	.quad	0x3fd18f47304039ac              # double 0.27437
	.quad	0x3fe3fbf61aa3f035              # double 0.62450700000000003
	.quad	0x3fb8b3e5753a3ec0              # double 0.096494999999999997
	.quad	0x3fd494f69ca9ef52              # double 0.32159199999999999
	.quad	0x3fefec743201040c              # double 0.997614
	.quad	0x3fe41a77e5eaab04              # double 0.62823099999999998
	.quad	0x3fe6256de33269e0              # double 0.69206900000000005
	.quad	0x3fea7cd67fd3f5b6              # double 0.827739
	.quad	0x3fec3e6601bc98a2              # double 0.88261699999999998
	.quad	0x3fb74f1e4b44a1f1              # double 0.091051000000000007
	.quad	0x3fde210be9424e59              # double 0.47076699999999999
	.quad	0x3fee42b734b51373              # double 0.94564400000000004
	.quad	0x3fbf85a4f00ef135              # double 0.12313300000000001
	.quad	0x3fd2b4289118c198              # double 0.29224600000000001
	.quad	0x3fe8dc0b9991361e              # double 0.77686100000000002
	.quad	0x3fedea8112ba16e8              # double 0.93487600000000004
	.quad	0x3fe1ec7a7c9de050              # double 0.56011699999999998
	.quad	0x3fdcddf43c7d5ed0              # double 0.45104699999999998
	.quad	0x3fe54947064ece9a              # double 0.66519499999999998
	.quad	0x3feb5af4adbc664d              # double 0.85485299999999997
	.quad	0x3fcb9817b95a2941              # double 0.21557899999999999
	.quad	0x3fd51d92b7fe08af              # double 0.32993
	.quad	0x3fc9486f049a9974              # double 0.197523
	.quad	0x3fe5c178705425f2              # double 0.679867
	.quad	0x3febab12d3415b14              # double 0.86463299999999998
	.quad	0x3fe71b4784230fd0              # double 0.72208000000000006
	.quad	0x3fc08427418d690a              # double 0.12903300000000001
	.quad	0x3fe29c2c1b10fd7e              # double 0.58156399999999997
	.quad	0x3fc5891e215336df              # double 0.16824700000000001
	.quad	0x3fb6d1e108c3f3e0              # double 0.089139999999999997
	.quad	0x3feee687f455a7d2              # double 0.96564099999999997
	.quad	0x3fe5f46ed245b292              # double 0.68608800000000003
	.quad	0x3faee978d4fdf3b6              # double 0.060374999999999998
	.quad	0x3fe850d49949e881              # double 0.75986699999999996
	.quad	0x3fe1c280ae104923              # double 0.55499299999999996
	.quad	0x3fe94f4c6e6d9be5              # double 0.79093000000000002
	.quad	0x3fe57225b749adc9              # double 0.670184
	.quad	0x3fe17cb4f1e4b44a              # double 0.54647299999999999
	.quad	0x3fe3b77186551937              # double 0.616143
	.quad	0x3fb072b020c49ba6              # double 0.064250000000000002
	.quad	0x3fe11d798d8a979e              # double 0.53484799999999999
	.quad	0x3fe4405d52c16df4              # double 0.632857
	.quad	0x3fbeef3d3a1d3240              # double 0.120838
	.quad	0x3fefc4d87724fa8b              # double 0.99277899999999996
	.quad	0x3fec6f62f9ca5bd9              # double 0.88859699999999997
	.quad	0x3fcd13be22e5de16              # double 0.22716500000000001
	.quad	0x3fd257603925bb7b              # double 0.28658299999999998
	.quad	0x3fd4c77143393ab4              # double 0.32467299999999999
	.quad	0x3f8b906466b1e5c1              # double 0.013459
	.quad	0x3fed183947496aad              # double 0.90920699999999999
	.quad	0x3f800abf76a2f48c              # double 0.0078329999999999997
	.quad	0x3feda82c6ef3d3a2              # double 0.92677900000000002
	.quad	0x3fe49d0e991ff716              # double 0.64417199999999997
	.quad	0x3fe035dedf1e0829              # double 0.50657600000000003
	.quad	0x3fd74b05b7cfe586              # double 0.363954
	.quad	0x3fef00064a9cdc44              # double 0.96875299999999997
	.quad	0x3fd74f2f123c42a6              # double 0.36420799999999998
	.quad	0x3fc3933e35c5b4ab              # double 0.15293100000000001
	.quad	0x3feae279dd3bafd9              # double 0.84014599999999995
	.quad	0x3f894d940789613d              # double 0.012355
	.quad	0x3fefd3910c2c5e2d              # double 0.99457600000000001
	.quad	0x3feb6672fba01eef              # double 0.85625600000000002
	.quad	0x3fe80bac710cb296              # double 0.75142500000000001
	.quad	0x3fed37e4de3b8a1a              # double 0.91307300000000002
	.quad	0x3fa1148fd9fd36f8              # double 0.033360000000000001
	.quad	0x3fb4e1f7d73c9258              # double 0.081573000000000007
	.quad	0x3feea46e08f21709              # double 0.95757199999999998
	.quad	0x3fab7cbb3c81908e              # double 0.053685999999999998
	.quad	0x3fc9532e7b3d8e00              # double 0.197851
	.quad	0x3fe11001d5c31594              # double 0.53320400000000001
	.quad	0x3fee83e20ccff21b              # double 0.95359899999999997
	.quad	0x3fa625204af92296              # double 0.043251999999999999
	.quad	0x3fe1143e10060781              # double 0.533721
	.quad	0x3fdf8fabda0dfdf0              # double 0.49314400000000003
	.quad	0x3fc45f9df548ecd9              # double 0.159168
	.quad	0x3fd2955f78359bc3              # double 0.29036699999999999
	.quad	0x3fec4426351deefe              # double 0.88331899999999997
	.quad	0x3fe0e60c38f36695              # double 0.52808200000000005
	.quad	0x3fe261cde5d18091              # double 0.57443900000000003
	.quad	0x3fce888b545c78a7              # double 0.238542
	.quad	0x3fd9e1fc08fa7a85              # double 0.404418
	.quad	0x3fc14ce3de6149c7              # double 0.135159
	.quad	0x3fd7f3eccc469510              # double 0.37426300000000001
	.quad	0x3fefaa64c2f837b5              # double 0.98955000000000004
	.quad	0x3fe44f1c3265adda              # double 0.63465700000000003
	.quad	0x3fc8cd29131ec0b5              # double 0.19376099999999999
	.quad	0x3fdec9c0a8d21bc1              # double 0.48106399999999999
	.quad	0x3fea5653c9abb01d              # double 0.82303800000000005
	.quad	0x3fe1d464dc22ab26              # double 0.55717700000000003
	.quad	0x3fbada6612839043              # double 0.104895
	.quad	0x3fc830b178b37004              # double 0.18898599999999999
	.quad	0x3fe7e64f54d1e96c              # double 0.74686399999999997
	.quad	0x3fefecd8dbcec850              # double 0.99766200000000005
	.quad	0x3fdbb9d3cbc48f11              # double 0.43321700000000002
	.quad	0x3fc042bf9830e3ce              # double 0.12703700000000001
	.quad	0x3fba0ad8a116659d              # double 0.101728
	.quad	0x3fc9907d912556d2              # double 0.19972200000000001
	.quad	0x3fe03ea704bc2763              # double 0.50764799999999999
	.quad	0x3fedc8fd9fd36f7e              # double 0.93078499999999997
	.quad	0x3fc96ca46e08f217              # double 0.198628
	.quad	0x3fe6f4b1ee243569              # double 0.71736999999999995
	.quad	0x3feefa658c4bd33d              # double 0.96806599999999998
	.quad	0x3fea6134ce3de615              # double 0.82436600000000004
	.quad	0x3fde32b12d3415b1              # double 0.47184399999999999
	.quad	0x3fe627546d3f9e7c              # double 0.69230100000000006
	.quad	0x3fe66aaf35e310dc              # double 0.70052300000000001
	.quad	0x3fb8b9fdbd2fa0d7              # double 0.096587999999999993
	.quad	0x3fee365881a15550              # double 0.94413400000000003
	.quad	0x3fa35d67ba237cdd              # double 0.037822000000000001
	.quad	0x3fcb369b9d7fd827              # double 0.21260399999999999
	.quad	0x3fd293bc0a06e9ff              # double 0.290267
	.quad	0x3fe2b1209edbf8ba              # double 0.58412200000000003
	.quad	0x3fb0f850df15a4ad              # double 0.066289000000000001
	.quad	0x3fefed6ba8c58687              # double 0.99773199999999995
	.quad	0x3fe0f1bac2df0d41              # double 0.52950799999999998
	.quad	0x3fd76f4384ba0e84              # double 0.36616599999999999
	.quad	0x3fea1b823c85c24c              # double 0.81585799999999997
	.quad	0x3fe5d8969a0ad8a1              # double 0.68268899999999999
	.quad	0x3fe43b1af3a14cec              # double 0.63221499999999997
	.quad	0x3fdb6540cc78e9f7              # double 0.42805500000000002
	.quad	0x3fd0265f0f5a1017              # double 0.25234200000000001
	.quad	0x3fe65edaec4a4096              # double 0.69907900000000001
	.quad	0x3fe509635610adcd              # double 0.65739599999999998
	.quad	0x3fea94c87980f55e              # double 0.83066200000000001
	.quad	0x3fd620f2becedd48              # double 0.34576099999999999
	.quad	0x3fc20685553ef6b6              # double 0.140824
	.quad	0x3fca7980f55de58e              # double 0.20683299999999999
	.quad	0x3fe03e81450efdca              # double 0.50763000000000003
	.quad	0x3fd87774aba38759              # double 0.38229099999999999
	.quad	0x3fd998244e93e1ca              # double 0.39991100000000002
	.quad	0x3fe7815c209246bf              # double 0.734541
	.quad	0x3fea3ba98eda22f7              # double 0.81978300000000004
	.quad	0x3fd21b10fd7e4580              # double 0.28290199999999999
	.quad	0x3fb074751ce28ed6              # double 0.064277000000000001
	.quad	0x3fe4b56323bbc6eb              # double 0.647142
	.quad	0x3fd334a01abd1aa8              # double 0.30008699999999999
	.quad	0x3fcd6113404ea4a9              # double 0.22952500000000001
	.quad	0x3fe4f83be6601bca              # double 0.65530200000000005
	.quad	0x3fe36555c52e72da              # double 0.60611999999999999
	.quad	0x3fb72d3c792d1288              # double 0.090534000000000003
	.quad	0x3fe49960fa15db34              # double 0.64372300000000005
	.quad	0x3fe0eb6177ea1c69              # double 0.52873300000000001
	.quad	0x3fed1b6f5caf2d80              # double 0.90959900000000005
	.quad	0x3fe07609dcf893fb              # double 0.51440900000000001
	.quad	0x3fe446455eaee200              # double 0.63357799999999997
	.quad	0x3fe20da1a93293d1              # double 0.564164
	.quad	0x3fd9719b4dcebfec              # double 0.397559
	.quad	0x3fe4bb645a1cac08              # double 0.64787499999999998
	.quad	0x3fe9bb42cc2d6a9c              # double 0.80410899999999996
	.quad	0x3fe6df00abf76a2f              # double 0.71472199999999997
	.quad	0x3fc4864020817fc7              # double 0.16034699999999999
	.quad	0x3fe2dc22ab25b318              # double 0.58937200000000001
	.quad	0x3fc8ae8e1d6494d5              # double 0.192827
	.quad	0x3fec249e44fa0514              # double 0.87946999999999997
	.quad	0x3fbd6c3fc43b2dd3              # double 0.11493299999999999
	.quad	0x3fe25ffa3b9ae0c1              # double 0.57421599999999995
	.quad	0x3fc9bd8383ad9f0a              # double 0.201096
	.quad	0x3fc0c3f3e0370cdd              # double 0.13098000000000001
	.quad	0x3fe1b7e90ff97247              # double 0.55369999999999997
	.quad	0x3fe37c86cebbba56              # double 0.60895100000000002
	.quad	0x3fe7f22c01e68a0d              # double 0.74831199999999998
	.quad	0x3fde3fc43b2dd378              # double 0.47264200000000001
	.quad	0x3fe5b54195cc857f              # double 0.67837599999999998
	.quad	0x3fb5f2778140dd40              # double 0.085731000000000002
	.quad	0x3fc64934267839ce              # double 0.17410900000000001
	.quad	0x3fe3238b8ae31d71              # double 0.59808899999999998
	.quad	0x3fdee9142b302f73              # double 0.48297600000000002
	.quad	0x3fe511a975afaf86              # double 0.65840600000000005
	.quad	0x3fef23df6db940ff              # double 0.97312900000000002
	.quad	0x3fe65c74751ce28f              # double 0.69878600000000002
	.quad	0x3fe88f9b13165d3a              # double 0.76753000000000005
	.quad	0x3fe55d76683c297c              # double 0.667659
	.quad	0x3fe254046412cf10              # double 0.57275600000000004
	.quad	0x3fe5c16df3f96180              # double 0.67986199999999997
	.quad	0x3fed85ff1d81f106              # double 0.92260699999999995
	.quad	0x3f8274e22a2c2374              # double 0.0090119999999999992
	.quad	0x3fdd8e9f6a93f291              # double 0.46183000000000002
	.quad	0x3fc1d0d8cb07d0af              # double 0.139186
	.quad	0x3fef58c6d612c6ac              # double 0.97958699999999998
	.quad	0x3fd805532617c1be              # double 0.37532500000000002
	.quad	0x3fc1417ca2120e1f              # double 0.13481099999999999
	.quad	0x3fd621682f944242              # double 0.34578900000000001
	.quad	0x3fc7573eab367a10              # double 0.18235000000000001
	.quad	0x3fcbad96a6a0125a              # double 0.21623500000000001
	.quad	0x3fec244c7b02d59d              # double 0.87943099999999996
	.quad	0x3fd24dad31fcd24e              # double 0.285991
	.quad	0x3fc177c88e79aae7              # double 0.13646800000000001
	.quad	0x3fe8234a87e38eb0              # double 0.75430799999999998
	.quad	0x3fe4d5e8d5410f95              # double 0.65111200000000002
	.quad	0x3fc308787485e3da              # double 0.14869599999999999
	.quad	0x3fed8bb2bba98eda              # double 0.92330299999999998
	.quad	0x3fa3198288051c9f              # double 0.037303999999999997
	.quad	0x3fe6ec5f394b7b29              # double 0.71635400000000005
	.quad	0x3fecc128bf3bea92              # double 0.89857900000000002
	.quad	0x3fbf0caa326e1156              # double 0.12128700000000001
	.quad	0x3fd82580c308feac              # double 0.37728899999999999
	.quad	0x3fead02cd39da166              # double 0.83791199999999999
	.quad	0x3fe9accf6be37de9              # double 0.80234499999999997
	.quad	0x3fd698d477bbf940              # double 0.353078
	.quad	0x3fdeb1572580c309              # double 0.479574
	.quad	0x3fc1f3f961804d98              # double 0.14025799999999999
	.quad	0x3fecb1cc96462802              # double 0.89670399999999995
	.quad	0x3feb323dd54da4cf              # double 0.84988300000000006
	.quad	0x3fd9a426bb55ac04              # double 0.400644
	.quad	0x3fec63cfb3311a54              # double 0.88718399999999997
	.quad	0x3fcc523f67f4dbe0              # double 0.22126000000000001
	.quad	0x3fc35fe542e557de              # double 0.151364
	.quad	0x3fe646d3f9e7b80b              # double 0.69614600000000004
	.quad	0x3fc857f3061c79b3              # double 0.19018399999999999
	.quad	0x3fe50711d798d8a9              # double 0.65711299999999995
	.quad	0x3f811f926c7eae5c              # double 0.0083610000000000004
	.quad	0x3fde06a2b1704ff4              # double 0.46915499999999999
	.quad	0x3fe59550ca1cef24              # double 0.67447699999999999
	.quad	0x3fe62684cf0739b0              # double 0.69220199999999998
	.quad	0x3fb664e48626f60e              # double 0.087476999999999999
	.quad	0x3fdd6a3bddfc9ff9              # double 0.45960899999999999
	.quad	0x3fc98cc9a77e5eab              # double 0.19960900000000001
	.quad	0x3fe9e47991bc5586              # double 0.80913999999999997
	.quad	0x3fd5367e414e7ee9              # double 0.331451
	.quad	0x3fdb1d1d4738a3b5              # double 0.42365199999999997
	.quad	0x3fe7efa82e87d2c8              # double 0.74800500000000003
	.quad	0x3fd567dbb16c1e36              # double 0.33446399999999998
	.quad	0x3fb1c51dabe2717a              # double 0.069414000000000003
	.quad	0x3f76d5cfaacd9e84              # double 0.0055750000000000001
	.quad	0x3fe6c73abc947065              # double 0.71182000000000001
	.quad	0x3fd9d56f32bdc26e              # double 0.40365200000000001
	.quad	0x3fe362b8c75c4a84              # double 0.60580100000000003
	.quad	0x3fd0e90bc7b45f18              # double 0.26422400000000001
	.quad	0x3fdc4f8b588e368f              # double 0.442355
	.quad	0x3fedff1950331e3a              # double 0.93738999999999995
	.quad	0x3feff21b3aeee957              # double 0.99830399999999996
	.quad	0x3feabdfd2630ec31              # double 0.83569199999999999
	.quad	0x3fdb65061416377a              # double 0.428041
	.quad	0x3fe9e40639d5e4a4              # double 0.80908500000000005
	.quad	0x3fd84b76f6d76252              # double 0.379606
	.quad	0x3fd645bf26f1dc51              # double 0.34800700000000001
	.quad	0x3fbf686a4ca4f441              # double 0.122687
	.quad	0x3fde5c4651f3e89b              # double 0.47438200000000003
	.quad	0x3fa330f8c64fdb0a              # double 0.037483000000000002
	.quad	0x3fe77a20578e5c4f              # double 0.73365800000000003
	.quad	0x3fd57c73eee52589              # double 0.33572099999999999
	.quad	0x3fc34c016052502f              # double 0.150757
	.quad	0x3fd1d5c31593e5fb              # double 0.27867199999999998
	.quad	0x3fdb244e93e1c9b4              # double 0.424091
	.quad	0x3fe973a9b0681238              # double 0.79536899999999999
	.quad	0x3fc99591cd1c7de5              # double 0.199877
	.quad	0x3fe90a30db6a1e82              # double 0.78249400000000002
	.quad	0x3fbc07570c564f98              # double 0.109487
	.quad	0x3fe319cbee807bbb              # double 0.59689899999999996
	.quad	0x3fc2eb463497b741              # double 0.14780499999999999
	.quad	0x3fd7d9945b6c3761              # double 0.37265500000000001
	.quad	0x3fe0ad2dcb1465e9              # double 0.52114000000000005
	.quad	0x3fd23c297bfa4c62              # double 0.28492200000000001
	.quad	0x3fe547325918a00a              # double 0.664941
	.quad	0x3fe4ebb341e14be0              # double 0.65377200000000002
	.quad	0x3fbb1a8ef77f27fe              # double 0.105874
	.quad	0x3fded7518b0d0edc              # double 0.48189199999999999
	.quad	0x3faf7d955714b9cb              # double 0.061504999999999997
	.quad	0x3fc143e963dc486b              # double 0.134885
	.quad	0x3fb079a2834d26fa              # double 0.064355999999999997
	.quad	0x3fccddf86e3b46fe              # double 0.225524
	.quad	0x3feb32c1f42bb667              # double 0.84994599999999998
	.quad	0x3f8131ec0b567558              # double 0.0083960000000000006
	.quad	0x3fc90563ed0f6274              # double 0.19547700000000001
	.quad	0x3fee26ca03c4b09f              # double 0.94223500000000004
	.quad	0x3fda23c42a66dbd7              # double 0.40843299999999999
	.quad	0x3fe66390c9107faa              # double 0.699654
	.quad	0x3fe352d44dca8e2e              # double 0.60386099999999998
	.quad	0x3fe03474107314cb              # double 0.50640300000000005
	.quad	0x3fe114dd72367e41              # double 0.53379699999999997
	.quad	0x3fd21550ca1cef24              # double 0.282551
	.quad	0x3fda4a72ead9274e              # double 0.41079399999999999
	.quad	0x3fe5417a89331a09              # double 0.66424300000000003
	.quad	0x3fe453f7ced91687              # double 0.63524999999999998
	.quad	0x3fbf31098d477bc0              # double 0.12184200000000001
	.quad	0x3fec19ef954eb13e              # double 0.878166
	.quad	0x3fe203d577963993              # double 0.56296800000000002
	.quad	0x3fec5d8f92af9a8d              # double 0.88642100000000001
	.quad	0x3f9ebcc6c54bcf0b              # double 0.030016999999999999
	.quad	0x3fe51d3aa369fcf4              # double 0.65981800000000002
	.quad	0x3fe7cba0e8427419              # double 0.74360700000000002
	.quad	0x3fe927d028a1dfb9              # double 0.78610999999999998
	.quad	0x3feb0856e696a26e              # double 0.84476799999999996
	.quad	0x3fe130a6fc58ab93              # double 0.53718900000000003
	.quad	0x3fe6f5c8d9f9053a              # double 0.717503
	.quad	0x3feabcad9ad85dfb              # double 0.83553200000000005
	.quad	0x3fc7e6149c6f36f0              # double 0.18670900000000001
	.quad	0x3fd21b8aa00192a7              # double 0.28293099999999999
	.quad	0x3f6695d91ab8e8ea              # double 0.0027569999999999999
	.quad	0x3f9a9e6eeb702603              # double 0.025995000000000001
	.quad	0x3fdd165d3996fa83              # double 0.45449000000000001
	.quad	0x3febd2502eec7c95              # double 0.86942299999999995
	.quad	0x3fdfd466f5019f3c              # double 0.49733899999999998
	.quad	0x3fdd6fc158fb43d9              # double 0.45994600000000002
	.quad	0x3fd305ab3aabcd79              # double 0.29722100000000001
	.quad	0x3fc48869c66d373b              # double 0.160413
	.quad	0x3fec6429e0a41a26              # double 0.88722699999999999
	.quad	0x3fdfb47c73eee526              # double 0.49539100000000003
	.quad	0x3fef5013a92a3055              # double 0.97852499999999997
	.quad	0x3fdf394317acc4f0              # double 0.48787000000000003
	.quad	0x3fea355ac03ff690              # double 0.81901299999999999
	.quad	0x3fe4bcf0b6b6e0d2              # double 0.64806399999999997
	.quad	0x3fe4db1c864883fd              # double 0.65174699999999997
	.quad	0x3feb947064ece9a3              # double 0.86187000000000002
	.quad	0x3fd3e26d4801f751              # double 0.310695
	.quad	0x3fea4c426351def0              # double 0.82180900000000001
	.quad	0x3fee1ffd60e94ee4              # double 0.94140500000000004
	.quad	0x3fee367c286f8ad2              # double 0.94415099999999996
	.quad	0x3fa9b8023a6ce358              # double 0.050231999999999999
	.quad	0x3fbfabfb9bed30f0              # double 0.12371799999999999
	.quad	0x3fe312817763e4ac              # double 0.59600900000000001
	.quad	0x3fe3c450268900c5              # double 0.61771399999999999
	.quad	0x3fe7a8954a7f8013              # double 0.73932900000000001
	.quad	0x3fe5a4228997c3d7              # double 0.67628600000000005
	.quad	0x3fe8ac2bd7f51efb              # double 0.77101699999999995
	.quad	0x3fe8b1960fa15db3              # double 0.77167799999999998
	.quad	0x3fb7b3d8e0008638              # double 0.092588000000000004
	.quad	0x3fe59e29b6b2af14              # double 0.67555699999999996
	.quad	0x3fb5d8d79d0a6762              # double 0.085339999999999999
	.quad	0x3fceb6a619da9c99              # double 0.239949
	.quad	0x3fead8e64b231401              # double 0.83897699999999997
	.quad	0x3fe500713f077ccc              # double 0.656304
	.quad	0x3fdba7008a697aee              # double 0.43206800000000001
	.quad	0x3fe2999567dbb16c              # double 0.58124799999999999
	.quad	0x3feda19eb6390c91              # double 0.925979
	.quad	0x3f81b4fe79ee02a7              # double 0.0086459999999999991
	.quad	0x3feff8ceb356da01              # double 0.99912199999999995
	.quad	0x3fcef1ed17c5ef63              # double 0.241758
	.quad	0x3fefef49cf56eac8              # double 0.99795999999999995
	.quad	0x3fe0acf7446f9b99              # double 0.52111399999999997
	.quad	0x3feed60c7c0f4517              # double 0.96362899999999995
	.quad	0x3febafd5454152b1              # double 0.86521400000000004
	.quad	0x3fec26937d1fe64f              # double 0.87970899999999996
	.quad	0x3feb6fb6dca07f67              # double 0.85738700000000001
	.quad	0x3fdc51a86940357a              # double 0.44248399999999999
	.quad	0x3fd4bb4916ca46e1              # double 0.32393100000000002
	.quad	0x3fedb9fdbd2fa0d7              # double 0.92895399999999995
	.quad	0x3fc62cc2d6a9c561              # double 0.17324100000000001
	.quad	0x3fdcf7dfa00e27e1              # double 0.452629
	.quad	0x3fd431832fcac8e7              # double 0.31552200000000002
	.quad	0x3fe604c48adeebb3              # double 0.68808199999999997
	.quad	0x3feb245f5ad96a6a              # double 0.84819
	.quad	0x3fbacfc829cfdd23              # double 0.10473300000000001
	.quad	0x3fd54a9cdc443915              # double 0.332679
	.quad	0x3fe0018e757928e1              # double 0.50019000000000002
	.quad	0x3fe7837d63022dd8              # double 0.73480100000000004
	.quad	0x3fd3c3504c48adef              # double 0.30879600000000001
	.quad	0x3fd8d3ed527e5215              # double 0.38793499999999997
	.quad	0x3fd2709310129cbb              # double 0.28812100000000002
	.quad	0x3fcd44241c3efae8              # double 0.22864200000000001
	.quad	0x3fe0b5286b59146e              # double 0.52211399999999997
	.quad	0x3fce14d72799a1fd              # double 0.235011
	.quad	0x3febeb9e492bc2fc              # double 0.87251199999999995
	.quad	0x3fed4898f605ab3b              # double 0.91511200000000004
	.quad	0x3fef5360d0247022              # double 0.97892800000000002
	.quad	0x3faff75968512232              # double 0.062434000000000003
	.quad	0x3fbfedd8b60f1b26              # double 0.124723
	.quad	0x3fe0fe69270b06c4              # double 0.53105599999999997
	.quad	0x3fd6390c9107faa0              # double 0.34723199999999999
	.quad	0x3fd597e132b55ef2              # double 0.337395
	.quad	0x3fd045cbbc2b94d9              # double 0.25425999999999999
	.quad	0x3fdccf312b1b36bd              # double 0.45014599999999999
	.quad	0x3fdb59e6256366d8              # double 0.42736200000000002
	.quad	0x3fc98201cd5f99c4              # double 0.19928000000000001
	.quad	0x3fd748626f60e0eb              # double 0.36379299999999998
	.quad	0x3fe944827b6fe2e7              # double 0.78961300000000001
	.quad	0x3fe061975f2cb641              # double 0.51191299999999995
	.quad	0x3fdeb4a2339c0ebf              # double 0.47977500000000001
	.quad	0x3fe03a42f1ed17c6              # double 0.50711200000000001
	.quad	0x3fe83de6149c6f37              # double 0.75755600000000001
	.quad	0x3fda7e9d94d0dcfd              # double 0.41397800000000001
	.quad	0x3fec20fb224aada3              # double 0.87902599999999997
	.quad	0x3fd20485a0be5109              # double 0.281526
	.quad	0x3fd29b8887229e90              # double 0.29074299999999997
	.quad	0x3fc4230fcf80dc33              # double 0.15731999999999999
	.quad	0x3fdb1276fb09203a              # double 0.42300199999999999
	.quad	0x3fccb399f5dfeb8e              # double 0.22423100000000001
	.quad	0x3fd6c8c5004fb118              # double 0.35600399999999999
	.quad	0x3fec1a6f826edaa9              # double 0.87822699999999998
	.quad	0x3fe8316c1e364bec              # double 0.75603299999999995
	.quad	0x3f9137b07075b3e1              # double 0.016813999999999999
	.quad	0x3fdb3836a832b991              # double 0.42530600000000002
	.quad	0x3fe18da5daf07bfe              # double 0.54854099999999995
	.quad	0x3fe1daab47410731              # double 0.55794299999999997
	.quad	0x3fefa76d97b30f8c              # double 0.98918799999999995
	.quad	0x3fe4294141e9af5c              # double 0.63003600000000004
	.quad	0x3fe271a9fbe76c8b              # double 0.57637499999999997
	.quad	0x3fd0505d0fa58f71              # double 0.25490499999999999
	.quad	0x3fb99c17225b749b              # double 0.100038
	.quad	0x3fe5bcbc48f10a9a              # double 0.67928900000000003
	.quad	0x3fe098fa376922d9              # double 0.51867399999999997
	.quad	0x3fdd37de939eadd6              # double 0.45653500000000002
	.quad	0x3fe0e87d2c7b890d              # double 0.52837999999999996
	.quad	0x3fb89752977c88e8              # double 0.096059000000000005
	.quad	0x3fe0b5350092ccf7              # double 0.52212000000000003
	.quad	0x3fca6a337a80cf9e              # double 0.20636599999999999
	.quad	0x3feb8a265f0f5a10              # double 0.86061399999999999
	.quad	0x3fe4dc7abfb9bed3              # double 0.65191399999999999
	.quad	0x3fe25d894812be49              # double 0.57391800000000004
	.quad	0x3fd42452c59fb1e2              # double 0.31471700000000002
	.quad	0x3f93bfb58d1526d9              # double 0.019286000000000001
	.quad	0x3fdabc1acde19fc3              # double 0.41773100000000002
	.quad	0x3fe0d271bcdbbe01              # double 0.52568899999999996
	.quad	0x3fe10e1f7d73c925              # double 0.53297399999999995
	.quad	0x3fc25fc7e6b3fea0              # double 0.14354800000000001
	.quad	0x3fa1be09bb6aa4ba              # double 0.034653000000000003
	.quad	0x3fee85532617c1be              # double 0.95377500000000004
	.quad	0x3fdce5321e603d57              # double 0.45148899999999997
	.quad	0x3fec71bac2df0d41              # double 0.88888299999999998
	.quad	0x3fed5dfa871a3b15              # double 0.91772200000000004
	.quad	0x3f8f43c7d5ed06ff              # double 0.015266
	.quad	0x3fd6890d5a5b9629              # double 0.35211500000000001
	.quad	0x3fdad3c36113404f              # double 0.41917500000000002
	.quad	0x3fe0e8c8abd5dc40              # double 0.528416
	.quad	0x3fe2566adb402d17              # double 0.57304900000000003
	.quad	0x3fbe7ded6ba8c587              # double 0.11910900000000001
	.quad	0x3fc653b0813cab82              # double 0.174429
	.quad	0x3fc74ccab3edd8b6              # double 0.182031
	.quad	0x3fef2d05f2884838              # double 0.97424599999999994
	.quad	0x3fdbb71327243138              # double 0.43304900000000002
	.quad	0x3f829802c0a4a05e              # double 0.0090790000000000003
	.quad	0x3feac6b26bf8769f              # double 0.83675500000000003
	.quad	0x3fe0f11d798d8a98              # double 0.52943300000000004
	.quad	0x3fd0a5e785b5b707              # double 0.26012600000000002
	.quad	0x3fafca643cc07aaf              # double 0.062091
	.quad	0x3fb00ecfa69be09c              # double 0.062726000000000004
	.quad	0x3fe98ea9e6eeb702              # double 0.79866499999999996
	.quad	0x3f955475a31a4bdc              # double 0.020830000000000001
	.quad	0x3fd371da37ef5a96              # double 0.30382399999999998
	.quad	0x3fda6ebd4cfd08d5              # double 0.41300900000000001
	.quad	0x3fe3c193b3a68b1a              # double 0.61738000000000004
	.quad	0x3fd9e23af31b152f              # double 0.40443299999999999
	.quad	0x3fe7e9984a0e410b              # double 0.74726499999999996
	.quad	0x3fe6c729f59ccfaf              # double 0.711812
	.quad	0x3fd7adfb506dd69d              # double 0.36999399999999999
	.quad	0x3fc1df090f733a8a              # double 0.13961899999999999
	.quad	0x3fb0f27bb2fec56d              # double 0.066199999999999995
	.quad	0x3fd8c7325918a00a              # double 0.387158
	.quad	0x3fc557eed45e9186              # double 0.16674600000000001
	.quad	0x3fea90470a808c82              # double 0.83011199999999996
	.quad	0x3fe9aff6d330941d              # double 0.80273000000000005
	.quad	0x3fb9653c9abb01c9              # double 0.099200999999999998
	.quad	0x3fe896dd26b723ee              # double 0.76841599999999999
	.quad	0x3fd71975f2cb6417              # double 0.360929
	.quad	0x3febe2d40aaeafab              # double 0.87143899999999996
	.quad	0x3feee06317268d33              # double 0.96489100000000005
	.quad	0x3fe661ae70c1333c              # double 0.69942400000000005
	.quad	0x3feaa456f75d9a0f              # double 0.832561
	.quad	0x3fe90def416bdb1a              # double 0.78295099999999995
	.quad	0x3fc3160956c0d6f5              # double 0.14910999999999999
	.quad	0x3fda83dff3f0fe04              # double 0.41429899999999997
	.quad	0x3fdc0e51d25aab47              # double 0.43837399999999999
	.quad	0x3fd8b90214ad362f              # double 0.38629200000000002
	.quad	0x3fe1eba493c89f41              # double 0.56001500000000004
	.quad	0x3fe6d34df04ddb55              # double 0.71329399999999998
	.quad	0x3fdbe9dd7ecbb7fa              # double 0.43614900000000001
	.quad	0x3fee5698fe69270b              # double 0.948071
	.quad	0x3fc7d15f02c4d65e              # double 0.18607699999999999
	.quad	0x3fb5d2bf5515054b              # double 0.085247000000000003
	.quad	0x3fef1aa821f2990f              # double 0.97200399999999997
	.quad	0x3fecd55a3a08398a              # double 0.90104399999999996
	.quad	0x3feb053c148344c3              # double 0.84438899999999995
	.quad	0x3fe73854046412cf              # double 0.72562599999999999
	.quad	0x3fc530e7ff583a54              # double 0.16555500000000001
	.quad	0x3fd218f3eccc4695              # double 0.282773
	.quad	0x3fd3c38b04ab606b              # double 0.30880999999999997
	.quad	0x3fed561b2a27f1b7              # double 0.91676100000000005
	.quad	0x3fe6f8c21e1d2179              # double 0.717866
	.quad	0x3fef6ec5b078d930              # double 0.98227200000000003
	.quad	0x3feb23033a4723ab              # double 0.848024
	.quad	0x3fe7e920c069e7fb              # double 0.74720799999999998
	.quad	0x3fe3c957cd466f50              # double 0.61832799999999999
	.quad	0x3fc24628027d88c2              # double 0.142766
	.quad	0x3fd2241c3efae792              # double 0.28345399999999998
	.quad	0x3fd6b23dd54da4cf              # double 0.35462900000000003
	.quad	0x3fd08adab9f559b4              # double 0.25847500000000001
	.quad	0x3fe61dba908a265f              # double 0.69112899999999999
	.quad	0x3fdb0e5a35d67ba2              # double 0.42275099999999999
	.quad	0x3fcb3e5fb71fbc5e              # double 0.212841
	.quad	0x3fe9814d72799a20              # double 0.79703400000000002
	.quad	0x3fbbf9e7b80a9de9              # double 0.109282
	.quad	0x3fe5f66e86c6583f              # double 0.68633200000000005
	.quad	0x3feae310dbf0563f              # double 0.84021800000000002
	.quad	0x3fd7795b35b0bbf5              # double 0.366782
	.quad	0x3fe11c9d5a187a4a              # double 0.53474299999999997
	.quad	0x3fc6795f676ea423              # double 0.17557900000000001
	.quad	0x3fe548c5004fb118              # double 0.66513299999999997
	.quad	0x3fd2d1fa333764f1              # double 0.29406599999999999
	.quad	0x3fe557e45803cd14              # double 0.66697899999999999
	.quad	0x3fde25247cb70ac4              # double 0.47101700000000002
	.quad	0x3fee3a1f4b1ee243              # double 0.94459499999999996
	.quad	0x3fb58d8a979e16d7              # double 0.084191000000000002
	.quad	0x3fed45bd0e12e83a              # double 0.91476299999999999
	.quad	0x3fe7d29dc725c3df              # double 0.74446000000000001
	.quad	0x3feb9dcd7060bb2c              # double 0.86301300000000003
	.quad	0x3fea2f9ebe9c8861              # double 0.81831299999999996
	.quad	0x3feb88787485e3da              # double 0.86040899999999998
	.quad	0x3fe61c9f72f76e61              # double 0.690994
	.quad	0x3fd6f2b239a38fbd              # double 0.35856300000000002
	.quad	0x3f96b2f23033a472              # double 0.022166999999999999
	.quad	0x3fda9314445aa2e4              # double 0.41522700000000001
	.quad	0x3fe613404ea4a8c1              # double 0.68984999999999996
	.quad	0x3fc09129888f861a              # double 0.12942999999999999
	.quad	0x3fb106bbdbe3c105              # double 0.066508999999999999
	.quad	0x3fe8f23ee1bd1eda              # double 0.77957100000000001
	.quad	0x3fce856605ee568a              # double 0.23844599999999999
	.quad	0x3fc651e321a2e7f7              # double 0.174374
	.quad	0x3fd28cb4aec8d5c7              # double 0.28983799999999998
	.quad	0x3fecca85caafbc1b              # double 0.89972200000000002
	.quad	0x3fe0c297bfa4c61e              # double 0.52375400000000005
	.quad	0x3fe3c5c13fd0d068              # double 0.61789000000000005
	.quad	0x3feafbc1acde19fc              # double 0.84323199999999998
	.quad	0x3fd1f87f023e9ea1              # double 0.28079199999999999
	.quad	0x3fd4b42cc2d6a9c5              # double 0.32349699999999998
	.quad	0x3fe0b22d0e560419              # double 0.52175000000000005
	.quad	0x3fdbe957470eb24a              # double 0.43611699999999998
	.quad	0x3fc5052934acaff7              # double 0.16422
	.quad	0x3fe1979bfdf7e804              # double 0.54975700000000005
	.quad	0x3fe63022dd7a99fa              # double 0.69337599999999999
	.quad	0x3fce1b3aeee95747              # double 0.235206
	.quad	0x3fe5bc18b502abac              # double 0.67921100000000001
	.quad	0x3fe29a415f45e0b5              # double 0.58133000000000001
	.quad	0x3feca26e5471715c              # double 0.89482799999999995
	.quad	0x3fe271b0468448cf              # double 0.57637799999999995
	.quad	0x3fb5393250b5243a              # double 0.082904000000000005
	.quad	0x3fca3f811f4f50a0              # double 0.205063
	.quad	0x3fd374afd5454153              # double 0.30399700000000002
	.quad	0x3fd7936c58eeae9f              # double 0.36837300000000001
	.quad	0x3fece1565c2d2780              # double 0.90250699999999995
	.quad	0x3fc81700cd855971              # double 0.18820200000000001
	.quad	0x3fe67fe2a3cea6c2              # double 0.70311100000000004
	.quad	0x3fd9bae03b3e9a70              # double 0.40203100000000003
	.quad	0x3fef30f8c64fdb0a              # double 0.97472800000000004
	.quad	0x3fe5089e34330d74              # double 0.65730200000000005
	.quad	0x3fd8298cc144028e              # double 0.37753599999999998
	.quad	0x3fb96a161e4f7660              # double 0.099275000000000002
	.quad	0x3fed7bd05af6c69b              # double 0.92136399999999996
	.quad	0x3fd239cd8127b2cc              # double 0.28477799999999998
	.quad	0x3feb11c6d1e108c4              # double 0.84592
	.quad	0x3fd489ce4a7b4e55              # double 0.320911
	.quad	0x3fe67e34b945308c              # double 0.70290600000000003
	.quad	0x3fdf50dae3e6c4c6              # double 0.48931000000000002
	.quad	0x3feea60913a4f872              # double 0.95776799999999995
	.quad	0x3fc4a875d56f32be              # double 0.16139100000000001
	.quad	0x3fe1f290abb44e51              # double 0.56086000000000003
	.quad	0x3fe90a63305100a4              # double 0.78251800000000004
	.quad	0x3fc709f1f14983d8              # double 0.17999100000000001
	.quad	0x3fdab395c4220360              # double 0.417211
	.quad	0x3fed27e0ef99806f              # double 0.91111799999999998
	.quad	0x3f9f53c579f23465              # double 0.030592999999999999
	.quad	0x3fe95f02c4d65e46              # double 0.792848
	.quad	0x3fc51526d8b1dd5d              # double 0.16470799999999999
	.quad	0x3fe760eb67c286f9              # double 0.73058100000000004
	.quad	0x3fe5b0a915379fa9              # double 0.67781499999999995
	.quad	0x3fb053c148344c38              # double 0.063778000000000001
	.quad	0x3fe7b6d655e28aa4              # double 0.74106899999999998
	.quad	0x3fe31422ccb3a259              # double 0.59620799999999996
	.quad	0x3fe966e653868fd2              # double 0.79381100000000004
	.quad	0x3fea5fd2630ec311              # double 0.82419699999999996
	.quad	0x3fe257b2031ceaf2              # double 0.57320499999999996
	.quad	0x3febb4245f5ad96a              # double 0.86573999999999995
	.quad	0x3fd7cefed634549b              # double 0.37200899999999998
	.quad	0x3fed3a8826aa8eb4              # double 0.91339499999999995
	.quad	0x3fe5403ff69014b6              # double 0.66409300000000004
	.quad	0x3fd23076c050bd88              # double 0.28420800000000002
	.quad	0x3fce06748e475600              # double 0.234572
	.quad	0x3fc088b545c78a6e              # double 0.12917200000000001
	.quad	0x3fea74a558ea7ce1              # double 0.826739
	.quad	0x3fd1362e90364389              # double 0.268932
	.quad	0x3fc277d523b3636f              # double 0.14428199999999999
	.quad	0x3fceb74ddf86e3b4              # double 0.23996899999999999
	.quad	0x3fef73dc054ef45a              # double 0.98289300000000002
	.quad	0x3f7375c8d9f9053a              # double 0.004751
	.quad	0x3fe60e8427418d69              # double 0.689272
	.quad	0x3fde29888f861a61              # double 0.47128500000000001
	.quad	0x3fc1a7546d3f9e7c              # double 0.13791900000000001
	.quad	0x3fd6f7121ab4b72c              # double 0.35882999999999998
	.quad	0x3fc5ceb78897e996              # double 0.17037099999999999
	.quad	0x3fed23810e8858ff              # double 0.91058399999999995
	.quad	0x3fd23aa79bbadc0a              # double 0.28483000000000003
	.quad	0x3fea0288051c9f73              # double 0.812809
	.quad	0x3fc5efae7924af0c              # double 0.171377
	.quad	0x3fe4c3bb40b34e77              # double 0.64889300000000005
	.quad	0x3fda98958d9b5e96              # double 0.41556300000000002
	.quad	0x3fe193b7d84901d2              # double 0.54928200000000005
	.quad	0x3fc91e4b44a1f080              # double 0.19623699999999999
	.quad	0x3fe4e36f3b213e3e              # double 0.65276299999999998
	.quad	0x3fc17e5eaab04253              # double 0.13666900000000001
	.quad	0x3fcfa597d49d7ba6              # double 0.24724099999999999
	.quad	0x3fd1b0ab2e1693c0              # double 0.27640799999999999
	.quad	0x3fde43dccea28fe2              # double 0.47289199999999998
	.quad	0x3fc0a14057082492              # double 0.12992100000000001
	.quad	0x3fed58f0c77dd873              # double 0.91710700000000001
	.quad	0x3fdeb9841aac53b1              # double 0.48007300000000003
	.quad	0x3fec09f83be6601c              # double 0.87621700000000002
	.quad	0x3fd1b70ac3a860dd              # double 0.27679700000000002
	.quad	0x3fcf9fd36f7e3d1d              # double 0.24706500000000001
	.quad	0x3fbc1b54195cc858              # double 0.109792
	.quad	0x3fafa8f7db6e5040              # double 0.061836000000000002
	.quad	0x3fdeb2a27f1b6912              # double 0.479653
	.quad	0x3fec91a543f1c758              # double 0.89277899999999999
	.quad	0x3fc917720c8cd63d              # double 0.19602800000000001
	.quad	0x3fca9595feda6613              # double 0.20769000000000001
	.quad	0x3fe81e6687f455a8              # double 0.75371100000000002
	.quad	0x3fd73a7546d3f9e8              # double 0.36294300000000002
	.quad	0x3fee3b55ac03ff69              # double 0.944743
	.quad	0x3fb9f3c70c996b76              # double 0.10137599999999999
	.quad	0x3fe7b56b87379746              # double 0.740896
	.quad	0x3fdbd12018a43bb4              # double 0.434639
	.quad	0x3fd621fafc8b007a              # double 0.34582400000000002
	.quad	0x3fdd7c243dccea29              # double 0.460702
	.quad	0x3febcfd6d7e889c2              # double 0.86912100000000003
	.quad	0x3fcb924af0bf1a5d              # double 0.21540200000000001
	.quad	0x3fed38fffbce4218              # double 0.91320800000000002
	.quad	0x3fe0468661ae70c1              # double 0.50860899999999998
	.quad	0x3fd6a2ec28b2a6b1              # double 0.35369400000000001
	.quad	0x3fb3201040bfe3b0              # double 0.074707999999999997
	.quad	0x3fef4e075f6fd220              # double 0.978275
	.quad	0x3fe4d4f5903a7547              # double 0.65099600000000002
	.quad	0x3fdb685122318330              # double 0.42824200000000001
	.quad	0x3f88090b417ca212              # double 0.011736
	.quad	0x3fee2c3009b30729              # double 0.94289400000000001
	.quad	0x3fd694a2b9d3cbc5              # double 0.35282200000000002
	.quad	0x3fedeb4c7f349386              # double 0.93497300000000005
	.quad	0x3fbe7f4dbdf8f473              # double 0.11913
	.quad	0x3fe21975f2cb6417              # double 0.565608
	.quad	0x3fe83a237cdcca71              # double 0.75709700000000002
	.quad	0x3fe033700474d9c7              # double 0.50627900000000003
	.quad	0x3fed95dd4c76d118              # double 0.92454400000000003
	.quad	0x3fb3eaf6837f7be1              # double 0.077803999999999998
	.quad	0x3fe4e43cc07aaef3              # double 0.65286100000000002
	.quad	0x3fd54b662fdfc19c              # double 0.33272699999999999
	.quad	0x3fe0f9af1886df83              # double 0.53047900000000003
	.quad	0x3fe8d3d859c8c932              # double 0.77585999999999999
	.quad	0x3fc55a31a4bdba0a              # double 0.16681499999999999
	.quad	0x3fc6394face67d78              # double 0.173624
	.quad	0x3fe77cd67fd3f5b6              # double 0.733989
	.quad	0x3fbe76640a6b93cd              # double 0.118994
	.quad	0x3faf6145953586cb              # double 0.061289000000000003
	.quad	0x3fc989d6adf71eb0              # double 0.199519
	.quad	0x3fd673eee5258927              # double 0.35082600000000003
	.quad	0x3fc1313be22e5de1              # double 0.13431499999999999
	.quad	0x3fd55b4245f5ad97              # double 0.33369500000000002
	.quad	0x3fcc0c308feac42f              # double 0.21912200000000001
	.quad	0x3fdeff9f87f023ea              # double 0.484352
	.quad	0x3fb22eb1c432ca58              # double 0.071025000000000005
	.quad	0x3fd6687f455a7d24              # double 0.35012799999999999
	.quad	0x3fd94da9003eea21              # double 0.39536500000000002
	.quad	0x3fd68dac258d5843              # double 0.35239700000000002
	.quad	0x3fe4239c51dabe27              # double 0.62934699999999999
	.quad	0x3fb8c4cdfaca361a              # double 0.096753000000000005
	.quad	0x3fed0b49e01de269              # double 0.90762799999999999
	.quad	0x3fbcd8ba40d90e24              # double 0.112682
	.quad	0x3fde83d790752daa              # double 0.47679700000000003
	.quad	0x3fef8e8c8abd5dc4              # double 0.98615099999999999
	.quad	0x3fe5b00bcbe61d00              # double 0.67774000000000001
	.quad	0x3fe5e7ab7564302b              # double 0.68452999999999997
	.quad	0x3fe84bab649d388b              # double 0.75923700000000005
	.quad	0x3fe7d3d859c8c932              # double 0.74460999999999999
	.quad	0x3fe7a2a2c2374795              # double 0.73860300000000001
	.quad	0x3fd673929ed3953e              # double 0.350804
	.quad	0x3fec54ae429e0a42              # double 0.88533700000000004
	.quad	0x3fe2da89b951c5c5              # double 0.58917699999999995
	.quad	0x3fd836262cba732e              # double 0.378305
	.quad	0x3fa0efdc9c4da900              # double 0.033079999999999998
	.quad	0x3fb7709b738e6d16              # double 0.091562000000000004
	.quad	0x3fd728f190d173fb              # double 0.36187399999999997
	.quad	0x3fd0acf7446f9b99              # double 0.26055699999999998
	.quad	0x3fc164388ebcc6c5              # double 0.13587099999999999
	.quad	0x3fa80064a9cdc444              # double 0.046878000000000003
	.quad	0x3fdae13f4a98aa86              # double 0.41999799999999998
	.quad	0x3fd51372a38b8ae3              # double 0.32931199999999999
	.quad	0x3fd3991361dc93ea              # double 0.30621799999999999
	.quad	0x3fd4f2f555821294              # double 0.32732899999999998
	.quad	0x3fefa9aa1d755bcd              # double 0.98946100000000003
	.quad	0x3fd010060780fdc1              # double 0.25097799999999998
	.quad	0x3fea2cb20fb224ab              # double 0.81795600000000002
	.quad	0x3fe03f61aa3f034b              # double 0.50773699999999999
	.quad	0x3fcf7f498c3b0c46              # double 0.24607200000000001
	.quad	0x3fe6e4a9cdc44391              # double 0.71541299999999997
	.quad	0x3fe6d2220bc382a1              # double 0.71315099999999998
	.quad	0x3fbfe2f7b17ce52e              # double 0.124557
	.quad	0x3fd4bf83382e44b7              # double 0.324189
	.quad	0x3fec641f644955b4              # double 0.88722199999999995
	.quad	0x3feb5816aceaaf36              # double 0.85450300000000001
	.quad	0x3fd338fffbce4218              # double 0.30035400000000001
	.quad	0x3fce4284dfce3151              # double 0.236405
	.quad	0x3fea79fa97e132b5              # double 0.82738999999999996
	.quad	0x3fe2e28cbd1244a6              # double 0.59015499999999999
	.quad	0x3fe2817763e4abe7              # double 0.57830400000000004
	.quad	0x3fd0ff972474538f              # double 0.2656
	.quad	0x3fe6a14cec41dd1a              # double 0.70718999999999999
	.quad	0x3fecaab25b317efe              # double 0.89583699999999999
	.quad	0x3fe2b311a543f1c7              # double 0.58435899999999996
	.quad	0x3fd737824d4cb9ed              # double 0.362763
	.quad	0x3fdc5b5fa22706d5              # double 0.443077
	.quad	0x3fe4a7221858bc5a              # double 0.64540200000000003
	.quad	0x3fdfd716d2aa5c5f              # double 0.49750299999999997
	.quad	0x3fda212d77318fc5              # double 0.408275
	.quad	0x3fd02fc69728a611              # double 0.25291599999999997
	.quad	0x3fdd516db0dd82fd              # double 0.45809499999999997
	.quad	0x3fc2286f8ad2567a              # double 0.14185900000000001
	.quad	0x3fef15a07b352a84              # double 0.97138999999999997
	.quad	0x3fc4228997c3d684              # double 0.157304
	.quad	0x3fee82773e24febd              # double 0.953426
	.quad	0x3f92fba01eeed890              # double 0.018537999999999999
	.quad	0x3fe8b0d51f81a587              # double 0.77158599999999999
	.quad	0x3fef460029f16b12              # double 0.97729500000000002
	.quad	0x3fed9d883ba3443d              # double 0.92547999999999997
	.quad	0x3fe5ab324851a869              # double 0.67714799999999997
	.quad	0x3fe339d7fd82773e              # double 0.60081099999999998
	.quad	0x3fe91496249a133c              # double 0.78376299999999998
	.quad	0x3fedd330941c8217              # double 0.93203000000000003
	.quad	0x3fd972e6a76965f5              # double 0.39763799999999999
	.quad	0x3fd66512a94ff002              # double 0.34991899999999998
	.quad	0x3fde7ac3eb7cbb3d              # double 0.47624300000000003
	.quad	0x3fd9f4906034f3fe              # double 0.40555200000000002
	.quad	0x3f929cfdd2285660              # double 0.018176999999999999
	.quad	0x3f9b9496249a133c              # double 0.026934
	.quad	0x3fe18e0c9d9d3459              # double 0.54859000000000002
	.quad	0x3fe4008637bd05af              # double 0.62506399999999995
	.quad	0x3fec545a5fc7e6b4              # double 0.885297
	.quad	0x3fc9314445aa2e3c              # double 0.19681599999999999
	.quad	0x3fcd1f1cfbb94962              # double 0.22751199999999999
	.quad	0x3fe5855970b49e02              # double 0.67252800000000001
	.quad	0x3fd577bbf93ff25e              # double 0.33543299999999998
	.quad	0x3fecb70ef566490a              # double 0.89734599999999998
	.quad	0x3fe49c3265add9c2              # double 0.64406699999999995
	.quad	0x3fe0c955b4677b39              # double 0.52457699999999996
	.quad	0x3feaf192ea52ef91              # double 0.84198899999999999
	.quad	0x3fedf160956c0d6f              # double 0.93571499999999996
	.quad	0x3fe1e94898f605ab              # double 0.55972699999999997
	.quad	0x3fe1f3a57eaa2a0b              # double 0.56099200000000005
	.quad	0x3fe9f1f36262cba7              # double 0.81078499999999998
	.quad	0x3fd38f861a60d456              # double 0.30563499999999999
	.quad	0x3fae9595feda6613              # double 0.059735000000000003
	.quad	0x3fe33bfd71b04684              # double 0.60107299999999997
	.quad	0x3fbf22d0e5604189              # double 0.121625
	.quad	0x3f5e0c5a8155d5f5              # double 0.0018339999999999999
	.quad	0x3fe3c7d1bb4916ca              # double 0.61814199999999997
	.quad	0x3fefa34eb9a176de              # double 0.98868500000000004
	.quad	0x3fdf9f8c21e1d218              # double 0.49411300000000002
	.quad	0x3fdff487fcb923a3              # double 0.49930000000000002
	.quad	0x3feaabf5515054ac              # double 0.83349099999999998
	.quad	0x3fe47bce4217d285              # double 0.64011300000000004
	.quad	0x3fefb9eadd590c0b              # double 0.99144500000000002
	.quad	0x3fe12eb1c432ca58              # double 0.53695000000000004
	.quad	0x3fb5908e581cf788              # double 0.084237000000000006
	.quad	0x3fddc35ce1826677              # double 0.46504899999999999
	.quad	0x3fd98ace24bba12b              # double 0.39909699999999998
	.quad	0x3fb543aeab7995ee              # double 0.083063999999999998
	.quad	0x3fd6f55582129457              # double 0.35872399999999999
	.quad	0x3fea7811f4f50a03              # double 0.82715700000000003
	.quad	0x3fdaeb9e492bc2fc              # double 0.42063099999999998
	.quad	0x3fb197b30f8c64fe              # double 0.068721000000000004
	.quad	0x3fe8f1a5ca29845e              # double 0.77949800000000002
	.quad	0x3fe615d701d9f4d3              # double 0.69016599999999995
	.quad	0x3fcdad5bee3d5fdd              # double 0.231853
	.quad	0x3f9eb4e9813879c4              # double 0.029987
	.quad	0x3fea60780fdc1616              # double 0.82427600000000001
	.quad	0x3fedba604e1e7104              # double 0.92900099999999996
	.quad	0x3fe5826cc1ca3a4b              # double 0.67217099999999996
	.quad	0x3fe1dccea28fe261              # double 0.55820400000000003
	.quad	0x3fb07e5a78f25a25              # double 0.064427999999999999
	.quad	0x3fdfa109d0635a42              # double 0.49420399999999998
	.quad	0x3fe6c8cb4aec8d5c              # double 0.71201099999999995
	.quad	0x3fe71a2a4db163bb              # double 0.72194400000000003
	.quad	0x3fc834c1a8ac5c14              # double 0.18911
	.quad	0x3fec3211cb039ef1              # double 0.88111200000000001
	.quad	0x3fe716d2aa5c5f7c              # double 0.72153599999999996
	.quad	0x3fe03af31b152f3c              # double 0.50719599999999998
	.quad	0x3fe94280ae104923              # double 0.78936799999999996
	.quad	0x3fe6bb5bf6a0dbad              # double 0.71037099999999997
	.quad	0x3fe328997c3d6840              # double 0.59870599999999996
	.quad	0x3fef7807789a4591              # double 0.98340199999999999
	.quad	0x3fe345f394b7b289              # double 0.60228899999999996
	.quad	0x3fe7d3fe1975f2cb              # double 0.74462799999999996
	.quad	0x3fec94e7ee9142b3              # double 0.893177
	.quad	0x3fd7806f262888b5              # double 0.36721399999999998
	.quad	0x3fea0ce91c8eac00              # double 0.81407600000000002
	.quad	0x3f76605ee568a505              # double 0.005463
	.quad	0x3fc75000c9539b89              # double 0.18212900000000001
	.quad	0x3fe5b71758e21965              # double 0.67859999999999998
	.quad	0x3fe291d798d8a97a              # double 0.58030300000000001
	.quad	0x3fc8cd4aa10e0221              # double 0.19376499999999999
	.quad	0x3fe7ef911cf355ce              # double 0.74799400000000005
	.quad	0x3fefdc4a83b1d0c8              # double 0.99564099999999999
	.quad	0x3fd35625a682b628              # double 0.30213299999999998
	.quad	0x3fb527f5e84f0953              # double 0.082641000000000006
	.quad	0x3fc6e28672756862              # double 0.178788
	.quad	0x3fd2a500d5e8d541              # double 0.291321
	.quad	0x3fdb9cae21101b00              # double 0.43143799999999999
	.quad	0x3feb833c60029f17              # double 0.85977000000000003
	.quad	0x3fda0ab713272431              # double 0.40690399999999999
	.quad	0x3fe3c5931ca7d673              # double 0.61786799999999997
	.quad	0x3fed85caafbc1ace              # double 0.92258200000000001
	.quad	0x3fc9191dde37585c              # double 0.196079
	.quad	0x3fd7e48e8a71de6a              # double 0.37332500000000002
	.quad	0x3fe17be33acd5b68              # double 0.546373
	.quad	0x3f9b074a771c970f              # double 0.026394999999999998
	.quad	0x3fd482f512663411              # double 0.32049299999999997
	.quad	0x3fd41187e7c06e1a              # double 0.31357000000000002
	.quad	0x3fea9ada76d97b31              # double 0.831403
	.quad	0x3fe06abffcdab192              # double 0.51303100000000001
	.quad	0x3fee6c28b2a6b0d9              # double 0.95070299999999996
	.quad	0x3fe551a005c4651f              # double 0.66621399999999997
	.quad	0x3fe11a36e2eb1c43              # double 0.53444999999999998
	.quad	0x3feb736694898f60              # double 0.85783699999999996
	.quad	0x3feae89a88ace24c              # double 0.84089400000000003
	.quad	0x3fd932f01754b05b              # double 0.39373399999999997
	.quad	0x3f79b4dcebfec13c              # double 0.0062760000000000003
	.quad	0x3fc39e0e736049ed              # double 0.15326100000000001
	.quad	0x3fe1a7fa1a0cf180              # double 0.551755
	.quad	0x3fecb5aea3161a1e              # double 0.89717800000000003
	.quad	0x3fe02aa7ded6ba8c              # double 0.50520699999999996
	.quad	0x3f7a8cdea033e78e              # double 0.0064819999999999999
	.quad	0x3fb2367e414e7ee9              # double 0.071143999999999999
	.quad	0x3fe9f0de8f6cefed              # double 0.81065299999999996
	.quad	0x3fc01ad6451b9303              # double 0.12581899999999999
	.quad	0x3fe03e09bb6aa4ba              # double 0.50757300000000005
	.quad	0x3fcaae7d566cf41f              # double 0.20845
	.quad	0x3fdd1b4fe79ee02a              # double 0.45479199999999997
	.quad	0x3fe3fb5aea3161a2              # double 0.62443300000000002
	.quad	0x3fd2e94680171194              # double 0.29548799999999997
	.quad	0x3fdb7154003254e7              # double 0.42879200000000001
	.quad	0x3fcd1a08bfc2224f              # double 0.227357
	.quad	0x3fe2ac5197a24895              # double 0.58353500000000003
	.quad	0x3fe6b630a91537a0              # double 0.70974000000000004
	.quad	0x3f99dece5710880e              # double 0.025264000000000002
	.quad	0x3fe9e83e425aee63              # double 0.80959999999999999
	.quad	0x3f9f0d844d013a93              # double 0.030325000000000001
	.quad	0x3fb3e27179bfdf7f              # double 0.077674000000000007
	.quad	0x3feee9ea14057082              # double 0.96605399999999997
	.quad	0x3fe7ea4228997c3d              # double 0.74734599999999995
	.quad	0x3fea39ffd60e94ee              # double 0.81957999999999998
	.quad	0x3fe1fbd6a593a2e0              # double 0.56199200000000005
	.quad	0x3fd51059ea57214f              # double 0.329123
	.quad	0x3fe7694898f605ab              # double 0.73160199999999997
	.quad	0x3feb7de939eadd59              # double 0.85911999999999999
	.quad	0x3fc703fb3743632c              # double 0.179809
	.quad	0x3fcfa365cb35f3d8              # double 0.247174
	.quad	0x3f80c4dec1c1d6d0              # double 0.0081880000000000008
	.quad	0x3fda97c80841ede1              # double 0.41551399999999999
	.quad	0x3fe62a369fcf3dc0              # double 0.69265299999999996
	.quad	0x3fecb95c42203600              # double 0.89762699999999995
	.quad	0x3fc314877681669d              # double 0.149064
	.quad	0x3fc09ed3953dea46              # double 0.12984699999999999
	.quad	0x3fdf28d002e23290              # double 0.48686600000000002
	.quad	0x3fecf2c94b380cb7              # double 0.90463700000000002
	.quad	0x3fe75ac03ff69015              # double 0.72982800000000003
	.quad	0x3fe13bc4d22c881e              # double 0.53854599999999997
	.quad	0x3fe0f79c842fa509              # double 0.53022599999999998
	.quad	0x3fa78d4fdf3b645a              # double 0.045999999999999999
	.quad	0x3fee4c059210385c              # double 0.94677999999999995
	.quad	0x3fe08e0221426fe7              # double 0.51733499999999999
	.quad	0x3fe4c01e68a0d34a              # double 0.64845200000000003
	.quad	0x3fd70739b024f65a              # double 0.35981600000000002
	.quad	0x3fe0460029f16b12              # double 0.50854500000000002
	.quad	0x3fe39e3eaf6837f8              # double 0.61306700000000003
	.quad	0x3fe937457c0b1359              # double 0.78799699999999995
	.quad	0x3fe1c204f2ae07e6              # double 0.55493400000000004
	.quad	0x3fe8d946c332f017              # double 0.77652299999999996
	.quad	0x3fe8e2e2b8c75c4b              # double 0.77769600000000005
	.quad	0x3fb438c111ada76e              # double 0.078991000000000005
	.quad	0x3fee0216c61522a7              # double 0.93775500000000001
	.quad	0x3f8015c209246bf0              # double 0.0078539999999999999
	.quad	0x3fed8b30b5aa7158              # double 0.92324099999999998
	.quad	0x3fef957470eb24a7              # double 0.98699400000000003
	.quad	0x3fd14e7ee9142b30              # double 0.27041599999999999
	.quad	0x3fb4c07aaef2c732              # double 0.081061999999999995
	.quad	0x3fe468fd199bb279              # double 0.63781600000000005
	.quad	0x3fe98b5675579af2              # double 0.79825900000000005
	.quad	0x3fdea821f2990f30              # double 0.47901199999999999
	.quad	0x3fe4965b20b8066c              # double 0.64335399999999998
	.quad	0x3fd8654d61b2a27f              # double 0.38118299999999999
	.quad	0x3fc6f8487b99d452              # double 0.179452
	.quad	0x3fb521ab4b72c519              # double 0.082544999999999993
	.quad	0x3fbe37ef5a964e8b              # double 0.11804099999999999
	.quad	0x3fecf47b677f6b1a              # double 0.90484399999999998
	.quad	0x3fe73137b07075b4              # double 0.72475800000000001
	.quad	0x3fed3d5347a5b0ff              # double 0.91373599999999999
	.quad	0x3fd7d3a604e1e710              # double 0.37229299999999999
	.quad	0x3fdf195cc857f306              # double 0.48592299999999999
	.quad	0x3fda18b934699418              # double 0.40775899999999998
	.quad	0x3fd2286f8ad2567a              # double 0.28371800000000003
	.quad	0x3fe6dd69d30270f4              # double 0.71452800000000005
	.quad	0x3fdcdf97aaac1095              # double 0.45114700000000002
	.quad	0x3fdecdc011d3671b              # double 0.48130800000000001
	.quad	0x3fcb08461f9f01b8              # double 0.21118999999999999
	.quad	0x3f9126a65cf67b1c              # double 0.016749
	.quad	0x3fc2cf2064239607              # double 0.14694599999999999
	.quad	0x3fe6b5bf6a0dbad4              # double 0.70968600000000004
	.quad	0x3fd9660a2014727e              # double 0.39685300000000001
	.quad	0x3fe407314ca925ff              # double 0.62587800000000005
	.quad	0x3fef1f90539fba45              # double 0.97260299999999999
	.quad	0x3feb953586ca89fc              # double 0.86196399999999995
	.quad	0x3fd67e846a5d6bec              # double 0.35147200000000001
	.quad	0x3fa29cdc443914f5              # double 0.036353000000000003
	.quad	0x3fbfa0d77b7c7821              # double 0.12354800000000001
	.quad	0x3fcbbb517a46173c              # double 0.21665400000000001
	.quad	0x3fc7e7c8d195896a              # double 0.18676100000000001
	.quad	0x3fe72cba732df506              # double 0.72421000000000002
	.quad	0x3fdd15bdd76683c3              # double 0.45445200000000002
	.quad	0x3fea5bca9691a75d              # double 0.82370500000000002
	.quad	0x3fd9079a2834d270              # double 0.39108900000000002
	.quad	0x3fe409f83be6601c              # double 0.62621700000000002
	.quad	0x3fa37739f340d4dc              # double 0.038018999999999997
	.quad	0x3fef3f316e371540              # double 0.97646399999999999
	.quad	0x3fe4fe62dc6e2a80              # double 0.656053
	.quad	0x3fe6e864020817fc              # double 0.71586799999999995
	.quad	0x3fef4bfd2e946801              # double 0.97802599999999995
	.quad	0x3fd37be9856a37ac              # double 0.30443799999999999
	.quad	0x3fdeb1bbcf4e874d              # double 0.47959800000000002
	.quad	0x3fe957c4e2f37fbf              # double 0.791964
	.quad	0x3fcb44bb1af3a14d              # double 0.213035
	.quad	0x3fee7daa4fca42af              # double 0.95284000000000002
	.quad	0x3fd75885d31337eb              # double 0.36477799999999999
	.quad	0x3fd3fb1e18efbb0e              # double 0.31220199999999998
	.quad	0x3fee6b91b3f20a74              # double 0.950631
	.quad	0x3fe9373affb04ee8              # double 0.78799200000000003
	.quad	0x3fc56c7219220ff5              # double 0.16737199999999999
	.quad	0x3fe60bda9435ac8a              # double 0.68894699999999998
	.quad	0x3fe88fb00bcbe61d              # double 0.76754
	.quad	0x3fdc1615ebfa8f7e              # double 0.43884800000000002
	.quad	0x3fd79a38fbca105a              # double 0.368788
	.quad	0x3fe840f66a550870              # double 0.75792999999999999
	.quad	0x3fe1652deca2552a              # double 0.543601
	.quad	0x3fc60b8066c2acb8              # double 0.17222599999999999
	.quad	0x3fba0daa0cae642c              # double 0.101771
	.quad	0x3fdba44417870542              # double 0.43190099999999998
	.quad	0x3fe316db0dd82fd7              # double 0.59653999999999996
	.quad	0x3fe09a671ef30a4e              # double 0.51884799999999998
	.quad	0x3fecdf138bcdfefc              # double 0.902231
	.quad	0x3fe93b256ffc115e              # double 0.78847
	.quad	0x3fd361a1db877ab3              # double 0.30283399999999999
	.quad	0x3feee85122318330              # double 0.96585900000000002
	.quad	0x3fe34050bd87b56c              # double 0.60160100000000005
	.quad	0x3fe06e5471715c64              # double 0.51346800000000004
	.quad	0x3fe86b24a6a875d5              # double 0.76307899999999995
	.quad	0x3fc04284dfce3151              # double 0.12703
	.quad	0x3feca3465625a683              # double 0.89493100000000003
	.quad	0x3fcc39d5e4a38327              # double 0.22051499999999999
	.quad	0x3fe15323fee2c98e              # double 0.54139899999999996
	.quad	0x3fc85f30e7ff583a              # double 0.19040499999999999
	.quad	0x3fd2530ced4e4c94              # double 0.28631899999999999
	.quad	0x3f81d798d8a979e1              # double 0.0087119999999999992
	.quad	0x3fe855475a31a4be              # double 0.76041000000000003
	.quad	0x3fc56312f4cf4a56              # double 0.16708600000000001
	.quad	0x3fec640c8472c0e8              # double 0.88721300000000003
	.quad	0x3fc9eacc92146a1a              # double 0.20247799999999999
	.quad	0x3fda7a919695d91b              # double 0.41373100000000002
	.quad	0x3fd4b9cf9a06a6e3              # double 0.32384099999999999
	.quad	0x3fb5523b3636f3b2              # double 0.083285999999999998
	.quad	0x3fef9ae70c1333b9              # double 0.98765899999999995
	.quad	0x3fd101b866e43aa8              # double 0.26573000000000002
	.quad	0x3fedd48882f0e0a8              # double 0.93219399999999997
	.quad	0x3fb9b8887229e908              # double 0.10047200000000001
	.quad	0x3fe8181beb18116f              # double 0.75294300000000003
	.quad	0x3fdbc17ebaf10236              # double 0.43368499999999999
	.quad	0x3fea5f5ad96a6a01              # double 0.82413999999999998
	.quad	0x3fd9f85942917508              # double 0.405783
	.quad	0x3fe718d045fe1112              # double 0.72177899999999995
	.quad	0x3fec4384ba0e8427              # double 0.88324199999999997
	.quad	0x3fb59e6256366d7a              # double 0.084447999999999995
	.quad	0x3fef9c10d7be9857              # double 0.98780100000000004
	.quad	0x3fe7b89d6adf71eb              # double 0.741286
	.quad	0x3fd56afcce1c5825              # double 0.33465499999999998
	.quad	0x3fd7e4e26d4801f7              # double 0.37334499999999998
	.quad	0x3f9b4070329802c1              # double 0.026613000000000001
	.quad	0x3fd65e28aa433509              # double 0.349497
	.quad	0x3fda4f3fd933e35c              # double 0.41108699999999998
	.quad	0x3fec3b7d84901d19              # double 0.88226199999999999
	.quad	0x3fda979e16d6dc1a              # double 0.41550399999999998
	.quad	0x3fdbbd2fa0d77b7c              # double 0.43342199999999997
	.quad	0x3fe6842b734b5137              # double 0.70363399999999998
	.quad	0x3febe6ddf00abf77              # double 0.87193200000000004
	.quad	0x3fe9ed8d36b4c7f3              # double 0.81024799999999997
	.quad	0x3fdd04ddb5525cc4              # double 0.45342199999999999
	.quad	0x3fed1b003686a4ca              # double 0.90954599999999997
	.quad	0x3fc9550ca1cef241              # double 0.197908
	.quad	0x3fc1ba775fb2edfe              # double 0.13850299999999999
	.quad	0x3fd7c8f75536933a              # double 0.371641
	.quad	0x3fd6460aa64c2f83              # double 0.34802499999999997
	.quad	0x3fe1371da37ef5a9              # double 0.53797799999999996
	.quad	0x3fe4c38f36694899              # double 0.648872
	.quad	0x3fe144ed6fda836f              # double 0.53966400000000003
	.quad	0x3fd78205ff1d81f1              # double 0.367311
	.quad	0x3febeebf65dbfceb              # double 0.87289399999999995
	.quad	0x3fe0041cc532a498              # double 0.500502
	.quad	0x3fcf11be6e653869              # double 0.242729
	.quad	0x3fce6fac6045baf5              # double 0.23778299999999999
	.quad	0x3fefb1183b60285f              # double 0.99036800000000002
	.quad	0x3fce4955b4677b39              # double 0.23661299999999999
	.quad	0x3fee26202539756d              # double 0.94215400000000005
	.quad	0x3fefa9691a75cd0c              # double 0.98943000000000003
	.quad	0x3fd7f038e29f9ce9              # double 0.37403700000000001
	.quad	0x3fe3de69ad42c3ca              # double 0.62090000000000001
	.quad	0x3fedd2e946801712              # double 0.93199600000000005
	.quad	0x3fef8917d6b65a9b              # double 0.98548500000000005
	.quad	0x3fe70e7bc3c5bd0e              # double 0.72051799999999999
	.quad	0x3fdbfb9bed30f063              # double 0.43723200000000001
	.quad	0x3fbd10f51ac9afe2              # double 0.11354
	.quad	0x3fdbf92af9a8cdea              # double 0.437083
	.quad	0x3fe83838c111ada7              # double 0.75686299999999995
	.quad	0x3fe19ca3a4b5568f              # double 0.55037100000000005
	.quad	0x3fb806f262888b54              # double 0.093855999999999995
	.quad	0x3fe88c6b484d76ab              # double 0.76714099999999996
	.quad	0x3fdfd052934acaff              # double 0.49708999999999998
	.quad	0x3fd538b04ab606b8              # double 0.33158500000000002
	.quad	0x3fe2bd1cc100e6b0              # double 0.58558500000000002
	.quad	0x3fd266cb10342aaa              # double 0.287524
	.quad	0x3fe9b1c864883fd5              # double 0.802952
	.quad	0x3fe3d184c271fff8              # double 0.61932600000000004
	.quad	0x3fd3098915bdd767              # double 0.29745700000000003
	.quad	0x3feef6e1deacc921              # double 0.96763699999999996
	.quad	0x3fd2d4c33b539325              # double 0.294236
	.quad	0x3fd4c692f6e8294a              # double 0.32462000000000002
	.quad	0x3fe8d479d4d83409              # double 0.77593699999999999
	.quad	0x3fd6e8bc169c23b8              # double 0.35795500000000002
	.quad	0x3fdf5d56f32bdc27              # double 0.49007200000000001
	.quad	0x3fa5610adcd2d44e              # double 0.041756000000000001
	.quad	0x3fc8b955f78359bc              # double 0.19315599999999999
	.quad	0x3fd6e25c810a569b              # double 0.35756599999999999
	.quad	0x3fe3a47cb70ac3a8              # double 0.61382899999999996
	.quad	0x3fed009917939a7c              # double 0.90632299999999998
	.quad	0x3fdd2235b4edb2f6              # double 0.45521299999999998
	.quad	0x3fda8f861a60d456              # double 0.41500999999999999
	.quad	0x3fe6e26916440f24              # double 0.71513800000000005
	.quad	0x3fdd026cc1ca3a4b              # double 0.45327299999999998
	.quad	0x3fe2590e23af31b1              # double 0.57337099999999996
	.quad	0x3fd0c9e6687f455a              # double 0.26232299999999997
	.quad	0x3fe36581cf7878b8              # double 0.60614100000000004
	.quad	0x3fe6b4edb2f661f2              # double 0.70958600000000005
	.quad	0x3f9c197e56473472              # double 0.027441
	.quad	0x3fe9433d6c721922              # double 0.78945799999999999
	.quad	0x3feaa630ec311623              # double 0.83278700000000005
	.quad	0x3fd0a059a73b42cc              # double 0.25978699999999999
	.quad	0x3fede1869835158c              # double 0.93378000000000005
	.quad	0x3fd805681ecd4aa1              # double 0.37533
	.quad	0x3fe3956191148fda              # double 0.611985
	.quad	0x3fd36a5d6bebe165              # double 0.303367
	.quad	0x3feb13fd0d0678c0              # double 0.84619
	.quad	0x3fe37023e9ea1405              # double 0.60743899999999995
	.quad	0x3feff4927913e814              # double 0.99860499999999996
	.quad	0x3fd7a01abd1aa822              # double 0.369147
	.quad	0x3fe843d68405b39e              # double 0.75828099999999998
	.quad	0x3fe964f765fd8adb              # double 0.79357500000000003
	.quad	0x3fe3e961c36976bc              # double 0.62223899999999999
	.quad	0x3faff151e75360d0              # double 0.062387999999999999
	.quad	0x3fecfd32c625e99f              # double 0.90590800000000005
	.quad	0x3fee371758e21965              # double 0.94422499999999998
	.quad	0x3fa7c71d60631727              # double 0.046441000000000003
	.quad	0x3fe9c15b1422ccb4              # double 0.80485300000000004
	.quad	0x3fe1eefe4ffc9796              # double 0.56042400000000003
	.quad	0x3fe59310129cbab6              # double 0.67420199999999997
	.quad	0x3fea05942917507f              # double 0.81318100000000004
	.quad	0x3fe4287e38eb0319              # double 0.62994300000000003
	.quad	0x3fe737cbb3c81909              # double 0.72556100000000001
	.quad	0x3fd7c2fc69728a61              # double 0.37127599999999999
	.quad	0x3fe86008e9b38d61              # double 0.76172300000000004
	.quad	0x3fb73b85e80bed74              # double 0.090751999999999999
	.quad	0x3fed78f47304039b              # double 0.92101500000000003
	.quad	0x3fd15247cb70ac3b              # double 0.27064700000000003
	.quad	0x3fe030af5fd47bee              # double 0.50594300000000003
	.quad	0x3fd03df6db940fed              # double 0.25378200000000001
	.quad	0x3fe6570c564f97ee              # double 0.69812600000000002
	.quad	0x3fecd3c579f23465              # double 0.90085099999999996
	.quad	0x3fe8e3992c8c5005              # double 0.777783
	.quad	0x3fe74b1465e89225              # double 0.72791499999999998
	.quad	0x3fc735d249e44fa0              # double 0.18132999999999999
	.quad	0x3fbaa433508f648c              # double 0.10406799999999999
	.quad	0x3fc2146a1a500d5f              # double 0.14124800000000001
	.quad	0x3fedc853c148344c              # double 0.93070399999999997
	.quad	0x3fdd50e779207d4e              # double 0.458063
	.quad	0x3fd64d7add15f02c              # double 0.34847899999999998
	.quad	0x3fa66eeb702602c9              # double 0.043815
	.quad	0x3fe809635610adcd              # double 0.75114599999999998
	.quad	0x3fe994a6eb91b3f2              # double 0.799396
	.quad	0x3fef320d9945b6c3              # double 0.97485999999999994
	.quad	0x3fbc3361565c2d28              # double 0.11015900000000001
	.quad	0x3fcafc58ab92c062              # double 0.21082600000000001
	.quad	0x3fcbffe6d58c8eef              # double 0.218747
	.quad	0x3fe02365cb35f3d8              # double 0.50432100000000002
	.quad	0x3fe2b71fbc5de9c0              # double 0.58485399999999998
	.quad	0x3fe3350f40e5a35d              # double 0.60022699999999996
	.quad	0x3fed39192641b329              # double 0.91322000000000003
	.quad	0x3fecff9b56323bbc              # double 0.90620199999999995
	.quad	0x3febbb9f127f5e85              # double 0.86665300000000001
	.quad	0x3fddbb83cf2cf95d              # double 0.46456999999999998
	.quad	0x3fdfbcb1cc964628              # double 0.495892
	.quad	0x3fc9157abb8800eb              # double 0.195968
	.quad	0x3fe6818e757928e1              # double 0.70331500000000002
	.quad	0x3fe92e09fe86833c              # double 0.78686999999999995
	.quad	0x3fe0be1a8262456f              # double 0.52320599999999995
	.quad	0x3fbce0fc2eba27af              # double 0.11280800000000001
	.quad	0x3feea53b8e4b87be              # double 0.95767000000000002
	.quad	0x3fe69550ca1cef24              # double 0.70572699999999999
	.quad	0x3fd4ca7935760392              # double 0.32485799999999998
	.quad	0x3fc2646f15619115              # double 0.14369000000000001
	.quad	0x3fedbf11f926c7eb              # double 0.92957400000000001
	.quad	0x3fe9b632c1f42bb6              # double 0.80349099999999996
	.quad	0x3fe717d49d7ba66a              # double 0.72165900000000005
	.quad	0x3fe3ca7f8012dfd7              # double 0.61846900000000005
	.quad	0x3fed1a3d2d87f887              # double 0.90945299999999996
	.quad	0x3fdeb8fde2ef4e01              # double 0.480041
	.quad	0x3fcf4ff865d7cb2e              # double 0.24462800000000001
	.quad	0x3feeba08398a6549              # double 0.96020899999999997
	.quad	0x3fbb256ffc115df6              # double 0.10604
	.quad	0x3fa8e4755ffe6d59              # double 0.048618000000000001
	.quad	0x3fe495e39713ad5c              # double 0.64329700000000001
	.quad	0x3fdd675579af1887              # double 0.45943200000000001
	.quad	0x3fdf67f90d9d7775              # double 0.49072100000000002
	.quad	0x3fefcc6c54bcf0b7              # double 0.99370400000000003
	.quad	0x3fba99a62ed35222              # double 0.103907
	.quad	0x3fd7dc4c9c90c4df              # double 0.37282100000000001
	.quad	0x3fd5b16c1e364bec              # double 0.33895399999999998
	.quad	0x3fdbd306a2b17050              # double 0.434755
	.quad	0x3fe1b882278d0cc3              # double 0.55377299999999996
	.quad	0x3fc1a1d323fee2ca              # double 0.13775100000000001
	.quad	0x3fea8f10a99b6f5d              # double 0.82996400000000004
	.quad	0x3fe2f89c5e6ff7e0              # double 0.59284800000000004
	.quad	0x3fec1917939a7c18              # double 0.87806300000000004
	.quad	0x3fc0c99f1ae2da55              # double 0.13115299999999999
	.quad	0x3fe918958d9b5e96              # double 0.78425100000000003
	.quad	0x3fe87ced916872b0              # double 0.76524999999999999
	.quad	0x3fda178705425f20              # double 0.40768599999999999
	.quad	0x3fdef190d173fb7a              # double 0.48349399999999998
	.quad	0x3fe4e6c2acb85a4f              # double 0.653169
	.quad	0x3fe4b504c48adeec              # double 0.64709700000000003
	.quad	0x3fcdaa4fca42aed1              # double 0.23175999999999999
	.quad	0x3fc631ceaf251c19              # double 0.17339499999999999
	.quad	0x3fe33777d0f1f57b              # double 0.60052099999999997
	.quad	0x3fe74bd556084a51              # double 0.72800699999999996
	.quad	0x3fee586a8fc0d2c4              # double 0.94829300000000005
	.quad	0x3fce4f3343fa2ad4              # double 0.236792
	.quad	0x3fdba159817b95a3              # double 0.43172300000000002
	.quad	0x3fdb0d6f544bb1af              # double 0.42269499999999999
	.quad	0x3fe47c3d68405b3a              # double 0.64016600000000001
	.quad	0x3feddfc19c17225b              # double 0.93356399999999995
	.quad	0x3fd3a4f8726d04e6              # double 0.30694399999999999
	.quad	0x3fc2743a647fdc59              # double 0.14417199999999999
	.quad	0x3fe29a34ca0c282c              # double 0.58132399999999995
	.quad	0x3fc7b7952d234eba              # double 0.18529000000000001
	.quad	0x3fd3370cdc8754f3              # double 0.30023499999999997
	.quad	0x3fcbdb1a6d698fe7              # double 0.21762400000000001
	.quad	0x3fb7ab7564302b41              # double 0.092460000000000001
	.quad	0x3fd0f954eb13dfb1              # double 0.26521800000000001
	.quad	0x3fde3400b88ca3e8              # double 0.47192400000000001
	.quad	0x3fec18a009f62307              # double 0.87800599999999995
	.quad	0x3fe5994e1a3f4667              # double 0.67496400000000001
	.quad	0x3fe7000218def417              # double 0.71875100000000003
	.quad	0x3fe6e9e3c968943e              # double 0.71605099999999999
	.quad	0x3fe8c73cd573647c              # double 0.77432100000000003
	.quad	0x3fec10b417ca2121              # double 0.87703900000000001
	.quad	0x3fc9ac9afe1da7b1              # double 0.20058000000000001
	.quad	0x3fe01dfdac68a937              # double 0.50366100000000003
	.quad	0x3fc2795703f2d3c8              # double 0.14432800000000001
	.quad	0x3fd086df82b1f688              # double 0.25823200000000002
	.quad	0x3fe3103ea704bc27              # double 0.59573299999999996
	.quad	0x3fb6a79bbadc0981              # double 0.088495000000000004
	.quad	0x3fc60d0aaa7ded6c              # double 0.17227300000000001
	.quad	0x3fc716ebd4cfd08d              # double 0.18038699999999999
	.quad	0x3fe9ff3061c79b35              # double 0.81240100000000004
	.quad	0x3fedc2f405f6ba06              # double 0.93004799999999999
	.quad	0x3fe1638c9752977d              # double 0.54340200000000005
	.quad	0x3fd9b1209edbf8ba              # double 0.40143600000000002
	.quad	0x3fd2f969e3c96894              # double 0.29647299999999999
	.quad	0x3fc94bb5e0f7fcfc              # double 0.19762299999999999
	.quad	0x3fcd8958d9b5e95b              # double 0.23075399999999999
	.quad	0x3fed2593a2df9379              # double 0.91083700000000001
	.quad	0x3fe92e4f3343fa2b              # double 0.78690300000000002
	.quad	0x3fb566f0cfe15443              # double 0.083601999999999996
	.quad	0x3fd8d694ccab3ede              # double 0.38809700000000003
	.quad	0x3fe9d6861e92923e              # double 0.80743699999999996
	.quad	0x3fdf1cda2b5a20de              # double 0.48613600000000001
	.quad	0x3fce24894c447c31              # double 0.23549
	.quad	0x3fa7a97e132b55ef              # double 0.046214999999999999
	.quad	0x3fdcecaab8a5ce5b              # double 0.45194499999999999
	.quad	0x3fe5ed740c4156e2              # double 0.68523599999999996
	.quad	0x3fe3509e12a51e32              # double 0.60359099999999999
	.quad	0x3fdfc4e7253da72a              # double 0.49639299999999997
	.quad	0x3fe1aab042528ae7              # double 0.55208599999999997
	.quad	0x3fc81882adc4c9c9              # double 0.188248
	.quad	0x3fe1fed84d338f7a              # double 0.56235900000000005
	.quad	0x3feebc01a36e2eb2              # double 0.96045000000000003
	.quad	0x3fdf3660e51d25ab              # double 0.48769400000000002
	.quad	0x3fdedc011d3671ac              # double 0.482178
	.quad	0x3fe5261e0c5a8156              # double 0.66090300000000002
	.quad	0x3fd1b28d8665e02f              # double 0.27652300000000002
	.quad	0x3feead4d4024b33e              # double 0.95865500000000003
	.quad	0x3fb9c358afc47e4a              # double 0.100637
	.quad	0x3feda0ddc6195465              # double 0.92588700000000002
	.quad	0x3f9604e1e71044f2              # double 0.021503000000000001
	.quad	0x3fe017dd00f776c5              # double 0.50291300000000005
	.quad	0x3fe3646ae3a3a8e7              # double 0.60600799999999999
	.quad	0x3fe61ebe9c886163              # double 0.69125300000000001
	.quad	0x3fe86e32e3821af8              # double 0.76345200000000002
	.quad	0x3fb9cffeb074a772              # double 0.10083
	.quad	0x3fbfd3e4ef0281ba              # double 0.12432699999999999
	.quad	0x3fed3bcb1cc96463              # double 0.91354900000000006
	.quad	0x3fee37e0ac7da1ec              # double 0.94432099999999996
	.quad	0x3febd8f92af9a8ce              # double 0.87023600000000001
	.quad	0x3fbbbc7f77af6406              # double 0.108345
	.quad	0x3fe217f84449dbec              # double 0.56542599999999998
	.quad	0x3fe0c5e0b4e11dbd              # double 0.52415500000000004
	.quad	0x3fe1f8e5c4eb56fc              # double 0.56163300000000005
	.quad	0x3fe4477574f722e2              # double 0.63372300000000004
	.quad	0x3fee6f3f52fc2657              # double 0.95108000000000004
	.quad	0x3fd33c81908e581d              # double 0.300568
	.quad	0x3fe0d334c5da6a44              # double 0.52578199999999997
	.quad	0x3fe863f359ff4fd7              # double 0.76220100000000002
	.quad	0x3feb877681669ced              # double 0.860286
	.quad	0x3fc7821af7d30ad4              # double 0.18365799999999999
	.quad	0x3fea7546d3f9e7b8              # double 0.826816
	.quad	0x3fec870b8cfbfc65              # double 0.89148499999999997
	.quad	0x3fe3814b599aa609              # double 0.60953299999999999
	.quad	0x3fe8786a098915be              # double 0.76469900000000002
	.quad	0x3fe58daa0cae642c              # double 0.673543
	.quad	0x3fee0262456f75da              # double 0.93779100000000004
	.quad	0x3fe86bc621b7e0ac              # double 0.76315599999999994
	.quad	0x3fb0ba30121682f9              # double 0.065340999999999996
	.quad	0x3fe89af1886df82b              # double 0.76891399999999999
	.quad	0x3fd74f54d1e96c40              # double 0.36421700000000001
	.quad	0x3fe7e8ab4fa48302              # double 0.74715200000000004
	.quad	0x3fe29aa3f034b0e2              # double 0.58137700000000003
	.quad	0x3fddab96f21f6cad              # double 0.46359800000000001
	.quad	0x3fc967d34df04ddb              # double 0.19848099999999999
	.quad	0x3fc3b9e060fe4799              # double 0.15411
	.quad	0x3fcf15a4acf312b2              # double 0.24284800000000001
	.quad	0x3fce960b6f9fcb0c              # double 0.238954
	.quad	0x3fd3f8df7a4e7ab7              # double 0.31206499999999998
	.quad	0x3fc2f1a1986b9c30              # double 0.14799899999999999
	.quad	0x3fd03675ddd2ae8e              # double 0.25332399999999999
	.quad	0x3fe4f64cf8d716d3              # double 0.65506600000000004
	.quad	0x3fd055000c9539b9              # double 0.25518800000000003
	.quad	0x3fdaa01eeed8904f              # double 0.41602299999999998
	.quad	0x3fe0feac42e9899c              # double 0.531088
	.quad	0x3fca837f7be121ee              # double 0.20713799999999999
	.quad	0x3fdd042d8c2a454e              # double 0.45338000000000001
	.quad	0x3fe75844d013a92a              # double 0.72952499999999998
	.quad	0x3fd68ce703afb7e9              # double 0.35235
	.quad	0x3fed5a964e8b7e4e              # double 0.91730800000000001
	.quad	0x3fc39ce8d972cd7d              # double 0.153226
	.quad	0x3fe6479f666234a8              # double 0.69624299999999995
	.quad	0x3fc3f9f87f023e9f              # double 0.15606600000000001
	.quad	0x3fe0ea2d2fe3f35a              # double 0.528586
	.quad	0x3fe340b780346dc6              # double 0.60165000000000002
	.quad	0x3fe0c1094a2b9d3d              # double 0.52356400000000003
	.quad	0x3febd154866a11ed              # double 0.86930300000000005
	.quad	0x3fb8653005814941              # double 0.095294000000000004
	.quad	0x3fe29bb05faebc41              # double 0.58150500000000005
	.quad	0x3fe279ce8d972cd8              # double 0.57736900000000002
	.quad	0x3fbdb43526527a20              # double 0.116031
	.quad	0x3fd41eafee6fb4c4              # double 0.31437300000000001
	.quad	0x3fa95831f03d145e              # double 0.049501000000000003
	.quad	0x3fe4f4b838c111ae              # double 0.65487300000000004
	.quad	0x3fe58be0ded288ce              # double 0.67332499999999995
	.quad	0x3f73c148344c37e7              # double 0.004823
	.quad	0x3fc7afea3df6db94              # double 0.185056
	.quad	0x3fe78101f31f46ed              # double 0.73449799999999998
	.quad	0x3fe6e58c4bd33d29              # double 0.71552099999999996
	.quad	0x3fe4b1bbcf4e874d              # double 0.64669600000000005
	.quad	0x3f866c6de76427c8              # double 0.010949
	.quad	0x3fd6cc4ef88b9778              # double 0.35621999999999998
	.quad	0x3feb422ccb3a2596              # double 0.85182800000000003
	.quad	0x3fe1812be48a58b4              # double 0.547018
	.quad	0x3fc2e3d5fdcdf698              # double 0.14757799999999999
	.quad	0x3fe4896787ce95fb              # double 0.64177300000000004
	.quad	0x3fe7f6cacd184c27              # double 0.74887599999999999
	.quad	0x3f7de7a743a647fe              # double 0.0073010000000000002
	.quad	0x3fcf2db1e9f27781              # double 0.24358199999999999
	.quad	0x3fe0aeafab53d641              # double 0.52132400000000001
	.quad	0x3fdfe779207d4e09              # double 0.49850299999999997
	.quad	0x3fe91d2bf5515055              # double 0.78481100000000004
	.quad	0x3fee13ff25e56cd7              # double 0.93994100000000003
	.quad	0x3fd65e13b18dac26              # double 0.34949200000000002
	.quad	0x3fd48769ec2ce465              # double 0.32076500000000002
	.quad	0x3fc974c4cdfaca36              # double 0.198876
	.quad	0x3fd0fb224aada33c              # double 0.26532800000000001
	.quad	0x3feaade43ed959a3              # double 0.833727
	.quad	0x3fe05d2f1a9fbe77              # double 0.51137500000000002
	.quad	0x3fcb882adc4c9c91              # double 0.21509300000000001
	.quad	0x3fe607ce95faa8a8              # double 0.68845299999999998
	.quad	0x3fe4d0b73d188f43              # double 0.650478
	.quad	0x3fd4f6d7625204b0              # double 0.32756600000000002
	.quad	0x3fef0c436fc158fb              # double 0.97024699999999997
	.quad	0x3fe43e553ac4f7ec              # double 0.63260899999999998
	.quad	0x3fdc5fbb517a4617              # double 0.44334299999999999
	.quad	0x3fe4fe5c91d14e3c              # double 0.65605000000000002
	.quad	0x3fc976bc1eff9f88              # double 0.198936
	.quad	0x3fd0fb7e90ff9724              # double 0.26534999999999997
	.quad	0x3fce0b135979181a              # double 0.234713
	.quad	0x3fef1085f4a1272d              # double 0.97076700000000004
	.quad	0x3fb3033a4723ab00              # double 0.074268000000000001
	.quad	0x3fe6e6772d5e071c              # double 0.71563299999999996
	.quad	0x3febce4a7b4e54f8              # double 0.86893200000000004
	.quad	0x3fe745f5ad96a6a0              # double 0.72728999999999999
	.quad	0x3fe72e89eba6aca8              # double 0.72443100000000005
	.quad	0x3fac2e9899bf5947              # double 0.055043000000000002
	.quad	0x3fc622d5171e29b7              # double 0.17293800000000001
	.quad	0x3fdb5668c2613900              # double 0.427149
	.quad	0x3fe0ce7ee9142b30              # double 0.52520699999999998
	.quad	0x3fe5a1e1d2178f69              # double 0.67601100000000003
	.quad	0x3fbfc72e275ab7dc              # double 0.12413299999999999
	.quad	0x3fe768e1d6494d51              # double 0.73155300000000001
	.quad	0x3fe24426351deefe              # double 0.57081899999999997
	.quad	0x3fe4da72a7bd48cb              # double 0.65166599999999997
	.quad	0x3fe25f7c6759ab6d              # double 0.574156
	.quad	0x3fe909fe86833c60              # double 0.78246999999999999
	.quad	0x3fd0e054690de093              # double 0.26369199999999998
	.quad	0x3fec3e3c105186db              # double 0.88259699999999996
	.quad	0x3fce616b54e2b064              # double 0.237348
	.quad	0x3fea068db8bac711              # double 0.81330000000000002
	.quad	0x3fdd0daa0cae642c              # double 0.453959
	.quad	0x3fe46e2003ab862b              # double 0.63844299999999998
	.quad	0x3fec07a8d64d7f0f              # double 0.87593500000000002
	.quad	0x3fd56940357a3550              # double 0.33454899999999999
	.quad	0x3fd04b599aa60914              # double 0.25459900000000002
	.quad	0x3fdeb1359791819d              # double 0.47956599999999999
	.quad	0x3fa606fac6045baf              # double 0.043021999999999998
	.quad	0x3fe5821294573a79              # double 0.67212799999999995
	.quad	0x3fd59b62c77574f7              # double 0.33760899999999999
	.quad	0x3face4649906cca3              # double 0.056430000000000001
	.quad	0x3fcfa08398a65493              # double 0.247086
	.quad	0x3fe2ca558ea7ce10              # double 0.58719900000000003
	.quad	0x3fed3c05d52c16df              # double 0.91357699999999997
	.quad	0x3fea426351deefe5              # double 0.820604
	.quad	0x3fe40f5e41d4b6a6              # double 0.62687599999999999
	.quad	0x3fe2187c6327ed85              # double 0.56548900000000002
	.quad	0x3fe1e25a682b6284              # double 0.55888099999999996
	.quad	0x3fd4cc89b0ee49f5              # double 0.324984
	.quad	0x3fed6e221c8a7a42              # double 0.91969400000000001
	.quad	0x3fe7c4c5974e65bf              # double 0.74277000000000004
	.quad	0x3fe02b66b6177ea2              # double 0.50529800000000002
	.quad	0x3fd0d44567125dd1              # double 0.26295600000000002
	.quad	0x3fee06d506573216              # double 0.938334
	.quad	0x3fed4d573647baaa              # double 0.91569100000000003
	.quad	0x3fec5e1e2de87097              # double 0.88648899999999997
	.quad	0x3fe003f91e646f15              # double 0.50048499999999996
	.quad	0x3fc193c46d82ba5a              # double 0.137322
	.quad	0x3fd45a6c5d206c87              # double 0.318019
	.quad	0x3fe90ef1348b2208              # double 0.78307400000000005
	.quad	0x3fd75000c9539b89              # double 0.36425800000000003
	.quad	0x3fe72bd7f51efb6e              # double 0.72410200000000002
	.quad	0x3fc0671ef30a4e38              # double 0.12814700000000001
	.quad	0x3fdaf9a49c2c1b11              # double 0.421487
	.quad	0x3fd4e94680171194              # double 0.32673799999999997
	.quad	0x3fe00f1f57b41bfc              # double 0.50184600000000001
	.quad	0x3fefea4228997c3d              # double 0.99734599999999995
	.quad	0x3fd933fc86cebbba              # double 0.39379799999999998
	.quad	0x3fd624894c447c31              # double 0.34598000000000001
	.quad	0x3fcf3f961804d984              # double 0.24412800000000001
	.quad	0x3fef62b27cbf6e3f              # double 0.98079799999999994
	.quad	0x3fd7a6223e186983              # double 0.36951499999999998
	.quad	0x3fd2007dd4413554              # double 0.28127999999999997
	.quad	0x3fdbcdc443914f48              # double 0.43443399999999999
	.quad	0x3fe33f2b239a38fc              # double 0.60146100000000002
	.quad	0x3fbe44523f67f4dc              # double 0.11823
	.quad	0x3fe7933e35c5b4ab              # double 0.73672400000000005
	.quad	0x3fda0f49491f2dc3              # double 0.40718300000000002
	.quad	0x3fe5537e2c55c960              # double 0.66644199999999998
	.quad	0x3fd961aa3f034b0e              # double 0.39658599999999999
	.quad	0x3fe6df5275ee99a6              # double 0.71476099999999998
	.quad	0x3fed4d22c881e471              # double 0.91566599999999998
	.quad	0x3fdbf8b588e368f1              # double 0.43705500000000003
	.quad	0x3fdf08ede54b48d4              # double 0.48492000000000002
	.quad	0x3fd674a3400b88ca              # double 0.35086899999999999
	.quad	0x3fe51904b3c3e74b              # double 0.659304
	.quad	0x3febdae1cde5d181              # double 0.87046900000000005
	.quad	0x3fe033df2a9d627c              # double 0.506332
	.quad	0x3fca044284dfce31              # double 0.20325499999999999
	.quad	0x3fe8d451fc4c1659              # double 0.775918
	.quad	0x3feea250f840181e              # double 0.957314
	.quad	0x3f6d8e8640208180              # double 0.0036080000000000001
	.quad	0x3fe6052f7f498c3b              # double 0.68813299999999999
	.quad	0x3fe73a3443d46b27              # double 0.72585500000000003
	.quad	0x3fc101083dbc2331              # double 0.13284399999999999
	.quad	0x3fe02fdfc19c1722              # double 0.50584399999999996
	.quad	0x3fec253111f0c34c              # double 0.87953999999999998
	.quad	0x3fe36ea4228997c4              # double 0.60725600000000002
	.quad	0x3fc7a1b1960fa15e              # double 0.18462200000000001
	.quad	0x3fe99d2178f68be3              # double 0.800431
	.quad	0x3fb6c9e236c15d2d              # double 0.089018
	.quad	0x3fc2a51e321a2e7f              # double 0.14566399999999999
	.quad	0x3fdb3e9a6f826edb              # double 0.42569600000000002
	.quad	0x3fe969878316a055              # double 0.79413199999999995
	.quad	0x3fe45d15f02c4d66              # double 0.63636300000000001
	.quad	0x3fd4c43f5f91600f              # double 0.32447799999999999
	.quad	0x3fd22602c9081c2e              # double 0.28356999999999999
	.quad	0x3fc06fb4c3c18b50              # double 0.128409
	.quad	0x3fee0221426fe719              # double 0.93776000000000004
	.quad	0x3fc11d9b1b79d90a              # double 0.133716
	.quad	0x3fd759210385c67e              # double 0.364815
	.quad	0x3fdc9c38b04ab607              # double 0.44703500000000002
	.quad	0x3fe8061a60d4562e              # double 0.750745
	.quad	0x3fd4a6612839042e              # double 0.32265500000000003
	.quad	0x3fef08d08919ef95              # double 0.96982599999999996
	.quad	0x3fe7cc7d1bb4916d              # double 0.74371200000000004
	.quad	0x3fed2f46aa087ca6              # double 0.91202099999999997
	.quad	0x3fdae53a81dc0db2              # double 0.42024099999999998
	.quad	0x3fe9718c9fb6134d              # double 0.79511100000000001
	.quad	0x3fc93682730c6717              # double 0.19697600000000001
	.quad	0x3fec92d3415b1423              # double 0.89292300000000002
	.quad	0x3fa322291fb3fa6e              # double 0.03737
	.quad	0x3fc123dd54da4ce8              # double 0.133907
	.quad	0x3fdceaaf35e310dc              # double 0.451824
	.quad	0x3fee922962cfd8f1              # double 0.95534200000000002
	.quad	0x3febe0f1b25f633d              # double 0.87120900000000001
	.quad	0x3fa2c471b4784231              # double 0.036655
	.quad	0x3fa8b0079a2834d2              # double 0.048217999999999997
	.quad	0x3fa1e364bec679cc              # double 0.034937999999999997
	.quad	0x3f6040bfe3b03e21              # double 0.0019840000000000001
	.quad	0x3fe45601ffb480a6              # double 0.63549900000000004
	.quad	0x3fd7c764adff822c              # double 0.37154500000000001
	.quad	0x3fe22a497fa5d28d              # double 0.567662
	.quad	0x3fe732af1455219b              # double 0.72493700000000005
	.quad	0x3fee8b71b8aa0019              # double 0.95452199999999998
	.quad	0x3fe42a12f901083e              # double 0.63013600000000003
	.quad	0x3fc61f85d744f5d3              # double 0.17283699999999999
	.quad	0x3fe5f587d6f97679              # double 0.686222
	.quad	0x3fc8eec7c957cd46              # double 0.19478699999999999
	.quad	0x3fc1cdd50a88effe              # double 0.139094
	.quad	0x3fd9f45e0b4e11dc              # double 0.40554000000000001
	.quad	0x3fd8cf56eac86057              # double 0.38765500000000003
	.quad	0x3feadf41aef6f8f0              # double 0.83975299999999997
	.quad	0x3fe7ebce8533b107              # double 0.74753499999999995
	.quad	0x3fe8f1c3265add9c              # double 0.77951199999999998
	.quad	0x3fe53f0995aaf790              # double 0.66394500000000001
	.quad	0x3f609070fbeb9e49              # double 0.0020219999999999999
	.quad	0x3fece40e9d51b4fe              # double 0.90283899999999995
	.quad	0x3fd41565c2d27807              # double 0.31380599999999997
	.quad	0x3fc41fafc8b0079a              # double 0.157217
	.quad	0x3fe89cf355cd91ef              # double 0.76915900000000004
	.quad	0x3fdac0724b76f6d7              # double 0.41799599999999998
	.quad	0x3fe2440d0aaa7ded              # double 0.57080699999999995
	.quad	0x3fe7a2e1ac57e23f              # double 0.73863299999999998
	.quad	0x3fd8b3636f3b213e              # double 0.38594899999999999
	.quad	0x3fe92938de6ddf01              # double 0.78628200000000004
	.quad	0x3fed03ea704bc276              # double 0.90672799999999998
	.quad	0x3fe3381b64e05469              # double 0.60059899999999999
	.quad	0x3fe601d19157abb9              # double 0.68772200000000006
	.quad	0x3fd73d3e4ef0281c              # double 0.36311300000000002
	.quad	0x3fe944da9003eea2              # double 0.789655
	.quad	0x3feb000431bde82d              # double 0.84375199999999995
	.quad	0x3fc64f54d1e96c40              # double 0.17429600000000001
	.quad	0x3faa98244e93e1ca              # double 0.051942000000000002
	.quad	0x3fdbb994e1a3f466              # double 0.43320199999999998
	.quad	0x3fe8100c521dda06              # double 0.75195900000000004
	.quad	0x3fdf6dca07f66e87              # double 0.49107600000000001
	.quad	0x3fad7c4e2f37fbf0              # double 0.057589000000000001
	.quad	0x3feed1d25aab4741              # double 0.96311299999999999
	.quad	0x3fdb985ad538ac19              # double 0.431174
	.quad	0x3fe5f2c0e7bc3c5c              # double 0.68588300000000002
	.quad	0x3fe60d73860999dd              # double 0.68914200000000003
	.quad	0x3feb409c3ce2089e              # double 0.85163699999999998
	.quad	0x3fe2354e2b063e08              # double 0.56900700000000004
	.quad	0x3fc499e0e736049f              # double 0.16094600000000001
	.quad	0x3fe2c3cc07aaef2c              # double 0.58640099999999995
	.quad	0x3f69157abb8800eb              # double 0.0030620000000000001
	.quad	0x3fe03328b6d86ec1              # double 0.50624499999999995
	.quad	0x3fb5c3265add9c28              # double 0.085009000000000001
	.quad	0x3fe4d2bb23571d1d              # double 0.65072399999999997
	.quad	0x3fdb64cf8d716d2b              # double 0.42802800000000002
	.quad	0x3fe60008637bd05b              # double 0.687504
	.quad	0x3fd637a80cf9e386              # double 0.34714699999999998
	.quad	0x3fd1f9b13165d399              # double 0.28086499999999998
	.quad	0x3fef176145953587              # double 0.97160400000000002
	.quad	0x3fd21a0cf1800a7c              # double 0.28283999999999998
	.quad	0x3fdd8c868b9fdbd3              # double 0.461702
	.quad	0x3fe1132b55ef1fde              # double 0.53359000000000001
	.quad	0x3fdd6af46aa087ca              # double 0.45965299999999998
	.quad	0x3fd078c868b9fdbd              # double 0.25737199999999999
	.quad	0x3feef457c0b13598              # double 0.96732700000000004
	.quad	0x3fe329c779a6b50b              # double 0.59884999999999999
	.quad	0x3fdc5350092ccf6c              # double 0.44258500000000001
	.quad	0x3fdcdcdb37c99ae9              # double 0.45097999999999999
	.quad	0x3fded7a99fa11a97              # double 0.48191299999999998
	.quad	0x3fa09f83be6601bd              # double 0.032467000000000003
	.quad	0x3fe955d80e496edf              # double 0.79172900000000002
	.quad	0x3fe25c03361565c3              # double 0.57373200000000002
	.quad	0x3fd0e71044f1a198              # double 0.26410299999999998
	.quad	0x3fe5a9d1f601797d              # double 0.67698000000000003
	.quad	0x3fe4b8c9752977c9              # double 0.64755700000000005
	.quad	0x3fead9988d2a1f8e              # double 0.83906199999999997
	.quad	0x3fe7cd07852f7f4a              # double 0.74377800000000005
	.quad	0x3fd6b524399b2c41              # double 0.35480600000000001
	.quad	0x3fd6096787ce95fb              # double 0.34432400000000002
	.quad	0x3feca28bb0a2ca9b              # double 0.89484200000000003
	.quad	0x3fea2dafd113836b              # double 0.81807700000000005
	.quad	0x3fdcfcb0c026cc1d              # double 0.45292300000000002
	.quad	0x3fe1246173b85e81              # double 0.53569100000000003
	.quad	0x3fd8207d4e09784f              # double 0.37698300000000001
	.quad	0x3fd17fb69984a0e4              # double 0.27342
	.quad	0x3fd64a2fcefaa476              # double 0.34827799999999998
	.quad	0x3fe255e4a3832767              # double 0.57298499999999997
	.quad	0x3fc09e7fb267c6b9              # double 0.12983700000000001
	.quad	0x3fe9d657fb69984a              # double 0.80741499999999999
	.quad	0x3fd036a400fba882              # double 0.25333499999999998
	.quad	0x3fea89dadfb506dd              # double 0.82932799999999995
	.quad	0x3fdb1797cc39ffd6              # double 0.423315
	.quad	0x3fc368be2f7b17ce              # double 0.15163399999999999
	.quad	0x3fe8e325d4a5df22              # double 0.77772799999999997
	.quad	0x3fce45564b662fe0              # double 0.23649100000000001
	.quad	0x3fa01ffb480a5acd              # double 0.031494000000000001
	.quad	0x3fd112a0ec743201              # double 0.266762
	.quad	0x3fe1613f4a98aa86              # double 0.54312099999999996
	.quad	0x3feb844d013a92a3              # double 0.8599
	.quad	0x3fdd086bdf4c2b52              # double 0.45363900000000001
	.quad	0x3fbe9f59ccfaeff6              # double 0.119619
	.quad	0x3fe0ad57bc7f77af              # double 0.52115999999999996
	.quad	0x3fe4e22e5de15ca7              # double 0.65261000000000002
	.quad	0x3fdc682b62845996              # double 0.44385799999999997
	.quad	0x3fe1290470a808c8              # double 0.53625699999999998
	.quad	0x3f94384ba0e84274              # double 0.019746
	.quad	0x3fe9925785f8d2e5              # double 0.79911399999999999
	.quad	0x3fcd0d0edc3bd599              # double 0.226961
	.quad	0x3fef68a0d349be90              # double 0.98152200000000001
	.quad	0x3fcc45c358afc47e              # double 0.22087899999999999
	.quad	0x3fe19fafc8b0079a              # double 0.55074299999999998
	.quad	0x3fdc87d6f9767903              # double 0.44579099999999999
	.quad	0x3fd32d7f950b955f              # double 0.29965199999999997
	.quad	0x3fcb0f51ac9afe1e              # double 0.21140500000000001
	.quad	0x3fe29b13165d3997              # double 0.58143
	.quad	0x3fde070fbeb9e493              # double 0.46918100000000001
	.quad	0x3fe4ea57214f0521              # double 0.65360600000000002
	.quad	0x3fda22ccb3a2595c              # double 0.40837400000000001
	.quad	0x3fc809fe86833c60              # double 0.187805
	.quad	0x3fe3dc3bd5992429              # double 0.62063400000000002
	.quad	0x3fe10bc382a12f90              # double 0.53268599999999999
	.quad	0x3fd91fc08fa7a850              # double 0.392563
	.quad	0x3fdac443914f483d              # double 0.41822900000000002
	.quad	0x3fefabb8800eae19              # double 0.98971200000000003
	.quad	0x3fc1cc426351def0              # double 0.139046
	.quad	0x3fa2f640639d5e4a              # double 0.037034999999999998
	.quad	0x3f575d13d74d594f              # double 0.001426
	.quad	0x3fdbe518f3eccc47              # double 0.43585800000000002
	.quad	0x3fab7d84901d1915              # double 0.053691999999999997
	.quad	0x3fdc31ad2135daad              # double 0.44053199999999998
	.quad	0x3feb3675ddd2ae8e              # double 0.85039799999999999
	.quad	0x3fd8065300581494              # double 0.375386
	.quad	0x3fd90f3cb3e5753a              # double 0.39155499999999999
	.quad	0x3fc44b5568e820e6              # double 0.158549
	.quad	0x3fd9158750c1b973              # double 0.39193899999999998
	.quad	0x3fe652ae8e1d6495              # double 0.69759300000000002
	.quad	0x3fdce642bf9830e4              # double 0.45155400000000001
	.quad	0x3fc471f79420b3d5              # double 0.15972800000000001
	.quad	0x3fe0900c521dda06              # double 0.51758400000000004
	.quad	0x3fd7471715c63ae2              # double 0.36371399999999998
	.quad	0x3fe47c5ac471b478              # double 0.64017999999999997
	.quad	0x3fb6a0ec74320104              # double 0.088392999999999999
	.quad	0x3fc6ff64cf8d716d              # double 0.179669
	.quad	0x3fe4cba301216830              # double 0.64985800000000005
	.quad	0x3fe502e019b0ab2e              # double 0.65660099999999999
	.quad	0x3fea16b54e2b063e              # double 0.815272
	.quad	0x3feb71cda2b5a20e              # double 0.85764200000000002
	.quad	0x3fd7cad9ad85dfa8              # double 0.37175599999999998
	.quad	0x3fe03059641f6449              # double 0.50590199999999996
	.quad	0x3fbfc07ee0b0af60              # double 0.124031
	.quad	0x3fe8becedd484513              # double 0.77329199999999998
	.quad	0x3fdd75ff609dcf89              # double 0.46032699999999999
	.quad	0x3fd58e60807357e6              # double 0.33681499999999998
	.quad	0x3fefe17c1bda511a              # double 0.99627500000000002
	.quad	0x3fd9531550ca1cef              # double 0.39569599999999999
	.quad	0x3fd6edd4845132f8              # double 0.35826599999999997
	.quad	0x3fe577ea1c68ec53              # double 0.67088800000000004
	.quad	0x3fc91a1986b9c305              # double 0.19610900000000001
	.quad	0x3fe0d6b00ffda405              # double 0.52620699999999998
	.quad	0x3fcb349385836220              # double 0.21254200000000001
	.quad	0x3f52513b5bf6a0dc              # double 0.0011180000000000001
	.quad	0x3fe5be07a28bb0a3              # double 0.67944700000000002
	.quad	0x3fd545e0b4e11dbd              # double 0.33239000000000002
	.quad	0x3fc490abb44e50c6              # double 0.160665
	.quad	0x3fec6831ad2135db              # double 0.88771900000000004
	.quad	0x3fe388effe2a3cea              # double 0.61046599999999995
	.quad	0x3feecee7c49fd7a1              # double 0.96275699999999997
	.quad	0x3febabcf91a32b13              # double 0.86472300000000002
	.quad	0x3fd9aec0724b76f7              # double 0.40129100000000001
	.quad	0x3fc136a400fba882              # double 0.13447999999999999
	.quad	0x3f7d7774aba38759              # double 0.0071939999999999999
	.quad	0x3fda8d5410f94c88              # double 0.41487600000000002
	.quad	0x3fd7ae3a3a8e7147              # double 0.37000899999999998
	.quad	0x3fe4e48626f60e0f              # double 0.65289600000000003
	.quad	0x3fe6ad538ac18f82              # double 0.70865800000000001
	.quad	0x3fe15ce9e5e24788              # double 0.54259199999999996
	.quad	0x3f8a7e308787485e              # double 0.012936
	.quad	0x3fee8e94ee392e1f              # double 0.954905
	.quad	0x3fe89c9b41398634              # double 0.76911700000000005
	.quad	0x3feec6e2a80064aa              # double 0.96177800000000002
	.quad	0x3fb1ba908a265f0f              # double 0.069252999999999995
	.quad	0x3fdfb8023a6ce358              # double 0.49560599999999999
	.quad	0x3fea1f46ed245b29              # double 0.81631799999999999
	.quad	0x3fcb9ee88df3732a              # double 0.21578700000000001
	.quad	0x3fc60780fdc1615f              # double 0.17210400000000001
	.quad	0x3fca6db50f40e5a3              # double 0.20647299999999999
	.quad	0x3fb4ed4e4c942d49              # double 0.081745999999999999
	.quad	0x3fde737da61e0c5b              # double 0.47579900000000003
	.quad	0x3fe6b4d26fa3fcca              # double 0.70957300000000001
	.quad	0x3fe358fb43d89ce5              # double 0.60461200000000004
	.quad	0x3fc49b6b2af14552              # double 0.160993
	.quad	0x3fec66e008e9b38d              # double 0.88755799999999996
	.quad	0x3fe179096bb98c7e              # double 0.54602499999999998
	.quad	0x3fe07be553ac4f7f              # double 0.51512400000000003
	.quad	0x3fe7f82d38476f2a              # double 0.74904499999999996
	.quad	0x3fcc82730c671690              # double 0.22273100000000001
	.quad	0x3fd9240b780346dc              # double 0.39282499999999998
	.quad	0x3fdcb1209edbf8ba              # double 0.44831100000000002
	.quad	0x3fe1165d3996fa83              # double 0.53398000000000001
	.quad	0x3fd41a5870da5daf              # double 0.314108
	.quad	0x3fb37b6bb1290258              # double 0.076102000000000003
	.quad	0x3f8e3193f6c2699c              # double 0.014742999999999999
	.quad	0x3fb5e9e1b089a027              # double 0.085599999999999996
	.quad	0x3fec740e5a35d67c              # double 0.88916700000000004
	.quad	0x3fc36366d7a56de3              # double 0.15147099999999999
	.quad	0x3fcdd323fee2c98e              # double 0.23300599999999999
	.quad	0x3fe8b51372a38b8b              # double 0.77210400000000001
	.quad	0x3fd9fe586013660e              # double 0.40614899999999998
	.quad	0x3fc5c810a569b175              # double 0.17016800000000001
	.quad	0x3fe73369b9d7fd82              # double 0.72502599999999995
	.quad	0x3fe48655193708ab              # double 0.64139800000000002
	.quad	0x3fe88f57f737da62              # double 0.76749800000000001
	.quad	0x3fd6e642bf9830e4              # double 0.35780400000000001
	.quad	0x3fc7f98b71b8aa00              # double 0.187303
	.quad	0x3fd246887a8d64d8              # double 0.285555
	.quad	0x3fe337154003254e              # double 0.60047399999999995
	.quad	0x3fdf904b3c3e74b0              # double 0.49318200000000001
	.quad	0x3f713b5bf6a0dbad              # double 0.0042069999999999998
	.quad	0x3fde8e432441fea8              # double 0.477433
	.quad	0x3fea36672fba01ef              # double 0.81914100000000001
	.quad	0x3fccfd976ff3ade2              # double 0.226489
	.quad	0x3fe9500f776c4828              # double 0.79102300000000003
	.quad	0x3fe3bdff3f0fe048              # double 0.61694300000000002
	.quad	0x3fc9909f1f14983d              # double 0.19972599999999999
	.quad	0x3fe438ed1bf7ad4b              # double 0.63194899999999998
	.quad	0x3fd6588e368f0846              # double 0.34915499999999999
	.quad	0x3fdac97d8cf398e9              # double 0.41854799999999998
	.quad	0x3fe4124f227d028a              # double 0.62723499999999999
	.quad	0x3fabb320535c9e67              # double 0.054101000000000003
	.quad	0x3fed79aae6c8f755              # double 0.92110199999999998
	.quad	0x3fc4b8305d95dd4c              # double 0.16187099999999999
	.quad	0x3fc7775b81301648              # double 0.18332999999999999
	.quad	0x3fe65ca29845dc83              # double 0.69880799999999998
	.quad	0x3fe12474538ef34d              # double 0.53569999999999995
	.quad	0x3fc15bff04577d95              # double 0.13561999999999999
	.quad	0x3fd6312f4cf4a559              # double 0.346752
	.quad	0x3fe06195464dc22b              # double 0.51191200000000003
	.quad	0x3fb9bf0563ed0f62              # double 0.10057099999999999
	.quad	0x3fda68b19a415f46              # double 0.41264000000000001
	.quad	0x3fe2a821f2990f30              # double 0.58302399999999999
	.quad	0x3fe821ad6451b930              # double 0.75411099999999998
	.quad	0x3fea74f93bc0a06f              # double 0.82677900000000004
	.quad	0x3fc73d4280ae1049              # double 0.181557
	.quad	0x3fcf1d606317268d              # double 0.24308399999999999
	.quad	0x3fd0abe6a337a80d              # double 0.260492
	.quad	0x3fe0852502eec7c9              # double 0.51625299999999996
	.quad	0x3fe08869c66d373b              # double 0.516652
	.quad	0x3fcabdba0a526959              # double 0.20891499999999999
	.quad	0x3f9e935b91f70de9              # double 0.029859
	.quad	0x3fb4d9e83e425aee              # double 0.081449999999999994
	.quad	0x3fe8bc72e275ab7e              # double 0.77300400000000002
	.quad	0x3fb3aeab7995ee13              # double 0.076883999999999994
	.quad	0x3fe441743e963dc5              # double 0.63299000000000005
	.quad	0x3fb21ff2e48e8a72              # double 0.070800000000000002
	.quad	0x3fe7c7a17f4128bf              # double 0.74311899999999997
	.quad	0x3fe211dde37585be              # double 0.56468099999999999
	.quad	0x3fe71c7de5082cf5              # double 0.72222799999999998
	.quad	0x3feb62d40aaeafab              # double 0.85581399999999996
	.quad	0x3fe6ec43f5f91601              # double 0.71634100000000001
	.quad	0x3fdf2fdb8fde2ef5              # double 0.48729600000000001
	.quad	0x3fe3b361565c2d28              # double 0.61564700000000006
	.quad	0x3fe037c7820a30db              # double 0.50680899999999995
	.quad	0x3feba4c61d8622c4              # double 0.86386399999999996
	.quad	0x3fd8e3608d08919f              # double 0.388878
	.quad	0x3fde7d805e5f30e8              # double 0.47641
	.quad	0x3fc25321e603d578              # double 0.14316200000000001
	.quad	0x3fe2fc84b5dcc63f              # double 0.59332499999999999
	.quad	0x3fd647304039abf3              # double 0.34809499999999999
	.quad	0x3fe689a027525461              # double 0.70430000000000004
	.quad	0x3fe5a584f4c6e6da              # double 0.67645500000000003
	.quad	0x3fed5d65a14488c6              # double 0.91765099999999999
	.quad	0x3fd50685553ef6b6              # double 0.32852300000000001
	.quad	0x3fcc37b4a2339c0f              # double 0.22045000000000001
	.quad	0x3fb9842b734b5137              # double 0.099672999999999998
	.quad	0x3fe84d7f0ed3d85a              # double 0.75946000000000002
	.quad	0x3fd21719f7f8ca82              # double 0.28266000000000002
	.quad	0x3fe10fc9363f572e              # double 0.53317700000000001
	.quad	0x3feb7a7a85015c21              # double 0.85870100000000005
	.quad	0x3fd602795703f2d4              # double 0.34390100000000001
	.quad	0x3fe29142b302f72b              # double 0.58023199999999997
	.quad	0x3fe313532e7b3d8e              # double 0.596109
	.quad	0x3fd09ef5232d2bb2              # double 0.25970199999999999
	.quad	0x3fd54bc6a7ef9db2              # double 0.33274999999999999
	.quad	0x3fe9b4289118c198              # double 0.80324200000000001
	.quad	0x3fe0eb65a9a80496              # double 0.52873499999999996
	.quad	0x3fc2815e39713ad6              # double 0.14457300000000001
	.quad	0x3fef2ead9274e22a              # double 0.97444799999999998
	.quad	0x3fc940f66a550870              # double 0.197295
	.quad	0x3fedb57c4e2f37fc              # double 0.928404
	.quad	0x3fbbf37b8d3f1844              # double 0.109184
	.quad	0x3f9f15a4acf312b2              # double 0.030356000000000001
	.quad	0x3feac944ed6fda83              # double 0.83706899999999995
	.quad	0x3fe24a66559f6ec6              # double 0.57158200000000003
	.quad	0x3fc22fdfc19c1722              # double 0.14208599999999999
	.quad	0x3fc530164840e172              # double 0.16553000000000001
	.quad	0x3fedfc371da37ef6              # double 0.93703800000000004
	.quad	0x3fc75af294dd7236              # double 0.18246299999999999
	.quad	0x3fe77459d99029ae              # double 0.73295299999999997
	.quad	0x3fe936672fba01ef              # double 0.78789100000000001
	.quad	0x3fe3f5232d2bb235              # double 0.62367399999999995
	.quad	0x3fe6148ba83f4eca              # double 0.69000799999999995
	.quad	0x3f88d2e514c22ee4              # double 0.012121
	.quad	0x3fee00ef1348b220              # double 0.93761399999999994
	.quad	0x3fdacd31769a9110              # double 0.41877399999999998
	.quad	0x3fe584ba0e842742              # double 0.67245200000000005
	.quad	0x3fbd31db445ed4a2              # double 0.114042
	.quad	0x3fe07963992c8c50              # double 0.514818
	.quad	0x3fe92b1f687b139d              # double 0.78651400000000005
	.quad	0x3fd0d6b65a9a8049              # double 0.26310499999999998
	.quad	0x3fd29aa1d755bccb              # double 0.290688
	.quad	0x3fcf34267839cd81              # double 0.243779
	.quad	0x3fef27c9de050375              # double 0.973607
	.quad	0x3fcd15df6555c52e              # double 0.22722999999999999
	.quad	0x3fe3d87d6f976790              # double 0.62017699999999998
	.quad	0x3fb6eafab53d640f              # double 0.089523000000000005
	.quad	0x3fdbeddce7cd0353              # double 0.43639299999999998
	.quad	0x3fd7f70de8f6ceff              # double 0.37445400000000001
	.quad	0x3fd5caf709b738e7              # double 0.34051300000000001
	.quad	0x3fc29cdc443914f5              # double 0.14541200000000001
	.quad	0x3f72630ec3116228              # double 0.0044889999999999999
	.quad	0x3fee849a9973d9ec              # double 0.95368699999999995
	.quad	0x3fd813879c4113c7              # double 0.37619200000000003
	.quad	0x3fd5d8c2a454de7f              # double 0.34135500000000002
	.quad	0x3feb7fda4052d667              # double 0.85935700000000004
	.quad	0x3feb26aec0724b77              # double 0.848472
	.quad	0x3fd6bc05d52c16df              # double 0.35522599999999999
	.quad	0x3fd155714b9cb685              # double 0.27084000000000003
	.quad	0x3febc057082491b0              # double 0.86722900000000003
	.quad	0x3fe0cc22ee41919b              # double 0.52491900000000002
	.quad	0x3fc84d013a92a305              # double 0.18984999999999999
	.quad	0x3fd5d872f33ca31e              # double 0.34133599999999997
	.quad	0x3fc59f01b866e43b              # double 0.16891500000000001
	.quad	0x3fc3d3458cd20afa              # double 0.15488499999999999
	.quad	0x3fc51758e219652c              # double 0.164775
	.quad	0x3fedcbe61cffeb07              # double 0.93113999999999997
	.quad	0x3fe8be1a8262456f              # double 0.77320599999999995
	.quad	0x3fe8298aa8650e78              # double 0.75507100000000005
	.quad	0x3fe2da35d67ba238              # double 0.58913700000000002
	.quad	0x3fc978a2a90cd424              # double 0.198994
	.quad	0x3fcc3bf727136a40              # double 0.22058
	.quad	0x3fd1bbc6eb0b7c35              # double 0.277086
	.quad	0x3f855e6bc621b7e1              # double 0.010434000000000001
	.quad	0x3fe53cba30121683              # double 0.663663
	.quad	0x3fe942938de6ddf0              # double 0.789377
	.quad	0x3fe8045fe1112770              # double 0.75053400000000003
	.quad	0x3fe736e503fb3743              # double 0.72545099999999996
	.quad	0x3fdc0f8c64fdb09a              # double 0.43844899999999998
	.quad	0x3fe7c81f53825e14              # double 0.74317900000000003
	.quad	0x3fec2435696e58a3              # double 0.87941999999999998
	.quad	0x3fe2a67e846a5d6c              # double 0.58282400000000001
	.quad	0x3fd9f63800218def              # double 0.40565299999999999
	.quad	0x3fe4490a350d2807              # double 0.63391600000000004
	.quad	0x3fe60221426fe719              # double 0.68776000000000004
	.quad	0x3fdf2e019b0ab2e1              # double 0.48718299999999998
	.quad	0x3fd4e8c47a17f413              # double 0.32670700000000003
	.quad	0x3fe4af6e82949a56              # double 0.64641499999999996
	.quad	0x3fcf7de939eadd59              # double 0.24603
	.quad	0x3fdbd2f5dbb9cf9a              # double 0.434751
	.quad	0x3fe86f86a098915c              # double 0.76361400000000001
	.quad	0x3f7c62a1b5c7cd8a              # double 0.0069300000000000004
	.quad	0x3fee019f3c70c997              # double 0.93769800000000003
	.quad	0x3fcbb9841aac53b1              # double 0.21659900000000001
	.quad	0x3f9a18372e6a7696              # double 0.025482999999999999
	.quad	0x3fef8255b035bd51              # double 0.98465999999999997
	.quad	0x3fe684ba0e842742              # double 0.70370200000000005
	.quad	0x3fb9e33269df97ab              # double 0.101123
	.quad	0x3fd97ec3547e0696              # double 0.39836199999999999
	.quad	0x3fdd71b0468448cf              # double 0.46006399999999997
	.quad	0x3fb4bc59b8023a6d              # double 0.080999000000000002
	.quad	0x3f5eafee6fb4c3c2              # double 0.0018730000000000001
	.quad	0x3fea93c68661ae71              # double 0.83053900000000003
	.quad	0x3fdd7ded6ba8c587              # double 0.46081100000000003
	.quad	0x3fed79af1886df83              # double 0.92110400000000003
	.quad	0x3fd388ace24bba13              # double 0.30521700000000002
	.quad	0x3fb4b09e98dcdb38              # double 0.080820000000000003
	.quad	0x3fe7712a0ec74320              # double 0.73256399999999999
	.quad	0x3fe60468448cf7cb              # double 0.68803800000000004
	.quad	0x3faa4873365881a1              # double 0.051333999999999998
	.quad	0x3feeed2674080f99              # double 0.966449
	.quad	0x3fd51cfbb949624a              # double 0.32989400000000002
	.quad	0x3fd8289118c197e5              # double 0.37747599999999998
	.quad	0x3fbf3d3a1d323fee              # double 0.122028
	.quad	0x3fd4e670e2c12ad8              # double 0.32656499999999999
	.quad	0x3fee168512231833              # double 0.940249
	.quad	0x3fc62d0e56041893              # double 0.17324999999999999
	.quad	0x3fde73affb04ee7c              # double 0.47581099999999998
	.quad	0x3fe669df97aaac11              # double 0.70042400000000005
	.quad	0x3fd5269df97aaac1              # double 0.330482
	.quad	0x3feb93f077ccc038              # double 0.86180900000000005
	.quad	0x3fdf8d823422467c              # double 0.49301200000000001
	.quad	0x3fa3ea0ba1f4b1ee              # double 0.038894999999999999
	.quad	0x3fec9cde5d18090b              # double 0.89414899999999997
	.quad	0x3fb14a7f8012dfd7              # double 0.067543000000000006
	.quad	0x3fea95c209246bf0              # double 0.83078099999999999
	.quad	0x3fd65c853c148345              # double 0.34939700000000001
	.quad	0x3fed5b5fa22706d5              # double 0.917404
	.quad	0x3fe1c7a9e2bcf91a              # double 0.55562299999999998
	.quad	0x3fbb15f88fc9363f              # double 0.105804
	.quad	0x3fdfc5ac471b4784              # double 0.49643999999999999
	.quad	0x3fe5a12f901083dc              # double 0.67592600000000003
	.quad	0x3f7740c4156e264e              # double 0.0056769999999999998
	.quad	0x3fe93864cb5bb385              # double 0.788134
	.quad	0x3fcd4e2b063e07a3              # double 0.22894800000000001
	.quad	0x3fe0740c4156e265              # double 0.51416600000000001
	.quad	0x3fe8ed20296b3355              # double 0.77894600000000003
	.quad	0x3fd0883fd5022574              # double 0.25831599999999999
	.quad	0x3fe9cf7446f9b995              # double 0.80657400000000001
	.quad	0x3fc6b44a1f080304              # double 0.17737700000000001
	.quad	0x3fbcaafbc1acde1a              # double 0.111984
	.quad	0x3fe3e1869835158c              # double 0.62128000000000005
	.quad	0x3fd2549f94855da2              # double 0.28641499999999998
	.quad	0x3fc8ac53b0813cac              # double 0.19275900000000001
	.quad	0x3fed016052502eec              # double 0.90641799999999994
	.quad	0x3fe0b5696e58a32f              # double 0.52214499999999997
	.quad	0x3fe808a04d12018a              # double 0.75105299999999997
	.quad	0x3fd7e3de6149c6f3              # double 0.37328299999999998
	.quad	0x3fec9bf7ad4b2746              # double 0.89403900000000003
	.quad	0x3fe6586ec17ebaf1              # double 0.698295
	.quad	0x3feb3cd573647bab              # double 0.85117600000000004
	.quad	0x3fe0ca2b9d3cbc49              # double 0.52467900000000001
	.quad	0x3fda73215fcc1872              # double 0.41327700000000001
	.quad	0x3fe28deb0fadf2ed              # double 0.57982400000000001
	.quad	0x3fe0bc85c24c404a              # double 0.52301299999999995
	.quad	0x3fde934efcbd5561              # double 0.47774100000000003
	.quad	0x3fd431d712a0ec74              # double 0.31554199999999999
	.quad	0x3fdd0b3d4ae429e1              # double 0.45381100000000002
	.quad	0x3fe29496249a133c              # double 0.58063799999999999
	.quad	0x3fe8a99b6f5caf2d              # double 0.77070399999999994
	.quad	0x3fee311c6d1e108c              # double 0.94349499999999997
	.quad	0x3fed013cab81f96a              # double 0.90640100000000001
	.quad	0x3feb224894c447c3              # double 0.84793499999999999
	.quad	0x3fec804b7f5a5333              # double 0.89066100000000004
	.quad	0x3fb1628cbd1244a6              # double 0.067909999999999998
	.quad	0x3fb8282c6ef3d3a2              # double 0.094363000000000002
	.quad	0x3fe8e65bea0ba1f5              # double 0.77812000000000003
	.quad	0x3f882f5126634118              # double 0.011809
	.quad	0x3fe24896dd26b724              # double 0.57136100000000001
	.quad	0x3fecff6d330941c8              # double 0.90617999999999999
	.quad	0x3fd78626f60e0eb6              # double 0.36756299999999997
	.quad	0x3fcab4e11dbca969              # double 0.208645
	.quad	0x3fe2b3eff1950332              # double 0.58446500000000001
	.quad	0x3fc24b09e98dcdb3              # double 0.14291499999999999
	.quad	0x3fdddf00abf76a2f              # double 0.46673599999999998
	.quad	0x3fd9407cc7d1bb49              # double 0.394561
	.quad	0x3fabe0bd44998d04              # double 0.054448999999999997
	.quad	0x3f94877681669ced              # double 0.020048
	.quad	0x3fe270867ad8e432              # double 0.57623599999999997
	.quad	0x3f742c3c9eecbfb1              # double 0.0049249999999999997
	.quad	0x3fe99274e22a2c23              # double 0.79912799999999995
	.quad	0x3fe34579f2346562              # double 0.60223099999999996
	.quad	0x3fde6b441bb8c32b              # double 0.47529700000000003
	.quad	0x3fe79be6e6538690              # double 0.73778100000000002
	.quad	0x3fd190539fba450b              # double 0.27443400000000001
	.quad	0x3fd3b4e11dbca969              # double 0.30791499999999999
	.quad	0x3fccba8c586876e2              # double 0.224443
	.quad	0x3feafc49fd7a13c2              # double 0.84329699999999996
	.quad	0x3fee0cdea033e78e              # double 0.93907099999999999
	.quad	0x3fe80aa8650e7792              # double 0.751301
	.quad	0x3fd44180d3cff64d              # double 0.316498
	.quad	0x3fe4b30728e92d56              # double 0.64685400000000004
	.quad	0x3f8a94bbe4473cd5              # double 0.012978999999999999
	.quad	0x3fe66b00ffda4053              # double 0.70056200000000002
	.quad	0x3fe23fd933e35c5b              # double 0.57029399999999997
	.quad	0x3f7e679463cfb331              # double 0.0074229999999999999
	.quad	0x3f2fb82c2bd7f51f              # double 2.42E-4
	.quad	0x3fe5d883ba3443d4              # double 0.68267999999999995
	.quad	0x3fecc011d3671ac1              # double 0.89844599999999997
	.quad	0x3fd98112ba16e7a3              # double 0.398503
	.quad	0x3fe4b476295208e1              # double 0.64702899999999997
	.quad	0x3fe425a682b62846              # double 0.62959600000000004
	.quad	0x3fea422ab25b317f              # double 0.820577
	.quad	0x3fc6b1704ff4341a              # double 0.17729
	.quad	0x3fe8f47d805e5f31              # double 0.77984500000000001
	.quad	0x3fb3545c78a6dacb              # double 0.075506000000000004
	.quad	0x3fd34d5d80e496ee              # double 0.301597
	.quad	0x3fc4b28522ea0fd4              # double 0.16169800000000001
	.quad	0x3fbc5015c209246c              # double 0.110597
	.quad	0x3fecddf00abf76a3              # double 0.902092
	.quad	0x3fe147c957cd466f              # double 0.54001299999999997
	.quad	0x3fef76bc1eff9f88              # double 0.983244
	.quad	0x3fd612dba4d6e47e              # double 0.34490100000000001
	.quad	0x3fe9997e56473472              # double 0.799987
	.quad	0x3fe6339c0ebedfa4              # double 0.69379999999999997
	.quad	0x3fdfe642bf9830e4              # double 0.49842900000000001
	.quad	0x3fe15ae1cde5d181              # double 0.54234400000000005
	.quad	0x3fdac9f2fdb8fde3              # double 0.418576
	.quad	0x3fc74adbc664d3bf              # double 0.18197199999999999
	.quad	0x3fb45942917507ea              # double 0.079487000000000002
	.quad	0x3fc4f102363b2570              # double 0.163605
	.quad	0x3fde1ce28ed5f139              # double 0.47051300000000001
	.quad	0x3feec857f3061c7a              # double 0.96195600000000003
	.quad	0x3fcd08a265f0f5a1              # double 0.226826
	.quad	0x3fe623e7d135115a              # double 0.69188300000000003
	.quad	0x3fee748a159817b9              # double 0.95172599999999996
	.quad	0x3fe8912dba4d6e48              # double 0.76772200000000002
	.quad	0x3fed4a8e2e2b8c76              # double 0.91535100000000003
	.quad	0x3fd999806f262889              # double 0.39999400000000002
	.quad	0x3fe0f50e34762952              # double 0.529914
	.quad	0x3fde14bdfd2630ec              # double 0.47001599999999999
	.quad	0x3fdd14db59578a2b              # double 0.45439800000000002
	.quad	0x3fee915379fa97e1              # double 0.95523999999999998
	.quad	0x3fe11c8a7a41e57e              # double 0.53473400000000004
	.quad	0x3fb4969a0ad8a116              # double 0.080422999999999994
	.quad	0x3fdd053198288052              # double 0.45344200000000001
	.quad	0x3fe49b4784230fd0              # double 0.64395500000000006
	.quad	0x3fca99bf5946c333              # double 0.207817
	.quad	0x3fce573a797891e2              # double 0.237037
	.quad	0x3fe61f72f76e6107              # double 0.69133900000000004
	.quad	0x3fe27be553ac4f7f              # double 0.57762400000000003
	.quad	0x3fecf3bc903ea705              # double 0.90475300000000003
	.quad	0x3fe226809d495183              # double 0.56720000000000004
	.quad	0x3fdb9c3ce2089e34              # double 0.43141099999999999
	.quad	0x3fe5c840e1719f80              # double 0.68069500000000005
	.quad	0x3fefa3b7952d234f              # double 0.98873500000000003
	.quad	0x3fe23bc6eb0b7c35              # double 0.569797
	.quad	0x3fc9a415f45e0b4e              # double 0.20032
	.quad	0x3fe72ba7b9170d63              # double 0.72407900000000003
	.quad	0x3fe3cc63f141205c              # double 0.61870000000000003
	.quad	0x3fe0d8eeae9ee45c              # double 0.52648099999999998
	.quad	0x3faeeaa6d2674081              # double 0.060384
	.quad	0x3fc31960fa15db34              # double 0.14921200000000001
	.quad	0x3fea19d0203e63e9              # double 0.81565100000000001
	.quad	0x3f935ac8a3726070              # double 0.018901000000000001
	.quad	0x3fef7605ab3aabcd              # double 0.98315699999999994
	.quad	0x3fe5a0ba1f4b1ee2              # double 0.67586999999999997
	.quad	0x3fd4a5e353f7ced9              # double 0.322625
	.quad	0x3fe0ac7da1ec4e72              # double 0.52105599999999996
	.quad	0x3fe7f785729b280f              # double 0.74896499999999999
	.quad	0x3fcc589acbc8c0cf              # double 0.22145400000000001
	.quad	0x3fd50e0a84be4042              # double 0.328982
	.quad	0x3fe969dd7ecbb7fa              # double 0.79417300000000002
	.quad	0x3fea1e9d0e991ff7              # double 0.81623699999999999
	.quad	0x3fe4a4894c447c31              # double 0.64508500000000002
	.quad	0x3fc2af81626b2f23              # double 0.145981
	.quad	0x3fc4cc0bdcad14a1              # double 0.16247700000000001
	.quad	0x3fd714a0a0f4d7ae              # double 0.36063400000000001
	.quad	0x3fd4e6d15ad106ee              # double 0.32658799999999999
	.quad	0x3fe3f1bef49cf56f              # double 0.62326000000000004
	.quad	0x3fcac996b76709fa              # double 0.20927699999999999
	.quad	0x3fd97646ae3a3a8e              # double 0.39784399999999998
	.quad	0x3fefbb8e4b87bdcf              # double 0.99164499999999999
	.quad	0x3fe19b5a63f9a49c              # double 0.55021399999999998
	.quad	0x3fdc7cb70ac3a861              # double 0.44511200000000001
	.quad	0x3fd911b60ae9680e              # double 0.391706
	.quad	0x3f95bccaf709b739              # double 0.021228
	.quad	0x3fee2ec8d5c74752              # double 0.94321100000000002
	.quad	0x3fe1550a88effe2a              # double 0.54163099999999997
	.quad	0x3fe1950b955f7836              # double 0.54944400000000004
	.quad	0x3f923e9ea1405708              # double 0.017817
	.quad	0x3fc1003eea209aaa              # double 0.13281999999999999
	.quad	0x3feaeb851eb851ec              # double 0.84125000000000005
	.quad	0x3fed9d81f10667f9              # double 0.92547699999999999
	.quad	0x3fed0dc33721d53d              # double 0.90793000000000001
	.quad	0x3fed785b5b70691f              # double 0.92094200000000004
	.quad	0x3fe25cbbc2b94d94              # double 0.57382
	.quad	0x3fe6c18b502ababf              # double 0.71112600000000004
	.quad	0x3fbca41a261bf37c              # double 0.11187900000000001
	.quad	0x3fc2f3775b813016              # double 0.14805499999999999
	.quad	0x3fc9db6e503fb374              # double 0.20200899999999999
	.quad	0x3fba6937d1fe64f5              # double 0.103168
	.quad	0x3fe7830e3cd9a522              # double 0.73474799999999996
	.quad	0x3fa4a1059ea57215              # double 0.040291
	.quad	0x3fe3587d6f976790              # double 0.60455199999999998
	.quad	0x3fe8cb6a619da9ca              # double 0.77483100000000005
	.quad	0x3fced855970b49e0              # double 0.240977
	.quad	0x3f86a93f290abb45              # double 0.011065
	.quad	0x3fee33aabcd78c43              # double 0.94380699999999995
	.quad	0x3fecd72799a1fd15              # double 0.90126399999999995
	.quad	0x3fe99e321a2e7f6f              # double 0.80056099999999997
	.quad	0x3fd98c868b9fdbd3              # double 0.399202
	.quad	0x3fe402d59d55e6bc              # double 0.62534599999999996
	.quad	0x3fa62b4959e62563              # double 0.043298999999999997
	.quad	0x3fd79567dbb16c1e              # double 0.36849399999999999
	.quad	0x3fcaa4ebdd334c5e              # double 0.20815800000000001
	.quad	0x3fd20dae3e6c4c59              # double 0.28208499999999997
	.quad	0x3fe108893b7d8490              # double 0.53229199999999999
	.quad	0x3fe6a187a4a48f97              # double 0.70721800000000001
	.quad	0x3fc345c78a6dacac              # double 0.15056700000000001
	.quad	0x3fe6422ab25b317f              # double 0.695577
	.quad	0x3fcb12cadddf43c8              # double 0.211511
	.quad	0x3feea26809d49518              # double 0.95732499999999998
	.quad	0x3fe1d2f3c2dadb83              # double 0.55700099999999997
	.quad	0x3fdbf49491f2dc2b              # double 0.436803
	.quad	0x3f95104d551d68c7              # double 0.020570000000000001
	.quad	0x3fdfe0589acbc8c1              # double 0.49806800000000001
	.quad	0x3fe2f559b3d07c85              # double 0.59245000000000003
	.quad	0x3fe1cebdd334c5da              # double 0.55648699999999995
	.quad	0x3fe5046e8f29d40f              # double 0.65679100000000001
	.quad	0x3fe2b7457c0b1359              # double 0.58487199999999995
	.quad	0x3fe69b4dcebfec14              # double 0.70645800000000003
	.quad	0x3fe7ece9a2c66905              # double 0.74766999999999995
	.quad	0x3fea469f8c21e1d2              # double 0.82112099999999999
	.quad	0x3fad8f92af9a8cdf              # double 0.057736000000000003
	.quad	0x3fd0689ca18bd662              # double 0.25638499999999997
	.quad	0x3fca26fe718a86d7              # double 0.204315
	.quad	0x3fee106ee30caa32              # double 0.93950599999999995
	.quad	0x3fe520b5ed8d36b5              # double 0.66024300000000002
	.quad	0x3fe3004102ff8ec1              # double 0.593781
	.quad	0x3fe52ac96cc5fbf8              # double 0.66147299999999998
	.quad	0x3fc9e5a78f25a251              # double 0.202321
	.quad	0x3fefdd22856605ee              # double 0.99574399999999996
	.quad	0x3fef9f0c34c1a8ac              # double 0.98816499999999996
	.quad	0x3fe97d9988d2a1f9              # double 0.79658200000000001
	.quad	0x3fb38b9baa1511e0              # double 0.076349
	.quad	0x3fe7aa62aa19439e              # double 0.73954900000000001
	.quad	0x3fdb1205bc01a36e              # double 0.42297499999999999
	.quad	0x3f93b1d0c8041030              # double 0.019233
	.quad	0x3fce593a2df9378f              # double 0.237098
	.quad	0x3fa45d41fa765343              # double 0.039773999999999997
	.quad	0x3fe17082491afc05              # double 0.54498400000000002
	.quad	0x3fcbaaf78feef5ed              # double 0.21615500000000001
	.quad	0x3fe0a7e52157689d              # double 0.52049500000000004
	.quad	0x3fe9476af89c5e70              # double 0.789968
	.quad	0x3fd54cd31769a911              # double 0.332814
	.quad	0x3fe79e3c968943e1              # double 0.738066
	.quad	0x3fc972580c308feb              # double 0.19880200000000001
	.quad	0x3fc828aa433508f6              # double 0.18874099999999999
	.quad	0x3fe3902795703f2d              # double 0.61134699999999997
	.quad	0x3fec58be7296f651              # double 0.88583299999999998
	.quad	0x3fd0b634dad31fcd              # double 0.26112099999999999
	.quad	0x3fdb59d12cadddf4              # double 0.42735699999999999
	.quad	0x3fd417f4128bf3bf              # double 0.31396200000000002
	.quad	0x3fe5c3c18b502abb              # double 0.68014600000000003
	.quad	0x3fe09c4b90214ad3              # double 0.51907899999999996
	.quad	0x3fe635c7cd898b2f              # double 0.69406500000000004
	.quad	0x3fd2a6f3f52fc265              # double 0.29143999999999998
	.quad	0x3fba6ea854477ff1              # double 0.103251
	.quad	0x3fddc3a860dcb9aa              # double 0.46506700000000001
	.quad	0x3fe301669ced0b31              # double 0.59392100000000003
	.quad	0x3fed9a459103c8e2              # double 0.92508199999999996
	.quad	0x3fd34302b40f66a5              # double 0.30096499999999998
	.quad	0x3feb713059641f64              # double 0.85756699999999996
	.quad	0x3feb98958d9b5e96              # double 0.86237600000000003
	.quad	0x3f8ef49cf56eac86              # double 0.015115
	.quad	0x3fe001e68a0d349c              # double 0.50023200000000001
	.quad	0x3fe3d64f97edc7ef              # double 0.61991099999999999
	.quad	0x3fde0ffda4052d66              # double 0.46972599999999998
	.quad	0x3fc19c17225b749b              # double 0.137576
	.quad	0x3fb7ce3150dae3e7              # double 0.092990000000000003
	.quad	0x3fe9a8954a7f8013              # double 0.80182900000000001
	.quad	0x3fb375b813016484              # double 0.076014999999999999
	.quad	0x3fed92ec6bce8534              # double 0.92418500000000003
	.quad	0x3fe605e1c15097c8              # double 0.688218
	.quad	0x3fc2faf859429175              # double 0.148284
	.quad	0x3fe7b927d45a5fc8              # double 0.74135200000000001
	.quad	0x3fb1d16fc9bc7714              # double 0.069601999999999997
	.quad	0x3fc80713f077ccc0              # double 0.18771599999999999
	.quad	0x3fef358298cc1440              # double 0.97528199999999998
	.quad	0x3fe6f71001d5c316              # double 0.71765900000000005
	.quad	0x3fdf14013ec460ee              # double 0.48559600000000003
	.quad	0x3fd68fde2ef4e011              # double 0.35253099999999998
	.quad	0x3fe0478a6dacabc5              # double 0.50873299999999999
	.quad	0x3fefc2cc2d6a9c56              # double 0.99252899999999999
	.quad	0x3fd303f2d3c792d1              # double 0.29711599999999999
	.quad	0x3febf7574f722e1b              # double 0.87394300000000003
	.quad	0x3fd04ea077036c9c              # double 0.254799
	.quad	0x3fee6a5f84cad57c              # double 0.95048500000000002
	.quad	0x3fe2b862b27cbf6e              # double 0.58500799999999997
	.quad	0x3fe6a47cb70ac3a8              # double 0.70757899999999996
	.quad	0x3fe3a8d8665e02eb              # double 0.61436100000000005
	.quad	0x3fed24acf312b1b3              # double 0.91072699999999995
	.quad	0x3fe7ea0fd3b29a1c              # double 0.74732200000000004
	.quad	0x3fe0c011d3671ac1              # double 0.52344599999999997
	.quad	0x3f9dd8f92af9a8ce              # double 0.029148
	.quad	0x3fbaa68f4b61fe22              # double 0.104104
	.quad	0x3fcc961c36976bc2              # double 0.223331
	.quad	0x3fd42f23033a4724              # double 0.31537700000000002
	.quad	0x3fee31769a91105e              # double 0.94353799999999999
	.quad	0x3fc42a5e785b5b70              # double 0.15754299999999999
	.quad	0x3fb577d955714b9d              # double 0.083860000000000004
	.quad	0x3feab4289118c198              # double 0.83449200000000001
	.quad	0x3fb59d12cadddf44              # double 0.084428000000000003
	.quad	0x3fe9968f8e7ddca5              # double 0.79962900000000003
	.quad	0x3fd3d538ac18f81f              # double 0.30988900000000003
	.quad	0x3fc943632c1f42bb              # double 0.19736899999999999
	.quad	0x3fe18bb4d48882f1              # double 0.54830400000000001
	.quad	0x3fe99b068123810f              # double 0.80017400000000005
	.quad	0x3fec949e8815e397              # double 0.89314199999999999
	.quad	0x3fdc15d701d9f4d3              # double 0.43883299999999997
	.quad	0x3fc8d413122b7baf              # double 0.19397200000000001
	.quad	0x3fde4c4cdfaca362              # double 0.47340700000000002
	.quad	0x3fb7bc5de9c0229a              # double 0.092717999999999994
	.quad	0x3fdde28ed5f138bd              # double 0.46695300000000001
	.quad	0x3fdffbe33acd5b68              # double 0.499749
	.quad	0x3fcb4fb549f94856              # double 0.21337
	.quad	0x3fe9bd68405b39e2              # double 0.80437099999999995
	.quad	0x3fd44d61b2a27f1b              # double 0.31722299999999998
	.quad	0x3fc3946c332f0175              # double 0.15296699999999999
	.quad	0x3fee12c493426784              # double 0.93979100000000004
	.quad	0x3fe8dc9c4da9003f              # double 0.77693000000000001
	.quad	0x3fe29f644955b467              # double 0.58195699999999995
	.quad	0x3fe758298cc14403              # double 0.72951200000000005
	.quad	0x3fbfe9fadafd1138              # double 0.124664
	.quad	0x3febbaa79bbadc0a              # double 0.86653500000000006
	.quad	0x3fe99b0468448cf8              # double 0.80017300000000002
	.quad	0x3fe11bc558644524              # double 0.53464
	.quad	0x3fb557bc7f77af64              # double 0.08337
	.quad	0x3fda048e043a2164              # double 0.406528
	.quad	0x3fc80e30446b69db              # double 0.18793299999999999
	.quad	0x3fd8cc857f3061c8              # double 0.38748300000000002
	.quad	0x3fedd0fa58f7121b              # double 0.93176000000000003
	.quad	0x3fe37b762d83c6c9              # double 0.60882099999999995
	.quad	0x3fbf950b955f7836              # double 0.12336800000000001
	.quad	0x3fee09203a322af5              # double 0.93861399999999995
	.quad	0x3fe6cba0e8427419              # double 0.71235700000000002
	.quad	0x3fecf12a0ec74320              # double 0.90443899999999999
	.quad	0x3fe1fc88e79aae6d              # double 0.56207700000000005
	.quad	0x3f9c6822ff08893b              # double 0.027740999999999998
	.quad	0x3fdc46a1a500d5e9              # double 0.44181100000000001
	.quad	0x3fe2630ec3116228              # double 0.57459199999999999
	.quad	0x3fef8807357e670e              # double 0.98535499999999998
	.quad	0x3fcb02e6644d8772              # double 0.21102599999999999
	.quad	0x3fe08370cdc8754f              # double 0.51604499999999998
	.quad	0x3fb682d7b634dad3              # double 0.087933999999999998
	.quad	0x3fd011904b3c3e75              # double 0.25107200000000002
	.quad	0x3fef07a072d1aeb4              # double 0.96968100000000001
	.quad	0x3fd0a1a500d5e8d5              # double 0.25986599999999999
	.quad	0x3fd5b70ac3a860dd              # double 0.33929700000000002
	.quad	0x3fd47b84db9c7369              # double 0.32003900000000002
	.quad	0x3fe179e3864cb5bb              # double 0.54612899999999998
	.quad	0x3feda3b57c4e2f38              # double 0.926234
	.quad	0x3fefae685db76b3c              # double 0.99004000000000003
	.quad	0x3fea6fc9bc771434              # double 0.82614600000000004
	.quad	0x3fe30370cdc8754f              # double 0.59416999999999998
	.quad	0x3fe0b97353b4b2fb              # double 0.52263800000000005
	.quad	0x3feb31832fcac8e7              # double 0.84979400000000005
	.quad	0x3feb5fa43fe5c91d              # double 0.85542499999999999
	.quad	0x3fbdb5b70691ea79              # double 0.116054
	.quad	0x3fd1669ced0b30b6              # double 0.27188800000000002
	.quad	0x3fc83e8dda48b652              # double 0.18940899999999999
	.quad	0x3fc1774aba387592              # double 0.13645299999999999
	.quad	0x3fed1a06a6e32e38              # double 0.90942699999999999
	.quad	0x3fe317df19d66adb              # double 0.59666399999999997
	.quad	0x3fcd30941c8216c6              # double 0.228045
	.quad	0x3fe537fbefd00714              # double 0.66308400000000001
	.quad	0x3feaa7008a697aee              # double 0.83288600000000002
	.quad	0x3fef4ff43419e300              # double 0.97850999999999999
	.quad	0x3fd8cf850df15a4b              # double 0.38766600000000001
	.quad	0x3fc3db3bfb58d152              # double 0.15512799999999999
	.quad	0x3fcf1ceaf251c194              # double 0.24307000000000001
	.quad	0x3fee435efa615a8e              # double 0.94572400000000001
	.quad	0x3fdc21101b003687              # double 0.43951800000000002
	.quad	0x3fdcd972cd7cf5f5              # double 0.45077200000000001
	.quad	0x3fe6558c8eef1bac              # double 0.69794299999999998
	.quad	0x3fd3c5974e65bea1              # double 0.30893500000000002
	.quad	0x3fe46b15f88fc936              # double 0.63807199999999997
	.quad	0x3fe3e0029f16b11c              # double 0.62109499999999995
	.quad	0x3fe4dd6bebe1650a              # double 0.65202899999999997
	.quad	0x3fcb934699418506              # double 0.21543200000000001
	.quad	0x3fe7192a737110e4              # double 0.72182199999999996
	.quad	0x3fefb9f77292c493              # double 0.99145099999999997
	.quad	0x3fcfe2ac322291fb              # double 0.24910499999999999
	.quad	0x3fb1e8e60807357e              # double 0.069959999999999994
	.quad	0x3fc44cd74927913f              # double 0.15859500000000001
	.quad	0x3fbaef1bac2df0d4              # double 0.105211
	.quad	0x3fd6a8d64d7f0ed4              # double 0.35405500000000001
	.quad	0x3fc69aaa3ad18d26              # double 0.176595
	.quad	0x3fe19e16d6dc1a48              # double 0.55054800000000004
	.quad	0x3feb47e49b1fab97              # double 0.85252600000000001
	.quad	0x3fe184e1e71044f2              # double 0.54747100000000004
	.quad	0x3fe01df1172ef0ae              # double 0.50365499999999996
	.quad	0x3fee34eb9a176ddb              # double 0.94396000000000002
	.quad	0x3feabdd97f62b6ae              # double 0.83567499999999995
	.quad	0x3fb4a8198f1d3ed5              # double 0.080689999999999998
	.quad	0x3fd97eaa2a0a9585              # double 0.39835599999999999
	.quad	0x3fedf22c01e68a0d              # double 0.93581199999999998
	.quad	0x3f9d0c3d25247cb7              # double 0.028367
	.quad	0x3fd241bb8c32a8ca              # double 0.28526200000000002
	.quad	0x3fe27c5cdd50a88f              # double 0.577681
	.quad	0x3fe6fa871a3b14a9              # double 0.718082
	.quad	0x3fe197e34b945309              # double 0.54979100000000003
	.quad	0x3fde94c016052503              # double 0.477829
	.quad	0x3fd210c2c5e2cdc0              # double 0.282273
	.quad	0x3fc25cfede97d06c              # double 0.14346300000000001
	.quad	0x3fd43bf727136a40              # double 0.31616
	.quad	0x3fe0c011d3671ac1              # double 0.52344599999999997
	.quad	0x3fdd6cce5f7403de              # double 0.45976600000000001
	.quad	0x3fda1704ff43419e              # double 0.40765499999999999
	.quad	0x3fddfd8adab9f55a              # double 0.46860000000000002
	.quad	0x3f9bb1af3a14cec4              # double 0.027045
	.quad	0x3fd920ccff21b3af              # double 0.392627
	.quad	0x3fde670e2c12ad82              # double 0.47504000000000002
	.quad	0x3fde00a393ee5eee              # double 0.46878900000000001
	.quad	0x3fd9f74cd31769a9              # double 0.405719
	.quad	0x3fb7fde7210be942              # double 0.093717999999999995
	.quad	0x3fe9f1bcdbbe0158              # double 0.81075900000000001
	.quad	0x3fb99513f8db4891              # double 0.099931000000000006
	.quad	0x3fc25b749adc8fb8              # double 0.14341599999999999
	.quad	0x3fbb368ad6883772              # double 0.10630100000000001
	.quad	0x3fe5af5dbb9cf9a0              # double 0.67765699999999995
	.quad	0x3fead76683c297c0              # double 0.83879400000000004
	.quad	0x3fd1cc25072085b2              # double 0.27808500000000003
	.quad	0x3feb9b994e1a3f46              # double 0.86274399999999996
	.quad	0x3fbe28bb0a2ca9ac              # double 0.117809
	.quad	0x3fc1168f8e7ddca5              # double 0.13350100000000001
	.quad	0x3fe77fcb923a29c7              # double 0.73434999999999995
	.quad	0x3fd3be121ee67514              # double 0.30847599999999997
	.quad	0x3fea409a24031487              # double 0.82038599999999995
	.quad	0x3fd001f31f46ed24              # double 0.25011899999999998
	.quad	0x3f93b6cbd987c632              # double 0.019251999999999998
	.quad	0x3f9c69b5a63f9a4a              # double 0.027747000000000001
	.quad	0x3fdde19fc2a8869c              # double 0.46689599999999998
	.quad	0x3fc9a63f9a49c2c2              # double 0.20038600000000001
	.quad	0x3fe35a272862f599              # double 0.60475500000000004
	.quad	0x3fee1a47a9e2bcf9              # double 0.94070799999999999
	.quad	0x3fd2e37de939eadd              # double 0.29513499999999998
	.quad	0x3fdf182a9930be0e              # double 0.48585
	.quad	0x3fdc11947cfa26a2              # double 0.43857299999999999
	.quad	0x3fc38f9b13165d3a              # double 0.15282000000000001
	.quad	0x3fe7ab5807fed203              # double 0.73966600000000005
	.quad	0x3fde61fe21d96e9c              # double 0.47473100000000001
	.quad	0x3fa926a65cf67b1c              # double 0.049123
	.quad	0x3fe4a82e87d2c7b9              # double 0.64553000000000005
	.quad	0x3fd310ba6266fd65              # double 0.29789599999999999
	.quad	0x3fd25e2478854cdb              # double 0.28699599999999997
	.quad	0x3fe49307af20ea5b              # double 0.64294799999999996
	.quad	0x3fc38e0008637bd0              # double 0.15277099999999999
	.quad	0x3fef3e7296f6512b              # double 0.97637300000000004
	.quad	0x3fd4f2f555821294              # double 0.32732899999999998
	.quad	0x3fa1a500d5e8d541              # double 0.034462
	.quad	0x3fef04295a6c5d20              # double 0.96925799999999995
	.quad	0x3fe137b07075b3e1              # double 0.53804799999999997
	.quad	0x3fc75dedf1e0828c              # double 0.18255399999999999
	.quad	0x3feb14940bbb1f25              # double 0.84626199999999996
	.quad	0x3fe48a6b93ccd0ff              # double 0.64189700000000005
	.quad	0x3fe018def416bdb2              # double 0.50303600000000004
	.quad	0x3fe929e6eeb70260              # double 0.78636499999999998
	.quad	0x3fe03996fa82e87d              # double 0.50702999999999998
	.quad	0x3fe5787ce95faa8b              # double 0.67095800000000005
	.quad	0x3fd50e0653005815              # double 0.32898100000000002
	.quad	0x3fead77b7c7820a3              # double 0.83880399999999999
	.quad	0x3fdcdf505d0fa58f              # double 0.45112999999999998
	.quad	0x3fd5e19fc2a8869c              # double 0.34189599999999998
	.quad	0x3fd0f78feef5ec81              # double 0.26511000000000001
	.quad	0x3fd04b61fe21d96f              # double 0.25460100000000002
	.quad	0x3fbde2478854cdb8              # double 0.116734
	.quad	0x3fca158fb43d89ce              # double 0.20378299999999999
	.quad	0x3fef5cca70d1fa33              # double 0.98007699999999997
	.quad	0x3fe5a1f080303c08              # double 0.67601800000000001
	.quad	0x3fc4357a355043e5              # double 0.15788199999999999
	.quad	0x3f859578a2a90cd4              # double 0.010539
	.quad	0x3fdb503b81b64e05              # double 0.42677199999999998
	.quad	0x3fd8eb0b7c3504c5              # double 0.38934600000000003
	.quad	0x3fe474b407032980              # double 0.63924599999999998
	.quad	0x3fd2c219eb6390c9              # double 0.293097
	.quad	0x3fe8d48238540464              # double 0.77594099999999999
	.quad	0x3fc7fa11a975afb0              # double 0.18731900000000001
	.quad	0x3fe92ff4ba51a006              # double 0.78710400000000003
	.quad	0x3fe0962f166e008f              # double 0.51833300000000004
	.quad	0x3fd8ef8487b99d45              # double 0.38961899999999999
	.quad	0x3fe541333b96af04              # double 0.66420900000000005
	.quad	0x3fe039c51dabe271              # double 0.50705199999999995
	.quad	0x3fea16a6a012599f              # double 0.81526500000000002
	.quad	0x3fd9685122318330              # double 0.39699200000000001
	.quad	0x3fb84577d955714c              # double 0.094810000000000005
	.quad	0x3fc7eb2074ea8da8              # double 0.186863
	.quad	0x3fdedd69d30270f4              # double 0.48226400000000003
	.quad	0x3fe4a9478c868ba0              # double 0.64566400000000002
	.quad	0x3fb077ff151e7536              # double 0.064330999999999999
	.quad	0x3feac77ff151e753              # double 0.83685299999999996
	.quad	0x3fdfd084e831ad21              # double 0.49710199999999999
	.quad	0x3fec23c21187e7c0              # double 0.87936499999999995
	.quad	0x3fbff748a159817c              # double 0.12486700000000001
	.quad	0x3fe3eb6177ea1c69              # double 0.62248300000000001
	.quad	0x3fe22b94d9407896              # double 0.56781999999999999
	.quad	0x3feb7deb52c9d170              # double 0.85912100000000002
	.quad	0x3fda3f7ced916873              # double 0.41012500000000002
	.quad	0x3fe2b7fbefd00714              # double 0.58495900000000001
	.quad	0x3fc7ea9a3d2d87f9              # double 0.18684700000000001
	.quad	0x3fe4f4927913e814              # double 0.65485499999999996
	.quad	0x3fddd3996fa82e88              # double 0.46604000000000001
	.quad	0x3fd6a1a93293d103              # double 0.35361700000000001
	.quad	0x3fd5fe154434e337              # double 0.34363300000000002
	.quad	0x3fe9f3c70c996b76              # double 0.81100799999999995
	.quad	0x3fd184449dbec248              # double 0.273698
	.quad	0x3fed62aa19439de5              # double 0.91829400000000005
	.quad	0x3fe05989df1172ef              # double 0.51093
	.quad	0x3fe61f8c21e1d218              # double 0.69135100000000005
	.quad	0x3fede9b7bf1e8e61              # double 0.93478000000000006
	.quad	0x3fbda47a9e2bcf92              # double 0.11579100000000001
	.quad	0x3fe2b72a38b8ae32              # double 0.58485900000000002
	.quad	0x3fe08a6dacabc515              # double 0.51689799999999997
	.quad	0x3fc87229e90795f6              # double 0.19098399999999999
	.quad	0x3fe6d377e1b8ed1c              # double 0.713314
	.quad	0x3fc3c792d1287c20              # double 0.154528
	.quad	0x3fe6a57646ae3a3b              # double 0.70769800000000005
	.quad	0x3fe7f763e4abe6a3              # double 0.74894899999999998
	.quad	0x3feca4df47f993d5              # double 0.89512599999999998
	.quad	0x3fd44df8b1572581              # double 0.31725900000000001
	.quad	0x3fe72a2a0a958538              # double 0.72389700000000001
	.quad	0x3fe85e5082cf52b9              # double 0.761513
	.quad	0x3fbc3c6c97d8cf3a              # double 0.11029700000000001
	.quad	0x3fe0295a6c5d206d              # double 0.50504800000000005
	.quad	0x3fe67cc7d1bb4917              # double 0.70273200000000002
	.quad	0x3fcfee807bbb6241              # double 0.24946599999999999
	.quad	0x3f5c087442c7fbad              # double 0.0017110000000000001
	.quad	0x3fc96ea4228997c4              # double 0.198689
	.quad	0x3fd96a593a2df938              # double 0.39711600000000002
	.quad	0x3fd691148fd9fd37              # double 0.352605
	.quad	0x3fbb724fa8b4bf90              # double 0.107213
	.quad	0x3fdb66cf41f212d7              # double 0.42814999999999998
	.quad	0x3fc1f1cfbb949625              # double 0.14019200000000001
	.quad	0x3fe7da87a072d1af              # double 0.74542600000000003
	.quad	0x3fed220ff540895d              # double 0.910408
	.quad	0x3fd3e6b8305d95dd              # double 0.31095699999999998
	.quad	0x3fe6de6ddf00abf7              # double 0.71465199999999995
	.quad	0x3fec69899bf5946c              # double 0.88788299999999997
	.quad	0x3fe4352220bc382a              # double 0.63148599999999999
	.quad	0x3fe810cb295e9e1b              # double 0.75205
	.quad	0x3f915b9a5a89b952              # double 0.016951000000000001
	.quad	0x3fe5c347e8ccdd94              # double 0.68008800000000003
	.quad	0x3fe8c52e72da1230              # double 0.77407000000000004
	.quad	0x3fe0ba3875925354              # double 0.52273199999999997
	.quad	0x3fe9310342aa9f7b              # double 0.78723299999999996
	.quad	0x3fd5430b178b3700              # double 0.33221699999999998
	.quad	0x3fc7307af20ea5b5              # double 0.18116699999999999
	.quad	0x3fe4b686a4ca4f44              # double 0.647281
	.quad	0x3fb8dcdb37c99ae9              # double 0.097119999999999998
	.quad	0x3fee4ce5f7403dde              # double 0.94688700000000003
	.quad	0x3fef8e2e2b8c75c5              # double 0.98610600000000003
	.quad	0x3fed6892253111f1              # double 0.91901500000000003
	.quad	0x3fea45bf26f1dc51              # double 0.82101400000000002
	.quad	0x3fcd1a32b12d3416              # double 0.22736200000000001
	.quad	0x3fd8424a276b7ed4              # double 0.37904599999999999
	.quad	0x3fc7ad3a604e1e71              # double 0.184974
	.quad	0x3fe091e85fd04a30              # double 0.51781100000000002
	.quad	0x3fd2d6cf850df15a              # double 0.29436099999999998
	.quad	0x3fb483cafb3b7521              # double 0.080135999999999999
	.quad	0x3fa52f5dbb9cf9a0              # double 0.041376999999999997
	.quad	0x3fe05ce7cd035372              # double 0.51134100000000005
	.quad	0x3fd2ad9ad85dfa87              # double 0.29184599999999999
	.quad	0x3fd0af251c193b3a              # double 0.26068999999999998
	.quad	0x3fe7efed634549b6              # double 0.74803799999999998
	.quad	0x3fe5e74afd545415              # double 0.68448399999999998
	.quad	0x3fa43d03968d759f              # double 0.039528000000000001
	.quad	0x3fedeb5d462c343b              # double 0.93498099999999995
	.quad	0x3fd13e6c4c5974e6              # double 0.26943499999999998
	.quad	0x3fd71a5870da5daf              # double 0.360983
	.quad	0x3fdd7e90ff972474              # double 0.46084999999999998
	.quad	0x3fe87f2a172abef0              # double 0.76552299999999995
	.quad	0x3feaf837b4a2339c              # double 0.84279999999999999
	.quad	0x3fcb2d77318fc505              # double 0.21232500000000001
	.quad	0x3fd5bb6aa4b9884c              # double 0.33956399999999998
	.quad	0x3fe8cea28fe260b3              # double 0.77522400000000002
	.quad	0x3fdd02de00d1b717              # double 0.45329999999999998
	.quad	0x3fe56260b2c83ec9              # double 0.66825900000000005
	.quad	0x3fa60e736049ecb3              # double 0.043078999999999999
	.quad	0x3fda35653c9abb02              # double 0.40950900000000001
	.quad	0x3fea0de4c51116a9              # double 0.81419600000000003
	.quad	0x3faf5579af1886e0              # double 0.061199000000000003
	.quad	0x3fea05532617c1be              # double 0.81315000000000004
	.quad	0x3fdb16bdb1a6d699              # double 0.423263
	.quad	0x3fe07023e9ea1405              # double 0.51368899999999995
	.quad	0x3fc081dc0db2702a              # double 0.12896299999999999
	.quad	0x3fabd9cae21101b0              # double 0.054396
	.quad	0x3f8a14cec41dd1a2              # double 0.012735
	.quad	0x3fe74755ffe6d58d              # double 0.72745800000000005
	.quad	0x3fe0e687f455a7d2              # double 0.52814099999999997
	.quad	0x3fe8689a88ace24c              # double 0.76276900000000003
	.quad	0x3fdcf383f0bae89f              # double 0.45236300000000002
	.quad	0x3fef4cff21b3aeef              # double 0.97814900000000004
	.quad	0x3fedd1d8a5482385              # double 0.93186599999999997
	.quad	0x3fb3a0c6b484d76b              # double 0.076672000000000004
	.quad	0x3f7c65c70435efa6              # double 0.0069329999999999999
	.quad	0x3fe62f89c5e6ff7e              # double 0.693303
	.quad	0x3fb8db0574b40703              # double 0.097091999999999998
	.quad	0x3fd2270b06c43f60              # double 0.28363300000000002
	.quad	0x3fe04ae85b9e8c48              # double 0.50914400000000004
	.quad	0x3fd4ce2089e34331              # double 0.32508100000000001
	.quad	0x3fddae70c1333b97              # double 0.46377200000000002
	.quad	0x3fdf910c2c5e2cdc              # double 0.493228
	.quad	0x3fe24a66559f6ec6              # double 0.57158200000000003
	.quad	0x3fecbac2df0d4131              # double 0.89779799999999998
	.quad	0x3fd39435ac8a3726              # double 0.305921
	.quad	0x3fe8abda0dfdef85              # double 0.77097800000000005
	.quad	0x3fee375ea67e846a              # double 0.94425899999999996
	.quad	0x3fed9fc4c165907e              # double 0.92575300000000005
	.quad	0x3fe1593e5fb71fbc              # double 0.54214399999999996
	.quad	0x3fa0e3ac0c62e4d2              # double 0.032987000000000002
	.quad	0x3fe656366d7a56de              # double 0.69802399999999998
	.quad	0x3fe0831ceaf251c2              # double 0.51600500000000005
	.quad	0x3fccc00da1a93294              # double 0.22461100000000001
	.quad	0x3fb9e492bc2fc697              # double 0.101144
	.quad	0x3fe2e77d523b3637              # double 0.59075800000000001
	.quad	0x3fdb43bf727136a4              # double 0.42601
	.quad	0x3fd33e0370cdc875              # double 0.30065999999999998
	.quad	0x3fd8da554b8bef8d              # double 0.388326
	.quad	0x3fce16052502eec8              # double 0.23504700000000001
	.quad	0x3fe885ad538ac190              # double 0.76631800000000005
	.quad	0x3fda393ab430f495              # double 0.40974300000000002
	.quad	0x3fed6468cac4b4d0              # double 0.91850699999999996
	.quad	0x3fe92d42c3c9eecc              # double 0.786775
	.quad	0x3fd1e96c3fc43b2e              # double 0.27987200000000001
	.quad	0x3fdc4866a11ec919              # double 0.44191900000000001
	.quad	0x3fe6cc985f06f694              # double 0.71247499999999997
	.quad	0x3fe87b9e060fe47a              # double 0.76509000000000005
	.quad	0x3fb94f3775b81301              # double 0.098864999999999995
	.quad	0x3fecbde1e2de8709              # double 0.89817899999999995
	.quad	0x3fd956b873797460              # double 0.39591799999999999
	.quad	0x3fd3aec0724b76f7              # double 0.30754100000000001
	.quad	0x3fe0d388a8b08dd2              # double 0.52582200000000001
	.quad	0x3fd90cb295e9e1b1              # double 0.39140000000000003
	.quad	0x3fae6490a350d280              # double 0.059360999999999997
	.quad	0x3fecd0b30b5aa716              # double 0.90047600000000005
	.quad	0x3fdf3eb399f5dfec              # double 0.48820200000000002
	.quad	0x3fd621d53cddd6e0              # double 0.34581499999999998
	.quad	0x3fe5c42a66dbd72c              # double 0.68019600000000002
	.quad	0x3fe2073ffac1d29e              # double 0.56338500000000002
	.quad	0x3fe329b6b2af1455              # double 0.59884199999999999
	.quad	0x3fed66106ab14ec2              # double 0.918709
	.quad	0x3fe4aa0cae642bfa              # double 0.64575800000000005
	.quad	0x3fe96cf63800218e              # double 0.79455100000000001
	.quad	0x3feebc5de9c0229a              # double 0.96049399999999996
	.quad	0x3feedd3bafd976ff              # double 0.96450599999999997
	.quad	0x3fe9538ef34d6a16              # double 0.79144999999999999
	.quad	0x3fe966a76965f527              # double 0.79378099999999996
	.quad	0x3fcc9f9ce8d972cd              # double 0.22362099999999999
	.quad	0x3fd6b018611fd588              # double 0.35449799999999998
	.quad	0x3fde75afaf859429              # double 0.47593299999999999
	.quad	0x3fdc196d8f4f93bc              # double 0.439052
	.quad	0x3f91cd5f99c38b05              # double 0.017385000000000001
	.quad	0x3feabb18dac258d6              # double 0.83533900000000005
	.quad	0x3fdea37ac3eb7cbb              # double 0.47872799999999999
	.quad	0x3fd74cc25072085b              # double 0.36405999999999999
	.quad	0x3faa22d5171e29b7              # double 0.051047000000000002
	.quad	0x3fc90a2ca9ac3654              # double 0.19562299999999999
	.quad	0x3fdb145953586ca9              # double 0.42311700000000002
	.quad	0x3fe5e8cef672b884              # double 0.68466899999999997
	.quad	0x3fe0a57646ae3a3b              # double 0.52019800000000005
	.quad	0x3fe57a48301a79ff              # double 0.67117700000000002
	.quad	0x3fe1a8b2a6b0d951              # double 0.55184299999999997
	.quad	0x3fc7233df2a9d628              # double 0.18076300000000001
	.quad	0x3fad43f1c75818c6              # double 0.057159000000000001
	.quad	0x3fd799ed7c6fbd27              # double 0.36876999999999999
	.quad	0x3fe794bbe4473cd5              # double 0.73690599999999995
	.quad	0x3fdd33b107746888              # double 0.45628000000000002
	.quad	0x3feed0247021d10b              # double 0.96290799999999998
	.quad	0x3fab80ecfa69be0a              # double 0.053718000000000002
	.quad	0x3fdad7d3910c2c5e              # double 0.41942299999999999
	.quad	0x3fe7686a4ca4f441              # double 0.73149600000000004
	.quad	0x3fe0b95a294141ea              # double 0.52262600000000003
	.quad	0x3fba39a38fbca106              # double 0.10244200000000001
	.quad	0x3fe2ab2e1693c03c              # double 0.58339600000000003
	.quad	0x3fcd1f9acffa7eb7              # double 0.22752700000000001
	.quad	0x3fd03b7952d234ec              # double 0.25363000000000002
	.quad	0x3febae74f2f123c4              # double 0.86504599999999998
	.quad	0x3fe35c96030c23fb              # double 0.60505200000000003
	.quad	0x3fed78ab0c88a47f              # double 0.92098000000000002
	.quad	0x3feef204295a6c5d              # double 0.96704299999999998
	.quad	0x3fcc8d1958969a0b              # double 0.223056
	.quad	0x3fef889a02752546              # double 0.985425
	.quad	0x3fc8e46cfc829cfe              # double 0.194471
	.quad	0x3fd2a90cd423d923              # double 0.29156799999999999
	.quad	0x3fd2da87a072d1af              # double 0.29458800000000002
	.quad	0x3fd8460ed80a17b1              # double 0.379276
	.quad	0x3fe2c37a3db3bfb6              # double 0.58636200000000005
	.quad	0x3fc7e2e6ea854478              # double 0.186612
	.quad	0x3fe995a8deb0fadf              # double 0.79951899999999998
	.quad	0x3fd6121682f94424              # double 0.34485399999999999
	.quad	0x3fe99ab29e4d5d81              # double 0.80013400000000001
	.quad	0x3fe88dfdef8487ba              # double 0.76733300000000004
	.quad	0x3fe3ea5b530ced4e              # double 0.62235799999999997
	.quad	0x3fe72369fcf3dc05              # double 0.72307299999999997
	.quad	0x3fe98b32ce89656f              # double 0.79824200000000001
	.quad	0x3fe1ab239a38fbca              # double 0.55214099999999999
	.quad	0x3fe2996fa82e87d3              # double 0.58123000000000002
	.quad	0x3fe2917507e9d94d              # double 0.58025599999999999
	.quad	0x3fedc1ebc83a96d5              # double 0.92992200000000003
	.quad	0x3fe1e8be2f7b17ce              # double 0.55966099999999996
	.quad	0x3fae35c5b4aa9718              # double 0.059004000000000001
	.quad	0x3fd7de7a743a6480              # double 0.37295400000000001
	.quad	0x3fd5fca85caafbc2              # double 0.34354600000000002
	.quad	0x3fefe295208e1501              # double 0.99640899999999998
	.quad	0x3fa8c79f666234a8              # double 0.048397999999999997
	.quad	0x3fe6d6777079e59f              # double 0.71367999999999998
	.quad	0x3fc437de939eadd6              # double 0.15795500000000001
	.quad	0x3fee8b08dd1e53a8              # double 0.95447199999999998
	.quad	0x3fe424723aafff37              # double 0.62944900000000004
	.quad	0x3fd03860999dcb58              # double 0.25344100000000003
	.quad	0x3fe4b9b024f6598e              # double 0.64766699999999999
	.quad	0x3fe30b69552e2fbe              # double 0.59514299999999998
	.quad	0x3fd99e0e736049ed              # double 0.40027200000000002
	.quad	0x3fe7a4c404a72eae              # double 0.73886300000000005
	.quad	0x3fbd99dcb5781c71              # double 0.115629
	.quad	0x3fef257eaa2a0a96              # double 0.97332700000000005
	.quad	0x3fe65668c2613900              # double 0.698048
	.quad	0x3fe909331a08bfc2              # double 0.78237299999999999
	.quad	0x3fd86d5cfaacd9e8              # double 0.38167499999999999
	.quad	0x3fd93b9ae0c17657              # double 0.39426299999999997
	.quad	0x3fd17de939eadd59              # double 0.27331
	.quad	0x3fede5d9e40c8473              # double 0.93430800000000003
	.quad	0x3fe14382a12f9011              # double 0.53949100000000005
	.quad	0x3feb33d6c7219221              # double 0.850078
	.quad	0x3feb1eeaa6d26741              # double 0.84752400000000006
	.quad	0x3fef8793dd97f62b              # double 0.98529999999999995
	.quad	0x3fd8c13fd0d0678c              # double 0.386795
	.quad	0x3fa2ebc408d8ec96              # double 0.036955000000000002
	.quad	0x3fdd9abb01c92ddc              # double 0.46256900000000001
	.quad	0x3fe36299524bfd2f              # double 0.60578600000000005
	.quad	0x3f95e679463cfb33              # double 0.021387
	.quad	0x3f3797cc39ffd60f              # double 3.6000000000000002E-4
	.quad	0x3fee1274e22a2c23              # double 0.93975299999999995
	.quad	0x3fe26a0ba1f4b1ee              # double 0.57544499999999998
	.quad	0x3fae32c1f42bb667              # double 0.058980999999999999
	.quad	0x3fe6e234a87e38eb              # double 0.715113
	.quad	0x3fed8a2a90cd423e              # double 0.92311600000000005
	.quad	0x3fe05d31337eb28e              # double 0.51137600000000005
	.quad	0x3fe0372a38b8ae32              # double 0.50673400000000002
	.quad	0x3fd6c48adeebb342              # double 0.35574600000000001
	.quad	0x3fe276e1deacc921              # double 0.57701199999999997
	.quad	0x3fb77ad4b2745bf2              # double 0.091717999999999993
	.quad	0x3fd1cfd8f0c77dd8              # double 0.27831099999999998
	.quad	0x3fc848d7e02645e5              # double 0.189723
	.quad	0x3feb7d9ba1b19610              # double 0.85908300000000004
	.quad	0x3fc535653c9abb02              # double 0.16569200000000001
	.quad	0x3fed430b178b3700              # double 0.91443399999999997
	.quad	0x3fe760d4562e09ff              # double 0.73057000000000005
	.quad	0x3fd3aa1d755bccaf              # double 0.30725799999999998
	.quad	0x3fe40af1cb89d6ae              # double 0.626336
	.quad	0x3fed9dd1a21ea359              # double 0.92551499999999998
	.quad	0x3fe2cc9c90c4dec2              # double 0.58747700000000003
	.quad	0x3fc5935fc3b4f616              # double 0.16855999999999999
	.quad	0x3fd0e92d55a3a084              # double 0.26423200000000002
	.quad	0x3fd7f59ccfaeff5c              # double 0.37436599999999998
	.quad	0x3fefae2da554b8bf              # double 0.990012
	.quad	0x3fe6d783dff3f0fe              # double 0.713808
	.quad	0x3fee1bcba3012168              # double 0.94089299999999997
	.quad	0x3fe17913e81450f0              # double 0.54603000000000002
	.quad	0x3fd0374794ea0770              # double 0.25337399999999999
	.quad	0x3fb904816f0068dc              # double 0.097725000000000006
	.quad	0x3fe7f4ff865d7cb3              # double 0.74865700000000002
	.quad	0x3fe7fbe33acd5b68              # double 0.749498
	.quad	0x3fc2f7d30ad46f58              # double 0.14818799999999999
	.quad	0x3febfa4c61d8622c              # double 0.87430399999999997
	.quad	0x3feecba732df505d              # double 0.96235999999999999
	.quad	0x3fc8c9d9d3458cd2              # double 0.19366
	.quad	0x3fdfc443914f483d              # double 0.49635400000000002
	.quad	0x3fdd799e518f3ecd              # double 0.46054800000000001
	.quad	0x3fe42ff4ba51a006              # double 0.63085400000000003
	.quad	0x3fe5bfc86cebbba5              # double 0.67966099999999996
	.quad	0x3feff9d4d834091c              # double 0.99924699999999999
	.quad	0x3febe631f8a0902e              # double 0.87185000000000001
	.quad	0x3fac1355475a31a5              # double 0.054835000000000002
	.quad	0x3fb3e5a78f25a251              # double 0.077723
	.quad	0x3fecd0d0678c0054              # double 0.90049000000000001
	.quad	0x3fd33d1cc100e6b0              # double 0.30060500000000001
	.quad	0x3feaae1cde5d1809              # double 0.833754
	.quad	0x3fc7ec679cc74b84              # double 0.18690200000000001
	.quad	0x3fe461a3f4666eca              # double 0.63691900000000001
	.quad	0x3fe60c111ada76d9              # double 0.68897299999999995
	.quad	0x3faa03e63e8dda49              # double 0.050811000000000002
	.quad	0x3fe9a1cac083126f              # double 0.80100000000000005
	.quad	0x3fef2617c1bda512              # double 0.97340000000000004
	.quad	0x3fe2d1d4738a3b58              # double 0.58811400000000003
	.quad	0x3fe49d3458cd20b0              # double 0.64419000000000004
	.quad	0x3fef2da33bd9cae2              # double 0.97432099999999999
	.quad	0x3fc546cb966be7b0              # double 0.16622300000000001
	.quad	0x3fed68a2ec28b2a7              # double 0.91902300000000003
	.quad	0x3fe27f2c3009b307              # double 0.57802399999999998
	.quad	0x3fd15bf26f1dc50d              # double 0.27123700000000001
	.quad	0x3fdec49774256bca              # double 0.48074899999999998
	.quad	0x3febc9cf56eac860              # double 0.86838499999999996
	.quad	0x3fef3cad9ad85dfb              # double 0.97615700000000005
	.quad	0x3fb1ec7000431bdf              # double 0.070014000000000007
	.quad	0x3fea6e5471715c64              # double 0.82596800000000003
	.quad	0x3fe05cd2d44dca8e              # double 0.51133099999999998
	.quad	0x3fe06536501e2585              # double 0.512355
	.quad	0x3fcecf312b1b36bd              # double 0.240698
	.quad	0x3fc0e41919ac7970              # double 0.13196099999999999
	.quad	0x3fe743b2dd377e1c              # double 0.72701400000000005
	.quad	0x3fef2dcb1465e892              # double 0.97433999999999998
	.quad	0x3fc826c3b927d45a              # double 0.18868299999999999
	.quad	0x3fd5245b291b823d              # double 0.33034400000000003
	.quad	0x3feb78b9baa1511e              # double 0.858487
	.quad	0x3fe092dfd694ccab              # double 0.51792899999999997
	.quad	0x3fb6b191dde37586              # double 0.088647000000000003
	.quad	0x3fe5d7dbf487fcb9              # double 0.68259999999999998
	.quad	0x3fbe3315d701d9f5              # double 0.117967
	.quad	0x3fd03f2d3c792d13              # double 0.25385600000000003
	.quad	0x3fdc33bd9cae2110              # double 0.44065799999999999
	.quad	0x3fee5fa43fe5c91d              # double 0.94917499999999999
	.quad	0x3feaec84f8f8a4c2              # double 0.84137200000000001
	.quad	0x3fbf735c182ecaef              # double 0.122854
	.quad	0x3febdd872f33ca32              # double 0.87079200000000001
	.quad	0x3fd7b16c1e364bec              # double 0.37020399999999998
	.quad	0x3fe874e0114d2f5e              # double 0.76426700000000003
	.quad	0x3fdb7e52157689ca              # double 0.42958499999999999
	.quad	0x3f8778dd616f86a1              # double 0.011461000000000001
	.quad	0x3fef9cc964628028              # double 0.98788900000000001
	.quad	0x3fedb914f483cafb              # double 0.92884299999999997
	.quad	0x3fd5366516db0dd8              # double 0.33144499999999999
	.quad	0x3fcc044284dfce31              # double 0.21887999999999999
	.quad	0x3fc129802c0a4a06              # double 0.134079
	.quad	0x3f6a0ad8a116659d              # double 0.003179
	.quad	0x3fd187160956c0d7              # double 0.27387
	.quad	0x3fef0d6d3b6cbd98              # double 0.97038899999999994
	.quad	0x3feca13a0c6b484d              # double 0.89468099999999995
	.quad	0x3faa0620ab713272              # double 0.050827999999999998
	.quad	0x3fd4f572de43ed96              # double 0.32748100000000002
	.quad	0x3fe8f151e75360d0              # double 0.77945799999999998
	.quad	0x3fd7f1a9fbe76c8b              # double 0.37412499999999999
	.quad	0x3fe7e7296f6512a9              # double 0.74696799999999997
	.quad	0x3fe0aca9ac365450              # double 0.52107700000000001
	.quad	0x3fe61e0c5a8155d6              # double 0.691168
	.quad	0x3fe0cbfb15b573eb              # double 0.52490000000000003
	.quad	0x3feac26dce39b457              # double 0.83623400000000003
	.quad	0x3fe90576cce5f740              # double 0.78191699999999997
	.quad	0x3fd12120e1f7d73d              # double 0.26764700000000002
	.quad	0x3febd99029ae4f33              # double 0.87030799999999997
	.quad	0x3fcec2938de6ddf0              # double 0.240313
	.quad	0x3fe3f76c4827b6fe              # double 0.62395299999999998
	.quad	0x3fab8f14db59578a              # double 0.053825999999999999
	.quad	0x3fb6f544bb1af3a1              # double 0.089679999999999996
	.quad	0x3fe379463cfb3312              # double 0.60855400000000004
	.quad	0x3fd62163fdd65a14              # double 0.34578799999999998
	.quad	0x3f9ba3ca7503b81b              # double 0.026991999999999999
	.quad	0x3fec5f9bdc69f8c2              # double 0.88667099999999999
	.quad	0x3fed0e29f9ce8d97              # double 0.90797899999999998
	.quad	0x3fd9128bf3bea91e              # double 0.39175700000000002
	.quad	0x3fed445ed4a1ad64              # double 0.91459599999999996
	.quad	0x3fdc6a161e4f7660              # double 0.44397500000000001
	.quad	0x3fe4df06f6944674              # double 0.65222500000000005
	.quad	0x3fd5a3a8e71476b0              # double 0.33811400000000003
	.quad	0x3fe89cb252ce032e              # double 0.76912800000000003
	.quad	0x3fe351cc100e6afd              # double 0.60373500000000002
	.quad	0x3fa788fc9363f573              # double 0.045967000000000001
	.quad	0x3f9219a847b24639              # double 0.017676000000000001
	.quad	0x3fb9bf7ad4b2745c              # double 0.100578
	.quad	0x3fade2ac322291fb              # double 0.058369999999999998
	.quad	0x3fdcda76d97b30f9              # double 0.45083400000000001
	.quad	0x3fe968815e39713b              # double 0.79400700000000002
	.quad	0x3fd0c39ffd60e94f              # double 0.26194000000000001
	.quad	0x3febbd1cc100e6b0              # double 0.86683500000000002
	.quad	0x3fd18b1572580c31              # double 0.27411400000000002
	.quad	0x3fe77caa7589efd8              # double 0.73396799999999995
	.quad	0x3fe7bc9eecbfb15b              # double 0.74177499999999996
	.quad	0x3fe15fc19c17225b              # double 0.54293899999999995
	.quad	0x3fd4ba775fb2edfe              # double 0.32388099999999997
	.quad	0x3fe59b024f6598e1              # double 0.67517199999999999
	.quad	0x3febc567125dd096              # double 0.86784700000000004
	.quad	0x3fd198958d9b5e96              # double 0.27493800000000002
	.quad	0x3faa53fc0096feb5              # double 0.051422000000000002
	.quad	0x3fe77b634dad31fd              # double 0.73381200000000002
	.quad	0x3fe5d57de0d66f0d              # double 0.682311
	.quad	0x3fde23ee1bd1ed9e              # double 0.470943
	.quad	0x3fbb4267839cd812              # double 0.10648199999999999
	.quad	0x3fef8bf3bea91d9b              # double 0.98583399999999998
	.quad	0x3fd286f049a9973e              # double 0.28948600000000002
	.quad	0x3fdfb05319828805              # double 0.49513699999999999
	.quad	0x3feefefe0ce0b913              # double 0.96862700000000001
	.quad	0x3fdbe09bb6aa4b99              # double 0.43558400000000003
	.quad	0x3fe6cd940789613d              # double 0.71259499999999998
	.quad	0x3fd1ea077036c9c1              # double 0.27990900000000002
	.quad	0x3fd654da4ce8101f              # double 0.34892899999999999
	.quad	0x3fe9e96c3fc43b2e              # double 0.80974400000000002
	.quad	0x3fea0c32a8c9b845              # double 0.81398899999999996
	.quad	0x3fe2adba4d6e47dc              # double 0.58370699999999998
	.quad	0x3fd436694898f606              # double 0.31582100000000002
	.quad	0x3fe6f2fba01eeed9              # double 0.71716100000000005
	.quad	0x3fd803c4b09e98dd              # double 0.37523000000000001
	.quad	0x3fe17e1975f2cb64              # double 0.54664299999999999
	.quad	0x3fb4f7fcfc3f811f              # double 0.081908999999999996
	.quad	0x3fe5bacf7446f9ba              # double 0.67905400000000005
	.quad	0x3fd7bc7b45f17bd9              # double 0.37087900000000001
	.quad	0x3fe73e20ccff21b4              # double 0.72633400000000004
	.quad	0x3fb1b951c5c5718f              # double 0.069234000000000004
	.quad	0x3fe8a9b6b2af1455              # double 0.77071699999999999
	.quad	0x3fa20ad8a116659d              # double 0.035238999999999999
	.quad	0x3fe6942917507e9e              # double 0.70558600000000005
	.quad	0x3fedc2ce4649906d              # double 0.93003000000000002
	.quad	0x3fec63c968943e10              # double 0.887181
	.quad	0x3fe724ebdd334c5e              # double 0.72325700000000004
	.quad	0x3fcaed4e4c942d49              # double 0.210367
	.quad	0x3fb845fe111276fb              # double 0.094818
	.quad	0x3fe36d117b5286b6              # double 0.60706400000000005
	.quad	0x3fc92367e414e7ef              # double 0.19639300000000001
	.quad	0x3febd247cb70ac3b              # double 0.86941900000000005
	.quad	0x3fe9151c5c5718ec              # double 0.78382700000000005
	.quad	0x3fe6310342aa9f7b              # double 0.69348299999999996
	.quad	0x3fb04c165907d912              # double 0.063660999999999995
	.quad	0x3fd9bca1059ea572              # double 0.402138
	.quad	0x3fe73b03e20ccff2              # double 0.72595399999999999
	.quad	0x3fb8a116659d12cb              # double 0.096208000000000002
	.quad	0x3fe4351bd61f5be6              # double 0.63148300000000002
	.quad	0x3fbeb3354c12274a              # double 0.119922
	.quad	0x3fdff06b37867f0b              # double 0.49904900000000002
	.quad	0x3fc76f8f041461b7              # double 0.183092
	.quad	0x3fd453111f0c34c2              # double 0.31757000000000002
	.quad	0x3fe0973b85e80bed              # double 0.51846099999999995
	.quad	0x3fd44028e4fb97bb              # double 0.31641599999999998
	.quad	0x3fd35857afea3df7              # double 0.30226700000000001
	.quad	0x3fc4e78183f91e64              # double 0.16331499999999999
	.quad	0x3fee803254e6e222              # double 0.95314900000000002
	.quad	0x3fd852263d816acf              # double 0.38001400000000002
	.quad	0x3fdef97aaac1094a              # double 0.48397699999999999
	.quad	0x3fc99a2834d26fa4              # double 0.200017
	.quad	0x3f763fdd65a14489              # double 0.0054320000000000002
	.quad	0x3fe0221858bc59b8              # double 0.504162
	.quad	0x3fc3d89ce4a7b4e5              # double 0.15504799999999999
	.quad	0x3fefc2f61ed5ae1d              # double 0.99254900000000001
	.quad	0x3feaf4b838c111ae              # double 0.84237300000000004
	.quad	0x3fc6fc8b0079a283              # double 0.17958199999999999
	.quad	0x3fd3e4430b178b37              # double 0.310807
	.quad	0x3fe323c21187e7c0              # double 0.59811499999999995
	.quad	0x3fea90bc7b45f17c              # double 0.83016800000000001
	.quad	0x3f9c55432873bc90              # double 0.027668999999999999
	.quad	0x3feba00e27e0ef9a              # double 0.86328800000000006
	.quad	0x3fde01d9f4d37c13              # double 0.46886299999999997
	.quad	0x3fe9ecdf266ba494              # double 0.81016500000000002
	.quad	0x3fc06a76965f5276              # double 0.128249
	.quad	0x3fd75a3e39f77293              # double 0.36488300000000001
	.quad	0x3fd3bcd35a858794              # double 0.30840000000000001
	.quad	0x3fd13d859c8c9321              # double 0.26938000000000001
	.quad	0x3fde7a5b0ff10ecb              # double 0.47621799999999997
	.quad	0x3fec54c122749f0e              # double 0.88534599999999997
	.quad	0x3fe3065d7cb2d906              # double 0.59452700000000003
	.quad	0x3fea8b47c73eee52              # double 0.82950199999999996
	.quad	0x3fc3fd9ba1b19610              # double 0.15617700000000001
	.quad	0x3fe92e62131a8ef7              # double 0.78691199999999994
	.quad	0x3fc6fc158fb43d8a              # double 0.17956800000000001
	.quad	0x3fe8eb91b3f20a74              # double 0.778756
	.quad	0x3fd7ea6c1a048e04              # double 0.37368299999999999
	.quad	0x3fae939eadd590c1              # double 0.059720000000000002
	.quad	0x3fe5458cd20afa2f              # double 0.66474
	.quad	0x3fe70a350d2806af              # double 0.71999599999999997
	.quad	0x3fd674c8ffb8b264              # double 0.35087800000000002
	.quad	0x3fe11f59ccfaeff6              # double 0.53507700000000002
	.quad	0x3fe1aeb80ecfa69c              # double 0.55257800000000001
	.quad	0x3fe15af07bfe7e20              # double 0.54235100000000003
	.quad	0x3fb25e13b18dac26              # double 0.071748000000000006
	.quad	0x3fe200fba8826aa9              # double 0.56262000000000001
	.quad	0x3feae57d9dba908a              # double 0.84051399999999998
	.quad	0x3fc579f23465625a              # double 0.16778399999999999
	.quad	0x3fdd2e90364388ec              # double 0.45596700000000001
	.quad	0x3fd8c3e3193f6c27              # double 0.38695600000000002
	.quad	0x3fd5a36199780baa              # double 0.33809699999999998
	.quad	0x3fddbd72bcb5fe54              # double 0.46468799999999999
	.quad	0x3fe1253da72a7bd5              # double 0.53579600000000005
	.quad	0x3febf28a6117720d              # double 0.87335700000000005
	.quad	0x3fe0fadd15f02c4d              # double 0.53062299999999996
	.quad	0x3fd6901083dbc233              # double 0.352543
	.quad	0x3fa1cb252ce032db              # double 0.034752999999999999
	.quad	0x3fe3be22e5de15ca              # double 0.61695999999999995
	.quad	0x3fdbd7a13c254a3c              # double 0.43503599999999998
	.quad	0x3fd65ee99a62ed35              # double 0.34954299999999999
	.quad	0x3fea935fc3b4f616              # double 0.83048999999999995
	.quad	0x3fe3b8bac710cb29              # double 0.61629999999999996
	.quad	0x3fe0e961c36976bc              # double 0.52848899999999999
	.quad	0x3faf01fb82c2bd7f              # double 0.060561999999999998
	.quad	0x3fe9b2031ceaf252              # double 0.80298000000000003
	.quad	0x3fc51aa821f2990f              # double 0.16487599999999999
	.quad	0x3fdf9f340d4dc65c              # double 0.49409199999999998
	.quad	0x3fc74d50ebaade65              # double 0.18204699999999999
	.quad	0x3fa73215fcc1871e              # double 0.045303999999999997
	.quad	0x3fd4ea91d9b1b79e              # double 0.32681700000000002
	.quad	0x3fb532d6ece13f4b              # double 0.082807000000000006
	.quad	0x3fa22a90cd423d92              # double 0.035480999999999999
	.quad	0x3fdd1b60ae9680e0              # double 0.45479599999999998
	.quad	0x3febdbca9691a75d              # double 0.87058000000000002
	.quad	0x3fcb595feda66128              # double 0.21366499999999999
	.quad	0x3fdadb59578a2a91              # double 0.41963800000000001
	.quad	0x3fc9a58f7121ab4b              # double 0.20036499999999999
	.quad	0x3fea45260f5e41d5              # double 0.82094100000000003
	.quad	0x3fe559c8c9320d99              # double 0.66720999999999997
	.quad	0x3fb79b34a44c7b03              # double 0.092212000000000002
	.quad	0x3fe75eb313be22e6              # double 0.73031000000000001
	.quad	0x3fe87720c8cd63cc              # double 0.76454200000000005
	.quad	0x3fee16c61522a6f4              # double 0.94028
	.quad	0x3fc9a98676a7264a              # double 0.200486
	.quad	0x3fec9344806290ef              # double 0.89297700000000002
	.quad	0x3fcbff4fd6d7e88a              # double 0.21872900000000001
	.quad	0x3fb8258d5842b735              # double 0.094323000000000004
	.quad	0x3fc92f33ca31e7da              # double 0.19675300000000001
	.quad	0x3fe36e696a26e547              # double 0.60722799999999999
	.quad	0x3fe0eb54e2b063e0              # double 0.52872699999999995
	.quad	0x3fda0f88333fc86d              # double 0.407198
	.quad	0x3fe46696a26e5471              # double 0.63752299999999995
	.quad	0x3fc7729b280f12c2              # double 0.18318499999999999
	.quad	0x3fef880303c07ee1              # double 0.98535300000000003
	.quad	0x3fe613682730c671              # double 0.68986899999999995
	.quad	0x3fe0c43b2dd377e2              # double 0.52395400000000003
	.quad	0x3fe9268900c521de              # double 0.78595400000000004
	.quad	0x3fe76d634549b62c              # double 0.73210299999999995
	.quad	0x3fc8f9767903211d              # double 0.19511300000000001
	.quad	0x3fd76d2aa5c5f7c6              # double 0.36603799999999997
	.quad	0x3fd6982cb20fb225              # double 0.35303800000000002
	.quad	0x3f93be6601bc98a2              # double 0.019281
	.quad	0x3fe04bb3c81908e6              # double 0.50924100000000005
	.quad	0x3fe2d976ff3ade22              # double 0.58904599999999996
	.quad	0x3fdddc55000c953a              # double 0.46657300000000002
	.quad	0x3fedbaeee957470f              # double 0.92906900000000003
	.quad	0x3fd7aab8a5ce5b42              # double 0.36979499999999998
	.quad	0x3fd339192641b329              # double 0.30036000000000002
	.quad	0x3fb64e48626f60e1              # double 0.087132000000000001
	.quad	0x3fed9001d5c31594              # double 0.92382900000000001
	.quad	0x3fd9f90d9d7774ac              # double 0.40582600000000002
	.quad	0x3fd04e26d4801f75              # double 0.25477
	.quad	0x3fd427f1b6912125              # double 0.314938
	.quad	0x3feb870b8cfbfc65              # double 0.86023499999999997
	.quad	0x3feabc7b45f17bd9              # double 0.83550800000000003
	.quad	0x3fcfec4e7253da73              # double 0.24939900000000001
	.quad	0x3fee4cc037931444              # double 0.94686899999999996
	.quad	0x3fee5fce3150dae4              # double 0.94919500000000001
	.quad	0x3fe4bb57c4e2f380              # double 0.64786900000000003
	.quad	0x3fdf6b8737974602              # double 0.49093799999999999
	.quad	0x3fed233df2a9d628              # double 0.91055200000000003
	.quad	0x3fe4378897e99631              # double 0.63177899999999998
	.quad	0x3fa69a4df47f993d              # double 0.044145999999999998
	.quad	0x3fc519f7f8ca8199              # double 0.164855
	.quad	0x3fe107dd44135547              # double 0.53220999999999996
	.quad	0x3fd4bbbe878fabda              # double 0.323959
	.quad	0x3fbf05d95dd4c76d              # double 0.121183
	.quad	0x3fd0bebe1650a45d              # double 0.26164199999999999
	.quad	0x3fed7aa68f4b61fe              # double 0.92122199999999999
	.quad	0x3fda14b167ec7864              # double 0.40751300000000001
	.quad	0x3fd2c144028e4fb9              # double 0.29304599999999997
	.quad	0x3fe00e820e629952              # double 0.50177099999999997
	.quad	0x3fed42d8c2a454de              # double 0.91440999999999995
	.quad	0x3fdcb81733226c3c              # double 0.44873600000000002
	.quad	0x3fc462c343b70ef5              # double 0.15926399999999999
	.quad	0x3fec4743201040c0              # double 0.88369900000000001
	.quad	0x3fe2aa821f2990f3              # double 0.583314
	.quad	0x3fc16bdb1a6d6990              # double 0.136104
	.quad	0x3fe0f8bbd3804535              # double 0.53036300000000003
	.quad	0x3fdadd65a14488c6              # double 0.419763
	.quad	0x3fe8503d9a95421c              # double 0.75979499999999999
	.quad	0x3fb0c7f349385836              # double 0.065550999999999998
	.quad	0x3fe2f8c868b9fdbd              # double 0.59286899999999998
	.quad	0x3fddb3743632c1f4              # double 0.46407799999999999
	.quad	0x3fe2df8f4730403a              # double 0.58979000000000004
	.quad	0x3fe28c8472c0e7bc              # double 0.57965299999999997
	.quad	0x3fef82f0e0a84be4              # double 0.98473399999999999
	.quad	0x3fdd01de26916441              # double 0.453239
	.quad	0x3fef1a2403148777              # double 0.97194100000000005
	.quad	0x3fbcd44567125dd1              # double 0.11261400000000001
	.quad	0x3fd83b7d84901d19              # double 0.378631
	.quad	0x3fcc054ef459d990              # double 0.218912
	.quad	0x3fdc303c07ee0b0b              # double 0.440444
	.quad	0x3fe620be51090710              # double 0.69149700000000003
	.quad	0x3fefae7f6f4be836              # double 0.99005100000000001
	.quad	0x3fe050a02b841249              # double 0.50984200000000002
	.quad	0x3fb7bea91d9b1b7a              # double 0.092753000000000002
	.quad	0x3fbf7dc7abfb9bed              # double 0.123013
	.quad	0x3fe6e8c47a17f413              # double 0.71591400000000005
	.quad	0x3fe9d27807789a46              # double 0.80694200000000005
	.quad	0x3fedbc46d82ba5a0              # double 0.92923299999999997
	.quad	0x3fc5d616f86a0989              # double 0.170596
	.quad	0x3fd6d0f1f57b41c0              # double 0.35650300000000001
	.quad	0x3fb556b00ffda405              # double 0.083353999999999998
	.quad	0x3fcfcac8e68e3ef3              # double 0.24837600000000001
	.quad	0x3fc9510d38cda6e7              # double 0.19778599999999999
	.quad	0x3fee44a4095f2453              # double 0.94587900000000003
	.quad	0x3fec4fb97bb73083              # double 0.88473199999999996
	.quad	0x3fa86bbdbe3c1052              # double 0.047697000000000003
	.quad	0x3fe1f53825e13b19              # double 0.56118400000000002
	.quad	0x3fe762c12ad81adf              # double 0.73080500000000004
	.quad	0x3fe7d3868fd199bb              # double 0.74457099999999998
	.quad	0x3fe66f7e3d1cc101              # double 0.70111000000000001
	.quad	0x3fdcc14c660a2014              # double 0.44929799999999998
	.quad	0x3fd314a90470a809              # double 0.29813600000000001
	.quad	0x3fd9041461b6d43d              # double 0.390874
	.quad	0x3faf37b8d3f1843c              # double 0.060971999999999998
	.quad	0x3fedeefa1e3eaf68              # double 0.93542199999999997
	.quad	0x3fe81986b9c304cd              # double 0.75311600000000001
	.quad	0x3fe236b4c7f34938              # double 0.56917799999999996
	.quad	0x3fc7f316e3715400              # double 0.18710599999999999
	.quad	0x3fdd3b7d84901d19              # double 0.456756
	.quad	0x3fd1f090f733a8a4              # double 0.280308
	.quad	0x3fe9d4845132f87b              # double 0.80719200000000002
	.quad	0x3fdd8e0c9d9d3459              # double 0.46179500000000001
	.quad	0x3fefb5bb384fd2a6              # double 0.99093399999999998
	.quad	0x3fe0e731d2e0e304              # double 0.52822199999999997
	.quad	0x3fe19e12a51e321a              # double 0.55054599999999998
	.quad	0x3fc5c52e72da1230              # double 0.17008000000000001
	.quad	0x3fd2bea91d9b1b7a              # double 0.29288700000000001
	.quad	0x3fd2f9f01b866e44              # double 0.29650500000000002
	.quad	0x3fe3d6bebe1650a4              # double 0.61996399999999996
	.quad	0x3fee5e6149c6f36f              # double 0.949021
	.quad	0x3fb5b068123810e9              # double 0.084723000000000007
	.quad	0x3fe1c050bd87b56c              # double 0.55472600000000005
	.quad	0x3fe15940789613d3              # double 0.54214499999999999
	.quad	0x3fe7e8b9fdbd2fa1              # double 0.74715900000000002
	.quad	0x3fbf75b813016484              # double 0.12289
	.quad	0x3fc556d19dece571              # double 0.166712
	.quad	0x3fd473ffac1d29dc              # double 0.31957999999999998
	.quad	0x3fb0532a497fa5d3              # double 0.063769000000000006
	.quad	0x3fe2edd69d30270f              # double 0.59153299999999998
	.quad	0x3fe6f525460aa64c              # double 0.71742499999999998
	.quad	0x3fdf802c0a4a05de              # double 0.49219800000000002
	.quad	0x3fdbfa11a975afb0              # double 0.43713800000000003
	.quad	0x3fef037718655193              # double 0.96917299999999995
	.quad	0x3fc2c9b845564b66              # double 0.14678099999999999
	.quad	0x3f9b36bd2b6f1993              # double 0.026575999999999999
	.quad	0x3fe4bbe6601bc98a              # double 0.64793699999999999
	.quad	0x3fd321b7e0ac7da2              # double 0.298933
	.quad	0x3fc9f5946c332f01              # double 0.20280699999999999
	.quad	0x3fea415d2d01c0ca              # double 0.82047899999999996
	.quad	0x3fedc98a222d5172              # double 0.93085200000000001
	.quad	0x3fddea209aaa3ad2              # double 0.46741500000000002
	.quad	0x3fcb0ec311622813              # double 0.21138799999999999
	.quad	0x3feb5796bfca85cb              # double 0.85444200000000003
	.quad	0x3fef3f6e3f78bbd4              # double 0.97649300000000005
	.quad	0x3feb827d88c1db01              # double 0.85967899999999997
	.quad	0x3fe3b7bf1e8e6080              # double 0.61617999999999995
	.quad	0x3fcfd0e991ff7165              # double 0.24856300000000001
	.quad	0x3fe26a4873365882              # double 0.57547400000000004
	.quad	0x3faed2ed783dff3f              # double 0.060203
	.quad	0x3fab63f572de43ee              # double 0.053497000000000003
	.quad	0x3f96cc5fbf83382e              # double 0.022263999999999999
	.quad	0x3fea793dd97f62b7              # double 0.82730000000000004
	.quad	0x3fd4e7fb267c6b8b              # double 0.32665899999999998
	.quad	0x3fc7a9e2bcf91a33              # double 0.18487200000000001
	.quad	0x3feae4345cfede98              # double 0.84035700000000002
	.quad	0x3fe2e42e12620254              # double 0.59035400000000005
	.quad	0x3fd76f6d7625204b              # double 0.366176
	.quad	0x3feaebcc6c54bcf1              # double 0.84128400000000003
	.quad	0x3fd333721d53cddd              # double 0.30001499999999998
	.quad	0x3feb47de5082cf53              # double 0.85252300000000003
	.quad	0x3fd2fad2999567dc              # double 0.29655900000000002
	.quad	0x3f5e7967caea747e              # double 0.0018600000000000001
	.quad	0x3fd9dda8bd230b9e              # double 0.40415400000000001
	.quad	0x3fe9fd0aed99cbef              # double 0.81213900000000006
	.quad	0x3fe023c64345cfee              # double 0.50436700000000001
	.quad	0x3fcc5204af922963              # double 0.22125300000000001
	.quad	0x3fd30f9096bb98c8              # double 0.29782500000000001
	.quad	0x3fdaddf86e3b46fe              # double 0.419798
	.quad	0x3fc541b75a74c09c              # double 0.16606799999999999
	.quad	0x3fe7db1e9f277814              # double 0.74549799999999999
	.quad	0x3fec72b66b6177ea              # double 0.88900299999999999
	.quad	0x3fc5935fc3b4f616              # double 0.16855999999999999
	.quad	0x3fec2fec56d5cfab              # double 0.88085000000000002
	.quad	0x3f7c26dce39b456b              # double 0.0068729999999999998
	.quad	0x3fe887cc7d1bb491              # double 0.76657699999999995
	.quad	0x3fd9b8c32a8c9b84              # double 0.40190199999999998
	.quad	0x3fe901c92ddbdb5e              # double 0.78146800000000005
	.quad	0x3fe8328522ea0fd4              # double 0.75616700000000003
	.quad	0x3fd09dcb5781c715              # double 0.259631
	.quad	0x3fe27327aa68f4b6              # double 0.57655699999999999
	.quad	0x3fc88c79f666234b              # double 0.19178700000000001
	.quad	0x3fc806c8711d798e              # double 0.18770700000000001
	.quad	0x3feaa2f6a50d6b23              # double 0.83239300000000005
	.quad	0x3fd9e6d9be4cd749              # double 0.40471499999999999
	.quad	0x3fe5c406c00da1a9              # double 0.68017899999999998
	.quad	0x3fe1c243dccea290              # double 0.55496400000000001
	.quad	0x3fbda543f1c75819              # double 0.115803
	.quad	0x3fe1d080b673c4f4              # double 0.55670200000000003
	.quad	0x3fecf39b024f6599              # double 0.90473700000000001
	.quad	0x3fd57329c347e8cd              # double 0.33515400000000001
	.quad	0x3fd6601ffb480a5b              # double 0.34961700000000001
	.quad	0x3fe5fcefaa4766c7              # double 0.68712600000000001
	.quad	0x3fea2339c0ebedfa              # double 0.81679999999999997
	.quad	0x3fee588a04d12019              # double 0.94830800000000004
	.quad	0x3fef821af7d30ad4              # double 0.98463199999999995
	.quad	0x3fe4f9e16d6dc1a4              # double 0.65550299999999995
	.quad	0x3fed7e77d523b363              # double 0.92168799999999995
	.quad	0x3fd2c111ada76d98              # double 0.29303400000000002
	.quad	0x3fec001d5c31593e              # double 0.87501399999999996
	.quad	0x3fda753e707e175d              # double 0.413406
	.quad	0x3fd7baecd07852f8              # double 0.370784
	.quad	0x3f952b0a6fc58ab9              # double 0.020671999999999999
	.quad	0x3fefe429e0a41a26              # double 0.99660199999999999
	.quad	0x3fd1ff865d7cb2d9              # double 0.281221
	.quad	0x3fd8d352220bc383              # double 0.38789800000000002
	.quad	0x3fe1519bd4067cf2              # double 0.54121200000000003
	.quad	0x3fe3260913a4f872              # double 0.59839299999999995
	.quad	0x3f8822bbecaab8a6              # double 0.011785
	.quad	0x3fef258f7121ab4b              # double 0.97333499999999995
	.quad	0x3fe38e991ff7164c              # double 0.61115699999999995
	.quad	0x3f91a500d5e8d541              # double 0.017231
	.quad	0x3fea80f98fa37692              # double 0.82824399999999998
	.quad	0x3feb701fb82c2bd8              # double 0.857437
	.quad	0x3fee40f238972043              # double 0.94542800000000005
	.quad	0x3fdca7b0b3919264              # double 0.44773499999999999
	.quad	0x3fd07cb2d905c033              # double 0.25761099999999998
	.quad	0x3fe21e3864cb5bb4              # double 0.56618900000000005
	.quad	0x3fe486748e475600              # double 0.64141300000000001
	.quad	0x3fa1098d477bbf94              # double 0.033276
	.quad	0x3fd4199bb2788db0              # double 0.31406299999999998
	.quad	0x3fe035696e58a32f              # double 0.50651999999999997
	.quad	0x3fe5b8d60a633051              # double 0.678813
	.quad	0x3fd15ad106ee30cb              # double 0.27116800000000002
	.quad	0x3fe2c19c17225b75              # double 0.58613400000000004
	.quad	0x3fe485ee568a5050              # double 0.64134899999999995
	.quad	0x3fec2797891e2153              # double 0.87983299999999998
	.quad	0x3fdbe878fabda0e0              # double 0.43606400000000001
	.quad	0x3fee40ee06d93815              # double 0.94542599999999999
	.quad	0x3fed3ccf28c79f66              # double 0.91367299999999996
	.quad	0x3fd1123c42a66dbd              # double 0.26673799999999998
	.quad	0x3fd6f544bb1af3a1              # double 0.35871999999999998
	.quad	0x3fc63baba7b9170d              # double 0.17369599999999999
	.quad	0x3fec2a6b0d9513f9              # double 0.88017800000000002
	.quad	0x3fec5af8df7a4e7b              # double 0.88610500000000003
	.quad	0x3fb7d00713f077cd              # double 0.093018000000000003
	.quad	0x3fe7d73a797891e2              # double 0.74502299999999999
	.quad	0x3f793a2df9378ee3              # double 0.0061590000000000004
	.quad	0x3fefae770bd017db              # double 0.99004700000000001
	.quad	0x3fcd964a59c065b6              # double 0.23114899999999999
	.quad	0x3fea86f47b677f6b              # double 0.82897399999999999
	.quad	0x3fe839884c6a3bde              # double 0.757023
	.quad	0x3fde275ab7dc7ac0              # double 0.47115200000000002
	.quad	0x3fe1f2b020c49ba6              # double 0.56087500000000001
	.quad	0x3f9dd3bafd976ff4              # double 0.029128000000000001
	.quad	0x3fc15d13d74d594f              # double 0.135653
	.quad	0x3fed913a4f8726d0              # double 0.92397799999999997
	.quad	0x3fe8e432441fea81              # double 0.77785599999999999
	.quad	0x3fc31a2a4db163bb              # double 0.14923600000000001
	.quad	0x3fd4d6c2efd438d2              # double 0.32560800000000001
	.quad	0x3fddc679cc74b839              # double 0.46523900000000001
	.quad	0x3fd4439de481f538              # double 0.31662699999999999
	.quad	0x3fe088094e5d5b25              # double 0.51660600000000001
	.quad	0x3fe6cdd93c46d82c              # double 0.71262800000000004
	.quad	0x3fe32272862f598a              # double 0.59795500000000001
	.quad	0x3fdccba301216830              # double 0.44992900000000002
	.quad	0x3fe9c19c17225b75              # double 0.80488400000000004
	.quad	0x3fd95c4a83b1d0c8              # double 0.396258
	.quad	0x3fe61522a6f3f530              # double 0.69008000000000003
	.quad	0x3fcb1337eb28d866              # double 0.21152399999999999
	.quad	0x3fe95cf4623d0bfa              # double 0.792597
	.quad	0x3fa18efbb0e5e679              # double 0.034293999999999998
	.quad	0x3fd9cdcca70d1fa3              # double 0.40318599999999999
	.quad	0x3fcb3c46d82ba5a0              # double 0.21277699999999999
	.quad	0x3fdf76b3bb83cf2d              # double 0.49162
	.quad	0x3fe5f739f340d4dc              # double 0.68642899999999996
	.quad	0x3feeb2441fea8113              # double 0.95926100000000003
	.quad	0x3fea609bb6aa4b99              # double 0.82429300000000005
	.quad	0x3fee1192641b328b              # double 0.93964499999999995
	.quad	0x3feb2817763e4abe              # double 0.84864399999999995
	.quad	0x3fd8ccc037931444              # double 0.38749699999999998
	.quad	0x3fe22d16b97fe8ee              # double 0.56800399999999995
	.quad	0x3fe14e3bcd35a858              # double 0.54079999999999995
	.quad	0x3feb08a04d12018a              # double 0.84480299999999997
	.quad	0x3fab9f559b3d07c8              # double 0.053949999999999998
	.quad	0x3fb4b5781c714fce              # double 0.080893999999999993
	.quad	0x3fe55fc9ff92f2b6              # double 0.66794299999999995
	.quad	0x3fecb78ee2867275              # double 0.89740699999999995
	.quad	0x3fe990b630a91538              # double 0.79891500000000004
	.quad	0x3fec7661f18c9fb6              # double 0.88945099999999999
	.quad	0x3fe08909289dadfb              # double 0.51672799999999997
	.quad	0x3fdef0e0a84be404              # double 0.48345199999999999
	.quad	0x3feb5b445ed4a1ad              # double 0.85489099999999996
	.quad	0x3fd2ac3eb7cbb3c8              # double 0.29176299999999999
	.quad	0x3fd5d47bedb72820              # double 0.34109400000000001
	.quad	0x3feeadc2b0ea1837              # double 0.95871099999999997
	.quad	0x3fe920a30db6a1e8              # double 0.78523399999999999
	.quad	0x3fd2de1e2de87097              # double 0.29480699999999999
	.quad	0x3fe2da9435ac8a37              # double 0.58918199999999998
	.quad	0x3fb79420b3d4ae43              # double 0.092104000000000005
	.quad	0x3fc474751ce28ed6              # double 0.159804
	.quad	0x3fc8a6f3f52fc265              # double 0.19259499999999999
	.quad	0x3fc8c37e6f71a7e3              # double 0.193466
	.quad	0x3fe2b23358f2e05d              # double 0.58425300000000002
	.quad	0x3fc25510d38cda6e              # double 0.14322099999999999
	.quad	0x3fed5cdd50a88f00              # double 0.91758600000000001
	.quad	0x3fe50e7ff583a53c              # double 0.65802000000000005
	.quad	0x3fe3d4e8fb00bcbe              # double 0.61973999999999996
	.quad	0x3feb6b4a66559f6f              # double 0.85684700000000003
	.quad	0x3fe1c9107faa044b              # double 0.55579400000000001
	.quad	0x3feaf3d188f42fe8              # double 0.84226299999999998
	.quad	0x3fa697aeddce7cd0              # double 0.044125999999999999
	.quad	0x3fe128bb0a2ca9ac              # double 0.53622199999999998
	.quad	0x3fd32e7b3d8e0008              # double 0.29971199999999998
	.quad	0x3fad5f3519bd4068              # double 0.057367000000000001
	.quad	0x3fd1b59146e4c0df              # double 0.27670699999999998
	.quad	0x3fe3c8e4755ffe6d              # double 0.61827299999999996
	.quad	0x3fe1efc7a398201d              # double 0.56052000000000002
	.quad	0x3fb9107faa044ae8              # double 0.097907999999999995
	.quad	0x3fd06d86ec17ebaf              # double 0.256685
	.quad	0x3fe2807570c564f9              # double 0.57818099999999994
	.quad	0x3fd046e08f217093              # double 0.254326
	.quad	0x3fe4d0b30b5aa716              # double 0.65047600000000005
	.quad	0x3fef59ab6d00b45b              # double 0.97969600000000001
	.quad	0x3fdadb445ed4a1ad              # double 0.41963299999999998
	.quad	0x3fd81b64e054690e              # double 0.37667200000000001
	.quad	0x3fc1c0e38a7e73a3              # double 0.13869899999999999
	.quad	0x3fbb98b71b8aa002              # double 0.10779900000000001
	.quad	0x3fe17d77fae3608d              # double 0.546566
	.quad	0x3fd385271bcdbbe0              # double 0.305002
	.quad	0x3fe7f0ac3a860dcc              # double 0.74812900000000004
	.quad	0x3feafc02afdda8bd              # double 0.84326299999999998
	.quad	0x3fe0b4bd76ee73e7              # double 0.52206300000000005
	.quad	0x3fc6998d045fe111              # double 0.176561
	.quad	0x3fdc5e5aff2a172b              # double 0.44325900000000001
	.quad	0x3fe07e004b7f5a53              # double 0.51538099999999998
	.quad	0x3fa2e6ea854477ff              # double 0.036917999999999999
	.quad	0x3fc2fd5cb790fb65              # double 0.14835699999999999
	.quad	0x3fd4bd1aa821f299              # double 0.324042
	.quad	0x3fdc3929ed3953df              # double 0.44098900000000002
	.quad	0x3fe189cc319c5a3e              # double 0.54807099999999997
	.quad	0x3fc1c55000c9539c              # double 0.13883400000000001
	.quad	0x3fc857646ae3a3a9              # double 0.190167
	.quad	0x3fd48c32a8c9b845              # double 0.32105699999999998
	.quad	0x3fb2d4e4c942d491              # double 0.073561000000000001
	.quad	0x3fe5d996744b2b77              # double 0.68281099999999995
	.quad	0x3fd920e6299524c0              # double 0.39263300000000001
	.quad	0x3fe0b04ab606b7aa              # double 0.52151999999999998
	.quad	0x3fd32513b5bf6a0e              # double 0.29913800000000001
	.quad	0x3fecc31df761cbcd              # double 0.89881800000000001
	.quad	0x3fddf202107b7846              # double 0.46789599999999998
	.quad	0x3fe93315d701d9f5              # double 0.78748600000000002
	.quad	0x3fc8c9e236c15d2d              # double 0.193661
	.quad	0x3f9b020c49ba5e35              # double 0.026374999999999999
	.quad	0x3fe4bc89f40a2878              # double 0.64801500000000001
	.quad	0x3fd580389f83be66              # double 0.335951
	.quad	0x3fdcc2b51bd61f5c              # double 0.44938400000000001
	.quad	0x3fd9d96a6a01259a              # double 0.403895
	.quad	0x3fcf485e3da2f8be              # double 0.244396
	.quad	0x3fe0d308bb906467              # double 0.52576100000000003
	.quad	0x3fc395cc857f3062              # double 0.15300900000000001
	.quad	0x3feb6f8ad2567989              # double 0.85736599999999996
	.quad	0x3fecdc853c148345              # double 0.90191900000000003
	.quad	0x3fbf5c39bcba3012              # double 0.122501
	.quad	0x3fcb4cf4a558ea7d              # double 0.213286
	.quad	0x3fd5344806290eed              # double 0.331316
	.quad	0x3fb753c579f23465              # double 0.091121999999999995
	.quad	0x3fb932c625e99e95              # double 0.098431000000000005
	.quad	0x3fef94c016052503              # double 0.986908
	.quad	0x3f94f93bc0a06ea0              # double 0.020482
	.quad	0x3fe97168f8e7ddca              # double 0.79509399999999997
	.quad	0x3fbbb46fdeb52c9d              # double 0.108222
	.quad	0x3fe244fe36d22425              # double 0.57092200000000004
	.quad	0x3fe6011904b3c3e7              # double 0.68763399999999997
	.quad	0x3fbb417ca2120e1f              # double 0.10646799999999999
	.quad	0x3fc0c3009b30728f              # double 0.13095100000000001
	.quad	0x3fe6b430f49491f3              # double 0.70949600000000002
	.quad	0x3fe015feda661284              # double 0.50268500000000005
	.quad	0x3fe654aa10e02214              # double 0.69783499999999998
	.quad	0x3fcbd987c6327ed8              # double 0.21757599999999999
	.quad	0x3fe8bb3a68b19a41              # double 0.77285499999999996
	.quad	0x3fb69003eea209ab              # double 0.088135000000000005
	.quad	0x3fdbff7dfa00e27e              # double 0.437469
	.quad	0x3feb52e72da122fb              # double 0.85387000000000002
	.quad	0x3fe3dc7ef177a701              # double 0.62066600000000005
	.quad	0x3fb336ac647778dd              # double 0.075052999999999995
	.quad	0x3fd454f3775b8130              # double 0.317685
	.quad	0x3fee759685122318              # double 0.95185399999999997
	.quad	0x3fe238433d6c7219              # double 0.56936799999999999
	.quad	0x3fbd39b8887229e9              # double 0.114162
	.quad	0x3fe5a7bd48cb4aed              # double 0.67672600000000005
	.quad	0x3fe2e7e414e7ee91              # double 0.59080699999999997
	.quad	0x3fe17c0d2c386d2f              # double 0.54639300000000002
	.quad	0x3fe356b441bb8c33              # double 0.60433400000000004
	.quad	0x3fc604a72ead9275              # double 0.172017
	.quad	0x3fe9d6c2efd438d2              # double 0.80746600000000002
	.quad	0x3fe87b677f6b1a2a              # double 0.76506399999999997
	.quad	0x3fd20218def416be              # double 0.28137800000000002
	.quad	0x3fe7d8d9b5e95b79              # double 0.74522100000000002
	.quad	0x3fe4fb3311a543f2              # double 0.65566400000000002
	.quad	0x3fe71ed5ae1cde5d              # double 0.72251399999999999
	.quad	0x3fea05b18548a9bd              # double 0.813195
	.quad	0x3fe92ef0ae536502              # double 0.78698000000000001
	.quad	0x3fad5757d5a9eb20              # double 0.057306999999999997
	.quad	0x3fe783382e44b6e9              # double 0.73476799999999998
	.quad	0x3fe69ce8d972cd7d              # double 0.706654
	.quad	0x3fdd6b76709fa54c              # double 0.45968399999999998
	.quad	0x3fb3f162ae4b0186              # double 0.077901999999999999
	.quad	0x3fd3759ee88df373              # double 0.30405399999999999
	.quad	0x3fc35e84f09528f2              # double 0.15132200000000001
	.quad	0x3fe47822bbecaab9              # double 0.63966500000000004
	.quad	0x3fb7ff9b56323bbc              # double 0.093743999999999994
	.quad	0x3fceba1f4b1ee243              # double 0.24005499999999999
	.quad	0x3fce63ae2541d8e8              # double 0.23741699999999999
	.quad	0x3fdfae2541d8e864              # double 0.495004
	.quad	0x3fe77b3743632c1f              # double 0.73379099999999997
	.quad	0x3feed13d74d594f2              # double 0.96304199999999995
	.quad	0x3fdd15f02c4d65e4              # double 0.45446399999999998
	.quad	0x3fe60f94c87980f5              # double 0.68940199999999996
	.quad	0x3f8253da72a7bd49              # double 0.0089490000000000003
	.quad	0x3fe7a3d0bfa09460              # double 0.73874700000000004
	.quad	0x3fcf16a055757d5b              # double 0.24287800000000001
	.quad	0x3fde884c6a3bddfd              # double 0.47706900000000002
	.quad	0x3fcef45176145953              # double 0.24183099999999999
	.quad	0x3fe77b352a843809              # double 0.73379000000000005
	.quad	0x3fe9eb1c432ca57a              # double 0.80994999999999995
	.quad	0x3fe0eba6aca79357              # double 0.52876599999999996
	.quad	0x3fed32441fea8113              # double 0.91238600000000003
	.quad	0x3fd6bd76ee73e682              # double 0.35531400000000002
	.quad	0x3fcec1b10fd7e458              # double 0.240286
	.quad	0x3fe2e9f8c21e1d21              # double 0.59106099999999995
	.quad	0x3fe31dfb9389b520              # double 0.59741
	.quad	0x3fd0d651b0ccbc06              # double 0.26308100000000001
	.quad	0x3fd7605ee568a505              # double 0.365257
	.quad	0x3fd23d0bfa0945fa              # double 0.28497600000000001
	.quad	0x3fad846e8f29d40f              # double 0.057651000000000001
	.quad	0x3fdd7c3504c48adf              # double 0.460706
	.quad	0x3fe75b0dd82fd75e              # double 0.72986499999999999
	.quad	0x3fcdbdf8f4730404              # double 0.23236000000000001
	.quad	0x3feb8a265f0f5a10              # double 0.86061399999999999
	.quad	0x3fc90aa21a719b4e              # double 0.19563700000000001
	.quad	0x3fd437e6f71a7e31              # double 0.31591200000000003
	.quad	0x3fecacc2d6a9c561              # double 0.89608900000000002
	.quad	0x3fb50bfa0945f9df              # double 0.082213999999999995
	.quad	0x3fe4cbba12b5e52a              # double 0.64986900000000003
	.quad	0x3feaa294141e9af6              # double 0.83234600000000003
	.quad	0x3fda56a37ac3eb7d              # double 0.41153800000000001
	.quad	0x3feda917507e9d95              # double 0.92689100000000002
	.quad	0x3fe631a8ef77f280              # double 0.69356200000000001
	.quad	0x3fdfd5e071c53f3a              # double 0.49742900000000001
	.quad	0x3feb65f7403dddb1              # double 0.85619699999999999
	.quad	0x3fdf07f66e86c658              # double 0.48486099999999999
	.quad	0x3fe8794a6eb91b3f              # double 0.76480599999999999
	.quad	0x3fdd95c853c14834              # double 0.46226699999999998
	.quad	0x3fb019e30014f8b6              # double 0.062895000000000006
	.quad	0x3fb1ce4a7b4e54f8              # double 0.069554000000000005
	.quad	0x3fe6d5f56a7ac81d              # double 0.71361799999999997
	.quad	0x3fe03482be8bc16a              # double 0.50641000000000003
	.quad	0x3fd6562174c4cdfb              # double 0.34900700000000001
	.quad	0x3fe42ecf20642396              # double 0.630714
	.quad	0x3fdd11fd5885d313              # double 0.45422299999999999
	.quad	0x3fbf75d9a0f0a5f0              # double 0.122892
	.quad	0x3fe2ebfca85caafc              # double 0.59130700000000003
	.quad	0x3fe5bce8533b1077              # double 0.67930999999999997
	.quad	0x3fdf0eb24a6a875d              # double 0.48527199999999998
	.quad	0x3fec4f3ba775fb2f              # double 0.88467200000000001
	.quad	0x3fe0e219652bd3c3              # double 0.52759999999999996
	.quad	0x3fe8b7952d234eba              # double 0.77241000000000004
	.quad	0x3fb0169c23b7952d              # double 0.062844999999999998
	.quad	0x3fcccaa326e11559              # double 0.224934
	.quad	0x3fd7aa3ad18d25ee              # double 0.36976500000000001
	.quad	0x3fc7c853c148344c              # double 0.18580099999999999
	.quad	0x3fe4bca9691a75cd              # double 0.64802999999999999
	.quad	0x3fbb3ce63a5c1c61              # double 0.10639800000000001
	.quad	0x3fe1ec58eeae9ee4              # double 0.56010099999999996
	.quad	0x3fe4e4628027d88c              # double 0.65287899999999999
	.quad	0x3fd00fe047d3d428              # double 0.250969
	.quad	0x3fd3bd8383ad9f0a              # double 0.30844199999999999
	.quad	0x3fdf8800eae18aca              # double 0.492676
	.quad	0x3fe0ded06fef7c24              # double 0.52719899999999997
	.quad	0x3f95a8155d5f56a8              # double 0.021149000000000001
	.quad	0x3fe3a12b5e529bae              # double 0.61342399999999997
	.quad	0x3fdd0e496ededaec              # double 0.45399699999999998
	.quad	0x3fdfc9d5a187a4a5              # double 0.49669400000000002
	.quad	0x3febd34df04ddb55              # double 0.86954399999999998
	.quad	0x3fe99656eefa1e3f              # double 0.79960200000000003
	.quad	0x3fe0ab0c88a47ed0              # double 0.52088000000000001
	.quad	0x3fdcae685db76b3c              # double 0.44814500000000002
	.quad	0x3feeb111f0c34c1b              # double 0.95911500000000005
	.quad	0x3fc91212513b5bf7              # double 0.19586400000000001
	.quad	0x3fe67c6b8b69552e              # double 0.70268799999999998
	.quad	0x3fc9f748a159817c              # double 0.20285900000000001
	.quad	0x3fdd878fabda0dfe              # double 0.461399
	.quad	0x3fee74be835dedf2              # double 0.95175100000000001
	.quad	0x3fa06d5065732160              # double 0.032084000000000001
	.quad	0x3fef84577d955715              # double 0.98490500000000003
	.quad	0x3febcca0c282c6ef              # double 0.86872899999999997
	.quad	0x3fc8c61522a6f3f5              # double 0.19354499999999999
	.quad	0x3f8c9795b35b0bbf              # double 0.013960999999999999
	.quad	0x3fe63e4473cd5736              # double 0.69510099999999997
	.quad	0x3fe730ced4e4c943              # double 0.72470800000000002
	.quad	0x3fed268f4b61fe22              # double 0.91095700000000002
	.quad	0x3fe76798958d9b5f              # double 0.73139600000000005
	.quad	0x3fc34983d790752e              # double 0.15068100000000001
	.quad	0x3fc53d188f42fe82              # double 0.16592699999999999
	.quad	0x3fe3d5bee3d5fdce              # double 0.619842
	.quad	0x3fe053953dea465a              # double 0.51020299999999996
	.quad	0x3fe49363f572de44              # double 0.64299200000000001
	.quad	0x3fc69e98dcdb37ca              # double 0.17671500000000001
	.quad	0x3fe947064ece9a2c              # double 0.78991999999999995
	.quad	0x3fe2e0c38f366949              # double 0.58993700000000004
	.quad	0x3fd8d8d36b4c7f35              # double 0.38823400000000002
	.quad	0x3feaa6612839042e              # double 0.83281000000000005
	.quad	0x3fcdf88765ba6efc              # double 0.23414699999999999
	.quad	0x3fe50bbd3804534c              # double 0.65768300000000002
	.quad	0x3fee8f776c4827b7              # double 0.955013
	.quad	0x3fdeeadd590c0ad0              # double 0.48308499999999999
	.quad	0x3fe576ad70e6f2e9              # double 0.67073700000000003
	.quad	0x3fef529fe004b7f6              # double 0.97883600000000004
	.quad	0x3fb7f38c5436b8fa              # double 0.093560000000000004
	.quad	0x3f556e264e48626f              # double 0.0013079999999999999
	.quad	0x3fc8ccff21b3aeef              # double 0.19375600000000001
	.quad	0x3fb8e65bea0ba1f5              # double 0.097265000000000004
	.quad	0x3fd176e6106ab14f              # double 0.27288200000000001
	.quad	0x3fe9cc37e6f71a7e              # double 0.80617899999999998
	.quad	0x3fe73356da0168b6              # double 0.72501700000000002
	.quad	0x3feadc4007570c56              # double 0.83938599999999997
	.quad	0x3fefbb1d0c804103              # double 0.991591
	.quad	0x3fe1ce9a2c669058              # double 0.55647000000000002
	.quad	0x3fe36fac6045baf5              # double 0.60738199999999998
	.quad	0x3fd9f765fd8adaba              # double 0.405725
	.quad	0x3fd8e8b3b320535d              # double 0.38920300000000002
	.quad	0x3fb7139c94f69caa              # double 0.090143
	.quad	0x3fe4b499d0203e64              # double 0.64704600000000001
	.quad	0x3fea0986fcdee350              # double 0.81366300000000003
	.quad	0x3fed18fa376922d9              # double 0.90929899999999997
	.quad	0x3feed3953dea465a              # double 0.96332799999999996
	.quad	0x3fceb0856e696a27              # double 0.239762
	.quad	0x3fdead2dcb1465e9              # double 0.47932000000000002
	.quad	0x3f9cea28fe260b2d              # double 0.028237000000000002
	.quad	0x3fdd5c6c11a11234              # double 0.45876600000000001
	.quad	0x3fe55dedf1e0828c              # double 0.66771599999999998
	.quad	0x3fece2c55c96030c              # double 0.90268199999999998
	.quad	0x3fe447fbacb42891              # double 0.63378699999999999
	.quad	0x3fe6122749f0e4da              # double 0.689716
	.quad	0x3f976d549731098d              # double 0.022877999999999999
	.quad	0x3fc1250b524399b3              # double 0.13394300000000001
	.quad	0x3fe84a1f080303c0              # double 0.75904799999999994
	.quad	0x3fe8edb0dd82fd76              # double 0.77901500000000001
	.quad	0x3fd3467be553ac4f              # double 0.30117699999999997
	.quad	0x3fecbf961804d984              # double 0.89838700000000004
	.quad	0x3fc649ba5e353f7d              # double 0.174125
	.quad	0x3fedeaaf35e310dc              # double 0.934898
	.quad	0x3fc9111f0c34c1a9              # double 0.19583500000000001
	.quad	0x3fe41ee2435696e6              # double 0.62877000000000005
	.quad	0x3fe335daad601ffb              # double 0.60032399999999997
	.quad	0x3fee3aa1511dffc5              # double 0.94465699999999997
	.quad	0x3fa474fb549f9485              # double 0.039954999999999997
	.quad	0x3fb02ff8ec0f8833              # double 0.063231999999999997
	.quad	0x3fe006a2b1704ff4              # double 0.50080999999999998
	.quad	0x3fdd7ab324851a87              # double 0.46061400000000002
	.quad	0x3fa1aa1d755bccaf              # double 0.034500999999999997
	.quad	0x3fe980bcbe61cfff              # double 0.79696500000000003
	.quad	0x3feee4302b40f66a              # double 0.96535499999999996
	.quad	0x3fe7b0dd82fd75e2              # double 0.74034
	.quad	0x3fe1450efdc9c4db              # double 0.53968000000000005
	.quad	0x3fbad938151a4378              # double 0.104877
	.quad	0x3fe7f38e6d15ad10              # double 0.74848099999999995
	.quad	0x3fc22cd39da16617              # double 0.14199300000000001
	.quad	0x3faa4ebdd334c5da              # double 0.051381999999999997
	.quad	0x3fc36638433d6c72              # double 0.151557
	.quad	0x3fc6dd7a99fa11a9              # double 0.17863399999999999
	.quad	0x3fb612839042d8c3              # double 0.086220000000000005
	.quad	0x3fe34ffa7eb6bf44              # double 0.60351299999999997
	.quad	0x3feeca01abd1aa82              # double 0.96215899999999999
	.quad	0x3fe48709741d084f              # double 0.64148400000000005
	.quad	0x3fb25eedcc20d563              # double 0.071761000000000005
	.quad	0x3fcfa14488c60cbf              # double 0.247109
	.quad	0x3fefc395810624dd              # double 0.99262499999999997
	.quad	0x3fe69389b52007dd              # double 0.70550999999999997
	.quad	0x3fe4adfb506dd69d              # double 0.64623799999999998
	.quad	0x3fdf1f4f50a02b84              # double 0.486286
	.quad	0x3f9919ac79702e66              # double 0.024511999999999999
	.quad	0x3fbd24bfd2e94680              # double 0.113842
	.quad	0x3fe16eb2d0a24463              # double 0.544763
	.quad	0x3fd926b723ee1bd2              # double 0.392988
	.quad	0x3fcf647baa9b499d              # double 0.245254
	.quad	0x3fece86c6583e857              # double 0.90337199999999995
	.quad	0x3fee5db9841aac54              # double 0.94894100000000003
	.quad	0x3fd0f7d30ad46f58              # double 0.26512599999999997
	.quad	0x3fda2aa19439de48              # double 0.40885199999999999
	.quad	0x3fd07774aba38759              # double 0.25729099999999999
	.quad	0x3fea577d955714ba              # double 0.82318000000000002
	.quad	0x3fb02ababead4f59              # double 0.063152
	.quad	0x3fd36644d87724fb              # double 0.30311700000000003
	.quad	0x3fe1be5753a3ec03              # double 0.55448500000000001
	.quad	0x3fe806a2b1704ff4              # double 0.75080999999999997
	.quad	0x3fea6b93ccd0fe8b              # double 0.82563200000000003
	.quad	0x3fc217ebaf102364              # double 0.14135500000000001
	.quad	0x3fe79886df82b1f7              # double 0.73736900000000005
	.quad	0x3fbdaed56b00ffda              # double 0.115949
	.quad	0x3fef1d041cc532a5              # double 0.97229200000000004
	.quad	0x3fdd9107faa044af              # double 0.46197700000000003
	.quad	0x3fed4f850df15a4b              # double 0.91595700000000002
	.quad	0x3fd78750c1b97354              # double 0.36763400000000002
	.quad	0x3f929c779a6b50b1              # double 0.018175
	.quad	0x3fe853aa369fcf3e              # double 0.76021300000000003
	.quad	0x3fea9b845564b663              # double 0.831484
	.quad	0x3fecb139c94f69cb              # double 0.89663400000000004
	.quad	0x3fdb30ec31162281              # double 0.42486099999999999
	.quad	0x3fcdd3d4280ae105              # double 0.23302700000000001
	.quad	0x3fde02795703f2d4              # double 0.46890100000000001
	.quad	0x3fd13397dd00f777              # double 0.26877400000000001
	.quad	0x3feebf9830e3cd9a              # double 0.96088799999999996
	.quad	0x3fe84996b76709fa              # double 0.75898299999999996
	.quad	0x3fe1dfbf83382e45              # double 0.55856300000000003
	.quad	0x3fda4f5903a7546d              # double 0.41109299999999999
	.quad	0x3fef63d816aceaaf              # double 0.98093799999999997
	.quad	0x3feac2b734b51373              # double 0.83626900000000004
	.quad	0x3fe6b8c9752977c9              # double 0.71005700000000005
	.quad	0x3feaec17ebaf1023              # double 0.84131999999999996
	.quad	0x3fe4c766c6de7642              # double 0.64934099999999995
	.quad	0x3fab213e3e29307b              # double 0.052988
	.quad	0x3fe8e34117f8444a              # double 0.77774100000000002
	.quad	0x3fe568ee6b8305d9              # double 0.66905899999999996
	.quad	0x3fedd57bc7f77af6              # double 0.93230999999999997
	.quad	0x3fe9b37867f0aa22              # double 0.80315800000000004
	.quad	0x3fe85ba2be0589ad              # double 0.76118600000000003
	.quad	0x3fb31950331e3a7e              # double 0.074605000000000005
	.quad	0x3fd9f08893b7d849              # double 0.405306
	.quad	0x3fe50d49949e8816              # double 0.65787200000000001
	.quad	0x3feaf9bdc69f8c22              # double 0.84298600000000001
	.quad	0x3fed66ff7dfa00e2              # double 0.91882299999999995
	.quad	0x3fe311dde37585be              # double 0.59593099999999999
	.quad	0x3fe7f17df19d66ae              # double 0.74822900000000003
	.quad	0x3fe82af78feef5ed              # double 0.75524500000000006
	.quad	0x3fe8dc9c4da9003f              # double 0.77693000000000001
	.quad	0x3f906ab14ec204f3              # double 0.016032000000000001
	.quad	0x3fe9648e8a71de6a              # double 0.79352500000000004
	.quad	0x3fe60f7121ab4b73              # double 0.68938500000000003
	.quad	0x3fd8cf0307f23cc9              # double 0.38763500000000001
	.quad	0x3fe1306a2b1704ff              # double 0.53715999999999997
	.quad	0x3fe9ebd6e8af8162              # double 0.81003899999999995
	.quad	0x3fd68b04ab606b7b              # double 0.35223500000000002
	.quad	0x3fe2c1fc8f32378b              # double 0.58618000000000003
	.quad	0x3fef7e34b945308c              # double 0.98415600000000003
	.quad	0x3fede03f705857b0              # double 0.93362400000000001
	.quad	0x3fdb05814940bbb2              # double 0.422211
	.quad	0x3feeb9d1b2e59afa              # double 0.96018300000000001
	.quad	0x3fd87d805e5f30e8              # double 0.38266
	.quad	0x3fd46e503fb37436              # double 0.31923299999999999
	.quad	0x3fe9257c914b167f              # double 0.78582600000000002
	.quad	0x3fe6efd86a8fc0d3              # double 0.71677800000000003
	.quad	0x3fc125c3dee78184              # double 0.133965
	.quad	0x3fccb6390c9107fb              # double 0.22431100000000001
	.quad	0x3fcf20afa2f05a71              # double 0.24318500000000001
	.quad	0x3fd749949e8815e4              # double 0.36386600000000002
	.quad	0x3fe95a2f8bdec5f4              # double 0.79225900000000004
	.quad	0x3fd4d8cf398e9707              # double 0.32573299999999999
	.quad	0x3fd9b9e060fe4799              # double 0.40196999999999999
	.quad	0x3fe138a7e73a365d              # double 0.53816600000000003
	.quad	0x3fe8d09e12a51e32              # double 0.77546599999999999
	.quad	0x3fe1258d5842b735              # double 0.53583400000000003
	.quad	0x3fd6d9ba1b1960fa              # double 0.357039
	.quad	0x3fecd551d68c692f              # double 0.90103999999999995
	.quad	0x3feff9702e6644d8              # double 0.99919899999999994
	.quad	0x3fdef9d6f112fd33              # double 0.48399900000000001
	.quad	0x3fdf018a43bb40b3              # double 0.48446899999999998
	.quad	0x3fca1e57d9dba909              # double 0.20405100000000001
	.quad	0x3fc5dc1615ebfa8f              # double 0.17077899999999999
	.quad	0x3faf88fc9363f573              # double 0.061592000000000001
	.quad	0x3fd8b80ecfa69be1              # double 0.38623400000000002
	.quad	0x3fd7d3e4ef0281ba              # double 0.37230799999999997
	.quad	0x3fe5f7a2cecc814d              # double 0.68647899999999995
	.quad	0x3feeebce8533b107              # double 0.96628499999999994
	.quad	0x3fe865061416377a              # double 0.76233200000000001
	.quad	0x3fe93c5bd0e12e84              # double 0.78861800000000004
	.quad	0x3fdfcc70867ad8e4              # double 0.49685299999999999
	.quad	0x3fe46ee525892685              # double 0.63853700000000002
	.quad	0x3fc19c49774256bd              # double 0.13758200000000001
	.quad	0x3fd04b838c111ada              # double 0.25460899999999997
	.quad	0x3fd355e28aa43351              # double 0.30211700000000002
	.quad	0x3fd55653c9abb01d              # double 0.33339400000000002
	.quad	0x3fe8f9cc74b838c1              # double 0.78049299999999999
	.quad	0x3fea53f7ced91687              # double 0.82274999999999998
	.quad	0x3fead44dca8e2e2c              # double 0.83841600000000005
	.quad	0x3fb9682f944241c4              # double 0.099246
	.quad	0x3fd19b951c5c5719              # double 0.275121
	.quad	0x3fe1f733a8a3f898              # double 0.56142599999999998
	.quad	0x3fe8c90e66cb1034              # double 0.77454299999999998
	.quad	0x3fecf10667f90d9d              # double 0.90442199999999995
	.quad	0x3fb247cb70ac3a86              # double 0.071407999999999999
	.quad	0x3fa8485a0be51090              # double 0.047426999999999997
	.quad	0x3faa70b06c43f5f9              # double 0.051640999999999999
	.quad	0x3fdd99e518f3eccc              # double 0.46251799999999998
	.quad	0x3fd21eb851eb851f              # double 0.28312500000000002
	.quad	0x3fc5e364bec679cc              # double 0.17100199999999999
	.quad	0x3fe4a32096787ce9              # double 0.64491299999999996
	.quad	0x3fe29f255f3519bd              # double 0.58192699999999997
	.quad	0x3fc8c3b0c4588a05              # double 0.19347200000000001
	.quad	0x3fe6f32378ab0c89              # double 0.71718000000000004
	.quad	0x3fdd67b5f1bef49d              # double 0.459455
	.quad	0x3fdc01b43526527a              # double 0.43760399999999999
	.quad	0x3fee3ba12b5e529c              # double 0.94477900000000003
	.quad	0x3fe93d3a1d323fee              # double 0.78872399999999998
	.quad	0x3fe31aeb3dd11be7              # double 0.59703600000000001
	.quad	0x3fb94024b33daf8e              # double 0.098635
	.quad	0x3fec3e7d1351159c              # double 0.88262799999999996
	.quad	0x3fe7d634549b62c7              # double 0.74489799999999995
	.quad	0x3fe11626b2f23034              # double 0.53395400000000004
	.quad	0x3fad1244a6223e18              # double 0.056779999999999997
	.quad	0x3fe24adbc664d3bf              # double 0.57163799999999998
	.quad	0x3fc9fb15b573eab3              # double 0.20297499999999999
	.quad	0x3faee957470eb24a              # double 0.060373999999999997
	.quad	0x3fb6aa7ded6ba8c6              # double 0.088539000000000006
	.quad	0x3fd9ace67d77fae3              # double 0.40117799999999998
	.quad	0x3fd7fd7a13c254a4              # double 0.37484600000000001
	.quad	0x3fd257bc7f77af64              # double 0.286605
	.quad	0x3fdc29d8409e55c1              # double 0.440054
	.quad	0x3fee74b1ee243569              # double 0.95174499999999995
	.quad	0x3fa2b96f21f6cacd              # double 0.036570999999999999
	.quad	0x3fe9ad080b673c4f              # double 0.80237199999999997
	.quad	0x3fbb3e468cac4b4d              # double 0.106419
	.quad	0x3fe13c74fb549f95              # double 0.53863000000000005
	.quad	0x3fe87136a400fba9              # double 0.76382000000000005
	.quad	0x3fdc308feac42e99              # double 0.44046400000000002
	.quad	0x3fedd6abde3fbbd8              # double 0.93245500000000003
	.quad	0x3fe3c29e0a41a262              # double 0.61750700000000003
	.quad	0x3fc4075f6fd21ff3              # double 0.156475
	.quad	0x3feb96a6a012599f              # double 0.86214000000000002
	.quad	0x3fa3dccea28fe261              # double 0.038794000000000002
	.quad	0x3fb886df82b1f688              # double 0.095808000000000004
	.quad	0x3fd54a515ce9e5e2              # double 0.33266099999999998
	.quad	0x3fe7176bc1eff9f8              # double 0.72160899999999994
	.quad	0x3fd2bea0ba1f4b1f              # double 0.29288500000000001
	.quad	0x3fed573c925785f9              # double 0.91689900000000002
	.quad	0x3fc31e42e1262025              # double 0.14936099999999999
	.quad	0x3fdb67c286f8ad25              # double 0.42820799999999998
	.quad	0x3fd65b0ff10ecb75              # double 0.34930800000000001
	.quad	0x3fb295faa8a82a56              # double 0.072600999999999999
	.quad	0x3fe10e9b38d60a63              # double 0.53303299999999998
	.quad	0x3fed04e831ad2136              # double 0.90684900000000002
	.quad	0x3fea44fa05143bf7              # double 0.82091999999999998
	.quad	0x3f9b4cc25072085b              # double 0.02666
	.quad	0x3fe9633eff195033              # double 0.79336499999999999
	.quad	0x3fed7444e0daa0cb              # double 0.92044300000000001
	.quad	0x3fefda78f25a2510              # double 0.99541900000000005
	.quad	0x3fee8e736049ecb3              # double 0.95488899999999999
	.quad	0x3f8aaef2c7325919              # double 0.013029000000000001
	.quad	0x3fe5ba6ce358298d              # double 0.67900700000000003
	.quad	0x3fe292a305532618              # double 0.58040000000000003
	.quad	0x3fbdef416bdb1a6d              # double 0.11693199999999999
	.quad	0x3fe79231c64ba94c              # double 0.73659600000000003
	.quad	0x3fdeaaf35e310dbf              # double 0.479184
	.quad	0x3fece0d4562e09ff              # double 0.90244500000000005
	.quad	0x3fb681882adc4c9d              # double 0.087914000000000006
	.quad	0x3fdda9c99285a922              # double 0.46348800000000001
	.quad	0x3fd2d6777079e59f              # double 0.29433999999999999
	.quad	0x3fd522a6f3f52fc2              # double 0.33023999999999998
	.quad	0x3fdf24f6598e10cf              # double 0.48663099999999998
	.quad	0x3fc895af294dd723              # double 0.19206799999999999
	.quad	0x3feca50d6b228dca              # double 0.89514800000000005
	.quad	0x3fd0bfe3b03e20cd              # double 0.261712
	.quad	0x3fd01b4784230fd0              # double 0.25166500000000003
	.quad	0x3fefc6da4484944f              # double 0.99302400000000001
	.quad	0x3fed58cb07d0aeda              # double 0.91708900000000004
	.quad	0x3fdfcdee34fc610f              # double 0.496944
	.quad	0x3fd888bda9435ac9              # double 0.38334600000000002
	.quad	0x3fd7eabffcdab192              # double 0.37370300000000001
	.quad	0x3fed077ccc037931              # double 0.90716399999999997
	.quad	0x3fe0ba0620ab7132              # double 0.52270799999999995
	.quad	0x3fe17e7c06e19b91              # double 0.54669000000000001
	.quad	0x3fe62f20ea5b530d              # double 0.69325300000000001
	.quad	0x3fedc044284dfce3              # double 0.92971999999999999
	.quad	0x3fd51ae2da554b8c              # double 0.329766
	.quad	0x3fd095c422036007              # double 0.25914100000000001
	.quad	0x3fefcafd5454152b              # double 0.99352899999999999
	.quad	0x3fdb373f316e3715              # double 0.42524699999999999
	.quad	0x3fe9d67fd3f5b5fa              # double 0.80743399999999999
	.quad	0x3fd625edd052934b              # double 0.34606500000000001
	.quad	0x3fee87789a459104              # double 0.95403700000000002
	.quad	0x3fc76577531db446              # double 0.182784
	.quad	0x3fbb8b69552e2fbe              # double 0.107596
	.quad	0x3fc7877ab324851b              # double 0.18382200000000001
	.quad	0x3fec45d41fa76534              # double 0.88352399999999997
	.quad	0x3fc3e111276fb092              # double 0.155306
	.quad	0x3fab08bb906466b2              # double 0.052801000000000001
	.quad	0x3fead2e946801712              # double 0.83824600000000005
	.quad	0x3fd921d96e9bbf0e              # double 0.39269100000000001
	.quad	0x3fd0f5946c332f01              # double 0.26498899999999997
	.quad	0x3fa863beec39799e              # double 0.047635999999999998
	.quad	0x3fd64b33daf8df7a              # double 0.34833999999999998
	.quad	0x3fd0d55a3a08398a              # double 0.26302199999999998
	.quad	0x3fb5c9d5a187a4a5              # double 0.085111000000000006
	.quad	0x3fe0c914b167ec78              # double 0.52454599999999996
	.quad	0x3fe63f85510d38ce              # double 0.69525400000000004
	.quad	0x3fdc7ba237cdcca7              # double 0.445046
	.quad	0x3fecf038e29f9ce9              # double 0.90432400000000002
	.quad	0x3fc72cd7cf5f4e44              # double 0.18105599999999999
	.quad	0x3feec1871e6cd291              # double 0.96112399999999997
	.quad	0x3fbff6e3f78bbd38              # double 0.124861
	.quad	0x3fe4b57e670e2c13              # double 0.64715500000000004
	.quad	0x3fedc243dccea290              # double 0.92996400000000001
	.quad	0x3fdc7396d0917d6b              # double 0.44455499999999998
	.quad	0x3fdc43fa2ad3e921              # double 0.44164900000000001
	.quad	0x3fd99e59f2ba9d1f              # double 0.40028999999999998
	.quad	0x3fe3864a9cdc4439              # double 0.61014299999999999
	.quad	0x3fdd4873365881a1              # double 0.45754699999999998
	.quad	0x3fc40c9539b88872              # double 0.156634
	.quad	0x3fdab18dac258d58              # double 0.41708699999999999
	.quad	0x3fe501abd1aa821f              # double 0.65645399999999998
	.quad	0x3fe465881a1554fc              # double 0.63739400000000002
	.quad	0x3fdcc5b078d92fb2              # double 0.44956600000000002
	.quad	0x3fe12888b545c78a              # double 0.53619799999999995
	.quad	0x3fdf2949a5657fb7              # double 0.48689500000000002
	.quad	0x3f944f5d35653c9b              # double 0.019834000000000001
	.quad	0x3fd6793dd97f62b7              # double 0.35115000000000002
	.quad	0x3fecb8f36694898f              # double 0.89757699999999996
	.quad	0x3fe556c508b32ce9              # double 0.66684200000000005
	.quad	0x3fe6c2f405f6ba06              # double 0.71129799999999999
	.quad	0x3fed3e2b4959e625              # double 0.91383899999999996
	.quad	0x3fe922df9378ee28              # double 0.78550699999999996
	.quad	0x3fd5250b524399b3              # double 0.33038600000000001
	.quad	0x3fe3556f32bdc26e              # double 0.60417900000000002
	.quad	0x3fd40e779207d4e1              # double 0.31338300000000002
	.quad	0x3fdeb3743632c1f4              # double 0.47970299999999999
	.quad	0x3fda68ec52a411c3              # double 0.41265400000000002
	.quad	0x3f7e6ff7dfa00e28              # double 0.0074310000000000001
	.quad	0x3fd87b56b8737974              # double 0.38252799999999998
	.quad	0x3fed7449129888f8              # double 0.92044499999999996
	.quad	0x3fd9473cd573647c              # double 0.39497300000000002
	.quad	0x3fe2857d1782d384              # double 0.57879499999999995
	.quad	0x3fe739d7fd82773e              # double 0.72581099999999998
	.quad	0x3fc72934acaff6d3              # double 0.18094499999999999
	.quad	0x3fe1d07c84b5dcc6              # double 0.55669999999999997
	.quad	0x3febab7564302b41              # double 0.86468
	.quad	0x3fd920d9945b6c37              # double 0.39262999999999998
	.quad	0x3fda221c8a7a41e5              # double 0.40833199999999997
	.quad	0x3fc62adc4c9c90c5              # double 0.173183
	.quad	0x3fc55dfeb8d82342              # double 0.166931
	.quad	0x3fc3ec4e7253da73              # double 0.15564900000000001
	.quad	0x3fd133e35c5b4aa9              # double 0.26879199999999998
	.quad	0x3fd126351deefe50              # double 0.267957
	.quad	0x3fdc29d8409e55c1              # double 0.440054
	.quad	0x3fe153da72a7bd49              # double 0.54148600000000002
	.quad	0x3fec2e536501e258              # double 0.88065499999999997
	.quad	0x3fe187570c564f98              # double 0.54777100000000001
	.quad	0x3feb756eac860568              # double 0.85808499999999999
	.quad	0x3fd1a37ac3eb7cbb              # double 0.27560299999999999
	.quad	0x3fdf2539756c93a7              # double 0.486647
	.quad	0x3fc712ec6bce8534              # double 0.18026500000000001
	.quad	0x3fe41059ea57214f              # double 0.626996
	.quad	0x3fecd6c7219220ff              # double 0.90121799999999996
	.quad	0x3fe38a808c8259e2              # double 0.61065700000000001
	.quad	0x3fe18982cb20fb22              # double 0.54803599999999997
	.quad	0x3fe07c17a89331a1              # double 0.51514800000000005
	.quad	0x3fe5aaa5c5f7c676              # double 0.67708100000000004
	.quad	0x3fc6d23d4f15e7c9              # double 0.17829100000000001
	.quad	0x3fce56cd6c2efd44              # double 0.23702400000000001
	.quad	0x3fd0c66d373affb0              # double 0.26211099999999998
	.quad	0x3f7cf7878b7a1c26              # double 0.0070720000000000002
	.quad	0x3fe5164628027d89              # double 0.65896900000000003
	.quad	0x3fec14c447c30d30              # double 0.87753499999999995
	.quad	0x3fed6e935b91f70e              # double 0.91974800000000001
	.quad	0x3fb0ddb5525cc426              # double 0.065882999999999997
	.quad	0x3fdb94b380cb6c7a              # double 0.43095099999999997
	.quad	0x3fd315b9a5a89b95              # double 0.29820099999999999
	.quad	0x3fd70fc71d606317              # double 0.36033799999999999
	.quad	0x3fdd47e06961c369              # double 0.45751199999999997
	.quad	0x3fe7f46aa087ca64              # double 0.74858599999999997
	.quad	0x3fec6ef1bac2df0d              # double 0.88854299999999997
	.quad	0x3fc435bd512ec6bd              # double 0.15789
	.quad	0x3fd618ce2d1f1cfc              # double 0.34526400000000002
	.quad	0x3fe6821294573a79              # double 0.70337799999999995
	.quad	0x3fea81f53825e13b              # double 0.82836399999999999
	.quad	0x3fe8fae9ab29e4d6              # double 0.78062900000000002
	.quad	0x3fc8abb44e50c5eb              # double 0.19273999999999999
	.quad	0x3fef144028e4fb98              # double 0.97122200000000002
	.quad	0x3febd63ed0f62739              # double 0.86990299999999998
	.quad	0x3fecfd651b0ccbc0              # double 0.90593199999999996
	.quad	0x3fbd9a73b42cc2d7              # double 0.115638
	.quad	0x3fe782cb20fb224b              # double 0.73471600000000004
	.quad	0x3fd2789e774eebf6              # double 0.28861199999999998
	.quad	0x3fe4c432ca57a787              # double 0.64895000000000003
	.quad	0x3fc42c2374794ea0              # double 0.15759699999999999
	.quad	0x3fe9224894c447c3              # double 0.78543499999999999
	.quad	0x3fe7f156191148fe              # double 0.74821000000000004
	.quad	0x3fe1fce0fc2eba28              # double 0.56211900000000004
	.quad	0x3fe751aa821f2991              # double 0.72871900000000001
	.quad	0x3fefa5529fe004b8              # double 0.988931
	.quad	0x3fddc9081c2e33f0              # double 0.465395
	.quad	0x3fe5753a3ec02f30              # double 0.67056000000000004
	.quad	0x3feb0637bd05af6c              # double 0.84450899999999995
	.quad	0x3fb961804d983947              # double 0.099143999999999996
	.quad	0x3feda176ddaceee1              # double 0.92596000000000001
	.quad	0x3fc3d640e9d51b50              # double 0.154976
	.quad	0x3fec03a53b8e4b88              # double 0.87544500000000003
	.quad	0x3fed96d4c33b5393              # double 0.92466199999999998
	.quad	0x3fe9681882adc4ca              # double 0.79395700000000002
	.quad	0x3fdfbf65dbfceb79              # double 0.49605700000000003
	.quad	0x3fed0bf5d78811b2              # double 0.90771000000000002
	.quad	0x3fefaed352220bc4              # double 0.99009100000000005
	.quad	0x3fd3369b9d7fd827              # double 0.30020799999999997
	.quad	0x3fcf19dece571088              # double 0.242977
	.quad	0x3fefe6ec9e236c16              # double 0.99693900000000002
	.quad	0x3fe2f67903211cb0              # double 0.59258699999999997
	.quad	0x3fb3151e75360d02              # double 0.074540999999999996
	.quad	0x3fe0684ad794a6ec              # double 0.51273100000000005
	.quad	0x3f8e364bec679cc7              # double 0.014751999999999999
	.quad	0x3fd3c48f10a99b6f              # double 0.30887199999999998
	.quad	0x3fdaf91600f34507              # double 0.42145300000000002
	.quad	0x3fdbfab96f21f6cb              # double 0.43717800000000001
	.quad	0x3fe8a615a8deb0fb              # double 0.77027400000000001
	.quad	0x3fe043c7d5ed06ff              # double 0.508274
	.quad	0x3fe42f922962cfd9              # double 0.63080700000000001
	.quad	0x3fd33d6c72192210              # double 0.300624
	.quad	0x3fec41743e963dc5              # double 0.88299000000000005
	.quad	0x3fe17f3493858362              # double 0.54677799999999999
	.quad	0x3fd5ed6777079e5a              # double 0.342615
	.quad	0x3fed547bedb72820              # double 0.91656300000000001
	.quad	0x3f8a6698bb4d4888              # double 0.012891
	.quad	0x3feecdc22ab25b31              # double 0.96261699999999994
	.quad	0x3fe6ddc8323358f3              # double 0.71457300000000001
	.quad	0x3fe526c3b927d45a              # double 0.66098199999999996
	.quad	0x3f97bd48cb4aec8d              # double 0.023182999999999999
	.quad	0x3fe218d25edd0529              # double 0.56552999999999998
	.quad	0x3fe7e3f9a49c2c1b              # double 0.74657899999999999
	.quad	0x3fa46e08f2170931              # double 0.039902
	.quad	0x3fee38f14db59579              # double 0.94445100000000004
	.quad	0x3fd3315d701d9f4d              # double 0.29988799999999999
	.quad	0x3fe4dbe7f2c3009b              # double 0.65184399999999998
	.quad	0x3fefac083126e979              # double 0.98975000000000001
	.quad	0x3fe3531337eb28d8              # double 0.60389099999999996
	.quad	0x3fdd869835158b82              # double 0.46133999999999997
	.quad	0x3fda0b5aa715831f              # double 0.406943
	.quad	0x3fde871e6cd29132              # double 0.476997
	.quad	0x3fea148344c37e6f              # double 0.81500399999999995
	.quad	0x3fe6a2ea0fd3b29a              # double 0.70738699999999999
	.quad	0x3fe40364388ebcc7              # double 0.62541400000000003
	.quad	0x3fd19439de481f54              # double 0.27467200000000003
	.quad	0x3fdd310129cbab65              # double 0.45611600000000002
	.quad	0x3fe9de84f09528f2              # double 0.80841300000000005
	.quad	0x3fe591c4b90214ad              # double 0.67404399999999998
	.quad	0x3fe2c9d388a8b08e              # double 0.58713700000000002
	.quad	0x3febafdfc19c1722              # double 0.86521899999999996
	.quad	0x3fb4d29131ec0b56              # double 0.081337999999999993
	.quad	0x3fee167a95c853c1              # double 0.94024399999999997
	.quad	0x3feb2d18d25edd05              # double 0.84925499999999998
	.quad	0x3fe7c7cd898b2e9d              # double 0.74314000000000002
	.quad	0x3fdbd017dae81883              # double 0.43457600000000002
	.quad	0x3fd76bfca85caafc              # double 0.36596600000000001
	.quad	0x3fce9bb6aa4b9885              # double 0.23912700000000001
	.quad	0x3fb2ad70e6f2e8c0              # double 0.072958999999999996
	.quad	0x3fd293e5fb71fbc6              # double 0.29027700000000001
	.quad	0x3fe137bd05af6c6a              # double 0.53805400000000003
	.quad	0x3fe50c7e28240b78              # double 0.657775
	.quad	0x3fb4bfc2224edf61              # double 0.081050999999999998
	.quad	0x3fe69c0229a5ebb7              # double 0.70654399999999995
	.quad	0x3fe1b0ec31162281              # double 0.55284699999999998
	.quad	0x3fd8d2b2bfdb4cc2              # double 0.38785999999999998
	.quad	0x3fce75e6362a5e78              # double 0.23797299999999999
	.quad	0x3fd3ad31fcd24e16              # double 0.307446
	.quad	0x3fd623d9231c64bb              # double 0.34593800000000002
	.quad	0x3fddb5a20ddc6195              # double 0.46421099999999998
	.quad	0x3fc4b3bb83cf2cf9              # double 0.16173499999999999
	.quad	0x3fae78183f91e647              # double 0.05951
	.quad	0x3fe9dcfede97d06c              # double 0.80822700000000002
	.quad	0x3fe8f9357603925c              # double 0.78042100000000003
	.quad	0x3fdcc0980b242071              # double 0.44925500000000002
	.quad	0x3febacdc011d3672              # double 0.86485100000000004
	.quad	0x3fd3c3c9eecbfb16              # double 0.30882500000000002
	.quad	0x3fd28fde2ef4e011              # double 0.29003099999999998
	.quad	0x3fe55b2b3461309c              # double 0.66737899999999994
	.quad	0x3fe99c5a3e39f773              # double 0.80033600000000005
	.quad	0x3fe4767f4dbdf8f4              # double 0.63946499999999995
	.quad	0x3f804bc27631b585              # double 0.0079570000000000005
	.quad	0x3fe88904f6dfc5ce              # double 0.76672600000000002
	.quad	0x3feb620ab7132724              # double 0.85571799999999997
	.quad	0x3fdb6a400fba8827              # double 0.42836000000000002
	.quad	0x3fc86a6e32e3821b              # double 0.190748
	.quad	0x3fed023a6ce3582a              # double 0.90652200000000005
	.quad	0x3fe4ab7995ee136e              # double 0.64593199999999995
	.quad	0x3feb72a5a469d734              # double 0.85774499999999997
	.quad	0x3fe9cd0dcfcc5b8e              # double 0.80628100000000003
	.quad	0x3fecbc7d5ed06fef              # double 0.89800899999999995
	.quad	0x3fd90d7be9856a38              # double 0.39144800000000002
	.quad	0x3fc5f91e646f1562              # double 0.17166500000000001
	.quad	0x3fdba04d12018a44              # double 0.43165900000000001
	.quad	0x3fdbddf00abf76a3              # double 0.435421
	.quad	0x3fe8eb1a2a4db164              # double 0.77869900000000003
	.quad	0x3faffed20296b335              # double 0.062490999999999998
	.quad	0x3fec76cce5f7403e              # double 0.88950200000000001
	.quad	0x3fe960f1b25f633d              # double 0.79308400000000001
	.quad	0x3fa8bd66277c45cc              # double 0.048320000000000002
	.quad	0x3fe19fab96f21f6d              # double 0.55074100000000004
	.quad	0x3fcb0fe8ab4fa483              # double 0.211423
	.quad	0x3fea8a6117720c8d              # double 0.82939200000000002
	.quad	0x3fc97d49d7ba6699              # double 0.19913600000000001
	.quad	0x3fca7bcc2938de6e              # double 0.206903
	.quad	0x3fee95af294dd723              # double 0.95577199999999995
	.quad	0x3fd58fcd67fd3f5b              # double 0.33690199999999998
	.quad	0x3fe45a250f840182              # double 0.63600400000000001
	.quad	0x3fd093c03bc4d22d              # double 0.25901800000000003
	.quad	0x3fe0c0229a5ebb77              # double 0.52345399999999997
	.quad	0x3f9f901083dbc233              # double 0.030823
	.quad	0x3fc546994185058e              # double 0.166217
	.quad	0x3fd2368ad6883772              # double 0.28457900000000003
	.quad	0x3fe75c6c11a11234              # double 0.73003200000000001
	.quad	0x3fe988e79aae6c8f              # double 0.79796199999999995
	.quad	0x3fb8a0a0f4d7add1              # double 0.096200999999999995
	.quad	0x3fe77e7e1fc08fa8              # double 0.73419100000000004
	.quad	0x3fe8593e5fb71fbc              # double 0.76089399999999995
	.quad	0x3fecb8e086bdf4c3              # double 0.89756800000000003
	.quad	0x3fee7d523b3636f4              # double 0.95279800000000003
	.quad	0x3fe47262888b545c              # double 0.63896299999999995
	.quad	0x3fe3d77963992c8c              # double 0.62005299999999997
	.quad	0x3fc47570c564f97f              # double 0.159834
	.quad	0x3fe9add590c0ad04              # double 0.80247000000000001
	.quad	0x3f88ba40d90e23af              # double 0.012074
	.quad	0x3fa1565c2d278078              # double 0.033862000000000003
	.quad	0x3fed9fe86833c600              # double 0.92576999999999998
	.quad	0x3fe81a52263d816b              # double 0.75321300000000002
	.quad	0x3fce58f7121ab4b7              # double 0.23709
	.quad	0x3fd88ca8198f1d3f              # double 0.38358500000000001
	.quad	0x3fe868af81626b2f              # double 0.76277899999999998
	.quad	0x3fe05944aa53fc01              # double 0.51089700000000005
	.quad	0x3f876b3bb83cf2d0              # double 0.011435000000000001
	.quad	0x3fdc75536933a040              # double 0.44466099999999997
	.quad	0x3fb2be1650a45d42              # double 0.073213
	.quad	0x3fd69a95421c0443              # double 0.35318500000000003
	.quad	0x3fdd427418d6909b              # double 0.457181
	.quad	0x3fddf80dc33721d5              # double 0.46826499999999999
	.quad	0x3fef0759253543af              # double 0.96964700000000003
	.quad	0x3fe8736262cba733              # double 0.76408500000000001
	.quad	0x3fb814b599aa6091              # double 0.094065999999999997
	.quad	0x3fdc65e892253112              # double 0.44372
	.quad	0x3fd04b6a619da9ca              # double 0.25460300000000002
	.quad	0x3fc4af4f0d844d01              # double 0.16159999999999999
	.quad	0x3fc4c6ac215b9a5b              # double 0.16231300000000001
	.quad	0x3fd50b5ed8d36b4c              # double 0.32881899999999997
	.quad	0x3fc50d62bf11f927              # double 0.16447100000000001
	.quad	0x3fe5f2452c59fb1e              # double 0.68582399999999999
	.quad	0x3fcd572580c308ff              # double 0.22922200000000001
	.quad	0x3fe42c6cdaf4adbc              # double 0.63042299999999996
	.quad	0x3fdaa8cdea033e79              # double 0.41655300000000001
	.quad	0x3fd38ba40d90e23b              # double 0.305398
	.quad	0x3fbcfadf2ecf2064              # double 0.113203
	.quad	0x3fb0385c67dfe32a              # double 0.06336
	.quad	0x3fe4dc4a83b1d0c8              # double 0.651891
	.quad	0x3f9279dd3bafd977              # double 0.018043
	.quad	0x3fba16a487336588              # double 0.101908
	.quad	0x3fe09e83e425aee6              # double 0.51934999999999998
	.quad	0x3fe8217f4128bf3c              # double 0.754089
	.quad	0x3fe3195ee136e71d              # double 0.59684700000000002
	.quad	0x3fe46d02cd39da16              # double 0.63830699999999996
	.quad	0x3fc56c3fc43b2dd3              # double 0.16736599999999999
	.quad	0x3feca311e85fd04a              # double 0.89490599999999998
	.quad	0x3fac46d82ba5a038              # double 0.055227999999999999
	.quad	0x3fe1ceaf251c193b              # double 0.55647999999999997
	.quad	0x3fc43bf727136a40              # double 0.15808
	.quad	0x3fed31209edbf8ba              # double 0.91224700000000003
	.quad	0x3fea294bbe4473cd              # double 0.81754099999999996
	.quad	0x3fda9513f8db4891              # double 0.41534900000000002
	.quad	0x3fc5a1db877ab325              # double 0.16900200000000001
	.quad	0x3fe15d377e1b8ed2              # double 0.54262900000000003
	.quad	0x3fa884406c00da1b              # double 0.047884000000000003
	.quad	0x3fdae653868fd19a              # double 0.42030800000000001
	.quad	0x3fe9fb8d3f1843c4              # double 0.81195700000000003
	.quad	0x3fe470bae89eba6b              # double 0.63876100000000002
	.quad	0x3fb3e963dc486ad3              # double 0.077780000000000002
	.quad	0x3fef906ab14ec205              # double 0.986379
	.quad	0x3fa7d955714b9cb7              # double 0.046580000000000003
	.quad	0x3fe523dd54da4ce8              # double 0.66062799999999999
	.quad	0x3fe429ed3953dea4              # double 0.63011799999999996
	.quad	0x3fd7643cc07aaef3              # double 0.36549300000000001
	.quad	0x3fee0c21e1d2178f              # double 0.93898099999999995
	.quad	0x3fd3da597d49d7ba              # double 0.31020199999999998
	.quad	0x3fc929d40ee06d94              # double 0.19658900000000001
	.quad	0x3fe562f166e008ea              # double 0.66832800000000003
	.quad	0x3fefca31e7d9988d              # double 0.99343199999999998
	.quad	0x3febb2e3821af7d3              # double 0.865587
	.quad	0x3fe8bf1a5ca29846              # double 0.77332800000000002
	.quad	0x3fb397353b4b2fa9              # double 0.076525999999999997
	.quad	0x3fdfe30caa326e11              # double 0.49823299999999998
	.quad	0x3fed05e80bed740c              # double 0.90697099999999997
	.quad	0x3fec229c779a6b51              # double 0.87922500000000003
	.quad	0x3fc75c5b4aa9717e              # double 0.182506
	.quad	0x3fe0cf7ec3547e07              # double 0.52532900000000005
	.quad	0x3f86bd2b6f19934f              # double 0.011103
	.quad	0x3fd51afc04c8bc9d              # double 0.32977200000000001
	.quad	0x3fec9cc74b838c11              # double 0.89413799999999999
	.quad	0x3fe0df3519bd4068              # double 0.52724700000000002
	.quad	0x3fef216e7a311e86              # double 0.972831
	.quad	0x3fe4d104d551d68c              # double 0.65051499999999995
	.quad	0x3fb1bd8383ad9f0a              # double 0.069297999999999998
	.quad	0x3fc9573eab367a10              # double 0.19797500000000001
	.quad	0x3fe93d987c6327ee              # double 0.78876900000000005
	.quad	0x3fe1bdc486ad2dcb              # double 0.55441499999999999
	.quad	0x3fbb5126634117f8              # double 0.106707
	.quad	0x3fe41b5a63f9a49c              # double 0.62833899999999998
	.quad	0x3fec16787ce95fab              # double 0.87774300000000005
	.quad	0x3fda398e97071822              # double 0.40976299999999999
	.quad	0x3fdb09310129cbab              # double 0.42243599999999998
	.quad	0x3fc8284dfce3150e              # double 0.18873000000000001
	.quad	0x3fc7f7b5aea3161a              # double 0.187247
	.quad	0x3fcb4ea8da7f3cf7              # double 0.213338
	.quad	0x3fc83ac929aa1d75              # double 0.18929399999999999
	.quad	0x3fe87807789a4591              # double 0.764652
	.quad	0x3fef63dc486ad2dd              # double 0.98094000000000003
	.quad	0x3fe06ee525892685              # double 0.51353700000000002
	.quad	0x3fca7bb2fec56d5d              # double 0.2069
	.quad	0x3fd857ff9b56323c              # double 0.38037100000000001
	.quad	0x3fa3dd54da4ce810              # double 0.038797999999999999
	.quad	0x3fe91795b35b0bbf              # double 0.78412899999999996
	.quad	0x3fd74623d0bfa094              # double 0.36365599999999998
	.quad	0x3fce387df5cf2496              # double 0.236099
	.quad	0x3fefc6759ab6d00b              # double 0.99297599999999996
	.quad	0x3febabef06b37868              # double 0.86473800000000001
	.quad	0x3fd11083dbc23316              # double 0.26663300000000001
	.quad	0x3f96a098915bdd76              # double 0.022096999999999999
	.quad	0x3fc083a109d0635a              # double 0.12901699999999999
	.quad	0x3fdeb3bb83cf2cf9              # double 0.47971999999999998
	.quad	0x3fec26916440f239              # double 0.87970800000000005
	.quad	0x3fed569d30270f39              # double 0.91682300000000005
	.quad	0x3fe4834d26fa3fcd              # double 0.64102800000000004
	.quad	0x3fc02374794ea077              # double 0.126082
	.quad	0x3fdfd017dae81883              # double 0.49707600000000002
	.quad	0x3fe67eef5ec80c74              # double 0.70299500000000004
	.quad	0x3fef2a8650e77920              # double 0.97394099999999994
	.quad	0x3feb765fd8adab9f              # double 0.85819999999999996
	.quad	0x3fed600b02928177              # double 0.91797399999999996
	.quad	0x3fe9916ebd4cfd09              # double 0.79900300000000002
	.quad	0x3fb497635e74299e              # double 0.080435000000000006
	.quad	0x3fe4b2441fea8113              # double 0.64676100000000003
	.quad	0x3fd3810a569b1748              # double 0.30475099999999999
	.quad	0x3feec5e4e69f05ea              # double 0.96165699999999998
	.quad	0x3fee3a53b8e4b87c              # double 0.94462000000000001
	.quad	0x3fdba63b688bda94              # double 0.43202099999999999
	.quad	0x3fddc0a4a05dd8f9              # double 0.46488299999999999
	.quad	0x3fe4d5c74751ce29              # double 0.65109600000000001
	.quad	0x3fedff62b6ae7d56              # double 0.93742499999999995
	.quad	0x3fe881669ced0b31              # double 0.76579600000000003
	.quad	0x3fe2b1ad2135daad              # double 0.58418899999999996
	.quad	0x3fedc26138fffbce              # double 0.92997799999999997
	.quad	0x3fc8df69878316a0              # double 0.19431799999999999
	.quad	0x3fe37cd67fd3f5b6              # double 0.608989
	.quad	0x3fd23165d3996fa8              # double 0.28426499999999999
	.quad	0x3fcd9ad85dfa871a              # double 0.23128799999999999
	.quad	0x3fedccdd93c46d83              # double 0.93125800000000003
	.quad	0x3fd79741d084e832              # double 0.36860700000000002
	.quad	0x3faa8ac5c13fd0d0              # double 0.051839999999999997
	.quad	0x3fd5f86a098915be              # double 0.34328700000000001
	.quad	0x3fe868123810e886              # double 0.76270400000000005
	.quad	0x3fee33269df97aab              # double 0.94374400000000003
	.quad	0x3fefec82e019b0ab              # double 0.99762099999999998
	.quad	0x3fc0b7ed41b75a75              # double 0.13061300000000001
	.quad	0x3fe49426fe718a87              # double 0.64308500000000002
	.quad	0x3fe72cf312b1b36c              # double 0.72423700000000002
	.quad	0x3fe4250507a6bd6f              # double 0.62951900000000005
	.quad	0x3fc463b688bda943              # double 0.15929299999999999
	.quad	0x3fd12a62aa19439e              # double 0.26821200000000001
	.quad	0x3feb22a4db163bac              # double 0.84797900000000003
	.quad	0x3fe99361dc93ea2d              # double 0.79924099999999998
	.quad	0x3fb1b60ae9680e06              # double 0.069183999999999996
	.quad	0x3fb266ba493c89f4              # double 0.071879999999999999
	.quad	0x3fe285a0be510907              # double 0.57881199999999999
	.quad	0x3fe95e6bc621b7e1              # double 0.79277600000000004
	.quad	0x3fe6135b91f70de9              # double 0.689863
	.quad	0x3fc8148344c37e6f              # double 0.18812599999999999
	.quad	0x3fef36cdf266ba49              # double 0.97543999999999997
	.quad	0x3fe271fbc5de9c02              # double 0.57641399999999998
	.quad	0x3fe81070fbeb9e49              # double 0.75200699999999998
	.quad	0x3fef2c8a372606fb              # double 0.97418700000000002
	.quad	0x3fd30ee49f51697f              # double 0.29778399999999999
	.quad	0x3fc64d22c881e471              # double 0.17422899999999999
	.quad	0x3fec0f94c87980f5              # double 0.87690199999999996
	.quad	0x3fbf98a65492ff4c              # double 0.123423
	.quad	0x3f9caa7589efd86b              # double 0.027994000000000002
	.quad	0x3fe95aec4a4095f2              # double 0.79234899999999997
	.quad	0x3fc9baf533f42353              # double 0.201018
	.quad	0x3fe2baa1511dffc5              # double 0.58528199999999997
	.quad	0x3fe37304039abf34              # double 0.60779000000000005
	.quad	0x3feb5c5d63886595              # double 0.85502500000000003
	.quad	0x3f59695d91ab8e8f              # double 0.0015510000000000001
	.quad	0x3fd4f03d145d8516              # double 0.32716299999999998
	.quad	0x3feafab10ba62670              # double 0.84310200000000002
	.quad	0x3fc2991ff7164c73              # double 0.14529800000000001
	.quad	0x3fd2be09bb6aa4ba              # double 0.29284900000000003
	.quad	0x3fece4ef0281ba80              # double 0.90294600000000003
	.quad	0x3fec46fbd273d5bb              # double 0.88366500000000003
	.quad	0x3fd959641f644956              # double 0.39608100000000002
	.quad	0x3fec1cf56eac8605              # double 0.87853499999999995
	.quad	0x3fe43cc6c54bcf0b              # double 0.63241899999999995
	.quad	0x3fee3d66277c45cc              # double 0.94499500000000002
	.quad	0x3feabaf102363b25              # double 0.83531999999999995
	.quad	0x3feba66559f6ec5b              # double 0.864062
	.quad	0x3fe965929670196e              # double 0.79364900000000005
	.quad	0x3fca255b035bd513              # double 0.204265
	.quad	0x3fe370ed3d859c8d              # double 0.60753500000000005
	.quad	0x3fd9fba8826aa8eb              # double 0.40598499999999998
	.quad	0x3fe6d1a005c4651f              # double 0.71308899999999997
	.quad	0x3fe14b3e5753a3ec              # double 0.540435
	.quad	0x3fe764b018611fd6              # double 0.73104100000000005
	.quad	0x3fd036fc158fb43e              # double 0.25335600000000003
	.quad	0x3fb0517614595358              # double 0.063742999999999994
	.quad	0x3fd4ac4f7ec3547e              # double 0.323017
	.quad	0x3fa1db65ecc3e319              # double 0.034876999999999998
	.quad	0x3fc1779e9d0e9920              # double 0.136463
	.quad	0x3fd8d1244a6223e2              # double 0.38776500000000003
	.quad	0x3feb1409a2403148              # double 0.84619599999999995
	.quad	0x3fec9057d1782d38              # double 0.89261999999999997
	.quad	0x3fec43bb40b34e77              # double 0.88326800000000005
	.quad	0x3fef61804d983947              # double 0.98065199999999996
	.quad	0x3fd107f23cc8de2b              # double 0.26611000000000001
	.quad	0x3fc42424a276b7ed              # double 0.15735299999999999
	.quad	0x3fc2337a80cf9e38              # double 0.14219599999999999
	.quad	0x3fcce3ac0c62e4d2              # double 0.22569800000000001
	.quad	0x3fe62908a265f0f6              # double 0.69250900000000004
	.quad	0x3fee2a7bd48cb4af              # double 0.94268600000000002
	.quad	0x3fe1bd4067cf1c32              # double 0.55435199999999996
	.quad	0x3fdf8da3c21187e8              # double 0.49302000000000001
	.quad	0x3fb4d50ebaade658              # double 0.081376000000000004
	.quad	0x3feb2fa5093964a6              # double 0.84956600000000004
	.quad	0x3fd84cf4a558ea7d              # double 0.37969700000000001
	.quad	0x3fc709c7ffde7211              # double 0.17998600000000001
	.quad	0x3fe6016f0068db8c              # double 0.68767500000000004
	.quad	0x3fecf39d1b2e59b0              # double 0.90473800000000004
	.quad	0x3fe4c6a7ef9db22d              # double 0.64924999999999999
	.quad	0x3fc3acabc5154867              # double 0.15370700000000001
	.quad	0x3fa3e425aee631f9              # double 0.038850000000000003
	.quad	0x3f7816aceaaf35e3              # double 0.0058809999999999999
	.quad	0x3fe53530ced4e4c9              # double 0.66274299999999997
	.quad	0x3fd8e225fa658c4c              # double 0.38880300000000001
	.quad	0x3fdffa615a8deb10              # double 0.49965700000000002
	.quad	0x3fd665b63d3e4ef0              # double 0.34995799999999999
	.quad	0x3fdb5942917507ea              # double 0.42732300000000001
	.quad	0x3f903fb3743632c2              # double 0.015868
	.quad	0x3fd3b6ed6777079e              # double 0.30803999999999998
	.quad	0x3fd2b4aa9717df1a              # double 0.29227700000000001
	.quad	0x3fe60b135979181a              # double 0.68885200000000002
	.quad	0x3fe6b3a4723aafff              # double 0.70942899999999998
	.quad	0x3fda0346dc5d6388              # double 0.40644999999999998
	.quad	0x3fe8c3e74afd5454              # double 0.77391399999999999
	.quad	0x3fee6f177a7008a7              # double 0.95106100000000005
	.quad	0x3fb16451b93037d6              # double 0.067936999999999997
	.quad	0x3fd08d3f1843c3a4              # double 0.25862099999999999
	.quad	0x3fd18ffb8b263950              # double 0.27441300000000002
	.quad	0x3fe9783be6601bca              # double 0.79592700000000005
	.quad	0x3fe825fc7e6b3fea              # double 0.754637
	.quad	0x3fe24dc65c70435f              # double 0.571994
	.quad	0x3fde5b5b70691ea8              # double 0.47432600000000003
	.quad	0x3fec6c8d5c74751d              # double 0.88825100000000001
	.quad	0x3feb3c2b94d94079              # double 0.85109500000000005
	.quad	0x3fd104ff43419e30              # double 0.26593
	.quad	0x3fd894898f605ab4              # double 0.38406600000000002
	.quad	0x3fd7f74cd31769a9              # double 0.374469
	.quad	0x3fdca64c2f837b4a              # double 0.44764999999999999
	.quad	0x3fee2ecaeea63b69              # double 0.94321200000000005
	.quad	0x3fe61144cbe1eb42              # double 0.689608
	.quad	0x3fecfc158fb43d8a              # double 0.90577200000000002
	.quad	0x3fe90c75c4a83b1d              # double 0.78277099999999999
	.quad	0x3fef736262cba733              # double 0.98283500000000001
	.quad	0x3fdacf2495e17e35              # double 0.41889300000000002
	.quad	0x3fe4bee807bbb624              # double 0.64830399999999999
	.quad	0x3fe5f3797460242d              # double 0.685971
	.quad	0x3fe10943e1006078              # double 0.53238099999999999
	.quad	0x3fe34a4f440af1cc              # double 0.60282100000000005
	.quad	0x3fd151b93037d630              # double 0.27061299999999999
	.quad	0x3fe4e657b84db9c7              # double 0.65311799999999998
	.quad	0x3fd62e6ea8544780              # double 0.346584
	.quad	0x3fcb98a65492ff4c              # double 0.21559600000000001
	.quad	0x3fedd7de0d66f0d0              # double 0.93260100000000001
	.quad	0x3fead4cfd08d4bad              # double 0.83847799999999995
	.quad	0x3fe6b810e8858ff7              # double 0.70996899999999996
	.quad	0x3fdac0f88333fc87              # double 0.41802800000000001
	.quad	0x3fecce6e221c8a7a              # double 0.90019899999999997
	.quad	0x3fe0a56de33269e0              # double 0.52019400000000005
	.quad	0x3f8fba450acc0bdd              # double 0.015492000000000001
	.quad	0x3fda0f1b25f633ce              # double 0.40717199999999998
	.quad	0x3fad64b662fdfc1a              # double 0.057409000000000002
	.quad	0x3fe50dd616f86a0a              # double 0.65793900000000005
	.quad	0x3fd9c30d306a2b17              # double 0.40253
	.quad	0x3feb086df82b1f68              # double 0.84477899999999995
	.quad	0x3fea17396d0917d7              # double 0.81533500000000003
	.quad	0x3fb8e60807357e67              # double 0.097259999999999999
	.quad	0x3fe16be596c82e02              # double 0.54442100000000004
	.quad	0x3fcc49a9973d9ec7              # double 0.220998
	.quad	0x3fe503cf2cf95d4f              # double 0.65671500000000005
	.quad	0x3fb94467381d7dbf              # double 0.098699999999999996
	.quad	0x3fe5ec6583e8576d              # double 0.68510700000000002
	.quad	0x3fb42a23bff8a8f4              # double 0.078768000000000005
	.quad	0x3fcbc254a3c64346              # double 0.21686800000000001
	.quad	0x3fb8bf6e3f78bbd4              # double 0.096671000000000006
	.quad	0x3fe59797cc39ffd6              # double 0.67475499999999999
	.quad	0x3fbba08398a65493              # double 0.107918
	.quad	0x3fc3b7ae5796bfcb              # double 0.15404300000000001
	.quad	0x3fea9b4bb5e0f7fd              # double 0.831457
	.quad	0x3fe611ab8e8ea39c              # double 0.68965699999999996
	.quad	0x3fd52ddbdb5d8948              # double 0.330924
	.quad	0x3fe526b93ccd0fe9              # double 0.66097700000000004
	.quad	0x3fe5411a11233df3              # double 0.66419700000000004
	.quad	0x3fd88c0ce91c8eac              # double 0.383548
	.quad	0x3fefb923a29c779a              # double 0.99134999999999995
	.quad	0x3fe467a0f9096bba              # double 0.63765000000000005
	.quad	0x3fcd1044f1a1986c              # double 0.22705900000000001
	.quad	0x3fd5823c85c24c40              # double 0.33607399999999998
	.quad	0x3fd7ede97d06bbdc              # double 0.37389600000000001
	.quad	0x3fce88ce703afb7f              # double 0.23855000000000001
	.quad	0x3fe789d0635a426c              # double 0.73557300000000003
	.quad	0x3fee27525460aa65              # double 0.94230000000000003
	.quad	0x3fe68b8066c2acb8              # double 0.70452899999999996
	.quad	0x3feebe07a28bb0a3              # double 0.96069700000000002
	.quad	0x3fb49df1172ef0ae              # double 0.080534999999999995
	.quad	0x3fd2728a6117720d              # double 0.28824100000000002
	.quad	0x3fe64b70ac3a860e              # double 0.69670900000000002
	.quad	0x3fe18d1b71758e22              # double 0.54847500000000005
	.quad	0x3fa173d9ec700043              # double 0.034086999999999999
	.quad	0x3fda5b078d92fb1a              # double 0.41180600000000001
	.quad	0x3fd46eeb702602c9              # double 0.31927
	.quad	0x3fe147991bc55864              # double 0.53998999999999997
	.quad	0x3fea035dedf1e083              # double 0.81291100000000005
	.quad	0x3fd9ddc6195464dc              # double 0.40416099999999999
	.quad	0x3fee2f9a8cdea034              # double 0.94331100000000001
	.quad	0x3fb9ba0a52695960              # double 0.100495
	.quad	0x3fe1dad106ee30cb              # double 0.55796100000000004
	.quad	0x3fd5adb402d16b98              # double 0.338727
	.quad	0x3fe7020a30db6a1f              # double 0.71899900000000005
	.quad	0x3fe8232096787ce9              # double 0.75428799999999996
	.quad	0x3fb8a2014727dcbe              # double 0.096222000000000001
	.quad	0x3fefd89ce4a7b4e5              # double 0.99519199999999996
	.quad	0x3fe6a9f383f0bae9              # double 0.70824600000000004
	.quad	0x3fd707d4e09784ec              # double 0.35985299999999998
	.quad	0x3fbc8f861a60d456              # double 0.111565
	.quad	0x3fe6f3860999dcb5              # double 0.71722699999999995
	.quad	0x3fee6d9dfdac68a9              # double 0.95088099999999998
	.quad	0x3fe959af9ebe9c88              # double 0.79219799999999996
	.quad	0x3fcdf1cfbb949625              # double 0.23394200000000001
	.quad	0x3feb6935b91f70df              # double 0.85659300000000005
	.quad	0x3fc097bfa4c61d86              # double 0.129631
	.quad	0x3fe1610f0e90bc7b              # double 0.54309799999999997
	.quad	0x3fe0d4195cc857f3              # double 0.525891
	.quad	0x3fe3e9d51b4fe79f              # double 0.62229400000000001
	.quad	0x3fe47f3f0fe047d4              # double 0.64053300000000002
	.quad	0x3fe142aa9f7b5aea              # double 0.53938799999999998
	.quad	0x3fe1c7b02d59d55e              # double 0.55562599999999995
	.quad	0x3fb5014b599aa609              # double 0.082050999999999999
	.quad	0x3fec95ce9e5e2479              # double 0.89328700000000005
	.quad	0x3fe20c868b9fdbd3              # double 0.564029
	.quad	0x3fd7fe6d58c8eef2              # double 0.37490400000000002
	.quad	0x3fece9f8c21e1d21              # double 0.90356099999999995
	.quad	0x3feff6db940fecdd              # double 0.99888399999999999
	.quad	0x3fa361dc93ea2d30              # double 0.037856000000000001
	.quad	0x3fea95aaf78feef6              # double 0.83077000000000001
	.quad	0x3fdea06e9ff0cbb0              # double 0.47854200000000002
	.quad	0x3fea4768dfbd6a59              # double 0.82121699999999997
	.quad	0x3fecf01fb82c2bd8              # double 0.904312
	.quad	0x3fe843f5f91600f3              # double 0.75829599999999997
	.quad	0x3fe8dedd052934ad              # double 0.77720500000000003
	.quad	0x3fdd82a9930be0df              # double 0.46110000000000001
	.quad	0x3fe0398c7e28240b              # double 0.50702499999999995
	.quad	0x3fcdd883ba3443d4              # double 0.23316999999999999
	.quad	0x3fcfc297bfa4c61e              # double 0.24812600000000001
	.quad	0x3fe2c88c60cbf2b2              # double 0.58698099999999998
	.quad	0x3fe29344806290ef              # double 0.58047700000000002
	.quad	0x3fcc957470eb24a7              # double 0.22331100000000001
	.quad	0x3fef8203e63e8dda              # double 0.98462099999999997
	.quad	0x3fd47a311e85fd05              # double 0.31995800000000002
	.quad	0x3f8908e581cf7879              # double 0.012224
	.quad	0x3fb3785729b280f1              # double 0.076054999999999998
	.quad	0x3fd1fddebd9018e7              # double 0.28111999999999998
	.quad	0x3fee723cc8de2ac3              # double 0.95144499999999999
	.quad	0x3fe3c0895d0b73d2              # double 0.61725300000000005
	.quad	0x3fc8071c53f39d1b              # double 0.18771699999999999
	.quad	0x3fe1059c8c9320da              # double 0.53193500000000005
	.quad	0x3fd8103c8e25c811              # double 0.37599100000000002
	.quad	0x3fe2a159817b95a3              # double 0.58219600000000005
	.quad	0x3fe7dc9a34ca0c28              # double 0.74567899999999998
	.quad	0x3fc171971c10d7bf              # double 0.13627900000000001
	.quad	0x3fc3a4484944ed70              # double 0.153451
	.quad	0x3fe1e83a109d0636              # double 0.55959800000000004
	.quad	0x3fe237f38c5436b9              # double 0.56933
	.quad	0x3fe6d6b65a9a8049              # double 0.71370999999999996
	.quad	0x3fe9f4b838c111ae              # double 0.81112300000000004
	.quad	0x3fca5be1a8262457              # double 0.205929
	.quad	0x3feb7e79ee02a77a              # double 0.85918899999999998
	.quad	0x3fec1d68c692f6e8              # double 0.87858999999999998
	.quad	0x3fcc2517e77d523b              # double 0.21988199999999999
	.quad	0x3fde13cee9dd7ecc              # double 0.46995900000000002
	.quad	0x3fc99d883ba3443d              # double 0.20011999999999999
	.quad	0x3fe42be48a58b3f6              # double 0.63035799999999997
	.quad	0x3fe7b74794ea0770              # double 0.74112299999999998
	.quad	0x3fd501322f2734f8              # double 0.32819799999999999
	.quad	0x3fc1a9a8049667b6              # double 0.13799
	.quad	0x3fe9ea2f48c2e771              # double 0.80983700000000003
	.quad	0x3fe381cd5f99c38b              # double 0.609595
	.quad	0x3fdb19f7f8ca8199              # double 0.42346
	.quad	0x3fd330d306a2b170              # double 0.29985499999999998
	.quad	0x3fe259231c64ba95              # double 0.57338100000000003
	.quad	0x3fe5d3f9e7b80a9e              # double 0.68212600000000001
	.quad	0x3fdff7b5aea3161a              # double 0.49949399999999999
	.quad	0x3faccfaeff5c6c12              # double 0.056272000000000003
	.quad	0x3fb9dbca9691a75d              # double 0.10101
	.quad	0x3fef09f1f14983d8              # double 0.96996400000000004
	.quad	0x3fef3cc6c54bcf0b              # double 0.97616899999999995
	.quad	0x3fefd1aeb3dd11be              # double 0.99434599999999995
	.quad	0x3feed8eeae9ee45c              # double 0.96398099999999997
	.quad	0x3fab25918a009f62              # double 0.053020999999999999
	.quad	0x3fec797460242d06              # double 0.88982600000000001
	.quad	0x3fe359a30984e400              # double 0.60469200000000001
	.quad	0x3fe4877681669ced              # double 0.641536
	.quad	0x3fe76e9142b302f7              # double 0.73224699999999998
	.quad	0x3fd93e9a6f826edb              # double 0.39444600000000002
	.quad	0x3fb0b8f14db59579              # double 0.065322000000000005
	.quad	0x3fdd57f737da61e1              # double 0.45849400000000001
	.quad	0x3fe3bad5bee3d5fe              # double 0.61655700000000002
	.quad	0x3fd6f623076c050c              # double 0.35877300000000001
	.quad	0x3fba68900c521dda              # double 0.103158
	.quad	0x3fd4e1eb4202d9cf              # double 0.326289
	.quad	0x3fd25a20ddc61954              # double 0.28675099999999998
	.quad	0x3fdfd08919ef954f              # double 0.49710300000000002
	.quad	0x3fb0916ca46e08f2              # double 0.064718999999999999
	.quad	0x3f60a78290689870              # double 0.0020330000000000001
	.quad	0x3fe1698dcdb37c9a              # double 0.54413500000000004
	.quad	0x3fc777c88e79aae7              # double 0.18334300000000001
	.quad	0x3fa58537e2c55c96              # double 0.042032
	.quad	0x3fdc00713f077ccc              # double 0.437527
	.quad	0x3fda00d1b71758e2              # double 0.40629999999999999
	.quad	0x3fe05269595feda6              # double 0.51005999999999996
	.quad	0x3fe417268d32830a              # double 0.627826
	.quad	0x3fe38d3ae685db77              # double 0.61099000000000003
	.quad	0x3febd7cf5f4e4431              # double 0.87009400000000003
	.quad	0x3fe4bc6a7ef9db23              # double 0.64800000000000002
	.quad	0x3fe08c308feac42f              # double 0.51711300000000004
	.quad	0x3fd2247021d10b20              # double 0.283474
	.quad	0x3fde292817763e4b              # double 0.47126200000000001
	.quad	0x3fd29878316a0557              # double 0.29055599999999998
	.quad	0x3fe2e6f0cfe15443              # double 0.59069099999999997
	.quad	0x3fd2532617c1bda5              # double 0.286325
	.quad	0x3fc01f85d744f5d3              # double 0.12596199999999999
	.quad	0x3fe908a697aeddce              # double 0.78230599999999995
	.quad	0x3fcd19f7f8ca8199              # double 0.227355
	.quad	0x3fea75275ee99a63              # double 0.82680100000000001
	.quad	0x3fe51984a0e410b6              # double 0.65936499999999998
	.quad	0x3fae2f9ca5bd944b              # double 0.058957000000000002
	.quad	0x3fb565d3996fa82f              # double 0.083585000000000007
	.quad	0x3fec96f86a098916              # double 0.89342900000000003
	.quad	0x3fee5273d5bab218              # double 0.94756499999999999
	.quad	0x3fdc815e39713ad6              # double 0.44539600000000001
	.quad	0x3fe8f922962cfd8f              # double 0.78041199999999999
	.quad	0x3fe022f05a708ede              # double 0.50426499999999996
	.quad	0x3fe754b6a619da9d              # double 0.72909100000000004
	.quad	0x3fb88d7e02645e4e              # double 0.095908999999999994
	.quad	0x3fd49fd36f7e3d1d              # double 0.32225500000000001
	.quad	0x3fd9601ffb480a5b              # double 0.39649200000000001
	.quad	0x3fdefba8826aa8eb              # double 0.48410999999999998
	.quad	0x3fe8d1fc4c165908              # double 0.77563300000000002
	.quad	0x3fd9ae5796bfca86              # double 0.40126600000000001
	.quad	0x3fe5e6cd29131ec1              # double 0.68442400000000003
	.quad	0x3f99c560c7c0f451              # double 0.025166999999999998
	.quad	0x3fe0cbc8c0ce91c9              # double 0.52487600000000001
	.quad	0x3fe5469d7342edbb              # double 0.66486999999999996
	.quad	0x3f71efb6dca07f67              # double 0.0043790000000000001
	.quad	0x3fcfbe7f2c3009b3              # double 0.248001
	.quad	0x3fe3d48ecd8dbced              # double 0.61969700000000005
	.quad	0x3fe966c6de76427c              # double 0.79379599999999994
	.quad	0x3fb3afc8b0079a28              # double 0.076900999999999997
	.quad	0x3fe162f9ca5bd945              # double 0.54333200000000004
	.quad	0x3feaf3797460242d              # double 0.842221
	.quad	0x3fd1b09a671ef30a              # double 0.27640399999999998
	.quad	0x3fe21b43526527a2              # double 0.565828
	.quad	0x3fed5814940bbb1f              # double 0.91700199999999998
	.quad	0x3fe3ef3b213e3e29              # double 0.62295299999999998
	.quad	0x3fe9db6e503fb374              # double 0.80803599999999997
	.quad	0x3fe4dd1e53a81dc1              # double 0.65199200000000002
	.quad	0x3feab94317acc4f0              # double 0.83511500000000005
	.quad	0x3fb51244a6223e18              # double 0.082309999999999994
	.quad	0x3fd08ba40d90e23b              # double 0.258523
	.quad	0x3fef15e39713ad5c              # double 0.971422
	.quad	0x3fea6c743201040c              # double 0.825739
	.quad	0x3fee51fc4c165908              # double 0.94750800000000001
	.quad	0x3fe8013cab81f96a              # double 0.75015100000000001
	.quad	0x3fb16659d12cadde              # double 0.067968000000000001
	.quad	0x3fb16dc1a47a9e2c              # double 0.068081000000000003
	.quad	0x3fad5de58e64b231              # double 0.057356999999999998
	.quad	0x3fd72c3009b30729              # double 0.362072
	.quad	0x3fdfc8366516db0e              # double 0.49659500000000001
	.quad	0x3fd5f49cf56eac86              # double 0.343055
	.quad	0x3fe7bce2089e3433              # double 0.74180699999999999
	.quad	0x3fe2e6f0cfe15443              # double 0.59069099999999997
	.quad	0x3fec6820e6299525              # double 0.88771100000000003
	.quad	0x3fe1e831ad2135db              # double 0.55959400000000004
	.quad	0x3f7b62c77574f723              # double 0.0066860000000000001
	.quad	0x3fe0cd983947496b              # double 0.52509700000000004
	.quad	0x3fb8e64b2314013f              # double 0.097264000000000003
	.quad	0x3fd2f26aec0724b7              # double 0.29604599999999998
	.quad	0x3f8ee568a50507a7              # double 0.015086
	.quad	0x3fecda63f9a49c2c              # double 0.90165899999999998
	.quad	0x3fec92f2b66b6178              # double 0.89293800000000001
	.quad	0x3fbcf1d3ed527e52              # double 0.113065
	.quad	0x3fdd742dcf4623d1              # double 0.46021600000000001
	.quad	0x3fd6131a8ef77f28              # double 0.344916
	.quad	0x3fd105425f202108              # double 0.26594600000000002
	.quad	0x3fcea90470a808c8              # double 0.239533
	.quad	0x3fd0dba4d6e47dc3              # double 0.26340599999999997
	.quad	0x3fc5382e44b6e936              # double 0.16577700000000001
	.quad	0x3fdb4406c00da1a9              # double 0.42602699999999999
	.quad	0x3fe2fe308787485e              # double 0.59352899999999997
	.quad	0x3fed23af31b152f4              # double 0.91060600000000002
	.quad	0x3f9b90a782906898              # double 0.026918999999999998
	.quad	0x3fe78fc0d2c386d3              # double 0.73629800000000001
	.quad	0x3fa6ddf00abf76a3              # double 0.044662
	.quad	0x3fda8d21bc126a66              # double 0.41486400000000001
	.quad	0x3fe720407cc7d1bb              # double 0.72268699999999997
	.quad	0x3fd31847f562174c              # double 0.29835699999999998
	.quad	0x3fefe0d23d4f15e8              # double 0.99619400000000002
	.quad	0x3fda2b734b51372a              # double 0.40890199999999999
	.quad	0x3fbdab5c39bcba30              # double 0.115896
	.quad	0x3fc9886594af4f0e              # double 0.19947500000000001
	.quad	0x3feacef240fa9c13              # double 0.83776200000000001
	.quad	0x3fe375a1016ce78a              # double 0.60810900000000001
	.quad	0x3fd027418d6909af              # double 0.25239600000000001
	.quad	0x3fe5d0917d6b65aa              # double 0.68171000000000004
	.quad	0x3fe5c5f9df548ece              # double 0.68041700000000005
	.quad	0x3fe7b3fe9fadafd1              # double 0.74072199999999999
	.quad	0x3fca8c692f6e8295              # double 0.20741000000000001
	.quad	0x3fe69780baa582dc              # double 0.70599400000000001
	.quad	0x3fd63a42f1ed17c6              # double 0.347306
	.quad	0x3fe3da5332acfb76              # double 0.62040099999999998
	.quad	0x3fef7cd67fd3f5b6              # double 0.983989
	.quad	0x3fc9ae46cfc829d0              # double 0.200631
	.quad	0x3fb11b71758e2196              # double 0.066824999999999996
	.quad	0x3fdb78d92fb19e73              # double 0.42925099999999999
	.quad	0x3fe9aea3161a1db8              # double 0.80256799999999995
	.quad	0x3fefccc037931444              # double 0.99374399999999996
	.quad	0x3fd8e60c38f36695              # double 0.38904100000000003
	.quad	0x3fe138b69552e2fc              # double 0.53817300000000001
	.quad	0x3fe5ac9afe1da7b1              # double 0.67732000000000003
	.quad	0x3fe83d8be7296f65              # double 0.75751299999999999
	.quad	0x3fdb61672324c836              # double 0.42781999999999998
	.quad	0x3fd4cb1465e89225              # double 0.32489499999999999
	.quad	0x3fe9d55e6bc621b8              # double 0.80729600000000001
	.quad	0x3fe862478854cdb8              # double 0.76199700000000004
	.quad	0x3fb9da597d49d7ba              # double 0.10098799999999999
	.quad	0x3fe9db8dc55000c9              # double 0.80805099999999996
	.quad	0x3fea593a2df9378f              # double 0.82339200000000001
	.quad	0x3fee612a51e321a3              # double 0.94936100000000001
	.quad	0x3fef0ca8198f1d3f              # double 0.97029500000000001
	.quad	0x3fd6d29563a9f384              # double 0.356603
	.quad	0x3fab124d099e0e73              # double 0.052873999999999997
	.quad	0x3fe8ed7625204af9              # double 0.77898699999999999
	.quad	0x3fe61044f1a1986c              # double 0.68948600000000004
	.quad	0x3fdb7bf61aa3f035              # double 0.42944100000000002
	.quad	0x3fe3f4e65bea0ba2              # double 0.623645
	.quad	0x3fd0ef8ceb356da0              # double 0.264621
	.quad	0x3fdcf023e9ea1405              # double 0.45215699999999998
	.quad	0x3f9057082491afc0              # double 0.015956999999999999
	.quad	0x3fdcfb480a5accd5              # double 0.45283699999999999
	.quad	0x3fed746aa087ca64              # double 0.92046099999999997
	.quad	0x3fefbcafb3b75211              # double 0.99178299999999997
	.quad	0x3fa4c9a77e5eaab0              # double 0.040600999999999998
	.quad	0x3fe489ce4a7b4e55              # double 0.641822
	.quad	0x3fe7498e53eb399f              # double 0.72772899999999996
	.quad	0x3fdb5b1c864883fd              # double 0.42743599999999998
	.quad	0x3fdc42a23bff8a8f              # double 0.44156699999999999
	.quad	0x3fa5043e5321e604              # double 0.041048000000000001
	.quad	0x3fed49adc8fb86f4              # double 0.91524399999999994
	.quad	0x3fe56892253111f1              # double 0.66901500000000003
	.quad	0x3fd75fbf83382e45              # double 0.36521900000000002
	.quad	0x3fd59f4d37c1376d              # double 0.33784799999999998
	.quad	0x3fd55b70691ea78b              # double 0.333706
	.quad	0x3fab6544fe36d224              # double 0.053506999999999999
	.quad	0x3fd36976bc1effa0              # double 0.30331200000000003
	.quad	0x3fdaa9b499d0203e              # double 0.41660799999999998
	.quad	0x3fd3b58d1526d8b2              # double 0.30795600000000001
	.quad	0x3fd74180d3cff64d              # double 0.363373
	.quad	0x3fd401eabbcb1cc9              # double 0.31261699999999998
	.quad	0x3fc57f27fe4bcada              # double 0.16794300000000001
	.quad	0x3fca91c8eabffcdb              # double 0.20757400000000001
	.quad	0x3fe9a1c68ec52a41              # double 0.80099799999999999
	.quad	0x3fd35cc426351def              # double 0.302537
	.quad	0x3fc53d102bc72e27              # double 0.16592599999999999
	.quad	0x3fdfe21d96e9bbf1              # double 0.49817600000000001
	.quad	0x3fa5dfc9ff92f2b6              # double 0.042722999999999997
	.quad	0x3fbffbbd7b2031cf              # double 0.124935
	.quad	0x3fc7d5b24e9c4546              # double 0.18620900000000001
	.quad	0x3fc01272c94b380d              # double 0.12556300000000001
	.quad	0x3fd2d14e3bcd35a8              # double 0.29402499999999998
	.quad	0x3fe371c75818c5ca              # double 0.60763900000000004
	.quad	0x3fe85e225fa658c5              # double 0.76149100000000003
	.quad	0x3fe9f2ef0ae53650              # double 0.81090499999999999
	.quad	0x3fd8d6238da3c212              # double 0.38807000000000003
	.quad	0x3fe0b0292817763e              # double 0.52150399999999997
	.quad	0x3fd89b52007dd441              # double 0.38447999999999999
	.quad	0x3fe59e55c0fcb4f2              # double 0.67557800000000001
	.quad	0x3fb896aad1d041cc              # double 0.096048999999999995
	.quad	0x3fe674e0114d2f5e              # double 0.70176700000000003
	.quad	0x3fdeb8a5ce5b4246              # double 0.48002
	.quad	0x3fd2a6b93ccd0fe9              # double 0.29142600000000002
	.quad	0x3fe2ef99806f2629              # double 0.59174800000000005
	.quad	0x3fca236c15d2d01c              # double 0.204206
	.quad	0x3fd4ece13f4a98ab              # double 0.32695800000000003
	.quad	0x3fb293c03bc4d22d              # double 0.072567000000000006
	.quad	0x3fe81a5870da5daf              # double 0.753216
	.quad	0x3fcdf84449dbec25              # double 0.23413900000000001
	.quad	0x3feebe7f2c3009b3              # double 0.96075399999999999
	.quad	0x3fc88301a79fec9a              # double 0.191498
	.quad	0x3fe447dc37a3db3c              # double 0.633772
	.quad	0x3fdcc36544fe36d2              # double 0.44942599999999999
	.quad	0x3fe707182235b4ee              # double 0.71961600000000003
	.quad	0x3fd6c58eeae9ee46              # double 0.35580800000000001
	.quad	0x3fcebb5e0f7fcfc4              # double 0.240093
	.quad	0x3fd399567dbb16c2              # double 0.30623400000000001
	.quad	0x3fef3b2788db0575              # double 0.97597100000000003
	.quad	0x3feb9cd1c7de5083              # double 0.86289300000000002
	.quad	0x3fda27bb2fec56d6              # double 0.40867500000000001
	.quad	0x3fcaec95bff04578              # double 0.210345
	.quad	0x3f9b56b873797460              # double 0.026698
	.quad	0x3fda5d78811b1d93              # double 0.41195500000000002
	.quad	0x3fd2a8fc0d2c386d              # double 0.29156399999999999
	.quad	0x3fdb3b927d45a5fc              # double 0.42551099999999997
	.quad	0x3fef803ab862b27d              # double 0.98440300000000002
	.quad	0x3fe7cfb3311a543f              # double 0.74410399999999999
	.quad	0x3fc2e043a2163fdd              # double 0.14746899999999999
	.quad	0x3fee8e15011904b4              # double 0.95484400000000002
	.quad	0x3fcc25072085b185              # double 0.21987999999999999
	.quad	0x3fbcb33daf8df7a5              # double 0.11211
	.quad	0x3fcfabc947064ecf              # double 0.24743000000000001
	.quad	0x3fe148259e1f3a58              # double 0.54005700000000001
	.quad	0x3f954d1e96c3fc44              # double 0.020802000000000001
	.quad	0x3fd7f9df548ecd8e              # double 0.37462600000000001
	.quad	0x3fa26cc1ca3a4b55              # double 0.035985999999999997
	.quad	0x3fe0737fbefd0071              # double 0.51409899999999997
	.quad	0x3fa524bfd2e94680              # double 0.041295999999999999
	.quad	0x3f9af78feef5ec81              # double 0.026335000000000001
	.quad	0x3fd2b7281fd9ba1b              # double 0.29242899999999999
	.quad	0x3fd5b328b6d86ec1              # double 0.33905999999999997
	.quad	0x3fe0352220bc382a              # double 0.50648599999999999
	.quad	0x3fc797b30f8c64fe              # double 0.18431700000000001
	.quad	0x3fb9ea57214f0521              # double 0.101232
	.quad	0x3fee10abb44e50c6              # double 0.93953500000000001
	.quad	0x3fd2b20b8066c2ad              # double 0.29211700000000002
	.quad	0x3fca542e557de0d6              # double 0.20569399999999999
	.quad	0x3fddfb9389b52008              # double 0.46848000000000001
	.quad	0x3fcdaaef2c732592              # double 0.23177900000000001
	.quad	0x3feea456f75d9a0f              # double 0.957561
	.quad	0x3fd74e4c942d490e              # double 0.36415399999999998
	.quad	0x3fc993037d63022e              # double 0.199799
	.quad	0x3fd2aa9f7b5aea31              # double 0.29166399999999998
	.quad	0x3fe63df4c2b51bd6              # double 0.69506299999999999
	.quad	0x3fe2aff4ba51a006              # double 0.58397900000000003
	.quad	0x3fe576ec5b078d93              # double 0.670767
	.quad	0x3fd781f53825e13b              # double 0.36730699999999999
	.quad	0x3fe52324c8366517              # double 0.66054000000000002
	.quad	0x3fd2ed4e4c942d49              # double 0.295734
	.quad	0x3fddf81a5870da5e              # double 0.46826800000000002
	.quad	0x3feb7ba237cdcca7              # double 0.85884199999999999
	.quad	0x3fd4ff1950331e3a              # double 0.32806999999999997
	.quad	0x3fa46a5d6bebe165              # double 0.039874
	.quad	0x3fc29d495182a993              # double 0.145425
	.quad	0x3fc48fc0d2c386d3              # double 0.160637
	.quad	0x3fe44e8d972cd7cf              # double 0.63458899999999996
	.quad	0x3feae527a20578e6              # double 0.84047300000000003
	.quad	0x3fe514b9cb6848bf              # double 0.65878000000000003
	.quad	0x3fcedda48b652370              # double 0.24113899999999999
	.quad	0x3fe8f9bfdf7e8039              # double 0.78048700000000004
	.quad	0x3febfa1c25d07421              # double 0.87428099999999997
	.quad	0x3fe00d1526d8b1dd              # double 0.50159699999999996
	.quad	0x3fca4ddb5525cc42              # double 0.20550099999999999
	.quad	0x3fecf86c226809d5              # double 0.90532500000000005
	.quad	0x3fcda4df47f993d5              # double 0.23159399999999999
	.quad	0x3fed2b27cbf6e3f8              # double 0.91151800000000005
	.quad	0x3fc178897e996313              # double 0.136491
	.quad	0x3fec8a19c9d5a188              # double 0.89185800000000004
	.quad	0x3fe87f0cbaf965b2              # double 0.765509
	.quad	0x3fc7e83e425aee63              # double 0.186775
	.quad	0x3fe6442e9899bf59              # double 0.69582299999999997
	.quad	0x3fc527a20578e5c5              # double 0.165272
	.quad	0x3fd25692b3cc4ac7              # double 0.28653400000000001
	.quad	0x3fcc5fd04a2fcefb              # double 0.22167400000000001
	.quad	0x3f9b0d9513f8db49              # double 0.026419000000000002
	.quad	0x3f980c73abc94706              # double 0.023484999999999999
	.quad	0x3fc05f6ba0620ab7              # double 0.127912
	.quad	0x3fc1faa044ae85ba              # double 0.140461
	.quad	0x3fe421ff2e48e8a7              # double 0.62914999999999999
	.quad	0x3fc1a22f6a50d6b2              # double 0.137762
	.quad	0x3feac45ed4a1ad64              # double 0.83647099999999996
	.quad	0x3feb7ec13b9f127f              # double 0.85922299999999996
	.quad	0x3fed6edaa92e6213              # double 0.91978199999999999
	.quad	0x3fed9cfbb949624a              # double 0.92541300000000004
	.quad	0x3fe63b1290257c91              # double 0.69471099999999997
	.quad	0x3fed8183f91e646f              # double 0.92205999999999999
	.quad	0x3fbd8d36b4c7f349              # double 0.115436
	.quad	0x3fca504816f0068e              # double 0.20557500000000001
	.quad	0x3fe8c660a2014728              # double 0.77421600000000002
	.quad	0x3fe6bf5515054ac3              # double 0.71085600000000004
	.quad	0x3fe8875d56f32bdc              # double 0.76652399999999998
	.quad	0x3fdfce703afb7e91              # double 0.496975
	.quad	0x3fab4edb2f661f19              # double 0.053336000000000001
	.quad	0x3feae2a3cea6c1a0              # double 0.84016599999999996
	.quad	0x3fd1d00f776c4828              # double 0.27832400000000002
	.quad	0x3fef49c90c4dec1c              # double 0.97775699999999998
	.quad	0x3fe282645e4e69f0              # double 0.57841699999999996
	.quad	0x3fea50b0f27bb2ff              # double 0.82235000000000003
	.quad	0x3fc092e62131a8ef              # double 0.12948299999999999
	.quad	0x3fb86195464dc22b              # double 0.095239000000000004
	.quad	0x3fe7f6ec5b078d93              # double 0.748892
	.quad	0x3fe6eb2af145521a              # double 0.71620700000000004
	.quad	0x3fe4735c182ecaef              # double 0.63908200000000004
	.quad	0x3fca0ed80a17b0f7              # double 0.20357800000000001
	.quad	0x3fe9e158750c1b97              # double 0.80875799999999998
	.quad	0x3fea8e0c9d9d3459              # double 0.82984000000000002
	.quad	0x3fed232f44912989              # double 0.91054500000000005
	.quad	0x3fdd2dcf4623d0c0              # double 0.45592100000000002
	.quad	0x3fd918bd66277c46              # double 0.39213500000000001
	.quad	0x3fcaa960b6f9fcb1              # double 0.20829400000000001
	.quad	0x3fe6b1c0010c6f7a              # double 0.709198
	.quad	0x3fed78811b1d92b8              # double 0.92096
	.quad	0x3febd5ae1cde5d18              # double 0.869834
	.quad	0x3fe28cb8e086bdf5              # double 0.57967800000000003
	.quad	0x3fd9faf42784a948              # double 0.40594200000000003
	.quad	0x3fd658d5842b734b              # double 0.34917199999999998
	.quad	0x3fcb095af294dd72              # double 0.21122299999999999
	.quad	0x3fc7ba237cdcca71              # double 0.185368
	.quad	0x3fa8e6d15ad106ee              # double 0.048635999999999999
	.quad	0x3fe936805a2d7300              # double 0.78790300000000002
	.quad	0x3fedf5c28f5c28f6              # double 0.93625000000000003
	.quad	0x3fd0525460aa64c3              # double 0.255025
	.quad	0x3fd30ea9e6eeb702              # double 0.29776999999999998
	.quad	0x3fe3e705c896dd27              # double 0.62195100000000003
	.quad	0x3fcb8a7610279570              # double 0.21516299999999999
	.quad	0x3fca22c450268901              # double 0.20418600000000001
	.quad	0x3fd88e1d6494d50f              # double 0.38367400000000002
	.quad	0x3fdfd612c6ac215c              # double 0.49744100000000002
	.quad	0x3fa964e8b7e4de3c              # double 0.049598000000000003
	.quad	0x3fe180474d9c6b05              # double 0.54690899999999998
	.quad	0x3fd890c4dec1c1d7              # double 0.38383600000000001
	.quad	0x3fe39ecd4aa10e02              # double 0.61313499999999999
	.quad	0x3fee234ca0c282c7              # double 0.94180900000000001
	.quad	0x3fc6d59d55e6bc62              # double 0.178394
	.quad	0x3fc7986b9c304ccf              # double 0.184339
	.quad	0x3fd0a7b4e54f7a92              # double 0.26023600000000002
	.quad	0x3feac213a0c6b485              # double 0.83619100000000002
	.quad	0x3fdd54690de09353              # double 0.45827699999999999
	.quad	0x3fd171151611ba3d              # double 0.27252700000000002
	.quad	0x3fec6db940fecdd1              # double 0.88839400000000002
	.quad	0x3fb34299d883ba34              # double 0.075234999999999996
	.quad	0x3fe59aa60913a4f8              # double 0.67512799999999995
	.quad	0x3fb1c1e7967caea7              # double 0.069364999999999996
	.quad	0x3fe4e9ccb7d41744              # double 0.65354000000000001
	.quad	0x3fd2e529bae46cfd              # double 0.29523700000000003
	.quad	0x3fd13443d46b26c0              # double 0.26881500000000003
	.quad	0x3fbaf112fd32c626              # double 0.105241
	.quad	0x3f6a2a4db163baba              # double 0.0031939999999999998
	.quad	0x3fe6311409a24031              # double 0.69349099999999997
	.quad	0x3fea48e25c810a57              # double 0.82139700000000004
	.quad	0x3fd7a8b4bf8fcd68              # double 0.369672
	.quad	0x3fd30df58c08b75f              # double 0.29772700000000002
	.quad	0x3fe1f1e4b44a1f08              # double 0.560778
	.quad	0x3fe97ef7c243dccf              # double 0.79674900000000004
	.quad	0x3fe98c0f01fb82c3              # double 0.79834700000000003
	.quad	0x3fd54091c087442c              # double 0.33206599999999997
	.quad	0x3fd442c3c9eecbfb              # double 0.316575
	.quad	0x3fe966b6177ea1c7              # double 0.79378800000000005
	.quad	0x3fe19a437824d4cc              # double 0.55008100000000004
	.quad	0x3feb7af42784a948              # double 0.85875900000000005
	.quad	0x3fb7f52fc2656abe              # double 0.093585000000000001
	.quad	0x3fa54e8fb00bcbe6              # double 0.041614999999999999
	.quad	0x3fc083ba3443d46b              # double 0.12902
	.quad	0x3fe65f3b645a1cac              # double 0.699125
	.quad	0x3fc79b56323bbc6f              # double 0.18442800000000001
	.quad	0x3fee4b7b28954a80              # double 0.94671400000000006
	.quad	0x3fd1ede1198aeb81              # double 0.280144
	.quad	0x3fb2006d0d49949f              # double 0.070319000000000007
	.quad	0x3feb5082cf52b90a              # double 0.85357799999999995
	.quad	0x3fed50635a426bb5              # double 0.91606299999999996
	.quad	0x3fdaa1986b9c304d              # double 0.41611300000000001
	.quad	0x3f9247021d10b1ff              # double 0.017849
	.quad	0x3fe2d2fe3f359ff5              # double 0.588256
	.quad	0x3fd8b02d59d55e6c              # double 0.38575300000000001
	.quad	0x3fe3b6134ce3de61              # double 0.61597599999999997
	.quad	0x3fe6dcd7060bb2bc              # double 0.71445800000000004
	.quad	0x3fe5b12d3415b142              # double 0.67787799999999998
	.quad	0x3fec94057082491b              # double 0.893069
	.quad	0x3fe58e30446b69db              # double 0.67360699999999996
	.quad	0x3fc42278d0cc35ce              # double 0.157302
	.quad	0x3fdd06dd69d30271              # double 0.453544
	.quad	0x3fef003cd141a693              # double 0.96877899999999994
	.quad	0x3fdeb480a5accd53              # double 0.479767
	.quad	0x3fc5b384fd2a62aa              # double 0.169541
	.quad	0x3fe482f0e0a84be4              # double 0.640984
	.quad	0x3fddf559b3d07c85              # double 0.46810000000000002
	.quad	0x3fdc2a23bff8a8f4              # double 0.44007200000000002
	.quad	0x3fe3bf077ccc0379              # double 0.61706899999999998
	.quad	0x3fe227674d163348              # double 0.56730999999999998
	.quad	0x3fe688ca3e7d1351              # double 0.70419799999999999
	.quad	0x3fefe71ac14c660a              # double 0.99696099999999999
	.quad	0x3fe21d7dbf487fcc              # double 0.56610000000000005
	.quad	0x3fe704b5dcc63f14              # double 0.71932499999999999
	.quad	0x3fda56bca5375c8e              # double 0.41154400000000002
	.quad	0x3fe81f7f8ca8198f              # double 0.75384499999999999
	.quad	0x3fe23866e43aa79c              # double 0.56938500000000003
	.quad	0x3f9b6177ea1c68ec              # double 0.026738999999999999
	.quad	0x3fe304d551d68c69              # double 0.59433999999999998
	.quad	0x3fd9c2efd438d1d9              # double 0.40252300000000002
	.quad	0x3fe0a8fe260b2c84              # double 0.52062900000000001
	.quad	0x3fcb5d1c3ac929aa              # double 0.213779
	.quad	0x3fc807f66e86c658              # double 0.18774299999999999
	.quad	0x3fe2049cb252ce03              # double 0.56306299999999998
	.quad	0x3fd352977c88e79b              # double 0.30191600000000002
	.quad	0x3fd9110a137f38c5              # double 0.39166499999999999
	.quad	0x3fc0a63305100a39              # double 0.13007199999999999
	.quad	0x3fe716a055757d5b              # double 0.72151200000000004
	.quad	0x3fdc4712e40852b5              # double 0.44183800000000001
	.quad	0x3fefbf8db4890929              # double 0.99213300000000004
	.quad	0x3fe766c2acb85a4f              # double 0.731294
	.quad	0x3fc0b1bbcf4e874d              # double 0.13042400000000001
	.quad	0x3fef954eb13dfb0d              # double 0.98697599999999996
	.quad	0x3fc8adbc664d3bf3              # double 0.192802
	.quad	0x3fd6c4da9003eea2              # double 0.355765
	.quad	0x3fd0b05faebc408e              # double 0.26076500000000002
	.quad	0x3fe770f3882278d1              # double 0.73253800000000002
	.quad	0x3fe2a9691a75cd0c              # double 0.58318000000000003
	.quad	0x3fdee21d96e9bbf1              # double 0.48255100000000001
	.quad	0x3fd665a9a8049668              # double 0.34995500000000002
	.quad	0x3f6cf56eac860568              # double 0.0035349999999999999
	.quad	0x3fe429a5ebb7739f              # double 0.63008399999999998
	.quad	0x3fec54e8fb00bcbe              # double 0.88536499999999996
	.quad	0x3fbfa01eeed8904f              # double 0.12353699999999999
	.quad	0x3fc8dde7a743a648              # double 0.194272
	.quad	0x3fca8a6117720c8d              # double 0.207348
	.quad	0x3fe45fb71fbc5dea              # double 0.63668400000000003
	.quad	0x3fe401cf7878b7a2              # double 0.62522100000000003
	.quad	0x3fe7321c475e6363              # double 0.72486700000000004
	.quad	0x3fedb3aeee957471              # double 0.92818400000000001
	.quad	0x3fdde45c358afc48              # double 0.46706300000000001
	.quad	0x3fc695faa8a82a56              # double 0.176452
	.quad	0x3fd8abb44e50c5eb              # double 0.38547999999999999
	.quad	0x3fef186fcdee34fc              # double 0.97173299999999995
	.quad	0x3fc851b93037d630              # double 0.189994
	.quad	0x3fc6afff36ac6477              # double 0.17724599999999999
	.quad	0x3fe24460ed80a17b              # double 0.57084699999999999
	.quad	0x3fef5996744b2b77              # double 0.97968599999999994
	.quad	0x3fd2906cca2db61c              # double 0.29006500000000002
	.quad	0x3fe5d6ece13f4a99              # double 0.68248600000000004
	.quad	0x3fd7769a91105e1c              # double 0.366614
	.quad	0x3fe7a49c2c1b10fd              # double 0.73884399999999995
	.quad	0x3fdf8448cf7caa76              # double 0.49244900000000003
	.quad	0x3fe5eb5f5f0b2852              # double 0.68498199999999998
	.quad	0x3fde08398a654930              # double 0.469252
	.quad	0x3fe11871e6cd2913              # double 0.53423399999999999
	.quad	0x3fe6998d045fe111              # double 0.70624399999999998
	.quad	0x3fca66a98244e93e              # double 0.206258
	.quad	0x3fa363d3e4ef0282              # double 0.037871000000000002
	.quad	0x3fe90fb43d89ce4a              # double 0.78316699999999995
	.quad	0x3fe12a582dbe7f2c              # double 0.53641899999999998
	.quad	0x3fd4a9003eea209b              # double 0.32281500000000002
	.quad	0x3f90153bd1676641              # double 0.015706000000000001
	.quad	0x3fc5081c2e33eff2              # double 0.16431000000000001
	.quad	0x3fc7d8c6d612c6ac              # double 0.186303
	.quad	0x3fef9f8e3ac0c62e              # double 0.98822699999999997
	.quad	0x3fc627e0ef99806f              # double 0.173092
	.quad	0x3fe47c7607c419a0              # double 0.64019300000000001
	.quad	0x3fc399e518f3eccc              # double 0.15313399999999999
	.quad	0x3fdc76ff3ade2260              # double 0.44476300000000002
	.quad	0x3faa7264a16a4873              # double 0.051653999999999999
	.quad	0x3fec7a8f7db6e504              # double 0.889961
	.quad	0x3fed25a89b951c5c              # double 0.91084699999999996
	.quad	0x3fea6b91b3f20a74              # double 0.825631
	.quad	0x3fed6e7a311e85fd              # double 0.919736
	.quad	0x3feee0221426fe72              # double 0.96486000000000005
	.quad	0x3fc8835dedf1e083              # double 0.19150900000000001
	.quad	0x3fdff498c3b0c459              # double 0.49930400000000003
	.quad	0x3feb9b5a63f9a49c              # double 0.86271399999999998
	.quad	0x3fe7d1a437824d4d              # double 0.74434100000000003
	.quad	0x3f9586ca89fc6da4              # double 0.021021999999999999
	.quad	0x3fe4eda4484944ed              # double 0.65400899999999995
	.quad	0x3fc2ccd530489d28              # double 0.14687600000000001
	.quad	0x3fe9e92f6e82949a              # double 0.80971499999999996
	.quad	0x3fda8bd66277c45d              # double 0.41478500000000001
	.quad	0x3fd814163779e9d1              # double 0.376226
	.quad	0x3fe20398a65492ff              # double 0.56293899999999997
	.quad	0x3fca7a7c9de05037              # double 0.20686299999999999
	.quad	0x3fe6a27d028a1dfc              # double 0.70733500000000005
	.quad	0x3fe9d04e618ce2d2              # double 0.80667800000000001
	.quad	0x3fc07000431bde83              # double 0.128418
	.quad	0x3fece1d2178f68be              # double 0.90256599999999998
	.quad	0x3feae26d4801f751              # double 0.84014
	.quad	0x3fd8c28b2a6b0d95              # double 0.386874
	.quad	0x3fec605681ecd4aa              # double 0.88675999999999999
	.quad	0x3fc4d349be8ff328              # double 0.16269800000000001
	.quad	0x3fe11b2a27f1b691              # double 0.53456599999999999
	.quad	0x3fd1fdeb52c9d170              # double 0.28112300000000001
	.quad	0x3fda4ead0c3d2524              # double 0.41105199999999997
	.quad	0x3fc20d90e23af31b              # double 0.141039
	.quad	0x3fcd29e4d5d80e49              # double 0.22784099999999999
	.quad	0x3fe8649d388a8b09              # double 0.76228200000000002
	.quad	0x3fefe30014f8b589              # double 0.99646000000000001
	.quad	0x3fe744aa53fc0097              # double 0.727132
	.quad	0x3fe62d8c2a454de8              # double 0.69306000000000001
	.quad	0x3fe3bd230b9dc2f4              # double 0.616838
	.quad	0x3fccf3c2dadb8349              # double 0.226189
	.quad	0x3fef65f0f5a1016d              # double 0.98119400000000001
	.quad	0x3fe661a60d4562e1              # double 0.69942000000000004
	.quad	0x3faa3571d1d4738a              # double 0.051188999999999998
	.quad	0x3fd279207d4e0978              # double 0.28864299999999998
	.quad	0x3fe45c28f5c28f5c              # double 0.63624999999999998
	.quad	0x3fc73bea91d9b1b8              # double 0.18151600000000001
	.quad	0x3fe6b8d1d8a54824              # double 0.71006100000000005
	.quad	0x3fdb50e347629521              # double 0.42681200000000002
	.quad	0x3fa47304039abf34              # double 0.039940000000000003
	.quad	0x3fe140053e2d6239              # double 0.53906500000000002
	.quad	0x3fd307075b3e1438              # double 0.29730400000000001
	.quad	0x3fe2f676ea422899              # double 0.59258599999999995
	.quad	0x3fee85a921ccd962              # double 0.953816
	.quad	0x3fe44e0fc2eba27b              # double 0.63452900000000001
	.quad	0x3fe05bea0ba1f4b2              # double 0.51122000000000001
	.quad	0x3fd468405b39e27a              # double 0.31886300000000001
	.quad	0x3fef7c6b8b69552e              # double 0.98393799999999998
	.quad	0x3fe22133c1ce6c09              # double 0.56655299999999997
	.quad	0x3fd0ca643cc07aaf              # double 0.262353
	.quad	0x3fe4045baf533f42              # double 0.62553199999999998
	.quad	0x3fec0e4fb97bb731              # double 0.87674700000000005
	.quad	0x3fed7be9856a37ac              # double 0.92137599999999997
	.quad	0x3fc259d99029ae4f              # double 0.14336699999999999
	.quad	0x3fdc719f7f8ca81a              # double 0.44443500000000002
	.quad	0x3fd67c5ac471b478              # double 0.35133999999999999
	.quad	0x3fd115b573eab368              # double 0.26695000000000002
	.quad	0x3fe74e7685985ad5              # double 0.72832799999999998
	.quad	0x3fddbfdf7e8038a0              # double 0.46483600000000003
	.quad	0x3fe2d89ce4a7b4e5              # double 0.58894199999999997
	.quad	0x3fe125e13b18dac2              # double 0.53587399999999996
	.quad	0x3fec884406c00da2              # double 0.89163400000000004
	.quad	0x3fc18eb0318b9347              # double 0.13716700000000001
	.quad	0x3f8571d1d4738a3b              # double 0.010470999999999999
	.quad	0x3febb2edfe75bc45              # double 0.86559200000000003
	.quad	0x3fdce4e69f05ea25              # double 0.45147100000000001
	.quad	0x3fd9242070b8cfc0              # double 0.39283000000000001
	.quad	0x3fe7d219a847b246              # double 0.74439699999999998
	.quad	0x3fe2003254e6e222              # double 0.56252400000000002
	.quad	0x3fa2d794a6eb91b4              # double 0.036801
	.quad	0x3fe0b320535c9e67              # double 0.52186600000000005
	.quad	0x3fd8a500d5e8d541              # double 0.385071
	.quad	0x3fd63558a7610279              # double 0.34700599999999998
	.quad	0x3fbf2b020c49ba5e              # double 0.12175
	.quad	0x3fe6192641b328b7              # double 0.69057000000000002
	.quad	0x3fe45e2478854cdb              # double 0.63649199999999995
	.quad	0x3fe4684f09528f19              # double 0.63773299999999999
	.quad	0x3fc289fc6da44849              # double 0.14483599999999999
	.quad	0x3fe3117507e9d94d              # double 0.59588099999999999
	.quad	0x3fe938f7985271bd              # double 0.78820400000000002
	.quad	0x3fde6c6583e8576d              # double 0.47536600000000001
	.quad	0x3fe9ea550870110a              # double 0.80985499999999999
	.quad	0x3fd151a86940357a              # double 0.27060899999999999
	.quad	0x3fc92b1b36bd2b6f              # double 0.196628
	.quad	0x3fddb33daf8df7a5              # double 0.46406500000000001
	.quad	0x3fee393250b5243a              # double 0.94448200000000004
	.quad	0x3fe2b10129cbab65              # double 0.58410700000000004
	.quad	0x3fcd823c85c24c40              # double 0.23053699999999999
	.quad	0x3fc6109d0635a427              # double 0.17238200000000001
	.quad	0x3fe501cb46bacf74              # double 0.65646899999999997
	.quad	0x3fe8d944aa53fc01              # double 0.77652200000000005
	.quad	0x3fe014ff0025bfad              # double 0.50256299999999998
	.quad	0x3fe459ccfaeff5c7              # double 0.63596200000000003
	.quad	0x3fd5da2b5a20ddc6              # double 0.34144099999999999
	.quad	0x3fedd96851223183              # double 0.93278899999999998
	.quad	0x3fe547735c182ecb              # double 0.66497200000000001
	.quad	0x3fee395c42203600              # double 0.94450199999999995
	.quad	0x3feff96bfca85cab              # double 0.999197
	.quad	0x3fbd6777079e59f3              # double 0.11486
	.quad	0x3fa3aba7b9170d63              # double 0.038419000000000002
	.quad	0x3fd01ac14c660a20              # double 0.251633
	.quad	0x3fe7a2ad3e920c07              # double 0.73860800000000004
	.quad	0x3fbca925fe974a34              # double 0.111956
	.quad	0x3fdc459d99029ae5              # double 0.441749
	.quad	0x3fb58c8eef1bac2e              # double 0.084176
	.quad	0x3fede638433d6c72              # double 0.93435299999999999
	.quad	0x3fb8ac8e68e3ef28              # double 0.096382999999999996
	.quad	0x3fe1f574f722e1ac              # double 0.56121299999999996
	.quad	0x3fa60cbf2b239a39              # double 0.043066
	.quad	0x3fe57829068986fd              # double 0.67091800000000001
	.quad	0x3fd0b95a294141ea              # double 0.26131300000000002
	.quad	0x3fd8f49491f2dc2b              # double 0.389928
	.quad	0x3fd2aa582dbe7f2c              # double 0.29164699999999999
	.quad	0x3fc09f2778140dd4              # double 0.129857
	.quad	0x3fd89ae924f227d0              # double 0.38445499999999999
	.quad	0x3fecc1e14bdfd263              # double 0.89866699999999999
	.quad	0x3fe60a7c5ac471b4              # double 0.68877999999999995
	.quad	0x3fd9be9c886162f1              # double 0.40225899999999998
	.quad	0x3fe23f5d78811b1e              # double 0.57023500000000005
	.quad	0x3feee9b17481b21c              # double 0.96602699999999996
	.quad	0x3fe481e8a2ec28b3              # double 0.64085800000000004
	.quad	0x3fc5dc054ef459da              # double 0.17077700000000001
	.quad	0x3fe4ebc83a96d4c3              # double 0.65378199999999997
	.quad	0x3fcd5b3e1437c569              # double 0.229347
	.quad	0x3feec1615ebfa8f8              # double 0.96110600000000001
	.quad	0x3fd941bfbdf090f7              # double 0.39463799999999999
	.quad	0x3fd02834d26fa3fd              # double 0.25245400000000001
	.quad	0x3fedef954eb13dfb              # double 0.93549599999999999
	.quad	0x3fdf33daf8df7a4e              # double 0.48753999999999997
	.quad	0x3fb314877681669d              # double 0.074532000000000001
	.quad	0x3fb2033e78e1932d              # double 0.070361999999999994
	.quad	0x3fd2940fecdd0d8d              # double 0.29028700000000002
	.quad	0x3fec4662bae03b3f              # double 0.88359200000000004
	.quad	0x3fbfe9ea14057082              # double 0.124663
	.quad	0x3fe19a6937d1fe65              # double 0.550099
	.quad	0x3fe96b37867f0aa2              # double 0.79433799999999999
	.quad	0x3fbd49a5657fb69a              # double 0.11440500000000001
	.quad	0x3fdc425f202107b8              # double 0.44155100000000003
	.quad	0x3f9f1172ef0ae536              # double 0.030339999999999999
	.quad	0x3fb094d50ebaade6              # double 0.064770999999999995
	.quad	0x3fed495182a9930c              # double 0.91520000000000001
	.quad	0x3fef03ea704bc276              # double 0.96922799999999998
	.quad	0x3fdbd6dc1a47a9e3              # double 0.43498900000000001
	.quad	0x3fdefd50225742dd              # double 0.484211
	.quad	0x3fd4c3d25247cb71              # double 0.32445200000000002
	.quad	0x3fcf697f1f9acffa              # double 0.24540699999999999
	.quad	0x3fee7ee6fb4c3c19              # double 0.95299100000000003
	.quad	0x3fbe6202539756c9              # double 0.118683
	.quad	0x3feacb4aec8d5c74              # double 0.83731599999999994
	.quad	0x3fe97eae5bc87db3              # double 0.79671400000000003
	.quad	0x3fea57774aba3876              # double 0.82317700000000005
	.quad	0x3fc471044f1a1987              # double 0.15969900000000001
	.quad	0x3fe45703f2d3c793              # double 0.63562200000000002
	.quad	0x3fea883fd5022574              # double 0.82913199999999998
	.quad	0x3fc1da5119ce075f              # double 0.13947499999999999
	.quad	0x3fd250870110a138              # double 0.286165
	.quad	0x3fd16a3bddfc9ff9              # double 0.27210899999999999
	.quad	0x3fee7f4dbdf8f473              # double 0.95304
	.quad	0x3fd8685122318330              # double 0.38136700000000001
	.quad	0x3fe1e0fa15db3398              # double 0.55871300000000002
	.quad	0x3fee3358f2e05ccd              # double 0.94376800000000005
	.quad	0x3fd9c115df6555c5              # double 0.40240999999999999
	.quad	0x3fe56e4c0df58c09              # double 0.66971400000000003
	.quad	0x3fd44c059210385c              # double 0.31713999999999998
	.quad	0x3fe66a619da9c993              # double 0.70048600000000005
	.quad	0x3fc318fc504816f0              # double 0.1492
	.quad	0x3febc9be8ff327aa              # double 0.86837699999999995
	.quad	0x3fea65dbfceb7889              # double 0.82493399999999995
	.quad	0x3fd61fd9ba1b1961              # double 0.345694
	.quad	0x3fe7f8f25a250f84              # double 0.74913899999999999
	.quad	0x3f03660e51d25aab              # double 3.6999999999999998E-5
	.quad	0x3fa6e78183f91e64              # double 0.044734999999999997
	.quad	0x3fe6db59578a2a91              # double 0.71427600000000002
	.quad	0x3fe042aed1394318              # double 0.50814000000000004
	.quad	0x3fc8be2f7b17ce53              # double 0.193304
	.quad	0x3feed4690de09353              # double 0.96342899999999997
	.quad	0x3fd41fd5885d3133              # double 0.31444299999999997
	.quad	0x3fed3c27631b584b              # double 0.91359299999999999
	.quad	0x3fe11d6cf850df16              # double 0.53484200000000004
	.quad	0x3fdaece9a2c66905              # double 0.42070999999999997
	.quad	0x3fd5a0a958537e2c              # double 0.33793099999999998
	.quad	0x3fe36d916872b021              # double 0.60712500000000003
	.quad	0x3fd75c28f5c28f5c              # double 0.36499999999999999
	.quad	0x3fe8b0f49491f2dc              # double 0.77160099999999998
	.quad	0x3fefda272862f599              # double 0.99538000000000004
	.quad	0x3fd4ec5b078d92fb              # double 0.32692599999999999
	.quad	0x3fef3c83a96d4c34              # double 0.97613700000000003
	.quad	0x3fded4d834091c08              # double 0.48174099999999997
	.quad	0x3fee30c4588a04d1              # double 0.94345299999999999
	.quad	0x3fee9cffeb074a77              # double 0.95666499999999999
	.quad	0x3fe99adc8fb86f48              # double 0.80015400000000003
	.quad	0x3fd3271fff79c843              # double 0.299263
	.quad	0x3fee56d7e889c1b5              # double 0.94810099999999997
	.quad	0x3fd3ba0a52695960              # double 0.30823
	.quad	0x3fc27fe4bcad9ad8              # double 0.14452799999999999
	.quad	0x3fc6209aaa3ad18d              # double 0.17287
	.quad	0x3fca9a133c1ce6c1              # double 0.20782700000000001
	.quad	0x3fef6a67e846a5d7              # double 0.98173900000000002
	.quad	0x3fe63d1aa821f299              # double 0.69495899999999999
	.quad	0x3fe3bfbdf090f734              # double 0.61715600000000004
	.quad	0x3feb7587d6f97679              # double 0.858097
	.quad	0x3feb279fec99f1ae              # double 0.84858699999999998
	.quad	0x3fb69802c0a4a05e              # double 0.088257000000000002
	.quad	0x3fe7f136a400fba9              # double 0.74819500000000005
	.quad	0x3fe6b0c026cc1ca4              # double 0.70907600000000004
	.quad	0x3fb5d7fd82773e25              # double 0.085327
	.quad	0x3fe15abc0e38a7e7              # double 0.54232599999999997
	.quad	0x3fece7a311e85fd0              # double 0.90327599999999997
	.quad	0x3fd3b7ae5796bfcb              # double 0.30808600000000003
	.quad	0x3fe4bb4f61672325              # double 0.64786500000000002
	.quad	0x3fefb910c2c5e2ce              # double 0.99134100000000003
	.quad	0x3fdd73c925785f8d              # double 0.46019199999999999
	.quad	0x3fed5740c4156e26              # double 0.91690099999999997
	.quad	0x3fde218def416bdb              # double 0.47079799999999999
	.quad	0x3fde3647baa9b49a              # double 0.47206300000000001
	.quad	0x3fee3fa0945f9df5              # double 0.94526699999999997
	.quad	0x3fe1dba4d6e47dc3              # double 0.55806199999999995
	.quad	0x3fdb5143bf727137              # double 0.42683500000000002
	.quad	0x3feb66b3fe9fadb0              # double 0.85628700000000002
	.quad	0x3fdddeebb341e14c              # double 0.46673100000000001
	.quad	0x3fc526a65cf67b1c              # double 0.165242
	.quad	0x3fb99d2391d57ffa              # double 0.100054
	.quad	0x3fc8ed0b30b5aa71              # double 0.19473399999999999
	.quad	0x3fe37b15b573eab3              # double 0.60877499999999996
	.quad	0x3fe1f136a400fba9              # double 0.56069500000000005
	.quad	0x3fe2648c7192ea53              # double 0.57477400000000001
	.quad	0x3fb6d8d36b4c7f35              # double 0.089246000000000006
	.quad	0x3f96b59146e4c0df              # double 0.022176999999999999
	.quad	0x3fdf1ff7164c729f              # double 0.48632599999999998
	.quad	0x3fdf7cb2d905c033              # double 0.49198599999999998
	.quad	0x3feccdc65c70435f              # double 0.900119
	.quad	0x3fe13acd5b6805a3              # double 0.53842800000000002
	.quad	0x3fd272abef06b378              # double 0.28824899999999998
	.quad	0x3fa3c03bc4d22c88              # double 0.038575999999999999
	.quad	0x3fa7c7a398201cd6              # double 0.046445
	.quad	0x3fc4b0d9513f8db5              # double 0.16164700000000001
	.quad	0x3feb5031055b8994              # double 0.85353900000000004
	.quad	0x3fe3d894812be48a              # double 0.62018799999999996
	.quad	0x3fe6fcc5b8dc5500              # double 0.71835599999999999
	.quad	0x3feca3f4666ec9e2              # double 0.89501399999999998
	.quad	0x3fdd3387160956c1              # double 0.45627000000000001
	.quad	0x3fe49741d084e832              # double 0.64346400000000004
	.quad	0x3feb08ace24bba13              # double 0.84480900000000003
	.quad	0x3fdeb37867f0aa22              # double 0.47970400000000002
	.quad	0x3feb8e820e629952              # double 0.86114599999999997
	.quad	0x3faef06b37867f0b              # double 0.060428000000000003
	.quad	0x3feddd074213a0c7              # double 0.93323100000000003
	.quad	0x3fef133c1ce6c094              # double 0.97109800000000001
	.quad	0x3fde8a009f623077              # double 0.47717300000000001
	.quad	0x3fe9dce39b456b44              # double 0.80821399999999998
	.quad	0x3fe6b9a38fbca106              # double 0.71016100000000004
	.quad	0x3fef7a398201cd60              # double 0.98367000000000004
	.quad	0x3fd07d2c7b890d5a              # double 0.25763999999999998
	.quad	0x3fdcb923a29c779a              # double 0.44879999999999998
	.quad	0x3fe92c3a860dcb9b              # double 0.78664900000000004
	.quad	0x3fe3814d72799a20              # double 0.60953400000000002
	.quad	0x3fd51db445ed4a1b              # double 0.32993800000000001
	.quad	0x3fe4846e8f29d40f              # double 0.64116600000000001
	.quad	0x3fdb8d9b5e95b78d              # double 0.43051800000000001
	.quad	0x3fe7d20afa2f05a7              # double 0.74439
	.quad	0x3feeb328b6d86ec1              # double 0.95936999999999994
	.quad	0x3fd3b0142f61ed5b              # double 0.30762200000000001
	.quad	0x3fe9101f31f46ed2              # double 0.78321799999999997
	.quad	0x3fd7c7cd898b2e9d              # double 0.37157000000000001
	.quad	0x3fdd26916440f239              # double 0.45547900000000002
	.quad	0x3fd6dfce3150dae4              # double 0.35741000000000001
	.quad	0x3fd5c9107faa044b              # double 0.34039700000000001
	.quad	0x3fdbfd694ccab3ee              # double 0.43734200000000001
	.quad	0x3fd5eccc46950fc7              # double 0.34257799999999999
	.quad	0x3fd48da3c21187e8              # double 0.32114500000000001
	.quad	0x3fe08f94c87980f5              # double 0.51752699999999996
	.quad	0x3fa3d66277c45cbc              # double 0.038745000000000002
	.quad	0x3fe6164a59c065b6              # double 0.69022099999999997
	.quad	0x3fe5eedaa92e6213              # double 0.68540699999999999
	.quad	0x3fcad0edc3bd5992              # double 0.20950099999999999
	.quad	0x3fa3cd9a52263d81              # double 0.038677999999999997
	.quad	0x3fdac9de05037500              # double 0.41857100000000003
	.quad	0x3fe761ae70c1333c              # double 0.73067400000000005
	.quad	0x3fd63da2f8bdec5f              # double 0.34751199999999999
	.quad	0x3fa2b66b6177ea1c              # double 0.036547999999999997
	.quad	0x3fe40f88333fc86d              # double 0.62689600000000001
	.quad	0x3fd4dc22ab25b318              # double 0.325936
	.quad	0x3fe1a9c560c7c0f4              # double 0.55197399999999996
	.quad	0x3fd96f544bb1af3a              # double 0.39742
	.quad	0x3fe3e44523f67f4e              # double 0.62161500000000003
	.quad	0x3fe158d1526d8b1e              # double 0.54209200000000002
	.quad	0x3fee4b05b7cfe586              # double 0.946658
	.quad	0x3fe123bff8a8f3aa              # double 0.53561400000000003
	.quad	0x3fd83892ee84ad79              # double 0.37845299999999998
	.quad	0x3fcc4fd2a62aa194              # double 0.22118599999999999
	.quad	0x3f74ee392e1ef73c              # double 0.00511
	.quad	0x3fea86ca89fc6da4              # double 0.82895399999999996
	.quad	0x3fd7f2a5a469d734              # double 0.37418499999999999
	.quad	0x3fe013ff25e56cd7              # double 0.50244100000000003
	.quad	0x3fe201abd1aa821f              # double 0.56270399999999998
	.quad	0x3fed1bf162ae4b02              # double 0.90966100000000005
	.quad	0x3fec8af5fd47bedb              # double 0.89196299999999995
	.quad	0x3fa8129cbab649d4              # double 0.047017000000000003
	.quad	0x3fea4c122749f0e5              # double 0.82178600000000002
	.quad	0x3fc95ddd2ae8e1d6              # double 0.19817699999999999
	.quad	0x3fe0a2d5171e29b7              # double 0.51987700000000003
	.quad	0x3fd99a34ca0c282c              # double 0.40003699999999998
	.quad	0x3fe267c8d195896a              # double 0.57516900000000004
	.quad	0x3fedf0bd017dae82              # double 0.93563700000000005
	.quad	0x3fc0c4ef88b97785              # double 0.13100999999999999
	.quad	0x3fd90624dd2f1aa0              # double 0.39100000000000001
	.quad	0x3fb3b5e0f7fcfc40              # double 0.076994000000000007
	.quad	0x3fd7303c07ee0b0b              # double 0.362319
	.quad	0x3f9e3b8a19c9d5a2              # double 0.029524000000000002
	.quad	0x3fc2cadddf43c7d6              # double 0.146816
	.quad	0x3fd9f1dc50ce4ead              # double 0.405387
	.quad	0x3fed48beb5b2d4d4              # double 0.91512999999999999
	.quad	0x3fe552e72da122fb              # double 0.66637000000000002
	.quad	0x3feb55f138bcdff0              # double 0.85424100000000003
	.quad	0x3febdb8348f53c58              # double 0.87054600000000004
	.quad	0x3fed77985271bcdc              # double 0.92084900000000002
	.quad	0x3fda9ef5232d2bb2              # double 0.41595199999999999
	.quad	0x3fd1f0b28522ea10              # double 0.28031600000000001
	.quad	0x3fe35475a31a4bdc              # double 0.60406000000000004
	.quad	0x3fcf00d5e8d54110              # double 0.24221300000000001
	.quad	0x3fc9f212d77318fc              # double 0.20269999999999999
	.quad	0x3fe3c1615ebfa8f8              # double 0.61735600000000002
	.quad	0x3fb06d2ed783dff4              # double 0.064166000000000001
	.quad	0x3fe55fefbf401c50              # double 0.66796100000000003
	.quad	0x3fafd8f0c77dd873              # double 0.062202
	.quad	0x3fdc5321e603d578              # double 0.44257400000000002
	.quad	0x3fddca643cc07aaf              # double 0.465478
	.quad	0x3fa62c343b70ef56              # double 0.043305999999999997
	.quad	0x3fb3e0370cdc8755              # double 0.077640000000000001
	.quad	0x3fe3f3d9ec700043              # double 0.62351699999999999
	.quad	0x3fd198f1d3ed527e              # double 0.27495999999999998
	.quad	0x3fe650c804102ff9              # double 0.69736100000000001
	.quad	0x3fd4e115592d98bf              # double 0.32623799999999997
	.quad	0x3fcfebc83a96d4c3              # double 0.24938299999999999
	.quad	0x3fd1897635e7429a              # double 0.27401500000000001
	.quad	0x3fc5e58e64b23140              # double 0.171068
	.quad	0x3feeb73f316e3715              # double 0.95986899999999997
	.quad	0x3feb91212513b5bf              # double 0.86146599999999995
	.quad	0x3fbad77318fc5048              # double 0.10485
	.quad	0x3fe914f69ca9ef52              # double 0.78380899999999998
	.quad	0x3fd8940789613d32              # double 0.38403500000000002
	.quad	0x3fee31ca7d6733ec              # double 0.94357800000000002
	.quad	0x3feb9e5c0b999136              # double 0.86308099999999999
	.quad	0x3fb76c3760bf5d79              # double 0.091495000000000007
	.quad	0x3fea22d0e5604189              # double 0.81674999999999998
	.quad	0x3fd5d045fe111277              # double 0.340837
	.quad	0x3feebf2d3c792d13              # double 0.96083700000000005
	.quad	0x3fd97bb73083558a              # double 0.39817599999999997
	.quad	0x3fd671ac14c660a2              # double 0.350688
	.quad	0x3fe783dff3f0fe04              # double 0.73484799999999995
	.quad	0x3fdd40f238972043              # double 0.45708900000000002
	.quad	0x3fddf2f123c42a67              # double 0.46795300000000001
	.quad	0x3fe05b1c864883fd              # double 0.51112199999999997
	.quad	0x3feb8e8a71de69ad              # double 0.86114999999999997
	.quad	0x3fc233508f648c72              # double 0.14219100000000001
	.quad	0x3fd06787ce95faa9              # double 0.25631900000000002
	.quad	0x3fea3d0bfa0945fa              # double 0.81995200000000001
	.quad	0x3fc15faa8a82a561              # double 0.13573199999999999
	.quad	0x3fe9280cf9e3864d              # double 0.78613900000000003
	.quad	0x3fe09d1d4738a3b5              # double 0.51917899999999995
	.quad	0x3f93a71151611ba4              # double 0.019192000000000001
	.quad	0x3fdfa8c586876e1e              # double 0.494676
	.quad	0x3fd776a7264a16a5              # double 0.36661700000000003
	.quad	0x3fdd633482be8bc1              # double 0.45917999999999998
	.quad	0x3fd8e8c8abd5dc40              # double 0.389208
	.quad	0x3fa74a98aa8650e7              # double 0.045490999999999997
	.quad	0x3fcf3293d102bc73              # double 0.243731
	.quad	0x3fe57ebf22c01e69              # double 0.67172200000000004
	.quad	0x3faf8af3e468cac5              # double 0.061607000000000002
	.quad	0x3fd676145953586d              # double 0.35095700000000002
	.quad	0x3f93d9a95421c044              # double 0.019384999999999999
	.quad	0x3fd5eb7cbb3c8191              # double 0.34249800000000002
	.quad	0x3fbb0f49491f2dc3              # double 0.105702
	.quad	0x3fe6dc7ef177a701              # double 0.71441600000000005
	.quad	0x3fe9f76e6106ab15              # double 0.81145400000000001
	.quad	0x3fefa2ff08893b7e              # double 0.98864700000000005
	.quad	0x3fe293db7f173754              # double 0.58054899999999998
	.quad	0x3f845069a4df47fa              # double 0.0099190000000000007
	.quad	0x3feceff5c6c11a11              # double 0.90429199999999998
	.quad	0x3fedf7fae3608d09              # double 0.93652100000000005
	.quad	0x3fb42c7fbacb4289              # double 0.078803999999999999
	.quad	0x3fcf01f31f46ed24              # double 0.24224699999999999
	.quad	0x3f86f6512a94ff00              # double 0.011212
	.quad	0x3fee98dac258d584              # double 0.95615899999999998
	.quad	0x3fc248387df5cf25              # double 0.14282900000000001
	.quad	0x3fd74c404a72ead9              # double 0.36402899999999999
	.quad	0x3fe7640c8472c0e8              # double 0.73096300000000003
	.quad	0x3fe5141e9af5ba2c              # double 0.65870600000000001
	.quad	0x3fdd6a7ef9db22d1              # double 0.45962500000000001
	.quad	0x3fc64bc27631b585              # double 0.17418700000000001
	.quad	0x3fe63d5bab21815a              # double 0.69499
	.quad	0x3fe66f08cc575c07              # double 0.70105399999999995
	.quad	0x3fc45d0fa58f7122              # double 0.15909000000000001
	.quad	0x3fd7ca7503b81b65              # double 0.37173200000000001
	.quad	0x3fe94d056c508b33              # double 0.79065200000000002
	.quad	0x3feeb686a4ca4f44              # double 0.95978099999999999
	.quad	0x3fe4f965b20b8067              # double 0.65544400000000003
	.quad	0x3fe8e6ab9b23dd55              # double 0.77815800000000002
	.quad	0x3fefc65e89225311              # double 0.99296499999999998
	.quad	0x3fe2fd82773e24ff              # double 0.59344600000000003
	.quad	0x3fdeeaa6d2674081              # double 0.483072
	.quad	0x3fc47fcb923a29c7              # double 0.16014999999999999
	.quad	0x3fddcb5350092ccf              # double 0.46553499999999998
	.quad	0x3fbe15db3397dd01              # double 0.117521
	.quad	0x3fc35a74c09c3ce2              # double 0.151198
	.quad	0x3fc44c8366516db1              # double 0.158585
	.quad	0x3fe0a411c2a02321              # double 0.52002800000000005
	.quad	0x3fe492923e5b8562              # double 0.64289200000000002
	.quad	0x3f95f3d7d3910c2c              # double 0.021437999999999999
	.quad	0x3fbcd3ae685db76b              # double 0.112605
	.quad	0x3feeac9f2fdb8fde              # double 0.95857199999999998
	.quad	0x3fe9f4384ba0e842              # double 0.81106199999999995
	.quad	0x3fb2a5d6bebe1651              # double 0.072843000000000005
	.quad	0x3fef5be5d9e40c84              # double 0.97996799999999995
	.quad	0x3fd5e39b456b441c              # double 0.34201700000000002
	.quad	0x3fd30129cbab649d              # double 0.29694599999999999
	.quad	0x3fedec6bce8533b1              # double 0.93511
	.quad	0x3fd12862f5989df1              # double 0.26808999999999999
	.quad	0x3f9da33bd9cae211              # double 0.028943
	.quad	0x3fd1bd512ec6bce8              # double 0.27717999999999998
	.quad	0x3feec8d5c74751ce              # double 0.96201599999999998
	.quad	0x3fa8eeae9ee45c36              # double 0.048696000000000003
	.quad	0x3fd2a7546d3f9e7c              # double 0.29146300000000003
	.quad	0x3fc951b4fe79ee03              # double 0.19780600000000001
	.quad	0x3fd87e414e7ee914              # double 0.38270599999999999
	.quad	0x3fd290e66cb10343              # double 0.29009400000000002
	.quad	0x3fd4ea63b688bda9              # double 0.32680599999999999
	.quad	0x3feced8f4f93bc0a              # double 0.903999
	.quad	0x3fe5503b81b64e05              # double 0.66604399999999997
	.quad	0x3fd00995aaf78fef              # double 0.250585
	.quad	0x3fe105f6ba0620ab              # double 0.53197799999999995
	.quad	0x3fea0605681ecd4b              # double 0.81323500000000004
	.quad	0x3feb5553ef6b5d46              # double 0.85416599999999998
	.quad	0x3fa06b7aa25d8d7a              # double 0.032070000000000001
	.quad	0x3fed2f7f498c3b0c              # double 0.91204799999999996
	.quad	0x3fe7cd0fe8ab4fa5              # double 0.74378200000000005
	.quad	0x3fe4382e44b6e936              # double 0.63185800000000003
	.quad	0x3fde5c63ae2541d9              # double 0.47438900000000001
	.quad	0x3fcfb866e43aa79c              # double 0.24781500000000001
	.quad	0x3fbb34b51372a38c              # double 0.10627300000000001
	.quad	0x3f58090b417ca212              # double 0.001467
	.quad	0x3fb27d77fae3608d              # double 0.072227
	.quad	0x3fe2f42dcf4623d1              # double 0.59230700000000003
	.quad	0x3fa8943e10060781              # double 0.048006
	.quad	0x3fc49270b06c43f6              # double 0.160719
	.quad	0x3fc26a4ca4f440af              # double 0.143869
	.quad	0x3f7116a8b8f14db6              # double 0.0041720000000000004
	.quad	0x3fe0d573647baa9b              # double 0.52605599999999997
	.quad	0x3fc3754b05b7cfe6              # double 0.15201700000000001
	.quad	0x3fcd681ecd4aa10e              # double 0.22974
	.quad	0x3fb2e5796bfca85d              # double 0.073814000000000005
	.quad	0x3fed49ecb31c219f              # double 0.91527400000000003
	.quad	0x3febaab25b317efe              # double 0.86458699999999999
	.quad	0x3fe91e774eebf65e              # double 0.78496900000000003
	.quad	0x3fe3eeb91b3f20a7              # double 0.62289099999999997
	.quad	0x3fec048e043a2164              # double 0.875556
	.quad	0x3fcc12513b5bf6a1              # double 0.219309
	.quad	0x3fccd85dfa871a3b              # double 0.225353
	.quad	0x3fd6d844d013a92a              # double 0.35694999999999999
	.quad	0x3fd7bc8c0ce91c8f              # double 0.37088300000000002
	.quad	0x3faeb95e5aff2a17              # double 0.060007999999999999
	.quad	0x3feacc07aaef2c73              # double 0.83740599999999998
	.quad	0x3fe497635e74299e              # double 0.64348000000000005
	.quad	0x3fc7b2dd377e1b8f              # double 0.18514600000000001
	.quad	0x3fe8dcad14a0a0f5              # double 0.77693800000000002
	.quad	0x3fd38116ebd4cfd1              # double 0.30475400000000002
	.quad	0x3fe15b39e279dd3c              # double 0.54238600000000003
	.quad	0x3fd7530ced4e4c94              # double 0.36444399999999999
	.quad	0x3fdf141205bc01a3              # double 0.48559999999999998
	.quad	0x3fcff972474538ef              # double 0.24979999999999999
	.quad	0x3fb3f077ccc03793              # double 0.077887999999999999
	.quad	0x3fd46173b85e80bf              # double 0.31844800000000001
	.quad	0x3fc0392e1ef73c0c              # double 0.126745
	.quad	0x3fd91e646f156191              # double 0.39248
	.quad	0x3fd91e7d9988d2a2              # double 0.392486
	.quad	0x3fd6d4801f75104d              # double 0.35671999999999998
	.quad	0x3fbec16df3f96180              # double 0.120139
	.quad	0x3fe77398e9707182              # double 0.73286099999999998
	.quad	0x3fc66698bb4d4888              # double 0.17500599999999999
	.quad	0x3fecfe9b7bf1e8e6              # double 0.90608
	.quad	0x3fe6b45ae5ffa3ba              # double 0.70951600000000004
	.quad	0x3fd3e15011904b3c              # double 0.31062699999999999
	.quad	0x3fd676fb09203a32              # double 0.35101199999999999
	.quad	0x3fe5fa24894c447c              # double 0.68678499999999998
	.quad	0x3fb097c80841ede1              # double 0.064815999999999999
	.quad	0x3fc7b517a46173b8              # double 0.18521399999999999
	.quad	0x3fee59b3d07c84b6              # double 0.94845000000000002
	.quad	0x3feede785b5b7069              # double 0.96465699999999998
	.quad	0x3fc9e4abe6a337a8              # double 0.202291
	.quad	0x3f8ccfaeff5c6c12              # double 0.014068000000000001
	.quad	0x3fe6df7a4e7ab756              # double 0.71477999999999997
	.quad	0x3fbb95c422036007              # double 0.107754
	.quad	0x3fe758f92af9a8ce              # double 0.72961100000000001
	.quad	0x3fe59ed9dfdac68b              # double 0.67564100000000005
	.quad	0x3fef76f6d7625205              # double 0.98327200000000003
	.quad	0x3fe675e84f09528f              # double 0.70189299999999999
	.quad	0x3feb80bed740c415              # double 0.85946599999999995
	.quad	0x3f8873797460242d              # double 0.011939
	.quad	0x3fe4b3636f3b213e              # double 0.64689799999999997
	.quad	0x3fe21029ae4f3344              # double 0.564473
	.quad	0x3fe2f09528f190d1              # double 0.59186799999999995
	.quad	0x3fe0ffa7eb6bf445              # double 0.53120800000000001
	.quad	0x3fc1ab5c39bcba30              # double 0.138042
	.quad	0x3fed759ab6d00b46              # double 0.92060600000000004
	.quad	0x3fed10b630a91538              # double 0.90829000000000004
	.quad	0x3fdabcb5fe542e55              # double 0.41776799999999997
	.quad	0x3fe40ed80a17b0f7              # double 0.62681200000000004
	.quad	0x3fe6d7a355043e53              # double 0.71382299999999999
	.quad	0x3fcb98f1d3ed527e              # double 0.21560499999999999
	.quad	0x3fea2ba16e7a311f              # double 0.81782600000000005
	.quad	0x3fe714c87980f55e              # double 0.72128700000000001
	.quad	0x3fedb97353b4b2fb              # double 0.92888800000000005
	.quad	0x3fe954b05b7cfe58              # double 0.79158799999999996
	.quad	0x3fd4b573eab367a1              # double 0.323575
	.quad	0x3fe357a13c254a3c              # double 0.60444699999999996
	.quad	0x3feaddc8323358f3              # double 0.83957300000000001
	.quad	0x3fd5b07075b3e143              # double 0.33889399999999997
	.quad	0x3fec7585be1a8262              # double 0.88934599999999997
	.quad	0x3feaffc7607c419a              # double 0.843723
	.quad	0x3fd6882f0e0a84be              # double 0.35206199999999999
	.quad	0x3feaa5a682b62846              # double 0.83272100000000004
	.quad	0x3fec4a7503b81b65              # double 0.88408900000000001
	.quad	0x3fd4fc7607c419a0              # double 0.32790900000000001
	.quad	0x3fef2697aeddce7d              # double 0.97346100000000002
	.quad	0x3fe2224894c447c3              # double 0.56668499999999999
	.quad	0x3febb6b2af145522              # double 0.86605200000000004
	.quad	0x3fd23b9ae0c17657              # double 0.28488799999999997
	.quad	0x3fe68c1db0142f62              # double 0.70460400000000001
	.quad	0x3fd2e3e6c4c5974e              # double 0.29515999999999998
	.quad	0x3fda1bb8c32a8c9c              # double 0.40794200000000003
	.quad	0x3fd8afc8b0079a28              # double 0.38572899999999999
	.quad	0x3fec8b28522ea0fd              # double 0.89198699999999997
	.quad	0x3fec1e3a7daa4fca              # double 0.87868999999999997
	.quad	0x3fde2e0e30446b6a              # double 0.47156100000000001
	.quad	0x3fe055d1c3ac929b              # double 0.51047600000000004
	.quad	0x3fea0661ae70c133              # double 0.81327899999999997
	.quad	0x3fcfff4fd6d7e88a              # double 0.24997900000000001
	.quad	0x3fcd96073de1e2df              # double 0.23114100000000001
	.quad	0x3fed4b44a1f08030              # double 0.91543799999999997
	.quad	0x3fce923e5b8561d4              # double 0.23883799999999999
	.quad	0x3fdc60956c0d6f54              # double 0.44339499999999998
	.quad	0x3fd0173fb7a5f41b              # double 0.251419
	.quad	0x3fc09b6b2af14552              # double 0.129743
	.quad	0x3fd2e9424e592967              # double 0.295487
	.quad	0x3fde704ff43419e3              # double 0.475605
	.quad	0x3fe6bae46cfc829d              # double 0.710314
	.quad	0x3fdd3dab5c39bcba              # double 0.45688899999999999
	.quad	0x3fec76145953586d              # double 0.88941400000000004
	.quad	0x3fd30e0221426fe7              # double 0.29772999999999999
	.quad	0x3fd5aa10e0221427              # double 0.338505
	.quad	0x3fc948c2e770bd01              # double 0.19753299999999999
	.quad	0x3fe79bcdbbe0157f              # double 0.73776900000000001
	.quad	0x3fb7034b0e1b4bb6              # double 0.089894000000000001
	.quad	0x3fdc50870110a138              # double 0.442415
	.quad	0x3fef6f284167a95d              # double 0.98231900000000005
	.quad	0x3fecc4d013a92a30              # double 0.89902499999999996
	.quad	0x3feaa6351deefe50              # double 0.832789
	.quad	0x3fd8db9c7368ad69              # double 0.38840400000000003
	.quad	0x3fc5526d8b1dd5d4              # double 0.166578
	.quad	0x3fe0d74b40703298              # double 0.526281
	.quad	0x3fe650225742dcf4              # double 0.69728199999999996
	.quad	0x3fb9d97f62b6ae7d              # double 0.100975
	.quad	0x3fe6549d7ba6698c              # double 0.69782900000000003
	.quad	0x3fb91f0c34c1a8ac              # double 0.098129999999999995
	.quad	0x3fe4c942d490e66d              # double 0.64956800000000003
	.quad	0x3fdb513b5bf6a0dc              # double 0.42683300000000002
	.quad	0x3febeae5bc87db2b              # double 0.87242399999999998
	.quad	0x3fe618655193708b              # double 0.69047800000000004
	.quad	0x3fe99c0010c6f7a1              # double 0.80029300000000003
	.quad	0x3fea5b78cc9a77e6              # double 0.82366600000000001
	.quad	0x3fb59a30984e3fff              # double 0.084384000000000001
	.quad	0x3fa30af5fd47bedb              # double 0.037192999999999997
	.quad	0x3fd7444178705426              # double 0.363541
	.quad	0x3fefc30b178b3700              # double 0.99255899999999997
	.quad	0x3fe2dcbddb9841ab              # double 0.58944600000000003
	.quad	0x3fed07229e90795f              # double 0.90712099999999996
	.quad	0x3fe3fec13b9f127f              # double 0.62484799999999996
	.quad	0x3fd1bba98eda22f7              # double 0.27707900000000002
	.quad	0x3fca3bcd35a85879              # double 0.20494999999999999
	.quad	0x3fd0310129cbab65              # double 0.25299100000000002
	.quad	0x3fefdaaf78feef5f              # double 0.99544500000000002
	.quad	0x3fe5ccaf709b738e              # double 0.68123599999999995
	.quad	0x3fee285a921ccd96              # double 0.94242599999999999
	.quad	0x3fed482e019b0ab3              # double 0.91506100000000001
	.quad	0x3fe7d7e45803cd14              # double 0.74510399999999999
	.quad	0x3fe411ab8e8ea39c              # double 0.62715699999999996
	.quad	0x3fca1f644955b467              # double 0.20408299999999999
	.quad	0x3fef405d52c16df4              # double 0.976607
	.quad	0x3fbf7ced916872b0              # double 0.123
	.quad	0x3fef154a7f8012e0              # double 0.97134900000000001
	.quad	0x3fd37ae147ae147b              # double 0.30437500000000001
	.quad	0x3fcace5f7403dddb              # double 0.209423
	.quad	0x3fd82ab68cef672c              # double 0.37760700000000003
	.quad	0x3fe452d44dca8e2e              # double 0.63511099999999998
	.quad	0x3fe0563a9f383f0c              # double 0.51052600000000004
	.quad	0x3fef618ce2d1f1d0              # double 0.98065800000000003
	.quad	0x3fe96957470eb24a              # double 0.79410899999999995
	.quad	0x3fe0e7f90d9d7775              # double 0.52831700000000004
	.quad	0x3fe915464dc22ab2              # double 0.78384699999999996
	.quad	0x3fd0d2630ec31162              # double 0.26284099999999999
	.quad	0x3fd77aaac1094a2c              # double 0.36686200000000002
	.quad	0x3fe301eabbcb1cc9              # double 0.59398399999999996
	.quad	0x3fed9a1986b9c305              # double 0.92506100000000002
	.quad	0x3fcfacf7446f9b99              # double 0.24746599999999999
	.quad	0x3fdac054ef459d99              # double 0.417989
	.quad	0x3fea9a34ca0c282c              # double 0.83132399999999995
	.quad	0x3fe0e8661ae70c13              # double 0.52836899999999998
	.quad	0x3fc568cef672b884              # double 0.16726099999999999
	.quad	0x3fefe92f6e82949a              # double 0.99721499999999996
	.quad	0x3fe14d141a6937d2              # double 0.540659
	.quad	0x3fb21bf37b8d3f18              # double 0.070738999999999996
	.quad	0x3fb7c6da4484944f              # double 0.092878000000000002
	.quad	0x3fe42f166e008e9b              # double 0.63074799999999998
	.quad	0x3fe828d002e23290              # double 0.75498200000000004
	.quad	0x3fcf0c804102ff8f              # double 0.24256900000000001
	.quad	0x3fed1437c5692b3d              # double 0.90871800000000003
	.quad	0x3fc555bccaf709b7              # double 0.16667899999999999
	.quad	0x3fe88cc78e9f6a94              # double 0.767185
	.quad	0x3fe0ac1b10fd7e46              # double 0.52100900000000006
	.quad	0x3feff4b1ee243569              # double 0.99861999999999995
	.quad	0x3feeee2a80064a9d              # double 0.96657300000000001
	.quad	0x3fe4dc91d14e3bcd              # double 0.65192499999999998
	.quad	0x3fe468dda48b6523              # double 0.63780099999999995
	.quad	0x3fdf191148fd9fd3              # double 0.48590499999999998
	.quad	0x3fdb56b441bb8c33              # double 0.42716700000000002
	.quad	0x3fa675579af1886e              # double 0.043864
	.quad	0x3fd60abb44e50c5f              # double 0.34440500000000002
	.quad	0x3f86cf850df15a4b              # double 0.011138
	.quad	0x3fedf00cd855970b              # double 0.93555299999999997
	.quad	0x3fb65cb35f3d7d39              # double 0.087351999999999999
	.quad	0x3fd78637bd05af6c              # double 0.36756699999999998
	.quad	0x3fb4a8b08dd1e53b              # double 0.080699000000000007
	.quad	0x3fda715831f03d14              # double 0.41316799999999998
	.quad	0x3fd86006d0d4994a              # double 0.38086100000000001
	.quad	0x3fee01c4fc1df330              # double 0.93771599999999999
	.quad	0x3fc6afcce1c58256              # double 0.17724000000000001
	.quad	0x3fc5df3300de4c51              # double 0.170874
	.quad	0x3fcbef8ceb356da0              # double 0.218248
	.quad	0x3fdcb1704ff4341a              # double 0.44833000000000001
	.quad	0x3fb91f0c34c1a8ac              # double 0.098129999999999995
	.quad	0x3fe2ae46cfc829d0              # double 0.58377400000000002
	.quad	0x3fd59e55c0fcb4f2              # double 0.33778900000000001
	.quad	0x3fd7d7625204af92              # double 0.37252099999999999
	.quad	0x3fc33d188f42fe82              # double 0.15030199999999999
	.quad	0x3fe689e98dcdb37d              # double 0.70433500000000004
	.quad	0x3fe0ff88765ba6f0              # double 0.53119300000000003
	.quad	0x3fe811f4f50a02b8              # double 0.75219199999999997
	.quad	0x3fe9d13f8db48909              # double 0.80679299999999998
	.quad	0x3fdd536d655e28aa              # double 0.45821699999999999
	.quad	0x3fea230b9dc2f406              # double 0.816778
	.quad	0x3fe2723aafff36ac              # double 0.57644399999999996
	.quad	0x3fa46173b85e80bf              # double 0.039806000000000001
	.quad	0x3fbd8793dd97f62b              # double 0.11534999999999999
	.quad	0x3fbe28aa433508f6              # double 0.117808
	.quad	0x3feeb662fdfc19c1              # double 0.95976399999999995
	.quad	0x3fcc09fe86833c60              # double 0.219055
	.quad	0x3fe6f5dfeb8d8234              # double 0.71751399999999999
	.quad	0x3fdca54c55432874              # double 0.44758900000000001
	.quad	0x3fead47bedb72820              # double 0.83843800000000001
	.quad	0x3fefbed527e52157              # double 0.99204499999999995
	.quad	0x3fca5c0b9991361e              # double 0.20593400000000001
	.quad	0x3feaeec9e236c15d              # double 0.84164899999999998
	.quad	0x3fcc90e66cb10343              # double 0.22317200000000001
	.quad	0x3fd71da37ef5a965              # double 0.36118400000000001
	.quad	0x3fe9f29d40ee06d9              # double 0.81086599999999998
	.quad	0x3fe9d7625204af92              # double 0.80754199999999998
	.quad	0x3fc7f2ba9d1f6018              # double 0.18709500000000001
	.quad	0x3fb3ff151e75360d              # double 0.078111
	.quad	0x3fe39988d2a1f8e4              # double 0.61249200000000004
	.quad	0x3fecad14a0a0f4d8              # double 0.89612800000000004
	.quad	0x3fcf08893b7d8490              # double 0.242448
	.quad	0x3fe318d477bbf940              # double 0.59678100000000001
	.quad	0x3fe955c96030c240              # double 0.79172200000000004
	.quad	0x3fdc09d8c6d612c7              # double 0.43810100000000002
	.quad	0x3fe7787ad080b674              # double 0.73345700000000003
	.quad	0x3fd03c36113404ea              # double 0.25367499999999998
	.quad	0x3fd7884406c00da2              # double 0.36769200000000002
	.quad	0x3feb393ccd0fe8ab              # double 0.85073699999999997
	.quad	0x3fd00ff10ecb74de              # double 0.250973
	.quad	0x3fc8a326e115592e              # double 0.19247900000000001
	.quad	0x3fe6a3a08398a655              # double 0.70747400000000005
	.quad	0x3fb33dc054ef459e              # double 0.075161000000000006
	.quad	0x3f85158b827fa1a1              # double 0.010295
	.quad	0x3fe0ba42f1ed17c6              # double 0.52273700000000001
	.quad	0x3fe4f37fbefd0071              # double 0.65472399999999997
	.quad	0x3feee82517e77d52              # double 0.96583799999999997
	.quad	0x3fe8c050bd87b56c              # double 0.77347600000000005
	.quad	0x3fc54f5903a7546d              # double 0.16648399999999999
	.quad	0x3fe27f8ca8198f1d              # double 0.57806999999999997
	.quad	0x3fee084e831ad213              # double 0.93851399999999996
	.quad	0x3fd6b6b2af145522              # double 0.35490100000000002
	.quad	0x3fd4e32a0663c750              # double 0.32636500000000002
	.quad	0x3fe579b994e1a3f4              # double 0.67110899999999996
	.quad	0x3fa873de1e2de871              # double 0.047759000000000003
	.quad	0x3fc44a276b7ed41b              # double 0.15851299999999999
	.quad	0x3fe59656eefa1e3f              # double 0.67460200000000003
	.quad	0x3feb6a7ac81d3aa3              # double 0.85674799999999995
	.quad	0x3fd4517a46173b86              # double 0.31747300000000001
	.quad	0x3fddb54195cc857f              # double 0.46418799999999999
	.quad	0x3fdebe121ee67514              # double 0.48035099999999997
	.quad	0x3fe947735c182ecb              # double 0.78997200000000001
	.quad	0x3fe91843c3a42f1f              # double 0.78421200000000002
	.quad	0x3fc8a26e5471715c              # double 0.19245699999999999
	.quad	0x3fbb1c53f39d1b2e              # double 0.105901
	.quad	0x3fc12452c59fb1e2              # double 0.13392100000000001
	.quad	0x3fe03ef49cf56ead              # double 0.50768500000000005
	.quad	0x3fdcc9b845564b66              # double 0.44981199999999999
	.quad	0x3fc7170d62bf11f9              # double 0.180391
	.quad	0x3f96394face67d78              # double 0.021703
	.quad	0x3f9eb4e9813879c4              # double 0.029987
	.quad	0x3fede90bc7b45f18              # double 0.93469800000000003
	.quad	0x3fcfdec5f394b7b3              # double 0.24898600000000001
	.quad	0x3fb504a2fcefaa47              # double 0.082101999999999994
	.quad	0x3fd2141e9af5ba2c              # double 0.28247800000000001
	.quad	0x3fd555043e5321e6              # double 0.333314
	.quad	0x3fda61804d983947              # double 0.41220099999999998
	.quad	0x3fe7a435696e58a3              # double 0.73879499999999998
	.quad	0x3fe2a48301a79fed              # double 0.58258200000000004
	.quad	0x3fea6b4a66559f6f              # double 0.82559700000000003
	.quad	0x3fdf9cc319c5a3e4              # double 0.49394300000000002
	.quad	0x3feb3992c8c50050              # double 0.85077800000000003
	.quad	0x3fe76236c15d2d02              # double 0.73073900000000003
	.quad	0x3fde4dcebfec13ba              # double 0.473499
	.quad	0x3fc8886162f166e0              # double 0.191662
	.quad	0x3fe5a81ba7fc32ec              # double 0.67677100000000001
	.quad	0x3fc702ababead4f6              # double 0.17976900000000001
	.quad	0x3fa5c853c148344c              # double 0.042543999999999998
	.quad	0x3fea053198288052              # double 0.81313400000000002
	.quad	0x3faf28e92d55a3a1              # double 0.060859000000000003
	.quad	0x3fd70bd44998d046              # double 0.360097
	.quad	0x3fe56158750c1b97              # double 0.66813299999999998
	.quad	0x3feb14ff0025bfad              # double 0.84631299999999998
	.quad	0x3febe5add9c27e95              # double 0.87178699999999998
	.quad	0x3fc01882adc4c9c9              # double 0.125748
	.quad	0x3fd7cdc443914f48              # double 0.37193399999999999
	.quad	0x3f92ea960b6f9fcb              # double 0.018473
	.quad	0x3f982e019b0ab2e1              # double 0.023612999999999999
	.quad	0x3fc69dbec2480e8d              # double 0.17668900000000001
	.quad	0x3fe14219eb6390c9              # double 0.53931899999999999
	.quad	0x3fe537de939eadd6              # double 0.66307000000000005
	.quad	0x3fe9bfdd65a14489              # double 0.80467100000000003
	.quad	0x3fdb6c226809d495              # double 0.42847499999999999
	.quad	0x3fe2273b42cc2d6b              # double 0.56728900000000004
	.quad	0x3fee4ed916872b02              # double 0.94712499999999999
	.quad	0x3fe87e6f71a7e308              # double 0.76543399999999995
	.quad	0x3fe039713ad5bee4              # double 0.50701200000000002
	.quad	0x3fd0c2a8869c66d3              # double 0.26188099999999997
	.quad	0x3fd4df82b1f687b1              # double 0.32614199999999999
	.quad	0x3fc146f587d6f976              # double 0.13497799999999999
	.quad	0x3fd0fe3f359ff4fd              # double 0.26551799999999998
	.quad	0x3fdfc2656abde3fc              # double 0.49624000000000001
	.quad	0x3febd3804534bd77              # double 0.86956800000000001
	.quad	0x3fbab14ec204f2ae              # double 0.104268
	.quad	0x3fd2f93bc0a06ea0              # double 0.296462
	.quad	0x3fd3cf63800218df              # double 0.309533
	.quad	0x3fd27646ae3a3a8e              # double 0.28846899999999998
	.quad	0x3feff95f676ea423              # double 0.99919100000000005
	.quad	0x3fd03f1c75818c5d              # double 0.25385200000000002
	.quad	0x3fb45d95dd4c76d1              # double 0.079552999999999999
	.quad	0x3fb07ecfe9b7bf1f              # double 0.064435000000000006
	.quad	0x3fd8168b5cbff477              # double 0.37637599999999999
	.quad	0x3fe68574b407032a              # double 0.70379100000000006
	.quad	0x3fdd4fb1183b6028              # double 0.45798899999999998
	.quad	0x3fe53d5dc4007571              # double 0.66374100000000003
	.quad	0x3fcd1ca7d6733ebc              # double 0.227437
	.quad	0x3fdad82fd75e2047              # double 0.41944500000000001
	.quad	0x3fc0f73c0c1fc8f3              # double 0.132545
	.quad	0x3fb9de481f53825e              # double 0.101048
	.quad	0x3fe8651b0ccbc05d              # double 0.76234199999999996
	.quad	0x3fd400e6afcce1c6              # double 0.31255500000000003
	.quad	0x3fc3dcf0307f23cd              # double 0.15518000000000001
	.quad	0x3fd56d58c8eef1bb              # double 0.33479900000000001
	.quad	0x3fef999dcb5781c7              # double 0.98750199999999999
	.quad	0x3fef6d549731098d              # double 0.98209599999999996
	.quad	0x3fd37d9dba908a26              # double 0.30454199999999998
	.quad	0x3fdd0f345069a4df              # double 0.45405299999999998
	.quad	0x3feaa0bc382a12f9              # double 0.832121
	.quad	0x3fd902cd39da1661              # double 0.39079599999999998
	.quad	0x3fe9428f5c28f5c3              # double 0.78937500000000005
	.quad	0x3fe12ef2c7325919              # double 0.53698100000000004
	.quad	0x3fea4abe6a337a81              # double 0.82162400000000002
	.quad	0x3fb9ee2435696e59              # double 0.10129000000000001
	.quad	0x3fe879b34a44c7b0              # double 0.76485599999999998
	.quad	0x3fe53e89a88ace25              # double 0.66388400000000003
	.quad	0x3fe07f79c842fa51              # double 0.51556100000000005
	.quad	0x3f902f72b4528284              # double 0.015806000000000001
	.quad	0x3fe8eeb2d0a24463              # double 0.779138
	.quad	0x3fed7548ecd8dbcf              # double 0.92056700000000002
	.quad	0x3fae83c297bfa4c6              # double 0.059598999999999999
	.quad	0x3fe2a4399b2c40d1              # double 0.58254700000000004
	.quad	0x3fe09c044284dfce              # double 0.51904499999999998
	.quad	0x3fd5182ecaeea63b              # double 0.32960099999999998
	.quad	0x3fdf6644d87724fb              # double 0.49061700000000003
	.quad	0x3fe64434e3369b9d              # double 0.69582599999999994
	.quad	0x3fdc98c7e28240b8              # double 0.44682500000000003
	.quad	0x3feb32e59af9ebea              # double 0.84996300000000002
	.quad	0x3fe476db940fecdd              # double 0.63950899999999999
	.quad	0x3fbf736cdf266ba5              # double 0.12285500000000001
	.quad	0x3fe8f1737542a23c              # double 0.779474
	.quad	0x3fc75903a7546d40              # double 0.18240400000000001
	.quad	0x3fe66e3b46fdeb53              # double 0.70095600000000002
	.quad	0x3fedc215b9a5a89c              # double 0.92994200000000004
	.quad	0x3fe5f5a74c09c3ce              # double 0.68623699999999999
	.quad	0x3fe52606fac6045c              # double 0.66089200000000003
	.quad	0x3fd7c6088d6d3b6d              # double 0.37146200000000001
	.quad	0x3fed61aa3f034b0e              # double 0.91817199999999999
	.quad	0x3fc6795f676ea423              # double 0.17557900000000001
	.quad	0x3facd7f0ed3d859d              # double 0.056335000000000003
	.quad	0x3fd733a4723aafff              # double 0.36252699999999999
	.quad	0x3fd4fd4bf0995aaf              # double 0.32795999999999997
	.quad	0x3fe73f85510d38ce              # double 0.72650400000000004
	.quad	0x3fda400fba8826ab              # double 0.41016000000000002
	.quad	0x3fdd0e5e679463d0              # double 0.45400200000000002
	.quad	0x3fe3bc64345cfedf              # double 0.61674700000000005
	.quad	0x3fdd0e12e83a109d              # double 0.453984
	.quad	0x3fe0df06f6944674              # double 0.52722500000000005
	.quad	0x3febe4a7b4e54f7b              # double 0.87166200000000005
	.quad	0x3fe16f99806f2629              # double 0.54487300000000005
	.quad	0x3fe1caec8d5c7475              # double 0.55602099999999999
	.quad	0x3fec7e3f359ff4fd              # double 0.89041099999999995
	.quad	0x3fc90435efa615a9              # double 0.195441
	.quad	0x3fe17bdcf0307f24              # double 0.54637000000000002
	.quad	0x3f947a17f4128bf4              # double 0.019997000000000001
	.quad	0x3fe19c4545846e8f              # double 0.55032599999999998
	.quad	0x3fc3b951c5c5718f              # double 0.15409300000000001
	.quad	0x3fe5e91c8eabffce              # double 0.68470600000000004
	.quad	0x3fef3cdfefbf401c              # double 0.97618099999999996
	.quad	0x3f807b784662bae0              # double 0.0080479999999999996
	.quad	0x3febc827b6fe2e6f              # double 0.86818300000000004
	.quad	0x3f854eb13dfb0d52              # double 0.010404
	.quad	0x3fba0c282c6ef3d4              # double 0.10174800000000001
	.quad	0x3fe4bfe9fadafd11              # double 0.64842699999999998
	.quad	0x3fe2802e2328f9f4              # double 0.57814699999999997
	.quad	0x3fb29ad42c3c9eed              # double 0.072675000000000003
	.quad	0x3fe958a548238540              # double 0.79207099999999997
	.quad	0x3fa62b8c75c4a83b              # double 0.043300999999999999
	.quad	0x3fc8e44b6e935b92              # double 0.194467
	.quad	0x3fd550fc71d60631              # double 0.33306799999999998
	.quad	0x3fc9ff609dcf8940              # double 0.20310600000000001
	.quad	0x3f9a771c970f7b9e              # double 0.025845
	.quad	0x3fdca4bdba0a5269              # double 0.44755499999999998
	.quad	0x3fd4d3f5b5fa2270              # double 0.32543699999999998
	.quad	0x3fc0127b2cc70868              # double 0.12556400000000001
	.quad	0x3fe3525aab474107              # double 0.60380299999999998
	.quad	0x3fec48c7192ea52f              # double 0.883884
	.quad	0x3fd0d4e09784ec63              # double 0.26299299999999998
	.quad	0x3fdbe2003ab862b2              # double 0.43566899999999997
	.quad	0x3fdbcbb3c81908e6              # double 0.43430800000000003
	.quad	0x3fef8a116659d12d              # double 0.98560400000000003
	.quad	0x3fe18a58b3f63c32              # double 0.54813800000000001
	.quad	0x3fd59f1f14983d79              # double 0.337837
	.quad	0x3fe65aa2e3c536d6              # double 0.69856399999999996
	.quad	0x3fe9c06e19b90eaa              # double 0.80474000000000001
	.quad	0x3fe30aa00192a737              # double 0.59504699999999999
	.quad	0x3fd7e12e83a109d0              # double 0.37311899999999998
	.quad	0x3fd567f0aa21a71a              # double 0.33446900000000002
	.quad	0x3fed35525cc42635              # double 0.91275899999999999
	.quad	0x3fedef88b9778573              # double 0.93549000000000004
	.quad	0x3fe862c77574f723              # double 0.76205800000000001
	.quad	0x3feaa20bc382a130              # double 0.83228100000000005
	.quad	0x3fdd2a38b8ae31d7              # double 0.455702
	.quad	0x3fe24e1c58255b03              # double 0.57203499999999996
	.quad	0x3fd6e1b8ed1bf7ad              # double 0.35752699999999998
	.quad	0x3fb61d755bccaf71              # double 0.086387000000000005
	.quad	0x3fa1e01de2691644              # double 0.034913
	.quad	0x3feb6fcbd556084a              # double 0.85739699999999996
	.quad	0x3fe86bbba55d1c3b              # double 0.76315100000000002
	.quad	0x3fc4c03ff69014b6              # double 0.16211700000000001
	.quad	0x3f924e160d887ebf              # double 0.017876
	.quad	0x3fd2a0620ab71327              # double 0.29103899999999999
	.quad	0x3fec04ee7c49fd7a              # double 0.87560199999999999
	.quad	0x3fdb38bcdfefbf40              # double 0.42533799999999999
	.quad	0x3fd6413db7f17375              # double 0.34773199999999999
	.quad	0x3fa21682f944241c              # double 0.035327999999999998
	.quad	0x3fea1565c2d27807              # double 0.81511199999999995
	.quad	0x3fa7a02fb5d03105              # double 0.046143999999999998
	.quad	0x3fefe75ddd2ae8e2              # double 0.99699300000000002
	.quad	0x3f9f5019f3c70c99              # double 0.030578999999999999
	.quad	0x3fec05dd8f92af9b              # double 0.87571600000000005
	.quad	0x3fc6f7db6e503fb3              # double 0.17943899999999999
	.quad	0x3fd8c2bd7f51efb7              # double 0.38688600000000001
	.quad	0x3fdf978d4fdf3b64              # double 0.49362499999999998
	.quad	0x3fe765eaab042529              # double 0.73119100000000004
	.quad	0x3fde710cb295e9e2              # double 0.47565000000000002
	.quad	0x3feefa28bb0a2caa              # double 0.96803700000000004
	.quad	0x3fbc998d045fe111              # double 0.111718
	.quad	0x3fd65f91600f3450              # double 0.34958299999999998
	.quad	0x3febb7fbefd00714              # double 0.866209
	.quad	0x3fe60ac18f81e8a3              # double 0.68881300000000001
	.quad	0x3feac2f61ed5ae1d              # double 0.83629900000000001
	.quad	0x3fe0c7c30d306a2b              # double 0.52438499999999999
	.quad	0x3fb854cdb7ae5797              # double 0.095044000000000003
	.quad	0x3fb165d3996fa82f              # double 0.067960000000000007
	.quad	0x3fddac81d3aa36a0              # double 0.46365400000000001
	.quad	0x3fdac1e7967caea7              # double 0.41808499999999998
	.quad	0x3feca5e13b18dac2              # double 0.89524899999999996
	.quad	0x3fe6d668c2613900              # double 0.713673
	.quad	0x3fea8bbb1f255f35              # double 0.82955699999999999
	.quad	0x3fd7a9a8049667b6              # double 0.36973
	.quad	0x3fee8c0053e2d624              # double 0.95459000000000004
	.quad	0x3fe29327243137b0              # double 0.58046299999999995
	.quad	0x3fc33d6c72192210              # double 0.150312
	.quad	0x3fc27a072d1aeb3e              # double 0.14434900000000001
	.quad	0x3fabb7952d234eba              # double 0.054135000000000003
	.quad	0x3fdc5d80e496edee              # double 0.44320700000000002
	.quad	0x3fcf306a2b1704ff              # double 0.24366499999999999
	.quad	0x3fdc3c925785f8d3              # double 0.44119700000000001
	.quad	0x3fd7103c8e25c811              # double 0.36036600000000002
	.quad	0x3fd798244e93e1ca              # double 0.36866100000000002
	.quad	0x3fa19ae924f227d0              # double 0.034384999999999999
	.quad	0x3fe7dc2b0ea18373              # double 0.74562600000000001
	.quad	0x3fbc39abf3387161              # double 0.11025500000000001
	.quad	0x3fe708f42fe82518              # double 0.71984300000000001
	.quad	0x3fee789613d31b9b              # double 0.95221999999999996
	.quad	0x3fe543cc07aaef2c              # double 0.66452599999999995
	.quad	0x3fe6d6d7e889c1b5              # double 0.71372599999999997
	.quad	0x3fe0743201040bfe              # double 0.51418399999999997
	.quad	0x3fda151611ba3ca7              # double 0.40753699999999998
	.quad	0x3fe5dd65a14488c6              # double 0.68327599999999999
	.quad	0x3fbfbecaab8a5ce6              # double 0.124005
	.quad	0x3fdc6aca79357604              # double 0.44401800000000002
	.quad	0x3fd78feac42e989a              # double 0.36815900000000001
	.quad	0x3fd0aceee0f3cb3e              # double 0.26055499999999998
	.quad	0x3feea98cc144028e              # double 0.95819699999999997
	.quad	0x3fef7c243dccea29              # double 0.983904
	.quad	0x3fabd5992428d435              # double 0.054364000000000003
	.quad	0x3fd39a4df47f993d              # double 0.30629299999999998
	.quad	0x3fece22813448063              # double 0.90260700000000005
	.quad	0x3fe503c297bfa4c6              # double 0.65670899999999999
	.quad	0x3fd1db445ed4a1ad              # double 0.27900799999999998
	.quad	0x3fe6bc925785f8d3              # double 0.71051900000000001
	.quad	0x3fcbc46d82ba5a04              # double 0.21693200000000001
	.quad	0x3fcf2d3c792d1288              # double 0.24356800000000001
	.quad	0x3f98d10f51ac9afe              # double 0.024235
	.quad	0x3fd113f077ccc038              # double 0.26684200000000002
	.quad	0x3fe8126e978d4fdf              # double 0.75224999999999997
	.quad	0x3fc8e4e26d4801f7              # double 0.19448499999999999
	.quad	0x3fdbf30a4e379b78              # double 0.43670900000000001
	.quad	0x3fb2f405f6ba0621              # double 0.074036000000000005
	.quad	0x3fe1f0ae536501e2              # double 0.56062999999999996
	.quad	0x3fdec6f36ef80560              # double 0.48089300000000001
	.quad	0x3fe08b39192641b3              # double 0.51699499999999998
	.quad	0x3fc4ed1bf7ad4b27              # double 0.16348599999999999
	.quad	0x3fc9c5718eb89507              # double 0.20133799999999999
	.quad	0x3f9e98dcdb37c99b              # double 0.02988
	.quad	0x3fe3e9835158b828              # double 0.622255
	.quad	0x3fec3ef06b37867f              # double 0.882683
	.quad	0x3fdde4fb97bb7308              # double 0.46710099999999999
	.quad	0x3fb9a5a89b951c5c              # double 0.100184
	.quad	0x3fe381b64e054691              # double 0.60958400000000001
	.quad	0x3fe795464dc22ab2              # double 0.73697199999999996
	.quad	0x3fe832b12d3415b1              # double 0.75618799999999997
	.quad	0x3fe155b035bd512f              # double 0.54171000000000002
	.quad	0x3fb0739b024f6599              # double 0.064264000000000002
	.quad	0x3fb094c447c30d30              # double 0.064769999999999994
	.quad	0x3fe7e3b8a19c9d5a              # double 0.74654799999999999
	.quad	0x3fdcf127f5e84f09              # double 0.45221899999999998
	.quad	0x3fa44f3ba775fb2f              # double 0.039667000000000001
	.quad	0x3f45e39713ad5bee              # double 6.6799999999999997E-4
	.quad	0x3fd297aaac1094a3              # double 0.29050700000000002
	.quad	0x3fcc964e8b7e4de4              # double 0.22333700000000001
	.quad	0x3fe5bfaf42784a94              # double 0.67964899999999995
	.quad	0x3fd444806290eed0              # double 0.31668099999999999
	.quad	0x3fee6358298cc144              # double 0.94962699999999999
	.quad	0x3fe0776a2f48c2e7              # double 0.51457699999999995
	.quad	0x3fee5dc6195464dc              # double 0.94894699999999998
	.quad	0x3fe0918e325d4a5e              # double 0.51776800000000001
	.quad	0x3fcd9acffa7eb6bf              # double 0.23128699999999999
	.quad	0x3fbf77079e59f2bb              # double 0.12291000000000001
	.quad	0x3fa8bc382a12f901              # double 0.048311
	.quad	0x3fe2181e03f70585              # double 0.56544399999999995
	.quad	0x3fdc6c8711d798d9              # double 0.44412400000000002
	.quad	0x3fdb02c4d65e4606              # double 0.42204399999999997
	.quad	0x3fef50a88effe2a4              # double 0.97859600000000002
	.quad	0x3f85097c80841ede              # double 0.010272
	.quad	0x3fd70d62bf11f927              # double 0.36019200000000001
	.quad	0x3fe0cf97edc7ef17              # double 0.52534099999999995
	.quad	0x3fe1a261bf37b8d4              # double 0.55107200000000001
	.quad	0x3fef63022dd7a9a0              # double 0.98083600000000004
	.quad	0x3fe5970d62bf11f9              # double 0.67468899999999998
	.quad	0x3fc045baf533f423              # double 0.12712799999999999
	.quad	0x3fd17bf1e8e60807              # double 0.27318999999999999
	.quad	0x3fe177036c9c0a8d              # double 0.54577799999999999
	.quad	0x3fe8435ce1826677              # double 0.75822299999999998
	.quad	0x3fe27de939eadd59              # double 0.57786999999999999
	.quad	0x3fe6eb5b2d4d4025              # double 0.71623000000000003
	.quad	0x3fe2e049ecb31c22              # double 0.58987900000000004
	.quad	0x3fe474afd5454153              # double 0.63924400000000003
	.quad	0x3fe55729b280f12c              # double 0.66688999999999998
	.quad	0x3fecd0bd87b56b87              # double 0.90048099999999998
	.quad	0x3fb20e6299524bfd              # double 0.070531999999999997
	.quad	0x3fdabf61aa3f034b              # double 0.417931
	.quad	0x3fe7e8f08461f9f0              # double 0.74718499999999999
	.quad	0x3fe83c1acde19fc3              # double 0.75733700000000004
	.quad	0x3fb6c625e99e94ab              # double 0.088960999999999998
	.quad	0x3fe7938151a43782              # double 0.73675599999999997
	.quad	0x3fcb29802c0a4a06              # double 0.212204
	.quad	0x3fd43cddd6e04c06              # double 0.31621500000000002
	.quad	0x3feb2acd9e83e426              # double 0.84897500000000004
	.quad	0x3fe5a038194c0160              # double 0.67580799999999996
	.quad	0x3fb6d38476f2a5a4              # double 0.089164999999999994
	.quad	0x3fe2aa0663c74fb5              # double 0.58325499999999997
	.quad	0x3fe2108a265f0f5a              # double 0.56451899999999999
	.quad	0x3fe424fca42aed14              # double 0.62951500000000005
	.quad	0x3fdbc2d27807789a              # double 0.43376599999999998
	.quad	0x3fb24873365881a1              # double 0.071417999999999995
	.quad	0x3fc7034b0e1b4bb6              # double 0.179788
	.quad	0x3fe2e136e71cda2b              # double 0.58999199999999996
	.quad	0x3fd1d6bebe1650a4              # double 0.27873199999999998
	.quad	0x3feca22f6a50d6b2              # double 0.89479799999999998
	.quad	0x3fe7c020817fc760              # double 0.74220299999999994
	.quad	0x3fca2363b256ffc1              # double 0.204205
	.quad	0x3f9067cf1c3265ae              # double 0.016021000000000001
	.quad	0x3fc296030c23fab1              # double 0.145203
	.quad	0x3feb871a3b14a904              # double 0.86024199999999995
	.quad	0x3fe39737542a23c0              # double 0.612209
	.quad	0x3fe5c284dfce3151              # double 0.67999500000000002
	.quad	0x3fddaa2a0a958538              # double 0.46351100000000001
	.quad	0x3fe43e596c82e01a              # double 0.63261100000000003
	.quad	0x3fb59ba1b1960fa1              # double 0.084405999999999995
	.quad	0x3fdd10e453d20f2c              # double 0.454156
	.quad	0x3fe50995aaf78fef              # double 0.65742
	.quad	0x3fd6d5629d8409e5              # double 0.35677399999999998
	.quad	0x3fe6651d25aab474              # double 0.69984299999999999
	.quad	0x3fe79c3ce2089e34              # double 0.73782199999999998
	.quad	0x3fd6521dda059a74              # double 0.34876200000000002
	.quad	0x3fded4e8fb00bcbe              # double 0.48174499999999998
	.quad	0x3fb9b024f6598e11              # double 0.100344
	.quad	0x3fe97926c7eae5bd              # double 0.79603900000000005
	.quad	0x3fe709d8c6d612c7              # double 0.71995200000000004
	.quad	0x3fee06f8ad256799              # double 0.93835100000000005
	.quad	0x3fe665e2478854ce              # double 0.69993700000000003
	.quad	0x3fcd34c5da6a4441              # double 0.22817299999999999
	.quad	0x3fefe82f944241c4              # double 0.997093
	.quad	0x3fe002d38476f2a6              # double 0.50034500000000004
	.quad	0x3fe1655c0fcb4f1e              # double 0.54362299999999997
	.quad	0x3fe7a3c42a66dbd7              # double 0.73874099999999998
	.quad	0x3fdf2c40d0aaa7df              # double 0.48707600000000001
	.quad	0x3fd03c03bc4d22c9              # double 0.25366300000000003
	.quad	0x3fede7d34df04ddb              # double 0.93454899999999996
	.quad	0x3fda51d68c692f6f              # double 0.41124500000000003
	.quad	0x3fe5d1287c200c0f              # double 0.681782
	.quad	0x3fd4f4f50a02b841              # double 0.32745099999999999
	.quad	0x3fec011d3671ac15              # double 0.87513600000000002
	.quad	0x3fe2b0d9513f8db5              # double 0.58408800000000005
	.quad	0x3fe7126a65cf67b2              # double 0.72099800000000003
	.quad	0x3f9f166e008e9b39              # double 0.030359000000000001
	.quad	0x3fec73083558a761              # double 0.889042
	.quad	0x3fd80a8d21bc126a              # double 0.37564399999999998
	.quad	0x3fed71c53f39d1b3              # double 0.92013800000000001
	.quad	0x3fd53365881a1555              # double 0.331262
	.quad	0x3fdecee5abc0e38a              # double 0.48137799999999997
	.quad	0x3fe93c664d3bf2f5              # double 0.78862299999999996
	.quad	0x3fd9e5aff2a172ac              # double 0.404644
	.quad	0x3fef37aa25d8d79d              # double 0.97554499999999999
	.quad	0x3fe66f7c243dccea              # double 0.70110899999999998
	.quad	0x3fe8455000c9539c              # double 0.75846100000000005
	.quad	0x3fe8543f1c75818c              # double 0.76028399999999995
	.quad	0x3fe3064883fd5022              # double 0.59451699999999996
	.quad	0x3fe2628ed5f138bd              # double 0.57453100000000001
	.quad	0x3fc090795f676ea4              # double 0.129409
	.quad	0x3fddaa4b9884c6a4              # double 0.46351900000000001
	.quad	0x3fa3e0bd44998d04              # double 0.038823999999999997
	.quad	0x3fe1c6173b85e80c              # double 0.55543100000000001
	.quad	0x3fe0947ae147ae14              # double 0.51812499999999995
	.quad	0x3fc6d72ffd1dcd70              # double 0.17844199999999999
	.quad	0x3fe50c308feac42f              # double 0.65773800000000004
	.quad	0x3fa42917507e9d95              # double 0.039376000000000001
	.quad	0x3fed80a393ee5eee              # double 0.92195300000000002
	.quad	0x3fc1041461b6d43d              # double 0.132937
	.quad	0x3faf73c0c1fc8f32              # double 0.061429999999999998
	.quad	0x3fe432e3821af7d3              # double 0.631212
	.quad	0x3fc016bdb1a6d699              # double 0.125694
	.quad	0x3fc0ed1bf7ad4b27              # double 0.13223599999999999
	.quad	0x3fe1da76d97b30f9              # double 0.55791800000000003
	.quad	0x3fe631d712a0ec74              # double 0.69358399999999998
	.quad	0x3fe353543aeab799              # double 0.60392199999999996
	.quad	0x3fc1cc100e6afcce              # double 0.13904
	.quad	0x3fd93bb83cf2cf96              # double 0.39427000000000001
	.quad	0x3fe543f811f4f50a              # double 0.664547
	.quad	0x3fc7f42bb6672fba              # double 0.187139
	.quad	0x3fd5afb7e90ff972              # double 0.33884999999999998
	.quad	0x3fb6fdeb52c9d170              # double 0.089812000000000002
	.quad	0x3feaaf965b20b806              # double 0.83393399999999995
	.quad	0x3fe6e073de1e2de8              # double 0.71489899999999995
	.quad	0x3fbc1700cd855971              # double 0.109726
	.quad	0x3fe0cc6e6d9be4cd              # double 0.52495499999999995
	.quad	0x3f611cf355cd91ef              # double 0.0020890000000000001
	.quad	0x3fd6eb6390c91080              # double 0.35811700000000002
	.quad	0x3fe1519dece57109              # double 0.54121300000000006
	.quad	0x3fd9e41919ac7970              # double 0.40454699999999999
	.quad	0x3fb3b549f94855da              # double 0.076984999999999997
	.quad	0x3fbae6fb4c3c18b5              # double 0.105087
	.quad	0x3fdc65ecc3e3193f              # double 0.44372099999999998
	.quad	0x3f7182a9930be0df              # double 0.0042750000000000002
	.quad	0x3febeb8f9b13165d              # double 0.87250499999999998
	.quad	0x3fe8404c8bc9cd3e              # double 0.75784899999999999
	.quad	0x3fc01dd1a21ea359              # double 0.12590999999999999
	.quad	0x3fde61ed5ae1cde6              # double 0.47472700000000001
	.quad	0x3fd2883fd5022574              # double 0.28956599999999999
	.quad	0x3fd1f2ecf2064239              # double 0.28045199999999998
	.quad	0x3fcf246bf01322f2              # double 0.24329899999999999
	.quad	0x3fe67f88765ba6f0              # double 0.70306800000000003
	.quad	0x3fdd9da9c99285a9              # double 0.46274799999999999
	.quad	0x3fe1d8ec95bff045              # double 0.55772999999999995
	.quad	0x3fdcf19934efcbd5              # double 0.45224599999999998
	.quad	0x3fd3a708ede54b49              # double 0.30707000000000001
	.quad	0x3fec7e004b7f5a53              # double 0.89038099999999998
	.quad	0x3fe9b9f340d4dc66              # double 0.80394900000000002
	.quad	0x3fe8e0e736049ecb              # double 0.77745399999999998
	.quad	0x3fe3535653c9abb0              # double 0.60392299999999999
	.quad	0x3fefaeea63b688be              # double 0.99010200000000004
	.quad	0x3fea24db163baba8              # double 0.81699900000000003
	.quad	0x3fec6a6c1a048e04              # double 0.88799099999999997
	.quad	0x3fe523a8e71476b0              # double 0.66060300000000005
	.quad	0x3fd82253111f0c35              # double 0.37709500000000001
	.quad	0x3f981f969e3c9689              # double 0.023557999999999999
	.quad	0x3fe22dff822bbecb              # double 0.56811500000000004
	.quad	0x3fbdadc8fb86f47b              # double 0.11593299999999999
	.quad	0x3fce3f1c75818c5d              # double 0.23630100000000001
	.quad	0x3fed80ae10492360              # double 0.92195800000000005
	.quad	0x3fe3733ca31e7d9a              # double 0.60781700000000005
	.quad	0x3fba9ac36544fe37              # double 0.103924
	.quad	0x3fec37cfe5860136              # double 0.88181299999999996
	.quad	0x3fe6bfd0d0678c00              # double 0.71091499999999996
	.quad	0x3fda7d41743e963e              # double 0.41389500000000001
	.quad	0x3fe01e30014f8b59              # double 0.50368500000000005
	.quad	0x3fc6ca7935760392              # double 0.17805399999999999
	.quad	0x3fea797aaac1094a              # double 0.82732899999999998
	.quad	0x3fe85c2b0ea18373              # double 0.76125100000000001
	.quad	0x3fe73945308bb906              # double 0.72574099999999997
	.quad	0x3fc69c7ffde7210c              # double 0.176651
	.quad	0x3fe61fc4c165907e              # double 0.69137800000000005
	.quad	0x3fe3a68f4b61fe22              # double 0.61408200000000002
	.quad	0x3fe99e5e2478854d              # double 0.80058200000000002
	.quad	0x3fe0aa1b5c7cd899              # double 0.52076500000000003
	.quad	0x3fd369057d1782d4              # double 0.30328500000000003
	.quad	0x3fec0bbb1f255f35              # double 0.87643199999999999
	.quad	0x3fe8dd72367e414e              # double 0.77703199999999994
	.quad	0x3fcd368ad6883772              # double 0.22822700000000001
	.quad	0x3fd4c7325918a00a              # double 0.324658
	.quad	0x3fbe16616b54e2b0              # double 0.11752899999999999
	.quad	0x3fc33f42352eb5f6              # double 0.150368
	.quad	0x3fd8913e81450efe              # double 0.38386500000000001
	.quad	0x3feeb2441fea8113              # double 0.95926100000000003
	.quad	0x3fa34a44c7b02d5a              # double 0.037676000000000001
	.quad	0x3fead6084a515cea              # double 0.83862700000000001
	.quad	0x3fe2cc016052502f              # double 0.58740300000000001
	.quad	0x3fec341bfbdf090f              # double 0.88136099999999995
	.quad	0x3fea6f99806f2629              # double 0.82612300000000005
	.quad	0x3fbbab649d388a8b              # double 0.108084
	.quad	0x3fda68986fcdee35              # double 0.412634
	.quad	0x3fd98909289dadfb              # double 0.39898899999999998
	.quad	0x3fe4a9a1b9f98b72              # double 0.64570700000000003
	.quad	0x3fd66544fe36d224              # double 0.34993099999999999
	.quad	0x3fbc0bcbe61cffeb              # double 0.109555
	.quad	0x3fccb3461309c800              # double 0.224221
	.quad	0x3fe89cdc443914f5              # double 0.76914800000000005
	.quad	0x3fd1705857afea3e              # double 0.272482
	.quad	0x3fc5a4ce8101f31f              # double 0.16909199999999999
	.quad	0x3fe2b05b7cfe5860              # double 0.58402799999999999
	.quad	0x3fdb126a65cf67b2              # double 0.42299900000000001
	.quad	0x3fc372ffd1dcd706              # double 0.151947
	.quad	0x3febd8f7121ab4b7              # double 0.87023499999999998
	.quad	0x3fee6ebf65dbfceb              # double 0.95101899999999995
	.quad	0x3fd5eb52c9d16fca              # double 0.34248800000000001
	.quad	0x3fc8cb4289118c19              # double 0.19370299999999999
	.quad	0x3fcbaca36199780c              # double 0.21620600000000001
	.quad	0x3fe90e12e83a109d              # double 0.782968
	.quad	0x3fe9ed2674080f99              # double 0.810199
	.quad	0x3fd0959e6256366d              # double 0.25913199999999997
	.quad	0x3fd5b33daf8df7a5              # double 0.33906500000000001
	.quad	0x3fd8c56d5cfaacda              # double 0.38705000000000001
	.quad	0x3fc6cc6822ff0889              # double 0.17811299999999999
	.quad	0x3fec8c1b97353b4b              # double 0.89210299999999998
	.quad	0x3fe227e0ef99806f              # double 0.56736799999999998
	.quad	0x3fe44c6e6d9be4cd              # double 0.63432999999999995
	.quad	0x3fdb9db65ecc3e32              # double 0.43150100000000002
	.quad	0x3fe4c141e9af5ba3              # double 0.64859100000000003
	.quad	0x3febc195cc857f30              # double 0.86738099999999996
	.quad	0x3fd15a038194c016              # double 0.271119
	.quad	0x3fc51deefe4ffc98              # double 0.16497600000000001
	.quad	0x3fceac9f2fdb8fde              # double 0.23964299999999999
	.quad	0x3fe0ebdb1a6d6990              # double 0.52879100000000001
	.quad	0x3fd67903211cb03a              # double 0.351136
	.quad	0x3f83ad5bee3d5fdd              # double 0.0096080000000000002
	.quad	0x3f9503b81b64e054              # double 0.020521999999999999
	.quad	0x3fd049b62c77574f              # double 0.25449899999999998
	.quad	0x3fd259103c8e25c8              # double 0.286686
	.quad	0x3fee52630ec31162              # double 0.94755699999999998
	.quad	0x3fe4505af6c69b5a              # double 0.63480899999999996
	.quad	0x3fc4a7589efd86a9              # double 0.161357
	.quad	0x3fe83dcad14a0a0f              # double 0.75754299999999997
	.quad	0x3fd72456f75d9a0f              # double 0.361593
	.quad	0x3fef0b7a1c25d074              # double 0.97015099999999998
	.quad	0x3fea4855da272863              # double 0.82133
	.quad	0x3fed69d51b4fe79f              # double 0.91916900000000001
	.quad	0x3feb7f88765ba6f0              # double 0.85931800000000003
	.quad	0x3fdda8e71476af8a              # double 0.46343400000000001
	.quad	0x3fde6be37de939eb              # double 0.47533500000000001
	.quad	0x3fd56cf41f212d77              # double 0.33477499999999999
	.quad	0x3fdbd1526d8b1dd6              # double 0.43465100000000001
	.quad	0x3fcf7fcfc3f811f5              # double 0.246088
	.quad	0x3fca2089e34330d7              # double 0.20411799999999999
	.quad	0x3f8ebf22c01e68a1              # double 0.015013
	.quad	0x3fd34a01abd1aa82              # double 0.30139199999999999
	.quad	0x3feedb5d894812be              # double 0.96427799999999997
	.quad	0x3fb7f36ac647778e              # double 0.093558000000000002
	.quad	0x3fe4ff06705c896e              # double 0.65613100000000002
	.quad	0x3fe99cbccf28c79f              # double 0.80038299999999996
	.quad	0x3fe3434a01abd1ab              # double 0.60196400000000005
	.quad	0x3fe878f68be2f7b1              # double 0.76476599999999995
	.quad	0x3fe96a832b990afe              # double 0.79425199999999996
	.quad	0x3fee18e757928e0d              # double 0.94054000000000004
	.quad	0x3fec22af5771001d              # double 0.87923399999999996
	.quad	0x3fc9898b2e9ccb7d              # double 0.19950999999999999
	.quad	0x3fad0268900c521e              # double 0.056659000000000001
	.quad	0x3fcf1fe64f54d1e9              # double 0.24316099999999999
	.quad	0x3fdc96744b2b777d              # double 0.446683
	.quad	0x3fb8efaa4766c6de              # double 0.097406999999999993
	.quad	0x3fe1178705425f20              # double 0.53412199999999999
	.quad	0x3fca75b3e1437c57              # double 0.20671700000000001
	.quad	0x3fc50ea9e6eeb702              # double 0.16450999999999999
	.quad	0x3f96ee73e681a9b9              # double 0.022394000000000001
	.quad	0x3fded85dfa871a3b              # double 0.481956
	.quad	0x3f9cf9e3864cb5bb              # double 0.028296999999999999
	.quad	0x3fe4010624dd2f1b              # double 0.62512500000000004
	.quad	0x3fe43906466b1e5c              # double 0.63196099999999999
	.quad	0x3feaf6d97b30f8c6              # double 0.84263299999999997
	.quad	0x3fe049f2fdb8fde3              # double 0.50902700000000001
	.quad	0x3fe4feb8d8234224              # double 0.65609399999999996
	.quad	0x3fe0155f78359bc3              # double 0.50260899999999997
	.quad	0x3fe485b39e279dd4              # double 0.64132100000000003
	.quad	0x3fe03b46fdeb52ca              # double 0.50723600000000002
	.quad	0x3fe008205ff1d81f              # double 0.50099199999999999
	.quad	0x3fe92faf85942917              # double 0.78707099999999997
	.quad	0x3fc545c78a6dacac              # double 0.16619200000000001
	.quad	0x3fe9735c182ecaef              # double 0.79533200000000004
	.quad	0x3feac70c996b7671              # double 0.83679800000000004
	.quad	0x3fc6b955f78359bc              # double 0.17753099999999999
	.quad	0x3feeed6fda836eb5              # double 0.966484
	.quad	0x3feda34ca0c282c7              # double 0.92618400000000001
	.quad	0x3fe710d5a5b9628d              # double 0.72080500000000003
	.quad	0x3fe524bdba0a5269              # double 0.66073499999999996
	.quad	0x3fd19e7fb267c6b9              # double 0.27529900000000002
	.quad	0x3fde1554fbdad752              # double 0.47005200000000003
	.quad	0x3feb320d9945b6c3              # double 0.84985999999999995
	.quad	0x3fb139eadd590c0b              # double 0.067290000000000003
	.quad	0x3fe4827b6fe2e6eb              # double 0.64092800000000005
	.quad	0x3fe6883126e978d5              # double 0.704125
	.quad	0x3feb3630a91537a0              # double 0.85036500000000003
	.quad	0x3fee51f601797cc4              # double 0.94750500000000004
	.quad	0x3fbd4b9cb6848beb              # double 0.114435
	.quad	0x3fe6c4ae85b9e8c4              # double 0.71150899999999995
	.quad	0x3fe3fb24638c9753              # double 0.62440700000000005
	.quad	0x3feb33461309c800              # double 0.85000900000000001
	.quad	0x3fe3ff3061c79b35              # double 0.62490100000000004
	.quad	0x3fda7edc7ef177a7              # double 0.413993
	.quad	0x3fe78507a6bd6e8b              # double 0.734989
	.quad	0x3fef8b1dd5d3dc8c              # double 0.98573200000000005
	.quad	0x3f90a393ee5eedcc              # double 0.016249
	.quad	0x3fb507faa044ae86              # double 0.082153000000000003
	.quad	0x3fe38c21e1d2178f              # double 0.61085599999999995
	.quad	0x3fc70d73860999dd              # double 0.18009800000000001
	.quad	0x3fb1c65c70435efa              # double 0.069432999999999995
	.quad	0x3fea3b1290257c91              # double 0.81971099999999997
	.quad	0x3fd3f0aa21a719b5              # double 0.31156400000000001
	.quad	0x3fe3afcce1c58256              # double 0.61521000000000003
	.quad	0x3fdd9ca9ef5232d3              # double 0.46268700000000001
	.quad	0x3fece30caa326e11              # double 0.90271599999999996
	.quad	0x3fe9f3d7d3910c2c              # double 0.81101599999999995
	.quad	0x3fd63361565c2d28              # double 0.34688600000000003
	.quad	0x3fe45ce9e5e24788              # double 0.63634199999999996
	.quad	0x3fde6f0068db8bac              # double 0.47552499999999998
	.quad	0x3fdc6fef7c243dcd              # double 0.444332
	.quad	0x3fd7fe43675ddd2b              # double 0.37489400000000001
	.quad	0x3fcc705c896dd26b              # double 0.22217899999999999
	.quad	0x3fe006c6583e8577              # double 0.50082700000000002
	.quad	0x3fe5187a4a48f96e              # double 0.65923799999999999
	.quad	0x3fe0d1569f490603              # double 0.52555399999999997
	.quad	0x3feba6f3f52fc265              # double 0.86412999999999995
	.quad	0x3feb928e0c9d9d34              # double 0.86163999999999996
	.quad	0x3f9e075f6fd21ff3              # double 0.029325
	.quad	0x3feaf3a14cec41dd              # double 0.84223999999999999
	.quad	0x3fcc1e0c5a8155d6              # double 0.219667
	.quad	0x3fdb68cac4b4d057              # double 0.42827100000000001
	.quad	0x3fcb9c94f69ca9ef              # double 0.21571599999999999
	.quad	0x3fe63897204295a7              # double 0.69440800000000003
	.quad	0x3fe5c3c3a42f1ed1              # double 0.68014699999999995
	.quad	0x3fe41b4bb5e0f7fd              # double 0.628332
	.quad	0x3fe85035371971c1              # double 0.75979099999999999
	.quad	0x3feabd9231c64ba9              # double 0.83564099999999997
	.quad	0x3fcd1a11233df2aa              # double 0.227358
	.quad	0x3fd10060780fdc16              # double 0.265648
	.quad	0x3fbd785f8d2e514c              # double 0.115118
	.quad	0x3f5c5c5718eb8950              # double 0.0017309999999999999
	.quad	0x3fde69270b06c43f              # double 0.47516799999999998
	.quad	0x3fe700a9de8b3b32              # double 0.718831
	.quad	0x3fee1e4712e40853              # double 0.94119600000000003
	.quad	0x3fe37f38c5436b90              # double 0.60928000000000004
	.quad	0x3fd26b37867f0aa2              # double 0.28779399999999999
	.quad	0x3fd051a86940357a              # double 0.25498399999999999
	.quad	0x3fe9b50f40e5a35d              # double 0.80335199999999996
	.quad	0x3fb7bacb4289118c              # double 0.092693999999999999
	.quad	0x3fe1d4e09784ec63              # double 0.55723599999999995
	.quad	0x3fe357be9856a37b              # double 0.60446100000000003
	.quad	0x3fe712839042d8c3              # double 0.72101000000000004
	.quad	0x3fadfa22706d5065              # double 0.058548999999999997
	.quad	0x3fe90a41a261bf38              # double 0.78250200000000003
	.quad	0x3fe7b59bc33f8551              # double 0.74091899999999999
	.quad	0x3fa27e52157689ca              # double 0.036119999999999999
	.quad	0x3fe5a6698bb4d489              # double 0.67656400000000005
	.quad	0x3fc5c64ba94bbe44              # double 0.17011399999999999
	.quad	0x3fc3d577963992c9              # double 0.15495200000000001
	.quad	0x3fea35aea3161a1e              # double 0.81905300000000003
	.quad	0x3fe54fa05143bf72              # double 0.66596999999999995
	.quad	0x3fd80cd855970b4a              # double 0.37578400000000001
	.quad	0x3fdf6f3b213e3e29              # double 0.49116399999999999
	.quad	0x3fe2658a32f44913              # double 0.57489500000000004
	.quad	0x3fe1a8b6d86ec17f              # double 0.55184500000000003
	.quad	0x3fbb0ccbc05d52c1              # double 0.10566399999999999
	.quad	0x3fd59bfdf7e8038a              # double 0.337646
	.quad	0x3fe29e1f3a57eaa3              # double 0.58180200000000004
	.quad	0x3fda1e03f705857b              # double 0.408082
	.quad	0x3faad77318fc5048              # double 0.052424999999999999
	.quad	0x3fd384b1ab0856e7              # double 0.30497400000000002
	.quad	0x3fc29e7fb267c6b9              # double 0.14546200000000001
	.quad	0x3fc8fd2a62aa1944              # double 0.19522600000000001
	.quad	0x3fd8a48f96e15875              # double 0.385044
	.quad	0x3fe064c2f837b4a2              # double 0.51229999999999998
	.quad	0x3fb951b4fe79ee03              # double 0.098903000000000005
	.quad	0x3fe03e8576cce5f7              # double 0.50763199999999997
	.quad	0x3feb3f6a0dbad3a6              # double 0.851491
	.quad	0x3fda724b76f6d762              # double 0.41322599999999998
	.quad	0x3fb6f73c0c1fc8f3              # double 0.089709999999999998
	.quad	0x3fd9ad85dfa871a4              # double 0.40121600000000002
	.quad	0x3fef72abef06b378              # double 0.98274799999999995
	.quad	0x3fd78df37329c348              # double 0.36803900000000001
	.quad	0x3feda5daf07bfe7e              # double 0.92649599999999999
	.quad	0x3fc1eb6390c91080              # double 0.13999600000000001
	.quad	0x3fbb6be37de939eb              # double 0.107115
	.quad	0x3fa7fcfc3f811f4f              # double 0.046851999999999998
	.quad	0x3fd3a376922d948e              # double 0.30685200000000001
	.quad	0x3fc51b4784230fd0              # double 0.16489500000000001
	.quad	0x3fe0f281fd9ba1b2              # double 0.52960300000000005
	.quad	0x3fa42917507e9d95              # double 0.039376000000000001
	.quad	0x3fb800c9539b8887              # double 0.093761999999999998
	.quad	0x3f72b7fe08aefb2b              # double 0.0045700000000000003
	.quad	0x3fd47f8012dfd695              # double 0.32028200000000001
	.quad	0x3fec886162f166e0              # double 0.89164799999999999
	.quad	0x3fe10c7192ea52f0              # double 0.53276900000000005
	.quad	0x3fee3f487fcb923a              # double 0.94522499999999998
	.quad	0x3fcfcf3dc054ef46              # double 0.24851200000000001
	.quad	0x3fec6878fabda0e0              # double 0.88775300000000001
	.quad	0x3fd4fbd273d5bab2              # double 0.32786999999999999
	.quad	0x3fe6bc48f10a99b7              # double 0.710484
	.quad	0x3fed29a3d2d87f88              # double 0.91133299999999995
	.quad	0x3fef40a06e9ff0cc              # double 0.97663900000000003
	.quad	0x3fefa239e6ab9b24              # double 0.98855300000000001
	.quad	0x3fc586a8fc0d2c38              # double 0.16817199999999999
	.quad	0x3fd80e66cb10342b              # double 0.37587900000000002
	.quad	0x3fda34bd76ee73e7              # double 0.40946900000000003
	.quad	0x3fe2c06e19b90eaa              # double 0.58599000000000001
	.quad	0x3fd269be09bb6aa5              # double 0.28770400000000002
	.quad	0x3fe44ddf86e3b470              # double 0.63450600000000001
	.quad	0x3fd5f972474538ef              # double 0.34334999999999999
	.quad	0x3fdc693c03bc4d23              # double 0.44392300000000001
	.quad	0x3fd1cc2938de6ddf              # double 0.278086
	.quad	0x3fe9cba51a005c46              # double 0.80610899999999996
	.quad	0x3fd51cbccf28c79f              # double 0.32987899999999998
	.quad	0x3fd0d36b4c7f3494              # double 0.26290400000000003
	.quad	0x3fd0a276b7ed41b7              # double 0.25991599999999998
	.quad	0x3fd01f70de8f6cf0              # double 0.251919
	.quad	0x3fc813e3e29307af              # double 0.188107
	.quad	0x3fe1ea63b688bda9              # double 0.55986199999999997
	.quad	0x3fdc19157abb8801              # double 0.439031
	.quad	0x3fd6b97785729b28              # double 0.35507
	.quad	0x3fc9bab21815a07b              # double 0.20100999999999999
	.quad	0x3fcb6b5d462c343b              # double 0.21421399999999999
	.quad	0x3fea8e8a71de69ad              # double 0.82989999999999997
	.quad	0x3feb8afc47e49b20              # double 0.86071600000000003
	.quad	0x3fe6556b00ffda40              # double 0.69792699999999996
	.quad	0x3fb9ab6d00b45ae6              # double 0.100272
	.quad	0x3fe0b9abf3387161              # double 0.52266500000000005
	.quad	0x3fce05bc01a36e2f              # double 0.23455000000000001
	.quad	0x3fec9fab96f21f6d              # double 0.89449100000000004
	.quad	0x3fed3ea2d2fe3f36              # double 0.91389600000000004
	.quad	0x3fd25b18548a9bd0              # double 0.28681000000000001
	.quad	0x3feda7264a16a487              # double 0.92665399999999998
	.quad	0x3fd6115592d98bf8              # double 0.344808
	.quad	0x3fa6c636b0963561              # double 0.044481
	.quad	0x3fe6270b06c43f60              # double 0.69226600000000005
	.quad	0x3fe681ba7fc32ebe              # double 0.70333599999999996
	.quad	0x3fdfc6c97d8cf399              # double 0.496508
	.quad	0x3fd82fd32c625e9a              # double 0.377919
	.quad	0x3fda68b19a415f46              # double 0.41264000000000001
	.quad	0x3feb12e1ef73c0c2              # double 0.846055
	.quad	0x3fce72324c836651              # double 0.23785999999999999
	.quad	0x3fc3aa044ae85b9f              # double 0.15362600000000001
	.quad	0x3fe62ac753e707e1              # double 0.69272199999999995
	.quad	0x3fc7a6612839042e              # double 0.18476500000000001
	.quad	0x3fd2ccee5abc0e39              # double 0.29375800000000002
	.quad	0x3fc0cec41dd1a21f              # double 0.13131000000000001
	.quad	0x3fa424c404a72eae              # double 0.039343000000000003
	.quad	0x3fdee5d5b24e9c45              # double 0.48277799999999998
	.quad	0x3fe0b10ba6266fd6              # double 0.52161199999999996
	.quad	0x3fb54046412cf0fa              # double 0.083012000000000002
	.quad	0x3fd8e9185cee17a0              # double 0.38922699999999999
	.quad	0x3fd8f3882278d0cc              # double 0.38986399999999999
	.quad	0x3fe1be6c4c5974e6              # double 0.55449499999999996
	.quad	0x3fea59f2ba9d1f60              # double 0.82347999999999998
	.quad	0x3fe120902de00d1b              # double 0.53522499999999995
	.quad	0x3fee9363f572de44              # double 0.955492
	.quad	0x3fe15a09cc319c5a              # double 0.54224099999999997
	.quad	0x3fb7ab430f49491f              # double 0.092456999999999998
	.quad	0x3fc40d3cff64cf8d              # double 0.15665399999999999
	.quad	0x3fe97adafd113837              # double 0.79624700000000004
	.quad	0x3fbce8b7e4de3b8a              # double 0.112926
	.quad	0x3fe7c0485a0be511              # double 0.74222200000000005
	.quad	0x3fd474d594f26aec              # double 0.319631
	.quad	0x3fdd98b2e9ccb7d4              # double 0.46244499999999999
	.quad	0x3feb3a8e71476af9              # double 0.85089800000000004
	.quad	0x3fe6fa376922d949              # double 0.71804400000000002
	.quad	0x3fd9b966be7afa72              # double 0.40194099999999999
	.quad	0x3fd98d36b4c7f349              # double 0.39924399999999999
	.quad	0x3fc647b24638c975              # double 0.174063
	.quad	0x3fe5573eab367a10              # double 0.66690000000000005
	.quad	0x3fe49fbe76c8b439              # double 0.64449999999999996
	.quad	0x3fe02c7fbacb4289              # double 0.50543199999999999
	.quad	0x3fe921fafc8b007a              # double 0.78539800000000004
	.quad	0x3fdb56fb8f57f738              # double 0.42718400000000001
	.quad	0x3feb84e618ce2d1f              # double 0.85997299999999999
	.quad	0x3faf47b677f6b1a3              # double 0.061094000000000002
	.quad	0x3fb95da272862f5a              # double 0.099085000000000006
	.quad	0x3fdebfdb4cc25072              # double 0.48046
	.quad	0x3fd65f5275ee99a6              # double 0.34956799999999999
	.quad	0x3fecc3f3e0370cdd              # double 0.89892000000000005
	.quad	0x3f5e7d9988d2a1f9              # double 0.001861
	.quad	0x3fd0d1958969a0ae              # double 0.26279200000000003
	.quad	0x3fd0030c23fab10c              # double 0.25018600000000002
	.quad	0x3fe1060999dcb578              # double 0.53198699999999999
	.quad	0x3feb804d98394749              # double 0.85941199999999995
	.quad	0x3fd28d1958969a0b              # double 0.28986200000000001
	.quad	0x3f76084a515ce9e6              # double 0.0053790000000000001
	.quad	0x3fd8f9e7b80a9de9              # double 0.39025300000000002
	.quad	0x3fc8db50f40e5a36              # double 0.194193
	.quad	0x3f879d909f1f1498              # double 0.011531
	.quad	0x3fe4bb517a46173c              # double 0.64786600000000005
	.quad	0x3fddd66277c45cbc              # double 0.46621000000000001
	.quad	0x3fe72c6cdaf4adbc              # double 0.72417299999999996
	.quad	0x3fc23925bb7b6bb1              # double 0.142369
	.quad	0x3fcd33f42352eb5f              # double 0.22814799999999999
	.quad	0x3fde8387df5cf249              # double 0.47677799999999998
	.quad	0x3fd654866a11ec92              # double 0.34890900000000002
	.quad	0x3fdb1bc558644524              # double 0.42357
	.quad	0x3fe25e0b4e11dbcb              # double 0.57398000000000005
	.quad	0x3fded68405b39e28              # double 0.48184300000000002
	.quad	0x3faa83f4eca686e8              # double 0.051788000000000001
	.quad	0x3fe8541b75a74c0a              # double 0.76026700000000003
	.quad	0x3fe2b608d08919f0              # double 0.58472100000000005
	.quad	0x3fd187b56b873797              # double 0.27390799999999998
	.quad	0x3fe3f5a5332acfb7              # double 0.62373599999999996
	.quad	0x3fd25d074213a0c7              # double 0.28692800000000002
	.quad	0x3feb869a4df47f99              # double 0.86018099999999997
	.quad	0x3fe782b841248d7e              # double 0.734707
	.quad	0x3fe75ebb7739f341              # double 0.73031400000000002
	.quad	0x3fd2bc98a222d517              # double 0.29276099999999999
	.quad	0x3fd6a921ccd96207              # double 0.35407300000000003
	.quad	0x3fe6bd33d29563aa              # double 0.71059600000000001
	.quad	0x3fac78c868b9fdbd              # double 0.055608999999999999
	.quad	0x3fe1b71327243138              # double 0.55359800000000003
	.quad	0x3fd735a858793dd9              # double 0.36264999999999997
	.quad	0x3fc65bd944aa53fc              # double 0.174678
	.quad	0x3fd8cb07d0aed99d              # double 0.38739200000000001
	.quad	0x3fe983ea704bc276              # double 0.79735299999999998
	.quad	0x3fd33ab862b27cbf              # double 0.30045899999999998
	.quad	0x3fe19a30984e3fff              # double 0.55007200000000001
	.quad	0x3fd3a643cc07aaef              # double 0.30702299999999999
	.quad	0x3fd1cb2d905c0336              # double 0.278026
	.quad	0x3fda7fed20296b33              # double 0.41405799999999998
	.quad	0x3fa2c710cb295e9e              # double 0.036674999999999999
	.quad	0x3fe00c9107faa045              # double 0.50153400000000004
	.quad	0x3feda7ed84d338f8              # double 0.92674900000000004
	.quad	0x3fe6ce160d887ebf              # double 0.71265699999999998
	.quad	0x3fd401c0ca600b03              # double 0.31260700000000002
	.quad	0x3fe246994185058e              # double 0.57111800000000001
	.quad	0x3fa2fc47e49b1fac              # double 0.037081000000000003
	.quad	0x3fe2d56b00ffda40              # double 0.58855199999999996
	.quad	0x3fb87da1ec4e7254              # double 0.095667000000000002
	.quad	0x3fe2ff36ac647779              # double 0.59365400000000002
	.quad	0x3fd1460242d05f29              # double 0.26989800000000003
	.quad	0x3fcdb8b26394face              # double 0.23219899999999999
	.quad	0x3fc76145953586cb              # double 0.18265600000000001
	.quad	0x3fe15e3b8a19c9d6              # double 0.54275300000000004
	.quad	0x3fe73df2a9d627bf              # double 0.72631199999999996
	.quad	0x3febe1c58255b036              # double 0.87131000000000003
	.quad	0x3fdb125dd095af29              # double 0.42299599999999998
	.quad	0x3fea35aea3161a1e              # double 0.81905300000000003
	.quad	0x3fee8a6dacabc515              # double 0.95439799999999997
	.quad	0x3fdb9374bc6a7efa              # double 0.43087500000000001
	.quad	0x3fed3e4abe6a337b              # double 0.91385400000000006
	.quad	0x3f9c8605681ecd4b              # double 0.027855000000000001
	.quad	0x3f9ccea28fe260b3              # double 0.028132000000000001
	.quad	0x3f9e2d1f1cfbb949              # double 0.029468999999999999
	.quad	0x3fe106c8711d798e              # double 0.53207800000000005
	.quad	0x3fe8b1e9f2778141              # double 0.77171800000000002
	.quad	0x3fe9d0d6b228dc98              # double 0.80674299999999999
	.quad	0x3fe52ccf6be37de9              # double 0.66171999999999997
	.quad	0x3fce5d31337eb28e              # double 0.23721900000000001
	.quad	0x3fecbd6e8af81627              # double 0.89812400000000003
	.quad	0x3fcf7720c8cd63cc              # double 0.24582300000000001
	.quad	0x3fe98576cce5f740              # double 0.79754199999999997
	.quad	0x3fe70de6ddf00abf              # double 0.72044699999999995
	.quad	0x3fc482b628459967              # double 0.16023899999999999
	.quad	0x3fe986e9ff0cbaf9              # double 0.79771899999999996
	.quad	0x3fd9f294dd72367e              # double 0.40543099999999999
	.quad	0x3fe4c868b9fdbd30              # double 0.64946400000000004
	.quad	0x3fda782d38476f2a              # double 0.41358499999999998
	.quad	0x3fab53d640e9d51b              # double 0.053373999999999998
	.quad	0x3fe2aed783dff3f1              # double 0.583843
	.quad	0x3fd27d6b65a9a805              # double 0.28890500000000002
	.quad	0x3fe74e2d1f1cfbb9              # double 0.72829299999999997
	.quad	0x3fe51f81a5870da6              # double 0.66009600000000002
	.quad	0x3fe2cebfec13b9f1              # double 0.58773799999999998
	.quad	0x3fc9d6adf71eafee              # double 0.20186399999999999
	.quad	0x3fd25d63886594af              # double 0.28694999999999998
	.quad	0x3fc7fba450acc0be              # double 0.18736700000000001
	.quad	0x3fef2f01754b05b8              # double 0.97448800000000002
	.quad	0x3fdcc4545846e8f3              # double 0.44948300000000002
	.quad	0x3fb4a3d70a3d70a4              # double 0.080625000000000002
	.quad	0x3fdb5a4f00ef1349              # double 0.42738700000000002
	.quad	0x3fe06277c45cbbc3              # double 0.51202000000000003
	.quad	0x3fcf4b05b7cfe586              # double 0.244477
	.quad	0x3fd8de2ac3222920              # double 0.38856000000000002
	.quad	0x3fe5fa89331a08c0              # double 0.68683300000000003
	.quad	0x3fe0cface67d77fb              # double 0.52535100000000001
	.quad	0x3fd02b4959e62563              # double 0.25264199999999998
	.quad	0x3fd22888b545c78a              # double 0.28372399999999998
	.quad	0x3feda8848387df5d              # double 0.92682100000000001
	.quad	0x3fb3bf727136a401              # double 0.07714
	.quad	0x3fd4678c0053e2d6              # double 0.31881999999999999
	.quad	0x3fd06ff3ade225fa              # double 0.25683299999999998
	.quad	0x3fda4db59578a2a9              # double 0.410993
	.quad	0x3fd7afcce1c58256              # double 0.37010500000000002
	.quad	0x3fe098a65492ff4c              # double 0.51863400000000004
	.quad	0x3fd4e1719f7f8ca8              # double 0.32625999999999999
	.quad	0x3fd89320d9945b6c              # double 0.38397999999999999
	.quad	0x3fe215af294dd723              # double 0.56514699999999995
	.quad	0x3fcffe64f54d1e97              # double 0.24995100000000001
	.quad	0x3fc7d1244a6223e2              # double 0.18607000000000001
	.quad	0x3fbdacde19fc2a88              # double 0.11591899999999999
	.quad	0x3fed03a322af5771              # double 0.906694
	.quad	0x3fed13964a59c066              # double 0.90864100000000003
	.quad	0x3fe56675147f1306              # double 0.66875700000000005
	.quad	0x3fe7fb09203a322b              # double 0.749394
	.quad	0x3fd4898b2e9ccb7d              # double 0.32089499999999999
	.quad	0x3fea755582129457              # double 0.82682299999999997
	.quad	0x3fd6dd54da4ce810              # double 0.35725899999999999
	.quad	0x3f9e7e1fc08fa7a8              # double 0.029777999999999999
	.quad	0x3fb7f64cf8d716d3              # double 0.093602000000000005
	.quad	0x3fd8f1800a7c5ac4              # double 0.38973999999999998
	.quad	0x3fd619934efcbd55              # double 0.34531099999999998
	.quad	0x3fe178b7a1c25d07              # double 0.54598599999999997
	.quad	0x3fd5d5992428d435              # double 0.34116200000000002
	.quad	0x3fec041248d7e026              # double 0.87549699999999997
	.quad	0x3fe2b8bac710cb29              # double 0.58504999999999996
	.quad	0x3fecb9baa1511e00              # double 0.89767200000000002
	.quad	0x3fd1d5dc4007570c              # double 0.27867799999999998
	.quad	0x3fd9cbb7f9d6f113              # double 0.403059
	.quad	0x3fdd2b9d3cbc48f1              # double 0.455787
	.quad	0x3fefecca2db61bb0              # double 0.99765499999999996
	.quad	0x3fe6ab25b317efe1              # double 0.70839200000000002
	.quad	0x3fd9daa92e62131b              # double 0.40397100000000002
	.quad	0x3f53f8db4890928a              # double 0.001219
	.quad	0x3f979314445aa2e4              # double 0.023022000000000001
	.quad	0x3fe55942917507ea              # double 0.66714600000000002
	.quad	0x3fd09307af20ea5b              # double 0.25897399999999998
	.quad	0x3fef40a8d21bc127              # double 0.97664300000000003
	.quad	0x3fe63d5bab21815a              # double 0.69499
	.quad	0x3fcd92428d434a02              # double 0.23102600000000001
	.quad	0x3f58f3eccc469510              # double 0.001523
	.quad	0x3fcf3faf42784a94              # double 0.24413099999999999
	.quad	0x3fef53e4ef0281ba              # double 0.97899099999999994
	.quad	0x3fd347a17f4128bf              # double 0.30124699999999999
	.quad	0x3fb0a5df2239e6ac              # double 0.065031000000000005
	.quad	0x3fe809a027525461              # double 0.75117500000000004
	.quad	0x3fe73fe3b03e20cd              # double 0.726549
	.quad	0x3fd937c1376d5497              # double 0.39402799999999999
	.quad	0x3fd6a3400b88ca3e              # double 0.35371399999999997
	.quad	0x3f90232096787ce9              # double 0.015758999999999999
	.quad	0x3fed926634117f84              # double 0.92412099999999997
	.quad	0x3fec9d5e4a383276              # double 0.89420999999999995
	.quad	0x3fe7c20d5629d841              # double 0.74243800000000004
	.quad	0x3feb2b25b317efe1              # double 0.84901700000000002
	.quad	0x3feae822ff08893b              # double 0.84083699999999995
	.quad	0x3fc6467381d7dbf5              # double 0.17402500000000001
	.quad	0x3fe32a2a0a958538              # double 0.59889700000000001
	.quad	0x3fdb779e9d0e9920              # double 0.429176
	.quad	0x3fdc516db0dd82fd              # double 0.44246999999999997
	.quad	0x3fe6d68837718655              # double 0.71368799999999999
	.quad	0x3fd891148fd9fd37              # double 0.383855
	.quad	0x3f8afd113836a833              # double 0.013178
	.quad	0x3fec5af4adbc664d              # double 0.88610299999999997
	.quad	0x3fe9367e414e7ee9              # double 0.78790199999999999
	.quad	0x3fd69a2834d26fa4              # double 0.353159
	.quad	0x3febc0b135979182              # double 0.86727200000000004
	.quad	0x3fea32074ea8da7f              # double 0.81860699999999997
	.quad	0x3fef87f23cc8de2b              # double 0.98534500000000002
	.quad	0x3fedc93c89f40a28              # double 0.93081499999999995
	.quad	0x3fea27bb2fec56d6              # double 0.81735000000000002
	.quad	0x3fee2a79bbadc098              # double 0.94268499999999999
	.quad	0x3fef97a24894c448              # double 0.98726000000000002
	.quad	0x3fe20ce91c8eac00              # double 0.56407600000000002
	.quad	0x3fec6994185058de              # double 0.88788800000000001
	.quad	0x3faea5b530ced4e5              # double 0.059858000000000001
	.quad	0x3fd7c9f72f76e610              # double 0.37170199999999998
	.quad	0x3fe01620685553ef              # double 0.50270099999999995
	.quad	0x3fd13c74fb549f95              # double 0.26931500000000003
	.quad	0x3fe6881a1554fbdb              # double 0.70411400000000002
	.quad	0x3fc6528ae74f2f12              # double 0.17439399999999999
	.quad	0x3fe52708ede54b49              # double 0.66101500000000002
	.quad	0x3fe128ed5f138bce              # double 0.536246
	.quad	0x3fe187f23cc8de2b              # double 0.54784500000000003
	.quad	0x3fed6f9767903212              # double 0.91987200000000002
	.quad	0x3fde53c9abb01c93              # double 0.47386400000000001
	.quad	0x3fefe41d4b6a619e              # double 0.99659600000000004
	.quad	0x3fe0ac1094a2b9d4              # double 0.52100400000000002
	.quad	0x3fd244f1a1986b9c              # double 0.28545799999999999
	.quad	0x3fb5857afea3df6e              # double 0.084068000000000003
	.quad	0x3fcfabb01c92ddbe              # double 0.24742700000000001
	.quad	0x3fb4cdd93c46d82c              # double 0.081266000000000005
	.quad	0x3fceec28b2a6b0d9              # double 0.24158199999999999
	.quad	0x3fd95faebc408d8f              # double 0.39646500000000001
	.quad	0x3fd1f709b738e6d1              # double 0.28070299999999998
	.quad	0x3fe51496249a133c              # double 0.65876299999999999
	.quad	0x3fc4e90364388ebd              # double 0.16336100000000001
	.quad	0x3fb43a53b8e4b87c              # double 0.079015000000000002
	.quad	0x3fe4980d3cff64d0              # double 0.64356100000000005
	.quad	0x3fe2bae46cfc829d              # double 0.585314
	.quad	0x3fe3362413db7f17              # double 0.60035899999999998
	.quad	0x3fe8739f340d4dc6              # double 0.76411399999999996
	.quad	0x3fe66b3bb83cf2d0              # double 0.70059000000000005
	.quad	0x3fdba732df505d10              # double 0.43208000000000002
	.quad	0x3fe4d2263d816acf              # double 0.65065300000000004
	.quad	0x3fe035371971c10d              # double 0.50649599999999995
	.quad	0x3fe24e65bea0ba1f              # double 0.57206999999999997
	.quad	0x3fe02003ab862b28              # double 0.50390800000000002
	.quad	0x3fdfa3f8982cb210              # double 0.49438300000000002
	.quad	0x3fe1c386d2ed783e              # double 0.555118
	.quad	0x3fad2806af46aa08              # double 0.056945999999999997
	.quad	0x3feb9b1960fa15db              # double 0.86268299999999998
	.quad	0x3fe66a0dbad3a605              # double 0.70044600000000001
	.quad	0x3fd150870110a138              # double 0.27054
	.quad	0x3fe61650a45d41fa              # double 0.69022399999999995
	.quad	0x3fd5bb341e14bdfd              # double 0.33955099999999999
	.quad	0x3fe33111f0c34c1b              # double 0.59974000000000005
	.quad	0x3fe7da9c99285a92              # double 0.74543599999999999
	.quad	0x3fbcb3c3e74afd54              # double 0.112118
	.quad	0x3fd10f5a1016ce79              # double 0.26656200000000002
	.quad	0x3fd031055b899392              # double 0.25299199999999999
	.quad	0x3fe2523d4f15e7c9              # double 0.57253900000000002
	.quad	0x3f886b15f88fc936              # double 0.011923
	.quad	0x3fcdc054ef459d99              # double 0.232432
	.quad	0x3fee14e5d5b24e9c              # double 0.94005099999999996
	.quad	0x3fdc5accd530489d              # double 0.44304199999999999
	.quad	0x3fc77f1f9acffa7f              # double 0.18356700000000001
	.quad	0x3fdae8af81626b2f              # double 0.42045199999999999
	.quad	0x3fd9d06fef7c243e              # double 0.40334700000000001
	.quad	0x3fc44d099e0e7360              # double 0.15860099999999999
	.quad	0x3fc7af8594291750              # double 0.18504399999999999
	.quad	0x3fbb4eb9a176ddad              # double 0.10667
	.quad	0x3fdff2becedd4845              # double 0.499191
	.quad	0x3fc0f68be2f7b17d              # double 0.132524
	.quad	0x3fcef4a558ea7ce1              # double 0.241841
	.quad	0x3fe5fafc8b0079a3              # double 0.68688800000000005
	.quad	0x3fef583621fafc8b              # double 0.97951799999999999
	.quad	0x3fd898aeb80ecfa7              # double 0.38431900000000002
	.quad	0x3fb24e054690de09              # double 0.071502999999999997
	.quad	0x3fe376273929ed39              # double 0.60817299999999996
	.quad	0x3fe985b39e279dd4              # double 0.79757100000000002
	.quad	0x3feed1aa821f2991              # double 0.963094
	.quad	0x3fdebae89eba6aca              # double 0.48015799999999997
	.quad	0x3fe24aa326e11559              # double 0.57161099999999998
	.quad	0x3fe1d8b1dd5d3dc9              # double 0.55770200000000003
	.quad	0x3fdef7dfa00e27e1              # double 0.483879
	.quad	0x3fd6cddd6e04c059              # double 0.35631499999999999
	.quad	0x3fd956f32bdc26dd              # double 0.39593200000000001
	.quad	0x3fe296249a133c1d              # double 0.58082800000000001
	.quad	0x3fd1e28240b78034              # double 0.27944999999999998
	.quad	0x3fd4df04ddb5525d              # double 0.32611200000000001
	.quad	0x3fd1eb56fb8f57f7              # double 0.27998899999999999
	.quad	0x3fddef77f27fe4bd              # double 0.46774100000000002
	.quad	0x3fc27f0aa21a719b              # double 0.14450199999999999
	.quad	0x3fd591ea78af3e47              # double 0.33703100000000003
	.quad	0x3feea89dadfb506e              # double 0.95808300000000002
	.quad	0x3fe16d6777079e5a              # double 0.54460500000000001
	.quad	0x3feceffc115df655              # double 0.90429499999999996
	.quad	0x3fd1d028a1dfb939              # double 0.27833000000000002
	.quad	0x3fec672756861e93              # double 0.88759200000000005
	.quad	0x3feba7f5e84f0953              # double 0.86425300000000005
	.quad	0x3fce730c67168f8e              # double 0.23788599999999999
	.quad	0x3fe2e694898f605b              # double 0.59064700000000003
	.quad	0x3fe87c06e19b90eb              # double 0.76514000000000004
	.quad	0x3fe07aaac1094a2c              # double 0.51497400000000004
	.quad	0x3fd8d88c1db0142f              # double 0.38821699999999998
	.quad	0x3fe488a47ecfe9b8              # double 0.64168000000000003
	.quad	0x3fd49b456b441bb9              # double 0.32197700000000001
	.quad	0x3fe2b9a9da597d4a              # double 0.58516400000000002
	.quad	0x3fe58a71de69ad43              # double 0.67315000000000003
	.quad	0x3fadb035bd512ec7              # double 0.057985000000000002
	.quad	0x3fede950fc71d606              # double 0.93473099999999998
	.quad	0x3fe860780fdc1616              # double 0.76177600000000001
	.quad	0x3fac8909289dadfb              # double 0.055732999999999998
	.quad	0x3fe88a6fc58ab92c              # double 0.76689899999999999
	.quad	0x3feaccf8d716d2aa              # double 0.83752099999999996
	.quad	0x3fe8500f776c4828              # double 0.75977300000000003
	.quad	0x3fd15b8dc55000c9              # double 0.27121299999999998
	.quad	0x3fe18df58c08b75f              # double 0.54857900000000004
	.quad	0x3f9a14cec41dd1a2              # double 0.02547
	.quad	0x3fe15c5f7c6759ab              # double 0.54252599999999995
	.quad	0x3fef7d8f0c77dd87              # double 0.98407699999999997
	.quad	0x3fbff748a159817c              # double 0.12486700000000001
	.quad	0x3feb753a3ec02f30              # double 0.85806000000000004
	.quad	0x3febb8b69552e2fc              # double 0.86629800000000001
	.quad	0x3fb11dbca9691a76              # double 0.066860000000000003
	.quad	0x3fd160b2c83ec893              # double 0.27152700000000002
	.quad	0x3fe13bdbe3c10518              # double 0.53855699999999995
	.quad	0x3fe1ba3875925354              # double 0.55398199999999997
	.quad	0x3fd6f3dc054ef45a              # double 0.35863400000000001
	.quad	0x3fa314ca925fe975              # double 0.037268000000000003
	.quad	0x3fed69ccb7d41744              # double 0.919165
	.quad	0x3f7a06a6e32e3822              # double 0.0063540000000000003
	.quad	0x3fc61c58255b035c              # double 0.17274
	.quad	0x3fe26ea4228997c4              # double 0.57600600000000002
	.quad	0x3fd1ab649d388a8b              # double 0.276086
	.quad	0x3fdd8244e93e1c9b              # double 0.46107599999999999
	.quad	0x3fcca18bd66277c4              # double 0.22367999999999999
	.quad	0x3fe885553ef6b5d4              # double 0.76627599999999995
	.quad	0x3fe80cc575c0767d              # double 0.75155899999999998
	.quad	0x3fe95959a30984e4              # double 0.792157
	.quad	0x3fee6f7c243dccea              # double 0.95110899999999998
	.quad	0x3fee38d823422468              # double 0.94443900000000002
	.quad	0x3fe80605681ecd4b              # double 0.75073500000000004
	.quad	0x3fd5242d05f28848              # double 0.33033299999999999
	.quad	0x3fbba11a975afaf8              # double 0.107927
	.quad	0x3fcce3ac0c62e4d2              # double 0.22569800000000001
	.quad	0x3fdbf60e0eb67c28              # double 0.43689299999999998
	.quad	0x3fab1a8ef77f27fe              # double 0.052936999999999998
	.quad	0x3fd3bbfd71b04684              # double 0.30834899999999998
	.quad	0x3f8f090f733a8a40              # double 0.015154000000000001
	.quad	0x3fc5c925785f8d2e              # double 0.17020099999999999
	.quad	0x3fd6a63f9a49c2c2              # double 0.35389700000000002
	.quad	0x3fe5c61b6d43d039              # double 0.68043299999999995
	.quad	0x3fc19dc2f405f6ba              # double 0.137627
	.quad	0x3fd53fc0096feb4a              # double 0.33201599999999998
	.quad	0x3fc6ec4a4095f245              # double 0.179086
	.quad	0x3fde0ec743201041              # double 0.46965200000000001
	.quad	0x3fe5d5ae1cde5d18              # double 0.682334
	.quad	0x3fd41ffb480a5acd              # double 0.31445200000000001
	.quad	0x3fd63d07c84b5dcc              # double 0.34747499999999998
	.quad	0x3fe5b7ef5a964e8b              # double 0.67870299999999995
	.quad	0x3fe54bee807bbb62              # double 0.66551899999999997
	.quad	0x3fc4f92af9a8cdea              # double 0.163854
	.quad	0x3fc6599ed7c6fbd2              # double 0.17460999999999999
	.quad	0x3fe857d9dba908a2              # double 0.76072399999999996
	.quad	0x3fef330941c8216c              # double 0.97497999999999995
	.quad	0x3fd28dc11e42e126              # double 0.28990199999999999
	.quad	0x3fa477574f722e1b              # double 0.039973000000000002
	.quad	0x3feefa5d28d002e2              # double 0.96806199999999998
	.quad	0x3fdff483cafb3b75              # double 0.49929899999999999
	.quad	0x3fe7bbc2b94d9408              # double 0.74167000000000005
	.quad	0x3fd1167ec7863bef              # double 0.26699800000000001
	.quad	0x3f44940bbb1f255f              # double 6.2799999999999998E-4
	.quad	0x3fee147496aad1d0              # double 0.93999699999999997
	.quad	0x3fdbc8f75536933a              # double 0.434141
	.quad	0x3fe180bed740c415              # double 0.54696599999999995
	.quad	0x3fe22d7518b0d0ee              # double 0.56804900000000003
	.quad	0x3fe5e59d12cadddf              # double 0.68427899999999997
	.quad	0x3fd7af42784a9479              # double 0.37007200000000001
	.quad	0x3fe85740c4156e26              # double 0.76065099999999997
	.quad	0x3fd2557de0d66f0d              # double 0.286468
	.quad	0x3fdde1c9b4139863              # double 0.46690599999999999
	.quad	0x3fc19c1f85d744f6              # double 0.137577
	.quad	0x3fd502c0a4a05dd9              # double 0.328293
	.quad	0x3fe1d58a76102795              # double 0.55731699999999995
	.quad	0x3fbafc47e49b1fac              # double 0.10541200000000001
	.quad	0x3fd19539b888722a              # double 0.274733
	.quad	0x3fee5bfceb78897f              # double 0.94872900000000004
	.quad	0x3fec4be40420f6f1              # double 0.88426400000000005
	.quad	0x3fcc7f3493858362              # double 0.222632
	.quad	0x3fbe10adcd2d44dd              # double 0.117442
	.quad	0x3fef4bdfd2630ec3              # double 0.97801199999999999
	.quad	0x3fd79e59f2ba9d1f              # double 0.36903999999999998
	.quad	0x3fe0dcd2d44dca8e              # double 0.52695599999999998
	.quad	0x3fd752263d816acf              # double 0.36438900000000002
	.quad	0x3fd61b71758e2196              # double 0.34542499999999998
	.quad	0x3fd424a6a875d56f              # double 0.31473699999999999
	.quad	0x3fce2e44b6e935b9              # double 0.235787
	.quad	0x3fe36d549731098d              # double 0.60709599999999997
	.quad	0x3fedf839cd8127b3              # double 0.93655100000000002
	.quad	0x3fea8b912dba4d6e              # double 0.82953699999999997
	.quad	0x3fd68b60f1b25f63              # double 0.35225699999999999
	.quad	0x3fc36b4c7f349386              # double 0.15171200000000001
	.quad	0x3fef9aef6f8f0414              # double 0.98766299999999995
	.quad	0x3fdbddb9841aac54              # double 0.43540800000000002
	.quad	0x3fe95cfede97d06c              # double 0.79260200000000002
	.quad	0x3fc8cdb7ae5796c0              # double 0.19377800000000001
	.quad	0x3fe0b0ad46f587d7              # double 0.521567
	.quad	0x3fea147f13059642              # double 0.815002
	.quad	0x3fb62ff08893b7d8              # double 0.086668999999999996
	.quad	0x3fe8eda87a072d1b              # double 0.77901100000000001
	.quad	0x3fd21f926c7eae5c              # double 0.28317700000000001
	.quad	0x3fe28221426fe719              # double 0.57838500000000004
	.quad	0x3fe2ea3df6db9410              # double 0.59109400000000001
	.quad	0x3fe481d9f4d37c13              # double 0.64085099999999995
	.quad	0x3fef003254e6e222              # double 0.96877400000000002
	.quad	0x3fc5482be8bc169c              # double 0.166265
	.quad	0x3fbf4e7685985ad5              # double 0.122291
	.quad	0x3faba365cb35f3d8              # double 0.053981000000000001
	.quad	0x3fb4561d4306e5cd              # double 0.079438999999999996
	.quad	0x3fdeefa615a8deb1              # double 0.483377
	.quad	0x3fc259103c8e25c8              # double 0.143343
	.quad	0x3fa7a1e3eaf6837f              # double 0.046156999999999997
	.quad	0x3fe6e1a60d4562e1              # double 0.71504500000000004
	.quad	0x3fda53868fd199bb              # double 0.41134799999999999
	.quad	0x3fd0a6b0d9513f8e              # double 0.26017400000000002
	.quad	0x3fdc99392189bd84              # double 0.44685200000000003
	.quad	0x3fece154434e336a              # double 0.90250600000000003
	.quad	0x3fd5ac57e23f24d9              # double 0.338644
	.quad	0x3fcf1dcd7060bb2c              # double 0.24309700000000001
	.quad	0x3fea4d9620685554              # double 0.821971
	.quad	0x3fd7953dea465a57              # double 0.36848399999999998
	.quad	0x3fd966772d5e071c              # double 0.39687899999999998
	.quad	0x3fecda6612839043              # double 0.90166000000000002
	.quad	0x3fe841b54195cc85              # double 0.75802099999999994
	.quad	0x3fd3d844d013a92a              # double 0.31007499999999999
	.quad	0x3fba3d5fdcdf6988              # double 0.10249900000000001
	.quad	0x3fef0303c07ee0b1              # double 0.96911800000000003
	.quad	0x3fc84b33daf8df7a              # double 0.18979499999999999
	.quad	0x3fd4d21bc126a65d              # double 0.325324
	.quad	0x3fe60aaeafab53d6              # double 0.68880399999999997
	.quad	0x3fe6d692b3cc4ac7              # double 0.71369300000000002
	.quad	0x3fd611cb039ef0f1              # double 0.34483599999999998
	.quad	0x3febe5109070fbec              # double 0.87171200000000004
	.quad	0x3fd88a65492ff4ba              # double 0.38344699999999998
	.quad	0x3fdd64dc22ab25b3              # double 0.45928099999999999
	.quad	0x3fe570196d8f4f94              # double 0.66993400000000003
	.quad	0x3fddf7c6759ab6d0              # double 0.468248
	.quad	0x3fbb65dbfceb7889              # double 0.10702299999999999
	.quad	0x3fdcefc7a398201d              # double 0.45213500000000001
	.quad	0x3fe7a14488c60cbf              # double 0.73843599999999998
	.quad	0x3fd1fe75bc44bf4d              # double 0.28115600000000002
	.quad	0x3fac5953586ca8a0              # double 0.055369000000000002
	.quad	0x3fe0573860999dcb              # double 0.51064699999999996
	.quad	0x3fe0192a737110e4              # double 0.50307199999999996
	.quad	0x3fb4bd1244a6223e              # double 0.081009999999999998
	.quad	0x3fe014013ec460ee              # double 0.50244200000000006
	.quad	0x3fcbd4f15e7c8d19              # double 0.21743599999999999
	.quad	0x3fe28d1958969a0b              # double 0.57972400000000002
	.quad	0x3fec54e6e221c8a8              # double 0.88536400000000004
	.quad	0x3fed45ae5ffa3b9b              # double 0.91475600000000001
	.quad	0x3fe83e5d9e40c847              # double 0.75761299999999998
	.quad	0x3fc6562e09fe8683              # double 0.17450499999999999
	.quad	0x3fa5b9841aac53b1              # double 0.042431000000000003
	.quad	0x3fbda543f1c75819              # double 0.115803
	.quad	0x3fddba0e8427418d              # double 0.46448099999999998
	.quad	0x3fe0872085b18549              # double 0.51649500000000004
	.quad	0x3fd51704ff43419e              # double 0.32952999999999999
	.quad	0x3fdc32d2bb23571d              # double 0.44060199999999999
	.quad	0x3feeb5dcc63f1412              # double 0.9597
	.quad	0x3fee4f91a32b12d3              # double 0.94721299999999997
	.quad	0x3fb0ffeb074a771d              # double 0.066405000000000006
	.quad	0x3f7ceaf251c193b4              # double 0.0070600000000000003
	.quad	0x3fe4d5e6bc621b7e              # double 0.651111
	.quad	0x3fe37fef39085f4a              # double 0.60936699999999999
	.quad	0x3fd3159c49774257              # double 0.29819400000000001
	.quad	0x3fc7f0b28522ea10              # double 0.187033
	.quad	0x3febc6e08f217093              # double 0.86802699999999999
	.quad	0x3fe9dcbddb9841ab              # double 0.80819600000000003
	.quad	0x3f725785f8d2e515              # double 0.0044780000000000002
	.quad	0x3fe299d883ba3444              # double 0.58128000000000002
	.quad	0x3fe9914f483cafb4              # double 0.79898800000000003
	.quad	0x3fc134df04ddb552              # double 0.13442599999999999
	.quad	0x3fb7076c050bd87b              # double 0.089956999999999995
	.quad	0x3fec1950331e3a7e              # double 0.87809000000000004
	.quad	0x3fe375c28f5c28f6              # double 0.60812500000000003
	.quad	0x3fde2aae297396d1              # double 0.47135500000000002
	.quad	0x3fd3636f3b213e3e              # double 0.30294399999999999
	.quad	0x3fe619c7bcc2938e              # double 0.69064700000000001
	.quad	0x3f808ede54b48d3b              # double 0.0080850000000000001
	.quad	0x3fb8755ffe6d58c9              # double 0.095541000000000001
	.quad	0x3feb8064a9cdc444              # double 0.85942300000000004
	.quad	0x3fe60303c07ee0b1              # double 0.68786800000000003
	.quad	0x3fd340af1cb89d6b              # double 0.30082300000000001
	.quad	0x3fdb26dce39b456b              # double 0.42424699999999999
	.quad	0x3fe807cc7d1bb491              # double 0.75095199999999995
	.quad	0x3fd11fd9ba1b1961              # double 0.267569
	.quad	0x3fee54306e5cd4ed              # double 0.94777699999999998
	.quad	0x3fe10d972cd7cf5f              # double 0.53290899999999997
	.quad	0x3fe3d19157abb880              # double 0.61933199999999999
	.quad	0x3fa51b2e59af9ebf              # double 0.041223000000000003
	.quad	0x3fd19c9d5a187a4a              # double 0.27518399999999998
	.quad	0x3fac9de050374ff8              # double 0.055891999999999997
	.quad	0x3fe8d1159c497742              # double 0.77552299999999996
	.quad	0x3fcb75a74c09c3ce              # double 0.214528
	.quad	0x3fe825e785b5b707              # double 0.75462700000000005
	.quad	0x3fbe2e3c536d655e              # double 0.117893
	.quad	0x3fe7847b24638c97              # double 0.73492199999999996
	.quad	0x3fc0d64d7f0ed3d8              # double 0.13153999999999999
	.quad	0x3fb5c4da9003eea2              # double 0.085034999999999999
	.quad	0x3fc857082491afc0              # double 0.19015599999999999
	.quad	0x3fe1191bc5586445              # double 0.53431499999999998
	.quad	0x3febc5308bb90646              # double 0.86782099999999995
	.quad	0x3fd11ea78af3e469              # double 0.26749600000000001
	.quad	0x3fe1890f733a8a40              # double 0.54798100000000005
	.quad	0x3fb45d41fa765343              # double 0.079547999999999994
	.quad	0x3fe2fea8112ba16e              # double 0.59358599999999995
	.quad	0x3fd71fa333764f12              # double 0.36130600000000002
	.quad	0x3feb992428d434a0              # double 0.86244399999999998
	.quad	0x3f94bfd2e9468017              # double 0.020263
	.quad	0x3fd5f7c6759ab6d0              # double 0.343248
	.quad	0x3fed286d71f36263              # double 0.91118500000000002
	.quad	0x3fa700ef1348b220              # double 0.044928999999999997
	.quad	0x3fe6460aa64c2f83              # double 0.69604999999999995
	.quad	0x3fe6582ba5a03819              # double 0.69826299999999997
	.quad	0x3fee1aa60913a4f8              # double 0.94075299999999995
	.quad	0x3fe025d28d002e23              # double 0.50461699999999998
	.quad	0x3fecea854477ff15              # double 0.90362799999999999
	.quad	0x3f977ee4e26d4802              # double 0.022945
	.quad	0x3fd4366516db0dd8              # double 0.31581999999999999
	.quad	0x3fc711d798d8a97a              # double 0.180232
	.quad	0x3fb703e20ccff21b              # double 0.089902999999999997
	.quad	0x3fd43508f648c719              # double 0.31573699999999999
	.quad	0x3fc45b63d3e4ef03              # double 0.15903900000000001
	.quad	0x3feae618ce2d1f1d              # double 0.840588
	.quad	0x3fd844028e4fb97c              # double 0.37915100000000002
	.quad	0x3fe78c2a454de7ea              # double 0.73585999999999996
	.quad	0x3fe1e191148fd9fd              # double 0.55878499999999998
	.quad	0x3fe3b8f36694898f              # double 0.61632699999999996
	.quad	0x3fea35cbff47735c              # double 0.81906699999999998
	.quad	0x3fbddaad601ffb48              # double 0.116618
	.quad	0x3fe878ca8198f1d4              # double 0.764745
	.quad	0x3fef7b58d1526d8b              # double 0.98380699999999998
	.quad	0x3fb0664d3bf2f556              # double 0.064061000000000007
	.quad	0x3fe0cb838c111ada              # double 0.52484299999999995
	.quad	0x3fee2d601ffb480a              # double 0.94303899999999996
	.quad	0x3fed16b76709fa55              # double 0.90902300000000003
	.quad	0x3fdb68cac4b4d057              # double 0.42827100000000001
	.quad	0x3fe3fae147ae147b              # double 0.62437500000000001
	.quad	0x3f9c36544fe36d22              # double 0.027550999999999999
	.quad	0x3fef12ab68cef673              # double 0.97102900000000003
	.quad	0x3fe1b6a832b990b0              # double 0.55354700000000001
	.quad	0x3fe12efd438d1d8a              # double 0.53698599999999996
	.quad	0x3fe7ae0e30446b6a              # double 0.73999700000000002
	.quad	0x3fd24e09784ec637              # double 0.28601300000000002
	.quad	0x3fe9bcc2938de6de              # double 0.80429200000000001
	.quad	0x3fdc1a7e30878748              # double 0.43911699999999998
	.quad	0x3fdc5d5b24e9c454              # double 0.44319799999999998
	.quad	0x3fcaed3d859c8c93              # double 0.210365
	.quad	0x3fc02cd39da16617              # double 0.12636800000000001
	.quad	0x3fd7281344806291              # double 0.361821
	.quad	0x3fd185ec3dab5c3a              # double 0.27379900000000001
	.quad	0x3fd1bd6e8af81627              # double 0.27718700000000002
	.quad	0x3fe5dcd91eeaa6d2              # double 0.68320899999999996
	.quad	0x3fc44b09e98dcdb3              # double 0.15853999999999999
	.quad	0x3fd5088d6d3b6cbe              # double 0.32864700000000002
	.quad	0x3fe19eadd590c0ad              # double 0.55062
	.quad	0x3fd78055fbb517a4              # double 0.36720799999999998
	.quad	0x3fd4b256ffc115df              # double 0.32338499999999998
	.quad	0x3fd3a00e27e0ef9a              # double 0.30664400000000003
	.quad	0x3fe9906ab14ec205              # double 0.79887900000000001
	.quad	0x3fd967b5f1bef49d              # double 0.396955
	.quad	0x3fc815c209246bf0              # double 0.188164
	.quad	0x3fec59dfdac68a93              # double 0.88597099999999995
	.quad	0x3fe536262cba732e              # double 0.66286
	.quad	0x3fee197a24894c44              # double 0.94060999999999994
	.quad	0x3fe8470867ad8e43              # double 0.75867099999999998
	.quad	0x3fd3ce358298cc14              # double 0.30946099999999999
	.quad	0x3fd5656abde3fbbd              # double 0.33431499999999997
	.quad	0x3f8bea91d9b1b79e              # double 0.013631000000000001
	.quad	0x3fc6dc768dfbd6a6              # double 0.17860300000000001
	.quad	0x3fcdcd2d44dca8e3              # double 0.232824
	.quad	0x3fe7b0856e696a27              # double 0.74029800000000001
	.quad	0x3fd2819d2391d580              # double 0.289161
	.quad	0x3fe547c0f4517614              # double 0.66500899999999996
	.quad	0x3fde219a847b2464              # double 0.47080100000000003
	.quad	0x3fd23608d08919f0              # double 0.28454800000000002
	.quad	0x3fc56030c23fab11              # double 0.16699800000000001
	.quad	0x3fbf327aa68f4b62              # double 0.121864
	.quad	0x3fcd527e5215768a              # double 0.22908000000000001
	.quad	0x3fdb6c61522a6f3f              # double 0.42848999999999998
	.quad	0x3fd733b107746888              # double 0.36253000000000002
	.quad	0x3fda8d8665e02ea9              # double 0.41488799999999998
	.quad	0x3fe608d08919ef95              # double 0.68857599999999997
	.quad	0x3fe44176577531db              # double 0.63299099999999997
	.quad	0x3fd71bbcf4e874c9              # double 0.361068
	.quad	0x3fd8fe1975f2cb64              # double 0.390509
	.quad	0x3fd2f54d1e96c3fc              # double 0.29622199999999999
	.quad	0x3fed3e10060780fe              # double 0.91382600000000003
	.quad	0x3fe45db5525cc426              # double 0.63643899999999998
	.quad	0x3fe61ba5e353f7cf              # double 0.69087500000000002
	.quad	0x3fde9dece5710881              # double 0.47838900000000001
	.quad	0x3fd827418d6909af              # double 0.37739600000000001
	.quad	0x3fe32f37fbefd007              # double 0.59951399999999999
	.quad	0x3f92abef06b37868              # double 0.018234
	.quad	0x3fe196f4384ba0e8              # double 0.54967699999999997
	.quad	0x3fcfb139c94f69cb              # double 0.24759600000000001
	.quad	0x3fe007faa044ae86              # double 0.50097400000000003
	.quad	0x3fd722d0e5604189              # double 0.36149999999999999
	.quad	0x3fea956c0d6f544c              # double 0.83074000000000003
	.quad	0x3fe86c3b927d45a6              # double 0.763212
	.quad	0x3fb30ff10ecb74de              # double 0.074462
	.quad	0x3fcba2e7f6f4be83              # double 0.21590899999999999
	.quad	0x3fd8b7fe08aefb2b              # double 0.38623000000000002
	.quad	0x3fedab4d8ba40d91              # double 0.92716100000000001
	.quad	0x3fe9b7e0ac7da1ec              # double 0.80369599999999996
	.quad	0x3fdb484d76ab5808              # double 0.426288
	.quad	0x3fe395d2d01c0ca6              # double 0.612039
	.quad	0x3fcfc115df6555c5              # double 0.24807999999999999
	.quad	0x3fddbb59ddc1e796              # double 0.46455999999999997
	.quad	0x3fc8d8ba40d90e24              # double 0.19411400000000001
	.quad	0x3fe78afe60c38f36              # double 0.73571699999999995
	.quad	0x3fee902ff8ec0f88              # double 0.95510099999999997
	.quad	0x3fc007f66e86c658              # double 0.12524299999999999
	.quad	0x3fe4754b05b7cfe6              # double 0.63931800000000005
	.quad	0x3fe576295208e150              # double 0.67067399999999999
	.quad	0x3fc27a398201cd60              # double 0.14435500000000001
	.quad	0x3fcb579af1886df8              # double 0.213611
	.quad	0x3fe7ade657b84dba              # double 0.73997800000000002
	.quad	0x3fe017ce52deca25              # double 0.50290599999999996
	.quad	0x3fa68e1d6494d50f              # double 0.044053000000000002
	.quad	0x3fc6809d495182aa              # double 0.17580000000000001
	.quad	0x3fe4f2becedd4845              # double 0.65463199999999999
	.quad	0x3fe4661cffeb074a              # double 0.63746499999999995
	.quad	0x3feed9018e757929              # double 0.96399000000000001
	.quad	0x3fba0b912dba4d6e              # double 0.101739
	.quad	0x3f897f62b6ae7d56              # double 0.012449999999999999
	.quad	0x3faafee6fb4c3c19              # double 0.052726000000000002
	.quad	0x3fe33823c85c24c4              # double 0.600603
	.quad	0x3fe3c0ee06d93815              # double 0.61730099999999999
	.quad	0x3fc453198288051d              # double 0.15878600000000001
	.quad	0x3fd62bd7f51efb6e              # double 0.34642600000000001
	.quad	0x3feebb4916ca46e1              # double 0.96036200000000004
	.quad	0x3fcca6b93ccd0fe9              # double 0.22383800000000001
	.quad	0x3fedb152f3c2dadc              # double 0.92789600000000005
	.quad	0x3fc33d9ec7000432              # double 0.15031800000000001
	.quad	0x3fc0642396073de2              # double 0.128056
	.quad	0x3fdd942d490e66cb              # double 0.462169
	.quad	0x3fc142bb6672fba0              # double 0.134849
	.quad	0x3fe914185058dde8              # double 0.78370300000000004
	.quad	0x3fe7b0a0b1bbcf4f              # double 0.74031100000000005
	.quad	0x3fa8522ea0fd3b2a              # double 0.047502000000000003
	.quad	0x3feda9f16b11c6d2              # double 0.92699500000000001
	.quad	0x3fe1a960b6f9fcb1              # double 0.55192600000000003
	.quad	0x3fda6c2acb85a4f0              # double 0.412852
	.quad	0x3fe8afa5093964a6              # double 0.77144100000000004
	.quad	0x3fb1c6195464dc23              # double 0.069429000000000005
	.quad	0x3fd2130164840e17              # double 0.28240999999999999
	.quad	0x3fe6085b18548a9c              # double 0.68852000000000002
	.quad	0x3fc4cd184c271fff              # double 0.16250899999999999
	.quad	0x3fef390a7829068a              # double 0.97571300000000005
	.quad	0x3fdde8d5410f94c8              # double 0.46733599999999997
	.quad	0x3fe3d90e23af31b1              # double 0.62024599999999996
	.quad	0x3fd665f0f5a1016d              # double 0.34997200000000001
	.quad	0x3fde1f5be5d9e40d              # double 0.47066400000000003
	.quad	0x3fb943aeab7995ee              # double 0.098688999999999998
	.quad	0x3f807af20ea5b531              # double 0.0080470000000000003
	.quad	0x3fc53c36113404ea              # double 0.16589999999999999
	.quad	0x3fe2f1fddebd9019              # double 0.59204000000000001
	.quad	0x3feccb4f1e4b44a2              # double 0.89981800000000001
	.quad	0x3fedb64388ebcc6c              # double 0.92849899999999996
	.quad	0x3fe6f6598e10cf5b              # double 0.71757199999999999
	.quad	0x3fed7b00bcbe61d0              # double 0.921265
	.quad	0x3fd34d4024b33db0              # double 0.30159000000000002
	.quad	0x3fdb148344c37e6f              # double 0.42312699999999998
	.quad	0x3fc72ca57a786c22              # double 0.18104999999999999
	.quad	0x3fdb30ec31162281              # double 0.42486099999999999
	.quad	0x3fef9b4784230fd0              # double 0.98770500000000006
	.quad	0x3fedf9ce8d972cd8              # double 0.93674400000000002
	.quad	0x3fb7873797460243              # double 0.091907000000000003
	.quad	0x3fdf81ecd4aa10e0              # double 0.49230499999999999
	.quad	0x3fd12036006d0d4a              # double 0.26759100000000002
	.quad	0x3feb5dc4007570c5              # double 0.85519599999999996
	.quad	0x3fd2b5e0f7fcfc40              # double 0.29235100000000003
	.quad	0x3fcbd145d851654d              # double 0.21732399999999999
	.quad	0x3fa0b0f27bb2fec5              # double 0.032599999999999997
	.quad	0x3fee145b6c3760bf              # double 0.93998499999999996
	.quad	0x3fe303925bb7b6bb              # double 0.59418599999999999
	.quad	0x3fe3b367a0f9096c              # double 0.61565000000000003
	.quad	0x3fef8c6f7a0b5ed9              # double 0.98589300000000001
	.quad	0x3fdc337a80cf9e38              # double 0.44064199999999998
	.quad	0x3fdca80cf9e3864d              # double 0.44775700000000002
	.quad	0x3fdc0917d6b65a9b              # double 0.43805500000000003
	.quad	0x3fce074ea8da7f3d              # double 0.234598
	.quad	0x3feb0431bde82d7b              # double 0.84426199999999996
	.quad	0x3fe872c3009b3073              # double 0.76400900000000005
	.quad	0x3fcdb280f12c27a6              # double 0.23200999999999999
	.quad	0x3fe57c7820a30db7              # double 0.67144400000000004
	.quad	0x3fe6bb256ffc115e              # double 0.710345
	.quad	0x3feb1a7e30878748              # double 0.84698399999999996
	.quad	0x3fe2d1aeb3dd11be              # double 0.58809599999999995
	.quad	0x3fea55885d31337f              # double 0.82294100000000003
	.quad	0x3fe8df45e0b4e11e              # double 0.77725500000000003
	.quad	0x3fb962cfd8f0c77e              # double 0.099164000000000002
	.quad	0x3fe8c81f53825e14              # double 0.77442900000000003
	.quad	0x3fb3a797891e2153              # double 0.076775999999999997
	.quad	0x3fe35c209246bf01              # double 0.60499599999999998
	.quad	0x3fef073ffac1d29e              # double 0.96963500000000002
	.quad	0x3fe0defc7a398202              # double 0.52722000000000002
	.quad	0x3fe93bd5992428d4              # double 0.78855399999999997
	.quad	0x3fe4e540cc78e9f7              # double 0.65298500000000004
	.quad	0x3fed4f8726d04e62              # double 0.91595800000000005
	.quad	0x3fc593250b52439a              # double 0.16855300000000001
	.quad	0x3fdeb3aeee957471              # double 0.479717
	.quad	0x3fbbd4067cf1c326              # double 0.108704
	.quad	0x3fa85ccc89b0ee4a              # double 0.047583
	.quad	0x3fe61b3aeee95747              # double 0.69082399999999999
	.quad	0x3fe78941c8216c61              # double 0.73550499999999996
	.quad	0x3fe86a24cc6822ff              # double 0.762957
	.quad	0x3fdb3d9ec7000432              # double 0.42563600000000001
	.quad	0x3fe1dd095af294dd              # double 0.55823199999999995
	.quad	0x3fb15421c044284e              # double 0.06769
	.quad	0x3fee009917939a7c              # double 0.93757299999999998
	.quad	0x3fcdad9f0a1be2b5              # double 0.23186100000000001
	.quad	0x3fe3f73c0c1fc8f3              # double 0.62392999999999998
	.quad	0x3fe8573860999dcb              # double 0.76064699999999996
	.quad	0x3fe948ba83f4eca7              # double 0.79012800000000005
	.quad	0x3fed0995aaf78fef              # double 0.90742
	.quad	0x3fcac9fb6134ce3e              # double 0.209289
	.quad	0x3fe7204d12018a44              # double 0.72269300000000003
	.quad	0x3fe2f3d5bab21816              # double 0.59226500000000004
	.quad	0x3fe643d68405b39e              # double 0.69578099999999998
	.quad	0x3fb0b1bbcf4e874d              # double 0.065212000000000006
	.quad	0x3feb5b0142f61ed6              # double 0.85485900000000004
	.quad	0x3fdc8d36b4c7f349              # double 0.44611899999999999
	.quad	0x3fce558ea7ce0fc3              # double 0.236986
	.quad	0x3fe8e75360d02470              # double 0.77823799999999999
	.quad	0x3fe4802e2328f9f4              # double 0.64064699999999997
	.quad	0x3fe1339192641b33              # double 0.53754500000000005
	.quad	0x3fc0f177a7008a69              # double 0.13236899999999999
	.quad	0x3fd99a91105e1c15              # double 0.400059
	.quad	0x3f997fa5d28d002e              # double 0.024901
	.quad	0x3fd28288051c9f73              # double 0.289217
	.quad	0x3fef1c4da9003eea              # double 0.97220499999999999
	.quad	0x3fc6754f3775b813              # double 0.175455
	.quad	0x3fd430014f8b588e              # double 0.31542999999999999
	.quad	0x3fe14bdfd2630ec3              # double 0.54051199999999999
	.quad	0x3fe79233df2a9d62              # double 0.73659699999999995
	.quad	0x3fe64a2b9d3cbc49              # double 0.69655400000000001
	.quad	0x3fed47f349385836              # double 0.91503299999999999
	.quad	0x3fdb173fb7a5f41b              # double 0.423294
	.quad	0x3fe89a77e5eaab04              # double 0.76885599999999998
	.quad	0x3febe85985ad538b              # double 0.87211300000000003
	.quad	0x3feb0cc9a77e5eab              # double 0.84531100000000003
	.quad	0x3fc84e9c4545846f              # double 0.18989900000000001
	.quad	0x3fe2c158fb43d89d              # double 0.58610200000000001
	.quad	0x3fe6d807fed20297              # double 0.71387100000000003
	.quad	0x3fe8ac83ec892ab7              # double 0.77105900000000005
	.quad	0x3feaf83382e44b6f              # double 0.84279800000000005
	.quad	0x3fe5e04189374bc7              # double 0.68362500000000004
	.quad	0x3fe907ad080b673c              # double 0.78218699999999996
	.quad	0x3fd06b8b69552e30              # double 0.25656400000000001
	.quad	0x3fe2ce075f6fd220              # double 0.58765000000000001
	.quad	0x3fc70092ccf6be38              # double 0.179705
	.quad	0x3fbb809917939a7c              # double 0.107431
	.quad	0x3fe2d0acc0bdcad1              # double 0.58797299999999997
	.quad	0x3fea75147f130596              # double 0.82679199999999997
	.quad	0x3fd90a5accd53049              # double 0.39125700000000002
	.quad	0x3fc2e703afb7e910              # double 0.147675
	.quad	0x3fbc6e08f2170931              # double 0.111054
	.quad	0x3fe997bd8be7296f              # double 0.79977299999999996
	.quad	0x3fda1f57b41bfbdf              # double 0.408163
	.quad	0x3fd5bf8fcd67fd3f              # double 0.33981699999999998
	.quad	0x3feaac083126e979              # double 0.83350000000000002
	.quad	0x3fe193a0c6b484d7              # double 0.54927099999999995
	.quad	0x3fe2cea6c1a048e0              # double 0.58772599999999997
	.quad	0x3fe8b71327243138              # double 0.77234800000000003
	.quad	0x3fe612556d19dece              # double 0.68973799999999996
	.quad	0x3fab7cdcca70d1fa              # double 0.053686999999999999
	.quad	0x3fe906f262888b54              # double 0.78209799999999995
	.quad	0x3feb1b152f3c2dae              # double 0.84705600000000003
	.quad	0x3fe316aceaaf35e3              # double 0.59651799999999999
	.quad	0x3f907faa044ae85c              # double 0.016112000000000001
	.quad	0x3fb47d0aed99cbef              # double 0.080033000000000007
	.quad	0x3fbd20296b3354c1              # double 0.113772
	.quad	0x3fbf0c1333b96af0              # double 0.121278
	.quad	0x3fdad2cbea4ebdd3              # double 0.41911599999999999
	.quad	0x3fca01b43526527a              # double 0.203177
	.quad	0x3fc97d49d7ba6699              # double 0.19913600000000001
	.quad	0x3fe10f9d2bf55150              # double 0.53315599999999996
	.quad	0x3fd6380cb6c7a7ca              # double 0.34717100000000001
	.quad	0x3f995aaf78feef5f              # double 0.024760000000000001
	.quad	0x3fe0771a7e308787              # double 0.51453899999999997
	.quad	0x3fd6e115592d98bf              # double 0.35748799999999997
	.quad	0x3fdbc4545846e8f3              # double 0.43385800000000002
	.quad	0x3fe6ca558ea7ce10              # double 0.71219900000000003
	.quad	0x3f9bca5375c8d9f9              # double 0.027139
	.quad	0x3fe6f20ea5b530cf              # double 0.71704800000000002
	.quad	0x3fef43f3e0370cdd              # double 0.97704500000000005
	.quad	0x3fd87ad4b2745bf2              # double 0.38249699999999998
	.quad	0x3fee47ffde7210bf              # double 0.94628900000000005
	.quad	0x3fed795b35b0bbf5              # double 0.92106399999999999
	.quad	0x3fe714a6eb91b3f2              # double 0.721271
	.quad	0x3fd3f3ade225fa66              # double 0.31174800000000003
	.quad	0x3fd49fbe76c8b439              # double 0.32224999999999998
	.quad	0x3fe11ea35935fc3b              # double 0.53498999999999997
	.quad	0x3fdbe85b9e8c47a1              # double 0.43605699999999997
	.quad	0x3fe8915379fa97e1              # double 0.76773999999999998
	.quad	0x3fd1d3e920c069e8              # double 0.278559
	.quad	0x3fe4ec7863beec39              # double 0.65386599999999995
	.quad	0x3fd0aa7ded6ba8c6              # double 0.26040600000000003
	.quad	0x3fe75256798958da              # double 0.72880100000000003
	.quad	0x3fd5d5171e29b6b3              # double 0.34113100000000002
	.quad	0x3fe6079c4113c686              # double 0.68842899999999996
	.quad	0x3fe8517c5ef62f9d              # double 0.75994700000000004
	.quad	0x3fdaf0bf1a5ca298              # double 0.42094399999999998
	.quad	0x3fd8f6f8f041461b              # double 0.39007399999999998
	.quad	0x3fa3256ffc115df6              # double 0.037394999999999998
	.quad	0x3fc2d0c3d25247cb              # double 0.14699599999999999
	.quad	0x3fd2d512ec6bce85              # double 0.29425499999999999
	.quad	0x3fef54801f75104d              # double 0.97906499999999996
	.quad	0x3fe1c0010c6f7a0b              # double 0.55468799999999996
	.quad	0x3feb47219220ff54              # double 0.85243299999999999
	.quad	0x3fc890b417ca2121              # double 0.191916
	.quad	0x3feba604e1e71045              # double 0.86401600000000001
	.quad	0x3fdb007570c564f9              # double 0.42190299999999997
	.quad	0x3fd1281ba7fc32ec              # double 0.26807300000000001
	.quad	0x3fcc65f9591cd1c8              # double 0.221862
	.quad	0x3fe48917d6b65a9b              # double 0.64173500000000006
	.quad	0x3feb4095f2452c5a              # double 0.851634
	.quad	0x3fd1dd93c46d82ba              # double 0.27914899999999998
	.quad	0x3fd2e18ac9f2fdb9              # double 0.295016
	.quad	0x3fdef56eac860568              # double 0.48372999999999999
	.quad	0x3fc9f383f0bae89f              # double 0.20274400000000001
	.quad	0x3fd410c6f7a0b5ee              # double 0.31352400000000002
	.quad	0x3fee0b9baa1511e0              # double 0.938917
	.quad	0x3fd6129cbab649d4              # double 0.34488600000000003
	.quad	0x3fe586e3b46fdeb5              # double 0.67271599999999998
	.quad	0x3fd16113404ea4a9              # double 0.27155000000000001
	.quad	0x3fe3c7735c182ecb              # double 0.61809700000000001
	.quad	0x3fd292c493426784              # double 0.29020800000000002
	.quad	0x3fef716b11c6d1e1              # double 0.98259499999999999
	.quad	0x3fc9ddc1e7967caf              # double 0.20208000000000001
	.quad	0x3fc233b5393250b5              # double 0.142203
	.quad	0x3fec4ed2cbea4ebe              # double 0.88462200000000002
	.quad	0x3fb5fa00e27e0efa              # double 0.085846000000000005
	.quad	0x3f9d5347a5b0ff11              # double 0.028638
	.quad	0x3fe83543aeab7996              # double 0.75650200000000001
	.quad	0x3feca30b9dc2f406              # double 0.894903
	.quad	0x3fe298aa8650e779              # double 0.58113599999999999
	.quad	0x3f9caf2d7f950b95              # double 0.028011999999999999
	.quad	0x3fe78342aa9f7b5b              # double 0.73477300000000001
	.quad	0x3fd5ff8ec0f88334              # double 0.343723
	.quad	0x3fc1ac68a936c58f              # double 0.138074
	.quad	0x3fd9940fecdd0d8d              # double 0.39966200000000002
	.quad	0x3fdfc78a6dacabc5              # double 0.496554
	.quad	0x3fee4aafbc1acde2              # double 0.94661700000000004
	.quad	0x3fddfa2f05a708ee              # double 0.46839500000000001
	.quad	0x3fd9c3d68405b39e              # double 0.40257799999999999
	.quad	0x3fdc37154003254e              # double 0.44086199999999998
	.quad	0x3feaf154003254e7              # double 0.84195900000000001
	.quad	0x3fe06807bbb62414              # double 0.51269900000000002
	.quad	0x3febe06d938151a4              # double 0.87114599999999997
	.quad	0x3fcdeb28d8665e03              # double 0.233739
	.quad	0x3fd0b734b51372a4              # double 0.26118200000000003
	.quad	0x3feb532a497fa5d3              # double 0.85390200000000005
	.quad	0x3fedba1d323fee2d              # double 0.92896900000000004
	.quad	0x3fea664f54d1e96c              # double 0.82498899999999997
	.quad	0x3fe5dcf4623d0bfa              # double 0.683222
	.size	.L__constant_100x100xf64, 80000

	.section	".note.GNU-stack","",@progbits
